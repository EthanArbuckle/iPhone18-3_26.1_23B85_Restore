uint64_t sub_20BC0A9BC(int64_t *a1, uint64_t a2, void *a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, void (*a7)(uint64_t), uint64_t a8, void *a9)
{
  v140 = a7;
  v141 = a8;
  v139 = a6;
  v10 = v9;
  v125 = a1;
  v132 = a9;
  v13 = a5(0);
  v14 = MEMORY[0x28223BE20](v13);
  v127 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v137 = &v121 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v121 - v19;
  result = MEMORY[0x28223BE20](v18);
  v145 = &v121 - v22;
  v23 = a3[1];
  v135 = v21;
  if (v23 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_101:
    v46 = *v125;
    if (!*v125)
    {
      goto LABEL_141;
    }

    a4 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_135:
      result = sub_20B6A07A0(a4);
    }

    v148 = result;
    v116 = *(result + 16);
    if (v116 >= 2)
    {
      v117 = a3;
      a3 = v132;
      while (*v117)
      {
        v118 = *(result + 16 * v116);
        a4 = result;
        v119 = *(result + 16 * (v116 - 1) + 40);
        (a3)(*v117 + *(v135 + 72) * v118, *v117 + *(v135 + 72) * *(result + 16 * (v116 - 1) + 32), *v117 + *(v135 + 72) * v119, v46);
        if (v10)
        {
        }

        if (v119 < v118)
        {
          goto LABEL_128;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a4 = sub_20B6A07A0(a4);
        }

        if (v116 - 2 >= *(a4 + 2))
        {
          goto LABEL_129;
        }

        v120 = &a4[16 * v116];
        *v120 = v118;
        *(v120 + 1) = v119;
        v148 = a4;
        sub_20B6A0714(v116 - 1);
        result = v148;
        v116 = *(v148 + 16);
        if (v116 <= 1)
        {
        }
      }

      goto LABEL_139;
    }
  }

  v24 = v23;
  v25 = 0;
  v143 = (v21 + 8);
  v144 = v21 + 16;
  v142 = (v21 + 32);
  v26 = MEMORY[0x277D84F90];
  v124 = a4;
  v147 = v13;
  v121 = a3;
  while (1)
  {
    v27 = v25;
    v134 = v24;
    v128 = v26;
    if ((v25 + 1) >= v24)
    {
      v46 = (v25 + 1);
      goto LABEL_25;
    }

    v123 = v10;
    v28 = *(v21 + 72);
    v29 = *a3 + v28 * (v25 + 1);
    v131 = *a3;
    v30 = v131;
    v31 = v25;
    v32 = *(v21 + 16);
    v33 = v145;
    v34 = v21;
    v32(v145, v29, v13);
    v35 = v30 + v28 * v31;
    v36 = v146;
    v32(v146, v35, v13);
    v133 = sub_20BC1336C(v139, v140);
    LODWORD(v136) = sub_20C13C834();
    v37 = *(v34 + 8);
    v37(v36, v13);
    result = (v37)(v33, v13);
    v122 = v31;
    v38 = v31 + 2;
    v138 = v28;
    v39 = v131 + v28 * (v31 + 2);
    v40 = v134;
    while (v40 != v38)
    {
      v41 = v145;
      v32(v145, v39, v147);
      v42 = v146;
      v32(v146, v29, v147);
      v43 = sub_20C13C834() & 1;
      v37(v42, v147);
      v44 = v41;
      v13 = v147;
      result = (v37)(v44, v147);
      ++v38;
      v39 += v138;
      v29 += v138;
      if ((v136 & 1) != v43)
      {
        v134 = v38 - 1;
        break;
      }
    }

    v10 = v123;
    v45 = v128;
    a4 = v124;
    v21 = v135;
    v27 = v122;
    a3 = v121;
    if ((v136 & 1) == 0)
    {
      goto LABEL_24;
    }

    v46 = v134;
    if (v134 < v122)
    {
      goto LABEL_132;
    }

    if (v122 < v134)
    {
      v47 = v138 * (v134 - 1);
      v48 = v134 * v138;
      v49 = v122;
      v50 = v122 * v138;
      do
      {
        if (v49 != --v46)
        {
          v52 = *a3;
          if (!*a3)
          {
            goto LABEL_138;
          }

          v53 = a3;
          v136 = *v142;
          (v136)(v127, v52 + v50, v147, v45);
          if (v50 < v47 || v52 + v50 >= (v52 + v48))
          {
            v51 = v147;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v51 = v147;
            if (v50 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          result = (v136)(v52 + v47, v127, v51);
          v21 = v135;
          v45 = v128;
          v13 = v51;
          a3 = v53;
        }

        ++v49;
        v47 -= v138;
        v48 -= v138;
        v50 += v138;
      }

      while (v49 < v46);
      v10 = v123;
      a4 = v124;
      v27 = v122;
LABEL_24:
      v46 = v134;
    }

LABEL_25:
    v54 = a3[1];
    if (v46 >= v54)
    {
      a4 = v46;
      if (v46 < v27)
      {
        goto LABEL_130;
      }

      goto LABEL_49;
    }

    if (__OFSUB__(v46, v27))
    {
      goto LABEL_131;
    }

    if (v46 - v27 < a4)
    {
      break;
    }

    a4 = v46;
    if (v46 < v27)
    {
      goto LABEL_130;
    }

LABEL_49:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = v128;
    }

    else
    {
      result = sub_20BC0595C(0, *(v128 + 2) + 1, 1, v128, &qword_27C763840);
      v26 = result;
    }

    v70 = *(v26 + 2);
    v69 = *(v26 + 3);
    v71 = v70 + 1;
    v21 = v135;
    if (v70 >= v69 >> 1)
    {
      result = sub_20BC0595C((v69 > 1), v70 + 1, 1, v26, &qword_27C763840);
      v21 = v135;
      v26 = result;
    }

    *(v26 + 2) = v71;
    v72 = &v26[16 * v70];
    *(v72 + 4) = v27;
    *(v72 + 5) = a4;
    v73 = *v125;
    if (!*v125)
    {
      goto LABEL_140;
    }

    v129 = a4;
    if (v70)
    {
      v74 = v73;
      while (1)
      {
        v46 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v75 = *(v26 + 4);
          v76 = *(v26 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_69:
          if (v78)
          {
            goto LABEL_119;
          }

          v91 = &v26[16 * v71];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_122;
          }

          v97 = &v26[16 * v46 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_126;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v46 = v71 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v101 = &v26[16 * v71];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_83:
        if (v96)
        {
          goto LABEL_121;
        }

        v104 = &v26[16 * v46];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_124;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_90:
        v112 = v46 - 1;
        if (v46 - 1 >= v71)
        {
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        a4 = v26;
        v113 = *&v26[16 * v112 + 32];
        v114 = *&v26[16 * v46 + 40];
        (v132)(*a3 + *(v21 + 72) * v113, *a3 + *(v21 + 72) * *&v26[16 * v46 + 32], *a3 + *(v21 + 72) * v114, v74);
        if (v10)
        {
        }

        if (v114 < v113)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a4 = sub_20B6A07A0(a4);
        }

        if (v112 >= *(a4 + 2))
        {
          goto LABEL_116;
        }

        v115 = &a4[16 * v112];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v148 = a4;
        result = sub_20B6A0714(v46);
        v26 = v148;
        v71 = *(v148 + 16);
        v21 = v135;
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v26[16 * v71 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_117;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_118;
      }

      v86 = &v26[16 * v71];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_120;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_123;
      }

      if (v90 >= v82)
      {
        v108 = &v26[16 * v46 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_127;
        }

        if (v77 < v111)
        {
          v46 = v71 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v24 = a3[1];
    v25 = v129;
    a4 = v124;
    if (v129 >= v24)
    {
      goto LABEL_101;
    }
  }

  if (__OFADD__(v27, a4))
  {
    goto LABEL_133;
  }

  if (&a4[v27] >= v54)
  {
    a4 = a3[1];
  }

  else
  {
    a4 += v27;
  }

  if (a4 < v27)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v55 = v46;
  if (v46 == a4)
  {
    a4 = v46;
    if (v46 < v27)
    {
      goto LABEL_130;
    }

    goto LABEL_49;
  }

  v123 = v10;
  v56 = *a3;
  v13 = v147;
  v57 = *(v21 + 72);
  v138 = *(v21 + 16);
  v58 = v56 + v57 * (v46 - 1);
  v59 = -v57;
  v122 = v27;
  v60 = v27 - v46;
  v126 = v57;
  v136 = v56;
  v46 = v56 + v46 * v57;
  v129 = a4;
LABEL_42:
  v133 = v58;
  v134 = v55;
  v130 = v46;
  v131 = v60;
  while (1)
  {
    v61 = v145;
    v62 = v138;
    (v138)(v145, v46, v13);
    v63 = v146;
    v62(v146, v58, v147);
    sub_20BC1336C(v139, v140);
    LOBYTE(v62) = sub_20C13C834();
    v64 = *v143;
    v65 = v63;
    v13 = v147;
    (*v143)(v65, v147);
    result = v64(v61, v13);
    if ((v62 & 1) == 0)
    {
LABEL_41:
      v55 = v134 + 1;
      v58 = v133 + v126;
      v60 = v131 - 1;
      v46 = v130 + v126;
      a4 = v129;
      if ((v134 + 1) != v129)
      {
        goto LABEL_42;
      }

      v10 = v123;
      a3 = v121;
      v27 = v122;
      if (v129 < v122)
      {
        goto LABEL_130;
      }

      goto LABEL_49;
    }

    if (!v136)
    {
      break;
    }

    v66 = *v142;
    v67 = v137;
    (*v142)(v137, v46, v13);
    swift_arrayInitWithTakeFrontToBack();
    v66(v58, v67, v13);
    v58 += v59;
    v46 += v59;
    if (__CFADD__(v60++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_20BC0B46C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_20C133474();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_20BC1336C(&qword_27C76BFE0, MEMORY[0x277D4FEC8]);
          LOBYTE(v35) = sub_20C13C834();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_20BC1336C(&qword_27C76BFE0, MEMORY[0x277D4FEC8]);
        LOBYTE(v22) = sub_20C13C834();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_20B6A0900(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_20BC0BA60(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  v43 = __dst;
  if (v8 >= v10)
  {
    v13 = __dst;
    if (__dst != a2 || &a2[40 * v10] <= __dst)
    {
      memmove(__dst, a2, 40 * v10);
    }

    v12 = &v13[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v22 = v5;
      goto LABEL_35;
    }

    while (1)
    {
      __dsta = v5;
      v23 = (v5 - 40);
      v24 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v12 = (v24 + 40);
        v27 = (v4 + 40);
        sub_20B51CC64(v24, v41);
        v5 = v23;
        sub_20B51CC64(v23, v39);
        __swift_project_boxed_opaque_existential_1(v41, v42);
        sub_20C138EB4();
        v29 = v28;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        sub_20C138EB4();
        v31 = v30;
        __swift_destroy_boxed_opaque_existential_1(v39);
        __swift_destroy_boxed_opaque_existential_1(v41);
        if (v29 < v31)
        {
          break;
        }

        v13 = v43;
        if (v27 != v12)
        {
          v32 = *v24;
          v33 = *(v24 + 16);
          *(v4 + 32) = *(v24 + 32);
          *v4 = v32;
          *(v4 + 16) = v33;
        }

        v25 = v24 - 40;
        v4 -= 40;
        v26 = v24 > v13;
        v24 -= 40;
        if (!v26)
        {
          v12 = (v25 + 40);
          v22 = __dsta;
          goto LABEL_35;
        }
      }

      v13 = v43;
      v22 = v23;
      if (v27 != __dsta)
      {
        v34 = *v23;
        v35 = *(v23 + 16);
        *(v4 + 32) = *(v23 + 32);
        *v4 = v34;
        *(v4 + 16) = v35;
      }

      if (v12 <= v13 || v23 <= v6)
      {
        v12 = (v24 + 40);
        goto LABEL_35;
      }
    }
  }

  if (__dst != __src || &__src[40 * v8] <= __dst)
  {
    v11 = __dst;
    memmove(__dst, __src, 40 * v8);
    __dst = v11;
  }

  v12 = &__dst[40 * v8];
  if (v7 < 40 || v5 >= v4)
  {
    v22 = v6;
    v13 = v43;
    goto LABEL_35;
  }

  v13 = v43;
  do
  {
    sub_20B51CC64(v5, v41);
    sub_20B51CC64(v13, v39);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_20C138EB4();
    v15 = v14;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_20C138EB4();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (v15 < v17)
    {
      v18 = v5;
      v19 = v6 == v5;
      v5 += 40;
      if (v19)
      {
        goto LABEL_14;
      }

LABEL_13:
      v20 = *v18;
      v21 = *(v18 + 1);
      *(v6 + 4) = *(v18 + 4);
      *v6 = v20;
      *(v6 + 1) = v21;
      goto LABEL_14;
    }

    v18 = v13;
    v19 = v6 == v13;
    v13 += 40;
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_14:
    v6 += 40;
  }

  while (v13 < v12 && v5 < v4);
  v22 = v6;
LABEL_35:
  v36 = (v12 - v13) / 40;
  if (v22 != v13 || v22 >= &v13[40 * v36])
  {
    memmove(v22, v13, 40 * v36);
  }

  return 1;
}

void sub_20BC0BDD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_20C133D14();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_20BC1336C(&qword_27C76BFD8, MEMORY[0x277D503E8]);
          LOBYTE(v34) = sub_20C13C834();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_20BC1336C(&qword_27C76BFD8, MEMORY[0x277D503E8]);
        LOBYTE(v21) = sub_20C13C834();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_20B6A0918(&v54, &v53, &v52);
}

void sub_20BC0C3C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_20C133634();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_20BC1336C(&qword_27C76BFE8, MEMORY[0x277D50018]);
          LOBYTE(v34) = sub_20C13C834();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_20BC1336C(&qword_27C76BFE8, MEMORY[0x277D50018]);
        LOBYTE(v21) = sub_20C13C834();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_20B6A0930(&v54, &v53, &v52);
}

void sub_20BC0C9BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_20C134784();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_20BC1336C(&qword_27C76BFF0, MEMORY[0x277D50A68]);
          LOBYTE(v34) = sub_20C13C834();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_20BC1336C(&qword_27C76BFF0, MEMORY[0x277D50A68]);
        LOBYTE(v21) = sub_20C13C834();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_20B6A0948(&v54, &v53, &v52);
}

void sub_20BC0CFB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_20C134054();
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_20BC1336C(&qword_27C76BFF8, MEMORY[0x277D50520]);
          LOBYTE(v34) = sub_20C13C834();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_20BC1336C(&qword_27C76BFF8, MEMORY[0x277D50520]);
        LOBYTE(v21) = sub_20C13C834();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_20B6A0960(&v54, &v53, &v52);
}

void *sub_20BC0D5A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20BEE197C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_20BC0D634(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C137294();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640C8);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C7640B8, MEMORY[0x277D53250]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0D95C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C138034();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764138);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&unk_27C764140, MEMORY[0x277D53BA0]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0DC84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C133524();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764150);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C763F08, MEMORY[0x277D4FF88]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0DFAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642D0);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_20C13E164();
    sub_20C13CA64();

    result = sub_20C13E1B4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0E25C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7642F0);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_20C13E164();
    MEMORY[0x20F2F58E0](v16);
    result = sub_20C13E1B4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0E464(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C135C84();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7642E0);
  result = sub_20C13DC44();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_20BC1329C(v19 + v20 * (v16 | (v14 << 6)), v10, MEMORY[0x277D52060]);
    sub_20C13E164();
    sub_20C135C74();
    result = sub_20C13E1B4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_20BC13304(v10, *(v11 + 48) + v24 * v20, MEMORY[0x277D52060]);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0E730(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C133A74();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE10);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76B788, MEMORY[0x277D50278]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0EA58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764440);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_20C13E164();
    sub_20C13CA64();

    result = sub_20C13E1B4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0EDE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C1365F4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764308);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C762F60, MEMORY[0x277D52AF8]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0F10C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonAction.ActionType(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764298);
  result = sub_20C13DC44();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_20BC1329C(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for ButtonAction.ActionType);
    sub_20C13E164();
    sub_20BDA4D9C(v33);
    result = sub_20C13E1B4();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_20BC13304(v10, *(v11 + 48) + v24 * v20, type metadata accessor for ButtonAction.ActionType);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0F3D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C134D54();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BDE0);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BDE8, MEMORY[0x277D51098]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0F700(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C137404();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76FDC0);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BF30, MEMORY[0x277D53330]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0FA28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764100);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_20C13E164();

    sub_20C13CA64();
    result = sub_20C13E1B4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0FC4C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C135C54();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7640F8);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C762F50, MEMORY[0x277D51FE0]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC0FF74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C134784();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C000);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76C008, MEMORY[0x277D50A68]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC1029C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C137374();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764580);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C764570, MEMORY[0x277D53288]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC105C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C137594();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764458);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C763F10, MEMORY[0x277D534C8]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC108EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764330);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_20C13D5E4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC10AE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C1341A4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF60);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BF68, MEMORY[0x277D50618]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC10E08(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C138204();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643E8);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C763318, MEMORY[0x277D53C88]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11130(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C133244();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764190);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C764180, MEMORY[0x277CC9AF8]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11458(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764780);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_20C13E164();
    MEMORY[0x20F2F58E0](v16);
    result = sub_20C13E1B4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11660(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C134D04();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE48);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BE50, MEMORY[0x277D51068]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C136594();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7644A0);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&unk_27C764490, MEMORY[0x277D52AB0]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C133954();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BFD0);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C767540, MEMORY[0x277D50180]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC11FD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C134884();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BFB0);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BFB8, MEMORY[0x277D50B18]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC12300(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C137684();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE80);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BE88, MEMORY[0x277D53508]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC12628(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C134614();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE60);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BE68, MEMORY[0x277D508B0]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC12950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C1361E4();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BE98);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C76BEA0, MEMORY[0x277D52828]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC12C78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_20C133B74();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764430);
  result = sub_20C13DC44();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_20BC1336C(&qword_27C764420, MEMORY[0x277D502D0]);
    result = sub_20C13C7B4();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC12FA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BF38);
  result = sub_20C13DC44();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_20C13E164();
    sub_20C134224();
    sub_20C13CA64();

    result = sub_20C13E1B4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
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
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_20BC131C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BDD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BC13234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BDD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BC1329C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC13304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BC1336C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC133D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v6 = sub_20C13C4B4();
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C13C4F4();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C4C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_20B51C88C(0, &qword_281100530);
  (*(v13 + 104))(v15, *MEMORY[0x277D851C0], v12);

  v17 = sub_20C13D3A4();
  (*(v13 + 8))(v15, v12);
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v23;
  v18[3] = v19;
  v18[4] = sub_20B7E9034;
  v18[5] = v16;
  aBlock[4] = sub_20BC13E78;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_100;
  v20 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v27 = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v11, v8, v20);
  _Block_release(v20);

  (*(v26 + 8))(v8, v6);
  (*(v9 + 8))(v11, v25);
}

