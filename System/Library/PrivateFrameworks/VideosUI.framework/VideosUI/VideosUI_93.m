uint64_t sub_1E3DD3198(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  swift_bridgeObjectRetain_n();
  v136 = a5;
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v128 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v107 = v9 + 16;
      v106 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v106 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v108 = *a3;
        if (!*a3)
        {
          goto LABEL_146;
        }

        v109 = &v9[16 * v106];
        v110 = *v109;
        v111 = v107;
        v112 = &v107[16 * v106];
        v113 = *(v112 + 1);
        v114 = (v108 + 8 * *v109);
        v115 = (v108 + 8 * *v112);
        v135 = (v108 + 8 * v113);
        v9 = v136;

        sub_1E3DD399C(v114, v115, v135, v128, v136);
        if (v130)
        {
          break;
        }

        if (v113 < v110)
        {
          goto LABEL_134;
        }

        if (v106 - 2 >= *v111)
        {
          goto LABEL_135;
        }

        v107 = v111;
        *v109 = v110;
        *(v109 + 1) = v113;
        v116 = *v111 - v106;
        if (*v111 < v106)
        {
          goto LABEL_136;
        }

        v106 = *v111 - 1;
        memmove(v112, v112 + 16, 16 * v116);
        *v111 = v106;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_143:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_108;
  }

  v118 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_31;
    }

    v128 = v7;
    v12 = *a3;
    v131 = v8 + 1;
    v13 = *(*a3 + 8 * v8);
    v14 = *(*(*a3 + 8 * v11) + 32);

    v15 = sub_1E3DD2E14(v14, a5);
    v122 = v9;
    if (v16)
    {

      v125 = 0;
    }

    else
    {
      v17 = v15;
      v18 = sub_1E3DD2E14(*(v13 + 32), a5);
      v20 = v19;

      v21 = v17 < v18;
      a5 = v136;
      v22 = v21;
      if (v20)
      {
        v22 = 0;
      }

      v125 = v22;
    }

    v119 = v10;
    v23 = 8 * v10;
    v24 = v12 + 8 * v10 + 16;
    v9 = (v23 + 8);
    v25 = v131;
    v26 = v128;
    while (1)
    {
      v27 = v25 + 1;
      if (v25 + 1 >= v26)
      {
        break;
      }

      v132 = v25;
      v28 = *(v24 - 8);
      v29 = *(*v24 + 32);

      v30 = sub_1E3DD2E14(v29, a5);
      if (v31)
      {

LABEL_17:
        a5 = v136;
        v25 = v132;
        v26 = v128;
        if (v125)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }

      v32 = v30;
      v33 = sub_1E3DD2E14(*(v28 + 32), a5);
      v35 = v34;

      if (v35)
      {
        goto LABEL_17;
      }

      v36 = v32 >= v33;
      a5 = v136;
      v25 = v132;
      v26 = v128;
      if (((v125 ^ v36) & 1) == 0)
      {
        break;
      }

LABEL_20:
      v24 += 8;
      v9 += 8;
      v25 = v27;
    }

    if (!v125)
    {
      v11 = v27;
      v9 = v122;
      v10 = v119;
      goto LABEL_31;
    }

LABEL_22:
    v37 = v25 + 1;
    v10 = v119;
    if (v25 + 1 < v119)
    {
      goto LABEL_140;
    }

    if (v119 < v37)
    {
      v38 = v119;
      do
      {
        if (v38 != v25)
        {
          v39 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v40 = *(v39 + v23);
          *(v39 + v23) = *&v9[v39];
          *&v9[v39] = v40;
        }

        ++v38;
        v9 -= 8;
        v23 += 8;
        v21 = v38 < v25--;
      }

      while (v21);
    }

    v11 = v37;
    v9 = v122;
LABEL_31:
    v41 = a3[1];
    if (v11 >= v41)
    {
      goto LABEL_52;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_139;
    }

    if (v11 - v10 >= v118)
    {
LABEL_52:
      if (v11 < v10)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E37FFF70(0, *(v9 + 2) + 1, 1, v9);
      }

      v59 = *(v9 + 2);
      v58 = *(v9 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v9 = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v9);
      }

      *(v9 + 2) = v60;
      v61 = v9 + 32;
      v62 = &v9[16 * v59 + 32];
      *v62 = v10;
      *(v62 + 1) = v11;
      v128 = *a1;
      if (!*a1)
      {
        goto LABEL_148;
      }

      v134 = v11;
      if (!v59)
      {
LABEL_102:
        v7 = a3[1];
        v8 = v134;
        if (v134 >= v7)
        {
          goto LABEL_106;
        }

        continue;
      }

      v127 = v9 + 32;
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v9[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_73:
          if (v69)
          {
            goto LABEL_125;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_128;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_131;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_133;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v60 < 2)
        {
          goto LABEL_127;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_88:
        if (v84)
        {
          goto LABEL_130;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v91 < v83)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_142;
        }

        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_145;
        }

        v96 = v9;
        v97 = &v61[16 * v63 - 16];
        v9 = *v97;
        v98 = v63;
        v99 = &v61[16 * v63];
        v100 = *(v99 + 1);
        v101 = (v95 + 8 * *v97);
        v102 = (v95 + 8 * *v99);
        v103 = (v95 + 8 * v100);

        v104 = v103;
        a5 = v136;
        sub_1E3DD399C(v101, v102, v104, v128, v136);
        if (v130)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v100 < v9)
        {
          goto LABEL_120;
        }

        v105 = *(v96 + 2);
        if (v98 > v105)
        {
          goto LABEL_121;
        }

        *v97 = v9;
        *(v97 + 1) = v100;
        if (v98 >= v105)
        {
          goto LABEL_122;
        }

        v60 = v105 - 1;
        memmove(v99, v99 + 16, 16 * (v105 - 1 - v98));
        v9 = v96;
        *(v96 + 2) = v105 - 1;
        v61 = v127;
        if (v105 <= 2)
        {
          goto LABEL_102;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_123;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_124;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_126;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_129;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_137;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

    break;
  }

  v42 = v10 + v118;
  if (__OFADD__(v10, v118))
  {
    goto LABEL_141;
  }

  if (v42 >= v41)
  {
    v42 = a3[1];
  }

  if (v42 < v10)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v11 == v42)
  {
    goto LABEL_52;
  }

  v123 = v9;
  v126 = v42;
  v43 = *a3;
  v44 = (*a3 + 8 * v11 - 8);
  v120 = v10;
  v45 = v10 - v11;
LABEL_40:
  v133 = v11;
  v46 = *(v43 + 8 * v11);
  v47 = v45;
  v128 = v44;
  while (1)
  {
    v48 = *v44;
    v49 = *(v46 + 32);

    v50 = sub_1E3DD2E14(v49, a5);
    if (v51)
    {

      goto LABEL_50;
    }

    v52 = v50;
    v53 = sub_1E3DD2E14(*(v48 + 32), a5);
    v55 = v54;

    if ((v55 & 1) != 0 || v52 >= v53)
    {
      a5 = v136;
LABEL_50:
      v11 = v133 + 1;
      v44 = v128 + 8;
      --v45;
      if (v133 + 1 == v126)
      {
        v11 = v126;
        v9 = v123;
        v10 = v120;
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    a5 = v136;
    if (!v43)
    {
      break;
    }

    v56 = *v44;
    v46 = *(v44 + 1);
    *v44 = v46;
    *(v44 + 1) = v56;
    v44 -= 8;
    if (__CFADD__(v47++, 1))
    {
      goto LABEL_50;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_145:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_146:

  __break(1u);
LABEL_147:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_148:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_149:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E3DD399C(char *__src, char *__dst, char *a3, char *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = (__dst - __src) / 8;
  v10 = (a3 - __dst) / 8;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v12 = &v5[8 * v9];
    v13 = a5;
    v49 = v6;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_43;
      }

      v15 = v12;
      v16 = *v5;
      v17 = *(*v7 + 32);

      v18 = sub_1E3DD2E14(v17, v13);
      if (v19)
      {
        break;
      }

      v22 = v18;
      v23 = sub_1E3DD2E14(*(v16 + 32), v13);
      v25 = v24;

      if ((v25 & 1) != 0 || v22 >= v23)
      {
        goto LABEL_14;
      }

      v20 = v7;
      v21 = v8 == v7;
      v7 += 8;
LABEL_18:
      v6 = v49;
      if (!v21)
      {
        *v8 = *v20;
      }

      v8 += 8;
      v13 = a5;
      v12 = v15;
    }

LABEL_14:
    v20 = v5;
    v21 = v8 == v5;
    v5 += 8;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[8 * v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  v12 = &v5[8 * v10];
  v27 = a5;
  v47 = v5;
  v48 = v8;
LABEL_27:
  v28 = v7 - 8;
  v29 = v6 - 8;
  v50 = v7;
  while (v12 > v5 && v7 > v8)
  {
    v31 = v29;
    v32 = v12;
    v33 = v12 - 8;
    v34 = v28;
    v35 = *v28;
    v36 = *(*(v12 - 1) + 32);

    v37 = sub_1E3DD2E14(v36, v27);
    if (v38)
    {
    }

    else
    {
      v39 = v37;
      v40 = sub_1E3DD2E14(*(v35 + 32), v27);
      v42 = v41;

      if ((v42 & 1) == 0 && v39 < v40)
      {
        v6 = v31;
        v43 = v34;
        v7 = v34;
        v27 = a5;
        v12 = v32;
        v5 = v47;
        v8 = v48;
        if (v31 + 8 != v50)
        {
          *v31 = *v43;
          v7 = v43;
        }

        goto LABEL_27;
      }
    }

    v28 = v34;
    if (v32 != v31 + 8)
    {
      *v31 = *v33;
    }

    v29 = v31 - 8;
    v12 = v33;
    v27 = a5;
    v8 = v48;
    v7 = v50;
    v5 = v47;
  }

LABEL_43:
  v44 = (v12 - v5) / 8;
  if (v7 != v5 || v7 >= &v5[8 * v44])
  {
    memmove(v7, v5, 8 * v44);
  }

  return 1;
}

uint64_t sub_1E3DD3C74(uint64_t result, uint64_t a2, unint64_t a3)
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
        type metadata accessor for LibMenuItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3DD3E40();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33C60);
          v9 = sub_1E3797EB0(v12, i, a3);
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

uint64_t sub_1E3DD3DD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v6;
    if (!v6)
    {
      return v1(result);
    }
  }

  return result;
}

unint64_t sub_1E3DD3E40()
{
  result = qword_1ECF38E58;
  if (!qword_1ECF38E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38E58);
  }

  return result;
}

uint64_t sub_1E3DD3ECC(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 402) = a1;
  return result;
}

uint64_t sub_1E3DD3F2C(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v2 + 408) = a1;
  *(v2 + 416) = a2 & 1;
  return result;
}

uint64_t sub_1E3DD3F9C(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 417) = a1;
  return result;
}

uint64_t sub_1E3DD4024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 402) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = 1793;

  v7 = sub_1E40B19D4(a1, a2, a3);
  if (v7)
  {
    OUTLINED_FUNCTION_111();
    v9 = *(v8 + 392);

    if (v9(v10))
    {
      OUTLINED_FUNCTION_26_0();
      v12 = (*(v11 + 984))();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 1;
    }

    OUTLINED_FUNCTION_14_0();
    *(v7 + 408) = v12;
    *(v7 + 416) = v14 & 1;
  }

  return v7;
}

uint64_t sub_1E3DD4150(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 1632))() != 7)
  {
    sub_1E37F99D4();
    if (sub_1E4205E84())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_111();
  (*(v4 + 1664))(a1);
  return 1;
}

uint64_t sub_1E3DD4220(char a1)
{
  v2 = v1;
  if (sub_1E373F6E0())
  {
    if ((sub_1E3A24FDC(a1) & 1) == 0)
    {
      v31 = OUTLINED_FUNCTION_0_244();
      v1[402] = 0;
      v32 = *(*v1 + 392);
      v33 = v32(v31);
      if (v33)
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v1);
        OUTLINED_FUNCTION_1_223();
        v42 = OUTLINED_FUNCTION_8_149(v34, v35, v36, v37, v38, v39, v40, v41, v79, v80, v81, v82, v83, v84, v85);
        v43(v42);
      }

      if (v32(v33))
      {
        OUTLINED_FUNCTION_111();
        (*(v44 + 1608))();
        OUTLINED_FUNCTION_12_6();
        v10 = *(v45 + 992);
        v12 = v46 & 1;
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    goto LABEL_3;
  }

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_111();
    (*(v13 + 1608))();
    if ((v14 & 1) == 0)
    {
      v62 = OUTLINED_FUNCTION_0_244();
      v1[402] = 1;
      if (!(*(*v1 + 392))(v62))
      {
        goto LABEL_27;
      }

      v63 = *(MEMORY[0x1E69DDCE0] + 16);
      v85 = *MEMORY[0x1E69DDCE0];
      v86 = v63;
      v87 = 0;
      OUTLINED_FUNCTION_26_0();
      v72 = OUTLINED_FUNCTION_8_149(v64, v65, v66, v67, v68, v69, v70, v71, v79, v80, v81, v82, v83, v84, v85);
      v73(v72);
      goto LABEL_26;
    }

    if ((sub_1E3A24FDC(a1) & 1) == 0)
    {
      v15 = OUTLINED_FUNCTION_0_244();
      v1[402] = 2;
      v16 = *(*v1 + 392);
      if ((v16)(v15))
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v1);
        OUTLINED_FUNCTION_1_223();
        v25 = OUTLINED_FUNCTION_8_149(v17, v18, v19, v20, v21, v22, v23, v24, v79, v80, v81, v82, v83, v84, v85);
        v26(v25);
      }

      if (*sub_1E3C2AEE0() == 1)
      {
        v27 = [objc_opt_self() currentDevice];
        v28 = [v27 orientation];

        if (UIDeviceOrientationIsLandscape(v28))
        {
          v29 = v16();
          v30 = v29;
          if (a1 != 3)
          {
            if (!v29)
            {
              goto LABEL_27;
            }

            OUTLINED_FUNCTION_12_6();
            v10 = *(v78 + 992);
            v11 = 7;
            goto LABEL_7;
          }

          if (v29)
          {
            if (TVAppFeature.isEnabled.getter(10))
            {
              v11 = 0;
            }

            else
            {
              v11 = 6;
            }

            v10 = *(*v30 + 992);
            goto LABEL_7;
          }

          goto LABEL_27;
        }
      }

      if (!v16())
      {
        goto LABEL_27;
      }

LABEL_46:
      OUTLINED_FUNCTION_12_6();
      v10 = *(v77 + 992);
      v11 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((sub_1E373F6E0() & 1) == 0)
    {
      goto LABEL_27;
    }

    if ((sub_1E3A25254(a1) & 1) != 0 || (sub_1E39DFFC8() & 1) != 0 && [objc_opt_self() isPad])
    {
      v48 = OUTLINED_FUNCTION_0_244();
      v1[402] = 2;
      v49 = *(*v1 + 392);
      if ((v49)(v48))
      {
        type metadata accessor for CollectionLayoutFactory();
        sub_1E3C11CA0(v1);
        OUTLINED_FUNCTION_1_223();
        v58 = OUTLINED_FUNCTION_8_149(v50, v51, v52, v53, v54, v55, v56, v57, v79, v80, v81, v82, v83, v84, v85);
        v59(v58);
      }

      v60 = objc_opt_self();
      if ([v60 isTV])
      {
        if (!v49())
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_26_0();
        v10 = *(v61 + 992);
        v11 = 3;
        goto LABEL_7;
      }

      v74 = [v60 isPad];
      v75 = v49();
      if (v74)
      {
        if (!v75)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_12_6();
        v10 = *(v76 + 992);
        v11 = 12;
        goto LABEL_7;
      }

      if (!v75)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

LABEL_3:
  v4 = OUTLINED_FUNCTION_0_244();
  v1[402] = 1;
  v5 = *(*v1 + 392);
  v6 = v5(v4);
  if (v6)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *MEMORY[0x1E69DDCE0];
    v86 = v7;
    v87 = 0;
    OUTLINED_FUNCTION_26_0();
    (*(v8 + 184))(&v85);
  }

  if (v5(v6))
  {
    OUTLINED_FUNCTION_26_0();
    v10 = *(v9 + 992);
    v11 = 21;
LABEL_7:
    v12 = 0;
LABEL_25:
    v10(v11, v12);
LABEL_26:
  }

LABEL_27:
  result = swift_beginAccess();
  v2[417] = a1;
  return result;
}

BOOL sub_1E3DD4884()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1584))();
  sub_1E3AFFC64();
  return (sub_1E4205E84() & 1) == 0;
}

uint64_t sub_1E3DD4900()
{
  if (sub_1E373F6E0())
  {
    return 0;
  }

  if (sub_1E373F6E0())
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 1608))();
    if (v2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (sub_1E373F6E0())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3DD4998(unsigned int a1, void *a2, unint64_t a3)
{
  v5 = v3;
  v8 = ((sub_1E40B2C84() >> 8) & 1);
  v48 = 0;
  v9 = (*(*v3 + 1016))();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v12 = v11;
    if (v11 >= 1)
    {
      v13 = 0;
      v40 = a3 & 0xFFFFFF00;
      v38 = *(*v5 + 392);
      v37 = v10 & 0xC000000000000001;
      v39 = v10;
      while (1)
      {
        if (v37)
        {
          v14 = MEMORY[0x1E6911E60](v13, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v13 + 32);
        }

        v15 = a2;
        v16 = sub_1E4038DF8(a1, v40 | 4u, v14, v49);
        v48 = v50;
        if (v38(v16))
        {
          type metadata accessor for CollectionViewLayout();
          if (swift_dynamicCastClass())
          {
            OUTLINED_FUNCTION_26_0();
            (*(v17 + 1704))(v49);
          }
        }

        OUTLINED_FUNCTION_111();
        v19 = (*(v18 + 392))();
        if (v19)
        {
          v45[0] = v19;
          type metadata accessor for ViewLayout();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E68);
          if (swift_dynamicCast())
          {
            if (*(&v43 + 1))
            {
              sub_1E3251BE8(&v42, v45);
              if (v8)
              {
                LOBYTE(v8) = 1;
              }

              else
              {
                v20 = v46;
                v8 = v47;
                __swift_project_boxed_opaque_existential_1(v45, v46);
                LOBYTE(v8) = (*(v8 + 1))(a1, a2, v40 | 4u, v20, v8);
              }

              __swift_destroy_boxed_opaque_existential_1(v45);
              goto LABEL_23;
            }
          }

          else
          {
            v44 = 0;
            v42 = 0u;
            v43 = 0u;
          }
        }

        else
        {

          v44 = 0;
          v42 = 0u;
          v43 = 0u;
        }

        sub_1E3DD4F88(&v42);
LABEL_23:
        v10 = v39;
        if (v12 == ++v13)
        {
          v4 = v8;

          goto LABEL_28;
        }
      }
    }

    __break(1u);
LABEL_62:
    MEMORY[0x1E6911E60](0, a3);
    goto LABEL_33;
  }

  v4 = v8;

LABEL_28:
  v22 = (*v5 + 1040);
  v8 = *v22;
  v23 = (*v22)(v21);
  if (!v23)
  {
    goto LABEL_35;
  }

  a3 = v23;
  result = sub_1E32AE9B0(v23);
  if (!result)
  {
    v27 = 0;
    goto LABEL_37;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_66;
  }

LABEL_33:

  OUTLINED_FUNCTION_8();
  v26 = (*(v25 + 872))();

  if (!v26)
  {
LABEL_35:
    v27 = 0;
    goto LABEL_38;
  }

  v27 = sub_1E32AE9B0(v26);
LABEL_37:

LABEL_38:
  v28 = v8(v23);
  if (!v28)
  {
    goto LABEL_45;
  }

  v29 = v28;
  result = sub_1E32AE9B0(v28);
  if (result)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](0, v29);
      goto LABEL_43;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_43:

      OUTLINED_FUNCTION_8();
      (*(v30 + 888))();

      goto LABEL_45;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_45:
  v31 = v8(v28);
  if (!v31)
  {
    goto LABEL_52;
  }

  v32 = v31;
  result = sub_1E32AE9B0(v31);
  if (!result)
  {
    v35 = 0;
    goto LABEL_54;
  }

  if ((v32 & 0xC000000000000001) == 0)
  {
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_50;
    }

LABEL_67:
    __break(1u);
    return result;
  }

  MEMORY[0x1E6911E60](0, v32);
LABEL_50:

  OUTLINED_FUNCTION_8();
  v34 = (*(v33 + 872))();

  if (v34)
  {
    v35 = sub_1E32AE9B0(v34);
LABEL_54:

    goto LABEL_55;
  }

