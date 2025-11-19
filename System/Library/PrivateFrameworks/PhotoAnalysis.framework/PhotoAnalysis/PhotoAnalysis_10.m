uint64_t sub_22FB0B074(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v189 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v187 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v212 = &v187 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v187 - v13;
  MEMORY[0x28223BE20](v12);
  v210 = &v187 - v15;
  v16 = type metadata accessor for PhotoLibraryResource(0);
  v17 = MEMORY[0x28223BE20](v16);
  v207 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v208 = &v187 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v205 = &v187 - v22;
  result = MEMORY[0x28223BE20](v21);
  v206 = &v187 - v25;
  v196 = a3;
  v26 = a3[1];
  if (v26 >= 1)
  {
    v209 = v14;
    v211 = v9;
    v188 = a4;
    i = 0;
    v28 = (v24 + 56);
    v201 = 0x800000022FCE1660;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = i;
      v31 = i + 1;
      v200 = v29;
      v202 = i + 1;
      if ((i + 1) < v26)
      {
        v195 = v26;
        v32 = v29;
        v33 = *v196;
        v34 = *(*v196 + 8 * v31);
        v193 = v30;
        v192 = v33;
        v35 = *(v33 + 8 * v30);

        v36 = sub_22FAF8820() & 1;
        v37 = sub_22FAF8820() & 1;
        if (v36 == v37)
        {
          v38 = sub_22FAF85A0(*(v34 + 136));
          v40 = v39;
          if (v38 == sub_22FAF85A0(*(v35 + 136)) && v40 == v41)
          {
            LODWORD(v194) = 0;
          }

          else
          {
            LODWORD(v194) = sub_22FCC9704();
          }

          a4 = v210;
        }

        else
        {

          LODWORD(v194) = v37 < v36;
          a4 = v210;
        }

        v187 = 8 * v193;
        v43 = 8 * v193 + 8;
        v29 = v32;
        v44 = v195;
        do
        {
          v47 = v202;
          v46 = v43;
          if (++v202 >= v44)
          {
            break;
          }

          v199 = v43;
          v49 = *(v192 + 8 * (v47 + 1));
          v198 = v47;
          v50 = *(v192 + 8 * v47);
          v51 = *(v49 + 136);
          v52 = *(v51 + 16);
          v203 = v49;
          v204 = v50;
          if (v52)
          {
            v30 = v51 + 32;

            for (i = 0; i != v52; ++i)
            {
              if (i >= *(v51 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v53 = swift_dynamicCast();
              v54 = *v28;
              if (v53)
              {
                v55 = a4;
                a4 = 1;
                v54(v55, 0, 1, v16);
                v56 = v206;
                sub_22FB0FD00(v55, v206, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v55) = *v56;
                sub_22FA64AB0(v56);
                if (v55)
                {
                  v50 = v204;
                  goto LABEL_29;
                }
              }

              else
              {
                v54(a4, 1, 1, v16);
                sub_22FA2B420(a4, &qword_27DAD8358);
              }

              v30 += 40;
              a4 = v210;
            }

            a4 = 0;
            v50 = v204;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v57 = *(v50 + 136);
          v58 = *(v57 + 16);
          if (v58)
          {
            i = 0;
            v30 = v57 + 32;
            do
            {
              if (i >= *(v57 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v59 = v209;
              v60 = swift_dynamicCast();
              v61 = *v28;
              if (v60)
              {
                v61(v59, 0, 1, v16);
                v62 = v205;
                sub_22FB0FD00(v59, v205, type metadata accessor for PhotoLibraryResource);
                v63 = *v62;
                sub_22FA64AB0(v62);
                if (v63)
                {
                  v64 = v203;
                  if ((a4 & 1) == 0)
                  {
                    v65 = 0;
                    v46 = v199;
                    v47 = v198;
                    goto LABEL_40;
                  }

LABEL_42:
                  v66 = *(v64 + 136);
                  v67 = *(v66 + 16);
                  if (v67)
                  {
                    v68 = 0;
                    v69 = v66 + 32;
                    v70 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v69, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v72 = v217;
                      v71 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v73 = (*(v71 + 16))(v72, v71);
                      MEMORY[0x231907FA0](v73);

                      v74 = v213;
                      v75 = v214;
                      v213 = v68;
                      v214 = v70;

                      MEMORY[0x231907FA0](v74, v75);

                      v68 = v213;
                      v70 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v69 += 40;
                      --v67;
                    }

                    while (v67);
                  }

                  else
                  {
                    v68 = 0;
                    v70 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000018;
                  v216 = v201;
                  MEMORY[0x231907FA0](v68, v70);

                  v191 = v216;
                  v76 = *(v204 + 136);
                  v77 = *(v76 + 16);
                  v190 = v215;
                  v78 = 0;
                  if (v77)
                  {
                    v79 = v76 + 32;
                    v80 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v79, &v215);
                      v213 = 32;
                      v214 = 0xE100000000000000;
                      v81 = v217;
                      v82 = v218;
                      __swift_project_boxed_opaque_existential_1(&v215, v217);
                      v83 = (*(v82 + 16))(v81, v82);
                      MEMORY[0x231907FA0](v83);

                      v84 = v213;
                      v85 = v214;
                      v213 = v78;
                      v214 = v80;

                      MEMORY[0x231907FA0](v84, v85);

                      v78 = v213;
                      v80 = v214;
                      __swift_destroy_boxed_opaque_existential_0(&v215);
                      v79 += 40;
                      --v77;
                    }

                    while (v77);
                  }

                  else
                  {
                    v80 = 0xE000000000000000;
                  }

                  v215 = 0xD000000000000018;
                  v216 = v201;
                  MEMORY[0x231907FA0](v78, v80);

                  if (v190 == v215 && v191 == v216)
                  {
                    v45 = 0;
                  }

                  else
                  {
                    v45 = sub_22FCC9704();
                  }

                  v46 = v199;
                  v47 = v198;

                  goto LABEL_17;
                }
              }

              else
              {
                v61(v59, 1, 1, v16);
                sub_22FA2B420(v59, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
            }

            while (v58 != i);
          }

          if ((a4 & 1) == 0)
          {
            v64 = v203;
            goto LABEL_42;
          }

          v65 = 1;
          v46 = v199;
          v47 = v198;
LABEL_40:

          v45 = a4 & v65;
LABEL_17:
          v48 = v194 ^ v45;
          v43 = v46 + 8;
          a4 = v210;
          v29 = v200;
          v44 = v195;
        }

        while ((v48 & 1) == 0);
        if (v194)
        {
          v30 = v193;
          if (v202 < v193)
          {
            goto LABEL_207;
          }

          if (v193 < v202)
          {
            v86 = v193;
            v87 = v187;
            do
            {
              if (v86 != v47)
              {
                v89 = *v196;
                if (!*v196)
                {
                  goto LABEL_211;
                }

                v90 = *(v89 + v87);
                *(v89 + v87) = *(v89 + v46);
                *(v89 + v46) = v90;
              }

              ++v86;
              v46 -= 8;
              v87 += 8;
            }

            while (v86 < v47--);
          }
        }

        else
        {
          v30 = v193;
        }
      }

      v91 = v196[1];
      i = v202;
      if (v202 >= v91)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v202, v30))
      {
        goto LABEL_203;
      }

      if (v202 - v30 >= v188)
      {
        i = v202;
LABEL_75:
        if (i < v30)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v92 = v30 + v188;
      if (__OFADD__(v30, v188))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v92 >= v91)
      {
        v92 = v196[1];
      }

      if (v92 < v30)
      {
        goto LABEL_206;
      }

      i = v202;
      if (v202 == v92)
      {
        goto LABEL_75;
      }

      v193 = v30;
      v93 = *v196;
      v94 = v202;
      v191 = v92;
      v192 = v93;
      while (2)
      {
        v143 = *(v93 + 8 * v94);
        v202 = v94;
        v144 = v94;
        while (1)
        {
          v199 = v144;
          v198 = v144 - 1;
          v145 = *(v93 + 8 * (v144 - 1));
          v146 = *(v143 + 136);
          v147 = *(v146 + 16);
          v203 = v143;
          v204 = v145;
          if (v147)
          {
            v30 = v146 + 32;

            i = 0;
            while (i < *(v146 + 16))
            {
              sub_22FA2D328(v30, &v215);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
              v148 = v212;
              v149 = swift_dynamicCast();
              v150 = *v28;
              if (v149)
              {
                a4 = 1;
                v150(v148, 0, 1, v16);
                v151 = v208;
                sub_22FB0FD00(v148, v208, type metadata accessor for PhotoLibraryResource);
                v152 = *v151;
                sub_22FA64AB0(v151);
                if (v152)
                {
                  v145 = v204;
                  goto LABEL_139;
                }
              }

              else
              {
                v150(v148, 1, 1, v16);
                sub_22FA2B420(v148, &qword_27DAD8358);
              }

              ++i;
              v30 += 40;
              if (v147 == i)
              {
                a4 = 0;
                v145 = v204;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
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
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v153 = *(v145 + 136);
          v154 = *(v153 + 16);
          if (v154)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v160 = v199;
          v29 = v200;
          v93 = v192;
LABEL_163:
          if (!v93)
          {
            goto LABEL_208;
          }

          v143 = *(v93 + 8 * v160);
          v181 = v198;
          *(v93 + 8 * v160) = *(v93 + 8 * v198);
          *(v93 + 8 * v181) = v143;
          v144 = v181;
          if (v181 == v193)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v30 = v153 + 32;
        while (1)
        {
          if (i >= *(v153 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v30, &v215);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
          v155 = v211;
          v156 = swift_dynamicCast();
          v157 = *v28;
          if (v156)
          {
            break;
          }

          v157(v155, 1, 1, v16);
          sub_22FA2B420(v155, &qword_27DAD8358);
LABEL_142:
          ++i;
          v30 += 40;
          if (v154 == i)
          {
            goto LABEL_148;
          }
        }

        v157(v155, 0, 1, v16);
        v158 = v207;
        sub_22FB0FD00(v155, v207, type metadata accessor for PhotoLibraryResource);
        v159 = *v158;
        sub_22FA64AB0(v158);
        if ((v159 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v29 = v200;
          v93 = v192;
          goto LABEL_127;
        }

LABEL_150:
        v161 = *(v203 + 136);
        v162 = *(v161 + 16);
        if (v162)
        {
          v163 = 0;
          v164 = v161 + 32;
          v165 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v164, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v166 = v217;
            v167 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v168 = (*(v167 + 16))(v166, v167);
            MEMORY[0x231907FA0](v168);

            v169 = v213;
            v170 = v214;
            v213 = v163;
            v214 = v165;

            MEMORY[0x231907FA0](v169, v170);

            v163 = v213;
            v165 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v164 += 40;
            --v162;
          }

          while (v162);
        }

        else
        {
          v163 = 0;
          v165 = 0xE000000000000000;
        }

        v215 = 0xD000000000000018;
        v216 = v201;
        MEMORY[0x231907FA0](v163, v165);

        v195 = v216;
        v171 = *(v204 + 136);
        v172 = *(v171 + 16);
        v194 = v215;
        v173 = 0;
        if (v172)
        {
          v174 = v171 + 32;
          v175 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v174, &v215);
            v213 = 32;
            v214 = 0xE100000000000000;
            v176 = v217;
            v177 = v218;
            __swift_project_boxed_opaque_existential_1(&v215, v217);
            v178 = (*(v177 + 16))(v176, v177);
            MEMORY[0x231907FA0](v178);

            v179 = v213;
            v180 = v214;
            v213 = v173;
            v214 = v175;

            MEMORY[0x231907FA0](v179, v180);

            v173 = v213;
            v175 = v214;
            __swift_destroy_boxed_opaque_existential_0(&v215);
            v174 += 40;
            --v172;
          }

          while (v172);
        }

        else
        {
          v175 = 0xE000000000000000;
        }

        v215 = 0xD000000000000018;
        v216 = v201;
        a4 = &v215;
        MEMORY[0x231907FA0](v173, v175);

        if (v194 == v215 && v195 == v216)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v160 = v199;
        v29 = v200;
        v93 = v192;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v94 = v202 + 1;
        if (v202 + 1 != v191)
        {
          continue;
        }

        break;
      }

      i = v191;
      v30 = v193;
      if (v191 < v193)
      {
        goto LABEL_202;
      }

LABEL_76:
      v95 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      v96 = v30;
      if (result)
      {
        v29 = v95;
      }

      else
      {
        result = sub_22FAC21FC(0, *(v95 + 16) + 1, 1, v95);
        v29 = result;
      }

      v98 = *(v29 + 16);
      v97 = *(v29 + 24);
      a4 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        result = sub_22FAC21FC((v97 > 1), v98 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = a4;
      v99 = v29 + 16 * v98;
      *(v99 + 32) = v96;
      *(v99 + 40) = i;
      v100 = *v189;
      if (!*v189)
      {
        goto LABEL_212;
      }

      if (v98)
      {
        while (2)
        {
          v30 = a4 - 1;
          if (a4 >= 4)
          {
            v105 = v29 + 32 + 16 * a4;
            v106 = *(v105 - 64);
            v107 = *(v105 - 56);
            v111 = __OFSUB__(v107, v106);
            v108 = v107 - v106;
            if (v111)
            {
              goto LABEL_189;
            }

            v110 = *(v105 - 48);
            v109 = *(v105 - 40);
            v111 = __OFSUB__(v109, v110);
            v103 = v109 - v110;
            v104 = v111;
            if (v111)
            {
              goto LABEL_190;
            }

            v112 = (v29 + 16 * a4);
            v114 = *v112;
            v113 = v112[1];
            v111 = __OFSUB__(v113, v114);
            v115 = v113 - v114;
            if (v111)
            {
              goto LABEL_192;
            }

            v111 = __OFADD__(v103, v115);
            v116 = v103 + v115;
            if (v111)
            {
              goto LABEL_195;
            }

            if (v116 >= v108)
            {
              v134 = (v29 + 32 + 16 * v30);
              v136 = *v134;
              v135 = v134[1];
              v111 = __OFSUB__(v135, v136);
              v137 = v135 - v136;
              if (v111)
              {
                goto LABEL_201;
              }

              if (v103 < v137)
              {
                v30 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v104)
              {
                goto LABEL_191;
              }

              v117 = (v29 + 16 * a4);
              v119 = *v117;
              v118 = v117[1];
              v120 = __OFSUB__(v118, v119);
              v121 = v118 - v119;
              v122 = v120;
              if (v120)
              {
                goto LABEL_194;
              }

              v123 = (v29 + 32 + 16 * v30);
              v125 = *v123;
              v124 = v123[1];
              v111 = __OFSUB__(v124, v125);
              v126 = v124 - v125;
              if (v111)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v121, v126))
              {
                goto LABEL_198;
              }

              if (v121 + v126 < v103)
              {
                goto LABEL_109;
              }

              if (v103 < v126)
              {
                v30 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v101 = *(v29 + 32);
              v102 = *(v29 + 40);
              v111 = __OFSUB__(v102, v101);
              v103 = v102 - v101;
              v104 = v111;
              goto LABEL_95;
            }

            v127 = (v29 + 16 * a4);
            v129 = *v127;
            v128 = v127[1];
            v111 = __OFSUB__(v128, v129);
            v121 = v128 - v129;
            v122 = v111;
LABEL_109:
            if (v122)
            {
              goto LABEL_193;
            }

            v130 = v29 + 16 * v30;
            v132 = *(v130 + 32);
            v131 = *(v130 + 40);
            v111 = __OFSUB__(v131, v132);
            v133 = v131 - v132;
            if (v111)
            {
              goto LABEL_196;
            }

            if (v133 < v121)
            {
              break;
            }
          }

          v138 = v30 - 1;
          if (v30 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v196)
          {
            goto LABEL_209;
          }

          v139 = v29;
          a4 = *(v29 + 32 + 16 * v138);
          v140 = *(v29 + 32 + 16 * v30 + 8);
          v141 = v197;
          sub_22FB0E050((*v196 + 8 * a4), (*v196 + 8 * *(v29 + 32 + 16 * v30)), (*v196 + 8 * v140), v100);
          v197 = v141;
          if (v141)
          {
          }

          if (v140 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v139 = sub_22FB0EF2C(v139);
          }

          if (v138 >= *(v139 + 2))
          {
            goto LABEL_188;
          }

          v142 = &v139[16 * v138];
          *(v142 + 4) = a4;
          *(v142 + 5) = v140;
          v219 = v139;
          result = sub_22FB0EEA0(v30);
          v29 = v219;
          a4 = *(v219 + 16);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v26 = v196[1];
      if (i >= v26)
      {
        goto LABEL_170;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_170:
  v30 = *v189;
  if (!*v189)
  {
    goto LABEL_213;
  }

  a4 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v197;
  if (isUniquelyReferenced_nonNull_native)
  {
    result = a4;
  }

  else
  {
LABEL_204:
    result = sub_22FB0EF2C(a4);
  }

  v219 = result;
  a4 = *(result + 16);
  if (a4 < 2)
  {
  }

  while (*v196)
  {
    v183 = *(result + 16 * a4);
    v184 = result;
    v185 = *(result + 16 * (a4 - 1) + 40);
    sub_22FB0E050((*v196 + 8 * v183), (*v196 + 8 * *(result + 16 * (a4 - 1) + 32)), (*v196 + 8 * v185), v30);
    if (i)
    {
    }

    if (v185 < v183)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v184 = sub_22FB0EF2C(v184);
    }

    if (a4 - 2 >= *(v184 + 2))
    {
      goto LABEL_200;
    }

    v186 = &v184[16 * a4];
    *v186 = v183;
    *(v186 + 1) = v185;
    v219 = v184;
    sub_22FB0EEA0(a4 - 1);
    result = v219;
    a4 = *(v219 + 16);
    if (a4 <= 1)
    {
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
  return result;
}

uint64_t sub_22FB0C3B0(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v125 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v125 - v14;
  MEMORY[0x28223BE20](v13);
  v137 = &v125 - v15;
  v147 = type metadata accessor for PhotoLibraryResource(0);
  v16 = *(v147 - 8);
  v17 = MEMORY[0x28223BE20](v147);
  v134 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v125 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v135 = &v125 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v127 = a3;
  v26 = a3 - a2;
  v27 = v26 / 8;
  if (v24 >> 3 < v26 / 8)
  {
    if (a4 != a1 || &a1[8 * v25] <= a4)
    {
      memmove(a4, a1, 8 * v25);
    }

    v132 = &a4[8 * v25];
    if (a2 - a1 >= 8 && a2 < v127)
    {
      v28 = a2;
      v29 = (v16 + 56);
      v136 = 0x800000022FCE1620;
      a2 = a1;
      v30 = v140;
      while (1)
      {
        v129 = a2;
        v130 = a4;
        v131 = v28;
        v31 = *a4;
        v32 = *(*v28 + 136);
        v33 = *(v32 + 16);
        v138 = *v28;
        v139 = v31;
        if (v33)
        {
          v34 = v32 + 32;

          v36 = 0;
          while (v36 < *(v32 + 16))
          {
            sub_22FA2D328(v34, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v37 = v137;
            v38 = swift_dynamicCast();
            v39 = *v29;
            if (v38)
            {
              v40 = 1;
              v39(v37, 0, 1, v147);
              v41 = v135;
              sub_22FB0FD00(v37, v135, type metadata accessor for PhotoLibraryResource);
              v42 = *v41;
              result = sub_22FA64AB0(v41);
              if (v42)
              {
                v31 = v139;
                v30 = v140;
                goto LABEL_20;
              }
            }

            else
            {
              v39(v37, 1, 1, v147);
              result = sub_22FA2B420(v37, &qword_27DAD8358);
            }

            ++v36;
            v34 += 40;
            v30 = v140;
            if (v33 == v36)
            {
              v40 = 0;
              v31 = v139;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v40 = 0;
LABEL_20:
        v43 = *(v31 + 17);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          while (v45 < *(v43 + 16))
          {
            sub_22FA2D328(v46, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v47 = swift_dynamicCast();
            v48 = *v29;
            if (v47)
            {
              v48(v30, 0, 1, v147);
              v49 = v133;
              sub_22FB0FD00(v30, v133, type metadata accessor for PhotoLibraryResource);
              v50 = *v49;
              result = sub_22FA64AB0(v49);
              if (v50)
              {
                v30 = v140;
                if (v40)
                {
                  goto LABEL_31;
                }

                a4 = v130;
                v28 = v131;
                v51 = v129;
                v52 = v127;
                goto LABEL_50;
              }
            }

            else
            {
              v48(v30, 1, 1, v147);
              result = sub_22FA2B420(v30, &qword_27DAD8358);
            }

            ++v45;
            v46 += 40;
            v30 = v140;
            if (v44 == v45)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v40)
        {
          break;
        }

LABEL_31:
        v53 = *(v138 + 17);
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = 0;
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v59 = v145;
            v58 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v60 = (*(v58 + 16))(v59, v58);
            MEMORY[0x231907FA0](v60);

            v61 = v141;
            v62 = v142;
            v141 = v55;
            v142 = v57;

            MEMORY[0x231907FA0](v61, v62);

            v55 = v141;
            v57 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v143 = 0xD000000000000011;
        v144 = v136;
        MEMORY[0x231907FA0](v55, v57);

        v63 = v144;
        v64 = *(v139 + 17);
        v65 = *(v64 + 16);
        v134 = v143;
        v66 = 0;
        if (v65)
        {
          v67 = v64 + 32;
          v68 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v67, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v69 = v145;
            v70 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v71 = (*(v70 + 16))(v69, v70);
            MEMORY[0x231907FA0](v71);

            v72 = v141;
            v73 = v142;
            v141 = v66;
            v142 = v68;

            MEMORY[0x231907FA0](v72, v73);

            v66 = v141;
            v68 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v67 += 40;
            --v65;
          }

          while (v65);
        }

        else
        {
          v68 = 0xE000000000000000;
        }

        v143 = 0xD000000000000011;
        v144 = v136;
        MEMORY[0x231907FA0](v66, v68);

        if (v134 == v143 && v63 == v144)
        {

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
        }

        else
        {
          v74 = sub_22FCC9704();

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
          if (v74)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v75 = a4;
        v76 = v51 == a4;
        a4 += 8;
        if (!v76)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v51 + 8;
        if (a4 >= v132 || v28 >= v52)
        {
          goto LABEL_106;
        }
      }

      a4 = v130;
      v28 = v131;
      v51 = v129;
      v52 = v127;
LABEL_45:
      v75 = v28;
      v76 = v51 == v28;
      v28 += 8;
      if (v76)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v51 = *v75;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v129 = a1;
  if (a4 != a2 || &a2[8 * v27] <= a4)
  {
    memmove(a4, a2, 8 * v27);
  }

  v132 = &a4[8 * v27];
  if (v26 < 8 || a2 <= v129)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v132 - a4 + (v132 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v132 - a4) / 8));
    }

    return 1;
  }

  v77 = (v16 + 56);
  v128 = 0x800000022FCE1620;
  v78 = v127;
  v130 = a4;
LABEL_59:
  v79 = a2 - 8;
  v80 = v132;
  v131 = a2;
  v126 = a2 - 8;
  while (1)
  {
    v135 = v78;
    v81 = *(v80 - 1);
    v133 = v80 - 8;
    v82 = *v79;
    v83 = *(v81 + 17);
    v84 = *(v83 + 16);
    v140 = *v79;
    v137 = v81;
    if (v84)
    {
      break;
    }

    v91 = 0;
    v87 = v139;
LABEL_71:
    v94 = *(v82 + 17);
    v95 = *(v94 + 16);
    if (v95)
    {
      v96 = 0;
      v97 = v94 + 32;
      while (v96 < *(v94 + 16))
      {
        sub_22FA2D328(v97, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
        v98 = swift_dynamicCast();
        v99 = *v77;
        if (v98)
        {
          v99(v87, 0, 1, v147);
          v100 = v134;
          sub_22FB0FD00(v87, v134, type metadata accessor for PhotoLibraryResource);
          v101 = *v100;
          result = sub_22FA64AB0(v100);
          if (v101)
          {
            if (v91)
            {
              goto LABEL_81;
            }

            v102 = v135;
            v78 = v135 - 8;
            a4 = v130;
            a2 = v131;
            v79 = v126;
            goto LABEL_96;
          }
        }

        else
        {
          v99(v87, 1, 1, v147);
          result = sub_22FA2B420(v87, &qword_27DAD8358);
        }

        ++v96;
        v97 += 40;
        v87 = v139;
        if (v95 == v96)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v91)
    {

      v102 = v135;
      v78 = v135 - 8;
      a4 = v130;
      a2 = v131;
      v79 = v126;
LABEL_99:
      if (v102 != a2)
      {
        *v78 = *v79;
      }

      if (v132 <= a4 || (a2 = v79, v79 <= v129))
      {
        a2 = v79;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v103 = *(v137 + 17);
    v104 = *(v103 + 16);
    if (v104)
    {
      v105 = 0;
      v106 = v103 + 32;
      v107 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v106, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v108 = v145;
        v109 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v110 = (*(v109 + 16))(v108, v109);
        MEMORY[0x231907FA0](v110);

        v111 = v141;
        v112 = v142;
        v141 = v105;
        v142 = v107;

        MEMORY[0x231907FA0](v111, v112);

        v105 = v141;
        v107 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v106 += 40;
        --v104;
      }

      while (v104);
    }

    else
    {
      v105 = 0;
      v107 = 0xE000000000000000;
    }

    v143 = 0xD000000000000011;
    v144 = v128;
    MEMORY[0x231907FA0](v105, v107);

    v113 = v144;
    v114 = *(v140 + 17);
    v115 = *(v114 + 16);
    v127 = v143;
    v116 = 0;
    if (v115)
    {
      v117 = v114 + 32;
      v118 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v117, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v119 = v145;
        v120 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v121 = (*(v120 + 16))(v119, v120);
        MEMORY[0x231907FA0](v121);

        v122 = v141;
        v123 = v142;
        v141 = v116;
        v142 = v118;

        MEMORY[0x231907FA0](v122, v123);

        v116 = v141;
        v118 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v117 += 40;
        --v115;
      }

      while (v115);
    }

    else
    {
      v118 = 0xE000000000000000;
    }

    v143 = 0xD000000000000011;
    v144 = v128;
    MEMORY[0x231907FA0](v116, v118);

    if (v127 == v143 && v113 == v144)
    {
      v124 = 0;
    }

    else
    {
      v124 = sub_22FCC9704();
    }

    a4 = v130;
    a2 = v131;

    v102 = v135;
    v78 = v135 - 8;
    v79 = v126;
    if (v124)
    {
      goto LABEL_99;
    }

LABEL_96:
    v76 = v102 == v132;
    v80 = v133;
    if (!v76)
    {
      *v78 = *v133;
    }

    v132 = v80;
    if (v80 <= a4)
    {
      v132 = v80;
      goto LABEL_106;
    }
  }

  v85 = v83 + 32;

  v86 = 0;
  while (v86 < *(v83 + 16))
  {
    sub_22FA2D328(v85, &v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
    v88 = v138;
    v89 = swift_dynamicCast();
    v90 = *v77;
    if (v89)
    {
      v91 = 1;
      v90(v88, 0, 1, v147);
      v92 = v136;
      sub_22FB0FD00(v88, v136, type metadata accessor for PhotoLibraryResource);
      v93 = *v92;
      result = sub_22FA64AB0(v92);
      if (v93)
      {
        v87 = v139;
        v82 = v140;
        goto LABEL_71;
      }
    }

    else
    {
      v90(v88, 1, 1, v147);
      result = sub_22FA2B420(v88, &qword_27DAD8358);
    }

    ++v86;
    v85 += 40;
    v87 = v139;
    if (v84 == v86)
    {
      v91 = 0;
      v82 = v140;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_22FB0D200(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v125 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v125 - v14;
  MEMORY[0x28223BE20](v13);
  v137 = &v125 - v15;
  v147 = type metadata accessor for PhotoLibraryResource(0);
  v16 = *(v147 - 8);
  v17 = MEMORY[0x28223BE20](v147);
  v134 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v125 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v135 = &v125 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v127 = a3;
  v26 = a3 - a2;
  v27 = v26 / 8;
  if (v24 >> 3 < v26 / 8)
  {
    if (a4 != a1 || &a1[8 * v25] <= a4)
    {
      memmove(a4, a1, 8 * v25);
    }

    v132 = &a4[8 * v25];
    if (a2 - a1 >= 8 && a2 < v127)
    {
      v28 = a2;
      v29 = (v16 + 56);
      v136 = 0x800000022FCE1640;
      a2 = a1;
      v30 = v140;
      while (1)
      {
        v129 = a2;
        v130 = a4;
        v131 = v28;
        v31 = *a4;
        v32 = *(*v28 + 136);
        v33 = *(v32 + 16);
        v138 = *v28;
        v139 = v31;
        if (v33)
        {
          v34 = v32 + 32;

          v36 = 0;
          while (v36 < *(v32 + 16))
          {
            sub_22FA2D328(v34, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v37 = v137;
            v38 = swift_dynamicCast();
            v39 = *v29;
            if (v38)
            {
              v40 = 1;
              v39(v37, 0, 1, v147);
              v41 = v135;
              sub_22FB0FD00(v37, v135, type metadata accessor for PhotoLibraryResource);
              v42 = *v41;
              result = sub_22FA64AB0(v41);
              if (v42)
              {
                v31 = v139;
                v30 = v140;
                goto LABEL_20;
              }
            }

            else
            {
              v39(v37, 1, 1, v147);
              result = sub_22FA2B420(v37, &qword_27DAD8358);
            }

            ++v36;
            v34 += 40;
            v30 = v140;
            if (v33 == v36)
            {
              v40 = 0;
              v31 = v139;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v40 = 0;
LABEL_20:
        v43 = *(v31 + 17);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          while (v45 < *(v43 + 16))
          {
            sub_22FA2D328(v46, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v47 = swift_dynamicCast();
            v48 = *v29;
            if (v47)
            {
              v48(v30, 0, 1, v147);
              v49 = v133;
              sub_22FB0FD00(v30, v133, type metadata accessor for PhotoLibraryResource);
              v50 = *v49;
              result = sub_22FA64AB0(v49);
              if (v50)
              {
                v30 = v140;
                if (v40)
                {
                  goto LABEL_31;
                }

                a4 = v130;
                v28 = v131;
                v51 = v129;
                v52 = v127;
                goto LABEL_50;
              }
            }

            else
            {
              v48(v30, 1, 1, v147);
              result = sub_22FA2B420(v30, &qword_27DAD8358);
            }

            ++v45;
            v46 += 40;
            v30 = v140;
            if (v44 == v45)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v40)
        {
          break;
        }

LABEL_31:
        v53 = *(v138 + 17);
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = 0;
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v59 = v145;
            v58 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v60 = (*(v58 + 16))(v59, v58);
            MEMORY[0x231907FA0](v60);

            v61 = v141;
            v62 = v142;
            v141 = v55;
            v142 = v57;

            MEMORY[0x231907FA0](v61, v62);

            v55 = v141;
            v57 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v143 = 0xD000000000000012;
        v144 = v136;
        MEMORY[0x231907FA0](v55, v57);

        v63 = v144;
        v64 = *(v139 + 17);
        v65 = *(v64 + 16);
        v134 = v143;
        v66 = 0;
        if (v65)
        {
          v67 = v64 + 32;
          v68 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v67, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v69 = v145;
            v70 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v71 = (*(v70 + 16))(v69, v70);
            MEMORY[0x231907FA0](v71);

            v72 = v141;
            v73 = v142;
            v141 = v66;
            v142 = v68;

            MEMORY[0x231907FA0](v72, v73);

            v66 = v141;
            v68 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v67 += 40;
            --v65;
          }

          while (v65);
        }

        else
        {
          v68 = 0xE000000000000000;
        }

        v143 = 0xD000000000000012;
        v144 = v136;
        MEMORY[0x231907FA0](v66, v68);

        if (v134 == v143 && v63 == v144)
        {

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
        }

        else
        {
          v74 = sub_22FCC9704();

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
          if (v74)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v75 = a4;
        v76 = v51 == a4;
        a4 += 8;
        if (!v76)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v51 + 8;
        if (a4 >= v132 || v28 >= v52)
        {
          goto LABEL_106;
        }
      }

      a4 = v130;
      v28 = v131;
      v51 = v129;
      v52 = v127;
LABEL_45:
      v75 = v28;
      v76 = v51 == v28;
      v28 += 8;
      if (v76)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v51 = *v75;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v129 = a1;
  if (a4 != a2 || &a2[8 * v27] <= a4)
  {
    memmove(a4, a2, 8 * v27);
  }

  v132 = &a4[8 * v27];
  if (v26 < 8 || a2 <= v129)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v132 - a4 + (v132 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v132 - a4) / 8));
    }

    return 1;
  }

  v77 = (v16 + 56);
  v128 = 0x800000022FCE1640;
  v78 = v127;
  v130 = a4;
LABEL_59:
  v79 = a2 - 8;
  v80 = v132;
  v131 = a2;
  v126 = a2 - 8;
  while (1)
  {
    v135 = v78;
    v81 = *(v80 - 1);
    v133 = v80 - 8;
    v82 = *v79;
    v83 = *(v81 + 17);
    v84 = *(v83 + 16);
    v140 = *v79;
    v137 = v81;
    if (v84)
    {
      break;
    }

    v91 = 0;
    v87 = v139;
LABEL_71:
    v94 = *(v82 + 17);
    v95 = *(v94 + 16);
    if (v95)
    {
      v96 = 0;
      v97 = v94 + 32;
      while (v96 < *(v94 + 16))
      {
        sub_22FA2D328(v97, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
        v98 = swift_dynamicCast();
        v99 = *v77;
        if (v98)
        {
          v99(v87, 0, 1, v147);
          v100 = v134;
          sub_22FB0FD00(v87, v134, type metadata accessor for PhotoLibraryResource);
          v101 = *v100;
          result = sub_22FA64AB0(v100);
          if (v101)
          {
            if (v91)
            {
              goto LABEL_81;
            }

            v102 = v135;
            v78 = v135 - 8;
            a4 = v130;
            a2 = v131;
            v79 = v126;
            goto LABEL_96;
          }
        }

        else
        {
          v99(v87, 1, 1, v147);
          result = sub_22FA2B420(v87, &qword_27DAD8358);
        }

        ++v96;
        v97 += 40;
        v87 = v139;
        if (v95 == v96)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v91)
    {

      v102 = v135;
      v78 = v135 - 8;
      a4 = v130;
      a2 = v131;
      v79 = v126;
LABEL_99:
      if (v102 != a2)
      {
        *v78 = *v79;
      }

      if (v132 <= a4 || (a2 = v79, v79 <= v129))
      {
        a2 = v79;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v103 = *(v137 + 17);
    v104 = *(v103 + 16);
    if (v104)
    {
      v105 = 0;
      v106 = v103 + 32;
      v107 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v106, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v108 = v145;
        v109 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v110 = (*(v109 + 16))(v108, v109);
        MEMORY[0x231907FA0](v110);

        v111 = v141;
        v112 = v142;
        v141 = v105;
        v142 = v107;

        MEMORY[0x231907FA0](v111, v112);

        v105 = v141;
        v107 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v106 += 40;
        --v104;
      }

      while (v104);
    }

    else
    {
      v105 = 0;
      v107 = 0xE000000000000000;
    }

    v143 = 0xD000000000000012;
    v144 = v128;
    MEMORY[0x231907FA0](v105, v107);

    v113 = v144;
    v114 = *(v140 + 17);
    v115 = *(v114 + 16);
    v127 = v143;
    v116 = 0;
    if (v115)
    {
      v117 = v114 + 32;
      v118 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v117, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v119 = v145;
        v120 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v121 = (*(v120 + 16))(v119, v120);
        MEMORY[0x231907FA0](v121);

        v122 = v141;
        v123 = v142;
        v141 = v116;
        v142 = v118;

        MEMORY[0x231907FA0](v122, v123);

        v116 = v141;
        v118 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v117 += 40;
        --v115;
      }

      while (v115);
    }

    else
    {
      v118 = 0xE000000000000000;
    }

    v143 = 0xD000000000000012;
    v144 = v128;
    MEMORY[0x231907FA0](v116, v118);

    if (v127 == v143 && v113 == v144)
    {
      v124 = 0;
    }

    else
    {
      v124 = sub_22FCC9704();
    }

    a4 = v130;
    a2 = v131;

    v102 = v135;
    v78 = v135 - 8;
    v79 = v126;
    if (v124)
    {
      goto LABEL_99;
    }

LABEL_96:
    v76 = v102 == v132;
    v80 = v133;
    if (!v76)
    {
      *v78 = *v133;
    }

    v132 = v80;
    if (v80 <= a4)
    {
      v132 = v80;
      goto LABEL_106;
    }
  }

  v85 = v83 + 32;

  v86 = 0;
  while (v86 < *(v83 + 16))
  {
    sub_22FA2D328(v85, &v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
    v88 = v138;
    v89 = swift_dynamicCast();
    v90 = *v77;
    if (v89)
    {
      v91 = 1;
      v90(v88, 0, 1, v147);
      v92 = v136;
      sub_22FB0FD00(v88, v136, type metadata accessor for PhotoLibraryResource);
      v93 = *v92;
      result = sub_22FA64AB0(v92);
      if (v93)
      {
        v87 = v139;
        v82 = v140;
        goto LABEL_71;
      }
    }

    else
    {
      v90(v88, 1, 1, v147);
      result = sub_22FA2B420(v88, &qword_27DAD8358);
    }

    ++v86;
    v85 += 40;
    v87 = v139;
    if (v84 == v86)
    {
      v91 = 0;
      v82 = v140;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_22FB0E050(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v139 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v125 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v140 = &v125 - v14;
  MEMORY[0x28223BE20](v13);
  v137 = &v125 - v15;
  v147 = type metadata accessor for PhotoLibraryResource(0);
  v16 = *(v147 - 8);
  v17 = MEMORY[0x28223BE20](v147);
  v134 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v125 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v133 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v135 = &v125 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v127 = a3;
  v26 = a3 - a2;
  v27 = v26 / 8;
  if (v24 >> 3 < v26 / 8)
  {
    if (a4 != a1 || &a1[8 * v25] <= a4)
    {
      memmove(a4, a1, 8 * v25);
    }

    v132 = &a4[8 * v25];
    if (a2 - a1 >= 8 && a2 < v127)
    {
      v28 = a2;
      v29 = (v16 + 56);
      v136 = 0x800000022FCE1660;
      a2 = a1;
      v30 = v140;
      while (1)
      {
        v129 = a2;
        v130 = a4;
        v131 = v28;
        v31 = *a4;
        v32 = *(*v28 + 136);
        v33 = *(v32 + 16);
        v138 = *v28;
        v139 = v31;
        if (v33)
        {
          v34 = v32 + 32;

          v36 = 0;
          while (v36 < *(v32 + 16))
          {
            sub_22FA2D328(v34, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v37 = v137;
            v38 = swift_dynamicCast();
            v39 = *v29;
            if (v38)
            {
              v40 = 1;
              v39(v37, 0, 1, v147);
              v41 = v135;
              sub_22FB0FD00(v37, v135, type metadata accessor for PhotoLibraryResource);
              v42 = *v41;
              result = sub_22FA64AB0(v41);
              if (v42)
              {
                v31 = v139;
                v30 = v140;
                goto LABEL_20;
              }
            }

            else
            {
              v39(v37, 1, 1, v147);
              result = sub_22FA2B420(v37, &qword_27DAD8358);
            }

            ++v36;
            v34 += 40;
            v30 = v140;
            if (v33 == v36)
            {
              v40 = 0;
              v31 = v139;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v40 = 0;
LABEL_20:
        v43 = *(v31 + 17);
        v44 = *(v43 + 16);
        if (v44)
        {
          v45 = 0;
          v46 = v43 + 32;
          while (v45 < *(v43 + 16))
          {
            sub_22FA2D328(v46, &v143);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
            v47 = swift_dynamicCast();
            v48 = *v29;
            if (v47)
            {
              v48(v30, 0, 1, v147);
              v49 = v133;
              sub_22FB0FD00(v30, v133, type metadata accessor for PhotoLibraryResource);
              v50 = *v49;
              result = sub_22FA64AB0(v49);
              if (v50)
              {
                v30 = v140;
                if (v40)
                {
                  goto LABEL_31;
                }

                a4 = v130;
                v28 = v131;
                v51 = v129;
                v52 = v127;
                goto LABEL_50;
              }
            }

            else
            {
              v48(v30, 1, 1, v147);
              result = sub_22FA2B420(v30, &qword_27DAD8358);
            }

            ++v45;
            v46 += 40;
            v30 = v140;
            if (v44 == v45)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v40)
        {
          break;
        }

LABEL_31:
        v53 = *(v138 + 17);
        v54 = *(v53 + 16);
        if (v54)
        {
          v55 = 0;
          v56 = v53 + 32;
          v57 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v56, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v59 = v145;
            v58 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v60 = (*(v58 + 16))(v59, v58);
            MEMORY[0x231907FA0](v60);

            v61 = v141;
            v62 = v142;
            v141 = v55;
            v142 = v57;

            MEMORY[0x231907FA0](v61, v62);

            v55 = v141;
            v57 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v56 += 40;
            --v54;
          }

          while (v54);
        }

        else
        {
          v55 = 0;
          v57 = 0xE000000000000000;
        }

        v143 = 0xD000000000000018;
        v144 = v136;
        MEMORY[0x231907FA0](v55, v57);

        v63 = v144;
        v64 = *(v139 + 17);
        v65 = *(v64 + 16);
        v134 = v143;
        v66 = 0;
        if (v65)
        {
          v67 = v64 + 32;
          v68 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v67, &v143);
            v141 = 32;
            v142 = 0xE100000000000000;
            v69 = v145;
            v70 = v146;
            __swift_project_boxed_opaque_existential_1(&v143, v145);
            v71 = (*(v70 + 16))(v69, v70);
            MEMORY[0x231907FA0](v71);

            v72 = v141;
            v73 = v142;
            v141 = v66;
            v142 = v68;

            MEMORY[0x231907FA0](v72, v73);

            v66 = v141;
            v68 = v142;
            __swift_destroy_boxed_opaque_existential_0(&v143);
            v67 += 40;
            --v65;
          }

          while (v65);
        }

        else
        {
          v68 = 0xE000000000000000;
        }

        v143 = 0xD000000000000018;
        v144 = v136;
        MEMORY[0x231907FA0](v66, v68);

        if (v134 == v143 && v63 == v144)
        {

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
        }

        else
        {
          v74 = sub_22FCC9704();

          a4 = v130;
          v28 = v131;
          v51 = v129;
          v52 = v127;
          v30 = v140;
          if (v74)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v75 = a4;
        v76 = v51 == a4;
        a4 += 8;
        if (!v76)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v51 + 8;
        if (a4 >= v132 || v28 >= v52)
        {
          goto LABEL_106;
        }
      }

      a4 = v130;
      v28 = v131;
      v51 = v129;
      v52 = v127;
LABEL_45:
      v75 = v28;
      v76 = v51 == v28;
      v28 += 8;
      if (v76)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v51 = *v75;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v129 = a1;
  if (a4 != a2 || &a2[8 * v27] <= a4)
  {
    memmove(a4, a2, 8 * v27);
  }

  v132 = &a4[8 * v27];
  if (v26 < 8 || a2 <= v129)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v132 - a4 + (v132 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v132 - a4) / 8));
    }

    return 1;
  }

  v77 = (v16 + 56);
  v128 = 0x800000022FCE1660;
  v78 = v127;
  v130 = a4;
LABEL_59:
  v79 = a2 - 8;
  v80 = v132;
  v131 = a2;
  v126 = a2 - 8;
  while (1)
  {
    v135 = v78;
    v81 = *(v80 - 1);
    v133 = v80 - 8;
    v82 = *v79;
    v83 = *(v81 + 17);
    v84 = *(v83 + 16);
    v140 = *v79;
    v137 = v81;
    if (v84)
    {
      break;
    }

    v91 = 0;
    v87 = v139;
LABEL_71:
    v94 = *(v82 + 17);
    v95 = *(v94 + 16);
    if (v95)
    {
      v96 = 0;
      v97 = v94 + 32;
      while (v96 < *(v94 + 16))
      {
        sub_22FA2D328(v97, &v143);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
        v98 = swift_dynamicCast();
        v99 = *v77;
        if (v98)
        {
          v99(v87, 0, 1, v147);
          v100 = v134;
          sub_22FB0FD00(v87, v134, type metadata accessor for PhotoLibraryResource);
          v101 = *v100;
          result = sub_22FA64AB0(v100);
          if (v101)
          {
            if (v91)
            {
              goto LABEL_81;
            }

            v102 = v135;
            v78 = v135 - 8;
            a4 = v130;
            a2 = v131;
            v79 = v126;
            goto LABEL_96;
          }
        }

        else
        {
          v99(v87, 1, 1, v147);
          result = sub_22FA2B420(v87, &qword_27DAD8358);
        }

        ++v96;
        v97 += 40;
        v87 = v139;
        if (v95 == v96)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v91)
    {

      v102 = v135;
      v78 = v135 - 8;
      a4 = v130;
      a2 = v131;
      v79 = v126;
LABEL_99:
      if (v102 != a2)
      {
        *v78 = *v79;
      }

      if (v132 <= a4 || (a2 = v79, v79 <= v129))
      {
        a2 = v79;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v103 = *(v137 + 17);
    v104 = *(v103 + 16);
    if (v104)
    {
      v105 = 0;
      v106 = v103 + 32;
      v107 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v106, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v108 = v145;
        v109 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v110 = (*(v109 + 16))(v108, v109);
        MEMORY[0x231907FA0](v110);

        v111 = v141;
        v112 = v142;
        v141 = v105;
        v142 = v107;

        MEMORY[0x231907FA0](v111, v112);

        v105 = v141;
        v107 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v106 += 40;
        --v104;
      }

      while (v104);
    }

    else
    {
      v105 = 0;
      v107 = 0xE000000000000000;
    }

    v143 = 0xD000000000000018;
    v144 = v128;
    MEMORY[0x231907FA0](v105, v107);

    v113 = v144;
    v114 = *(v140 + 17);
    v115 = *(v114 + 16);
    v127 = v143;
    v116 = 0;
    if (v115)
    {
      v117 = v114 + 32;
      v118 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v117, &v143);
        v141 = 32;
        v142 = 0xE100000000000000;
        v119 = v145;
        v120 = v146;
        __swift_project_boxed_opaque_existential_1(&v143, v145);
        v121 = (*(v120 + 16))(v119, v120);
        MEMORY[0x231907FA0](v121);

        v122 = v141;
        v123 = v142;
        v141 = v116;
        v142 = v118;

        MEMORY[0x231907FA0](v122, v123);

        v116 = v141;
        v118 = v142;
        __swift_destroy_boxed_opaque_existential_0(&v143);
        v117 += 40;
        --v115;
      }

      while (v115);
    }

    else
    {
      v118 = 0xE000000000000000;
    }

    v143 = 0xD000000000000018;
    v144 = v128;
    MEMORY[0x231907FA0](v116, v118);

    if (v127 == v143 && v113 == v144)
    {
      v124 = 0;
    }

    else
    {
      v124 = sub_22FCC9704();
    }

    a4 = v130;
    a2 = v131;

    v102 = v135;
    v78 = v135 - 8;
    v79 = v126;
    if (v124)
    {
      goto LABEL_99;
    }

LABEL_96:
    v76 = v102 == v132;
    v80 = v133;
    if (!v76)
    {
      *v78 = *v133;
    }

    v132 = v80;
    if (v80 <= a4)
    {
      v132 = v80;
      goto LABEL_106;
    }
  }

  v85 = v83 + 32;

  v86 = 0;
  while (v86 < *(v83 + 16))
  {
    sub_22FA2D328(v85, &v143);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020);
    v88 = v138;
    v89 = swift_dynamicCast();
    v90 = *v77;
    if (v89)
    {
      v91 = 1;
      v90(v88, 0, 1, v147);
      v92 = v136;
      sub_22FB0FD00(v88, v136, type metadata accessor for PhotoLibraryResource);
      v93 = *v92;
      result = sub_22FA64AB0(v92);
      if (v93)
      {
        v87 = v139;
        v82 = v140;
        goto LABEL_71;
      }
    }

    else
    {
      v90(v88, 1, 1, v147);
      result = sub_22FA2B420(v88, &qword_27DAD8358);
    }

    ++v86;
    v85 += 40;
    v87 = v139;
    if (v84 == v86)
    {
      v91 = 0;
      v82 = v140;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_22FB0EEA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FB0EF2C(v3);
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

uint64_t sub_22FB0EF40(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22FCC92C4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22FA8A020(v3, 0);
  sub_22FB0EFD4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22FB0EFD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD83E0, &qword_27DAD83D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD83D8);
            v9 = sub_22FA88058(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22FA3A77C(0, &qword_28147AE90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F174(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD83C8, &qword_27DAD83C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD83C0);
            v9 = sub_22FA88058(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22FA3A77C(0, &qword_28147ADE8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F314(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&qword_27DAD7460, &qword_27DAD84B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B0);
            v9 = sub_22FA880E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7458);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F4B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD8480, &qword_27DAD8478);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8478);
            v9 = sub_22FA88160(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8470);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = sub_22FCC8684();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FCC67F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[3] = type metadata accessor for PhotoLibraryWorker();
  v21[4] = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker);
  v21[0] = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0xD000000000000021;
  *(a3 + 40) = 0x800000022FCE3400;
  sub_22FCC67E4();
  v12 = sub_22FCC67B4();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  *(a3 + 48) = v12;
  *(a3 + 56) = v14;
  *(a3 + 64) = 4;
  *(a3 + 72) = 0x40DC200000000000;
  sub_22FA3A77C(0, &qword_28147ADA0);
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v15 = sub_22FCC91C4();
  *(a3 + 144) = v15;
  sub_22FA2D328(v21, a3 + 96);
  *(a3 + 136) = v19;
  v16 = v15;
  sub_22FCC8694();
  __swift_destroy_boxed_opaque_existential_0(v21);
  (*(v5 + 32))(a3 + OBJC_IVAR____TtC13PhotoAnalysis33PromptSuggestionAccessRenewalTask_logger, v7, v20);
  return a3;
}

unint64_t sub_22FB0F918()
{
  result = qword_2814810E8;
  if (!qword_2814810E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814810E8);
  }

  return result;
}

uint64_t sub_22FB0F96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C030;

  return sub_22FB02628(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23190A000);
  }

  return result;
}

uint64_t sub_22FB0FB48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB0296C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB02BD4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FB0FDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB02EB4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FE94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_34Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FB0FF1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FC1D074(a1, v4, v1 + 24);
}

uint64_t sub_22FB0FFF4()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0);
  v28 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22FCC8F94();
  v2 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FCC8914();
  v24 = *(v4 - 8);
  v5 = v24;
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for BackgroundAnalysisActivityTaskSource();
  v13 = sub_22FB110F0(&qword_281482500, v12, type metadata accessor for BackgroundAnalysisActivityTaskSource);
  sub_22FCC8904();
  v14 = type metadata accessor for BackgroundSystemTask();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *(v15 + 57) = 0u;
  v30[3] = v14;
  v30[4] = &off_2844A92C8;
  v30[0] = v15;
  type metadata accessor for Activity();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v17 = v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v16 + 24) = 0xD00000000000002BLL;
  *(v16 + 32) = 0x800000022FCDF740;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = 0;
  sub_22FA2D328(v30, v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v23 = sub_22FA5191C();
  v18 = v7;
  v19 = v10;
  v20 = v25;
  (*(v5 + 16))(v18, v10, v25);
  (*(v2 + 104))(v26, *MEMORY[0x277D85268], v27);
  v29 = MEMORY[0x277D84F90];
  sub_22FB110F0(&qword_28147AEA0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FA519B0();
  sub_22FCC9264();
  v21 = sub_22FCC8FC4();
  (*(v24 + 8))(v19, v20);
  __swift_destroy_boxed_opaque_existential_0(v30);
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v21;
  return v16;
}

uint64_t sub_22FB10498(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = sub_22FCC6794();
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  v3[78] = swift_task_alloc();
  v5 = type metadata accessor for TaskRecord(0);
  v3[79] = v5;
  v3[80] = *(v5 - 8);
  v3[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB105F4, v2, 0);
}

uint64_t sub_22FB105F4()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v44 = *(v2 + 112);
  v3 = [objc_allocWithZone(PHAGraphRebuildTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v4 = sub_22FC3CDC4(v3, v2, v0 + 16);
  *(v0 + 656) = v4;

  v5 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22FAC2350((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = type metadata accessor for LegacyTask();
  *(v0 + 664) = v10;
  *(v0 + 80) = v10;
  v11 = sub_22FB110F0(&qword_281481AE0, 255, type metadata accessor for LegacyTask);
  *(v0 + 672) = v11;
  *(v0 + 88) = v11;
  *(v0 + 56) = v4;
  v5[2] = v7 + 1;
  sub_22FA2D89C((v0 + 56), &v5[5 * v7 + 4]);
  v12 = [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
  sub_22FA2E6E4(v8, v0 + 96);

  v13 = sub_22FC3CDC4(v12, v9, v0 + 96);

  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = sub_22FAC2350((v14 > 1), v15 + 1, 1, v5);
  }

  v16 = *(v0 + 584);
  v17 = *(v0 + 576);
  *(v0 + 160) = v10;
  *(v0 + 168) = v11;
  *(v0 + 136) = v13;
  v5[2] = v15 + 1;
  sub_22FA2D89C((v0 + 136), &v5[5 * v15 + 4]);
  v18 = [objc_allocWithZone(PHAContactUpdateTask) init];
  sub_22FA2E6E4(v16, v0 + 176);

  v19 = sub_22FC3CDC4(v18, v17, v0 + 176);

  v21 = v5[2];
  v20 = v5[3];
  if (v21 >= v20 >> 1)
  {
    v5 = sub_22FAC2350((v20 > 1), v21 + 1, 1, v5);
  }

  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  *(v0 + 240) = v10;
  *(v0 + 248) = v11;
  *(v0 + 216) = v19;
  v5[2] = v21 + 1;
  sub_22FA2D89C((v0 + 216), &v5[5 * v21 + 4]);
  v24 = [objc_allocWithZone(PHAGraphForceGraphRebuildTask) init];
  sub_22FA2E6E4(v22, v0 + 256);

  v25 = sub_22FC3CDC4(v24, v23, v0 + 256);

  v27 = v5[2];
  v26 = v5[3];
  if (v27 >= v26 >> 1)
  {
    v5 = sub_22FAC2350((v26 > 1), v27 + 1, 1, v5);
  }

  v28 = *(v0 + 584);
  v29 = *(v0 + 576);
  *(v0 + 320) = v10;
  *(v0 + 328) = v11;
  *(v0 + 296) = v25;
  v5[2] = v27 + 1;
  sub_22FA2D89C((v0 + 296), &v5[5 * v27 + 4]);
  sub_22FA2E6E4(v28, v0 + 336);
  v30 = type metadata accessor for PublicEventCachingTask();
  v31 = objc_allocWithZone(v30);

  v32 = sub_22FA80F7C(0, v29, v0 + 336);

  v34 = v5[2];
  v33 = v5[3];
  if (v34 >= v33 >> 1)
  {
    v5 = sub_22FAC2350((v33 > 1), v34 + 1, 1, v5);
  }

  *(v0 + 400) = v30;
  *(v0 + 408) = sub_22FB110F0(&unk_28147F5B0, 255, type metadata accessor for PublicEventCachingTask);
  *(v0 + 376) = v32;
  v5[2] = v34 + 1;
  sub_22FA2D89C((v0 + 376), &v5[5 * v34 + 4]);
  v35 = type metadata accessor for PublicEventCacheInvalidationTask();
  v36 = objc_allocWithZone(v35);

  v38 = sub_22FC22ADC(v37);

  v40 = v5[2];
  v39 = v5[3];
  if (v40 >= v39 >> 1)
  {
    v5 = sub_22FAC2350((v39 > 1), v40 + 1, 1, v5);
  }

  *(v0 + 680) = v5;
  *(v0 + 440) = v35;
  *(v0 + 448) = sub_22FB110F0(&qword_28147CFC8, 255, type metadata accessor for PublicEventCacheInvalidationTask);
  *(v0 + 416) = v38;
  v5[2] = v40 + 1;
  sub_22FA2D89C((v0 + 416), &v5[5 * v40 + 4]);
  if ([objc_opt_self() graphConsistencyCheckIsEnabled] && objc_msgSend(*(v44 + 112), sel_isReady))
  {
    v41 = *(*(v0 + 576) + 120);
    *(v0 + 688) = v41;
    *(v0 + 480) = v10;
    *(v0 + 488) = v11;
    *(v0 + 456) = v4;

    return MEMORY[0x2822009F8](sub_22FB10BE4, v41, 0);
  }

  else
  {

    v42 = *(v0 + 8);

    return v42(v5);
  }
}

uint64_t sub_22FB10BE4()
{
  v1 = v0[74];
  sub_22FC3549C(v0 + 57, v0[78]);
  __swift_destroy_boxed_opaque_existential_0((v0 + 57));

  return MEMORY[0x2822009F8](sub_22FB10C60, v1, 0);
}

uint64_t sub_22FB10C60()
{
  v1 = *(v0 + 624);
  v2 = (*(*(v0 + 640) + 48))(v1, 1, *(v0 + 632));
  v3 = *(v0 + 656);
  if (v2 == 1)
  {

    sub_22FB10FC8(v1);
    v4 = *(v0 + 680);
    goto LABEL_10;
  }

  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  sub_22FB11030(v1, *(v0 + 648));
  sub_22FCC6784();
  sub_22FCC66D4();
  v9 = v8;
  (*(v6 + 8))(v5, v7);
  v10 = *(v3 + 16);
  if ([v10 respondsToSelector_])
  {
    [v10 incrementalWindow];
    if (v11 >= v9)
    {
LABEL_5:
      v12 = *(v0 + 648);

      sub_22FB11094(v12);
      v4 = *(v0 + 680);
      goto LABEL_10;
    }
  }

  else if (v9 <= 0.0)
  {
    goto LABEL_5;
  }

  v13 = *(v0 + 680);
  v14 = *(v0 + 584);
  v15 = *(v0 + 576);
  v16 = [objc_allocWithZone(PHAGraphInternalConsistencyUpdateTask) init];
  sub_22FA2E6E4(v14, v0 + 496);

  v17 = sub_22FC3CDC4(v16, v15, v0 + 496);

  v19 = *(v13 + 16);
  v18 = *(v13 + 24);
  v4 = *(v0 + 680);
  if (v19 >= v18 >> 1)
  {
    v4 = sub_22FAC2350((v18 > 1), v19 + 1, 1, *(v0 + 680));
  }

  v20 = *(v0 + 648);
  v23 = *(v0 + 664);

  sub_22FB11094(v20);
  *(v0 + 560) = v23;
  *(v0 + 536) = v17;
  v4[2] = v19 + 1;
  sub_22FA2D89C((v0 + 536), &v4[5 * v19 + 4]);
LABEL_10:

  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t sub_22FB10F34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundAnalysisActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB10F70(uint64_t a1, uint64_t a2)
{
  result = sub_22FB110F0(&qword_281482500, a2, type metadata accessor for BackgroundAnalysisActivityTaskSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB10FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB11030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB11094(uint64_t a1)
{
  v2 = type metadata accessor for TaskRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB110F0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *sub_22FB11138()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x800000022FCD64C0;
  result[4] = 0;
  qword_281487F00 = result;
  return result;
}

uint64_t sub_22FB11188()
{
  if (qword_281480360 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB113C0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_22FB113E4, v2, 0);
}

uint64_t sub_22FB1140C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = sub_22FCC6564();
  v0[22] = v3;
  sub_22FAC7BB0(v2);
  v4 = sub_22FCC89C4();
  v0[23] = v4;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_22FB1158C;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_22FB11788;
  v0[13] = &block_descriptor_19;
  v0[14] = v5;
  [v1 upgradePosterConfigurationWithAssetDirectory:v3 options:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FB1158C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_22FB1170C;
  }

  else
  {
    v2 = sub_22FB1169C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB1169C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB1170C()
{
  v1 = v0[23];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_22FB11788(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22FB11A0C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_22FCC65F4();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v4[6] = _Block_copy(a3);
  sub_22FCC65A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
  v8 = sub_22FCC89D4();
  v4[7] = v8;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_22FB11B80;

  return sub_22FB113C0(v7, v8);
}

uint64_t sub_22FB11B80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[6];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v9 = sub_22FCC6504();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[6]);

  v10 = v7[1];

  return v10();
}

uint64_t sub_22FB11DB0()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_22FB11E34(uint64_t a1)
{
  result = sub_22FB12354(&qword_281480350);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB11E78(uint64_t a1)
{
  *(a1 + 8) = sub_22FB12354(&unk_281480338);
  result = sub_22FB12354(&qword_281480358);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB11EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C030;

  return sub_22FB11A0C(v2, v3, v5, v4);
}

uint64_t sub_22FB11FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE373C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t *sub_22FB1207C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v24 = a4;
  v23 = a3;
  v8 = *v4;
  v9 = sub_22FCC8684();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  swift_defaultActor_initialize();
  v16 = [objc_allocWithZone(PHAWallpaperSuggestionUpgradeSession) init];
  v5[19] = MEMORY[0x277D84F90];
  v5[14] = v16;
  v5[15] = a1;
  v5[16] = a2;
  v17 = sub_22FB12354(&qword_281480348);
  swift_bridgeObjectRetain_n();
  sub_22FA2CEC4(v8, v17);
  type metadata accessor for StateHolder();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v18[2] = 0xD000000000000010;
  v18[3] = 0x800000022FCD64C0;
  v18[4] = a1;
  v18[5] = a2;
  v19 = *(v10 + 16);
  v19(v18 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v15, v9);
  v19(v13, v15, v9);
  sub_22FCC85E4();
  (*(v10 + 8))(v15, v9);
  v5[17] = v18;
  type metadata accessor for ServiceOperationManager();
  v20 = swift_allocObject();
  v21 = v23;

  swift_defaultActor_initialize();
  *(v20 + 144) = MEMORY[0x277D84F98];
  *(v20 + 152) = 0;
  *(v20 + 112) = a1;
  *(v20 + 120) = a2;
  *(v20 + 128) = v21;
  *(v20 + 136) = v24;
  v5[18] = v20;
  if (qword_281480360 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v5;
}

uint64_t sub_22FB12354(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WallpaperService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GyroPosterFastPassActivity()
{
  result = qword_28147E338;
  if (!qword_28147E338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB1240C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GyroPosterFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB12448()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0);
  v26 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22FCC8F94();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FCC8914();
  v22 = *(v4 - 8);
  v5 = v22;
  v23 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WallpaperActivityTaskSource();
  v13 = sub_22FB13434(qword_28147D9D8, v12, type metadata accessor for WallpaperActivityTaskSource);
  sub_22FCC8904();
  v14 = type metadata accessor for BackgroundSystemTask();
  v15 = swift_allocObject();
  v15[1] = 0u;
  v15[2] = 0u;
  v15[3] = 0u;
  *(v15 + 57) = 0u;
  v28[3] = v14;
  v28[4] = &off_2844A92C8;
  v28[0] = v15;
  type metadata accessor for Activity();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v17 = v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v16 + 24) = 0xD000000000000022;
  *(v16 + 32) = 0x800000022FCDF770;
  *(v16 + 40) = v11;
  *(v16 + 48) = v13;
  *(v16 + 56) = 0;
  sub_22FA2D328(v28, v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v21 = sub_22FA5191C();
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  (*(v2 + 104))(v24, *MEMORY[0x277D85268], v25);
  v27 = MEMORY[0x277D84F90];
  sub_22FB13434(&qword_28147AEA0, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360);
  sub_22FA519B0();
  sub_22FCC9264();
  v19 = sub_22FCC8FC4();
  (*(v22 + 8))(v10, v18);
  __swift_destroy_boxed_opaque_existential_0(v28);
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v19;
  return v16;
}

uint64_t sub_22FB128E4(uint64_t a1, uint64_t a2)
{
  v3[93] = a2;
  v3[92] = a1;
  v4 = sub_22FCC67F4();
  v3[94] = v4;
  v3[95] = *(v4 - 8);
  v3[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB129A8, v2, 0);
}

uint64_t sub_22FB129A8()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationNightlyTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v4 = sub_22FC3CDC4(v3, v2, v0 + 16);

  v5 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_22FAC2350((v6 > 1), v7 + 1, 1, v5);
  }

  v8 = *(v0 + 744);
  v9 = *(v0 + 736);
  v85 = type metadata accessor for LegacyTask();
  *(v0 + 80) = v85;
  v10 = sub_22FB13434(&qword_281481AE0, 255, type metadata accessor for LegacyTask);
  *(v0 + 88) = v10;
  *(v0 + 56) = v4;
  v5[2] = v7 + 1;
  sub_22FA2D89C((v0 + 56), &v5[5 * v7 + 4]);
  v11 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v8, v0 + 96);

  v12 = sub_22FC3CDC4(v11, v9, v0 + 96);

  v14 = v5[2];
  v13 = v5[3];
  if (v14 >= v13 >> 1)
  {
    v5 = sub_22FAC2350((v13 > 1), v14 + 1, 1, v5);
  }

  v15 = *(v0 + 744);
  v16 = *(v0 + 736);
  *(v0 + 160) = v85;
  *(v0 + 168) = v10;
  *(v0 + 136) = v12;
  v5[2] = v14 + 1;
  sub_22FA2D89C((v0 + 136), &v5[5 * v14 + 4]);
  v17 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v15, v0 + 176);

  v18 = sub_22FC3CDC4(v17, v16, v0 + 176);

  v20 = v5[2];
  v19 = v5[3];
  if (v20 >= v19 >> 1)
  {
    v5 = sub_22FAC2350((v19 > 1), v20 + 1, 1, v5);
  }

  v21 = *(v0 + 744);
  v22 = *(v0 + 736);
  *(v0 + 240) = v85;
  *(v0 + 248) = v10;
  *(v0 + 216) = v18;
  v5[2] = v20 + 1;
  sub_22FA2D89C((v0 + 216), &v5[5 * v20 + 4]);
  v23 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v21, v0 + 256);

  v24 = sub_22FC3CDC4(v23, v22, v0 + 256);

  v26 = v5[2];
  v25 = v5[3];
  if (v26 >= v25 >> 1)
  {
    v5 = sub_22FAC2350((v25 > 1), v26 + 1, 1, v5);
  }

  v27 = *(v0 + 744);
  v28 = *(v0 + 736);
  *(v0 + 320) = v85;
  *(v0 + 328) = v10;
  *(v0 + 296) = v24;
  v5[2] = v26 + 1;
  sub_22FA2D89C((v0 + 296), &v5[5 * v26 + 4]);
  v29 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v27, v0 + 336);

  v30 = sub_22FC3CDC4(v29, v28, v0 + 336);

  v32 = v5[2];
  v31 = v5[3];
  if (v32 >= v31 >> 1)
  {
    v5 = sub_22FAC2350((v31 > 1), v32 + 1, 1, v5);
  }

  v33 = *(v0 + 744);
  v34 = *(v0 + 736);
  *(v0 + 400) = v85;
  *(v0 + 408) = v10;
  *(v0 + 376) = v30;
  v5[2] = v32 + 1;
  sub_22FA2D89C((v0 + 376), &v5[5 * v32 + 4]);
  v35 = [objc_allocWithZone(PHAWallpaperSettlingEffectGenerationTask) init];
  sub_22FA2E6E4(v33, v0 + 416);

  v36 = sub_22FC3CDC4(v35, v34, v0 + 416);

  v38 = v5[2];
  v37 = v5[3];
  if (v38 >= v37 >> 1)
  {
    v5 = sub_22FAC2350((v37 > 1), v38 + 1, 1, v5);
  }

  v39 = *(v0 + 768);
  v40 = *(v0 + 760);
  v83 = *(v0 + 752);
  v41 = *(v0 + 744);
  v42 = *(v0 + 736);
  *(v0 + 480) = v85;
  *(v0 + 488) = v10;
  *(v0 + 456) = v36;
  v5[2] = v38 + 1;
  sub_22FA2D89C((v0 + 456), &v5[5 * v38 + 4]);
  sub_22FA2E6E4(v41, v0 + 496);
  v43 = type metadata accessor for GyroPosterSuggestionGenerationTask();
  v44 = swift_allocObject();
  *(v44 + 56) = 0x40F5180000000000;
  *(v44 + 64) = 0xD000000000000022;
  *(v44 + 72) = 0x800000022FCE3660;
  sub_22FCC67E4();
  v45 = sub_22FCC67B4();
  v47 = v46;
  v48 = v83;
  v84 = *(v40 + 8);
  v84(v39, v48);
  *(v44 + 80) = v45;
  *(v44 + 88) = v47;
  *(v44 + 96) = xmmword_22FCD3720;
  *(v44 + 112) = 0;
  *(v44 + 120) = 0;
  *(v44 + 128) = 1;
  v49 = type metadata accessor for MomentGraphWorker();
  *(v44 + 200) = 0;
  *(v44 + 208) = 0;
  v82 = v49;
  *(v44 + 40) = v49;
  v80 = sub_22FB13434(&qword_281480230, 255, type metadata accessor for MomentGraphWorker);
  *(v44 + 48) = v80;
  *(v44 + 16) = v42;
  v50 = *(v42 + 112);
  v51 = *(v50 + 112);

  v52 = [v51 photoLibrary];
  *(v44 + 176) = v52;
  *(v44 + 224) = 0;
  sub_22FA2E6E4(v0 + 496, v44 + 136);
  *(v44 + 216) = 0;
  v81 = v50;
  v53 = sub_22FAC6A18(v52, *(v50 + 112));
  v55 = v54;
  sub_22FA518B4(v0 + 496);
  *(v44 + 184) = v53;
  *(v44 + 192) = v55;
  v57 = v5[2];
  v56 = v5[3];
  if (v57 >= v56 >> 1)
  {
    v5 = sub_22FAC2350((v56 > 1), v57 + 1, 1, v5);
  }

  v79 = (v0 + 656);
  v58 = *(v0 + 744);
  *(v0 + 560) = v43;
  *(v0 + 568) = sub_22FB13434(&qword_27DAD84C8, 255, type metadata accessor for GyroPosterSuggestionGenerationTask);
  *(v0 + 536) = v44;
  v5[2] = v57 + 1;
  sub_22FA2D89C((v0 + 536), &v5[5 * v57 + 4]);
  sub_22FA2E6E4(v58, v0 + 576);
  v59 = type metadata accessor for Spatial3DPickerPreviewGenerationTask();
  swift_allocObject();

  v61 = sub_22FB37FEC(v60, v0 + 576);
  v63 = v5[2];
  v62 = v5[3];
  if (v63 >= v62 >> 1)
  {
    v5 = sub_22FAC2350((v62 > 1), v63 + 1, 1, v5);
  }

  v64 = *(v0 + 768);
  v65 = *(v0 + 752);
  v66 = *(v0 + 744);
  v67 = *(v0 + 736);
  *(v0 + 640) = v59;
  *(v0 + 648) = sub_22FB13434(&qword_28147C5A8, 255, type metadata accessor for Spatial3DPickerPreviewGenerationTask);
  *(v0 + 616) = v61;
  v5[2] = v63 + 1;
  sub_22FA2D89C((v0 + 616), &v5[5 * v63 + 4]);
  sub_22FA2E6E4(v66, v79);
  v68 = type metadata accessor for MessagesBackdropGenerationTask();
  v69 = swift_allocObject();
  *(v69 + 56) = 0x40F5180000000000;
  *(v69 + 64) = 0xD00000000000001ELL;
  *(v69 + 72) = 0x800000022FCE15E0;
  sub_22FCC67E4();
  v70 = sub_22FCC67B4();
  v72 = v71;
  v84(v64, v65);
  *(v69 + 80) = v70;
  *(v69 + 88) = v72;
  *(v69 + 96) = xmmword_22FCD3720;
  *(v69 + 112) = 0;
  *(v69 + 120) = 0;
  *(v69 + 128) = 1;
  *(v69 + 192) = 0u;
  *(v69 + 208) = 0u;
  *(v69 + 224) = 0u;
  *(v69 + 40) = v82;
  *(v69 + 48) = v80;
  *(v69 + 16) = v67;
  v73 = *(v81 + 112);

  *(v69 + 176) = [v73 photoLibrary];
  *(v69 + 184) = [objc_allocWithZone(PHAWallpaperSuggestionRefreshSession) initWithGraphManager_];
  *(v69 + 248) = 0;
  v74 = *(v0 + 672);
  *(v69 + 136) = *v79;
  *(v69 + 152) = v74;
  *(v69 + 168) = *(v0 + 688);
  *(v69 + 240) = 0;
  v76 = v5[2];
  v75 = v5[3];
  if (v76 >= v75 >> 1)
  {
    v5 = sub_22FAC2350((v75 > 1), v76 + 1, 1, v5);
  }

  *(v0 + 720) = v68;
  *(v0 + 728) = sub_22FB13434(&qword_28147D308, 255, type metadata accessor for MessagesBackdropGenerationTask);
  *(v0 + 696) = v69;
  v5[2] = v76 + 1;
  sub_22FA2D89C((v0 + 696), &v5[5 * v76 + 4]);

  v77 = *(v0 + 8);

  return v77(v5);
}

uint64_t sub_22FB133A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WallpaperActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB133DC(uint64_t a1, uint64_t a2)
{
  result = sub_22FB13434(qword_28147D9D8, a2, type metadata accessor for WallpaperActivityTaskSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB13434(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22FB1349C()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB136D0(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_22FB1C3B8, v2, 0);
}

uint64_t sub_22FB13808()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[17];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[16];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13A5C()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13CB0()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[16];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[15];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13F04()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB14138;

  return sub_22FB27F18();
}

uint64_t sub_22FB14138(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_22FB14250, v2, 0);
}

uint64_t sub_22FB14250()
{
  v1 = v0[27];
  v2 = v0[25];
  *(v2 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
  *(v2 + 144) = v1;
  v3 = sub_22FA4DAB0(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750);
  swift_arrayDestroy();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB14308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return (sub_22FB143B8)(a1);
}

uint64_t sub_22FB143B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB1445C;

  return sub_22FB1347C();
}

uint64_t sub_22FB1445C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB1455C, 0, 0);
}

uint64_t sub_22FB1455C()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE36C0, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD00000000000002ALL;
    v20 = 0x800000022FCE0960;
    MEMORY[0x231907FA0](*(v8 + 112), *(v8 + 120));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE36C0, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB14884(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB148A4, 0, 0);
}

uint64_t sub_22FB148A4()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8320(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB14C1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB14CD4;

  return sub_22FA929E0();
}

uint64_t sub_22FB14CD4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB14DD4, 0, 0);
}

uint64_t sub_22FB14DD4()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x5065636976726553, 0xEF72656469766F72, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v19 = sub_22FCC9904();
    v20 = v10;
    MEMORY[0x231907FA0](8250, 0xE200000000000000);
    MEMORY[0x231907FA0](*(v7 + 176), *(v7 + 184));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v8 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[6], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0x5065636976726553, 0xEF72656469766F72, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB15108(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB15128, 0, 0);
}

uint64_t sub_22FB15128()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF86E0(*(v1 + 128));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB1549C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB1552C;

  return sub_22FAED920();
}

uint64_t sub_22FB1552C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB1562C, 0, 0);
}

uint64_t sub_22FB1562C()
{
  v20 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x7974697669746341, 0xEF726567616E614DLL, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = sub_22FAEB060();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x7974697669746341, 0xEF726567616E614DLL, &v19);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FB1595C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB15A00;

  return sub_22FB13C90();
}

uint64_t sub_22FB15A00(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB15B00, 0, 0);
}

uint64_t sub_22FB15B00()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE36E0, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD000000000000024;
    v20 = 0x800000022FCE3560;
    MEMORY[0x231907FA0](*(v8 + 120), *(v8 + 128));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE36E0, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB15E28(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB15E48, 0, 0);
}

uint64_t sub_22FB15E48()
{
  v29 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022FCE3700;
  v3 = *(v1 + 112);
  v4 = [v3 description];
  v5 = sub_22FCC8A84();
  v7 = v6;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE3720, &v28);
    _os_log_impl(&dword_22FA28000, v9, v10, "%{public}s status BEGIN", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  swift_retain_n();
  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446210;
    v17 = [v3 description];
    v18 = sub_22FCC8A84();
    v20 = v19;

    v21 = sub_22FA2F600(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v8, v0[12], 0);

  v22 = sub_22FCC8664();
  v23 = sub_22FCC8F34();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE3720, &v28);
    _os_log_impl(&dword_22FA28000, v22, v23, "%{public}s status END", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23190A000](v25, -1, -1);
    MEMORY[0x23190A000](v24, -1, -1);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_22FB16230(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB162E8;

  return sub_22FB29940();
}

uint64_t sub_22FB162E8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB163E8, 0, 0);
}

uint64_t sub_22FB163E8()
{
  v20 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x614672656B726F57, 0xED000079726F7463, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = sub_22FCC9904();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[6], v0[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x614672656B726F57, 0xED000079726F7463, &v19);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FB16724(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB167DC;

  return sub_22FB2E974();
}

uint64_t sub_22FB167DC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB168DC, 0, 0);
}

uint64_t sub_22FB168DC()
{
  v20 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x656863536B736154, 0xED000072656C7564, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = sub_22FCC9904();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[6], v0[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x656863536B736154, 0xED000072656C7564, &v19);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_22FB16C18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB16CBC;

  return sub_22FB137E8();
}

uint64_t sub_22FB16CBC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB16DBC, 0, 0);
}

uint64_t sub_22FB16DBC()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x7672655374736554, 0xEB00000000656369, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD00000000000001ALL;
    v20 = 0x800000022FCE3740;
    MEMORY[0x231907FA0](*(v8 + 128), *(v8 + 136));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0x7672655374736554, 0xEB00000000656369, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB170E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB17188;

  return sub_22FB13EE4();
}

uint64_t sub_22FB17188(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB17288, 0, 0);
}

uint64_t sub_22FB17288()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE3760, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD000000000000028;
    v20 = 0x800000022FCE3780;
    MEMORY[0x231907FA0](*(v8 + 112), *(v8 + 120));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE3760, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB175B0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB175D0, 0, 0);
}

uint64_t sub_22FB175D0()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8460(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB17948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB179D8;

  return sub_22FBBC5C4();
}

uint64_t sub_22FB179D8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB17AD8, 0, 0);
}

uint64_t sub_22FB17AD8()
{
  v23 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE37B0, &v22);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  swift_retain_n();
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = [*(v8 + 112) description];
    v12 = sub_22FCC8A84();
    v14 = v13;

    v15 = sub_22FA2F600(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v16 = sub_22FCC8664();
  v17 = sub_22FCC8F34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE37B0, &v22);
    _os_log_impl(&dword_22FA28000, v16, v17, "%{public}s status END", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23190A000](v19, -1, -1);
    MEMORY[0x23190A000](v18, -1, -1);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FB17E0C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB17E2C, 0, 0);
}

uint64_t sub_22FB17E2C()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF85A0(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB181A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18248;

  return sub_22FB13A3C();
}

uint64_t sub_22FB18248(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18348, 0, 0);
}

uint64_t sub_22FB18348()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE37D0, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD000000000000024;
    v20 = 0x800000022FCE37F0;
    MEMORY[0x231907FA0](*(v8 + 112), *(v8 + 120));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE37D0, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB18670(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18714;

  return sub_22FB1347C();
}

uint64_t sub_22FB18714(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18814, 0, 0);
}

uint64_t sub_22FB18814()
{
  v21 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000019, 0x800000022FCE3820, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 136446210;
    v18 = v10;
    v19 = 0xD000000000000036;
    v20 = 0x800000022FCE3840;
    MEMORY[0x231907FA0](*(v8 + 112), *(v8 + 120));

    v11 = sub_22FA2F600(v19, v20, &v18);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v12 = sub_22FCC8664();
  v13 = sub_22FCC8F34();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_22FA2F600(0xD000000000000019, 0x800000022FCE3820, &v19);
    _os_log_impl(&dword_22FA28000, v12, v13, "%{public}s status END", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23190A000](v15, -1, -1);
    MEMORY[0x23190A000](v14, -1, -1);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FB18B3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18BCC;

  return sub_22FC1AF6C();
}

uint64_t sub_22FB18BCC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18CCC, 0, 0);
}