uint64_t sub_20BC13774(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_20BC137B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_20C13BB84();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4B4();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13C4F4();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v16 = sub_20C13C914();
  v17 = [v15 initWithContentsOfFile_];

  if (v17)
  {
    sub_20B51C88C(0, &qword_281100530);
    v18 = sub_20C13D374();
    v19 = v39;
    v20 = v18;
    v21 = swift_allocObject();
    v21[2] = v38;
    v21[3] = v19;
    v21[4] = v17;
    v47 = sub_20B6A4BF4;
    v48 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_20B7B548C;
    v46 = &block_descriptor_19_3;
    v22 = _Block_copy(&aBlock);

    v23 = v17;

    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v14, v11, v22);
    _Block_release(v22);
  }

  else
  {
    v34 = a1;
    v35 = v14;
    v36 = v6;
    v24 = v38;
    sub_20C13B534();

    v25 = sub_20C13BB74();
    v26 = sub_20C13D1D4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 141558274;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_20B51E694(v34, a2, &aBlock);
      _os_log_impl(&dword_20B517000, v25, v26, "Failed to load image at path: %{mask.hash}s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    (*(v37 + 8))(v8, v36);
    sub_20B51C88C(0, &qword_281100530);
    v20 = sub_20C13D374();
    v29 = swift_allocObject();
    v30 = v39;
    *(v29 + 16) = v24;
    *(v29 + 24) = v30;
    v47 = sub_20BC13E84;
    v48 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_20B7B548C;
    v46 = &block_descriptor_13_2;
    v31 = _Block_copy(&aBlock);

    v14 = v35;
    sub_20C13C4D4();
    aBlock = MEMORY[0x277D84F90];
    sub_20B7E9080();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v14, v11, v31);
    _Block_release(v31);
  }

  (*(v42 + 8))(v11, v9);
  return (*(v40 + 8))(v14, v41);
}

void sub_20BC13D60(void (*a1)(void *, uint64_t))
{
  sub_20B6A3954();
  v2 = swift_allocError();
  *v3 = 0;
  a1(v2, 1);
}

uint64_t sub_20BC13DD0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_20B51C88C(0, &qword_27C7626E8);

  return sub_20C137C94();
}

uint64_t sub_20BC13E9C()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 3.0;
  if (v0 == result)
  {
    v2 = 8.0;
  }

  qword_27C79BC20 = *&v2;
  return result;
}

uint64_t sub_20BC13EE4()
{
  result = sub_20C13CEB4();
  qword_27C79BC28 = v1;
  return result;
}

void sub_20BC13F08()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79BC30 = v2;
  *algn_27C79BC38 = v4;
}

uint64_t sub_20BC13FF8@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_20C139F14();
  sub_20B51CC64(v1 + 96, v18);
  v9 = swift_allocObject();
  sub_20B52E424(v18, v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BC16598;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BC16578;
  *(v11 + 24) = v10;
  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = (v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v12, v5, v2);
  v15 = (v14 + v13);
  *v15 = sub_20BC16574;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8);
  sub_20C137C94();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_20BC14280(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  a5(v7);
  sub_20C13B164();
  return v9;
}

