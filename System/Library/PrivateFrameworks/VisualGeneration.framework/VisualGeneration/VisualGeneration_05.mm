double sub_19A34473C@<D0>(int a1@<W2>, uint64_t a2@<X8>)
{
  if (qword_1EAF9F920 != -1)
  {
    v3 = a2;
    v4 = a1;
    swift_once();
    a1 = v4;
    a2 = v3;
  }

  result = *&xmmword_1EAFA0428;
  *a2 = xmmword_1EAFA0428;
  *(a2 + 16) = a1;
  *(a2 + 20) = 0;
  return result;
}

BOOL sub_19A3447DC(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (!sub_19A4108E8(*a1, &unk_1F0DA7A48))
  {
    return 0;
  }

  if (!*(a2 + 16))
  {
    return 1;
  }

  return sub_19A4108E8(v3, a2);
}

uint64_t sub_19A344890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[75] = v4;
  v5[74] = a4;
  v5[73] = a3;
  v5[72] = a2;
  v5[71] = a1;
  v6 = type metadata accessor for GeneratedImage();
  v5[76] = v6;
  v5[77] = *(v6 - 8);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v5[80] = type metadata accessor for ImageProvenance();
  v5[81] = swift_task_alloc();
  v7 = sub_19A57102C();
  v5[82] = v7;
  v5[83] = *(v7 - 8);
  v5[84] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A3449F8, 0, 0);
}

uint64_t sub_19A3449F8()
{
  sub_19A43274C();
  v1 = *(v0 + 576);
  result = type metadata accessor for GenerationRecipe(0);
  *(v0 + 680) = result;
  v3 = *(result + 20);
  *(v0 + 524) = v3;
  v4 = *(v1 + v3 + 40);
  *(v0 + 688) = v4;
  if (v4 < 1)
  {
    v7 = *(v0 + 568);
    *v7 = MEMORY[0x1E69E7CC0];
    v8 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
    v9 = type metadata accessor for InferenceDiagnosticsAccessor();
    (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v5 = v1 + *(result + 28);
    if (*(v5 + 8) == 1)
    {
      result = sub_19A489348(0x8000000000000000);
      v6 = result;
    }

    else
    {
      v6 = *v5;
    }

    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 192) = &type metadata for BarelyRandomNumberGenerator;
      *(v0 + 200) = sub_19A346F5C();
      *(v0 + 168) = v6;
      v11 = swift_task_alloc();
      *(v0 + 696) = v11;
      *v11 = v0;
      v11[1] = sub_19A344C38;
      v12 = *(v0 + 576);

      return sub_19A347204(v12, v0 + 168);
    }
  }

  return result;
}

uint64_t sub_19A344C38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 704) = a1;
  *(v3 + 712) = v1;

  if (v1)
  {
    v4 = sub_19A346090;
  }

  else
  {
    v4 = sub_19A344D50;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A344D50()
{
  v192 = v0;
  v1 = *(v0 + 704);
  v148 = v1 >> 62;
  if (v1 >> 62)
  {
LABEL_163:
    v177 = sub_19A573B4C();
  }

  else
  {
    v177 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = *(v0 + 576);
  v3 = *(v2 + *(*(v0 + 680) + 24));
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 7;
  }

  v172 = v4;
  v5 = v2 + *(v0 + 524);
  if (*(v5 + 32) == 1)
  {
    v6 = &xmmword_1EAFA0428;
    v7 = &xmmword_1EAFA0428 + 1;
    if (qword_1EAF9F920 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v6 = (v5 + 16);
    v7 = (v5 + 24);
  }

  v8 = *(v0 + 688);
  v9 = v0;
  v10 = *v7;
  v11 = *v6;
  v160 = *(*(v0 + 664) + 16);
  result = v160(*(v0 + 672), *(v0 + 584) + OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id, *(v0 + 656));
  v167 = v177 * v8;
  if ((v177 * v8) >> 64 != (v177 * v8) >> 63)
  {
    __break(1u);
LABEL_165:
    __break(1u);
    return result;
  }

  v188 = v11;
  sub_19A348104(*(v0 + 592), v0 + 248);
  if (*(v0 + 272))
  {
    v13 = *(v0 + 600);
    v14 = *(v0 + 584);
    sub_19A2EA460((v0 + 248), v0 + 208);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 208), v15);
    *(v0 + 472) = &type metadata for WordCloudImageGenerator.ProgressInfo;
    *(v0 + 480) = &off_1F0DAB188;
    v17 = swift_allocObject();
    *(v0 + 448) = v17;
    *(v17 + 16) = 0;
    *(v17 + 24) = v167;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    (*(v16 + 16))(v13, v14, v0 + 448, v15, v16);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 448);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 208);
  }

  else
  {
    sub_19A348174(v0 + 248);
  }

  v18 = *(v0 + 680);
  v187 = v9;
  v19 = *(v9 + 576);
  v20 = *&v19[*(v18 + 84) + 24];
  if (v20)
  {
    v21 = v20;
    v22 = 2;
  }

  else
  {
    v22 = -1;
  }

  v152 = v22;
  v23 = *&v19[*(v18 + 100)];
  v153 = *(v23 + 16);
  if (v153)
  {
    v157 = *(v23 + 56);
    v24 = v157;
    v25 = 2;
  }

  else
  {
    v157 = 0;
    v25 = -1;
  }

  v151 = v25;
  v179 = 0;
  v26 = v187;
  v149 = (v187 + 488);
  v27 = *(v187 + 704);
  v159 = *(v187 + 640);
  v155 = *(v187 + 616);
  v156 = *(v187 + 632);
  v154 = *(v187 + 608);
  v28 = v188;
  v158 = *v19;
  v29 = v10;
  v30 = v10 / 5;
  v175 = v1 & 0xFFFFFFFFFFFFFF8;
  v176 = v1 & 0xC000000000000001;
  v174 = v27 + 32;
  v171 = *MEMORY[0x1E69659D8];
  v170 = *MEMORY[0x1E6965A58];
  v169 = *MEMORY[0x1E6965658];
  v31 = 12;
  if (v10 / 20 < 12)
  {
    v31 = v10 / 20;
  }

  v32 = v31;
  if (v30 <= 18)
  {
    v30 = 18;
  }

  v164 = v30 - v32;
  v147 = v27 + 40;
  v33 = MEMORY[0x1E69E7CC0];
  v165 = v31;
  v173 = (v32 + v30) * 0.5;
  v34 = *(v187 + 712);
  v35 = 1;
  v1 = v177;
  v150 = v20;
  v36 = v157;
  v185 = v10;
  v186 = v188;
  while (1)
  {
    v163 = v33;
    v37 = *(v26 + 648);
    v38 = v35;
    v160(&v37[v159[5]], *(v26 + 672), *(v26 + 656));
    *v37 = v158;
    v161 = v38;
    *&v37[v159[6]] = v38;
    *&v37[v159[7]] = 0;
    *&v37[v159[8]] = 0;
    sub_19A43274C();
    if (v34)
    {
LABEL_143:
      v130 = *(v26 + 672);
      v131 = *(v26 + 664);
      v132 = *(v26 + 656);
      v133 = *(v26 + 648);

      sub_19A335458(v20, v152);
      sub_19A335458(v36, v151);
      sub_19A3483A8(v133, type metadata accessor for ImageProvenance);
      (*(v131 + 8))(v130, v132);

      __swift_destroy_boxed_opaque_existential_0Tm(v26 + 168);

      v143 = *(v26 + 8);
      goto LABEL_146;
    }

    v39 = [objc_opt_self() blackImage];
    v40 = [v39 imageByCroppingToRect_];

    v41 = v40;
    v0 = sub_19A44EF80(v41);

    v162 = v41;

    if (!v0)
    {
      v54 = v154;
      sub_19A3482CC(*(v26 + 648), *(v26 + 632) + v154[5], type metadata accessor for ImageProvenance);
      v55 = 1;
      goto LABEL_133;
    }

    v168 = v0;

    if (v153)
    {
      v42 = qword_1EAF9F958;
      v43 = v36;
      if (v42 != -1)
      {
        swift_once();
      }

      v44 = *&qword_1EAFCA2C0;
      v0 = v187 + 488;
      *v149 = xmmword_1EAFCA2B0;
      *(v187 + 504) = v44;
      *(v187 + 520) = byte_1EAFCA2D0;
      v45 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      sub_19A44EB8C(v45, v149, 0.2);
      sub_19A335458(v36, v151);
    }

    if (v20)
    {
      v0 = qword_1EAF9F958;
      v46 = v20;
      if (v0 != -1)
      {
        swift_once();
      }

      v47 = *&qword_1EAFCA2C0;
      *(v26 + 528) = xmmword_1EAFCA2B0;
      *(v26 + 544) = v47;
      *(v26 + 560) = byte_1EAFCA2D0;
      v48 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      sub_19A44EB8C(v48, v26 + 528, 0.2);
      sub_19A335458(v20, v152);
    }

    result = sub_19A43274C();
    if (v1 <= 0)
    {
      v51 = 0;
      v52 = 0;
      v20 = v168;
    }

    else
    {
      v20 = v168;
      if (v148)
      {
        result = sub_19A573B4C();
        v49 = result;
        if (!result)
        {
LABEL_50:
          v52 = 0x8000000000000000;
          v51 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }
      }

      else
      {
        v49 = *(v175 + 16);
        if (!v49)
        {
          goto LABEL_50;
        }
      }

      if (v49 < 1)
      {
        goto LABEL_165;
      }

      if (v176)
      {
        v50 = 0;
        v51 = 0x7FFFFFFFFFFFFFFFLL;
        v52 = 0x8000000000000000;
        do
        {
          v53 = MEMORY[0x19A901520](v50++, *(v26 + 704));
          v0 = *(v53 + 32);
          swift_unknownObjectRelease();
          if (v0 < v51)
          {
            v51 = v0;
          }

          if (v0 > v52)
          {
            v52 = v0;
          }
        }

        while (v49 != v50);
      }

      else
      {
        if (v49 == 1)
        {
          v56 = 0;
          v51 = 0x7FFFFFFFFFFFFFFFLL;
          v52 = 0x8000000000000000;
        }

        else
        {
          v56 = v49 & 0x7FFFFFFFFFFFFFFELL;
          v57 = 0x7FFFFFFFFFFFFFFFLL;
          v58 = 0x8000000000000000;
          v59 = v49 & 0x7FFFFFFFFFFFFFFELL;
          v60 = v147;
          v61 = 0x8000000000000000;
          v62 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v63 = *(*(v60 - 8) + 32);
            v64 = *(*v60 + 32);
            if (v63 < v57)
            {
              v57 = *(*(v60 - 8) + 32);
            }

            if (v64 < v62)
            {
              v62 = *(*v60 + 32);
            }

            if (v63 > v58)
            {
              v58 = *(*(v60 - 8) + 32);
            }

            if (v64 > v61)
            {
              v61 = *(*v60 + 32);
            }

            v60 += 16;
            v59 -= 2;
          }

          while (v59);
          if (v58 <= v61)
          {
            v52 = v61;
          }

          else
          {
            v52 = v58;
          }

          if (v57 >= v62)
          {
            v51 = v62;
          }

          else
          {
            v51 = v57;
          }

          if (v49 == v56)
          {
            goto LABEL_76;
          }
        }

        v65 = v49 - v56;
        v66 = (v174 + 8 * v56);
        do
        {
          v67 = *v66++;
          v68 = *(v67 + 32);
          if (v68 < v51)
          {
            v51 = v68;
          }

          if (v68 > v52)
          {
            v52 = v68;
          }

          --v65;
        }

        while (v65);
      }
    }

