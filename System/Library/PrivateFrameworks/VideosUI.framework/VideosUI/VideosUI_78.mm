double sub_1E3C84FEC(void *a1, double a2, double a3, uint64_t a4, char a5)
{
  v7 = a1;
  v8 = OUTLINED_FUNCTION_6_12();
  sub_1E3C84340(a5, v8);
  OUTLINED_FUNCTION_18_3();

  return a3;
}

void sub_1E3C85040(void *a1)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
  v4 = a1;
  v5 = v3();
  [v1 vui:v4 addSubview:v5 oldView:?];

  [v1 vui:v4 bringSubviewToFront:?];

  sub_1E3C835EC(a1);
}

void sub_1E3C85118()
{
  *(v0 + qword_1EE2379A0) = 0;
  v1 = [v0 vui:sub_1E3C83DF4() setOverrideUserInterfaceStyle:?];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))(v1);
  if (v2)
  {

    sub_1E3C851C8();
  }

  else
  {

    sub_1E3C83A0C();
  }
}

uint64_t sub_1E3C851C8()
{
  v1 = v0;
  result = sub_1E392583C();
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_30();
  v4 = (*(v3 + 392))();

  if (!v4)
  {
    return result;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = *(*v5 + 1560);

    v9 = (v7)(v8);
    if ((sub_1E3A24FDC(v9) & 1) != 0 || (TVAppFeature.isEnabled.getter(10) & 1) == 0)
    {
      if ((v0[qword_1EE2379A0] & 1) != 0 || (OUTLINED_FUNCTION_21_70(), ((*(v10 + 184))() & 1) == 0) || (v11 = sub_1E3C8327C()) == 0 || (v12 = v11, v13 = [v11 backgroundColor], v12, !v13))
      {
        v13 = [objc_opt_self() blackColor];
      }

      OUTLINED_FUNCTION_12_6();
      (*(v14 + 2208))(v13);
    }

    if (sub_1E3CCE24C(v6[120]))
    {
      [v1 bounds];
      Height = CGRectGetHeight(v28);
      [*&v1[qword_1EE23EF98] frame];
      v16 = Height - CGRectGetMinY(v29);
      v17 = v7();

      if (sub_1E3A24FDC(v17) & 1) == 0 && (TVAppFeature.isEnabled.getter(10))
      {
LABEL_19:
        OUTLINED_FUNCTION_21_70();
        v24 = (*(v23 + 256))();
        if (v24)
        {
          v25 = v24;
          OUTLINED_FUNCTION_12_6();
          (*(v26 + 1968))();
          sub_1E3E7F3A0();
        }

        goto LABEL_21;
      }
    }

    else
    {

      v16 = sub_1E3925640();
    }

    v18 = sub_1E3C858E4();
    [v1 bounds];
    OUTLINED_FUNCTION_2_6();
    (*(*v6 + 2200))(v18 & 1, v16, v19, v20, v21, v22);
    goto LABEL_19;
  }

LABEL_21:
}

id sub_1E3C8553C(double a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x148))();
  [v3 setVuiAlpha_];

  v4 = *(v1 + qword_1EE23EF98);

  return [v4 setVuiAlpha_];
}

id sub_1E3C855E4(char a1)
{
  v1[qword_1EE2379A0] = a1;
  sub_1E3C851C8();
  v2 = sub_1E3C83DF4();

  return [v1 vui:v2 setOverrideUserInterfaceStyle:?];
}

id sub_1E3C8562C(void *a1)
{
  v3 = a1;
  sub_1E3C832AC(a1);
  sub_1E3C851C8();
  v4 = sub_1E3C83DF4();

  return [v1 vui:v4 setOverrideUserInterfaceStyle:?];
}

uint64_t sub_1E3C85680(uint64_t a1, double a2)
{
  v3 = v2;
  result = sub_1E39DFFC8();
  if (result)
  {
    v7 = objc_opt_self();
    if (([v7 isMac] & 1) != 0 || (result = objc_msgSend(v7, sel_isPad), result))
    {
      v8 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x100))();
      if (v8)
      {
        v9 = v8;
        sub_1E39E4334(a1, a2);
      }

      return [v3 setClipsToBounds_];
    }
  }

  return result;
}

id sub_1E3C857C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaginatedMediaMetadataContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C85838(uint64_t a1)
{

  return sub_1E389BF58();
}

uint64_t sub_1E3C858E4()
{
  if (*(v0 + qword_1EE2379A0) != 1)
  {
    return 0;
  }

  v1 = sub_1E392583C();
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 392))();

  if (!v2)
  {
    return 0;
  }

  v4 = (*(*v2 + 1560))(v3);

  return sub_1E3A24FDC(v4);
}

uint64_t sub_1E3C859C8(uint64_t a1)
{
  v2 = v1;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v29 = v5;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LayoutGrid();
  OUTLINED_FUNCTION_12_99();
  sub_1E3A258E4(v8);
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_12_99();
  v14 = v13 - v10 - v12;

  sub_1E39253F4(*&v14, 0);

  v15 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v16 = VUISignpostLogObject();
  OUTLINED_FUNCTION_10_103();

  v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x148);
  v18 = v17();
  if (v18)
  {
    v19 = v18;
    [v18 vui:v14 sizeThatFits:0.0];
  }

  sub_1E4206B94();
  v20 = VUISignpostLogObject();
  OUTLINED_FUNCTION_10_103();

  (*(*a1 + 1944))();
  OUTLINED_FUNCTION_12_99();
  CGRectGetHeight(v31);
  v21 = v17();
  if (v21)
  {
    v22 = v21;
    OUTLINED_FUNCTION_12_99();
    v28 = v14;
    [v2 vuiIsRTL];
    v14 = v28;
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v22 setFrame_];
  }

  sub_1E4206BA4();
  v23 = VUISignpostLogObject();
  OUTLINED_FUNCTION_24_65();

  v24 = *&v2[qword_1EE23EF98];
  [v24 vui:v14 sizeThatFits:0.0];
  OUTLINED_FUNCTION_18_3();
  sub_1E4206B94();
  v25 = VUISignpostLogObject();
  OUTLINED_FUNCTION_24_65();

  OUTLINED_FUNCTION_12_99();
  [v2 vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v24 setFrame_];
  return (*(v29 + 8))(v7, v30);
}

void sub_1E3C85E70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui_setNeedsLayout];
  }
}