uint64_t sub_20BC14320@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v17[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_20C13A064();
  sub_20B51CC64(v2 + 96, v18);
  v10 = swift_allocObject();
  sub_20B52E424(v18, v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BC162FC;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_20BC16578;
  *(v12 + 24) = v11;
  (*(v4 + 16))(v6, v9, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, v6, v3);
  v15 = (v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_20BC1633C;
  v15[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771DB0);
  sub_20C137C94();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_20BC145AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_20C13A094();
  sub_20B51CC64(v0 + 96, v17);
  v8 = swift_allocObject();
  sub_20B52E424(v17, v8 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20BC16198;
  *(v9 + 24) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BC16578;
  *(v10 + 24) = v9;
  (*(v2 + 16))(v4, v7, v1);
  v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v12 = (v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v2 + 32))(v13 + v11, v4, v1);
  v14 = (v13 + v12);
  *v14 = sub_20BC161D8;
  v14[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C040);
  sub_20C137C94();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_20BC14820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v27 = a2;
  v26 = sub_20C134F04();
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C020);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C135174();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C76BC00);
    v16 = sub_20C1356F4();
    sub_20BC16460(&qword_27C769680, MEMORY[0x277D51BF0]);
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D51B88], v16);
    *(swift_allocObject() + 16) = v17;
    return sub_20C137CA4();
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    (*(v22 + 16))(v21, v24, v26);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C1399F4();
    (*(v23 + 8))(v5, v25);
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_20BC14C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v25 = a6;
  v26 = a5;
  v7 = v6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(v6 + 12, v6[15]);
  sub_20C13B174();
  if (a4)
  {
    sub_20BC15E28(v17, v14);
    v18 = sub_20C136C64();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v14, 1, v18) == 1)
    {
      sub_20B520158(v14, &qword_27C768690);
      a3 = 0;
      v20 = 1;
    }

    else
    {
      a3 = sub_20C136B44();
      v20 = v21;
      (*(v19 + 8))(v14, v18);
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = v7[5];
  v23 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v22);
  v26(a1, a2, a3, v20 & 1, v22, v23);
  return sub_20B520158(v17, &qword_27C768690);
}

uint64_t sub_20BC14FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(*v5 + 40);
  v10 = *(*v5 + 48);
  __swift_project_boxed_opaque_existential_1((*v5 + 16), v9);
  return a5(a1, a2, v9, v10);
}

uint64_t sub_20BC1509C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  sub_20C13A0A4();
  sub_20B51CC64(v8 + 96, v18);
  v9 = swift_allocObject();
  sub_20B52E424(v18, v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BC16594;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BC16578;
  *(v11 + 24) = v10;
  (*(v2 + 16))(v4, v7, v1);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v12, v4, v1);
  v15 = (v14 + v13);
  *v15 = sub_20BC16570;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C040);
  sub_20C137C94();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_20BC15334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  sub_20C13A084();
  sub_20B51CC64(v8 + 96, v18);
  v9 = swift_allocObject();
  sub_20B52E424(v18, v9 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_20BC16034;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_20BC16578;
  *(v11 + 24) = v10;
  (*(v2 + 16))(v4, v7, v1);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v12, v4, v1);
  v15 = (v14 + v13);
  *v15 = sub_20BC16074;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C028);
  sub_20C137C94();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_20BC15764(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v5);
  return a3(v5, v6);
}

uint64_t sub_20BC157C4@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a2;
  v26 = a4;
  v27 = a6;
  v25 = a3;
  v22 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *v6;
  __swift_project_boxed_opaque_existential_1((*v6 + 16), *(*v6 + 40));
  sub_20C139F34();
  sub_20B51CC64(v14 + 96, v28);
  v15 = swift_allocObject();
  sub_20B52E424(v28, v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BC15E98;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20BC15ED8;
  *(v17 + 24) = v16;
  (*(v8 + 16))(v10, v13, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  v20 = (v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_20BC15EF0;
  v20[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8);
  sub_20C137C94();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_20BC15AE4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_20BC15B08, 0, 0);
}

uint64_t sub_20BC15B08()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20B772B0C;
  v5 = v0[2];

  return MEMORY[0x2821AE4A8](v5, v2, v3);
}

uint64_t sub_20BC15C28(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_20BC15C50, 0, 0);
}

uint64_t sub_20BC15C50()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_20B90C5E8;
  v6 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2821AE500](v6, v5, v2, v3);
}

uint64_t sub_20BC15D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v7);
  return a4(a1, v7, v8);
}

uint64_t sub_20BC15DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(*v4 + 40);
  v8 = *(*v4 + 48);
  __swift_project_boxed_opaque_existential_1((*v4 + 16), v7);
  return a4(a1, v7, v8);
}

uint64_t sub_20BC15E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BC15F80()
{
  result = qword_27C76C010;
  if (!qword_27C76C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7670B8);
    sub_20BC16460(&qword_27C76C018, MEMORY[0x277D504F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C010);
  }

  return result;
}

unint64_t sub_20BC160E4()
{
  result = qword_27C76C030;
  if (!qword_27C76C030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76C028);
    sub_20BC16460(&qword_27C76C038, MEMORY[0x277D52220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C030);
  }

  return result;
}

unint64_t sub_20BC16248()
{
  result = qword_27C76C048;
  if (!qword_27C76C048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76C040);
    sub_20BC16460(&qword_27C76C050, MEMORY[0x277D52208]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C048);
  }

  return result;
}

unint64_t sub_20BC163AC()
{
  result = qword_27C76C058;
  if (!qword_27C76C058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C771DB0);
    sub_20BC16460(&qword_27C7625D0, MEMORY[0x277D50C70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C058);
  }

  return result;
}

uint64_t sub_20BC16460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BC164A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20BC165A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_27C79BC40 = result;
  return result;
}

void sub_20BC165F8(double a1)
{
  v2 = *(v1 + 40) + a1;
  *(v1 + 40) = v2;
  v3 = *(v1 + 32);
  if (v3 <= 1)
  {
    if (!*(v1 + 32))
    {
      v7 = *v1;
      if (*v1 <= v2)
      {
        *(v1 + 40) = v2 - v7;
        *(v1 + 32) = 1;
        v4 = 1.0;
        goto LABEL_21;
      }

      if (qword_27C7609C0 != -1)
      {
        v12 = *v1;
        v14 = v2;
        swift_once();
        v7 = v12;
        v2 = v14;
      }

      v8 = qword_27C79BC40;
      v9 = v2 / v7;
      *&v9 = v9;
      goto LABEL_19;
    }

    v11 = *(v1 + 8);
    v4 = 1.0;
    if (v11 > v2)
    {
      goto LABEL_21;
    }

    v2 = v2 - v11;
    *(v1 + 40) = v2;
    *(v1 + 32) = 2;
LABEL_16:
    if (qword_27C7609C0 != -1)
    {
      v13 = v2;
      swift_once();
      v2 = v13;
    }

    v8 = qword_27C79BC40;
    v9 = v2 / *v1;
    *&v9 = v9;
    *&v9 = 1.0 - *&v9;
LABEL_19:
    [v8 smu:v9 solveForInput:*&v12];
    goto LABEL_21;
  }

  if (v3 == 2)
  {
    v10 = *(v1 + 16);
    if (v10 <= v2)
    {
      v6 = v2 - v10;
      v5 = 3;
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  if (v3 != 3)
  {
    return;
  }

  v4 = 0.0;
  if (*(v1 + 24) <= v2)
  {
    v5 = 4;
    v6 = 0.0;
LABEL_13:
    *(v1 + 40) = v6;
    *(v1 + 32) = v5;
    v4 = 0.0;
  }

LABEL_21:
  *(v1 + 36) = v4;
}

id sub_20BC16774()
{
  v0 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 0.5;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_27C79BC48 = result;
  return result;
}

id sub_20BC167C0(double a1)
{
  v2 = *(v1 + 32) + a1;
  *(v1 + 32) = v2;
  if (!*(v1 + 20))
  {
    v3 = *v1;
    if (*v1 > v2)
    {
      if (qword_27C7609C8 != -1)
      {
        v8 = *v1;
        v9 = v2;
        swift_once();
        v3 = v8;
        v2 = v9;
      }

      v6 = v2 / v3;
      *&v6 = v2 / v3;
      result = [qword_27C79BC48 smu:v6 solveForInput:{*&v8, *&v9}];
      goto LABEL_11;
    }

    v5 = 1;
    goto LABEL_10;
  }

  if (*(v1 + 20) != 1)
  {
    return result;
  }

  v3 = *(v1 + 8);
  v4 = 0;
  if (v3 <= v2)
  {
    v5 = 2;
LABEL_10:
    *(v1 + 32) = v2 - v3;
    *(v1 + 20) = v5;
    v4 = 0;
  }

LABEL_11:
  *(v1 + 24) = v4;
  return result;
}

void sub_20BC1688C()
{
  if (*(v0 + 72) == 5 || *(v0 + 108) << 32 == 0x300000000)
  {
    v1 = *(v0 + 16);
    v2 = fabsf(v1);
    v3 = v2 * -0.25 + 0.5;
    v4 = vaddq_f64(vmulq_n_f64(xmmword_20C172BA0, v2), xmmword_20C172BB0);
    *(v0 + 40) = v4;
    *(v0 + 56) = v4.f64[0];
    *(v0 + 64) = v3;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 1.66666667 - v2;
    *(v0 + 96) = v3;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 104) = LODWORD(v1);
  }

  if (!*(v0 + 144))
  {
    v5 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_displayLinkFired_];
    v6 = *(v0 + 144);
    *(v0 + 144) = v5;
    v7 = v5;

    if (v7)
    {
      v8 = [objc_opt_self() mainRunLoop];
      [v7 addToRunLoop:v8 forMode:*MEMORY[0x277CBE738]];
    }
  }
}

