uint64_t sub_26EE8F9CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EC8, &qword_26EF3F8B0);
        v5 = sub_26EF3B24C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26EE909D0(v7, v8, a1, v4);
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
    return sub_26EE8FD4C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EE8FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v41 = a4;
  v40 = type metadata accessor for PickerGroupWithChildren(0);
  v9 = *(*(v40 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v40, v10);
  v39 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v31 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v31 - v20;
  v32 = a2;
  if (a3 != a2)
  {
    v22 = *v4;
    v23 = *(v19 + 72);
    v24 = *v4 + v23 * (a3 - 1);
    v37 = -v23;
    v38 = v22;
    v25 = a1 - a3;
    v31 = v23;
    v26 = v22 + v23 * a3;
LABEL_4:
    v35 = v24;
    v36 = a3;
    v33 = v26;
    v34 = v25;
    v27 = v24;
    while (1)
    {
      sub_26EE936C8(v26, v21, type metadata accessor for PickerGroupWithChildren);
      sub_26EE936C8(v27, v16, type metadata accessor for PickerGroupWithChildren);
      v28 = v41(v21, v16);
      sub_26EE95DC4(v16, type metadata accessor for PickerGroupWithChildren);
      result = sub_26EE95DC4(v21, type metadata accessor for PickerGroupWithChildren);
      if (v5)
      {
        break;
      }

      if (v28)
      {
        if (!v38)
        {
          __break(1u);
          return result;
        }

        v29 = v39;
        sub_26EE93734(v26, v39, type metadata accessor for PickerGroupWithChildren);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26EE93734(v29, v27, type metadata accessor for PickerGroupWithChildren);
        v27 += v37;
        v26 += v37;
        if (!__CFADD__(v25++, 1))
        {
          continue;
        }
      }

      a3 = v36 + 1;
      v24 = v35 + v31;
      v25 = v34 - 1;
      v26 = v33 + v31;
      if (v36 + 1 != v32)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26EE8FD4C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v20 = *a4;
    v4 = *a4 + 16 * a3 - 16;
    v5 = result - a3;
LABEL_5:
    v18 = a3;
    v6 = *(v20 + 16 * a3);
    v16 = v5;
    v17 = v4;
    while (1)
    {
      v19 = *(&v6 + 1);
      v7 = *v4;
      v8 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v19 + 40);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v10(ObjectType, v19);
      v11 = swift_getObjectType();
      (*(v8 + 40))(v11, v8);
      sub_26EE12538();
      v12 = sub_26EF3B61C();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v12 != -1)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 16;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v20)
      {
        break;
      }

      v13 = *v4;
      v6 = *(v4 + 16);
      *v4 = v6;
      *(v4 + 16) = v13;
      v4 -= 16;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EE8FED8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v151 = a4;
  v152 = a5;
  v139 = a1;
  v144 = type metadata accessor for PickerGroupWithChildren(0);
  v149 = *(v144 - 8);
  v10 = *(v149 + 64);
  v12 = MEMORY[0x28223BE20](v144, v11);
  v141 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v143 = &v128 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = &v128 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = &v128 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  result = MEMORY[0x28223BE20](v30, v31);
  v150 = a3;
  if (a3[1] < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_99:
    v28 = *v139;
    if (*v139)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v37 = a3[1];
  v134 = &v128 - v33;
  v135 = v36;
  v145 = v35;
  v142 = v34;
  v133 = a6;
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v132 = v22;
  while (1)
  {
    if (v38 + 1 >= v37)
    {
      v52 = v38 + 1;
    }

    else
    {
      v137 = v37;
      v40 = *v150;
      v41 = *(v149 + 72);
      v42 = v38;
      v43 = *v150 + v41 * (v38 + 1);
      v44 = v134;
      sub_26EE936C8(v43, v134, type metadata accessor for PickerGroupWithChildren);
      v148 = v40;
      v45 = v40 + v41 * v42;
      v46 = v135;
      sub_26EE936C8(v45, v135, type metadata accessor for PickerGroupWithChildren);
      LODWORD(v147) = v151(v44, v46);
      if (v7)
      {
        sub_26EE95DC4(v46, type metadata accessor for PickerGroupWithChildren);
        v127 = v44;
        goto LABEL_112;
      }

      sub_26EE95DC4(v46, type metadata accessor for PickerGroupWithChildren);
      result = sub_26EE95DC4(v44, type metadata accessor for PickerGroupWithChildren);
      v131 = v137 - 1;
      v146 = v137 - 2;
      v47 = v148 + v41 * (v42 + 2);
      v136 = v42;
      v48 = v41;
      v148 = v41;
      while (v146 != v42)
      {
        sub_26EE936C8(v47, v28, type metadata accessor for PickerGroupWithChildren);
        v49 = v28;
        v50 = v145;
        sub_26EE936C8(v43, v145, type metadata accessor for PickerGroupWithChildren);
        v51 = v151(v49, v50);
        sub_26EE95DC4(v50, type metadata accessor for PickerGroupWithChildren);
        result = sub_26EE95DC4(v49, type metadata accessor for PickerGroupWithChildren);
        ++v42;
        v48 = v148;
        v47 += v148;
        v43 += v148;
        v28 = v49;
        if ((v147 ^ v51))
        {
          v52 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v131;
      v52 = v137;
LABEL_12:
      v38 = v136;
      if ((v147 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v52 < v136)
      {
        goto LABEL_136;
      }

      if (v136 <= v42)
      {
        v53 = v52;
        v54 = v48 * (v52 - 1);
        v55 = v53 * v48;
        v137 = v53;
        v138 = v28;
        v56 = v53;
        v57 = v136;
        v58 = v136 * v48;
        do
        {
          if (v57 != --v56)
          {
            v59 = *v150;
            if (!*v150)
            {
              goto LABEL_140;
            }

            sub_26EE93734(v59 + v58, v141, type metadata accessor for PickerGroupWithChildren);
            if (v58 < v54 || v59 + v58 >= (v59 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26EE93734(v141, v59 + v54, type metadata accessor for PickerGroupWithChildren);
            v28 = v138;
            v48 = v148;
          }

          ++v57;
          v54 -= v48;
          v55 -= v48;
          v58 += v48;
        }

        while (v57 < v56);
        v22 = v132;
        v38 = v136;
        v52 = v137;
      }

      else
      {
LABEL_15:
        v22 = v132;
      }
    }

    v60 = v150[1];
    if (v52 >= v60)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v52, v38))
    {
      goto LABEL_132;
    }

    if (v52 - v38 >= v133)
    {
LABEL_36:
      v62 = v52;
      if (v52 < v38)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v38, v133))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v38 + v133 >= v60)
    {
      v61 = v150[1];
    }

    else
    {
      v61 = v38 + v133;
    }

    if (v61 < v38)
    {
      goto LABEL_135;
    }

    if (v52 == v61)
    {
      goto LABEL_36;
    }

    v138 = v28;
    v110 = *v150;
    v111 = *(v149 + 72);
    v112 = *v150 + v111 * (v52 - 1);
    v147 = -v111;
    v148 = v110;
    v136 = v38;
    v113 = v38 - v52;
    v129 = v111;
    v114 = v110 + v52 * v111;
    v146 = v61;
    v140 = v39;
    do
    {
      v130 = v114;
      v131 = v113;
      v137 = v112;
      while (1)
      {
        sub_26EE936C8(v114, v22, type metadata accessor for PickerGroupWithChildren);
        v115 = v22;
        v116 = v142;
        sub_26EE936C8(v112, v142, type metadata accessor for PickerGroupWithChildren);
        v117 = v151(v115, v116);
        if (v7)
        {
          sub_26EE95DC4(v116, type metadata accessor for PickerGroupWithChildren);
          v127 = v115;
LABEL_112:
          sub_26EE95DC4(v127, type metadata accessor for PickerGroupWithChildren);
        }

        v118 = v117;
        v119 = v52;
        sub_26EE95DC4(v116, type metadata accessor for PickerGroupWithChildren);
        result = sub_26EE95DC4(v115, type metadata accessor for PickerGroupWithChildren);
        v22 = v115;
        if ((v118 & 1) == 0)
        {
          break;
        }

        if (!v148)
        {
          goto LABEL_138;
        }

        v120 = v143;
        sub_26EE93734(v114, v143, type metadata accessor for PickerGroupWithChildren);
        swift_arrayInitWithTakeFrontToBack();
        sub_26EE93734(v120, v112, type metadata accessor for PickerGroupWithChildren);
        v112 += v147;
        v114 += v147;
        v121 = __CFADD__(v113++, 1);
        v52 = v119;
        v7 = 0;
        v39 = v140;
        if (v121)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v39 = v140;
LABEL_95:
      ++v52;
      v112 = v137 + v129;
      v113 = v131 - 1;
      v114 = v130 + v129;
      v62 = v146;
    }

    while (v52 != v146);
    v28 = v138;
    v38 = v136;
    if (v146 < v136)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v39 + 2) + 1, 1, v39);
      v39 = result;
    }

    v64 = *(v39 + 2);
    v63 = *(v39 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      result = sub_26EE12E30((v63 > 1), v64 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 2) = v65;
    v66 = &v39[16 * v64];
    *(v66 + 4) = v38;
    *(v66 + 5) = v62;
    v146 = v62;
    v67 = *v139;
    if (!*v139)
    {
      goto LABEL_141;
    }

    if (v64)
    {
      break;
    }

LABEL_3:
    v37 = v150[1];
    v38 = v146;
    if (v146 >= v37)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v68 = v65 - 1;
    if (v65 >= 4)
    {
      v73 = &v39[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_118;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_119;
      }

      v80 = &v39[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_121;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_124;
      }

      if (v84 >= v76)
      {
        v102 = &v39[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_130;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v72)
        {
          goto LABEL_120;
        }

        v85 = &v39[16 * v65];
        v87 = *v85;
        v86 = *(v85 + 1);
        v88 = __OFSUB__(v86, v87);
        v89 = v86 - v87;
        v90 = v88;
        if (v88)
        {
          goto LABEL_123;
        }

        v91 = &v39[16 * v68 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v79 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v79)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v89, v94))
        {
          goto LABEL_127;
        }

        if (v89 + v94 < v71)
        {
          goto LABEL_70;
        }

        if (v71 < v94)
        {
          v68 = v65 - 2;
        }
      }
    }

    else
    {
      if (v65 == 3)
      {
        v69 = *(v39 + 4);
        v70 = *(v39 + 5);
        v79 = __OFSUB__(v70, v69);
        v71 = v70 - v69;
        v72 = v79;
        goto LABEL_56;
      }

      v95 = &v39[16 * v65];
      v97 = *v95;
      v96 = *(v95 + 1);
      v79 = __OFSUB__(v96, v97);
      v89 = v96 - v97;
      v90 = v79;
LABEL_70:
      if (v90)
      {
        goto LABEL_122;
      }

      v98 = &v39[16 * v68];
      v100 = *(v98 + 4);
      v99 = *(v98 + 5);
      v79 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v79)
      {
        goto LABEL_125;
      }

      if (v101 < v89)
      {
        goto LABEL_3;
      }
    }

    v106 = v68 - 1;
    if (v68 - 1 < v65)
    {
      if (!*v150)
      {
        goto LABEL_137;
      }

      v107 = *&v39[16 * v106 + 32];
      v108 = *&v39[16 * v68 + 40];
      sub_26EE91210(*v150 + *(v149 + 72) * v107, *v150 + *(v149 + 72) * *&v39[16 * v68 + 32], *v150 + *(v149 + 72) * v108, v67, v151, v152);
      if (v7)
      {
      }

      if (v108 < v107)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_26EE13990(v39);
      }

      if (v106 >= *(v39 + 2))
      {
        goto LABEL_117;
      }

      v109 = &v39[16 * v106];
      *(v109 + 4) = v107;
      *(v109 + 5) = v108;
      v153 = v39;
      result = sub_26EE5C168(v68);
      v39 = v153;
      v65 = *(v153 + 2);
      if (v65 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  result = sub_26EE13990(v39);
  v39 = result;
LABEL_101:
  v153 = v39;
  v122 = *(v39 + 2);
  if (v122 < 2)
  {
  }

  v123 = v151;
  while (*v150)
  {
    v124 = *&v39[16 * v122];
    v125 = *&v39[16 * v122 + 24];
    sub_26EE91210(*v150 + *(v149 + 72) * v124, *v150 + *(v149 + 72) * *&v39[16 * v122 + 16], *v150 + *(v149 + 72) * v125, v28, v123, v152);
    if (v7)
    {
    }

    if (v125 < v124)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_26EE13990(v39);
    }

    if (v122 - 2 >= *(v39 + 2))
    {
      goto LABEL_129;
    }

    v126 = &v39[16 * v122];
    *v126 = v124;
    *(v126 + 1) = v125;
    v153 = v39;
    result = sub_26EE5C168(v122 - 1);
    v39 = v153;
    v122 = *(v153 + 2);
    if (v122 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_26EE909D0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v109 = result;
    while (1)
    {
      v11 = v9;
      v110 = v9;
      if ((v9 + 1) >= v8)
      {
        v22 = v9 + 1;
      }

      else
      {
        v115 = v8;
        v106 = v10;
        v108 = v5;
        v12 = (*v6 + 16 * (v9 + 1));
        v13 = *v12;
        v14 = v12[1];
        v112 = 16 * v9;
        v15 = *v6 + 16 * v9;
        v9 = *v15;
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        v18 = *(v14 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18(ObjectType, v14);
        v19 = swift_getObjectType();
        (*(v16 + 40))(v19, v16);
        sub_26EE12538();
        v117 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v20 = v11 + 2;
        v21 = (v15 + 24);
        while (1)
        {
          v22 = v115;
          if (v115 == v20)
          {
            break;
          }

          v23 = *v21;
          v24 = v21[1];
          v25 = v21 + 2;
          v26 = v21[2];
          v9 = *(v21 - 1);
          v27 = swift_getObjectType();
          v28 = *(v26 + 40);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v28(v27, v26);
          v29 = swift_getObjectType();
          (*(v23 + 40))(v29, v23);
          v30 = sub_26EF3B61C();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          ++v20;
          v21 = v25;
          if ((v117 == -1) == (v30 != -1))
          {
            v22 = v20 - 1;
            break;
          }
        }

        v10 = v106;
        v5 = v108;
        v6 = a3;
        v7 = v109;
        v11 = v110;
        if (v117 == -1)
        {
          if (v22 < v110)
          {
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

          if (v110 < v22)
          {
            v31 = 16 * v22 - 16;
            v32 = v110;
            v33 = v22;
            v34 = v112;
            do
            {
              if (v32 != --v33)
              {
                v36 = *a3;
                if (!*a3)
                {
                  goto LABEL_128;
                }

                v35 = *(v36 + v34);
                *(v36 + v34) = *(v36 + v31);
                *(v36 + v31) = v35;
              }

              ++v32;
              v31 -= 16;
              v34 += 16;
            }

            while (v32 < v33);
            v11 = v110;
          }
        }
      }

      v37 = v6[1];
      if (v22 >= v37)
      {
        break;
      }

      if (__OFSUB__(v22, v11))
      {
        goto LABEL_120;
      }

      if (v22 - v11 >= a4)
      {
        v39 = v22;
        if (v22 < v110)
        {
          goto LABEL_119;
        }
      }

      else
      {
        v11 = v110;
        if (__OFADD__(v110, a4))
        {
          goto LABEL_121;
        }

        if (&v110[a4] >= v37)
        {
          v38 = v6[1];
        }

        else
        {
          v38 = &v110[a4];
        }

        if (v38 < v110)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v22 == v38)
        {
          break;
        }

        v107 = v10;
        v118 = *v6;
        v40 = *v6 + 16 * v22 - 16;
        v41 = v110 - v22;
        v111 = v38;
        do
        {
          v114 = v40;
          v116 = v22;
          v42 = *(v118 + 16 * v22);
          v113 = v41;
          do
          {
            v119 = *(&v42 + 1);
            v44 = *v40;
            v43 = *(v40 + 8);
            v9 = v42;
            v45 = swift_getObjectType();
            v46 = *(v119 + 40);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v46(v45, v119);
            v47 = swift_getObjectType();
            (*(v43 + 40))(v47, v43);
            sub_26EE12538();
            v48 = sub_26EF3B61C();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            if (v48 != -1)
            {
              break;
            }

            if (!v118)
            {
              goto LABEL_125;
            }

            v49 = *v40;
            v42 = *(v40 + 16);
            *v40 = v42;
            *(v40 + 16) = v49;
            v40 -= 16;
          }

          while (!__CFADD__(v41++, 1));
          v22 = v116 + 1;
          v40 = v114 + 16;
          v39 = v111;
          v41 = v113 - 1;
        }

        while (v116 + 1 != v111);
        v10 = v107;
        v6 = a3;
        v7 = v109;
        if (v111 < v110)
        {
          goto LABEL_119;
        }
      }

LABEL_41:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26EE12E30(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v52 = *(v10 + 2);
      v51 = *(v10 + 3);
      v53 = v52 + 1;
      v54 = v110;
      if (v52 >= v51 >> 1)
      {
        result = sub_26EE12E30((v51 > 1), v52 + 1, 1, v10);
        v54 = v110;
        v10 = result;
      }

      *(v10 + 2) = v53;
      v55 = &v10[16 * v52];
      *(v55 + 4) = v54;
      *(v55 + 5) = v39;
      v56 = *v7;
      if (!v56)
      {
        goto LABEL_129;
      }

      v9 = v39;
      if (v52)
      {
        while (1)
        {
          v57 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v58 = *(v10 + 4);
            v59 = *(v10 + 5);
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_60:
            if (v61)
            {
              goto LABEL_108;
            }

            v74 = &v10[16 * v53];
            v76 = *v74;
            v75 = *(v74 + 1);
            v77 = __OFSUB__(v75, v76);
            v78 = v75 - v76;
            v79 = v77;
            if (v77)
            {
              goto LABEL_111;
            }

            v80 = &v10[16 * v57 + 32];
            v82 = *v80;
            v81 = *(v80 + 1);
            v68 = __OFSUB__(v81, v82);
            v83 = v81 - v82;
            if (v68)
            {
              goto LABEL_114;
            }

            if (__OFADD__(v78, v83))
            {
              goto LABEL_115;
            }

            if (v78 + v83 >= v60)
            {
              if (v60 < v83)
              {
                v57 = v53 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          v84 = &v10[16 * v53];
          v86 = *v84;
          v85 = *(v84 + 1);
          v68 = __OFSUB__(v85, v86);
          v78 = v85 - v86;
          v79 = v68;
LABEL_74:
          if (v79)
          {
            goto LABEL_110;
          }

          v87 = &v10[16 * v57];
          v89 = *(v87 + 4);
          v88 = *(v87 + 5);
          v68 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v68)
          {
            goto LABEL_113;
          }

          if (v90 < v78)
          {
            goto LABEL_3;
          }

LABEL_81:
          v95 = v57 - 1;
          if (v57 - 1 >= v53)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
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
            goto LABEL_122;
          }

          if (!*v6)
          {
            goto LABEL_126;
          }

          v96 = *&v10[16 * v95 + 32];
          v97 = *&v10[16 * v57 + 40];
          sub_26EE91858((*v6 + 16 * v96), (*v6 + 16 * *&v10[16 * v57 + 32]), (*v6 + 16 * v97), v56);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_104;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_26EE13990(v10);
          }

          if (v95 >= *(v10 + 2))
          {
            goto LABEL_105;
          }

          v98 = &v10[16 * v95];
          *(v98 + 4) = v96;
          *(v98 + 5) = v97;
          result = sub_26EE5C168(v57);
          v53 = *(v10 + 2);
          if (v53 <= 1)
          {
            goto LABEL_3;
          }
        }

        v62 = &v10[16 * v53 + 32];
        v63 = *(v62 - 64);
        v64 = *(v62 - 56);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_106;
        }

        v67 = *(v62 - 48);
        v66 = *(v62 - 40);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_107;
        }

        v69 = &v10[16 * v53];
        v71 = *v69;
        v70 = *(v69 + 1);
        v68 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v68)
        {
          goto LABEL_109;
        }

        v68 = __OFADD__(v60, v72);
        v73 = v60 + v72;
        if (v68)
        {
          goto LABEL_112;
        }

        if (v73 >= v65)
        {
          v91 = &v10[16 * v57 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v68 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v68)
          {
            goto LABEL_116;
          }

          if (v60 < v94)
          {
            v57 = v53 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_60;
      }

LABEL_3:
      v8 = v6[1];
      v7 = v109;
      if (v9 >= v8)
      {
        goto LABEL_92;
      }
    }

    v39 = v22;
    if (v22 < v11)
    {
      goto LABEL_119;
    }

    goto LABEL_41;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_92:
  v9 = *v7;
  if (!*v7)
  {
    goto LABEL_130;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_123:
    result = sub_26EE13990(v10);
    v10 = result;
  }

  v99 = *(v10 + 2);
  if (v99 >= 2)
  {
    while (*v6)
    {
      v100 = v10;
      v10 = (v99 - 1);
      v101 = *&v100[16 * v99];
      v102 = *&v100[16 * v99 + 24];
      sub_26EE91858((*v6 + 16 * v101), (*v6 + 16 * *&v100[16 * v99 + 16]), (*v6 + 16 * v102), v9);
      if (v5)
      {
      }

      if (v102 < v101)
      {
        goto LABEL_117;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = sub_26EE13990(v100);
      }

      if (v99 - 2 >= *(v100 + 2))
      {
        goto LABEL_118;
      }

      v103 = &v100[16 * v99];
      *v103 = v101;
      *(v103 + 1) = v102;
      result = sub_26EE5C168(v99 - 1);
      v10 = v100;
      v99 = *(v100 + 2);
      if (v99 <= 1)
      {
      }
    }

    goto LABEL_127;
  }
}

unint64_t sub_26EE91210(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v59 = a6;
  v60 = a5;
  v61 = a3;
  v58 = type metadata accessor for PickerGroupWithChildren(0);
  v11 = *(*(v58 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v58, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v50 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v50 - v22;
  result = MEMORY[0x28223BE20](v21, v24);
  v27 = &v50 - v26;
  v57 = *(v28 + 72);
  if (!v57)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v57 == -1)
  {
    goto LABEL_66;
  }

  v29 = v61 - a2;
  if (v61 - a2 != 0x8000000000000000 || v57 != -1)
  {
    v30 = (a2 - a1) / v57;
    v64 = a1;
    v63 = a4;
    v56 = a1;
    if (v30 < v29 / v57)
    {
      v31 = v30 * v57;
      if (a4 < result || result + v31 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v56;
LABEL_17:
      v56 = a4 + v31;
      v62 = a4 + v31;
      if (v31 >= 1 && a2 < v61)
      {
        while (1)
        {
          v34 = result;
          sub_26EE936C8(a2, v27, type metadata accessor for PickerGroupWithChildren);
          sub_26EE936C8(a4, v23, type metadata accessor for PickerGroupWithChildren);
          v35 = v60(v27, v23);
          if (v7)
          {
            break;
          }

          v36 = v35;
          v37 = a4;
          sub_26EE95DC4(v23, type metadata accessor for PickerGroupWithChildren);
          sub_26EE95DC4(v27, type metadata accessor for PickerGroupWithChildren);
          if (v36)
          {
            v38 = v57;
            v39 = v34;
            if (v34 < a2 || v34 >= a2 + v57)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v34;
              a2 += v38;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v34 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v34;
              }

              a2 += v38;
            }
          }

          else
          {
            v40 = a4;
            v38 = v57;
            a4 += v57;
            v39 = v34;
            if (v34 < v37 || v34 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v39 = v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v34 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
                v39 = v34;
              }
            }

            v63 = a4;
          }

          result = v39 + v38;
          v64 = result;
          if (a4 >= v56 || a2 >= v61)
          {
            goto LABEL_64;
          }
        }

        sub_26EE95DC4(v23, type metadata accessor for PickerGroupWithChildren);
        sub_26EE95DC4(v27, type metadata accessor for PickerGroupWithChildren);
      }

LABEL_64:
      sub_26EE91C40(&v64, &v63, &v62);
      return 1;
    }

    v32 = v29 / v57 * v57;
    if (a4 < a2 || a2 + v32 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v41 = a4 + v32;
        if (v32 >= 1)
        {
          v42 = -v57;
          v43 = v41;
          v52 = v19;
          v53 = v15;
          do
          {
            v50 = v41;
            v44 = a2;
            v54 = a2;
            v55 = a2 + v42;
            while (1)
            {
              v45 = v61;
              if (v44 <= result)
              {
                v64 = v44;
                v62 = v50;
                goto LABEL_64;
              }

              v51 = v41;
              v57 = v43;
              v46 = v43 + v42;
              sub_26EE936C8(v43 + v42, v19, type metadata accessor for PickerGroupWithChildren);
              sub_26EE936C8(v55, v15, type metadata accessor for PickerGroupWithChildren);
              v47 = v60(v19, v15);
              if (v7)
              {
                sub_26EE95DC4(v15, type metadata accessor for PickerGroupWithChildren);
                sub_26EE95DC4(v19, type metadata accessor for PickerGroupWithChildren);
                v64 = v54;
                v62 = v51;
                goto LABEL_64;
              }

              v48 = v47;
              v61 = v45 + v42;
              sub_26EE95DC4(v15, type metadata accessor for PickerGroupWithChildren);
              sub_26EE95DC4(v19, type metadata accessor for PickerGroupWithChildren);
              if (v48)
              {
                break;
              }

              v41 = v46;
              if (v45 < v57 || v61 >= v57)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v45 != v57)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v43 = v46;
              result = v56;
              v19 = v52;
              v15 = v53;
              v44 = v54;
              if (v46 <= a4)
              {
                a2 = v54;
                goto LABEL_63;
              }
            }

            if (v45 < v54 || v61 >= v54)
            {
              a2 = v55;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v41 = v51;
            }

            else
            {
              v49 = v45 == v54;
              a2 = v55;
              v7 = 0;
              v41 = v51;
              if (!v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v56;
            v43 = v57;
            v19 = v52;
            v15 = v53;
          }

          while (v57 > a4);
        }

LABEL_63:
        v64 = a2;
        v62 = v41;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v56;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_26EE91858(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v13] <= a4)
    {
      memmove(a4, __dst, 16 * v13);
    }

    v45 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v39 = v4;
      v42 = v7;
LABEL_26:
      v38 = v6 - 16;
      v26 = v5 - 16;
      v27 = v45;
      v40 = v6;
      do
      {
        v44 = v26;
        v28 = v26 + 16;
        v30 = *(v27 - 2);
        v29 = *(v27 - 1);
        v27 -= 16;
        v32 = *(v6 - 2);
        v31 = *(v6 - 1);
        ObjectType = swift_getObjectType();
        v34 = *(v29 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v34(ObjectType, v29);
        v35 = swift_getObjectType();
        (*(v31 + 40))(v35, v31);
        sub_26EE12538();
        v36 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v36 == -1)
        {
          v4 = v39;
          v5 = v44;
          if (v28 != v40)
          {
            *v44 = *v38;
          }

          if (v45 <= v39 || (v6 = v38, v38 <= v42))
          {
            v6 = v38;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        v4 = v39;
        if (v28 != v45)
        {
          *v44 = *v27;
        }

        v26 = v44 - 16;
        v45 = v27;
        v6 = v40;
      }

      while (v27 > v39);
      v45 = v27;
    }
  }

  else
  {
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v45 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      v43 = v5;
      while (1)
      {
        v41 = v7;
        v15 = *v6;
        v14 = *(v6 + 1);
        v16 = v6;
        v18 = *v4;
        v17 = *(v4 + 1);
        v19 = swift_getObjectType();
        v20 = *(v14 + 40);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v20(v19, v14);
        v21 = swift_getObjectType();
        (*(v17 + 40))(v21, v17);
        sub_26EE12538();
        v22 = sub_26EF3B61C();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v22 != -1)
        {
          break;
        }

        v23 = v16;
        v6 = v16 + 16;
        v24 = v41;
        if (v41 != v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 = v24 + 16;
        if (v4 >= v45 || v6 >= v43)
        {
          goto LABEL_36;
        }
      }

      v23 = v4;
      v24 = v41;
      v25 = v41 == v4;
      v4 += 16;
      v6 = v16;
      if (v25)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v24 = *v23;
      goto LABEL_15;
    }

LABEL_36:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v45 - v4 + (v45 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v45 - v4) / 16));
  }

  return 1;
}

