void sub_1E3AA45D4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v270 = v4;
  v6 = v5;
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 192);
  v10 = v9();
  v11 = MEMORY[0x1E69DDCE0];
  if (!v10 || (OUTLINED_FUNCTION_30(), (*(v12 + 176))(v296), v13 = *v296, v14 = *&v296[1], v15 = *&v296[3], , (v297 & 1) != 0))
  {
    v13 = *v11;
    v14 = v11[1];
    v15 = v11[3];
  }

  v278 = v13;
  v16 = OUTLINED_FUNCTION_17_4();
  v269 = v17;
  v19 = sub_1E3952BE0(v16, v18, v17, v15);
  v292 = MEMORY[0x1E69E7CC0];
  v293 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_30_39();
  if (!v9() || (OUTLINED_FUNCTION_30(), (*(v20 + 1920))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v21 + 152))(v298), v22 = *v298, v23 = *&v298[1], v280 = *&v298[2], v281 = *&v298[3], , (v299 & 1) != 0))
  {
    v22 = *v11;
    v23 = v11[1];
    v280 = v11[2];
    v281 = v11[3];
  }

  v24 = v6 - v19;
  OUTLINED_FUNCTION_48();
  v265 = *(v25 + 240);
  v26 = v265();
  v268 = v6;
  if (v26)
  {
    v27 = v26;
    [v26 vui:v6 - v19 sizeThatFits:0.0];
    v271 = v28;
    v30 = v29;
  }

  else
  {
    v271 = 0.0;
    v30 = 0.0;
  }

  v31 = v14 + v23;
  v32 = [v1 vuiTraitCollection];
  v33 = [v32 isAXLargeEnabled];

  v262 = v270 * 0.5;
  v34 = v270 * 0.5 - v30 * 0.5;
  v276 = v30 + sub_1E3952BD8(v278, v14, v269);
  MidY = sub_1E3952BD8(v22, v23, v280);
  v275 = v33;
  v264 = v23;
  if (v33)
  {
    v295 = v23;
    v302.origin.x = v31;
    v302.origin.y = v278 + v22;
    v302.size.width = v271;
    v302.size.height = v30;
    v36 = v22 + CGRectGetMaxY(v302);
  }

  else
  {
    v37 = v30;
    v282 = v24;
    v38 = objc_opt_self();
    v39 = sub_1E391D8AC();
    v40 = *v39;
    v41 = [v1 vuiTraitCollection];
    [v38 scaleContentSizeValue:v41 forTraitCollection:v40];
    v43 = v42;

    v44 = *v39;
    v45 = (*((*v7 & *v1) + 0x150))();
    if (v45)
    {

      v46 = v43 + v44;
    }

    else
    {
      v46 = 0.0;
    }

    v36 = v278;
    v47 = sub_1E3952BE0(v22, v264, v280, v281);
    v303.size.width = v271;
    v24 = v282 - (v46 + v271 + v47);
    v303.origin.x = v31;
    v303.origin.y = v34;
    v30 = v37;
    v303.size.height = v37;
    v295 = v281 + CGRectGetMaxX(v303);
  }

  v48 = v276 + MidY;
  v294 = v36;
  OUTLINED_FUNCTION_48();
  v50 = (*(v49 + 312))();
  v273 = v9;
  if (!v50)
  {
    v54 = 0.0;
    v279 = 0;
    if (v3)
    {
      v91 = 1;
      v55 = 0.0;
      goto LABEL_83;
    }

    v55 = 0.0;
LABEL_54:
    v285.origin.x = 0.0;
    v92 = MEMORY[0x1E69E7D40];
    if ((v275 & 1) == 0)
    {
      v294 = (v270 - v54) * 0.5;
    }

    OUTLINED_FUNCTION_32();
    v94 = *(v93 + 216);
    v95 = v94();
    if (v95)
    {
      v96 = v95;
      [v1 bounds];
      OUTLINED_FUNCTION_19_61();
      [v1 vuiIsRTL];
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v96 setFrame_];
    }

    v97 = v265();
    if (v97)
    {
      v7 = v97;
      v98 = v94();
      if (v98)
      {
        v99 = v98;
        [v98 bounds];
        OUTLINED_FUNCTION_19_61();
      }

      else
      {
        OUTLINED_FUNCTION_38_25();
      }

      v100 = OUTLINED_FUNCTION_14_87();
      [v101 v102];
    }

    OUTLINED_FUNCTION_34_37();
    v104 = v103();
    if (v104)
    {
      v7 = 0;
      sub_1E3AA0998(v104, &v295, &v294, &v293, &v285, v1, &v292);
    }

    OUTLINED_FUNCTION_32();
    v105 += 36;
    v106 = *v105;
    v107 = (*v105)();
    if (v107 && (v289[0] = v107, sub_1E3280A90(0, &qword_1EE23AE80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3BDD0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v287 + 1))
      {
        sub_1E3251BE8(&v286, v289);
        v7 = v290;
        v108 = v291;
        __swift_project_boxed_opaque_existential_1(v289, v290);
        v109 = v265();
        v110 = [v109 image];

        (*(v108 + 8))(v110, v7, v108, v271, v30);
        v92 = MEMORY[0x1E69E7D40];
        v111 = __swift_destroy_boxed_opaque_existential_1(v289);
LABEL_71:
        v112 = (v106)(v111);
        if (v112)
        {
          v7 = v112;
          v113 = v94();
          if (v113)
          {
            v114 = v113;
            [v113 bounds];
            OUTLINED_FUNCTION_19_61();
          }

          else
          {
            OUTLINED_FUNCTION_38_25();
          }

          v115 = OUTLINED_FUNCTION_14_87();
          [v116 v117];
        }

        OUTLINED_FUNCTION_32();
        v119 = (*(v118 + 408))();
        if (v119)
        {
          v7 = v119;
          OUTLINED_FUNCTION_30_39();
          if (v9())
          {
            OUTLINED_FUNCTION_30();
            (*(v120 + 176))(v300);
          }

          OUTLINED_FUNCTION_30_39();
          v121 = v9();
          if (v121)
          {
            OUTLINED_FUNCTION_30();
            (*(v122 + 1920))();
            OUTLINED_FUNCTION_122();

            OUTLINED_FUNCTION_26();
            (*(v123 + 152))(v301);
          }

          v124 = *((*v92 & *v7) + 0x70);
          (v124)(v121);
          v124();
          v125 = v7;
          [v1 bounds];
          MidY = v126;
          [v1 vuiIsRTL];
          VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
          [v125 setFrame_];
        }

        v91 = 0;
        goto LABEL_83;
      }
    }

    else
    {
      v288 = 0;
      v286 = 0u;
      v287 = 0u;
    }

    v111 = sub_1E3AA22F4(&v286);
    goto LABEL_71;
  }

  v51 = v50;
  v266 = v3;
  v52 = sub_1E32AE9B0(v50);
  v53 = 0;
  v279 = 0;
  v7 = (v51 & 0xFFFFFFFFFFFFFF8);
  v54 = 0.0;
  v55 = 0.0;
  v277 = MEMORY[0x1E69E7CC0];
  v274 = MEMORY[0x1E69E7CC0];
  while (v52 != v53)
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x1E6911E60](v53, v51);
    }

    else
    {
      if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_191;
      }

      v56 = *(v51 + 8 * v53 + 32);
    }

    v57 = v56;
    v58 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      return;
    }

    v59 = [v56 textLayout];
    [v59 margin];
    v61 = v60;
    MidY = v62;

    [v57 sizeThatFits_];
    v55 = v63;
    if (v63 == 0.0 && v64 == 0.0)
    {

      ++v53;
    }

    else
    {
      if (v24 - MidY < v63)
      {
        v55 = v24 - MidY;
      }

      VUIRoundValue();
      MidY = 0.0;
      v66 = v65 + 0.0;
      if (v61 > 0.0)
      {
        v67 = v279;
        sub_1E3C8B6B4(v279, v61);
        MidY = v68;

        if (MidY < 0.0)
        {
          v69 = 0.0;
        }

        else
        {
          v69 = MidY;
        }

        v66 = v66 + v69;
      }

      if (v266)
      {
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v70 = v277;
        }

        else
        {
          v77 = OUTLINED_FUNCTION_57_12();
          v70 = sub_1E3AA7150(v77, v78, v79, v80);
        }

        v72 = *(v70 + 2);
        v71 = *(v70 + 3);
        if (v72 >= v71 >> 1)
        {
          v81 = OUTLINED_FUNCTION_35(v71);
          v70 = sub_1E3AA7150(v81, v72 + 1, 1, v82);
        }

        *(v70 + 2) = v72 + 1;
        v73 = &v70[16 * v72];
        *(v73 + 4) = v55;
        *(v73 + 5) = v66;
        v277 = v70;
        v293 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = OUTLINED_FUNCTION_57_12();
          v274 = sub_1E39ABC54(v83, v84, v85, v86);
        }

        v75 = *(v274 + 2);
        v74 = *(v274 + 3);
        v76 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v87 = OUTLINED_FUNCTION_35(v74);
          v89 = v88;
          v90 = sub_1E39ABC54(v87, v88, 1, v274);
          v76 = v89;
          v274 = v90;
        }

        *(v274 + 2) = v76;
        *&v274[8 * v75 + 32] = MidY;

        v292 = v274;
      }

      v54 = v54 + v66;
      if (v275)
      {
        v48 = v48 + v66;
      }

      v53 = v58;
      v279 = v57;
    }
  }

  if ((v266 & 1) == 0)
  {
    goto LABEL_54;
  }

  v91 = 1;
LABEL_83:
  [v1 bounds];
  v272 = v127;
  v129 = v128;
  sub_1E3AA6160();
  v267 = [v1 vuiIsRTL];
  memset(&v285, 0, sizeof(v285));
  v130 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x150))();
  if (v130)
  {
    v131 = v130;
    memset(&v284, 0, sizeof(v284));
    v283 = 0;
    type metadata accessor for ContextMenuButton();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_126;
    }

    OUTLINED_FUNCTION_30_39();
    if (v9())
    {
      OUTLINED_FUNCTION_30();
      v7 = (*(v132 + 2088))();

      if (v7 != 20)
      {
        LOBYTE(v289[0]) = v7;
        LOBYTE(v286) = 8;
        sub_1E3AA77D0();
        if (sub_1E4205E84())
        {
          goto LABEL_91;
        }
      }
    }

    OUTLINED_FUNCTION_30_39();
    if (v9() && (OUTLINED_FUNCTION_30(), v7 = (*(v133 + 2088))(), , v7 != 20))
    {
      LOBYTE(v289[0]) = v7;
      LOBYTE(v286) = 9;
      sub_1E3AA77D0();
      if ((sub_1E4205E84() | v275))
      {
        goto LABEL_91;
      }
    }

    else if (v275)
    {
LABEL_91:
      OUTLINED_FUNCTION_34_37();
      v135 = v134();
      if (!v135)
      {
        goto LABEL_126;
      }

      sub_1E37CB21C(v135);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_34_37();
    v174 = v173();
    if (!v174)
    {
      goto LABEL_126;
    }

    sub_1E37FDFF8(v174);
LABEL_119:
    OUTLINED_FUNCTION_11_5();

    if (v7)
    {
      OUTLINED_FUNCTION_30_39();
      if (!v9() || (OUTLINED_FUNCTION_30(), (*(v175 + 1992))(), OUTLINED_FUNCTION_122(), , OUTLINED_FUNCTION_26(), (*(v176 + 152))(&v286), v177 = *(&v287 + 1), , (v288 & 1) != 0))
      {
        v177 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      if (v275)
      {
        v283 = 1;
        [v7 numberOfLinesRequiredForTextWidth_];
        VUIRoundValue();
        if (v91)
        {

          MaxY = 0.0;
        }

        else
        {
          v284.size.height = v178;
          objc_opt_self();
          sub_1E391D8B8();
          v245 = [v1 vuiTraitCollection];
          v246 = OUTLINED_FUNCTION_49_6();
          [v247 v248];
          v250 = v249;

          v284.size.width = v250;
          if (v279)
          {
            [v279 frame];
            MaxY = CGRectGetMaxY(v311);
          }

          else
          {
            MaxY = 0.0;
          }

          v284.origin.y = MaxY;
        }

        MidY = MaxY;
LABEL_127:
        v180 = [v1 vuiIsRTL];
        OUTLINED_FUNCTION_19();
        v306.origin.x = OUTLINED_FUNCTION_26_43();
        if (CGRectEqualToRect(v306, v316))
        {
          v181 = [v131 vui:v272 sizeThatFits:v129];
          v183 = v182;
          v185 = v184;
          if (!(v273)(v181) || (OUTLINED_FUNCTION_30(), (*(v186 + 1968))(), OUTLINED_FUNCTION_11_5(), , OUTLINED_FUNCTION_47_0(), (*(v187 + 152))(v289), v188 = *&v290, , (v291 & 1) != 0))
          {
            v188 = *(MEMORY[0x1E69DDCE0] + 24);
          }

          sub_1E3A92050();
          OUTLINED_FUNCTION_34_37();
          v190 = v189();
          if (v190)
          {
            v191 = sub_1E37FDFF8(v190);

            v192 = MEMORY[0x1E69E7D40];
            if (v191)
            {
              v193 = [v191 textLayout];
              v194 = [v193 maximumContentSizeCategory];

              v195 = objc_opt_self();
              v196 = [v191 textLayout];
              [v196 margin];
              v198 = v197;

              v199 = [v1 vuiTraitCollection];
              [v195 scaleContentSizeValue:v199 forTraitCollection:v194 maximumContentSizeCategory:v198];

              v200 = [v191 vuiFont];
              if (v200)
              {
                v201 = v200;
                [v200 capHeight];
              }
            }
          }

          else
          {
            v192 = MEMORY[0x1E69E7D40];
          }

          VUIRoundValue();
          v203 = v202;
          OUTLINED_FUNCTION_8_77();
          v284.origin.x = v272 - CGRectGetWidth(v307) - v188;
          v284.origin.y = v203;
          v284.size.width = v183;
          v284.size.height = v185;
          MidY = v203;
          if (!v180)
          {
            goto LABEL_145;
          }
        }

        else
        {
          v192 = MEMORY[0x1E69E7D40];
          if (!v180)
          {
LABEL_145:
            v208 = OUTLINED_FUNCTION_26_43();
            [v209 v210];
            OUTLINED_FUNCTION_8_77();
            CGRectGetWidth(v308);
            v211 = VUIRoundValue();
            v7 = (*((*v192 & *v1) + 0x168))(v211);
            MEMORY[0x1EEE9AC00](v7);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31E98);
            sub_1E4148DE0(sub_1E3AA7824);

            v140 = v272;
            if ((v283 & 1) == 0)
            {
              OUTLINED_FUNCTION_34_37();
              v213 = v212();
              if (v213)
              {
                v214 = v213;
                v7 = sub_1E32AE9B0(v213);
                for (i = 0; v7 != i; ++i)
                {
                  if ((v214 & 0xC000000000000001) != 0)
                  {
                    v216 = MEMORY[0x1E6911E60](i, v214);
                  }

                  else
                  {
                    if (i >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_193;
                    }

                    v216 = *(v214 + 8 * i + 32);
                  }

                  v217 = v216;
                  if (__OFADD__(i, 1))
                  {
                    goto LABEL_192;
                  }

                  [v216 frame];
                  OUTLINED_FUNCTION_18_3();
                  if (CGRectIntersectsRect(v309, v284))
                  {
                    if (v180)
                    {
                      [v1 bounds];
                      OUTLINED_FUNCTION_2_6();
                      OUTLINED_FUNCTION_17_4();
                      VUIRectWithFlippedOriginRelativeToBoundingRect();
                      OUTLINED_FUNCTION_18_3();
                    }

                    v218 = OUTLINED_FUNCTION_17_4();
                    [v219 v220];
                  }
                }
              }
            }

            v9 = v273;
            goto LABEL_161;
          }
        }

        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_26_43();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        OUTLINED_FUNCTION_47_26();
        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_8_77();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        v284.origin.x = v204;
        v284.origin.y = v205;
        v284.size.width = v206;
        v284.size.height = v207;
        goto LABEL_145;
      }

      if ((v91 & 1) == 0)
      {
        [v7 frame];
        v284.size.height = CGRectGetHeight(v312);
        v251 = objc_opt_self();
        v252 = *sub_1E391D8AC();
        v253 = [v1 vuiTraitCollection];
        [v251 scaleContentSizeValue:v253 forTraitCollection:v252];
        v255 = v254;

        v284.size.width = v255;
        v256 = CGRect.center.getter(0.0, 0.0, v255, v284.size.height);
        CGRect.center.setter(v256, v263);
        OUTLINED_FUNCTION_8_77();
        v284.origin.x = v272 - CGRectGetWidth(v313) - v177;
        OUTLINED_FUNCTION_8_77();
        MidY = fmin(CGRectGetWidth(v314) + -40.0, 0.0);
        OUTLINED_FUNCTION_8_77();
        Height = CGRectGetHeight(v315);
        v258 = sub_1E3952C10(MidY, fmin(Height + -30.0, 0.0));
        sub_1E3CEE8A0(v258, v259, v260, v261, v284.origin.x);
        OUTLINED_FUNCTION_47_26();

        goto LABEL_127;
      }
    }

LABEL_126:
    MidY = 0.0;
    goto LABEL_127;
  }

  VUIRoundValue();
  v137 = v136;
  OUTLINED_FUNCTION_34_37();
  v139 = v138();
  if (v139)
  {
    sub_1E37FDFF8(v139);
    OUTLINED_FUNCTION_11_5();

    v140 = v272;
    if (v7)
    {
      OUTLINED_FUNCTION_32();
      v142 = (*(v141 + 360))();
      if (v142)
      {
        v143 = v142;
        v144 = v7;
        v7 = v9;
        v145 = v144;
        v146 = 0.0;
        [v144 sizeThatFits_];
        v148 = v147;
        [v145 frame];
        OUTLINED_FUNCTION_19_61();
        v150 = v149;

        OUTLINED_FUNCTION_30_39();
        if ((v7)())
        {
          OUTLINED_FUNCTION_30();
          (*(v151 + 2016))();
          OUTLINED_FUNCTION_11_5();

          OUTLINED_FUNCTION_47_0();
          (*(v152 + 152))(v289);

          if (v291)
          {
            v146 = 0.0;
          }

          else
          {
            v146 = *&v289[1];
          }
        }

        [v143 vui:v268 sizeThatFits:v270];
        v154 = v153;
        v156 = v155;
        v285.size.width = v153;
        v285.size.height = v155;
        v157 = v148 + MidY + v146;
        v285.origin.x = v157;
        v304.origin.x = OUTLINED_FUNCTION_14_87();
        v304.size.height = v150;
        MidY = CGRectGetMidY(v304);
        v158 = CGRect.center.getter(v157, 0.0, v154, v156);
        v159 = CGRect.center.setter(v158, MidY);
        if (v267)
        {
          MidY = v285.origin.x;
          [v1 bounds];
          OUTLINED_FUNCTION_2_6();
          OUTLINED_FUNCTION_14_87();
          VUIRectWithFlippedOriginRelativeToBoundingRect();
          v285.origin.x = v160;
          v285.origin.y = v161;
          v285.size.width = v162;
          v285.size.height = v163;
        }

        OUTLINED_FUNCTION_34_37();
        v165 = v164();
        v140 = v272;
        if (v165)
        {
          v166 = v165;
          v7 = sub_1E32AE9B0(v165);
          for (j = 0; v7 != j; ++j)
          {
            if ((v166 & 0xC000000000000001) != 0)
            {
              v168 = MEMORY[0x1E6911E60](j, v166);
            }

            else
            {
              if (j >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_195;
              }

              v168 = *(v166 + 8 * j + 32);
            }

            v169 = v168;
            if (__OFADD__(j, 1))
            {
              goto LABEL_194;
            }

            [v168 frame];
            OUTLINED_FUNCTION_19_61();
            if (CGRectIntersectsRect(v305, v285))
            {
              if (v267)
              {
                [v1 bounds];
                OUTLINED_FUNCTION_2_6();
                OUTLINED_FUNCTION_16_70();
                VUIRectWithFlippedOriginRelativeToBoundingRect();
                OUTLINED_FUNCTION_19_61();
              }

              v170 = OUTLINED_FUNCTION_16_70();
              [v171 v172];
            }
          }
        }

        else
        {
        }

        v9 = v273;
      }

      else
      {
      }
    }
  }

  else
  {
    v140 = v272;
  }