LABEL_76:
    v178 = v52 - v51;
    if (__OFSUB__(v52, v51))
    {
      goto LABEL_161;
    }

    if (v1 < 0)
    {
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    if (v1)
    {
      v166 = v51;
      v0 = 0;
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_19A43274C();
        if (v176)
        {
          v69 = MEMORY[0x19A901520](v0, *(v26 + 704));
        }

        else
        {
          if (v0 >= *(v175 + 16))
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            goto LABEL_162;
          }

          v69 = *(v174 + 8 * v0);
        }

        v70 = sub_19A44E6F8(*(v69 + 40), *(v69 + 48), *(v69 + 56), *(v69 + 64));
        v71 = v173;
        if (v178)
        {
          v72 = *(v69 + 32);
          v73 = __OFSUB__(v72, v166);
          v74 = v72 - v166;
          if (v73)
          {
            goto LABEL_158;
          }

          v71 = v164 * (v74 / v178) + v165;
        }

        v182 = (v0 + 1);
        v75 = *(v69 + 16);
        v76 = *(v69 + 24);
        v191[0].i8[0] = v172;
        v77 = sub_19A3463BC(v71, v75, v76, v191, v26 + 168);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0448);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19A5792A0;
        v0 = v171;
        *(inited + 32) = v171;
        type metadata accessor for CGColor(0);
        *(inited + 40) = v70;
        *(inited + 64) = v79;
        *(inited + 72) = v170;
        *(inited + 80) = v70;
        *(inited + 104) = v79;
        *(inited + 112) = v169;
        type metadata accessor for CTFont(0);
        *(inited + 144) = v80;
        *(inited + 120) = v77;
        v181 = v70;
        v81 = v171;
        v82 = v170;
        v83 = v169;
        v180 = v77;
        sub_19A3306DC(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF50);
        swift_arrayDestroy();
        v84 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v85 = sub_19A572CCC();
        type metadata accessor for Key(0);
        sub_19A348284(&qword_1EAF9F078, type metadata accessor for Key);
        v86 = sub_19A572ADC();

        v87 = [v84 initWithString:v85 attributes:v86];

        v183 = v87;
        sub_19A44E8B8(v87, v191);
        v88 = 0;
        v89 = 0;
        v90 = vcvtq_f64_s64(v191[0]);
        v184 = 0.5 * v90.f64[0];
        v91 = v90.f64[1];
        v92 = vmuld_lane_f64(0.5, v90, 1);
        v189 = v90;
        v93 = vmuld_lane_f64(v90.f64[0], v90, 1);
        v94 = -1;
        v1 = 1;
        do
        {
LABEL_89:
          if (v89 > 1)
          {
            if (v89 == 2)
            {
              v73 = __OFSUB__(v94--, 1);
              if (v73)
              {
                goto LABEL_153;
              }

              if (__OFSUB__(0, v94))
              {
                goto LABEL_157;
              }

              if (-v94 == v1)
              {
                v89 = 3;
              }

              else
              {
                v89 = 2;
              }
            }

            else
            {
              v73 = __OFSUB__(v88--, 1);
              if (v73)
              {
                goto LABEL_154;
              }

              if (__OFSUB__(0, v88))
              {
                goto LABEL_156;
              }

              if (-v88 == v1)
              {
                v73 = __OFADD__(v1++, 1);
                if (v73)
                {
                  goto LABEL_159;
                }

                v89 = 0;
              }

              else
              {
                v89 = 3;
              }
            }
          }

          else if (v89)
          {
            v73 = __OFADD__(v88++, 1);
            if (v73)
            {
              goto LABEL_155;
            }

            if (v88 == v1)
            {
              v89 = 2;
            }

            else
            {
              v89 = 1;
            }
          }

          else
          {
            v73 = __OFADD__(v94++, 1);
            if (v73)
            {
              goto LABEL_152;
            }

            v89 = v94 == v1;
          }

          v195.origin.x = 0.0;
          v195.origin.y = 0.0;
          v29 = v185;
          v195.size.width = v186;
          v195.size.height = v185;
          MidX = CGRectGetMidX(v195);
          v196.origin.x = 0.0;
          v196.origin.y = 0.0;
          v196.size.width = v186;
          v196.size.height = v185;
          v96 = MidX + v94 * 15.0;
          v97 = v88 * 15.0 + CGRectGetMidY(v196);
          v197.origin.x = 0.0;
          v197.origin.y = 0.0;
          v197.size.width = v186;
          v197.size.height = v185;
          v194.x = v96;
          v194.y = v97;
          if (!CGRectContainsPoint(v197, v194))
          {
            v26 = v187;
            v28 = v186;
            goto LABEL_121;
          }

          v98 = v96 - v184;
          v99 = v97 - v92;
          v198.origin.x = 0.0;
          v198.origin.y = 0.0;
          v198.size.width = v186;
          v198.size.height = v185;
          v203.origin.x = v98;
          v203.origin.y = v99;
          v203.size.width = v189.f64[0];
          v203.size.height = v91;
        }

        while (!CGRectContainsRect(v198, v203));
        v26 = -*(v36 + 2);
        v100 = -1;
        v101 = (v36 + 56);
        while (v26 + v100 != -1)
        {
          if (++v100 >= *(v36 + 2))
          {
            __break(1u);
            goto LABEL_143;
          }

          v0 = (v101 + 4);
          v103 = *(v101 - 1);
          v102 = *v101;
          v204.origin.x = *(v101 - 3);
          v204.origin.y = *(v101 - 2);
          v199.origin.x = v98;
          v199.origin.y = v99;
          v199.size.width = v189.f64[0];
          v199.size.height = v91;
          v204.size.width = v103;
          v204.size.height = *v101;
          v200 = CGRectIntersection(v199, v204);
          v101 = v0;
          if (v200.size.width * v200.size.height / (v93 + v102 * v103 - v200.size.width * v200.size.height) > 0.01)
          {
            goto LABEL_89;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_19A31DD9C(0, *(v36 + 2) + 1, 1, v36);
        }

        v26 = v187;
        v29 = v185;
        v28 = v186;
        v105 = *(v36 + 2);
        v104 = *(v36 + 3);
        if (v105 >= v104 >> 1)
        {
          v36 = sub_19A31DD9C((v104 > 1), v105 + 1, 1, v36);
        }

        *(v36 + 2) = v105 + 1;
        v106 = &v36[32 * v105];
        *(v106 + 4) = v98;
        *(v106 + 5) = v99;
        v201.size.width = v189.f64[0];
        *(v106 + 3) = v189;
        v201.origin.x = v98;
        v201.origin.y = v99;
        v201.size.height = v91;
        v107 = CGRectGetMidX(v201);
        v202.origin.x = v98;
        v202.origin.y = v99;
        v202.size.width = v189.f64[0];
        v202.size.height = v91;
        *&v108 = CGRectGetMidY(v202);
        sub_19A44E9E0(v183, v107, v108, 0);
LABEL_121:
        sub_19A348104(*(v26 + 592), v26 + 368);
        if (*(v26 + 392))
        {
          v109 = *(v26 + 600);
          v110 = *(v26 + 584);
          sub_19A2EA460((v26 + 368), v26 + 328);
          v111 = v179;
          if (v179 < v167)
          {
            v112 = v179 + 1;
          }

          else
          {
            v112 = v167;
          }

          if (v179 < v167)
          {
            v111 = v179 + 1;
          }

          v179 = v111;
          v113 = *(v26 + 352);
          v114 = *(v187 + 360);
          __swift_project_boxed_opaque_existential_1((v187 + 328), v113);
          *(v187 + 432) = &type metadata for WordCloudImageGenerator.ProgressInfo;
          *(v187 + 440) = &off_1F0DAB188;
          v115 = swift_allocObject();
          *(v187 + 408) = v115;
          *(v115 + 16) = v112;
          *(v115 + 24) = v167;
          v20 = v168;
          *(v115 + 32) = 0;
          *(v115 + 40) = 0;
          v26 = v187;
          (*(v114 + 16))(v109, v110, v187 + 408, v113, v114);

          __swift_destroy_boxed_opaque_existential_0Tm(v187 + 408);
          __swift_destroy_boxed_opaque_existential_0Tm(v187 + 328);
        }

        else
        {

          sub_19A348174(v26 + 368);
        }

        v1 = v177;
        v0 = v182;
      }

      while (v182 != v177);
    }

    Image = CGBitmapContextCreateImage(v20[4]);
    v54 = v154;
    sub_19A3482CC(*(v26 + 648), *(v26 + 632) + v154[5], type metadata accessor for ImageProvenance);

    if (Image)
    {

      v55 = 0;
      v117 = Image;
      v20 = v150;
      v36 = v157;
      v118 = v163;
      goto LABEL_134;
    }

    v55 = 1;
    v20 = v150;
    v36 = v157;
LABEL_133:
    v117 = v162;
    v118 = v163;
LABEL_134:
    v119 = *(v26 + 632);
    v120 = *(v26 + 624);
    v121 = v54[10];
    *(v119 + v121) = 3;
    *v119 = v117;
    *(v156 + 8) = v55;
    *(v119 + v54[6]) = 3;
    v122 = v119 + v54[7];
    *v122 = 0;
    *(v122 + 1) = 0;
    v122[16] = 1;
    v123 = (v119 + v54[8]);
    *v123 = 0;
    v123[1] = 0xE000000000000000;
    v124 = (v119 + v54[9]);
    *v124 = 0;
    v124[1] = 0xE000000000000000;
    *(v119 + v121) = 3;
    sub_19A3482CC(v119, v120, type metadata accessor for GeneratedImage);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = sub_19A31DA3C(0, v118[2] + 1, 1, v118);
    }

    v126 = v118[2];
    v125 = v118[3];
    v127 = v118;
    if (v126 >= v125 >> 1)
    {
      v127 = sub_19A31DA3C(v125 > 1, v126 + 1, 1, v118);
    }

    v0 = *(v26 + 688);
    v128 = *(v26 + 648);
    v129 = *(v26 + 624);
    sub_19A3483A8(*(v26 + 632), type metadata accessor for GeneratedImage);
    sub_19A3483A8(v128, type metadata accessor for ImageProvenance);
    *(v127 + 16) = v126 + 1;
    v33 = v127;
    sub_19A348334(v129, v127 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v126, type metadata accessor for GeneratedImage);
    if (v161 == v0)
    {
      break;
    }

    v34 = 0;
    v35 = v161 + 1;
    if (__OFADD__(v161, 1))
    {
      goto LABEL_160;
    }
  }

  v134 = *(v26 + 592);

  sub_19A348104(v134, v26 + 288);
  v135 = *(v26 + 312);
  v136 = *(v26 + 672);
  v137 = v26;
  v138 = *(v26 + 664);
  v139 = *(v26 + 656);
  if (v135)
  {
    v140 = *(v26 + 600);
    v141 = *(v26 + 584);
    v142 = v137[40];
    v190 = v136;
    __swift_project_boxed_opaque_existential_1(v137 + 36, v135);
    (*(v142 + 32))(v140, v141, v127, v135, v142);
    sub_19A335458(v20, v152);
    sub_19A335458(v36, v151);
    (*(v138 + 8))(v190, v139);
    __swift_destroy_boxed_opaque_existential_0Tm((v137 + 36));
  }

  else
  {
    (*(v138 + 8))(v136, *(v26 + 656));
    sub_19A335458(v36, v151);
    sub_19A335458(v20, v152);
    sub_19A348174(v26 + 288);
  }

  v144 = v137[71];
  v145 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
  v146 = type metadata accessor for InferenceDiagnosticsAccessor();
  (*(*(v146 - 8) + 56))(v144 + v145, 1, 1, v146);
  *v144 = v127;
  __swift_destroy_boxed_opaque_existential_0Tm((v137 + 21));

  v143 = v137[1];
LABEL_146:

  return v143();
}

uint64_t sub_19A346090()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 168);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A346128(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4)
  {
    v8 = &unk_1F0DA7EE8;
  }

  else
  {
    v8 = &unk_1F0DA7E68;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a5, *(a5 + 24));
  sub_19A3481DC();
  sub_19A348230();
  result = sub_19A572B2C();
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v17 >= v8[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = &unk_1F0DA7F08;
  if (!a4)
  {
    v10 = &unk_1F0DA7E88;
  }

  v11 = &v10[32 * v17];
  v15 = *v11;
  v12 = *(v11 + 2);
  v13 = v11[24];

  type metadata accessor for WordCloudImageGenerator.WordModel();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = v15;
  *(v14 + 56) = v12;
  *(v14 + 64) = v13;

  return v14;
}

