uint64_t sub_21D6604C4(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_21D82E300(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_21DBF6D7C() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_21D65F968(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_21D660684(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v177 = a4;
  v176 = a1;
  v7 = sub_21DBF6D7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v179 = &v173 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v192 = &v173 - v11;
  MEMORY[0x28223BE20](v12);
  v201 = &v173 - v13;
  MEMORY[0x28223BE20](v14);
  v199 = &v173 - v15;
  MEMORY[0x28223BE20](v16);
  v190 = &v173 - v17;
  MEMORY[0x28223BE20](v18);
  v187 = &v173 - v19;
  MEMORY[0x28223BE20](v20);
  v175 = &v173 - v21;
  MEMORY[0x28223BE20](v22);
  v174 = &v173 - v23;
  v204 = MEMORY[0x277D84F90];
  v186 = a3;
  v24 = a3[1];
  if (v24 >= 1)
  {
    v200 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    v197 = v8 + 16;
    v198 = (v8 + 8);
    v195 = (v8 + 32);
    swift_retain_n();
    v25 = 0;
    v184 = MEMORY[0x277D84F90];
    v191 = a5;
    v185 = v8;
    v181 = v7;
    while (1)
    {
      v178 = v25;
      if (v25 + 1 >= v24)
      {
        v39 = v25 + 1;
        v62 = v177;
        goto LABEL_58;
      }

      v188 = v24;
      v26 = *v186;
      v27 = *(v8 + 72);
      v28 = *v186 + v27 * (v25 + 1);
      v29 = *(v8 + 16);
      v30 = v174;
      v29(v174, v28, v7);
      v196 = v26;
      v31 = &v26[v27 * v25];
      v32 = v175;
      v183 = v29;
      v29(v175, v31, v7);
      v33 = v189;
      LODWORD(v194) = sub_21D65DB08(v30, v32, a5);
      v189 = v33;
      if (v33)
      {
        v172 = *v198;
        (*v198)(v32, v7);
        (v172)(v30, v7);
        goto LABEL_159;
      }

      v34 = *v198;
      (*v198)(v32, v7);
      v182 = v34;
      (v34)(v30, v7);
      swift_beginAccess();
      v35 = v25 + 2;
      v36 = &v196[v27 * v35];
      v193 = v27;
      while (1)
      {
        v39 = v188;
        if (v188 == v35)
        {
          break;
        }

        v40 = v183;
        v183(v187, v36, v7);
        v40(v190, v28, v7);
        v41 = sub_21DBF6D5C();
        v42 = v41;
        v43 = *(a5 + v200);
        if ((v43 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v44 = sub_21DBFC2CC();
          if (!v44)
          {
            goto LABEL_20;
          }

          v202 = v44;
          sub_21D0D8CF0(0, &qword_27CE58DA8);
          swift_dynamicCast();
          v45 = v203;
        }

        else
        {
          if (!*(v43 + 16))
          {

            goto LABEL_22;
          }

          sub_21DBF8E0C();
          v46 = sub_21D17E07C(v42);
          if ((v47 & 1) == 0)
          {
LABEL_20:

            goto LABEL_22;
          }

          v45 = *(*(v43 + 56) + 8 * v46);
        }

        if (v45)
        {
          v48 = [v45 title];

          if (v48)
          {
            v196 = sub_21DBFA16C();
            v50 = v49;

            goto LABEL_23;
          }
        }

LABEL_22:
        v196 = 0;
        v50 = 0xE000000000000000;
LABEL_23:
        v51 = sub_21DBF6D5C();
        v52 = v51;
        v53 = *(a5 + v200);
        if ((v53 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v54 = sub_21DBFC2CC();
          if (v54)
          {
            v202 = v54;
            sub_21D0D8CF0(0, &qword_27CE58DA8);
            swift_dynamicCast();
            v55 = v203;
LABEL_29:

            if (v55)
            {
              v58 = [v55 title];

              if (v58)
              {
                v59 = sub_21DBFA16C();
                v61 = v60;
              }

              else
              {
                v59 = 0;
                v61 = 0xE000000000000000;
              }

              a5 = v191;
            }

            else
            {
              v59 = 0;
              v61 = 0xE000000000000000;
            }

            v27 = v193;
            goto LABEL_39;
          }
        }

        else
        {
          if (!*(v53 + 16))
          {

            goto LABEL_35;
          }

          sub_21DBF8E0C();
          v56 = sub_21D17E07C(v52);
          if (v57)
          {
            v55 = *(*(v53 + 56) + 8 * v56);
            goto LABEL_29;
          }
        }

LABEL_35:
        v59 = 0;
        v61 = 0xE000000000000000;
LABEL_39:
        if (v196 == v59 && v50 == v61)
        {
          v37 = 0;
        }

        else
        {
          v37 = sub_21DBFC64C();
        }

        v38 = v182;
        (v182)(v190, v7);
        v38(v187, v7);
        ++v35;
        v36 += v27;
        v28 += v27;
        if ((v194 ^ v37))
        {
          v39 = v35 - 1;
          break;
        }
      }

      v62 = v177;
      v8 = v185;
      v25 = v178;
      if ((v194 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (v39 < v178)
      {
        break;
      }

      if (v178 < v39)
      {
        v63 = v39;
        v64 = v27 * (v39 - 1);
        v65 = v39 * v27;
        v188 = v39;
        v66 = v178;
        v67 = v178 * v27;
        do
        {
          if (v66 != --v63)
          {
            v68 = *v186;
            if (!*v186)
            {
              goto LABEL_183;
            }

            v69 = *v195;
            (*v195)(v179, &v68[v67], v7);
            if (v67 < v64 || &v68[v67] >= &v68[v65])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v67 != v64)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v69(&v68[v64], v179, v7);
            v62 = v177;
            v25 = v178;
          }

          ++v66;
          v64 -= v193;
          v65 -= v193;
          v67 += v193;
        }

        while (v66 < v63);
        a5 = v191;
        v8 = v185;
        v39 = v188;
      }

LABEL_58:
      v70 = v186[1];
      if (v39 >= v70)
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v39, v25))
      {
        goto LABEL_177;
      }

      if (v39 - v25 >= v62)
      {
LABEL_67:
        v72 = v39;
        goto LABEL_68;
      }

      if (__OFADD__(v25, v62))
      {
        goto LABEL_178;
      }

      if (v25 + v62 >= v70)
      {
        v71 = v186[1];
      }

      else
      {
        v71 = v25 + v62;
      }

      if (v71 < v25)
      {
LABEL_179:
        __break(1u);
        break;
      }

      if (v39 == v71)
      {
        goto LABEL_67;
      }

      v194 = *v186;
      v135 = v39 - 1;
      v136 = (v25 - v39);
      v180 = v71;
      while (2)
      {
        swift_beginAccess();
        v138 = *(v8 + 72);
        v196 = *(v8 + 16);
        v183 = v135;
        v139 = &v194[v138 * v135];
        v193 = -v138;
        v188 = v39;
        v140 = &v194[v138 * v39];
        v182 = v136;
        while (2)
        {
          v141 = v196;
          (v196)(v199, v140, v7);
          (v141)(v201, v139, v7);
          v142 = sub_21DBF6D5C();
          v143 = v142;
          v144 = *(a5 + v200);
          if ((v144 & 0xC000000000000001) == 0)
          {
            if (!*(v144 + 16))
            {

              goto LABEL_132;
            }

            sub_21DBF8E0C();
            v147 = sub_21D17E07C(v143);
            if (v148)
            {
              v146 = *(*(v144 + 56) + 8 * v147);
              goto LABEL_127;
            }

LABEL_130:

            goto LABEL_132;
          }

          sub_21DBF8E0C();
          v145 = sub_21DBFC2CC();
          if (!v145)
          {
            goto LABEL_130;
          }

          v202 = v145;
          sub_21D0D8CF0(0, &qword_27CE58DA8);
          swift_dynamicCast();
          v146 = v203;
LABEL_127:

          if (v146)
          {
            v149 = [v146 title];

            if (v149)
            {
              v150 = sub_21DBFA16C();
              v152 = v151;

              goto LABEL_133;
            }
          }

LABEL_132:
          v150 = 0;
          v152 = 0xE000000000000000;
LABEL_133:
          v153 = sub_21DBF6D5C();
          v154 = v153;
          v155 = *(a5 + v200);
          if ((v155 & 0xC000000000000001) == 0)
          {
            if (*(v155 + 16))
            {
              sub_21DBF8E0C();
              v158 = sub_21D17E07C(v154);
              if (v159)
              {
                v157 = *(*(v155 + 56) + 8 * v158);
                goto LABEL_139;
              }

LABEL_142:
            }

            else
            {
            }

            v163 = 0xE000000000000000;
            if (v150)
            {
              goto LABEL_149;
            }

            break;
          }

          sub_21DBF8E0C();
          v156 = sub_21DBFC2CC();
          if (!v156)
          {
            goto LABEL_142;
          }

          v202 = v156;
          sub_21D0D8CF0(0, &qword_27CE58DA8);
          swift_dynamicCast();
          v157 = v203;
LABEL_139:

          if (v157 && (v160 = [v157 title], v157, v160))
          {
            v161 = sub_21DBFA16C();
            v163 = v162;

            v164 = v161;
          }

          else
          {
            v164 = 0;
            v163 = 0xE000000000000000;
          }

          a5 = v191;
          if (v150 != v164)
          {
LABEL_149:
            v165 = sub_21DBFC64C();

            v166 = *v198;
            (*v198)(v201, v7);
            (v166)(v199, v7);
            if ((v165 & 1) == 0)
            {
              goto LABEL_119;
            }

            if (!v194)
            {
              goto LABEL_181;
            }

            v167 = *v195;
            v168 = v192;
            (*v195)(v192, v140, v7);
            swift_arrayInitWithTakeFrontToBack();
            v167(v139, v168, v7);
            v139 += v193;
            v140 += v193;
            if (__CFADD__(v136++, 1))
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        if (v152 != v163)
        {
          goto LABEL_149;
        }

        v137 = *v198;
        (*v198)(v201, v7);
        (v137)(v199, v7);
LABEL_119:
        v39 = v188 + 1;
        v135 = v183 + 1;
        v136 = v182 - 1;
        v72 = v180;
        v8 = v185;
        if (v188 + 1 != v180)
        {
          continue;
        }

        break;
      }

      v25 = v178;
LABEL_68:
      v73 = v184;
      if (v72 < v25)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v180 = v72;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v73 = sub_21D210B90(0, *(v73 + 2) + 1, 1, v73);
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      v77 = v76 + 1;
      if (v76 >= v75 >> 1)
      {
        v73 = sub_21D210B90((v75 > 1), v76 + 1, 1, v73);
      }

      *(v73 + 2) = v77;
      v78 = v73 + 32;
      v79 = &v73[16 * v76 + 32];
      v80 = v180;
      *v79 = v25;
      *(v79 + 1) = v80;
      v204 = v73;
      v196 = *v176;
      if (!v196)
      {
        goto LABEL_184;
      }

      v184 = v73;
      if (v76)
      {
        while (1)
        {
          v81 = v77 - 1;
          if (v77 >= 4)
          {
            break;
          }

          if (v77 == 3)
          {
            v82 = *(v73 + 4);
            v83 = *(v73 + 5);
            v92 = __OFSUB__(v83, v82);
            v84 = v83 - v82;
            v85 = v92;
LABEL_88:
            if (v85)
            {
              goto LABEL_167;
            }

            v98 = &v73[16 * v77];
            v100 = *v98;
            v99 = *(v98 + 1);
            v101 = __OFSUB__(v99, v100);
            v102 = v99 - v100;
            v103 = v101;
            if (v101)
            {
              goto LABEL_170;
            }

            v104 = &v78[16 * v81];
            v106 = *v104;
            v105 = *(v104 + 1);
            v92 = __OFSUB__(v105, v106);
            v107 = v105 - v106;
            if (v92)
            {
              goto LABEL_173;
            }

            if (__OFADD__(v102, v107))
            {
              goto LABEL_174;
            }

            if (v102 + v107 >= v84)
            {
              if (v84 < v107)
              {
                v81 = v77 - 2;
              }

              goto LABEL_109;
            }

            goto LABEL_102;
          }

          v108 = &v73[16 * v77];
          v110 = *v108;
          v109 = *(v108 + 1);
          v92 = __OFSUB__(v109, v110);
          v102 = v109 - v110;
          v103 = v92;
LABEL_102:
          if (v103)
          {
            goto LABEL_169;
          }

          v111 = &v78[16 * v81];
          v113 = *v111;
          v112 = *(v111 + 1);
          v92 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v92)
          {
            goto LABEL_172;
          }

          if (v114 < v102)
          {
            goto LABEL_3;
          }

LABEL_109:
          if (v81 - 1 >= v77)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
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
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v119 = *v186;
          if (!*v186)
          {
            goto LABEL_182;
          }

          v120 = &v78[16 * v81 - 16];
          v121 = *v120;
          v122 = v78;
          v123 = v81;
          v124 = &v78[16 * v81];
          v125 = *(v124 + 1);
          v126 = *(v8 + 72);
          v127 = &v119[v126 * *v120];
          v128 = &v119[v126 * *v124];
          v129 = &v119[v126 * v125];
          v130 = v191;

          v131 = v127;
          v132 = v189;
          sub_21D65F968(v131, v128, v129, v196, v130);

          v189 = v132;
          if (v132)
          {
            v204 = v184;
            goto LABEL_159;
          }

          v73 = v184;
          if (v125 < v121)
          {
            goto LABEL_162;
          }

          v133 = *(v184 + 2);
          if (v123 > v133)
          {
            goto LABEL_163;
          }

          *v120 = v121;
          *(v120 + 1) = v125;
          if (v123 >= v133)
          {
            goto LABEL_164;
          }

          v77 = v133 - 1;
          memmove(v124, v124 + 16, 16 * (v133 - 1 - v123));
          *(v73 + 2) = v133 - 1;
          v134 = v133 > 2;
          v8 = v185;
          v78 = v122;
          v7 = v181;
          if (!v134)
          {
LABEL_3:
            v204 = v73;
            goto LABEL_4;
          }
        }

        v86 = &v78[16 * v77];
        v87 = *(v86 - 8);
        v88 = *(v86 - 7);
        v92 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        if (v92)
        {
          goto LABEL_165;
        }

        v91 = *(v86 - 6);
        v90 = *(v86 - 5);
        v92 = __OFSUB__(v90, v91);
        v84 = v90 - v91;
        v85 = v92;
        if (v92)
        {
          goto LABEL_166;
        }

        v93 = &v73[16 * v77];
        v95 = *v93;
        v94 = *(v93 + 1);
        v92 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v92)
        {
          goto LABEL_168;
        }

        v92 = __OFADD__(v84, v96);
        v97 = v84 + v96;
        if (v92)
        {
          goto LABEL_171;
        }

        if (v97 >= v89)
        {
          v115 = &v78[16 * v81];
          v117 = *v115;
          v116 = *(v115 + 1);
          v92 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v92)
          {
            goto LABEL_175;
          }

          if (v84 < v118)
          {
            v81 = v77 - 2;
          }

          goto LABEL_109;
        }

        goto LABEL_88;
      }

LABEL_4:
      v24 = v186[1];
      v25 = v180;
      a5 = v191;
      if (v180 >= v24)
      {
        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_181:

    __break(1u);
LABEL_182:

    __break(1u);
LABEL_183:

    __break(1u);
LABEL_184:

    __break(1u);
    goto LABEL_185;
  }

  swift_retain_n();
LABEL_157:
  v170 = *v176;
  if (!*v176)
  {
LABEL_185:

    __break(1u);
    return result;
  }

  sub_21D6604C4(&v204, v170, v186, a5);

LABEL_159:
}

void sub_21D661718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_21DBF6D7C();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v53 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v54 = a2;
  if (a3 != a2)
  {
    v66 = *a4;
    v68 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    v62 = (v55 + 8);
    v63 = v55 + 16;
    v59 = a5;
    v60 = (v55 + 32);
    v17 = a3 - 1;
    v18 = a1 - a3;
    v64 = &v53 - v15;
LABEL_6:
    swift_beginAccess();
    v20 = *(v55 + 72);
    v67 = *(v55 + 16);
    v57 = v17;
    v58 = a3;
    v21 = (v66 + v20 * v17);
    v65 = -v20;
    v22 = v66 + v20 * a3;
    v56 = v18;
    v23 = v18;
    while (1)
    {
      v24 = v67;
      v67(v16, v22, v10);
      v24(v69, v21, v10);
      v25 = sub_21DBF6D5C();
      v26 = v25;
      v27 = *(a5 + v68);
      if ((v27 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v28 = sub_21DBFC2CC();
        if (!v28)
        {
          goto LABEL_16;
        }

        v70 = v28;
        sub_21D0D8CF0(0, &qword_27CE58DA8);
        swift_dynamicCast();
        v29 = v71;
      }

      else
      {
        if (!*(v27 + 16))
        {

          goto LABEL_18;
        }

        sub_21DBF8E0C();
        v30 = sub_21D17E07C(v26);
        if ((v31 & 1) == 0)
        {
LABEL_16:

          goto LABEL_18;
        }

        v29 = *(*(v27 + 56) + 8 * v30);
      }

      if (v29)
      {
        v32 = [v29 title];

        if (v32)
        {
          v33 = sub_21DBFA16C();
          v35 = v34;

          goto LABEL_19;
        }
      }

LABEL_18:
      v33 = 0;
      v35 = 0xE000000000000000;
LABEL_19:
      v36 = sub_21DBF6D5C();
      v37 = v36;
      v38 = *(a5 + v68);
      if ((v38 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v39 = sub_21DBFC2CC();
        if (v39)
        {
          v70 = v39;
          sub_21D0D8CF0(0, &qword_27CE58DA8);
          swift_dynamicCast();
          v40 = v71;
LABEL_25:

          if (v40 && (v43 = [v40 title], v40, v43))
          {
            v44 = sub_21DBFA16C();
            v46 = v45;

            v47 = v44;
          }

          else
          {
            v47 = 0;
            v46 = 0xE000000000000000;
          }

          a5 = v59;
          if (v33 != v47)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_28:

        goto LABEL_33;
      }

      if (*(v38 + 16))
      {
        sub_21DBF8E0C();
        v41 = sub_21D17E07C(v37);
        if (v42)
        {
          v40 = *(*(v38 + 56) + 8 * v41);
          goto LABEL_25;
        }

        goto LABEL_28;
      }

LABEL_33:
      v46 = 0xE000000000000000;
      if (v33)
      {
        goto LABEL_35;
      }

LABEL_34:
      if (v35 == v46)
      {

        v19 = *v62;
        (*v62)(v69, v10);
        v16 = v64;
        v19(v64, v10);
LABEL_5:
        a3 = v58 + 1;
        v17 = v57 + 1;
        v18 = v56 - 1;
        if (v58 + 1 == v54)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_35:
      v48 = sub_21DBFC64C();

      v49 = *v62;
      (*v62)(v69, v10);
      v16 = v64;
      v49(v64, v10);
      if ((v48 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v66)
      {
        __break(1u);
        return;
      }

      v50 = v61;
      v51 = *v60;
      (*v60)(v61, v22, v10);
      swift_arrayInitWithTakeFrontToBack();
      v51(v21, v50, v10);
      v21 += v65;
      v22 += v65;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

uint64_t sub_21D661C90(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_21DBFC59C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21DBF6D7C();
        v8 = sub_21DBFA69C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_21DBF6D7C() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_21D660684(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
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

    sub_21D661718(0, v4, 1, a1, a2);
  }
}

uint64_t sub_21D661E14(void **a1, uint64_t a2)
{
  v4 = *(sub_21DBF6D7C() - 8);
  v5 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_21D82E468(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_21D661C90(v8, a2);

  *a1 = v5;
}

unint64_t sub_21D661EFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_21D993FEC(&v42);
  sub_21DBF8E0C();

  v7 = sub_21DA5E950();
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  v10 = v8;
  v11 = *a5;
  result = sub_21D17E07C(v7);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_21D21AB08(v17, a4 & 1);
    result = sub_21D17E07C(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880);
    result = sub_21DBFC70C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_21D223488();
    result = v24;
    v20 = *a5;
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  v20 = *a5;
  if (v18)
  {
LABEL_8:
    v21 = result;

    v22 = v20[7];
    v23 = *(v22 + 8 * v21);
    *(v22 + 8 * v21) = v10;

    goto LABEL_12;
  }

LABEL_10:
  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = v9;
  *(v20[7] + 8 * result) = v10;
  v25 = v20[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v16)
  {
    v20[2] = v26;
LABEL_12:
    v27 = sub_21DA5E950();
    if (v27)
    {
      v9 = v27;
      v10 = v28;
      v18 = 1;
      do
      {
        v33 = *a5;
        result = sub_21D17E07C(v9);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v16 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v16)
        {
          goto LABEL_23;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_21D21AB08(v37, 1);
          result = sub_21D17E07C(v9);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_5;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = v39[7];
          v31 = *(v30 + 8 * v29);
          *(v30 + 8 * v29) = v10;
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          *(v39[6] + 8 * result) = v9;
          *(v39[7] + 8 * result) = v10;
          v40 = v39[2];
          v16 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v39[2] = v41;
        }

        v9 = sub_21DA5E950();
        v10 = v32;
      }

      while (v9);
    }

LABEL_22:
    sub_21D0CFAF8();
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_21D662198(void *a1)
{
  if (qword_27CE56B50 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5F6B0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowSearchResultDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSearchResultDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D662680()
{
  result = sub_21DBF70DC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D6627BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D66282C()
{
  result = qword_280D17808;
  if (!qword_280D17808)
  {
    sub_21DBFB0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D17808);
  }

  return result;
}

uint64_t IndexSet.nsRangeView.getter()
{
  v0 = sub_21DBF5B4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
  v4 = swift_allocBox();
  sub_21DBF5B6C();
  sub_21DBF5B3C();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21D24B41C;
  *(v5 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160);
  result = swift_allocObject();
  *(result + 16) = v5;
  return result;
}

uint64_t IndexSet.init<A>(ranges:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  sub_21DBF5B8C();
  (*(v4 + 16))(v6, a1, a2);
  sub_21DBFA40C();
  swift_getAssociatedConformanceWitness();
  sub_21DBFBAFC();
  if (v16)
  {
LABEL_5:
    (*(v4 + 8))(a1, a2);
    return (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  else
  {
    result = v14;
    v12 = v15;
    while (v12 + result >= result)
    {
      sub_21DBF5ADC();
      sub_21DBFBAFC();
      result = v14;
      v12 = v15;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D662C60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
  v3 = swift_projectBox();
  swift_beginAccess();
  v4 = *(v2 + 36);
  sub_21DBF5B4C();
  sub_21D662D94();
  sub_21DBFACAC();
  v5 = *(v3 + v4);
  v6 = v13[0];
  if (v5 == v13[0])
  {
    result = swift_endAccess();
    v8 = 0;
    v9 = 0;
LABEL_4:
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v5 == v6;
    return result;
  }

  v10 = sub_21DBFAD3C();
  v8 = *v11;
  v12 = v11[1];
  v10(v13, 0);
  sub_21DBFACBC();
  result = swift_endAccess();
  v9 = v12 - v8;
  if (!__OFSUB__(v12, v8))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D662D94()
{
  result = qword_280D1B838;
  if (!qword_280D1B838)
  {
    sub_21DBF5B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1B838);
  }

  return result;
}

uint64_t NSUserActivity.ttrDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = &v116 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v116 - v7;
  v8 = sub_21DBF6C1C();
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v116 - v11;
  v13 = sub_21DBF54CC();
  v122 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v118 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v116 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D10;
  strcpy(v129, "title: ");
  v129[1] = 0xE700000000000000;
  v18 = [v0 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_21DBFA16C();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x223D42AA0](v20, v22);

  v23 = v129[1];
  *(v17 + 32) = v129[0];
  *(v17 + 40) = v23;
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v129[0] = 0xD000000000000016;
  v129[1] = 0x800000021DC65FE0;
  v24 = [v1 isEligibleForHandoff];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x223D42AA0](v26, v27);

  v28 = v129[1];
  *(v17 + 48) = v129[0];
  *(v17 + 56) = v28;
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v129, "userInfo: ");
  BYTE3(v129[1]) = 0;
  HIDWORD(v129[1]) = -369098752;
  v29 = [v1 userInfo];
  if (v29)
  {
    v30 = v29;
    v31 = sub_21DBF9E6C();

    v32 = *(v31 + 16);
  }

  else
  {
    v32 = 0;
  }

  v127 = v32;
  v33 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v33);

  MEMORY[0x223D42AA0](0x29732879656B20, 0xE700000000000000);
  v34 = v129[1];
  *(v17 + 64) = v129[0];
  *(v17 + 72) = v34;
  v35 = [v1 activityType];
  v36 = sub_21DBFA16C();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  TTRUserActivityType.init(activityType:)(v39);
  v40 = v129[0];
  if (LOBYTE(v129[0]) == 2)
  {
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    strcpy(v129, "activityType: ");
    HIBYTE(v129[1]) = -18;
    v41 = [v1 activityType];
    v42 = sub_21DBFA16C();
    v44 = v43;

    MEMORY[0x223D42AA0](v42, v44);
  }

  else
  {
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0xD000000000000015;
    v129[1] = 0x800000021DC66040;
    if (v40)
    {
      v45 = 1953720684;
    }

    else
    {
      v45 = 0xD000000000000016;
    }

    if (v40)
    {
      v46 = 0xE400000000000000;
    }

    else
    {
      v46 = 0x800000021DC66060;
    }

    MEMORY[0x223D42AA0](v45, v46);
  }

  v47 = v129[0];
  v48 = v129[1];
  v50 = *(v17 + 16);
  v49 = *(v17 + 24);
  if (v50 >= v49 >> 1)
  {
    v17 = sub_21D210A84((v49 > 1), v50 + 1, 1, v17);
  }

  *(v17 + 16) = v50 + 1;
  v51 = v17 + 16 * v50;
  *(v51 + 32) = v47;
  *(v51 + 40) = v48;
  v52 = sub_21D6657D4();
  if (v52)
  {
    v53 = v52;
    strcpy(v129, "objectID: ");
    BYTE3(v129[1]) = 0;
    HIDWORD(v129[1]) = -369098752;
    v54 = [v52 description];
    v55 = sub_21DBFA16C();
    v57 = v56;

    MEMORY[0x223D42AA0](v55, v57);

    v58 = v129[0];
    v59 = v129[1];
    v61 = *(v17 + 16);
    v60 = *(v17 + 24);
    if (v61 >= v60 >> 1)
    {
      v17 = sub_21D210A84((v60 > 1), v61 + 1, 1, v17);
    }

    *(v17 + 16) = v61 + 1;
    v62 = v17 + 16 * v61;
    *(v62 + 32) = v58;
    *(v62 + 40) = v59;
  }

  sub_21D668E7C(2u, v12);
  v63 = v122;
  if ((v122[6])(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE5EA20);
  }

  else
  {
    v64 = v117;
    v63[4](v117, v12, v13);
    v65 = v118;
    v63[2](v118, v64, v13);
    TTRCrossDeviceIdentifier.init(url:)(v65, v129);
    (v63[1])(v64, v13);
    v66 = v134;
    if (v134 != 255)
    {
      v67 = v129[0];
      v68 = v129[1];
      v70 = v130;
      v69 = v131;
      v72 = v132;
      v71 = v133;
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_21DBFBEEC();

      v127 = 0x76654473736F7263;
      v128 = 0xEF203A4449656369;
      v122 = v67;
      v129[0] = v67;
      v129[1] = v68;
      v117 = v71;
      v118 = v68;
      v130 = v70;
      v131 = v69;
      v132 = v72;
      v133 = v71;
      v134 = v66 & 1;
      v73 = TTRCrossDeviceIdentifier.description.getter();
      MEMORY[0x223D42AA0](v73);

      v74 = v127;
      v75 = v128;
      v77 = *(v17 + 16);
      v76 = *(v17 + 24);
      if (v77 >= v76 >> 1)
      {
        v17 = sub_21D210A84((v76 > 1), v77 + 1, 1, v17);
      }

      sub_21D66A604(v122, v118, v70, v69, v72, v117, v66);
      *(v17 + 16) = v77 + 1;
      v78 = v17 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v75;
    }
  }

  v79 = sub_21D6690E4(3u);
  v81 = v126;
  v82 = v123;
  if (v80)
  {
    sub_21D6644D0(v79, v80, v129);
    v83 = v129[0];
    if (LOBYTE(v129[0]) != 7)
    {
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000019, 0x800000021DC66020);
      LOBYTE(v127) = v83;
      sub_21DBFC14C();
      v84 = v129[0];
      v85 = v129[1];
      v87 = *(v17 + 16);
      v86 = *(v17 + 24);
      if (v87 >= v86 >> 1)
      {
        v17 = sub_21D210A84((v86 > 1), v87 + 1, 1, v17);
      }

      *(v17 + 16) = v87 + 1;
      v88 = v17 + 16 * v87;
      *(v88 + 32) = v84;
      *(v88 + 40) = v85;
    }
  }

  v89 = sub_21D6690E4(4u);
  if (v90)
  {
    strcpy(v129, "searchTerm: ");
    BYTE5(v129[1]) = 0;
    HIWORD(v129[1]) = -5120;
    MEMORY[0x223D42AA0](v89);

    v91 = v129[0];
    v92 = v129[1];
    v94 = *(v17 + 16);
    v93 = *(v17 + 24);
    if (v94 >= v93 >> 1)
    {
      v17 = sub_21D210A84((v93 > 1), v94 + 1, 1, v17);
    }

    *(v17 + 16) = v94 + 1;
    v95 = v17 + 16 * v94;
    *(v95 + 32) = v91;
    *(v95 + 40) = v92;
  }

  sub_21D6690E4(5u);
  if (v96)
  {
    sub_21DBF6B9C();
    v98 = v120;
    v97 = v121;
    (*(v120 + 56))(v82, 0, 1, v121);
    (*(v98 + 32))(v116, v82, v97);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0x4C67617468736168;
    v129[1] = 0xEF203A736C656261;
    sub_21D679D54(&qword_27CE5F788, MEMORY[0x277D453A0]);
    v99 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v99);

    v100 = v129[0];
    v101 = v129[1];
    v103 = *(v17 + 16);
    v102 = *(v17 + 24);
    if (v103 >= v102 >> 1)
    {
      v17 = sub_21D210A84((v102 > 1), v103 + 1, 1, v17);
    }

    (*(v120 + 8))(v116, v121);
    *(v17 + 16) = v103 + 1;
    v104 = v17 + 16 * v103;
    *(v104 + 32) = v100;
    *(v104 + 40) = v101;
  }

  sub_21D665994(v81);
  if ((*(v124 + 48))(v81, 1, v125) == 1)
  {
    sub_21D0CF7E0(v81, &qword_27CE5FB90);
  }

  else
  {
    v105 = v119;
    sub_21D66A70C(v81, v119, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0xD000000000000015;
    v129[1] = 0x800000021DC66000;
    v106 = TTRRemindersListViewModel.ItemID.description.getter();
    MEMORY[0x223D42AA0](v106);

    v107 = v129[0];
    v108 = v129[1];
    v110 = *(v17 + 16);
    v109 = *(v17 + 24);
    if (v110 >= v109 >> 1)
    {
      v17 = sub_21D210A84((v109 > 1), v110 + 1, 1, v17);
    }

    sub_21D66A63C(v105, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v17 + 16) = v110 + 1;
    v111 = v17 + 16 * v110;
    *(v111 + 32) = v107;
    *(v111 + 40) = v108;
  }

  v129[0] = 123;
  v129[1] = 0xE100000000000000;
  v127 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v112 = sub_21DBFA07C();
  v114 = v113;

  MEMORY[0x223D42AA0](v112, v114);

  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return v129[0];
}

uint64_t sub_21D663B4C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F768);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F768);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersUICore::TTRUserActivityType_optional __swiftcall TTRUserActivityType.init(activityType:)(Swift::String activityType)
{
  object = activityType._object;
  countAndFlagsBits = activityType._countAndFlagsBits;
  v4 = v1;
  v5 = byte_282EA7290;
  if (byte_282EA7290)
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v7 = qword_280D19F88;
    v6 = *algn_280D19F90;
    sub_21DBF8E0C();

    v21 = v7;
    v23 = v6;
    v8 = 0x746976697463612ELL;
    v9 = 0xEE007473696C2E79;
  }

  else
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_280D19F88;
    v10 = *algn_280D19F90;
    sub_21DBF8E0C();

    v21 = v11;
    v23 = v10;
    v9 = 0x800000021DC66080;
    v8 = 0xD000000000000020;
  }

  MEMORY[0x223D42AA0](v8, v9);
  if (v21 == countAndFlagsBits && v23 == object)
  {
    goto LABEL_10;
  }

  v12 = sub_21DBFC64C();

  if (v12)
  {
    goto LABEL_12;
  }

  v5 = byte_282EA7291;
  if (byte_282EA7291)
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v15 = qword_280D19F88;
    v14 = *algn_280D19F90;
    sub_21DBF8E0C();

    v22 = v15;
    v24 = v14;
    v16 = 0x746976697463612ELL;
    v17 = 0xEE007473696C2E79;
  }

  else
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v19 = qword_280D19F88;
    v18 = *algn_280D19F90;
    sub_21DBF8E0C();

    v22 = v19;
    v24 = v18;
    v17 = 0x800000021DC66080;
    v16 = 0xD000000000000020;
  }

  MEMORY[0x223D42AA0](v16, v17);
  if (v22 == countAndFlagsBits && v24 == object)
  {
LABEL_10:
  }

  else
  {
    v20 = sub_21DBFC64C();

    if ((v20 & 1) == 0)
    {

      v5 = 2;
      goto LABEL_13;
    }
  }

LABEL_12:

LABEL_13:
  *v4 = v5;
  return result;
}

uint64_t TTRUserActivityType.description.getter()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t TTRUserActivityType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D664014()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_21D66404C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (*v0 <= 4u)
  {
    if (v1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (v1 == 5)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_21:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t sub_21D6644D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 0x6E696D65526C6C61 && a2 == 0xEC00000073726564 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0x64656E6769737361 && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x6E756F4669726973 && a2 == 0xEF737070416E4964 || (sub_21DBFC64C() & 1) != 0)
  {

    v8 = 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    v8 = 6;
  }

  else
  {
    v9 = sub_21DBFC64C();

    if (v9)
    {
      v8 = 6;
    }

    else
    {
      v8 = 7;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21D664738(void *a1)
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v9 = qword_280D19F88;
  v10 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v2 = [a1 activityType];
  v3 = sub_21DBFA16C();
  v5 = v4;

  if (v9 == v3 && v10 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBFC64C();
  }

  return v7 & 1;
}

uint64_t sub_21D664864(void *a1)
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v9 = qword_280D19F88;
  v10 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v2 = [a1 activityType];
  v3 = sub_21DBFA16C();
  v5 = v4;

  if (v9 == v3 && v10 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBFC64C();
  }

  return v7 & 1;
}

uint64_t TTRUserActivityWindowSceneRestorationPayload.State.firstVisibleItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_21D66A774(v2, v6, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 8))(v6, v12);
    }

    else
    {
      sub_21D66A63C(v6, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    }

    v13 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v11 = &unk_27CE5F790;
    }

    else
    {

      v11 = &unk_27CE5F798;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v11);
    sub_21D66A69C(v6 + *(v15 + 48), v9);
    return sub_21D66A69C(v9, a1);
  }
}

uint64_t TTRUserActivityWindowSceneRestorationPayload.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D66A774(v2, v6, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v25 = *(v6 + 1);
      *a1 = *v6;
      *(a1 + 1) = v25;
      v26 = *MEMORY[0x277D450F0];
      v27 = sub_21DBF663C();
      (*(*(v27 - 8) + 104))(a1, v26, v27);
      v17 = MEMORY[0x277D45210];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v14 = sub_21DBF6C1C();
      (*(*(v14 - 8) + 32))(a1, v6, v14);
      v15 = *MEMORY[0x277D45100];
      v16 = sub_21DBF664C();
      (*(*(v16 - 8) + 104))(a1, v15, v16);
      v17 = MEMORY[0x277D45218];
    }

    else
    {
      v33 = *v6;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
      *a1 = v33;
      v35 = *MEMORY[0x277D45180];
      v36 = sub_21DBF66BC();
      (*(*(v36 - 8) + 104))(&a1[v34], v35, v36);
      v37 = *MEMORY[0x277D45168];
      v38 = sub_21DBF66DC();
      (*(*(v38 - 8) + 104))(&a1[v34], v37, v38);
      v17 = MEMORY[0x277D45248];
    }

    v39 = *v17;
    v40 = sub_21DBF66FC();
    return (*(*(v40 - 8) + 104))(a1, v39, v40);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *v6;
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *a1 = v18;
      v20 = *MEMORY[0x277D45140];
      v21 = sub_21DBF668C();
      (*(*(v21 - 8) + 104))(&a1[v19], v20, v21);
      v13 = MEMORY[0x277D451F8];
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v8 = *v6;
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *a1 = v8;
      v11 = *MEMORY[0x277D45140];
      v12 = sub_21DBF668C();
      (*(*(v12 - 8) + 104))(&a1[v10], v11, v12);
      v13 = MEMORY[0x277D451D8];
LABEL_9:
      v22 = *v13;
      v23 = sub_21DBF66FC();
      (*(*(v23 - 8) + 104))(a1, v22, v23);
      return sub_21D0CF7E0(&v6[v9], &qword_27CE5FB90);
    }

    v28 = *v6;
    v29 = *MEMORY[0x277D45128];
    v30 = sub_21DBF667C();
    (*(*(v30 - 8) + 104))(a1, v29, v30);
    v31 = sub_21DBF66FC();
    (*(*(v31 - 8) + 104))(a1, **(&unk_27832E470 + v28), v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790);
    return sub_21D0CF7E0(&v6[*(v32 + 48)], &qword_27CE5FB90);
  }
}

uint64_t sub_21D6650FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_21D664738(a1) & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v14 = sub_21D6657D4();
  if (v14)
  {
    v15 = v14;
    v57 = a2;
    v16 = [v14 entityName];
    v17 = sub_21DBFA16C();
    v19 = v18;

    v20 = [objc_opt_self() cdEntityName];
    v21 = sub_21DBFA16C();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {
      goto LABEL_5;
    }

    v31 = sub_21DBFC64C();

    a2 = v57;
    if (v31)
    {
      goto LABEL_11;
    }

    v34 = [v15 entityName];
    v35 = sub_21DBFA16C();
    v37 = v36;

    v38 = [objc_opt_self() cdEntityName];
    v39 = sub_21DBFA16C();
    v41 = v40;

    if (v35 == v39 && v37 == v41)
    {
LABEL_5:

      a2 = v57;
LABEL_11:
      sub_21D665994(v10);

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      *v13 = v15;
      sub_21D66A69C(v10, v13 + v32);
      goto LABEL_12;
    }

    v46 = sub_21DBFC64C();

    a2 = v57;
    if (v46)
    {
      goto LABEL_11;
    }

    v47 = [v15 entityName];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v51 = [objc_opt_self() cdEntityName];
    v52 = sub_21DBFA16C();
    v54 = v53;

    if (v48 == v52 && v50 == v54)
    {

LABEL_27:
      *v13 = v15;
      goto LABEL_12;
    }

    v55 = sub_21DBFC64C();

    if (v55)
    {
      goto LABEL_27;
    }

LABEL_20:
    v33 = 1;
    goto LABEL_21;
  }

  v24 = sub_21D6690E4(3u);
  if (v25)
  {
    sub_21D6644D0(v24, v25, &v58);
    v26 = v58;
    if (v58 != 7)
    {
      sub_21D665994(v10);

      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
      *v13 = v26;
      sub_21D66A69C(v10, v13 + v42);
      goto LABEL_12;
    }
  }

  v27 = sub_21D6690E4(4u);
  if (!v28)
  {
    sub_21D6690E4(5u);
    if (v43)
    {
      sub_21DBF6B9C();

      (*(v5 + 32))(v13, v7, v4);
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v29 = v27;
  v30 = v28;

  *v13 = v29;
  v13[1] = v30;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_21D66A70C(v13, a2, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  v33 = 0;
LABEL_21:
  v44 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  return (*(*(v44 - 8) + 56))(a2, v33, 1, v44);
}

id sub_21D6657D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D668E7C(0, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21D0CF7E0(v2, &qword_27CE5EA20);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_21DBF53FC();
    v8 = [objc_opt_self() objectIDWithURL_];

    (*(v4 + 8))(v6, v3);
    result = v8;
    if (v8)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D665994@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5.n128_f64[0] = sub_21D669314(6u, &v12);
  v6 = *(&v12 + 1);
  if (*(&v12 + 1) >> 60 == 15)
  {
    v7 = *(v11 + 56);

    return v7(a1, 1, 1, v2, v5);
  }

  else
  {
    v9 = v12;
    sub_21DBF521C();
    swift_allocObject();
    sub_21D1BAF70(v9, v6);
    sub_21DBF520C();
    sub_21D679D54(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBF51EC();
    sub_21D1BAF38(v9, v6);

    sub_21D1BAF38(v9, v6);
    sub_21D66A70C(v4, a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return (*(v11 + 56))(a1, 0, 1, v2);
  }
}

Swift::Void __swiftcall TTRUserActivityWindowSceneRestorationPayload.update(_:)(NSUserActivity a1)
{
  v39[0] = sub_21DBF6C1C();
  v3 = *(v39[0] - 8);
  MEMORY[0x28223BE20](v39[0]);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v39 - v16;
  v18 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v18);
  v20 = (v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39[1] = a1.super.isa;
  if (sub_21D664738(a1.super.isa))
  {
    sub_21D66A774(v1, v20, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21D66A0E4(*v20, v20[1], 4u);

        return;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v22 = v39[0];
        (*(v3 + 32))(v5, v20, v39[0]);
        v23 = sub_21DBF6BAC();
        sub_21D66A0E4(v23, v38, 5u);

        (*(v3 + 8))(v5, v22);
        return;
      }

      v35 = *v20;
      v36 = [v35 urlRepresentation];
      sub_21DBF546C();

      v37 = sub_21DBF54CC();
      (*(*(v37 - 8) + 56))(v8, 0, 1, v37);
      sub_21D669548(v8, 0);

      v30 = &qword_27CE5EA20;
      v29 = v8;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v24 = *v20;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798);
      sub_21D66A69C(v20 + *(v25 + 48), v17);
      v26 = v24;
      v27 = [v26 urlRepresentation];
      sub_21DBF546C();

      v28 = sub_21DBF54CC();
      (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
      sub_21D669548(v8, 0);

      sub_21D0CF7E0(v8, &qword_27CE5EA20);
      sub_21D0D3954(v17, v14, &qword_27CE5FB90);
      sub_21D6664F4(v14);

      v29 = v17;
      v30 = &qword_27CE5FB90;
LABEL_25:
      sub_21D0CF7E0(v29, v30);
      return;
    }

    v31 = *v20;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790);
    sub_21D66A69C(v20 + *(v32 + 48), v11);
    if (v31 <= 2)
    {
      if (!v31)
      {
        v33 = 0xE500000000000000;
        v34 = 0x7961646F74;
        goto LABEL_24;
      }

      if (v31 != 1)
      {
        v33 = 0xEC00000073726564;
        v34 = 0x6E696D65526C6C61;
        goto LABEL_24;
      }

      v34 = 0x656C756465686373;
    }

    else
    {
      if (v31 <= 4)
      {
        if (v31 == 3)
        {
          v33 = 0xE700000000000000;
          v34 = 0x64656767616C66;
        }

        else
        {
          v33 = 0xE800000000000000;
          v34 = 0x64656E6769737361;
        }

        goto LABEL_24;
      }

      if (v31 == 5)
      {
        v33 = 0xEF737070416E4964;
        v34 = 0x6E756F4669726973;
LABEL_24:
        sub_21D66A0E4(v34, v33, 3u);

        sub_21D0D3954(v11, v17, &qword_27CE5FB90);
        sub_21D6664F4(v17);
        v29 = v11;
        v30 = &qword_27CE5FB90;
        goto LABEL_25;
      }

      v34 = 0x6574656C706D6F63;
    }

    v33 = 0xE900000000000064;
    goto LABEL_24;
  }
}

uint64_t sub_21D6664F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  sub_21D0D3954(a1, v11 - v4, &qword_27CE5FB90);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5FB90);
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    sub_21DBF525C();
    swift_allocObject();
    sub_21DBF524C();
    sub_21D679D54(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v7 = sub_21DBF522C();
    v8 = v9;

    sub_21D66A63C(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  sub_21D669BB4(v7, v8, 6u);
  sub_21D1BAF38(v7, v8);
  return sub_21D0CF7E0(a1, &qword_27CE5FB90);
}

uint64_t TTRUserActivityListPayload.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D66A774(v2, v6, type metadata accessor for TTRUserActivityListPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v12 = *v6;
    if (EnumCaseMultiPayload)
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      v27 = [v12 objectID];

      *a1 = v27;
      v28 = *MEMORY[0x277D45140];
      v29 = sub_21DBF668C();
      (*(*(v29 - 8) + 104))(&a1[v26], v28, v29);
      v11 = MEMORY[0x277D451D8];
    }

    else
    {
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      v14 = [v12 objectID];

      *a1 = v14;
      v15 = *MEMORY[0x277D45140];
      v16 = sub_21DBF668C();
      (*(*(v16 - 8) + 104))(&a1[v13], v15, v16);
      v11 = MEMORY[0x277D451F8];
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v8 = v6[1];
      *a1 = *v6;
      *(a1 + 1) = v8;
      v9 = *MEMORY[0x277D450F0];
      v10 = sub_21DBF663C();
      (*(*(v10 - 8) + 104))(a1, v9, v10);
      v11 = MEMORY[0x277D45210];
    }

    else
    {
      v23 = sub_21DBF6C1C();
      (*(*(v23 - 8) + 32))(a1, v6, v23);
      v24 = *MEMORY[0x277D45100];
      v25 = sub_21DBF664C();
      (*(*(v25 - 8) + 104))(a1, v24, v25);
      v11 = MEMORY[0x277D45218];
    }

LABEL_13:
    v30 = *v11;
    v20 = sub_21DBF66FC();
    v21 = *(*(v20 - 8) + 104);
    v31 = a1;
    v32 = v30;
    return v21(v31, v32, v20);
  }

  v17 = *v6;
  v18 = *MEMORY[0x277D45128];
  v19 = sub_21DBF667C();
  (*(*(v19 - 8) + 104))(a1, v18, v19);
  v20 = sub_21DBF66FC();
  v21 = *(*(v20 - 8) + 104);
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v22 = MEMORY[0x277D45258];
      }

      else
      {
        v22 = MEMORY[0x277D451C8];
      }
    }

    else
    {
      v22 = MEMORY[0x277D45208];
    }
  }

  else if (v17 > 4)
  {
    if (v17 == 5)
    {
      v22 = MEMORY[0x277D451E0];
    }

    else
    {
      v22 = MEMORY[0x277D45250];
    }
  }

  else if (v17 == 3)
  {
    v22 = MEMORY[0x277D45228];
  }

  else
  {
    v22 = MEMORY[0x277D45240];
  }

  v32 = *v22;
  v31 = a1;
  return v21(v31, v32, v20);
}

