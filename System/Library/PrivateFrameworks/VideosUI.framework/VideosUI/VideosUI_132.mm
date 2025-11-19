_BYTE *sub_1E4126EA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E4126F6C(uint64_t a1, uint64_t a2, double *a3, void *a4)
{
  v5 = a2;
  v334 = a1;
  v6 = *a3;
  if (*a3 == 2)
  {
    v6 = 0.0;
    v7 = 0;
    Width = 0.0;
    v9 = 0.0;
  }

  else
  {
    Width = a3[1];
    v9 = a3[2];
    v7 = (*&v6 >> 16) & 1;
  }

  v333 = v7;
  if (!a2)
  {
    goto LABEL_144;
  }

  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 488);
  v12 = v5;
  v13 = v11();
  if (!v13)
  {

    goto LABEL_144;
  }

  v14 = v13;
  if (!*(v13 + 16) || (OUTLINED_FUNCTION_8(), (v16 = (*(v15 + 392))()) == 0))
  {
LABEL_141:

LABEL_144:
    result = sub_1E42076B4();
    __break(1u);
    return result;
  }

  v17 = v16;
  type metadata accessor for CanonicalBannerLayout();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {

    goto LABEL_144;
  }

  v19 = v18;
  v20 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_16_89();
  (*(v21 + 664))();
  v22 = *((*v20 & *v12) + 0x280);

  v22(v19);
  v23 = TVAppFeature.isEnabled.getter(10);
  if (v23)
  {
    v24 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x1F8);
    v25 = a4;
    v23 = v24(a4);
  }

  v331 = *&v6;
  v26 = (*(*v19 + 1912))(v23);
  v27 = v12;
  v28 = [v27 vuiTraitCollection];
  v29 = sub_1E373E010(35, v14);
  if (v29)
  {
  }

  type metadata accessor for CanonicalBannerViewCell();
  v30 = j__OUTLINED_FUNCTION_18();
  HIDWORD(v332) = sub_1E3D17C34(v26, v28, v29 != 0, v30 & 1);

  v31 = v27;
  v32 = MEMORY[0x1E69E7D40];
  v33 = v333;
  if ((v333 & 1) == 0)
  {
    v34 = v27;
    [v34 vuiBounds];
    if (CGRectGetWidth(v343) <= 0.0)
    {
    }

    else
    {
      [v34 vuiBounds];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v344.origin.x = v36;
      v344.origin.y = v38;
      v344.size.width = v40;
      v344.size.height = v42;
      Width = CGRectGetWidth(v344);
    }

    type metadata accessor for MediaShowcaseHostingView();
    v43 = sub_1E40037C8(v334);
    v31 = [v34 vuiTraitCollection];

    (*(*v19 + 2592))(v31, BYTE4(v332) & 1, Width, v9, v43);
    v33 = v333;
  }

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    sub_1E4128FF0(v27, v14, v33, BYTE4(v332) & 1, v19, v334);
    goto LABEL_103;
  }

  v315 = v17;
  if ((v332 & 0x100000000) != 0)
  {
    v44 = 2;
  }

  else
  {
    v44 = 0;
  }

  [v27 vui:v44 setOverrideUserInterfaceStyle:?];
  OUTLINED_FUNCTION_19_156();
  v46 = (*((*v32 & v45) + 0x2A8))();
  if (!v46)
  {
    type metadata accessor for CanonicalBannerInfoView();
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  v47 = v46;
  OUTLINED_FUNCTION_16_89();
  v49 = *(v48 + 264);

  v49(v50);
  v329 = v5;
  if (!sub_1E373E010(91, v14) || (OUTLINED_FUNCTION_30(), v52 = (*(v51 + 464))(), , !v52))
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_1_250();
  v54 = *(v53 + 288);

  v312 = v52;
  v54(v55);
  OUTLINED_FUNCTION_22_87();
  (*((*v32 & v56) + 0x150))(BYTE4(v332) & 1);
  v57 = 1 << *(v14 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v14 + 64);
  v60 = (v57 + 63) >> 6;

  v61 = 0;
  if (!v59)
  {
LABEL_31:
    while (1)
    {
      v5 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v5 >= v60)
      {

        v62 = 0;
        goto LABEL_39;
      }

      v59 = *(v14 + 64 + 8 * v5);
      ++v61;
      if (v59)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_139;
  }

  while (1)
  {
    v5 = v61;
LABEL_34:
    v62 = *(*(v14 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v59)))));

    if (sub_1E385050C())
    {
      break;
    }

    v59 &= v59 - 1;
    v61 = v5;
    if (!v59)
    {
      goto LABEL_31;
    }
  }

LABEL_39:
  v327 = v19;
  v64 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x248);
  v64(v63);
  v328 = v62;
  if (v62)
  {
    OUTLINED_FUNCTION_71_2();
    v66 = *(v65 + 392);

    v68 = v66(v67);

    if (v68)
    {
      type metadata accessor for TextBadgeLayout();
      OUTLINED_FUNCTION_20_2();
      v69 = swift_dynamicCastClass();
      if (v69)
      {
        goto LABEL_44;
      }
    }
  }

  v69 = 0;
LABEL_44:
  sub_1E3788E58(v69);

  v71.n128_f64[0] = v64(v70);
  v73 = nullsub_1(v71, v72);
  v74 = type metadata accessor for UIFactory();
  OUTLINED_FUNCTION_22_87();
  v75 = MEMORY[0x1E69E7D40];
  v77 = (*((*MEMORY[0x1E69E7D40] & v76) + 0x160))();
  v338 = &type metadata for BadgeViewContext;
  v339 = &off_1F5D588D0;
  aBlock = v73;
  v78 = sub_1E3280A90(0, &qword_1EE23AE80);
  v309 = v73;

  sub_1E393D92C(v328, v77, &aBlock, 0);

  v79 = &qword_1ECF296C0;
  OUTLINED_FUNCTION_29_105(v80, v81, v82, v83, v84, v85, v86, v87, v302, v305, v309, v312, v315, v318, v14, v78);
  v88 = OUTLINED_FUNCTION_10_181();
  v89(v88);
  v14 = v322;
  sub_1E373E010(43, v322);
  OUTLINED_FUNCTION_22_87();
  v91 = (*((*v75 & v90) + 0x178))();
  sub_1E3280A90(0, &qword_1EE23B360);
  v92 = OUTLINED_FUNCTION_18_143();
  sub_1E393D92C(v92, v93, v94, v95);

  OUTLINED_FUNCTION_29_105(v96, v97, v98, v99, v100, v101, v102, v103, v303, v306, v310, v313, v316, v319, v322, v325);
  OUTLINED_FUNCTION_22_87();
  v104 = OUTLINED_FUNCTION_10_181();
  v105(v104);
  sub_1E373E010(23, v14);
  OUTLINED_FUNCTION_22_87();
  v107 = (*((*v75 & v106) + 0x190))();
  sub_1E3280A90(0, &qword_1EE23AD40);
  v108 = OUTLINED_FUNCTION_18_143();
  v320 = v109;
  sub_1E393D92C(v108, v110, v111, v112);

  OUTLINED_FUNCTION_29_105(v113, v114, v115, v116, v117, v118, v119, v120, v304, v307, v311, v314, v317, v320, v323, v326);
  OUTLINED_FUNCTION_22_87();
  v121 = OUTLINED_FUNCTION_10_181();
  v122(v121);
  if (sub_1E373E010(15, v14))
  {

    sub_1E373E010(15, v14);
    OUTLINED_FUNCTION_22_87();
    (*((*v75 & v123) + 0x1A8))();
    OUTLINED_FUNCTION_6_239();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0);
    v124 = OUTLINED_FUNCTION_5_252();
    sub_1E393D92C(v124, v125, v126, v127);

    sub_1E325F748(&aBlock, &qword_1ECF296C0);
    OUTLINED_FUNCTION_22_87();
    v128 = OUTLINED_FUNCTION_10_181();
    v129(v128);
  }

  else if (sub_1E373E010(60, v14))
  {
    OUTLINED_FUNCTION_1_250();
    v130 += 53;
    v131 = *v130;
    v79 = v130;

    v131(v132);
    OUTLINED_FUNCTION_6_239();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0);
    v133 = OUTLINED_FUNCTION_5_252();
    sub_1E393D92C(v133, v134, v135, v136);
    OUTLINED_FUNCTION_38();

    sub_1E325F748(&aBlock, &qword_1ECF296C0);
    OUTLINED_FUNCTION_22_87();
    v137 = OUTLINED_FUNCTION_10_181();
    v138(v137);
  }

  if (sub_1E373E010(12, v14))
  {
    OUTLINED_FUNCTION_1_250();
    v79 = *(v139 + 448);
    if (v333)
    {
      (v79)();
    }

    else
    {

      (v79)(v141);
      v142 = OUTLINED_FUNCTION_3_280();
      sub_1E393D92C(v142, v143, v144, v145);
      OUTLINED_FUNCTION_38();

      sub_1E325F748(&aBlock, &qword_1ECF296C0);
    }

    OUTLINED_FUNCTION_16_89();
    v146 = OUTLINED_FUNCTION_10_181();
    v147(v146);
  }

  else
  {
    OUTLINED_FUNCTION_1_250();
    (*(v140 + 456))();
  }

  if (v333)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v148 + 472))();
  }

  else
  {
    sub_1E373E010(13, v14);
    OUTLINED_FUNCTION_1_250();
    (*(v149 + 472))();
    v150 = OUTLINED_FUNCTION_3_280();
    sub_1E393D92C(v150, v151, v152, v153);

    sub_1E325F748(&aBlock, &qword_1ECF296C0);
  }

  OUTLINED_FUNCTION_1_250();
  v154 = OUTLINED_FUNCTION_10_181();
  v155(v154);
  if (sub_1E373E010(27, v14))
  {
    OUTLINED_FUNCTION_1_250();
    v79 = *(v156 + 496);
    if (v333)
    {
      (v79)();
    }

    else
    {

      (v79)(v157);
      v158 = OUTLINED_FUNCTION_3_280();
      sub_1E393D92C(v158, v159, v160, v161);
      OUTLINED_FUNCTION_38();

      sub_1E325F748(&aBlock, &qword_1ECF296C0);
    }

    OUTLINED_FUNCTION_16_89();
    v162 = OUTLINED_FUNCTION_10_181();
    v163(v162);
  }

  v318 = v74;
  if (!sub_1E373E010(9, v14))
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_16_89();
  v165 = *(v164 + 520);

  v165(v166);
  v167 = OUTLINED_FUNCTION_3_280();
  sub_1E393D92C(v167, v168, v169, v170);

  sub_1E325F748(&aBlock, &qword_1ECF296C0);
  OUTLINED_FUNCTION_22_87();
  v171 = OUTLINED_FUNCTION_10_181();
  v173 = v172(v171);
  v174 = (v165)(v173);
  if (!v174)
  {
    goto LABEL_67;
  }

  v175 = v174;
  objc_opt_self();
  OUTLINED_FUNCTION_20_2();
  v176 = swift_dynamicCastObjCClass();
  if (!v176)
  {

LABEL_67:

    goto LABEL_68;
  }

  v177 = v176;
  OUTLINED_FUNCTION_4_0();
  v178 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v179 = swift_allocObject();
  swift_weakInit();

  v180 = swift_allocObject();
  v180[2] = v178;
  v180[3] = v179;
  v180[4] = v330;
  v339 = sub_1E412BB38;
  v340 = v180;
  aBlock = MEMORY[0x1E69E9820];
  v336 = 1107296256;
  v337 = sub_1E3889A38;
  v338 = &block_descriptor_169;
  v181 = _Block_copy(&aBlock);

  [v177 setSelectionHandler_];

  _Block_release(v181);

LABEL_68:
  v14 = v321;
LABEL_69:
  if (sub_1E373E010(91, v14))
  {
    OUTLINED_FUNCTION_30();
    v183 = (*(v182 + 464))();
  }

  else
  {
    v183 = 0;
  }

  type metadata accessor for CanonicalBannerFactory();
  OUTLINED_FUNCTION_1_250();
  v185 = (*(v184 + 592))();
  v186 = [v27 vuiTraitCollection];
  v187 = sub_1E412A22C(v183, v185, BYTE4(v332) & 1);

  if (!v187)
  {
    v5 = v329;
    goto LABEL_76;
  }

  v5 = v329;
  if (!(v187 >> 62))
  {

    sub_1E42079D4();
    goto LABEL_76;
  }

LABEL_139:

  sub_1E42076C4();
  OUTLINED_FUNCTION_38();

LABEL_76:
  v32 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_1_250();
  v188 = OUTLINED_FUNCTION_10_181();
  v189(v188);
  if (v333)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v190 + 616))();
  }

  else
  {
    sub_1E373E010(11, v14);
    OUTLINED_FUNCTION_19_156();
    v192 = (*((*v32 & v191) + 0x3B0))();
    OUTLINED_FUNCTION_4_274();
    OUTLINED_FUNCTION_30_89(v193, v194, v195);

    v32 = MEMORY[0x1E69E7D40];

    sub_1E325F748(&aBlock, &qword_1ECF296C0);
  }

  OUTLINED_FUNCTION_1_250();
  v196 = OUTLINED_FUNCTION_10_181();
  v197(v196);
  if (v333)
  {
    OUTLINED_FUNCTION_1_250();
    (*(v198 + 640))();
  }

  else
  {
    sub_1E373E010(3, v14);
    OUTLINED_FUNCTION_19_156();
    v200 = (*((*v32 & v199) + 0x380))();
    OUTLINED_FUNCTION_4_274();
    OUTLINED_FUNCTION_30_89(v201, v202, v203);

    v32 = MEMORY[0x1E69E7D40];

    sub_1E325F748(&aBlock, &qword_1ECF296C0);
  }

  OUTLINED_FUNCTION_1_250();
  v204 = OUTLINED_FUNCTION_10_181();
  v205(v204);
  OUTLINED_FUNCTION_19_156();
  v207 = *((*v32 & v206) + 0x2B0);
  v208 = v47;
  v207(v47);
  v209 = sub_1E373E010(93, v14);
  if (v209)
  {
    v210 = v209;
    v211 = v333;
    if (v333)
    {
      OUTLINED_FUNCTION_2_272();
      v213 = (*(v212 + 992))();
    }

    else
    {
      type metadata accessor for RolesSummaryView();
      v231 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x3E0))();
      v32 = MEMORY[0x1E69E7D40];
      sub_1E413A93C(v210, v231, v232, v233, v234, v235, v236, v237, v302, v305, v308, v312, v315, v318, v321, v324, v327, v328, v329, v330, v331, v332, v333, v334, aBlock, v336);
      v213 = v238;

      v5 = v329;
    }

    OUTLINED_FUNCTION_2_272();
    (*(v239 + 1000))(v213);

    if (v211)
    {
      goto LABEL_95;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_272();
    (*(v214 + 1000))();
    if (v333)
    {
LABEL_95:

      goto LABEL_103;
    }
  }

  v12 = [objc_allocWithZone(VUIContentMetadata) init];
  if ((*(*v334 + 552))())
  {
    v338 = &unk_1F5D7BE68;
    v339 = &off_1F5D7BC48;
    LOBYTE(aBlock) = 6;
    sub_1E3F9F164(&aBlock);

    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    if (*(&v342 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_101:
        v32 = MEMORY[0x1E69E7D40];
        goto LABEL_102;
      }

      sub_1E3744600(aBlock);
      v215 = objc_allocWithZone(VUIContentMetadata);
      v216 = OUTLINED_FUNCTION_20_2();
      v217 = sub_1E37AD294(v216);
      if (v217)
      {
        v218 = v217;

        v219 = *((*MEMORY[0x1E69E7D40] & *v208) + 0x238);
        v12 = v218;
        v220 = v219();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *&v341 = sub_1E4205F14();
        *(&v341 + 1) = v222;
        sub_1E4207414();
        sub_1E32ABF64();
        OUTLINED_FUNCTION_8();
        v224 = *(v223 + 96);

        v226 = v224(v225);

        *(inited + 96) = MEMORY[0x1E69E6370];
        *(inited + 72) = v226 & 1;
        v227 = sub_1E4205CB4();
        v228 = sub_1E412B098(v227, v12, v327, v220, v227);

        if (v228)
        {
          v229 = *((*MEMORY[0x1E69E7D40] & *v208) + 0x240);
          v230 = v228;
          v229(v228);
        }

        v5 = v329;
        goto LABEL_101;
      }

      __break(1u);
      goto LABEL_141;
    }
  }

  else
  {

    v341 = 0u;
    v342 = 0u;
  }

  sub_1E325F748(&v341, &unk_1ECF296E0);
  v32 = MEMORY[0x1E69E7D40];
LABEL_102:
  sub_1E3BD1AA4(v27, v334);

