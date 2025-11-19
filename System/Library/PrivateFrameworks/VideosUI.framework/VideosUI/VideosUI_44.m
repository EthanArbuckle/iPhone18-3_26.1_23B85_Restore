uint64_t sub_1E39A2D18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v25 = *a4;
    v7 = (*a4 + 8 * a3 - 8);
    v8 = result - a3;
    while (2)
    {
      v23 = v7;
      v24 = a3;
      v9 = *(v25 + 8 * a3);
      v22 = v8;
      do
      {
        v10 = *v7;
        v11 = *(*v9 + 1208);

        v13 = v11(v12);
        (*(*v10 + 1208))(v13);
        sub_1E399FA2C();
        v15 = v14;

        v17 = a6 == 1 && v15 == -1;
        v18 = v15 == 1 && a6 == -1;
        if (v18 || v17)
        {
          break;
        }

        if (!v25)
        {
          __break(1u);
          return result;
        }

        v19 = *v7;
        v9 = v7[1];
        *v7 = v9;
        v7[1] = v19;
        --v7;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v24 + 1;
      v7 = v23 + 1;
      v8 = v22 - 1;
      if (v24 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E39A2EB0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, id *a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_retain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_127:
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_171;
    }

    swift_retain_n();
    v10 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_165:
      v10 = sub_1E37FFF5C(v10);
    }

    v109 = (v10 + 16);
    v110 = *(v10 + 16);
    for (i = v10; ; v10 = i)
    {
      if (v110 < 2)
      {
      }

      v111 = *a3;
      if (!*a3)
      {
        goto LABEL_168;
      }

      v112 = (v10 + 16 * v110);
      v113 = *v112;
      v114 = v109;
      v115 = &v109[2 * v110];
      v10 = v115[1];
      v116 = (v111 + 8 * *v112);
      v117 = (v111 + 8 * *v115);
      v140 = (v111 + 8 * v10);

      sub_1E39A4270(v116, v117, v140, __dst, a5);
      if (v128)
      {
        break;
      }

      if (v10 < v113)
      {
        goto LABEL_156;
      }

      if (v110 - 2 >= *v114)
      {
        goto LABEL_157;
      }

      v109 = v114;
      *v112 = v113;
      v112[1] = v10;
      v118 = *v114 - v110;
      if (*v114 < v110)
      {
        goto LABEL_158;
      }

      v110 = *v114 - 1;
      memmove(v115, v115 + 2, 16 * v118);
      *v114 = v110;
    }
  }

  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = &selRef_processPendingChanges;
  v140 = a5;
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_40;
    }

    v12 = v7;
    v13 = *a3;
    *&v139[0] = *(*a3 + 8 * v11);
    *&v138[0] = *(v13 + 8 * v7);
    v14 = *&v138[0];
    v15 = *&v139[0];
    v16 = v14;
    v133 = sub_1E399F390(v139, v138, a5);
    if (v128)
    {
    }

    swift_beginAccess();
    swift_beginAccess();
    v17 = v13 + 8 * v12;
    v121 = v12;
    v10 = 8 * v12;
    v18 = (v17 + 16);
    v9 = &selRef_processPendingChanges;
    v131 = v6;
    while (1)
    {
      if (v11 + 1 >= v6)
      {
        goto LABEL_30;
      }

      v19 = *(v18 - 1);
      __dst = v18;
      v20 = *v18;
      v21 = v19;
      v22 = [v20 v9[323]];
      if (!v22)
      {
        v22 = v20;
      }

      v23 = [v21 v9[323]];
      if (!v23)
      {
        v23 = v21;
      }

      v24 = sub_1E4205ED4();

      v25 = [v22 valueForProperty_];

      if (!v25)
      {
        goto LABEL_26;
      }

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E329504C(v138, v139);

      v26 = sub_1E4205ED4();

      v27 = [v23 valueForProperty_];

      if (!v27)
      {
        __swift_destroy_boxed_opaque_existential_1(v139);
LABEL_26:

        goto LABEL_27;
      }

      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E329504C(v137, v138);
      sub_1E399F56C();
      a5 = v140;
      v29 = v28;

      __swift_destroy_boxed_opaque_existential_1(v138);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v30 = a5[7];

      if (v30 != 1 || v29 != 1)
      {
        break;
      }

LABEL_27:
      v6 = v131;
      if (v133)
      {
        v6 = v11 + 1;
        v9 = &selRef_processPendingChanges;
        goto LABEL_31;
      }

LABEL_28:
      v18 = __dst + 1;
      ++v11;
      v9 = &selRef_processPendingChanges;
    }

    v33 = v30 != 2 || v29 != -1;
    v6 = v131;
    if (v133 == v33)
    {
      goto LABEL_28;
    }

    v6 = v11 + 1;
    v9 = &selRef_processPendingChanges;
LABEL_30:
    if (!v133)
    {
LABEL_38:
      v11 = v6;
      v10 = v121;
      goto LABEL_40;
    }

LABEL_31:
    v34 = v121;
    if (v6 < v121)
    {
      goto LABEL_162;
    }

    if (v121 < v6)
    {
      v35 = 8 * v6 - 8;
      v36 = v6;
      do
      {
        if (v34 != --v36)
        {
          v37 = *a3;
          if (!*a3)
          {
            goto LABEL_169;
          }

          v38 = *(v37 + v10);
          *(v37 + v10) = *(v37 + v35);
          *(v37 + v35) = v38;
        }

        ++v34;
        v35 -= 8;
        v10 += 8;
      }

      while (v34 < v36);
      goto LABEL_38;
    }

    v11 = v6;
    v10 = v121;
LABEL_40:
    v39 = a3[1];
    if (v11 >= v39)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_161;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_73;
    }

    v40 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_163;
    }

    if (v40 >= v39)
    {
      v40 = a3[1];
    }

    if (v40 < v10)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    if (v11 == v40)
    {
      goto LABEL_73;
    }

    v132 = *a3;
    v122 = v10;
    v41 = v10 - v11;
    v42 = *a3 + 8 * v11 - 8;
    v124 = v40;
LABEL_49:
    swift_beginAccess();
    swift_beginAccess();
    v129 = v11;
    v43 = *(v132 + 8 * v11);
    v44 = v41;
    v125 = v42;
    v134 = v41;
LABEL_50:
    v45 = *v42;
    v46 = v43;
    v47 = v45;
    v48 = [v46 v9[323]];
    if (!v48)
    {
      v48 = v46;
    }

    __dst = v46;
    v49 = [v47 v9[323]];
    if (!v49)
    {
      v49 = v47;
    }

    v50 = v47;

    v51 = sub_1E4205ED4();

    v52 = [v48 valueForProperty_];

    if (!v52)
    {
      goto LABEL_69;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v138, v139);

    v53 = sub_1E4205ED4();

    v54 = [v49 valueForProperty_];

    if (!v54)
    {
      __swift_destroy_boxed_opaque_existential_1(v139);
LABEL_69:

      v9 = &selRef_processPendingChanges;
      v59 = v134;
      goto LABEL_71;
    }

    sub_1E4207264();
    swift_unknownObjectRelease();
    sub_1E329504C(v137, v138);
    sub_1E399F56C();
    a5 = v140;
    v56 = v55;

    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v139);
    v57 = a5[7];

    v58 = v57 == 1 && v56 == 1;
    v59 = v134;
    if (!v58)
    {
      break;
    }

    v9 = &selRef_processPendingChanges;
LABEL_71:
    v11 = v129 + 1;
    v42 = v125 + 8;
    v41 = v59 - 1;
    if (v129 + 1 != v124)
    {
      goto LABEL_49;
    }

    v11 = v124;
    v10 = v122;
LABEL_73:
    if (v11 < v10)
    {
      goto LABEL_160;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1E37FFF70(0, *(v8 + 2) + 1, 1, v8);
    }

    v63 = *(v8 + 2);
    v62 = *(v8 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v8 = sub_1E37FFF70((v62 > 1), v63 + 1, 1, v8);
    }

    *(v8 + 2) = v64;
    v65 = v8 + 32;
    v66 = &v8[16 * v63 + 32];
    *v66 = v10;
    v66[1] = v11;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    v130 = v11;
    if (v63)
    {
      v135 = v8 + 32;
      while (1)
      {
        v67 = v64 - 1;
        v68 = &v65[16 * v64 - 16];
        v69 = &v8[16 * v64];
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v8 + 4);
          v71 = *(v8 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_94:
          if (v73)
          {
            goto LABEL_147;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_150;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_153;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_155;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        if (v64 < 2)
        {
          goto LABEL_149;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_109:
        if (v88)
        {
          goto LABEL_152;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_154;
        }

        if (v95 < v87)
        {
          goto LABEL_123;
        }

LABEL_116:
        if (v67 - 1 >= v64)
        {
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
          goto LABEL_164;
        }

        v99 = *a3;
        if (!*a3)
        {
          goto LABEL_167;
        }

        v10 = v8;
        v100 = &v65[16 * v67 - 16];
        v101 = *v100;
        v102 = v67;
        v103 = &v65[16 * v67];
        v104 = *(v103 + 1);
        v105 = (v99 + 8 * *v100);
        v106 = (v99 + 8 * *v103);
        v107 = (v99 + 8 * v104);
        a5 = v140;

        sub_1E39A4270(v105, v106, v107, __dst, a5);
        if (v128)
        {
        }

        if (v104 < v101)
        {
          goto LABEL_142;
        }

        v108 = *(v10 + 16);
        if (v102 > v108)
        {
          goto LABEL_143;
        }

        *v100 = v101;
        *(v100 + 1) = v104;
        if (v102 >= v108)
        {
          goto LABEL_144;
        }

        v64 = v108 - 1;
        memmove(v103, v103 + 16, 16 * (v108 - 1 - v102));
        v8 = v10;
        *(v10 + 16) = v108 - 1;
        v9 = &selRef_processPendingChanges;
        v65 = v135;
        if (v108 <= 2)
        {
          goto LABEL_123;
        }
      }

      v74 = &v65[16 * v64];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_145;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_146;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_148;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_151;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_159;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_94;
    }

LABEL_123:
    v6 = a3[1];
    v7 = v130;
    a5 = v140;
    if (v130 >= v6)
    {
      goto LABEL_127;
    }
  }

  if (v57 == 2)
  {
    v9 = &selRef_processPendingChanges;
    if (v56 == -1)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v9 = &selRef_processPendingChanges;
  }

  if (v132)
  {
    v60 = *v42;
    v43 = *(v42 + 8);
    *v42 = v43;
    *(v42 + 8) = v60;
    v42 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

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
  return result;
}

uint64_t sub_1E39A39B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v110 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_121:
    v120 = *v110;
    if (!*v110)
    {
      goto LABEL_163;
    }

    v7 = v6;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_123:
      v100 = v10 + 2;
      v101 = v10[2];
      while (v101 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_160;
        }

        v102 = v10;
        v103 = &v10[2 * v101];
        v104 = *v103;
        v10 = &v100[2 * v101];
        v105 = v10[1];
        sub_1E39A4570((*a3 + 8 * *v103), (*a3 + 8 * *v10), (*a3 + 8 * v105), v120, a5, a6);
        if (v7)
        {
          break;
        }

        if (v105 < v104)
        {
          goto LABEL_148;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_149;
        }

        *v103 = v104;
        v103[1] = v105;
        v106 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_150;
        }

        v101 = *v100 - 1;
        result = memmove(v10, v10 + 2, 16 * v106);
        *v100 = v101;
        v10 = v102;
      }
    }

LABEL_157:
    result = sub_1E37FFF5C(v10);
    v10 = result;
    goto LABEL_123;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v8)
    {
      v108 = v10;
      v120 = v6;
      v12 = *a3;
      v7 = *(*a3 + 8 * v11);
      v13 = *(**(*a3 + 8 * v9) + 1208);
      v14 = v11;
      v114 = v8;

      v16 = v13(v15);
      (*(*v7 + 1208))(v16);
      v10 = v17;
      sub_1E399FA2C();
      v19 = v18;

      v21 = a6 == 1 && v19 == -1;
      if (a6 == -1 && v19 == 1)
      {
        v21 = 1;
      }

      v112 = v21;
      v23 = v114;
      v24 = v12 + 8 * v14 + 16;
      for (i = 8 * v14 + 8; ; i += 8)
      {
        v117 = v9++;
        if (v9 >= v23)
        {
          break;
        }

        v10 = *(v24 - 8);
        v26 = *(**v24 + 1208);

        v28 = v26(v27);
        v7 = v29;
        (*(*v10 + 1208))(v28);
        sub_1E399FA2C();
        v31 = v30;

        if (a6 == -1 && v31 == 1)
        {
          v23 = v114;
          if (!v112)
          {
            goto LABEL_30;
          }
        }

        else if (a6 == 1)
        {
          v23 = v114;
          if (((v112 ^ (v31 != -1)) & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v23 = v114;
          if (v112)
          {
            v9 = v117 + 1;
            goto LABEL_40;
          }
        }

        v24 += 8;
      }

      if (v112)
      {
LABEL_40:
        v6 = v120;
        v10 = v108;
        v11 = v14;
        goto LABEL_41;
      }

LABEL_30:
      v33 = v117;
      v9 = v117 + 1;
      v11 = v14;
      if (v117 + 1 < v14)
      {
        goto LABEL_154;
      }

      if (v14 >= v9)
      {
        v6 = v120;
        v10 = v108;
      }

      else
      {
        v34 = v14;
        v6 = v120;
        v10 = v108;
        v35 = 8 * v14;
        do
        {
          if (v34 != v33)
          {
            v36 = *a3;
            if (!*a3)
            {
              goto LABEL_161;
            }

            v37 = *(v36 + v35);
            *(v36 + v35) = *(v36 + i);
            *(v36 + i) = v37;
          }

          ++v34;
          i -= 8;
          v35 += 8;
          v38 = v34 < v33--;
        }

        while (v38);
      }
    }

LABEL_41:
    v39 = a3[1];
    if (v9 < v39)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_153;
      }

      if (v9 - v11 < a4)
      {
        break;
      }
    }

LABEL_68:
    if (v9 < v11)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v120 = v6;
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, v10[2] + 1, 1, v10);
      v10 = result;
    }

    v57 = v10[2];
    v56 = v10[3];
    v7 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v10);
      v10 = result;
    }

    v10[2] = v7;
    v58 = v10 + 4;
    v59 = &v10[2 * v57 + 4];
    *v59 = v11;
    v59[1] = v9;
    v119 = *v110;
    if (!*v110)
    {
      goto LABEL_162;
    }

    if (v57)
    {
      while (1)
      {
        v60 = v7 - 1;
        v61 = &v58[2 * v7 - 2];
        v62 = &v10[2 * v7];
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v63 = v10[4];
          v64 = v10[5];
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_88:
          if (v66)
          {
            goto LABEL_139;
          }

          v78 = *v62;
          v77 = v62[1];
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_142;
          }

          v82 = v61[1];
          v83 = v82 - *v61;
          if (__OFSUB__(v82, *v61))
          {
            goto LABEL_145;
          }

          if (__OFADD__(v80, v83))
          {
            goto LABEL_147;
          }

          if (v80 + v83 >= v65)
          {
            if (v65 < v83)
            {
              v60 = v7 - 2;
            }

            goto LABEL_110;
          }

          goto LABEL_103;
        }

        if (v7 < 2)
        {
          goto LABEL_141;
        }

        v85 = *v62;
        v84 = v62[1];
        v73 = __OFSUB__(v84, v85);
        v80 = v84 - v85;
        v81 = v73;
LABEL_103:
        if (v81)
        {
          goto LABEL_144;
        }

        v87 = *v61;
        v86 = v61[1];
        v73 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v73)
        {
          goto LABEL_146;
        }

        if (v88 < v80)
        {
          goto LABEL_117;
        }

LABEL_110:
        if (v60 - 1 >= v7)
        {
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
          goto LABEL_156;
        }

        if (!*a3)
        {
          goto LABEL_159;
        }

        v92 = v9;
        v93 = &v58[2 * v60 - 2];
        v94 = *v93;
        v95 = v58;
        v7 = v60;
        v96 = &v58[2 * v60];
        v97 = v96[1];
        sub_1E39A4570((*a3 + 8 * *v93), (*a3 + 8 * *v96), (*a3 + 8 * v97), v119, a5, a6);
        if (v120)
        {
        }

        if (v97 < v94)
        {
          goto LABEL_134;
        }

        v98 = v10;
        v10 = v10[2];
        if (v7 > v10)
        {
          goto LABEL_135;
        }

        *v93 = v94;
        v93[1] = v97;
        if (v7 >= v10)
        {
          goto LABEL_136;
        }

        v99 = v7;
        v120 = 0;
        v7 = v10 - 1;
        result = memmove(v96, v96 + 2, 16 * (v10 - v99 - 1));
        v98[2] = v10 - 1;
        v38 = v10 > 2;
        v10 = v98;
        v9 = v92;
        v58 = v95;
        if (!v38)
        {
          goto LABEL_117;
        }
      }

      v67 = &v58[2 * v7];
      v68 = *(v67 - 8);
      v69 = *(v67 - 7);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_137;
      }

      v72 = *(v67 - 6);
      v71 = *(v67 - 5);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_138;
      }

      v74 = v62[1];
      v75 = v74 - *v62;
      if (__OFSUB__(v74, *v62))
      {
        goto LABEL_140;
      }

      v73 = __OFADD__(v65, v75);
      v76 = v65 + v75;
      if (v73)
      {
        goto LABEL_143;
      }

      if (v76 >= v70)
      {
        v90 = *v61;
        v89 = v61[1];
        v73 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v73)
        {
          goto LABEL_151;
        }

        if (v65 < v91)
        {
          v60 = v7 - 2;
        }

        goto LABEL_110;
      }

      goto LABEL_88;
    }

LABEL_117:
    v8 = a3[1];
    v6 = v120;
    if (v9 >= v8)
    {
      goto LABEL_121;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_155;
  }

  if (v11 + a4 >= v39)
  {
    v40 = a3[1];
  }

  else
  {
    v40 = v11 + a4;
  }

  if (v40 < v11)
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  if (v9 == v40)
  {
    goto LABEL_68;
  }

  v109 = v11;
  v120 = v6;
  v41 = v9;
  v42 = *a3;
  v43 = (*a3 + 8 * v41 - 8);
  v44 = v11 - v41;
  v111 = v40;
LABEL_51:
  v118 = v41;
  v7 = *(v42 + 8 * v41);
  v113 = v44;
  v115 = v43;
  while (1)
  {
    v45 = *v43;
    v46 = *(*v7 + 1208);

    v48 = v46(v47);
    (*(*v45 + 1208))(v48);
    sub_1E399FA2C();
    v50 = v49;

    v52 = a6 == 1 && v50 == -1;
    v53 = v50 == 1 && a6 == -1;
    if (v53 || v52)
    {
LABEL_66:
      v41 = v118 + 1;
      v43 = v115 + 1;
      v44 = v113 - 1;
      if (v118 + 1 == v111)
      {
        v9 = v111;
        v6 = v120;
        v11 = v109;
        goto LABEL_68;
      }

      goto LABEL_51;
    }

    if (!v42)
    {
      break;
    }

    v54 = *v43;
    v7 = v43[1];
    *v43 = v7;
    v43[1] = v54;
    --v43;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_66;
    }
  }

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
  return result;
}