uint64_t sub_21D666D48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v60 = sub_21DBF6C1C();
  v59 = *(v60 - 1);
  MEMORY[0x28223BE20](v60);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57[-v9];
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v57[-v16];
  v62 = type metadata accessor for TTRUserActivityListPayload.State(0);
  MEMORY[0x28223BE20](v62);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_21D664864(a1))
  {
    v61 = a3;
    v58 = a1;
    sub_21D668E7C(2u, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5EA20);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      (*(v12 + 16))(v14, v17, v11);
      TTRCrossDeviceIdentifier.init(url:)(v14, v63);
      (*(v12 + 8))(v17, v11);
      v21 = v64;
      if (v64 != 255)
      {
        v23 = v63[0];
        v22 = v63[1];
        v24 = v63[2];
        v25 = v63[3];
        v26 = v63[4];
        v60 = v63[5];
        v64 &= 1u;
        v53 = REMStore.fetchList(with:)(v63);

        sub_21D66A604(v23, v22, v24, v25, v26, v60, v21);
        if (v53)
        {
          *v19 = v53;
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    v27 = a2;
    v28 = v58;
    v29 = sub_21D6657D4();
    if (!v29)
    {
      v34 = sub_21D6690E4(3u);
      if (v35)
      {
        sub_21D6644D0(v34, v35, v63);
        v36 = v63[0];
        if (LOBYTE(v63[0]) != 7)
        {

          *v19 = v36;
          goto LABEL_21;
        }
      }

      v37 = sub_21D6690E4(4u);
      if (v38)
      {
        v39 = v37;
        v40 = v38;

        *v19 = v39;
        v19[1] = v40;
        goto LABEL_21;
      }

      sub_21D6690E4(5u);
      if (v54)
      {
        sub_21DBF6B9C();
        a3 = v61;

        (*(v59 + 32))(v19, v7, v60);
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    v30 = v29;
    v63[0] = 0;
    v31 = [v27 fetchCustomSmartListWithObjectID:v29 error:v63];
    if (v31)
    {
      v32 = v31;
      v33 = v63[0];

      *v19 = v32;
LABEL_21:
      a3 = v61;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      sub_21D66A70C(v19, a3, type metadata accessor for TTRUserActivityListPayload.State);
      v20 = 0;
      goto LABEL_29;
    }

    v41 = v63[0];
    v42 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56B60 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF84BC();
    __swift_project_value_buffer(v43, qword_27CE5F768);
    v44 = v42;
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v28;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_21DBFC74C();
      v52 = sub_21D0CDFB4(v50, v51, v63);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_21D0C9000, v45, v46, "Cannot fetch list {error: %s}", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x223D46520](v49, -1, -1);
      MEMORY[0x223D46520](v48, -1, -1);

LABEL_27:
      goto LABEL_28;
    }

LABEL_28:
    v20 = 1;
    a3 = v61;
    goto LABEL_29;
  }

  v20 = 1;
LABEL_29:
  v55 = type metadata accessor for TTRUserActivityListPayload(0);
  return (*(*(v55 - 8) + 56))(a3, v20, 1, v55);
}

Swift::Void __swiftcall TTRUserActivityListPayload.update(_:)(NSUserActivity a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v13 = type metadata accessor for TTRUserActivityListPayload.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21D664864(a1.super.isa))
  {
    sub_21D66A774(v1, v15, type metadata accessor for TTRUserActivityListPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v17 = *v15;
        v29 = [v17 objectID];
        v30 = v29;
        if (v29)
        {
          v31 = [v29 urlRepresentation];
          sub_21DBF546C();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        v40 = sub_21DBF54CC();
        (*(*(v40 - 8) + 56))(v9, v32, 1, v40);
        sub_21D669548(v9, 0);

        sub_21D0CF7E0(v9, &qword_27CE5EA20);
        v41 = [v17 customContext];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 name];

          if (!v43)
          {
            sub_21DBFA16C();
            v43 = sub_21DBFA12C();
          }
        }

        else
        {
          v43 = 0;
        }

        [(objc_class *)a1.super.isa setTitle:v43];

        [(objc_class *)a1.super.isa setEligibleForHandoff:1];
      }

      else
      {
        v17 = *v15;
        REMList.crossDeviceIdentifier.getter(&v46);
        v19 = v46;
        v18 = v47;
        v21 = v48;
        v20 = v49;
        v23 = v50;
        v22 = v51;
        if (v52)
        {
          v24 = [v46 urlRepresentation];
          sub_21DBF546C();
          sub_21D1078C0(v19, v18, v21, v20, v23, v22, 1);
        }

        else
        {
          v45[0] = v46;
          v45[1] = v47;
          v45[2] = v48;
          v45[3] = v49;
          v45[4] = v50;
          v45[5] = v51;
          TTRCrossDeviceIdentifier.ExternalIdentifier.urlRepresentation.getter(v12);
          sub_21D1078C0(v19, v18, v21, v20, v23, v22, 0);
        }

        v33 = sub_21DBF54CC();
        (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
        sub_21D669548(v12, 2u);
        sub_21D0CF7E0(v12, &qword_27CE5EA20);
        v34 = [v17 displayName];
        if (!v34)
        {
          sub_21DBFA16C();
          v34 = sub_21DBFA12C();
        }

        [(objc_class *)a1.super.isa setTitle:v34];

        v35 = [v17 account];
        v36 = [v35 capabilities];

        v37 = [v36 supportsHandoff];
        [(objc_class *)a1.super.isa setEligibleForHandoff:v37];
      }

      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        (*(v4 + 32))(v6, v15, v3);
        v28 = sub_21DBF6BAC();
        sub_21D66A0E4(v28, v38, 5u);

        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v39 = sub_21DBFA12C();

        [(objc_class *)a1.super.isa setTitle:v39];

        [(objc_class *)a1.super.isa setEligibleForHandoff:1];
        (*(v4 + 8))(v6, v3);
        goto LABEL_44;
      }

      sub_21D66A0E4(*v15, v15[1], 4u);

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
LABEL_43:
      v44 = sub_21DBFA12C();

      [(objc_class *)a1.super.isa setTitle:v44];

      [(objc_class *)a1.super.isa setEligibleForHandoff:1];
LABEL_44:
      sub_21D668100();
      return;
    }

    v25 = *v15;
    if (v25 <= 2)
    {
      if (!*v15)
      {
        v26 = 0xE500000000000000;
        v27 = 0x7961646F74;
        goto LABEL_42;
      }

      if (v25 != 1)
      {
        v26 = 0xEC00000073726564;
        v27 = 0x6E696D65526C6C61;
        goto LABEL_42;
      }

      v27 = 0x656C756465686373;
    }

    else
    {
      if (*v15 <= 4u)
      {
        if (v25 == 3)
        {
          v26 = 0xE700000000000000;
          v27 = 0x64656767616C66;
        }

        else
        {
          v26 = 0xE800000000000000;
          v27 = 0x64656E6769737361;
        }

        goto LABEL_42;
      }

      if (v25 == 5)
      {
        v26 = 0xEF737070416E4964;
        v27 = 0x6E756F4669726973;
LABEL_42:
        sub_21D66A0E4(v27, v26, 3u);

        LOBYTE(v46) = v25;
        sub_21D66404C();
        goto LABEL_43;
      }

      v27 = 0x6574656C706D6F63;
    }

    v26 = 0xE900000000000064;
    goto LABEL_42;
  }
}