LABEL_52:
  v35 = 0;
LABEL_55:
  if (v4)
  {
    v36 = 256;
  }

  else
  {
    v36 = 0;
  }

  if (v35 == v27)
  {
    return v36;
  }

  else
  {
    return v36 + 1;
  }
}

uint64_t sub_1E3DD4F58()
{
  v0 = CollectionViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 418, 7);
}

uint64_t sub_1E3DD4F88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3DD5014(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1E4207104();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v43 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - v16;
  *(&v55 + 1) = &type metadata for ViewModelKeys;
  v56 = &off_1F5D7BCA8;
  LOBYTE(v53) = a1;
  sub_1E3F9F164(&v53);
  __swift_destroy_boxed_opaque_existential_1(&v53);
  v57 = 0;
  sub_1E3294F34(v58, &v53);
  if (!*(&v55 + 1))
  {
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((OUTLINED_FUNCTION_0_245() & 1) == 0)
  {
LABEL_30:
    v42 = v58;
    goto LABEL_31;
  }

  sub_1E3294F34(v58, &v53);
  if (!*(&v55 + 1))
  {
LABEL_29:
    sub_1E325F748(v58, &unk_1ECF296E0);
    v42 = &v53;
LABEL_31:
    sub_1E325F748(v42, &unk_1ECF296E0);
    return 0;
  }

  result = OUTLINED_FUNCTION_0_245();
  if ((result & 1) == 0)
  {
    goto LABEL_30;
  }

  v45 = v15;
  v19 = v51;
  v20 = *(v51 + 16);
  if (!v20)
  {

    v41 = 0;
LABEL_34:
    sub_1E325F748(v58, &unk_1ECF296E0);
    return v41;
  }

  v44 = v7;
  v46 = a3;
  v21 = 0;
  v22 = v51 + 32;
  v43[4] = v8 + 8;
  v43[3] = v12 + 32;
  v43[2] = v12 + 16;
  v43[1] = v12 + 8;
  v48 = v51 + 32;
  v47 = v20;
  while (v21 < *(v19 + 16))
  {
    v23 = 0;
    v24 = *(v22 + 8 * v21++);
    v25 = (v24 + 64);
    v26 = 1 << *(v24 + 32);
    v27 = (v26 + 63) >> 6;
    if (!v27)
    {
      goto LABEL_27;
    }

    while (!*v25)
    {
      ++v25;
      v23 -= 64;
      if (!--v27)
      {
        goto LABEL_27;
      }
    }

    v28 = __clz(__rbit64(*v25));
    if (v28 - v26 == v23)
    {
      goto LABEL_27;
    }

    if (-v23 < 0)
    {
      goto LABEL_36;
    }

    v29 = v28 - v23;
    if (v29 >= v26)
    {
      goto LABEL_36;
    }

    if (((*v25 >> v28) & 1) == 0)
    {
      goto LABEL_37;
    }

    v30 = (*(v24 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_1E328438C(*(v24 + 56) + 32 * v29, v50);
    sub_1E329504C(v50, v52);
    v53 = v31;
    v54 = v32;
    sub_1E329504C(v52, &v55);
    v34 = v53;
    v33 = v54;
    sub_1E329504C(&v55, &v51);
    sub_1E328438C(&v51, &v53);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (!swift_dynamicCast() || (v35 = *(v49 + 16), , v35))
    {
      v36 = sub_1E3A7CD30(v34, v33, &v51, v46);

      if (v36)
      {
        if (!v57)
        {
          v57 = sub_1E4205C34();
        }

        v53 = v36;
        type metadata accessor for ViewModel();

        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v51);

          __swift_storeEnumTagSinglePayload(v11, 1, 1, a4);
          OUTLINED_FUNCTION_36_5();
          result = v40(v11, v44);
          goto LABEL_26;
        }

        __swift_storeEnumTagSinglePayload(v11, 0, 1, a4);
        OUTLINED_FUNCTION_36_5();
        v37(v17, v11, a4);
        OUTLINED_FUNCTION_36_5();
        v38(v45, v17, a4);
        sub_1E4206374();
        sub_1E4206354();

        OUTLINED_FUNCTION_36_5();
        v39(v17, a4);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v51);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v51);
    }

LABEL_26:
    v22 = v48;
    v20 = v47;
LABEL_27:
    if (v21 == v20)
    {

      v41 = v57;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1E3DD55E0(char a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &type metadata for ViewModelKeys;
  v8[4] = &off_1F5D7BCA8;
  LOBYTE(v8[0]) = a1;
  v4 = sub_1E39BD1A0(v8, a2);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v4)
  {
    return 0;
  }

  sub_1E39C36BC(v4, &v9);

  if (!*(&v9 + 1))
  {
    sub_1E325F748(&v9, &qword_1ECF30008);
    return 0;
  }

  v11 = v9;
  sub_1E329504C(&v10, v12);
  v5 = v11;
  sub_1E329504C(v12, &v9);

  if (sub_1E38506C8() != 263)
  {
    v6 = sub_1E3A7CD30(v5, *(&v5 + 1), &v9, a3);

LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(&v9);
    return v6;
  }

  if (sub_1E41240F4() != 31)
  {
    v6 = sub_1E3A7C9B4();
    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(&v9);
  return 0;
}

uint64_t sub_1E3DD573C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E70);
  sub_1E3DD5B7C();
  sub_1E4203174();
}

uint64_t sub_1E3DD57E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4201C44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4202654();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v33[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    (*(v16 + 552))(v33);
    if ((v34 & 1) == 0)
    {
      v13.n128_f64[0] = sub_1E3952BE8(v33[0], v33[1], v33[2], v33[3]);
    }
  }

  (*(v5 + 104))(v8, *MEMORY[0x1E697F468], v3, v13);
  sub_1E4202634();
  (*(v5 + 8))(v8, v3);
  if (!a2 || (OUTLINED_FUNCTION_26(), (v18 = (*(v17 + 600))()) == 0) || (v19 = v18, v20 = sub_1E40B0254(), v19, !v20))
  {
    v21 = [objc_opt_self() clearColor];
  }

  sub_1E4203644();
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    v23 = (*(v22 + 600))();
    if (v23)
    {
      v24 = v23;
      [v23 shadowBlurRadius];
    }

    OUTLINED_FUNCTION_26();
    v26 = (*(v25 + 600))();
    if (v26)
    {
      v27 = v26;
      [v26 shadowOffset];
    }

    OUTLINED_FUNCTION_26();
    v29 = (*(v28 + 600))();
    if (v29)
    {
      v30 = v29;
      [v29 shadowOffset];
    }
  }

  sub_1E4202644();

  return (*(v11 + 8))(v15, v9);
}

unint64_t sub_1E3DD5B7C()
{
  result = qword_1EE288938;
  if (!qword_1EE288938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288938);
  }

  return result;
}

char *sub_1E3DD5C18()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v3 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView;
  type metadata accessor for GradientBackgroundDecorationView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4, v0, v13);
  v8 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  v9 = *&v7[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView];
  v10 = v7;
  v11 = v9;
  [v11 setVuiBackgroundColor_];

  [v10 addSubview_];
  [v10 addSubview_];

  return v10;
}

void sub_1E3DD5D84()
{
  v1 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v3 = OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView;
  type metadata accessor for GradientBackgroundDecorationView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E42076B4();
  __break(1u);
}

id sub_1E3DD5E5C(char a1, double a2, double a3)
{
  v4 = v3;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  result = objc_msgSendSuper2(&v12, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if ((a1 & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_5_6();
    Width = CGRectGetWidth(v13);
    sub_1E3A258E4(Width);
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v14);
    v10 = *&v4[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_lineView];
    OUTLINED_FUNCTION_5_6();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v10 setFrame_];
    OUTLINED_FUNCTION_5_6();
    CGRectGetWidth(v15);
    OUTLINED_FUNCTION_5_6();
    CGRectGetHeight(v16);
    v11 = *&v4[OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView];
    OUTLINED_FUNCTION_5_6();
    [v4 vuiIsRTL];
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    return [v11 setFrame_];
  }

  return result;
}

void sub_1E3DD6064()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI48BackgroundGradientWithTopSeparatorDecorationView_gradientView);
}

id sub_1E3DD60AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundGradientWithTopSeparatorDecorationView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnifiedOverlay()
{
  result = qword_1EE2A48F0;
  if (!qword_1EE2A48F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3DD6178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  type metadata accessor for ViewInteractionStates();
  OUTLINED_FUNCTION_6_163();
  sub_1E3DDBD84(v23, v24);
  *(a9 + 40) = 0u;
  v25 = (a9 + 40);
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = sub_1E4201754();
  *(a9 + 96) = v26;
  v27 = type metadata accessor for UnifiedOverlay();
  v28 = v27[14];
  *(a9 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v29 = v27[15];
  *(a9 + v29) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  v30 = (a9 + v27[17]);
  *&v71 = 0;
  sub_1E42038E4();
  v30[1] = v74;
  *v30 = v73;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  v31 = *(*a1 + 488);

  v33 = v31(v32);
  *(a9 + 32) = v33;
  v34 = (a9 + v27[16]);
  *v34 = a10;
  v34[1] = a11;
  v34[2] = a12;
  v34[3] = a13;
  if ((sub_1E373F6E0() & 1) == 0 && (sub_1E373F6E0() & 1) == 0 || !(*(*a1 + 392))())
  {
LABEL_12:

    if (!v33)
    {
LABEL_15:
      v46 = 0;
      v48 = 0;
      goto LABEL_16;
    }

LABEL_13:
    if (sub_1E373E010(36, v33))
    {
      v75 = &unk_1F5D5D498;
      v76 = &off_1F5D5C838;
      v46 = sub_1E39C29A4(&v73);
      v48 = v47;

      __swift_destroy_boxed_opaque_existential_1(&v73);
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  type metadata accessor for UnifiedOverlayLayout();
  v35 = swift_dynamicCastClass();
  if (!v35)
  {

    goto LABEL_12;
  }

  v36 = v35;
  v75 = &unk_1F5D5D528;
  v76 = &off_1F5D5C858;
  LOBYTE(v73) = 1;
  v37 = sub_1E39C29A4(&v73);
  v39 = v38;
  __swift_destroy_boxed_opaque_existential_1(&v73);
  v73 = v37;
  v74 = v39;
  sub_1E39DFE78();
  sub_1E4149694();
  if (v71 != 3)
  {
    v40 = sub_1E3AA9CE0(v71);
    (*(*v36 + 1824))(v40);
  }

  if (v33)
  {
    v41 = sub_1E373E010(234, v33);
    if (!v41)
    {

      *v25 = 0;
      goto LABEL_13;
    }

    v42 = v41;
    OUTLINED_FUNCTION_26_0();
    v44 = (*(v43 + 600))();
    if (v44)
    {
      *v25 = v44;
      v45 = v44;
    }

    else
    {
      v63 = (*(*v42 + 552))();
      *v25 = v63;
      if (!v63)
      {

LABEL_63:

        goto LABEL_13;
      }

      v45 = v63;
    }

    sub_1E382766C();

    sub_1E3744600(v45);

    v64 = sub_1E37766C4();
    sub_1E3780EC0(v64);
    if (v65)
    {

      type metadata accessor for ScoreboardObservable(0);
      sub_1E4067BA0();
      v67 = v66;

      *(a9 + 80) = v67;
      goto LABEL_13;
    }

    goto LABEL_63;
  }

  v46 = 0;
  v48 = 0;
  *v25 = 0;
LABEL_16:
  v49 = sub_1E4205F14();
  if (v48)
  {
    if (v46 == v49 && v48 == v50)
    {

      if (v33)
      {
LABEL_23:
        if (sub_1E373E010(36, v33))
        {
          OUTLINED_FUNCTION_9_5();
          type metadata accessor for ImageViewModel();
          OUTLINED_FUNCTION_19_3();
          v54 = swift_dynamicCastClass();
          if (!v54)
          {

            v54 = 0;
          }

          *(a9 + 56) = v54;
        }

        else
        {
          *(a9 + 56) = 0;
        }

        goto LABEL_40;
      }

LABEL_34:
      *(a9 + 56) = 0;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_16_0();
    v52 = sub_1E42079A4();

    if (v52)
    {
      if (v33)
      {
        goto LABEL_23;
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

  if (!v33)
  {
    *(a9 + 48) = 0;
    goto LABEL_55;
  }

  if (!sub_1E373E010(36, v33))
  {
LABEL_39:
    *(a9 + 48) = 0;
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_9_5();
  type metadata accessor for ImageViewModel();
  OUTLINED_FUNCTION_19_3();
  v55 = swift_dynamicCastClass();
  if (!v55)
  {

    goto LABEL_39;
  }

  *(a9 + 48) = v55;
  OUTLINED_FUNCTION_26_0();
  if ((*(v56 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v57 + 504))();
  }

LABEL_40:
  result = sub_1E373E010(44, v33);
  if (!result)
  {
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_26_0();
  v58 += 67;
  v59 = *v58;
  if (!(*v58)())
  {
    v71 = 0u;
    v72 = 0u;
    goto LABEL_46;
  }

  v75 = &unk_1F5D5E4E8;
  v76 = &off_1F5D5CBE8;
  LOBYTE(v73) = 1;
  sub_1E3F9F164(&v73);

  __swift_destroy_boxed_opaque_existential_1(&v73);
  if (!*(&v72 + 1))
  {
LABEL_46:
    v60 = sub_1E325F6F0(&v71, &unk_1ECF296E0);
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v60 = swift_dynamicCast();
  if (v60)
  {
    type metadata accessor for ImageViewModel();
    v60 = OUTLINED_FUNCTION_62_28();
    *(a9 + 64) = v60;
  }

LABEL_47:
  if (!(v59)(v60))
  {

    v71 = 0u;
    v72 = 0u;
LABEL_53:
    result = sub_1E325F6F0(&v71, &unk_1ECF296E0);
    goto LABEL_55;
  }

  v75 = &unk_1F5D5E4E8;
  v76 = &off_1F5D5CBE8;
  LOBYTE(v73) = 0;
  sub_1E3F9F164(&v73);

  __swift_destroy_boxed_opaque_existential_1(&v73);
  if (!*(&v72 + 1))
  {

    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (swift_dynamicCast())
  {
    type metadata accessor for ImageViewModel();
    v61 = OUTLINED_FUNCTION_62_28();

    *(a9 + 72) = v61;
  }

  else
  {
  }

LABEL_55:
  *(a9 + v27[18]) = a5 & 1;
  v62 = a9 + v27[19];
  *v62 = a6;
  *(v62 + 8) = a7;
  *(v62 + 16) = a8 & 1;
  return result;
}

uint64_t sub_1E3DD69FC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E78);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  sub_1E3DD6BD4(v1);
  type metadata accessor for UnifiedOverlay();
  OUTLINED_FUNCTION_10_128();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0](&v19, v7);
  if (v19 == 1)
  {
    OUTLINED_FUNCTION_8();
    if (!(*(v8 + 392))() || (OUTLINED_FUNCTION_26_0(), v10 = (*(v9 + 1392))(), , !v10))
    {
      v11 = [objc_opt_self() clearColor];
    }

    v12 = sub_1E4203644();
  }

  else
  {
    v12 = sub_1E42036E4();
  }

  v13 = v12;
  v14 = sub_1E4202734();
  v15 = OUTLINED_FUNCTION_114_0();
  v16(v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E80);
  v18 = a1 + *(result + 36);
  *v18 = v13;
  *(v18 + 8) = v14;
  return result;
}

void sub_1E3DD6BD4(uint64_t a1@<X8>)
{
  v59 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v53 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E90);
  OUTLINED_FUNCTION_0_10();
  v56 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v17 = *v1;
  if ((*(**v1 + 392))())
  {
    OUTLINED_FUNCTION_26_0();
    (*(v18 + 176))(&v68);
  }

  *v10 = sub_1E4201D44();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F58) + 44)];
  v58 = v1;
  sub_1E3DD72E0(v1, v19);
  LOWORD(v65) = *(v17 + 98);
  LOWORD(v61) = 157;
  sub_1E3741534();
  v20 = sub_1E4205E84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v22 = sub_1E4202764();
  *(inited + 32) = v22;
  v23 = sub_1E4202784();
  *(inited + 33) = v23;
  v24 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v22)
  {
    v24 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v23)
  {
    v24 = sub_1E4202774();
  }

  v25 = OUTLINED_FUNCTION_6();
  sub_1E3952BE0(v25, v26, v27, v28);
  if (v20)
  {
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v29, v30, v31);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDB084();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_82();
    sub_1E328FCF4(v32, v33);
    v34 = v53;
    sub_1E4201F44();
  }

  else
  {
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v35 = v51;
    sub_1E3743538(v10, v51, &qword_1ECF38EC0);
    v36 = (v35 + *(v54 + 36));
    *v36 = v24;
    OUTLINED_FUNCTION_11_4(v36);
    sub_1E3743538(v35, v5, &qword_1ECF38EB0);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDB084();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v37, &qword_1ECF38EC0);
    v34 = v53;
    sub_1E4201F44();
    sub_1E325F6F0(v35, &qword_1ECF38EB0);
  }

  sub_1E325F6F0(v10, &qword_1ECF38EC0);
  sub_1E3741EA0(v34, v2, &qword_1ECF38E98);
  sub_1E373F6E0();
  v65 = v17;
  v38 = sub_1E3DDAFCC();
  v39 = sub_1E3DDB13C();

  v40 = v55;
  sub_1E3E35E58();
  sub_1E325F6F0(v2, &qword_1ECF38E98);
  if ((sub_1E373F6E0() & 1) == 0)
  {
    sub_1E373F6E0();
  }

  v41 = type metadata accessor for UnifiedOverlay();
  v42 = v58;
  v43 = (v58 + *(v41 + 68));
  v44 = *v43;
  v45 = v43[1];
  v61 = v44;
  v62 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
  sub_1E42038F4();
  v46 = (v42 + *(v41 + 64));
  v64 = v39;
  v65 = v17;
  v47 = v46[1];
  v66 = *v46;
  v67 = v47;
  v61 = v40;
  v62 = &type metadata for EditorialOverlayGradient;
  v63 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1E3DDB190();
  v48 = v57;
  v49 = v60;
  sub_1E3E35E58();

  (*(v56 + 8))(v49, v48);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3DD72E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F68);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v86 = v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v90 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F78);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v94 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v84 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v93 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F80);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F88);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F90);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_5();
  v87 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  v32 = *a1;
  v99 = *(*a1 + 98);
  v98 = 157;
  sub_1E3741534();
  v33 = 1;
  if ((sub_1E4205E84() & 1) == 0)
  {
    v85 = v3;
    *v20 = sub_1E4201B64();
    *(v20 + 1) = 0;
    v20[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F98);
    sub_1E3DD7964(a1, v34, v35, v36, v37, v38, v39, v40, a1, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
    v41 = sub_1E4202744();
    v42 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v41)
    {
      v42 = sub_1E4202774();
    }

    sub_1E4200A54();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_1E3741EA0(v20, v2, &qword_1ECF38F80);
    v51 = v2 + *(v21 + 36);
    *v51 = v42;
    *(v51 + 8) = v44;
    *(v51 + 16) = v46;
    *(v51 + 24) = v48;
    *(v51 + 32) = v50;
    *(v51 + 40) = 0;
    sub_1E3741EA0(v2, v25, &qword_1ECF38F88);
    v52 = OUTLINED_FUNCTION_55_39();
    sub_1E3741EA0(v52, v53, &qword_1ECF38F88);
    v33 = 0;
    a1 = v84;
    v3 = v85;
  }

  __swift_storeEnumTagSinglePayload(v31, v33, 1, v21);
  v54 = v90;
  sub_1E3DD8468(a1, v90);
  v97 = *(v32 + 98);
  v96 = 157;
  v55 = sub_1E4205E84();
  v56 = sub_1E4202754();
  v57 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v56)
  {
    v57 = sub_1E4202774();
  }

  if (v55)
  {
    sub_1E3743538(v54, v3, &qword_1ECF38F70);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBB58();
    sub_1E3DDBBE4();
    sub_1E4201F44();
  }

  else
  {
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v58 = v86;
    sub_1E3743538(v54, v86, &qword_1ECF38F70);
    v59 = (v58 + *(v92 + 36));
    *v59 = v57;
    OUTLINED_FUNCTION_11_4(v59);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v60, v61, v62);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBB58();
    sub_1E3DDBBE4();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v63, v64);
  }

  sub_1E325F6F0(v54, &qword_1ECF38F70);
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v65, v66, v67);
  v68 = v87;
  sub_1E3743538(v31, v87, &qword_1ECF38F90);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v69, v70, v71);
  v72 = v95;
  sub_1E3743538(v68, v95, &qword_1ECF38F90);
  v73 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FD8) + 48);
  *v73 = 0;
  *(v73 + 8) = 0;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v74, v75, v76);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v77, v78);
  v79 = OUTLINED_FUNCTION_114_0();
  sub_1E325F6F0(v79, v80);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v81, v82);
  return sub_1E325F6F0(v68, &qword_1ECF38F90);
}