LABEL_161:
  OUTLINED_FUNCTION_32();
  v222 = (*(v221 + 360))();
  if (v222)
  {
    v223 = v222;
    [v222 setFrame_];
  }

  OUTLINED_FUNCTION_32();
  v225 = (*(v224 + 384))();
  if (v225)
  {
    v226 = v225;
    v227 = v279;
    if (v140 > 0.0)
    {
      [v225 prepareLayoutWithMaxWidth_];
    }

    v228 = v226;
    OUTLINED_FUNCTION_56_18();
    [v229 v230];
    v232 = v231;
    OUTLINED_FUNCTION_34_37();
    v234 = v233();
    if (v234 && (sub_1E37CB21C(v234), OUTLINED_FUNCTION_122(), , sel_sizeThatFits_))
    {
      +[(sizeThatFits: *)sel_sizeThatFits_];
      v235 = CGRectGetMaxY(v310);
      OUTLINED_FUNCTION_30_39();
      v236 = v9();
      v237 = 0.0;
      if (v236)
      {
        v237 = *(v236 + 200);
      }

      [(sizeThatFits: *)sel_sizeThatFits_ bottomMarginWithBaselineMargin:v237];
      v239 = v238;

      MidY = v235 + v239 + 0.0;
    }

    else
    {
      OUTLINED_FUNCTION_30_39();
      v240 = v9();
      if (v240)
      {
        MidY = *(v240 + 200);
      }
    }

    if (v140 > 0.0 && v232 > 0.0)
    {
      v241 = 0.0;
      if (v267)
      {
        [v1 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
        MidY = v242;
        v140 = v243;
        v232 = v244;
      }

      [v7 setFrame_];

      goto LABEL_181;
    }
  }

  else
  {

    v227 = v279;
  }

LABEL_181:
  OUTLINED_FUNCTION_42();
}

uint64_t sub_1E3AA6160()
{
  OUTLINED_FUNCTION_21();
  if (!(*(v0 + 192))())
  {
    return 0;
  }

  OUTLINED_FUNCTION_26_0();
  (*(v1 + 1920))();
  OUTLINED_FUNCTION_26_0();
  v3 = (*(v2 + 504))();

  if (v3 == 18)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1E3AA6240(double a1)
{
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 312))();
  v5 = MEMORY[0x1E69DDCE0];
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = v4;
  result = sub_1E32AE9B0(v4);
  if (!result)
  {

LABEL_8:
    v41 = v5[1];
    v42 = *v5;
    v14 = v5[3];
    v40 = v5[2];
    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
  }

  OUTLINED_FUNCTION_11_5();

  v9 = [v1 textLayout];

  [v9 margin];
  v41 = v11;
  v42 = v10;
  v40 = v12;
  v14 = v13;

LABEL_9:
  OUTLINED_FUNCTION_25_0();
  v16 = *(v15 + 192);
  v17 = v16();
  if (!v17 || (OUTLINED_FUNCTION_30(), (*(v18 + 1944))(v19, v20, v21), OUTLINED_FUNCTION_11_5(), , OUTLINED_FUNCTION_47_0(), (*(v22 + 152))(v43), v23 = *v43, v24 = *&v43[1], v26 = *&v43[2], v25 = *&v43[3], v17 = , (v44 & 1) != 0))
  {
    v23 = *v5;
    v24 = v5[1];
    v26 = v5[2];
    v25 = v5[3];
  }

  if ((v16)(v17))
  {
    OUTLINED_FUNCTION_30();
    (*(v27 + 1944))(v28, v29, v30);
    OUTLINED_FUNCTION_11_5();

    (*(*v1 + 1696))(v31);
  }

  v32 = sub_1E3AA6160();
  OUTLINED_FUNCTION_25_0();
  if ((*(v33 + 440))(a1) != 0.0 || v34 != 0.0)
  {
    if ((v32 & 0xFE) == 4 || (OUTLINED_FUNCTION_25_0(), (v39 = (*(v35 + 264))(v36, v37, v38)) == 0))
    {
      sub_1E3952BE0(v42, v41, v40, v14);
    }

    else
    {

      sub_1E3952BE0(v23, v24, v26, v25);
    }
  }

  return VUIRoundValue();
}

unint64_t sub_1E3AA65A0(unint64_t a1)
{
  v1 = a1;
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v19 = sub_1E4207384();
    if (v19)
    {
      v20 = v19;
      v2 = sub_1E37FEA14(v19, 0);
      sub_1E3AA740C(v2 + 32, v20, v1);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x1E69E7CC0];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v1 = *(v2 + 16);
        v3 = v1 >> 1;
        goto LABEL_6;
      }

LABEL_39:
      v23 = sub_1E4207384();
      if (v23 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v1 = v23;
    v3 = v23 / 2;
LABEL_6:
    if (v1 + 1 < 3)
    {
      return v2;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v1 - (v6 - 3);
      if (__OFSUB__(v1, v6 - 3))
      {
        break;
      }

      v8 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60]();
          v12 = MEMORY[0x1E6911E60](v1 - (v6 - 3), v2);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          if (v7 >= v9)
          {
            goto LABEL_34;
          }

          v10 = *(v2 + 8 * v7 + 32);
          v11 = *(v2 + 8 * v6);
          v12 = v10;
        }

        v13 = v12;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_1E37EFA58(v2);
          v14 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v14) = 0;
        }

        v15 = v2 & 0xFFFFFFFFFFFFFF8;
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v13;

        if ((v2 & 0x8000000000000000) != 0 || v14)
        {
          v2 = sub_1E37EFA58(v2);
          v15 = v2 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_30:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v7 >= *(v15 + 16))
        {
          goto LABEL_35;
        }

        v17 = v15 + 8 * v7;
        v18 = *(v17 + 32);
        *(v17 + 32) = v11;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }
}

void sub_1E3AA6800(double a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 240))();
  if (v3)
  {

    if (a1 > 0.0)
    {
      OUTLINED_FUNCTION_21();
      if ((*(v4 + 192))())
      {
        type metadata accessor for CardView();
        OUTLINED_FUNCTION_8();
        (*(v5 + 1920))();
        sub_1E3AA6900(a1);
        OUTLINED_FUNCTION_19_61();
      }
    }
  }

  OUTLINED_FUNCTION_16_70();
}

uint64_t sub_1E3AA6900(double a1)
{
  OUTLINED_FUNCTION_30();
  (*(v3 + 504))();
  if ((sub_1E3A92050() & 1) != 0 || (sub_1E3A92050() & 1) != 0 || (sub_1E3A92050()) && a1 > 0.0)
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 208))();
    (*(*v1 + 312))(0, 0);
  }

  OUTLINED_FUNCTION_8();
  return (*(v5 + 2288))();
}

void sub_1E3AA6CD8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 288))();
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      OUTLINED_FUNCTION_21();
      v6 = (*(v5 + 240))();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 image];
        if (v8)
        {

          v9 = [v7 image];
          [v4 sampleWithImage_];

          v10 = v7;
          v2 = v9;
        }

        else
        {
          v10 = v2;
          v2 = v7;
        }
      }
    }
  }
}

uint64_t sub_1E3AA6E44(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AD40);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void *sub_1E3AA7018(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3AA7150(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF31EC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_1E3AA7250(void *a1, int64_t a2, char a3)
{
  result = sub_1E3AA7270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3AA7270(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31ED8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3AA73A8(void *a1)
{
  v1 = [a1 vuiText];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3AA740C(uint64_t result, uint64_t a2, unint64_t a3)
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
        sub_1E3280A90(0, &qword_1EE23AD40);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3827828(&qword_1EE23B448, &qword_1ECF2FB50);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB50);
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

void sub_1E3AA7590(void **a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *a1;
  if (!(*((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xC0))() || (OUTLINED_FUNCTION_30(), v9 = (*(v8 + 2016))(), v10 = , (*(*v9 + 152))(v41, v10), v11 = v41[3], , (v42 & 1) != 0))
  {
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v43.origin.x = OUTLINED_FUNCTION_55_21();
  [v7 vui:CGRectGetWidth(v43) sizeThatFits:0.0];
  *(v2 + 16) = v12;
  *(v2 + 24) = v13;
  if (*v3 == 1)
  {
    if (v13 == 0.0 && v12 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 6.0;
    }

    v16 = OUTLINED_FUNCTION_55_21();
    if (v4)
    {
      MinX = CGRectGetMinX(*&v16);
      v21 = MinX - CGRectGetWidth(*v2) - *&v11 - v15;
    }

    else
    {
      v21 = v15 + *&v11 + CGRectGetMaxX(*&v16);
    }

    *v2 = v21;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_55_21();
    if (v4)
    {
      v26 = *&v11 + CGRectGetMaxX(*&v22);
    }

    else
    {
      v27 = CGRectGetMinX(*&v22);
      Width = CGRectGetWidth(*v2);
      v26 = sub_1E4149E0C(v11, 0, v27 - Width);
    }

    *v2 = v26;
    v29 = *(v2 + 8);
    v30 = *(v2 + 16);
    v31 = *(v2 + 24);
    v32 = CGRectGetWidth(*&v26);
    v33 = OUTLINED_FUNCTION_14_87();
    *v5 = *v5 - (v32 + sub_1E3952BE0(v33, v34, v35, *&v11) - *(v6 + 8));
  }

  v44.origin.x = OUTLINED_FUNCTION_55_21();
  CGRectGetMidY(v44);
  v36 = OUTLINED_FUNCTION_23_44();
  v40 = CGRect.center.getter(v36, v37, v38, v39);
  CGRect.center.setter(v40, *&v11);
}

unint64_t sub_1E3AA77D0()
{
  result = qword_1EE259C70;
  if (!qword_1EE259C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE259C70);
  }

  return result;
}

double sub_1E3AA7824(void **a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **(v1 + 16)) + 0xC0))())
  {
    OUTLINED_FUNCTION_30();
    (*(v9 + 2016))();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_47_0();
    (*(v10 + 152))(v44);

    if (v45)
    {
      v11 = 0;
    }

    else
    {
      v11 = v44[3];
    }
  }

  else
  {
    v11 = 0;
  }

  [v8 vui:v4[2] sizeThatFits:v4[3]];
  v3->size.width = v12;
  v3->size.height = v13;
  if (*v5 == 1)
  {
    if (v13 == 0.0 && v12 == 0.0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 6.0;
    }

    v16 = *v4;
    v17 = *(v4 + 1);
    v18 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v6)
    {
      CGRectGetMinX(*&v16);
      v46.origin.x = OUTLINED_FUNCTION_23_44();
      CGRectGetWidth(v46);
      v20 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E0C(v20, v21, v22) - v15;
    }

    else
    {
      CGRectGetMaxX(*&v16);
      v31 = OUTLINED_FUNCTION_27_36();
      v23 = v15 + sub_1E4149E00(v31, v32, v33);
    }
  }

  else
  {
    v24 = *v4;
    v25 = *(v4 + 1);
    v26 = *(v4 + 2);
    v27 = *(v4 + 3);
    if (v6)
    {
      CGRectGetMaxX(*&v24);
      v28 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E00(v28, v29, v30);
    }

    else
    {
      CGRectGetMinX(*&v24);
      v47.origin.x = OUTLINED_FUNCTION_23_44();
      CGRectGetWidth(v47);
      v34 = OUTLINED_FUNCTION_27_36();
      v23 = sub_1E4149E0C(v34, v35, v36);
    }
  }

  v3->origin.x = v23;
  CGRectGetMidY(*v4);
  v37 = OUTLINED_FUNCTION_23_44();
  v41 = CGRect.center.getter(v37, v38, v39, v40);
  CGRect.center.setter(v41, v2);
  Width = CGRectGetWidth(*v3);
  result = *v7 - sub_1E4149E00(v11, v8, Width);
  *v7 = result;
  return result;
}

uint64_t sub_1E3AA7AAC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t sub_1E3AA7B7C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1E3AA7BCC(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_weakLoadStrong();
  return sub_1E3AA7C48;
}

void sub_1E3AA7C48(void **a1, char a2)
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

uint64_t sub_1E3AA7CC8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 104);
  if (v2)
  {
    v2 = *(v2 + 16);
  }

  result = v1 - v2;
  if (__OFSUB__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E3AA7CE8()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v2 = *(v1 + 16);

  return v2 != 0;
}

uint64_t sub_1E3AA7D30()
{
  OUTLINED_FUNCTION_1_132();
  v0 = swift_allocObject();
  sub_1E3AA7DB8();
  return v0;
}

void sub_1E3AA7DB8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_1_132();
  v1[11] = 0;
  swift_weakInit();
  v1[13] = 0;
  v1[14] = 0;
  v1[15] = MEMORY[0x1E69E7CC0];
  v1[2] = v8;
  v1[3] = v7;
  v1[6] = v4;
  v1[7] = v3;
  v1[4] = v6;
  v1[5] = v5;
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = v9;
  v10 = v9;
  sub_1E3AA8304();

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AA7E30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

void sub_1E3AA7E68(unint64_t a1, char a2)
{
  v3 = *(v2 + 72);
  if (*(v2 + 112) != v3)
  {
    if (a2)
    {
      *(v2 + 112) = 0;
    }

    v4 = sub_1E32AE9B0(a1);
    v5 = *(v2 + 112);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 112) = v7;
      sub_1E3AA7F1C();
      if (v8)
      {
        v9 = v8;
        swift_beginAccess();
        sub_1E3AA9790(v9);
        swift_endAccess();
      }

      if (*(v2 + 112) == v3)
      {
        sub_1E3AA8B30();
      }
    }
  }
}

void sub_1E3AA7F1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = type metadata accessor for ComingSoonInfo();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v28 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v25 - v8;
  v32[0] = MEMORY[0x1E69E7CC0];
  v9 = sub_1E32AE9B0(v1);
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {
      v11 = v32[0];
      v12 = sub_1E32AE9B0(v32[0]);
      if (!v12)
      {
LABEL_32:

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v13 = v12;
      v26 = v4;
      v27 = v2;
      v14 = 0;
      v30 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v13 == v14)
        {
          goto LABEL_32;
        }

        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1E6911E60](v14, v11);
        }

        else
        {
          if (v14 >= *(v11 + 16))
          {
            goto LABEL_36;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_35;
        }

        v33 = &unk_1F5D5D0A8;
        v34 = &off_1F5D5C758;
        LOBYTE(v32[0]) = 4;
        v17 = sub_1E39C29A4(v32);
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(v32);
        if (!v19)
        {
          break;
        }

        v31 = 6;
        (*(*v15 + 776))(v32, &v31, &unk_1F5D5D7F8, &off_1F5D5C8F8);
        if (v33)
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_25;
          }

          v20 = v28;
          sub_1E41FE564();

          *v20 = v17;
          v20[1] = v19;
          sub_1E3AA9C1C(v20, v29);
          v21 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_1E3AA94D4(0, *(v21 + 16) + 1, 1, v21);
          }

          v23 = *(v21 + 16);
          v22 = *(v21 + 24);
          if (v23 >= v22 >> 1)
          {
            v21 = sub_1E3AA94D4(v22 > 1, v23 + 1, 1, v21);
          }

          *(v21 + 16) = v23 + 1;
          v24 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v30 = v21;
          sub_1E3AA9C1C(v29, v21 + v24 + *(v26 + 72) * v23);
          v14 = v16;
        }

        else
        {

          sub_1E325F748(v32, &unk_1ECF296E0);
LABEL_25:
          ++v14;
        }
      }

      goto LABEL_25;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for EpisodeCollectionViewModel();
    if (sub_1E3CCBC80())
    {
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1E3AA8304()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v28 = [v8 sidebandMediaLibrary];

  v9 = v1[2];
  v10 = v1[3];
  v11 = sub_1E4205ED4();
  v12 = [v28 seasonForCanonicalIDOrAdamID:v11 createIfNeeded:0];

  if (v12)
  {
    v13 = sub_1E3AA9AF0(v12);
    if (v13)
    {
      v14 = sub_1E3AA85E8(v13);

      v15 = sub_1E32AE9D4();
      (*(v4 + 16))(v7, v15, v2);

      v16 = sub_1E41FFC94();
      v17 = sub_1E42067E4();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v27 = v4;
        v19 = v18;
        v20 = swift_slowAlloc();
        v26 = v2;
        v21 = v14;
        v22 = v20;
        v29 = v20;
        *v19 = 134218242;
        *(v19 + 4) = *(v21 + 16);

        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_1E3270FC8(v9, v10, &v29);
        _os_log_impl(&dword_1E323F000, v16, v17, "SeasonMetadata:: loaded %ld coming soon videos of season: %s from CoreData", v19, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v22);
        v14 = v21;
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v27 + 8))(v7, v26);
      }

      else
      {

        (*(v4 + 8))(v7, v2);
      }

      v1[13] = v14;

      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AA85E8(uint64_t a1)
{
  v58 = sub_1E41FE5D4();
  v3 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v47 - v8);
  v10 = type metadata accessor for ComingSoonInfo();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v47 - v13;
  v51 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E3AA9B90();
    sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90);
    result = sub_1E4206664();
    a1 = v63;
    v15 = v64;
    v17 = v65;
    v16 = v66;
    v18 = v67;
  }

  else
  {
    v19 = -1 << *(a1 + 32);
    v15 = a1 + 56;
    v17 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(a1 + 56);

    v16 = 0;
  }

  v50 = v17;
  v22 = (v17 + 64) >> 6;
  v52 = MEMORY[0x1E69E7CC0];
  v53 = a1;
  v54 = (v3 + 32);
  v55 = v15;
  v60 = v22;