void sub_21D668100()
{
  v1 = v0;
  v2 = [v0 userInfo];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21DBF9E6C();

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    sub_21DBF8E0C();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v7)
    {
LABEL_10:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_21D181CE0(*(v4 + 48) + 40 * (v12 | (v9 << 6)), v24);
      sub_21DBFBE1C();
      sub_21D181D3C(v24);
      if ((swift_dynamicCast() & 1) != 0 && v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21D210A84(0, *(v10 + 2) + 1, 1, v10);
        }

        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v21 = v14 + 1;
          v17 = v10;
          v18 = *(v10 + 2);
          v19 = sub_21D210A84((v13 > 1), v14 + 1, 1, v17);
          v14 = v18;
          v15 = v21;
          v10 = v19;
        }

        *(v10 + 2) = v15;
        v16 = &v10[16 * v14];
        *(v16 + 4) = v22;
        *(v16 + 5) = v23;
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        goto LABEL_19;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    sub_21D0FC0A8(v10);

    v20 = sub_21DBFAA9C();

    [v1 setRequiredUserInfoKeys_];
  }
}

uint64_t NSUserActivity.ExtractedInfo.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t NSUserActivity.ExtractedInfo.notes.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

id static NSUserActivity.forStoringWindowSceneRestorationPayload()()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id sub_21D66850C()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id static NSUserActivity.forStoringListPayloadForSmartListsAndSearch()()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id NSUserActivity.init(forStoring:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a2 + 8))(&v8, a1, a2);
  TTRUserActivityType.activityType.getter();
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithActivityType_];

  return v6;
}

