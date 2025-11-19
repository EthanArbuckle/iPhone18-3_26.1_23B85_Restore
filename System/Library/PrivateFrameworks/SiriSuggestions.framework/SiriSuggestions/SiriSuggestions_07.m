void sub_23125BC28(char **a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v165 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  v176 = *(v6 - 8);
  v7 = *(v176 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v169 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v184 = &v162 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v186 = &v162 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v185 = &v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v162 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v187 = &v162 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v175 = &v162 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v174 = &v162 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v162 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v178 = &v162 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v29);
  v177 = a3;
  v32 = a3[1];
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
    goto LABEL_116;
  }

  v162 = &v162 - v30;
  v163 = v31;
  v33 = 0;
  v34 = MEMORY[0x277D84F90];
  v35 = &qword_27DD43620;
  v36 = &qword_23136CB60;
  v164 = a4;
  v188 = v18;
  v189 = v6;
LABEL_3:
  v37 = (v33 + 1);
  v170 = v34;
  v166 = v33;
  if ((v33 + 1) >= v32)
  {
    v181 = (v33 + 1);
  }

  else
  {
    v38 = v33;
    v183 = v32;
    v39 = *v177;
    v40 = *(v176 + 72);
    v193 = (*v177 + v40 * v37);
    v41 = v162;
    sub_23123EA8C(v193, v162, &qword_27DD43620, v36);
    v192 = v39;
    v42 = &v39[v40 * v38];
    v43 = v36;
    v44 = v163;
    sub_23123EA8C(v42, v163, &qword_27DD43620, v43);
    v45 = v180;
    LODWORD(v182) = sub_231257A58(v41, v44);
    v180 = v45;
    if (v45)
    {
      sub_2311D1F18(v44, &qword_27DD43620, &qword_23136CB60);
      sub_2311D1F18(v41, &qword_27DD43620, &qword_23136CB60);
LABEL_126:

      return;
    }

    v46 = v37;
    sub_2311D1F18(v44, &qword_27DD43620, v43);
    sub_2311D1F18(v41, &qword_27DD43620, v43);
    v47 = v38 + 2;
    v48 = &v192[v40 * (v38 + 2)];
    v36 = v43;
    v49 = v40;
    v50 = v183;
    v51 = v193;
    v173 = v40;
    while (1)
    {
      v52 = v47;
      if (v46 + 1 >= v50)
      {
        break;
      }

      v192 = v47;
      v181 = v46;
      v53 = v178;
      sub_23123EA8C(v48, v178, &qword_27DD43620, v36);
      v193 = v51;
      v54 = v179;
      sub_23123EA8C(v51, v179, &qword_27DD43620, v36);
      v55 = v174;
      sub_23123EA8C(v53, v174, &qword_27DD43620, v36);
      v56 = *(v55 + *(v6 + 48));

      v57 = sub_231367370();
      v190 = v58;
      v191 = v57;
      v59 = sub_2313673A0();
      v60 = *(*(v59 - 8) + 8);
      v60(v55, v59);
      v61 = v175;
      sub_23123EA8C(v54, v175, &qword_27DD43620, v36);
      v62 = *(v61 + *(v6 + 48));

      v63 = sub_231367370();
      v65 = v64;
      v60(v61, v59);
      v40 = v190;
      if (v191 == v63 && v190 == v65)
      {
        v67 = 0;
      }

      else
      {
        v67 = sub_23136A900();
      }

      v35 = &qword_27DD43620;
      v36 = &qword_23136CB60;
      sub_2311D1F18(v179, &qword_27DD43620, &qword_23136CB60);
      sub_2311D1F18(v178, &qword_27DD43620, &qword_23136CB60);
      v68 = v182 ^ v67;
      v49 = v173;
      v48 += v173;
      v51 = &v193[v173];
      v46 = v181 + 1;
      v52 = v192;
      v47 = v192 + 1;
      v6 = v189;
      v50 = v183;
      if (v68)
      {
        goto LABEL_17;
      }
    }

    v46 = v50;
LABEL_17:
    a4 = v164;
    v181 = v46;
    if (v182)
    {
      v69 = v46 < v166;
      v70 = v46;
      v18 = v188;
      if (v69)
      {
        goto LABEL_151;
      }

      if (v166 < v70)
      {
        if (v50 >= v52)
        {
          v71 = v52;
        }

        else
        {
          v71 = v50;
        }

        v72 = v49 * (v71 - 1);
        v73 = v49 * v71;
        v74 = v166 * v49;
        v75 = v70;
        v76 = v166;
        do
        {
          if (v76 != --v75)
          {
            v77 = *v177;
            if (!*v177)
            {
              goto LABEL_156;
            }

            sub_23123E9F8(&v77[v74], v169, &qword_27DD43620, &qword_23136CB60);
            v78 = v74 < v72 || &v77[v74] >= &v77[v73];
            if (v78)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v72)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_23123E9F8(v169, &v77[v72], &qword_27DD43620, &qword_23136CB60);
          }

          ++v76;
          v72 -= v49;
          v73 -= v49;
          v74 += v49;
        }

        while (v76 < v75);
        a4 = v164;
        v18 = v188;
        v6 = v189;
        v36 = &qword_23136CB60;
      }
    }

    else
    {
      v18 = v188;
    }
  }

  v79 = v177[1];
  v40 = v181;
  if (v181 >= v79)
  {
    goto LABEL_63;
  }

  if (__OFSUB__(v181, v166))
  {
    goto LABEL_148;
  }

  if (v181 - v166 >= a4)
  {
    v40 = v181;
    goto LABEL_63;
  }

  v80 = &a4[v166];
  if (__OFADD__(v166, a4))
  {
    goto LABEL_149;
  }

  if (v80 >= v79)
  {
    v80 = v177[1];
  }

  a4 = v187;
  if (v80 < v166)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  v40 = v181;
  if (v181 == v80)
  {
    goto LABEL_63;
  }

  v81 = *v177;
  v82 = *(v176 + 72);
  v83 = *v177 + v82 * (v181 - 1);
  v182 = -v82;
  v84 = &v166[-v181];
  v183 = v81;
  v167 = v82;
  v85 = v81 + v181 * v82;
  v168 = v80;
LABEL_47:
  v171 = v85;
  v172 = v84;
  v173 = v83;
  v86 = v84;
  while (1)
  {
    v191 = v85;
    v192 = v86;
    sub_23123EA8C(v85, a4, v35, v36);
    v190 = v83;
    sub_23123EA8C(v83, v18, v35, v36);
    v87 = a4;
    v88 = v185;
    sub_23123EA8C(v87, v185, v35, v36);
    v89 = *(v88 + *(v6 + 48));

    v90 = sub_231367370();
    v91 = v36;
    v93 = v92;
    v94 = v35;
    v95 = sub_2313673A0();
    v193 = *(*(v95 - 8) + 8);
    (v193)(v88, v95);
    v96 = v18;
    v97 = v186;
    sub_23123EA8C(v96, v186, v94, v91);
    v98 = *(v97 + *(v6 + 48));

    v99 = sub_231367370();
    v101 = v100;
    (v193)(v97, v95);
    if (v90 == v99 && v93 == v101)
    {

      v18 = v188;
      sub_2311D1F18(v188, v94, v91);
      a4 = v187;
      sub_2311D1F18(v187, v94, v91);
      v6 = v189;
      v35 = v94;
      v36 = v91;
LABEL_59:
      v83 = v173 + v167;
      v84 = v172 - 1;
      v85 = v171 + v167;
      if (++v181 != v168)
      {
        goto LABEL_47;
      }

      v40 = v168;
LABEL_63:
      a4 = v166;
      if (v40 < v166)
      {
        goto LABEL_147;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181 = v40;
      if (isUniquelyReferenced_nonNull_native)
      {
        v34 = v170;
      }

      else
      {
        v151 = *(v170 + 2);
        sub_23126DB78();
        v34 = v152;
      }

      v40 = *(v34 + 2);
      v109 = v40 + 1;
      if (v40 >= *(v34 + 3) >> 1)
      {
        sub_23126DB78();
        v34 = v153;
      }

      *(v34 + 2) = v109;
      v110 = v34 + 32;
      v111 = &v34[16 * v40 + 32];
      v112 = v181;
      *v111 = a4;
      v111[1] = v112;
      a4 = *v165;
      if (!*v165)
      {
        goto LABEL_157;
      }

      if (v40)
      {
        while (2)
        {
          v113 = v109 - 1;
          v114 = &v110[2 * v109 - 2];
          v115 = v34;
          v116 = &v34[16 * v109];
          if (v109 >= 4)
          {
            v121 = &v110[2 * v109];
            v122 = *(v121 - 8);
            v123 = *(v121 - 7);
            v127 = __OFSUB__(v123, v122);
            v124 = v123 - v122;
            if (v127)
            {
              goto LABEL_132;
            }

            v126 = *(v121 - 6);
            v125 = *(v121 - 5);
            v127 = __OFSUB__(v125, v126);
            v119 = v125 - v126;
            v120 = v127;
            if (v127)
            {
              goto LABEL_133;
            }

            v128 = *(v116 + 1);
            v129 = v128 - *v116;
            if (__OFSUB__(v128, *v116))
            {
              goto LABEL_135;
            }

            v127 = __OFADD__(v119, v129);
            v130 = v119 + v129;
            if (v127)
            {
              goto LABEL_138;
            }

            if (v130 >= v124)
            {
              v144 = *v114;
              v143 = v114[1];
              v127 = __OFSUB__(v143, v144);
              v145 = v143 - v144;
              if (v127)
              {
                goto LABEL_146;
              }

              if (v119 < v145)
              {
                v113 = v109 - 2;
              }
            }

            else
            {
LABEL_83:
              if (v120)
              {
                goto LABEL_134;
              }

              v132 = *v116;
              v131 = *(v116 + 1);
              v133 = __OFSUB__(v131, v132);
              v134 = v131 - v132;
              v135 = v133;
              if (v133)
              {
                goto LABEL_137;
              }

              v136 = v114[1];
              v137 = v136 - *v114;
              if (__OFSUB__(v136, *v114))
              {
                goto LABEL_140;
              }

              if (__OFADD__(v134, v137))
              {
                goto LABEL_142;
              }

              if (v134 + v137 < v119)
              {
                goto LABEL_98;
              }

              if (v119 < v137)
              {
                v113 = v109 - 2;
              }
            }
          }

          else
          {
            if (v109 == 3)
            {
              v117 = *(v34 + 4);
              v118 = *(v34 + 5);
              v127 = __OFSUB__(v118, v117);
              v119 = v118 - v117;
              v120 = v127;
              goto LABEL_83;
            }

            if (v109 < 2)
            {
              goto LABEL_136;
            }

            v139 = *v116;
            v138 = *(v116 + 1);
            v127 = __OFSUB__(v138, v139);
            v134 = v138 - v139;
            v135 = v127;
LABEL_98:
            if (v135)
            {
              goto LABEL_139;
            }

            v141 = *v114;
            v140 = v114[1];
            v127 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v127)
            {
              goto LABEL_141;
            }

            if (v142 < v134)
            {
              break;
            }
          }

          if (v113 - 1 >= v109)
          {
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
            goto LABEL_150;
          }

          if (!*v177)
          {
            goto LABEL_154;
          }

          v40 = &v110[2 * v113 - 2];
          v146 = *v40;
          v147 = &v110[2 * v113];
          v148 = *(v147 + 1);
          v149 = v180;
          sub_23125CC78(*v177 + *(v176 + 72) * *v40, *v177 + *(v176 + 72) * *v147, *v177 + *(v176 + 72) * v148, a4);
          v180 = v149;
          if (v149)
          {
            goto LABEL_126;
          }

          if (v148 < v146)
          {
            goto LABEL_129;
          }

          v150 = *(v115 + 2);
          if (v113 > v150)
          {
            goto LABEL_130;
          }

          *v40 = v146;
          *(v40 + 8) = v148;
          if (v113 >= v150)
          {
            goto LABEL_131;
          }

          v109 = v150 - 1;
          sub_2311E6448(v147 + 16, v150 - 1 - v113, &v110[2 * v113]);
          v34 = v115;
          *(v115 + 2) = v150 - 1;
          v36 = &qword_23136CB60;
          if (v150 <= 2)
          {
            break;
          }

          continue;
        }
      }

      v32 = v177[1];
      v33 = v181;
      a4 = v164;
      v18 = v188;
      v6 = v189;
      v35 = &qword_27DD43620;
      if (v181 >= v32)
      {
LABEL_116:
        v40 = *v165;
        if (!*v165)
        {
          goto LABEL_158;
        }

        a4 = v34;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_118:
          v154 = a4 + 16;
          v155 = *(a4 + 2);
          while (v155 >= 2)
          {
            if (!*v177)
            {
              goto LABEL_155;
            }

            v156 = a4;
            v157 = &a4[16 * v155];
            v158 = *v157;
            a4 = &v154[2 * v155];
            v159 = *(a4 + 1);
            v160 = v180;
            sub_23125CC78(*v177 + *(v176 + 72) * *v157, *v177 + *(v176 + 72) * *a4, *v177 + *(v176 + 72) * v159, v40);
            v180 = v160;
            if (v160)
            {
              break;
            }

            if (v159 < v158)
            {
              goto LABEL_143;
            }

            if (v155 - 2 >= *v154)
            {
              goto LABEL_144;
            }

            *v157 = v158;
            *(v157 + 1) = v159;
            v161 = *v154 - v155;
            if (*v154 < v155)
            {
              goto LABEL_145;
            }

            v155 = *v154 - 1;
            sub_2311E6448(a4 + 16, v161, a4);
            *v154 = v155;
            a4 = v156;
          }

          goto LABEL_126;
        }

LABEL_152:
        a4 = sub_2311E6430(a4);
        goto LABEL_118;
      }

      goto LABEL_3;
    }

    v103 = sub_23136A900();

    v18 = v188;
    sub_2311D1F18(v188, v94, v91);
    a4 = v187;
    sub_2311D1F18(v187, v94, v91);
    v35 = v94;
    v36 = v91;
    if ((v103 & 1) == 0)
    {
      v6 = v189;
      goto LABEL_59;
    }

    v104 = v192;
    if (!v183)
    {
      break;
    }

    v105 = v191;
    v106 = v184;
    sub_23123E9F8(v191, v184, v35, v36);
    v6 = v189;
    v107 = v190;
    swift_arrayInitWithTakeFrontToBack();
    sub_23123E9F8(v106, v107, v35, v36);
    v83 = v107 + v182;
    v85 = v105 + v182;
    v78 = __CFADD__(v104, 1);
    v86 = v104 + 1;
    if (v78)
    {
      goto LABEL_59;
    }
  }

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
}

uint64_t sub_23125C9A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2311E6430(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_23125CAD4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_23125CAD4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_23126F678(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_23136A900() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_23126F678(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_23136A900() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_23125CC78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43620, &qword_23136CB60);
  v8 = *(*(v103 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v103);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v87 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v87 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v98 = &v87 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v87 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v95 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v87 - v22;
  result = MEMORY[0x28223BE20](v21);
  v26 = &v87 - v25;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v29 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_73;
  }

  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_74;
  }

  v97 = a3;
  v33 = v29 / v28;
  v106 = a1;
  v105 = a4;
  v34 = v31 / v28;
  if (v29 / v28 < v31 / v28)
  {
    sub_23126F6C4(a1, v29 / v28, a4);
    v93 = v28;
    v94 = a4 + v33 * v28;
    v104 = v94;
    v35 = &qword_23136CB60;
    v36 = v97;
    v91 = v26;
    v92 = v23;
    while (1)
    {
      if (a4 >= v94 || a2 >= v36)
      {
        goto LABEL_71;
      }

      v101 = a1;
      v102 = a2;
      sub_23123EA8C(a2, v26, &qword_27DD43620, v35);
      v100 = a4;
      sub_23123EA8C(a4, v23, &qword_27DD43620, v35);
      v38 = v95;
      sub_23123EA8C(v26, v95, &qword_27DD43620, v35);
      v39 = v103;
      v40 = *(v38 + *(v103 + 48));

      v41 = sub_231367370();
      v98 = v42;
      v99 = v41;
      v43 = sub_2313673A0();
      v44 = v35;
      v45 = *(*(v43 - 8) + 8);
      v45(v38, v43);
      v46 = v96;
      sub_23123EA8C(v23, v96, &qword_27DD43620, v44);
      v47 = *(v46 + *(v39 + 48));

      v48 = sub_231367370();
      v50 = v49;
      v51 = v46;
      v52 = v98;
      v45(v51, v43);
      if (v99 == v48 && v52 == v50)
      {

        v23 = v92;
        sub_2311D1F18(v92, &qword_27DD43620, v44);
        v26 = v91;
        sub_2311D1F18(v91, &qword_27DD43620, v44);
        v35 = v44;
      }

      else
      {
        v54 = sub_23136A900();

        v23 = v92;
        sub_2311D1F18(v92, &qword_27DD43620, v44);
        v26 = v91;
        sub_2311D1F18(v91, &qword_27DD43620, v44);
        v35 = v44;
        if (v54)
        {
          v55 = v101;
          v56 = v93;
          a2 = v102 + v93;
          v57 = v101 < v102 || v101 >= a2;
          a4 = v100;
          if (v57)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v101 != v102)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v55 = v101;
      v56 = v93;
      a4 = v100 + v93;
      v58 = v101 < v100 || v101 >= a4;
      a2 = v102;
      if (v58)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v101 != v100)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v105 = a4;
LABEL_37:
      a1 = v55 + v56;
      v106 = a1;
      v36 = v97;
    }
  }

  sub_23126F6C4(a2, v31 / v28, a4);
  v59 = a4 + v34 * v28;
  v60 = -v28;
  v61 = v59;
  v62 = v97;
  v100 = a4;
  v101 = a1;
  v92 = -v28;
LABEL_41:
  v63 = a2 + v60;
  v64 = v62;
  v88 = v61;
  v102 = a2;
  v93 = a2 + v60;
  while (1)
  {
    if (v59 <= a4)
    {
      v106 = a2;
      goto LABEL_70;
    }

    if (a2 <= a1)
    {
      break;
    }

    v96 = v64;
    v97 = v59;
    v91 = v61;
    v94 = v59 + v60;
    v65 = v98;
    sub_23123EA8C(v59 + v60, v98, &qword_27DD43620, &qword_23136CB60);
    v66 = v99;
    sub_23123EA8C(v63, v99, &qword_27DD43620, &qword_23136CB60);
    v67 = v89;
    sub_23123EA8C(v65, v89, &qword_27DD43620, &qword_23136CB60);
    v68 = v103;
    v69 = *(v67 + *(v103 + 48));

    v95 = sub_231367370();
    v71 = v70;
    v72 = sub_2313673A0();
    v73 = *(*(v72 - 8) + 8);
    v73(v67, v72);
    v74 = v90;
    sub_23123EA8C(v66, v90, &qword_27DD43620, &qword_23136CB60);
    v75 = *(v74 + *(v68 + 48));

    v76 = sub_231367370();
    v78 = v77;
    v73(v74, v72);
    if (v95 == v76 && v71 == v78)
    {
      v80 = 0;
    }

    else
    {
      v80 = sub_23136A900();
    }

    v81 = v96;

    v60 = v92;
    v62 = v81 + v92;
    sub_2311D1F18(v99, &qword_27DD43620, &qword_23136CB60);
    sub_2311D1F18(v98, &qword_27DD43620, &qword_23136CB60);
    a4 = v100;
    a1 = v101;
    a2 = v102;
    v59 = v97;
    if (v80)
    {
      v84 = v81 < v102 || v62 >= v102;
      v85 = v93;
      if (v84)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v85;
        v61 = v91;
      }

      else
      {
        v61 = v91;
        a2 = v93;
        if (v81 != v102)
        {
          v86 = v91;
          swift_arrayInitWithTakeBackToFront();
          a2 = v85;
          v61 = v86;
        }
      }

      goto LABEL_41;
    }

    v82 = v81 < v97 || v62 >= v97;
    v63 = v93;
    if (v82)
    {
      v83 = v94;
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_59;
    }

    v83 = v94;
    v61 = v94;
    v64 = v81 + v60;
    v59 = v94;
    if (v97 != v81)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_59:
      v64 = v81 + v60;
      v59 = v83;
      v61 = v83;
    }
  }

  v106 = a2;
  v61 = v88;