uint64_t sub_19A346264(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_19A32E578(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v17[1] = v3;
  result = sub_19A573EBC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      do
      {
        v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x20 + 8 * v9);
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*(*v13 + 32) >= *(v11 + 32))
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for WordCloudImageGenerator.WordModel();
      v7 = sub_19A5730DC();
      *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
    v16[1] = v6;
    sub_19A3465F4(v16, v18, v17, v5);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_19A3463BC(CGFloat a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (*a4)
  {
    v6 = &unk_1F0DA7DF8;
  }

  else
  {
    v6 = &unk_1F0DA7DA8;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a5, *(a5 + 24));
  sub_19A3481DC();
  sub_19A348230();
  result = sub_19A572B2C();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < v6[2])
  {

    v8 = sub_19A572CCC();

    v9 = CTFontCreateWithName(v8, a1, 0);

    v10 = sub_19A572CCC();
    v13.length = CFStringGetLength(v10);
    v13.location = 0;
    v11 = CTFontCreateForString(v9, v10, v13);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_19A346530()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19A3465F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_124:
    v4 = *v102;
    if (*v102)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 32);
    v10 = *(*(*a3 + 8 * v6) + 32);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v10 >= v9)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = (v10 < v9) ^ (v12 >= v13);
      ++v11;
      v12 = v13;
    }

    while ((v14 & 1) != 0);
    v8 = v11 - 1;
    if (v10 >= v9)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(*v26 + 32) >= *(v24 + 32))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_19A31CF2C((v29 > 1), v30 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *v102;
    if (!*v102)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v85 + 32) >= *(*v77 + 32))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(*v90 + 32) < *(v94 + 32))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_19A34DDAC(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_19A34DD20(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_19A34DDAC(v7);
  v7 = result;
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
  }

  while (*a3)
  {
    v98 = *&v7[16 * v97];
    v99 = *&v7[16 * v97 + 24];
    sub_19A346D58((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_19A34DDAC(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_19A34DD20(v97 - 1);
    v97 = *(v7 + 2);
    if (v97 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_19A346D58(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + 32) < *(*v6 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(*v17 + 32) < *(v21 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t sub_19A346F5C()
{
  result = qword_1EAFA0438;
  if (!qword_1EAFA0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0438);
  }

  return result;
}

uint64_t sub_19A346FB0(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27 = MEMORY[0x1E69E7CC0];
    v26 = a1;
    sub_19A573A5C();
    v5 = v26;
    v6 = v26 + 64;
    result = sub_19A57389C();
    v7 = result;
    v8 = 0;
    v9 = *(v26 + 36);
    v24 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v12 = v6;
      v13 = (*(v5 + 48) + 16 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v5 + 56) + 8 * v7);

      a2(v14, v15, v16);

      sub_19A573A2C();
      sub_19A573A6C();
      sub_19A573A7C();
      result = sub_19A573A3C();
      v5 = v26;
      v10 = 1 << *(v26 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v17 = *(v12 + 8 * v11);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v26 + 36))
      {
        goto LABEL_26;
      }

      v6 = v12;
      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v10 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (v26 + 72 + 8 * v11);
        while (v20 < (v10 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_19A2F1470(v7, v9, 0);
            v10 = __clz(__rbit64(v22)) + v19;
            goto LABEL_18;
          }
        }

        result = sub_19A2F1470(v7, v9, 0);
LABEL_18:
        v5 = v26;
      }

      ++v8;
      v7 = v10;
      if (v8 == v24)
      {
        return v27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_19A347204(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = type metadata accessor for NamedEntityData.PhotosPersonData(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for NamedEntityData.NamedEntityType(0);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for NamedEntityData(0);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for Concept(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = sub_19A570A9C();
  v2[18] = swift_task_alloc();
  v5 = type metadata accessor for ResolvedTextPrompt(0);
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A347408, 0, 0);
}

unint64_t sub_19A347408()
{
  v137 = v0;
  v1 = v0[6];
  v118 = type metadata accessor for GenerationRecipe(0);
  v2 = *(v1 + v118[19]);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v0[20];
    v135 = MEMORY[0x1E69E7CC0];
    sub_19A322580(0, v3, 0);
    v4 = v135;
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = v0[21];
      v9 = v4;
      sub_19A3482CC(v6, v8, type metadata accessor for ResolvedTextPrompt);
      sub_19A570A4C();
      sub_19A348284(&qword_1ED825330, MEMORY[0x1E6968678]);
      v10 = sub_19A572F7C();
      v12 = v11;
      sub_19A3483A8(v8, type metadata accessor for ResolvedTextPrompt);
      v4 = v9;
      v135 = v9;
      v13 = *(v9 + 16);
      v14 = *(v4 + 24);
      if (v13 >= v14 >> 1)
      {
        sub_19A322580((v14 > 1), v13 + 1, 1);
        v4 = v135;
      }

      *(v4 + 16) = v13 + 1;
      v15 = v4 + 16 * v13;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 += v7;
      --v3;
    }

    while (v3);
    v1 = v0[6];
  }

  else if (!*(MEMORY[0x1E69E7CC0] + 16))
  {

    type metadata accessor for GeneratorError(0);
    sub_19A348284(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v111 = v0[1];

    return v111();
  }

  v130 = v4;
  v16 = v118;
  v17 = *(v1 + v118[6]);
  if (*(v17 + 16))
  {
    v18 = *(v17 + 32);
  }

  else
  {
    v18 = 7;
  }

  v117 = v18;
  result = sub_19A3305E0(MEMORY[0x1E69E7CC0]);
  v20 = result;
  v21 = *(v1 + v118[24]);
  v134 = v0;
  v128 = *(v21 + 16);
  if (!v128)
  {

    v133 = 5;
    goto LABEL_50;
  }

  v22 = 0;
  v121 = v0[13];
  v122 = v0[16];
  v120 = v0[12];
  v126 = v0[15];
  v125 = v21 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
  v119 = (v0[9] + 48);
  v133 = 5;
  v123 = *(v1 + v118[24]);
  v124 = v0[7];
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_91;
    }

    sub_19A3482CC(v125 + *(v126 + 72) * v22, v0[16], type metadata accessor for Concept);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = v0[16];
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
LABEL_22:
        v31 = *v25;
        v32 = *(v122 + 8);
        goto LABEL_30;
      }

      v31 = *v25;
      v32 = *(v122 + 8);
      v133 = 2;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_19A3483A8(v25, type metadata accessor for Concept);
      v31 = 0xD000000000000019;
      v32 = 0x800000019A596DC0;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_22;
      }

      v26 = v0[13];
      v27 = v0[11];
      v28 = v0[8];
      sub_19A348334(v25, v26, type metadata accessor for NamedEntityData);
      sub_19A3482CC(v26 + *(v120 + 20), v27, type metadata accessor for NamedEntityData.NamedEntityType);
      if ((*v119)(v27, 1, v28) == 1)
      {
        v29 = v0[13];
        v30 = *(v121 + 8);
        v135 = *v29;
        v136 = v30;

        MEMORY[0x19A900A50](0x6E776F6E6B6E7528, 0xE900000000000029);
        v31 = v135;
        v32 = v136;
        v33 = v29;
      }

      else
      {
        sub_19A348334(v0[11], v0[10], type metadata accessor for NamedEntityData.PhotosPersonData);
        v34 = sub_19A570FDC();
        sub_19A34461C(45, 0xE100000000000000, v34, v35);
        if (v36)
        {

          v37 = 0xE800000000000000;
          v38 = 0x3F3F3F3F3F3F3F3FLL;
        }

        else
        {
          v39 = sub_19A572F9C();
          v41 = v40;
          v43 = v42;
          v45 = v44;

          v38 = MEMORY[0x19A900970](v39, v41, v43, v45);
          v37 = v46;
        }

        v47 = v0[13];
        v48 = v0[10];
        v135 = 0;
        v136 = 0xE000000000000000;
        sub_19A57395C();
        v49 = *v47;
        v50 = *(v121 + 8);

        v135 = v49;
        v136 = v50;
        MEMORY[0x19A900A50](0x50736F746F687028, 0xEF28296E6F737265);
        MEMORY[0x19A900A50](v38, v37);

        MEMORY[0x19A900A50](690892334, 0xE400000000000000);
        v31 = v49;
        v32 = v50;
        sub_19A3483A8(v48, type metadata accessor for NamedEntityData.PhotosPersonData);
        v33 = v47;
      }

      sub_19A3483A8(v33, type metadata accessor for NamedEntityData);
    }

LABEL_30:
    v131 = v22;
    if (v20[2])
    {

      v51 = v31;
      v52 = sub_19A31F6BC(v31, v32);
      v54 = v53;

      if (v54)
      {
        v55 = *(v20[7] + 8 * v52);
        goto LABEL_35;
      }
    }

    else
    {
      v51 = v31;
    }

    v55 = 0;
LABEL_35:
    v56 = v134[7];
    v134[3] = 3 * v133;
    __swift_mutable_project_boxed_opaque_existential_1(v56, *(v124 + 24));
    sub_19A3481DC();
    sub_19A348230();
    result = sub_19A572B2C();
    v57 = v134[2];
    if (v57 < 0)
    {
      goto LABEL_92;
    }

    v58 = v57 - 2 * v133;
    v59 = v55 + v58;
    if (__OFADD__(v55, v58))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = v20;
    result = sub_19A31F6BC(v51, v32);
    v62 = v20[2];
    v63 = (v61 & 1) == 0;
    v64 = __OFADD__(v62, v63);
    v65 = v62 + v63;
    if (v64)
    {
      goto LABEL_94;
    }

    v66 = v61;
    if (v20[3] >= v65)
    {
      v0 = v134;
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v61 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v71 = result;
        sub_19A32CB88();
        result = v71;
        if ((v66 & 1) == 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      sub_19A32A348(v65, isUniquelyReferenced_nonNull_native);
      result = sub_19A31F6BC(v51, v32);
      if ((v66 & 1) != (v67 & 1))
      {
LABEL_77:

        return sub_19A57404C();
      }

      v0 = v134;
      if ((v66 & 1) == 0)
      {
LABEL_44:
        v20 = v135;
        v135[(result >> 6) + 8] |= 1 << result;
        v68 = (v20[6] + 16 * result);
        *v68 = v51;
        v68[1] = v32;
        *(v20[7] + 8 * result) = v59;
        v69 = v20[2];
        v64 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v64)
        {
          goto LABEL_96;
        }

        v20[2] = v70;
        goto LABEL_14;
      }
    }

    v23 = result;

    v20 = v135;
    *(v135[7] + 8 * v23) = v59;
LABEL_14:
    result = v130;
    v22 = v131 + 1;
    v21 = v123;
    if (v128 == v131 + 1)
    {

      v16 = v118;
LABEL_50:
      v72 = *(v0[6] + v16[20]);
      v73 = *(v72 + 16);
      result = MEMORY[0x1E69E7CC0];
      if (v73)
      {
        v74 = v0[20];
        v135 = MEMORY[0x1E69E7CC0];
        sub_19A322580(0, v73, 0);
        result = v135;
        v75 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v76 = *(v74 + 72);
        do
        {
          v77 = v134[21];
          v78 = result;
          sub_19A3482CC(v75, v77, type metadata accessor for ResolvedTextPrompt);
          sub_19A570A4C();
          sub_19A348284(&qword_1ED825330, MEMORY[0x1E6968678]);
          v79 = sub_19A572F7C();
          v81 = v80;
          sub_19A3483A8(v77, type metadata accessor for ResolvedTextPrompt);
          result = v78;
          v135 = v78;
          v82 = *(v78 + 16);
          v83 = *(result + 24);
          v84 = v82 + 1;
          if (v82 >= v83 >> 1)
          {
            sub_19A322580((v83 > 1), v82 + 1, 1);
            v84 = v82 + 1;
            result = v135;
          }

          *(result + 16) = v84;
          v85 = result + 16 * v82;
          *(v85 + 32) = v79;
          *(v85 + 40) = v81;
          v75 += v76;
          --v73;
        }

        while (v73);
      }

      else
      {
        v84 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v84)
        {
          v87 = v134;
LABEL_84:
          v112 = v87[7];

          v113 = swift_task_alloc();
          *(v113 + 16) = v117;
          *(v113 + 24) = v112;
          v114 = sub_19A346FB0(v20, sub_19A34839C);

          v135 = v114;
          sub_19A346264(&v135);

          v115 = v135;

          v116 = v87[1];

          return v116(v115);
        }
      }

      v86 = 0;
      v87 = v134;
      v132 = v134[7];
      v88 = (result + 40);
      v127 = v84;
      v129 = result;
      while (1)
      {
        if (v86 >= *(result + 16))
        {
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
          goto LABEL_93;
        }

        v90 = *(v88 - 1);
        v91 = *v88;
        v92 = v20[2];

        if (v92 && (v93 = sub_19A31F6BC(v90, v91), (v94 & 1) != 0))
        {
          v95 = *(v20[7] + 8 * v93);
        }

        else
        {
          v95 = 0;
        }

        v96 = v87[7];
        v87[5] = 2 * v133;
        __swift_mutable_project_boxed_opaque_existential_1(v96, *(v132 + 24));
        sub_19A3481DC();
        sub_19A348230();
        result = sub_19A572B2C();
        v97 = v134[4];
        if (v97 < 0)
        {
          goto LABEL_88;
        }

        v98 = v97 - v133;
        v99 = v95 - v98;
        if (__OFSUB__(v95, v98))
        {
          goto LABEL_89;
        }

        v100 = swift_isUniquelyReferenced_nonNull_native();
        v135 = v20;
        result = sub_19A31F6BC(v90, v91);
        v102 = v20[2];
        v103 = (v101 & 1) == 0;
        v64 = __OFADD__(v102, v103);
        v104 = v102 + v103;
        if (v64)
        {
          goto LABEL_90;
        }

        v105 = v101;
        if (v20[3] < v104)
        {
          break;
        }

        if (v100)
        {
          goto LABEL_72;
        }

        v110 = result;
        sub_19A32CB88();
        result = v110;
        if (v105)
        {
LABEL_58:
          v89 = result;

          v20 = v135;
          *(v135[7] + 8 * v89) = v99;
          goto LABEL_59;
        }

LABEL_73:
        v20 = v135;
        v135[(result >> 6) + 8] |= 1 << result;
        v107 = (v20[6] + 16 * result);
        *v107 = v90;
        v107[1] = v91;
        *(v20[7] + 8 * result) = v99;
        v108 = v20[2];
        v64 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (v64)
        {
          goto LABEL_95;
        }

        v20[2] = v109;
LABEL_59:
        ++v86;
        v88 += 2;
        result = v129;
        v87 = v134;
        if (v127 == v86)
        {
          goto LABEL_84;
        }
      }

      sub_19A32A348(v104, v100);
      result = sub_19A31F6BC(v90, v91);
      if ((v105 & 1) != (v106 & 1))
      {
        goto LABEL_77;
      }

LABEL_72:
      if (v105)
      {
        goto LABEL_58;
      }

      goto LABEL_73;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_19A348104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A348174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A3481DC()
{
  result = qword_1EAFA0450;
  if (!qword_1EAFA0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0450);
  }

  return result;
}

unint64_t sub_19A348230()
{
  result = qword_1EAFA0458;
  if (!qword_1EAFA0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0458);
  }

  return result;
}

uint64_t sub_19A348284(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A3482CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A348334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A3483A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A348418(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_19A348474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_19A3484E8()
{
  if (*v0)
  {
    return 0x756F436E656B6F74;
  }

  else
  {
    return 0x6574636172616863;
  }
}

uint64_t sub_19A348534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574636172616863 && a2 == 0xEE00746E756F4372;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F436E656B6F74 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

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

uint64_t sub_19A348620(uint64_t a1)
{
  v2 = sub_19A348824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A34865C(uint64_t a1)
{
  v2 = sub_19A348824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptEncodingStatistics.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0460);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A348824();
  sub_19A5741AC();
  v11 = 0;
  sub_19A573E6C();
  if (!v2)
  {
    v10 = 1;
    sub_19A573E6C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_19A348824()
{
  result = qword_1ED824590;
  if (!qword_1ED824590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824590);
  }

  return result;
}

uint64_t PromptEncodingStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0468);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A348824();
  sub_19A57417C();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_19A573D3C();
    v13 = 1;
    v10 = sub_19A573D3C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_19A348A6C()
{
  result = qword_1EAFA0470;
  if (!qword_1EAFA0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA0470);
  }

  return result;
}

unint64_t sub_19A348AC4()
{
  result = qword_1ED824580;
  if (!qword_1ED824580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824580);
  }

  return result;
}

unint64_t sub_19A348B1C()
{
  result = qword_1ED824588;
  if (!qword_1ED824588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824588);
  }

  return result;
}

uint64_t GenerativePlayground.imageGeneratorIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_19A348BA0()
{
  v0 = sub_19A5723FC();
  __swift_allocate_value_buffer(v0, qword_1EAFCA1E8);
  __swift_project_value_buffer(v0, qword_1EAFCA1E8);
  return sub_19A5723EC();
}

uint64_t sub_19A348C20()
{
  v1 = *(*v0 + 112);

  return v1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_19A348CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  if (a2 >= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (a4 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a4;
  }

  if (a2 <= a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6 < v7;
  if (v5 < v4)
  {
    v8 = 0;
  }

  return v4 < v5 || v8;
}

uint64_t sub_19A348CF8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_19A34DEC4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_19A34D620(v5);
  *a1 = v2;
  return result;
}

char *sub_19A348D64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = MEMORY[0x1E69E7CD0];
  v23 = MEMORY[0x1E69E7CD0];
  v5 = *(a3 + 16);
  if (v5)
  {
    if (a2 <= a1)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    if (a2 >= a1)
    {
      v10 = a1;
    }

    else
    {
      v10 = a2;
    }

    v11 = (a3 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *v11 == a2 && v12 == a1;
      if (v14 || (a4 & 1) == 0 || (v13 <= v12 ? (v15 = *(v11 - 1)) : (v15 = *v11), v13 >= v12 ? (v16 = *(v11 - 1)) : (v16 = *v11), v9 >= v15 ? (v17 = v10 < v16) : (v17 = 1), !v17))
      {
        sub_19A323030(&v22, v12, v13);
      }

      v11 += 2;
      --v5;
    }

    while (v5);
    v4 = v23;
  }

  v18 = *(v4 + 16);
  if (!v18)
  {
    goto LABEL_32;
  }

  v19 = sub_19A31EF10(*(v4 + 16), 0);
  v20 = sub_19A32EA2C(&v22, v19 + 2, v18, v4);

  sub_19A3355AC();
  if (v20 != v18)
  {
    __break(1u);
LABEL_32:
    v19 = MEMORY[0x1E69E7CC0];
  }

  v22 = v19;
  sub_19A348CF8(&v22);

  return v22;
}

uint64_t sub_19A348ECC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *a1;
  v4 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = *(a4 + 16);
    v9 = (a2 + 32);
    do
    {
      v16 = v14;
      v15 = *v9;
      v17 = *v9;
      if (v8(&v16, &v17, a3, a4))
      {
        sub_19A323030(&v16, v15, *(&v15 + 1));
      }

      ++v9;
      --v5;
    }

    while (v5);
    v4 = v18;
  }

  v10 = *(v4 + 16);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = sub_19A31EF10(*(v4 + 16), 0);
  v12 = sub_19A32EA2C(&v16, v11 + 2, v10, v4);

  sub_19A3355AC();
  if (v12 != v10)
  {
    __break(1u);
LABEL_10:
    v11 = MEMORY[0x1E69E7CC0];
  }

  *&v16 = v11;
  sub_19A348CF8(&v16);

  return v16;
}