uint64_t NSUserActivity.ttrExtractedInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 activityType];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = v5 == 0xD000000000000023 && 0x800000021DC66100 == v7;
  if (v8 || (sub_21DBFC64C() & 1) != 0 || (v5 == 0xD000000000000025 ? (v9 = 0x800000021DC66130 == v7) : (v9 = 0), v9))
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v11 = [v2 userInfo];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  v13 = sub_21DBF9E6C();

  v48[0] = 0xD000000000000015;
  v48[1] = 0x800000021DC66160;
  sub_21DBFBE2C();
  if (!*(v13 + 16) || (v14 = sub_21D17EA0C(&v49), (v15 & 1) == 0))
  {

    sub_21D181D3C(&v49);
LABEL_28:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_29;
  }

  sub_21D0CEB98(*(v13 + 56) + 32 * v14, &v51);
  sub_21D181D3C(&v49);

  if (!*(&v52 + 1))
  {
LABEL_29:
    sub_21D0CF7E0(&v51, &qword_27CE5C690);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v38 = [v2 title];
    if (v38)
    {
      v39 = v38;
      v40 = sub_21DBFA16C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = *(type metadata accessor for NSUserActivity.ExtractedInfo(0) + 24);
    v44 = sub_21DBF54CC();
    result = (*(*(v44 - 8) + 56))(a1 + v43, 1, 1, v44);
    *a1 = v40;
    a1[1] = v42;
    a1[2] = 0;
    a1[3] = 0;
    return result;
  }

  v17 = v49;
  v16 = v50;
  v18 = [v2 userInfo];
  if (!v18)
  {

    goto LABEL_28;
  }

  v19 = v18;
  v20 = sub_21DBF9E6C();

  strcpy(v48, "containerTitle");
  HIBYTE(v48[1]) = -18;
  sub_21DBFBE2C();
  if (!*(v20 + 16) || (v21 = sub_21D17EA0C(&v49), (v22 & 1) == 0))
  {

    sub_21D181D3C(&v49);
    v51 = 0u;
    v52 = 0u;
    goto LABEL_35;
  }

  sub_21D0CEB98(*(v20 + 56) + 32 * v21, &v51);
  sub_21D181D3C(&v49);

  if (!*(&v52 + 1))
  {
LABEL_35:

    goto LABEL_29;
  }

  v23 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v24 = v49;
  v25 = v50;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v26 = sub_21DBFA12C();

  sub_21D66A81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D20;
  *(v27 + 56) = v23;
  v28 = sub_21D17A884();
  *(v27 + 32) = v17;
  *(v27 + 40) = v16;
  *(v27 + 96) = v23;
  *(v27 + 104) = v28;
  *(v27 + 64) = v28;
  *(v27 + 72) = v24;
  *(v27 + 80) = v25;
  v29 = sub_21DBFB67C();
  v30 = sub_21DBFA16C();
  v32 = v31;

  v33 = [v2 title];
  if (v33)
  {
    v34 = v33;
    v35 = sub_21DBFA16C();
    v37 = v36;
  }

  else
  {

    v35 = 0;
    v37 = 0;
  }

  v46 = *(type metadata accessor for NSUserActivity.ExtractedInfo(0) + 24);
  v47 = sub_21DBF54CC();
  result = (*(*(v47 - 8) + 56))(a1 + v46, 1, 1, v47);
  *a1 = v35;
  a1[1] = v37;
  a1[2] = v30;
  a1[3] = v32;
  return result;
}

RemindersUICore::TTRUserActivityType_optional NSUserActivity.ttrUserActivityType.getter()
{
  v1 = [v0 activityType];
  v2 = sub_21DBFA16C();
  v4 = v3;

  v5 = v2;
  v6 = v4;

  return TTRUserActivityType.init(activityType:)(*&v5);
}

uint64_t NSUserActivity.setPayload(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_21D66A868(v4, v1, v2, v3);
}

uint64_t NSUserActivity.windowSceneRestorationPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;

  return sub_21D6650FC(v3, a1);
}

uint64_t NSUserActivity.listPayload(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v6 = a1;

  return sub_21D666D48(v5, v6, a2);
}

uint64_t sub_21D668E7C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = [v2 userInfo];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_21DBF9E6C();

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0xD000000000000010;
        v8 = 0x800000021DC663A0;
      }

      else
      {
        v8 = 0xED00004449656369;
        v9 = 0x76654473736F7263;
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x44497463656A626FLL;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = 0xED0000736C656261;
      v9 = 0x4C67617468736168;
    }

    else
    {
      v8 = 0x800000021DC66380;
      v9 = 0xD000000000000013;
    }
  }

  else if (a1 == 3)
  {
    v8 = 0xED00006570795474;
    v9 = 0x73694C7472616D73;
  }

  else
  {
    v8 = 0xEA00000000006D72;
    v9 = 0x6554686372616573;
  }

  *&v16[0] = v9;
  *(&v16[0] + 1) = v8;
  sub_21DBFBE2C();
  if (!*(v7 + 16) || (v10 = sub_21D17EA0C(v15), (v11 & 1) == 0))
  {

    sub_21D181D3C(v15);
LABEL_19:
    memset(v16, 0, sizeof(v16));
    goto LABEL_20;
  }

  sub_21D0CEB98(*(v7 + 56) + 32 * v10, v16);
  sub_21D181D3C(v15);

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  v12 = sub_21DBF54CC();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a2, v13 ^ 1u, 1, v12);
}

uint64_t sub_21D6690E4(unsigned __int8 a1)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBF9E6C();

    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0xD000000000000010;
          v6 = 0x800000021DC663A0;
        }

        else
        {
          v6 = 0xED00004449656369;
          v7 = 0x76654473736F7263;
        }
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x44497463656A626FLL;
      }
    }

    else if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v6 = 0xED0000736C656261;
        v7 = 0x4C67617468736168;
      }

      else
      {
        v6 = 0x800000021DC66380;
        v7 = 0xD000000000000013;
      }
    }

    else if (a1 == 3)
    {
      v6 = 0xED00006570795474;
      v7 = 0x73694C7472616D73;
    }

    else
    {
      v6 = 0xEA00000000006D72;
      v7 = 0x6554686372616573;
    }

    *&v12[0] = v7;
    *(&v12[0] + 1) = v6;
    sub_21DBFBE2C();
    if (*(v5 + 16))
    {
      v8 = sub_21D17EA0C(&v11);
      if (v9)
      {
        sub_21D0CEB98(*(v5 + 56) + 32 * v8, v12);
        sub_21D181D3C(&v11);

        goto LABEL_20;
      }
    }

    sub_21D181D3C(&v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

double sub_21D669314@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = [v2 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBF9E6C();

    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v9 = 0xD000000000000010;
          v8 = 0x800000021DC663A0;
        }

        else
        {
          v8 = 0xED00004449656369;
          v9 = 0x76654473736F7263;
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x44497463656A626FLL;
      }
    }

    else if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v8 = 0xED0000736C656261;
        v9 = 0x4C67617468736168;
      }

      else
      {
        v8 = 0x800000021DC66380;
        v9 = 0xD000000000000013;
      }
    }

    else if (a1 == 3)
    {
      v8 = 0xED00006570795474;
      v9 = 0x73694C7472616D73;
    }

    else
    {
      v8 = 0xEA00000000006D72;
      v9 = 0x6554686372616573;
    }

    *&v14[0] = v9;
    *(&v14[0] + 1) = v8;
    sub_21DBFBE2C();
    if (*(v7 + 16))
    {
      v10 = sub_21D17EA0C(v13);
      if (v11)
      {
        sub_21D0CEB98(*(v7 + 56) + 32 * v10, v14);
        sub_21D181D3C(v13);

        goto LABEL_20;
      }
    }

    sub_21D181D3C(v13);
  }

  memset(v14, 0, sizeof(v14));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a2 = xmmword_21DC18EF0;
  }

  return result;
}