uint64_t sub_20BC169F4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  [v2 invalidate];
  v3 = *(v0 + 144);
  *(v0 + 144) = 0;

  *(v0 + 136) = MEMORY[0x277D84F90];

  *(v0 + 128) = 0;
  v5 = *(v0 + 24);
  if (v5)
  {

    v5(v6, 0.0, 0.0);
    result = sub_20B583ECC(v5);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v1 + 40;
    while (v8 < *(v1 + 16))
    {
      ++v8;
      v10 = *(v9 - 8);

      v10(v11);

      v9 += 16;
      if (v7 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }

  return result;
}

float sub_20BC16AF0()
{
  result = *(v0 + 16);
  v2 = fabsf(result);
  v3 = v2 * -0.25 + 0.5;
  v4 = vaddq_f64(vmulq_n_f64(xmmword_20C172BA0, v2), xmmword_20C172BB0);
  *(v0 + 40) = v4;
  *(v0 + 56) = v4.f64[0];
  *(v0 + 64) = v3;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1.66666667 - v2;
  *(v0 + 96) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = LODWORD(result);
  return result;
}

id sub_20BC16B50(id result)
{
  v2 = *(v1 + 72);
  if (v2 != 5)
  {
    v3 = *(v1 + 104);
    if ((v3 & 0xFF00000000) != 0x300000000)
    {
      v4 = *(v1 + 112);
      v5 = *(v1 + 120);
      v7 = *(v1 + 88);
      v6 = *(v1 + 96);
      v19 = *(v1 + 40);
      v20 = *(v1 + 56);
      v21 = v2;
      v22 = *(&v2 + 1);
      v23 = *(v1 + 80);
      v8 = result;
      [result duration];
      sub_20BC165F8(v9);
      *(v1 + 40) = v19;
      *(v1 + 56) = v20;
      *(v1 + 72) = v21 | (LODWORD(v22) << 32);
      *(v1 + 80) = v23;
      *&v18 = v7;
      *(&v18 + 1) = v6;
      [v8 duration];
      result = sub_20BC167C0(v10);
      *(v1 + 88) = v18;
      *(v1 + 104) = v3 | (BYTE4(v3) << 32);
      *(v1 + 112) = v4;
      *(v1 + 120) = v5;
      if (v21 == 4 && BYTE4(v3) == 2)
      {
        if (*(v1 + 128) == 1)
        {
          return sub_20BC169F4();
        }

        else
        {
          v14 = *(v1 + 16);
          v15 = fabsf(v14);
          v16 = v15 * -0.25 + 0.5;
          v17 = vaddq_f64(vmulq_n_f64(xmmword_20C172BA0, v15), xmmword_20C172BB0);
          *(v1 + 40) = v17;
          *(v1 + 56) = v17.f64[0];
          *(v1 + 64) = v16;
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 1.66666667 - v15;
          *(v1 + 96) = v16;
          *(v1 + 104) = LODWORD(v14);
          *(v1 + 112) = 0;
          *(v1 + 120) = 0;
        }
      }

      else
      {
        v11 = *(v1 + 24);
        if (v11)
        {
          if (*&v3 >= 0.0)
          {
            v12 = *&v4;
          }

          else
          {
            v12 = 1.0 - *&v4;
          }

          v11(v13, v22, v12);
          return sub_20B583ECC(v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_20BC16DAC()
{
  sub_20B583ECC(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_20BC16E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20BC16E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_20BC16EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 48))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20BC16EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_20BC16FA0()
{
  result = qword_27C76C060;
  if (!qword_27C76C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C060);
  }

  return result;
}

unint64_t sub_20BC16FF8()
{
  result = qword_27C76C068;
  if (!qword_27C76C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C068);
  }

  return result;
}

char *sub_20BC17064(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_layout];
  __asm { FMOV            V1.2D, #10.0 }

  *v12 = _Q1;
  *(v12 + 1) = xmmword_20C172DA0;
  v18 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v19 = 16.0;
  }

  else
  {
    v19 = 6.0;
  }

  v20 = &v5[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView];
  v21 = [v18 layer];
  [v21 setCornerRadius_];

  [v18 setClipsToBounds_];
  *v20 = v18;
  *(v20 + 1) = &off_2822B63E8;
  v22 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_downloadButton;
  v23 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v121 = 1144750080;
  v120 = 1065353216;
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v24) = v122;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [v23 setContentHuggingPriority:0 forAxis:v25];

  *&v5[v22] = v23;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = *MEMORY[0x277D769D0];
  v28 = objc_opt_self();
  v29 = [v28 preferredFontDescriptorWithTextStyle:v27 compatibleWithTraitCollection:0];
  v30 = [v29 fontDescriptorWithSymbolicTraits_];
  if (v30)
  {
    v31 = v30;

    v29 = v31;
  }

  v32 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_titleLabel;
  v33 = objc_opt_self();
  v34 = [v33 fontWithDescriptor:v29 size:0.0];

  [v26 setFont_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v35 = objc_opt_self();
  v36 = [v35 whiteColor];
  [v26 setTextColor_];

  v120 = 1065353216;
  v121 = 1144750080;
  sub_20C13BB94();
  LODWORD(v37) = v122;
  [v26 setContentCompressionResistancePriority:1 forAxis:v37];
  LODWORD(v38) = 1144750080;
  [v26 setContentHuggingPriority:0 forAxis:v38];

  *&v5[v32] = v26;
  v39 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setAdjustsFontForContentSizeCategory_];
  v40 = [v28 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v41 = [v40 fontDescriptorWithSymbolicTraits_];
  if (v41)
  {
    v42 = v41;

    v40 = v42;
  }

  v43 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_subtitleLabel;
  v44 = [v33 fontWithDescriptor:v40 size:0.0];

  [v39 setFont_];
  v45 = [v35 whiteColor];
  [v39 setTextColor_];

  *&v5[v43] = v39;
  v119.receiver = v5;
  v119.super_class = type metadata accessor for TabletActionBrickRowCell();
  v46 = objc_msgSendSuper2(&v119, sel_initWithFrame_, a1, a2, a3, a4);
  v47 = *&v46[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_downloadButton];
  v48 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_downloadButton;
  v117 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_downloadButton;
  v49 = v46;
  v116 = v46;
  v50 = v46;
  [v47 addTarget:v50 action:sel_downloadButtonTapped_ forControlEvents:64];
  v51 = [v50 contentView];
  v52 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView;
  [v51 addSubview_];

  v53 = [v50 &selRef_setMaximumFractionDigits_];
  v115 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_titleLabel;
  [v53 addSubview_];

  v54 = [v50 &selRef_setMaximumFractionDigits_];
  v118 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_subtitleLabel;
  [v54 addSubview_];

  v55 = [v50 &selRef_setMaximumFractionDigits_];
  [v55 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C150050;
  v57 = v56;
  v58 = [*&v50[v52] leadingAnchor];
  v59 = [v50 &selRef_setMaximumFractionDigits_];
  v60 = [v59 leadingAnchor];

  v61 = [v58 constraintEqualToAnchor_];
  v57[4] = v61;
  v62 = [*&v50[v52] trailingAnchor];
  v63 = [v50 &selRef_setMaximumFractionDigits_];
  v64 = [v63 trailingAnchor];

  v65 = [v62 &selRef:v64 alertControllerReleasedDictationButton:? + 5];
  v57[5] = v65;
  v66 = [*&v50[v52] topAnchor];
  v67 = [v50 &selRef_setMaximumFractionDigits_];
  v68 = [v67 &selRef_setLineBreakMode_];

  v69 = [v66 &selRef:v68 alertControllerReleasedDictationButton:? + 5];
  v57[6] = v69;
  v70 = [*&v50[v52] widthAnchor];
  v71 = [v50 &selRef_setMaximumFractionDigits_];
  v72 = [v71 widthAnchor];

  v73 = [v70 &selRef:v72 alertControllerReleasedDictationButton:? + 5];
  v120 = 1065353216;
  v121 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v74) = v122;
  [v73 setPriority_];
  v57[7] = v73;
  v75 = [*&v50[v52] heightAnchor];
  v76 = [*&v50[v52] widthAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 multiplier:0.563636364];

  v120 = 1065353216;
  v121 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v78) = v122;
  [v77 setPriority_];
  v57[8] = v77;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v80 = inited;
  v81 = [*&v50[v115] leadingAnchor];
  v82 = [*&v50[v52] leadingAnchor];
  v83 = [v81 constraintEqualToAnchor_];

  v80[4] = v83;
  v84 = [*&v50[v115] trailingAnchor];
  v85 = [*&v116[v117] leadingAnchor];
  v86 = [v84 constraintLessThanOrEqualToAnchor:v85 constant:-10.0];

  v80[5] = v86;
  v87 = [*&v50[v115] topAnchor];
  v88 = [*&v50[v52] bottomAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:10.0];

  v80[6] = v89;
  v90 = swift_initStackObject();
  *(v90 + 16) = xmmword_20C14FE90;
  v91 = [*&v50[v118] leadingAnchor];
  v92 = [*&v50[v115] leadingAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v90 + 32) = v93;
  v94 = [*&v50[v118] trailingAnchor];
  v95 = [*&v116[v117] leadingAnchor];
  v96 = [v94 constraintLessThanOrEqualToAnchor:v95 constant:-10.0];

  *(v90 + 40) = v96;
  v97 = [*&v50[v118] topAnchor];
  v98 = [*&v50[v115] bottomAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v90 + 48) = v99;
  v100 = [*&v50[v118] bottomAnchor];
  v101 = [v50 contentView];
  v102 = [v101 bottomAnchor];

  v103 = [v100 constraintEqualToAnchor:v102 constant:-18.0];
  *(v90 + 56) = v103;
  v104 = swift_initStackObject();
  *(v104 + 16) = xmmword_20C151490;
  v105 = [*&v116[v117] topAnchor];
  v106 = [*&v50[v115] topAnchor];
  v107 = [v105 constraintEqualToAnchor_];

  *(v104 + 32) = v107;
  v108 = [*&v116[v117] trailingAnchor];
  v109 = [v50 contentView];

  v110 = [v109 trailingAnchor];
  v111 = [v108 constraintEqualToAnchor_];

  *(v104 + 40) = v111;
  v112 = objc_opt_self();
  sub_20B8D9310(v80);
  sub_20B8D9310(v90);
  sub_20B8D9310(v104);
  sub_20B51C88C(0, &qword_281100500);
  v113 = sub_20C13CC54();

  [v112 activateConstraints_];

  return v50;
}

id sub_20BC180E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabletActionBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TabletActionBrickRowCell()
{
  result = qword_2811021C8;
  if (!qword_2811021C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC1820C()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_20BC182DC(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v214 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v195 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v196 = &v167 - v10;
  v194 = v11;
  MEMORY[0x28223BE20](v12);
  v197 = &v167 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v206 = &v167 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v209 = *(v16 - 8);
  v210 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v17;
  MEMORY[0x28223BE20](v19);
  v207 = &v167 - v20;
  v204 = sub_20C1391C4();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v205 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_20C138A64();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v208 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v23 - 8);
  v202 = &v167 - v24;
  v25 = sub_20C13C554();
  v216 = *(v25 - 8);
  v217 = v25;
  MEMORY[0x28223BE20](v25);
  v215 = (&v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = sub_20C137C24();
  v220 = *(v27 - 8);
  v221 = v27;
  MEMORY[0x28223BE20](v27);
  v218 = &v167 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = v28;
  MEMORY[0x28223BE20](v29);
  v219 = &v167 - v30;
  v31 = sub_20C136CD4();
  v212 = *(v31 - 8);
  v213 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = (&v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_20C134E44();
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C134014();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = &v167 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v42 == 33)
  {
    sub_20BA1DAAC();
    sub_20B609FE8(3, 3u, a2 & 1);
    [*&v2[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_titleLabel] setText_];
    v116 = *&v2[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_subtitleLabel];

    return [v116 setText_];
  }

  else if (v42 == 32)
  {
    v175 = v18;
    v190 = v2;
    v188 = a2;
    v43 = v39;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v45 = swift_projectBox();
    v46 = v45 + *(v44 + 64);
    v192 = v36;
    v47 = *v46;
    v48 = *(v46 + 8);
    v214 = v33;
    v50 = *(v46 + 16);
    v49 = *(v46 + 24);
    v51 = *(v46 + 32);
    v52 = *(v46 + 40);
    v53 = v45 + *(v44 + 96);
    v182 = *v53;
    v181 = *(v53 + 8);
    v186 = v38;
    v54 = *(v38 + 16);
    v187 = v43;
    v54(v41, v45, v43);
    v55 = v47;
    v56 = v48;
    v57 = v50;
    v184 = v49;

    v183 = v51;

    v189 = v52;

    v185 = v41;
    sub_20C133F04();
    v178 = sub_20C138054();
    v191 = v58;
    sub_20C134E34();
    v59 = v219;
    sub_20C136CB4();
    v60 = sub_20C136CC4();
    v62 = v61;
    sub_20B51C88C(0, &qword_281100530);
    v63 = sub_20C13D374();
    v64 = v215;
    v65 = v216;
    *v215 = v63;
    v66 = v217;
    (*(v65 + 104))(v64, *MEMORY[0x277D85200], v217);
    LOBYTE(v44) = sub_20C13C584();
    result = (*(v65 + 8))(v64, v66);
    if (v44)
    {
      v180 = v57;
      v215 = v56;
      v68 = v190;
      v70 = *&v190[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView];
      v69 = *&v190[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v70 setContentMode_];
      v72 = sub_20BA66C54(v59, v70, v69, 0);
      v179 = v70;
      v216 = ObjectType;
      v217 = v69;
      if (v72)
      {
        v174 = v55;
        v73 = swift_allocObject();
        v176 = v60;
        v74 = v73;
        swift_unknownObjectWeakInit();
        v75 = v220;
        v76 = *(v220 + 16);
        v177 = v62;
        v77 = v221;
        v170 = v220 + 16;
        v172 = v76;
        v76(v218, v59, v221);
        v78 = *(v75 + 80);
        v79 = (v78 + 24) & ~v78;
        v167 = v211 + 7;
        v80 = (v211 + 7 + v79) & 0xFFFFFFFFFFFFFFF8;
        v81 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
        v173 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
        v171 = v78;
        v83 = swift_allocObject();
        *(v83 + 16) = v74;
        v84 = v75 + 32;
        v85 = *(v75 + 32);
        v86 = v177;
        v169 = v84;
        v168 = v85;
        v85(v83 + v79, v218, v77);
        v87 = (v83 + v80);
        *v87 = v176;
        v87[1] = v86;
        v88 = (v83 + v81);
        v89 = v191;
        *v88 = v178;
        v88[1] = v89;
        *(v83 + v82) = 2;
        v90 = v83 + v173;
        *v90 = MEMORY[0x277D84F90];
        *(v90 + 8) = 0;
        v91 = (v83 + ((v82 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v91 = 0;
        v91[1] = 0;
        v92 = v217;
        v93 = *(v217 + 152);

        v94 = v216;
        v93(sub_20BC199CC, v83, v216, v92);

        [v70 bounds];
        if (v95 <= 0.0 || (v97 = v96, v96 <= 0.0))
        {

          v68 = v190;
          v115 = v213;
          v59 = v219;
        }

        else
        {
          v98 = v95;
          v99 = v94;
          v100 = ~v171;
          (*(v92 + 120))(0, v94, v92);
          v101 = v202;
          v59 = v219;
          v102 = v221;
          v172(v202, v219, v221);
          (*(v220 + 56))(v101, 0, 1, v102);
          (*(v92 + 16))(v101, v99, v92);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v103 = sub_20C13D5A4();
          [v70 setBackgroundColor_];

          (*(v92 + 176))(COERCE_DOUBLE(*&v98), COERCE_DOUBLE(*&v97), 0, v99, v92);
          v202 = swift_allocObject();
          v68 = v190;
          swift_unknownObjectWeakInit();
          v104 = v218;
          v172(v218, v59, v102);
          v173 = v100;
          v105 = (v171 + 16) & v100;
          v106 = (v167 + v105) & 0xFFFFFFFFFFFFFFF8;
          v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
          v108 = swift_allocObject();
          v168(v108 + v105, v104, v102);
          *(v108 + v106) = v202;
          v109 = (v108 + v107);
          *v109 = v98;
          v109[1] = v97;
          v202 = v108;
          v110 = (v108 + ((v107 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v110 = 0;
          v110[1] = 0;
          v172(v104, v59, v102);
          (*(v203 + 104))(v205, *MEMORY[0x277D542A8], v204);

          v111 = v208;
          sub_20C138A54();
          v112 = v206;
          sub_20B5F1C30(v111, v206);
          v114 = v209;
          v113 = v210;
          if ((*(v209 + 48))(v112, 1, v210) != 1)
          {
            v136 = v114;
            v137 = v221;
            v138 = *(v114 + 32);
            v204 = v114 + 32;
            v205 = v138;
            (v138)(v207, v112, v113);
            v139 = v113;
            v140 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v172(v104, v59, v137);
            v141 = (v171 + 40) & v173;
            v142 = v141 + v211;
            v143 = (v141 + v211) & 0xFFFFFFFFFFFFFFF8;
            v144 = swift_allocObject();
            *(v144 + 2) = v140;
            v144[3] = v98;
            v144[4] = v97;
            v168(v144 + v141, v104, v137);
            *(v144 + v142) = 0;
            v145 = v144 + v143;
            v68 = v190;
            *(v145 + 1) = 0;
            *(v145 + 2) = 0;
            v146 = swift_allocObject();
            *(v146 + 16) = sub_20BC19B60;
            *(v146 + 24) = v144;
            v147 = v175;
            (*(v136 + 16))(v175, v207, v139);
            v148 = (*(v136 + 80) + 16) & ~*(v136 + 80);
            v149 = (v193 + v148 + 7) & 0xFFFFFFFFFFFFFFF8;
            v150 = swift_allocObject();
            (v205)(v150 + v148, v147, v139);
            v151 = (v150 + v149);
            *v151 = sub_20B5F67A4;
            v151[1] = v146;
            v152 = v196;
            sub_20C137C94();
            v153 = swift_allocObject();
            v154 = v202;
            *(v153 + 16) = sub_20BC19AA4;
            *(v153 + 24) = v154;
            v155 = swift_allocObject();
            *(v155 + 16) = sub_20B5F67D4;
            *(v155 + 24) = v153;
            v156 = v198;
            v157 = v195;
            v158 = v199;
            (*(v198 + 16))(v195, v152, v199);
            v159 = (*(v156 + 80) + 16) & ~*(v156 + 80);
            v160 = (v194 + v159 + 7) & 0xFFFFFFFFFFFFFFF8;
            v161 = swift_allocObject();
            (*(v156 + 32))(v161 + v159, v157, v158);
            v162 = (v161 + v160);
            *v162 = sub_20B5DF204;
            v162[1] = v155;

            v163 = v197;
            sub_20C137C94();
            v164 = *(v156 + 8);
            v164(v152, v158);
            v165 = sub_20C137CB4();
            v166 = swift_allocObject();
            *(v166 + 16) = 0;
            *(v166 + 24) = 0;
            v165(sub_20B52347C, v166);

            v164(v163, v158);
            v59 = v219;
            v128 = v220;
            (*(v209 + 8))(v207, v210);
            (*(v200 + 8))(v208, v201);
            v129 = v212;
            v115 = v213;
            v55 = v174;
            goto LABEL_18;
          }

          sub_20B520158(v112, &unk_27C766670);
          sub_20BA1DAAC();

          (*(v200 + 8))(v111, v201);
          v115 = v213;
        }

        v129 = v212;
        v55 = v174;
        v128 = v220;
      }

      else
      {

        v128 = v220;
        v129 = v212;
        v115 = v213;
      }

LABEL_18:
      (*(v128 + 8))(v59, v221);
      (*(v129 + 8))(v214, v115);

      sub_20B60B124(v192, MEMORY[0x277D51268]);
      v130 = v215;
      [*&v68[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_subtitleLabel] setAttributedText_];
      [*&v68[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_titleLabel] setAttributedText_];
      v131 = v55;
      v132 = v185;
      v133 = sub_20C133EB4() > 0;
      v134 = v217;
      (*(v217 + 264))(v133, v216, v217);
      v135 = sub_20C133E54();
      (*(v134 + 296))(v135);

      sub_20B609FE8(v182, v181, v188 & 1);

      return (*(v186 + 8))(v132, v187);
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v117 = v2;
    v118 = sub_20C13BB74();
    v119 = sub_20C13D1D4();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v222 = a1;
      v223 = v122;
      *v120 = 138543618;
      *(v120 + 4) = v117;
      *v121 = v117;
      *(v120 + 12) = 2082;
      v123 = sub_20B5F66D0();
      v124 = v117;
      v125 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v123);
      v127 = sub_20B51E694(v125, v126, &v223);

      *(v120 + 14) = v127;
      _os_log_impl(&dword_20B517000, v118, v119, "Attempted to configure %{public}@ with item: %{public}s", v120, 0x16u);
      sub_20B520158(v121, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v121, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x20F2F6A40](v122, -1, -1);
      MEMORY[0x20F2F6A40](v120, -1, -1);
    }

    return v214[1](v7, v5);
  }

  return result;
}

uint64_t sub_20BC198A8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BC198F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BC1994C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BC199CC()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA4E014(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BC19AA4(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63750(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BC19B60(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2FAC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BC19C14()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_layout);
  __asm { FMOV            V1.2D, #10.0 }

  *v4 = _Q1;
  v4[1] = xmmword_20C172DA0;
  v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v11 = 16.0;
  }

  else
  {
    v11 = 6.0;
  }

  v12 = (v1 + OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView);
  v13 = [v10 layer];
  [v13 setCornerRadius_];

  [v10 setClipsToBounds_];
  *v12 = v10;
  v12[1] = &off_2822B63E8;
  v14 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_downloadButton;
  v15 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v16) = v38;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [v15 setContentHuggingPriority:0 forAxis:v17];

  *(v1 + v14) = v15;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = *MEMORY[0x277D769D0];
  v20 = objc_opt_self();
  v21 = [v20 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];
  if (v22)
  {
    v23 = v22;

    v21 = v23;
  }

  v24 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_titleLabel;
  v25 = objc_opt_self();
  v26 = [v25 fontWithDescriptor:v21 size:0.0];

  [v18 setFont_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v27 = objc_opt_self();
  v28 = [v27 whiteColor];
  [v18 setTextColor_];

  sub_20C13BB94();
  LODWORD(v29) = v38;
  [v18 setContentCompressionResistancePriority:1 forAxis:v29];
  LODWORD(v30) = 1144750080;
  [v18 setContentHuggingPriority:0 forAxis:v30];

  *(v1 + v24) = v18;
  v31 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 setAdjustsFontForContentSizeCategory_];
  v32 = [v20 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v33 = [v32 fontDescriptorWithSymbolicTraits_];
  if (v33)
  {
    v34 = v33;

    v32 = v34;
  }

  v35 = OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_subtitleLabel;
  v36 = [v25 fontWithDescriptor:v32 size:0.0];

  [v31 setFont_];
  v37 = [v27 whiteColor];
  [v31 setTextColor_];

  *(v1 + v35) = v31;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC1A140()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

char *sub_20BC1A3DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_layout];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = objc_opt_self();
  v15 = *MEMORY[0x277D76940];
  v16 = v13;
  *(inited + 40) = [v14 preferredFontForTextStyle_];
  v17 = sub_20B6B3F64(inited);
  swift_setDeallocating();
  sub_20BC1B428(inited + 32);
  v18 = objc_opt_self();
  v19 = [v18 blackColor];
  v20 = [v18 whiteColor];
  *v11 = v17;
  v11[1] = v19;
  v11[2] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView;
  v22 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v23 = sub_20BFBFE48();

  swift_getObjectType();
  v24 = sub_20BFBFE70(5);

  swift_getObjectType();
  v25 = [v18 whiteColor];
  v26 = sub_20BFBFE9C(v25);

  swift_getObjectType();
  v27 = [v18 blackColor];
  v28 = sub_20BFBFEF4(v27);

  swift_getObjectType();
  v29 = [v18 whiteColor];
  v30 = sub_20BFBFEC8(v29);

  swift_getObjectType();
  v31 = [v18 whiteColor];
  v32 = sub_20BFBFF20(v31);

  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v21] = v32;
  *&v5[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_lastWidth] = 0;
  v33 = [v32 heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *&v5[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textViewHeightConstraint] = v34;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MetadataFocusableTextView();
  v35 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
  v36 = OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView;
  v37 = *&v35[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView];
  v38 = v35;
  [v38 addSubview_];
  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C150050;
  v41 = [*&v35[v36] leadingAnchor];
  v42 = [v38 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v40 + 32) = v43;
  v44 = [*&v35[v36] trailingAnchor];
  v45 = [v38 trailingAnchor];

  v46 = [v44 constraintEqualToAnchor_];
  *(v40 + 40) = v46;
  v47 = [*&v35[v36] topAnchor];
  v48 = [v38 topAnchor];

  v49 = [v47 constraintEqualToAnchor_];
  *(v40 + 48) = v49;
  v50 = [*&v35[v36] bottomAnchor];
  v51 = [v38 bottomAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v40 + 56) = v52;
  v53 = *&v38[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textViewHeightConstraint];
  *(v40 + 64) = v53;
  sub_20B5E29D0();
  v54 = v53;
  v55 = sub_20C13CC54();

  [v39 activateConstraints_];

  LODWORD(v56) = 1148846080;
  [v38 setContentCompressionResistancePriority:1 forAxis:v56];

  return v38;
}

id sub_20BC1AA08()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_lastWidth;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_lastWidth];
  [v0 bounds];
  if (v2 != CGRectGetWidth(v8))
  {
    [v0 bounds];
    *&v0[v1] = CGRectGetWidth(v9);
    v3 = *&v0[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textViewHeightConstraint];
    v4 = *&v0[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView];

    [v0 bounds];
    [v4 sizeThatFits_];
    [v3 setConstant_];
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for MetadataFocusableTextView();
  return objc_msgSendSuper2(&v7, sel_layoutSubviews);
}

id sub_20BC1AB48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetadataFocusableTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC1AC3C(uint64_t *a1)
{
  v3 = type metadata accessor for MetadataEntry();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = a1[1];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = *a1;
    v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    sub_20B9FD840(v6);
    v9 = [v8 initWithAttributedString_];
    v10 = [v9 length];
    sub_20B905400(*&v1[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_layout]);
    v22 = v1;
    type metadata accessor for Key(0);
    sub_20B76322C();
    v11 = sub_20C13C744();

    v12 = v9;
    [v9 addAttributes:v11 range:{0, v10}];

    v13 = v22;
    v14 = *&v22[OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView];
    [v14 setDescriptionText_];
    v15 = sub_20C13C914();
    sub_20BC1B034(v6);
    [v14 setMoreLabelText_];

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = v23;
    sub_20BC1B044(a1, v23);
    v18 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    sub_20B60E3E0(v17, v19 + v18);
    aBlock[4] = sub_20BC1B0A8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B762A80;
    aBlock[3] = &block_descriptor_101;
    v20 = _Block_copy(aBlock);

    [v14 setSelectionHandler_];
    _Block_release(v20);
    [v13 setNeedsLayout];
  }
}

void sub_20BC1AF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped);
    v6 = Strong;
    sub_20B584050(v5);

    if (v5)
    {
      v5(a3);
      sub_20B583ECC(v5);
    }
  }
}

id sub_20BC1AFBC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView);
  v3 = 8;
  if ((a1 & 8) == 0)
  {
    v3 = 16;
  }

  [*(v1 + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView) setMoreLabelTextColor_];

  return [v2 setNeedsLayout];
}

uint64_t sub_20BC1B034(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

uint64_t sub_20BC1B044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_20BC1B0A8(uint64_t a1)
{
  v3 = *(type metadata accessor for MetadataEntry() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BC1AF28(a1, v4, v5);
}

void sub_20BC1B11C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_onEntryTapped);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_layout);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76940];
  v8 = v5;
  *(inited + 40) = [v6 preferredFontForTextStyle_];
  v9 = sub_20B6B3F64(inited);

  v10 = objc_opt_self();
  v11 = [v10 blackColor];
  v12 = [v10 whiteColor];
  *v3 = v9;
  v3[1] = v11;
  v3[2] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_textView;
  v14 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v15 = sub_20BFBFE48();

  swift_getObjectType();
  v16 = sub_20BFBFE70(5);

  swift_getObjectType();
  v17 = [v10 whiteColor];
  v18 = sub_20BFBFE9C(v17);

  swift_getObjectType();
  v19 = [v10 blackColor];
  v20 = sub_20BFBFEF4(v19);

  swift_getObjectType();
  v21 = [v10 whiteColor];
  v22 = sub_20BFBFEC8(v21);

  swift_getObjectType();
  v23 = [v10 whiteColor];
  v24 = sub_20BFBFF20(v23);

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v13) = v24;
  *(v1 + OBJC_IVAR____TtC9SeymourUI25MetadataFocusableTextView_lastWidth) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BC1B428(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WorkoutPlanScheduleMetadata()
{
  result = qword_27C76C0A8;
  if (!qword_27C76C0A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BC1B504()
{
  sub_20BC1B598();
  if (v0 <= 0x3F)
  {
    sub_20C132E94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20BC1B598()
{
  if (!qword_27C76C0B8)
  {
    v0 = sub_20C13CD04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C76C0B8);
    }
  }
}

uint64_t sub_20BC1B5E8(uint64_t a1)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](*v1);
  sub_20BDA7DFC(v4, v1[1]);
  sub_20C132E94();
  sub_20BC1B878(&unk_27C769340, MEMORY[0x277CC9578]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v1 + *(a1 + 28)));
  return sub_20C13E1B4();
}

uint64_t sub_20BC1B6B0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x20F2F58E0](*v2);
  sub_20BDA7DFC(a1, v2[1]);
  sub_20C132E94();
  sub_20BC1B878(&unk_27C769340, MEMORY[0x277CC9578]);
  sub_20C13C7C4();
  return MEMORY[0x20F2F58E0](*(v2 + *(a2 + 28)));
}