void sub_1E3DD7964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39028);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_34_1();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39008);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &a9 - v42;
  sub_1E3DD7BF8();
  sub_1E3DD81E0();
  sub_1E3DD7BF8();
  sub_1E3743538(v43, v39, &qword_1ECF39008);
  sub_1E3743538(v21, v30, &qword_1ECF39028);
  sub_1E3743538(v20, v36, &qword_1ECF39008);
  sub_1E3743538(v39, v25, &qword_1ECF39008);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39030);
  v45 = v25 + v44[12];
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_1E3743538(v30, v25 + v44[16], &qword_1ECF39028);
  sub_1E3743538(v36, v25 + v44[20], &qword_1ECF39008);
  sub_1E325F6F0(v20, &qword_1ECF39008);
  sub_1E325F6F0(v21, &qword_1ECF39028);
  sub_1E325F6F0(v43, &qword_1ECF39008);
  sub_1E325F6F0(v36, &qword_1ECF39008);
  sub_1E325F6F0(v30, &qword_1ECF39028);
  sub_1E325F6F0(v39, &qword_1ECF39008);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD7BF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v67 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v66 = v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39018);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v61 - v9;
  v69 = type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v65 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 48);
  if (v14)
  {
    v15 = (*(*v14 + 392))(v12);
  }

  else
  {
    v15 = 0;
  }

  if ((sub_1E3A92050() & 1) != 0 && (v16 = *(v1 + 32)) != 0)
  {
    v62 = v10;
    v63 = v4;
    v64 = v3;
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v22 = v21;
LABEL_13:
        v23 = *(*(v16 + 56) + 8 * (__clz(__rbit64(v19)) | (v22 << 6)));

        if (sub_1E385050C())
        {
          break;
        }

        v19 &= v19 - 1;

        v21 = v22;
        if (!v19)
        {
          goto LABEL_10;
        }
      }

      OUTLINED_FUNCTION_18();
      v57 = v65;
      sub_1E3FC96D0(v23, 0, v65);
      sub_1E38115FC(v57, v62);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_13_136();
      sub_1E3DDBD84(v58, v59);
      OUTLINED_FUNCTION_6_15();
      v60 = v64;
      sub_1E4201F44();

      sub_1E3811660(v57);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020);
      v56 = v60;
      goto LABEL_34;
    }

LABEL_10:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        v4 = v63;
        v3 = v64;
        v10 = v62;
        goto LABEL_17;
      }

      v19 = *(v16 + 64 + 8 * v22);
      ++v21;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    if (v14)
    {
      if (v15)
      {
        OUTLINED_FUNCTION_8();
        v25 = *(v24 + 504);

        v25(v26);
      }

      else
      {
      }

      if (sub_1E3A92050())
      {
        if (v15)
        {
          OUTLINED_FUNCTION_8();
          v28 = *(v27 + 200);

          v30 = v28(v29);
          v32 = v31;

          v33 = *(*v15 + 304);

          v35 = v33(v34);
          v37 = v36;

          if (v37)
          {
            v35 = 0;
          }

          if (v32)
          {
            v30 = 0;
          }
        }

        else
        {
          v35 = 0;
          v30 = 0;
        }

        v43 = j__OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_55_3();
        OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_6_14(v30, v35, v43 & 1, v70, 0, 1, 0, 1, v65, v66, SBYTE1(v66), SBYTE2(v66));
        OUTLINED_FUNCTION_18();
        v44 = v66;
        OUTLINED_FUNCTION_30_5();
        sub_1E37E8BE8(v45, v46, v47, v48, v49, v50, v51);
        sub_1E375C31C(v70);
        v52 = v67;
        (*(v67 + 16))(v10, v44, v4);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_13_136();
        sub_1E3DDBD84(v53, v54);
        OUTLINED_FUNCTION_6_15();
        sub_1E4201F44();

        (*(v52 + 8))(v44, v4);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020);
        v56 = v3;
LABEL_34:
        __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39020);
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  }
}

void sub_1E3DD81E0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39038);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v10 + 392))())
    {
      type metadata accessor for UnifiedOverlayLayout();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = *(v0 + 80);
        if (v12)
        {
          v13 = v11;
          v28 = *(*v12 + 128);

          v15 = v28(v14);
          v16 = [v15 showScoreboard];

          if (v16)
          {
            v28 = *(*v13 + 1816);

            v28(v17);
            sub_1E4068D54();
            sub_1E4067E98(v12, &v7[*(v4 + 36)]);

            sub_1E3741EA0(v7, v1, &qword_1ECF39038);
            v18 = 0;
          }

          else
          {

            v18 = 1;
          }

          __swift_storeEnumTagSinglePayload(v1, v18, 1, v4);
          sub_1E3741EA0(v1, v3, &qword_1ECF39040);
          v24 = OUTLINED_FUNCTION_22_1();
          __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1E3DD8468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = *a1;
  if (*(*a1 + 98) - 154 > 6 || ((1 << (*(*a1 + 98) + 102)) & 0x47) == 0)
  {
    *v7 = sub_1E4201B74();
    *(v7 + 1) = 0;
    v7[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FE8);
    sub_1E3DD8994();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v23, v24, v25);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBD20();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_82();
    sub_1E328FCF4(v26, v27);
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
  }

  else
  {
    v65 = a2;
    v16 = a1[4];
    v17 = a1[1];
    v62 = a1[2];
    v63 = v17;
    v61 = *(a1 + 24);
    v18 = a1[7];
    v19 = a1[9];
    v59 = a1[8];
    v60 = v18;
    v58 = v19;
    if (v16)
    {

      v20 = sub_1E373E010(115, v16);
      if (v20)
      {
      }
    }

    else
    {
    }

    v21 = (*(*v14 + 392))(v20);
    v64 = v8;
    if (v21)
    {
      type metadata accessor for UnifiedOverlayLayout();
      OUTLINED_FUNCTION_40_3();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_26_0();
        (*(v22 + 1864))();
      }
    }

    v30 = &v13[v10[14]];
    *v30 = sub_1E4201D44();
    *(v30 + 1) = 0;
    v30[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF0);
    sub_1E3DD8CDC();

    v31 = type metadata accessor for UnifiedOverlay();
    v32 = v31[17];
    v33 = (a1 + v31[16]);
    v34 = *(a1 + v32 + 8);
    v67 = *(a1 + v32);
    v68 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28868);
    v35 = *v33;
    v56 = v33[1];
    v57 = v35;
    sub_1E4203914();
    v36 = v70;
    v37 = v71;
    v38 = v72;
    v39 = v31[19];
    LOBYTE(v31) = *(a1 + v31[18]);
    v40 = *(a1 + v39 + 8);
    v41 = *(a1 + v39 + 16);
    v70 = *(a1 + v39);
    v71 = v40;
    LOBYTE(v72) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
    sub_1E4203AB4();
    v42 = v67;
    v43 = v68;
    v44 = v69;
    *v13 = v16;
    *(v13 + 1) = v14;
    *(v13 + 2) = v63;
    *(v13 + 3) = v62;
    v13[32] = v61;
    *(v13 + 5) = v60;
    *(v13 + 6) = v59;
    *(v13 + 7) = v58;
    v45 = &v13[v10[15]];
    v46 = v56;
    *v45 = v57;
    *(v45 + 1) = v46;
    v47 = &v13[v10[16]];
    *v47 = v36;
    *(v47 + 1) = v37;
    *(v47 + 2) = v38;
    v13[v10[17]] = v31;
    v48 = &v13[v10[18]];
    *v48 = v42;
    *(v48 + 1) = v43;
    v48[16] = v44;
    v49 = &v13[v10[19]];
    type metadata accessor for ViewInteractionStates();
    OUTLINED_FUNCTION_6_163();
    sub_1E3DDBD84(v50, v51);
    OUTLINED_FUNCTION_19_3();
    *v49 = sub_1E4201754();
    v49[1] = v52;
    sub_1E3743538(v13, v2, &qword_1ECF38FC0);
    swift_storeEnumTagMultiPayload();
    sub_1E3DDBD20();
    OUTLINED_FUNCTION_9_0();
    sub_1E328FCF4(v53, v54);
    sub_1E4201F44();
    v28 = v13;
    v29 = &qword_1ECF38FC0;
  }

  return sub_1E325F6F0(v28, v29);
}

void sub_1E3DD8994()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v35 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39000);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39008);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_1();
  sub_1E3DD7BF8();
  v21 = *(v4 + 32);
  if (v21 && sub_1E373E010(115, v21))
  {

    LODWORD(v34) = 1;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  OUTLINED_FUNCTION_8();
  if ((*(v22 + 392))(v23))
  {
    type metadata accessor for UnifiedOverlayLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v24 + 1864))(v25);
    }
  }

  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF0);
  sub_1E3DD8CDC();

  v26 = v19;
  sub_1E3DD7BF8();
  OUTLINED_FUNCTION_63_26(v2, v16);
  sub_1E3743538(v1, v0, &qword_1ECF39000);
  OUTLINED_FUNCTION_63_26(v19, v13);
  v27 = v35;
  OUTLINED_FUNCTION_63_26(v16, v35);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39010);
  v34 = v16;
  v29 = v0;
  v30 = v28;
  sub_1E3743538(v29, v27 + *(v28 + 48), &qword_1ECF39000);
  v31 = v27 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = 0;
  OUTLINED_FUNCTION_63_26(v13, v27 + *(v30 + 80));
  OUTLINED_FUNCTION_64_24(v26);
  sub_1E325F6F0(v1, &qword_1ECF39000);
  OUTLINED_FUNCTION_64_24(v2);
  OUTLINED_FUNCTION_64_24(v13);
  v32 = OUTLINED_FUNCTION_55_39();
  sub_1E325F6F0(v32, v33);
  OUTLINED_FUNCTION_64_24(v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD8CDC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_34_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v15 = *(v3 + 32);
  if (v15)
  {
    if (*(v15 + 16))
    {
      v31 = v14;
      v16 = sub_1E3740AE8(23);
      if ((v17 & 1) != 0 && **(*(v15 + 56) + 8 * v16) == _TtC8VideosUI13TextViewModel)
      {

        if (sub_1E3C27528())
        {
          type metadata accessor for TextLayout();
          OUTLINED_FUNCTION_20_2();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v30 = v18;
LABEL_13:
            OUTLINED_FUNCTION_18();
            sub_1E3F23370();
            type metadata accessor for UnifiedOverlay();
            sub_1E374709C(v1);
            (*(v6 + 104))(v10, *MEMORY[0x1E697E7D8], v4);
            v24 = sub_1E4201314();
            v25 = *(v6 + 8);
            v25(v10, v4);
            v25(v1, v4);
            swift_getOpaqueTypeConformance2();
            sub_1E38841FC(v30, v24 & 1);

            (*(v31 + 8))(v0, v12);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF8);
            v26 = OUTLINED_FUNCTION_22_1();
            __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
            OUTLINED_FUNCTION_25_2();
            return;
          }
        }

        v30 = 0;
        goto LABEL_13;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38FF8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t sub_1E3DD9010(uint64_t a1)
{
  v2 = (v1 + *(a1 + 72));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
  MEMORY[0x1E690E3F0](&v7, v5);
  return v7;
}

void sub_1E3DD9070()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v55 = v4;
  OUTLINED_FUNCTION_60_5();
  v54 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08);
  v9 = *(v0 + 24);
  v56 = v8;
  v57 = v9;
  v10 = v9;
  v58 = MEMORY[0x1E6981840];
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608);
  OUTLINED_FUNCTION_37_60();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_120();
  swift_getWitnessTable();
  v11 = sub_1E42039C4();
  OUTLINED_FUNCTION_3_2();
  WitnessTable = swift_getWitnessTable();
  v56 = v11;
  v57 = WitnessTable;
  OUTLINED_FUNCTION_4_193();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F00);
  OUTLINED_FUNCTION_30_5();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_51_18();
  v45[1] = swift_getWitnessTable();
  v13 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v50 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v16 = OUTLINED_FUNCTION_24_84();
  v51 = v13;
  v56 = v13;
  v57 = v16;
  v45[2] = v16;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v48 = v18;
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v46 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v47 = v21;
  if ((*(**(v1 + 8) + 392))())
  {
    type metadata accessor for UnifiedOverlayLayout();
    OUTLINED_FUNCTION_40_3();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 488))();
  if (v24)
  {
    sub_1E373E010(115, v24);
  }

  v45[0] = v22;
  if (v22)
  {
    v25 = *(*v22 + 1864);

    v27 = v25(v26);

    if (v27)
    {
      v28 = *(*v27 + 152);

      v28(&v56, v29);
    }
  }

  MEMORY[0x1EEE9AC00](v24);
  v30 = *(v3 + 24);
  v45[-4] = v10;
  v45[-3] = v30;
  v45[-2] = v1;
  sub_1E4201D44();
  sub_1E4203A34();
  v31 = v54;
  v32 = v52;
  (*(v54 + 16))(v52, v1, v3);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v10;
  *(v34 + 24) = v30;
  (*(v31 + 32))(v34 + v33, v32, v3);
  v35 = OUTLINED_FUNCTION_51_1();
  v36 = v46;
  sub_1E40AB6EC(v35 & 1);

  v37 = OUTLINED_FUNCTION_55_39();
  v38(v37);
  v40 = v47;
  v39 = v48;
  v41 = *(v48 + 16);
  v42 = v49;
  v41(v47, v36, v49);
  v43 = *(v39 + 8);
  v43(v36, v42);
  v41(v55, v40, v42);
  v44 = OUTLINED_FUNCTION_55_39();
  (v43)(v44);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD964C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F00);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608);
  OUTLINED_FUNCTION_37_60();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_193();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  sub_1E4201B34();
  sub_1E42039B4();
  sub_1E3E358E0();
}

uint64_t sub_1E3DD98D8()
{
  v8 = OUTLINED_FUNCTION_16_0();
  v9(v8);
  *(v7 - 136) = v0;
  *(v7 - 128) = v1;
  *(v7 - 296) = swift_getOpaqueTypeConformance2();
  v10 = *(v6 + 16);
  v11 = v2;
  v10(v2, v4, v3);
  v12 = *(v6 + 8);
  v12(v4, v3);
  v13 = 0.0;
  if (*v5)
  {
    if (*(*v5 + 16) && (sub_1E3740AE8(115), (v14 & 1) != 0))
    {

      v13 = sub_1E39295EC(v15);
      *(v7 - 248) = 0;
    }

    else
    {
      *(v7 - 248) = 1;
    }
  }

  sub_1E3DDA4C8(*(v7 - 272));
  v10(v4, v11, v3);
  *(v7 - 152) = v13;
  *(v7 - 144) = *(v7 - 248);
  *(v7 - 136) = v4;
  *(v7 - 128) = v7 - 152;
  v16 = *(v7 - 264);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v17, v18, v19);
  *(v7 - 120) = v16;
  *(v7 - 176) = v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EF8);
  v21 = *(v7 - 280);
  *(v7 - 168) = v20;
  *(v7 - 160) = v21;
  *(v7 - 200) = *(v7 - 296);
  *(v7 - 192) = sub_1E3DDB82C();
  *(v7 - 184) = sub_1E3DDB904();
  sub_1E3910324(v7 - 136, 3, v7 - 176);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v22, v23);
  v12(v11, v3);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v24, v25);
  return (v12)(v4, v3);
}

void sub_1E3DD9AB4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v62 = v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v63 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v57 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v60 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v54 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_19_2();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF08);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v25 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v28 = v27;
  v29 = v4;
  v61 = v2;
  v30 = type metadata accessor for UnifiedOverlay.ContentProgressAndAttributes();
  if ((sub_1E3DD9010(v30) & 1) != 0 || *(v6 + *(v30 + 68)) == 1)
  {
    v31 = sub_1E3DD9010(v30);
    v32 = 56;
    if (v31)
    {
      v32 = 48;
    }

    if (*(v6 + v32))
    {

      sub_1E3EB9BB4(v72);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      sub_1E37E8BE8(v33, v34, v35, v36, v37, v38, v39);

      sub_1E375C31C(v72);
      (*(v54 + 32))(v0, v20, v16);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0, v40, 1, v16);
    sub_1E3741EA0(v0, v28, &qword_1ECF29938);
    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v41, 1, v21);
  v42 = v28;
  v43 = v57;
  v44 = *(v57 + 16);
  v45 = v55;
  v44(v55, v6 + *(v30 + 56), v29);
  v46 = v58;
  sub_1E3DD9FE4(v30, v58);
  sub_1E3743538(v42, v25, &qword_1ECF2AF08);
  v71[0] = v25;
  v47 = v60;
  v44(v60, v45, v29);
  v69 = 0;
  v70 = 1;
  v71[1] = v47;
  v71[2] = &v69;
  v48 = v63;
  sub_1E3743538(v46, v63, &qword_1ECF29608);
  v71[3] = v48;
  v68[0] = v56;
  v68[1] = v29;
  v68[2] = MEMORY[0x1E6981840];
  v68[3] = v59;
  v64 = sub_1E3DDB9B4();
  v65 = v61;
  v66 = MEMORY[0x1E6981838];
  v67 = sub_1E3DDBAD4();
  sub_1E3910324(v71, 4, v68);
  sub_1E325F6F0(v46, &qword_1ECF29608);
  v49 = *(v43 + 8);
  v50 = OUTLINED_FUNCTION_114_0();
  v49(v50);
  sub_1E325F6F0(v42, &qword_1ECF2AF08);
  sub_1E325F6F0(v48, &qword_1ECF29608);
  (v49)(v47, v29);
  v51 = OUTLINED_FUNCTION_16_0();
  sub_1E325F6F0(v51, v52);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DD9FE4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_4();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = *v2;
  if (v19)
  {
    if (*(v19 + 16))
    {
      v20 = sub_1E3740AE8(32);
      if (v21 & 1) != 0 || *(v19 + 16) && (v20 = sub_1E3740AE8(40), (v22))
      {
        v23 = *(*(v19 + 56) + 8 * v20);

        type metadata accessor for ImageViewModel();
        OUTLINED_FUNCTION_20_2();
        if (swift_dynamicCastClass())
        {
          v75 = v7;
          v78 = v9;
          v79 = a2;
          OUTLINED_FUNCTION_26_0();
          v25 = *(v24 + 392);
          v77 = v23;
          v27 = v26;

          v76 = v27;
          if (v25(v28))
          {
            OUTLINED_FUNCTION_9_5();
            type metadata accessor for ImageLayout();
            OUTLINED_FUNCTION_19_3();
            v29 = swift_dynamicCastClass();
            if (v29)
            {
              OUTLINED_FUNCTION_8();
              v31 = *(v30 + 1696);

              v71 = v31(v32);
              v34 = v33;
              HIDWORD(v70) = v35;

              v36 = (v4 + *(a1 + 60));
              v37 = v36[2];
              v38 = v36[3];
              v39 = *(*v29 + 2296);

              v41 = v39(v40, v37, v38);
              v43 = v42;

              HIDWORD(v72) = 0;
              v74 = *&v41;
              v73 = v43;
              v44 = v71;
              if ((v70 & 0x100000000) != 0)
              {
                v44 = 0;
              }

              v71 = v44;
              if ((v70 & 0x100000000) != 0)
              {
                a1 = 0;
              }

              else
              {
                a1 = v34;
              }

              goto LABEL_21;
            }

            OUTLINED_FUNCTION_35_59();
          }

          else
          {
            OUTLINED_FUNCTION_35_59();
            v29 = 0;
          }

          HIDWORD(v72) = 1;
LABEL_21:
          v50 = v78;
          v51 = v75;
          v52 = j__OUTLINED_FUNCTION_51_1();
          j__OUTLINED_FUNCTION_18();
          j__OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_55_3();
          OUTLINED_FUNCTION_58_2();
          LOBYTE(v73) = 1;
          LOBYTE(v71) = 1;
          sub_1E3EB9C0C(v71, a1, 0, v74, v73, 0, v52 & 1, 2, v80, 0, 1, 0, 1, v74, v75, SBYTE1(v75), SBYTE2(v75));
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_30_5();
          sub_1E37E8BE8(v53, v54, v55, v56, v57, v58, v59);
          if (v29 && (OUTLINED_FUNCTION_8(), v61 = *(v60 + 152), v62 = , v61(&v81, v62), , (v82 & 1) == 0))
          {
            v63.n128_f64[0] = OUTLINED_FUNCTION_6();
            j_nullsub_1(v63, v64, v65, v66);
          }

          else
          {
            OUTLINED_FUNCTION_5_8();
          }

          OUTLINED_FUNCTION_3();
          v67 = sub_1E4202734();
          sub_1E375C31C(v80);

          (*(v50 + 32))(v15, v3, v51);
          v68 = (v15 + *(v11 + 36));
          *v68 = v67;
          OUTLINED_FUNCTION_11_4(v68);
          sub_1E3741EA0(v15, v18, &qword_1ECF29240);
          v69 = v79;
          sub_1E3741EA0(v18, v79, &qword_1ECF29240);
          __swift_storeEnumTagSinglePayload(v69, 0, 1, v11);
          OUTLINED_FUNCTION_10_3();
          return;
        }
      }
    }
  }

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
}

