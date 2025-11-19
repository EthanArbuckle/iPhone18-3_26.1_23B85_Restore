uint64_t sub_1E38CE5A4(uint64_t *a1)
{
  v3 = a1[1];
  result = sub_1E4207914();
  if (result < v3)
  {
    v5 = result;
    v6 = sub_1E38CE044(v3 / 2);
    v8[0] = v7;
    v8[1] = v3 / 2;
    result = sub_1E38CE828(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    return sub_1E38CE684(0, v3, 1, a1);
  }

  return result;
}

uint64_t sub_1E38CE684(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v21 = v7;
      v22 = v6;
      while (1)
      {
        v9 = *v6;
        v10 = *(*v8 + 1208);

        v12 = v10(v11);
        v14 = v13;
        if (v12 == (*(*v9 + 1208))() && v14 == v15)
        {
          break;
        }

        v17 = sub_1E42079A4();

        if (v17)
        {
          if (!v5)
          {
            __break(1u);
            return result;
          }

          v18 = *v6;
          v8 = v6[1];
          *v6 = v8;
          v6[1] = v18;
          --v6;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

LABEL_14:
      ++v4;
      v6 = v22 + 1;
      v7 = v21 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E38CE828(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_104:
      v100 = (v6 + 16);
      for (i = *(v6 + 16); i >= 2; *v100 = i)
      {
        if (!*a3)
        {
          goto LABEL_140;
        }

        v102 = (v6 + 16 * i);
        v103 = *v102;
        v104 = &v100[2 * i];
        v105 = v104[1];
        sub_1E38CF03C((*a3 + 8 * *v102), (*a3 + 8 * *v104), (*a3 + 8 * v105), v7);
        if (v116)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_128;
        }

        if (i - 2 >= *v100)
        {
          goto LABEL_129;
        }

        *v102 = v103;
        v102[1] = v105;
        v106 = *v100 - i;
        if (*v100 < i)
        {
          goto LABEL_130;
        }

        v116 = 0;
        i = *v100 - 1;
        result = memmove(v104, v104 + 2, 16 * v106);
      }
    }

LABEL_137:
    result = sub_1E37FFF5C(v6);
    v6 = result;
    goto LABEL_104;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v114 = v6;
    if (v5 + 1 < v4)
    {
      v109 = v5;
      v110 = v4;
      v9 = *a3;
      v10 = (v5 + 1);
      v11 = *(*a3 + 8 * v5);
      v12 = *(**(*a3 + 8 * v8) + 1208);

      v14 = v12(v13);
      v16 = v15;
      v17 = (*(*v11 + 1208))();
      v7 = v18;
      if (v14 == v17 && v16 == v18)
      {
        v112 = 0;
      }

      else
      {
        v112 = sub_1E42079A4();
      }

      v20 = 8 * v109;
      v21 = v9 + 8 * v109 + 16;
      v22 = 8 * v109 + 8;
      v8 = v10;
      do
      {
        v23 = v8;
        v24 = v22;
        if (++v8 >= v110)
        {
          break;
        }

        v117 = v8;
        v25 = *(v21 - 8);
        v26 = *(**v21 + 1208);

        v28 = v26(v27);
        v30 = v29;
        v31 = (*(*v25 + 1208))();
        v7 = v32;
        v33 = v28 == v31 && v30 == v32;
        v34 = v33 ? 0 : sub_1E42079A4();

        v35 = v112 ^ v34;
        v21 += 8;
        v22 = v24 + 8;
        v6 = v114;
        v8 = v117;
      }

      while ((v35 & 1) == 0);
      if (v112)
      {
        v36 = v109;
        if (v8 < v109)
        {
          goto LABEL_134;
        }

        if (v109 >= v8)
        {
          v7 = v109;
          goto LABEL_28;
        }

        do
        {
          if (v36 != v23)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_141;
            }

            v38 = *(v37 + v20);
            *(v37 + v20) = *(v37 + v24);
            *(v37 + v24) = v38;
          }

          ++v36;
          v24 -= 8;
          v20 += 8;
        }

        while (v36 < v23--);
      }

      v7 = v109;
    }

LABEL_28:
    v40 = a3[1];
    if (v8 < v40)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_133;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_50:
    if (v8 < v7)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      v6 = result;
    }

    v59 = *(v6 + 16);
    v58 = *(v6 + 24);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      result = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 16) = v60;
    v61 = v6 + 32;
    v62 = (v6 + 32 + 16 * v59);
    *v62 = v7;
    v62[1] = v8;
    v7 = *v108;
    if (!*v108)
    {
      goto LABEL_142;
    }

    v119 = v8;
    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        v64 = (v61 + 16 * (v60 - 1));
        v65 = (v6 + 16 * v60);
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v6 + 32);
          v67 = *(v6 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_70:
          if (v69)
          {
            goto LABEL_119;
          }

          v81 = *v65;
          v80 = v65[1];
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_122;
          }

          v85 = v64[1];
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_127;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v60 < 2)
        {
          goto LABEL_121;
        }

        v88 = *v65;
        v87 = v65[1];
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_85:
        if (v84)
        {
          goto LABEL_124;
        }

        v90 = *v64;
        v89 = v64[1];
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_126;
        }

        if (v91 < v83)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v63 - 1 >= v60)
        {
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v95 = (v61 + 16 * (v63 - 1));
        v96 = *v95;
        v97 = (v61 + 16 * v63);
        v98 = v97[1];
        sub_1E38CF03C((*a3 + 8 * *v95), (*a3 + 8 * *v97), (*a3 + 8 * v98), v7);
        if (v116)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_114;
        }

        v99 = *(v6 + 16);
        if (v63 > v99)
        {
          goto LABEL_115;
        }

        *v95 = v96;
        v95[1] = v98;
        if (v63 >= v99)
        {
          goto LABEL_116;
        }

        v116 = 0;
        v60 = v99 - 1;
        result = memmove((v61 + 16 * v63), v97 + 2, 16 * (v99 - 1 - v63));
        *(v6 + 16) = v99 - 1;
        if (v99 <= 2)
        {
          goto LABEL_99;
        }
      }

      v70 = v61 + 16 * v60;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_117;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_118;
      }

      v77 = v65[1];
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_120;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_123;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = v64[1];
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v4 = a3[1];
    v5 = v119;
    if (v119 >= v4)
    {
      goto LABEL_102;
    }
  }

  v41 = &v7[a4];
  if (__OFADD__(v7, a4))
  {
    goto LABEL_135;
  }

  if (v41 >= v40)
  {
    v41 = a3[1];
  }

  if (v41 < v7)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v8 == v41)
  {
    goto LABEL_50;
  }

  v42 = *a3;
  v43 = (*a3 + 8 * v8 - 8);
  v111 = v41;
  v44 = &v7[-v8];
LABEL_37:
  v118 = v8;
  v45 = *(v42 + 8 * v8);
  v46 = v44;
  v113 = v43;
  while (1)
  {
    v47 = *v43;
    v48 = *(*v45 + 1208);

    v50 = v48(v49);
    v52 = v51;
    if (v50 == (*(*v47 + 1208))() && v52 == v53)
    {

LABEL_48:
      v8 = v118 + 1;
      v43 = v113 + 1;
      --v44;
      if ((v118 + 1) == v111)
      {
        v8 = v111;
        v6 = v114;
        goto LABEL_50;
      }

      goto LABEL_37;
    }

    v55 = sub_1E42079A4();

    if ((v55 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v42)
    {
      break;
    }

    v56 = *v43;
    v45 = v43[1];
    *v43 = v45;
    v43[1] = v56;
    --v43;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_48;
    }
  }

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
  return result;
}

uint64_t sub_1E38CF03C(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 8;
  v9 = (a3 - __dst) / 8;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[8 * v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v11 = &v4[8 * v8];
    v49 = v5;
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v13 = v11;
      v14 = *v4;
      v15 = *(**v6 + 1208);

      v17 = v15(v16);
      v19 = v18;
      if (v17 == (*(*v14 + 1208))() && v19 == v20)
      {
      }

      else
      {
        v22 = sub_1E42079A4();

        if (v22)
        {
          v23 = v6;
          v24 = v7 == v6;
          v6 += 8;
          goto LABEL_20;
        }
      }

      v23 = v4;
      v24 = v7 == v4;
      v4 += 8;
LABEL_20:
      v5 = v49;
      v11 = v13;
      if (!v24)
      {
        *v7 = *v23;
      }

      v7 += 8;
    }
  }

  if (a4 != __dst || &__dst[8 * v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v11 = &v4[8 * v9];
  v47 = v4;
  v48 = v7;
LABEL_29:
  v26 = v6 - 8;
  v27 = v5 - 8;
  v50 = v6;
  while (v11 > v4 && v6 > v7)
  {
    v29 = v27;
    v30 = v11;
    v31 = v11 - 8;
    v32 = v26;
    v33 = *v26;
    v34 = *(**(v11 - 1) + 1208);

    v36 = v34(v35);
    v38 = v37;
    if (v36 == (*(*v33 + 1208))() && v38 == v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1E42079A4();
    }

    v5 = v29;
    v42 = v29 + 8;
    if (v41)
    {
      v43 = v32;
      v6 = v32;
      v11 = v30;
      v4 = v47;
      v7 = v48;
      if (v42 != v50)
      {
        *v29 = *v43;
        v6 = v43;
      }

      goto LABEL_29;
    }

    v26 = v32;
    if (v30 != v42)
    {
      *v29 = *v31;
    }

    v27 = v29 - 8;
    v11 = v31;
    v6 = v50;
    v4 = v47;
    v7 = v48;
  }

LABEL_48:
  v44 = (v11 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v44])
  {
    memmove(v6, v4, 8 * v44);
  }

  return 1;
}

unint64_t sub_1E38CF3EC(uint64_t a1)
{
  type metadata accessor for LibLockupViewModel();
  sub_1E38D065C(&qword_1ECF2D020, type metadata accessor for LibLockupViewModel);
  v2 = sub_1E4205DA4();
  return sub_1E38CF498(a1, v2);
}

unint64_t sub_1E38CF498(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    type metadata accessor for LibLockupViewModel();
    sub_1E38D065C(qword_1EE277BC8, type metadata accessor for LibLockupViewModel);
    if (sub_1E4205E84())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1E38CF590(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1E38CF3EC(a2);
  if (__OFADD__(v6[2], (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D0A8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_1E38CF3EC(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    type metadata accessor for LibLockupViewModel();
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1E38CF6BC(v9, a2, a1, v13);
  }
}

unint64_t sub_1E38CF6BC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1E38CF700(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E38CF794((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_1E38CF794(uint64_t result, uint64_t a2, unint64_t a3)
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
        type metadata accessor for LibLockupViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E374AD40(&qword_1EE23B5A0, &qword_1ECF2CFF8);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
          v9 = sub_1E38CF91C(v12, i, a3);
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

uint64_t (*sub_1E38CF91C(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_1E34AF588(a3);
  sub_1E34AF4E4(a2, v6, a3);
  if (v6)
  {
  }

  else
  {
    v7 = MEMORY[0x1E6911E60](a2, a3);
  }

  *a1 = v7;
  return j__OUTLINED_FUNCTION_74_0;
}

uint64_t sub_1E38CF9AC()
{
  OUTLINED_FUNCTION_9_5();
  v48 = type metadata accessor for ClarityUIRootView();
  v47 = (*(*(v48 - 8) + 80) + 16) & ~*(*(v48 - 8) + 80);
  v49 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v53 = *(v0 + 16);
  v50 = *(v1 + ((*(*(v48 - 8) + 64) + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  if (!v53)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_44:
    v42 = (v49 + v47 + *(v48 + 32));
    v44 = v42[1];
    v55 = *v42;
    v43 = v55;
    v56 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D018);
    sub_1E42038F4();
    v45 = v54[0];
    swift_isUniquelyReferenced_nonNull_native();
    v55 = v45;
    sub_1E38CF590(v4, v50);
    v46 = v55;
    v55 = v43;
    v56 = v44;
    v54[0] = v46;
    sub_1E4203904();
    return sub_1E38CAAA4();
  }

  v3 = 0;
  v52 = v0 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v5 = (v52 + 40 * v3);
    v6 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v7 = OUTLINED_FUNCTION_50();
    v9 = v8(v7, v6);
    if (v9)
    {
      v10 = v9;
      v59 = v2;
      v11 = *(v9 + 16);
      if (v11)
      {
        type metadata accessor for LibLockupViewModel();
        v12 = v10 + 32;
        do
        {
          sub_1E327F454(v12, &v55);
          v13 = v57;
          v14 = v58;
          v15 = __swift_project_boxed_opaque_existential_1(&v55, v57);
          v54[3] = v13;
          v54[4] = *(*(v14 + 8) + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
          (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
          v18 = v57;
          v17 = v58;
          __swift_project_boxed_opaque_existential_1(&v55, v57);
          (*(*(*(v17 + 8) + 8) + 16))(v18);
          j__OUTLINED_FUNCTION_18();
          sub_1E38BC104();
          v20 = v19;
          v21 = __swift_destroy_boxed_opaque_existential_1Tm(&v55);
          if (v20)
          {
            MEMORY[0x1E6910BF0](v21);
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v2 = v59;
          }

          v12 += 40;
          --v11;
        }

        while (v11);
      }
    }

    v22 = v2 >> 62 ? sub_1E4207384() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v4 >> 62;
    result = v4 >> 62 ? sub_1E4207384() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = result + v22;
    if (__OFADD__(result, v22))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v23)
      {
        v26 = v4 & 0xFFFFFFFFFFFFFF8;
        v27 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v27 >= v25)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_1E4207384();
      goto LABEL_23;
    }

    if (v23)
    {
      goto LABEL_22;
    }

LABEL_23:
    result = sub_1E4207514();
    v4 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_24:
    v28 = *(v26 + 16);
    v29 = v27 - v28;
    v30 = v26 + 8 * v28;
    if (v2 >> 62)
    {
      v32 = sub_1E4207384();
      if (v32)
      {
        v33 = v32;
        result = sub_1E4207384();
        if (v29 < result)
        {
          goto LABEL_48;
        }

        if (v33 < 1)
        {
          goto LABEL_50;
        }

        v31 = result;
        v51 = v4;
        v34 = v30 + 32;
        OUTLINED_FUNCTION_0_32();
        sub_1E374AD40(&qword_1EE23B5A0, &qword_1ECF2CFF8);
        for (i = 0; i != v33; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CFF8);
          v36 = sub_1E38CF91C(&v55, i, v2);
          v38 = *v37;

          (v36)(&v55, 0);
          *(v34 + 8 * i) = v38;
        }

        v4 = v51;
        goto LABEL_34;
      }
    }

    else
    {
      v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
        if (v29 < v31)
        {
          goto LABEL_49;
        }

        type metadata accessor for LibLockupViewModel();
        swift_arrayInitWithCopy();
LABEL_34:

        v2 = MEMORY[0x1E69E7CC0];
        if (v31 < v22)
        {
          goto LABEL_46;
        }

        if (v31 > 0)
        {
          v39 = *(v26 + 16);
          v40 = __OFADD__(v39, v31);
          v41 = v39 + v31;
          if (v40)
          {
            goto LABEL_47;
          }

          *(v26 + 16) = v41;
        }

        goto LABEL_39;
      }
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (v22 > 0)
    {
      goto LABEL_46;
    }

LABEL_39:
    if (++v3 == v53)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1E38CFF50()
{
  sub_1E38D00A4(319, &qword_1ECF2D0B8, &qword_1ECF2CFF8);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1E38D004C();
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = type metadata accessor for LibDataSourceManager();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1E38D00A4(319, &qword_1ECF2D0C8, &qword_1ECF2D010);
      v1 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1E38D004C()
{
  if (!qword_1ECF2D0C0)
  {
    sub_1E4202144();
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2D0C0);
    }
  }
}

void sub_1E38D00A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1E4203924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E38D00F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClarityUIRootView();
  if (a2)
  {
    sub_1E38CD560();
  }
}

uint64_t sub_1E38D0178(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_17_2(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

void sub_1E38D01E8()
{
  v0 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_8_0(v0);

  sub_1E38CD13C();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_74_0();
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1E38D02C0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_0(v1);
  *v2 = v3;
  v2[1] = sub_1E388EDB0;

  return sub_1E38CD2E8();
}

unint64_t sub_1E38D03C8()
{
  result = qword_1ECF2D0F8;
  if (!qword_1ECF2D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D100);
    sub_1E374AD40(&qword_1ECF2D108, &unk_1ECF2D110);
    sub_1E374AD40(&qword_1ECF2D118, &unk_1ECF2D120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D0F8);
  }

  return result;
}

void sub_1E38D04A8()
{
  v0 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_31_20();

  sub_1E38CBEA8();
}

uint64_t sub_1E38D051C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E38D0594()
{
  result = qword_1ECF2D140;
  if (!qword_1ECF2D140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D148);
    sub_1E374AD40(&qword_1ECF2D108, &qword_1ECF2D110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D140);
  }

  return result;
}

uint64_t sub_1E38D065C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E38D06A4@<X0>(uint64_t *a1@<X8>)
{

  result = sub_1E3E61FFC(v2);
  *a1 = result;
  return result;
}

unint64_t sub_1E38D06D4()
{
  result = qword_1ECF2D160;
  if (!qword_1ECF2D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D160);
  }

  return result;
}

unint64_t sub_1E38D0728()
{
  result = qword_1ECF2D168;
  if (!qword_1ECF2D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D168);
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  OUTLINED_FUNCTION_82_2();
  type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_144();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4202144();
    OUTLINED_FUNCTION_2();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_29_19();
  OUTLINED_FUNCTION_95();

  return swift_deallocObject();
}

uint64_t sub_1E38D08DC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for ClarityUIRootView();
  OUTLINED_FUNCTION_17_2(v2);
  v3 = OUTLINED_FUNCTION_31_20();

  return a2(v3);
}

uint64_t sub_1E38D095C(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1E38D0ABC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_traitCollection;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E38D0B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_traitCollection;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E38D0B94()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_image;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38D0BD0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_image;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E38D0C64()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_imageType;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E38D0C98(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_imageType;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E38D0D5C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_preferredLayout;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
}

uint64_t sub_1E38D0DF0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingImage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E38D0E24(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingImage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E38D0EB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingBoldImage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E38D0EE4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingBoldImage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E38D0F70()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isBoldImage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E38D0FA4(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isBoldImage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E38D1030()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingFavoritesImage;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E38D1064(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingFavoritesImage;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1E38D10F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_favoritesImage;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38D112C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_favoritesImage;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E38D11F8(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E38D1244(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_tab;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

void sub_1E38D12C8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id sub_1E38D1388(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_image] = 0;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_imageType] = 5;
  *&v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_preferredLayout] = 0;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingImage] = 0;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingBoldImage] = 0;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isBoldImage] = 0;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isLoadingFavoritesImage] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_favoritesImage] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_layout;
  type metadata accessor for SideBarCollectionViewListCellLayout();
  *&v2[v5] = sub_1E3DCADA8();
  *&v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_traitCollection] = a1;
  v2[OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_isHeader] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SideBarItemConfig();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1E38D14B0()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (v3 == 5 || (sub_1E3CE4DD8(v3) & 1) != 0)
  {
    v4 = 0.0;
  }

  else
  {
    v6 = sub_1E38D1670();
    v7 = *(v0 + OBJC_IVAR____TtC8VideosUI17SideBarItemConfig_layout);
    if (v6)
    {
      v8 = swift_beginAccess();
      v4 = *(v7 + 112);
    }

    else
    {
      v9 = sub_1E374E9C4();
      v10 = (*(*v9 + 2288))(v9);

      v4 = v10;
    }

    v11 = (*((*v2 & *v1) + 0xF8))(v8);
    if (v11)
    {
      v12 = (*(*v11 + 2288))(v11);
      v14 = v13;

      if (v12 != 0.0 || v14 != 0.0)
      {
        v4 = v12;
      }
    }
  }

  return *&v4;
}

uint64_t sub_1E38D1670()
{
  sub_1E38D1D28();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

double sub_1E38D1720()
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB0))();
  v4 = [v3 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v6 = v6 && v1 == v5;
  if (v6)
  {
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
LABEL_6:

    return 1.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v7)
  {

    return 0.7;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.7;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v10)
  {

    return 0.8;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.8;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v12)
  {

    return 0.9;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 0.9;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v14)
  {
LABEL_42:

    return 1.0;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v16)
  {

    return 1.1;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.1;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v18)
  {

    return 1.2;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.2;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v20)
  {

    return 1.3;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.3;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v22)
  {

    return 1.25;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.25;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v24)
  {

    return 1.35;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.35;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v26)
  {

    return 1.45;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.45;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v28)
  {

    return 1.55;
  }

  OUTLINED_FUNCTION_0_68();
  OUTLINED_FUNCTION_7_8();

  if (v2)
  {

    return 1.55;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v1 == v30)
  {

    return 1.65;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_0_68();

    result = 1.65;
    if ((v32 & 1) == 0)
    {
      return 1.0;
    }
  }

  return result;
}

id sub_1E38D1C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SideBarItemConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E38D1D28()
{
  result = qword_1EE276540;
  if (!qword_1EE276540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE276540);
  }

  return result;
}