uint64_t sub_20BC1B768(uint64_t a1, uint64_t a2)
{
  sub_20C13E164();
  MEMORY[0x20F2F58E0](*v2);
  sub_20BDA7DFC(v5, v2[1]);
  sub_20C132E94();
  sub_20BC1B878(&unk_27C769340, MEMORY[0x277CC9578]);
  sub_20C13C7C4();
  MEMORY[0x20F2F58E0](*(v2 + *(a2 + 28)));
  return sub_20C13E1B4();
}

uint64_t sub_20BC1B878(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20BC1B8C0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_20BB806DC(a1[1], a2[1]))
  {
    v4 = type metadata accessor for WorkoutPlanScheduleMetadata();
    if (sub_20C132E54())
    {
      return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
    }
  }

  return 0;
}

__n128 sub_20BC1B954@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 41;
    while (1)
    {
      v5 = *(v4 - 1);
      if (v5)
      {
        break;
      }

      v4 += 64;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    sub_20C13DE24();
    __break(1u);
  }

  *a1 = *(v4 - 9);
  *(a1 + 8) = v5;
  v6 = *(v4 + 16);
  *(a1 + 9) = *v4;
  *(a1 + 25) = v6;
  result = *(v4 + 32);
  *(a1 + 41) = result;
  *(a1 + 57) = *(v4 + 48);
  return result;
}