LABEL_8:
  for (i = v16; a1 < 0; v18 = v61)
  {
    v27 = sub_1E42073C4();
    if (!v27)
    {
      goto LABEL_30;
    }

    v62 = v27;
    sub_1E3AA9B90();
    swift_dynamicCast();
    v26 = v68;
    v16 = i;
    v61 = v18;
    if (!v68)
    {
      goto LABEL_30;
    }

LABEL_17:
    v28 = sub_1E3AA9C80(v26);
    if (v29)
    {
      v30 = v28;
      v31 = v29;
      v32 = [v26 availabilityStartDate];
      if (v32)
      {
        v33 = v32;
        v34 = v57;
        sub_1E41FE584();

        v59 = v30;
        v35 = *v54;
        v36 = v56;
        v37 = v34;
        v38 = v58;
        (*v54)(v56, v37, v58);
        v39 = v36;
        a1 = v53;
        v40 = v38;
        v15 = v55;
        v35(v9 + *(v10 + 20), v39, v40);
        v41 = 0;
        *v9 = v59;
        v9[1] = v31;
        goto LABEL_22;
      }
    }

    v41 = 1;
LABEL_22:
    v22 = v60;
    __swift_storeEnumTagSinglePayload(v9, v41, 1, v10);

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      v42 = v47;
      sub_1E3AA9C1C(v9, v47);
      sub_1E3AA9C1C(v42, v49);
      v43 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1E3AA94D4(0, *(v43 + 16) + 1, 1, v43);
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_1E3AA94D4(v44 > 1, v45 + 1, 1, v43);
      }

      *(v43 + 16) = v45 + 1;
      v46 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v52 = v43;
      result = sub_1E3AA9C1C(v49, v43 + v46 + *(v48 + 72) * v45);
      v18 = v61;
      goto LABEL_8;
    }

    result = sub_1E325F748(v9, &qword_1ECF31F00);
    i = v16;
  }

  v24 = i;
  v25 = v18;
  v16 = i;
  if (v18)
  {
LABEL_13:
    v61 = (v25 - 1) & v25;
    v26 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v25)))));
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_30:
    sub_1E34AF4DC();
    return v52;
  }

  else
  {
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {
        goto LABEL_30;
      }

      v25 = *(v15 + 8 * v16);
      ++v24;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1E3AA8B30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v71 = v3;
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ComingSoonInfo();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v67 - v11);
  if (v0[13])
  {
    v13 = v0[13];
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = v13[2];
  v73 = v6;
  v74 = v0;
  if (v14)
  {
    v78 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v14, 0);
    v15 = v78;
    OUTLINED_FUNCTION_4_111();
    v75 = v13;
    v17 = v13 + v16;
    v18 = *(v6 + 72);
    do
    {
      sub_1E3AA9A30(v17, v12);
      v20 = *v12;
      v19 = v12[1];

      sub_1E3AA9A94(v12);
      v78 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1E377FD30((v21 > 1), v22 + 1, 1);
        v15 = v78;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v17 += v18;
      --v14;
    }

    while (v14);

    v6 = v73;
    v1 = v74;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1E32772D8(v15);
  swift_beginAccess();
  v25 = v1[15];
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v75 = v24;
    v77 = MEMORY[0x1E69E7CC0];

    sub_1E377FD30(0, v26, 0);
    v27 = v77;
    OUTLINED_FUNCTION_4_111();
    v69 = v25;
    v29 = v25 + v28;
    v30 = *(v6 + 72);
    do
    {
      sub_1E3AA9A30(v29, v12);
      v32 = *v12;
      v31 = v12[1];

      sub_1E3AA9A94(v12);
      v77 = v27;
      v34 = *(v27 + 16);
      v33 = *(v27 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1E377FD30((v33 > 1), v34 + 1, 1);
        v27 = v77;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 += v30;
      --v26;
    }

    while (v26);

    v6 = v73;
    v1 = v74;
    v24 = v75;
  }

  v36 = sub_1E32772D8(v27);
  v37 = sub_1E3868C04(v24, v36);

  if ((v37 & 1) == 0)
  {
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 sidebandMediaLibrary];

    v40 = v1[2];
    v41 = v1[3];
    v42 = sub_1E4205ED4();
    v43 = [v39 seasonForCanonicalIDOrAdamID:v42 createIfNeeded:1];

    if (v43)
    {
      sub_1E3AA9C80(v43);
      if (v44)
      {
      }

      else
      {
        v45 = sub_1E4205ED4();
        OUTLINED_FUNCTION_9_77(v45, sel_setCanonicalID_);

        v46 = sub_1E4205ED4();
        OUTLINED_FUNCTION_9_77(v46, sel_setTitle_);
      }

      v47 = sub_1E3AA9AF0(v43);
      if (v47)
      {
        if (sub_1E374CEE0(v47))
        {
        }

        else
        {
          sub_1E3AA9B90();
          sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90);
          v48 = sub_1E4206614();

          [v43 removeComingSoonVideos_];
        }
      }

      v68 = v41;
      v69 = v40;
      v75 = v43;
      v49 = *(v1[15] + 16);
      if (v49)
      {
        OUTLINED_FUNCTION_4_111();
        v52 = v50 + v51;
        v53 = *(v6 + 72);
        v73 = v50;

        do
        {
          sub_1E3AA9A30(v52, v9);
          v54 = sub_1E4205ED4();
          v55 = [v39 comingSoonObjectWithCanonicalID:v54 createIfNeeded:1];

          if (v55)
          {
            v56 = sub_1E4205ED4();
            OUTLINED_FUNCTION_9_77(v56, sel_setCanonicalID_);

            v57 = sub_1E41FE514();
            OUTLINED_FUNCTION_9_77(v57, sel_setAvailabilityStartDate_);

            [v75 addComingSoonVideosObject_];
          }

          sub_1E3AA9A94(v9);
          v52 += v53;
          --v49;
        }

        while (v49);

        v1 = v74;
        v58 = *(v74[15] + 16);
      }

      else
      {
        v58 = 0;
      }

      v59 = sub_1E32AE9D4();
      v61 = v70;
      v60 = v71;
      v62 = v72;
      (*(v71 + 16))(v70, v59, v72);

      v63 = sub_1E41FFC94();
      v64 = sub_1E42067E4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v77 = v66;
        *v65 = 134218242;
        *(v65 + 4) = v58;
        *(v65 + 12) = 2080;
        *(v65 + 14) = sub_1E3270FC8(v69, v68, &v77);
        _os_log_impl(&dword_1E323F000, v63, v64, "SeasonMetadata:: saved %ld coming soon videos of season: %s to CoreData", v65, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v66);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v60 + 8))(v61, v62);
      [v39 saveChangesToManagedObjects];
    }

    v1[13] = v1[15];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AA9208()
{

  swift_weakDestroy();

  return v0;
}