uint64_t sub_1E3C85ECC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3C85F60(char a1)
{
  type metadata accessor for ButtonLayout();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3B050E8();
  v5 = j__OUTLINED_FUNCTION_18();
  *(v1 + 104) = sub_1E3BBD964(10, v3 & 1, v4, v5 & 1);
  type metadata accessor for TextLayout();
  *(v1 + 112) = sub_1E383BCC0();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v1 + 136) = sub_1E3BD61D8();
  *(v1 + 144) = sub_1E383BCC0();
  *(v1 + 152) = sub_1E383BCC0();
  *(v1 + 98) = a1 & 1;
  v6 = sub_1E3C2F9A0();
  v7 = *(v6 + 112);
  v8 = *(*v7 + 1696);

  v8(4);
  v9 = sub_1E3E5FD88();
  v10 = *v9;
  v11 = *(*v7 + 680);
  v12 = *v9;
  v11(v10);
  v13 = *v9;
  v14 = *(**(v6 + 120) + 680);
  v15 = v13;
  v14(v13);
  LOBYTE(v287[0]) = 3;
  LOBYTE(v284) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_112();
  OUTLINED_FUNCTION_2_153();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_8_111();
  v24 = OUTLINED_FUNCTION_0_201(v16, v17, v18, v19, v20, v21, v22, v23, v221, v232, v244, v256, 17);
  sub_1E3C2FCB8(v24, v25);
  v26 = OUTLINED_FUNCTION_5_142();
  v34 = OUTLINED_FUNCTION_7_25(v26, v27, v28, v29, v30, v31, v32, v33, v222, v233, v245, v257, __dst[0]);
  v35(v34, 48);
  v36 = *(v6 + 128);
  LOBYTE(v287[0]) = 17;
  LOBYTE(v284) = 14;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_13_112();
  OUTLINED_FUNCTION_2_153();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_8_111();
  v45 = OUTLINED_FUNCTION_0_201(v37, v38, v39, v40, v41, v42, v43, v44, v223, v234, v246, v258, 19);
  sub_1E3C2FCB8(v45, v46);
  v47 = OUTLINED_FUNCTION_5_142();
  v55 = OUTLINED_FUNCTION_7_25(v47, v48, v49, v50, v51, v52, v53, v54, v224, v235, v247, v259, __dst[0]);
  v56(v55, 48);
  v57 = *sub_1E3E5FDEC();
  v58 = *(*v36 + 680);
  v59 = v57;
  v58(v57);
  v60 = *(v6 + 136);
  sub_1E39537A8();
  v287[0] = v61;
  v287[1] = v62;
  v287[2] = v63;
  v287[3] = v64;
  v288 = 0;
  v65 = *(*v60 + 560);
  v65(v287);
  OUTLINED_FUNCTION_13();
  (*(v66 + 1808))(3);
  if (*(v6 + 98))
  {
    v67 = sub_1E418A524();
  }

  else
  {
    v67 = sub_1E418A500();
  }

  (*(*v60 + 440))(*v67, 0);
  OUTLINED_FUNCTION_13();
  (*(v68 + 2000))(0);
  v284 = 0x404E000000000000;
  v285 = 0;
  v69 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v280 = v282;
  LOBYTE(v281) = v283;
  sub_1E3C3DE00(v69);
  v276 = v278;
  LOBYTE(v277) = v279;
  sub_1E3C3DE00(v69);
  v272 = v274;
  LOBYTE(v273) = v275;
  v70 = sub_1E3C3DE00(v69);
  v268 = v270;
  LOBYTE(v269) = v271;
  v78 = OUTLINED_FUNCTION_0_201(v70, v71, v72, v73, v74, v75, v76, v77, v225, v236, v248, v260, 0);
  sub_1E3C2FCB8(v78, v79);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v88 = OUTLINED_FUNCTION_7_25(v80, v81, v82, v83, v84, v85, v86, v87, v226, v237, v249, v261, __dst[0]);
  v89(v88, 8);
  sub_1E39537A8();
  __src[0] = v90;
  __src[1] = v91;
  __src[2] = v92;
  __src[3] = v93;
  LOBYTE(__src[4]) = 0;
  v94 = v65(__src);
  v94.n128_u64[0] = 1.0;
  *__dst = j__OUTLINED_FUNCTION_7_78(v94);
  *&__dst[8] = v95;
  *&__dst[16] = v96;
  *&__dst[24] = v97;
  __dst[32] = 0;
  (*(*v60 + 1856))(__dst);
  v98 = sub_1E3755B54();
  v99 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.08];
  v100 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.1];
  v101 = sub_1E3E5F2F8(v99, v100);

  OUTLINED_FUNCTION_13();
  (*(v102 + 1832))(v101);
  v103 = *sub_1E3E60A14();
  v104 = *(*v60 + 872);
  v105 = v103;
  v104(v103);
  OUTLINED_FUNCTION_13();
  (*(v106 + 2216))(1);
  v107 = *(v6 + 144);
  v108 = *sub_1E3E5FDEC();
  v109 = *(*v107 + 680);
  v110 = v108;
  v109(v108);
  (*(*v107 + 2056))(1, 0);
  LOBYTE(v282) = 21;
  LOBYTE(v280) = 19;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_2_153();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_8_111();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v111 = OUTLINED_FUNCTION_12_100();
  OUTLINED_FUNCTION_3_152(v111, v112, v113, v114, v115, v116, v117, v118, v227, v238, v250, v262, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
  v119 = OUTLINED_FUNCTION_6_128();
  v127 = OUTLINED_FUNCTION_7_148(v119, v120, v121, v122, v123, v124, v125, v126, v228, v239, v251, v263, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
  v128(v127);
  (*(*v107 + 1936))(2);
  v129 = *(v6 + 152);
  LOBYTE(v282) = 17;
  LOBYTE(v280) = 15;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_2_153();
  sub_1E3C3DE00(&qword_1F5D549D8);
  OUTLINED_FUNCTION_8_111();
  sub_1E3C3DE00(&qword_1F5D549D8);
  v130 = OUTLINED_FUNCTION_12_100();
  OUTLINED_FUNCTION_3_152(v130, v131, v132, v133, v134, v135, v136, v137, v229, v240, v252, v264, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
  OUTLINED_FUNCTION_6_128();
  OUTLINED_FUNCTION_34_6();
  v146 = OUTLINED_FUNCTION_7_148(v138, v139, v140, v141, v142, v143, v144, v145, v230, v241, v253, v265, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
  v147(v146);
  v148 = *sub_1E3E5FD88();
  v149 = *(*v129 + 680);
  v150 = v148;
  v149(v148);
  OUTLINED_FUNCTION_34_6();
  (*(v151 + 2056))(1, 0);
  OUTLINED_FUNCTION_34_6();
  (*(v152 + 2080))(2, 0);
  OUTLINED_FUNCTION_34_6();
  (*(v153 + 2104))(2, 0);
  sub_1E3C37CBC(v60, 39);
  sub_1E3C37CBC(v107, 23);
  sub_1E3C37CBC(v129, 15);
  v154 = *(v6 + 104);
  OUTLINED_FUNCTION_13();
  (*(v155 + 256))(0x4060400000000000, 0);
  OUTLINED_FUNCTION_13();
  (*(v156 + 312))(0x403C000000000000, 0);
  OUTLINED_FUNCTION_13();
  (*(v157 + 1888))(0);
  *__dst = *sub_1E3E604E4();
  v158 = *__dst;
  OUTLINED_FUNCTION_10_104();
  v159 = sub_1E4206F24();
  OUTLINED_FUNCTION_10_104();
  v160 = sub_1E4206F24();
  v161 = sub_1E3E5F2F8(v159, v160);

  v287[0] = v161;
  v242 = sub_1E3E60700();
  v284 = *v242;
  v162 = v284;
  v282 = *sub_1E3E6069C();
  v163 = v282;
  sub_1E3C2FC98();
  v278 = v280;
  sub_1E3C3DE00(v98);
  v274 = v276;
  sub_1E3C2FCB8(__dst, __src);
  v164 = __src[0];
  v165 = __src[1];
  v166 = __src[2];
  v167 = __src[3];
  v254 = v6;
  v168 = __src[4];
  v169 = __src[5];
  *__dst = __src[0];
  *&__dst[8] = __src[1];
  *&__dst[16] = __src[2];
  *&__dst[24] = __src[3];
  *&__dst[32] = __src[4];
  *&__dst[40] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v178 = OUTLINED_FUNCTION_7_25(v170, v171, v172, v173, v174, v175, v176, v177, v231, v242, v254, v266, __dst[0]);
  v179(v178, 24);

  v180 = *sub_1E3E60480();
  v181 = *(*v154 + 872);
  v182 = v180;
  v181(v180);
  OUTLINED_FUNCTION_13();
  v184 = *(v183 + 2048);
  v185 = v184();
  __src[0] = sub_1E3952C64();
  __src[1] = v186;
  __src[2] = v187;
  __src[3] = v188;
  LOBYTE(__src[4]) = 0;
  (*(*v185 + 160))(__src);

  (v184)(v189);
  OUTLINED_FUNCTION_15_11();
  v190 = *v243;
  v192 = *(*v191 + 680);
  v193 = *v243;
  v192(v190);

  OUTLINED_FUNCTION_13();
  v195 = *(v194 + 2096);
  v195();
  OUTLINED_FUNCTION_15_11();
  (*(*v196 + 2072))(14);

  (v195)(v197);
  OUTLINED_FUNCTION_15_11();
  (*(*v198 + 2168))(10);

  v200 = (v195)(v199);
  *__dst = sub_1E3952C64();
  *&__dst[8] = v201;
  *&__dst[16] = v202;
  *&__dst[24] = v203;
  __dst[32] = 0;
  (*(*v200 + 160))(__dst);

  (v195)(v204);
  OUTLINED_FUNCTION_15_11();
  v205 = *v243;
  v207 = *(*v206 + 680);
  v208 = *v243;
  v207(v205);

  v210 = (v195)(v209);
  v211 = sub_1E3E60824();
  v212 = *v211;
  v213 = *(*v210 + 872);
  v214 = *v211;
  v213(v212);

  (v184)(v215);
  OUTLINED_FUNCTION_15_11();
  v216 = *v211;
  v218 = *(*v217 + 872);
  v219 = v216;
  v218(v216);

  return v255;
}

void sub_1E3C86F10()
{
  type metadata accessor for ButtonLayout();
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v0[13] = sub_1E3BBD964(10, v1 & 1, v2, v3 & 1);
  type metadata accessor for TextLayout();
  v0[14] = sub_1E383BCC0();
  v0[15] = sub_1E383BCC0();
  v0[16] = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  v0[17] = sub_1E3BD61D8();
  v0[18] = sub_1E383BCC0();
  v0[19] = sub_1E383BCC0();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3C87004()
{
  v0 = sub_1E38909F4();

  return MEMORY[0x1EEE6BDC0](v0, 160, 7);
}

unint64_t sub_1E3C87038()
{
  result = qword_1ECF360D8;
  if (!qword_1ECF360D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF360D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SeasonDownloadListCellType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C8718C()
{
  result = sub_1E4207944();
  qword_1EE28C278 = result;
  unk_1EE28C280 = v1;
  return result;
}

uint64_t sub_1E3C871DC()
{
  result = sub_1E4207944();
  qword_1EE28C290 = result;
  *algn_1EE28C298 = v1;
  return result;
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_total] = v6;
  v7 = a2 != 0;
  if (a3)
  {
    ++v7;
  }

  if (result)
  {
    ++v7;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v7;
  if (a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 != 0;
  }

  v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = v8;
  if (!a3)
  {
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_14;
  }

  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_14:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_17:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_8:

    v13 = OUTLINED_FUNCTION_2_154();

    v14(v13);
    return;
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = [v6 writingDirectionsQuantities];
    v9 = *&v8[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&v8[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&v8[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_7:
    if (!--v1)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:

    v11 = OUTLINED_FUNCTION_2_154();

    v12(v11);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = [v6 writingDirectionsQuantities];
    if (v8[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v8[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v9 = __CFADD__(v3++, 1);
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = __CFADD__(v2++, 1);
      if (v9)
      {
        goto LABEL_18;
      }
    }

LABEL_13:
    if (!--v1)
    {
      goto LABEL_14;
    }
  }

  v9 = __CFADD__(v4++, 1);
  if (!v9)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

BOOL WritingDirectionsCounts.isEqual(_:)(uint64_t a1)
{
  sub_1E3294F34(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_1E329505C(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_1E3C87A20()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  static WritingDirectionsCounts.zero = result;
  return result;
}

uint64_t *WritingDirectionsCounts.zero.unsafeMutableAddressor()
{
  if (qword_1ECF5D990 != -1)
  {
    OUTLINED_FUNCTION_0_202();
  }

  return &static WritingDirectionsCounts.zero;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_1ECF5D990 != -1)
  {
    OUTLINED_FUNCTION_0_202();
  }

  v1 = static WritingDirectionsCounts.zero;

  return v1;
}

uint64_t WritingDirectionsCounts.description.getter()
{
  strcpy(v12, "Natural: ");
  WORD1(v12[1]) = 0;
  HIDWORD(v12[1]) = -385875968;
  v1 = OUTLINED_FUNCTION_5_143();
  MEMORY[0x1E69109E0](v1);

  OUTLINED_FUNCTION_4_158();
  v2 = v12[0];
  v3 = v12[1];
  strcpy(v12, "{ Counts: { ");
  MEMORY[0x1E69109E0](v2, v3);

  sub_1E42074B4();

  v4 = OUTLINED_FUNCTION_5_143();
  MEMORY[0x1E69109E0](v4);

  OUTLINED_FUNCTION_4_158();

  MEMORY[0x1E69109E0](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v12[0];
  sub_1E42074B4();

  v6 = OUTLINED_FUNCTION_5_143();
  MEMORY[0x1E69109E0](v6);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);

  MEMORY[0x1E69109E0](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x1E69109E0](2108541, 0xE300000000000000);

  sub_1E42074B4();

  v12[0] = 0x45204C5452207349;
  v12[1] = 0xEF28206867756F6ELL;
  if (_MergedGlobals_221 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_153();

  OUTLINED_FUNCTION_7_149();
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E69109E0](v7, v8);

  OUTLINED_FUNCTION_4_158();

  OUTLINED_FUNCTION_3_153();

  sub_1E42074B4();

  v12[0] = 0xD000000000000010;
  v12[1] = 0x80000001E427B330;
  if (qword_1EE28C288 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_3_153();

  OUTLINED_FUNCTION_7_149();
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E69109E0](v9, v10);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);

  MEMORY[0x1E69109E0](v12[0], v12[1]);

  MEMORY[0x1E69109E0](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

id variable initialization expression of AppInstallerHelper.appStoreDaemonDialogueObserver()
{
  v0 = objc_allocWithZone(VUIASDDialogObserver);

  return [v0 init];
}

uint64_t variable initialization expression of AppInstallerHelper.punchoutURL()
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

void sub_1E3C881FC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = sub_1E4203FF4();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OBJC_IVAR___VUIAppInstallerHelper____lazy_storage___serialQueue;
  v13 = *(v0 + OBJC_IVAR___VUIAppInstallerHelper____lazy_storage___serialQueue);
  if (!v13)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0);
    sub_1E4203FE4();
    sub_1E3274998(&qword_1EE23B1F0, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0);
    sub_1E328FD7C(&qword_1EE23B490, &unk_1ECF326B0);
    sub_1E42072E4();
    (*(v4 + 104))(v8, *MEMORY[0x1E69E8090], v2);
    v14 = sub_1E4206A44();
    v15 = *(v0 + v12);
    *(v1 + v12) = v14;
    v14;

    v13 = 0;
  }

  v16 = v13;
  OUTLINED_FUNCTION_25_2();
}

void AppInstallerHelper.init(punchoutAction:)()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = OBJC_IVAR___VUIAppInstallerHelper_appStoreDaemonDialogueObserver;
  *&v1[v16] = [objc_allocWithZone(VUIASDDialogObserver) init];
  v17 = OBJC_IVAR___VUIAppInstallerHelper_channelDetails;
  *&v1[OBJC_IVAR___VUIAppInstallerHelper_channelDetails] = 0;
  v42 = OBJC_IVAR___VUIAppInstallerHelper_punchoutURL;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v2);
  v21 = &v1[OBJC_IVAR___VUIAppInstallerHelper_canonicalID];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v1[OBJC_IVAR___VUIAppInstallerHelper_externalID];
  *v22 = 0;
  v22[1] = 0;
  v43 = OBJC_IVAR___VUIAppInstallerHelper_isPlaybackURL;
  v1[OBJC_IVAR___VUIAppInstallerHelper_isPlaybackURL] = 0;
  v40 = OBJC_IVAR___VUIAppInstallerHelper_shouldForceVPPAPrompt;
  v1[OBJC_IVAR___VUIAppInstallerHelper_shouldForceVPPAPrompt] = 0;
  *&v1[OBJC_IVAR___VUIAppInstallerHelper____lazy_storage___serialQueue] = 0;
  v23 = &selRef_advisoryDisabledTimeRanges;
  v24 = [v0 channelDetails];
  v25 = *&v1[v17];
  *&v1[v17] = v24;

  v26 = [v0 punchoutURL];
  if (v26)
  {
    v27 = v26;
    sub_1E41FE3C4();

    v28 = *(v39 + 32);
    v28(v12, v7, v2);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v2);
    v28(v15, v12, v2);
    v23 = &selRef_advisoryDisabledTimeRanges;
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v2);
    sub_1E41FE344();
    if (__swift_getEnumTagSinglePayload(v12, 1, v2) != 1)
    {
      sub_1E325F6F0(v12, &unk_1ECF363C0);
    }
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
  v32 = v42;
  swift_beginAccess();
  sub_1E38DAEEC(v15, &v1[v32]);
  swift_endAccess();
  *v21 = sub_1E32859C4(v0, &selRef_canonicalID);
  v21[1] = v33;

  *v22 = sub_1E32859C4(v0, &selRef_externalID);
  v22[1] = v34;

  v35 = [v0 isPlaybackURL];
  v1[v43] = v35;
  v36 = sub_1E3C8B25C([v0 v23[450]]);
  if (v36)
  {
    *&v1[OBJC_IVAR___VUIAppInstallerHelper_appBundleIDs] = v36;
    v37 = [v0 shouldForceVPPAPrompt];
    v38 = ObjectType;
    v1[v40] = v37;
    v44.receiver = v1;
    v44.super_class = v38;
    objc_msgSendSuper2(&v44, sel_init);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

id AppInstallerHelper.init(appBundleIDs:)()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___VUIAppInstallerHelper_appStoreDaemonDialogueObserver;
  *&v1[v3] = [objc_allocWithZone(VUIASDDialogObserver) init];
  *&v1[OBJC_IVAR___VUIAppInstallerHelper_channelDetails] = 0;
  sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = &v1[OBJC_IVAR___VUIAppInstallerHelper_canonicalID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v1[OBJC_IVAR___VUIAppInstallerHelper_externalID];
  *v9 = 0;
  v9[1] = 0;
  v1[OBJC_IVAR___VUIAppInstallerHelper_isPlaybackURL] = 0;
  v1[OBJC_IVAR___VUIAppInstallerHelper_shouldForceVPPAPrompt] = 0;
  *&v1[OBJC_IVAR___VUIAppInstallerHelper____lazy_storage___serialQueue] = 0;
  *&v1[OBJC_IVAR___VUIAppInstallerHelper_appBundleIDs] = v0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1E3C88978(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___VUIAppInstallerHelper_channelDetails);
  if (v3)
  {
    v6 = objc_opt_self();
    v7 = v3;
    v8 = [v6 sharedInstance];
    v9 = *(v2 + OBJC_IVAR___VUIAppInstallerHelper_shouldForceVPPAPrompt);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v12[4] = sub_1E3C8B2C0;
    v12[5] = v10;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1E3A3E484;
    v12[3] = &block_descriptor_83;
    v11 = _Block_copy(v12);

    [v8 startVPPAConsentFlow:v7 consentCancelButtonType:0 shouldForceVPPAPrompt:v9 completion:v11];
    _Block_release(v11);
  }
}

void sub_1E3C88AC4()
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
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v5 & 1;
    *(v16 + 8) = 1024;
    *(v16 + 10) = v3 & 1;
    _os_log_impl(&dword_1E323F000, v14, v15, "AppInstallerHelper: VPPA flow shoiuld continue = %{BOOL}d. User Accepted VPPA = %{BOOL}d", v16, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  v1(v5 & 1, v3 & 1);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C88C3C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = *(v0 + OBJC_IVAR___VUIAppInstallerHelper_channelDetails);
  if (v12)
  {
    sub_1E41FE9C4();
    v13 = v12;
    v14 = sub_1E41FE9B4();
    v15 = [v14 ams_DSID];

    if (v15)
    {

      v16 = sub_1E32859C4(v13, &selRef_name);
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_4_0();
      v20 = swift_allocObject();
      *(v20 + 16) = v13;
      v21 = objc_opt_self();
      v22 = v13;
      v23 = [v21 sharedInstanceFiltered];
      OUTLINED_FUNCTION_4_0();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_27_10();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = v4;
      v25[4] = v2;
      v25[5] = v20;
      v25[6] = v18;
      v25[7] = v19;
      v38[4] = sub_1E3C8B2C8;
      v38[5] = v25;
      OUTLINED_FUNCTION_12_0();
      v38[1] = 1107296256;
      OUTLINED_FUNCTION_3_154();
      v38[2] = v26;
      v38[3] = &block_descriptor_13_0;
      v27 = _Block_copy(v38);
      sub_1E34AF604(v4);

      [v23 loadIfNeededWithCompletion_];
      _Block_release(v27);
    }

    else
    {
      if (v4)
      {
        v29 = OUTLINED_FUNCTION_22_67();
        v4(v29);
      }

      v30 = sub_1E324FBDC();
      (*(v7 + 16))(v11, v30, v5);
      v31 = sub_1E41FFC94();
      v32 = sub_1E4206814();
      if (os_log_type_enabled(v31, v32))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v33, v34, v35, v36, v37, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v7 + 8))(v11, v5);
    }
  }

  else if (v4)
  {
    v28 = OUTLINED_FUNCTION_22_67();
    v4(v28);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C88F38()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v49 = v3;
    if (v11)
    {
      v21 = *(Strong + OBJC_IVAR___VUIAppInstallerHelper_channelDetails);
      if (v21)
      {
        v22 = [v21 channelID];
        if (v22)
        {
          v23 = v22;
          v48 = v9;
          v24 = v7;
          v25 = [objc_opt_self() sharedInstanceFiltered];
          v26 = [v25 channelForID_];

          v7 = v24;
          v9 = v48;

          if (v26)
          {
            swift_beginAccess();
            v27 = *(v5 + 16);
            *(v5 + 16) = v26;
          }
        }
      }
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if ([*(v5 + 16) isWatchListEnabled] && (OUTLINED_FUNCTION_25(), swift_beginAccess(), !objc_msgSend(*(v5 + 16), sel_isFirstParty)))
    {
      v34 = v7;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v35 = *&v20[OBJC_IVAR___VUIAppInstallerHelper_channelDetails];
      v36 = *(v5 + 16);
      if (v35 && (v37 = sub_1E39052B0(v35), v38))
      {
        v39 = v37;
        v40 = v38;
      }

      else
      {

        v39 = 0;
        v40 = 0xE000000000000000;
      }

      v41 = [objc_opt_self() sharedInstance];
      OUTLINED_FUNCTION_4_0();
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_27_10();
      v43 = swift_allocObject();
      v43[2] = v42;
      v43[3] = v9;
      v43[4] = v34;
      v43[5] = v36;
      v43[6] = v39;
      v43[7] = v40;
      v50[4] = sub_1E3C8B654;
      v50[5] = v43;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 1107296256;
      v50[2] = sub_1E39CF930;
      v50[3] = &block_descriptor_45_0;
      v44 = _Block_copy(v50);
      sub_1E34AF604(v9);
      v45 = v36;

      OUTLINED_FUNCTION_25();
      [v46 v47];

      _Block_release(v44);
    }

    else
    {
      v28 = sub_1E324FBDC();
      (*(v14 + 16))(v18, v28, v12);

      v29 = sub_1E41FFC94();
      v30 = sub_1E4206814();

      if (os_log_type_enabled(v29, v30))
      {
        OUTLINED_FUNCTION_6_21();
        v31 = OUTLINED_FUNCTION_16_15();
        v50[0] = v31;
        *v7 = 136315138;
        *(v7 + 4) = sub_1E3270FC8(v49, v1, v50);
        _os_log_impl(&dword_1E323F000, v29, v30, "AppInstallerHelper: Channel %s does not need VPPA", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v14 + 8))(v18, v12);
      if (v9)
      {
        v32 = OUTLINED_FUNCTION_22_67();
        v9(v32);
      }
    }
  }

  else if (v9)
  {
    v33 = OUTLINED_FUNCTION_22_67();
    v9(v33);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C893A0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *&v1[OBJC_IVAR___VUIAppInstallerHelper_appBundleIDs];
  if (!v13[2])
  {
    if (v5)
    {
      v5(0);
    }

    goto LABEL_20;
  }

  v14 = v13[4];
  v15 = v13[5];
  v16 = OBJC_IVAR___VUIAppInstallerHelper_punchoutURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(&v1[v16], 1, v6))
  {

LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v18;
    v19 = MEMORY[0x1E69E6370];
    *(inited + 72) = MEMORY[0x1E69E6370];
    *(inited + 48) = 1;
    sub_1E4205CB4();
    if (v1[OBJC_IVAR___VUIAppInstallerHelper_isPlaybackURL] == 1)
    {
      v20 = sub_1E4205CB4();
      v47 = v19;
      LOBYTE(v45) = 1;
      sub_1E329504C(&v45, v44);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0(v44, 0xD000000000000017, 0x80000001E427B560);
      v21 = sub_1E4205F14();
      v23 = v22;
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120);
      *&v45 = v20;
      sub_1E329504C(&v45, v44);
      swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0(v44, v21, v23);
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E69636B8]) init];
    v25 = sub_1E4205C44();
    [v24 setFrontBoardOptions_];

    v26 = [objc_opt_self() defaultWorkspace];
    if (v26)
    {
      v27 = v26;

      OUTLINED_FUNCTION_4_0();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = v5;
      v29[4] = v3;
      OUTLINED_FUNCTION_5_144(v29);
      *(&v45 + 1) = 1107296256;
      OUTLINED_FUNCTION_3_154();
      v46 = v30;
      v47 = &block_descriptor_20_0;
      _Block_copy(&v45);
      OUTLINED_FUNCTION_24_66();
      v31 = v24;

      sub_1E3C8B2DC(v14, v15, v24, v1, v27);
      _Block_release(v1);

LABEL_20:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(v8 + 16))(v12, &v1[v16], v6);

  sub_1E41FE3F4();
  v33 = v32;
  (*(v8 + 8))(v12, v6);
  if (!v33)
  {
    goto LABEL_4;
  }

  v34 = sub_1E4205F94();
  v36 = v35;

  if (v34 == 7368801 && v36 == 0xE300000000000000)
  {
  }

  else
  {
    v38 = sub_1E42079A4();

    if ((v38 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v39 = [objc_opt_self() defaultWorkspace];
  if (v39)
  {
    v40 = v39;
    OUTLINED_FUNCTION_4_0();
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = swift_allocObject();
    v42[2] = v41;
    v42[3] = v5;
    v42[4] = v3;
    OUTLINED_FUNCTION_5_144(v42);
    *(&v45 + 1) = 1107296256;
    OUTLINED_FUNCTION_3_154();
    v46 = v43;
    v47 = &block_descriptor_27_0;
    _Block_copy(&v45);
    OUTLINED_FUNCTION_24_66();

    sub_1E3C8B2DC(v14, v15, 0, v1, v40);
    _Block_release(v1);

    goto LABEL_20;
  }

LABEL_22:
  __break(1u);
}

void sub_1E3C89914()
{
  v1 = sub_1E41FE264();
  v2 = [v1 domain];
  v3 = sub_1E4205F14();
  v5 = v4;

  if (v3 == sub_1E4205F14() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1E42079A4();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v1 code] != 1)
  {
    goto LABEL_23;
  }

  v9 = [v1 userInfo];
  v10 = sub_1E4205C64();

  v11 = sub_1E4205F14();
  sub_1E3277E60(v11, v12, v10, &v34);

  if (!v35)
  {
    sub_1E325F6F0(&v34, &unk_1ECF296E0);
    goto LABEL_23;
  }

  sub_1E3280A90(0, &qword_1ECF30180);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v23 = [objc_allocWithZone(VUILocalizationManager) init];
    sub_1E3741090(0xD000000000000015, 0x80000001E427B680, v23);
    v25 = v24;

    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1E4297BE0;
      v27 = *(v0 + OBJC_IVAR___VUIAppInstallerHelper_channelDetails);
      if (v27)
      {
        v28 = sub_1E39052B0(v27);
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *(v26 + 56) = MEMORY[0x1E69E6158];
      *(v26 + 64) = sub_1E3283528();
      if (v30)
      {
        v31 = v28;
      }

      else
      {
        v31 = 0;
      }

      v32 = 0xE000000000000000;
      if (v30)
      {
        v32 = v30;
      }

      *(v26 + 32) = v31;
      *(v26 + 40) = v32;
      sub_1E4205F44();

      sub_1E3C8AC4C();
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_35;
  }

  v13 = [v33 domain];
  v14 = sub_1E4205F14();
  v16 = v15;

  if (v14 == sub_1E4205F14() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_1E42079A4();

    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ([v33 code] != 5)
  {
LABEL_22:

    goto LABEL_23;
  }

  v20 = [objc_allocWithZone(VUILocalizationManager) init];
  sub_1E3741090(0xD00000000000001FLL, 0x80000001E427B6A0, v20);
  v22 = v21;

  if (v22)
  {
    sub_1E3C8AC4C();

LABEL_33:

    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1E3C89CF0()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v0;
  v38 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v39 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = v12;
    v33 = Strong;
    sub_1E3C881FC();
    v34 = v24;
    OUTLINED_FUNCTION_4_0();
    v35 = v17;
    v25 = swift_allocObject();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v37;
    v27[4] = v9;
    v27[5] = v3;
    v27[6] = v38;
    v27[7] = v7;
    v27[8] = v5;
    v40[4] = sub_1E3C8B664;
    v40[5] = v27;
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 1107296256;
    v40[2] = sub_1E329EEC4;
    v40[3] = &block_descriptor_52_1;
    v28 = _Block_copy(v40);

    v29 = v37;
    v30 = v9;

    sub_1E34AF604(v7);
    sub_1E4203FE4();
    OUTLINED_FUNCTION_4_2();
    sub_1E3274998(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
    sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v22, v16, v28);
    _Block_release(v28);

    (*(v36 + 8))(v16, v10);
    (*(v39 + 8))(v22, v35);
  }

  else if (v7)
  {
    v7(0);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C8A058()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v99 = v4;
  v100 = v5;
  v7 = v6;
  v9 = v8;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v101 = v10;
  v102 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v95 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_29;
  }

  v96 = Strong;
  v97 = v1;
  v98 = v3;
  v28 = [objc_opt_self() sharedSettings];
  sub_1E32859C4(v9, &selRef_channelID);
  if (v29)
  {
    v30 = sub_1E4205ED4();

    v31 = [v28 settingsForChannelID:v30 externalID:0];

    v95 = v31;
    if (v31)
    {
      v32 = [v31 accessStatus] == 2;
    }

    else
    {
      v32 = 0;
    }

    v33 = [v7 vppaStatusString];
    v34 = [v33 length];

    if (v34)
    {
      if (sub_1E3C8A748(v7))
      {
        v35 = sub_1E324FBDC();
        v37 = v101;
        v36 = v102;
        (*(v102 + 16))(v20, v35, v101);
        v38 = v100;

        v39 = sub_1E41FFC94();
        sub_1E4206814();

        if (OUTLINED_FUNCTION_56_4())
        {
          OUTLINED_FUNCTION_6_21();
          v40 = OUTLINED_FUNCTION_16_15();
          v103[0] = v40;
          v41 = OUTLINED_FUNCTION_16_98(4.8149e-34);
          *(v14 + 4) = sub_1E3270FC8(v41, v38, v42);
          OUTLINED_FUNCTION_6_29();
          _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_6_0();
        }

        (*(v36 + 8))(v20, v37);
        v48 = v98;
        goto LABEL_25;
      }

      v65 = [v9 isConsented];
      v64 = v95;
      if ((v65 & 1) == 0)
      {
        v66 = sub_1E324FBDC();
        v67 = *(v102 + 16);
        if (!v32)
        {
          v83 = v64;
          v84 = v101;
          v67(v17, v66, v101);
          v85 = v100;

          v86 = sub_1E41FFC94();
          sub_1E4206814();

          if (OUTLINED_FUNCTION_56_4())
          {
            OUTLINED_FUNCTION_6_21();
            v87 = OUTLINED_FUNCTION_16_15();
            v103[0] = v87;
            v88 = OUTLINED_FUNCTION_16_98(4.8149e-34);
            *(v14 + 4) = sub_1E3270FC8(v88, v85, v89);
            OUTLINED_FUNCTION_6_29();
            _os_log_impl(v90, v91, v92, v93, v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            OUTLINED_FUNCTION_7_9();
            OUTLINED_FUNCTION_6_0();
          }

          (*(v102 + 8))(v17, v84);
          v48 = v98;
          v64 = v83;
          if (!v98)
          {
            goto LABEL_28;
          }

          goto LABEL_26;
        }

        v68 = v101;
        v67(v14, v66, v101);
        v69 = v100;

        v70 = sub_1E41FFC94();
        v71 = sub_1E4206814();

        if (OUTLINED_FUNCTION_56_4())
        {
          v72 = OUTLINED_FUNCTION_6_21();
          v73 = v64;
          v74 = swift_slowAlloc();
          v103[0] = v74;
          *v72 = 136315138;
          *(v72 + 4) = sub_1E3270FC8(v99, v69, v103);
          _os_log_impl(&dword_1E323F000, v70, v71, "AppInstallerHelper: No VPPA Status found. Channel %s has been explicitly denied", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          v64 = v73;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_7_9();
        }

        (*(v102 + 8))(v14, v68);
      }
    }

    else
    {
      v49 = [v9 isConsented] | v32;
      v50 = sub_1E324FBDC();
      v51 = v102;
      v52 = *(v102 + 16);
      if ((v49 & 1) == 0)
      {
        v76 = v101;
        v52(v26, v50, v101);
        v77 = v100;

        v78 = sub_1E41FFC94();
        v79 = sub_1E4206814();

        v80 = os_log_type_enabled(v78, v79);
        v48 = v98;
        if (v80)
        {
          v81 = OUTLINED_FUNCTION_6_21();
          v82 = swift_slowAlloc();
          v103[0] = v82;
          *v81 = 136315138;
          *(v81 + 4) = sub_1E3270FC8(v99, v77, v103);
          _os_log_impl(&dword_1E323F000, v78, v79, "AppInstallerHelper: No VPPA Status found. Channel %s is not consented", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_7_9();
        }

        (*(v51 + 8))(v26, v76);
LABEL_25:
        v64 = v95;
        if (v48)
        {
LABEL_26:
          v75 = 1;
          goto LABEL_27;
        }

LABEL_28:

LABEL_29:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v53 = v101;
      v52(v23, v50, v101);
      v54 = v100;

      v55 = sub_1E41FFC94();
      sub_1E4206814();

      if (OUTLINED_FUNCTION_56_4())
      {
        OUTLINED_FUNCTION_6_21();
        v56 = OUTLINED_FUNCTION_16_15();
        v103[0] = v56;
        v57 = OUTLINED_FUNCTION_16_98(4.8149e-34);
        *(v14 + 4) = sub_1E3270FC8(v57, v54, v58);
        OUTLINED_FUNCTION_6_29();
        _os_log_impl(v59, v60, v61, v62, v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        OUTLINED_FUNCTION_7_9();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v51 + 8))(v23, v53);
      v64 = v95;
    }

    v48 = v98;
    if (v98)
    {
      v75 = 0;
LABEL_27:
      v48(v75);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_1E3C8A748(void *a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v34 - v22;
  v24 = [a1 vppaStatus];
  v25 = [a1 vppaSessionDurationInMillis];
  [v25 doubleValue];

  v26 = [objc_opt_self() standardUserDefaults];
  v27 = [v26 objectForKey_];

  if (v27)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v36[0] = v34;
  v36[1] = v35;
  if (*(&v35 + 1))
  {
    v28 = swift_dynamicCast() ^ 1;
    v29 = v23;
  }

  else
  {
    sub_1E325F6F0(v36, &unk_1ECF296E0);
    v29 = v23;
    v28 = 1;
  }

  __swift_storeEnumTagSinglePayload(v29, v28, 1, v2);
  if ((v24 - 2) < 2)
  {
    goto LABEL_8;
  }

  if (v24 != 1)
  {
    goto LABEL_13;
  }

  sub_1E37E93E8(v23, v19, &unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v2) != 1)
  {
    (*(v4 + 32))(v14, v19, v2);
    sub_1E41FE504();
    sub_1E41FE5C4();
    v31 = sub_1E41FE5A4();
    v32 = *(v4 + 8);
    v32(v8, v2);
    v32(v11, v2);
    v32(v14, v2);
    if (v31 == -1)
    {
      goto LABEL_8;
    }

LABEL_13:
    v30 = 0;
    goto LABEL_14;
  }

  sub_1E325F6F0(v19, &unk_1ECF28E20);
LABEL_8:
  v30 = 1;
LABEL_14:
  sub_1E325F6F0(v23, &unk_1ECF28E20);
  return v30;
}

id AppInstallerHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppInstallerHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3C8AC4C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v40 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v38 = v13;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = objc_opt_self();
  v18 = sub_1E3C8B554(0, v5, v3, 1, v17);
  v19 = [objc_allocWithZone(VUILocalizationManager) init];
  sub_1E3741090(19279, 0xE200000000000000, v19);
  v21 = v20;

  if (v21)
  {
    v22 = sub_1E4205ED4();
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_self();
  v24 = [v23 vui:v22 actionWithTitle:0 style:0 handler:?];

  [v18 vui:v24 addAction:?];
  v25 = &unk_1E429A000;
  if (v1)
  {
    v26 = [objc_allocWithZone(VUILocalizationManager) init];
    sub_1E3741090(0x53474E4954544553, 0xE800000000000000, v26);
    v28 = v27;

    if (v28)
    {
      v29 = sub_1E4205ED4();
    }

    else
    {
      v29 = 0;
    }

    v25 = &unk_1E429A000;
    v45 = sub_1E3C8B0A4;
    v46 = 0;
    OUTLINED_FUNCTION_12_0();
    v42 = 1107296256;
    v43 = sub_1E377674C;
    v44 = &block_descriptor_38_2;
    v30 = _Block_copy(&v41);
    v31 = [v23 vui:v29 actionWithTitle:0 style:v30 handler:?];
    _Block_release(v30);

    [v18 vui:v31 addAction:?];
  }

  sub_1E3280A90(0, &qword_1EE23B1D0);
  v32 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v33 = swift_allocObject();
  *(v33 + 16) = v18;
  v45 = sub_1E3C8B5C4;
  v46 = v33;
  OUTLINED_FUNCTION_12_0();
  v42 = v25[375];
  v43 = sub_1E378AEA4;
  v44 = &block_descriptor_35_0;
  v34 = _Block_copy(&v41);
  v35 = v18;

  sub_1E4203FE4();
  v41 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v36, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v16, v11, v34);
  _Block_release(v34);

  (*(v40 + 8))(v11, v6);
  (*(v38 + 8))(v16, v39);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C8B0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_6();
  v4 = v2 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  sub_1E4205F14();
  sub_1E41FE404();

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    sub_1E37E93E8(v7, v4, &unk_1ECF363C0);
    v10 = sub_1E41FE414();
    v11 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v10) != 1)
    {
      v11 = sub_1E41FE364();
      (*(*(v10 - 8) + 8))(v4, v10);
    }

    v12 = sub_1E4205CB4();
    sub_1E37E0EE4(v11, v12, v9);

    return sub_1E325F6F0(v7, &unk_1ECF363C0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3C8B25C(void *a1)
{
  v2 = [a1 appBundleIDs];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3C8B2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1E4205ED4();

  [a5 openApplicationWithBundleIdentifier:v8 usingConfiguration:a3 completionHandler:a4];
}

uint64_t objectdestroy_16Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1E3C8B3A0(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  if (a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a2;
      sub_1E3C89914();
    }
  }

  if (v4)
  {
    v4(a2 == 0);
  }
}

uint64_t type metadata accessor for AppInstallerHelper()
{
  result = qword_1EE2A1580;
  if (!qword_1EE2A1580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C8B484()
{
  sub_1E3286EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1E3C8B554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1E4205ED4();
  v9 = [a5 vui:a1 alertControllerWithTitle:v8 message:a4 preferredStyle:?];

  return v9;
}

void sub_1E3C8B5C4()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() topPresentedViewController];
  if (v2)
  {
    v3 = v2;
    [v1 vui_presentAlertFromPresentingController_animated_completion_];
  }
}

id sub_1E3C8B6B4(uint64_t a1, double a2)
{
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5 && a1 && (v6 = v5, v9 = &unk_1F5E83968, (v7 = swift_dynamicCastObjCProtocolConditional()) != 0))
  {
    return [v6 topMarginToLabel:v7 withBaselineMargin:{a2, &unk_1F5E83968, &unk_1F5E83968}];
  }

  else
  {
    return [v2 topMarginWithBaselineMargin_];
  }
}

double sub_1E3C8B764(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  v9 = v4;
  if (v8)
  {
    sub_1E3E39D3C(a1, a2, a3);
    v11 = v10;

    return v11;
  }

  else
  {

    return sub_1E3C8B818(a1, a2, a3, v9, v9);
  }
}

double sub_1E3C8B818(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  v6 = a3;
  if (!a1)
  {
    v25 = 0.0;
    v14 = 0.0;
    v17 = 0.0;
    v11 = 0.0;
LABEL_21:
    if (a2 > 0.0 && (v14 > a2 || v14 <= 0.0))
    {
      v14 = a2;
    }

    else if (v14 > 0.0)
    {
      a2 = v14;
    }

    goto LABEL_29;
  }

  v9 = COERCE_DOUBLE((*(*a1 + 224))(a1));
  v11 = 0.0;
  if (v10)
  {
    v9 = 0.0;
  }

  v31 = v9;
  (*(*a1 + 328))();
  v12 = COERCE_DOUBLE((*(*a1 + 248))());
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v12;
  }

  v15 = COERCE_DOUBLE((*(*a1 + 352))());
  if (v16)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v15;
  }

  v18 = COERCE_DOUBLE((*(*a1 + 200))());
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v18;
  }

  v21 = COERCE_DOUBLE((*(*a1 + 304))());
  if (v22)
  {
    v23 = v20;
    v24 = v20;
    v25 = v31;
    v6 = a3;
    if (v20 > 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v11 = v21;
  if (v20 <= 0.0)
  {
    v25 = v31;
    v6 = a3;
    goto LABEL_21;
  }

  v6 = a3;
  if (v21 > 0.0)
  {

    return v20;
  }

  v14 = v20;
  v25 = v20;
  a2 = v20;
LABEL_29:
  v20 = a2;
  v23 = v25;
  v24 = v14;
  v26 = v11;
  if (v11 <= 0.0)
  {
LABEL_30:
    if (v6 > 0.0 && (v17 > v6 || v17 <= 0.0))
    {
      v26 = v6;
    }

    else if (v17 <= 0.0)
    {
      v26 = v6;
    }

    else
    {
      v26 = v17;
    }
  }

  [a5 vui:v20 sizeThatFits:v26];
  v28 = v27;

  if (v24 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v24;
  }

  if (v24 <= 0.0)
  {
    v29 = v28;
  }

  if (v28 >= v23)
  {
    return v29;
  }

  else
  {
    return v23;
  }
}

double sub_1E3C8BB10(uint64_t a1, double (*a2)(uint64_t, double, __n128), double a3, __n128 a4)
{
  v5 = a4.n128_f64[0];
  if (*&a1 == 0.0)
  {
    v23 = 0.0;
    v13 = 0.0;
    v16 = 0.0;
    v10 = 0.0;
LABEL_21:
    if (a3 > 0.0 && (v13 > a3 || v13 <= 0.0))
    {
      v19 = a3;
    }

    else
    {
      if (v13 > 0.0)
      {
        a3 = v13;
      }

      v19 = v13;
    }

    goto LABEL_28;
  }

  v7 = a1;
  v28 = a4.n128_u64[0];
  v8 = COERCE_DOUBLE((*(*a1 + 224))(a1));
  v10 = 0.0;
  if (v9)
  {
    v8 = 0.0;
  }

  v27 = v8;
  (*(*v7 + 328))();
  v11 = COERCE_DOUBLE((*(*v7 + 248))());
  if (v12)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v11;
  }

  v14 = COERCE_DOUBLE((*(*v7 + 352))());
  if (v15)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v14;
  }

  v17 = COERCE_DOUBLE((*(*v7 + 200))());
  if (v18)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v17;
  }

  *&a1 = COERCE_DOUBLE((*(*v7 + 304))());
  if (v20)
  {
    v21 = v19;
    v22 = v19;
    v23 = v27;
    v5 = *&v28;
    if (v19 > 0.0)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  v10 = *&a1;
  if (v19 <= 0.0)
  {
    v23 = v27;
    v5 = *&v28;
    goto LABEL_21;
  }

  v23 = v19;
  a3 = v19;
  v5 = *&v28;
  if (*&a1 > 0.0)
  {
    return v19;
  }

LABEL_28:
  v22 = v19;
  v19 = a3;
  v21 = v23;
  a4.n128_f64[0] = v10;
  if (v10 <= 0.0)
  {
LABEL_29:
    if (v5 > 0.0 && (v16 > v5 || v16 <= 0.0))
    {
      a4.n128_f64[0] = v5;
    }

    else if (v16 <= 0.0)
    {
      a4.n128_f64[0] = v5;
    }

    else
    {
      a4.n128_f64[0] = v16;
    }
  }

  v24 = a2(a1, v19, a4);
  if (v22 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v22;
  }

  if (v22 <= 0.0)
  {
    v25 = v24;
  }

  if (v24 >= v21)
  {
    return v25;
  }

  else
  {
    return v21;
  }
}

id sub_1E3C8BDFC(id result, id a2)
{
  v3 = result;
  if (result)
  {
    if (result == a2)
    {
      return result;
    }
  }

  else if (!a2)
  {
    return result;
  }

  result = [v2 vui:result addSubview:a2 oldView:?];
  if (v3)
  {

    return [v2 vui_setNeedsLayout];
  }

  return result;
}

uint64_t UIView.vuiEnableGlassBackground(isEnabled:tint:type:flexible:)(char a1, void *a2, uint64_t a3, int a4)
{
  v43 = a4;
  v41 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36130);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_1E4200224();
  OUTLINED_FUNCTION_0_10();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = sub_1E4200254();
  OUTLINED_FUNCTION_0_10();
  v42 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v39 - v26;
  result = sub_1E39DFFC8();
  if (result)
  {
    if (a1)
    {
      v29 = 1;
      switch(a3)
      {
        case 0:
          sub_1E42001F4();
          goto LABEL_9;
        case 1:
          sub_1E4200214();
          goto LABEL_9;
        case 2:
          sub_1E42001E4();
          goto LABEL_9;
        case 3:
          sub_1E4200204();
LABEL_9:
          v29 = 0;
          goto LABEL_10;
        case 4:
LABEL_10:
          __swift_storeEnumTagSinglePayload(v8, v29, 1, v9);
          if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
          {
            sub_1E3C8C2BC(v8);
            sub_1E42001F4();
            sub_1E4200264();
          }

          else
          {
            v30 = v40;
            (*(v40 + 32))(v16, v8, v9);
            (*(v30 + 16))(v13, v16, v9);
            sub_1E4200264();
            (*(v30 + 8))(v16, v9);
          }

          v31 = v42;
          v32 = *(v42 + 32);
          v32(v27, v24, v17);
          if (v41)
          {
            v33 = v41;
            sub_1E4200234();

            v34 = OUTLINED_FUNCTION_6_130();
            v35(v34);
            v32(v27, v21, v17);
          }

          if (v43)
          {
            sub_1E4200244();
            v36 = OUTLINED_FUNCTION_6_130();
            v37(v36);
            v32(v27, v21, v17);
          }

          *(&v45 + 1) = v17;
          v46 = MEMORY[0x1E69DC388];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
          (*(v31 + 16))(boxed_opaque_existential_1, v27, v17);
          sub_1E4206EB4();
          result = (*(v31 + 8))(v27, v17);
          break;
        default:
          *&v44 = a3;
          result = sub_1E4207A24();
          __break(1u);
          break;
      }
    }

    else
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      return sub_1E4206EB4();
    }
  }

  return result;
}

uint64_t sub_1E3C8C2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E3C8C324(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, int a6)
{
  v11 = a4;
  v12 = a1;
  UIView.vuiEnableGlassBackground(isEnabled:tint:type:flexible:)(a3, a4, a5, a6);
}

void sub_1E3C8C3B0(void *a1, void *a2, uint64_t (*a3)(uint64_t result), uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = 2;
  if (a2)
  {
    v16 = 3;
  }

  if (a1)
  {
    v17 = v16;
  }

  else
  {
    v17 = a2 != 0;
  }

  type metadata accessor for TimingCurveParameter();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v17;
  OUTLINED_FUNCTION_3_0();
  v19 = v18[4];
  v18[4] = a1;
  v20 = a1;

  OUTLINED_FUNCTION_3_0();
  v21 = v18[3];
  v18[3] = a2;
  v22 = a2;

  v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v18 timingParameters:a7];
  v31 = a3;
  v32 = a4;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1E378AEA4;
  v30 = &block_descriptor_84;
  v24 = _Block_copy(&v27);

  [v23 addAnimations:v24 delayFactor:a8];
  _Block_release(v24);
  v25 = swift_allocObject();
  *(v25 + 16) = a5;
  *(v25 + 24) = a6;
  v31 = sub_1E3C8C818;
  v32 = v25;
  v27 = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1E3C8C650;
  v30 = &block_descriptor_3_2;
  v26 = _Block_copy(&v27);
  sub_1E34AF604(a5);

  [v23 addCompletion_];
  _Block_release(v26);
  [v23 startAnimation];
}

void *sub_1E3C8C5FC(uint64_t a1)
{
  OUTLINED_FUNCTION_53_0();
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

uint64_t sub_1E3C8C650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1E3C8C818(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result == 0);
  }

  return result;
}

void sub_1E3C8C8BC()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  OUTLINED_FUNCTION_0_203();
  __break(1u);
}

void sub_1E3C8C90C(void *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v5 = v2[2];
  OUTLINED_FUNCTION_53_0();
  v6 = swift_allocObject();
  v6[4] = 0;
  v6[3] = 0;
  v6[2] = v5;
  swift_beginAccess();
  v7 = v2[3];
  OUTLINED_FUNCTION_3_0();
  v8 = v6[3];
  v6[3] = v7;
  v9 = v7;

  swift_beginAccess();
  v10 = v2[4];
  OUTLINED_FUNCTION_3_0();
  v11 = v6[4];
  v6[4] = v10;
  v12 = v10;

  a1[3] = v4;
  *a1 = v6;
}

uint64_t sub_1E3C8CAAC()
{
  sub_1E3C8CA84();
  v0 = OUTLINED_FUNCTION_53_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void type metadata accessor for UITimingCurveType()
{
  if (!qword_1ECF361A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF361A0);
    }
  }
}

uint64_t sub_1E3C8CB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_42_6();
  v5 = swift_allocObject();
  memcpy((v5 + 16), v2, 0x70uLL);
  sub_1E3C8CF20(v2, &v12);
  v6 = sub_1E4203DA4();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36280);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36288);
  v11 = (a2 + *(result + 36));
  *v11 = sub_1E3C8CF18;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v8;
  return result;
}