uint64_t sub_1E38D1D7C()
{
  v0 = sub_1E3B7B1C8();
  v1 = *(**v0 + 672);

  v3 = v1(v2);

  v5 = 0;
  v6 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v6 == v5)
    {

      type metadata accessor for Router();
      sub_1E40C49A8();
      return v8;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    sub_1E327F454(i, v21);
    sub_1E327F454(v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640);
    type metadata accessor for LibLocalSource();
    if (swift_dynamicCast())
    {

      sub_1E37DADF4(v21, v22);
      sub_1E37DADF4(v22, v23);
      type metadata accessor for LayoutGrid();
      sub_1E3A256EC();
      v10 = objc_opt_self();
      if ([v10 isPhone] & 1) != 0 || objc_msgSend(v10, sel_isPad) && ((sub_1E373F630() & 1) != 0 || (sub_1E373F630()))
      {
        type metadata accessor for Router();
        v11 = v24;
        v12 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v12 + 16))(v11, v12);
        sub_1E40C49A8();
        v9 = v13;
        goto LABEL_14;
      }

      v14 = *(**v0 + 408);

      v16 = v14(v15);

      if (v16)
      {
        type metadata accessor for Router();

        sub_1E40C49A8();
        v9 = v17;

LABEL_14:
      }

      else
      {
        type metadata accessor for Router();
        sub_1E40C49A8();
        v9 = v18;
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
      return v9;
    }

    ++v5;
    result = __swift_destroy_boxed_opaque_existential_1(v21);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38D2054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1E4207104();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if (__swift_getEnumTagSinglePayload(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v15 = swift_getAssociatedTypeWitness();
    v16 = v28;
LABEL_7:
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v25, 1, v15);
  }

  v17 = v28;
  (*(v9 + 32))(v14, v8, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_83();
  sub_1E42066B4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_0_69();
  v18 = sub_1E4205E24();
  v19 = *(v9 + 8);
  v19(v12, AssociatedTypeWitness);
  if ((v18 & 1) == 0 || (OUTLINED_FUNCTION_1_83(), sub_1E4206724(), OUTLINED_FUNCTION_0_69(), v20 = sub_1E4205E14(), v19(v12, AssociatedTypeWitness), (v20 & 1) == 0))
  {
    v19(v14, AssociatedTypeWitness);
    v15 = swift_getAssociatedTypeWitness();
    v16 = v17;
    goto LABEL_7;
  }

  v21 = sub_1E4206764();
  v23 = v22;
  v24 = swift_getAssociatedTypeWitness();
  (*(*(v24 - 8) + 16))(v17, v23, v24);
  v21(v29, 0);
  v19(v14, AssociatedTypeWitness);
  v16 = v17;
  v25 = 0;
  v15 = v24;
  return __swift_storeEnumTagSinglePayload(v16, v25, 1, v15);
}

uint64_t sub_1E38D23F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1E4206704())
  {
    v5 = 1;
  }

  else
  {
    (*(*(a1 - 8) + 16))(a2, v2, a1);
    v5 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, a1);
}

uint64_t sub_1E38D2484@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (sub_1E4206704())
  {
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, a2);
  }

  else
  {
    return a1(v3);
  }
}

uint64_t sub_1E38D2508()
{
  type metadata accessor for AudioConfig();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 autoPlayConfig];

  [v2 autoPlayVideoSound];
  swift_beginAccess();
  sub_1E4200634();
  result = swift_endAccess();
  qword_1EE2AB268 = v0;
  return result;
}

uint64_t *sub_1E38D25EC()
{
  if (qword_1EE2A8690 != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  return &qword_1EE2AB268;
}

uint64_t sub_1E38D262C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E38D26A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38D262C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E38D26F8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E38D2768()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E38D27DC(char a1)
{
  v1 = a1 & 1;
  result = sub_1E38D262C();
  if ((result & 1) != v1)
  {

    return sub_1E38D26F8();
  }

  return result;
}

uint64_t sub_1E38D282C()
{
  v1 = OBJC_IVAR____TtC8VideosUI11AudioConfig__isAudioMuted;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for AudioConfig()
{
  result = qword_1EE2A8680;
  if (!qword_1EE2A8680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38D291C()
{
  sub_1E32A995C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E38D29AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 488))();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (a3)
  {
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = a3;
    }
  }

  else
  {
    v7 = 0;
  }

  v66 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D1D8);
  sub_1E4148C68(sub_1E38D30E0, v10, &v59);

  v9 = v59;
  *(v59 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout) = a2;

  v11 = sub_1E373E010(11, v6);
  if (v11)
  {
    v12 = v11;
    if (*v11 == _TtC8VideosUI13TextViewModel)
    {
      type metadata accessor for UIFactory();
      v13 = *&v9[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel];
      *&v61 = 0;
      v59 = 0u;
      v60 = 0u;
      sub_1E38D37F0();
      v14 = v13;
      v15 = sub_1E393D92C(v12, v13, &v59, 0);

      sub_1E373C624(&v59);
      v16 = *&v9[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel];
      *&v9[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel] = v15;
      v17 = *&v9[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel];
      v18 = v15;
      [v9 vui:v17 addSubview:v16 oldView:?];
    }

    else
    {
    }
  }

  v19 = sub_1E373E010(91, v6);

  if (!v19)
  {
    return v9;
  }

  v21 = (*(*v19 + 464))(v20);

  if (!v21)
  {
    return v9;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC0];
  v22 = sub_1E32AE9B0(v21);
  v23 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_buttons;
  swift_beginAccess();
  v24 = 0;
  v55 = v21 & 0xFFFFFFFFFFFFFF8;
  v56 = v21 & 0xC000000000000001;
  v57 = -v22;
  v54 = v21;
LABEL_14:
  for (i = v24 + 4; &i[v57] != 4; ++i)
  {
    v26 = (i - 4);
    if (v56)
    {
      v27 = MEMORY[0x1E6911E60](i - 4, v21);
    }

    else
    {
      if (v26 >= *(v55 + 16))
      {
        goto LABEL_75;
      }
    }

    v24 = i - 3;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v28 = *&v9[v23];
    if (!v28)
    {
      goto LABEL_30;
    }

    v27 = v28 >> 62 ? sub_1E4207384() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v27)
    {
      goto LABEL_30;
    }

    swift_beginAccess();
    v29 = *&v9[v23];
    if (!v29)
    {
      v27 = swift_endAccess();
LABEL_30:
      v31 = 0;
      goto LABEL_31;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1E6911E60](i - 4);
    }

    else
    {
      if (v26 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v30 = *(v29 + 8 * i);
    }

    v31 = v30;
    swift_endAccess();
    v27 = v31;
LABEL_31:
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v64 = 2;
    v65 = 0;
    (*(*a2 + 1760))(v27);
    v66 = 1;
    v67 = 0u;
    v68 = 0u;
    v69 = 0;
    sub_1E3F86D44();
    v33 = v32;

    if (v33)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v34 = v33;
        MEMORY[0x1E6910BF0]();
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        v53 = v58;
        v21 = v54;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v21 = v54;
  }

  v24 = &unk_1EE236000;
  v35 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_buttons;
  result = swift_beginAccess();
  v26 = *&v9[v35];
  *&v9[v35] = v53;
  v57 = v26 >> 62;
  if (!v26)
  {
    goto LABEL_51;
  }

  if (!v57)
  {
    v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_80:
  result = sub_1E4207384();
  v37 = result;
  if (!result)
  {
    goto LABEL_51;
  }

LABEL_45:
  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  for (j = 0; j != v37; ++j)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1E6911E60](j, v26);
    }

    else
    {
      v39 = *(v26 + 8 * j + 32);
    }

    v40 = v39;
    [v39 vui_removeFromSuperView];
  }

LABEL_51:
  v41 = *(v24 + 509);
  swift_beginAccess();
  v42 = *&v9[v41];
  if (v42)
  {
    v43 = sub_1E32AE9B0(v42);
    v24 = (v42 & 0xC000000000000001);

    v44 = -v43;
    for (k = 4; v44 + k != 4; ++k)
    {
      v46 = k - 4;
      if (v24)
      {
        v47 = MEMORY[0x1E6911E60](k - 4, v42);
      }

      else
      {
        if (v46 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v47 = *(v42 + 8 * k);
      }

      v48 = v47;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_76;
      }

      if (v26 && (v57 ? (v49 = sub_1E4207384()) : (v49 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10)), v46 < v49))
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x1E6911E60](k - 4, v26);
        }

        else
        {
          if (v46 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v50 = *(v26 + 8 * k);
        }

        v51 = v50;
      }

      else
      {
        v51 = 0;
      }

      v52 = v48;
      [v9 vui:v52 addSubview:v51 oldView:?];
    }
  }

  return v9;
}

id sub_1E38D30E0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UpsellOfferTransactionView()) initWithFrame_];
  *a1 = result;
  return result;
}

unint64_t sub_1E38D3130(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a2);
  if (sub_1E373F630())
  {
    OUTLINED_FUNCTION_0_71();
  }

  else
  {
    sub_1E373F630();
    OUTLINED_FUNCTION_0_71();
    if ((v12 & 1) == 0)
    {
      v8 = 152;
      v9 = 160;
      v10 = 168;
      v11 = 176;
    }
  }

  v13 = *(v3 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout);
  v14 = *(v13 + v11);
  v15 = *(v13 + v10);
  v16 = *(v13 + v9);
  v17 = *(v13 + v8);
  v18 = a2 - v16 - v14;
  v19 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel;
  v20 = *(v3 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel);
  v21 = &unk_1EE236000;
  if (v20)
  {
    [v20 vui:a2 - v16 - v14 sizeThatFits:1.79769313e308];
    v23 = v22;
    v24 = *(*(v3 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout) + 184);
  }

  else
  {
    v24 = 0.0;
    v23 = 0.0;
  }

  v25 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_buttons;
  swift_beginAccess();
  v26 = *(v3 + v25);
  v59 = v16;
  if (!v26)
  {
    if (a1)
    {
      result = 0;
      goto LABEL_37;
    }

    goto LABEL_27;
  }

  v27 = sub_1E32AE9B0(v26);
  if (__OFSUB__(v27, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v27 - 1 < 0)
  {
    if (a1)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  v28 = v27;
  v54 = v19;
  v55 = v25;
  v57 = v24;
  v58 = v17;
  v56 = a3;
  v29 = a3 - v15;
  v30 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout;
  v21 = (v26 & 0xC000000000000001);

  v25 = v28 + 3;
  v31 = 0.0;
  do
  {
    v32 = v25 - 4;
    if (v21)
    {
      v33 = MEMORY[0x1E6911E60](v32, v26);
      goto LABEL_16;
    }

    if (v32 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v33 = *(v26 + 8 * v25);
LABEL_16:
    v34 = v33;
    [v33 vui:v18 sizeThatFits:{INFINITY, v54, v55, *&v56}];
    v37 = v36;
    v38 = v29 - v36;
    if ((a1 & 1) == 0)
    {
      if (v18 >= v35)
      {
        v39 = v35;
      }

      else
      {
        v39 = v18;
      }

      [v34 setFrame_];
    }

    v29 = v38 - *(*(v4 + v30) + 192);
    v31 = v31 + v37;
    --v25;
  }

  while (v25 != 3);

  v17 = v58;
  v21 = &unk_1EE236000;
  a3 = v56;
  v24 = v57;
  v19 = v54;
  v25 = v55;
  if (a1)
  {
LABEL_36:
    while (1)
    {
      result = *(v4 + v25);
LABEL_37:
      v23 = v17 + 0.0 + v24 + v23;
      if (!result)
      {
        break;
      }

      v18 = *(*(v4 + v21[508]) + 192);
      result = sub_1E32AE9B0(result);
      if (!__OFSUB__(result, 1))
      {
        break;
      }

LABEL_42:
      __break(1u);
LABEL_43:
      v53 = v26;

      v42 = MEMORY[0x1E6911E60](0, a1);

LABEL_33:
      [v42 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v60.origin.x = v44;
      v60.origin.y = v46;
      v60.size.width = v48;
      v60.size.height = v50;
      v24 = v57;
      v17 = v58;
      v51 = CGRectGetMinY(v60) - v23 - v57;
LABEL_35:
      [v26 setFrame_];
    }

    return result;
  }

LABEL_27:
  v26 = *(v4 + v19);
  if (!v26)
  {
    goto LABEL_36;
  }

  a1 = *(v4 + v25);
  if (!a1 || (result = sub_1E32AE9B0(*(v4 + v25))) == 0)
  {
    v51 = a3 - v23 - v15;
    v52 = v26;
    goto LABEL_35;
  }

  v58 = v17;
  v57 = v24;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    a1 = *(a1 + 32);
    v41 = v26;
    v42 = a1;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E38D3544(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v4, v5, v3, v1, ObjectType);
  v6 = OUTLINED_FUNCTION_6_12();
  return sub_1E38D3130(a1, v6, v7);
}

id sub_1E38D3604()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout;
  type metadata accessor for UpsellOfferTransactionViewLayout();
  *(v0 + v2) = sub_1E3FC915C();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_buttons) = 0;
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v0, ObjectType);
}

id sub_1E38D36C8(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_layout;
  type metadata accessor for UpsellOfferTransactionViewLayout();
  *&v1[v4] = sub_1E3FC915C();
  *&v1[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_disclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI26UpsellOfferTransactionView_buttons] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_1E38D37F0()
{
  result = qword_1EE23AD40;
  if (!qword_1EE23AD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD40);
  }

  return result;
}