LABEL_70:
  v104 = v61;
LABEL_71:
  sub_23120C4B8(&v106, &v105, &v104);
  return 1;
}

uint64_t sub_23125D3D4()
{
  OUTLINED_FUNCTION_58_2();
  v9 = v3;
  v10 = v4;
  __swift_allocate_boxed_opaque_existential_1(&v8);
  OUTLINED_FUNCTION_26_0(v0);
  (*(v5 + 32))();
  v6 = *v1;
  *(v6 + 16) = v2 + 1;
  return sub_2311D38A8(&v8, v6 + 40 * v2 + 32);
}

_BYTE *storeEnumTagSinglePayload for SuggestionPool.OwnerPrescedence(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23125D58C()
{
  result = qword_280F849D8;
  if (!qword_280F849D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849D8);
  }

  return result;
}

unint64_t sub_23125D5E4()
{
  result = qword_280F849E0;
  if (!qword_280F849E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F849E0);
  }

  return result;
}

uint64_t sub_23125D638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23125D69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDetails();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23125D700(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_24_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return a2;
}

uint64_t sub_23125D758(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t OUTLINED_FUNCTION_5_12(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = *(a5 + 56);
  return result;
}

unint64_t OUTLINED_FUNCTION_23_7(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_231215F6C(a2, a3);
}

void OUTLINED_FUNCTION_24_12()
{

  JUMPOUT(0x23192A9E0);
}

void *OUTLINED_FUNCTION_38_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = a19;

  return __swift_project_boxed_opaque_existential_1(&a16, v20);
}

void OUTLINED_FUNCTION_43_6()
{
  *(v1 - 360) = v0;

  sub_2311F4E34();
}

uint64_t OUTLINED_FUNCTION_50_5(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_2311D1F18(va, v3, v4);
}

uint64_t OUTLINED_FUNCTION_51_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_2311D1F18(va, v12, v13);
}

uint64_t OUTLINED_FUNCTION_53_4()
{
}

uint64_t OUTLINED_FUNCTION_54_4()
{

  return sub_2311CFD58(v0, v1, (v2 - 128));
}

__n128 OUTLINED_FUNCTION_57_5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v2 - 128) = a1;
  return *(v2 - 336);
}

uint64_t OUTLINED_FUNCTION_69_2()
{

  return sub_23136A700();
}

uint64_t OUTLINED_FUNCTION_71_1()
{

  return sub_231368F70();
}

uint64_t *OUTLINED_FUNCTION_73_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = v24;

  return __swift_allocate_boxed_opaque_existential_1(&a21);
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

void sub_23125DA44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  v4 = swift_allocObject();
  *a2 = v4;
  sub_23124C9A8(a1, v4 + 16);
}

uint64_t sub_23125DAA4()
{
  v0 = sub_2313685D0();
  v4[3] = v0;
  v4[4] = sub_231266C0C(&qword_280F7C978, MEMORY[0x277D60FE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60FD0], v0);
  v2 = sub_231367980();
  OUTLINED_FUNCTION_52_6(v2);
  result = sub_231367970();
  qword_280F8E720 = result;
  return result;
}

uint64_t sub_23125DB88(char a1)
{
  result = 0x704F5F736B6F6F42;
  switch(a1)
  {
    case 1:
      result = 0x6C505F736B6F6F42;
      break;
    case 2:
    case 29:
    case 40:
    case 48:
    case 50:
    case 57:
    case 69:
    case 73:
    case 76:
    case 97:
    case 118:
    case -99:
      OUTLINED_FUNCTION_68_2();
      result = v16 - 3;
      break;
    case 3:
    case 14:
    case 30:
    case 64:
    case 65:
    case 78:
    case 80:
    case 83:
    case 109:
      OUTLINED_FUNCTION_68_2();
      result = v15 + 2;
      break;
    case 4:
    case 20:
    case 45:
    case 54:
    case 62:
    case 88:
    case 101:
    case -123:
    case -118:
    case -115:
    case -109:
    case -101:
    case -98:
      OUTLINED_FUNCTION_68_2();
      result = v18 - 2;
      break;
    case 5:
    case 6:
    case 17:
    case 27:
    case 43:
    case 44:
    case 49:
    case 60:
    case 71:
    case 81:
    case 96:
    case 110:
    case -125:
    case -120:
    case -116:
    case -113:
    case -110:
    case -103:
      OUTLINED_FUNCTION_68_2();
      result = v8 + 1;
      break;
    case 7:
    case 23:
    case 42:
    case -105:
      OUTLINED_FUNCTION_68_2();
      result = v4 + 10;
      break;
    case 8:
    case 10:
    case 19:
    case 21:
    case 31:
    case 114:
    case 125:
    case -119:
      OUTLINED_FUNCTION_68_2();
      result = v13 + 3;
      break;
    case 9:
    case 11:
    case 13:
    case 16:
    case 61:
    case 108:
    case 115:
    case -127:
    case -126:
    case -124:
    case -122:
    case -112:
    case -108:
    case -102:
      OUTLINED_FUNCTION_68_2();
      result = v14 | 4;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 15:
    case 18:
    case 63:
    case 77:
    case 85:
    case 103:
    case 120:
    case -111:
    case -97:
      OUTLINED_FUNCTION_68_2();
      result = v17 + 6;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x72475F73656C6946;
      break;
    case 25:
    case 26:
      result = 0x65535F73656C6946;
      break;
    case 28:
      result = 0x69485F73656C6946;
      break;
    case 32:
    case 107:
    case 116:
    case 119:
    case -114:
      OUTLINED_FUNCTION_68_2();
      result = v9 + 5;
      break;
    case 33:
      result = 0xD000000000000013;
      break;
    case 34:
    case 35:
    case 37:
      result = 0x5F7373656E746946;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 38:
    case 51:
    case 94:
    case 100:
    case 126:
    case -128:
      OUTLINED_FUNCTION_68_2();
      result = v11 | 8;
      break;
    case 39:
      result = 0x4C5F68746C616548;
      break;
    case 41:
      result = 0x545F68746C616548;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0x6165525F6C69614DLL;
      break;
    case 53:
      result = 0x616C465F6C69614DLL;
      break;
    case 55:
      result = 0x7465475F6C69614DLL;
      break;
    case 56:
      result = 0xD000000000000013;
      break;
    case 58:
      result = 0x726E555F6C69614DLL;
      break;
    case 59:
      result = 0xD000000000000013;
      break;
    case 66:
      result = 0xD000000000000013;
      break;
    case 67:
      result = 0xD000000000000013;
      break;
    case 68:
    case 70:
    case 82:
    case 87:
    case 92:
    case 93:
    case 95:
    case 102:
    case 123:
    case 127:
      OUTLINED_FUNCTION_68_2();
      result = v7 - 1;
      break;
    case 72:
    case 112:
    case 117:
    case -117:
      OUTLINED_FUNCTION_68_2();
      result = v12 + 7;
      break;
    case 74:
      v3 = 0x545F7377654ELL;
      goto LABEL_24;
    case 75:
      result = 0x6565465F7377654ELL;
      break;
    case 79:
      result = 0x6165525F7377654ELL;
      break;
    case 84:
    case 104:
    case -104:
      OUTLINED_FUNCTION_68_2();
      result = v10 + 11;
      break;
    case 86:
      result = 0xD000000000000013;
      break;
    case 89:
    case 91:
      result = 0x435F736F746F6850;
      break;
    case 90:
      result = 0xD000000000000013;
      break;
    case 98:
      result = 0xD000000000000013;
      break;
    case 99:
    case -107:
      OUTLINED_FUNCTION_68_2();
      result = v6 + 9;
      break;
    case 105:
      result = 0xD000000000000013;
      break;
    case 106:
      result = 0x4E5F697261666153;
      break;
    case 111:
      result = 0xD000000000000013;
      break;
    case 113:
      result = 0xD000000000000013;
      break;
    case 121:
    case 124:
      result = 0x4D5F736B636F7453;
      break;
    case 122:
      result = 0x465F736B636F7453;
      break;
    case -121:
      result = 0xD000000000000013;
      break;
    case -106:
      OUTLINED_FUNCTION_68_2();
      result = v5 + 14;
      break;
    case -100:
      result = 0xD000000000000013;
      break;
    case -96:
      result = 0x74726F70535F5654;
      break;
    case -95:
      v3 = 0x6168535F5654;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6572000000000000;
      break;
    case -94:
      result = 0x47776F68535F5654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23125E754(char a1)
{
  v1 = MEMORY[0x277D84F90];
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
    case 17:
    case 25:
    case 30:
    case 46:
    case 57:
    case 124:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -114:
    case -113:
    case -112:
    case -111:
    case -108:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136C1C0;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v2 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v2);
      v3 = qword_280F843B0;

      if (v3 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      goto LABEL_193;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CB8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B7D8;
      goto LABEL_213;
    case 3:
    case 4:
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CB0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B7C0;
      goto LABEL_213;
    case 6:
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CA8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B7B8;
      goto LABEL_192;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F84390 != -1)
      {
        OUTLINED_FUNCTION_10_15();
      }

      goto LABEL_158;
    case 10:
    case 11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84390 != -1)
      {
        OUTLINED_FUNCTION_10_15();
      }

      v7 = qword_280F8E6F8;
      goto LABEL_192;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CC8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B7F0;
      goto LABEL_192;
    case 13:
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CD0 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B7F8;
      goto LABEL_192;
    case 15:
    case 16:
    case 19:
    case 20:
    case 21:
    case 23:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D08 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B848;
      goto LABEL_213;
    case 18:
    case 22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D10 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B860;
      goto LABEL_213;
    case 24:
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CD8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B800;
      goto LABEL_192;
    case 27:
    case 29:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CE0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B808;
      goto LABEL_213;
    case 28:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CE8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B820;
      goto LABEL_213;
    case 31:
    case 33:
    case 35:
    case 36:
    case 37:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42CF0 != -1)
      {
        OUTLINED_FUNCTION_45_3();
      }

      v7 = qword_27DD4B838;
      goto LABEL_192;
    case 32:
    case 34:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42CF0 != -1)
      {
        OUTLINED_FUNCTION_45_3();
      }

      goto LABEL_158;
    case 38:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84298 != -1)
      {
        OUTLINED_FUNCTION_46_9();
      }

      v7 = qword_280F8E688;
      goto LABEL_192;
    case 39:
    case 41:
    case 48:
    case 49:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F84298 != -1)
      {
        OUTLINED_FUNCTION_46_9();
      }

      goto LABEL_158;
    case 47:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D00 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B840;
      goto LABEL_192;
    case 50:
    case 51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842B8 != -1)
      {
        OUTLINED_FUNCTION_41_7();
      }

      v7 = qword_280F8E698;
      goto LABEL_192;
    case 52:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v29 = qword_280F843B0;

      if (v29 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v30 = qword_280F842B8;

      if (v30 != -1)
      {
        OUTLINED_FUNCTION_41_7();
      }

      v11 = qword_280F8E698;
      goto LABEL_162;
    case 53:
    case 54:
    case 55:
    case 56:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D20 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B878;
      goto LABEL_213;
    case 59:
    case 61:
    case 63:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842E0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_280F8E6D8;
      goto LABEL_213;
    case 60:
    case 62:
    case 65:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v9 = qword_280F843B0;

      if (v9 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v10 = qword_280F842A8;

      if (v10 != -1)
      {
        OUTLINED_FUNCTION_44_7();
      }

      v11 = qword_280F8E690;
      goto LABEL_162;
    case 64:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842A8 != -1)
      {
        OUTLINED_FUNCTION_44_7();
      }

      v7 = qword_280F8E690;
      goto LABEL_192;
    case 66:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D28 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B890;
      goto LABEL_213;
    case 67:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42D30 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v21 = __swift_project_value_buffer(v20, &unk_27DD4B8A8);
      *(v1 + 56) = v20;
      *(v1 + 64) = &off_2845F6270;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
      sub_231266A64(v21, boxed_opaque_existential_1);
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v23 = qword_280F8E710;
      v8 = sub_2313692F0();
      *(v1 + 96) = v8;
      *(v1 + 104) = &off_2845F6218;
      *(v1 + 72) = v23;
      v24 = qword_280F843B0;

      if (v24 != -1)
      {
        goto LABEL_149;
      }

      goto LABEL_161;
    case 68:
    case 71:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v16 = qword_280F843B0;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v17 = qword_27DD42D38;

      if (v17 != -1)
      {
        OUTLINED_FUNCTION_42_8();
      }

      v11 = qword_27DD4B8C0;
      goto LABEL_162;
    case 69:
    case 70:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D38 != -1)
      {
        OUTLINED_FUNCTION_42_8();
      }

      v7 = qword_27DD4B8C0;
      goto LABEL_192;
    case 72:
    case 73:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D40 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B8C8;
      goto LABEL_213;
    case 74:
    case 79:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v14 = qword_280F843B0;

      if (v14 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v15 = qword_27DD42D48;

      if (v15 != -1)
      {
        OUTLINED_FUNCTION_43_7();
      }

      v11 = qword_27DD4B8E0;
      goto LABEL_162;
    case 75:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D48 != -1)
      {
        OUTLINED_FUNCTION_43_7();
      }

      v7 = qword_27DD4B8E0;
      goto LABEL_192;
    case 76:
    case 77:
    case 78:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D50 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B8E8;
      goto LABEL_213;
    case 80:
    case 82:
    case 85:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D60 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B908;
      goto LABEL_213;
    case 81:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D68 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B920;
      goto LABEL_213;
    case 83:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D70 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B938;
      goto LABEL_213;
    case 84:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D58 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B900;
      goto LABEL_192;
    case 87:
    case 88:
    case 89:
    case 91:
    case 92:
    case 93:
    case 95:
    case 96:
    case 97:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D80 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = &unk_27DD4B958;
      goto LABEL_213;
    case 90:
    case 94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v12 = qword_280F843B0;

      if (v12 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v13 = qword_27DD42D78;

      if (v13 != -1)
      {
        swift_once();
      }

      v11 = qword_27DD4B950;
      goto LABEL_162;
    case 98:
    case 101:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D88 != -1)
      {
        OUTLINED_FUNCTION_40_7();
      }

      v7 = qword_27DD4B970;
      goto LABEL_192;
    case 99:
    case 100:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_27DD42D88 != -1)
      {
        OUTLINED_FUNCTION_40_7();
      }

LABEL_158:
      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v25 = qword_280F843B8;

      if (v25 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E710);
      v26 = qword_280F843B0;

      if (v26 != -1)
      {
LABEL_149:
        OUTLINED_FUNCTION_2_11();
      }

LABEL_161:
      v11 = qword_280F8E708;
      goto LABEL_162;
    case 102:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136FAB0;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v31 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v31);
      v32 = qword_280F843B0;

      if (v32 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v33 = qword_280F84390;

      if (v33 != -1)
      {
        OUTLINED_FUNCTION_10_15();
      }

      v34 = qword_280F8E6F8;
      *(v1 + 136) = v31;
      *(v1 + 144) = &off_2845F6218;
      *(v1 + 112) = v34;
      v35 = qword_280F842D8;

      if (v35 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v37 = __swift_project_value_buffer(v36, qword_280F8E6C0);
      *(v1 + 176) = v36;
      *(v1 + 184) = &off_2845F6270;
      v38 = __swift_allocate_boxed_opaque_existential_1((v1 + 152));
      sub_231266A64(v37, v38);
      if (qword_280F842D0 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v36, qword_280F8E6A8);
      *(v1 + 216) = v36;
      *(v1 + 224) = &off_2845F6270;
      v40 = (v1 + 192);
      goto LABEL_214;
    case 103:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v18 = qword_280F843B0;

      if (v18 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v19 = qword_280F84380;

      if (v19 != -1)
      {
        OUTLINED_FUNCTION_39_5();
      }

      v11 = qword_280F8E6F0;
      goto LABEL_162;
    case 104:
    case 105:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84380 != -1)
      {
        OUTLINED_FUNCTION_39_5();
      }

      v7 = qword_280F8E6F0;
      goto LABEL_192;
    case 106:
    case 108:
    case 110:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42D98 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B978;
      goto LABEL_192;
    case 107:
    case 109:
    case 113:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DA0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B980;
      goto LABEL_213;
    case 111:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DA8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B998;
      goto LABEL_213;
    case 112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DB0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B9B0;
      goto LABEL_213;
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DB8 != -1)
      {
        swift_once();
      }

      v7 = qword_27DD4B9C8;
      goto LABEL_192;
    case 121:
    case 123:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F84290 != -1)
      {
        swift_once();
      }

      v7 = qword_280F8E680;
      goto LABEL_192;
    case 122:
    case 125:
    case 126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DD0 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B9E8;
      goto LABEL_213;
    case 127:
    case -128:
    case -127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_27DD42DC8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v5 = v4;
      v6 = qword_27DD4B9D0;
LABEL_213:
      v39 = __swift_project_value_buffer(v4, v6);
      *(v1 + 56) = v5;
      *(v1 + 64) = &off_2845F6270;
      v40 = (v1 + 32);
      goto LABEL_214;
    case -107:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_23136C1C0;
      if (qword_280F843A0 != -1)
      {
        OUTLINED_FUNCTION_11_11();
      }

      v41 = qword_280F8E700;
      *(v1 + 56) = sub_2313692F0();
      *(v1 + 64) = &off_2845F6218;
      *(v1 + 32) = v41;
      v42 = qword_27DD42DD8;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for BaseModelSignals.SignalWithFilter();
      v39 = __swift_project_value_buffer(v43, &unk_27DD4BA00);
      *(v1 + 96) = v43;
      *(v1 + 104) = &off_2845F6270;
      v40 = (v1 + 72);
LABEL_214:
      v44 = __swift_allocate_boxed_opaque_existential_1(v40);
      sub_231266A64(v39, v44);
      return v1;
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F843A0 != -1)
      {
        OUTLINED_FUNCTION_11_11();
      }

      v7 = qword_280F8E700;
      goto LABEL_192;
    case -99:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_56_4();
      *(v1 + 16) = xmmword_23136D280;
      if (qword_280F843B8 != -1)
      {
        OUTLINED_FUNCTION_1_20();
      }

      v8 = sub_2313692F0();
      OUTLINED_FUNCTION_28_10(v8);
      v27 = qword_280F843B0;

      if (v27 != -1)
      {
        OUTLINED_FUNCTION_2_11();
      }

      OUTLINED_FUNCTION_27_9(qword_280F8E708);
      v28 = qword_280F843A0;

      if (v28 != -1)
      {
        OUTLINED_FUNCTION_11_11();
      }

      v11 = qword_280F8E700;
LABEL_162:
      *(v1 + 136) = v8;
      *(v1 + 144) = &off_2845F6218;
      *(v1 + 112) = v11;
      goto LABEL_193;
    case -96:
    case -95:
    case -94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EE8, &qword_231370B78);
      v1 = OUTLINED_FUNCTION_50_1();
      *(v1 + 16) = xmmword_23136B670;
      if (qword_280F842C8 != -1)
      {
        swift_once();
      }

      v7 = qword_280F8E6A0;
LABEL_192:
      *(v1 + 56) = sub_2313692F0();
      *(v1 + 64) = &off_2845F6218;
      *(v1 + 32) = v7;
LABEL_193:

      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_23126036C(unsigned __int8 a1)
{
  v2 = sub_231368290();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  (*(v5 + 104))(v9 - v8, **(&unk_278907400 + (a1 ^ 0x80u)), v2);
  v11 = sub_231368280();
  (*(v5 + 8))(v10, v2);
  return v11;
}