uint64_t sub_22FB18CCC()
{
  v23 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE3880, &v22);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  swift_retain_n();
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[3];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    v11 = [v8 description];
    v12 = sub_22FCC8A84();
    v14 = v13;

    v15 = sub_22FA2F600(v12, v14, &v22);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[5], v0[2], 0);

  v16 = sub_22FCC8664();
  v17 = sub_22FCC8F34();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE3880, &v22);
    _os_log_impl(&dword_22FA28000, v16, v17, "%{public}s status END", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23190A000](v19, -1, -1);
    MEMORY[0x23190A000](v18, -1, -1);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FB19000(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB190B8;

  return sub_22FC47A64();
}

uint64_t sub_22FB190B8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB191B8, 0, 0);
}

uint64_t sub_22FB191B8()
{
  v20 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v19 = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_22FA2F600(0x7669747563657845, 0xE900000000000065, &v19);
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    v9 = sub_22FCC9904();
    v11 = v10;

    v12 = sub_22FA2F600(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v0[6], v0[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x7669747563657845, 0xE900000000000065, &v19);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v0[1];

  return v17();
}

uint64_t StatusProtocol.dumpStatus(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_22FB19654;

  return v9(a2, a3);
}

uint64_t sub_22FB19654(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_22FB19754, 0, 0);
}