uint64_t sub_1E3DDA4C8@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_19_2();
  if (*(v1 + 40))
  {

    *v2 = sub_1E4201B84();
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F30);
    sub_1E3DDA5E0(v2 + *(v6 + 44));

    sub_1E3741EA0(v2, a1, &qword_1ECF38F28);
    v7 = OUTLINED_FUNCTION_22_1();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_10_2();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }
}

uint64_t sub_1E3DDA5E0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v9 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_6_14(0, 0, v9 & 1, v21, 0, 1, 0, 1, v21[4], v22, v23, v24);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_30_5();
  sub_1E37E8BE8(v10, v11, v12, v13, v14, v15, v16);
  sub_1E375C31C(v21);
  v17 = *(v6 + 16);
  v17(v1, v2, v4);
  *a1 = 0;
  *(a1 + 8) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38F38);
  v17(a1 + *(v18 + 48), v1, v4);
  v19 = *(v6 + 8);
  v19(v2, v4);
  return (v19)(v1, v4);
}

uint64_t sub_1E3DDA7A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!(*(*a1 + 392))() || (OUTLINED_FUNCTION_26_0(), v4 = (*(v3 + 840))(), , !v4))
  {
    type metadata accessor for ViewGradientLayout();
    v4 = sub_1E40C3088();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38ED0);
  OUTLINED_FUNCTION_1_11();
  v7 = sub_1E328FCF4(v6, &qword_1ECF38ED0);
  sub_1E392F9D0(v4, v5, v7, a2);
}

uint64_t sub_1E3DDA8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = sub_1E4202744();
  v8 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v7)
  {
    v8 = sub_1E4202774();
  }

  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 488))();
  if (v10)
  {
    v11 = sub_1E373E010(23, v10);

    if (v11)
    {
      v13 = (*(*v11 + 392))(v12);

      if (v13)
      {
        OUTLINED_FUNCTION_8();
        (*(v14 + 176))(v22);
      }
    }
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EE8);
  OUTLINED_FUNCTION_2();
  (*(v15 + 16))(v2, a1);
  v16 = (v2 + *(v5 + 36));
  *v16 = v8;
  OUTLINED_FUNCTION_11_4(v16);
  v17 = sub_1E4203D44();
  v19 = v18;
  sub_1E3741EA0(v2, a2, &qword_1ECF38EE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38EF0);
  v21 = (a2 + *(result + 36));
  *v21 = v17;
  v21[1] = v19;
  return result;
}

void sub_1E3DDAB50()
{
  type metadata accessor for ViewModel();
  if (v0 <= 0x3F)
  {
    sub_1E3DDADC8(319, &qword_1EE23B620, &qword_1ECF34240);
    if (v1 <= 0x3F)
    {
      sub_1E3DDADC8(319, &qword_1EE23B608, &qword_1ECF2A770);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_17_114();
        sub_1E3DDAE18(319, v3, v4, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          sub_1E3DDAE18(319, qword_1EE269ED8, type metadata accessor for ScoreboardObservable, MEMORY[0x1E69E6720]);
          if (v6 <= 0x3F)
          {
            sub_1E3AB4054();
            if (v7 <= 0x3F)
            {
              sub_1E3DDAE18(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
              if (v8 <= 0x3F)
              {
                sub_1E3DDAE18(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
                if (v9 <= 0x3F)
                {
                  type metadata accessor for CGRect(319);
                  if (v10 <= 0x3F)
                  {
                    sub_1E3DDBDC8(319, &qword_1EE288680, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
                    if (v12 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_7_174(v11, &qword_1EE288418, MEMORY[0x1E69E6370]);
                      if (v13 <= 0x3F)
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
}

void sub_1E3DDADC8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E3DDAE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = OUTLINED_FUNCTION_40_3();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1E3DDAE78()
{
  result = qword_1ECF38E88;
  if (!qword_1ECF38E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E98);
    sub_1E3DDAFCC();
    sub_1E3DDB13C();
    swift_getOpaqueTypeConformance2();
    sub_1E3DDB190();
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38E88);
  }

  return result;
}

unint64_t sub_1E3DDAFCC()
{
  result = qword_1ECF38EA0;
  if (!qword_1ECF38EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38E98);
    sub_1E3DDB084();
    sub_1E328FCF4(&qword_1ECF38EB8, &qword_1ECF38EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38EA0);
  }

  return result;
}

unint64_t sub_1E3DDB084()
{
  result = qword_1ECF38EA8;
  if (!qword_1ECF38EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EB0);
    sub_1E328FCF4(&qword_1ECF38EB8, &qword_1ECF38EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38EA8);
  }

  return result;
}

unint64_t sub_1E3DDB13C()
{
  result = qword_1EE297EE0[0];
  if (!qword_1EE297EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE297EE0);
  }

  return result;
}

unint64_t sub_1E3DDB190()
{
  result = qword_1EE2967D8[0];
  if (!qword_1EE2967D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2967D8);
  }

  return result;
}

void sub_1E3DDB204()
{
  sub_1E3DDADC8(319, &qword_1EE23B620, &qword_1ECF34240);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_17_114();
      sub_1E3DDAE18(319, v2, v3, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v7 <= 0x3F)
          {
            OUTLINED_FUNCTION_7_174(v6, &qword_1ECF38EC8, MEMORY[0x1E69E7DE0]);
            if (v9 <= 0x3F)
            {
              OUTLINED_FUNCTION_7_174(v8, &qword_1EE288418, MEMORY[0x1E69E6370]);
              if (v10 <= 0x3F)
              {
                sub_1E3AB4054();
                if (v11 <= 0x3F)
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

uint64_t sub_1E3DDB37C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((*(*(v4 - 8) + 64) + ((v7 + 64) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E3DDB4E8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((v20 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *v20 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((*(*(v6 - 8) + 64) + ((v10 + 64) & ~v10) + 7) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_32_0();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1E3DDB774()
{
  v0 = type metadata accessor for UnifiedOverlay.ContentProgressAndAttributes();
  OUTLINED_FUNCTION_17_2(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36270);
  return sub_1E4203AA4();
}

unint64_t sub_1E3DDB82C()
{
  result = qword_1ECF38F08;
  if (!qword_1ECF38F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF8);
    sub_1E3DDB8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F08);
  }

  return result;
}

unint64_t sub_1E3DDB8B0()
{
  result = qword_1ECF38F10;
  if (!qword_1ECF38F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F10);
  }

  return result;
}

unint64_t sub_1E3DDB904()
{
  result = qword_1ECF38F18;
  if (!qword_1ECF38F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F00);
    sub_1E328FCF4(&qword_1ECF38F20, &qword_1ECF38F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F18);
  }

  return result;
}

unint64_t sub_1E3DDB9B4()
{
  result = qword_1ECF38F40;
  if (!qword_1ECF38F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF08);
    sub_1E3DDBA38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F40);
  }

  return result;
}

unint64_t sub_1E3DDBA38()
{
  result = qword_1EE284CA8;
  if (!qword_1EE284CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29938);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284CA8);
  }

  return result;
}

unint64_t sub_1E3DDBAD4()
{
  result = qword_1ECF38F48;
  if (!qword_1ECF38F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29608);
    sub_1E3761A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38F48);
  }

  return result;
}

unint64_t sub_1E3DDBB58()
{
  result = qword_1ECF38FA0;
  if (!qword_1ECF38FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F68);
    sub_1E3DDBBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FA0);
  }

  return result;
}

unint64_t sub_1E3DDBBE4()
{
  result = qword_1ECF38FA8;
  if (!qword_1ECF38FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38F70);
    sub_1E3DDBC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FA8);
  }

  return result;
}

unint64_t sub_1E3DDBC68()
{
  result = qword_1ECF38FB0;
  if (!qword_1ECF38FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38FB8);
    sub_1E3DDBD20();
    sub_1E328FCF4(&qword_1ECF38FC8, &qword_1ECF38FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF38FB0);
  }

  return result;
}

unint64_t sub_1E3DDBD20()
{
  result = qword_1EE2A4980[0];
  if (!qword_1EE2A4980[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38FC0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A4980);
  }

  return result;
}

uint64_t sub_1E3DDBD84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E3DDBDC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E3DDBE18()
{
  result = qword_1ECF39048;
  if (!qword_1ECF39048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EF0);
    sub_1E3DDBED0();
    sub_1E328FCF4(&qword_1ECF39060, &qword_1ECF39068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39048);
  }

  return result;
}

unint64_t sub_1E3DDBED0()
{
  result = qword_1ECF39050;
  if (!qword_1ECF39050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF38EE0);
    sub_1E328FCF4(&qword_1ECF39058, &qword_1ECF38EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF39050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_62_28()
{

  return sub_1E3F5321C(39, v0, 0);
}

uint64_t sub_1E3DDBFC0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = a8;
  v11 = a2;
  v12 = a1;
  switch(a4 >> 13)
  {
    case 1:
      if ((a8 & 0xE000) != 0x2000)
      {
        goto LABEL_26;
      }

      if (a1)
      {
        if (!a5)
        {
          goto LABEL_24;
        }

        type metadata accessor for Document();
        OUTLINED_FUNCTION_19_109();
        sub_1E3DE5A48(v15, v16);
        OUTLINED_FUNCTION_122();

        v17 = sub_1E4205E84();

        v12 = 0;
        if ((v17 & 1) == 0)
        {
          return v12 & 1;
        }
      }

      else if (a5)
      {
        return v12 & 1;
      }

      if (((v11 ^ a6) & 1) == 0)
      {
        if (BYTE1(v11) == 5)
        {
          v18 = BYTE1(a6) == 5;
          goto LABEL_29;
        }

        if (BYTE1(a6) == 5)
        {
          goto LABEL_26;
        }

        sub_1E37D17DC();
        v12 = sub_1E4205E84();
      }

      return v12 & 1;
    case 2:
      if ((a8 & 0xE000) != 0x4000)
      {
        goto LABEL_26;
      }

      if (sub_1E38BBA04(a1, a5))
      {
        v12 = a6 ^ v11 ^ 1;
      }

      else
      {
        v12 = 0;
      }

      return v12 & 1;
    case 3:
      goto LABEL_26;
    case 4:
      if ((a8 & 0xE000) != 0x8000 || a6 | a5 | a7 || (a8 & 0xFFFFFF) != 0x8000)
      {
        goto LABEL_26;
      }

      v12 = 1;
      return v12 & 1;
    default:
      if (a8 & 0xE000) != 0 || ((a6 ^ a2))
      {
        goto LABEL_26;
      }

      if (a1)
      {
        if (a5)
        {
          type metadata accessor for Document();
          OUTLINED_FUNCTION_19_109();
          sub_1E3DE5A48(v13, v14);
          OUTLINED_FUNCTION_11_5();

          v12 = sub_1E4205E84();
        }

        else
        {
LABEL_24:
          sub_1E3DDC228(a1, a2, a3, a4);
          sub_1E3DDC228(0, a6, a7, v8);

LABEL_26:
          v12 = 0;
        }
      }

      else
      {
        v18 = a5 == 0;
LABEL_29:
        v12 = v18;
      }

      return v12 & 1;
  }
}

void sub_1E3DDC228(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 13) <= 3u)
  {
    v4 = a4;
    switch(a4 >> 13)
    {
      case 2:

        break;
      case 3:

        sub_1E37CDABC(a2, a3, v4);
        break;
      default:

        break;
    }
  }
}

uint64_t sub_1E3DDC32C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = OUTLINED_FUNCTION_27_0();
  sub_1E3DDC228(v3, v4, v1, v2);
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3DDC398()
{
  v5 = v1;
  OUTLINED_FUNCTION_48_1();
  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
  *(v5 + 42) = BYTE2(v0);
  v10 = OUTLINED_FUNCTION_53();
  sub_1E3DDC228(v10, v11, v2, v0);
  sub_1E39050C0(v6, v7, v8, v9);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = *(v5 + 40);
  if ((v13 & 0xE000) == 0x6000 && v12 != 0)
  {
    v15 = *(v5 + 24);
    v16 = *(v5 + 32);

    v52 = v15;
    v54 = v13;
    sub_1E3DDC228(v17, v15, v16, v13);
    v50 = *(*v5 + 344);
    v51 = *v5 + 344;
    v18 = v50();
    if (v18)
    {
      v19 = v18;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      HIDWORD(v49) = v0;
      v20 = *(*v19 + 216);

      v20(v21);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v12 + 56) && (OUTLINED_FUNCTION_8(), v22 += 72, v23 = *v22, v24 = v22, v25 = , v23(v25), OUTLINED_FUNCTION_33_65(), , v24))
    {
      OUTLINED_FUNCTION_11_13();
      (*(v26 + 304))(__src);

      memcpy(__dst, __src, sizeof(__dst));
    }

    else
    {
      __dst[0] = xmmword_1E4297170;
      memset(&__dst[1], 0, 96);
    }

    v27 = memcpy(__src, __dst, 0x70uLL);
    if ((v50)(v27))
    {
      OUTLINED_FUNCTION_30();
      (*(v28 + 224))(__src);
      sub_1E325F6F0(__dst, &qword_1ECF39098);
    }

    else
    {
      v29 = sub_1E325F6F0(__dst, &qword_1ECF39098);
    }

    if ((*(*v5 + 344))(v29))
    {
      OUTLINED_FUNCTION_30();
      (*(v30 + 208))(1, 0, 1);

      OUTLINED_FUNCTION_86_12(v31, v32, v33, v34, v35, v36, v37, v38, v49, v50, v51, v52, v53, v54);
    }

    else
    {

      OUTLINED_FUNCTION_86_12(v39, v40, v41, v42, v43, v44, v45, v46, v49, v50, v51, v52, v53, v54);
    }
  }

  v47 = OUTLINED_FUNCTION_53();
  sub_1E39050C0(v47, v48, v2, v0);
}

uint64_t sub_1E3DDC738(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 48) = a1;
}

uint64_t sub_1E3DDC774()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 72);
}

uint64_t sub_1E3DDC7EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC820(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 88) = a1;
}

uint64_t sub_1E3DDC85C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC890(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 96) = a1;
}

uint64_t sub_1E3DDC8CC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC900()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDC934()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3DDC9A8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1E3DDCA28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3DDCA98()
{
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E3DDCB04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41();
  (*(v5 + 16))(v1, a1, v3);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200654();
  swift_endAccess();
  v7 = OUTLINED_FUNCTION_27_0();
  return v8(v7);
}

uint64_t sub_1E3DDCC1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E3DDCC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_pageMetrics;
  OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
}

uint64_t sub_1E3DDCD04()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_123_1();
  sub_1E3DDCD80();
  return v0;
}

void sub_1E3DDCD80()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v55 = v5;
  v7 = v6;
  v53 = v8;
  v52 = v9;
  v11 = v10;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v56 = v13;
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v54 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  *(v0 + 16) = xmmword_1E4297170;
  *(v0 + 32) = 0;
  *(v0 + 42) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  swift_allocObject();
  *(v0 + 80) = sub_1E4200544();
  *(v0 + 88) = 0;
  v20 = (v0 + 88);
  type metadata accessor for ShowcaseValue();
  *(v0 + 96) = sub_1E40AAAB8();
  type metadata accessor for NavigationBarObservableModel(0);
  *(v0 + 104) = sub_1E39EE6D8();
  type metadata accessor for ViewMetricsRecorder();
  *(v0 + 112) = sub_1E3FEFA68();
  v21 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible;
  LOBYTE(v58[0]) = 0;
  sub_1E4200634();
  (*(v18 + 32))(&v2[v21], v1, v16);
  v22 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType] = 0;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber] = 0;
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_pageMetrics] = 0;
  v27 = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  v28 = &v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef];
  *v28 = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  *(v28 + 1) = v27;
  v2[v22] = *(v11 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType);
  swift_beginAccess();
  *v20 = v4;

  *(v2 + 7) = v52;
  *(v2 + 8) = v53;
  if (v7)
  {

    sub_1E4207414();
    sub_1E375D7E8(v58, v7, &v59);

    sub_1E375D84C(v58);
    if (*(&v60 + 1))
    {
      if (OUTLINED_FUNCTION_87_13())
      {
        v29 = v58[0];
      }

      else
      {
        v29 = 0;
      }

      v30 = v56;
      v31 = v57;
      v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions] = v29;
      goto LABEL_11;
    }
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  sub_1E325F6F0(&v59, &unk_1ECF296E0);
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions] = 0;
  if (!v7)
  {
    v59 = 0u;
    v60 = 0u;
    v30 = v56;
    v31 = v57;
LABEL_14:
    sub_1E325F6F0(&v59, &unk_1ECF296E0);
    goto LABEL_15;
  }

  v30 = v56;
  v31 = v57;
LABEL_11:
  sub_1E4207414();
  sub_1E375D7E8(v58, v7, &v59);

  sub_1E375D84C(v58);
  if (!*(&v60 + 1))
  {
    goto LABEL_14;
  }

  if (OUTLINED_FUNCTION_87_13())
  {
    v32 = v58[0];
    goto LABEL_16;
  }

LABEL_15:
  v32 = 0;