uint64_t sub_26EE91C40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for PickerGroupWithChildren(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26EE91D24(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26EF37F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640]);
  v37 = a2;
  v14 = sub_26EF3B04C();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640]);
      v24 = sub_26EF3B0AC();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_26EE92710(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_26EE92004(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26EF3B87C();
  sub_26EF3B16C();
  v9 = sub_26EF3B8CC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26EF3B82C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_26EE929B4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26EE92154(uint64_t a1)
{
  v2 = v1;
  v42 = sub_26EF37F1C();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  result = sub_26EF3B6DC();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640]);
      result = sub_26EF3B04C();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_26EE924B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  result = sub_26EF3B6DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26EE92710(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_26EF37F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26EE92154(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_26EE92B34();
      goto LABEL_12;
    }

    sub_26EE92EC8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640]);
  v16 = sub_26EF3B04C();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_26EE9429C(&qword_2806C8640, MEMORY[0x277CC9640]);
      v24 = sub_26EF3B0AC();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26EF3B85C();
  __break(1u);
  return result;
}

uint64_t sub_26EE929B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26EE924B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26EE92D6C();
      goto LABEL_16;
    }

    sub_26EE931E4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26EF3B87C();
  sub_26EF3B16C();
  result = sub_26EF3B8CC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26EF3B82C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26EF3B85C();
  __break(1u);
  return result;
}

void *sub_26EE92B34()
{
  v1 = v0;
  v2 = sub_26EF37F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  v8 = *v0;
  v9 = sub_26EF3B6CC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

void *sub_26EE92D6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  v2 = *v0;
  v3 = sub_26EF3B6CC();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_26EE92EC8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_26EF37F1C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8658, &qword_26EF40778);
  v11 = sub_26EF3B6DC();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_26EE9429C(&qword_2806C8638, MEMORY[0x277CC9640]);
      result = sub_26EF3B04C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_26EE931E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
  result = sub_26EF3B6DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26EF3B87C();

      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26EE93444(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PickerGroupWithChildren(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v35 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11, v13);
  v34 = &v31 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = a1;
    v33 = a3;
    result = 0;
    v20 = 0;
    v31 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v35;
      a1 = *(v36 + 72);
      sub_26EE936C8(*(a4 + 56) + a1 * (v25 | (v20 << 6)), v35, type metadata accessor for PickerGroupWithChildren);
      v27 = v26;
      v28 = v34;
      sub_26EE93734(v27, v34, type metadata accessor for PickerGroupWithChildren);
      sub_26EE93734(v28, a2, type metadata accessor for PickerGroupWithChildren);
      if (v22 == v33)
      {
        a1 = v32;
        a3 = v33;
        goto LABEL_23;
      }

      a2 += a1;
      result = v22;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v16 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v30 = v20 + 1;
    }

    else
    {
      v30 = v21;
    }

    v20 = v30 - 1;
    a3 = result;
    a1 = v32;
LABEL_23:
    v17 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26EE936C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE93734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EE9379C()
{
  v2 = *(type metadata accessor for VoiceList(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EE89B78(v4, v5, v0 + v3);
}

uint64_t sub_26EE93864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8490, &qword_26EF402D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE938D4()
{
  v1 = type metadata accessor for VoiceList(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 52));
  v5 = *v2;
  v6 = v2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8460, &qword_26EF40280);
  sub_26EF3AAFC();
  v3 = sub_26EE8A3A0(v7);

  sub_26EE86C68(v3);
  sub_26EF3AEAC();
  sub_26EF3992C();
}

unint64_t sub_26EE939E8()
{
  result = qword_2806C84A8;
  if (!qword_2806C84A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8490, &qword_26EF402D8);
    sub_26EE93AA0();
    sub_26EE154C8(&qword_2806C8518, &qword_2806C8520, &qword_26EF40360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84A8);
  }

  return result;
}

unint64_t sub_26EE93AA0()
{
  result = qword_2806C84B0;
  if (!qword_2806C84B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84B8, &qword_26EF40328);
    sub_26EE93BA4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8508, &qword_26EF40358);
    sub_26EE154C8(&qword_2806C8510, &qword_2806C8508, &qword_26EF40358);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84B0);
  }

  return result;
}