void sub_20BC1BA08(void *a1, uint64_t a2)
{
  v42 = [a1 containerView];
  v5 = [a1 viewForKey_];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 snapshotViewAfterScreenUpdates_];
  if (!v7)
  {
LABEL_17:

LABEL_18:
    [a1 completeTransition_];
    v38 = v42;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [a1 viewForKey_];
  if (!v9)
  {
    v10 = v8;
LABEL_16:

    v6 = v10;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [a1 viewControllerForKey_];
  if (!v11)
  {

    v6 = v8;
    goto LABEL_16;
  }

  v41 = v11;
  [a1 finalFrameForViewController_];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (a2)
  {
    v20 = [v10 effectiveUserInterfaceLayoutDirection];
    v21 = 200.0;
    if (a2 == 1)
    {
      v22 = -200.0;
    }

    else
    {
      v22 = 200.0;
    }

    if (a2 != 1)
    {
      v21 = -200.0;
    }

    if (v20 == 1)
    {
      v21 = -v21;
    }

    CGAffineTransformMakeTranslation(&v47, v21, 0.0);
    tx = v47.tx;
    ty = v47.ty;
    v39 = *&v47.c;
    v40 = *&v47.a;
    CGAffineTransformMakeTranslation(&v47, v22, 0.0);
    [v6 frame];
    [v8 setFrame_];
    [v42 addSubview_];
    [v6 removeFromSuperview];
    [v10 setFrame_];
    v44 = v39;
    aBlock = v40;
    v45 = tx;
    v46 = ty;
    [v10 setTransform_];
    [v10 setAlpha_];
    v25 = [v10 layer];
    [v25 setAllowsGroupOpacity_];

    [v42 addSubview_];
    v26 = objc_opt_self();
    *&v40 = [v26 smu_coreAnimationDefaultCurve];
    v27 = swift_allocObject();
    v28 = *&v47.c;
    *(v27 + 24) = *&v47.a;
    *(v27 + 16) = v8;
    *(v27 + 40) = v28;
    *(v27 + 56) = *&v47.tx;
    *(v27 + 72) = v10;
    *(v27 + 80) = v2;
    v45 = COERCE_DOUBLE(sub_20BC1C524);
    v46 = *&v27;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_20B7B548C;
    *(&v44 + 1) = &block_descriptor_102;
    v29 = _Block_copy(&aBlock);
    v30 = v8;
    v31 = v10;
    v32 = v2;

    v33 = swift_allocObject();
    v33[2] = v30;
    v33[3] = v31;
    v33[4] = v42;
    v33[5] = a1;
    v45 = COERCE_DOUBLE(sub_20BC1C534);
    v46 = *&v33;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v44 = sub_20B5E3874;
    *(&v44 + 1) = &block_descriptor_10_1;
    v34 = _Block_copy(&aBlock);
    v35 = v30;
    v36 = v31;
    v37 = v42;
    swift_unknownObjectRetain();

    [v26 animateWithDuration:v40 delay:v29 options:v34 animations:0.666666667 completion:0.0];
    _Block_release(v34);
    _Block_release(v29);

    return;
  }

  [v6 removeFromSuperview];
  [v10 setFrame_];
  [v42 addSubview_];
  [a1 completeTransition_];

  v38 = v41;
LABEL_19:
}

void sub_20BC1BF4C(void *a1, __int128 *a2, void *a3)
{
  v5 = a2[1];
  v13 = *a2;
  v14 = v5;
  v15 = a2[2];
  [a1 setTransform_];
  v13 = 0x3FF0000000000000uLL;
  *&v14 = 0;
  *(&v14 + 1) = 0x3FF0000000000000;
  v15 = 0uLL;
  [a3 setTransform_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *&v15 = sub_20B76BA40;
  *(&v15 + 1) = v7;
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 1107296256;
  *&v14 = sub_20B7B548C;
  *(&v14 + 1) = &block_descriptor_16_0;
  v8 = _Block_copy(&v13);
  v9 = a1;

  [v6 animateWithDuration:131168 delay:v8 options:0 animations:0.333333333 completion:0.0];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *&v15 = sub_20B81626C;
  *(&v15 + 1) = v10;
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 1107296256;
  *&v14 = sub_20B7B548C;
  *(&v14 + 1) = &block_descriptor_22_1;
  v11 = _Block_copy(&v13);
  v12 = a3;

  [v6 animateWithDuration:131136 delay:v11 options:0 animations:0.666666667 completion:0.0];
  _Block_release(v11);
}

id sub_20BC1C164(int a1, id a2, void *a3, void *a4, void *a5)
{
  [a2 removeFromSuperview];
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a3 setTransform_];
  v8 = [a3 layer];
  [v8 setAllowsGroupOpacity_];

  [a3 setAlpha_];
  [a4 addSubview_];
  return [a5 completeTransition_];
}

id sub_20BC1C2A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSlideTransitionAnimator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC1C34C(void *a1)
{
  v2 = [a1 viewControllerForKey_];
  if (v2)
  {
    v9 = v2;
    v3 = [v2 navigationController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 viewControllers];
      sub_20B62BB28();
      v6 = sub_20C13CC74();

      v10 = v9;
      MEMORY[0x28223BE20](v9);
      v8[2] = &v10;
      LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

      if (v5)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      sub_20BC1BA08(a1, v7);
    }

    else
    {
    }
  }
}