void *sub_1E38D38CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  *(v3 + OBJC_IVAR____TtC8VideosUI31CanonicalDocumentViewController_withZoomTransition) = *(a3 + 24);

  sub_1E38D3D2C(a3, &v35);
  DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)();
  v8 = v7;
  v9 = OBJC_IVAR____TtC8VideosUI31CanonicalDocumentViewController_withZoomTransition;
  v10 = *(v7 + OBJC_IVAR____TtC8VideosUI31CanonicalDocumentViewController_withZoomTransition);
  v11 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x200);
  v12 = v7;
  v11(v10);

  if (*(v8 + v9) == 1)
  {
    v13 = [v12 vuiNavigationItem];
    [v13 setLargeTitleDisplayMode_];
  }

  if (sub_1E39DFFC8())
  {

LABEL_5:
    v14 = 2;
    goto LABEL_16;
  }

  v15 = [v12 traitCollection];
  v16 = [v15 isAXEnabled];

  if (v16)
  {

    v14 = 0;
    goto LABEL_16;
  }

  v17 = *(a1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v18 = *(a1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  if (v17 == sub_1E4205F14() && v18 == v19)
  {

LABEL_15:

    v14 = 1;
    goto LABEL_16;
  }

  v21 = sub_1E42079A4();

  if (v21)
  {
    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_5;
  }

  v36 = &unk_1F5D7BE68;
  v37 = &off_1F5D7BC48;
  LOBYTE(v35) = 0;
  sub_1E3F9F164(&v35);

  if (!v34)
  {
    __swift_destroy_boxed_opaque_existential_1(&v35);
    v31 = &v33;
LABEL_36:
    sub_1E325F748(v31, &unk_1ECF296E0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1(&v35);
  v29 = sub_1E3C7CCAC(9);
  sub_1E3277E60(v29, v30, v32, &v35);

  if (!v36)
  {
    v31 = &v35;
    goto LABEL_36;
  }

  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  if (v33)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

LABEL_16:
  if (sub_1E39DFFC8() & 1) != 0 || (*(a3 + 48))
  {

    sub_1E38D3D88(a3);
  }

  else
  {
    type metadata accessor for UberNavigationBarTitleView();
    v23 = *(a3 + 32);
    v24 = *(a3 + 40);

    v25 = v12;
    v26 = sub_1E398BFB8(v25, v14, v23, v24);
    v27 = [v25 navigationItem];
    [v27 setTitle_];

    v28 = [v25 navigationItem];
    [v28 setTitleView_];

    sub_1E38D3D88(a3);
    if (*(a3 + 49))
    {
    }

    else
    {
      if (v26)
      {
        [v26 setHeightShouldBeIncreasedByTabBarHeight_];
      }
    }
  }

  return v12;
}

void sub_1E38D3DDC()
{
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_3_14();
  sub_1E42076B4();
  __break(1u);
}

void sub_1E38D3E6C(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CanonicalDocumentViewController();
  objc_msgSendSuper2(&v8, sel_vui_willMoveToParentViewController_, a1);
  if (!a1)
  {
    v3 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v5 = (*(v4 + 432))();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for CanonicalTemplateController();
      OUTLINED_FUNCTION_19_3();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        (*((*v3 & *v7) + 0x850))();
      }
    }
  }
}

uint64_t type metadata accessor for CanonicalDocumentViewController()
{
  result = qword_1EE292B60;
  if (!qword_1EE292B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38D4034(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v7 = v6;
  v8 = sub_1E393D9C4(a1, a2, &v31, 0);

  sub_1E325F748(&v31, &qword_1ECF296C0);
  if (v8)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_19_3();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_13;
    }
  }

  v9 = *(a1 + 24);
  if (!v9)
  {
    goto LABEL_14;
  }

  if (*(a1 + 16) == 0xD000000000000012 && v9 == 0x80000001E42665F0)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v11 = sub_1E42079A4();
  if (v8 && (v11 & 1) != 0)
  {
LABEL_12:
    objc_opt_self();
    OUTLINED_FUNCTION_19_3();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_14;
    }

LABEL_13:
    swift_unknownObjectWeakAssign();
  }

LABEL_14:
  *(&v32 + 1) = &unk_1F5D5D0A8;
  v33 = &off_1F5D5C758;
  LOBYTE(v31) = 15;
  v12 = sub_1E39C29F0(&v31, 0);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  if ((v12 & 1) == 0)
  {
    return v8;
  }

  v13 = sub_1E373F6E0();
  if (!v8)
  {
    return v8;
  }

  if ((v13 & 1) == 0)
  {
    return v8;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_19_3();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    return v8;
  }

  v15 = v14;
  v16 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x2F0);
  v17 = v8;
  v18 = v16();
  if (!v18 || (v19 = v18, swift_beginAccess(), v20 = *(v19 + 56), , , !v20))
  {

    return v8;
  }

  if ((sub_1E397D25C() & 1) == 0)
  {

    return 0;
  }

  v21 = (*(*v20 + 464))();
  if (!v21)
  {
LABEL_43:

    return v8;
  }

  v22 = v21;
  v30 = v17;
  result = sub_1E32AE9B0(v21);
  v24 = result;
  for (i = 0; ; ++i)
  {
    if (v24 == i)
    {

      goto LABEL_42;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v22);
      v26 = result;
    }

    else
    {
      if (i >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v26 = *(v22 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v39 = *(v26 + 98);
    v38 = 130;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v36 == v34 && v37 == v35)
    {

LABEL_39:

      type metadata accessor for EpisodeCollectionViewModel();
      v29 = swift_dynamicCastClass();
      if (v29)
      {
        [v15 setSeasonDownloadDataSourceProvider_];
      }

LABEL_42:
      v17 = v30;
      goto LABEL_43;
    }

    v28 = sub_1E42079A4();

    if (v28)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_1E38D4438(void *a1)
{
  [a1 action];
  v2 = sub_1E383C218();
  if (v2 == 4)
  {
    return;
  }

  v3 = v2;
  if (sub_1E374E8E4(v2, 0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v5 = [Strong viewModel];
      v6 = [v5 downloadState];

      if (v6)
      {
        v7 = [v17 viewModel];
        v8 = [v7 downloadState];

        if (v8 != 4)
        {
LABEL_19:

          return;
        }

        v9 = 0xD000000000000023;
        v10 = 0x80000001E4266640;
      }

      else
      {
        v10 = 0x80000001E425FA40;
        v9 = 0xD000000000000018;
      }

      sub_1E383C2A4(v9, v10);
      v16 = sub_1E4205ED4();

      [a1 setTitle_];

      goto LABEL_19;
    }
  }

  if (sub_1E374E8E4(v3, 1))
  {
    sub_1E385325C(10);
    v13 = sub_1E38D4FBC(v11, v12);

    if (v13)
    {
      v14 = "shareBarButtonItem";
      v15 = 0xD000000000000021;
    }

    else
    {
      v14 = "rectangle.badge.checkmark";
      v15 = 0xD00000000000001DLL;
    }

    sub_1E383C2A4(v15, v14 | 0x8000000000000000);
    v17 = sub_1E4205ED4();

    [a1 setTitle_];
    goto LABEL_19;
  }

  if (!sub_1E374E8E4(v3, 3))
  {

    sub_1E374E8E4(v3, 2);
  }
}

uint64_t sub_1E38D46E0()
{
  v0 = sub_1E383C218();
  if (v0 == 4)
  {
    return 0;
  }

  v2 = v0;
  if (!sub_1E374E8E4(v0, 3))
  {
    sub_1E41FE9C4();
    result = sub_1E41FE9B4();
    if (!result)
    {
      return result;
    }

    if (sub_1E374E8E4(v2, 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = [Strong viewModel];
        v6 = [v5 downloadState];

        v7 = [v4 viewModel];
        v8 = [v7 downloadState];

        v9 = [v4 viewModel];
        v10 = [v9 downloadState];

        if (!v8 || v10 == 4)
        {

          return 1;
        }

        if (v6 == 2)
        {
          v18 = sub_1E38D5184();

          if (v18)
          {
            return 1;
          }
        }

        else
        {
        }

        return 0;
      }
    }

    if (sub_1E374E8E4(v2, 1))
    {
      sub_1E385325C(9);
      v13 = sub_1E38D4FBC(v11, v12);

      if (v13)
      {
        return 1;
      }

      v14 = 10;
    }

    else
    {
      if (!sub_1E374E8E4(v2, 2) || (sub_1E38D5184() & 1) == 0)
      {
        return 0;
      }

      v14 = 9;
    }

    sub_1E385325C(v14);
    v17 = sub_1E38D4FBC(v15, v16);

    return v17;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  return result;
}

void sub_1E38D4968()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v1 = [Strong viewModel];
    v2 = [v1 downloadState];

    if (v2)
    {
      v3 = [v5 viewModel];
      [v3 downloadState];
    }

    v4 = [v5 actionHandler];
    [v4 performAction:0 confirmBeforeStopDownloading:v2 == 0];
  }
}

void sub_1E38D4AA8()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 752))();
  if (!v1 || (v2 = v1, OUTLINED_FUNCTION_0_72(), v3 = *(v2 + 56), , , !v3))
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_8;
  }

  LOBYTE(v14) = 0;
  OUTLINED_FUNCTION_8();
  (*(v4 + 776))(&v15, &v14, &unk_1F5D5E188, &off_1F5D5CB18);

  if (!*(&v16 + 1))
  {
LABEL_8:
    sub_1E325F748(&v15, &unk_1ECF296E0);
    return;
  }

  if (OUTLINED_FUNCTION_1_18())
  {
    sub_1E385325C(10);
    v7 = sub_1E38D4FBC(v5, v6);

    if (v7)
    {
      v8 = [objc_opt_self() sharedInstance];
      v9 = sub_1E4205ED4();

      [v8 sendRequestForDeleteID:v9 isContinueWatching:0];
    }

    else if ((sub_1E38D5184() & 1) == 0 || (, sub_1E38D51F4(), v10))
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = sub_1E4205ED4();

      v13 = sub_1E4205ED4();
      [v11 sendRequestForItemID:v12 itemType:v13 channelID:0 adamID:0];
    }
  }
}

void sub_1E38D4D38()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong sendActionsForControlEvents_];
  }
}

void sub_1E38D4DE0()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 752))();
  if (!v1 || (v2 = v1, OUTLINED_FUNCTION_0_72(), v3 = *(v2 + 56), , , !v3))
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v8) = 0;
  OUTLINED_FUNCTION_8();
  (*(v4 + 776))(&v9, &v8, &unk_1F5D5E188, &off_1F5D5CB18);

  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_1E325F748(&v9, &unk_1ECF296E0);
    return;
  }

  if (OUTLINED_FUNCTION_1_18())
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = sub_1E4205ED4();

    v7 = sub_1E4205ED4();
    [v5 sendRequestForItemID:v6 itemType:v7 channelID:0 adamID:0];
  }
}

BOOL sub_1E38D4FBC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  v5 = (*(v4 + 752))();
  if (!v5 || (v6 = v5, swift_beginAccess(), v7 = *(v6 + 56), , , !v7))
  {
    v15 = 0u;
    v16 = 0u;
    goto LABEL_7;
  }

  LOBYTE(v14) = 8;
  OUTLINED_FUNCTION_8();
  (*(v8 + 776))(&v15, &v14, &unk_1F5D5D6D8, &off_1F5D5C8B8);

  if (!*(&v16 + 1))
  {
LABEL_7:
    sub_1E325F748(&v15, &unk_1ECF296E0);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  v9 = swift_dynamicCast();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v14;
  *&v15 = a1;
  *(&v15 + 1) = a2;
  MEMORY[0x1EEE9AC00](v9);
  v13[2] = &v15;
  v11 = sub_1E3849DF8(sub_1E3756228, v13, v10);

  return v11;
}

void *sub_1E38D5184()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result viewModel];

    v3 = [v2 downloadType];
    return (v3 == 1);
  }

  return result;
}

uint64_t sub_1E38D51F4()
{
  if ((sub_1E38D5184() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 752))();
  if (!v1 || (v2 = v1, OUTLINED_FUNCTION_0_72(), v3 = *(v2 + 56), , , !v3))
  {
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  LOBYTE(v6) = 11;
  OUTLINED_FUNCTION_8();
  (*(v4 + 776))(&v7, &v6, &unk_1F5D5D6D8, &off_1F5D5C8B8);

  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_1E325F748(&v7, &unk_1ECF296E0);
    return 0;
  }

  if (OUTLINED_FUNCTION_1_18())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_1E38D5324()
{
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI31CanonicalDocumentViewController_downloadButton);

  JUMPOUT(0x1E69144A0);
}

id sub_1E38D536C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalDocumentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1E38D5448(double a1, double a2)
{
  v6 = 0;
  v7 = 0;
  v5 = (a1 + -1.0) / a2 + 1.0;
  v3 = 0x3FF0000000000000;
  v4 = 0;
  sub_1E3793CAC();
  clamp<A>(_:_:_:)(&v6, &v5, &v3, MEMORY[0x1E69E7DE0]);
  return v8;
}

uint64_t sub_1E38D54B8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ShowcaseOpacityModifier();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v13 = *(v12 + 24);
  *(v11 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v14 = v11 + *(v7 + 28);
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  *(v11 + 16) = a1;
  type metadata accessor for ShowcaseValue();
  sub_1E38D5960();

  *v11 = sub_1E42010C4();
  *(v11 + 8) = v15;
  MEMORY[0x1E690DE70](v11, a3, v7, a4);
  return sub_1E38D59B8(v11);
}

uint64_t type metadata accessor for ShowcaseOpacityModifier()
{
  result = qword_1EE298660;
  if (!qword_1EE298660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38D5638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E38D56D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D1E8);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D1F0);
  *(a2 + *(result + 36)) = v4;
  return result;
}

long double sub_1E38D56D0()
{
  v1 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = (*(**(v0 + 8) + 136))();
  v9 = 1.0;
  v10 = 0.8;
  v11 = v8;
  switch(*(v0 + 16))
  {
    case 1:
    case 2:
    case 6:
      goto LABEL_3;
    case 3:
    case 4:
      v10 = 0.5;
LABEL_3:
      switch(*(v0 + 16))
      {
        case 2:
          v14 = type metadata accessor for ShowcaseOpacityModifier();
          if ((sub_1E38D5E2C(*(v0 + *(v14 + 28)), *(v0 + *(v14 + 28) + 8)) & 1) == 0 && v10 * 0.5 <= v11)
          {
            v9 = 0.0;
            if (v10 >= v11)
            {
              return 1.0 - pow((v11 - v10 * 0.5) / (v10 - v10 * 0.5), 3.0) + 0.1;
            }
          }

          return v9;
        case 3:
        case 4:

          result = sub_1E38D5448(v8, v10);
          break;
        case 5:
        case 6:
          v9 = 0.0;
          goto LABEL_9;
        default:
          type metadata accessor for ShowcaseOpacityModifier();
          sub_1E3746E10(v7);
          v13 = sub_1E3B0352C();
          (*(v3 + 8))(v7, v1);
          if ((v13 & 1) == 0)
          {
            v9 = 0.0;
            if (v11 >= v10)
            {
              return (v11 - v10) / (1.0 - v10);
            }
          }

          return v9;
      }

      return result;
    case 5:
      v9 = 0.0;
      v10 = 0.7;
LABEL_9:
      if (v8 >= v10)
      {
        v9 = 1.0;
        if (v8 < 1.0)
        {
          return (v11 - v10) / (1.0 - v10);
        }
      }

      return v9;
    default:
      return v9;
  }
}

uint64_t sub_1E38D5930@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E42019B4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1E38D5960()
{
  result = qword_1EE2839E8[0];
  if (!qword_1EE2839E8[0])
  {
    type metadata accessor for ShowcaseValue();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2839E8);
  }

  return result;
}

uint64_t sub_1E38D59B8(uint64_t a1)
{
  v2 = type metadata accessor for ShowcaseOpacityModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E38D5A14()
{
  result = qword_1EE298670;
  if (!qword_1EE298670)
  {
    type metadata accessor for ShowcaseOpacityModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE298670);
  }

  return result;
}

unint64_t sub_1E38D5A70()
{
  result = qword_1ECF2D1E0;
  if (!qword_1ECF2D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D1E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowcaseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShowcaseType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_1E38D5C60()
{
  sub_1E38D5D04();
  if (v0 <= 0x3F)
  {
    sub_1E38D5D68();
    if (v1 <= 0x3F)
    {
      sub_1E38D5DC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E38D5D04()
{
  if (!qword_1EE289D70)
  {
    type metadata accessor for ShowcaseValue();
    sub_1E38D5960();
    v0 = sub_1E42010F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289D70);
    }
  }
}

void sub_1E38D5D68()
{
  if (!qword_1EE289EB0)
  {
    sub_1E42012F4();
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289EB0);
    }
  }
}

void sub_1E38D5DC0()
{
  if (!qword_1EE289E70)
  {
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289E70);
    }
  }
}

uint64_t sub_1E38D5E2C(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1E3270FC8(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    sub_1E38D5FEC(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

uint64_t sub_1E38D5FEC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1E38D5FF8()
{
  result = qword_1ECF2D1F8;
  if (!qword_1ECF2D1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D1F0);
    sub_1E38D6084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D1F8);
  }

  return result;
}

unint64_t sub_1E38D6084()
{
  result = qword_1ECF2D200;
  if (!qword_1ECF2D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D200);
  }

  return result;
}

uint64_t sub_1E38D60E8()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF71368);
  v1 = OUTLINED_FUNCTION_32_0();
  __swift_project_value_buffer(v1, v2);
  return sub_1E41FFCA4();
}

uint64_t sub_1E38D6168()
{
  if (qword_1ECF4F0A0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v0 = sub_1E41FFCB4();

  return __swift_project_value_buffer(v0, qword_1ECF71368);
}

uint64_t type metadata accessor for TVAppExtensionHostViewController.Configuration()
{
  result = qword_1ECF4F3B0;
  if (!qword_1ECF4F3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static TVAppExtensionHostViewController.createWithURL(url:)()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  v3 = v2 - v1;
  type metadata accessor for TVAppExtensionHostViewController();
  v4 = OUTLINED_FUNCTION_13_8();
  v5(v4);
  return TVAppExtensionHostViewController.__allocating_init(url:)(v3);
}

id TVAppExtensionHostViewController.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1E41FE364();
  v5 = [v3 initWithURL_];

  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(a1);
  return v5;
}

char *static TVAppExtensionHostViewController.createWithURL(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  v11 = objc_allocWithZone(type metadata accessor for TVAppExtensionHostViewController());
  v12 = OUTLINED_FUNCTION_16_0();
  sub_1E34AF604(v12);
  return TVAppExtensionHostViewController.init(url:completion:)(v8, a2, a3);
}

char *TVAppExtensionHostViewController.__allocating_init(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = OUTLINED_FUNCTION_74();
  return TVAppExtensionHostViewController.init(url:completion:)(v6, v7, a3);
}

void *sub_1E38D66DC()
{
  v1 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_service;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38D6728(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_service;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t variable initialization expression of TVAppExtensionHostViewController.loadingViewController()
{
  v0 = sub_1E41FFCE4();
  v1 = OUTLINED_FUNCTION_17_2(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E41FFCD4();
  v2 = objc_allocWithZone(sub_1E41FFD04());
  OUTLINED_FUNCTION_106();
  return sub_1E41FFCF4();
}

void *TVAppExtensionHostViewController.init(url:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_9_5();
  v3 = sub_1E41FFCE4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  *&v2[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_service] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_session] = 0;
  v8 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  sub_1E41FFCD4();
  v9 = objc_allocWithZone(sub_1E41FFD04());
  *&v2[v8] = OUTLINED_FUNCTION_24_19();
  v10 = &v2[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_handleError];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child] = 0;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for TVAppExtensionHostViewController();
  v11 = objc_msgSendSuper2(&v17, sel_initWithNibName_bundle_, 0, 0);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0xD8);
  v13 = v11;
  v14 = OUTLINED_FUNCTION_50();
  v12(v14);

  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  (*(v15 + 8))(v0);
  return v7;
}

char *TVAppExtensionHostViewController.init(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E41FE364();
  v9 = [v4 initWithURL_];

  sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  (*(v10 + 8))(a1);
  v11 = &v9[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_handleError];
  v12 = *&v9[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_handleError];
  *v11 = a2;
  *(v11 + 1) = a3;
  v13 = v9;
  v14 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF604(v14);
  sub_1E34AF594(v12);

  v15 = OUTLINED_FUNCTION_13_8();
  sub_1E34AF594(v15);
  return v13;
}

uint64_t TVAppExtensionHostViewController.setURL(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  type metadata accessor for TVAppExtensionHostService();
  (*(v9 + 16))(v13, a1, v7);
  v14 = v1;
  v15 = sub_1E38DADCC(v14, v13);
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x80))(v15);
  v16 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  sub_1E4206434();
  v17 = v14;
  v18 = sub_1E4206424();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v17;
  sub_1E37748D8(0, 0, v6, &unk_1E42A91F0, v19);
}

uint64_t sub_1E38D6DAC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = sub_1E4206434();
  v0[4] = sub_1E4206424();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1E38D6E58;

  return sub_1E38D91A4();
}

uint64_t sub_1E38D6E58()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[6] = v7;
  v3[7] = v0;

  v9 = sub_1E42063B4();
  v3[8] = v9;
  v3[9] = v8;
  if (v0)
  {
    v10 = sub_1E38D7234;
  }

  else
  {
    v10 = sub_1E38D6FA4;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1E38D6FA4()
{
  OUTLINED_FUNCTION_24();
  *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_session) = *(v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E38D7024, 0, 0);
}

uint64_t sub_1E38D7024()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 80) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E38D70A8, v2, v1);
}

uint64_t sub_1E38D70A8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[2];

  v2 = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];

  v3 = sub_1E4206D34();
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))(v3);
  if (v5)
  {
    v6 = v5;
    (*((*v4 & *v5) + 0xD8))();
  }

  v7 = v2;
  sub_1E38D7D84(v2);

  v8 = v0[8];
  v9 = v0[9];

  return MEMORY[0x1EEE6DFA0](sub_1E38D71CC, v8, v9);
}

uint64_t sub_1E38D71CC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E38D7234()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E38D7290()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E38D6DAC();
}

Swift::Void __swiftcall TVAppExtensionHostViewController.report(error:)(NSError *error)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_handleError);
  if (v2)
  {

    v2(error);
    v4 = OUTLINED_FUNCTION_32_0();

    sub_1E34AF594(v4);
  }
}

