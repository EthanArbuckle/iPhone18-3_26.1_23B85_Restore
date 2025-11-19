uint64_t sub_1AF3E805C(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unint64_t *a11)
{
  v328 = a8;
  v327 = a7;
  v321 = a6;
  v324 = a5;
  v326 = a3;
  v314 = a1;
  v342[6] = *MEMORY[0x1E69E9840];
  v318 = sub_1AFDFC318();
  v13 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318, v14);
  v305 = &v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v304 = &v278 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v287 = &v278 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v286 = &v278 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v300 = &v278 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v299 = &v278 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v289 = &v278 - v33;
  v36 = MEMORY[0x1EEE9AC00](v34, v35);
  v288 = &v278 - v37;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v342, v36);
    v38 = v342[0];
    v39 = v342[1];
    v40 = v342[2];
    v41 = v342[3];
    v42 = v342[4];
    v43 = v342[5];
  }

  v292 = v39;
  v294 = v43;
  v295 = v42;
  v296 = v41;
  v297 = v40;
  v44 = sub_1AF97228C();
  v45 = *(v44 + 16);
  v293 = v44;
  if (!v45)
  {
    v49 = v38;
LABEL_208:

    v274 = v49;
    return sub_1AF441284(v274);
  }

  v46 = 0;
  v47 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v323 = v44 + 32;
  v322 = a10;
  v329 = a2;
  v48 = a9;
  v49 = v38;
  v298 = v38 + 32;
  v306 = a11;
  v309 = (v13 + 16);
  v308 = v13 + 8;
  v285 = v13;
  v307 = v13 + 32;
  v313 = v326 & 1;
  v320 = v314 & 1;
  v50 = v321;
  v291 = v45;
  v303 = v47;
  v312 = a9;
  v319 = v49;
  while (1)
  {
    v51 = *(v323 + 16 * v46);
    if (!v51)
    {
      goto LABEL_7;
    }

    if (v49 && v46 < *(v49 + 16))
    {
      v52 = *(v298 + 8 * v46);
      sub_1AF4410A8(v52);
    }

    else
    {
      v52 = 0xA000000000000000;
    }

    if (v47)
    {
      if (v47 == 1)
      {
        v53 = sub_1AF9C5694(v52, v329 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v52);
        if (v53)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v52);
      }
    }

    else
    {
      v54 = sub_1AF9C5694(v52, v329);
      sub_1AF441114(v52);
      if (!v54)
      {
        goto LABEL_5;
      }
    }

    if (*(*v322 + 16) && (sub_1AF0D3F10(v51), (v55 & 1) != 0) || *(*v48 + 16) && (sub_1AF0D3F10(v51), (v56 & 1) != 0))
    {
LABEL_5:

      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v337 = *v48;
    v58 = v337;
    *v48 = 0x8000000000000000;
    v59 = sub_1AF0D3F10(v51);
    v61 = v60;
    v62 = *(v58 + 16) + ((v60 & 1) == 0);
    v63 = v324;
    if (*(v58 + 24) < v62)
    {
      sub_1AF82BC4C(v62, isUniquelyReferenced_nonNull_native);
      v59 = sub_1AF0D3F10(v51);
      if ((v61 & 1) != (v64 & 1))
      {
        goto LABEL_224;
      }

LABEL_28:
      v65 = v337;
      if (v61)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v66 = v59;
    sub_1AF843F7C();
    v59 = v66;
    v65 = v337;
    if (v61)
    {
LABEL_29:
      *(v65[7] + v59) = 1;
      goto LABEL_32;
    }

LABEL_31:
    v65[(v59 >> 6) + 8] |= 1 << v59;
    *(v65[6] + 8 * v59) = v51;
    *(v65[7] + v59) = 1;
    ++v65[2];
LABEL_32:
    *v48 = v65;

    v317 = v51;
    v316 = v46;
    if ((v314 & 1) == 0)
    {

      goto LABEL_116;
    }

    v67 = sub_1AF96D010(v51);
    if (v67)
    {
      v311 = v67;
      v68 = *v309;
      v69 = v288;
      v70 = v318;
      (*v309)(v288, v51 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v318);
      v283 = v68;
      v68(v289, v69, v70);

      v71 = swift_isUniquelyReferenced_nonNull_native();
      v72 = v50;
      if ((v71 & 1) == 0)
      {
        v72 = sub_1AF4276E0(0, v50[2] + 1, 1, v50, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v74 = v72[2];
      v73 = v72[3];
      if (v74 >= v73 >> 1)
      {
        v315 = sub_1AF4276E0(v73 > 1, v74 + 1, 1, v72, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      else
      {
        v315 = v72;
      }

      v75 = v285;
      v76 = v318;
      v282 = *(v285 + 8);
      v282(v288, v318);
      v77 = v315;
      *(v315 + 2) = v74 + 1;
      v281 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v280 = *(v75 + 72);
      v279 = *(v75 + 32);
      v279(&v77[v281 + v280 * v74], v289, v76);
      v78 = MEMORY[0x1E69E7CC0];
      v335 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      v336 = v79;
      v80 = v311;
      v81 = *(v311 + 24);
      v82 = sub_1AF0D4098(v78, sub_1AF44034C, sub_1AF0D3F10);
      v333 = v78;
      v334 = v82;
      v278 = v80 + 24;
      if (v81 >> 62)
      {
        v83 = sub_1AFDFE108();
      }

      else
      {
        v83 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_bridgeObjectRetain_n();

      sub_1AF4410E4(v329, sub_1AF4410A8);

      v63 = v324;
      if (v83)
      {
        v84 = 0;
        v302 = (v81 & 0xC000000000000001);
        v301 = (v81 + 32);
        v284 = v81;
        v290 = v83;
        while (1)
        {
          v310 = v84;
          if (v302)
          {
            v325 = MEMORY[0x1B2719C70](v84, v81);
          }

          else
          {
            v325 = *(v301 + v84);
          }

          if (!*(v335 + 16) || (sub_1AF0D3F10(v325), (v86 & 1) == 0))
          {
            if (!*(v334 + 16))
            {
              break;
            }

            sub_1AF0D3F10(v325);
            if ((v87 & 1) == 0)
            {
              break;
            }
          }

          v85 = v310;
LABEL_43:
          v84 = v85 + 1;

          if (v84 == v290)
          {
            goto LABEL_109;
          }
        }

        v88 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v334;
        *&v337 = v334;
        v334 = 0x8000000000000000;
        v90 = v325;
        v91 = sub_1AF0D3F10(v325);
        v93 = v92;
        v94 = *(v89 + 16) + ((v92 & 1) == 0);
        if (*(v89 + 24) >= v94)
        {
          if ((v88 & 1) == 0)
          {
            v140 = v91;
            sub_1AF843F7C();
            v91 = v140;
          }
        }

        else
        {
          sub_1AF82BC4C(v94, v88);
          v91 = sub_1AF0D3F10(v90);
          if ((v93 & 1) != (v95 & 1))
          {
            goto LABEL_224;
          }
        }

        v96 = v311;
        v97 = v337;
        if (v93)
        {
          *(*(v337 + 56) + v91) = 1;
        }

        else
        {
          *(v337 + 8 * (v91 >> 6) + 64) |= 1 << v91;
          *(v97[6] + 8 * v91) = v90;
          *(v97[7] + v91) = 1;
          ++v97[2];
        }

        v334 = v97;

        v98 = sub_1AF96D010(v90);
        v99 = v315;
        if (v98)
        {
          v100 = v98;
          v101 = v299;
          v102 = v318;
          v103 = v283;
          v283(v299, v90 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v318);
          v103(v300, v101, v102);

          v104 = v99;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1AF4276E0(0, *(v99 + 2) + 1, 1, v99, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v106 = *(v104 + 2);
          v105 = *(v104 + 3);
          if (v106 >= v105 >> 1)
          {
            v104 = sub_1AF4276E0(v105 > 1, v106 + 1, 1, v104, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v107 = v318;
          v282(v299, v318);
          *(v104 + 2) = v106 + 1;
          v279(&v104[v281 + v106 * v280], v300, v107);
          v108 = MEMORY[0x1E69E7CC0];
          *&v337 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v337 + 1) = v109;
          v110 = *(v100 + 24);
          v111 = sub_1AF0D4098(v108, sub_1AF44034C, sub_1AF0D3F10);
          v331 = v108;
          v332 = v111;
          if (v110 >> 62)
          {
            v112 = sub_1AFDFE108();
          }

          else
          {
            v112 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v329, sub_1AF4410A8);

          if (v112)
          {
            v113 = 0;
            while (1)
            {
              if ((v110 & 0xC000000000000001) != 0)
              {
                v114 = MEMORY[0x1B2719C70](v113, v110);
              }

              else
              {
                v114 = *(v110 + 8 * v113 + 32);
              }

              v115 = v330;
              sub_1AF418138(v114, v100, 1, v329, v326 & 1, v104, v327, v328, &v332, &v337, &v331);
              v330 = v115;
              if (v115)
              {
                break;
              }

              if (v112 == ++v113)
              {
                goto LABEL_73;
              }
            }

            v275 = v329;
            sub_1AF4410E4(v329, sub_1AF441114);

LABEL_210:
            sub_1AF4410E4(v275, sub_1AF441114);

            v274 = v319;
            return sub_1AF441284(v274);
          }

LABEL_73:

          sub_1AF4410E4(v329, sub_1AF441114);

          if (v331 >> 62)
          {
            v116 = sub_1AFDFE108();
          }

          else
          {
            v116 = *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v51 = v317;
          v46 = v316;
          v99 = v315;
          if (v116)
          {

            sub_1AF48F6CC(v117);
          }

          v96 = v311;
          v90 = v325;
        }

        else
        {
        }

        v118 = v330;
        sub_1AF3E805C(1, v329, v326 & 1, v90, v96, v99, v327, v328, &v334, &v335, &v333);
        v330 = v118;
        if (v118)
        {

LABEL_221:
          v275 = v329;
          goto LABEL_210;
        }

        type metadata accessor for Node();
        type metadata accessor for AuthoringNode();
        if (swift_dynamicCastMetatype())
        {
          v119 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v121 = v330;
          v122 = sub_1AF3D6B1C(v120, &v334, &v335, sub_1AF3FCC84);
          v330 = v121;

          *(v90 + v119) = v122;
        }

        v123 = swift_allocObject();
        v124 = v327;
        v125 = v328;
        *(v123 + 16) = v327;
        *(v123 + 24) = v125;
        v126 = v311;

        v127 = v329;
        sub_1AF4410E4(v329, sub_1AF4410A8);

        v128 = swift_allocObject();
        *(v128 + 16) = 1;
        *(v128 + 24) = v127;
        *(v128 + 32) = v313;
        *(v128 + 40) = &v335;
        *(v128 + 48) = v126;
        v129 = v315;
        *(v128 + 56) = v315;
        *(v128 + 64) = v124;
        *(v128 + 72) = v125;
        *(v128 + 80) = &v334;
        *(v128 + 88) = &v333;
        v130 = swift_allocObject();
        *(v130 + 16) = sub_1AF449D4C;
        *(v130 + 24) = v128;
        *&v337 = v126;
        *(&v337 + 1) = v90;
        v338 = v129;
        v339 = sub_1AF449D50;
        v340 = v130;
        v341 = &v333;
        swift_bridgeObjectRetain_n();

        v131 = v330;
        sub_1AF449CCC(&v337);
        v330 = v131;
        if (v131)
        {

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          goto LABEL_221;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v132 = swift_isUniquelyReferenced_nonNull_native();
        v133 = v335;
        *&v337 = v335;
        v134 = sub_1AF0D3F10(v90);
        v136 = v135;
        v137 = *(v133 + 16) + ((v135 & 1) == 0);
        if (*(v133 + 24) >= v137)
        {
          v63 = v324;
          v50 = v321;
          v48 = v312;
          if (v132)
          {
            goto LABEL_87;
          }

          v141 = v134;
          sub_1AF843E24();
          v134 = v141;
          if ((v136 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_88:
          v335 = v337;
          v139 = v325;
        }

        else
        {
          sub_1AF82BA00(v137, v132);
          v134 = sub_1AF0D3F10(v90);
          v63 = v324;
          v50 = v321;
          v48 = v312;
          if ((v136 & 1) != (v138 & 1))
          {
            goto LABEL_224;
          }

LABEL_87:
          if (v136)
          {
            goto LABEL_88;
          }

LABEL_93:
          v142 = v337;
          *(v337 + 8 * (v134 >> 6) + 64) |= 1 << v134;
          *(*(v142 + 48) + 8 * v134) = v325;
          ++*(v142 + 16);
          v335 = v142;
          v143 = v336;
          v144 = swift_isUniquelyReferenced_nonNull_native();
          v336 = v143;
          if ((v144 & 1) == 0)
          {
            v143 = sub_1AF422330(0, *(v143 + 2) + 1, 1, v143, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v336 = v143;
          }

          v146 = *(v143 + 2);
          v145 = *(v143 + 3);
          if (v146 >= v145 >> 1)
          {
            v143 = sub_1AF422330(v145 > 1, v146 + 1, 1, v143, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          *(v143 + 2) = v146 + 1;
          v139 = v325;
          *&v143[8 * v146 + 32] = v325;
          v336 = v143;
        }

        v147 = swift_isUniquelyReferenced_nonNull_native();
        v148 = v334;
        *&v337 = v334;
        v334 = 0x8000000000000000;
        v149 = sub_1AF0D3F10(v139);
        v151 = v150;
        v152 = *(v148 + 16) + ((v150 & 1) == 0);
        if (*(v148 + 24) >= v152)
        {
          v85 = v310;
          if ((v147 & 1) == 0)
          {
            v155 = v310;
            v156 = v149;
            sub_1AF843F7C();
            v85 = v155;
            v149 = v156;
          }

          v154 = v337;
          if ((v151 & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          sub_1AF82BC4C(v152, v147);
          v149 = sub_1AF0D3F10(v139);
          if ((v151 & 1) != (v153 & 1))
          {
            goto LABEL_224;
          }

          v85 = v310;
          v154 = v337;
          if ((v151 & 1) == 0)
          {
LABEL_101:
            v154[(v149 >> 6) + 8] |= 1 << v149;
            *(v154[6] + 8 * v149) = v325;
            *(v154[7] + v149) = 0;
            ++v154[2];
LABEL_106:
            v334 = v154;

            v81 = v284;
            goto LABEL_43;
          }
        }

        *(v154[7] + v149) = 0;
        goto LABEL_106;
      }

LABEL_109:

      sub_1AF4410E4(v329, sub_1AF441114);

      if (v333 >> 62)
      {
        if (!sub_1AFDFE108())
        {
          goto LABEL_112;
        }
      }

      else if (!*((v333 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_112:

        goto LABEL_113;
      }

      sub_1AF48F6CC(v157);
      goto LABEL_112;
    }

LABEL_113:
    v158 = v330;
    sub_1AF3E805C(1, v329, v326 & 1, v51, v63, v50, v327, v328, v48, v322, v306);
    v159 = v319;
    v330 = v158;
    if (v158)
    {

      v274 = v159;
      return sub_1AF441284(v274);
    }

    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    if (swift_dynamicCastMetatype())
    {
      v160 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v162 = v330;
      v163 = sub_1AF3D6B1C(v161, v48, v322, sub_1AF3FCC84);
      v330 = v162;

      *(v51 + v160) = v163;
    }

LABEL_116:
    v164 = swift_allocObject();
    v165 = v327;
    v166 = v328;
    *(v164 + 16) = v327;
    *(v164 + 24) = v166;
    v167 = v324;

    v168 = v329;
    sub_1AF4410E4(v329, sub_1AF4410A8);

    v169 = swift_allocObject();
    *(v169 + 16) = v320;
    *(v169 + 24) = v168;
    *(v169 + 32) = v313;
    *(v169 + 40) = v322;
    *(v169 + 48) = v167;
    v170 = v321;
    *(v169 + 56) = v321;
    *(v169 + 64) = v165;
    v171 = v312;
    *(v169 + 72) = v166;
    *(v169 + 80) = v171;
    v172 = v306;
    *(v169 + 88) = v306;
    v173 = swift_allocObject();
    *(v173 + 16) = sub_1AF449D4C;
    *(v173 + 24) = v169;
    *&v337 = v167;
    *(&v337 + 1) = v51;
    v50 = v170;
    v338 = v170;
    v339 = sub_1AF449D50;
    v340 = v173;
    v341 = v172;
    swift_bridgeObjectRetain_n();

    v174 = v330;
    sub_1AF449CCC(&v337);
    v330 = v174;
    if (v174)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_216;
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v175 = sub_1AF633A88(v51);
    v45 = v291;
    v48 = v312;
    if (v175)
    {
      v176 = v322;
      v177 = v322[1];
      v178 = swift_isUniquelyReferenced_nonNull_native();
      v176[1] = v177;
      if ((v178 & 1) == 0)
      {
        v177 = sub_1AF422330(0, *(v177 + 2) + 1, 1, v177, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v176[1] = v177;
      }

      v180 = *(v177 + 2);
      v179 = *(v177 + 3);
      if (v180 >= v179 >> 1)
      {
        v177 = sub_1AF422330(v179 > 1, v180 + 1, 1, v177, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v322[1] = v177;
      }

      *(v177 + 2) = v180 + 1;
      *&v177[8 * v180 + 32] = v51;
    }

    v181 = swift_isUniquelyReferenced_nonNull_native();
    *&v337 = *v48;
    v182 = v337;
    *v48 = 0x8000000000000000;
    v183 = sub_1AF0D3F10(v51);
    v185 = v184;
    v186 = *(v182 + 16) + ((v184 & 1) == 0);
    if (*(v182 + 24) >= v186)
    {
      if ((v181 & 1) == 0)
      {
        v273 = v183;
        sub_1AF843F7C();
        v183 = v273;
      }
    }

    else
    {
      sub_1AF82BC4C(v186, v181);
      v183 = sub_1AF0D3F10(v51);
      if ((v185 & 1) != (v187 & 1))
      {
LABEL_224:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v47 = v303;
    v188 = v337;
    if (v185)
    {
      *(*(v337 + 56) + v183) = 0;
    }

    else
    {
      *(v337 + 8 * (v183 >> 6) + 64) |= 1 << v183;
      *(v188[6] + 8 * v183) = v51;
      *(v188[7] + v183) = 0;
      ++v188[2];
    }

    *v48 = v188;

    if (v314)
    {
LABEL_199:

      goto LABEL_6;
    }

    v189 = v330;
    sub_1AF3E805C(v320, v329, v326 & 1, v51, v324, v170, v327, v328, v48, v322, v306);
    v330 = v189;
    if (v189)
    {

      goto LABEL_217;
    }

    v325 = sub_1AF96D010(v51);
    if (!v325)
    {
      goto LABEL_197;
    }

    v190 = *v309;
    v191 = v286;
    v192 = v318;
    (*v309)(v286, v51 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v318);
    v302 = v190;
    v190(v287, v191, v192);

    v193 = swift_isUniquelyReferenced_nonNull_native();
    v194 = v50;
    if ((v193 & 1) == 0)
    {
      v194 = sub_1AF4276E0(0, v50[2] + 1, 1, v50, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v196 = v194[2];
    v195 = v194[3];
    v197 = v329;
    v315 = (v196 >= v195 >> 1 ? sub_1AF4276E0(v195 > 1, v196 + 1, 1, v194, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]) : v194);
    v198 = v285;
    v199 = v318;
    v301 = *(v285 + 8);
    v301(v286, v318);
    v200 = v315;
    *(v315 + 2) = v196 + 1;
    v290 = (*(v198 + 80) + 32) & ~*(v198 + 80);
    v284 = *(v198 + 72);
    v283 = *(v198 + 32);
    v283(&v200[v290 + v284 * v196], v287, v199);
    v201 = MEMORY[0x1E69E7CC0];
    v335 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v336 = v202;
    v203 = *(v325 + 24);
    v282 = (v325 + 24);
    v204 = sub_1AF0D4098(v201, sub_1AF44034C, sub_1AF0D3F10);
    v333 = v201;
    v334 = v204;
    v205 = v203 >> 62 ? sub_1AFDFE108() : *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);

    sub_1AF4410E4(v197, sub_1AF4410A8);

    v46 = v316;
    if (v205)
    {
      break;
    }

LABEL_192:

    sub_1AF4410E4(v329, sub_1AF441114);

    if (v333 >> 62)
    {
      v267 = sub_1AFDFE108();
    }

    else
    {
      v267 = *((v333 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v312;
    if (v267)
    {

      sub_1AF48F6CC(v268);
    }

    v45 = v291;
    v47 = v303;
LABEL_197:
    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_199;
    }

    v269 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v271 = v330;
    v272 = sub_1AF3D6B1C(v270, v48, v322, sub_1AF3FCC84);
    v330 = v271;

    *(v51 + v269) = v272;
    v47 = v303;

LABEL_6:
    v49 = v319;
LABEL_7:
    if (++v46 == v45)
    {
      goto LABEL_208;
    }
  }

  v206 = v205;
  v207 = 0;
  v311 = v203 & 0xC000000000000001;
  v310 = v205;
  while (1)
  {
    if (v311)
    {
      v208 = MEMORY[0x1B2719C70](v207, v203);
    }

    else
    {
      v208 = *(v203 + 8 * v207 + 32);
    }

    if (!*(v335 + 16) || (sub_1AF0D3F10(v208), (v209 & 1) == 0))
    {
      if (!*(v334 + 16))
      {
        break;
      }

      sub_1AF0D3F10(v208);
      if ((v210 & 1) == 0)
      {
        break;
      }
    }

LABEL_143:
    ++v207;
    v50 = v321;
    if (v206 == v207)
    {
      goto LABEL_192;
    }
  }

  v211 = swift_isUniquelyReferenced_nonNull_native();
  v212 = v334;
  *&v337 = v334;
  v334 = 0x8000000000000000;
  v213 = sub_1AF0D3F10(v208);
  v215 = v214;
  v216 = *(v212 + 16) + ((v214 & 1) == 0);
  if (*(v212 + 24) >= v216)
  {
    if (v211)
    {
      goto LABEL_154;
    }

    v219 = v213;
    sub_1AF843F7C();
    v213 = v219;
    v218 = v337;
    if ((v215 & 1) == 0)
    {
      goto LABEL_158;
    }

LABEL_155:
    *(v218[7] + v213) = 1;
  }

  else
  {
    sub_1AF82BC4C(v216, v211);
    v213 = sub_1AF0D3F10(v208);
    if ((v215 & 1) != (v217 & 1))
    {
      goto LABEL_224;
    }

LABEL_154:
    v218 = v337;
    if (v215)
    {
      goto LABEL_155;
    }

LABEL_158:
    v218[(v213 >> 6) + 8] |= 1 << v213;
    *(v218[6] + 8 * v213) = v208;
    *(v218[7] + v213) = 1;
    ++v218[2];
  }

  v334 = v218;

  v220 = swift_allocObject();
  v221 = v327;
  v222 = v328;
  *(v220 + 16) = v327;
  *(v220 + 24) = v222;
  v223 = v325;

  v224 = v329;
  sub_1AF4410E4(v329, sub_1AF4410A8);

  v225 = swift_allocObject();
  *(v225 + 16) = v320;
  *(v225 + 24) = v224;
  *(v225 + 32) = v313;
  *(v225 + 40) = &v335;
  *(v225 + 48) = v223;
  v226 = v315;
  *(v225 + 56) = v315;
  *(v225 + 64) = v221;
  *(v225 + 72) = v222;
  *(v225 + 80) = &v334;
  *(v225 + 88) = &v333;
  v227 = swift_allocObject();
  *(v227 + 16) = sub_1AF449D4C;
  *(v227 + 24) = v225;
  *&v337 = v223;
  *(&v337 + 1) = v208;
  v338 = v226;
  v339 = sub_1AF449D50;
  v340 = v227;
  v341 = &v333;
  swift_bridgeObjectRetain_n();

  v228 = v330;
  sub_1AF449CCC(&v337);
  v330 = v228;
  if (v228)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v276 = v329;
    goto LABEL_215;
  }

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v229 = swift_isUniquelyReferenced_nonNull_native();
  v230 = v335;
  *&v337 = v335;
  v231 = sub_1AF0D3F10(v208);
  v233 = v232;
  v234 = *(v230 + 16) + ((v232 & 1) == 0);
  if (*(v230 + 24) >= v234)
  {
    v46 = v316;
    if (v229)
    {
      goto LABEL_164;
    }

    v236 = v231;
    sub_1AF843E24();
    v231 = v236;
    if ((v233 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_165:
    v335 = v337;
  }

  else
  {
    sub_1AF82BA00(v234, v229);
    v231 = sub_1AF0D3F10(v208);
    v46 = v316;
    if ((v233 & 1) != (v235 & 1))
    {
      goto LABEL_224;
    }

LABEL_164:
    if (v233)
    {
      goto LABEL_165;
    }

LABEL_167:
    v237 = v337;
    *(v337 + 8 * (v231 >> 6) + 64) |= 1 << v231;
    *(*(v237 + 48) + 8 * v231) = v208;
    ++*(v237 + 16);
    v335 = v237;
    v238 = v336;
    v239 = swift_isUniquelyReferenced_nonNull_native();
    v336 = v238;
    if ((v239 & 1) == 0)
    {
      v238 = sub_1AF422330(0, *(v238 + 2) + 1, 1, v238, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v336 = v238;
    }

    v241 = *(v238 + 2);
    v240 = *(v238 + 3);
    if (v241 >= v240 >> 1)
    {
      v238 = sub_1AF422330(v240 > 1, v241 + 1, 1, v238, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    *(v238 + 2) = v241 + 1;
    *&v238[8 * v241 + 32] = v208;
    v336 = v238;
  }

  v242 = swift_isUniquelyReferenced_nonNull_native();
  v243 = v334;
  *&v337 = v334;
  v334 = 0x8000000000000000;
  v244 = sub_1AF0D3F10(v208);
  v246 = v245;
  v247 = *(v243 + 16) + ((v245 & 1) == 0);
  if (*(v243 + 24) >= v247)
  {
    if ((v242 & 1) == 0)
    {
      v266 = v244;
      sub_1AF843F7C();
      v244 = v266;
    }
  }

  else
  {
    sub_1AF82BC4C(v247, v242);
    v244 = sub_1AF0D3F10(v208);
    if ((v246 & 1) != (v248 & 1))
    {
      goto LABEL_224;
    }
  }

  v249 = v337;
  if (v246)
  {
    *(*(v337 + 56) + v244) = 0;
  }

  else
  {
    *(v337 + 8 * (v244 >> 6) + 64) |= 1 << v244;
    *(v249[6] + 8 * v244) = v208;
    *(v249[7] + v244) = 0;
    ++v249[2];
  }

  v334 = v249;

  v250 = v330;
  sub_1AF3E805C(v320, v329, v326 & 1, v208, v325, v226, v327, v328, &v334, &v335, &v333);
  v330 = v250;
  if (v250)
  {

    v276 = v329;
    goto LABEL_215;
  }

  if (!sub_1AF96D010(v208))
  {
LABEL_188:
    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    if (swift_dynamicCastMetatype())
    {
      v262 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v264 = v330;
      v265 = sub_1AF3D6B1C(v263, &v334, &v335, sub_1AF3FCC84);
      v330 = v264;

      *(v208 + v262) = v265;
    }

    else
    {
    }

    v51 = v317;
    v206 = v310;
    goto LABEL_143;
  }

  v251 = v304;
  v252 = v318;
  v253 = v302;
  v302(v304, v208 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v318);
  v254 = v251;
  v255 = v315;
  v253(v305, v254, v252);

  v256 = v255;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v256 = sub_1AF4276E0(0, *(v255 + 2) + 1, 1, v255, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v258 = *(v256 + 2);
  v257 = *(v256 + 3);
  if (v258 >= v257 >> 1)
  {
    v256 = sub_1AF4276E0(v257 > 1, v258 + 1, 1, v256, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v259 = v318;
  v301(v304, v318);
  *(v256 + 2) = v258 + 1;
  v283(&v256[v290 + v258 * v284], v305, v259);
  *&v337 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v337 + 1) = v260;
  v261 = v330;
  sub_1AF412AA8(v327, v328, v320, v329, v326 & 1, v256, &v337);
  v330 = v261;
  if (!v261)
  {

    v46 = v316;
    goto LABEL_188;
  }

  v276 = v329;
LABEL_215:
  sub_1AF4410E4(v276, sub_1AF441114);

LABEL_216:

LABEL_217:
  v274 = v319;
  return sub_1AF441284(v274);
}

uint64_t sub_1AF3EABD8(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v171 = a7;
  v172 = a8;
  v174 = a6;
  v173 = a3;
  v170 = a1;
  v163 = sub_1AFDFC318();
  v158 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v14);
  v155 = v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v154 = v148 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v157 = v148 - v21;
  v24 = MEMORY[0x1EEE9AC00](v22, v23);
  v156 = v148 - v25;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v177 = a2;
  v32 = a2 >> 59;
  if ((v32 & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v185, v24);
    v26 = v185[0];
    v27 = v185[1];
    v28 = v185[2];
    v29 = v185[3];
    v30 = v185[4];
    v31 = v185[5];
  }

  v148[1] = v31;
  v148[2] = v30;
  v148[3] = v29;
  v148[4] = v28;
  v148[5] = v27;
  v33 = sub_1AF97228C();
  v34 = *(v33 + 16);
  v148[0] = v33;
  if (!v34)
  {
LABEL_96:

    return sub_1AF441284(v26);
  }

  v35 = 0;
  v168 = a5;
  v36 = v32 & 2 | (v177 >> 2) & 1;
  v175 = v33 + 32;
  v37 = a9;
  v178 = a10;
  v153 = v26 + 32;
  v169 = a11;
  v152 = (v158 + 16);
  v151 = v158 + 8;
  v150 = v158 + 32;
  v161 = v173 & 1;
  v166 = v170 & 1;
  v164 = v26;
  v38 = v174;
  v162 = v34;
  v159 = v36;
  v165 = a9;
  while (1)
  {
    v39 = *(v175 + 16 * v35);
    if (!v39)
    {
      goto LABEL_6;
    }

    if (v26 && v35 < *(v26 + 16))
    {
      v40 = *(v153 + 8 * v35);
      sub_1AF4410A8(v40);
    }

    else
    {
      v40 = 0xA000000000000000;
    }

    if (v36)
    {
      if (v36 == 1)
      {
        v41 = sub_1AF9C5694(v40, v177 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v40);
        if (v41)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v40);
      }
    }

    else
    {
      v42 = sub_1AF9C5694(v40, v177);
      sub_1AF441114(v40);
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    if (*(*v178 + 16))
    {
      sub_1AF0D3F10(v39);
      if (v43)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v44 = v26;
    if (*(*v37 + 16))
    {
      sub_1AF0D3F10(v39);
      v45 = v168;
      if (v46)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v45 = v168;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = *v37;
    v48 = v180;
    *v37 = 0x8000000000000000;
    v49 = sub_1AF0D3F10(v39);
    v51 = v50;
    v52 = *(v48 + 16) + ((v50 & 1) == 0);
    if (*(v48 + 24) < v52)
    {
      sub_1AF82BC4C(v52, isUniquelyReferenced_nonNull_native);
      v49 = sub_1AF0D3F10(v39);
      if ((v51 & 1) != (v53 & 1))
      {
        break;
      }

LABEL_29:
      v54 = v180;
      if (v51)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v55 = v49;
    sub_1AF843F7C();
    v49 = v55;
    v38 = v174;
    v54 = v180;
    if (v51)
    {
LABEL_30:
      *(v54[7] + v49) = 1;
      goto LABEL_33;
    }

LABEL_32:
    v54[(v49 >> 6) + 8] |= 1 << v49;
    *(v54[6] + 8 * v49) = v39;
    *(v54[7] + v49) = 1;
    ++v54[2];
LABEL_33:
    v167 = v35;
    *v37 = v54;

    if (v173)
    {
      v56 = *(*v39 + 296);

      v57 = v56(1);
      v38 = v174;
      v58 = v57;
    }

    else
    {

      v58 = v39;
    }

    v176 = v39;
    if (v170)
    {
      v160 = sub_1AF96D010(v58);
      if (v160)
      {
        v59 = v179;
        v60 = *v152;
        v149 = v58;
        v61 = v156;
        v62 = v163;
        v60(v156, v58 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v163);
        v60(v157, v61, v62);
        v63 = v174;

        v64 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_1AF4276E0(0, v63[2] + 1, 1, v63, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v66 = v64[2];
        v65 = v64[3];
        if (v66 >= v65 >> 1)
        {
          v64 = sub_1AF4276E0(v65 > 1, v66 + 1, 1, v64, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v67 = v158;
        v68 = v163;
        (*(v158 + 8))(v156, v163);
        v64[2] = v66 + 1;
        (*(v67 + 32))(v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v66, v157, v68);
        v69 = sub_1AF3FB9C8(v171, v172, 1, v177, v173 & 1, v64);
        v179 = v59;
        if (v59)
        {

          goto LABEL_100;
        }

        v71 = v69;
        v72 = v70;

        v73 = *(v72 + 16);
        if (v73)
        {
          *&v180 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v74 = 32;
          do
          {
            if (*(v71 + 16))
            {
              sub_1AF0D3F10(*(v72 + v74));
              if (v75)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v74 += 8;
            --v73;
          }

          while (v73);

          v77 = v180;
          v78 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v78 = MEMORY[0x1E69E7CC0];
          v77 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph();
        v80 = swift_allocObject();
        v80->cache = 0;
        v80->vtable = v78;
        v80->info = 0;
        v80[1].isa = 0;
        v58 = v149;

        v80[1].superclass = sub_1AF42B820(v78, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v80->vtable = v77;

        *(v58 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v80;

        v79 = v179;
        v44 = v164;
        v38 = v174;
        v45 = v168;
      }

      else
      {
        v79 = v179;
      }

      v37 = v165;
      sub_1AF3EABD8(1, v177, v173 & 1, v176, v45, v38, v171, v172, v165, v178, v169);
      if (v79)
      {
        v179 = v79;

        v26 = v44;
        return sub_1AF441284(v26);
      }

      v81 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v83 = sub_1AF3D6B1C(v82, v37, v178, sub_1AF3FD1BC);
      v179 = 0;

      *(v58 + v81) = v83;

      v76 = v174;
    }

    else
    {
      v76 = v38;
    }

    v84 = swift_allocObject();
    v86 = v171;
    v85 = v172;
    *(v84 + 16) = v171;
    *(v84 + 24) = v85;

    v87 = v45;
    v88 = v177;
    sub_1AF4410E4(v177, sub_1AF4410A8);

    v89 = swift_allocObject();
    *(v89 + 16) = v166;
    *(v89 + 24) = v88;
    *(v89 + 32) = v161;
    *(v89 + 40) = v178;
    *(v89 + 48) = v87;
    *(v89 + 56) = v76;
    *(v89 + 64) = v86;
    *(v89 + 72) = v85;
    *(v89 + 80) = v37;
    v90 = v169;
    *(v89 + 88) = v169;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1AF449D9C;
    *(v91 + 24) = v89;
    *&v180 = v87;
    *(&v180 + 1) = v58;
    v181 = v76;
    v182 = sub_1AF449D48;
    v183 = v91;
    v184 = v90;
    swift_bridgeObjectRetain_n();

    v92 = v179;
    sub_1AF449DC0(&v180, &v186);
    v179 = v92;
    if (v92)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_101;
    }

    v93 = v76;

    v94 = v186;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v95 = swift_retain_n();
    v96 = v178;
    if (sub_1AF633A48(v95, v176))
    {

      v26 = v164;
      v37 = v165;
      v97 = v176;
    }

    else
    {
      v98 = v96[1];
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v96[1] = v98;
      v26 = v164;
      v100 = v94;
      if ((v99 & 1) == 0)
      {
        v98 = sub_1AF422330(0, *(v98 + 2) + 1, 1, v98, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v178[1] = v98;
      }

      v97 = v176;
      v102 = *(v98 + 2);
      v101 = *(v98 + 3);
      v37 = v165;
      if (v102 >= v101 >> 1)
      {
        v146 = sub_1AF422330(v101 > 1, v102 + 1, 1, v98, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v178[1] = v146;
      }

      v103 = v178[1];
      *(v103 + 16) = v102 + 1;
      v104 = v103 + 8 * v102;
      v94 = v100;
      *(v104 + 32) = v97;
      v93 = v174;
    }

    v105 = swift_isUniquelyReferenced_nonNull_native();
    *&v180 = *v37;
    v106 = v180;
    *v37 = 0x8000000000000000;
    v107 = sub_1AF0D3F10(v97);
    v109 = v108;
    v110 = *(v106 + 16) + ((v108 & 1) == 0);
    v35 = v167;
    if (*(v106 + 24) >= v110)
    {
      if ((v105 & 1) == 0)
      {
        v144 = v94;
        v145 = v107;
        sub_1AF843F7C();
        v107 = v145;
        v94 = v144;
        v93 = v174;
      }

      goto LABEL_69;
    }

    sub_1AF82BC4C(v110, v105);
    v107 = sub_1AF0D3F10(v97);
    if ((v109 & 1) != (v111 & 1))
    {
      break;
    }

LABEL_69:
    v34 = v162;
    v112 = v180;
    if (v109)
    {
      *(*(v180 + 56) + v107) = 0;
    }

    else
    {
      *(v180 + 8 * (v107 >> 6) + 64) |= 1 << v107;
      *(v112[6] + 8 * v107) = v97;
      *(v112[7] + v107) = 0;
      ++v112[2];
    }

    *v37 = v112;

    if (v170)
    {

      v38 = v93;
    }

    else
    {
      v113 = v179;
      sub_1AF3EABD8(v166, v177, v173 & 1, v97, v168, v93, v171, v172, v37, v178, v169);
      v179 = v113;
      if (v113)
      {

        goto LABEL_96;
      }

      v114 = sub_1AF96D010(v94);
      if (v114)
      {
        v115 = v114;
        v116 = v179;
        v117 = v94;
        v118 = *v152;
        v160 = v117;
        v119 = v154;
        v120 = v163;
        v118(v154, v117 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v163);
        v118(v155, v119, v120);
        v121 = v174;

        v122 = v121;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1AF4276E0(0, v121[2] + 1, 1, v121, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v124 = v122[2];
        v123 = v122[3];
        v125 = v115;
        if (v124 >= v123 >> 1)
        {
          v122 = sub_1AF4276E0(v123 > 1, v124 + 1, 1, v122, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v126 = v158;
        v127 = v163;
        (*(v158 + 8))(v154, v163);
        v122[2] = v124 + 1;
        (*(v126 + 32))(v122 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v124, v155, v127);
        v128 = v125;
        v129 = sub_1AF3FB9C8(v171, v172, v166, v177, v173 & 1, v122);
        v179 = v116;
        if (v116)
        {

LABEL_100:

LABEL_101:
          v26 = v164;
          return sub_1AF441284(v26);
        }

        v131 = v129;
        v132 = v130;

        v133 = *(v132 + 16);
        if (v133)
        {
          v176 = v128;
          *&v180 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v134 = 32;
          do
          {
            if (*(v131 + 16))
            {
              sub_1AF0D3F10(*(v132 + v134));
              if (v135)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v134 += 8;
            --v133;
          }

          while (v133);

          v136 = v180;
          v137 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v137 = MEMORY[0x1E69E7CC0];
          v136 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph();
        v139 = swift_allocObject();
        v139->cache = 0;
        v139->vtable = v137;
        v139->info = 0;
        v139[1].isa = 0;
        v140 = v160;

        v139[1].superclass = sub_1AF42B820(v137, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v139->vtable = v136;

        *(v140 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v139;
        v94 = v140;

        v138 = v179;
        v26 = v164;
        v34 = v162;
        v37 = v165;
      }

      else
      {
        v138 = v179;
      }

      v141 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v143 = sub_1AF3D6B1C(v142, v37, v178, sub_1AF3FD1BC);
      v179 = v138;

      *(v94 + v141) = v143;

      v38 = v174;
    }

    v36 = v159;
LABEL_6:
    if (++v35 == v34)
    {
      goto LABEL_96;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_103:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3EBFD4(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v182 = a7;
  v183 = a8;
  v181 = a3;
  v172 = a1;
  v192[6] = *MEMORY[0x1E69E9840];
  v169 = sub_1AFDFC318();
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v16);
  v155 = v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v154 = v148 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v162 = v148 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v161 = v148 - v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v184 = a2;
  v34 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v192, v26);
    v28 = v192[0];
    v29 = v192[1];
    v30 = v192[2];
    v31 = v192[3];
    v32 = v192[4];
    v33 = v192[5];
  }

  v156 = v33;
  v157 = v32;
  v158 = v31;
  v159 = v30;
  v160 = v29;
  v35 = a4[2];
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v173 = a6;
  v171 = a5;
  v180 = v11;
  v174 = v28;
  if (v36)
  {
    v179 = (a2 >> 59);
    *&v187 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v36, 0);
    v38 = 0;
    v37 = v187;
    v39 = *(v187 + 16);
    v40 = 16 * v39;
    do
    {
      v41 = *(v35 + v38 + 32);
      v42 = *(v35 + v38 + 40);
      *&v187 = v37;
      v43 = *(v37 + 24);

      if (v39 >= v43 >> 1)
      {
        sub_1AFC05E2C(v43 > 1, v39 + 1, 1);
        v37 = v187;
      }

      *(v37 + 16) = v39 + 1;
      v44 = v37 + v40 + v38;
      *(v44 + 32) = v41;
      *(v44 + 40) = v42;
      v38 += 16;
      ++v39;
      --v36;
    }

    while (v36);

    v28 = v174;
    a5 = v171;
    LOBYTE(v34) = v179;
  }

  v45 = *(v37 + 16);
  if (!v45)
  {
LABEL_112:
    v146 = v28;

    return sub_1AF441284(v146);
  }

  v46 = 0;
  v47 = v34 & 2 | (v184 >> 2) & 1;
  v48 = v37 + 32;
  v178 = a10;
  v179 = a9;
  v164 = v28 + 32;
  v170 = a11;
  v153 = (v168 + 16);
  v152 = v168 + 8;
  v151 = v168 + 32;
  v163 = v181 & 1;
  v176 = v172 & 1;
  v167 = v45;
  v166 = v47;
  v165 = v37 + 32;
  while (1)
  {
    v49 = *(v48 + 16 * v46);
    if (!v49)
    {
      goto LABEL_13;
    }

    if (v28 && v46 < *(v28 + 16))
    {
      v50 = *(v164 + 8 * v46);
      sub_1AF4410A8(v50);
    }

    else
    {
      v50 = 0xA000000000000000;
    }

    if (v47)
    {
      if (v47 == 1)
      {
        v51 = sub_1AF9C5694(v50, v184 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v50);
        if (v51)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v50);
      }
    }

    else
    {
      v52 = sub_1AF9C5694(v50, v184);
      sub_1AF441114(v50);
      if (!v52)
      {
        goto LABEL_11;
      }
    }

    if (*(*v178 + 16))
    {
      sub_1AF0D3F10(v49);
      if (v53)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (*(*v179 + 16))
    {
      sub_1AF0D3F10(v49);
      if (v54)
      {
        goto LABEL_11;
      }

      v55 = v179;
    }

    else
    {
      v55 = v179;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v187 = *v55;
    v57 = v187;
    *v55 = 0x8000000000000000;
    v58 = sub_1AF0D3F10(v49);
    v60 = v59;
    v61 = *(v57 + 16) + ((v59 & 1) == 0);
    if (*(v57 + 24) < v61)
    {
      sub_1AF82BC4C(v61, isUniquelyReferenced_nonNull_native);
      v58 = sub_1AF0D3F10(v49);
      if ((v60 & 1) != (v62 & 1))
      {
        break;
      }

LABEL_36:
      v63 = v187;
      if (v60)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    v64 = v58;
    sub_1AF843F7C();
    v58 = v64;
    v63 = v187;
    if (v60)
    {
LABEL_37:
      *(v63[7] + v58) = 1;
      goto LABEL_40;
    }

LABEL_39:
    v63[(v58 >> 6) + 8] |= 1 << v58;
    *(v63[6] + 8 * v58) = v49;
    *(v63[7] + v58) = 1;
    ++v63[2];
LABEL_40:
    *v55 = v63;

    if (v172)
    {
      v65 = sub_1AF96CD1C(v49);
      v66 = v173;
      v177 = v65;
      if (v65)
      {
        v67 = *v153;
        v68 = v161;
        v69 = v169;
        (*v153)(v161, v49 + OBJC_IVAR____TtC3VFX4Node_authoringID, v169);
        v67(v162, v68, v69);

        v70 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_1AF4276E0(0, v66[2] + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v72 = v70[2];
        v71 = v70[3];
        if (v72 >= v71 >> 1)
        {
          v70 = sub_1AF4276E0(v71 > 1, v72 + 1, 1, v70, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v73 = v168;
        v74 = v169;
        (*(v168 + 8))(v161, v169);
        v70[2] = v72 + 1;
        v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v175 = v70;
        (*(v73 + 32))(v70 + v75 + *(v73 + 72) * v72, v162, v74);
        v76 = MEMORY[0x1E69E7CC0];
        *&v187 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
        *(&v187 + 1) = v77;
        v78 = *(v177 + 16);
        v148[1] = v177 + 16;
        v79 = sub_1AF0D4098(v76, sub_1AF44034C, sub_1AF0D3F10);
        v185 = v76;
        v186 = v79;
        if (v78 >> 62)
        {
          v80 = sub_1AFDFE108();
        }

        else
        {
          v80 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v81 = v180;
        v149 = v37;
        swift_bridgeObjectRetain_n();

        sub_1AF4410E4(v184, sub_1AF4410A8);

        if (v80)
        {
          v82 = 0;
          v83 = v78 & 0xC000000000000001;
          while (1)
          {
            v84 = v78;
            if (v83)
            {
              v85 = MEMORY[0x1B2719C70](v82, v78);
            }

            else
            {
              v85 = *(v78 + 8 * v82 + 32);
            }

            sub_1AF3DC99C(v85, 1, v184, v181 & 1, v175, v182, v183, &v186, &v187, &v185);
            if (v81)
            {
              break;
            }

            ++v82;
            v78 = v84;
            if (v80 == v82)
            {
              goto LABEL_57;
            }
          }

LABEL_113:

          sub_1AF4410E4(v184, sub_1AF441114);

          return sub_1AF441284(v174);
        }

LABEL_57:

        sub_1AF4410E4(v184, sub_1AF441114);

        v180 = v81;
        if (v185 >> 62)
        {
          v86 = sub_1AFDFE108();
        }

        else
        {
          v86 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v171;
        v55 = v179;
        v37 = v149;
        v66 = v173;
        if (v86)
        {

          sub_1AF48F7F8(v87);
        }
      }

      else
      {
      }

      v88 = v180;
      sub_1AF3EBFD4(1, v184, v181 & 1, v49, a5, v66, v182, v183, v55, v178, v170);
      v180 = v88;
      if (v88)
      {
        goto LABEL_115;
      }

      v177 = v46;
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {

        v90 = v180;
        v91 = sub_1AF3D72E8(v89, v55);
        v180 = v90;

        *(v49 + 16) = v91;
      }

      else
      {
        type metadata accessor for AuthoringNode();
      }
    }

    else
    {
      v177 = v46;
    }

    v92 = v49;
    v93 = swift_allocObject();
    v94 = v182;
    v95 = v183;
    *(v93 + 16) = v182;
    *(v93 + 24) = v95;
    a5 = v171;

    v96 = v184;
    sub_1AF4410E4(v184, sub_1AF4410A8);

    v97 = swift_allocObject();
    *(v97 + 16) = v176;
    *(v97 + 24) = v96;
    *(v97 + 32) = v163;
    *(v97 + 40) = v178;
    *(v97 + 48) = a5;
    v98 = v173;
    *(v97 + 56) = v173;
    *(v97 + 64) = v94;
    v99 = v179;
    *(v97 + 72) = v95;
    *(v97 + 80) = v99;
    v100 = v170;
    *(v97 + 88) = v170;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_1AF449D7C;
    *(v101 + 24) = v97;
    *&v187 = a5;
    *(&v187 + 1) = v49;
    v188 = v98;
    v189 = sub_1AF449D50;
    v190 = v101;
    v191 = v100;
    swift_bridgeObjectRetain_n();

    v102 = v180;
    sub_1AF449CCC(&v187);
    v180 = v102;
    if (v102)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return sub_1AF441284(v174);
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v103 = sub_1AF633A88(v49);
    v47 = v166;
    v48 = v165;
    if (v103)
    {
      v104 = v178;
      v105 = v178[1];
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v104[1] = v105;
      if ((v106 & 1) == 0)
      {
        v105 = sub_1AF422330(0, *(v105 + 2) + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v104[1] = v105;
      }

      v108 = *(v105 + 2);
      v107 = *(v105 + 3);
      if (v108 >= v107 >> 1)
      {
        v105 = sub_1AF422330(v107 > 1, v108 + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v178[1] = v105;
      }

      *(v105 + 2) = v108 + 1;
      *&v105[8 * v108 + 32] = v92;
    }

    v109 = v179;
    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v187 = *v109;
    v111 = v187;
    *v109 = 0x8000000000000000;
    v112 = sub_1AF0D3F10(v92);
    v114 = v113;
    v115 = *(v111 + 16) + ((v113 & 1) == 0);
    v116 = v92;
    if (*(v111 + 24) >= v115)
    {
      v46 = v177;
      if ((v110 & 1) == 0)
      {
        v145 = v112;
        sub_1AF843F7C();
        v112 = v145;
      }

      goto LABEL_79;
    }

    sub_1AF82BC4C(v115, v110);
    v112 = sub_1AF0D3F10(v92);
    v46 = v177;
    if ((v114 & 1) != (v117 & 1))
    {
      break;
    }

LABEL_79:
    v45 = v167;
    v118 = v187;
    if (v114)
    {
      *(*(v187 + 56) + v112) = 0;
    }

    else
    {
      *(v187 + 8 * (v112 >> 6) + 64) |= 1 << v112;
      *(v118[6] + 8 * v112) = v116;
      *(v118[7] + v112) = 0;
      ++v118[2];
    }

    v119 = v179;
    *v179 = v118;

    if (v172)
    {
      goto LABEL_107;
    }

    v120 = v180;
    sub_1AF3EBFD4(v176, v184, v181 & 1, v116, a5, v173, v182, v183, v119, v178, v170);
    v180 = v120;
    if (v120)
    {
LABEL_115:

      return sub_1AF441284(v174);
    }

    v177 = sub_1AF96CD1C(v116);
    v150 = v116;
    if (v177)
    {
      v121 = *v153;
      v122 = v154;
      v123 = v169;
      (*v153)(v154, v116 + OBJC_IVAR____TtC3VFX4Node_authoringID, v169);
      v121(v155, v122, v123);
      v124 = v173;

      v125 = v124;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_1AF4276E0(0, v124[2] + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v127 = v125[2];
      v126 = v125[3];
      if (v127 >= v126 >> 1)
      {
        v125 = sub_1AF4276E0(v126 > 1, v127 + 1, 1, v125, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v128 = v168;
      v129 = v169;
      (*(v168 + 8))(v154, v169);
      v125[2] = v127 + 1;
      (*(v128 + 32))(v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v127, v155, v129);
      v130 = MEMORY[0x1E69E7CC0];
      *&v187 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      *(&v187 + 1) = v131;
      v132 = *(v177 + 16);
      v149 = v177 + 16;
      v133 = sub_1AF0D4098(v130, sub_1AF44034C, sub_1AF0D3F10);
      v185 = v130;
      v186 = v133;
      if (v132 >> 62)
      {
        v134 = sub_1AFDFE108();
      }

      else
      {
        v134 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v135 = v180;

      sub_1AF4410E4(v184, sub_1AF4410A8);

      v175 = v125;

      if (v134)
      {
        v136 = 0;
        do
        {
          if ((v132 & 0xC000000000000001) != 0)
          {
            v137 = MEMORY[0x1B2719C70](v136, v132);
          }

          else
          {
            v137 = *(v132 + 8 * v136 + 32);
          }

          sub_1AF3DC99C(v137, v176, v184, v181 & 1, v175, v182, v183, &v186, &v187, &v185);
          if (v135)
          {
            goto LABEL_113;
          }
        }

        while (v134 != ++v136);
      }

      sub_1AF4410E4(v184, sub_1AF441114);

      v180 = v135;
      if (v185 >> 62)
      {
        v138 = sub_1AFDFE108();
      }

      else
      {
        v138 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a5 = v171;
      v45 = v167;
      v48 = v165;
      v47 = v166;
      if (v138)
      {

        sub_1AF48F7F8(v139);
      }
    }

    type metadata accessor for Node();
    v140 = swift_dynamicCastMetatype();
    v141 = v150;
    if (!v140)
    {
      type metadata accessor for AuthoringNode();
LABEL_107:

      goto LABEL_12;
    }

    v143 = v180;
    v144 = sub_1AF3D72E8(v142, v179);
    v180 = v143;

    v141[2] = v144;

LABEL_12:
    v28 = v174;
LABEL_13:
    if (++v46 == v45)
    {
      goto LABEL_112;
    }
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF3ED5A0(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v170 = a8;
  v169 = a7;
  v171 = a6;
  v172 = a3;
  v167 = a1;
  v161 = sub_1AFDFC318();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v16);
  v156 = v152 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v155 = v152 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v158 = v152 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v157 = v152 - v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v178 = a2;
  v34 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v188, v26);
    v28 = v188[0];
    v29 = v188[1];
    v30 = v188[2];
    v31 = v188[3];
    v32 = v188[4];
    v33 = v188[5];
  }

  v152[3] = v33;
  v152[4] = v32;
  v152[5] = v31;
  v152[6] = v30;
  v152[7] = v29;
  v35 = sub_1AF97228C();
  v176 = *(v35 + 16);
  v152[2] = v35;
  if (!v176)
  {
LABEL_102:

    return sub_1AF441284(v28);
  }

  v36 = 0;
  v166 = v34 & 2 | (v178 >> 2) & 1;
  v175 = v35 + 32;
  v37 = a9;
  v177 = a10;
  v154 = v28 + 32;
  v165 = a11;
  v153 = (v159 + 16);
  v152[9] = v159 + 8;
  v152[8] = v159 + 32;
  v160 = v172 & 1;
  v164 = v167 & 1;
  v163 = v28;
  v162 = a5;
  v174 = a9;
  while (1)
  {
    v38 = *(v175 + 16 * v36);
    if (!v38)
    {
      goto LABEL_6;
    }

    if (v28 && v36 < *(v28 + 16))
    {
      v39 = *(v154 + 8 * v36);
      sub_1AF4410A8(v39);
    }

    else
    {
      v39 = 0xA000000000000000;
    }

    if (v166)
    {
      break;
    }

    v41 = sub_1AF9C5694(v39, v178);
    sub_1AF441114(v39);
    if (v41)
    {
      goto LABEL_19;
    }

LABEL_5:

LABEL_6:
    if (++v36 == v176)
    {
      goto LABEL_102;
    }
  }

  if (v166 == 1)
  {
    v40 = sub_1AF9C5694(v39, v178 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v39);
    if (!v40)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v39);
LABEL_19:
  if (*(*v177 + 16))
  {
    sub_1AF0D3F10(v38);
    if (v42)
    {
      goto LABEL_5;
    }
  }

  if (*(*v37 + 16))
  {
    sub_1AF0D3F10(v38);
    if (v43)
    {
      goto LABEL_110;
    }

    v44 = a5;
  }

  else
  {
    v44 = a5;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v182 = *v37;
  v46 = v182;
  *v37 = 0x8000000000000000;
  v47 = sub_1AF0D3F10(v38);
  v49 = v48;
  v50 = *(v46 + 16) + ((v48 & 1) == 0);
  if (*(v46 + 24) >= v50)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v149 = v47;
      sub_1AF843F7C();
      v47 = v149;
      v37 = v174;
    }
  }

  else
  {
    sub_1AF82BC4C(v50, isUniquelyReferenced_nonNull_native);
    v47 = sub_1AF0D3F10(v38);
    if ((v49 & 1) != (v51 & 1))
    {
      goto LABEL_109;
    }
  }

  v52 = v44;
  v53 = v182;
  if (v49)
  {
    *(*(v182 + 56) + v47) = 1;
  }

  else
  {
    *(v182 + 8 * (v47 >> 6) + 64) |= 1 << v47;
    *(v53[6] + 8 * v47) = v38;
    *(v53[7] + v47) = 1;
    ++v53[2];
  }

  *v37 = v53;

  sub_1AF44479C(0);
  v55 = v54;
  v56 = type metadata accessor for AuthoringNode();
  v189 = v38;
  v179 = v56;
  v180 = v55;
  if ((v172 & 1) != 0 && v55 == v56)
  {
    cache = (*v38)[7].cache;

    v189 = cache(1);
  }

  else
  {
  }

  if (v167)
  {
    v58 = v189;
    v59 = sub_1AF96D010(v189);
    if (v59)
    {
      v60 = v59;
      v61 = *v153;
      v62 = v58 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v63 = v157;
      v64 = v161;
      (*v153)(v157, v62, v161);
      v61(v158, v63, v64);
      v65 = v171;

      v66 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1AF4276E0(0, v65[2] + 1, 1, v65, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v68 = v66[2];
      v67 = v66[3];
      if (v68 >= v67 >> 1)
      {
        v66 = sub_1AF4276E0(v67 > 1, v68 + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v69 = v159;
      v70 = v161;
      (*(v159 + 8))(v157, v161);
      v66[2] = v68 + 1;
      (*(v69 + 32))(v66 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68, v158, v70);
      v168 = v60;
      v71 = sub_1AF3FBC60(v169, v170, 1, v178, v172 & 1, v66);
      v173 = v12;
      if (v12)
      {

LABEL_106:
        v28 = v163;
LABEL_107:

        return sub_1AF441284(v28);
      }

      v73 = v71;
      v74 = v72;

      if (v180 == v179)
      {
        v77 = *(v74 + 16);
        if (v77)
        {
          *&v182 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v78 = 32;
          do
          {
            if (*(v73 + 16) && (sub_1AF0D3F10(*(v74 + v78)), (v80 & 1) != 0))
            {
            }

            else
            {
              v79 = 1;
            }

            v181 = v79;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v78 += 8;
            --v77;
          }

          while (v77);

          v81 = v182;
          v82 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v82 = MEMORY[0x1E69E7CC0];
          v81 = MEMORY[0x1E69E7CC0];
        }

        v83 = v189;
        type metadata accessor for AuthoringGraph();
        v84 = swift_allocObject();
        v84->cache = 0;
        v84->vtable = v82;
        v84->info = 0;
        v84[1].isa = 0;

        v84[1].superclass = sub_1AF42B820(v82, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v84->vtable = v81;

        *(v83 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v84;

        v12 = v173;
        v28 = v163;
        v75 = v171;
        v52 = v162;
        v37 = v174;
      }

      else
      {

        v12 = v173;
        v28 = v163;
        v75 = v171;
        v52 = v162;
        v37 = v174;
      }
    }

    else
    {
      v75 = v171;
    }

    sub_1AF3ED5A0(1, v178, v172 & 1, v38, v52, v75, v169, v170, v37, v177, v165);
    if (v12)
    {

      goto LABEL_107;
    }

    v76 = v52;
    type metadata accessor for Node();
    if (swift_dynamicCastMetatype())
    {
      v85 = v189;
      v86 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v88 = sub_1AF3D6B1C(v87, v174, v177, sub_1AF3FD720);
      v173 = 0;

      *(v85 + v86) = v88;

      goto LABEL_62;
    }
  }

  else
  {
    v76 = v44;
  }

  v173 = v12;
LABEL_62:
  v89 = swift_allocObject();
  v90 = v169;
  v91 = v170;
  *(v89 + 16) = v169;
  *(v89 + 24) = v91;

  v92 = v178;
  sub_1AF4410E4(v178, sub_1AF4410A8);

  v93 = swift_allocObject();
  *(v93 + 16) = v164;
  *(v93 + 24) = v92;
  *(v93 + 32) = v160;
  v94 = v177;
  *(v93 + 40) = v177;
  *(v93 + 48) = v76;
  v95 = v171;
  *(v93 + 56) = v171;
  *(v93 + 64) = v90;
  v96 = v174;
  *(v93 + 72) = v91;
  *(v93 + 80) = v96;
  v97 = v165;
  *(v93 + 88) = v165;
  v98 = swift_allocObject();
  *(v98 + 16) = sub_1AF449D78;
  *(v98 + 24) = v93;
  *&v182 = v76;
  *(&v182 + 1) = v189;
  v183 = v95;
  v184 = sub_1AF449D48;
  v185 = v98;
  v186 = v97;
  swift_bridgeObjectRetain_n();

  v99 = v173;
  sub_1AF449DC0(&v182, &v187);
  if (v99)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    goto LABEL_106;
  }

  v100 = v187;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v101 = swift_retain_n();
  v102 = sub_1AF633B74(v101, v38);
  v168 = v100;
  if (v102 == 1)
  {
    v103 = v94;
    v104 = *(v94 + 8);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    *(v94 + 8) = v104;
    v28 = v163;
    v106 = v162;
    if ((v105 & 1) == 0)
    {
      v104 = sub_1AF422330(0, *(v104 + 2) + 1, 1, v104, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v94 + 8) = v104;
    }

    v108 = *(v104 + 2);
    v107 = *(v104 + 3);
    if (v108 >= v107 >> 1)
    {
      *(v103 + 8) = sub_1AF422330(v107 > 1, v108 + 1, 1, v104, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    v109 = *(v103 + 8);
    *(v109 + 16) = v108 + 1;
    *(v109 + 8 * v108 + 32) = v38;
  }

  else
  {
    v110 = v102;

    sub_1AF0DB74C(v110);
    v28 = v163;
    v106 = v162;
  }

  v37 = v174;
  if (v180 == v179)
  {
    *&v182 = v168;

    swift_dynamicCast();
  }

  v111 = swift_isUniquelyReferenced_nonNull_native();
  *&v182 = *v37;
  v112 = v182;
  *v37 = 0x8000000000000000;
  v113 = sub_1AF0D3F10(v38);
  v115 = v114;
  v116 = *(v112 + 16) + ((v114 & 1) == 0);
  if (*(v112 + 24) >= v116)
  {
    if ((v111 & 1) == 0)
    {
      v150 = v113;
      sub_1AF843F7C();
      v113 = v150;
      v37 = v174;
    }

    goto LABEL_77;
  }

  sub_1AF82BC4C(v116, v111);
  v113 = sub_1AF0D3F10(v38);
  if ((v115 & 1) == (v117 & 1))
  {
LABEL_77:
    v12 = 0;
    v118 = v182;
    a5 = v106;
    if (v115)
    {
      *(*(v182 + 56) + v113) = 0;
    }

    else
    {
      *(v182 + 8 * (v113 >> 6) + 64) |= 1 << v113;
      *(v118[6] + 8 * v113) = v38;
      *(v118[7] + v113) = 0;
      ++v118[2];
    }

    *v37 = v118;

    if (v167)
    {
      goto LABEL_100;
    }

    sub_1AF3ED5A0(v164, v178, v172 & 1, v38, v106, v171, v169, v170, v37, v177, v165);
    v119 = v189;
    v120 = sub_1AF96D010(v189);
    if (v120)
    {
      v121 = v120;
      v122 = *v153;
      v123 = v119 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v124 = v155;
      v125 = v161;
      (*v153)(v155, v123, v161);
      v122(v156, v124, v125);
      v126 = v171;

      v127 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_1AF4276E0(0, v126[2] + 1, 1, v126, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v129 = v127[2];
      v128 = v127[3];
      if (v129 >= v128 >> 1)
      {
        v127 = sub_1AF4276E0(v128 > 1, v129 + 1, 1, v127, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v130 = v159;
      v131 = v161;
      (*(v159 + 8))(v155, v161);
      v127[2] = v129 + 1;
      (*(v130 + 32))(v127 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v129, v156, v131);
      v152[1] = v121;
      v132 = sub_1AF3FBC60(v169, v170, v164, v178, v172 & 1, v127);
      v173 = 0;
      v133 = v132;
      v135 = v134;

      if (v180 == v179)
      {
        v136 = *(v135 + 16);
        if (v136)
        {
          *&v182 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v137 = 32;
          do
          {
            if (*(v133 + 16) && (sub_1AF0D3F10(*(v135 + v137)), (v139 & 1) != 0))
            {
            }

            else
            {
              v138 = 1;
            }

            v181 = v138;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v137 += 8;
            --v136;
          }

          while (v136);

          v140 = v182;
          v141 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v141 = MEMORY[0x1E69E7CC0];
          v140 = MEMORY[0x1E69E7CC0];
        }

        v142 = v189;
        type metadata accessor for AuthoringGraph();
        v143 = swift_allocObject();
        v143->cache = 0;
        v143->vtable = v141;
        v143->info = 0;
        v143[1].isa = 0;

        v143[1].superclass = sub_1AF42B820(v141, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v143->vtable = v140;

        *(v142 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v143;

        v12 = v173;
        v28 = v163;
        a5 = v162;
        v37 = v174;
      }

      else
      {

        v12 = v173;
        v28 = v163;
        a5 = v162;
        v37 = v174;
      }
    }

    type metadata accessor for Node();
    if (!swift_dynamicCastMetatype())
    {
LABEL_100:
    }

    else
    {
      v144 = v189;
      v145 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v147 = a5;
      v148 = sub_1AF3D6B1C(v146, v174, v177, sub_1AF3FD720);

      *(v144 + v145) = v148;
      a5 = v147;
      v37 = v174;
    }

    goto LABEL_5;
  }

LABEL_109:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_110:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3EEB38(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, unint64_t a10, uint64_t a11)
{
  v12 = v11;
  v194 = a7;
  v195 = a8;
  v193 = a3;
  v184 = a1;
  v250 = *MEMORY[0x1E69E9840];
  v169 = sub_1AFDFC318();
  v178 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v17);
  v161 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v160 = &v158 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v163 = &v158 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v162 = &v158 - v28;
  v29 = 0;
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v30 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v206, v27);
    v29 = v206[0];
    v175 = v206[2];
    v176 = v206[1];
    v173 = v206[4];
    v174 = v206[3];
    v172 = v206[5];
  }

  v31 = a4[2];
  v32 = *(v31 + 16);
  v196 = a2;
  v185 = a6;
  v186 = a5;
  v181 = v29;
  if (v32)
  {
    v192 = a2 >> 59;
    v190 = v11;
    *&v242 = MEMORY[0x1E69E7CC0];
    v197 = v31;

    sub_1AFC05E2C(0, v32, 0);
    v33 = 0;
    v34 = v242;
    v35 = *(v242 + 16);
    v36 = 16 * v35;
    do
    {
      v38 = *(v197 + v33 + 32);
      v37 = *(v197 + v33 + 40);
      *&v242 = v34;
      v39 = *(v34 + 24);

      if (v35 >= v39 >> 1)
      {
        sub_1AFC05E2C(v39 > 1, v35 + 1, 1);
        v34 = v242;
      }

      *(v34 + 16) = v35 + 1;
      v40 = v34 + v36 + v33;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      v33 += 16;
      ++v35;
      --v32;
    }

    while (v32);

    v41 = v34;
    v12 = v190;
    v29 = v181;
    LODWORD(a2) = v196;
    a5 = v186;
    LOBYTE(v30) = v192;
    v42 = *(v34 + 16);
    if (!v42)
    {
      goto LABEL_120;
    }

    goto LABEL_11;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v42 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v42)
  {
LABEL_11:
    v43 = 0;
    v167 = v30 & 2;
    v182 = v167 | (a2 >> 2) & 1;
    v192 = a10;
    v44 = a9;
    v180 = a11;
    v187 = v41 + 32;
    v188 = a9;
    v168 = v29 + 32;
    v165 = v178 + 8;
    v166 = (v178 + 16);
    v164 = v178 + 32;
    v171 = v193 & 1;
    v191 = v184 & 1;
    v183 = v41;
    v177 = v42;
    do
    {
      v45 = *(v187 + 16 * v43);
      if (!v45)
      {
        goto LABEL_14;
      }

      v189 = v43;
      if (v29 && v43 < *(v29 + 16))
      {
        v46 = *(v168 + 8 * v43);
        sub_1AF4410A8(v46);
      }

      else
      {
        v46 = 0xA000000000000000;
      }

      if (v182)
      {
        if (v182 == 1)
        {
          v47 = sub_1AF9C5694(v46, v196 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v46);
          if (v47)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_1AF441114(v46);
        }
      }

      else
      {
        v48 = sub_1AF9C5694(v46, v196);
        sub_1AF441114(v46);
        if (!v48)
        {
          goto LABEL_12;
        }
      }

      if (*(*v192 + 16))
      {
        sub_1AF0D3F10(v45);
        if (v49)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      if (*(*v44 + 16))
      {
        sub_1AF0D3F10(v45);
        if (v50)
        {
          goto LABEL_123;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v242 = *v44;
      v52 = v242;
      *v44 = 0x8000000000000000;
      v53 = sub_1AF0D3F10(v45);
      v55 = v54;
      v56 = *(v52 + 16) + ((v54 & 1) == 0);
      if (*(v52 + 24) >= v56)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v152 = v53;
          sub_1AF843F7C();
          v53 = v152;
        }
      }

      else
      {
        sub_1AF82BC4C(v56, isUniquelyReferenced_nonNull_native);
        v53 = sub_1AF0D3F10(v45);
        if ((v55 & 1) != (v57 & 1))
        {
          goto LABEL_122;
        }
      }

      v58 = v192;
      v59 = v242;
      if (v55)
      {
        *(*(v242 + 56) + v53) = 1;
      }

      else
      {
        *(v242 + 8 * (v53 >> 6) + 64) |= 1 << v53;
        *(v59[6] + 8 * v53) = v45;
        *(v59[7] + v53) = 1;
        ++v59[2];
      }

      *v188 = v59;

      sub_1AF448148();
      v179 = v60;
      if (v184)
      {
        v197 = sub_1AF96CD1C(v45);
        if (v197)
        {
          v61 = *v166;
          v62 = v162;
          v63 = v169;
          (*v166)(v162, v45 + OBJC_IVAR____TtC3VFX4Node_authoringID, v169);
          v64 = v45;
          v65 = v163;
          v61(v163, v62, v63);
          v170 = v64;

          v66 = v185;

          v67 = swift_isUniquelyReferenced_nonNull_native();
          v68 = v66;
          if ((v67 & 1) == 0)
          {
            v68 = sub_1AF4276E0(0, v66[2] + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v190 = v68;
          v70 = v68[2];
          v69 = v68[3];
          if (v70 >= v69 >> 1)
          {
            v190 = sub_1AF4276E0(v69 > 1, v70 + 1, 1, v190, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v71 = MEMORY[0x1E69E7CC0];
          v72 = v178;
          (*(v178 + 8))(v62, v63);
          v73 = v190;
          v190[2] = v70 + 1;
          v74 = v73;
          (*(v72 + 32))(v73 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v70, v65, v63);
          *v233 = sub_1AF439808(v71);
          *&v233[8] = v75;
          v77 = v197 + 16;
          v76 = *(v197 + 16);
          if (v167)
          {
          }

          else
          {
            *&v234 = v71;
            type metadata accessor for Graph();
            v78 = swift_allocObject();
            *(v78 + 16) = v76;
            MEMORY[0x1EEE9AC00](v78, v79);
            MEMORY[0x1EEE9AC00](v80, v81);
            v156 = sub_1AF449D54;
            v157 = v82;
            swift_bridgeObjectRetain_n();
            *&v242 = sub_1AF42B0F4(v71);
            *(&v242 + 1) = v83;
            sub_1AF412D4C(sub_1AF449DD8, &v155, 1, 0x1000000000000000uLL, 0, v71, &v242);
            if (v12)
            {
              goto LABEL_124;
            }

            v12 = 0;

            v76 = v234;
            v74 = v190;
          }

          *&v225 = sub_1AF0D4098(v71, sub_1AF44034C, sub_1AF0D3F10);
          *&v217 = v71;
          if (v76 >> 62)
          {
            v84 = sub_1AFDFE108();
          }

          else
          {
            v84 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v85 = v181;
          v159 = v77;

          sub_1AF4410E4(v196, sub_1AF4410A8);

          if (v84)
          {
            v86 = 0;
            while (1)
            {
              if ((v76 & 0xC000000000000001) != 0)
              {
                v87 = MEMORY[0x1B2719C70](v86, v76);
              }

              else
              {
                v87 = *(v76 + 8 * v86 + 32);
              }

              sub_1AF3DEAB4(&v242, v87, 1, v196, v193 & 1, v74, v194, v195, &v225, v233, &v217);
              if (v12)
              {
                break;
              }

              ++v86;
              v240 = v248;
              v241[0] = v249[0];
              *(v241 + 9) = *(v249 + 9);
              v236 = v244;
              v237 = v245;
              v239 = v247;
              v238 = v246;
              v235 = v243;
              v234 = v242;
              sub_1AF44943C(&v234, sub_1AF448148);

              v74 = v190;
              if (v84 == v86)
              {
                goto LABEL_61;
              }
            }

            sub_1AF4410E4(v196, sub_1AF441114);

            v29 = v85;
            return sub_1AF441284(v29);
          }

LABEL_61:

          sub_1AF4410E4(v196, sub_1AF441114);

          if (v217 >> 62)
          {
            v88 = sub_1AFDFE108();
          }

          else
          {
            v88 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v29 = v85;
          a5 = v186;
          v45 = v170;
          if (v88)
          {

            sub_1AF48F7F8(v89);
          }

          v58 = v192;
        }

        else
        {
        }

        sub_1AF3EEB38(1, v196, v193 & 1, v45, a5, v185, v194, v195, v188, v58, v180);
        if (v12)
        {

          break;
        }

        type metadata accessor for Node();
        if (swift_dynamicCastMetatype())
        {

          v91 = sub_1AF3D72E8(v90, v188);
          v190 = 0;

          *(v45 + 16) = v91;
        }

        else
        {
          v190 = 0;
          type metadata accessor for AuthoringNode();
        }
      }

      else
      {
        v190 = v12;
      }

      v92 = v45;
      v93 = swift_allocObject();
      v95 = v194;
      v94 = v195;
      *(v93 + 16) = v194;
      *(v93 + 24) = v94;
      v96 = v186;

      v97 = v196;
      sub_1AF4410E4(v196, sub_1AF4410A8);

      v98 = swift_allocObject();
      *(v98 + 16) = v191;
      *(v98 + 24) = v97;
      *(v98 + 32) = v171;
      v99 = v192;
      *(v98 + 40) = v192;
      *(v98 + 48) = v96;
      v100 = v185;
      *(v98 + 56) = v185;
      *(v98 + 64) = v95;
      v101 = v188;
      *(v98 + 72) = v94;
      *(v98 + 80) = v101;
      v102 = v180;
      *(v98 + 88) = v180;
      v103 = swift_allocObject();
      *(v103 + 16) = sub_1AF449D8C;
      *(v103 + 24) = v98;
      *&v201 = v96;
      *(&v201 + 1) = v92;
      v202 = v100;
      v203 = sub_1AF449D50;
      v204 = v103;
      v205 = v102;
      swift_bridgeObjectRetain_n();

      v104 = v190;
      sub_1AF449CCC(&v201);
      v105 = v92;
      if (v104)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v29 = v181;
        return sub_1AF441284(v29);
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      *&v233[96] = v248;
      *&v233[112] = v249[0];
      *&v233[121] = *(v249 + 9);
      *&v233[32] = v244;
      *&v233[48] = v245;
      *&v233[64] = v246;
      *&v233[80] = v247;
      *v233 = v242;
      *&v233[16] = v243;
      sub_1AF4495B8(v233, &v217, sub_1AF448148);
      sub_1AF4495B8(v233, &v217, sub_1AF448148);
      v207 = *v233;
      v208 = *&v233[8];
      v209 = *&v233[24];
      v210 = *&v233[40];
      v211 = *&v233[56];
      v212 = *&v233[72];
      v213 = *&v233[88];
      v214 = *&v233[104];
      v215 = *&v233[120];
      v216 = v233[136];
      sub_1AF633BB4(&v207, v92, &v225);
      v240 = v231;
      v241[0] = v232[0];
      *(v241 + 9) = *(v232 + 9);
      v236 = v227;
      v237 = v228;
      v239 = v230;
      v238 = v229;
      v235 = v226;
      v234 = v225;
      v106 = sub_1AF448314(&v234);
      v29 = v181;
      if (v106 == 1)
      {
        v107 = v99;
        v223 = v231;
        v224[0] = v232[0];
        *(v224 + 9) = *(v232 + 9);
        v219 = v227;
        v220 = v228;
        v221 = v229;
        v222 = v230;
        v217 = v225;
        v218 = v226;
        sub_1AF44832C(&v217, &qword_1EB638CB0, sub_1AF448148);
        v108 = *(v99 + 8);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *(v99 + 8) = v108;
        v12 = 0;
        if ((v109 & 1) == 0)
        {
          v108 = sub_1AF422330(0, *(v108 + 2) + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          *(v99 + 8) = v108;
        }

        a5 = v186;
        v111 = *(v108 + 2);
        v110 = *(v108 + 3);
        if (v111 >= v110 >> 1)
        {
          *(v107 + 8) = sub_1AF422330(v110 > 1, v111 + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        sub_1AF44943C(v233, sub_1AF448148);
        v112 = *(v107 + 8);
        *(v112 + 16) = v111 + 1;
        *(v112 + 8 * v111 + 32) = v105;
        v44 = v188;
      }

      else
      {
        sub_1AF44943C(v233, sub_1AF448148);
        v223 = v231;
        v224[0] = v232[0];
        *(v224 + 9) = *(v232 + 9);
        v219 = v227;
        v220 = v228;
        v221 = v229;
        v222 = v230;
        v217 = v225;
        v218 = v226;
        sub_1AF44832C(&v217, &qword_1EB638CB0, sub_1AF448148);
        v44 = v188;
        v12 = 0;
        a5 = v186;
      }

      v113 = swift_isUniquelyReferenced_nonNull_native();
      *&v225 = *v44;
      v114 = v225;
      *v44 = 0x8000000000000000;
      v115 = sub_1AF0D3F10(v105);
      v117 = v116;
      v118 = *(v114 + 16) + ((v116 & 1) == 0);
      if (*(v114 + 24) >= v118)
      {
        if ((v113 & 1) == 0)
        {
          v153 = v115;
          sub_1AF843F7C();
          v115 = v153;
          v44 = v188;
        }
      }

      else
      {
        sub_1AF82BC4C(v118, v113);
        v115 = sub_1AF0D3F10(v105);
        if ((v117 & 1) != (v119 & 1))
        {
LABEL_122:
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
LABEL_123:
          LODWORD(v157) = 0;
          v156 = 156;
          sub_1AFDFE518();
          __break(1u);
LABEL_124:

          __break(1u);
          return result;
        }
      }

      v42 = v177;
      v120 = v225;
      if (v117)
      {
        *(*(v225 + 56) + v115) = 0;
      }

      else
      {
        *(v225 + 8 * (v115 >> 6) + 64) |= 1 << v115;
        *(v120[6] + 8 * v115) = v105;
        *(v120[7] + v115) = 0;
        ++v120[2];
      }

      *v44 = v120;

      if (v184)
      {
        goto LABEL_112;
      }

      sub_1AF3EEB38(v191, v196, v193 & 1, v105, a5, v185, v194, v195, v44, v192, v180);
      v197 = sub_1AF96CD1C(v105);
      if (v197)
      {
        v121 = *v166;
        v170 = v105;
        v122 = v160;
        v123 = v169;
        v121(v160, v105 + OBJC_IVAR____TtC3VFX4Node_authoringID, v169);
        v124 = v161;
        v121(v161, v122, v123);
        v125 = v185;

        v126 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v125;
        if ((v126 & 1) == 0)
        {
          v127 = sub_1AF4276E0(0, v125[2] + 1, 1, v125, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v190 = v127;
        v129 = v127[2];
        v128 = v127[3];
        if (v129 >= v128 >> 1)
        {
          v190 = sub_1AF4276E0(v128 > 1, v129 + 1, 1, v190, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v130 = MEMORY[0x1E69E7CC0];
        v131 = v178;
        (*(v178 + 8))(v122, v123);
        v132 = v190;
        v190[2] = v129 + 1;
        v133 = v132;
        (*(v131 + 32))(v132 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v129, v124, v123);
        v200[0] = sub_1AF439808(v130);
        v200[1] = v134;
        v135 = *(v197 + 16);
        v159 = v197 + 16;
        if (v167)
        {

          v44 = v188;
        }

        else
        {
          *&v217 = v130;
          type metadata accessor for Graph();
          v136 = swift_allocObject();
          *(v136 + 16) = v135;
          MEMORY[0x1EEE9AC00](v136, v137);
          MEMORY[0x1EEE9AC00](v138, v139);
          v156 = sub_1AF449D54;
          v157 = v140;
          swift_bridgeObjectRetain_n();
          *&v225 = sub_1AF42B0F4(v130);
          *(&v225 + 1) = v141;
          sub_1AF412D4C(sub_1AF449DD8, &v155, 1, 0x1000000000000000uLL, 0, v130, &v225);
          v44 = v188;
          v12 = 0;

          v135 = v217;
          v133 = v190;
        }

        v142 = sub_1AF0D4098(v130, sub_1AF44034C, sub_1AF0D3F10);
        v198 = v130;
        v199 = v142;
        if (v135 >> 62)
        {
          v143 = sub_1AFDFE108();
        }

        else
        {
          v143 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v196, sub_1AF4410A8);

        v144 = v135;
        if (v143)
        {
          v145 = 0;
          v146 = v135 & 0xC000000000000001;
          do
          {
            if (v146)
            {
              v147 = MEMORY[0x1B2719C70](v145, v135);
            }

            else
            {
              v147 = *(v135 + 8 * v145 + 32);
            }

            sub_1AF3DEAB4(&v225, v147, v191, v196, v193 & 1, v133, v194, v195, &v199, v200, &v198);
            ++v145;
            v223 = v231;
            v224[0] = v232[0];
            *(v224 + 9) = *(v232 + 9);
            v219 = v227;
            v220 = v228;
            v221 = v229;
            v222 = v230;
            v217 = v225;
            v218 = v226;
            sub_1AF44943C(&v217, sub_1AF448148);

            v133 = v190;
            v135 = v144;
          }

          while (v143 != v145);
        }

        sub_1AF4410E4(v196, sub_1AF441114);

        if (v198 >> 62)
        {
          v148 = sub_1AFDFE108();
        }

        else
        {
          v148 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v186;
        v29 = v181;
        v42 = v177;
        if (v148)
        {

          sub_1AF48F7F8(v149);
        }

        v105 = v170;
      }

      type metadata accessor for Node();
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for AuthoringNode();
LABEL_112:
        v231 = v248;
        v232[0] = v249[0];
        *(v232 + 9) = *(v249 + 9);
        v227 = v244;
        v228 = v245;
        v229 = v246;
        v230 = v247;
        v225 = v242;
        v226 = v243;
        sub_1AF44943C(&v225, sub_1AF448148);

        goto LABEL_13;
      }

      v151 = sub_1AF3D72E8(v150, v44);

      v231 = v248;
      v232[0] = v249[0];
      *(v232 + 9) = *(v249 + 9);
      v227 = v244;
      v228 = v245;
      v229 = v246;
      v230 = v247;
      v225 = v242;
      v226 = v243;
      sub_1AF44943C(&v225, sub_1AF448148);
      *(v105 + 16) = v151;

LABEL_13:
      v43 = v189;
LABEL_14:
      ++v43;
    }

    while (v43 != v42);
  }

LABEL_120:

  return sub_1AF441284(v29);
}

uint64_t sub_1AF3F0558(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v201 = a7;
  v202 = a8;
  v200 = a3;
  v191 = a1;
  v213 = *MEMORY[0x1E69E9840];
  v180 = sub_1AFDFC318();
  v185 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180, v17);
  v167 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v166 = &v165 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v169 = &v165 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v168 = &v165 - v28;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v203 = a2;
  v35 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v210, v27);
    v29 = v210[0];
    v30 = v210[1];
    v31 = v210[2];
    v32 = v210[3];
    v33 = v210[4];
    v34 = v210[5];
  }

  v175 = v34;
  v176 = v33;
  v177 = v32;
  v178 = v31;
  v179 = v30;
  v36 = a4[2];
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v193 = v29;
  v192 = a6;
  v189 = a5;
  if (v37)
  {
    v198 = v35;
    v199 = v11;
    *&v205 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v37, 0);
    v39 = 0;
    v38 = v205;
    v40 = *(v205 + 16);
    v41 = 16 * v40;
    do
    {
      v43 = *(v36 + v39 + 32);
      v42 = *(v36 + v39 + 40);
      *&v205 = v38;
      v44 = *(v38 + 24);

      if (v40 >= v44 >> 1)
      {
        sub_1AFC05E2C(v44 > 1, v40 + 1, 1);
        v38 = v205;
      }

      *(v38 + 16) = v40 + 1;
      v45 = v38 + v41 + v39;
      *(v45 + 32) = v43;
      *(v45 + 40) = v42;
      v39 += 16;
      ++v40;
      --v37;
    }

    while (v37);

    v12 = v199;
    v29 = v193;
    a5 = v189;
    LOBYTE(v35) = v198;
  }

  v46 = *(v38 + 16);
  if (!v46)
  {
LABEL_115:
    v159 = v29;

    v160 = v159;
    return sub_1AF441284(v160);
  }

  v47 = 0;
  v173 = v35 & 2;
  v48 = v173 | (v203 >> 2) & 1;
  v198 = a10;
  v197 = a9;
  v194 = v38 + 32;
  v174 = v29 + 32;
  v188 = a11;
  v172 = (v185 + 16);
  v171 = v185 + 8;
  v170 = v185 + 32;
  v181 = v200 & 1;
  v196 = v191 & 1;
  v184 = v46;
  v183 = v48;
  v182 = v38;
  while (1)
  {
    v49 = *(v194 + 16 * v47);
    if (!v49)
    {
      goto LABEL_13;
    }

    if (v29 && v47 < *(v29 + 16))
    {
      v50 = *(v174 + 8 * v47);
      sub_1AF4410A8(v50);
    }

    else
    {
      v50 = 0xA000000000000000;
    }

    if (v48)
    {
      if (v48 == 1)
      {
        v51 = sub_1AF9C5694(v50, v203 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v50);
        if (v51)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v50);
      }
    }

    else
    {
      v52 = sub_1AF9C5694(v50, v203);
      sub_1AF441114(v50);
      if (!v52)
      {
        goto LABEL_11;
      }
    }

    if (*(*v198 + 16))
    {
      sub_1AF0D3F10(v49);
      if (v53)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v54 = v197;
    if (*(*v197 + 16))
    {
      sub_1AF0D3F10(v49);
      if (v55)
      {
        goto LABEL_124;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = *v54;
    v57 = v205;
    *v54 = 0x8000000000000000;
    v58 = sub_1AF0D3F10(v49);
    v60 = v59;
    v61 = *(v57 + 16) + ((v59 & 1) == 0);
    if (*(v57 + 24) < v61)
    {
      sub_1AF82BC4C(v61, isUniquelyReferenced_nonNull_native);
      v58 = sub_1AF0D3F10(v49);
      if ((v60 & 1) != (v62 & 1))
      {
        break;
      }

LABEL_34:
      v63 = v205;
      if (v60)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v64 = v12;
    v65 = v58;
    sub_1AF843F7C();
    v58 = v65;
    v12 = v64;
    v63 = v205;
    if (v60)
    {
LABEL_35:
      *(v63[7] + v58) = 1;
      goto LABEL_38;
    }

LABEL_37:
    v63[(v58 >> 6) + 8] |= 1 << v58;
    *(v63[6] + 8 * v58) = v49;
    *(v63[7] + v58) = 1;
    ++v63[2];
LABEL_38:
    *v54 = v63;

    sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v186 = v66;
    v190 = v49;
    if (v191)
    {
      v199 = sub_1AF96CD1C(v49);
      if (v199)
      {
        v67 = v12;
        v68 = *v172;
        v69 = v168;
        v70 = v180;
        (*v172)(v168, v49 + OBJC_IVAR____TtC3VFX4Node_authoringID, v180);
        v71 = v169;
        v68(v169, v69, v70);

        v72 = v192;

        v73 = swift_isUniquelyReferenced_nonNull_native();
        v74 = v72;
        if ((v73 & 1) == 0)
        {
          v74 = sub_1AF4276E0(0, v72[2] + 1, 1, v72, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v195 = v74;
        v76 = v74[2];
        v75 = v74[3];
        if (v76 >= v75 >> 1)
        {
          v195 = sub_1AF4276E0(v75 > 1, v76 + 1, 1, v195, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v12 = v67;
        v77 = v185;
        (*(v185 + 8))(v69, v70);
        v78 = v195;
        v195[2] = v76 + 1;
        v79 = v78;
        (*(v77 + 32))(v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v71, v70);
        v80 = MEMORY[0x1E69E7CC0];
        *&v205 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
        *(&v205 + 1) = v81;
        v83 = v199 + 16;
        v82 = *(v199 + 16);
        if (v173)
        {
        }

        else
        {
          v204 = v80;
          type metadata accessor for Graph();
          v84 = swift_allocObject();
          *(v84 + 16) = v82;
          MEMORY[0x1EEE9AC00](v84, v85);
          MEMORY[0x1EEE9AC00](v86, v87);
          v163 = sub_1AF449D54;
          v164 = v88;
          swift_bridgeObjectRetain_n();
          v211 = sub_1AF42B0F4(v80);
          v212 = v89;
          sub_1AF412D4C(sub_1AF449DD8, &v162, 1, 0x1000000000000000uLL, 0, v80, &v211);
          if (v12)
          {
            goto LABEL_123;
          }

          v12 = 0;

          v82 = v204;
          v79 = v195;
        }

        v187 = v83;
        v211 = sub_1AF0D4098(v80, sub_1AF44034C, sub_1AF0D3F10);
        v204 = v80;
        if (v82 >> 62)
        {
          v90 = sub_1AFDFE108();
        }

        else
        {
          v90 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v203, sub_1AF4410A8);

        if (v90)
        {
          v91 = 0;
          while (1)
          {
            if ((v82 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x1B2719C70](v91, v82);
            }

            else
            {
              v92 = *(v82 + 8 * v91 + 32);
            }

            sub_1AF3DFFC4(v92, 1, v203, v200 & 1, v79, v201, v202, &v211, &v205, &v204);
            if (v12)
            {
              break;
            }

            ++v91;
            v79 = v195;
            if (v90 == v91)
            {
              goto LABEL_60;
            }
          }

          sub_1AF4410E4(v203, sub_1AF441114);

LABEL_117:

LABEL_118:
          v160 = v193;
          return sub_1AF441284(v160);
        }

LABEL_60:

        sub_1AF4410E4(v203, sub_1AF441114);

        if (v204 >> 62)
        {
          v93 = sub_1AFDFE108();
        }

        else
        {
          v93 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v189;
        v49 = v190;
        if (v93)
        {

          sub_1AF48F7F8(v94);
        }

        v54 = v197;
      }

      else
      {
      }

      sub_1AF3F0558(1, v203, v200 & 1, v49, a5, v192, v201, v202, v54, v198, v188);
      if (v12)
      {

        goto LABEL_118;
      }

      v187 = v47;
      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {

        v96 = sub_1AF3D72E8(v95, v54);

        *(v49 + 16) = v96;
      }

      else
      {
        type metadata accessor for AuthoringNode();
      }
    }

    else
    {
      v187 = v47;
    }

    v97 = v49;
    v98 = swift_allocObject();
    v100 = v201;
    v99 = v202;
    *(v98 + 16) = v201;
    *(v98 + 24) = v99;
    a5 = v189;

    v101 = v203;
    sub_1AF4410E4(v203, sub_1AF4410A8);

    v102 = swift_allocObject();
    *(v102 + 16) = v196;
    *(v102 + 24) = v101;
    *(v102 + 32) = v181;
    *(v102 + 40) = v198;
    *(v102 + 48) = a5;
    v103 = v192;
    *(v102 + 56) = v192;
    *(v102 + 64) = v100;
    v104 = v103;
    v105 = v197;
    *(v102 + 72) = v99;
    *(v102 + 80) = v105;
    v106 = v188;
    *(v102 + 88) = v188;
    v107 = swift_allocObject();
    *(v107 + 16) = sub_1AF449D94;
    *(v107 + 24) = v102;
    *&v205 = a5;
    *(&v205 + 1) = v97;
    v206 = v104;
    v207 = sub_1AF449D98;
    v208 = v107;
    v209 = v106;
    swift_bridgeObjectRetain_n();

    sub_1AF449E08(&v205, &v211);
    if (v12)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_117;
    }

    v108 = v211;
    v109 = v212;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v110 = v109;
    v111 = v190;
    sub_1AF633DE0(v108, v110, v190);
    v47 = v187;
    v48 = v183;
    if ((v112 & 0x100) != 0)
    {
      v113 = v198;
      v114 = v198[1];
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v113[1] = v114;
      if ((v115 & 1) == 0)
      {
        v114 = sub_1AF422330(0, *(v114 + 2) + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v113[1] = v114;
      }

      v117 = *(v114 + 2);
      v116 = *(v114 + 3);
      if (v117 >= v116 >> 1)
      {
        v114 = sub_1AF422330(v116 > 1, v117 + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v198[1] = v114;
      }

      *(v114 + 2) = v117 + 1;
      *&v114[8 * v117 + 32] = v111;
      v12 = 0;
    }

    v118 = v197;
    v119 = swift_isUniquelyReferenced_nonNull_native();
    *&v205 = *v118;
    v120 = v205;
    *v118 = 0x8000000000000000;
    v121 = sub_1AF0D3F10(v111);
    v123 = v122;
    v124 = *(v120 + 16) + ((v122 & 1) == 0);
    if (*(v120 + 24) >= v124)
    {
      if ((v119 & 1) == 0)
      {
        v157 = v12;
        v158 = v121;
        sub_1AF843F7C();
        v121 = v158;
        v12 = v157;
      }

      goto LABEL_81;
    }

    sub_1AF82BC4C(v124, v119);
    v121 = sub_1AF0D3F10(v111);
    if ((v123 & 1) != (v125 & 1))
    {
      break;
    }

LABEL_81:
    v46 = v184;
    v126 = v205;
    if (v123)
    {
      *(*(v205 + 56) + v121) = 0;
    }

    else
    {
      *(v205 + 8 * (v121 >> 6) + 64) |= 1 << v121;
      *(v126[6] + 8 * v121) = v111;
      *(v126[7] + v121) = 0;
      ++v126[2];
    }

    v127 = v197;
    *v197 = v126;

    if (v191)
    {
      goto LABEL_110;
    }

    sub_1AF3F0558(v196, v203, v200 & 1, v111, a5, v192, v201, v202, v127, v198, v188);
    v199 = sub_1AF96CD1C(v111);
    if (v199)
    {
      v128 = *v172;
      v129 = v166;
      v130 = v180;
      (*v172)(v166, v111 + OBJC_IVAR____TtC3VFX4Node_authoringID, v180);
      v131 = v167;
      v128(v167, v129, v130);
      v132 = v192;

      v133 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v132;
      if ((v133 & 1) == 0)
      {
        v134 = sub_1AF4276E0(0, v132[2] + 1, 1, v132, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v195 = v134;
      v136 = v134[2];
      v135 = v134[3];
      if (v136 >= v135 >> 1)
      {
        v195 = sub_1AF4276E0(v135 > 1, v136 + 1, 1, v195, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v12 = 0;
      v137 = v185;
      (*(v185 + 8))(v129, v130);
      v138 = v195;
      v195[2] = v136 + 1;
      v139 = v138;
      (*(v137 + 32))(v138 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v136, v131, v130);
      v140 = MEMORY[0x1E69E7CC0];
      *&v205 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
      *(&v205 + 1) = v141;
      v143 = v199 + 16;
      v142 = *(v199 + 16);
      if (v173)
      {
      }

      else
      {
        v204 = v140;
        type metadata accessor for Graph();
        v144 = swift_allocObject();
        *(v144 + 16) = v142;
        MEMORY[0x1EEE9AC00](v144, v145);
        MEMORY[0x1EEE9AC00](v146, v147);
        v163 = sub_1AF449D54;
        v164 = v148;
        swift_bridgeObjectRetain_n();
        v211 = sub_1AF42B0F4(v140);
        v212 = v149;
        sub_1AF412D4C(sub_1AF449DD8, &v162, 1, 0x1000000000000000uLL, 0, v140, &v211);
        v12 = 0;

        v142 = v204;
        v139 = v195;
      }

      v165 = v143;
      v211 = sub_1AF0D4098(v140, sub_1AF44034C, sub_1AF0D3F10);
      v204 = v140;
      if (v142 >> 62)
      {
        v150 = sub_1AFDFE108();
      }

      else
      {
        v150 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v203, sub_1AF4410A8);

      if (v150)
      {
        for (i = 0; i != v150; ++i)
        {
          if ((v142 & 0xC000000000000001) != 0)
          {
            v152 = MEMORY[0x1B2719C70](i, v142);
          }

          else
          {
            v152 = *(v142 + 8 * i + 32);
          }

          sub_1AF3DFFC4(v152, v196, v203, v200 & 1, v139, v201, v202, &v211, &v205, &v204);

          v139 = v195;
        }
      }

      sub_1AF4410E4(v203, sub_1AF441114);

      if (v204 >> 62)
      {
        v153 = sub_1AFDFE108();
      }

      else
      {
        v153 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a5 = v189;
      v46 = v184;
      v111 = v190;
      if (v153)
      {

        sub_1AF48F7F8(v154);
      }

      v48 = v183;
    }

    type metadata accessor for Node();
    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode();
LABEL_110:

      goto LABEL_12;
    }

    v156 = sub_1AF3D72E8(v155, v197);

    *(v111 + 16) = v156;

LABEL_12:
    v29 = v193;
LABEL_13:
    if (++v47 == v46)
    {
      goto LABEL_115;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_123:

  __break(1u);
LABEL_124:
  LODWORD(v164) = 0;
  v163 = 156;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F1D38(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v193 = a8;
  v192 = a7;
  v194 = a6;
  v189 = a1;
  v184 = sub_1AFDFC318();
  v180 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v15);
  v177 = v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v176 = v172 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v179 = v172 - v22;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v178 = v172 - v26;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v197 = a2;
  v33 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v211, v25);
    v27 = v211[0];
    v28 = v211[1];
    v29 = v211[2];
    v30 = v211[3];
    v31 = v211[4];
    v32 = v211[5];
  }

  v172[1] = v32;
  v172[2] = v31;
  v172[3] = v30;
  v172[4] = v29;
  v172[5] = v28;
  v34 = a4[2];
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v190 = a5;
  v195 = a3;
  v191 = v27;
  if (v35)
  {
    v204 = v33;
    *&v205 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v35, 0);
    v37 = 0;
    v36 = v205;
    v38 = *(v205 + 16);
    v39 = 16 * v38;
    do
    {
      v40 = *(v34 + v37 + 32);
      v41 = *(v34 + v37 + 40);
      *&v205 = v36;
      v42 = *(v36 + 24);

      if (v38 >= v42 >> 1)
      {
        sub_1AFC05E2C(v42 > 1, v38 + 1, 1);
        v36 = v205;
      }

      *(v36 + 16) = v38 + 1;
      v43 = v36 + v39 + v37;
      *(v43 + 32) = v40;
      *(v43 + 40) = v41;
      v37 += 16;
      ++v38;
      --v35;
    }

    while (v35);

    v27 = v191;
    LOBYTE(a3) = v195;
    LOBYTE(v33) = v204;
  }

  v44 = *(v36 + 16);
  if (!v44)
  {
LABEL_110:
    v169 = v27;

    v170 = v169;
    return sub_1AF441284(v170);
  }

  v45 = 0;
  v46 = v33 & 2 | (v197 >> 2) & 1;
  v196 = v36 + 32;
  v198 = a10;
  v199 = a9;
  v175 = v27 + 32;
  v188 = a11;
  v173 = (v180 + 16);
  v172[7] = v180 + 8;
  v172[6] = v180 + 32;
  v182 = a3 & 1;
  v187 = v189 & 1;
  v201 = xmmword_1AFE21110;
  v186 = v44;
  v185 = v46;
  v181 = v36;
  while (1)
  {
    v47 = *(v196 + 16 * v45);
    if (!v47)
    {
      goto LABEL_12;
    }

    if (v27 && v45 < *(v27 + 16))
    {
      v48 = *(v175 + 8 * v45);
      sub_1AF4410A8(v48);
    }

    else
    {
      v48 = 0xA000000000000000;
    }

    v204 = v47;
    if (!v46)
    {
      break;
    }

    if (v46 != 1)
    {
      sub_1AF441114(v48);
      goto LABEL_25;
    }

    v49 = sub_1AF9C5694(v48, v197 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v48);
    if (!v49)
    {
      goto LABEL_25;
    }

LABEL_11:

    v27 = v191;
LABEL_12:
    if (++v45 == v44)
    {
      goto LABEL_110;
    }
  }

  v50 = sub_1AF9C5694(v48, v197);
  sub_1AF441114(v48);
  if (!v50)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (*(*v198 + 16))
  {
    sub_1AF0D3F10(v204);
    if (v51)
    {
      goto LABEL_11;
    }
  }

  v52 = v199;
  if (*(*v199 + 16))
  {
    sub_1AF0D3F10(v204);
    v53 = v198;
    if (v54)
    {
      goto LABEL_122;
    }

    v55 = v194;
  }

  else
  {
    v55 = v194;
    v53 = v198;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = *v52;
  v57 = v205;
  *v52 = 0x8000000000000000;
  v58 = v204;
  v59 = sub_1AF0D3F10(v204);
  v61 = v60;
  v62 = *(v57 + 16) + ((v60 & 1) == 0);
  if (*(v57 + 24) >= v62)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v66 = v55;
    }

    else
    {
      v166 = v59;
      sub_1AF843F7C();
      v59 = v166;
      v53 = v198;
      v66 = v194;
    }

    v64 = v199;
    v65 = v204;
  }

  else
  {
    sub_1AF82BC4C(v62, isUniquelyReferenced_nonNull_native);
    v59 = sub_1AF0D3F10(v58);
    if ((v61 & 1) != (v63 & 1))
    {
      goto LABEL_121;
    }

    v64 = v199;
    v65 = v204;
    v66 = v55;
  }

  v67 = v195;
  v68 = v205;
  if (v61)
  {
    *(*(v205 + 56) + v59) = 1;
  }

  else
  {
    *(v205 + 8 * (v59 >> 6) + 64) |= 1 << v59;
    *(v68[6] + 8 * v59) = v65;
    *(v68[7] + v59) = 1;
    ++v68[2];
  }

  *v64 = v68;

  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v203 = v69;
  v202 = type metadata accessor for Node();
  v212 = v65;

  if ((v67 & 1) != 0 && v203 == v202)
  {
    v212 = sub_1AF96FB80(1);
  }

  if (v189)
  {
    v70 = v212;
    v71 = v190;
    v72 = sub_1AF96CD1C(v212);
    if (v72)
    {
      v73 = v72;
      v74 = *v173;
      v75 = v70 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v76 = v178;
      v77 = v184;
      (*v173)(v178, v75, v184);
      v74(v179, v76, v77);

      v78 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1AF4276E0(0, v66[2] + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v80 = v78[2];
      v79 = v78[3];
      if (v80 >= v79 >> 1)
      {
        v78 = sub_1AF4276E0(v79 > 1, v80 + 1, 1, v78, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v81 = v180;
      v82 = v184;
      (*(v180 + 8))(v178, v184);
      v78[2] = v80 + 1;
      (*(v81 + 32))(v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, v179, v82);
      v83 = v200;
      v84 = sub_1AF3FBEE4(v192, v193, 1, v197, v195 & 1, v78);
      v200 = v83;
      if (v83)
      {

LABEL_115:

        goto LABEL_118;
      }

      v86 = v84;
      v87 = v85;
      v174 = v73;

      v88 = v204;
      if (v203 == v202)
      {
        v90 = *(v87 + 16);
        if (v90)
        {
          *&v210 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v91 = 32;
          do
          {
            v92 = v201;
            if (*(v86 + 16))
            {
              v93 = sub_1AF0D3F10(*(v87 + v91));
              v92 = v201;
              if (v94)
              {
                v183 = *(*(v86 + 56) + 16 * v93);

                v92 = v183;
              }
            }

            v205 = v92;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v91 += 8;
            --v90;
          }

          while (v90);

          v95 = v210;
          v66 = v194;
        }

        else
        {

          v95 = MEMORY[0x1E69E7CC0];
        }

        v67 = v195;
        v96 = v212;
        type metadata accessor for Graph();
        v97 = swift_allocObject();
        *(v97 + 16) = v95;
        *(v96 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v97;

        v89 = v190;
        v53 = v198;
        v64 = v199;
        v88 = v204;
      }

      else
      {

        v89 = v190;
        v53 = v198;
        v64 = v199;
        v67 = v195;
      }
    }

    else
    {
      v88 = v204;
      v89 = v71;
    }

    v98 = v200;
    sub_1AF3F1D38(1, v197, v67 & 1, v88, v89, v66, v192, v193, v64, v53, v188);
    v200 = v98;
    if (v98)
    {
      goto LABEL_115;
    }

    if (swift_dynamicCastMetatype())
    {
      v99 = v212;

      v101 = v200;
      v102 = sub_1AF3D7490(v100, v64, v53);
      v200 = v101;

      v99[2] = v102;
    }

    else
    {
      type metadata accessor for AuthoringNode();
    }
  }

  v103 = swift_allocObject();
  v104 = v192;
  v105 = v193;
  *(v103 + 16) = v192;
  *(v103 + 24) = v105;
  v106 = v190;

  v107 = v197;
  sub_1AF4410E4(v197, sub_1AF4410A8);

  v108 = swift_allocObject();
  *(v108 + 16) = v187;
  *(v108 + 24) = v107;
  *(v108 + 32) = v182;
  v109 = v198;
  *(v108 + 40) = v198;
  *(v108 + 48) = v106;
  v110 = v194;
  *(v108 + 56) = v194;
  *(v108 + 64) = v104;
  v111 = v199;
  *(v108 + 72) = v105;
  *(v108 + 80) = v111;
  v112 = v188;
  *(v108 + 88) = v188;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1AF449D84;
  *(v113 + 24) = v108;
  *&v205 = v106;
  *(&v205 + 1) = v212;
  v206 = v110;
  v207 = sub_1AF449D88;
  v208 = v113;
  v209 = v112;
  swift_bridgeObjectRetain_n();

  v114 = v200;
  sub_1AF449DF0(&v205, &v210);
  v200 = v114;
  if (v114)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    goto LABEL_119;
  }

  v115 = v210;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  swift_bridgeObjectRetain_n();
  v116 = sub_1AF633F0C(v115, *(&v115 + 1), v204);
  if (v117 == 1)
  {
    v118 = v109[1];
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v109[1] = v118;
    v120 = v195;
    if ((v119 & 1) == 0)
    {
      v118 = sub_1AF422330(0, *(v118 + 2) + 1, 1, v118, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v109[1] = v118;
    }

    v122 = *(v118 + 2);
    v121 = *(v118 + 3);
    if (v122 >= v121 >> 1)
    {
      v167 = sub_1AF422330(v121 > 1, v122 + 1, 1, v118, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v198[1] = v167;
    }

    v123 = v198[1];
    *(v123 + 16) = v122 + 1;
    *(v123 + 8 * v122 + 32) = v204;
  }

  else
  {
    v124 = v116;
    v125 = v117;

    sub_1AF447EB0(v124, v125);
    v120 = v195;
  }

  if (v203 == v202)
  {
    v205 = v115;

    swift_dynamicCast();
  }

  v126 = v199;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  *&v205 = *v126;
  v128 = v205;
  *v126 = 0x8000000000000000;
  v129 = v204;
  v130 = sub_1AF0D3F10(v204);
  v132 = v131;
  v133 = *(v128 + 16) + ((v131 & 1) == 0);
  if (*(v128 + 24) >= v133)
  {
    if ((v127 & 1) == 0)
    {
      v168 = v130;
      sub_1AF843F7C();
      v130 = v168;
    }

LABEL_81:
    v44 = v186;
    v46 = v185;
    v135 = v204;
    v136 = v205;
    if (v132)
    {
      *(*(v205 + 56) + v130) = 0;
    }

    else
    {
      *(v205 + 8 * (v130 >> 6) + 64) |= 1 << v130;
      *(v136[6] + 8 * v130) = v135;
      *(v136[7] + v130) = 0;
      ++v136[2];
    }

    v137 = v199;
    *v199 = v136;

    if ((v189 & 1) == 0)
    {
      v138 = v200;
      sub_1AF3F1D38(v187, v197, v120 & 1, v135, v190, v194, v192, v193, v137, v198, v188);
      v200 = v138;
      if (v138)
      {
        goto LABEL_117;
      }

      v139 = v212;
      v174 = sub_1AF96CD1C(v212);
      if (v174)
      {
        v140 = *v173;
        v141 = v139 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v142 = v176;
        v143 = v184;
        (*v173)(v176, v141, v184);
        v140(v177, v142, v143);
        v144 = v194;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v144 = sub_1AF4276E0(0, v194[2] + 1, 1, v194, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v146 = v144[2];
        v145 = v144[3];
        if (v146 >= v145 >> 1)
        {
          v144 = sub_1AF4276E0(v145 > 1, v146 + 1, 1, v144, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v147 = v180;
        v148 = v184;
        (*(v180 + 8))(v176, v184);
        v144[2] = v146 + 1;
        (*(v147 + 32))(v144 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v146, v177, v148);
        v149 = v200;
        v150 = sub_1AF3FBEE4(v192, v193, v187, v197, v195 & 1, v144);
        v200 = v149;
        if (v149)
        {

LABEL_117:

LABEL_118:

LABEL_119:

          v170 = v191;
          return sub_1AF441284(v170);
        }

        v152 = v150;
        v153 = v151;

        if (v203 == v202)
        {
          v154 = *(v153 + 16);
          if (v154)
          {
            v172[0] = *(&v115 + 1);
            *&v210 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v155 = 32;
            do
            {
              v156 = v201;
              if (*(v152 + 16))
              {
                v157 = sub_1AF0D3F10(*(v153 + v155));
                v156 = v201;
                if (v158)
                {
                  v183 = *(*(v152 + 56) + 16 * v157);

                  v156 = v183;
                }
              }

              v205 = v156;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v155 += 8;
              --v154;
            }

            while (v154);

            v159 = v210;
          }

          else
          {

            v159 = MEMORY[0x1E69E7CC0];
          }

          v160 = v212;
          type metadata accessor for Graph();
          v161 = swift_allocObject();
          *(v161 + 16) = v159;
          *(v160 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v161;
        }

        else
        {
        }

        v44 = v186;
        v46 = v185;
      }

      if (swift_dynamicCastMetatype())
      {
        v162 = v212;

        v164 = v200;
        v165 = sub_1AF3D7490(v163, v199, v198);
        v200 = v164;

        v162[2] = v165;
        v46 = v185;
        v44 = v186;

LABEL_108:

        goto LABEL_11;
      }

      type metadata accessor for AuthoringNode();
    }

    goto LABEL_108;
  }

  sub_1AF82BC4C(v133, v127);
  v130 = sub_1AF0D3F10(v129);
  if ((v132 & 1) == (v134 & 1))
  {
    goto LABEL_81;
  }

LABEL_121:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_122:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F32D0(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v171 = a7;
  v172 = a8;
  v164 = a6;
  v170 = a3;
  LODWORD(v15) = a1;
  v181[1] = *MEMORY[0x1E69E9840];
  v157 = sub_1AFDFC318();
  v155 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v16);
  v142 = v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v141 = v137 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v151 = v137 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v150 = v137 - v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v173 = a2;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v180, v26);
    v28 = v180[0];
    v29 = v180[1];
    v30 = v180[2];
    v31 = v180[3];
    v32 = v180[4];
    v33 = v180[5];
  }

  v144 = v33;
  v145 = v32;
  v146 = v31;
  v147 = v30;
  v148 = v29;
  v34 = sub_1AF97228C();
  v35 = *(v34 + 16);
  v143 = v34;
  if (!v35)
  {
    v38 = v28;
LABEL_105:

    return sub_1AF441284(v38);
  }

  v36 = 0;
  v139 = (a2 >> 59) & 2;
  v37 = v139 | (v173 >> 2) & 1;
  v168 = a10;
  v167 = a9;
  v165 = v34 + 32;
  v38 = v28;
  v140 = v28 + 32;
  v161 = a11;
  v138 = (v155 + 16);
  v137[3] = v155 + 8;
  v137[2] = v155 + 32;
  v152 = v170 & 1;
  v166 = v15 & 1;
  v163 = v28;
  v160 = a5;
  v154 = v15;
  v153 = v35;
  v156 = v37;
  while (1)
  {
    v39 = *(v165 + 16 * v36);
    if (!v39)
    {
      goto LABEL_6;
    }

    if (v38 && v36 < *(v38 + 16))
    {
      v40 = *(v140 + 8 * v36);
      sub_1AF4410A8(v40);
    }

    else
    {
      v40 = 0xA000000000000000;
    }

    if (v37)
    {
      break;
    }

    v42 = sub_1AF9C5694(v40, v173);
    sub_1AF441114(v40);
    if (v42)
    {
      goto LABEL_19;
    }

LABEL_5:

    v38 = v163;
LABEL_6:
    if (++v36 == v35)
    {
      goto LABEL_105;
    }
  }

  if (v37 == 1)
  {
    v41 = sub_1AF9C5694(v40, v173 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v40);
    if (!v41)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v40);
LABEL_19:
  if (*(*v168 + 16))
  {
    sub_1AF0D3F10(v39);
    if (v43)
    {
      goto LABEL_5;
    }
  }

  v44 = v167;
  if (*(*v167 + 16))
  {
    sub_1AF0D3F10(v39);
    if (v45)
    {
      goto LABEL_113;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v175 = *v44;
  v47 = v175;
  *v44 = 0x8000000000000000;
  v48 = sub_1AF0D3F10(v39);
  v50 = v49;
  v51 = *(v47 + 16) + ((v49 & 1) == 0);
  if (*(v47 + 24) >= v51)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v54 = v48;
    sub_1AF843F7C();
    v48 = v54;
    v53 = v175;
    if ((v50 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    *(v53[7] + v48) = 1;
  }

  else
  {
    sub_1AF82BC4C(v51, isUniquelyReferenced_nonNull_native);
    v48 = sub_1AF0D3F10(v39);
    if ((v50 & 1) != (v52 & 1))
    {
      goto LABEL_112;
    }

LABEL_27:
    v53 = v175;
    if (v50)
    {
      goto LABEL_28;
    }

LABEL_30:
    v53[(v48 >> 6) + 8] |= 1 << v48;
    *(v53[6] + 8 * v48) = v39;
    *(v53[7] + v48) = 1;
    ++v53[2];
  }

  *v44 = v53;

  sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
  v158 = v55;
  if (v15)
  {
    v169 = sub_1AF96D010(v39);
    if (v169)
    {
      v56 = *v138;
      v57 = v150;
      v58 = v157;
      (*v138)(v150, v39 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v157);
      v56(v151, v57, v58);

      v59 = v164;

      v60 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1AF4276E0(0, v59[2] + 1, 1, v59, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v62 = v60[2];
      v61 = v60[3];
      v149 = v39;
      if (v62 >= v61 >> 1)
      {
        v60 = sub_1AF4276E0(v61 > 1, v62 + 1, 1, v60, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v63 = v155;
      v64 = v157;
      (*(v155 + 8))(v150, v157);
      v60[2] = v62 + 1;
      (*(v63 + 32))(v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v151, v64);
      *&v175 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
      *(&v175 + 1) = v65;
      v66 = *(v169 + 24);
      v162 = v169 + 24;

      if (!v139)
      {
        v67 = sub_1AF42B320(v66, 0);

        v66 = v67;
      }

      v68 = MEMORY[0x1E69E7CC0];
      v181[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
      v174 = v68;
      if (v66 >> 62)
      {
        v69 = sub_1AFDFE108();
      }

      else
      {
        v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v173, sub_1AF4410A8);

      if (v69)
      {
        v70 = 0;
        while (1)
        {
          if ((v66 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x1B2719C70](v70, v66);
          }

          else
          {
            v71 = *(v66 + 8 * v70 + 32);
          }

          sub_1AF3E2468(v71, 1, v173, v170 & 1, v60, v171, v172, v181, &v175, &v174);
          if (v11)
          {
            break;
          }

          if (v69 == ++v70)
          {
            goto LABEL_50;
          }
        }

        sub_1AF4410E4(v173, sub_1AF441114);

LABEL_107:

LABEL_108:
        v38 = v163;
        return sub_1AF441284(v38);
      }

LABEL_50:

      sub_1AF4410E4(v173, sub_1AF441114);

      if (v174 >> 62)
      {
        v72 = sub_1AFDFE108();
      }

      else
      {
        v72 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = v164;
      v74 = v168;
      v44 = v167;
      if (v72)
      {

        sub_1AF48F6CC(v75);
      }

      a5 = v160;
      v39 = v149;
    }

    else
    {

      v74 = v168;
      v73 = v164;
    }

    sub_1AF3F32D0(1, v173, v170 & 1, v39, a5, v73, v171, v172, v44, v74, v161);
    if (v11)
    {

      goto LABEL_108;
    }

    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    v76 = swift_dynamicCastMetatype();
    v159 = v36;
    if (v76)
    {
      v77 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v79 = sub_1AF3D6B1C(v78, v44, v168, sub_1AF3FDCB4);

      *(v39 + v77) = v79;
    }
  }

  else
  {
    v159 = v36;
  }

  v80 = v39;
  v81 = swift_allocObject();
  v83 = v171;
  v82 = v172;
  *(v81 + 16) = v171;
  *(v81 + 24) = v82;

  v84 = v173;
  sub_1AF4410E4(v173, sub_1AF4410A8);

  v85 = a5;
  v86 = swift_allocObject();
  *(v86 + 16) = v166;
  *(v86 + 24) = v84;
  *(v86 + 32) = v152;
  v87 = v168;
  *(v86 + 40) = v168;
  *(v86 + 48) = v85;
  v88 = v164;
  *(v86 + 56) = v164;
  *(v86 + 64) = v83;
  v89 = v167;
  *(v86 + 72) = v82;
  *(v86 + 80) = v89;
  v90 = v161;
  *(v86 + 88) = v161;
  v91 = swift_allocObject();
  *(v91 + 16) = sub_1AF449DA0;
  *(v91 + 24) = v86;
  *&v175 = v85;
  *(&v175 + 1) = v80;
  v176 = v88;
  v177 = sub_1AF449D48;
  v178 = v91;
  v179 = v90;
  swift_bridgeObjectRetain_n();

  sub_1AF449DC0(&v175, v181);
  v92 = v80;
  if (v11)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    goto LABEL_107;
  }

  v93 = v181[0];
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v94 = swift_retain_n();
  v95 = sub_1AF634138(v94, v80);
  v162 = v93;
  if (v95 == 1)
  {
    v96 = v87[1];
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v87[1] = v96;
    a5 = v160;
    LOBYTE(v15) = v154;
    v35 = v153;
    v36 = v159;
    if ((v97 & 1) == 0)
    {
      v96 = sub_1AF422330(0, *(v96 + 2) + 1, 1, v96, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v87[1] = v96;
    }

    v99 = *(v96 + 2);
    v98 = *(v96 + 3);
    if (v99 >= v98 >> 1)
    {
      v134 = sub_1AF422330(v98 > 1, v99 + 1, 1, v96, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v168[1] = v134;
    }

    v100 = v168[1];
    *(v100 + 16) = v99 + 1;
    *(v100 + 8 * v99 + 32) = v92;
  }

  else
  {
    v101 = v95;

    sub_1AF0DB74C(v101);
    a5 = v160;
    LOBYTE(v15) = v154;
    v35 = v153;
    v36 = v159;
  }

  v102 = v167;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  *&v175 = *v102;
  v104 = v175;
  *v102 = 0x8000000000000000;
  v105 = sub_1AF0D3F10(v92);
  v107 = v106;
  v108 = *(v104 + 16) + ((v106 & 1) == 0);
  if (*(v104 + 24) >= v108)
  {
    if ((v103 & 1) == 0)
    {
      v135 = v105;
      sub_1AF843F7C();
      v105 = v135;
    }

    goto LABEL_72;
  }

  sub_1AF82BC4C(v108, v103);
  v105 = sub_1AF0D3F10(v92);
  if ((v107 & 1) == (v109 & 1))
  {
LABEL_72:
    v37 = v156;
    v110 = v175;
    if (v107)
    {
      *(*(v175 + 56) + v105) = 0;
    }

    else
    {
      *(v175 + 8 * (v105 >> 6) + 64) |= 1 << v105;
      *(v110[6] + 8 * v105) = v92;
      *(v110[7] + v105) = 0;
      ++v110[2];
    }

    v111 = v167;
    *v167 = v110;

    v38 = v163;
    if (v15)
    {
      goto LABEL_99;
    }

    sub_1AF3F32D0(v166, v173, v170 & 1, v92, a5, v164, v171, v172, v111, v168, v161);
    v169 = sub_1AF96D010(v92);
    if (v169)
    {
      v112 = *v138;
      v113 = v141;
      v114 = v157;
      (*v138)(v141, v92 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v157);
      v112(v142, v113, v114);
      v115 = v164;

      v116 = v115;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_1AF4276E0(0, v115[2] + 1, 1, v115, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v118 = v116[2];
      v117 = v116[3];
      if (v118 >= v117 >> 1)
      {
        v116 = sub_1AF4276E0(v117 > 1, v118 + 1, 1, v116, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v119 = v155;
      v120 = v157;
      (*(v155 + 8))(v141, v157);
      v116[2] = v118 + 1;
      (*(v119 + 32))(v116 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v118, v142, v120);
      *&v175 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
      *(&v175 + 1) = v121;
      v122 = *(v169 + 24);
      v137[1] = v169 + 24;

      if (!v139)
      {
        v123 = sub_1AF42B320(v122, 0);

        v122 = v123;
      }

      v124 = MEMORY[0x1E69E7CC0];
      v181[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
      v174 = v124;
      if (v122 >> 62)
      {
        v125 = sub_1AFDFE108();
      }

      else
      {
        v125 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v149 = v92;
      sub_1AF4410E4(v173, sub_1AF4410A8);

      if (v125)
      {
        for (i = 0; i != v125; ++i)
        {
          if ((v122 & 0xC000000000000001) != 0)
          {
            v127 = MEMORY[0x1B2719C70](i, v122);
          }

          else
          {
            v127 = *(v122 + 8 * i + 32);
          }

          sub_1AF3E2468(v127, v166, v173, v170 & 1, v116, v171, v172, v181, &v175, &v174);
        }
      }

      sub_1AF4410E4(v173, sub_1AF441114);

      if (v174 >> 62)
      {
        v128 = sub_1AFDFE108();
      }

      else
      {
        v128 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LOBYTE(v15) = v154;
      v92 = v149;
      v37 = v156;
      if (v128)
      {

        sub_1AF48F6CC(v129);
      }

      v38 = v163;
      a5 = v160;
      v35 = v153;
    }

    type metadata accessor for Node();
    type metadata accessor for AuthoringNode();
    if (!swift_dynamicCastMetatype())
    {
LABEL_99:
    }

    else
    {
      v130 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v132 = v15;
      v15 = v38;
      v133 = sub_1AF3D6B1C(v131, v167, v168, sub_1AF3FDCB4);

      *(v92 + v130) = v133;
      v38 = v15;
      LOBYTE(v15) = v132;
      a5 = v160;
      v37 = v156;
    }

    goto LABEL_6;
  }

LABEL_112:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_113:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F4928(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v167 = a8;
  v166 = a7;
  v169 = a3;
  v165 = a1;
  v158 = sub_1AFDFC318();
  v152 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v16);
  v149 = v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v148 = v145 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v151 = v145 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v150 = v145 - v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v173 = a2;
  v34 = a2 >> 59;
  if ((v34 & 2) == 0)
  {
    (*(*a4 + 152))(v181, v26);
    v28 = v181[0];
    v29 = v181[1];
    v30 = v181[2];
    v31 = v181[3];
    v32 = v181[4];
    v33 = v181[5];
  }

  v145[1] = v33;
  v145[2] = v32;
  v145[3] = v31;
  v145[4] = v30;
  v145[5] = v29;
  v35 = a4[2];
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v171 = v28;
  v168 = a6;
  v163 = a5;
  v174 = v11;
  if (v36)
  {
    v175 = v34;
    *&v176 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v36, 0);
    v38 = 0;
    v34 = v176;
    v39 = *(v176 + 16);
    v40 = 16 * v39;
    do
    {
      v41 = *(v35 + v38 + 32);
      v42 = *(v35 + v38 + 40);
      *&v176 = v34;
      v43 = *(v34 + 24);

      if (v39 >= v43 >> 1)
      {
        sub_1AFC05E2C(v43 > 1, v39 + 1, 1);
        v34 = v176;
      }

      *(v34 + 16) = v39 + 1;
      v44 = v34 + v40 + v38;
      *(v44 + 32) = v41;
      *(v44 + 40) = v42;
      v38 += 16;
      ++v39;
      --v36;
    }

    while (v36);

    v37 = v34;
    v28 = v171;
    a5 = v163;
    LOBYTE(v34) = v175;
  }

  v45 = *(v37 + 16);
  if (!v45)
  {
LABEL_96:

    return sub_1AF441284(v28);
  }

  v46 = 0;
  v47 = v34 & 2 | (v173 >> 2) & 1;
  v48 = v37 + 32;
  v49 = a9;
  v172 = a10;
  v147 = v28 + 32;
  v162 = a11;
  v146 = (v152 + 16);
  v145[7] = v152 + 8;
  v145[6] = v152 + 32;
  v155 = v169 & 1;
  v160 = v165 & 1;
  v164 = v37;
  v157 = v45;
  v159 = v47;
  v156 = v37 + 32;
  v154 = a9;
  while (1)
  {
    v50 = *(v48 + 16 * v46);
    if (!v50)
    {
      goto LABEL_12;
    }

    if (v28 && v46 < *(v28 + 16))
    {
      v51 = *(v147 + 8 * v46);
      sub_1AF4410A8(v51);
    }

    else
    {
      v51 = 0xA000000000000000;
    }

    v175 = v50;
    if (v47)
    {
      if (v47 == 1)
      {
        v52 = sub_1AF9C5694(v51, v173 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v51);
        if (v52)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1AF441114(v51);
      }
    }

    else
    {
      v53 = sub_1AF9C5694(v51, v173);
      sub_1AF441114(v51);
      if (!v53)
      {
        goto LABEL_27;
      }
    }

    v54 = v175;
    if (*(*v172 + 16))
    {
      sub_1AF0D3F10(v175);
      if (v55)
      {
LABEL_27:

        v28 = v171;
        goto LABEL_12;
      }
    }

    if (*(*v49 + 16))
    {
      sub_1AF0D3F10(v54);
      v56 = v174;
      if (v57)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v56 = v174;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v176 = *v49;
    v59 = v176;
    *v49 = 0x8000000000000000;
    v60 = sub_1AF0D3F10(v54);
    v62 = v61;
    v63 = *(v59 + 16) + ((v61 & 1) == 0);
    if (*(v59 + 24) >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v141 = v60;
        sub_1AF843F7C();
        v60 = v141;
        v54 = v175;
      }
    }

    else
    {
      sub_1AF82BC4C(v63, isUniquelyReferenced_nonNull_native);
      v60 = sub_1AF0D3F10(v54);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_104;
      }
    }

    v65 = v172;
    v66 = v176;
    if (v62)
    {
      *(*(v176 + 56) + v60) = 1;
    }

    else
    {
      *(v176 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      *(v66[6] + 8 * v60) = v54;
      *(v66[7] + v60) = 1;
      ++v66[2];
    }

    *v49 = v66;

    v170 = v54;
    if (v169)
    {
      v170 = sub_1AF96FB80(1);
    }

    v161 = v46;
    if (v165)
    {
      v67 = v170;
      v153 = sub_1AF96CD1C(v170);
      if (v153)
      {
        v68 = *v146;
        v69 = v67 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v70 = v150;
        v71 = v158;
        (*v146)(v150, v69, v158);
        v68(v151, v70, v71);
        v72 = v168;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1AF4276E0(0, v168[2] + 1, 1, v168, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v74 = v72[2];
        v73 = v72[3];
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1AF4276E0(v73 > 1, v74 + 1, 1, v72, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v75 = v152;
        v76 = v158;
        (*(v152 + 8))(v150, v158);
        v72[2] = v74 + 1;
        (*(v75 + 32))(v72 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74, v151, v76);
        v77 = sub_1AF3FC1C0(v166, v167, 1, v173, v169 & 1, v72);
        if (v56)
        {

LABEL_102:
          v28 = v171;
          return sub_1AF441284(v28);
        }

        v79 = v77;
        v80 = v78;

        v81 = *(v80 + 16);
        v28 = v171;
        if (v81)
        {
          v174 = 0;
          *&v176 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v82 = 32;
          do
          {
            if (*(v79 + 16))
            {
              sub_1AF0D3F10(*(v80 + v82));
              if (v83)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v82 += 8;
            --v81;
          }

          while (v81);

          v87 = v176;
          v56 = v174;
          v28 = v171;
        }

        else
        {

          v87 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for Graph();
        v89 = swift_allocObject();
        v89->cache = v87;
        *(v170 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v89;

        v88 = v168;
        a5 = v163;
        v65 = v172;
        v54 = v175;
      }

      else
      {
        v28 = v171;
        v88 = v168;
      }

      sub_1AF3F4928(1, v173, v169 & 1, v54, a5, v88, v166, v167, v49, v65, v162);
      if (v56)
      {

LABEL_100:

        return sub_1AF441284(v28);
      }

      v86 = v170;

      v91 = sub_1AF3D76CC(v90, v49, v65);
      v174 = 0;

      v86[2] = v91;

      v84 = v49;
      v85 = v65;
    }

    else
    {
      v84 = v49;
      v85 = v65;
      v174 = v56;
      v86 = v170;
    }

    v92 = swift_allocObject();
    v93 = v166;
    v94 = v167;
    *(v92 + 16) = v166;
    *(v92 + 24) = v94;

    v95 = v173;
    sub_1AF4410E4(v173, sub_1AF4410A8);

    v96 = a5;
    v97 = swift_allocObject();
    *(v97 + 16) = v160;
    *(v97 + 24) = v95;
    *(v97 + 32) = v155;
    *(v97 + 40) = v85;
    *(v97 + 48) = v96;
    v98 = v168;
    *(v97 + 56) = v168;
    *(v97 + 64) = v93;
    *(v97 + 72) = v94;
    *(v97 + 80) = v84;
    v99 = v162;
    *(v97 + 88) = v162;
    v100 = swift_allocObject();
    *(v100 + 16) = sub_1AF449D80;
    *(v100 + 24) = v97;
    *&v176 = v96;
    *(&v176 + 1) = v86;
    v177 = v98;
    v178 = sub_1AF449D48;
    v179 = v100;
    v180 = v99;
    swift_bridgeObjectRetain_n();

    v101 = v174;
    sub_1AF449DC0(&v176, &v182);
    v174 = v101;
    if (v101)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_102;
    }

    v102 = v182;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v103 = swift_retain_n();
    if (sub_1AF634178(v103, v175))
    {

      a5 = v163;
      v49 = v154;
      v46 = v161;
      v104 = v175;
    }

    else
    {
      v105 = v85[1];
      v106 = swift_isUniquelyReferenced_nonNull_native();
      v85[1] = v105;
      a5 = v163;
      v49 = v154;
      v46 = v161;
      if ((v106 & 1) == 0)
      {
        v105 = sub_1AF422330(0, *(v105 + 2) + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v172[1] = v105;
      }

      v108 = *(v105 + 2);
      v107 = *(v105 + 3);
      if (v108 >= v107 >> 1)
      {
        v143 = sub_1AF422330(v107 > 1, v108 + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v172[1] = v143;
      }

      v109 = v172[1];
      *(v109 + 16) = v108 + 1;
      v104 = v175;
      *(v109 + 8 * v108 + 32) = v175;
    }

    v170 = v102;

    v110 = swift_isUniquelyReferenced_nonNull_native();
    *&v176 = *v49;
    v111 = v176;
    *v49 = 0x8000000000000000;
    v112 = sub_1AF0D3F10(v104);
    v114 = v113;
    v115 = *(v111 + 16) + ((v113 & 1) == 0);
    if (*(v111 + 24) < v115)
    {
      break;
    }

    if ((v110 & 1) == 0)
    {
      v142 = v112;
      sub_1AF843F7C();
      v112 = v142;
      v104 = v175;
    }

LABEL_75:
    v28 = v171;
    v48 = v156;
    v117 = v176;
    v47 = v159;
    if (v114)
    {
      *(*(v176 + 56) + v112) = 0;
    }

    else
    {
      *(v176 + 8 * (v112 >> 6) + 64) |= 1 << v112;
      *(v117[6] + 8 * v112) = v104;
      *(v117[7] + v112) = 0;
      ++v117[2];
    }

    *v49 = v117;

    v45 = v157;
    if (v165)
    {
    }

    else
    {
      v118 = v174;
      sub_1AF3F4928(v160, v173, v169 & 1, v104, a5, v168, v166, v167, v49, v172, v162);
      if (v118)
      {

        goto LABEL_100;
      }

      v119 = v28;
      v120 = v170;
      v153 = sub_1AF96CD1C(v170);
      if (v153)
      {
        v121 = *v146;
        v122 = v148;
        v123 = v158;
        (*v146)(v148, v120 + OBJC_IVAR____TtC3VFX4Node_authoringID, v158);
        v121(v149, v122, v123);
        v124 = v168;

        v125 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v125 = sub_1AF4276E0(0, v124[2] + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v127 = v125[2];
        v126 = v125[3];
        if (v127 >= v126 >> 1)
        {
          v125 = sub_1AF4276E0(v126 > 1, v127 + 1, 1, v125, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v128 = v152;
        v129 = v158;
        (*(v152 + 8))(v148, v158);
        v125[2] = v127 + 1;
        (*(v128 + 32))(v125 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v127, v149, v129);
        v130 = sub_1AF3FC1C0(v166, v167, v160, v173, v169 & 1, v125);
        v174 = 0;
        v131 = v130;
        v133 = v132;

        v134 = *(v133 + 16);
        if (v134)
        {
          *&v176 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v135 = 32;
          do
          {
            if (*(v131 + 16))
            {
              sub_1AF0D3F10(*(v133 + v135));
              if (v136)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v135 += 8;
            --v134;
          }

          while (v134);

          v137 = v176;
        }

        else
        {

          v137 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for Graph();
        v138 = swift_allocObject();
        v138->cache = v137;
        v120 = v170;
        *(v170 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v138;

        v118 = v174;
        v119 = v171;
        v45 = v157;
        v47 = v159;
        v48 = v156;
      }

      else
      {
        v47 = v159;
      }

      v140 = sub_1AF3D76CC(v139, v49, v172);
      v174 = v118;

      v120[2] = v140;

      v28 = v119;
      a5 = v163;
    }

LABEL_12:
    if (++v46 == v45)
    {
      goto LABEL_96;
    }
  }

  sub_1AF82BC4C(v115, v110);
  v112 = sub_1AF0D3F10(v104);
  if ((v114 & 1) == (v116 & 1))
  {
    goto LABEL_75;
  }

LABEL_104:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_105:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F5CE4(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v203 = a7;
  v204 = a8;
  v202 = a3;
  v193 = a1;
  v215 = *MEMORY[0x1E69E9840];
  v183 = sub_1AFDFC318();
  v187 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v17);
  v170 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v169 = &v168 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v172 = &v168 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v171 = &v168 - v28;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v205 = a2;
  v201 = (a2 >> 59);
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v212, v27);
    v29 = v212[0];
    v30 = v212[1];
    v31 = v212[2];
    v32 = v212[3];
    v33 = v212[4];
    v34 = v212[5];
  }

  v178 = v34;
  v179 = v33;
  v180 = v32;
  v181 = v31;
  v182 = v30;
  v35 = a4[2];
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v192 = v29;
  v195 = a6;
  v194 = a5;
  if (v36)
  {
    v200 = v11;
    *&v207 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v36, 0);
    v38 = 0;
    v37 = v207;
    v39 = *(v207 + 16);
    v40 = 16 * v39;
    do
    {
      v42 = *(v35 + v38 + 32);
      v41 = *(v35 + v38 + 40);
      *&v207 = v37;
      v43 = *(v37 + 24);

      if (v39 >= v43 >> 1)
      {
        sub_1AFC05E2C(v43 > 1, v39 + 1, 1);
        v37 = v207;
      }

      *(v37 + 16) = v39 + 1;
      v44 = v37 + v40 + v38;
      *(v44 + 32) = v42;
      *(v44 + 40) = v41;
      v38 += 16;
      ++v39;
      --v36;
    }

    while (v36);

    v12 = v200;
    v29 = v192;
  }

  v45 = *(v37 + 16);
  if (!v45)
  {
LABEL_119:

    return sub_1AF441284(v29);
  }

  v46 = 0;
  v176 = v201 & 2;
  v47 = v176 | (v205 >> 2) & 1;
  v201 = a10;
  v199 = a9;
  v196 = v37 + 32;
  v177 = v29 + 32;
  v190 = a11;
  v175 = (v187 + 16);
  v174 = v187 + 8;
  v173 = v187 + 32;
  v184 = v202 & 1;
  v198 = v193 & 1;
  v186 = v45;
  v185 = v47;
  while (1)
  {
    v48 = *(v196 + 16 * v46);
    if (!v48)
    {
      goto LABEL_12;
    }

    if (v29 && v46 < *(v29 + 16))
    {
      v49 = *(v177 + 8 * v46);
      sub_1AF4410A8(v49);
    }

    else
    {
      v49 = 0xA000000000000000;
    }

    if (v47)
    {
      if (v47 == 1)
      {
        v50 = sub_1AF9C5694(v49, v205 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v49);
        if (v50)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v49);
      }
    }

    else
    {
      v51 = sub_1AF9C5694(v49, v205);
      sub_1AF441114(v49);
      if (!v51)
      {
        goto LABEL_11;
      }
    }

    if (*(*v201 + 16))
    {
      sub_1AF0D3F10(v48);
      if (v52)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v53 = v199;
    if (*(*v199 + 16))
    {
      sub_1AF0D3F10(v48);
      if (v54)
      {
        goto LABEL_123;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v207 = *v53;
    v56 = v207;
    *v53 = 0x8000000000000000;
    v57 = sub_1AF0D3F10(v48);
    v59 = v58;
    v60 = *(v56 + 16) + ((v58 & 1) == 0);
    if (*(v56 + 24) >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v160 = v12;
        v161 = v57;
        sub_1AF843F7C();
        v57 = v161;
        v12 = v160;
      }
    }

    else
    {
      sub_1AF82BC4C(v60, isUniquelyReferenced_nonNull_native);
      v57 = sub_1AF0D3F10(v48);
      if ((v59 & 1) != (v61 & 1))
      {
        break;
      }
    }

    v62 = v201;
    v63 = v207;
    if (v59)
    {
      *(*(v207 + 56) + v57) = 1;
    }

    else
    {
      *(v207 + 8 * (v57 >> 6) + 64) |= 1 << v57;
      *(v63[6] + 8 * v57) = v48;
      *(v63[7] + v57) = 1;
      ++v63[2];
    }

    *v53 = v63;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v188 = v64;
    v189 = v46;
    if (v193)
    {
      v200 = sub_1AF96CD1C(v48);
      if (v200)
      {
        v65 = v12;
        v66 = *v175;
        v67 = v171;
        v68 = v183;
        (*v175)(v171, v48 + OBJC_IVAR____TtC3VFX4Node_authoringID, v183);
        v69 = v48;
        v70 = v172;
        v66(v172, v67, v68);
        v191 = v69;

        v71 = v195;

        v72 = swift_isUniquelyReferenced_nonNull_native();
        v73 = v71;
        if ((v72 & 1) == 0)
        {
          v73 = sub_1AF4276E0(0, v71[2] + 1, 1, v71, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v197 = v73;
        v75 = v73[2];
        v74 = v73[3];
        if (v75 >= v74 >> 1)
        {
          v197 = sub_1AF4276E0(v74 > 1, v75 + 1, 1, v197, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v12 = v65;
        v76 = v187;
        (*(v187 + 8))(v67, v68);
        v77 = v197;
        v197[2] = v75 + 1;
        v78 = v77;
        (*(v76 + 32))(v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v75, v70, v68);
        v79 = MEMORY[0x1E69E7CC0];
        *&v207 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
        *(&v207 + 1) = v80;
        v82 = v200 + 16;
        v81 = *(v200 + 16);
        if (v176)
        {
        }

        else
        {
          v206 = v79;
          type metadata accessor for Graph();
          v83 = swift_allocObject();
          *(v83 + 16) = v81;
          MEMORY[0x1EEE9AC00](v83, v84);
          MEMORY[0x1EEE9AC00](v85, v86);
          v166 = sub_1AF449D54;
          v167 = v87;
          swift_bridgeObjectRetain_n();
          v213 = sub_1AF42B0F4(v79);
          v214 = v88;
          sub_1AF412D4C(sub_1AF449DD8, &v165, 1, 0x1000000000000000uLL, 0, v79, &v213);
          if (v12)
          {
            goto LABEL_122;
          }

          v12 = 0;

          v81 = v206;
          v78 = v197;
        }

        v168 = v82;
        v213 = sub_1AF0D4098(v79, sub_1AF44034C, sub_1AF0D3F10);
        v206 = v79;
        if (v81 >> 62)
        {
          v90 = sub_1AFDFE108();
        }

        else
        {
          v90 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v205, sub_1AF4410A8);

        if (v90)
        {
          v91 = 0;
          while (1)
          {
            if ((v81 & 0xC000000000000001) != 0)
            {
              v92 = MEMORY[0x1B2719C70](v91, v81);
            }

            else
            {
              v92 = *(v81 + 8 * v91 + 32);
            }

            sub_1AF3E4408(v92, 1, v205, v202 & 1, v78, v203, v204, &v213, &v207, &v206);
            if (v12)
            {
              break;
            }

            ++v91;
            v78 = v197;
            if (v90 == v91)
            {
              goto LABEL_59;
            }
          }

          sub_1AF4410E4(v205, sub_1AF441114);

          goto LABEL_116;
        }

LABEL_59:

        sub_1AF4410E4(v205, sub_1AF441114);

        if (v206 >> 62)
        {
          v93 = sub_1AFDFE108();
        }

        else
        {
          v93 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = v192;
        v62 = v201;
        v53 = v199;
        if (v93)
        {

          sub_1AF48F7F8(v94);
        }

        v89 = v195;
        v48 = v191;
      }

      else
      {

        v89 = v195;
      }

      sub_1AF3F5CE4(1, v205, v202 & 1, v48, v194, v89, v203, v204, v53, v62, v190);
      if (v12)
      {

        goto LABEL_119;
      }

      type metadata accessor for Node();
      if (swift_dynamicCastMetatype())
      {

        v96 = sub_1AF3D72E8(v95, v53);
        v200 = 0;

        *(v48 + 16) = v96;
      }

      else
      {
        v200 = 0;
        type metadata accessor for AuthoringNode();
      }
    }

    else
    {
      v200 = v12;
    }

    v97 = v48;
    v98 = swift_allocObject();
    v100 = v203;
    v99 = v204;
    *(v98 + 16) = v203;
    *(v98 + 24) = v99;
    v101 = v194;

    v102 = v205;
    sub_1AF4410E4(v205, sub_1AF4410A8);

    v103 = swift_allocObject();
    *(v103 + 16) = v198;
    *(v103 + 24) = v102;
    *(v103 + 32) = v184;
    v104 = v201;
    *(v103 + 40) = v201;
    *(v103 + 48) = v101;
    v105 = v195;
    *(v103 + 56) = v195;
    *(v103 + 64) = v100;
    v106 = v199;
    *(v103 + 72) = v99;
    *(v103 + 80) = v106;
    v107 = v190;
    *(v103 + 88) = v190;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_1AF449D74;
    *(v108 + 24) = v103;
    *&v207 = v101;
    *(&v207 + 1) = v97;
    v208 = v105;
    v209 = sub_1AF449D48;
    v210 = v108;
    v211 = v107;
    swift_bridgeObjectRetain_n();

    v109 = v200;
    sub_1AF449DC0(&v207, &v213);
    v110 = v97;
    if (v109)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

LABEL_116:
      v29 = v192;
      return sub_1AF441284(v29);
    }

    v111 = v213;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v112 = swift_retain_n();
    v113 = sub_1AF6342E4(v112, v97);
    v191 = v111;
    if (v113 == 1)
    {
      v114 = v104[1];
      v115 = swift_isUniquelyReferenced_nonNull_native();
      v104[1] = v114;
      v45 = v186;
      v46 = v189;
      if ((v115 & 1) == 0)
      {
        v114 = sub_1AF422330(0, *(v114 + 2) + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v201[1] = v114;
      }

      v117 = *(v114 + 2);
      v116 = *(v114 + 3);
      v29 = v192;
      if (v117 >= v116 >> 1)
      {
        v162 = sub_1AF422330(v116 > 1, v117 + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v201[1] = v162;
      }

      v118 = v201[1];
      *(v118 + 16) = v117 + 1;
      *(v118 + 8 * v117 + 32) = v110;
      v12 = 0;
    }

    else
    {
      v119 = v113;

      sub_1AF0DB74C(v119);
      v45 = v186;
      v46 = v189;
      v12 = 0;
      v29 = v192;
    }

    v120 = v199;
    v121 = swift_isUniquelyReferenced_nonNull_native();
    *&v207 = *v120;
    v122 = v207;
    *v120 = 0x8000000000000000;
    v123 = sub_1AF0D3F10(v110);
    v125 = v124;
    v126 = *(v122 + 16) + ((v124 & 1) == 0);
    if (*(v122 + 24) >= v126)
    {
      if ((v121 & 1) == 0)
      {
        v163 = v123;
        sub_1AF843F7C();
        v123 = v163;
        v12 = 0;
      }

      goto LABEL_81;
    }

    sub_1AF82BC4C(v126, v121);
    v123 = sub_1AF0D3F10(v110);
    if ((v125 & 1) != (v127 & 1))
    {
      break;
    }

LABEL_81:
    v47 = v185;
    v128 = v207;
    if (v125)
    {
      *(*(v207 + 56) + v123) = 0;
    }

    else
    {
      *(v207 + 8 * (v123 >> 6) + 64) |= 1 << v123;
      *(v128[6] + 8 * v123) = v110;
      *(v128[7] + v123) = 0;
      ++v128[2];
    }

    v129 = v199;
    *v199 = v128;

    if (v193)
    {
      goto LABEL_110;
    }

    sub_1AF3F5CE4(v198, v205, v202 & 1, v110, v194, v195, v203, v204, v129, v201, v190);
    v200 = sub_1AF96CD1C(v110);
    if (v200)
    {
      v130 = *v175;
      v131 = v110;
      v132 = v169;
      v133 = v183;
      (*v175)(v169, v110 + OBJC_IVAR____TtC3VFX4Node_authoringID, v183);
      v134 = v170;
      v130(v170, v132, v133);
      v135 = v195;

      v136 = swift_isUniquelyReferenced_nonNull_native();
      v137 = v135;
      if ((v136 & 1) == 0)
      {
        v137 = sub_1AF4276E0(0, v135[2] + 1, 1, v135, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v197 = v137;
      v139 = v137[2];
      v138 = v137[3];
      if (v139 >= v138 >> 1)
      {
        v197 = sub_1AF4276E0(v138 > 1, v139 + 1, 1, v197, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v12 = 0;
      v140 = v187;
      (*(v187 + 8))(v132, v133);
      v141 = v197;
      v197[2] = v139 + 1;
      v142 = v141;
      (*(v140 + 32))(v141 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v139, v134, v133);
      v143 = MEMORY[0x1E69E7CC0];
      *&v207 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      *(&v207 + 1) = v144;
      v146 = v200 + 16;
      v145 = *(v200 + 16);
      if (v176)
      {
      }

      else
      {
        v206 = v143;
        type metadata accessor for Graph();
        v147 = swift_allocObject();
        *(v147 + 16) = v145;
        MEMORY[0x1EEE9AC00](v147, v148);
        MEMORY[0x1EEE9AC00](v149, v150);
        v166 = sub_1AF449D54;
        v167 = v151;
        swift_bridgeObjectRetain_n();
        v213 = sub_1AF42B0F4(v143);
        v214 = v152;
        sub_1AF412D4C(sub_1AF449DD8, &v165, 1, 0x1000000000000000uLL, 0, v143, &v213);
        v12 = 0;

        v145 = v206;
        v142 = v197;
      }

      v168 = v146;
      v213 = sub_1AF0D4098(v143, sub_1AF44034C, sub_1AF0D3F10);
      v206 = v143;
      if (v145 >> 62)
      {
        v153 = sub_1AFDFE108();
      }

      else
      {
        v153 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v205, sub_1AF4410A8);

      if (v153)
      {
        for (i = 0; i != v153; ++i)
        {
          if ((v145 & 0xC000000000000001) != 0)
          {
            v155 = MEMORY[0x1B2719C70](i, v145);
          }

          else
          {
            v155 = *(v145 + 8 * i + 32);
          }

          sub_1AF3E4408(v155, v198, v205, v202 & 1, v142, v203, v204, &v213, &v207, &v206);

          v142 = v197;
        }
      }

      sub_1AF4410E4(v205, sub_1AF441114);

      if (v206 >> 62)
      {
        v156 = sub_1AFDFE108();
      }

      else
      {
        v156 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v192;
      v110 = v131;
      v47 = v185;
      v45 = v186;
      v46 = v189;
      if (v156)
      {

        sub_1AF48F7F8(v157);
      }
    }

    type metadata accessor for Node();
    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode();
LABEL_110:

      goto LABEL_12;
    }

    v159 = sub_1AF3D72E8(v158, v199);

    *(v110 + 16) = v159;

LABEL_12:
    if (++v46 == v45)
    {
      goto LABEL_119;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_122:

  __break(1u);
LABEL_123:
  LODWORD(v167) = 0;
  v166 = 156;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F760C(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v198 = a7;
  v199 = a8;
  v197 = a3;
  v190 = a1;
  v237 = *MEMORY[0x1E69E9840];
  v173 = sub_1AFDFC318();
  v182 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v17);
  v165 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v164 = &v162 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v167 = &v162 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v166 = &v162 - v28;
  v29 = 0;
  v179 = 0;
  v180 = 0;
  v177 = 0;
  v178 = 0;
  v176 = 0;
  v195 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v210, v27);
    v29 = v210[0];
    v179 = v210[2];
    v180 = v210[1];
    v177 = v210[4];
    v178 = v210[3];
    v176 = v210[5];
  }

  v30 = a4[2];
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v186 = v29;
  v200 = a2;
  v191 = a6;
  v189 = a5;
  if (v31)
  {
    v196 = v11;
    *&v227 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v31, 0);
    v33 = 0;
    v34 = v227;
    v35 = *(v227 + 16);
    v201 = 16 * v35;
    do
    {
      v36 = v30;
      v37 = v30 + v33;
      v39 = *(v30 + v33 + 32);
      v38 = *(v37 + 40);
      *&v227 = v34;
      v40 = *(v34 + 24);

      if (v35 >= v40 >> 1)
      {
        sub_1AFC05E2C(v40 > 1, v35 + 1, 1);
        v34 = v227;
      }

      *(v34 + 16) = v35 + 1;
      v41 = v34 + v201 + v33;
      *(v41 + 32) = v39;
      *(v41 + 40) = v38;
      v33 += 16;
      ++v35;
      --v31;
      v30 = v36;
    }

    while (v31);

    v32 = v34;
    v12 = v196;
    v29 = v186;
    LODWORD(a2) = v200;
  }

  v42 = *(v32 + 16);
  if (v42)
  {
    v43 = 0;
    v171 = v195 & 2;
    v187 = v171 | (a2 >> 2) & 1;
    v194 = a10;
    v44 = a9;
    v193 = v32 + 32;
    v185 = a11;
    v172 = v29 + 32;
    v169 = v182 + 8;
    v170 = (v182 + 16);
    v168 = v182 + 32;
    v175 = v197 & 1;
    LODWORD(v195) = v190 & 1;
    v188 = v32;
    v181 = v42;
    v192 = a9;
    while (1)
    {
      v45 = *(v193 + 16 * v43);
      if (!v45)
      {
        goto LABEL_12;
      }

      if (v29 && v43 < *(v29 + 16))
      {
        v46 = *(v172 + 8 * v43);
        sub_1AF4410A8(v46);
      }

      else
      {
        v46 = 0xA000000000000000;
      }

      if (v187)
      {
        if (v187 == 1)
        {
          v47 = sub_1AF9C5694(v46, v200 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v46);
          if (v47)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1AF441114(v46);
        }
      }

      else
      {
        v48 = sub_1AF9C5694(v46, v200);
        sub_1AF441114(v46);
        if (!v48)
        {
          goto LABEL_11;
        }
      }

      if (*(*v194 + 16))
      {
        sub_1AF0D3F10(v45);
        if (v49)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if (*(*v44 + 16))
      {
        sub_1AF0D3F10(v45);
        if (v50)
        {
          goto LABEL_124;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v227 = *v44;
      v52 = v227;
      *v44 = 0x8000000000000000;
      v53 = sub_1AF0D3F10(v45);
      v55 = v54;
      v56 = *(v52 + 16) + ((v54 & 1) == 0);
      if (*(v52 + 24) < v56)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v59 = v53;
      sub_1AF843F7C();
      v53 = v59;
      v44 = v192;
      v58 = v227;
      if ((v55 & 1) == 0)
      {
LABEL_36:
        v58[(v53 >> 6) + 8] |= 1 << v53;
        *(v58[6] + 8 * v53) = v45;
        *(v58[7] + v53) = 1;
        ++v58[2];
        goto LABEL_37;
      }

LABEL_34:
      *(v58[7] + v53) = 1;
LABEL_37:
      *v44 = v58;

      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      v183 = v60;
      v184 = v43;
      if (v190)
      {
        v61 = v189;
        v201 = sub_1AF96CD1C(v45);
        if (v201)
        {
          v62 = *v170;
          v63 = v166;
          v64 = v173;
          (*v170)(v166, v45 + OBJC_IVAR____TtC3VFX4Node_authoringID, v173);
          v65 = v45;
          v66 = v167;
          v62(v167, v63, v64);
          v174 = v65;

          v67 = v191;

          v68 = swift_isUniquelyReferenced_nonNull_native();
          v69 = v67;
          if ((v68 & 1) == 0)
          {
            v69 = sub_1AF4276E0(0, v67[2] + 1, 1, v67, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v71 = v69[2];
          v70 = v69[3];
          if (v71 >= v70 >> 1)
          {
            v196 = sub_1AF4276E0(v70 > 1, v71 + 1, 1, v69, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v196 = v69;
          }

          v72 = MEMORY[0x1E69E7CC0];
          v73 = v182;
          (*(v182 + 8))(v63, v64);
          v74 = v196;
          v196[2] = v71 + 1;
          (*(v73 + 32))(v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v71, v66, v64);
          *&v211 = sub_1AF4417E8(v72);
          *(&v211 + 1) = v75;
          v76 = *(v201 + 16);
          v163 = v201 + 16;
          if (v171)
          {

            v84 = v200;
          }

          else
          {
            *&v219 = v72;
            type metadata accessor for Graph();
            v77 = swift_allocObject();
            *(v77 + 16) = v76;
            MEMORY[0x1EEE9AC00](v77, v78);
            MEMORY[0x1EEE9AC00](v79, v80);
            v160 = sub_1AF449D54;
            v161 = v81;
            swift_bridgeObjectRetain_n();
            *&v227 = sub_1AF42B0F4(v72);
            *(&v227 + 1) = v82;
            sub_1AF412D4C(sub_1AF449DD8, &v159, 1, 0x1000000000000000uLL, 0, v72, &v227);
            v83 = v200;
            if (v12)
            {
              goto LABEL_125;
            }

            v12 = 0;

            v76 = v219;
            v84 = v83;
          }

          *&v205 = sub_1AF0D4098(v72, sub_1AF44034C, sub_1AF0D3F10);
          v204[0] = v72;
          if (v76 >> 62)
          {
            v87 = sub_1AFDFE108();
          }

          else
          {
            v87 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v84, sub_1AF4410A8);
          v88 = v196;

          if (v87)
          {
            v89 = 0;
            while (1)
            {
              if ((v76 & 0xC000000000000001) != 0)
              {
                v91 = MEMORY[0x1B2719C70](v89, v76);
                v88 = v196;
                v90 = v91;
              }

              else
              {
                v90 = *(v76 + 8 * v89 + 32);
              }

              sub_1AF3E50BC(v90, 1, v200, v197 & 1, v88, v198, v199, &v205, &v227, &v211, v204);
              if (v12)
              {
                break;
              }

              ++v89;
              v223 = v231;
              v224 = v232;
              v225 = v233;
              v226 = v234;
              v219 = v227;
              v220 = v228;
              v221 = v229;
              v222 = v230;
              sub_1AF444058(&v219, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

              v88 = v196;
              if (v87 == v89)
              {
                goto LABEL_59;
              }
            }

            sub_1AF4410E4(v200, sub_1AF441114);

            goto LABEL_120;
          }

LABEL_59:

          sub_1AF4410E4(v200, sub_1AF441114);

          if (v204[0] >> 62)
          {
            v92 = sub_1AFDFE108();
          }

          else
          {
            v92 = *((v204[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v29 = v186;
          v86 = v191;
          v61 = v189;
          v45 = v174;
          v85 = v194;
          if (v92)
          {

            sub_1AF48F7F8(v93);
          }
        }

        else
        {

          v85 = v194;
          v86 = v191;
        }

        sub_1AF3F760C(1, v200, v197 & 1, v45, v61, v86, v198, v199, v192, v85, v185);
        if (v12)
        {

          return sub_1AF441284(v29);
        }

        type metadata accessor for Node();
        if (swift_dynamicCastMetatype())
        {

          v95 = sub_1AF3D72E8(v94, v192);
          v196 = 0;

          *(v45 + 16) = v95;
        }

        else
        {
          v196 = 0;
          type metadata accessor for AuthoringNode();
        }
      }

      else
      {
        v196 = v12;
      }

      v96 = v45;
      v97 = swift_allocObject();
      v99 = v198;
      v98 = v199;
      *(v97 + 16) = v198;
      *(v97 + 24) = v98;
      v100 = v189;

      v101 = v200;
      sub_1AF4410E4(v200, sub_1AF4410A8);

      v102 = swift_allocObject();
      *(v102 + 16) = v195;
      *(v102 + 24) = v101;
      *(v102 + 32) = v175;
      v103 = v194;
      *(v102 + 40) = v194;
      *(v102 + 48) = v100;
      v105 = v191;
      v104 = v192;
      *(v102 + 56) = v191;
      *(v102 + 64) = v99;
      *(v102 + 72) = v98;
      *(v102 + 80) = v104;
      v106 = v185;
      *(v102 + 88) = v185;
      v107 = swift_allocObject();
      *(v107 + 16) = sub_1AF449D70;
      *(v107 + 24) = v102;
      *&v205 = v100;
      *(&v205 + 1) = v96;
      v206 = v105;
      v207 = sub_1AF449D50;
      v208 = v107;
      v209 = v106;
      swift_bridgeObjectRetain_n();

      v108 = v196;
      sub_1AF449CCC(&v205);
      v109 = v96;
      if (v108)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
LABEL_120:

        v29 = v186;
        return sub_1AF441284(v29);
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v235[4] = v231;
      v235[5] = v232;
      v235[6] = v233;
      v236 = v234;
      v235[0] = v227;
      v235[1] = v228;
      v235[2] = v229;
      v235[3] = v230;
      v110 = MEMORY[0x1E69E6720];
      sub_1AF0D8094(v235, &v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      sub_1AF0D8094(v235, &v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v110, sub_1AF449B08);
      sub_1AF634450(v235, v96, &v219);
      if (v219 == 1)
      {
        v215 = v223;
        v216 = v224;
        v217 = v225;
        v218 = v226;
        v211 = v219;
        v212 = v220;
        v213 = v221;
        v214 = v222;
        sub_1AF44943C(&v211, sub_1AF443FDC);
        v111 = v103[1];
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v103[1] = v111;
        v43 = v184;
        v12 = 0;
        if ((v112 & 1) == 0)
        {
          v111 = sub_1AF422330(0, *(v111 + 2) + 1, 1, v111, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v194[1] = v111;
        }

        v29 = v186;
        v114 = *(v111 + 2);
        v113 = *(v111 + 3);
        if (v114 >= v113 >> 1)
        {
          v156 = sub_1AF422330(v113 > 1, v114 + 1, 1, v111, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v194[1] = v156;
        }

        sub_1AF444058(v235, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v115 = v194[1];
        *(v115 + 16) = v114 + 1;
        *(v115 + 8 * v114 + 32) = v109;
      }

      else
      {
        sub_1AF444058(v235, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v215 = v223;
        v216 = v224;
        v217 = v225;
        v218 = v226;
        v211 = v219;
        v212 = v220;
        v213 = v221;
        v214 = v222;
        sub_1AF44943C(&v211, sub_1AF443FDC);
        v43 = v184;
        v12 = 0;
        v29 = v186;
      }

      v44 = v192;
      v116 = swift_isUniquelyReferenced_nonNull_native();
      *&v219 = *v44;
      v117 = v219;
      *v44 = 0x8000000000000000;
      v118 = sub_1AF0D3F10(v109);
      v120 = v119;
      v121 = *(v117 + 16) + ((v119 & 1) == 0);
      if (*(v117 + 24) >= v121)
      {
        if ((v116 & 1) == 0)
        {
          v157 = v118;
          sub_1AF843F7C();
          v118 = v157;
          v44 = v192;
        }
      }

      else
      {
        sub_1AF82BC4C(v121, v116);
        v118 = sub_1AF0D3F10(v109);
        if ((v120 & 1) != (v122 & 1))
        {
LABEL_123:
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
LABEL_124:
          LODWORD(v161) = 0;
          v160 = 156;
          sub_1AFDFE518();
          __break(1u);
LABEL_125:

          __break(1u);
          return result;
        }
      }

      v42 = v181;
      v123 = v219;
      if (v120)
      {
        *(*(v219 + 56) + v118) = 0;
      }

      else
      {
        *(v219 + 8 * (v118 >> 6) + 64) |= 1 << v118;
        *(v123[6] + 8 * v118) = v109;
        *(v123[7] + v118) = 0;
        ++v123[2];
      }

      *v44 = v123;

      if (v190)
      {
        goto LABEL_110;
      }

      sub_1AF3F760C(v195, v200, v197 & 1, v109, v189, v191, v198, v199, v44, v194, v185);
      v201 = sub_1AF96CD1C(v109);
      if (v201)
      {
        v124 = *v170;
        v174 = v109;
        v125 = v164;
        v126 = v173;
        v124(v164, v109 + OBJC_IVAR____TtC3VFX4Node_authoringID, v173);
        v127 = v165;
        v124(v165, v125, v126);
        v128 = v191;

        v129 = swift_isUniquelyReferenced_nonNull_native();
        v130 = v128;
        if ((v129 & 1) == 0)
        {
          v130 = sub_1AF4276E0(0, v128[2] + 1, 1, v128, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v132 = v130[2];
        v131 = v130[3];
        if (v132 >= v131 >> 1)
        {
          v196 = sub_1AF4276E0(v131 > 1, v132 + 1, 1, v130, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        else
        {
          v196 = v130;
        }

        v133 = MEMORY[0x1E69E7CC0];
        v134 = v182;
        (*(v182 + 8))(v125, v126);
        v135 = v196;
        v196[2] = v132 + 1;
        (*(v134 + 32))(v135 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v132, v127, v126);
        v204[0] = sub_1AF4417E8(v133);
        v204[1] = v136;
        v137 = *(v201 + 16);
        v163 = v201 + 16;
        if (v171)
        {

          v145 = v200;
          v44 = v192;
        }

        else
        {
          *&v211 = v133;
          type metadata accessor for Graph();
          v138 = swift_allocObject();
          *(v138 + 16) = v137;
          MEMORY[0x1EEE9AC00](v138, v139);
          MEMORY[0x1EEE9AC00](v140, v141);
          v160 = sub_1AF449D54;
          v161 = v142;
          swift_bridgeObjectRetain_n();
          *&v219 = sub_1AF42B0F4(v133);
          *(&v219 + 1) = v143;
          sub_1AF412D4C(sub_1AF449DD8, &v159, 1, 0x1000000000000000uLL, 0, v133, &v219);
          v144 = v200;
          v44 = v192;
          v12 = 0;

          v137 = v211;
          v145 = v144;
        }

        v146 = sub_1AF0D4098(v133, sub_1AF44034C, sub_1AF0D3F10);
        v202 = v133;
        v203 = v146;
        if (v137 >> 62)
        {
          v147 = sub_1AFDFE108();
        }

        else
        {
          v147 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v145, sub_1AF4410A8);

        v148 = v196;

        if (v147)
        {
          v149 = 0;
          do
          {
            if ((v137 & 0xC000000000000001) != 0)
            {
              v151 = MEMORY[0x1B2719C70](v149, v137);
              v148 = v196;
              v150 = v151;
            }

            else
            {
              v150 = *(v137 + 8 * v149 + 32);
            }

            sub_1AF3E50BC(v150, v195, v200, v197 & 1, v148, v198, v199, &v203, &v219, v204, &v202);
            ++v149;
            v215 = v223;
            v216 = v224;
            v217 = v225;
            v218 = v226;
            v211 = v219;
            v212 = v220;
            v213 = v221;
            v214 = v222;
            sub_1AF444058(&v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

            v148 = v196;
          }

          while (v147 != v149);
        }

        sub_1AF4410E4(v200, sub_1AF441114);

        if (v202 >> 62)
        {
          v152 = sub_1AFDFE108();
        }

        else
        {
          v152 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v29 = v186;
        v109 = v174;
        v43 = v184;
        if (v152)
        {

          sub_1AF48F7F8(v153);
        }

        v42 = v181;
      }

      type metadata accessor for Node();
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for AuthoringNode();
LABEL_110:
        v223 = v231;
        v224 = v232;
        v225 = v233;
        v226 = v234;
        v219 = v227;
        v220 = v228;
        v221 = v229;
        v222 = v230;
        sub_1AF444058(&v219, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

        goto LABEL_12;
      }

      v155 = sub_1AF3D72E8(v154, v44);

      v223 = v231;
      v224 = v232;
      v225 = v233;
      v226 = v234;
      v219 = v227;
      v220 = v228;
      v221 = v229;
      v222 = v230;
      sub_1AF444058(&v219, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      *(v109 + 16) = v155;

LABEL_12:
      if (++v43 == v42)
      {
        goto LABEL_117;
      }
    }

    sub_1AF82BC4C(v56, isUniquelyReferenced_nonNull_native);
    v53 = sub_1AF0D3F10(v45);
    if ((v55 & 1) != (v57 & 1))
    {
      goto LABEL_123;
    }

LABEL_33:
    v58 = v227;
    if ((v55 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_117:

  return sub_1AF441284(v29);
}

uint64_t sub_1AF3F90D4(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v159 = a8;
  v158 = a7;
  v165 = a6;
  v160 = a3;
  v156 = a1;
  v150 = sub_1AFDFC318();
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v16);
  v145 = v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v144 = v140 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v147 = v140 - v23;
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v146 = v140 - v27;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v168 = a2;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v176, v26);
    v28 = v176[0];
    v29 = v176[1];
    v30 = v176[2];
    v31 = v176[3];
    v32 = v176[4];
    v33 = v176[5];
  }

  v140[1] = v33;
  v140[2] = v32;
  v140[3] = v31;
  v140[4] = v30;
  v140[5] = v29;
  v34 = sub_1AF97228C();
  v164 = *(v34 + 16);
  v140[0] = v34;
  if (!v164)
  {
LABEL_96:

    return sub_1AF441284(v28);
  }

  v157 = a5;
  v35 = 0;
  v155 = (a2 >> 59) & 2 | (v168 >> 2) & 1;
  v163 = v34 + 32;
  v36 = a9;
  v167 = a10;
  v143 = v28 + 32;
  v153 = a11;
  v141 = (v148 + 16);
  v140[7] = v148 + 8;
  v140[6] = v148 + 32;
  v149 = v160 & 1;
  v151 = v156 & 1;
  v154 = v28;
  v37 = v165;
  v166 = a9;
  while (1)
  {
    v38 = *(v163 + 16 * v35);
    if (!v38)
    {
      goto LABEL_6;
    }

    if (v28 && v35 < *(v28 + 16))
    {
      v39 = *(v143 + 8 * v35);
      sub_1AF4410A8(v39);
    }

    else
    {
      v39 = 0xA000000000000000;
    }

    if (v155)
    {
      break;
    }

    v41 = sub_1AF9C5694(v39, v168);
    sub_1AF441114(v39);
    if (v41)
    {
      goto LABEL_19;
    }

LABEL_5:

LABEL_6:
    if (++v35 == v164)
    {
      goto LABEL_96;
    }
  }

  if (v155 == 1)
  {
    v40 = sub_1AF9C5694(v39, v168 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v39);
    if (!v40)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v39);
LABEL_19:
  if (*(*v167 + 16))
  {
    sub_1AF0D3F10(v38);
    if (v42)
    {
      goto LABEL_5;
    }
  }

  if (*(*v36 + 16))
  {
    sub_1AF0D3F10(v38);
    if (v43)
    {
      goto LABEL_103;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v170 = *v36;
  v45 = v170;
  *v36 = 0x8000000000000000;
  v46 = sub_1AF0D3F10(v38);
  v48 = v47;
  v49 = *(v45 + 16) + ((v47 & 1) == 0);
  if (*(v45 + 24) >= v49)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v52 = v46;
    sub_1AF843F7C();
    v46 = v52;
    v37 = v165;
    v36 = v166;
    v51 = v170;
    if ((v48 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    *(v51[7] + v46) = 1;
  }

  else
  {
    sub_1AF82BC4C(v49, isUniquelyReferenced_nonNull_native);
    v46 = sub_1AF0D3F10(v38);
    if ((v48 & 1) != (v50 & 1))
    {
      goto LABEL_102;
    }

LABEL_27:
    v51 = v170;
    if (v48)
    {
      goto LABEL_28;
    }

LABEL_30:
    v51[(v46 >> 6) + 8] |= 1 << v46;
    *(v51[6] + 8 * v46) = v38;
    *(v51[7] + v46) = 1;
    ++v51[2];
  }

  *v36 = v51;

  v53 = type metadata accessor for AuthoringNode();
  v177 = v38;
  v161 = v53;
  if ((v160 & 1) != 0 && v53 == MEMORY[0x1E69E6530])
  {
    cache = (*v38)[7].cache;

    v55 = cache(1);
    v37 = v165;
    v177 = v55;
  }

  else
  {
  }

  v152 = v38;
  if ((v156 & 1) == 0)
  {
    goto LABEL_57;
  }

  v56 = v177;
  v57 = sub_1AF96D010(v177);
  v28 = v154;
  v58 = v166;
  if (v57)
  {
    v142 = v57;
    v59 = *v141;
    v60 = v56 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v61 = v146;
    v62 = v150;
    (*v141)(v146, v60, v150);
    v59(v147, v61, v62);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1AF4276E0(0, v37[2] + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v64 = v37[2];
    v63 = v37[3];
    if (v64 >= v63 >> 1)
    {
      v37 = sub_1AF4276E0(v63 > 1, v64 + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v65 = v148;
    v66 = v150;
    (*(v148 + 8))(v146, v150);
    v37[2] = v64 + 1;
    (*(v65 + 32))(v37 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v147, v66);
    v67 = sub_1AF3FC510(v158, v159, 1, v168, v160 & 1, v37, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
    v162 = v12;
    if (v12)
    {

      v28 = v154;
      goto LABEL_100;
    }

    v69 = v67;
    v70 = v68;

    if (v161 == MEMORY[0x1E69E6530])
    {
      v71 = *(v70 + 16);
      if (v71)
      {
        *&v170 = MEMORY[0x1E69E7CC0];
        sub_1AFDFE368();
        v72 = 32;
        do
        {
          v73 = *(v69 + 16);
          if (v73)
          {
            v74 = sub_1AF0D3F10(*(v70 + v72));
            if (v75)
            {
              v73 = *(*(v69 + 56) + 8 * v74);
            }

            else
            {
              v73 = 0;
            }
          }

          v169 = v73;
          swift_dynamicCast();
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v72 += 8;
          --v71;
        }

        while (v71);

        v76 = v170;
        v77 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v77 = MEMORY[0x1E69E7CC0];
        v76 = MEMORY[0x1E69E7CC0];
      }

      v78 = v177;
      type metadata accessor for AuthoringGraph();
      v79 = swift_allocObject();
      v79->cache = 0;
      v79->vtable = v77;
      v79->info = 0;
      v79[1].isa = 0;

      v79[1].superclass = sub_1AF42B820(v77, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
      sub_1AFDFC308();

      v79->vtable = v76;

      *(v78 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v79;

      v12 = v162;
      v28 = v154;
      v37 = v165;
      v58 = v166;
    }

    else
    {

      v12 = v162;
      v28 = v154;
      v37 = v165;
      v58 = v166;
    }
  }

  sub_1AF3F90D4(1, v168, v160 & 1, v38, v157, v37, v158, v159, v58, v167, v153);
  if (v12)
  {

    goto LABEL_100;
  }

  type metadata accessor for Node();
  if (swift_dynamicCastMetatype())
  {
    v80 = v177;
    v81 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v83 = sub_1AF3D6B1C(v82, v166, v167, sub_1AF3FE1F8);
    v162 = 0;

    *(v80 + v81) = v83;
  }

  else
  {
LABEL_57:
    v162 = v12;
  }

  v84 = swift_allocObject();
  v85 = v158;
  v86 = v159;
  *(v84 + 16) = v158;
  *(v84 + 24) = v86;
  v87 = v157;

  v88 = v168;
  sub_1AF4410E4(v168, sub_1AF4410A8);

  v89 = swift_allocObject();
  *(v89 + 16) = v151;
  *(v89 + 24) = v88;
  *(v89 + 32) = v149;
  v90 = v166;
  v91 = v167;
  *(v89 + 40) = v167;
  *(v89 + 48) = v87;
  v92 = v165;
  *(v89 + 56) = v165;
  *(v89 + 64) = v85;
  *(v89 + 72) = v86;
  *(v89 + 80) = v90;
  v93 = v153;
  *(v89 + 88) = v153;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1AF449D44;
  *(v94 + 24) = v89;
  *&v170 = v87;
  *(&v170 + 1) = v177;
  v171 = v92;
  v172 = sub_1AF449D48;
  v173 = v94;
  v174 = v93;
  swift_bridgeObjectRetain_n();

  v95 = v162;
  sub_1AF449DC0(&v170, &v175);
  if (v95)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v28 = v154;
LABEL_100:

    return sub_1AF441284(v28);
  }

  v96 = v175;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v97 = v152;
  sub_1AF6345D0(v96, v152);
  if (v98)
  {
    v99 = v91;
    v100 = *(v91 + 8);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *(v91 + 8) = v100;
    if ((v101 & 1) == 0)
    {
      v100 = sub_1AF422330(0, *(v100 + 2) + 1, 1, v100, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v91 + 8) = v100;
    }

    v103 = *(v100 + 2);
    v102 = *(v100 + 3);
    if (v103 >= v102 >> 1)
    {
      v100 = sub_1AF422330(v102 > 1, v103 + 1, 1, v100, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v99 + 8) = v100;
    }

    *(v100 + 2) = v103 + 1;
    *&v100[8 * v103 + 32] = v97;
  }

  v36 = v166;
  if (v161 == MEMORY[0x1E69E6530])
  {
    *&v170 = v96;

    swift_dynamicCast();
  }

  v104 = swift_isUniquelyReferenced_nonNull_native();
  *&v170 = *v36;
  v105 = v170;
  *v36 = 0x8000000000000000;
  v106 = sub_1AF0D3F10(v97);
  v108 = v107;
  v109 = *(v105 + 16) + ((v107 & 1) == 0);
  if (*(v105 + 24) >= v109)
  {
    v12 = 0;
    if (v104)
    {
LABEL_71:
      v28 = v154;
      v37 = v165;
      v111 = v170;
      if (v108)
      {
LABEL_72:
        *(v111[7] + v106) = 0;
LABEL_75:
        *v36 = v111;

        if (v156)
        {
          goto LABEL_95;
        }

        sub_1AF3F90D4(v151, v168, v160 & 1, v97, v157, v37, v158, v159, v36, v167, v153);
        v113 = v177;
        v142 = sub_1AF96D010(v177);
        if (v142)
        {
          v114 = *v141;
          v115 = v113 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v116 = v144;
          v117 = v150;
          (*v141)(v144, v115, v150);
          v114(v145, v116, v117);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1AF4276E0(0, v37[2] + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v119 = v37[2];
          v118 = v37[3];
          if (v119 >= v118 >> 1)
          {
            v37 = sub_1AF4276E0(v118 > 1, v119 + 1, 1, v37, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v120 = v148;
          v121 = v150;
          (*(v148 + 8))(v144, v150);
          v37[2] = v119 + 1;
          (*(v120 + 32))(v37 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119, v145, v121);
          v122 = sub_1AF3FC510(v158, v159, v151, v168, v160 & 1, v37, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
          v162 = 0;
          v123 = v122;
          v125 = v124;

          if (v161 == MEMORY[0x1E69E6530])
          {
            v126 = *(v125 + 16);
            if (v126)
            {
              *&v170 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v127 = 32;
              do
              {
                v128 = *(v123 + 16);
                if (v128)
                {
                  v129 = sub_1AF0D3F10(*(v125 + v127));
                  if (v130)
                  {
                    v128 = *(*(v123 + 56) + 8 * v129);
                  }

                  else
                  {
                    v128 = 0;
                  }
                }

                v169 = v128;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v127 += 8;
                --v126;
              }

              while (v126);

              v131 = v170;
              v132 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v132 = MEMORY[0x1E69E7CC0];
              v131 = MEMORY[0x1E69E7CC0];
            }

            v133 = v177;
            type metadata accessor for AuthoringGraph();
            v134 = swift_allocObject();
            v134->cache = 0;
            v134->vtable = v132;
            v134->info = 0;
            v134[1].isa = 0;

            v134[1].superclass = sub_1AF42B820(v132, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v134->vtable = v131;

            *(v133 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v134;

            v12 = v162;
            v28 = v154;
            v37 = v165;
            v36 = v166;
          }

          else
          {

            v12 = v162;
            v28 = v154;
            v37 = v165;
            v36 = v166;
          }
        }

        type metadata accessor for Node();
        if (!swift_dynamicCastMetatype())
        {
LABEL_95:
        }

        else
        {
          v135 = v177;
          v136 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v138 = sub_1AF3D6B1C(v137, v166, v167, sub_1AF3FE1F8);

          *(v135 + v136) = v138;
          v37 = v165;
          v36 = v166;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v112 = v106;
      sub_1AF843F7C();
      v106 = v112;
      v37 = v165;
      v36 = v166;
      v28 = v154;
      v111 = v170;
      if (v108)
      {
        goto LABEL_72;
      }
    }

    v111[(v106 >> 6) + 8] |= 1 << v106;
    *(v111[6] + 8 * v106) = v97;
    *(v111[7] + v106) = 0;
    ++v111[2];
    goto LABEL_75;
  }

  sub_1AF82BC4C(v109, v104);
  v106 = sub_1AF0D3F10(v97);
  if ((v108 & 1) == (v110 & 1))
  {
    v12 = 0;
    goto LABEL_71;
  }

LABEL_102:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_103:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3FA610(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v168 = a8;
  v167 = a7;
  v169 = a3;
  v164 = a1;
  v158 = sub_1AFDFC318();
  v154 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v15);
  v151 = v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v150 = v147 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v153 = v147 - v22;
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v152 = v147 - v26;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v175 = a2;
  v33 = a2 >> 59;
  if ((v33 & 2) == 0)
  {
    (*(*a4 + 152))(v184, v25);
    v27 = v184[0];
    v28 = v184[1];
    v29 = v184[2];
    v30 = v184[3];
    v31 = v184[4];
    v32 = v184[5];
  }

  v147[1] = v32;
  v147[2] = v31;
  v147[3] = v30;
  v147[4] = v29;
  v147[5] = v28;
  v34 = sub_1AF971F68();
  v35 = *(v34 + 16);
  if (!v35)
  {
    v38 = v27;
LABEL_103:
    v144 = v38;

    v145 = v144;
    return sub_1AF441284(v145);
  }

  v166 = a6;
  v36 = 0;
  v162 = v33 & 2 | (v175 >> 2) & 1;
  v171 = v34 + 32;
  v37 = a9;
  v173 = a10;
  v38 = v27;
  v149 = v27 + 32;
  v161 = a11;
  v148 = (v154 + 16);
  v147[7] = v154 + 8;
  v147[6] = v154 + 32;
  v156 = v169 & 1;
  v159 = v164 & 1;
  v39 = MEMORY[0x1E69E6530];
  v163 = v27;
  v170 = a5;
  v160 = v34;
  v157 = v35;
  v165 = a9;
  while (1)
  {
    v40 = *(v171 + 16 * v36);
    if (!v40)
    {
      goto LABEL_6;
    }

    if (v38)
    {
      v41 = v162;
      if (v36 < *(v38 + 16))
      {
        v42 = *(v149 + 8 * v36);
        sub_1AF4410A8(v42);
      }

      else
      {
        v42 = 0xA000000000000000;
      }
    }

    else
    {
      v42 = 0xA000000000000000;
      v41 = v162;
    }

    if (v41)
    {
      if (v41 == 1)
      {
        v43 = sub_1AF9C5694(v42, v175 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v42);
        if (v43)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v42);
      }
    }

    else
    {
      v44 = sub_1AF9C5694(v42, v175);
      sub_1AF441114(v42);
      if (!v44)
      {
        goto LABEL_5;
      }
    }

    if (*(*v173 + 16))
    {
      sub_1AF0D3F10(v40);
      if (v45)
      {
        goto LABEL_5;
      }
    }

    if (*(*v37 + 16))
    {
      sub_1AF0D3F10(v40);
      if (v46)
      {
        goto LABEL_111;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v178 = *v37;
    v48 = v178;
    *v37 = 0x8000000000000000;
    v49 = sub_1AF0D3F10(v40);
    v51 = v50;
    v52 = *(v48 + 16) + ((v50 & 1) == 0);
    if (*(v48 + 24) >= v52)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v142 = v49;
        sub_1AF843F7C();
        v49 = v142;
      }
    }

    else
    {
      sub_1AF82BC4C(v52, isUniquelyReferenced_nonNull_native);
      v49 = sub_1AF0D3F10(v40);
      if ((v51 & 1) != (v53 & 1))
      {
        break;
      }
    }

    v54 = v170;
    v55 = v178;
    if (v51)
    {
      *(*(v178 + 56) + v49) = 1;
    }

    else
    {
      *(v178 + 8 * (v49 >> 6) + 64) |= 1 << v49;
      *(v55[6] + 8 * v49) = v40;
      *(v55[7] + v49) = 1;
      ++v55[2];
    }

    *v37 = v55;

    v174 = type metadata accessor for Node();
    v185 = v40;

    if ((v169 & 1) != 0 && v174 == v39)
    {
      v185 = sub_1AF96FB80(1);
    }

    v172 = v40;
    if (v164)
    {
      v56 = v185;
      v155 = sub_1AF96CD1C(v185);
      if (v155)
      {
        v57 = v176;
        v58 = *v148;
        v59 = v56 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v60 = v152;
        v61 = v158;
        (*v148)(v152, v59, v158);
        v58(v153, v60, v61);
        v62 = v166;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1AF4276E0(0, v166[2] + 1, 1, v166, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v64 = v62[2];
        v63 = v62[3];
        v65 = MEMORY[0x1E69E6530];
        if (v64 >= v63 >> 1)
        {
          v62 = sub_1AF4276E0(v63 > 1, v64 + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v66 = v154;
        v67 = v158;
        (*(v154 + 8))(v152, v158);
        v62[2] = v64 + 1;
        (*(v66 + 32))(v62 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v64, v153, v67);
        v68 = sub_1AF3FC510(v167, v168, 1, v175, v169 & 1, v62, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
        v176 = v57;
        if (v57)
        {
LABEL_106:

LABEL_107:

LABEL_108:

          v145 = v163;
          return sub_1AF441284(v145);
        }

        v70 = v68;
        v71 = v69;

        if (v174 == v65)
        {
          v73 = *(v71 + 16);
          if (v73)
          {
            *&v178 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v74 = 32;
            do
            {
              v75 = *(v70 + 16);
              if (v75)
              {
                v76 = sub_1AF0D3F10(*(v71 + v74));
                if (v77)
                {
                  v75 = *(*(v70 + 56) + 8 * v76);
                }

                else
                {
                  v75 = 0;
                }
              }

              v177 = v75;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v74 += 8;
              --v73;
            }

            while (v73);

            v78 = v178;
          }

          else
          {

            v78 = MEMORY[0x1E69E7CC0];
          }

          v79 = v185;
          type metadata accessor for Graph();
          v80 = swift_allocObject();
          *(v80 + 16) = v78;
          *(v79 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v80;

          v72 = v176;
          v54 = v170;
        }

        else
        {

          v72 = v176;
          v54 = v170;
        }

        v37 = v165;
        v40 = v172;
      }

      else
      {
        v72 = v176;
      }

      sub_1AF3FA610(1, v175, v169 & 1, v40, v54, v166, v167, v168, v37, v173, v161);
      v176 = v72;
      if (v72)
      {
        goto LABEL_105;
      }

      if (swift_dynamicCastMetatype())
      {
        v81 = v185;

        v83 = v176;
        v84 = sub_1AF3D7890(v82, v37, v173);
        v176 = v83;

        v81[2] = v84;
      }

      else
      {
        type metadata accessor for AuthoringNode();
      }
    }

    v85 = swift_allocObject();
    v86 = v167;
    v87 = v168;
    *(v85 + 16) = v167;
    *(v85 + 24) = v87;
    v88 = v170;

    v89 = v175;
    sub_1AF4410E4(v175, sub_1AF4410A8);

    v90 = swift_allocObject();
    *(v90 + 16) = v159;
    *(v90 + 24) = v89;
    *(v90 + 32) = v156;
    v91 = v173;
    *(v90 + 40) = v173;
    *(v90 + 48) = v88;
    v92 = v166;
    *(v90 + 56) = v166;
    *(v90 + 64) = v86;
    v93 = v165;
    *(v90 + 72) = v87;
    *(v90 + 80) = v93;
    v94 = v161;
    *(v90 + 88) = v161;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_1AF449D6C;
    *(v95 + 24) = v90;
    *&v178 = v88;
    *(&v178 + 1) = v185;
    v179 = v92;
    v180 = sub_1AF449D48;
    v181 = v95;
    v182 = v94;
    swift_bridgeObjectRetain_n();

    v96 = v176;
    sub_1AF449DC0(&v178, &v183);
    v176 = v96;
    if (v96)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_108;
    }

    v97 = v183;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    sub_1AF6345D0(v97, v172);
    v39 = MEMORY[0x1E69E6530];
    if (v98)
    {
      v99 = v91[1];
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v91[1] = v99;
      if ((v100 & 1) == 0)
      {
        v99 = sub_1AF422330(0, *(v99 + 2) + 1, 1, v99, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v91[1] = v99;
      }

      v101 = v172;
      v103 = *(v99 + 2);
      v102 = *(v99 + 3);
      if (v103 >= v102 >> 1)
      {
        v99 = sub_1AF422330(v102 > 1, v103 + 1, 1, v99, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v173[1] = v99;
      }

      *(v99 + 2) = v103 + 1;
      *&v99[8 * v103 + 32] = v101;
    }

    if (v174 == v39)
    {
      *&v178 = v97;

      swift_dynamicCast();
    }

    v37 = v165;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&v178 = *v37;
    v105 = v178;
    *v37 = 0x8000000000000000;
    v106 = v172;
    v107 = sub_1AF0D3F10(v172);
    v109 = v108;
    v110 = *(v105 + 16) + ((v108 & 1) == 0);
    if (*(v105 + 24) >= v110)
    {
      if ((v104 & 1) == 0)
      {
        v143 = v107;
        sub_1AF843F7C();
        v107 = v143;
      }

      goto LABEL_74;
    }

    sub_1AF82BC4C(v110, v104);
    v107 = sub_1AF0D3F10(v106);
    if ((v109 & 1) != (v111 & 1))
    {
      break;
    }

LABEL_74:
    v112 = v170;
    v35 = v157;
    v113 = v178;
    if (v109)
    {
      *(*(v178 + 56) + v107) = 0;
    }

    else
    {
      *(v178 + 8 * (v107 >> 6) + 64) |= 1 << v107;
      *(v113[6] + 8 * v107) = v106;
      *(v113[7] + v107) = 0;
      ++v113[2];
    }

    *v37 = v113;

    if (v164)
    {
      goto LABEL_101;
    }

    v114 = v176;
    sub_1AF3FA610(v159, v175, v169 & 1, v106, v112, v166, v167, v168, v37, v173, v161);
    v176 = v114;
    if (v114)
    {
LABEL_105:

      goto LABEL_107;
    }

    v115 = v185;
    v155 = sub_1AF96CD1C(v185);
    if (v155)
    {
      v116 = v176;
      v117 = *v148;
      v118 = v115 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v119 = v150;
      v120 = v158;
      (*v148)(v150, v118, v158);
      v117(v151, v119, v120);
      v121 = v166;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_1AF4276E0(0, v166[2] + 1, 1, v166, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v123 = v121[2];
      v122 = v121[3];
      if (v123 >= v122 >> 1)
      {
        v121 = sub_1AF4276E0(v122 > 1, v123 + 1, 1, v121, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v39 = MEMORY[0x1E69E6530];
      v124 = v154;
      v125 = v158;
      (*(v154 + 8))(v150, v158);
      v121[2] = v123 + 1;
      (*(v124 + 32))(v121 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v123, v151, v125);
      v126 = sub_1AF3FC510(v167, v168, v159, v175, v169 & 1, v121, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
      v176 = v116;
      if (v116)
      {
        goto LABEL_106;
      }

      v128 = v126;
      v129 = v127;

      if (v174 == v39)
      {
        v130 = *(v129 + 16);
        if (v130)
        {
          *&v178 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v131 = 32;
          do
          {
            v132 = *(v128 + 16);
            if (v132)
            {
              v133 = sub_1AF0D3F10(*(v129 + v131));
              if (v134)
              {
                v132 = *(*(v128 + 56) + 8 * v133);
              }

              else
              {
                v132 = 0;
              }
            }

            v177 = v132;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v131 += 8;
            --v130;
          }

          while (v130);

          v135 = v178;
        }

        else
        {

          v135 = MEMORY[0x1E69E7CC0];
        }

        v136 = v185;
        type metadata accessor for Graph();
        v137 = swift_allocObject();
        *(v137 + 16) = v135;
        *(v136 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v137;
      }

      else
      {
      }

      v35 = v157;
      v37 = v165;
    }

    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode();
LABEL_101:

      goto LABEL_5;
    }

    v138 = v185;

    v140 = v176;
    v141 = sub_1AF3D7890(v139, v37, v173);
    v176 = v140;

    v138[2] = v141;

    v39 = MEMORY[0x1E69E6530];

LABEL_5:

    v38 = v163;
LABEL_6:
    if (++v36 == v35)
    {
      goto LABEL_103;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_111:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3FB9C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, void *a6)
{
  v32 = sub_1AF441394(MEMORY[0x1E69E7CC0], type metadata accessor for AuthoringNode, sub_1AF82B9E8, sub_1AF843E0C);
  v33 = v13;
  sub_1AF4121EC(a1, a2, a3 & 1, a4, a5, a6, &v32);
  v14 = v32;
  if (!v6)
  {
    v15 = v33;
    v16 = *(v33 + 2);

    a3 = v14;
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      a3 = v14;
      v19 = v15;
      do
      {
        v20 = v17;
        while (1)
        {
          v21 = *&v18[8 * v20];
          if (*(v14 + 16))
          {
            sub_1AF0D3F10(*&v18[8 * v20]);
            if (v22)
            {
            }
          }

          _s11DeletedNodeCMa_0(0);
          v23 = swift_dynamicCastClass();

          if (v23)
          {
            v24 = sub_1AF0D3F10(v21);
            if (v25)
            {
              break;
            }
          }

          if (v16 == ++v20)
          {
            goto LABEL_21;
          }
        }

        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = a3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF843E0C();
          a3 = v34;
        }

        sub_1AF6B761C(v26, a3);

        v32 = a3;
        v28 = *(v19 + 2);
        if (v28)
        {
          v29 = 0;
          while (*&v19[8 * v29 + 32] != v21)
          {
            if (v28 == ++v29)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v29 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AFC0D940(v19);
        }

        v17 = v20 + 1;
        v30 = *(v19 + 2) - 1;
        memmove(&v19[8 * v29 + 32], &v19[8 * v29 + 40], 8 * (v30 - v29));
        *(v19 + 2) = v30;
        v33 = v19;
      }

      while (v16 - 1 != v20);
    }
  }

LABEL_21:

  return a3;
}

void *sub_1AF3FBC60(uint64_t a1, uint64_t a2, char a3, unint64_t a4, char a5, void *a6)
{
  v38 = sub_1AF42BFAC(MEMORY[0x1E69E7CC0]);
  v39 = v13;
  sub_1AF412FE8(a1, a2, a3 & 1, a4, a5, a6, &v38);
  if (v6)
  {
  }

  else
  {
    sub_1AF44479C(0);
    v15 = v14;
    v16 = type metadata accessor for AuthoringNode();
    a6 = v38;
    v17 = v39;
    if (v15 == v16)
    {
      v18 = *(v39 + 2);

      v19 = a6;
      if (v18)
      {
        v20 = 0;
        v21 = v17 + 32;
        v19 = a6;
        v22 = v17;
        do
        {
          v37 = v22;
          v23 = v20;
          while (1)
          {
            v24 = *&v21[8 * v23];
            if (a6[2])
            {
              sub_1AF0D3F10(*&v21[8 * v23]);
              if (v25)
              {
              }
            }

            _s11DeletedNodeCMa_0(0);
            v26 = swift_dynamicCastClass();

            if (v26)
            {
              v27 = sub_1AF0D3F10(v24);
              if (v28)
              {
                break;
              }
            }

            if (v18 == ++v23)
            {
              goto LABEL_23;
            }
          }

          v29 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = v19;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AF84466C();
            v19 = v40;
          }

          sub_1AF6B761C(v29, v19);

          v38 = v19;
          v31 = *(v22 + 2);
          if (v31)
          {
            v32 = 0;
            while (*&v37[8 * v32 + 32] != v24)
            {
              if (v31 == ++v32)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            v32 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_1AFC0D940(v37);
          }

          v20 = v23 + 1;
          v33 = *(v37 + 2) - 1;
          v34 = v33 - v32;
          v35 = &v37[8 * v32];
          v22 = v37;
          memmove(v35 + 32, v35 + 40, 8 * v34);
          *(v37 + 2) = v33;
          v39 = v37;
        }

        while (v18 - 1 != v23);
      }

LABEL_23:

      return v19;
    }
  }

  return a6;
}