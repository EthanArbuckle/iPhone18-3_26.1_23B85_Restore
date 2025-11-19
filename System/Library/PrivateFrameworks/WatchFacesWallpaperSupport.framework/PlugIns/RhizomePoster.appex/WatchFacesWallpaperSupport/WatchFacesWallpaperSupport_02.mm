uint64_t sub_10001D378(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a5;
  v8 = a3[1];
  if (v8 < 1)
  {
    swift_bridgeObjectRetain_n();
    v10 = &_swiftEmptyArrayStorage;
LABEL_183:
    v193 = *a1;
    if (!*a1)
    {
      goto LABEL_224;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_185:
      v196 = v10;
      v138 = *(v10 + 2);
      if (v138 >= 2)
      {
        do
        {
          v139 = *a3;
          if (!*a3)
          {
            goto LABEL_222;
          }

          v140 = *&v10[16 * v138];
          v141 = v10;
          v142 = *&v10[16 * v138 + 24];
          v143 = (v139 + 8 * v140);
          v144 = (v139 + 8 * *&v10[16 * v138 + 16]);
          v145 = (v139 + 8 * v142);
          v10 = a5;

          sub_100019684(v143, v144, v145, v193, a5);
          if (v6)
          {
            break;
          }

          if (v142 < v140)
          {
            goto LABEL_210;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_100019AD0(v141);
          }

          if (v138 - 2 >= *(v141 + 2))
          {
            goto LABEL_211;
          }

          v146 = &v141[16 * v138];
          *v146 = v140;
          *(v146 + 1) = v142;
          v196 = v141;
          sub_100019A44(v138 - 1);
          v10 = v196;
          v138 = *(v196 + 2);
        }

        while (v138 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_218:
    v10 = sub_100019AD0(v10);
    goto LABEL_185;
  }

  v192 = a5 & 0xC000000000000001;
  v189 = a5 & 0xFFFFFFFFFFFFFF8;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  v10 = &_swiftEmptyArrayStorage;
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    v190 = v10;
    if (v9 + 1 >= v8)
    {
      v20 = v9 + 1;
      goto LABEL_63;
    }

    v13 = v7;
    v14 = *a3;
    v15 = *(*a3 + 8 * v12);
    v194 = *(*a3 + 8 * v9);
    v195 = v15;

    v16 = v13;
    v17 = v6;
    LODWORD(v193) = sub_100011D28(&v195, &v194, v16);
    if (v6)
    {
      swift_bridgeObjectRelease_n();
    }

    v18 = v11 + 2;
    v149 = v11;
    if (v11 + 2 >= v8)
    {
      v20 = v11 + 2;
      goto LABEL_58;
    }

    v19 = v14 + 8 * v11 + 16;
    do
    {
      v20 = v18;
      v21 = *(v19 - 8);
      v10 = *v19;
      v22 = *(*v19 + 96);
      if (v22 > 0x10 || (v23 = 1 << v22, (v23 & 0x1F000) != 0) || (v23 & 0xF0) == 0)
      {
        v24 = sub_100037558();

        if (v24)
        {

          goto LABEL_9;
        }

        v25 = *(v21 + 96);
        if (v25 <= 0x10)
        {
          v26 = 1 << v25;
          if ((v26 & 0x1F000) == 0 && (v26 & 0xF0) != 0)
          {

            if ((v193 & 1) == 0)
            {
              goto LABEL_180;
            }

            goto LABEL_10;
          }
        }

        v27 = sub_100037558();

        if (v27)
        {

          if ((v193 & 1) == 0)
          {
            goto LABEL_180;
          }

          goto LABEL_10;
        }

        if (v192)
        {
          v28 = sub_1000373C8();
        }

        else
        {
          if (!*(v189 + 16))
          {
            goto LABEL_213;
          }

          v28 = *(a5 + 32);
        }

        if (CGSizeEqualToSize(*(v10 + 56), *(v28 + 56)) && CGPointEqualToPoint(*(v10 + 136), *(v28 + 136)))
        {
          v29 = *(v10 + 9);
          v30 = *(v10 + 10);
          v160 = *(v10 + 11);
          v166 = *(v28 + 72);
          v180 = *(v28 + 80);
          v170 = *(v28 + 88);
          sub_1000201F4(0, &qword_10004B320);
          v31 = v29;
          v176 = v30;
          v155 = v160;
          v32 = v166;
          v181 = v180;
          v171 = v170;
          if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
          {

            goto LABEL_36;
          }

          v33 = sub_100037258();

          if (v33)
          {
            v34 = v10[96];
            v35 = *(v28 + 96);

            if (v34 == v35)
            {

              v6 = v17;
              if ((v193 & 1) == 0)
              {
LABEL_180:
                v10 = v190;
                v7 = a5;
                v11 = v149;
                goto LABEL_63;
              }

              goto LABEL_10;
            }

            goto LABEL_36;
          }
        }

LABEL_36:
        if (v192)
        {
          v36 = sub_1000373C8();
        }

        else
        {
          v36 = *(a5 + 32);
        }

        if (!CGSizeEqualToSize(*(v21 + 56), *(v36 + 56)) || !CGPointEqualToPoint(*(v21 + 136), *(v36 + 136)))
        {
LABEL_46:

          goto LABEL_47;
        }

        v37 = *(v21 + 72);
        v38 = *(v21 + 80);
        v161 = *(v21 + 88);
        v167 = *(v36 + 72);
        v182 = *(v36 + 80);
        v172 = *(v36 + 88);
        sub_1000201F4(0, &qword_10004B320);
        v39 = v37;
        v177 = v38;
        v156 = v161;
        v40 = v167;
        v183 = v182;
        v173 = v172;
        if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
        {

LABEL_47:
          v44 = *(v10 + 2);
          v45 = *(v21 + 16);

          v6 = v17;
          if (((v193 ^ (v45 >= v44)) & 1) == 0)
          {
            v12 = v20 - 1;
            goto LABEL_57;
          }

          goto LABEL_10;
        }

        v41 = sub_100037258();

        if ((v41 & 1) == 0)
        {
          goto LABEL_46;
        }

        v42 = *(v21 + 96);
        v43 = *(v36 + 96);

        if (v42 != v43)
        {
          goto LABEL_47;
        }

        v6 = v17;
        goto LABEL_9;
      }

LABEL_9:
      if (v193)
      {
        v12 = v20 - 1;
        v10 = v190;
        v7 = a5;
        v11 = v149;
        if (v20 < v149)
        {
          goto LABEL_215;
        }

        goto LABEL_62;
      }

LABEL_10:
      v18 = v20 + 1;
      v19 += 8;
    }

    while (v8 != v20 + 1);
    v12 = v20;
    v20 = v8;
LABEL_57:
    v10 = v190;
LABEL_58:
    v7 = a5;
    v11 = v149;
    if ((v193 & 1) == 0)
    {
      goto LABEL_63;
    }

    if (v20 < v149)
    {
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

LABEL_62:
    if (v11 <= v12)
    {
      v80 = 8 * v20 - 8;
      v81 = 8 * v11;
      v82 = v20;
      v83 = v11;
      do
      {
        if (v83 != --v82)
        {
          v85 = *a3;
          if (!*a3)
          {
            goto LABEL_221;
          }

          v84 = *(v85 + v81);
          *(v85 + v81) = *(v85 + v80);
          *(v85 + v80) = v84;
        }

        ++v83;
        v80 -= 8;
        v81 += 8;
      }

      while (v83 < v82);
    }

LABEL_63:
    v46 = a3[1];
    if (v20 >= v46)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v20, v11))
    {
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }

    if (v20 - v11 >= a4)
    {
      goto LABEL_130;
    }

    v47 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      goto LABEL_216;
    }

    if (v47 >= v46)
    {
      v47 = a3[1];
    }

    if (v47 < v11)
    {
LABEL_217:
      __break(1u);
      goto LABEL_218;
    }

    if (v20 == v47)
    {
      goto LABEL_130;
    }

    v148 = v6;
    v193 = *a3;
    v48 = *a3 + 8 * v20 - 8;
    v150 = v11;
    v6 = v11 - v20;
    v152 = v47;
LABEL_74:
    v174 = v20;
    v49 = *(v193 + 8 * v20);
    v153 = v6;
    v154 = v48;
    v50 = v48;
LABEL_75:
    v51 = *v50;
    v52 = *(v49 + 96);
    if (v52 <= 0x10)
    {
      v53 = 1 << v52;
      if ((v53 & 0x1F000) == 0 && (v53 & 0xF00) == 0 && (v53 & 0xF0) != 0)
      {

LABEL_73:
        v20 = v174 + 1;
        v48 = v154 + 8;
        v6 = v153 - 1;
        if (v174 + 1 == v152)
        {
          v20 = v152;
          v6 = v148;
          v11 = v150;
LABEL_130:
          if (v20 >= v11)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_100012EC0(0, *(v10 + 2) + 1, 1, v10);
            }

            v87 = *(v10 + 2);
            v86 = *(v10 + 3);
            v88 = v87 + 1;
            if (v87 >= v86 >> 1)
            {
              v10 = sub_100012EC0((v86 > 1), v87 + 1, 1, v10);
            }

            *(v10 + 2) = v88;
            v89 = &v10[16 * v87];
            *(v89 + 4) = v11;
            *(v89 + 5) = v20;
            v175 = v20;
            v193 = *a1;
            if (!*a1)
            {
              goto LABEL_223;
            }

            if (!v87)
            {
LABEL_3:
              v8 = a3[1];
              v9 = v175;
              if (v175 >= v8)
              {
                goto LABEL_183;
              }

              continue;
            }

            while (1)
            {
              v90 = v88 - 1;
              if (v88 >= 4)
              {
                break;
              }

              if (v88 == 3)
              {
                v91 = *(v10 + 4);
                v92 = *(v10 + 5);
                v101 = __OFSUB__(v92, v91);
                v93 = v92 - v91;
                v94 = v101;
LABEL_150:
                if (v94)
                {
                  goto LABEL_201;
                }

                v107 = &v10[16 * v88];
                v109 = *v107;
                v108 = *(v107 + 1);
                v110 = __OFSUB__(v108, v109);
                v111 = v108 - v109;
                v112 = v110;
                if (v110)
                {
                  goto LABEL_204;
                }

                v113 = &v10[16 * v90 + 32];
                v115 = *v113;
                v114 = *(v113 + 1);
                v101 = __OFSUB__(v114, v115);
                v116 = v114 - v115;
                if (v101)
                {
                  goto LABEL_207;
                }

                if (__OFADD__(v111, v116))
                {
                  goto LABEL_208;
                }

                if (v111 + v116 >= v93)
                {
                  if (v93 < v116)
                  {
                    v90 = v88 - 2;
                  }

                  goto LABEL_171;
                }

                goto LABEL_164;
              }

              v117 = &v10[16 * v88];
              v119 = *v117;
              v118 = *(v117 + 1);
              v101 = __OFSUB__(v118, v119);
              v111 = v118 - v119;
              v112 = v101;
LABEL_164:
              if (v112)
              {
                goto LABEL_203;
              }

              v120 = &v10[16 * v90];
              v122 = *(v120 + 4);
              v121 = *(v120 + 5);
              v101 = __OFSUB__(v121, v122);
              v123 = v121 - v122;
              if (v101)
              {
                goto LABEL_206;
              }

              if (v123 < v111)
              {
                goto LABEL_3;
              }

LABEL_171:
              v128 = v90 - 1;
              if (v90 - 1 >= v88)
              {
                goto LABEL_196;
              }

              v129 = *a3;
              if (!*a3)
              {
                goto LABEL_220;
              }

              v130 = v10;
              v131 = *&v10[16 * v128 + 32];
              v132 = *&v10[16 * v90 + 40];
              v133 = (v129 + 8 * v131);
              v134 = (v129 + 8 * *&v10[16 * v90 + 32]);
              v135 = (v129 + 8 * v132);
              v10 = a5;

              sub_100019684(v133, v134, v135, v193, a5);
              if (v6)
              {
                swift_bridgeObjectRelease_n();
              }

              if (v132 < v131)
              {
                goto LABEL_197;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_100019AD0(v130);
              }

              if (v128 >= *(v130 + 2))
              {
                goto LABEL_198;
              }

              v136 = &v130[16 * v128];
              *(v136 + 4) = v131;
              *(v136 + 5) = v132;
              v196 = v130;
              sub_100019A44(v90);
              v10 = v196;
              v88 = *(v196 + 2);
              v7 = a5;
              if (v88 <= 1)
              {
                goto LABEL_3;
              }
            }

            v95 = &v10[16 * v88 + 32];
            v96 = *(v95 - 64);
            v97 = *(v95 - 56);
            v101 = __OFSUB__(v97, v96);
            v98 = v97 - v96;
            if (v101)
            {
              goto LABEL_199;
            }

            v100 = *(v95 - 48);
            v99 = *(v95 - 40);
            v101 = __OFSUB__(v99, v100);
            v93 = v99 - v100;
            v94 = v101;
            if (v101)
            {
              goto LABEL_200;
            }

            v102 = &v10[16 * v88];
            v104 = *v102;
            v103 = *(v102 + 1);
            v101 = __OFSUB__(v103, v104);
            v105 = v103 - v104;
            if (v101)
            {
              goto LABEL_202;
            }

            v101 = __OFADD__(v93, v105);
            v106 = v93 + v105;
            if (v101)
            {
              goto LABEL_205;
            }

            if (v106 >= v98)
            {
              v124 = &v10[16 * v90 + 32];
              v126 = *v124;
              v125 = *(v124 + 1);
              v101 = __OFSUB__(v125, v126);
              v127 = v125 - v126;
              if (v101)
              {
                goto LABEL_209;
              }

              if (v93 < v127)
              {
                v90 = v88 - 2;
              }

              goto LABEL_171;
            }

            goto LABEL_150;
          }

          goto LABEL_212;
        }

        goto LABEL_74;
      }
    }

    break;
  }

  v54 = sub_100037558();

  if (v54)
  {

    goto LABEL_73;
  }

  v55 = *(v51 + 96);
  if (v55 <= 0x10)
  {
    v56 = 1 << v55;
    if ((v56 & 0x1F000) == 0 && (v56 & 0xF0) != 0)
    {

      goto LABEL_115;
    }
  }

  v57 = sub_100037558();

  if (v57)
  {

    goto LABEL_115;
  }

  if (v192)
  {
    v58 = sub_1000373C8();
  }

  else
  {
    if (!*(v189 + 16))
    {
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v58 = *(v7 + 32);
  }

  if (CGSizeEqualToSize(*(v49 + 56), *(v58 + 56)) && CGPointEqualToPoint(*(v49 + 136), *(v58 + 136)))
  {
    v59 = *(v49 + 72);
    v60 = *(v49 + 80);
    v61 = *(v49 + 88);
    v184 = *(v58 + 80);
    v157 = *(v58 + 72);
    v162 = *(v58 + 88);
    sub_1000201F4(0, &qword_10004B320);
    v62 = v59;
    v178 = v60;
    v168 = v61;
    v63 = v157;
    v185 = v184;
    v163 = v162;
    if (sub_100037258())
    {
      v158 = v63;
      v7 = a5;
      if (sub_100037258())
      {
        v64 = sub_100037258();

        if (v64)
        {
          v65 = *(v49 + 96);
          v66 = *(v58 + 96);

          v7 = a5;
          if (v65 == v66)
          {

            v10 = v190;
            goto LABEL_115;
          }
        }

        else
        {

          v7 = a5;
        }
      }

      else
      {
      }
    }

    else
    {

      v7 = a5;
    }
  }

  else
  {
  }

  if (v192)
  {
    v67 = sub_1000373C8();
  }

  else
  {
    v67 = *(v7 + 32);
  }

  if (!CGSizeEqualToSize(*(v51 + 56), *(v67 + 56)) || !CGPointEqualToPoint(*(v51 + 136), *(v67 + 136)))
  {

    goto LABEL_114;
  }

  v68 = *(v51 + 72);
  v69 = *(v51 + 80);
  v70 = *(v51 + 88);
  v186 = *(v67 + 80);
  v159 = *(v67 + 72);
  v164 = *(v67 + 88);
  sub_1000201F4(0, &qword_10004B320);
  v71 = v68;
  v179 = v69;
  v169 = v70;
  v72 = v159;
  v187 = v186;
  v165 = v164;
  if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
  {

LABEL_113:
    v7 = a5;
    goto LABEL_114;
  }

  v73 = sub_100037258();

  if ((v73 & 1) == 0)
  {

    goto LABEL_113;
  }

  v74 = *(v51 + 96);
  v75 = *(v67 + 96);

  v7 = a5;
  if (v74 == v75)
  {

    v10 = v190;
    goto LABEL_73;
  }

LABEL_114:
  v76 = *(v49 + 16);
  v77 = *(v51 + 16);

  v10 = v190;
  if (v77 >= v76)
  {
    goto LABEL_73;
  }

LABEL_115:
  if (v193)
  {
    v78 = *v50;
    v49 = v50[1];
    *v50 = v49;
    v50[1] = v78;
    --v50;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_73;
    }

    goto LABEL_75;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_220:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_221:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_222:

  __break(1u);
LABEL_223:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_224:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_10001E684(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 == a2)
  {
    return result;
  }

  v5 = a5;
  v58 = a5 & 0xFFFFFFFFFFFFFF8;
  v59 = a5 & 0xC000000000000001;
  v60 = *a4;
  v6 = (*a4 + 8 * a3 - 8);
  v7 = result - a3;
LABEL_6:
  v40 = a3;
  v8 = *(v60 + 8 * a3);
  v38 = v7;
  v39 = v6;
  while (1)
  {
    v9 = *v6;
    v10 = *(v8 + 96);
    if (v10 <= 0x10)
    {
      v11 = 1 << v10;
      if ((v11 & 0x1F000) == 0 && (v11 & 0xF00) == 0 && (v11 & 0xF0) != 0)
      {

LABEL_5:
        a3 = v40 + 1;
        v6 = v39 + 1;
        v7 = v38 - 1;
        if (v40 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

    v12 = sub_100037558();

    if (v12)
    {
      goto LABEL_4;
    }

    v13 = *(v9 + 96);
    if (v13 > 0x10)
    {
      break;
    }

    v14 = 1 << v13;
    if ((v14 & 0x1F000) != 0 || (v14 & 0xF0) == 0)
    {
      break;
    }

LABEL_49:
    if (!v60)
    {
      goto LABEL_58;
    }

    v35 = *v6;
    v8 = v6[1];
    *v6 = v8;
    v6[1] = v35;
    --v6;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_5;
    }
  }

  v15 = sub_100037558();

  if (v15)
  {
LABEL_16:

    goto LABEL_49;
  }

  if (v59)
  {
    v16 = sub_1000373C8();
LABEL_20:
    if (!CGSizeEqualToSize(*(v8 + 56), *(v16 + 56)) || !CGPointEqualToPoint(*(v8 + 136), *(v16 + 136)))
    {

LABEL_28:
      if (v59)
      {
LABEL_29:
        v25 = sub_1000373C8();
LABEL_35:
        if (CGSizeEqualToSize(*(v9 + 56), *(v25 + 56)) && CGPointEqualToPoint(*(v9 + 136), *(v25 + 136)))
        {
          v26 = *(v9 + 72);
          v27 = *(v9 + 80);
          v42 = *(v25 + 72);
          v56 = *(v25 + 80);
          v45 = *(v25 + 88);
          v49 = *(v9 + 88);
          sub_1000201F4(0, &qword_10004B320);
          v28 = v26;
          v53 = v27;
          v50 = v49;
          v29 = v42;
          v57 = v56;
          v46 = v45;
          if (sub_100037258() & 1) != 0 && (sub_100037258())
          {
            v30 = sub_100037258();

            if (v30)
            {
              v31 = *(v9 + 96);
              v32 = *(v25 + 96);

              v24 = v31 == v32;
              v5 = a5;
              if (v24)
              {
LABEL_4:

                goto LABEL_5;
              }

              goto LABEL_48;
            }
          }

          else
          {
          }

          v5 = a5;
        }

        else
        {
        }

LABEL_48:
        v33 = *(v8 + 16);
        v34 = *(v9 + 16);

        if (v34 >= v33)
        {
          goto LABEL_5;
        }

        goto LABEL_49;
      }

LABEL_34:
      v25 = *(v5 + 32);

      goto LABEL_35;
    }

    v17 = *(v8 + 72);
    v18 = *(v8 + 80);
    v41 = *(v16 + 72);
    v54 = *(v16 + 80);
    v43 = *(v16 + 88);
    v47 = *(v8 + 88);
    sub_1000201F4(0, &qword_10004B320);
    v19 = v17;
    v52 = v18;
    v48 = v47;
    v20 = v41;
    v55 = v54;
    v44 = v43;
    if ((sub_100037258() & 1) == 0 || (sub_100037258() & 1) == 0)
    {

      goto LABEL_33;
    }

    v21 = sub_100037258();

    if ((v21 & 1) == 0)
    {

LABEL_33:
      v5 = a5;
      if (v59)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }

    v22 = *(v8 + 96);
    v23 = *(v16 + 96);

    v24 = v22 == v23;
    v5 = a5;
    if (!v24)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (*(v58 + 16))
  {
    v16 = *(v5 + 32);

    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

Swift::Int sub_10001ED9C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_100037528(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for RhizomeLayoutSpec();
        v8 = sub_100037138();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_10001D378(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_10001E684(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10001EEF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10001AB30(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_10001ED9C(v8, a2);

  sub_100037408();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10001EFA4(char *a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = sub_100019AE4(2uLL);
  v152 = &_swiftEmptyArrayStorage;
  v12 = v11 + 3;
  if ((v11 + 3) < 0)
  {
    goto LABEL_79;
  }

  v145 = a1;
  v140 = a2;
  v141 = a4;
  p_align = &_swiftEmptyArrayStorage;
  v147 = a3 << 8;
  v148 = a3;
  if (v11 != -3)
  {
    v13 = &_swiftEmptyArrayStorage;
    p_align = &_swiftEmptyArrayStorage;
    do
    {
      v14 = sub_10001B320();
      v15 = sub_100035A88(v14, v13, a3);
      v17 = v16;
      v19 = v18;
      v20 = v15;
      v21 = v17;
      v22 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100012FC4(0, *(v13 + 2) + 1, 1, v13);
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        v13 = sub_100012FC4((v23 > 1), v24 + 1, 1, v13);
      }

      *(v13 + 2) = v24 + 1;
      v25 = &v13[24 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v21;
      *(v25 + 6) = v22;
      v26 = qword_10004AE38;
      v27 = v20;
      v28 = v21;
      v29 = v22;
      if (v26 != -1)
      {
        swift_once();
      }

      v30 = qword_10004D310;
      v31 = sub_100006024(0, v147 | v14, v27, v28, v29, v153, *&qword_10004D310);
      if (v154)
      {
        v33 = v155;
        v32 = v156;
        v31 = sub_10000FE6C(v153);
      }

      else
      {
        v33 = 0.0;
        v32 = 0.0;
      }

      sub_10001B650(v31, v32);
      v35 = v34;
      v37 = v36;
      sub_10000FBE8(v14, 0.0, 0.0);
      v39 = v38;
      if (p_align >> 62)
      {
        v40 = sub_1000374A8();
      }

      else
      {
        v40 = *((p_align & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for RhizomeLayoutSpec();
      v41 = swift_allocObject();
      *(v41 + 16) = 0u;
      *(v41 + 32) = 0u;
      *(v41 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v41 + 56) = v33;
      *(v41 + 64) = v32;
      *(v41 + 136) = v35;
      *(v41 + 144) = v37;
      *(v41 + 72) = v27;
      *(v41 + 80) = v28;
      *(v41 + 88) = v29;
      *(v41 + 104) = v39;
      swift_unknownObjectWeakAssign();
      *(v41 + 96) = v14;
      *(v41 + 120) = v40;
      *(v41 + 128) = 256;
      *(v41 + 112) = v30;
      *(v41 + 16) = v33 * v32;
      *(v41 + 24) = v35 - v33 * 0.5;
      *(v41 + 32) = v37 - v32 * 0.5;
      *(v41 + 40) = v33;
      *(v41 + 48) = v32;

      sub_1000370E8();
      if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      p_align = v152;
      --v12;
      a3 = v148;
    }

    while (v12);
  }

  if (qword_10004ADB8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v42 = sub_100036F68();
  sub_100002684(v42, qword_10004D258);
  v43 = sub_100036F48();
  LOBYTE(v44) = sub_1000371B8();
  if (!os_log_type_enabled(v43, v44))
  {

    goto LABEL_26;
  }

  v45 = swift_slowAlloc();
  a3 = swift_slowAlloc();
  v157[0] = a3;
  *v45 = 134218242;
  if (p_align >> 62)
  {
    goto LABEL_86;
  }

  for (i = *((p_align & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1000374A8())
  {
    *(v45 + 4) = i;
    *(v45 + 6) = 2080;
    type metadata accessor for RhizomeLayoutSpec();

    v47 = sub_100037118();
    v49 = v48;

    v50 = sub_10000BEB8(v47, v49, v157);

    *(v45 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v43, v44, "Offscreen layout specs before refinement. Count: %ld specs: %s", v45, 0x16u);
    sub_1000039EC(a3);

    a3 = v148;
LABEL_26:
    v51 = qword_10004ADE0;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = -*&qword_10004D2B8;
    if (qword_10004ADF0 != -1)
    {
      v138 = -*&qword_10004D2B8;
      swift_once();
      v52 = v138;
    }

    v53 = sub_1000258CC(p_align, 3, v52, -*&qword_10004D2C8);

    swift_beginAccess();
    v152 = v53;

    v54 = sub_100036F48();
    v55 = sub_1000371B8();
    v56 = v53 >> 62;
    v146 = v53 >> 62;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v157[0] = v58;
      *v57 = 134218242;
      if (v56)
      {
        v59 = sub_1000374A8();
      }

      else
      {
        v59 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v57 + 4) = v59;
      *(v57 + 12) = 2080;
      type metadata accessor for RhizomeLayoutSpec();

      v60 = sub_100037118();
      v62 = v61;

      v63 = sub_10000BEB8(v60, v62, v157);

      *(v57 + 14) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, "Offscreen layout specs after refinement.  Count: %ld specs: %s", v57, 0x16u);
      sub_1000039EC(v58);

      v56 = v53 >> 62;
    }

    else
    {
    }

    v150 = &_swiftEmptyArrayStorage;
    if (v56)
    {
      v64 = sub_1000374A8();
    }

    else
    {
      v64 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v65 = sub_10001B740(a3, v64, &_swiftEmptyArrayStorage, a5);

    sub_1000370E8();
    if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100037128();
    }

    sub_100037148();
    v66 = *(v65 + 9);
    v67 = *(v65 + 10);
    v144 = v65;
    v68 = *(v65 + 11);
    v69 = v66;
    v70 = v67;
    v71 = v68;
    v72 = sub_100012FC4(0, 1, 1, &_swiftEmptyArrayStorage);
    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_100012FC4((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[24 * v74];
    *(v75 + 4) = v69;
    *(v75 + 5) = v70;
    *(v75 + 6) = v71;
    v76 = v146 ? sub_1000374A8() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (__OFADD__(v76, 1))
    {
      __break(1u);
    }

    else
    {
      v142 = v53;
      v53 = sub_10001BB1C(a3, v76 + 1, v72);

      sub_1000370E8();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_46;
      }
    }

    sub_100037128();
LABEL_46:
    sub_100037148();
    v77 = *(v53 + 72);
    v78 = *(v53 + 80);
    v143 = v53;
    v79 = *(v53 + 88);
    v80 = v77;
    v45 = v78;
    v44 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_100012FC4(0, *(v72 + 2) + 1, 1, v72);
    }

    v82 = *(v72 + 2);
    v81 = *(v72 + 3);
    p_align = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      v72 = sub_100012FC4((v81 > 1), v82 + 1, 1, v72);
    }

    *(v72 + 2) = p_align;
    v83 = &v72[24 * v82];
    *(v83 + 4) = v80;
    *(v83 + 5) = v45;
    *(v83 + 6) = v44;
    v151 = v72;
    v43 = sub_10001C2B8(a3, &v151, v144[3], v144[4], v144[5], v144[6], v143[3], v143[4], v143[5], v143[6]);

    sub_10000BA28(v84);
    v85 = v145 - 4;
    if (__OFSUB__(v145, 4))
    {
      __break(1u);
      goto LABEL_85;
    }

    if ((v85 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    ;
  }

  v139 = v43;
  p_align = &stru_100048FE8.align;
  if (v145 != 4)
  {
    v86 = objc_opt_self();
    v87 = v151;
    v145 = v86;
    while (1)
    {
      v88 = [v145 mainScreen];
      [v88 *(p_align + 3728)];
      a5 = v89;
      v91 = v90;

      if (a5 < 0.0)
      {
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v93 = sub_100019B70(v92, 0.0, a5);
      if (v91 < 0.0)
      {
        goto LABEL_77;
      }

      a5 = v94;
      v95 = p_align;
      sub_100019B70(v93, 0.0, v91);
      v97 = v96;
      v98 = sub_10001B320();
      v99 = sub_100035A88(v98, v87, a3);
      v101 = v100;
      v103 = v102;
      v104 = v99;
      v105 = v101;
      v106 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_100012FC4(0, *(v87 + 2) + 1, 1, v87);
      }

      v108 = *(v87 + 2);
      v107 = *(v87 + 3);
      if (v108 >= v107 >> 1)
      {
        v87 = sub_100012FC4((v107 > 1), v108 + 1, 1, v87);
      }

      *(v87 + 2) = v108 + 1;
      v109 = &v87[24 * v108];
      *(v109 + 4) = v104;
      *(v109 + 5) = v105;
      *(v109 + 6) = v106;
      v110 = qword_10004AE38;
      v111 = v104;
      v112 = v105;
      p_align = v106;
      if (v110 != -1)
      {
        swift_once();
      }

      v113 = qword_10004D310;
      sub_100006024(0, v147 | v98, v111, v112, p_align, v157, *&qword_10004D310);
      if (v157[1])
      {
        v114 = *&v157[7];
        v115 = *&v157[8];
        sub_10000FE6C(v157);
      }

      else
      {
        v114 = 0.0;
        v115 = 0.0;
      }

      sub_10000FBE8(v98, 0.0, 0.0);
      v117 = v116;
      if (v150 >> 62)
      {
        a3 = sub_1000374A8();
        if (!v146)
        {
LABEL_67:
          v118 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_70;
        }
      }

      else
      {
        a3 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v146)
        {
          goto LABEL_67;
        }
      }

      v118 = sub_1000374A8();
LABEL_70:
      v119 = a3 + v118;
      if (__OFADD__(a3, v118))
      {
        goto LABEL_78;
      }

      type metadata accessor for RhizomeLayoutSpec();
      v120 = swift_allocObject();
      *(v120 + 16) = 0u;
      *(v120 + 32) = 0u;
      *(v120 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v120 + 56) = v114;
      *(v120 + 64) = v115;
      *(v120 + 136) = a5;
      *(v120 + 144) = v97;
      *(v120 + 72) = v111;
      *(v120 + 80) = v112;
      *(v120 + 88) = p_align;
      *(v120 + 104) = v117;
      swift_unknownObjectWeakAssign();
      *(v120 + 96) = v98;
      *(v120 + 120) = v119;
      *(v120 + 128) = 256;
      *(v120 + 112) = v113;
      *(v120 + 16) = v114 * v115;
      *(v120 + 24) = a5 - v114 * 0.5;
      *(v120 + 32) = v97 - v115 * 0.5;
      *(v120 + 40) = v114;
      *(v120 + 48) = v115;

      sub_1000370E8();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      --v85;
      a3 = v148;
      p_align = v95;
      if (!v85)
      {
        v151 = v87;
        break;
      }
    }
  }

  v121 = objc_opt_self();
  v122 = [v121 mainScreen];
  [v122 *(p_align + 3728)];
  v124 = v123;

  v125 = sub_1000258CC(v150, 9, 0.0, v124);

  v150 = v125;
  sub_10001C9D8(&v150, a3, v141);

  sub_10000BA28(v126);

  v149 = sub_10001A91C(v127);
  sub_10001EEF8(&v149, v139);

  swift_bridgeObjectRelease_n();

  v128 = [v121 mainScreen];
  [v128 *(p_align + 3728)];
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v136 = v135;

  v158.origin.x = v130;
  v158.origin.y = v132;
  v158.size.width = v134;
  v158.size.height = v136;
  CGRectGetHeight(v158);

  return v140 & 1u | (a3 << 8);
}

uint64_t sub_10001FDCC(uint64_t result, uint64_t a2, int a3, double a4, uint64_t a5, unint64_t a6)
{
  v7 = a6;
  v46 = result;
  if (!(a6 >> 62))
  {
    v8 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = a3;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_27:
    v34 = [objc_opt_self() mainScreen];
    [v34 bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v48.origin.x = v36;
    v48.origin.y = v38;
    v48.size.width = v40;
    v48.size.height = v42;
    CGRectGetHeight(v48);
    return v43 & 0xFFFFFF00 | 1;
  }

  result = sub_1000374A8();
  v8 = result;
  v43 = a3;
  if (!result)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v8 >= 1)
  {
    v9 = 0;
    v47 = v7 & 0xC000000000000001;
    v45 = v7;
    do
    {
      if (v47)
      {
        v10 = sub_1000373C8();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = Strong;
        [Strong center];
        v14 = v13;
        v16 = v15;
        if (v46)
        {
          v17 = v13 - a4;
          v18 = v16 + a4;
          v19 = v13 + a4;
          if (a2 == 4)
          {
            v18 = v16;
          }

          else
          {
            v19 = v13;
          }

          if (a2 == 3)
          {
            v18 = v16;
          }

          else
          {
            v17 = v19;
          }

          if (a2 == 2)
          {
            v16 = v16 - a4;
          }

          else
          {
            v14 = v17;
            v16 = v18;
          }
        }

        v20 = *(v10 + 56);
        v21 = *(v10 + 64);
        v22 = *(v10 + 80);
        v23 = *(v10 + 88);
        v24 = *(v10 + 96);
        v25 = *(v10 + 104);
        v26 = *(v10 + 120);
        v27 = qword_10004AE38;
        v28 = *(v10 + 72);
        v29 = v22;
        v30 = v23;
        if (v27 != -1)
        {
          swift_once();
        }

        v31 = qword_10004D310;
        type metadata accessor for RhizomeLayoutSpec();
        v32 = swift_allocObject();
        *(v32 + 16) = 0u;
        *(v32 + 32) = 0u;
        *(v32 + 48) = 0;
        swift_unknownObjectWeakInit();
        *(v32 + 56) = v20;
        *(v32 + 64) = v21;
        *(v32 + 136) = v14;
        *(v32 + 144) = v16;
        *(v32 + 72) = v28;
        *(v32 + 80) = v29;
        *(v32 + 88) = v30;
        *(v32 + 104) = v25;
        swift_unknownObjectWeakAssign();
        *(v32 + 96) = v24;
        *(v32 + 120) = v26;
        *(v32 + 128) = 256;
        *(v32 + 112) = v31;
        *(v32 + 16) = v20 * v21;
        *(v32 + 24) = v14 - v20 * 0.5;
        *(v32 + 32) = v16 - v21 * 0.5;
        *(v32 + 40) = v20;
        *(v32 + 48) = v21;
        swift_unknownObjectWeakAssign();

        sub_1000370E8();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        sub_100037148();

        v7 = v45;
      }

      else
      {
      }

      ++v9;
    }

    while (v8 != v9);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000201F4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10002023C()
{
  result = qword_10004B3C8;
  if (!qword_10004B3C8)
  {
    sub_1000201F4(255, &qword_10004B3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B3C8);
  }

  return result;
}

uint64_t sub_100020300(unsigned __int8 a1)
{
  sub_100002590(&qword_10004B3A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100039190;
  v3 = objc_allocWithZone(UIColor);
  if (a1 <= 1u)
  {
    v29 = [v3 initWithRed:? green:? blue:? alpha:?];
    if (a1)
    {
      v95 = objc_opt_self();
      v96 = [v95 blackColor];
      v97 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 32) = v29;
      *(v2 + 40) = v96;
      *(v2 + 48) = v97;
      v98 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
      v99 = [v95 blackColor];
      v100 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 56) = v98;
      *(v2 + 64) = v99;
      *(v2 + 72) = v100;
      v101 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v102 = [v95 blackColor];
      v103 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 80) = v101;
      *(v2 + 88) = v102;
      *(v2 + 96) = v103;
      v104 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v105 = [v95 blackColor];
      v106 = [v95 blackColor];
      *(v2 + 104) = v104;
      *(v2 + 112) = v105;
      *(v2 + 120) = v106;
      v107 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      v108 = [v95 blackColor];
      v109 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
      *(v2 + 128) = v107;
      *(v2 + 136) = v108;
      *(v2 + 144) = v109;
      v110 = [objc_allocWithZone(UIColor) initWithRed:0.956862745 green:0.31372549 blue:0.349019608 alpha:1.0];
      v111 = [v95 blackColor];
      v112 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
      *(v2 + 152) = v110;
      *(v2 + 160) = v111;
      *(v2 + 168) = v112;
      v113 = [objc_allocWithZone(UIColor) initWithRed:0.956862745 green:0.31372549 blue:0.349019608 alpha:1.0];
      v114 = [v95 blackColor];
      v115 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      *(v2 + 176) = v113;
      *(v2 + 184) = v114;
      *(v2 + 192) = v115;
      v26 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
      v27 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v28 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
    }

    else
    {
      v30 = objc_opt_self();
      v31 = [v30 blackColor];
      v32 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      *(v2 + 32) = v29;
      *(v2 + 40) = v31;
      *(v2 + 48) = v32;
      v33 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
      v34 = [v30 blackColor];
      v35 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      *(v2 + 56) = v33;
      *(v2 + 64) = v34;
      *(v2 + 72) = v35;
      v36 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
      v37 = [v30 blackColor];
      v38 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      *(v2 + 80) = v36;
      *(v2 + 88) = v37;
      *(v2 + 96) = v38;
      v39 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      v40 = [v30 blackColor];
      v41 = [v30 blackColor];
      *(v2 + 104) = v39;
      *(v2 + 112) = v40;
      *(v2 + 120) = v41;
      v42 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v43 = [v30 blackColor];
      v44 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      *(v2 + 128) = v42;
      *(v2 + 136) = v43;
      *(v2 + 144) = v44;
      v45 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      v46 = [v30 blackColor];
      v47 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
      *(v2 + 152) = v45;
      *(v2 + 160) = v46;
      *(v2 + 168) = v47;
      v48 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
      v49 = [v30 blackColor];
      v50 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      *(v2 + 176) = v48;
      *(v2 + 184) = v49;
      *(v2 + 192) = v50;
      v26 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
      v27 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
      v28 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
    }
  }

  else if (a1 == 2)
  {
    v51 = [v3 initWithRed:? green:? blue:? alpha:?];
    v52 = objc_opt_self();
    v53 = [v52 blackColor];
    v54 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 32) = v51;
    *(v2 + 40) = v53;
    *(v2 + 48) = v54;
    v55 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:? alpha:?];
    v56 = [v52 blackColor];
    v57 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 56) = v55;
    *(v2 + 64) = v56;
    *(v2 + 72) = v57;
    v58 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v59 = [v52 blackColor];
    v60 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 80) = v58;
    *(v2 + 88) = v59;
    *(v2 + 96) = v60;
    v61 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v62 = [v52 blackColor];
    v63 = [v52 blackColor];
    *(v2 + 104) = v61;
    *(v2 + 112) = v62;
    *(v2 + 120) = v63;
    v64 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    v65 = [v52 blackColor];
    v66 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    *(v2 + 128) = v64;
    *(v2 + 136) = v65;
    *(v2 + 144) = v66;
    v67 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
    v68 = [v52 blackColor];
    v69 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    *(v2 + 152) = v67;
    *(v2 + 160) = v68;
    *(v2 + 168) = v69;
    v70 = [objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.674509804 blue:0.525490196 alpha:1.0];
    v71 = [v52 blackColor];
    v72 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    *(v2 + 176) = v70;
    *(v2 + 184) = v71;
    *(v2 + 192) = v72;
    v26 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
    v27 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v28 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
  }

  else if (a1 == 3)
  {
    v4 = [v3 initWithRed:0.643137255 green:0.37254902 blue:0.796078431 alpha:1.0];
    v5 = objc_opt_self();
    v6 = [v5 blackColor];
    v7 = [objc_allocWithZone(UIColor) initWithRed:0.364705882 green:0.168627451 blue:0.478431373 alpha:1.0];
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    *(v2 + 48) = v7;
    v8 = [objc_allocWithZone(UIColor) initWithRed:? green:? blue:? alpha:?];
    v9 = [v5 blackColor];
    v10 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    *(v2 + 56) = v8;
    *(v2 + 64) = v9;
    *(v2 + 72) = v10;
    v11 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
    v12 = [v5 blackColor];
    v13 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    *(v2 + 80) = v11;
    *(v2 + 88) = v12;
    *(v2 + 96) = v13;
    v14 = [objc_allocWithZone(UIColor) initWithRed:0.364705882 green:0.168627451 blue:0.478431373 alpha:1.0];
    v15 = [v5 blackColor];
    v16 = [v5 blackColor];
    *(v2 + 104) = v14;
    *(v2 + 112) = v15;
    *(v2 + 120) = v16;
    v17 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    v18 = [v5 blackColor];
    v19 = [objc_allocWithZone(UIColor) initWithRed:0.725490196 green:0.321568627 blue:0.0 alpha:1.0];
    *(v2 + 128) = v17;
    *(v2 + 136) = v18;
    *(v2 + 144) = v19;
    v20 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
    v21 = [v5 blackColor];
    v22 = [v5 blackColor];
    *(v2 + 152) = v20;
    *(v2 + 160) = v21;
    *(v2 + 168) = v22;
    v23 = [objc_allocWithZone(UIColor) initWithRed:0.725490196 green:0.321568627 blue:0.0 alpha:1.0];
    v24 = [v5 blackColor];
    v25 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    *(v2 + 176) = v23;
    *(v2 + 184) = v24;
    *(v2 + 192) = v25;
    v26 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v27 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
    v28 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
  }

  else
  {
    v73 = [v3 initWithRed:0.51372549 green:0.51372549 blue:0.51372549 alpha:1.0];
    v74 = objc_opt_self();
    v75 = [v74 blackColor];
    v76 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 32) = v73;
    *(v2 + 40) = v75;
    *(v2 + 48) = v76;
    v77 = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.407843137 blue:0.407843137 alpha:1.0];
    v78 = [v74 blackColor];
    v79 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 56) = v77;
    *(v2 + 64) = v78;
    *(v2 + 72) = v79;
    v80 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    v81 = [v74 blackColor];
    v82 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 80) = v80;
    *(v2 + 88) = v81;
    *(v2 + 96) = v82;
    v83 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    v84 = [v74 blackColor];
    v85 = [v74 blackColor];
    *(v2 + 104) = v83;
    *(v2 + 112) = v84;
    *(v2 + 120) = v85;
    v86 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    v87 = [v74 blackColor];
    v88 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    *(v2 + 128) = v86;
    *(v2 + 136) = v87;
    *(v2 + 144) = v88;
    v89 = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.407843137 blue:0.407843137 alpha:1.0];
    v90 = [v74 blackColor];
    v91 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    *(v2 + 152) = v89;
    *(v2 + 160) = v90;
    *(v2 + 168) = v91;
    v92 = [objc_allocWithZone(UIColor) initWithRed:0.51372549 green:0.51372549 blue:0.51372549 alpha:1.0];
    v93 = [v74 blackColor];
    v94 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    *(v2 + 176) = v92;
    *(v2 + 184) = v93;
    *(v2 + 192) = v94;
    v26 = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.407843137 blue:0.407843137 alpha:1.0];
    v27 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    v28 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
  }

  *(v2 + 200) = v26;
  *(v2 + 208) = v27;
  *(v2 + 216) = v28;
  return v2;
}

uint64_t sub_10002155C(unsigned __int8 a1)
{
  sub_100002590(&qword_10004B3A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000391A0;
  v3 = objc_allocWithZone(UIColor);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v65 = [v3 initWithRed:0.956862745 green:0.31372549 blue:0.349019608 alpha:1.0];
      v66 = objc_opt_self();
      v67 = [v66 blackColor];
      v68 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 32) = v65;
      *(v2 + 40) = v67;
      *(v2 + 48) = v68;
      v69 = [objc_allocWithZone(UIColor) initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
      v70 = [v66 blackColor];
      v71 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 56) = v69;
      *(v2 + 64) = v70;
      *(v2 + 72) = v71;
      v72 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v73 = [v66 blackColor];
      v74 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      *(v2 + 80) = v72;
      *(v2 + 88) = v73;
      *(v2 + 96) = v74;
      v75 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
      v76 = [v66 blackColor];
      v77 = [v66 blackColor];
      *(v2 + 104) = v75;
      *(v2 + 112) = v76;
      *(v2 + 120) = v77;
      v17 = [objc_allocWithZone(UIColor) initWithRed:0.658823529 green:0.0 blue:0.031372549 alpha:1.0];
      v18 = [v66 blackColor];
      v34 = objc_allocWithZone(UIColor);
      v36 = 1.0;
      v35 = 0.917647059;
      v37 = 0.00392156863;
      v64 = 0.0509803922;
      goto LABEL_11;
    }

    v20 = [v3 initWithRed:0.917647059 green:0.00392156863 blue:0.0509803922 alpha:1.0];
    v21 = objc_opt_self();
    v22 = [v21 blackColor];
    v23 = 0x3F9C1C1C1C1C1C1CLL;
    v24 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    *(v2 + 32) = v20;
    *(v2 + 40) = v22;
    *(v2 + 48) = v24;
    v25 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
    v26 = [v21 blackColor];
    v27 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    *(v2 + 56) = v25;
    *(v2 + 64) = v26;
    *(v2 + 72) = v27;
    v28 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v29 = [v21 blackColor];
    v30 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    *(v2 + 80) = v28;
    *(v2 + 88) = v29;
    *(v2 + 96) = v30;
    v31 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
    v32 = [v21 blackColor];
    v33 = [v21 blackColor];
    *(v2 + 104) = v31;
    *(v2 + 112) = v32;
    *(v2 + 120) = v33;
    v17 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
    v18 = [v21 blackColor];
    v34 = objc_allocWithZone(UIColor);
    v35 = 1.0;
    v36 = 1.0;
    v37 = 0.670588235;
LABEL_9:
    v64 = *&v23;
LABEL_11:
    v19 = [v34 initWithRed:v35 green:v37 blue:v64 alpha:v36];
    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v38 = [v3 initWithRed:0.388235294 green:0.674509804 blue:0.525490196 alpha:1.0];
    v39 = objc_opt_self();
    v40 = [v39 blackColor];
    v41 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 32) = v38;
    *(v2 + 40) = v40;
    *(v2 + 48) = v41;
    v42 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
    v43 = [v39 blackColor];
    v44 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 56) = v42;
    *(v2 + 64) = v43;
    *(v2 + 72) = v44;
    v45 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v46 = [v39 blackColor];
    v47 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    *(v2 + 80) = v45;
    *(v2 + 88) = v46;
    *(v2 + 96) = v47;
    v48 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    v49 = [v39 blackColor];
    v50 = [v39 blackColor];
    *(v2 + 104) = v48;
    *(v2 + 112) = v49;
    *(v2 + 120) = v50;
    v17 = [objc_allocWithZone(UIColor) initWithRed:0.203921569 green:0.454901961 blue:0.266666667 alpha:1.0];
    v18 = [v39 blackColor];
    v19 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
    goto LABEL_12;
  }

  if (a1 != 3)
  {
    v51 = [v3 initWithRed:0.51372549 green:0.51372549 blue:0.51372549 alpha:1.0];
    v52 = objc_opt_self();
    v53 = [v52 blackColor];
    v54 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 32) = v51;
    *(v2 + 40) = v53;
    *(v2 + 48) = v54;
    v55 = [objc_allocWithZone(UIColor) initWithRed:0.407843137 green:0.407843137 blue:0.407843137 alpha:1.0];
    v56 = [v52 blackColor];
    v57 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 56) = v55;
    *(v2 + 64) = v56;
    *(v2 + 72) = v57;
    v23 = 0x3FC999999999999ALL;
    v58 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    v59 = [v52 blackColor];
    v60 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    *(v2 + 80) = v58;
    *(v2 + 88) = v59;
    *(v2 + 96) = v60;
    v61 = [objc_allocWithZone(UIColor) initWithRed:0.2 green:0.2 blue:0.2 alpha:1.0];
    v62 = [v52 blackColor];
    v63 = [v52 blackColor];
    *(v2 + 104) = v61;
    *(v2 + 112) = v62;
    *(v2 + 120) = v63;
    v17 = [objc_allocWithZone(UIColor) initWithRed:0.325490196 green:0.325490196 blue:0.325490196 alpha:1.0];
    v18 = [v52 blackColor];
    v34 = objc_allocWithZone(UIColor);
    v36 = 1.0;
    v35 = 0.2;
    v37 = 0.2;
    goto LABEL_9;
  }

  v4 = [v3 initWithRed:0.643137255 green:0.37254902 blue:0.796078431 alpha:1.0];
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [objc_allocWithZone(UIColor) initWithRed:0.364705882 green:0.168627451 blue:0.478431373 alpha:1.0];
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  *(v2 + 48) = v7;
  v8 = [objc_allocWithZone(UIColor) initWithRed:0.117647059 green:0.564705882 blue:0.333333333 alpha:1.0];
  v9 = [v5 blackColor];
  v10 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = v10;
  v11 = [objc_allocWithZone(UIColor) initWithRed:0.439215686 green:0.105882353 blue:0.149019608 alpha:1.0];
  v12 = [v5 blackColor];
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.164705882 green:0.270588235 blue:0.192156863 alpha:1.0];
  *(v2 + 80) = v11;
  *(v2 + 88) = v12;
  *(v2 + 96) = v13;
  v14 = [objc_allocWithZone(UIColor) initWithRed:0.364705882 green:0.168627451 blue:0.478431373 alpha:1.0];
  v15 = [v5 blackColor];
  v16 = [v5 blackColor];
  *(v2 + 104) = v14;
  *(v2 + 112) = v15;
  *(v2 + 120) = v16;
  v17 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.670588235 blue:0.0274509804 alpha:1.0];
  v18 = [v5 blackColor];
  v19 = [objc_allocWithZone(UIColor) initWithRed:0.725490196 green:0.321568627 blue:0.0 alpha:1.0];