void sub_231260464(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2313673A0();
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  switch(a1)
  {
    case 102:
    case 105:
    case -119:
      sub_231207BDC(0, &qword_280F7C7A0, 0x277CD4058);
      sub_231367350();
      v20 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v20, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 103:
    case 104:
LABEL_27:
      sub_231207BDC(0, &qword_280F7C7D8, 0x277CD3A18);
      sub_231367350();
      v19 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v19, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -124:
    case -123:
    case -122:
    case -118:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -100:
      goto LABEL_24;
    case 119:
    case 120:
    case -126:
    case -125:
    case -120:
    case -114:
    case -110:
    case -109:
    case -101:
    case -99:
    case -98:
      goto LABEL_18;
    case -121:
    case -105:
      sub_231369600();
      sub_231367350();
      v18 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v18, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -117:
      sub_231207BDC(0, &qword_280F7C7D0, 0x277CD3EC0);
      sub_231367350();
      v17 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v17, MEMORY[0x277D608B0]);
      goto LABEL_30;
    case -113:
      goto LABEL_11;
    case -106:
    case -104:
    case -103:
    case -102:
      v11 = MEMORY[0x277D60888];
      *(a2 + 24) = v4;
      *(a2 + 32) = v11;
      v30 = v10;
      goto LABEL_19;
    default:
      if (!(!v9 & v8))
      {
        switch(a1)
        {
          case '9':
          case ':':
          case 'A':
          case 'C':
            goto LABEL_18;
          case ';':
          case '<':
          case '=':
          case '>':
          case '?':
          case '@':
            goto LABEL_24;
          case 'B':
            goto LABEL_27;
          default:
            JUMPOUT(0);
        }
      }

      if (!a1)
      {
        goto LABEL_18;
      }

      v30 = v10;
      if (a1 == 8)
      {
        v21 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v21;
        __swift_allocate_boxed_opaque_existential_1(a2);
        OUTLINED_FUNCTION_6_12();
        v24 = 0xD000000000000028;
LABEL_29:
        *v22 = v24;
        v22[1] = v23;
        v15 = *MEMORY[0x277D60868];
        v16 = *(v30 + 104);
        goto LABEL_21;
      }

      if (a1 == 87)
      {
        v25 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v25;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        v31 = sub_23126036C(0x57u);
        v32 = v27;
        sub_231369EE0();
        MEMORY[0x23192A730](0xD000000000000012, 0x800000023137E250);

        *boxed_opaque_existential_1 = v31;
        boxed_opaque_existential_1[1] = v32;
        v28 = MEMORY[0x277D60878];
        goto LABEL_20;
      }

      if (a1 != 13)
      {
        if (a1 != 49 && a1 != 52 && a1 != 86)
        {
          if (a1 != 9)
          {
LABEL_24:
            *(a2 + 32) = 0;
            *a2 = 0u;
            *(a2 + 16) = 0u;
            return;
          }

          v12 = MEMORY[0x277D60888];
          *(a2 + 24) = v4;
          *(a2 + 32) = v12;
          __swift_allocate_boxed_opaque_existential_1(a2);
          OUTLINED_FUNCTION_6_12();
          v24 = 0xD000000000000029;
          goto LABEL_29;
        }

LABEL_18:
        v30 = v10;
        v13 = MEMORY[0x277D60888];
        *(a2 + 24) = v4;
        *(a2 + 32) = v13;
LABEL_19:
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        *boxed_opaque_existential_1 = sub_23125DB88(a1);
        boxed_opaque_existential_1[1] = v14;
        v28 = MEMORY[0x277D60880];
LABEL_20:
        v15 = *v28;
        v16 = *(v30 + 104);
        v22 = boxed_opaque_existential_1;
LABEL_21:

        v16(v22, v15, v4);
        return;
      }

LABEL_11:
      sub_231207BDC(0, &unk_280F7C7B0, 0x277CD4078);
      sub_231367350();
      v29 = sub_231367400();
      OUTLINED_FUNCTION_58_3(v29, MEMORY[0x277D608B0]);
LABEL_30:
      sub_2313673F0();
      return;
  }
}

BOOL sub_231260A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 dateSearchType];

        (*(v5 + 8))(v11, v4);
        return v14 == 1;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

BOOL sub_231260CA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 itemType];

        (*(v5 + 8))(v11, v4);
        return v14 == 2;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_231260F2C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        if ([v13 itemType] == 3)
        {
          v15 = [v14 taskPriority];

          (*(v5 + 8))(v11, v4);
          if (v15 == 2)
          {
            return 1;
          }
        }

        else
        {
          (*(v5 + 8))(v11, v4);
        }
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2312611F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 attachments];
        if (!v14)
        {

          (*(v5 + 8))(v11, v4);
          return 1;
        }
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v15 = *(v5 + 8);
      v15(v11, v4);
      v15(v9, v4);
    }
  }

  return 0;
}

BOOL sub_231261484()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v17[1] = v13;
        sub_231207BDC(0, &qword_280F7C7D0, 0x277CD3EC0);
        v14 = sub_231366BA0();
        (*(v5 + 8))(v11, v4);

        return v14 == 5;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_231261730()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 temporalEventTrigger];
        if (v15 || (v15 = [v14 spatialEventTrigger]) != 0)
        {
          v16 = v15;
        }

        else
        {
          v19 = [v14 targetTaskList];
          if (!v19)
          {
            (*(v5 + 8))(v11, v4);

            return 0;
          }

          v16 = v19;
          v20 = sub_231266AC8([v19 title]);
          if (v21)
          {
            if (v20 == 0xD000000000000012 && v21 == 0x800000023137E2D0)
            {

              (*(v5 + 8))(v11, v4);
            }

            else
            {
              v23 = sub_23136A900();

              (*(v5 + 8))(v11, v4);
              if ((v23 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_231261AC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 temporalEventTrigger];

        (*(v5 + 8))(v11, v4);
        if (v14)
        {

          return 1;
        }
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_231261D58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
      return 0;
    }

    (*(v5 + 96))(v9, v4);
    v12 = *v9;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [v13 temporalEventTrigger];
    if (v15 || (v15 = [v14 spatialEventTrigger]) != 0)
    {
      v16 = v15;
LABEL_8:

LABEL_9:
      (*(v5 + 8))(v11, v4);
      return 0;
    }

    v19 = [v14 targetTaskList];
    if (!v19)
    {
      (*(v5 + 8))(v11, v4);

      return 0;
    }

    v16 = v19;
    v20 = sub_231266AC8([v19 title]);
    if (v21)
    {
      if (v20 == 0xD000000000000012 && v21 == 0x800000023137E2D0)
      {

        goto LABEL_8;
      }

      v23 = sub_23136A900();

      (*(v5 + 8))(v11, v4);
      if (v23)
      {
        return 0;
      }
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    return 1;
  }

  sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  return 0;
}

void sub_2312620F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v23 = v12;
        v14 = sub_231266B38(v13);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        v16 = sub_23125D7A0(v15);
        v17 = 0;
        while (1)
        {
          if (v16 == v17)
          {
LABEL_15:
            (*(v5 + 8))(v11, v4);

            return;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x23192AD10](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v20 = [v18 currentLocation];

          ++v17;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v21 = *(v5 + 8);
      v21(v11, v4);
      v21(v9, v4);
    }
  }
}

uint64_t sub_23126244C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
  {
    v18 = *(v5 + 8);
    v18(v11, v4);
    v18(v9, v4);
    goto LABEL_13;
  }

  (*(v5 + 96))(v9, v4);
  v12 = *v9;
  sub_231369600();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = sub_231266BA8(v13), !v15))
  {

    (*(v5 + 8))(v11, v4);
    goto LABEL_13;
  }

  if (v14 == 0xD000000000000011 && v15 == 0x800000023137E2F0)
  {

    (*(v5 + 8))(v11, v4);
    v17 = 1;
  }

  else
  {
    v17 = sub_23136A900();

    (*(v5 + 8))(v11, v4);
  }

  return v17 & 1;
}

uint64_t sub_231262738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43808, &qword_231373E90);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_231367550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_231367410();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2311D1F18(v3, &qword_27DD43808, &qword_231373E90);
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
  {
    v18 = *(v5 + 8);
    v18(v11, v4);
    v18(v9, v4);
    goto LABEL_13;
  }

  (*(v5 + 96))(v9, v4);
  v12 = *v9;
  sub_231369600();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = sub_231266BA8(v13), !v15))
  {

    (*(v5 + 8))(v11, v4);
    goto LABEL_13;
  }

  if (v14 == 0xD000000000000013 && v15 == 0x800000023137E310)
  {

    (*(v5 + 8))(v11, v4);
    v17 = 1;
  }

  else
  {
    v17 = sub_23136A900();

    (*(v5 + 8))(v11, v4);
  }

  return v17 & 1;
}

void sub_231262A24(char a1)
{
  v3 = sub_231368290();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43820, &qword_23136E040);
  v13 = OUTLINED_FUNCTION_0_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v302 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v302 - v21;
  switch(a1)
  {
    case 107:
    case 109:
    case 113:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v84 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v84, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v85 = OUTLINED_FUNCTION_3_19();
      v86(v85);
      OUTLINED_FUNCTION_54_5();
      v87 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v87);
      OUTLINED_FUNCTION_72_3();
      v88 = OUTLINED_FUNCTION_53_5();
      v89 = *MEMORY[0x277D60EE0];
      v90 = OUTLINED_FUNCTION_7_10();
      v91(v90);
      sub_231368280();
      v92 = OUTLINED_FUNCTION_47_6();
      (*(v6 + 8))(v92, v3);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_78_1();
      v94 = v93;
      sub_23124946C(v95, v96, v97, v98, v99, v100);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v103 = sub_231266C0C(v101, v102);
      v84[2].n128_u64[0] = 0x656C746954626174;
      v84[2].n128_u64[1] = 0xE800000000000000;
      v84[3].n128_u64[0] = v94;
      v84[5].n128_u64[0] = v103;
      v84[5].n128_u64[1] = v88;
      OUTLINED_FUNCTION_23_8();
      v45 = v11;
      goto LABEL_39;
    case 108:
    case 110:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 121:
    case 123:
    case 124:
    case -126:
    case -121:
    case -119:
    case -118:
    case -117:
    case -114:
    case -113:
    case -111:
    case -110:
    case -109:
    case -108:
    case -107:
    case -106:
    case -105:
    case -104:
    case -103:
    case -102:
    case -101:
    case -100:
    case -97:
    case -96:
    case -95:
      goto LABEL_41;
    case 111:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v48 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v48, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v178 = OUTLINED_FUNCTION_3_19();
      v179(v178);
      OUTLINED_FUNCTION_54_5();
      v180 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v180);
      OUTLINED_FUNCTION_72_3();
      v52 = OUTLINED_FUNCTION_53_5();
      v181 = *MEMORY[0x277D60EE0];
      v182 = OUTLINED_FUNCTION_7_10();
      v183(v182);
      sub_231368280();
      OUTLINED_FUNCTION_47_6();
      v56 = v12;
      OUTLINED_FUNCTION_62_4();
      v184();
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_77_0();
      OUTLINED_FUNCTION_57_6(0x6B72616D6B6F6F62, 0xED0000656C746954, v185, v186, v187, v188);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v64 = sub_231266C0C(v189, v190);
      v48[2].n128_u16[7] = -4864;
      v48[3].n128_u64[0] = v11;
      strcpy(&v48[2], "bookmarkTitle");
LABEL_25:
      v48[5].n128_u64[0] = v64;
      v48[5].n128_u64[1] = v52;
      OUTLINED_FUNCTION_23_8();
      v45 = v11;
      v46 = v56;
      goto LABEL_40;
    case 112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v202 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v202, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v203 = OUTLINED_FUNCTION_3_19();
      v204(v203);
      OUTLINED_FUNCTION_54_5();
      v205 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v205);
      OUTLINED_FUNCTION_19_11();
      v312 = v22;
      v207 = v206 + 3;
      OUTLINED_FUNCTION_80();
      v310 = OUTLINED_FUNCTION_53_5();
      v208 = *MEMORY[0x277D60EE0];
      v209 = OUTLINED_FUNCTION_7_10();
      v210(v209);
      v211 = sub_231368280();
      v212 = OUTLINED_FUNCTION_48_5();
      v213(v212);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12();
      v214 = OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_57_6(v214, v215, v216, v217, v218, v219);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v222 = sub_231266C0C(v220, v221);
      v202[2].n128_u64[1] = 0x800000023137DD80;
      v202[3].n128_u64[0] = v211;
      v202[2].n128_u64[0] = v207;
      v223 = v310;
      v202[5].n128_u64[0] = v222;
      v202[5].n128_u64[1] = v223;
      OUTLINED_FUNCTION_23_8();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case 119:
    case 120:
      sub_231368870();
      OUTLINED_FUNCTION_36_2();
      v111 = swift_allocObject();
      *(v111 + 16) = 0x4E676E6974746573;
      *(v111 + 24) = 0xEB00000000656D61;
      v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v321 = v309;
      v308 = sub_23126690C();
      v322 = v308;
      __swift_allocate_boxed_opaque_existential_1(&v320);
      v306 = sub_231367550();
      v112 = sub_231367DC0();
      v311 = v12;
      v305 = v112;
      sub_2313674C0();
      v307 = *(v15 + 16);
      v307(v20, v22, v12);
      sub_2311CF324(&v320, v314);
      v113 = sub_231368540();
      v114 = OUTLINED_FUNCTION_52_6(v113);
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_24_0();
      v115 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v116 = swift_allocObject();
      *(v116 + 16) = 0x4E676E6974746573;
      *(v116 + 24) = 0xEB00000000656D61;
      v317 = v115;
      OUTLINED_FUNCTION_5_13();
      v310 = sub_231266C0C(v117, v118);
      v318 = v310;
      v314[2] = v116;
      v119 = *(v15 + 8);
      v120 = v311;
      v119(v22, v311);
      v314[0] = 0x4E676E6974746573;
      v314[1] = 0xEB00000000656D61;
      v319 = v114;
      __swift_destroy_boxed_opaque_existential_1Tm(&v320);
      OUTLINED_FUNCTION_36_2();
      v121 = swift_allocObject();
      strcpy((v121 + 16), "settingAction");
      *(v121 + 30) = -4864;
      v321 = v309;
      v322 = v308;
      __swift_allocate_boxed_opaque_existential_1(&v320);
      sub_2313674C0();
      sub_231368860();
      v307(v20, v22, v120);
      sub_2311CF324(&v320, v313);
      v122 = *(v113 + 48);
      v123 = *(v113 + 52);
      swift_allocObject();
      v124 = OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_36_2();
      v125 = swift_allocObject();
      strcpy((v125 + 16), "settingAction");
      *(v125 + 30) = -4864;
      v119(v22, v120);
      __swift_destroy_boxed_opaque_existential_1Tm(&v320);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_23136C1C0;
      sub_2312669FC(v314, v126 + 32);
      strcpy((v126 + 96), "settingAction");
      *(v126 + 110) = -4864;
      *(v126 + 112) = v125;
      *(v126 + 120) = v320;
      v127 = v310;
      *(v126 + 136) = v115;
      *(v126 + 144) = v127;
      *(v126 + 152) = v124;
      sub_231266A34(v314);
      goto LABEL_41;
    case 122:
    case 125:
    case 126:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v65 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v65, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v66 = OUTLINED_FUNCTION_3_19();
      v67(v66);
      OUTLINED_FUNCTION_54_5();
      v68 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v68);
      OUTLINED_FUNCTION_76_2();
      v312 = v22;
      v69 = OUTLINED_FUNCTION_53_5();
      v70 = *MEMORY[0x277D60EE8];
      v71 = OUTLINED_FUNCTION_7_10();
      v72(v71);
      v73 = sub_231368280();
      v74 = OUTLINED_FUNCTION_48_5();
      v75(v74);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12();
      v76 = OUTLINED_FUNCTION_76_2();
      OUTLINED_FUNCTION_57_6(v76, 0xEB000000006C6F62, v77, v78, v79, v80);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v83 = sub_231266C0C(v81, v82);
      v65[2].n128_u64[0] = 0x69546C6F626D7973;
      v65[2].n128_u64[1] = 0xEB00000000656C74;
      v65[3].n128_u64[0] = v73;
      v65[5].n128_u64[0] = v83;
      v65[5].n128_u64[1] = v69;
      OUTLINED_FUNCTION_23_8();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case 127:
    case -127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v128 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v128, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v312 = v22;
      v129 = OUTLINED_FUNCTION_8_12();
      v130(v129);
      OUTLINED_FUNCTION_54_5();
      v131 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v131);
      v311 = v12;
      v132 = OUTLINED_FUNCTION_53_5();
      v133 = *MEMORY[0x277D60EE8];
      v134 = OUTLINED_FUNCTION_7_10();
      v135(v134);
      v136 = sub_231368280();
      v138 = v137;
      v139 = OUTLINED_FUNCTION_48_5();
      v140(v139);
      type metadata accessor for AppEntityResolver();
      OUTLINED_FUNCTION_21_12();
      OUTLINED_FUNCTION_18_11();
      v141 = v136;
      v143 = v142;
      sub_23124946C(0xD000000000000012, 0x800000023137DDA0, v141, v138, v144, v145);
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_0_20();
      v148 = sub_231266C0C(v146, v147);
      strcpy(&v128[2], "articleTitle");
      v128[2].n128_u8[13] = 0;
      v128[2].n128_u16[7] = -5120;
      v128[3].n128_u64[0] = v143;
      v128[5].n128_u64[0] = v148;
      v128[5].n128_u64[1] = v132;
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
      (*(v15 + 8))(v312, v311);
      goto LABEL_41;
    case -128:
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v33 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v33, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v34 = OUTLINED_FUNCTION_3_19();
      v35(v34);
      OUTLINED_FUNCTION_54_5();
      v36 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v36);
      OUTLINED_FUNCTION_19_11();
      v312 = v22;
      v38 = v37 | 6;
      OUTLINED_FUNCTION_80();
      v39 = OUTLINED_FUNCTION_53_5();
      v40 = *MEMORY[0x277D60F30];
      v41 = OUTLINED_FUNCTION_7_10();
      v42(v41);
      sub_231368280();
      OUTLINED_FUNCTION_62_4();
      v43();
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_80();
      sub_2313680A0();

      v33[2].n128_u64[0] = v38;
      v33[2].n128_u64[1] = 0x800000023137DE40;
      v33[5].n128_u64[1] = v39;
      OUTLINED_FUNCTION_23_8();
      v45 = v312;
      v46 = v12;
      goto LABEL_40;
    case -125:
    case -124:
    case -123:
    case -122:
    case -120:
    case -116:
    case -115:
    case -112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v23 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v24 = OUTLINED_FUNCTION_3_19();
      v25(v24);
      OUTLINED_FUNCTION_54_5();
      v26 = sub_231368540();
      v27 = OUTLINED_FUNCTION_52_6(v26);
      v28 = 0x6D614E6563616C70;
      OUTLINED_FUNCTION_31_11();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_24_0();
      type metadata accessor for PlaceNameResolver();
      OUTLINED_FUNCTION_36_2();
      v29 = swift_allocObject();
      OUTLINED_FUNCTION_63_4(v29);
      v30 = &unk_280F83798;
      v31 = type metadata accessor for PlaceNameResolver;
LABEL_3:
      v32 = sub_231266C0C(v30, v31);
      v23[2].n128_u64[1] = 0xE900000000000065;
      v23[3].n128_u64[0] = v6;
LABEL_36:
      v23[2].n128_u64[0] = v28;