void sub_21D669548(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v8, &qword_27CE5EA20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5EA20);
    v13 = [v3 userInfo];
    if (v13)
    {
      v14 = v13;
      v15 = sub_21DBF9E6C();

      v31 = v15;
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v16 = 0xD000000000000010;
            v17 = 0x800000021DC663A0;
          }

          else
          {
            v16 = 0x76654473736F7263;
            v17 = 0xED00004449656369;
          }
        }

        else
        {
          v16 = 0x44497463656A626FLL;
          v17 = 0xE800000000000000;
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v16 = 0x4C67617468736168;
          v17 = 0xED0000736C656261;
        }

        else
        {
          v17 = 0x800000021DC66380;
          v16 = 0xD000000000000013;
        }
      }

      else if (a2 == 3)
      {
        v16 = 0x73694C7472616D73;
        v17 = 0xED00006570795474;
      }

      else
      {
        v16 = 0x6554686372616573;
        v17 = 0xEA00000000006D72;
      }

      *&v29[0] = v16;
      *(&v29[0] + 1) = v17;
      sub_21DBFBE2C();
      sub_21D874094(v30, &v32);
      sub_21D181D3C(v30);
      sub_21D0CF7E0(&v32, &qword_27CE5C690);
      if (v31)
      {
        v25 = sub_21DBF9E5C();
      }

      else
      {
        v25 = 0;
      }

      [v3 setUserInfo_];
    }

    else
    {
      [v3 setUserInfo_];
      v32 = 0u;
      v33 = 0u;
      sub_21D0CF7E0(&v32, &qword_27CE5C690);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = [v3 userInfo];
    if (!v18)
    {
      sub_21D1790F0(MEMORY[0x277D84F90]);
      v19 = sub_21DBF9E5C();

      [v3 setUserInfo_];
      v18 = v19;
    }

    v20 = [v3 userInfo];
    if (v20)
    {
      v21 = v20;
      v22 = sub_21DBF9E6C();

      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v23 = 0xD000000000000010;
            v24 = 0x800000021DC663A0;
          }

          else
          {
            v23 = 0x76654473736F7263;
            v24 = 0xED00004449656369;
          }
        }

        else
        {
          v23 = 0x44497463656A626FLL;
          v24 = 0xE800000000000000;
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v23 = 0x4C67617468736168;
          v24 = 0xED0000736C656261;
        }

        else
        {
          v24 = 0x800000021DC66380;
          v23 = 0xD000000000000013;
        }
      }

      else if (a2 == 3)
      {
        v23 = 0x73694C7472616D73;
        v24 = 0xED00006570795474;
      }

      else
      {
        v23 = 0x6554686372616573;
        v24 = 0xEA00000000006D72;
      }

      *&v32 = v23;
      *(&v32 + 1) = v24;
      sub_21DBFBE2C();
      *(&v33 + 1) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
      (*(v10 + 16))(boxed_opaque_existential_0, v12, v9);
      sub_21D0CF2E8(&v32, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v22;
      sub_21D478860(v29, v30, isUniquelyReferenced_nonNull_native);
      sub_21D181D3C(v30);
      if (v31)
      {
        v28 = sub_21DBF9E5C();
      }

      else
      {
        v28 = 0;
      }

      [v3 setUserInfo_];
    }

    else
    {
      [v3 setUserInfo_];
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_21D669BB4(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2 >> 60 == 15)
  {
    v6 = [v4 userInfo];
    if (!v6)
    {
      [v4 setUserInfo_];
      v23 = 0u;
      v24 = 0u;
      sub_21D0CF7E0(&v23, &qword_27CE5C690);
      return;
    }

    v7 = v6;
    v8 = sub_21DBF9E6C();

    v22 = v8;
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v9 = 0xD000000000000010;
          v10 = 0x800000021DC663A0;
        }

        else
        {
          v9 = 0x76654473736F7263;
          v10 = 0xED00004449656369;
        }
      }

      else
      {
        v9 = 0x44497463656A626FLL;
        v10 = 0xE800000000000000;
      }
    }

    else if (a3 > 4u)
    {
      if (a3 == 5)
      {
        v9 = 0x4C67617468736168;
        v10 = 0xED0000736C656261;
      }

      else
      {
        v10 = 0x800000021DC66380;
        v9 = 0xD000000000000013;
      }
    }

    else if (a3 == 3)
    {
      v9 = 0x73694C7472616D73;
      v10 = 0xED00006570795474;
    }

    else
    {
      v9 = 0x6554686372616573;
      v10 = 0xEA00000000006D72;
    }

    *&v20[0] = v9;
    *(&v20[0] + 1) = v10;
    sub_21DBFBE2C();
    sub_21D874094(v21, &v23);
    sub_21D181D3C(v21);
    sub_21D0CF7E0(&v23, &qword_27CE5C690);
    if (v22)
    {
      v18 = sub_21DBF9E5C();
    }

    else
    {
      v18 = 0;
    }

    [v4 setUserInfo_];
    goto LABEL_32;
  }

  v13 = [v4 userInfo];
  if (!v13)
  {
    sub_21D1790F0(MEMORY[0x277D84F90]);
    v14 = sub_21DBF9E5C();

    [v4 setUserInfo_];
    v13 = v14;
  }

  v15 = [v4 userInfo];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21DBF9E6C();

    sub_21DBFBE2C();
    *(&v24 + 1) = MEMORY[0x277CC9318];
    *&v23 = a1;
    *(&v23 + 1) = a2;
    sub_21D0CF2E8(&v23, v20);
    sub_21D1BAF70(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v17;
    sub_21D478860(v20, v21, isUniquelyReferenced_nonNull_native);
    sub_21D181D3C(v21);
    if (v22)
    {
      v18 = sub_21DBF9E5C();
    }

    else
    {
      v18 = 0;
    }

    [v4 setUserInfo_];
LABEL_32:

    return;
  }

  [v4 setUserInfo_];
}

void sub_21D66A0E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (!a2)
  {
    v13 = [v3 userInfo];
    if (!v13)
    {
      [v3 setUserInfo_];
      v24 = 0u;
      v25 = 0u;
      sub_21D0CF7E0(&v24, &qword_27CE5C690);
      return;
    }

    v14 = v13;
    v15 = sub_21DBF9E6C();

    v23 = v15;
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v16 = 0xD000000000000010;
          v17 = 0x800000021DC663A0;
        }

        else
        {
          v16 = 0x76654473736F7263;
          v17 = 0xED00004449656369;
        }
      }

      else
      {
        v16 = 0x44497463656A626FLL;
        v17 = 0xE800000000000000;
      }
    }

    else if (a3 > 4u)
    {
      if (a3 == 5)
      {
        v16 = 0x4C67617468736168;
        v17 = 0xED0000736C656261;
      }

      else
      {
        v17 = 0x800000021DC66380;
        v16 = 0xD000000000000013;
      }
    }

    else if (a3 == 3)
    {
      v16 = 0x73694C7472616D73;
      v17 = 0xED00006570795474;
    }

    else
    {
      v16 = 0x6554686372616573;
      v17 = 0xEA00000000006D72;
    }

    *&v21[0] = v16;
    *(&v21[0] + 1) = v17;
    sub_21DBFBE2C();
    sub_21D874094(v22, &v24);
    sub_21D181D3C(v22);
    sub_21D0CF7E0(&v24, &qword_27CE5C690);
    if (v23)
    {
      v20 = sub_21DBF9E5C();
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_30;
  }

  v8 = [v4 userInfo];
  if (!v8)
  {
    sub_21D1790F0(MEMORY[0x277D84F90]);
    v9 = sub_21DBF9E5C();

    [v4 setUserInfo_];
    v8 = v9;
  }

  v10 = [v4 userInfo];
  if (v10)
  {
    v11 = v10;
    v12 = sub_21DBF9E6C();

    v18 = MEMORY[0x277D837D0];
    sub_21DBFBE2C();
    *(&v25 + 1) = v18;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    sub_21D0CF2E8(&v24, v21);
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v12;
    sub_21D478860(v21, v22, isUniquelyReferenced_nonNull_native);
    sub_21D181D3C(v22);
    if (v23)
    {
      v20 = sub_21DBF9E5C();
    }

    else
    {
      v20 = 0;
    }

LABEL_30:
    [v4 setUserInfo_];

    return;
  }

  [v4 setUserInfo_];
}

void sub_21D66A604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_21D1078C0(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_21D66A63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D66A69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D66A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D66A774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D66A81C()
{
  result = qword_27CE5A168;
  if (!qword_27CE5A168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5A168);
  }

  return result;
}

uint64_t sub_21D66A868(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 1));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v8 = [a2 activityType];
  v9 = sub_21DBFA16C();
  v11 = v10;

  __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
  swift_getDynamicType();
  (*(v20 + 8))(v18);
  if (v9 == TTRUserActivityType.activityType.getter() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_21DBFC64C();

    if ((v14 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_0(v18 + 1);
    }
  }

  v15 = v19;
  v16 = v20;
  __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
  (*(v16 + 24))(a2, v15, v16);
  return __swift_destroy_boxed_opaque_existential_0(v18 + 1);
}

unint64_t sub_21D66A9E8()
{
  result = qword_27CE5F7A0;
  if (!qword_27CE5F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5F7A0);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRUserActivityWindowSceneRestorationPayload(void *a1, void *a2)
{
  v4 = *(*(type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0) - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = a2[1];
        *a1 = *a2;
        a1[1] = v19;
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v14 = sub_21DBF6C1C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
      }

      else
      {
        v21 = *a2;
        *a1 = *a2;
        v22 = v21;
      }

      goto LABEL_139;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *a2;
        *a1 = *a2;
        v7 = v6;
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v9 = (a1 + v8);
        v10 = (a2 + v8);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_12;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_112;
                }

                goto LABEL_87;
              }

              if (v27 <= 2)
              {
                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_83;
                  }

LABEL_112:
                  memcpy(v9, v10, *(*(v24 - 8) + 64));
                  goto LABEL_137;
                }

                goto LABEL_87;
              }

LABEL_83:
              v50 = sub_21DBF563C();
              (*(*(v50 - 8) + 16))(v9, v10, v50);
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v35 = *v10;
          *v9 = *v10;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = v9;
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v36 = *(v31 - 8);
          v37 = *(v36 + 48);
          v38 = v35;
          if (v37(v10 + v57, 1, v31))
          {
            goto LABEL_46;
          }

          v46 = v36;
          v9 = v58;
          v48 = swift_getEnumCaseMultiPayload();
          if (v48 > 4)
          {
            if (v48 <= 7)
            {
              if (v48 == 5 || v48 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v48 != 8 && v48 != 9)
            {
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          if (v48 <= 2)
          {
            if (v48 != 1)
            {
              if (v48 == 2)
              {
                goto LABEL_118;
              }

LABEL_135:
              memcpy(v58 + v57, v10 + v57, *(v46 + 64));
              goto LABEL_136;
            }

            goto LABEL_122;
          }

LABEL_118:
          v53 = sub_21DBF563C();
          (*(*(v53 - 8) + 16))(v58 + v57, v10 + v57, v53);
          swift_storeEnumTagMultiPayload();
LABEL_136:
          (*(v46 + 56))(v58 + v57, 0, 1, v31);
          goto LABEL_137;
        }
      }

      else
      {
        *a1 = *a2;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v9 = (a1 + v20);
        v10 = (a2 + v20);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_12;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 != 2)
        {
          if (v28 != 1)
          {
            if (!v28)
            {
              v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v29 = swift_getEnumCaseMultiPayload();
              if (v29 > 4)
              {
                if (v29 <= 7)
                {
                  if (v29 == 5 || v29 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v29 != 8 && v29 != 9)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (v29 > 2)
                {
                  goto LABEL_83;
                }

                if (v29 != 1)
                {
                  if (v29 == 2)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }
              }

LABEL_87:
              v51 = *v10;
              *v9 = *v10;
              v52 = v51;
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v40 = *v10;
          *v9 = *v10;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = v9;
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v41 = *(v31 - 8);
          v42 = *(v41 + 48);
          v43 = v40;
          if (v42(v10 + v57, 1, v31))
          {
LABEL_46:
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v9 = v58;
            memcpy(v58 + v57, v10 + v57, *(*(v39 - 8) + 64));
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
          }

          v46 = v41;
          v9 = v58;
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v49 > 2)
            {
              goto LABEL_118;
            }

            if (v49 != 1)
            {
              if (v49 == 2)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }
          }

LABEL_122:
          v54 = *(v10 + v57);
          *(v58 + v57) = v54;
          v55 = v54;
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }
      }
    }

    else
    {
      v15 = *a2;
      *a1 = *a2;
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v9 = (a1 + v17);
      v10 = (a2 + v17);
      v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
LABEL_12:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v9, v10, *(*(v18 - 8) + 64));
LABEL_139:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 2)
      {
        if (v23 != 1)
        {
          if (!v23)
          {
            v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v25 = swift_getEnumCaseMultiPayload();
            if (v25 > 4)
            {
              if (v25 <= 7)
              {
                if (v25 == 5 || v25 == 6)
                {
                  goto LABEL_83;
                }

                goto LABEL_112;
              }

              if (v25 != 8 && v25 != 9)
              {
                goto LABEL_112;
              }

              goto LABEL_87;
            }

            if (v25 > 2)
            {
              goto LABEL_83;
            }

            if (v25 == 1)
            {
              goto LABEL_87;
            }

            if (v25 != 2)
            {
              goto LABEL_112;
            }

            goto LABEL_83;
          }

LABEL_51:
          memcpy(v9, v10, *(v12 + 64));
LABEL_138:
          (*(v12 + 56))(v9, 0, 1, v11);
          goto LABEL_139;
        }

        v30 = *v10;
        *v9 = *v10;
        v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v58 = v9;
        v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v32 = *(v31 - 8);
        v33 = *(v32 + 48);
        v34 = v30;
        if (v33(v10 + v57, 1, v31))
        {
          goto LABEL_46;
        }

        v46 = v32;
        v9 = v58;
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 > 4)
        {
          if (v47 <= 7)
          {
            if (v47 == 5 || v47 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_135;
          }

          if (v47 != 8 && v47 != 9)
          {
            goto LABEL_135;
          }

          goto LABEL_122;
        }

        if (v47 > 2)
        {
          goto LABEL_118;
        }

        if (v47 == 1)
        {
          goto LABEL_122;
        }

        if (v47 != 2)
        {
          goto LABEL_135;
        }

        goto LABEL_118;
      }
    }

    v44 = *v10;
    *v9 = *v10;
    v45 = v44;
    goto LABEL_137;
  }

  v13 = *a2;
  *a1 = *a2;
  a1 = (v13 + ((v4 + 16) & ~v4));

  return a1;
}

void destroy for TTRUserActivityWindowSceneRestorationPayload(id *a1)
{
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v7 = sub_21DBF6C1C();
LABEL_24:
      v8 = *(*(v7 - 8) + 8);
      v9 = v7;
      v10 = a1;
LABEL_25:

      v8(v10, v9);
      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload < 2)
  {

    v3 = &qword_27CE5F798;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    v3 = &qword_27CE5F790;
  }

  a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v3) + 48));
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v5 = swift_getEnumCaseMultiPayload();
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (v5)
        {
          return;
        }

        type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v6 = swift_getEnumCaseMultiPayload();
        if (v6 > 4)
        {
          if (v6 <= 7)
          {
            if (v6 != 5 && v6 != 6)
            {
              return;
            }

            goto LABEL_37;
          }

          if (v6 != 8 && v6 != 9)
          {
            return;
          }
        }

        else
        {
          if (v6 > 2)
          {
LABEL_37:
            v7 = sub_21DBF563C();
            goto LABEL_24;
          }

          if (v6 != 1)
          {
            if (v6 != 2)
            {
              return;
            }

            goto LABEL_37;
          }
        }

        goto LABEL_40;
      }

      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v12 - 8) + 48))(a1 + v11, 1, v12))
      {
        return;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 != 5 && v13 != 6)
          {
            return;
          }

          goto LABEL_47;
        }

        if (v13 != 8 && v13 != 9)
        {
          return;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_47:
          v9 = sub_21DBF563C();
          v8 = *(*(v9 - 8) + 8);
          v10 = (a1 + v11);
          goto LABEL_25;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            return;
          }

          goto LABEL_47;
        }
      }

      v14 = *(a1 + v11);
      goto LABEL_41;
    }