uint64_t sub_19A349050(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_19A349074, 0, 0);
}

uint64_t sub_19A349074()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0478);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_19A349190;

  return MEMORY[0x1EEE6DD58](v0 + 16, &type metadata for Image, v4, 0, 0, &unk_19A57A700, v5, &type metadata for Image);
}

uint64_t sub_19A349190()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_19A3492C8;
  }

  else
  {

    v2 = sub_19A3492AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3492C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A34932C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 80) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A349354, 0, 0);
}

uint64_t sub_19A349354()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0478);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v0 + 16;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_19A349474;

  return MEMORY[0x1EEE6DD58](v0 + 32, &type metadata for Image, v4, 0, 0, &unk_19A57A970, v5, &type metadata for Image);
}

uint64_t sub_19A349474()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_19A3495AC;
  }

  else
  {

    v2 = sub_19A349590;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A3495AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A349610(uint64_t a1, char a2, uint64_t a3, char a4)
{
  *(v4 + 65) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = a3;
  *(v4 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_19A349638, 0, 0);
}

uint64_t sub_19A349638()
{
  v1 = *(v0 + 65);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0478);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v0 + 64;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_19A349190;

  return MEMORY[0x1EEE6DD58](v0 + 16, &type metadata for Image, v4, 0, 0, &unk_19A57A9A8, v5, &type metadata for Image);
}

uint64_t sub_19A349758(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 81) = a4;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;
  *(v4 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0480);
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A349870, 0, 0);
}