LABEL_37:
      v23[5].n128_u64[0] = v32;
      v23[5].n128_u64[1] = v27;
      goto LABEL_38;
    case -99:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v169 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v169, xmmword_23136B670);
      sub_231368860();
      sub_231368850();
      v170 = OUTLINED_FUNCTION_3_19();
      v171(v170);
      OUTLINED_FUNCTION_54_5();
      v172 = sub_231368540();
      OUTLINED_FUNCTION_52_6(v172);
      v173 = OUTLINED_FUNCTION_12_11();
      v174 = type metadata accessor for SunStageResolver();
      swift_allocObject();
      sub_23124B954();
      v176 = v175;
      v169[4].n128_u64[1] = v174;
      v177 = sub_231266C0C(&qword_280F83EC8, type metadata accessor for SunStageResolver);
      v169[2].n128_u64[1] = 0xEF65676174536E75;
      v169[3].n128_u64[0] = v176;
      v169[2].n128_u64[0] = 0x5372656874616577;
      v169[5].n128_u64[0] = v177;
      v169[5].n128_u64[1] = v173;
LABEL_38:
      OUTLINED_FUNCTION_23_8();
      v45 = v22;
LABEL_39:
      v46 = v12;
LABEL_40:
      v44(v45, v46);
      goto LABEL_41;
    case -98:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v224 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v224, xmmword_23136B670);
      sub_231368870();
      OUTLINED_FUNCTION_36_2();
      swift_allocObject();
      OUTLINED_FUNCTION_19_11();
      v226 = v225 - 1;
      *(v227 + 16) = v225 - 1;
      *(v227 + 24) = 0x800000023137DD40;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v316 = sub_23126690C();
      __swift_allocate_boxed_opaque_existential_1(v314);
      sub_231367550();
      sub_231367DC0();
      sub_2313674C0();
      v228 = OUTLINED_FUNCTION_8_12();
      v229(v228, v22, v12);
      OUTLINED_FUNCTION_54_5();
      v230 = sub_231368540();
      v231 = OUTLINED_FUNCTION_52_6(v230);
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_24_0();
      v232 = type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v233 = swift_allocObject();
      *(v233 + 16) = v226;
      *(v233 + 24) = 0x800000023137DD40;
      v224[4].n128_u64[1] = v232;
      OUTLINED_FUNCTION_5_13();
      v236 = sub_231266C0C(v234, v235);
      v224[2].n128_u64[1] = 0x800000023137DD40;
      v224[3].n128_u64[0] = v233;
      v224[2].n128_u64[0] = v226;
      v224[5].n128_u64[0] = v236;
      v224[5].n128_u64[1] = v231;
      (*(v15 + 8))(v22, v12);
      goto LABEL_29;
    case -94:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
      v191 = OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_15_15(v191, xmmword_23136B670);
      sub_231368860();
      OUTLINED_FUNCTION_36_2();
      v192 = swift_allocObject();
      *(v192 + 16) = 0x7079546569766F6DLL;
      *(v192 + 24) = 0xE900000000000065;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43828, &qword_23136E058);
      v316 = sub_23126690C();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v314);
      sub_231367550();
      sub_231367DC0();
      sub_2313674C0();
      v194 = OUTLINED_FUNCTION_3_19();
      v195(v194);
      OUTLINED_FUNCTION_54_5();
      v196 = sub_231368540();
      v197 = OUTLINED_FUNCTION_52_6(v196);
      OUTLINED_FUNCTION_31_11();
      sub_231368500();
      OUTLINED_FUNCTION_24_0();
      type metadata accessor for DoNotResolveResolver();
      OUTLINED_FUNCTION_36_2();
      v198 = swift_allocObject();
      OUTLINED_FUNCTION_63_4(v198);
      OUTLINED_FUNCTION_5_13();
      v201 = sub_231266C0C(v199, v200);
      v191[2].n128_u64[1] = 0xE900000000000065;
      v191[3].n128_u64[0] = boxed_opaque_existential_1;
      v191[2].n128_u64[0] = 0x7079546569766F6DLL;
      v191[5].n128_u64[0] = v201;
      v191[5].n128_u64[1] = v197;
      (*(v15 + 8))(v22, v12);
LABEL_29:
      __swift_destroy_boxed_opaque_existential_1Tm(v314);
LABEL_41:
      OUTLINED_FUNCTION_9_0();
      return;
    default:
      switch(a1)
      {
        case '5':
        case '7':
        case '8':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v23 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v104 = OUTLINED_FUNCTION_3_19();
          v105(v104);
          OUTLINED_FUNCTION_54_5();
          v106 = sub_231368540();
          v27 = OUTLINED_FUNCTION_52_6(v106);
          v28 = 0x6E65536C69616D65;
          v107 = 0xEB00000000726564;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for DoNotResolveResolver();
          OUTLINED_FUNCTION_36_2();
          v108 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v108);
          OUTLINED_FUNCTION_5_13();
          goto LABEL_35;
        case '6':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v245 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v245, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v246 = OUTLINED_FUNCTION_3_19();
          v247(v246);
          OUTLINED_FUNCTION_54_5();
          v248 = sub_231368540();
          OUTLINED_FUNCTION_52_6(v248);
          v311 = v12;
          OUTLINED_FUNCTION_72_3();
          v249 = OUTLINED_FUNCTION_53_5();
          v250 = *MEMORY[0x277D60E78];
          v251 = OUTLINED_FUNCTION_7_10();
          v252(v251);
          sub_231368280();
          v253 = OUTLINED_FUNCTION_48_5();
          v254(v253);
          type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_78_1();
          v256 = v255;
          sub_23124946C(v257, v258, v259, v260, 0xD000000000000011, v261);
          OUTLINED_FUNCTION_49_5();
          OUTLINED_FUNCTION_0_20();
          v264 = sub_231266C0C(v262, v263);
          v245[2].n128_u64[0] = 0x7469546C69616D65;
          v245[2].n128_u64[1] = 0xEA0000000000656CLL;
          v245[3].n128_u64[0] = v256;
          v245[5].n128_u64[0] = v264;
          v245[5].n128_u64[1] = v249;
          OUTLINED_FUNCTION_23_8();
          v45 = v22;
          goto LABEL_33;
        case '9':
        case ':':
        case ';':
        case '<':
        case '=':
        case '>':
        case '@':
        case 'C':
        case 'D':
        case 'F':
        case 'G':
        case 'I':
        case 'J':
        case 'K':
        case 'O':
          goto LABEL_41;
        case '?':
        case 'H':
        case 'M':
        case 'P':
          goto LABEL_5;
        case 'A':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v23 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v241 = OUTLINED_FUNCTION_3_19();
          v242(v241);
          OUTLINED_FUNCTION_54_5();
          v243 = sub_231368540();
          v27 = OUTLINED_FUNCTION_52_6(v243);
          v28 = 0x74616E6974736564;
          v107 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for DestinationResolver();
          OUTLINED_FUNCTION_36_2();
          v244 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v244);
          v109 = &unk_280F82E58;
          v110 = type metadata accessor for DestinationResolver;
          goto LABEL_35;
        case 'B':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v23 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v265 = OUTLINED_FUNCTION_3_19();
          v266(v265);
          OUTLINED_FUNCTION_54_5();
          v267 = sub_231368540();
          v27 = OUTLINED_FUNCTION_52_6(v267);
          v28 = 0x61737265766E6F63;
          v107 = 0xEC0000006E6F6974;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for MessagesConversationEntityResolver();
          OUTLINED_FUNCTION_36_2();
          v268 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v268);
          v109 = &unk_280F7D5C0;
          v110 = type metadata accessor for MessagesConversationEntityResolver;
          goto LABEL_35;
        case 'E':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v23 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v237 = OUTLINED_FUNCTION_3_19();
          v238(v237);
          OUTLINED_FUNCTION_54_5();
          v239 = sub_231368540();
          v27 = OUTLINED_FUNCTION_52_6(v239);
          v28 = 0x73756F6976657270;
          v107 = 0xEC00000072616559;
          OUTLINED_FUNCTION_12_11();
          OUTLINED_FUNCTION_24_0();
          type metadata accessor for PreviousYearResolver();
          OUTLINED_FUNCTION_36_2();
          v240 = swift_allocObject();
          OUTLINED_FUNCTION_36_7(v240);
          v109 = &unk_280F82540;
          v110 = type metadata accessor for PreviousYearResolver;
LABEL_35:
          v32 = sub_231266C0C(v109, v110);
          v23[2].n128_u64[1] = v107;
          v23[3].n128_u64[0] = v1;
          goto LABEL_36;
        case 'L':
        case 'N':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v149 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v149, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v311 = v12;
          v150 = OUTLINED_FUNCTION_8_12();
          v151(v150, v22);
          OUTLINED_FUNCTION_54_5();
          v152 = sub_231368540();
          OUTLINED_FUNCTION_52_6(v152);
          OUTLINED_FUNCTION_19_11();
          OUTLINED_FUNCTION_72_3();
          v153 = OUTLINED_FUNCTION_53_5();
          v154 = *MEMORY[0x277D60E88];
          v155 = OUTLINED_FUNCTION_7_10();
          v156(v155);
          sub_231368280();
          v157 = OUTLINED_FUNCTION_47_6();
          (*(v6 + 8))(v157, v3);
          type metadata accessor for AppEntityResolver();
          OUTLINED_FUNCTION_21_12();
          OUTLINED_FUNCTION_18_11();
          OUTLINED_FUNCTION_78_1();
          v159 = v158;
          sub_23124946C(v160, v161, v162, v163, v164, v165);
          OUTLINED_FUNCTION_49_5();
          OUTLINED_FUNCTION_0_20();
          v168 = sub_231266C0C(v166, v167);
          strcpy(&v149[2], "articleTitle");
          v149[2].n128_u8[13] = 0;
          v149[2].n128_u16[7] = -5120;
          v149[3].n128_u64[0] = v159;
          v149[5].n128_u64[0] = v168;
          v149[5].n128_u64[1] = v153;
          OUTLINED_FUNCTION_23_8();
          v45 = v11;
LABEL_33:
          v46 = v311;
          goto LABEL_40;
        case 'Q':
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
          v23 = OUTLINED_FUNCTION_55_6();
          OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
          sub_231368860();
          sub_231368850();
          v269 = OUTLINED_FUNCTION_3_19();
          v270(v269);
          OUTLINED_FUNCTION_54_5();
          v271 = sub_231368540();
          v27 = OUTLINED_FUNCTION_52_6(v271);
          OUTLINED_FUNCTION_53_5();
          OUTLINED_FUNCTION_24_0();
          v272 = type metadata accessor for NotesTagAndFolderResolver();
          OUTLINED_FUNCTION_36_2();
          v273 = swift_allocObject();
          *(v273 + 16) = 0xD000000000000011;
          *(v273 + 24) = 0x800000023137DDE0;
          v23[4].n128_u64[1] = v272;
          v32 = sub_231266C0C(&qword_280F80148, type metadata accessor for NotesTagAndFolderResolver);
          v23[2].n128_u64[1] = 0x800000023137DDE0;
          v23[3].n128_u64[0] = v273;
          v23[2].n128_u64[0] = 0xD000000000000011;
          goto LABEL_37;
        default:
          switch(a1)
          {
            case 10:
              goto LABEL_5;
            case 98:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v23 = OUTLINED_FUNCTION_55_6();
              OUTLINED_FUNCTION_15_15(v23, xmmword_23136B670);
              sub_231368860();
              sub_231368850();
              v274 = OUTLINED_FUNCTION_3_19();
              v275(v274);
              OUTLINED_FUNCTION_54_5();
              v276 = sub_231368540();
              v27 = OUTLINED_FUNCTION_52_6(v276);
              v28 = 0x6C746954776F6873;
              OUTLINED_FUNCTION_31_11();
              OUTLINED_FUNCTION_53_5();
              OUTLINED_FUNCTION_24_0();
              type metadata accessor for PodcastsShowResolver();
              OUTLINED_FUNCTION_36_2();
              v277 = swift_allocObject();
              OUTLINED_FUNCTION_63_4(v277);
              v30 = &unk_27DD43EE0;
              v31 = type metadata accessor for PodcastsShowResolver;
              goto LABEL_3;
            case 23:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v278 = swift_allocObject();
              OUTLINED_FUNCTION_15_15(v278, xmmword_23136C1C0);
              sub_231368860();
              sub_231368850();
              OUTLINED_FUNCTION_6_12();
              v303 = v279;
              v280 = *(v15 + 16);
              v308 = v15 + 16;
              v309 = v280;
              v280(v20, v22, v12);
              OUTLINED_FUNCTION_54_5();
              v281 = sub_231368540();
              OUTLINED_FUNCTION_52_6(v281);
              OUTLINED_FUNCTION_19_11();
              v310 = v15;
              v311 = v12;
              v283 = v282 | 6;
              v284 = v303;
              v304 = OUTLINED_FUNCTION_53_5();
              v285 = *MEMORY[0x277D60F30];
              v286 = *(v6 + 104);
              v306 = v6 + 104;
              v307 = v286;
              v286(v11, v285, v3);
              sub_231368280();
              v312 = v22;
              v305 = *(v6 + 8);
              v305(v11, v3);
              OUTLINED_FUNCTION_14_14();
              OUTLINED_FUNCTION_78_1();
              sub_2313680A0();

              v278[2].n128_u64[0] = v283;
              v278[2].n128_u64[1] = v284;
              v278[5].n128_u64[1] = v304;
              __swift_destroy_boxed_opaque_existential_1Tm(v314);
              v287 = v311;
              v288 = *(v310 + 8);
              v310 += 8;
              v289 = v312;
              v288(v312, v311);
              sub_231368860();
              sub_231368850();
              v309(v20, v289, v287);
              OUTLINED_FUNCTION_54_5();
              v290 = *(v281 + 48);
              v291 = *(v281 + 52);
              swift_allocObject();
              v292 = OUTLINED_FUNCTION_53_5();
              v307(v11, *MEMORY[0x277D60F28], v3);
              v293 = sub_231368280();
              v295 = v294;
              v305(v11, v3);
              type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_12();
              OUTLINED_FUNCTION_77_0();
              v298 = sub_23124946C(0xD000000000000011, 0x800000023137DD60, v293, v295, v296, v297);
              v278[8].n128_u64[1] = v3;
              OUTLINED_FUNCTION_0_20();
              v301 = sub_231266C0C(v299, v300);
              v278[6].n128_u64[1] = 0x800000023137DD60;
              v278[7].n128_u64[0] = v298;
              v278[6].n128_u64[0] = 0xD000000000000011;
              v278[9].n128_u64[0] = v301;
              v278[9].n128_u64[1] = v292;
              __swift_destroy_boxed_opaque_existential_1Tm(v314);
              v288(v289, v311);
              goto LABEL_41;
            case 27:
            case 29:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43ED8, &qword_231370B50);
              v48 = OUTLINED_FUNCTION_55_6();
              OUTLINED_FUNCTION_15_15(v48, xmmword_23136B670);
              sub_231368860();
              sub_231368850();
              v49 = OUTLINED_FUNCTION_3_19();
              v50(v49);
              OUTLINED_FUNCTION_54_5();
              v51 = sub_231368540();
              OUTLINED_FUNCTION_52_6(v51);
              v52 = OUTLINED_FUNCTION_53_5();
              v53 = *MEMORY[0x277D60EB0];
              v54 = OUTLINED_FUNCTION_7_10();
              v55(v54);
              sub_231368280();
              OUTLINED_FUNCTION_47_6();
              v56 = v12;
              OUTLINED_FUNCTION_62_4();
              v57();
              type metadata accessor for AppEntityResolver();
              OUTLINED_FUNCTION_21_12();
              OUTLINED_FUNCTION_18_11();
              OUTLINED_FUNCTION_57_6(0x614E7265646C6F66, 0xEA0000000000656DLL, v58, v59, v60, v61);
              OUTLINED_FUNCTION_49_5();
              OUTLINED_FUNCTION_0_20();
              v64 = sub_231266C0C(v62, v63);
              v48[2].n128_u64[1] = 0xEA0000000000656DLL;
              v48[3].n128_u64[0] = v11;
              v48[2].n128_u64[0] = 0x614E7265646C6F66;
              goto LABEL_25;
          }

          if (a1 != 13)
          {
            goto LABEL_41;
          }

          goto LABEL_5;
      }
  }
}

uint64_t sub_2312646B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case -125:
    case -119:
    case -116:
    case -112:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F24F8;
      goto LABEL_21;
    case -124:
    case -122:
    case -120:
    case -115:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F24D0;
      goto LABEL_21;
    case -123:
    case -114:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F2520;
      goto LABEL_21;
    case -121:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F2548;
      goto LABEL_21;
    case -118:
    case -113:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F25C0;
      goto LABEL_21;
    case -117:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EC8, &qword_231370B48);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_23136C1C0;
      type metadata accessor for MusicSubscriptionFilter();
      v9 = OUTLINED_FUNCTION_51_5();
      *(v8 + 56) = v2;
      OUTLINED_FUNCTION_25_10();
      *(v8 + 64) = sub_231266C0C(v10, v11);
      *(v8 + 32) = v9;
      v12 = type metadata accessor for PointOfInterestFilter();
      swift_allocObject();
      v13 = sub_23129EF14(&unk_2845F2598);
      *(v8 + 96) = v12;
      OUTLINED_FUNCTION_24_13();
      *(v8 + 104) = sub_231266C0C(v14, v15);
      *(v8 + 72) = v13;
      v16 = sub_231368750();
      OUTLINED_FUNCTION_52_6(v16);
      result = sub_231368760();
      v17 = MEMORY[0x277D61008];
      *(a2 + 24) = v16;
      *(a2 + 32) = v17;
      *a2 = result;
      return result;
    case -111:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F2570;
      goto LABEL_21;
    case -110:
    case -109:
LABEL_13:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case -108:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_12();
      v5 = &unk_2845F25E8;
      goto LABEL_21;
    case -107:
      v18 = type metadata accessor for WeatherLocationEntityCurrentFilter();
      OUTLINED_FUNCTION_36_2();
      v3 = swift_allocObject();
      *(v3 + 16) = 0x746E6572727563;
      *(v3 + 24) = 0xE700000000000000;
      *(a2 + 24) = v18;
      v6 = &unk_280F7D510;
      v7 = type metadata accessor for WeatherLocationEntityCurrentFilter;
LABEL_8:
      result = sub_231266C0C(v6, v7);
      *(a2 + 32) = result;
      *a2 = v3;
      return result;
    default:
      switch(result)
      {
        case '<':
          type metadata accessor for MapsCreateRoutePlanFilter();
          OUTLINED_FUNCTION_51_5();
          OUTLINED_FUNCTION_71_2();
          v6 = &unk_27DD43ED0;
          v7 = type metadata accessor for MapsCreateRoutePlanFilter;
          goto LABEL_8;
        case '=':
        case '?':
        case '@':
        case 'B':
          goto LABEL_13;
        case '>':
          type metadata accessor for MapsSearchNearbyFilter();
          OUTLINED_FUNCTION_51_5();
          OUTLINED_FUNCTION_71_2();
          v6 = &unk_280F81690;
          v7 = type metadata accessor for MapsSearchNearbyFilter;
          goto LABEL_8;
        case 'A':
          type metadata accessor for MapsTrafficConditionFilter();
          OUTLINED_FUNCTION_51_5();
          OUTLINED_FUNCTION_71_2();
          v6 = &unk_280F7FBA8;
          v7 = type metadata accessor for MapsTrafficConditionFilter;
          goto LABEL_8;
        case 'C':
          type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_12();
          v5 = &unk_2845F2610;
          break;
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
          goto LABEL_7;
        default:
          if (result - 98 < 2)
          {
LABEL_7:
            type metadata accessor for MusicSubscriptionFilter();
            OUTLINED_FUNCTION_51_5();
            OUTLINED_FUNCTION_71_2();
            OUTLINED_FUNCTION_25_10();
            goto LABEL_8;
          }

          if (result != 41)
          {
            goto LABEL_13;
          }

          type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_12();
          v5 = &unk_2845F2638;
          break;
      }

LABEL_21:
      v19 = sub_23129EF14(v5);
      *(a2 + 24) = v3;
      OUTLINED_FUNCTION_24_13();
      result = sub_231266C0C(v20, v21);
      *(a2 + 32) = result;
      *a2 = v19;
      return result;
  }
}