uint64_t sub_1E3AA9260()
{
  sub_1E3AA9208();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t sub_1E3AA9294()
{
  sub_1E4207B44();
  (*(*v0 + 240))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3AA9374()
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_5_2();
  (*(v0 + 240))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E3AA93F0()
{
  MEMORY[0x1E69109E0](*v0, v0[1]);
  MEMORY[0x1E69109E0](0x203A6574616420, 0xE700000000000000);
  type metadata accessor for ComingSoonInfo();
  sub_1E41FE5D4();
  sub_1E3AA9BD4(&qword_1ECF31EE0, 255, MEMORY[0x1E6969530]);
  v1 = sub_1E4207944();
  MEMORY[0x1E69109E0](v1);

  return 540697705;
}

size_t sub_1E3AA94D4(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3AA95C0(v8, v7);
  v10 = *(type metadata accessor for ComingSoonInfo() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3AA96BC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1E3AA95C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31EE8);
  v4 = *(type metadata accessor for ComingSoonInfo() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3AA96BC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ComingSoonInfo(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ComingSoonInfo();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

int64_t sub_1E3AA9790(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3AA99C8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ComingSoonInfo();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ComingSoonInfo()
{
  result = qword_1ECF54FD0;
  if (!qword_1ECF54FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3AA994C()
{
  result = sub_1E41FE5D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_1E3AA99C8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3AA94D4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3AA9A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AA9A94(uint64_t a1)
{
  v2 = type metadata accessor for ComingSoonInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3AA9AF0(void *a1)
{
  v1 = [a1 comingSoonVideos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3AA9B90();
  sub_1E3AA9BD4(&qword_1ECF31EF8, 255, sub_1E3AA9B90);
  v3 = sub_1E4206624();

  return v3;
}

unint64_t sub_1E3AA9B90()
{
  result = qword_1ECF31EF0;
  if (!qword_1ECF31EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF31EF0);
  }

  return result;
}

uint64_t sub_1E3AA9BD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1E3AA9C1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AA9C80(void *a1)
{
  v1 = [a1 canonicalID];
  if (v1)
  {
    v2 = v1;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E3AA9CE0(char a1)
{
  type metadata accessor for ScoreboardLayout();
  if (!a1)
  {
    return sub_1E3AEC014();
  }

  if (a1 == 1)
  {
    return sub_1E3AEC538();
  }

  return sub_1E3AEC99C();
}

uint64_t sub_1E3AA9D30()
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

uint64_t sub_1E3AA9DB4()
{
  sub_1E4206014();
}

uint64_t sub_1E3AA9DF4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3AA9E48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3AA9D30();
  *a1 = result;
  return result;
}

uint64_t sub_1E3AA9E78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3AA9D7C(*v1);
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

char *sub_1E3AA9EC0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_labels] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews] = v1;
  v2 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  type metadata accessor for ScoreboardLayout();
  *&v0[v2] = sub_1E3AEC014();
  v3 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v4 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView;
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView] = v3;
  [v3 setAxis_];
  [*&v0[v4] setAlignment_];
  [*&v0[v4] setDistribution_];
  [*&v0[v4] setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) init];
  *&v0[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView] = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v14.receiver = v0;
  v14.super_class = type metadata accessor for LegacyScoreboardView();
  v6 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView;
  [v6 vui:*&v6[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView] addSubview:0 oldView:?];
  v8 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView;
  [v6 vui:*&v6[OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView] addSubview:0 oldView:?];
  [v6 vui:*&v6[v8] sendSubviewToBack:?];
  [v6 vui:1 setOverrideUserInterfaceStyle:?];
  v9 = [*&v6[v7] widthAnchor];
  v10 = [*&v6[v7] heightAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor_];

  LODWORD(v12) = 1148846080;
  [v11 setPriority_];
  [v11 setActive_];

  return v6;
}

void sub_1E3AAA138()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_labels) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews) = v1;
  v2 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  type metadata accessor for ScoreboardLayout();
  *(v0 + v2) = sub_1E3AEC014();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3AAA1F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v133 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F08);
  sub_1E4148DE0(sub_1E3AABC78);
  [v2 setVuiClipsToBounds_];
  v5 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout;
  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 552);

  v7(&v133, v8);

  if ((v134 & 1) == 0)
  {
    v9 = [v2 vuiLayer];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      sub_1E3952BF8();
      [v11 radiusFromCornerRadii_];
      [v10 setCornerRadius_];
    }
  }

  v12 = *(v4 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
  OUTLINED_FUNCTION_8();
  v14 = *(v13 + 1176);

  *&v16 = COERCE_DOUBLE(v14(v15));
  v18 = v17;

  v19 = *&v16;
  if (v18)
  {
    v19 = 4.0;
  }

  [v12 setSpacing_];
  v20 = sub_1E377C574();
  v21 = sub_1E388ED3C(v20);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);
  v24 = v22 + 32;

  v25 = 0;
  v26 = &qword_1EE23AE80;
  v124 = v22;
  v125 = v12;
  v128 = v4;
  v122 = v22 + 32;
  v123 = v23;
  while (v25 != v23)
  {
    if (v25 >= *(v22 + 16))
    {
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
      goto LABEL_122;
    }

    v27 = *(v24 + 8 * v25);
    v28 = *(v4 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
    v127 = v27;
    v29 = v25;

    v126 = v28;
    v30 = [v28 arrangedSubviews];
    v24 = sub_1E3280A90(0, &qword_1EE23AE80);
    v31 = sub_1E42062B4();

    v132 = v31;
    v129 = v29;
    v135 = v29;
    v136 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
    sub_1E3AABCC4();
    v32 = OUTLINED_FUNCTION_1_133();
    sub_1E38D2054(v32, v33);

    if (!v131)
    {
      goto LABEL_15;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {

LABEL_15:
      v34 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    }

    v22 = v34;
    [v34 setAxis_];
    [v22 setAlignment_];
    [v22 setDistribution_];
    [v22 setTranslatesAutoresizingMaskIntoConstraints_];
    OUTLINED_FUNCTION_36();
    v36 = *(v35 + 1864);

    v38 = v36(v37);

    [v22 setSpacing_];
    v39 = 0;
    v12 = *(v127 + 16);
    v4 = v127 + 40;
    while (v12 != v39)
    {
      v40 = *v4;
      v130 = *(v4 - 8);

      OUTLINED_FUNCTION_36();
      v42 = *(v41 + 1792);

      v44 = v42(v43);

      (*(*v44 + 2408))(v45);
      OUTLINED_FUNCTION_31_4();

      [v44 copy];

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1ECF31F10);
      swift_dynamicCast();
      v46 = v132;
      if (v129 > 1)
      {
        v47 = 1;
      }

      else
      {
        v47 = 2 * (v39 != 0);
      }

      [v132 setAlignment_];
      v48 = [v22 arrangedSubviews];
      v49 = sub_1E42062B4();

      v132 = v49;
      v135 = v39;
      v136 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
      v50 = OUTLINED_FUNCTION_1_133();
      sub_1E38D2054(v50, v51);

      if (v131)
      {
        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (!v52)
        {
        }
      }

      else
      {
        v52 = 0;
      }

      sub_1E3280A90(0, &qword_1EE23AD40);

      v53 = v46;
      v54 = sub_1E3810954(v130, v40, v53, v52);
      LODWORD(v55) = 1148846080;
      [v54 setContentHuggingPriority:0 forAxis:v55];
      LODWORD(v56) = 1148846080;
      [v54 setContentHuggingPriority:1 forAxis:v56];
      LODWORD(v57) = 1148846080;
      [v54 setContentCompressionResistancePriority:1 forAxis:v57];
      [v54 vui_setNeedsLayout];
      [v22 insertArrangedSubview:v54 atIndex:v39];

      v4 += 16;
      v39 = (v39 + 1);
    }

    v26 = [v22 arrangedSubviews];
    v58 = sub_1E42062B4();

    if (v58 >> 62)
    {
      v59 = OUTLINED_FUNCTION_4_112();
    }

    else
    {
      v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = &selRef_vui_disableLocalAsset;

    if (v59 < v12)
    {
      goto LABEL_117;
    }

    if (v59 != v12)
    {
      while (v12 < v59)
      {
        v60 = (v59 - 1);
        v26 = [v22 arrangedSubviews];
        v61 = sub_1E42062B4();

        if ((v61 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1E6911E60](v59 - 1, v61);
        }

        else
        {
          if (v60 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v62 = *(v61 + 8 * v59 + 24);
        }

        v63 = v62;

        [v63 vui_removeFromSuperView];

        v59 = v60;
        if (v12 == v60)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_37:
    [v126 insertArrangedSubview:v22 atIndex:v129];

    v12 = v125;
    v25 = v129 + 1;
    v4 = v128;
    v23 = v123;
    v22 = v124;
    v24 = v122;
    v26 = &qword_1EE23AE80;
  }

  v3 = *(v22 + 16);

  v64 = OUTLINED_FUNCTION_7_107();
  v24 = sub_1E3280A90(0, &qword_1EE23AE80);
  v22 = sub_1E42062B4();

  if (!(v22 >> 62))
  {
    v65 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_122:
  v65 = sub_1E4207384();
LABEL_43:

  if (v65 < v3)
  {
    __break(1u);
  }

  else
  {
    if (v65 == v3)
    {
LABEL_53:
      v68 = OUTLINED_FUNCTION_7_107();
      sub_1E42062B4();

      v135 = 0;
      v136 = 0;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
      sub_1E3AABCC4();
      v69 = OUTLINED_FUNCTION_1_133();
      sub_1E38D2054(v69, v70);

      if (v131)
      {
        v71 = OUTLINED_FUNCTION_7_107();
        sub_1E42062B4();

        v135 = 1;
        v136 = 0;
        v72 = OUTLINED_FUNCTION_1_133();
        sub_1E38D2054(v72, v73);
        v24 = v131;

        v74 = objc_opt_self();
        OUTLINED_FUNCTION_36();
        v76 = *(v75 + 1792);

        v78 = v76(v77);

        v65 = (*(*v78 + 2408))(v79);

        v26 = [v74 vui:v65 fontFromTextLayout:?];

        if (v26)
        {
          [v26 descender];
          VUIRoundValue();
          v81 = fabs(v80);
          [v26 ascender];
          VUIRoundValue();
          v83 = v82;
          OUTLINED_FUNCTION_36();
          v85 = *(v84 + 1792);

          v87 = v85(v86);

          *&v89 = COERCE_DOUBLE((*(*v87 + 1176))(v88));
          LOBYTE(v85) = v90;

          v91 = *&v89;
          if (v85)
          {
            v91 = 14.0;
          }

          v92 = v91 - (v81 + v83);
          v65 = &selRef_secureInvalidationNonceURL;
          [v12 setCustomSpacing:v131 afterView:v92];
          [v12 setCustomSpacing:v131 afterView:v81 + v92 + 2.0];
        }

        else
        {
        }
      }
    }

    else
    {
      while (v3 < v65)
      {
        v22 = v65 - 1;
        v66 = OUTLINED_FUNCTION_7_107();
        v26 = sub_1E42062B4();

        if ((v26 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v65 - 1, v26);
        }

        else
        {
          if (v65 < 1)
          {
            goto LABEL_59;
          }

          if (v22 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v67 = *(v26 + 8 * v65 + 24);
        }

        OUTLINED_FUNCTION_31_4();

        [v65 vui_removeFromSuperView];

        if (v3 == v22)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    v93 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    if (v3)
    {
      if (v3 >= 1)
      {
        v94 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
        v95 = v4;
        swift_beginAccess();
        v22 = 0;
        v4 = 2;
        v12 = &selRef_setRenderAsTemplate_;
        while (1)
        {
          if (!v4)
          {
            v96 = *&v95[v94];
            if (v96 >> 62)
            {
              v97 = sub_1E4207384();
            }

            else
            {
              v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v22 >= v97)
            {
              v24 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
              [v95 vui:v24 addSubview:0 oldView:?];
              v98 = swift_beginAccess();
              MEMORY[0x1E6910BF0](v98);
              v26 = *((*&v95[v94] & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v26 >= *((*&v95[v94] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              sub_1E4206324();
              swift_endAccess();
            }

            v99 = *&v95[v94];
            if ((v99 & 0xC000000000000001) != 0)
            {

              v24 = MEMORY[0x1E6911E60](v22, v99);
            }

            else
            {
              if (v22 < 0)
              {
                goto LABEL_119;
              }

              if (v22 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_121;
              }

              v24 = *(v99 + 8 * v22 + 32);
            }

            OUTLINED_FUNCTION_8();
            v101 = *(v100 + 1840);

            v26 = v101(v102);

            (*(*v26 + 744))(v103);
            OUTLINED_FUNCTION_31_4();

            [v24 setVuiBackgroundColor_];

            v104 = __OFADD__(v22++, 1);
            if (v104)
            {
              goto LABEL_120;
            }
          }

          --v4;
          if (!--v3)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v95 = v4;
    v22 = 0;
LABEL_81:
    v3 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
    v4 = v95;
    swift_beginAccess();
    v65 = *&v95[v3];
    v26 = v65 >> 62;
    if (!(v65 >> 62))
    {
      v105 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v106 = v105;
      if (v105 >= v22)
      {
        goto LABEL_83;
      }

      __break(1u);
      goto LABEL_127;
    }
  }

  result = sub_1E4207384();
  if (result < v22)
  {
    goto LABEL_142;
  }

  v106 = result;
  v105 = sub_1E4207384();
LABEL_83:
  if (v105 < v22)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v12 = v125;
  if (v22 < 0)
  {
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    v107 = sub_1E4207384();
  }

  else
  {
    v107 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v107 < v106)
  {
    goto LABEL_129;
  }

  if (v106 < 0)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v24 = sub_1E3AABE34(v22, v106, v65);
  v26 = v108;
  v110 = v109;
  v112 = v111;

  v65 = v112 >> 1;
  swift_unknownObjectRetain();
  while (v65 != v110)
  {
    if (v110 >= v65)
    {
      goto LABEL_118;
    }

    [*(v26 + 8 * v110++) vui_removeFromSuperView];
  }

  swift_unknownObjectRelease_n();
  v113 = *(v4 + v3);
  if (!(v113 >> 62))
  {
    v93 = (v113 & 0xFFFFFFFFFFFFFF8);
    v114 = v93[2];
    goto LABEL_96;
  }

LABEL_131:
  v114 = sub_1E4207384();
LABEL_96:
  v24 = v114 - v22;
  if (__OFSUB__(v114, v22))
  {
    __break(1u);
    goto LABEL_133;
  }

  swift_beginAccess();
  if (!v24)
  {
LABEL_114:
    swift_endAccess();
    [v4 vui:v12 bringSubviewToFront:?];
    return [v4 vui_setNeedsLayout];
  }

  if (v24 < 0)
  {
    goto LABEL_134;
  }

  v65 = *(v4 + v3);
  v93 = (v65 & 0xFFFFFFFFFFFFFF8);
  v26 = v65 >> 62;
  if (v65 >> 62)
  {
LABEL_135:
    OUTLINED_FUNCTION_11_18(v93);
    v115 = sub_1E4207384();
  }

  else
  {
    v115 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1E380055C(v115, -v24, 0);
  if (v117)
  {
    goto LABEL_141;
  }

  v118 = result;
  v119 = v115 - result;
  if (v115 < result)
  {
    __break(1u);
    goto LABEL_137;
  }

  if (result < 0)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    result = sub_1E4207384();
  }

  else
  {
    result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v115)
  {
    goto LABEL_138;
  }

  v104 = __OFSUB__(0, v119);
  v120 = -v119;
  if (v104)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_11_18(v65 & 0xFFFFFFFFFFFFFF8);
    v121 = sub_1E4207384();
  }

  else
  {
    v121 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = __OFADD__(v121, v120);
  result = v121 + v120;
  if (!v104)
  {
    sub_1E3879104(result);
    sub_1E3AABD28(v118, v115, 0);
    goto LABEL_114;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

void sub_1E3AAB2B4(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_stackView);
  [v4 vui_layoutIfNeeded];
  [v4 vui:0.0 sizeThatFits:0.0];
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 176);

  v10(v68, v11);
  v12 = *v68;
  v13 = *&v68[1];
  v14 = *&v68[2];
  v15 = *&v68[3];

  v16 = v69;
  if (v69)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_1E3952BE0(v12, v13, v14, v15);
  }

  v18 = sub_1E4149E00(v17, v16 & 1, v6);
  OUTLINED_FUNCTION_0_130();
  v20 = *(v19 + 176);

  v20(v70, v21);
  v22 = *v70;
  v23 = *&v70[1];
  v24 = *&v70[2];

  v25 = v71;
  if (v71)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1E3952BD8(v22, v23, v24);
  }

  v27 = sub_1E4149E00(v26, v25 & 1, v8);
  if ((a1 & 1) == 0)
  {
    v28 = *(v2 + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_materialBackgroundView);
    [v28 frame];
    v31 = v27 == v30 && v18 == v29;
    [v28 setFrame_];
    OUTLINED_FUNCTION_8();
    v33 = *(v32 + 176);

    v33(v72, v34);

    if (v73)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = *&v72[1];
    }

    OUTLINED_FUNCTION_8();
    v37 = *(v36 + 176);

    v37(v74, v38);

    if (v75)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = v74[0];
    }

    [v4 setFrame_];
    v40 = [v4 arrangedSubviews];
    sub_1E3280A90(0, &qword_1EE23AE80);
    v41 = sub_1E42062B4();

    v42 = sub_1E32AE9B0(v41);

    if (v42 < 0)
    {
LABEL_46:
      __break(1u);
      return;
    }

    v63 = v31;
    if (v42)
    {
      v64 = OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_shadeViews;
      swift_beginAccess();
      v43 = 0;
      v44 = 0;
      v45 = 0.0;
      while (1)
      {
        v46 = [v4 arrangedSubviews];
        v47 = sub_1E42062B4();

        if (v47 >> 62)
        {
          v48 = OUTLINED_FUNCTION_4_112();
        }

        else
        {
          v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v49 = v8 / v48;
        if (!v44)
        {
          OUTLINED_FUNCTION_0_130();
          v51 = *(v50 + 176);

          v51(v76, v52);

          v53 = v76[0];
          if (v77)
          {
            v53 = 0.0;
          }

          v49 = v49 + v53;
        }

        v54 = [v4 arrangedSubviews];
        v55 = sub_1E42062B4();

        v56 = v55 >> 62 ? OUTLINED_FUNCTION_4_112() : *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (__OFSUB__(v56, 1))
        {
          break;
        }

        if (v44 == v56 - 1)
        {
          OUTLINED_FUNCTION_0_130();
          v58 = *(v57 + 176);

          v58(v78, v59);

          v60 = *&v78[2];
          if (v79)
          {
            v60 = 0.0;
          }

          v49 = v49 + v60;
        }

        if (v44 == 2)
        {
          v67[1] = *(v2 + v64);
          v65 = v43;
          v66 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
          sub_1E3AABCC4();
          sub_1E38D2054(&v65, v67);
          v61 = v67[0];
          if (v67[0])
          {
            [v67[0] setFrame_];
          }

          if (__OFADD__(v43++, 1))
          {
            goto LABEL_45;
          }
        }

        ++v44;
        v45 = v45 + v49;
        if (v42 == v44)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_41:
    if (!v63)
    {
      sub_1E3AAB80C(0.2);
    }
  }
}

void sub_1E3AAB80C(double a1)
{
  [v1 vui_setNeedsDisplay];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v7[4] = sub_1E3AAC05C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1E378AEA4;
  v7[3] = &block_descriptor_18;
  v5 = _Block_copy(v7);
  v6 = v1;

  [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:a1];
  _Block_release(v5);
}

void sub_1E3AAB920(uint64_t a1, uint64_t a2, double a3)
{
  [v3 vui_setNeedsDisplay];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v3;
  v11[4] = sub_1E3AABF2C;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E378AEA4;
  v11[3] = &block_descriptor_52;
  v9 = _Block_copy(v11);
  v10 = v3;
  OUTLINED_FUNCTION_31_4();

  [v7 transitionWithView:v3 duration:5242880 options:v9 animations:0 completion:a3];
  _Block_release(v9);
}

id sub_1E3AABAC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyScoreboardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3AABB6C(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  result = sub_1E3780DC4(a1);
  if (!result)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(result + 8 * a2 + 32);

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v6 + 16) > a3)
  {
    v7 = *(v6 + 16 * a3 + 32);

    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1E3AABC1C(void *a1, char a2, char a3)
{
  if (!a1 || (v5 = sub_1E3780DC4(a1)) == 0 || (v6 = *(v5 + 16), , v6 <= 1))
  {
    a2 = a3;
  }

  if (a2)
  {
    return 26;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3AABC78(void *a1)
{
  *(*(v1 + 16) + OBJC_IVAR____TtC8VideosUI20LegacyScoreboardView_layout) = *a1;
}

unint64_t sub_1E3AABCC4()
{
  result = qword_1ECF37A20;
  if (!qword_1ECF37A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2FC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37A20);
  }

  return result;
}

uint64_t sub_1E3AABD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E3280A90(0, &qword_1EE23AE80);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3AABE34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_4;
  }

  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result == a2)
  {
LABEL_4:

LABEL_8:
    if (a3 >> 62)
    {

      return sub_1E4207704();
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
      return a3 & 0xFFFFFFFFFFFFFF8;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (result < a2)
  {
    sub_1E3280A90(0, &qword_1EE23AE80);

    result = v5;
    do
    {
      v6 = result + 1;
      sub_1E42074F4();
      result = v6;
    }

    while (a2 != v6);
    goto LABEL_8;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_1E3AABF2C()
{
  v1 = *(v0 + 32);
  [v1 forceDisplayIfNeeded];

  return [v1 setAlpha_];
}

_BYTE *storeEnumTagSinglePayload for ScoreboardType(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1E3AAC05C()
{
  v1 = *(v0 + 16);
  [v1 forceDisplayIfNeeded];

  return [v1 setAlpha_];
}

void sub_1E3AAC0B8()
{
  OUTLINED_FUNCTION_31_1();
  v97 = v3;
  v104 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v103 = v8;
  OUTLINED_FUNCTION_138();
  v95 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v94 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v13 = v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F38);
  OUTLINED_FUNCTION_0_10();
  v92 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F40);
  OUTLINED_FUNCTION_0_10();
  v93 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v96 = v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F48);
  OUTLINED_FUNCTION_0_10();
  v89 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v111[0] = *(v0 + 3);
  v26 = *(&v111[0] + 1);
  OUTLINED_FUNCTION_47_0();
  v28 = *(v27 + 168);

  if ((v28(v29) & 1) != 0 && ([objc_opt_self() isStoreOrPressDemoMode] & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v41 = (v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F80) + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F98);
    OUTLINED_FUNCTION_47_0();
    v84 = *(v42 + 192);
    v85 = v42 + 192;
    v83 = v13;
    v84();
    sub_1E4203AD4();
    v86 = *(v94 + 8);
    v87 = v94 + 8;
    v43 = OUTLINED_FUNCTION_32_0();
    v44(v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    *v41 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F58);
    OUTLINED_FUNCTION_2();
    (*(v49 + 16))(v1, v97);
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    v82[2] = sub_1E3AB4478(v50, v51);
    v52 = sub_1E4200504();
    v82[1] = v82;
    v53 = (v1 + *(v88 + 36));
    *v53 = v52;
    v53[1] = v26;
    MEMORY[0x1EEE9AC00](v52);
    OUTLINED_FUNCTION_68_13();
    *(v54 - 16) = v0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F68);
    v97 = v5;
    sub_1E3AACDDC();
    sub_1E328FCF4(&qword_1ECF31FB0, &qword_1ECF31F68);
    OUTLINED_FUNCTION_142_4();
    sub_1E4203504();
    sub_1E325F6F0(v1, &qword_1ECF31F28);
    v55 = sub_1E42010C4();
    v56 = v98;
    v57 = (&qword_1ECF31F68 + *(v98 + 36));
    *v57 = v55;
    v57[1] = v58;
    v59 = v83;
    v84();
    v60 = v90;
    v61 = v95;
    (*(v94 + 104))(v90, *MEMORY[0x1E697D708], v95);
    sub_1E4203BE4();
    v62 = v86;
    v86(v60, v61);
    v62(v59, v61);
    v63 = sub_1E3AACCB4();
    v64 = v91;
    sub_1E42033C4();
    sub_1E325F6F0(&qword_1ECF31F68, &qword_1ECF31F30);
    v110 = *(v0 + 1);
    v106 = *(v0 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    sub_1E42038F4();
    LOBYTE(v105) = v109;
    v109 = *v0;
    OUTLINED_FUNCTION_89();
    v65 = swift_allocObject();
    OUTLINED_FUNCTION_77_10(v65);
    sub_1E3743538(v111, &v106, &qword_1ECF31F50);
    sub_1E3743538(&v109, &v106, &qword_1ECF31FD0);
    sub_1E3743538(&v110, &v106, &qword_1ECF294E0);
    *&v106 = v56;
    *(&v106 + 1) = v63;
    v66 = OUTLINED_FUNCTION_39_24();
    v67 = MEMORY[0x1E69E6370];
    v68 = MEMORY[0x1E69E6388];
    v69 = v99;
    sub_1E4203524();

    OUTLINED_FUNCTION_15_5();
    v70(v64, v69);
    OUTLINED_FUNCTION_47_0();
    v105 = (*(v71 + 240))();
    OUTLINED_FUNCTION_89();
    v72 = swift_allocObject();
    OUTLINED_FUNCTION_77_10(v72);
    sub_1E3743538(v111, &v106, &qword_1ECF31F50);
    sub_1E3743538(&v109, &v106, &qword_1ECF31FD0);
    sub_1E3743538(&v110, &v106, &qword_1ECF294E0);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB08);
    *&v106 = v69;
    *(&v106 + 1) = v67;
    v107 = v66;
    v108 = v68;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_36_29();
    v76 = sub_1E328FCF4(v75, &qword_1ECF2BB08);
    OUTLINED_FUNCTION_142_4();
    v77 = v100;
    v78 = v96;
    sub_1E4203524();

    OUTLINED_FUNCTION_15_5();
    v79(v78, v77);
    v80 = v89;
    v81 = v101;
    (*(v89 + 16))(v103, v69, v101);
    swift_storeEnumTagMultiPayload();
    *&v106 = v77;
    *(&v106 + 1) = v73;
    v107 = OpaqueTypeConformance2;
    v108 = v76;
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    sub_1E4201F44();
    (*(v80 + 8))(v69, v81);
  }

  else
  {
    sub_1E325F6F0(v111, &qword_1ECF31F50);
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v30, v31);
    OUTLINED_FUNCTION_20_2();
    v32 = sub_1E4200504();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31F58);
    OUTLINED_FUNCTION_2();
    (*(v33 + 16))(v2, v97);
    v34 = (v2 + *(v5 + 36));
    *v34 = v32;
    v34[1] = v26;
    sub_1E3743538(v2, v103, &qword_1ECF31F18);
    swift_storeEnumTagMultiPayload();

    v35 = OUTLINED_FUNCTION_34();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v35);
    sub_1E3AACCB4();
    OUTLINED_FUNCTION_39_24();
    v37 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_36_29();
    OUTLINED_FUNCTION_55_0();
    *&v106 = v100;
    *(&v106 + 1) = v36;
    v107 = v37;
    v108 = sub_1E328FCF4(v38, v39);
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    sub_1E4201F44();
    sub_1E325F6F0(v2, &qword_1ECF31F18);
  }

  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3AACCB4()
{
  result = qword_1ECF31F60;
  if (!qword_1ECF31F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F68);
    sub_1E3AACDDC();
    sub_1E328FCF4(&qword_1ECF31FB0, &qword_1ECF31F68);
    swift_getOpaqueTypeConformance2();
    sub_1E3AACF78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F60);
  }

  return result;
}

unint64_t sub_1E3AACDDC()
{
  result = qword_1ECF31F70;
  if (!qword_1ECF31F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F28);
    sub_1E3AACE94();
    sub_1E328FCF4(&qword_1ECF31FA0, &qword_1ECF31FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F70);
  }

  return result;
}

unint64_t sub_1E3AACE94()
{
  result = qword_1ECF31F78;
  if (!qword_1ECF31F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F80);
    sub_1E328FCF4(&qword_1ECF31F88, &qword_1ECF31F58);
    sub_1E328FCF4(&qword_1ECF31F90, &qword_1ECF31F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31F78);
  }

  return result;
}

unint64_t sub_1E3AACF78()
{
  result = qword_1ECF550E0[0];
  if (!qword_1ECF550E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF550E0);
  }

  return result;
}

unint64_t sub_1E3AACFCC()
{
  result = qword_1ECF31FC0;
  if (!qword_1ECF31FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F18);
    sub_1E328FCF4(&qword_1ECF31F88, &qword_1ECF31F58);
    sub_1E328FCF4(&qword_1ECF31FA0, &qword_1ECF31FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31FC0);
  }

  return result;
}

uint64_t sub_1E3AAD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3743538(a1, &v5 - v3, &qword_1ECF31FF0);
  return sub_1E4201A14();
}

void sub_1E3AAD17C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v60 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v59 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320B0);
  OUTLINED_FUNCTION_0_10();
  v56 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v55 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320B8);
  OUTLINED_FUNCTION_0_10();
  v54 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v53 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320C0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = sub_1E4202034();
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320C8);
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v51 - v27;
  sub_1E4201FD4();
  v61 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320D0);
  sub_1E3AB54EC();
  sub_1E42015A4();
  if (sub_1E39DFFC8())
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v6);
    v29 = OUTLINED_FUNCTION_11_78(&qword_1ECF32100, &qword_1ECF320B8);
    v62 = v10;
    v63 = v29;
    OUTLINED_FUNCTION_6_10();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA30](v18, v6, OpaqueTypeConformance2);
    sub_1E325F6F0(v18, &qword_1ECF320C0);
  }

  else
  {
    v31 = sub_1E4201FE4();
    v51 = &v51;
    MEMORY[0x1EEE9AC00](v31);
    *(&v51 - 2) = v1;
    v52 = v10;
    v32 = OUTLINED_FUNCTION_34();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32);
    v57 = v21;
    v33 = v6;
    OUTLINED_FUNCTION_55_0();
    sub_1E328FCF4(v34, v35);
    v36 = v53;
    sub_1E42015A4();
    v37 = OUTLINED_FUNCTION_11_78(&qword_1ECF32100, &qword_1ECF320B8);
    v38 = v55;
    v39 = v52;
    MEMORY[0x1E690CA00](v36, v52, v37);
    v40 = v56;
    (*(v56 + 16))(v18, v38, v33);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v33);
    v62 = v39;
    v63 = v37;
    OUTLINED_FUNCTION_6_10();
    v44 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA30](v18, v33, v44);
    sub_1E325F6F0(v18, &qword_1ECF320C0);
    v45 = v33;
    v21 = v57;
    (*(v40 + 8))(v38, v45);
    (*(v54 + 8))(v36, v39);
  }

  v46 = *(v3 + 48);
  v48 = v58;
  v47 = v59;
  (*(v25 + 16))(v59, v28, v58);
  sub_1E3743538(v21, v47 + v46, &qword_1ECF320C0);
  sub_1E4201E04();
  v49 = OUTLINED_FUNCTION_38_0();
  sub_1E325F6F0(v49, v50);
  (*(v25 + 8))(v28, v48);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAD6E4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26[-v14 - 8];
  v30 = *(v0 + 3);
  OUTLINED_FUNCTION_36();
  (*(v16 + 408))(v27);
  OUTLINED_FUNCTION_8();
  if (((*(v17 + 168))() & 1) != 0 && (OUTLINED_FUNCTION_8(), (*(v18 + 192))(), (*(v8 + 104))(v12, *MEMORY[0x1E697D708], v6), HIDWORD(v25) = sub_1E4203BE4(), v19 = *(v8 + 8), v19(v12, v6), v19(v15, v6), (v25 & 0x100000000) != 0))
  {
    v29 = *v0;
    v28 = *(v0 + 1);
    OUTLINED_FUNCTION_89();
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v21;
    *(v20 + 48) = v1[4];
    MEMORY[0x1EEE9AC00](v20);
    OUTLINED_FUNCTION_47_27();
    *(v22 - 16) = v27;
    sub_1E3743538(&v29, v26, &qword_1ECF31FD0);
    sub_1E3743538(&v28, v26, &qword_1ECF294E0);
    sub_1E3743538(&v30, v26, &qword_1ECF31F50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
    sub_1E3AB55FC();
    sub_1E4203964();
    sub_1E3844FE0(v27);
    OUTLINED_FUNCTION_91();
    v23();
    v24 = 0;
  }

  else
  {
    sub_1E3844FE0(v27);
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v24, 1, v4);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AADA8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32118);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v102 = v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8);
  OUTLINED_FUNCTION_0_10();
  v103 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v108 = v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32120);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v100 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v101 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32128);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v99 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v106 = v22;
  OUTLINED_FUNCTION_138();
  v23 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_67_2();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32130);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v107 = v32;
  v116 = *(v0 + 24);
  v33 = *(&v116 + 1);
  (*(**(&v116 + 1) + 408))(v113);
  OUTLINED_FUNCTION_47_0();
  if ((*(v34 + 168))())
  {
    v97 = v1;
    OUTLINED_FUNCTION_47_0();
    (*(v35 + 192))();
    (*(v25 + 104))(v29, *MEMORY[0x1E697D708], v23);
    v36 = sub_1E4203BE4();
    v37 = *(v25 + 8);
    v37(v29, v23);
    v38 = (v37)(v2, v23);
    v39 = (*(*v33 + 384))(v38);
    v40 = v39;
    if (v36)
    {
      v96 = v5;
      OUTLINED_FUNCTION_47_0();
      v42 = *(v41 + 240);
      v94 = v41 + 240;
      v95 = v42;
      v43 = *(v42() + 16);

      LODWORD(v43) = v43 == *(v40 + 16);
      v44 = v106;
      *v106 = sub_1E4203DC4();
      v44[1] = v45;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32158);
      sub_1E3AAEBB0(v3, v113, v43, v40, v44 + *(v46 + 44));

      v115 = *v3;
      v114 = *(v3 + 8);
      OUTLINED_FUNCTION_89();
      v47 = swift_allocObject();
      OUTLINED_FUNCTION_75_8(v47);
      MEMORY[0x1EEE9AC00](v48);
      OUTLINED_FUNCTION_47_27();
      *(v49 - 16) = v113;
      sub_1E3743538(&v115, &v117, &qword_1ECF31FD0);
      sub_1E3743538(&v114, &v117, &qword_1ECF294E0);
      sub_1E3743538(&v116, &v117, &qword_1ECF31F50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
      sub_1E3AB55FC();
      sub_1E4203964();
      OUTLINED_FUNCTION_36();
      (*(v50 + 408))(&v117);
      OUTLINED_FUNCTION_8();
      v52 = *((*(v51 + 240))() + 16);

      v53 = &v120;
      if (v52 > 1)
      {
        v53 = &v122;
      }

      v54 = *v53;
      if (*v53)
      {
        v55 = &v121;
        if (v52 <= 1)
        {
          v55 = &v119;
        }

        v56 = *v55;
      }

      else
      {
        v56 = 0;
        v54 = 0xE000000000000000;
      }

      sub_1E3844FE0(&v117);
      v112[0] = v56;
      v112[1] = v54;
      v111 = v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
      v65 = sub_1E4203914();
      v91 = &v89;
      v89 = v117;
      v90 = v118;
      MEMORY[0x1EEE9AC00](v65);
      OUTLINED_FUNCTION_47_27();
      *(v66 - 16) = v3;
      v67 = OUTLINED_FUNCTION_125();
      __swift_instantiateConcreteTypeFromMangledNameV2(v67);
      v92 = OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8);
      sub_1E32822E0();
      OUTLINED_FUNCTION_6_1();
      v93 = v68;
      sub_1E328FCF4(v69, &qword_1ECF32160);
      v70 = v101;
      sub_1E4203134();

      v71 = OUTLINED_FUNCTION_63_0();
      v73 = v72(v71);
      v74 = *((v95)(v73) + 16);

      v75 = v74 == 0;
      KeyPath = swift_getKeyPath();
      v77 = swift_allocObject();
      *(v77 + 16) = v75;
      v78 = v99;
      v79 = (v70 + *(v98 + 36));
      *v79 = KeyPath;
      v79[1] = sub_1E37E09AC;
      v79[2] = v77;
      v80 = v106;
      sub_1E3743538(v106, v78, &qword_1ECF32128);
      v81 = v100;
      sub_1E3743538(v70, v100, &qword_1ECF32120);
      v82 = v102;
      sub_1E3743538(v78, v102, &qword_1ECF32128);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32170);
      sub_1E3743538(v81, v82 + *(v83 + 48), &qword_1ECF32120);
      sub_1E325F6F0(v81, &qword_1ECF32120);
      v84 = OUTLINED_FUNCTION_24_4();
      sub_1E325F6F0(v84, v85);
      sub_1E3743538(v82, v97, &qword_1ECF32118);
      swift_storeEnumTagMultiPayload();
      sub_1E328FCF4(&qword_1ECF32148, &qword_1ECF32118);
      v59 = v107;
      sub_1E4201F44();
      sub_1E3844FE0(v113);
      v86 = OUTLINED_FUNCTION_63_0();
      sub_1E325F6F0(v86, v87);
      sub_1E325F6F0(v70, &qword_1ECF32120);
      sub_1E325F6F0(v80, &qword_1ECF32128);
      v64 = 0;
      v5 = v96;
    }

    else
    {
      v58 = *(v39 + 16);

      v59 = v107;
      if (v58)
      {
        v112[0] = *v3;
        v117 = *(v3 + 8);
        OUTLINED_FUNCTION_89();
        v60 = swift_allocObject();
        OUTLINED_FUNCTION_75_8(v60);
        MEMORY[0x1EEE9AC00](v61);
        sub_1E3743538(&v116, &v114, &qword_1ECF31F50);
        sub_1E3743538(v112, &v114, &qword_1ECF31FD0);
        sub_1E3743538(&v117, &v114, &qword_1ECF294E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
        sub_1E3AB55FC();
        sub_1E4203964();
        (*(v103 + 16))(v97, v108, v109);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_6_1();
        sub_1E328FCF4(v62, v63);
        OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8);
        sub_1E4201F44();
        sub_1E3844FE0(v113);
        (*(v103 + 8))(v108, v109);
        v64 = 0;
      }

      else
      {
        sub_1E3844FE0(v113);
        v64 = 1;
      }
    }

    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32150);
    __swift_storeEnumTagSinglePayload(v59, v64, 1, v88);
    sub_1E3741EA0(v59, v5, &qword_1ECF32130);
    v57 = 0;
  }

  else
  {
    sub_1E3844FE0(v113);
    v57 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v57, 1, v110);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAE674(char *a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *a1;
  result = sub_1E39DFFC8();
  if ((result & 1) == 0 && (v11 & 1) == 0)
  {
    v13 = *(a2 + 32);
    OUTLINED_FUNCTION_12_6();
    result = (*(v14 + 432))();
    if (result != 2)
    {
      sub_1E38462B4();
      result = sub_1E4205E84();
      if (result)
      {
        (*(v6 + 104))(v10, *MEMORY[0x1E697D710], v4);
        OUTLINED_FUNCTION_12_6();
        (*(v15 + 200))(v10);
        return (*(*v13 + 440))(2);
      }
    }
  }

  return result;
}