void sub_1E38D74CC()
{
  v1 = sub_1E41FFCE4();
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  *(v0 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_service) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_session) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  sub_1E41FFCD4();
  v4 = objc_allocWithZone(sub_1E41FFD04());
  *(v0 + v3) = OUTLINED_FUNCTION_24_19();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_handleError);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child) = 0;
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall TVAppExtensionHostViewController.viewDidLoad()()
{
  v1 = v0;
  if (qword_1ECF4F0A0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71368);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  v5 = OUTLINED_FUNCTION_14_50();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_13_13();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v19 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = OUTLINED_FUNCTION_13_8();
    *(v7 + 4) = sub_1E3270FC8(v8, v9, v10);
    _os_log_impl(&dword_1E323F000, v3, v4, "Begin %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v21.receiver = v1;
  v21.super_class = type metadata accessor for TVAppExtensionHostViewController();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(1);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();
  v13 = OUTLINED_FUNCTION_14_50();
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_13_13();
    v15 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v20 = swift_slowAlloc();
    *v15 = 136315138;
    v16 = OUTLINED_FUNCTION_13_8();
    *(v15 + 4) = sub_1E3270FC8(v16, v17, v18);
    _os_log_impl(&dword_1E323F000, v11, v12, "End %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }
}

Swift::Void __swiftcall TVAppExtensionHostViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for TVAppExtensionHostViewController();
  objc_msgSendSuper2(&v16, sel_viewWillLayoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v4, sel_setFrame_);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:
  v7 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  v8 = [*&v1[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController] parentViewController];
  if (v8)
  {
    v9 = v8;
    sub_1E38DA110();
    v10 = v1;
    OUTLINED_FUNCTION_74();
    v11 = sub_1E4206F64();

    if (v11)
    {
      v12 = [*&v1[v7] view];
      if (v12)
      {
        v13 = v12;
        v14 = [v10 view];
        if (v14)
        {
          v15 = v14;
          [v14 bounds];
          OUTLINED_FUNCTION_3();

          OUTLINED_FUNCTION_18_28(v13, sel_setFrame_);
          return;
        }

LABEL_14:
        __break(1u);
        return;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }
}

id sub_1E38D7A44()
{
  result = [*&v1[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController] parentViewController];
  if (result)
  {
    OUTLINED_FUNCTION_9_5();
    sub_1E38DA110();
    v3 = v1;
    v4 = sub_1E4206F64();

    return (v4 & 1);
  }

  return result;
}

void sub_1E38D7AC0(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  v5 = [*&v2[OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController] parentViewController];
  if ((a1 & 1) == 0)
  {
    if (!v5 || (v24 = v5, sub_1E38DA110(), v8 = v2, v9 = sub_1E4206F64(), v8, v24, (v9 & 1) == 0))
    {
      OUTLINED_FUNCTION_25_29();
      return;
    }

    [*&v2[v4] willMoveToParentViewController_];
    v10 = [*&v2[v4] view];
    if (v10)
    {
      v11 = v10;
      [v10 removeFromSuperview];

      OUTLINED_FUNCTION_25_29();

      goto LABEL_11;
    }

LABEL_24:
    __break(1u);
    return;
  }

  if (!v5)
  {
    [v2 addChildViewController_];
    v15 = [*&v2[v4] view];
    if (v15)
    {
      v16 = v15;
      v17 = [v2 view];
      if (v17)
      {
        v18 = v17;
        [v17 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v16, sel_setFrame_);
        v19 = [v2 view];
        if (v19)
        {
          v20 = v19;
          v21 = [*&v2[v4] view];
          if (v21)
          {
            v22 = v21;
            [v20 addSubview_];

            OUTLINED_FUNCTION_25_29();

LABEL_11:
            [v12 v13];
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_25_29();
}

void (*sub_1E38D7D10(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1E38D7A44() & 1;
  return sub_1E38D7D5C;
}

void sub_1E38D7D84(void *a1)
{
  v2 = v1;
  v22 = *(v1 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child);
  *(v1 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child) = a1;
  v3 = OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_child);
  v5 = a1;
  if (v4)
  {
    if (!v22)
    {
      goto LABEL_9;
    }

    sub_1E38DA110();
    v6 = v4;
    v7 = v22;
    v8 = sub_1E4206F64();

    if (v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!v22)
    {
      goto LABEL_18;
    }

    v7 = v22;
  }

  v9 = v7;
  [v9 willMoveToParentViewController_];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = v10;
  [v10 removeFromSuperview];

  [v9 removeFromParentViewController];
  v4 = *(v2 + v3);
  if (v4)
  {
LABEL_9:
    v12 = v4;
    v13 = [v2 addChildViewController_];
    v14 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))(v13);
    v15 = [v2 view];
    v16 = v15;
    if ((v14 & 1) == 0)
    {
      if (v15)
      {
        v21 = [v12 view];
        if (v21)
        {
          v20 = v21;
          [v16 addSubview_];
          goto LABEL_17;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    if (v15)
    {
      v17 = [v12 view];
      if (v17)
      {
        v18 = v17;
        v19 = [*(v2 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController) view];
        if (v19)
        {
          v20 = v19;
          [v16 insertSubview:v18 belowSubview:v19];

          v16 = v18;
LABEL_17:

          [v12 didMoveToParentViewController_];
          goto LABEL_18;
        }

LABEL_26:
        __break(1u);
        return;
      }

      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
}

uint64_t sub_1E38D8004(uint64_t a1)
{
  v3 = v1;
  if (qword_1ECF4F0A0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v5 = sub_1E41FFCB4();
  __swift_project_value_buffer(v5, qword_1ECF71368);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  v8 = OUTLINED_FUNCTION_14_50();
  v10 = "VideosUI.LibMenuTemplateViewInteractor" + 32;
  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_13_13();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v29 = swift_slowAlloc();
    *v11 = 136315138;
    v10 = "ractor";
    *(v11 + 4) = OUTLINED_FUNCTION_36_20("tensionHostView.swift", v28);
    _os_log_impl(&dword_1E323F000, v6, v7, "Begin %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  if (*(v3 + OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_session))
  {

    v12 = sub_1E4206D04();
    if (v2)
    {
      v13 = v2;
      v14 = sub_1E41FFC94();
      v15 = sub_1E42067E4();

      if (os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_13_13();
        v7 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v7 = 138412290;
        v17 = v2;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_1E323F000, v14, v15, "Failed to make connection error '%@'", v7, 0xCu);
        sub_1E325F6F0(v16, &unk_1ECF28E30);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      swift_willThrow();
    }

    else
    {
      v7 = v12;
      v19 = objc_opt_self();
      v20 = [v19 interfaceWithProtocol_];
      [v7 setExportedInterface_];

      [v7 setExportedObject_];
      v21 = [v19 interfaceWithProtocol_];
      [v7 setRemoteObjectInterface_];

      [v7 resume];
      v22 = sub_1E41FFC94();
      v23 = sub_1E42067E4();
      v24 = OUTLINED_FUNCTION_14_50();
      if (os_log_type_enabled(v24, v25))
      {
        OUTLINED_FUNCTION_13_13();
        v26 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v30 = swift_slowAlloc();
        *v26 = *(v10 + 463);
        *(v26 + 4) = OUTLINED_FUNCTION_36_20("tensionHostView.swift", v28);
        _os_log_impl(&dword_1E323F000, v22, v23, "End %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }
    }
  }

  else
  {
    sub_1E38DA154();
    swift_allocError();
    swift_willThrow();
  }

  return v7;
}

uint64_t sub_1E38D83CC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = type metadata accessor for TVAppExtensionHostViewController.Configuration();
  v0[3] = v2;
  OUTLINED_FUNCTION_17_2(v2);
  v0[4] = OUTLINED_FUNCTION_86_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D238);
  OUTLINED_FUNCTION_17_2(v3);
  v0[5] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF654();
  v0[6] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[7] = v5;
  v0[8] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FF5C4();
  v0[9] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[10] = v7;
  v0[11] = OUTLINED_FUNCTION_86_0();
  v8 = sub_1E41FF5E4();
  v0[12] = v8;
  OUTLINED_FUNCTION_8_0(v8);
  v0[13] = v9;
  v0[14] = OUTLINED_FUNCTION_86_0();
  v10 = sub_1E41FF604();
  v0[15] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[16] = v11;
  v0[17] = OUTLINED_FUNCTION_86_0();
  v0[18] = sub_1E4206434();
  v0[19] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v13 = sub_1E42063B4();
  v0[20] = v13;
  v0[21] = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E38D85E0, v13, v12);
}

uint64_t sub_1E38D85E0()
{
  v19 = v0;
  if (qword_1ECF4F0A0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v1 = sub_1E41FFCB4();
  v0[22] = __swift_project_value_buffer(v1, qword_1ECF71368);
  v2 = sub_1E41FFC94();
  sub_1E42067E4();
  v3 = OUTLINED_FUNCTION_14_50();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_13();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = OUTLINED_FUNCTION_16_35();
    *(v5 + 4) = sub_1E3270FC8(v7, v8, &v18);
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  sub_1E41FF5B4();
  sub_1E41FF5F4();
  sub_1E41FF5D4();
  v14 = sub_1E4206424();
  v0[23] = v14;
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_1E38D87C4;
  v16 = MEMORY[0x1E69E85E0];

  return sub_1E38D8E48(v14, v16);
}

uint64_t sub_1E38D87C4()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *(v3 + 200) = v5;
  *(v3 + 208) = v0;

  v6 = *(v2 + 168);
  v7 = *(v2 + 160);
  if (v0)
  {
    v8 = sub_1E38D8D34;
  }

  else
  {
    v8 = sub_1E38D8918;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E38D8918()
{
  v57 = v0;
  v1 = v0[25];

  if (v1)
  {
    v3 = v0[5];
    v2 = v0[6];
    sub_1E38D90FC(v0[25], v3);

    if (__swift_getEnumTagSinglePayload(v3, 1, v2) != 1)
    {
      v25 = v0[7];
      v24 = v0[8];
      v26 = v0[6];
      v28 = v0[3];
      v27 = v0[4];
      (*(v25 + 32))(v24, v0[5], v26);
      (*(v25 + 16))(v27, v24, v26);
      v29 = (v27 + *(v28 + 20));
      *v29 = 0x746C7561666564;
      v29[1] = 0xE700000000000000;
      v30 = sub_1E41FFC94();
      v31 = sub_1E42067E4();
      v32 = os_log_type_enabled(v30, v31);
      v34 = v0[16];
      v33 = v0[17];
      v35 = v0[15];
      v36 = v0[13];
      v54 = v0[12];
      v55 = v0[14];
      v37 = v0[10];
      v52 = v0[9];
      v53 = v0[11];
      v51 = v0[8];
      v39 = v0[6];
      v38 = v0[7];
      if (v32)
      {
        OUTLINED_FUNCTION_13_13();
        v50 = v33;
        v40 = swift_slowAlloc();
        OUTLINED_FUNCTION_15_4();
        v49 = v35;
        v41 = swift_slowAlloc();
        v56 = v41;
        *v40 = 136315138;
        v42 = OUTLINED_FUNCTION_16_35();
        *(v40 + 4) = sub_1E3270FC8(v42, v43, &v56);
        _os_log_impl(&dword_1E323F000, v30, v31, "End %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();

        (*(v38 + 8))(v51, v39);
        (*(v37 + 8))(v53, v52);
        (*(v36 + 8))(v55, v54);
        (*(v34 + 8))(v50, v49);
      }

      else
      {

        (*(v38 + 8))(v51, v39);
        (*(v37 + 8))(v53, v52);
        (*(v36 + 8))(v55, v54);
        v44 = OUTLINED_FUNCTION_27_0();
        v46(v44, v45);
      }

      sub_1E38DA408(v0[4], v0[2]);
      v23 = 0;
      goto LABEL_12;
    }

    v4 = v0[14];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[5];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v6 + 8))(v4, v5);
    v8 = OUTLINED_FUNCTION_16_0();
    v9(v8);
    sub_1E325F6F0(v7, &qword_1ECF2D238);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v10 = sub_1E41FFC94();
    sub_1E42067E4();
    v11 = OUTLINED_FUNCTION_14_50();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v18 = v0[14];
    v19 = v0[12];
    v20 = v0[13];

    (*(v20 + 8))(v18, v19);
    v21 = OUTLINED_FUNCTION_27_0();
    v22(v21);
  }

  v23 = 1;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v0[2], v23, 1, v0[3]);

  OUTLINED_FUNCTION_54();

  return v47();
}

uint64_t sub_1E38D8D34()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E38D8E48(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1E41FF5C4();
  sub_1E38DA4C8();
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_1E38D8F08;

  return MEMORY[0x1EEE6D8C8](v2 + 2);
}

uint64_t sub_1E38D8F08()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = sub_1E42063B4();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_1E38D9074;
  }

  else
  {
    if (v6)
    {
      swift_getObjectType();
      v9 = sub_1E42063B4();
      v11 = v12;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v13 = sub_1E38B27A0;
  }

  return MEMORY[0x1EEE6DFA0](v13, v9, v11);
}

uint64_t sub_1E38D9074()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 24) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E38D90FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E41FF654();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E38D91A4()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FF654();
  v1[3] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF624();
  OUTLINED_FUNCTION_17_2(v4);
  v1[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF644();
  v1[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[8] = v6;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v7 = sub_1E4206CF4();
  v1[11] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[12] = v8;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D228);
  OUTLINED_FUNCTION_17_2(v9);
  v1[15] = OUTLINED_FUNCTION_86_0();
  v10 = type metadata accessor for TVAppExtensionHostViewController.Configuration();
  v1[16] = v10;
  OUTLINED_FUNCTION_17_2(v10);
  v1[17] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[18] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v12 = sub_1E42063B4();
  v1[19] = v12;
  v1[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E38D93B0, v12, v11);
}

uint64_t sub_1E38D93B0()
{
  v15 = v0;
  if (qword_1ECF4F0A0 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v1 = sub_1E41FFCB4();
  *(v0 + 168) = __swift_project_value_buffer(v1, qword_1ECF71368);
  v2 = sub_1E41FFC94();
  sub_1E42067E4();
  v3 = OUTLINED_FUNCTION_14_50();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_13_13();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1E3270FC8(0x7373655364616F6CLL, 0xED000029286E6F69, &v14);
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_1E38D9544;

  return sub_1E38D83CC();
}

uint64_t sub_1E38D9544()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);
  if (v0)
  {
    v7 = sub_1E38D9D10;
  }

  else
  {
    v7 = sub_1E38D9674;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E38D9674()
{
  v1 = v0[15];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[16]) == 1)
  {

    sub_1E325F6F0(v1, &qword_1ECF2D228);
    v2 = sub_1E41FFC94();
    sub_1E42067E4();
    v3 = OUTLINED_FUNCTION_14_50();
    if (os_log_type_enabled(v3, v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    sub_1E38DA3B4();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_6_50();

    OUTLINED_FUNCTION_54();

    return v10();
  }

  else
  {
    v12 = v0[17];
    v13 = v0[5];
    v15 = v0[3];
    v14 = v0[4];
    sub_1E38DA408(v1, v12);
    sub_1E4206CE4();
    (*(v14 + 16))(v13, v12, v15);
    sub_1E41FF614();
    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_1E38D98F8;
    v17 = v0[10];
    v18 = v0[6];

    return MEMORY[0x1EEDC0A48](v17, v18);
  }
}

uint64_t sub_1E38D98F8()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    v7 = v3[19];
    v8 = v3[20];

    return MEMORY[0x1EEE6DFA0](sub_1E38D9DC4, v7, v8);
  }

  else
  {
    v10 = v3[13];
    v9 = v3[14];
    v11 = v3[11];
    v12 = v3[12];
    v14 = v3[9];
    v13 = v3[10];
    v15 = v3[7];
    v16 = v3[8];
    sub_1E4206D24();
    (*(v16 + 16))(v14, v13, v15);
    (*(v12 + 16))(v10, v9, v11);
    v17 = swift_task_alloc();
    v3[26] = v17;
    *v17 = v5;
    v17[1] = sub_1E38D9AE0;
    v18 = v3[13];
    v19 = v3[9];

    return MEMORY[0x1EEDC0C10](v19, v18);
  }
}

uint64_t sub_1E38D9AE0()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  v5[27] = v0;

  if (v0)
  {
    v9 = v5[19];
    v10 = v5[20];
    v11 = sub_1E38D9E9C;
  }

  else
  {
    v5[28] = v3;
    v9 = v5[19];
    v10 = v5[20];
    v11 = sub_1E38D9BF0;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1E38D9BF0()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[7];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1E38DA46C(v1);

  v8 = v0[1];
  v9 = v0[28];

  return v8(v9);
}

uint64_t sub_1E38D9D10()
{

  OUTLINED_FUNCTION_6_50();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E38D9DC4()
{
  v1 = *(v0 + 136);

  v2 = OUTLINED_FUNCTION_27_0();
  v3(v2);
  sub_1E38DA46C(v1);
  OUTLINED_FUNCTION_6_50();

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E38D9E9C()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);
  v5 = OUTLINED_FUNCTION_27_0();
  v6(v5);
  sub_1E38DA46C(v1);
  OUTLINED_FUNCTION_6_50();

  OUTLINED_FUNCTION_54();

  return v7();
}

id TVAppExtensionHostViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TVAppExtensionHostViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppExtensionHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E38DA110()
{
  result = qword_1EE23B250;
  if (!qword_1EE23B250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B250);
  }

  return result;
}

unint64_t sub_1E38DA154()
{
  result = qword_1ECF2D210;
  if (!qword_1ECF2D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D210);
  }

  return result;
}

unint64_t sub_1E38DA1AC()
{
  result = qword_1ECF2D218;
  if (!qword_1ECF2D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D218);
  }

  return result;
}

unint64_t sub_1E38DA204()
{
  result = qword_1ECF2D220;
  if (!qword_1ECF2D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D220);
  }

  return result;
}

_BYTE *sub_1E38DA26C(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E38DA340()
{
  result = sub_1E41FF654();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E38DA3B4()
{
  result = qword_1ECF2D230;
  if (!qword_1ECF2D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D230);
  }

  return result;
}

uint64_t sub_1E38DA408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVAppExtensionHostViewController.Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38DA46C(uint64_t a1)
{
  v2 = type metadata accessor for TVAppExtensionHostViewController.Configuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E38DA4C8()
{
  result = qword_1ECF2D240;
  if (!qword_1ECF2D240)
  {
    sub_1E41FF5C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D240);
  }

  return result;
}

void sub_1E38DA55C()
{
  OUTLINED_FUNCTION_31_1();
  v33 = v2;
  v3 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D250) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *(v15 + 56);
  v32 = v0;
  sub_1E37E93E8(v0 + v19, v18, &unk_1ECF363C0);
  sub_1E37E93E8(v33, &v18[v20], &unk_1ECF363C0);
  OUTLINED_FUNCTION_34_4(v18);
  if (v23)
  {
    OUTLINED_FUNCTION_34_4(&v18[v20]);
    v21 = v34;
    if (v23)
    {
      v22 = v18;
LABEL_13:
      sub_1E325F6F0(v22, &unk_1ECF363C0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_1E37E93E8(v18, v14, &unk_1ECF363C0);
  OUTLINED_FUNCTION_34_4(&v18[v20]);
  if (v23)
  {
    v21 = v34;
    (*(v34 + 8))(v14, v3);
LABEL_9:
    sub_1E325F6F0(v18, &qword_1ECF2D250);
    goto LABEL_10;
  }

  v21 = v34;
  (*(v34 + 32))(v9, &v18[v20], v3);
  sub_1E3274A6C(&qword_1ECF2D258, MEMORY[0x1E6968FB0]);
  v28 = sub_1E4205E84();
  v29 = *(v21 + 8);
  v29(v9, v3);
  v29(v14, v3);
  sub_1E325F6F0(v18, &unk_1ECF363C0);
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_10:
  v24 = v32;
  sub_1E37E93E8(v32 + v19, v1, &unk_1ECF363C0);
  OUTLINED_FUNCTION_34_4(v1);
  if (v23)
  {
    v22 = v1;
    goto LABEL_13;
  }

  v25 = v31;
  (*(v21 + 32))(v31, v1, v3);
  v26 = *(v24 + OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_proxy);
  if (v26)
  {
    swift_unknownObjectRetain();
    v27 = sub_1E41FE364();
    [v26 openWithUrl_];
    swift_unknownObjectRelease();
  }

  (*(v21 + 8))(v25, v3);
LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38DA938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E37E93E8(v1 + v3, a1, &unk_1ECF363C0);
}

uint64_t sub_1E38DA99C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v7, v6, &unk_1ECF363C0);
  swift_beginAccess();
  sub_1E38DAA9C(a1, v1 + v7);
  swift_endAccess();
  sub_1E38DA55C();
  sub_1E325F6F0(a1, &unk_1ECF363C0);
  return sub_1E325F6F0(v6, &unk_1ECF363C0);
}

uint64_t sub_1E38DAA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_1E38DAB0C(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  v6 = *(v5 + 64);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[5] = v7;
  v8 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(v1 + v8, v7, &unk_1ECF363C0);
  return sub_1E38DABF4;
}

void sub_1E38DABF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1E37E93E8(*(*a1 + 40), v3, &unk_1ECF363C0);
    sub_1E38DA99C(v3);
    sub_1E325F6F0(v4, &unk_1ECF363C0);
  }

  else
  {
    sub_1E38DA99C(*(*a1 + 40));
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_1E38DACD0(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_connection] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_proxy] = 0;
  v3 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  v4 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TVAppExtensionHostService();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

uint64_t type metadata accessor for TVAppExtensionHostService()
{
  result = qword_1ECF4F3C0;
  if (!qword_1ECF4F3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1E38DADCC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = (*(v2 + 208))(a1, v7);
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  (*(v12 + 32))(v9, a2, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  v13 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_url;
  swift_beginAccess();
  v14 = v10;
  sub_1E38DAEEC(v9, v10 + v13);
  swift_endAccess();

  return v14;
}

uint64_t sub_1E38DAEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E38DAF5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x118))(v1);
  }

  else
  {
    v8 = 0;
  }

  v9 = *&v1[OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_connection];
  *&v1[OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_connection] = v8;
  v10 = v8;

  v11 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v11);
  OUTLINED_FUNCTION_5_10();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v13 = v1;
  sub_1E376FE58(0, 0, v5, &unk_1E42A9438, v12);
}

uint64_t sub_1E38DB0DC()
{
  OUTLINED_FUNCTION_24();
  v0[14] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  v0[15] = swift_task_alloc();
  v3 = sub_1E41FE414();
  v0[16] = v3;
  v0[17] = *(v3 - 8);
  v0[18] = swift_task_alloc();
  v4 = sub_1E41FFCB4();
  v0[19] = v4;
  v0[20] = *(v4 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E38DB234, 0, 0);
}

uint64_t sub_1E38DB234()
{
  v49 = v0;
  v1 = *(v0[14] + OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_connection);
  if (v1 && (v0[6] = sub_1E38DB750, v0[7] = 0, v0[2] = MEMORY[0x1E69E9820], v0[3] = 1107296256, v0[4] = sub_1E38DB8FC, v0[5] = &block_descriptor_39, v2 = _Block_copy(v0 + 2), v3 = v1, v4 = [v3 remoteObjectProxyWithErrorHandler_], _Block_release(v2), v3, sub_1E4207264(), swift_unknownObjectRelease(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D248), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    v8 = v0[14];
    v9 = v0[12];
    v10 = OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_proxy;
    *(v8 + OBJC_IVAR____TtC8VideosUI25TVAppExtensionHostService_proxy) = v9;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    v11 = sub_1E38D6168();
    (*(v6 + 16))(v5, v11, v7);
    swift_unknownObjectRetain();
    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();
    swift_unknownObjectRelease();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[19];
    if (v14)
    {
      v47 = v8;
      v18 = OUTLINED_FUNCTION_6_21();
      v46 = v10;
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136315138;
      v0[13] = v9;
      swift_unknownObjectRetain();
      v20 = sub_1E4205F84();
      v45 = v16;
      v22 = sub_1E3270FC8(v20, v21, &v48);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v12, v13, "Obtained proxy object: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v10 = v46;
      OUTLINED_FUNCTION_6_0();
      v8 = v47;
      OUTLINED_FUNCTION_6_0();

      v23 = (*(v15 + 8))(v45, v17);
    }

    else
    {

      v23 = (*(v15 + 8))(v16, v17);
    }

    v38 = v0[15];
    v37 = v0[16];
    (*((*MEMORY[0x1E69E7D40] & *v0[14]) + 0xB8))(v23);
    if (__swift_getEnumTagSinglePayload(v38, 1, v37) == 1)
    {
      v39 = v0[15];
      swift_unknownObjectRelease_n();
      sub_1E325F6F0(v39, &unk_1ECF363C0);
    }

    else
    {
      (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
      v40 = *(v8 + v10);
      v42 = v0[17];
      v41 = v0[18];
      v43 = v0[16];
      if (v40)
      {
        swift_unknownObjectRetain();
        v44 = sub_1E41FE364();
        [v40 openWithUrl_];

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease_n();
      (*(v42 + 8))(v41, v43);
    }
  }

  else
  {
    v24 = v0[22];
    v25 = v0[19];
    v26 = v0[20];
    v27 = sub_1E38D6168();
    (*(v26 + 16))(v24, v27, v25);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[22];
    v32 = v0[19];
    v33 = v0[20];
    if (v30)
    {
      v34 = OUTLINED_FUNCTION_125_0();
      *v34 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "Failed to get TV App extension remote object proxy", v34, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v33 + 8))(v31, v32);
  }

  OUTLINED_FUNCTION_54();

  return v35();
}

uint64_t sub_1E38DB6C0()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E38DB0DC();
}

void sub_1E38DB750()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E38D6168();
  (*(v4 + 16))(v8, v9, v2);
  v10 = v1;
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = swift_slowAlloc();
    v18 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_1E4207AB4();
    v17 = sub_1E3270FC8(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v11, v12, "Failure during establishing the TV App extension remote object proxy %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DB8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1E38DB964(void *a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  if (a1)
  {
    v7 = a1;
    sub_1E38D6168();
    OUTLINED_FUNCTION_51_4();
    v8(v1);
    v9 = a1;
    v10 = sub_1E41FFC94();
    v11 = sub_1E42067F4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_6_21();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1E323F000, v10, v11, "TVAppExtensionPoint stopped hosting with error %@", v12, 0xCu);
      sub_1E325F6F0(v13, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v5 + 8))(v1, v3);
  }
}

void sub_1E38DBB14()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v7 = sub_1E38D6168();
  (*(v5 + 16))(v0, v7, v3);
  v8 = v2;
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1E323F000, v9, v10, "TVAppExtensionPoint received error from extension %@", v11, 0xCu);
    sub_1E325F6F0(v12, &unk_1ECF28E30);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v5 + 8))(v0, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xE0))(v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DBDE8()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v32 = v2;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v33 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E38D6168();
  OUTLINED_FUNCTION_51_4();
  v19(v0);
  v20 = sub_1E41FFC94();
  v21 = sub_1E42067D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_125_0();
    *v22 = 0;
    _os_log_impl(&dword_1E323F000, v20, v21, v4, v22, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v17 + 8))(v0, v15);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v23 = sub_1E4206A04();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34[4] = v31;
  v34[5] = v24;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v34[2] = v25;
  v34[3] = v32;
  v26 = _Block_copy(v34);

  sub_1E4203FE4();
  v34[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_62();
  sub_1E3274A6C(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  OUTLINED_FUNCTION_11_44();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v14, v8, v26);
  _Block_release(v26);

  v29 = OUTLINED_FUNCTION_21_34();
  v30(v29);
  (*(v10 + 8))(v14, v33);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DC150()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v3 = v2;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v32 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v18 = sub_1E38D6168();
  (*(v16 + 16))(v0, v18, v14);
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067D4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_125_0();
    *v21 = 0;
    _os_log_impl(&dword_1E323F000, v19, v20, "TVAppExtensionPoint received playTrailer", v21, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v16 + 8))(v0, v14);
  sub_1E3280A90(0, &qword_1EE23B1D0);
  v22 = sub_1E4206A04();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5_10();
  v24 = swift_allocObject();
  v24[2] = v31;
  v24[3] = v3;
  v24[4] = v23;
  v33[4] = sub_1E38DCD08;
  v33[5] = v24;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_2_62(COERCE_DOUBLE(1107296256));
  v33[2] = v25;
  v33[3] = &block_descriptor_15_0;
  v26 = _Block_copy(v33);
  sub_1E38DCD14(v31, v3);

  sub_1E4203FE4();
  v33[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_62();
  sub_1E3274A6C(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730);
  sub_1E378AD28();
  OUTLINED_FUNCTION_11_44();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v7, v26);
  _Block_release(v26);

  v29 = OUTLINED_FUNCTION_21_34();
  v30(v29);
  (*(v9 + 8))(v13, v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DC4DC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  sub_1E3280A90(0, &qword_1EE23B1C0);
  sub_1E38DCD14(v6, v4);
  v14 = sub_1E38DC8C4(v6, v4);
  if (!v14)
  {
    sub_1E38D6168();
    OUTLINED_FUNCTION_51_4();
    v27(v13);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_125_0();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "TVAppExtensionPoint failed to deserialize playable", v30, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v13, v7);
    goto LABEL_14;
  }

  v15 = v14;
  sub_1E38D6168();
  OUTLINED_FUNCTION_51_4();
  v16(v0);
  v17 = v15;
  v18 = sub_1E41FFC94();
  v19 = sub_1E42067D4();
  if (!os_log_type_enabled(v18, v19))
  {

    (*(v9 + 8))(v0, v7);
    goto LABEL_10;
  }

  v42 = v2;
  v20 = OUTLINED_FUNCTION_6_21();
  v21 = swift_slowAlloc();
  v43 = v21;
  *v20 = 136315138;
  v22 = [v17 metadata];
  if (v22)
  {
    v23 = sub_1E37AD648(v22);
    v25 = v24;

    if (v25)
    {
      v26 = sub_1E3270FC8(v23, v25, &v43);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_1E323F000, v18, v19, "TVAppExtensionPoint playing trailer %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v9 + 8))(v0, v7);
LABEL_10:
      v31 = [objc_opt_self() sharedInstance];
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = Strong;
        v34 = swift_unknownObjectWeakLoadStrong();
      }

      else
      {
        v34 = 0;
      }

      [v31 setPresentationViewController_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      OUTLINED_FUNCTION_5_10();
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1E4298880;
      *(v35 + 32) = v17;
      objc_allocWithZone(VUIMediaInfo);
      v36 = v17;
      OUTLINED_FUNCTION_25();
      v41 = sub_1E376538C(v37, v38, v39, v40);
      [objc_opt_self() playMediaInfo:v41 watchType:2 isRentAndWatchNow:0];

LABEL_14:
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

id sub_1E38DC8C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1E41FE454();
    sub_1E38DCE1C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() videosPlayableFromSerializedData_];

  return v5;
}