uint64_t sub_1E3C8CC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24[0] = a1;
  v24[1] = a3;
  v5 = sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4200EA4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v18 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E42036E4();
  (*(v14 + 16))(v18, a1, v12);
  v20 = (*(v14 + 80) + 128) & ~*(v14 + 80);
  v21 = swift_allocObject();
  memcpy((v21 + 16), a2, 0x70uLL);
  (*(v14 + 32))(v21 + v20, v18, v12);
  v27 = v19;
  v28 = sub_1E3C8D8AC;
  v29 = v21;
  v30 = 0;
  v31 = 0;
  v26 = *(a2 + 72);
  sub_1E3C8CF20(a2, v25);
  sub_1E4202274();
  sub_1E4200E84();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v11, v5);
  *&v26 = OUTLINED_FUNCTION_14_114();
  OUTLINED_FUNCTION_42_6();
  v22 = swift_allocObject();
  memcpy((v22 + 16), a2, 0x70uLL);
  sub_1E3C8CF20(a2, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362B0);
  sub_1E3C8D91C();
  sub_1E39F51D4();
  sub_1E4203524();
}

uint64_t sub_1E3C8CF58()
{
  v0 = sub_1E4201F84();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4202274();
  sub_1E4200E84();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_14_114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270);
  return sub_1E4203AA4();
}