uint64_t sub_22FB19754()
{
  v33 = v0;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v32 = v4;
    *v3 = 136446210;
    v5 = sub_22FCC9904();
    v7 = sub_22FA2F600(v5, v6, &v32);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_22FA28000, v1, v2, "%{public}s status BEGIN", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x23190A000](v4, -1, -1);
    MEMORY[0x23190A000](v3, -1, -1);
  }

  v8 = *(v0[6] + 16);
  v8(v0[8], v0[5], v0[3]);
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[8];
  if (v11)
  {
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[3];
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 136446210;
    v8(v14, v12, v15);
    v17 = *(v13 + 8);
    v17(v12, v15);
    v18 = sub_22FCC96C4();
    v20 = v19;
    v17(v14, v15);
    v21 = sub_22FA2F600(v18, v20, &v32);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_22FA28000, v9, v10, "%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x23190A000](v31, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  else
  {
    (*(v0[6] + 8))(v0[8], v0[3]);
  }

  sub_22FB1AC1C(v0[10], v0[2], 0, v0[3], v0[4]);

  v22 = sub_22FCC8664();
  v23 = sub_22FCC8F34();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v32 = v25;
    *v24 = 136446210;
    v26 = sub_22FCC9904();
    v28 = sub_22FA2F600(v26, v27, &v32);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22FA28000, v22, v23, "%{public}s status END", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23190A000](v25, -1, -1);
    MEMORY[0x23190A000](v24, -1, -1);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_22FB19B0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB14884(a1);
}