uint64_t sub_1E39A4270(void **__src, id *a2, id *a3, void **__dst, uint64_t a5)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    if (__dst != __src || &__src[v9] <= __dst)
    {
      memmove(__dst, __src, 8 * v9);
    }

    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_40;
      }

      v14 = v12;
      v15 = v8;
      v56 = *v7;
      v16 = v5;
      v55 = *v5;
      v17 = v55;
      v18 = v56;
      v19 = v17;
      v20 = sub_1E399F390(&v56, &v55, a5);
      if (v54)
      {

        v45 = v16;
        v46 = v14 - v16;
        v47 = v15 < v16 || v15 >= &v16[v46];
        if (v47 || v15 != v16)
        {
          v43 = 8 * v46;
          v44 = v15;
          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v21 = v20;

      v12 = v14;
      if (!v21)
      {
        break;
      }

      v22 = v7;
      v23 = v15;
      v24 = v15 == v7++;
      v5 = v16;
      if (!v24)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 = (v23 + 1);
    }

    v22 = v16;
    v5 = v16 + 1;
    v23 = v15;
    if (v15 == v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v23 = *v22;
    goto LABEL_19;
  }

  if (__dst != a2 || &a2[v10] <= __dst)
  {
    memmove(__dst, a2, 8 * v10);
  }

  v12 = &v5[v10];
  v26 = -v5;
  __srca = v5;
LABEL_26:
  v27 = v7 - 1;
  --v6;
  v28 = v12 + v26;
  v51 = v7;
  while (1)
  {
    if (v12 <= v5 || v7 <= v8)
    {
LABEL_40:
      v41 = v12 - v5;
      v42 = v7 < v5 || v7 >= &v5[v41];
      if (v42 || v7 != v5)
      {
        v43 = 8 * v41;
        v44 = v7;
        v45 = v5;
        goto LABEL_58;
      }

      goto LABEL_59;
    }

    v52 = v28;
    v30 = v26;
    v31 = v8;
    v32 = v12;
    v33 = *--v12;
    v56 = v33;
    v34 = v27;
    v55 = *v27;
    v35 = v55;
    v36 = v33;
    v37 = v35;
    v38 = sub_1E399F390(&v56, &v55, a5);
    if (v54)
    {
      break;
    }

    v39 = v38;

    v40 = v6 + 1;
    if (v39)
    {
      v5 = __srca;
      v8 = v31;
      v26 = v30;
      v7 = v34;
      v12 = v32;
      if (v40 != v51)
      {
        *v6 = *v34;
        v7 = v34;
      }

      goto LABEL_26;
    }

    v5 = __srca;
    v8 = v31;
    v26 = v30;
    v27 = v34;
    if (v32 != v40)
    {
      *v6 = *v12;
    }

    --v6;
    v7 = v51;
    v28 = (v52 - 8);
  }

  v44 = v51;
  v45 = __srca;
  v48 = v51 < __srca || v51 >= &__srca[v52 / 8];
  if (v48 || v51 != __srca)
  {
    v43 = 8 * (v52 / 8);
LABEL_58:
    memmove(v44, v45, v43);
  }

LABEL_59:

  return 1;
}

uint64_t sub_1E39A4570(char *__src, char *__dst, char *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = (__dst - __src) / 8;
  v11 = (a3 - __dst) / 8;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[8 * v10];
    v43 = v7;
    for (i = v13; ; v13 = i)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_58;
      }

      v15 = *v6;
      v16 = *(**v8 + 1208);

      v18 = v16(v17);
      (*(*v15 + 1208))(v18);
      sub_1E399FA2C();
      v20 = v19;

      v21 = a6 == 1 && v20 == -1;
      v22 = v21;
      v23 = v20 == 1 && a6 == -1;
      if (v23 || v22)
      {
        break;
      }

      v24 = v8;
      v21 = v9 == v8;
      v8 += 8;
      if (!v21)
      {
        goto LABEL_27;
      }

LABEL_28:
      v9 += 8;
      v7 = v43;
    }

    v24 = v6;
    v21 = v9 == v6;
    v6 += 8;
    if (v21)
    {
      goto LABEL_28;
    }

LABEL_27:
    *v9 = *v24;
    goto LABEL_28;
  }

  if (a4 != __dst || &__dst[8 * v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[8 * v11];
  v41 = v9;
  v42 = v6;
LABEL_35:
  v26 = (v8 - 8);
  v7 -= 8;
  v44 = v8 - 8;
  while (v13 > v6 && v8 > v9)
  {
    v47 = v13;
    v28 = v13 - 8;
    v29 = *v26;
    v30 = *(**(v13 - 1) + 1208);

    v32 = v30(v31);
    (*(*v29 + 1208))(v32);
    sub_1E399FA2C();
    v34 = v33;

    v36 = a6 == 1 && v34 == -1;
    v37 = v34 == 1 && a6 == -1;
    if (!v37 && !v36)
    {
      v21 = v7 + 8 == v8;
      v6 = v42;
      v8 -= 8;
      v9 = v41;
      v13 = v47;
      if (!v21)
      {
        *v7 = *v44;
        v8 = v44;
      }

      goto LABEL_35;
    }

    if (v47 != v7 + 8)
    {
      *v7 = *v28;
    }

    v7 -= 8;
    v13 = v28;
    v9 = v41;
    v6 = v42;
    v26 = (v8 - 8);
  }

LABEL_58:
  v38 = (v13 - v6) / 8;
  if (v8 != v6 || v8 >= &v6[8 * v38])
  {
    memmove(v8, v6, 8 * v38);
  }

  return 1;
}

uint64_t sub_1E39A4920(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1;
  if (sub_1E32AE9B0(a1))
  {
    v6 = OUTLINED_FUNCTION_41_23();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6);
    v7 = sub_1E4207464();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CD0];
  }

  v26 = sub_1E32AE9B0(v5);
  if (v26)
  {
    v8 = 0;
    v9 = v7 + 56;
    v24 = v5;
    v25 = v5 & 0xC000000000000001;
    v23 = v5 + 32;
    while (1)
    {
      sub_1E34AF4E4(v8, v25 == 0, v5);
      if (v25)
      {
        v10 = OUTLINED_FUNCTION_102_3();
        result = MEMORY[0x1E6911E60](v10);
      }

      else
      {
        result = *(v23 + 8 * v8);
      }

      v12 = result;
      v13 = __OFADD__(v8++, 1);
      if (v13)
      {
        break;
      }

      result = sub_1E4206F54();
      v14 = ~(-1 << *(v7 + 32));
      while (1)
      {
        v15 = result & v14;
        v16 = (result & v14) >> 6;
        v17 = *(v9 + 8 * v16);
        v18 = 1 << (result & v14);
        if ((v18 & v17) == 0)
        {
          break;
        }

        sub_1E3280A90(0, a4);
        v19 = *(*(v7 + 48) + 8 * v15);
        v20 = sub_1E4206F64();

        if (v20)
        {

          goto LABEL_17;
        }

        result = v15 + 1;
      }

      *(v9 + 8 * v16) = v18 | v17;
      *(*(v7 + 48) + 8 * v15) = v12;
      v21 = *(v7 + 16);
      v13 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v13)
      {
        goto LABEL_20;
      }

      *(v7 + 16) = v22;
LABEL_17:
      v5 = v24;
      if (v8 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v7;
  }

  return result;
}

uint64_t sub_1E39A4AD4(void *a1, SEL *a2, unint64_t *a3)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  sub_1E3280A90(0, a3);
  v6 = sub_1E42062B4();

  return v6;
}

void sub_1E39A4B48(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 _setOrderingProperties_];
}

void sub_1E39A4BB8(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 _setOrderingDirectionMappings_];
}

uint64_t sub_1E39A4C38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E3940E4C(&qword_1EE23ADC8, &qword_1EE23ADD0);
  v9 = sub_1E4206614();

  v10 = [a5 videosWithDownloadStates:a1 entitlementTypes:v9 sortDescriptors:a3 useMainThreadContext:a4 & 1];

  if (!v10)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B0B0);
  v11 = sub_1E42062B4();

  return v11;
}

uint64_t sub_1E39A4D40(void *a1)
{
  v1 = [a1 filterPredicates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &unk_1EE23B2B0);
  sub_1E3940E4C(&qword_1EE23B2A8, &unk_1EE23B2B0);
  v3 = sub_1E4206624();

  return v3;
}

uint64_t sub_1E39A4DDC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1E4205F14();
  }

  return OUTLINED_FUNCTION_32_0();
}

void (*sub_1E39A4E38(void *a1, unint64_t a2, uint64_t a3))(id *)
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return sub_1E39A5778;
}

uint64_t sub_1E39A4EC4(uint64_t result, uint64_t a2, unint64_t a3)
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
        sub_1E3280A90(0, &qword_1EE23B108);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3827828(&qword_1EE23B480, &qword_1ECF2FB98);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FB98);
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

uint64_t sub_1E39A506C()
{
  result = sub_1E39A4DDC(*(v0 + 16), &selRef_adamID);
  if (v2)
  {
    v3 = v2;
    v4 = HIBYTE(v2) & 0xF;
    v5 = result & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v8 = sub_1E37801A4(result, v3, 10);
        v24 = v25;
LABEL_71:

        if ((v24 & 1) == 0)
        {
          return sub_1E3897544(v26, v8);
        }

        return result;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        v26[0] = result;
        v26[1] = v3 & 0xFFFFFFFFFFFFFFLL;
        if (result == 43)
        {
          if (v4)
          {
            if (v4 != 1)
            {
              OUTLINED_FUNCTION_42_26();
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v10 & v9)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_95();
                if (!v10)
                {
                  break;
                }

                v8 = v19 + v18;
                if (__OFADD__(v19, v18))
                {
                  break;
                }

                OUTLINED_FUNCTION_132();
                if (v10)
                {
                  goto LABEL_70;
                }
              }
            }

            goto LABEL_69;
          }

LABEL_82:
          __break(1u);
          return result;
        }

        if (result != 45)
        {
          if (v4)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_95();
              if (!v10)
              {
                break;
              }

              v8 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v10)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }

        if (v4)
        {
          if (v4 != 1)
          {
            OUTLINED_FUNCTION_42_26();
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v10 & v9)
              {
                break;
              }

              OUTLINED_FUNCTION_0_95();
              if (!v10)
              {
                break;
              }

              v8 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                break;
              }

              OUTLINED_FUNCTION_132();
              if (v10)
              {
                goto LABEL_70;
              }
            }
          }

          goto LABEL_69;
        }
      }

      else
      {
        if ((result & 0x1000000000000000) != 0)
        {
          result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1E4207524();
        }

        v7 = *result;
        if (v7 == 43)
        {
          if (v5 >= 1)
          {
            if (v5 != 1)
            {
              v8 = 0;
              if (result)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_1_4();
                  if (!v10 & v9)
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_0_95();
                  if (!v10)
                  {
                    goto LABEL_69;
                  }

                  v8 = v17 + v16;
                  if (__OFADD__(v17, v16))
                  {
                    goto LABEL_69;
                  }

                  OUTLINED_FUNCTION_132();
                  if (v10)
                  {
                    goto LABEL_70;
                  }
                }
              }

              goto LABEL_60;
            }

            goto LABEL_69;
          }

          goto LABEL_81;
        }

        if (v7 != 45)
        {
          if (v5)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                v20 = *result - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  goto LABEL_69;
                }

                v8 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++result;
                if (!--v5)
                {
                  goto LABEL_60;
                }
              }
            }

            goto LABEL_60;
          }

LABEL_69:
          v8 = 0;
          v13 = 1;
          goto LABEL_70;
        }

        if (v5 >= 1)
        {
          if (v5 != 1)
          {
            v8 = 0;
            if (result)
            {
              while (1)
              {
                OUTLINED_FUNCTION_1_4();
                if (!v10 & v9)
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_0_95();
                if (!v10)
                {
                  goto LABEL_69;
                }

                v8 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_69;
                }

                OUTLINED_FUNCTION_132();
                if (v10)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_60:
            v13 = 0;
LABEL_70:
            v27 = v13;
            v24 = v13;
            goto LABEL_71;
          }

          goto LABEL_69;
        }

        __break(1u);
      }

      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  return result;
}