uint64_t sub_1E3C8D098(unint64_t *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v30 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEC0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v8 = v7;
  v35 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v32 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362C0);
  OUTLINED_FUNCTION_0_10();
  v31 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v18 = v17;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362C8);
  OUTLINED_FUNCTION_0_10();
  v33 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v22 = v21;
  v23 = *a1;
  v43 = *a2;
  OUTLINED_FUNCTION_1_187();

  sub_1E39F6940(&v43, &v41);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270);
  MEMORY[0x1E690E3F0](&v39);
  v41 = *(a2 + 24);
  v42 = *(a2 + 5);
  OUTLINED_FUNCTION_6_131(*(a2 + 24));
  OUTLINED_FUNCTION_7_150(*(a2 + 5));
  sub_1E4203AA4();
  OUTLINED_FUNCTION_1_187();
  v39.n128_u64[0] = v23;
  sub_1E4203AA4();
  sub_1E37DFBC0(&v43);

  OUTLINED_FUNCTION_1_187();
  MEMORY[0x1E690E3F0](&v39, v24);
  v25 = v39.n128_f64[0];
  OUTLINED_FUNCTION_6_131(v41);
  OUTLINED_FUNCTION_7_150(v42);
  MEMORY[0x1E690E3F0](&v39, v24);
  v36 = *(a2 + 3);
  v37 = a2[64];
  v39.n128_u8[0] = v25 < v39.n128_f64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  sub_1E4203AA4();
  v39 = *(a2 + 88);
  v40 = *(a2 + 13);
  OUTLINED_FUNCTION_6_131(*(a2 + 88));
  OUTLINED_FUNCTION_7_150(*(a2 + 13));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36278);
  MEMORY[0x1E690E3F0](&v38);
  if (v38)
  {
    sub_1E42004E4();
  }

  sub_1E42005C4();
  sub_1E4207064();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v35);
  *&v36 = [objc_opt_self() mainRunLoop];
  v26 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v26);
  sub_1E3C8D9A0();
  sub_1E32752B0(&qword_1ECF362D0, &qword_1ECF362C0);
  sub_1E3782CC4();
  sub_1E4200784();
  sub_1E325F748(v30, &unk_1ECF3DB30);

  sub_1E325F748(v8, &qword_1ECF2CEC0);
  (*(v32 + 8))(v13, v35);
  (*(v31 + 8))(v18, v14);
  OUTLINED_FUNCTION_42_6();
  v27 = swift_allocObject();
  memcpy((v27 + 16), a2, 0x70uLL);
  sub_1E3C8CF20(a2, &v36);
  sub_1E32752B0(&qword_1ECF362D8, &qword_1ECF362C8);
  v28 = sub_1E4200844();

  (*(v33 + 8))(v22, v34);
  OUTLINED_FUNCTION_6_131(v39);
  OUTLINED_FUNCTION_7_150(v40);
  v38 = v28;
  return sub_1E4203AA4();
}

uint64_t sub_1E3C8D71C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E3C8D75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3C8D7C8()
{
  result = qword_1ECF36290;
  if (!qword_1ECF36290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36288);
    sub_1E32752B0(&qword_1ECF36298, &qword_1ECF36280);
    sub_1E32752B0(&qword_1ECF362A0, &qword_1ECF362A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36290);
  }

  return result;
}

uint64_t sub_1E3C8D8AC()
{
  sub_1E4200EA4();

  return sub_1E3C8CF58();
}

unint64_t sub_1E3C8D91C()
{
  result = qword_1ECF362B8;
  if (!qword_1ECF362B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF362B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF362B8);
  }

  return result;
}

unint64_t sub_1E3C8D9A0()
{
  result = qword_1EE23AD08;
  if (!qword_1EE23AD08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD08);
  }

  return result;
}

uint64_t objectdestroyTm_31()
{

  OUTLINED_FUNCTION_42_6();

  return swift_deallocObject();
}

void sub_1E3C8DA60(double *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270);
  OUTLINED_FUNCTION_16_99();
  if (v2 == v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    OUTLINED_FUNCTION_2_155();
  }
}

uint64_t sub_1E3C8DAF4()
{
  type metadata accessor for LibEpisodeListCellOverlayLayout();
  result = sub_1E3E61338();
  qword_1ECF71560 = result;
  return result;
}

uint64_t *sub_1E3C8DB28()
{
  if (qword_1EE2A2E00 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71560;
}

uint64_t sub_1E3C8DB78()
{
  type metadata accessor for LibDescriptiveAlertLayout();
  result = sub_1E3BE8310();
  qword_1ECF71568 = result;
  return result;
}

uint64_t *sub_1E3C8DBAC()
{
  if (qword_1EE2A2E18 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71568;
}

uint64_t sub_1E3C8DBFC()
{
  type metadata accessor for LibCollectionHeaderViewLayout();
  result = sub_1E3A9C32C();
  qword_1EE2AB0E8 = result;
  return result;
}

uint64_t *sub_1E3C8DC30()
{
  if (qword_1EE2A2E08 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB0E8;
}

uint64_t sub_1E3C8DC80()
{
  type metadata accessor for LibListLockupViewLayout();
  result = sub_1E3DA1F00();
  qword_1EE2AB110 = result;
  return result;
}

uint64_t *sub_1E3C8DCB4()
{
  if (qword_1EE2A2E50 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB110;
}

uint64_t sub_1E3C8DD04()
{
  type metadata accessor for LibCollectionViewLayout();
  result = sub_1E3D46ACC(21);
  qword_1EE28C2A8 = result;
  return result;
}

uint64_t sub_1E3C8DD3C()
{
  type metadata accessor for LibListCellLayout();
  result = sub_1E374EE68(2);
  qword_1ECF71570 = result;
  return result;
}

uint64_t *sub_1E3C8DD74()
{
  if (qword_1EE2A2E20 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71570;
}

uint64_t sub_1E3C8DDC4()
{
  type metadata accessor for LibListCellLayout();
  result = sub_1E374EE68(0);
  qword_1ECF71578 = result;
  return result;
}

uint64_t *sub_1E3C8DDFC()
{
  if (qword_1EE2A2E38 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71578;
}

uint64_t sub_1E3C8DE4C()
{
  if (sub_1E39DFFC0())
  {
    type metadata accessor for LibraryLockupLayout();
    result = sub_1E3F6D980();
  }

  else
  {
    type metadata accessor for CardCollectionViewCellLayout();
    result = sub_1E3D2E424(18);
  }

  qword_1EE2AB108 = result;
  return result;
}

uint64_t *sub_1E3C8DEA0()
{
  if (qword_1EE2A2E48 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB108;
}

uint64_t sub_1E3C8DEF0()
{
  type metadata accessor for CardCollectionViewCellLayout();
  v0 = sub_1E3D2E424(18);
  v1 = (*(*v0 + 1824))();
  sub_1E3952C58();
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v16 = 0;
  (*(*v1 + 160))(v15);

  v7 = (*(*v0 + 1848))(v6);
  sub_1E3952C58();
  v13[0] = v8;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v14 = 0;
  (*(*v7 + 160))(v13);

  qword_1EE2AB100 = v0;
  return result;
}

uint64_t *sub_1E3C8E044()
{
  if (qword_1EE2A2E40 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB100;
}

uint64_t sub_1E3C8E094()
{
  if (sub_1E39DFFC0())
  {
    v0 = 4;
  }

  else
  {
    v0 = 3;
  }

  type metadata accessor for LibCollectionViewLayout();
  result = sub_1E3D46ACC(v0);
  qword_1EE28C2B8 = result;
  return result;
}

uint64_t sub_1E3C8E0DC()
{
  type metadata accessor for MonogramLockupCellLayout();
  result = sub_1E38EF9E8(1, 2);
  qword_1ECF71580 = result;
  return result;
}

uint64_t *sub_1E3C8E118()
{
  if (qword_1EE2A2E10 != -1)
  {
    swift_once();
  }

  return &qword_1ECF71580;
}

uint64_t sub_1E3C8E168()
{
  type metadata accessor for ContextMenuPreviewItemViewLayout();
  result = sub_1E3E08A24();
  qword_1EE2AB0F0 = result;
  return result;
}

uint64_t *sub_1E3C8E1A4()
{
  if (qword_1EE2A2E28 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB0F0;
}

uint64_t sub_1E3C8E1F4()
{
  type metadata accessor for NavigationBarLayout();
  result = sub_1E4117D84();
  qword_1EE2AB0F8 = result;
  return result;
}

uint64_t *sub_1E3C8E228()
{
  if (qword_1EE2A2E30 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AB0F8;
}

uint64_t sub_1E3C8E278()
{
  if (sub_1E373F6E0())
  {
    goto LABEL_2;
  }

  if (sub_1E373F6E0())
  {
    if (_MergedGlobals_222 == -1)
    {
    }

LABEL_10:
    swift_once();
  }

  if (sub_1E373F6E0() & 1) != 0 || (sub_1E373F6E0())
  {
LABEL_2:
    if (qword_1EE28C2B0 == -1)
    {
    }

    goto LABEL_10;
  }

  type metadata accessor for ViewLayout();
  return sub_1E3C2F968();
}

uint64_t sub_1E3C8E374(uint64_t a1, uint64_t *a2, __int16 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  if (a2)
  {

    sub_1E3C8E8A4(a1, a2, a3 & 0x101, v11);
    sub_1E32CE024(v11, v8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362F0);
    sub_1E3C8E58C();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v12, &qword_1ECF362F0);
    OUTLINED_FUNCTION_4_159();
    sub_1E4201F44();

    return sub_1E325F6F0(v11, &qword_1ECF362E8);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362F0);
    OUTLINED_FUNCTION_2();
    (*(v15 + 16))(v8, a1, v14);
    swift_storeEnumTagMultiPayload();
    sub_1E3C8E58C();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v16, &qword_1ECF362F0);
    OUTLINED_FUNCTION_4_159();
    return sub_1E4201F44();
  }
}

unint64_t sub_1E3C8E58C()
{
  result = qword_1EE289998;
  if (!qword_1EE289998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF362E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF362F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36300);
    sub_1E3C8E6C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289270, &qword_1ECF36318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289998);
  }

  return result;
}

unint64_t sub_1E3C8E6C4()
{
  result = qword_1EE2895D0;
  if (!qword_1EE2895D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36300);
    sub_1E3C8E77C();
    sub_1E32752B0(&qword_1EE2887A8, &qword_1ECF36310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895D0);
  }

  return result;
}

unint64_t sub_1E3C8E77C()
{
  result = qword_1EE289948;
  if (!qword_1EE289948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36308);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF362F0);
    sub_1E32752B0(&qword_1EE2889B0, &qword_1ECF362F0);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289948);
  }

  return result;
}

uint64_t sub_1E3C8E8A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a1;
  v96 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36300);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v88 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362F8);
  OUTLINED_FUNCTION_3_6(v10, &v109);
  v94 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v88 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  v18 = sub_1E4202A94();
  v19 = OUTLINED_FUNCTION_3_6(v18, &v108);
  v89 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  OUTLINED_FUNCTION_13();
  v29 = COERCE_DOUBLE((*(v28 + 1272))());
  v92 = (v30 & 1) == 0 && v29 > 0.0;
  v31 = 0.0;
  if (a3)
  {
    OUTLINED_FUNCTION_47_0();
    (*(v32 + 552))(v99);
    if ((v100 & 1) == 0)
    {
      v31 = sub_1E3952BE8(v99[0], v99[1], v99[2], v99[3]);
    }
  }

  OUTLINED_FUNCTION_47_0();
  (*(v33 + 1848))(v101);
  if (v102)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = v101[0];
  }

  OUTLINED_FUNCTION_47_0();
  v91 = (*(v35 + 576))();
  v36 = *a2;
  if ((a3 & 0x100) != 0)
  {
    v37 = (*(v36 + 864))();
    if (v37)
    {
      goto LABEL_14;
    }

    v36 = *a2;
  }

  v37 = (*(v36 + 672))();
LABEL_14:
  OUTLINED_FUNCTION_47_0();
  v39 = (*(v38 + 2112))();
  if (v39)
  {
    v40 = v39;
    OUTLINED_FUNCTION_47_0();
    v42 = (*(v41 + 2160))();
    if (v42 != 11)
    {
      sub_1E3E3B50C(v42);
      if ((v43 & 1) == 0)
      {
        v44 = sub_1E4202A04();

        v40 = v44;
      }
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_47_0();
  v103 = COERCE_DOUBLE((*(v45 + 2136))());
  LOBYTE(v104) = v46 & 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E3A1F10C();
  sub_1E4149AF0(v47, &v97);
  if (v98)
  {
    OUTLINED_FUNCTION_47_0();
    v49 = (*(v48 + 2064))();
    if (v49 == 27)
    {
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v90);
LABEL_24:
      sub_1E325F6F0(v17, &qword_1ECF2DEE8);
      v40 = 0;
      goto LABEL_27;
    }

    sub_1E3E3B33C(v49, v17);
    v55 = v90;
    if (__swift_getEnumTagSinglePayload(v17, 1, v90) == 1)
    {
      goto LABEL_24;
    }

    (*(v89 + 32))(v88, v17, v55);
    sub_1E42028E4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
    OUTLINED_FUNCTION_13();
    v86 = (*(v85 + 2160))();
    if (v86 != 11)
    {
      sub_1E3E3B50C(v86);
    }

    v87 = v88;
    v40 = sub_1E42029D4();
    sub_1E325F6F0(v24, &qword_1ECF335F8);
    (*(v89 + 8))(v87, v55);
  }

  else
  {
    OUTLINED_FUNCTION_47_0();
    v54 = (*(v53 + 2160))();
    if (v54 != 11)
    {
      sub_1E3E3B50C(v54);
    }

    sub_1E42028E4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    v40 = sub_1E42029B4();
    sub_1E325F6F0(v27, &qword_1ECF335F8);
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362F0);
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v60, &qword_1ECF362F0);
  sub_1E39B9138();
  KeyPath = swift_getKeyPath();
  v62 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36308) + 36)];
  *v62 = KeyPath;
  v62[1] = v40;
  v63 = *(*a2 + 2184);
  v64 = &v9[*(v6 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36310);

  v63(v65);
  *v64 = swift_getKeyPath();
  (*(*a2 + 2016))();
  v66 = sub_1E3C8E6C4();
  sub_1E39B9610();
  sub_1E325F6F0(v9, &qword_1ECF36300);
  OUTLINED_FUNCTION_13();
  v68 = (*(v67 + 1824))();
  v103 = *&v6;
  v104 = *&v66;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v96;
  v71 = v95;
  sub_1E391F7FC(v68, v91 & 1, v92, v95, OpaqueTypeConformance2, v34, v31);

  (*(v94 + 8))(v14, v71);
  v72 = sub_1E4203DA4();
  v74 = v73;
  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF362E8) + 36);
  v76 = (*(*a2 + 600))();
  OUTLINED_FUNCTION_13();
  (*(v77 + 552))(&v103);
  v78 = 0.0;
  if ((v107 & 1) == 0)
  {
    v78 = sub_1E3952BE8(v103, v104, v105, v106);
  }

  sub_1E3C8F304(v76, v70 + v75, v78);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36318);
  v80 = (v70 + v75 + *(result + 36));
  *v80 = v72;
  v80[1] = v74;
  return result;
}

uint64_t sub_1E3C8F304@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v38 - v8);
  if (a1)
  {
    v10 = a1;
    if ([v10 shadowColor])
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    if (*(&v40 + 1))
    {
      sub_1E3755B54();
      if (swift_dynamicCast())
      {
        v15 = v38[1];
LABEL_13:
        [v10 shadowBlurRadius];
        v18 = v17;
        [v10 shadowOffset];
        v20 = v19;
        [v10 shadowOffset];
        v22 = v21;
        v23 = *(sub_1E4201534() + 20);
        v24 = *MEMORY[0x1E697F468];
        sub_1E4201C44();
        OUTLINED_FUNCTION_2();
        (*(v25 + 104))(v9 + v23, v24);
        *v9 = a3;
        v9[1] = a3;
        v26 = v15;
        v27 = sub_1E4203644();
        v28 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36330) + 36));
        *v28 = v27;
        v28[1] = v18;
        v28[2] = v20;
        v28[3] = v22;
        LOBYTE(v27) = sub_1E4202734();
        sub_1E4200A54();
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = v9 + *(v6 + 36);
        *v37 = v27;
        *(v37 + 1) = v30;
        *(v37 + 2) = v32;
        *(v37 + 3) = v34;
        *(v37 + 4) = v36;
        v37[40] = 0;
        sub_1E3C8F8E0(v9, a2);
        return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
      }
    }

    else
    {
      sub_1E325F6F0(v41, &unk_1ECF296E0);
    }

    v16 = [objc_opt_self() blackColor];
    v15 = [v16 colorWithAlphaComponent_];

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

uint64_t sub_1E3C8F5EC(uint64_t a1)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E3C8E374(a1, *v1, v2 | *(v1 + 8));
}

uint64_t sub_1E3C8F60C(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  return MEMORY[0x1E690DE70](&v6, a4, &type metadata for ImageLayoutModifier, a5);
}

uint64_t sub_1E3C8F668(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 10))
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

uint64_t sub_1E3C8F6BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E3C8F720()
{
  result = qword_1EE288F28;
  if (!qword_1EE288F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36320);
    sub_1E3C8E58C();
    sub_1E32752B0(&qword_1EE2889B0, &qword_1ECF362F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F28);
  }

  return result;
}

unint64_t sub_1E3C8F7D8()
{
  result = qword_1EE274480;
  if (!qword_1EE274480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE274480);
  }

  return result;
}

uint64_t sub_1E3C8F850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3BD4AAC(a1, &v5 - v3);
  return sub_1E4201914();
}

uint64_t sub_1E3C8F8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C8F950()
{
  type metadata accessor for ViewLayout();
  v0 = sub_1E3C2F968();
  *&v14[0] = 0x4066800000000000;
  BYTE8(v14[0]) = 0;
  *&v38 = 0x4066800000000000;
  BYTE8(v38) = 0;
  v1 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v33[0] = v35;
  BYTE8(v33[0]) = BYTE8(v35);
  sub_1E3C3DE00(v1);
  *&v27 = v30;
  BYTE8(v27) = BYTE8(v30);
  sub_1E3C3DE00(v1);
  *&v21 = v24;
  BYTE8(v21) = BYTE8(v24);
  sub_1E3C3DE00(v1);
  *&v15 = v18;
  BYTE8(v15) = BYTE8(v18);
  OUTLINED_FUNCTION_4_160(v14, __src);
  memcpy(v14, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v3 = *(v2 + 1600);
  v3(v14, 6, v4 & 1, v1);
  __asm { FMOV            V0.2D, #10.0 }

  v14[0] = _Q0;
  memset(&v14[1], 0, 17);
  v38 = _Q0;
  v40 = 0;
  v39 = 0;
  v41 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  sub_1E3C3DE00(v10);
  v33[0] = v35;
  v33[1] = v36;
  v34 = v37;
  sub_1E3C3DE00(v11);
  v27 = v30;
  v28 = v31;
  v29 = v32;
  sub_1E3C3DE00(v11);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  sub_1E3C3DE00(v11);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  OUTLINED_FUNCTION_4_160(v33, __src);
  memcpy(v14, __src, 0xE9uLL);
  v12 = OUTLINED_FUNCTION_18();
  v3(v14, 1, v12 & 1, v11);
  return v0;
}

uint64_t sub_1E3C8FBB4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
}

uint64_t sub_1E3C8FC30()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = sub_1E3C8F950();
  v1 = sub_1E3C2F9A0();

  sub_1E3C8FC80();
  sub_1E3C90268();

  return v1;
}

uint64_t sub_1E3C8FC80()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1728))();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1808))(1);

  v5 = *(*v0 + 1752);
  v5(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2056))(1, 0);

  v5(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(7);

  v5(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1792))(10);

  v12 = (v5)(v11);
  v13 = sub_1E3E5F58C();
  v14 = *v13;
  v15 = *(*v12 + 680);
  v16 = *v13;
  v15(v14);

  v5(v17);
  sub_1E3952C88();
  v62[0] = v18;
  v62[1] = v19;
  v62[2] = v20;
  v62[3] = v21;
  v63 = 0;
  OUTLINED_FUNCTION_8();
  (*(v22 + 160))(v62);

  v24 = *(*v1 + 1776);
  v24(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v25 + 2056))(1, 0);

  v27 = (v24)(v26);
  v28 = *v13;
  v29 = *(*v27 + 680);
  v30 = *v13;
  v29(v28);

  v24(v31);
  OUTLINED_FUNCTION_2_1();
  (*(v32 + 1696))(17);

  v24(v33);
  OUTLINED_FUNCTION_2_1();
  (*(v34 + 1792))(10);

  v24(v35);
  sub_1E3952C88();
  v60[0] = v36;
  v60[1] = v37;
  v60[2] = v38;
  v60[3] = v39;
  v61 = 0;
  OUTLINED_FUNCTION_8();
  (*(v40 + 160))(v60);

  v42 = *(*v1 + 1800);
  v42(v41);
  OUTLINED_FUNCTION_2_1();
  (*(v43 + 2056))(4, 0);

  v45 = (v42)(v44);
  v46 = *v13;
  v47 = *(*v45 + 680);
  v48 = v46;
  v47(v46);

  v42(v49);
  OUTLINED_FUNCTION_2_1();
  (*(v50 + 1696))(19);

  v42(v51);
  sub_1E3952C88();
  v58[0] = v52;
  v58[1] = v53;
  v58[2] = v54;
  v58[3] = v55;
  v59 = 0;
  OUTLINED_FUNCTION_8();
  (*(v56 + 160))(v58);
}