LABEL_103:

  if (*sub_1E3D0D648() == 1)
  {
    v240 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v241 = OUTLINED_FUNCTION_1_36();
    v244 = [v242 v243];
    v245 = [objc_opt_self() randomColor];
    [v244 setVuiBackgroundColor_];

    OUTLINED_FUNCTION_19_156();
    v247 = *((*v32 & v246) + 0x600);
    v248 = v244;
    v249 = OUTLINED_FUNCTION_21_125();
    v247(v249);
LABEL_114:

    goto LABEL_115;
  }

  LOBYTE(v341) = 0;
  OUTLINED_FUNCTION_8();
  (*(v250 + 776))(&aBlock, &v341, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v338)
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1E325F748(&aBlock, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_2_272();
  (*(v251 + 1440))();
  OUTLINED_FUNCTION_19_156();
  v253 = (*((*v32 & v252) + 0x598))();
  if (v254)
  {
    v255 = v253;
    v256 = v254;
    sub_1E3285D14();
    OUTLINED_FUNCTION_10_118();
    v258 = *(v257 + 272);
    v260 = v259;
    v245 = v258(v255, v256);

    v32 = MEMORY[0x1E69E7D40];

    if (v245)
    {
      if (v333)
      {
        OUTLINED_FUNCTION_2_272();
        v262 = (*(v261 + 1528))();
      }

      else
      {
        OUTLINED_FUNCTION_10_118();
        v264 = *(v263 + 264);
        v266 = v265;
        v267 = v264(v245);
        v32 = MEMORY[0x1E69E7D40];
        v262 = v267;
      }

      OUTLINED_FUNCTION_2_272();
      (*(v268 + 1536))(v262);
      goto LABEL_114;
    }
  }

LABEL_115:
  OUTLINED_FUNCTION_2_272();
  v269 += 77;
  v270 = *v269;
  v271 = v269;

  v270(v272);
  OUTLINED_FUNCTION_19_156();
  v273 = OUTLINED_FUNCTION_1_36();
  v274(v273);
  if (![objc_opt_self() isMac])
  {
    if (v331 & 1 | ((TVAppFeature.isEnabled.getter(10) & 1) == 0) || ((HIDWORD(v332) ^ 1) & 1) != 0)
    {
      goto LABEL_124;
    }

LABEL_120:
    TVAppFeature.isEnabled.getter(10);
    OUTLINED_FUNCTION_16_89();
    if (v276)
    {
      v277 = (*(v275 + 1112))();
      if (!v277)
      {
        type metadata accessor for ProductGradientView();
        OUTLINED_FUNCTION_1_36();
        v277 = sub_1E3890DAC();
      }

      v278 = v277;
      OUTLINED_FUNCTION_2_272();
      v280 = *(v279 + 1120);
      v281 = v278;
      v282 = OUTLINED_FUNCTION_21_125();
      v280(v282);
    }

    else
    {
      v287 = (*(v275 + 1064))();
      if (!v287)
      {
        v287 = [objc_allocWithZone(VUIProductUberBackgroundView) init];
      }

      v288 = v287;
      OUTLINED_FUNCTION_2_272();
      v290 = *(v289 + 1072);
      v291 = v288;
      v292 = OUTLINED_FUNCTION_21_125();
      v290(v292);
    }

    OUTLINED_FUNCTION_2_272();
    v294 = (*(v293 + 1256))();
    if (!v294)
    {
      sub_1E3280A90(0, &qword_1EE23AF70);
      v294 = sub_1E39F8768();
    }

    v295 = v294;
    if (TVAppFeature.isEnabled.getter(10))
    {
      sub_1E38D25EC();

      v296 = sub_1E38D262C();

      [v295 setMutePlaybackInBackground_];
    }

    OUTLINED_FUNCTION_2_272();
    v298 = *(v297 + 1264);
    v299 = v295;
    v298(v295);
    OUTLINED_FUNCTION_19_156();
    (*((*v32 & v300) + 0x228))(v334);

    v284 = v333;
    goto LABEL_135;
  }

  if ((v331 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_124:
  OUTLINED_FUNCTION_2_272();
  (*(v283 + 1264))(0);
  v284 = v333;
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_2_272();
    (*(v285 + 560))(0);
  }

  else
  {
    v286 = [v27 vuiContentView];
    [v286 setVuiBackgroundColor_];
  }

LABEL_135:
  if ((v284 & 1) == 0)
  {
    [v27 setNeedsLayout];
  }

  return v5;
}

void sub_1E4128FF0(void *a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v149 = a6;
  HIDWORD(v150) = a4;
  HIDWORD(v155) = a3;
  v8 = type metadata accessor for UIFactory();
  v9 = sub_1E373E010(43, a2);
  OUTLINED_FUNCTION_39();
  v10 = MEMORY[0x1E69E7D40];
  v12 = (*((*MEMORY[0x1E69E7D40] & v11) + 0x2C0))();
  sub_1E3280A90(0, &qword_1EE23B360);
  v168 = 0u;
  v169 = 0u;
  v170 = 0;
  sub_1E393D92C(v9, v12, &v168, 0);

  v13 = v8;

  sub_1E325F748(&v168, &qword_1ECF296C0);
  OUTLINED_FUNCTION_39();
  v14 = OUTLINED_FUNCTION_15_18();
  v15(v14);
  sub_1E373E010(23, a2);
  OUTLINED_FUNCTION_39();
  v17 = (*((*v10 & v16) + 0x2D8))();
  sub_1E3280A90(0, &qword_1EE23AD40);
  v168 = 0u;
  v169 = 0u;
  v170 = 0;
  v18 = OUTLINED_FUNCTION_13_193();
  v153 = v19;
  sub_1E393D92C(v18, v20, v21, v22);

  v23 = a2;

  sub_1E325F748(&v168, &qword_1ECF296C0);
  OUTLINED_FUNCTION_39();
  v24 = OUTLINED_FUNCTION_15_18();
  v25(v24);
  v156 = a2;
  if (sub_1E373E010(15, a2))
  {

    sub_1E373E010(15, a2);
    OUTLINED_FUNCTION_39();
    v27 = (*((*v10 & v26) + 0x2F0))();
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0);
    v28 = OUTLINED_FUNCTION_7_247();
    sub_1E393D92C(v28, v29, v30, v31);

    sub_1E325F748(&v168, &qword_1ECF296C0);
    OUTLINED_FUNCTION_39();
    v32 = OUTLINED_FUNCTION_15_18();
    v33(v32);
  }

  else if (sub_1E373E010(60, a2))
  {
    OUTLINED_FUNCTION_32();
    v35 = *(v34 + 752);

    v23 = a2;
    v37 = v35(v36);
    OUTLINED_FUNCTION_14_187();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0);
    v38 = OUTLINED_FUNCTION_7_247();
    sub_1E393D92C(v38, v39, v40, v41);
    OUTLINED_FUNCTION_50();

    sub_1E325F748(&v168, &qword_1ECF296C0);
    OUTLINED_FUNCTION_39();
    v42 = OUTLINED_FUNCTION_15_18();
    v43(v42);
  }

  v154 = v13;
  v44 = BYTE4(v155);
  if (sub_1E373E010(12, v23))
  {
    OUTLINED_FUNCTION_32();
    v46 = *(v45 + 776);
    v47 = a5;
    if ((v155 & 0x100000000) != 0)
    {
      v46();
    }

    else
    {

      v57 = (v46)(v56);
      OUTLINED_FUNCTION_14_187();
      v58 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v58, v59, v60, v61);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v168, &qword_1ECF296C0);
    }

    OUTLINED_FUNCTION_32();
    v62 = OUTLINED_FUNCTION_15_18();
    v63(v62);

    v23 = v156;
    if ((v155 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1E373E010(13, v23);
    OUTLINED_FUNCTION_32();
    v50 = (*(v49 + 800))();
    OUTLINED_FUNCTION_14_187();
    v51 = OUTLINED_FUNCTION_13_193();
    v55 = sub_1E393D92C(v51, v52, v53, v54);

    v23 = v156;

    sub_1E325F748(&v168, &qword_1ECF296C0);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_32();
  (*(v48 + 784))();
  v47 = a5;
  if ((v155 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  OUTLINED_FUNCTION_32();
  v55 = (*(v64 + 800))();
LABEL_13:
  OUTLINED_FUNCTION_32();
  (*(v65 + 808))(v55);
  if (sub_1E373E010(27, v23))
  {
    OUTLINED_FUNCTION_32();
    v67 = *(v66 + 824);
    if ((v155 & 0x100000000) != 0)
    {
      v67();
    }

    else
    {

      v69 = (v67)(v68);
      OUTLINED_FUNCTION_14_187();
      v70 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v70, v71, v72, v73);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v168, &qword_1ECF296C0);
    }

    OUTLINED_FUNCTION_32();
    v74 = OUTLINED_FUNCTION_15_18();
    v75(v74);

    v23 = v156;
  }

  v76 = sub_1E373E010(9, v23);
  if (v76)
  {
    if (*v76 == _TtC8VideosUI13TextViewModel)
    {
      OUTLINED_FUNCTION_32();
      v78 = *(v77 + 968);
      v79 = swift_retain_n();
      v80 = v78(v79);
      sub_1E3280A90(0, &qword_1EE23AE80);
      v168 = 0u;
      v169 = 0u;
      v170 = 0;
      v81 = OUTLINED_FUNCTION_7_247();
      sub_1E393D92C(v81, v82, v83, v84);
      OUTLINED_FUNCTION_50();

      sub_1E325F748(&v168, &qword_1ECF296C0);
      OUTLINED_FUNCTION_39();
      v85 = OUTLINED_FUNCTION_15_18();
      v87 = v86(v85);
      v88 = (*(*v47 + 2224))(v87);
      OUTLINED_FUNCTION_18();
      v89 = sub_1E3C287F4(v88);
      v90 = (*(*v88 + 2408))();
      OUTLINED_FUNCTION_39();
      v92 = *((*v10 & v91) + 0x568);
      a5 = v89;
      v93 = v90;
      v94 = v92();
      v10 = MEMORY[0x1E69E7D40];
      v23 = v156;
      sub_1E3889680(v89, v93, v94);
      OUTLINED_FUNCTION_39();
      (*((*v10 & v95) + 0x570))();

      v44 = BYTE4(v155);
    }

    else
    {
    }
  }

  v96 = sub_1E373E010(93, v23);
  if (v96)
  {
    v97 = v96;
    if (v44)
    {
      OUTLINED_FUNCTION_32();
      (*(v98 + 992))();
    }

    else
    {
      type metadata accessor for RolesSummaryView();
      OUTLINED_FUNCTION_32();
      v101 = (*(v100 + 992))();
      sub_1E413A93C(v97, v101, v102, v103, v104, v105, v106, v107, v148, v149, v150, a5, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);

      v23 = v156;
    }

    OUTLINED_FUNCTION_32();
    v108 = OUTLINED_FUNCTION_15_18();
    v109(v108);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    (*(v99 + 1000))();
  }

  if (sub_1E373E010(91, v23))
  {
    OUTLINED_FUNCTION_30();
    v111 = (*(v110 + 464))();
  }

  else
  {
    v111 = 0;
  }

  type metadata accessor for CanonicalBannerFactory();
  OUTLINED_FUNCTION_32();
  v113 = (*(v112 + 872))();
  v114 = [a1 vuiTraitCollection];
  v115 = sub_1E412A22C(v111, v113, BYTE4(v150) & 1);

  if (v115)
  {
    v116 = BYTE4(v155);
    if (v115 >> 62)
    {
      sub_1E3280A90(0, &qword_1EE23AE80);

      v117 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1EE23AE80);
      v117 = v115;
    }
  }

  else
  {
    v117 = 0;
    v116 = BYTE4(v155);
  }

  OUTLINED_FUNCTION_32();
  (*(v118 + 880))(v117);
  if (v116)
  {
    OUTLINED_FUNCTION_32();
    v120 = (*(v119 + 944))();
  }

  else
  {
    sub_1E373E010(11, v156);
    OUTLINED_FUNCTION_32();
    v122 = (*(v121 + 944))();
    v170 = 0;
    v168 = 0u;
    v169 = 0u;
    v123 = OUTLINED_FUNCTION_13_193();
    v120 = sub_1E393D92C(v123, v124, v125, v126);

    sub_1E325F748(&v168, &qword_1ECF296C0);
  }

  OUTLINED_FUNCTION_32();
  (*(v127 + 952))(v120);
  if (v116)
  {

    return;
  }

  v128 = v47;
  v129 = [objc_allocWithZone(VUIContentMetadata) init];
  if (!(*(*v149 + 552))())
  {

    v166 = 0u;
    v167 = 0u;
LABEL_49:
    sub_1E325F748(&v166, &unk_1ECF296E0);
LABEL_51:
    sub_1E3BD1AA4(a1, v149);

    return;
  }

  *(&v169 + 1) = &unk_1F5D7BE68;
  v170 = &off_1F5D7BC48;
  LOBYTE(v168) = 6;
  sub_1E3F9F164(&v168);

  __swift_destroy_boxed_opaque_existential_1(&v168);
  if (!*(&v167 + 1))
  {

    goto LABEL_49;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_51;
  }

  sub_1E3744600(v168);
  v130 = objc_allocWithZone(VUIContentMetadata);
  v131 = OUTLINED_FUNCTION_50();
  v132 = sub_1E37AD294(v131);
  if (v132)
  {
    v133 = v132;

    OUTLINED_FUNCTION_39();
    v135 = *((*v10 & v134) + 0x3F8);
    v129 = v133;
    v136 = v135();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *&v168 = sub_1E4205F14();
    *(&v168 + 1) = v138;
    sub_1E4207414();
    v139 = *sub_1E32ABF64();
    OUTLINED_FUNCTION_8();
    v141 = *(v140 + 96);

    LOBYTE(v141) = v141(v142);

    *(inited + 96) = MEMORY[0x1E69E6370];
    *(inited + 72) = v141 & 1;
    v143 = sub_1E4205CB4();
    sub_1E412B098(v143, v129, v128, v136, v143);
    OUTLINED_FUNCTION_38();

    if (v139)
    {
      OUTLINED_FUNCTION_32();
      v145 = *(v144 + 1024);
      v146 = v139;
      v147 = OUTLINED_FUNCTION_15_18();
      v145(v147);
    }

    goto LABEL_51;
  }

  __break(1u);
}

uint64_t sub_1E412A080(uint64_t a1)
{
  result = (*(*a1 + 648))();
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v3 = *(v2 + 56);

    if (v3)
    {
      v4 = [objc_opt_self() topMostVisibleViewController];
      if (v4)
      {
        v5 = v4;
        type metadata accessor for CanonicalDescriptionTemplateFactory();
        v6 = [v5 vuiTraitCollection];
        v7 = sub_1E3B18658(v3, v6);

        if (v7)
        {
          v8 = [objc_allocWithZone(VUIDocumentUIConfigurationFormSheet) init];
          [v8 setType_];
          [v8 setShouldWrapModalInNavigationController_];
          [v8 setAnimated_];
          [v8 setTapDismissable_];
          [v8 setModalOverModalAllowed_];
          [objc_opt_self() presentViewController:v7 fromViewController:v5 WithConfiguration:v8 completion:0];
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E412A22C(unint64_t a1, unint64_t a2, char a3)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_111:
    v6 = sub_1E4207384();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v109 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CC0];
  v113 = a2 & 0xFFFFFFFFFFFFFF8;
  v110 = a2 & 0xC000000000000001;
  v118 = a2;
  v119 = -v6;
  v116 = v5;
  v117 = v4;
  v115 = v4 & 0xC000000000000001;
LABEL_5:
  v9 = v7 + 4;
  while (v119 + v9 != 4)
  {
    v10 = v9 - 4;
    if (v8)
    {
      v87 = OUTLINED_FUNCTION_46_2();
      v11 = MEMORY[0x1E6911E60](v87);
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_109;
      }

      v11 = *(v4 + 8 * v9);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    if (a2 && (a2 >> 62 ? (v12 = sub_1E4207384()) : (v12 = *(v113 + 16)), v10 < v12))
    {
      if (v110)
      {
        v13 = MEMORY[0x1E6911E60](v9 - 4, a2);
      }

      else
      {
        if (v10 >= *(v113 + 16))
        {
          goto LABEL_110;
        }

        v13 = *(a2 + 8 * v9);
      }

      v129 = v13;
    }

    else
    {
      v129 = 0;
    }

    if ((*(*v11 + 392))())
    {
      type metadata accessor for ButtonLayout();
      OUTLINED_FUNCTION_20_2();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
      }
    }

    else
    {
      v14 = 0;
    }

    v114 = v9 - 3;
    if (TVAppFeature.isEnabled.getter(10))
    {
      v155 = v4;
      v130 = v9 - 4;
      LOBYTE(v131) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      sub_1E3798394();
      sub_1E38D2054(&v130, &v154);
      if (v154 && (LOWORD(v130) = *(v154 + 98), LOWORD(v155) = 60, sub_1E3741534(), (sub_1E4205E84() & 1) != 0))
      {
        if (a3)
        {
          sub_1E3E5FD88();
          if (v14)
          {
            OUTLINED_FUNCTION_71_2();
            v16 = *(v15 + 2048);
            v18 = v17;
            v16();
            OUTLINED_FUNCTION_2_1();
            v20 = *(v19 + 680);
            v125 = v18;
            v20(v18);

            (v16)(v21);
            OUTLINED_FUNCTION_2_1();
            v23 = *(v22 + 872);
            v24 = v125;
            v23(v18);
          }
        }

        else if (v14)
        {
          OUTLINED_FUNCTION_71_2();
          v76 += 256;
          v127 = *v76;
          v77 = (*v76)();
          v78 = sub_1E3E60700();
          v79 = *v78;
          v80 = *(*v77 + 680);
          v81 = *v78;
          v80(v79);

          v83 = (v127)(v82);
          v84 = *v78;
          v85 = *(*v83 + 872);
          v86 = v84;
          v85(v84);
        }
      }

      else if (v14)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v27 + 2296))(10, 0);
        (*(*v14 + 2360))(a3 & 1);
      }

      goto LABEL_57;
    }

    sub_1E34AF4E4(v9 - 4, v8 == 0, v4);
    if (v8)
    {
      v88 = OUTLINED_FUNCTION_46_2();
      MEMORY[0x1E6911E60](v88);
    }

    else
    {
    }

    v25 = sub_1E373F6E0();
    if (v8)
    {
      v26 = OUTLINED_FUNCTION_46_2();
      MEMORY[0x1E6911E60](v26);
    }

    else
    {
    }

    v28 = sub_1E373F6E0();
    if (v8)
    {
      v29 = OUTLINED_FUNCTION_46_2();
      MEMORY[0x1E6911E60](v29);
    }

    else
    {
    }

    v30 = sub_1E373F6E0();
    if (v25)
    {
      if (!v14)
      {
        goto LABEL_54;
      }

      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_71_2();
      v33 = (*(v31 + 2352))(3, v32 & 1, 2);
    }

    else
    {
      if (!v14)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_71_2();
      v33 = (*(v34 + 2352))(a3 & 1, 1, 2);
    }

    (*(*v14 + 2048))(v33);
    OUTLINED_FUNCTION_2_1();
    (*(v35 + 1720))(12);

    if ((v25 & 1) == 0)
    {
LABEL_49:
      OUTLINED_FUNCTION_8();
      (*(v52 + 2600))(v14);
      if (v28)
      {
        if (v14)
        {
          OUTLINED_FUNCTION_71_2();
          (*(v53 + 208))(0, 1);
        }
      }

      else if (v14 != 0 && (v30 & 1) != 0)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v54 + 256))(0x4077700000000000, 0);
      }

      goto LABEL_54;
    }

    OUTLINED_FUNCTION_8();
    v37 = (*(v36 + 2008))();
    (*(*v14 + 1648))(v37);

    if ((a3 & 1) == 0)
    {
      v39 = (*v14 + 2048);
      v40 = *v39;
      v41 = (*v39)(v38);
      v42 = sub_1E3E60700();
      v43 = *v42;
      v44 = v11;
      v45 = *(*v41 + 680);
      v46 = *v42;
      v45(v43);
      v11 = v44;

      v48 = v40(v47);
      v49 = *v42;
      v50 = *(*v48 + 872);
      v51 = v49;
      v50(v49);
    }

LABEL_54:
    v55 = [objc_opt_self() isSUIEnabled];
    if (v14 && v55)
    {
      OUTLINED_FUNCTION_71_2();
      (*(v56 + 256))(0x7FF0000000000000, 0);
      (*(*v14 + 360))(0x7FF0000000000000, 0);
    }

LABEL_57:
    v126 = v9;
    v132 = &unk_1F5D5D6D8;
    v133 = &off_1F5D5C8B8;
    LOBYTE(v130) = 7;
    v57 = j__OUTLINED_FUNCTION_18();
    v58 = sub_1E39C29F0(&v130, v57 & 1);
    __swift_destroy_boxed_opaque_existential_1(&v130);
    if (v58)
    {
      v59 = swift_allocObject();
      *(v59 + 16) = v111;
      *(v59 + 24) = v11;

      OUTLINED_FUNCTION_25();
      sub_1E3F86AD0(v60, v61, v62, v63, 0, 0, v64);
      v65 = v135;
      v66 = v136;
      v68 = v137;
      v67 = v138;
      v69 = v11;
      v70 = v139;
      v71 = v140;
    }

    else
    {
      v66 = 0;
      v68 = 0;
      v67 = 0;
      v70 = 0;
      v69 = v11;
      v71 = 0;
      v65 = 1;
    }

    v148 = v65;
    v149 = v66;
    v150 = v68;
    v151 = v67;
    v152 = v70;
    v153 = v71;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 2;
    v147 = 0;

    v72 = v69;
    sub_1E3F86D44();
    v74 = v73;

    if (v74)
    {
      v120 = v65;
      v121 = v66;
      v122 = v71;
      v123 = v70;
      v124 = v67;
      objc_opt_self();
      v75 = swift_dynamicCastObjCClass();
      if (v75)
      {
        v89 = [v75 imageView];
        v90 = v72;
        if (v89)
        {
          v91 = v89;
          [v89 setAdjustsLocalImageForContentSizeCategory_];
        }

        if (TVAppFeature.isEnabled.getter(16))
        {
          v132 = &unk_1F5D5D0A8;
          v133 = &off_1F5D5C758;
          LOBYTE(v130) = 15;
          v92 = sub_1E39C29F0(&v130, 0);
          __swift_destroy_boxed_opaque_existential_1(&v130);
          if (v92)
          {
            objc_opt_self();
            v93 = swift_dynamicCastObjCClass();
            if (v93)
            {
              v94 = v93;
              v95 = *(*v90 + 648);
              v96 = v74;
              v97 = v95();
              if (v97 && (v98 = v97, OUTLINED_FUNCTION_25(), swift_beginAccess(), v99 = *(v98 + 56), , , v99))
              {
                if (sub_1E397D25C())
                {
                  v100 = (*(*v99 + 464))();
                  if (v100)
                  {
                    v101 = v100;
                    result = sub_1E32AE9B0(v100);
                    v128 = result;
                    for (i = 0; ; ++i)
                    {
                      if (v128 == i)
                      {

                        goto LABEL_100;
                      }

                      if ((v101 & 0xC000000000000001) != 0)
                      {
                        result = MEMORY[0x1E6911E60](i, v101);
                      }

                      else
                      {
                        if (i >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_114;
                        }
                      }

                      if (__OFADD__(i, 1))
                      {
                        __break(1u);
LABEL_114:
                        __break(1u);
                        return result;
                      }

                      LOWORD(v154) = *(result + 98);
                      v157 = 130;
                      sub_1E3742F1C();
                      sub_1E4206254();
                      sub_1E4206254();
                      if (v130 == v155 && v131 == v156)
                      {
                        break;
                      }

                      v105 = sub_1E42079A4();

                      if (v105)
                      {
                        goto LABEL_97;
                      }
                    }

LABEL_97:

                    type metadata accessor for EpisodeCollectionViewModel();
                    v106 = swift_dynamicCastClass();
                    if (v106)
                    {
                      [v94 setSeasonDownloadDataSourceProvider_];
                    }
                  }
                }

LABEL_100:
              }

              else
              {
              }
            }
          }
        }

        v107 = v74;
        MEMORY[0x1E6910BF0]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_46_2();
        sub_1E4206324();
        sub_1E412BAB0(v120, v121, v68, v124, v123, v122);

        v109 = v134;
        v4 = v117;
        a2 = v118;
        v8 = v115;
        v5 = v116;
        v7 = v114;
        goto LABEL_5;
      }

      sub_1E412BAB0(v65, v66, v68, v67, v70, v71);
    }

    else
    {

      sub_1E412BAB0(v65, v66, v68, v67, v70, v71);
    }

    v9 = v126 + 1;
    v4 = v117;
    a2 = v118;
    v8 = v115;
    v5 = v116;
  }

  v108 = v109;
  if (sub_1E32AE9B0(v109))
  {
    return v108;
  }

  return 0;
}