uint64_t sub_22FB19BBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB14C1C(a1);
}

uint64_t sub_22FB19C6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB15108(a1);
}

uint64_t sub_22FB19D1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB1549C(a1);
}

uint64_t sub_22FB19DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB1595C(a1);
}

uint64_t sub_22FB19E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C21C;

  return StatusProtocol.dumpStatus(to:)(a1, a2, a3);
}

void sub_22FB19F40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = sub_22FCC8BE4();
  v8 = v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v93 = v6;
  v94 = a3 + 1;
  v14 = __OFADD__(a3, 1);
  v96 = v14;
  v88 = a1;

  v15 = 0;
  v89 = v13;
  v90 = a1 + 64;
  if (!v12)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v16 = v15;
LABEL_17:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(v88 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_22FA2F7D8(*(v88 + 56) + 32 * v20, v101);
      *&v102 = v23;
      *(&v102 + 1) = v22;
      sub_22FA4FE00(v101, &v103);

      v18 = v16;
LABEL_18:
      v105 = v102;
      v106[0] = v103;
      v106[1] = v104;
      v24 = *(&v102 + 1);
      if (!*(&v102 + 1))
      {

        return;
      }

      v25 = v105;
      sub_22FA4FE00(v106, v101);
      sub_22FA2F7D8(v101, &v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_22FA2F7D8(v101, &v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D0);
      if (swift_dynamicCast())
      {
        v92 = v18;
        v33 = v99[0];

        v34 = sub_22FCC8664();
        v35 = sub_22FCC8F34();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v102 = v37;
          *v36 = 136446466;
          *(v36 + 4) = sub_22FA2F600(v93, v8, &v102);
          *(v36 + 12) = 2082;
          v38 = sub_22FA2F600(v25, v24, &v102);

          *(v36 + 14) = v38;
          _os_log_impl(&dword_22FA28000, v34, v35, "%{public}s%{public}s [", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v37, -1, -1);
          MEMORY[0x23190A000](v36, -1, -1);
        }

        else
        {
        }

        v49 = *(v33 + 16);
        if (v49)
        {
          v50 = 0;
          while (v50 < v49)
          {
            v51 = *(v33 + 32 + 8 * v50);
            *&v102 = v50;

            v98[0] = sub_22FCC96C4();
            v98[1] = v52;
            v98[5] = v26;
            v98[2] = v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338);
            v53 = sub_22FCC9524();
            sub_22FA649D8(v98, &v102);
            sub_22FA8EDF8(v98);
            v54 = v102;
            v55 = sub_22FA2DB54(v102, *(&v102 + 1));
            if (v56)
            {
              goto LABEL_62;
            }

            v53[(v55 >> 6) + 8] |= 1 << v55;
            *(v53[6] + 16 * v55) = v54;
            sub_22FA4FE00(&v103, (v53[7] + 32 * v55));
            v57 = v53[2];
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_63;
            }

            v53[2] = v59;
            if (v96)
            {
              goto LABEL_64;
            }

            ++v50;
            a4(v53, a2, v94);

            v49 = *(v33 + 16);
            if (v50 == v49)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_61;
        }

LABEL_41:

        v60 = sub_22FCC8664();
        v61 = sub_22FCC8F34();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v102 = v63;
          *v62 = 136446210;
          *(v62 + 4) = sub_22FA2F600(v93, v8, &v102);
          _os_log_impl(&dword_22FA28000, v60, v61, "%{public}s]", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x23190A000](v63, -1, -1);
          MEMORY[0x23190A000](v62, -1, -1);
        }
      }

      else
      {
        sub_22FA2F7D8(v101, &v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_22FA2F7D8(v101, &v102);

          v64 = sub_22FCC8664();
          v65 = sub_22FCC8F34();

          if (os_log_type_enabled(v64, v65))
          {
            v87 = v65;
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v100 = v67;
            *v66 = 136446722;
            *(v66 + 4) = sub_22FA2F600(v93, v8, &v100);
            *(v66 + 12) = 2082;
            v68 = sub_22FA2F600(v25, v24, &v100);
            v69 = v18;
            v70 = v68;

            *(v66 + 14) = v70;
            *(v66 + 22) = 2082;
            sub_22FA2F7D8(&v102, v99);
            v71 = sub_22FCC8AE4();
            v73 = v72;
            __swift_destroy_boxed_opaque_existential_0(&v102);
            v74 = sub_22FA2F600(v71, v73, &v100);

            *(v66 + 24) = v74;
            _os_log_impl(&dword_22FA28000, v64, v87, "%{public}s%{public}s: %{public}s", v66, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23190A000](v67, -1, -1);
            MEMORY[0x23190A000](v66, -1, -1);

            __swift_destroy_boxed_opaque_existential_0(v101);
            v15 = v69;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(&v102);
            __swift_destroy_boxed_opaque_existential_0(v101);
            v15 = v18;
          }

          goto LABEL_57;
        }

        v43 = v99[0];

        v44 = sub_22FCC8664();
        v45 = sub_22FCC8F34();

        v92 = v18;
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v102 = v47;
          *v46 = 136446466;
          *(v46 + 4) = sub_22FA2F600(v93, v8, &v102);
          *(v46 + 12) = 2082;
          v48 = sub_22FA2F600(v25, v24, &v102);

          *(v46 + 14) = v48;
          _os_log_impl(&dword_22FA28000, v44, v45, "%{public}s%{public}s [", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v47, -1, -1);
          MEMORY[0x23190A000](v46, -1, -1);
        }

        else
        {
        }

        v75 = *(v43 + 16);
        if (v75)
        {
          v76 = (v43 + 40);
          do
          {
            v81 = *(v76 - 1);
            v80 = *v76;

            v82 = sub_22FCC8664();
            v83 = sub_22FCC8F34();

            if (os_log_type_enabled(v82, v83))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *&v102 = v78;
              *v77 = 136446466;
              *(v77 + 4) = sub_22FA2F600(v93, v8, &v102);
              *(v77 + 12) = 2082;
              v79 = sub_22FA2F600(v81, v80, &v102);

              *(v77 + 14) = v79;
              _os_log_impl(&dword_22FA28000, v82, v83, "%{public}s  %{public}s", v77, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23190A000](v78, -1, -1);
              MEMORY[0x23190A000](v77, -1, -1);
            }

            else
            {
            }

            v76 += 2;
            --v75;
          }

          while (v75);
        }

        v60 = sub_22FCC8664();
        v84 = sub_22FCC8F34();

        if (os_log_type_enabled(v60, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v102 = v86;
          *v85 = 136446210;
          *(v85 + 4) = sub_22FA2F600(v93, v8, &v102);
          _os_log_impl(&dword_22FA28000, v60, v84, "%{public}s]", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x23190A000](v86, -1, -1);
          MEMORY[0x23190A000](v85, -1, -1);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v101);
      v15 = v92;
LABEL_57:
      v13 = v89;
      v9 = v90;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v91 = v18;
    v27 = v99[0];

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v102 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_22FA2F600(v93, v8, &v102);
      *(v30 + 12) = 2082;
      v32 = sub_22FA2F600(v25, v24, &v102);

      *(v30 + 14) = v32;
      _os_log_impl(&dword_22FA28000, v28, v29, "%{public}s%{public}s {", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {
    }

    v13 = v89;
    v9 = v90;
    if (v96)
    {
      goto LABEL_65;
    }

    a4(v27, a2, v94);

    v39 = sub_22FCC8664();
    v40 = sub_22FCC8F34();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v102 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_22FA2F600(v93, v8, &v102);
      _os_log_impl(&dword_22FA28000, v39, v40, "%{public}s}", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x23190A000](v42, -1, -1);
      MEMORY[0x23190A000](v41, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v101);
    v15 = v91;
  }

  while (v12);
LABEL_10:
  if (v13 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v12 = 0;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      goto LABEL_18;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      goto LABEL_17;
    }
  }

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
}