void sub_231264AEC(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, void *a3@<X8>)
{
  v6 = sub_231368290();
  v7 = OUTLINED_FUNCTION_0_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  if ((a2 - 119) <= 1u)
  {
    sub_231210C60(0x4E676E6974746573, 0xEB00000000656D61, a1);
    if (v60)
    {
      if (swift_dynamicCast())
      {
        v16 = v57;
        v15 = v58;
        v17 = v58 == 0xE800000000000000;
        if (v57 == 0x656E616C70726961 && v58 == 0xE800000000000000)
        {
          goto LABEL_16;
        }

LABEL_15:
        if (OUTLINED_FUNCTION_13_14())
        {
LABEL_16:

          OUTLINED_FUNCTION_6_12();
          v29 = 0xD000000000000024;
          goto LABEL_20;
        }

        if (v16 == 0x7265776F50776F6CLL && v17 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
        {
          goto LABEL_19;
        }

        v38 = v16 == 0x746F6F7465756C62 && v15 == 0xE900000000000068;
        if (v38 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
        {

          OUTLINED_FUNCTION_6_12();
          v29 = 0xD000000000000020;
          goto LABEL_20;
        }

        v39 = v16 == 0x72616C756C6C6563 && v15 == 0xEC00000061746144;
        if (v39 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
        {

          OUTLINED_FUNCTION_6_12();
          v29 = 0xD00000000000001FLL;
          goto LABEL_20;
        }

        v40 = v16 == 0x6E61726165707061 && v15 == 0xEA00000000006563;
        if (v40 || (OUTLINED_FUNCTION_13_14() & 1) != 0 || (v16 == 0x696853746867696ELL ? (v41 = v15 == 0xEA00000000007466) : (v41 = 0), v41 || (OUTLINED_FUNCTION_13_14() & 1) != 0 || (v16 == 0x656E746867697262 ? (v42 = v15 == 0xEA00000000007373) : (v42 = 0), v42 || (OUTLINED_FUNCTION_13_14() & 1) != 0)))
        {
LABEL_19:

          OUTLINED_FUNCTION_6_12();
          v29 = 0xD00000000000001ELL;
          goto LABEL_20;
        }

        v43 = v16 == 6581860 && v15 == 0xE300000000000000;
        if (!v43 && (OUTLINED_FUNCTION_13_14() & 1) == 0)
        {
          v44 = v16 == 0xD000000000000014 && 0x800000023137E050 == v15;
          if (v44 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
          {
            goto LABEL_16;
          }

          v45 = v16 == 0x746F7073746F68 && v15 == 0xE700000000000000;
          if (v45 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
          {

            OUTLINED_FUNCTION_6_12();
            v29 = 0xD000000000000027;
            goto LABEL_20;
          }

          v46 = v16 == 0x656D756C6F76 && v15 == 0xE600000000000000;
          if (!v46 && (OUTLINED_FUNCTION_13_14() & 1) == 0)
          {
            v47 = v16 == 1768319351 && v15 == 0xE400000000000000;
            if (!v47 && (OUTLINED_FUNCTION_13_14() & 1) == 0)
            {
              v48 = v16 == 0x67696C6873616C66 && v15 == 0xEA00000000007468;
              if (v48 || (OUTLINED_FUNCTION_13_14() & 1) != 0)
              {

                v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EC0, &qword_231370B40) + 48);
                OUTLINED_FUNCTION_6_12();
                *a3 = 0xD000000000000012;
                a3[1] = v50;
                v51 = sub_231368F30();
                __swift_storeEnumTagSinglePayload(a3 + v49, 1, 1, v51);
                v30 = MEMORY[0x277D61230];
              }

              else
              {
                if (v16 == 0x63696F5669726973 && v15 == 0xE900000000000065)
                {
                }

                else
                {
                  v53 = OUTLINED_FUNCTION_13_14();

                  if ((v53 & 1) == 0)
                  {
                    v37 = sub_231368F50();
                    v34 = a3;
                    v35 = 1;
                    v36 = 1;
                    goto LABEL_22;
                  }
                }

                (*(v9 + 104))(v14, *MEMORY[0x277D60E90], v6);
                v54 = sub_231368280();
                v56 = v55;
                (*(v9 + 8))(v14, v6);
                *a3 = v54;
                a3[1] = v56;
                v30 = MEMORY[0x277D61238];
              }

LABEL_21:
              v31 = *v30;
              v32 = sub_231368F50();
              OUTLINED_FUNCTION_11(v32);
              (*(v33 + 104))(a3, v31, v32);
              v34 = OUTLINED_FUNCTION_79_1();
LABEL_22:
              __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
              OUTLINED_FUNCTION_9_0();
              return;
            }

            OUTLINED_FUNCTION_6_12();
            v29 = 0xD00000000000001BLL;
LABEL_20:
            *a3 = v29;
            a3[1] = v28;
            v30 = MEMORY[0x277D61220];
            goto LABEL_21;
          }
        }

        OUTLINED_FUNCTION_6_12();
        v29 = 0xD00000000000001CLL;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2311D1F18(v59, &qword_27DD443C0, &unk_23136E000);
    }

    v17 = 0;
    v16 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_15;
  }

  *a3 = sub_23126036C(a2);
  a3[1] = v19;
  v20 = *MEMORY[0x277D61238];
  v21 = sub_231368F50();
  OUTLINED_FUNCTION_11(v21);
  (*(v22 + 104))(a3, v20, v21);
  OUTLINED_FUNCTION_79_1();
  OUTLINED_FUNCTION_9_0();

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

__n128 *sub_231265158(unsigned __int8 a1)
{
  if (a1 - 131 <= 0x1F && (((1 << (a1 + 125)) & 0x61F1) != 0 || ((1 << (a1 + 125)) & 0x18000) != 0 || ((1 << (a1 + 125)) & 0x80001000) != 0) || (v3 = a1 - 65, a1 - 65 <= 0x3F) && (((1 << v3) & 0x8000010000001091) != 0 || ((1 << v3) & 0x40000000200000) != 0) || a1 <= 0x3Fu && ((1 << a1) & 0x8003000000400005) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
    OUTLINED_FUNCTION_32_6();
    v4 = sub_231367650();
    OUTLINED_FUNCTION_0_0(v4);
    v13 = *(v12 + 72);
    OUTLINED_FUNCTION_35_8();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_73_3(v7, xmmword_23136C1C0);
    v14 = *MEMORY[0x277D609A8];
    v15 = OUTLINED_FUNCTION_34_7();
    v2(v15);
    v11 = *MEMORY[0x277D60998];
    v10 = v1 + v13;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
    OUTLINED_FUNCTION_32_6();
    v4 = sub_231367650();
    OUTLINED_FUNCTION_0_0(v4);
    v6 = *(v5 + 72);
    OUTLINED_FUNCTION_35_8();
    v7 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_73_3(v7, xmmword_23136D280);
    v8 = *MEMORY[0x277D609A8];
    v9 = OUTLINED_FUNCTION_34_7();
    v2(v9);
    (v2)(v1 + v6, *MEMORY[0x277D60998], v4);
    v10 = v1 + 2 * v6;
    v11 = *MEMORY[0x277D60988];
  }

  (v2)(v10, v11, v4);
  return v7;
}

uint64_t sub_2312653A8(unsigned __int8 a1)
{
  if (a1 - 130 > 0x20)
  {
LABEL_4:
    if (a1 - 58 <= 0x3E && ((1 << (a1 - 58)) & 0x6000000010000001) != 0)
    {
      goto LABEL_6;
    }

    if (a1 - 8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
      OUTLINED_FUNCTION_32_6();
      v10 = sub_231367D80();
      OUTLINED_FUNCTION_0_0(v10);
      v19 = *(v18 + 72);
      OUTLINED_FUNCTION_35_8();
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_73_3(v9, xmmword_23136C1C0);
      v20 = *MEMORY[0x277D60B78];
      v21 = OUTLINED_FUNCTION_34_7();
      v2(v21);
      v16 = *MEMORY[0x277D60B98];
      v15 = v1 + v19;
      goto LABEL_9;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
    OUTLINED_FUNCTION_32_6();
    v10 = sub_231367D80();
    OUTLINED_FUNCTION_0_0(v10);
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_35_8();
    v9 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_73_3(v9, xmmword_23136D280);
    v13 = *MEMORY[0x277D60B80];
    v14 = OUTLINED_FUNCTION_34_7();
    v2(v14);
    (v2)(v1 + v12, *MEMORY[0x277D60B78], v10);
    v15 = v1 + 2 * v12;
    v16 = *MEMORY[0x277D60B98];
LABEL_9:
    (v2)(v15, v16, v10);
    return v9;
  }

  if (((1 << (a1 + 126)) & 0x30030001) == 0)
  {
    if (((1 << (a1 + 126)) & 0x100003000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  OUTLINED_FUNCTION_32_6();
  v3 = sub_231367D80();
  OUTLINED_FUNCTION_0_0(v3);
  v5 = v4;
  v7 = *(v6 + 72);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23136B670;
  (*(v5 + 104))(v9 + v8, *MEMORY[0x277D60B80], v3);
  return v9;
}

void sub_231265670(char *a1)
{
  v2 = sub_231366860();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v130 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v122 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v122 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v122 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v122 - v26;
  MEMORY[0x28223BE20](v25);
  v34 = &v122 - v33;
  switch(a1)
  {
    case 119:
    case 120:
    case -126:
    case -113:
    case -110:
    case -109:
    case -106:
    case -105:
    case -101:
    case -98:
    case -97:
      goto LABEL_18;
    case 121:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v35 = *(v5 + 72);
      v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      *(swift_allocObject() + 16) = xmmword_23136D280;
      sub_2313667B0();
      OUTLINED_FUNCTION_59_4();
      sub_2313667B0();
      OUTLINED_FUNCTION_30_8();
LABEL_22:
      sub_2313667B0();
      goto LABEL_81;
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -104:
    case -103:
    case -102:
    case -100:
    case -96:
    case -95:
      goto LABEL_14;
    case -114:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v73 = *(v5 + 72);
      v74 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_231370B30;
      v122 = v75;
      v76 = (v75 + v74);
      sub_2313667B0();
      sub_2313667B0();
      sub_2313667B0();
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_83_1();
      sub_2313667B0();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_82_1();
      OUTLINED_FUNCTION_83_1();
      OUTLINED_FUNCTION_59_4();
      sub_2313667B0();
      OUTLINED_FUNCTION_83_1();
      sub_2313667B0();
      sub_2313667B0();
      v126 = v76;
      sub_2313667B0();
      v77 = sub_231368B70();
      v78 = 0;
      v128 = *(v77 + 16);
      v129 = v77;
      v124 = v74;
      v125 = v77 + v74;
      OUTLINED_FUNCTION_74_4();
      v79 = MEMORY[0x277D84F90];
LABEL_47:
      while (2)
      {
        if (v78 == v128)
        {
          goto LABEL_80;
        }

        if (v78 < *(v129 + 16))
        {
          (*(v5 + 16))(v12, v125 + v78 * v73, v2);
          ++v78;
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v80);
          v81 = 14;
          v82 = v126;
          while (--v81)
          {
            v83 = v82 + v73;
            OUTLINED_FUNCTION_66_2();
            v84 = sub_231369F60();
            v82 = v83;
            if (v84)
            {
              (*v123)(v12, v2);
              goto LABEL_47;
            }
          }

          v85 = *v127;
          (*v127)(v130, v12, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v131 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_69_3();
            v79 = v131;
          }

          v88 = *(v79 + 16);
          v87 = *(v79 + 24);
          if (v88 >= v87 >> 1)
          {
            sub_2311F5D78(v87 > 1, v88 + 1, 1);
            v79 = v131;
          }

          *(v79 + 16) = v88 + 1;
          v85(v79 + v124 + v88 * v73, v130, v2);
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_83;
    case -99:
      v127 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v41 = *(v5 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_70_2();
      v42 = sub_231368B70();
      v43 = 0;
      v44 = (v5 + 8);
      v45 = a1;
      v46 = &a1[OUTLINED_FUNCTION_65_3(v42)];
      v47 = MEMORY[0x277D84F90];
      v125 = v46;
      while (2)
      {
        v48 = v41;
        v49 = &v46[v41 * v43];
LABEL_25:
        if (v129 == v43)
        {
          goto LABEL_80;
        }

        if (v43 < *(v130 + 2))
        {
          (*v34)(v20, v49, v2);
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v50);
          OUTLINED_FUNCTION_66_2();
          if ((sub_231369F60() & 1) == 0)
          {
            v51 = *v126;
            (*v126)(v127, v20, v2);
            v52 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v47;
            if ((v52 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_10();
              v51 = v47;
              v47 = v131;
            }

            v54 = *(v47 + 16);
            v53 = *(v47 + 24);
            v55 = v54 + 1;
            if (v54 >= v53 >> 1)
            {
              OUTLINED_FUNCTION_16_14(v53);
              OUTLINED_FUNCTION_61_2();
            }

            ++v43;
            *(v47 + 16) = v55;
            v56 = &v45[v47 + v54 * v48];
            v41 = v48;
            v51(v56, v127, v2);
            v46 = v125;
            continue;
          }

          (*v44)(v20, v2);
          v49 += v48;
          ++v43;
          goto LABEL_25;
        }

        break;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    case -94:
      v127 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v57 = *(v5 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_70_2();
      v58 = sub_231368B70();
      v59 = 0;
      v60 = (v5 + 8);
      v61 = a1;
      v62 = &a1[OUTLINED_FUNCTION_65_3(v58)];
      v63 = MEMORY[0x277D84F90];
      v125 = v62;
      while (2)
      {
        v64 = v57;
        v65 = &v62[v57 * v59];
LABEL_36:
        if (v129 == v59)
        {
          goto LABEL_80;
        }

        if (v59 < *(v130 + 2))
        {
          (*v34)(v16, v65, v2);
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v66);
          OUTLINED_FUNCTION_66_2();
          if ((sub_231369F60() & 1) == 0)
          {
            v67 = *v126;
            (*v126)(v127, v16, v2);
            v68 = swift_isUniquelyReferenced_nonNull_native();
            v131 = v63;
            if ((v68 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_10();
              v67 = v63;
              v63 = v131;
            }

            v70 = *(v63 + 16);
            v69 = *(v63 + 24);
            v71 = v70 + 1;
            if (v70 >= v69 >> 1)
            {
              OUTLINED_FUNCTION_16_14(v69);
              OUTLINED_FUNCTION_61_2();
            }

            ++v59;
            *(v63 + 16) = v71;
            v72 = &v61[v63 + v70 * v64];
            v57 = v64;
            v67(v72, v127, v2);
            v62 = v125;
            continue;
          }

          (*v60)(v16, v2);
          v65 += v64;
          ++v59;
          goto LABEL_36;
        }

        break;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    default:
      if (!(!v29 & v28))
      {
        switch(a1)
        {
          case '0':
          case '1':
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
            v39 = *(v5 + 72);
            v40 = (*(v5 + 80) + 32) & ~*(v5 + 80);
            *(swift_allocObject() + 16) = xmmword_23136B670;
            goto LABEL_22;
          case '2':
          case '3':
          case '5':
          case '6':
          case '7':
          case '8':
            goto LABEL_14;
          case '4':
          case '9':
          case ':':
            goto LABEL_18;
          default:
            JUMPOUT(0);
        }
      }

      if (a1 - 8 < 2)
      {
        goto LABEL_18;
      }

      if (a1 == 66)
      {
        goto LABEL_14;
      }

      if (a1 != 67)
      {
        if (a1 != 86 && a1 != 102)
        {
          if (a1 == 105)
          {
            v128 = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
            v89 = *(v5 + 72);
            OUTLINED_FUNCTION_32_7();
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_23136D290;
            v122 = v90;
            v91 = &a1[v90];
            sub_2313667B0();
            sub_2313667B0();
            OUTLINED_FUNCTION_82_1();
            v126 = v91;
            sub_2313667B0();
            v92 = sub_231368B70();
            v93 = 0;
            v94 = *(v92 + 16);
            v129 = v92;
            v130 = v94;
            v124 = a1;
            v125 = &a1[v92];
            OUTLINED_FUNCTION_74_4();
            for (i = MEMORY[0x277D84F90]; ; v101(i + v124 + v104 * v89, v128, v2))
            {
LABEL_58:
              if (v93 == v130)
              {
                goto LABEL_80;
              }

              if (v93 >= *(v129 + 16))
              {
                break;
              }

              (*(v5 + 16))(v24, v125 + v93++ * v89, v2);
              OUTLINED_FUNCTION_4_13();
              sub_231266C0C(&qword_280F85958, v96);
              v97 = 5;
              v98 = v126;
              while (--v97)
              {
                v99 = v98 + v89;
                OUTLINED_FUNCTION_66_2();
                v100 = sub_231369F60();
                v98 = v99;
                if (v100)
                {
                  (*v123)(v24, v2);
                  goto LABEL_58;
                }
              }

              v101 = *v127;
              (*v127)(v128, v24, v2);
              v102 = swift_isUniquelyReferenced_nonNull_native();
              v131 = i;
              if ((v102 & 1) == 0)
              {
                OUTLINED_FUNCTION_69_3();
                i = v131;
              }

              v104 = *(i + 16);
              v103 = *(i + 24);
              if (v104 >= v103 >> 1)
              {
                sub_2311F5D78(v103 > 1, v104 + 1, 1);
                i = v131;
              }

              *(i + 16) = v104 + 1;
            }

LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            MEMORY[0x2821C7368]();
            return;
          }

          if (a1 != 104)
          {
LABEL_14:
            OUTLINED_FUNCTION_9_0();

            goto LABEL_87;
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_9_0();

        sub_231368B70();
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v105 = *(v5 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_70_2();
      v106 = sub_231368B70();
      v107 = 0;
      v108 = *(v106 + 16);
      v129 = v106;
      v130 = v108;
      v109 = (v5 + 16);
      v126 = (v5 + 32);
      v127 = a1;
      v110 = (v5 + 8);
      v111 = &a1[v106];
      v112 = MEMORY[0x277D84F90];
      v125 = v111;
LABEL_70:
      v113 = v105;
      v114 = &v111[v105 * v107];
      while (v130 != v107)
      {
        if (v107 >= *(v129 + 16))
        {
          goto LABEL_86;
        }

        (*v109)(v34, v114, v2);
        OUTLINED_FUNCTION_4_13();
        sub_231266C0C(&qword_280F85958, v115);
        OUTLINED_FUNCTION_66_2();
        if ((sub_231369F60() & 1) == 0)
        {
          v116 = *v126;
          (*v126)(v27, v34, v2);
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v131 = v112;
          if ((v117 & 1) == 0)
          {
            OUTLINED_FUNCTION_22_10();
            v116 = v112;
            v112 = v131;
          }

          v119 = *(v112 + 16);
          v118 = *(v112 + 24);
          v120 = v119 + 1;
          if (v119 >= v118 >> 1)
          {
            OUTLINED_FUNCTION_16_14(v118);
            OUTLINED_FUNCTION_61_2();
          }

          ++v107;
          *(v112 + 16) = v120;
          v121 = &v127[v112 + v119 * v113];
          v105 = v113;
          v116(v121, v27, v2);
          v111 = v125;
          goto LABEL_70;
        }

        (*v110)(v34, v2);
        v114 += v113;
        ++v107;
      }

LABEL_80:
      swift_setDeallocating();
      sub_231322AD0();

LABEL_81:
      OUTLINED_FUNCTION_9_0();
      return;
  }
}

uint64_t sub_2312663F4()
{
  v0 = sub_23136A940();

  v1 = 0;
  result = 70;
  switch(v0)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v1 = 1;
      goto LABEL_125;
    case 2:
      v1 = 2;
      goto LABEL_125;
    case 3:
      v1 = 3;
      goto LABEL_125;
    case 4:
      v1 = 4;
      goto LABEL_125;
    case 5:
      v1 = 5;
      goto LABEL_125;
    case 6:
      v1 = 6;
      goto LABEL_125;
    case 7:
      v1 = 7;
      goto LABEL_125;
    case 8:
      v1 = 8;
      goto LABEL_125;
    case 9:
      v1 = 9;
      goto LABEL_125;
    case 10:
      v1 = 10;
      goto LABEL_125;
    case 11:
      v1 = 11;
      goto LABEL_125;
    case 12:
      v1 = 12;
      goto LABEL_125;
    case 13:
      v1 = 13;
      goto LABEL_125;
    case 14:
      v1 = 14;
      goto LABEL_125;
    case 15:
      v1 = 15;
      goto LABEL_125;
    case 16:
      v1 = 16;
      goto LABEL_125;
    case 17:
      v1 = 17;
      goto LABEL_125;
    case 18:
      v1 = 18;
      goto LABEL_125;
    case 19:
      v1 = 19;
      goto LABEL_125;
    case 20:
      v1 = 20;
      goto LABEL_125;
    case 21:
      v1 = 21;
      goto LABEL_125;
    case 22:
      v1 = 22;
      goto LABEL_125;
    case 23:
      v1 = 23;
      goto LABEL_125;
    case 24:
      v1 = 24;
      goto LABEL_125;
    case 25:
      v1 = 25;
      goto LABEL_125;
    case 26:
      v1 = 26;
      goto LABEL_125;
    case 27:
      v1 = 27;
      goto LABEL_125;
    case 28:
      v1 = 28;
      goto LABEL_125;
    case 29:
      v1 = 29;
      goto LABEL_125;
    case 30:
      v1 = 30;
      goto LABEL_125;
    case 31:
      v1 = 31;
      goto LABEL_125;
    case 32:
      v1 = 32;
      goto LABEL_125;
    case 33:
      v1 = 33;
      goto LABEL_125;
    case 34:
      v1 = 34;
      goto LABEL_125;
    case 35:
      v1 = 35;
      goto LABEL_125;
    case 36:
      v1 = 36;
      goto LABEL_125;
    case 37:
      v1 = 37;
      goto LABEL_125;
    case 38:
      v1 = 38;
      goto LABEL_125;
    case 39:
      v1 = 39;
      goto LABEL_125;
    case 40:
      v1 = 40;
      goto LABEL_125;
    case 41:
      v1 = 41;
      goto LABEL_125;
    case 42:
      v1 = 42;
      goto LABEL_125;
    case 43:
      v1 = 43;
      goto LABEL_125;
    case 44:
      v1 = 44;
      goto LABEL_125;
    case 45:
      v1 = 45;
      goto LABEL_125;
    case 46:
      v1 = 46;
      goto LABEL_125;
    case 47:
      v1 = 47;
      goto LABEL_125;
    case 48:
      v1 = 48;
      goto LABEL_125;
    case 49:
      v1 = 49;
      goto LABEL_125;
    case 50:
      v1 = 50;
      goto LABEL_125;
    case 51:
      v1 = 51;
      goto LABEL_125;
    case 52:
      v1 = 52;
      goto LABEL_125;
    case 53:
      v1 = 53;
      goto LABEL_125;
    case 54:
      v1 = 54;
      goto LABEL_125;
    case 55:
      v1 = 55;
      goto LABEL_125;
    case 56:
      v1 = 56;
      goto LABEL_125;
    case 57:
      v1 = 57;
      goto LABEL_125;
    case 58:
      v1 = 58;
      goto LABEL_125;
    case 59:
      v1 = 59;
      goto LABEL_125;
    case 60:
      v1 = 60;
      goto LABEL_125;
    case 61:
      v1 = 61;
      goto LABEL_125;
    case 62:
      v1 = 62;
      goto LABEL_125;
    case 63:
      v1 = 63;
      goto LABEL_125;
    case 64:
      v1 = 64;
      goto LABEL_125;
    case 65:
      v1 = 65;
      goto LABEL_125;
    case 66:
      v1 = 66;
      goto LABEL_125;
    case 67:
      v1 = 67;
      goto LABEL_125;
    case 68:
      v1 = 68;
      goto LABEL_125;
    case 69:
      v1 = 69;
LABEL_125:
      result = v1;
      break;
    case 70:
      return result;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v0 - 128) >= 0x23)
      {
        result = 4294967203;
      }

      else
      {
        result = v0;
      }

      break;
  }

  return result;
}

uint64_t sub_231266880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_15(v1);

  return sub_2312E0B30(v3, v4, v5, v6);
}

unint64_t sub_23126690C()
{
  result = qword_280F7CAD8;
  if (!qword_280F7CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43828, &qword_23136E058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CAD8);
  }

  return result;
}

uint64_t sub_231266970()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_15(v1);

  return sub_2312E0B30(v3, v4, v5, v6);
}

uint64_t sub_231266A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231266AC8(void *a1)
{
  v2 = [a1 vocabularyIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_231266B38(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231207BDC(0, &qword_280F7C7A8, 0x277CD4070);
  v3 = sub_23136A1A0();

  return v3;
}

uint64_t sub_231266BA8(void *a1)
{
  v1 = [a1 domainUseCase];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_231266C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231266C80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_231266CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_23_8()
{
  result = __swift_destroy_boxed_opaque_existential_1Tm((v1 - 192));
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t result)
{
  v1[7] = result;
  v1[8] = v3;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return sub_231368500();
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return sub_2311CF324(v0 - 192, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_4()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_57_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_23124946C(a1, a2, v6, v7, a5, a6);
}

uint64_t *OUTLINED_FUNCTION_58_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(v2 + 72) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t result)
{
  *(v2 - 104) = *(result + 16);
  *(v2 - 96) = result;
  *(v2 - 128) = v1 + 32;
  return result;
}

void OUTLINED_FUNCTION_69_3()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5D78(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return swift_allocObject();
}

void sub_23126709C()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_2_12(v3);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v4;
  sub_23126FDD8();
  v7 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
  v9 = *(v6(0) - 8);
  if (v8 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 72);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v7;
    OUTLINED_FUNCTION_64_1();
    return;
  }

  v12 = *(v7 + 16);
  v5 = __OFADD__(v12, v0);
  v13 = v12 + v0;
  if (!v5)
  {
    *(v7 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312671B4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_12(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FDD8();
  OUTLINED_FUNCTION_42_9();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00) - 8);
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v4)
  {
    *(v3 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312672E0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126DC90);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_231267450(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126E654);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE8, &qword_231370E98);
  OUTLINED_FUNCTION_39_6();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_231267530(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126E92C);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312675E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126EA10);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
  OUTLINED_FUNCTION_39_6();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312676A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126EC0C);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
  OUTLINED_FUNCTION_39_6();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312677A4()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_2_12(v3);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v4;
  sub_23126FC0C();
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v7);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_64_1();
    return;
  }

  v10 = *(v9 + 16);
  v6 = __OFADD__(v10, v0);
  v11 = v10 + v0;
  if (!v6)
  {
    *(v9 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2312678D4(uint64_t a1)
{
  v3 = type metadata accessor for GenerationService.DedupData();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v25 = v1;
  v33 = MEMORY[0x277D84F90];
  sub_2311F5B30();
  v7 = v33;
  result = sub_231270530(a1);
  v10 = result;
  v12 = v11;
  v13 = 0;
  v31 = a1 + 64;
  v26 = a1 + 72;
  v27 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v31 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_24;
      }

      v30 = v9;
      v15 = v28;
      sub_231270BA8(*(a1 + 56) + *(v29 + 72) * v10, v28);
      sub_2311CF388(v15 + 16, v32);
      sub_231270CE0(v15);
      v33 = v7;
      v16 = *(v7 + 16);
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_2311F5B30();
        v7 = v33;
      }

      *(v7 + 16) = v16 + 1;
      result = sub_2311D38A8(v32, v7 + 40 * v16 + 32);
      v17 = 1 << *(a1 + 32);
      if (v10 >= v17)
      {
        goto LABEL_25;
      }

      v18 = *(v31 + 8 * v14);
      if ((v18 & (1 << v10)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v12)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v10 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v14 << 6;
        v21 = v14 + 1;
        v22 = (v26 + 8 * v14);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2311F0490(v10, v12, v30 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_2311F0490(v10, v12, v30 & 1);
      }

LABEL_18:
      if (++v13 == v27)
      {
        return v7;
      }

      v9 = 0;
      v12 = *(a1 + 36);
      v10 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_231267BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44050, &qword_231370F18);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_23126FE3C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_231267C48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231267C68, 0, 0);
}

void sub_231267C68()
{
  v1 = *(v0[2] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[5] = 0;
  v0[6] = v2;
  v0[4] = v1;
  if (v1)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_69_4(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_26_11(v4);
    OUTLINED_FUNCTION_74();

    sub_23126BA34(v6, v7);
  }

  else
  {
    v9 = 0;
    v10 = *(v2 + 16);
    v11 = v2;
    while (1)
    {
      if (v10 == v9)
      {
        v32 = v0[3];

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_74();

        __asm { BRAA            X2, X16 }
      }

      if (v9 >= *(v2 + 16))
      {
        break;
      }

      v12 = v2 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v13 + 16);
      v15 = *(v11 + 16);
      if (__OFADD__(v15, v14))
      {
        goto LABEL_23;
      }

      v16 = *(v12 + 32);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DA88(v17, v18, v19, v20, v21, v22, v23);
        v11 = v24;
      }

      if (*(v13 + 16))
      {
        v25 = (*(v11 + 24) >> 1) - *(v11 + 16);
        v26 = *(type metadata accessor for GenerationService.DedupData() - 8);
        if (v25 < v14)
        {
          goto LABEL_25;
        }

        v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v28 = *(v26 + 72);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v29 = *(v11 + 16);
          v30 = __OFADD__(v29, v14);
          v31 = v29 + v14;
          if (v30)
          {
            goto LABEL_26;
          }

          *(v11 + 16) = v31;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_24;
        }
      }

      ++v9;
    }

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
}

uint64_t sub_231267EB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  v3[8] = v7;
  v3[9] = v0;

  if (v0)
  {
    v8 = v3[6];

    v9 = sub_2312682BC;
  }

  else
  {
    v9 = sub_231267FC0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231267FC0()
{
  v1 = v0[6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_44_8();
      sub_23126E3C8();
      v3 = v40;
    }

    v5 = v0[8];
    *(v3 + 16) = v4 + 1;
    *(v3 + 8 * v4 + 32) = v5;
    v6 = v0[4];
    v7 = v0[5] + 1;
    v0[5] = v7;
    v0[6] = v3;
    if (v7 != v6)
    {
      break;
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 == v8)
      {
        v35 = v0[3];

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_74();

        __asm { BRAA            X2, X16 }
      }

      if (v8 >= *(v3 + 16))
      {
        break;
      }

      v11 = v3 + 8 * v8;
      v12 = *(v11 + 32);
      v13 = *(v12 + 16);
      v14 = *(v10 + 16);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_29;
      }

      v16 = *(v11 + 32);
      sub_231369EE0();
      v17 = swift_isUniquelyReferenced_nonNull_native();
      if (!v17 || v15 > *(v10 + 24) >> 1)
      {
        if (v14 <= v15)
        {
          v18 = v14 + v13;
        }

        else
        {
          v18 = v14;
        }

        sub_23126DA88(v17, v18, 1, v10, sub_231250398, type metadata accessor for GenerationService.DedupData, type metadata accessor for GenerationService.DedupData);
        v10 = v19;
      }

      if (*(v12 + 16))
      {
        v20 = (*(v10 + 24) >> 1) - *(v10 + 16);
        v21 = *(type metadata accessor for GenerationService.DedupData() - 8);
        if (v20 < v13)
        {
          goto LABEL_31;
        }

        v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v23 = *(v21 + 72);
        swift_arrayInitWithCopy();

        if (v13)
        {
          v24 = *(v10 + 16);
          v25 = __OFADD__(v24, v13);
          v26 = v24 + v13;
          if (v25)
          {
            goto LABEL_32;
          }

          *(v10 + 16) = v26;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_30;
        }
      }

      ++v8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v38 = *(v3 + 16);
    OUTLINED_FUNCTION_44_8();
    sub_23126E3C8();
    v3 = v39;
  }

  v27 = v0[2] + 40 * v7;
  v28 = swift_task_alloc();
  v29 = OUTLINED_FUNCTION_69_4(v28);
  *v29 = v30;
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_74();

  return sub_23126BA34(v31, v32);
}

uint64_t sub_2312682BC()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t GenerationService.generateCandidates(for:with:)()
{
  OUTLINED_FUNCTION_8();
  v1[54] = v2;
  v1[55] = v0;
  v1[53] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF0, &unk_23137A250) - 8) + 64);
  v1[56] = OUTLINED_FUNCTION_43();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF8, &qword_231370C00);
  v1[57] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[58] = v6;
  v8 = *(v7 + 64);
  v1[59] = OUTLINED_FUNCTION_43();
  v9 = sub_231367C70();
  v1[60] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[61] = v10;
  v12 = *(v11 + 64) + 15;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  v13 = *(*(sub_2313667A0() - 8) + 64);
  v1[65] = OUTLINED_FUNCTION_43();
  v14 = sub_2313698C0();
  v1[66] = v14;
  OUTLINED_FUNCTION_0(v14);
  v1[67] = v15;
  v17 = *(v16 + 64) + 15;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v18 = sub_231369840();
  v1[70] = v18;
  OUTLINED_FUNCTION_0(v18);
  v1[71] = v19;
  v21 = *(v20 + 64);
  v1[72] = OUTLINED_FUNCTION_43();
  v22 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_23126853C()
{
  v93 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 440);
  v3 = sub_231369190();
  sub_231369140();

  sub_231367580();
  v4 = sub_231369190();
  OUTLINED_FUNCTION_27();
  sub_2313691A0();

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v91 = v5;
  if (v6)
  {
    v92 = MEMORY[0x277D84F90];
    sub_2311F4E34();
    v7 = v92;
    v8 = v5 + 32;
    do
    {
      sub_2311CF388(v8, v0 + 16);
      sub_2311CF388(v0 + 16, v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      v9 = sub_23136A010();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v92 = v7;
      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        sub_2311F4E34();
        v7 = v92;
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  v14 = *(v0 + 552);
  v15 = *(v0 + 424);
  *(v0 + 416) = v7;
  v16 = OUTLINED_FUNCTION_55_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890);
  v18 = sub_231369F50();
  v20 = v19;

  sub_2313690F0();
  sub_2311CF388(v15, v0 + 96);
  sub_231369EE0();
  v21 = sub_2313698A0();
  v22 = sub_23136A390();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 552);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v92 = v87;
    *v27 = 136315394;
    v82 = v18;
    v84 = v22;
    v28 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v29 = *(v28 + 8);
    sub_231367AD0();
    v89 = v24;
    v30 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_1((v0 + 376), *(v0 + 400));
    OUTLINED_FUNCTION_21();
    v32 = v31;
    v34 = *(v33 + 64);
    OUTLINED_FUNCTION_43();
    (*(v32 + 16))();
    v35 = *(v30 + 16);
    v36 = sub_23136A020();
    v38 = v37;

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v39 = sub_2311CFD58(v36, v38, &v92);

    *(v27 + 4) = v39;
    *(v27 + 12) = 2080;
    v40 = sub_2311CFD58(v82, v20, &v92);

    *(v27 + 14) = v40;
    _os_log_impl(&dword_2311CB000, v21, v84, "Running through generators for owner '%s':\n %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v87, -1, -1);
    MEMORY[0x23192B930](v27, -1, -1);

    v41 = *(v25 + 8);
    v41(v89, v26);
  }

  else
  {

    v41 = *(v25 + 8);
    v41(v24, v26);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  }

  *(v0 + 584) = v41;
  v85 = *(v0 + 520);
  v42 = *(v0 + 512);
  v43 = *(v0 + 488);
  v88 = *(v0 + 504);
  v90 = *(v0 + 480);
  v44 = *(v0 + 432);
  v45 = *(v0 + 440);
  v46 = *(v0 + 424);
  v86 = type metadata accessor for PooledCandidateSuggestionFactory();
  v47 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_2313677C0();
  v48 = v45[13];
  v49 = v46[3];
  v83 = v46[4];
  v81 = __swift_project_boxed_opaque_existential_1(v46, v49);
  sub_2311CF388(v44, v0 + 176);
  v50 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);

  sub_2313677D0();
  sub_2311CF388((v45 + 3), v0 + 216);
  OUTLINED_FUNCTION_21();
  v52 = v51;
  v54 = *(v53 + 64);
  v55 = OUTLINED_FUNCTION_43();
  (*(v52 + 16))(v55, v81, v49);
  v56 = sub_2312E6098(v85, v48, v55, (v0 + 176), v42, (v0 + 216), v86, v49, *(v83 + 8));

  *(v0 + 160) = v86;
  *(v0 + 168) = sub_231270570();
  *(v0 + 136) = v56;
  v57 = v45[11];
  v58 = v45[12];
  __swift_project_boxed_opaque_existential_1(v45 + 8, v57);
  (*(v58 + 16))(v57, v58);
  v59 = v46[4];
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  sub_2313677D0();
  *(v0 + 672) = *MEMORY[0x277D60AC8];
  v60 = *(v43 + 104);
  *(v0 + 592) = v60;
  *(v0 + 600) = (v43 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v60(v88);
  LOBYTE(v55) = sub_231367C60();
  v61 = *(v43 + 8);
  *(v0 + 608) = v61;
  *(v0 + 616) = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v88, v90);
  v62 = OUTLINED_FUNCTION_54_0();
  (v61)(v62);
  if (v55)
  {
    v63 = v46[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 424), v46[3]);
    OUTLINED_FUNCTION_27();
    v64 = sub_231367830();
    if (v64)
    {
      v65 = *(v64 + 16);
    }
  }

  v67 = *(v0 + 464);
  v66 = *(v0 + 472);
  v69 = *(v0 + 448);
  v68 = *(v0 + 456);
  v71 = *(v0 + 432);
  v70 = *(v0 + 440);
  v72 = *(v0 + 424);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  sub_231367FE0();
  (*(v67 + 16))(v69, v66, v68);
  __swift_storeEnumTagSinglePayload(v69, 0, 1, v68);
  sub_2311CF388(v72, v0 + 256);
  sub_2311CF388(v71, v0 + 296);
  sub_2311CF388(v0 + 136, v0 + 336);
  v74 = swift_allocObject();
  *(v0 + 624) = v74;
  *(v74 + 16) = v70;
  sub_2311D38A8((v0 + 256), v74 + 24);
  sub_2311D38A8((v0 + 296), v74 + 64);
  sub_2311D38A8((v0 + 336), v74 + 104);
  v75 = *(MEMORY[0x277D60B28] + 4);

  v76 = swift_task_alloc();
  *(v0 + 632) = v76;
  *v76 = v0;
  v76[1] = sub_231268D8C;
  v79 = *(v0 + 448);

  return MEMORY[0x2821C6B08](v91, v79, &unk_231370C10, v74, v73, &type metadata for GeneratorOutput, v77, v78);
}

void sub_231268D8C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 632);
  *v4 = *v1;
  v3[80] = v7;

  if (v0)
  {
  }

  else
  {
    v8 = v3[78];
    sub_2311D1F18(v3[56], &qword_27DD43EF0, &unk_23137A250);

    MEMORY[0x2822009F8](sub_231268ED8, 0, 0);
  }
}