double sub_20BC1C558()
{
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  result = *&qword_27C79ACA0;
  qword_27C76C1B0 = qword_27C79ACA0;
  return result;
}

void sub_20BC1C5B0()
{
  type metadata accessor for TVQueueFocusedWorkoutViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  qword_27C76C1B8 = v3;
}

void sub_20BC1C670()
{
  type metadata accessor for TVQueueFocusedWorkoutViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 withConfiguration:0];

  qword_27C76C1C0 = v3;
}

char *sub_20BC1C728(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_layout];
  __asm { FMOV            V1.2D, #20.0 }

  *v3 = xmmword_20C173030;
  *(v3 + 1) = _Q1;
  v9 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView;
  v10 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C7609D0 != -1)
  {
    swift_once();
  }

  v11 = *&qword_27C76C1B0;
  v12 = [v10 config];
  [v12 setCornerRadius_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v9] = v10;
  v13 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  v15 = objc_opt_self();
  v16 = [v15 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v14 setFont_];

  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  [v14 setTextColor_];

  [v14 &selRef_count + 2];
  *&v2[v13] = v14;
  v19 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_summaryLabel;
  v20 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v20 setNumberOfLines_];
  v21 = *MEMORY[0x277D76918];
  v22 = [v15 smu:*MEMORY[0x277D76918] preferredFontForTextStyle:512 variant:?];
  [v20 setFont_];

  [v20 setLineBreakMode_];
  v23 = [v17 secondaryLabelColor];
  [v20 setTextColor_];

  v24 = sub_20BD518BC();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v19] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  v27 = [v15 preferredFontForTextStyle_];
  [v26 setFont_];

  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v25] = v26;
  v28 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  v30 = [v15 preferredFontForTextStyle_];
  [v29 setFont_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v28] = v29;
  v31 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView;
  v32 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v32 setAxis_];
  [v32 setAlignment_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v31] = v32;
  if (qword_27C7609D8 != -1)
  {
    swift_once();
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v34 = [v33 image];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView;
  [v33 setImage_];

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v37] = v33;
  *&v2[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_presenter] = a1;
  v41.receiver = v2;
  v41.super_class = type metadata accessor for TVQueueFocusedWorkoutViewController();
  v38 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  *(*&v38[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_presenter] + 200) = &off_2822D5B48;
  swift_unknownObjectWeakAssign();
  return v38;
}

void sub_20BC1CD2C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C151490;
  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel];
  v6 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  v7 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v8 = v5;
  v9 = v6;
  v10 = sub_20C13CC54();

  v11 = [v7 initWithArrangedSubviews_];

  [v11 setAxis_];
  [v11 setSpacing_];
  [v11 setAlignment_];
  [v11 setDistribution_];
  v12 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView;
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView];
  [*&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView] addArrangedSubview_];
  v14 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_titleLabel];
  [*&v1[v12] addArrangedSubview_];
  [*&v1[v12] addArrangedSubview_];
  [*&v1[v12] addArrangedSubview_];
  [*&v1[v12] setSpacing_];
  [*&v1[v12] setCustomSpacing:v14 afterView:20.0];
  v15 = [*&v1[v12] layer];
  [v15 setContentsGravity_];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  [v16 addSubview_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v59 = *&v1[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView];
  [v18 addSubview_];

  if (qword_27C7609D0 != -1)
  {
    swift_once();
  }

  v60 = v11;
  v20 = qword_27C76C1B0;
  v21 = &v13[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets];
  *v21 = qword_27C76C1B0;
  *(v21 + 1) = v20;
  *(v21 + 2) = v20;
  *(v21 + 3) = v20;
  v22 = [v13 config];
  if (qword_27C7609E0 != -1)
  {
    swift_once();
  }

  [v22 setPlaceholderImage_];

  v23 = [objc_allocWithZone(MEMORY[0x277D74258]) init];
  v24 = [objc_opt_self() clearColor];
  [v23 setShadowColor_];

  v25 = v23;
  sub_20BAEF0CC(v23);
  v26 = *&v13[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shadow];
  *&v13[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shadow] = v23;

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C150040;
  v28 = [*&v1[v12] leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
    goto LABEL_15;
  }

  v30 = v29;
  v58 = v25;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v27 + 32) = v32;
  v33 = [*&v1[v12] topAnchor];
  v34 = [v1 &selRef_topAnchor];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor_];
  *(v27 + 40) = v37;
  v38 = [*&v1[v12] trailingAnchor];
  v39 = [v1 &selRef_topAnchor];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 trailingAnchor];

    v42 = [v38 constraintEqualToAnchor_];
    *(v27 + 48) = v42;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C150040;
    v44 = [v59 leadingAnchor];
    v45 = [*&v1[v12] leadingAnchor];
    v46 = [v44 &selRef:v45 alertControllerReleasedDictationButton:? + 5];

    *(inited + 32) = v46;
    v47 = [v59 trailingAnchor];
    v48 = [*&v1[v12] trailingAnchor];
    v49 = [v47 &selRef:v48 alertControllerReleasedDictationButton:? + 5];

    *(inited + 40) = v49;
    v50 = [v59 topAnchor];
    v51 = [*&v1[v12] topAnchor];
    v52 = [v50 &selRef:v51 alertControllerReleasedDictationButton:? + 5];

    *(inited + 48) = v52;
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_20C14F580;
    v54 = [v13 heightAnchor];
    v55 = [v54 constraintEqualToConstant_];

    *(v53 + 32) = v55;
    v56 = objc_opt_self();
    sub_20B8D9310(inited);
    sub_20B8D9310(v53);
    sub_20B51C88C(0, &qword_281100500);
    v57 = sub_20C13CC54();

    [v56 activateConstraints_];

    [*&v1[v12] setHidden_];
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_20BC1D55C(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_20BC1EA60;
  *(v6 + 24) = v5;
  v10[4] = sub_20B5E0E90;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_20BB4C11C;
  v10[3] = &block_descriptor_103;
  v7 = _Block_copy(v10);
  v8 = a3;

  [v4 performWithoutAnimation_];
  _Block_release(v7);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

void sub_20BC1D6CC(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

id sub_20BC1D728(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView);
  if (a1)
  {
    [v3 setHidden_];
    [*(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView) setHidden_];
    [*(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_titleLabel) setText_];
    [*(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_summaryLabel) setText_];
    [*(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel) setText_];
    [*(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel) setText_];
    v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView);
    v5 = sel_setStackImage_;
  }

  else
  {
    [v3 setHidden_];
    v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView);
    v5 = sel_setHidden_;
  }

  return [v4 v5];
}

id sub_20BC1D874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVQueueFocusedWorkoutViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BC1D9A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView) setHidden_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView) setHidden_];
  v6 = *(a1 + *a4);
  v7 = sub_20C13C914();
  [v6 setText_];
}

void sub_20BC1DA58(unint64_t a1, char a2)
{
  v8 = a1;
  v9 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    i = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_3;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = sub_20C13DB34();
  i = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_61;
  }

LABEL_3:
  if (i < -1)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v9)
  {
    if (v8 < 0)
    {
      v4 = v8;
    }

    else
    {
      v4 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_20C13DB34() < 0)
    {
      goto LABEL_66;
    }

    v12 = sub_20C13DB34();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = i / 2;
  if (v12 < i / 2)
  {
    goto LABEL_63;
  }

  v2 = v8 & 0xC000000000000001;
  if ((v8 & 0xC000000000000001) != 0 && (i + 1) > 2)
  {
    sub_20B51C88C(0, &qword_281100520);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_20C13DCB4();
      v13 = v14;
    }

    while (v4 != v14);
    if (!v9)
    {
      goto LABEL_17;
    }

LABEL_19:

    v5 = sub_20C13DE54();
    i = v16;
    v6 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (v9)
  {
    goto LABEL_19;
  }

LABEL_17:
  i = 0;
  v5 = v8 & 0xFFFFFFFFFFFFFF8;
  v15 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v6 = (2 * v4) | 1;
LABEL_21:
  v49 = v15;
  v50 = v8 & 0xC000000000000001;
  v51 = a2;
  v2 = v3;
  sub_20C13E014();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);

  if (__OFSUB__(v6 >> 1, i))
  {
    goto LABEL_67;
  }

  if (v20 != (v6 >> 1) - i)
  {
    goto LABEL_68;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v3 = v2;
  v2 = v8 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_28;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_28:
    if (v10 < v4)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v21 = v9 ? sub_20C13DB34() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 >= v10)
    {
      break;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    swift_unknownObjectRelease();
    v3 = v2;
    a2 = v51;
    v15 = v49;
    v2 = v50;
LABEL_20:
    sub_20BCC82FC(v5, v15, i, v6);
  }

  if (!v2 || v4 == v10)
  {

    if (!v9)
    {
      goto LABEL_40;
    }

LABEL_43:

    v8 = sub_20C13DE54();
    v4 = v25;
    v10 = v26;
    if (v26)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v4 >= v10)
  {
    __break(1u);
    goto LABEL_69;
  }

  sub_20B51C88C(0, &qword_281100520);

  v22 = v4;
  do
  {
    v23 = v22 + 1;
    sub_20C13DCB4();
    v22 = v23;
  }

  while (v10 != v23);
  if (v9)
  {
    goto LABEL_43;
  }

LABEL_40:
  v8 &= 0xFFFFFFFFFFFFFF8uLL;
  v24 = v8 + 32;
  v10 = (2 * v10) | 1;
  if ((v10 & 1) == 0)
  {
LABEL_44:
    sub_20BCC82FC(v8, v24, v4, v10);
    v28 = v27;
    goto LABEL_51;
  }