LABEL_40:
    v14 = *a1;
LABEL_41:
  }
}

void *initializeWithCopy for TTRUserActivityWindowSceneRestorationPayload(void *a1, uint64_t a2)
{
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 != 2)
        {
          if (v24 != 1)
          {
            if (!v24)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v25 = swift_getEnumCaseMultiPayload();
              if (v25 > 4)
              {
                if (v25 <= 7)
                {
                  if (v25 == 5 || v25 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v25 != 8 && v25 != 9)
                {
                  goto LABEL_110;
                }

                goto LABEL_85;
              }

              if (v25 <= 2)
              {
                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    goto LABEL_81;
                  }

LABEL_110:
                  memcpy(v8, v9, *(*(v22 - 8) + 64));
                  goto LABEL_135;
                }

                goto LABEL_85;
              }

LABEL_81:
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(v8, v9, v48);
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v33 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v34 = *(v29 - 8);
          v35 = *(v34 + 48);
          v36 = v33;
          if (v35(v9 + v55, 1, v29))
          {
            goto LABEL_44;
          }

          v44 = v34;
          v8 = v56;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_133;
            }

            goto LABEL_120;
          }

          if (v46 <= 2)
          {
            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_116;
              }

LABEL_133:
              memcpy(v56 + v55, v9 + v55, *(v44 + 64));
              goto LABEL_134;
            }

            goto LABEL_120;
          }

LABEL_116:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(v56 + v55, v9 + v55, v51);
          swift_storeEnumTagMultiPayload();
LABEL_134:
          (*(v44 + 56))(v56 + v55, 0, 1, v29);
          goto LABEL_135;
        }
      }

      else
      {
        *a1 = *a2;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v8 = (a1 + v18);
        v9 = (a2 + v18);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if (v27 > 2)
                {
                  goto LABEL_81;
                }

                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }
              }

LABEL_85:
              v49 = *v9;
              *v8 = *v9;
              v50 = v49;
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v38 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = *(v29 - 8);
          v40 = *(v39 + 48);
          v41 = v38;
          if (v40(v9 + v55, 1, v29))
          {
LABEL_44:
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v8 = v56;
            memcpy(v56 + v55, v9 + v55, *(*(v37 - 8) + 64));
LABEL_135:
            swift_storeEnumTagMultiPayload();
            goto LABEL_136;
          }

          v44 = v39;
          v8 = v56;
          v47 = swift_getEnumCaseMultiPayload();
          if (v47 > 4)
          {
            if (v47 <= 7)
            {
              if (v47 == 5 || v47 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v47 != 8 && v47 != 9)
            {
              goto LABEL_133;
            }
          }

          else
          {
            if (v47 > 2)
            {
              goto LABEL_116;
            }

            if (v47 != 1)
            {
              if (v47 == 2)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }
          }

LABEL_120:
          v52 = *(v9 + v55);
          *(v56 + v55) = v52;
          v53 = v52;
          swift_storeEnumTagMultiPayload();
          goto LABEL_134;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = (a1 + v15);
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_10:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_137;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 2)
      {
        if (v21 != 1)
        {
          if (!v21)
          {
            v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v23 = swift_getEnumCaseMultiPayload();
            if (v23 > 4)
            {
              if (v23 <= 7)
              {
                if (v23 == 5 || v23 == 6)
                {
                  goto LABEL_81;
                }

                goto LABEL_110;
              }

              if (v23 != 8 && v23 != 9)
              {
                goto LABEL_110;
              }

              goto LABEL_85;
            }

            if (v23 > 2)
            {
              goto LABEL_81;
            }

            if (v23 == 1)
            {
              goto LABEL_85;
            }

            if (v23 != 2)
            {
              goto LABEL_110;
            }

            goto LABEL_81;
          }

LABEL_49:
          memcpy(v8, v9, *(v11 + 64));
LABEL_136:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_137;
        }

        v28 = *v9;
        *v8 = *v9;
        v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v56 = v8;
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        v32 = v28;
        if (v31(v9 + v55, 1, v29))
        {
          goto LABEL_44;
        }

        v44 = v30;
        v8 = v56;
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 > 4)
        {
          if (v45 <= 7)
          {
            if (v45 == 5 || v45 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_133;
          }

          if (v45 != 8 && v45 != 9)
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        if (v45 > 2)
        {
          goto LABEL_116;
        }

        if (v45 == 1)
        {
          goto LABEL_120;
        }

        if (v45 != 2)
        {
          goto LABEL_133;
        }

        goto LABEL_116;
      }
    }

    v42 = *v9;
    *v8 = *v9;
    v43 = v42;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v17 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v17;
    sub_21DBF8E0C();
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v12 = sub_21DBF6C1C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = v19;
  }

LABEL_137:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRUserActivityWindowSceneRestorationPayload(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v12 = sub_21DBF6C1C();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
      }

      else
      {
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
      }

      goto LABEL_138;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v23 = swift_getEnumCaseMultiPayload();
        if (v23 != 2)
        {
          if (v23 != 1)
          {
            if (!v23)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v24 = swift_getEnumCaseMultiPayload();
              if (v24 > 4)
              {
                if (v24 <= 7)
                {
                  if (v24 == 5 || v24 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v24 != 8 && v24 != 9)
                {
                  goto LABEL_111;
                }

                goto LABEL_86;
              }

              if (v24 <= 2)
              {
                if (v24 != 1)
                {
                  if (v24 == 2)
                  {
                    goto LABEL_82;
                  }

LABEL_111:
                  memcpy(v8, v9, *(*(v21 - 8) + 64));
                  goto LABEL_136;
                }

                goto LABEL_86;
              }

LABEL_82:
              v47 = sub_21DBF563C();
              (*(*(v47 - 8) + 16))(v8, v9, v47);
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v32 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v33 = *(v28 - 8);
          v34 = *(v33 + 48);
          v35 = v32;
          if (v34(v9 + v54, 1, v28))
          {
            goto LABEL_45;
          }

          v43 = v33;
          v8 = v55;
          v45 = swift_getEnumCaseMultiPayload();
          if (v45 > 4)
          {
            if (v45 <= 7)
            {
              if (v45 == 5 || v45 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v45 != 8 && v45 != 9)
            {
              goto LABEL_134;
            }

            goto LABEL_121;
          }

          if (v45 <= 2)
          {
            if (v45 != 1)
            {
              if (v45 == 2)
              {
                goto LABEL_117;
              }

LABEL_134:
              memcpy(v55 + v54, v9 + v54, *(v43 + 64));
              goto LABEL_135;
            }

            goto LABEL_121;
          }

LABEL_117:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(v55 + v54, v9 + v54, v50);
          swift_storeEnumTagMultiPayload();
LABEL_135:
          (*(v43 + 56))(v55 + v54, 0, 1, v28);
          goto LABEL_136;
        }
      }

      else
      {
        *a1 = *a2;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v8 = (a1 + v17);
        v9 = (a2 + v17);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 != 2)
        {
          if (v25 != 1)
          {
            if (!v25)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v26 = swift_getEnumCaseMultiPayload();
              if (v26 > 4)
              {
                if (v26 <= 7)
                {
                  if (v26 == 5 || v26 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v26 != 8 && v26 != 9)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v26 > 2)
                {
                  goto LABEL_82;
                }

                if (v26 != 1)
                {
                  if (v26 == 2)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }
              }

LABEL_86:
              v48 = *v9;
              *v8 = *v9;
              v49 = v48;
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v37 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v28 - 8);
          v39 = *(v38 + 48);
          v40 = v37;
          if (v39(v9 + v54, 1, v28))
          {
LABEL_45:
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v8 = v55;
            memcpy(v55 + v54, v9 + v54, *(*(v36 - 8) + 64));
LABEL_136:
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          v43 = v38;
          v8 = v55;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v46 > 2)
            {
              goto LABEL_117;
            }

            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }
          }

LABEL_121:
          v51 = *(v9 + v54);
          *(v55 + v54) = v51;
          v52 = v51;
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = (a1 + v15);
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_11:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
LABEL_138:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 2)
      {
        if (v20 != 1)
        {
          if (!v20)
          {
            v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v22 = swift_getEnumCaseMultiPayload();
            if (v22 > 4)
            {
              if (v22 <= 7)
              {
                if (v22 == 5 || v22 == 6)
                {
                  goto LABEL_82;
                }

                goto LABEL_111;
              }

              if (v22 != 8 && v22 != 9)
              {
                goto LABEL_111;
              }

              goto LABEL_86;
            }

            if (v22 > 2)
            {
              goto LABEL_82;
            }

            if (v22 == 1)
            {
              goto LABEL_86;
            }

            if (v22 != 2)
            {
              goto LABEL_111;
            }

            goto LABEL_82;
          }

LABEL_50:
          memcpy(v8, v9, *(v11 + 64));
LABEL_137:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_138;
        }

        v27 = *v9;
        *v8 = *v9;
        v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v55 = v8;
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        v31 = v27;
        if (v30(v9 + v54, 1, v28))
        {
          goto LABEL_45;
        }

        v43 = v29;
        v8 = v55;
        v44 = swift_getEnumCaseMultiPayload();
        if (v44 > 4)
        {
          if (v44 <= 7)
          {
            if (v44 == 5 || v44 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_134;
          }

          if (v44 != 8 && v44 != 9)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        if (v44 > 2)
        {
          goto LABEL_117;
        }

        if (v44 == 1)
        {
          goto LABEL_121;
        }

        if (v44 != 2)
        {
          goto LABEL_134;
        }

        goto LABEL_117;
      }
    }

    v41 = *v9;
    *v8 = *v9;
    v42 = v41;
    goto LABEL_136;
  }

  return a1;
}

_BYTE *initializeWithTake for TTRUserActivityWindowSceneRestorationPayload(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
      v7 = &a1[v16];
      v8 = &a2[v16];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_13;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 1)
      {
        if (!v23)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_40;
      }

      v32 = swift_getEnumCaseMultiPayload();
      if (v32 <= 3)
      {
        if (v32 == 2 || v32 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v32 == 4 || v32 == 5 || v32 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_101:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v7 = &a1[v14];
      v8 = &a2[v14];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
LABEL_13:
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v7, v8, *(*(v15 - 8) + 64));
        goto LABEL_101;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 1)
      {
        if (!v20)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = swift_getEnumCaseMultiPayload();
          if (v21 <= 3)
          {
            if (v21 == 2 || v21 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v21 == 4 || v21 == 5 || v21 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

LABEL_43:
        memcpy(v7, v8, *(v10 + 64));
LABEL_100:
        (*(v10 + 56))(v7, 0, 1, v9);
        goto LABEL_101;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
LABEL_40:
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v7 + v25, &v8[v25], *(*(v28 - 8) + 64));
        goto LABEL_99;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v7 = &a1[v6];
      v8 = &a2[v6];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_13;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 != 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_29:
            v22 = sub_21DBF563C();
            (*(*(v22 - 8) + 32))(v7, v8, v22);
            swift_storeEnumTagMultiPayload();
LABEL_99:
            swift_storeEnumTagMultiPayload();
            goto LABEL_100;
          }

LABEL_77:
          memcpy(v7, v8, *(*(v18 - 8) + 64));
          goto LABEL_99;
        }

        goto LABEL_43;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_40;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
LABEL_62:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 32))(v7 + v25, &v8[v25], v31);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        (*(v27 + 56))(v7 + v25, 0, 1, v26);
        goto LABEL_99;
      }

LABEL_97:
      memcpy(v7 + v25, &v8[v25], *(v27 + 64));
      goto LABEL_98;
    }
  }

  v12 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_BYTE *assignWithTake for TTRUserActivityWindowSceneRestorationPayload(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
      v7 = &a1[v16];
      v8 = &a2[v16];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_14;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 1)
      {
        if (!v23)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

        goto LABEL_44;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_41;
      }

      v32 = swift_getEnumCaseMultiPayload();
      if (v32 <= 3)
      {
        if (v32 == 2 || v32 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v32 == 4 || v32 == 5 || v32 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_102:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v7 = &a1[v14];
      v8 = &a2[v14];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
LABEL_14:
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v7, v8, *(*(v15 - 8) + 64));
        goto LABEL_102;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 1)
      {
        if (!v20)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = swift_getEnumCaseMultiPayload();
          if (v21 <= 3)
          {
            if (v21 == 2 || v21 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v21 == 4 || v21 == 5 || v21 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

LABEL_44:
        memcpy(v7, v8, *(v10 + 64));
LABEL_101:
        (*(v10 + 56))(v7, 0, 1, v9);
        goto LABEL_102;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
LABEL_41:
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v7 + v25, &v8[v25], *(*(v28 - 8) + 64));
        goto LABEL_100;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v7 = &a1[v6];
      v8 = &a2[v6];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_14;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 != 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_30:
            v22 = sub_21DBF563C();
            (*(*(v22 - 8) + 32))(v7, v8, v22);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            swift_storeEnumTagMultiPayload();
            goto LABEL_101;
          }

LABEL_78:
          memcpy(v7, v8, *(*(v18 - 8) + 64));
          goto LABEL_100;
        }

        goto LABEL_44;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_41;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
LABEL_63:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 32))(v7 + v25, &v8[v25], v31);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        (*(v27 + 56))(v7 + v25, 0, 1, v26);
        goto LABEL_100;
      }

