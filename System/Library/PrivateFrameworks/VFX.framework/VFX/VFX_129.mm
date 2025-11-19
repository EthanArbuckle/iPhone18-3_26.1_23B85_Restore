uint64_t sub_1AFAFD528(int a1)
{
  v3 = v2;
  v4 = v1;
  v179 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v170 = (&v158 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v186 = &v158 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v158 - v17;
  v187 = type metadata accessor for EmitterScript(0);
  v19 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187, v20);
  v178 = &v158 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v158 - v24;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v232 = qword_1ED73B840;
  v233 = 0;
  v234 = 2;
  v235 = 0;
  v236 = 2;
  v237 = 0;
  sub_1AF704984(1, &v206);
  v226 = v206;
  v227 = v207;
  v228 = v208;
  v229 = v209 | 1;
  v230 = v210;
  v231 = v211;
  sub_1AF6B06C0(v1[2], &v226, 0x200000000, v212);
  v165 = *&v212[0];
  if (!*&v212[0])
  {
    v147 = &qword_1ED723E40;
    v148 = &off_1F255B720;
    v149 = type metadata accessor for EmitterScript;
    v150 = sub_1AFB12B74;
    v151 = &v206;
LABEL_134:
    sub_1AFB12A64(v151, v147, v149, v148, v150);
    return MEMORY[0x1E69E7CC0];
  }

  v163 = *(&v212[2] + 1);
  v26 = *(&v213 + 1);
  v168 = *(&v214 + 1);
  v169 = v214;
  v216 = *(v212 + 8);
  v217 = *(&v212[1] + 8);
  if (v215 < 1)
  {
    sub_1AFB12A64(&v206, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
    v147 = &qword_1ED725EA0;
    v149 = &type metadata for QueryResult;
    v148 = MEMORY[0x1E69E6720];
    v150 = sub_1AFB12AC4;
    v151 = v212;
    goto LABEL_134;
  }

  if (!*(&v213 + 1))
  {
    v202 = v212[2];
    v203 = v213;
    v204 = v214;
    v205 = v215;
    v200 = v212[0];
    v201 = v212[1];
    sub_1AF5DD298(&v200, &v194);
    sub_1AFB12A64(&v206, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
    sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v155 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v155;
  }

  v161 = v19;
  v167 = v168[4];
  v166 = *(v169 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v202 = v212[2];
  v203 = v213;
  v204 = v214;
  v205 = v215;
  v200 = v212[0];
  v201 = v212[1];
  sub_1AF5DD298(&v200, &v194);
  v27 = 0;
  v177 = MEMORY[0x1E69E7CC0];
  v180 = v4;
  v171 = v8;
  v188 = v25;
  v189 = v18;
  v162 = v26;
  while (1)
  {
    v28 = (v163 + 48 * v27);
    v193 = *v28;
    v191 = v28[1];
    v29 = *(v28 + 3);
    v192 = *(v28 + 2);
    v31 = *(v28 + 4);
    v30 = *(v28 + 5);
    v164 = v27;
    if (v166)
    {
      v32 = *(v30 + 376);

      os_unfair_lock_lock(v32);
      os_unfair_lock_lock(*(v30 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v167);
    v33 = v168;
    v34 = *(v168 + 4);
    v224[0] = *(v168 + 3);
    v224[1] = v34;
    v225 = v168[10];
    v35 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;
    v33[6] = ecs_stack_allocator_allocate(v168[4], 48 * v35, 8);
    v33[7] = v35;
    v33[9] = 0;
    v33[10] = 0;
    v33[8] = 0;
    v36 = v192;
    v190 = v30;
    v37 = sub_1AF64B110(v187, &off_1F255B720, v192, v29, v31, v33);
    v38 = v37;
    if (!v36)
    {
      break;
    }

    if (v31)
    {
      v181 = *(v161 + 72);
      while (1)
      {
        v238 = v38;
        v41 = *v192++;
        v193 = v41;
        v42 = *(*v4 + 104);
        v43 = v42();
        v191 = v31;
        if (!v43)
        {
          break;
        }

        v44 = v190;
        v45 = sub_1AFDFEE28();

        if ((v45 & 1) == 0)
        {
          if ((v42)(v46) == 1)
          {
            goto LABEL_25;
          }

          v47 = sub_1AFDFEE28();

          if ((v47 & 1) == 0)
          {
            v49 = *v238;
            v50 = (v42)(v48);
            if (v49 <= 1)
            {
              if (v49)
              {
                v51 = 0xE600000000000000;
                v52 = 0x7070636A626FLL;
              }

              else
              {
                v51 = 0xE100000000000000;
                v52 = 99;
              }
            }

            else
            {
              if (v49 != 2)
              {
                v40 = v238;
                if (v49 == 3)
                {
                  v51 = 0xE500000000000000;
                  v52 = 0x7466697773;
                }

                else
                {
                  v51 = 0xE200000000000000;
                  v52 = 29546;
                }

                goto LABEL_38;
              }

              v51 = 0xE500000000000000;
              v52 = 0x6C6174656DLL;
            }

            v40 = v238;
LABEL_38:
            if (v50 <= 1u)
            {
              if (v50)
              {
                v56 = 0xE600000000000000;
                if (v52 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v56 = 0xE100000000000000;
                if (v52 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v50 == 2)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v50 == 3)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v56 = 0xE200000000000000;
              if (v52 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v51 != v56)
            {
LABEL_67:
              v92 = sub_1AFDFEE28();

              if ((v92 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v40 = v238;
        v53 = *v238;
        if (v53 > 1 || *v238)
        {
          v54 = sub_1AFDFEE28();

          if (v54)
          {
            goto LABEL_54;
          }

          if (v53 != 1)
          {
            v55 = sub_1AFDFEE28();

            if ((v55 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v40, v25, type metadata accessor for EmitterScript);
        v57 = v4[5];
        v184 = v4[6];
        v185 = v57;

        if (v44[184])
        {
          goto LABEL_141;
        }

        v59 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v44 + 21) + 4 * v193) + 8);
        v182 = *(*(v44 + 21) + 4 * v193);
        v183 = v59;

        v60 = v186;
        sub_1AFB12858(v40 + *(v187 + 32), v186);
        v61 = type metadata accessor for ScriptIndex();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (v63(v60, 1, v61) == 1)
        {
          v64 = v3;

          if (v44[184])
          {
            goto LABEL_141;
          }

          v66 = *(*(v44 + 21) + 4 * v193);
          v67 = *(*(v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66 + 8);

          v68 = v189;
          *v189 = v66;
          v68[1] = v67;
          swift_storeEnumTagMultiPayload();
          v69 = v186;
          v70 = v63(v186, 1, v61) == 1;
          v3 = v64;
          v71 = v69;
          v40 = v238;
          if (!v70)
          {
            sub_1AF687E28(v71);
          }
        }

        else
        {
          v68 = v189;
          sub_1AFB128EC(v60, v189);
        }

        (*(v62 + 56))(v68, 0, 1, v61);
        v25 = v188;
        v72 = sub_1AFAA7344(0, 0, &v194);
        if (v3)
        {
          sub_1AFB12B14(v25, type metadata accessor for EmitterScript);
          sub_1AF687E28(v68);
          if (v179)
          {
            goto LABEL_135;
          }

          v3 = 0;
          v4 = v180;
        }

        else
        {
          v172 = &v158;
          v74 = v182;
          v75 = v194;
          v76 = v195;
          v77 = v196;
          v173 = v197;
          v174 = v198;
          v175 = v199;
          MEMORY[0x1EEE9AC00](v72, v73);
          v79 = v184;
          v78 = v185;
          *(&v158 - 6) = v185;
          *(&v158 - 5) = v79;
          v80 = v183;
          *(&v158 - 8) = v81;
          *(&v158 - 7) = v80;
          *(&v158 - 3) = 0x72657474696D65;
          v156 = 0xE700000000000000;
          v157 = v189;
          v176 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v158 - 8), v75);
          v182 = 0;
          v82 = sub_1AFAF8B58(v76, v77, v78, v79, v74 | (v80 << 32), 0x72657474696D65uLL, 0xE700000000000000, v189);
          v84 = v83;
          v25 = v188;

          sub_1AFB12B14(v25, type metadata accessor for EmitterScript);
          sub_1AF687E28(v189);

          v85 = sub_1AF6496EC(v193);

          v86 = sub_1AFAB9FCC(v85);
          v88 = v87;
          v89 = v177;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v89 = sub_1AF425C8C(0, *(v89 + 2) + 1, 1, v89);
          }

          v91 = *(v89 + 2);
          v90 = *(v89 + 3);
          if (v91 >= v90 >> 1)
          {
            v89 = sub_1AF425C8C(v90 > 1, v91 + 1, 1, v89);
          }

          *(v89 + 2) = v91 + 1;
          v177 = v89;
          v39 = &v89[40 * v91];
          *(v39 + 4) = v176;
          *(v39 + 5) = v82;
          *(v39 + 6) = v84;
          *(v39 + 7) = v86;
          *(v39 + 8) = v88;
          v3 = v182;
          v4 = v180;
          v40 = v238;
        }

LABEL_15:
        v38 = (v40 + v181);
        v31 = v191 - 1;
        if (v191 == 1)
        {
          goto LABEL_70;
        }
      }

      v44 = v190;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v218 = v165;
    v219 = v216;
    v220 = v217;
    sub_1AF630994(v168, &v218, v224);
    v94 = v190;
    sub_1AF62D29C(v190);
    ecs_stack_allocator_pop_snapshot(v167);
    if (v166)
    {
      os_unfair_lock_unlock(*(v94 + 43));
      os_unfair_lock_unlock(*(v94 + 47));
    }

    v27 = v164 + 1;
    if (v164 + 1 == v162)
    {
      sub_1AFB12A64(&v206, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);
      sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v155 = v177;
      goto LABEL_139;
    }
  }

  v93 = v193;
  if (v193 == v191)
  {
    goto LABEL_70;
  }

  v95 = *(v161 + 72);
  v176 = v191 - 1;
  v238 = v37;
  v185 = v95;
  while (2)
  {
    v96 = &v38[v95 * v93];
    v192 = v93;
    while (2)
    {
      v193 = v96;
      v97 = *(*v4 + 104);
      if (!v97())
      {
        goto LABEL_83;
      }

      v98 = sub_1AFDFEE28();

      if (v98)
      {
        break;
      }

      if ((v97)(v99) == 1)
      {
LABEL_83:

        break;
      }

      v100 = sub_1AFDFEE28();

      if ((v100 & 1) == 0)
      {
        v102 = *v193;
        v103 = (v97)(v101);
        if (v102 <= 1)
        {
          if (v102)
          {
            v105 = 0xE600000000000000;
            v106 = 0x7070636A626FLL;
          }

          else
          {
            v105 = 0xE100000000000000;
            v106 = 99;
          }
        }

        else
        {
          if (v102 != 2)
          {
            v104 = v190;
            if (v102 == 3)
            {
              v105 = 0xE500000000000000;
              v106 = 0x7466697773;
            }

            else
            {
              v105 = 0xE200000000000000;
              v106 = 29546;
            }

LABEL_97:
            if (v103 <= 1u)
            {
              if (v103)
              {
                v110 = 0xE600000000000000;
                if (v106 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v110 = 0xE100000000000000;
              if (v106 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v103 == 2)
            {
              v110 = 0xE500000000000000;
              if (v106 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v103 == 3)
              {
                v110 = 0xE500000000000000;
                if (v106 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v105 != v110)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v110 = 0xE200000000000000;
              if (v106 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v127 = sub_1AFDFEE28();

            if (v127)
            {
              goto LABEL_113;
            }

LABEL_74:
            v96 = v193 + v185;
            v192 = (v192 + 1);
            if (v191 == v192)
            {
              goto LABEL_70;
            }

            continue;
          }

          v105 = 0xE500000000000000;
          v106 = 0x6C6174656DLL;
        }

        v104 = v190;
        goto LABEL_97;
      }

      break;
    }

    v107 = *v193;
    if (v107 <= 1)
    {
      v104 = v190;
      if (!*v193)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v104 = v190;
    }

    v108 = sub_1AFDFEE28();

    if ((v108 & 1) == 0)
    {
      if (v107 == 1)
      {
        goto LABEL_112;
      }

      v109 = sub_1AFDFEE28();

      if ((v109 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v111 = v193;
    sub_1AFB12BD8(v193, v178, type metadata accessor for EmitterScript);
    v112 = v4[5];
    v183 = v4[6];
    v184 = v112;

    if (v104[184])
    {
      goto LABEL_141;
    }

    v114 = *(*(v113 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v104 + 21) + 4 * v192) + 8);
    v181 = *(*(v104 + 21) + 4 * v192);
    v182 = v114;

    v115 = v171;
    sub_1AFB12858(v111 + *(v187 + 32), v171);
    v116 = type metadata accessor for ScriptIndex();
    v117 = *(v116 - 8);
    v118 = *(v117 + 48);
    if (v118(v115, 1, v116) == 1)
    {

      if (v104[184])
      {
LABEL_141:
        LODWORD(v157) = 0;
        v156 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v120 = *(*(v104 + 21) + 4 * v192);
      v121 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

      v122 = v170;
      *v170 = v120;
      v122[1] = v121;
      swift_storeEnumTagMultiPayload();
      v123 = v118(v171, 1, v116);
      v4 = v180;
      if (v123 != 1)
      {
        sub_1AF687E28(v171);
      }
    }

    else
    {
      v122 = v170;
      sub_1AFB128EC(v115, v170);
    }

    (*(v117 + 56))(v122, 0, 1, v116);
    v124 = v178;
    v125 = sub_1AFAA7344(0, 0, &v194);
    if (!v3)
    {
      v160 = &v158;
      v172 = v181;
      v159 = v195;
      v128 = v196;
      v173 = v197;
      v174 = v198;
      v175 = v199;
      MEMORY[0x1EEE9AC00](v125, v126);
      v130 = v183;
      v129 = v184;
      *(&v158 - 6) = v184;
      *(&v158 - 5) = v130;
      v131 = v182;
      *(&v158 - 8) = v132;
      *(&v158 - 7) = v131;
      *(&v158 - 3) = 0x72657474696D65;
      v156 = 0xE700000000000000;
      v157 = v122;
      v193 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v158 - 8), v133);
      v134 = sub_1AFAF8B58(v159, v128, v129, v130, v172 | (v131 << 32), 0x72657474696D65uLL, 0xE700000000000000, v122);
      v136 = v135;

      sub_1AFB12B14(v124, type metadata accessor for EmitterScript);
      sub_1AF687E28(v122);

      v137 = sub_1AF6496EC(v192);

      v138 = sub_1AFAB9FCC(v137);
      v140 = v139;
      v141 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_1AF425C8C(0, *(v141 + 2) + 1, 1, v141);
      }

      v143 = *(v141 + 2);
      v142 = *(v141 + 3);
      if (v143 >= v142 >> 1)
      {
        v177 = sub_1AF425C8C(v142 > 1, v143 + 1, 1, v141);
      }

      else
      {
        v177 = v141;
      }

      v144 = v192;
      v93 = (v192 + 1);
      v145 = v177;
      *(v177 + 2) = v143 + 1;
      v146 = &v145[40 * v143];
      *(v146 + 4) = v193;
      *(v146 + 5) = v134;
      *(v146 + 6) = v136;
      *(v146 + 7) = v138;
      *(v146 + 8) = v140;
      v70 = v176 == v144;
      v3 = 0;
      v4 = v180;
      v25 = v188;
      v38 = v238;
      v95 = v185;
      if (v70)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v124, type metadata accessor for EmitterScript);
  sub_1AF687E28(v122);
  if ((v179 & 1) == 0)
  {

    v3 = 0;
    v25 = v188;
    goto LABEL_74;
  }

LABEL_135:
  v153 = v190;
  swift_willThrow();
  v221 = v165;
  v222 = v216;
  v223 = v217;
  sub_1AF630994(v168, &v221, v224);
  sub_1AF62D29C(v153);
  ecs_stack_allocator_pop_snapshot(v167);
  if (v166)
  {
    os_unfair_lock_unlock(*(v153 + 43));
    os_unfair_lock_unlock(*(v153 + 47));
  }

  sub_1AFB12A64(&v206, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFB12B74);

  v154 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v212, &qword_1ED725EA0, &type metadata for QueryResult, v154, sub_1AFB12AC4);
}

uint64_t sub_1AFAFEDB4(int a1)
{
  v3 = v2;
  v4 = v1;
  v177 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v167 = (&v156 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v184 = &v156 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v156 - v17;
  inited = type metadata accessor for ParticleInitScript(0);
  v19 = *(inited - 8);
  MEMORY[0x1EEE9AC00](inited, v20);
  v176 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v156 - v24;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v230 = qword_1ED73B840;
  v231 = 0;
  v232 = 2;
  v233 = 0;
  v234 = 2;
  v235 = 0;
  sub_1AF703D7C(1, &v204);
  v224 = v204;
  v225 = v205;
  v226 = v206;
  v227 = v207 | 1;
  v228 = v208;
  v229 = v209;
  sub_1AF6B06C0(v1[2], &v224, 0x200000000, v210);
  v162 = *&v210[0];
  if (!*&v210[0])
  {
    v145 = &qword_1ED723D28;
    v146 = &off_1F255B9C0;
    v147 = type metadata accessor for ParticleInitScript;
    v148 = sub_1AFB12B74;
    v149 = &v204;
LABEL_134:
    sub_1AFB12A64(v149, v145, v147, v146, v148);
    return MEMORY[0x1E69E7CC0];
  }

  v160 = *(&v210[2] + 1);
  v26 = *(&v211 + 1);
  v165 = *(&v212 + 1);
  v166 = v212;
  v214 = *(v210 + 8);
  v215 = *(&v210[1] + 8);
  if (v213 < 1)
  {
    sub_1AFB12A64(&v204, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
    v145 = &qword_1ED725EA0;
    v147 = &type metadata for QueryResult;
    v146 = MEMORY[0x1E69E6720];
    v148 = sub_1AFB12AC4;
    v149 = v210;
    goto LABEL_134;
  }

  if (!*(&v211 + 1))
  {
    v200 = v210[2];
    v201 = v211;
    v202 = v212;
    v203 = v213;
    v198 = v210[0];
    v199 = v210[1];
    sub_1AF5DD298(&v198, &v192);
    sub_1AFB12A64(&v204, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
    sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v153 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v153;
  }

  v158 = v19;
  v164 = *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v163 = v165[4];
  v200 = v210[2];
  v201 = v211;
  v202 = v212;
  v203 = v213;
  v198 = v210[0];
  v199 = v210[1];
  sub_1AF5DD298(&v198, &v192);
  v27 = 0;
  v175 = MEMORY[0x1E69E7CC0];
  v178 = v4;
  v168 = v8;
  v186 = v25;
  v187 = v18;
  v159 = v26;
  while (1)
  {
    v28 = (v160 + 48 * v27);
    v191 = *v28;
    v189 = v28[1];
    v29 = *(v28 + 3);
    v190 = *(v28 + 2);
    v31 = *(v28 + 4);
    v30 = *(v28 + 5);
    v161 = v27;
    if (v164)
    {
      v32 = *(v30 + 376);

      os_unfair_lock_lock(v32);
      os_unfair_lock_lock(*(v30 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v163);
    v33 = v165;
    v34 = *(v165 + 4);
    v222[0] = *(v165 + 3);
    v222[1] = v34;
    v223 = v165[10];
    v35 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;
    v33[6] = ecs_stack_allocator_allocate(v165[4], 48 * v35, 8);
    v33[7] = v35;
    v33[9] = 0;
    v33[10] = 0;
    v33[8] = 0;
    v36 = v190;
    v188 = v30;
    v37 = sub_1AF64B110(inited, &off_1F255B9C0, v190, v29, v31, v33);
    v38 = v37;
    if (!v36)
    {
      break;
    }

    if (v31)
    {
      v179 = *(v158 + 72);
      while (1)
      {
        v236 = v38;
        v41 = *v190++;
        v191 = v41;
        v42 = *(*v4 + 104);
        v43 = v42();
        v189 = v31;
        if (!v43)
        {
          break;
        }

        v44 = v188;
        v45 = sub_1AFDFEE28();

        if ((v45 & 1) == 0)
        {
          if ((v42)(v46) == 1)
          {
            goto LABEL_25;
          }

          v47 = sub_1AFDFEE28();

          if ((v47 & 1) == 0)
          {
            v49 = *v236;
            v50 = (v42)(v48);
            if (v49 <= 1)
            {
              if (v49)
              {
                v51 = 0xE600000000000000;
                v52 = 0x7070636A626FLL;
              }

              else
              {
                v51 = 0xE100000000000000;
                v52 = 99;
              }
            }

            else
            {
              if (v49 != 2)
              {
                v40 = v236;
                if (v49 == 3)
                {
                  v51 = 0xE500000000000000;
                  v52 = 0x7466697773;
                }

                else
                {
                  v51 = 0xE200000000000000;
                  v52 = 29546;
                }

                goto LABEL_38;
              }

              v51 = 0xE500000000000000;
              v52 = 0x6C6174656DLL;
            }

            v40 = v236;
LABEL_38:
            if (v50 <= 1u)
            {
              if (v50)
              {
                v56 = 0xE600000000000000;
                if (v52 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v56 = 0xE100000000000000;
                if (v52 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v50 == 2)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v50 == 3)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v56 = 0xE200000000000000;
              if (v52 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v51 != v56)
            {
LABEL_67:
              v91 = sub_1AFDFEE28();

              if ((v91 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v40 = v236;
        v53 = *v236;
        if (v53 > 1 || *v236)
        {
          v54 = sub_1AFDFEE28();

          if (v54)
          {
            goto LABEL_54;
          }

          if (v53 != 1)
          {
            v55 = sub_1AFDFEE28();

            if ((v55 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v40, v25, type metadata accessor for ParticleInitScript);
        v57 = v4[5];
        v182 = v4[6];
        v183 = v57;

        if (v44[184])
        {
          goto LABEL_141;
        }

        v59 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v44 + 21) + 4 * v191) + 8);
        v180 = *(*(v44 + 21) + 4 * v191);
        v181 = v59;

        v60 = v184;
        sub_1AFB12858(v40 + *(inited + 40), v184);
        v61 = type metadata accessor for ScriptIndex();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (v63(v60, 1, v61) == 1)
        {
          v64 = v3;

          if (v44[184])
          {
            goto LABEL_141;
          }

          v66 = *(*(v44 + 21) + 4 * v191);
          v67 = *(*(v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66 + 8);

          v68 = v187;
          *v187 = v66;
          v68[1] = v67;
          swift_storeEnumTagMultiPayload();
          v69 = v184;
          v70 = v63(v184, 1, v61) == 1;
          v3 = v64;
          v71 = v69;
          v40 = v236;
          if (!v70)
          {
            sub_1AF687E28(v71);
          }
        }

        else
        {
          v68 = v187;
          sub_1AFB128EC(v60, v187);
        }

        (*(v62 + 56))(v68, 0, 1, v61);
        v25 = v186;
        v72 = sub_1AFAA2CD8(0, 0, &v192);
        if (v3)
        {
          sub_1AFB12B14(v25, type metadata accessor for ParticleInitScript);
          sub_1AF687E28(v68);
          if (v177)
          {
            goto LABEL_135;
          }

          v3 = 0;
          v4 = v178;
        }

        else
        {
          v169 = &v156;
          v170 = v180;
          v74 = v192;
          v75 = v193;
          v76 = v194;
          v171 = v195;
          v172 = v196;
          v173 = v197;
          MEMORY[0x1EEE9AC00](v72, v73);
          v77 = v182;
          v78 = v183;
          *(&v156 - 6) = v183;
          *(&v156 - 5) = v77;
          v79 = v181;
          *(&v156 - 8) = v80;
          *(&v156 - 7) = v79;
          *(&v156 - 3) = 0x656C636974726170;
          v154 = 0xEC00000074696E49;
          v155 = v187;
          v174 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v156 - 8), v74);
          v180 = 0;
          v81 = sub_1AFAF8B58(v75, v76, v78, v77, v170 | (v79 << 32), 0x656C636974726170uLL, 0xEC00000074696E49, v187);
          v83 = v82;
          v25 = v186;

          sub_1AFB12B14(v25, type metadata accessor for ParticleInitScript);
          sub_1AF687E28(v187);

          v84 = sub_1AF6496EC(v191);

          v85 = sub_1AFABA1FC(v84);
          v87 = v86;
          v88 = v175;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1AF425C8C(0, *(v88 + 2) + 1, 1, v88);
          }

          v90 = *(v88 + 2);
          v89 = *(v88 + 3);
          if (v90 >= v89 >> 1)
          {
            v88 = sub_1AF425C8C(v89 > 1, v90 + 1, 1, v88);
          }

          *(v88 + 2) = v90 + 1;
          v175 = v88;
          v39 = &v88[40 * v90];
          *(v39 + 4) = v174;
          *(v39 + 5) = v81;
          *(v39 + 6) = v83;
          *(v39 + 7) = v85;
          *(v39 + 8) = v87;
          v3 = v180;
          v4 = v178;
          v40 = v236;
        }

LABEL_15:
        v38 = (v40 + v179);
        v31 = v189 - 1;
        if (v189 == 1)
        {
          goto LABEL_70;
        }
      }

      v44 = v188;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v216 = v162;
    v217 = v214;
    v218 = v215;
    sub_1AF630994(v165, &v216, v222);
    v93 = v188;
    sub_1AF62D29C(v188);
    ecs_stack_allocator_pop_snapshot(v163);
    if (v164)
    {
      os_unfair_lock_unlock(*(v93 + 43));
      os_unfair_lock_unlock(*(v93 + 47));
    }

    v27 = v161 + 1;
    if (v161 + 1 == v159)
    {
      sub_1AFB12A64(&v204, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);
      sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v153 = v175;
      goto LABEL_139;
    }
  }

  v92 = v191;
  if (v191 == v189)
  {
    goto LABEL_70;
  }

  v94 = *(v158 + 72);
  v174 = v189 - 1;
  v236 = v37;
  v183 = v94;
  while (2)
  {
    v95 = &v38[v94 * v92];
    v190 = v92;
    while (2)
    {
      v191 = v95;
      v96 = *(*v4 + 104);
      if (!v96())
      {
        goto LABEL_83;
      }

      v97 = sub_1AFDFEE28();

      if (v97)
      {
        break;
      }

      if ((v96)(v98) == 1)
      {
LABEL_83:

        break;
      }

      v99 = sub_1AFDFEE28();

      if ((v99 & 1) == 0)
      {
        v101 = *v191;
        v102 = (v96)(v100);
        if (v101 <= 1)
        {
          if (v101)
          {
            v104 = 0xE600000000000000;
            v105 = 0x7070636A626FLL;
          }

          else
          {
            v104 = 0xE100000000000000;
            v105 = 99;
          }
        }

        else
        {
          if (v101 != 2)
          {
            v103 = v188;
            if (v101 == 3)
            {
              v104 = 0xE500000000000000;
              v105 = 0x7466697773;
            }

            else
            {
              v104 = 0xE200000000000000;
              v105 = 29546;
            }

LABEL_97:
            if (v102 <= 1u)
            {
              if (v102)
              {
                v109 = 0xE600000000000000;
                if (v105 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v109 = 0xE100000000000000;
              if (v105 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v102 == 2)
            {
              v109 = 0xE500000000000000;
              if (v105 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v102 == 3)
              {
                v109 = 0xE500000000000000;
                if (v105 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v104 != v109)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v109 = 0xE200000000000000;
              if (v105 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v126 = sub_1AFDFEE28();

            if (v126)
            {
              goto LABEL_113;
            }

LABEL_74:
            v95 = v191 + v183;
            v190 = (v190 + 1);
            if (v189 == v190)
            {
              goto LABEL_70;
            }

            continue;
          }

          v104 = 0xE500000000000000;
          v105 = 0x6C6174656DLL;
        }

        v103 = v188;
        goto LABEL_97;
      }

      break;
    }

    v106 = *v191;
    if (v106 <= 1)
    {
      v103 = v188;
      if (!*v191)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v103 = v188;
    }

    v107 = sub_1AFDFEE28();

    if ((v107 & 1) == 0)
    {
      if (v106 == 1)
      {
        goto LABEL_112;
      }

      v108 = sub_1AFDFEE28();

      if ((v108 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v110 = v191;
    sub_1AFB12BD8(v191, v176, type metadata accessor for ParticleInitScript);
    v111 = v4[5];
    v181 = v4[6];
    v182 = v111;

    if (v103[184])
    {
      goto LABEL_141;
    }

    v113 = *(*(v112 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v103 + 21) + 4 * v190) + 8);
    v179 = *(*(v103 + 21) + 4 * v190);
    v180 = v113;

    v114 = v168;
    sub_1AFB12858(v110 + *(inited + 40), v168);
    v115 = type metadata accessor for ScriptIndex();
    v116 = *(v115 - 8);
    v117 = *(v116 + 48);
    if (v117(v114, 1, v115) == 1)
    {

      if (v103[184])
      {
LABEL_141:
        LODWORD(v155) = 0;
        v154 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v119 = *(*(v103 + 21) + 4 * v190);
      v120 = *(*(v118 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

      v121 = v167;
      *v167 = v119;
      v121[1] = v120;
      swift_storeEnumTagMultiPayload();
      v122 = v117(v168, 1, v115);
      v4 = v178;
      if (v122 != 1)
      {
        sub_1AF687E28(v168);
      }
    }

    else
    {
      v121 = v167;
      sub_1AFB128EC(v114, v167);
    }

    (*(v116 + 56))(v121, 0, 1, v115);
    v123 = v176;
    v124 = sub_1AFAA2CD8(0, 0, &v192);
    if (!v3)
    {
      v169 = &v156;
      v170 = v179;
      v156 = v194;
      v157 = v193;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      MEMORY[0x1EEE9AC00](v124, v125);
      v128 = v181;
      v127 = v182;
      *(&v156 - 6) = v182;
      *(&v156 - 5) = v128;
      v129 = v180;
      *(&v156 - 8) = v130;
      *(&v156 - 7) = v129;
      *(&v156 - 3) = 0x656C636974726170;
      v154 = 0xEC00000074696E49;
      v155 = v121;
      v191 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v156 - 8), v131);
      v182 = sub_1AFAF8B58(v157, v156, v127, v128, v170 | (v129 << 32), 0x656C636974726170uLL, 0xEC00000074696E49, v121);
      v133 = v132;

      sub_1AFB12B14(v123, type metadata accessor for ParticleInitScript);
      sub_1AF687E28(v121);

      v134 = sub_1AF6496EC(v190);

      v135 = sub_1AFABA1FC(v134);
      v137 = v136;
      v138 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1AF425C8C(0, *(v138 + 2) + 1, 1, v138);
      }

      v140 = *(v138 + 2);
      v139 = *(v138 + 3);
      if (v140 >= v139 >> 1)
      {
        v175 = sub_1AF425C8C(v139 > 1, v140 + 1, 1, v138);
      }

      else
      {
        v175 = v138;
      }

      v141 = v190;
      v92 = (v190 + 1);
      v142 = v175;
      *(v175 + 2) = v140 + 1;
      v143 = &v142[40 * v140];
      v144 = v182;
      *(v143 + 4) = v191;
      *(v143 + 5) = v144;
      *(v143 + 6) = v133;
      *(v143 + 7) = v135;
      *(v143 + 8) = v137;
      v70 = v174 == v141;
      v3 = 0;
      v4 = v178;
      v25 = v186;
      v38 = v236;
      v94 = v183;
      if (v70)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v123, type metadata accessor for ParticleInitScript);
  sub_1AF687E28(v121);
  if ((v177 & 1) == 0)
  {

    v3 = 0;
    v25 = v186;
    goto LABEL_74;
  }

LABEL_135:
  v151 = v188;
  swift_willThrow();
  v219 = v162;
  v220 = v214;
  v221 = v215;
  sub_1AF630994(v165, &v219, v222);
  sub_1AF62D29C(v151);
  ecs_stack_allocator_pop_snapshot(v163);
  if (v164)
  {
    os_unfair_lock_unlock(*(v151 + 43));
    os_unfair_lock_unlock(*(v151 + 47));
  }

  sub_1AFB12A64(&v204, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFB12B74);

  v152 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, v152, sub_1AFB12AC4);
}

uint64_t sub_1AFB00664(int a1)
{
  v3 = v2;
  v4 = v1;
  v177 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v167 = (&v156 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v184 = &v156 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v156 - v17;
  updated = type metadata accessor for ParticleUpdateScript(0);
  v19 = *(updated - 8);
  MEMORY[0x1EEE9AC00](updated, v20);
  v176 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v156 - v24;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v230 = qword_1ED73B840;
  v231 = 0;
  v232 = 2;
  v233 = 0;
  v234 = 2;
  v235 = 0;
  sub_1AF703D5C(1, &v204);
  v224 = v204;
  v225 = v205;
  v226 = v206;
  v227 = v207 | 1;
  v228 = v208;
  v229 = v209;
  sub_1AF6B06C0(v1[2], &v224, 0x200000000, v210);
  v162 = *&v210[0];
  if (!*&v210[0])
  {
    v145 = &qword_1ED723CF0;
    v146 = &off_1F255BAD0;
    v147 = type metadata accessor for ParticleUpdateScript;
    v148 = sub_1AFB12B74;
    v149 = &v204;
LABEL_134:
    sub_1AFB12A64(v149, v145, v147, v146, v148);
    return MEMORY[0x1E69E7CC0];
  }

  v160 = *(&v210[2] + 1);
  v26 = *(&v211 + 1);
  v165 = *(&v212 + 1);
  v166 = v212;
  v214 = *(v210 + 8);
  v215 = *(&v210[1] + 8);
  if (v213 < 1)
  {
    sub_1AFB12A64(&v204, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
    v145 = &qword_1ED725EA0;
    v147 = &type metadata for QueryResult;
    v146 = MEMORY[0x1E69E6720];
    v148 = sub_1AFB12AC4;
    v149 = v210;
    goto LABEL_134;
  }

  if (!*(&v211 + 1))
  {
    v200 = v210[2];
    v201 = v211;
    v202 = v212;
    v203 = v213;
    v198 = v210[0];
    v199 = v210[1];
    sub_1AF5DD298(&v198, &v192);
    sub_1AFB12A64(&v204, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
    sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v153 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v153;
  }

  v158 = v19;
  v164 = *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v163 = v165[4];
  v200 = v210[2];
  v201 = v211;
  v202 = v212;
  v203 = v213;
  v198 = v210[0];
  v199 = v210[1];
  sub_1AF5DD298(&v198, &v192);
  v27 = 0;
  v175 = MEMORY[0x1E69E7CC0];
  v178 = v4;
  v168 = v8;
  v186 = v25;
  v187 = v18;
  v159 = v26;
  while (1)
  {
    v28 = (v160 + 48 * v27);
    v191 = *v28;
    v189 = v28[1];
    v29 = *(v28 + 3);
    v190 = *(v28 + 2);
    v31 = *(v28 + 4);
    v30 = *(v28 + 5);
    v161 = v27;
    if (v164)
    {
      v32 = *(v30 + 376);

      os_unfair_lock_lock(v32);
      os_unfair_lock_lock(*(v30 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v163);
    v33 = v165;
    v34 = *(v165 + 4);
    v222[0] = *(v165 + 3);
    v222[1] = v34;
    v223 = v165[10];
    v35 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;
    v33[6] = ecs_stack_allocator_allocate(v165[4], 48 * v35, 8);
    v33[7] = v35;
    v33[9] = 0;
    v33[10] = 0;
    v33[8] = 0;
    v36 = v190;
    v188 = v30;
    v37 = sub_1AF64B110(updated, &off_1F255BAD0, v190, v29, v31, v33);
    v38 = v37;
    if (!v36)
    {
      break;
    }

    if (v31)
    {
      v179 = *(v158 + 72);
      while (1)
      {
        v236 = v38;
        v41 = *v190++;
        v191 = v41;
        v42 = *(*v4 + 104);
        v43 = v42();
        v189 = v31;
        if (!v43)
        {
          break;
        }

        v44 = v188;
        v45 = sub_1AFDFEE28();

        if ((v45 & 1) == 0)
        {
          if ((v42)(v46) == 1)
          {
            goto LABEL_25;
          }

          v47 = sub_1AFDFEE28();

          if ((v47 & 1) == 0)
          {
            v49 = *(v236 + 24);
            v50 = (v42)(v48);
            if (v49 <= 1)
            {
              if (v49)
              {
                v51 = 0xE600000000000000;
                v52 = 0x7070636A626FLL;
              }

              else
              {
                v51 = 0xE100000000000000;
                v52 = 99;
              }
            }

            else
            {
              if (v49 != 2)
              {
                v40 = v236;
                if (v49 == 3)
                {
                  v51 = 0xE500000000000000;
                  v52 = 0x7466697773;
                }

                else
                {
                  v51 = 0xE200000000000000;
                  v52 = 29546;
                }

                goto LABEL_38;
              }

              v51 = 0xE500000000000000;
              v52 = 0x6C6174656DLL;
            }

            v40 = v236;
LABEL_38:
            if (v50 <= 1u)
            {
              if (v50)
              {
                v56 = 0xE600000000000000;
                if (v52 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v56 = 0xE100000000000000;
                if (v52 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v50 == 2)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v50 == 3)
            {
              v56 = 0xE500000000000000;
              if (v52 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v56 = 0xE200000000000000;
              if (v52 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v51 != v56)
            {
LABEL_67:
              v91 = sub_1AFDFEE28();

              if ((v91 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v40 = v236;
        v53 = *(v236 + 24);
        if (v53 > 1 || *(v236 + 24))
        {
          v54 = sub_1AFDFEE28();

          if (v54)
          {
            goto LABEL_54;
          }

          if (v53 != 1)
          {
            v55 = sub_1AFDFEE28();

            if ((v55 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v40, v25, type metadata accessor for ParticleUpdateScript);
        v57 = v4[5];
        v182 = v4[6];
        v183 = v57;

        if (v44[184])
        {
          goto LABEL_141;
        }

        v59 = *(*(v58 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v44 + 21) + 4 * v191) + 8);
        v180 = *(*(v44 + 21) + 4 * v191);
        v181 = v59;

        v60 = v184;
        sub_1AFB12858(v40 + *(updated + 40), v184);
        v61 = type metadata accessor for ScriptIndex();
        v62 = *(v61 - 8);
        v63 = *(v62 + 48);
        if (v63(v60, 1, v61) == 1)
        {
          v64 = v3;

          if (v44[184])
          {
            goto LABEL_141;
          }

          v66 = *(*(v44 + 21) + 4 * v191);
          v67 = *(*(v65 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v66 + 8);

          v68 = v187;
          *v187 = v66;
          v68[1] = v67;
          swift_storeEnumTagMultiPayload();
          v69 = v184;
          v70 = v63(v184, 1, v61) == 1;
          v3 = v64;
          v71 = v69;
          v40 = v236;
          if (!v70)
          {
            sub_1AF687E28(v71);
          }
        }

        else
        {
          v68 = v187;
          sub_1AFB128EC(v60, v187);
        }

        (*(v62 + 56))(v68, 0, 1, v61);
        v25 = v186;
        v72 = sub_1AFAA3C54(0, 0, &v192);
        if (v3)
        {
          sub_1AFB12B14(v25, type metadata accessor for ParticleUpdateScript);
          sub_1AF687E28(v68);
          if (v177)
          {
            goto LABEL_135;
          }

          v3 = 0;
          v4 = v178;
        }

        else
        {
          v169 = &v156;
          v170 = v180;
          v74 = v192;
          v75 = v193;
          v76 = v194;
          v171 = v195;
          v172 = v196;
          v173 = v197;
          MEMORY[0x1EEE9AC00](v72, v73);
          v77 = v182;
          v78 = v183;
          *(&v156 - 6) = v183;
          *(&v156 - 5) = v77;
          v79 = v181;
          *(&v156 - 8) = v80;
          *(&v156 - 7) = v79;
          *(&v156 - 3) = 0x656C636974726170;
          v154 = 0xEE00657461647055;
          v155 = v187;
          v174 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v156 - 8), v74);
          v180 = 0;
          v81 = sub_1AFAF8B58(v75, v76, v78, v77, v170 | (v79 << 32), 0x656C636974726170uLL, 0xEE00657461647055, v187);
          v83 = v82;
          v25 = v186;

          sub_1AFB12B14(v25, type metadata accessor for ParticleUpdateScript);
          sub_1AF687E28(v187);

          v84 = sub_1AF6496EC(v191);

          v85 = sub_1AFABA30C(v84);
          v87 = v86;
          v88 = v175;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1AF425C8C(0, *(v88 + 2) + 1, 1, v88);
          }

          v90 = *(v88 + 2);
          v89 = *(v88 + 3);
          if (v90 >= v89 >> 1)
          {
            v88 = sub_1AF425C8C(v89 > 1, v90 + 1, 1, v88);
          }

          *(v88 + 2) = v90 + 1;
          v175 = v88;
          v39 = &v88[40 * v90];
          *(v39 + 4) = v174;
          *(v39 + 5) = v81;
          *(v39 + 6) = v83;
          *(v39 + 7) = v85;
          *(v39 + 8) = v87;
          v3 = v180;
          v4 = v178;
          v40 = v236;
        }

LABEL_15:
        v38 = v40 + v179;
        v31 = v189 - 1;
        if (v189 == 1)
        {
          goto LABEL_70;
        }
      }

      v44 = v188;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v216 = v162;
    v217 = v214;
    v218 = v215;
    sub_1AF630994(v165, &v216, v222);
    v93 = v188;
    sub_1AF62D29C(v188);
    ecs_stack_allocator_pop_snapshot(v163);
    if (v164)
    {
      os_unfair_lock_unlock(*(v93 + 43));
      os_unfair_lock_unlock(*(v93 + 47));
    }

    v27 = v161 + 1;
    if (v161 + 1 == v159)
    {
      sub_1AFB12A64(&v204, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);
      sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v153 = v175;
      goto LABEL_139;
    }
  }

  v92 = v191;
  if (v191 == v189)
  {
    goto LABEL_70;
  }

  v94 = *(v158 + 72);
  v174 = v189 - 1;
  v236 = v37;
  v183 = v94;
  while (2)
  {
    v95 = v38 + v94 * v92;
    v190 = v92;
    while (2)
    {
      v191 = v95;
      v96 = *(*v4 + 104);
      if (!v96())
      {
        goto LABEL_83;
      }

      v97 = sub_1AFDFEE28();

      if (v97)
      {
        break;
      }

      if ((v96)(v98) == 1)
      {
LABEL_83:

        break;
      }

      v99 = sub_1AFDFEE28();

      if ((v99 & 1) == 0)
      {
        v101 = *(v191 + 24);
        v102 = (v96)(v100);
        if (v101 <= 1)
        {
          if (v101)
          {
            v104 = 0xE600000000000000;
            v105 = 0x7070636A626FLL;
          }

          else
          {
            v104 = 0xE100000000000000;
            v105 = 99;
          }
        }

        else
        {
          if (v101 != 2)
          {
            v103 = v188;
            if (v101 == 3)
            {
              v104 = 0xE500000000000000;
              v105 = 0x7466697773;
            }

            else
            {
              v104 = 0xE200000000000000;
              v105 = 29546;
            }

LABEL_97:
            if (v102 <= 1u)
            {
              if (v102)
              {
                v109 = 0xE600000000000000;
                if (v105 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v109 = 0xE100000000000000;
              if (v105 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v102 == 2)
            {
              v109 = 0xE500000000000000;
              if (v105 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v102 == 3)
              {
                v109 = 0xE500000000000000;
                if (v105 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v104 != v109)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v109 = 0xE200000000000000;
              if (v105 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v126 = sub_1AFDFEE28();

            if (v126)
            {
              goto LABEL_113;
            }

LABEL_74:
            v95 = v191 + v183;
            v190 = (v190 + 1);
            if (v189 == v190)
            {
              goto LABEL_70;
            }

            continue;
          }

          v104 = 0xE500000000000000;
          v105 = 0x6C6174656DLL;
        }

        v103 = v188;
        goto LABEL_97;
      }

      break;
    }

    v106 = *(v191 + 24);
    if (v106 <= 1)
    {
      v103 = v188;
      if (!*(v191 + 24))
      {
        goto LABEL_112;
      }
    }

    else
    {
      v103 = v188;
    }

    v107 = sub_1AFDFEE28();

    if ((v107 & 1) == 0)
    {
      if (v106 == 1)
      {
        goto LABEL_112;
      }

      v108 = sub_1AFDFEE28();

      if ((v108 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v110 = v191;
    sub_1AFB12BD8(v191, v176, type metadata accessor for ParticleUpdateScript);
    v111 = v4[5];
    v181 = v4[6];
    v182 = v111;

    if (v103[184])
    {
      goto LABEL_141;
    }

    v113 = *(*(v112 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v103 + 21) + 4 * v190) + 8);
    v179 = *(*(v103 + 21) + 4 * v190);
    v180 = v113;

    v114 = v168;
    sub_1AFB12858(v110 + *(updated + 40), v168);
    v115 = type metadata accessor for ScriptIndex();
    v116 = *(v115 - 8);
    v117 = *(v116 + 48);
    if (v117(v114, 1, v115) == 1)
    {

      if (v103[184])
      {
LABEL_141:
        LODWORD(v155) = 0;
        v154 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v119 = *(*(v103 + 21) + 4 * v190);
      v120 = *(*(v118 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v119 + 8);

      v121 = v167;
      *v167 = v119;
      v121[1] = v120;
      swift_storeEnumTagMultiPayload();
      v122 = v117(v168, 1, v115);
      v4 = v178;
      if (v122 != 1)
      {
        sub_1AF687E28(v168);
      }
    }

    else
    {
      v121 = v167;
      sub_1AFB128EC(v114, v167);
    }

    (*(v116 + 56))(v121, 0, 1, v115);
    v123 = v176;
    v124 = sub_1AFAA3C54(0, 0, &v192);
    if (!v3)
    {
      v169 = &v156;
      v170 = v179;
      v156 = v194;
      v157 = v193;
      v171 = v195;
      v172 = v196;
      v173 = v197;
      MEMORY[0x1EEE9AC00](v124, v125);
      v128 = v181;
      v127 = v182;
      *(&v156 - 6) = v182;
      *(&v156 - 5) = v128;
      v129 = v180;
      *(&v156 - 8) = v130;
      *(&v156 - 7) = v129;
      *(&v156 - 3) = 0x656C636974726170;
      v154 = 0xEE00657461647055;
      v155 = v121;
      v191 = sub_1AFBFBEF0(sub_1AFA9C4E0, (&v156 - 8), v131);
      v182 = sub_1AFAF8B58(v157, v156, v127, v128, v170 | (v129 << 32), 0x656C636974726170uLL, 0xEE00657461647055, v121);
      v133 = v132;

      sub_1AFB12B14(v123, type metadata accessor for ParticleUpdateScript);
      sub_1AF687E28(v121);

      v134 = sub_1AF6496EC(v190);

      v135 = sub_1AFABA30C(v134);
      v137 = v136;
      v138 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1AF425C8C(0, *(v138 + 2) + 1, 1, v138);
      }

      v140 = *(v138 + 2);
      v139 = *(v138 + 3);
      if (v140 >= v139 >> 1)
      {
        v175 = sub_1AF425C8C(v139 > 1, v140 + 1, 1, v138);
      }

      else
      {
        v175 = v138;
      }

      v141 = v190;
      v92 = (v190 + 1);
      v142 = v175;
      *(v175 + 2) = v140 + 1;
      v143 = &v142[40 * v140];
      v144 = v182;
      *(v143 + 4) = v191;
      *(v143 + 5) = v144;
      *(v143 + 6) = v133;
      *(v143 + 7) = v135;
      *(v143 + 8) = v137;
      v70 = v174 == v141;
      v3 = 0;
      v4 = v178;
      v25 = v186;
      v38 = v236;
      v94 = v183;
      if (v70)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v123, type metadata accessor for ParticleUpdateScript);
  sub_1AF687E28(v121);
  if ((v177 & 1) == 0)
  {

    v3 = 0;
    v25 = v186;
    goto LABEL_74;
  }

LABEL_135:
  v151 = v188;
  swift_willThrow();
  v219 = v162;
  v220 = v214;
  v221 = v215;
  sub_1AF630994(v165, &v219, v222);
  sub_1AF62D29C(v151);
  ecs_stack_allocator_pop_snapshot(v163);
  if (v164)
  {
    os_unfair_lock_unlock(*(v151 + 43));
    os_unfair_lock_unlock(*(v151 + 47));
  }

  sub_1AFB12A64(&v204, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFB12B74);

  v152 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v210, &qword_1ED725EA0, &type metadata for QueryResult, v152, sub_1AFB12AC4);
}

uint64_t sub_1AFB01F1C(char a1)
{
  v12 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AFB10C2C(type metadata accessor for GraphScript, sub_1AF70335C, &qword_1ED723E80, type metadata accessor for GraphScript, &off_1F255B548, type metadata accessor for GraphScript, 0x6870617267uLL, 0xE500000000000000, sub_1AFA9EB54, type metadata accessor for GraphScript, sub_1AFAB9EAC, sub_1AFA9EB54);
  if (v1)
  {

    return swift_willThrow();
  }

  else
  {
    sub_1AF490814(v3);
    v4 = sub_1AFAFA510(a1 & 1);
    sub_1AF490814(v4);
    v5 = sub_1AFB0F3FC();
    sub_1AF490814(v5);
    v6 = sub_1AFAFBDA0(a1 & 1);
    sub_1AF490814(v6);
    v7 = sub_1AFAFD528(a1 & 1);
    sub_1AF490814(v7);
    v8 = sub_1AFB10C2C(type metadata accessor for TriggerScript, sub_1AF703D3C, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for TriggerScript, 0x72656767697274uLL, 0xE700000000000000, sub_1AFA9EB54, type metadata accessor for TriggerScript, sub_1AFABA0DC, sub_1AFA9EB54);
    sub_1AF490814(v8);
    v9 = sub_1AFAFEDB4(a1 & 1);
    sub_1AF490814(v9);
    v10 = sub_1AFB00664(a1 & 1);
    sub_1AF490814(v10);
    return v12;
  }
}

uint64_t sub_1AFB0220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, void *a6@<X8>, unint64_t a7)
{
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
  }

  else
  {
    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
    a3 = sub_1AFDFDEB8();
    a4 = v13;
  }

  v14 = sub_1AFB023C8(a5, a7, a3, a4);

  v15 = sub_1AFA5413C(v14);
  v17 = v16;

  *a6 = &unk_1F2503018;
  a6[1] = v15;
  a6[2] = v17;
  a6[3] = 11565;
  a6[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB023C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
    if (qword_1ED724988 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED73B400;
    v7 = *algn_1ED73B408;
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    sub_1AF441DD8();
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_1AFE4C620;
    *(v10 + 32) = inited;
    *(v10 + 40) = &unk_1F2502FD8;

    v6 = sub_1AFA56CA0(v10);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  sub_1AF441DD8();
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1AFE4C620;
  *(v12 + 32) = v6;
  *(v12 + 40) = v11;

  v13 = sub_1AFA56CA0(v12);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_1AFB02608(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 64);
    do
    {
      v18 = *(v3 - 3);
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;

      MEMORY[0x1B2718AE0](v5, v6);
      sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = 2109231;
      *(inited + 40) = 0xE300000000000000;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      v8 = swift_initStackObject();
      *(v8 + 16) = xmmword_1AFE431C0;
      *(v8 + 32) = v18;
      *(v8 + 40) = v4;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;

      sub_1AF441DD8();
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1AFE4C6A0;
      *(v9 + 32) = inited;
      *(v9 + 40) = &unk_1F2503E78;
      *(v9 + 48) = v8;
      *(v9 + 56) = &unk_1F2503EB8;
      *(v9 + 64) = &unk_1F2503EF8;
      v10 = sub_1AFA56CA0(v9);
      swift_setDeallocating();
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF426BC8(0, v2[2] + 1, 1, v2);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        v2 = sub_1AF426BC8(v11 > 1, v12 + 1, 1, v2);
      }

      v2[2] = v12 + 1;
      v2[v12 + 4] = v10;
      v3 += 5;
      --v1;
    }

    while (v1);
  }

  v13 = sub_1AFA56CA0(v2);

  sub_1AF441DD8();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = v13;
  v15 = v14 + 32;
  v16 = sub_1AFA56CA0(v14);
  swift_setDeallocating();
  sub_1AFB12A64(v15, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v16;
}

uint64_t sub_1AFB0290C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v41 = *(a1 + 16);
  if (v41)
  {
    v2 = 0;
    v3 = (a1 + 48);
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(v3 - 2);
      v6 = *v3;
      v7 = (v5 >> 59) & 0x1E | (v5 >> 2) & 1;
      v42 = *v3;
      v43 = v4;
      if (v7 <= 9)
      {
        v8 = *(v3 - 8);
        if (v7 <= 3)
        {
          if (v7)
          {
            if (v7 != 1)
            {
              goto LABEL_45;
            }

LABEL_20:
            sub_1AF443EE0(v5);
            sub_1AF444224(v6);
            sub_1AFA9EF20(v5);
            if (sub_1AFADB4E4(v13, 2u))
            {
              if ((v8 & 2) != 0)
              {
                v14 = MEMORY[0x1E69E6878];
              }

              else
              {
                v14 = MEMORY[0x1E69E6270];
              }
            }

            else
            {
              sub_1AFA9EF20(v5);
            }

            v44[0] = sub_1AFAF9348(v14, 2u);
            v44[1] = v15;
            MEMORY[0x1B2718AE0](0x65756C617620, 0xE600000000000000);
            v16 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v16);

            v17 = v44[0];
            v18 = v44[1];
            sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1AFE431C0;
            *(inited + 32) = v17;
            *(inited + 40) = v18;
            sub_1AF441DD8();
            *(inited + 48) = 0;
            *(inited + 56) = 0;
            v20 = swift_initStackObject();
            *(v20 + 16) = xmmword_1AFE431C0;
            *(v20 + 32) = inited;
            v21 = v20 + 32;
            v10 = sub_1AFA56CA0(v20);
            swift_setDeallocating();
            sub_1AFB12A64(v21, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            v1 = MEMORY[0x1E69E7CC0];
            goto LABEL_37;
          }
        }

        else
        {
          if ((v7 - 4) < 2)
          {
            goto LABEL_20;
          }

          if (v7 != 8 && v7 != 9)
          {
            goto LABEL_45;
          }
        }

        sub_1AF441DD8();
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1AFE431C0;
        *(v22 + 32) = v1;
        v23 = v22 + 32;
        sub_1AF443EE0(v5);
        goto LABEL_35;
      }

      if (v7 > 12)
      {
        if (v7 == 13)
        {
          goto LABEL_28;
        }

        if (v7 != 14)
        {
          if (v7 != 16 || v5 != 0x8000000000000000)
          {
LABEL_45:
            sub_1AF443EE0(v5);
            sub_1AF444224(v6);
            sub_1AFDFE218();
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          sub_1AF441DD8();
          v22 = swift_initStackObject();
          *(v22 + 16) = xmmword_1AFE431C0;
          *(v22 + 32) = v1;
          v23 = v22 + 32;
LABEL_35:
          sub_1AF444224(v6);
          v10 = sub_1AFA56CA0(v22);
          swift_setDeallocating();
          v11 = MEMORY[0x1E69E62F8];
          v12 = v23;
          goto LABEL_36;
        }
      }

      else if (v7 != 10 && v7 != 11)
      {
LABEL_28:
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);
        sub_1AFDFE218();

        strcpy(v44, "uint32_t value");
        HIBYTE(v44[1]) = -18;
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        v25 = v44[0];
        v26 = v44[1];
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1AFE431C0;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        sub_1AF441DD8();
        *(v27 + 48) = 0;
        *(v27 + 56) = 0;
        v28 = swift_initStackObject();
        *(v28 + 16) = xmmword_1AFE431C0;
        *(v28 + 32) = v27;
        v29 = v28 + 32;
        v10 = sub_1AFA56CA0(v28);
        swift_setDeallocating();
        v11 = MEMORY[0x1E69E62F8];
        v12 = v29;
        v1 = MEMORY[0x1E69E7CC0];
        goto LABEL_36;
      }

      sub_1AF441DD8();
      v9 = swift_initStackObject();
      *(v9 + 16) = xmmword_1AFE431C0;
      *(v9 + 32) = v1;
      sub_1AF443EE0(v5);
      sub_1AF444224(v6);
      v10 = sub_1AFA56CA0(v9);
      swift_setDeallocating();
      v11 = MEMORY[0x1E69E62F8];
      v12 = v9 + 32;
LABEL_36:
      sub_1AFB12A64(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code, v11, sub_1AFB12AC4);
LABEL_37:
      sub_1AF441DD8();
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_1AFE431C0;
      *(v31 + 32) = v10;
      v32 = v31 + 32;
      v33 = sub_1AFA56CA0(v31);
      swift_setDeallocating();
      sub_1AFB12A64(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v4 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF426BC8(0, v43[2] + 1, 1, v43);
      }

      v35 = v4[2];
      v34 = v4[3];
      if (v35 >= v34 >> 1)
      {
        v4 = sub_1AF426BC8(v34 > 1, v35 + 1, 1, v4);
      }

      ++v2;
      v3 += 5;
      sub_1AF443F24(v5);
      sub_1AF444AF4(v42);
      v4[2] = v35 + 1;
      v4[v35 + 4] = v33;
      if (v41 == v2)
      {
        goto LABEL_44;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v36 = sub_1AFA56CA0(v4);

  sub_1AF441DD8();
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1AFE431C0;
  *(v37 + 32) = v36;
  v38 = v37 + 32;
  v39 = sub_1AFA56CA0(v37);
  swift_setDeallocating();
  sub_1AFB12A64(v38, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v39;
}

uint64_t sub_1AFB031F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 48);
    v4 = &type metadata for CodeEmitter.Code;
    do
    {
      v5 = *(v3 - 2);
      v6 = *v3;
      v36 = *v3;
      if (((v5 >> 59) & 0x1E | (v5 >> 2) & 1) != 0xE)
      {
        goto LABEL_7;
      }

      v7 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v8 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      if (v8 == 3)
      {
        v24 = *(v3 - 8);
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);
        sub_1AFA9EF20(v5);
        if (sub_1AFADB4E4(v25, 2u))
        {
          if ((v24 & 2) != 0)
          {
            v26 = MEMORY[0x1E69E6878];
          }

          else
          {
            v26 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v5);
        }

        v38 = sub_1AFAF9348(v26, 2u);
        v40 = v27;
        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](*(v7 + 16), *(v7 + 24));
        sub_1AFB12AC4(0, &qword_1EB638390, v4, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = v38;
        *(inited + 40) = v40;
        sub_1AF441DD8();
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_1AFE431C0;
        v12 = v4;
        *(v29 + 32) = inited;
        v30 = v29 + 32;
        v16 = sub_1AFA56CA0(v29);
        swift_setDeallocating();
        v17 = MEMORY[0x1E69E62F8];
        v18 = v30;
        goto LABEL_9;
      }

      if (v8 == 4)
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v37 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v39 = *((v5 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        sub_1AF443EE0(v5);
        sub_1AF444224(v6);

        MEMORY[0x1B2718AE0](32, 0xE100000000000000);
        MEMORY[0x1B2718AE0](v7, v9);
        sub_1AFB12AC4(0, &qword_1EB638390, v4, MEMORY[0x1E69E6F90]);
        v10 = swift_initStackObject();
        *(v10 + 16) = xmmword_1AFE431C0;
        *(v10 + 32) = v37;
        *(v10 + 40) = v39;
        sub_1AF441DD8();
        *(v10 + 48) = 0;
        *(v10 + 56) = 0;
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1AFE431C0;
        v12 = v4;
        *(v11 + 32) = v10;
        v13 = v11 + 32;
      }

      else
      {
LABEL_7:
        sub_1AF441DD8();
        v14 = swift_initStackObject();
        *(v14 + 16) = xmmword_1AFE431C0;
        v15 = v6;
        v12 = v4;
        *(v14 + 32) = MEMORY[0x1E69E7CC0];
        v13 = v14 + 32;
        sub_1AF443EE0(v5);
        sub_1AF444224(v15);
        v11 = v14;
      }

      v16 = sub_1AFA56CA0(v11);
      swift_setDeallocating();
      v17 = MEMORY[0x1E69E62F8];
      v18 = v13;
LABEL_9:
      sub_1AFB12A64(v18, &unk_1ED723290, v12, v17, sub_1AFB12AC4);
      sub_1AF441DD8();
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1AFE431C0;
      *(v19 + 32) = v16;
      v20 = v19 + 32;
      v21 = sub_1AFA56CA0(v19);
      swift_setDeallocating();
      sub_1AFB12A64(v20, &unk_1ED723290, v12, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v4 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF426BC8(0, v2[2] + 1, 1, v2);
      }

      v23 = v2[2];
      v22 = v2[3];
      if (v23 >= v22 >> 1)
      {
        v2 = sub_1AF426BC8(v22 > 1, v23 + 1, 1, v2);
      }

      v3 += 5;
      sub_1AF443F24(v5);
      sub_1AF444AF4(v36);
      v2[2] = v23 + 1;
      v2[v23 + 4] = v21;
      --v1;
    }

    while (v1);
  }

  v31 = sub_1AFA56CA0(v2);

  sub_1AF441DD8();
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1AFE431C0;
  *(v32 + 32) = v31;
  v33 = v32 + 32;
  v34 = sub_1AFA56CA0(v32);
  swift_setDeallocating();
  sub_1AFB12A64(v33, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v34;
}

uint64_t sub_1AFB036B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v31 = v1;
      v4 = *(v2 - 2);
      v5 = *v2;
      v30 = *v2;
      if (((v4 >> 59) & 0x1E | (v4 >> 2) & 1) == 0xE && *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x30) == 1)
      {
        v6 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        if (v6 >= 9)
        {
          v13 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v14 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          sub_1AF443EE0(v4);
          sub_1AF444224(v5);
          v32 = sub_1AF94B594(2, v14);
          v33 = v15;
          MEMORY[0x1B2718AE0](32, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v13, v6);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = v32;
          *(inited + 40) = v33;
          sub_1AF441DD8();
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v17 = swift_initStackObject();
          *(v17 + 16) = xmmword_1AFE431C0;
          *(v17 + 32) = inited;
          v18 = v17 + 32;
          v8 = sub_1AFA56CA0(v17);
          swift_setDeallocating();
          v9 = MEMORY[0x1E69E62F8];
          v10 = v18;
        }

        else
        {
          sub_1AF441DD8();
          v7 = swift_initStackObject();
          *(v7 + 16) = xmmword_1AFE431C0;
          *(v7 + 32) = MEMORY[0x1E69E7CC0];
          sub_1AF443EE0(v4);
          sub_1AF444224(v5);
          v8 = sub_1AFA56CA0(v7);
          swift_setDeallocating();
          v9 = MEMORY[0x1E69E62F8];
          v10 = v7 + 32;
        }

        sub_1AFB12A64(v10, &unk_1ED723290, &type metadata for CodeEmitter.Code, v9, sub_1AFB12AC4);
        sub_1AF441DD8();
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1AFE431C0;
        *(v11 + 32) = v8;
        v12 = v11 + 32;
      }

      else
      {
        sub_1AF441DD8();
        v11 = swift_initStackObject();
        *(v11 + 16) = xmmword_1AFE431C0;
        *(v11 + 32) = MEMORY[0x1E69E7CC0];
        v12 = v11 + 32;
        sub_1AF443EE0(v4);
        sub_1AF444224(v5);
      }

      v19 = sub_1AFA56CA0(v11);
      swift_setDeallocating();
      v20 = MEMORY[0x1E69E62F8];
      sub_1AFB12A64(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      sub_1AF441DD8();
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1AFE431C0;
      *(v21 + 32) = v19;
      v22 = v21 + 32;
      v23 = sub_1AFA56CA0(v21);
      swift_setDeallocating();
      sub_1AFB12A64(v22, &unk_1ED723290, &type metadata for CodeEmitter.Code, v20, sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v25 = v3[2];
      v24 = v3[3];
      if (v25 >= v24 >> 1)
      {
        v3 = sub_1AF426BC8(v24 > 1, v25 + 1, 1, v3);
      }

      v2 += 5;
      sub_1AF443F24(v4);
      sub_1AF444AF4(v30);
      v3[2] = v25 + 1;
      v3[v25 + 4] = v23;
      v1 = v31 - 1;
    }

    while (v31 != 1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v26 = sub_1AFA56CA0(v3);

  sub_1AF441DD8();
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1AFE4C680;
  *(v27 + 32) = &unk_1F2503110;
  *(v27 + 40) = &unk_1F2503150;
  *(v27 + 48) = v26;
  v28 = sub_1AFA56CA0(v27);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v28;
}

double sub_1AFB03B5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, unint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unint64_t a9)
{
  sub_1AFB0E3C8(a1, a2, a3, a4, a5, a6, a6, 0, v12, a7, a9);
  result = *v12;
  v11 = v12[1];
  *a8 = v12[0];
  *(a8 + 16) = v11;
  *(a8 + 32) = v13;
  return result;
}

uint64_t sub_1AFB03BB4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = sub_1AFB01F1C(1);
  if (!v2)
  {
    v21 = 0;
    v7 = result;
    v8 = *(result + 16);
    v9 = sub_1AF8BB88C();
    v11 = v10;
    v19 = sub_1AFAFA374();
    v20 = v12;
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    MEMORY[0x1B2718AE0](qword_1EB6C35A8, unk_1EB6C35B0);
    MEMORY[0x1B2718AE0](v9, v11);

    v13 = sub_1AFB12954(v7);
    v15 = v14;

    MEMORY[0x1B2718AE0](v13, v15);

    if (v8)
    {
      v16 = v19;
      type metadata accessor for MetalTrampolineCodeGen();
      LOBYTE(v19) = v4;
      BYTE1(v19) = v5;
      sub_1AFAF8704(v16, v20, &v19);

      v17 = sub_1AFDFC128();
      return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
    }

    else
    {
      v18 = sub_1AFDFC128();
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }
  }

  return result;
}

uint64_t sub_1AFB03DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, unint64_t a9)
{
  v12 = sub_1AFB08DA4(a1, a2, a3, a4, 1, 1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  if (a9 >= 2)
  {
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EB6C35A8;
    v32 = unk_1EB6C35B0;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v30, v32);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](a7, a9);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF25E80);
  }

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v16, v18);

  sub_1AFB12AC4(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x22206E7265747865;
  *(inited + 40) = 0xEA00000000002243;
  if (a9 >= 2)
  {
    v20 = sub_1AF420554(1, 2, 1, inited);
    *(v20 + 2) = 2;
    *(v20 + 6) = 0xD000000000000026;
    *(v20 + 7) = 0x80000001AFF25150;
  }

  v21 = sub_1AFA53AE8(0xD000000000000018, 0x80000001AFF25180, 1684631414, 0xE400000000000000, 0, 0, &unk_1F2501008, 0);
  v23 = v22;
  swift_arrayDestroy();
  v31 = v21;
  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v24 = sub_1AFB04168(a5 & 1, a6, v12, v14);

  sub_1AFA5413C(v24);

  v25 = sub_1AFAF888C();
  v27 = v26;

  MEMORY[0x1B2718AE0](v25, v27);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v31, v23);

  *a8 = &unk_1F2501048;
  a8[1] = 0;
  a8[2] = 0xE000000000000000;
  a8[3] = 11565;
  a8[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB04168(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v110 = sub_1AFA56CA0(&unk_1F2500E40);
    sub_1AFB12A64(&unk_1F2500E60, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC0];
  }

  v7 = MEMORY[0x1E69E7CC0];
  v117 = *(a2 + 16);
  if (v117)
  {
    v112 = a3;
    v113 = a4;
    v109 = sub_1AFA56CA0(&unk_1F2500EE8);
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    v8 = 0;
    v114 = a2;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = *(v9 - 2);
      v11 = *v9;
      v12 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
      if (v12 == 15)
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v17 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        v19 = *((v10 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v118 = *v9;
        sub_1AF444224(v11);
        sub_1AF443EE0(v10);
        sub_1AF90E730(v19);
        if (!v20)
        {
          goto LABEL_80;
        }

        v21 = sub_1AFAF9348(v20, 0);
        v23 = v22;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](v21, v23);
        MEMORY[0x1B2718AE0](0x5F74756F6E69202ALL, 0xEF7265746E696F70);
        v24 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v24);

        MEMORY[0x1B2718AE0](0x2828203D20, 0xE500000000000000);
        MEMORY[0x1B2718AE0](v21, v23);

        MEMORY[0x1B2718AE0](0xD000000000000031, 0x80000001AFF47440);
        MEMORY[0x1B2718AE0](v18, v17);
        MEMORY[0x1B2718AE0](992553250, 0xE400000000000000);
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AFE431C0;
        *(inited + 32) = 0;
        *(inited + 40) = 0xE000000000000000;
        sub_1AF441DD8();
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        v26 = swift_initStackObject();
        *(v26 + 16) = xmmword_1AFE431C0;
        *(v26 + 32) = inited;
        v27 = v26 + 32;
        v28 = sub_1AFA56CA0(v26);
        swift_setDeallocating();
        sub_1AFB12A64(v27, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        if (v12 == 16 && v10 == 0x8000000000000000)
        {
          sub_1AF441DD8();
          v44 = swift_initStackObject();
          *(v44 + 16) = xmmword_1AFE431C0;
          *(v44 + 32) = MEMORY[0x1E69E7CC0];
          sub_1AF444224(v11);
          v28 = sub_1AFA56CA0(v44);
          swift_setDeallocating();
          sub_1AFB12A64(v44 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          goto LABEL_20;
        }

        v14 = *(v9 - 8);
        sub_1AF444224(*v9);
        sub_1AF443EE0(v10);
        sub_1AFA9EF20(v10);
        v118 = v11;
        if (sub_1AFADB4E4(v15, 0))
        {
          if ((v14 & 2) != 0)
          {
            v16 = MEMORY[0x1E69E6878];
          }

          else
          {
            v16 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v10);
        }

        v29 = sub_1AFAF9348(v16, 0);
        v31 = v30;
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0x5F74756F6E69202ALL, 0xEF7265746E696F70);
        v32 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v32);

        MEMORY[0x1B2718AE0](0x2828203D20, 0xE500000000000000);
        MEMORY[0x1B2718AE0](v29, v31);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF47420);
        v33 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v33);

        MEMORY[0x1B2718AE0](3877213, 0xE300000000000000);
        v34 = v29;
        v35 = v31;
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_1AFE431C0;
        *(v36 + 32) = v34;
        *(v36 + 40) = v35;
        sub_1AF441DD8();
        *(v36 + 48) = 0;
        *(v36 + 56) = 0;
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_1AFE431C0;
        *(v37 + 32) = v36;
        v38 = v37 + 32;
        v28 = sub_1AFA56CA0(v37);
        swift_setDeallocating();
        sub_1AFB12A64(v38, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      v11 = v118;
LABEL_20:
      sub_1AF441DD8();
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_1AFE431C0;
      *(v39 + 32) = v28;
      v40 = v39 + 32;
      v41 = sub_1AFA56CA0(v39);
      swift_setDeallocating();
      sub_1AFB12A64(v40, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
      }

      v43 = v7[2];
      v42 = v7[3];
      if (v43 >= v42 >> 1)
      {
        v7 = sub_1AF426BC8(v42 > 1, v43 + 1, 1, v7);
      }

      ++v8;
      v9 += 5;
      sub_1AF443F24(v10);
      sub_1AF444AF4(v11);
      v7[2] = v43 + 1;
      v7[v43 + 4] = v41;
      if (v117 == v8)
      {
        a2 = v114;
        a3 = v112;
        a4 = v113;
        goto LABEL_28;
      }
    }
  }

  v109 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v45 = sub_1AFA56CA0(v7);

  v46 = MEMORY[0x1E69E7CC0];
  v108 = v45;
  if (a1)
  {
    sub_1AF441DD8();
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1AFE4C620;
    *(v47 + 32) = &unk_1F2500F18;
    *(v47 + 40) = v46;
    v107 = sub_1AFA56CA0(v47);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v107 = MEMORY[0x1E69E7CC0];
  }

  sub_1AFA53EE4(a3, a4, 0, a2);

  v48 = sub_1AFAF888C();
  v50 = v49;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_1AFE431C0;
  *(v51 + 32) = v48;
  *(v51 + 40) = v50;
  *(v51 + 48) = 0;
  *(v51 + 56) = 0;
  v52 = MEMORY[0x1E69E7CC0];
  v106 = v51;
  if (!v117)
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_73:
    v101 = sub_1AFA56CA0(v56);

    if (a1)
    {
      v102 = sub_1AFA56CA0(&unk_1F2500FD8);
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
    }

    else
    {
      v102 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF441DD8();
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1AFE4C5E0;
    *(v103 + 32) = &unk_1F2500D80;
    *(v103 + 40) = &unk_1F2500DC0;
    *(v103 + 48) = v110;
    *(v103 + 56) = v109;
    *(v103 + 64) = v108;
    *(v103 + 72) = v107;
    *(v103 + 80) = v106;
    *(v103 + 88) = v101;
    *(v103 + 96) = v102;
    v104 = sub_1AFA56CA0(v103);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v104;
  }

  v53 = 0;
  v54 = (a2 + 48);
  v55 = &type metadata for CodeEmitter.Code;
  v56 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v57 = *(v54 - 2);
    v119 = *v54;
    v58 = (v57 >> 59) & 0x1E | (v57 >> 2) & 1;
    if (v58 == 10)
    {
      break;
    }

    if (v58 == 5 || v58 == 4)
    {
      v116 = v56;
      v59 = 66;
      goto LABEL_38;
    }

    sub_1AF443EE0(v57);
    sub_1AF444224(v119);
    v70 = v52;
LABEL_66:
    sub_1AF441DD8();
    v96 = swift_initStackObject();
    *(v96 + 16) = xmmword_1AFE431C0;
    *(v96 + 32) = v70;
    v97 = v96 + 32;
    v98 = sub_1AFA56CA0(v96);
    swift_setDeallocating();
    sub_1AFB12A64(v97, &unk_1ED723290, v55, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1AF426BC8(0, v56[2] + 1, 1, v56);
    }

    v100 = v56[2];
    v99 = v56[3];
    if (v100 >= v99 >> 1)
    {
      v56 = sub_1AF426BC8(v99 > 1, v100 + 1, 1, v56);
    }

    ++v53;
    v54 += 5;
    sub_1AF443F24(v57);
    sub_1AF444AF4(v119);
    v56[2] = v100 + 1;
    v56[v100 + 4] = v98;
    if (v117 == v53)
    {
      goto LABEL_73;
    }
  }

  v116 = v56;
  v59 = 58;
LABEL_38:
  v115 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + v59);
  sub_1AF443EE0(v57);
  sub_1AF444224(v119);

  if ((v115 & 3) == 0)
  {
    v68 = v52;
    v69 = v55;
LABEL_65:
    sub_1AF441DD8();
    v94 = swift_initStackObject();
    *(v94 + 16) = xmmword_1AFE431C0;
    *(v94 + 32) = v68;
    v95 = v94 + 32;
    v70 = sub_1AFA56CA0(v94);
    swift_setDeallocating();
    sub_1AFB12A64(v95, &unk_1ED723290, v69, MEMORY[0x1E69E62F8], sub_1AFB12AC4);

    v55 = v69;
    v56 = v116;
    goto LABEL_66;
  }

  sub_1AFA9EF20(v57);
  if ((sub_1AFADB4E4(v60, 2u) & 1) == 0)
  {
    sub_1AFA9EF20(v57);
  }

  if (v58 != 10)
  {
    goto LABEL_56;
  }

  if ((*((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
  {
    if ((*((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_56:
    sub_1AFDFE218();

    v71 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v71);

    v72 = 0xD000000000000017;
    v73 = 0x80000001AFF47480;
    sub_1AF441DD8();
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_1AFE431C0;
    *(v74 + 32) = MEMORY[0x1E69E7CC0];
    v75 = v74 + 32;
    v76 = sub_1AFA56CA0(v74);
    swift_setDeallocating();
    sub_1AFB12A64(v75, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v77 = v115;
    if (v115)
    {
LABEL_61:
      MEMORY[0x1B2718AE0](v72, v73);

      MEMORY[0x1B2718AE0](0x2E31203D20772E29, 0xEA00000000003B30);
      v84 = sub_1AFAF888C();
      v86 = v85;

      v87 = swift_initStackObject();
      *(v87 + 16) = xmmword_1AFE431C0;
      *(v87 + 32) = v84;
      *(v87 + 40) = v86;
      sub_1AF441DD8();
      *(v87 + 48) = 0;
      *(v87 + 56) = 0;
      goto LABEL_63;
    }

LABEL_57:
    if ((v77 & 2) == 0)
    {

      v52 = MEMORY[0x1E69E7CC0];
      v78 = MEMORY[0x1E69E7CC0];
      v69 = &type metadata for CodeEmitter.Code;
LABEL_64:
      sub_1AF441DD8();
      v93 = swift_initStackObject();
      *(v93 + 16) = xmmword_1AFE4C680;
      *(v93 + 32) = v52;
      *(v93 + 40) = v76;
      *(v93 + 48) = v78;
      v68 = sub_1AFA56CA0(v93);
      swift_setDeallocating();
      sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      goto LABEL_65;
    }

    MEMORY[0x1B2718AE0](v72, v73);

    MEMORY[0x1B2718AE0](0x2E30203D20772E29, 0xEA00000000003B30);
    v88 = sub_1AFAF888C();
    v90 = v89;

    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1AFE431C0;
    *(v87 + 32) = v88;
    *(v87 + 40) = v90;
    sub_1AF441DD8();
    *(v87 + 48) = 0;
    *(v87 + 56) = 0;
LABEL_63:
    v91 = swift_initStackObject();
    *(v91 + 16) = xmmword_1AFE431C0;
    *(v91 + 32) = v87;
    v92 = v91 + 32;
    v78 = sub_1AFA56CA0(v91);
    swift_setDeallocating();
    v69 = &type metadata for CodeEmitter.Code;
    sub_1AFB12A64(v92, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_64;
  }

  if (*((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
  {
    v61 = *((v57 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v62 = sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2() || v62 == 0)
    {
      goto LABEL_56;
    }

    v64 = sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_78;
    }

    if (!sub_1AF640E28(v64))
    {
      goto LABEL_56;
    }

    v65 = sub_1AFDFDFD8();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_79;
    }

    v66 = sub_1AF6411A4(v65);
    sub_1AFAF6E24(v61, v61);
    if (v66 != v67)
    {
      goto LABEL_56;
    }
  }

LABEL_59:
  v79 = sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    sub_1AF6411A4(v79);
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF474A0);
    v80 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v80);

    MEMORY[0x1B2718AE0](539697193, 0xE400000000000000);
    v81 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v81);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF474D0);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1AF441DD8();
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1AFE431C0;
    *(v82 + 32) = MEMORY[0x1E69E7CC0];
    v83 = v82 + 32;
    v76 = sub_1AFA56CA0(v82);
    swift_setDeallocating();
    sub_1AFB12A64(v83, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
    v77 = v115;
    if (v115)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB054AC(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v57 = *(a1 + 16);
  if (!v57)
  {
LABEL_53:
    v51 = sub_1AFA56CA0(v1);

    sub_1AF441DD8();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = v51;
    v53 = inited + 32;
    v54 = sub_1AFA56CA0(inited);
    swift_setDeallocating();
    sub_1AFB12A64(v53, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    return v54;
  }

  v2 = 0;
  v3 = (a1 + 48);
  while (1)
  {
    v4 = *(v3 - 2);
    v5 = *(v3 - 8);
    v6 = *v3;
    v61 = 0;
    v62 = 0xE000000000000000;
    v7 = (v4 >> 59) & 0x1E | (v4 >> 2) & 1;
    v8 = v4 == 0x8000000000000000 && v7 == 16;
    v58 = v6;
    if (v8)
    {
      sub_1AF444224(v6);
      MEMORY[0x1B2718AE0](0x635F747069726373, 0xEE00747865746E6FLL);
      sub_1AF441DD8();
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_1AFE431C0;
      v18 = MEMORY[0x1E69E7CC0];
      *(v17 + 32) = MEMORY[0x1E69E7CC0];
      v19 = v17 + 32;
      v20 = sub_1AFA56CA0(v17);
      goto LABEL_46;
    }

    if (v7 != 10)
    {
      sub_1AF444224(v6);
      sub_1AF443EE0(v4);
      if (v7 != 2)
      {
        goto LABEL_43;
      }

      sub_1AFB12BD8((v4 & 0xFFFFFFFFFFFFFFBLL) + 16, v59, sub_1AF95BAC8);
      sub_1AF4459C8(v59);
      strcpy(v59, "inout_pointer");
      HIWORD(v59[1]) = -4864;
      v60 = v2;
      v21 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v21);

      MEMORY[0x1B2718AE0](v59[0], v59[1]);
      goto LABEL_44;
    }

    v9 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
    if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) == 0)
    {
      break;
    }

    sub_1AF444224(v6);
    sub_1AF443EE0(v4);
    if ((v9 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_23:
    if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
    {
      if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if ((*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
      {
        goto LABEL_43;
      }

      v22 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v23 = sub_1AFDFDFD8();
      if (swift_conformsToProtocol2() && v23 != 0)
      {
        v25 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_57;
        }

        if (sub_1AF640E28(v25))
        {
          v26 = sub_1AFDFDFD8();
          result = swift_conformsToProtocol2();
          if (!result)
          {
            goto LABEL_58;
          }

          v27 = sub_1AF6411A4(v26);
          sub_1AFAF6E24(v22, v22);
          if (v27 == v28)
          {
LABEL_43:
            v59[0] = 0;
            v59[1] = 0xE000000000000000;
            sub_1AFDFE218();

            strcpy(v59, "*inout_pointer");
            HIBYTE(v59[1]) = -18;
            v60 = v2;
            v38 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v38);

            MEMORY[0x1B2718AE0](v59[0], v59[1]);
            goto LABEL_44;
          }
        }
      }
    }

    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v59, "inout_pointer");
    HIWORD(v59[1]) = -4864;
    v60 = v2;
    v29 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v29);

    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF474F0);
    MEMORY[0x1B2718AE0](v59[0], v59[1]);
LABEL_44:

    sub_1AF441DD8();
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_1AFE431C0;
    v40 = MEMORY[0x1E69E7CC0];
    *(v39 + 32) = MEMORY[0x1E69E7CC0];
    v41 = v39 + 32;
    v20 = sub_1AFA56CA0(v39);
    swift_setDeallocating();
    sub_1AFB12A64(v41, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AFA9EF20(v4);
    if ((sub_1AFADB4E4(v42, 0) & 1) == 0)
    {
      v18 = v40;
      goto LABEL_48;
    }

    v59[0] = 38;
    v59[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](v61, v62);

    v61 = v59[0];
    v62 = v59[1];
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_1AFE431C0;
    *(v43 + 32) = v40;
    v19 = v43 + 32;
    v18 = sub_1AFA56CA0(v43);
LABEL_46:
    swift_setDeallocating();
    sub_1AFB12A64(v19, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_48:
    v44 = v61;
    v45 = v62;
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1AFE431C0;
    *(v46 + 32) = v44;
    *(v46 + 40) = v45;
    sub_1AF441DD8();
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_1AFE4C680;
    *(v47 + 32) = v20;
    *(v47 + 40) = v18;
    *(v47 + 48) = v46;
    v48 = sub_1AFA56CA0(v47);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1AF426BC8(0, v1[2] + 1, 1, v1);
    }

    v50 = v1[2];
    v49 = v1[3];
    if (v50 >= v49 >> 1)
    {
      v1 = sub_1AF426BC8(v49 > 1, v50 + 1, 1, v1);
    }

    ++v2;
    v3 += 5;
    sub_1AF443F24(v4);
    sub_1AF444AF4(v58);
    v1[2] = v50 + 1;
    v1[v50 + 4] = v48;
    if (v57 == v2)
    {
      goto LABEL_53;
    }
  }

  if (*((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
  {
    v55 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    sub_1AF444224(v6);
    sub_1AF443EE0(v4);
    v10 = sub_1AFDFDFD8();
    if (swift_conformsToProtocol2())
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_55;
      }

      if (sub_1AF640E28(v12))
      {
        v14 = sub_1AFDFDFD8();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          goto LABEL_56;
        }

        v15 = sub_1AF6411A4(v14);
        sub_1AFAF6E24(v55, v55);
        if (v15 == v16)
        {
          goto LABEL_35;
        }
      }
    }

    goto LABEL_23;
  }

  sub_1AF444224(v6);
  sub_1AF443EE0(v4);
LABEL_35:
  v30 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v56 = sub_1AF6411A4(v30);
    sub_1AFA9EF20(v4);
    if (sub_1AFADB4E4(v31, 0))
    {
      if ((v5 & 2) != 0)
      {
        v32 = MEMORY[0x1E69E6878];
      }

      else
      {
        v32 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v4);
    }

    v33 = sub_1AFAF9348(v32, 0);
    v35 = v34;
    v59[0] = 0;
    v59[1] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](10282, 0xE200000000000000);
    MEMORY[0x1B2718AE0](v33, v35);

    MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF47510);
    v60 = v2;
    v36 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v36);

    MEMORY[0x1B2718AE0](539697193, 0xE400000000000000);
    v60 = v56;
    v37 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v37);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF474D0);
    MEMORY[0x1B2718AE0](v59[0], v59[1]);
    goto LABEL_44;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1AFB05EA8(uint64_t a1)
{
  v3 = sub_1AFB05FC0(a1);
  v4 = sub_1AFA5413C(v3);
  v6 = v5;

  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v7 = sub_1AFB063EC(a1);
  v8 = sub_1AFA5413C(v7);
  v10 = v9;

  MEMORY[0x1B2718AE0](v8, v10);

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v11 = sub_1AFB069A0(v1);
  v12 = sub_1AFA5413C(v11);
  v14 = v13;

  MEMORY[0x1B2718AE0](v12, v14);

  return 10;
}

uint64_t sub_1AFB05FC0(uint64_t a1)
{

  sub_1AF490814(v1);
  v2 = &qword_1AFE43000;
  v27 = *(a1 + 16);
  if (v27)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v5 = *(*(a1 + 32 + 40 * v3) + 16);
      if (v5)
      {
        v28 = v4;
        v29 = v3;
        v6 = ( + 40);
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          v9 = *(v6 - 1);
          v8 = *v6;

          sub_1AFDFE218();

          MEMORY[0x1B2718AE0](v9, v8);

          MEMORY[0x1B2718AE0](0x292A2064696F7628, 0xE90000000000003BLL);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = 0xD000000000000010;
          *(inited + 40) = 0x80000001AFF476C0;
          sub_1AF441DD8();
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v11 = swift_initStackObject();
          *(v11 + 16) = xmmword_1AFE431C0;
          *(v11 + 32) = inited;
          v12 = v11 + 32;
          v13 = sub_1AFA56CA0(v11);
          swift_setDeallocating();
          sub_1AFB12A64(v12, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1AF426BC8(0, v7[2] + 1, 1, v7);
          }

          v15 = v7[2];
          v14 = v7[3];
          if (v15 >= v14 >> 1)
          {
            v7 = sub_1AF426BC8(v14 > 1, v15 + 1, 1, v7);
          }

          v7[2] = v15 + 1;
          v7[v15 + 4] = v13;
          v6 += 3;
          --v5;
        }

        while (v5);

        v4 = v28;
        v3 = v29;
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      v16 = sub_1AFA56CA0(v7);

      sub_1AF441DD8();
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_1AFE431C0;
      *(v17 + 32) = v16;
      v18 = v17 + 32;
      v19 = sub_1AFA56CA0(v17);
      swift_setDeallocating();
      sub_1AFB12A64(v18, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF426BC8(0, v4[2] + 1, 1, v4);
      }

      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v4 = sub_1AF426BC8(v20 > 1, v21 + 1, 1, v4);
      }

      ++v3;
      v4[2] = v21 + 1;
      v4[v21 + 4] = v19;
    }

    while (v3 != v27);

    v2 = &qword_1AFE43000;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1AFA56CA0(v4);

  sub_1AF441DD8();
  v23 = swift_initStackObject();
  *(v23 + 16) = *(v2 + 28);
  *(v23 + 32) = v22;
  v24 = v23 + 32;
  v25 = sub_1AFA56CA0(v23);
  swift_setDeallocating();
  sub_1AFB12A64(v24, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v25;
}

uint64_t sub_1AFB063EC(uint64_t a1)
{
  v1 = sub_1AFB06540(a1);
  sub_1AFA5413C(v1);

  v2 = sub_1AFAF888C();
  v4 = v3;

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1AFE4C6A0;
  *(v6 + 32) = &unk_1F2503D78;
  *(v6 + 40) = &unk_1F2503DB8;
  *(v6 + 48) = &unk_1F2503DF8;
  *(v6 + 56) = inited;
  *(v6 + 64) = &unk_1F2503E38;
  v7 = sub_1AFA56CA0(v6);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1AFB06540(uint64_t a1)
{

  sub_1AF490814(v1);
  v25 = *(a1 + 16);
  if (v25)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = *(*(a1 + 32 + 40 * v2) + 16);
      if (v4)
      {
        v26 = v3;
        v27 = v2;
        v5 = ( + 40);
        v6 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = *(v5 - 1);
          v8 = *v5;

          sub_1AFDFE218();

          MEMORY[0x1B2718AE0](v7, v8);

          MEMORY[0x1B2718AE0](0x64696F7628202C22, 0xEB00000000292A20);
          MEMORY[0x1B2718AE0](v7, v8);

          MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
          sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1AFE431C0;
          *(inited + 32) = 2236539;
          *(inited + 40) = 0xE300000000000000;
          sub_1AF441DD8();
          *(inited + 48) = 0;
          *(inited + 56) = 0;
          v10 = swift_initStackObject();
          *(v10 + 16) = xmmword_1AFE431C0;
          *(v10 + 32) = inited;
          v11 = v10 + 32;
          v12 = sub_1AFA56CA0(v10);
          swift_setDeallocating();
          sub_1AFB12A64(v11, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1AF426BC8(0, v6[2] + 1, 1, v6);
          }

          v14 = v6[2];
          v13 = v6[3];
          if (v14 >= v13 >> 1)
          {
            v6 = sub_1AF426BC8(v13 > 1, v14 + 1, 1, v6);
          }

          v6[2] = v14 + 1;
          v6[v14 + 4] = v12;
          v5 += 3;
          --v4;
        }

        while (v4);

        v3 = v26;
        v2 = v27;
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      v15 = sub_1AFA56CA0(v6);

      sub_1AF441DD8();
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      *(v16 + 32) = v15;
      v17 = v16 + 32;
      v18 = sub_1AFA56CA0(v16);
      swift_setDeallocating();
      sub_1AFB12A64(v17, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF426BC8(0, v3[2] + 1, 1, v3);
      }

      v20 = v3[2];
      v19 = v3[3];
      if (v20 >= v19 >> 1)
      {
        v3 = sub_1AF426BC8(v19 > 1, v20 + 1, 1, v3);
      }

      ++v2;
      v3[2] = v20 + 1;
      v3[v20 + 4] = v18;
    }

    while (v2 != v25);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v21 = sub_1AFA56CA0(v3);

  sub_1AF441DD8();
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1AFE4C620;
  *(v22 + 32) = v21;
  *(v22 + 40) = &unk_1F2503D38;
  v23 = sub_1AFA56CA0(v22);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_1AFB069A0(uint64_t a1)
{
  sub_1AFB0EF20(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AFE431C0;
  v3 = MEMORY[0x1E69E7738];
  *(v2 + 56) = MEMORY[0x1E69E76D8];
  *(v2 + 64) = v3;
  *(v2 + 32) = 0x6D61676963766678;
  v4 = sub_1AFDFCF38();
  v6 = v5;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000032, 0x80000001AFF47600);
  MEMORY[0x1B2718AE0](0x435F415441445F5FLL, 0xEC00000054534E4FLL);
  MEMORY[0x1B2718AE0](44, 0xE100000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36600);
  MEMORY[0x1B2718AE0](0xD00000000000005ELL, 0x80000001AFF47640);
  MEMORY[0x1B2718AE0](v4, v6);

  MEMORY[0x1B2718AE0](2236460, 0xE300000000000000);
  MEMORY[0x1B2718AE0](*(a1 + 40), *(a1 + 48));
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF476A0);
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0;
  *(inited + 40) = 0xE000000000000000;
  sub_1AF441DD8();
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = inited;
  v9 = v8 + 32;
  v10 = sub_1AFA56CA0(v8);
  swift_setDeallocating();
  sub_1AFB12A64(v9, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  return v10;
}

uint64_t sub_1AFB06C28(char a1)
{
  v4 = v2;
  v6 = sub_1AFB01F1C(a1);
  if (!v3)
  {
    v7 = v6;
    v1 = *(v6 + 16);
    sub_1AFAFA374();
    if (qword_1EB6372E0 != -1)
    {
      swift_once();
    }

    v18 = qword_1EB6C35A8;
    v19 = unk_1EB6C35B0;

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v18, v19);

    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v10 = *(v4 + 32);
    type metadata accessor for SwiftTrampolineCodeGen();
    swift_initStackObject();

    sub_1AFB0F318(v9, v8, v10);

    sub_1AFB01F1C(a1 & 1);

    v12 = sub_1AFB05EA8(v7);
    v14 = v13;

    v15 = sub_1AFB12954(v7);
    v17 = v16;

    MEMORY[0x1B2718AE0](v15, v17);

    MEMORY[0x1B2718AE0](v12, v14);
  }

  return v1;
}

uint64_t sub_1AFB06E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, void *a7@<X8>, unint64_t a8)
{
  sub_1AFB0EC30(a1, a2, a3, a4);
  v11 = v10;
  v13 = v12;
  v106 = a7;
  if (a8 >= 2)
  {
    MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF47370);
    MEMORY[0x1B2718AE0](0xD00000000000007CLL, 0x80000001AFF473A0);
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF25E80);

    v14 = 0x2063696C627570;
    v15 = 0xE700000000000000;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v11, v13);

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6C636564635F400ALL, 0xEA00000000002228);
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
  MEMORY[0x1B2718AE0](665890, 0xE300000000000000);
  MEMORY[0x1B2718AE0](v14, v15);

  MEMORY[0x1B2718AE0](0x20636E7566, 0xE500000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000018, 0x80000001AFF25180);
  MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF47020);
  MEMORY[0x1B2718AE0](0, 0xE000000000000000);

  v16 = sub_1AFAF888C();
  MEMORY[0x1B2718AE0](v16);

  if (a5)
  {
    v17 = sub_1AFAF888C();
    MEMORY[0x1B2718AE0](v17);
  }

  v110 = *(a6 + 16);
  v108 = a6;
  if (v110)
  {
    v18 = sub_1AFAF888C();
    MEMORY[0x1B2718AE0](v18);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v19 = 0;
    v20 = (a6 + 48);
    do
    {
      v24 = *(v20 - 2);
      if (v24 != 0x8000000000000000)
      {
        v25 = *v20;
        sub_1AF443EE0(v24);
        sub_1AF444224(v25);
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x6F6E49702074656CLL, 0xEA00000000007475);
        v26 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v26);

        MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF47130);
        v27 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v27);

        MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF47150);
        sub_1AFA9EF20(v24);
        if ((sub_1AFADB4E4(v28, 3u) & 1) == 0)
        {
          sub_1AFA9EF20(v24);
        }

        v29 = sub_1AFDFF4B8();
        v111 = v30;

        v31 = sub_1AFDFD178();

        if (v31)
        {
          sub_1AFDFD078();
          sub_1AFDFCFD8();
        }

        MEMORY[0x1B2718AE0](v29, v111);

        MEMORY[0x1B2718AE0](0xA29666C65732ELL, 0xE700000000000000);
        v21 = sub_1AFAF888C();
        v23 = v22;

        MEMORY[0x1B2718AE0](v21, v23);
        sub_1AF443F24(v24);
        sub_1AF444AF4(v25);
      }

      ++v19;
      v20 += 5;
    }

    while (v110 != v19);
  }

  else
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  if (a5)
  {
    v32 = sub_1AFAF888C();
    MEMORY[0x1B2718AE0](v32);
  }

  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  v33 = sub_1AFAF888C();
  v35 = v34;

  MEMORY[0x1B2718AE0](v33, v35);

  if (!v110)
  {
    v102 = sub_1AFAF888C();
    MEMORY[0x1B2718AE0](v102);

LABEL_120:
    if (a5)
    {
      v103 = sub_1AFAF888C();
      MEMORY[0x1B2718AE0](v103);
    }

    v104 = sub_1AFAF888C();
    MEMORY[0x1B2718AE0](v104);

    *v106 = &unk_1F2502FA0;
    v106[1] = 0;
    v106[2] = 0xE000000000000000;
    v106[3] = 11565;
    v106[4] = 0xE200000000000000;
    return result;
  }

  v36 = 0;
  v37 = (v108 + 48);
  while (1)
  {
    v46 = *(v37 - 2);
    v47 = *(v37 - 8);
    v48 = *v37;
    v49 = (v46 >> 59) & 0x1E | (v46 >> 2) & 1;
    if (v46 != 0x8000000000000000 || v49 != 16)
    {
      break;
    }

    sub_1AF444224(v48);
    MEMORY[0x1B2718AE0](0x6F43747069726373, 0xED0000747865746ELL);
    v38 = 0;
    v39 = 0xE000000000000000;
LABEL_21:
    v40 = v36 + 1;
    v37 += 5;
    MEMORY[0x1B2718AE0](v38, v39);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    if (v36)
    {
      v41 = 44;
    }

    else
    {
      v41 = 0;
    }

    if (v36)
    {
      v42 = 0xE100000000000000;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    MEMORY[0x1B2718AE0](v41, v42);

    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v43 = sub_1AFAF888C();
    v45 = v44;

    MEMORY[0x1B2718AE0](v43, v45);

    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    sub_1AF443F24(v46);
    sub_1AF444AF4(v48);

    v36 = v40;
    if (v110 == v40)
    {
      v77 = sub_1AFAF888C();
      MEMORY[0x1B2718AE0](v77);

      v78 = 0;
      v79 = (v108 + 48);
      v105 = MEMORY[0x1E69E7CA0] + 8;
      while (1)
      {
        v84 = *(v79 - 2);
        v85 = *v79;
        v86 = (v84 >> 59) & 0x1E | (v84 >> 2) & 1;
        if (v86 == 10)
        {
          v87 = 58;
        }

        else
        {
          if (v86 != 5 && v86 != 4)
          {
            goto LABEL_74;
          }

          v87 = 66;
        }

        v88 = *((v84 & 0xFFFFFFFFFFFFFFBLL) + v87);
        if ((v88 & 3) != 0)
        {
          break;
        }

LABEL_74:
        ++v78;
        v79 += 5;
        if (v110 == v78)
        {
          goto LABEL_120;
        }
      }

      sub_1AF443EE0(*(v79 - 2));
      sub_1AF444224(v85);

      sub_1AFA9EF20(v84);
      v90 = v89;
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for frame_constants(0);
        if (!swift_dynamicCastMetatype())
        {
          if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && (sub_1AF80AF34(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve), !swift_dynamicCastMetatype()) && (swift_dynamicCastMetatype() || v90 != v105 && !swift_dynamicCastMetatype() && (type metadata accessor for __vfx_sampler1d(0), !swift_dynamicCastMetatype()) && (type metadata accessor for __vfx_sampler2d(0), !swift_dynamicCastMetatype()) && (type metadata accessor for __vfx_sampler3d(0), !swift_dynamicCastMetatype())))
          {
            sub_1AFA9EF20(v84);
          }
        }
      }

      if (v86 == 10)
      {
        if ((*((v84 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
        {
          if ((*((v84 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
          {
            goto LABEL_104;
          }
        }

        else
        {
          if ((*((v84 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
          {
            goto LABEL_104;
          }

          v91 = *((v84 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v92 = sub_1AFDFDFD8();
          if (swift_conformsToProtocol2() && v92 != 0)
          {
            v94 = sub_1AFDFDFD8();
            result = swift_conformsToProtocol2();
            if (!result)
            {
              goto LABEL_126;
            }

            if (sub_1AF640E28(v94))
            {
              v95 = sub_1AFDFDFD8();
              result = swift_conformsToProtocol2();
              if (!result)
              {
                goto LABEL_129;
              }

              v96 = sub_1AF6411A4(v95);
              sub_1AFAF6E24(v91, v91);
              if (v96 == v97)
              {
LABEL_104:
                v99 = sub_1AFDFDFD8();
                result = swift_conformsToProtocol2();
                if (!result)
                {
                  goto LABEL_124;
                }

                sub_1AF6411A4(v99);
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
                v100 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v100);

                MEMORY[0x1B2718AE0](0x636E617664612E29, 0xEF203A7962286465);
                v101 = sub_1AFDFEA08();
                MEMORY[0x1B2718AE0](v101);

                MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF47220);
                if ((v88 & 1) == 0)
                {
LABEL_106:
                  if ((v88 & 2) == 0)
                  {

                    sub_1AF443F24(v84);
                    sub_1AF444AF4(v85);
                    goto LABEL_74;
                  }

                  v80 = 0x30203D20772ELL;
                  goto LABEL_73;
                }

LABEL_72:
                v80 = 0x31203D20772ELL;
LABEL_73:
                MEMORY[0x1B2718AE0](v80 & 0xFFFFFFFFFFFFLL | 0x302E000000000000, 0xE90000000000000ALL);
                v81 = sub_1AFAF888C();
                v83 = v82;

                MEMORY[0x1B2718AE0](v81, v83);

                sub_1AF443F24(v84);
                sub_1AF444AF4(v85);

                goto LABEL_74;
              }
            }
          }
        }
      }

      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
      v98 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v98);

      MEMORY[0x1B2718AE0](0xD000000000000034, 0x80000001AFF471E0);
      if ((v88 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_72;
    }
  }

  if (v49 != 10)
  {
    sub_1AF444224(v48);
    sub_1AF443EE0(v46);
    goto LABEL_45;
  }

  v51 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x38);
  if ((*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
  {
    sub_1AF444224(v48);
    sub_1AF443EE0(v46);
    if ((v51 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_48;
  }

  if ((*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x38) & 1) == 0)
  {
    sub_1AF444224(v48);
    sub_1AF443EE0(v46);
    goto LABEL_60;
  }

  v109 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
  sub_1AF444224(v48);
  sub_1AF443EE0(v46);
  v52 = sub_1AFDFDFD8();
  if (swift_conformsToProtocol2())
  {
    v53 = v52 == 0;
  }

  else
  {
    v53 = 1;
  }

  if (v53)
  {
    goto LABEL_48;
  }

  v54 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_125;
  }

  if (!sub_1AF640E28(v54))
  {
    goto LABEL_48;
  }

  v56 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    goto LABEL_127;
  }

  v57 = sub_1AF6411A4(v56);
  sub_1AFAF6E24(v109, v109);
  if (v57 != v58)
  {
LABEL_48:
    if ((*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x3A) & 0x80) != 0)
    {
      if (*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
      {
LABEL_70:
        sub_1AFDFE218();

        v76 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v76);

        v60 = 0xD000000000000010;
        v61 = 0x80000001AFF47170;
        goto LABEL_46;
      }
    }

    else if (*((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x38))
    {
      v62 = *((v46 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      v63 = sub_1AFDFDFD8();
      if (!swift_conformsToProtocol2() || v63 == 0)
      {
        goto LABEL_70;
      }

      v65 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_128;
      }

      if (!sub_1AF640E28(v65))
      {
        goto LABEL_70;
      }

      v66 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_130;
      }

      v67 = sub_1AF6411A4(v66);
      sub_1AFAF6E24(v62, v62);
      if (v67 != v68)
      {
        goto LABEL_70;
      }
    }

LABEL_45:
    sub_1AFDFE218();

    v59 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v59);

    v60 = 0x6565746E696F702ELL;
    v61 = 0xE800000000000000;
LABEL_46:
    MEMORY[0x1B2718AE0](v60, v61);
    MEMORY[0x1B2718AE0](0x74756F6E4970, 0xE600000000000000);
LABEL_64:

    sub_1AFA9EF20(v46);
    if (sub_1AFADB4E4(v74, 3u) & 1) == 0 && (v47 & 2) != 0 || (sub_1AFA9EF20(v46), v39 = 0xE000000000000000, (sub_1AFADB4E4(v75, 3u)))
    {
      v39 = 0xE100000000000000;
      v38 = 38;
    }

    else
    {
      v38 = 0;
    }

    goto LABEL_21;
  }

LABEL_60:
  v69 = sub_1AFDFDFD8();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AF6411A4(v69);
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF47190);
    v70 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v70);

    MEMORY[0x1B2718AE0](0x636E617664612E29, 0xEF203A7962286465);
    v71 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v71);

    MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF471B0);
    sub_1AFA9EF20(v46);
    if ((sub_1AFADB4E4(v72, 3u) & 1) == 0)
    {
      sub_1AFA9EF20(v46);
    }

    v73 = sub_1AF75D128();
    MEMORY[0x1B2718AE0](v73);

    MEMORY[0x1B2718AE0](0x702E29666C65732ELL, 0xEE006565746E696FLL);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);
    goto LABEL_64;
  }

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
  return result;
}

uint64_t sub_1AFB081E0(char a1)
{
  v3 = sub_1AFB01F1C(a1);
  if (!v2)
  {
    v4 = v3;
    sub_1AFAFA374();

    MEMORY[0x1B2718AE0](0xD00000000000002ALL, 0x80000001AFF47EF0);

    v5 = sub_1AFB12344(v4);
    MEMORY[0x1B2718AE0](v5);

    v1 = *(v4 + 16);
  }

  return v1;
}

uint64_t sub_1AFB08298()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFB08304(int a1, void *a2, unint64_t a3)
{
  v125 = a1;
  v5 = sub_1AFDFBCE8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v123 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v123 - v16;
  sub_1AFDFBC88();
  sub_1AFDFBC58();
  sub_1AFDFBC98();
  v18 = *(v6 + 8);
  v129 = v9;
  v18(v9, v5);
  v127 = v13;
  v131 = v6 + 8;
  v132 = v5;
  v130 = v18;
  v18(v13, v5);
  v134 = a2;
  v135 = a3;
  v19 = sub_1AF4486E4();
  v124 = v17;
  v128 = v19;
  v20 = sub_1AFDFDE88();
  v21 = 0;
  v22 = v20 + 40;
  v23 = *(v20 + 16) + 1;
  v24 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v25 = (v22 + 16 * v21);
  while (v23 != ++v21)
  {
    v27 = *(v25 - 1);
    v26 = *v25;
    v25 += 2;
    v28 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v28 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v28)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v134 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1AFC05CE4(0, v24[2] + 1, 1);
        v24 = v134;
      }

      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_1AFC05CE4(v30 > 1, v31 + 1, 1);
        v24 = v134;
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      v32[4] = v27;
      v32[5] = v26;
      goto LABEL_2;
    }
  }

  v33 = v24[2];
  if (!v33)
  {
    goto LABEL_21;
  }

  v34 = v24[5];
  v35 = v24[4] & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v34) & 0xF;
  }

  if (!v35)
  {
LABEL_21:

    v130(v124, v132);
    return 0;
  }

  v123[2] = 0;
  v138 = MEMORY[0x1E69E7CC0];
  sub_1AFC05CE4(0, v33, 0);
  v36 = v138;
  v123[1] = v24;
  v37 = v24 + 5;
  v38 = MEMORY[0x1E69E6158];
  do
  {
    v39 = *(v37 - 1);
    v40 = *v37;
    v133 = v33;
    v134 = v39;
    v135 = v40;

    v41 = v36;
    v42 = v127;
    sub_1AFDFBCD8();
    v43 = v129;
    sub_1AFDFBC78();
    sub_1AFDFBCC8();
    v44 = v43;
    v45 = v132;
    v46 = v130;
    v130(v44, v132);
    sub_1AFDFBCA8();
    v47 = sub_1AFDFDE88();
    v48 = v42;
    v36 = v41;
    v46(v48, v45);
    v134 = v47;
    sub_1AFB12AC4(0, &qword_1ED726C70, v38, MEMORY[0x1E69E62F8]);
    v50 = v49;
    v126 = sub_1AF488088();
    v51 = sub_1AFDFCD98();
    v53 = v52;

    v138 = v41;
    v55 = *(v41 + 16);
    v54 = *(v41 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1AFC05CE4(v54 > 1, v55 + 1, 1);
      v36 = v138;
    }

    *(v36 + 16) = v55 + 1;
    v56 = v36 + 16 * v55;
    *(v56 + 32) = v51;
    *(v56 + 40) = v53;
    v37 += 2;
    v33 = v133 - 1;
  }

  while (v133 != 1);
  v129 = v50;

  v58 = 0;
  v59 = *(v36 + 16) + 1;
  v60 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v62 = (v36 + 40 + 16 * v58);
  while (v59 != ++v58)
  {
    v64 = *(v62 - 1);
    v63 = *v62;
    v62 += 2;
    v65 = HIBYTE(v63) & 0xF;
    if ((v63 & 0x2000000000000000) == 0)
    {
      v65 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (v65)
    {

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v134 = v61;
      if ((v66 & 1) == 0)
      {
        sub_1AFC05CE4(0, v61[2] + 1, 1);
        v61 = v134;
      }

      v68 = v61[2];
      v67 = v61[3];
      if (v68 >= v67 >> 1)
      {
        sub_1AFC05CE4(v67 > 1, v68 + 1, 1);
        v61 = v134;
      }

      v61[2] = v68 + 1;
      v69 = &v61[2 * v68];
      v69[4] = v64;
      v69[5] = v63;
      goto LABEL_23;
    }
  }

  v70 = v61[2];
  if (v70)
  {
    v133 = v61;
    v140 = v60;
    sub_1AFC05CE4(0, v70, 0);
    v71 = 0;
    v72 = v140;
    while (1)
    {
      v73 = *(v133 + v71 + 32);
      v74 = *(v133 + v71 + 40);
      if (v125)
      {

        sub_1AFDFD078();
        sub_1AFDFD1F8();
        v75 = sub_1AFDFDDB8();
        v77 = v76;

        v78 = sub_1AF701628();
        v80 = v79;
        v82 = v81;
        v84 = v83;

        v138 = v75;
        v139 = v77;
        v134 = v78;
        v135 = v80;
        v136 = v82;
        v137 = v84;
        sub_1AF725990();
        sub_1AFDFD0A8();
      }

      else
      {
        if (!v71)
        {

          goto LABEL_40;
        }

        sub_1AFDFD078();
        sub_1AFDFD1F8();
        v85 = sub_1AFDFDDB8();
        v87 = v86;

        v88 = sub_1AF701628();
        v90 = v89;
        v92 = v91;
        v94 = v93;

        v138 = v85;
        v139 = v87;
        v134 = v88;
        v135 = v90;
        v136 = v92;
        v137 = v94;
        sub_1AF725990();
        sub_1AFDFD0A8();
      }

      v73 = v138;
      v74 = v139;
LABEL_40:
      v140 = v72;
      v96 = v72[2];
      v95 = v72[3];
      if (v96 >= v95 >> 1)
      {
        sub_1AFC05CE4(v95 > 1, v96 + 1, 1);
        v72 = v140;
      }

      v72[2] = v96 + 1;
      v97 = &v72[2 * v96];
      v97[4] = v73;
      v97[5] = v74;
      v71 += 16;
      if (!--v70)
      {

        goto LABEL_46;
      }
    }
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v134 = v72;
  v98 = sub_1AFDFCD98();
  v100 = v99;

  v101 = HIBYTE(v100) & 0xF;
  if ((v100 & 0x2000000000000000) == 0)
  {
    v101 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (!v101)
  {
    v130(v124, v132);

    return 0;
  }

  v102 = v98;
  v103 = v100;
  if (v125)
  {
    sub_1AF9A0BAC();

    v104 = sub_1AFDFDDA8();
    v106 = v105;

    v107 = sub_1AF701628();
    v109 = v108;
    v111 = v110;
    v113 = v112;

    v138 = v104;
    v139 = v106;
    v134 = v107;
    v135 = v109;
    v136 = v111;
    v137 = v113;
    sub_1AF725990();
    sub_1AFDFD0A8();

    v102 = v138;
    v103 = v139;
  }

  sub_1AFDFD1C8();
  v114 = sub_1AFDFCD48();

  if (v114)
  {
    v134 = v98;
    v135 = v100;
    MEMORY[0x1EEE9AC00](v115, v116);
    v123[-2] = &v134;
    v117 = sub_1AF7B9518(sub_1AFB1283C, &v123[-4], &unk_1F2503978);
    swift_arrayDestroy();

    if ((v117 & 1) == 0)
    {
      sub_1AFDFD1C8();
      v118 = sub_1AFDFCD48();

      if (v118)
      {
        v134 = v102;
        v135 = v103;
        MEMORY[0x1EEE9AC00](v119, v120);
        v123[-2] = &v134;
        v121 = sub_1AF7B9518(sub_1AFB12C44, &v123[-4], &unk_1F2503978);
        swift_arrayDestroy();
        if ((v121 & 1) == 0)
        {
          v130(v124, v132);
          return v102;
        }
      }
    }
  }

  else
  {
  }

  v134 = v102;
  v135 = v103;
  v138 = 95;
  v139 = 0xE100000000000000;
  v138 = sub_1AFDFD1E8();
  v139 = v122;
  sub_1AFDFD0A8();
  v130(v124, v132);

  return v138;
}

uint64_t sub_1AFB08DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a5)
  {
    sub_1AF4486E4();
    if ((sub_1AFDFDF18() & 1) == 0)
    {

      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      MEMORY[0x1B2718AE0](a1, a2);
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
      sub_1AFDFDEB8();

      if ((a6 & 1) == 0)
      {
        return a1;
      }

      goto LABEL_4;
    }
  }

  if (a6)
  {
LABEL_4:
    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AF4486E4();
    sub_1AFDFDEB8();
  }

  return a1;
}

uint64_t sub_1AFB09214(unint64_t a1)
{
  if (((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 8)
  {
    v1 = 0x3165727574786574;
    v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
    v3 = 0x3265727574786574;
    if (v2 != 5)
    {
      v3 = 0x64326874706564;
    }

    v4 = 0x4365727574786574;
    if (v2 != 3)
    {
      v4 = 0x3165727574786574;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21) <= 4u)
    {
      v3 = v4;
    }

    v5 = 0x3265727574786574;
    if (v2 != 1)
    {
      v5 = 0x3365727574786574;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21))
    {
      v1 = v5;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x21) <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB09378(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, unint64_t a8)
{
  LODWORD(v14) = a1 - 1;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_58;
    }

    v70 = sub_1AFA56CA0(&unk_1F25013D0);
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    goto LABEL_6;
  }

  if (!a1)
  {
    v70 = sub_1AFA56CA0(&unk_1F2501498);
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
LABEL_6:
    swift_arrayDestroy();
    goto LABEL_11;
  }

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF47DA0);
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1AFE431C0;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0;
  if (a4)
  {
    v19 = sub_1AFA56CA0(&unk_1F2501128);
    sub_1AFB12A64(&unk_1F2501148, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1AFE4C630;
  *(v20 + 32) = v18;
  *(v20 + 40) = v19;
  *(v20 + 48) = &unk_1F2501150;
  *(v20 + 56) = &unk_1F2501190;
  *(v20 + 64) = &unk_1F25011D0;
  *(v20 + 72) = &unk_1F2501210;
  *(v20 + 80) = &unk_1F2501250;
  v70 = sub_1AFA56CA0(v20);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
LABEL_11:
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](a5, a6);
  MEMORY[0x1B2718AE0](8230, 0xE200000000000000);
  MEMORY[0x1B2718AE0](0x61765F7475706E69, 0xEC0000007365756CLL);
  MEMORY[0x1B2718AE0](0x66667562205B5B20, 0xEB00000000287265);
  v21 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v21);

  MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
  a6 = 0xE900000000000020;
  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v23 = v22;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0x746E6174736E6F63;
  *(inited + 40) = 0xE900000000000020;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v69 = inited;
  if (v14 > 1)
  {
    v68 = MEMORY[0x1E69E7CC0];
    LOBYTE(v14) = v23;
    if ((a7 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x746E6174736E6F63, 0xE900000000000020);
    MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF459E0);
    MEMORY[0x1B2718AE0](0xD00000000000004BLL, 0x80000001AFF47D50);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AFE431C0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0xE000000000000000;
    sub_1AF441DD8();
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    a6 = swift_allocObject();
    *(a6 + 16) = xmmword_1AFE431C0;
    *(a6 + 32) = v25;
    a5 = a6 + 32;
    v68 = sub_1AFA56CA0(a6);
    swift_setDeallocating();
    sub_1AFB12A64(a6 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
    LOBYTE(v14) = v23;
    if ((a7 & 1) == 0)
    {
LABEL_13:
      v67 = MEMORY[0x1E69E7CC0];
      goto LABEL_16;
    }
  }

  v67 = sub_1AFA56CA0(&unk_1F2501508);
  sub_1AFB12A64(&unk_1F2501528, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_16:
  v9 = MEMORY[0x1E69E7CC0];
  v74 = *(a8 + 16);
  if (v74)
  {
    v26 = 0;
    v72 = 0;
    v27 = (a8 + 48);
    v73 = 7;
    v8 = MEMORY[0x1E69E7CC0];
    v71 = v14;
    while (1)
    {
      v28 = *(v27 - 2);
      v77 = *v27;
      v29 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
      v75 = v28;
      v76 = v8;
      if (v29 > 9)
      {
        break;
      }

      if (v29 <= 7)
      {
        if ((v29 - 4) >= 2 && v29 != 1)
        {
LABEL_57:
          sub_1AF444224(v77);
          sub_1AF443EE0(v28);
          a8 = v28;
          sub_1AFDFE218();
          sub_1AFDFE458();
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF47C70);
          goto LABEL_58;
        }

LABEL_34:
        sub_1AF441DD8();
        v38 = swift_initStackObject();
        *(v38 + 16) = xmmword_1AFE431C0;
        *(v38 + 32) = v9;
        v39 = v38 + 32;
        sub_1AF444224(v77);
        sub_1AF443EE0(v28);
        v40 = v38;
        goto LABEL_35;
      }

      if (v29 == 8)
      {
        v45 = sub_1AFB09214(v28);
        v47 = v46;
        sub_1AF444224(v77);
        sub_1AF443EE0(v28);
        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF47CF0);
        v48 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v48);

        MEMORY[0x1B2718AE0](0x74786574205B5B20, 0xEC00000028657275);
        v49 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v49);

        MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
        v50 = v45;
        v51 = swift_initStackObject();
        *(v51 + 16) = xmmword_1AFE431C0;
        *(v51 + 32) = v50;
        *(v51 + 40) = v47;
        ++v72;
        sub_1AF441DD8();
        *(v51 + 48) = 0;
        *(v51 + 56) = 0;
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_1AFE4C620;
        *(v52 + 32) = v51;
        *(v52 + 40) = MEMORY[0x1E69E7CC0];
        v36 = sub_1AFA56CA0(v52);
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
        goto LABEL_36;
      }

      if (*((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x20) >= 2u)
      {
        sub_1AF441DD8();
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_1AFE431C0;
        *(v62 + 32) = v9;
        sub_1AF444224(v77);
        sub_1AF443EE0(v28);
        v57 = sub_1AFA56CA0(v62);
        swift_setDeallocating();
        sub_1AFB12A64(v62 + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        sub_1AF444224(v77);
        sub_1AF443EE0(v28);
        sub_1AFDFE218();

        v53 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v53);

        MEMORY[0x1B2718AE0](0x657474696D65203ELL, 0xEA00000000005F72);
        v54 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v54);

        v55 = swift_initStackObject();
        *(v55 + 16) = xmmword_1AFE431C0;
        *(v55 + 32) = 0xD000000000000019;
        *(v55 + 40) = 0x80000001AFF47CD0;
        v73 += 2;
        sub_1AF441DD8();
        *(v55 + 48) = 0;
        *(v55 + 56) = 0;
        v56 = swift_initStackObject();
        *(v56 + 16) = xmmword_1AFE4C620;
        *(v56 + 32) = v55;
        *(v56 + 40) = MEMORY[0x1E69E7CC0];
        v57 = sub_1AFA56CA0(v56);
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
      }

      sub_1AF441DD8();
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_1AFE431C0;
      *(v40 + 32) = v57;
      v39 = v40 + 32;
LABEL_35:
      v36 = sub_1AFA56CA0(v40);
      swift_setDeallocating();
      sub_1AFB12A64(v39, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_36:
      sub_1AF441DD8();
      v41 = swift_initStackObject();
      *(v41 + 16) = xmmword_1AFE431C0;
      *(v41 + 32) = v36;
      v42 = v41 + 32;
      v43 = sub_1AFA56CA0(v41);
      swift_setDeallocating();
      sub_1AFB12A64(v42, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v8 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF426BC8(0, v76[2] + 1, 1, v76);
      }

      a5 = *(v8 + 16);
      v44 = *(v8 + 24);
      a6 = a5 + 1;
      if (a5 >= v44 >> 1)
      {
        v8 = sub_1AF426BC8(v44 > 1, a5 + 1, 1, v8);
      }

      ++v26;
      v27 += 5;
      sub_1AF443F24(v75);
      sub_1AF444AF4(v77);
      *(v8 + 16) = a6;
      *(v8 + 8 * a5 + 32) = v43;
      if (v74 == v26)
      {
        goto LABEL_56;
      }
    }

    if (v29 > 11 && (v29 - 12) >= 2)
    {
      if (v29 == 14)
      {
        v8 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v9 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
        a6 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        a5 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        LODWORD(v14) = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v30 = v14 == 6 && (v9 | v8 | a6 | a5) == 0;
        a8 = *(v27 - 2);
        if (!v30)
        {
          while (1)
          {
            sub_1AF444224(v77);
            sub_1AF443EE0(a8);
            sub_1AFABCE58(v8, v9, a6, a5, v14);
            sub_1AFDFE218();
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0xD000000000000029, 0x80000001AFF47CA0);
LABEL_58:
            sub_1AFDFE518();
            __break(1u);
          }
        }

        sub_1AF441DD8();
        v31 = swift_initStackObject();
        *(v31 + 16) = xmmword_1AFE431C0;
        *(v31 + 32) = MEMORY[0x1E69E7CC0];
        v32 = v31 + 32;
        sub_1AF444224(v77);
        sub_1AF443EE0(v28);
        v33 = sub_1AFA56CA0(v31);
        swift_setDeallocating();
        v34 = MEMORY[0x1E69E62F8];
        sub_1AFB12A64(v32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        v35 = swift_initStackObject();
        *(v35 + 16) = xmmword_1AFE431C0;
        *(v35 + 32) = v33;
        v14 = v35 + 32;
        v36 = sub_1AFA56CA0(v35);
        swift_setDeallocating();
        v9 = MEMORY[0x1E69E7CC0];
        sub_1AFB12A64(v14, &unk_1ED723290, &type metadata for CodeEmitter.Code, v34, sub_1AFB12AC4);
        LOBYTE(v14) = v71;
      }

      else
      {
        if (v29 != 16 || v28 != 0x8000000000000000)
        {
          goto LABEL_57;
        }

        sub_1AF444224(v77);
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000033, 0x80000001AFF47D10);
        v59 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v59);

        MEMORY[0x1B2718AE0](1566384169, 0xE400000000000000);
        v60 = swift_initStackObject();
        *(v60 + 16) = xmmword_1AFE431C0;
        *(v60 + 32) = 0;
        *(v60 + 40) = 0xE000000000000000;
        ++v73;
        sub_1AF441DD8();
        *(v60 + 48) = 0;
        *(v60 + 56) = 0;
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1AFE4C620;
        *(v61 + 32) = v60;
        *(v61 + 40) = MEMORY[0x1E69E7CC0];
        v36 = sub_1AFA56CA0(v61);
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        v9 = MEMORY[0x1E69E7CC0];
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_56:
  v63 = sub_1AFA56CA0(v8);

  sub_1AF441DD8();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1AFE4C6A0;
  *(v64 + 32) = v70;
  *(v64 + 40) = v69;
  *(v64 + 48) = v68;
  *(v64 + 56) = v67;
  *(v64 + 64) = v63;
  v65 = sub_1AFA56CA0(v64);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v65;
}

uint64_t sub_1AFB0A530(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000042, 0x80000001AFF479B0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000005ALL, 0x80000001AFF47A00);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF47A60);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  if (a3 <= 1u)
  {
    if (a3)
    {

      return 0;
    }

    else
    {
    }

    return a1;
  }

  a1 = 0;
  if (a3 == 3)
  {

    return a1;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003DLL, 0x80000001AFF47970);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0A7A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x6C61636F6C5F7369, 0xEB00000000203F20);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](0xD000000000000045, 0x80000001AFF47A80);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF47AD0);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  if (a3 <= 1u || a3 == 3)
  {

    return 0;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003ELL, 0x80000001AFF47B10);
    MEMORY[0x1B2718AE0](0, 0xE000000000000000);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0A9F4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v6 = 0xE400000000000000;
  v7 = 2054780974;
  if (a4 == 2)
  {
    v7 = 7960622;
    v6 = 0xE300000000000000;
  }

  if (a4 == 1)
  {
    v8 = 30766;
  }

  else
  {
    v8 = v7;
  }

  if (a4 == 1)
  {
    v9 = 0xE200000000000000;
  }

  else
  {
    v9 = v6;
  }

  sub_1AFDFE218();

  v13 = v8;
  MEMORY[0x1B2718AE0](v8, v9);

  sub_1AFDFE218();

  strcpy(v15, "is_local ? ");
  BYTE5(v15[1]) = 0;
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](673200672, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](2109216, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF47B50);
  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
  v10 = v15[0];
  sub_1AFDFE218();

  strcpy(v15, "is_local ? (");
  HIWORD(v15[1]) = -5120;
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF47B50);
  MEMORY[0x1B2718AE0](2107936, 0xE300000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  MEMORY[0x1B2718AE0](540680233, 0xE400000000000000);
  MEMORY[0x1B2718AE0](a1, a2);
  v11 = v15[0];
  if (a3 <= 1u)
  {
    if (!a3)
    {

      return v10;
    }

LABEL_13:

    return v11;
  }

  if (a3 == 3)
  {
    goto LABEL_13;
  }

  if (a3 == 4)
  {

    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](v15[0], v15[1]);

    MEMORY[0x1B2718AE0](0xD000000000000036, 0x80000001AFF47B70);
    MEMORY[0x1B2718AE0](v13, v9);

    return 0;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0AD44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 3)
    {
      return 0xD00000000000003BLL;
    }

    else if (a3 == 4)
    {
      return 0xD00000000000004ALL;
    }

    else
    {
      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  else if (a3)
  {
    return 0xD000000000000022;
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1AFB0AE44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1AFDFE218();

      v6 = 0xD000000000000018;
LABEL_8:
      MEMORY[0x1B2718AE0](a1, a2);
      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      return v6;
    }

LABEL_5:

    return a1;
  }

  if (a3 == 3)
  {
    goto LABEL_5;
  }

  if (a3 == 4)
  {
    v6 = 0;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000003DLL, 0x80000001AFF47970);
    goto LABEL_8;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFB0AFA0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    if (a2 == 2)
    {
      v4 = 0xD000000000000049;
    }

    else
    {
      v4 = 0xD00000000000007DLL;
    }

    v125 = v4;
    if (a2 == 2)
    {
      v5 = "camera_position(camera_index)";
    }

    else
    {
      v5 = "fragment_in_primitive_id";
    }

    v124 = v5 | 0x8000000000000000;
    v6 = a1 + 64;
    v7 = &unk_1ED723290;
    v8 = &type metadata for CodeEmitter.Code;
    v132 = MEMORY[0x1E69E7CC0];
    v130 = *(a1 + 16);
    while (1)
    {
      v9 = *(v6 - 32);
      v10 = *(v6 - 16);
      v11 = (v9 >> 59) & 0x1E | (v9 >> 2) & 1;
      v131 = v10;
      if (v11 <= 9)
      {
        break;
      }

      if (v11 <= 12)
      {
        if (v11 == 10)
        {
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
          sub_1AFDFE218();

          strcpy(v133, "particle_data_");
          HIBYTE(v133[1]) = -18;
        }

        else
        {
          if (v11 == 11)
          {
            v18 = *(v6 - 16);
            v19 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == 0x44496E77617073 && *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == 0xE700000000000000;
            if (v19 || (v20 = sub_1AFDFEE28(), v18 = v131, (v20 & 1) != 0))
            {
              sub_1AF444224(v18);
              sub_1AF443EE0(v9);

              v21 = sub_1AFA56CA0(&unk_1F2502820);
              sub_1AFB12A64(&unk_1F2502840, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            }

            else
            {
              sub_1AF444224(v131);
              sub_1AF443EE0(v9);

              v21 = MEMORY[0x1E69E7CC0];
            }

            v56 = v8;
            v57 = v7;
            sub_1AF441DD8();
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1AFE431C0;
            *(inited + 32) = v21;
            v59 = inited + 32;
            v40 = sub_1AFA56CA0(inited);

            swift_setDeallocating();
            sub_1AFB12A64(v59, v57, v56, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            v2 = v130;
            v7 = v57;
            v8 = v56;
            goto LABEL_126;
          }

LABEL_47:
          v133[0] = 0xD000000000000012;
          v133[1] = 0x80000001AFF478D0;
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
        }

        v50 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v50);

        v51 = v133[0];
        v52 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1AFE431C0;
        *(v49 + 32) = v51;
        *(v49 + 40) = v52;
        sub_1AF441DD8();
        *(v49 + 48) = 0;
        *(v49 + 56) = 0;
LABEL_49:
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1AFE431C0;
        *(v53 + 32) = v49;
        v40 = sub_1AFA56CA0(v53);
        swift_setDeallocating();
        sub_1AFB12A64(v53 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        goto LABEL_50;
      }

      switch(v11)
      {
        case 13:
          sub_1AF444224(v10);
          sub_1AF443EE0(v9);
          v42 = &unk_1F2501640;
          break;
        case 14:
          v23 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
          v22 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
          v24 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v25 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v26 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          v128 = v24;
          v129 = v22;
          v127 = v25;
          v126 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v26 > 2)
          {
            if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30) <= 4u)
            {
              if (v26 == 3)
              {
                v27 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                v29 = *(v23 + 16);
                v30 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
                v31 = *(v28 + 24);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFABCE58(v28, v22, v27, v30, 3);
                sub_1AFDFE218();

                v133[0] = 0xD000000000000010;
                v133[1] = 0x80000001AFF477B0;
                MEMORY[0x1B2718AE0](v29, v31);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
              }

              else
              {
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFABCE58(v23, v22, v24, v25, 4);
                sub_1AFDFE218();

                v133[0] = 0xD000000000000010;
                v133[1] = 0x80000001AFF477B0;
                MEMORY[0x1B2718AE0](v23, v22);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v28 = v23;
              }

              v32 = swift_initStackObject();
              *(v32 + 16) = xmmword_1AFE431C0;
              *(v32 + 32) = 0xD000000000000010;
              *(v32 + 40) = 0x80000001AFF477B0;
              sub_1AF441DD8();
              *(v32 + 48) = 0;
              *(v32 + 56) = 0;
              v79 = swift_initStackObject();
              *(v79 + 16) = xmmword_1AFE431C0;
              *(v79 + 32) = v32;
              v80 = v79 + 32;
              v70 = sub_1AFA56CA0(v79);
              swift_setDeallocating();
              v7 = &unk_1ED723290;
              sub_1AFB12A64(v80, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              v2 = v130;
              goto LABEL_125;
            }

            if (v26 != 5)
            {
              v123 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              if (!(v24 | v22 | v23 | v25))
              {
                goto LABEL_135;
              }

              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              v81 = sub_1AFA56CA0(&unk_1F25020D0);
              v82 = MEMORY[0x1E69E62F8];
              v7 = &unk_1ED723290;
              sub_1AFB12A64(&unk_1F25020F0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              sub_1AF441DD8();
              v83 = swift_initStackObject();
              *(v83 + 16) = xmmword_1AFE431C0;
              *(v83 + 32) = v81;
              v84 = v83 + 32;
              v70 = sub_1AFA56CA0(v83);
              swift_setDeallocating();
              v8 = &type metadata for CodeEmitter.Code;
              sub_1AFB12A64(v84, &unk_1ED723290, &type metadata for CodeEmitter.Code, v82, sub_1AFB12AC4);
              v2 = v130;
              v28 = v123;
              goto LABEL_125;
            }

            v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
            switch(v28)
            {
              case 5:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502138;
                goto LABEL_122;
              case 6:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25021A0;
                goto LABEL_122;
              case 7:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502208;
                goto LABEL_122;
              case 8:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502270;
                goto LABEL_122;
              case 9:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25022D8;
                goto LABEL_122;
              case 10:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502340;
                goto LABEL_122;
              case 11:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25023A8;
                goto LABEL_122;
              case 12:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502410;
                goto LABEL_122;
              case 13:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502548;
                goto LABEL_122;
              case 14:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502478;
                goto LABEL_122;
              case 15:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25024E0;
                goto LABEL_122;
              case 16:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502618;
                goto LABEL_122;
              case 17:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502680;
                goto LABEL_122;
              case 18:
                v133[0] = 0;
                v133[1] = 0xE000000000000000;
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF477F0);
                MEMORY[0x1B2718AE0](0xD00000000000007DLL, 0x80000001AFF256A0);
                MEMORY[0x1B2718AE0](0xD00000000000003CLL, 0x80000001AFF47810);
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v94 = swift_initStackObject();
                *(v94 + 16) = xmmword_1AFE431C0;
                *(v94 + 32) = 0;
                *(v94 + 40) = 0xE000000000000000;
                sub_1AF441DD8();
                *(v94 + 48) = 0;
                *(v94 + 56) = 0;
                v95 = swift_initStackObject();
                *(v95 + 16) = xmmword_1AFE431C0;
                *(v95 + 32) = v94;
                v96 = v95 + 32;
                v97 = sub_1AFA56CA0(v95);
                swift_setDeallocating();
                v98 = MEMORY[0x1E69E62F8];
                v99 = v96;
                break;
              case 19:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25025B0;
                goto LABEL_122;
              case 20:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25026E8;
                goto LABEL_122;
              case 21:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F2502750;
                goto LABEL_122;
              case 22:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v55 = &unk_1F25027B8;
LABEL_122:
                v106 = sub_1AFA56CA0(v55);
                v98 = MEMORY[0x1E69E62F8];
                v99 = v55 + 32;
                v97 = v106;
                break;
              default:
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v28 = v23;
                v100 = sub_1AFB0AE44(0xD00000000000002DLL, 0x80000001AFF47850, v23);
                v102 = v101;
                sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                v103 = swift_initStackObject();
                *(v103 + 16) = xmmword_1AFE431C0;
                *(v103 + 32) = v100;
                *(v103 + 40) = v102;
                sub_1AF441DD8();
                *(v103 + 48) = 0;
                *(v103 + 56) = 0;
                v104 = swift_initStackObject();
                *(v104 + 16) = xmmword_1AFE431C0;
                *(v104 + 32) = v103;
                v105 = v104 + 32;
                v97 = sub_1AFA56CA0(v104);
                swift_setDeallocating();
                v98 = MEMORY[0x1E69E62F8];
                v99 = v105;
                break;
            }

            sub_1AFB12A64(v99, v7, v8, v98, sub_1AFB12AC4);
            sub_1AF441DD8();
            v107 = swift_initStackObject();
            *(v107 + 16) = xmmword_1AFE431C0;
            *(v107 + 32) = v97;
            v108 = v107 + 32;
            v70 = sub_1AFA56CA0(v107);
            swift_setDeallocating();
            v78 = MEMORY[0x1E69E62F8];
            v75 = v108;
            v76 = v7;
            v77 = v8;
LABEL_124:
            sub_1AFB12A64(v75, v76, v77, v78, sub_1AFB12AC4);
LABEL_125:
            sub_1AF441DD8();
            v109 = swift_initStackObject();
            *(v109 + 16) = xmmword_1AFE431C0;
            *(v109 + 32) = v70;
            v110 = v109 + 32;
            v40 = sub_1AFA56CA0(v109);
            sub_1AFABCF1C(v28, v129, v128, v127, v126);
            swift_setDeallocating();
            sub_1AFB12A64(v110, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            goto LABEL_126;
          }

          if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
          {
            if (v26 != 1)
            {
              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              v71 = off_1E7A80030[v23];
              v122 = sub_1AFA56CA0(*(&off_1E7A80000 + v23));
              v72 = MEMORY[0x1E69E62F8];
              sub_1AFB12A64(v71, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              sub_1AF441DD8();
              v73 = swift_initStackObject();
              *(v73 + 16) = xmmword_1AFE431C0;
              v28 = v23;
              *(v73 + 32) = v122;
              v74 = v73 + 32;
              v70 = sub_1AFA56CA0(v73);
              v8 = &type metadata for CodeEmitter.Code;
              swift_setDeallocating();
              v75 = v74;
              v76 = v7;
              v77 = &type metadata for CodeEmitter.Code;
              v78 = v72;
              v2 = v130;
              goto LABEL_124;
            }

            if (v22 <= 3)
            {
              if (v22 > 1)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                if (v22 == 2)
                {
                  v54 = &unk_1F2501848;
                }

                else
                {
                  v54 = &unk_1F25018B0;
                }

                goto LABEL_99;
              }

              if (!v22)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                v54 = &unk_1F25017E0;
                goto LABEL_99;
              }

              if (v22 != 1)
              {
                goto LABEL_102;
              }

              v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
              sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
              v85 = swift_allocObject();
              *(v85 + 16) = xmmword_1AFE431C0;
              *(v85 + 32) = v125;
              *(v85 + 40) = v124;
              sub_1AF441DD8();
              *(v85 + 48) = 0;
              *(v85 + 56) = 0;
              v86 = swift_allocObject();
              *(v86 + 16) = xmmword_1AFE431C0;
              *(v86 + 32) = v85;
              v87 = v86 + 32;
              sub_1AF444224(v131);
              sub_1AF443EE0(v9);
              v88 = v86;
LABEL_103:
              v91 = sub_1AFA56CA0(v88);
              swift_setDeallocating();
              sub_1AFB12A64(v87, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
              swift_deallocClassInstance();
            }

            else
            {
              if (v22 <= 5)
              {
                v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                sub_1AF444224(v10);
                sub_1AF443EE0(v9);
                if (v22 == 4)
                {
                  v54 = &unk_1F2501918;
                }

                else
                {
                  v54 = &unk_1F2501980;
                }
              }

              else
              {
                switch(v22)
                {
                  case 6:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v54 = &unk_1F25019E8;
                    break;
                  case 7:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v54 = &unk_1F2501A50;
                    break;
                  case 8:
                    v28 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    v54 = &unk_1F2501AB8;
                    break;
                  default:
LABEL_102:
                    v133[0] = 3043177;
                    v133[1] = 0xE300000000000000;
                    sub_1AF444224(v10);
                    sub_1AF443EE0(v9);
                    sub_1AFABCE58(v23, v22, v24, v25, 1);
                    v28 = v23;
                    MEMORY[0x1B2718AE0](v23, v22);
                    sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
                    v93 = swift_allocObject();
                    *(v93 + 16) = xmmword_1AFE431C0;
                    *(v93 + 32) = 3043177;
                    *(v93 + 40) = 0xE300000000000000;
                    sub_1AF441DD8();
                    *(v93 + 48) = 0;
                    *(v93 + 56) = 0;
                    v88 = swift_allocObject();
                    *(v88 + 16) = xmmword_1AFE431C0;
                    *(v88 + 32) = v93;
                    v87 = v88 + 32;
                    goto LABEL_103;
                }
              }

LABEL_99:
              v89 = sub_1AFA56CA0(v54);
              v90 = v54 + 32;
              v91 = v89;
              sub_1AFB12A64(v90, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            }

            sub_1AF441DD8();
            v92 = swift_allocObject();
            *(v92 + 16) = xmmword_1AFE431C0;
            *(v92 + 32) = v91;
            v70 = sub_1AFA56CA0(v92);
            swift_setDeallocating();
            sub_1AFB12A64(v92 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          }

          else
          {
            sub_1AF444224(v10);
            sub_1AF443EE0(v9);
            v66 = off_1E7A7FFC0[v23];
            v121 = sub_1AFA56CA0(*(&off_1E7A7FF80 + v23));
            v67 = MEMORY[0x1E69E62F8];
            sub_1AFB12A64(v66, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
            sub_1AF441DD8();
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_1AFE431C0;
            v28 = v23;
            *(v68 + 32) = v121;
            v69 = v68 + 32;
            v70 = sub_1AFA56CA0(v68);
            swift_setDeallocating();
            v2 = v130;
            sub_1AFB12A64(v69, v7, &type metadata for CodeEmitter.Code, v67, sub_1AFB12AC4);
            v8 = &type metadata for CodeEmitter.Code;
          }

          swift_deallocClassInstance();
          goto LABEL_125;
        case 16:
          if (v9 == 0x8000000000000000)
          {
            sub_1AF444224(v10);
            v42 = &unk_1F25015D8;
          }

          else
          {
            if (v9 != 0x8000000000000010)
            {
LABEL_134:
              v133[0] = 0;
              v133[1] = 0xE000000000000000;
              sub_1AF444224(v10);
              sub_1AF443EE0(v9);
              sub_1AFDFE218();
              sub_1AFDFE458();
              MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
              goto LABEL_135;
            }

            sub_1AF444224(v10);
            v42 = &unk_1F2501570;
          }

          break;
        default:
          goto LABEL_134;
      }

      v40 = sub_1AFA56CA0(v42);
      sub_1AFB12A64(v42 + 32, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
LABEL_126:
      sub_1AF441DD8();
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_1AFE431C0;
      *(v111 + 32) = v40;
      v112 = v111 + 32;
      v113 = sub_1AFA56CA0(v111);
      swift_setDeallocating();
      sub_1AFB12A64(v112, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v132 = sub_1AF426BC8(0, v132[2] + 1, 1, v132);
      }

      v115 = v132[2];
      v114 = v132[3];
      if (v115 >= v114 >> 1)
      {
        v132 = sub_1AF426BC8(v114 > 1, v115 + 1, 1, v132);
      }

      ++v3;
      sub_1AF443F24(v9);
      sub_1AF444AF4(v131);
      v132[2] = v115 + 1;
      v132[v115 + 4] = v113;
      v6 += 40;
      if (v2 == v3)
      {
        goto LABEL_133;
      }
    }

    if (v11 > 3)
    {
      if ((v11 - 4) < 2)
      {
        goto LABEL_47;
      }

      if (v11 == 8)
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x21);
        if (v12 >= 3)
        {
          while (1)
          {
            v133[0] = 0;
            v133[1] = 0xE000000000000000;
            sub_1AF444224(v10);
            sub_1AF443EE0(v9);
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF461F0);
            sub_1AFDFE458();
LABEL_135:
            v10 = sub_1AFDFE518();
            __break(1u);
          }
        }

        v13 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x23);
        v14 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x22);
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        sub_1AFDFE218();

        strcpy(v133, "vfx_sampler");
        HIDWORD(v133[1]) = -352321536;
        MEMORY[0x1B2718AE0](v12 + 25649, 0xE200000000000000);

        MEMORY[0x1B2718AE0](0x7574786574207B20, 0xEB000000005F6572);
        v15 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v15);

        MEMORY[0x1B2718AE0](0x656C706D6173202CLL, 0xEA00000000002872);
        if (v14 > 1)
        {
          v7 = &unk_1ED723290;
          if (v14 == 2)
          {
            v16 = 0x3A73736572646461;
            v17 = 0xEF7461657065723ALL;
          }

          else
          {
            v16 = 0xD000000000000018;
            v17 = 0x80000001AFF478F0;
          }
        }

        else
        {
          v7 = &unk_1ED723290;
          v16 = 0xD000000000000016;
          if (v14)
          {
            v17 = 0x80000001AFF47930;
          }

          else
          {
            v17 = 0x80000001AFF47910;
          }
        }

        MEMORY[0x1B2718AE0](v16, v17);

        MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
        if (v13)
        {
          v60 = 0xEE007261656E696CLL;
        }

        else
        {
          v60 = 0xEF7473657261656ELL;
        }

        MEMORY[0x1B2718AE0](0x3A3A7265746C6966, v60);

        MEMORY[0x1B2718AE0](8200233, 0xE300000000000000);
        v61 = v133[0];
        v62 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_1AFE431C0;
        *(v63 + 32) = v61;
        *(v63 + 40) = v62;
        sub_1AF441DD8();
        *(v63 + 48) = 0;
        *(v63 + 56) = 0;
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1AFE431C0;
        *(v64 + 32) = v63;
        v65 = v64 + 32;
        v40 = sub_1AFA56CA0(v64);
        swift_setDeallocating();
        sub_1AFB12A64(v65, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        swift_deallocClassInstance();
        v2 = v130;
        goto LABEL_126;
      }

      if (v11 != 9)
      {
        goto LABEL_134;
      }

      if (*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20) >= 2u)
      {
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        v49 = sub_1AFA56CA0(&unk_1F25016A8);
        sub_1AFB12A64(&unk_1F25016C8, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      }

      else
      {
        sub_1AF444224(v10);
        sub_1AF443EE0(v9);
        sub_1AFDFE218();

        strcpy(v133, "emitter_");
        BYTE1(v133[1]) = 0;
        WORD1(v133[1]) = 0;
        HIDWORD(v133[1]) = -402653184;
        v43 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v43);

        MEMORY[0x1B2718AE0](0x28706172776E752ELL, 0xE900000000000029);
        v44 = v133[0];
        v45 = v133[1];
        sub_1AFB12AC4(0, &qword_1EB638390, v8, MEMORY[0x1E69E6F90]);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_1AFE431C0;
        *(v46 + 32) = v44;
        *(v46 + 40) = v45;
        sub_1AF441DD8();
        *(v46 + 48) = 0;
        *(v46 + 56) = 0;
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1AFE431C0;
        *(v47 + 32) = v46;
        v48 = v47 + 32;
        v49 = sub_1AFA56CA0(v47);
        swift_setDeallocating();
        sub_1AFB12A64(v48, v7, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
        swift_deallocClassInstance();
      }

      sub_1AF441DD8();
      goto LABEL_49;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_134;
      }

      goto LABEL_47;
    }

    v33 = *(v9 + 16);
    sub_1AF444224(v10);
    sub_1AF443EE0(v9);
    if (v33)
    {
      v34 = &unk_1F2501778;
    }

    else
    {
      v34 = &unk_1F2501710;
    }

    if (v33)
    {
      v35 = &unk_1F2501798;
    }

    else
    {
      v35 = &unk_1F2501730;
    }

    v36 = sub_1AFA56CA0(v34);
    v37 = MEMORY[0x1E69E62F8];
    sub_1AFB12A64(v35, &unk_1ED723290, v8, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AF441DD8();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1AFE431C0;
    *(v38 + 32) = v36;
    v39 = v38 + 32;
    v40 = sub_1AFA56CA0(v38);
    swift_setDeallocating();
    v41 = v37;
    v2 = v130;
    v7 = &unk_1ED723290;
    sub_1AFB12A64(v39, &unk_1ED723290, &type metadata for CodeEmitter.Code, v41, sub_1AFB12AC4);
    v8 = &type metadata for CodeEmitter.Code;
LABEL_50:
    swift_deallocClassInstance();
    goto LABEL_126;
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_133:
  v116 = sub_1AFA56CA0(v132);

  sub_1AF441DD8();
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1AFE431C0;
  *(v117 + 32) = v116;
  v118 = v117 + 32;
  v119 = sub_1AFA56CA0(v117);
  swift_setDeallocating();
  sub_1AFB12A64(v118, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  swift_deallocClassInstance();
  return v119;
}

uint64_t sub_1AFB0CB50(char a1, unsigned int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v14 = sub_1AFA56CA0(&unk_1F2502888);
    sub_1AFB12A64(&unk_1F25028A8, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v127 = v14;
  v128 = a7;
  v129 = a8;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      goto LABEL_108;
    }

    if (a1)
    {
      v20 = sub_1AFA56CA0(&unk_1F2502A80);
      sub_1AFB12A64(&unk_1F2502AA0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1AF441DD8();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AFE4C680;
    *(v22 + 32) = &unk_1F25029C0;
    *(v22 + 40) = &unk_1F2502A00;
    *(v22 + 48) = v20;
    v126 = sub_1AFA56CA0(v22);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    goto LABEL_20;
  }

  if (!a2)
  {
    if (a3)
    {
      v15 = &unk_1F25028F0;
    }

    else
    {
      v15 = &unk_1F2502958;
    }

    if (a3)
    {
      v16 = &unk_1F2502910;
    }

    else
    {
      v16 = &unk_1F2502978;
    }

    v17 = sub_1AFA56CA0(v15);
    v18 = MEMORY[0x1E69E62F8];
    sub_1AFB12A64(v16, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    sub_1AF441DD8();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE4C620;
    *(v19 + 32) = v17;
    *(v19 + 40) = &unk_1F2502980;
    v126 = sub_1AFA56CA0(v19);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v18);
    swift_arrayDestroy();
LABEL_20:
    swift_deallocClassInstance();
    goto LABEL_23;
  }

  if (a1)
  {
    v21 = sub_1AFA56CA0(&unk_1F2502B68);
    sub_1AFB12A64(&unk_1F2502B88, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1AF441DD8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = &unk_1F2502AA8;
  *(inited + 40) = &unk_1F2502AE8;
  *(inited + 48) = v21;
  v126 = sub_1AFA56CA0(inited);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
LABEL_23:
  v131 = a2;
  v24 = *(a4 + 16);
  v130 = a4;
  v138 = v24;
  if (v24)
  {
    v25 = 0;
    v26 = a4 + 64;
    v144 = MEMORY[0x1E69E7CC0];
    v27 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *(v26 - 32);
      v29 = *(v26 - 16);
      v30 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
      v142 = v29;
      if (v30 == 10)
      {
        v34 = *(v26 - 24);
        v139 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x3C);
        sub_1AF443EE0(v28);
        sub_1AF444224(v29);
        sub_1AFA9EF20(v28);
        if (sub_1AFADB4E4(v35, 2u))
        {
          if ((v34 & 2) != 0)
          {
            v36 = MEMORY[0x1E69E6878];
          }

          else
          {
            v36 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(v28);
        }

        v38 = sub_1AFAF9348(v36, 2u);
        v137 = v39;
        sub_1AFDFE218();

        sub_1AFDFDFD8();
        if (!swift_conformsToProtocol2())
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF476E0);
          sub_1AFDFE458();
LABEL_108:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v40 = sub_1AFB7A5C0();
        v42 = v41;

        MEMORY[0x1B2718AE0](v40, v42);

        MEMORY[0x1B2718AE0](0x2964697028, 0xE500000000000000);
        v43 = 0xEA00000000002E73;
        if (v139 == 5)
        {
          v140 = 0x656C636974726170;
          v27 = MEMORY[0x1E69E7CC0];
          v135 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          sub_1AFDFDFD8();
          v44 = swift_conformsToProtocol2();
          v45 = MEMORY[0x1E69E7CC0];
          if (!v44)
          {
            goto LABEL_106;
          }

          if (swift_dynamicCastMetatype())
          {
            v140 = sub_1AFB0A530(0x656C636974726170, 0xEA00000000002E73, v139);
            v132 = v46;
          }

          else if (swift_dynamicCastMetatype())
          {
            v140 = sub_1AFB0A7A0(0x656C636974726170, 0xEA00000000002E73, v139);
            v132 = v47;
          }

          else if (swift_dynamicCastMetatype())
          {
            v140 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v139, 1);
            v132 = v48;
          }

          else if (swift_dynamicCastMetatype())
          {
            v140 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v139, 2);
            v132 = v49;
          }

          else if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
          {
            v140 = sub_1AFB0A9F4(0x656C636974726170, 0xEA00000000002E73, v139, 3);
            v132 = v50;
          }

          else
          {
            if (!swift_dynamicCastMetatype())
            {
              goto LABEL_107;
            }

            v140 = sub_1AFB0AD44(0x656C636974726170, 0xEA00000000002E73, v139);
            v132 = v67;
          }

          sub_1AF441DD8();
          v51 = swift_initStackObject();
          *(v51 + 16) = xmmword_1AFE431C0;
          *(v51 + 32) = v45;
          v52 = v51 + 32;
          v53 = sub_1AFA56CA0(v51);
          swift_setDeallocating();
          v54 = MEMORY[0x1E69E62F8];
          sub_1AFB12A64(v52, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
          v55 = swift_initStackObject();
          *(v55 + 16) = xmmword_1AFE431C0;
          *(v55 + 32) = v53;
          v56 = v55 + 32;
          v135 = sub_1AFA56CA0(v55);
          swift_setDeallocating();
          v57 = v54;
          v27 = MEMORY[0x1E69E7CC0];
          sub_1AFB12A64(v56, &unk_1ED723290, &type metadata for CodeEmitter.Code, v57, sub_1AFB12AC4);
          v43 = v132;
        }

        sub_1AFDFE218();

        MEMORY[0x1B2718AE0](0x6C63697472617020, 0xEF5F617461645F65);
        v58 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v58);

        MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
        MEMORY[0x1B2718AE0](v140, v43);

        MEMORY[0x1B2718AE0](59, 0xE100000000000000);
        sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_1AFE431C0;
        *(v59 + 32) = v38;
        *(v59 + 40) = v137;
        sub_1AF441DD8();
        *(v59 + 48) = 0;
        *(v59 + 56) = 0;
        v60 = swift_initStackObject();
        *(v60 + 16) = xmmword_1AFE4C620;
        *(v60 + 32) = v135;
        *(v60 + 40) = v59;
        v31 = sub_1AFA56CA0(v60);
        swift_setDeallocating();
        sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
        swift_arrayDestroy();
        v24 = v138;
      }

      else
      {
        if (v30 == 13)
        {
          sub_1AF443EE0(v28);
          sub_1AF444224(v29);
          v31 = sub_1AFA56CA0(&unk_1F2502BD0);
          v32 = MEMORY[0x1E69E62F8];
          v33 = &unk_1F2502BF0;
        }

        else
        {
          sub_1AF441DD8();
          v37 = swift_initStackObject();
          *(v37 + 16) = xmmword_1AFE431C0;
          *(v37 + 32) = v27;
          sub_1AF443EE0(v28);
          sub_1AF444224(v29);
          v31 = sub_1AFA56CA0(v37);
          swift_setDeallocating();
          v32 = MEMORY[0x1E69E62F8];
          v33 = (v37 + 32);
        }

        sub_1AFB12A64(v33, &unk_1ED723290, &type metadata for CodeEmitter.Code, v32, sub_1AFB12AC4);
      }

      sub_1AF441DD8();
      v61 = swift_initStackObject();
      *(v61 + 16) = xmmword_1AFE431C0;
      *(v61 + 32) = v31;
      v62 = v61 + 32;
      v63 = sub_1AFA56CA0(v61);
      swift_setDeallocating();
      sub_1AFB12A64(v62, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      v64 = v144;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_1AF426BC8(0, v144[2] + 1, 1, v144);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_1AF426BC8(v65 > 1, v66 + 1, 1, v64);
      }

      ++v25;
      sub_1AF443F24(v28);
      sub_1AF444AF4(v142);
      v64[2] = v66 + 1;
      v144 = v64;
      v64[v66 + 4] = v63;
      v26 += 40;
      if (v24 == v25)
      {
        goto LABEL_61;
      }
    }
  }

  v144 = MEMORY[0x1E69E7CC0];
LABEL_61:
  v68 = sub_1AFA56CA0(v144);

  v136 = v68;
  if (v131 == 1)
  {

    MEMORY[0x1B2718AE0](0x7B203D2074756F20, 0xEA00000000003B7DLL);
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1AFE431C0;
    *(v69 + 32) = a5;
    *(v69 + 40) = a6;
    sub_1AF441DD8();
    *(v69 + 48) = 0;
    *(v69 + 56) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_1AFE431C0;
    *(v70 + 32) = v69;
    v71 = v70 + 32;
    v134 = sub_1AFA56CA0(v70);
    swift_setDeallocating();
    sub_1AFB12A64(v71, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v72 = v130;
  }

  else
  {
    v72 = v130;
    if (v131 != 2)
    {
      v134 = MEMORY[0x1E69E7CC0];
      goto LABEL_67;
    }

    MEMORY[0x1B2718AE0](0x7D7B203D206F6920, 0xE90000000000003BLL);
    sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1AFE431C0;
    *(v73 + 32) = a5;
    *(v73 + 40) = a6;
    sub_1AF441DD8();
    *(v73 + 48) = 0;
    *(v73 + 56) = 0;
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1AFE4C680;
    *(v74 + 32) = &unk_1F2502BF8;
    *(v74 + 40) = &unk_1F2502C38;
    *(v74 + 48) = v73;
    v134 = sub_1AFA56CA0(v74);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
LABEL_67:

  v75 = sub_1AFA5439C(v128, v129, 0, v72, v131);
  v77 = v76;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  sub_1AFB12AC4(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  v78 = swift_initStackObject();
  *(v78 + 16) = xmmword_1AFE431C0;
  *(v78 + 32) = v75;
  *(v78 + 40) = v77;
  *(v78 + 48) = 0;
  *(v78 + 56) = 0;
  v133 = v78;
  v79 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v80 = 0;
    v81 = (v72 + 48);
    v82 = MEMORY[0x1E69E7CC0];
    do
    {
      v83 = *(v81 - 2);
      v84 = *v81;
      v143 = *v81;
      v141 = v83;
      if (((v83 >> 59) & 0x1E | (v83 >> 2) & 1) == 0xA)
      {
        if ((*(v81 - 1) & 2) != 0)
        {
          sub_1AF443EE0(v83);
          sub_1AF444224(v84);
          sub_1AFDFE218();

          sub_1AFDFDFD8();
          if (!swift_conformsToProtocol2())
          {
            goto LABEL_105;
          }

          sub_1AFB7A5C0();
          v89 = v88;
          v91 = v90;

          MEMORY[0x1B2718AE0](v89, v91);

          MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF47700);
          v92 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v92);

          MEMORY[0x1B2718AE0](15145, 0xE200000000000000);
          v93 = swift_initStackObject();
          *(v93 + 16) = xmmword_1AFE431C0;
          *(v93 + 32) = 0x656C636974726170;
          *(v93 + 40) = 0xEA00000000002E73;
          sub_1AF441DD8();
          *(v93 + 48) = 0;
          *(v93 + 56) = 0;
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1AFE4C620;
          *(v94 + 32) = v79;
          *(v94 + 40) = v93;
          v85 = sub_1AFA56CA0(v94);
          swift_setDeallocating();
          sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
        }

        else
        {
          sub_1AF443EE0(v83);
          sub_1AF444224(v84);
          v85 = v79;
        }

        sub_1AF441DD8();
        v86 = swift_initStackObject();
        *(v86 + 16) = xmmword_1AFE431C0;
        *(v86 + 32) = v85;
        v87 = v86 + 32;
      }

      else
      {
        sub_1AF441DD8();
        v86 = swift_initStackObject();
        *(v86 + 16) = xmmword_1AFE431C0;
        *(v86 + 32) = v79;
        v87 = v86 + 32;
        sub_1AF443EE0(v83);
        sub_1AF444224(v84);
      }

      v95 = sub_1AFA56CA0(v86);
      swift_setDeallocating();
      v96 = MEMORY[0x1E69E62F8];
      sub_1AFB12A64(v87, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
      sub_1AF441DD8();
      v97 = swift_initStackObject();
      *(v97 + 16) = xmmword_1AFE431C0;
      *(v97 + 32) = v95;
      v98 = v97 + 32;
      v99 = sub_1AFA56CA0(v97);
      swift_setDeallocating();
      sub_1AFB12A64(v98, &unk_1ED723290, &type metadata for CodeEmitter.Code, v96, sub_1AFB12AC4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1AF426BC8(0, v82[2] + 1, 1, v82);
      }

      v101 = v82[2];
      v100 = v82[3];
      v79 = MEMORY[0x1E69E7CC0];
      if (v101 >= v100 >> 1)
      {
        v82 = sub_1AF426BC8(v100 > 1, v101 + 1, 1, v82);
      }

      ++v80;
      v81 += 5;
      sub_1AF443F24(v141);
      sub_1AF444AF4(v143);
      v82[2] = v101 + 1;
      v82[v101 + 4] = v99;
    }

    while (v138 != v80);
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
  }

  v102 = sub_1AFA56CA0(v82);

  v103 = MEMORY[0x1E69E7CC0];
  v104 = MEMORY[0x1E69E7CC0];
  if (v131 == 2)
  {
    v105 = v138;
    if (v138)
    {
      v106 = (v130 + 32);
      v107 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v109 = *v106;
        v106 += 5;
        v108 = v109;
        if (((v109 >> 59) & 0x1E | (v109 >> 2) & 1) == 0xE)
        {
          v110 = v108 & 0xFFFFFFFFFFFFFFBLL;
          v111 = *((v108 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
          if (v111 <= 1)
          {
            v112 = *(v110 + 24);
            if (v111 && v112 == 0)
            {
              break;
            }
          }
        }

        if (!--v105)
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
LABEL_95:
      v107 = sub_1AFA56CA0(&unk_1F2502D38);
      sub_1AFB12A64(&unk_1F2502D58, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    }

    sub_1AF441DD8();
    v114 = swift_allocObject();
    *(v114 + 32) = &unk_1F2502C78;
    *(v114 + 16) = xmmword_1AFE4C6B0;
    *(v114 + 40) = &unk_1F2502CB8;
    *(v114 + 48) = v107;
    *(v114 + 56) = &unk_1F2502D60;
    v104 = sub_1AFA56CA0(v114);
    swift_setDeallocating();
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  if (v131 == 1)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000043, 0x80000001AFF47720);
    MEMORY[0x1B2718AE0](0xD00000000000007DLL, 0x80000001AFF256A0);
    MEMORY[0x1B2718AE0](0xD00000000000003BLL, 0x80000001AFF47770);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1AFE431C0;
    *(v115 + 32) = 0;
    *(v115 + 40) = 0xE000000000000000;
    sub_1AF441DD8();
    *(v115 + 48) = 0;
    *(v115 + 56) = 0;
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1AFE4C6A0;
    *(v116 + 32) = &unk_1F2502DA0;
    *(v116 + 40) = v115;
    *(v116 + 48) = &unk_1F2502DE0;
    *(v116 + 56) = &unk_1F2502E20;
    *(v116 + 64) = &unk_1F2502E60;
    v103 = sub_1AFA56CA0(v116);
    swift_setDeallocating();
    v117 = MEMORY[0x1E69E62F8];
    sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v118 = sub_1AFA56CA0(&unk_1F2502F48);
    sub_1AFB12A64(&unk_1F2502F68, &unk_1ED723290, &type metadata for CodeEmitter.Code, v117, sub_1AFB12AC4);
  }

  else if (v131)
  {
    if (v131 != 2)
    {
      goto LABEL_108;
    }

    v118 = sub_1AFA56CA0(&unk_1F2502EE0);
    sub_1AFB12A64(&unk_1F2502F00, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    v103 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1AF441DD8();
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1AFE431C0;
    *(v119 + 32) = v103;
    v120 = v119 + 32;
    v118 = sub_1AFA56CA0(v119);
    swift_setDeallocating();
    sub_1AFB12A64(v120, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8], sub_1AFB12AC4);
    swift_deallocClassInstance();
  }

  sub_1AF441DD8();
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1AFE4C5E0;
  *(v121 + 32) = v127;
  *(v121 + 40) = v126;
  *(v121 + 48) = v136;
  *(v121 + 56) = v134;
  *(v121 + 64) = v133;
  *(v121 + 72) = v102;
  *(v121 + 80) = v104;
  *(v121 + 88) = v103;
  *(v121 + 96) = v118;
  v122 = sub_1AFA56CA0(v121);
  swift_setDeallocating();
  sub_1AFB12AC4(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v122;
}

uint64_t sub_1AFB0E3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v81 = a6;
  v88 = a3;
  v89 = a4;

  MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  v71 = a5;
  if (a8 > 1u)
  {
    if (a8 != 2)
    {
LABEL_76:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v18 = 0xED0000737475706ELL;
    v17 = 0x695F786574726576;
  }

  else
  {
    if (a8)
    {
      v17 = 0x746E656D67617266;
    }

    else
    {
      v17 = 0x5F657475706D6F63;
    }

    if (a8)
    {
      v18 = 0xEF737475706E695FLL;
    }

    else
    {
      v18 = 0xEE00737475706E69;
    }
  }

  v19 = sub_1AFA54200(v17, v18, v81);
  v21 = v20;

  MEMORY[0x1B2718AE0](v19, v21);

  if (!a8)
  {
    v79 = 1;
    v33 = 0xE400000000000000;
    v34 = 1684631414;
LABEL_36:
    v80[0] = v34;
    v80[1] = v33;
    v32 = *(a7 + 16);
    if (v32)
    {
      goto LABEL_39;
    }

LABEL_46:
    v41 = a1;
    v42 = 0;
    goto LABEL_47;
  }

  if (a8 != 1)
  {
    v79 = 1;
    v33 = 0xE200000000000000;
    v34 = 28521;
    goto LABEL_36;
  }

  strcpy(v80, "fragment_out");
  BYTE5(v80[1]) = 0;
  HIWORD(v80[1]) = -5120;
  v22 = sub_1AFA54218();
  MEMORY[0x1B2718AE0](v22);

  v23 = *(a7 + 16);
  if (!v23)
  {
LABEL_38:
    v79 = 0;
    v32 = *(a7 + 16);
    if (!v32)
    {
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  v24 = (a7 + 32);
  while (1)
  {
    v28 = *v24;
    v24 += 5;
    v27 = v28;
    v29 = (v28 >> 59) & 0x1E | (v28 >> 2) & 1;
    if (v29 <= 13)
    {
      if (v29 == 9)
      {
        v31 = v27 & 0xFFFFFFFFFFFFFFBLL;
        if (*(v31 + 32) == 2 && *(v31 + 16) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v29 == 10)
      {
        goto LABEL_32;
      }

      goto LABEL_18;
    }

    if (v29 == 14)
    {
      break;
    }

    if (v29 == 16 && v27 == 0x8000000000000010)
    {
      goto LABEL_32;
    }

LABEL_18:
    if (!--v23)
    {
      goto LABEL_38;
    }
  }

  v25 = v27 & 0xFFFFFFFFFFFFFFBLL;
  if (*(v25 + 48) != 5 || *(v25 + 16) != 9)
  {
    goto LABEL_18;
  }

LABEL_32:
  v79 = 1;
  v32 = *(a7 + 16);
  if (!v32)
  {
    goto LABEL_46;
  }

LABEL_39:
  v35 = (a7 + 32);
  while (1)
  {
    v37 = *v35;
    v35 += 5;
    v36 = v37;
    if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xE)
    {
      v38 = v36 & 0xFFFFFFFFFFFFFFBLL;
      v39 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = *(v38 + 48);
      if (((1 << v40) & 0x3B) == 0 && v40 == 2 && !v39)
      {
        break;
      }
    }

    if (!--v32)
    {
      goto LABEL_46;
    }
  }

  v41 = a1;
  v42 = 1;
LABEL_47:
  v43 = 0x706D6F635F786676;
  v76 = a9;
  v74 = a7;
  if (a8 > 1u)
  {
    if (a8 == 2)
    {
      v44 = 0x786574726576;
      v77 = 0xEA00000000007865;
      v78 = 0xE600000000000000;
      v43 = 0x747265765F786676;
      goto LABEL_53;
    }

    goto LABEL_76;
  }

  if (a8)
  {
    v43 = 0x676172665F786676;
    v44 = 0x746E656D67617266;
    v77 = 0xEC000000746E656DLL;
    v78 = 0xE800000000000000;
  }

  else
  {
    v77 = 0xEB00000000657475;
    v78 = 0xE600000000000000;
    v44 = 0x6C656E72656BLL;
  }

LABEL_53:
  v72 = v41;
  v73 = a2;
  v86 = 0;
  v87 = 0xE000000000000000;
  v45 = &unk_1F2502F80;
  if (a11 < 2)
  {
    v45 = (MEMORY[0x1E69E7CC0] + 16);
  }

  v46 = *v45;
  if (*v45)
  {
    if (a11 >= 2)
    {
      v47 = &unk_1F2502F90;
    }

    else
    {
      v47 = (MEMORY[0x1E69E7CC0] + 32);
    }

    v48 = (v47 + 8);
    do
    {
      v49 = *v48;
      v84 = *(v48 - 1);
      v85 = v49;

      MEMORY[0x1B2718AE0](32, 0xE100000000000000);
      MEMORY[0x1B2718AE0](v84, v85);

      v48 += 2;
      --v46;
    }

    while (v46);
  }

  else
  {
  }

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v44, v78);

  v84 = v80[0];
  v85 = v80[1];

  MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v43, v77);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v80[0], v80[1]);

  v75 = a8;
  v50 = sub_1AFB09378(a8, 28521, 0xE200000000000000, v42, v17, v18, v79, v81);
  v51 = *(v50 + 16);
  if (v51)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v52 = 0;
    v53 = (v50 + 56);
    do
    {
      v57 = *(v53 - 2);
      v58 = *(v53 - 1);
      v59 = *v53;
      v84 = *(v53 - 3);
      v85 = v57;
      v60 = *(v50 + 16) - 1;

      swift_bridgeObjectRetain_n();
      if (v52 != v60)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v59)
      {
        v82 = 539963168;
        v83 = 0xE400000000000000;
        MEMORY[0x1B2718AE0](v58, v59);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v52;
      v53 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v54 = sub_1AFAF888C();
      v56 = v55;

      MEMORY[0x1B2718AE0](v54, v56);
    }

    while (v51 != v52);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v61 = sub_1AFB0CB50(v79, v75, v71 & 1, v74, v80[0], v80[1], v72, v73);

  sub_1AFA5413C(v61);

  v62 = sub_1AFAF888C();
  v64 = v63;

  MEMORY[0x1B2718AE0](v62, v64);

  MEMORY[0x1B2718AE0](125, 0xE100000000000000);

  MEMORY[0x1B2718AE0](v86, v87);

  sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_1AFE431C0;
  if (v75 > 1u)
  {
    v66 = v76;
    if (v75 == 2)
    {
      v68 = 0x747265765F786676;
      v67 = 0xEA00000000007865;
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  v66 = v76;
  v67 = 0xEB00000000657475;
  v68 = 0x706D6F635F786676;
  if (v75)
  {
    v68 = 0x676172665F786676;
    v67 = 0xEC000000746E656DLL;
  }

LABEL_75:
  *(result + 32) = v68;
  *(result + 40) = v67;
  *(result + 48) = v75;
  v69 = v88;
  v70 = v89;
  *v66 = result;
  v66[1] = v69;
  v66[2] = v70;
  v66[3] = 11565;
  v66[4] = 0xE200000000000000;
  return result;
}

uint64_t sub_1AFB0EC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {
    if (!a4)
    {

      return a1;
    }

    v7 = a1;
    v8 = a2;
    goto LABEL_6;
  }

  MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
  v7 = a1;
  v8 = a2;
  if (a4)
  {

    MEMORY[0x1B2718AE0](a1, a2);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);
    MEMORY[0x1B2718AE0](0x545049524353255FLL, 0xEC0000002544495FLL);
    sub_1AFDFDEB8();

LABEL_6:
    MEMORY[0x1B2718AE0](v7, v8);
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](v7, v8);
    sub_1AFDFDEB8();
  }

  return v7;
}

void sub_1AFB0EF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1AFB0EF84@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char **a7@<X8>)
{
  v9 = *a1;
  v30 = a1[3];
  v31 = a1[4];
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

    v11 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    v10 = 0xD00000000000001DLL;
  }

  else
  {
    if (a2)
    {
      v10 = 0xD00000000000001DLL;
    }

    else
    {
      v10 = 0xD000000000000017;
    }

    if (a2)
    {
      v11 = "%PROJECT%_%KIND%_%ORIG_ENTITY%";
    }

    else
    {
      v11 = "vfx_custom_shader_%SCRIPT_ID%";
    }
  }

  v12 = v11 | 0x8000000000000000;
  v32 = v9;

  MEMORY[0x1B2718AE0](v10, v12);
  MEMORY[0x1B2718AE0](686880, 0xE300000000000000);
  v29 = a6;
  if (a6 >= 2)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v13 = 0xD000000000000020;
    v14 = 0x80000001AFF25E80;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = a1[1];
  v16 = a1[2];

  MEMORY[0x1B2718AE0](v13, v14);

  MEMORY[0x1B2718AE0](v15, v16);

  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v10, v12);
  MEMORY[0x1B2718AE0](10, 0xE100000000000000);

  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF47E90);

  v18 = 0x63617073656D616ELL;
  v17 = 0xEA00000000002065;
  v19 = v32;
  v20 = *(v32 + 16);
  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1AFC0DC9C(v32);
    }

    v33 = v19;
    v21 = (v19 + 40);
    do
    {

      MEMORY[0x1B2718AE0](14906, 0xE200000000000000);
      v22 = *(v21 - 1);
      v23 = *v21;

      MEMORY[0x1B2718AE0](v22, v23);

      *(v21 - 1) = v10;
      *v21 = v12;

      v21 += 3;
      --v20;
    }

    while (v20);
    v19 = v33;
  }

  if (v29 >= 2)
  {

    MEMORY[0x1B2718AE0](a5, v29);

    MEMORY[0x1B2718AE0](0x63617073656D616ELL, 0xEA00000000002065);

    v18 = a3;
    v17 = a4;
  }

  *a7 = v19;
  a7[1] = v18;
  a7[2] = v17;
  a7[3] = v30;
  a7[4] = v31;
}

uint64_t sub_1AFB0F318(uint64_t a1, void *a2, unint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;

  v6 = sub_1AFB08304(0, a2, a3);
  if (v7)
  {
    v3[5] = v6;
    v3[6] = v7;
    return v3;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a2, a3);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFB0F3FC()
{
  v2 = v1;
  v3 = v0;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v178 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v181 = (&v175 - v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v175 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v199 = (&v175 - v16);
  v206 = type metadata accessor for MetalFunctionScript(0);
  v177 = *(v206 - 1);
  MEMORY[0x1EEE9AC00](v206, v17);
  v184 = (&v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v250 = (&v175 - v21);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v244 = qword_1ED73B840;
  v245 = 0;
  v246 = 2;
  v247 = 0;
  v248 = 2;
  v249 = 0;
  sub_1AF7044B4(1, &v214);
  v238 = v214;
  v239 = v215;
  v240 = v216;
  v241 = v217 | 1;
  v242 = v218;
  v243 = v219;
  sub_1AF6B06C0(v0[2], &v238, 0x200000000, v220);
  v183 = *&v220[0];
  if (!*&v220[0])
  {
    v167 = &qword_1ED723D10;
    v168 = &off_1F255B630;
    v169 = type metadata accessor for MetalFunctionScript;
    v170 = sub_1AFB12B74;
    v171 = &v214;
LABEL_133:
    sub_1AFB12A64(v171, v167, v169, v168, v170);
    return MEMORY[0x1E69E7CC0];
  }

  v182 = *(&v220[2] + 1);
  v22 = *(&v221 + 1);
  v188 = *(&v222 + 1);
  v228 = *(v220 + 8);
  v229 = *(&v220[1] + 8);
  if (v223 < 1)
  {
    sub_1AFB12A64(&v214, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
    v167 = &qword_1ED725EA0;
    v169 = &type metadata for QueryResult;
    v168 = MEMORY[0x1E69E6720];
    v170 = sub_1AFB12AC4;
    v171 = v220;
    goto LABEL_133;
  }

  if (!*(&v221 + 1))
  {
    v210 = v220[2];
    v211 = v221;
    v212 = v222;
    v213 = v223;
    v208 = v220[0];
    v209 = v220[1];
    sub_1AF5DD298(&v208, v207);
    sub_1AFB12A64(&v214, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
    sub_1AFB12A64(v220, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_135;
  }

  v187 = v188[4];
  v186 = *(v222 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v210 = v220[2];
  v211 = v221;
  v212 = v222;
  v213 = v223;
  v208 = v220[0];
  v209 = v220[1];
  sub_1AF5DD298(&v208, v207);
  v23 = 0;
  v190 = "material property '";
  v24 = MEMORY[0x1E69E7CC0];
  v189 = xmmword_1AFE431C0;
  v191 = v3;
  v193 = v13;
  v180 = v22;
  while (1)
  {
    v203 = v2;
    v185 = v23;
    v25 = (v182 + 48 * v23);
    v26 = *v25;
    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    v204 = v25[1];
    v205 = v27;
    v29 = *(v25 + 4);
    if (v186)
    {
      v30 = *(v25 + 5);
      v31 = *(v30 + 376);

      os_unfair_lock_lock(v31);
      os_unfair_lock_lock(*(v30 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v187);
    v32 = v188;
    v33 = *(v188 + 4);
    v235[0] = *(v188 + 3);
    v235[1] = v33;
    v236 = v188[10];
    v34 = *(*(*(*(v30 + 40) + 16) + 32) + 16) + 1;
    v32[6] = ecs_stack_allocator_allocate(v188[4], 48 * v34, 8);
    v32[7] = v34;
    v32[9] = 0;
    v32[10] = 0;
    v32[8] = 0;
    v35 = v28;
    v202 = v30;
    v36 = sub_1AF64B110(v206, &off_1F255B630, v28, v205, v29, v32);
    v37 = v36;
    if (v35)
    {
      if (v29)
      {
        v192 = *(v177 + 72);
        while (1)
        {
          v204 = v29;
          v39 = *v35;
          v40 = *(*v3 + 104);
          v41 = v40();
          v205 = v35 + 1;
          if (!v41)
          {
            break;
          }

          v42 = sub_1AFDFEE28();

          if ((v42 & 1) == 0)
          {
            if ((v40)(v43) == 1)
            {
              break;
            }

            v44 = sub_1AFDFEE28();

            if ((v44 & 1) == 0)
            {
              v46 = *(v37 + 16);
              v47 = (v40)(v45);
              if (v46 <= 1)
              {
                if (v46)
                {
                  v48 = 0xE600000000000000;
                  v49 = 0x7070636A626FLL;
                }

                else
                {
                  v48 = 0xE100000000000000;
                  v49 = 99;
                }
              }

              else if (v46 == 2)
              {
                v48 = 0xE500000000000000;
                v49 = 0x6C6174656DLL;
              }

              else if (v46 == 3)
              {
                v48 = 0xE500000000000000;
                v49 = 0x7466697773;
              }

              else
              {
                v48 = 0xE200000000000000;
                v49 = 29546;
              }

              if (v47 <= 1u)
              {
                if (v47)
                {
                  v53 = 0xE600000000000000;
                  if (v49 != 0x7070636A626FLL)
                  {
                    goto LABEL_66;
                  }
                }

                else
                {
                  v53 = 0xE100000000000000;
                  if (v49 != 99)
                  {
                    goto LABEL_66;
                  }
                }
              }

              else if (v47 == 2)
              {
                v53 = 0xE500000000000000;
                if (v49 != 0x6C6174656DLL)
                {
                  goto LABEL_66;
                }
              }

              else if (v47 == 3)
              {
                v53 = 0xE500000000000000;
                if (v49 != 0x7466697773)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v53 = 0xE200000000000000;
                if (v49 != 29546)
                {
                  goto LABEL_66;
                }
              }

              if (v48 != v53)
              {
LABEL_66:
                v99 = sub_1AFDFEE28();

                if ((v99 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_52;
              }

              goto LABEL_51;
            }
          }

LABEL_25:
          v50 = *(v37 + 16);
          if (v50 <= 1 && !*(v37 + 16))
          {
            goto LABEL_51;
          }

          v51 = sub_1AFDFEE28();

          if ((v51 & 1) == 0)
          {
            if (v50 != 1)
            {
              v52 = sub_1AFDFEE28();

              if ((v52 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_52;
            }

LABEL_51:
          }

LABEL_52:
          v201 = v24;
          sub_1AFB12BD8(v37, v250, type metadata accessor for MetalFunctionScript);
          v54 = v3[5];
          v198 = v3[6];
          v55 = v202;

          if (v55[184])
          {
            goto LABEL_137;
          }

          v57 = *(*(v56 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v55 + 21) + 4 * v39) + 8);
          v196 = *(*(v55 + 21) + 4 * v39);
          v197 = v57;

          v58 = v206[6];
          v200 = v37;
          v59 = v193;
          sub_1AFB12858(v37 + v58, v193);
          v60 = type metadata accessor for ScriptIndex();
          v61 = *(v60 - 8);
          v62 = *(v61 + 48);
          if (v62(v59, 1, v60) == 1)
          {

            if (v55[184])
            {
              goto LABEL_137;
            }

            v64 = *(*(v55 + 21) + 4 * v39);
            v65 = *(*(v63 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v64 + 8);

            v66 = v199;
            *v199 = v64;
            v66[1] = v65;
            swift_storeEnumTagMultiPayload();
            v67 = v193;
            if (v62(v193, 1, v60) != 1)
            {
              sub_1AF687E28(v67);
            }
          }

          else
          {
            v66 = v199;
            sub_1AFB128EC(v59, v199);
          }

          (*(v61 + 56))(v66, 0, 1, v60);
          v68 = *(v250 + v206[8]);
          if (v68[2])
          {
            v69 = v68[4];
            v70 = v68[5];
          }

          else
          {
            v69 = 0;
            v70 = 0;
          }

          v71 = v196;
          v195 = v196;
          v72 = v250;
          v73 = sub_1AFB08DA4(v69, v70, *v250, v250[1], 1, 1);
          v75 = v74;
          v77 = v76;
          v79 = v78;

          sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
          v80 = swift_allocObject();
          *(v80 + 16) = v189;
          v81 = v206[9];
          *(v80 + 32) = v73;
          *(v80 + 40) = v75;
          v82 = *(v72 + v81);
          *(v80 + 48) = v82;
          v237[0] = v80;
          v237[1] = v77;
          v237[2] = v79;
          v237[3] = 11565;
          v237[4] = 0xE200000000000000;
          sub_1AFB0EF84(v237, v82, 0xD00000000000002FLL, v190 | 0x8000000000000000, 0, 0, v224);

          v194 = &v175;
          v233 = v225;
          v84 = v224[2];
          v85 = v224[1];
          v86 = v224[0];
          MEMORY[0x1EEE9AC00](v83, v87);
          v88 = v197;
          v89 = v198;
          *(&v175 - 6) = v54;
          *(&v175 - 5) = v89;
          *(&v175 - 8) = v71;
          *(&v175 - 7) = v88;
          *(&v175 - 3) = 0x6C656E72656BLL;
          v173 = 0xE600000000000000;
          v90 = v199;
          v174 = v199;
          v91 = v203;
          v196 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v175 - 8), v86);
          v203 = v91;
          v92 = sub_1AFAF8B58(v85, v84, v54, v89, v195 | (v88 << 32), 0x6C656E72656BuLL, 0xE600000000000000, v90);
          v94 = v93;

          sub_1AF585778(&v233);
          sub_1AFB12B14(v250, type metadata accessor for MetalFunctionScript);
          sub_1AF687E28(v90);
          v95 = v202;

          if (v95[184])
          {
            goto LABEL_137;
          }

          v24 = v201;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3 = v191;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_1AF425C8C(0, *(v24 + 2) + 1, 1, v24);
          }

          v98 = *(v24 + 2);
          v97 = *(v24 + 3);
          if (v98 >= v97 >> 1)
          {
            v24 = sub_1AF425C8C(v97 > 1, v98 + 1, 1, v24);
          }

          *(v24 + 2) = v98 + 1;
          v38 = &v24[40 * v98];
          *(v38 + 4) = v196;
          *(v38 + 5) = v92;
          *(v38 + 6) = v94;
          strcpy(v38 + 56, "Kernel Script");
          *(v38 + 35) = -4864;
          v37 = v200;
LABEL_15:
          v37 += v192;
          v35 = v205;
          v29 = v204 - 1;
          if (v204 == 1)
          {
            goto LABEL_128;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_128;
    }

    if (v26 != v204)
    {
      break;
    }

LABEL_128:
    v230 = v183;
    v231 = v228;
    v232 = v229;
    v165 = v203;
    sub_1AF630994(v188, &v230, v235);
    v2 = v165;
    v166 = v202;
    sub_1AF62D29C(v202);
    ecs_stack_allocator_pop_snapshot(v187);
    if (v186)
    {
      os_unfair_lock_unlock(*(v166 + 43));
      os_unfair_lock_unlock(*(v166 + 47));
    }

    v23 = v185 + 1;
    if (v185 + 1 == v180)
    {
      sub_1AFB12A64(&v214, &qword_1ED723D10, type metadata accessor for MetalFunctionScript, &off_1F255B630, sub_1AFB12B74);
      sub_1AFB12A64(v220, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
LABEL_135:
      sub_1AFB12A64(v220, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      return v24;
    }
  }

  v205 = *(v177 + 72);
  v176 = v204 - 1;
  v200 = v36;
  while (2)
  {
    v201 = v24;
    v100 = v37 + v205 * v26;
    v101 = v26;
    v102 = v204;
    while (2)
    {
      v103 = *(*v3 + 104);
      if (!v103())
      {
        goto LABEL_79;
      }

      v104 = sub_1AFDFEE28();

      if (v104)
      {
LABEL_80:
        v112 = *(v100 + 16);
        if (v112 <= 2 && v112 != 1 && v112 != 2)
        {
          goto LABEL_111;
        }

        v113 = sub_1AFDFEE28();

        if (v113)
        {
          goto LABEL_112;
        }

        if (v112 <= 1)
        {
          goto LABEL_111;
        }

        v114 = sub_1AFDFEE28();

        if (v114)
        {
          goto LABEL_112;
        }

        goto LABEL_86;
      }

      if ((v103)(v105) == 1)
      {
LABEL_79:

        goto LABEL_80;
      }

      v106 = sub_1AFDFEE28();

      if (v106)
      {
        goto LABEL_80;
      }

      v108 = *(v100 + 16);
      v109 = (v103)(v107);
      if (v108 <= 1)
      {
        if (v108)
        {
          v110 = 0xE600000000000000;
          v111 = 0x7070636A626FLL;
        }

        else
        {
          v110 = 0xE100000000000000;
          v111 = 99;
        }
      }

      else if (v108 == 2)
      {
        v110 = 0xE500000000000000;
        v111 = 0x6C6174656DLL;
      }

      else if (v108 == 3)
      {
        v110 = 0xE500000000000000;
        v111 = 0x7466697773;
      }

      else
      {
        v110 = 0xE200000000000000;
        v111 = 29546;
      }

      if (v109 <= 1u)
      {
        if (!v109)
        {
          v115 = 0xE100000000000000;
          if (v111 != 99)
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        v115 = 0xE600000000000000;
        if (v111 == 0x7070636A626FLL)
        {
          goto LABEL_106;
        }

LABEL_107:
        v116 = sub_1AFDFEE28();

        if (v116)
        {
          goto LABEL_112;
        }

LABEL_86:
        ++v101;
        v100 += v205;
        if (v102 == v101)
        {
          v24 = v201;
          goto LABEL_128;
        }

        continue;
      }

      break;
    }

    if (v109 == 2)
    {
      v115 = 0xE500000000000000;
      if (v111 != 0x6C6174656DLL)
      {
        goto LABEL_107;
      }
    }

    else if (v109 == 3)
    {
      v115 = 0xE500000000000000;
      if (v111 != 0x7466697773)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v115 = 0xE200000000000000;
      if (v111 != 29546)
      {
        goto LABEL_107;
      }
    }

LABEL_106:
    if (v110 != v115)
    {
      goto LABEL_107;
    }

LABEL_111:

LABEL_112:
    sub_1AFB12BD8(v100, v184, type metadata accessor for MetalFunctionScript);
    v117 = v3[5];
    v197 = v3[6];
    v198 = v117;
    v118 = v202;

    if ((v118[184] & 1) == 0)
    {
      v120 = *(*(v118 + 21) + 4 * v101);
      v196 = *(*(v119 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v120 + 8);

      v121 = v178;
      sub_1AFB12858(v100 + v206[6], v178);
      v122 = type metadata accessor for ScriptIndex();
      v123 = *(v122 - 8);
      v124 = *(v123 + 48);
      if (v124(v121, 1, v122) != 1)
      {
        v128 = v181;
        sub_1AFB128EC(v121, v181);
        goto LABEL_118;
      }

      v195 = v120;

      if ((v118[184] & 1) == 0)
      {
        v126 = *(*(v118 + 21) + 4 * v101);
        v127 = *(*(v125 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v126 + 8);

        v128 = v181;
        *v181 = v126;
        v128[1] = v127;
        swift_storeEnumTagMultiPayload();
        v129 = v178;
        v130 = v124(v178, 1, v122);
        LODWORD(v120) = v195;
        if (v130 != 1)
        {
          sub_1AF687E28(v129);
        }

LABEL_118:
        (*(v123 + 56))(v128, 0, 1, v122);
        v131 = *(v184 + v206[8]);
        if (v131[2])
        {
          v132 = v131[4];
          v133 = v131[5];
        }

        else
        {
          v132 = 0;
          v133 = 0;
        }

        v194 = v120;
        v134 = v184;
        v135 = sub_1AFB08DA4(v132, v133, *v184, v184[1], 1, 1);
        v137 = v136;
        v139 = v138;
        v140 = v120;
        v142 = v141;

        sub_1AFB12AC4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
        v143 = swift_allocObject();
        *(v143 + 16) = v189;
        v144 = v206[9];
        *(v143 + 32) = v135;
        *(v143 + 40) = v137;
        v145 = *(v134 + v144);
        *(v143 + 48) = v145;
        v207[0] = v143;
        v207[1] = v139;
        v207[2] = v142;
        v207[3] = 11565;
        v207[4] = 0xE200000000000000;
        sub_1AFB0EF84(v207, v145, 0xD00000000000002FLL, v190 | 0x8000000000000000, 0, 0, v226);

        v192 = &v175;
        v234 = v227;
        v147 = v226[2];
        v179 = v226[1];
        v148 = v226[0];
        MEMORY[0x1EEE9AC00](v146, v149);
        v150 = v197;
        v151 = v198;
        *(&v175 - 6) = v198;
        *(&v175 - 5) = v150;
        v152 = v196;
        *(&v175 - 8) = v140;
        *(&v175 - 7) = v152;
        *(&v175 - 3) = 0x6C656E72656BLL;
        v173 = 0xE600000000000000;
        v153 = v181;
        v174 = v181;
        v154 = v203;
        v195 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v175 - 8), v148);
        v203 = v154;
        v155 = sub_1AFAF8B58(v179, v147, v151, v150, v194 | (v152 << 32), 0x6C656E72656BuLL, 0xE600000000000000, v153);
        v157 = v156;

        sub_1AF585778(&v234);
        sub_1AFB12B14(v184, type metadata accessor for MetalFunctionScript);
        sub_1AF687E28(v153);
        v158 = v202;

        if ((v158[184] & 1) == 0)
        {

          v159 = swift_isUniquelyReferenced_nonNull_native();
          v3 = v191;
          if ((v159 & 1) == 0)
          {
            v201 = sub_1AF425C8C(0, *(v201 + 2) + 1, 1, v201);
          }

          v161 = *(v201 + 2);
          v160 = *(v201 + 3);
          if (v161 >= v160 >> 1)
          {
            v201 = sub_1AF425C8C(v160 > 1, v161 + 1, 1, v201);
          }

          v26 = v101 + 1;
          v162 = v201;
          *(v201 + 2) = v161 + 1;
          v163 = &v162[40 * v161];
          *(v163 + 4) = v195;
          *(v163 + 5) = v155;
          *(v163 + 6) = v157;
          strcpy(v163 + 56, "Kernel Script");
          *(v163 + 35) = -4864;
          v164 = v176 == v101;
          v24 = v162;
          v37 = v200;
          if (v164)
          {
            goto LABEL_128;
          }

          continue;
        }
      }
    }

    break;
  }

LABEL_137:
  LODWORD(v174) = 0;
  v173 = 204;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

char *sub_1AFB10C2C(uint64_t (*a1)(void, __n128), void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), unint64_t a7, unint64_t a8, void (*a9)(uint64_t *__return_ptr, void *), uint64_t (*a10)(void), void (*a11)(uint64_t, uint64_t), void (*a12)(uint64_t *__return_ptr, void *))
{
  v202 = a7;
  v203 = a8;
  v201 = a6;
  v188 = a5;
  v180 = a3;
  v181 = a4;
  v15 = v12;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v184 = &v179 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v189 = (&v179 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v196 = &v179 - v24;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v179 - v28;
  v204 = a1(0, v27);
  v183 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204, v30);
  v194 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v219 = &v179 - v34;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v256 = qword_1ED73B840;
  v257 = 0;
  v258 = 2;
  v259 = 0;
  v260 = 2;
  v261 = 0;
  a2(&v229, 1);
  v250 = v229;
  v251 = v230;
  v252 = v231;
  v253 = v232 | 1;
  v254 = v233;
  v255 = v234;
  sub_1AF6B06C0(v12[2], &v250, 0x200000000, v235);
  v187 = *&v235[0];
  if (!*&v235[0])
  {
    v171 = sub_1AFB12B74;
    v172 = &v229;
    v173 = v180;
    v174 = v181;
    v175 = v188;
LABEL_147:
    sub_1AFB12A64(v172, v173, v174, v175, v171);
    return MEMORY[0x1E69E7CC0];
  }

  v186 = *(&v235[2] + 1);
  v35 = *(&v236 + 1);
  v193 = *(&v237 + 1);
  v200 = v237;
  v243 = *(v235 + 8);
  v244 = *(&v235[1] + 8);
  if (v238 < 1)
  {
    sub_1AFB12A64(&v229, v180, v181, v188, sub_1AFB12B74);
    v173 = &qword_1ED725EA0;
    v174 = &type metadata for QueryResult;
    v175 = MEMORY[0x1E69E6720];
    v171 = sub_1AFB12AC4;
    v172 = v235;
    goto LABEL_147;
  }

  if (!*(&v236 + 1))
  {
    v225 = v235[2];
    v226 = v236;
    v227 = v237;
    v228 = v238;
    v223 = v235[0];
    v224 = v235[1];
    sub_1AF5DD298(&v223, v221);
    sub_1AFB12A64(&v229, v180, v181, v188, sub_1AFB12B74);
    sub_1AFB12A64(v235, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v220 = MEMORY[0x1E69E7CC0];
    goto LABEL_149;
  }

  v182 = a12;
  v198 = a11;
  v197 = a10;
  v195 = a9;
  v192 = v193[4];
  v191 = *(v200 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v225 = v235[2];
  v226 = v236;
  v227 = v237;
  v228 = v238;
  v223 = v235[0];
  v224 = v235[1];
  sub_1AF5DD298(&v223, v221);
  v36 = 0;
  v220 = MEMORY[0x1E69E7CC0];
  v199 = v15;
  v206 = v29;
  v185 = v35;
  while (1)
  {
    v37 = (v186 + 48 * v36);
    v38 = *v37;
    v262 = v37[1];
    v39 = *(v37 + 2);
    v40 = *(v37 + 3);
    v41 = *(v37 + 5);
    v218 = *(v37 + 4);
    v190 = v36;
    if (v191)
    {
      v42 = *(v41 + 376);

      os_unfair_lock_lock(v42);
      os_unfair_lock_lock(*(v41 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v192);
    v43 = v193;
    v44 = *(v193 + 4);
    v221[0] = *(v193 + 3);
    v221[1] = v44;
    v222 = v193[10];
    v45 = *(*(*(*(v41 + 40) + 16) + 32) + 16) + 1;
    v43[6] = ecs_stack_allocator_allocate(v193[4], 48 * v45, 8);
    v43[7] = v45;
    v43[9] = 0;
    v43[10] = 0;
    v43[8] = 0;
    v46 = v39;
    v47 = v40;
    v48 = v218;
    v215 = v41;
    v49 = sub_1AF64B110(v204, v188, v39, v47, v218, v43);
    v50 = v49;
    if (v39)
    {
      if (v48)
      {
        v205 = *(v183 + 72);
        while (1)
        {
          v262 = *v46;
          v217 = (v46 + 1);
          v52 = *(*v15 + 104);
          v53 = v52();
          v218 = v48;
          if (!v53)
          {
            break;
          }

          v54 = sub_1AFDFEE28();

          if ((v54 & 1) == 0)
          {
            if ((v52)(v55) == 1)
            {
              break;
            }

            v56 = sub_1AFDFEE28();

            if ((v56 & 1) == 0)
            {
              v58 = *(v50 + 24);
              v59 = (v52)(v57);
              if (v58 <= 1)
              {
                if (v58)
                {
                  v60 = 0xE600000000000000;
                  v61 = 0x7070636A626FLL;
                }

                else
                {
                  v60 = 0xE100000000000000;
                  v61 = 99;
                }
              }

              else if (v58 == 2)
              {
                v60 = 0xE500000000000000;
                v61 = 0x6C6174656DLL;
              }

              else if (v58 == 3)
              {
                v60 = 0xE500000000000000;
                v61 = 0x7466697773;
              }

              else
              {
                v60 = 0xE200000000000000;
                v61 = 29546;
              }

              if (v59 <= 1u)
              {
                if (v59)
                {
                  v65 = 0xE600000000000000;
                  if (v61 != 0x7070636A626FLL)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  v65 = 0xE100000000000000;
                  if (v61 != 99)
                  {
                    goto LABEL_51;
                  }
                }
              }

              else if (v59 == 2)
              {
                v65 = 0xE500000000000000;
                if (v61 != 0x6C6174656DLL)
                {
                  goto LABEL_51;
                }
              }

              else if (v59 == 3)
              {
                v65 = 0xE500000000000000;
                if (v61 != 0x7466697773)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                v65 = 0xE200000000000000;
                if (v61 != 29546)
                {
                  goto LABEL_51;
                }
              }

              if (v60 != v65)
              {
LABEL_51:
                v64 = sub_1AFDFEE28();

LABEL_52:

                if ((v64 & 1) == 0)
                {
                  goto LABEL_15;
                }

                goto LABEL_53;
              }

LABEL_50:

              goto LABEL_53;
            }
          }

LABEL_25:
          v62 = *(v50 + 24);
          if (v62 <= 1 && !*(v50 + 24))
          {
            goto LABEL_50;
          }

          v63 = sub_1AFDFEE28();

          if ((v63 & 1) == 0)
          {
            if (v62 != 1)
            {
              v64 = sub_1AFDFEE28();
              goto LABEL_52;
            }

            goto LABEL_50;
          }

LABEL_53:
          sub_1AFB12BD8(v50, v219, v201);
          v66 = v15[5];
          v212 = v15[6];
          v67 = v215;

          if (v67[184])
          {
            goto LABEL_150;
          }

          v69 = *(v68 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
          v213 = *(*(v67 + 21) + 4 * v262);
          v211 = *(v69 + 12 * v213 + 8);

          v70 = *(v204 + 44);
          v214 = v50;
          v71 = v196;
          sub_1AFB12858(v50 + v70, v196);
          v72 = type metadata accessor for ScriptIndex();
          v73 = *(v72 - 8);
          v74 = *(v73 + 48);
          if (v74(v71, 1, v72) == 1)
          {

            if (v67[184])
            {
              goto LABEL_150;
            }

            v76 = *(*(v67 + 21) + 4 * v262);
            v77 = *(*(v75 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v76 + 8);

            v78 = v206;
            *v206 = v76;
            *(v78 + 1) = v77;
            v29 = v78;
            swift_storeEnumTagMultiPayload();
            if (v74(v71, 1, v72) != 1)
            {
              sub_1AF687E28(v71);
            }
          }

          else
          {
            sub_1AFB128EC(v71, v29);
          }

          (*(v73 + 56))(v29, 0, 1, v72);
          v79 = v219;
          v80 = *(v219 + 24);
          if (v80 > 2)
          {
            v81 = v213;
            if (v80 == 3)
            {
              v82 = type metadata accessor for SwiftTrampolineCodeGen();
            }

            else
            {
              v82 = type metadata accessor for JavaScriptTrampolineCodeGen();
            }
          }

          else
          {
            v81 = v213;
            if (v80 >= 2)
            {
              v82 = type metadata accessor for MetalTrampolineCodeGen();
            }

            else
            {
              v82 = type metadata accessor for CTrampolineCodeGen();
            }
          }

          v83 = v82;
          v210 = v81;
          v84 = v79[4];
          if (v84[2])
          {
            v85 = v84[4];
            v86 = v84[5];
          }

          else
          {
            v85 = 0;
            v86 = 0;
          }

          (*(v83 + 128))(v239, v85, v86, v79[1], v79[2], 0, 0, *v79, 0, 0);

          v209 = &v179;
          v248 = v240;
          v207 = v239[1];
          v208 = v239[2];
          v88 = v239[0];
          MEMORY[0x1EEE9AC00](v87, v89);
          v90 = v66;
          v92 = v211;
          v91 = v212;
          *(&v179 - 6) = v66;
          *(&v179 - 5) = v91;
          *(&v179 - 8) = v81;
          *(&v179 - 7) = v92;
          v93 = v202;
          v94 = v203;
          *(&v179 - 3) = v202;
          v177 = v94;
          v29 = v206;
          v178 = v206;

          v95 = v216;
          v213 = sub_1AFBFBEF0(v195, (&v179 - 8), v88);
          v216 = v95;
          v96 = sub_1AFAF8B58(v207, v208, v90, v91, v210 | (v92 << 32), v93, v94, v29);
          v98 = v97;

          sub_1AF585778(&v248);
          sub_1AFB12B14(v219, v197);
          sub_1AF687E28(v29);

          v99 = sub_1AF6496EC(v262);

          v198(v99, v200);
          v101 = v100;
          v103 = v102;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v104 = v220;
          }

          else
          {
            v104 = sub_1AF425C8C(0, *(v220 + 2) + 1, 1, v220);
          }

          v106 = *(v104 + 2);
          v105 = *(v104 + 3);
          if (v106 >= v105 >> 1)
          {
            v104 = sub_1AF425C8C(v105 > 1, v106 + 1, 1, v104);
          }

          *(v104 + 2) = v106 + 1;
          v220 = v104;
          v51 = &v104[40 * v106];
          *(v51 + 4) = v213;
          *(v51 + 5) = v96;
          *(v51 + 6) = v98;
          *(v51 + 7) = v101;
          *(v51 + 8) = v103;
          v15 = v199;
          v50 = v214;
LABEL_15:
          v50 += v205;
          v46 = v217;
          v48 = v218 - 1;
          if (v218 == 1)
          {
            goto LABEL_142;
          }
        }

        goto LABEL_25;
      }

      goto LABEL_142;
    }

    if (v38 != v262)
    {
      break;
    }

LABEL_142:
    v245 = v187;
    v246 = v243;
    v247 = v244;
    v169 = v216;
    sub_1AF630994(v193, &v245, v221);
    v216 = v169;
    v170 = v215;
    sub_1AF62D29C(v215);
    ecs_stack_allocator_pop_snapshot(v192);
    if (v191)
    {
      os_unfair_lock_unlock(*(v170 + 43));
      os_unfair_lock_unlock(*(v170 + 47));
    }

    v36 = v190 + 1;
    if (v190 + 1 == v185)
    {
      sub_1AFB12A64(&v229, v180, v181, v188, sub_1AFB12B74);
      sub_1AFB12A64(v235, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
LABEL_149:
      sub_1AFB12A64(v235, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      return v220;
    }
  }

  v218 = *(v183 + 72);
  v205 = v262 - 1;
  v214 = v49;
  while (2)
  {
    v107 = v50 + v218 * v38;
    v108 = v38;
    while (2)
    {
      v109 = *(*v15 + 104);
      if (!v109())
      {
        goto LABEL_85;
      }

      v110 = sub_1AFDFEE28();

      if (v110)
      {
LABEL_86:
        v118 = *(v107 + 24);
        if (v118 <= 2 && v118 != 1 && v118 != 2)
        {
          goto LABEL_117;
        }

        v119 = sub_1AFDFEE28();

        if (v119)
        {
          goto LABEL_118;
        }

        if (v118 <= 1)
        {
          goto LABEL_117;
        }

        v120 = sub_1AFDFEE28();

        if (v120)
        {
          goto LABEL_118;
        }

        goto LABEL_92;
      }

      if ((v109)(v111) == 1)
      {
LABEL_85:

        goto LABEL_86;
      }

      v112 = sub_1AFDFEE28();

      if (v112)
      {
        goto LABEL_86;
      }

      v114 = *(v107 + 24);
      v115 = (v109)(v113);
      if (v114 <= 1)
      {
        if (v114)
        {
          v116 = 0xE600000000000000;
          v117 = 0x7070636A626FLL;
        }

        else
        {
          v116 = 0xE100000000000000;
          v117 = 99;
        }
      }

      else if (v114 == 2)
      {
        v116 = 0xE500000000000000;
        v117 = 0x6C6174656DLL;
      }

      else if (v114 == 3)
      {
        v116 = 0xE500000000000000;
        v117 = 0x7466697773;
      }

      else
      {
        v116 = 0xE200000000000000;
        v117 = 29546;
      }

      if (v115 <= 1u)
      {
        if (!v115)
        {
          v121 = 0xE100000000000000;
          if (v117 != 99)
          {
            goto LABEL_113;
          }

          goto LABEL_112;
        }

        v121 = 0xE600000000000000;
        if (v117 == 0x7070636A626FLL)
        {
          goto LABEL_112;
        }

LABEL_113:
        v122 = sub_1AFDFEE28();

        if (v122)
        {
          goto LABEL_118;
        }

LABEL_92:
        ++v108;
        v107 += v218;
        if (v262 == v108)
        {
          v29 = v206;
          goto LABEL_142;
        }

        continue;
      }

      break;
    }

    if (v115 == 2)
    {
      v121 = 0xE500000000000000;
      if (v117 != 0x6C6174656DLL)
      {
        goto LABEL_113;
      }
    }

    else if (v115 == 3)
    {
      v121 = 0xE500000000000000;
      if (v117 != 0x7466697773)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v121 = 0xE200000000000000;
      if (v117 != 29546)
      {
        goto LABEL_113;
      }
    }

LABEL_112:
    if (v116 != v121)
    {
      goto LABEL_113;
    }

LABEL_117:

LABEL_118:
    sub_1AFB12BD8(v107, v194, v201);
    v123 = v15[5];
    v213 = v15[6];
    v124 = v215;

    if ((v124[184] & 1) == 0)
    {
      v126 = *(v125 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
      v217 = *(*(v124 + 21) + 4 * v108);
      v212 = *(v126 + 12 * v217 + 8);

      v127 = v184;
      sub_1AFB12858(v107 + *(v204 + 44), v184);
      v128 = type metadata accessor for ScriptIndex();
      v129 = *(v128 - 8);
      v130 = *(v129 + 48);
      v131 = v130(v127, 1, v128);
      v132 = v124;
      v133 = v189;
      if (v131 != 1)
      {
        sub_1AFB128EC(v127, v189);
        goto LABEL_124;
      }

      if ((v132[184] & 1) == 0)
      {
        v135 = *(*(v132 + 21) + 4 * v108);
        v136 = *(*(v134 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v135 + 8);

        v137 = v189;
        *v189 = v135;
        v137[1] = v136;
        v133 = v137;
        swift_storeEnumTagMultiPayload();
        v138 = v184;
        if (v130(v184, 1, v128) != 1)
        {
          sub_1AF687E28(v138);
        }

LABEL_124:
        (*(v129 + 56))(v133, 0, 1, v128);
        v139 = *(v194 + 24);
        if (v139 > 2)
        {
          v140 = v217;
          if (v139 == 3)
          {
            v141 = type metadata accessor for SwiftTrampolineCodeGen();
          }

          else
          {
            v141 = type metadata accessor for JavaScriptTrampolineCodeGen();
          }
        }

        else
        {
          v140 = v217;
          if (v139 >= 2)
          {
            v141 = type metadata accessor for MetalTrampolineCodeGen();
          }

          else
          {
            v141 = type metadata accessor for CTrampolineCodeGen();
          }
        }

        v142 = v141;
        v211 = v140;
        v143 = *(v194 + 32);
        if (v143[2])
        {
          v144 = v143[4];
          v145 = v143[5];
        }

        else
        {
          v144 = 0;
          v145 = 0;
        }

        (*(v142 + 128))(v241, v144, v145, *(v194 + 8), *(v194 + 16), 0, 0, *v194, 0, 0);

        v210 = &v179;
        v249 = v242;
        v208 = v241[1];
        v209 = v241[2];
        v147 = v241[0];
        MEMORY[0x1EEE9AC00](v146, v148);
        v149 = v212;
        v150 = v213;
        *(&v179 - 6) = v123;
        *(&v179 - 5) = v150;
        *(&v179 - 8) = v140;
        *(&v179 - 7) = v149;
        v207 = v123;
        v152 = v202;
        v151 = v203;
        *(&v179 - 3) = v202;
        v177 = v151;
        v153 = v189;
        v178 = v189;

        v154 = v216;
        v155 = sub_1AFBFBEF0(v182, (&v179 - 8), v147);
        v216 = v154;
        v217 = v155;
        v213 = sub_1AFAF8B58(v208, v209, v207, v150, v211 | (v149 << 32), v152, v151, v153);
        v157 = v156;

        sub_1AF585778(&v249);
        sub_1AFB12B14(v194, v197);
        sub_1AF687E28(v153);

        v158 = sub_1AF6496EC(v108);

        v198(v158, v200);
        v160 = v159;
        v162 = v161;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v163 = v220;
        }

        else
        {
          v163 = sub_1AF425C8C(0, *(v220 + 2) + 1, 1, v220);
        }

        v165 = *(v163 + 2);
        v164 = *(v163 + 3);
        if (v165 >= v164 >> 1)
        {
          v163 = sub_1AF425C8C(v164 > 1, v165 + 1, 1, v163);
        }

        *(v163 + 2) = v165 + 1;
        v38 = v108 + 1;
        v220 = v163;
        v166 = &v163[40 * v165];
        v167 = v213;
        *(v166 + 4) = v217;
        *(v166 + 5) = v167;
        *(v166 + 6) = v157;
        *(v166 + 7) = v160;
        *(v166 + 8) = v162;
        v29 = v206;
        v168 = v205 == v108;
        v15 = v199;
        v50 = v214;
        if (v168)
        {
          goto LABEL_142;
        }

        continue;
      }
    }

    break;
  }

LABEL_150:
  LODWORD(v178) = 0;
  v177 = 204;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}