uint64_t sub_1E3AAE868(uint64_t a1)
{
  sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = *(a1 + 32);
  (*(v7 + 104))(v4 - v3, *MEMORY[0x1E697D710]);
  OUTLINED_FUNCTION_8();
  (*(v8 + 200))(v5);
  OUTLINED_FUNCTION_36();
  (*(v9 + 256))(v11);
  OUTLINED_FUNCTION_53_24();
  *v6 = MEMORY[0x1E69E7CD0];
  return (a1)(v11, 0);
}

void sub_1E3AAE9A4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 32))
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40();
    v4 = OUTLINED_FUNCTION_14_88();
    v5(v4);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v6 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_15_77();
    v11(v10);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v6 = OUTLINED_FUNCTION_28_36();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAEBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a4;
  v62 = a3;
  v60 = a2;
  v68 = a5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v66 = (v12 - v13);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32188);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v67 = v19 - v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v65 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_67_2();
  v74[0] = *a1;
  v29 = *(a1 + 8);
  v72 = *(a1 + 24);
  v73 = v29;
  OUTLINED_FUNCTION_89();
  v30 = swift_allocObject();
  v31 = *(a1 + 16);
  *(v30 + 16) = *a1;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(a1 + 32);
  v70 = a2;
  sub_1E3743538(v74, v71, &qword_1ECF31FD0);
  sub_1E3743538(&v73, v71, &qword_1ECF294E0);
  sub_1E3743538(&v72, v71, &qword_1ECF31F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
  sub_1E3AB55FC();
  sub_1E4203964();
  v32 = v10 + 32;
  v33 = *(v10 + 32);
  v59 = v32;
  v34 = v16;
  v35 = v61;
  v33(v5, v34, v61);
  v36 = (v62 & 1) == 0;
  if (v62)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  *(v5 + *(v18 + 44)) = v37;
  if (v36)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  sub_1E3741EA0(v5, v6, &qword_1ECF32188);
  v39 = swift_allocObject();
  v40 = *(a1 + 16);
  *(v39 + 16) = *a1;
  *(v39 + 32) = v40;
  v41 = *(a1 + 32);
  v42 = v64;
  *(v39 + 48) = v41;
  *(v39 + 56) = v42;
  v69 = v60;
  sub_1E3743538(v74, v71, &qword_1ECF31FD0);
  sub_1E3743538(&v73, v71, &qword_1ECF294E0);
  sub_1E3743538(&v72, v71, &qword_1ECF31F50);

  v43 = v66;
  sub_1E4203964();
  v33(v25, v43, v35);
  *&v25[*(v18 + 44)] = v38;
  v44 = v25;
  v45 = v63;
  sub_1E3741EA0(v44, v63, &qword_1ECF32188);
  v46 = v65;
  OUTLINED_FUNCTION_97_3(v6, v65);
  v47 = v67;
  OUTLINED_FUNCTION_97_3(v45, v67);
  v48 = v68;
  OUTLINED_FUNCTION_97_3(v46, v68);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32190);
  OUTLINED_FUNCTION_97_3(v47, v48 + *(v49 + 48));
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v50, v51);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v52, v53);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v54, v55);
  OUTLINED_FUNCTION_82();
  return sub_1E325F6F0(v56, v57);
}

void sub_1E3AAF0A0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 8))
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40();
    v4 = OUTLINED_FUNCTION_14_88();
    v5(v4);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v6 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_15_77();
    v11(v10);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v6 = OUTLINED_FUNCTION_28_36();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AAF2AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  v4 = sub_1E375BEF4();
  result = MEMORY[0x1E6910FA0](v2, v3, v4);
  v6 = 0;
  v12 = result;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      return v12;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    ++v6;
    v10 = *(i - 1);
    v9 = *i;

    sub_1E3AB47A8(&v11, v10, v9);
  }

  __break(1u);
  return result;
}

void sub_1E3AAF384()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*v0)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40();
    v4 = OUTLINED_FUNCTION_14_88();
    v5(v4);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v6 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_15_77();
    v11(v10);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v6 = OUTLINED_FUNCTION_28_36();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAF590()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 16))
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40();
    v4 = OUTLINED_FUNCTION_14_88();
    v5(v4);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v6 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_15_77();
    v11(v10);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v6 = OUTLINED_FUNCTION_28_36();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAF79C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v46 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v12 = v11;
  v54[0] = *(v1 + 24);
  OUTLINED_FUNCTION_36();
  (*(v13 + 408))(v51);
  OUTLINED_FUNCTION_36();
  v15 = (*(v14 + 536))();
  if (v16)
  {
    OUTLINED_FUNCTION_8();
    v18 = *((*(v17 + 240))() + 16);
  }

  else
  {
    v18 = v15;
  }

  v19 = *v1;
  if (v18 >= 2)
  {
    if (v19)
    {
      if (v51[12])
      {

        v20 = sub_1E4205ED4();
      }

      else
      {
        v20 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1E4298880;
      *(v22 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v23 = sub_1E3AB5878(v20, v22, v19);
      goto LABEL_16;
    }

LABEL_17:
    v25 = 0;
    v26 = 0;
    goto LABEL_18;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

  if (v51[10])
  {

    v21 = sub_1E4205ED4();
  }

  else
  {
    v21 = 0;
  }

  v20 = [v19 localizedStringForKey_];

  if (!v20)
  {
    goto LABEL_17;
  }

  v23 = sub_1E4205F14();
LABEL_16:
  v25 = v23;
  v26 = v24;

LABEL_18:
  sub_1E4200A04();
  v27 = sub_1E4200A34();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  v53 = v19;
  v52 = *(v1 + 8);
  OUTLINED_FUNCTION_89();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_63_15(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_68_13();
  *(v33 - 16) = v25;
  *(v33 - 8) = v26;
  sub_1E3743538(&v53, v50, &qword_1ECF31FD0);
  sub_1E3743538(&v52, v50, &qword_1ECF294E0);
  sub_1E3743538(v54, v50, &qword_1ECF31F50);
  sub_1E4203954();

  v34 = v51[13];
  v35 = v51[14];

  sub_1E4200A14();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v27);
  OUTLINED_FUNCTION_89();
  v39 = swift_allocObject();
  OUTLINED_FUNCTION_63_15(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_68_13();
  *(v41 - 16) = v34;
  *(v41 - 8) = v35;
  sub_1E3743538(&v53, v50, &qword_1ECF31FD0);
  sub_1E3743538(&v52, v50, &qword_1ECF294E0);
  sub_1E3743538(v54, v50, &qword_1ECF31F50);
  OUTLINED_FUNCTION_142_4();
  sub_1E4203954();

  v42 = *(v46 + 16);
  v42(v47, v12, v5);
  v42(v48, v1, v5);
  v43 = OUTLINED_FUNCTION_125();
  (v42)(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178);
  v42(v49 + *(v44 + 48), v48, v5);
  sub_1E3844FE0(v51);
  v45 = *(v46 + 8);
  v45(v1, v5);
  v45(v12, v5);
  v45(v48, v5);
  v45(v47, v5);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAFDC4()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_8();
  (*(v8 + 192))();
  v9 = OUTLINED_FUNCTION_74_11();
  v3(v9);
  OUTLINED_FUNCTION_74();
  sub_1E4203BE4();
  v10 = OUTLINED_FUNCTION_90_8();
  v2(v10);
  (v2)(v1, v4);
  v11 = OUTLINED_FUNCTION_73_8();
  v3(v11);
  OUTLINED_FUNCTION_8();
  (*(v12 + 200))(v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AAFF3C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_71_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 24))
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_40();
    v4 = OUTLINED_FUNCTION_14_88();
    v5(v4);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();

    v6 = OUTLINED_FUNCTION_38_0();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_15_77();
    v11(v10);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_4_113();
    sub_1E4201F44();
    v6 = OUTLINED_FUNCTION_28_36();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0148()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32020);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E39DFFC8();
  if (v11)
  {
    v28 = &v26;
    MEMORY[0x1EEE9AC00](v11);
    v27 = v6;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32030);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32040);
    v29 = v5;
    v14 = v13;
    OUTLINED_FUNCTION_1_11();
    v16 = sub_1E328FCF4(v15, &qword_1ECF32030);
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048);
    v18 = sub_1E3AB4310();
    v30 = v17;
    v31 = v18;
    OUTLINED_FUNCTION_6_10();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E4203504();
    v20 = v27;
    (*(v8 + 16))(v0, v1, v27);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    v30 = v12;
    v31 = v14;
    v32 = v16;
    v33 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_40_32();
    sub_1E4201F44();
    (*(v8 + 8))(v1, v20);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32030);
    OUTLINED_FUNCTION_2();
    (*(v22 + 16))(v0, v3, v21);
    OUTLINED_FUNCTION_125();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_11();
    v24 = sub_1E328FCF4(v23, &qword_1ECF32030);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048);
    sub_1E3AB4310();
    OUTLINED_FUNCTION_6_10();
    v30 = v21;
    v31 = v25;
    v32 = v24;
    v33 = swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_40_32();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0484()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v59 = v4;
  v65 = v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32078);
  OUTLINED_FUNCTION_0_10();
  v58 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v57 = v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32068);
  OUTLINED_FUNCTION_0_10();
  v56 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v55 = v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32080);
  OUTLINED_FUNCTION_0_10();
  v54 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v53 = v14;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4202034();
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32058);
  OUTLINED_FUNCTION_0_10();
  v52 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_20_1();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_47_0();
  (*(v30 + 192))();
  (*(v24 + 104))(v28, *MEMORY[0x1E697D708], v22);
  sub_1E3AB4478(&qword_1ECF32088, MEMORY[0x1E697D718]);
  v31 = sub_1E4205E84();
  v32 = *(v24 + 8);
  v32(v28, v22);
  v32(v1, v22);
  sub_1E4201FE4();
  v66 = v59;
  v67 = v3;
  if (v31)
  {
    v33 = OUTLINED_FUNCTION_32_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33);
    OUTLINED_FUNCTION_6_1();
    sub_1E328FCF4(v34, &qword_1ECF32090);
    v0 = v55;
    sub_1E42015A4();
    v35 = OUTLINED_FUNCTION_11_78(&qword_1ECF32070, &qword_1ECF32068);
    v36 = v57;
    v37 = v63;
    MEMORY[0x1E690CA00](v0, v63, v35);
    v38 = OUTLINED_FUNCTION_44_30(&qword_1ECF32060, &qword_1ECF32058);
    v68 = v60;
    v69 = v38;
    OUTLINED_FUNCTION_37_30();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v37;
    v69 = v35;
    v40 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA20](v36, v62, v64, OpaqueTypeConformance2, v40);
    v41 = OUTLINED_FUNCTION_38_0();
    v42(v41);
    v43 = v56;
  }

  else
  {
    sub_1E3AB44BC();
    sub_1E4200C04();
    v44 = OUTLINED_FUNCTION_44_30(&qword_1ECF32060, &qword_1ECF32058);
    v45 = v53;
    v37 = v60;
    MEMORY[0x1E690CA00](v0, v60, v44);
    v68 = v37;
    v69 = v44;
    OUTLINED_FUNCTION_37_30();
    v46 = swift_getOpaqueTypeConformance2();
    v47 = OUTLINED_FUNCTION_11_78(&qword_1ECF32070, &qword_1ECF32068);
    v68 = v63;
    v69 = v47;
    v48 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1E690CA10](v45, v62, v64, v46, v48);
    v49 = OUTLINED_FUNCTION_38_0();
    v50(v49);
    v43 = v52;
  }

  (*(v43 + 8))(v0, v37);
  v51 = sub_1E3AB4310();
  MEMORY[0x1E690CA00](v21, v61, v51);
  sub_1E325F6F0(v21, &qword_1ECF32048);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB0ADC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_95_5();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321A8);
  sub_1E3AB5C54();
  return sub_1E4203964();
}