id sub_1E412B098(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v9 = TVAppFeature.isEnabled.getter(10);
  v10 = *a3;
  if (v9)
  {
    v11 = (*(v10 + 2344))();
  }

  else
  {
    v11 = (*(v10 + 2392))();
  }

  v12 = v11;
  v13 = a4;
  if (!a4)
  {
    v14 = objc_allocWithZone(VUIMediaTagsView);
    v15 = OUTLINED_FUNCTION_1_36();
    v13 = [v16 v17];
  }

  v18 = objc_allocWithZone(VUIMediaTagsViewHelper);
  v19 = a4;
  v20 = a2;

  v21 = sub_1E4006AD0(v20, a5);
  if (v13)
  {
    v22 = v13;
    v23 = [v21 tagsViewDictionary];
    v24 = sub_1E4205C64();

    sub_1E3821F04(v24, v22);
  }

  return v13;
}

id sub_1E412B208(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v135 = a4;
  v139 = a5;
  v131 = a3;
  v7 = a1;
  v8 = (*(*a1 + 488))();
  if (a6)
  {
    v9 = a6;
  }

  else
  {
    v9 = sub_1E4205CB4();
  }

  if (!v8)
  {

    goto LABEL_9;
  }

  v10 = sub_1E373E010(92, v8);
  if (!v10)
  {
LABEL_9:
    v11 = 0;
    v152 = 0u;
    v153 = 0u;
    v13 = 1;
LABEL_10:
    sub_1E325F748(&v152, &unk_1ECF296E0);
    goto LABEL_11;
  }

  v11 = v10;
  LOBYTE(v156) = 2;
  v12 = *(*v10 + 776);

  v12(&v152, &v156, &unk_1F5D5D6D8, &off_1F5D5C8B8);

  if (!*(&v153 + 1))
  {
    v13 = 0;
    goto LABEL_10;
  }

  swift_dynamicCast();
  v13 = 0;
LABEL_11:
  v14 = sub_1E3BE9884();
  v143 = v7;
  if (v14 == 3 || (sub_1E3BE9944(v14, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  v16 = *(*v11 + 488);

  v15 = v16(v17);

  if (!v15)
  {
    goto LABEL_21;
  }

  v18 = sub_1E373E010(23, v15);

  if (!v18)
  {
    v15 = 0;
    goto LABEL_21;
  }

  if (*v18 != _TtC8VideosUI13TextViewModel)
  {

LABEL_14:
    v15 = 0;
LABEL_21:
    v21 = 0xE000000000000000;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_18();
  v15 = sub_1E3C287F4(0);

  if (!v15)
  {
    goto LABEL_21;
  }

  v19 = [v15 string];

  v15 = sub_1E4205F14();
  v21 = v20;

LABEL_22:
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_22_104();
    *(&v152 + 1) = v21;
    v31 = OUTLINED_FUNCTION_26_121(v23, v24, v25, v26, v27, v28, v29, v30, v127, v131, v135, v139, v143, v147, v15);
    sub_1E329504C(v31, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_200(isUniquelyReferenced_nonNull_native, v34, v35, v36, v37, v38, v39, v40, v128, v132, v136, v140, v144, v148, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, v155, v156);

    v9 = v147;
  }

  else
  {
  }

  v7 = v143;
LABEL_28:
  if (v8)
  {
    v41 = sub_1E373E010(3, v8);
    if (v41)
    {
      if (*v41 == _TtC8VideosUI13TextViewModel && (OUTLINED_FUNCTION_18(), (v42 = sub_1E3C287F4(0)) != 0))
      {
        v43 = v42;
        v44 = [v42 string];

        v45 = sub_1E4205F14();
        v47 = v46;

        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          sub_1E4205F14();
          OUTLINED_FUNCTION_22_104();
          *(&v152 + 1) = v47;
          v57 = OUTLINED_FUNCTION_26_121(v49, v50, v51, v52, v53, v54, v55, v56, v127, v131, v135, v139, v143, v147, v45);
          sub_1E329504C(v57, v58);
          v59 = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_9_200(v59, v60, v61, v62, v63, v64, v65, v66, v129, v133, v137, v141, v145, v149, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, v155, v156);

          v9 = v147;
        }

        else
        {
        }
      }

      else
      {
      }
    }

    if (sub_1E373E010(34, v8))
    {
      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass() && (OUTLINED_FUNCTION_30(), v68 = (*(v67 + 1016))(7), v69))
      {
        v70 = v68;
        v71 = v69;
        sub_1E4205F14();
        OUTLINED_FUNCTION_22_104();
        *(&v152 + 1) = v71;
        v80 = OUTLINED_FUNCTION_26_121(v72, v73, v74, v75, v76, v77, v78, v79, v127, v131, v135, v139, v143, v147, v70);
        sub_1E329504C(v80, v81);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_9_200(v82, v83, v84, v85, v86, v87, v88, v89, v130, v134, v138, v142, v146, v150, v152, *(&v152 + 1), v153, *(&v153 + 1), v154, v155, v156);

        v9 = v147;
      }

      else
      {
      }
    }

    v7 = v143;
  }

  v90 = (*v7 + 552);
  v91 = *v90;
  v92 = (*v90)();
  if (!v92)
  {
    v152 = 0u;
    v153 = 0u;
    goto LABEL_48;
  }

  v93 = v92;
  v94 = sub_1E4205F14();
  sub_1E3277E60(v94, v95, v93, &v152);

  if (!*(&v153 + 1))
  {
LABEL_48:
    v96 = v9;
    sub_1E325F748(&v152, &unk_1ECF296E0);
    goto LABEL_49;
  }

  v96 = v9;
  if (swift_dynamicCast())
  {
    v98 = *(&v156 + 1);
    v97 = v156;
    goto LABEL_50;
  }

LABEL_49:
  v97 = 0;
  v98 = 0;
LABEL_50:
  OUTLINED_FUNCTION_8();
  v100 = (*(v99 + 1560))();
  if (v98)
  {
    if (sub_1E3A24FDC(v100))
    {
      v101 = sub_1E4205F14();
      v103 = v102;
      *(&v153 + 1) = MEMORY[0x1E69E6158];
      *(&v152 + 1) = v98;
      v110 = OUTLINED_FUNCTION_26_121(v101, v102, v104, v105, v106, v107, v108, v109, v127, v131, v135, v139, v143, v147, v97);
      sub_1E329504C(v110, v111);
      swift_isUniquelyReferenced_nonNull_native();
      v147 = v96;
      sub_1E32A87C0(&v156, v101, v103);

      v112 = v96;
      goto LABEL_55;
    }
  }

  v112 = v96;
LABEL_55:
  v113 = v143;
  if (!(v91)(v100))
  {
    v156 = 0u;
    v157 = 0u;
    goto LABEL_65;
  }

  *(&v153 + 1) = &unk_1F5D7BE68;
  v154 = &off_1F5D7BC48;
  LOBYTE(v152) = 7;
  sub_1E3F9F164(&v152);

  __swift_destroy_boxed_opaque_existential_1(&v152);
  if (!*(&v157 + 1))
  {
LABEL_65:
    sub_1E325F748(&v156, &unk_1ECF296E0);
    goto LABEL_66;
  }

  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  OUTLINED_FUNCTION_26_121(v114, v115, v116, v117, v118, v119, v120, v121, v127, v131, v135, v139, v143, v147, v152);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  *(&v153 + 1) = &qword_1F5D5CE68;
  v154 = &off_1F5D5C708;
  LOWORD(v152) = 61;
  sub_1E3F9F164(&v152);

  if (!*(&v157 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v152);
    goto LABEL_65;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(&v152);
    sub_1E384EE08(61);
    *(&v153 + 1) = v114;
    *&v152 = v151;
    v124 = sub_1E3A7CD30(v122, v123, &v152, v113);

    __swift_destroy_boxed_opaque_existential_1(&v152);
    if (v124)
    {
      if (v8)
      {

        swift_isUniquelyReferenced_nonNull_native();
        *&v152 = v8;
        sub_1E37518B8(v124, 61);
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v152);
  }

LABEL_66:
  sub_1E3280A90(0, &qword_1EE23B228);
  v125 = sub_1E4005268(v113, v135, v139, v112, 0);

  return v125;
}

uint64_t sub_1E412BAB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
    sub_1E37FAED8(result, a2);
    sub_1E37FAED8(a3, a4);

    return sub_1E37FAED8(a5, a6);
  }

  return result;
}

void sub_1E412BB38()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (!v2)
    {
LABEL_6:

      return;
    }

    v3 = v2;
    v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x208))();
    if (v4)
    {
      v5 = v4;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();

      if (v6)
      {
        sub_1E412A080(v3);

        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_1E412BC34()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0();
  if (*(v0 + 176) == 1)
  {
    v2 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v3 = *sub_1E3E5FB88();
    sub_1E3C2E258();
    v4.n128_u64[0] = 12.0;
    j__OUTLINED_FUNCTION_7_78(v4);
    OUTLINED_FUNCTION_8_207();
    v5.n128_u64[0] = 20.0;
    j__OUTLINED_FUNCTION_7_78(v5);
    v6.n128_u64[0] = 14.0;
    j__OUTLINED_FUNCTION_7_78(v6);
    type metadata accessor for UIEdgeInsets();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_182();
    v7 = OUTLINED_FUNCTION_9_201();
    v15 = OUTLINED_FUNCTION_0_352(v7, v8, v9, v10, v11, v12, v13, v14, v278, v292, v305);
    sub_1E3C2FCB8(v15, v16);
    v25 = OUTLINED_FUNCTION_16_165(v17, v18, v19, v20, v21, v22, v23, v24, v279, v293, v305);
    memcpy(v25, v26, 0xE9uLL);
    v27 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_2(v27, v28, v29, v30, v31, v32, v33, v34, v280, v294, v305);
    sub_1E3C2FDFC();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_174();
    v35 = OUTLINED_FUNCTION_11_191();
    v43 = OUTLINED_FUNCTION_0_352(v35, v36, v37, v38, v39, v40, v41, v42, v281, v295, 0);
    sub_1E3C2FCB8(v43, v44);
    v53 = OUTLINED_FUNCTION_16_165(v45, v46, v47, v48, v49, v50, v51, v52, v282, v296, v305);
    memcpy(v53, v54, 0x59uLL);
    v55 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_2(v55, v56, v57, v58, v59, v60, v61, v62, v283, v297, v305);
    sub_1E3C2FDFC();
    BYTE8(v305) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_12_174();
    v63 = OUTLINED_FUNCTION_11_191();
    v71 = OUTLINED_FUNCTION_0_352(v63, v64, v65, v66, v67, v68, v69, v70, v284, v298, 0);
    sub_1E3C2FCB8(v71, v72);
    v81 = OUTLINED_FUNCTION_16_165(v73, v74, v75, v76, v77, v78, v79, v80, v285, v299, v305);
    memcpy(v81, v82, 0x59uLL);
    v83 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_2(v83, v84, v85, v86, v87, v88, v89, v90, v286, v300, v305);
    sub_1E3C2FDFC();
    sub_1E39537A8();
    OUTLINED_FUNCTION_8_207();
    sub_1E39537A8();
    v323[0] = v91;
    v323[1] = v92;
    v323[2] = v93;
    v323[3] = v94;
    v324 = 0;
    sub_1E39537A8();
    v321[0] = v95;
    v321[1] = v96;
    v321[2] = v97;
    v321[3] = v98;
    v322 = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_182();
    v99 = OUTLINED_FUNCTION_9_201();
    v308 = v311;
    v309 = v312;
    v310 = v313;
    v107 = OUTLINED_FUNCTION_0_352(v99, v100, v101, v102, v103, v104, v105, v106, v287, v301, v305);
    sub_1E3C2FCB8(v107, v108);
    v117 = OUTLINED_FUNCTION_16_165(v109, v110, v111, v112, v113, v114, v115, v116, v288, v302, v305);
    memcpy(v117, v118, 0xE9uLL);
    v119 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_12_2(v119, v120, v121, v122, v123, v124, v125, v126, v289, v303, v305);
    sub_1E3C2FDFC();
  }

  else
  {
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D0A0();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2EAE8();
    sub_1E3C2DE50();
    sub_1E3C2E258();
    v318 = 0u;
    v319 = 0u;
    v320 = 1;
    sub_1E3C2D7EC();
    v127 = sub_1E3C6DC70();
    v128 = v127[1];
    v305 = *v127;
    v306 = v128;
    v307 = 0;
    sub_1E3C2CC78();
    sub_1E3C6DC7C();
    sub_1E3C2EAE8();
  }

  OUTLINED_FUNCTION_13_12();
  sub_1E3C2CE80();
  OUTLINED_FUNCTION_13_12();
  sub_1E3C2D200();
  OUTLINED_FUNCTION_5_0();
  v129 = MEMORY[0x1E69DDCE0];
  if (*(v0 + 176))
  {
    v130 = COERCE_DOUBLE(sub_1E3C2D080());
    if (v131)
    {
      v132 = 0.0;
    }

    else
    {
      v132 = v130;
    }

    sub_1E3C2CC44();
    if (v324)
    {
      v133 = 0.0;
    }

    else
    {
      v133 = *v323;
    }

    sub_1E3C2CC44();
    v134 = *&v306;
    if (v307)
    {
      v134 = 0.0;
    }

    v135 = v132 - v133 - v134;
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_8();
    v137 = *(v136 + 312);

    v138 = OUTLINED_FUNCTION_36_2();
    v137(v138);

    OUTLINED_FUNCTION_8();
    v140 = *(v139 + 208);

    v141 = OUTLINED_FUNCTION_36_2();
    v140(v141);

    v142 = v129[1];
    v318 = *v129;
    v319 = v142;
    v320 = 0;
    OUTLINED_FUNCTION_8();
    v144 = *(v143 + 160);

    v144(&v318);

    OUTLINED_FUNCTION_36();
    v146 = *(v145 + 1744);

    v146(v147);
    OUTLINED_FUNCTION_4_9();
    v148 = OUTLINED_FUNCTION_36_0();
    v149(v148);

    OUTLINED_FUNCTION_36();
    v151 = *(v150 + 1744);

    v151(v152);
    OUTLINED_FUNCTION_4_9();
    v153 = OUTLINED_FUNCTION_36_0();
    v154(v153);

    OUTLINED_FUNCTION_36();
    v156 = v155 + 1744;
    v157 = *(v155 + 1744);

    v157(v158);
    OUTLINED_FUNCTION_4_9();
    (*(*v156 + 440))(0x3FF0000000000000, 0);

    OUTLINED_FUNCTION_36();
    v160 = v159 + 1744;
    v161 = *(v159 + 1744);

    v161(v162);
    OUTLINED_FUNCTION_4_9();
    (*(*v160 + 1712))(1);

    OUTLINED_FUNCTION_36();
    v164 = v163 + 1768;
    v165 = *(v163 + 1768);

    v165(v166);
    OUTLINED_FUNCTION_4_9();
    (*(*v164 + 1816))(v135 * 116.0 / 255.0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    sub_1E3C6E348(v167);
  }

  OUTLINED_FUNCTION_5_0();
  if (*(v0 + 176))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_36();
    v169 = *(v168 + 1712);

    v169(1);

    v170 = *(v0 + 104);
    OUTLINED_FUNCTION_36();
    v172 = *(v171 + 1808);

    v172(3);

    OUTLINED_FUNCTION_12_13();
    v173 = *sub_1E3E60A14();
    v174 = *(*v170 + 872);
    v175 = v173;
    v174(v173);

    OUTLINED_FUNCTION_12_13();
    v176 = *sub_1E418A500();
    (*(*v170 + 440))(v176, 0);

    v177 = *(v1 + 104);
    OUTLINED_FUNCTION_36();
    v179 = *(v178 + 2000);

    v179(0);

    OUTLINED_FUNCTION_12_13();
    sub_1E39537A8();
    *&v318 = v180;
    *(&v318 + 1) = v181;
    *&v319 = v182;
    *(&v319 + 1) = v183;
    v320 = 0;
    (*(*v177 + 560))(&v318);

    sub_1E3C2D080();
    sub_1E3C2CC44();
    sub_1E3C2CC44();
    OUTLINED_FUNCTION_8();
    v185 = *(v184 + 312);

    v186 = OUTLINED_FUNCTION_36_2();
    v185(v186);

    OUTLINED_FUNCTION_8();
    v188 = *(v187 + 208);

    v189 = OUTLINED_FUNCTION_36_0();
    v188(v189);

    OUTLINED_FUNCTION_12_13();
    v190.n128_u64[0] = 6.0;
    j__OUTLINED_FUNCTION_7_78(v190);
    OUTLINED_FUNCTION_8_207();
    OUTLINED_FUNCTION_8();
    (*(v191 + 184))(&v305);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    v192 = sub_1E418A500();
    sub_1E3C6DFCC(*v192);
  }

  type metadata accessor for StandardLockupCellLayout();
  OUTLINED_FUNCTION_5_0();

  sub_1E3D8D0C0(v193);

  LOBYTE(v318) = 22;
  LOBYTE(v305) = 27;
  LOBYTE(v323[0]) = 27;
  LOBYTE(v321[0]) = 27;
  LOBYTE(v317[0]) = 14;
  LOBYTE(v316[0]) = 19;
  OUTLINED_FUNCTION_8();
  v195 = *(v194 + 1608);

  OUTLINED_FUNCTION_7_248();
  v195(48, 0);

  v196 = *(v1 + 120);

  *&v318 = *sub_1E3E5FDEC();
  *&v305 = 0;
  v323[0] = 0;
  v197 = v318;
  v198 = *sub_1E3E60364();
  v321[0] = v198;
  v317[0] = 0;
  v316[0] = 0;
  v199 = *(*v196 + 1608);
  sub_1E3755B54();
  v200 = v198;
  OUTLINED_FUNCTION_7_248();
  v199(21, 0);

  v201 = *v129;
  v202 = *(v129 + 1);
  v204 = *(v129 + 2);
  v203 = *(v129 + 3);
  *&v318 = v201;
  *(&v318 + 1) = v202;
  *&v319 = v204;
  *(&v319 + 1) = v203;
  v320 = 0;
  OUTLINED_FUNCTION_8();
  v206 = *(v205 + 160);

  v206(&v318);

  LOBYTE(v305) = 11;
  LOBYTE(v323[0]) = 11;
  LOBYTE(v321[0]) = 11;
  LOBYTE(v317[0]) = 11;
  LOBYTE(v316[0]) = 11;
  v315[0] = 5;
  OUTLINED_FUNCTION_8();
  v208 = *(v207 + 1608);

  v290 = &qword_1F5D54AF8;
  v208(54, 0, &v305, v323, v321, v317, v316, v315);

  OUTLINED_FUNCTION_36();
  v210 = *(v209 + 1936);

  v210(2);

  OUTLINED_FUNCTION_5_0();
  if (*(v1 + 176) == 1)
  {
    OUTLINED_FUNCTION_5_0();
    v211 = *(v1 + 128);

    v212 = *sub_1E3E5FD88();
    v213 = *(*v211 + 680);
    v214 = v212;
    v213(v212);

    OUTLINED_FUNCTION_36();
    v216 = *(v215 + 2056);

    v216(2, 0);

    OUTLINED_FUNCTION_36();
    v218 = *(v217 + 2080);

    v218(2, 0);

    OUTLINED_FUNCTION_36();
    v220 = *(v219 + 1984);

    v220(5);

    LOBYTE(v305) = 17;
    LOBYTE(v323[0]) = 15;
    LOBYTE(v321[0]) = 3;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_20_132();
    v314 = v315[0];
    v221 = sub_1E3C3DE00(&qword_1F5D549D8);
    v327 = v311;
    v229 = OUTLINED_FUNCTION_0_352(v221, v222, v223, v224, v225, v226, v227, v228, &qword_1F5D54AF8, v292, v305);
    sub_1E3C2FCB8(v229, v230);
    OUTLINED_FUNCTION_14_188();
    OUTLINED_FUNCTION_36();
    v239 = OUTLINED_FUNCTION_17_155(v231, v232, v233, v234, v235, v236, v237, v238, v291, v304, v305);
    v240(v239);

    OUTLINED_FUNCTION_36();
    v242 = *(v241 + 256);

    v243 = OUTLINED_FUNCTION_13_12();
    v242(v243);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    sub_1E3C6DC94();
  }

  OUTLINED_FUNCTION_5_0();
  if (*(v1 + 176) == 1)
  {
    OUTLINED_FUNCTION_5_0();
    LOBYTE(v305) = 19;
    LOBYTE(v323[0]) = 22;
    LOBYTE(v321[0]) = 14;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_20_132();
    v327 = v315[0];
    sub_1E3C3DE00(&qword_1F5D549D8);
    v325 = v326;
    sub_1E3C2FCB8(&v305, &v318);
    OUTLINED_FUNCTION_14_188();
    OUTLINED_FUNCTION_36();
    v252 = OUTLINED_FUNCTION_17_155(v244, v245, v246, v247, v248, v249, v250, v251, v290, v292, v305);
    v253(v252);

    v254 = *(v1 + 136);

    v255 = *sub_1E3E5FDEC();
    v256 = *(*v254 + 680);
    v257 = v255;
    v256(v255);

    OUTLINED_FUNCTION_36();
    v259 = *(v258 + 2056);

    v259(1, 0);

    OUTLINED_FUNCTION_36();
    v261 = *(v260 + 2080);

    v261(1, 0);

    sub_1E3952C88();
    *&v318 = v262;
    *(&v318 + 1) = v263;
    *&v319 = v264;
    *(&v319 + 1) = v265;
    v320 = 0;
    OUTLINED_FUNCTION_8();
    (*(v266 + 160))(&v318);

    OUTLINED_FUNCTION_36();
    v268 = *(v267 + 1984);

    v268(5);

    OUTLINED_FUNCTION_36();
    v270 = *(v269 + 256);

    v271 = OUTLINED_FUNCTION_13_12();
    v270(v271);
  }

  else
  {
    OUTLINED_FUNCTION_5_0();

    sub_1E3C6DE18();
  }

  OUTLINED_FUNCTION_5_0();
  if ((*(v1 + 176) & 1) == 0)
  {
    OUTLINED_FUNCTION_5_0();

    sub_1E3C6E604(v272);
  }

  OUTLINED_FUNCTION_5_0();

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0();

  sub_1E3C6E74C();

  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5_0();
  v273 = *(v1 + 176);

  sub_1E375DA98(v274, (v273 & 1) == 0);

  *&v318 = v201;
  *(&v318 + 1) = v202;
  *&v319 = v204;
  *(&v319 + 1) = v203;
  v320 = 0;
  OUTLINED_FUNCTION_8();
  v276 = *(v275 + 160);

  v276(&v318);
}

uint64_t sub_1E412CFFC(char a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_14_0();
  v4 = *(v2 + 176);
  *(v2 + 176) = a1 & 1;
  result = OUTLINED_FUNCTION_5_0();
  if (v4 != *(v2 + 176))
  {
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_36();
    v7 = *(v6 + 432);

    v7(v8);
    LOBYTE(v7) = v9;

    result = sub_1E412BC34();
    if ((v7 & 1) == 0)
    {
      OUTLINED_FUNCTION_8();
      v11 = *(v10 + 440);

      v12 = OUTLINED_FUNCTION_36_2();
      v11(v12);
    }
  }

  return result;
}

uint64_t sub_1E412D140(unsigned __int8 a1)
{
  v3 = a1;
  type metadata accessor for ImageLayout();
  *(v1 + 104) = sub_1E3BD61D8();
  type metadata accessor for MonogramLayout();
  *(v1 + 112) = sub_1E4097BF8(0);
  type metadata accessor for TextLayout();
  *(v1 + 120) = sub_1E383BCC0();
  *(v1 + 128) = sub_1E383BCC0();
  *(v1 + 136) = sub_1E383BCC0();
  type metadata accessor for TextBadgeLayout();
  v4 = OUTLINED_FUNCTION_51_1();
  *(v1 + 144) = sub_1E382F55C(3, 1, v4 & 1);
  v5 = OUTLINED_FUNCTION_51_1();
  *(v1 + 152) = sub_1E382F55C(4, 1, v5 & 1);
  *(v1 + 160) = sub_1E3BD61D8();
  type metadata accessor for ButtonLayout();
  *(v1 + 168) = sub_1E3BBB724();
  *(v1 + 177) = a1;
  *(v1 + 176) = (v3 == 2) | a1 & 1;
  v6 = sub_1E3C2F9A0();

  sub_1E412BC34();
  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v7, 39);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v8, 41);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37EC8(v9, &unk_1F5D99AB8);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v10, 23);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v11, 15);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v12, 67);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v13, 53);

  OUTLINED_FUNCTION_5_0();

  sub_1E3C37CBC(v14, 54);

  OUTLINED_FUNCTION_15_0();

  sub_1E3C37CBC(v15, 31);

  return v6;
}