LABEL_16:
  v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_performsUpdatesInBackground] = v32;
  v33 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber;
  if (*&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_paginationSubscriber])
  {

    sub_1E42004E4();
  }

  v58[0] = *(v2 + 10);
  OUTLINED_FUNCTION_4_0();
  v34 = swift_allocObject();
  OUTLINED_FUNCTION_31_3();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E3DE5CF8;
  *(v35 + 24) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0);
  sub_1E328FCF4(&unk_1EE28A130, &unk_1ECF326C0);
  v36 = sub_1E4200844();

  *&v2[v33] = v36;

  v37 = [objc_opt_self() sharedApplication];
  v38 = [v37 launchedToTest];

  v39 = &OBJC_IVAR____TtC8VideosUI22PlayerLiveEventMonitor_stateChangeObserver;
  if (v38)
  {

    v40 = OUTLINED_FUNCTION_67_21();

    if (v40)
    {
      OUTLINED_FUNCTION_92_12();
    }
  }

  v41 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent;
  if ((v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent] & 1) != 0 || (v55 & 1) == 0)
  {
    OUTLINED_FUNCTION_92_12();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078);
    v42 = sub_1E37B2760();
    v43 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
    *&v2[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = v42;

    if (*&v2[v43])
    {
      v39 = "performsUpdatesInBackground";
      OUTLINED_FUNCTION_8();
      v45 = *(v44 + 200);

      v45(0xD000000000000023, 0x80000001E4283AD0);
      v30 = v56;
    }

    v2[v41] = 1;
    sub_1E3DDD588();
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v46(v54);

  v47 = sub_1E41FFC94();
  v48 = sub_1E4206814();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_42_9();
    v49 = OUTLINED_FUNCTION_16_2();
    v58[0] = v49;
    *v39 = 136446466;
    sub_1E3DDE028();
    sub_1E3270FC8(v50, v51, v58);
    OUTLINED_FUNCTION_33_65();

    *(v39 + 4) = v33;
    *(v39 + 6) = 1024;
    *(v39 + 14) = v55 & 1;
    _os_log_impl(&dword_1E323F000, v47, v48, "%{public}s creating new document interactor load immediately %{BOOL}d", v39, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v49);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_9();

    (*(v30 + 8))(v54, v57);
  }

  else
  {

    (*(v30 + 8))(v54, v31);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDD588()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  LODWORD(v116) = v2;
  LODWORD(v4) = v3;
  v5 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v112 = v7;
  v113 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v110 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  v105 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v105 - v12;
  v115 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v111 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v107 = v15;
  v108 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v105 - v17;
  v19 = VUISignpostLogObject();
  swift_unknownObjectRetain();
  sub_1E41FFBB4();
  sub_1E4206BA4();
  v20 = VUISignpostLogObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E4297BE0;
  v22 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  v23 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1E3283528();
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;

  OUTLINED_FUNCTION_74_19();
  v114 = v18;
  sub_1E41FFB94();

  if (v5 == 5)
  {
    goto LABEL_16;
  }

  LOBYTE(v117) = v4;
  v118 = 0;
  sub_1E37D17DC();
  OUTLINED_FUNCTION_49_48();
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_111();
    if ((*(v24 + 344))())
    {
      OUTLINED_FUNCTION_30();
      (*(v25 + 208))(0, 0, 1);
    }
  }

  LOBYTE(v117) = v4;
  v118 = 0;
  OUTLINED_FUNCTION_49_48();
  if ((sub_1E4205E84() & 1) == 0 || (v26 = [objc_opt_self() sharedApplication], v27 = objc_msgSend(v26, sel_launchedToTest), v26, !v27) || (, v28 = OUTLINED_FUNCTION_67_21(), , (v28 & 1) == 0))
  {
LABEL_16:
    if (v116)
    {
      OUTLINED_FUNCTION_111();
      v58 = (*(v57 + 296))();
      v60 = v112;
      v59 = v113;
      v61 = v110;
      if (v58)
      {

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }
    }

    else
    {
      v62 = 1;
      v60 = v112;
      v59 = v113;
      v61 = v110;
    }

    sub_1E3DDE028();
    v64 = v63;
    v66 = v65;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v67(v61);

    v68 = sub_1E41FFC94();
    sub_1E4206814();

    v69 = OUTLINED_FUNCTION_67_5();
    v109 = v4;
    v112 = v64;
    if (v69)
    {
      v4 = v61;
      v70 = swift_slowAlloc();
      v71 = OUTLINED_FUNCTION_100();
      v72 = v64;
      v73 = v71;
      v117 = v71;
      *v70 = 136315650;
      *(v70 + 4) = sub_1E3270FC8(v72, v66, &v117);
      *(v70 + 12) = 1024;
      *(v70 + 14) = v62;
      *(v70 + 18) = 1024;
      *(v70 + 20) = v116 & 1;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v74, v75, v76, v77, v70, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      v78 = v4;
      LOBYTE(v4) = v109;
      (*(v60 + 8))(v78, v59);
    }

    else
    {

      (*(v60 + 8))(v61, v59);
    }

    OUTLINED_FUNCTION_111();
    (*(v79 + 296))();
    v80 = [objc_opt_self() isSUIEnabled];
    if (v4 == 5 || !v80 || (LOBYTE(v117) = v4, v118 = 1, sub_1E37D17DC(), OUTLINED_FUNCTION_49_48(), v62 & 1 | ((sub_1E4205E84() & 1) == 0)))
    {
      OUTLINED_FUNCTION_82_16();
      sub_1E3DDFF68();
    }

    else
    {

      OUTLINED_FUNCTION_82_16();
      sub_1E3DDC398();
    }

    v81 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
    v82 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v82 && (OUTLINED_FUNCTION_111(), v84 = *(v83 + 344), v85 = , v86 = v84(v85), (*(*v82 + 304))(v86), , (v87 = *(v1 + v81)) != 0))
    {
      v88 = *(*v87 + 352);

      v90 = v88(v89);

      if (v90)
      {
        OUTLINED_FUNCTION_4_0();
        v113 = swift_allocObject();
        OUTLINED_FUNCTION_31_3();
        v91 = v111;
        v92 = v108;
        (*(v111 + 16))(v108, v114, v115);
        v93 = (*(v91 + 80) + 16) & ~*(v91 + 80);
        v94 = (v107 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
        v95 = swift_allocObject();
        v96 = v95 + v93;
        v97 = v115;
        (*(v91 + 32))(v96, v92, v115);
        v98 = (v95 + v94);
        v99 = v113;
        *v98 = v112;
        v98[1] = v66;
        v100 = v95 + ((v94 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v100 = v99;
        *(v100 + 8) = v109;
        *(v100 + 9) = v116 & 1;
        sub_1E41EC148(sub_1E3DE5C2C, v95);
        OUTLINED_FUNCTION_11_5();

        (*(v91 + 8))(v114, v97);
LABEL_35:
        *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = v92;

        goto LABEL_36;
      }

      v103 = OUTLINED_FUNCTION_45_53();
      v104(v103);
    }

    else
    {

      v101 = OUTLINED_FUNCTION_45_53();
      v102(v101);
    }

    v92 = 0;
    goto LABEL_35;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) = 1;
  type metadata accessor for StaticPPTDocumentLoader();
  v29 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext);

  sub_1E3DE271C();
  v31 = v30;

  if (!v31)
  {
    v45 = sub_1E324FBDC();
    v47 = v112;
    v46 = v113;
    v48 = v105;
    (*(v112 + 16))(v105, v45, v113);

    v49 = sub_1E41FFC94();
    v50 = sub_1E42067F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_6_21();
      v52 = OUTLINED_FUNCTION_100();
      v117 = v52;
      *v51 = 136446210;
      sub_1E3DDE028();
      sub_1E3270FC8(v53, v54, &v117);
      OUTLINED_FUNCTION_122();

      *(v51 + 4) = v29;
      _os_log_impl(&dword_1E323F000, v49, v50, "%{public}s failed to load static PPT document", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      (*(v47 + 8))(v48, v113);
    }

    else
    {

      (*(v47 + 8))(v48, v46);
    }

    goto LABEL_16;
  }

  v32 = sub_1E324FBDC();
  v34 = v112;
  v33 = v113;
  v35 = v106;
  (*(v112 + 16))(v106, v32, v113);

  v36 = sub_1E41FFC94();
  v37 = sub_1E4206814();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v34;
    v39 = OUTLINED_FUNCTION_6_21();
    v40 = OUTLINED_FUNCTION_100();
    v116 = v31;
    v117 = v40;
    v41 = v40;
    *v39 = 136446210;
    sub_1E3DDE028();
    v44 = sub_1E3270FC8(v42, v43, &v117);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1E323F000, v36, v37, "%{public}s load static PPT document", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v38 + 8))(v35, v33);
  }

  else
  {

    (*(v34 + 8))(v35, v33);
  }

  sub_1E3DDF7A4();

  v55 = OUTLINED_FUNCTION_45_53();
  v56(v55);
LABEL_36:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDE028()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E42074B4();

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);

  MEMORY[0x1E69109E0](v2, v3);

  MEMORY[0x1E69109E0](5975389, 0xE300000000000000);
  v4 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v4);

  OUTLINED_FUNCTION_69_25();
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (!v5)
  {
    v22 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (v22)
    {
      v23 = v22[5];
      v24 = v22[6];
      __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
      v25 = *(v24 + 8);

      v25(v23, v24);
      v26 = sub_1E41FE5E4();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_53();
      v30(v29);
      MEMORY[0x1E69109E0](v26, v28);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0](0x746E656D67617246, 0xEA00000000005B20);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      v31 += 37;
      v32 = *v31;
      v33 = (*v31)();
      if (!v33)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_35_10(v33);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v34 = *(v0 + 56);

      if (!v34)
      {
        goto LABEL_13;
      }

      v35 = 0x6E776F6E6B6E55;

      v37 = (v32)(v36);
      if (v37 && (OUTLINED_FUNCTION_36_56(v37), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v0))
      {
        OUTLINED_FUNCTION_8();
        v35 = (*(v38 + 368))();
        v40 = v39;
      }

      else
      {
        v40 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_28_69();
      MEMORY[0x1E69109E0](v35, v40);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0]();
    }

    goto LABEL_13;
  }

  v6 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  v7 = *(v6 + 8);

  v8 = OUTLINED_FUNCTION_146();
  v7(v8);
  sub_1E41FE5E4();
  OUTLINED_FUNCTION_16_11();
  v9 = OUTLINED_FUNCTION_53();
  v10(v9);
  v11 = OUTLINED_FUNCTION_146();
  MEMORY[0x1E69109E0](v11);

  OUTLINED_FUNCTION_69_25();

  v12 = 0xE90000000000005BLL;
  MEMORY[0x1E69109E0](0x2074736575716552, 0xE90000000000005BLL);

  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 296);
  v15 = v14();
  if (v15)
  {
    OUTLINED_FUNCTION_35_10(v15);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v16 = *(v0 + 56);

    if (v16)
    {
      OUTLINED_FUNCTION_81_19();

      v18 = (v14)(v17);
      if (v18 && (OUTLINED_FUNCTION_36_56(v18), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v0))
      {
        OUTLINED_FUNCTION_8();
        v12 = (*(v19 + 368))();
        v21 = v20;
      }

      else
      {
        v21 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_28_69();
      MEMORY[0x1E69109E0](v12, v21);

      OUTLINED_FUNCTION_69_25();

      MEMORY[0x1E69109E0]();
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DDE570()
{
  sub_1E3DDE6B8();
  sub_1E39050C0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor__documentViewIsVisible;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation, &qword_1ECF39080);

  return v0;
}

void sub_1E3DDE6B8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v43 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v46 = v13;
  v45 = v14;
  (v14)(v2);

  v15 = sub_1E41FFC94();
  v16 = sub_1E4206814();

  v44 = v3;
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_6_21();
    v17 = OUTLINED_FUNCTION_36_6();
    v48 = v17;
    OUTLINED_FUNCTION_64_25(4.8751e-34);
    sub_1E3270FC8(v18, v19, &v48);
    OUTLINED_FUNCTION_63_2();
    *(v1 + 4) = v5;
    OUTLINED_FUNCTION_88_15(&dword_1E323F000, v20, v21, "%{public}s cancelServiceRequests: begin");
    __swift_destroy_boxed_opaque_existential_1(v17);
    v3 = v44;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_65_0();
  }

  v22 = *(v5 + 8);
  v22(v2, v3);
  OUTLINED_FUNCTION_111();
  v24 = (*(v23 + 296))();
  if (v24)
  {
    OUTLINED_FUNCTION_35_10(v24);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v1 = *(v0 + 56);

    if (v1)
    {
      sub_1E411021C();
    }
  }

  v25 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
  v26 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (v26)
  {
    v42 = v22;
    v45(v43, v46, v3);

    v27 = sub_1E41FFC94();
    v28 = sub_1E4206814();

    if (os_log_type_enabled(v27, v28))
    {
      OUTLINED_FUNCTION_6_21();
      v47 = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_64_25(4.8751e-34);
      OUTLINED_FUNCTION_38_8(v29, v30);
      OUTLINED_FUNCTION_63_2();
      *(v1 + 4) = v5;
      OUTLINED_FUNCTION_88_15(&dword_1E323F000, v31, v32, "%{public}s cancelServiceRequests: cancel activeServiceRequest");
      __swift_destroy_boxed_opaque_existential_1(v47);
      v3 = v44;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_65_0();
    }

    v22 = v42;
    v33 = (v42)(v43, v3);
    (*(*v26 + 376))(v33);

    *(v0 + v25) = 0;
  }

  v34 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest;
  v35 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
  if (v35)
  {
    v45(v9, v46, v3);

    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_6_21();
      v38 = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_64_25(4.8751e-34);
      OUTLINED_FUNCTION_38_8(v39, v40);
      OUTLINED_FUNCTION_33_65();

      *(v1 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v36, v37, "%{public}s cancelServiceRequests: cancel activeFragmentServiceRequest", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_65_0();

      v41 = (v22)(v9, v44);
    }

    else
    {

      v41 = (v22)(v9, v3);
    }

    (*(*v35 + 376))(v41);

    *(v0 + v34) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DDEB70()
{
  sub_1E3DDE570();
  OUTLINED_FUNCTION_36();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1E3DDEBC4()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestContext))
  {
    v10 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent;
    if ((*(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078);

      *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = sub_1E37B2760();

      OUTLINED_FUNCTION_8();
      (*(v11 + 200))(0xD000000000000021, v12 | 0x8000000000000000);

      *(v0 + v9) = 0;

      *(v0 + v10) = 1;
      v13 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v13, v2);

      v14 = sub_1E41FFC94();
      v15 = sub_1E4206814();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_6_21();
        v20 = OUTLINED_FUNCTION_100();
        v21 = v20;
        *v16 = 136446210;
        sub_1E3DDE028();
        v19 = sub_1E3270FC8(v17, v18, &v21);

        *(v16 + 4) = v19;
        _os_log_impl(&dword_1E323F000, v14, v15, "%{public}s performing initial request", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      (*(v4 + 8))(v8, v2);
      sub_1E3DDD588();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDEE1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v51 = v6;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E3DDE028();
  v12 = v11;
  v14 = v13;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v15(v10);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();

  if (os_log_type_enabled(v16, v17))
  {
    swift_slowAlloc();
    v52[0] = OUTLINED_FUNCTION_16_2();
    *v5 = 136315650;
    v18 = sub_1E3270FC8(v12, v14, v52);

    *(v5 + 4) = v18;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v51 & 1;
    *(v5 + 18) = 1024;
    *(v5 + 20) = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates);

    _os_log_impl(&dword_1E323F000, v16, v17, "%s updateDocumentVisibility to %{BOOL}d hasPendingViewUpdates %{BOOL}d", v5, 0x18u);
    OUTLINED_FUNCTION_98_14();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v19 = OUTLINED_FUNCTION_123_1();
    v20(v19);
  }

  else
  {

    v21 = OUTLINED_FUNCTION_123_1();
    v22(v21);
  }

  sub_1E3DDCA28();
  OUTLINED_FUNCTION_111();
  if (((*(v23 + 440))() & 1) != 0 && *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 0;
    sub_1E3DDF3D8();
  }

  OUTLINED_FUNCTION_111();
  if (((*(v24 + 440))() & 1) == 0)
  {
    v31 = v5 | v3;
    v32 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
    if (v32)
    {
      v33 = v32;
      sub_1E3B056A4();
    }

    sub_1E3DE2678(v31 & 1);
    if (v5)
    {
      sub_1E3DDE6B8();
      goto LABEL_40;
    }

    v34 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v34)
    {
      sub_1E327F454(v34 + 16, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
      OUTLINED_FUNCTION_106();
      type metadata accessor for DocumentServiceRequestContext();
      if (swift_dynamicCast())
      {
        if (sub_1E37D01CC())
        {
          OUTLINED_FUNCTION_111();
          v36 = (*(v35 + 296))();

          if (!v36)
          {
            goto LABEL_40;
          }
        }
      }
    }

    sub_1E3DE1228();
    goto LABEL_40;
  }

  v25 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest;
  if (!*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest))
  {
    v29 = 0;
    v30 = 0;
    if (!*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_8();
  v27 = *(v26 + 168);

  v29 = v27(v28);

  if (*(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
  {
LABEL_22:
    OUTLINED_FUNCTION_8();
    v38 = *(v37 + 168);

    v30 = v38(v39);

    if ((v29 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_23:
    v30 = 1;
    goto LABEL_24;
  }

  if (v29)
  {
    goto LABEL_23;
  }

  v30 = 0;
LABEL_24:
  OUTLINED_FUNCTION_111();
  v41 = (*(v40 + 296))();
  if (v41)
  {
    OUTLINED_FUNCTION_35_10(v41);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v42 = *(v1 + 56);

    if (v42)
    {

LABEL_28:
      v43 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
      if (v43 && (v44 = OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_isDocumentDirty, OUTLINED_FUNCTION_25(), swift_beginAccess(), *(v43 + v44) == 1))
      {
        sub_1E3DDE6B8();
      }

      else
      {
        sub_1E3DE16F4();
        if (*(v1 + v25))
        {
          goto LABEL_40;
        }
      }

      goto LABEL_32;
    }
  }

  if (v30)
  {
    goto LABEL_28;
  }

LABEL_32:
  OUTLINED_FUNCTION_111();
  v46 = (*(v45 + 320))();
  v47 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v46)
  {
    if (v47)
    {
      v48 = v47;
      sub_1E3B050F0();
    }

    OUTLINED_FUNCTION_111();
    (*(v49 + 328))(0);
  }

  else if (v47)
  {
    v50 = v47;
    sub_1E3B050E8();
    sub_1E3B050F0();
  }

LABEL_40:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDF3D8()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v7, v3);

  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v34 = v11;
    *v10 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v12, v13, &v34);
    OUTLINED_FUNCTION_33_65();

    *(v10 + 4) = v2;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v14, v15, "%{public}s signalStateChangeWithAnimationIfNeeded");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();
  }

  v16 = OUTLINED_FUNCTION_74();
  v17(v16);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_supportsAnimatedStateTransitions) != 1)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_111();
  v18 += 34;
  v19 = *v18;
  v21 = (*v18)(v20);
  v25 = v22;
  if ((v24 & 0xE000) == 0x2000)
  {
    sub_1E39050C0(v21, v22, v23, v24);
    if (v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E39050C0(v21, v22, v23, v24);
  }

  v27 = v19(v26);
  v31 = v30;
  if ((v30 & 0xE000) != 0x6000)
  {
    sub_1E39050C0(v27, v28, v29, v30);
    goto LABEL_12;
  }

  sub_1E37CD868(v28, v29, v30);

  if ((v31 & 0x100) == 0)
  {
LABEL_12:
    type metadata accessor for DocumentInteractor();
    OUTLINED_FUNCTION_18_98();
    sub_1E3DE5A48(v32, v33);
    OUTLINED_FUNCTION_20_2();
    sub_1E4200514();
    sub_1E4200594();
    goto LABEL_13;
  }

LABEL_10:
  sub_1E4203E44();
  sub_1E4200FE4();
LABEL_13:

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDF698()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v1)
  {
    v2 = v1;
    sub_1E3B04344();
  }
}

uint64_t sub_1E3DDF70C(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_1E3DDF7A4();
    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialRequestSent) = 1;

    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();

    *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 0;
  }

  return result;
}