id sub_1E38DCA0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppExtensionHostService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E38DCB18()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = swift_unknownObjectWeakLoadStrong(), v1, v2) && (v3 = [v2 delegate], v2, v3))
  {
    [v3 dismssTVAppExtension];
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();

      if (v6)
      {
        [v6 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void sub_1E38DCC14()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(0);
    }
  }
}

uint64_t sub_1E38DCCB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E38DCD14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1E38DCD74()
{
  sub_1E3286EF4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E38DCE1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E38DCCB0(a1, a2);
  }

  return a1;
}

uint64_t sub_1E38DCE48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_collectionImpressioner;
  OUTLINED_FUNCTION_15_0();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E38DCE94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_collectionImpressioner;
  swift_beginAccess();
  sub_1E38B94D0(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_1E38DCFAC()
{
  v1 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_underlyingViewController;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38DCFE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_underlyingViewController;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E38DD0A0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_3_0();
  *(v2 + v4) = a1;
}

void *sub_1E38DD0EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_upsellView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38DD128(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_upsellView;
  OUTLINED_FUNCTION_3_0();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v6 = a1;
  v7 = v5();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_upsellView;
    swift_beginAccess();
    [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];
  }
}

void *sub_1E38DD210()
{
  v1 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_scrollView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1E38DD258()
{
  v1 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_transactionView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E38DD2A0(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;
  v8 = [v2 vuiView];
  if (v8)
  {
    v9 = v8;
    v10 = *a2;
    swift_beginAccess();
    [v9 vui:*&v2[v10] addSubview:v6 oldView:?];
  }

  else
  {
    __break(1u);
  }
}

char *sub_1E38DD35C(uint64_t a1, void *a2)
{
  if (!(*(*a1 + 488))())
  {
    return 0;
  }

  if (!(*(*a1 + 392))(v4))
  {
    return 0;
  }

  type metadata accessor for UpsellOfferTemplateLayout();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  if (a2)
  {
    type metadata accessor for UpsellOfferTemplateViewController();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = a2;
    }
  }

  else
  {
    v7 = 0;
  }

  v39 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2A0);
  sub_1E4148C68(sub_1E38DD870, v10, &v38);

  v9 = v38;
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_10_41();
  v13 = *(v12 + 192);

  v13(v14);
  v15 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_layout;
  OUTLINED_FUNCTION_3_0();
  *&v9[v15] = v6;

  v16 = v9;
  result = [v16 vuiView];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;

    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(v20);
    OUTLINED_FUNCTION_10_41();
    v22 = (*(v21 + 232))();
    v23 = v16;
    if (v22)
    {
      v24 = v22;
      v25 = [v16 vuiTraitCollection];

      sub_1E3C2AE10();
      v23 = v26;
      (*(*v24 + 1640))();
    }

    OUTLINED_FUNCTION_10_41();
    v37 = (*(v27 + 280))();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2A8);
    sub_1E4148C68(sub_1E38DD8AC, v28, &v39);

    v29 = v39;
    if (sub_1E39DFFC8())
    {
      [v29 _setHiddenPocketEdges_];
    }

    v30 = v29;
    sub_1E38DD24C(v29);
    v31 = (*(*v6 + 1728))();
    v32 = (*((*v11 & *v16) + 0x130))();
    type metadata accessor for UpsellOfferTransactionView();
    v33 = sub_1E38D29AC(a1, v31, v32);

    sub_1E38DD294(v33);
    type metadata accessor for UpsellOfferView();
    v34 = (*(*v6 + 1704))();
    v35 = (*((*v11 & *v16) + 0x100))();
    v36 = sub_1E38ECC58(a1, v34, v35, v20);

    sub_1E38DD128(v36);

    return v9;
  }

  __break(1u);
  return result;
}

id sub_1E38DD870@<X0>(void *a1@<X8>)
{
  type metadata accessor for UpsellOfferTemplateViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E38DD8AC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  *a1 = result;
  return result;
}