uint64_t sub_1E412D408(uint64_t a1, void *a2)
{
  v2 = a1;
  sub_1E3C35CF4(a1, a2);
  v3 = sub_1E412D444(v2);

  return sub_1E412CFFC(v3);
}

uint64_t sub_1E412D444(char a1)
{
  v2 = *(v1 + 177);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1E3A24FDC(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1E412D470()
{
  v0 = sub_1E3DF11E8();

  return MEMORY[0x1EEE6BDC0](v0, 178, 7);
}

BOOL sub_1E412D4A0(char a1)
{
  v2 = sub_1E412D444(a1);
  OUTLINED_FUNCTION_15_0();
  return *(v1 + 176) != v2;
}

unint64_t sub_1E412D4E4()
{
  result = qword_1ECF407E8;
  if (!qword_1ECF407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF407E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchTopResultLockupLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E412D660()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary) uniqueIdentifier];
  if (v1)
  {
    v2 = v1;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E412D744()
{
  OUTLINED_FUNCTION_5_0();

  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E412D7E4()
{
  v1 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems;
  OUTLINED_FUNCTION_5_0();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8);

  v6 = v4(v5);
  v7 = sub_1E37D466C(v2, v6);

  OUTLINED_FUNCTION_26_3();
  return (*((*v3 & v8) + 0x1B0))(v7);
}

uint64_t sub_1E412D8F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;

  return sub_1E412D7E4();
}

uint64_t sub_1E412D944(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return OUTLINED_FUNCTION_15_7();
}

uint64_t sub_1E412D994(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E412D7E4();
  }

  return result;
}

uint64_t sub_1E412D9C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v0, v1);
  return sub_1E42006B4();
}

uint64_t sub_1E412DA64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_phoneRecentlyPurchasedMenuItems;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
}

id sub_1E412DB00()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = [v0 deviceMediaLibrary];

  v2 = [v1 didFailUpdateCloudLibrary];
  return v2;
}

void sub_1E412DBA4()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = OUTLINED_FUNCTION_64_33();
  v7 = v6;

  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_displayName);
  *v8 = v5;
  v8[1] = v7;
  v9 = [v2 sharedInstance];
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_64_33();
  v13 = v12;

  if (v13)
  {
    v14 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sourceTypeName);
    *v14 = v11;
    v14[1] = v13;
    v15 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItems) = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_phoneRecentlyPurchasedMenuItems) = v15;
    v16 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary;
    *(v0 + v16) = [objc_opt_self() defaultMediaLibrary];
    v17 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandMediaLibrary;
    v18 = [objc_opt_self() defaultManager];
    v19 = [v18 sidebandMediaLibrary];

    *(v0 + v17) = v19;
    v20 = (v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandLibraryId);
    sub_1E41FE614();
    v21 = sub_1E41FE5E4();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_57();
    v25(v24);
    *v20 = v21;
    v20[1] = v23;
    v26 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_menuItemUpdateSubject;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C78);
    swift_allocObject();
    *(v0 + v26) = sub_1E4200544();
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_cancellables) = v15;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems) = v15;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu) = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu) = 0;
    v27 = *(v0 + v16);
    sub_1E3AD25B8();
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1E412DE14()
{
}

id sub_1E412DEF0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LibLocalSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E412E06C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v8 = sub_1E41A3110();
  (*(v6 + 16))(v0, v8, v4);

  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v28 = v4;
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v29 = v12;
    *v11 = 136315138;
    v13 = type metadata accessor for LibMenuItem();
    v14 = MEMORY[0x1E6910C30](v3, v13);
    v16 = sub_1E3270FC8(v14, v15, &v29);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_55();

    (*(v6 + 8))(v0, v28);
  }

  else
  {

    (*(v6 + 8))(v0, v4);
  }

  v22 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
  OUTLINED_FUNCTION_3_0();
  *(v1 + v22) = v3;

  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu);

  sub_1E412E33C(v24, v23);

  sub_1E412EA1C();
  OUTLINED_FUNCTION_38();

  v25 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))(v1);
  v26 = *((*v25 & *v1) + 0x188);

  v26(v27);
  sub_1E4200524();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E412E33C(unint64_t a1, uint64_t a2)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v49 = MEMORY[0x1E6911E60](v4, a1);
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v6)
      {
        goto LABEL_79;
      }

      v49 = *(a1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      OUTLINED_FUNCTION_35(v6);
      sub_1E42062F4();
      goto LABEL_34;
    }

    LOBYTE(v51) = *(v49 + 32);
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_142();
    sub_1E4206254();
    OUTLINED_FUNCTION_142();
    sub_1E4206254();
    if (v54 == v52 && v55 == v53)
    {

      goto LABEL_17;
    }

    v8 = sub_1E42079A4();

    if (v8)
    {
      goto LABEL_17;
    }

    ++v4;
  }

  if (!a2)
  {
    *(v48 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu) = 0;
    goto LABEL_20;
  }

LABEL_17:
  v9 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu;
  if (*(v48 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu))
  {
    goto LABEL_21;
  }

  type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_21();
  (*(v10 + 336))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_7();
  *(v48 + v9) = sub_1E3A8A680();
LABEL_20:

LABEL_21:
  v11 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  while (v3 != v11)
  {
    if (v5)
    {
      v12 = MEMORY[0x1E6911E60](v11, a1);
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v6)
      {
        goto LABEL_73;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    LOBYTE(v52) = *(v12 + 32);
    LOBYTE(v51) = 10;
    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_142();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v11;
  }

  v13 = sub_1E413430C(v54);
  v51 = v13;
  v14 = *(v48 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_combinedDownloadedMenu);
  if (!v14)
  {
    v17 = v13;
    goto LABEL_36;
  }

  v15 = *(*v14 + 264);

  v16 = v15(1);
  MEMORY[0x1E6910BF0](v16);
  v6 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v6 >> 1)
  {
    goto LABEL_80;
  }

LABEL_34:
  sub_1E4206324();
  v17 = v51;
LABEL_36:
  v18 = sub_1E32AE9B0(v17);
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC8];
  v47 = v17 & 0xFFFFFFFFFFFFFF8;
  while (v18 != v19)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1E6911E60](v19, v17);
    }

    else
    {
      v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v6)
      {
        goto LABEL_75;
      }

      v21 = *(v17 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_74;
    }

    v22 = *(v21 + 32);

    swift_isUniquelyReferenced_nonNull_native();
    v54 = v20;
    v23 = sub_1E3B8A658(v22);
    v6 = v20[2];
    if (__OFADD__(v6, (v24 & 1) == 0))
    {
      goto LABEL_76;
    }

    v25 = v23;
    v26 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF341C0);
    if (sub_1E4207644())
    {
      v27 = sub_1E3B8A658(v22);
      if ((v26 & 1) != (v28 & 1))
      {
        result = sub_1E4207A74();
        __break(1u);
        return result;
      }

      v25 = v27;
    }

    if (v26)
    {
      *(v20[7] + 8 * v25) = v21;
    }

    else
    {
      v20[(v25 >> 6) + 8] |= 1 << v25;
      *(v20[6] + v25) = v22;
      *(v20[7] + 8 * v25) = v21;

      v29 = v20[2];
      v30 = __OFADD__(v29, 1);
      v6 = v29 + 1;
      if (v30)
      {
        goto LABEL_77;
      }

      v20[2] = v6;
    }

    ++v19;
  }

  v50 = MEMORY[0x1E69E7CC0];
  v31 = sub_1E3A8CC10();
  v32 = *(v31 + 2);
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = (v31 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v37 = *v34++;
      v36 = v37;
      v38 = [v33 isRemoteServerConnected];
      if (v20[2])
      {
        v39 = v38;
        sub_1E3B8A658(v36);
        if (v40)
        {
          if (v39)
          {

LABEL_65:

            MEMORY[0x1E6910BF0](v43);
            v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v44 >> 1)
            {
              OUTLINED_FUNCTION_35(v44);
              sub_1E42062F4();
            }

            sub_1E4206324();

            v35 = v50;
            goto LABEL_68;
          }

          sub_1E37D4BA4();
          OUTLINED_FUNCTION_61_32();

          OUTLINED_FUNCTION_32_12();
          sub_1E4206254();
          OUTLINED_FUNCTION_32_12();
          sub_1E4206254();
          if (v54 == v52 && v55 == v53)
          {

            goto LABEL_65;
          }

          v42 = sub_1E42079A4();

          if (v42)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_68:
      if (!--v32)
      {

        goto LABEL_71;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_71:

  return v35;
}

void sub_1E412EA1C()
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
  if (![objc_opt_self() isRemoteServerConnected] || (v12 = objc_opt_self(), (objc_msgSend(v12, sel_isLibraryOnlyCountry) & 1) != 0))
  {

    goto LABEL_68;
  }

  v54 = v11;
  v55 = v5;
  v53 = v7;
  v52 = v2;
  if ([v12 userHasActiveAccount])
  {
  }

  else
  {
    v13 = sub_1E32AE9B0(v4);
    v14 = 0;
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
    v15 = &type metadata for LibMenuType;
    while (1)
    {
      if (v13 == v14)
      {
        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1E6911E60](v14, v4);
      }

      else
      {
        v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v16)
        {
          goto LABEL_72;
        }

        v17 = *(v4 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_71;
      }

      LOBYTE(v58) = *(v17 + 32);
      v63 = 10;
      v12 = sub_1E37D4BA4();
      OUTLINED_FUNCTION_32_12();
      sub_1E4206254();
      OUTLINED_FUNCTION_32_12();
      sub_1E4206254();
      v0 = v60;
      v18 = v61 == v59 && v62 == v60;
      if (v18)
      {
        break;
      }

      OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_65_39();

      if (v12)
      {
        goto LABEL_21;
      }

      ++v14;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    OUTLINED_FUNCTION_5_10();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1E4298880;
    *(v4 + 32) = v17;
  }

LABEL_22:
  v58 = MEMORY[0x1E69E7CC0];
  v13 = sub_1E32AE9B0(v4);
  v14 = 0;
  v56 = v4 & 0xFFFFFFFFFFFFFF8;
  v57 = v4 & 0xC000000000000001;
  v15 = &type metadata for LibMenuType;
  while (v13 != v14)
  {
    if (v57)
    {
      v11 = v4;
      v19 = MEMORY[0x1E6911E60](v14, v4);
    }

    else
    {
      v16 = *(v56 + 16);
      if (v14 >= v16)
      {
        goto LABEL_70;
      }

      v11 = v4;
      v19 = *(v4 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v20 = *(v19 + 32);
    v63 = v20;
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_24_117();
    OUTLINED_FUNCTION_23_112();
    OUTLINED_FUNCTION_29_106();
    if (v18 && v12 == v0)
    {
LABEL_44:

      goto LABEL_45;
    }

    v22 = OUTLINED_FUNCTION_97_0();

    if ((v22 & 1) == 0)
    {
      v63 = v20;
      OUTLINED_FUNCTION_24_117();
      OUTLINED_FUNCTION_23_112();
      OUTLINED_FUNCTION_29_106();
      if (v18 && v12 == v0)
      {
        goto LABEL_44;
      }

      v24 = OUTLINED_FUNCTION_97_0();

      if ((v24 & 1) == 0)
      {
        v63 = v20;
        OUTLINED_FUNCTION_24_117();
        OUTLINED_FUNCTION_23_112();
        OUTLINED_FUNCTION_29_106();
        if (v18 && v12 == v0)
        {
          goto LABEL_44;
        }

        v26 = OUTLINED_FUNCTION_97_0();

        if ((v26 & 1) == 0)
        {
          v0 = &v58;
          sub_1E4207544();
          v12 = *(v58 + 16);
          sub_1E4207584();
          sub_1E4207594();
          sub_1E4207554();
          goto LABEL_46;
        }
      }
    }

LABEL_45:

LABEL_46:
    ++v14;
    v4 = v11;
  }

  v27 = v58;
  v28 = *(**sub_1E3B7B1C8() + 696);

  v30 = v28(v29);

  v31 = *(v30 + 16);

  v61 = v4;
  v13 = type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v32) + 0x150))();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_21_7();
  v33 = sub_1E3A8A680();
  v34 = objc_opt_self();
  v35 = 0;
  if ([v34 isPad])
  {
    type metadata accessor for LayoutGrid();
    v36 = sub_1E3A256EC();
    v35 = sub_1E3A24FDC(v36) | v52;
  }

  v11 = v55;
  v15 = v53;
  if ([v34 isTV] & 1) != 0 || (objc_msgSend(v34, sel_isVision) & 1) != 0 || ((objc_msgSend(v34, sel_isPhone) | v35))
  {
    sub_1E32AE9B0(v27);
    OUTLINED_FUNCTION_61_32();

    if (v35)
    {
      v37 = 0;
      v14 = v54;
      goto LABEL_65;
    }

    v14 = v54;
    if (!sub_1E32AE9B0(v4) && v31 <= 1)
    {
      goto LABEL_57;
    }
  }

  else
  {
    sub_1E32AE9B0(v27);
    OUTLINED_FUNCTION_61_32();

    v14 = v54;
    if (v35)
    {
LABEL_57:
      v37 = 0;
      goto LABEL_65;
    }
  }

  if (!sub_1E32AE9B0(v4))
  {

    MEMORY[0x1E6910BF0](v40);
    v16 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < v16 >> 1)
    {
LABEL_64:
      OUTLINED_FUNCTION_46_2();
      sub_1E4206324();
      v37 = 1;
      goto LABEL_65;
    }

LABEL_75:
    OUTLINED_FUNCTION_35(v16);
    sub_1E42062F4();
    goto LABEL_64;
  }

  sub_1E37EFABC(0, v4);
  if (sub_1E32AE9B0(v4) < 0)
  {
    goto LABEL_73;
  }

  v38 = sub_1E32AE9B0(v4);
  v39 = v38 + 1;
  if (__OFADD__(v38, 1))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v37 = 1;
  sub_1E3797CDC(v39);
  sub_1E3AD8DE4(0, 0, 1, v33);