unint64_t sub_26EE93BA4()
{
  result = qword_2806C84C0;
  if (!qword_2806C84C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84C8, &qword_26EF40330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84D0, &qword_26EF40338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84D8, &qword_26EF40340);
    sub_26EE154C8(&qword_2806C84E0, &qword_2806C84D0, &qword_26EF40338);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84E8, &qword_26EF40348);
    sub_26EE154C8(&qword_2806C84F0, &qword_2806C84E8, &qword_26EF40348);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C84F8, &qword_2806C8500, &qword_26EF40350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C84C0);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for VoiceList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = v1[6];
  v10 = sub_26EF37FEC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  __swift_destroy_boxed_opaque_existential_1((v5 + v1[7]));
  v12 = *(v5 + v1[8]);

  v13 = (v5 + v1[9]);
  v14 = *v13;

  v15 = v13[1];

  v16 = (v5 + v1[10]);
  v17 = *v16;

  v18 = v16[1];

  v19 = (v5 + v1[11]);
  v20 = *v19;

  v21 = v19[1];

  v22 = v19[3];

  v23 = (v5 + v1[12]);
  v24 = *v23;

  v25 = v23[1];

  v26 = v23[2];

  v27 = (v5 + v1[13]);
  v28 = *v27;

  v29 = v27[1];

  v30 = v5 + v1[14];
  v31 = sub_26EF3AE0C();
  (*(*(v31 - 8) + 8))(v30, v31);
  v32 = *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288) + 28));

  sub_26EE54224(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE93FC0()
{
  v1 = *(type metadata accessor for VoiceList(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE8B3C0(v2);
}

unint64_t sub_26EE94020()
{
  result = qword_2806C8538;
  if (!qword_2806C8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8538);
  }

  return result;
}

uint64_t sub_26EE94074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE940E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26EE94140(uint64_t *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  return sub_26EE8D130(a1);
}

uint64_t sub_26EE9414C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26EE941BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE9422C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26EE9429C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26EE942E4()
{
  result = qword_2806C8580;
  if (!qword_2806C8580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8550, &qword_26EF40390);
    sub_26EE9429C(&qword_2806C8570, type metadata accessor for VoicePickerPickableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8580);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for PickerGroupView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(type metadata accessor for VoicePickerGroup() + 24);
  v7 = sub_26EF37FEC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + *(type metadata accessor for PickerGroupWithChildren(0) + 20));

  v9 = (v0 + v3 + v1[7]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9[2];

  sub_26EE54224(*(v0 + v3 + v1[8]), *(v0 + v3 + v1[8] + 8));
  v13 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE944E8()
{
  v1 = *(type metadata accessor for PickerGroupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EE8E500(v2);
}

uint64_t sub_26EE94558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_26EE94618()
{
  result = qword_2806C8588;
  if (!qword_2806C8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8588);
  }

  return result;
}

uint64_t sub_26EE94680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_26EE947D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EE9490C()
{
  sub_26EE9552C(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_26EE94C38(319, &qword_2806C8598, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26EE94BD4();
      if (v2 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C85A8, &type metadata for VoiceList.ExtraOption, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26EE9552C(319, &qword_2806C85B0, &qword_2806C8438, &qword_26EF40258, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26EE95288(319, &qword_2806C85B8, MEMORY[0x277D837D0], MEMORY[0x277CE11F8]);
            if (v5 <= 0x3F)
            {
              sub_26EE9552C(319, &qword_2806C85C0, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_26EE9552C(319, &qword_2806C85C8, &qword_2806C8458, &qword_26EF40278, MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_26EE94C38(319, &qword_2806C85D0, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
                  {
                    sub_26EE95288(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_26EE94BD4()
{
  result = qword_2806C85A0;
  if (!qword_2806C85A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2806C85A0);
  }

  return result;
}

void sub_26EE94C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EE94CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26EE94D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8430, &qword_26EF40250);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EE94E40()
{
  sub_26EE9552C(319, &qword_2806C85E0, &qword_2806C78E0, &qword_26EF40680, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_26EE94C38(319, &qword_2806C8598, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_26EE94BD4();
      if (v2 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C85A8, &type metadata for VoiceList.ExtraOption, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_26EE9552C(319, &qword_2806C85C0, &qword_2806C84A0, &qword_26EF40320, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_26EE94FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickerGroupWithChildren(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE950A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PickerGroupWithChildren(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_26EE9515C()
{
  type metadata accessor for PickerGroupWithChildren(319);
  if (v0 <= 0x3F)
  {
    sub_26EE9552C(319, &qword_2806C8590, &qword_2806C8428, &qword_26EF40248, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_26EE95288(319, &qword_2806C85D8, &type metadata for TTSPickerMode, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26EE95288(319, &qword_2806C7350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EE95288(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26EE952EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VoicePickerGroup();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EE953BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for VoicePickerGroup();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_26EE95474()
{
  type metadata accessor for VoicePickerGroup();
  if (v0 <= 0x3F)
  {
    sub_26EE9552C(319, &qword_2806C85E8, &qword_2806C7EC8, &qword_26EF3F8B0, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EE9552C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26EE955C0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8480, &qword_26EF402C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8488, &qword_26EF402D0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C84A0, &qword_26EF40320);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8490, &qword_26EF402D8);
  sub_26EE939E8();
  swift_getOpaqueTypeConformance2();
  sub_26EE154C8(&qword_2806C8528, &qword_2806C84A0, &qword_26EF40320);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE95708()
{
  result = qword_2806C85F0;
  if (!qword_2806C85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8540, &qword_26EF40378);
    sub_26EE9429C(&qword_2806C85F8, type metadata accessor for VoiceList);
    sub_26EE154C8(&qword_2806C8600, &qword_2806C8608, &qword_26EF40720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C85F0);
  }

  return result;
}

unint64_t sub_26EE957F4()
{
  result = qword_2806C8610;
  if (!qword_2806C8610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8618, &qword_26EF40728);
    sub_26EE154C8(&qword_2806C8578, &qword_2806C8560, &qword_26EF403A0);
    sub_26EE942E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8610);
  }

  return result;
}

uint64_t sub_26EE958AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PickerGroupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE8DE00(a1, v6, a2);
}

uint64_t sub_26EE9592C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x274383430](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26EE92004(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26EE959C4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for VoiceList(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 8);

  v9 = *(v0 + v3 + 16);

  v10 = v1[6];
  v11 = sub_26EF37FEC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  __swift_destroy_boxed_opaque_existential_1((v6 + v1[7]));
  v13 = *(v6 + v1[8]);

  v14 = (v6 + v1[9]);
  v15 = *v14;

  v16 = v14[1];

  v17 = (v6 + v1[10]);
  v18 = *v17;

  v19 = v17[1];

  v20 = (v6 + v1[11]);
  v21 = *v20;

  v22 = v20[1];

  v23 = v20[3];

  v24 = (v6 + v1[12]);
  v25 = *v24;

  v26 = v24[1];

  v27 = v24[2];

  v28 = (v6 + v1[13]);
  v29 = *v28;

  v30 = v28[1];

  v31 = v6 + v1[14];
  v32 = sub_26EF3AE0C();
  (*(*(v32 - 8) + 8))(v31, v32);
  v33 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8468, &qword_26EF40288) + 28));

  sub_26EE54224(*(v6 + v1[15]), *(v6 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EE95CCC()
{
  v2 = *(type metadata accessor for VoiceList(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE8B5A0(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EE95DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EE95E28@<X0>(uint64_t *a1@<X8>)
{
  v8[1] = *(v1 + 32);
  v9 = *(v1 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  MEMORY[0x274382CF0](v8, v3);
  v4 = sub_26EE8D1A8(v8[0]);
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t objectdestroy_117Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26EE95EF8(uint64_t *a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[6];
  v6 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8548, &unk_26EF40380);
  result = sub_26EF3AC3C();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26EF3C6B0;
    *(inited + 32) = v6;
    *(inited + 40) = v5;

    sub_26EE96344(inited);
    swift_setDeallocating();
    sub_26EE95A18(inited + 32);
    sub_26EF3AC3C();
  }

  return result;
}

unint64_t sub_26EE9604C()
{
  result = qword_2806C8688;
  if (!qword_2806C8688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C78E0, &qword_26EF40680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8688);
  }

  return result;
}

uint64_t sub_26EE960D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoiceList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EE87D78(a1, v6, a2);
}

unint64_t sub_26EE96154()
{
  result = qword_2806C86D8;
  if (!qword_2806C86D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C86C8, &qword_26EF40800);
    sub_26EE96220(&qword_2806C86E0, &qword_2806C86E8, &qword_26EF40808);
    sub_26EE96220(&qword_2806C86F8, &qword_2806C8700, &qword_26EF40810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C86D8);
  }

  return result;
}

uint64_t sub_26EE96220(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26EE9429C(&qword_2806C86F0, type metadata accessor for PickerGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE962D4()
{
  result = qword_2806C8730;
  if (!qword_2806C8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8730);
  }

  return result;
}

uint64_t sub_26EE96344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8628, &qword_26EF42790);
    v3 = sub_26EF3B6EC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_26EF3B87C();

      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_26EF3B82C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void sub_26EE9658C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26EF37E9C();
  v6 = sub_26EF3B0BC();
  (*(a4 + 16))(a4, v5, v6);
}

id VBManagerViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VBManagerViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VBManagerViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VBManagerViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VBManagerViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s26TextToSpeechVoiceBankingUI19VBManagerViewBridgeC04makegH10Controller22authenticationCallbackSo06UIViewK0Cy10Foundation4UUIDV_SStc_tFZ_0(uint64_t a1, uint64_t a2)
{

  VBManagerView.init(authenticationCallback:)(a1, a2, &v11);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8740, &unk_26EF40870));
  v5 = sub_26EF39F8C();
  v6 = sub_26EE17094();
  v7._object = 0x800000026EF45FA0;
  v8 = v6 & 1;
  v7._countAndFlagsBits = 0xD000000000000018;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v8, 0);
  v9 = sub_26EF3B0BC();

  [v5 setTitle_];

  return v5;
}

uint64_t sub_26EE967E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_26EE96828()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

double sub_26EE9689C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_26EE9691C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE96998()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  return v1;
}

uint64_t sub_26EE96A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  *a2 = v5;
  return result;
}

uint64_t sub_26EE96A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26EF3953C();
}

uint64_t sub_26EE96B08(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_26EE96B48(a1);
  return v5;
}

uint64_t sub_26EE96B48(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8750, &qword_26EF40918);
  v4 = *(v3 - 8);
  v61 = v3;
  v62 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v60 = v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9C20, &qword_26EF40920);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8758, &qword_26EF40928);
  v14 = *(v13 - 8);
  v58 = v13;
  v59 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v57 = v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8748, &qword_26EF408C8);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v53 - v28;
  v30 = sub_26EED2EB8();
  v31 = *v30;
  *(v2 + 16) = *v30;
  v32 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioLevel;
  v63 = 0;
  v33 = v31;
  sub_26EF394EC();
  (*(v25 + 32))(v2 + v32, v29, v24);
  v34 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioMagnitudes;
  v63 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66F0, &qword_26EF3C9C0);
  sub_26EF394EC();
  (*(v19 + 32))(v2 + v34, v23, v18);
  v35 = (v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
  v37 = sub_26EF37E7C();
  (*(*(v37 - 8) + 56))(v2 + v36, 1, 1, v37);
  *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_cancellables) = MEMORY[0x277D84FA0];
  v38 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioService;
  v39 = *(*v30 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v40 = sub_26EF388BC();

  *(v2 + v38) = v40;
  v41 = v40;
  sub_26EF3905C();

  v56 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioService;
  v42 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioService);
  v63 = sub_26EF3900C();
  sub_26EE972DC();
  v43 = sub_26EF3B54C();
  v64 = v43;
  v44 = sub_26EF3B52C();
  v45 = *(v44 - 8);
  v54 = *(v45 + 56);
  v55 = v45 + 56;
  v54(v12, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8760, &qword_26EF40930);
  v53[2] = MEMORY[0x277CBCD90];
  sub_26EE154C8(&qword_2806C8768, &qword_2806C8760, &qword_26EF40930);
  v53[1] = sub_26EE97328();
  v46 = v57;
  sub_26EF3955C();
  sub_26EE14578(v12, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_weakInit();
  v53[0] = MEMORY[0x277CBCD60];
  sub_26EE154C8(&qword_2806C8778, &qword_2806C8758, &qword_26EF40928);

  v47 = v58;
  sub_26EF3956C();

  (*(v59 + 8))(v46, v47);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  v48 = *(v2 + v56);
  v63 = sub_26EF3906C();
  v49 = sub_26EF3B54C();
  v64 = v49;
  v54(v12, 1, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8780, &qword_26EF40938);
  sub_26EE154C8(&qword_2806C8788, &qword_2806C8780, &qword_26EF40938);
  v50 = v60;
  sub_26EF3955C();
  sub_26EE14578(v12, &qword_2806C9C20, &qword_26EF40920);

  swift_allocObject();
  swift_weakInit();

  sub_26EE154C8(&qword_2806C8790, &qword_2806C8750, &qword_26EF40918);
  v51 = v61;
  sub_26EF3956C();

  (*(v62 + 8))(v50, v51);
  swift_beginAccess();
  sub_26EF3949C();
  swift_endAccess();

  return v2;
}

unint64_t sub_26EE972DC()
{
  result = qword_2806C9C40;
  if (!qword_2806C9C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806C9C40);
  }

  return result;
}

unint64_t sub_26EE97328()
{
  result = qword_2806C8770;
  if (!qword_2806C8770)
  {
    sub_26EE972DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8770);
  }

  return result;
}

uint64_t sub_26EE97380()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE973B8(double *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v40[-v9];
  v11 = sub_26EF37E7C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v40[-v19];
  v21 = *a1;
  sub_26EF3926C();
  if (v21 < v22)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
      v25 = Strong;
      swift_beginAccess();
      sub_26EE97D40(v25 + v24, v10);

      if ((*(v12 + 48))(v10, 1, v11) != 1)
      {
        (*(v12 + 32))(v20, v10, v11);
        sub_26EF37E6C();
        sub_26EF37E2C();
        if (fmod(v26, 60.0) < 3.0)
        {
          v27 = *(v12 + 8);
          v27(v17, v11);
          return (v27)(v20, v11);
        }

        swift_beginAccess();
        v37 = swift_weakLoadStrong();
        v38 = *(v12 + 8);
        v38(v17, v11);
        v38(v20, v11);
        if (v37)
        {
          (*(v12 + 56))(v7, 1, 1, v11);
          v39 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
          swift_beginAccess();
          sub_26EE97CD0(v7, v37 + v39);
          swift_endAccess();
          goto LABEL_8;
        }

        goto LABEL_11;
      }
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    sub_26EE14578(v10, &qword_2806C8798, &qword_26EF40940);
    goto LABEL_11;
  }

  swift_beginAccess();
  v29 = swift_weakLoadStrong();
  if (v29)
  {
    v30 = v29;
    sub_26EF37E6C();
    (*(v12 + 56))(v7, 0, 1, v11);
    v31 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel;
    swift_beginAccess();
    sub_26EE97CD0(v7, v30 + v31);
    swift_endAccess();
LABEL_8:
  }

LABEL_11:
  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = v32 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback;
    swift_beginAccess();
    v34 = *v33;
    if (*v33)
    {
      v35 = *(v33 + 8);
      sub_26EE21114(v34);

      v34(v36, v21);
      sub_26EE18828(v34);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v41 = v21;
    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EE9785C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_26EF3953C();
  }

  return result;
}

uint64_t sub_26EE978F0()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioLevel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8748, &qword_26EF408C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel__audioMagnitudes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6848, &qword_26EF3CD58);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback + 8);
  sub_26EE18828(*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_audioLevelCallback));
  sub_26EE14578(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_lastFailedAudioLevel, &qword_2806C8798, &qword_26EF40940);
  v6 = *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI34VoiceBankingAudioFeedbackViewModel_cancellables);

  v7 = *(*v0 + 12);
  v8 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for VoiceBankingAudioFeedbackViewModel()
{
  result = qword_2806CC9A0;
  if (!qword_2806CC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26EE97A94()
{
  sub_26EE97BC4();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26EE97C14();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26EE97C78();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26EE97BC4()
{
  if (!qword_2806C87A0)
  {
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C87A0);
    }
  }
}

void sub_26EE97C14()
{
  if (!qword_2806C66E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C66F0, &qword_26EF3C9C0);
    v0 = sub_26EF3954C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C66E8);
    }
  }
}

void sub_26EE97C78()
{
  if (!qword_2806C87A8)
  {
    sub_26EF37E7C();
    v0 = sub_26EF3B5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C87A8);
    }
  }
}

uint64_t sub_26EE97CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE97D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE97DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EE97E34@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  type metadata accessor for VoiceBankingAudioFeedbackViewModel();
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel);
  sub_26EF3976C();
  v9 = sub_26EE96998();

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 >= *(v9 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(v9 + 4 * v5 + 32);

  if (*a2)
  {
    v11 = *a2;
    v12 = sub_26EF0F498();

    v13 = 5.0;
    if (v12)
    {
      v14 = fmin(v10 * 50.0, 50.0);
      if (v14 >= 6.0)
      {
        v13 = v14;
      }
    }

    sub_26EF3976C();
    v15 = sub_26EE96998();

    if (v5 < *(v15 + 16))
    {
      v16 = *(v15 + 4 * v5 + 32);

      v17 = sub_26EE981AC(v16);
      v18 = *(a2 + 40);

      v19 = sub_26EE17094();
      v20 = sub_26EF07B2C();
      result = sub_26EF07B34(v17, v18, v19 & 1, v24, 5.0, v13, v20);
      v22 = v24[1];
      *a3 = v24[0];
      a3[1] = v22;
      a3[2] = v24[2];
      return result;
    }

    goto LABEL_11;
  }

LABEL_12:
  v23 = *(a2 + 8);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EE98084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87C0, &unk_26EF40A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26EE98158()
{
  result = qword_2806C87C8;
  if (!qword_2806C87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87C8);
  }

  return result;
}