id sub_1E38DD8F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - v3;
  v5 = sub_1E4206C04();
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00);
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v32 - v14;
  v16 = type metadata accessor for UpsellOfferTemplateViewController();
  v33.receiver = v0;
  v33.super_class = v16;
  objc_msgSendSuper2(&v33, sel_vui_viewDidLoad);
  result = [v0 vuiView];
  if (result)
  {
    v18 = result;
    [result setVuiBackgroundColor_];

    v19 = [objc_opt_self() defaultCenter];
    sub_1E4206C14();

    sub_1E3280A90(0, &qword_1EE23B1D0);
    v20 = sub_1E4206A04();
    v32[1] = v20;
    v21 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
    sub_1E38DF10C();
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F748(v4, &unk_1ECF2D2B0);

    (*(v7 + 8))(v10, v5);
    OUTLINED_FUNCTION_14_51();
    swift_unknownObjectWeakInit();
    sub_1E38DF1B8();
    v22 = v32[0];
    v23 = sub_1E4200844();

    (*(v12 + 8))(v15, v22);
    *&v1[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_sessionDidEndNotification] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1E4297BE0;
    v25 = sub_1E42001D4();
    v26 = MEMORY[0x1E69DC2B0];
    *(v24 + 32) = v25;
    *(v24 + 40) = v26;
    OUTLINED_FUNCTION_14_51();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0);
    sub_1E4206944();
    swift_unknownObjectRelease();

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E4299720;
    v28 = sub_1E41FFF64();
    v29 = MEMORY[0x1E69DC130];
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    v30 = sub_1E41FFE44();
    v31 = MEMORY[0x1E69DC0C8];
    *(v27 + 48) = v30;
    *(v27 + 56) = v31;
    OUTLINED_FUNCTION_14_51();
    swift_unknownObjectWeakInit();
    sub_1E4206944();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E38DDD7C()
{
  v1 = v0;
  v2 = [v0 vuiView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];

    v4 = 0.0;
    Height = 0.0;
    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v6 = [v1 vuiNavigationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 navigationBar];

        [v8 frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v78.origin.x = v10;
        v78.origin.y = v12;
        v78.size.width = v14;
        v4 = 0.0;
        v78.size.height = v16;
        Height = CGRectGetHeight(v78);
      }
    }

    v17 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_12_5();
    v18 += 38;
    v19 = *v18;
    v20 = (*v18)();
    if (v20)
    {
      v21 = v20;
      v79.origin.x = OUTLINED_FUNCTION_24_0();
      Width = CGRectGetWidth(v79);
      sub_1E38D3128(Width, 1.79769313e308);
      v24 = v23;
      v4 = v25;

      v26 = v19();
      if (v26)
      {
        v27 = v26;
        v80.origin.x = OUTLINED_FUNCTION_24_0();
        [v27 setFrame_];
      }

      v81.origin.x = OUTLINED_FUNCTION_24_0();
      v28 = CGRectGetHeight(v81);
      v29 = (*((*v17 & *v1) + 0x118))();
      if (v29)
      {
        v30 = v29;
        v82.origin.x = OUTLINED_FUNCTION_24_0();
        [v30 setFrame_];
      }
    }

    OUTLINED_FUNCTION_12_5();
    v32 = (*(v31 + 280))();
    if (v32)
    {
      v33 = v32;
      v77 = v4;
      v34 = [v1 presentingViewController];
      v35 = [v34 vuiView];

      if (v35)
      {
        [v35 bounds];
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v43 = v42;
      }

      else
      {
        v37 = 0.0;
        v39 = 0.0;
        v41 = 0.0;
        v43 = 0.0;
      }

      OUTLINED_FUNCTION_12_5();
      v44 += 32;
      v45 = *v44;
      v46 = (*v44)();
      if (v46)
      {
        v47 = v46;
        if (v35)
        {
          v83.origin.x = v37;
          v83.origin.y = v39;
          v83.size.width = v41;
          v83.size.height = v43;
          v48 = CGRectGetWidth(v83);
        }

        else
        {
          v48 = 0.0;
        }

        v49 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_presentingViewWidth;
        OUTLINED_FUNCTION_3_0();
        *&v47[v49] = v48;
      }

      v50 = v45();
      if (v50)
      {
        v51 = v50;
        v84.origin.x = OUTLINED_FUNCTION_24_0();
        v52 = CGRectGetHeight(v84);
        v53 = OBJC_IVAR____TtC8VideosUI15UpsellOfferView_containerHeight;
        OUTLINED_FUNCTION_3_0();
        *&v51[v53] = v52;
      }

      v54 = v45();
      if (v54)
      {
        v55 = v54;
        [v33 bounds];
        sub_1E38EDE80(v56, v57);
        v59 = v58;
        v61 = v60;

        v62 = v45();
        if (v62)
        {
          v63 = v62;
          [v62 setFrame_];
        }
      }

      v64 = 0.0;
      [v33 setContentInset_];
      v65 = (v45)([v33 setContentInsetAdjustmentBehavior_]);
      v66 = 0.0;
      if (v65)
      {
        v67 = v65;
        [v65 frame];
        v64 = v68;
        v66 = v69;
      }

      [v33 setContentSize_];
      v70 = OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_scrollPocketInteraction;
      if (!*(v1 + OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_scrollPocketInteraction))
      {
        v71 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:v33 edge:4 style:0];
        v72 = *(v1 + v70);
        *(v1 + v70) = v71;
        v73 = v71;

        v74 = v19();
        if (v74)
        {
          v75 = v74;
          v76 = v73;
          [v75 addInteraction_];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E38DE320(char a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  objc_msgSendSuper2(&v18, sel_vui_viewWillAppear_, a1 & 1);
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v5 = v4;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (!v6)
    {
LABEL_10:

      return;
    }

    v7 = [v6 currentNavigationController];

    if (v7)
    {
      v8 = [v7 viewControllers];

      sub_1E3280A90(0, &qword_1EE23B250);
      v9 = sub_1E42062B4();

      v5 = sub_1E37CB21C(v9);

      if (v5)
      {
        type metadata accessor for DocumentViewController();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          OUTLINED_FUNCTION_12_5();
          v13 = *(v12 + 216);
          v5 = v5;
          v13(v11);
          OUTLINED_FUNCTION_12_5();
          v15 = *(v14 + 208);
          if (v15())
          {
            OUTLINED_FUNCTION_12_3();
            (*(v16 + 1032))(0);
          }

          if (v15())
          {
            OUTLINED_FUNCTION_12_3();
            (*(v17 + 1048))();
          }
        }

        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1E38DE57C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v27 - v4;
  v6 = type metadata accessor for UpsellOfferTemplateViewController();
  v31.receiver = v1;
  v31.super_class = v6;
  objc_msgSendSuper2(&v31, sel_vui_viewDidAppear_, a1 & 1);
  OUTLINED_FUNCTION_11_45();
  result = (*(v7 + 184))();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_11_45();
    (*(v10 + 160))(v28);
    v11 = v29;
    if (v29)
    {
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      OUTLINED_FUNCTION_1_2();
      v14 = v13;
      v16 = MEMORY[0x1EEE9AC00](v15);
      v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v18, v16);
      sub_1E325F748(v28, &unk_1ECF296D0);
      (*(*(*(v12 + 8) + 8) + 16))(v11);
      (*(v14 + 8))(v18, v11);
      type metadata accessor for BaseImpressionManager();
      v19 = static BaseImpressionManager.getImpressionableChildren(_:)();
      v20 = *(v19 + 16);
      if (v20)
      {
        v27[2] = v9;
        v21 = sub_1E4204724();
        v22 = *(v21 - 8);
        v23 = *(v22 + 16);
        v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v27[1] = v19;
        v25 = v19 + v24;
        v26 = *(v22 + 72);
        do
        {
          v23(v5, v25, v21);
          __swift_storeEnumTagSinglePayload(v5, 0, 1, v21);
          static BaseImpressionManager.addElementToTracker(_:impressions:)();
          sub_1E325F748(v5, &qword_1ECF2B7B0);
          v25 += v26;
          --v20;
        }

        while (v20);
      }

      swift_unknownObjectRelease();
    }

    else
    {

      return sub_1E325F748(v28, &unk_1ECF296D0);
    }
  }

  return result;
}

void sub_1E38DE8EC(char a1)
{
  v2 = v1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  objc_msgSendSuper2(&v12, sel_vui_viewDidDisappear_, a1 & 1);
  v4 = [v2 presentingViewController];
  if (v4)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_12_5();
  v6 = *(v5 + 208);
  v7 = v6();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_11_45();
    (*(v9 + 1040))();
  }

  v10 = v6();
  if (v10)
  {
    v4 = v10;
    OUTLINED_FUNCTION_11_45();
    (*(v11 + 1032))(1);
LABEL_6:
  }
}

void sub_1E38DEA6C()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  objc_msgSendSuper2(&v11, sel_vui_viewDidLayoutSubviews);
  sub_1E38DDD7C();
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    [v1 setModalInPresentation_];
  }

  v3 = [v0 parentViewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 navigationController];

    if (v5)
    {
      v6 = [v5 navigationBar];

      [v6 _setBackgroundOpacity_];
    }
  }

  v7 = [v0 vuiNavigationItem];
  [v7 setLargeTitleDisplayMode_];

  v8 = [v0 vuiNavigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 navigationBar];

    [v10 setPrefersLargeTitles_];
  }
}

id sub_1E38DEC24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_collectionImpressioner];
  v8 = type metadata accessor for CollectionImpressionManager();
  v9 = sub_1E3F0AE3C();
  v7[3] = v8;
  v7[4] = &off_1F5D8D100;
  *v7 = v9;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_templateViewModel] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_underlyingViewController] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_layout] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_upsellView] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_scrollView] = 0;
  *&v4[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_transactionView] = 0;
  OUTLINED_FUNCTION_7_67(&OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_sessionDidEndNotification);
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1E38DED9C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_collectionImpressioner];
  v5 = type metadata accessor for CollectionImpressionManager();
  v6 = sub_1E3F0AE3C();
  v4[3] = v5;
  v4[4] = &off_1F5D8D100;
  *v4 = v6;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_templateViewModel] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_underlyingViewController] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_layout] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_upsellView] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_scrollView] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_transactionView] = 0;
  OUTLINED_FUNCTION_7_67(&OBJC_IVAR____TtC8VideosUI33UpsellOfferTemplateViewController_sessionDidEndNotification);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1E38DEEB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellOfferTemplateViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E38DF058(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xB0))();
  return sub_1E37BCF0C;
}

unint64_t sub_1E38DF10C()
{
  result = qword_1EE23B130;
  if (!qword_1EE23B130)
  {
    sub_1E4206C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B130);
  }

  return result;
}

void sub_1E38DF164()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong vui:1 dismissViewControllerAnimated:0 completion:?];
  }
}

unint64_t sub_1E38DF1B8()
{
  result = qword_1EE28A240;
  if (!qword_1EE28A240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2CD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A240);
  }

  return result;
}

void sub_1E38DF21C()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E38DDD7C();
  }
}

void sub_1E38DF260()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for LayoutGrid();
      [v3 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v18.origin.x = v5;
      v18.origin.y = v7;
      v18.size.width = v9;
      v18.size.height = v11;
      Width = CGRectGetWidth(v18);
      sub_1E3A2579C(Width);
      v13 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
      if (v13)
      {
        v14 = v13;
        v15 = [v1 traitCollection];

        sub_1E3C2AE10();
        v17 = v16;
        (*(*v14 + 1640))();

        v1 = v17;
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E38DF3F8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  OUTLINED_FUNCTION_40_3();
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ErrorTemplate();
  *(v8 + v9[9]) = 0;
  *(v8 + v9[10]) = 0;
  v10 = (v8 + v9[12]);
  *v10 = 0x5548726579616C50;
  v10[1] = 0xE900000000000044;
  v11 = (*(*v6 + 488))();
  if (v11 && (sub_1E373E010(2, v11), v12 = OUTLINED_FUNCTION_14_52(), v0) && (v13 = (*(*v0 + 488))(v12), , v13))
  {

    sub_1E373E010(23, v13);
    OUTLINED_FUNCTION_14_52();
    if (*v0 != _TtC8VideosUI13TextViewModel)
    {

      v0 = 0;
    }

    *(v8 + v9[5]) = v0;

    sub_1E373E010(4, v13);
    OUTLINED_FUNCTION_14_52();
    if (v0 && *v0 != _TtC8VideosUI13TextViewModel)
    {

      v0 = 0;
    }

    *(v8 + v9[6]) = v0;

    sub_1E373E010(7, v13);
    OUTLINED_FUNCTION_14_52();
    if (v0 && *v0 != _TtC8VideosUI13TextViewModel)
    {

      v0 = 0;
    }

    *(v8 + v9[7]) = v0;
    sub_1E373E010(8, v13);
    OUTLINED_FUNCTION_14_52();
    if (v0 && *v0 != _TtC8VideosUI13TextViewModel)
    {

      v0 = 0;
    }
  }

  else
  {
    v0 = 0;
    *(v8 + v9[5]) = 0;
    *(v8 + v9[6]) = 0;
    *(v8 + v9[7]) = 0;
  }

  *(v8 + v9[8]) = v0;
  if (v4 == 1)
  {
    v2 = 0;
  }

  else
  {
  }

  v14 = v9[13];
  *(v8 + v9[11]) = v2 & 1;
  *(v8 + v14) = v6;
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for ErrorTemplate()
{
  result = qword_1EE2A6DE0;
  if (!qword_1EE2A6DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38DF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char a6@<W6>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA78);
  OUTLINED_FUNCTION_40_3();
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for ErrorTemplate();
  v15 = v13[9];
  v14 = v13[10];
  v16 = (a7 + v13[12]);
  *v16 = 0x5548726579616C50;
  v16[1] = 0xE900000000000044;
  *(a7 + v13[13]) = 0;
  type metadata accessor for ErrorContentViewLayout();
  *(a7 + v15) = sub_1E3DA99A8();
  type metadata accessor for TextViewModel();
  v17 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69E6158];
  v21 = a1;
  v22 = a2;
  *(a7 + v13[5]) = sub_1E3C27638(23, &v21, 0, 0, 0);
  v23 = v17;
  v21 = a3;
  v22 = a4;
  result = sub_1E3C27638(9, &v21, 0, 0, 0);
  v19 = 0;
  *(a7 + v13[6]) = result;
  *(a7 + v14) = 1;
  *(a7 + v13[7]) = 0;
  *(a7 + v13[8]) = 0;
  if (a5 != 1)
  {

    v19 = a6;
  }

  *(a7 + v13[11]) = v19 & 1;
  return result;
}

void sub_1E38DF8D8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C8);
  OUTLINED_FUNCTION_0_10();
  v30 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for ErrorTemplate();
  if (*(v0 + v13[11]))
  {
    goto LABEL_2;
  }

  v14 = v13;
  if (!*(v0 + v13[13]) || (type metadata accessor for TemplateViewModel(), (v13 = swift_dynamicCastClass()) == 0) || (v13 = (*(*v13 + 1000))(), !v15))
  {
LABEL_11:
    v29[4] = v29;
    MEMORY[0x1EEE9AC00](v13);
    v29[2] = &v29[-4];
    v29[-2] = v0;
    v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2E0);
    v29[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2E8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2F0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2F8);
    v29[3] = v3;
    v21 = v20;
    v22 = sub_1E38E01E0();
    v31 = v21;
    v32 = v22;
    OUTLINED_FUNCTION_7_18();
    v23 = OUTLINED_FUNCTION_17_12();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330);
    OUTLINED_FUNCTION_2_63();
    v26 = sub_1E32752B0(v25, &qword_1ECF2D330);
    v31 = v24;
    v32 = v26;
    OUTLINED_FUNCTION_6_10();
    v27 = OUTLINED_FUNCTION_17_12();
    v31 = v29[0];
    v32 = v19;
    v33 = v23;
    v34 = v27;
    OUTLINED_FUNCTION_17_12();
    sub_1E42013C4();
    v28 = v30;
    (*(v30 + 16))(v1, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_1E38E026C();
    OUTLINED_FUNCTION_8_18(&qword_1ECF2D340, &qword_1ECF2D2C8);
    OUTLINED_FUNCTION_16_36();
    (*(v28 + 8))(v8, v4);
    goto LABEL_12;
  }

  v16 = (v0 + v14[12]);
  if (v13 == *v16 && v15 == v16[1])
  {
  }

  else
  {
    v18 = sub_1E42079A4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_2:
  sub_1E38DFCE8();
  sub_1E32B8DF4(v12, v1);
  swift_storeEnumTagMultiPayload();
  sub_1E38E026C();
  OUTLINED_FUNCTION_8_18(&qword_1ECF2D340, &qword_1ECF2D2C8);
  OUTLINED_FUNCTION_16_36();
  sub_1E325F6F0(v12, &qword_1ECF2D2D8);
LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DFCE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D310);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D348);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D350);
  sub_1E38E0894(v1, &v7[*(v14 + 44)]);
  v15 = sub_1E4202734();
  v16 = &v7[*(v4 + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  LODWORD(v1) = *(v1 + *(type metadata accessor for ErrorTemplate() + 44));
  memset(v21, 0, sizeof(v21));
  v22 = 1;
  v17 = sub_1E38E0334();
  if (v1)
  {
    v18 = 5;
  }

  else
  {
    v18 = 11;
  }

  sub_1E3A6929C(v18, 0, 0, 1, v21, v4, v17);
  sub_1E325F6F0(v7, &qword_1ECF2D310);
  sub_1E4203DA4();
  sub_1E42015C4();
  (*(v10 + 32))(v3, v13, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2D8);
  memcpy((v3 + *(v19 + 36)), v20, 0x70uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38DFF2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v23[1] = v3;
  v4 = sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v23 - v13;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2E8);
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_26_2();
  sub_1E38DFCE8();
  v14[*(v11 + 36)] = sub_1E4202744();
  (*(v6 + 104))(v10, *MEMORY[0x1E697C438], v4);
  v18 = sub_1E38E01E0();
  sub_1E42033D4();
  (*(v6 + 8))(v10, v4);
  sub_1E325F6F0(v14, &qword_1ECF2D2F8);
  v23[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2F0);
  v24 = v11;
  v25 = v18;
  OUTLINED_FUNCTION_7_18();
  swift_getOpaqueTypeConformance2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D330);
  OUTLINED_FUNCTION_2_63();
  v21 = sub_1E32752B0(v20, &qword_1ECF2D330);
  v24 = v19;
  v25 = v21;
  OUTLINED_FUNCTION_6_10();
  swift_getOpaqueTypeConformance2();
  v22 = v23[0];
  sub_1E4203504();
  (*(v16 + 8))(v0, v22);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E38E01E0()
{
  result = qword_1ECF2D300;
  if (!qword_1ECF2D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2F8);
    sub_1E38E026C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D300);
  }

  return result;
}

unint64_t sub_1E38E026C()
{
  result = qword_1ECF2D308;
  if (!qword_1ECF2D308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D2D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D310);
    sub_1E38E0334();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D308);
  }

  return result;
}

unint64_t sub_1E38E0334()
{
  result = qword_1ECF2D318;
  if (!qword_1ECF2D318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D310);
    sub_1E32752B0(&qword_1ECF2D320, &qword_1ECF2D328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D318);
  }

  return result;
}

void sub_1E38E03EC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4202034();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D330);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v15 = sub_1E3BF7A38();
  (*(v4 + 16))(v8, v15, v2);
  v22[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D390);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D398);
  OUTLINED_FUNCTION_5_63();
  v18 = sub_1E32752B0(v17, &qword_1ECF2D398);
  v19 = sub_1E375320C();
  v22[4] = v16;
  v22[5] = &type metadata for SystemButtonStyle;
  v22[6] = v18;
  v22[7] = v19;
  OUTLINED_FUNCTION_17_12();
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  v21 = sub_1E32752B0(v20, &qword_1ECF2D330);
  MEMORY[0x1E690CA00](v14, v9, v21);
  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38E0894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v56 = type metadata accessor for StackedTextViews(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v51 - v11);
  v13 = type metadata accessor for ScaledBaselineRelativeSpacer();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = type metadata accessor for ErrorTemplate();
  v20 = v19;
  if (*(a1 + v19[10]) == 1 && (v21 = *(a1 + v19[5])) != 0 && (v22 = *(a1 + v19[6])) != 0 && (v23 = *(a1 + v19[9])) != 0)
  {
    v52 = *(*v23 + 1752);
    v53 = v22;
    v24 = v21;

    v26 = v52(v25);
    v27 = (*(*v23 + 1776))();
    v51 = v24;

    v52 = v26;

    v28 = OUTLINED_FUNCTION_18();
    sub_1E3FAC790(v24, v26, v28, &v69);
    v29 = *(*v27 + 152);

    v29(v71, v30);

    if (v72)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v71[0];
    }

    sub_1E40E4DF0(v32, v18, v31);
    v33 = v53;

    v34 = OUTLINED_FUNCTION_18();
    sub_1E3FAC790(v33, v27, v34, &v73);
    v59 = v69;
    v60[0] = v70[0];
    *(v60 + 9) = *(v70 + 9);
    sub_1E38E1424(v18, v15, type metadata accessor for ScaledBaselineRelativeSpacer);
    v57 = v73;
    v58[0] = v74[0];
    *(v58 + 9) = *(v74 + 9);
    v35 = v60[0];
    v61 = v59;
    v62[0] = v60[0];
    v36 = *(v60 + 9);
    *(v62 + 9) = *(v60 + 9);
    *v12 = v59;
    v12[1] = v35;
    *(v12 + 25) = v36;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D388);
    sub_1E38E1424(v15, v12 + *(v37 + 48), type metadata accessor for ScaledBaselineRelativeSpacer);
    v38 = (v12 + *(v37 + 64));
    v39 = v57;
    v40 = v58[0];
    v63 = v57;
    v64[0] = v58[0];
    v41 = *(v58 + 9);
    *(v64 + 9) = *(v58 + 9);
    *v38 = v57;
    v38[1] = v40;
    *(v38 + 25) = v41;
    v65 = v39;
    v66[0] = v40;
    *(v66 + 9) = v41;
    sub_1E38E1288(&v69, &v67);
    sub_1E38E1288(&v73, &v67);
    sub_1E38E1288(&v61, &v67);
    sub_1E38E1288(&v63, &v67);
    sub_1E38E12E4(&v65);
    sub_1E38E1338(v15, type metadata accessor for ScaledBaselineRelativeSpacer);
    v67 = v59;
    v68[0] = v60[0];
    *(v68 + 9) = *(v60 + 9);
    sub_1E38E12E4(&v67);
    sub_1E37E93E8(v12, v9, &qword_1ECF2D370);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v42, &qword_1ECF2D370);
    sub_1E38E1230();
    OUTLINED_FUNCTION_13_53();
    sub_1E38E12E4(&v73);
    sub_1E38E12E4(&v69);

    sub_1E325F6F0(v12, &qword_1ECF2D370);
    v43 = v18;
    v44 = type metadata accessor for ScaledBaselineRelativeSpacer;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1E4298AD0;
    *(v45 + 32) = *(a1 + v20[5]);
    *(v45 + 40) = *(a1 + v20[6]);
    *(v45 + 48) = *(a1 + v20[7]);
    *(v45 + 56) = *(a1 + v20[8]);

    v46 = sub_1E4201D44();
    v47 = j__OUTLINED_FUNCTION_18();
    sub_1E403E654(v45, v46, v47 & 1, v6);
    sub_1E38E1424(v6, v9, type metadata accessor for StackedTextViews);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v48, v49);
    sub_1E38E1230();
    OUTLINED_FUNCTION_13_53();
    v44 = type metadata accessor for StackedTextViews;
    v43 = v6;
  }

  return sub_1E38E1338(v43, v44);
}