void sub_1E3AB0B90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_8();
  (*(v8 + 192))();
  v9 = OUTLINED_FUNCTION_74_11();
  v3(v9);
  OUTLINED_FUNCTION_74();
  sub_1E4203BE4();
  v10 = OUTLINED_FUNCTION_90_8();
  v2(v10);
  (v2)(v1, v4);
  v11 = OUTLINED_FUNCTION_73_8();
  v3(v11);
  OUTLINED_FUNCTION_8();
  (*(v12 + 200))(v0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB0D04()
{
  OUTLINED_FUNCTION_31_1();
  v25 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v22 = v5;
  v23 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v18 + 408))(v26);
  v28[0] = v26[3];
  sub_1E3743538(v28, v27, &qword_1ECF29088);
  sub_1E3844FE0(v26);
  if (v28[0])
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4203DA4();
    sub_1E42015C4();
    (*(v22 + 32))(v0, v8, v23);
    memcpy((v0 + *(v24 + 36)), v27, 0x70uLL);
    sub_1E3741EA0(v0, v12, &qword_1ECF2A140);
    sub_1E3743538(v12, v1, &qword_1ECF2A140);
    swift_storeEnumTagMultiPayload();
    sub_1E37AE064();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    sub_1E325F6F0(v28, &qword_1ECF29088);
    sub_1E325F6F0(v12, &qword_1ECF2A140);
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v19, v20);
    (*(v16 + 16))(v1, v2, v14);
    swift_storeEnumTagMultiPayload();
    sub_1E37AE064();
    OUTLINED_FUNCTION_5_1();
    sub_1E4201F44();
    (*(v16 + 8))(v2, v14);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB10E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
  sub_1E3AB55FC();
  return sub_1E4203964();
}

void sub_1E3AB1188()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v13);
  v14[0] = v13[0];
  sub_1E3743538(v14, &v12, &qword_1ECF29088);
  sub_1E3844FE0(v13);
  if (v14[0])
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13();
    v4 = OUTLINED_FUNCTION_27_37();
    v5(v4);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v14, &qword_1ECF29088);
    v6 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_32_40();
    v11(v10);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    v6 = OUTLINED_FUNCTION_64_13();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB143C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v13);
  v14[0] = v13[1];
  sub_1E3743538(v14, &v12, &qword_1ECF29088);
  sub_1E3844FE0(v13);
  if (v14[0])
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13();
    v4 = OUTLINED_FUNCTION_27_37();
    v5(v4);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v14, &qword_1ECF29088);
    v6 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_32_40();
    v11(v10);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    v6 = OUTLINED_FUNCTION_64_13();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB16F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320E8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321C0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v5;
  *(v12 + 32) = v3;
  *(v12 + 40) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32138);
  sub_1E3AB55FC();
  v13 = sub_1E4203964();
  (*(*v5 + 408))(&v35, v13);
  OUTLINED_FUNCTION_47_0();
  v15 = *((*(v14 + 240))() + 16);

  v16 = &v43;
  if (v15 > 1)
  {
    v16 = &v44;
  }

  if (*v16)
  {
  }

  sub_1E3844FE0(&v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  v17 = sub_1E4203914();
  MEMORY[0x1EEE9AC00](v17);
  v29 = OUTLINED_FUNCTION_9_78(&qword_1ECF320E0, &qword_1ECF320E8);
  v30 = sub_1E32822E0();
  v28 = sub_1E3AB5F00();
  sub_1E4203134();

  OUTLINED_FUNCTION_15_5();
  v18 = OUTLINED_FUNCTION_63_0();
  v19(v18);
  LOBYTE(v35) = v3 & 1;
  v36 = v1;
  sub_1E42038F4();
  v20 = swift_allocObject();
  *(v20 + 16) = v7;
  *(v20 + 24) = v5;
  *(v20 + 32) = v3 & 1;
  *(v20 + 40) = v1;

  v35 = v32;
  v36 = MEMORY[0x1E69E6158];
  v37 = &type metadata for CollectionViewEditableModifier.ConfirmDeleteActions;
  v38 = MEMORY[0x1E6981E70];
  v39 = v29;
  v40 = v30;
  v41 = v28;
  v42 = MEMORY[0x1E6981E60];
  swift_getOpaqueTypeConformance2();
  sub_1E4203524();

  OUTLINED_FUNCTION_15_5();
  v21(v31, v33);
  OUTLINED_FUNCTION_47_0();
  v23 = *((*(v22 + 240))() + 16);

  v24 = v23 == 0;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321C8) + 36));
  *v27 = KeyPath;
  v27[1] = sub_1E3AB63F8;
  v27[2] = v26;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB1CF8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_95_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32180);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_36();
  (*(v3 + 408))(v13);
  v14[0] = v13[2];
  sub_1E3743538(v14, &v12, &qword_1ECF29088);
  sub_1E3844FE0(v13);
  if (v14[0])
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_57_13();
    v4 = OUTLINED_FUNCTION_27_37();
    v5(v4);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    sub_1E325F6F0(v14, &qword_1ECF29088);
    v6 = OUTLINED_FUNCTION_65_13();
  }

  else
  {
    OUTLINED_FUNCTION_19_62();
    nullsub_1(v8, v9);
    v10 = OUTLINED_FUNCTION_32_40();
    v11(v10);
    OUTLINED_FUNCTION_53_5();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_16_71();
    v6 = OUTLINED_FUNCTION_64_13();
  }

  v7(v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AB1F60(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if ((*a1 & 1) == 0 && (*(*a2 + 432))() != 2)
  {
    sub_1E38462B4();
    if (sub_1E4205E84())
    {
      (*(v6 + 104))(v10, *MEMORY[0x1E697D710], v4);
      (*(*a2 + 200))(v10);
      (*(*a2 + 440))(2);
    }
  }
}

void sub_1E3AB210C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v57 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v56 = v9 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v15 = v14;
  OUTLINED_FUNCTION_36();
  (*(v16 + 408))(v58);
  OUTLINED_FUNCTION_36();
  v18 = (*(v17 + 536))();
  if (v19)
  {
    OUTLINED_FUNCTION_8();
    v21 = *((*(v20 + 240))() + 16);
  }

  else
  {
    v21 = v18;
  }

  v22 = [objc_opt_self() sharedInstance];
  v23 = v22;
  if (v21 >= 2)
  {
    if (v22)
    {
      if (v58[12])
      {

        v24 = sub_1E4205ED4();
      }

      else
      {
        v24 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1E4298880;
      *(v26 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v27 = sub_1E3AB5878(v24, v26, v23);
      v29 = v28;

      goto LABEL_16;
    }

LABEL_17:
    v27 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  if (!v22)
  {
    goto LABEL_17;
  }

  if (v58[10])
  {

    OUTLINED_FUNCTION_34();
    v25 = sub_1E4205ED4();
  }

  else
  {
    v25 = 0;
  }

  v24 = [v23 localizedStringForKey_];

  if (!v24)
  {
    goto LABEL_17;
  }

  v27 = sub_1E4205F14();
  v29 = v30;
LABEL_16:

LABEL_18:
  sub_1E4200A04();
  v31 = sub_1E4200A34();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_2_4();
  v35 = swift_allocObject();
  *(v35 + 16) = v3;
  *(v35 + 24) = v1;
  MEMORY[0x1EEE9AC00](v35);
  *(&v53 - 2) = v27;
  *(&v53 - 1) = v29;

  sub_1E4203954();

  v37 = v58[13];
  v36 = v58[14];

  sub_1E4200A14();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v31);
  OUTLINED_FUNCTION_2_4();
  v41 = swift_allocObject();
  *(v41 + 16) = v3;
  *(v41 + 24) = v1;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_47_27();
  *(v42 - 16) = v37;
  *(v42 - 8) = v36;

  OUTLINED_FUNCTION_142_4();
  sub_1E4203954();

  v43 = v54;
  v44 = *(v54 + 16);
  v45 = v55;
  v46 = v53;
  v44(v55, v15, v53);
  v47 = v56;
  v44(v56, v27, v46);
  v48 = v57;
  v49 = OUTLINED_FUNCTION_125();
  (v44)(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178);
  v44(v48 + *(v50 + 48), v47, v46);
  sub_1E3844FE0(v58);
  v51 = *(v43 + 8);
  v51(v27, v46);
  v51(v15, v46);
  v52 = OUTLINED_FUNCTION_38_0();
  (v51)(v52);
  v51(v45, v46);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB26D4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_85_6(v2, MEMORY[0x1E69E6370], v3, v4, v5, v6, v7, v8, v13, *v14, *&v14[4], v14[6], 0);
  sub_1E42038E4();
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v9, v10);
  OUTLINED_FUNCTION_63_0();
  result = sub_1E42010C4();
  *a1 = v2;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  return result;
}

uint64_t type metadata accessor for CollectionViewCellEditableModifier()
{
  result = qword_1EE291890;
  if (!qword_1EE291890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3AB2824()
{
  OUTLINED_FUNCTION_31_1();
  v73 = v2;
  v81 = v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FE0);
  OUTLINED_FUNCTION_0_10();
  v75 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v74 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FE8);
  OUTLINED_FUNCTION_0_10();
  v79 = v8;
  v80 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v77 = v10;
  OUTLINED_FUNCTION_138();
  v11 = type metadata accessor for CollectionViewCellEditableModifier();
  OUTLINED_FUNCTION_0_10();
  v72 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v83 = v17;
  OUTLINED_FUNCTION_138();
  v84 = sub_1E42011E4();
  OUTLINED_FUNCTION_0_10();
  v76 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_138();
  v23 = sub_1E4203C04();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_49_2();
  v82 = v11;
  if (!*(v0 + *(v11 + 20)))
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v68, v69);
    OUTLINED_FUNCTION_50_21();
    sub_1E4201744();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_8();
  v33 = *(v32 + 168);

  v35 = v33(v34);

  if (v35)
  {
    v36 = v0;
    sub_1E3AB3B98(v1);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (__swift_getEnumTagSinglePayload(v1, 1, v37) == 1)
    {
      sub_1E325F6F0(v1, &qword_1ECF31FF0);
LABEL_8:
      v38 = 0;
      goto LABEL_9;
    }

    MEMORY[0x1E690E3F0](v37);
    sub_1E325F6F0(v1, &qword_1ECF31FC8);
    v39 = sub_1E4203BF4();
    (*(v25 + 8))(v29, v23);
    if ((v39 & 1) == 0)
    {
      goto LABEL_8;
    }

    v38 = [objc_opt_self() isStoreOrPressDemoMode] ^ 1;
  }

  else
  {
    v38 = 0;
    v36 = v0;
  }

LABEL_9:
  v40 = v83;
  sub_1E3AB2FB8(v36, v83);
  v41 = *(v72 + 80);
  v42 = (v41 + 16) & ~v41;
  v43 = swift_allocObject();
  sub_1E3AB301C(v40, v43 + v42);
  sub_1E3AB2FB8(v36, v15);
  v44 = v41;
  v45 = swift_allocObject();
  sub_1E3AB301C(v15, v45 + v42);
  sub_1E42011D4();
  if (v38)
  {
    sub_1E4200BA4();
  }

  else
  {
    sub_1E4200BB4();
  }

  v46 = OUTLINED_FUNCTION_53_5();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v46);
  OUTLINED_FUNCTION_1_11();
  v49 = sub_1E328FCF4(v48, &qword_1ECF31FF8);
  OUTLINED_FUNCTION_35_33();
  v52 = sub_1E3AB4478(v50, v51);
  v53 = v74;
  v71 = v22;
  v54 = v84;
  sub_1E42034B4();
  OUTLINED_FUNCTION_64_5();
  LOBYTE(v86) = v55;
  v87 = v56;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  sub_1E42038F4();
  v57 = v83;
  sub_1E3AB2FB8(v36, v83);
  v72 = v44;
  v58 = v36;
  v59 = swift_allocObject();
  sub_1E3AB301C(v57, v59 + v42);
  v86 = v47;
  v87 = v54;
  v88 = v49;
  v89 = v52;
  OUTLINED_FUNCTION_38_26();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = MEMORY[0x1E69E6370];
  v63 = v77;
  v62 = v78;
  sub_1E4203524();

  (*(v75 + 8))(v53, v62);
  OUTLINED_FUNCTION_64_5();
  LOBYTE(v86) = v64;
  v87 = v65;
  sub_1E42038F4();
  sub_1E3AB2FB8(v58, v57);
  v66 = swift_allocObject();
  sub_1E3AB301C(v57, v66 + v42);
  v86 = v62;
  v87 = v61;
  v88 = OpaqueTypeConformance2;
  v89 = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v67 = v80;
  sub_1E4203524();

  (*(v79 + 8))(v63, v67);
  (*(v76 + 8))(v71, v84);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB2FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB301C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB3080()
{
  type metadata accessor for CollectionViewCellEditableModifier();
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_135_0();
  v2 = v0 + v1;
  v4 = *(v0 + v1 + *(v3 + 36));
  v5 = *(v4 + 24);
  if (*(v2 + *(v3 + 20)))
  {
    v6 = *(v4 + 16);
    OUTLINED_FUNCTION_12_6();
    v8 = *(v7 + 240);

    v10 = v8(v9);

    LOBYTE(v8) = sub_1E3AB391C(v6, v5, v10);

    OUTLINED_FUNCTION_12_6();
    v12 = (v11 + 256);
    if (v8)
    {
      v13 = *v12;

      v14 = v13(v26);
      v15 = sub_1E3AB5178(v6, v5);
      sub_1E37E9E48(v15, v16);

      v14(v26, 0);

      OUTLINED_FUNCTION_64_5();
      v26[0] = v17;
      v27 = v18;
      LOBYTE(v28) = 0;
    }

    else
    {
      v19 = *v12;

      v20 = v19(v26);
      sub_1E3AB47A8(&v28, v6, v5);

      v20(v26, 0);

      OUTLINED_FUNCTION_64_5();
      v26[0] = v21;
      v27 = v22;
      LOBYTE(v28) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
    return sub_1E4203904();
  }

  else
  {
    type metadata accessor for CollectionEditableModel(0);
    OUTLINED_FUNCTION_0_131();
    sub_1E3AB4478(v24, v25);

    OUTLINED_FUNCTION_50_21();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3AB3318()
{
  v0 = type metadata accessor for CollectionViewCellEditableModifier();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return OUTLINED_FUNCTION_80_8();
}

uint64_t sub_1E3AB33A4(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier();
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_135_0();
  v6 = v2 + v5;
  v7 = *a2;
  OUTLINED_FUNCTION_64_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  result = sub_1E42038F4();
  if ((v11 & 1) == 0)
  {
    if (*(v6 + *(v4 + 24)))
    {

      sub_1E3B1DDF0();

      sub_1E383E8EC();
      if (v7)
      {
        sub_1E383FB9C();
        OUTLINED_FUNCTION_91();
        sub_1E4207284();
        sub_1E383FBF4();
        if ((sub_1E4205E84() & 1) == 0)
        {
          sub_1E42072B4();
        }
      }

      else
      {
        sub_1E383FB9C();
        OUTLINED_FUNCTION_91();
        sub_1E4207284();
        OUTLINED_FUNCTION_74();
        if ((sub_1E4207294() & 1) == 0)
        {
          sub_1E42072A4();
        }
      }

      sub_1E3B1E260();
    }

    else
    {
      type metadata accessor for ViewInteractionStates();
      OUTLINED_FUNCTION_17_66();
      sub_1E3AB4478(v9, v10);
      OUTLINED_FUNCTION_50_21();
      result = sub_1E4201744();
      __break(1u);
    }
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(type metadata accessor for CollectionViewCellEditableModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FC8);
    if (!__swift_getEnumTagSinglePayload(v0 + v2, 1, v3))
    {

      v4 = *(v3 + 32);
      sub_1E4203C04();
      OUTLINED_FUNCTION_2();
      (*(v5 + 8))(v0 + v2 + v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3AB374C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for CollectionViewCellEditableModifier();
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_135_0();
  if (*(v2 + *(v5 + 32) + v6))
  {
    v7 = *a2;

    sub_1E3B1DDF0();

    sub_1E383E8EC();
    if (v7)
    {
      sub_1E383FB9C();
      OUTLINED_FUNCTION_91();
      sub_1E4207284();
      sub_1E383FBF4();
      if ((sub_1E4205E84() & 1) == 0)
      {
        sub_1E42072B4();
      }
    }

    else
    {
      sub_1E383FB9C();
      OUTLINED_FUNCTION_91();
      sub_1E4207284();
      OUTLINED_FUNCTION_74();
      if ((sub_1E4207294() & 1) == 0)
      {
        sub_1E42072A4();
      }
    }

    sub_1E3B1E260();
  }

  else
  {
    type metadata accessor for ViewInteractionStates();
    OUTLINED_FUNCTION_17_66();
    sub_1E3AB4478(v9, v10);
    OUTLINED_FUNCTION_50_21();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3AB391C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E4207B44();
  sub_1E4207B64();
  if (a2)
  {
    sub_1E4206014();
  }

  v7 = sub_1E4207BA4();
  v8 = a3 + 56;
  v9 = -1 << *(a3 + 32);
  v10 = v7 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = *(a3 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a2)
    {
      return 1;
    }

LABEL_16:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v15 = *v13 == a1 && v14 == a2;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

void sub_1E3AB3A44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  OUTLINED_FUNCTION_20_2();
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for CollectionViewCellEditableModifier();
  v5 = (a2 + v4[5]);
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v6, v7);
  *v5 = sub_1E4201754();
  v5[1] = v8;
  v9 = (a2 + v4[6]);
  type metadata accessor for ViewInteractionStates();
  OUTLINED_FUNCTION_17_66();
  sub_1E3AB4478(v10, v11);
  v12 = sub_1E4201754();
  *v9 = v12;
  v9[1] = v13;
  OUTLINED_FUNCTION_85_6(v12, v13, v14, v15, v16, v17, v18, v19, v44, *v48, *&v48[4], v48[6], 0);
  v20 = sub_1E42038E4();
  OUTLINED_FUNCTION_84_8(v20, v21, v22, v23, v24, v25, v26, v27, v45, v49, v54, v56);
  OUTLINED_FUNCTION_85_6(v28, v29, v30, v31, v32, v33, v34, v35, v46, v50, v52, v53, 0);
  v36 = sub_1E42038E4();
  OUTLINED_FUNCTION_84_8(v36, v37, v38, v39, v40, v41, v42, v43, v47, v51, v55, v57);
  *(a2 + v4[9]) = a1;
}

uint64_t sub_1E3AB3B98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FD8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1E3743538(v2, &v16 - v9, &qword_1ECF31FD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E3AB5108(v10, a1);
  }

  v12 = sub_1E4206804();
  v13 = sub_1E42026D4();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(0xD00000000000001BLL, 0x80000001E426FC40, &v17);
    _os_log_impl(&dword_1E323F000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E69143B0](v15, -1, -1);
    MEMORY[0x1E69143B0](v14, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E3AB3E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 32);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void sub_1E3AB3E90()
{
  sub_1E3AB3F5C();
  if (v0 <= 0x3F)
  {
    sub_1E3AB3FC0();
    if (v1 <= 0x3F)
    {
      sub_1E3AB4054();
      if (v2 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3AB3F5C()
{
  if (!qword_1EE289E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31FF0);
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E78);
    }
  }
}

void sub_1E3AB3FC0()
{
  if (!qword_1EE2892C8)
  {
    type metadata accessor for CollectionEditableModel(255);
    sub_1E3AB4478(&qword_1EE25D778, type metadata accessor for CollectionEditableModel);
    v0 = sub_1E4201764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2892C8);
    }
  }
}

void sub_1E3AB4054()
{
  if (!qword_1EE2892D0)
  {
    type metadata accessor for ViewInteractionStates();
    sub_1E3AB4478(qword_1EE263DF8, type metadata accessor for ViewInteractionStates);
    v0 = sub_1E4201764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2892D0);
    }
  }
}

void sub_1E3AB40E8()
{
  if (!qword_1EE288668)
  {
    v0 = sub_1E4203924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE288668);
    }
  }
}

unint64_t sub_1E3AB4138()
{
  result = qword_1ECF32010;
  if (!qword_1ECF32010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BB08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31F30);
    sub_1E3AACCB4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1ECF31FB8, &qword_1ECF2BB08);
    swift_getOpaqueTypeConformance2();
    sub_1E3AACFCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32010);
  }

  return result;
}