unint64_t sub_1E39A5300(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1E39A53A0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1E39A5410(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1E39A53A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1E3780B3C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E39A5410(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1E4207524();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

void sub_1E39A551C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E6911D00](a1, a2, v7);
      sub_1E3280A90(0, &unk_1EE23B2B0);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1E3280A90(0, &unk_1EE23B2B0);
    if (sub_1E4207364() == *(a4 + 36))
    {
      sub_1E4207374();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1E4206F54();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1E4206F64();

        if (v11)
        {
          goto LABEL_18;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

void type metadata accessor for MPMediaOrderingDirection()
{
  if (!qword_1ECF2FBB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF2FBB0);
    }
  }
}

BOOL sub_1E39A577C()
{
  result = 0;
  if ((sub_1E39A69F8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    if (!(*(v1 + 256))())
    {
      return 1;
    }

    OUTLINED_FUNCTION_30();
    v3 = (*(v2 + 1912))();

    if (v3 == 3)
    {
      return 1;
    }

    sub_1E39ABD54();
    if ((sub_1E4205E84() & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E39A5938(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  OUTLINED_FUNCTION_3_0();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1E39A59D8()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E39A5A1C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth;
  result = OUTLINED_FUNCTION_3_0();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1E39A5AC0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E39A5AF4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout;
  result = OUTLINED_FUNCTION_3_0();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E39A5B88()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A5BD0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5C4C()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A5C94()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A5D10(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E39A5D90()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A5DD8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5E54()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A5E9C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5F18()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A5F60()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A5FDC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A6024()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A60A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A60E8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6164()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A61AC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6228()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A6270()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A62EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E39A6334()
{
  OUTLINED_FUNCTION_29_31();
  v4 = *&v1[v3];
  *&v1[v3] = v2;
  v5 = *v0;
  v6 = v2;
  OUTLINED_FUNCTION_5_0();
  [v1 vui:*&v1[v5] addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

uint64_t sub_1E39A63BC()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A6444(uint64_t a1)
{
  v7 = &qword_1ECF2F000;
  v8 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews;
  OUTLINED_FUNCTION_3_0();
  v9 = *&v1[v8];
  v52 = v1;
  *&v1[v8] = a1;
  if (v9)
  {
    v10 = sub_1E32AE9B0(v9);
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v10 == v11)
      {
        v7 = &qword_1ECF2F000;
        goto LABEL_16;
      }

      if (v12)
      {
        v15 = v9;
        v16 = MEMORY[0x1E6911E60](v11, v9);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_33;
        }

        v15 = v9;
        v16 = *(v9 + 8 * v11 + 32);
      }

      v17 = v16;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v16 frame];
      OUTLINED_FUNCTION_3();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_27();
        v14 = sub_1E39ABB54(v21, v22, v23, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      if (v19 >= v18 >> 1)
      {
        v14 = sub_1E39ABB54((v18 > 1), v19 + 1, 1, v14);
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[32 * v19];
      *(v20 + 4) = v2;
      *(v20 + 5) = v3;
      *(v20 + 6) = v4;
      *(v20 + 7) = v5;
      [v17 removeFromSuperview];

      ++v11;
      v9 = v15;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v24 = v7[392];
    OUTLINED_FUNCTION_5_0();
    v25 = *&v52[v24];
    if (v25)
    {
      v49 = v9;
      v26 = sub_1E32AE9B0(v25);
      v27 = v25 & 0xC000000000000001;
      v28 = v25 & 0xFFFFFFFFFFFFFF8;

      v29 = 0;
      v30 = (v14 + 56);
      v31 = 0.0;
      v32 = &selRef_textLayout;
      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
      v50 = v25 & 0xFFFFFFFFFFFFFF8;
      v51 = v25;
      while (v26 != v29)
      {
        if (v27)
        {
          v36 = MEMORY[0x1E6911E60](v29, v25);
        }

        else
        {
          if (v29 >= *(v28 + 16))
          {
            goto LABEL_35;
          }

          v36 = *(v25 + 8 * v29 + 32);
        }

        v37 = v36;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_34;
        }

        [v36 frame];
        OUTLINED_FUNCTION_16_50();
        v55.size.width = 0.0;
        v55.size.height = 0.0;
        if (CGRectEqualToRect(v53, v55))
        {
          v38 = v26;
          v39 = v27;
          v40 = v32;
          if (v29 >= *(v14 + 2))
          {
            v54.origin.x = v31;
            v54.origin.y = v33;
            v54.size.width = v34;
            v54.size.height = v35;
            MaxY = CGRectGetMaxY(v54);
            [v37 frame];
            v43 = &selRef_setDelayContentsChangeOperation_;
            [v37 setFrame_];
            [v37 frame];
          }

          else
          {
            v41 = *(v30 - 3);
            v42 = *(v30 - 2);
            v34 = *(v30 - 1);
            v35 = *v30;
            v43 = &selRef_setDelayContentsChangeOperation_;
          }

          [v37 v43[228]];
          v32 = v40;
          v27 = v39;
          v26 = v38;
          v28 = v50;
          v25 = v51;
        }

        [v37 frame];
        v31 = v45;
        v33 = v46;
        v34 = v47;
        v35 = v48;
        [v52 v32[466]];

        ++v29;
        v30 += 4;
      }
    }

    [v52 vui_setNeedsLayout];
  }
}

uint64_t sub_1E39A67A4()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E39A680C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E39A6444(v4);
  }

  else
  {
    sub_1E39A6444(v3);
  }

  free(v2);
}

void *sub_1E39A6870()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A68B8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E39A6934()
{
  v1 = OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E39A697C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E39A69F8()
{
  OUTLINED_FUNCTION_21();
  v2 = COERCE_DOUBLE((*(v1 + 304))());
  if (v3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  v5 = [v0 vuiTraitCollection];
  v6 = sub_1E39A6A94(v5, v4);

  return v6 & 1;
}

uint64_t sub_1E39A6A94(void *a1, double a2)
{
  v3 = [a1 isAXEnabled];
  type metadata accessor for BannerUberBackgroundViewLayout();
  return (sub_1E3DF1808(a2) | v3) & 1;
}

void sub_1E39A6B8C()
{
  OUTLINED_FUNCTION_41_5();
  v421 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v412 = &v362 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v362 - v11;
  type metadata accessor for CGSize(0);
  v390 = v13;
  v452 = v13;
  *v451 = v6;
  v451[1] = v4;
  v14 = sub_1E3294FA4(v451);
  v16 = v15;
  v452 = MEMORY[0x1E69E6370];
  v414 = v2;
  LOBYTE(v451[0]) = v2;
  v17 = sub_1E3294FA4(v451);
  v19 = v18;
  v20 = sub_1E324FBDC();
  v21 = *(v8 + 16);
  v410 = v20;
  v411 = v8 + 16;
  v409 = v21;
  (v21)(v12);

  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  v24 = os_log_type_enabled(v22, v23);
  v416 = v8;
  v417 = v7;
  if (v24)
  {
    v25 = v17;
    v26 = swift_slowAlloc();
    v451[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = sub_1E3270FC8(v14, v16, v451);

    *(v26 + 4) = v27;
    *(v26 + 12) = 2080;
    v28 = sub_1E3270FC8(v25, v19, v451);

    *(v26 + 14) = v28;
    _os_log_impl(&dword_1E323F000, v22, v23, "CanonicalBannerInfoView:: vuiLayoutSubviews: %s, computationOnly: %s", v26, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v413 = *(v416 + 8);
    v413(v12, v417);
  }

  else
  {

    v413 = *(v8 + 8);
    v413(v12, v7);
  }

  v439 = v6;
  v440 = 0;
  v437 = 0u;
  v438 = 0u;
  v435 = 0u;
  v436 = 0u;
  v434 = MEMORY[0x1E69E7CC0];
  v432 = 0u;
  v433 = 0u;
  v430 = 0u;
  v431 = 0u;
  v29 = v421;
  v424 = [v421 vuiIsRTL];
  v429 = 0;
  v428 = 0.0;
  if (sub_1E39A69F8())
  {
    v30 = [v29 vuiTraitCollection];
    v22 = [v30 isAXLargeEnabled];

    LODWORD(v423) = v22 ^ 1;
  }

  else
  {
    LODWORD(v423) = 0;
  }

  v31 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v32 += 44;
  v33 = *v32;
  v404 = v32;
  v405 = v33;
  v34 = v33();
  v35 = v34;
  v36 = v34 == 0;
  v406 = 0.0;
  if (v34)
  {
    v37 = (*((*v31 & *v29) + 0x100))([v34 vui:v6 sizeThatFits:1.79769313e308]);
    if (!v37 || (v22 = v37, OUTLINED_FUNCTION_26_0(), v39 = (*(v38 + 2536))(), , !v39) || (OUTLINED_FUNCTION_8(), (*(v40 + 152))(v441), v41 = v441[0], v42 = *&v441[2], , (v442 & 1) != 0))
    {
      v41 = *MEMORY[0x1E69DDCE0];
      v42 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_12_59();
    OUTLINED_FUNCTION_47_18();
    v402 = v44;
    v403 = v43;
    v400 = v46;
    v401 = v45;
    v454.origin.x = OUTLINED_FUNCTION_12_59();
    CGRectGetMaxY(v454);
    VUIRoundValue();
    v48 = v47;

    v429 = v48;
    v49 = v41;
    v428 = v42;
  }

  else
  {
    v49 = 0;
    v402 = 0.0;
    v403 = 0.0;
    v400 = 0.0;
    v401 = 0.0;
  }

  OUTLINED_FUNCTION_8_9();
  v50 += 53;
  v51 = *v50;
  v398 = v50;
  v399 = v51;
  v52 = v51();
  v420 = v4;
  if (v52)
  {
    v22 = v52;
    OUTLINED_FUNCTION_8_9();
    v53 += 32;
    v54 = *v53;
    if ((*v53)())
    {
      OUTLINED_FUNCTION_30();
      v56 = (*(v55 + 1984))();

      *&v58 = COERCE_DOUBLE((*(*v56 + 248))(v57));
      v60 = v59;

      if (v60)
      {
        v61 = OUTLINED_FUNCTION_63_12();
      }

      else
      {
        v61 = *&v58;
      }

      v31 = MEMORY[0x1E69E7D40];
    }

    else
    {
      v61 = OUTLINED_FUNCTION_63_12();
    }

    if (v61 >= v6)
    {
      v62 = v6;
    }

    else
    {
      v62 = v61;
    }

    v63 = v22;
    v64 = sub_1E3C8B764(0, v62, 0.0);

    if (!v54() || (OUTLINED_FUNCTION_30(), (*(v65 + 1984))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v66 + 152))(v443), v67 = v443[0], v68 = *&v443[2], , (v444 & 1) != 0))
    {
      v67 = *MEMORY[0x1E69DDCE0];
      v68 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    OUTLINED_FUNCTION_55_1(v6 - v64);
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_12_59();
    OUTLINED_FUNCTION_46_20();
    v406 = v69;
    v384 = v71;
    v385 = v70;
    v383 = v72;
    v455.origin.x = OUTLINED_FUNCTION_12_59();
    CGRectGetMaxY(v455);
    VUIRoundValue();
    v74 = v73;

    v36 = 0;
    v429 = v74;
    if (!v35)
    {
      v49 = v67;
    }

    v428 = v68;
  }

  else
  {
    v384 = 0;
    v385 = 0;
    v383 = 0;
  }

  v75 = v421;
  OUTLINED_FUNCTION_0_96();
  v76 += 56;
  v77 = *v76;
  v396 = v76;
  v397 = v77;
  v78 = v77();
  if (v78)
  {
    v79 = v78;
    OUTLINED_FUNCTION_0_96();
    v80 += 32;
    v81 = *v80;
    if (!(*v80)() || (OUTLINED_FUNCTION_30(), (*(v82 + 2056))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), (*(v83 + 152))(v445), v84 = v445[0], v85 = *&v445[2], , (v446 & 1) != 0))
    {
      v84 = *MEMORY[0x1E69DDCE0];
      v85 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v86 = VUIRoundValue();
    v88 = v87;
    if ((v81)(v86) && (OUTLINED_FUNCTION_30(), (*(v89 + 2056))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), *&v91 = COERCE_DOUBLE((*(v90 + 248))()), v93 = v92, , (v93 & 1) == 0))
    {
      v94 = *&v91;
    }

    else
    {
      v94 = OUTLINED_FUNCTION_63_12();
    }

    if (v94 >= v6)
    {
      v94 = v6;
    }

    [v79 sizeThatFits_];
    v96 = v95;
    v98 = v97;
    OUTLINED_FUNCTION_16_50();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v381 = v100;
    v382 = v99;
    v379 = v102;
    v380 = v101;
    v456.origin.x = 0.0;
    v456.origin.y = v88;
    v456.size.width = v96;
    v456.size.height = v98;
    CGRectGetMaxY(v456);
    VUIRoundValue();
    v104 = v103;

    v429 = v104;
    if (v36)
    {
      v49 = v84;
    }

    v428 = v85;
    v36 = 0;
    v31 = MEMORY[0x1E69E7D40];
  }

  else
  {
    v381 = 0;
    v382 = 0;
    v379 = 0;
    v380 = 0;
  }

  OUTLINED_FUNCTION_0_96();
  v105 += 47;
  v106 = *v105;
  v394 = v105;
  v395 = v106;
  v107 = v106();
  if (v107 && (v107, OUTLINED_FUNCTION_0_96(), ((*(v108 + 328))() & 1) != 0))
  {
    OUTLINED_FUNCTION_0_96();
    if ((*(v109 + 256))())
    {
      OUTLINED_FUNCTION_26_0();
      v111 = (*(v110 + 1936))();

      OUTLINED_FUNCTION_8();
      v113 = *(v112 + 248);

      *&v115 = COERCE_DOUBLE(v113(v114));
      v117 = v116;

      v118 = *&v115;
      if (v117)
      {
        v118 = 1.79769313e308;
      }

      if (v118 >= v6)
      {
        v118 = v6;
      }

      v119 = v118;
      v120 = *(*v111 + 256);

      v120(*&v119, 0);

      OUTLINED_FUNCTION_8();
      v122 = *(v121 + 152);

      v122(v447, v123);

      v22 = *(*v111 + 2288);

      (v22)(v124);
    }

    v378 = 0;
    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_50_14();
    OUTLINED_FUNCTION_46_20();
    v377 = v144;
    v372 = v146;
    v373 = v145;
    v371 = v147;
    OUTLINED_FUNCTION_50_14();
    CGRectGetMaxY(v458);
    VUIRoundValue();

    v375 = OUTLINED_FUNCTION_31_30();
    v376 = v375;
    v374 = v375;
  }

  else
  {
    OUTLINED_FUNCTION_0_96();
    v126 = (*(v125 + 400))();
    if (!v126)
    {
      v377 = 0;
      v378 = 0;
      v375 = 0;
      v376 = 0;
      v373 = 0;
      v374 = 0;
      v371 = 0;
      v372 = 0;
      goto LABEL_68;
    }

    v127 = v126;
    OUTLINED_FUNCTION_0_96();
    v128 += 32;
    v129 = *v128;
    v130 = (*v128)();
    if (v130)
    {
      OUTLINED_FUNCTION_30();
      (*(v131 + 1960))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v132 + 152))(v447);
    }

    if ((v129)(v130) && (OUTLINED_FUNCTION_30(), (*(v133 + 1960))(), OUTLINED_FUNCTION_30_6(), OUTLINED_FUNCTION_12_6(), *&v135 = COERCE_DOUBLE((*(v134 + 248))()), v137 = v136, , (v137 & 1) == 0))
    {
      v138 = *&v135;
    }

    else
    {
      v138 = OUTLINED_FUNCTION_63_12();
    }

    if (v138 >= v6)
    {
      v138 = v6;
    }

    [v127 sizeThatFits_];
    v31 = MEMORY[0x1E69E7D40];
    if (v423)
    {
      OUTLINED_FUNCTION_55_1(v6 - v139);
    }

    VUIRoundValue();
    VUICeilValue();
    v377 = 0;
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_60_10();
    OUTLINED_FUNCTION_46_20();
    v378 = v140;
    v375 = v142;
    v376 = v141;
    v374 = v143;
    v457.origin.x = OUTLINED_FUNCTION_60_10();
    CGRectGetMaxY(v457);
    VUIRoundValue();

    v372 = OUTLINED_FUNCTION_31_30();
    v373 = v372;
    v371 = v372;
  }

  v36 = 0;
LABEL_68:
  OUTLINED_FUNCTION_0_96();
  v148 += 68;
  v149 = *v148;
  v392 = v148;
  v393 = v149;
  v150 = v149();
  if (v150)
  {
    v151 = v150;
    if ((*((*v31 & *v75) + 0x100))([v150 vui:v6 sizeThatFits:0.0]))
    {
      OUTLINED_FUNCTION_30();
      (*(v152 + 2368))();
      OUTLINED_FUNCTION_30_6();
      [v22 margin];
      v154 = v153;
      v156 = v155;
    }

    else
    {
      v154 = *MEMORY[0x1E69DDCE0];
      v156 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    VUIRoundValue();
    VUICeilValue();
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_54_13();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    v369 = v158;
    v370 = v157;
    v367 = v160;
    v368 = v159;
    v459.origin.x = OUTLINED_FUNCTION_54_13();
    CGRectGetMaxY(v459);
    VUIRoundValue();
    v162 = v161;

    v429 = v162;
    if (v36)
    {
      v49 = v154;
    }

    v428 = v156;
    v36 = 0;
  }

  else
  {
    v369 = 0;
    v370 = 0;
    v367 = 0;
    v368 = 0;
  }

  OUTLINED_FUNCTION_0_96();
  v163 += 77;
  v164 = *v163;
  v388 = v163;
  v389 = v164;
  v165 = v164();
  if (!v165)
  {
    v422 = 0.0;
    v415 = 1;
    goto LABEL_91;
  }

  v166 = v165;
  v167 = v36;
  OUTLINED_FUNCTION_0_96();
  v169 = *(v168 + 256);
  v170 = v166;
  if (v169())
  {
    OUTLINED_FUNCTION_30();
    v172 = (*(v171 + 2152))();
  }

  else
  {
    v172 = 0;
  }

  v422 = COERCE_DOUBLE(sub_1E39A90FC(v166, v172));
  v174 = v173;

  objc_opt_self();
  v175 = swift_dynamicCastObjCClass();
  v415 = (v175 != 0) | v174;
  if (!v175)
  {
    goto LABEL_89;
  }

  v31 = MEMORY[0x1E69E7D40];
  if ((v174 & 1) == 0)
  {
    v176 = v175;
    if (v422 > v6)
    {
      [v175 setNumberOfLines_];
      v415 = 0;
      goto LABEL_90;
    }

    v177 = v170;
    if (v169())
    {
      OUTLINED_FUNCTION_30();
      v179 = (*(v178 + 2152))();
    }

    else
    {
      v179 = 0;
    }

    sub_1E39A8FB0(v179);
    v181 = v180;

    [v176 setNumberOfLines_];

    v415 = 0;
LABEL_89:
    v31 = MEMORY[0x1E69E7D40];
  }

LABEL_90:

  v75 = v421;
  v36 = v167;
LABEL_91:
  OUTLINED_FUNCTION_0_96();
  v182 += 80;
  v183 = *v182;
  v386 = v182;
  v387 = v183;
  v184 = v183();
  v418 = v49;
  v419 = v36;
  if (v184)
  {
    v185 = v184;
    OUTLINED_FUNCTION_8_9();
    v187 = *(v186 + 256);
    v188 = v185;
    if (v187())
    {
      OUTLINED_FUNCTION_30();
      v190 = (*(v189 + 2176))();
    }

    else
    {
      v190 = 0;
    }

    v191 = COERCE_DOUBLE(sub_1E39A90FC(v185, v190));
    v193 = v192;

    objc_opt_self();
    v194 = swift_dynamicCastObjCClass();
    if (v194)
    {
      v31 = MEMORY[0x1E69E7D40];
      if (v193)
      {
LABEL_105:

        v75 = v421;
        goto LABEL_106;
      }

      v195 = v194;
      if (v191 > v6)
      {
        [v194 setNumberOfLines_];
        goto LABEL_105;
      }

      v196 = v188;
      if (v187())
      {
        OUTLINED_FUNCTION_30();
        v198 = (*(v197 + 2176))();
      }

      else
      {
        v198 = 0;
      }

      sub_1E39A8FB0(v198);
      v200 = v199;

      [v195 setNumberOfLines_];
    }

    v31 = MEMORY[0x1E69E7D40];
    goto LABEL_105;
  }

LABEL_106:
  if (!sub_1E39A577C())
  {
    OUTLINED_FUNCTION_43_20();
    v201 = v423;
    sub_1E39A8C28(v202, v203, v204, v423, v205, v206, v207, v208, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
    OUTLINED_FUNCTION_42_27();
    sub_1E39A8DEC(v209, v210, v211, v212, v213, v214, v215, v216, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
    OUTLINED_FUNCTION_19_49();
    sub_1E39A979C(v201, v217, v218, v219, v220, v221, *&v422, v222, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383);
  }

  OUTLINED_FUNCTION_0_96();
  v223 += 65;
  v224 = *v223;
  v407 = v223;
  v408 = v224;
  v225 = v224();
  if (!v225)
  {
    v237 = 0.0;
    v238 = 0;
    v239 = 0;
    v391 = 0.0;
    goto LABEL_138;
  }

  v226 = v225;
  OUTLINED_FUNCTION_0_96();
  if ((*(v227 + 256))())
  {
    OUTLINED_FUNCTION_30();
    v229 = (*(v228 + 2224))();

    OUTLINED_FUNCTION_30_1();
    v231 = *(v230 + 248);

    *&v233 = COERCE_DOUBLE(v231(v232));
    v235 = v234;

    if ((v235 & 1) == 0)
    {
      v236 = *&v233;
      goto LABEL_115;
    }
  }

  else
  {
    v229 = 0;
  }

  v236 = 1.79769313e308;
LABEL_115:
  if (sub_1E39A69F8())
  {
    v236 = 1.79769313e308;
  }

  OUTLINED_FUNCTION_15_57();
  if ((*(v240 + 328))())
  {
    v241 = v236;
  }

  else
  {
    v241 = 1.79769313e308;
  }

  if (v241 <= v6)
  {
    v242 = v241;
  }

  else
  {
    v242 = v6;
  }

  [v226 vui:v242 sizeThatFits:0.0];
  if (v229)
  {
    OUTLINED_FUNCTION_30_1();
    v244 = *(v243 + 152);

    v244(v448, v245);
  }

  VUIRoundValue();
  VUICeilValue();
  OUTLINED_FUNCTION_16_50();
  OUTLINED_FUNCTION_50_14();
  OUTLINED_FUNCTION_47_18();
  v237 = v246;
  v238 = v247;
  v239 = v248;
  v391 = v249;
  OUTLINED_FUNCTION_50_14();
  CGRectGetMaxY(v460);
  VUIRoundValue();
  v429 = v250;
  if (v419)
  {
    if (v229)
    {
      OUTLINED_FUNCTION_30_1();
      (*(v251 + 152))(v449);
      v252 = v449[0];
      if (v450)
      {
        v252 = 0;
      }

      v418 = v252;
      goto LABEL_131;
    }

    v418 = 0;
  }

  else
  {
    if (v229)
    {
LABEL_131:
      OUTLINED_FUNCTION_30_1();
      v254 = *(v253 + 152);

      v254(v451, v255);

      if (v453)
      {
        v256 = 0.0;
      }

      else
      {
        v256 = *&v451[2];
      }

      goto LABEL_137;
    }
  }

  v256 = 0.0;
LABEL_137:
  v419 = 0;
  v428 = v256;
  v31 = MEMORY[0x1E69E7D40];
LABEL_138:
  OUTLINED_FUNCTION_8_9();
  v257 = v31;
  v258 += 71;
  v259 = *v258;
  v260 = (*v258)();
  if (v260)
  {
    v261 = v260;
    v362 = v239;
    v363 = v238;
    v262 = v237;
    v263 = [v260 vui:v6 sizeThatFits:0.0];
    v265 = v264;
    if ((*((*v257 & *v75) + 0x100))(v263))
    {
      OUTLINED_FUNCTION_30();
      v267 = (*(v266 + 2344))();

      [v267 margin];
      v269 = v268;
      v271 = v270;
    }

    else
    {
      v269 = *MEMORY[0x1E69DDCE0];
      v271 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    v273 = v414;
    VUIRoundValue();
    v275 = v274;
    VUICeilValue();
    v277 = v276;
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_47_18();
    v365 = v279;
    v366 = v278;
    v272 = v280;
    v364 = v281;
    v461.origin.x = 0.0;
    v461.origin.y = v275;
    v461.size.width = v265;
    v461.size.height = v277;
    CGRectGetMaxY(v461);
    VUIRoundValue();
    v283 = v282;

    v429 = v283;
    v284 = v418;
    if (v419)
    {
      v284 = v269;
    }

    v418 = v284;
    v428 = v271;
    v419 = 0;
    v237 = v262;
    v239 = v362;
    v238 = v363;
  }

  else
  {
    v365 = 0;
    v366 = 0;
    v272 = 0.0;
    v364 = 0;
    v273 = v414;
  }

  if (sub_1E39A577C())
  {
    OUTLINED_FUNCTION_43_20();
    v285 = v423;
    sub_1E39A8C28(v286, v287, v288, v423, v289, v290, v291, v292, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
    OUTLINED_FUNCTION_42_27();
    sub_1E39A8DEC(v293, v294, v295, v296, v297, v298, v299, v300, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387);
    OUTLINED_FUNCTION_19_49();
    sub_1E39A979C(v285, v301, v302, v303, v304, v305, *&v422, v306, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385);
  }

  v307 = v429;
  v308 = v417;
  if (v273)
  {
    goto LABEL_188;
  }

  v309 = v405();
  [v309 setFrame_];

  if (v399())
  {
    OUTLINED_FUNCTION_26_6();
    [v310 v311];
  }

  if (v397())
  {
    OUTLINED_FUNCTION_26_6();
    [v312 v313];
  }

  if (v395())
  {
    OUTLINED_FUNCTION_26_6();
    [v314 v315];
  }

  OUTLINED_FUNCTION_15_57();
  if ((*(v316 + 400))())
  {
    OUTLINED_FUNCTION_26_6();
    [v317 v318];
  }

  if (v393())
  {
    OUTLINED_FUNCTION_26_6();
    [v319 v320];
  }

  if (v259())
  {
    OUTLINED_FUNCTION_26_6();
    [v321 v322];
  }

  v408();
  OUTLINED_FUNCTION_26_6();
  [v323 v324];

  v325 = (*((*MEMORY[0x1E69E7D40] & *v75) + 0x1D8))();
  if (v325)
  {
    v326 = v325;
    [v325 setFrame_];
  }

  OUTLINED_FUNCTION_15_57();
  v328 = (*(v327 + 496))();
  if (v328)
  {
    v329 = v328;
    [v328 setFrame_];
  }

  OUTLINED_FUNCTION_15_57();
  v331 = (*(v330 + 592))();
  if (!v331)
  {
LABEL_175:
    v338 = v389();
    if (v338)
    {
      v339 = v338;
      OUTLINED_FUNCTION_53_18();
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_48_20();
      [v339 setFrame_];
    }

    v340 = v387();
    if (v340)
    {
      v341 = v340;
      OUTLINED_FUNCTION_52_15();
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_48_20();
      [v341 setFrame_];
    }

    v342 = (v408)();
    if (v342)
    {
      v343 = v342;
      objc_opt_self();
      v344 = swift_dynamicCastObjCClass();
      if (v344)
      {
        v345 = v344;
        OUTLINED_FUNCTION_15_57();
        if (*(v346 + 256))() && (OUTLINED_FUNCTION_30(), v348 = (*(v347 + 1912))(), , v348 != 3) && (LOBYTE(v427[0]) = v348, LOBYTE(v425) = 2, sub_1E39ABD54(), (sub_1E4205E84()))
        {
          v349 = 1;
        }

        else
        {
          v350 = [v75 vuiTraitCollection];
          v349 = [v350 isAXEnabled];
        }

        [v345 setShowMoreForTruncation_];
      }
    }

LABEL_188:
    v351 = v412;
    v409(v412, v410, v308);
    v352 = v439;
    v353 = sub_1E41FFC94();
    v354 = sub_1E4206814();
    if (os_log_type_enabled(v353, v354))
    {
      v355 = swift_slowAlloc();
      v356 = swift_slowAlloc();
      v425 = v356;
      *v355 = 136315138;
      v427[3] = v390;
      *v427 = v352;
      v427[1] = v307;
      v357 = sub_1E3294FA4(v427);
      v359 = sub_1E3270FC8(v357, v358, &v425);

      *(v355 + 4) = v359;
      _os_log_impl(&dword_1E323F000, v353, v354, "CanonicalBannerInfoView:: preferredSize: %s", v355, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v356);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v360 = v351;
      v361 = v417;
    }

    else
    {

      v360 = v351;
      v361 = v308;
    }

    v413(v360, v361);
    if (sub_1E39A577C())
    {
      v462.origin.x = OUTLINED_FUNCTION_53_18();
      CGRectGetMaxY(v462);
      v463.origin.x = OUTLINED_FUNCTION_52_15();
      CGRectGetMaxY(v463);
    }

    OUTLINED_FUNCTION_42();
    return;
  }

  v332 = v331;
  v333 = sub_1E32AE9B0(v331);
  v334 = 0;
  *&v422 = v332 & 0xFFFFFFFFFFFFFF8;
  v423 = v332 & 0xC000000000000001;
  v335 = v434;
  while (1)
  {
    if (v333 == v334)
    {

      v75 = v421;
      v308 = v417;
      goto LABEL_175;
    }

    if (v423)
    {
      v336 = MEMORY[0x1E6911E60](v334, v332);
    }

    else
    {
      if (v334 >= *(*&v422 + 16))
      {
        goto LABEL_195;
      }

      v336 = *(v332 + 8 * v334 + 32);
    }

    v337 = v336;
    if (__OFADD__(v334, 1))
    {
      break;
    }

    v427[5] = v335;
    v425 = v334;
    v426 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C410);
    sub_1E3827828(&unk_1ECF2FC60, &unk_1ECF2C410);
    sub_1E38D2054(&v425, v427);
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_48_20();
    [v337 setFrame_];

    ++v334;
  }

  __break(1u);
LABEL_195:
  __break(1u);
}

void sub_1E39A8C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_69_9();
  a31 = v36;
  a32 = v39;
  OUTLINED_FUNCTION_24_32();
  v40 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v42 = (*(v41 + 472))();
  if (v42)
  {
    v43 = v42;
    [v33 vuiIsRTL];
    if (!(*((*v40 & *v33) + 0x100))([v43 sizeThatFits_]) || (OUTLINED_FUNCTION_30(), v45 = (*(v44 + 2080))(), v46 = , (*(*v45 + 152))(&a10, v46), v47 = a12, , (a14 & 1) != 0))
    {
      v47 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_36_24();
    *v35 = v50;
    CGRectGetMaxY(v50);
    VUIRoundValue();
    v49 = v48;

    *v34 = v49;
    *v32 = v47;
  }

  OUTLINED_FUNCTION_68_8();
}

void sub_1E39A8DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_69_9();
  a31 = v36;
  a32 = v39;
  OUTLINED_FUNCTION_24_32();
  v40 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v42 = (*(v41 + 496))();
  if (v42)
  {
    v43 = v42;
    [v33 vuiIsRTL];
    [v43 sizeThatFits_];
    sub_1E39A69F8();
    if (!(*((*v40 & *v33) + 0x100))() || (OUTLINED_FUNCTION_30(), v45 = (*(v44 + 2104))(), v46 = , (*(*v45 + 152))(&a10, v46), v47 = a12, , (a14 & 1) != 0))
    {
      v47 = *(MEMORY[0x1E69DDCE0] + 16);
    }

    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_36_24();
    *v35 = v50;
    CGRectGetMaxY(v50);
    VUIRoundValue();
    v49 = v48;

    *v34 = v49;
    *v32 = v47;
  }

  OUTLINED_FUNCTION_68_8();
}

void sub_1E39A8FB0(uint64_t a1)
{
  v2 = v1;
  if (a1 && (OUTLINED_FUNCTION_8(), v5 = (*(v4 + 2048))(), (v6 & 1) == 0))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v2 vuiTraitCollection];
  v9 = [v8 isAXLargeEnabled];

  if (a1)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_8();
      v11 = (*(v10 + 2096))();
      if ((v12 & 1) == 0)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }
  }

  v13 = [v2 vuiTraitCollection];
  v14 = [v13 isAXSmallEnabled];

  if (a1 && v14)
  {
    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 2072))();
    if ((v17 & 1) == 0)
    {
      v7 = v16;
    }
  }

  if (v7 < 0)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1E39A90FC(void *a1, uint64_t a2)
{
  if (a1 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    v10 = a1;
    sub_1E39A8FB0(a2);
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v9 setNumberOfLines_];
      v14 = v13;
      [v9 sizeToFit];
      [v9 frame];
      OUTLINED_FUNCTION_3();

      v19.origin.x = v2;
      v19.origin.y = v3;
      v19.size.width = v4;
      v19.size.height = v5;
      CGRectGetWidth(v19);
      VUICeilValue();
      v16 = v15;
      [v9 setNumberOfLines_];
      while (v12 < [v9 numberOfLinesRequiredForTextWidth_])
      {
        v16 = v16 + 5.0;
      }

      v17 = v16;
      [v9 setNumberOfLines_];
    }

    else
    {
      v17 = 0.0;
    }
  }

  else
  {
    v17 = 0.0;
  }

  return *&v17;
}

uint64_t sub_1E39A926C()
{
  v3 = 2;
  OUTLINED_FUNCTION_26_0();
  (*(v1 + 776))(v4, &v3, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v4[3])
  {
    sub_1E329505C(v4);
    return 0;
  }

  if (!OUTLINED_FUNCTION_13_14() || (v3 & 1) == 0)
  {
    return 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x268))();
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_1E39A9364()
{
  v3 = 3;
  OUTLINED_FUNCTION_26_0();
  (*(v1 + 776))(v4, &v3, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v4[3])
  {
    sub_1E329505C(v4);
    return 0;
  }

  if (!OUTLINED_FUNCTION_13_14() || (v3 & 1) == 0)
  {
    return 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x280))();
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_1E39A945C()
{
  OUTLINED_FUNCTION_44_24();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v7 = (*(v6 + 616))();
  if (v7)
  {
    v8 = v7;
    [v7 vui:v4 sizeThatFits:0.0];
    v10 = v9;
    v12 = v11;
    v13 = [v1 vuiTraitCollection];
    v14 = [v13 isAXLargeEnabled];

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v4;
    }

    *(v0 + 16) = v15;
    *(v0 + 24) = v12;
    if ((*((*v5 & *v1) + 0x100))())
    {
      OUTLINED_FUNCTION_30();
      (*(v16 + 2152))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v17 + 152))(v27);

      OUTLINED_FUNCTION_56_15(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
    }

    else
    {
    }

    *v0 = v2;
    *(v0 + 8) = v3 + 0.0;
  }
}

void sub_1E39A95FC()
{
  OUTLINED_FUNCTION_44_24();
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_8_9();
  v7 = (*(v6 + 640))();
  if (v7)
  {
    v8 = v7;
    [v7 vui:v4 sizeThatFits:0.0];
    v10 = v9;
    v12 = v11;
    v13 = [v1 vuiTraitCollection];
    v14 = [v13 isAXLargeEnabled];

    if (v14)
    {
      v15 = v10;
    }

    else
    {
      v15 = v4;
    }

    *(v0 + 16) = v15;
    *(v0 + 24) = v12;
    if ((*((*v5 & *v1) + 0x100))())
    {
      OUTLINED_FUNCTION_30();
      (*(v16 + 2176))();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_12_6();
      (*(v17 + 152))(v27);

      OUTLINED_FUNCTION_56_15(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27[0]);
    }

    else
    {
    }

    *v0 = v2;
    *(v0 + 8) = v3 + 0.0;
  }
}

void sub_1E39A979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  OUTLINED_FUNCTION_41_5();
  LODWORD(v454) = v31;
  v33 = v32;
  v428 = v34;
  v36 = v35;
  v38 = v37;
  v440 = v39;
  v451 = v40;
  v42 = v41;
  HIDWORD(v433) = v43;
  v45 = v44;
  v47 = v46;
  v48 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  *&v457 = COERCE_DOUBLE((*(v49 + 592))());
  if (*&v457 == 0.0)
  {
    goto LABEL_351;
  }

  v429 = v38;
  v430 = v36;
  v50 = [v30 vuiTraitCollection];
  v455 = [v50 isAXEnabled];

  v417 = *((*v48 & *v30) + 0x100);
  v418 = (*v48 & *v30) + 256;
  if (!v417())
  {
    v426 = 0;
    v55 = 0.0;
LABEL_9:
    v57 = *MEMORY[0x1E69DDCE0];
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_30();
  v52 = (*(v51 + 2248))();

  v53 = *(*v52 + 152);

  v53(v472, v54);

  if (v473)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&v472[1];
  }

  v53(v474, v56);
  v57 = v474[0];
  v426 = v52;

  if (v475)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v57 < v45)
  {
    *&v58 = v45;
  }

  else
  {
    *&v58 = v57;
  }

  v59 = *v451;
  v419 = v58;
  v60 = VUIRoundValue();
  v62 = v61;
  rect = *((*v48 & *v30) + 0x118);
  rect_8 = (*v48 & *v30) + 280;
  v63 = (*&rect)(v60);
  v64 = 0.0;
  v459 = v30;
  if (v63)
  {
    v65 = v63;
    rect_24 = v33;
    v66 = sub_1E32AE9B0(v63);
    for (i = 0; ; ++i)
    {
      if (v66 == i)
      {

        v71 = 1;
        v72 = 1;
        goto LABEL_34;
      }

      if ((v65 & 0xC000000000000001) != 0)
      {
        v68 = MEMORY[0x1E6911E60](i, v65);
      }

      else
      {
        if (i >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_365;
        }

        v68 = *(v65 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_364;
      }

      LOWORD(v477[0]) = *(v68 + 98);
      LOWORD(v476) = 65;
      sub_1E3742F1C();
      sub_1E4206254();
      sub_1E4206254();
      if (v480 == *&v478 && v481 == v479)
      {
        break;
      }

      v70 = sub_1E42079A4();

      if (v70)
      {
        goto LABEL_30;
      }
    }

LABEL_30:
    *&v73 = COERCE_DOUBLE(sub_1E3841D9C(v68, v65));
    v75 = v74;

    if ((v75 & 1) != 0 || (v478 = *&v457, v480 = v73, LOBYTE(v481) = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80), sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80), v76 = OUTLINED_FUNCTION_10_57(), sub_1E38D2054(v76, v77), (v78 = v477[0]) == 0))
    {

      v72 = 0;
      v71 = 1;
    }

    else
    {
      v71 = v73 > 2;
      [v477[0] vui:v47 sizeThatFits:0.0];
      v64 = v79;

      v72 = 0;
    }
  }

  else
  {
    v71 = 1;
    v72 = 1;
  }

LABEL_34:
  v80 = sub_1E32AE9B0(v457);
  v81 = sub_1E39A69F8();
  if ((v72 & 1) != 0 || (v81 & 1) == 0 || v80 <= 2)
  {
    LODWORD(v435) = 0;
    HIDWORD(v415) = 0;
    v100 = v457;
    OUTLINED_FUNCTION_38_18();
    goto LABEL_123;
  }

  v452 = v80;
  v82 = v62;
  v83 = sub_1E32AE9B0(v457);
  v84 = 0;
  v85.n128_f64[0] = OUTLINED_FUNCTION_38_18();
  v86 = 0.0;
  while (v83 != v84)
  {
    if (rect_24)
    {
      v87 = MEMORY[0x1E6911E60](v84, v457, v85);
    }

    else
    {
      if (v84 >= *(rect_16 + 16))
      {
        goto LABEL_362;
      }

      v87 = *(v457 + 8 * v84 + 32);
    }

    v88 = v87;
    if (__OFADD__(v84, 1))
    {
      goto LABEL_361;
    }

    v89 = (*&rect)();
    if (!v89)
    {
      goto LABEL_68;
    }

    if ((v89 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v84, v89);
    }

    else
    {
      if (v84 >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_363;
      }
    }

    v90 = sub_1E39A926C();
    v91 = sub_1E39A9364();
    objc_opt_self();
    v92 = swift_dynamicCastObjCClass();
    if (v92)
    {
      v93 = v92;
      v94 = v88;
      if ([v93 buttonType] == 3)
      {
        [v93 setMinWidth_];
      }
    }

    [v88 vui:v47 sizeThatFits:0.0];
    v96 = v95;
    if ((v90 & 1) != 0 && (LOBYTE(v454) & 1) == 0)
    {
      v97 = *&v448;
LABEL_57:
      if (v96 > v97)
      {
        v97 = v96;
      }

      if (v97 <= v47)
      {
        v96 = v97;
      }

      else
      {
        v96 = v47;
      }

      goto LABEL_62;
    }

    if ((v91 & 1) != 0 && (a30 & 1) == 0)
    {
      v97 = v446;
      goto LABEL_57;
    }

LABEL_62:
    objc_opt_self();
    v98 = swift_dynamicCastObjCClass();
    if (v98)
    {
      v99 = [v98 onlyHasImage];

      if (v99)
      {
        goto LABEL_69;
      }

      if (v86 <= v96)
      {
        v86 = v96;
      }

      ++v84;
    }

    else
    {

LABEL_68:

LABEL_69:
      ++v84;
    }
  }

  if (v83)
  {
    v100 = v457;
    if (v83 < 1)
    {
      goto LABEL_372;
    }

    v101 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    do
    {
      if (rect_24)
      {
        v103 = MEMORY[0x1E6911E60](v101, v457, v85);
      }

      else
      {
        v103 = *(v457 + 8 * v101 + 32);
      }

      v104 = v103;
      objc_opt_self();
      v105 = swift_dynamicCastObjCClass();
      v106 = v86;
      if (v105)
      {
        v107 = v105;
        v106 = v86;
        if ([v105 onlyHasImage])
        {
          [v107 vui:v47 sizeThatFits:0.0];
          v106 = v108;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = OUTLINED_FUNCTION_27();
        v102 = sub_1E39ABC54(v112, v113, v114, v102);
      }

      v110 = *(v102 + 2);
      v109 = *(v102 + 3);
      v111 = v110 + 1;
      if (v110 >= v109 >> 1)
      {
        v102 = sub_1E39ABC54((v109 > 1), v110 + 1, 1, v102);
      }

      ++v101;

      *(v102 + 2) = v111;
      *&v102[8 * v110 + 32] = v106;
    }

    while (v83 != v101);
LABEL_89:
    v115 = 0.0;
    v116 = 32;
    do
    {
      if (--v111)
      {
        v115 = v55 + v115 + *&v102[v116];
      }

      else
      {
        v115 = v115 + *&v102[v116];
      }

      v116 += 8;
    }

    while (v111);

    v62 = v82;
    if (v115 > v47)
    {
      if (v83)
      {
        for (j = 0; j != v83; ++j)
        {
          if (rect_24)
          {
            v118 = MEMORY[0x1E6911E60](j, v100);
          }

          else
          {
            v118 = *(v100 + 8 * j + 32);
          }

          v119 = v118;
          objc_opt_self();
          v120 = swift_dynamicCastObjCClass();
          if (v120)
          {
            v121 = v120;
            if ([v120 buttonType] == 3)
            {
              [v121 setMinWidth_];
            }
          }
        }
      }

      goto LABEL_106;
    }

LABEL_107:
    if ((v455 | v71))
    {
LABEL_108:
      LODWORD(v435) = 0;
      HIDWORD(v415) = 0;
    }

    else
    {
      if (v83)
      {
        v122 = 0;
        do
        {
          if (rect_24)
          {
            v123 = MEMORY[0x1E6911E60](v122, v100);
          }

          else
          {
            if (v122 >= *(rect_16 + 16))
            {
              goto LABEL_370;
            }

            v123 = *(v100 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_366;
          }

          objc_opt_self();
          v126 = swift_dynamicCastObjCClass();
          if (v126)
          {
            v127 = [v126 numberOfLinesRequiredForLabelWithButtonWidth_];

            if (v127 > 1)
            {
              goto LABEL_108;
            }
          }

          else
          {
          }

          ++v122;
        }

        while (v125 != v83);
      }

      LODWORD(v435) = 0;
      HIDWORD(v415) = 1;
    }
  }

  else
  {
    v102 = MEMORY[0x1E69E7CC0];
    v111 = *(MEMORY[0x1E69E7CC0] + 16);
    v100 = v457;
    if (v111)
    {
      goto LABEL_89;
    }

    v62 = v82;
    if (v47 >= 0.0)
    {
      goto LABEL_107;
    }

LABEL_106:
    HIDWORD(v415) = 0;
    LODWORD(v435) = 1;
  }

  v80 = v452;
LABEL_123:
  sub_1E32AE9B0(v100);
  v434 = 0;
  LODWORD(v442) = 0;
  v128 = 0;
  v129 = 0;
  v413 = *&v64;
  v414 = OUTLINED_FUNCTION_55_1(v47 - v64 - (v55 + v55));
  v432 = v80 - 1;
  v131 = __OFSUB__(v80, 1);
  HIDWORD(v425) = v131;
  v132 = v100 + 32;
  v133 = -v130;
  v427 = v47 + v42;
  v437 = 0.0;
  *&v438 = v47;
  MaxX = 0.0;
  v134 = v42;
  *&v416 = v59;
  v453 = MEMORY[0x1E69E7CC0];
  v456 = MEMORY[0x1E69E7CC0];
  v423 = -v130;
  v424 = v100 + 32;
LABEL_127:
  v135 = 0;
  v136 = v132 + 8 * v129;
  v137 = v133 + v129;
  while (1)
  {
    if (!(v137 + v135))
    {
      if ((sub_1E39A69F8() & 1) == 0)
      {
        goto LABEL_346;
      }

      v226 = (*&rect)();
      if (!v226)
      {
        goto LABEL_346;
      }

      v227 = v226;
      v228 = COERCE_DOUBLE(sub_1E39AB6F8(v456));
      LODWORD(v431) = v229;
      *v451 = *&v416;
      v230 = *v440;
      v447 = v227;
      v445 = *(*v440 + 16);
      if (!v445)
      {

        v336 = MEMORY[0x1E69E7CC0];
        v436 = v416;
        goto LABEL_301;
      }

      *&rect_24a = 0.0;
      *&v432 = 0.0;
      *&v231 = 0.0;
      v232 = v453;
      v233 = *(v453 + 2);
      v442 = v227 & 0xC000000000000001;
      v443 = v230 + 32;
      *&v427 = v227 + 32;
      v234 = v453 + 32;
      *&v423 = v228;
      *&v424 = OUTLINED_FUNCTION_55_1(v47 - v228);
      v449 = MEMORY[0x1E69E7CC0];
      HIDWORD(v425) = v434;
      v235 = 0.0;
      LODWORD(v454) = 1;
      v236 = 0.0;
      v237 = 0.0;
      v238 = *&v416;
      v441 = v230;
      while (1)
      {
        sub_1E39ABF00(v231, 1, v230);
        v239 = (v443 + 32 * v231);
        v241 = *v239;
        v240 = v239[1];
        v243 = v239[2];
        v242 = v239[3];
        sub_1E34AF4E4(v231, v442 == 0, v227);
        if (*&v442 == 0.0)
        {
        }

        else
        {
          MEMORY[0x1E6911E60](v231, v227);
        }

        v244 = rect_24a;
        v478 = *&v457;
        v480 = v231;
        LOBYTE(v481) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
        sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80);
        v245 = OUTLINED_FUNCTION_10_57();
        sub_1E38D2054(v245, v246);
        v247 = v477[0];
        if (v477[0])
        {
          objc_opt_self();
          v248 = swift_dynamicCastObjCClass();
          if (v248)
          {
            v249 = v248;
            goto LABEL_234;
          }
        }

        v249 = 0;
LABEL_234:
        v250 = (v231 + 1);
        LODWORD(rect_8) = sub_1E39A926C();
        LODWORD(rect) = sub_1E39A9364();
        v251 = 0;
        do
        {
          if (v233 == v251)
          {
            goto LABEL_247;
          }

          if (v251 >= *(v232 + 2))
          {
            __break(1u);
LABEL_354:

            goto LABEL_356;
          }

          v252 = v251 + 1;
          v253 = *&v234[8 * v251++];
        }

        while (v253 < v231);
        v254 = v432 + 1;
        v255 = v235 + v236;
        v256 = LODWORD(v454);
        if (LOBYTE(v454))
        {
          v255 = v236;
        }

        if (v254 != v252)
        {
          v235 = 0.0;
          v256 = 1;
        }

        LODWORD(v454) = v256;
        if (v254 == v252)
        {
          v244 = v432;
        }

        else
        {
          v244 = v252 - 1;
        }

        if (v254 != v252)
        {
          v236 = v255;
          v237 = 0.0;
        }

LABEL_247:
        v477[0] = v456;
        rect_24a = v244;
        v478 = *&v244;
        LOBYTE(v479) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90);
        sub_1E3827828(&unk_1ECF31EB0, &unk_1ECF2FC90);
        v257 = v477;
        sub_1E38D2054(&v478, &v480);
        if (v481)
        {

          v230 = v441;
          v258 = v231 + 1;
          goto LABEL_296;
        }

        v446 = v235;
        v259 = v238;
        v260 = v237;
        v261 = *&v480;
        v491.origin.x = v241;
        v491.origin.y = v240;
        v491.size.width = v243;
        v491.size.height = v242;
        MinY = CGRectGetMinY(v491);
        v271 = v242;
        v272 = MinY;
        v230 = v441;
        v258 = v231 + 1;
        rect_16a = v243;
        if (v431)
        {
          v273 = v241;
          v274 = v240;
          v275 = v243;
          v276 = v271;
          v277 = (*&v438 - v261) * 0.5 + CGRectGetMinX(*(&v271 - 3));
          v237 = v260;
          v278 = v249;
          v279 = v236;
          goto LABEL_265;
        }

        v276 = v271;
        *&v439 = v236;
        v435 = v259;
        v278 = v249;
        if ((v433 & 0x100000000) == 0)
        {
          v281 = 0.0;
          v280 = v260;
          if (v260 > 0.0)
          {
LABEL_257:
            v277 = v281 + v280 + OUTLINED_FUNCTION_28_31(v262, v263, v264, v265, v266, v267, v268, v269, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v435, *&v437, v438, v439, v440, v441, v442, v443, v445, *&v446, v447, v449, v451, v453, *&v454, v456, v457, v459, *&rect, rect_8, *&rect_16a);
            v259 = v435;
            v279 = *&v439;
            v237 = v280;
            goto LABEL_265;
          }

          v282 = *&v423 - v261;
          v284 = 0.0;
          if (v282 > 0.0)
          {
            goto LABEL_259;
          }

LABEL_255:
          v277 = v284 + OUTLINED_FUNCTION_28_31(v262, v263, v264, v265, v266, v267, v268, v269, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v435, *&v437, v438, v439, v440, v441, v442, v443, v445, *&v446, v447, v449, v451, v453, *&v454, v456, v457, v459, *&rect, rect_8, *&rect_16a);
          goto LABEL_262;
        }

        v280 = v260;
        v281 = *&v424;
        if (v260 > 0.0)
        {
          goto LABEL_257;
        }

        v282 = *&v423 - v261;
        v283 = *&v423 - v261 <= 0.0;
        v284 = *&v424;
        if (v283)
        {
          goto LABEL_255;
        }

LABEL_259:
        if (!v249)
        {
          goto LABEL_264;
        }

        v257 = v249;
        v285 = [v257 onlyHasImage];
        if (!v285)
        {

LABEL_264:
          v492.size.width = rect_16a;
          v492.origin.x = v241;
          v492.origin.y = v240;
          v492.size.height = v276;
          v277 = v284 + CGRectGetMinX(v492);
          rect_16a = rect_16a + v282;
          v432 = rect_24a;
          v237 = v282;
          v259 = v435;
          v279 = *&v439;
          goto LABEL_265;
        }

        v293 = OUTLINED_FUNCTION_28_31(v285, v286, v287, v288, v289, v290, v291, v292, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v435, *&v437, v438, v439, v440, v441, v442, v443, v445, *&v446, v447, v449, v451, v453, *&v454, v456, v457, v459, *&rect, rect_8, *&rect_16a);

        v277 = v284 + v293;
LABEL_262:
        v259 = v435;
        v279 = *&v439;
        v237 = v260;
LABEL_265:
        v236 = v279;
        v294 = v279 + v272;
        if (*&v231 == 0.0)
        {
          v296 = v276;
          if (v434)
          {
            v298 = v449;
            HIDWORD(v425) = 1;
            v297 = rect_16a;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_290;
            }
          }

          else
          {
            v295 = rect_8;
            v257 = LODWORD(rect);
            v297 = rect_16a;
            if ((rect_8 | LODWORD(rect)))
            {
              HIDWORD(v425) = 0;
              goto LABEL_273;
            }

            v298 = v449;
            HIDWORD(v425) = 0;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_290;
            }
          }

LABEL_270:
          v299 = OUTLINED_FUNCTION_27();
          v298 = sub_1E39ABB54(v299, v300, v301, v298);
          goto LABEL_290;
        }

        v295 = rect_8;
        v257 = LODWORD(rect);
        v296 = v276;
        v297 = rect_16a;
        if (((rect_8 | LODWORD(rect)) & 1) == 0)
        {
          v298 = v449;
          goto LABEL_289;
        }

LABEL_273:
        *&rect_8 = v237;
        v493.origin.x = OUTLINED_FUNCTION_33_29();
        v493.size.height = v296;
        MinX = CGRectGetMinX(v493);
        v494.origin.x = OUTLINED_FUNCTION_33_29();
        rect = v296;
        v494.size.height = v296;
        MaxY = CGRectGetMaxY(v494);
        if (v295)
        {
          *&v439 = v236;
          v304 = v297;
          v305 = v259;
          v495.origin.x = OUTLINED_FUNCTION_39_19();
          Height = CGRectGetHeight(v495);
          OUTLINED_FUNCTION_22_33();
          sub_1E39A945C();
          v315 = OUTLINED_FUNCTION_35_25() - Height;
          v435 = v236;
          if ((LOBYTE(v454) & 1) == 0)
          {
            OUTLINED_FUNCTION_70_10(v315, v307, v308, v309, v310, v311, v312, v313, v314, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v236, *&v437, v438, *&v236, v440, v441, v442, v443, v445, *&v446);
            OUTLINED_FUNCTION_58_14();
            max<A>(_:_:)();
            v315 = v478;
          }

          v446 = v315;
          v298 = v449;
          v259 = v305;
          v257 = v459;
          v236 = *&v439;
          v297 = rect_16a;
          if (sub_1E39A577C())
          {
            LODWORD(v454) = 0;
            goto LABEL_288;
          }

LABEL_286:
          v497.origin.x = v304;
          v497.origin.y = v435;
          v497.size.width = MaxY;
          v497.size.height = MinX;
          CGRectGetMaxY(v497);
          VUIRoundValue();
          LODWORD(v454) = 0;
          if (v327 > v259)
          {
            v259 = v327;
          }

LABEL_288:
          v296 = rect;
          v237 = *&rect_8;
        }

        else
        {
          v298 = v449;
          if ((v257 & 1) == 0)
          {
            goto LABEL_288;
          }

          *&v439 = v236;
          v304 = v297;
          v316 = v259;
          v496.origin.x = OUTLINED_FUNCTION_39_19();
          v317 = CGRectGetHeight(v496);
          OUTLINED_FUNCTION_22_33();
          sub_1E39A95FC();
          v326 = OUTLINED_FUNCTION_35_25() - v317;
          if ((LOBYTE(v454) & 1) == 0)
          {
            OUTLINED_FUNCTION_70_10(v326, v318, v319, v320, v321, v322, v323, v324, v325, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v435, *&v437, v438, *&v236, v440, v441, v442, v443, v445, *&v446);
            OUTLINED_FUNCTION_58_14();
            max<A>(_:_:)();
            v326 = v478;
          }

          v446 = v326;
          v257 = v459;
          v259 = v316;
          if (!sub_1E39A577C())
          {
            v435 = v236;
            v236 = *&v439;
            v297 = rect_16a;
            goto LABEL_286;
          }

          LODWORD(v454) = 0;
          v236 = *&v439;
          v296 = rect;
          v237 = *&rect_8;
          v297 = rect_16a;
        }

LABEL_289:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_270;
        }

LABEL_290:
        v328 = *(v298 + 2);
        OUTLINED_FUNCTION_40_27();
        if (v177)
        {
          v333 = OUTLINED_FUNCTION_1_12(v329);
          v298 = sub_1E39ABB54(v333, v334, v335, v298);
        }

        *(v298 + 2) = v257;
        v449 = v298;
        v330 = &v298[32 * v328];
        *(v330 + 4) = v277;
        *(v330 + 5) = v294;
        *(v330 + 6) = v297;
        *(v330 + 7) = v296;
        v498.origin.x = OUTLINED_FUNCTION_33_29();
        v498.size.height = v296;
        CGRectGetMaxY(v498);
        VUIRoundValue();
        v332 = v331;

        if (v332 > v259)
        {
          v238 = v332;
        }

        else
        {
          v238 = v259;
        }

        v232 = v453;
        *v451 = v238;
        v235 = v446;
LABEL_296:
        v231 = v258;
        v227 = v447;
        if (v258 == v445)
        {
          v436 = *&v238;

          LODWORD(v434) = HIDWORD(v425);
          v336 = v449;
LABEL_301:

          *v440 = v336;
          if ((v434 & 0x100000000) != 0)
          {
            v337 = v453;
            if (v434)
            {
              rect_24b = *(v336 + 16);
              if (rect_24b)
              {
                v338 = 0;
                v339 = 0;
                v340 = *(v453 + 2);
                v450 = v336;
                rect_8a = 0;
                rect_16b = v336 + 32;
                v250 = MEMORY[0x1E69E7CC0];
                LODWORD(rect) = 1;
                v341 = 0.0;
                v458 = 0.0;
                v342 = 0.0;
                while (1)
                {
                  if (v338 >= *(v450 + 16))
                  {
                    goto LABEL_367;
                  }

                  v343 = 0;
                  v344 = rect_16b + 32 * v338;
                  v345 = *(v344 + 16);
                  v346 = *(v344 + 24);
                  v347 = v338 + 1;
                  while (v340 != v343)
                  {
                    if (v343 >= *(v337 + 2))
                    {
                      goto LABEL_360;
                    }

                    v348 = v343 + 1;
                    v349 = *&v453[8 * v343++ + 32];
                    if (v349 >= v338)
                    {
                      rect_8a = v348 - 1;
                      if (v339 + 1 == v348)
                      {
                        v350 = v342;
                      }

                      else
                      {
                        v350 = v341;
                      }

                      v351 = 0.0;
                      if (v339 + 1 != v348)
                      {
                        v351 = v342;
                      }

                      if ((LOBYTE(rect) & 1) == 0)
                      {
                        v341 = v350;
                        v342 = v351;
                      }

                      break;
                    }
                  }

                  v471[1] = v227;
                  v469 = v338;
                  v470 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
                  sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790);
                  sub_1E38D2054(&v469, v471);
                  if (v471[0])
                  {
                    break;
                  }

LABEL_344:
                  ++v338;
                  v227 = v447;
                  if (v347 == rect_24b)
                  {
                    goto LABEL_354;
                  }
                }

                v352 = v342;
                v353 = sub_1E39A926C();
                v354 = sub_1E39A9364();
                v499.origin.x = OUTLINED_FUNCTION_2_79();
                v355 = CGRectGetMinX(v499);
                v500.origin.x = OUTLINED_FUNCTION_2_79();
                v356 = CGRectGetMinY(v500);
                if (v338)
                {
                  v357 = v341 + v458 + v356;
                  v501.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMinX(v501);
                  v502.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMaxY(v502);
                  v503.origin.x = OUTLINED_FUNCTION_11_65();
                  CGRectGetMaxY(v503);
                  v358 = VUIRoundValue();
                  OUTLINED_FUNCTION_30_30(v366, v367, v368, v369, v370, v371, v372, v373, v358, v359, v360, v361, v362, v363, v364, v365, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v436, *&v437, v438, v439, v440, v441, v442, v443, v445, *&v446, v447, v450, v451);
                  if (v353)
                  {
                    OUTLINED_FUNCTION_41_24();
                    sub_1E39A945C();
                    v339 = rect_8a + 1;
                    if (__OFADD__(rect_8a, 1))
                    {
                      goto LABEL_373;
                    }

                    OUTLINED_FUNCTION_34_30();
                    if (v417())
                    {
                      OUTLINED_FUNCTION_30();
                      (*(v374 + 2152))();
                      OUTLINED_FUNCTION_4_9();
                      OUTLINED_FUNCTION_47_0();
                      (*(v375 + 152))(&v478);
                    }

                    goto LABEL_330;
                  }

                  if (v354)
                  {
                    OUTLINED_FUNCTION_41_24();
                    sub_1E39A95FC();
                    v339 = rect_8a + 1;
                    if (__OFADD__(rect_8a, 1))
                    {
                      goto LABEL_374;
                    }

                    OUTLINED_FUNCTION_34_30();
                    if (v417())
                    {
                      OUTLINED_FUNCTION_30();
                      (*(v378 + 2176))();
                      OUTLINED_FUNCTION_4_9();
                      OUTLINED_FUNCTION_47_0();
                      (*(v379 + 152))(&v480);
                    }

LABEL_330:
                    VUIRoundValue();
                    v381 = v380;
                    v506.origin.x = OUTLINED_FUNCTION_11_65();
                    v342 = v381 - CGRectGetMaxY(v506);
                    v354 = v459;
                    if (sub_1E39A577C())
                    {
                      LODWORD(rect) = 0;
                    }

                    else
                    {
                      v512.origin.x = rect;
                      v512.origin.y = v454;
                      v512.size.width = v352;
                      v512.size.height = v446;
                      CGRectGetMaxY(v512);
                      v386 = VUIRoundValue();
                      LODWORD(rect) = 0;
                      OUTLINED_FUNCTION_30_30(v394, v395, v396, v397, v398, v399, v400, v401, v386, v387, v388, v389, v390, v391, v392, v393, v412, v413, v414, v415, v416, v417, v418, v419, v420, v421, v422, v423, v424, v425, v426, *&v427, v428, v429, v430, v431, v432, v433, v434, *&v436, *&v437, v438, v439, v440, v441, v442, v443, v445, *&v446, v447, v450, v451);
                    }

LABEL_339:
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v405 = OUTLINED_FUNCTION_27();
                      v250 = sub_1E39ABB54(v405, v406, v407, v250);
                    }

                    v402 = *(v250 + 2);
                    OUTLINED_FUNCTION_40_27();
                    if (v177)
                    {
                      v408 = OUTLINED_FUNCTION_1_12(v403);
                      v250 = sub_1E39ABB54(v408, v409, v410, v250);
                    }

                    *(v250 + 2) = v354;
                    v404 = &v250[32 * v402];
                    *(v404 + 4) = v355;
                    *(v404 + 5) = v357;
                    *(v404 + 6) = v345;
                    *(v404 + 7) = v346;

                    v337 = v453;
                    goto LABEL_344;
                  }

LABEL_337:
                  v342 = v352;
                  goto LABEL_339;
                }

                if (v353)
                {
                  v504.origin.x = OUTLINED_FUNCTION_2_79();
                  CGRectGetWidth(v504);
                  OUTLINED_FUNCTION_61_9();
                  sub_1E39A945C();
                  v505.origin.x = OUTLINED_FUNCTION_39_19();
                  CGRectGetMaxY(v505);
                  if (v417())
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v376 + 2152))();
                    OUTLINED_FUNCTION_4_9();
                    OUTLINED_FUNCTION_47_0();
                    v354 = v353;
                    (*(v377 + 152))(&v476);
                  }

                  goto LABEL_335;
                }

                if (v354)
                {
                  v507.origin.x = OUTLINED_FUNCTION_2_79();
                  CGRectGetWidth(v507);
                  OUTLINED_FUNCTION_61_9();
                  sub_1E39A95FC();
                  v508.origin.x = OUTLINED_FUNCTION_39_19();
                  CGRectGetMaxY(v508);
                  if (v417())
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v382 + 2176))();
                    OUTLINED_FUNCTION_4_9();
                    OUTLINED_FUNCTION_47_0();
                    v354 = v353;
                    (*(v383 + 152))(v477);
                  }