uint64_t sub_26EE981AC(float a1)
{
  v2 = v1;
  if (!*v1)
  {
    v19 = *(v1 + 8);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
    return result;
  }

  v4 = *v1;
  if ((sub_26EF0F498() & 1) == 0)
  {

LABEL_12:
    v16 = *(v2 + 40);
  }

  v5 = sub_26EF0F498();

  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = a1 * 50.0;
  if (v6 < 50.0 && (v6 < 6.0 || v6 == 5.0))
  {
    goto LABEL_12;
  }

  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  type metadata accessor for VoiceBankingAudioFeedbackViewModel();
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel);
  sub_26EF3976C();
  v11 = sub_26EE96828();

  sub_26EF3926C();
  v13 = v12;
  v14 = objc_opt_self();
  if (v13 <= v11)
  {
    v15 = [v14 systemRedColor];
  }

  else
  {
    v15 = [v14 systemBlueColor];
  }

  v18 = v15;

  return sub_26EF3AA5C();
}

uint64_t sub_26EE98378@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EE97DB0(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v2 = sub_26EF39C1C();
  v4 = v3;
  v5 = [objc_opt_self() systemGray3Color];
  result = sub_26EF3AA5C();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_26EE97DF8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  return result;
}

double sub_26EE98454@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 5);
  v7 = *(v1 + 32);
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87B8, &unk_26EF409D8) + 44);
  type metadata accessor for VoiceBankingAudioFeedbackViewModel();
  sub_26EE97DB0(&qword_2806C87B0, type metadata accessor for VoiceBankingAudioFeedbackViewModel);
  sub_26EF3976C();
  v9 = sub_26EE96998();

  v10 = *(v9 + 16);

  *&v16 = 0;
  *(&v16 + 1) = v10;
  swift_getKeyPath();
  v19 = *v2;
  v20 = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = *v2;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(v11 + 48) = v7;
  *(v11 + 49) = *(v2 + 33);
  *(v11 + 52) = *(v2 + 9);
  *(v11 + 56) = v6;
  sub_26EE98084(&v19, v15);
  sub_26EE980F4();
  sub_26EE980FC(&v20, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
  sub_26EE275F0();
  sub_26EE98158();
  sub_26EF3ACEC();
  sub_26EF3AE4C();
  sub_26EF3984C();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C87D0, qword_26EF40A10) + 36));
  v13 = v17;
  *v12 = v16;
  v12[1] = v13;
  result = *&v18;
  v12[2] = v18;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26EE986A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EE986F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26EE98750()
{
  result = qword_2806C87D8;
  if (!qword_2806C87D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C87D0, qword_26EF40A10);
    sub_26EE987DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87D8);
  }

  return result;
}

unint64_t sub_26EE987DC()
{
  result = qword_2806C87E0;
  if (!qword_2806C87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C87E8, &qword_26EF40B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87E0);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_26EE05CA8();
  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t VBNavigationItem.hash(into:)()
{
  v1 = *v0;
  if (v0[1])
  {
    v1 = qword_26EF40CD0[v1];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  return MEMORY[0x274383950](v1);
}

uint64_t VBNavigationItem.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26EF3B87C();
  if (v2)
  {
    v1 = qword_26EF40CD0[v1];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE9895C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26EF3B87C();
  if (v2)
  {
    v1 = qword_26EF40CD0[v1];
  }

  else
  {
    MEMORY[0x274383950](8);
  }

  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

void VBNavigationItem.id.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void sub_26EE989DC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

void *sub_26EE989F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26EE98A0C()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EE98A80()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

BOOL _s26TextToSpeechVoiceBankingUI16VBNavigationItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        if (v3 != 2)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }

      else
      {
        if (v3 != 3)
        {
          v4 = 0;
        }

        if (v4)
        {
          return 1;
        }
      }
    }

    else if (v2)
    {
      if (v3 != 1)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 > 5)
  {
    if (v2 == 6)
    {
      if (v3 != 6)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == 7)
      {
        if (v3 != 7)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (v3 <= 7)
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v2 == 4)
  {
    if (v3 != 4)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }

  if (v3 != 5)
  {
    v4 = 0;
  }

  return (v4 & 1) != 0;
}

unint64_t sub_26EE98BFC()
{
  result = qword_2806C87F0;
  if (!qword_2806C87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87F0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VBNavigationItem(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VBNavigationItem(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26EE98CB8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EE98CD4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_26EE98D08()
{
  result = qword_2806C87F8;
  if (!qword_2806C87F8)
  {
    type metadata accessor for TTSVBSiriTTSTrainerTaskMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C87F8);
  }

  return result;
}

uint64_t sub_26EE98D60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EE98DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  v8 = type metadata accessor for VBCapsuleButton();
  sub_26EE98D60(a1, a5 + *(v8 + 40));
  v9 = *(v8 + 36);

  a4(v10);

  return sub_26EE98E84(a1);
}

uint64_t sub_26EE98E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EE98EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a3;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 16);
  v53 = *(v7 + 24);
  v54 = v9;
  v10 = sub_26EF3AB8C();
  v57 = *(v10 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v55 = &v45 - v13;
  WitnessTable = swift_getWitnessTable();
  KeyPath = v10;
  v63 = WitnessTable;
  v15 = WitnessTable;
  v47 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v16 = v10;
  v51 = v10;
  v17 = sub_26EF3A07C();
  v50 = v17;
  v56 = *(v17 - 8);
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v52 = &v45 - v20;
  KeyPath = v16;
  v63 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v15;
  v21 = swift_getWitnessTable();
  v49 = v21;
  v48 = sub_26EE993F8();
  KeyPath = v17;
  v63 = &type metadata for CapsuleButtonStyle;
  v64 = v21;
  v65 = v48;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = *(OpaqueTypeMetadata2 - 8);
  v24 = v23[8];
  v26 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v25);
  v45 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v46 = &v45 - v29;
  v30 = v5;
  (*(v5 + 16))(v8, v3, a1);
  v31 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v32 = swift_allocObject();
  v33 = v53;
  v34 = v54;
  *(v32 + 16) = v54;
  *(v32 + 24) = v33;
  (*(v30 + 32))(v32 + v31, v8, a1);
  v59 = v34;
  v60 = v33;
  v61 = v3;
  v35 = v55;
  sub_26EF3AB4C();
  v36 = v3 + *(a1 + 40);
  v37 = v51;
  v38 = v52;
  sub_26EE99730(v36, v51, v47, v52);
  (*(v57 + 8))(v35, v37);
  KeyPath = swift_getKeyPath();
  LOBYTE(v63) = 0;
  v39 = v45;
  v40 = v50;
  sub_26EF3A66C();

  (*(v56 + 8))(v38, v40);
  v41 = v23[2];
  v42 = v46;
  v41(v46, v39, OpaqueTypeMetadata2);
  v43 = v23[1];
  v43(v39, OpaqueTypeMetadata2);
  v41(v58, v42, OpaqueTypeMetadata2);
  return (v43)(v42, OpaqueTypeMetadata2);
}

unint64_t sub_26EE993F8()
{
  result = qword_2806C8808;
  if (!qword_2806C8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8808);
  }

  return result;
}

uint64_t sub_26EE9944C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for VBCapsuleButton() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5 + 8);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[11], v2);
  v8 = v3[12];
  v9 = sub_26EF398FC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v0 + v5 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_26EE995B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for VBCapsuleButton() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + 8);
  return (*v4)();
}

uint64_t sub_26EE99618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VBCapsuleButton();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 36), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t sub_26EE99730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v56 = *(a2 - 8);
  v7 = *(v56 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  OpaqueTypeConformance2 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v54 = &v50 - v11;
  v64 = v12;
  v65 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v55 + 64);
  v17 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v53 = &v50 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v50 - v25;
  v27 = sub_26EF398FC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26EF3A07C();
  v61 = *(v33 - 8);
  v34 = *(v61 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v60 = &v50 - v36;
  sub_26EE98D60(a1, v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_26EE98E84(v26);
    v37 = v56;
    v38 = *(v56 + 16);
    v39 = v54;
    v38(v54, v59, a2);
    v40 = OpaqueTypeConformance2;
    v38(OpaqueTypeConformance2, v39, a2);
    v64 = a2;
    v65 = a3;
    swift_getOpaqueTypeConformance2();
    v41 = v60;
    sub_26EE83440(v40, OpaqueTypeMetadata2, a2);
    v42 = *(v37 + 8);
    v42(v40, a2);
    v42(v39, a2);
  }

  else
  {
    v43 = *(v28 + 32);
    v51 = v32;
    v52 = v27;
    v43(v32, v26, v27);
    sub_26EF3994C();
    sub_26EF3A76C();
    v64 = a2;
    v65 = a3;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v33;
    v44 = v55;
    v45 = *(v55 + 16);
    v46 = v53;
    v45(v53, v19, OpaqueTypeMetadata2);
    v47 = *(v44 + 8);
    v47(v19, OpaqueTypeMetadata2);
    v45(v19, v46, OpaqueTypeMetadata2);
    v33 = v59;
    v41 = v60;
    sub_26EE83348(v19, OpaqueTypeMetadata2);
    v47(v19, OpaqueTypeMetadata2);
    v47(v46, OpaqueTypeMetadata2);
    (*(v28 + 8))(v51, v52);
  }

  v64 = a2;
  v65 = a3;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = a3;
  swift_getWitnessTable();
  v48 = v61;
  (*(v61 + 16))(v58, v41, v33);
  return (*(v48 + 8))(v41, v33);
}

uint64_t sub_26EE99CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v85 = a2;
  v88 = a4;
  v77 = sub_26EF39DDC();
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v77, v6);
  v75 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_26EF3A25C();
  v8 = *(v79 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v79, v10);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8810, &unk_26EF43190);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v74 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8818, &qword_26EF40D60);
  v18 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80, v19);
  v21 = &v74 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8820, &qword_26EF40D68);
  v22 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81, v23);
  v84 = &v74 - v24;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8828, &unk_26EF40D70);
  v25 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83, v26);
  v86 = a1;
  v87 = &v74 - v27;
  sub_26EF3A26C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8200, &qword_26EF3FEA0);
  inited = swift_initStackObject();
  v78 = xmmword_26EF3D070;
  *(inited + 16) = xmmword_26EF3D070;
  v29 = sub_26EF3A3CC();
  *(inited + 32) = v29;
  v30 = sub_26EF3A3DC();
  *(inited + 33) = v30;
  v31 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v29)
  {
    v31 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v30)
  {
    v31 = sub_26EF3A3FC();
  }

  v32 = v84;
  sub_26EF3962C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  (*(v8 + 32))(v17, v12, v79);
  v41 = &v17[*(v13 + 36)];
  *v41 = v31;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = swift_initStackObject();
  *(v42 + 16) = v78;
  v43 = sub_26EF3A3EC();
  *(v42 + 32) = v43;
  v44 = sub_26EF3A40C();
  *(v42 + 33) = v44;
  v45 = sub_26EF3A3FC();
  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v43)
  {
    v45 = sub_26EF3A3FC();
  }

  sub_26EF3A3FC();
  if (sub_26EF3A3FC() != v44)
  {
    v45 = sub_26EF3A3FC();
  }

  v47 = v85;
  v46 = v86;
  sub_26EF3962C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_26EE14D98(v17, v21, &qword_2806C8810, &unk_26EF43190);
  v56 = &v21[*(v80 + 36)];
  *v56 = v45;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  v57 = v82;
  v58 = sub_26EE9A3FC(v46, v47, v82 & 1);
  v59 = sub_26EF3A3BC();
  sub_26EE14D98(v21, v32, &qword_2806C8818, &qword_26EF40D60);
  v60 = v32 + *(v81 + 36);
  *v60 = v58;
  *(v60 + 8) = v59;
  if (v57)
  {
    if ((v47 & 1) == 0)
    {
LABEL_11:
      v89 = sub_26EF3A9EC();
      sub_26EE9A5D8();
      v61 = sub_26EF3AA6C();
      goto LABEL_16;
    }
  }

  else
  {

    sub_26EF3B46C();
    v62 = sub_26EF3A36C();
    sub_26EF3880C();

    v63 = v75;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(v47, 0);
    (*(v76 + 8))(v63, v77);
    if (v89 != 1)
    {
      goto LABEL_11;
    }
  }

  if (sub_26EF3A27C())
  {
    v64 = [objc_opt_self() whiteColor];
    v65 = [v64 colorWithAlphaComponent_];

    v61 = sub_26EF3AA5C();
  }

  else
  {
    v61 = sub_26EF3A9EC();
  }

LABEL_16:
  v66 = v61;
  v67 = v87;
  sub_26EE14D98(v32, v87, &qword_2806C8820, &qword_26EF40D68);
  *(v67 + *(v83 + 36)) = v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8838, &qword_26EF40D80);
  v69 = v88;
  v70 = v88 + *(v68 + 36);
  v71 = *MEMORY[0x277CE0118];
  v72 = sub_26EF39ECC();
  (*(*(v72 - 8) + 104))(v70, v71, v72);
  *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8840, &qword_26EF40D88) + 36)) = 256;
  return sub_26EE14D98(v67, v69, &qword_2806C8828, &unk_26EF40D70);
}

uint64_t sub_26EE9A3FC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_26EF39DDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v11 = [objc_opt_self() lightGrayColor];
      return sub_26EF3AA5C();
    }
  }

  else
  {

    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE54224(a2, 0);
    (*(v6 + 8))(v10, v5);
    if (v17[15] != 1)
    {
      goto LABEL_3;
    }
  }

  v13 = sub_26EF3A27C();
  v14 = [objc_opt_self() systemBlueColor];
  if (v13)
  {
    v15 = v14;
    [v14 colorWithAlphaComponent_];
  }

  return sub_26EF3AA5C();
}

unint64_t sub_26EE9A5D8()
{
  result = qword_2806C8830;
  if (!qword_2806C8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8830);
  }

  return result;
}

void sub_26EE9A6A0(uint64_t a1)
{
  sub_26EE3FF38();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_26EE9AD30();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26EE9A740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_26EF398FC() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  if (!v10)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_33;
  }

  v18 = v17 + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v22 < 2)
    {
LABEL_33:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (a1 + v14 + 16) & ~v14;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = (*(v9 + 48))((v25 + v15 + v16) & ~v16);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_33;
  }