uint64_t sub_1E38E0EA8()
{
  v0 = sub_1E4200E34();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E3898B28(v5 - v4);
  sub_1E4200E24();
  return (*(v2 + 8))(v6, v0);
}

void sub_1E38E0F8C()
{
  sub_1E38E1118(319, &qword_1EE289EB8, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1E38E1118(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1E38E1118(319, qword_1EE261E08, type metadata accessor for ErrorContentViewLayout, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E38E1118(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E38E1118(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

unint64_t sub_1E38E1178()
{
  result = qword_1ECF2D358;
  if (!qword_1ECF2D358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D360);
    sub_1E38E026C();
    sub_1E32752B0(&qword_1ECF2D340, &qword_1ECF2D2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D358);
  }

  return result;
}

unint64_t sub_1E38E1230()
{
  result = qword_1ECF29138;
  if (!qword_1ECF29138)
  {
    type metadata accessor for StackedTextViews(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF29138);
  }

  return result;
}

uint64_t sub_1E38E1338(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E38E1398()
{
  type metadata accessor for ButtonLayout();
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E3B050E8();
  v2 = j__OUTLINED_FUNCTION_18();
  sub_1E3BBD964(8, v0 & 1, v1, v2 & 1);
  sub_1E38E0618();
}

uint64_t sub_1E38E1424(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E38E1484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorTemplate();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38E14E8()
{
  type metadata accessor for ErrorTemplate();

  return sub_1E38E0EA8();
}

uint64_t sub_1E38E1548()
{
  sub_1E42037C4();
  v1 = (*(*v0 + 2096))();
  v2 = MEMORY[0x1E6981748];
  v3 = MEMORY[0x1E6981710];
  v4 = OUTLINED_FUNCTION_51_1();
  v5 = OUTLINED_FUNCTION_18();
  sub_1E3C8F60C(v1, v4 & 1, v5 & 1, v2, v3);
}

Class *sub_1E38E1628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = (*a1 + 1736);
  v11 = *v10;
  (*v10)();
  v12 = sub_1E38E259C();
  v13 = MEMORY[0x1E69E7CC0];
  if (v12 & 1) != 0 || (v11(), (sub_1E38E259C()) || (v11(), (sub_1E38E259C()))
  {
    v11();
    if (a2)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = a2;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
    OUTLINED_FUNCTION_15_49(v16, v17, v16, v18, v19, v20);

    v21 = v124;
    [(Class *)v21 setShouldRasterize:0];
    v22 = [objc_opt_self() vui_main];
    if (v22)
    {
      v23 = v22;
      [v22 vui_scale];
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    [(Class *)v21 setRasterizationScale:v25];
    [(Class *)v21 setMask:0];

    v123 = v13;
    v125 = v13;
    v122 = v21;
    if ((*(*a1 + 840))())
    {
      OUTLINED_FUNCTION_30();
      v27 = (*(v26 + 1792))();

      if (v27)
      {
        if (sub_1E32AE9B0(v27))
        {
          v28 = sub_1E32AE9B0(v27);
          v29 = 0;
          v21 = (v27 & 0xFFFFFFFFFFFFFF8);
          while (v28 != v29)
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x1E6911E60](v29, v27);
            }

            else
            {
              v30 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v29 >= v30)
              {
                goto LABEL_125;
              }

              v31 = *(v27 + 8 * v29 + 32);
            }

            v32 = v31;
            if (__OFADD__(v29, 1))
            {
              __break(1u);
LABEL_125:
              __break(1u);
              goto LABEL_126;
            }

            v33 = [v31 CGColor];
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_7_68();
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            if (v36 >= v35 >> 1)
            {
              OUTLINED_FUNCTION_35(v35);
              OUTLINED_FUNCTION_13_54();
            }

            sub_1E4206324();
            v13 = v123;

            ++v29;
          }
        }

        v21 = v122;
      }
    }

    if (sub_1E38E259C())
    {
      v28 = &selRef__shouldAnimatePropertyWithKey_;
      [OUTLINED_FUNCTION_16_37() initWithInteger_];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_0_74();
      if (v37)
      {
LABEL_126:
        OUTLINED_FUNCTION_1_84(v30);
        OUTLINED_FUNCTION_11_46();
      }

      OUTLINED_FUNCTION_8_42();
      [objc_allocWithZone(v21[435]) v28[323]];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_0_74();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v38);
        OUTLINED_FUNCTION_11_46();
      }

      OUTLINED_FUNCTION_8_42();
      v39 = v125;
      v5 = 0.0;
      v40 = 1.0;
      v4 = 0.5;
      v21 = v122;
      if (sub_1E32AE9B0(v13))
      {
        goto LABEL_81;
      }

      v41 = [objc_opt_self() clearColor];
      v42 = [v41 CGColor];

      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_2_64();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v43);
        OUTLINED_FUNCTION_13_54();
      }

      OUTLINED_FUNCTION_10_42();
      sub_1E3280A90(0, &qword_1EE23AE20);
      OUTLINED_FUNCTION_2_7();
      v44 = sub_1E4206F24();
      v45 = [v44 colorWithAlphaComponent_];

      v46 = [v45 CGColor];
      goto LABEL_33;
    }

    if ((sub_1E38E259C() & 1) == 0)
    {
      if ((sub_1E38E259C() & 1) == 0)
      {
        v39 = MEMORY[0x1E69E7CC0];
        v4 = 0.0;
        v40 = 0.0;
        v5 = 0.0;
        goto LABEL_81;
      }

      [OUTLINED_FUNCTION_16_37() initWithDouble_];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_0_74();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v50);
        OUTLINED_FUNCTION_11_46();
      }

      OUTLINED_FUNCTION_8_42();
      [objc_allocWithZone(v21[435]) initWithInteger_];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_0_74();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v51);
        OUTLINED_FUNCTION_11_46();
      }

      OUTLINED_FUNCTION_8_42();
      v39 = v125;
      v40 = 1.0;
      v4 = 0.5;
      v5 = 0.6;
      v21 = v122;
      if (sub_1E32AE9B0(v13))
      {
        goto LABEL_81;
      }

      v52 = [objc_opt_self() clearColor];
      v53 = [v52 CGColor];

      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_2_64();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v54);
        OUTLINED_FUNCTION_13_54();
      }

      OUTLINED_FUNCTION_10_42();
      sub_1E3280A90(0, &qword_1EE23AE20);
      OUTLINED_FUNCTION_2_7();
      v55 = sub_1E4206F24();
      v45 = [v55 colorWithAlphaComponent_];

      v46 = [v45 CGColor];
LABEL_33:
      v47 = v46;

      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_2_64();
      if (!v37)
      {
LABEL_34:
        OUTLINED_FUNCTION_10_42();
        v13 = v123;
LABEL_81:
        [(Class *)v21 setStartPoint:v4, v5];
        [(Class *)v21 setEndPoint:v4, v40];
        sub_1E38E2B5C(v39, v21);
        v79 = sub_1E38E2988(v13);
        v80 = v21;
LABEL_82:
        sub_1E38E2BE0(v79, v80);

        return v21;
      }

LABEL_129:
      OUTLINED_FUNCTION_1_84(v48);
      OUTLINED_FUNCTION_13_54();
      goto LABEL_34;
    }

    v49 = objc_opt_self();
    if ([v49 isTV])
    {
      [OUTLINED_FUNCTION_16_37() initWithInteger_];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_6_51();
      if (v37)
      {
        OUTLINED_FUNCTION_4_63();
      }

      OUTLINED_FUNCTION_9_47();
      [objc_allocWithZone(v21[435]) initWithInteger_];
    }

    else
    {
      v60 = [v49 isMac];
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      OUTLINED_FUNCTION_12_42();
      v62 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (!v60)
      {
        if (v61 >> 1 <= v62)
        {
          OUTLINED_FUNCTION_4_63();
        }

        OUTLINED_FUNCTION_9_47();
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        OUTLINED_FUNCTION_12_42();
        OUTLINED_FUNCTION_6_51();
        if (v37)
        {
          OUTLINED_FUNCTION_4_63();
        }

        OUTLINED_FUNCTION_9_47();
        goto LABEL_72;
      }

      if (v61 >> 1 <= v62)
      {
        OUTLINED_FUNCTION_4_63();
      }

      OUTLINED_FUNCTION_9_47();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_6_51();
      if (v37)
      {
        OUTLINED_FUNCTION_4_63();
      }

      OUTLINED_FUNCTION_9_47();
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_6_51();
    if (v37)
    {
      OUTLINED_FUNCTION_4_63();
    }

    OUTLINED_FUNCTION_9_47();
    v21 = v122;
LABEL_72:
    v39 = v125;
    v5 = 0.0;
    v40 = 1.0;
    v4 = 0.5;
    if (sub_1E32AE9B0(v13))
    {
      goto LABEL_81;
    }

    v63 = [v49 isMac];
    v64 = [objc_opt_self() clearColor];
    v65 = [v64 CGColor];

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_7_68();
    v68 = *(v66 + 16);
    v67 = *(v66 + 24);
    if (v63)
    {
      if (v67 >> 1 <= v68)
      {
        OUTLINED_FUNCTION_1_84(v67);
        OUTLINED_FUNCTION_13_54();
      }

      OUTLINED_FUNCTION_10_42();
      sub_1E3280A90(0, &qword_1EE23AE20);
      OUTLINED_FUNCTION_2_7();
      v69 = sub_1E4206F24();
      v70 = [v69 colorWithAlphaComponent_];

      v71 = [v70 CGColor];
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_7_68();
      v74 = *(v72 + 16);
      v73 = *(v72 + 24);
      if (v74 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_35(v73);
        OUTLINED_FUNCTION_13_54();
      }

      sub_1E4206324();
      OUTLINED_FUNCTION_2_7();
      v75 = sub_1E4206F24();
      v76 = [v75 colorWithAlphaComponent_];

      v77 = [v76 CGColor];
      MEMORY[0x1E6910BF0]();
      OUTLINED_FUNCTION_2_64();
      if (v37)
      {
        OUTLINED_FUNCTION_1_84(v78);
        OUTLINED_FUNCTION_13_54();
      }

      OUTLINED_FUNCTION_10_42();
      v21 = v122;
      v13 = v123;
      goto LABEL_81;
    }

    if (v67 >> 1 <= v68)
    {
      OUTLINED_FUNCTION_1_84(v67);
      OUTLINED_FUNCTION_13_54();
    }

    OUTLINED_FUNCTION_10_42();
    sub_1E3280A90(0, &qword_1EE23AE20);
    OUTLINED_FUNCTION_2_7();
    v82 = sub_1E4206F24();
    v45 = [v82 colorWithAlphaComponent_];

    v46 = [v45 CGColor];
    goto LABEL_33;
  }

  v11();
  v21 = 0;
  if ((sub_1E38E259C() & 1) != 0 && a4)
  {
    if (sub_1E4205F14() == a3 && v56 == a4)
    {

      v59 = &selRef_setGroupMargin_;
    }

    else
    {
      v58 = sub_1E42079A4();

      v59 = &selRef_setGroupMargin_;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }

    if (a2)
    {
      objc_opt_self();
      v83 = swift_dynamicCastObjCClass();
      if (v83)
      {
        v84 = a2;
      }
    }

    else
    {
      v83 = 0;
    }

    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B8);
    OUTLINED_FUNCTION_15_49(v85, v86, v85, v87, v88, v89);

    v21 = v124;
    [(Class *)v21 setShouldRasterize:0];
    v90 = [objc_opt_self() vui_main];
    if (v90)
    {
      v91 = v90;
      [v90 vui_scale];
      v40 = v92;
    }

    else
    {
      v40 = 1.0;
    }

    [(Class *)v21 setRasterizationScale:v40];
    [(Class *)v21 setMask:0];

    v123 = v13;
    v126 = v13;
    if ((*(*a1 + 840))())
    {
      OUTLINED_FUNCTION_30();
      v39 = (*(v93 + 1792))();

      if (v39)
      {
        if (sub_1E32AE9B0(v39))
        {
          v94 = v21;
          v95 = sub_1E32AE9B0(v39);
          v96 = 0;
          v21 = (v39 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v95 == v96)
            {

              goto LABEL_117;
            }

            if ((v39 & 0xC000000000000001) != 0)
            {
              v97 = MEMORY[0x1E6911E60](v96, v39);
            }

            else
            {
              v48 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v96 >= v48)
              {
                goto LABEL_128;
              }

              v97 = *(v39 + 8 * v96 + 32);
            }

            v98 = v97;
            if (__OFADD__(v96, 1))
            {
              break;
            }

            v99 = [v97 CGColor];
            MEMORY[0x1E6910BF0]();
            OUTLINED_FUNCTION_7_68();
            v102 = *(v100 + 16);
            v101 = *(v100 + 24);
            if (v102 >= v101 >> 1)
            {
              OUTLINED_FUNCTION_35(v101);
              OUTLINED_FUNCTION_13_54();
            }

            sub_1E4206324();
            v13 = v123;

            ++v96;
          }

          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }
    }

    v103 = [objc_opt_self() clearColor];
    v104 = [v103 v59[53]];

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_7_68();
    v107 = *(v105 + 16);
    v106 = *(v105 + 24);
    if (v107 >= v106 >> 1)
    {
      OUTLINED_FUNCTION_35(v106);
      OUTLINED_FUNCTION_13_54();
    }

    sub_1E4206324();
    sub_1E3280A90(0, &qword_1EE23AE20);
    v108 = sub_1E4206F24();
    v109 = [v108 v59[53]];

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_7_68();
    v110 = v59;
    v113 = *(v111 + 16);
    v112 = *(v111 + 24);
    if (v113 >= v112 >> 1)
    {
      OUTLINED_FUNCTION_1_84(v112);
      OUTLINED_FUNCTION_13_54();
    }

    sub_1E4206324();
    v114 = sub_1E4206F24();
    v115 = [v114 v110 + 3448];

    MEMORY[0x1E6910BF0]();
    OUTLINED_FUNCTION_7_68();
    v118 = *(v116 + 16);
    v117 = *(v116 + 24);
    if (v118 >= v117 >> 1)
    {
      OUTLINED_FUNCTION_35(v117);
      OUTLINED_FUNCTION_13_54();
    }

    v94 = v21;
    sub_1E4206324();
LABEL_117:
    [OUTLINED_FUNCTION_16_37() initWithDouble_];
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_0_74();
    if (v37)
    {
      OUTLINED_FUNCTION_1_84(v119);
      OUTLINED_FUNCTION_11_46();
    }

    OUTLINED_FUNCTION_8_42();
    [objc_allocWithZone(v21[435]) initWithDouble_];
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_0_74();
    if (v37)
    {
      OUTLINED_FUNCTION_1_84(v120);
      OUTLINED_FUNCTION_11_46();
    }

    OUTLINED_FUNCTION_8_42();
    [objc_allocWithZone(v21[435]) initWithDouble_];
    OUTLINED_FUNCTION_12_42();
    OUTLINED_FUNCTION_0_74();
    if (v37)
    {
      OUTLINED_FUNCTION_1_84(v121);
      OUTLINED_FUNCTION_11_46();
    }

    OUTLINED_FUNCTION_8_42();
    v21 = v94;
    [(Class *)v94 setStartPoint:0.0, 0.0];
    [(Class *)v94 setEndPoint:1.0, 1.0];
    sub_1E38E2B5C(v126, v94);
    v79 = sub_1E38E2988(v13);
    v80 = v94;
    goto LABEL_82;
  }

  return v21;
}

uint64_t sub_1E38E259C()
{
  sub_1E38E2CD8();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

uint64_t sub_1E38E264C(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v5 = [v4 setType_];
  if (a1 && (*(*a1 + 840))(v5) && (OUTLINED_FUNCTION_30(), v7 = (*(v6 + 1792))(), , v7) && (*&v31 = v7, v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0), v9 = sub_1E38E2C50(), sub_1E38D2480(&v33, v8, v9), , v33))
  {
    a2 = v33;
  }

  else
  {
  }

  v10 = sub_1E32AE9B0(a2);
  v11 = v10;
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v33 = MEMORY[0x1E69E7CC0];
    result = sub_1E37EBF70(0, v10 & ~(v10 >> 63), 0);
    if (v11 < 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v14 = 0;
    v12 = v33;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E6911E60](v14, a2);
      }

      else
      {
        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 CGColor];
      type metadata accessor for CGColor();
      v32 = v18;

      *&v31 = v17;
      v33 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_35(v19);
        sub_1E37EBF70(v21, v20 + 1, 1);
        v12 = v33;
      }

      ++v14;
      *(v12 + 16) = v20 + 1;
      sub_1E329504C(&v31, (v12 + 32 * v20 + 32));
    }

    while (v11 != v14);
  }

  sub_1E38E2BE0(v12, v4);
  v22 = sub_1E32AE9B0(a2);

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!v22)
  {
LABEL_24:
    sub_1E38E2B5C(v23, v4);
    [v4 setStartPoint_];
    [v4 setEndPoint_];
    return v4;
  }

  *&v31 = MEMORY[0x1E69E7CC0];
  result = sub_1E4207574();
  v24 = v11 - 1;
  if (!__OFSUB__(v11, 1))
  {
    v25 = 0;
    if (v24 <= 1)
    {
      v24 = 1;
    }

    v26 = v24;
    do
    {
      v27 = v25 + 1;
      v28 = v25 / v26;
      v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v30 = v28;
      [v29 initWithFloat_];
      sub_1E4207544();
      sub_1E4207584();
      sub_1E4207594();
      sub_1E4207554();
      v25 = v27;
    }

    while (v22 != v27);
    v23 = v31;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1E38E2988(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x1E69E7CC0];
  result = sub_1E37EBF70(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      type metadata accessor for CGColor();
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1E37EBF70((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_1E329504C(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1E38E2AD0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *a1 = result;
  return result;
}

void type metadata accessor for CGColor()
{
  if (!qword_1EE23B410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EE23B410);
    }
  }
}

void sub_1E38E2B5C(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23ADD0);
  v3 = sub_1E42062A4();

  [a2 setLocations_];
}

void sub_1E38E2BE0(uint64_t a1, void *a2)
{
  v3 = sub_1E42062A4();

  [a2 setColors_];
}

unint64_t sub_1E38E2C50()
{
  result = qword_1EE23B450;
  if (!qword_1EE23B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B450);
  }

  return result;
}