LABEL_335:
                  VUIRoundValue();
                  v356 = v384;
                }

                v509.origin.x = OUTLINED_FUNCTION_2_79();
                v385 = v356 - CGRectGetMinY(v509);
                v510.origin.x = OUTLINED_FUNCTION_2_79();
                v355 = CGRectGetMinX(v510);
                v511.origin.x = OUTLINED_FUNCTION_2_79();
                v458 = v385;
                v357 = v385 + CGRectGetMinY(v511);
                goto LABEL_337;
              }

              v250 = MEMORY[0x1E69E7CC0];
LABEL_356:

              *v440 = v250;
LABEL_347:
              if (v437 > 0.0)
              {
                v411 = *v428;
                if (*v428 <= v437)
                {
                  v411 = v437;
                }

                *v428 = v411;
              }

LABEL_351:
              OUTLINED_FUNCTION_42();
              return;
            }
          }

LABEL_346:

          goto LABEL_347;
        }
      }
    }

    v138 = v129 + v135;
    if (rect_24)
    {
      v139 = MEMORY[0x1E6911E60](v129 + v135, v457);
    }

    else
    {
      if (v138 >= *(rect_16 + 16))
      {
        goto LABEL_358;
      }

      v139 = *(v136 + 8 * v135);
    }

    v140 = v139;
    v141 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      break;
    }

    if (__OFADD__(v128 + v135, 1))
    {
      goto LABEL_359;
    }

    *&v142 = COERCE_DOUBLE((*&rect)());
    if (*&v142 != 0.0)
    {
      v143 = v142;
      v441 = v128 + v135;
      if ((v142 & 0xC000000000000001) != 0)
      {
        v144 = MEMORY[0x1E6911E60]();
        goto LABEL_140;
      }

      if ((v128 + v135) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_368;
      }

      v144 = *(v142 + 8 * v128 + 8 * v135 + 32);

LABEL_140:
      v145 = sub_1E39A926C();
      v422 = v144;
      v146 = sub_1E39A9364();
      LODWORD(v144) = v146;
      v147 = v128 + v135;
      v148 = v441 == 0;
      v149 = v148 | HIDWORD(v434);
      LODWORD(v443) = v148 | v442;
      HIDWORD(v421) = v145;
      if (!v441 && (v145 & 1) == 0)
      {
        v149 = v146 | HIDWORD(v434);
        LODWORD(v443) = v146 | v442;
      }

      v150 = v149;
      [v140 vui:v47 sizeThatFits:*&v431];
      v153 = v152.n128_f64[0];
      *&v439 = v42;
      *&v420 = v55;
      if (LODWORD(v435))
      {
        if (!v441)
        {
          LODWORD(v415) = v144;
          v478 = *&v457;
          v480 = 1;
          LOBYTE(v481) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC80);
          sub_1E3827828(&qword_1ECF37A20, &unk_1ECF2FC80);
          v155 = OUTLINED_FUNCTION_10_57();
          sub_1E38D2054(v155, v156);
          v157 = v477[0];
          if (v477[0])
          {
            [v477[0] vui:v47 sizeThatFits:*&v431];
          }

          v147 = v128 + v135;
        }
      }

      else if (HIDWORD(v415))
      {
        objc_opt_self();
        v154 = swift_dynamicCastObjCClass();
        if (v154)
        {
          [v154 onlyHasImage];
        }
      }

      v151.n128_f64[0] = v134;
      v152.n128_f64[0] = v62;
      nullsub_1(v151, v152);
      x = v482.origin.x;
      y = v482.origin.y;
      width = v482.size.width;
      v161 = v482.size.height;
      if (v427 >= CGRectGetMaxX(v482))
      {
        if (!LODWORD(v435) || v147 != 1)
        {

          v168 = v150;
          v153 = v161;
          v165 = v430;
          v169 = BYTE4(v421);
          goto LABEL_173;
        }

        LODWORD(v415) = v144;
LABEL_162:
        v165 = v430;

        goto LABEL_163;
      }

      LODWORD(v415) = v144;
      if (v147 < 2)
      {
        goto LABEL_162;
      }

      v478 = *&v143;
      v480 = v128 + v135 - 1;
      LOBYTE(v481) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790);
      v162 = OUTLINED_FUNCTION_10_57();
      sub_1E38D2054(v162, v163);
      v164 = v477[0];

      v165 = v430;
      if (!v164)
      {
        goto LABEL_157;
      }

      v166 = sub_1E39A926C();
      v167 = sub_1E39A9364();
      if (v166)
      {
        CGRectGetHeight(*v429);

LABEL_157:
        v147 = v128 + v135;
      }

      else
      {
        v147 = v128 + v135;
        if (v167)
        {
          CGRectGetHeight(*v430);
        }
      }