unint64_t sub_1E3AB4310()
{
  result = qword_1ECF32050;
  if (!qword_1ECF32050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32058);
    sub_1E328FCF4(&qword_1ECF32060, &qword_1ECF32058);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32068);
    sub_1E328FCF4(&qword_1ECF32070, &qword_1ECF32068);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32050);
  }

  return result;
}

uint64_t sub_1E3AB4478(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E3AB44BC()
{
  result = qword_1ECF55270;
  if (!qword_1ECF55270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF55270);
  }

  return result;
}

uint64_t sub_1E3AB4510@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 240);
  v4 = swift_retain_n();
  v3(v4);

  OUTLINED_FUNCTION_36();
  (*(v5 + 384))();

  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v6, v7);
  OUTLINED_FUNCTION_55_0();
  sub_1E42010C4();
  sub_1E3AB4700();
  sub_1E3AB4754();
  sub_1E4201F44();
  OUTLINED_FUNCTION_24_4();
  sub_1E380E99C();
  OUTLINED_FUNCTION_55_0();
  v8 = sub_1E42010C4();
  v10 = v9;
  sub_1E42038E4();
  OUTLINED_FUNCTION_24_4();
  sub_1E380E99C();

  OUTLINED_FUNCTION_24_4();
  sub_1E3264CE0();
  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;

  OUTLINED_FUNCTION_24_4();
  return sub_1E3264CE0();
}

unint64_t sub_1E3AB4700()
{
  result = qword_1ECF55278;
  if (!qword_1ECF55278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF55278);
  }

  return result;
}

unint64_t sub_1E3AB4754()
{
  result = qword_1ECF55280[0];
  if (!qword_1ECF55280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF55280);
  }

  return result;
}

uint64_t sub_1E3AB47A8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1E4207B44();
  sub_1E4207B64();
  if (a3)
  {
    sub_1E4206014();
  }

  v8 = sub_1E4207BA4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1E3AB4BA8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_17;
    }

LABEL_14:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!a3)
  {
    goto LABEL_14;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1E3AB4930()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0);
  result = sub_1E4207444();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v17 = *v15;
    v16 = v15[1];
    sub_1E4207B44();
    sub_1E4207B64();
    if (v16)
    {
      sub_1E4206014();
    }

    result = sub_1E4207BA4();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v17;
    v26[1] = v16;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3AB4BA8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1E3AB4930();
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_1E3AB4D64();
        goto LABEL_22;
      }

      sub_1E3AB4EB8();
    }

    v11 = *v4;
    sub_1E4207B44();
    sub_1E4207B64();
    if (a2)
    {
      sub_1E4206014();
    }

    result = sub_1E4207BA4();
    v12 = v11 + 56;
    v13 = -1 << *(v11 + 32);
    a3 = result & ~v13;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      v15 = *(v11 + 48);
      do
      {
        v16 = (v15 + 16 * a3);
        v17 = v16[1];
        if (v17)
        {
          if (a2)
          {
            if (*v16 == v8 && v17 == a2)
            {
              goto LABEL_25;
            }

            result = sub_1E42079A4();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v14;
      }

      while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    result = sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_1E3AB4D64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_1E3AB4EB8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF320A0);
  result = sub_1E4207444();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v16 = *v14;
        v15 = v14[1];
        sub_1E4207B44();
        sub_1E4207B64();
        if (v15)
        {

          sub_1E4206014();
        }

        result = sub_1E4207BA4();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v16;
        v25[1] = v15;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_27;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1E3AB5108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31FF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AB5178(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  sub_1E4207B64();
  if (a2)
  {
    sub_1E4206014();
  }

  v6 = sub_1E4207BA4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v13 = *v11 == a1 && v12 == a2;
  if (!v13 && (sub_1E42079A4() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E3AB4D64();
    v16 = v18;
  }

  v14 = *(*(v16 + 48) + 16 * v8);
  sub_1E3AB52F0(v8);
  *v2 = v18;
  return v14;
}

unint64_t sub_1E3AB52F0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_1E4207B44();
        sub_1E4207B64();
        if (v10)
        {

          sub_1E4206014();
        }

        v11 = sub_1E4207BA4() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_17:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_17;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1E3AB54EC()
{
  result = qword_1ECF320D8;
  if (!qword_1ECF320D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF320D0);
    sub_1E328FCF4(&qword_1ECF320E0, &qword_1ECF320E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF320D8);
  }

  return result;
}

void sub_1E3AB559C(uint64_t a1@<X8>)
{
  *a1 = sub_1E4201B84();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32108);
  sub_1E3AADA8C();
}

unint64_t sub_1E3AB55FC()
{
  result = qword_1ECF32140;
  if (!qword_1ECF32140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32138);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32140);
  }

  return result;
}

uint64_t sub_1E3AB56B8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return OUTLINED_FUNCTION_80_8();
}

uint64_t sub_1E3AB5748()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(0);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 488))();
}

uint64_t sub_1E3AB57C8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 440))(1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_93_5();
  v2();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB5878(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1E376948C();
  v5 = sub_1E42062A4();

  v6 = [a3 localizedStringForKey:a1 withCounts:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1E4205F14();

  return v7;
}

uint64_t sub_1E3AB591C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_93_5();
  v1();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB599C()
{

  sub_1E3AAF2AC(v0);
  OUTLINED_FUNCTION_8();
  return (*(v1 + 248))();
}

uint64_t objectdestroyTm_22()
{

  OUTLINED_FUNCTION_89();

  return swift_deallocObject();
}

unint64_t sub_1E3AB5A88()
{
  result = qword_1ECF32198;
  if (!qword_1ECF32198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321A0);
    sub_1E328FCF4(&qword_1ECF32038, &qword_1ECF32030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32048);
    sub_1E3AB4310();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32198);
  }

  return result;
}

unint64_t sub_1E3AB5C54()
{
  result = qword_1ECF321B0;
  if (!qword_1ECF321B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321A8);
    sub_1E37AE064();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321B0);
  }

  return result;
}

uint64_t sub_1E3AB5CF8()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 384))();
  sub_1E3AAF2AC(v1);
  OUTLINED_FUNCTION_8();
  return (*(v2 + 248))();
}

uint64_t sub_1E3AB5D6C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_93_5();
  v1();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB5DEC()
{
  (*(**(v0 + 24) + 440))(2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0);
  return OUTLINED_FUNCTION_80_8();
}

uint64_t sub_1E3AB5E8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionEditableModel(0);
  OUTLINED_FUNCTION_0_131();
  sub_1E3AB4478(v2, v3);

  OUTLINED_FUNCTION_55_0();
  result = sub_1E42010C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1E3AB5F00()
{
  result = qword_1EE292FA0[0];
  if (!qword_1EE292FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE292FA0);
  }

  return result;
}

uint64_t objectdestroy_99Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E3AB5FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

      return OUTLINED_FUNCTION_5_25(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_25(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E3AB5FE4()
{
  result = qword_1ECF321E0;
  if (!qword_1ECF321E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF320E8);
    sub_1E328FCF4(&qword_1ECF320E0, &qword_1ECF320E8);
    sub_1E32822E0();
    sub_1E3AB5F00();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288760, &qword_1ECF2A928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321E0);
  }

  return result;
}

uint64_t sub_1E3AB61B8()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 440))(0);
  OUTLINED_FUNCTION_36();
  return (*(v1 + 488))();
}

uint64_t sub_1E3AB623C()
{
  sub_1E32822E0();

  v0 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v0, v1, v2, v3);
}

uint64_t sub_1E3AB62B8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 440))(1);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_93_5();
  v2();
  OUTLINED_FUNCTION_53_24();
  OUTLINED_FUNCTION_43_27(MEMORY[0x1E69E7CD0]);
  return v0();
}

uint64_t sub_1E3AB636C()
{
  sub_1E32822E0();

  v0 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_53_24()
{
}

void OUTLINED_FUNCTION_57_13()
{

  sub_1E3F23370();
}

__n128 OUTLINED_FUNCTION_77_10(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_80_8()
{

  return sub_1E4203904();
}

uint64_t sub_1E3AB64D0(char a1)
{
  v2 = a1;

  sub_1E3B50420(&v2);
}

uint64_t sub_1E3AB654C()
{
}

uint64_t sub_1E3AB6594()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1E3AB6618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for AppEnvironment();
  OUTLINED_FUNCTION_1_134();
  sub_1E3AB6DE0(v10, v11);
  v12 = sub_1E4201754();
  v14 = v13;
  type metadata accessor for FullScreenBarButtonModel(0);

  v15 = sub_1E39EF110();
  v16 = *(*a3 + 416);

  v18 = v16(v17);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  result = memcpy((a6 + 24), a4, 0x64uLL);
  *(a6 + 128) = v12;
  *(a6 + 136) = v14;
  *(a6 + 144) = sub_1E3AB6768;
  *(a6 + 152) = v15;
  *(a6 + 160) = 0;
  *(a6 + 168) = v18;
  *(a6 + 176) = a5;
  return result;
}

uint64_t sub_1E3AB6768()
{
  type metadata accessor for CanonicalStateObjectWrapper();
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper__templateDidHost;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58);
  v4 = 0;
  *(v1 + v2) = sub_1E3B508D0(&v4);
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper_fullScreenBarButtonModel) = v0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3AB6804()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 392);

  v4 = v2(v3);
  type metadata accessor for CanonicalStateObjectWrapper();
  OUTLINED_FUNCTION_0_132();
  sub_1E3AB6DE0(v5, v6);
  v7 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper_fullScreenBarButtonModel);

  (*(*v4 + 360))(v7);
  memcpy(__dst, (v0 + 24), 0x64uLL);

  sub_1E3AB6E28(__dst, v16);

  OUTLINED_FUNCTION_3_24();
  sub_1E40D9BF4();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_2_107(v8);
  sub_1E3AB7008(v0, v16);
  sub_1E40DB940();

  sub_1E3AB7040(v13);
  v9 = memcpy(v12, __src, sizeof(v12));
  (*(*v1 + 296))(v9);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_2_107(v10);
  sub_1E3AB7008(v0, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321E8);
  sub_1E3AB6CD8();
  sub_1E3AB6D2C();
  sub_1E4203524();

  memcpy(v16, v12, sizeof(v16));
  return sub_1E3AB7040(v16);
}

uint64_t type metadata accessor for CanonicalStateObjectWrapper()
{
  result = qword_1EE294DA0;
  if (!qword_1EE294DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3AB6C1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1E3AB6C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AB6CD8()
{
  result = qword_1ECF321F0;
  if (!qword_1ECF321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321F0);
  }

  return result;
}

unint64_t sub_1E3AB6D2C()
{
  result = qword_1ECF321F8;
  if (!qword_1ECF321F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321E8);
    sub_1E3AB6DE0(qword_1EE23C0A8, type metadata accessor for Document);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321F8);
  }

  return result;
}

uint64_t sub_1E3AB6DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E3AB6E84(void *a1)
{
  v3 = *(v1 + 32);
  if (!(*(*v3 + 752))())
  {
    v4 = (*a1 + 576);
    v5 = *v4;
    v6 = (*v4)();
    v7 = (*(*v3 + 760))(v6);
    v8 = *(v1 + 184);
    (v5)(v7);
    (*(*v8 + 200))();
  }

  type metadata accessor for CanonicalStateObjectWrapper();
  OUTLINED_FUNCTION_0_132();
  sub_1E3AB6DE0(v9, v10);
  sub_1E4200BC4();
  sub_1E3AB64D0(1);
}