unint64_t sub_1E38E2CD8()
{
  result = qword_1EE284190;
  if (!qword_1EE284190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284190);
  }

  return result;
}

uint64_t sub_1E38E2D30()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0);
  return sub_1E42006B4();
}

uint64_t sub_1E38E2DB8()
{
  memset(v2, 0, sizeof(v2));
  v3 = 1;
  sub_1E40421AC(2, 0, v2, &v1);
  sub_1E4200524();
  return sub_1E38E5014(&v1);
}

void *sub_1E38E2E30@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  sub_1E3EB9BB4(v29);
  memcpy(__dst, v30, 0x4AuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  v6 = sub_1E4200544();
  v7 = *(*a1 + 392);

  v9 = v7(v8);

  v10 = 0.0;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (*v9 != _TtC8VideosUI21SyndicationCellLayout)
  {

LABEL_5:
    v11 = 0;
    v15 = 1;
    v14 = 0;
    goto LABEL_6;
  }

  v11 = sub_1E37DAE10();

  OUTLINED_FUNCTION_8();
  v10 = (*(v12 + 2288))();
  v14 = v13;
  v15 = 0;
LABEL_6:
  v28 = v15;
  __src[0] = a1;
  memcpy(&__src[1], a2, 0xC3uLL);
  *&__src[26] = v10;
  __src[27] = v14;
  LOBYTE(__src[28]) = v28;
  memcpy(&__src[28] + 1, __dst, 0x4FuLL);
  __src[38] = v11;
  __src[39] = v6;
  v19 = a1;
  memcpy(v20, a2, sizeof(v20));
  v21 = v10;
  v22 = v14;
  v23 = v28;
  memcpy(v24, __dst, sizeof(v24));
  v25 = v11;
  v26 = v6;
  sub_1E38E3058(__src, v17);
  sub_1E38E3090(&v19);
  return memcpy(a3, __src, 0x140uLL);
}

double sub_1E38E30C0@<D0>(uint64_t a1@<X8>)
{
  v189 = a1;
  sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v166 = v3;
  v167 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v165 = v5 - v4;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v164 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v163 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v188 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v187 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3D8);
  OUTLINED_FUNCTION_0_10();
  v180 = v16;
  v181 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v178 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v176 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E0);
  v21 = OUTLINED_FUNCTION_17_2(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v177 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v196 = v24;
  v25 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v191 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  OUTLINED_FUNCTION_0_10();
  v192 = v32;
  v193 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v162 - v34;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v170 = &v162 - v37;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3F0);
  OUTLINED_FUNCTION_0_10();
  v169 = v38;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  v168 = &v162 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3F8);
  v42 = OUTLINED_FUNCTION_17_2(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_5();
  v195 = v43;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_25_3();
  v194 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D400);
  v47 = OUTLINED_FUNCTION_17_2(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  v179 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_25_3();
  v201 = v50;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D408);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v162 - v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D410);
  OUTLINED_FUNCTION_0_10();
  v184 = v55;
  v185 = v54;
  OUTLINED_FUNCTION_5_7();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v183 = &v162 - v58;
  v202 = v1;
  v59 = *v1;
  v60 = *(*v59 + 488);
  v203 = v59;
  v61 = v60(v57);
  if (!v61)
  {
    v198 = 0;
    goto LABEL_9;
  }

  v62 = v30;
  v63 = v25;
  v64 = v35;
  v65 = sub_1E373E010(23, v61);

  if (!v65)
  {
    goto LABEL_7;
  }

  if (*v65 != _TtC8VideosUI13TextViewModel)
  {

LABEL_7:
    v198 = 0;
    goto LABEL_8;
  }

  v198 = v65;
LABEL_8:
  v35 = v64;
  v25 = v63;
  v30 = v62;
LABEL_9:
  v66 = (v60)();
  if (!v66)
  {
LABEL_13:
    v67 = 0;
    goto LABEL_14;
  }

  v67 = sub_1E373E010(15, v66);

  if (v67 && *v67 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_13;
  }

LABEL_14:
  v68 = (v60)(v66);
  v197 = v67;
  if (v68 && (v69 = sub_1E373E010(39, v68), , v69))
  {
    type metadata accessor for ImageViewModel();
    v70 = swift_dynamicCastClass();
    if (!v70)
    {
    }
  }

  else
  {
    v70 = 0;
  }

  OUTLINED_FUNCTION_8();
  v71 += 49;
  v72 = *v71;
  v173 = v71;
  v174 = v72;
  v73 = v72();
  v74 = v73;
  if (v73 && *v73 != _TtC8VideosUI21SyndicationCellLayout)
  {

    v74 = 0;
  }

  v75 = v202[38];
  v76 = 0.0;
  v77 = 0.0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (v75)
  {
    (*(*v75 + 152))(v209);
    if ((v210 & 1) == 0)
    {
      v84.n128_u64[0] = v209[3];
      v83.n128_u64[0] = v209[2];
      v82.n128_u64[0] = v209[1];
      v81.n128_u64[0] = v209[0];
      v77 = j_nullsub_1(v81, v82, v83, v84);
      v78 = v85;
      v79 = v86;
      v80 = v87;
    }
  }

  v88 = 0.0;
  if (v74)
  {

    sub_1E37BD068();

    OUTLINED_FUNCTION_8();
    (*(v89 + 152))(v211);

    v88 = (v212 & 1) != 0 ? 0.0 : v211[0];

    sub_1E374EA2C();

    OUTLINED_FUNCTION_8();
    (*(v90 + 152))(v213);

    if ((v214 & 1) == 0)
    {
      v76 = v213[0];
    }
  }

  LOBYTE(__dst[0]) = 38;
  v91 = v203;
  OUTLINED_FUNCTION_8();
  (*(v92 + 776))(&v204, __dst, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&v205 + 1))
  {
    if (swift_dynamicCast())
    {
      v93 = LOBYTE(__dst[0]);
      goto LABEL_36;
    }
  }

  else
  {
    sub_1E325F69C(&v204, &unk_1ECF296E0);
  }

  v93 = 1;
LABEL_36:
  v171 = v93;
  *v53 = sub_1E4201D54();
  *(v53 + 1) = 0;
  v53[16] = 0;
  v94 = sub_1E4201B84();
  v95 = v201;
  *v201 = v94;
  v95[1] = 0;
  *(v95 + 16) = 0;
  v199 = v53;
  v175 = v70;
  if (v70)
  {
    v200 = v30;
    v96 = v202;
    memcpy(__dst, v202 + 26, 0x5BuLL);

    v97 = OUTLINED_FUNCTION_18();
    v98 = v170;
    sub_1E37E8BE8(v70, __dst, v75, v97 & 1, 0, 0, v170);
    v99 = sub_1E4202734();
    v100 = v98 + *(v190 + 36);
    *v100 = v99;
    *(v100 + 8) = v77;
    *(v100 + 16) = v78;
    *(v100 + 24) = v79;
    *(v100 + 32) = v80;
    *(v100 + 40) = 0;
    sub_1E4200AE4();
    OUTLINED_FUNCTION_12_43();
    v101 = swift_allocObject();
    v102 = OUTLINED_FUNCTION_105_2(v101);
    memcpy(v102, v96, 0x140uLL);
    OUTLINED_FUNCTION_2_4();
    v103 = swift_allocObject();
    *(v103 + 16) = sub_1E38E5148;
    *(v103 + 24) = v91;
    sub_1E38E3058(v96, &v204);
    sub_1E4203B64();

    (*(v191 + 8))(v200, v25);
    sub_1E4200BA4();
    sub_1E38E5068(&qword_1EE289C40, &qword_1ECF29240);
    v104 = v25;
    v105 = v193;
    OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8);
    v106 = v168;
    v107 = v192;
    sub_1E42034B4();

    v108 = v107;
    v30 = v200;
    v109 = v104;
    (*(v108 + 8))(v35, v105);
    sub_1E325F69C(v98, &qword_1ECF29240);
    v110 = v194;
    v111 = v106;
    v112 = v172;
    (*(v169 + 32))(v194, v111, v172);
    v113 = 0;
  }

  else
  {
    v113 = 1;
    v110 = v194;
    v112 = v172;
    v109 = v25;
  }

  __swift_storeEnumTagSinglePayload(v110, v113, 1, v112);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D418);
  v190 = v201 + *(v114 + 44);
  v115 = sub_1E4201D54();
  v116 = v196;
  *v196 = v115;
  v116[1] = 0;
  *(v116 + 16) = 0;
  v117 = v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D420) + 44);
  v118 = v202;
  v200 = v74;
  sub_1E38E42E0(v202, v197, v74, v117, v88, v76);
  v207 = v80;
  v208 = 0;
  sub_1E4200AE4();
  OUTLINED_FUNCTION_12_43();
  v119 = swift_allocObject();
  v120 = OUTLINED_FUNCTION_105_2(v119);
  memcpy(v120, v118, 0x140uLL);
  OUTLINED_FUNCTION_2_4();
  v121 = swift_allocObject();
  *(v121 + 16) = sub_1E38E4D48;
  *(v121 + 24) = v110;
  sub_1E38E3058(v118, &v204);
  sub_1E4203B64();

  (*(v191 + 8))(v30, v109);
  sub_1E4200BA4();
  OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8);
  v122 = v176;
  v123 = v193;
  sub_1E42034B4();
  (*(v192 + 8))(v35, v123);
  v124 = v195;
  sub_1E3743538(v110, v195, &qword_1ECF2D3F8);
  v125 = v177;
  sub_1E3743538(v116, v177, &qword_1ECF2D3E0);
  v126 = v180;
  v127 = v181;
  v128 = *(v180 + 16);
  v129 = v178;
  v128(v178, v122, v181);
  v130 = v190;
  sub_1E3743538(v124, v190, &qword_1ECF2D3F8);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D428);
  sub_1E3743538(v125, v130 + *(v131 + 48), &qword_1ECF2D3E0);
  v128(v130 + *(v131 + 64), v129, v127);
  v132 = *(v126 + 8);
  v132(v122, v127);
  sub_1E325F69C(v196, &qword_1ECF2D3E0);
  sub_1E325F69C(v194, &qword_1ECF2D3F8);
  v132(v129, v127);
  sub_1E325F69C(v125, &qword_1ECF2D3E0);
  sub_1E325F69C(v195, &qword_1ECF2D3F8);
  v133 = 1;
  v134 = v186;
  v135 = v187;
  v136 = v199;
  if ((v171 & 1) == 0)
  {
    v137 = v165;
    sub_1E4203B04();
    v138 = sub_1E4202764();
    v139 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v138)
    {
      v139 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v140 = v164;
    (*(v166 + 32))(v164, v137, v167);
    v141 = v140 + *(v134 + 36);
    *v141 = v139;
    *(v141 + 8) = v80;
    *(v141 + 16) = v76;
    *(v141 + 24) = v88;
    *(v141 + 32) = v77;
    *(v141 + 40) = 0;
    v142 = v163;
    sub_1E38E4D50(v140, v163);
    sub_1E38E4D50(v142, v135);
    v133 = 0;
  }

  __swift_storeEnumTagSinglePayload(v135, v133, 1, v134);
  v143 = &v136[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D430) + 44)];
  v144 = v201;
  v145 = v179;
  sub_1E3743538(v201, v179, &qword_1ECF2D400);
  v146 = v188;
  sub_1E3743538(v135, v188, &qword_1ECF2D3D0);
  sub_1E3743538(v145, v143, &qword_1ECF2D400);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D438);
  sub_1E3743538(v146, v143 + *(v147 + 48), &qword_1ECF2D3D0);
  sub_1E325F69C(v135, &qword_1ECF2D3D0);
  sub_1E325F69C(v144, &qword_1ECF2D400);
  sub_1E325F69C(v146, &qword_1ECF2D3D0);
  v148 = sub_1E325F69C(v145, &qword_1ECF2D400);
  v149 = (v174)(v148);
  v150 = sub_1E374AD40(&qword_1ECF2D440, &qword_1ECF2D408);
  v151 = v182;
  v152 = j__OUTLINED_FUNCTION_18();
  LOBYTE(v146) = j__OUTLINED_FUNCTION_18();
  v153 = OUTLINED_FUNCTION_51_1();
  v154 = v152 & 1;
  v155 = v183;
  v156 = v150;
  v157 = v199;
  sub_1E383F6D4(v149, v154, v146 & 1, 1, v153 & 1, v151, v156);

  sub_1E325F69C(v157, &qword_1ECF2D408);
  sub_1E4203DA4();
  sub_1E4200D94();

  v158 = v189;
  (*(v184 + 32))(v189, v155, v185);
  v159 = (v158 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D448) + 36));
  v160 = v205;
  *v159 = v204;
  v159[1] = v160;
  result = *&v206;
  v159[2] = v206;
  return result;
}

uint64_t sub_1E38E42E0@<X0>(const void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v115 = a3;
  v124 = a2;
  v134 = a1;
  v128 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D458);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v113 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D460);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v126 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v125 = v18;
  v131 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v133 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8);
  OUTLINED_FUNCTION_0_10();
  v132 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v113 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v113 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D468);
  OUTLINED_FUNCTION_0_10();
  v123 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v113 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D470);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  v127 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v45 = v113 - v43;
  if (v44)
  {
    v117 = v35;
    v118 = v31;
    v120 = v13;
    v121 = v10;
    v122 = v113 - v43;
    v46 = v44;

    OUTLINED_FUNCTION_18();
    v119 = v46;
    sub_1E3F23370();
    v47 = sub_1E4202744();
    sub_1E4200A54();
    OUTLINED_FUNCTION_6_52(v48, v49, v50, v51);
    OUTLINED_FUNCTION_12_43();
    v52 = swift_allocObject();
    v53 = OUTLINED_FUNCTION_105_2(v52);
    v54 = v134;
    memcpy(v53, v134, 0x140uLL);
    OUTLINED_FUNCTION_2_4();
    v55 = swift_allocObject();
    *(v55 + 16) = sub_1E38E5148;
    *(v55 + 24) = v47;
    sub_1E38E3058(v54, v135);
    v56 = v131;
    sub_1E4203B64();

    v57 = *(v133 + 8);
    v133 += 8;
    v114 = v57;
    v57(v23, v56);
    sub_1E4200BA4();
    v58 = sub_1E38E5068(&qword_1EE289C88, &qword_1ECF28CC0);
    v59 = OUTLINED_FUNCTION_3_60(&qword_1EE289DB0, &qword_1ECF2D3E8);
    v116 = v38;
    v60 = v130;
    v113[1] = v59;
    v113[2] = v58;
    sub_1E42034B4();
    v61 = v132 + 8;
    v62 = *(v132 + 8);
    v62(v27, v60);
    sub_1E325F69C(v30, &qword_1ECF28CC0);
    if (v124)
    {

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();
      v63 = sub_1E4202744();
      v132 = v61;
      v64 = v63;
      sub_1E4200A54();
      OUTLINED_FUNCTION_6_52(v65, v66, v67, v68);
      OUTLINED_FUNCTION_12_43();
      v69 = swift_allocObject();
      v70 = OUTLINED_FUNCTION_105_2(v69);
      v71 = v134;
      memcpy(v70, v134, 0x140uLL);
      OUTLINED_FUNCTION_2_4();
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1E38E5148;
      *(v72 + 24) = v64;
      sub_1E38E3058(v71, v135);
      v73 = v131;
      sub_1E4203B64();

      v114(v23, v73);
      sub_1E4200BA4();
      v74 = v117;
      v75 = v130;
      sub_1E42034B4();

      v62(v27, v75);
      sub_1E325F69C(v30, &qword_1ECF28CC0);
      v76 = v123;
      v77 = v125;
      v78 = v118;
      (*(v123 + 32))(v125, v74, v118);
      v79 = 0;
    }

    else
    {
      v77 = v125;
      v76 = v123;
      v74 = v117;
      v78 = v118;
      v79 = 1;
    }

    __swift_storeEnumTagSinglePayload(v77, v79, 1, v78);
    v81 = *(v76 + 16);
    v82 = v116;
    v81(v74, v116, v78);
    v83 = v74;
    v84 = v126;
    sub_1E3743538(v77, v126, &qword_1ECF2D460);
    v85 = v120;
    v81(v120, v83, v78);
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D488);
    sub_1E3743538(v84, v85 + *(v86 + 48), &qword_1ECF2D460);

    sub_1E325F69C(v77, &qword_1ECF2D460);
    v87 = *(v76 + 8);
    v87(v82, v78);
    sub_1E325F69C(v84, &qword_1ECF2D460);
    v87(v83, v78);
    v45 = v122;
    sub_1E32B9170(v85, v122);
    v80 = 0;
    v10 = v121;
  }

  else
  {
    v80 = 1;
  }

  __swift_storeEnumTagSinglePayload(v45, v80, 1, v10);
  LOBYTE(v141) = 0;
  OUTLINED_FUNCTION_8();
  (*(v88 + 776))(v135, &v141, &unk_1F5D5E0F8, &off_1F5D5CAF8);
  if (v136 == 0.0)
  {
    sub_1E325F69C(v135, &unk_1ECF296E0);
LABEL_13:
    v96 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    a6 = 0.0;
    a5 = 0.0;
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v89 = v141;
  v90 = sub_1E3285D14();
  v91 = *((*MEMORY[0x1E69E7D40] & **v90) + 0x110);
  v92 = *v90;
  v93 = v91(v89, *(&v89 + 1));

  if (!v93)
  {
    goto LABEL_13;
  }

  v94 = v93;
  OUTLINED_FUNCTION_18();
  sub_1E3C11690();
  v96 = v95;
  v98 = v97;
  v99 = v97 & 0xFF00;
  v100 = sub_1E4202744();
  if (v115)
  {
    sub_1E3E0B68C();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v103 = v99;
  v102 = v98 & 1;
  v101 = v100;
  v104 = 0x1000000;
LABEL_14:
  v105 = v45;
  v106 = v45;
  v107 = v127;
  sub_1E3743538(v105, v127, &qword_1ECF2D470);
  v108 = v103 | v102 | v104;
  v109 = v128;
  sub_1E3743538(v107, v128, &qword_1ECF2D470);
  v110 = (v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D478) + 48));
  *&v141 = v96;
  *(&v141 + 1) = v108;
  *&v142 = v101;
  *(&v142 + 1) = a6;
  *v143 = a5;
  *&v143[8] = v6;
  *&v143[16] = v7;
  v143[24] = 0;
  v111 = v142;
  *v110 = v141;
  v110[1] = v111;
  v110[2] = *v143;
  *(v110 + 41) = *&v143[9];
  sub_1E3743538(&v141, v135, &qword_1ECF2D480);
  sub_1E325F69C(v106, &qword_1ECF2D470);
  v135[0] = v96;
  v135[1] = v108;
  v135[2] = v101;
  v136 = a6;
  v137 = a5;
  v138 = v6;
  v139 = v7;
  v140 = 0;
  sub_1E325F69C(v135, &qword_1ECF2D480);
  return sub_1E325F69C(v107, &qword_1ECF2D470);
}