LABEL_163:
      VUIRoundValue();
      v62 = v170;
      v483.origin.x = x;
      v483.origin.y = y;
      v483.size.width = width;
      v483.size.height = v161;
      v171 = CGRectGetWidth(v483);
      v172 = v147 - 1;
      if (__OFSUB__(v147, 1))
      {
        goto LABEL_371;
      }

      width = v171;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v199 = OUTLINED_FUNCTION_27();
        v453 = sub_1E3997AA8(v199, v200, v201, v202);
      }

      x = *&v439;
      v174 = *(v453 + 2);
      v173 = *(v453 + 3);
      v175 = v174 + 1;
      if (v174 >= v173 >> 1)
      {
        v203 = OUTLINED_FUNCTION_1_12(v173);
        v453 = sub_1E3997AA8(v203, v204, v205, v453);
      }

      *(v453 + 2) = v175;
      *&v453[8 * v174 + 32] = v172;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v206 = OUTLINED_FUNCTION_27();
        v456 = sub_1E39ABC54(v206, v207, v208, v209);
      }

      v169 = BYTE4(v421);
      v144 = *(v456 + 2);
      OUTLINED_FUNCTION_40_27();
      if (v177)
      {
        v210 = OUTLINED_FUNCTION_1_12(v176);
        v456 = sub_1E39ABC54(v210, v211, v212, v456);
      }

      LODWORD(v434) = v443;
      *(v456 + 2) = v175;
      *&v456[8 * v144 + 32] = MaxX - *&v439;
      v168 = v443;
      v134 = *&v439;
      y = v62;
      LOBYTE(v144) = v415;