LABEL_98:
      memcpy(v7 + v25, &v8[v25], *(v27 + 64));
      goto LABEL_99;
    }
  }

  v12 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeBufferWithCopyOfBuffer for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v20 = a2[1];
        *a1 = *a2;
        a1[1] = v20;
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v15 = sub_21DBF6C1C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
      }

      else
      {
        v22 = *a2;
        *a1 = *a2;
        v23 = v22;
      }

      goto LABEL_139;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v10 = (a1 + v9);
        v11 = (a2 + v9);
        v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v11, 1, v12))
        {
          goto LABEL_12;
        }

        v27 = swift_getEnumCaseMultiPayload();
        if (v27 != 2)
        {
          if (v27 != 1)
          {
            if (!v27)
            {
              v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v28 = swift_getEnumCaseMultiPayload();
              if (v28 > 4)
              {
                if (v28 <= 7)
                {
                  if (v28 == 5 || v28 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v28 != 8 && v28 != 9)
                {
                  goto LABEL_112;
                }

                goto LABEL_87;
              }

              if (v28 <= 2)
              {
                if (v28 != 1)
                {
                  if (v28 == 2)
                  {
                    goto LABEL_83;
                  }

LABEL_112:
                  memcpy(v10, v11, *(*(v25 - 8) + 64));
                  goto LABEL_137;
                }

                goto LABEL_87;
              }

LABEL_83:
              v51 = sub_21DBF563C();
              (*(*(v51 - 8) + 16))(v10, v11, v51);
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v36 = *v11;
          *v10 = *v11;
          v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v59 = v10;
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v37 = *(v32 - 8);
          v38 = *(v37 + 48);
          v39 = v36;
          if (v38(v11 + v58, 1, v32))
          {
            goto LABEL_46;
          }

          v47 = v37;
          v10 = v59;
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          if (v49 <= 2)
          {
            if (v49 != 1)
            {
              if (v49 == 2)
              {
                goto LABEL_118;
              }

LABEL_135:
              memcpy(v59 + v58, v11 + v58, *(v47 + 64));
              goto LABEL_136;
            }

            goto LABEL_122;
          }

LABEL_118:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(v59 + v58, v11 + v58, v54);
          swift_storeEnumTagMultiPayload();
LABEL_136:
          (*(v47 + 56))(v59 + v58, 0, 1, v32);
          goto LABEL_137;
        }
      }

      else
      {
        *a1 = *a2;
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v10 = (a1 + v21);
        v11 = (a2 + v21);
        v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v11, 1, v12))
        {
          goto LABEL_12;
        }

        v29 = swift_getEnumCaseMultiPayload();
        if (v29 != 2)
        {
          if (v29 != 1)
          {
            if (!v29)
            {
              v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v30 = swift_getEnumCaseMultiPayload();
              if (v30 > 4)
              {
                if (v30 <= 7)
                {
                  if (v30 == 5 || v30 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v30 != 8 && v30 != 9)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (v30 > 2)
                {
                  goto LABEL_83;
                }

                if (v30 != 1)
                {
                  if (v30 == 2)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }
              }

LABEL_87:
              v52 = *v11;
              *v10 = *v11;
              v53 = v52;
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v41 = *v11;
          *v10 = *v11;
          v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v59 = v10;
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v42 = *(v32 - 8);
          v43 = *(v42 + 48);
          v44 = v41;
          if (v43(v11 + v58, 1, v32))
          {
LABEL_46:
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v10 = v59;
            memcpy(v59 + v58, v11 + v58, *(*(v40 - 8) + 64));
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
          }

          v47 = v42;
          v10 = v59;
          v50 = swift_getEnumCaseMultiPayload();
          if (v50 > 4)
          {
            if (v50 <= 7)
            {
              if (v50 == 5 || v50 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v50 != 8 && v50 != 9)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v50 > 2)
            {
              goto LABEL_118;
            }

            if (v50 != 1)
            {
              if (v50 == 2)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }
          }

LABEL_122:
          v55 = *(v11 + v58);
          *(v59 + v58) = v55;
          v56 = v55;
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }
      }
    }

    else
    {
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v10 = (a1 + v18);
      v11 = (a2 + v18);
      v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v11, 1, v12))
      {
LABEL_12:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v10, v11, *(*(v19 - 8) + 64));
LABEL_139:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 2)
      {
        if (v24 != 1)
        {
          if (!v24)
          {
            v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v26 = swift_getEnumCaseMultiPayload();
            if (v26 > 4)
            {
              if (v26 <= 7)
              {
                if (v26 == 5 || v26 == 6)
                {
                  goto LABEL_83;
                }

                goto LABEL_112;
              }

              if (v26 != 8 && v26 != 9)
              {
                goto LABEL_112;
              }

              goto LABEL_87;
            }

            if (v26 > 2)
            {
              goto LABEL_83;
            }

            if (v26 == 1)
            {
              goto LABEL_87;
            }

            if (v26 != 2)
            {
              goto LABEL_112;
            }

            goto LABEL_83;
          }

LABEL_51:
          memcpy(v10, v11, *(v13 + 64));
LABEL_138:
          (*(v13 + 56))(v10, 0, 1, v12);
          goto LABEL_139;
        }

        v31 = *v11;
        *v10 = *v11;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = v10;
        v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v31;
        if (v34(v11 + v58, 1, v32))
        {
          goto LABEL_46;
        }

        v47 = v33;
        v10 = v59;
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 > 4)
        {
          if (v48 <= 7)
          {
            if (v48 == 5 || v48 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_135;
          }

          if (v48 != 8 && v48 != 9)
          {
            goto LABEL_135;
          }

          goto LABEL_122;
        }

        if (v48 > 2)
        {
          goto LABEL_118;
        }

        if (v48 == 1)
        {
          goto LABEL_122;
        }

        if (v48 != 2)
        {
          goto LABEL_135;
        }

        goto LABEL_118;
      }
    }

    v45 = *v11;
    *v10 = *v11;
    v46 = v45;
    goto LABEL_137;
  }

  v14 = *a2;
  *a1 = *a2;
  a1 = (v14 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRUserActivityWindowSceneRestorationPayload.State(id *a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v7 = sub_21DBF6C1C();
LABEL_24:
      v8 = *(*(v7 - 8) + 8);
      v9 = v7;
      v10 = a1;
LABEL_25:

      v8(v10, v9);
      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload < 2)
  {

    v3 = &qword_27CE5F798;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    v3 = &qword_27CE5F790;
  }

  a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v3) + 48));
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    v5 = swift_getEnumCaseMultiPayload();
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        if (v5)
        {
          return;
        }

        type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v6 = swift_getEnumCaseMultiPayload();
        if (v6 > 4)
        {
          if (v6 <= 7)
          {
            if (v6 != 5 && v6 != 6)
            {
              return;
            }

            goto LABEL_37;
          }

          if (v6 != 8 && v6 != 9)
          {
            return;
          }
        }

        else
        {
          if (v6 > 2)
          {
LABEL_37:
            v7 = sub_21DBF563C();
            goto LABEL_24;
          }

          if (v6 != 1)
          {
            if (v6 != 2)
            {
              return;
            }

            goto LABEL_37;
          }
        }

        goto LABEL_40;
      }

      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v12 - 8) + 48))(a1 + v11, 1, v12))
      {
        return;
      }

      v13 = swift_getEnumCaseMultiPayload();
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 != 5 && v13 != 6)
          {
            return;
          }

          goto LABEL_47;
        }

        if (v13 != 8 && v13 != 9)
        {
          return;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_47:
          v9 = sub_21DBF563C();
          v8 = *(*(v9 - 8) + 8);
          v10 = (a1 + v11);
          goto LABEL_25;
        }

        if (v13 != 1)
        {
          if (v13 != 2)
          {
            return;
          }

          goto LABEL_47;
        }
      }

      v14 = *(a1 + v11);
      goto LABEL_41;
    }

LABEL_40:
    v14 = *a1;
LABEL_41:
  }
}

void *initializeWithCopy for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 != 2)
        {
          if (v24 != 1)
          {
            if (!v24)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v25 = swift_getEnumCaseMultiPayload();
              if (v25 > 4)
              {
                if (v25 <= 7)
                {
                  if (v25 == 5 || v25 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v25 != 8 && v25 != 9)
                {
                  goto LABEL_110;
                }

                goto LABEL_85;
              }

              if (v25 <= 2)
              {
                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    goto LABEL_81;
                  }

LABEL_110:
                  memcpy(v8, v9, *(*(v22 - 8) + 64));
                  goto LABEL_135;
                }

                goto LABEL_85;
              }

LABEL_81:
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(v8, v9, v48);
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v33 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v34 = *(v29 - 8);
          v35 = *(v34 + 48);
          v36 = v33;
          if (v35(v9 + v55, 1, v29))
          {
            goto LABEL_44;
          }

          v44 = v34;
          v8 = v56;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_133;
            }

            goto LABEL_120;
          }

          if (v46 <= 2)
          {
            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_116;
              }

LABEL_133:
              memcpy(v56 + v55, v9 + v55, *(v44 + 64));
              goto LABEL_134;
            }

            goto LABEL_120;
          }

LABEL_116:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(v56 + v55, v9 + v55, v51);
          swift_storeEnumTagMultiPayload();
LABEL_134:
          (*(v44 + 56))(v56 + v55, 0, 1, v29);
          goto LABEL_135;
        }
      }

      else
      {
        *a1 = *a2;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v8 = (a1 + v18);
        v9 = (a2 + v18);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if (v27 > 2)
                {
                  goto LABEL_81;
                }

                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }
              }

LABEL_85:
              v49 = *v9;
              *v8 = *v9;
              v50 = v49;
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v38 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = *(v29 - 8);
          v40 = *(v39 + 48);
          v41 = v38;
          if (v40(v9 + v55, 1, v29))
          {
LABEL_44:
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v8 = v56;
            memcpy(v56 + v55, v9 + v55, *(*(v37 - 8) + 64));
LABEL_135:
            swift_storeEnumTagMultiPayload();
            goto LABEL_136;
          }

          v44 = v39;
          v8 = v56;
          v47 = swift_getEnumCaseMultiPayload();
          if (v47 > 4)
          {
            if (v47 <= 7)
            {
              if (v47 == 5 || v47 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v47 != 8 && v47 != 9)
            {
              goto LABEL_133;
            }
          }

          else
          {
            if (v47 > 2)
            {
              goto LABEL_116;
            }

            if (v47 != 1)
            {
              if (v47 == 2)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }
          }

LABEL_120:
          v52 = *(v9 + v55);
          *(v56 + v55) = v52;
          v53 = v52;
          swift_storeEnumTagMultiPayload();
          goto LABEL_134;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = (a1 + v15);
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_10:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_137;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 2)
      {
        if (v21 != 1)
        {
          if (!v21)
          {
            v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v23 = swift_getEnumCaseMultiPayload();
            if (v23 > 4)
            {
              if (v23 <= 7)
              {
                if (v23 == 5 || v23 == 6)
                {
                  goto LABEL_81;
                }

                goto LABEL_110;
              }

              if (v23 != 8 && v23 != 9)
              {
                goto LABEL_110;
              }

              goto LABEL_85;
            }

            if (v23 > 2)
            {
              goto LABEL_81;
            }

            if (v23 == 1)
            {
              goto LABEL_85;
            }

            if (v23 != 2)
            {
              goto LABEL_110;
            }

            goto LABEL_81;
          }

LABEL_49:
          memcpy(v8, v9, *(v11 + 64));
LABEL_136:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_137;
        }

        v28 = *v9;
        *v8 = *v9;
        v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v56 = v8;
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        v32 = v28;
        if (v31(v9 + v55, 1, v29))
        {
          goto LABEL_44;
        }

        v44 = v30;
        v8 = v56;
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 > 4)
        {
          if (v45 <= 7)
          {
            if (v45 == 5 || v45 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_133;
          }

          if (v45 != 8 && v45 != 9)
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        if (v45 > 2)
        {
          goto LABEL_116;
        }

        if (v45 == 1)
        {
          goto LABEL_120;
        }

        if (v45 != 2)
        {
          goto LABEL_133;
        }

        goto LABEL_116;
      }
    }

    v42 = *v9;
    *v8 = *v9;
    v43 = v42;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v17 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v17;
    sub_21DBF8E0C();
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v12 = sub_21DBF6C1C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = v19;
  }

LABEL_137:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v12 = sub_21DBF6C1C();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
      }

      else
      {
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
      }

      goto LABEL_138;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
        v8 = (a1 + v7);
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v23 = swift_getEnumCaseMultiPayload();
        if (v23 != 2)
        {
          if (v23 != 1)
          {
            if (!v23)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v24 = swift_getEnumCaseMultiPayload();
              if (v24 > 4)
              {
                if (v24 <= 7)
                {
                  if (v24 == 5 || v24 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v24 != 8 && v24 != 9)
                {
                  goto LABEL_111;
                }

                goto LABEL_86;
              }

              if (v24 <= 2)
              {
                if (v24 != 1)
                {
                  if (v24 == 2)
                  {
                    goto LABEL_82;
                  }

LABEL_111:
                  memcpy(v8, v9, *(*(v21 - 8) + 64));
                  goto LABEL_136;
                }

                goto LABEL_86;
              }

LABEL_82:
              v47 = sub_21DBF563C();
              (*(*(v47 - 8) + 16))(v8, v9, v47);
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v32 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v33 = *(v28 - 8);
          v34 = *(v33 + 48);
          v35 = v32;
          if (v34(v9 + v54, 1, v28))
          {
            goto LABEL_45;
          }

          v43 = v33;
          v8 = v55;
          v45 = swift_getEnumCaseMultiPayload();
          if (v45 > 4)
          {
            if (v45 <= 7)
            {
              if (v45 == 5 || v45 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v45 != 8 && v45 != 9)
            {
              goto LABEL_134;
            }

            goto LABEL_121;
          }

          if (v45 <= 2)
          {
            if (v45 != 1)
            {
              if (v45 == 2)
              {
                goto LABEL_117;
              }

LABEL_134:
              memcpy(v55 + v54, v9 + v54, *(v43 + 64));
              goto LABEL_135;
            }

            goto LABEL_121;
          }

LABEL_117:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(v55 + v54, v9 + v54, v50);
          swift_storeEnumTagMultiPayload();
LABEL_135:
          (*(v43 + 56))(v55 + v54, 0, 1, v28);
          goto LABEL_136;
        }
      }

      else
      {
        *a1 = *a2;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
        v8 = (a1 + v17);
        v9 = (a2 + v17);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 != 2)
        {
          if (v25 != 1)
          {
            if (!v25)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v26 = swift_getEnumCaseMultiPayload();
              if (v26 > 4)
              {
                if (v26 <= 7)
                {
                  if (v26 == 5 || v26 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v26 != 8 && v26 != 9)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v26 > 2)
                {
                  goto LABEL_82;
                }

                if (v26 != 1)
                {
                  if (v26 == 2)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }
              }

LABEL_86:
              v48 = *v9;
              *v8 = *v9;
              v49 = v48;
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v37 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v28 - 8);
          v39 = *(v38 + 48);
          v40 = v37;
          if (v39(v9 + v54, 1, v28))
          {
LABEL_45:
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            v8 = v55;
            memcpy(v55 + v54, v9 + v54, *(*(v36 - 8) + 64));
LABEL_136:
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          v43 = v38;
          v8 = v55;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v46 > 2)
            {
              goto LABEL_117;
            }

            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }
          }

LABEL_121:
          v51 = *(v9 + v54);
          *(v55 + v54) = v51;
          v52 = v51;
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = (a1 + v15);
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_11:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
LABEL_138:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 2)
      {
        if (v20 != 1)
        {
          if (!v20)
          {
            v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v22 = swift_getEnumCaseMultiPayload();
            if (v22 > 4)
            {
              if (v22 <= 7)
              {
                if (v22 == 5 || v22 == 6)
                {
                  goto LABEL_82;
                }

                goto LABEL_111;
              }

              if (v22 != 8 && v22 != 9)
              {
                goto LABEL_111;
              }

              goto LABEL_86;
            }

            if (v22 > 2)
            {
              goto LABEL_82;
            }

            if (v22 == 1)
            {
              goto LABEL_86;
            }

            if (v22 != 2)
            {
              goto LABEL_111;
            }

            goto LABEL_82;
          }

LABEL_50:
          memcpy(v8, v9, *(v11 + 64));
LABEL_137:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_138;
        }

        v27 = *v9;
        *v8 = *v9;
        v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v55 = v8;
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        v31 = v27;
        if (v30(v9 + v54, 1, v28))
        {
          goto LABEL_45;
        }

        v43 = v29;
        v8 = v55;
        v44 = swift_getEnumCaseMultiPayload();
        if (v44 > 4)
        {
          if (v44 <= 7)
          {
            if (v44 == 5 || v44 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_134;
          }

          if (v44 != 8 && v44 != 9)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        if (v44 > 2)
        {
          goto LABEL_117;
        }

        if (v44 == 1)
        {
          goto LABEL_121;
        }

        if (v44 != 2)
        {
          goto LABEL_134;
        }

        goto LABEL_117;
      }
    }

    v41 = *v9;
    *v8 = *v9;
    v42 = v41;
    goto LABEL_136;
  }

  return a1;
}

_BYTE *initializeWithTake for TTRUserActivityWindowSceneRestorationPayload.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
      v8 = &a1[v17];
      v9 = &a2[v17];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_13;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 1)
      {
        if (!v24)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = swift_getEnumCaseMultiPayload();
          if (v25 <= 3)
          {
            if (v25 == 2 || v25 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v25 == 4 || v25 == 5 || v25 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_40;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
LABEL_101:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = &a1[v15];
      v9 = &a2[v15];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_13:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_101;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 1)
      {
        if (!v21)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

LABEL_43:
        memcpy(v8, v9, *(v11 + 64));
LABEL_100:
        (*(v11 + 56))(v8, 0, 1, v10);
        goto LABEL_101;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
LABEL_40:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v8 + v26, &v9[v26], *(*(v29 - 8) + 64));
        goto LABEL_99;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = &a1[v7];
      v9 = &a2[v7];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_13;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 != 1)
      {
        if (!v18)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
LABEL_29:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v8, v9, v23);
            swift_storeEnumTagMultiPayload();
LABEL_99:
            swift_storeEnumTagMultiPayload();
            goto LABEL_100;
          }