LABEL_22:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 > 3)
    {
      LODWORD(v18) = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v18) = *a1;
      }
    }

    else if (v18 == 1)
    {
      LODWORD(v18) = *a1;
    }

    else
    {
      LODWORD(v18) = *a1;
    }
  }

  return v13 + (v18 | v23) + 1;
}

void sub_26EE9A9DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_26EF398FC() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (v9 <= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = v9;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (!v13)
  {
    ++v18;
  }

  v21 = ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_23;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v20 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v10 = 4;
      if (v20 >= a2)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

LABEL_23:
    if (v20 >= a2)
    {
      goto LABEL_33;
    }

    goto LABEL_24;
  }

  v10 = 1;
  if (v20 >= a2)
  {
LABEL_33:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v21] = 0;
    }

    else if (v10)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    if (!a2)
    {
      return;
    }

LABEL_40:
    if ((v19 & 0x80000000) != 0)
    {
      v27 = &a1[v15 + 16] & ~v15;
      if (v9 == v20)
      {
        v28 = *(v31 + 56);

        v28(v27, a2, v9, v7);
      }

      else
      {
        v29 = *(v12 + 56);
        v30 = (v27 + v16 + v17) & ~v17;

        v29(v30, (a2 + 1));
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *a1 = (a2 - 1);
    }

    return;
  }

LABEL_24:
  v24 = ~v20 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v10 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_54:
    if (v10 > 1)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_54;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v10 > 1)
    {
LABEL_58:
      if (v10 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_58;
    }
  }

LABEL_55:
  if (v10)
  {
    a1[v21] = v25;
  }
}

void sub_26EE9AD30()
{
  if (!qword_2806C8848)
  {
    sub_26EF398FC();
    v0 = sub_26EF3B5CC();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8848);
    }
  }
}

uint64_t sub_26EE9AD94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26EE9ADDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26EE9AE30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26EF3AB8C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26EF3A07C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_26EE993F8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_26EE9AF40()
{
  result = qword_2806C8850;
  if (!qword_2806C8850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8838, &qword_26EF40D80);
    sub_26EE9AFF8();
    sub_26EE154C8(&qword_2806C8878, &qword_2806C8840, &qword_26EF40D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8850);
  }

  return result;
}

unint64_t sub_26EE9AFF8()
{
  result = qword_2806C8858;
  if (!qword_2806C8858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8828, &unk_26EF40D70);
    sub_26EE9B0B0();
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8858);
  }

  return result;
}

unint64_t sub_26EE9B0B0()
{
  result = qword_2806C8860;
  if (!qword_2806C8860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8820, &qword_26EF40D68);
    sub_26EE9B1C4(&qword_2806C8868, &qword_2806C8818, &qword_26EF40D60, sub_26EE9B194);
    sub_26EE154C8(&qword_2806C83A0, &qword_2806C83A8, &unk_26EF40130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8860);
  }

  return result;
}

uint64_t sub_26EE9B1C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EE9B248()
{
  result = qword_2806C8398;
  if (!qword_2806C8398)
  {
    sub_26EF3A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8398);
  }

  return result;
}

id sub_26EE9B2A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(sub_26EF3914C()) init];
    swift_allocObject();
    swift_weakInit();

    v4 = v0;
    sub_26EF390CC();

    v5 = *(v0 + 16);
    *(v4 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_26EE9B368(char a1, uint64_t a2)
{
  v4 = sub_26EF3AF7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF3AFAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE972DC();
  v16 = sub_26EF3B54C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1 & 1;
  aBlock[4] = sub_26EE9C114;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26EE1DD80;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  sub_26EF3AF8C();
  v20[1] = MEMORY[0x277D84F90];
  sub_26EE9C240(&unk_2806C9E30, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DF0, &qword_26EF3D550);
  sub_26EE9C1DC();
  sub_26EF3B68C();
  MEMORY[0x274383620](0, v15, v9, v18);
  _Block_release(v18);

  (*(v5 + 8))(v9, v4);
  (*(v11 + 8))(v15, v10);
}

uint64_t VBCloudSyncModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = sub_26EE9B2A0();
  sub_26EF3913C();

  return v0;
}

uint64_t VBCloudSyncModel.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  v2 = sub_26EE9B2A0();
  sub_26EF3913C();

  return v1;
}

uint64_t sub_26EE9B6E0(uint64_t a1)
{
  v2 = sub_26EF38A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v45 = &v43 - v10;
  v11 = sub_26EF3883C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v43 - v24;
  sub_26EE7B7C8(a1, &v43 - v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v45;
    (*(v3 + 32))(v45, v25, v2);
    v27 = sub_26EE27DAC();
    (*(v12 + 16))(v17, v27, v11);
    (*(v3 + 16))(v8, v26, v2);
    v28 = sub_26EF3881C();
    v29 = sub_26EF3B45C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v46 = v43;
      *v30 = 136315138;
      v44 = v11;
      v31 = sub_26EF389AC();
      v33 = v32;
      v34 = *(v3 + 8);
      v34(v8);
      v35 = sub_26EE40670(v31, v33, &v46);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_26EE01000, v28, v29, "Error occurred when monitoring for account changes: %s", v30, 0xCu);
      v36 = v43;
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x2743842A0](v36, -1, -1);
      MEMORY[0x2743842A0](v30, -1, -1);

      (*(v12 + 8))(v17, v44);
      return (v34)(v45, v2);
    }

    else
    {

      v42 = *(v3 + 8);
      v42(v8, v2);
      (*(v12 + 8))(v17, v11);
      return (v42)(v45, v2);
    }
  }

  else
  {
    v38 = sub_26EE27DAC();
    (*(v12 + 16))(v20, v38, v11);
    v39 = sub_26EF3881C();
    v40 = sub_26EF3B47C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26EE01000, v39, v40, "Did successfully start monitoring for account changes", v41, 2u);
      MEMORY[0x2743842A0](v41, -1, -1);
    }

    (*(v12 + 8))(v20, v11);
    return sub_26EE7B838(v25);
  }
}

uint64_t VBCloudSyncModel.hasDevicePasscode.getter()
{
  v0 = sub_26EE9B2A0();
  v1 = sub_26EF390EC();

  return v1 & 1;
}

uint64_t sub_26EE9BB94()
{
  v1 = v0;
  sub_26EF3B2DC();

  v2 = sub_26EF3B2CC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  v3[2] = v2;
  v3[3] = v4;
  v3[4] = v0;

  v5 = sub_26EF3B2CC();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v4;
  v6[4] = v1;
  sub_26EF3AC7C();
  return v8;
}

void sub_26EE9BC88(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = sub_26EE9B2A0();
  sub_26EF390FC();

  v5 = sub_26EF391AC();
  v7 = v6;
  if (v5 == sub_26EF391AC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_26EF3B82C();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v12 = *(v3 + 16);
  v11 = sub_26EF3910C();

LABEL_9:
  *a1 = v11 & 1;
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26EE9BDA8(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  v4 = sub_26EE9B2A0();
  sub_26EF390FC();

  v5 = sub_26EF391AC();
  v7 = v6;
  if (v5 != sub_26EF391AC() || v7 != v8)
  {
    v10 = sub_26EF3B82C();

    if (v10)
    {
      return;
    }

    v11 = sub_26EF391AC();
    v13 = v12;
    if (v11 == sub_26EF391AC() && v13 == v14)
    {
    }

    else
    {
      v15 = sub_26EF3B82C();

      if ((v15 & 1) == 0)
      {
LABEL_17:
        v21 = *(v2 + 16);
        sub_26EF3911C();

        return;
      }
    }

    v16 = sub_26EF391AC();
    v18 = v17;
    if (v16 != sub_26EF391AC() || v18 != v19)
    {
      v20 = sub_26EF3B82C();

      if (v20)
      {
        return;
      }

      goto LABEL_17;
    }
  }
}

uint64_t sub_26EE9BFBC()
{
  v0 = sub_26EE9B2A0();
  v1 = sub_26EF3910C();

  return v1 & 1;
}

uint64_t VBCloudSyncModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EE9C098()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EE9C0DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26EE9C114()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for VBCloudSyncModel();
    sub_26EE9C240(&qword_2806C7C18, v3, type metadata accessor for VBCloudSyncModel);
    sub_26EF394BC();
    sub_26EF394DC();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26EE9C1DC()
{
  result = qword_2806C9E40;
  if (!qword_2806C9E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6DF0, &qword_26EF3D550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9E40);
  }

  return result;
}

uint64_t sub_26EE9C240(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_26EE9C28C(unsigned __int8 a1, unsigned __int8 a2)
{
  switch(a1)
  {
    case 5u:
      return a2 == 5;
    case 4u:
      return a2 == 4;
    case 3u:
      return a2 == 3;
  }

  if (a2 - 3 < 3)
  {
    return 0;
  }

  return a1 == a2;
}

BOOL sub_26EE9C2FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

unint64_t sub_26EE9C368()
{
  result = qword_2806C8880;
  if (!qword_2806C8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8880);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VBConfigurationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VBConfigurationStage(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFB)
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_26EE9C514(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26EE9C528(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_26EE9C558()
{
  v0 = sub_26EF3A34C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VoiceBankingNavigationModel();
  v5 = sub_26EE43684();
  sub_26EE43690();
  return VoiceBankingNavigationModel.__allocating_init(itemPath:columnVisibility:)(v5, v4);
}

uint64_t sub_26EE9C5EC()
{
  v0 = *sub_26EF355C4();
}

uint64_t type metadata accessor for VoiceManagementView()
{
  result = qword_2806CD160;
  if (!qword_2806CD160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VoiceManagementView.init(voiceID:dismissCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *sub_26EED2EB8();
  type metadata accessor for VoiceBankingSession();
  v9 = v8;
  sub_26EF3AAEC();
  *a4 = v14;
  *(a4 + 8) = v15;
  v13 = *sub_26EEB4378();
  type metadata accessor for VoiceBankingCompatibilityModel();

  sub_26EF3AAEC();
  *(a4 + 16) = v14;
  *(a4 + 24) = v15;
  *(a4 + 32) = sub_26EE5D020;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = sub_26EE9C558;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = sub_26EE5CFC8;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = sub_26EE9C5EC;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  sub_26EF3AAEC();
  *(a4 + 128) = v14;
  *(a4 + 136) = v15;
  v10 = *(type metadata accessor for VoiceManagementView() + 48);
  v11 = sub_26EF37EDC();
  result = (*(*(v11 - 8) + 32))(a4 + v10, a1, v11);
  *(a4 + 144) = a2;
  *(a4 + 152) = a3;
  return result;
}

uint64_t VoiceManagementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v166 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v143 = &v136 - v6;
  v7 = type metadata accessor for VoiceManagementView();
  v183 = *(v7 - 8);
  refreshed = *(v183 + 64);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v182 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26EF39B0C();
  v179 = *(v10 - 8);
  v11 = *(v179 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8888, &qword_26EF41018);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v136 - v19;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8890, &qword_26EF41020);
  v21 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168, v22);
  v24 = &v136 - v23;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8898, &qword_26EF41028);
  v144 = *(v178 - 8);
  v25 = *(v144 + 64);
  MEMORY[0x28223BE20](v178, v26);
  v169 = &v136 - v27;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88A0, &qword_26EF41030);
  v147 = *(v148 - 8);
  v28 = *(v147 + 64);
  MEMORY[0x28223BE20](v148, v29);
  v181 = &v136 - v30;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88A8, &qword_26EF41038);
  v149 = *(v151 - 8);
  v31 = *(v149 + 64);
  MEMORY[0x28223BE20](v151, v32);
  v146 = &v136 - v33;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88B0, &qword_26EF41040);
  v34 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145, v35);
  v150 = &v136 - v36;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88B8, &qword_26EF41048);
  v37 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154, v38);
  v152 = &v136 - v39;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88C0, &qword_26EF41050);
  v158 = *(v161 - 8);
  v40 = *(v158 + 64);
  MEMORY[0x28223BE20](v161, v41);
  v156 = &v136 - v42;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88C8, &qword_26EF41058);
  v157 = *(v159 - 8);
  v43 = *(v157 + 64);
  MEMORY[0x28223BE20](v159, v44);
  v155 = &v136 - v45;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88D0, &qword_26EF41060);
  v46 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153, v47);
  v162 = &v136 - v48;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88D8, &qword_26EF41068);
  v49 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160, v50);
  v164 = &v136 - v51;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88E0, &qword_26EF41070);
  v52 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163, v53);
  v165 = &v136 - v54;
  v185 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C88E8, &qword_26EF41078);
  sub_26EE154C8(&qword_2806C88F0, &qword_2806C88E8, &qword_26EF41078);
  sub_26EF3A4EC();
  sub_26EF3AECC();
  sub_26EE154C8(&qword_2806C88F8, &qword_2806C8888, &qword_26EF41018);
  sub_26EEA200C(&qword_2806C7798, MEMORY[0x277CDDAB8]);
  sub_26EF3A93C();
  (*(v179 + 8))(v14, v10);
  (*(v16 + 8))(v20, v15);
  v55 = *(v2 + 8);
  v142 = *v2;
  v186 = v142;
  v187 = v55;
  v141 = v55;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7B48, &qword_26EF41080);
  sub_26EF3AAFC();
  v56 = v190;
  v57 = VoiceBankingSession.dataStoreEventPublisher.getter();

  v58 = v182;
  sub_26EEA1EDC(v2, v182, type metadata accessor for VoiceManagementView);
  v59 = *(v183 + 80);
  v60 = (v59 + 16) & ~v59;
  v183 = v60 + refreshed;
  v61 = swift_allocObject();
  v167 = type metadata accessor for VoiceManagementView;
  sub_26EEA1FA4(v58, v61 + v60, type metadata accessor for VoiceManagementView);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8900, &qword_26EF41088);
  v63 = v24;
  *&v24[*(v62 + 52)] = v57;
  v64 = &v24[*(v62 + 56)];
  *v64 = sub_26EE9F64C;
  v64[1] = v61;
  v65 = *(v2 + 64);
  v173 = *(v2 + 56);
  v172 = v65;
  v171 = *(v2 + 72);
  v174 = type metadata accessor for VoiceBankingNavigationModel();
  v170 = sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  sub_26EF3976C();
  v66 = v168;
  v67 = *(v168 + 52);
  v137 = v63;
  VoiceBankingNavigationModel.$presentVoiceRootView.getter();

  sub_26EEA1EDC(v2, v58, type metadata accessor for VoiceManagementView);
  v68 = swift_allocObject();
  sub_26EEA1FA4(v58, v68 + v60, v167);
  v69 = &v63[*(v66 + 56)];
  *v69 = sub_26EE9FFD0;
  v69[1] = v68;
  v70 = *(v2 + 40);
  v179 = *(v2 + 32);
  v177 = v70;
  v176 = *(v2 + 48);
  v136 = v2;
  refreshed = type metadata accessor for VoiceRefreshViewModel(0);
  v175 = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v71 = sub_26EEA6568();

  v186 = v71;
  sub_26EEA1EDC(v2, v58, type metadata accessor for VoiceManagementView);
  v138 = v59;
  v72 = swift_allocObject();
  v139 = v60;
  sub_26EEA1FA4(v58, v72 + v60, v167);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  v74 = sub_26EE154C8(&qword_2806C8910, &qword_2806C8890, &qword_26EF41020);
  v75 = sub_26EEA01CC();
  v76 = v168;
  v77 = v137;
  sub_26EF3A90C();

  sub_26EE14578(v77, &qword_2806C8890, &qword_26EF41020);
  sub_26EF3977C();
  swift_getKeyPath();
  v78 = v136;
  sub_26EF399BC();

  v79 = type metadata accessor for RootView();
  v186 = v76;
  v187 = v73;
  v188 = v74;
  v189 = v75;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = sub_26EEA200C(&qword_2806C7B40, type metadata accessor for RootView);
  v82 = v178;
  v83 = v169;
  sub_26EF3A8BC();

  (*(v144 + 8))(v83, v82);
  sub_26EF3976C();
  v84 = sub_26EEA652C();

  v184 = v78;
  v85 = v143;
  sub_26EE61DE8(sub_26EEA0724, v84, v143);

  v86 = sub_26EF38AAC();
  v87 = *(v86 - 8);
  v88 = v85;
  if ((*(v87 + 48))(v85, 1, v86) == 1)
  {
    sub_26EE14578(v85, &qword_2806C7080, &unk_26EF3DBF0);
    v89 = 0;
    v90 = 0xE000000000000000;
  }

  else
  {
    v89 = sub_26EF38A7C();
    v90 = v91;
    (*(v87 + 8))(v88, v86);
  }

  v190 = v89;
  v191 = v90;
  v186 = v178;
  v187 = v79;
  v188 = OpaqueTypeConformance2;
  v189 = v81;
  swift_getOpaqueTypeConformance2();
  sub_26EE12538();
  v92 = v146;
  v93 = v148;
  v94 = v181;
  sub_26EF3A75C();

  (*(v147 + 8))(v94, v93);
  v95 = v182;
  sub_26EEA1EDC(v78, v182, type metadata accessor for VoiceManagementView);
  v96 = swift_allocObject();
  v97 = v139;
  sub_26EEA1FA4(v95, v96 + v139, type metadata accessor for VoiceManagementView);
  v98 = v150;
  (*(v149 + 32))(v150, v92, v151);
  v99 = (v98 + *(v145 + 36));
  *v99 = sub_26EEA0768;
  v99[1] = v96;
  v99[2] = 0;
  v99[3] = 0;
  sub_26EEA1EDC(v78, v95, type metadata accessor for VoiceManagementView);
  v100 = swift_allocObject();
  sub_26EEA1FA4(v95, v100 + v97, type metadata accessor for VoiceManagementView);
  v101 = v152;
  sub_26EE14D98(v98, v152, &qword_2806C88B0, &qword_26EF41040);
  v102 = v154;
  v103 = (v101 + *(v154 + 36));
  *v103 = 0;
  v103[1] = 0;
  v103[2] = sub_26EEA0908;
  v103[3] = v100;
  v186 = v142;
  v187 = v141;
  sub_26EF3AAFC();
  v104 = v190;
  v105 = type metadata accessor for VoiceBankingSession();
  v106 = sub_26EEA0968();
  v107 = sub_26EEA200C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  v108 = v156;
  sub_26EF3A67C();

  sub_26EE14578(v101, &qword_2806C88B8, &qword_26EF41048);
  v109 = *(v78 + 24);
  v186 = *(v78 + 16);
  v187 = v109;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  type metadata accessor for VoiceBankingCompatibilityModel();
  v186 = v102;
  v187 = v105;
  v188 = v106;
  v189 = v107;
  swift_getOpaqueTypeConformance2();
  sub_26EEA200C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
  v110 = v155;
  v111 = v161;
  sub_26EF3A67C();

  (*(v158 + 8))(v108, v111);
  v112 = sub_26EF3976C();
  v113 = sub_26EF394AC();
  v114 = v162;
  (*(v157 + 32))(v162, v110, v159);
  v115 = (v114 + *(v153 + 36));
  *v115 = v113;
  v115[1] = v112;
  v116 = *(v78 + 80);
  v117 = *(v78 + 88);
  v118 = *(v78 + 96);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EEA200C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  v119 = sub_26EF3976C();
  v120 = sub_26EF394AC();
  v121 = v164;
  sub_26EE14D98(v114, v164, &qword_2806C88D0, &qword_26EF41060);
  v122 = (v121 + *(v160 + 36));
  *v122 = v120;
  v122[1] = v119;
  v123 = *(v78 + 104);
  v124 = *(v78 + 112);
  v125 = *(v78 + 120);
  type metadata accessor for VoiceBankingBatteryMonitor();
  sub_26EEA200C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
  v126 = sub_26EF3976C();
  v127 = sub_26EF394AC();
  v128 = v165;
  sub_26EE14D98(v121, v165, &qword_2806C88D8, &qword_26EF41068);
  v129 = (v128 + *(v163 + 36));
  *v129 = v127;
  v129[1] = v126;
  v130 = sub_26EF3976C();
  v131 = sub_26EF394AC();
  v132 = v128;
  v133 = v166;
  sub_26EE14D98(v132, v166, &qword_2806C88E0, &qword_26EF41070);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8948, &qword_26EF410C8);
  v135 = (v133 + *(result + 36));
  *v135 = v131;
  v135[1] = v130;
  return result;
}