LABEL_173:
      HIDWORD(v434) = v168;
      *&v442 = v134;
      if ((v169 & 1) != 0 && (LOBYTE(v454) & 1) == 0)
      {
        v178 = v62;
        v179 = *&v448;
        goto LABEL_179;
      }

      if (v144 & 1) == 0 || (a30)
      {
        v178 = v62;
      }

      else
      {
        v178 = v62;
        v179 = v446;
LABEL_179:
        if (width > v179)
        {
          v179 = width;
        }

        if (v179 <= *&v438)
        {
          width = v179;
        }

        else
        {
          width = *&v438;
        }
      }

      v484.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMinX(v484);
      v485.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMaxY(v485);
      if ((sub_1E39A69F8() & 1) == 0 || (sub_1E39A69F8() & 1) != 0 && v441 >= 1)
      {
        if (v169)
        {
          OUTLINED_FUNCTION_22_33();
          sub_1E39A945C();
          if (!sub_1E39A577C())
          {
            v486.origin.x = OUTLINED_FUNCTION_39_19();
            CGRectGetMaxY(v486);
            VUIRoundValue();
            if (v180 > v59)
            {
              v59 = v180;
            }
          }
        }

        if (v144)
        {
          OUTLINED_FUNCTION_22_33();
          sub_1E39A95FC();
          if (!sub_1E39A577C())
          {
            CGRectGetMaxY(*v165);
            VUIRoundValue();
            if (v181 > v59)
            {
              v59 = v181;
            }
          }
        }
      }

      v62 = v178;
      v182 = *v440;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = OUTLINED_FUNCTION_27();
        v182 = sub_1E39ABB54(v196, v197, v198, v182);
      }

      v184 = *(v182 + 2);
      v183 = *(v182 + 3);
      if (v184 >= v183 >> 1)
      {
        v182 = sub_1E39ABB54((v183 > 1), v184 + 1, 1, v182);
      }

      *(v182 + 2) = v184 + 1;
      v185 = &v182[32 * v184];
      *(v185 + 4) = x;
      *(v185 + 5) = y;
      *(v185 + 6) = width;
      *(v185 + 7) = v153;
      *v440 = v182;
      v487.origin.x = OUTLINED_FUNCTION_4_82();
      MaxX = CGRectGetMaxX(v487);
      v488.origin.x = OUTLINED_FUNCTION_4_82();
      v186 = CGRectGetWidth(v488);
      v489.origin.x = OUTLINED_FUNCTION_4_82();
      v187 = CGRectGetMaxX(v489);
      v188 = v437;
      if (v437 <= v187)
      {
        v188 = v187;
      }

      v437 = v188;
      v490.origin.x = OUTLINED_FUNCTION_4_82();
      CGRectGetMaxY(v490);
      VUIRoundValue();
      if (v189 > v59)
      {
        v59 = v189;
      }

      *v451 = v59;
      if ((v425 & 0x100000000) != 0)
      {
        goto LABEL_369;
      }

      if (v432 - v128 == v135)
      {
        v190 = v453;
        v47 = *&v438;
        v42 = *&v439;
        v55 = *&v420;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v213 = OUTLINED_FUNCTION_27();
          v190 = sub_1E3997AA8(v213, v214, v215, v453);
        }

        v191 = v190;
        v192 = *(v190 + 2);
        v453 = v191;
        OUTLINED_FUNCTION_40_27();
        if (v177)
        {
          v216 = OUTLINED_FUNCTION_1_12(v193);
          v453 = sub_1E3997AA8(v216, v217, v218, v453);
        }

        *(v453 + 2) = v182;
        *&v453[8 * v192 + 32] = *&v432;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v219 = OUTLINED_FUNCTION_27();
          v456 = sub_1E39ABC54(v219, v220, v221, v222);
        }

        v194 = *(v456 + 2);
        OUTLINED_FUNCTION_40_27();
        if (v177)
        {
          v223 = OUTLINED_FUNCTION_1_12(v195);
          v456 = sub_1E39ABC54(v223, v224, v225, v456);
        }

        *(v456 + 2) = v182;
        *&v456[8 * v194 + 32] = MaxX - *&v439;
      }

      else
      {
        v47 = *&v438;
        v42 = *&v439;
        v55 = *&v420;
      }

      v134 = *&v442 + v55 + v186;

      LODWORD(v442) = v443;
      v128 += v135 + 1;
      v129 = v141;
      v133 = v423;
      v132 = v424;
      goto LABEL_127;
    }

    ++v135;
  }

  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  __break(1u);
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
  __break(1u);
LABEL_374:
  __break(1u);
}

uint64_t sub_1E39AB6F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

id sub_1E39AB73C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_debugLineRects) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_bannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViewModels) = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth);
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView) = 0;
  v6 = type metadata accessor for CanonicalBannerInfoView();
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E39AB88C(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_debugLineRects] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_bannerLayout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViewModels] = 0;
  OUTLINED_FUNCTION_65_2(OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_parentViewWidth);
  v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_isUberLayout] = v3;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_badgeView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_titleImageView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentTitleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_contentSubtitleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_episodeInfoTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_promoTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_askToBuyPromptView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_descriptionTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_genresAndProviderTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_metadataAndBadgesTagsView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_buttonViews] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_disclaimerTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI23CanonicalBannerInfoView_availabilityTextView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CanonicalBannerInfoView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E39AB9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalBannerInfoView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E39ABB54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_1E39ABC54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38CC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

unint64_t sub_1E39ABD54()
{
  result = qword_1EE268AF8[0];
  if (!qword_1EE268AF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE268AF8);
  }

  return result;
}

unint64_t sub_1E39ABDD0()
{
  result = qword_1ECF2FC78;
  if (!qword_1ECF2FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FC78);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CanonicalBannerInfoView.CanonicalBannerButtonsLocation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E39ABF00(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_48_20()
{

  return VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
}

unint64_t OUTLINED_FUNCTION_70_10(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  *(v42 - 192) = a42;
  *(v42 - 184) = 0;
  *&STACK[0x200] = a1;

  return sub_1E3793CAC();
}

void *sub_1E39ABFE8(void *a1, char a2)
{
  v2 = 0;
  if (a2 != 3)
  {
    v2 = a1;
  }

  v3 = a1;
  return v2;
}

uint64_t sub_1E39AC06C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E39AC108()
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E39AC158(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B95C;
}

uint64_t sub_1E39AC1DC()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1E39AC21C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation;
  OUTLINED_FUNCTION_37();
  v1[v3] = a1;
  return [v1 setNeedsUpdateOfSupportedInterfaceOrientations];
}

id (*sub_1E39AC26C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E39AC2D0;
}

id sub_1E39AC2D0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateOfSupportedInterfaceOrientations];
  }

  return result;
}

BOOL sub_1E39AC34C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) == 3;
  }

  return !v1;
}

id sub_1E39AC400(SEL *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) > 2u)
  {
    return 0;
  }

  else
  {
    return [*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent) *a1];
  }
}

id sub_1E39AC444()
{
  v1 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton);
  }

  else
  {
    v4 = sub_1E39AC4A8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E39AC4A8(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-1] - v9;
  v11 = *(a1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout);
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = sub_1E3B1F31C();
  v14 = OUTLINED_FUNCTION_18();
  sub_1E3B1F350(0xD000000000000022, 0x80000001E426A320, v11, v14 & 1, sub_1E39B4358, v12, v28, v13);

  sub_1E4203DA4();
  v15 = sub_1E4200D94();
  (*(*v11 + 152))(v29, v15);
  if (v30)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v29[2];
    v19.n128_u64[0] = v29[3];
    v16.n128_u64[0] = v29[0];
    v17.n128_u64[0] = v29[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  v20 = sub_1E4202734();
  v28[104] = 0;
  memcpy(v26, v28, 0x68uLL);
  LOBYTE(v26[13]) = v20;
  *&v26[14] = v13;
  v26[15] = v1;
  v26[16] = v2;
  v26[17] = v3;
  LOBYTE(v26[18]) = 0;
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  v21 = OUTLINED_FUNCTION_39_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21);
  sub_1E39B43F4();
  sub_1E4202EA4();

  memcpy(v27, v26, 0x91uLL);
  sub_1E325F6F0(v27, &qword_1ECF2FE08);
  sub_1E39B450C(v10, v7, &qword_1ECF2FE00);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE20));
  v23 = sub_1E4201214();
  sub_1E325F6F0(v10, &qword_1ECF2FE00);
  return v23;
}

void sub_1E39AC7A4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_1E39AC824()
{
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v0 = sub_1E41FF1E4();

    return (v0 & 1);
  }

  else
  {
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 isNetworkReachable];

    return v3;
  }
}

id sub_1E39AC8B4()
{
  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    return sub_1E41FF1F4();
  }

  else
  {
    v1 = [objc_opt_self() sharedInstance];

    return v1;
  }
}

id sub_1E39AC924()
{
  if (TVAppFeature.isEnabled.getter(12))
  {

    return sub_1E4206AC4();
  }

  else
  {
    v1 = *MEMORY[0x1E69DF878];

    return v1;
  }
}

id sub_1E39AC978()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v47 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_0_10();
  v54 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v47 - v6;
  v7 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  *(v1 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v15 = v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  *v15 = 0;
  *(v15 + 8) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = 0;
  v16 = (v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_lastPlayerSize);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation) = 0;
  v17 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout;
  type metadata accessor for PlaybackFullscreenButtonLayout();
  *(v1 + v17) = sub_1E3B628A8();
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  v18 = type metadata accessor for PlaybackContainerViewController();
  v62 = v1;
  v63 = v18;
  OUTLINED_FUNCTION_25();
  v21 = objc_msgSendSuper2(v19, v20);
  [v21 setModalPresentationStyle_];
  [v21 setModalPresentationCapturesStatusBarAppearance_];
  result = [v21 view];
  if (result)
  {
    v23 = result;
    [result setAccessibilityIgnoresInvertColors_];

    v24 = objc_opt_self();
    v59 = v24;
    v25 = [v24 defaultCenter];
    v26 = sub_1E39AC924();
    sub_1E39AC8B4();
    sub_1E4206C14();

    swift_unknownObjectRelease();
    v57 = sub_1E37907F0(&qword_1EE23B130, MEMORY[0x1E6969F20]);
    sub_1E4200844();
    v60 = *(v9 + 8);
    v60(v13, v7);
    v47 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables;
    swift_beginAccess();
    sub_1E42004C4();
    swift_endAccess();

    v27 = [v24 defaultCenter];
    v28 = *sub_1E37E1340();
    sub_1E4206C14();

    v29 = sub_1E3280A90(0, &qword_1EE23B1D0);
    v55 = v9 + 8;
    v52 = v29;
    v30 = sub_1E4206A04();
    v61 = v30;
    v58 = sub_1E42069A4();
    v31 = v48;
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v58);
    v56 = sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v31, &unk_1ECF2D2B0);

    v60(v13, v7);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00);
    v53 = v21;
    sub_1E4200844();

    v54 = *(v54 + 8);
    v32 = OUTLINED_FUNCTION_35_5();
    v33(v32);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    v34 = [v59 defaultCenter];
    v35 = *sub_1E37E13C8();
    sub_1E4206C14();

    v36 = sub_1E4206A04();
    OUTLINED_FUNCTION_26_38(v36);
    sub_1E325F6F0(v31, &unk_1ECF2D2B0);

    v37 = OUTLINED_FUNCTION_47_19();
    v38(v37);
    OUTLINED_FUNCTION_4_0();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4200844();

    v40 = OUTLINED_FUNCTION_35_5();
    (v54)(v40);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    v41 = [v59 defaultCenter];
    sub_1E4206C14();

    v42 = sub_1E4206A04();
    OUTLINED_FUNCTION_26_38(v42);
    sub_1E325F6F0(v31, &unk_1ECF2D2B0);

    v43 = OUTLINED_FUNCTION_47_19();
    v44(v43);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    v45 = v53;
    swift_unknownObjectWeakInit();

    sub_1E4200844();

    v46 = OUTLINED_FUNCTION_35_5();
    (v54)(v46);
    OUTLINED_FUNCTION_32_35();
    sub_1E42004C4();
    swift_endAccess();

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E39AD110()
{
  v0 = sub_1E41FDF24();
  if (v0)
  {
    v1 = v0;
    v8 = sub_1E41FF234();
    sub_1E4207414();
    sub_1E375D7E8(v9, v1, &v10);

    sub_1E375D84C(v9);
    if (v11)
    {
      if (swift_dynamicCast())
      {
        v2 = v8;
        goto LABEL_9;
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0);
    }
  }

  if (TVAppFeature.isEnabled.getter(12))
  {
    sub_1E41FF204();
    sub_1E41FF1F4();
    v2 = sub_1E41FF1E4();
  }

  else
  {
    v3 = [objc_opt_self() sharedInstance];
    v2 = [v3 isNetworkReachable];
  }

LABEL_9:
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 isPostPlayActive];

  if (v6)
  {
    if ((v2 & 1) == 0)
    {
      v7 = [v4 sharedInstance];
      [v7 dismissPlaybackAnimated:1 leaveGroupActivitySession:1 completion:0];
    }
  }
}

void sub_1E39AD2EC()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  *(v1 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v3 = v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  *v3 = 0;
  *(v3 + 8) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = 0;
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_lastPlayerSize);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_forcePortraitOrientation) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_fullscreenButtonLayout;
  type metadata accessor for PlaybackFullscreenButtonLayout();
  *(v1 + v5) = sub_1E3B628A8();
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1E42076B4();
  __break(1u);
}