void sub_1E3DDF7A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v77 = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_5();
  v76 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v6 + 56))
  {
    OUTLINED_FUNCTION_8();
    v16 = *(v15 + 1000);

    v16(v17);
    v19 = v18;

    if (v19)
    {
    }

    else if (*(v6 + 56))
    {
      v20 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
      v75 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
      OUTLINED_FUNCTION_8();
      v22 = *(v21 + 1008);

      v22(v75, v20);
    }
  }

  if ((v4 == 5 || (LOBYTE(v80) = v4, v79 = 0, sub_1E37D17DC(), (sub_1E4205E84() & 1) == 0)) && (v23 = *(v6 + 56)) != 0)
  {
    LOBYTE(v80) = *(v23 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
    v79 = 10;
    sub_1E3905190();
    v24 = sub_1E4205E84();
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_1E324FBDC();
  v26 = *(v9 + 16);
  v74 = v25;
  v75 = v9 + 16;
  v73 = v26;
  (v26)(v14);

  v27 = sub_1E41FFC94();
  v28 = sub_1E4206814();

  v29 = os_log_type_enabled(v27, v28);
  v78 = v4;
  if (v29)
  {
    v30 = OUTLINED_FUNCTION_42_9();
    v31 = OUTLINED_FUNCTION_100();
    v70 = v6;
    v69 = v9;
    v32 = v7;
    v33 = v31;
    v80 = v31;
    *v30 = 136446466;
    sub_1E3DDE028();
    OUTLINED_FUNCTION_97_4(v34, v35);
    OUTLINED_FUNCTION_63_2();
    *(v30 + 4) = v24;
    *(v30 + 12) = 1024;
    *(v30 + 14) = v24 & 1;
    _os_log_impl(&dword_1E323F000, v27, v28, "%{public}s will update with new document, restoreOldTemplate: [%{BOOL}d]", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v7 = v32;
    v9 = v69;
    v6 = v70;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v72 = *(v9 + 8);
  v72(v14, v7);
  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_111();
    v37 = (*(v36 + 296))();
    if (v37)
    {
      v38 = v37;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v39 = *(v38 + 56);

      if (v39)
      {
        OUTLINED_FUNCTION_8();
        (*(v40 + 1176))(0, 0);
      }
    }

    if (*(v6 + 56))
    {
      OUTLINED_FUNCTION_8();
      v42 = *(v41 + 1176);

      v42(v1, &off_1F5D861A0);
    }
  }

  v43 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController;
  v44 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v44)
  {
    v45 = v44;
    j__OUTLINED_FUNCTION_18();
    sub_1E3B056A4();
  }

  sub_1E3DE2678(1);
  if ((v24 & 1) == 0)
  {
    v49 = *(v6 + 56);

    if (!v49)
    {
LABEL_24:
      if (v24)
      {
        goto LABEL_39;
      }

LABEL_38:

      v62 = v6;
      goto LABEL_42;
    }

LABEL_27:
    LODWORD(v70) = v24;
    v50 = *(v6 + 56);
    if (v50)
    {
      v51 = *(*v50 + 1000);

      v51(v52);
      v54 = v53;

      if (v54)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_81_19();
LABEL_32:
    v55 = *(v1 + v43);
    v71 = v7;
    if (v55)
    {
      v56 = *(v55 + OBJC_IVAR____TtC8VideosUI28UpdateEventMonitorController_updateEventStore);
    }

    type metadata accessor for UpdateEventMonitorController();
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    OUTLINED_FUNCTION_31_3();

    sub_1E3B03DA0();
    v57 = *(v1 + v43);
    *(v1 + v43) = v58;

    OUTLINED_FUNCTION_9_2();
    if ((*(v59 + 440))())
    {
      v60 = *(v1 + v43);
      if (v60)
      {
        v61 = v60;
        sub_1E3B050E8();
        sub_1E3B050F0();
      }
    }

    v7 = v71;
    if (v70)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  OUTLINED_FUNCTION_111();
  v47 = (*(v46 + 296))();
  if (v47)
  {
    OUTLINED_FUNCTION_35_10(v47);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v48 = *(v1 + 56);

    if (!v48)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

LABEL_39:
  v63 = v76;
  v73(v76, v74, v7);

  v64 = sub_1E41FFC94();
  v65 = sub_1E42067F4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1E323F000, v64, v65, "Error encountered while updating", v66, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v72(v63, v7);
  OUTLINED_FUNCTION_9_2();
  v62 = (*(v67 + 296))();

LABEL_42:
  swift_beginAccess();
  *(v1 + 48) = v62;

  sub_1E3DDFF68();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DDFF68()
{
  OUTLINED_FUNCTION_48_1();
  sub_1E3DDC228(v1, v2, v3, v4);
  OUTLINED_FUNCTION_53();
  sub_1E3DDC398();
  OUTLINED_FUNCTION_36();
  if (((*(v5 + 440))() & 1) != 0 || *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_performsUpdatesInBackground) == 1)
  {

    sub_1E3DDF3D8();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_hasPendingViewUpdates) = 1;
  }
}

uint64_t sub_1E3DE002C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DocumentInteractor();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

void sub_1E3DE009C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v1;
  v5 = v4;
  v120 = v6;
  v117 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v116 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v119 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v118 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v113 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v112 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v114 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_36();
  v22 = *(v21 + 296);
  v23 = v22();
  if (v23 && (v24 = v23, OUTLINED_FUNCTION_25(), swift_beginAccess(), v25 = *(v24 + 56), , , v25) && (OUTLINED_FUNCTION_8(), v27 = (*(v26 + 1000))(), v29 = v28, v30 = , v29))
  {
    v115 = v27;
  }

  else
  {
    v29 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
    v115 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
  }

  if (!(v22)(v30) || (OUTLINED_FUNCTION_25(), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_56_30();
    v34(v0);

    v35 = sub_1E41FFC94();
    v36 = sub_1E4206814();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_49_0();
      v121[0] = OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_95_18(4.8752e-34);
      OUTLINED_FUNCTION_96_17(v38, v39);
      OUTLINED_FUNCTION_11_5();

      *(v37 + 4) = v3;
      *(v37 + 12) = 2080;
      v40 = ViewModelRequestType.rawValue.getter(v120);
      OUTLINED_FUNCTION_96_17(v40, v41);
      OUTLINED_FUNCTION_11_5();

      *(v37 + 14) = v3;
      OUTLINED_FUNCTION_90_17(&dword_1E323F000, v42, v43, "%{public}s Failed to execute command [%s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v2 + 8))(v0, v119);
    goto LABEL_50;
  }

  if (sub_1E37D01CC())
  {
    v32 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
    if (v32)
    {
      sub_1E327F454(v32 + 16, v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
      type metadata accessor for DocumentServiceRequestContext();
      if (OUTLINED_FUNCTION_65_25())
      {
        v33 = *(*&v124[0] + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates);

        if (v33 != 1)
        {
LABEL_22:
          v46 = sub_1E324FBDC();
          (*(v118 + 16))(v2, v46, v119);

          v47 = sub_1E41FFC94();
          v48 = sub_1E4206814();

          v111 = v48;
          if (os_log_type_enabled(v47, v48))
          {
            v49 = OUTLINED_FUNCTION_42_9();
            v50 = OUTLINED_FUNCTION_100();
            v121[0] = v50;
            *v49 = 136446466;
            sub_1E3DDE028();
            v110 = OUTLINED_FUNCTION_96_17(v51, v52);

            *(v49 + 4) = v110;
            *(v49 + 12) = 1024;
            *(v49 + 14) = 0;
            _os_log_impl(&dword_1E323F000, v47, v111, "%{public}s transferred animated flag, animated = %{BOOL}d", v49, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v50);
            OUTLINED_FUNCTION_65_0();
            OUTLINED_FUNCTION_6_0();
          }

          (*(v118 + 8))(v2, v119);
          v5 = 0;
          goto LABEL_25;
        }
      }
    }

    else if (!*(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest))
    {
      goto LABEL_25;
    }

    v44 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (v44)
    {
      sub_1E327F454(v44 + 16, v121);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
      type metadata accessor for DocumentServiceRequestContext();
      if (OUTLINED_FUNCTION_65_25())
      {
        v45 = *(*&v124[0] + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates);

        if (v45 != 1)
        {
          goto LABEL_22;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }

    v5 = 1;
  }

LABEL_25:
  type metadata accessor for DocumentServiceRequestContext();
  v53 = *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_documentType);
  *&v54 = OUTLINED_FUNCTION_8_150();
  v124[0] = v54;
  v124[1] = v54;
  Strong;
  DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v53, v120, v115, v29, Strong, v121, v124, v5 & 1);
  v55 = v22();
  if (v55 && (OUTLINED_FUNCTION_36_56(v55), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v3) && (OUTLINED_FUNCTION_8(), (*(v56 + 1024))(), OUTLINED_FUNCTION_35_2(), v53))
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_85_16(v57);
  }

  else
  {
    OUTLINED_FUNCTION_8_150();
  }

  OUTLINED_FUNCTION_11_13();
  v59 = (*(v58 + 224))(v121);
  v60 = (v22)(v59);
  if (v60)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_33();

    if (v3)
    {
      sub_1E39C1AA0();
      OUTLINED_FUNCTION_35_2();
    }

    else
    {
      v60 = 0;
    }
  }

  OUTLINED_FUNCTION_11_13();
  v62 = (*(v61 + 272))(v60);
  v63 = (v22)(v62);
  if (v63 && (OUTLINED_FUNCTION_36_56(v63), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , v3) && (OUTLINED_FUNCTION_8(), (*(v64 + 1072))(), OUTLINED_FUNCTION_35_2(), v60))
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    OUTLINED_FUNCTION_85_16(v65);
  }

  else
  {
    OUTLINED_FUNCTION_8_150();
  }

  OUTLINED_FUNCTION_11_13();
  (*(v66 + 248))(v121);
  v67 = sub_1E4206BA4();
  v68 = VUISignpostLogObject();
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  (*(v116 + 8))(v11, v117);
  if (sub_1E37D01CC())
  {
    sub_1E3DDE6B8();
    sub_1E324FBDC();
    OUTLINED_FUNCTION_56_30();
    v69(v114);

    v70 = sub_1E41FFC94();
    v71 = sub_1E4206814();

    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_42_9();
      v121[0] = OUTLINED_FUNCTION_36_6();
      OUTLINED_FUNCTION_95_18(4.8752e-34);
      v74 = OUTLINED_FUNCTION_96_17(v72, v73);

      *(v5 + 4) = v74;
      *(v5 + 12) = 1024;
      *(v5 + 14) = v5 & 1;
      OUTLINED_FUNCTION_48_38();
      _os_log_impl(v75, v76, v77, v78, v79, 0x12u);
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_65_0();
    }

    (*(v120 + 8))(v114, v119);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39078);
    *(v3 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = sub_1E37B2760();

    (*(*v3 + 344))(v86);
    OUTLINED_FUNCTION_9_2();
    (*(v87 + 304))();

    sub_1E3DDD588();
    goto LABEL_49;
  }

  if ((sub_1E37D01CC() & 1) == 0)
  {
LABEL_49:

    OUTLINED_FUNCTION_94_17();
    goto LABEL_50;
  }

  v80 = v22();
  if (v80)
  {
    OUTLINED_FUNCTION_36_56(v80);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_54_33();

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      (*(v81 + 1048))();
      OUTLINED_FUNCTION_35_2();
      if (v67)
      {
        OUTLINED_FUNCTION_11_13();
        v83 = (*(v82 + 296))(v67);
        v84 = (v22)(v83);
        if (v84)
        {
          OUTLINED_FUNCTION_35_10(v84);
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v85 = v3[7];
        }

        else
        {
          v85 = 0;
        }

        OUTLINED_FUNCTION_11_13();
        (*(v98 + 200))(v85);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_51_4();
        v99(v112);

        v100 = sub_1E41FFC94();
        v101 = sub_1E4206814();

        if (os_log_type_enabled(v100, v101))
        {
          OUTLINED_FUNCTION_6_21();
          v122 = OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_95_18(4.8751e-34);
          v104 = sub_1E3270FC8(v102, v103, &v122);

          *(v5 + 4) = v104;
          OUTLINED_FUNCTION_48_38();
          _os_log_impl(v105, v106, v107, v108, v109, 0xCu);
          OUTLINED_FUNCTION_5_175();
          OUTLINED_FUNCTION_65_0();
        }

        (*(v118 + 8))(v112, v119);
        sub_1E3DE0E8C();
        goto LABEL_49;
      }
    }
  }

  v88 = sub_1E324FBDC();
  (*(v118 + 16))(v113, v88, v119);

  v89 = sub_1E41FFC94();
  v90 = sub_1E42067F4();

  if (os_log_type_enabled(v89, v90))
  {
    OUTLINED_FUNCTION_6_21();
    v123 = OUTLINED_FUNCTION_36_6();
    OUTLINED_FUNCTION_95_18(4.8751e-34);
    sub_1E3270FC8(v91, v92, &v123);
    OUTLINED_FUNCTION_11_5();

    *(v5 + 4) = v3;
    OUTLINED_FUNCTION_48_38();
    _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_94_17();
  }

  else
  {

    OUTLINED_FUNCTION_94_17();
  }

  (*(v118 + 8))(v113, v119);
LABEL_50:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE0E8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  OUTLINED_FUNCTION_106();
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39088);
  OUTLINED_FUNCTION_20_2();
  v12 = sub_1E37B2760();
  v13 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest;
  *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest) = v12;

  OUTLINED_FUNCTION_8();
  (*(v14 + 200))(0xD000000000000012, v15 | 0x8000000000000000);

  v16 = *(v0 + v13);
  if (v16)
  {
    v17 = v5;
    v18 = *(*v0 + 344);

    v20 = v18(v19);
    v5 = v17;
    (*(*v16 + 304))(v20);
  }

  v21 = sub_1E324FBDC();
  (*(v7 + 16))(v11, v21, v5);

  v22 = sub_1E41FFC94();
  v23 = sub_1E4206814();

  if (os_log_type_enabled(v22, v23))
  {
    v34 = v3;
    v24 = OUTLINED_FUNCTION_6_21();
    v25 = OUTLINED_FUNCTION_100();
    v36 = v25;
    *v24 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v26, v27, &v36);
    OUTLINED_FUNCTION_11_5();

    *(v24 + 4) = v5;
    _os_log_impl(&dword_1E323F000, v22, v23, "%{public}s Starting fragment update request", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_6_0();
    v3 = v34;
    OUTLINED_FUNCTION_6_0();

    (*(v7 + 8))(v11, v5);
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  v28 = *(v0 + v13);
  if (v28 && (v29 = *(*v28 + 352), v30 = , v31 = v29(v30), , v31))
  {
    OUTLINED_FUNCTION_4_0();
    v32 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v35;
    v33[4] = v3;
    sub_1E34AF604(v35);
    sub_1E41EC148(sub_1E3DE5A8C, v33);
    OUTLINED_FUNCTION_11_5();
  }

  else
  {
    v32 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = v32;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE1228()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v41 = v11;
  v42 = v12;
  v40 = v13;
  (v13)(v2);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_6_21();
    LODWORD(v39) = v15;
    v16 = OUTLINED_FUNCTION_16_2();
    v38 = v3;
    v44 = v16;
    *v15 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v17, v18, &v44);
    OUTLINED_FUNCTION_63_2();
    *(v15 + 4) = v5;
    OUTLINED_FUNCTION_103_0(&dword_1E323F000, v14, v39, "%{public}s suspendServiceRequests: begin");
    OUTLINED_FUNCTION_98_14();
    v3 = v38;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_9();
  }

  v19 = *(v5 + 8);
  v20 = v19(v2, v3);
  v21 = (*(*v1 + 296))(v20);
  if (v21)
  {
    OUTLINED_FUNCTION_35_10(v21);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v15 = v1[7];

    if (v15)
    {
      sub_1E410FD34();
    }
  }

  v22 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  v39 = v19;
  if (v22)
  {
    v40(v9, v41, v3);

    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_6_21();
      v25 = OUTLINED_FUNCTION_16_2();
      v38 = v3;
      v43 = v25;
      *v15 = 136446210;
      sub_1E3DDE028();
      OUTLINED_FUNCTION_38_8(v26, v27);
      v37 = v9;
      OUTLINED_FUNCTION_63_2();
      *(v15 + 4) = v5;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v23, v24, "%{public}s suspendServiceRequests: suspend activeServiceRequest");
      OUTLINED_FUNCTION_98_14();
      v3 = v38;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      v28 = v37;
    }

    else
    {

      v28 = v9;
    }

    v19 = v39;
    v29 = v39(v28, v3);
    (*(*v22 + 360))(v29);
  }

  v30 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
  if (v30)
  {
    v40(v0, v41, v3);

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();

    if (os_log_type_enabled(v31, v32))
    {
      OUTLINED_FUNCTION_6_21();
      v43 = OUTLINED_FUNCTION_16_2();
      *v15 = 136446210;
      sub_1E3DDE028();
      OUTLINED_FUNCTION_38_8(v33, v34);
      OUTLINED_FUNCTION_122();

      *(v15 + 4) = v1;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v31, v32, "%{public}s suspendServiceRequests: suspended activeFragmentServiceRequest");
      OUTLINED_FUNCTION_98_14();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_9();

      v35 = v39(v0, v3);
    }

    else
    {

      v36 = OUTLINED_FUNCTION_27_0();
      v35 = (v19)(v36);
    }

    (*(*v30 + 360))(v35);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE16F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v64 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v12 = sub_1E324FBDC();
  v13 = *(v5 + 2);
  v65 = v12;
  v66 = v13;
  v67 = v5 + 16;
  (v13)(v11);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = os_log_type_enabled(v14, v15);
  v68 = v0;
  if (v16)
  {
    v17 = v3;
    v18 = OUTLINED_FUNCTION_6_21();
    v19 = OUTLINED_FUNCTION_100();
    v70 = v19;
    *v18 = 136446210;
    sub_1E3DDE028();
    sub_1E3270FC8(v20, v21, &v70);
    OUTLINED_FUNCTION_63_2();
    *(v18 + 4) = v2;
    _os_log_impl(&dword_1E323F000, v14, v15, "%{public}s resumeServiceRequests: begin", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    v3 = v17;
    OUTLINED_FUNCTION_6_0();

    v22 = *(v5 + 1);
    v23 = v22(v11, v17);
  }

  else
  {

    v22 = *(v5 + 1);
    v23 = v22(v11, v3);
  }

  v24 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest);
  if (!v24)
  {
    v40 = (*(*v1 + 296))(v23);
    if (v40)
    {
      OUTLINED_FUNCTION_36_56(v40);
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_54_33();

      if (v1)
      {
        sub_1E410FFA8();
      }
    }

    v24 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest);
    if (!v24)
    {
      goto LABEL_31;
    }

    v41 = v64;
    v66(v64, v65, v3);

    v42 = sub_1E41FFC94();
    v43 = sub_1E4206814();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_6_21();
      v45 = OUTLINED_FUNCTION_100();
      v69 = v45;
      *v44 = 136446210;
      sub_1E3DDE028();
      v48 = OUTLINED_FUNCTION_38_8(v46, v47);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1E323F000, v42, v43, "%{public}s resumeServiceRequests: resume activeFragmentServiceRequest", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      v49 = v64;
LABEL_30:
      v58 = v22(v49, v3);
      (*(*v24 + 368))(v58);

LABEL_31:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_29:
    v49 = v41;
    goto LABEL_30;
  }

  v25 = *(*v1 + 296);

  v27 = v25(v26);
  if (!v27 || (OUTLINED_FUNCTION_36_56(v27), OUTLINED_FUNCTION_25(), swift_beginAccess(), OUTLINED_FUNCTION_54_33(), , !v1))
  {
LABEL_26:
    v41 = v68;
    v66(v68, v65, v3);

    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = v24;
      v53 = OUTLINED_FUNCTION_6_21();
      v54 = OUTLINED_FUNCTION_100();
      v69 = v54;
      *v53 = 136446210;
      sub_1E3DDE028();
      v57 = OUTLINED_FUNCTION_38_8(v55, v56);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1E323F000, v50, v51, "%{public}s resumeServiceRequests: resume activeServiceRequest", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_6_0();
      v24 = v52;
      OUTLINED_FUNCTION_6_0();

      v49 = v68;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v61 = v24;
  v62 = v22;
  v63 = v1;
  v64 = v5;
  v28 = sub_1E410F81C();

  v29 = sub_1E3798694(v28);
  if (!v29)
  {

LABEL_25:
    v24 = v61;
    v22 = v62;
    goto LABEL_26;
  }

  v30 = v29;
  v60 = v3;
  v69 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v29 & ~(v29 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v69;
    do
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v31, v28);
      }

      else
      {
      }

      OUTLINED_FUNCTION_8();
      v34 = (*(v33 + 376))();
      v36 = v35;

      v69 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E377FD30((v37 > 1), v38 + 1, 1);
        v32 = v69;
      }

      ++v31;
      *(v32 + 16) = v38 + 1;
      v39 = v32 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
    }

    while (v30 != v31);

    v3 = v60;
    goto LABEL_25;
  }

  __break(1u);
}

uint64_t sub_1E3DE1D10(uint64_t a1)
{
  *(v1 + 40) = a1;
  OUTLINED_FUNCTION_169();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3DE1D3C()
{
  v39 = v0;
  v1 = *(v0 + 40);
  *(v0 + 16) = sub_1E32859C4(v1, &selRef_documentType);
  *(v0 + 24) = v2;
  sub_1E3DE55E0();
  sub_1E4149694();
  if (*(v0 + 80) == 8)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 80);
  }

  v4 = sub_1E32859C4(v1, &selRef_controllerRef);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v8 = [*(v0 + 40) documentRef];
    v6 = sub_1E4205F14();
    v7 = v9;
  }

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 appController];

  if (v11)
  {
    v12 = [v11 appContext];
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 40);
  type metadata accessor for DocumentServiceRequestContext();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = OUTLINED_FUNCTION_18();
  *(v0 + 48) = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v3, 0, v6, v7, v12, &v35, &v37, v14 & 1);
  v15 = [v13 contextData];
  if (v15 && (v16 = v15, v17 = [v15 jsonData], v16, v17))
  {
    v18 = sub_1E4205C64();

    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v37 = v18;
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v19 = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  (*(v20 + 224))(&v37);
  v21 = [v19 prefetchData];
  if (v21 && (v22 = v21, v23 = [v21 jsonData], v22, v23))
  {
    v24 = sub_1E4205C64();

    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
    *&v37 = v24;
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  OUTLINED_FUNCTION_8();
  (*(v25 + 248))(&v37);
  type metadata accessor for DocumentInteractor();
  v26 = swift_allocObject();
  *(v0 + 56) = v26;

  sub_1E3DDCD80();
  v27 = swift_task_alloc();
  *(v0 + 64) = v27;
  type metadata accessor for Document();
  *v27 = v0;
  v27[1] = sub_1E3DE2124;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v28, v29, v30, 0xD00000000000001ELL, v31, v32, v26, v33);
}

uint64_t sub_1E3DE2124()
{
  *(*v1 + 72) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E3DE2234()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E3DE22A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E3DE2310()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v22 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070);
  OUTLINED_FUNCTION_2();
  (*(v17 + 16))(v15, v0, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_11_3();
  sub_1E3DE59A0(v15, v3 + v18);
  swift_endAccess();
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v19 = sub_1E4206A04();
  v25[4] = sub_1E3DE5A10;
  v25[5] = v3;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1E329EEC4;
  v25[3] = &block_descriptor_115;
  v20 = _Block_copy(v25);

  sub_1E4203FE4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1E3DE5A48(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v12, v1, v20);
  _Block_release(v20);

  (*(v23 + 8))(v1, v4);
  (*(v8 + 8))(v12, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2678(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
  if (v2 && (a1 & 1) != 0)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedMonitor];
    [v5 removeObserver_];
  }
}