LABEL_65:
  v41 = sub_1E41A3110();
  (v15[1].Kind)(v14, v41, v11);
  v42 = sub_1E41FFC94();
  v43 = sub_1E4206814();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = v14;
    v45 = swift_slowAlloc();
    v46 = OUTLINED_FUNCTION_100();
    v59 = v46;
    *v45 = 67109378;
    *(v45 + 4) = v37;
    *(v45 + 8) = 2080;

    v48 = MEMORY[0x1E6910C30](v47, v13);
    v50 = v49;

    v51 = sub_1E3270FC8(v48, v50, &v59);

    *(v45 + 10) = v51;
    _os_log_impl(&dword_1E323F000, v42, v43, "LibLocalSource:: shouldInsertMenuItem %{BOOL}d, new menu items %s", v45, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (v15->Description)(v44, v55);
  }

  else
  {

    (v15->Description)(v14, v11);
  }

LABEL_68:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E412F1BC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v4 = OUTLINED_FUNCTION_35_83();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = v2 & 1;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_57();
  v15(v14);
  v16 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
  OUTLINED_FUNCTION_73();
  v50 = v16;
  v51 = v0;
  v17 = *(v0 + v16);
  v18 = sub_1E32AE9B0(v17);

  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      if (v2)
      {
        v23 = v0;
        v24 = [*(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_mediaLibrary) uniqueIdentifier];
        if (!v24)
        {
          goto LABEL_99;
        }

        v25 = v24;
        type metadata accessor for LibMenuItem();
        OUTLINED_FUNCTION_11_5();
        sub_1E4205F14();

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        sub_1E3A8A680();
        v26 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E6910BF0](v26);
        sub_1E38C5A18(*((*(v51 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1E4206324();
        swift_endAccess();
        goto LABEL_43;
      }

      v23 = v0;
      goto LABEL_23;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_83;
    }

    LOBYTE(v52) = *(v20 + 32);
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    if (v54 == v56 && v55 == v57)
    {
      break;
    }

    v22 = OUTLINED_FUNCTION_97_0();

    if (v22)
    {
      goto LABEL_20;
    }
  }

LABEL_20:

  v23 = v0;
  if (v2)
  {
LABEL_43:
    v33 = *(v23 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu);

    sub_1E412E33C(v34, v33);

    sub_1E412EA1C();
    v36 = v35;

    v37 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v23) + 0x190))(v36);
    v38 = *((*v37 & *v23) + 0x188);

    v38(v39);
    sub_1E4200524();

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_23:
  OUTLINED_FUNCTION_11_3();
  v27 = *(v23 + v16);
  v28 = sub_1E32AE9B0(v27);
  v29 = 0;
  while (1)
  {
    if (v28 == v29)
    {
      v29 = sub_1E32AE9B0(v27);
      goto LABEL_41;
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }
    }

    OUTLINED_FUNCTION_51_54();
    sub_1E37D4BA4();
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    if (v56 == v52 && v57 == v53)
    {
      break;
    }

    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_65_39();

    if (&type metadata for LibMenuType)
    {
      goto LABEL_39;
    }

    v31 = __OFADD__(v29++, 1);
    if (v31)
    {
      goto LABEL_86;
    }
  }

LABEL_39:
  if (__OFADD__(v29, 1))
  {
    goto LABEL_95;
  }

  if (v29 + 1 == sub_1E32AE9B0(v27))
  {
LABEL_41:
    v32 = sub_1E32AE9B0(v27);
    if (v32 < v29)
    {
      goto LABEL_94;
    }

    v23 = v51;
    sub_1E4134F2C(v29, v32);
    swift_endAccess();
    goto LABEL_43;
  }

  v40 = v29 + 5;
  while (1)
  {
    v41 = v40 - 4;
    if ((v27 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v40 - 4, v27);
    }

    else
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (v41 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }
    }

    OUTLINED_FUNCTION_51_54();
    OUTLINED_FUNCTION_33_94();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    OUTLINED_FUNCTION_46_2();
    sub_1E4206254();
    if (v56 == v52 && v57 == v53)
    {

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_65_39();

    if ((&type metadata for LibMenuType & 1) == 0)
    {
      break;
    }

LABEL_74:
    v48 = v40 - 3;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_89;
    }

    if (v27 >> 62)
    {
      v49 = sub_1E4207384();
    }

    else
    {
      v49 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v40;
    if (v48 == v49)
    {
      goto LABEL_41;
    }
  }

  if (v41 == v29)
  {
    goto LABEL_73;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x1E6911E60](v29, v27);
    v44 = MEMORY[0x1E6911E60](v40 - 4, v27);
  }

  else
  {
    if ((v29 & 0x8000000000000000) != 0)
    {
      goto LABEL_96;
    }

    v45 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29 >= v45)
    {
      goto LABEL_97;
    }

    if (v41 >= v45)
    {
      goto LABEL_98;
    }

    v43 = *(v27 + 8 * v29 + 32);
    v44 = *(v27 + 8 * v40);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v51 + v50) = v27;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
  {
    v27 = sub_1E37EFA58(v27);
    *(v51 + v50) = v27;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_91;
  }

  v47 = v27 & 0xFFFFFFFFFFFFFF8;
  if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_92;
  }

  *((v27 & 0xFFFFFFFFFFFFFF8) + 8 * v29 + 0x20) = v44;

  *(v51 + v50) = v27;
  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
  {
    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_71:
    if (v41 >= *(v47 + 16))
    {
      goto LABEL_93;
    }

    *(v47 + 8 * v40) = v43;

    *(v51 + v50) = v27;
LABEL_73:
    v31 = __OFADD__(v29++, 1);
    if (v31)
    {
      goto LABEL_90;
    }

    goto LABEL_74;
  }

  v27 = sub_1E37EFA58(v27);
  *(v51 + v50) = v27;
  v47 = v27 & 0xFFFFFFFFFFFFFF8;
  if ((v41 & 0x8000000000000000) == 0)
  {
    goto LABEL_71;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

void sub_1E412F9B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E41A3110();
  v4 = OUTLINED_FUNCTION_35_83();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_57();
  v16 = v15(v14);
  v31 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x188);
  v17 = v31(v16);
  v18 = sub_1E32AE9B0(v17);
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      goto LABEL_33;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    OUTLINED_FUNCTION_39_9();
    sub_1E4206254();
    if (v34 == v32 && v35 == v33)
    {

LABEL_18:

      (*(*v20 + 232))(v2);
      v23 = (*(*v20 + 264))(1);
      if (!v2)
      {
        v24 = v31(v23);
        v25 = sub_1E32AE9B0(v24);
        for (j = 0; v25 != j; ++j)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](j, v24);
          }

          else
          {
            if (j >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }
          }

          if (__OFADD__(j, 1))
          {
            goto LABEL_36;
          }

          sub_1E37DA4B8();
          if (OUTLINED_FUNCTION_49_65() & 1) != 0 || (OUTLINED_FUNCTION_49_65())
          {
          }

          else
          {
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
          }
        }

        sub_1E412EA1C();
        v28 = v27;

        OUTLINED_FUNCTION_26_3();
        (*((*MEMORY[0x1E69E7D40] & v29) + 0x190))(v28);
      }

      v31(v30);
      sub_1E4200524();

LABEL_33:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v22 = OUTLINED_FUNCTION_97_0();

    if (v22)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_1E412FE64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_10();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 192);
  v8 = v2;
  OUTLINED_FUNCTION_50();

  v7(sub_1E413643C, v5);
}

void sub_1E412FF1C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v23 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v4;
  v13[4] = v2;
  v13[5] = v6;
  OUTLINED_FUNCTION_2_12(v13);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v24[2] = v14;
  v24[3] = &block_descriptor_46_2;
  v15 = _Block_copy(v24);

  sub_1E4203FE4();
  v24[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v16, 255, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v18, v19);
  OUTLINED_FUNCTION_19_133();
  v20 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v20);
  _Block_release(v15);

  v21 = OUTLINED_FUNCTION_11_192();
  v22(v21);
  (*(v9 + 8))(v0, v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4130188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v40 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v38 = v3;
    v15 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
    OUTLINED_FUNCTION_3_0();
    *(v14 + v15) = v1;

    sub_1E4206BA4();
    v39 = v9;
    v16 = v5;
    v17 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_66_37();

    v18 = *(v11 + 8);
    v19 = OUTLINED_FUNCTION_123_0();
    v18(v19);
    v20 = sub_1E41305EC();
    v21 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu;
    *(v14 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu) = v20;

    sub_1E4206B94();
    v22 = VUISignpostLogObject();
    sub_1E41FFBE4();
    OUTLINED_FUNCTION_66_37();

    v23 = OUTLINED_FUNCTION_123_0();
    v18(v23);
    v24 = *(v14 + v21);

    v25 = OUTLINED_FUNCTION_142();
    v27 = sub_1E412E33C(v25, v26);

    v28 = sub_1E41A3110();
    (*(v16 + 16))(v39, v28, v40);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_100();
      v41 = v24;
      *v31 = 136315138;
      v32 = type metadata accessor for LibMenuItem();
      v33 = MEMORY[0x1E6910C30](v27, v32);
      v35 = sub_1E3270FC8(v33, v34, &v41);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1E323F000, v29, v30, "LibLocalSource::did fetch mp menu items with %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v16 + 8))(v39, v40);
    }

    else
    {

      (*(v16 + 8))(v39, v40);
    }

    sub_1E412EA1C();
    OUTLINED_FUNCTION_61_32();

    v36 = MEMORY[0x1E69E7D40];
    v37 = (*((*MEMORY[0x1E69E7D40] & *v14) + 0x190))(v24);
    (*((*v36 & *v14) + 0x188))(v37);
    v38();

    sub_1E41306B4();
  }

  else
  {
    (v3)(MEMORY[0x1E69E7CC0]);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E41305EC()
{
  OUTLINED_FUNCTION_21();
  if (((*(v0 + 664))() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LibMenuItem();
  OUTLINED_FUNCTION_21();
  (*(v1 + 336))();
  OUTLINED_FUNCTION_21_7();
  return sub_1E3A8A680();
}

void sub_1E41306B4()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v25 = sub_1E4207094();
  OUTLINED_FUNCTION_0_10();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v22[1] = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326E0);
  OUTLINED_FUNCTION_0_10();
  v26 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  v12 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3B7B208();
  sub_1E4207074();
  v13 = [objc_opt_self() mainRunLoop];
  v28 = v13;
  v14 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v14);
  OUTLINED_FUNCTION_21_1();
  sub_1E3280A90(v15, v16);
  sub_1E41366E8(&qword_1EE23B130, 255, MEMORY[0x1E6969F20]);
  OUTLINED_FUNCTION_21_1();
  sub_1E32ADE7C(v17, v18);
  sub_1E42007F4();
  sub_1E325F748(v4, &unk_1ECF3DB30);

  (*(v23 + 8))(v1, v25);
  v19 = OUTLINED_FUNCTION_32_12();
  v20(v19);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&unk_1EE28A2C0, &unk_1ECF326E0);
  v21 = v24;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v26 + 8))(v11, v21);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580);
  sub_1E42004D4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4130B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_10_9();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a1;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 200);
  v10 = v3;
  OUTLINED_FUNCTION_50();

  v9(v11, sub_1E4136448, v7);
}