LABEL_12:
  *(v2 + 128) = v17;
  *(v2 + 136) = v18;
  *(v2 + 144) = v19;
  return v2;
}

uint64_t sub_100022110(unsigned int a1, unint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v138.origin.x = v6;
  v138.origin.y = v8;
  v138.size.width = v10;
  v138.size.height = v12;
  Width = CGRectGetWidth(v138);
  v128 = v3;
  v14 = [v3 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v139.origin.x = v16;
  v139.origin.y = v18;
  v139.size.width = v20;
  v139.size.height = v22;
  Height = CGRectGetHeight(v139);
  v24 = a2 - 3 < 2;
  v25 = Height < Width;
  if (v24 && v25)
  {
    v26 = Width;
  }

  else
  {
    v26 = Height;
  }

  if (v24 && v25)
  {
    Width = Height;
  }

  v137[0] = _swiftEmptyArrayStorage;
  v27 = 13;
  sub_100014B80(0, 13, 0);
  v28 = _swiftEmptyArrayStorage;
  v29 = _swiftEmptyArrayStorage[2];
  v30 = 2 * v29;
  v31 = &unk_1000452D0;
  do
  {
    v32 = *(v31 - 1);
    v33 = *v31;
    v137[0] = v28;
    v34 = v28[3];
    v35 = v29 + 1;
    if (v29 >= v34 >> 1)
    {
      sub_100014B80((v34 > 1), v29 + 1, 1);
      v28 = v137[0];
    }

    v28[2] = v35;
    v36 = &v28[v30];
    v36[4] = Width * v32;
    v36[5] = v26 * v33;
    v30 += 2;
    v31 += 2;
    v29 = v35;
    --v27;
  }

  while (v27);
  sub_100014B50(0, 13, 0);
  v37 = _swiftEmptyArrayStorage;
  if (qword_10004ADE8 != -1)
  {
    swift_once();
  }

  v38 = &stru_100000020;
  do
  {
    v39 = [v3 mainScreen];
    [v39 scale];

    UISizeRoundToScale();
    v137[0] = v37;
    v43 = v37[2];
    v42 = v37[3];
    if (v43 >= v42 >> 1)
    {
      v45 = v40;
      v46 = v41;
      sub_100014B50((v42 > 1), v43 + 1, 1);
      v3 = v128;
      v41 = v46;
      v40 = v45;
      v37 = v137[0];
    }

    v37[2] = v43 + 1;
    v44 = &v37[2 * v43];
    *(v44 + 4) = v40;
    *(v44 + 5) = v41;
    v38 += 16;
  }

  while (v38 != 240);
  v47 = sub_100020300(a1);
  v48 = sub_10002155C(a1);
  v137[0] = v47;
  sub_10000BB18(v48);
  sub_100002590(&qword_10004B3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000391B0;
  CLKDegreesToRadians();
  *(inited + 32) = v50;
  v132 = inited + 32;
  *(inited + 40) = 0u;
  *(inited + 56) = 0u;
  *(inited + 72) = 0u;
  *(inited + 88) = 0u;
  *(inited + 104) = 0u;
  CLKDegreesToRadians();
  *(inited + 120) = v51;
  CLKDegreesToRadians();
  *(inited + 128) = v52;
  v136 = _swiftEmptyArrayStorage;
  if (v37[2] < 0xDuLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v28[2] < 0xDuLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (*(v47 + 16) < 0xDuLL)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
    goto LABEL_44;
  }

  v127 = a2;
  v53 = 0;
  v54 = (v47 + 48);
  v55 = _swiftEmptyArrayStorage;
  v56 = 4;
  v130 = v37;
  v131 = v28;
  do
  {
    v57 = *&v37[v56];
    v58 = *&v37[v56 + 1];
    v60 = *&v28[v56];
    v59 = *&v28[v56 + 1];
    v61 = *(v54 - 2);
    v62 = *(v54 - 1);
    v63 = *v54;
    v64 = *(v132 + 8 * v53);
    v65 = *(&off_1000451C0 + v53 + 4);
    a2 = *(&off_100045168 + v53 + 32);
    if (v55 >> 62)
    {
      v66 = sub_1000374A8();
    }

    else
    {
      v66 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    type metadata accessor for RhizomeLayoutSpec();
    v67 = swift_allocObject();
    *(v67 + 16) = 0u;
    *(v67 + 32) = 0u;
    *(v67 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v67 + 56) = v57;
    *(v67 + 64) = v58;
    *(v67 + 136) = v60;
    *(v67 + 144) = v59;
    *(v67 + 72) = v61;
    *(v67 + 80) = v62;
    *(v67 + 88) = v63;
    *(v67 + 104) = v64;
    swift_unknownObjectWeakAssign();
    *(v67 + 96) = a2;
    *(v67 + 120) = v66;
    *(v67 + 128) = v53 == 3;
    *(v67 + 129) = 0;
    *(v67 + 112) = v65;
    *(v67 + 16) = v57 * v58;
    *(v67 + 24) = v60 - v57 * 0.5;
    *(v67 + 32) = v59 - v58 * 0.5;
    *(v67 + 40) = v57;
    *(v67 + 48) = v58;
    v68 = v61;
    v69 = v62;
    v70 = v63;

    sub_1000370E8();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100037128();
    }

    ++v53;
    sub_100037148();

    v55 = v136;
    v54 += 3;
    v56 += 2;
    v37 = v130;
    v28 = v131;
  }

  while (v53 != 13);

  v71 = sub_100019AE4(2uLL);
  v135 = _swiftEmptyArrayStorage;
  v72 = v71 + 3;
  if ((v71 + 3) < 0)
  {
    goto LABEL_56;
  }

  if (v71 == -3)
  {
    a2 = _swiftEmptyArrayStorage;
  }

  else
  {
    a2 = _swiftEmptyArrayStorage;
    do
    {
      v73 = sub_10001B320();
      v74 = sub_100035598(v73, a1);
      v76 = v75;
      v78 = v77;
      v79 = qword_10004AE38;
      v80 = v74;
      v81 = v76;
      v82 = v78;
      if (v79 != -1)
      {
        swift_once();
      }

      v83 = qword_10004D310;
      v84 = sub_100006024(0, (a1 << 8) | v73, v80, v81, v82, v137, *&qword_10004D310);
      if (v137[1])
      {
        v86 = *&v137[7];
        v85 = *&v137[8];
        v84 = sub_10000FE6C(v137);
      }

      else
      {
        v86 = 0.0;
        v85 = 0.0;
      }

      sub_10001B650(v84, v85);
      v88 = v87;
      v90 = v89;
      sub_10000FBE8(v73, 0.0, 0.0);
      v92 = v91;
      if (a2 >> 62)
      {
        v93 = sub_1000374A8();
      }

      else
      {
        v93 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v94 = swift_allocObject();
      *(v94 + 16) = 0u;
      *(v94 + 32) = 0u;
      *(v94 + 48) = 0;
      swift_unknownObjectWeakInit();
      *(v94 + 56) = v86;
      *(v94 + 64) = v85;
      *(v94 + 136) = v88;
      *(v94 + 144) = v90;
      *(v94 + 72) = v80;
      *(v94 + 80) = v81;
      *(v94 + 88) = v82;
      *(v94 + 104) = v92;
      swift_unknownObjectWeakAssign();
      *(v94 + 96) = v73;
      *(v94 + 120) = v93;
      *(v94 + 128) = 256;
      *(v94 + 112) = v83;
      *(v94 + 16) = v86 * v85;
      *(v94 + 24) = v88 - v86 * 0.5;
      *(v94 + 32) = v90 - v85 * 0.5;
      *(v94 + 40) = v86;
      *(v94 + 48) = v85;

      sub_1000370E8();
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100037128();
      }

      sub_100037148();

      a2 = v135;
      --v72;
    }

    while (v72);
  }

  if (qword_10004ADB8 != -1)
  {
    goto LABEL_57;
  }

LABEL_44:
  v95 = sub_100036F68();
  sub_100002684(v95, qword_10004D258);
  v96 = sub_100036F48();
  v97 = sub_1000371B8();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v134[0] = v99;
    *v98 = 136315138;

    v100 = sub_100037118();
    v102 = v101;

    v103 = sub_10000BEB8(v100, v102, v134);

    *(v98 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v96, v97, "Layouts before refinement %s", v98, 0xCu);
    sub_1000039EC(v99);
  }

  v104 = qword_10004ADE0;

  if (v104 != -1)
  {
    swift_once();
  }

  v105 = -*&qword_10004D2B8;
  if (qword_10004ADF0 != -1)
  {
    v126 = -*&qword_10004D2B8;
    swift_once();
    v105 = v126;
  }

  v106 = sub_1000258CC(a2, 3, v105, -*&qword_10004D2C8);

  swift_beginAccess();
  v135 = v106;

  v107 = sub_100036F48();
  v108 = sub_1000371B8();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v133 = v110;
    *v109 = 136315138;

    v111 = sub_100037118();
    v113 = v112;

    v114 = sub_10000BEB8(v111, v113, &v133);

    *(v109 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v107, v108, "Layouts after refinement %s", v109, 0xCu);
    sub_1000039EC(v110);
  }

  sub_10000BA28(v115);
  sub_10001C9D8(&v136, a1, v127);
  v116 = [v128 mainScreen];
  [v116 bounds];
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;

  v140.origin.x = v118;
  v140.origin.y = v120;
  v140.size.width = v122;
  v140.size.height = v124;
  CGRectGetHeight(v140);

  return (a1 << 8) | 1;
}