void sub_1E3DE271C()
{
  OUTLINED_FUNCTION_31_1();
  v9 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E3DE5560();
  sub_1E3DE5560();

  sub_1E41FE344();
  sub_1E41FE424();
  (*(v4 + 8))(v8, v2);
  sub_1E3280A90(0, &qword_1ECF39090);
  sub_1E4206954();

  sub_1E37E93E8(v13, v10, &unk_1ECF296E0);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      if (v9)
      {
        type metadata accessor for Document();
        OUTLINED_FUNCTION_106();
        v11 = type metadata accessor for DocumentServiceRequestContext();
        v12 = &off_1F5D583B8;
        v10[0] = v9;
        swift_retain_n();
        sub_1E4017924();
        OUTLINED_FUNCTION_68_27();

        sub_1E325F6F0(v13, &unk_1ECF296E0);
      }

      else
      {
        sub_1E325F6F0(v13, &unk_1ECF296E0);
        OUTLINED_FUNCTION_68_27();
      }
    }

    else
    {
      sub_1E325F6F0(v13, &unk_1ECF296E0);
      OUTLINED_FUNCTION_68_27();
    }
  }

  else
  {
    sub_1E325F6F0(v13, &unk_1ECF296E0);
    OUTLINED_FUNCTION_68_27();
    sub_1E325F6F0(v10, &unk_1ECF296E0);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2BF4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4206B94();
  v13 = VUISignpostLogObject();
  sub_1E41FFBA4();

  v14 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v14, v6);

  v15 = sub_1E41FFC94();
  LOBYTE(v13) = sub_1E4206814();

  if (os_log_type_enabled(v15, v13))
  {
    OUTLINED_FUNCTION_6_21();
    v25[0] = OUTLINED_FUNCTION_36_6();
    *v5 = 136315138;
    *(v5 + 4) = sub_1E3270FC8(v3, v1, v25);
    OUTLINED_FUNCTION_13_24(&dword_1E323F000, v16, v17, "%s Received fetch document response");
    OUTLINED_FUNCTION_5_175();
    OUTLINED_FUNCTION_65_0();
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    sub_1E4206BA4();
    v20 = VUISignpostLogObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E4297BE0;
    v23 = *(v19 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
    v22 = *(v19 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 64) = sub_1E3283528();
    *(v21 + 32) = v23;
    *(v21 + 40) = v22;

    OUTLINED_FUNCTION_74_19();
    sub_1E41FFB94();

    sub_1E3DE2F20();
    sub_1E4206B94();
    v24 = VUISignpostLogObject();
    sub_1E41FFBA4();

    *(v19 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE2F20()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v43 = v3;
  LODWORD(v44) = v2;
  v5 = v4;
  v7 = v6;
  v45 = v8;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  sub_1E3DDE028();
  v20 = v19;
  v22 = v21;
  v23 = sub_1E324FBDC();
  v24 = *(v11 + 16);
  if ((v5 & 0x100) != 0)
  {
    v24(v15, v23, v9);

    v31 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      v32 = OUTLINED_FUNCTION_6_21();
      v44 = v1;
      v33 = v32;
      v34 = OUTLINED_FUNCTION_100();
      v42 = v7;
      v35 = v34;
      v46 = v34;
      *v33 = 136315138;
      v36 = sub_1E3270FC8(v20, v22, &v46);

      *(v33 + 4) = v36;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v37, v38, v39, v40, v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v11 + 8))(v15, v9);
    sub_1E3DE3ED0();
  }

  else
  {
    v24(v18, v23, v9);

    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_6_21();
      v28 = OUTLINED_FUNCTION_100();
      v42 = v7;
      v29 = v28;
      v46 = v28;
      *v27 = 136315138;
      v30 = sub_1E3270FC8(v20, v22, &v46);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v25, v26, "%s Fetch document/fragment response was success", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v11 + 8))(v18, v9);
    sub_1E3DE3230();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE3230()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v150 = v6;
  v8 = v7;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070);
  OUTLINED_FUNCTION_0_10();
  v139 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v138 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_5();
  v141 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v135 - v15;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v151 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v146 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v142 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v135 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_6();
  v136 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_6();
  v137 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v135 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v135 - v34;
  sub_1E3DDE028();
  v147 = v36;
  v149 = v37;
  v140 = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_111();
    v148 = (*(v38 + 440))();
    if (v8 < 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v148 = 0;
    if (v8 < 0)
    {
LABEL_3:
      OUTLINED_FUNCTION_111();
      v40 = *(v39 + 272);
      v144 = v41;

      v43 = v40(v42);
      if ((v46 & 0x8000) != 0)
      {
        v81 = sub_1E324FBDC();
        v82 = OUTLINED_FUNCTION_53();
        v145 = v83;
        (v83)(v82);
        v84 = v149;

        v85 = sub_1E41FFC94();
        sub_1E4206814();

        v86 = OUTLINED_FUNCTION_67_5();
        v143 = v5;
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_6_21();
          v88 = OUTLINED_FUNCTION_100();
          v153[0] = v88;
          *v87 = 136315138;
          *(v87 + 4) = sub_1E3270FC8(v147, v84, v153);
          OUTLINED_FUNCTION_136();
          _os_log_impl(v89, v90, v91, v92, v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          OUTLINED_FUNCTION_7_7();
          OUTLINED_FUNCTION_21_0();
        }

        v67 = *(v151 + 8);
        v67(v32, v17);
        v93 = v144;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v49 = v145;
        if (*(v93 + 24))
        {
          v94 = v137;
          (v145)(v137, v81, v17);
          v95 = v94;

          v16 = sub_1E41FFC94();
          LOBYTE(v94) = sub_1E4206814();

          if (os_log_type_enabled(v16, v94))
          {
            v96 = OUTLINED_FUNCTION_49_0();
            v152[0] = OUTLINED_FUNCTION_72_0();
            OUTLINED_FUNCTION_64_25(4.8752e-34);
            OUTLINED_FUNCTION_97_4(v97, v98);
            OUTLINED_FUNCTION_33_65();

            *(v96 + 4) = v95;
            *(v96 + 12) = 2080;
            v99 = sub_1E328692C(v148 & 1);
            OUTLINED_FUNCTION_97_4(v99, v100);
            OUTLINED_FUNCTION_33_65();

            *(v96 + 14) = v95;
            OUTLINED_FUNCTION_90_17(&dword_1E323F000, v101, v102, "%{public}s will perform partial updates, animated: %s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_7_7();
            v49 = v145;
            OUTLINED_FUNCTION_6_0();

            OUTLINED_FUNCTION_34_62();
            v103 = v137;
          }

          else
          {

            OUTLINED_FUNCTION_34_62();
            v103 = v95;
          }

          v67(v103, v17);
          v5 = v143;
          v75 = v149;
          sub_1E3DDFF68();

          goto LABEL_27;
        }

        v105 = v136;
        (v145)(v136, v81, v17);
        v106 = v105;

        v107 = sub_1E41FFC94();
        v16 = sub_1E4206814();

        if (os_log_type_enabled(v107, v16))
        {
          OUTLINED_FUNCTION_6_21();
          v152[0] = OUTLINED_FUNCTION_36_6();
          OUTLINED_FUNCTION_64_25(4.8751e-34);
          v110 = OUTLINED_FUNCTION_97_4(v108, v109);

          *(v49 + 4) = v110;
          OUTLINED_FUNCTION_13_24(&dword_1E323F000, v111, v112, "%{public}s Received empty items in fragment in multi part document request.");
          OUTLINED_FUNCTION_5_175();
          v49 = v145;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        OUTLINED_FUNCTION_34_62();
        v67(v106, v17);
        v5 = v143;
      }

      else
      {
        sub_1E39050C0(v43, v44, v45, v46);
        v47 = sub_1E324FBDC();
        v48 = v151;
        v49 = *(v151 + 16);
        (v49)(v25, v47, v17);

        v50 = sub_1E41FFC94();
        v16 = sub_1E42067F4();

        if (os_log_type_enabled(v50, v16))
        {
          OUTLINED_FUNCTION_6_21();
          v145 = v49;
          v51 = OUTLINED_FUNCTION_36_6();
          v141 = v17;
          v52 = v5;
          v53 = v51;
          v153[0] = v51;
          OUTLINED_FUNCTION_64_25(4.8751e-34);
          OUTLINED_FUNCTION_38_8(v54, v55);
          OUTLINED_FUNCTION_33_65();

          *(v49 + 4) = v35;
          OUTLINED_FUNCTION_13_24(&dword_1E323F000, v56, v57, "%{public}s fragments when not expecting them.");
          __swift_destroy_boxed_opaque_existential_1(v53);
          v5 = v52;
          v17 = v141;
          OUTLINED_FUNCTION_6_0();
          v49 = v145;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v104 = *(v48 + 8);
        v104(v25, v17);
        v67 = v104;
      }

      v75 = v149;
LABEL_27:
      v80 = v146;
      goto LABEL_28;
    }
  }

  v58 = sub_1E324FBDC();
  v145 = *(v151 + 16);
  (v145)(v35, v58, v17);
  v59 = v149;

  v60 = sub_1E41FFC94();
  v61 = sub_1E4206814();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_6_21();
    v63 = OUTLINED_FUNCTION_100();
    v137 = v1;
    v64 = v17;
    v65 = v5;
    v66 = v63;
    v153[0] = v63;
    *v62 = 136315138;
    *(v62 + 4) = sub_1E3270FC8(v147, v59, v153);
    _os_log_impl(&dword_1E323F000, v60, v61, "%s Document returned", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v5 = v65;
    v17 = v64;
    v1 = v137;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_7();
  }

  v67 = *(v151 + 8);
  v67(v35, v17);
  sub_1E3DDF7A4();
  v68 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(&v1[v68], v16, &qword_1ECF39080);
  v69 = v144;
  if (__swift_getEnumTagSinglePayload(v16, 1, v144))
  {

    sub_1E325F6F0(v16, &qword_1ECF39080);
  }

  else
  {
    v70 = v139;
    v71 = v5;
    v72 = v67;
    v73 = v138;
    (*(v139 + 16))(v138, v16, v69);
    sub_1E325F6F0(v16, &qword_1ECF39080);
    v152[0] = v8;
    sub_1E42063D4();
    v69 = v144;
    v74 = v73;
    v67 = v72;
    v5 = v71;
    (*(v70 + 8))(v74, v144);
  }

  v75 = v149;
  v76 = v141;
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v69);
  OUTLINED_FUNCTION_11_3();
  sub_1E3DE59A0(v76, &v1[v68]);
  swift_endAccess();
  v49 = v145;
  v80 = v146;
LABEL_28:
  if (v150)
  {
    v143 = v5;
    v113 = v67;

    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();
    v114 = sub_1E324FBDC();
    v115 = v142;
    (v49)(v142, v114, v17);

    v116 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v117 = OUTLINED_FUNCTION_16_2();
      v152[0] = v117;
      *v16 = 136315138;
      v118 = v147;
      *(v16 + 4) = sub_1E3270FC8(v147, v75, v152);
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103_0(v119, v120, v121, v122);
      __swift_destroy_boxed_opaque_existential_1(v117);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();

      OUTLINED_FUNCTION_34_62();
      v113(v115, v17);
    }

    else
    {

      OUTLINED_FUNCTION_34_62();
      v113(v115, v17);
      v118 = v147;
    }

    OUTLINED_FUNCTION_4_0();
    v131 = swift_allocObject();
    OUTLINED_FUNCTION_31_3();
    v132 = swift_allocObject();
    *(v132 + 16) = v118;
    *(v132 + 24) = v75;
    *(v132 + 32) = v131;
    *(v132 + 40) = v143;
    *(v132 + 41) = v148 & 1;
    v133 = sub_1E41EC148(sub_1E3DE5CE4, v132);

    *&v1[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable] = v133;
  }

  else
  {
    v123 = sub_1E324FBDC();
    (v49)(v80, v123, v17);

    v124 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v125 = OUTLINED_FUNCTION_16_2();
      v152[0] = v125;
      *v16 = 136315138;
      v126 = sub_1E3270FC8(v147, v75, v152);

      *(v16 + 4) = v126;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103_0(v127, v128, v129, v130);
      __swift_destroy_boxed_opaque_existential_1(v125);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_7_9();
    }

    else
    {
    }

    OUTLINED_FUNCTION_34_62();
    v67(v80, v17);
    *&v1[OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest] = 0;

    OUTLINED_FUNCTION_111();
    (*(v134 + 296))();
    OUTLINED_FUNCTION_169();
    sub_1E3DDFF68();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE3ED0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  LODWORD(v3) = v2;
  v5 = v4;
  v7 = v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39070);
  OUTLINED_FUNCTION_0_10();
  v70 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2_5();
  v73 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v64 - v14;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v68 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_5();
  v19 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  sub_1E3DDE028();
  v24 = v23;
  OUTLINED_FUNCTION_36();
  v26 = (*(v25 + 272))();
  if ((v29 & 0x8000) == 0)
  {
    sub_1E39050C0(v26, v27, v28, v29);
    OUTLINED_FUNCTION_9_96();
LABEL_10:
    sub_1E3DE475C();

    v51 = v73;
    goto LABEL_11;
  }

  v67 = v3;
  if (v3)
  {
    if (v3 != 2)
    {
      OUTLINED_FUNCTION_9_96();
      LOBYTE(v3) = v67;
      goto LABEL_10;
    }

    v3 = v15;
    v66 = v24;
    v30 = sub_1E324FBDC();
    v31 = v68;
    (*(v68 + 16))(v22, v30, v3);

    v32 = OUTLINED_FUNCTION_9_96();
    sub_1E3781F8C(v32, v33, 2u);
    v34 = sub_1E41FFC94();
    v35 = sub_1E42067F4();

    v36 = OUTLINED_FUNCTION_9_96();
    sub_1E37B5ACC(v36, v37, 2u);
    v65 = v34;
    if (os_log_type_enabled(v34, v35))
    {
      v38 = OUTLINED_FUNCTION_49_0();
      v64 = OUTLINED_FUNCTION_72_0();
      v75 = v64;
      OUTLINED_FUNCTION_91_15(4.8151e-34);

      OUTLINED_FUNCTION_83_14();
      *(v38 + 14) = sub_1E3270FC8(v7, v5, v39);
      v40 = v35;
      v41 = v65;
      _os_log_impl(&dword_1E323F000, v65, v40, "%s received empty items while waiting for fragments: [%s]", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v31 + 8))(v22, v3);
    v51 = v73;
    LOBYTE(v3) = v67;
  }

  else
  {
    v66 = v24;
    v42 = sub_1E324FBDC();
    v3 = v68;
    v43 = *(v68 + 16);
    v64 = v15;
    v43(v19, v42, v15);

    v44 = v7;
    sub_1E3781F8C(v7, v5, 0);
    v45 = sub_1E41FFC94();
    v46 = sub_1E42067F4();

    v47 = v44;
    sub_1E37B5ACC(v44, v5, 0);
    v65 = v45;
    if (os_log_type_enabled(v45, v46))
    {
      v48 = OUTLINED_FUNCTION_49_0();
      v75 = OUTLINED_FUNCTION_72_0();
      OUTLINED_FUNCTION_91_15(4.8151e-34);

      OUTLINED_FUNCTION_83_14();
      *(v48 + 14) = sub_1E3270FC8(v44, v5, v49);
      v50 = v65;
      _os_log_impl(&dword_1E323F000, v65, v46, "%s failed to parse fragment response, reason: [%s]", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v3 + 8))(v19, v64);
    v51 = v73;
    LOBYTE(v3) = v67;
    v7 = v47;
  }

LABEL_11:
  v52 = v71;
  *(v1 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeServiceRequest) = 0;

  sub_1E3DDFF68();
  v53 = OBJC_IVAR____TtC8VideosUI18DocumentInteractor_standaloneRequestContinuation;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v53, v52, &qword_1ECF39080);
  v54 = v72;
  if (__swift_getEnumTagSinglePayload(v52, 1, v72))
  {
    sub_1E325F6F0(v52, &qword_1ECF39080);
  }

  else
  {
    v55 = v69;
    v56 = v70;
    (*(v70 + 16))(v69, v52, v54);
    sub_1E325F6F0(v52, &qword_1ECF39080);
    sub_1E3781F38();
    v57 = swift_allocError();
    *v58 = v7;
    *(v58 + 8) = v5;
    *(v58 + 16) = v3;
    v74 = v57;
    v59 = OUTLINED_FUNCTION_9_96();
    sub_1E3781F8C(v59, v60, v3);
    sub_1E42063C4();
    (*(v56 + 8))(v55, v54);
  }

  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v54);
  OUTLINED_FUNCTION_11_3();
  sub_1E3DE59A0(v51, v1 + v53);
  swift_endAccess();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE4538()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v24 = v6;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v8;
  v27 = v8[1];
  v25 = *(v8 + 17);
  v26 = *(v8 + 16);
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v17(v15);

  v18 = sub_1E41FFC94();
  v19 = sub_1E4206814();

  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_6_21();
    v23 = v16;
    v20 = v1;
    v21 = OUTLINED_FUNCTION_16_2();
    v28 = v21;
    *v3 = 136315138;
    *(v3 + 4) = sub_1E3270FC8(v24, v5, &v28);
    OUTLINED_FUNCTION_103_0(&dword_1E323F000, v18, v19, "%s Received fetch document response");
    __swift_destroy_boxed_opaque_existential_1(v21);
    v1 = v20;
    v16 = v23;
    OUTLINED_FUNCTION_6_0();
    v3 = v3;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3DE2F20(v16, v27, v26 | (v25 << 8), v3, v1 & 1);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE475C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = OUTLINED_FUNCTION_123_1();
  sub_1E3F6FB3C(v13, v14, v5);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
  sub_1E4148C68(sub_1E3DE5D48, v15, v24);

  v16 = v24[0];
  v17 = v24[1];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_6_30();
  v18(v12);

  v19 = sub_1E41FFC94();
  v20 = sub_1E42067F4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v3;
    v22 = OUTLINED_FUNCTION_49_0();
    v24[0] = OUTLINED_FUNCTION_72_0();
    *v22 = 136315394;
    *(v22 + 4) = sub_1E3270FC8(v21, v1, v24);
    *(v22 + 12) = 2080;
    v23 = sub_1E3270FC8(v16, v17, v24);

    *(v22 + 14) = v23;
    _os_log_impl(&dword_1E323F000, v19, v20, "%s Fetch document response failed [%s]", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE49AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v46 = v3;
  OUTLINED_FUNCTION_106();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = *(v0 + 8);
  v44 = *v0;
  v15 = *(v0 + 16);
  v45 = *(v0 + 17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3DDE028();
    v43 = v16;
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001E4283D10;
    v43 = 0xD000000000000020;
  }

  if (v45)
  {
    v42 = v2;
    v47 = sub_1E3F6FB3C(v44, v14, v15);
    v48 = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E4148C68(sub_1E37BCD7C, v20, v49);

    v22 = v49[0];
    v21 = v49[1];
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v23(v10);

    v24 = sub_1E41FFC94();
    v25 = sub_1E4206814();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_49_0();
      v41 = v4;
      v27 = v26;
      v44 = OUTLINED_FUNCTION_72_0();
      v49[0] = v44;
      *v27 = 136315394;
      v28 = v22;
      v29 = sub_1E3270FC8(v43, v18, v49);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      v30 = sub_1E3270FC8(v28, v21, v49);

      *(v27 + 14) = v30;
      _os_log_impl(&dword_1E323F000, v24, v25, "%s Received fragment error [%s]", v27, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_6_0();

      (*(v6 + 8))(v10, v41);
    }

    else
    {

      (*(v6 + 8))(v10, v4);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      OUTLINED_FUNCTION_106();
LABEL_14:
      sub_1E3DE4E84();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_51_4();
    v31(v13);

    v32 = sub_1E41FFC94();
    v33 = sub_1E4206814();

    if (OUTLINED_FUNCTION_67_5())
    {
      OUTLINED_FUNCTION_6_21();
      v42 = v32;
      v34 = v6;
      v49[0] = OUTLINED_FUNCTION_16_2();
      *v15 = 136315138;
      v35 = sub_1E3270FC8(v43, v18, v49);
      v41 = v4;
      v36 = v35;

      *(v15 + 4) = v36;
      v37 = v33;
      v38 = v42;
      OUTLINED_FUNCTION_103_0(&dword_1E323F000, v42, v37, "%s Received success response");
      OUTLINED_FUNCTION_5_175();
      OUTLINED_FUNCTION_7_9();

      (*(v34 + 8))(v13, v41);
    }

    else
    {

      (*(v6 + 8))(v13, v4);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeFragmentServiceRequest) = 0;
  }

  if (v46)
  {
    v46(v45 ^ 1u);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v40 = swift_weakLoadStrong();
  if (v40)
  {
    *(v40 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_activeRequestCancellable) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE4E84()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 296);
  v11 = v10();
  if (v11 && (v12 = v11, OUTLINED_FUNCTION_25(), swift_beginAccess(), v13 = *(v12 + 56), , , v13) && (OUTLINED_FUNCTION_8(), v15 = (*(v14 + 1248))(v4), v16 = , (v15 & 1) != 0))
  {
    v17 = (v10)(v16);
    if (v17)
    {
      v18 = v17;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v19 = *(v18 + 56);

      if (v19)
      {
        type metadata accessor for TemplateViewModel();
        sub_1E3DE5A48(&qword_1EE279848, type metadata accessor for TemplateViewModel);
        sub_1E4200514();
        OUTLINED_FUNCTION_11_5();

        sub_1E4200594();
      }
    }

    v20 = *(v2 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_eventMonitorController);
    if (v20)
    {
      v21 = v20;
      sub_1E3B04344();
    }
  }

  else
  {
    v22 = sub_1E324FBDC();
    (*(v7 + 16))(v1, v22, v5);

    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_100();
      v34 = v26;
      *v25 = 136446210;
      sub_1E3DDE028();
      v29 = sub_1E3270FC8(v27, v28, &v34);

      *(v25 + 4) = v29;
      OUTLINED_FUNCTION_6_13(&dword_1E323F000, v30, v31, "%{public}s Received empty items");
      __swift_destroy_boxed_opaque_existential_1(v26);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    v32 = OUTLINED_FUNCTION_74();
    v33(v32);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE5164()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 296);
  v5 = v4();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v7 = *(v6 + 56);

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      (*(v8 + 1048))();
      OUTLINED_FUNCTION_122();

      v10 = (v4)(v9);
      if (v10 && (v11 = v10, OUTLINED_FUNCTION_25(), swift_beginAccess(), v12 = *(v11 + 56), , , v12))
      {
        OUTLINED_FUNCTION_8();
        (*(v13 + 368))();
        OUTLINED_FUNCTION_16_11();

        *(&v28 + 1) = MEMORY[0x1E69E6158];
        *&v27 = v11;
        *(&v27 + 1) = v4;
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      sub_1E3294FA4(&v27);
      OUTLINED_FUNCTION_16_11();
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000022, 0x80000001E4283DF0);
      v14 = OUTLINED_FUNCTION_146();
      MEMORY[0x1E69109E0](v14);

      MEMORY[0x1E69109E0](0x6F63206874697720, 0xEF203A747865746ELL);
      sub_1E4205C74();
      OUTLINED_FUNCTION_16_11();

      v15 = OUTLINED_FUNCTION_146();
      MEMORY[0x1E69109E0](v15);

      v16 = v27;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v17(v1);

      v18 = sub_1E41FFC94();
      v19 = sub_1E4206814();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_49_0();
        *&v27 = OUTLINED_FUNCTION_72_0();
        *v20 = 136315394;
        v22 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef);
        v21 = *(v0 + OBJC_IVAR____TtC8VideosUI18DocumentInteractor_initialControllerRef + 8);

        v23 = sub_1E3270FC8(v22, v21, &v27);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v24 = sub_1E3270FC8(v16, *(&v16 + 1), &v27);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_1E323F000, v18, v19, "DocumentInteractor::[%s] %s", v20, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_7_7();
      }

      else
      {
      }

      v25 = OUTLINED_FUNCTION_74();
      v26(v25);
      OUTLINED_FUNCTION_25();
      sub_1E3DE009C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3DE5560()
{

  v1 = sub_1E4206174();
  sub_1E4206064();
  return v1;
}

unint64_t sub_1E3DE55E0()
{
  result = qword_1EE284CB0;
  if (!qword_1EE284CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284CB0);
  }

  return result;
}