id sub_1E39AD420()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
  sub_1E39AC7A4();
  [v1 setFrame_];
  v2 = [v1 layer];
  [v2 setCornerRadius_];

  v3 = [v1 layer];
  [v3 setMasksToBounds_];

  v4 = sub_1E39AC444();
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController____lazy_storage___fullscreenButton;
  [v1 addSubview_];
  objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  OUTLINED_FUNCTION_10_9();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E429DCC0;
  v7 = [*&v0[v5] topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [*&v0[v5] leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  sub_1E3280A90(0, &qword_1EE23B1A0);
  v13 = sub_1E42062A4();

  v14 = OUTLINED_FUNCTION_33_14();
  [v14 v15];

  return [*&v0[v5] setAlpha_];
}

void *sub_1E39AD6C4(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidDisappear_, a1 & 1);
  OUTLINED_FUNCTION_21();
  result = (*(v3 + 168))();
  if (result)
  {
    [result playbackContainerViewControllerDidDisappear_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E39AD7A8(uint64_t a1, double a2, double a3)
{
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E324FBDC();
  (*(v9 + 16))(v13, v14, v7);
  v15 = v3;
  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  v18 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (os_log_type_enabled(v16, v17))
  {
    v36 = a1;
    v19 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v19 = 136315394;
    OUTLINED_FUNCTION_6_12();
    v20 = sub_1E4206E54();
    v22 = sub_1E3270FC8(v20, v21, v37);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = sub_1E4206E54();
    v25 = sub_1E3270FC8(v23, v24, v37);
    v18 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1E323F000, v16, v17, "PlaybackContainerViewController:: viewWillTransition to size: %s, lastPlayerSize: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    a1 = v36;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v13, v7);
  v26 = type metadata accessor for PlaybackContainerViewController();
  v37[1] = v15;
  v37[2] = v26;
  v27 = OUTLINED_FUNCTION_6_12();
  v30 = objc_msgSendSuper2(v28, v29, a1, v27);
  v31 = (v15 + v18[107]);
  *v31 = a2;
  v31[1] = a3;
  result = (*((*MEMORY[0x1E69E7D40] & *v15) + 0xA8))(v30);
  if (result)
  {
    v33 = OUTLINED_FUNCTION_6_12();
    [v34 v35];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E39ADAB4()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PlaybackContainerViewController();
  objc_msgSendSuper2(&v9, sel_viewDidLayoutSubviews);
  v1 = sub_1E39ABFE8(*&v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent], v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8]);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = OUTLINED_FUNCTION_27_25();
  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v3, sel_setFrame_);
LABEL_5:
  if (v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed] == 1)
  {
    v6 = *&v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
    if (([v6 isHidden] & 1) == 0)
    {
      OUTLINED_FUNCTION_21();
      v8 = (*(v7 + 168))();
      if (v8)
      {
        [v8 playbackContainerViewControllerPiPFrameForCurrentPlayback_];
        OUTLINED_FUNCTION_3();
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_18_28(v6, sel_setFrame_);
      }
    }
  }

  OUTLINED_FUNCTION_25_29();
}

void sub_1E39ADD10(void *a1, void *a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
  v7 = MEMORY[0x1E69E7D40];
  if (v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8] == 1)
  {
    v8 = *((*MEMORY[0x1E69E7D40] & **v6) + 0x148);
    v9 = *v6;
    v46 = v8();
    v10 = [v3 unembedMultiPlayerViewController];
  }

  else
  {
    v46 = *&v2[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController];
    v11 = v46;
  }

  [v3 _setIgnoreAppSupportedOrientations_];
  [v3 setNeedsUpdateOfSupportedInterfaceOrientations];
  v12 = [a1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = OUTLINED_FUNCTION_58_15();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  [v14 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v13, sel_setFrame_);
  [v3 addChildViewController_];
  v16 = OUTLINED_FUNCTION_58_15();
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  v18 = [a1 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  [v17 addSubview_];

  [a1 didMoveToParentViewController_];
  type metadata accessor for CatchUpToLiveViewController();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = *v6;
    *v6 = v20;
    v6[8] = 2;
    v45 = a1;

    if (a2)
    {
      if (v46)
      {
        v23 = *&v3[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
        v24 = a2;
        [v23 setHidden_];
        [v23 setAlpha_];
        v25 = OUTLINED_FUNCTION_58_15();
        if (v25)
        {
          v26 = v25;
          [v25 bounds];
          OUTLINED_FUNCTION_3();

          v27 = OUTLINED_FUNCTION_18_28(v23, sel_setFrame_);
          v28 = (*((*v7 & *v21) + 0x1E8))(v27);
          v29 = v28;
          if (v28)
          {
            [v28 setAlpha_];
          }

          v30 = *(v21 + OBJC_IVAR____TtC8VideosUI27CatchUpToLiveViewController_mediaController);
          sub_1E3C4D0C0();
          OUTLINED_FUNCTION_25();
          sub_1E3C4D0C8(v31, v32, v33, v34, 0, 0, v35);

          [v46 setCanPausePlaybackWhenExitingFullScreen_];
          OUTLINED_FUNCTION_4_0();
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = v46;
          v37[4] = v21;
          v37[5] = v24;
          v37[6] = v29;
          aBlock[4] = sub_1E39B37D8;
          aBlock[5] = v37;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E329EEC4;
          aBlock[3] = &block_descriptor_36;
          v38 = _Block_copy(aBlock);
          v39 = v45;
          v40 = v24;
          v41 = v46;
          v42 = v29;

          [v41 dismissViewControllerAnimated:1 completion:v38];

          _Block_release(v38);
          OUTLINED_FUNCTION_63_13();
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_63_13();
}

void sub_1E39AE220()
{
  v1 = &v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
  if (v0[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8] == 2)
  {
    v2 = v0;
    v6 = *v1;
    [v6 removeFromParentViewController];
    v3 = [v6 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      VUIViewController.didMove(toParent:)(0);
      v5 = *v1;
      *v1 = 0;
      *(v1 + 8) = 3;

      [v2 _setIgnoreAppSupportedOrientations_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E39AE354()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 224) = v2;
  *(v1 + 144) = v3;
  *(v1 + 152) = v0;
  v4 = sub_1E41FFCB4();
  *(v1 + 160) = v4;
  OUTLINED_FUNCTION_8_0(v4);
  *(v1 + 168) = v5;
  *(v1 + 176) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 184) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 192) = v6;
  *(v1 + 200) = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39AE430()
{
  v1 = *(v0 + 144);
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_22_34();
  v3(v2);
  v4 = v1;
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 144);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v7;
    v11 = v8;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
    sub_1E325F6F0(v10, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v8 = *(v0 + 144);
  }

  v17 = *(v0 + 152);
  v18 = *(v0 + 144);
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  v19 = *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController) = v8;
  v20 = v18;

  [v20 setModalPresentationStyle_];
  v21 = *(v17 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  *(v0 + 208) = v21;
  v22 = [v21 superview];
  v23 = &selRef__shouldShowRenewalOption;
  if (!v22)
  {
    v24 = [*(v0 + 152) view];
    if (!v24)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v22 = v24;
    [v24 addSubview_];
  }

  v25 = *(v0 + 224);

  if ((v25 & 1) == 0)
  {
    v24 = [*(v0 + 152) view];
    if (!v24)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v26 = v24;
    [v24 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
  }

  v27 = *(v0 + 152) + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  v28 = *(v27 + 8);
  if (v28 != 1)
  {
    goto LABEL_16;
  }

  v29 = *(v0 + 144);
  v30 = *v27;
  v24 = [v29 view];
  if (!v24)
  {
    goto LABEL_30;
  }

  v31 = v24;
  v32 = [v24 snapshotViewAfterScreenUpdates_];

  if (v32)
  {
    (*((*MEMORY[0x1E69E7D40] & *v30) + 0x480))(*(v0 + 144));
    OUTLINED_FUNCTION_3();
    v33 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView;
    [*(v30 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView) frame];
    [*(v30 + v33) frame];
    OUTLINED_FUNCTION_18_28(v32, sel_setFrame_);
    OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
    v24 = [v30 view];
    if (v24)
    {
      v34 = v24;
      [v24 addSubview_];
LABEL_23:

      v30 = v34;
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  v28 = *(v27 + 8);
  v23 = 0x1FAB99000;
LABEL_16:
  if (v28 == 2)
  {
    v35 = *(v0 + 144);
    v30 = *v27;
    v24 = [v35 view];
    if (v24)
    {
      v36 = v24;
      v32 = [v24 snapshotViewAfterScreenUpdates_];

      if (!v32)
      {
LABEL_24:

        goto LABEL_26;
      }

      v24 = [*(v0 + 152) view];
      if (v24)
      {
        v37 = v24;
        v38 = *(v0 + 152);
        [v24 frame];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v32, sel_setFrame_);
        v24 = [v38 view];
        if (v24)
        {
          v39 = v24;
          [v24 frame];
          OUTLINED_FUNCTION_3();

          OUTLINED_FUNCTION_18_28(v21, sel_setFrame_);
          v24 = [v30 view];
          if (v24)
          {
            v34 = v24;
            [v24 v23 + 2040];
            goto LABEL_23;
          }

LABEL_36:
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v24);
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v32 = 0;
LABEL_26:
  *(v0 + 216) = v32;
  v40 = *(v0 + 144);
  [v40 removeFromParentViewController];
  v41 = [v40 view];
  [v41 removeFromSuperview];

  [v40 didMoveToParentViewController_];
  [v40 _setIgnoreAppSupportedOrientations_];
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1E39AE9F8;
  swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FCB0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_16_51();
  v42 = OUTLINED_FUNCTION_33_14();
  [v42 v43];
  v24 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1E39AE9F8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E39AEAF4, v4, v3);
}

id sub_1E39AEAF4()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[26];
  v2 = v0[18];
  sub_1E39AC7A4();
  [v1 setFrame_];
  [v2 setShowsPlaybackControls_];
  v3 = [v2 view];
  [v3 setUserInteractionEnabled_];

  result = OUTLINED_FUNCTION_27_25();
  if (result)
  {
    v5 = result;
    v6 = v0[27];
    v7 = v0[18];

    v8 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor_];

    [v6 removeFromSuperview];
    sub_1E39AEC40(v7);

    OUTLINED_FUNCTION_54();

    return v9();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E39AEC40(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  result = [a1 view];
  if (result)
  {
    v11 = result;
    [result bounds];
    v13 = v12;
    v15 = v14;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v16(v9);
    v17 = v1;
    v18 = sub_1E41FFC94();
    v19 = sub_1E4206814();

    v20 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = sub_1E4206E54();
      v24 = sub_1E3270FC8(v22, v23, &v30);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2080;
      v25 = sub_1E4206E54();
      v27 = sub_1E3270FC8(v25, v26, &v30);
      v20 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;

      *(v21 + 14) = v27;
      _os_log_impl(&dword_1E323F000, v18, v19, "PlaybackContainerViewController:: updatePlayerSizeIfNeeded, size: %s, lastPlayerSize: %s", v21, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    result = (*(v5 + 8))(v9, v3);
    v28 = (v17 + v20[107]);
    if (v13 != *v28 || v15 != v28[1])
    {
      *v28 = v13;
      v28[1] = v15;
      result = (*((*MEMORY[0x1E69E7D40] & *v17) + 0xA8))(result);
      if (result)
      {
        [result playbackContainerViewControllerWillTransitionToSize_];
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E39AEF84(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_1E4206434();
  *(v4 + 40) = sub_1E4206424();
  v6 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39AF024, v6, v5);
}

uint64_t sub_1E39AF024()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E39AF0E8;

  return sub_1E39AE354();
}

uint64_t sub_1E39AF0E8()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = v4[6];
  v6 = v4[4];
  v7 = v4[2];
  v8 = *v0;
  OUTLINED_FUNCTION_7();
  *v9 = v8;

  if (v5)
  {
    v10 = *(v2 + 48);
    v11 = OUTLINED_FUNCTION_101();
    v12(v11);
    _Block_release(v10);
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

id sub_1E39AF284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E39AF344()
{
  OUTLINED_FUNCTION_24();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_1E41FFCB4();
  v1[20] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[21] = v4;
  v1[22] = swift_task_alloc();
  sub_1E4206434();
  v1[23] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[24] = v5;
  v1[25] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39AF41C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = *(v0 + 144);

  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  v13 = [v10 view];
  if (!v13)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = v13;
  v15 = [v13 snapshotViewAfterScreenUpdates_];
  *(v0 + 208) = v15;

  if (v15)
  {
    v16 = *(v0 + 152);
    [*(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView) frame];
    [v15 setFrame_];
    if (*(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) == 1)
    {
      v17 = *(v16 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
      v13 = [v17 view];
      if (!v13)
      {
LABEL_16:
        __break(1u);
        return MEMORY[0x1EEE6DEC8](v13);
      }

      v18 = v13;
      [v13 addSubview_];
    }
  }

  v13 = [*(v0 + 144) view];
  if (!v13)
  {
    goto LABEL_14;
  }

  v19 = v13;
  v20 = *(v0 + 144);
  [v13 removeFromSuperview];

  [v20 removeFromParentViewController];
  [v20 didMoveToParentViewController_];
  v13 = [v20 vuiView];
  if (!v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v13;
  v22 = *(v0 + 144);
  v23 = *(v0 + 152);
  [v13 setAccessibilityElementsHidden_];

  v24 = *(v23 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1E39AF710;
  swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FCB0);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  OUTLINED_FUNCTION_16_51();
  [v22 showFullScreenPresentationFromView:v24 completion:v0 + 80];
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6DEC8](v13);
}

uint64_t sub_1E39AF710()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v1 = v0;
  v3 = *(v2 + 200);
  v4 = *(v2 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E39AF80C, v4, v3);
}

id sub_1E39AF80C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 144);
  [v1 setShowsPlaybackControls_];
  result = [v1 view];
  if (result)
  {
    v3 = result;
    v4 = *(v0 + 208);
    v5 = *(v0 + 144);

    [v3 setUserInteractionEnabled_];

    [v4 removeFromSuperview];
    sub_1E39AEC40(v5);

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_62_1();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E39AF8EC(void *a1)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = OUTLINED_FUNCTION_27_25();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v4, sel_setFrame_);
  [v1 addChildViewController_];
  v7 = OUTLINED_FUNCTION_27_25();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [a1 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v10 = v9;
  [v8 addSubview_];

  [a1 didMoveToParentViewController_];
  type metadata accessor for MultiPlayerViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = &v1[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
    *v12 = v11;
    v12[8] = 1;
    v13 = a1;
    OUTLINED_FUNCTION_25_29();
  }

  else
  {
    OUTLINED_FUNCTION_25_29();
  }
}

id sub_1E39AFACC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *v1;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    [result removeFromSuperview];

    [v3 removeFromParentViewController];
    [v3 didMoveToParentViewController_];
    return v2;
  }

  __break(1u);
  return result;
}

void sub_1E39AFBB8(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  v11 = OUTLINED_FUNCTION_101();
  v12(v11);
  swift_unknownObjectRetain();
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067E4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v74 = v16;
    *v15 = 136315138;
    ObjectType = swift_getObjectType();
    aBlock = a1;
    swift_unknownObjectRetain();
    v17 = sub_1E3294FA4(&aBlock);
    v19 = sub_1E3270FC8(v17, v18, &v74);

    *(v15 + 4) = v19;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  v73 = v2;
  [v2 removePostPlayViewController];
  v25 = swift_getObjectType();
  v26 = MEMORY[0x1E69E6158];
  sub_1E4123588(v25, MEMORY[0x1E69E6158]);
  OUTLINED_FUNCTION_14_66();
  v72 = v76;
  sub_1E4123588(v25, v26);
  OUTLINED_FUNCTION_14_66();
  v27 = v76;
  sub_1E4123588(v25, v26);
  OUTLINED_FUNCTION_14_66();
  v28 = v76;
  v29 = *MEMORY[0x1E69D5D30];
  v30 = sub_1E3280A90(0, &qword_1EE23ADD0);
  sub_1E4123588(v25, v30);
  sub_1E4123590(v29, v30, &aBlock);
  v31 = aBlock;
  if ((sub_1E39AC824() & 1) == 0 || (v32 = [objc_opt_self() sharedInstance], v33 = objc_msgSend(v32, sel_appController), v32, !v33) || (v34 = objc_msgSend(v33, sel_appContext), v33, (v71 = v34) == 0))
  {

    v67 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v79 = sub_1E39B4100;
    v80 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v76 = 1107296256;
    v77 = sub_1E39B134C;
    ObjectType = &block_descriptor_123;
    v69 = _Block_copy(&aBlock);

    [v67 fetchPostPlayItemForCurrentMediaItem:a1 completion:v69];
    _Block_release(v69);

    return;
  }

  v35 = [objc_allocWithZone(VUIDocumentPreFetchedDataPlaybackUpNext) init];
  if (v72)
  {
    v36 = sub_1E4205ED4();
    [v35 setProductID_];
  }

  if (v27)
  {
    v37 = sub_1E4205ED4();
    [v35 setShowID_];
  }

  v38 = v34;
  if (v28)
  {
    v39 = sub_1E4205ED4();
    [v35 setAdamID_];
  }

  if (v31)
  {
    [v35 setSeasonNumber_];
  }

  [v35 setIsPostPlay_];
  [v35 setIsLiveStream_];
  sub_1E3280A90(0, &qword_1EE23B0D0);
  sub_1E4205F14();
  v40 = sub_1E38A1F34();
  v41 = sub_1E4205F14();
  sub_1E37FB7F0(v41, v42, v40, &selRef_setDocumentType_);
  v43 = sub_1E4205F14();
  sub_1E37FB7F0(v43, v44, v40, &selRef_setControllerRef_);
  [v40 setShouldLoadPageImmediately_];
  [v40 setPrefetchData_];
  v45 = [objc_opt_self() sharedInstance];
  v46 = [v45 viewControllerWithDocumentDataSource:v40 appContext:v71];

  if (!v46)
  {
    goto LABEL_26;
  }

  aBlock = &unk_1F5F34B18;
  v47 = swift_dynamicCastObjCProtocolConditional();
  v48 = v46;
  if (!v47)
  {
LABEL_25:

LABEL_26:

    return;
  }

  v49 = v47;
  v70 = v48;
  [v47 setPlaybackUpNextDelegate_];
  v50 = [v35 jsonData];
  if (v50)
  {
    v51 = v50;
    sub_1E4205C64();

    v52 = sub_1E4205C44();

    [v49 setPlaybackUpNextContextData_];
  }

  v53 = [v49 view];
  if (!v53)
  {
    __break(1u);
    goto LABEL_29;
  }

  v54 = v53;
  v55 = [v2 view];
  if (!v55)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v56 = v2;
  v57 = v55;
  [v55 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_18_28(v54, sel_setFrame_);
  [v56 addChildViewController_];
  v58 = [v56 view];
  if (!v58)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v59 = v58;
  v60 = [v49 view];
  if (v60)
  {
    v61 = v60;
    [v59 addSubview_];

    [v49 didMoveToParentViewController_];
    v62 = [v49 view];
    if (v62)
    {
      v63 = v62;
      [v62 setHidden_];

      v64 = &v73[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
      v65 = *&v73[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
      *v64 = v49;
      v64[8] = 0;
      v66 = v49;

      v48 = v40;
      v40 = v35;
      v35 = v70;
      v38 = v71;
      goto LABEL_25;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1E39B0448(void *a1, void *a2)
{
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v140 = v5;
  v141 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v138 = v7 - v6;
  v139 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v137 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v136 = v11 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v126 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v126 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v126 - v25;
  if (a2 && a1)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectRetain();
    v28 = a1;
    v29 = v28;
    if (Strong)
    {
      v134 = v28;
      v135 = Strong;
      ObjectType = swift_getObjectType();
      sub_1E4123588(ObjectType, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_13_68();
      if ((v144 & 1) == 0)
      {
        v31 = v143;
        v32 = OUTLINED_FUNCTION_39_0();
        sub_1E4123588(v32, v33);
        OUTLINED_FUNCTION_13_68();
        if ((v144 & 1) == 0)
        {
          *&v133 = v143;
          v34 = OUTLINED_FUNCTION_39_0();
          sub_1E4123588(v34, v35);
          OUTLINED_FUNCTION_13_68();
          v36 = v144;
          if (v144)
          {
            v132 = v31;
            *&v129 = v143;
            v37 = *MEMORY[0x1E69D5DC0];
            v38 = MEMORY[0x1E69E6158];
            sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
            sub_1E4123590(v37, v38, &v143);
            v39 = v144;
            if (v144)
            {
              v131 = v36;
              v40 = v143;
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
              v145 = v41;
              v143 = MEMORY[0x1E69E7CC8];
              v42 = sub_1E3A7C9B4(19, &v143);
              __swift_destroy_boxed_opaque_existential_1(&v143);
              if (v42)
              {
                v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
                v130 = v41;
                v127 = v43;
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_1E4297BD0;
                *(inited + 32) = 0x656C746974;
                *(inited + 40) = 0xE500000000000000;
                *(inited + 48) = v40;
                *(inited + 56) = v39;
                *(inited + 72) = MEMORY[0x1E69E6158];
                strcpy((inited + 80), "seasonNumber");
                *(inited + 93) = 0;
                *(inited + 94) = -5120;
                *(inited + 96) = v133;
                v45 = MEMORY[0x1E69E6530];
                *(inited + 120) = MEMORY[0x1E69E6530];
                strcpy((inited + 128), "episodeNumber");
                *(inited + 168) = v45;
                *(inited + 142) = -4864;
                *(inited + 144) = v132;
                v46 = sub_1E4205CB4();
                v47 = swift_initStackObject();
                v133 = xmmword_1E4297BE0;
                *(v47 + 16) = xmmword_1E4297BE0;
                ViewModelKeys.rawValue.getter(20);
                *(v47 + 32) = v48;
                *(v47 + 40) = v49;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
                v50 = swift_initStackObject();
                v128 = v42;
                v51 = v50;
                *(v50 + 16) = v133;
                sub_1E3C7DE74(6);
                v51[4] = v52;
                v51[5] = v53;
                v51[6] = v46;
                v54 = sub_1E4205CB4();
                *(v47 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
                *(v47 + 48) = v54;
                v132 = sub_1E4205CB4();
                v55 = v127;
                v56 = swift_initStackObject();
                *(v56 + 16) = v133;
                sub_1E3854D1C(2);
                *(v56 + 32) = v57;
                *(v56 + 40) = v58;
                v59 = sub_1E3CCDEC4(0);
                *(v56 + 72) = MEMORY[0x1E69E6158];
                *(v56 + 48) = v59;
                *(v56 + 56) = v60;
                v61 = sub_1E4205CB4();
                v62 = swift_initStackObject();
                OUTLINED_FUNCTION_38_19(v62);
                ViewModelKeys.rawValue.getter(11);
                v55[4] = v63;
                v55[5] = v64;
                v65 = v130;
                v55[9] = v130;
                v55[6] = v61;
                v66 = sub_1E4205CB4();
                sub_1E384EE08(226);
                v145 = v65;
                v143 = v66;
                v67 = v128;
                swift_retain_n();
                v68 = OUTLINED_FUNCTION_39_0();
                v71 = sub_1E3A7CD30(v68, v69, v70, v67);

                __swift_destroy_boxed_opaque_existential_1(&v143);
                if (v71)
                {
                  v72 = type metadata accessor for ViewModel();

                  v73 = v132;
                  v132 = v72;
                  v74 = sub_1E39BED80(224, v73, v71);
                  v75 = v131;
                  if (v74)
                  {
                    v76 = v74;
                    v130 = v71;
                    type metadata accessor for TextViewModel();
                    v145 = MEMORY[0x1E69E6158];
                    v143 = v129;
                    v144 = v75;
                    v77 = v76;

                    v78 = sub_1E3C27638(23, &v143, v76, 0, 0);
                    if (v78)
                    {
                      v79 = v78;
                      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                      OUTLINED_FUNCTION_5_10();
                      v80 = swift_allocObject();
                      v129 = xmmword_1E4298880;
                      *(v80 + 16) = xmmword_1E4298880;
                      *(v80 + 32) = v79;
                      v81 = *(*v76 + 472);
                      v127 = v79;
                      swift_retain_n();
                      v81(v80);
                      v126[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF8);
                      v82 = swift_initStackObject();
                      OUTLINED_FUNCTION_38_19(v82);
                      *(v83 + 32) = 23;
                      *(v83 + 40) = v79;
                      v126[3] = sub_1E37414E0();
                      v84 = sub_1E4205CB4();
                      (*(*v77 + 496))(v84);
                      OUTLINED_FUNCTION_10_9();
                      v85 = swift_allocObject();
                      v86 = v130;
                      *(v85 + 16) = xmmword_1E429DCC0;
                      *(v85 + 32) = v86;
                      *(v85 + 40) = v77;
                      v87 = *(*v86 + 472);

                      v87(v85);
                      v88 = v128;
                      v89 = swift_initStackObject();
                      OUTLINED_FUNCTION_38_19(v89);
                      *(v90 + 32) = 224;
                      v126[1] = v77;
                      *(v90 + 40) = v77;

                      v91 = sub_1E4205CB4();
                      (*(*v86 + 496))(v91);
                      OUTLINED_FUNCTION_5_10();
                      v92 = swift_allocObject();
                      *(v92 + 16) = v129;
                      *(v92 + 32) = v86;
                      v93 = (*v88 + 472);
                      v94 = *v93;

                      v94(v92);

                      v95 = swift_getObjectType();
                      if ([a2 hasTrait_] & 1) != 0 || (sub_1E39AC824())
                      {
                        v96 = sub_1E3280A90(0, &qword_1EE23B340);
                        sub_1E4123588(v95, v96);
                        sub_1E4123590(@"VUIMediaItemMetadataPostPlayVUIImageProxy", v96, v142);
                        v97 = v142[0];
                        v98 = v134;
                        if (v142[0])
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
                          OUTLINED_FUNCTION_5_10();
                          v99 = swift_allocObject();
                          *(v99 + 16) = v129;
                          *(v99 + 32) = v97;
                          sub_1E39B407C(v99, v98);
                        }

                        sub_1E3280A90(0, &qword_1EE23B1D0);
                        *&v133 = sub_1E4206A04();
                        OUTLINED_FUNCTION_4_0();
                        v100 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        OUTLINED_FUNCTION_5_10();
                        v101 = swift_allocObject();
                        v102 = v128;
                        v101[2] = v100;
                        v101[3] = v102;
                        v101[4] = v98;
                        v142[4] = sub_1E39B4108;
                        v142[5] = v101;
                        v142[0] = MEMORY[0x1E69E9820];
                        v142[1] = 1107296256;
                        OUTLINED_FUNCTION_14_1();
                        v142[2] = v103;
                        v142[3] = &block_descriptor_130;
                        v104 = _Block_copy(v142);
                        v134 = v98;

                        v105 = v136;
                        sub_1E4203FE4();
                        v142[0] = MEMORY[0x1E69E7CC0];
                        sub_1E37907F0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
                        sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730);
                        v106 = v138;
                        v107 = v141;
                        sub_1E42072E4();
                        v108 = v133;
                        MEMORY[0x1E6911380](0, v105, v106, v104);
                        _Block_release(v104);

                        swift_unknownObjectRelease();

                        (*(v140 + 8))(v106, v107);
                        return (*(v137 + 8))(v105, v139);
                      }

                      else
                      {
                        sub_1E324FBDC();
                        OUTLINED_FUNCTION_0_11();
                        v122(v20);
                        v123 = sub_1E41FFC94();
                        sub_1E42067F4();
                        OUTLINED_FUNCTION_41_15();
                        if (os_log_type_enabled(v123, v124))
                        {
                          v125 = OUTLINED_FUNCTION_125_0();
                          *v125 = 0;
                          _os_log_impl(&dword_1E323F000, v123, v93, "PlaybackContainerViewController:: ignoring non-local media item with no network connection", v125, 2u);
                          OUTLINED_FUNCTION_55();

                          swift_unknownObjectRelease();
                        }

                        else
                        {

                          swift_unknownObjectRelease();
                        }

                        return (*(v14 + 8))(v20, v12);
                      }
                    }
                  }

                  else
                  {
                  }

                  goto LABEL_28;
                }
              }

              else
              {
              }
            }
          }
        }
      }

LABEL_28:
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v118(v23);
      v119 = sub_1E41FFC94();
      v120 = sub_1E42067F4();
      if (OUTLINED_FUNCTION_104(v120))
      {
        v121 = OUTLINED_FUNCTION_125_0();
        *v121 = 0;
        _os_log_impl(&dword_1E323F000, v119, v120, "PlaybackContainerViewController:: Failed to create template view model", v121, 2u);
        OUTLINED_FUNCTION_55();

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v14 + 8))(v23, v12);
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v114(v26);
    v115 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v117);
      OUTLINED_FUNCTION_21_0();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return (*(v14 + 8))(v26, v12);
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v110(v17);
    v111 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v113);
      _os_log_impl(&dword_1E323F000, v111, v23, "PlaybackContainerViewController:: No media item for post play", v20, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    return (*(v14 + 8))(v17, v12);
  }
}

uint64_t sub_1E39B134C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v12 = *(a1 + 32);
  if (a4)
  {
    v13 = sub_1E4205C64();
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a7)
  {
LABEL_3:
    v7 = sub_1E4205C64();
  }

LABEL_4:

  v14 = a2;
  swift_unknownObjectRetain();
  v15 = a5;
  v12(a2, a3, v13, a5, a6, v7);

  swift_unknownObjectRelease();
}

void sub_1E39B1478()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8))
  {
    v2 = *v1;
    [v2 removeFromParentViewController];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      v5 = *v1;
      *v1 = 0;
      *(v1 + 8) = 3;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E39B1574()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_101();
  v10(v9);
  v11 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  (*(v4 + 8))(v8, v2);
  v19 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  if (v19)
  {
    v20 = v19;
    v21 = [v1 _setIgnoreAppSupportedOrientations_];
    if (!*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8))
    {
      v22 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent);
      v23 = [v22 view];
      if (!v23)
      {
        goto LABEL_15;
      }

      v24 = v23;
      [v23 setHidden_];
    }

    v25 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v21);
    if (v25)
    {
      [v25 playbackContainerViewControllerPiPFrameForCurrentPlayback_];
      OUTLINED_FUNCTION_3();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_18_28(*(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView), sel_setFrame_);
    }

    [v20 setShowsPlaybackControls_];
    [v20 setCanPausePlaybackWhenExitingFullScreen_];
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed) = 1;
    *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP) = 1;
    v26 = *(v1 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
    [v26 setHidden_];
    [v26 setAlpha_];
    v27 = v20;
    v28 = [v27 parentViewController];
    v29 = v27;
    if (!v28)
    {
      goto LABEL_12;
    }

    [v27 removeFromParentViewController];
    v29 = [v27 view];

    if (v29)
    {
      [v29 removeFromSuperview];
LABEL_12:

      sub_1E39B188C(v27);
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

uint64_t sub_1E39B188C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E4206434();

  v7 = a1;
  v8 = sub_1E4206424();
  OUTLINED_FUNCTION_10_9();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  v9[5] = v7;

  sub_1E376FE58(0, 0, v4, &unk_1E42AF858, v9);
}

uint64_t sub_1E39B1A10()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v1[7] = v4;
  v1[8] = v5;
  v6 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1E39B1AE8()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_104(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0[2];

  v11 = OUTLINED_FUNCTION_27_0();
  v12(v11);
  v13 = *(v10 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController);
  v0[9] = v13;
  if (v13 && (v14 = v0[2], v15 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed, v0[10] = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isPiPed, *(v14 + v15) == 1))
  {
    v13;
    v16 = sub_1E39AC444();
    [v16 setAlpha_];

    v17 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP;
    v0[11] = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP;
    *(v14 + v17) = 1;
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_1E39B1CAC;
    OUTLINED_FUNCTION_62_1();

    return sub_1E39AF344();
  }

  else
  {

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_62_1();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1E39B1CAC()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E39B1DC0, v5, v4);
}

void sub_1E39B1DC0()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = sub_1E39ABFE8(*(v0[2] + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent), *(v0[2] + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent + 8));
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (!v3)
    {
      __break(1u);
      return;
    }

    [v3 setHidden_];
  }

  else
  {
  }

  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[2];
  v8 = *&v7[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
  sub_1E39AC7A4();
  [v8 setFrame_];
  v7[v5] = 0;
  v7[v4] = 0;
  [v7 _setIgnoreAppSupportedOrientations_];

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_62_1();

  v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1E39B1F5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E4206434();
  v2[4] = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39B1FF4, v4, v3);
}

uint64_t sub_1E39B1FF4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E39B20A0;

  return sub_1E39B1A10();
}

uint64_t sub_1E39B20A0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *(v4 + 24);
  v7 = *v0;
  OUTLINED_FUNCTION_7();
  *v8 = v7;

  if (v5)
  {
    v9 = *(v2 + 40);
    v10 = OUTLINED_FUNCTION_101();
    v11(v10);
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_54();

  return v12();
}

void sub_1E39B21CC(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v18 = sub_1E39B3AE8;
  v19 = v6;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E378AEA4;
  v17 = &block_descriptor_16;
  v7 = _Block_copy(&v14);
  v8 = v2;

  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;
  v18 = sub_1E39B3B08;
  v19 = v10;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E37EB82C;
  v17 = &block_descriptor_23_0;
  v11 = _Block_copy(&v14);
  v12 = OUTLINED_FUNCTION_35_5();
  sub_1E37FAED4(v12, v13);

  [v5 animateWithDuration:v7 animations:v11 completion:0.25];
  _Block_release(v11);
  _Block_release(v7);
}

uint64_t sub_1E39B2434()
{
  OUTLINED_FUNCTION_24();
  v0[11] = v1;
  v0[12] = v2;
  v3 = sub_1E41FFCB4();
  v0[13] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[14] = v4;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = sub_1E4206434();
  v0[18] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_51_17();
  v0[19] = v5;
  v0[20] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39B251C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = [Strong presentedViewController];
    v0[22] = v2;
    if (v2)
    {
      v3 = v2;
      sub_1E324FBDC();
      v4 = OUTLINED_FUNCTION_33_14();
      v5(v4);
      v6 = v3;
      v7 = sub_1E41FFC94();
      v8 = sub_1E42067E4();

      v9 = os_log_type_enabled(v7, v8);
      v10 = v0[16];
      v12 = v0[13];
      v11 = v0[14];
      if (v9)
      {
        v36 = v0[13];
        v13 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v13 = 136315138;
        v14 = v6;
        v15 = [v14 description];
        sub_1E4205F14();
        v35 = v10;

        v16 = OUTLINED_FUNCTION_35_5();
        v19 = sub_1E3270FC8(v16, v17, v18);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_1E323F000, v7, v8, "PlaybackContainerViewController:: dismissing %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_55();

        (*(v11 + 8))(v35, v36);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }

      v33 = sub_1E4206424();
      v0[23] = v33;
      v34 = swift_task_alloc();
      v0[24] = v34;
      *(v34 + 16) = v6;
      v25 = swift_task_alloc();
      v0[25] = v25;
      *v25 = v0;
      v25[1] = sub_1E39B289C;
      v27 = MEMORY[0x1E69E85E0];
      v30 = sub_1E39B3F40;
      v29 = 0x80000001E426A280;
      v32 = MEMORY[0x1E69E7CA8] + 8;
      v26 = v33;
      v28 = 0xD000000000000026;
      v31 = v34;
    }

    else
    {
      v22 = v0[12];
      v0[26] = sub_1E4206424();
      v23 = swift_task_alloc();
      v0[27] = v23;
      *(v23 + 16) = v22;
      v24 = swift_task_alloc();
      v0[28] = v24;
      *v24 = v0;
      OUTLINED_FUNCTION_15_58(v24);
      OUTLINED_FUNCTION_6_64();
    }

    return MEMORY[0x1EEE6DDE0](v25, v26, v27, v28, v29, v30, v31, v32);
  }

  else
  {

    OUTLINED_FUNCTION_54();

    return v20();
  }
}

uint64_t sub_1E39B289C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E39B29F0, v5, v4);
}

uint64_t sub_1E39B29F0()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 96);
  *(v0 + 208) = sub_1E4206424();
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_15_58(v3);
  OUTLINED_FUNCTION_6_64();

  return MEMORY[0x1EEE6DDE0](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E39B2AB8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E39B2C0C, v5, v4);
}

void sub_1E39B2C0C()
{
  v1 = [*(v0 + 96) parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  v3 = [*(v0 + 168) presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 96);
    sub_1E3280A90(0, &qword_1EE23B250);
    v6 = v5;
    v7 = sub_1E4206F64();

    v8 = (v2 == 0) | v7;
    if (v2 || (v7 & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = *(v0 + 168);
    v19 = *(v0 + 96);
    [v18 addChildViewController_];
    [v19 didMoveToParentViewController_];
    goto LABEL_13;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v8 = 0;
LABEL_9:
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = sub_1E324FBDC();
  (*(v10 + 16))(v9, v12, v11);
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_104(v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = v2 == 0;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v8 & 1;
    _os_log_impl(&dword_1E323F000, v13, v14, "    PlaybackContainerViewController:: failed to add child\n        isParentNil: %{BOOL}d,\n        isPlayerPresented: %{BOOL}d", v15, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v16 = OUTLINED_FUNCTION_27_0();
  v17(v16);
LABEL_13:
  v20 = *(v0 + 168);
  v21 = *(v0 + 96);
  v22 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  v23 = *(v20 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  v24 = [v21 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = *(v0 + 168);
  v27 = sub_1E39AC444();
  [v23 insertSubview:v25 belowSubview:v27];

  v28 = [v26 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = *(v0 + 96);
  [v28 bringSubviewToFront_];

  v30 = [v29 vuiView];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  [v30 setAccessibilityElementsHidden_];

  v32 = OUTLINED_FUNCTION_58_15();
  if (!v32)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = *(v0 + 168);

  [*(v20 + v22) bounds];
  [v33 setFrame_];

  v35 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v0 + 48) = sub_1E39B3EEC;
  *(v0 + 56) = v36;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1E378AEA4;
  *(v0 + 40) = &block_descriptor_106;
  v37 = _Block_copy((v0 + 16));
  v38 = v34;

  [v35 animateWithDuration:v37 animations:0.25];
  _Block_release(v37);
  v38[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP] = 0;
  v39 = [objc_opt_self() defaultCenter];
  [v39 postNotificationName:@"VUIPostPlayDidAppearNotification" object:0];

  OUTLINED_FUNCTION_54();

  v40();
}

void sub_1E39B3068(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = aBlock - v14;
  (*(v11 + 16))(aBlock - v14, a1, v9, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v9);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  aBlock[2] = v18;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
}

void *sub_1E39B31FC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_101();
  v10(v9);
  v11 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v19 = (*(v4 + 8))(v8, v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v19);
  if (result)
  {
    [result playbackContainerViewControllerDidFinishLoadingPostPlay_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1E39B33B8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v1 + 168))();
  if (result)
  {
    [result playbackContainerViewControllerBackgroundPlaybackWillBegin_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E39B3480(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) != 0 && (a3 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v5 = (*(v4 + 168))();
    if (v5)
    {
      [v5 playbackContainerViewControllerDidAutoPlay_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E39B3638(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x140))(a2 & 1);
  }
}

void sub_1E39B36C4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      [v2 frame];
      v4 = v3;
      v6 = v5;

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xA8))();

        if (v9)
        {
          [v9 playbackContainerViewControllerWillTransitionToSize_];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E39B37D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v1 parentViewController];
    if (v5)
    {

      [v1 removeFromParentViewController];
      v6 = [v1 view];
      if (!v6)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }

    v8 = v4;
    [v8 addChildViewController_];
    v9 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
    v10 = *&v8[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v10 addSubview_];

      v13 = [v8 view];
      if (v13)
      {
        [v13 bringSubviewToFront_];

        [v1 didMoveToParentViewController_];
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v8 view];

          if (v16)
          {
            [v16 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_18_28(v15, sel_setFrame_);
            v17 = OUTLINED_FUNCTION_27_0();
            v18(v17);
            OUTLINED_FUNCTION_4_0();
            v19 = swift_allocObject();
            *(v19 + 16) = v2;
            v20 = v2;
            v21 = sub_1E3C4D0C0();
            sub_1E3C4D0C8(0, 1, sub_1E39B433C, v19, 0, 0, v21);

            [*&v8[v9] setHidden_];
            [*&v8[v9] setAlpha_];

            return;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1E39B3B08()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
    [*(Strong + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView) setHidden_];
    v5 = *&v3[v4];
    sub_1E39AC7A4();
    [v5 setFrame_];

    v6 = *&v3[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController];
    if (v6)
    {
      v7 = [v6 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      sub_1E39AC7A4();
      [v8 setFrame_];
    }

    if (v1)
    {
      v1();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI31PlaybackContainerViewControllerC17BackgroundContent33_2716B203EC1D6F6513B935166B7E5A21LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1E39B3C28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39B3C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E39B3CAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1E39B3CD4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E3286A7C;

  return sub_1E39B1F5C(v1, v2);
}

uint64_t sub_1E39B3D78()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40_28(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E39B3E1C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E39B2434();
}

void sub_1E39B3EEC()
{
  v0 = sub_1E39AC444();
  [v0 setAlpha_];
}