uint64_t sub_19A349870()
{
  v1 = *(v0 + 112);
  v24 = sub_19A330818(MEMORY[0x1E69E7CC0]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v28 = **(v0 + 104);
    v29 = *(v0 + 120);
    v4 = sub_19A5731CC();
    v5 = *(v4 - 8);
    v27 = *(v5 + 56);
    v26 = (v5 + 48);
    v25 = (v5 + 8);
    v6 = (v3 + 40);
    do
    {
      v30 = v6;
      v31 = v2;
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v11 = *(v0 + 81);
      v12 = *(v0 + 120);
      v14 = *(v6 - 1);
      v13 = *v6;
      v27(v9, 1, 1, v4);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      *(v15 + 48) = v14;
      *(v15 + 56) = v13;
      sub_19A34EA3C(v9, v10);
      LODWORD(v10) = (*v26)(v10, 1, v4);
      v16 = v29;
      v17 = *(v0 + 128);
      if (v10 == 1)
      {
        sub_19A34EAAC(*(v0 + 128));
      }

      else
      {
        sub_19A5731BC();
        (*v25)(v17, v4);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_19A57314C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v7 = 0;
      }

      v6 = v30 + 2;
      v8 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_19A34EAAC(v8);
      --v2;
    }

    while (v31 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  sub_19A57326C();
  *(v0 + 168) = v24;
  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  *v21 = v0;
  v21[1] = sub_19A349BB8;
  v22 = *(v0 + 144);

  return MEMORY[0x1EEE6DAD8](v0 + 72, 0, 0, v22, v0 + 88);
}

uint64_t sub_19A349BB8()
{

  if (v0)
  {

    v1 = sub_19A34F288;
  }

  else
  {
    v1 = sub_19A349CD0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A349CD0()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 <= 1)
  {
    if (*(v0 + 80))
    {
      v6 = [*(v0 + 72) extent];
      if (v11 <= -9.22337204e18)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= 9.22337204e18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
      }

      Width = v11;
      Height = v12;
    }

    else
    {
      Width = CGImageGetWidth(*(v0 + 72));
      Height = CGImageGetHeight(v2);
    }

LABEL_13:
    v13 = *(v0 + 168);
    v14 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v13;
    v16 = sub_19A31FCD8(Width, Height);
    v18 = *(v13 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v1 = v17;
      if (*(*(v0 + 168) + 24) < v21)
      {
        sub_19A32A5E8(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_19A31FCD8(Width, Height);
        if ((v1 & 1) != (v22 & 1))
        {

          return sub_19A57404C();
        }

LABEL_20:
        v24 = *(v0 + 96);
        if (v1)
        {
LABEL_21:
          v25 = v24[7] + 16 * v16;
          v26 = *v25;
          *v25 = v2;
          *(v25 + 8) = v3;

          sub_19A335458(v2, v3);
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    v29 = v16;
    sub_19A32CCF0();
    v16 = v29;
    v24 = *(v0 + 96);
    if (v1)
    {
      goto LABEL_21;
    }

LABEL_27:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v30 = (v24[6] + 16 * v16);
    *v30 = Width;
    v30[1] = Height;
    v31 = v24[7] + 16 * v16;
    *v31 = v2;
    *(v31 + 8) = v3;
    sub_19A335458(v2, v3);
    v32 = v24[2];
    v20 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v20)
    {
      v24[2] = v33;
LABEL_29:
      *(v0 + 168) = v24;
      v34 = swift_task_alloc();
      *(v0 + 176) = v34;
      *v34 = v0;
      v34[1] = sub_19A349BB8;
      v9 = *(v0 + 144);
      v10 = v0 + 88;
      v6 = (v0 + 72);
      v7 = 0;
      v8 = 0;

      return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 2)
  {
    Width = CVPixelBufferGetWidth(*(v0 + 72));
    Height = CVPixelBufferGetHeight(v2);
    goto LABEL_13;
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v27 = *(v0 + 8);
  v28 = *(v0 + 168);

  return v27(v28);
}

uint64_t sub_19A34A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 81) = a6;
  *(v6 + 128) = a4;
  *(v6 + 136) = a5;
  *(v6 + 112) = a2;
  *(v6 + 120) = a3;
  *(v6 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0480);
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A34A180, 0, 0);
}

uint64_t sub_19A34A180()
{
  v1 = *(v0 + 112);
  v25 = sub_19A330818(MEMORY[0x1E69E7CC0]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v29 = **(v0 + 104);
    v30 = *(v0 + 136);
    v4 = sub_19A5731CC();
    v5 = *(v4 - 8);
    v28 = *(v5 + 56);
    v27 = (v5 + 48);
    v26 = (v5 + 8);
    v6 = (v3 + 40);
    do
    {
      v34 = v2;
      v10 = *(v0 + 144);
      v9 = *(v0 + 152);
      v32 = *(v0 + 81);
      v11 = *(v0 + 128);
      v31 = *(v0 + 136);
      v12 = *(v0 + 120);
      v33 = v6;
      v13 = *(v6 - 1);
      v14 = *v6;
      v28(v9, 1, 1, v4);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      *(v15 + 48) = v31;
      *(v15 + 56) = v32;
      *(v15 + 64) = v13;
      *(v15 + 72) = v14;
      sub_19A34EA3C(v9, v10);
      LODWORD(v10) = (*v27)(v10, 1, v4);

      v17 = v30;
      v18 = *(v0 + 144);
      if (v10 == 1)
      {
        sub_19A34EAAC(*(v0 + 144));
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_19A5731BC();
        (*v26)(v18, v4);
        if (*v16)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v19 = sub_19A57314C();
          v20 = v21;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v19 = 0;
      v20 = 0;
LABEL_10:

      if (v20 | v19)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v19;
        *(v0 + 40) = v20;
      }

      else
      {
        v7 = 0;
      }

      v6 = v33 + 2;
      v8 = *(v0 + 152);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_19A34EAAC(v8);
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  sub_19A57326C();
  *(v0 + 184) = v25;
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *v22 = v0;
  v22[1] = sub_19A34A4F0;
  v23 = *(v0 + 160);

  return MEMORY[0x1EEE6DAD8](v0 + 72, 0, 0, v23, v0 + 88);
}

uint64_t sub_19A34A4F0()
{

  if (v0)
  {

    v1 = sub_19A34A99C;
  }

  else
  {
    v1 = sub_19A34A608;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A34A608()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 <= 1)
  {
    if (*(v0 + 80))
    {
      v6 = [*(v0 + 72) extent];
      if (v11 <= -9.22337204e18)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= 9.22337204e18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
      }

      Width = v11;
      Height = v12;
    }

    else
    {
      Width = CGImageGetWidth(*(v0 + 72));
      Height = CGImageGetHeight(v2);
    }

LABEL_13:
    v13 = *(v0 + 184);
    v14 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v13;
    v16 = sub_19A31FCD8(Width, Height);
    v18 = *(v13 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v1 = v17;
      if (*(*(v0 + 184) + 24) < v21)
      {
        sub_19A32A5E8(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_19A31FCD8(Width, Height);
        if ((v1 & 1) != (v22 & 1))
        {

          return sub_19A57404C();
        }

LABEL_20:
        v24 = *(v0 + 96);
        if (v1)
        {
LABEL_21:
          v25 = v24[7] + 16 * v16;
          v26 = *v25;
          *v25 = v2;
          *(v25 + 8) = v3;

          sub_19A335458(v2, v3);
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    v29 = v16;
    sub_19A32CCF0();
    v16 = v29;
    v24 = *(v0 + 96);
    if (v1)
    {
      goto LABEL_21;
    }

LABEL_27:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v30 = (v24[6] + 16 * v16);
    *v30 = Width;
    v30[1] = Height;
    v31 = v24[7] + 16 * v16;
    *v31 = v2;
    *(v31 + 8) = v3;
    sub_19A335458(v2, v3);
    v32 = v24[2];
    v20 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v20)
    {
      v24[2] = v33;
LABEL_29:
      *(v0 + 184) = v24;
      v34 = swift_task_alloc();
      *(v0 + 192) = v34;
      *v34 = v0;
      v34[1] = sub_19A34A4F0;
      v9 = *(v0 + 160);
      v10 = v0 + 88;
      v6 = (v0 + 72);
      v7 = 0;
      v8 = 0;

      return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 2)
  {
    Width = CVPixelBufferGetWidth(*(v0 + 72));
    Height = CVPixelBufferGetHeight(v2);
    goto LABEL_13;
  }

  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

  v27 = *(v0 + 8);
  v28 = *(v0 + 184);

  return v27(v28);
}

uint64_t sub_19A34A99C()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A34AA38(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 82) = a5;
  *(v5 + 112) = a2;
  *(v5 + 120) = a4;
  *(v5 + 81) = a3;
  *(v5 + 104) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0480);
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 - 8);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A34AB54, 0, 0);
}

uint64_t sub_19A34AB54()
{
  v1 = *(v0 + 112);
  v24 = sub_19A330818(MEMORY[0x1E69E7CC0]);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 112);
    v30 = *(v0 + 120);
    v29 = *(v0 + 81);
    v28 = **(v0 + 104);
    v4 = sub_19A5731CC();
    v5 = *(v4 - 8);
    v27 = *(v5 + 56);
    v26 = (v5 + 48);
    v25 = (v5 + 8);
    v6 = (v3 + 40);
    do
    {
      v31 = v6;
      v32 = v2;
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v11 = *(v0 + 82);
      v12 = *(v0 + 120);
      v14 = *(v6 - 1);
      v13 = *v6;
      v27(v9, 1, 1, v4);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = v29;
      *(v15 + 40) = v12;
      *(v15 + 48) = v11;
      *(v15 + 56) = v14;
      *(v15 + 64) = v13;
      sub_19A34EA3C(v9, v10);
      LODWORD(v10) = (*v26)(v10, 1, v4);
      v16 = v30;
      v17 = *(v0 + 128);
      if (v10 == 1)
      {
        sub_19A34EAAC(*(v0 + 128));
      }

      else
      {
        sub_19A5731BC();
        (*v25)(v17, v4);
      }

      if (*(v15 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_19A57314C();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      if (v20 | v18)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v20;
      }

      else
      {
        v7 = 0;
      }

      v6 = v31 + 2;
      v8 = *(v0 + 136);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_19A34EAAC(v8);
      --v2;
    }

    while (v32 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
  sub_19A57326C();
  *(v0 + 168) = v24;
  v21 = swift_task_alloc();
  *(v0 + 176) = v21;
  *v21 = v0;
  v21[1] = sub_19A34AEB4;
  v22 = *(v0 + 144);

  return MEMORY[0x1EEE6DAD8](v0 + 72, 0, 0, v22, v0 + 88);
}

uint64_t sub_19A34AEB4()
{

  if (v0)
  {

    v1 = sub_19A34B360;
  }

  else
  {
    v1 = sub_19A34AFCC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_19A34AFCC()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  if (v3 <= 1)
  {
    if (*(v0 + 80))
    {
      v6 = [*(v0 + 72) extent];
      if (v11 <= -9.22337204e18)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v11 >= 9.22337204e18)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      if (v12 <= -9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= 9.22337204e18)
      {
LABEL_37:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
      }

      Width = v11;
      Height = v12;
    }

    else
    {
      Width = CGImageGetWidth(*(v0 + 72));
      Height = CGImageGetHeight(v2);
    }

LABEL_13:
    v13 = *(v0 + 168);
    v14 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v13;
    v16 = sub_19A31FCD8(Width, Height);
    v18 = *(v13 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      v1 = v17;
      if (*(*(v0 + 168) + 24) < v21)
      {
        sub_19A32A5E8(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_19A31FCD8(Width, Height);
        if ((v1 & 1) != (v22 & 1))
        {

          return sub_19A57404C();
        }

LABEL_20:
        v24 = *(v0 + 96);
        if (v1)
        {
LABEL_21:
          v25 = v24[7] + 16 * v16;
          v26 = *v25;
          *v25 = v2;
          *(v25 + 8) = v3;

          sub_19A335458(v2, v3);
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }
    }

    v29 = v16;
    sub_19A32CCF0();
    v16 = v29;
    v24 = *(v0 + 96);
    if (v1)
    {
      goto LABEL_21;
    }

LABEL_27:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v30 = (v24[6] + 16 * v16);
    *v30 = Width;
    v30[1] = Height;
    v31 = v24[7] + 16 * v16;
    *v31 = v2;
    *(v31 + 8) = v3;
    sub_19A335458(v2, v3);
    v32 = v24[2];
    v20 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (!v20)
    {
      v24[2] = v33;
LABEL_29:
      *(v0 + 168) = v24;
      v34 = swift_task_alloc();
      *(v0 + 176) = v34;
      *v34 = v0;
      v34[1] = sub_19A34AEB4;
      v9 = *(v0 + 144);
      v10 = v0 + 88;
      v6 = (v0 + 72);
      v7 = 0;
      v8 = 0;

      return MEMORY[0x1EEE6DAD8](v6, v7, v8, v9, v10);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (v3 == 2)
  {
    Width = CVPixelBufferGetWidth(*(v0 + 72));
    Height = CVPixelBufferGetHeight(v2);
    goto LABEL_13;
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v27 = *(v0 + 8);
  v28 = *(v0 + 168);

  return v27(v28);
}

uint64_t sub_19A34B360()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_19A34B40C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_19A34F28C;

  return sub_19A349050(v4, v5, a2);
}

uint64_t sub_19A34B4E4(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v7 = *v2;
  v6 = v2[1];
  v8 = *(a1 + 8);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_19A34B5BC;

  return sub_19A34932C(v5, v8, a2, v7, v6);
}

uint64_t sub_19A34B5BC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_19A34B6D0(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *v2;
  v7 = *(a1 + 8);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_19A34F28C;

  return sub_19A349610(v5, v7, a2, v6);
}

char *sub_19A34B7A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34B8AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2E70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_19A34B9B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0048);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34BB34(char *result, int64_t a2, char a3, char *a4)
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
    sub_19A34F54C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_19A34BC70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34BD7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF70);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_19A34BED8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_19A34BFDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34C0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34C21C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_19A34C340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_19A34C434(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0110);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34C568(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34C6A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_19A34C7C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

char *sub_19A34C9C4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 32 * v9);
  }

  return v11;
}

char *sub_19A34CAC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34CBF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0158);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A34CD10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_19A34CE44(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_19A34D020(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA00B0);
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
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FE28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_19A34D168(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19A573AFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_19A2E10E0(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_19A34D228(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_19A2E10E0(a3, (a4[7] + 32 * a1));
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

unint64_t sub_19A34D2A4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

unint64_t sub_19A34D2E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_19A34D330(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5;
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

_OWORD *sub_19A34D384(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19A2E10E0(a4, (a5[7] + 32 * a1));
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

unint64_t sub_19A34D3F0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_19A34D440(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

uint64_t sub_19A34D484(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for GeneratedImage();
  result = sub_19A34EC58(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for GeneratedImage);
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

unint64_t sub_19A34D530(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

uint64_t sub_19A34D578(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry(0);
  result = sub_19A34EC58(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for AppleDiffusionImageGenerator.PipelineCollectionManager.CacheEntry);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_19A34D620(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19A573EBC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_19A5730DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_19A34D718(v7, v8, a1, v4);
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
    return sub_19A32DB20(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19A34D718(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v6 = v4;
  v8 = a3[1];
  if (v8 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_135:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_173;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_167;
    }

    goto LABEL_137;
  }

  v9 = a4;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10++;
    if (v10 < v8)
    {
      v13 = (*a3 + 16 * v10);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*a3 + 16 * v12);
      v17 = *v16;
      v18 = v16[1];
      if (v18 >= *v16)
      {
        v19 = *v16;
      }

      else
      {
        v19 = v16[1];
      }

      if (v14 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v14;
      }

      if (v19 >= v20)
      {
        if (v18 > v17)
        {
          v17 = v16[1];
        }

        if (v14 <= v15)
        {
          v22 = v15;
        }

        else
        {
          v22 = v14;
        }

        v23 = v17 < v22;
        v21 = v20 >= v19 && v23;
      }

      else
      {
        v21 = 1;
      }

      v10 = v12 + 2;
      if (v12 + 2 < v8)
      {
        v24 = v16 + 5;
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          if (v14 >= v15)
          {
            v27 = v15;
          }

          else
          {
            v27 = v14;
          }

          if (v26 >= v25)
          {
            v28 = *(v24 - 1);
          }

          else
          {
            v28 = *v24;
          }

          if (v27 < v28)
          {
            goto LABEL_23;
          }

          if (v28 < v27)
          {
            goto LABEL_39;
          }

          if (v14 <= v15)
          {
            v14 = v15;
          }

          v29 = v26 <= v25 ? *(v24 - 1) : *v24;
          if (v14 < v29)
          {
LABEL_23:
            if ((v21 & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
LABEL_39:
            if (v21)
            {
              goto LABEL_43;
            }
          }

          v24 += 2;
          ++v10;
          v14 = v26;
          v15 = v25;
        }

        while (v8 != v10);
        v10 = v8;
      }

      if (v21)
      {
LABEL_43:
        if (v10 < v12)
        {
          goto LABEL_166;
        }

        if (v12 < v10)
        {
          v30 = 16 * v10 - 16;
          v31 = 16 * v12;
          v32 = v10;
          v33 = v12;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_170;
              }

              v34 = *(v35 + v31);
              *(v35 + v31) = *(v35 + v30);
              *(v35 + v30) = v34;
            }

            ++v33;
            v30 -= 16;
            v31 += 16;
          }

          while (v33 < v32);
          v8 = a3[1];
        }
      }
    }

LABEL_52:
    if (v10 < v8)
    {
      if (__OFSUB__(v10, v12))
      {
        goto LABEL_163;
      }

      if (v10 - v12 < v9)
      {
        if (__OFADD__(v12, v9))
        {
          goto LABEL_164;
        }

        if (v12 + v9 < v8)
        {
          v8 = v12 + v9;
        }

        if (v8 < v12)
        {
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          result = sub_19A34DDAC(v11);
          v11 = result;
LABEL_137:
          v95 = *(v11 + 2);
          if (v95 >= 2)
          {
            while (*a3)
            {
              v96 = *&v11[16 * v95];
              v97 = *&v11[16 * v95 + 24];
              sub_19A32E1E4((*a3 + 16 * v96), (*a3 + 16 * *&v11[16 * v95 + 16]), (*a3 + 16 * v97), v5);
              if (v6)
              {
              }

              if (v97 < v96)
              {
                goto LABEL_160;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_19A34DDAC(v11);
              }

              if (v95 - 2 >= *(v11 + 2))
              {
                goto LABEL_161;
              }

              v98 = &v11[16 * v95];
              *v98 = v96;
              *(v98 + 1) = v97;
              result = sub_19A34DD20(v95 - 1);
              v95 = *(v11 + 2);
              if (v95 <= 1)
              {
              }
            }

            goto LABEL_171;
          }
        }

        if (v10 != v8)
        {
          break;
        }
      }
    }

LABEL_84:
    if (v10 < v12)
    {
      goto LABEL_162;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_19A31CF2C(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v5 = *(v11 + 2);
    v50 = *(v11 + 3);
    v51 = v5 + 1;
    if (v5 >= v50 >> 1)
    {
      result = sub_19A31CF2C((v50 > 1), v5 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v51;
    v52 = &v11[16 * v5];
    *(v52 + 4) = v12;
    *(v52 + 5) = v10;
    v53 = *v100;
    if (!*v100)
    {
      goto LABEL_172;
    }

    if (v5)
    {
      while (1)
      {
        v54 = v51 - 1;
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v55 = *(v11 + 4);
          v56 = *(v11 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_104:
          if (v58)
          {
            goto LABEL_151;
          }

          v71 = &v11[16 * v51];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_154;
          }

          v77 = &v11[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_157;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_158;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v51 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        v81 = &v11[16 * v51];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_118:
        if (v76)
        {
          goto LABEL_153;
        }

        v84 = &v11[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_156;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_125:
        v92 = v54 - 1;
        if (v54 - 1 >= v51)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (!*a3)
        {
          goto LABEL_169;
        }

        v93 = *&v11[16 * v92 + 32];
        v5 = *&v11[16 * v54 + 40];
        sub_19A32E1E4((*a3 + 16 * v93), (*a3 + 16 * *&v11[16 * v54 + 32]), (*a3 + 16 * v5), v53);
        if (v6)
        {
        }

        if (v5 < v93)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_19A34DDAC(v11);
        }

        if (v92 >= *(v11 + 2))
        {
          goto LABEL_148;
        }

        v94 = &v11[16 * v92];
        *(v94 + 4) = v93;
        *(v94 + 5) = v5;
        result = sub_19A34DD20(v54);
        v51 = *(v11 + 2);
        if (v51 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v11[16 * v51 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_149;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_150;
      }

      v66 = &v11[16 * v51];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_152;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_155;
      }

      if (v70 >= v62)
      {
        v88 = &v11[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_159;
        }

        if (v57 < v91)
        {
          v54 = v51 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_104;
    }

LABEL_3:
    v8 = a3[1];
    v9 = a4;
    if (v10 >= v8)
    {
      goto LABEL_135;
    }
  }

  v36 = *a3;
  v37 = *a3 + 16 * v10 - 16;
  v38 = v12 - v10;
LABEL_62:
  v39 = *(v36 + 16 * v10);
  v40 = *(v36 + 16 * v10 + 8);
  v41 = *(v36 + 16 * v10);
  if (v40 >= v41)
  {
    v42 = *(v36 + 16 * v10);
  }

  else
  {
    v42 = *(v36 + 16 * v10 + 8);
  }

  if (v40 <= v41)
  {
    v40 = *(v36 + 16 * v10);
  }

  v43 = v38;
  v44 = v37;
  while (1)
  {
    v45 = *v44;
    v46 = *(v44 + 8);
    if (v46 >= *v44)
    {
      v47 = *v44;
    }

    else
    {
      v47 = *(v44 + 8);
    }

    if (v47 >= v42)
    {
      if (v46 > v45)
      {
        v45 = *(v44 + 8);
      }

      if (v42 < v47 || v45 >= v40)
      {
LABEL_61:
        ++v10;
        v37 += 16;
        --v38;
        if (v10 != v8)
        {
          goto LABEL_62;
        }

        v10 = v8;
        goto LABEL_84;
      }
    }

    if (!v36)
    {
      break;
    }

    *(v44 + 16) = *v44;
    *v44 = v39;
    v44 -= 16;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_19A34DD20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19A34DDAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_19A34DDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FEA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_19A34E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_19A34F284;

  return sub_19A349758(a2, a3, a5, a6);
}

uint64_t sub_19A34E0F8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_19A33558C;

  return sub_19A34E040(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_19A34E1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v10 = swift_task_alloc();
  *(v8 + 48) = v10;
  *v10 = v8;
  v10[1] = sub_19A34E298;

  return sub_19A393F1C(a1, (v8 + 32), (v8 + 16));
}

uint64_t sub_19A34E298()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A34F280, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A34E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a4;
  v12 = a4[1];
  v13 = swift_task_alloc();
  *(v6 + 24) = v13;
  *v13 = v6;
  v13[1] = sub_19A34F284;

  return sub_19A34A064(a2, a3, v11, v12, a5, a6);
}

uint64_t sub_19A34E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4;
  v11 = a4[1];
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *v12 = v8;
  v12[1] = sub_19A34E298;

  return sub_19A441D6C(a1, (v8 + 32), (v8 + 16), v10, v11);
}

uint64_t sub_19A34E56C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v11 = *a4;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_19A34E634;

  return sub_19A34AA38(a2, a3, v11, a5, a6);
}

uint64_t sub_19A34E634(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_19A34E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v10 = swift_task_alloc();
  *(v8 + 48) = v10;
  *v10 = v8;
  v10[1] = sub_19A34E80C;

  return sub_19A4CEE24(a1, (v8 + 32), (v8 + 16));
}

uint64_t sub_19A34E80C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A34E940, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_19A34E958(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A33558C;

  return sub_19A34E1D8(a1, v4, v5, sub_19A34E1D8, v6, v9, v7, v8);
}

uint64_t sub_19A34EA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A34EAAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_19A34EB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69E7CD0];
  v14 = MEMORY[0x1E69E7CD0];
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = (a3 + 40);
    do
    {
      if (*(v7 - 1) == a1 && *v7 == a2)
      {
        sub_19A323030(&v13, a1, a2);
      }

      v7 += 2;
      --v4;
    }

    while (v4);
    v3 = v14;
  }

  v9 = *(v3 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = sub_19A31EF10(*(v3 + 16), 0);
  v11 = sub_19A32EA2C(&v13, v10 + 2, v9, v3);

  sub_19A3355AC();
  if (v11 != v9)
  {
    __break(1u);
LABEL_14:
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10;
  sub_19A348CF8(&v13);

  return v13;
}

uint64_t sub_19A34EC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_19A34ECE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_19A34ED28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_19A34ED88(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_19A33558C;

  return sub_19A34E3CC(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_19A34EE68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A33558C;

  return sub_19A34E498(a1, v4, v5, (v1 + 32), v6, v9, v7, v8);
}

char *sub_19A34EF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v4 = *(a3 + 16);
  if (v4)
  {
    v7 = (a3 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = v8 == a1 && v9 == a2;
      if (v10 || a1 == a2 && (v8 == v9 ? (v11 = v9 <= a2) : (v11 = 0), v11 ? (v12 = v8 <= a1) : (v12 = 0), v12))
      {
        sub_19A323030(&v17, v8, v9);
      }

      v7 += 2;
      --v4;
    }

    while (v4);
    v3 = v18;
  }

  v13 = *(v3 + 16);
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = sub_19A31EF10(*(v3 + 16), 0);
  v15 = sub_19A32EA2C(&v17, v14 + 2, v13, v3);

  sub_19A3355AC();
  if (v15 != v13)
  {
    __break(1u);
LABEL_22:
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = v14;
  sub_19A348CF8(&v17);

  return v17;
}

uint64_t sub_19A34F0AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_19A33558C;

  return sub_19A34E56C(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_19A34F18C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A33558C;

  return sub_19A34E744(a1, v4, v5, v1 + 32, v6, v9, v7, v8);
}

uint64_t sub_19A34F290()
{
  sub_19A34F54C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19A57A9D0;
  *(v0 + 32) = type metadata accessor for AppleDiffusionImageGenerator();
  *(v0 + 40) = type metadata accessor for WordCloudImageGenerator();
  *(v0 + 48) = type metadata accessor for UnsupportedArchitectureImageGenerator();
  result = type metadata accessor for UnavailableImageGenerator();
  *(v0 + 56) = result;
  qword_1ED82BD28 = v0;
  return result;
}

uint64_t sub_19A34F314@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (qword_1ED824B80 != -1)
  {
LABEL_15:
    result = swift_once();
  }

  v6 = 0;
  v7 = qword_1ED82BD28;
  v8 = *(qword_1ED82BD28 + 16);
  v9 = qword_1ED82BD28 + 32;
  while (1)
  {
    if (v8 == v6)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v10 = *(v9 + 8 * v6);
    if ((*(v10 + 88))() == v4 && v11 == a2)
    {
      break;
    }

    ++v6;
    v13 = sub_19A573F1C();

    if (v13)
    {
      return (*(v10 + 112))(result);
    }
  }

  return (*(v10 + 112))(result);
}

uint64_t availableImageGeneratorIdentifiers()()
{
  v0 = sub_19A34F5C4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v2 = sub_19A322580(0, v1, 0);
    v3 = 32;
    v4 = v12;
    do
    {
      v2 = (*(*(v0 + v3) + 88))(v2);
      v13 = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        v9 = v2;
        v10 = v5;
        sub_19A322580((v6 > 1), v7 + 1, 1);
        v5 = v10;
        v2 = v9;
        v4 = v13;
      }

      *(v4 + 16) = v7 + 1;
      v8 = v4 + 16 * v7;
      *(v8 + 32) = v2;
      *(v8 + 40) = v5;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_19A34F54C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04E8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EAFA04F0;
  }

  else
  {
    v2 = &unk_1EAFA3250;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2);
}

uint64_t sub_19A34F5C4()
{
  if (qword_1ED824B80 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1ED82BD28 + 16);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = qword_1ED82BD28 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = *v1;
    if ((*(*v1 + 104))())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_19A322620(0, *(v2 + 16) + 1, 1);
      }

      v4 = *(v2 + 16);
      v3 = *(v2 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_19A322620((v3 > 1), v4 + 1, 1);
      }

      *(v2 + 16) = v4 + 1;
      *(v2 + 8 * v4 + 32) = v5;
    }

    v1 += 8;
    --v0;
  }

  while (v0);
  return v2;
}

uint64_t sub_19A34F6F4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED824B80 != -1)
  {
LABEL_15:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1ED82BD28;
  v6 = *(qword_1ED82BD28 + 16);
  v7 = qword_1ED82BD28 + 32;
  while (1)
  {
    if (v6 == v4)
    {
      sub_19A2F1130();
      swift_allocError();
      *v13 = a1;
      *(v13 + 8) = a2;
      *(v13 + 16) = 0;
      swift_willThrow();
    }

    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v8 = *(v7 + 8 * v4);
    if ((*(v8 + 88))() == a1 && v9 == a2)
    {
      break;
    }

    ++v4;
    v11 = sub_19A573F1C();

    if (v11)
    {
      return (*(v8 + 128))(v12);
    }
  }

  return (*(v8 + 128))(v12);
}

uint64_t sub_19A34F860(void **a1)
{
  v2 = *(sub_19A57288C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_19A34DFA8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_19A3506FC(v6);
  *a1 = v3;
  return result;
}

uint64_t getFacesSortedByDistanceFromImageCenter(pixelBuffer:minimumFaceSize:)(uint64_t a1, double a2)
{
  *(v2 + 32) = a2;
  *(v2 + 24) = a1;
  v3 = sub_19A57289C();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_19A5727BC();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_19A57288C();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC90);
  *(v2 + 136) = swift_task_alloc();
  v6 = sub_19A5728DC();
  *(v2 + 144) = v6;
  *(v2 + 152) = *(v6 - 8);
  *(v2 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A34FB3C, 0, 0);
}

uint64_t sub_19A34FB3C()
{
  v1 = v0[17];
  v2 = *MEMORY[0x1E6984398];
  v3 = sub_19A5728CC();
  v4 = *(v3 - 8);
  (*(v4 + 104))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_19A5728EC();
  v5 = *(*(sub_19A44F978() + 16) + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v0[21] = v6;

  os_unfair_lock_unlock((v5 + 24));

  v7 = swift_task_alloc();
  v0[22] = v7;
  v8 = sub_19A352538();
  *v7 = v0;
  v7[1] = sub_19A34FDC4;
  v9 = v0[18];
  v10 = v0[3];

  return MEMORY[0x1EEDE7308](v0 + 2, v10, 0x100000000, v6, v9, v8);
}

uint64_t sub_19A34FDC4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_19A3503C8;
  }

  else
  {
    v2 = sub_19A34FEF8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A34FEF8()
{
  v50 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  CVPixelBufferGetWidth(v2);
  result = CVPixelBufferGetHeight(v2);
  v4 = v1;
  v47 = *(v1 + 16);
  if (v47)
  {
    v5 = 0;
    v6 = *(v0 + 96);
    v7 = *(v0 + 48);
    v43 = *MEMORY[0x1E6984368];
    v41 = (v7 + 8);
    v42 = (v7 + 104);
    v38 = (v6 + 8);
    v44 = v6;
    v39 = (v6 + 32);
    v40 = (*(v0 + 72) + 8);
    v8 = MEMORY[0x1E69E7CC0];
    v46 = v1;
    while (v5 < *(v4 + 16))
    {
      v9 = *(v0 + 80);
      v11 = *(v0 + 56);
      v10 = *(v0 + 64);
      v12 = *(v0 + 40);
      v13 = *(v0 + 32);
      v14 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v15 = *(v44 + 72);
      (*(v44 + 16))(*(v0 + 128), v4 + v14 + v15 * v5, *(v0 + 88));
      sub_19A57286C();
      (*v42)(v11, v43, v12);
      sub_19A5727AC();
      v17 = v16;
      v19 = v18;
      (*v41)(v11, v12);
      (*v40)(v9, v10);
      if (v17 < v13 || v19 < v13)
      {
        result = (*v38)(*(v0 + 128), *(v0 + 88));
      }

      else
      {
        v21 = *v39;
        (*v39)(*(v0 + 120), *(v0 + 128), *(v0 + 88));
        v49 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_19A3225E0(0, v8[2] + 1, 1);
          v8 = v49;
        }

        v23 = v8[2];
        v22 = v8[3];
        if (v23 >= v22 >> 1)
        {
          sub_19A3225E0(v22 > 1, v23 + 1, 1);
          v8 = v49;
        }

        v24 = *(v0 + 120);
        v25 = *(v0 + 88);
        v8[2] = v23 + 1;
        result = v21(v8 + v14 + v23 * v15, v24, v25);
      }

      ++v5;
      v4 = v46;
      if (v47 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v26 = v4;
  v27 = *(v0 + 184);
  v49 = v8;

  sub_19A34F860(&v49);
  if (v27)
  {
  }

  else
  {

    v28 = v49;
    if (v49[2] || !v47)
    {
      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    }

    else
    {

      if (!*(v26 + 16))
      {
LABEL_29:
        __break(1u);
        return result;
      }

      v29 = v26;
      v48 = *(v0 + 160);
      v30 = *(v0 + 152);
      v45 = *(v0 + 144);
      v31 = *(v0 + 104);
      v32 = *(v0 + 112);
      v33 = *(v0 + 88);
      v34 = *(v0 + 96);
      v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      (*(v34 + 16))(v31, v29 + v35, v33);

      v36 = *(v34 + 32);
      v36(v32, v31, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA04C0);
      v28 = swift_allocObject();
      *(v28 + 1) = xmmword_19A576E10;
      v36(v28 + v35, v32, v33);

      (*(v30 + 8))(v48, v45);
    }

    v37 = *(v0 + 8);

    return v37(v28);
  }
}

uint64_t sub_19A3503C8()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

BOOL sub_19A3504B4()
{
  v0 = sub_19A5727BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A57286C();
  sub_19A57279C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v1 + 8);
  v12(v3, v0);
  v43.origin.x = v5;
  v43.origin.y = v7;
  v43.size.width = v9;
  v43.size.height = v11;
  v13 = CGRectGetMidX(v43) + -0.5;
  sub_19A57286C();
  sub_19A57279C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v12(v3, v0);
  v44.origin.x = v15;
  v44.origin.y = v17;
  v44.size.width = v19;
  v44.size.height = v21;
  v22 = CGRectGetMidY(v44) + -0.5;
  sub_19A57286C();
  sub_19A57279C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v12(v3, v0);
  v45.origin.x = v24;
  v45.origin.y = v26;
  v45.size.width = v28;
  v45.size.height = v30;
  v31 = CGRectGetMidX(v45) + -0.5;
  sub_19A57286C();
  sub_19A57279C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v12(v3, v0);
  v46.origin.x = v33;
  v46.origin.y = v35;
  v46.size.width = v37;
  v46.size.height = v39;
  MidY = CGRectGetMidY(v46);
  return v13 * v13 + v22 * v22 < v31 * v31 + (MidY + -0.5) * (MidY + -0.5);
}

uint64_t sub_19A3506FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_19A573EBC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19A57288C();
        v6 = sub_19A5730DC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_19A57288C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19A350D08(v8, v9, a1, v4);
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
    return sub_19A350828(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_19A350828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v90 = sub_19A5727BC();
  v8 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_19A57288C();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v82 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v72 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v88 = &v72 - v18;
  v74 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v21 = *(v17 + 16);
    v20 = v17 + 16;
    v22 = *(v20 + 56);
    v84 = (v8 + 8);
    v85 = v21;
    v83 = (v20 - 8);
    v87 = v20;
    v23 = v19 + v22 * (a3 - 1);
    v79 = -v22;
    v80 = (v20 + 16);
    v24 = a1 - a3;
    v81 = v19;
    v73 = v22;
    v25 = v19 + v22 * a3;
    v86 = v11;
LABEL_5:
    v78 = a3;
    v75 = v25;
    v76 = v24;
    v91 = v24;
    v77 = v23;
    while (1)
    {
      v26 = v88;
      v27 = v85;
      v85(v88, v25, v11);
      v28 = v89;
      v27(v89, v23, v11);
      sub_19A57286C();
      sub_19A57279C();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37 = *v84;
      v38 = v90;
      (*v84)(v10, v90);
      v92.origin.x = v30;
      v92.origin.y = v32;
      v92.size.width = v34;
      v92.size.height = v36;
      v39 = CGRectGetMidX(v92) + -0.5;
      sub_19A57286C();
      sub_19A57279C();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v37(v10, v38);
      v93.origin.x = v41;
      v93.origin.y = v43;
      v93.size.width = v45;
      v93.size.height = v47;
      v48 = CGRectGetMidY(v93) + -0.5;
      sub_19A57286C();
      sub_19A57279C();
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v37(v10, v38);
      v94.origin.x = v50;
      v94.origin.y = v52;
      v94.size.width = v54;
      v94.size.height = v56;
      v57 = CGRectGetMidX(v94) + -0.5;
      sub_19A57286C();
      sub_19A57279C();
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;
      v37(v10, v38);
      v11 = v86;
      v95.origin.x = v59;
      v95.origin.y = v61;
      v95.size.width = v63;
      v95.size.height = v65;
      MidY = CGRectGetMidY(v95);
      v67 = v57 * v57 + (MidY + -0.5) * (MidY + -0.5);
      v68 = *v83;
      (*v83)(v28, v11);
      result = v68(v26, v11);
      if (v39 * v39 + v48 * v48 >= v67)
      {
LABEL_4:
        a3 = v78 + 1;
        v23 = v77 + v73;
        v24 = v76 - 1;
        v25 = v75 + v73;
        if (v78 + 1 == v74)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v81)
      {
        break;
      }

      v69 = *v80;
      v70 = v82;
      (*v80)(v82, v25, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = (v69)(v23, v70, v11);
      v23 += v79;
      v25 += v79;
      if (__CFADD__(v91++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_19A350D08(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v198 = a1;
  v219 = sub_19A5727BC();
  v6 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_19A57288C();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v201 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v213 = &v194 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v223 = &v194 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v222 = &v194 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v196 = &v194 - v18;
  result = MEMORY[0x1EEE9AC00](v17);
  v195 = &v194 - v21;
  v22 = a3[1];
  v208 = v20;
  if (v22 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v6 = *v198;
    if (!*v198)
    {
      goto LABEL_140;
    }

    a4 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_134;
    }

    result = a4;
LABEL_101:
    v225 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*a3)
      {
        v188 = *(result + 16 * a4);
        v189 = result;
        v190 = *(result + 16 * (a4 - 1) + 40);
        v191 = v210;
        sub_19A351BD8(*a3 + *(v208 + 72) * v188, *a3 + *(v208 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v208 + 72) * v190, v6);
        v210 = v191;
        if (v191)
        {
        }

        if (v190 < v188)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_19A34DDAC(v189);
        }

        if (a4 - 2 >= *(v189 + 2))
        {
          goto LABEL_128;
        }

        v192 = &v189[16 * a4];
        *v192 = v188;
        *(v192 + 1) = v190;
        v225 = v189;
        sub_19A34DD20(a4 - 1);
        result = v225;
        a4 = *(v225 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v23 = 0;
  v220 = v20 + 16;
  v221 = (v20 + 8);
  v24 = v20;
  v216 = (v20 + 32);
  v217 = (v6 + 8);
  v25 = MEMORY[0x1E69E7CC0];
  v203 = a3;
  v197 = a4;
  while (1)
  {
    v26 = v23;
    v27 = v23 + 1;
    v202 = v25;
    if (v23 + 1 >= v22)
    {
      v22 = v23 + 1;
      goto LABEL_24;
    }

    v28 = *v203;
    v29 = *(v24 + 72);
    v30 = *(v24 + 16);
    v31 = v195;
    v32 = (*v203 + v29 * v27);
    v30(v195);
    v33 = v28 + v29 * v26;
    v199 = v26;
    v34 = v196;
    v211 = v30;
    (v30)(v196, v33, v8);
    v35 = v210;
    LODWORD(v212) = sub_19A3504B4();
    v210 = v35;
    if (v35)
    {
      v193 = *v221;
      (*v221)(v34, v8);
      v193(v31, v8);
    }

    v6 = v221;
    v36 = *v221;
    (*v221)(v34, v8);
    v207 = v36;
    result = (v36)(v31, v8);
    a3 = (v199 + 2);
    v37 = v28 + v29 * (v199 + 2);
    v38 = v29;
    v214 = v29;
    v209 = v22;
    while (v22 != a3)
    {
      v39 = v211;
      (v211)(v222, v37, v8);
      v224 = v32;
      v39(v223, v32, v8);
      v40 = v218;
      sub_19A57286C();
      sub_19A57279C();
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v49 = *v217;
      v50 = v219;
      (*v217)(v40, v219);
      v226.origin.x = v42;
      v226.origin.y = v44;
      v226.size.width = v46;
      v226.size.height = v48;
      v51 = CGRectGetMidX(v226) + -0.5;
      sub_19A57286C();
      sub_19A57279C();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v49(v40, v50);
      v227.origin.x = v53;
      v227.origin.y = v55;
      v227.size.width = v57;
      v227.size.height = v59;
      v60 = CGRectGetMidY(v227) + -0.5;
      v61 = v223;
      sub_19A57286C();
      sub_19A57279C();
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v49(v40, v50);
      v228.origin.x = v63;
      v228.origin.y = v65;
      v228.size.width = v67;
      v228.size.height = v69;
      v70 = CGRectGetMidX(v228) + -0.5;
      sub_19A57286C();
      sub_19A57279C();
      v72 = v71;
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v49(v40, v50);
      v22 = v209;
      v229.origin.x = v72;
      v229.origin.y = v74;
      v229.size.width = v76;
      v229.size.height = v78;
      MidY = CGRectGetMidY(v229);
      v80 = v70 * v70 + (MidY + -0.5) * (MidY + -0.5);
      v6 = v221;
      v81 = v207;
      (v207)(v61, v8);
      result = v81(v222, v8);
      v38 = v214;
      a3 = (a3 + 1);
      v37 += v214;
      v32 = &v214[v224];
      if (((v212 ^ (v51 * v51 + v60 * v60 >= v80)) & 1) == 0)
      {
        v22 = a3 - 1;
        break;
      }
    }

    v24 = v208;
    v25 = v202;
    a4 = v197;
    v26 = v199;
    if (v212)
    {
      if (v22 < v199)
      {
        goto LABEL_133;
      }

      if (v199 < v22)
      {
        v82 = v38 * (v22 - 1);
        v83 = v22 * v38;
        v84 = v22;
        v85 = v199;
        v86 = v199 * v38;
        a3 = v203;
        do
        {
          if (v85 != --v84)
          {
            v87 = *a3;
            if (!v87)
            {
              goto LABEL_137;
            }

            v6 = v87 + v86;
            v224 = *v216;
            (v224)(v201, v87 + v86, v8, v25);
            if (v86 < v82 || v6 >= v87 + v83)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v86 != v82)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v224)(v87 + v82, v201, v8);
            a3 = v203;
            v25 = v202;
            v38 = v214;
          }

          ++v85;
          v82 -= v38;
          v83 -= v38;
          v86 += v38;
        }

        while (v85 < v84);
        v24 = v208;
        a4 = v197;
        v26 = v199;
      }
    }

LABEL_24:
    v88 = v203[1];
    if (v22 >= v88)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v22, v26))
    {
      goto LABEL_130;
    }

    if (v22 - v26 >= a4)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v26, a4))
    {
      goto LABEL_131;
    }

    if ((v26 + a4) >= v88)
    {
      v6 = v203[1];
    }

    else
    {
      v6 = v26 + a4;
    }

    if (v6 < v26)
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      result = sub_19A34DDAC(a4);
      goto LABEL_101;
    }

    if (v22 == v6)
    {
LABEL_33:
      v6 = v22;
      if (v22 < v26)
      {
        goto LABEL_129;
      }

      goto LABEL_34;
    }

    v135 = *v203;
    v136 = *(v24 + 72);
    v214 = *(v24 + 16);
    v137 = (v135 + v136 * (v22 - 1));
    v211 = -v136;
    v199 = v26;
    v138 = (v26 - v22);
    v212 = v135;
    v200 = v136;
    v139 = v135 + v22 * v136;
    v215 = v8;
    v204 = v6;
LABEL_86:
    v209 = v22;
    v205 = v139;
    v140 = v139;
    v206 = v138;
    v141 = v138;
    v207 = v137;
LABEL_87:
    v224 = v141;
    v142 = v222;
    v143 = v214;
    (v214)(v222, v140, v8, v25);
    a3 = v223;
    v143(v223, v137, v8);
    v144 = v218;
    sub_19A57286C();
    sub_19A57279C();
    v146 = v145;
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v153 = *v217;
    v154 = v219;
    (*v217)(v144, v219);
    v230.origin.x = v146;
    v230.origin.y = v148;
    v230.size.width = v150;
    v230.size.height = v152;
    v155 = CGRectGetMidX(v230) + -0.5;
    sub_19A57286C();
    sub_19A57279C();
    v157 = v156;
    v159 = v158;
    v161 = v160;
    v163 = v162;
    v153(v144, v154);
    v231.origin.x = v157;
    v231.origin.y = v159;
    v231.size.width = v161;
    v231.size.height = v163;
    v164 = CGRectGetMidY(v231) + -0.5;
    sub_19A57286C();
    sub_19A57279C();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v153(v144, v154);
    v232.origin.x = v166;
    v232.origin.y = v168;
    v232.size.width = v170;
    v232.size.height = v172;
    v173 = CGRectGetMidX(v232) + -0.5;
    sub_19A57286C();
    sub_19A57279C();
    v175 = v174;
    v177 = v176;
    v179 = v178;
    v181 = v180;
    v182 = v154;
    v8 = v215;
    v153(v144, v182);
    v233.origin.x = v175;
    v233.origin.y = v177;
    v233.size.width = v179;
    v233.size.height = v181;
    v183 = CGRectGetMidY(v233);
    v184 = v173 * v173 + (v183 + -0.5) * (v183 + -0.5);
    a4 = *v221;
    (*v221)(a3, v8);
    result = (a4)(v142, v8);
    if (v155 * v155 + v164 * v164 < v184)
    {
      break;
    }

LABEL_85:
    v22 = v209 + 1;
    v137 = &v207[v200];
    v138 = v206 - 1;
    v139 = v205 + v200;
    v6 = v204;
    if (v209 + 1 != v204)
    {
      goto LABEL_86;
    }

    v26 = v199;
    if (v204 < v199)
    {
      goto LABEL_129;
    }

LABEL_34:
    result = swift_isUniquelyReferenced_nonNull_native();
    v204 = v6;
    if (result)
    {
      v25 = v202;
    }

    else
    {
      result = sub_19A31CF2C(0, *(v202 + 2) + 1, 1, v202);
      v25 = result;
    }

    v6 = *(v25 + 2);
    v89 = *(v25 + 3);
    a4 = v6 + 1;
    if (v6 >= v89 >> 1)
    {
      result = sub_19A31CF2C((v89 > 1), v6 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = a4;
    v90 = &v25[16 * v6];
    v91 = v204;
    *(v90 + 4) = v26;
    *(v90 + 5) = v91;
    if (!*v198)
    {
      goto LABEL_139;
    }

    v92 = v203;
    if (v6)
    {
      a3 = *v198;
      while (1)
      {
        v6 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v93 = *(v25 + 4);
          v94 = *(v25 + 5);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_54:
          if (v96)
          {
            goto LABEL_118;
          }

          v109 = &v25[16 * a4];
          v111 = *v109;
          v110 = *(v109 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_121;
          }

          v115 = &v25[16 * v6 + 32];
          v117 = *v115;
          v116 = *(v115 + 1);
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_125;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v6 = a4 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v119 = &v25[16 * a4];
        v121 = *v119;
        v120 = *(v119 + 1);
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_68:
        if (v114)
        {
          goto LABEL_120;
        }

        v122 = &v25[16 * v6];
        v124 = *(v122 + 4);
        v123 = *(v122 + 5);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_123;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_75:
        v130 = v6 - 1;
        if (v6 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*v92)
        {
          goto LABEL_136;
        }

        v131 = v25;
        a4 = *&v25[16 * v130 + 32];
        v132 = *&v25[16 * v6 + 40];
        v133 = v210;
        sub_19A351BD8(*v92 + *(v208 + 72) * a4, *v92 + *(v208 + 72) * *&v25[16 * v6 + 32], *v92 + *(v208 + 72) * v132, a3);
        v210 = v133;
        if (v133)
        {
        }

        if (v132 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_19A34DDAC(v131);
        }

        if (v130 >= *(v131 + 2))
        {
          goto LABEL_115;
        }

        v134 = &v131[16 * v130];
        *(v134 + 4) = a4;
        *(v134 + 5) = v132;
        v225 = v131;
        result = sub_19A34DD20(v6);
        v25 = v225;
        a4 = *(v225 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = &v25[16 * a4 + 32];
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_116;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_117;
      }

      v104 = &v25[16 * a4];
      v106 = *v104;
      v105 = *(v104 + 1);
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_119;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_122;
      }

      if (v108 >= v100)
      {
        v126 = &v25[16 * v6 + 32];
        v128 = *v126;
        v127 = *(v126 + 1);
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_126;
        }

        if (v95 < v129)
        {
          v6 = a4 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v24 = v208;
    a3 = v92;
    v22 = v92[1];
    v23 = v204;
    a4 = v197;
    if (v204 >= v22)
    {
      goto LABEL_98;
    }
  }

  v185 = v224;
  if (v212)
  {
    a4 = *v216;
    v186 = v213;
    (*v216)(v213, v140, v8);
    swift_arrayInitWithTakeFrontToBack();
    (a4)(v137, v186, v8);
    v137 += v211;
    v140 += v211;
    v187 = __CFADD__(v185, 1);
    v141 = v185 + 1;
    if (v187)
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_19A351BD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v135 = a3;
  v132 = sub_19A5727BC();
  v125 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v8 = v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_19A57288C();
  v9 = *(v136 - 8);
  v10 = MEMORY[0x1EEE9AC00](v136);
  v131 = v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v130 = v121 - v13;
  v129 = *(v14 + 72);
  if (!v129)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v129 == -1)
  {
    goto LABEL_61;
  }

  v15 = v135 - a2;
  if (v135 - a2 == 0x8000000000000000 && v129 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v129;
  v139 = a1;
  v138 = a4;
  if (v16 >= v15 / v129)
  {
    v18 = v15 / v129 * v129;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v134 = a2;
    v67 = a4 + v18;
    if (v18 >= 1)
    {
      v68 = -v129;
      v126 = (v9 + 16);
      ++v125;
      v124 = (v9 + 8);
      v69 = a4 + v18;
      v123 = a4;
      v133 = a1;
      v127 = -v129;
      while (2)
      {
        while (1)
        {
          v121[0] = v67;
          v70 = v134;
          v134 += v68;
          v128 = v70;
          while (1)
          {
            v71 = v135;
            if (v70 <= a1)
            {
              v139 = v70;
              v137 = v121[0];
              goto LABEL_59;
            }

            v122 = v67;
            v135 += v68;
            v72 = v69 + v68;
            v73 = *v126;
            v74 = v130;
            v75 = v136;
            v129 = v71;
            v73(v130, v72, v136);
            v76 = v131;
            v73(v131, v134, v75);
            sub_19A57286C();
            sub_19A57279C();
            v78 = v77;
            v80 = v79;
            v82 = v81;
            v84 = v83;
            v85 = *v125;
            v86 = v132;
            (*v125)(v8, v132);
            v144.origin.x = v78;
            v144.origin.y = v80;
            v144.size.width = v82;
            v144.size.height = v84;
            v87 = CGRectGetMidX(v144) + -0.5;
            sub_19A57286C();
            sub_19A57279C();
            v89 = v88;
            v91 = v90;
            v93 = v92;
            v95 = v94;
            v85(v8, v86);
            v145.origin.x = v89;
            v145.origin.y = v91;
            v145.size.width = v93;
            v145.size.height = v95;
            v96 = CGRectGetMidY(v145) + -0.5;
            sub_19A57286C();
            sub_19A57279C();
            v98 = v97;
            v100 = v99;
            v102 = v101;
            v104 = v103;
            v85(v8, v86);
            v146.origin.x = v98;
            v146.origin.y = v100;
            v146.size.width = v102;
            v146.size.height = v104;
            v105 = CGRectGetMidX(v146) + -0.5;
            sub_19A57286C();
            sub_19A57279C();
            v107 = v106;
            v109 = v108;
            v111 = v110;
            v113 = v112;
            v85(v8, v86);
            v147.origin.x = v107;
            v147.origin.y = v109;
            v147.size.width = v111;
            v147.size.height = v113;
            MidY = CGRectGetMidY(v147);
            v115 = v105 * v105 + (MidY + -0.5) * (MidY + -0.5);
            v116 = *v124;
            v117 = v76;
            v118 = v136;
            (*v124)(v117, v136);
            v116(v74, v118);
            if (v87 * v87 + v96 * v96 < v115)
            {
              break;
            }

            v67 = v72;
            v119 = v123;
            if (v129 < v69 || v135 >= v69)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v133;
              v68 = v127;
            }

            else
            {
              a1 = v133;
              v68 = v127;
              if (v129 != v69)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v69 = v72;
            v70 = v128;
            if (v72 <= v119)
            {
              v134 = v128;
              goto LABEL_58;
            }
          }

          v120 = v123;
          if (v129 < v128 || v135 >= v128)
          {
            break;
          }

          a1 = v133;
          v67 = v122;
          v68 = v127;
          if (v129 != v128)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v69 <= v120)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        a1 = v133;
        v67 = v122;
        v68 = v127;
        if (v69 > v120)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v139 = v134;
    v137 = v67;
  }

  else
  {
    v17 = v16 * v129;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v128 = a4 + v17;
    v137 = a4 + v17;
    if (v17 >= 1 && a2 < v135)
    {
      v126 = *(v9 + 16);
      ++v125;
      v127 = v9 + 16;
      v124 = (v9 + 8);
      do
      {
        v133 = a1;
        v134 = a2;
        v20 = v130;
        v21 = v136;
        v22 = v126;
        (v126)(v130, a2, v136);
        v23 = v131;
        v22(v131, a4, v21);
        sub_19A57286C();
        sub_19A57279C();
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v32 = *v125;
        v33 = a4;
        v34 = v132;
        (*v125)(v8, v132);
        v140.origin.x = v25;
        v140.origin.y = v27;
        v140.size.width = v29;
        v140.size.height = v31;
        v35 = CGRectGetMidX(v140) + -0.5;
        sub_19A57286C();
        sub_19A57279C();
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v32(v8, v34);
        v141.origin.x = v37;
        v141.origin.y = v39;
        v141.size.width = v41;
        v141.size.height = v43;
        v44 = CGRectGetMidY(v141) + -0.5;
        sub_19A57286C();
        sub_19A57279C();
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v32(v8, v34);
        v142.origin.x = v46;
        v142.origin.y = v48;
        v142.size.width = v50;
        v142.size.height = v52;
        v53 = CGRectGetMidX(v142) + -0.5;
        sub_19A57286C();
        sub_19A57279C();
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v32(v8, v34);
        v143.origin.x = v55;
        v143.origin.y = v57;
        v143.size.width = v59;
        v143.size.height = v61;
        v62 = CGRectGetMidY(v143);
        v63 = v53 * v53 + (v62 + -0.5) * (v62 + -0.5);
        v64 = *v124;
        (*v124)(v23, v21);
        v64(v20, v21);
        if (v35 * v35 + v44 * v44 >= v63)
        {
          v66 = v133;
          a2 = v134;
          v65 = v129;
          a4 = v33 + v129;
          if (v133 < v33 || v133 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v133 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v138 = a4;
        }

        else
        {
          v65 = v129;
          v66 = v133;
          a2 = v134 + v129;
          a4 = v33;
          if (v133 < v134 || v133 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v133 != v134)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v66 + v65;
        v139 = a1;
      }

      while (a4 < v128 && a2 < v135);
    }
  }

LABEL_59:
  sub_19A37629C(&v139, &v138, &v137);
  return 1;
}

unint64_t sub_19A352538()
{
  result = qword_1EAFA04F8;
  if (!qword_1EAFA04F8)
  {
    sub_19A5728DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA04F8);
  }

  return result;
}

VisualGeneration::ImageCheckerError::RejectionCategory_optional __swiftcall ImageCheckerError.RejectionCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_19A573C2C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ImageCheckerError.RejectionCategory.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0xD000000000000014;
    if (v1 != 2)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000011;
    if (!*v0)
    {
      v6 = 0xD000000000000017;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x75706E4965636166;
    if (v1 != 7)
    {
      v2 = 0x6669636570736E75;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000020;
    }

    v3 = 0xD00000000000001DLL;
    if (v1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_19A352744()
{
  sub_19A5740BC();
  sub_19A31C368();
  return sub_19A57410C();
}

uint64_t sub_19A352794()
{
  sub_19A5740BC();
  sub_19A31C368();
  return sub_19A57410C();
}

unint64_t sub_19A3527E4@<X0>(unint64_t *a1@<X8>)
{
  result = ImageCheckerError.RejectionCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t ImageCheckerError.errorDescription.getter()
{
  v1 = sub_19A570D4C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v35 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  v11 = *v0;
  v12 = *(v0 + 24);
  v13 = (v12 >> 27) & 3;
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v20 = *(v0 + 8);
      v21 = *(v0 + 16);
      v22 = v12 & 0xFFFFFFFFE7FFFFFFLL;
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      sub_19A57395C();
      v35[0] = v38;
      MEMORY[0x19A900A50](0xD00000000000002FLL, 0x800000019A596E70);
      if (v11 <= 3u)
      {
        v23 = 0x800000019A595530;
        v24 = 0xD000000000000014;
        if (v11 != 2)
        {
          v24 = 0xD000000000000012;
          v23 = 0x800000019A595550;
        }

        v25 = 0x800000019A5954F0;
        v26 = 0xD000000000000017;
        if (v11)
        {
          v26 = 0xD000000000000011;
          v25 = 0x800000019A595510;
        }

        v27 = v11 <= 1u;
      }

      else
      {
        v23 = 0xEE006567616D4974;
        v24 = 0x75706E4965636166;
        if (v11 != 7)
        {
          v24 = 0x6669636570736E75;
          v23 = 0xEB00000000646569;
        }

        if (v11 == 6)
        {
          v24 = 0xD000000000000020;
          v23 = 0x800000019A5955B0;
        }

        v25 = 0x800000019A595570;
        v26 = 0xD00000000000001DLL;
        if (v11 != 4)
        {
          v26 = 0xD000000000000012;
          v25 = 0x800000019A595590;
        }

        v27 = v11 <= 5u;
      }

      if (v27)
      {
        v31 = v26;
      }

      else
      {
        v31 = v24;
      }

      if (v27)
      {
        v32 = v25;
      }

      else
      {
        v32 = v23;
      }

      MEMORY[0x19A900A50](v31, v32);

      MEMORY[0x19A900A50](0x6E6F73616552202ELL, 0xEA0000000000203ALL);
      *&v38 = v20;
      *(&v38 + 1) = v21;
      v39 = v22;
      v33 = RejectionReason.description.getter();
      MEMORY[0x19A900A50](v33);

      return *&v35[0];
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (v13)
  {
    sub_19A570D2C();
    (*(v2 + 16))(v8, v5, v1);
    v14 = sub_19A572D8C();
    *&v38 = v14;
    *(&v38 + 1) = v28;
    v29 = sub_19A475CC8(v11);
    if (v30)
    {
      *&v35[0] = 8250;
      *(&v35[0] + 1) = 0xE200000000000000;
      MEMORY[0x19A900A50](v29);

      MEMORY[0x19A900A50](*&v35[0], *(&v35[0] + 1));

      v14 = v38;
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    sub_19A570D2C();
    (*(v2 + 16))(v8, v10, v1);
    v14 = sub_19A572D8C();
    v41 = v14;
    v42 = v15;
    v37 = v11;
    v16 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA26F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0500);
    if (swift_dynamicCast())
    {
      sub_19A2EA460(v35, &v38);
      __swift_project_boxed_opaque_existential_1(&v38, v40);
      v17 = sub_19A5709EC();
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_0Tm(&v38);
      if (v19)
      {
        *&v38 = 8250;
        *(&v38 + 1) = 0xE200000000000000;
        MEMORY[0x19A900A50](v17, v19);

        MEMORY[0x19A900A50](v38, *(&v38 + 1));

        v14 = v41;
      }
    }

    else
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      sub_19A2F3FA0(v35, &qword_1EAFA0508);
    }

    (*(v2 + 8))(v10, v1);
  }

  return v14;
}

BOOL sub_19A352D74(void *a1, uint64_t *a2)
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

void *sub_19A352DA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_19A352DD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_19A352E94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_19A4D775C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_19A352ED4@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = a1[1];
    v31 = *a1;
    v32 = v3;
    v5 = a1[3];
    v33 = a1[2];
    v4 = v33;
    v34 = v5;
    *a2 = v31;
    a2[1] = v3;
    a2[2] = v4;
    a2[3] = v5;
  }

  else
  {
    v6 = *(a1 + 1);
    if (v6 & 1 | *(a1 + 6))
    {
      v8 = a2;
      v9 = [objc_allocWithZone(MEMORY[0x1E69CA738]) init];
      v10 = v9;
      if ((v6 & 2) != 0)
      {
        v11 = 5;
      }

      else
      {
        v11 = 2;
      }

      [v9 setMode_];
      [v10 setGranularity_];
      [v10 setRegion_];
      v12 = sub_19A572CCC();
      [v10 setModelManagerServicesUseCaseID_];

      if ((*(a1 + 44) & 1) == 0)
      {
        [v10 setOnBehalfOfProcessID_];
      }

      v13 = objc_allocWithZone(MEMORY[0x1E69CA730]);
      *&v31 = 0;
      v14 = v10;
      v7 = [v13 initWithConfiguration:v14 error:&v31];
      v15 = v31;
      if (v7)
      {
      }

      else
      {
        v16 = v15;
        v17 = sub_19A570D1C();

        swift_willThrow();
        if (qword_1ED824050 != -1)
        {
          swift_once();
        }

        v18 = sub_19A5723FC();
        __swift_project_value_buffer(v18, qword_1ED82BCF0);
        v19 = v17;
        v20 = sub_19A5723DC();
        v21 = sub_19A57355C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 138412290;
          v24 = v17;
          v25 = _swift_stdlib_bridgeErrorToNSError();
          *(v22 + 4) = v25;
          *v23 = v25;
          _os_log_impl(&dword_19A2DE000, v20, v21, "Unexpected error initializing image sanitization: %@", v22, 0xCu);
          sub_19A2F3FA0(v23, &qword_1EAF9FD28);
          MEMORY[0x19A902C50](v23, -1, -1);
          MEMORY[0x19A902C50](v22, -1, -1);
        }

        else
        {
        }

        v7 = 0;
      }

      a2 = v8;
    }

    else
    {
      v7 = 0;
    }

    *a1 = v7;
    v26 = a1[3];
    v33 = a1[2];
    v34 = v26;
    v27 = a1[1];
    v31 = *a1;
    v28 = v31;
    v32 = v27;
    a2[2] = v33;
    a2[3] = v26;
    *a2 = v28;
    a2[1] = v27;
  }

  return sub_19A355604(&v31, &v30);
}

void sub_19A353208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  if ((a2 == 0) != (v3 == 0))
  {
    sub_19A2E0A50(a2);
    sub_19A2E0A60(v3);
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;

    *a1 = 0;
  }
}

uint64_t sub_19A353290(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 24) != a2 || *(result + 32) != a3)
  {
    v6 = result;
    result = sub_19A573F1C();
    if ((result & 1) == 0)
    {

      *v6 = 0;

      *(v6 + 24) = a2;
      *(v6 + 32) = a3;
    }
  }

  return result;
}

uint64_t sub_19A353318(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 92) = a3;
  *(v9 + 96) = a1;
  *(v9 + 104) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0518);
  *(v9 + 112) = swift_task_alloc();
  v14 = sub_19A571FCC();
  *(v9 + 120) = v14;
  *(v9 + 128) = *(v14 - 8);
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  v15 = *a2;
  v16 = *(a2 + 8);
  *(v9 + 152) = *v20;
  *(v9 + 80) = v15;
  *(v9 + 88) = v16;
  v17 = swift_task_alloc();
  *(v9 + 168) = v17;
  *v17 = v9;
  v17[1] = sub_19A3534A8;

  return sub_19A353D4C(v9 + 80, a3, a4, a8);
}

uint64_t sub_19A3534A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_19A353CCC;
  }

  else
  {
    v4 = sub_19A3535BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_19A3535BC()
{
  v54 = v0;
  v1 = *(v0 + 176);
  if (!v1)
  {
    v7 = 3;
LABEL_35:
    **(v0 + 96) = v7;

    v41 = *(v0 + 8);
    goto LABEL_49;
  }

  v2 = *(*(v0 + 104) + 16);
  os_unfair_lock_lock((v2 + 80));
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3555A0;
  }

  else
  {
    v6 = 0;
  }

  sub_19A2E0A50(v3);
  os_unfair_lock_unlock((v2 + 80));
  if (v3)
  {
    if (*(v0 + 160))
    {
      sub_19A2E0A50(v6);

      v8 = [v1 signals];
      if (v8)
      {
        v9 = v8;
        v53[0] = 0;
        sub_19A355554();
        sub_19A572AEC();

        sub_19A2E0A60(v6);
        sub_19A2E0A60(v6);

        goto LABEL_12;
      }

      sub_19A2E0A60(v6);
    }

    sub_19A2E0A60(v6);
  }

LABEL_12:
  v10 = *(v0 + 92);
  os_unfair_lock_lock((v2 + 80));
  v11 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  sub_19A354CA4(v11, v10, v53);
  v12 = LOBYTE(v53[0]);
  os_unfair_lock_lock((v2 + 80));
  v13 = *(v2 + 24);
  os_unfair_lock_unlock((v2 + 80));
  if (v13 & 1) == 0 || ([v1 safe])
  {
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);
    v16 = *(v0 + 112);
    sub_19A57368C();
    if ((*(v15 + 48))(v16, 1, v14) == 1)
    {
      v17 = *(v0 + 112);

      sub_19A2F3FA0(v17, &qword_1EAFA0518);
      v7 = 3;
    }

    else
    {
      v19 = *(v0 + 136);
      v18 = *(v0 + 144);
      v20 = *(v0 + 120);
      v21 = *(v0 + 128);
      (*(v21 + 32))(v18, *(v0 + 112), v20);
      (*(v21 + 16))(v19, v18, v20);
      v22 = sub_19A571FAC();
      v23 = *(v0 + 136);
      v24 = *(v0 + 144);
      v25 = *(v0 + 120);
      v26 = *(v0 + 128);
      if (v22)
      {

        v27 = *(v26 + 8);
        v27(v23, v25);
        v27(v24, v25);
        v7 = 2;
      }

      else
      {
        v39 = sub_19A571FBC();

        v40 = *(v26 + 8);
        v40(v23, v25);
        v40(v24, v25);
        v7 = v39 & 1;
      }
    }

    goto LABEL_35;
  }

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v28 = sub_19A5723FC();
  __swift_project_value_buffer(v28, qword_1ED82BCF0);
  v29 = sub_19A5723DC();
  v30 = sub_19A57353C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53[0] = v32;
    *v31 = 136315138;
    if (v12 <= 3)
    {
      v42 = 0x800000019A595530;
      v43 = 0xD000000000000014;
      if (v12 != 2)
      {
        v43 = 0xD000000000000012;
        v42 = 0x800000019A595550;
      }

      v44 = 0x800000019A5954F0;
      v45 = 0xD000000000000011;
      if (v12)
      {
        v44 = 0x800000019A595510;
      }

      else
      {
        v45 = 0xD000000000000017;
      }

      if (v12 <= 1)
      {
        v37 = v45;
      }

      else
      {
        v37 = v43;
      }

      if (v12 <= 1)
      {
        v38 = v44;
      }

      else
      {
        v38 = v42;
      }
    }

    else
    {
      v33 = 0xEE006567616D4974;
      v34 = 0x75706E4965636166;
      if (v12 != 7)
      {
        v34 = 0x6669636570736E75;
        v33 = 0xEB00000000646569;
      }

      if (v12 == 6)
      {
        v34 = 0xD000000000000020;
        v33 = 0x800000019A5955B0;
      }

      v35 = 0x800000019A595570;
      v36 = 0xD00000000000001DLL;
      if (v12 != 4)
      {
        v36 = 0xD000000000000012;
        v35 = 0x800000019A595590;
      }

      if (v12 <= 5)
      {
        v37 = v36;
      }

      else
      {
        v37 = v34;
      }

      if (v12 <= 5)
      {
        v38 = v35;
      }

      else
      {
        v38 = v33;
      }
    }

    v46 = sub_19A31F114(v37, v38, v53);

    *(v31 + 4) = v46;
    _os_log_impl(&dword_19A2DE000, v29, v30, "An image was rejected by the image checker. Rejection category: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x19A902C50](v32, -1, -1);
    MEMORY[0x19A902C50](v31, -1, -1);
  }

  v47 = v1;
  sub_19A43A488(v47, v53);
  v48 = v53[0];
  v49 = v53[1];
  v50 = v53[2] | 0x10000000;
  sub_19A355134();
  swift_allocError();
  *v51 = v12;
  v51[1] = v48;
  v51[2] = v49;
  v51[3] = v50;
  swift_willThrow();

  v41 = *(v0 + 8);
LABEL_49:

  return v41();
}