void sub_231268ED8()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 584);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  sub_231369170();
  sub_231369890();
  v6 = OUTLINED_FUNCTION_27();
  v2(v6);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = *(v1 + 16);
  for (i = (v1 + 32); ; i += 5)
  {
    *(v0 + 648) = v8;
    if (v9 == v7)
    {
      v19 = *(v0 + 640);
      v21 = *(v0 + 488);
      v20 = *(v0 + 496);
      v22 = *(v0 + 480);
      v23 = *(v0 + 424);

      v24 = *(v23 + 24);
      v25 = *(v23 + 32);
      v26 = OUTLINED_FUNCTION_55_7();
      __swift_project_boxed_opaque_existential_1(v26, v27);
      sub_2313677D0();
      if ((*(v21 + 88))(v20, v22) == *MEMORY[0x277D60AC0])
      {
        v28 = *(v0 + 496);
        (*(*(v0 + 488) + 96))(v28, *(v0 + 480));
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
        v30 = sub_2313681A0();
        OUTLINED_FUNCTION_46_0(v30);
        v32 = v31;
        v33 = *(v31 + 88);
        v34 = OUTLINED_FUNCTION_28();
        v36 = v35(v34);
        v37 = *(v0 + 496);
        if (v36 == *MEMORY[0x277D60DC0])
        {
          v38 = OUTLINED_FUNCTION_49_6();
          v39(v38);
          v40 = *(v32 + 96);
          v41 = OUTLINED_FUNCTION_37_8();
          v42(v41);
          v43 = sub_231368270();
          OUTLINED_FUNCTION_11(v43);
          (*(v44 + 8))(v37);
          v45 = sub_231368210();
          OUTLINED_FUNCTION_11(v45);
          (*(v46 + 8))(v28 + v29);
          goto LABEL_22;
        }

        v48 = sub_231368210();
        OUTLINED_FUNCTION_11(v48);
        (*(v49 + 8))(v28 + v29);
        v50 = *(v32 + 8);
        v51 = OUTLINED_FUNCTION_37_8();
        v52(v51);
      }

      else
      {
        v47 = *(v0 + 616);
        (*(v0 + 608))(*(v0 + 496), *(v0 + 480));
      }

      v53 = *(v0 + 616);
      v54 = *(v0 + 608);
      v83 = *(v0 + 592);
      v85 = *(v0 + 600);
      v81 = *(v0 + 672);
      v56 = *(v0 + 504);
      v55 = *(v0 + 512);
      v57 = *(v0 + 480);
      v58 = *(v0 + 424);
      v59 = v58[4];
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      sub_2313677D0();
      v83(v56, v81, v57);
      OUTLINED_FUNCTION_54_0();
      v60 = sub_231367C60();
      v54(v56, v57);
      v54(v55, v57);
      if ((v60 & 1) == 0)
      {
        v73 = swift_task_alloc();
        *(v0 + 656) = v73;
        *v73 = v0;
        v73[1] = sub_23126949C;
        v74 = *(v0 + 440);
        OUTLINED_FUNCTION_31();

        sub_23126B3E8(v75);
        return;
      }

      v61 = OUTLINED_FUNCTION_49_6();
      v62(v61);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
      v63 = *(v0 + 576);
      v64 = *(v0 + 568);
      v65 = *(v0 + 560);
      v66 = *(v0 + 552);
      v77 = *(v0 + 544);
      v78 = *(v0 + 520);
      v79 = *(v0 + 512);
      v80 = *(v0 + 504);
      v82 = *(v0 + 496);
      v84 = *(v0 + 472);
      v86 = *(v0 + 448);
      sub_231367580();
      v67 = sub_231369190();
      OUTLINED_FUNCTION_37_8();
      sub_231369180();

      v68 = *(v64 + 8);
      v69 = OUTLINED_FUNCTION_54_0();
      v70(v69);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    if (v7 >= *(v1 + 16))
    {
      break;
    }

    v11 = *i;
    v12 = *(*i + 16);
    v13 = *(v8 + 16);
    if (__OFADD__(v13, v12))
    {
      goto LABEL_29;
    }

    v14 = *i;
    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v8 + 24) >> 1)
    {
      sub_23126F3A0();
      v8 = v15;
    }

    if (*(v11 + 16))
    {
      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v12)
      {
        goto LABEL_31;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v12)
      {
        v16 = *(v8 + 16);
        v17 = __OFADD__(v16, v12);
        v18 = v16 + v12;
        if (v17)
        {
          goto LABEL_32;
        }

        *(v8 + 16) = v18;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_30;
      }
    }

    ++v7;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_23126949C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 656);
  v5 = *(v3 + 648);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 664) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_23126959C()
{
  v1 = OUTLINED_FUNCTION_49_6();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[63];
  v17 = v0[62];
  v18 = v0[59];
  v19 = v0[56];
  v20 = v0[83];
  sub_231367580();
  v8 = sub_231369190();
  OUTLINED_FUNCTION_37_8();
  sub_231369180();

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_54_0();
  v11(v10);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X2, X16 }
}