void sub_1E4130BDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v25 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v24 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v6;
  v14[4] = v4;
  v14[5] = v8;
  v14[6] = v2;
  OUTLINED_FUNCTION_2_12(v14);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v26[2] = v15;
  v26[3] = &block_descriptor_39_6;
  v16 = _Block_copy(v26);

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v17, 255, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v19, v20);
  sub_1E42072E4();
  v21 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v21);
  _Block_release(v16);

  v22 = OUTLINED_FUNCTION_11_192();
  v23(v22);
  (*(v11 + 8))(v0, v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4130E78()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v42 = v5;
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;

    if (sub_1E38BBD0C())
    {
      v41 = v3;
      sub_1E4206BA4();
      v14 = VUISignpostLogObject();
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_66_37();

      v15 = *(v10 + 8);
      v16 = OUTLINED_FUNCTION_123_0();
      v15(v16);
      sub_1E4131298();
      v18 = v17;
      sub_1E4206B94();
      v19 = VUISignpostLogObject();
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_66_37();

      v20 = OUTLINED_FUNCTION_123_0();
      v15(v20);
      v21 = sub_1E41A3110();
      (*(v42 + 16))(v8, v21, v43);

      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v44[0] = swift_slowAlloc();
        *v24 = 136315394;
        v40 = v23;
        v25 = type metadata accessor for LibLockupViewModel();

        v27 = MEMORY[0x1E6910C30](v26, v25);
        v29 = v28;

        v30 = sub_1E3270FC8(v27, v29, v44);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2080;
        v31 = MEMORY[0x1E6910C30](v18, v25);
        v33 = sub_1E3270FC8(v31, v32, v44);

        *(v24 + 14) = v33;
        _os_log_impl(&dword_1E323F000, v22, v40, "LibLocalSource:: downloads:: fetched mp %s, sideband %s", v24, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v34 = OUTLINED_FUNCTION_39_0();
        v35(v34);
      }

      else
      {

        v36 = OUTLINED_FUNCTION_39_0();
        v37(v36);
      }

      v3 = v41;
      type metadata accessor for ComposedMediaQuery();

      v38 = sub_1E399FD3C();
      sub_1E399FD44(v1, v18, v38);
      swift_bridgeObjectRelease_n();
    }

    v3(v39);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v3(v1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4131298()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v84 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v84 - v11;
  v98 = v0;
  sub_1E4133298();
  v14 = v13;
  v100 = sub_1E32AE9B0(v13);
  if (!v100)
  {
    goto LABEL_61;
  }

  v15 = sub_1E41A3110();
  v16 = *(v3 + 16);
  v94 = v15;
  v93 = v3 + 16;
  v92 = v16;
  v16(v12);

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  v19 = os_log_type_enabled(v17, v18);
  v95 = v9;
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_6_21();
    *v20 = 134217984;
    *(v20 + 4) = sub_1E32AE9B0(v14);

    _os_log_impl(&dword_1E323F000, v17, v18, "LibLocalSource:: fetched downloaded videos from sideband: count %ld", v20, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v21 = v14;
  v22 = v3 + 8;
  v23 = OUTLINED_FUNCTION_46_2();
  v91 = v24;
  (v24)(v23);
  v99 = v14 & 0xC000000000000001;
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_66:
    v25 = MEMORY[0x1E6911E60](0, v21);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v25 = *(v14 + 32);
  }

  v26 = v25;
  v27 = [v25 managedObjectContext];

  v85 = v27;
  if (!v27)
  {
LABEL_61:

    goto LABEL_63;
  }

  v29 = 0;
  v90 = v21 & 0xFFFFFFFFFFFFFF8;
  v105 = MEMORY[0x1E69E7CD0];
  v106 = MEMORY[0x1E69E7CC0];
  *&v28 = 136315650;
  v86 = v28;
  v96 = MEMORY[0x1E69E7CC0];
  v87 = v22;
  v89 = v6;
  v97 = v21;
  v88 = v1;
  do
  {
    if (v99)
    {
      v30 = MEMORY[0x1E6911E60](v29, v21);
    }

    else
    {
      if (v29 >= *(v90 + 16))
      {
        goto LABEL_65;
      }

      v30 = *(v21 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v33 = [v30 entitlementType];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 integerValue];

      if (v35 == 2 || v35 == 3)
      {

        goto LABEL_51;
      }
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {
      v46 = v31;
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_10_31();
      if (v48)
      {
        OUTLINED_FUNCTION_35(v47);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v96 = v106;
      goto LABEL_50;
    }

    v37 = [v36 series];
    if (v37)
    {
      v38 = v37;
      OUTLINED_FUNCTION_26_122();
      v39();
      v40 = v38;
      v41 = sub_1E41FFC94();
      v42 = sub_1E4206814();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = OUTLINED_FUNCTION_100();
        v101[0] = swift_slowAlloc();
        *v43 = v86;
        v44 = sub_1E32859C4(v40, &selRef_title);
        if (v45)
        {
          *(&v103 + 1) = MEMORY[0x1E69E6158];
          *&v102 = v44;
          *(&v102 + 1) = v45;
        }

        else
        {
          v102 = 0u;
          v103 = 0u;
        }

        v54 = sub_1E3294FA4(&v102);
        v56 = sub_1E3270FC8(v54, v55, v101);

        *(v43 + 4) = v56;
        *(v43 + 12) = 2080;
        v57 = sub_1E32859C4(v40, &selRef_canonicalID);
        if (v58)
        {
          *(&v103 + 1) = MEMORY[0x1E69E6158];
          *&v102 = v57;
          *(&v102 + 1) = v58;
        }

        else
        {
          v102 = 0u;
          v103 = 0u;
        }

        v59 = sub_1E3294FA4(&v102);
        v61 = sub_1E3270FC8(v59, v60, v101);

        *(v43 + 14) = v61;
        *(v43 + 22) = 2080;
        v62 = sub_1E32859C4(v40, &selRef_adamID);
        if (v63)
        {
          *(&v103 + 1) = MEMORY[0x1E69E6158];
          *&v102 = v62;
          *(&v102 + 1) = v63;
        }

        else
        {
          v102 = 0u;
          v103 = 0u;
        }

        v64 = sub_1E3294FA4(&v102);
        v66 = sub_1E3270FC8(v64, v65, v101);

        *(v43 + 24) = v66;
        _os_log_impl(&dword_1E323F000, v41, v42, "LibLocalSource::sideband get download episode with serie\n%s\ncanonicalid %s\nadamid %s", v43, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v1 = v88;
        v22 = v87;
        v91(v95, v88);
        v6 = v89;
      }

      else
      {

        v53 = OUTLINED_FUNCTION_24_4();
        (v91)(v53);
      }

      v67 = sub_1E32859C4(v40, &selRef_canonicalID);
      if (v68)
      {
        v69 = v67;
        v70 = v68;
        if (!sub_1E3862230(v67, v68, v105))
        {
          goto LABEL_47;
        }
      }

      v71 = sub_1E32859C4(v40, &selRef_adamID);
      if (!v72)
      {
LABEL_46:

LABEL_50:
        v21 = v97;
        goto LABEL_51;
      }

      v69 = v71;
      v70 = v72;
      if (sub_1E3862230(v71, v72, v105))
      {

        goto LABEL_46;
      }

LABEL_47:
      sub_1E3277398(&v102, v69, v70);

      v73 = v40;
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_10_31();
      if (v48)
      {
        OUTLINED_FUNCTION_35(v74);
        sub_1E42062F4();
      }

      sub_1E4206324();

      v96 = v106;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_26_122();
    v49();
    v50 = sub_1E41FFC94();
    v51 = sub_1E42067F4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1E323F000, v50, v51, "LibLocalSource::sideband get download episode without series", v52, 2u);
      v6 = v89;
      OUTLINED_FUNCTION_6_0();
    }

    v91(v6, v1);
LABEL_51:
    ++v29;
  }

  while (v32 != v100);

  type metadata accessor for LibResponseParser();
  v75 = sub_1E39212D0(v96, v85);
  v104 = MEMORY[0x1E69E7CC0];
  v76 = *(v75 + 16);
  if (v76)
  {
    type metadata accessor for LibLockupViewModel();
    v77 = *((*MEMORY[0x1E69E7D40] & *v98) + 0x150);
    v78 = v75 + 32;
    do
    {
      sub_1E327F454(v78, &v102);
      v79 = sub_1E327F454(&v102, v101);
      v77(v79);
      j__OUTLINED_FUNCTION_18();
      sub_1E38BC104();
      if (v80)
      {
        v81 = *(*v80 + 1640);

        v81();

        v82 = __swift_destroy_boxed_opaque_existential_1Tm(&v102);
        MEMORY[0x1E6910BF0](v82);
        v83 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v83 >> 1)
        {
          OUTLINED_FUNCTION_35(v83);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_24_4();
        sub_1E4206324();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v102);
      }

      v78 += 40;
      --v76;
    }

    while (v76);
  }

LABEL_63:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4131BDC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v59 = v7;
  v9 = v8;
  v58 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v14 = *(v9 + 24);
  v13 = *(v9 + 32);
  v15 = OUTLINED_FUNCTION_39_9();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v17 = (*(*(v13 + 8) + 16))(v14);
  v19 = v18;
  sub_1E327F454(v9, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780);
  type metadata accessor for LibMPShowMediaEntity();
  if (OUTLINED_FUNCTION_46_67())
  {

    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    *(v20 + 24) = v4;
    v21 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xD0);

    v21(v17, v19, v59 & 1, sub_1E4136454, v20);

LABEL_31:

    goto LABEL_32;
  }

  sub_1E327F454(v9, v60);
  type metadata accessor for LibSidebandShowMediaEntity();
  if (OUTLINED_FUNCTION_46_67())
  {

    v23 = *(v9 + 24);
    v22 = *(v9 + 32);
    v24 = OUTLINED_FUNCTION_17_11();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v26 = (*(*(v22 + 8) + 24))(v23);
    if (!v27)
    {
      v29 = *(v9 + 24);
      v28 = *(v9 + 32);
      v30 = OUTLINED_FUNCTION_17_11();
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v26 = (*(*(v28 + 8) + 88))(v29);
      if (!v27)
      {
        v50 = MEMORY[0x1E69E7CC0];
LABEL_30:
        v6(v50);
        goto LABEL_31;
      }
    }

    v32 = v26;
    v33 = v27;
    sub_1E4206BA4();
    v34 = VUISignpostLogObject();
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    v35 = *(v11 + 8);
    v35(v1, v58);
    v36 = sub_1E4135D84(v32, v33, *(v2 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandMediaLibrary));
    if (!v36)
    {
      goto LABEL_28;
    }

    v37 = v36;
    v38 = sub_1E4135DD4(v36, &selRef_seasons, &qword_1ECF300C8);
    if (v38)
    {
      v39 = v38;
      if (!sub_1E374CEE0(v38))
      {
        sub_1E4134B64();
        if (v51)
        {
          v52 = v51;
          v44 = [v51 managedObjectContext];

          if (v44)
          {
            sub_1E4134E1C(v39, &qword_1ECF300C8, off_1E8728610, &qword_1ECF40838);

            v60[0] = sub_1E4135E6C(v53);
            sub_1E4134FD0(v60);

            v54 = v60[0];
            if (v60[0] < 0 || (v60[0] & 0x4000000000000000) != 0)
            {
              sub_1E3280A90(0, &qword_1ECF40820);
              OUTLINED_FUNCTION_11_5();

              sub_1E42076C4();
              OUTLINED_FUNCTION_11_5();
            }

            else
            {

              sub_1E42079D4();
              sub_1E3280A90(0, &qword_1ECF40820);
            }

            type metadata accessor for LibResponseParser();
            v55 = OUTLINED_FUNCTION_38();
            sub_1E39212D0(v55, v44);
            OUTLINED_FUNCTION_38();

            v50 = sub_1E3AD5600(v54);

            if (v50)
            {
              goto LABEL_24;
            }

LABEL_28:
            v50 = MEMORY[0x1E69E7CC0];
            goto LABEL_29;
          }
        }

LABEL_25:

        goto LABEL_28;
      }
    }

    v40 = sub_1E4135DD4(v37, &selRef_episodes, &qword_1ECF300D0);
    if (!v40)
    {

      goto LABEL_28;
    }

    v41 = v40;
    sub_1E4134B64();
    if (v42)
    {
      v43 = v42;
      v44 = [v42 managedObjectContext];

      if (v44)
      {
        v45 = sub_1E4134E1C(v41, &qword_1ECF300D0, off_1E8728600, &qword_1ECF315E0);

        v57 = type metadata accessor for LibSidebandSeasonMediaEntity();
        v46 = sub_1E3AF7D1C([objc_allocWithZone(VUIVideoManagedObject) init]);
        if (v45 < 0 || (v45 & 0x4000000000000000) != 0)
        {
          v47 = sub_1E3280A90(0, &qword_1ECF40820);

          v48 = sub_1E42076C4();
        }

        else
        {

          v47 = v45;
          sub_1E42079D4();
          sub_1E3280A90(0, &qword_1ECF40820);
          v48 = v45;
        }

        type metadata accessor for LibResponseParser();
        v49 = OUTLINED_FUNCTION_38();
        sub_1E39212D0(v49, v44);
        OUTLINED_FUNCTION_38();

        sub_1E4134C2C(v47);
        OUTLINED_FUNCTION_11_5();

        (*(*v46 + 464))(v48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32768);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1E4297BE0;
        *(v50 + 56) = v57;
        *(v50 + 64) = sub_1E41366E8(&qword_1ECF33AD8, 255, type metadata accessor for LibSidebandSeasonMediaEntity);
        *(v50 + 32) = v46;
LABEL_24:

LABEL_29:

        sub_1E4206B94();
        v56 = VUISignpostLogObject();
        sub_1E41FFBE4();
        sub_1E41FFBA4();

        v35(v1, v58);
        goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  v6(MEMORY[0x1E69E7CC0]);
LABEL_32:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4132330()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v11 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = v4;
  v12[3] = v2;
  v12[4] = v6;
  OUTLINED_FUNCTION_2_12(v12);
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v23[2] = v13;
  v23[3] = &block_descriptor_170;
  v14 = _Block_copy(v23);

  sub_1E4203FE4();
  v23[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_253();
  sub_1E41366E8(v15, 255, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  OUTLINED_FUNCTION_47();
  sub_1E32752B0(v17, v18);
  OUTLINED_FUNCTION_19_133();
  v19 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v19);
  _Block_release(v14);

  v20 = OUTLINED_FUNCTION_11_192();
  v21(v20);
  (*(v9 + 8))(v0, v22);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4132578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  result = sub_1E38BBD0C();
  if ((result & 1) == 0)
  {
    return result;
  }

  v40 = a3;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return v40();
  }

  v9 = 0;
  v10 = a2 + 32;
  v42 = *(a2 + 16);
  v43 = v4;
  v41 = a2 + 32;
  while (1)
  {
    sub_1E327F454(v10 + 40 * v9, v51);
    sub_1E327F454(v51, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
    v11 = OUTLINED_FUNCTION_24_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    if (!swift_dynamicCast())
    {
      v46 = 0;
      memset(v45, 0, sizeof(v45));
      sub_1E325F748(v45, &qword_1ECF2A778);
      sub_1E3280A90(0, &qword_1EE23AFA0);
      sub_1E327F454(v51, v50);
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      v29 = sub_1E3BFF560(v50, &v47);
      if (v29)
      {
        v30 = v29;
        [v29 deleteDownload];
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      goto LABEL_40;
    }

    sub_1E3251BE8(v45, v50);
    v12 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v13 = OUTLINED_FUNCTION_38();
    v15 = v14(v13, v12);
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_4_0();
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E327F454(v50, &v47);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_1E3251BE8(&v47, v32 + 24);
    v33 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x260);

    v33(v50, 1, sub_1E413645C, v32);

    __swift_destroy_boxed_opaque_existential_1Tm(v51);

LABEL_39:
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
LABEL_40:
    if (++v9 == v8)
    {
      return v40();
    }
  }

  v16 = *(v15 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_31:

    v34 = v18[2];
    if (v34)
    {
      v44 = MEMORY[0x1E69E7CC0];
      sub_1E3923EE8(0, v34, 0);
      v35 = v44;
      v36 = (v18 + 4);
      do
      {
        sub_1E327F454(v36, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
        swift_dynamicCast();
        v38 = *(v44 + 16);
        v37 = *(v44 + 24);
        if (v38 >= v37 >> 1)
        {
          v39 = OUTLINED_FUNCTION_35(v37);
          sub_1E3923EE8(v39, v38 + 1, 1);
        }

        *(v44 + 16) = v38 + 1;
        sub_1E3251BE8(&v47, v44 + 40 * v38 + 32);
        v36 += 40;
        --v34;
      }

      while (v34);
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v4 = v43;
    (*((*MEMORY[0x1E69E7D40] & *v43) + 0x270))(v50, v35, nullsub_1, 0);

    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v10 = v41;
    v8 = v42;
    goto LABEL_39;
  }

  v17 = v15 + 32;
  v18 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1E327F454(v17, &v47);
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    v19 = OUTLINED_FUNCTION_39_0();
    result = v20(v19);
    v21 = result ? result : MEMORY[0x1E69E7CC0];
    v22 = *(v21 + 16);
    v23 = v18[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v24 > v18[3] >> 1)
    {
      if (v23 <= v24)
      {
        v25 = v23 + v22;
      }

      else
      {
        v25 = v23;
      }

      result = sub_1E3AF90C0(result, v25, 1, v18);
      v18 = result;
    }

    if (*(v21 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v22)
      {
        goto LABEL_45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v26 = v18[2];
        v27 = __OFADD__(v26, v22);
        v28 = v26 + v22;
        if (v27)
        {
          goto LABEL_46;
        }

        v18[2] = v28;
      }
    }

    else
    {

      if (v22)
      {
        goto LABEL_44;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v47);
    v17 += 40;
    if (!--v16)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1E4132B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    sub_1E3280A90(0, &qword_1EE23AFA0);
    v6 = a2 + 32;
    do
    {
      sub_1E327F454(v6, v11);
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v7 = sub_1E3BFF560(v11, v9);
      [v7 deleteDownload];

      v6 += 40;
      --v4;
    }

    while (v4);
  }

  return a3();
}

uint64_t sub_1E4132BEC()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 392))();
  result = sub_1E32AE9B0(v1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v1);
      v5 = result;
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E37D4BA4();
    sub_1E4206254();
    sub_1E4206254();
    if (v10 == v8 && v11 == v9)
    {

LABEL_16:

      return v5;
    }

    v7 = OUTLINED_FUNCTION_97_0();

    if (v7)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1E4132D84()
{
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v1 += 49;
  v2 = *v1;
  v3 = (*v1)();
  sub_1E412EA1C();
  v5 = v4;
  OUTLINED_FUNCTION_26_3();
  v7 = *((*v0 & v6) + 0x190);

  v7(v8);
  v9 = sub_1E32AE9B0(v5);

  v10 = sub_1E32AE9B0(v3);

  if (v9 != v10)
  {

    (v2)(v12);
    sub_1E4200524();
  }

  return result;
}

void sub_1E4132EBC()
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 392))();
  sub_1E32AE9B0(v5);
  OUTLINED_FUNCTION_55_53();
  while (1)
  {
    if (v0 == v1)
    {

      sub_1E412EA1C();

      return;
    }

    if (v2)
    {
      MEMORY[0x1E6911E60](v1, v5);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_17_11();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_1E4133044()
{
  OUTLINED_FUNCTION_21();
  v8 = *(v5 + 392);
  v6 = v8();
  sub_1E32AE9B0(v6);
  OUTLINED_FUNCTION_55_53();
  while (1)
  {
    if (v1 == v2)
    {

      sub_1E412EA1C();
      OUTLINED_FUNCTION_38();

      (*((*MEMORY[0x1E69E7D40] & *v0) + 0x190))(v0);

      (v8)(v7);
      sub_1E4200524();

      return;
    }

    if (v3)
    {
      MEMORY[0x1E6911E60](v2, v6);
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    sub_1E37DA4B8();
    if (sub_1E4205E84())
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_17_11();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v2;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

BOOL sub_1E4133260()
{
  sub_1E4133298();
  sub_1E32AE9B0(v1);
  OUTLINED_FUNCTION_50();

  return v0 != 0;
}

void sub_1E4133298()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v89 - v14;
  v16 = MEMORY[0x1E69E7CC0];
  v102 = MEMORY[0x1E69E7CC0];
  v17 = sub_1E39AC824();
  v18 = sub_1E41A3110();
  v19 = *(v4 + 16);
  v97 = v4 + 16;
  v98 = v2;
  v96 = v19;
  if (v17)
  {
    v19(v15, v18, v2);
    v20 = sub_1E41FFC94();
    v21 = sub_1E4206814();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E323F000, v20, v21, "LibLocalSource:: sideband getting downloading & downloaded videos", v22, 2u);
      OUTLINED_FUNCTION_55();
    }

    v95 = *(v4 + 8);
    v95(v15, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E42A73A0;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v24 = (inited + 48);
    v25 = 3;
  }

  else
  {
    v19(v12, v18, v2);
    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E323F000, v26, v27, "LibLocalSource:: sideband getting downloaded videos", v28, 2u);
      OUTLINED_FUNCTION_55();
    }

    v95 = *(v4 + 8);
    v95(v12, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298880;
    v24 = (inited + 32);
    v25 = 2;
  }

  *v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1E3FBB5C8(inited);
  v29 = *(v1 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandMediaLibrary);
  sub_1E3280A90(0, &qword_1EE23ADD0);
  OUTLINED_FUNCTION_6_240();
  sub_1E32ADE7C(v30, &qword_1EE23ADD0);
  sub_1E4206614();
  OUTLINED_FUNCTION_50();

  OUTLINED_FUNCTION_21_7();
  v33 = [v31 v32];

  if (v33)
  {
    sub_1E3280A90(0, &qword_1EE23B0B0);
    v34 = sub_1E42062B4();

    sub_1E4134AB8(v34);
  }

  v35 = [v29 videosWithExpiredDownloadsUsingMainThreadContext_];
  if (v35)
  {
    v36 = v35;
    sub_1E3280A90(0, &qword_1EE23B0B0);
    v37 = sub_1E42062B4();

    sub_1E4134AB8(v37);
  }

  v38 = v102;
  v101 = v16;
  v39 = sub_1E32AE9B0(v102);
  v40 = 0;
  v41 = v38 & 0xC000000000000001;
  v100 = v38;
  v42 = v38 & 0xFFFFFFFFFFFFFF8;
  v94 = v4 + 8;
  *&v43 = 138412290;
  v91 = v43;
  v44 = v98;
  v99 = v39;
  while (1)
  {
    if (v39 == v40)
    {
      v56 = v101;
      v101 = MEMORY[0x1E69E7CC0];
      v57 = sub_1E32AE9B0(v56);
      v58 = 0;
      v99 = v56 & 0xC000000000000001;
      v92 = @"Movie";
      v89 = @"Show";
      v93 = v57;
      while (1)
      {
        if (v57 == v58)
        {

          OUTLINED_FUNCTION_25_2();
          return;
        }

        if (v99)
        {
          v59 = MEMORY[0x1E6911E60](v58, v56);
        }

        else
        {
          if (v58 >= *(v56 + 16))
          {
            goto LABEL_67;
          }

          v59 = *(v56 + 8 * v58 + 32);
        }

        v60 = v59;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_66;
        }

        v61 = objc_opt_self();
        v62 = [v61 sharedInstance];
        v63 = [v62 maxMovieRank];

        v64 = [v61 sharedInstance];
        v65 = [v64 maxTVShowRank];

        v66 = sub_1E32859C4(v60, &selRef_contentRatingDomain);
        if (!v67)
        {

          goto LABEL_44;
        }

        v68 = v66;
        v69 = v67;
        v70 = [v60 contentRatingRank];
        if (!v70)
        {

          goto LABEL_46;
        }

        v71 = v70;
        if (v68 == sub_1E4205F14() && v69 == v72)
        {

          if (v63)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v74 = OUTLINED_FUNCTION_45_74();

          if ((v74 & 1) != 0 && v63)
          {
LABEL_41:

            v75 = [v71 unsignedIntegerValue];
            v76 = [v63 unsignedIntegerValue];

            v77 = v76 >= v75;
            v78 = v98;
            v57 = v93;
            if (v77)
            {
              goto LABEL_46;
            }

            goto LABEL_58;
          }
        }

        if (v68 == sub_1E4205F14() && v69 == v79)
        {

          v57 = v93;
        }

        else
        {
          OUTLINED_FUNCTION_45_74();
          OUTLINED_FUNCTION_65_39();

          v57 = v93;
          if ((v68 & 1) == 0)
          {

LABEL_44:
LABEL_46:
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
            goto LABEL_47;
          }
        }

        if (!v65)
        {

          goto LABEL_46;
        }

        v81 = [v71 unsignedIntegerValue];
        v82 = [v65 unsignedIntegerValue];

        v77 = v82 >= v81;
        v78 = v98;
        if (v77)
        {
          goto LABEL_46;
        }

LABEL_58:
        v83 = sub_1E41A3110();
        v96(v90, v83, v78);
        v84 = v60;
        v85 = sub_1E41FFC94();
        v86 = sub_1E4206814();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = OUTLINED_FUNCTION_6_21();
          v88 = swift_slowAlloc();
          OUTLINED_FUNCTION_47_60(v88);
          _os_log_impl(&dword_1E323F000, v85, v86, "LibLocalSource:: video %@ did not pass content restriction, we don't show it", v87, 0xCu);
          sub_1E325F748(v88, &unk_1ECF28E30);
          v57 = v93;
          OUTLINED_FUNCTION_6_0();
          v78 = v98;
          OUTLINED_FUNCTION_6_0();
        }

        v95(v90, v78);
LABEL_47:
        ++v58;
      }
    }

    if (v41)
    {
      v45 = MEMORY[0x1E6911E60](v40, v100);
    }

    else
    {
      if (v40 >= *(v42 + 16))
      {
        goto LABEL_65;
      }

      v45 = *(v100 + 8 * v40 + 32);
    }

    v46 = v45;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if ([v45 markedAsDeleted])
    {
      v47 = sub_1E41A3110();
      v96(v9, v47, v44);
      v48 = v46;
      v49 = sub_1E41FFC94();
      v50 = sub_1E4206814();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_6_21();
        v52 = v42;
        v53 = v41;
        v54 = v9;
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_47_60(v55);
        _os_log_impl(&dword_1E323F000, v49, v50, "LibLocalSource:: video %@ marked as deleted, we don't show it", v51, 0xCu);
        sub_1E325F748(v55, &unk_1ECF28E30);
        v9 = v54;
        v41 = v53;
        v42 = v52;
        v39 = v99;
        OUTLINED_FUNCTION_6_0();
        v44 = v98;
        OUTLINED_FUNCTION_6_0();
      }

      v95(v9, v44);
    }

    if ([v46 markedAsDeleted])
    {
    }

    else
    {
      sub_1E4207544();
      sub_1E4207584();
      OUTLINED_FUNCTION_46_2();
      sub_1E4207594();
      sub_1E4207554();
    }

    ++v40;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_1E4133CDC()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 336))();
}

uint64_t sub_1E4133D30()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 344))();
}

uint64_t sub_1E4133D84()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 368))();
}

uint64_t sub_1E4133DD8()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 392))();
}

uint64_t sub_1E4133E2C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 400))();
}

void (*sub_1E4133E80(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 408))();
  return sub_1E37C55D4;
}

uint64_t sub_1E4133F1C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 416))();
}

uint64_t sub_1E4133F70()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 424))();
}

uint64_t sub_1E4133FC4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 432))();
}

void (*sub_1E4134018(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 440))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E41340B4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 448))() & 1;
}

uint64_t sub_1E413410C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 592))();
}

uint64_t sub_1E4134160()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 600))();
}

uint64_t sub_1E41341B4()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 608))();
}

uint64_t sub_1E4134208()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 616))();
}

uint64_t sub_1E413425C()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 624))();
}