void sub_22FB1AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22FCC8BE4();
  v9 = v8;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v89 = (v11 + 63) >> 6;
  v95 = v7;
  v96 = a3 + 1;
  v14 = __OFADD__(a3, 1);
  v99 = v14;

  v15 = 0;
  v93 = a1;
  v94 = v9;
  v90 = a1 + 64;
  while (v13)
  {
    v16 = v15;
LABEL_17:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_22FA2F7D8(*(a1 + 56) + 32 * v20, v104);
    *&v105 = v23;
    *(&v105 + 1) = v22;
    sub_22FA4FE00(v104, &v106);

    v18 = v16;
LABEL_18:
    v108 = v105;
    v109[0] = v106;
    v109[1] = v107;
    v24 = *(&v105 + 1);
    if (!*(&v105 + 1))
    {

      return;
    }

    v25 = v108;
    sub_22FA4FE00(v109, v104);
    sub_22FA2F7D8(v104, &v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0);
    if (swift_dynamicCast())
    {
      v27 = v18;
      v28 = v102[0];

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v25;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v105 = v33;
        *v32 = 136446466;
        *(v32 + 4) = sub_22FA2F600(v95, v94, &v105);
        *(v32 + 12) = 2082;
        v34 = sub_22FA2F600(v31, v24, &v105);

        *(v32 + 14) = v34;
        v10 = v90;
        _os_log_impl(&dword_22FA28000, v29, v30, "%{public}s%{public}s {", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v33, -1, -1);
        MEMORY[0x23190A000](v32, -1, -1);
      }

      else
      {
      }

      if (v99)
      {
        goto LABEL_62;
      }

      sub_22FB1AC1C(v28, a2, v96, a4, a5);

      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F34();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v105 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_22FA2F600(v95, v94, &v105);
        _os_log_impl(&dword_22FA28000, v41, v42, "%{public}s}", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(v104);
      v15 = v27;
      a1 = v93;
    }

    else
    {
      sub_22FA2F7D8(v104, &v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D0);
      if (swift_dynamicCast())
      {
        v91 = v18;
        v35 = v102[0];

        v36 = sub_22FCC8664();
        v37 = sub_22FCC8F34();

        if (os_log_type_enabled(v36, v37))
        {
          v86 = v25;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v105 = v39;
          *v38 = 136446466;
          *(v38 + 4) = sub_22FA2F600(v95, v94, &v105);
          *(v38 + 12) = 2082;
          v40 = sub_22FA2F600(v86, v24, &v105);

          *(v38 + 14) = v40;
          _os_log_impl(&dword_22FA28000, v36, v37, "%{public}s%{public}s [", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v39, -1, -1);
          MEMORY[0x23190A000](v38, -1, -1);
        }

        else
        {
        }

        v53 = *(v35 + 16);
        if (v53)
        {
          v54 = 0;
          while (v54 < v53)
          {
            v55 = *(v35 + 32 + 8 * v54);
            *&v105 = v54;

            v101[0] = sub_22FCC96C4();
            v101[1] = v56;
            v101[5] = v26;
            v101[2] = v55;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338);
            v57 = sub_22FCC9524();
            sub_22FA649D8(v101, &v105);
            sub_22FA8EDF8(v101);
            v58 = v105;
            v59 = sub_22FA2DB54(v105, *(&v105 + 1));
            if (v60)
            {
              goto LABEL_59;
            }

            v57[(v59 >> 6) + 8] |= 1 << v59;
            *(v57[6] + 16 * v59) = v58;
            sub_22FA4FE00(&v106, (v57[7] + 32 * v59));
            v61 = v57[2];
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_60;
            }

            v57[2] = v63;
            if (v99)
            {
              goto LABEL_61;
            }

            ++v54;
            sub_22FB1AC1C(v57, a2, v96, a4, a5);

            v53 = *(v35 + 16);
            if (v54 == v53)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_58;
        }

LABEL_41:

        v46 = v94;
LABEL_52:

        v81 = sub_22FCC8664();
        v82 = sub_22FCC8F34();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v105 = v84;
          *v83 = 136446210;
          *(v83 + 4) = sub_22FA2F600(v95, v46, &v105);
          _os_log_impl(&dword_22FA28000, v81, v82, "%{public}s]", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x23190A000](v84, -1, -1);
          MEMORY[0x23190A000](v83, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_0(v104);
        v15 = v91;
        a1 = v93;
        v10 = v90;
      }

      else
      {
        sub_22FA2F7D8(v104, &v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
        if (swift_dynamicCast())
        {
          v45 = v102[0];
          v46 = v94;

          v47 = sub_22FCC8664();
          v48 = sub_22FCC8F34();

          v91 = v18;
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v25;
            v51 = swift_slowAlloc();
            *&v105 = v51;
            *v49 = 136446466;
            *(v49 + 4) = sub_22FA2F600(v95, v94, &v105);
            *(v49 + 12) = 2082;
            v52 = sub_22FA2F600(v50, v24, &v105);

            *(v49 + 14) = v52;
            _os_log_impl(&dword_22FA28000, v47, v48, "%{public}s%{public}s [", v49, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23190A000](v51, -1, -1);
            MEMORY[0x23190A000](v49, -1, -1);
          }

          else
          {
          }

          v88 = v45;
          v72 = *(v45 + 16);
          if (v72)
          {
            v73 = (v88 + 40);
            do
            {
              v78 = *(v73 - 1);
              v77 = *v73;

              v79 = sub_22FCC8664();
              v80 = sub_22FCC8F34();

              if (os_log_type_enabled(v79, v80))
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                *&v105 = v75;
                *v74 = 136446466;
                *(v74 + 4) = sub_22FA2F600(v95, v94, &v105);
                *(v74 + 12) = 2082;
                v76 = sub_22FA2F600(v78, v77, &v105);

                *(v74 + 14) = v76;
                _os_log_impl(&dword_22FA28000, v79, v80, "%{public}s  %{public}s", v74, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23190A000](v75, -1, -1);
                MEMORY[0x23190A000](v74, -1, -1);
              }

              else
              {
              }

              v73 += 2;
              --v72;
            }

            while (v72);
          }

          goto LABEL_52;
        }

        sub_22FA2F7D8(v104, &v105);

        v64 = sub_22FCC8664();
        v65 = sub_22FCC8F34();

        if (os_log_type_enabled(v64, v65))
        {
          v85 = v65;
          v66 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v103 = v87;
          *v66 = 136446722;
          *(v66 + 4) = sub_22FA2F600(v95, v94, &v103);
          *(v66 + 12) = 2082;
          v92 = v18;
          v67 = sub_22FA2F600(v25, v24, &v103);

          *(v66 + 14) = v67;
          *(v66 + 22) = 2082;
          sub_22FA2F7D8(&v105, v102);
          v68 = sub_22FCC8AE4();
          v70 = v69;
          __swift_destroy_boxed_opaque_existential_0(&v105);
          v71 = sub_22FA2F600(v68, v70, &v103);

          *(v66 + 24) = v71;
          _os_log_impl(&dword_22FA28000, v64, v85, "%{public}s%{public}s: %{public}s", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v87, -1, -1);
          MEMORY[0x23190A000](v66, -1, -1);

          __swift_destroy_boxed_opaque_existential_0(v104);
          v15 = v92;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v105);
          __swift_destroy_boxed_opaque_existential_0(v104);
          v15 = v18;
        }
      }
    }
  }

  if (v89 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v89;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v89)
    {
      v13 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      goto LABEL_18;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_22FB1B844(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB15E28(a1);
}

uint64_t sub_22FB1B8F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16230(a1);
}