uint64_t sub_26EE9DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v176 = a2;
  v174 = type metadata accessor for _InternalSection();
  v173 = *(v174 - 8);
  v3 = *(v173 + 64);
  MEMORY[0x28223BE20](v174, v4);
  v166 = &v159 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89B0, &qword_26EF41170);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v187 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v184 = &v159 - v12;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89B8, &unk_26EF41178);
  v175 = *(v186 - 8);
  v13 = *(v175 + 64);
  v15 = MEMORY[0x28223BE20](v186, v14);
  v185 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v192 = &v159 - v18;
  v19 = type metadata accessor for CompatibilitySection();
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v194 = &v159 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v191 = &v159 - v25;
  v26 = type metadata accessor for ExportDataSection();
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v193 = &v159 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v190 = &v159 - v32;
  v33 = type metadata accessor for RecordingSection();
  v34 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33 - 8, v35);
  v183 = &v159 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v189 = &v159 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v40 - 8, v42);
  v159 = &v159 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v163 = &v159 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v165 = &v159 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v161 = &v159 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v167 = &v159 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v168 = &v159 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v160 = &v159 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v66 = &v159 - v65;
  MEMORY[0x28223BE20](v64, v67);
  v69 = &v159 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v71 = *(*(v70 - 8) + 64);
  v73 = MEMORY[0x28223BE20](v70 - 8, v72);
  v164 = &v159 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v73, v75);
  v170 = &v159 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v179 = &v159 - v80;
  MEMORY[0x28223BE20](v79, v81);
  v83 = &v159 - v82;
  v84 = type metadata accessor for VoiceInformationSection();
  v85 = *(*(v84 - 8) + 64);
  v87 = MEMORY[0x28223BE20](v84 - 8, v86);
  v182 = &v159 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87, v89);
  v188 = &v159 - v90;
  v91 = *(a1 + 32);
  v92 = *(a1 + 40);
  v93 = *(a1 + 48);
  refreshed = type metadata accessor for VoiceRefreshViewModel(0);
  v95 = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  v181 = v91;
  v172 = v92;
  LODWORD(v180) = v93;
  v171 = refreshed;
  v169 = v95;
  sub_26EF3976C();
  v96 = sub_26EEA652C();

  v195 = a1;
  sub_26EE61DE8(sub_26EEA2080, v96, v83);

  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v66);
  v97 = sub_26EF38DBC();
  v98 = *(v97 - 8);
  v99 = *(v98 + 48);
  v100 = v98 + 48;
  LODWORD(v96) = v99(v66, 1, v97);
  sub_26EE14578(v66, &qword_2806C7088, &unk_26EF3E330);
  v178 = v100;
  v177 = v97;
  if (v96 == 1)
  {
    v101 = v160;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v160);
    v102 = v99(v101, 1, v97);
    sub_26EE14578(v101, &qword_2806C7088, &unk_26EF3E330);
    if (v102 == 1)
    {
      v103 = MEMORY[0x277D70648];
    }

    else
    {
      v103 = MEMORY[0x277D70640];
    }
  }

  else
  {
    v103 = MEMORY[0x277D70638];
  }

  sub_26EEA0C14(sub_26EEA2064, v103, v69);
  sub_26EE5A140(v83, v69, v188);
  sub_26EF3976C();
  v104 = sub_26EEA652C();

  MEMORY[0x28223BE20](v105, v106);
  *(&v159 - 2) = a1;
  sub_26EE61DE8(sub_26EEA2080, v104, v179);
  v171 = 0;

  v107 = v167;
  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v167);
  v108 = v177;
  LODWORD(v104) = v99(v107, 1, v177);
  sub_26EE14578(v107, &qword_2806C7088, &unk_26EF3E330);
  v162 = v99;
  if (v104 == 1)
  {
    v109 = v161;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v161);
    v110 = v99(v109, 1, v108);
    sub_26EE14578(v109, &qword_2806C7088, &unk_26EF3E330);
    if (v110 == 1)
    {
      v111 = MEMORY[0x277D70648];
    }

    else
    {
      v111 = MEMORY[0x277D70640];
    }

    v112 = v168;
    sub_26EEA0C14(sub_26EEA2064, v111, v168);
  }

  else
  {
    v112 = v168;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v168);
  }

  sub_26EF0DFD8(v179, v112, v189);
  sub_26EF3976C();
  v113 = sub_26EEA6568();

  MEMORY[0x28223BE20](v114, v115);
  *(&v159 - 2) = a1;
  v116 = sub_26EE65474(sub_26EEA2064, (&v159 - 4), v113);
  CGSizeMake(v116, v117, v118);
  v180 = v119;
  sub_26EF3976C();
  v120 = sub_26EEA652C();

  MEMORY[0x28223BE20](v121, v122);
  *(&v159 - 2) = a1;
  v123 = v170;
  sub_26EE61DE8(sub_26EEA2080, v120, v170);

  sub_26EEA46F0(v123, v190);
  sub_26EF3976C();
  v124 = sub_26EEA652C();

  MEMORY[0x28223BE20](v125, v126);
  *(&v159 - 2) = a1;
  sub_26EE61DE8(sub_26EEA2080, v124, v123);

  sub_26EF3976C();
  v127 = sub_26EEA6568();

  MEMORY[0x28223BE20](v128, v129);
  *(&v159 - 2) = a1;
  v130 = sub_26EE65474(sub_26EEA2064, (&v159 - 4), v127);
  v131 = sub_26EEAF184(v123, v130, v191);
  MEMORY[0x28223BE20](v131, v132);
  *(&v159 - 2) = a1;
  type metadata accessor for DeleteVoiceButton();
  sub_26EEA200C(&qword_2806C89C0, type metadata accessor for DeleteVoiceButton);
  sub_26EF3AD6C();
  if (TTSVBIsInternalUIBuild())
  {
    sub_26EF3976C();
    v133 = sub_26EEA652C();

    MEMORY[0x28223BE20](v134, v135);
    *(&v159 - 2) = a1;
    v136 = v164;
    sub_26EE61DE8(sub_26EEA2080, v133, v164);

    v137 = v163;
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v163);
    v138 = v177;
    v139 = v162;
    LODWORD(v133) = v162(v137, 1, v177);
    sub_26EE14578(v137, &qword_2806C7088, &unk_26EF3E330);
    if (v133 == 1)
    {
      v140 = v159;
      sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v159);
      v141 = v139(v140, 1, v138);
      sub_26EE14578(v140, &qword_2806C7088, &unk_26EF3E330);
      v142 = v165;
      if (v141 == 1)
      {
        v143 = MEMORY[0x277D70648];
      }

      else
      {
        v143 = MEMORY[0x277D70640];
      }

      v146 = v143;
    }

    else
    {
      v146 = MEMORY[0x277D70638];
      v142 = v165;
    }

    sub_26EEA0C14(sub_26EEA2064, v146, v142);
    v145 = v184;
    v147 = v166;
    sub_26EE2D9BC(v136, v142, v166);
    sub_26EEA1FA4(v147, v145, type metadata accessor for _InternalSection);
    v144 = 0;
  }

  else
  {
    v144 = 1;
    v145 = v184;
  }

  (*(v173 + 56))(v145, v144, 1, v174);
  v148 = v182;
  sub_26EEA1EDC(v188, v182, type metadata accessor for VoiceInformationSection);
  v149 = v183;
  sub_26EEA1EDC(v189, v183, type metadata accessor for RecordingSection);
  sub_26EEA1EDC(v190, v193, type metadata accessor for ExportDataSection);
  sub_26EEA1EDC(v191, v194, type metadata accessor for CompatibilitySection);
  v150 = v175;
  v151 = *(v175 + 16);
  v151(v185, v192, v186);
  sub_26EE13B88(v145, v187, &qword_2806C89B0, &qword_26EF41170);
  v152 = v176;
  sub_26EEA1EDC(v148, v176, type metadata accessor for VoiceInformationSection);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89C8, &qword_26EF41188);
  sub_26EEA1EDC(v149, v152 + v153[12], type metadata accessor for RecordingSection);
  *(v152 + v153[16]) = v180;
  sub_26EEA1EDC(v193, v152 + v153[20], type metadata accessor for ExportDataSection);
  sub_26EEA1EDC(v194, v152 + v153[24], type metadata accessor for CompatibilitySection);
  v155 = v185;
  v154 = v186;
  v151((v152 + v153[28]), v185, v186);
  v156 = v187;
  sub_26EE13B88(v187, v152 + v153[32], &qword_2806C89B0, &qword_26EF41170);

  sub_26EE14578(v184, &qword_2806C89B0, &qword_26EF41170);
  v157 = *(v150 + 8);
  v157(v192, v154);
  sub_26EEA1F44(v191, type metadata accessor for CompatibilitySection);
  sub_26EEA1F44(v190, type metadata accessor for ExportDataSection);
  sub_26EEA1F44(v189, type metadata accessor for RecordingSection);
  sub_26EEA1F44(v188, type metadata accessor for VoiceInformationSection);
  sub_26EE14578(v156, &qword_2806C89B0, &qword_26EF41170);
  v157(v155, v154);
  sub_26EEA1F44(v194, type metadata accessor for CompatibilitySection);
  sub_26EEA1F44(v193, type metadata accessor for ExportDataSection);

  sub_26EEA1F44(v183, type metadata accessor for RecordingSection);
  return sub_26EEA1F44(v182, type metadata accessor for VoiceInformationSection);
}

uint64_t sub_26EE9EF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v24 = sub_26EEA652C();

  v34 = a1;
  sub_26EE61DE8(sub_26EEA2080, v24, v20);

  sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70638], v12);
  v25 = sub_26EF38DBC();
  v26 = *(*(v25 - 8) + 48);
  LODWORD(v24) = v26(v12, 1, v25);
  sub_26EE14578(v12, &qword_2806C7088, &unk_26EF3E330);
  if (v24 == 1)
  {
    sub_26EEA0C14(sub_26EEA2064, MEMORY[0x277D70640], v8);
    v27 = v26(v8, 1, v25);
    sub_26EE14578(v8, &qword_2806C7088, &unk_26EF3E330);
    if (v27 == 1)
    {
      v28 = MEMORY[0x277D70648];
    }

    else
    {
      v28 = MEMORY[0x277D70640];
    }
  }

  else
  {
    v28 = MEMORY[0x277D70638];
  }

  sub_26EEA0C14(sub_26EEA2064, v28, v15);
  v29 = *(a1 + 144);
  v30 = *(a1 + 152);

  return sub_26EE3F898(v20, v15, v29, v30, v33);
}

uint64_t sub_26EE9F314(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VoiceManagementView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_26EF3883C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26EF3915C();
  if (result)
  {
    v20 = sub_26EE27DAC();
    (*(v14 + 16))(v18, v20, v13);
    v21 = sub_26EF3881C();
    v22 = sub_26EF3B43C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = a2;
      v24 = v4;
      v25 = v23;
      *v23 = 0;
      _os_log_impl(&dword_26EE01000, v21, v22, "VoiceManagementView: Got db event, voices did change. Will refresh voices and models", v23, 2u);
      v26 = v25;
      v4 = v24;
      a2 = v33;
      MEMORY[0x2743842A0](v26, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    v27 = sub_26EF3B30C();
    (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
    sub_26EEA1EDC(a2, &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VoiceManagementView);
    sub_26EF3B2DC();
    v28 = sub_26EF3B2CC();
    v29 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    *(v30 + 16) = v28;
    *(v30 + 24) = v31;
    sub_26EEA1FA4(v7, v30 + v29, type metadata accessor for VoiceManagementView);
    sub_26EE2C388(0, 0, v12, &unk_26EF41160, v30);
  }

  return result;
}

uint64_t sub_26EE9F64C(uint64_t a1)
{
  v3 = *(type metadata accessor for VoiceManagementView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE9F314(a1, v4);
}

uint64_t sub_26EE9F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_26EF3883C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[10] = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  v4[11] = v10;
  v4[12] = v9;

  return MEMORY[0x2822009F8](sub_26EE9F7E8, v10, v9);
}

uint64_t sub_26EE9F7E8()
{
  v1 = *(v0 + 40);
  *(v0 + 104) = *(v1 + 32);
  *(v0 + 112) = *(v1 + 40);
  *(v0 + 152) = *(v1 + 48);
  *(v0 + 120) = type metadata accessor for VoiceRefreshViewModel(0);
  *(v0 + 128) = sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  *(v0 + 136) = sub_26EF3976C();
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_26EE9F904;

  return sub_26EEA69C4();
}

uint64_t sub_26EE9F904()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26EE9FA48, v5, v4);
}