uint64_t sub_1E3C90268()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1728))();
  sub_1E3C37CBC(v1, 39);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1752))();
  sub_1E3C37CBC(v3, 23);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1776))();
  sub_1E3C37CBC(v5, 15);

  OUTLINED_FUNCTION_36();
  v7 = (*(v6 + 1800))();
  sub_1E3C37CBC(v7, 4);
}

uint64_t sub_1E3C903A4()
{
  v0 = sub_1E3B20FDC();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1E3C903F8()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3C90440(char a1)
{
  result = 0x746C75736572;
  switch(a1)
  {
    case 1:
      result = 0x4449676E6F73;
      break;
    case 2:
    case 3:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C904C4(unsigned __int8 a1, char a2)
{
  v2 = 0x746C75736572;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746C75736572;
  switch(v4)
  {
    case 1:
      v5 = 0x4449676E6F73;
      break;
    case 2:
      v5 = 0x7473696C79616C70;
      v3 = 0xEA00000000004449;
      break;
    case 3:
      v5 = 0x7473696C79616C70;
      v3 = 0xED0000656C746954;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x4449676E6F73;
      break;
    case 2:
      v2 = 0x7473696C79616C70;
      v6 = 0xEA00000000004449;
      break;
    case 3:
      v2 = 0x7473696C79616C70;
      v6 = 0xED0000656C746954;
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

uint64_t sub_1E3C90624()
{
  sub_1E4207B44();
  sub_1E3C90674();
  return sub_1E4207BA4();
}

uint64_t sub_1E3C90674()
{
  sub_1E4206014();
}

uint64_t sub_1E3C90728()
{
  sub_1E4207B44();
  sub_1E3C90674();
  return sub_1E4207BA4();
}

uint64_t sub_1E3C9076C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C903F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C9079C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C90440(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E3C907D0()
{
  v1 = v0;
  oslog = sub_1E41FFC94();
  v2 = sub_1E4206814();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_100();
    v13 = v4;
    *v3 = 136315138;
    v5 = *&v1[OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId + 8];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId];
      v7 = MEMORY[0x1E69E6158];
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v12[2] = 0;
    }

    v12[0] = v6;
    v12[1] = v5;
    v12[3] = v7;

    v8 = sub_1E3294FA4(v12);
    v10 = sub_1E3270FC8(v8, v9, &v13);

    *(v3 + 4) = v10;
    _os_log_impl(&dword_1E323F000, oslog, v2, "Setting playlistId to %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_51_2();
    OUTLINED_FUNCTION_6_0();
  }
}

void sub_1E3C90908()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_1E3280A90(0, &qword_1ECF28920);
  sub_1E37411B0();
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_164();
  v2 = sub_1E4206624();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    OUTLINED_FUNCTION_164();
    sub_1E4206664();
    v4 = v24;
    v3 = v25;
    v5 = v26;
    v6 = v27;
    v7 = v28;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (sub_1E42073C4() && (swift_dynamicCast(), v12 = v23, v13 = v6, v14 = v7, v23))
  {
    while (1)
    {
      if (![v12 activationState])
      {
        OUTLINED_FUNCTION_92_9();
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 keyWindow];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 rootViewController];

            if (v20)
            {
              while (1)
              {
                v21 = [v20 presentedViewController];
                if (!v21)
                {
                  break;
                }

                v22 = v21;

                v20 = v22;
              }
            }
          }
        }

        return;
      }

      v6 = v13;
      v7 = v14;
      if (v4 < 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      v15 = v6;
      v16 = v7;
      v13 = v6;
      if (!v7)
      {
        break;
      }

LABEL_15:
      v14 = (v16 - 1) & v16;
      v12 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v12)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_19;
      }

      v16 = *(v3 + 8 * v13);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_92_9();
  }
}

id sub_1E3C90BB8()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C90D00()
{
  v1 = OBJC_IVAR____TtC8VideosUI12MusicManager_pendingAddedSongs;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistSongsIDs);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v4 = v3;
  }

  v6 = v4;

  sub_1E3C99A5C(v2);
  return v6;
}

uint64_t sub_1E3C90D84(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_100();
    *v8 = 136315138;
    v9 = OUTLINED_FUNCTION_74();
    *(v8 + 4) = sub_1E3270FC8(v9, v10, v11);
    _os_log_impl(&dword_1E323F000, v6, v7, "Start observing playlist with id: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v12 = (v3 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId);
  *v12 = a1;
  v12[1] = a2;

  sub_1E3C907D0();
  OUTLINED_FUNCTION_74();

  return sub_1E3C91440();
}

void sub_1E3C90EB0()
{
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v3))
  {
    v4 = OUTLINED_FUNCTION_125_0();
    *v4 = 0;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v5, v6, v7, v8, v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI12MusicManager_playlistListenerTask))
  {

    sub_1E42064D4();
  }
}

uint64_t sub_1E3C90F90()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E42040D4();
  v0[2] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_86_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36340);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = OUTLINED_FUNCTION_107_1();
  v5 = OUTLINED_FUNCTION_98_10(v4);
  v0[6] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[7] = v6;
  *v6 = v7;
  v6[1] = sub_1E3C910A0;

  return MEMORY[0x1EEDCE630](v5);
}

uint64_t sub_1E3C910A0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3C911A4()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v2 = v0[2];
  __swift_storeEnumTagSinglePayload(v0[6], 0, 1, v2);
  v3 = OUTLINED_FUNCTION_16_0();
  sub_1E37E93E8(v3, v4, v5);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v7 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    v8 = OUTLINED_FUNCTION_27_0();
    sub_1E325F6F0(v8, v9);
    v10 = OUTLINED_FUNCTION_57();
    sub_1E325F6F0(v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_52_30();
    v13(v12);
    sub_1E42040A4();
    v14 = OUTLINED_FUNCTION_35_5();
    v15(v14);
    sub_1E325F6F0(v7, &qword_1ECF36340);
  }

  OUTLINED_FUNCTION_62_1();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1E3C912F4()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = v0[5];
  v2 = v0[2];
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  v6 = OUTLINED_FUNCTION_16_0();
  sub_1E37E93E8(v6, v7, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v10 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    v11 = OUTLINED_FUNCTION_27_0();
    sub_1E325F6F0(v11, v12);
    v13 = OUTLINED_FUNCTION_57();
    sub_1E325F6F0(v13, v14);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_52_30();
    v16(v15);
    sub_1E42040A4();
    v17 = OUTLINED_FUNCTION_35_5();
    v18(v17);
    sub_1E325F6F0(v10, &qword_1ECF36340);
  }

  OUTLINED_FUNCTION_62_1();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1E3C91440()
{
  OUTLINED_FUNCTION_156();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = OBJC_IVAR____TtC8VideosUI12MusicManager_playlistListenerTask;
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI12MusicManager_playlistListenerTask];
  if (v5)
  {

    sub_1E42064D4();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_89();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_79_14(v10);
  v11 = v0;
  v12 = OUTLINED_FUNCTION_23_7();
  *&v0[v4] = sub_1E376FE58(v12, v13, v1, v14, v5);
}

uint64_t sub_1E3C91550()
{
  OUTLINED_FUNCTION_24();
  v0[20] = v1;
  v0[21] = v2;
  v0[19] = v3;
  v4 = sub_1E42041A4();
  v0[22] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[23] = v5;
  v0[24] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E42041C4();
  v0[25] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[26] = v7;
  v0[27] = OUTLINED_FUNCTION_86_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36420);
  OUTLINED_FUNCTION_17_2(v8);
  v0[28] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E42041E4();
  v0[29] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[30] = v10;
  v0[31] = OUTLINED_FUNCTION_86_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36428);
  v0[32] = v11;
  OUTLINED_FUNCTION_17_2(v11);
  v0[33] = OUTLINED_FUNCTION_86_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36430);
  v0[34] = v12;
  OUTLINED_FUNCTION_8_0(v12);
  v0[35] = v13;
  v0[36] = OUTLINED_FUNCTION_107_1();
  v0[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36438);
  OUTLINED_FUNCTION_17_2(v14);
  v0[38] = OUTLINED_FUNCTION_107_1();
  v0[39] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36440);
  OUTLINED_FUNCTION_17_2(v15);
  v0[40] = OUTLINED_FUNCTION_107_1();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36448);
  v0[44] = v16;
  OUTLINED_FUNCTION_8_0(v16);
  v0[45] = v17;
  v0[46] = OUTLINED_FUNCTION_86_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36450);
  OUTLINED_FUNCTION_17_2(v18);
  v0[47] = OUTLINED_FUNCTION_86_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36458);
  OUTLINED_FUNCTION_17_2(v19);
  v0[48] = OUTLINED_FUNCTION_86_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36460);
  v0[49] = v20;
  OUTLINED_FUNCTION_8_0(v20);
  v0[50] = v21;
  v0[51] = OUTLINED_FUNCTION_86_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36468);
  v0[52] = v22;
  OUTLINED_FUNCTION_8_0(v22);
  v0[53] = v23;
  v0[54] = OUTLINED_FUNCTION_86_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36470);
  v0[55] = v24;
  OUTLINED_FUNCTION_17_2(v24);
  v0[56] = OUTLINED_FUNCTION_86_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36478);
  v0[57] = v25;
  OUTLINED_FUNCTION_17_2(v25);
  v0[58] = OUTLINED_FUNCTION_86_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36480);
  v0[59] = v26;
  OUTLINED_FUNCTION_8_0(v26);
  v0[60] = v27;
  v0[61] = OUTLINED_FUNCTION_86_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36488);
  v0[62] = v28;
  OUTLINED_FUNCTION_8_0(v28);
  v0[63] = v29;
  v0[64] = OUTLINED_FUNCTION_86_0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36490);
  v0[65] = v30;
  OUTLINED_FUNCTION_8_0(v30);
  v0[66] = v31;
  v0[67] = OUTLINED_FUNCTION_86_0();
  v32 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v32, v33, v34);
}

uint64_t sub_1E3C91AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_81_15();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_80();
  a16 = v18;
  v21 = v18[65];
  v18[68] = sub_1E42041F4();
  sub_1E4204154();
  KeyPath = swift_getKeyPath();

  v18[14] = sub_1E4204174();
  v18[15] = v23;
  MEMORY[0x1E690EAA0](KeyPath, v18 + 14, v21, MEMORY[0x1E6977380], MEMORY[0x1E6975510]);

  v18[69] = OBJC_IVAR____TtC8VideosUI12MusicManager_logger;

  v24 = sub_1E41FFC94();
  LOBYTE(v21) = sub_1E4206814();

  if (os_log_type_enabled(v24, v21))
  {
    v26 = v18[19];
    v25 = v18[20];
    v27 = OUTLINED_FUNCTION_6_21();
    v28 = OUTLINED_FUNCTION_100();
    a9 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1E3270FC8(v26, v25, &a9);
    OUTLINED_FUNCTION_136();
    _os_log_impl(v29, v30, v31, v32, v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  v18[70] = sub_1E4206434();
  v18[71] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_42_5();
  OUTLINED_FUNCTION_159_0();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t sub_1E3C91C78()
{
  OUTLINED_FUNCTION_24();

  sub_1E32752B0(&qword_1ECF36498, &qword_1ECF36490);
  *(v0 + 576) = sub_1E41FF544();
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C91D1C()
{
  v1 = *(v0 + 488);
  v15 = *(v0 + 480);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  v6 = *(v0 + 408);
  v7 = *(v0 + 392);
  v14 = *(v0 + 472);
  sub_1E41FF554();
  v8 = sub_1E32752B0(&qword_1ECF364A0, &qword_1ECF36468);
  MEMORY[0x1E690B1C0](v3, v8);
  (*(v4 + 8))(v2, v3);
  sub_1E32752B0(&qword_1ECF364A8, &qword_1ECF36460);
  sub_1E3C9A4CC();
  sub_1E4206554();
  (*(v5 + 8))(v6, v7);
  sub_1E32752B0(&qword_1ECF364D0, &qword_1ECF36470);
  sub_1E4207934();
  sub_1E32752B0(&qword_1ECF364D8, &qword_1ECF36478);
  sub_1E42077F4();
  MEMORY[0x1E69120F0](v14);
  OUTLINED_FUNCTION_13_8();
  sub_1E4206544();
  sub_1E42077A4();
  (*(v15 + 8))(v1, v14);
  sub_1E42077E4();
  *(v0 + 632) = *MEMORY[0x1E69772B8];
  OUTLINED_FUNCTION_40_4(&unk_1E42C8360);
  v16 = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 584) = v10;
  *v10 = v11;
  v12 = OUTLINED_FUNCTION_23_64(v10);

  return v16(v12);
}

uint64_t sub_1E3C91FE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (!v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  return result;
}

uint64_t sub_1E3C920E4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  OUTLINED_FUNCTION_23_25(v1);
  if (v3)
  {
    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 496);

    (*(v5 + 8))(v4, v6);
    v7 = OUTLINED_FUNCTION_16_0();
    v8(v7);

    OUTLINED_FUNCTION_54();

    return v9();
  }

  else
  {
    v11 = *(v0 + 312);
    (*(*(v0 + 360) + 32))(*(v0 + 368), v1, v2);
    v12 = sub_1E4204164();
    sub_1E3C93584(v12, v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF364E0);
    v13 = OUTLINED_FUNCTION_69_19(v11);
    if (v13 == 1)
    {
      sub_1E325F6F0(*(v0 + 312), &qword_1ECF36438);
      v14 = 1;
    }

    else
    {
      sub_1E4204114();
      OUTLINED_FUNCTION_5_28();
      v15 = OUTLINED_FUNCTION_16_0();
      v16(v15);
      v14 = 0;
    }

    v17 = *(v0 + 304);
    __swift_storeEnumTagSinglePayload(*(v0 + 344), v14, 1, *(v0 + 544));
    v18 = sub_1E4204164();
    sub_1E3C93584(v18, v17);

    if (OUTLINED_FUNCTION_69_19(v17) == 1)
    {
      sub_1E325F6F0(*(v0 + 304), &qword_1ECF36438);
      v19 = 0;
    }

    else
    {
      v20 = *(v0 + 256);
      v21 = *(v0 + 264);
      sub_1E4204124();
      OUTLINED_FUNCTION_5_28();
      v22 = OUTLINED_FUNCTION_16_0();
      v23(v22);
      v24 = OUTLINED_FUNCTION_123_1();
      v25(v24);
      sub_1E32752B0(&qword_1ECF364E8, &qword_1ECF36430);
      sub_1E4206194();
      v26 = *(v20 + 36);
      v27 = v21;
      sub_1E32752B0(&unk_1ECF364F0, &qword_1ECF36430);
      v85 = MEMORY[0x1E69E7CC0];
      v86 = v26;
      while (1)
      {
        sub_1E4206724();
        if (*(v27 + v26) == *(v0 + 144))
        {
          break;
        }

        v28 = *(v0 + 240);
        v29 = *(v0 + 248);
        v30 = *(v0 + 224);
        v87 = *(v0 + 200);
        v31 = sub_1E4206764();
        (*(v28 + 16))(v29);
        v31(v0 + 80, 0);
        v26 = v86;
        sub_1E4206734();
        sub_1E42041D4();
        if (__swift_getEnumTagSinglePayload(v30, 1, v87) == 1)
        {
          v32 = *(v0 + 224);
          (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
          sub_1E325F6F0(v32, &qword_1ECF36420);
        }

        else
        {
          v33 = *(v0 + 632);
          (*(*(v0 + 208) + 16))(*(v0 + 216), *(v0 + 224), *(v0 + 200));
          v34 = OUTLINED_FUNCTION_16_0();
          v36 = v35(v34);
          v37 = *(v0 + 240);
          v38 = *(v0 + 248);
          v39 = *(v0 + 232);
          if (v36 == v33)
          {
            v40 = *(v0 + 216);
            v41 = *(v0 + 192);
            v43 = *(v0 + 176);
            v42 = *(v0 + 184);
            (*(*(v0 + 208) + 96))(v40, *(v0 + 200));
            (*(v42 + 32))(v41, v40, v43);
            v44 = sub_1E4204194();
            v46 = v45;
            (*(v42 + 8))(v41, v43);
            (*(v37 + 8))(v38, v39);
            v47 = *(v0 + 224);
            v48 = *(v0 + 200);
            v49 = (*(v0 + 208) + 8);
            if (v46)
            {
              (*v49)(v47, v48);
              v55 = v85;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v55 = sub_1E3740F88(0, *(v85 + 2) + 1, 1, v85);
              }

              v57 = *(v55 + 2);
              v56 = *(v55 + 3);
              v85 = v55;
              if (v57 >= v56 >> 1)
              {
                v85 = sub_1E3740F88((v56 > 1), v57 + 1, 1, v55);
              }

              *(v85 + 2) = v57 + 1;
              v58 = &v85[16 * v57];
              *(v58 + 4) = v44;
              *(v58 + 5) = v46;
            }

            else
            {
              (*v49)(v47, v48);
            }
          }

          else
          {
            v51 = *(v0 + 216);
            v50 = *(v0 + 224);
            v53 = *(v0 + 200);
            v52 = *(v0 + 208);
            (*(v37 + 8))(*(v0 + 248), *(v0 + 232));
            v54 = *(v52 + 8);
            v54(v51, v53);
            v54(v50, v53);
          }

          v26 = v86;
        }
      }

      sub_1E325F6F0(*(v0 + 264), &qword_1ECF36428);
      v59 = OUTLINED_FUNCTION_16_0();
      v60(v59);
      v19 = v85;
    }

    *(v0 + 592) = v19;
    sub_1E37E93E8(*(v0 + 344), *(v0 + 336), &qword_1ECF36440);

    v61 = sub_1E41FFC94();
    v62 = sub_1E4206814();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v19;
      v65 = *(v0 + 328);
      v64 = *(v0 + 336);
      v66 = swift_slowAlloc();
      *(v0 + 136) = swift_slowAlloc();
      *v66 = 136315394;
      sub_1E37E93E8(v64, v65, &qword_1ECF36440);
      if (OUTLINED_FUNCTION_69_19(v65) == 1)
      {
        sub_1E325F6F0(*(v0 + 328), &qword_1ECF36440);
        *(v0 + 16) = 0u;
        *(v0 + 32) = 0u;
      }

      else
      {
        *(v0 + 40) = *(v0 + 544);
        __swift_allocate_boxed_opaque_existential_1((v0 + 16));
        OUTLINED_FUNCTION_5_28();
        (*(v68 + 32))();
      }

      v69 = *(v0 + 336);
      v70 = sub_1E3294FA4(v0 + 16);
      v72 = v71;
      sub_1E325F6F0(v69, &qword_1ECF36440);
      v73 = sub_1E3270FC8(v70, v72, (v0 + 136));

      *(v66 + 4) = v73;
      *(v66 + 12) = 2080;
      if (v63)
      {
        *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
        *(v0 + 48) = v63;
      }

      else
      {
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
      }

      v74 = sub_1E3294FA4(v0 + 48);
      v76 = sub_1E3270FC8(v74, v75, (v0 + 136));

      *(v66 + 14) = v76;
      OUTLINED_FUNCTION_86_7();
      _os_log_impl(v77, v78, v79, v80, v81, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_51_2();
    }

    else
    {
      v67 = *(v0 + 336);

      sub_1E325F6F0(v67, &qword_1ECF36440);
    }

    *(v0 + 600) = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();
    v82 = OUTLINED_FUNCTION_42_5();

    return MEMORY[0x1EEE6DFA0](v82, v83, v84);
  }
}