uint64_t sub_22FB1B9A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16724(a1);
}

uint64_t sub_22FB1BA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16C18(a1);
}

uint64_t sub_22FB1BB04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB170E4(a1);
}

uint64_t sub_22FB1BBB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C030;

  return sub_22FB175B0(a1);
}

uint64_t sub_22FB1BC64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB17948(a1);
}

uint64_t sub_22FB1BD14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB17E0C(a1);
}

uint64_t sub_22FB1BDC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB181A4(a1);
}

uint64_t sub_22FB1BE74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB18670(a1);
}

uint64_t sub_22FB1BF24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB18B3C(a1);
}

uint64_t sub_22FB1BFD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB19000(a1);
}

char *sub_22FB1C084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t dispatch thunk of StatusProtocol.status()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA4C64C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StatusProtocol.dumpStatus(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C030;

  return v9(a1, a2, a3);
}

void sub_22FB1C424()
{
  sub_22FCC6794();
  if (v0 <= 0x3F)
  {
    sub_22FB1CD70(319, &qword_28147AF78);
    if (v1 <= 0x3F)
    {
      sub_22FB1CD70(319, &qword_28147AD68);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FB1C4F4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22FB1CB58(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22FB1C524()
{
  result = qword_27DAD84E0;
  if (!qword_27DAD84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD84E0);
  }

  return result;
}

uint64_t sub_22FB1C578()
{
  sub_22FCC9844();
  sub_22FCC9874();
  return sub_22FCC9894();
}

uint64_t sub_22FB1C5C0()
{
  sub_22FCC9844();
  sub_22FCC9874();
  return sub_22FCC9894();
}

unint64_t sub_22FB1C608()
{
  result = qword_27DAD84E8;
  if (!qword_27DAD84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD84E8);
  }

  return result;
}

uint64_t sub_22FB1C65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FCC8A84();
  if (!a2)
  {

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    return 0;
  }

  if (v4 == a1 && v5 == a2)
  {

    return 1;
  }

  v7 = sub_22FCC9704();

  if (v7)
  {
    return 1;
  }

  if (sub_22FCC8A84() == a1 && v8 == a2)
  {

    return 2;
  }

  v10 = sub_22FCC9704();

  if (v10)
  {
    return 2;
  }

  if (sub_22FCC8A84() == a1 && v12 == a2)
  {
    goto LABEL_26;
  }

  v14 = sub_22FCC9704();

  if (v14)
  {
    return 3;
  }

  if (sub_22FCC8A84() == a1 && v15 == a2)
  {
LABEL_26:

    return 3;
  }

  v16 = sub_22FCC9704();

  if (v16)
  {
    return 3;
  }

  if (sub_22FCC8A84() == a1 && v17 == a2)
  {
    goto LABEL_30;
  }

  v18 = sub_22FCC9704();

  if (v18)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v19 == a2)
  {
    goto LABEL_30;
  }

  v20 = sub_22FCC9704();

  if (v20)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v21 == a2)
  {
    goto LABEL_30;
  }

  v22 = sub_22FCC9704();

  if (v22)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v23 == a2)
  {
LABEL_30:

    return 4;
  }

  v24 = sub_22FCC9704();

  if (v24)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v25 == a2)
  {
    goto LABEL_44;
  }

  v26 = sub_22FCC9704();

  if ((v26 & 1) == 0)
  {
    if (sub_22FCC8A84() == a1 && v27 == a2)
    {
LABEL_44:

      return 5;
    }

    v28 = sub_22FCC9704();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  return 5;
}