LABEL_77:
          memcpy(v8, v9, *(*(v19 - 8) + 64));
          goto LABEL_99;
        }

        goto LABEL_43;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_40;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
LABEL_62:
        v32 = sub_21DBF563C();
        (*(*(v32 - 8) + 32))(v8 + v26, &v9[v26], v32);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        (*(v28 + 56))(v8 + v26, 0, 1, v27);
        goto LABEL_99;
      }

LABEL_97:
      memcpy(v8 + v26, &v9[v26], *(v28 + 64));
      goto LABEL_98;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *assignWithTake for TTRUserActivityWindowSceneRestorationPayload.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790) + 48);
      v8 = &a1[v17];
      v9 = &a2[v17];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_14;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 1)
      {
        if (!v24)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = swift_getEnumCaseMultiPayload();
          if (v25 <= 3)
          {
            if (v25 == 2 || v25 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v25 == 4 || v25 == 5 || v25 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

        goto LABEL_44;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_41;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
LABEL_102:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = &a1[v15];
      v9 = &a2[v15];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_14:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_102;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 1)
      {
        if (!v21)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

LABEL_44:
        memcpy(v8, v9, *(v11 + 64));
LABEL_101:
        (*(v11 + 56))(v8, 0, 1, v10);
        goto LABEL_102;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
LABEL_41:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(v8 + v26, &v9[v26], *(*(v29 - 8) + 64));
        goto LABEL_100;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798) + 48);
      v8 = &a1[v7];
      v9 = &a2[v7];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_14;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 != 1)
      {
        if (!v18)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
LABEL_30:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v8, v9, v23);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            swift_storeEnumTagMultiPayload();
            goto LABEL_101;
          }

LABEL_78:
          memcpy(v8, v9, *(*(v19 - 8) + 64));
          goto LABEL_100;
        }

        goto LABEL_44;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_41;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
LABEL_63:
        v32 = sub_21DBF563C();
        (*(*(v32 - 8) + 32))(v8 + v26, &v9[v26], v32);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        (*(v28 + 56))(v8 + v26, 0, 1, v27);
        goto LABEL_100;
      }

LABEL_98:
      memcpy(v8 + v26, &v9[v26], *(v28 + 64));
      goto LABEL_99;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void sub_21D67829C()
{
  sub_21D679D00(319, &qword_280D14240, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v0 <= 0x3F)
  {
    v1 = MEMORY[0x277D833E8] + 64;
    swift_getTupleTypeLayout2();
    v7 = &v6;
    swift_getTupleTypeLayout2();
    v8 = &v5;
    swift_getTupleTypeLayout2();
    v9 = &v4;
    v10 = &unk_21DC212A0;
    v2 = sub_21DBF6C1C();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v12 = v1;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRUserActivityListPayload(char *a1, char **a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(v4 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      sub_21DBF8E0C();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

void destroy for TTRUserActivityListPayload(void **a1)
{
  type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v4 = sub_21DBF6C1C();
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v3 = *a1;
  }
}

void *initializeWithCopy for TTRUserActivityListPayload(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      sub_21DBF8E0C();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = sub_21DBF6C1C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *assignWithCopy for TTRUserActivityListPayload(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = sub_21DBF6C1C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTRUserActivityListPayload(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = sub_21DBF6C1C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }
}

void *assignWithTake for TTRUserActivityListPayload(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v5 = sub_21DBF6C1C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_21D678C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRUserActivityListPayload.State(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      sub_21DBF8E0C();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

void destroy for TTRUserActivityListPayload.State(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v4 = sub_21DBF6C1C();
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v3 = *a1;
  }
}

void *initializeWithCopy for TTRUserActivityListPayload.State(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;
      sub_21DBF8E0C();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *assignWithCopy for TTRUserActivityListPayload.State(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = sub_21DBF6C1C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      goto LABEL_12;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *initializeWithTake for TTRUserActivityListPayload.State(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *assignWithTake for TTRUserActivityListPayload.State(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityListPayload.State);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v6 = sub_21DBF6C1C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_21D67937C()
{
  result = sub_21DBF6C1C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *_s13ExtractedInfoVwCP(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *v4 = *a2;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v6;
    v7 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v7;
    v8 = *(a3 + 24);
    v9 = sub_21DBF54CC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (v11(&a2[v8], 1, v9))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
      memcpy(&v4[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v4[v8], &a2[v8], v9);
      (*(v10 + 56))(&v4[v8], 0, 1, v9);
    }
  }

  return v4;
}

uint64_t _s13ExtractedInfoVwxx(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = sub_21DBF54CC();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

char *_s13ExtractedInfoVwcp(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v6;
  v7 = *(a3 + 24);
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v10(&a2[v7], 1, v8))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(&a1[v7], &a2[v7], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  return a1;
}

char *_s13ExtractedInfoVwca(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_21DBF8E0C();

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  sub_21DBF8E0C();

  v6 = *(a3 + 24);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      return a1;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    return a1;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
  return a1;
}

char *_s13ExtractedInfoVwtk(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  return a1;
}

char *_s13ExtractedInfoVwta(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = *(a3 + 24);
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v10 + 32))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
  return a1;
}

void sub_21D679C4C()
{
  sub_21D679D00(319, &qword_280D1B888, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D679D00(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D679D54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21D679D9C()
{
  result = qword_280D178F0;
  if (!qword_280D178F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D178F0);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRDateChangeType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t destroy for TTRDateChangeType(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = sub_21DBF509C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *initializeWithCopy for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithCopy for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t type metadata accessor for TTRDateChangeType()
{
  result = qword_280D163C8;
  if (!qword_280D163C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *initializeWithTake for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRDateChangeType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = sub_21DBF509C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_21D67A4C0()
{
  result = sub_21DBF509C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_21D67A548@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v53 = a1;
  v54 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8B0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = sub_21DBF5A2C();
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v55 = sub_21DBF509C();
  v15 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D450204(v3, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v54;
    v29 = v23;
    v27 = v55;
    (*(v15 + 32))(v54, v29, v55);
LABEL_33:
    v30 = 0;
    return (*(v15 + 56))(v28, v30, 1, v27);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v15 + 32);
    v26 = v23;
    v27 = v55;
    v25(v20, v26, v55);
    sub_21D1A91F8(v53, v14);
    if ((*(v15 + 48))(v14, 1, v27) == 1)
    {
      sub_21D0CF7E0(v14, &qword_27CE58D60);
      v28 = v54;
      v25(v54, v20, v27);
    }

    else
    {
      v31 = v25;
      v32 = v17;
      v33 = v17;
      v34 = v31;
      v31(v33, v14, v27);
      sub_21DBF505C();
      v35 = v52;
      if ((*(v52 + 48))(v8, 1, v9) == 1)
      {
        sub_21D0CF7E0(v8, &qword_27CE5A8B0);
      }

      else
      {
        (*(v35 + 32))(v11, v8, v9);
        v36 = *(v35 + 16);
        v37 = v35;
        v38 = v51;
        v36(v51, v11, v9);
        (*(v37 + 56))(v38, 0, 1, v9);
        sub_21DBF506C();
        (*(v37 + 8))(v11, v9);
      }

      v28 = v54;
      sub_21DBF4F2C();
      if ((v39 & 1) == 0)
      {
        sub_21DBF4F3C();
      }

      sub_21DBF4F7C();
      if ((v40 & 1) == 0)
      {
        sub_21DBF4F8C();
      }

      sub_21DBF4F9C();
      if ((v41 & 1) == 0)
      {
        sub_21DBF4FAC();
      }

      sub_21DBF4F0C();
      if ((v42 & 1) == 0)
      {
        sub_21DBF4F1C();
      }

      sub_21DBF502C();
      if ((v43 & 1) == 0)
      {
        sub_21DBF503C();
      }

      sub_21DBF4E7C();
      if ((v44 & 1) == 0)
      {
        sub_21DBF4E8C();
      }

      sub_21DBF500C();
      if ((v45 & 1) == 0)
      {
        sub_21DBF501C();
      }

      sub_21DBF4E5C();
      if ((v46 & 1) == 0)
      {
        sub_21DBF4E6C();
      }

      sub_21DBF4E0C();
      if ((v47 & 1) == 0)
      {
        sub_21DBF4E1C();
      }

      sub_21DBF4E9C();
      if ((v48 & 1) == 0)
      {
        sub_21DBF4EAC();
      }

      if (sub_21DBF4E3C() != 2)
      {
        sub_21DBF4E4C();
      }

      v27 = v55;
      (*(v15 + 8))(v20, v55);
      v34(v28, v32, v27);
    }

    goto LABEL_33;
  }

  v30 = 1;
  v28 = v54;
  v27 = v55;
  return (*(v15 + 56))(v28, v30, 1, v27);
}

uint64_t TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_21D0D32E4(a1, v19);
  type metadata accessor for MainProcessorContext();
  swift_allocObject();
  v6 = sub_21D67B728(v19);
  type metadata accessor for HashtagProcessor();
  inited = swift_initStackObject();
  *(inited + 16) = v6;
  *(inited + 24) = &off_282ECAC40;

  sub_21D67BA00(v19);
  v8 = v19[1];
  v9 = v20;
  *(v6 + 16) = v19[0];
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;

  if ((v5 & 2) != 0)
  {
    type metadata accessor for InlineHashtagResurrectionProcessor();
    v10 = swift_initStackObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = &off_282ECAC00;
    sub_21D67ADA8();
  }

  if (v5)
  {
    type metadata accessor for URLDetectionProcessor();
    v11 = swift_initStackObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = &off_282ECAC28;
    v12 = byte_282EA6338;

    sub_21D67C084(v12);
    sub_21D67C084(byte_282EA6339);
  }

  v13 = sub_21D67B67C(0);
  v14 = sub_21D67B67C(1);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = *(v6 + 16);
  v16 = *(v6 + 24);
  v17 = *(v6 + 32);
  sub_21DBF8E0C();
  sub_21DBF8E0C();

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

id TTRReminderViewModelComputedProperties.modifiedTitle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRReminderViewModelComputedProperties.modifiedNotes.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRReminderViewModelComputedProperties.hashtagData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t sub_21D67ADA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v1 - 8);
  v86 = &v72 - v2;
  v3 = sub_21DBF5B9C();
  MEMORY[0x28223BE20](v3);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  result = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v95 = *(v8 + 16);
  v96 = result;
  *&v97 = v10;
  *(&v97 + 1) = v11;
  if (*(v11 + 16))
  {
    v73 = v5;
    v74 = v4;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF5B8C();
    if (v10 >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v13 = 0;
      v81 = v10 & 0xC000000000000001;
      v80 = v10 & 0xFFFFFFFFFFFFFF8;
      v79 = v10 + 32;
      v75 = v11 + 56;
      v83 = v94;
      v14 = &unk_282EA6000;
      v77 = v11;
      v85 = v8;
      v82 = v7;
      v78 = v10;
      v76 = i;
      while (1)
      {
        if (v81)
        {
          v15 = MEMORY[0x223D44740](v13, v10);
        }

        else
        {
          if (v13 >= *(v80 + 16))
          {
            goto LABEL_52;
          }

          v15 = *(v79 + 8 * v13);
        }

        v88 = v15;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v84 = v13 + 1;
        v16 = [v88 objectIdentifier];
        v17 = sub_21DBFA16C();
        v19 = v18;

        if (!*(v11 + 16) || (sub_21DBFC7DC(), sub_21DBFA27C(), v20 = sub_21DBFC82C(), v21 = -1 << *(v11 + 32), v22 = v20 & ~v21, v23 = v75, ((*(v75 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0))
        {
LABEL_5:

          goto LABEL_6;
        }

        v10 = ~v21;
        while (1)
        {
          v24 = (*(v11 + 48) + 16 * v22);
          v25 = *v24 == v17 && v24[1] == v19;
          if (v25 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v10;
          if (((*(v23 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_beginAccess();
        v11 = byte_282EA6310;
        v26 = *(v8 + 96);
        v7 = &selRef_setAttributedText_;
        if (*(v26 + 16) <= byte_282EA6310)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          break;
        }

        v27 = 0;
        v28 = 0;
        v87 = v13;
        while (1)
        {
          v29 = *(v26 + 8 * v11 + 32);
          if (v29)
          {
            v89 = v28;
            v30 = v29;
            goto LABEL_31;
          }

          v31 = *(v8 + 88);
          if (*(v31 + 16) <= v11)
          {
            goto LABEL_50;
          }

          v32 = *(v31 + 8 * v11 + 32);
          if (v32)
          {
            break;
          }

LABEL_42:
          if (v28)
          {
            if (v27)
            {
              goto LABEL_47;
            }

LABEL_24:
            v28 = 1;
            goto LABEL_25;
          }

LABEL_43:
          if (v27)
          {
            goto LABEL_6;
          }

          v28 = 0;
LABEL_25:
          v11 = v14[785];
          v26 = *(v8 + 96);
          v27 = 1;
          if (*(v26 + 16) <= v11)
          {
            goto LABEL_49;
          }
        }

        v89 = v28;
        v30 = v32;
        v29 = 0;
LABEL_31:
        v33 = v29;
        v10 = [v30 string];
        v34 = sub_21DBFA16C();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (!v37)
        {
          goto LABEL_41;
        }

        v10 = [v88 name];
        v38 = sub_21DBFA16C();
        v40 = v39;

        v41 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v41 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (!v41)
        {
LABEL_41:

          LOBYTE(v28) = v89;
          goto LABEL_42;
        }

        v42 = sub_21DBFA23C();
        v44 = v43;
        v45 = [v88 name];
        v46 = sub_21DBFA16C();
        v48 = v47;

        aBlock = v42;
        v93 = v44;
        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v46, v48);

        v49 = aBlock;
        v50 = v93;
        v51 = [v30 string];
        v52 = sub_21DBFA16C();
        v54 = v53;

        aBlock = v52;
        v93 = v54;
        v90 = v49;
        v91 = v50;
        v55 = sub_21DBF582C();
        v56 = v86;
        (*(*(v55 - 8) + 56))(v86, 1, 1, v55);
        sub_21D176F0C();
        v10 = sub_21DBFBBAC();
        v58 = v57;
        LOBYTE(v49) = v59;
        v60 = v56;
        v7 = &selRef_setAttributedText_;
        sub_21D0CF7E0(v60, &unk_27CE65010);

        if (v49 & 1) != 0 || (aBlock = v10, v93 = v58, v61 = [v30 string], v62 = sub_21DBFA16C(), v64 = v63, v61, v90 = v62, v91 = v64, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB00), sub_21D0D0F1C(&qword_280D178A0, &unk_27CE5FB00), v10 = sub_21DBFB9DC(), v66 = v65, v67 = swift_allocObject(), *(v67 + 16) = 0, v68 = (v67 + 16), v94[2] = sub_21D24BDA4, v94[3] = v67, aBlock = MEMORY[0x277D85DD0], v93 = 1107296256, v94[0] = sub_21D472974, v94[1] = &block_descriptor_71, v69 = _Block_copy(&aBlock), , , objc_msgSend(v30, sel_rem_enumerateHashtagInRange_options_usingBlock_, v10, v66, 0x100000, v69), _Block_release(v69), swift_beginAccess(), LOBYTE(v68) = *v68, , (v68))
        {

          v8 = v85;
          if (v89)
          {
            goto LABEL_46;
          }

          v14 = &unk_282EA6000;
          goto LABEL_43;
        }

        v70 = v88;
        v8 = v85;
        sub_21D67D2C0((v11 & 1), v85, v70, v10, v66);

LABEL_46:
        v14 = &unk_282EA6000;
        if ((v27 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_47:
        sub_21DBF5AFC();
LABEL_6:

        v13 = v84;
        v7 = v82;
        v10 = v78;
        v11 = v77;
        if (v84 == v76)
        {
          goto LABEL_54;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

LABEL_54:
    if ((sub_21DBF5B1C() & 1) == 0)
    {
      sub_21D25CC08();
    }

    (*(v73 + 8))(v7, v74);
    v71 = v96;
    *(v8 + 16) = v95;
    *(v8 + 24) = v71;
    *(v8 + 32) = v97;
  }

  return result;
}