uint64_t sub_1E41342B0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_21();
  result = (*(v2 + 336))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E413430C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E3DD3C74((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1E41343A0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E41305EC();
  v10 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu;
  *(v0 + OBJC_IVAR____TtC8VideosUI14LibLocalSource_sidebandDownloadedMenu) = v9;

  v11 = *(v0 + v10);
  sub_1E3280A90(0, &qword_1EE23B3A0);
  v48 = sub_1E39A2290();
  if (v48)
  {
LABEL_22:
    v20 = sub_1E41A3110();
    (*(v4 + 16))(v8, v20, v2);
    v21 = sub_1E41FFC94();
    v22 = sub_1E4206814();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109376;
      *(v23 + 4) = v11 != 0;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v48 & 1;
      _os_log_impl(&dword_1E323F000, v21, v22, "LibLocalSource::sideBandContentChanged has sideband %{BOOL}d has mp %{BOOL}d", v23, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    v24 = OUTLINED_FUNCTION_142();
    v25(v24);
    OUTLINED_FUNCTION_73();
    v26 = *(v1 + v10);

    sub_1E412E33C(v27, v26);

    sub_1E412EA1C();
    v29 = v28;

    v30 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x190))(v29);
    v31 = *((*v30 & *v1) + 0x188);

    v31(v32);
    sub_1E4200524();

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v44 = v11;
  v45 = v10;
  v46 = v4;
  v47 = v2;
  v12 = OBJC_IVAR____TtC8VideosUI14LibLocalSource_mpMenuItems;
  OUTLINED_FUNCTION_11_3();
  v49 = v12;
  v50 = v0;
  v13 = *(v0 + v12);
  v14 = sub_1E32AE9B0(v13);
  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {
      v15 = sub_1E32AE9B0(v13);
      goto LABEL_20;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }
    }

    sub_1E37D4BA4();
    OUTLINED_FUNCTION_33_94();
    sub_1E4206254();
    sub_1E4206254();
    if (v53 == v51 && v54 == v52)
    {
      break;
    }

    v17 = OUTLINED_FUNCTION_97_0();

    if (v17)
    {
      goto LABEL_18;
    }

    v18 = __OFADD__(v15++, 1);
    if (v18)
    {
      goto LABEL_66;
    }
  }

LABEL_18:
  if (__OFADD__(v15, 1))
  {
    goto LABEL_75;
  }

  if (v15 + 1 == sub_1E32AE9B0(v13))
  {
LABEL_20:
    v19 = sub_1E32AE9B0(v13);
    if (v19 < v15)
    {
      goto LABEL_74;
    }

    v1 = v50;
    sub_1E4134F2C(v15, v19);
    swift_endAccess();
    v4 = v46;
    v2 = v47;
    v10 = v45;
    v11 = v44;
    goto LABEL_22;
  }

  v33 = v15 + 5;
  while (1)
  {
    v34 = v33 - 4;
    if ((v13 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v33 - 4, v13);
    }

    else
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v34 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }
    }

    OUTLINED_FUNCTION_33_94();
    sub_1E4206254();
    sub_1E4206254();
    if (v53 != v51 || v54 != v52)
    {
      break;
    }

LABEL_56:
    v42 = v33 - 3;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_69;
    }

    if (v13 >> 62)
    {
      v43 = sub_1E4207384();
    }

    else
    {
      v43 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v33;
    if (v42 == v43)
    {
      goto LABEL_20;
    }
  }

  v36 = OUTLINED_FUNCTION_97_0();

  if (v36)
  {
    goto LABEL_56;
  }

  if (v34 == v15)
  {
    goto LABEL_55;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1E6911E60](v15, v13);
    v38 = MEMORY[0x1E6911E60](v33 - 4, v13);
  }

  else
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    v39 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= v39)
    {
      goto LABEL_77;
    }

    if (v34 >= v39)
    {
      goto LABEL_78;
    }

    v37 = *(v13 + 8 * v15 + 32);
    v38 = *(v13 + 8 * v33);
  }

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *(v50 + v49) = v13;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    v13 = sub_1E37EFA58(v13);
    *(v50 + v49) = v13;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v41 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_72;
  }

  *((v13 & 0xFFFFFFFFFFFFFF8) + 8 * v15 + 0x20) = v38;

  *(v50 + v49) = v13;
  if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_64;
    }

LABEL_53:
    if (v34 >= *(v41 + 16))
    {
      goto LABEL_73;
    }

    *(v41 + 8 * v33) = v37;

    *(v50 + v49) = v13;
LABEL_55:
    v18 = __OFADD__(v15++, 1);
    if (v18)
    {
      goto LABEL_70;
    }

    goto LABEL_56;
  }

  v13 = sub_1E37EFA58(v13);
  *(v50 + v49) = v13;
  v41 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((v34 & 0x8000000000000000) == 0)
  {
    goto LABEL_53;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_1E4134AB8(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E4135F00(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1E4134B64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E4136730(v2);
  v4 = sub_1E4136790(v3);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_16_0();
  v11 = sub_1E41369CC(v7, v8, v9, v4, v6, v10);
  v12 = OUTLINED_FUNCTION_39_0();
  sub_1E3746E04(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_16_0();
  if (!v11)
  {
    sub_1E41367E4(v15, v16, v17, v3, v1);
    v15 = OUTLINED_FUNCTION_16_0();
  }

  sub_1E3746E04(v15, v16, v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4134C2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1E4134EEC(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1E327F454(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1E3251BE8(v8, v11);
      sub_1E3251BE8(v11, v10);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1E4134EEC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_1E3251BE8(v10, v3 + 40 * v6 + 32);
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1E325F748(v8, &qword_1ECF2CE70);
    return 0;
  }

  return v3;
}

uint64_t sub_1E4134DB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E3280A90(0, &qword_1ECF300C8);
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1E4134E1C(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1E4207384();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1E37FEA14(v8, 0);

    a4 = sub_1E4136230(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_1E34AF4DC();
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

void *sub_1E4134EEC(void *a1, int64_t a2, char a3)
{
  result = sub_1E397A5D4(a1, a2, a3, *v3, &qword_1ECF32E38);
  *v3 = result;
  return result;
}

uint64_t sub_1E4134F2C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1E32AE9B0(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1E32AE9B0(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1E3797CDC(result);

  return sub_1E3AD8CE8(v4, a2, 0);
}

uint64_t sub_1E4134FD0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E413504C(v6);
  return sub_1E4207554();
}

void sub_1E413504C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E4134DB0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E4135280(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1E413512C(0, v3, 1, a1);
  }
}

void sub_1E413512C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
    while (2)
    {
      v23 = v4;
      v24 = a3;
      v7 = *(v25 + 8 * a3);
      v22 = v5;
      do
      {
        v8 = *v4;
        v9 = v7;
        v10 = v8;
        v11 = [v9 seasonNumber];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 v6[216]];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v10 seasonNumber];
        if (v14)
        {
          v15 = v14;
          v16 = v6;
          v17 = [v14 v6[216]];

          v18 = v13 < v17;
          v6 = v16;
          if (!v18)
          {
            break;
          }
        }

        else
        {

          if ((v13 & 0x8000000000000000) == 0)
          {
            break;
          }
        }

        if (!v25)
        {
          __break(1u);
          return;
        }

        v19 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v19;
        v4 -= 8;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v24 + 1;
      v4 = v23 + 8;
      v5 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E4135280(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v5;
      v9 = v6;
      v10 = v6 + 1;
      v111 = v6;
      v112 = v8;
      if (v6 + 1 >= v8)
      {
        goto LABEL_32;
      }

      v11 = *a3;
      v12 = v6 + 1;
      v13 = *(*a3 + 8 * v6);
      v14 = *(*a3 + 8 * v10);
      v15 = v13;
      v16 = [v14 seasonNumber];
      if (v16)
      {
        v4 = v16;
        v115 = [v16 integerValue];
      }

      else
      {
        v115 = 0;
      }

      v17 = [v15 seasonNumber];
      v108 = v7;
      if (v17)
      {
        v4 = v17;
        v113 = [v17 integerValue];

        v14 = v15;
        v15 = v4;
      }

      else
      {
        v113 = 0;
      }

      v18 = (v11 + 8 * v9 + 16);
      v106 = 8 * v9;
      v19 = 8 * v9 + 8;
      v20 = v12;
      v21 = v112;
      while (1)
      {
        v118 = v20++;
        if (v20 >= v21)
        {
          break;
        }

        v22 = *(v18 - 1);
        v23 = *v18;
        v24 = v22;
        v25 = [v23 seasonNumber];
        if (v25)
        {
          v4 = v25;
          v26 = [v25 integerValue];
        }

        else
        {
          v26 = 0;
        }

        v27 = [v24 seasonNumber];
        if (v27)
        {
          v4 = v27;
          v28 = [v27 integerValue];

          v21 = v112;
          if (v115 < v113 == v26 >= v28)
          {
            break;
          }
        }

        else
        {

          if (v115 < v113 == v26 >= 0)
          {
            break;
          }
        }

        ++v18;
        v19 += 8;
      }

      if (v115 >= v113)
      {
        break;
      }

      v29 = v111;
      v7 = v108;
      if (v20 < v111)
      {
        goto LABEL_140;
      }

      v30 = v118;
      if (v111 < v20)
      {
        v31 = v106;
        do
        {
          if (v29 != v30)
          {
            v32 = v30;
            v33 = *a3;
            if (!*a3)
            {
              goto LABEL_147;
            }

            v34 = *(v33 + v31);
            *(v33 + v31) = *(v33 + v19);
            *(v33 + v19) = v34;
            v30 = v32;
          }

          ++v29;
          v35 = v30--;
          v19 -= 8;
          v31 += 8;
        }

        while (v29 < v35);
        v10 = v20;
        goto LABEL_30;
      }

      v10 = v20;
      v9 = v111;
LABEL_32:
      v36 = a3[1];
      if (v10 >= v36)
      {
        goto LABEL_56;
      }

      v37 = v10;
      v73 = __OFSUB__(v10, v9);
      v38 = v10 - v9;
      if (v73)
      {
        goto LABEL_139;
      }

      if (v38 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_141;
        }

        if (v9 + a4 >= v36)
        {
          v39 = a3[1];
        }

        else
        {
          v39 = v9 + a4;
        }

        if (v39 >= v9)
        {
          v10 = v37;
          if (v37 == v39)
          {
            goto LABEL_56;
          }

          v109 = v7;
          v40 = *a3;
          v41 = *a3 + 8 * v37 - 8;
          v42 = v9 - v37;
          v114 = v39;
LABEL_42:
          v119 = v10;
          v43 = *(v40 + 8 * v10);
          v44 = v42;
          v116 = v41;
          while (1)
          {
            v45 = *v41;
            v46 = v43;
            v47 = v45;
            v48 = [v46 seasonNumber];
            if (v48)
            {
              v4 = v48;
              v49 = [v48 integerValue];
            }

            else
            {
              v49 = 0;
            }

            v50 = [v47 seasonNumber];
            if (v50)
            {
              v4 = v50;
              v51 = [v50 integerValue];

              if (v49 >= v51)
              {
                goto LABEL_53;
              }
            }

            else
            {

              if ((v49 & 0x8000000000000000) == 0)
              {
                goto LABEL_53;
              }
            }

            if (!v40)
            {
              break;
            }

            v52 = *v41;
            v43 = *(v41 + 8);
            *v41 = v43;
            *(v41 + 8) = v52;
            v41 -= 8;
            if (__CFADD__(v44++, 1))
            {
LABEL_53:
              v10 = v119 + 1;
              v41 = v116 + 8;
              --v42;
              if (v119 + 1 == v114)
              {
                v10 = v114;
                v7 = v109;
                v9 = v111;
                goto LABEL_56;
              }

              goto LABEL_42;
            }
          }

          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

LABEL_142:
        __break(1u);
LABEL_143:
        v7 = sub_1E37FFF5C(v7);
        goto LABEL_110;
      }

      v10 = v37;
LABEL_56:
      if (v10 < v9)
      {
        goto LABEL_138;
      }

      v120 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E37FFF70(0, *(v7 + 2) + 1, 1, v7);
      }

      v55 = *(v7 + 2);
      v54 = *(v7 + 3);
      v56 = v55 + 1;
      v57 = v120;
      if (v55 >= v54 >> 1)
      {
        v97 = sub_1E37FFF70((v54 > 1), v55 + 1, 1, v7);
        v57 = v120;
        v7 = v97;
      }

      *(v7 + 2) = v56;
      v58 = v7 + 32;
      v59 = &v7[16 * v55 + 32];
      *v59 = v111;
      *(v59 + 1) = v57;
      v60 = *a1;
      if (!*a1)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v55)
      {
        while (1)
        {
          v4 = v56 - 1;
          v61 = &v58[16 * v56 - 16];
          v62 = &v7[16 * v56];
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v63 = *(v7 + 4);
            v64 = *(v7 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_76:
            if (v66)
            {
              goto LABEL_125;
            }

            v78 = *v62;
            v77 = *(v62 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_128;
            }

            v82 = *(v61 + 1);
            v83 = v82 - *v61;
            if (__OFSUB__(v82, *v61))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v80, v83))
            {
              goto LABEL_133;
            }

            if (v80 + v83 >= v65)
            {
              if (v65 < v83)
              {
                v4 = v56 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v56 < 2)
          {
            goto LABEL_127;
          }

          v85 = *v62;
          v84 = *(v62 + 1);
          v73 = __OFSUB__(v84, v85);
          v80 = v84 - v85;
          v81 = v73;
LABEL_91:
          if (v81)
          {
            goto LABEL_130;
          }

          v87 = *v61;
          v86 = *(v61 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_132;
          }

          if (v88 < v80)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v4 - 1 >= v56)
          {
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
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
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
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v92 = v7;
          v93 = &v58[16 * v4 - 16];
          v7 = *v93;
          v94 = &v58[16 * v4];
          v95 = *(v94 + 1);
          sub_1E4135A3C((*a3 + 8 * *v93), (*a3 + 8 * *v94), (*a3 + 8 * v95), v60);
          if (v121)
          {
            goto LABEL_118;
          }

          if (v95 < v7)
          {
            goto LABEL_120;
          }

          v96 = *(v92 + 2);
          if (v4 > v96)
          {
            goto LABEL_121;
          }

          *v93 = v7;
          *(v93 + 1) = v95;
          if (v4 >= v96)
          {
            goto LABEL_122;
          }

          v121 = 0;
          v56 = v96 - 1;
          memmove(&v58[16 * v4], v94 + 16, 16 * (v96 - 1 - v4));
          v7 = v92;
          *(v92 + 2) = v96 - 1;
          if (v96 <= 2)
          {
            goto LABEL_105;
          }
        }

        v67 = &v58[16 * v56];
        v68 = *(v67 - 8);
        v69 = *(v67 - 7);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_123;
        }

        v72 = *(v67 - 6);
        v71 = *(v67 - 5);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_124;
        }

        v74 = *(v62 + 1);
        v75 = v74 - *v62;
        if (__OFSUB__(v74, *v62))
        {
          goto LABEL_126;
        }

        v73 = __OFADD__(v65, v75);
        v76 = v65 + v75;
        if (v73)
        {
          goto LABEL_129;
        }

        if (v76 >= v70)
        {
          v90 = *v61;
          v89 = *(v61 + 1);
          v73 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v73)
          {
            goto LABEL_137;
          }

          if (v65 < v91)
          {
            v4 = v56 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v6 = v120;
      v5 = a3[1];
      if (v120 >= v5)
      {
        goto LABEL_108;
      }
    }

    v10 = v20;
    v7 = v108;
LABEL_30:
    v9 = v111;
    goto LABEL_32;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_108:
  v4 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_110:
  v98 = v7;
  v99 = (v7 + 16);
  for (i = *(v7 + 2); ; *v99 = i)
  {
    v7 = (i - 2);
    if (i < 2)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_146;
    }

    v101 = &v98[16 * i];
    v102 = *v101;
    v103 = &v99[2 * i];
    v104 = v103[1];
    sub_1E4135A3C((*a3 + 8 * *v101), (*a3 + 8 * *v103), (*a3 + 8 * v104), v4);
    if (v121)
    {
      break;
    }

    if (v104 < v102)
    {
      goto LABEL_134;
    }

    if (v7 >= *v99)
    {
      goto LABEL_135;
    }

    v121 = 0;
    *v101 = v102;
    *(v101 + 1) = v104;
    v105 = *v99 - i;
    if (*v99 < i)
    {
      goto LABEL_136;
    }

    i = *v99 - 1;
    memmove(v103, v103 + 2, 16 * v105);
  }

LABEL_118:
}

uint64_t sub_1E4135A3C(void **__src, id *__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (v8 < v9)
  {
    v10 = a4 == __src && &__src[v8] > a4;
    if (!v10)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[v8];
    v12 = &selRef_processPendingChanges;
    v50 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v27 = v7;
        goto LABEL_50;
      }

      v14 = *v4;
      v15 = *v6;
      v16 = v14;
      v17 = [v15 v12[475]];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 integerValue];
      }

      else
      {
        v19 = 0;
      }

      v20 = [v16 v12[475]];
      if (v20)
      {
        v21 = v20;
        v22 = v6;
        v23 = [v20 integerValue];

        v10 = v19 < v23;
        v6 = v22;
        if (v10)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (v19 < 0)
        {
LABEL_18:
          v24 = v6;
          v25 = v7 == v6++;
          goto LABEL_21;
        }
      }

      v24 = v4;
      v25 = v7 == v4++;
LABEL_21:
      v5 = v50;
      if (!v25)
      {
        *v7 = *v24;
      }

      ++v7;
      v12 = &selRef_processPendingChanges;
    }
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[v9];
  v49 = v7;
LABEL_30:
  v27 = v6;
  v28 = v6 - 1;
  --v5;
  for (i = v6 - 1; v11 > v4 && v27 > v7; v28 = i)
  {
    v30 = v11 - 1;
    v31 = *v28;
    v32 = *(v11 - 1);
    v33 = v31;
    v34 = [v32 seasonNumber];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 integerValue];
    }

    else
    {
      v36 = 0;
    }

    v37 = [v33 seasonNumber];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 integerValue];
      v40 = v32;
      v41 = v11;
      v42 = v4;
      v43 = v27;
      v44 = v5;
      v45 = v39;

      v10 = v36 < v45;
      v5 = v44;
      v27 = v43;
      v4 = v42;
      v11 = v41;
      if (v10)
      {
        goto LABEL_47;
      }
    }

    else
    {

      if (v36 < 0)
      {
LABEL_47:
        v7 = v49;
        v6 = i;
        if (v5 + 1 != v27)
        {
          *v5 = *i;
        }

        goto LABEL_30;
      }
    }

    if (v11 != v5 + 1)
    {
      *v5 = *v30;
    }

    --v5;
    v11 = v30;
    v7 = v49;
  }

LABEL_50:
  v46 = v11 - v4;
  if (v27 != v4 || v27 >= &v4[v46])
  {
    memmove(v27, v4, 8 * v46);
  }

  return 1;
}

id sub_1E4135D84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  v5 = [a3 seriesForCanonicalIDOrAdamID_];

  return v5;
}

uint64_t sub_1E4135DD4(void *a1, SEL *a2, unint64_t *a3)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_1E3280A90(0, a3);
  OUTLINED_FUNCTION_6_240();
  v6 = OUTLINED_FUNCTION_57();
  sub_1E32ADE7C(v6, v7);
  v8 = sub_1E4206624();

  return v8;
}