uint64_t sub_22FB1CA88(void *a1)
{
  sub_22FCC8E14();
  sub_22FCC8DC4();
  v3 = v2;
  [a1 duration];
  sub_22FCC8DC4();
  if (v4 < 30.0)
  {
    return 1;
  }

  if (v4 < 180.0)
  {
    return 2;
  }

  v6 = v4;
  sub_22FCC8E14();
  sub_22FCC8DC4();
  if (v6 < v7)
  {
    return 3;
  }

  if (v6 >= v3 * 5.0)
  {
    return 5;
  }

  return 4;
}

uint64_t sub_22FB1CB58(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

void sub_22FB1CBB0()
{
  sub_22FB1CD70(319, &qword_28147AF78);
  if (v0 <= 0x3F)
  {
    sub_22FB1CD70(319, &qword_27DAD84F0);
    if (v1 <= 0x3F)
    {
      sub_22FB1CD70(319, &qword_28147AD68);
      if (v2 <= 0x3F)
      {
        sub_22FB1CD70(319, &qword_27DAD84F8);
        if (v3 <= 0x3F)
        {
          sub_22FA83258();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FB1CD70(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22FCC91F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetAgeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetAgeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FB1CF1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22FB1CFAC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FB1D070()
{
  result = qword_27DAD8500;
  if (!qword_27DAD8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8500);
  }

  return result;
}

unint64_t sub_22FB1D0C8()
{
  result = qword_27DAD8508;
  if (!qword_27DAD8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8508);
  }

  return result;
}

unint64_t sub_22FB1D120()
{
  result = qword_27DAD8510;
  if (!qword_27DAD8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8510);
  }

  return result;
}

uint64_t MomentContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_22FCC8674();
  return v0;
}

uint64_t MockMomentContextProvider.__allocating_init(filePath:)()
{
  v0 = swift_allocObject();
  sub_22FCC8674();
  sub_22FCC6554();

  return v0;
}

uint64_t sub_22FB1D2BC()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD8518);
  __swift_project_value_buffer(v0, qword_27DAD8518);
  return sub_22FCC8674();
}

int *MomentContextResponse.PromptTemplate.init(templateIdentifier:templateText:traits:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_22FCC67F4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

void MomentContextResponse.PromptTemplate.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 stringIdentifier];
  sub_22FCC67D4();

  v5 = [v2 textString];
  v6 = sub_22FCC8A84();
  v8 = v7;

  v9 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v10 = (a2 + v9[5]);
  *v10 = v6;
  v10[1] = v8;
  v11 = [v2 contextDimensions];
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_15;
  }

  v13 = v11;
  sub_22FA3A77C(0, &qword_27DAD8550);
  v14 = sub_22FCC8C44();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v15 = sub_22FCC92C4();
  if (!v15)
  {
LABEL_14:

LABEL_15:
    *(a2 + v9[6]) = v12;
    v26 = [v2 contentType];

    *(a2 + v9[7]) = v26;
    return;
  }

LABEL_4:
  sub_22FA86EA8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = v9;
    v28 = v2;
    v29 = a2;
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x231908810](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 name];
      v20 = sub_22FCC8A84();
      v22 = v21;

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22FA86EA8((v23 > 1), v24 + 1, 1);
      }

      ++v16;
      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v15 != v16);

    v2 = v28;
    a2 = v29;
    v9 = v27;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_22FB1D62C()
{
  v1 = 0x6574616C706D6574;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FB1D6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FB22514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FB1D6F0(uint64_t a1)
{
  v2 = sub_22FB212E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB1D72C(uint64_t a1)
{
  v2 = sub_22FB212E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MomentContextResponse.PromptTemplate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8558);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB212E4();
  sub_22FCC98B4();
  v14 = 0;
  sub_22FCC67F4();
  sub_22FB21338(&qword_27DAD8568, MEMORY[0x277CC95F0]);
  sub_22FCC9694();
  if (!v2)
  {
    v9 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
    v13 = 1;
    sub_22FCC9654();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    sub_22FB21380(&qword_27DAD8570);
    sub_22FCC9694();
    v11[14] = 3;
    sub_22FCC9684();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MomentContextResponse.PromptTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_22FCC67F4();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8578);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v17 - v6;
  v8 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB212E4();
  sub_22FCC98A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v18;
  v26 = 0;
  sub_22FB21338(&qword_27DAD8580, MEMORY[0x277CC95F0]);
  sub_22FCC95F4();
  (*(v11 + 32))(v10, v20, v4);
  v25 = 1;
  v12 = sub_22FCC95B4();
  v13 = &v10[v8[5]];
  *v13 = v12;
  v13[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  v24 = 2;
  sub_22FB21380(&qword_27DAD8588);
  sub_22FCC95F4();
  *&v10[v8[6]] = v22;
  v23 = 3;
  v15 = sub_22FCC95E4();
  (*(v19 + 8))(v7, v21);
  *&v10[v8[7]] = v15;
  sub_22FB214FC(v10, v17, type metadata accessor for MomentContextResponse.PromptTemplate);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_22FB21564(v10, type metadata accessor for MomentContextResponse.PromptTemplate);
}

void sub_22FB1DE78(void *a1@<X0>, unint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8648);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = &v82 - v7;
  v94 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v89 = *(v94 - 8);
  v8 = MEMORY[0x28223BE20](v94);
  v93 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v88 = &v82 - v10;
  v11 = sub_22FCC67F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 associatedContacts];
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v15;
  sub_22FA3A77C(0, &qword_27DAD8680);
  v17 = sub_22FCC8C44();

  if (v17 >> 62)
  {
    if (sub_22FCC92C4())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v3 = 0;
    v22 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x231908810](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = [v19 contactName];

  v3 = sub_22FCC8A84();
  v22 = v21;

LABEL_11:
  *(a2 + 8) = v3;
  *(a2 + 16) = v22;

  v23 = [a1 associatedLocations];
  v87 = v22;
  v92 = v12;
  v91 = v14;
  if (!v23)
  {
LABEL_25:
    v34 = 0;
    v32 = 0;
    v29 = 0;
    v31 = 0;
    v26 = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    goto LABEL_26;
  }

  v24 = v23;
  sub_22FA3A77C(0, &qword_27DAD8678);
  v17 = sub_22FCC8C44();

  if (v17 >> 62)
  {
    if (sub_22FCC92C4())
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_14:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x231908810](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v25 = *(v17 + 32);
  }

  v26 = v25;

  v27 = [v26 place];
  if (v27)
  {
    v28 = v27;
    v29 = sub_22FCC8A84();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  *(a2 + 24) = v29;
  *(a2 + 32) = v31;

  v32 = [v26 city];
  if (v32)
  {
    v33 = v32;
    v34 = sub_22FCC8A84();
    v35 = v11;
    v37 = v36;

    v32 = v37;
    v11 = v35;
  }

  else
  {
    v34 = 0;
  }

LABEL_26:
  v86 = v29;
  *(a2 + 40) = v34;
  *(a2 + 48) = v32;
  v84 = v32;

  v38 = [a1 associatedTime];
  v82 = v26;
  v85 = v3;
  v83 = v34;
  if (!v38)
  {
    v14 = v31;
    goto LABEL_37;
  }

  v39 = v38;
  sub_22FA3A77C(0, &qword_27DAD8670);
  v40 = sub_22FCC8C44();

  if (!(v40 >> 62))
  {
    v14 = v31;
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_36:

    goto LABEL_37;
  }

  v14 = v31;
  if (!sub_22FCC92C4())
  {
    goto LABEL_36;
  }

LABEL_29:
  if ((v40 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x231908810](0, v40);
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_92;
    }

    v41 = *(v40 + 32);
  }

  v42 = v41;

  v43 = [v42 timeReferenceString];

  if (v43)
  {
    v44 = sub_22FCC8A84();
    v17 = v45;

    goto LABEL_38;
  }

LABEL_37:
  v44 = 0;
  v17 = 0;
LABEL_38:
  v3 = v44;
  *(a2 + 56) = v44;
  *(a2 + 64) = v17;

  v46 = [a1 contextIdentifier];
  v47 = v91;
  sub_22FCC67D4();

  v48 = sub_22FCC67B4();
  v50 = v49;
  (*(v92 + 8))(v47, v11);
  *(a2 + 104) = v48;
  *(a2 + 112) = v50;
  *(a2 + 120) = [a1 actionType];
  v2 = &selRef_runImportantEntitiesTuningInGraph_photoLibrary_progressReporter_error_;
  v51 = [a1 associatedMusic];
  if (!v51)
  {
    v57 = 0;
    goto LABEL_46;
  }

  sub_22FA3A77C(0, &qword_27DAD8668);
  v12 = sub_22FCC8C44();

  v52 = v90;
  if (v12 >> 62)
  {
    if (sub_22FCC92C4())
    {
LABEL_41:
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v53 = *(v12 + 32);
LABEL_44:
          v54 = v53;

          v55 = [v54 artist];

          v51 = sub_22FCC8A84();
          v57 = v56;

LABEL_46:
          v52 = v90;
          goto LABEL_49;
        }

LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_88:
      v53 = MEMORY[0x231908810](0, v12);
      goto LABEL_44;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v51 = 0;
  v57 = 0;
LABEL_49:
  *(a2 + 72) = v51;
  *(a2 + 80) = v57;
  v58 = [a1 v2[32]];
  if (!v58)
  {
LABEL_58:
    v63 = 0;
    goto LABEL_59;
  }

  sub_22FA3A77C(0, &qword_27DAD8668);
  v12 = sub_22FCC8C44();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (!sub_22FCC92C4())
  {
LABEL_57:

    v58 = 0;
    goto LABEL_58;
  }

LABEL_52:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_90:
    v59 = MEMORY[0x231908810](0, v12);
    goto LABEL_55;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_93:
    __break(1u);
    return;
  }

  v59 = *(v12 + 32);
LABEL_55:
  v60 = v59;

  v61 = [v60 title];

  v58 = sub_22FCC8A84();
  v63 = v62;

  v52 = v90;
LABEL_59:
  *(a2 + 88) = v58;
  *(a2 + 96) = v63;
  v64 = [a1 contextCreationTimestamp];
  type metadata accessor for MomentContextResponse(0);
  sub_22FCC6754();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8650);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2660;
  *(inited + 32) = 1;
  v66 = (inited + 32);
  v67 = v87;
  *(inited + 40) = v85;
  *(inited + 48) = v67;
  *(inited + 56) = 8;
  v68 = v84;
  *(inited + 64) = v83;
  *(inited + 72) = v68;
  *(inited + 80) = 4;
  *(inited + 88) = v86;
  *(inited + 96) = v14;
  *(inited + 104) = 0x4000;
  *(inited + 112) = v3;
  *(inited + 120) = v17;
  v69 = [a1 contextStrings];
  if (v69)
  {
    v70 = v69;
    sub_22FA3A77C(0, &qword_27DAD8660);
    v71 = sub_22FCC8C44();

    v72 = v71;
    if (v71 >> 62)
    {
      goto LABEL_83;
    }

    for (i = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
    {
      v85 = v66;
      v86 = a1;
      v87 = a2;
      if (!i)
      {
        break;
      }

      a2 = 0;
      v92 = v72 & 0xC000000000000001;
      v91 = v72 & 0xFFFFFFFFFFFFFF8;
      v74 = (v89 + 48);
      v75 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v92)
        {
          a1 = v72;
          v76 = MEMORY[0x231908810](a2, v72);
        }

        else
        {
          if (a2 >= *(v91 + 16))
          {
            goto LABEL_82;
          }

          a1 = v72;
          v76 = *(v72 + 8 * a2 + 32);
        }

        v72 = v76;
        v66 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          break;
        }

        v95 = v76;
        sub_22FB1EA48(&v95, inited, v52);

        if ((*v74)(v52, 1, v94) == 1)
        {
          sub_22FA2B420(v52, &qword_27DAD8648);
        }

        else
        {
          v77 = v52;
          v78 = v88;
          sub_22FB229E0(v77, v88, type metadata accessor for MomentContextResponse.PromptTemplate);
          sub_22FB229E0(v78, v93, type metadata accessor for MomentContextResponse.PromptTemplate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_22FAC2908(0, v75[2] + 1, 1, v75);
          }

          v80 = v75[2];
          v79 = v75[3];
          if (v80 >= v79 >> 1)
          {
            v75 = sub_22FAC2908(v79 > 1, v80 + 1, 1, v75);
          }

          v75[2] = v80 + 1;
          sub_22FB229E0(v93, v75 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v80, type metadata accessor for MomentContextResponse.PromptTemplate);
          v52 = v90;
        }

        ++a2;
        v72 = a1;
        if (v66 == i)
        {
          goto LABEL_79;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      ;
    }

    v75 = MEMORY[0x277D84F90];
LABEL_79:
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8658);
    swift_arrayDestroy();

    v81 = v86;
    a2 = v87;
    a1 = v82;
  }

  else
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8658);
    swift_arrayDestroy();
    v75 = MEMORY[0x277D84F90];
    v81 = v82;
  }

  *a2 = v75;
}