uint64_t type metadata accessor for DocumentInteractor()
{
  result = qword_1EE2A1140;
  if (!qword_1EE2A1140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3DE5690()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    sub_1E3DE57C0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3DE57C0()
{
  if (!qword_1EE23B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF39070);
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B430);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI18DocumentInteractorC10FetchStateO(uint64_t a1)
{
  if ((((*(a1 + 24) | (*(a1 + 26) << 16)) >> 13) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) >> 13;
  }
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1E3DE5870(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 27))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0x78 | (*(a1 + 24) >> 13)) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1E3DE58BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 26) = 0;
      *(result + 24) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1E3DE5934(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    return OUTLINED_FUNCTION_43_50(result + 24, *(result + 24) & 0x1FF | (*(result + 26) << 16) | (a2 << 13));
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = a2 - 4;
  *(result + 26) = 0;
  *(result + 24) = 0x8000;
  return result;
}

uint64_t sub_1E3DE59A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF39080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3DE5A48(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3DE5A98(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = [objc_opt_self() sharedMonitor];
    sub_1E3280A90(0, &qword_1EE23AEF0);
    sub_1E3A60E60();
    v7 = sub_1E4206614();
    if (a3)
    {
      [v6 updateDescriptorsForObserver:a1 eventDescriptors:v7];
    }

    else
    {
      [v6 addObserver:a1 forEventDescriptors:v7 viewController:0];
    }
  }

  return result;
}

uint64_t sub_1E3DE5BB4()
{
  type metadata accessor for DocumentInteractor();
  OUTLINED_FUNCTION_18_98();
  sub_1E3DE5A48(v0, v1);
  sub_1E4200514();
  sub_1E4200594();
}

void sub_1E3DE5C2C()
{
  sub_1E41FFBF4();

  sub_1E3DE2BF4();
}

uint64_t sub_1E3DE5CF8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E3DE5164();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_27()
{

  return sub_1E38DCCB0(v1, v0);
}

void OUTLINED_FUNCTION_69_25()
{

  JUMPOUT(0x1E69109E0);
}

void OUTLINED_FUNCTION_86_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned __int16 a14)
{

  sub_1E39050C0(v14, a12, v15, a14);
}

void OUTLINED_FUNCTION_88_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

unint64_t OUTLINED_FUNCTION_91_15(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 192);

  return sub_1E3270FC8(v5, v2, (v3 - 104));
}

void OUTLINED_FUNCTION_94_17()
{
  v2 = *(v0 - 400);
}

void OUTLINED_FUNCTION_95_18(float a1)
{
  *v1 = a1;

  sub_1E3DDE028();
}

unint64_t OUTLINED_FUNCTION_96_17(uint64_t a1, unint64_t a2)
{

  return sub_1E3270FC8(a1, a2, (v2 - 304));
}

uint64_t sub_1E3DE5EA0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for LockupAccessoryContainerView() + 56);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  v7 = swift_storeEnumTagMultiPayload();
  v8 = a1(v7);
  return a2(v8);
}

void sub_1E3DE5F78()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v50 = v1;
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_5_176();
  swift_getWitnessTable();
  v2 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v45 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v44 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_8_151();
  OUTLINED_FUNCTION_51_18();
  swift_getWitnessTable();
  v10 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v43 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  v42 = v17;
  v18 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v48 = v25;
  v49 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v47 = &v41 - v26;
  sub_1E3746E10(v23);
  v27 = sub_1E3B02B0C();
  (*(v20 + 8))(v23, v18);
  if (v27)
  {
    sub_1E3DE6460();
    OUTLINED_FUNCTION_0_81();
    swift_getWitnessTable();
    v29 = v42;
    v28 = v43;
    v30 = *(v43 + 16);
    v30(v42, v15, v10);
    v31 = *(v28 + 8);
    v31(v15, v10);
    v30(v15, v29, v10);
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v32 = v47;
    sub_1E37B8D98(v15, v10);
    v31(v15, v10);
    v31(v29, v10);
  }

  else
  {
    sub_1E3DE6600();
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v34 = v44;
    v33 = v45;
    v35 = *(v45 + 16);
    v35(v44, v7, v2);
    v36 = *(v33 + 8);
    v36(v7, v2);
    v35(v7, v34, v2);
    OUTLINED_FUNCTION_0_81();
    swift_getWitnessTable();
    v32 = v47;
    sub_1E37B8E90(v7, v10, v2);
    v36(v7, v2);
    v36(v34, v2);
  }

  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v38 = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = v38;
  OUTLINED_FUNCTION_2_25();
  v39 = v49;
  swift_getWitnessTable();
  v40 = v48;
  (*(v48 + 16))(v50, v32, v39);
  (*(v40 + 8))(v32, v39);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6460()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v19 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v6 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1E4201D54();
  v20 = v4;
  v21 = v5;
  v22 = *(v2 + 32);
  v23 = v0;
  OUTLINED_FUNCTION_9_136();
  sub_1E4203A34();
  OUTLINED_FUNCTION_0_81();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_10_129();
  (v2)(v16);
  v17 = *(v8 + 8);
  v17(v12, v6);
  (v2)(v19, v15, v6);
  v17(v15, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6600()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v19 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_51_18();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v6 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  sub_1E4201B84();
  v20 = v4;
  v21 = v5;
  v22 = *(v2 + 32);
  v23 = v0;
  OUTLINED_FUNCTION_9_136();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v16 = OUTLINED_FUNCTION_10_129();
  (v2)(v16);
  v17 = *(v8 + 8);
  v17(v12, v6);
  (v2)(v19, v15, v6);
  v17(v15, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6790()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v35 = v0;
  v39 = v3;
  v40 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_1_2();
  v11 = v10;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v38 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v36 = v16;
  OUTLINED_FUNCTION_1_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v35 - v25;
  v27 = *(v18 + 16);
  v27(&v35 - v25, v9, v7, v24);
  v47 = v7;
  v48 = v5;
  v49 = v40;
  v50 = v1;
  v28 = type metadata accessor for LockupAccessoryContainerView();
  v29 = *(v11 + 16);
  v30 = v9 + *(v28 + 52);
  v31 = v36;
  v29(v36, v30, v5);
  (v27)(v22, v26, v7);
  v45 = 0;
  v46 = 0;
  v47 = v22;
  v48 = &v45;
  v32 = v38;
  v29(v38, v31, v5);
  v49 = v32;
  v44[0] = v7;
  v44[1] = MEMORY[0x1E6981840];
  v44[2] = v5;
  v41 = v40;
  v42 = MEMORY[0x1E6981838];
  v43 = v35;
  sub_1E3910324(&v47, 3, v44);
  v33 = *(v37 + 8);
  v33(v31, v5);
  v34 = *(v18 + 8);
  v34(v26, v7);
  v33(v32, v5);
  v34(v22, v7);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6A20()
{
  OUTLINED_FUNCTION_31_1();
  v60 = v0;
  v2 = v1;
  v50 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v57 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF338A0);
  OUTLINED_FUNCTION_0_10();
  v55 = v11;
  v56 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v61 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v52 = v15;
  OUTLINED_FUNCTION_1_2();
  v17 = v16;
  v53 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v59 = (v19 - v20);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v49 = v6;
  OUTLINED_FUNCTION_1_2();
  v25 = v24;
  v54 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v58 = (v27 - v28);
  OUTLINED_FUNCTION_49();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v47 - v31;
  v48 = *(v25 + 16);
  v51 = &v47 - v31;
  v48(&v47 - v31, v8, v6, v30);
  v68 = v6;
  v69 = v4;
  v47 = v4;
  v70 = v2;
  v71 = v60;
  v33 = type metadata accessor for LockupAccessoryContainerView();
  v34 = *(v17 + 16);
  v34(v23, v8 + *(v33 + 52), v4);
  v68 = 0;
  LOBYTE(v69) = 0;
  v35 = MEMORY[0x1E6981840];
  sub_1E3D4174C(MEMORY[0x1E6981840], MEMORY[0x1E6981838]);
  v36 = v52;
  sub_1E3D414F8(v35, v52);

  v37 = v58;
  v38 = v49;
  (v48)(v58, v32, v49);
  v68 = v37;
  v39 = v59;
  v40 = v47;
  v34(v59, v23, v47);
  v69 = v39;
  v41 = v55;
  v42 = v56;
  v43 = v61;
  (*(v55 + 16))(v61, v36, v56);
  v70 = v43;
  v67[0] = v38;
  v67[1] = v40;
  v67[2] = v42;
  v64 = v50;
  v65 = v60;
  v62 = MEMORY[0x1E6981840];
  v63 = MEMORY[0x1E6981838];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3910324(&v68, 3, v67);
  v44 = *(v41 + 8);
  v44(v36, v42);
  v45 = *(v53 + 8);
  v45(v23, v40);
  v46 = *(v54 + 8);
  v46(v51, v38);
  v44(v61, v42);
  v45(v59, v40);
  v46(v58, v38);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3DE6E9C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1E38D5D68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3DE6F40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 24);
  v30 = *(a3 + 16);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  v7 = *(v29 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = *(v5 + 84);
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1E42012F4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v7 + 80);
  v14 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v5 + 64) + v13;
  v16 = *(v10 + 80) & 0xF8 | 7;
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v17 = v11 + ((v14 + v16 + (v15 & ~v13)) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_12;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_30;
      }

LABEL_12:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

LABEL_20:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_20;
    }
  }

LABEL_30:
  if (v6 == v12)
  {
    v25 = a1;
    v26 = v6;
    v27 = v30;
  }

  else
  {
    v25 = (a1 + v15) & ~v13;
    if (v8 != v12)
    {
      v28 = *(((v25 + v14 + v16) & ~v16) + v11);
      if (v28 >= 2)
      {
        return (v28 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v26 = v8;
    v27 = v29;
  }

  return __swift_getEnumTagSinglePayload(v25, v26, v27);
}

void sub_1E3DE7220(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v36 = *(a4 + 24);
  v37 = *(a4 + 16);
  v6 = *(v37 - 8);
  v7 = *(v6 + 84);
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E42012F4() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v8 + 80);
  v15 = *(v6 + 64) + v14;
  v16 = *(v8 + 64);
  v17 = *(v11 + 80) & 0xF8 | 7;
  v18 = v12 + 1;
  v19 = ((v16 + v17 + (v15 & ~v14)) & ~v17) + v12 + 1;
  v20 = 8 * v19;
  if (a3 <= v13)
  {
    v22 = 0;
    v21 = a1;
  }

  else
  {
    v21 = a1;
    if (v19 <= 3)
    {
      v25 = ((a3 - v13 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v13 < a2)
  {
    v23 = ~v13 + a2;
    if (v19 < 4)
    {
      v24 = (v23 >> v20) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << v20);
        bzero(v21, v19);
        if (v19 == 3)
        {
          *v21 = v27;
          v21[2] = BYTE2(v27);
        }

        else if (v19 == 2)
        {
          *v21 = v27;
        }

        else
        {
          *v21 = v23;
        }
      }
    }

    else
    {
      bzero(v21, v19);
      *v21 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        v21[v19] = v24;
        break;
      case 2:
        *&v21[v19] = v24;
        break;
      case 3:
        goto LABEL_63;
      case 4:
        *&v21[v19] = v24;
        break;
      default:
        return;
    }

    return;
  }

  switch(v22)
  {
    case 1:
      v21[v19] = 0;
      if (a2)
      {
        goto LABEL_32;
      }

      return;
    case 2:
      *&v21[v19] = 0;
      if (a2)
      {
        goto LABEL_32;
      }

      return;
    case 3:
LABEL_63:
      __break(1u);
      return;
    case 4:
      *&v21[v19] = 0;
      goto LABEL_31;
    default:
LABEL_31:
      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 == v13)
      {
        v28 = v21;
        v29 = a2;
        v30 = v7;
        v31 = v37;
LABEL_36:

        __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
        return;
      }

      v28 = &v21[v15] & ~v14;
      if (v9 == v13)
      {
        v29 = a2;
        v30 = v9;
        v31 = v36;
        goto LABEL_36;
      }

      v32 = ((v28 + v16 + v17) & ~v17);
      if (a2 > 0xFE)
      {
        if (v18 <= 3)
        {
          v33 = ~(-1 << (8 * v18));
        }

        else
        {
          v33 = -1;
        }

        if (v18)
        {
          v34 = v33 & (a2 - 255);
          if (v18 <= 3)
          {
            v35 = v18;
          }

          else
          {
            v35 = 4;
          }

          bzero(v32, v18);
          switch(v35)
          {
            case 2:
              *v32 = v34;
              break;
            case 3:
              *v32 = v34;
              v32[2] = BYTE2(v34);
              break;
            case 4:
              *v32 = v34;
              break;
            default:
              *v32 = v34;
              break;
          }
        }
      }

      else
      {
        v32[v12] = -a2;
      }

      return;
  }
}

id sub_1E3DE7654()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1E3DE7700(char a1)
{
  *(v1 + 136) = 0;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  v3 = sub_1E3C2F9A0();

  sub_1E3DE77F4();
  if (a1)
  {
    sub_1E3DE7FD0();
  }

  else
  {
    sub_1E3DE8600();
  }

  sub_1E3DE8C88();

  return v3;
}

void sub_1E3DE7788()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3DE77F4()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 216;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  v5 = OUTLINED_FUNCTION_15_8();
  v6(v5);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  v8 = OUTLINED_FUNCTION_15_8();
  v9(v8);

  v11 = (v1)(v10);
  v12 = sub_1E3E5FDEC();
  v13 = *v12;
  v14 = *(*v11 + 680);
  v15 = *v12;
  v14(v13);

  (v1)(v16);
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 2128))(0x3FE51EB851EB851FLL, 0);

  (v1)(v18);
  OUTLINED_FUNCTION_2_1();
  (*(v19 + 1984))(1);

  v21 = (v1)(v20);
  (*(*v21 + 208))(0x403E000000000000, 0);

  OUTLINED_FUNCTION_9_2();
  v23 = *(v22 + 1752);
  v23();
  v121 = 0;
  v122 = 1;
  v119 = 0;
  v120 = 1;
  v117 = 1;
  v118 = 0;
  v115 = 0;
  v116 = 1;
  v24 = sub_1E3C3DE00(MEMORY[0x1E69E6810]);
  v111 = v113;
  v112 = v114;
  v32 = OUTLINED_FUNCTION_15_121(v24, v25, v26, v27, v28, v29, v30, v31, v103, v107, 2);
  sub_1E3C2FCB8(v32, v33);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v42 = OUTLINED_FUNCTION_4_68(v34, v35, v36, v37, v38, v39, v40, v41, v104, v108, __dst[0]);
  v43(v42, 62);

  (v23)(v44);
  v45 = *sub_1E3E5FD88();
  *&__dst[0] = v45;
  v121 = 0;
  v119 = 0;
  v117 = *v12;
  v46 = v117;
  v47 = sub_1E3755B54();
  v48 = v45;
  v49 = v46;
  sub_1E3C3DE00(v47);
  v113 = v115;
  v50 = sub_1E3C3DE00(v47);
  v58 = OUTLINED_FUNCTION_15_121(v50, v51, v52, v53, v54, v55, v56, v57, v105, v111, __dst[0]);
  sub_1E3C2FCB8(v58, v59);
  v60 = __src[0];
  v61 = __src[1];
  v62 = __src[2];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v71 = OUTLINED_FUNCTION_4_68(v63, v64, v65, v66, v67, v68, v69, v70, v106, v109, __dst[0]);
  v72(v71, 21);

  OUTLINED_FUNCTION_9_2();
  v74 = *(v73 + 1776);
  v74();
  OUTLINED_FUNCTION_2_1();
  v75 = OUTLINED_FUNCTION_15_8();
  v76(v75);

  (v74)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 2176))(4, 0);

  OUTLINED_FUNCTION_9_2();
  v80 = *(v79 + 1800);
  v81 = v80();
  v82 = *sub_1E418A524();
  (*(*v81 + 440))(v82, 0);

  (v80)(v83);
  OUTLINED_FUNCTION_2_1();
  (*(v84 + 1808))(3);

  (v80)(v85);
  OUTLINED_FUNCTION_2_1();
  (*(v86 + 2000))(0);

  v88 = (v80)(v87);
  v89.n128_u64[0] = 0.5;
  *&__src[0] = j__OUTLINED_FUNCTION_7_78(v89);
  *(&__src[0] + 1) = v90;
  *&__src[1] = v91;
  *(&__src[1] + 1) = v92;
  LOBYTE(__src[2]) = 0;
  (*(*v88 + 1856))(__src);

  v94 = (v80)(v93);
  v95 = *sub_1E3E60CFC();
  v96 = *(*v94 + 1832);
  v97 = v95;
  v96(v95);

  v99 = (v80)(v98);
  v100 = sub_1E3E61064();
  v101 = *(v100 + 1);
  __dst[0] = *v100;
  __dst[1] = v101;
  LOBYTE(__dst[2]) = 0;
  (*(*v99 + 560))(__dst);
}