uint64_t objectdestroyTm_23()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E3AB7120(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a2;
  if (!*a2 || (swift_beginAccess(), (v6 = *(v5 + 64)) == 0))
  {
LABEL_45:
    v27 = *(v4 + 32);
    v28 = (*(*v27 + 392))();
    v29 = (*(*v27 + 296))();
    if (v29)
    {
      v30 = v29;
      swift_beginAccess();
      v31 = *(v30 + 64);
    }

    else
    {
      v31 = 0;
    }

    (*(*v28 + 200))(v31);
  }

  v7 = *(*v6 + 488);

  v9 = v7(v8);
  if (!v9 || (v10 = sub_1E373E010(102, v9), v11 = , !v10) || (v12 = (*(*v10 + 464))(v11), , !v12))
  {
LABEL_44:

    goto LABEL_45;
  }

  swift_beginAccess();
  v13 = *(v5 + 56);
  if (!v13)
  {

    goto LABEL_44;
  }

  v41 = v4;
  v14 = sub_1E32AE9B0(v12);
  v42 = v13;

  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      v4 = v41;
      goto LABEL_44;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1E6911E60](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v3 = *(v12 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:

LABEL_55:

      v32 = type metadata accessor for EpisodeCollectionViewModel();
      v33 = swift_dynamicCastClass();
      if (v33)
      {
        v34 = v33;
        v35 = (*(*v3 + 600))();
        v4 = v41;
        if (v35)
        {
          v36 = v35;
          v46 = v32;
          *&v45 = v34;
          sub_1E329504C(&v45, v44);

          swift_isUniquelyReferenced_nonNull_native();
          sub_1E32A87C0(v44, v39, v40);

          v37 = v36;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = v39;
          *(inited + 40) = v40;
          *(inited + 72) = v32;
          *(inited + 48) = v34;

          v37 = sub_1E4205CB4();
        }

        (*(*v3 + 608))(v37);
      }

      else
      {

        v4 = v41;
      }

      goto LABEL_43;
    }

    v47 = 63;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v45 == *&v44[0] && *(&v45 + 1) == *(&v44[0] + 1))
    {
      break;
    }

    v17 = sub_1E42079A4();

    if (v17)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  v4 = v41;
  if ((sub_1E373F6E0() & 1) == 0 || (sub_1E397D25C() & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  LOBYTE(v44[0]) = 15;
  (*(*v3 + 776))(&v45, v44, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v46)
  {
    sub_1E329505C(&v45);
    goto LABEL_43;
  }

  if (!swift_dynamicCast() || (v44[0] & 1) == 0)
  {
    goto LABEL_43;
  }

  *&v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32270);
  v18 = sub_1E4205F84();
  v20 = v19;
  v21 = (*(*v42 + 464))();
  if (!v21)
  {
LABEL_51:

    v4 = v41;
    goto LABEL_43;
  }

  v22 = v21;
  v39 = v18;
  v40 = v20;
  result = sub_1E32AE9B0(v21);
  v43 = result;
  for (j = 0; ; ++j)
  {
    if (v43 == j)
    {

      goto LABEL_51;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](j, v22);
    }

    else
    {
      if (j >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    v47 = 130;
    sub_1E4206254();
    sub_1E4206254();
    if (v45 == *&v44[0] && *(&v45 + 1) == *(&v44[0] + 1))
    {
      goto LABEL_54;
    }

    v26 = sub_1E42079A4();

    if (v26)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1E3AB7854()
{
  v1 = v0;
  v41 = 263;
  v2 = *v0;
  if (v2 == 256)
  {
    v9 = *(v0 + 3);
    if (v9)
    {
      v10 = *(v9 + 16);
      for (i = (v9 + 32); v10; --v10)
      {
        v12 = *i;
        if (*i < 0)
        {
          v16 = objc_opt_self();

          if ([v16 isVision])
          {
            goto LABEL_50;
          }
        }

        else
        {

          v13 = *(sub_1E3AF4598() + 98);

          v40 = v13;
          sub_1E3742F1C();
          OUTLINED_FUNCTION_125();
          sub_1E4206254();
          OUTLINED_FUNCTION_125();
          sub_1E4206254();
          if (v42 == v38 && *(&v42 + 1) == v39)
          {

LABEL_50:

            v37 = sub_1E403C45C(v12);

            v41 = v37;
            goto LABEL_28;
          }

          v15 = OUTLINED_FUNCTION_97_0();

          if (v15)
          {
            goto LABEL_50;
          }
        }

        ++i;
      }
    }

LABEL_26:
    v17 = 23;
    goto LABEL_27;
  }

  if (v2 != 193)
  {
    if (v2 != 171)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v3 = *(v0 + 3);
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  if (!v4)
  {
    goto LABEL_26;
  }

  while (1)
  {
    if ((*v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_47_28();
    swift_retain_n();
    v6 = *(sub_1E3AF4598() + 98);

    v40 = v6;
    sub_1E3742F1C();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    if (v42 == v38 && *(&v42 + 1) == v39)
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_97_0();

    OUTLINED_FUNCTION_47_28();

    if (v8)
    {
      goto LABEL_48;
    }

LABEL_13:
    ++v5;
    if (!--v4)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_47_28();

LABEL_48:
  v17 = 15;
LABEL_27:
  v41 = v17;
LABEL_28:
  v18 = v1[9];
  if (v18)
  {
    type metadata accessor for LibDownloadButtonViewModel();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + 280);
      v21 = type metadata accessor for DownloadStateIndicatorViewModel();
      v22 = *(*v18 + 624);

      v23 = v20;

      v22(v24);
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      OUTLINED_FUNCTION_52_0();
      sub_1E4173E90(v25, v26, v27, v28, v29, v30);
      OUTLINED_FUNCTION_31_4();

      if (v21)
      {
LABEL_34:
        MEMORY[0x1E6910BF0](v31);
        OUTLINED_FUNCTION_51_22();
        if (v32)
        {
          OUTLINED_FUNCTION_41_30();
        }

        sub_1E4206324();
      }
    }

    else if (*v18 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {

      goto LABEL_34;
    }
  }

  if (v1[10])
  {

    MEMORY[0x1E6910BF0](v33);
    OUTLINED_FUNCTION_51_22();
    if (v32)
    {
      OUTLINED_FUNCTION_41_30();
    }

    sub_1E4206324();
  }

  *&v42 = sub_1E4201D44();
  if (sub_1E373F6E0())
  {
    *&v42 = sub_1E4201D64();
  }

  HIBYTE(v40) = BYTE1(v2);
  sub_1E3741534();
  LOBYTE(v40) = (sub_1E4205E84() & 1) == 0;
  v34 = v1[3];
  if (v34)
  {
    v35 = sub_1E3AB7CF4(v34, &v40, &v41);
  }

  else
  {

    return 0;
  }

  return v35;
}

uint64_t sub_1E3AB7CF4(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E3ABC6C8(0, v3, 0);
    v8 = (a1 + 32);
    v4 = v23;
    v18 = a3;
    do
    {
      v10 = *v8++;
      v9 = v10;
      if (v10 < 0)
      {
      }

      else
      {

        sub_1E3AF4598();
        if ((*a2 & 1) != 0 && *a3 != 263)
        {
          sub_1E3742F1C();
          sub_1E4206254();
          sub_1E4206254();
          if (v21 == v19 && v22 == v20)
          {
          }

          else
          {
            v12 = sub_1E42079A4();

            if ((v12 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v13 = [objc_opt_self() sharedInstance];
          v14 = [v13 launchConfig];

          [v14 deferRichTextViewUpdate];

          sub_1E3AF4DE0();

LABEL_16:

          a3 = v18;
          goto LABEL_17;
        }
      }

LABEL_17:
      v16 = *(v23 + 16);
      v15 = *(v23 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1E3ABC6C8((v15 > 1), v16 + 1, 1);
      }

      *(v23 + 16) = v16 + 1;
      *(v23 + 8 * v16 + 32) = v9;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1E3AB7F40(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = &unk_1F5D6EC58;
  v24 = &unk_1F5D6EBB0;
  switch(*(a1 + 98))
  {
    case 0xAA:
      v24 = &unk_1F5D6EBD8;
      goto LABEL_8;
    case 0xAB:
      v24 = &unk_1F5D6EC08;
      goto LABEL_8;
    case 0xAC:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
      goto LABEL_6;
    case 0xAD:
      goto LABEL_8;
    case 0xB3:
      goto LABEL_9;
    default:
      if (&unk_1F5D6EBB0 - 187 < 2)
      {
        goto LABEL_9;
      }

      if (&unk_1F5D6EBB0 == 183)
      {
        v24 = &unk_1F5D6EC30;
      }

      else
      {
LABEL_6:
        v24 = &unk_1F5D6EC80;
      }

LABEL_8:
      v23 = v24;
LABEL_9:
      OUTLINED_FUNCTION_8();
      result = (*(v25 + 488))();
      if (!result)
      {
      }

      v27 = result;
      v28 = v23[2];
      if (!v28)
      {
        goto LABEL_17;
      }

      v37 = a2;
      v29 = v28 + 15;
      break;
  }

  while (1)
  {
    if ((v29 - 16) >= v23[2])
    {
      __break(1u);
      return result;
    }

    if (*(v27 + 16))
    {
      result = sub_1E3740AE8(*(v23 + v29));
      if ((v30 & 1) != 0 && **(*(v27 + 56) + 8 * result) == _TtC8VideosUI13TextViewModel)
      {
        break;
      }
    }

    if (--v29 == 15)
    {
LABEL_17:
    }
  }

  v31 = sub_1E3C27528();

  if (!v31)
  {
    return result;
  }

  type metadata accessor for TextLayout();
  if (!swift_dynamicCastClass())
  {
  }

  OUTLINED_FUNCTION_26_0();
  v33 = (*(v32 + 1688))();
  if (v33 == 27)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    return sub_1E325F6F0(v15, &qword_1ECF2DEE8);
  }

  sub_1E3E3B33C(v33, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    return sub_1E325F6F0(v15, &qword_1ECF2DEE8);
  }

  (*(v18 + 32))(v22, v15, v16);
  v34 = OUTLINED_FUNCTION_125();
  v35(v34);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v16);
  sub_1E405EA04(a5, v12, v37);

  sub_1E325F6F0(v12, &qword_1ECF2DEE8);
  return (*(v18 + 8))(v22, v16);
}

void *sub_1E3AB8358(unsigned __int16 a1)
{
  v1 = a1;
  v2 = a1 - 170;
  result = &unk_1F5D6EBB0;
  switch(v2)
  {
    case 0:
      return &unk_1F5D6EBD8;
    case 1:
      return &unk_1F5D6EC08;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      return &unk_1F5D6EC80;
    case 3:
      return result;
    case 9:
      return &unk_1F5D6EC58;
    default:
      if ((v1 - 187) < 2)
      {
        return &unk_1F5D6EC58;
      }

      if (v1 == 183)
      {
        return &unk_1F5D6EC30;
      }

      return &unk_1F5D6EC80;
  }
}

void sub_1E3AB83E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for Card(0);
  v16 = v15[6];
  *(v7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *v7 = v5;
  type metadata accessor for ContextMenuModel();
  OUTLINED_FUNCTION_47_28();
  swift_retain_n();
  v17 = sub_1E3E6CDBC();
  v19 = *v17;
  v18 = v17[1];
  v22[0] = v19;
  v22[1] = v18;

  sub_1E4207414();
  (*(v10 + 104))(v14, *MEMORY[0x1E697E660], v8);
  *(v7 + v15[7]) = sub_1E4188148(v5, v14);
  memcpy(v7 + 1, v3, 0xC3uLL);
  v20 = swift_allocObject();
  v20[2] = v5;
  memcpy(v20 + 3, v3, 0xC3uLL);
  v20[28] = v1;
  v21 = v7 + v15[8];
  *v21 = sub_1E3ABC810;
  *(v21 + 1) = v20;
  v21[16] = 0;
  sub_1E375C1CC(v3, v22);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB85C4(uint64_t a1, const void *a2, uint64_t a3)
{
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_31_4();
  return sub_1E3ABB958(v5, a2, a3);
}

uint64_t sub_1E3AB8614@<X0>(uint64_t a1@<X8>)
{
  v107 = a1;
  v3 = type metadata accessor for Card(0);
  v4 = v3 - 8;
  v103 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v104 = v5;
  OUTLINED_FUNCTION_17_3(v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32278);
  OUTLINED_FUNCTION_0_10();
  v84 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v99 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v97 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32280);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32288);
  OUTLINED_FUNCTION_0_10();
  v90 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_50_1();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32290);
  OUTLINED_FUNCTION_0_10();
  v91 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32298);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322A0);
  OUTLINED_FUNCTION_0_10();
  v98 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = *(v2 + *(v4 + 40) + 16);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v28, v29);
  v86 = v27;
  sub_1E4200BC4();
  v30 = *v2;
  sub_1E3AB9000();

  sub_1E3ABC8B4(v110);
  sub_1E4200BC4();
  sub_1E3AB9A8C();

  v32 = v87;
  sub_1E3AB9B88(v31);
  v33 = *(v4 + 36);
  v106 = v2;
  v34 = *(v2 + v33);
  v35 = sub_1E3ABC8E4();
  v36 = v108;
  sub_1E4187EA8(v34, v108, v35);
  sub_1E325F6F0(v32, &qword_1ECF32280);
  v111 = v36;
  v112 = v35;
  v37 = v88;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = v30;
  v39 = v30;
  v40 = v89;
  sub_1E4035F10(v39, v89, OpaqueTypeConformance2);
  (*(v90 + 8))(v1, v40);
  v41 = sub_1E4200BC4();
  v42 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0();
  v43 = *(v41 + v42);

  if (v43 && (OUTLINED_FUNCTION_8(), (*(v44 + 152))(&v111), v45 = v111, v46 = v112, v47 = v113, v48 = v114, , (v115 & 1) == 0))
  {
    v49.n128_u64[0] = v45;
    v50.n128_u64[0] = v46;
    v51.n128_u64[0] = v47;
    v52.n128_u64[0] = v48;
    v53 = j_nullsub_1(v49, v50, v51, v52);
  }

  else
  {
    v53 = OUTLINED_FUNCTION_5_8();
  }

  v57 = v53;
  v58 = v54;
  v59 = v55;
  v60 = v56;
  v61 = sub_1E4202734();
  v62 = v93;
  (*(v91 + 32))(v93, v37, v94);
  v63 = v62 + *(v92 + 36);
  *v63 = v61;
  *(v63 + 8) = v57;
  *(v63 + 16) = v58;
  *(v63 + 24) = v59;
  *(v63 + 32) = v60;
  *(v63 + 40) = 0;
  v64 = v95;
  sub_1E4202474();
  sub_1E3ABC9C4();
  v65 = v96;
  sub_1E4203224();
  (*(v97 + 8))(v64, v99);
  sub_1E325F6F0(v62, &qword_1ECF32298);
  type metadata accessor for LibLockupViewModel();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_26_0();
    v67 = (*(v66 + 1184))();
  }

  else
  {
    v68 = v83[1];
    sub_1E42005D4();
    sub_1E32752B0(&qword_1ECF322C0, &qword_1ECF32278);
    v69 = v85;
    v67 = sub_1E42006B4();
    (*(v84 + 8))(v68, v69);
  }

  v70 = v106;
  v71 = v105;
  sub_1E3ABCAD0(v106, v105);
  v72 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v73 = swift_allocObject();
  sub_1E3ABCB34(v71, v73 + v72);
  v74 = swift_allocObject();
  *(v74 + 16) = sub_1E3ABCB98;
  *(v74 + 24) = v73;
  v75 = v102;
  (*(v98 + 32))(v102, v65, v100);
  v76 = v101;
  *(v75 + *(v101 + 52)) = v67;
  v77 = (v75 + *(v76 + 56));
  *v77 = sub_1E379E500;
  v77[1] = v74;
  v109 = v108;
  sub_1E3ABCAD0(v70, v71);
  v78 = swift_allocObject();
  sub_1E3ABCB34(v71, v78 + v72);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v79, &qword_1ECF322A8);
  OUTLINED_FUNCTION_9_79();
  sub_1E3ABCEA4(v80, v81);

  sub_1E4203524();

  sub_1E325F6F0(v75, &qword_1ECF322A8);
}

void sub_1E3AB9000()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    type metadata accessor for ViewModel();
    v7 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
    OUTLINED_FUNCTION_5_0();
    v8 = *(v0 + v7);

    v9 = static ViewModel.== infix(_:_:)(v3, v8);

    if (v9)
    {
      v10 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
      OUTLINED_FUNCTION_5_0();
      memcpy(__dst, (v1 + v10), 0x58uLL);
      v11 = __dst[7];
      if (__dst[7])
      {
        v12 = __dst[5];
        v13 = __dst[8];
        v14 = __dst[6];
        v96 = *&__dst[1];
        v97 = *&__dst[3];
        v15 = __dst[0];
        v94 = *&__dst[9];
        sub_1E3743538(__dst, v102, &qword_1ECF322C8);

        sub_1E3ABB8CC(v16);
        v18 = v96;
        v17 = v97;
        v19 = v94;
LABEL_75:
        *v5 = v15;
        *(v5 + 8) = v18;
        *(v5 + 24) = v17;
        *(v5 + 40) = v12 & 1;
        *(v5 + 48) = v14;
        *(v5 + 56) = v11;
        *(v5 + 64) = v13 & 1;
        *(v5 + 72) = v19;
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  __dst[0] = v3;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558);
  if (swift_dynamicCast())
  {
    v20 = v106;
    __swift_project_boxed_opaque_existential_1(&v104, *(&v105 + 1));
    v21 = OUTLINED_FUNCTION_31_4();
    v22(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(&v104);
  }

  else
  {
    v106 = 0;
    v104 = 0u;
    v105 = 0u;
    sub_1E325F6F0(&v104, &qword_1ECF2D560);
  }

  v24 = sub_1E3ABB8CC(v23);
  v102[0] = (*(*v3 + 464))(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  OUTLINED_FUNCTION_24_40(v25, v26, v25);

  v27 = __dst[0];
  v28 = swift_allocObject();
  v29 = v3[49];
  LOBYTE(v102[0]) = 0;
  sub_1E4203AD4();
  v30 = __dst[0];
  v31 = __dst[1];
  *(v28 + 16) = v29;
  v98 = (v28 + 16);
  v32 = __dst[2];
  *(v28 + 24) = 0u;
  *(v28 + 40) = 0u;
  *(v28 + 56) = 0;
  *(v28 + 64) = v30;
  *(v28 + 72) = v31;
  *(v28 + 80) = v32;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  v33 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0();
  if (*(v1 + v33) && (type metadata accessor for CardCollectionViewCellLayout(), swift_dynamicCastClass()))
  {
    OUTLINED_FUNCTION_26_0();
    v35 = *(v34 + 2040);
    v36 = swift_retain_n();
    v37 = v35(v36);
  }

  else
  {
    v37 = 0;
  }

  v38 = sub_1E373F6E0();
  v39 = sub_1E32AE9B0(v27);
  if (!v39)
  {

    v45 = (*(*v3 + 488))(v44);
    if (v45)
    {
      if (*(v45 + 16))
      {
        v87 = v5;
        v46 = v45 + 64;
        v47 = 1 << *(v45 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = v48 & *(v45 + 64);
        v89 = v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext;
        v50 = (v47 + 63) >> 6;
        v95 = v45;

        v88 = 0;
        v51 = 0;
        v90 = v50;
        v91 = v46;
        v92 = v29;
        if (!v49)
        {
          while (1)
          {
LABEL_25:
            v52 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
              goto LABEL_80;
            }

            if (v52 >= v50)
            {
              break;
            }

            v49 = *(v46 + 8 * v52);
            ++v51;
            if (v49)
            {
              v51 = v52;
              goto LABEL_29;
            }
          }

          v57 = v95;

          if ((v88 & 1) == 0)
          {

LABEL_73:
            v5 = v87;
            goto LABEL_74;
          }

          v58 = sub_1E3AB8358(v29);
          v5 = v87;
          if (v58)
          {
            v59 = v58;
            v60 = v58[2];
            if (v60)
            {
              OUTLINED_FUNCTION_3_0();
              v61 = 32;
              v93 = v59;
              while (1)
              {
                v62 = *(v59 + v61);
                if (*(v57 + 16) && (v63 = sub_1E3740AE8(*(v59 + v61)), (v64 & 1) != 0) && (v65 = *(*(v57 + 56) + 8 * v63), *v65 == _TtC8VideosUI13TextViewModel))
                {
                  v102[0] = *(v28 + 40);

                  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0);
                  OUTLINED_FUNCTION_24_40(v66, v67, v66);

                  *(v28 + 40) = __dst[0];

                  v68 = type metadata accessor for RichTextViewModel(0);

                  v69 = sub_1E3AF46D0();
                  v70 = sub_1E3AF46DC();
                  sub_1E3AF46E0(v65, 0, v69, v70, 0, 1);
                  OUTLINED_FUNCTION_43_28();
                  v71 = *(v28 + 40);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v71 = OUTLINED_FUNCTION_40_33();
                  }

                  v73 = *(v71 + 2);
                  v72 = *(v71 + 3);
                  if (v73 >= v72 >> 1)
                  {
                    v71 = OUTLINED_FUNCTION_42_36(v72);
                  }

                  *(v71 + 2) = v73 + 1;
                  *&v71[8 * v73 + 32] = v68;
                }

                else
                {
                  __src[0] = v62;
                  v100[0] = 222;
                  v74 = sub_1E3742F1C();
                  sub_1E4206254();
                  sub_1E4206254();
                  OUTLINED_FUNCTION_49_25();
                  if (v55 && v74 == v100)
                  {
                  }

                  else
                  {
                    v76 = OUTLINED_FUNCTION_97_0();

                    if ((v76 & 1) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

                  if (!*(v57 + 16))
                  {
                    goto LABEL_68;
                  }

                  v77 = sub_1E3740AE8(v62);
                  if ((v78 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  v79 = *(*(v57 + 56) + 8 * v77);
                  v102[0] = *(v28 + 40);

                  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0);
                  OUTLINED_FUNCTION_24_40(v80, v81, v80);

                  *(v28 + 40) = __dst[0];

                  v82 = type metadata accessor for MediaTagsViewModel();

                  v83 = v37;
                  sub_1E403C2C0(v79, v37);
                  OUTLINED_FUNCTION_43_28();
                  v71 = *(v28 + 40);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v71 = OUTLINED_FUNCTION_40_33();
                  }

                  v85 = *(v71 + 2);
                  v84 = *(v71 + 3);
                  if (v85 >= v84 >> 1)
                  {
                    v71 = OUTLINED_FUNCTION_42_36(v84);
                  }

                  *(v71 + 2) = v85 + 1;
                  *&v71[8 * v85 + 32] = v82 | 0x8000000000000000;
                }

                *(v28 + 40) = v71;
                swift_endAccess();

                v57 = v95;
LABEL_68:
                v61 += 2;
                --v60;
                v59 = v93;
                if (!v60)
                {

                  goto LABEL_73;
                }
              }
            }
          }

          else
          {
          }

LABEL_74:
          OUTLINED_FUNCTION_5_0();
          memcpy(v100, v98, sizeof(v100));
          memcpy(__src, v98, sizeof(__src));
          v86 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
          OUTLINED_FUNCTION_3_0();
          memcpy(v102, (v1 + v86), sizeof(v102));
          memcpy((v1 + v86), __src, 0x58uLL);
          sub_1E3ABCEEC(v100, __dst);
          memcpy(__dst, v98, 0x58uLL);
          sub_1E325F6F0(v102, &qword_1ECF322C8);
          sub_1E3ABCEEC(__dst, v99);

          v19 = *&__dst[9];
          v14 = __dst[6];
          v11 = __dst[7];
          v13 = __dst[8];
          v12 = __dst[5];
          v17 = *&__dst[3];
          v18 = *&__dst[1];
          v15 = __dst[0];
          goto LABEL_75;
        }

LABEL_29:
        while (1)
        {
          v53 = *(*(v95 + 56) + ((v51 << 9) | (8 * __clz(__rbit64(v49)))));
          v49 &= v49 - 1;
          __src[0] = v53[49];
          v100[0] = 222;
          v54 = sub_1E3742F1C();

          OUTLINED_FUNCTION_98();
          sub_1E4206254();
          OUTLINED_FUNCTION_98();
          sub_1E4206254();
          OUTLINED_FUNCTION_49_25();
          v55 = v55 && v54 == v100;
          if (v55)
          {
            break;
          }

          v56 = OUTLINED_FUNCTION_97_0();

          if ((v56 & 1) != 0 || *v53 == _TtC8VideosUI13TextViewModel && *(v89 + 178) == 3)
          {
            goto LABEL_40;
          }

          sub_1E3ABBD98(v53, v1, v38 & 1, v28, v37);

LABEL_37:
          v29 = v92;
          v50 = v90;
          v46 = v91;
          if (!v49)
          {
            goto LABEL_25;
          }
        }

LABEL_40:

        v88 = 1;
        goto LABEL_37;
      }
    }

    goto LABEL_74;
  }

  v40 = v39;
  if (v39 >= 1)
  {
    v41 = v5;
    for (i = 0; i != v40; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x1E6911E60](i, v27);
      }

      else
      {
        v43 = *(v27 + 8 * i + 32);
      }

      sub_1E3ABBD98(v43, v1, v38 & 1, v28, v37);
    }

    v5 = v41;
    goto LABEL_74;
  }

LABEL_80:
  __break(1u);
}