uint64_t sub_1E3C92A7C()
{
  OUTLINED_FUNCTION_24();

  sub_1E3C9648C();

  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C92AF0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[40];
  sub_1E37E93E8(v0[43], v1, &qword_1ECF36440);
  OUTLINED_FUNCTION_23_25(v1);
  if (v2)
  {
    sub_1E325F6F0(v0[40], &qword_1ECF36440);
    v3 = 0;
    v1 = 0;
  }

  else
  {
    v3 = sub_1E42041B4();
    OUTLINED_FUNCTION_17_94();
    v4 = OUTLINED_FUNCTION_39_3();
    v5(v4);
  }

  v0[77] = v1;
  v0[76] = v3;
  v0[78] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v6 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3C92C04()
{
  OUTLINED_FUNCTION_27_2();

  v0 = OUTLINED_FUNCTION_13_8();
  sub_1E3C9639C(v0, v1);

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3C92C84()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E325F6F0(*(v0 + 344), &qword_1ECF36440);
  v1 = OUTLINED_FUNCTION_16_0();
  v2(v1);
  OUTLINED_FUNCTION_40_4(&unk_1E42C8360);
  v8 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 584) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_23_64();

  return v8(v6);
}

uint64_t sub_1E3C92D34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1E4204184();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E3C92D7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C92D90()
{
  OUTLINED_FUNCTION_24();
  sub_1E37E93E8(*(v0 + 24), *(v0 + 16), &qword_1ECF36450);
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C92DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36450);
  v4[14] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1E42063B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[15] = v6;
  v4[16] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E3C92ED4, v6, v8);
}

uint64_t sub_1E3C92ED4()
{
  OUTLINED_FUNCTION_27_2();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36488);
  v1 = sub_1E42077A4();
  v0[18] = v1;
  if (v1 < 1)
  {
    sub_1E42077D4();
    v0[21] = sub_1E42077B4();
    v13 = OUTLINED_FUNCTION_27_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    v4 = OUTLINED_FUNCTION_2_156(&unk_1ECF36500);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[22] = v14;
    *v14 = v15;
    v7 = OUTLINED_FUNCTION_31_46(v14);
  }

  else
  {
    v0[19] = sub_1E42077B4();
    v2 = OUTLINED_FUNCTION_27_0();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
    v4 = OUTLINED_FUNCTION_2_156(&unk_1ECF36500);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[20] = v5;
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_30_51(v5);
  }

  return MEMORY[0x1EEE6D8D0](v7, v8, v9, v10, v3, v4, v11, v12);
}

uint64_t sub_1E3C93048()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 120);
    v8 = *(v3 + 128);
    v9 = sub_1E3C9349C;
  }

  else
  {
    (*(v3 + 152))();
    v7 = *(v3 + 120);
    v8 = *(v3 + 128);
    v9 = sub_1E3C93288;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3C93158()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 120);
    v8 = *(v3 + 128);

    return MEMORY[0x1EEE6DFA0](sub_1E3C93510, v7, v8);
  }

  else
  {
    (*(v3 + 168))();

    OUTLINED_FUNCTION_54();

    return v9();
  }
}

uint64_t sub_1E3C93288()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = v0[14];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36448);
  if (OUTLINED_FUNCTION_69_19(v1) == 1)
  {
    sub_1E325F6F0(v1, &qword_1ECF36450);
    sub_1E42077D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);

    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_62_1();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    v15 = v0[18];
    sub_1E325F6F0(v1, &qword_1ECF36450);
    v0[18] = v15 - 1;
    if (v15 <= 1)
    {
      sub_1E42077D4();
      v0[21] = sub_1E42077B4();
      v19 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v19);
      OUTLINED_FUNCTION_2_156(&unk_1ECF36500);
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[22] = v20;
      *v20 = v21;
      OUTLINED_FUNCTION_31_46(v20);
    }

    else
    {
      v0[19] = sub_1E42077B4();
      v16 = OUTLINED_FUNCTION_27_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v16);
      OUTLINED_FUNCTION_2_156(&unk_1ECF36500);
      swift_task_alloc();
      OUTLINED_FUNCTION_33_3();
      v0[20] = v17;
      *v17 = v18;
      OUTLINED_FUNCTION_30_51();
    }

    OUTLINED_FUNCTION_62_1();

    return MEMORY[0x1EEE6D8D0](v22, v23, v24, v25, v26, v27, v28, v29);
  }
}

uint64_t sub_1E3C9349C()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 152))();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C93510()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 168))();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C93584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF364E0);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1E3C93638()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v14 + 16))(v18, Strong + OBJC_IVAR____TtC8VideosUI12MusicManager_logger, v12);

    (*(v7 + 16))(v11, v2, v5);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_6_21();
      v50 = OUTLINED_FUNCTION_100();
      *&v54 = v50;
      v51 = v23;
      *v23 = 136315138;
      v24 = sub_1E41FDF24();
      v25 = v24;
      v52 = v0;
      if (v24)
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
      }

      else
      {
        v53[1] = 0;
        v53[2] = 0;
      }

      v53[0] = v25;
      v53[3] = v24;
      v28 = sub_1E3294FA4(v53);
      v30 = v29;
      v31 = OUTLINED_FUNCTION_17_11();
      v32(v31);
      sub_1E3270FC8(v28, v30, &v54);
      OUTLINED_FUNCTION_31_4();

      *(v51 + 1) = v28;
      _os_log_impl(&dword_1E323F000, v21, v22, "Song was added by Siri. userInfo: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v14 + 8))(v18, v12);
      v0 = v52;
    }

    else
    {

      v26 = OUTLINED_FUNCTION_17_11();
      v27(v26);
      (*(v14 + 8))(v18, v12);
    }
  }

  v33 = sub_1E41FDF24();
  if (v33)
  {
    v34 = v33;
    sub_1E4207414();
    sub_1E375D7E8(v53, v34, &v54);
    sub_1E375D84C(v53);
    if (v55)
    {
      if (OUTLINED_FUNCTION_94_11())
      {
        v35 = v0;
        *&v54 = 0x7473696C79616C70;
        *(&v54 + 1) = 0xEA00000000004449;
        sub_1E4207414();
        sub_1E375D7E8(v53, v34, &v54);

        sub_1E375D84C(v53);
        if (v55)
        {
          v36 = OUTLINED_FUNCTION_94_11();
          if (v36)
          {
            v37 = 0x746C75736572;
          }

          else
          {
            v37 = 0;
          }

          if (v36)
          {
            v38 = 0xE600000000000000;
          }

          else
          {
            v38 = 0;
          }
        }

        else
        {
          sub_1E325F6F0(&v54, &unk_1ECF296E0);
          v37 = 0;
          v38 = 0;
        }

        sub_1E4206474();
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
        v43 = swift_allocObject();
        OUTLINED_FUNCTION_5_0();
        v44 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        *(v45 + 32) = 114;
        *(v45 + 40) = v43;
        *(v45 + 48) = v37;
        *(v45 + 56) = v38;
        v46 = OUTLINED_FUNCTION_23_7();
        sub_1E3797438(v46, v47, v35, v48, v49);
      }

      else
      {
      }
    }

    else
    {

      sub_1E325F6F0(&v54, &unk_1ECF296E0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C93B34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 112) = a4;
  *(v7 + 64) = a1;
  *(v7 + 72) = a5;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C93B50()
{
  OUTLINED_FUNCTION_24();
  if (*(v0 + 112) == 1)
  {
    OUTLINED_FUNCTION_5_0();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1E3C950C4();

      v3 = 0;
LABEL_9:
      **(v0 + 64) = v3;
      OUTLINED_FUNCTION_54();

      return v8();
    }

LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_5_0();
  v4 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  sub_1E4206434();
  *(v0 + 104) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v5 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C93C58()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);

  sub_1E3C95CEC();

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3C93CC4()
{
  **(v0 + 64) = 0;
  OUTLINED_FUNCTION_54();
  return v1();
}

uint64_t sub_1E3C93CEC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C93D04()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 56) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C93D7C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 48);

  *(v0 + 64) = *(v1 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistSongsIDs);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3C93DF4()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[8];
  if (v1)
  {
    v0[2] = v0[4];
    v0[3] = v0[5];
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_1E3849DF8(sub_1E39989B4, v2, v1);

    if (v3)
    {
      sub_1E3C9A1F4();
      v4 = OUTLINED_FUNCTION_206();
      OUTLINED_FUNCTION_96_12(v4, v5);
      OUTLINED_FUNCTION_54();
    }

    else
    {
      OUTLINED_FUNCTION_15_12();
    }

    return v6();
  }

  else
  {
    sub_1E41FEA14();
    v0[9] = sub_1E41FEA04();
    OUTLINED_FUNCTION_40_4(MEMORY[0x1E69D5780]);
    v12 = v7;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1E3C93F68;
    v10 = v0[4];
    v9 = v0[5];

    return v12(v10, v9);
  }
}

uint64_t sub_1E3C93F68()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (!v0)
  {

    *(v5 + 96) = v3 & 1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C94080()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v0 + 96) == 1)
  {
    sub_1E3C9A1F4();
    v1 = OUTLINED_FUNCTION_206();
    OUTLINED_FUNCTION_96_12(v1, v2);
    OUTLINED_FUNCTION_54();
  }

  else
  {
    OUTLINED_FUNCTION_15_12();
  }

  return v3();
}

uint64_t sub_1E3C94104()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C94160()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E42040F4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v4 = OUTLINED_FUNCTION_107_1();
  v1[6] = OUTLINED_FUNCTION_98_10(v4);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C94214()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  sub_1E42040E4();
  *(v0 + 112) = *MEMORY[0x1E6974F28];
  v3 = *(v2 + 104);
  *(v0 + 64) = v3;
  *(v0 + 72) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v3(v1);
  *(v0 + 80) = sub_1E3C9A248(&qword_1ECF363F8, MEMORY[0x1E6974F30]);
  OUTLINED_FUNCTION_16_0();
  v4 = sub_1E4205E84();
  *(v0 + 88) = *(v2 + 8);
  *(v0 + 96) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5 = OUTLINED_FUNCTION_27_0();
  v6(v5);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_71_24();
    v8(v7);

    OUTLINED_FUNCTION_15_12();

    return v9();
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 104) = v11;
    *v11 = v12;
    v11[1] = sub_1E3C943B8;
    v13 = *(v0 + 40);

    return MEMORY[0x1EEDCE650](v13);
  }
}

uint64_t sub_1E3C943B8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C9449C()
{
  v1 = *(v0 + 88);
  (*(v0 + 64))(*(v0 + 48), *(v0 + 112), *(v0 + 24));
  OUTLINED_FUNCTION_57();
  v2 = sub_1E4205E84();
  v3 = OUTLINED_FUNCTION_35_5();
  v1(v3);
  if (v2)
  {
    (*(v0 + 88))(*(v0 + 40), *(v0 + 24));
    v4 = OUTLINED_FUNCTION_71_24();
    v5(v4);

    OUTLINED_FUNCTION_15_12();
  }

  else
  {
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v8))
    {
      v9 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v9);
      OUTLINED_FUNCTION_86_7();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v15 = *(v0 + 88);
    v16 = *(v0 + 56);
    v17 = *(v0 + 40);
    v18 = *(v0 + 24);

    sub_1E3C9A1F4();
    OUTLINED_FUNCTION_206();
    *v19 = 2;
    swift_willThrow();
    v15(v17, v18);
    v15(v16, v18);

    OUTLINED_FUNCTION_54();
  }

  return v6();
}

uint64_t sub_1E3C94650()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E42040D4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v4 = OUTLINED_FUNCTION_107_1();
  v5 = OUTLINED_FUNCTION_98_10(v4);
  v1[6] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v1[7] = v6;
  *v6 = v7;
  v6[1] = sub_1E3C94738;

  return MEMORY[0x1EEDCE630](v5);
}

uint64_t sub_1E3C94738()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C94834()
{
  v31 = v0;
  (*(v0[4] + 16))(v0[5], v0[6], v0[3]);
  v1 = sub_1E41FFC94();
  v2 = sub_1E4206814();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[3];
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_100();
    v30 = v6;
    *v5 = 136315138;
    sub_1E3C9A248(&qword_1ECF363F0, MEMORY[0x1E6974EF8]);
    v7 = sub_1E4207944();
    v9 = v8;
    v10 = OUTLINED_FUNCTION_85_12();
    v11(v10);
    v12 = sub_1E3270FC8(v7, v9, &v30);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1E323F000, v1, v2, "MusicSubscription status: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    v13 = OUTLINED_FUNCTION_85_12();
    v14(v13);
  }

  v15 = sub_1E42040A4();
  v16 = v0[6];
  if (v15)
  {
    if (sub_1E42040B4())
    {
      v4(v0[6], v0[3]);

      OUTLINED_FUNCTION_15_12();
      goto LABEL_12;
    }

    v20 = sub_1E41FFC94();
    v21 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v21))
    {
      v22 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v22);
      OUTLINED_FUNCTION_86_7();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_51_2();
    }

    v16 = v0[6];
    v18 = v0[3];

    sub_1E3C9A1F4();
    OUTLINED_FUNCTION_206();
    *v28 = 1;
  }

  else
  {
    v18 = v0[3];
    sub_1E3C9A1F4();
    OUTLINED_FUNCTION_206();
    *v19 = 0;
  }

  swift_willThrow();
  v4(v16, v18);

  OUTLINED_FUNCTION_54();
LABEL_12:

  return v17();
}

uint64_t sub_1E3C94B10()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C94B74(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C94B8C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 allowsExplicitContent];

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v6, v7, v8, v9, v5, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  if (v2)
  {
    OUTLINED_FUNCTION_15_12();

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 40) = v12;
    *v12 = v0;
    v13 = OUTLINED_FUNCTION_28_49(v12);

    return sub_1E3C93CEC(v13, v14);
  }
}

uint64_t sub_1E3C94CF8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_54();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1E3C94E10()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E3C9A1F4();
  OUTLINED_FUNCTION_206();
  *v0 = 5;
  swift_willThrow();
  OUTLINED_FUNCTION_54();

  return v1();
}

void sub_1E3C94E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  OUTLINED_FUNCTION_156();
  if (v10 >> 60 != 15)
  {
    v5 = sub_1E3280A90(0, &qword_1EE23AE00);
    v11 = OUTLINED_FUNCTION_123_1();
    sub_1E38DCD14(v11, v12);
    v13 = OUTLINED_FUNCTION_123_1();
    sub_1E38DCD14(v13, v14);
    v15 = OUTLINED_FUNCTION_123_1();
    v17 = sub_1E39FEB38(v15, v16);
    if (v17)
    {
      v18 = v17;
      v19 = type metadata accessor for ToastModel(0);
      type metadata accessor for ToastLayout();
      OUTLINED_FUNCTION_31_4();

      v20 = v18;
      sub_1E3CF0D80(v20);
      OUTLINED_FUNCTION_50();

      v33 = v5;
      v21 = v19;
      v22 = sub_1E3E8C7EC(a3, a4, v18, 0, 3, v6, v4, 0, 0, v33);
      v23 = OUTLINED_FUNCTION_123_1();
      sub_1E38DCE1C(v23, v24);

      goto LABEL_6;
    }

    v25 = OUTLINED_FUNCTION_123_1();
    sub_1E38DCE1C(v25, v26);
  }

  v27 = type metadata accessor for ToastModel(0);
  v28 = *(v7 + OBJC_IVAR____TtC8VideosUI12MusicManager_defaultArtworkSymbol);
  v29 = *(v7 + OBJC_IVAR____TtC8VideosUI12MusicManager_defaultArtworkSymbol + 8);
  type metadata accessor for ToastLayout();
  OUTLINED_FUNCTION_31_4();

  sub_1E3CF0D80(v30);
  OUTLINED_FUNCTION_50();

  v34 = v5;
  v21 = v27;
  v22 = sub_1E3E8C7EC(a3, a4, v28, v29, 0, v6, v4, 0, 0, v34);
LABEL_6:
  objc_opt_self();
  OUTLINED_FUNCTION_50();

  if ([v21 isTVApp])
  {
    v31 = [objc_opt_self() topPresentedViewController];
  }

  else
  {
    sub_1E3C90908();
  }

  v35 = v31;
  type metadata accessor for ToastPresenter();
  v32 = OUTLINED_FUNCTION_18();
  sub_1E3FDD0E8(v22, v35, 1, v32 & 1, 0, 0, 0);
}

uint64_t sub_1E3C950C4()
{
  OUTLINED_FUNCTION_156();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_89();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_79_14(v9);
  v10 = v0;
  v11 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v11, v12, v1, v13, v2);
}

uint64_t sub_1E3C95188()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363D0);
  OUTLINED_FUNCTION_17_2(v4);
  v0[7] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF184();
  v0[8] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[9] = v6;
  v0[10] = OUTLINED_FUNCTION_107_1();
  v0[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363D8);
  OUTLINED_FUNCTION_17_2(v7);
  v0[12] = OUTLINED_FUNCTION_107_1();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3C952AC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [objc_opt_self() sharedInstance];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v4 = v1;
  v5 = v0[5];
  OUTLINED_FUNCTION_23();
  v0[2] = sub_1E3741090(0xD000000000000022, v6, v4);
  v0[3] = v7;

  if (!v5)
  {
    v0[25] = 0;
    v0[26] = 0xE000000000000000;
    OUTLINED_FUNCTION_78_13(xmmword_1E42C7FC0);
    v0[29] = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();
    v1 = OUTLINED_FUNCTION_42_5();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v8 = v0[5];
  sub_1E41FEA14();
  v0[15] = sub_1E41FEA04();
  OUTLINED_FUNCTION_40_4(MEMORY[0x1E69D5788]);
  v15 = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[16] = v10;
  *v10 = v11;
  v10[1] = sub_1E3C95428;
  v12 = v0[14];
  v13 = v0[4];

  return v15(v12, v13, v8);
}

uint64_t sub_1E3C95428()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3C95560()
{
  OUTLINED_FUNCTION_134();
  sub_1E37E93E8(v1[14], v1[13], &qword_1ECF363D8);
  v2 = sub_1E41FEA94();
  v3 = OUTLINED_FUNCTION_88_3();
  if (__swift_getEnumTagSinglePayload(v3, v4, v2) == 1)
  {
    sub_1E325F6F0(v1[13], &qword_1ECF363D8);
    v5 = 0;
    v0 = 0xE000000000000000;
  }

  else
  {
    v6 = v1[11];
    sub_1E41FEA74();
    OUTLINED_FUNCTION_5_28();
    v7 = OUTLINED_FUNCTION_16_0();
    v8(v7);
    v5 = v6;
    sub_1E41FF164();
    v9 = OUTLINED_FUNCTION_74_16();
    v10(v9);
  }

  v1[17] = v5;
  v1[18] = v0;
  sub_1E37E93E8(v1[14], v1[12], &qword_1ECF363D8);
  v11 = OUTLINED_FUNCTION_88_3();
  if (__swift_getEnumTagSinglePayload(v11, v12, v2) == 1)
  {
    v13 = &qword_1ECF363D8;
    v14 = v1[12];
  }

  else
  {
    v16 = v1[7];
    v15 = v1[8];
    sub_1E41FEA74();
    OUTLINED_FUNCTION_5_28();
    v17 = OUTLINED_FUNCTION_16_0();
    v18(v17);
    sub_1E41FF174();
    v19 = OUTLINED_FUNCTION_35_5();
    v20(v19);
    sub_1E41FF254();
    OUTLINED_FUNCTION_70_20(v16);
    if (!v21)
    {
      sub_1E41FF244();
      OUTLINED_FUNCTION_17_94();
      v22 = OUTLINED_FUNCTION_39_3();
      v23(v22);
      goto LABEL_10;
    }

    v13 = &qword_1ECF363D0;
    v14 = v15;
  }

  sub_1E325F6F0(v14, v13);
  v2 = 0;
LABEL_10:
  v1[19] = v2;
  v24 = swift_task_alloc();
  v1[20] = v24;
  *v24 = v1;
  OUTLINED_FUNCTION_27_55(v24);

  return sub_1E3C98CBC();
}