LABEL_45:
  v2 = v24;
  sub_20C13E014();
  swift_unknownObjectRetain_n();
  v29 = swift_dynamicCastClass();
  if (!v29)
  {
    swift_unknownObjectRelease();
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v29 + 16);

  if (__OFSUB__(v10 >> 1, v4))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v30 != (v10 >> 1) - v4)
  {
LABEL_70:
    swift_unknownObjectRelease();
    v24 = v2;
    goto LABEL_44;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v28)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_51:
    swift_unknownObjectRelease();
  }

  v31 = sub_20BC1E228(i);

  v32 = sub_20BC1E228(v28);

  v33 = swift_allocObject();
  v33[2] = v3;
  v33[3] = v31;
  v33[4] = v32;
  if (a2)
  {
    v34 = v31;
    v35 = v32;
    v36 = v3;
    v37 = [v36 view];
    if (v37)
    {
      v38 = v37;
      v39 = objc_opt_self();
      v40 = swift_allocObject();
      v40[2] = sub_20BC1EA68;
      v40[3] = v33;
      v40[4] = v36;
      aBlock[4] = sub_20B89B01C;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_27;
      v41 = _Block_copy(aBlock);
      v42 = v36;

      [v39 transitionWithView:v38 duration:5242880 options:v41 animations:0 completion:0.3];

      _Block_release(v41);
      return;
    }

    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v43 = *&v3[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView];
    v44 = v31;
    v45 = v32;
    v46 = v3;
    [v43 setHidden_];
    [*&v46[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView] setHidden_];
    [*&v46[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel] setAttributedText_];
    [*&v46[OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel] setAttributedText_];
    v47 = [v46 view];
    if (!v47)
    {
      goto LABEL_72;
    }

    v48 = v47;
    [v47 layoutIfNeeded];
  }
}

id sub_20BC1E0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView) setHidden_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView) setHidden_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel) setAttributedText_];
  v6 = *(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel);

  return [v6 setAttributedText_];
}

id sub_20BC1E148(uint64_t a1, uint64_t a2)
{
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView) setHidden_];
  [*(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView) setHidden_];
  v4 = *(a1 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView);

  return [v4 setStackImage_];
}

uint64_t sub_20BC1E228(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    result = sub_20C13DB34();
    if (result)
    {
LABEL_3:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2F5430](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v4 = *(a1 + 32);
      }

      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

      if (!v2)
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_12:
          if ((a1 & 0xC000000000000001) == 0 || v7 == 1)
          {

            if (!v2)
            {
              goto LABEL_17;
            }
          }

          else
          {
            sub_20B51C88C(0, &qword_281100520);

            v8 = 1;
            do
            {
              v9 = v8 + 1;
              sub_20C13DCB4();
              v8 = v9;
            }

            while (v7 != v9);
            if (!v2)
            {
LABEL_17:
              result = a1 & 0xFFFFFFFFFFFFFF8;
              v10 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
              v11 = 1;
              v13 = v7 - 1;
              v12 = v7 <= 1;
              if (v7 == 1)
              {
                goto LABEL_24;
              }

LABEL_21:
              if (!v12)
              {
                v15 = (v10 + 8 * v11);
                do
                {
                  v16 = *v15++;
                  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
                  v18 = v16;
                  v19 = sub_20C13C914();
                  v20 = [v17 initWithString_];

                  [v6 appendAttributedString_];
                  [v6 appendAttributedString_];

                  --v13;
                }

                while (v13);
                goto LABEL_24;
              }

              goto LABEL_34;
            }
          }

          result = sub_20C13DE54();
          v13 = (v14 >> 1) - v11;
          v12 = (v14 >> 1) <= v11;
          if (v14 >> 1 == v11)
          {
LABEL_24:
            swift_unknownObjectRelease();
            return v6;
          }

          goto LABEL_21;
        }

        __break(1u);
      }

      result = sub_20C13DB34();
      if (result < 1)
      {
        goto LABEL_32;
      }

      v7 = result;
      result = sub_20C13DB34();
      if (result < 1)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      result = sub_20C13DB34();
      if (result >= v7)
      {
        goto LABEL_12;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v21 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v21 init];
}

void sub_20BC1E4BC()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_layout);
  __asm { FMOV            V1.2D, #20.0 }

  *v2 = xmmword_20C173030;
  v2[1] = _Q1;
  v8 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_artworkView;
  v9 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  if (qword_27C7609D0 != -1)
  {
    swift_once();
  }

  v10 = *&qword_27C76C1B0;
  v11 = [v9 config];
  [v11 setCornerRadius_];

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v12 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  v36 = objc_opt_self();
  v14 = [v36 smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v13 setFont_];

  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  [v13 setTextColor_];

  [v13 &selRef_count + 2];
  *(v1 + v12) = v13;
  v17 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_summaryLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setNumberOfLines_];
  v19 = *MEMORY[0x277D76918];
  v20 = [v36 smu:*MEMORY[0x277D76918] preferredFontForTextStyle:512 variant:?];
  [v18 setFont_];

  [v18 setLineBreakMode_];
  v21 = [v15 secondaryLabelColor];
  [v18 setTextColor_];

  v22 = sub_20BD518BC();
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v17) = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_leftDescriptionLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 setLineBreakMode_];
  [v24 setNumberOfLines_];
  v25 = [v36 preferredFontForTextStyle_];
  [v24 setFont_];

  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v23) = v24;
  v26 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_rightDescriptionLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 setLineBreakMode_];
  [v27 setNumberOfLines_];
  v28 = [v36 preferredFontForTextStyle_];
  [v27 setFont_];

  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v26) = v27;
  v29 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_stackView;
  v30 = [objc_allocWithZone(MEMORY[0x277D75A68]) initWithFrame_];
  [v30 setAxis_];
  [v30 setAlignment_];
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v29) = v30;
  if (qword_27C7609D8 != -1)
  {
    swift_once();
  }

  v31 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v32 = [v31 image];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v34 = 0;
  }

  v35 = OBJC_IVAR____TtC9SeymourUI35TVQueueFocusedWorkoutViewController_emptyStateView;
  [v31 setImage_];

  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v35) = v31;
  sub_20C13DE24();
  __break(1u);
}

id sub_20BC1EC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpNextPopoverNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20BC1ECC0()
{
  result = qword_27C76C210;
  if (!qword_27C76C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C210);
  }

  return result;
}

unint64_t sub_20BC1ED18()
{
  result = qword_27C76C218;
  if (!qword_27C76C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C218);
  }

  return result;
}

unint64_t sub_20BC1ED70()
{
  result = qword_27C76C220;
  if (!qword_27C76C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C220);
  }

  return result;
}

unint64_t sub_20BC1EDC8()
{
  result = qword_27C76C228;
  if (!qword_27C76C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C228);
  }

  return result;
}

uint64_t sub_20BC1EE1C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_frameBufferPixelFormat);
  *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_frameBufferPixelFormat) = result;
  if (v2 != result)
  {
    v3 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers + 16);
    *(v3 + 32) = result;
    *(v3 + 152) = sub_20B78A9E0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_20BC1EE90(float a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_pinchMix);
  if (v2 != a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_state);
    if (v2 >= 1.0 || v2 <= 0.0)
    {
      *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_state) = 0;
      if (!v3)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v5 = 15;
    }

    else
    {
      *(v1 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_state) = 1;
      if (v3)
      {
        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v5 = 30;
    }

    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI22AnimatedBackgroundView_metalView);
    [v6 setPreferredFramesPerSecond_];

    swift_unknownObjectRelease();
  }
}

id sub_20BC1EF80(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_spectrumAnalysis;
  type metadata accessor for SpectrumAnalysis();
  swift_allocObject();
  sub_20B8FF96C();
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_colorPixelFormat] = 115;
  *&v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_frameBufferPixelFormat] = 80;
  v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_isBehindLyrics] = 0;
  v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_state] = 0;
  v6 = &v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_environment];
  *v6 = 1126170624;
  v6[4] = 0;
  *(v6 + 2) = 1075419546;
  *&v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_pinchMix] = 0;
  *&v1[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_crossfadeDuration] = 0;
  v7 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_crossfadeTimingFunction;
  v8 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v9) = 1050253722;
  LODWORD(v10) = 1.0;
  *&v2[v7] = [v8 initWithControlPoints__:0.0 :{0.0, v9, v10}];
  v11 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_modeTimingFunction;
  v12 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v13) = 1054280253;
  LODWORD(v14) = 1058306785;
  LODWORD(v15) = 1.0;
  *&v2[v11] = [v12 initWithControlPoints__:v13 :{0.0, v14, v15}];
  *&v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_warpTimingSpeed] = 0x400C000000000000;
  __asm { FMOV            V0.2S, #1.0 }

  *&v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_aspectRatio] = _D0;
  v21 = &v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent];
  *v21 = 0;
  v21[8] = -1;
  *&v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_imageStorage] = 0;
  v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_paused] = 0;
  v22 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_placeholderColor;
  *&v2[v22] = [objc_opt_self() systemGrayColor];
  *&v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix] = 0;
  v23 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_uniforms;
  if (qword_27C760CE8 != -1)
  {
    swift_once();
  }

  memmove(&v2[v23], &qword_27C79D0A0, 0x180uLL);
  v25 = *(a1 + 24);
  v24 = *(a1 + 32);
  v26 = &v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_context];
  v27 = *(a1 + 16);
  *v26 = *a1;
  *(v26 + 1) = v27;
  *(v26 + 4) = v24;
  _s14TextureBlenderCMa();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v28 = v25;
  swift_unknownObjectRetain_n();
  v29 = v28;
  v30 = sub_20BFEFF64(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _s23RotatingArtworkRendererCMa();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = v29;
  swift_unknownObjectRetain();
  v32 = sub_20BF1027C(a1);
  _s13PinchRendererCMa();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v33 = v31;
  swift_unknownObjectRetain();
  v34 = sub_20B78AED4(a1);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v35 = &v2[OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers];
  *v35 = v30;
  v35[1] = v32;
  v35[2] = v34;
  v38.receiver = v2;
  v38.super_class = _s17CompositeRendererCMa();
  v36 = objc_msgSendSuper2(&v38, sel_init);
  sub_20BC1F660();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v36;
}

void sub_20BC1F364(void *a1, char a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_imageStorage;
  v7 = *(v2 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_imageStorage);
  if (v7)
  {
    if (a1)
    {
      sub_20B51C88C(0, &qword_27C7626E8);
      v8 = v7;
      v9 = a1;
      v10 = sub_20C13D5F4();

      if (v10)
      {
        return;
      }

      v7 = *(v3 + v6);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
  }

  *(v3 + v6) = a1;
  v11 = a1;

  v12 = *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_renderers);
  v13 = *(v12 + 32);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v12 + 40);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    return;
  }

  if (a1 && (v15 = [v11 CGImage]) != 0 && (v16 = v15, v17 = sub_20B6DC1B8(v13, 0, v14, 0), v16, v17))
  {
    v18 = v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent;
    v19 = *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent);
    *v18 = v17;
    v20 = *(v18 + 8);
    *(v18 + 8) = 1;
    v21 = v17;
    sub_20BC215C0(v19, v20);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = v21;
    sub_20BC20DAC(v30, a2 & 1, v3, v22, v17, 1, a2 & 1);
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_placeholderColor);
    v24 = v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent;
    v25 = *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_currentContent);
    *v24 = v23;
    v26 = *(v24 + 8);
    *(v24 + 8) = 0;
    v27 = v23;
    sub_20BC215C0(v25, v26);
    v28 = sub_20BC1F83C(v27);

    v29 = 1.0;
    if (a2)
    {
      v29 = 0.0;
    }

    *(v3 + OBJC_IVAR____TtCV9SeymourUI18AnimatedBackground17CompositeRenderer_textureTransitionMix) = v29;
    *(v12 + 48) = v28;
    swift_unknownObjectRelease();
    *(v12 + 136) = 1;
  }
}