uint64_t sub_26EE9FA48()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 152);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = *(v0 + 40);

  sub_26EF3976C();
  v9 = sub_26EEA652C();

  *(swift_task_alloc() + 16) = v8;
  sub_26EE61DE8(sub_26EEA2080, v9, v7);

  v10 = sub_26EF38AAC();
  LODWORD(v1) = (*(*(v10 - 8) + 48))(v7, 1, v10);
  sub_26EE14578(v7, &qword_2806C7080, &unk_26EF3DBF0);
  if (v1 == 1)
  {
    v12 = *(v0 + 56);
    v11 = *(v0 + 64);
    v13 = *(v0 + 48);
    v14 = sub_26EE27DAC();
    (*(v12 + 16))(v11, v14, v13);
    v15 = sub_26EF3881C();
    v16 = sub_26EF3B47C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26EE01000, v15, v16, "VoiceManagementView: Voice was deleted by other device or process. Dismissing view.", v17, 2u);
      MEMORY[0x2743842A0](v17, -1, -1);
    }

    v19 = *(v0 + 56);
    v18 = *(v0 + 64);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v18, v20);
    v23 = *(v21 + 56);
    v22 = *(v21 + 64);
    v24 = *(v21 + 72);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    sub_26EF3976C();
    VoiceBankingNavigationModel.dismissSheet()();

    v26 = *(v21 + 152);
    (*(v21 + 144))(v25);
  }

  else
  {
    v27 = *(v0 + 40);
    v28 = *(v27 + 24);
    *(v0 + 16) = *(v27 + 16);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 152);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    *(v0 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
    sub_26EF3AAFC();
    v34 = *(v0 + 32);
    v42 = *(type metadata accessor for VoiceManagementView() + 48);
    sub_26EF3976C();
    v35 = sub_26EEA6568();

    v36 = swift_task_alloc();
    *(v36 + 16) = v27;
    v37 = sub_26EE65474(sub_26EEA2064, v36, v35);

    (*(*v34 + 152))(v27 + v42, v37);
  }

  v39 = *(v0 + 64);
  v38 = *(v0 + 72);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_26EE9FDEC(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = sub_26EE27DAC();
  (*(v5 + 16))(v9, v11, v4);
  v12 = sub_26EF3881C();
  v13 = sub_26EF3B43C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_26EE01000, v12, v13, "VoiceManagementView: onChange presentVoiceRootView=%{BOOL}d. Will update timer.", v14, 8u);
    MEMORY[0x2743842A0](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  sub_26EEA7B10(v10 ^ 1);
}

uint64_t sub_26EE9FFD0(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for VoiceManagementView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26EE9FDEC(a1, v4);
}

uint64_t sub_26EEA0040()
{
  v1 = (type metadata accessor for VoiceManagementView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = *(v2 + 24);
  v12[0] = *(v2 + 16);
  v12[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  v4 = v12[5];
  v5 = v1[14];
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v9 = sub_26EEA6568();

  v12[2] = v2;
  v10 = sub_26EE65474(sub_26EEA2064, v12, v9);
  (*(*v4 + 152))(v2 + v5, v10);
}

unint64_t sub_26EEA01CC()
{
  result = qword_2806C8918;
  if (!qword_2806C8918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8908, &qword_26EF41090);
    sub_26EEA200C(&qword_2806C8920, MEMORY[0x277D705D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8918);
  }

  return result;
}

uint64_t sub_26EEA0280(uint64_t a1)
{
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EE27DAC();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceManagementView: Updating timer state to active", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  sub_26EEA7B10(1);

  v15 = *(a1 + 24);
  v23[2] = *(a1 + 16);
  v23[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8938, &qword_26EF410C0);
  sub_26EF3AAFC();
  v16 = v23[1];
  v17 = *(type metadata accessor for VoiceManagementView() + 48);
  sub_26EF3976C();
  v18 = sub_26EEA6568();

  MEMORY[0x28223BE20](v19, v20);
  v23[-2] = a1;
  v21 = sub_26EE65474(sub_26EEA1AA8, &v23[-4], v18);
  (*(*v16 + 152))(a1 + v17, v21);
}

uint64_t sub_26EEA0554(uint64_t a1)
{
  v2 = sub_26EF3883C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EE27DAC();
  (*(v3 + 16))(v7, v8, v2);
  v9 = sub_26EF3881C();
  v10 = sub_26EF3B47C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26EE01000, v9, v10, "VoiceManagementView: Updating timer state to inactive", v11, 2u);
    MEMORY[0x2743842A0](v11, -1, -1);
  }

  (*(v3 + 8))(v7, v2);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  sub_26EEA7B10(0);
}

uint64_t sub_26EEA0768()
{
  v1 = *(type metadata accessor for VoiceManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEA0280(v2);
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for VoiceManagementView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  v10 = *(v0 + v3 + 48);
  sub_26EE05CA8();
  v11 = *(v0 + v3 + 56);
  v12 = *(v0 + v3 + 64);
  v13 = *(v0 + v3 + 72);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + v3 + 80), *(v0 + v3 + 88), *(v0 + v3 + 96));
  v14 = *(v0 + v3 + 104);
  v15 = *(v0 + v3 + 112);
  v16 = *(v0 + v3 + 120);
  sub_26EE05CA8();
  v17 = *(v0 + v3 + 136);

  v18 = *(v0 + v3 + 152);

  v19 = v1[14];
  v20 = sub_26EF37EDC();
  (*(*(v20 - 8) + 8))(v0 + v3 + v19, v20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEA0908()
{
  v1 = *(type metadata accessor for VoiceManagementView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEA0554(v2);
}

unint64_t sub_26EEA0968()
{
  result = qword_2806C8928;
  if (!qword_2806C8928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B8, &qword_26EF41048);
    sub_26EEA09F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8928);
  }

  return result;
}

unint64_t sub_26EEA09F4()
{
  result = qword_2806C8930;
  if (!qword_2806C8930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B0, &qword_26EF41040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88A0, &qword_26EF41030);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8898, &qword_26EF41028);
    type metadata accessor for RootView();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8890, &qword_26EF41020);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8908, &qword_26EF41090);
    sub_26EE154C8(&qword_2806C8910, &qword_2806C8890, &qword_26EF41020);
    sub_26EEA01CC();
    swift_getOpaqueTypeConformance2();
    sub_26EEA200C(&qword_2806C7B40, type metadata accessor for RootView);
    swift_getOpaqueTypeConformance2();
    sub_26EE12538();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8930);
  }

  return result;
}

uint64_t sub_26EEA0C14@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v38 = a2;
  v5 = v3;
  v33 = a3;
  v6 = sub_26EF391EC();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v39 = &v33 - v12;
  v13 = sub_26EF38DBC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 32);
  v20 = *(v5 + 40);
  v21 = *(v5 + 48);
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF3976C();
  v22 = sub_26EEA6568();

  v42 = v5;
  result = sub_26EE65474(a1, v41, v22);
  v35 = *(result + 16);
  if (v35)
  {
    v24 = 0;
    v36 = v14 + 16;
    v37 = result;
    v25 = (v34 + 8);
    v34 = v14 + 8;
    while (v24 < *(result + 16))
    {
      (*(v14 + 16))(v18, result + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v24, v13);
      v26 = sub_26EF38D1C();
      v38(v26);
      sub_26EEA200C(&qword_2806C7A60, MEMORY[0x277D70650]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v45 == v43 && v46 == v44)
      {
        v32 = *v25;
        (*v25)(v40, v6);
        v32(v39, v6);

LABEL_10:

        v31 = v33;
        (*(v14 + 32))(v33, v18, v13);
        v30 = 0;
        return (*(v14 + 56))(v31, v30, 1, v13);
      }

      v27 = sub_26EF3B82C();
      v28 = v13;
      v29 = *v25;
      (*v25)(v40, v6);
      v29(v39, v6);
      v13 = v28;

      if (v27)
      {
        goto LABEL_10;
      }

      ++v24;
      (*v34)(v18, v28);
      result = v37;
      if (v35 == v24)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v30 = 1;
    v31 = v33;
    return (*(v14 + 56))(v31, v30, 1, v13);
  }

  return result;
}

uint64_t sub_26EEA103C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v8);
  v11 = *(type metadata accessor for VoiceManagementView() + 48);
  LOBYTE(a3) = sub_26EF37EAC();
  (*(v5 + 8))(v10, v4);
  return a3 & 1;
}

uint64_t sub_26EEA114C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF37EDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEA120C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37EDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEA12B0()
{
  sub_26EEA1414(319, &qword_2806C8950, type metadata accessor for VoiceBankingSession);
  if (v0 <= 0x3F)
  {
    sub_26EEA1414(319, &qword_2806C8958, type metadata accessor for VoiceBankingCompatibilityModel);
    if (v1 <= 0x3F)
    {
      sub_26EEA1468();
      if (v2 <= 0x3F)
      {
        sub_26EEA14FC();
        if (v3 <= 0x3F)
        {
          sub_26EEA1590();
          if (v4 <= 0x3F)
          {
            sub_26EEA1624();
            if (v5 <= 0x3F)
            {
              sub_26EE38E90();
              if (v6 <= 0x3F)
              {
                sub_26EE3FF38();
                if (v7 <= 0x3F)
                {
                  sub_26EF37EDC();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26EEA1414(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3AB2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26EEA1468()
{
  if (!qword_2806C8960)
  {
    type metadata accessor for VoiceRefreshViewModel(255);
    sub_26EEA200C(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8960);
    }
  }
}

void sub_26EEA14FC()
{
  if (!qword_2806C8968)
  {
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEA200C(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8968);
    }
  }
}

void sub_26EEA1590()
{
  if (!qword_2806C8970)
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEA200C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8970);
    }
  }
}

void sub_26EEA1624()
{
  if (!qword_2806C8978)
  {
    type metadata accessor for VoiceBankingBatteryMonitor();
    sub_26EEA200C(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8978);
    }
  }
}

unint64_t sub_26EEA16BC()
{
  result = qword_2806C8980;
  if (!qword_2806C8980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8948, &qword_26EF410C8);
    sub_26EEA1774();
    sub_26EE154C8(&qword_2806C7D78, &qword_2806C7D80, &qword_26EF41150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8980);
  }

  return result;
}

unint64_t sub_26EEA1774()
{
  result = qword_2806C8988;
  if (!qword_2806C8988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88E0, &qword_26EF41070);
    sub_26EEA182C();
    sub_26EE154C8(&qword_2806C89A0, &qword_2806C89A8, &qword_26EF41148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8988);
  }

  return result;
}

unint64_t sub_26EEA182C()
{
  result = qword_2806C8990;
  if (!qword_2806C8990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88D8, &qword_26EF41068);
    sub_26EEA18E4();
    sub_26EE154C8(&qword_2806C7C80, &qword_2806C7C88, &qword_26EF3F410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8990);
  }

  return result;
}

unint64_t sub_26EEA18E4()
{
  result = qword_2806C8998;
  if (!qword_2806C8998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88D0, &qword_26EF41060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88C0, &qword_26EF41050);
    type metadata accessor for VoiceBankingCompatibilityModel();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C88B8, &qword_26EF41048);
    type metadata accessor for VoiceBankingSession();
    sub_26EEA0968();
    sub_26EEA200C(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    swift_getOpaqueTypeConformance2();
    sub_26EEA200C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
    swift_getOpaqueTypeConformance2();
    sub_26EE154C8(&qword_2806C7C70, &qword_2806C7C78, &qword_26EF3F408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8998);
  }

  return result;
}

size_t sub_26EEA1AEC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CD0, &unk_26EF3F440);
  v10 = *(sub_26EF38DBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_26EF38DBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_26EEA1CC4()
{
  v1 = (type metadata accessor for VoiceManagementView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);
  v10 = *(v0 + v3 + 40);
  v11 = *(v0 + v3 + 48);
  sub_26EE05CA8();
  v12 = *(v0 + v3 + 56);
  v13 = *(v0 + v3 + 64);
  v14 = *(v0 + v3 + 72);
  sub_26EE05CA8();
  sub_26EE60C70(*(v0 + v3 + 80), *(v0 + v3 + 88), *(v0 + v3 + 96));
  v15 = *(v0 + v3 + 104);
  v16 = *(v0 + v3 + 112);
  v17 = *(v0 + v3 + 120);
  sub_26EE05CA8();
  v18 = *(v0 + v3 + 136);

  v19 = *(v0 + v3 + 152);

  v20 = v1[14];
  v21 = sub_26EF37EDC();
  (*(*(v21 - 8) + 8))(v0 + v3 + v20, v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEA1E0C()
{
  v2 = *(type metadata accessor for VoiceManagementView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EE9F6BC(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEA1EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EEA1F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EEA1FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EEA200C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ExportDataSection()
{
  result = qword_2806CD1F0;
  if (!qword_2806CD1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEA20E8(uint64_t a1)
{
  v2 = type metadata accessor for ExportDataSection();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89D8, qword_26EF411A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19[-v10];
  *v11 = sub_26EF39E4C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A08, &qword_26EF41220);
  sub_26EEA2340(&v11[*(v12 + 44)]);
  v13 = a1 + *(v3 + 36);
  v14 = *v13;
  v15 = *(v13 + 8);
  v20 = v14;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  v20 = v19[15];
  sub_26EEA5048(a1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_26EEA5294(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_26EE154C8(&qword_2806C89E0, &qword_2806C89D8, qword_26EF411A0);
  sub_26EF3A8FC();

  return sub_26EE14578(v11, &qword_2806C89D8, qword_26EF411A0);
}

uint64_t sub_26EEA2340@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A10, &qword_26EF41228);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v22 - v18;
  sub_26EEA2530(&v22 - v18);
  sub_26EEA28A8(v10);
  sub_26EE13B88(v19, v16, &qword_2806C8A18, &qword_26EF41230);
  sub_26EE13B88(v10, v7, &qword_2806C8A10, &qword_26EF41228);
  sub_26EE13B88(v16, a1, &qword_2806C8A18, &qword_26EF41230);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A20, &qword_26EF41238);
  sub_26EE13B88(v7, a1 + *(v20 + 48), &qword_2806C8A10, &qword_26EF41228);
  sub_26EE14578(v10, &qword_2806C8A10, &qword_26EF41228);
  sub_26EE14578(v19, &qword_2806C8A18, &qword_26EF41230);
  sub_26EE14578(v7, &qword_2806C8A10, &qword_26EF41228);
  return sub_26EE14578(v16, &qword_2806C8A18, &qword_26EF41230);
}

uint64_t sub_26EEA2530@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_26EF3A2BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v29 - v18;
  v20 = *(v1 + 24);
  v31 = *(v1 + 16);
  v32 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v30 == 1)
  {
    sub_26EF397DC();
    sub_26EF3A2AC();
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
    sub_26EEA5A08(&qword_2806C7A78, MEMORY[0x277CDE330]);
    sub_26EF3A63C();
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v13, v8);
    v21 = &v19[*(v14 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
    v23 = *MEMORY[0x277CDF440];
    v24 = sub_26EF396EC();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    v25 = v29;
    sub_26EEA5A50(v19, v29);
    v26 = 0;
    v27 = v25;
  }

  else
  {
    v26 = 1;
    v27 = v29;
  }

  return (*(v15 + 56))(v27, v26, 1, v14);
}

uint64_t sub_26EEA28A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v102 = v84 - v6;
  v7 = type metadata accessor for ExportDataSection();
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v93 = v10;
  v94 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v103 = v84 - v14;
  v15 = sub_26EF3873C();
  v96 = *(v15 - 8);
  v97 = v15;
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v95 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101, v20);
  v100 = v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A28, &qword_26EF41240);
  v104 = *(v22 - 8);
  v23 = *(v104 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v99 = v84 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v30 = v84 - v29;
  v31 = sub_26EF38AAC();
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v91 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v37 = v84 - v36;
  v98 = v7;
  v38 = *(v7 + 32);
  v40 = v39;
  v90 = v1;
  sub_26EE13B88(v1 + v38, v30, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v40 + 48))(v30, 1, v31) == 1)
  {
    sub_26EE14578(v30, &qword_2806C7080, &unk_26EF3DBF0);
    v41 = 1;
    v42 = v104;
  }

  else
  {
    v88 = v22;
    v89 = a1;
    v85 = *(v40 + 32);
    v85(v37, v30, v31);
    v43 = sub_26EE17094();
    v44._object = 0x800000026EF46140;
    v45 = v43 & 1;
    v44._countAndFlagsBits = 0xD000000000000014;
    v46 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v44, v45, 0);
    v84[3] = v46._countAndFlagsBits;
    v84[2] = v46._object;
    v47 = sub_26EE17094();
    v48._countAndFlagsBits = 0xD000000000000015;
    v48._object = 0x800000026EF46120;
    v49 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v48, v47 & 1, 0);
    v84[1] = v49._countAndFlagsBits;
    v84[0] = v49._object;
    v50 = sub_26EF3961C();
    (*(*(v50 - 8) + 56))(v103, 1, 1, v50);
    v51 = v90;
    v52 = v94;
    sub_26EEA5048(v90, v94);
    v87 = v40;
    v53 = *(v40 + 16);
    v54 = v91;
    v86 = v37;
    v53(v91, v37, v31);
    v55 = (*(v92 + 80) + 16) & ~*(v92 + 80);
    v56 = (v93 + *(v40 + 80) + v55) & ~*(v40 + 80);
    v57 = swift_allocObject();
    v58 = v52;
    v59 = 1;
    sub_26EEA5294(v58, v57 + v55);
    v85((v57 + v56), v54, v31);
    v60 = v95;
    sub_26EF3874C();
    v61 = v51;
    v62 = *(v51 + 24);
    LOBYTE(v106) = *(v51 + 16);
    v107 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AAFC();
    v63 = v98;
    v64 = v31;
    if ((v105 & 1) == 0)
    {
      v65 = v51 + *(v98 + 28);
      v66 = *v65;
      v67 = *(v65 + 8);
      LOBYTE(v106) = v66;
      v107 = v67;
      sub_26EF3AAFC();
      v59 = v105;
    }

    KeyPath = swift_getKeyPath();
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    v70 = v100;
    (*(v96 + 32))(v100, v60, v97);
    v71 = v101;
    v72 = (v70 + *(v101 + 36));
    *v72 = KeyPath;
    v72[1] = sub_26EE274EC;
    v72[2] = v69;
    v73 = *(v63 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
    v74 = v102;
    sub_26EF3AAFC();
    v75 = sub_26EF37DCC();
    v76 = (*(*(v75 - 8) + 48))(v74, 1, v75) != 1;
    v77 = sub_26EE14578(v74, &qword_2806C6840, &qword_26EF3CD50);
    MEMORY[0x28223BE20](v77, v78);
    v84[-2] = v61;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A30, &qword_26EF41278);
    v80 = sub_26EE63944();
    v106 = v71;
    v107 = v80;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v82 = v99;
    sub_26EE82FB8(v76, sub_26EEA5684, &v84[-4], v71, v79, v80, OpaqueTypeConformance2, v99);
    sub_26EE14578(v70, &qword_2806C7C08, &qword_26EF3F0C8);
    (*(v87 + 8))(v86, v64);
    v42 = v104;
    v22 = v88;
    a1 = v89;
    (*(v104 + 32))(v89, v82, v88);
    v41 = 0;
  }

  return (*(v42 + 56))(a1, v41, 1, v22);
}