uint64_t sub_100022C34(unsigned int a1, unint64_t a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = sub_100022110(a1, a2);
    LODWORD(v7) = HIBYTE(v6);
    return v6 & 1u | (v7 << 8);
  }

  v149 = a1;
  v8 = objc_opt_self();
  v9 = [v8 mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v158.origin.x = v11;
  v158.origin.y = v13;
  v158.size.width = v15;
  v158.size.height = v17;
  Width = CGRectGetWidth(v158);
  v148 = v8;
  v19 = [v8 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v159.origin.x = v21;
  v159.origin.y = v23;
  v159.size.width = v25;
  v159.size.height = v27;
  Height = CGRectGetHeight(v159);
  v29 = a2 - 3 < 2;
  v30 = Height < Width;
  if (v29 && v30)
  {
    v31 = Width;
  }

  else
  {
    v31 = Height;
  }

  if (v29 && v30)
  {
    Width = Height;
  }

  v157[0] = _swiftEmptyArrayStorage;
  sub_100014B80(0, 8, 0);
  v32 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage[2];
  v33 = _swiftEmptyArrayStorage[3];
  v35 = v33 >> 1;
  v36 = v34 + 1;
  if (v33 >> 1 <= v34)
  {
    sub_100014B80((v33 > 1), v34 + 1, 1);
    v32 = v157[0];
    v33 = *(v157[0] + 24);
    v35 = v33 >> 1;
  }

  v32[2] = v36;
  v37 = &v32[2 * v34];
  v37[4] = Width * 0.17;
  v37[5] = v31 * 0.1;
  v38 = v34 + 2;
  if (v35 < (v34 + 2))
  {
    sub_100014B80((v33 > 1), v34 + 2, 1);
    v32 = v157[0];
  }

  v32[2] = v38;
  v39 = &v32[2 * v36];
  v39[4] = Width * 0.8;
  v39[5] = v31 * 0.3;
  v40 = v32[3];
  v41 = v34 + 3;
  if ((v34 + 3) > (v40 >> 1))
  {
    sub_100014B80((v40 > 1), v34 + 3, 1);
  }

  v42 = v157[0];
  *(v157[0] + 16) = v41;
  v43 = v42 + 16 * v38;
  *(v43 + 32) = Width * 0.9;
  *(v43 + 40) = v31 * 0.1;
  v44 = *(v42 + 24);
  v45 = v34 + 4;
  if ((v34 + 4) > (v44 >> 1))
  {
    sub_100014B80((v44 > 1), v34 + 4, 1);
    v42 = v157[0];
  }

  *(v42 + 16) = v45;
  v46 = v42 + 16 * v41;
  *(v46 + 32) = Width * 0.1;
  *(v46 + 40) = v31 * 0.45;
  v47 = *(v42 + 24);
  v48 = v34 + 5;
  if ((v34 + 5) > (v47 >> 1))
  {
    sub_100014B80((v47 > 1), v34 + 5, 1);
    v42 = v157[0];
  }

  *(v42 + 16) = v48;
  v49 = v42 + 16 * v45;
  *(v49 + 32) = Width * 0.4;
  *(v49 + 40) = v31 * 0.6;
  v50 = *(v42 + 24);
  v51 = v34 + 6;
  if ((v34 + 6) > (v50 >> 1))
  {
    sub_100014B80((v50 > 1), v34 + 6, 1);
  }

  v52 = v157[0];
  *(v157[0] + 16) = v51;
  v53 = v52 + 16 * v48;
  *(v53 + 32) = Width * 0.85;
  *(v53 + 40) = v31 * 0.55;
  v54 = *(v52 + 24);
  v55 = v34 + 7;
  if ((v34 + 7) > (v54 >> 1))
  {
    sub_100014B80((v54 > 1), v34 + 7, 1);
    v52 = v157[0];
  }

  *(v52 + 16) = v55;
  v56 = v52 + 16 * v51;
  *(v56 + 32) = Width * 0.17;
  *(v56 + 40) = v31 * 0.85;
  v57 = *(v52 + 24);
  if ((v34 + 8) > (v57 >> 1))
  {
    sub_100014B80((v57 > 1), v34 + 8, 1);
    v52 = v157[0];
  }

  *(v52 + 16) = v34 + 8;
  v58 = v52 + 16 * v55;
  *(v58 + 32) = Width * 0.8;
  *(v58 + 40) = v31 * 0.9;
  v157[0] = _swiftEmptyArrayStorage;
  sub_100014B50(0, 8, 0);
  v59 = _swiftEmptyArrayStorage;
  if (qword_10004ADE8 != -1)
  {
    swift_once();
  }

  v60 = 0;
  v61 = &off_100045488;
  do
  {
    v62 = [v8 mainScreen];
    [v62 scale];

    UISizeRoundToScale();
    v157[0] = v59;
    v66 = v59[2];
    v65 = v59[3];
    v7 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v68 = v63;
      v69 = v64;
      sub_100014B50((v65 > 1), v66 + 1, 1);
      v8 = v148;
      v64 = v69;
      v63 = v68;
      v59 = v157[0];
    }

    v59[2] = v7;
    v67 = &v59[2 * v66];
    v67[4] = v63;
    v67[5] = v64;
    v60 += 16;
  }

  while (v60 != 128);
  v70 = sub_100020300(a1);
  sub_100002590(&qword_10004B3F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100039190;
  *(inited + 32) = 0;
  v152 = inited + 32;
  *(inited + 40) = 0;
  CLKDegreesToRadians();
  *(inited + 48) = v72;
  CLKDegreesToRadians();
  *(inited + 56) = v73;
  *(inited + 64) = 0;
  CLKDegreesToRadians();
  *(inited + 72) = v74;
  CLKDegreesToRadians();
  *(inited + 80) = v75;
  *(inited + 88) = 0;
  v156 = _swiftEmptyArrayStorage;
  if (v59[2] < 8uLL)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (*(v52 + 16) < 8uLL)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (*(v70 + 16) < 8uLL)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v76 = 0;
  v77 = (v70 + 48);
  v78 = _swiftEmptyArrayStorage;
  v79 = 4;
  v150 = v59;
  v151 = v52;
  do
  {
    v80 = *&v59[v79];
    v81 = *&v59[v79 + 1];
    v83 = *(v52 + v79 * 8);
    v82 = *(v52 + v79 * 8 + 8);
    v7 = *(v77 - 2);
    v61 = *(v77 - 1);
    v84 = *v77;
    v85 = *(v152 + 8 * v76);
    v86 = *(&off_100045248 + v76 + 4);
    v87 = *(&off_100045198 + v76 + 32);
    if (v78 >> 62)
    {
      v88 = sub_1000374A8();
    }

    else
    {
      v88 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    type metadata accessor for RhizomeLayoutSpec();
    v89 = swift_allocObject();
    *(v89 + 16) = 0u;
    *(v89 + 32) = 0u;
    *(v89 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v89 + 56) = v80;
    *(v89 + 64) = v81;
    *(v89 + 136) = v83;
    *(v89 + 144) = v82;
    *(v89 + 72) = v7;
    *(v89 + 80) = v61;
    *(v89 + 88) = v84;
    *(v89 + 104) = v85;
    swift_unknownObjectWeakAssign();
    *(v89 + 96) = v87;
    *(v89 + 120) = v88;
    *(v89 + 128) = v76 == 1;
    *(v89 + 129) = 0;
    *(v89 + 112) = v86;
    *(v89 + 16) = v80 * v81;
    *(v89 + 24) = v83 - v80 * 0.5;
    *(v89 + 32) = v82 - v81 * 0.5;
    *(v89 + 40) = v80;
    *(v89 + 48) = v81;
    v90 = v7;
    v91 = v61;
    v92 = v84;

    sub_1000370E8();
    if (*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100037128();
    }

    ++v76;
    sub_100037148();

    v78 = v156;
    v77 += 3;
    v79 += 2;
    v59 = v150;
    v52 = v151;
  }

  while (v76 != 8);

  sub_100011AD8(3uLL, 4uLL);
  v93 = sub_100019AE4(2uLL);
  v155 = _swiftEmptyArrayStorage;
  v94 = v93 + 3;
  if ((v93 + 3) >= 0)
  {
    if (v93 == -3)
    {
      v61 = _swiftEmptyArrayStorage;
      LODWORD(v7) = v149;
    }

    else
    {
      v7 = v149;
      v61 = _swiftEmptyArrayStorage;
      do
      {
        v95 = sub_10001B320();
        v96 = sub_100035598(v95, v7);
        v98 = v97;
        v100 = v99;
        v101 = qword_10004AE38;
        v102 = v96;
        v103 = v98;
        v104 = v100;
        if (v101 != -1)
        {
          swift_once();
        }

        v105 = qword_10004D310;
        v106 = sub_100006024(0, (v149 << 8) | v95, v102, v103, v104, v157, *&qword_10004D310);
        if (v157[1])
        {
          v108 = *&v157[7];
          v107 = *&v157[8];
          v106 = sub_10000FE6C(v157);
        }

        else
        {
          v108 = 0.0;
          v107 = 0.0;
        }

        v7 = v149;
        sub_10001B650(v106, v107);
        v110 = v109;
        v112 = v111;
        sub_10000FBE8(v95, 0.0, 0.0);
        v114 = v113;
        if (v61 >> 62)
        {
          v115 = sub_1000374A8();
        }

        else
        {
          v115 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v116 = swift_allocObject();
        *(v116 + 16) = 0u;
        *(v116 + 32) = 0u;
        *(v116 + 48) = 0;
        swift_unknownObjectWeakInit();
        *(v116 + 56) = v108;
        *(v116 + 64) = v107;
        *(v116 + 136) = v110;
        *(v116 + 144) = v112;
        *(v116 + 72) = v102;
        *(v116 + 80) = v103;
        *(v116 + 88) = v104;
        *(v116 + 104) = v114;
        swift_unknownObjectWeakAssign();
        *(v116 + 96) = v95;
        *(v116 + 120) = v115;
        *(v116 + 128) = 256;
        *(v116 + 112) = v105;
        *(v116 + 16) = v108 * v107;
        *(v116 + 24) = v110 - v108 * 0.5;
        *(v116 + 32) = v112 - v107 * 0.5;
        *(v116 + 40) = v108;
        *(v116 + 48) = v107;

        sub_1000370E8();
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100037128();
        }

        sub_100037148();

        v61 = v155;
        --v94;
      }

      while (v94);
    }

    if (qword_10004ADB8 == -1)
    {
      goto LABEL_58;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  swift_once();
LABEL_58:
  v117 = sub_100036F68();
  sub_100002684(v117, qword_10004D258);
  v118 = sub_100036F48();
  v119 = sub_1000371B8();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v154[0] = v121;
    *v120 = 136315138;

    v122 = sub_100037118();
    v124 = v123;

    v125 = sub_10000BEB8(v122, v124, v154);

    *(v120 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v118, v119, "Layouts before refinement %s", v120, 0xCu);
    sub_1000039EC(v121);
  }

  v126 = qword_10004ADE0;

  if (v126 != -1)
  {
    swift_once();
  }

  v127 = -*&qword_10004D2B8;
  if (qword_10004ADF0 != -1)
  {
    v147 = -*&qword_10004D2B8;
    swift_once();
    v127 = v147;
  }

  v128 = sub_1000258CC(v61, 3, v127, -*&qword_10004D2C8);

  swift_beginAccess();
  v155 = v128;

  v129 = sub_100036F48();
  v130 = sub_1000371B8();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v153 = v132;
    *v131 = 136315138;

    v133 = sub_100037118();
    v7 = v134;

    v135 = sub_10000BEB8(v133, v7, &v153);
    LODWORD(v7) = v149;

    *(v131 + 4) = v135;
    _os_log_impl(&_mh_execute_header, v129, v130, "Layouts after refinement %s", v131, 0xCu);
    sub_1000039EC(v132);
  }

  sub_10000BA28(v136);
  v137 = [v148 mainScreen];
  [v137 bounds];
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v145 = v144;

  v160.origin.x = v139;
  v160.origin.y = v141;
  v160.size.width = v143;
  v160.size.height = v145;
  CGRectGetHeight(v160);

  LOBYTE(v6) = 1;
  return v6 & 1u | (v7 << 8);
}

unint64_t sub_1000239B0()
{
  result = qword_10004B418;
  if (!qword_10004B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B418);
  }

  return result;
}

uint64_t sub_100023A04()
{
  sub_1000370A8();
}

Swift::Int sub_100023B20()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100023C78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026574(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100023CA8(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000100039EB0;
    v9 = 0xD000000000000013;
    if (v2 == 6)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x8000000100039ED0;
    }

    v10 = 0xD000000000000010;
    v11 = 0x8000000100039E70;
    if (v2 != 4)
    {
      v10 = 0xD000000000000011;
      v11 = 0x8000000100039E90;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v8 = v11;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1952867660;
    v5 = 0xE200000000000000;
    v6 = 28757;
    if (v2 != 2)
    {
      v6 = 1853321028;
      v5 = 0xE400000000000000;
    }

    if (*v1)
    {
      v4 = 0x7468676952;
      v3 = 0xE500000000000000;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100023DA8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001AB30(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = sub_100037528(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 136) >= *(*v14 + 136))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for RhizomeLayoutSpec();
      v8 = sub_100037138();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = &_swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    sub_100023EF8(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_100037408();
}

uint64_t sub_100023EF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
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
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 136);
    v10 = *(*(*a3 + 8 * v6) + 136);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 136);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
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
              if (*(v24 + 136) >= *(*v26 + 136))
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
      result = sub_100012EC0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_100012EC0((v29 > 1), v30 + 1, 1, v7);
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
        if (*(*v77 + 136) >= *(*v85 + 136))
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
          if (*(v94 + 136) < *(*v90 + 136))
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
      v4 = sub_100019AD0(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    result = sub_100019A44(v86);
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
  result = sub_100019AD0(v7);
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
    sub_10002465C((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
    if (v103)
    {
    }

    if (v99 < v98)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100019AD0(v7);
    }

    if (v97 - 2 >= *(v7 + 2))
    {
      goto LABEL_151;
    }

    v100 = &v7[16 * v97];
    *v100 = v98;
    *(v100 + 1) = v99;
    result = sub_100019A44(v97 - 1);
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

uint64_t sub_10002465C(char *__dst, char *__src, char *a3, char *a4)
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
      if (*(*v6 + 136) < *(*v4 + 136))
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
      if (*(v21 + 136) < *(*v17 + 136))
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

void sub_100024860()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = v1[v4 + 32];
        v11 = v1[v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_10001AB44(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_20;
        }

        v1[v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_21;
        }

        v1[v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

uint64_t sub_1000249A8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = sub_1000373C8();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1000374A8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_100024AE4(uint64_t a1, unint64_t a2, char a3)
{
  if (a2 >> 62)
  {
    v46 = sub_1000374A8();
    if (v46 < 0)
    {
      __break(1u);
    }

    v6 = v46;
    if (v46)
    {
      goto LABEL_3;
    }

LABEL_47:
    v7 = 0;
    return v7 & 1;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_47;
  }

LABEL_3:
  v51 = a3;
  v7 = 0;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v52 = _Q0;
    do
    {
      v17 = sub_1000373C8();
      if (a3)
      {
        v64 = v17;
        if (*(a1 + 16) >= *(v17 + 16))
        {
          v18 = v17;
        }

        else
        {
          v18 = a1;
        }

        v19 = *(v18 + 56);
        v20 = *(v18 + 64);
        v21 = *(a1 + 56);
        v22 = *(a1 + 64);

        v74.width = v19;
        v74.height = v20;
        v76.width = v21;
        v76.height = v22;
        v14 = a1;
        if (CGSizeEqualToSize(v74, v76))
        {
          v14 = a1;
          if (CGPointEqualToPoint(*(v18 + 136), *(a1 + 136)))
          {
            v23 = *(v18 + 72);
            v24 = *(v18 + 80);
            v25 = *(v18 + 88);
            v59 = *(a1 + 80);
            v48 = *(a1 + 72);
            v49 = *(a1 + 88);
            sub_10000FE20();
            v26 = v23;
            v69 = v24;
            v56 = v25;
            v27 = v48;
            v60 = v59;
            v28 = v49;
            if (sub_100037258() & 1) != 0 && (sub_100037258())
            {
              v29 = sub_100037258();

              v14 = a1;
              a3 = v51;
              if (v29)
              {
                if (*(v18 + 96) == *(a1 + 96))
                {
                  v14 = v64;
                }

                else
                {
                  v14 = a1;
                }
              }
            }

            else
            {

              v14 = a1;
              a3 = v51;
            }
          }
        }

        v67 = *(v14 + 56);
        v55 = *(v14 + 136);
        v58 = *(v18 + 136);
        swift_unknownObjectRelease();

        v15.f64[0] = v67;
        v15.f64[1] = *(v14 + 64);
        v68 = v15;

        v16 = vmovn_s64(vcgtq_f64(vmulq_f64(v68, v52), vabdq_f64(v58, v55)));
        v7 |= v16.i8[4] & v16.i8[0];
      }

      else if (v7)
      {
        swift_unknownObjectRelease();
        v7 = 1;
      }

      else
      {
        v7 = CGRectIntersectsRect(*(a1 + 24), *(v17 + 24));
        swift_unknownObjectRelease();
      }

      ++v8;
    }

    while (v6 != v8);
  }

  else
  {
    v30 = (a2 + 32);
    __asm { FMOV            V0.2D, #0.5 }

    v57 = _Q0;
    do
    {
      v35 = *v30;
      if (a3)
      {
        if (*(a1 + 16) >= *(v35 + 16))
        {
          v36 = *v30;
        }

        else
        {
          v36 = a1;
        }

        v37 = *(v36 + 56);
        v38 = *(v36 + 64);
        v39 = *(a1 + 56);
        v40 = *(a1 + 64);

        v75.width = v37;
        v75.height = v38;
        v77.width = v39;
        v77.height = v40;
        v32 = a1;
        if (CGSizeEqualToSize(v75, v77))
        {
          v32 = a1;
          if (CGPointEqualToPoint(*(v36 + 136), *(a1 + 136)))
          {
            v41 = *(v36 + 72);
            v42 = *(v36 + 80);
            v62 = *(v36 + 88);
            v50 = *(a1 + 72);
            v72 = *(a1 + 80);
            v53 = *(a1 + 88);
            sub_10000FE20();
            v43 = v41;
            v66 = v42;
            v63 = v62;
            v44 = v50;
            v73 = v72;
            v54 = v53;
            if (sub_100037258() & 1) != 0 && (sub_100037258())
            {
              v45 = sub_100037258();

              v32 = a1;
              a3 = v51;
              if (v45)
              {
                if (*(v36 + 96) == *(a1 + 96))
                {
                  v32 = v35;
                }

                else
                {
                  v32 = a1;
                }
              }
            }

            else
            {

              v32 = a1;
              a3 = v51;
            }
          }
        }

        v70 = *(v32 + 56);
        v61 = *(v32 + 136);
        v65 = *(v36 + 136);

        v33.f64[0] = v70;
        v33.f64[1] = *(v32 + 64);
        v71 = v33;

        v34 = vmovn_s64(vcgtq_f64(vmulq_f64(v71, v57), vabdq_f64(v65, v61)));
        v7 |= v34.i8[4] & v34.i8[0];
      }

      else
      {
        v7 = (v7 & 1) != 0 || CGRectIntersectsRect(*(a1 + 24), *(v35 + 24));
      }

      ++v30;
      --v6;
    }

    while (v6);
  }

  return v7 & 1;
}

uint64_t sub_100025070(uint64_t a1, unint64_t a2, char a3, double a4, double a5)
{
  if (sub_100024AE4(a1, a2, a3 & 1))
  {
    v69 = *(a1 + 144);
    v70 = *(a1 + 136);
    v72[0] = &off_100045118;
    sub_100024860();
    v9 = 0;
    v10 = -4.0;
    v11 = 4.0;
    v12 = &selRef_setPreferredProminentColor_;
    v13 = &unk_10004D000;
    do
    {
      if (v9 >= 8)
      {
        __break(1u);
        goto LABEL_109;
      }

      v14 = byte_100045138[v9];
      if (sub_100024AE4(a1, a2, a3 & 1))
      {
        v16 = *(a1 + 56);
        v15 = *(a1 + 64);
        v17 = v16 * 0.5;
        v18 = v15 * 0.5;
        while (1)
        {
          v20 = *(a1 + 136);
          v19 = *(a1 + 144);
          if (v14 > 3)
          {
            v21 = v20 + -4.0;
            v22 = v19 + 4.0;
            v11 = 4.0;
            if (v14 == 6)
            {
              v23 = v20 + -4.0;
            }

            else
            {
              v23 = v20 + 4.0;
            }

            v10 = -4.0;
            v19 = v19 + -4.0;
            if (v14 != 4)
            {
              v21 = v20 + 4.0;
            }

            if (v14 <= 5)
            {
              v20 = v21;
            }

            else
            {
              v20 = v23;
            }

            if (v14 > 5)
            {
              v19 = v22;
            }
          }

          else if (v14 > 1)
          {
            v24 = v19 + v10;
            v19 = v19 + v11;
            if (v14 == 2)
            {
              v19 = v24;
            }
          }

          else
          {
            v20 = v14 ? v20 + v11 : v20 + v10;
          }

          *(a1 + 136) = v20;
          *(a1 + 144) = v19;
          *(a1 + 24) = v20 - v17;
          *(a1 + 32) = v19 - v18;
          *(a1 + 40) = v16;
          *(a1 + 48) = v15;
          if (v20 < 0.0)
          {
            break;
          }

          if (v12[447] != -1)
          {
            swift_once();
          }

          if (v13[90] < v20)
          {
            break;
          }

          v25 = *(a1 + 144);
          if (v25 < a4 || v25 > a5)
          {
            break;
          }

          if ((sub_100024AE4(a1, a2, a3 & 1) & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        *(a1 + 136) = v70;
        *(a1 + 144) = v69;
        *(a1 + 24) = v70 - v17;
        *(a1 + 32) = v69 - v18;
        *(a1 + 40) = v16;
        *(a1 + 48) = v15;
        if (qword_10004ADC0 != -1)
        {
          swift_once();
        }

        v26 = sub_100036F68();
        sub_100002684(v26, qword_10004D270);

        v27 = sub_100036F48();
        v28 = sub_1000371B8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v72[0] = v68;
          *v29 = 134218242;
          *(v29 + 4) = *(a1 + 120);

          *(v29 + 12) = 2080;
          v30 = 0xD000000000000010;
          v31 = 0xD000000000000012;
          if (v14 != 6)
          {
            v31 = 0xD000000000000013;
          }

          v32 = 0x8000000100039ED0;
          if (v14 == 6)
          {
            v32 = 0x8000000100039EB0;
          }

          if (v14 != 4)
          {
            v30 = 0xD000000000000011;
          }

          v33 = 0x8000000100039E90;
          if (v14 == 4)
          {
            v33 = 0x8000000100039E70;
          }

          if (v14 <= 5)
          {
            v31 = v30;
            v32 = v33;
          }

          v34 = 28757;
          if (v14 != 2)
          {
            v34 = 1853321028;
          }

          v35 = 0xE400000000000000;
          v36 = 0xE200000000000000;
          if (v14 != 2)
          {
            v36 = 0xE400000000000000;
          }

          v37 = 1952867660;
          if (v14)
          {
            v37 = 0x7468676952;
            v35 = 0xE500000000000000;
          }

          if (v14 <= 1)
          {
            v34 = v37;
            v36 = v35;
          }

          if (v14 <= 3)
          {
            v38 = v34;
          }

          else
          {
            v38 = v31;
          }

          if (v14 <= 3)
          {
            v39 = v36;
          }

          else
          {
            v39 = v32;
          }

          v40 = sub_10000BEB8(v38, v39, v72);

          *(v29 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v27, v28, "Pushed spec %ld offscreen while going %s...resetting.", v29, 0x16u);
          sub_1000039EC(v68);
        }

        else
        {
        }

        v12 = &selRef_setPreferredProminentColor_;
        v13 = &unk_10004D000;
      }

LABEL_63:
      if ((sub_100024AE4(a1, a2, a3 & 1) & 1) == 0)
      {
        break;
      }

      ++v9;
    }

    while (v9 != 8);

    v73.y = v69;
    v73.x = v70;
    if (!CGPointEqualToPoint(v73, *(a1 + 136)))
    {
      if (qword_10004ADC0 != -1)
      {
        swift_once();
      }

      v50 = sub_100036F68();
      sub_100002684(v50, qword_10004D270);

      v51 = sub_100036F48();
      v52 = sub_1000371B8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72[0] = v54;
        *v53 = 134218754;
        *(v53 + 4) = *(a1 + 120);

        *(v53 + 12) = 2080;
        if (v14 > 3)
        {
          v61 = 0x8000000100039EB0;
          v62 = 0xD000000000000013;
          if (v14 == 6)
          {
            v62 = 0xD000000000000012;
          }

          else
          {
            v61 = 0x8000000100039ED0;
          }

          v63 = 0xD000000000000010;
          v64 = 0x8000000100039E70;
          if (v14 != 4)
          {
            v63 = 0xD000000000000011;
            v64 = 0x8000000100039E90;
          }

          if (v14 <= 5)
          {
            v59 = v63;
          }

          else
          {
            v59 = v62;
          }

          if (v14 <= 5)
          {
            v60 = v64;
          }

          else
          {
            v60 = v61;
          }
        }

        else
        {
          v55 = 1952867660;
          v56 = 0xE400000000000000;
          v57 = 0xE200000000000000;
          v58 = 28757;
          if (v14 != 2)
          {
            v58 = 1853321028;
            v57 = 0xE400000000000000;
          }

          if (v14)
          {
            v55 = 0x7468676952;
            v56 = 0xE500000000000000;
          }

          if (v14 <= 1)
          {
            v59 = v55;
          }

          else
          {
            v59 = v58;
          }

          if (v14 <= 1)
          {
            v60 = v56;
          }

          else
          {
            v60 = v57;
          }
        }

        v65 = sub_10000BEB8(v59, v60, v72);

        *(v53 + 14) = v65;
        *(v53 + 22) = 2048;
        v66 = *(a1 + 144);
        *(v53 + 24) = *(a1 + 136);
        *(v53 + 32) = 2048;
        *(v53 + 34) = v66;
        _os_log_impl(&_mh_execute_header, v51, v52, "Pushed spec %ld %s to position x: %f y: %f", v53, 0x2Au);
        sub_1000039EC(v54);
      }

      else
      {
      }
    }

    v49 = sub_100024AE4(a1, a2, a3 & 1) ^ 1;
  }

  else
  {
    if (qword_10004ADC0 != -1)
    {
LABEL_109:
      swift_once();
    }

    v41 = sub_100036F68();
    sub_100002684(v41, qword_10004D270);

    v42 = sub_100036F48();
    v43 = sub_1000371B8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72[0] = v45;
      *v44 = 134218242;
      *(v44 + 4) = *(a1 + 120);

      *(v44 + 12) = 2080;
      if (a3)
      {
        v46 = 0x65764F20656D6F53;
      }

      else
      {
        v46 = 0x6C7265764F206F4ELL;
      }

      if (a3)
      {
        v47 = 0xEC00000070616C72;
      }

      else
      {
        v47 = 0xEA00000000007061;
      }

      v48 = sub_10000BEB8(v46, v47, v72);

      *(v44 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Spec %ld is in an acceptable position for rule %s.", v44, 0x16u);
      sub_1000039EC(v45);
    }

    else
    {
    }

    v49 = 1;
  }

  return v49 & 1;
}

uint64_t sub_1000258CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v74 = a2;

  v90 = sub_10001A91C(v7);
  sub_100023DA8(&v90);
  v87 = 0;
  v9 = v90;
  v90 = &_swiftEmptyArrayStorage;
  v10 = (v9 >> 62) & 1;
  if (v9 < 0)
  {
    LODWORD(v10) = 1;
  }

  v78 = v10;
  if (v10)
  {
    goto LABEL_100;
  }

  for (i = *(v9 + 16); ; i = v69)
  {
    v76 = a1 >> 62;
    v84 = a1;
    if (!i)
    {
      break;
    }

    v12 = 0;
    v13 = v9 & 0xC000000000000001;
    v79 = v9 + 32;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v73 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v14 = a1;
    }

    v70[4] = v14;
    v71 = 0x8000000100039F30;
    *&v8 = 134217984;
    v75 = v8;
    *&v8 = 134218242;
    v72 = v8;
    v81 = &_swiftEmptyArrayStorage;
    v82 = v9 & 0xC000000000000001;
    v83 = v9;
    v77 = i;
    while (v13)
    {
      v15 = sub_1000373C8();
      if ((*(v15 + 128) & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_9:

LABEL_10:
      if (++v12 == i)
      {

        goto LABEL_79;
      }
    }

    if (v12 >= *(v9 + 16))
    {
      goto LABEL_98;
    }

    v15 = *(v79 + 8 * v12);

    if (*(v15 + 128))
    {
      goto LABEL_9;
    }

LABEL_16:
    if (*(v15 + 129) != 1)
    {
      goto LABEL_9;
    }

    v89[0] = &_swiftEmptyArrayStorage;
    if (v78)
    {
      a1 = sub_1000374A8();
      v80 = v12;
      if (a1)
      {
        goto LABEL_19;
      }

LABEL_38:
      v32 = &_swiftEmptyArrayStorage;
LABEL_39:
      if (sub_100025070(v15, v32, 0, a3, a4))
      {

        goto LABEL_47;
      }

      if (qword_10004ADC0 != -1)
      {
        swift_once();
      }

      v33 = sub_100036F68();
      sub_100002684(v33, qword_10004D270);

      v34 = sub_100036F48();
      v35 = sub_1000371B8();
      if (os_log_type_enabled(v34, v35))
      {
        a1 = swift_slowAlloc();
        *a1 = v75;
        *(a1 + 4) = *(v15 + 120);

        _os_log_impl(&_mh_execute_header, v34, v35, "Failed to relocate spec %ld using rule no overlap rule. Trying with some overlap.", a1, 0xCu);
      }

      else
      {
      }

      v36 = sub_100025070(v15, v32, 1, a3, a4);

      if (v36)
      {
LABEL_47:

LABEL_48:
        a1 = v84;
        i = v77;
        v12 = v80;
        goto LABEL_10;
      }

      v37 = sub_100036F48();
      v38 = sub_1000371B8();
      if (os_log_type_enabled(v37, v38))
      {
        a1 = swift_slowAlloc();
        *a1 = v75;
        *(a1 + 4) = *(v15 + 120);

        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to relocate spec %ld using rule some overlap rule. Attempting to remove flower.", a1, 0xCu);
      }

      else
      {
      }

      v39 = v81;
      if (v76)
      {
        v40 = sub_1000374A8();
        if (!(v39 >> 62))
        {
          goto LABEL_54;
        }
      }

      else
      {
        v40 = *(v73 + 16);
        if (!(v81 >> 62))
        {
LABEL_54:
          v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v42 = __OFSUB__(v40, v41);
          v43 = v40 - v41;
          if (v42)
          {
            goto LABEL_99;
          }

LABEL_55:

          v44 = sub_100036F48();
          v45 = sub_1000371B8();
          v46 = os_log_type_enabled(v44, v45);
          if (v43 > v74)
          {
            if (v46)
            {
              v47 = swift_slowAlloc();
              *v47 = v75;
              *(v47 + 4) = *(v15 + 120);

              _os_log_impl(&_mh_execute_header, v44, v45, "Removing spec %ld because there were only 3 left...", v47, 0xCu);
            }

            else
            {
            }

            a1 = v84;
            i = v77;
            v12 = v80;

            sub_1000370E8();
            if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100037128();
            }

            sub_100037148();

            v81 = v90;
            goto LABEL_10;
          }

          if (v46)
          {
            v48 = swift_slowAlloc();
            v49 = v15;
            v50 = swift_slowAlloc();
            v89[0] = v50;
            *v48 = v72;
            *(v48 + 4) = *(v49 + 120);

            *(v48 + 12) = 2080;
            v51 = *(v49 + 96);
            if (v51 > 0x10)
            {
              v53 = 0x206E616369726641;
              v54 = 0xED00007973696144;
            }

            else
            {
              v52 = 1 << v51;
              if ((v52 & 0x1F000) != 0)
              {
                v54 = 0xE800000000000000;
                v53 = 0x646C6F676972614DLL;
              }

              else if ((v52 & 0xF0) != 0)
              {
                v53 = 0xD000000000000011;
                v54 = v71;
              }

              else
              {
                v53 = 0x206E616369726641;
                v54 = 0xED00007973696144;
                if ((v52 & 0xF00) != 0)
                {
                  v54 = 0xE900000000000079;
                  v53 = 0x6C694C20616C6143;
                }
              }
            }

            v55 = sub_10000BEB8(v53, v54, v89);

            *(v48 + 14) = v55;
            _os_log_impl(&_mh_execute_header, v44, v45, "Failed to remove spec %ld because it was floating or birds of paradise. type: %s", v48, 0x16u);
            sub_1000039EC(v50);
          }

          else
          {
          }

          goto LABEL_48;
        }
      }

      v56 = sub_1000374A8();
      v42 = __OFSUB__(v40, v56);
      v43 = v40 - v56;
      if (v42)
      {
        goto LABEL_99;
      }

      goto LABEL_55;
    }

    a1 = *(v9 + 16);
    v80 = v12;
    if (!a1)
    {
      goto LABEL_38;
    }

LABEL_19:
    v16 = 0;
    v85 = a1;
    v86 = v15;
    while (2)
    {
      if (v13)
      {
        v17 = sub_1000373C8();
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_95;
        }

LABEL_26:
        if (CGSizeEqualToSize(*(v17 + 56), *(v15 + 56)) && CGPointEqualToPoint(*(v17 + 136), *(v15 + 136)))
        {
          v19 = *(v17 + 72);
          v20 = *(v17 + 80);
          v21 = *(v17 + 88);
          v23 = *(v15 + 72);
          v22 = *(v15 + 80);
          v24 = *(v15 + 88);
          sub_10000FE20();
          v25 = v19;
          v26 = v20;
          v27 = v21;
          v28 = v23;
          v29 = v22;
          v30 = v24;
          if (sub_100037258() & 1) != 0 && (sub_100037258())
          {
            v31 = sub_100037258();

            v13 = v82;
            v9 = v83;
            a1 = v85;
            v15 = v86;
            if ((v31 & 1) != 0 && *(v17 + 96) == *(v86 + 96))
            {

              goto LABEL_35;
            }
          }

          else
          {

            v13 = v82;
            v9 = v83;
            a1 = v85;
            v15 = v86;
          }
        }

        sub_1000373F8();
        sub_100037428();
        sub_100037438();
        sub_100037408();
LABEL_35:
        ++v16;
        if (v18 == a1)
        {
          v32 = v89[0];
          goto LABEL_39;
        }

        continue;
      }

      break;
    }

    if (v16 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v17 = *(v9 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_26;
    }

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
LABEL_100:
    v69 = sub_1000374A8();
    if (v69 < 0)
    {
      __break(1u);
LABEL_102:
      v57 = a1;
      v58 = sub_1000374A8();
      goto LABEL_81;
    }

LABEL_104:
    ;
  }

  v81 = &_swiftEmptyArrayStorage;
LABEL_79:
  v89[0] = &_swiftEmptyArrayStorage;
  if (v76)
  {
    goto LABEL_102;
  }

  v57 = a1;
  v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_81:

  if (!v58)
  {
    goto LABEL_93;
  }

  v9 = 0;
  a1 = v57 & 0xC000000000000001;
  v59 = v57 & 0xFFFFFFFFFFFFFF8;
  v60 = v81;
  while (2)
  {
    if (a1)
    {
      v62 = sub_1000373C8();
      v61 = v62;
      v63 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      goto LABEL_88;
    }

    if (v9 >= *(v59 + 16))
    {
      goto LABEL_97;
    }

    v61 = *(v84 + 8 * v9 + 32);

    v63 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
LABEL_88:
      v88 = v61;
      __chkstk_darwin(v62);
      v70[2] = &v88;

      v64 = v87;
      v65 = sub_1000249A8(sub_10002632C, v70, v60);
      v87 = v64;

      if (v65)
      {
      }

      else
      {
        sub_1000373F8();
        sub_100037428();
        sub_100037438();
        sub_100037408();
      }

      ++v9;
      if (v63 == v58)
      {
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_93:

  v89[0] = sub_10001A91C(v66);
  v67 = v87;
  sub_100018264(v89);
  if (v67)
  {

    __break(1u);
    goto LABEL_104;
  }

  return v89[0];
}

uint64_t getEnumTagSinglePayload for PushDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PushDirection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000264B8()
{
  result = qword_10004B420;
  if (!qword_10004B420)
  {
    sub_1000023BC(&qword_10004B428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B420);
  }

  return result;
}

unint64_t sub_100026520()
{
  result = qword_10004B430;
  if (!qword_10004B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B430);
  }

  return result;
}

uint64_t sub_100026574(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100045528;
  v6._object = a2;
  v4 = sub_100037508(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000265C0()
{
  sub_100036EC8();
  swift_allocObject();
  result = sub_100036EB8();
  qword_10004D2E0 = result;
  return result;
}

id sub_100026600()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  sub_100036E38();
  sub_100036F18();
  v2 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView;
  *&v0[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView] = 0;
  v3 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentUUID;
  v4 = sub_100036DC8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway] = 0;
  LODWORD(v3) = sub_100022C34(0, 0);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = objc_allocWithZone(type metadata accessor for RhizomeView());
  v13 = sub_100007118(v3 & 0xFFFFFF01, v6, v8, 0, v11, 1, 1, 0, v10, 0.0, 0.0, 0, 1);
  v14 = *&v1[v2];
  *&v1[v2] = v13;

  v35.receiver = v1;
  v35.super_class = type metadata accessor for RhizomePosterRenderer();
  v15 = objc_msgSendSuper2(&v35, "init");
  v16 = qword_10004ADB8;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_100036F68();
  sub_100002684(v18, qword_10004D258);
  v19 = sub_100036F48();
  v20 = sub_1000371A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "PosterRenderer created", v21, 2u);
  }

  v22 = objc_opt_self();
  v23 = [v22 currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = [v22 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  sub_100014BB0(0, 17, 0);
  if (qword_10004AE38 != -1)
  {
    swift_once();
  }

  v27 = qword_10004D310;
  v28 = _swiftEmptyArrayStorage[2];
  v29 = 17;
  do
  {
    v30 = _swiftEmptyArrayStorage[3];
    if (v28 >= v30 >> 1)
    {
      sub_100014BB0((v30 > 1), v28 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v28 + 1;
    _swiftEmptyArrayStorage[v28++ + 4] = v27;
    --v29;
  }

  while (v29);
  if (v26 == 1)
  {
    v31 = &off_1000451C0;
  }

  else
  {
    v31 = &off_100045248;
  }

  v32 = &off_100045168;
  if (v24 != 1)
  {
    v32 = &off_100045198;
  }

  v34 = v32;
  sub_10000BCFC(&off_1000450E0);
  sub_10000BC10(_swiftEmptyArrayStorage);
  sub_10002F478(v34, v31, 1u, 0);

  return v17;
}

void sub_100026A0C(uint64_t isEscapingClosureAtFileLocation, void *a2)
{
  v3 = v2;
  v6 = sub_100036F38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v105[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100036E58();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v115 = &v105[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100002590(&qword_10004B720);
  __chkstk_darwin(v13 - 8);
  v15 = &v105[-v14];
  swift_unknownObjectWeakAssign();
  v16 = [a2 contents];
  aBlock[0] = 0;
  v17 = [v16 loadUserInfoWithError:aBlock];
  swift_unknownObjectRelease();
  v18 = aBlock[0];
  if (!v17)
  {
    v65 = aBlock[0];
    sub_100036D88();

    swift_willThrow();

    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v66 = sub_100036F68();
    sub_100002684(v66, qword_10004D258);
    v67 = sub_100036F48();
    v68 = sub_1000371C8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Rhizome renderer failed to create user info dictionary.", v69, 2u);
    }

    return;
  }

  v110 = v10;
  v19 = sub_100037018();
  v20 = v18;

  strcpy(v116, "PosterVariant");
  HIWORD(v116[1]) = -4864;
  sub_100037348();
  v21 = *(v19 + 16);
  v113 = v6;
  v112 = v7;
  v111 = v9;
  v114 = v11;
  if (!v21 || (v22 = sub_10001554C(aBlock), (v23 & 1) == 0))
  {
    sub_1000201A0(aBlock);
LABEL_11:
    if (qword_10004ADB8 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_12;
  }

  sub_10000CB18(*(v19 + 56) + 32 * v22, v118);
  sub_1000201A0(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = v116[0];
  v24 = v116[1];

  v26 = sub_1000312D4(v25, v24);
  if (v26 != 5)
  {
    v104 = v26;

    v3[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway] = v104;
    goto LABEL_16;
  }

  if (qword_10004ADB8 != -1)
  {
    swift_once();
  }

  v27 = sub_100036F68();
  sub_100002684(v27, qword_10004D258);

  v28 = sub_100036F48();
  v29 = sub_1000371C8();

  if (!os_log_type_enabled(v28, v29))
  {

    goto LABEL_15;
  }

  v30 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  aBlock[0] = v31;
  *v30 = 136315138;
  v32 = sub_10000BEB8(v25, v24, aBlock);

  *(v30 + 4) = v32;
  _os_log_impl(&_mh_execute_header, v28, v29, "Rhizome renderer failed to create color option variant string: %s. Defaulting to unity.", v30, 0xCu);
  sub_1000039EC(v31);

LABEL_14:

  while (1)
  {
LABEL_15:

LABEL_16:
    v40 = [objc_msgSend(isEscapingClosureAtFileLocation "environment")];
    swift_unknownObjectRelease();
    v41 = sub_100022C34(v3[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway], v40);
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v116[0] = 0xD000000000000010;
    v116[1] = 0x800000010003AA00;
    sub_100037348();
    if (!*(v19 + 16) || (v48 = sub_10001554C(aBlock), (v49 & 1) == 0))
    {
      v15 = HIBYTE(v41);
      sub_1000201A0(aBlock);
LABEL_32:
      LOBYTE(v51) = v41;
      goto LABEL_33;
    }

    sub_10000CB18(*(v19 + 56) + 32 * v48, v118);
    sub_1000201A0(aBlock);
    if ((swift_dynamicCast() & 1) == 0 || (sub_100036D98(), , v50 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentUUID, swift_beginAccess(), sub_1000296DC(v15, &v3[v50]), swift_endAccess(), sub_100005DEC(&v3[v50], v15), v51 = sub_100005130(v15, 5), v108 = v52, v53 = v15, v55 = v54, v57 = v56, sub_100029674(v53), (v109 = v55) == 0))
    {
      v15 = HIBYTE(v41);
      goto LABEL_32;
    }

    v15 = v51 >> 8;
    v47 = v57;
    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v58 = sub_100036F68();
    sub_100002684(v58, qword_10004D258);

    v59 = sub_100036F48();
    v60 = sub_1000371D8();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      aBlock[0] = v107;
      *v61 = 136315138;
      v62 = sub_100037028();
      v106 = v60;
      v64 = sub_10000BEB8(v62, v63, aBlock);

      *(v61 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v59, v106, "Rhizome renderer loaded saved layout from user info: %s", v61, 0xCu);
      sub_1000039EC(v107);
    }

    v43 = v108;
    v45 = v109;
LABEL_33:
    [objc_msgSend(isEscapingClosureAtFileLocation "environment")];
    v71 = v70;
    v73 = v72;
    swift_unknownObjectRelease();

    v74 = [isEscapingClosureAtFileLocation floatingView];
    v75 = objc_allocWithZone(type metadata accessor for RhizomeView());
    v76 = sub_100007118((v51 & 1) | (v15 << 8), v43, v45, v40, v74, 1, 1, 0, v47, v71, v73, 0, 1);
    v77 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView;
    v78 = *&v3[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView];
    *&v3[OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView] = v76;
    v79 = v76;

    *&v79[OBJC_IVAR____TtC13RhizomePoster11RhizomeView_delegate + 8] = &off_100046020;
    swift_unknownObjectWeakAssign();

    v80 = *&v3[v77];
    if (!v80)
    {
      break;
    }

    v81 = v80;
    v82 = [isEscapingClosureAtFileLocation backgroundView];
    [v82 bounds];
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;

    [v81 setFrame:{v84, v86, v88, v90}];
    v91 = [isEscapingClosureAtFileLocation backgroundView];
    v92 = *&v3[v77];
    v93 = v114;
    if (!v92)
    {
      goto LABEL_46;
    }

    v94 = v91;
    v95 = v92;

    [v94 addSubview:v95];

    v96 = v115;
    sub_100037178();
    sub_100028CAC(v96);
    (*(v93 + 8))(v96, v110);
    v97 = v111;
    sub_100037188();
    sub_100028810(v97);
    (*(v112 + 8))(v97, v113);
    if (qword_10004AE08 != -1)
    {
      swift_once();
    }

    v98 = *&v3[v77];
    if (v98)
    {
      sub_1000297DC(&qword_10004B588, type metadata accessor for RhizomeView);
    }

    v99 = v98;
    sub_100036EA8();
    [objc_msgSend(isEscapingClosureAtFileLocation "environment")];
    swift_unknownObjectRelease();
    sub_100036E78();
    v100 = swift_allocObject();
    *(v100 + 16) = v3;
    v101 = swift_allocObject();
    v101[2] = sub_100029784;
    v101[3] = v100;
    aBlock[4] = sub_10002979C;
    aBlock[5] = v101;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100027850;
    aBlock[3] = &unk_100046080;
    v102 = _Block_copy(aBlock);
    v103 = v3;

    [isEscapingClosureAtFileLocation updatePreferences:v102];
    _Block_release(v102);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_44:
    swift_once();
LABEL_12:
    v33 = sub_100036F68();
    sub_100002684(v33, qword_10004D258);

    v28 = sub_100036F48();
    v34 = sub_1000371C8();

    if (os_log_type_enabled(v28, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = sub_100037028();
      v39 = sub_10000BEB8(v37, v38, aBlock);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v28, v34, "Rhizome renderer failed to create color option from user info dictionary: %s. Defaulting to unity.", v35, 0xCu);
      sub_1000039EC(v36);

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

id sub_1000277E4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000309C8(*(a3 + OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway));
  [a1 setPreferredProminentColor:v4];

  return [a1 setAdaptiveTimeMode:3];
}

uint64_t sub_100027850(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, v6);

  return swift_unknownObjectRelease();
}

void sub_100027938(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_100036E58();
  v113 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100036F38();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002590(&qword_10004B720);
  __chkstk_darwin(v14 - 8);
  v16 = &v100 - v15;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    return;
  }

  v111 = v11;
  v112 = a1;
  swift_unknownObjectWeakAssign();
  v17 = [a2 contents];
  v115[0] = 0;
  v18 = [v17 loadUserInfoWithError:v115];
  swift_unknownObjectRelease();
  v19 = v115[0];
  if (!v18)
  {
    v37 = v115[0];
    sub_100036D88();

    swift_willThrow();

    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v38 = sub_100036F68();
    sub_100002684(v38, qword_10004D258);
    v29 = sub_100036F48();
    v39 = sub_1000371C8();
    if (!os_log_type_enabled(v29, v39))
    {
      goto LABEL_19;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v29, v39, "Rhizome renderer failed to create user info dictionary.", v40, 2u);
    goto LABEL_17;
  }

  v109 = a3;
  v20 = sub_100037018();
  v21 = v19;

  strcpy(v114, "PosterVariant");
  HIWORD(v114[1]) = -4864;
  sub_100037348();
  if (!*(v20 + 16) || (v110 = v3, v22 = sub_10001554C(v115), v23 = v110, (v24 & 1) == 0))
  {
    sub_1000201A0(v115);
    goto LABEL_9;
  }

  sub_10000CB18(*(v20 + 56) + 32 * v22, v116);
  sub_1000201A0(v115);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v28 = sub_100036F68();
    sub_100002684(v28, qword_10004D258);

    v29 = sub_100036F48();
    v30 = sub_1000371C8();

    if (!os_log_type_enabled(v29, v30))
    {

      goto LABEL_19;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v115[0] = v32;
    *v31 = 136315138;
    v33 = sub_100037028();
    v35 = v34;

    v36 = sub_10000BEB8(v33, v35, v115);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Rhizome renderer failed to create color option from user info dictionary: %s", v31, 0xCu);
    sub_1000039EC(v32);

LABEL_17:

LABEL_19:

    return;
  }

  v25 = v114[0];
  v26 = v114[1];

  v27 = sub_1000312D4(v25, v26);
  if (v27 == 5)
  {

    goto LABEL_9;
  }

  v41 = v27;
  v108 = v26;
  v114[0] = 0xD000000000000010;
  v114[1] = 0x800000010003AA00;
  v107 = 0x800000010003AA00;
  sub_100037348();
  if (*(v20 + 16) && (v42 = sub_10001554C(v115), v23 = v110, (v43 & 1) != 0))
  {
    sub_10000CB18(*(v20 + 56) + 32 * v42, v116);
    sub_1000201A0(v115);
    if (swift_dynamicCast())
    {
      sub_100036D98();

      v44 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentUUID;
      swift_beginAccess();
      sub_1000296DC(v16, v23 + v44);
      swift_endAccess();
    }
  }

  else
  {
    sub_1000201A0(v115);
  }

  v45 = v41;
  v46 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway;
  if ((sub_100030700(v45, *(v23 + OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentColorway)) & 1) == 0)
  {
    *(v23 + v46) = v45;
    v114[0] = 0xD000000000000010;
    v114[1] = v107;
    sub_100037348();
    if (*(v20 + 16) && (v47 = sub_10001554C(v115), v48 = v110, (v49 & 1) != 0))
    {
      sub_10000CB18(*(v20 + 56) + 32 * v47, v116);
      sub_1000201A0(v115);
      if (swift_dynamicCast())
      {
        v50 = v114[1];
        sub_100036D98();
        v51 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentUUID;
        swift_beginAccess();
        sub_1000296DC(v16, v48 + v51);
        swift_endAccess();
        sub_100005DEC(v48 + v51, v16);
        v106 = sub_100005130(v16, 5);
        v53 = v52;
        v55 = v54;
        v107 = v56;
        sub_100029674(v16);
        if (v55)
        {
          v104 = v55;
          if (qword_10004ADB8 != -1)
          {
            swift_once();
          }

          v57 = sub_100036F68();
          sub_100002684(v57, qword_10004D258);

          v58 = sub_100036F48();
          v59 = sub_1000371D8();

          v60 = os_log_type_enabled(v58, v59);
          v105 = v53;
          if (v60)
          {
            v61 = swift_slowAlloc();
            v102 = v59;
            v62 = v61;
            v101 = swift_slowAlloc();
            v115[0] = v101;
            *v62 = 136315138;
            v63 = sub_100037028();
            v103 = v50;
            v65 = sub_10000BEB8(v63, v64, v115);

            *(v62 + 4) = v65;
            _os_log_impl(&_mh_execute_header, v58, v102, "Rhizome renderer loaded saved layout from user info: %s", v62, 0xCu);
            sub_1000039EC(v101);
          }

          v66 = *(v110 + OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView);
          if (!v66)
          {
            goto LABEL_53;
          }

          v67 = v106;
          v68 = v106 >> 8;
          v69 = v66;

          v70 = v69 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout;
          *v70 = v67 & 1;
          v70[1] = v68;
          v71 = v104;
          *(v70 + 1) = v105;
          *(v70 + 2) = v71;
          *(v70 + 3) = v107;

          sub_100008124();
          goto LABEL_43;
        }

        if (qword_10004ADB8 != -1)
        {
          swift_once();
        }

        v94 = sub_100036F68();
        sub_100002684(v94, qword_10004D258);

        v69 = sub_100036F48();
        v95 = sub_1000371C8();

        if (!os_log_type_enabled(v69, v95))
        {
LABEL_43:

          goto LABEL_44;
        }

        v74 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v115[0] = v107;
        *v74 = 136315138;
        v96 = sub_100037028();
        v98 = sub_10000BEB8(v96, v97, v115);
        v106 = v69;
        v78 = v95;
        v99 = v98;

        *(v74 + 4) = v99;
        v80 = "Failed to load saved layout after changing variants in the editor: %s";
LABEL_42:
        v81 = v78;
        v69 = v106;
        _os_log_impl(&_mh_execute_header, v106, v81, v80, v74, 0xCu);
        sub_1000039EC(v107);

        goto LABEL_43;
      }
    }

    else
    {
      sub_1000201A0(v115);
    }

    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v72 = sub_100036F68();
    sub_100002684(v72, qword_10004D258);

    v69 = sub_100036F48();
    v73 = sub_1000371C8();

    if (!os_log_type_enabled(v69, v73))
    {
      goto LABEL_43;
    }

    v74 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v115[0] = v107;
    *v74 = 136315138;
    v75 = sub_100037028();
    v77 = sub_10000BEB8(v75, v76, v115);
    v106 = v69;
    v78 = v73;
    v79 = v77;

    *(v74 + 4) = v79;
    v80 = "Failed to load user uuid from user info after colorway changed: %s";
    goto LABEL_42;
  }

LABEL_44:
  sub_100037188();
  sub_100028810(v13);
  v82 = v111;
  v83 = *(v111 + 8);
  v107 = (v111 + 8);
  v106 = v83;
  (v83)(v13, v10);
  sub_100037178();
  sub_100028CAC(v9);
  v84 = v110;
  v85 = v113;
  v105 = *(v113 + 8);
  v105(v9, v7);
  v86 = *(v84 + OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_contentView);
  if (!v86)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  v104 = v86;

  v87 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_unlockState;
  swift_beginAccess();
  (*(v85 + 16))(v9, v84 + v87, v7);
  v88 = v84;
  sub_100036E48();
  v90 = v89;
  v105(v9, v7);
  v91 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_wakeState;
  swift_beginAccess();
  (*(v82 + 16))(v13, v88 + v91, v10);
  v92 = [a2 isSnapshot];
  v93 = v104;
  sub_100008988(v90, v13, v92);

  (v106)(v13, v10);
  if (qword_10004AE08 != -1)
  {
    swift_once();
  }

  sub_100036E98();
}

void sub_100028810(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002590(&qword_10004B510);
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v29 - v5;
  v7 = sub_100036F38();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - v12;
  __chkstk_darwin(v11);
  v15 = &v29 - v14;
  v16 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_wakeState;
  swift_beginAccess();
  v17 = *(v8 + 16);
  v17(v15, v2 + v16, v7);
  sub_1000297DC(&qword_10004B518, &type metadata accessor for WakeState);
  v34 = a1;
  LOBYTE(a1) = sub_100037048();
  v32 = *(v8 + 8);
  v29 = v8 + 8;
  v32(v15, v7);
  if ((a1 & 1) == 0)
  {
    v17(v15, v2 + v16, v7);
    v18 = v34;
    v17(v13, v34, v7);
    sub_100036E68();
    (*(v30 + 8))(v6, v31);
    v17(v15, v18, v7);
    swift_beginAccess();
    (*(v8 + 40))(v2 + v16, v15, v7);
    swift_endAccess();
    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v19 = sub_100036F68();
    sub_100002684(v19, qword_10004D258);
    v20 = v33;
    v17(v33, v34, v7);
    v21 = sub_100036F48();
    v22 = sub_1000371A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35[0] = v24;
      *v23 = 136315138;
      sub_1000297DC(&qword_10004B520, &type metadata accessor for WakeState);
      v25 = sub_100037538();
      v27 = v26;
      v32(v20, v7);
      v28 = sub_10000BEB8(v25, v27, v35);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Set wake state to %s", v23, 0xCu);
      sub_1000039EC(v24);
    }

    else
    {

      v32(v20, v7);
    }
  }
}

uint64_t sub_100028CAC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002590(&qword_10004B500);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - v5;
  v6 = sub_100036E58();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v30 - v11;
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_unlockState;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v16(v14, v2 + v15, v6);
  sub_1000297DC(&qword_10004B508, &type metadata accessor for UnlockState);
  v17 = a1;
  LOBYTE(a1) = sub_100037048();
  v37 = v7;
  v33 = *(v7 + 8);
  result = v33(v14, v6);
  if ((a1 & 1) == 0)
  {
    v30 = v15;
    v31 = v2;
    v16(v14, v2 + v15, v6);
    v16(v12, v17, v6);
    v19 = v32;
    sub_100036E68();
    (*(v34 + 8))(v19, v35);
    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v20 = sub_100036F68();
    sub_100002684(v20, qword_10004D258);
    v21 = v36;
    v35 = v17;
    v16(v36, v17, v6);
    v22 = sub_100036F48();
    v23 = sub_1000371B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v21;
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      sub_100036E48();
      v27 = v26;
      v33(v24, v6);
      *(v25 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "Set unlock progress to %f", v25, 0xCu);
    }

    else
    {

      v33(v21, v6);
    }

    v29 = v30;
    v28 = v31;
    v16(v14, v35, v6);
    swift_beginAccess();
    (*(v37 + 40))(v28 + v29, v14, v6);
    return swift_endAccess();
  }

  return result;
}

id sub_1000290D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RhizomePosterRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RhizomePosterRenderer()
{
  result = qword_10004B4E0;
  if (!qword_10004B4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100029238()
{
  sub_100036E58();
  if (v0 <= 0x3F)
  {
    sub_100036F38();
    if (v1 <= 0x3F)
    {
      sub_100029358();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100029358()
{
  if (!qword_10004B4F0)
  {
    sub_100036DC8();
    v0 = sub_100037288();
    if (!v1)
    {
      atomic_store(v0, &qword_10004B4F0);
    }
  }
}

void sub_1000293B0(uint64_t a1)
{
  v3 = sub_100002590(&qword_10004B720);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_100036DC8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13RhizomePoster21RhizomePosterRenderer_currentUUID;
  swift_beginAccess();
  sub_100005DEC(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100029674(v5);
    if (qword_10004ADB8 != -1)
    {
      swift_once();
    }

    v11 = sub_100036F68();
    sub_100002684(v11, qword_10004D258);
    v12 = sub_100036F48();
    v13 = sub_1000371B8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to save layout because there was no UUID...", v14, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v15 = a1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout;
    v16 = *(a1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout);
    v17 = *(a1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = v16 | (*(v15 + 1) << 8);

    sub_100004970(v20, v17, v18, v9, v19);

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong noteContentSignificantlyChanged];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_100029674(uint64_t a1)
{
  v2 = sub_100002590(&qword_10004B720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000296DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002590(&qword_10004B720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002974C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000297C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000297DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029824()
{
  if (qword_10004ADB8 != -1)
  {
    swift_once();
  }

  v0 = sub_100036F68();
  sub_100002684(v0, qword_10004D258);
  v1 = sub_100036F48();
  v2 = sub_1000371A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "PosterRenderer invalidate", v3, 2u);
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100029920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100029968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000299B8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_100030700(a1[1], a2[1]))
  {
    sub_10000FE20();
    if (sub_100037258() & 1) != 0 && (sub_100037258() & 1) != 0 && (sub_100037258())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100029A7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1 << a1;
  v3 = 0xD000000000000011;
  v4 = 0x6C694C20616C6143;
  if (((1 << a1) & 0xF00) == 0)
  {
    v4 = 0x206E616369726641;
  }

  if ((v2 & 0xF0) == 0)
  {
    v3 = v4;
  }

  if ((v2 & 0x1F000) != 0)
  {
    v5 = 0x646C6F676972614DLL;
  }

  else
  {
    v5 = v3;
  }

  if (a1 <= 0x10u)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x206E616369726641;
  }

  v20 = v6;

  v21._countAndFlagsBits = 0x3073732820;
  v21._object = 0xE500000000000000;
  sub_1000370B8(v21);

  v8 = sub_100037538();
  v10 = v9;

  v22._countAndFlagsBits = v8;
  v22._object = v10;
  sub_1000370B8(v22);

  v23._countAndFlagsBits = 5972009;
  v23._object = 0xE300000000000000;
  sub_1000370B8(v23);

  v11 = 0x7974696E55;
  v12 = 0xE500000000000000;
  v13 = 0x6E65657247;
  v14 = 0xEA0000000000726FLL;
  v15 = 0x6C6F6369746C754DLL;
  if (a2 != 3)
  {
    v15 = 0x6B63616C42;
    v14 = 0xE500000000000000;
  }

  if (a2 != 2)
  {
    v13 = v15;
    v12 = v14;
  }

  v16 = 0xE300000000000000;
  if (a2)
  {
    v11 = 6579538;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v17 = v11;
  }

  else
  {
    v17 = v13;
  }

  if (a2 <= 1u)
  {
    v18 = v16;
  }

  else
  {
    v18 = v12;
  }

  v24._countAndFlagsBits = v17;
  v24._object = v18;
  sub_1000370B8(v24);

  v25._countAndFlagsBits = 93;
  v25._object = 0xE100000000000000;
  sub_1000370B8(v25);

  return v20;
}

void *sub_100029D00(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100037478();

    if (v4)
    {
      type metadata accessor for RhizomeView();
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_100015590(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_100029DB4()
{
  sub_100037418();
  v0 = 0;
  do
  {
    ++v0;
    v1 = sub_100037088();
    v3 = v2;

    v8._countAndFlagsBits = v1;
    v8._object = v3;
    sub_1000370B8(v8);

    sub_100037098();

    v4 = objc_allocWithZone(PREditingLook);
    v5 = sub_100037058();

    v6 = sub_100037058();

    [v4 initWithIdentifier:v5 displayName:v6];

    sub_1000373F8();
    sub_100037428();
    sub_100037438();
    result = sub_100037408();
  }

  while (v0 != 5);
  qword_10004D300 = _swiftEmptyArrayStorage;
  return result;
}

id sub_100029FCC()
{
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_showingDebugViews] = 0;
  v1 = &v0[OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_savedLayoutUUIDString];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_allRhizomeViews] = _swiftEmptyDictionarySingleton;
  v2 = OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_rotationAnimator;
  sub_100036EC8();
  swift_allocObject();
  *&v0[v2] = sub_100036EB8();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for RhizomePosterEditor();
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = qword_10004ADB0;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_100036F68();
  sub_100002684(v6, qword_10004D240);
  v7 = sub_100036F48();
  v8 = sub_1000371A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "PosterEditor created", v9, 2u);
  }

  return v5;
}

id sub_10002A168(void *a1)
{
  [a1 setDepthEffectEnabled:1];

  return [a1 setAdaptiveTimeMode:3];
}

void sub_10002A234(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100002590(&qword_10004B720);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v127 - v12;
  v14 = sub_100036DC8();
  v15 = *(v14 - 8);
  v137 = v14;
  v138 = v15;
  __chkstk_darwin(v14);
  v141 = (&v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [a3 identifier];
  v18 = sub_100037068();
  v20 = v19;

  v21 = sub_1000312D4(v18, v20);
  if (v21 != 5)
  {
    v29 = v21;
    v133 = a1;
    v30 = [objc_msgSend(a1 "environment")];
    swift_unknownObjectRelease();
    if (qword_10004ADB0 != -1)
    {
      swift_once();
    }

    v140 = a3;
    v31 = sub_100036F68();
    v131 = sub_100002684(v31, qword_10004D240);
    v32 = sub_100036F48();
    v33 = sub_1000371D8();
    v34 = os_log_type_enabled(v32, v33);
    v139 = a2;
    v136 = v30;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v143[0] = v36;
      *v35 = 136315138;
      v37 = v4;
      if (v29 <= 1u)
      {
        if (v29)
        {
          v39 = 0xE300000000000000;
          v38 = 6579538;
        }

        else
        {
          v38 = 0x7974696E55;
          v39 = 0xE500000000000000;
        }
      }

      else if (v29 == 2)
      {
        v39 = 0xE500000000000000;
        v38 = 0x6E65657247;
      }

      else if (v29 == 3)
      {
        v38 = 0x6C6F6369746C754DLL;
        v39 = 0xEA0000000000726FLL;
      }

      else
      {
        v39 = 0xE500000000000000;
        v38 = 0x6B63616C42;
      }

      v40 = sub_10000BEB8(v38, v39, v143);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v32, v33, "PosterEditor poulating views for colorway %s", v35, 0xCu);
      sub_1000039EC(v36);

      v4 = v37;
      v30 = v136;
    }

    else
    {
    }

    v41 = sub_100022C34(v29, v30);
    v42 = v41;
    v44 = v43;
    v134 = v4;
    v135 = v45;
    v47 = v46;
    v48 = HIBYTE(v41);
    v49 = v4 + OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_savedLayoutUUIDString;
    v50 = v141;
    if (!*(v49 + 8))
    {
      LODWORD(v53) = HIBYTE(v41);
      goto LABEL_27;
    }

    sub_100036D98();

    v52 = v137;
    v51 = v138;
    if ((*(v138 + 48))(v13, 1, v137) == 1)
    {
      LODWORD(v53) = v48;
      sub_100005E5C(v13, &qword_10004B720);
LABEL_27:
      v54 = v42;
      v132 = v44;
      v55 = &selRef_setPreferredProminentColor_;
      goto LABEL_43;
    }

    v130 = v49;
    (*(v51 + 32))(v50, v13, v52);
    (*(v51 + 16))(v11, v50, v52);
    (*(v51 + 56))(v11, 0, 1, v52);
    v56 = sub_100005130(v11, v29);
    v58 = v57;
    v60 = v59;
    v128 = v61;
    sub_100005E5C(v11, &qword_10004B720);
    v129 = v60;
    if (v60)
    {
      v132 = v58;

      v62 = v56;
      v53 = v56 >> 8;
      v47 = v128;
      v63 = sub_100036F48();
      v64 = sub_1000371D8();
      v55 = &selRef_setPreferredProminentColor_;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v143[0] = v66;
        *v65 = 136315138;
        v49 = v130;
        if (v29 <= 1u)
        {
          v54 = v62;
          if (v29)
          {
            v68 = 0xE300000000000000;
            v67 = 6579538;
          }

          else
          {
            v67 = 0x7974696E55;
            v68 = 0xE500000000000000;
          }
        }

        else
        {
          v54 = v62;
          if (v29 == 2)
          {
            v68 = 0xE500000000000000;
            v67 = 0x6E65657247;
          }

          else if (v29 == 3)
          {
            v67 = 0x6C6F6369746C754DLL;
            v68 = 0xEA0000000000726FLL;
          }

          else
          {
            v68 = 0xE500000000000000;
            v67 = 0x6B63616C42;
          }
        }

        v69 = sub_10000BEB8(v67, v68, v143);

        *(v65 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v63, v64, "Loaded saved layout, and applied override colorway %s", v65, 0xCu);
        sub_1000039EC(v66);

        (*(v138 + 8))(v141, v137);
        v135 = v129;
LABEL_43:
        v70 = v140;
        v71 = [v140 v55[5]];
        v72 = sub_100037068();
        v74 = v73;

        if (qword_10004AE10 != -1)
        {
          swift_once();
        }

        v75 = qword_10004D300;
        if (qword_10004D300 >> 62)
        {
          v76 = sub_1000374A8();
          if (v76)
          {
LABEL_47:
            v77 = __OFSUB__(v76, 1);
            v78 = v76 - 1;
            if (v77)
            {
              __break(1u);
            }

            else if ((v75 & 0xC000000000000001) == 0)
            {
              if ((v78 & 0x8000000000000000) != 0)
              {
LABEL_74:
                __break(1u);
                goto LABEL_75;
              }

              if (v78 >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_75:
                __break(1u);
                return;
              }

              v79 = *(v75 + 8 * v78 + 32);
              goto LABEL_52;
            }

            v79 = sub_1000373C8();
LABEL_52:
            v80 = v79;
            v81 = [v79 v55[5]];

            v82 = sub_100037068();
            v84 = v83;

            if (v72 == v82 && v74 == v84)
            {
              v85 = 1;
            }

            else
            {
              v85 = sub_100037558();
            }

            goto LABEL_59;
          }
        }

        else
        {
          v76 = *((qword_10004D300 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v76)
          {
            goto LABEL_47;
          }
        }

        v85 = 0;
LABEL_59:

        v86 = [v139 floatingView];
        v87 = v133;
        [objc_msgSend(v133 "environment")];
        v89 = v88;
        v91 = v90;
        swift_unknownObjectRelease();
        v92 = *(v49 + 8);
        v93 = [v70 v55[5]];
        v94 = sub_100037068();
        v96 = v95;

        v97 = [v87 currentLook];
        v98 = [v97 v55[5]];

        v99 = sub_100037068();
        v101 = v100;

        if (v94 == v99 && v96 == v101)
        {
          v102 = 1;
        }

        else
        {
          v102 = sub_100037558();
        }

        v104 = v135;
        v103 = v136;

        v105 = objc_allocWithZone(type metadata accessor for RhizomeView());
        v106 = sub_100007118(v54 & 1u | (v53 << 8), v132, v104, v103, v86, v92 == 0, v85 & 1, v102 & 1, v47, v89, v91, v85 & 1, 0);
        v107 = v139;
        v108 = [v139 backgroundView];
        [v108 bounds];
        v110 = v109;
        v112 = v111;
        v114 = v113;
        v116 = v115;

        [v106 setFrame:{v110, v112, v114, v116}];
        v117 = OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_allRhizomeViews;
        v118 = v134;
        swift_beginAccess();
        v119 = *(v118 + v117);
        v120 = v140;
        if ((v119 & 0xC000000000000001) == 0)
        {
          v124 = v106;
          goto LABEL_70;
        }

        if (v119 < 0)
        {
          v121 = *(v118 + v117);
        }

        else
        {
          v121 = v119 & 0xFFFFFFFFFFFFFF8;
        }

        v122 = v106;
        v123 = sub_100037468();
        if (!__OFADD__(v123, 1))
        {
          *(v118 + v117) = sub_10002C8F8(v121, v123 + 1);
LABEL_70:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = *(v118 + v117);
          sub_100017010(v106, v120, isUniquelyReferenced_nonNull_native);
          *(v118 + v117) = v142;
          swift_endAccess();
          v126 = [v107 backgroundView];
          [v126 addSubview:v106];

          return;
        }

        __break(1u);
        goto LABEL_74;
      }

      (*(v138 + 8))(v141, v52);
      v135 = v129;
      v54 = v56;
    }

    else
    {
      LODWORD(v53) = v48;
      (*(v51 + 8))(v141, v52);
      v54 = v42;
      v132 = v44;
      v55 = &selRef_setPreferredProminentColor_;
    }

    v49 = v130;
    goto LABEL_43;
  }

  if (qword_10004ADB0 != -1)
  {
    swift_once();
  }

  v22 = sub_100036F68();
  sub_100002684(v22, qword_10004D240);
  v23 = a3;
  v141 = sub_100036F48();
  v24 = sub_1000371C8();

  if (os_log_type_enabled(v141, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v23;
    *v26 = v23;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v141, v24, "PosterEditor failed to create color option for look %@", v25, 0xCu);
    sub_100005E5C(v26, &qword_10004B728);
  }

  v28 = v141;
}

void sub_10002B034(uint64_t a1)
{
  v2 = sub_100036DC8();
  isa = v2[-1].isa;
  __chkstk_darwin(v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100036DB8();
    sub_100002590(&qword_10004B708);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100038710;
    strcpy((inited + 32), "PosterVariant");
    *(inited + 46) = -4864;
    v9 = (a1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout);
    v10 = *(a1 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 1);
    v53 = v2;
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 0xE300000000000000;
        v12 = 6579538;
      }

      else
      {
        v11 = 0xE500000000000000;
        v12 = 0x7974696E55;
      }
    }

    else if (v10 == 2)
    {
      v11 = 0xE500000000000000;
      v12 = 0x6E65657247;
    }

    else if (v10 == 3)
    {
      v11 = 0xEA0000000000726FLL;
      v12 = 0x6C6F6369746C754DLL;
    }

    else
    {
      v11 = 0xE500000000000000;
      v12 = 0x6B63616C42;
    }

    *(inited + 48) = v12;
    *(inited + 56) = v11;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 0xD000000000000010;
    *(inited + 88) = 0x800000010003AA00;
    v17 = inited;
    v18 = sub_100036DA8();
    v17[15] = &type metadata for String;
    v17[12] = v18;
    v17[13] = v19;
    v20 = sub_100034BBC(v17);
    swift_setDeallocating();
    sub_100002590(&qword_10004B710);
    swift_arrayDestroy();
    v21 = [objc_msgSend(v7 "environment")];
    swift_unknownObjectRelease();
    sub_10002B860(v20);

    v22 = sub_100037008().super.isa;

    v54 = 0;
    v23 = [v21 storeUserInfo:v22 error:&v54];

    v24 = v54;
    if (v23 && (v25 = v54, v26 = [objc_msgSend(v7 "environment")], swift_unknownObjectRelease(), v54 = 0, v27 = objc_msgSend(v26, "loadUserInfoWithError:", &v54), v26, v24 = v54, v27))
    {
      sub_100037018();
      v28 = v24;

      if (qword_10004ADB0 != -1)
      {
        swift_once();
      }

      v29 = sub_100036F68();
      sub_100002684(v29, qword_10004D240);

      v30 = sub_100036F48();
      v31 = sub_1000371B8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v54 = v52;
        *v32 = 136315138;
        v33 = sub_100037028();
        v35 = v34;

        v36 = sub_10000BEB8(v33, v35, &v54);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v30, v31, "Successfully stored userInfo: %s", v32, 0xCu);
        sub_1000039EC(v52);
      }

      else
      {
      }

      v47 = v53;
      v48 = *(v9 + 1);
      v49 = *(v9 + 2);
      v50 = *(v9 + 3);
      v51 = *v9 | (v9[1] << 8);

      sub_100004970(v51, v48, v49, v5, v50);

      (*(isa + 1))(v5, v47);
    }

    else
    {
      v37 = v53;
      v38 = v24;
      sub_100036D88();

      swift_willThrow();
      (*(isa + 1))(v5, v37);
      if (qword_10004ADB0 != -1)
      {
        swift_once();
      }

      v39 = sub_100036F68();
      sub_100002684(v39, qword_10004D240);
      swift_errorRetain();
      v40 = sub_100036F48();
      v41 = sub_1000371C8();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v54 = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = sub_100037588();
        v46 = sub_10000BEB8(v44, v45, &v54);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to store userInfo in editor.environment.targetConfiguration. %s", v42, 0xCu);
        sub_1000039EC(v43);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_10004ADB0 != -1)
    {
      swift_once();
    }

    v13 = sub_100036F68();
    sub_100002684(v13, qword_10004D240);
    v53 = sub_100036F48();
    v14 = sub_1000371C8();
    if (os_log_type_enabled(v53, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v53, v14, "Failed to save layout because editor was nil...", v15, 2u);
    }

    v16 = v53;
  }
}

uint64_t sub_10002B860(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002590(&qword_10004B718);
    v2 = sub_1000374F8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000CB18(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000D3A0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000D3A0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000D3A0(v31, v32);
    result = sub_100037328(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000D3A0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

char *sub_10002BBF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1000374A8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100014BD0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1000373C8();
        sub_1000201F4(0, &qword_10004B738);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100014BD0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10000D3A0(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000201F4(0, &qword_10004B738);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100014BD0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10000D3A0(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10002BF20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RhizomePosterEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10002BFE8(uint64_t a1, uint64_t a2, float a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    if (qword_10004ADB0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_67;
  }

  v8 = Strong;
  v9 = [Strong currentLook];
  v10 = OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_allRhizomeViews;
  swift_beginAccess();
  v11 = *(v3 + v10);

  v12 = sub_100029D00(v9, v11);

  if (!v12)
  {

    goto LABEL_7;
  }

  sub_10000B278(a1, a2);
  if (a3 != 1.0)
  {

    goto LABEL_64;
  }

  v58 = a1;
  v54 = v12;
  v55 = v8;
  v13 = *(v3 + v10);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v15 = 0;
    v59 = sub_100037458() | 0x8000000000000000;
    v60 = 0;
  }

  else
  {
    v19 = -1 << *(v13 + 32);
    v14 = ~v19;
    v59 = v13;
    v60 = v13 + 64;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v15 = v21 & *(v13 + 64);
  }

  v22 = 0;
  v23 = (v14 + 64) >> 6;
  p_align = &stru_100048FE8.align;
  v25 = &unk_10004B000;
  v56 = v23;
  for (i = a2; ; a2 = i)
  {
    if ((v59 & 0x8000000000000000) != 0)
    {
      v32 = sub_100037488();
      if (!v32 || (v34 = v33, *&v65.a = v32, sub_1000201F4(0, &qword_10004B700), swift_dynamicCast(), a = transform.a, v65.a = v34, type metadata accessor for RhizomeView(), swift_dynamicCast(), v62 = v22, v63 = transform.a, v61 = v15, a == 0.0))
      {
LABEL_63:
        sub_100003664();

        v8 = v55;
        goto LABEL_64;
      }
    }

    else
    {
      v26 = v22;
      v27 = v15;
      v28 = v22;
      if (!v15)
      {
        while (1)
        {
          v28 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v28 >= v23)
          {
            goto LABEL_63;
          }

          v27 = *(v60 + 8 * v28);
          ++v26;
          if (v27)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_22:
      v61 = (v27 - 1) & v27;
      v62 = v28;
      v29 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
      v30 = *(*(v59 + 56) + v29);
      a = COERCE_DOUBLE(*(*(v59 + 48) + v29));
      v63 = COERCE_DOUBLE(v30);
      if (a == 0.0)
      {
        goto LABEL_63;
      }
    }

    if (v58 > 2)
    {
      if (v58 != 3)
      {
        if (v58 == 4)
        {
          CLKFloatEqualsFloat();
          if (a2 <= 2)
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      if (a2 <= 2)
      {
LABEL_41:
        if (a2 == 2)
        {
          CLKFloatEqualsFloat();
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (v58 != 1)
      {
        if (v58 == 2)
        {
          CLKFloatEqualsFloat();
          if (a2 <= 2)
          {
            goto LABEL_41;
          }

          goto LABEL_38;
        }

LABEL_35:
        if (a2 <= 2)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      if (a2 <= 2)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (a2 == 4)
    {
      CLKFloatEqualsFloat();
    }

LABEL_43:
    CLKInterpolateBetweenFloatsClipped();
    v36 = v35;
    transform.a = *(*&v63 + OBJC_IVAR____TtC13RhizomePoster11RhizomeView_lockedScreenLayout + 16);

    sub_10000BA28(v37);
    v38 = transform.a;
    if (*&transform.a >> 62)
    {
      break;
    }

    v39 = *((*&transform.a & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_45;
    }

LABEL_16:

    v15 = v61;
    v22 = v62;
    v23 = v56;
  }

  v39 = sub_1000374A8();
  if (!v39)
  {
    goto LABEL_16;
  }

LABEL_45:
  if (v39 >= 1)
  {
    v40 = 0;
    while (1)
    {
      if ((*&v38 & 0xC000000000000001) != 0)
      {
        v41 = sub_1000373C8();
      }

      else
      {
        v41 = *(*&v38 + 8 * v40 + 32);
      }

      v42 = swift_unknownObjectWeakLoadStrong();
      if (!v42)
      {
        goto LABEL_60;
      }

      v43 = v42;
      CGAffineTransformMakeRotation(&transform, *(v41 + 104));
      CGAffineTransformRotate(&v65, &transform, v36);
      tx = v65.tx;
      ty = v65.ty;
      v46 = type metadata accessor for RhizomeLayeredFlowerView();
      v64.receiver = v43;
      v64.super_class = v46;
      v47 = *(p_align + 469);
      *&transform.a = *&v65.a;
      *&transform.c = *&v65.c;
      transform.tx = tx;
      transform.ty = ty;
      objc_msgSendSuper2(&v64, v47, &transform);
      v48 = *&v43[v25[88]];
      if (v48)
      {
        if (*(v48 + 24) & 1) != 0 && (*(v48 + 120))
        {
          break;
        }
      }

LABEL_48:
      if (v39 == ++v40)
      {
        goto LABEL_16;
      }
    }

    [v43 transform];
    CGAffineTransformDecompose(&v65, &transform);
    if (*(v48 + 48))
    {
      v49 = 1.5;
    }

    else
    {
      v49 = 3.0;
    }

    v50 = v49 / v65.a;
    [*(v48 + 56) setLineWidth:v49 / v65.a];
    [*(v48 + 64) setLineWidth:v50];
    v51 = v25;
    v52 = p_align;
    v53 = *(v48 + 72);
    [v53 setLineWidth:v50];

    p_align = v52;
    v25 = v51;

LABEL_60:

    goto LABEL_48;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  swift_once();
LABEL_8:
  v16 = sub_100036F68();
  sub_100002684(v16, qword_10004D240);
  v8 = sub_100036F48();
  v17 = sub_1000371C8();
  if (os_log_type_enabled(v8, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v8, v17, "Failed to load first rhizome view for rotation.", v18, 2u);
  }

LABEL_64:
}

void sub_10002C6E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_allRhizomeViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = sub_100037458() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v12;
    v15 = v7;
    v16 = v12;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v19 = *(*(v8 + 56) + v18);
    v20 = *(*(v8 + 48) + v18);
    v21 = v19;
    if (!v20)
    {
LABEL_18:
      sub_100003664();
      return;
    }

    while (1)
    {

      sub_10000B678(a1);
      v12 = v16;
      v7 = v17;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_100037488())
      {
        sub_1000201F4(0, &qword_10004B700);
        swift_dynamicCast();
        v20 = v22;
        type metadata accessor for RhizomeView();
        swift_dynamicCast();
        v21 = v22;
        v16 = v12;
        v17 = v7;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_18;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Int sub_10002C8F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100002590(&qword_10004B730);
    v2 = sub_1000374E8();
    v19 = v2;
    sub_100037458();
    v3 = sub_100037488();
    if (v3)
    {
      v4 = v3;
      sub_1000201F4(0, &qword_10004B700);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for RhizomeView();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100016488(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_100037248(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100037488();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10002CB2C(void *a1)
{
  v2 = v1;
  v4 = sub_100002590(&qword_10004B720);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v72 - v8;
  v76 = sub_100036DC8();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakAssign();
  sub_10002E300();
  swift_unknownObjectRetain();
  sub_100036EA8();
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    v14 = &off_100045168;
  }

  else
  {
    v14 = &off_100045198;
  }

  v15 = [v11 currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
    v17 = &off_1000451C0;
  }

  else
  {
    v17 = &off_100045248;
  }

  v18 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  aBlock[0] = 0;
  v19 = [v18 loadUserInfoWithError:aBlock];
  swift_unknownObjectRelease();
  v20 = aBlock[0];
  if (!v19)
  {
    v36 = aBlock[0];
    sub_100036D88();

    swift_willThrow();
    if (qword_10004ADB0 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

  v21 = sub_100037018();
  v22 = v20;

  v77 = 0xD000000000000010;
  v78 = 0x800000010003AA00;
  sub_100037348();
  if (!*(v21 + 16) || (v23 = sub_10001554C(aBlock), (v24 & 1) == 0))
  {

    sub_1000201A0(aBlock);
    goto LABEL_57;
  }

  sub_10000CB18(*(v21 + 56) + 32 * v23, v79);
  sub_1000201A0(aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_57;
  }

  v25 = v77;
  v26 = v78;
  if (qword_10004ADB0 != -1)
  {
    swift_once();
  }

  v27 = sub_100036F68();
  sub_100002684(v27, qword_10004D240);

  v28 = sub_100036F48();
  v29 = sub_1000371B8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v73 = v25;
    v31 = v30;
    v32 = swift_slowAlloc();
    v72 = v28;
    v33 = v32;
    aBlock[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_10000BEB8(v73, v26, aBlock);
    v34 = v29;
    v35 = v72;
    _os_log_impl(&_mh_execute_header, v72, v34, "Successfully loaded uuid string from user info. %s", v31, 0xCu);
    sub_1000039EC(v33);

    v25 = v73;
  }

  else
  {
  }

  v45 = (v2 + OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_savedLayoutUUIDString);
  *v45 = v25;
  v45[1] = v26;

  sub_100036D98();

  v46 = v75;
  v47 = v76;
  if ((*(v75 + 48))(v9, 1, v76) == 1)
  {
    sub_100005E5C(v9, &qword_10004B720);
    goto LABEL_57;
  }

  v48 = v74;
  (*(v46 + 32))(v74, v9, v47);
  (*(v46 + 16))(v7, v48, v47);
  (*(v46 + 56))(v7, 0, 1, v47);
  sub_100005130(v7, 0);
  v50 = v49;
  sub_100005E5C(v7, &qword_10004B720);
  if (!v50)
  {
    (*(v46 + 8))(v48, v47);
    goto LABEL_57;
  }

  if (v50 >> 62)
  {
    v51 = sub_1000374A8();
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v51)
  {
    aBlock[0] = _swiftEmptyArrayStorage;

    sub_100014B00(0, v51 & ~(v51 >> 63), 0);
    if (v51 < 0)
    {
      __break(1u);
LABEL_62:
      __break(1u);
    }

    v14 = aBlock[0];
    if ((v50 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v51; ++i)
      {
        v53 = *(sub_1000373C8() + 96);
        swift_unknownObjectRelease();
        aBlock[0] = v14;
        v55 = v14[2];
        v54 = v14[3];
        if (v55 >= v54 >> 1)
        {
          sub_100014B00((v54 > 1), v55 + 1, 1);
          v14 = aBlock[0];
        }

        v14[2] = v55 + 1;
        *(v14 + v55 + 32) = v53;
      }
    }

    else
    {
      v56 = v50 + 32;
      v57 = *(aBlock[0] + 2);
      do
      {
        v58 = *(*v56 + 96);
        aBlock[0] = v14;
        v59 = v14[3];
        if (v57 >= v59 >> 1)
        {
          sub_100014B00((v59 > 1), v57 + 1, 1);
          v14 = aBlock[0];
        }

        v14[2] = v57 + 1;
        *(v14 + v57 + 32) = v58;
        v56 += 8;
        ++v57;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (!(v50 >> 62))
  {
    v60 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v60)
    {
      goto LABEL_43;
    }

LABEL_51:

    (*(v75 + 8))(v74, v76);
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v60 = sub_1000374A8();
  if (!v60)
  {
    goto LABEL_51;
  }

LABEL_43:
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014BB0(0, v60 & ~(v60 >> 63), 0);
  v61 = v76;
  if (v60 < 0)
  {
    goto LABEL_62;
  }

  v17 = aBlock[0];
  if ((v50 & 0xC000000000000001) != 0)
  {
    for (j = 0; j != v60; ++j)
    {
      v63 = *(sub_1000373C8() + 112);
      swift_unknownObjectRelease();
      aBlock[0] = v17;
      v65 = v17[2];
      v64 = v17[3];
      if (v65 >= v64 >> 1)
      {
        sub_100014BB0((v64 > 1), v65 + 1, 1);
        v17 = aBlock[0];
      }

      v17[2] = v65 + 1;
      v17[v65 + 4] = v63;
    }
  }

  else
  {
    v66 = v50 + 32;
    v67 = *(aBlock[0] + 2);
    do
    {
      v68 = *(*v66 + 112);
      aBlock[0] = v17;
      v69 = v17[3];
      if (v67 >= v69 >> 1)
      {
        sub_100014BB0((v69 > 1), v67 + 1, 1);
        v17 = aBlock[0];
      }

      v17[2] = v67 + 1;
      v17[v67 + 4] = v68;
      v66 += 8;
      ++v67;
      --v60;
    }

    while (v60);
  }

  (*(v75 + 8))(v74, v61);

LABEL_57:
  while (1)
  {
    sub_10002F478(v14, v17, 0, 0);

    aBlock[4] = sub_10002A168;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100027850;
    aBlock[3] = &unk_100046130;
    v70 = _Block_copy(aBlock);

    [a1 updatePreferences:v70];
    _Block_release(v70);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_17:
    v37 = sub_100036F68();
    sub_100002684(v37, qword_10004D240);
    swift_errorRetain();
    v38 = sub_100036F48();
    v39 = sub_1000371C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_100037588();
      v44 = sub_10000BEB8(v42, v43, aBlock);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to load user info in populate views. %s", v40, 0xCu);
      sub_1000039EC(v41);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10002D648(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 currentLook];
  v7 = OBJC_IVAR____TtC13RhizomePoster19RhizomePosterEditor_allRhizomeViews;
  swift_beginAccess();
  v8 = *(a2 + v7);

  v9 = sub_100029D00(v6, v8);

  if (v9)
  {
    sub_10002B034(v9);
  }

  else
  {
    if (qword_10004ADB0 != -1)
    {
      swift_once();
    }

    v10 = sub_100036F68();
    sub_100002684(v10, qword_10004D240);
    v11 = a1;
    v9 = sub_100036F48();
    v12 = sub_1000371C8();

    if (os_log_type_enabled(v9, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v11 currentLook];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v9, v12, "PosterEditor couldn't find rhizome view for look %@", v13, 0xCu);
      sub_100005E5C(v14, &qword_10004B728);
    }
  }

  return (*(a3 + 16))(a3);
}

uint64_t sub_10002D830()
{
  if (qword_10004ADB0 != -1)
  {
    swift_once();
  }

  v0 = sub_100036F68();
  sub_100002684(v0, qword_10004D240);
  v1 = sub_100036F48();
  v2 = sub_1000371A8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "PosterEditor invalidated", v3, 2u);
  }

  swift_unknownObjectWeakAssign();
  if (qword_10004AE20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_10004B758 = _swiftEmptyDictionarySingleton;

  if (qword_10004AE28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_10004B760 = _swiftEmptyDictionarySingleton;

  if (qword_10004AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_10004B750 = _swiftEmptyDictionarySingleton;
}

uint64_t sub_10002DA38(void *a1)
{
  v2 = [a1 timeFontIdentifier];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_100037068();
  v6 = v5;
  if (v4 == sub_100037068() && v6 == v7)
  {
    goto LABEL_20;
  }

  v9 = sub_100037558();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = [a1 timeFontIdentifier];
    if (v10)
    {
      v3 = v10;
      v11 = sub_100037068();
      v13 = v12;
      if (v11 == sub_100037068() && v13 == v14)
      {
        goto LABEL_20;
      }

      v16 = sub_100037558();

      if (v16)
      {
        goto LABEL_13;
      }
    }

    v18 = [a1 timeFontIdentifier];
    if (!v18)
    {
      v17 = 1;
      return v17 & 1;
    }

    v3 = v18;
    v19 = sub_100037068();
    v21 = v20;
    if (v19 != sub_100037068() || v21 != v22)
    {
      v17 = sub_100037558() ^ 1;
LABEL_21:

      return v17 & 1;
    }

LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

LABEL_13:
  v17 = 0;
  return v17 & 1;
}

id sub_10002DC00()
{
  v0 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_10002BBF8(_swiftEmptyArrayStorage);
  v1 = objc_allocWithZone(PREditorColorPalette);
  isa = sub_1000370F8().super.isa;

  v3 = [v1 initWithColors:isa localizedName:0 showsColorWell:0];

  [v0 setColorPalette:v3];
  [v0 setColorWellDisplayMode:0];
  [v0 setShowsSlider:1];
  return v0;
}

uint64_t sub_10002DCE8(void *a1)
{
  if (qword_10004AE10 != -1)
  {
    swift_once();
  }

  v2 = qword_10004D300;
  if (qword_10004D300 >> 62)
  {
    if (sub_1000374A8())
    {
      goto LABEL_5;
    }
  }

  else if (*((qword_10004D300 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_1000373C8();
LABEL_8:
      v4 = v3;
      v5 = [objc_msgSend(a1 "environment")];
      swift_unknownObjectRelease();
      v34[0] = 0;
      v6 = [v5 loadUserInfoWithError:v34];
      swift_unknownObjectRelease();
      v7 = v34[0];
      if (v6)
      {
        v8 = sub_100037018();
        v9 = v7;

        strcpy(v33, "PosterVariant");
        HIWORD(v33[1]) = -4864;
        sub_100037348();
        if (*(v8 + 16) && (v10 = sub_10001554C(v34), (v11 & 1) != 0))
        {
          sub_10000CB18(*(v8 + 56) + 32 * v10, v35);
          sub_1000201A0(v34);
          if (swift_dynamicCast())
          {
            v12 = sub_1000312D4(v33[0], v33[1]);
            if (v12 != 5)
            {

              if (v12 <= 1)
              {
                if (v12)
                {
                  return 6579538;
                }

                else
                {
                  return 0x7974696E55;
                }
              }

              else if (v12 == 2)
              {
                return 0x6E65657247;
              }

              else if (v12 == 3)
              {
                return 0x6C6F6369746C754DLL;
              }

              else
              {
                return 0x6B63616C42;
              }
            }
          }
        }

        else
        {
          sub_1000201A0(v34);
        }

        if (qword_10004ADB0 != -1)
        {
          swift_once();
        }

        v14 = sub_100036F68();
        sub_100002684(v14, qword_10004D240);

        v15 = sub_100036F48();
        v16 = sub_1000371C8();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v34[0] = v18;
          *v17 = 136315138;
          v19 = sub_100037028();
          v21 = v20;

          v22 = sub_10000BEB8(v19, v21, v34);

          *(v17 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create color option from user info dictionary: %s", v17, 0xCu);
          sub_1000039EC(v18);
        }

        else
        {
        }
      }

      else
      {
        v23 = v34[0];
        sub_100036D88();

        swift_willThrow();

        if (qword_10004ADB0 != -1)
        {
          swift_once();
        }

        v24 = sub_100036F68();
        sub_100002684(v24, qword_10004D240);
        v15 = sub_100036F48();
        v25 = sub_1000371C8();
        if (os_log_type_enabled(v15, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v15, v25, "Failed to create user info dictionary. Defaulting to first look.", v26, 2u);
        }
      }

      v27 = [v4 identifier];
      v13 = sub_100037068();

      return v13;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v3 = *(v2 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_42;
  }

  if (qword_10004ADB0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v28 = sub_100036F68();
  sub_100002684(v28, qword_10004D240);
  v29 = sub_100036F48();
  v30 = sub_1000371C8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "All looks array was empty somehow...", v31, 2u);
  }

  return 0;
}

unint64_t sub_10002E300()
{
  result = qword_10004B740;
  if (!qword_10004B740)
  {
    type metadata accessor for RhizomePosterEditor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B740);
  }

  return result;
}

uint64_t sub_10002E354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E3A8()
{
  v0 = sub_100037208();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000371F8();
  __chkstk_darwin();
  sub_100036FA8();
  __chkstk_darwin();
  sub_100005048();
  sub_100036F98();
  sub_1000371E8();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = sub_100037238();
  qword_10004D308 = result;
  return result;
}

uint64_t sub_10002E558(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7, char a8, uint64_t a9, uint64_t a10)
{
  v19 = sub_100036F78();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &aBlock[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100036FA8();
  v23 = *(v33 - 8);
  __chkstk_darwin();
  v25 = &aBlock[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a7 CGPath];
  v27 = sub_10002EE08(v26, a8 & 1, a2, a3, a4, a5);

  swift_beginAccess();
  v28 = *(a1 + 16);
  *(a1 + 16) = v27;

  sub_100005048();
  v29 = sub_100037218();
  v30 = swift_allocObject();
  v30[2] = a9;
  v30[3] = a10;
  v30[4] = a1;
  aBlock[4] = sub_10002F104;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000047BC;
  aBlock[3] = &unk_100046180;
  v31 = _Block_copy(aBlock);

  sub_100036F88();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002F128();
  sub_100002590(&qword_10004B038);
  sub_10002F180();
  sub_1000372A8();
  sub_100037228();
  _Block_release(v31);

  (*(v20 + 8))(v22, v19);
  return (*(v23 + 8))(v25, v33);
}

void sub_10002E878(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = v5;
  a1(v5);
}

uint64_t sub_10002E8E0(void *a1, const CGPath *a2, uint64_t a3)
{
  v6 = sub_100036DD8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 CGContext];
  CGContextAddPath(v10, a2);

  v11 = [a1 CGContext];
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = [objc_allocWithZone(UIColor) initWithCGColor:*a3];
  v16 = [v15 colorWithAlphaComponent:*(a3 + 32)];

  v17 = [v16 CGColor];
  v21.width = v12;
  v21.height = v13;
  CGContextSetShadowWithColor(v11, v21, v14, v17);

  v18 = [a1 CGContext];
  (*(v7 + 104))(v9, enum case for CGPathFillRule.winding(_:), v6);
  sub_100037198();

  return (*(v7 + 8))(v9, v6);
}

void sub_10002EADC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10002EB4C(double a1)
{
  sub_100037448();
  v3._countAndFlagsBits = 45;
  v3._object = 0xE100000000000000;
  sub_1000370B8(v3);
  sub_100037448();
  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000370B8(v4);
  sub_100037448();
  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  sub_1000370B8(v5);
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    v6._countAndFlagsBits = sub_100037538();
    sub_1000370B8(v6);

    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_10002ECC0(uint64_t a1, double a2)
{
  if (*(a1 + 1) == 1)
  {
    if (qword_10004AE28 != -1)
    {
      swift_once();
    }

    v3 = &off_10004B760;
  }

  else
  {
    if (qword_10004AE20 != -1)
    {
      swift_once();
    }

    v3 = &off_10004B758;
  }

  swift_beginAccess();
  v4 = *v3;

  sub_10002EB4C(a2);
  if (*(v4 + 16))
  {
    v7 = sub_10001541C(v5, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v4 + 56) + 8 * v7);
      v11 = v10;

      return v10;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10002EE08(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_opt_self() blackColor];
  v13 = [v12 CGColor];

  if (a2)
  {
    v14 = 0.7;
  }

  else
  {
    v14 = 0.5;
  }

  if (a2)
  {
    v15 = 15.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = 5.0;
  if (a2)
  {
    v16 = 2.0;
  }

  v28 = v16;
  v29 = v14;
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  v17 = v15 + 20.0 + v15 + 20.0;
  v18 = v17 + CGRectGetWidth(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  v19 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{-(v15 + 20.0), -(v15 + 20.0), v18, v17 + CGRectGetHeight(v32)}];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v13;
  *(v20 + 32) = 0;
  *(v20 + 40) = v28;
  *(v20 + 48) = v15;
  *(v20 + 56) = v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10002F224;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10002F240;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002EADC;
  aBlock[3] = &unk_1000461F8;
  v22 = _Block_copy(aBlock);
  v23 = a1;
  v24 = v13;

  v25 = [v19 imageWithActions:v22];
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  else
  {
    v27 = [v25 _imageThatSuppressesAccessibilityHairlineThickening];

    return v27;
  }

  return result;
}

uint64_t sub_10002F0C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002F128()
{
  result = qword_10004B030;
  if (!qword_10004B030)
  {
    sub_100036F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B030);
  }

  return result;
}

unint64_t sub_10002F180()
{
  result = qword_10004B040;
  if (!qword_10004B040)
  {
    sub_1000023BC(&qword_10004B038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B040);
  }

  return result;
}

uint64_t sub_10002F1E4()
{

  return _swift_deallocObject(v0, 64, 7);
}

void sub_10002F268(char a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  if (a1)
  {
    v10 = 35.0;
  }

  else
  {
    v10 = 40.0;
  }

  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a2;
  v21.size.height = a3;
  v11 = v10 + v10 + CGRectGetWidth(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = a2;
  v22.size.height = a3;
  Height = CGRectGetHeight(v22);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v14 = sub_1000302D0(v11 * a4);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10 + v10 + Height;
  v16 = sub_1000302D0(v15 * a4);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v17 = v16;
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v19 = CGBitmapContextCreate(0, v14, v17, 8uLL, AlignedBytesPerRow, DeviceGray, 7u);
  v20 = v19;
  if (v19)
  {
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v11;
    v23.size.height = v15;
    CGContextClearRect(v19, v23);
    CGContextTranslateCTM(v20, 0.0, v17);
    CGContextScaleCTM(v20, a4, -a4);
    CGContextTranslateCTM(v20, v10, v10);
  }
}

void sub_10002F478(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v132 = a4;
  v120 = a3;
  v128 = sub_100036DD8();
  v6 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 blackColor];
  v130 = v8;
  v11 = [v8 blackColor];
  v12 = v11;
  v13 = *(a1 + 16);
  if (!v13)
  {

    goto LABEL_80;
  }

  v14 = 0;
  v121 = a2 + 32;
  v122 = a1 + 32;
  v123 = *(a2 + 16);
  v126 = enum case for CGPathFillRule.winding(_:);
  v124 = (v6 + 8);
  v125 = (v6 + 104);
  v117 = v10;
  v118 = v11;
  v116 = v13;
  v119 = v9;
  while (1)
  {
    if (v14 == v123)
    {
      goto LABEL_87;
    }

    v15 = *(v122 + v14);
    v131 = v14;
    v16 = *(v121 + 8 * v14);
    v17 = v9;
    v18 = v9;
    v19 = v10;
    v20 = v10;
    v21 = v12;
    v22 = v12;
    sub_100006024(0, v15, v18, v20, v22, &v145, v16);
    v136 = v20;
    if (!v146)
    {

      goto LABEL_4;
    }

    v129 = v22;
    v151[0] = v145;
    v151[1] = v146;
    v152 = v147;
    v153 = v148;
    v154 = v149;
    v155 = v150;
    v23 = v132;
    v24 = sub_100003ACC(v151, 0, v132 & 1);
    if (v24)
    {
      break;
    }

LABEL_19:
    sub_10000FE6C(&v145);
LABEL_4:
    v12 = v21;
    v10 = v19;
    v9 = v17;
LABEL_5:
    v14 = v131 + 1;
    if (v131 + 1 == v13)
    {

LABEL_80:
      return;
    }
  }

  v25 = v24;
  v26 = sub_100003ACC(v151, 1, v23 & 1);
  v27 = v129;
  v137 = v26;
  if (!v26)
  {

    goto LABEL_19;
  }

  v28 = *(v25 + 16);
  v134 = v25;
  v135 = v18;
  v29 = v120;
  if (v28)
  {
    v30 = sub_10001534C(0);
    if (v31)
    {
      v32 = (*(v25 + 56) + 48 * v30);
      v34 = v32[1];
      v33 = v32[2];
      v156[0] = *v32;
      v156[1] = v34;
      v157 = v33;
      sub_100003E18(v156, &v142);
      sub_10002EB4C(v16);
      v36 = v35;
      v38 = v37;
      if (qword_10004AE18 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (*(off_10004B750 + 2) && (, sub_10001541C(v36, v38), v40 = v39, , (v40 & 1) != 0))
      {
      }

      else
      {
        v41 = v157;
        v42 = [*(&v156[0] + 1) CGPath];
        v43 = sub_10002EE08(v42, v132 & 1, 0.0, 0.0, *&v41, *(&v41 + 1));
        v44 = v43;
        if (v43)
        {
          v45 = [v43 imageWithRenderingMode:2];
        }

        else
        {
          v45 = 0;
        }

        swift_beginAccess();
        sub_10000E380(v45, v36, v38);
        swift_endAccess();
      }

      sub_100003E74(v156);
      v25 = v134;
      v18 = v135;
    }
  }

  v46 = 0;
  v133 = v16;
  v47 = v136;
  while (1)
  {
    v49 = *(&off_100045608 + v46 + 32);
    if (*(v25 + 16))
    {
      v50 = sub_10001534C(*(&off_100045608 + v46 + 32));
      if (v51)
      {
        break;
      }
    }

LABEL_54:
    if ((v29 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (!*(v137 + 16))
    {
      goto LABEL_29;
    }

    v84 = sub_10001534C(v49);
    if ((v85 & 1) == 0)
    {
      goto LABEL_29;
    }

    v86 = (*(v137 + 56) + 48 * v84);
    v88 = v86[1];
    v87 = v86[2];
    v142 = *v86;
    v143 = v88;
    v144 = v87;
    v140 = 0;
    v141 = 0xE000000000000000;
    v139 = v142;
    sub_100003E18(&v142, v138);
    sub_100037448();
    v162._countAndFlagsBits = 45;
    v162._object = 0xE100000000000000;
    sub_1000370B8(v162);
    LOBYTE(v138[0]) = BYTE2(v142);
    sub_100037448();
    v163._countAndFlagsBits = 45;
    v163._object = 0xE100000000000000;
    sub_1000370B8(v163);
    LOBYTE(v138[0]) = BYTE1(v142);
    sub_100037448();
    v164._countAndFlagsBits = 45;
    v164._object = 0xE100000000000000;
    sub_1000370B8(v164);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_84;
    }

    if (v16 <= -9.22337204e18)
    {
      goto LABEL_85;
    }

    if (v16 >= 9.22337204e18)
    {
      goto LABEL_86;
    }

    v138[0] = v133;
    v165._countAndFlagsBits = sub_100037538();
    sub_1000370B8(v165);

    v89 = v140;
    v90 = v141;
    if (qword_10004AE28 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_10004B760 + 2))
    {

      sub_10001541C(v89, v90);
      v92 = v91;

      if (v92)
      {
        sub_100003E74(&v142);

        goto LABEL_28;
      }
    }

    v93 = MobileGestalt_get_current_device();
    if (!v93)
    {
      goto LABEL_89;
    }

    v94 = v93;
    MobileGestalt_get_mainScreenScale();
    v96 = v95;

    v97 = v96;
    sub_10002F268(v132 & 1, *&v144, *(&v144 + 1), v97);
    if (!v98)
    {
      goto LABEL_72;
    }

    v99 = v98;
    v100 = [*(&v142 + 1) CGPath];
    CGContextAddPath(v99, v100);

    v101 = v130;
    v102 = [v130 redColor];
    v103 = [v102 CGColor];

    CGContextSetStrokeColorWithColor(v99, v103);
    v104 = [v101 clearColor];
    v105 = [v104 CGColor];

    CGContextSetFillColorWithColor(v99, v105);
    CGContextSetLineWidth(v99, *(&v143 + 1));
    CGContextDrawPath(v99, kCGPathFillStroke);
    Image = CGBitmapContextCreateImage(v99);
    if (!Image)
    {

LABEL_72:
      swift_beginAccess();
LABEL_73:
      v111 = sub_10001541C(v89, v90);
      v113 = v112;

      if (v113)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = off_10004B760;
        v140 = off_10004B760;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100017CEC();
          v115 = v140;
        }

        sub_100006E34(v111, v115);
        off_10004B760 = v115;
      }

      goto LABEL_27;
    }

    v107 = Image;
    v108 = [objc_allocWithZone(UIImage) initWithCGImage:Image scale:0 orientation:v97];
    v109 = [v108 _imageThatSuppressesAccessibilityHairlineThickening];

    if (!v109)
    {
      goto LABEL_72;
    }

    v110 = [v109 imageWithRenderingMode:2];

    swift_beginAccess();
    if (!v110)
    {
      goto LABEL_73;
    }

    v48 = swift_isUniquelyReferenced_nonNull_native();
    v140 = off_10004B760;
    sub_100016E98(v110, v89, v90, v48);

    off_10004B760 = v140;
LABEL_27:
    swift_endAccess();
    sub_100003E74(&v142);
LABEL_28:
    v18 = v135;
    v47 = v136;
    v25 = v134;
LABEL_29:
    if (++v46 == 3)
    {

      sub_10000FE6C(&v145);

      v12 = v118;
      v9 = v119;
      v13 = v116;
      v10 = v117;
      goto LABEL_5;
    }
  }

  v52 = (*(v25 + 56) + 48 * v50);
  v54 = v52[1];
  v53 = v52[2];
  v142 = *v52;
  v143 = v54;
  v144 = v53;
  v140 = 0;
  v141 = 0xE000000000000000;
  v139 = v142;
  sub_100003E18(&v142, v138);
  sub_100037448();
  v158._countAndFlagsBits = 45;
  v158._object = 0xE100000000000000;
  sub_1000370B8(v158);
  LOBYTE(v138[0]) = BYTE2(v142);
  sub_100037448();
  v159._countAndFlagsBits = 45;
  v159._object = 0xE100000000000000;
  sub_1000370B8(v159);
  LOBYTE(v138[0]) = BYTE1(v142);
  sub_100037448();
  v160._countAndFlagsBits = 45;
  v160._object = 0xE100000000000000;
  sub_1000370B8(v160);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v16 <= -9.22337204e18)
    {
      goto LABEL_82;
    }

    if (v16 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    v138[0] = v133;
    v161._countAndFlagsBits = sub_100037538();
    sub_1000370B8(v161);

    v55 = v140;
    v56 = v141;
    if (qword_10004AE20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (*(off_10004B758 + 2))
    {

      sub_10001541C(v55, v56);
      v58 = v57;

      if (v58)
      {
        sub_100003E74(&v142);

LABEL_53:
        v18 = v135;
        v47 = v136;
        v25 = v134;
        goto LABEL_54;
      }
    }

    v59 = MobileGestalt_get_current_device();
    if (!v59)
    {
      goto LABEL_88;
    }

    v60 = v59;
    v61 = v29;
    MobileGestalt_get_mainScreenScale();
    v63 = v62;

    v64 = v63;
    sub_10002F268(v132 & 1, *&v144, *(&v144 + 1), v64);
    if (v65)
    {
      v66 = v65;
      v67 = *(&v142 + 1);
      [*(&v142 + 1) setUsesEvenOddFillRule:0];
      v68 = [v67 CGPath];
      CGContextAddPath(v66, v68);

      v69 = [v130 blueColor];
      v70 = [v69 CGColor];

      CGContextSetFillColorWithColor(v66, v70);
      v72 = v127;
      v71 = v128;
      (*v125)(v127, v126, v128);
      sub_100037198();
      (*v124)(v72, v71);
      v73 = CGBitmapContextCreateImage(v66);
      if (v73)
      {
        v74 = v73;
        v75 = [objc_allocWithZone(UIImage) initWithCGImage:v73 scale:0 orientation:v64];
        v76 = [v75 _imageThatSuppressesAccessibilityHairlineThickening];

        if (v76)
        {
          v77 = [v76 imageWithRenderingMode:2];

          swift_beginAccess();
          v29 = v61;
          if (v77)
          {
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v140 = off_10004B758;
            sub_100016E98(v77, v55, v56, v78);

            off_10004B758 = v140;
LABEL_52:
            swift_endAccess();
            sub_100003E74(&v142);
            goto LABEL_53;
          }

LABEL_48:
          v79 = sub_10001541C(v55, v56);
          v81 = v80;

          if (v81)
          {
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v83 = off_10004B758;
            v140 = off_10004B758;
            if (!v82)
            {
              sub_100017CEC();
              v83 = v140;
            }

            sub_100006E34(v79, v83);
            off_10004B758 = v83;
          }

          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    swift_beginAccess();
    v29 = v61;
    goto LABEL_48;
  }

  __break(1u);
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
}