uint64_t sub_1E4135E6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E4136098((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E4135F00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1EE23B0B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF40818, &qword_1ECF40810);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40810);
          v9 = sub_1E374111C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4136098(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E3280A90(0, &qword_1ECF300C8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF40830, &qword_1ECF40828);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40828);
          v9 = sub_1E39A4E38(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E4136230(void *result, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1E4207344();
    sub_1E3280A90(0, a5);
    OUTLINED_FUNCTION_6_240();
    sub_1E32ADE7C(a7, a5);
    result = sub_1E4206664();
    v8 = v29;
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(a4 + 32);
    v12 = a4 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a4 + 56);
  }

  v19 = a3;
  if (!a2)
  {
    v20 = 0;
LABEL_28:
    *v10 = v8;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    v10[4] = v15;
    return v20;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = a5;
    v20 = 0;
    v25 = v13;
    v21 = (v13 + 64) >> 6;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 < 0)
      {
        if (!sub_1E42073C4())
        {
          goto LABEL_26;
        }

        sub_1E3280A90(0, v26);
        swift_dynamicCast();
        result = v28;
        v19 = a3;
        if (!v28)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v15)
        {
          while (1)
          {
            v23 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v23 >= v21)
            {
              v15 = 0;
              goto LABEL_26;
            }

            v15 = *(v12 + 8 * v23);
            ++v14;
            if (v15)
            {
              v14 = v23;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        v24 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        result = *(*(v8 + 48) + ((v14 << 9) | (8 * v24)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v20;
      if (v22 == v19)
      {
        v20 = v19;
LABEL_26:
        v13 = v25;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1E413645C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1E327F454(v4, v21);
      __swift_project_boxed_opaque_existential_1(v21, v21[3]);
      v6 = OUTLINED_FUNCTION_39_0();
      result = v7(v6);
      v9 = result ? result : v3;
      v1 = v9[2];
      v10 = v5[2];
      v11 = &v1[v10];
      if (__OFADD__(v10, v1))
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v11 > v5[3] >> 1)
      {
        if (v10 <= v11)
        {
          v12 = &v1[v10];
        }

        else
        {
          v12 = v10;
        }

        result = sub_1E3AF90C0(result, v12, 1, v5);
        v5 = result;
      }

      if (v9[2])
      {
        if ((v5[3] >> 1) - v5[2] < v1)
        {
          goto LABEL_25;
        }

        v13 = OUTLINED_FUNCTION_24_4();
        __swift_instantiateConcreteTypeFromMangledNameV2(v13);
        swift_arrayInitWithCopy();

        if (v1)
        {
          v14 = v5[2];
          v15 = __OFADD__(v14, v1);
          v16 = &v1[v14];
          if (v15)
          {
            goto LABEL_26;
          }

          v5[2] = v16;
        }
      }

      else
      {

        if (v1)
        {
          goto LABEL_24;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      v4 += 40;
      if (!--v2)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    OUTLINED_FUNCTION_5_0();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = OUTLINED_FUNCTION_38();
      v18 = sub_1E3CE2508(v17);

      OUTLINED_FUNCTION_26_3();
      (*((*MEMORY[0x1E69E7D40] & v19) + 0x270))(v20 + 24, v18, nullsub_1, 0);
    }
  }

  return result;
}

uint64_t sub_1E4136690(uint64_t a1, uint64_t a2)
{
  result = sub_1E41366E8(qword_1EE282A80, a2, type metadata accessor for LibLocalSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E41366E8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4136730(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1E4207334();
  }

  else
  {
    return sub_1E42072F4();
  }
}

uint64_t sub_1E4136790(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1E42073E4();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

void sub_1E41367E4(uint64_t a1, int a2, char a3, uint64_t a4, void *a5)
{
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v8 = OUTLINED_FUNCTION_67_0();
      MEMORY[0x1E6911D00](v8);
      v9 = OUTLINED_FUNCTION_62_0();
      sub_1E3280A90(v9, v10);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    v11 = OUTLINED_FUNCTION_62_0();
    sub_1E3280A90(v11, v12);
    OUTLINED_FUNCTION_67_0();
    if (sub_1E4207364() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_67_0();
      sub_1E4207374();
      swift_dynamicCast();
      a5 = v19;
      v13 = sub_1E4206F54();
      v14 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v13 & v14;
        if (((*(a4 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v15 = *(*(a4 + 48) + 8 * v7);
        v16 = sub_1E4206F64();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v17 = *(*(a4 + 48) + 8 * v7);

  v18 = v17;
}

BOOL sub_1E41369CC(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1E6911CB0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

void sub_1E4136A1C()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong sideBandContentChanged];
}

uint64_t sub_1E4136AC0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_eventUUIDs;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1E4136B20()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_appLaunchEventUUID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E4136B78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_appLaunchEventUUID);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1E4136BD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001E42931F0 == a2;
    if (v6 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x80000001E4293210 == a2;
      if (v7 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001E4293230 == a2;
        if (v8 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x80000001E4293250 == a2;
          if (v9 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001E4293270 == a2;
            if (v10 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x80000001E4293290 == a2;
              if (v11 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001E42932B0 == a2;
                if (v12 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000025 && 0x80000001E42932D0 == a2;
                  if (v13 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000023 && 0x80000001E4293300 == a2;
                    if (v14 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v16 = a1 == OUTLINED_FUNCTION_11_193() && a2 == v15;
                      if (v16 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v17 = a1 == 0x495555746E657665 && a2 == 0xEA00000000007344;
                        if (v17 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000012 && 0x80000001E4293340 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v19 = OUTLINED_FUNCTION_0_54();

                          if (v19)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

uint64_t sub_1E4136F00(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_14_189();
      result = v3 - 3;
      break;
    case 2:
      OUTLINED_FUNCTION_14_189();
      result = v6 - 5;
      break;
    case 3:
    case 6:
      OUTLINED_FUNCTION_14_189();
      result = v8 | 2;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      OUTLINED_FUNCTION_14_189();
      result = v7 - 9;
      break;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      OUTLINED_FUNCTION_14_189();
      result = v9 + 12;
      break;
    case 9:
      OUTLINED_FUNCTION_14_189();
      result = v5 + 10;
      break;
    case 10:
      result = OUTLINED_FUNCTION_11_193();
      break;
    case 11:
      result = 0x495555746E657665;
      break;
    case 12:
      OUTLINED_FUNCTION_14_189();
      result = v4 - 7;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E41370A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4136BD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E41370DC(uint64_t a1)
{
  v2 = sub_1E41375AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4137118(uint64_t a1)
{
  v2 = sub_1E41375AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MetricsRenderSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRenderSession();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MetricsRenderSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408A8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E41375AC();
  sub_1E4207C14();
  LOBYTE(v16) = 0;
  sub_1E42078C4();
  if (v2)
  {
    return (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_javascriptRuntimeStart);
  OUTLINED_FUNCTION_1_312(1);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_javascriptRuntimeEnd);
  OUTLINED_FUNCTION_1_312(2);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_mediaLibraryInitializeStart);
  OUTLINED_FUNCTION_1_312(3);
  sub_1E42078B4();
  OUTLINED_FUNCTION_7_30(OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_mediaLibraryInitializeEnd);
  OUTLINED_FUNCTION_1_312(4);
  sub_1E42078B4();
  OUTLINED_FUNCTION_3_281(5);
  OUTLINED_FUNCTION_3_281(6);
  OUTLINED_FUNCTION_3_281(7);
  OUTLINED_FUNCTION_3_281(8);
  OUTLINED_FUNCTION_3_281(9);
  OUTLINED_FUNCTION_1_312(10);
  v11 = sub_1E42078C4();
  v12 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB8))(v11);
  v15[7] = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  sub_1E4137AFC(&qword_1ECF408B0);
  sub_1E42078E4();

  (*((*v12 & *v3) + 0xD0))(v13);
  OUTLINED_FUNCTION_1_312(12);
  sub_1E4207894();
  (*(v7 + 8))(v10, v5);
}

unint64_t sub_1E41375AC()
{
  result = qword_1ECF6E370[0];
  if (!qword_1ECF6E370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6E370);
  }

  return result;
}

id MetricsRenderSession.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408B8);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_appLaunchEventUUID];
  *v6 = 0;
  v6[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E41375AC();
  sub_1E4207C04();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    type metadata accessor for MetricsRenderSession();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_7_249();
    v7 = sub_1E4207834();
    v8 = &v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid];
    *v8 = v7;
    v8[1] = v9;
    OUTLINED_FUNCTION_0_353(1);
    v10 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v10, v11, OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_javascriptRuntimeStart);
    OUTLINED_FUNCTION_0_353(2);
    v12 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v12, v13, OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_javascriptRuntimeEnd);
    OUTLINED_FUNCTION_0_353(3);
    v14 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v14, v15, OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_mediaLibraryInitializeStart);
    OUTLINED_FUNCTION_0_353(4);
    v16 = sub_1E4207824();
    OUTLINED_FUNCTION_5_108(v16, v17, OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_mediaLibraryInitializeEnd);
    OUTLINED_FUNCTION_0_353(5);
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_processStartTime] = sub_1E4207874();
    OUTLINED_FUNCTION_0_353(6);
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uikitApplicationLaunchStart] = sub_1E4207874();
    OUTLINED_FUNCTION_0_353(7);
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uikitApplicationLaunchEnd] = sub_1E4207874();
    OUTLINED_FUNCTION_0_353(8);
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_applicationControllerWithBootUrlStart] = sub_1E4207874();
    OUTLINED_FUNCTION_0_353(9);
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_applicationControllerWithBootUrlEnd] = sub_1E4207874();
    LOBYTE(v29) = 10;
    OUTLINED_FUNCTION_7_249();
    v19 = sub_1E4207834();
    v20 = &v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_resourceRevNum];
    *v20 = v19;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
    v30 = 11;
    sub_1E4137AFC(&qword_1ECF408C0);
    OUTLINED_FUNCTION_7_249();
    sub_1E4207864();
    *&v1[OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_eventUUIDs] = v29;
    LOBYTE(v29) = 12;
    OUTLINED_FUNCTION_7_249();
    v22 = sub_1E4207804();
    v24 = v23;
    OUTLINED_FUNCTION_27_6();
    swift_beginAccess();
    *v6 = v22;
    v6[1] = v24;

    v25 = type metadata accessor for MetricsRenderSession();
    v28.receiver = v3;
    v28.super_class = v25;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    v26 = OUTLINED_FUNCTION_9_202();
    v27(v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1E4137AFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C420);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E4137B68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E4137BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x1E69E6158];

  if (a3)
  {
    v18 = a3;
  }

  else
  {
    sub_1E41FE614();
    a2 = sub_1E41FE5E4();
    v18 = v19;
    (*(v14 + 8))(v17, v12);
  }

  *&v42 = a2;
  *(&v42 + 1) = v18;
  sub_1E329504C(&v42, v41);

  swift_isUniquelyReferenced_nonNull_native();
  v40 = a1;
  sub_1E32A87C0(v41, 1684632949, 0xE400000000000000);
  v20 = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  *&v42 = MEMORY[0x1E69E7CC0];
  sub_1E329504C(&v42, v41);
  swift_isUniquelyReferenced_nonNull_native();
  v40 = v20;
  sub_1E32A87C0(v41, 0x495555746E657665, 0xEA00000000007344);
  v21 = objc_opt_self();
  v22 = sub_1E4205C44();

  *&v42 = 0;
  v23 = [v21 dataWithJSONObject:v22 options:0 error:&v42];

  v24 = v42;
  if (v23)
  {
    v25 = sub_1E41FE464();
    v27 = v26;

    sub_1E41FDE24();
    swift_allocObject();
    sub_1E41FDE14();
    type metadata accessor for MetricsRenderSession();
    sub_1E41382E0(&qword_1ECF315B8);
    sub_1E41FDE04();
    sub_1E38DCCB0(v25, v27);

    return v42;
  }

  else
  {
    v28 = v24;
    v29 = sub_1E41FE274();

    swift_willThrow();
    v30 = sub_1E324FBDC();
    (*(v8 + 16))(v11, v30, v6);
    v31 = v29;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v29;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_1E323F000, v32, v33, "Could not parse MetricsRenderSession from VUIDictionary: %@", v34, 0xCu);
      sub_1E3A66B00(v35);
      MEMORY[0x1E69143B0](v35, -1, -1);
      MEMORY[0x1E69143B0](v34, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v11, v6);
    return 0;
  }
}

uint64_t sub_1E41380B8(void *a1)
{
  v2 = v1;
  v5 = *(a1 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid);
  v4 = *(a1 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_uuid + 8);
  v6 = OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_eventUUIDs;
  swift_beginAccess();

  sub_1E3F6A904();
  v7 = *(*(v1 + v6) + 16);
  sub_1E3F6A950(v7);
  v8 = *(v1 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  *(v1 + v6) = v8;
  swift_endAccess();
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid);
  v11 = *(v2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid + 8);
  v12 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x100);

  result = v12(v10, v11);
  if (*(a1 + OBJC_IVAR____TtC8VideosUI18MetricsRenderEvent_isAppLaunch) == 1)
  {
    v14 = (v2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_appLaunchEventUUID);
    OUTLINED_FUNCTION_27_6();
    swift_beginAccess();
    *v14 = v5;
    v14[1] = v4;
  }

  return result;
}

uint64_t static MetricsRenderSession.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid) == *(a2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid) && *(a1 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid + 8) == *(a2 + OBJC_IVAR____TtC8VideosUI20MetricsRenderSession_uuid + 8))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E41382E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsRenderSession();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsRenderSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MetricsRenderSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E4138488()
{
  result = qword_1ECF6E600[0];
  if (!qword_1ECF6E600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6E600);
  }

  return result;
}

unint64_t sub_1E41384E0()
{
  result = qword_1EE29D480;
  if (!qword_1EE29D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE29D480);
  }

  return result;
}

unint64_t sub_1E4138538()
{
  result = qword_1EE29D488[0];
  if (!qword_1EE29D488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29D488);
  }

  return result;
}

__objc2_class **sub_1E413858C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  result = (*(*v1 + 392))();
  if (result && *result != _TtC8VideosUI20EmptyStateViewLayout)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1E413861C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E4138690()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E4138700(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E4138740(a1);
  return v2;
}

uint64_t sub_1E4138740(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI19EmptyStatePresenter__isPortrait;
  v11[15] = 0;
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v3);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1E413882C(char a1)
{
  v3 = a1 & 1;
  result = sub_1E413861C();
  if ((result & 1) != v3)
  {
    if ((*(*v1 + 96))())
    {
      sub_1E3F38DE8(a1 & 1);
    }

    return sub_1E4138690();
  }

  return result;
}

uint64_t sub_1E41388D0()
{

  v1 = OBJC_IVAR____TtC8VideosUI19EmptyStatePresenter__isPortrait;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E4138978@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmptyStatePresenter();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for EmptyStatePresenter()
{
  result = qword_1EE29F330;
  if (!qword_1EE29F330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E4138A08()
{
  result = qword_1ECF408D0;
  if (!qword_1ECF408D0)
  {
    type metadata accessor for EmptyStatePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF408D0);
  }

  return result;
}

uint64_t sub_1E4138A60()
{
  type metadata accessor for EmptyStatePresenter();
  sub_1E4138A08();
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

void sub_1E4138AA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v67 = v2;
  v68 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v66 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v60 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v60 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408D8);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408F0);
  OUTLINED_FUNCTION_0_10();
  v61 = v24;
  OUTLINED_FUNCTION_5_7();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v60 - v27;
  v29 = v1[2];
  if (v29 && (v30 = (*(*v29 + 392))(v26)) != 0 && (v31 = (*(*v30 + 456))(v30), v60 = v19, , v19 = v60, v31 != 7) && (v73[0] = v31, LOBYTE(v69) = 1, sub_1E3793D00(), (sub_1E4205E84() & 1) != 0))
  {
    v32 = 1;
    v33 = sub_1E4201D44();
  }

  else
  {
    v33 = sub_1E4201D54();
    v32 = 0;
  }

  *v15 = v33;
  *(v15 + 1) = 0;
  v15[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF408F8);
  sub_1E4139174(v1, v34, v35, v36, v37, v38, v39, v40, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  if (v32)
  {
    sub_1E4203DA4();
  }

  else
  {
    sub_1E4203DB4();
  }

  sub_1E42015C4();
  sub_1E3741EA0(v15, v19, &qword_1ECF408D8);
  memcpy(&v19[*(v16 + 36)], v73, 0x70uLL);
  v41 = &v23[*(v20 + 36)];
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
  v43 = *MEMORY[0x1E697DBA8];
  sub_1E4200B44();
  OUTLINED_FUNCTION_2();
  (*(v44 + 104))(v41 + v42, v43);
  *v41 = swift_getKeyPath();
  v45 = sub_1E3741EA0(v19, v23, &qword_1ECF408E0);
  if ((*(*v1 + 96))(v45) && (v46 = sub_1E37BD068(), v47 = , v48 = (*(*v46 + 1712))(v47), , v48 != 13))
  {
    v50 = v63;
    sub_1E3B033CC(v48, v63);
  }

  else
  {
    v49 = sub_1E42012F4();
    v50 = v63;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v49);
  }

  sub_1E3B03114(v50, v11);
  sub_1E325F6F0(v50, &qword_1ECF2A250);
  v51 = sub_1E4139AE0();
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_40_13();
  v54 = sub_1E32752B0(v52, v53);
  v55 = v64;
  sub_1E4202FA4();
  OUTLINED_FUNCTION_40_13();
  sub_1E325F6F0(v56, v57);
  sub_1E325F6F0(v23, &qword_1ECF408E8);
  v58 = v65;
  sub_1E4202474();
  v69 = v20;
  v70 = v55;
  v71 = v51;
  v72 = v54;
  OUTLINED_FUNCTION_2_273();
  swift_getOpaqueTypeConformance2();
  v59 = v62;
  sub_1E4203224();
  (*(v66 + 8))(v58, v68);
  (*(v61 + 8))(v28, v59);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4139174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_32_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v24);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40918);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &a9 - v39;
  sub_1E4139338();
  sub_1E41397E4();
  sub_1E3743538(v40, v37, &qword_1ECF40918);
  sub_1E3743538(v32, v29, &qword_1ECF35E78);
  sub_1E3743538(v37, v23, &qword_1ECF40918);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40920);
  sub_1E3743538(v29, v23 + *(v41 + 48), &qword_1ECF35E78);
  sub_1E325F6F0(v32, &qword_1ECF35E78);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F6F0(v42, v43);
  sub_1E325F6F0(v29, &qword_1ECF35E78);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F6F0(v44, v45);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4139338()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40928);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v51 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42[-v20];
  v22 = *(v1 + 16);
  if (v22)
  {
    v49 = v19;
    v50 = v7;
    v52 = v3;
    v23 = *(*v22 + 488);

    v25 = v23(v24);
    if (v25)
    {
      v26 = sub_1E373E010(23, v25);

      if (v26)
      {
        if (*v26 == _TtC8VideosUI13TextViewModel)
        {
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          v27 = sub_1E3C27528();
          OUTLINED_FUNCTION_0_21();
          sub_1E3883AF4(v27);

          (*(v51 + 8))(v12, v8);
          v28 = sub_1E3C27528();
          if (v28)
          {
            (*(*v28 + 152))(v56);
          }

          sub_1E4203DA4();
          sub_1E4200D94();
          v51 = v56[5];
          v47 = v60;
          v48 = v58;
          v46 = v61;
          LOBYTE(v55) = 1;
          LOBYTE(v54) = v57;
          v53 = v59;
          v34 = v49;
          v35 = *(v49 + 16);
          v35(v17, v21, v13);
          v43 = v55;
          v44 = v54;
          v45 = v53;
          v36 = v50;
          v35(v50, v17, v13);
          v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40930) + 48);

          v38 = v36 + v37;
          *v38 = 0;
          *(v38 + 8) = v43;
          *(v38 + 16) = v51;
          *(v38 + 24) = v44;
          *(v38 + 32) = v48;
          *(v38 + 40) = v45;
          v39 = v46;
          *(v38 + 48) = v47;
          *(v38 + 56) = v39;
          v40 = *(v34 + 8);
          v40(v21, v13);
          v40(v17, v13);
          v41 = v52;
          sub_1E3741EA0(v36, v52, &qword_1ECF40928);
          __swift_storeEnumTagSinglePayload(v41, 0, 1, v4);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_203();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
}

void sub_1E41397E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    v28 = v6;
    v17 = *(*v16 + 488);

    v19 = v17(v18);
    if (v19)
    {
      v20 = sub_1E373E010(15, v19);

      if (v20)
      {
        if (*v20 == _TtC8VideosUI13TextViewModel)
        {
          OUTLINED_FUNCTION_18();
          sub_1E3F23370();
          v21 = sub_1E3C27528();
          OUTLINED_FUNCTION_0_21();
          sub_1E3883AF4(v21);

          (*(v28 + 8))(v9, v4);
          (*(v12 + 32))(v3, v15, v10);
          __swift_storeEnumTagSinglePayload(v3, 0, 1, v10);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_9_203();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}