uint64_t sub_26EEA3134()
{
  v1 = v0;
  v2 = sub_26EF38A2C();
  v3 = *(v2 - 8);
  v60 = v2;
  v61 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF3883C();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EF39DDC();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26EF37DCC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v52 - v26;
  v28 = *(type metadata accessor for ExportDataSection() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  v29 = v1;
  sub_26EF3AAFC();
  if ((*(v18 + 48))(v27, 1, v17))
  {
    return sub_26EE14578(v27, &qword_2806C6840, &qword_26EF3CD50);
  }

  v53 = v16;
  v54 = v12;
  v31 = v60;
  v55 = v11;
  (*(v18 + 16))(v22, v27, v17);
  sub_26EE14578(v27, &qword_2806C6840, &qword_26EF3CD50);
  v32 = sub_26EF37D9C();
  v34 = v33;
  (*(v18 + 8))(v22, v17);
  v35 = *v29;
  if (*(v29 + 8) == 1)
  {
    v36 = v35;
  }

  else
  {
    v37 = *v29;

    sub_26EF3B46C();
    v38 = sub_26EF3A36C();
    sub_26EF3880C();

    v39 = v53;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v35, 0);
    (*(v57 + 8))(v39, v54);
    v36 = v62;
  }

  v40 = v31;
  v41 = v61;
  v42._countAndFlagsBits = v32;
  v42._object = v34;
  VoiceBankingSession.deleteTrainingDataArchive(atPath:)(v42);
  if (v43)
  {

    v44 = v55;
    sub_26EF3934C();
    v45 = v43;
    v46 = sub_26EF3881C();
    v47 = sub_26EF3B45C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v56;
      (*(v41 + 104))(v56, *MEMORY[0x277D704D8], v40);
      sub_26EF38A4C();
      sub_26EEA5A08(&unk_2806C9CD0, MEMORY[0x277D70518]);
      swift_allocError();
      sub_26EF389BC();
      (*(v41 + 8))(v50, v40);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_26EE01000, v46, v47, "%@", v48, 0xCu);
      sub_26EE14578(v49, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v49, -1, -1);
      MEMORY[0x2743842A0](v48, -1, -1);
    }

    else
    {
    }

    return (*(v58 + 8))(v44, v59);
  }

  else
  {
  }
}

uint64_t sub_26EEA371C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26EE17094();
  v3._object = 0x800000026EF46120;
  v4 = v2 & 1;
  v3._countAndFlagsBits = 0xD000000000000015;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v4, 0);
  sub_26EE12538();
  result = sub_26EF3A5DC();
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7 & 1;
  a1[3] = v8;
  return result;
}

uint64_t sub_26EEA379C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ExportDataSection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_26EF3B30C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_26EEA5048(a1, v13);
  (*(v5 + 16))(v8, a2, v4);
  sub_26EF3B2DC();
  v20 = sub_26EF3B2CC();
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_26EEA5294(v13, v23 + v21);
  (*(v5 + 32))(v23 + v22, v8, v4);
  sub_26EE2C388(0, 0, v18, &unk_26EF41288, v23);
}

uint64_t sub_26EEA3A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_26EF38A2C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v5[14] = v9;
  v10 = *(v9 - 8);
  v5[15] = v10;
  v11 = *(v10 + 64) + 15;
  v5[16] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v5[17] = v12;
  v13 = *(v12 - 8);
  v5[18] = v13;
  v14 = *(v13 + 64) + 15;
  v5[19] = swift_task_alloc();
  v15 = sub_26EF39DDC();
  v5[20] = v15;
  v16 = *(v15 - 8);
  v5[21] = v16;
  v17 = *(v16 + 64) + 15;
  v5[22] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[26] = sub_26EF3B2CC();
  v20 = sub_26EF3B29C();
  v5[27] = v20;
  v5[28] = v19;

  return MEMORY[0x2822009F8](sub_26EEA3C88, v20, v19);
}

uint64_t sub_26EEA3C88()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  *(v0 + 275) = v2;
  v3 = *(v1 + 24);
  *(v0 + 16) = v2;
  *(v0 + 232) = v3;
  *(v0 + 24) = v3;
  *(v0 + 272) = 1;

  *(v0 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v4 = *v1;
  if (*(v1 + 8) == 1)
  {
    v5 = v4;
  }

  else
  {
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v4, 0);
    (*(v7 + 8))(v6, v8);
    v5 = *(v0 + 64);
  }

  *(v0 + 248) = v5;
  v10 = *(v0 + 152);
  v11 = *(v0 + 80);
  MEMORY[0x274380B50]();
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  *v12 = v0;
  v12[1] = sub_26EEA3E4C;
  v13 = *(v0 + 200);
  v14 = *(v0 + 152);

  return VoiceBankingSession.exportTrainingData(forVoiceID:)(v13, v14);
}

uint64_t sub_26EEA3E4C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v7 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 264) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 224);
  v10 = *(v2 + 216);
  if (v0)
  {
    v11 = sub_26EEA424C;
  }

  else
  {
    v11 = sub_26EEA4004;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EEA4004()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 72);

  v6 = sub_26EF37DCC();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v25 = type metadata accessor for ExportDataSection();
  v8 = *(v25 + 24);
  sub_26EE13B88(v2, v4, &qword_2806C6840, &qword_26EF3CD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  sub_26EF3AB0C();
  sub_26EE14578(v2, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EF3AAFC();
  v9 = (*(v7 + 48))(v3, 1, v6);
  sub_26EE14578(v3, &qword_2806C6840, &qword_26EF3CD50);
  if (v9 != 1)
  {
    v10 = (*(v0 + 72) + *(v25 + 28));
    v11 = *v10;
    v12 = *(v10 + 1);
    *(v0 + 48) = v11;
    v13 = *(v0 + 240);
    *(v0 + 56) = v12;
    *(v0 + 274) = 1;
    sub_26EF3AB0C();
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v19 = *(v0 + 176);
  v18 = *(v0 + 184);
  v20 = *(v0 + 152);
  v21 = *(v0 + 128);
  v22 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 275);
  *(v0 + 40) = v15;
  *(v0 + 273) = 0;
  sub_26EF3AB0C();

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_26EEA424C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);

  sub_26EF3934C();
  v4 = v1;
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 264);
  if (v7)
  {
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EEA5A08(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v5, v6, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 152);
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);
  *(v0 + 32) = *(v0 + 275);
  *(v0 + 40) = v16;
  *(v0 + 273) = 0;
  sub_26EF3AB0C();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26EEA4500(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v16[-v6];
  v8 = type metadata accessor for ExportDataSection();
  v9 = (a2 + *(v8 + 28));
  v10 = *v9;
  v11 = *(v9 + 1);
  v16[32] = v10;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  v12 = *(v8 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
  sub_26EF3AAFC();
  v13 = sub_26EF37DCC();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE63944();
    sub_26EF3A6EC();

    return (*(v14 + 8))(v7, v13);
  }

  return result;
}

uint64_t sub_26EEA46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21[-v11];
  type metadata accessor for VoiceBankingSession();
  sub_26EEA5A08(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a2 = sub_26EF3973C();
  *(a2 + 8) = v13 & 1;
  v22 = 0;
  sub_26EF3AAEC();
  v14 = v24;
  *(a2 + 16) = v23;
  *(a2 + 24) = v14;
  v15 = type metadata accessor for ExportDataSection();
  v16 = v15[6];
  v17 = sub_26EF37DCC();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  sub_26EE13B88(v12, v9, &qword_2806C6840, &qword_26EF3CD50);
  sub_26EF3AAEC();
  sub_26EE14578(v12, &qword_2806C6840, &qword_26EF3CD50);
  v18 = a2 + v15[7];
  v22 = 0;
  sub_26EF3AAEC();
  v19 = v24;
  *v18 = v23;
  *(v18 + 8) = v19;
  return sub_26EEA4904(a1, a2 + v15[8]);
}

uint64_t sub_26EEA4904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA4990()
{
  v1 = sub_26EF387DC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  (*(v5 + 104))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CE76B8]);
  v11 = v0;
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89D0, &unk_26EF41190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C89D8, qword_26EF411A0);
  v7 = sub_26EE154C8(&qword_2806C89E0, &qword_2806C89D8, qword_26EF411A0);
  v12 = v6;
  v13 = MEMORY[0x277D839B0];
  v14 = v7;
  v15 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_26EE3C584();
  return sub_26EF3878C();
}

uint64_t sub_26EEA4B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EEA4CE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EEA4E24()
{
  sub_26EEA4FA0(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE38E90();
    if (v1 <= 0x3F)
    {
      sub_26EEA4F3C();
      if (v2 <= 0x3F)
      {
        sub_26EEA4FA0(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26EEA4F3C()
{
  if (!qword_2806C89F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6840, &qword_26EF3CD50);
    v0 = sub_26EF3AB2C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C89F0);
    }
  }
}

void sub_26EEA4FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EEA5048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDataSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA50AC()
{
  v1 = type metadata accessor for ExportDataSection();
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v0 + v4 + 24);

  v7 = v0 + v4 + v1[6];
  v8 = sub_26EF37DCC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8) + 28));

  v11 = *(v5 + v1[7] + 8);

  v12 = v1[8];
  v13 = sub_26EF38AAC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EEA5294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportDataSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA52F8(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for ExportDataSection();
  v7 = *(v4 - 8);
  result = v4 - 8;
  v6 = v7;
  if ((*a2 & 1) == 0)
  {
    v8 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
    return sub_26EEA3134();
  }

  return result;
}

uint64_t sub_26EEA5360()
{
  v1 = type metadata accessor for ExportDataSection();
  v2 = *(*(v1 - 1) + 80);
  v19 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = *(v4 + 64);
  v6 = v0 + ((v2 + 16) & ~v2);
  sub_26EE05C9C(*v6, *(v6 + 8));
  v7 = *(v6 + 24);

  v8 = v6 + v1[6];
  v9 = sub_26EF37DCC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8) + 28));

  v12 = *(v6 + v1[7] + 8);

  v13 = v1[8];
  v14 = (*(v4 + 48))(v6 + v13, 1, v3);
  v15 = *(v4 + 8);
  if (!v14)
  {
    v15(v6 + v13, v3);
  }

  v16 = (((v2 + 16) & ~v2) + v19 + v5) & ~v5;
  v15(v0 + v16, v3);

  return MEMORY[0x2821FE8E8](v0, v16 + v18, v2 | v5 | 7);
}

uint64_t sub_26EEA55A8()
{
  v1 = *(type metadata accessor for ExportDataSection() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26EF38AAC() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EEA379C(v0 + v2, v5);
}

uint64_t sub_26EEA568C()
{
  v1 = type metadata accessor for ExportDataSection();
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v19 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = v0 + ((v2 + 32) & ~v2);
  sub_26EE05C9C(*v7, *(v7 + 8));
  v8 = *(v7 + 24);

  v9 = v7 + v1[6];
  v10 = sub_26EF37DCC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C89E8, &qword_26EF411F8) + 28));

  v13 = *(v7 + v1[7] + 8);

  v14 = v1[8];
  v15 = (*(v4 + 48))(v7 + v14, 1, v3);
  v16 = *(v4 + 8);
  if (!v15)
  {
    v16(v7 + v14, v3);
  }

  v17 = (((v2 + 32) & ~v2) + v20 + v5) & ~v5;
  v16(v0 + v17, v3);

  return MEMORY[0x2821FE8E8](v0, v17 + v19, v2 | v5 | 7);
}

uint64_t sub_26EEA58DC()
{
  v2 = *(type metadata accessor for ExportDataSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EEA3A30(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EEA5A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEA5A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEA5AE8()
{
  v0 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) + 20);
  result = sub_26EF37F2C();
  if (!v2)
  {
    return sub_26EF37EFC();
  }

  return result;
}

uint64_t sub_26EEA5B30(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    v24 = 0;
    return v24 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v24 = 1;
    return v24 & 1;
  }

  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v20 = (v18 - 8);
  v27 = *(v18 + 56);
  v28 = v19;
  while (1)
  {
    v21 = v28;
    result = (v28)(v13, v16, v4);
    if (!v14)
    {
      break;
    }

    v23 = v18;
    v21(v10, v17, v4);
    sub_26EEA5D44(&qword_2806C8A80, MEMORY[0x277D70530]);
    v24 = sub_26EF3B0AC();
    v25 = *v20;
    (*v20)(v10, v4);
    v25(v13, v4);
    if (v24)
    {
      v17 += v27;
      v16 += v27;
      v26 = v14-- == 1;
      v18 = v23;
      if (!v26)
      {
        continue;
      }
    }

    return v24 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EEA5D44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEA5D8C()
{
  v1 = sub_26EF38AAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3B87C();
  v16 = v0;
  v7 = *v0;
  MEMORY[0x274383950](*(*v0 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v11 = *(v2 + 16);
    v9 = v2 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v6, v12, v1);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530]);
      sub_26EF3B05C();
      (*(v9 - 8))(v6, v1);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  v14 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) + 20);
  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788]);
  sub_26EF3B05C();
  return sub_26EF3B8CC();
}