uint64_t static GenerationService.defaultShuffler(rng:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return OUTLINED_FUNCTION_28();
}

uint64_t sub_231269784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v20 = a8;
  v9 = a3[4];
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_33_8();
  v17 = v20(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v17;
}

uint64_t sub_2312698AC(uint64_t a1)
{
  v3[3] = MEMORY[0x277D846F8];
  v3[4] = MEMORY[0x277D84700];
  __swift_mutable_project_boxed_opaque_existential_1(v3, MEMORY[0x277D846F8]);
  sub_231369EE0();
  sub_23127030C();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return a1;
}

uint64_t sub_231269924(uint64_t a1, void (*a2)(uint64_t *__return_ptr))
{
  a2(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44020, &qword_231370ED8);
  sub_23121C788(&qword_27DD44028, &qword_27DD44020, &qword_231370ED8);
  v2 = sub_23136A120();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t GenerationService.description.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  v3 = sub_231367BB0();
  strcpy(v9, "generators:\n");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x23192A730](v3);

  sub_231369EE0();
  MEMORY[0x23192A730](10, 0xE100000000000000);

  sub_231369EE0();
  MEMORY[0x23192A730](0xD000000000000010, 0x800000023137E380);

  v4 = v9[0];
  v9[0] = *(v1 + 104);
  type metadata accessor for SuggestionPool();

  v5 = sub_231367E30();
  v7 = v6;

  sub_231369EE0();
  MEMORY[0x23192A730](v5, v7);

  return v4;
}

uint64_t sub_231269B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_231269B8C, 0, 0);
}

uint64_t sub_231269B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_26();
  v15 = v14[2];
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = *(MEMORY[0x277D60D88] + 4);
  v19 = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_69_4(v19);
  *v20 = v21;
  v20[1] = sub_231269C40;
  v22 = v14[4];
  v23 = v14[5];
  v24 = OUTLINED_FUNCTION_38_4(v14[3]);

  return MEMORY[0x2821C6CE8](v24, v25, v26, v16, v17, v27, v28, v29, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231269C40(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[7];
  v7 = *v1;
  *v5 = *v1;
  v4[8] = a1;

  v8 = swift_task_alloc();
  v4[9] = v8;
  *v8 = v7;
  v8[1] = sub_231269DB4;
  v9 = v3[6];
  v10 = v3[4];
  v11 = v3[3];

  return sub_231269EB8(a1, v11, v10);
}

uint64_t sub_231269DB4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 72);
  v5 = *(v3 + 64);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  OUTLINED_FUNCTION_14();

  return v8(v2);
}

uint64_t sub_231269EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0) - 8) + 64) + 15;
  v4[45] = swift_task_alloc();
  v6 = sub_231367F40();
  v4[46] = v6;
  v7 = *(v6 - 8);
  v4[47] = v7;
  v8 = *(v7 + 64) + 15;
  v4[48] = swift_task_alloc();
  v9 = sub_231369330();
  v4[49] = v9;
  v10 = *(v9 - 8);
  v4[50] = v10;
  v11 = *(v10 + 64) + 15;
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126A010, 0, 0);
}

uint64_t sub_23126A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v17 = *(v14 + 328);
  v18 = *(v17 + 16);
  *(v14 + 416) = v18;
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v20 = 0;
    *(v14 + 584) = *MEMORY[0x277D60D38];
    v21 = v19;
    while (1)
    {
      *(v14 + 440) = v19;
      *(v14 + 448) = v19;
      *(v14 + 424) = v20;
      *(v14 + 432) = v19;
      v22 = *(v14 + 360);
      sub_2311CF388(v17 + 40 * v20 + 32, v14 + 160);
      OUTLINED_FUNCTION_57_7();
      v23 = sub_2313676B0();
      if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
      {
        sub_2311D1F18(*(v14 + 360), &qword_27DD432D8, &unk_23136BED0);
      }

      else
      {
        OUTLINED_FUNCTION_75_2();
        OUTLINED_FUNCTION_26_0(v23);
        v25 = *(v24 + 8);
        v26 = OUTLINED_FUNCTION_55_7();
        v27(v26);
        v29 = *(v15 + 88);
        v28 = v15 + 88;
        v30 = OUTLINED_FUNCTION_40_8();
        if (v31(v30) == v16)
        {
          v54 = OUTLINED_FUNCTION_54_6();
          v55(v54);
          *(v14 + 456) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48) + 0x28);
          v56 = *(v28 + 32);
          v57 = OUTLINED_FUNCTION_28();
          v58(v57);
          v59 = *(v14 + 184);
          v60 = *(v14 + 192);
          OUTLINED_FUNCTION_11_12((v14 + 160));
          OUTLINED_FUNCTION_90();
          *(v14 + 464) = v61;
          *(v14 + 472) = v62;
          *(v14 + 480) = swift_getObjectType();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_10_16();
          OUTLINED_FUNCTION_7();

          return MEMORY[0x2822009F8](v63, v64, v65);
        }

        (*(*(v14 + 376) + 8))(*(v14 + 384), *(v14 + 368));
      }

      sub_2311CF388(v14 + 160, v14 + 200);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 320) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = *(v19 + 16);
        OUTLINED_FUNCTION_23();
        sub_23126F3A0();
        OUTLINED_FUNCTION_70_3(v40);
      }

      v33 = *(v19 + 24);
      if (*(v19 + 16) >= v33 >> 1)
      {
        OUTLINED_FUNCTION_53_6(v33);
        sub_23126F3A0();
        OUTLINED_FUNCTION_70_3(v41);
      }

      v34 = *(v14 + 232);
      __swift_mutable_project_boxed_opaque_existential_1(v14 + 200, *(v14 + 224));
      OUTLINED_FUNCTION_21();
      v36 = *(v35 + 64);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_64_4();
      v37();
      OUTLINED_FUNCTION_59_5();
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + 200));

      v38 = *(v14 + 416);
      v15 = *(v14 + 424) + 1;
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + 160));
      if (v15 == v38)
      {
        goto LABEL_14;
      }

      v20 = *(v14 + 424) + 1;
      v17 = *(v14 + 328);
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_14:
  *(v14 + 496) = v21;
  *(v14 + 504) = v21;
  v67 = OUTLINED_FUNCTION_58_4();
  v68 = v42 + *v42;
  v43 = v42[1];
  v44 = swift_task_alloc();
  *(v14 + 512) = v44;
  *v44 = v14;
  OUTLINED_FUNCTION_20_13(v44);
  OUTLINED_FUNCTION_7();

  return v50(v45, v46, v47, v48, v49, v50, v51, v52, a9, v67, v68, a12, a13, a14);
}

uint64_t sub_23126A3C0()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[51];
  sub_23126D748();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23126A42C()
{
  OUTLINED_FUNCTION_70_1();
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  sub_2311CF388(v0 + 160, v0 + 112);
  *(v0 + 152) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = *(v5 + 16);
    OUTLINED_FUNCTION_23();
    sub_23126E4AC();
    v5 = v52;
  }

  v6 = *(v5 + 16);
  if (v6 >= *(v5 + 24) >> 1)
  {
    sub_23126E4AC();
    v5 = v53;
  }

  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v5 + 16) = v6 + 1;
  v7 = (v5 + 48 * v6);
  v8 = *(v0 + 112);
  v9 = *(v0 + 144);
  v7[3] = *(v0 + 128);
  v7[4] = v9;
  v7[2] = v8;
  v10 = *(v0 + 440);
  for (i = *(v0 + 448); ; v10 = i)
  {
    v12 = *(v0 + 416);
    v13 = *(v0 + 424) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    if (v13 == v12)
    {
      break;
    }

    v14 = *(v0 + 424);
    *(v0 + 440) = v10;
    *(v0 + 448) = i;
    *(v0 + 424) = v14 + 1;
    *(v0 + 432) = v5;
    v15 = *(v0 + 360);
    sub_2311CF388(*(v0 + 328) + 40 * v14 + 72, v0 + 160);
    OUTLINED_FUNCTION_57_7();
    v16 = sub_2313676B0();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
    {
      sub_2311D1F18(*(v0 + 360), &qword_27DD432D8, &unk_23136BED0);
    }

    else
    {
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_26_0(v16);
      v18 = *(v17 + 8);
      v19 = OUTLINED_FUNCTION_55_7();
      v20(v19);
      v22 = *(v12 + 88);
      v21 = v12 + 88;
      v23 = OUTLINED_FUNCTION_40_8();
      if (v24(v23) == v1)
      {
        v39 = OUTLINED_FUNCTION_54_6();
        v40(v39);
        *(v0 + 456) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48) + 0x28);
        v41 = *(v21 + 32);
        v42 = OUTLINED_FUNCTION_28();
        v43(v42);
        v44 = *(v0 + 184);
        v45 = *(v0 + 192);
        OUTLINED_FUNCTION_11_12((v0 + 160));
        OUTLINED_FUNCTION_90();
        *(v0 + 464) = v46;
        *(v0 + 472) = v47;
        *(v0 + 480) = swift_getObjectType();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_36_0();
        v48 = OUTLINED_FUNCTION_10_16();

        return MEMORY[0x2822009F8](v48, v49, v50);
      }

      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    }

    sub_2311CF388(v0 + 160, v0 + 200);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 320) = i;
    if ((v25 & 1) == 0)
    {
      v31 = *(i + 16);
      OUTLINED_FUNCTION_23();
      sub_23126F3A0();
      OUTLINED_FUNCTION_70_3(v32);
    }

    v26 = *(i + 24);
    if (*(i + 16) >= v26 >> 1)
    {
      OUTLINED_FUNCTION_53_6(v26);
      sub_23126F3A0();
      OUTLINED_FUNCTION_70_3(v33);
    }

    v27 = *(v0 + 232);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 200, *(v0 + 224));
    OUTLINED_FUNCTION_21();
    v29 = *(v28 + 64);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_64_4();
    v30();
    OUTLINED_FUNCTION_59_5();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  }

  *(v0 + 496) = v10;
  *(v0 + 504) = i;
  OUTLINED_FUNCTION_58_4();
  v54 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  *(v0 + 512) = v36;
  *v36 = v0;
  v37 = OUTLINED_FUNCTION_20_13(v36);

  return v54(v37);
}

uint64_t sub_23126A884()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 512);
  v5 = *(v3 + 488);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 520) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23126A984()
{
  OUTLINED_FUNCTION_26();
  v4 = *(v0 + 520);
  v5 = *(v4 + 16);
  *(v0 + 528) = v5;
  v6 = *(v0 + 496);
  *(v0 + 536) = *(v0 + 504);
  if (v5)
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    sub_2311E66F0(v4 + 32, v0 + 64, &qword_27DD434E8, &unk_23136E480);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
  }

  *(v0 + 544) = v7;
  OUTLINED_FUNCTION_56_5();
  if (v8)
  {
    *(v0 + 552) = *(v0 + 56);
    sub_2311D38A8((v0 + 16), v0 + 240);
    v9 = *(v0 + 264);
    v10 = *(v0 + 272);
    OUTLINED_FUNCTION_11_12((v0 + 240));
    OUTLINED_FUNCTION_90();
    *(v0 + 560) = v11;
    *(v0 + 568) = v12;
    *(v0 + 576) = swift_getObjectType();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_36_0();
    v1 = OUTLINED_FUNCTION_10_16();

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_14();

  return v13(v6);
}

uint64_t sub_23126AAD0()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  sub_23126D870(*(v0 + 552));
  swift_unknownObjectRelease();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126AB40()
{
  v1 = *(v0 + 536);
  sub_2311CF388(v0 + 240, v0 + 280);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 320) = v1;
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = *(v3 + 16);
    OUTLINED_FUNCTION_44_8();
    sub_23126F3A0();
    v3 = v26;
    *(v0 + 320) = v26;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F3A0();
    v3 = v27;
    *(v0 + 320) = v27;
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v5);
  OUTLINED_FUNCTION_21();
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_43();
  (*(v9 + 16))(v12, v7, v5);
  sub_2312E6494(v4, v12, (v0 + 320), v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));

  v13 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  v16 = *(v0 + 544);
  *(v0 + 536) = v3;
  if (v16 == *(v0 + 528))
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    goto LABEL_10;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v17 = *(v0 + 520);
  if (v16 >= *(v17 + 16))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  sub_2311E66F0(v17 + 48 * v16++ + 32, v0 + 64, &qword_27DD434E8, &unk_23136E480);
LABEL_10:
  *(v0 + 544) = v16;
  OUTLINED_FUNCTION_56_5();
  if (v18)
  {
    *(v0 + 552) = *(v0 + 56);
    sub_2311D38A8((v0 + 16), v0 + 240);
    v19 = *(v0 + 264);
    v20 = *(v0 + 272);
    OUTLINED_FUNCTION_11_12((v0 + 240));
    OUTLINED_FUNCTION_90();
    *(v0 + 560) = v21;
    *(v0 + 568) = v22;
    *(v0 + 576) = swift_getObjectType();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_36_0();
    v13 = OUTLINED_FUNCTION_10_16();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_14();

  return v23(v3);
}

uint64_t sub_23126AE08(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369170();
  sub_2311CF388(a1, v22);
  v7 = sub_2313698A0();
  v8 = sub_23136A3B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    swift_getDynamicType();
    v11 = sub_23136AA70();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v14 = sub_2311CFD58(v11, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v7, v8, "Unable to generate candidates for %s due to timeout", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23192B930](v10, -1, -1);
    MEMORY[0x23192B930](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v17 = a1[4];
  v22[0] = DynamicType;
  v22[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v18 = sub_23136A010();
  *(v15 + 32) = MEMORY[0x277D84F90];
  *(v15 + 40) = v18;
  *(v15 + 48) = v19;
  *(v15 + 56) = 0x756F2064656D6954;
  *(v15 + 64) = 0xE900000000000074;
  return v15;
}

uint64_t sub_23126B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_23126B164;

  return sub_231269B64(a1, a3, a4, a5);
}

uint64_t sub_23126B164()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23126B24C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[6];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  v4 = *(v2 + 24);
  v5 = OUTLINED_FUNCTION_28();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  DynamicType = swift_getDynamicType();
  v8 = *(v2 + 32);
  v0[2] = DynamicType;
  v0[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v9 = sub_23136A010();
  *(v3 + 32) = v1;
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  *(v3 + 56) = 6369134;
  *(v3 + 64) = 0xE300000000000000;
  OUTLINED_FUNCTION_14();

  return v11(v3);
}

uint64_t sub_23126B344(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_23136D280;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x277D83B88];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 120) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = v4;
  *(v6 + 104) = v5;
  sub_231369EE0();
  sub_231369EE0();
  return v6;
}

uint64_t sub_23126B3E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126B4B4, 0, 0);
}

uint64_t sub_23126B4B4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_69_4(v2);
  *v3 = v4;
  v3[1] = sub_23126B55C;
  v5 = *(v0 + 24);
  v6 = OUTLINED_FUNCTION_38_4(*(v0 + 16));

  return sub_231267C48(v6, v7);
}

void sub_23126B55C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 72) = v3;

    MEMORY[0x2822009F8](sub_23126B684, 0, 0);
  }
}

uint64_t sub_23126B684()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[3];
  v2 = *(v1 + 160);
  v7 = (*(v1 + 152) + **(v1 + 152));
  v3 = *(*(v1 + 152) + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_23126B770;
  v5 = OUTLINED_FUNCTION_38_4(v0[9]);

  return v7(v5);
}