uint64_t sub_1E3C957A4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v7 + 168) = v5;
  *(v7 + 176) = v6;

  v8 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E3C958A8()
{
  OUTLINED_FUNCTION_24();
  sub_1E325F6F0(*(v0 + 112), &qword_1ECF363D8);
  v1 = *(v0 + 144);
  *(v0 + 200) = *(v0 + 136);
  *(v0 + 208) = v1;
  OUTLINED_FUNCTION_78_13(*(v0 + 168));
  *(v0 + 232) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3C95940()
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[25];

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
    v5 = 0;
  }

  sub_1E3C94E90(v5, v3, v4, v2);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_159_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E3C959EC()
{
  OUTLINED_FUNCTION_134();
  sub_1E38DCE1C(*(v0 + 184), *(v0 + 192));

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C95A94()
{
  OUTLINED_FUNCTION_134();
  v2 = sub_1E41FEA94();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  sub_1E37E93E8(v1[14], v1[13], &qword_1ECF363D8);
  v6 = OUTLINED_FUNCTION_88_3();
  if (__swift_getEnumTagSinglePayload(v6, v7, v2) == 1)
  {
    sub_1E325F6F0(v1[13], &qword_1ECF363D8);
    v8 = 0;
    v0 = 0xE000000000000000;
  }

  else
  {
    v9 = v1[11];
    sub_1E41FEA74();
    OUTLINED_FUNCTION_5_28();
    v10 = OUTLINED_FUNCTION_16_0();
    v11(v10);
    v8 = v9;
    sub_1E41FF164();
    v12 = OUTLINED_FUNCTION_74_16();
    v13(v12);
  }

  v1[17] = v8;
  v1[18] = v0;
  sub_1E37E93E8(v1[14], v1[12], &qword_1ECF363D8);
  v14 = OUTLINED_FUNCTION_88_3();
  if (__swift_getEnumTagSinglePayload(v14, v15, v2) == 1)
  {
    v16 = &qword_1ECF363D8;
    v17 = v1[12];
  }

  else
  {
    v19 = v1[7];
    v18 = v1[8];
    sub_1E41FEA74();
    OUTLINED_FUNCTION_5_28();
    v20 = OUTLINED_FUNCTION_16_0();
    v21(v20);
    sub_1E41FF174();
    v22 = OUTLINED_FUNCTION_35_5();
    v23(v22);
    sub_1E41FF254();
    OUTLINED_FUNCTION_70_20(v19);
    if (!v24)
    {
      sub_1E41FF244();
      OUTLINED_FUNCTION_17_94();
      v25 = OUTLINED_FUNCTION_39_3();
      v26(v25);
      goto LABEL_10;
    }

    v16 = &qword_1ECF363D0;
    v17 = v18;
  }

  sub_1E325F6F0(v17, v16);
  v2 = 0;
LABEL_10:
  v1[19] = v2;
  v27 = swift_task_alloc();
  v1[20] = v27;
  *v27 = v1;
  OUTLINED_FUNCTION_27_55(v27);

  return sub_1E3C98CBC();
}

id sub_1E3C95CEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = objc_opt_self();
  result = [v2 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  sub_1E3741090(0xD000000000000027, 0x80000001E427BA60, result);

  if (!v1)
  {
    result = [v2 sharedInstance];
    if (result)
    {
      v5 = result;
      sub_1E3741090(0xD00000000000002ELL, 0x80000001E427BA90, result);

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  sub_1E3C991F0();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C95E20(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = OUTLINED_FUNCTION_42_48();
    v8 = sub_1E3741090(v6, v7, v5);
    v10 = v9;

    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_1E3C94E90(v11, v12, a1, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3C95EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E3280A90(0, &qword_1ECF297E8);

  OUTLINED_FUNCTION_164();
  v15 = sub_1E379796C(v5, v6, v7, a4, 1);
  v8 = [objc_allocWithZone(VUILocalizationManager) init];
  sub_1E3741090(19279, 0xE200000000000000, v8);
  v10 = v9;

  if (v10)
  {
    v11 = sub_1E4205ED4();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() vui:v11 actionWithTitle:0 style:0 handler:?];

  [v15 vui:v12 addAction:?];
  if ([objc_opt_self() isTVApp])
  {
    v13 = [objc_opt_self() topPresentedViewController];
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1E3C90908();
  if (v13)
  {
LABEL_6:
    v14 = v13;
    [v15 vui:v14 presentAlertFromPresentingController:1 animated:0 completion:?];
  }

LABEL_7:
}

id sub_1E3C960AC()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = OUTLINED_FUNCTION_42_48();
  sub_1E3741090(v3, v4, v2);

  result = [v0 sharedInstance];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = OUTLINED_FUNCTION_95_13("TV.Music.Notification.syncDisabledMessage");
  v8 = v7;

  v9 = OUTLINED_FUNCTION_16_0();
  sub_1E3C95EEC(v9, v10, v6, v8);
}

id sub_1E3C96194()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  OUTLINED_FUNCTION_23();
  sub_1E3741090(0xD00000000000002CLL, v3, v2);

  result = [v0 sharedInstance];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = OUTLINED_FUNCTION_95_13("TV.Music.Notification.subscriptionErrorMessage");
  v7 = v6;

  v8 = OUTLINED_FUNCTION_16_0();
  sub_1E3C95EEC(v8, v9, v5, v7);
}

id sub_1E3C96284(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  result = [v3 sharedInstance];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = OUTLINED_FUNCTION_42_48();
  sub_1E3741090(v6, v7, v5);

  v8 = a2;
  if (!a2)
  {
    result = [v3 sharedInstance];
    if (result)
    {
      v9 = result;
      sub_1E3741090(0xD00000000000002ELL, 0x80000001E427BA90, result);
      v8 = v10;

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:

  OUTLINED_FUNCTION_164();
  sub_1E3C95EEC(v11, v12, v13, v8);
}

void sub_1E3C9639C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId);
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1E42079A4() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  *v5 = a1;
  v5[1] = a2;

  sub_1E3C907D0();
  if (!v5[1])
  {
    v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF8);

    v8();
  }
}

void sub_1E3C9648C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistSongsIDs) = v2;

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);

  v6 = v4(v5);
  sub_1E3C97978(v6);

  if (v3)
  {
    v7 = OBJC_IVAR____TtC8VideosUI12MusicManager_pendingAddedSongs;
    OUTLINED_FUNCTION_5_0();
    v8 = *(v1 + v7);
    v9 = v8 + 56;
    v10 = 1 << *(v8 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 56);
    v29 = OBJC_IVAR____TtC8VideosUI12MusicManager_logger;
    v30 = v7;
    v13 = (v10 + 63) >> 6;
    v32 = v8;

    v15 = 0;
    v34 = 0;
    *&v16 = 136315138;
    v28 = v16;
    v31 = v3;
    v27[5] = v1;
    if (v12)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v13)
      {

        goto LABEL_17;
      }

      v12 = *(v9 + 8 * v17);
      ++v15;
      if (v12)
      {
        v15 = v17;
        do
        {
LABEL_9:
          v18 = (*(v32 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v12)))));
          v19 = v18[1];
          v33 = *v18;
          v35[0] = v33;
          v35[1] = v19;
          MEMORY[0x1EEE9AC00](v14);
          v27[2] = v35;

          v20 = v34;
          v21 = sub_1E3849DF8(sub_1E3756228, v27, v3);
          v34 = v20;
          if (v21)
          {

            v22 = sub_1E41FFC94();
            v23 = sub_1E4206814();

            if (os_log_type_enabled(v22, v23))
            {
              v24 = OUTLINED_FUNCTION_6_21();
              v25 = OUTLINED_FUNCTION_100();
              v35[0] = v25;
              *v24 = v28;
              v26 = v33;
              *(v24 + 4) = sub_1E3270FC8(v33, v19, v35);
              _os_log_impl(&dword_1E323F000, v22, v23, "removing pending song %s", v24, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v25);
              OUTLINED_FUNCTION_6_0();
              OUTLINED_FUNCTION_21_0();
            }

            else
            {

              v26 = v33;
            }

            swift_beginAccess();
            sub_1E397B708(v26, v19);
            swift_endAccess();

            v3 = v31;
          }

          v12 &= v12 - 1;
        }

        while (v12);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3C96774(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1E4206444();
  v11 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = v3;
  *(v12 + 56) = a3;

  v13 = v3;
  v14 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v14, v15, v10, v16, v12);
}

uint64_t sub_1E3C96870()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 288) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 16) = v4;
  v5 = sub_1E41FEA94();
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_8_0(v5);
  *(v0 + 48) = v6;
  *(v0 + 56) = OUTLINED_FUNCTION_86_0();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C9691C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 24);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    if (*(v0 + 288) == 1)
    {
      v3 = swift_task_alloc();
      *(v0 + 64) = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_28_49(v3);

      return sub_1E3C94B74(v4, v5);
    }

    else
    {
      v11 = swift_task_alloc();
      *(v0 + 80) = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_33_46(v11);

      return sub_1E3C94160();
    }
  }

  else
  {
    sub_1E3C9A1F4();
    *(v0 + 256) = OUTLINED_FUNCTION_206();
    *v7 = 4;
    sub_1E4206434();
    *(v0 + 264) = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();
    v8 = OUTLINED_FUNCTION_42_5();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1E3C96A88()
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

  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 80) = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_33_46(v10);

    return sub_1E3C94160();
  }
}

uint64_t sub_1E3C96BC0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 96) = v10;
    *v10 = v5;
    v10[1] = sub_1E3C96D10;

    return sub_1E3C94650();
  }
}

uint64_t sub_1E3C96D10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C96E0C()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 112) = sub_1E4206434();
  *(v0 + 120) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C96E90()
{
  OUTLINED_FUNCTION_27_2();

  v1 = OUTLINED_FUNCTION_13_8();
  sub_1E3C97970(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_28_49(v3);

  return sub_1E3C93CEC(v4, v5);
}

uint64_t sub_1E3C96F34()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C97030()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA14();
  v0[18] = sub_1E41FEA04();
  OUTLINED_FUNCTION_40_4(MEMORY[0x1E69D5790]);
  v8 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[19] = v2;
  *v2 = v3;
  v2[1] = sub_1E3C970E4;
  v4 = v0[7];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v4, v5, v6);
}

uint64_t sub_1E3C970E4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C971E4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 168) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C9725C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[4];

  v2 = OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId;
  v0[22] = OBJC_IVAR____TtC8VideosUI12MusicManager_savedSongsPlaylistId;
  v0[23] = *(v1 + v2 + 8);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C972E0()
{
  OUTLINED_FUNCTION_27_2();
  if (v0[23])
  {

    v0[29] = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();
    v3 = sub_1E3C974DC;
  }

  else
  {
    v4 = v0[4];
    v0[24] = sub_1E41FEA84();
    v0[25] = v5;
    v6 = ((*MEMORY[0x1E69E7D40] & *v4) + 240) & 0xFFFFFFFFFFFFLL | 0x38A000000000000;
    v0[26] = *((*MEMORY[0x1E69E7D40] & *v4) + 0xF0);
    v0[27] = v6;
    v0[28] = sub_1E4206424();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();
    v3 = sub_1E3C973E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, v1, v2);
}

uint64_t sub_1E3C973E4()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 208);

  v2 = OUTLINED_FUNCTION_13_8();
  v1(v2);

  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C97464()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 232) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C974DC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[22];
  v2 = v0[4];

  v0[30] = *(v2 + v1);
  v0[31] = *(v2 + v1 + 8);

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E3C97560()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E3C97BE8();

  v0 = OUTLINED_FUNCTION_27_0();
  v1(v0);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_62_1();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E3C97604()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 256);

  OUTLINED_FUNCTION_39_3();
  sub_1E3C97DFC();

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3C97688()
{
  OUTLINED_FUNCTION_27_2();

  OUTLINED_FUNCTION_39_3();
  sub_1E3C97DFC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C97700()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3C97760()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_82_12(*(v0 + 72));
  *(v0 + 280) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_204();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C977C8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_82_12(*(v0 + 88));
  *(v0 + 280) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_204();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C97830()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_82_12(*(v0 + 104));
  *(v0 + 280) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_204();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C97898()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_82_12(*(v0 + 136));
  *(v0 + 280) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_204();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C97900()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_82_12(*(v0 + 160));
  *(v0 + 280) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_204();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

void sub_1E3C97978(uint64_t a1)
{
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_1E4206A94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E41FEF94();
  sub_1E4207414();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  *(inited + 72) = a1;

  v6 = sub_1E4205CB4();
  sub_1E37E7460(v4, v1, v6, v3);
}

void sub_1E3C97A98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = [objc_opt_self() defaultCenter];
  v8 = sub_1E4206AB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  sub_1E41FEFA4();
  v10 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  *(inited + 96) = v10;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_1E41FEFB4();
  sub_1E4207414();
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = a3;
  v11 = sub_1E4205CB4();
  sub_1E37E7460(v8, v3, v11, v7);
}

void sub_1E3C97BE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = OUTLINED_FUNCTION_100();
    v26[1] = v13;
    *v12 = 136315138;
    v14 = OUTLINED_FUNCTION_123_1();
    *(v12 + 4) = sub_1E3270FC8(v14, v15, v16);
    _os_log_impl(&dword_1E323F000, v10, v11, "Song was added successfully. songId: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_89();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v1;
  v21[5] = v5;
  v21[6] = v3;
  v22 = v1;

  v23 = OUTLINED_FUNCTION_23_7();
  sub_1E376FE58(v23, v24, v9, v25, v21);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C97D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C97DA0()
{
  OUTLINED_FUNCTION_24();
  sub_1E3C950C4();
  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C97DFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E4204134();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v79[-v7];
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_74();
  sub_1E397B708(v9, v10);
  swift_endAccess();

  v80 = v3;
  v11 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  if (swift_dynamicCast())
  {
    switch(v79[7])
    {
      case 1:
        v66 = sub_1E41FFC94();
        v67 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_6_33(v67))
        {
          v68 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v68);
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v69, v70, "Error adding song: Sync Library disabled");
          OUTLINED_FUNCTION_51_2();
        }

        sub_1E3C960AC();
        goto LABEL_32;
      case 2:
        goto LABEL_6;
      case 3:
        v47 = sub_1E41FFC94();
        v48 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_104(v48))
        {
          v49 = OUTLINED_FUNCTION_125_0();
          *v49 = 0;
          OUTLINED_FUNCTION_136();
          _os_log_impl(v50, v51, v52, v53, v49, 2u);
          OUTLINED_FUNCTION_6_0();
        }

        sub_1E4206474();
        OUTLINED_FUNCTION_32_2();
        __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
        sub_1E4206434();
        v58 = v1;
        v59 = sub_1E4206424();
        v60 = swift_allocObject();
        v61 = MEMORY[0x1E69E85E0];
        v60[2] = v59;
        v60[3] = v61;
        v60[4] = v58;
        v62 = OUTLINED_FUNCTION_23_7();
        sub_1E376FE58(v62, v63, v8, v64, v65);

        goto LABEL_32;
      case 4:
        v40 = sub_1E41FFC94();
        v41 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_6_33(v41))
        {
          v42 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v42);
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v43, v44, "Error adding song: This song is not available in apple music");
          OUTLINED_FUNCTION_51_2();
        }

        v45 = [objc_opt_self() sharedInstance];
        if (!v45)
        {
          goto LABEL_35;
        }

        v26 = v45;
        v46 = "ation.SongHasRestrictedContent";
        v28 = 0xD000000000000032;
        break;
      case 5:
        v71 = sub_1E41FFC94();
        v72 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_6_33(v72))
        {
          v73 = OUTLINED_FUNCTION_125_0();
          OUTLINED_FUNCTION_9_11(v73);
          OUTLINED_FUNCTION_15_14(&dword_1E323F000, v74, v75, "Error adding song: song has an explicit content rating and the user has clean restriction");
          OUTLINED_FUNCTION_51_2();
        }

        v76 = [objc_opt_self() sharedInstance];
        if (!v76)
        {
          goto LABEL_36;
        }

        v26 = v76;
        v46 = "ation.privacyErrorMessage";
        v28 = 0xD00000000000002ELL;
        break;
      default:
        v12 = sub_1E41FFC94();
        v13 = sub_1E42067F4();
        if (OUTLINED_FUNCTION_104(v13))
        {
          v14 = OUTLINED_FUNCTION_125_0();
          *v14 = 0;
          _os_log_impl(&dword_1E323F000, v12, v13, "Error adding song: User doesn't have Music subscription", v14, 2u);
          OUTLINED_FUNCTION_21_0();
        }

        v15 = OUTLINED_FUNCTION_74();
        sub_1E3C97A90(v15, v16);
        sub_1E3C96194();
        goto LABEL_32;
    }

    v27 = v46 | 0x8000000000000000;
    goto LABEL_31;
  }

LABEL_6:

  v80 = v3;
  v17 = v3;
  if (!swift_dynamicCast())
  {
LABEL_13:

    v31 = v3;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_6_21();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v3;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1E323F000, v32, v33, "Error adding song: %@", v34, 0xCu);
      sub_1E325F6F0(v35, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v38 = OUTLINED_FUNCTION_74();
    sub_1E3C97A90(v38, v39);
    sub_1E3C96284(0, 0);
LABEL_33:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v18 = OUTLINED_FUNCTION_17_11();
  if (v19(v18) != *MEMORY[0x1E69750C0])
  {
    v29 = OUTLINED_FUNCTION_17_11();
    v30(v29);
    goto LABEL_13;
  }

  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_6_33(v21))
  {
    v22 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v22);
    OUTLINED_FUNCTION_15_14(&dword_1E323F000, v23, v24, "Error adding song: music privacy acknowledgement required");
    OUTLINED_FUNCTION_51_2();
  }

  v25 = [objc_opt_self() sharedInstance];
  if (v25)
  {
    v26 = v25;
    OUTLINED_FUNCTION_23();
    v28 = 0xD000000000000029;
LABEL_31:
    sub_1E3741090(v28, v27, v26);

    v77 = OUTLINED_FUNCTION_57();
    sub_1E3C96284(v77, v78);

LABEL_32:

    goto LABEL_33;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1E3C9844C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FF184();
  v0[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[4] = v3;
  v4 = OUTLINED_FUNCTION_107_1();
  v0[6] = OUTLINED_FUNCTION_98_10(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363D0);
  OUTLINED_FUNCTION_17_2(v5);
  v0[7] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363D8);
  OUTLINED_FUNCTION_17_2(v6);
  v0[8] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FEA94();
  v0[9] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[12] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v10 = sub_1E42063B4();
  v0[13] = v10;
  v0[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E3C985C8, v10, v9);
}

uint64_t sub_1E3C985C8()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEA14();
  v0[15] = sub_1E41FEA04();
  OUTLINED_FUNCTION_40_4(MEMORY[0x1E69D5798]);
  v7 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[16] = v2;
  *v2 = v3;
  v2[1] = sub_1E3C98680;
  v4 = v0[8];
  v5 = MEMORY[0x1E69E7CC0];

  return v7(v4, v5);
}

uint64_t sub_1E3C98680()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1E3C98C0C;
  }

  else
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1E3C987B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E3C987B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  v11 = v10[8];
  OUTLINED_FUNCTION_23_25(v11);
  if (v28)
  {

    sub_1E325F6F0(v10[8], &qword_1ECF363D8);
    OUTLINED_FUNCTION_80_11();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_159_0();

    return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
  }

  else
  {
    v22 = v10[6];
    v21 = v10[7];
    v23 = v10[3];
    v24 = v10[4];
    v25 = OUTLINED_FUNCTION_13_8();
    v26(v25);
    sub_1E41FEA74();
    sub_1E41FF174();
    v27 = *(v24 + 8);
    v10[17] = v27;
    v10[18] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v22, v23);
    sub_1E41FF254();
    OUTLINED_FUNCTION_70_20(v21);
    if (v28)
    {
      sub_1E325F6F0(v21, &qword_1ECF363D0);
      v11 = 0;
    }

    else
    {
      sub_1E41FF244();
      OUTLINED_FUNCTION_17_94();
      v29 = OUTLINED_FUNCTION_39_3();
      v30(v29);
    }

    v10[19] = v11;
    v31 = swift_task_alloc();
    v10[20] = v31;
    *v31 = v10;
    v31[1] = sub_1E3C989A8;
    OUTLINED_FUNCTION_159_0();

    return sub_1E3C98CBC();
  }
}

uint64_t sub_1E3C989A8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v8 + 168) = v6;
  *(v8 + 176) = v7;

  v9 = *(v1 + 112);
  v10 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E3C98AE4, v10, v9);
}

uint64_t sub_1E3C98AE4()
{
  v12 = v0[17];
  v1 = v0[11];
  v2 = v0[10];
  v13 = v0[9];
  v3 = v0[5];
  v4 = v0[3];

  sub_1E41FEA74();
  v5 = sub_1E41FF164();
  v7 = v6;
  v12(v3, v4);
  sub_1E3C95E20(v5, v7);

  v8 = OUTLINED_FUNCTION_13_8();
  sub_1E38DCE1C(v8, v9);
  (*(v2 + 8))(v1, v13);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_54();

  return v10();
}