uint64_t sub_22FB1EA48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    while (1)
    {
      v7 = *(v6 - 2);
      v8 = *v6;

      if ((v7 & ~[v4 contentType]) == 0 && !v8)
      {
        break;
      }

      v6 += 3;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    if (qword_27DAD6EB8 != -1)
    {
      swift_once();
    }

    v9 = sub_22FCC8684();
    __swift_project_value_buffer(v9, qword_27DAD8518);
    v10 = v4;
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 134218242;
      *(v13 + 4) = v7;
      *(v13 + 12) = 2080;
      v15 = [v10 textString];
      v16 = sub_22FCC8A84();
      v18 = v17;

      v19 = sub_22FA2F600(v16, v18, &v23);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_22FA28000, v11, v12, "Prompt context missing associated value referenced in prompt template. Missing content type %lu. Skipping prompt template %s.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    v20 = 1;
  }

  else
  {
LABEL_11:
    MomentContextResponse.PromptTemplate.init(from:)(v4, a3);
    v20 = 0;
  }

  v21 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  return (*(*(v21 - 8) + 56))(a3, v20, 1, v21);
}

unint64_t sub_22FB1EC8C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x6E6F69746361;
    if (a1 != 8)
    {
      v6 = 0x6E6F697461657263;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x614E747369747261;
    if (a1 != 5)
    {
      v7 = 0x6C746954676E6F73;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x655474706D6F7270;
    v2 = 0x6D614E6563616C70;
    v3 = 0x656D614E79746963;
    if (a1 != 3)
    {
      v3 = 0x65666552656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x614E6E6F73726570;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22FB1EE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FB22684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FB1EE34(uint64_t a1)
{
  v2 = sub_22FB213EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB1EE70(uint64_t a1)
{
  v2 = sub_22FB213EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MomentContextResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8590);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB213EC();
  sub_22FCC98B4();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85A0);
  sub_22FB21460(&qword_27DAD85A8, &qword_27DAD85B0);
  sub_22FCC9694();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_22FCC9604();
    LOBYTE(v11) = 2;
    sub_22FCC9604();
    LOBYTE(v11) = 3;
    sub_22FCC9604();
    LOBYTE(v11) = 4;
    sub_22FCC9604();
    LOBYTE(v11) = 5;
    sub_22FCC9604();
    LOBYTE(v11) = 6;
    sub_22FCC9604();
    LOBYTE(v11) = 7;
    sub_22FCC9654();
    LOBYTE(v11) = 8;
    sub_22FCC9684();
    type metadata accessor for MomentContextResponse(0);
    LOBYTE(v11) = 9;
    sub_22FCC6794();
    sub_22FB21338(&qword_281482538, MEMORY[0x277CC9578]);
    sub_22FCC9694();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MomentContextResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_22FCC6794();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85B8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v23 - v7;
  v9 = type metadata accessor for MomentContextResponse(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_22FB213EC();
  v35 = v8;
  sub_22FCC98A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v37);
  }

  v30 = v6;
  v31 = v4;
  v13 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85A0);
  v38 = 0;
  sub_22FB21460(&qword_27DAD85C0, &qword_27DAD85C8);
  sub_22FCC95F4();
  *v11 = v39;
  LOBYTE(v39) = 1;
  v11[1] = sub_22FCC9564();
  v11[2] = v14;
  v28 = 0;
  v29 = v14;
  LOBYTE(v39) = 2;
  v11[3] = sub_22FCC9564();
  v11[4] = v15;
  v27 = v15;
  LOBYTE(v39) = 3;
  v11[5] = sub_22FCC9564();
  v11[6] = v16;
  v26 = v16;
  LOBYTE(v39) = 4;
  v11[7] = sub_22FCC9564();
  v11[8] = v17;
  v25 = v17;
  LOBYTE(v39) = 5;
  v11[9] = sub_22FCC9564();
  v11[10] = v18;
  LOBYTE(v39) = 6;
  v19 = sub_22FCC9564();
  v24 = v11;
  v11[11] = v19;
  v11[12] = v20;
  LOBYTE(v39) = 7;
  v29 = 0;
  v11[13] = sub_22FCC95B4();
  v11[14] = v21;
  LOBYTE(v39) = 8;
  v24[15] = sub_22FCC95E4();
  LOBYTE(v39) = 9;
  sub_22FB21338(&qword_281482530, MEMORY[0x277CC9578]);
  sub_22FCC95F4();
  (*(v13 + 8))(v35, v36);
  (*(v32 + 32))(v11 + *(v9 + 52), v30, v31);
  sub_22FB214FC(v11, v33, type metadata accessor for MomentContextResponse);
  __swift_destroy_boxed_opaque_existential_0(v37);
  return sub_22FB21564(v11, type metadata accessor for MomentContextResponse);
}

uint64_t sub_22FB1F908()
{
  v0 = sub_22FCC65F4();
  __swift_allocate_value_buffer(v0, qword_27DAD8530);
  __swift_project_value_buffer(v0, qword_27DAD8530);
  return sub_22FCC6554();
}

uint64_t static MomentContextProvider.dataExportLocation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAD6EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FCC65F4();
  v3 = __swift_project_value_buffer(v2, qword_27DAD8530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FB1FA70()
{
  v1 = sub_22FCC65F4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22FB1FB5C;

  return sub_22FB1FFE0(1000);
}

uint64_t sub_22FB1FB5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FB1FCAC, 0, 0);
  }
}

uint64_t sub_22FB1FCAC()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_22FCC6394();
  swift_allocObject();
  sub_22FCC6384();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85D0);
  sub_22FB215C4(&qword_27DAD85D8, &qword_27DAD85E0);
  v3 = sub_22FCC6374();
  if (v1)
  {

    v16 = v0[1];

    return v16();
  }

  else
  {
    v5 = v3;
    v6 = v4;

    v7 = [objc_opt_self() mockMomentDataFromFile];
    v8 = sub_22FCC8A84();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_22FCC6554();
    }

    else
    {

      if (qword_27DAD6EC0 != -1)
      {
        swift_once();
      }

      v13 = v0[4];
      v12 = v0[5];
      v14 = v0[3];
      v15 = __swift_project_value_buffer(v14, qword_27DAD8530);
      (*(v13 + 16))(v12, v15, v14);
    }

    sub_22FCC6674();
    if (qword_27DAD6EC0 != -1)
    {
      swift_once();
    }

    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    __swift_project_value_buffer(v20, qword_27DAD8530);
    v21 = sub_22FCC6534();
    v23 = v22;
    sub_22FA7E6C4(v5, v6);

    (*(v19 + 8))(v18, v20);

    v24 = v0[1];

    return v24(v21, v23);
  }
}

uint64_t sub_22FB1FFE0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *(type metadata accessor for MomentContextResponse(0) - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB2009C, 0, 0);
}

uint64_t sub_22FB2009C()
{
  v0[23] = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[19];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_22FA28000, v1, v2, "Fetching personalized contexts from Moments with limit %ld", v4, 0xCu);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x277D3A7C0]) init];
  v0[24] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D3A798]) initWithContextFormat:3 contextRetrieval:2 contextCount:v0[19]];
    v0[25] = v7;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22FB20318;
    v8 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85F0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22FB2092C;
    v0[13] = &block_descriptor_20;
    v0[14] = v8;
    [v6 fetchPersonalizedContextWithOptions:v7 withReply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22FB21660();
    swift_allocError();
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    *v9 = 999;
    *(v9 + 24) = 0;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22FB20318()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_22FB206AC;
  }

  else
  {
    v2 = sub_22FB20428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB20428()
{
  v20 = v0;
  v2 = *(v0 + 144);

  v3 = sub_22FCC8664();
  LOBYTE(v4) = sub_22FCC8F34();
  v5 = v2 >> 62;
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_6;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v5)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_22FA28000, v3, v4, "Fetched %ld personalized contexts from Moments", v1, 0xCu);
    MEMORY[0x23190A000](v1, -1, -1);
LABEL_6:

    if (v5)
    {
      v4 = sub_22FCC92C4();
      if (!v4)
      {
LABEL_18:
        v16 = *(v0 + 192);
        v15 = *(v0 + 200);

        v9 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    v19 = MEMORY[0x277D84F90];
    v3 = &v19;
    sub_22FA86F0C(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    ;
  }

  v7 = 0;
  v8 = *(v0 + 168);
  v9 = v19;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x231908810](v7, v2);
    }

    else
    {
      v10 = *(v2 + 8 * v7 + 32);
    }

    sub_22FB1DE78(v10, *(v0 + 176));
    v19 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_22FA86F0C(v11 > 1, v12 + 1, 1);
      v9 = v19;
    }

    v13 = *(v0 + 176);
    ++v7;
    *(v9 + 16) = v12 + 1;
    sub_22FB229E0(v13, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, type metadata accessor for MomentContextResponse);
  }

  while (v4 != v7);
  v14 = *(v0 + 192);

LABEL_19:

  v17 = *(v0 + 8);

  return v17(v9);
}

uint64_t sub_22FB206AC()
{
  v1 = v0[26];
  swift_willThrow();
  v2 = sub_22FCC6504();
  v3 = v1;
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8F14();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v4, v5, "Moments fetch error received %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  v11 = [v2 code];
  if (v11 == 769 || v11 == 2561 || v11 == 1802)
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[24];
    v15 = [v2 code];
    sub_22FB21660();
    swift_allocError();
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    *v16 = v15;
    v17 = 1;
  }

  else
  {
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[24];
    v18 = [v2 description];
    v19 = sub_22FCC8A84();
    v21 = v20;

    v22 = [v2 code];
    sub_22FB21660();
    swift_allocError();
    *v16 = v19;
    *(v16 + 8) = v21;
    *(v16 + 16) = v22;
    v17 = 2;
  }

  *(v16 + 24) = v17;
  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t sub_22FB2092C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22FA3A77C(0, &qword_28147ADA8);
    **(*(v4 + 64) + 40) = sub_22FCC8C44();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t MomentContextProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MomentContextProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB20B18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA52F04;

  return sub_22FB1FFE0(a1);
}

uint64_t MockMomentContextProvider.init(filePath:)()
{
  v1 = sub_22FCC65F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC8674();
  sub_22FCC6554();

  (*(v2 + 32))(v0 + OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_filePath, v4, v1);
  return v0;
}

uint64_t sub_22FB20D04(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FB20D24, 0, 0);
}

uint64_t sub_22FB20D24()
{
  v23 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2080;
    v6 = sub_22FCC6534();
    v8 = sub_22FA2F600(v6, v7, v22);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_22FA28000, v1, v2, "Fetching MOCKED personalized contexts from Moments with limit %ld from %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = sub_22FCC6614();
  v11 = v10;
  sub_22FCC6364();
  swift_allocObject();
  sub_22FCC6354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85D0);
  sub_22FB215C4(&qword_27DAD85F8, &qword_27DAD8600);
  sub_22FCC6344();

  sub_22FA7E6C4(v9, v11);
  v12 = v0[2];

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 134218242;
    *(v15 + 4) = *(v12 + 16);

    *(v15 + 12) = 2080;
    v17 = sub_22FCC6534();
    v19 = sub_22FA2F600(v17, v18, v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v13, v14, "Fetched MOCKED %ld personalized contexts from %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20(v12);
}