uint64_t sub_23126B770()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 72);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 88) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_23126B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[11];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[5];
    a9 = v14[6];
    v18 = v14[4];
    v45 = MEMORY[0x277D84F90];
    sub_2311F5B50(0, v16, 0);
    v19 = v45;
    v20 = type metadata accessor for GenerationService.DedupData();
    OUTLINED_FUNCTION_0(v20);
    v22 = v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v23 + 72);
    do
    {
      v25 = v14[6];
      v26 = (v25 + *(v18 + 48));
      sub_231270BA8(v22, v26);
      v27 = v26[1];
      *v25 = *v26;
      *(a9 + 8) = v27;
      a10 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      sub_231369EE0();
      if (v29 >= v28 >> 1)
      {
        sub_2311F5B50(v28 > 1, v29 + 1, 1);
      }

      v30 = v14[6];
      *(v19 + 16) = v29 + 1;
      sub_231270C70(v30, v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29);
      v22 += v24;
      --v16;
    }

    while (v16);
    v31 = v14[11];
  }

  else
  {
    v32 = v14[11];

    v19 = MEMORY[0x277D84F90];
  }

  v33 = v14[8];
  v34 = v14[6];
  v35 = sub_231267BB0(v19);
  sub_2312678D4(v35);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v38(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23126BA34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126BB08, 0, 0);
}

uint64_t sub_23126BB08()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_11_12(v1);
  OUTLINED_FUNCTION_90();
  v0[6] = v4;
  v0[7] = v5;
  v0[8] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v6 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23126BB88()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_23126C0B8();
  v6 = v5;
  swift_unknownObjectRelease();
  *(v0 + 72) = v4;
  *(v0 + 152) = v6;
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23126BC08()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_11_12(v1);
  OUTLINED_FUNCTION_90();
  v0[10] = v4;
  v0[11] = v5;
  v0[12] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v6 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23126BC88()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_23126C1F0(v0[5]);
  swift_unknownObjectRelease();
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_23126BD2C;
  v5 = v0[3];
  v6 = OUTLINED_FUNCTION_38_4(v0[2]);

  return sub_23126C33C(v6);
}

uint64_t sub_23126BD2C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;
  *(v1 + 120) = v6;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23126BE14()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_11_12(v1);
  OUTLINED_FUNCTION_90();
  v0[16] = v4;
  v0[17] = v5;
  v0[18] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v6 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23126BE94()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[4];
  sub_231369420();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23126BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v36 = *(v14 + 120);
  v35 = *(v14 + 112);
  HIDWORD(a10) = *(v14 + 152);
  v15 = *(v14 + 72);
  v17 = *(v14 + 32);
  v16 = *(v14 + 40);
  v18 = *(v14 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43460, &qword_23136C998);
  v19 = (type metadata accessor for GenerationService.DedupData() - 8);
  v20 = *(*v19 + 72);
  v21 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23136B670;
  v23 = v22 + v21;
  sub_2311CF388(v18, v22 + v21 + 16);
  sub_2311E66F0(v16, v22 + v21 + v19[9], &qword_27DD43F00, &unk_231375F50);
  sub_2311E66F0(v17, v22 + v21 + v19[10], &qword_27DD43F08, &qword_231370CD0);
  *v23 = v35;
  *(v23 + 8) = v36;
  *(v23 + 56) = v15;
  *(v23 + 64) = BYTE4(a10) & 1;
  v24 = OUTLINED_FUNCTION_55_7();
  sub_2311D1F18(v24, v25, &qword_231370CD0);
  sub_2311D1F18(v16, &qword_27DD43F00, &unk_231375F50);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, v36, a12, a13, a14);
}

uint64_t sub_23126C0B8()
{
  sub_231369380();
  v0 = v6;
  v1 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4[3] = v0;
  v4[4] = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v4);
  OUTLINED_FUNCTION_26_0(v0);
  (*(v2 + 16))();
  sub_231369430();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v5[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2311D1F18(v8, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_23126C1F0@<X0>(uint64_t a1@<X8>)
{
  sub_231369380();
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v10[3] = v2;
  v10[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v10);
  OUTLINED_FUNCTION_26_0(v2);
  (*(v4 + 16))();
  OUTLINED_FUNCTION_60_3();
  sub_231369430();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (v15)
  {
    sub_231369330();
    swift_dynamicCast();
    OUTLINED_FUNCTION_44_8();
  }

  else
  {
    sub_2311D1F18(v14, &qword_27DD443C0, &unk_23136E000);
    v8 = sub_231369330();
    v5 = a1;
    v6 = 1;
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_23126C33C(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E40, &qword_231370F50) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = sub_2313673A0();
  v1[6] = v3;
  v4 = *(v3 - 8);
  v1[7] = v4;
  v5 = *(v4 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126C440, 0, 0);
}

uint64_t sub_23126C440()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_28();
  v3 = sub_231368320();
  v0[10] = v3;
  v0[11] = v4;
  v0[2] = v3;
  v0[3] = v4;
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[12] = v6;
  v0[13] = v7;
  v0[14] = swift_getObjectType();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_36_0();
  v8 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_23126C500()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[5];
  sub_231369350();
  swift_unknownObjectRelease();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23126C56C()
{
  v1 = v0[5];
  v2 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2311D1F18(v1, &qword_27DD43E40, &qword_231370F50);
  }

  else
  {
    v3 = v0[8];
    v4 = v0[7];
    (*(v4 + 32))(v0[9], v1, v2);
    v5 = *(v4 + 16);
    v6 = OUTLINED_FUNCTION_37_8();
    v7(v6);
    v8 = (*(v4 + 88))(v3, v2);
    v9 = v0[8];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    if (v8 == *MEMORY[0x277D60878])
    {
      v13 = v0 + 2;
      v14 = v0 + 3;
      v15 = *(v12 + 96);
      v16 = OUTLINED_FUNCTION_28();
      v17(v16);
      v18 = v9[1];
      if (v18)
      {
        v19 = *v9;
      }

      else
      {
        v19 = 0x3E6C696E3CLL;
      }

      if (v18)
      {
        v20 = v9[1];
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      MEMORY[0x23192A730](v19, v20);

      MEMORY[0x23192A730](95, 0xE100000000000000);

      v21 = *(v12 + 8);
      v22 = OUTLINED_FUNCTION_37_8();
      v23(v22);
      goto LABEL_13;
    }

    v24 = *(v12 + 8);
    v25 = OUTLINED_FUNCTION_37_8();
    v24(v25);
    v26 = OUTLINED_FUNCTION_28();
    v24(v26);
  }

  v14 = v0 + 11;
  v13 = v0 + 10;
LABEL_13:
  v27 = *v13;
  v28 = *v14;
  v30 = v0[8];
  v29 = v0[9];
  v31 = v0[5];

  v32 = v0[1];
  v33 = OUTLINED_FUNCTION_27();

  return v34(v33);
}

uint64_t sub_23126C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerationService.DedupData();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v161 = &v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v160 = &v151 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v158 = &v151 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v159 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v156 = &v151 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v151 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v157 = &v151 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v155 = &v151 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v151 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v154 = &v151 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v152 = &v151 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v151 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v153 = &v151 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v151 - v38;
  MEMORY[0x28223BE20](v37);
  v41 = (&v151 - v40);
  v42 = sub_2313698C0();
  v43 = *(v42 - 8);
  v162 = v42;
  v163 = v43;
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v151 - v49;
  MEMORY[0x28223BE20](v48);
  v55 = *(a1 + 64);
  if (*(a2 + 64))
  {
    v56 = v53;
    v57 = v52;
    sub_231270BA8(a1, a3);
    if (v55)
    {
      sub_231369170();
      v58 = v158;
      sub_231270BA8(a1, v158);
      v59 = v160;
      sub_231270BA8(a3, v160);
      v60 = v161;
      sub_231270BA8(a2, v161);
      v61 = sub_2313698A0();
      v62 = sub_23136A390();
      if (!os_log_type_enabled(v61, v62))
      {

        sub_231270CE0(v60);
        sub_231270CE0(v59);
        (*(v163 + 8))(v57, v162);
        return sub_231270CE0(v58);
      }

      v63 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v164 = v159;
      *v63 = 136315650;
      v64 = v58;
      v65 = *(v58 + 40);
      v66 = *(v58 + 48);
      __swift_project_boxed_opaque_existential_1((v64 + 16), v65);
      v67 = sub_231368320();
      v69 = v68;
      sub_231270CE0(v64);
      v70 = sub_2311CFD58(v67, v69, &v164);

      *(v63 + 4) = v70;
      *(v63 + 12) = 2080;
      v71 = sub_23126D46C(v59);
      v73 = v72;
      sub_231270CE0(v59);
      v74 = sub_2311CFD58(v71, v73, &v164);

      *(v63 + 14) = v74;
      *(v63 + 22) = 2080;
      v75 = sub_23126D46C(v60);
      v77 = v76;
      sub_231270CE0(v60);
      v78 = sub_2311CFD58(v75, v77, &v164);

      *(v63 + 24) = v78;
      _os_log_impl(&dword_2311CB000, v61, v62, "Dedupping suggestion with id: %s.\nBecause no relevance scores are set, the complete process is non deterministic.\nUsing the suggestion from instance %s and removing %s", v63, 0x20u);
      v79 = v159;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v79, -1, -1);
      v80 = v63;
      goto LABEL_10;
    }

    v57 = v56;
    sub_231369170();
    sub_231270BA8(a3, v20);
    v99 = v156;
    sub_231270BA8(a3, v156);
    v100 = v159;
    sub_231270BA8(a2, v159);
    v61 = sub_2313698A0();
    v101 = sub_23136A390();
    if (os_log_type_enabled(v61, v101))
    {
      v102 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v164 = v161;
      *v102 = 136315650;
      v103 = *v20;
      v104 = v20[1];
      sub_231369EE0();
      sub_231270CE0(v20);
      v105 = sub_2311CFD58(v103, v104, &v164);

      *(v102 + 4) = v105;
      *(v102 + 12) = 2080;
      v106 = sub_23126D46C(v99);
      v108 = v107;
      sub_231270CE0(v99);
      v109 = sub_2311CFD58(v106, v108, &v164);

      *(v102 + 14) = v109;
      *(v102 + 22) = 2080;
      v110 = sub_23126D46C(v100);
      v112 = v111;
      sub_231270CE0(v100);
      v113 = sub_2311CFD58(v110, v112, &v164);

      *(v102 + 24) = v113;
      _os_log_impl(&dword_2311CB000, v61, v101, "Dedupping suggestion with id: %s using the suggestion with the set relevance score from instance %s and removing %s. This takes priority", v102, 0x20u);
      v114 = v161;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v114, -1, -1);
      v80 = v102;
LABEL_10:
      MEMORY[0x23192B930](v80, -1, -1);

      return (*(v163 + 8))(v57, v162);
    }

    sub_231270CE0(v100);
    sub_231270CE0(v99);
    v132 = v20;
LABEL_21:
    sub_231270CE0(v132);
    return (*(v163 + 8))(v57, v162);
  }

  if (*(a1 + 64))
  {
    v81 = v54;
    sub_231270BA8(a2, a3);
    sub_231369170();
    sub_231270BA8(a3, v27);
    v82 = v155;
    sub_231270BA8(a3, v155);
    v83 = v157;
    sub_231270BA8(a1, v157);
    v84 = sub_2313698A0();
    v85 = sub_23136A390();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v164 = v161;
      *v86 = 136315650;
      v87 = *v27;
      v88 = v27[1];
      sub_231369EE0();
      sub_231270CE0(v27);
      v89 = sub_2311CFD58(v87, v88, &v164);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2080;
      v90 = sub_23126D46C(v82);
      v92 = v91;
      sub_231270CE0(v82);
      v93 = sub_2311CFD58(v90, v92, &v164);

      *(v86 + 14) = v93;
      *(v86 + 22) = 2080;
      v94 = sub_23126D46C(v83);
      v96 = v95;
      sub_231270CE0(v83);
      v97 = sub_2311CFD58(v94, v96, &v164);

      *(v86 + 24) = v97;
      _os_log_impl(&dword_2311CB000, v84, v85, "Dedupping suggestion with id: %s using the suggestion with the set relevance score from instance %s and removing %s. This takes priority", v86, 0x20u);
      v98 = v161;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v98, -1, -1);
      MEMORY[0x23192B930](v86, -1, -1);
    }

    else
    {

      sub_231270CE0(v83);
      sub_231270CE0(v82);
      sub_231270CE0(v27);
    }

    return (*(v163 + 8))(v81, v162);
  }

  else
  {
    if (*(a2 + 56) < *(a1 + 56))
    {
      v57 = &v151 - v51;
      sub_231270BA8(a1, a3);
      sub_231369170();
      sub_231270BA8(a3, v41);
      sub_231270BA8(a3, v39);
      v115 = v153;
      sub_231270BA8(a2, v153);
      v116 = sub_2313698A0();
      v117 = sub_23136A390();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v164 = v161;
        *v118 = 136315650;
        v119 = *v41;
        v120 = v41[1];
        sub_231369EE0();
        sub_231270CE0(v41);
        v121 = sub_2311CFD58(v119, v120, &v164);

        *(v118 + 4) = v121;
        *(v118 + 12) = 2080;
        v122 = sub_23126D46C(v39);
        v124 = v123;
        sub_231270CE0(v39);
        v125 = sub_2311CFD58(v122, v124, &v164);

        *(v118 + 14) = v125;
        *(v118 + 22) = 2080;
        v126 = sub_23126D46C(v115);
        v128 = v127;
        sub_231270CE0(v115);
        v129 = sub_2311CFD58(v126, v128, &v164);

        *(v118 + 24) = v129;
        _os_log_impl(&dword_2311CB000, v116, v117, "Dedupping suggestion with id: %s using the higher relevance from instance: %s. over the not so relevant instance in %s", v118, 0x20u);
        v130 = v161;
        swift_arrayDestroy();
        MEMORY[0x23192B930](v130, -1, -1);
        MEMORY[0x23192B930](v118, -1, -1);

        return (*(v163 + 8))(v57, v162);
      }

      sub_231270CE0(v115);
      sub_231270CE0(v39);
      v132 = v41;
      goto LABEL_21;
    }

    sub_231270BA8(a2, a3);
    sub_231369170();
    sub_231270BA8(a3, v34);
    v133 = v152;
    sub_231270BA8(a3, v152);
    v134 = a1;
    v135 = v154;
    sub_231270BA8(v134, v154);
    v136 = sub_2313698A0();
    v137 = sub_23136A390();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      v164 = v161;
      *v138 = 136315650;
      v139 = *v34;
      v140 = v34[1];
      sub_231369EE0();
      sub_231270CE0(v34);
      v141 = sub_2311CFD58(v139, v140, &v164);

      *(v138 + 4) = v141;
      *(v138 + 12) = 2080;
      v142 = sub_23126D46C(v133);
      v144 = v143;
      sub_231270CE0(v133);
      v145 = sub_2311CFD58(v142, v144, &v164);

      *(v138 + 14) = v145;
      *(v138 + 22) = 2080;
      v146 = sub_23126D46C(v135);
      v148 = v147;
      sub_231270CE0(v135);
      v149 = sub_2311CFD58(v146, v148, &v164);

      *(v138 + 24) = v149;
      _os_log_impl(&dword_2311CB000, v136, v137, "Dedupping suggestion with id: %s using the higher relevance from instance: %s. over the not so relevant instance in %s", v138, 0x20u);
      v150 = v161;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v150, -1, -1);
      MEMORY[0x23192B930](v138, -1, -1);
    }

    else
    {

      sub_231270CE0(v135);
      sub_231270CE0(v133);
      sub_231270CE0(v34);
    }

    return (*(v163 + 8))(v50, v162);
  }
}

uint64_t sub_23126D46C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  MEMORY[0x23192A730](*a1, *(a1 + 8));
  MEMORY[0x23192A730](35, 0xE100000000000000);
  v10 = type metadata accessor for GenerationService.DedupData();
  sub_2311E66F0(a1 + *(v10 + 28), v9, &qword_27DD43F00, &unk_231375F50);
  v11 = sub_231369330();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    sub_2311D1F18(v9, &qword_27DD43F00, &unk_231375F50);
    v12 = 0xE100000000000000;
    v13 = 45;
  }

  else
  {
    v13 = sub_231369300();
    v12 = v14;
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  MEMORY[0x23192A730](v13, v12);

  MEMORY[0x23192A730](64, 0xE100000000000000);
  sub_2311E66F0(a1 + *(v10 + 32), v5, &qword_27DD43F08, &qword_231370CD0);
  v15 = sub_231367960();
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
  {
    sub_2311D1F18(v5, &qword_27DD43F08, &qword_231370CD0);
    v16 = 0xE300000000000000;
    v17 = 4271950;
  }

  else
  {
    v17 = sub_231367930();
    v16 = v18;
    (*(*(v15 - 8) + 8))(v5, v15);
  }

  MEMORY[0x23192A730](v17, v16);

  MEMORY[0x23192A730](40, 0xE100000000000000);
  v19 = *(a1 + 56);
  *(a1 + 64);
  sub_23136A300();
  MEMORY[0x23192A730](41, 0xE100000000000000);
  return v21[0];
}

uint64_t sub_23126D748()
{
  sub_231369380();
  v0 = v9;
  v1 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7[3] = v0;
  v7[4] = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_26_0(v0);
  (*(v2 + 16))();
  v3 = sub_231369330();
  v6[3] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_26_0(v3);
  (*(v4 + 16))();
  OUTLINED_FUNCTION_60_3();
  sub_231369450();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_23126D870(double a1)
{
  sub_231369380();
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7[3] = v2;
  v7[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_26_0(v2);
  (*(v4 + 16))();
  v6[3] = MEMORY[0x277D839F8];
  *v6 = a1;
  sub_231369450();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t *GenerationService.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  v3 = v0[20];

  return v0;
}

uint64_t GenerationService.__deallocating_deinit()
{
  GenerationService.deinit();

  return swift_deallocClassInstance();
}

void sub_23126DA88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = a6(0);
  OUTLINED_FUNCTION_46_0(v16);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_23126FA74(a4 + v18, v14, v15 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126DB78()
{
  OUTLINED_FUNCTION_20_1();
  if (v5)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_46_10(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F90, &qword_231370D60);
    v9 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_13();
    *(v9 + 2) = v3;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_23126DC90()
{
  OUTLINED_FUNCTION_20_1();
  if (v5)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_3(v6);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
    v9 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_13();
    *(v9 + 2) = v2;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126DE48()
{
  OUTLINED_FUNCTION_20_1();
  if (v7)
  {
    OUTLINED_FUNCTION_1_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_12_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C8, &unk_231370DC0);
    v11 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_8_13();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_54_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D0, &qword_23136CA10);
    OUTLINED_FUNCTION_7_11();
  }
}

void sub_23126DF88()
{
  OUTLINED_FUNCTION_20_1();
  if (v5)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F78, &qword_231370E08);
    v3 = 24;
    v9 = OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_1_21(v9);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_67_3();
      v13 = OUTLINED_FUNCTION_54_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F80, &qword_231370E10);
    OUTLINED_FUNCTION_7_11();
  }
}

void sub_23126E060()
{
  OUTLINED_FUNCTION_20_1();
  if (v5)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_8_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F88, &qword_231370E18);
    v3 = 24;
    v9 = OUTLINED_FUNCTION_37_1();
    OUTLINED_FUNCTION_1_21(v9);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v11)
    {
      v12 = v10 > v3;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      OUTLINED_FUNCTION_67_3();
      v13 = OUTLINED_FUNCTION_54_0();
      memmove(v13, v14, v15);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F90, &qword_231370E20);
    OUTLINED_FUNCTION_7_11();
  }
}

void sub_23126E1B8()
{
  OUTLINED_FUNCTION_20_1();
  if (v7)
  {
    OUTLINED_FUNCTION_1_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_12_1();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_8_3(v8);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD8, &qword_231370E80);
    v11 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_8_13();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_54_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
    OUTLINED_FUNCTION_7_11();
  }
}

void sub_23126E3C8()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_66_3();
  if (v6)
  {
    OUTLINED_FUNCTION_1_0();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_49_0(v4, v5, v6, v7, v8, v9);
    v15 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_61_3();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_40_8();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_40_8();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_64_1();
}