uint64_t sub_1E3C98C0C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
  sub_1E325F6F0(*(v0 + 64), &qword_1ECF363D8);
  OUTLINED_FUNCTION_80_11();

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E3C98CBC()
{
  OUTLINED_FUNCTION_24();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  v1[5] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FE414();
  v1[6] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_86_0();
  v7 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C98D90()
{
  OUTLINED_FUNCTION_24();
  if (v0[3])
  {
    v1 = v0[5];
    sub_1E41FE404();
    OUTLINED_FUNCTION_23_25(v1);
    if (!v2)
    {
      (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
      v0[9] = [objc_opt_self() sharedSession];
      v6 = swift_task_alloc();
      v0[10] = v6;
      *v6 = v0;
      v6[1] = sub_1E3C98EE4;
      v7 = v0[8];

      return MEMORY[0x1EEDC6268](v7, 0);
    }

    sub_1E325F6F0(v0[5], &unk_1ECF363C0);
  }

  v3 = OUTLINED_FUNCTION_89_8();

  return v4(v3);
}

uint64_t sub_1E3C98EE4()
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_39();
  v9 = v8;
  OUTLINED_FUNCTION_37_2();
  *v10 = v9;
  v12 = *(v11 + 72);
  v13 = *v1;
  OUTLINED_FUNCTION_7();
  *v14 = v13;
  v9[11] = v0;

  if (!v0)
  {

    v9[12] = v5;
    v9[13] = v7;
  }

  OUTLINED_FUNCTION_169();
  OUTLINED_FUNCTION_159_0();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E3C99014()
{
  OUTLINED_FUNCTION_27_2();
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = OUTLINED_FUNCTION_16_0();

  return v2(v1);
}

uint64_t sub_1E3C990A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_81_15();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_80();
  a16 = v18;
  (*(v18[7] + 8))(v18[8], v18[6]);

  v21 = sub_1E41FFC94();
  v22 = sub_1E42067F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v18[11];
    v25 = v18[2];
    v24 = v18[3];
    v26 = OUTLINED_FUNCTION_6_21();
    v27 = OUTLINED_FUNCTION_100();
    a9 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1E3270FC8(v25, v24, &a9);
    OUTLINED_FUNCTION_136();
    _os_log_impl(v28, v29, v30, v31, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
    v32 = v23;
  }

  else
  {
    v32 = v18[11];
  }

  OUTLINED_FUNCTION_89_8();
  OUTLINED_FUNCTION_159_0();

  return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

void sub_1E3C991F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  if (!v7)
  {

    v18 = sub_1E41FFC94();
    v19 = sub_1E42067F4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_6_21();
      v45 = v5;
      v21 = v20;
      v22 = OUTLINED_FUNCTION_100();
      v44 = v9;
      v23 = v22;
      v46 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1E3270FC8(v13, v11, &v46);
      OUTLINED_FUNCTION_86_7();
      _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v9 = v44;
      OUTLINED_FUNCTION_6_0();
      v5 = v45;
      OUTLINED_FUNCTION_6_0();
    }
  }

  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v13;
    v33[5] = v11;
    v33[6] = v9;
    v33[7] = v7;
    v33[8] = v5;
    v33[9] = v3;
    v33[10] = v1;

    v34 = v1;

    v35 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v35, v36, v17, v37, v33);

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v38 = [objc_allocWithZone(MEMORY[0x1E69E1558]) init];
    v39 = sub_1E4205ED4();
    if (v7)
    {
      v7 = sub_1E4205ED4();
    }

    if (v3)
    {
      OUTLINED_FUNCTION_13_8();
      v40 = sub_1E4205ED4();
    }

    else
    {
      v40 = 0;
    }

    v45 = v40;
    [v38 post:v39 title:v7 body:? options:?];

    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E3C99484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v13;
  v8[8] = v14;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = OUTLINED_FUNCTION_11_1();
  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C994C0()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  type metadata accessor for LocalNotificationService();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C9959C;
  OUTLINED_FUNCTION_62_1();

  return static LocalNotificationService.deliverNotification(identifier:title:body:options:)(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E3C9959C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v10();
  }
}

uint64_t sub_1E3C996C4()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 80);

  v2 = v1;
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v11, v12, v13, v14, v7, 0xCu);
    sub_1E325F6F0(v8, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_62_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

void sub_1E3C99814()
{
  v3 = v1;
  OUTLINED_FUNCTION_156();
  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v4, v5, "Adding song to the Saved Song playlist", v6, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OBJC_IVAR____TtC8VideosUI12MusicManager_pendingAddedSongs;
  OUTLINED_FUNCTION_5_0();
  v8 = *(v3 + v7);

  v9 = OUTLINED_FUNCTION_13_8();
  v11 = sub_1E3862230(v9, v10, v8);

  if (v11)
  {

    v12 = sub_1E41FFC94();
    v13 = sub_1E42067F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_100();
      *v14 = 136315138;
      v15 = OUTLINED_FUNCTION_13_8();
      *(v14 + 4) = sub_1E3270FC8(v15, v16, v17);
      _os_log_impl(&dword_1E323F000, v12, v13, "Adding song with id %s is still pending", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();
    }
  }

  else
  {
    swift_beginAccess();

    sub_1E3277398(&v22, v2, v0);
    swift_endAccess();

    v18 = OUTLINED_FUNCTION_13_8();
    sub_1E3C96774(v18, v19, v20);
  }
}

int64_t sub_1E3C99A5C(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  result = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E3C9A0F8(result, 1);
  v1 = *v2;
  v9 = *(*v2 + 16);
  v10 = (*(*v2 + 24) >> 1) - v9;
  result = sub_1E397BFF8(v30, (*v2 + 16 * v9 + 32), v10, v5);
  if (result < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
LABEL_13:
      v17 = (v11 + 64) >> 6;
      while (1)
      {
        v18 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_33;
        }

        if (v18 >= v17)
        {
          v32 = v4;
          v33 = 0;
          goto LABEL_7;
        }

        v19 = *(v10 + 8 * v18);
        ++v4;
        if (v19)
        {
          v15 = (v19 - 1) & v19;
          v16 = __clz(__rbit64(v19)) | (v18 << 6);
          v4 = v18;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v14;
  }

  v5 = v30[0];
  if (result != v10)
  {
LABEL_7:
    result = sub_1E34AF4DC();
    *v2 = v1;
    return result;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v10 = v30[1];
  v11 = v31;
  v4 = v32;
  v28 = v31;
  if (!v33)
  {
    goto LABEL_13;
  }

  v15 = (v33 - 1) & v33;
  v16 = __clz(__rbit64(v33)) | (v32 << 6);
  v17 = (v31 + 64) >> 6;
LABEL_18:
  v20 = (*(v5 + 48) + 16 * v16);
  v22 = *v20;
  v21 = v20[1];

LABEL_19:
  v23 = *(v1 + 24);
  v29 = v23 >> 1;
  if ((v23 >> 1) < v3 + 1)
  {
    result = sub_1E3740F88((v23 > 1), v3 + 1, 1, v1);
    v1 = result;
    v29 = *(result + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v29)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v24 = (v1 + 32 + 16 * v3);
    *v24 = v22;
    v24[1] = v21;
    ++v3;
    if (!v15)
    {
      break;
    }

    v25 = v4;
LABEL_28:
    v26 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v27 = (*(v5 + 48) + ((v25 << 10) | (16 * v26)));
    v22 = *v27;
    v21 = v27[1];
  }

  while (1)
  {
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v25 >= v17)
    {
      v31 = v28;
      v32 = v4;
      v33 = 0;
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v15 = *(v10 + 8 * v25);
    ++v4;
    if (v15)
    {
      v4 = v25;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

unint64_t sub_1E3C99CAC()
{
  result = qword_1ECF36348;
  if (!qword_1ECF36348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36348);
  }

  return result;
}

unint64_t sub_1E3C99D04()
{
  result = qword_1ECF36350;
  if (!qword_1ECF36350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SATVAppSongAddedNotificationKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C99F18()
{
  OUTLINED_FUNCTION_80();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  OUTLINED_FUNCTION_159_0();

  return sub_1E3C99484(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E3C99FD8()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E3C9844C();
}

uint64_t sub_1E3C9A064()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_17(v3);

  return sub_1E3C97D88(v5, v6, v7, v8, v9, v1);
}

char *sub_1E3C9A0F8(int64_t a1, char a2)
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

    result = sub_1E3740F88(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3C9A160()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E3C95188();
}

unint64_t sub_1E3C9A1F4()
{
  result = qword_1ECF363E8;
  if (!qword_1ECF363E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF363E8);
  }

  return result;
}

uint64_t sub_1E3C9A248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3C9A298()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1E327C238;
  OUTLINED_FUNCTION_62_1();

  return sub_1E3C93B34(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1E3C9A34C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E3C96870();
}

uint64_t objectdestroy_52Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E3C9A438()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E3C91550();
}

unint64_t sub_1E3C9A4CC()
{
  result = qword_1ECF364B0;
  if (!qword_1ECF364B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36450);
    sub_1E3C9A550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF364B0);
  }

  return result;
}

unint64_t sub_1E3C9A550()
{
  result = qword_1ECF364B8;
  if (!qword_1ECF364B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36448);
    sub_1E3C9A248(&qword_1ECF364C0, MEMORY[0x1E69773E0]);
    sub_1E3C9A248(&qword_1ECF364C8, MEMORY[0x1E6977318]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF364B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_69_19(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_79_14(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = v1;
  a1[6] = v2;
}

uint64_t OUTLINED_FUNCTION_80_11()
{
}

uint64_t OUTLINED_FUNCTION_82_12@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 272) = a1;

  return sub_1E4206434();
}

uint64_t OUTLINED_FUNCTION_94_11()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_95_13@<X0>(uint64_t a1@<X8>)
{

  return sub_1E3741090(v2 + 2, (a1 - 32) | 0x8000000000000000, v1);
}

uint64_t OUTLINED_FUNCTION_96_12(uint64_t a1, _BYTE *a2)
{
  *a2 = 3;

  return swift_willThrow();
}

uint64_t sub_1E3C9A768()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_overridesUserInterfaceStyleWhenPlaying;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9A79C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_overridesUserInterfaceStyleWhenPlaying;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3C9A828()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_showsTransportControlsOnFullscreen;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9A85C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_showsTransportControlsOnFullscreen;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3C9A8E8()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateFocusOnStateChange;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9A91C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateFocusOnStateChange;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3C9A9A8()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_supportsFullScreenTransition;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9A9DC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_supportsFullScreenTransition;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1E3C9AA1C(void *a1))(uint64_t *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_supportsFullScreenTransition;
  v3[3] = v1;
  v3[4] = v4;
  swift_beginAccess();
  *(v3 + 40) = *(v1 + v4);
  return sub_1E3C9AA9C;
}

void sub_1E3C9AA9C(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32)) = *(v1 + 40);
  free(v1);
}

uint64_t sub_1E3C9AAB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_providesFullscreenTransitionUI;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9AAE4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_providesFullscreenTransitionUI;
  v4 = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v4);
}

void (*sub_1E3C9AB6C(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_providesFullscreenTransitionUI;
  OUTLINED_FUNCTION_5_0();
  *(v3 + 32) = *(v1 + v4);
  return sub_1E3C9ABE4;
}

void sub_1E3C9ABE4(uint64_t a1)
{
  v1 = *a1;
  sub_1E3C9AAE4(*(*a1 + 32));

  free(v1);
}

void *sub_1E3C9AC24()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_swipeUpView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3C9AC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_swipeUpView;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3C9ACA8()
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E3C9ACDC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3C9AE54(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_5_0();
  v3 = OUTLINED_FUNCTION_67_0();
  a2(v3);
  return OUTLINED_FUNCTION_67_0();
}

uint64_t sub_1E3C9AECC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id sub_1E3C9AF7C()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  return sub_1E3C9AFBC();
}

id sub_1E3C9AFBC()
{
  OUTLINED_FUNCTION_156();
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_overridesUserInterfaceStyleWhenPlaying] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_showsTransportControlsOnFullscreen] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateFocusOnStateChange] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_supportsFullScreenTransition] = 0;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_providesFullscreenTransitionUI] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_swipeUpView] = 0;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_fullscreenTransitionHandler);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackStateChangeHandler);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateUICompletionHandler);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_6_132();
  *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController] = v2;
  *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_hostingView] = v0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BackgroundPlaybackUIInteractionManager();
  v3 = v2;
  v4 = v0;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1E3C9B114();

  return v5;
}

uint64_t sub_1E3C9B114()
{
  v1 = v0;
  v2 = sub_1E4206C04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController);
  v7 = [v6 notificationObject];
  sub_1E4206C14();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF10C();
  v8 = sub_1E4200844();

  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_74();
  v9(v10);
  *(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackDidStartObserver) = v8;

  v11 = [v4 defaultCenter];
  v12 = [v6 notificationObject];
  sub_1E4206C14();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_1E4200844();

  v14 = OUTLINED_FUNCTION_74();
  v9(v14);
  *(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackDidStopObserver) = v13;
}

id sub_1E3C9B3A4()
{
  OUTLINED_FUNCTION_156();
  v1 = objc_allocWithZone(v0);
  return sub_1E3C9B3E4();
}

id sub_1E3C9B3E4()
{
  OUTLINED_FUNCTION_156();
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_overridesUserInterfaceStyleWhenPlaying] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_showsTransportControlsOnFullscreen] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateFocusOnStateChange] = 1;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_supportsFullScreenTransition] = 0;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_providesFullscreenTransitionUI] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_swipeUpView] = 0;
  v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState] = 0;
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_fullscreenTransitionHandler);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackStateChangeHandler);
  OUTLINED_FUNCTION_12_9(OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_updateUICompletionHandler);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_6_132();
  *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController] = v2;
  swift_unknownObjectWeakAssign();
  v3 = v2;
  result = [v0 view];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_hostingView] = result;
    v6.receiver = v1;
    v6.super_class = type metadata accessor for BackgroundPlaybackUIInteractionManager();
    v5 = objc_msgSendSuper2(&v6, sel_init);
    sub_1E3C9B114();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3C9B538()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController) player];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 state];

    if (v3)
    {
      v4 = objc_opt_self();
      v8 = v3;
      v5 = [v4 playing];
      if (v5)
      {
        v6 = v5;
        sub_1E3C9B650();
        v7 = sub_1E4206F64();

        if (v7)
        {
          sub_1E3C9B694();
        }
      }

      else
      {
      }
    }
  }
}

unint64_t sub_1E3C9B650()
{
  result = qword_1EE23B280;
  if (!qword_1EE23B280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B280);
  }

  return result;
}

void (*sub_1E3C9B694())(void)
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  v3 = OUTLINED_FUNCTION_14_0();
  *(v1 + v2) = 1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))(v3))
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_hostingView);
    if ([v4 vuiOverrideUserInterfaceStyle] != 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        v7 = [Strong vuiOverrideUserInterfaceStyle];
        v8 = v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_userInterfaceStyleToRestore;
        *v8 = v7;
        v8[8] = 0;
        [v6 vui:2 setOverrideUserInterfaceStyle:?];
      }

      else
      {
        v9 = [v4 vuiOverrideUserInterfaceStyle];
        v10 = v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_userInterfaceStyleToRestore;
        *v10 = v9;
        v10[8] = 0;
        [v4 vui:2 setOverrideUserInterfaceStyle:?];
      }
    }
  }

  OUTLINED_FUNCTION_25_0();
  v12 = (*(v11 + 424))();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_25_0();
    v15 = (*(v14 + 376))();
    v13(v15, 0);
    v16 = OUTLINED_FUNCTION_74();
    sub_1E34AF594(v16);
  }

  return OUTLINED_FUNCTION_14_115();
}

void (*sub_1E3C9B844(char a1))(void)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  v5 = OUTLINED_FUNCTION_14_0();
  *(v2 + v4) = 2;
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1A8))(v5);
  if (v6)
  {
    v7 = v6;
    OUTLINED_FUNCTION_18_1();
    v9 = (*(v8 + 376))();
    v7(v9, a1 & 1);
    sub_1E34AF594(v7);
  }

  OUTLINED_FUNCTION_18_1();
  v11 = (*(v10 + 400))();
  if (v11)
  {
    v12 = v11;
    v11(1);
    sub_1E34AF594(v12);
  }

  return sub_1E3C9B998(1, a1 & 1);
}

void (*sub_1E3C9B998(char a1, char a2))(void)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_menuGestureRecognizer);
  if (v6)
  {
    v6 = [v6 setEnabled_];
  }

  v7 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))(v6))
  {
    OUTLINED_FUNCTION_25_0();
    v8 += 47;
    v9 = *v8;
    if ((*v8)() == 1 || v9() == 2)
    {
      v10 = a1 ^ 1;
    }

    else
    {
      v10 = 0;
    }

    OUTLINED_FUNCTION_25_0();
    v12 = (*(v11 + 352))();
    if (v12)
    {
      v13 = v12;
      v14 = OUTLINED_FUNCTION_51_1();
      (*((*v7 & *v13) + 0x140))(v10 & 1, v14 & 1);
    }

    OUTLINED_FUNCTION_25_0();
    v16 = (*(v15 + 520))();
    if (v16)
    {
      v17 = v16;
      [v16 setEnabled_];
    }

    [*(v3 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController) transitionToForeground:a1 & 1 withPlaybackControls:a2 & 1 animated:1];
  }

  OUTLINED_FUNCTION_25_0();
  if ((*(v18 + 280))())
  {
    v19 = *(v3 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_backgroundMediaController);
    [v19 setNeedsFocusUpdate];
    [v19 updateFocusIfNeeded];
  }

  OUTLINED_FUNCTION_25_0();
  result = (*(v20 + 448))();
  if (result)
  {
    v22 = result;
    result();

    return sub_1E34AF594(v22);
  }

  return result;
}

void (*sub_1E3C9BC54())(void)
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  v3 = OUTLINED_FUNCTION_14_0();
  *(v1 + v2) = 1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8))(v3);
  if (v4)
  {
    v5 = v4;
    OUTLINED_FUNCTION_25_0();
    v7 = (*(v6 + 376))();
    v5(v7, 0);
    v8 = OUTLINED_FUNCTION_74();
    sub_1E34AF594(v8);
  }

  OUTLINED_FUNCTION_25_0();
  v10 = (*(v9 + 400))();
  if (v10)
  {
    v10(0);
    v11 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v11);
  }

  return OUTLINED_FUNCTION_14_115();
}

void (*sub_1E3C9BD90())(void)
{
  v1 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  OUTLINED_FUNCTION_14_0();
  *(v0 + v1) = 1;
  return sub_1E3C9B998(0, 1);
}

void (*sub_1E3C9BDE0())(void)
{
  v1 = v0;
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x178);
  v3 = v2();
  v4 = OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_playbackState;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v4) = 0;
  OUTLINED_FUNCTION_18_1();
  if (((*(v5 + 232))() & 1) != 0 && (*(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_userInterfaceStyleToRestore + 8) & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_userInterfaceStyleToRestore);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong vui:v6 setOverrideUserInterfaceStyle:?];
    }

    else
    {
      [*(v1 + OBJC_IVAR____TtC8VideosUI38BackgroundPlaybackUIInteractionManager_hostingView) vui:v6 setOverrideUserInterfaceStyle:?];
    }
  }

  OUTLINED_FUNCTION_18_1();
  v10 = (*(v9 + 424))();
  if (v10)
  {
    v11 = v10;
    v12 = v2();
    v11(v12, 0);
    sub_1E34AF594(v11);
  }

  if (v3 == 2)
  {
    OUTLINED_FUNCTION_18_1();
    v14 = (*(v13 + 400))();
    if (v14)
    {
      v14(0);
      v15 = OUTLINED_FUNCTION_67_0();
      sub_1E34AF594(v15);
    }
  }

  return OUTLINED_FUNCTION_14_115();
}

id sub_1E3C9C01C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundPlaybackUIInteractionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3C9C130()
{
  result = qword_1ECF36570;
  if (!qword_1ECF36570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF36570);
  }

  return result;
}