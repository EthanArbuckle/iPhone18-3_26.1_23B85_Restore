unint64_t sub_1D21BB1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_1D2176758(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1D21B522C(v18, a5 & 1);
      result = sub_1D2176758(a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_1D22512AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_1D21B91AC();
      result = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a4;
    v27 = (v23[7] + 24 * result);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;
      return result;
    }

    goto LABEL_15;
  }

  v24 = (v23[7] + 24 * result);
  v25 = v24[1];
  v26 = v24[2];
  *v24 = a1;
  v24[1] = a2;
  v24[2] = a3;

  return sub_1D21A1ED8(v25, v26);
}

_OWORD *sub_1D21BB36C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D2196C7C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D21B9334();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D21B54D0(v16, a4 & 1);
    v11 = sub_1D2196C7C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1D22512AC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_1D21A6450(a1, v22);
  }

  else
  {
    sub_1D21B6A00(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1D21BB4BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D2196C7C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1D21B5788(v16, a4 & 1);
      result = sub_1D2196C7C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1D22512AC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1D21B94D8();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1D21BB620(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D2176758(a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_1D21B9640();
    result = v19;
    goto LABEL_8;
  }

  sub_1D21B5A28(v16, a3 & 1);
  result = sub_1D2176758(a2);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      v22 = v21[7] + 16 * result;
      *v22 = a1;
      *(v22 + 8) = a4;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a2;
    v23 = v21[7] + 16 * result;
    *v23 = a1;
    *(v23 + 8) = a4;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21BB760(char *__src, char *a2, unint64_t a3, char *a4, double (*a5)(uint64_t, uint64_t, float, float))
{
  v45 = a3;
  v5 = a4;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 24;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 24;
  if (v8 >= v10)
  {
    v23 = 6 * v10;
    if (a4 != a2 || &a2[v23 * 4] <= a4)
    {
      v24 = a2;
      memmove(a4, a2, 24 * v10);
      a2 = v24;
    }

    v25 = a2;
    v13 = &v5[v23];
    if (v9 < 24 || a2 <= v6)
    {
      v22 = a2;
    }

    else
    {
      v42 = v5;
LABEL_22:
      v26 = 0;
      v27 = v13;
      __dst = v25;
      v40 = (v25 - 6);
      v41 = v13;
      do
      {
        v13 = &v27[v26];
        v28 = (v45 + v26);
        v29 = (v45 + v26 - 24);
        v30 = &v27[v26 - 24];
        v31 = *(__dst - 6);
        v32 = *(__dst - 5);
        v33 = *(__dst - 2);
        v34 = *(__dst - 8);
        v35 = a5(*&v27[v26 - 16], v27[v26 - 8], *v30, *&v27[v26 - 20]);
        if (*&v35 < a5(v33, v34, v31, v32))
        {
          v22 = v40;
          if (v28 != __dst)
          {
            v37 = *v40;
            *(v45 + v26 - 8) = *(v40 + 2);
            *v29 = v37;
          }

          v5 = v42;
          if (v13 <= v42 || (v45 = v45 + v26 - 24, v25 = v40, v40 <= v6))
          {
            v13 = &v41[v26];
            goto LABEL_34;
          }

          goto LABEL_22;
        }

        if (v28 != v13)
        {
          v36 = *v30;
          *(v45 + v26 - 8) = *(v30 + 16);
          *v29 = v36;
        }

        v26 -= 24;
        v27 = v41;
        v5 = v42;
        v13 = &v41[v26];
      }

      while (&v41[v26] > v42);
      v22 = __dst;
    }
  }

  else
  {
    v11 = a2;
    v12 = 24 * v8;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v5[v12 / 4];
    if (v7 >= 24 && v11 < v45)
    {
      while (1)
      {
        v14 = *v5;
        v15 = v5[1];
        v16 = *(v5 + 1);
        v17 = *(v5 + 16);
        v18 = a5(*(v11 + 1), v11[16], *v11, *(v11 + 1));
        if (*&v18 >= a5(v16, v17, v14, v15))
        {
          break;
        }

        v19 = v11;
        v20 = v6 == v11;
        v11 += 24;
        if (!v20)
        {
          goto LABEL_12;
        }

LABEL_13:
        v6 += 24;
        if (v5 >= v13 || v11 >= v45)
        {
          goto LABEL_15;
        }
      }

      v19 = v5;
      v20 = v6 == v5;
      v5 += 6;
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_12:
      v21 = *v19;
      *(v6 + 2) = *(v19 + 2);
      *v6 = v21;
      goto LABEL_13;
    }

LABEL_15:
    v22 = v6;
  }

LABEL_34:
  v38 = 6 * ((v13 - v5) / 24);
  if (v22 != v5 || v22 >= &v5[v38])
  {
    memmove(v22, v5, v38 * 4);
  }

  return 1;
}

uint64_t sub_1D21BBA80(char **a1, char *a2, uint64_t *a3, double (*a4)(uint64_t, uint64_t, float, float))
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v25 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1D21C88C8(v25);
  }

  v21 = v6;
  *v6 = v25;
  v8 = v25 + 16;
  v9 = *(v25 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v21 = v25;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v25[16 * v9];
      v13 = *v12;
      v14 = v8;
      v15 = &v8[16 * v9];
      v16 = *(v15 + 1);
      __src = (v10 + 24 * *v12);
      v17 = (v10 + 24 * *v15);
      v6 = (v10 + 24 * v16);

      sub_1D21BB760(__src, v17, v6, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v21 = v25;

        return 1;
      }

      if (v16 < v13)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v14;
      if (v9 - 2 >= *v14)
      {
        goto LABEL_13;
      }

      *v12 = v13;
      *(v12 + 1) = v16;
      v19 = v18 - v9;
      if (v18 < v9)
      {
        goto LABEL_14;
      }

      v8 = v14;
      v9 = v18 - 1;
      memmove(v15, v15 + 16, 16 * v19);
      *v14 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D21BBC2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, double (*a5)(uint64_t, uint64_t, float, float))
{
  v6 = v5;
  v125 = MEMORY[0x1E69E7CC0];
  v8 = a3[1];
  swift_retain_n();
  if (v8 >= 1)
  {
    v110 = a4;
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = v9;
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v121 = v10;
        v113 = v6;
        v12 = 24 * v9;
        v13 = *a3 + 24 * v9;
        v14 = *v13;
        v15 = *(v13 + 4);
        v16 = *(v13 + 8);
        v17 = *(v13 + 16);
        v18 = a5(*(*a3 + 24 * (v9 + 1) + 8), *(*a3 + 24 * (v9 + 1) + 16), *(*a3 + 24 * (v9 + 1)), *(*a3 + 24 * (v9 + 1) + 4));
        v19 = *&v18;
        v20 = a5(v16, v17, v14, v15);
        v111 = v11;
        v21 = v11 + 2;
        v22 = (v13 + 64);
        while (v8 != v21)
        {
          v23 = *(v22 - 10);
          v24 = *(v22 - 9);
          v25 = *(v22 - 4);
          v26 = *(v22 - 24);
          v27 = a5(*(v22 - 1), *v22, *(v22 - 4), *(v22 - 3));
          ++v21;
          v22 += 6;
          if (v19 < v20 == *&v27 >= a5(v25, v26, v23, v24))
          {
            v8 = v21 - 1;
            break;
          }
        }

        v11 = v111;
        v6 = v113;
        if (v19 < v20)
        {
          if (v8 < v111)
          {
            goto LABEL_116;
          }

          if (v111 < v8)
          {
            v28 = 24 * v8 - 24;
            v29 = v8;
            v30 = v111;
            do
            {
              if (v30 != --v29)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_121;
                }

                v31 = v37 + v12;
                v32 = v37 + v28;
                v33 = *(v31 + 8);
                v34 = *(v31 + 16);
                v35 = *v31;
                v36 = *(v32 + 16);
                *v31 = *v32;
                *(v31 + 16) = v36;
                *v32 = v35;
                *(v32 + 8) = v33;
                *(v32 + 16) = v34;
              }

              ++v30;
              v28 -= 24;
              v12 += 24;
            }

            while (v30 < v29);
          }
        }

        v10 = v121;
      }

      v38 = a3[1];
      if (v8 >= v38)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_115;
      }

      if (v8 - v11 >= v110)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v11, v110))
      {
        goto LABEL_117;
      }

      if (v11 + v110 >= v38)
      {
        v39 = a3[1];
      }

      else
      {
        v39 = v11 + v110;
      }

      if (v39 < v11)
      {
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
        return result;
      }

      if (v8 == v39)
      {
LABEL_29:
        v40 = v8;
        if (v8 < v11)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v123 = v10;
        v112 = v11;
        v95 = *a3;
        v96 = *a3 + 24 * v8 - 24;
        v97 = v11 - v8;
        v115 = v39;
        do
        {
          v117 = v96;
          v119 = v8;
          v98 = v97;
          do
          {
            v99 = *v96;
            v100 = *(v96 + 4);
            v101 = *(v96 + 8);
            v102 = *(v96 + 16);
            v103 = a5(*(v96 + 32), *(v96 + 40), *(v96 + 24), *(v96 + 28));
            if (*&v103 >= a5(v101, v102, v99, v100))
            {
              break;
            }

            if (!v95)
            {
              goto LABEL_119;
            }

            v104 = *(v96 + 32);
            v105 = *(v96 + 40);
            v106 = *(v96 + 24);
            *(v96 + 24) = *v96;
            *(v96 + 40) = *(v96 + 16);
            *v96 = v106;
            *(v96 + 8) = v104;
            *(v96 + 16) = v105;
            v96 -= 24;
          }

          while (!__CFADD__(v98++, 1));
          v8 = (v119 + 1);
          v96 = v117 + 24;
          --v97;
          v40 = v115;
        }

        while (v119 + 1 != v115);
        v11 = v112;
        v10 = v123;
        if (v115 < v112)
        {
          goto LABEL_114;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1D2195E30(0, *(v10 + 2) + 1, 1, v10);
      }

      v42 = *(v10 + 2);
      v41 = *(v10 + 3);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v10 = sub_1D2195E30((v41 > 1), v42 + 1, 1, v10);
      }

      *(v10 + 2) = v43;
      v44 = v10 + 32;
      v45 = &v10[16 * v42 + 32];
      *v45 = v11;
      *(v45 + 1) = v40;
      v118 = *a1;
      if (!*a1)
      {
        goto LABEL_122;
      }

      if (v42)
      {
        v116 = v10 + 32;
        v122 = v10;
        while (1)
        {
          v46 = v43 - 1;
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v47 = *(v10 + 4);
            v48 = *(v10 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_50:
            if (v50)
            {
              goto LABEL_104;
            }

            v63 = &v10[16 * v43];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_106;
            }

            v69 = &v44[16 * v46];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_109;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_111;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v46 = v43 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v43 < 2)
          {
            goto LABEL_112;
          }

          v73 = &v10[16 * v43];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_65:
          if (v68)
          {
            goto LABEL_108;
          }

          v76 = &v44[16 * v46];
          v78 = *v76;
          v77 = *(v76 + 1);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_110;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_72:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_118;
          }

          v84 = *a3;
          if (!*a3)
          {
            goto LABEL_120;
          }

          v85 = &v44[16 * v46 - 16];
          v86 = *v85;
          v87 = v46;
          v88 = &v44[16 * v46];
          v89 = *(v88 + 1);
          v90 = (v84 + 24 * *v85);
          v91 = (v84 + 24 * *v88);
          v92 = v84 + 24 * v89;

          sub_1D21BB760(v90, v91, v92, v118, a5);
          if (v6)
          {

            goto LABEL_95;
          }

          if (v89 < v86)
          {
            goto LABEL_99;
          }

          v93 = *(v122 + 2);
          if (v87 > v93)
          {
            goto LABEL_100;
          }

          *v85 = v86;
          *(v85 + 1) = v89;
          if (v87 >= v93)
          {
            goto LABEL_101;
          }

          v43 = v93 - 1;
          memmove(v88, v88 + 16, 16 * (v93 - 1 - v87));
          v10 = v122;
          *(v122 + 2) = v93 - 1;
          v94 = v93 > 2;
          v6 = 0;
          v44 = v116;
          if (!v94)
          {
            goto LABEL_3;
          }
        }

        v51 = &v44[16 * v43];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_102;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_103;
        }

        v58 = &v10[16 * v43];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_105;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_107;
        }

        if (v62 >= v54)
        {
          v80 = &v44[16 * v46];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_113;
          }

          if (v49 < v83)
          {
            v46 = v43 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v40;
      if (v40 >= v8)
      {
        v125 = v10;
        break;
      }
    }
  }

  v108 = *a1;
  if (!*a1)
  {
    goto LABEL_123;
  }

  sub_1D21BBA80(&v125, v108, a3, a5);
  if (v6)
  {

LABEL_95:
  }

  else
  {
  }
}

uint64_t sub_1D21BC360(char **a1, double (*a2)(uint64_t, uint64_t, float, float))
{
  v3 = a1;
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D21C8B4C(v4);
  }

  v5 = *(v4 + 2);
  v28[0] = (v4 + 32);
  v28[1] = v5;
  swift_retain_n();
  v6 = sub_1D225124C();
  if (v6 >= v5)
  {
    if (v5 >= 2)
    {
      v23 = v3;

      v10 = v4 + 36;
      v11 = -1;
      for (i = 1; i != v5; ++i)
      {
        v24 = v11;
        v25 = v10;
        do
        {
          v13 = *(v10 - 1);
          v14 = *v10;
          v15 = *(v10 + 4);
          v16 = v10[12];
          v17 = a2(*(v10 + 28), v10[36], *(v10 + 5), *(v10 + 6));
          if (*&v17 >= a2(v15, v16, v13, v14))
          {
            break;
          }

          v18 = *(v10 + 28);
          v19 = v10[36];
          v20 = *(v10 + 20);
          *(v10 + 20) = *(v10 - 4);
          *(v10 + 36) = *(v10 + 12);
          *(v10 - 4) = v20;
          *(v10 + 4) = v18;
          v10[12] = v19;
          v10 -= 24;
        }

        while (!__CFADD__(v11++, 1));
        v10 = v25 + 24;
        v11 = v24 - 1;
      }

      v3 = v23;
    }
  }

  else
  {
    v7 = v6;
    v8 = (v5 >> 1);
    if (v5 >= 2)
    {
      v9 = sub_1D2250B2C();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v26[0] = (v9 + 32);
    v26[1] = v8;

    sub_1D21BBC2C(v26, v27, v28, v7, a2);

    *(v9 + 16) = 0;
  }

  *v3 = v4;
}

unint64_t sub_1D21BC5AC()
{
  result = qword_1EC6D28B0;
  if (!qword_1EC6D28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D28B0);
  }

  return result;
}

unint64_t sub_1D21BC604()
{
  result = qword_1EC6D28B8;
  if (!qword_1EC6D28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D28B8);
  }

  return result;
}

unint64_t sub_1D21BC65C()
{
  result = qword_1EC6D28C0;
  if (!qword_1EC6D28C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D28C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D28C0);
  }

  return result;
}

unint64_t sub_1D21BC6C4()
{
  result = qword_1EC6D28D0;
  if (!qword_1EC6D28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D28D0);
  }

  return result;
}

uint64_t type metadata accessor for VUEnrollmentGallery()
{
  result = qword_1EC6D28D8;
  if (!qword_1EC6D28D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D21BC7F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 45))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D21BC838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VUEnrollmentGallery.Direction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VUEnrollmentGallery.Direction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VUEnrollmentGallery.EnrollmentSortingData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VUEnrollmentGallery.EnrollmentSortingData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1D21BCA6C()
{
  result = qword_1EDC87228;
  if (!qword_1EDC87228)
  {
    sub_1D225055C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC87228);
  }

  return result;
}

uint64_t sub_1D21BCAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUStreamingGallery.Label(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21BCB28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21BCB90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21BCBF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21BCC70(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v13 = v12;
  v154 = a8;
  v163 = a7;
  v164 = a6;
  v153 = a5;
  v150 = a4;
  v149 = a3;
  v178 = a2;
  v15 = sub_1D225077C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v156 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v173 = &v134 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v134 - v21;
  v23 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_signposter;
  sub_1D225076C();
  v161 = v23;
  v176 = v11;
  v24 = sub_1D225078C();
  v25 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v26 = a1;
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v24, v25, v28, "search", "", v27, 2u);
    v29 = v27;
    a1 = v26;
    v13 = v12;
    MEMORY[0x1D3899640](v29, -1, -1);
  }

  v30 = *(v16 + 16);
  v160 = v16 + 16;
  v159 = v30;
  v30(v173, v22, v15);
  v158 = sub_1D22507EC();
  swift_allocObject();
  v31 = sub_1D22507DC();
  v32 = *(v16 + 8);
  v162 = v16 + 8;
  v157 = v32;
  v32(v22, v15);
  if (v164 < 1)
  {
LABEL_64:
    v33 = v176;
    goto LABEL_65;
  }

  v33 = v176;
  if (v163 < 1)
  {
LABEL_65:
    sub_1D21BE924(v33, v31, "search");
  }

  v148 = v15;
  v138 = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v35 = swift_allocObject();
  v175 = xmmword_1D2252720;
  *(v35 + 16) = xmmword_1D2252720;
  v36 = sub_1D2174E10(0, &unk_1EDC886D0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E6530];
  v39 = MEMORY[0x1E69E65A8];
  v165 = xmmword_1D22526E0;
  *(v37 + 16) = xmmword_1D22526E0;
  *(v37 + 56) = v38;
  *(v37 + 64) = v39;
  v143 = a1;
  *(v37 + 32) = a1;
  *(v35 + 32) = sub_1D2250C5C();
  v186 = v35;
  v40 = v178;
  v41 = *v178;
  v177 = v34;
  if (v41 != 2)
  {
    inited = swift_initStackObject();
    *(inited + 16) = v175;
    v43 = swift_allocObject();
    *(v43 + 16) = v165;
    v44 = sub_1D2174E10(0, &qword_1EDC876F8);
    v45 = sub_1D2250E0C();
    *(v43 + 56) = v44;
    *(v43 + 64) = sub_1D21C3418(&qword_1EDC86988, &qword_1EDC876F8);
    *(v43 + 32) = v45;
    v40 = v178;
    *(inited + 32) = sub_1D2250C5C();
    sub_1D217A694(inited);
  }

  v46 = *(v40 + 1);
  if (v46 && *(v46 + 16))
  {
    v47 = swift_initStackObject();
    *(v47 + 16) = v175;
    v48 = swift_allocObject();
    *(v48 + 16) = v165;
    *(v48 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
    *(v48 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
    *(v48 + 32) = v46;

    *(v47 + 32) = sub_1D2250C5C();
    sub_1D217A694(v47);
  }

  v49 = *(v40 + 2);
  if (v49 && *(v49 + 16))
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = v175;
    v51 = swift_allocObject();
    *(v51 + 16) = v165;
    *(v51 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
    *(v51 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
    *(v51 + 32) = v49;

    *(v50 + 32) = sub_1D2250C5C();
    sub_1D217A694(v50);
  }

  if ((v40[32] & 1) == 0)
  {
    v52 = *(v40 + 3);
    v53 = swift_initStackObject();
    *(v53 + 16) = v175;
    v54 = swift_allocObject();
    *(v54 + 16) = v165;
    *(v54 + 56) = MEMORY[0x1E69E6530];
    *(v54 + 64) = MEMORY[0x1E69E65A8];
    *(v54 + 32) = v52;
    *(v53 + 32) = sub_1D2250C5C();
    sub_1D217A694(v53);
  }

  v55 = v176[2];
  v137 = v186;
  v56 = sub_1D2250AEC();
  v57 = [objc_opt_self() andPredicateWithSubpredicates_];

  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D2252750;
  v155 = v36;
  v59 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v60 = sub_1D225092C();
  v61 = [v59 initWithKey:v60 ascending:1];

  *(v58 + 32) = v61;
  v62 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v63 = sub_1D225092C();
  v64 = [v62 initWithKey:v63 ascending:1];

  *(v58 + 40) = v64;
  MEMORY[0x1EEE9AC00](v65);
  *(&v134 - 4) = v57;
  *(&v134 - 3) = v58;
  *(&v134 - 2) = v55;
  v67 = v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
  sub_1D2250DBC();
  v69 = v148;
  v70 = v156;
  if (!v13)
  {
    v147 = v68;
    v71 = v176;

    v73 = v180;
    v74 = *(v180 + 16);
    if (v74)
    {
      v75 = 0;
      v76 = *(v71 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_cacheSize);
      v77 = *(v71 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_partitionCache);
      if (*(v154 + 32))
      {
        v76 /= 2;
      }

      v135 = v180 + 32;
      v142 = a11;
      v141 = a10;
      v145 = "mapping.partition";
      v140 = HIWORD(v153) & 1;
      v139 = a9 & 1;
      v136 = v77;
      *(v77 + 16) = v76;
      v78 = 1;
      v146 = v73;
      v144 = v74;
      do
      {
        if (__OFADD__(v75, 128))
        {
          goto LABEL_77;
        }

        if (v75 + 128 >= v74)
        {
          v81 = v74;
        }

        else
        {
          v81 = v75 + 128;
        }

        v82 = v81 - v75;
        if (v81 < v75)
        {
          goto LABEL_78;
        }

        v83 = *(v73 + 16);
        if (v83 < v75 || v83 < v81)
        {
          goto LABEL_79;
        }

        v172 = v75 + 128;
        if (v83 == v82)
        {
        }

        else
        {
          v73 = MEMORY[0x1E69E7CC0];
          if (v81 != v75)
          {
            if (v82 < 1)
            {
              v123 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
              v123 = swift_allocObject();
              v124 = _swift_stdlib_malloc_size(v123);
              v125 = v124 - 32;
              if (v124 < 32)
              {
                v125 = v124 - 25;
              }

              v123[2] = v82;
              v123[3] = 2 * (v125 >> 3);
            }

            v72 = memcpy(v123 + 4, (v135 + 8 * v75), 8 * v82);
            v73 = v123;
          }
        }

        if ((v78 & 1) == 0)
        {

          v31 = v138;
          goto LABEL_64;
        }

        v170 = MEMORY[0x1D3898F20](v72);
        v78 = MEMORY[0x1E69E7CC0];
        v184 = MEMORY[0x1E69E7CC0];
        v185 = MEMORY[0x1E69E7CC0];
        v182 = MEMORY[0x1E69E7CC0];
        v183 = MEMORY[0x1E69E7CC0];
        v85 = swift_allocObject();
        *(v85 + 16) = v165;
        *(v85 + 56) = v147;
        *(v85 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
        *(v85 + 32) = v73;
        v169 = v73;

        v57 = sub_1D2250C5C();
        v86 = MEMORY[0x1EEE9AC00](v57);
        *(&v134 - 4) = &v185;
        *(&v134 - 3) = &v184;
        *(&v134 - 2) = &v183;
        *(&v134 - 1) = &v182;
        (*(*v176 + 152))(v86, v78, 1, 0, 1, sub_1D21C303C);
        v87 = v13;
        if (v13)
        {
          goto LABEL_80;
        }

        v78 = v185;
        v178 = v184;
        v88 = v182;
        v168 = v183;
        sub_1D225076C();
        v89 = sub_1D225078C();
        v90 = sub_1D2250DAC();
        v91 = sub_1D2250E4C();
        v177 = v78;
        if (v91)
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          v93 = sub_1D225075C();
          _os_signpost_emit_with_name_impl(&dword_1D2171000, v89, v90, v93, "searchBatch", "", v92, 2u);
          v94 = v92;
          v78 = v177;
          MEMORY[0x1D3899640](v94, -1, -1);
        }

        v159(v173, v70, v69);
        swift_allocObject();
        v57 = sub_1D22507DC();
        v157(v70, v69);
        v95 = *(v78 + 16);
        v167 = v57;
        if (v95)
        {
          v152 = v88;
          v151 = v95;
          v96 = sub_1D2178E78(v95);
          v180 = v96;
          v181 = v97;
          v98 = *(v78 + 16);
          if (v98)
          {
            v171 = 0;
            v99 = 0;
            v100 = v178;
            v101 = *(v178 + 2);
            v174 = v78 + 32;
            v102 = (v178 + 40);
            v103 = MEMORY[0x1E69E7CC0];
            *&v175 = v101;
            while (v99 < *(v78 + 16))
            {
              if (v101 == v99)
              {
                goto LABEL_51;
              }

              if (v99 >= *(v100 + 2))
              {
                goto LABEL_76;
              }

              v104 = *v102;
              if (*v102 >> 60 != 15)
              {
                v105 = *(v174 + 8 * v99);
                v106 = *(v102 - 1);
                sub_1D21A3B78(v106, *v102);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v103 = sub_1D2195F78(0, *(v103 + 2) + 1, 1, v103);
                }

                v57 = *(v103 + 2);
                v107 = *(v103 + 3);
                if (v57 >= v107 >> 1)
                {
                  v103 = sub_1D2195F78((v107 > 1), v57 + 1, 1, v103);
                }

                *(v103 + 2) = v57 + 1;
                *&v103[8 * v57 + 32] = v105;
                sub_1D225047C();
                sub_1D21A1F98(v106, v104);
                v100 = v178;
                v78 = v177;
                v101 = v175;
              }

              ++v99;
              v102 += 2;
              if (v98 == v99)
              {
LABEL_51:
                v109 = v180;
                v108 = v181;
                v87 = v171;
                v78 = v176;
                v110 = v143;
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:

            objc_autoreleasePoolPop(v170);
            swift_unexpectedError();
            __break(1u);
LABEL_81:

            sub_1D21A1ED8(v180, v181);
            sub_1D21BE924(v78, v167, "searchBatch");

            result = swift_unexpectedError();
            __break(1u);
            return result;
          }

          v109 = v96;
          v108 = v97;
          v103 = MEMORY[0x1E69E7CC0];
          v110 = v143;
          v78 = v176;
LABEL_53:
          v111 = sub_1D21D7DAC(v110, v109, v108, v163);
          v171 = v87;
          if (v87)
          {
            goto LABEL_81;
          }

          v112 = v111;
          v113 = v149;
          v114 = v149 >> 8;
          v115 = v153;
          v116 = v153 >> 8;

          v117 = sub_1D21C3048(v103, v112);

          v179 = 1;
          v118 = sub_1D2174E10(0, &qword_1EDC886A0);
          MEMORY[0x1EEE9AC00](v118);
          *(&v134 - 16) = &v179;
          *(&v134 - 15) = v164;
          *(&v134 - 112) = v113;
          *(&v134 - 111) = v114;
          *(&v134 - 13) = v150;
          *(&v134 - 96) = v115 & 1;
          *(&v134 - 95) = v116;
          *(&v134 - 94) = v140;
          v119 = v177;
          *(&v134 - 11) = v117;
          *(&v134 - 10) = v119;
          *(&v134 - 9) = v78;
          *(&v134 - 64) = v110;
          v120 = v168;
          *(&v134 - 7) = v152;
          *(&v134 - 6) = v120;
          v121 = v178;
          *(&v134 - 5) = v154;
          *(&v134 - 4) = v121;
          *(&v134 - 24) = v139;
          v122 = v142;
          *(&v134 - 2) = v141;
          *(&v134 - 1) = v122;
          sub_1D2250D2C();

          sub_1D21A1ED8(v180, v181);
          LODWORD(v175) = v179;
          v57 = v171;
          v69 = v148;
          v70 = v156;
          v80 = v78;
          v79 = v170;
        }

        else
        {
          v57 = 0;

          LODWORD(v175) = 1;
          v79 = v170;
          v80 = v176;
        }

        sub_1D21BE924(v80, v167, "searchBatch");

        objc_autoreleasePoolPop(v79);
        v75 = v172;
        v74 = v144;
        v73 = v146;
        v13 = v57;
        v78 = v175;
      }

      while (v172 < v144);

      if (v74 > 0x3E8)
      {

        v127 = sub_1D225080C();
        v128 = sub_1D2250CCC();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 134217984;
          sub_1D2250D5C();
          *(v129 + 4) = *&v180;
          _os_log_impl(&dword_1D2171000, v127, v128, "Search partition cache hit rate: %f", v129, 0xCu);
          MEMORY[0x1D3899640](v129, -1, -1);
        }

        sub_1D2250D5C();
        if (*&v180 > 0.0)
        {

          v130 = sub_1D225080C();
          v131 = sub_1D2250CCC();

          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            *v132 = 134217984;
            sub_1D2250D5C();
            *(v132 + 4) = *&v180;
            _os_log_impl(&dword_1D2171000, v130, v131, "Search context cache hit rate: %f", v132, 0xCu);
            MEMORY[0x1D3899640](v132, -1, -1);
          }
        }
      }

      sub_1D21C27D0(sub_1D21C3644, sub_1D21C35F4, &block_descriptor_24);
      v133 = v176;
      sub_1D21C27D0(sub_1D21C34B0, sub_1D21C34CC, &block_descriptor_21);
      v33 = v133;
      v31 = v138;
    }

    else
    {

      v31 = v138;
      v33 = v71;
    }

    goto LABEL_65;
  }

  sub_1D21BE924(v176, v138, "search");
}

uint64_t sub_1D21BE1C8(uint64_t *a1, char **a2, void **a3, void **a4, void **a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v40 - v12;
  v14 = *a1;
  v15 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v15;
  v41 = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D2195F78(0, *(v15 + 2) + 1, 1, v15);
    *a2 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D2195F78((v17 > 1), v18 + 1, 1, v15);
    *a2 = v15;
  }

  *(v15 + 2) = v18 + 1;
  *&v15[8 * v18 + 32] = v14;
  v19 = a1[1];
  v20 = a1[2];
  v21 = *a3;
  sub_1D21A3B64(v19, v20);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v21;
  if ((v22 & 1) == 0)
  {
    v21 = sub_1D2196230(0, v21[2] + 1, 1, v21);
    *a3 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1D2196230((v23 > 1), v24 + 1, 1, v21);
    *a3 = v21;
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = v19;
  v25[5] = v20;
  v26 = a1[3];
  v27 = a1[4];
  v28 = *a4;
  sub_1D21A3B64(v26, v27);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v28;
  if ((v29 & 1) == 0)
  {
    v28 = sub_1D2196230(0, v28[2] + 1, 1, v28);
    *a4 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1D2196230((v30 > 1), v31 + 1, 1, v28);
    *a4 = v28;
  }

  v28[2] = v31 + 1;
  v32 = &v28[2 * v31];
  v32[4] = v26;
  v32[5] = v27;
  v33 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  sub_1D21C31BC(a1 + *(v33 + 28), v13);
  v34 = v41;
  v35 = *v41;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v35;
  if ((v36 & 1) == 0)
  {
    v35 = sub_1D219670C(0, v35[2] + 1, 1, v35);
    *v34 = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_1D219670C(v37 > 1, v38 + 1, 1, v35);
    *v34 = v35;
  }

  v35[2] = v38 + 1;
  return sub_1D21C2B60(v13, v35 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v38);
}

uint64_t sub_1D21BE4D4(uint64_t a1, uint64_t a2, char a3)
{
  v7[3] = &unk_1F4DADB10;
  if (a3)
  {
    a1 = sub_1D220293C(&unk_1F4DADB50);
  }

  v7[0] = v7;
  v3 = MEMORY[0x1EEE9AC00](a1);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v4;
  sub_1D2250DBC();
}

uint64_t sub_1D21BE644(void *a1, void (*a2)(void), uint64_t a3, char a4)
{
  v35 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = [a1 identifier];
  v16 = [a1 embedding];
  if (!v16)
  {
    v18 = 0;
    v20 = 0xF000000000000000;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v26 = sub_1D225055C();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v23 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_1D225046C();
  v20 = v19;

  if ((a4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v33 = a2;
  v21 = [a1 contextualEmbedding];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1D225046C();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xF000000000000000;
  }

  v27 = [a1 moment];
  if (v27)
  {
    v28 = v27;
    sub_1D225054C();

    v29 = sub_1D225055C();
    (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
  }

  else
  {
    v30 = sub_1D225055C();
    (*(*(v30 - 8) + 56))(v10, 1, 1, v30);
  }

  a2 = v33;
  sub_1D21C2B60(v10, v12);
LABEL_12:
  *v15 = v34;
  v15[1] = v18;
  v15[2] = v20;
  v15[3] = v23;
  v15[4] = v25;
  sub_1D21C2B60(v12, v15 + *(v13 + 28));
  a2(v15);
  return sub_1D21C2BD0(v15);
}

uint64_t sub_1D21BE924(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_1D22507BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D225077C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D225078C();
  sub_1D22507CC();
  v12 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D21BEB7C(uint64_t a1, _BYTE *a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, unint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t (*a16)(uint64_t, uint64_t, uint64_t), void *a17)
{
  v260 = a5;
  v252 = a4;
  v257 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v249 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v243[-v23];
  v251 = sub_1D225055C();
  v250 = *(v251 - 8);
  v25 = MEMORY[0x1EEE9AC00](v251);
  v246 = &v243[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v247 = &v243[-v27];
  v284 = sub_1D225085C();
  v28 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v283 = &v243[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v282 = sub_1D225087C();
  v30 = *(v282 - 8);
  result = MEMORY[0x1EEE9AC00](v282);
  v281 = &v243[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v248 = a2;
  if (*a2 != 1)
  {
    return result;
  }

  v274 = a6;
  type metadata accessor for MinHeap();
  inited = swift_initStackObject();
  v34 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v35 = sub_1D2195E1C(0, a3 & ~(a3 >> 63), 0, v34);
  v298 = inited;
  *(inited + 16) = v35;
  v307 = v34;
  v244 = a6 & 0x10000;
  if ((a6 & 0x10000) == 0)
  {
    goto LABEL_5;
  }

  v36 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v37 = sub_1D225092C();
  [v36 initWithKey:v37 ascending:0];

  MEMORY[0x1D3898510]();
  if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_242;
  }

  while (1)
  {
    sub_1D2250B3C();
    v34 = v307;
LABEL_5:
    if (v257 < 0)
    {
      goto LABEL_236;
    }

    if (*(a8 + 16) <= v257)
    {
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      __break(1u);
      goto LABEL_240;
    }

    v273 = v34;
    v285 = a9;
    v38 = *(a8 + 8 * v257 + 32);
    v39 = *(a7 + 16);
    v277 = v38;
    v245 = a7;
    if (v39)
    {
      v40 = sub_1D2176758(v38);
      if (v41)
      {
        v42 = *(*(a7 + 56) + 8 * v40);
        a8 = *(v42 + 16);
        v43 = MEMORY[0x1E69E7CC0];
        if (a8)
        {
          v291 = v24;
          v44 = a3;
          *&aBlock = MEMORY[0x1E69E7CC0];

          sub_1D21AF7AC(0, a8, 0);
          v45 = aBlock;
          a7 = *(aBlock + 16);
          v46 = 32;
          do
          {
            v47 = *(v42 + v46);
            *&aBlock = v45;
            v48 = *(v45 + 24);
            if (a7 >= v48 >> 1)
            {
              sub_1D21AF7AC((v48 > 1), a7 + 1, 1);
              v45 = aBlock;
            }

            *(v45 + 16) = a7 + 1;
            *(v45 + 8 * a7 + 32) = v47;
            v46 += 16;
            ++a7;
            --a8;
          }

          while (a8);
          v49 = v45;

          v43 = v49;
          a3 = v44;
          v24 = v291;
        }
      }

      else
      {
        v43 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v276 = a3;
    v50 = v274 >> 8;
    v290 = *(v43 + 16);
    if (v290)
    {
      a7 = 0;
      v297 = 0;
      v270 = "ry) ==  %@";
      v253 = "isPrimary) == YES";
      v256 = "noindex:(mapping.label) == %lld";
      v255 = "noindex:(mapping.label) != -1";
      v254 = "noindex:(embedding) != nil";
      v269 = v244 == 0;
      v278 = OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_logger;
      a3 = v285;
      v292 = *(v285 + OBJC_IVAR____TtC19VisualUnderstanding14VUIndexScanner_partitionCache);
      v51 = v43 + 32;
      v280 = &v300;
      v286 = (v28 + 8);
      v279 = (v30 + 8);
      v268 = a10;
      v52 = 10;
      if (!v244)
      {
        v52 = 0;
      }

      v267 = v52;
      v266 = (v252 != 2) & v252;
      v265 = (BYTE1(v274) != 2) & BYTE1(v274);
      v28 = MEMORY[0x1E69E7CC8];
      v264 = xmmword_1D2254540;
      v263 = xmmword_1D2252720;
      v262 = xmmword_1D22526F0;
      *(&v53 + 1) = 2;
      v271 = xmmword_1D22526E0;
      *&v53 = 134217984;
      v261 = v53;
      v291 = v24;
      LODWORD(v287) = v274 >> 8;
      v289 = a10;
      v288 = v43;
      v272 = v43 + 32;
      while (1)
      {
        if (a7 >= *(v43 + 16))
        {
          goto LABEL_222;
        }

        v296 = v28;
        v306 = *(v51 + 8 * a7);
        v54 = v306;
        v55 = v292;
        v56 = *(v292 + 6);
        MEMORY[0x1EEE9AC00](v43);
        *&v243[-16] = v55;
        *&v243[-8] = &v306;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AC0);
        v57 = v297;
        sub_1D2250D5C();
        v297 = v57;
        v58 = aBlock;
        v295 = v54;
        if (aBlock)
        {
          v294 = v300;
          v293 = *(&aBlock + 1);
          v302 = sub_1D21C35FC;
          v303 = v55;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v300 = sub_1D22102A0;
          v301 = &block_descriptor_10;
          v59 = _Block_copy(&aBlock);

          v24 = v281;
          sub_1D225086C();
          v305 = MEMORY[0x1E69E7CC0];
          sub_1D2177E64(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
          sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
          v60 = v283;
          a8 = v284;
          a3 = v285;
          sub_1D2250EAC();
          MEMORY[0x1D38987A0](0, v24, v60, v59);
          _Block_release(v59);
          (*v286)(v60, a8);
          (*v279)(v24, v282);

          goto LABEL_26;
        }

        v275 = v56;
        v305 = MEMORY[0x1E69E7CC0];
        aBlock = v264;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
        v74 = swift_allocObject();
        *(v74 + 16) = v263;
        sub_1D2174E10(0, &unk_1EDC886D0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
        v75 = swift_allocObject();
        *(v75 + 16) = v262;
        v76 = MEMORY[0x1E69E6530];
        *(v75 + 56) = MEMORY[0x1E69E6530];
        v77 = MEMORY[0x1E69E65A8];
        *(v75 + 32) = v54;
        *(v75 + 96) = v76;
        *(v75 + 104) = v77;
        v78 = v268;
        *(v75 + 64) = v77;
        *(v75 + 72) = v78;
        *(v74 + 32) = sub_1D2250C5C();
        v304 = v74;
        type metadata accessor for VUVectorSearchScanner();
        if (!swift_dynamicCastClass())
        {
          sub_1D2250C5C();
          MEMORY[0x1D3898510]();
          if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2250B1C();
          }

          sub_1D2250B3C();
        }

        if (v266)
        {
          v79 = swift_allocObject();
          *(v79 + 16) = v271;
          *(v79 + 56) = MEMORY[0x1E69E6530];
          *(v79 + 64) = MEMORY[0x1E69E65A8];
          *(v79 + 32) = 2;
          sub_1D2250C5C();
          MEMORY[0x1D3898510]();
          if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2250B1C();
          }

          sub_1D2250B3C();
          a3 = v285;
        }

        if ((v274 & 1) == 0)
        {
          v80 = swift_allocObject();
          *(v80 + 16) = v271;
          *(v80 + 56) = MEMORY[0x1E69E6530];
          *(v80 + 64) = MEMORY[0x1E69E65A8];
          *(v80 + 32) = v260;
          sub_1D2250C5C();
          MEMORY[0x1D3898510]();
          if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2250B1C();
          }

          sub_1D2250B3C();
        }

        if (v265)
        {
          sub_1D2250C5C();
          MEMORY[0x1D3898510]();
          if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D2250B1C();
          }

          sub_1D2250B3C();
        }

        v81 = sub_1D2250AEC();

        v82 = [objc_opt_self() andPredicateWithSubpredicates_];

        MEMORY[0x1EEE9AC00](v83);
        *&v243[-16] = &v305;
        *&v243[-8] = &aBlock;
        v24 = a3;
        v84 = *(*a3 + 152);
        v85 = v273;

        a8 = v297;
        v84(v82, v85, 0, v267, v269, sub_1D21C31B4, &v243[-32]);
        if (!a8)
        {
          break;
        }

        v297 = 0;

        sub_1D21A1ED8(aBlock, *(&aBlock + 1));

        v28 = v296;
        v86 = sub_1D2176758(v295);
        a3 = v24;
        if (v87)
        {
          v88 = v86;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v28;
          LOBYTE(v50) = v287;
          v51 = v272;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1D21B91AC();
            v28 = aBlock;
          }

          v90 = *(v28 + 56) + 24 * v88;
          v91 = *(v90 + 8);
          a8 = v28;
          v92 = *(v90 + 16);

          v93 = v92;
          v28 = a8;
          sub_1D21A1ED8(v91, v93);
          sub_1D2202610(v88, a8);
        }

        else
        {
          LOBYTE(v50) = v287;
          v51 = v272;
        }

        v30 = v295;
        if (!*(v28 + 16))
        {
LABEL_63:
          v106 = sub_1D225080C();
          v107 = sub_1D2250CDC();
          if (os_log_type_enabled(v106, v107))
          {
            a8 = v28;
            v108 = swift_slowAlloc();
            *v108 = v261;
            *(v108 + 4) = v30;
            _os_log_impl(&dword_1D2171000, v106, v107, "Partition %ld is empty!", v108, 0xCu);
            v109 = v108;
            v28 = a8;
            MEMORY[0x1D3899640](v109, -1, -1);
          }

          goto LABEL_22;
        }

LABEL_62:
        sub_1D2176758(v30);
        if ((v105 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_22:
        ++a7;
        v24 = v291;
        v43 = v288;
        if (v290 == a7)
        {
          goto LABEL_66;
        }
      }

      v58 = v305;
      v94 = *(&aBlock + 1);
      v95 = aBlock;
      sub_1D21A3B78(aBlock, *(&aBlock + 1));
      sub_1D21A1ED8(v95, v94);
      v96 = v283;
      v97 = sub_1D225084C();
      MEMORY[0x1EEE9AC00](v97);
      v98 = v292;
      *&v243[-48] = v292;
      *&v243[-40] = &v306;
      *&v243[-32] = v58;
      *&v243[-24] = v95;
      v293 = v95;
      v294 = v94;
      *&v243[-16] = v94;
      sub_1D2250D4C();
      v297 = 0;
      v275 = *v286;
      v99 = v284;
      v275(v96, v284);
      v259 = *(v98 + 9);
      v302 = sub_1D21C35F8;
      v303 = v98;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v300 = sub_1D22102A0;
      v301 = &block_descriptor_0;
      v258 = _Block_copy(&aBlock);

      a8 = v281;
      sub_1D225086C();
      v305 = MEMORY[0x1E69E7CC0];
      sub_1D2177E64(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
      sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
      sub_1D2250EAC();
      v100 = v258;
      MEMORY[0x1D38987A0](0, a8, v96, v258);
      _Block_release(v100);
      v275(v96, v99);
      (*v279)(a8, v282);

      a3 = v24;
      v51 = v272;
LABEL_26:
      v61 = v296;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v61;
      v30 = v295;
      v62 = sub_1D2176758(v295);
      v64 = *(v61 + 16);
      v65 = (v63 & 1) == 0;
      v66 = __OFADD__(v64, v65);
      v67 = v64 + v65;
      if (v66)
      {
        goto LABEL_223;
      }

      v68 = v63;
      if (*(v61 + 24) >= v67)
      {
        if (v28)
        {
          goto LABEL_31;
        }

        a8 = v62;
        sub_1D21B91AC();
        v62 = a8;
        v28 = aBlock;
        if ((v68 & 1) == 0)
        {
          goto LABEL_59;
        }

LABEL_32:
        v70 = (*(v28 + 56) + 24 * v62);
        v71 = v70[1];
        v72 = v70[2];
        v73 = v293;
        *v70 = v58;
        v70[1] = v73;
        v70[2] = v294;

        sub_1D21A1ED8(v71, v72);
      }

      else
      {
        sub_1D21B522C(v67, v28);
        v62 = sub_1D2176758(v30);
        if ((v68 & 1) != (v69 & 1))
        {
          goto LABEL_245;
        }

LABEL_31:
        v28 = aBlock;
        if (v68)
        {
          goto LABEL_32;
        }

LABEL_59:
        *(v28 + 8 * (v62 >> 6) + 64) |= 1 << v62;
        *(*(v28 + 48) + 8 * v62) = v30;
        v101 = (*(v28 + 56) + 24 * v62);
        v102 = v293;
        *v101 = v58;
        v101[1] = v102;
        v101[2] = v294;
        v103 = *(v28 + 16);
        v66 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v66)
        {
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
          goto LABEL_237;
        }

        *(v28 + 16) = v104;
      }

      LOBYTE(v50) = v287;
      if (!*(v28 + 16))
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v297 = 0;
    v28 = MEMORY[0x1E69E7CC8];
    a3 = v285;
LABEL_66:

    if (*(a11 + 16) <= v257)
    {
      goto LABEL_238;
    }

    a8 = a12;
    sub_1D21C31BC(a11 + ((*(v249 + 80) + 32) & ~*(v249 + 80)) + *(v249 + 72) * v257, v24);
    v110 = v250;
    v111 = v251;
    v112 = (*(v250 + 48))(v24, 1, v251);
    v296 = v28;
    if (v112 == 1)
    {
      sub_1D21C322C(v24);
      v113 = 0;
      v285 = 0;
      v284 = 0;
    }

    else
    {
      v295 = a12;
      v114 = v50;
      v115 = v252;
      v116 = v252 >> 8;
      v30 = v247;
      v117 = (*(v110 + 32))(v247, v24, v111);
      v24 = v111;
      v118 = v110;
      MEMORY[0x1EEE9AC00](v117);
      v243[-64] = v119;
      *&v243[-56] = v30;
      v243[-48] = v115;
      v243[-47] = v116;
      *&v243[-40] = v260;
      v243[-32] = v274 & 1;
      v243[-31] = v114;
      v243[-30] = BYTE2(v244);
      *&v243[-24] = a3;
      *&v243[-16] = &v307;
      v120 = v297;
      v121 = sub_1D21C17E0(v30, sub_1D21C3324, &v243[-80]);
      if (v120)
      {
        v297 = 0;

        v124 = v246;
        (*(v110 + 16))(v246, v30, v24);
        v125 = sub_1D225080C();
        v126 = sub_1D2250CDC();
        a7 = v24;
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *&aBlock = v128;
          *v127 = 136315138;
          sub_1D2177E64(&qword_1EC6D2AC8, MEMORY[0x1E69695A8]);
          v24 = v126;
          v129 = sub_1D225125C();
          a3 = v130;
          v131 = *(v118 + 8);
          v131(v124, a7);
          v132 = sub_1D21761D0(v129, a3, &aBlock);

          *(v127 + 4) = v132;
          _os_log_impl(&dword_1D2171000, v125, v24, "Cannot fetch context for %s!", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          MEMORY[0x1D3899640](v128, -1, -1);
          v133 = v127;
          v28 = v296;
          MEMORY[0x1D3899640](v133, -1, -1);

          v134 = 0;
          v285 = 0;
          v284 = 0;
          v30 = v247;
        }

        else
        {

          v131 = *(v118 + 8);
          v131(v124, v24);
          v134 = 0;
          v285 = 0;
          v284 = 0;
        }

        a8 = v295;
        v131(v30, a7);
      }

      else
      {
        v284 = v123;
        v285 = v122;
        v134 = v121;
        v297 = 0;
        a8 = v295;
        a7 = v24;
        (*(v110 + 8))(v30, v24);
      }

      v113 = v134;
    }

    v135 = v257;
    if (*(a8 + 16) <= v257)
    {
      goto LABEL_239;
    }

    v288 = a13;
    v136 = a8 + 16 * v257;
    v137 = *(v136 + 40);
    v30 = MEMORY[0x1E69E7CC8];
    v290 = v113;
    if (v137 >> 60 == 15)
    {
      v138 = v245;
    }

    else
    {
      v138 = v245;
      if (v113 && *(v113 + 16) >= 2uLL)
      {
        v139 = *(v136 + 32);
        v140 = *(v288 + 48);
        v141 = *(v288 + 56);
        sub_1D21A3B64(v139, v137);
        v142 = v285;
        a8 = v284;
        sub_1D21C32DC(v290, v285, v284);
        v143 = v141;
        v28 = v296;
        a3 = sub_1D223EDC0(v139, v137, v142, a8, v140, v143);
        v144 = *(a3 + 16);

        v145 = v290;
        a7 = 0;
LABEL_81:
        v146 = v277;
        while (1)
        {
          do
          {
            if (v144 == a7)
            {
              goto LABEL_99;
            }

            if (a7 >= *(a3 + 16))
            {
              goto LABEL_232;
            }

            v147 = *(v145 + 16);
            if (a7 == v147)
            {
LABEL_99:

              sub_1D21A1F98(v139, v137);
              sub_1D21C3294(v290, v285, v284);
              v138 = v245;
              v135 = v257;
              goto LABEL_100;
            }

            if (a7 >= v147)
            {
              goto LABEL_233;
            }

            v24 = *(v145 + 8 * a7++ + 32);
          }

          while (v24 == v146);
          a8 = v139;
          v148 = *(a3 + 4 * a7 + 28);
          v149 = *(v288 + 84);
          v150 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v30;
          v151 = sub_1D2176758(v24);
          v153 = v30;
          v154 = v151;
          v155 = *(v153 + 16);
          v156 = (v152 & 1) == 0;
          v157 = v155 + v156;
          if (__OFADD__(v155, v156))
          {
            __break(1u);
            goto LABEL_244;
          }

          if (*(v153 + 24) < v157)
          {
            break;
          }

          v145 = v290;
          if ((v150 & 1) == 0)
          {
            v162 = v152;
            sub_1D21B6D70();
            LOBYTE(v152) = v162;
LABEL_91:
            v145 = v290;
          }

          v139 = a8;
          v160 = v148 * v149;
          v161 = aBlock;
          if ((v152 & 1) == 0)
          {
            *(aBlock + 8 * (v154 >> 6) + 64) |= 1 << v154;
            *(v161[6] + 8 * v154) = v24;
            *(v161[7] + 4 * v154) = v160;
            v163 = v161[2];
            v66 = __OFADD__(v163, 1);
            v164 = v163 + 1;
            if (!v66)
            {
              v30 = v161;
              v161[2] = v164;
              goto LABEL_81;
            }

LABEL_244:
            __break(1u);
LABEL_245:
            sub_1D22512AC();
            __break(1u);
LABEL_246:

            __break(1u);
            return result;
          }

          *(*(aBlock + 56) + 4 * v154) = v160;
          v146 = v277;
          v30 = v161;
        }

        LODWORD(v295) = v152;
        sub_1D21B1670(v157, v150);
        v158 = sub_1D2176758(v24);
        v159 = v152 & 1;
        LOBYTE(v152) = v295;
        if ((v295 & 1) != v159)
        {
          goto LABEL_245;
        }

        v154 = v158;
        goto LABEL_91;
      }
    }

LABEL_100:
    if (*(a14 + 16) > v135)
    {
      break;
    }

LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    sub_1D2250B1C();
  }

  v165 = a14 + 16 * v135;
  a8 = *(v165 + 32);
  v166 = *(v165 + 40);
  v167 = v165 + 32;
  v289 = v166;
  if (v166 >> 60 != 15)
  {
    v278 = v167;
    if (*(v138 + 16) && (v168 = sub_1D2176758(v277), (v169 & 1) != 0))
    {
      v170 = *(*(v138 + 56) + 8 * v168);
    }

    else
    {
      v170 = MEMORY[0x1E69E7CC0];
    }

    v171 = *(v170 + 16);
    v282 = a8;
    sub_1D21A3B64(a8, v289);
    if (v171)
    {
      v172 = 0;
      a7 = v170 + 32;
      v283 = MEMORY[0x1E69E7CC0];
      v24 = 24;
      while (2)
      {
        a8 = a7 + 16 * v172;
        v28 = v172;
        while (1)
        {
          if (v28 >= v171)
          {
            goto LABEL_225;
          }

          v172 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_226:
            __break(1u);
LABEL_227:
            __break(1u);
LABEL_228:
            __break(1u);
LABEL_229:
            __break(1u);
            goto LABEL_230;
          }

          v173 = v296;
          if (*(v296 + 16))
          {
            v174 = sub_1D2176758(*a8);
            if (v175)
            {
              break;
            }
          }

          ++v28;
          a8 += 16;
          if (v172 == v171)
          {
            goto LABEL_121;
          }
        }

        v295 = v30;
        v176 = (*(v173 + 56) + 24 * v174);
        v177 = *v176;
        v178 = v176[1];
        a3 = v176[2];

        sub_1D21A3B78(v178, a3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v283 = sub_1D2196918(0, *(v283 + 2) + 1, 1, v283);
        }

        v180 = *(v283 + 2);
        v179 = *(v283 + 3);
        if (v180 >= v179 >> 1)
        {
          v283 = sub_1D2196918((v179 > 1), v180 + 1, 1, v283);
        }

        v181 = v283;
        *(v283 + 2) = v180 + 1;
        v24 = 24;
        v182 = &v181[24 * v180];
        *(v182 + 4) = v177;
        *(v182 + 5) = v178;
        *(v182 + 6) = a3;
        v30 = v295;
        if (v172 != v171)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v283 = MEMORY[0x1E69E7CC0];
    }

LABEL_121:

    v183 = v283;
    a8 = *(v283 + 2);
    if (a8)
    {
      v28 = 0;
      v184 = v283 + 32;
      v280 = *(v283 + 2);
      v279 = v283 + 32;
      while (v28 < *(v183 + 2))
      {
        v185 = &v184[24 * v28];
        v24 = *v185;
        v186 = v185[1];
        v187 = v185[2];
        v188 = *(v288 + 48);
        a3 = *(v288 + 56);

        sub_1D21A3B78(v186, v187);
        v287 = v186;
        v189 = v186;
        a7 = v24;
        v286 = v187;
        v190 = sub_1D223EDC0(v282, v289, v189, v187, v188, a3);
        v294 = *(v24 + 16);
        v293 = v190;
        if (v294)
        {
          v281 = v28;
          v191 = 0;
          v24 += 32;
          v292 = (v190 + 4);
          v192 = v277;
          v291 = a7;
          while (1)
          {
            v193 = *(v24 + 8 * v191);
            if (v193 != v192)
            {
              if (v191 >= v293[2])
              {
                goto LABEL_227;
              }

              if (v191 >= *(a7 + 16))
              {
                goto LABEL_228;
              }

              v194 = v292[v191];
              v195 = sub_1D2176758(v193);
              if (v196)
              {
                v197 = v195;
                v198 = swift_isUniquelyReferenced_nonNull_native();
                *&aBlock = v30;
                if (!v198)
                {
                  sub_1D21B6D70();
                  v30 = aBlock;
                }

                v199 = *(*(v30 + 56) + 4 * v197);
                sub_1D22011F0(v197, v30);
                if (v194 <= ((v194 + v199) * 0.5))
                {
                  v194 = (v194 + v199) * 0.5;
                }
              }

              if (v191 >= *(a7 + 16))
              {
                goto LABEL_229;
              }

              v295 = v30;
              a7 = *(v24 + 8 * v191);
              v30 = *(v298 + 2);
              v200 = *(v30 + 16);
              if (v200 >= v276)
              {
                if (!v200)
                {
                  goto LABEL_231;
                }

                v216 = *(v30 + 40);
                if (v216 < v194 || (v216 == v194 ? (v217 = *(v30 + 32) < a7) : (v217 = 0), v217))
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!*(v30 + 16))
                    {
                      goto LABEL_234;
                    }
                  }

                  else
                  {
                    v30 = sub_1D2204854(v30);
                    if (!*(v30 + 16))
                    {
                      goto LABEL_234;
                    }
                  }

                  *(v30 + 32) = a7;
                  *(v30 + 40) = v194;
                  *(v298 + 2) = v30;
                  sub_1D220FD10();
                }
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = sub_1D2195E1C(0, v200 + 1, 1, v30);
                }

                v202 = *(v30 + 16);
                v201 = *(v30 + 24);
                if (v202 >= v201 >> 1)
                {
                  v30 = sub_1D2195E1C((v201 > 1), v202 + 1, 1, v30);
                }

                *(v30 + 16) = v202 + 1;
                v203 = v30 + 16 * v202;
                *(v203 + 32) = a7;
                *(v203 + 40) = v194;
                *(v298 + 2) = v30;
                v204 = *(v30 + 16);
                if (v204)
                {
                  v205 = (v204 - 2) / 2;
                  if (v205 >= v204)
                  {
LABEL_218:
                    __break(1u);
                  }

                  else
                  {
                    v206 = v204 - 1;
                    while (v206 < v204)
                    {
                      a7 = v205;
                      a3 = 16 * v205;
                      v208 = v30 + 32 + 16 * v205;
                      a8 = *v208;
                      v209 = *(v208 + 8);
                      v28 = 16 * v206;
                      v210 = v30 + 32 + 16 * v206;
                      v211 = *v210;
                      v212 = *(v210 + 8);
                      if (v212 >= v209 && (v212 != v209 || v211 >= a8))
                      {
                        goto LABEL_128;
                      }

                      if (a7 != v206)
                      {
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v30 = sub_1D2204854(v30);
                        }

                        v214 = *(v30 + 16);
                        if (a7 >= v214)
                        {
                          goto LABEL_220;
                        }

                        v215 = v30 + 32 + a3;
                        *v215 = v211;
                        *(v215 + 8) = v212;
                        if (v206 >= v214)
                        {
                          goto LABEL_221;
                        }

                        v207 = v30 + 32 + v28;
                        *v207 = a8;
                        *(v207 + 8) = v209;
                        *(v298 + 2) = v30;
                      }

                      v205 = (a7 - 1) / 2;
                      v204 = *(v30 + 16);
                      v206 = a7;
                      if (v205 >= v204)
                      {
                        goto LABEL_218;
                      }
                    }
                  }

                  __break(1u);
LABEL_220:
                  __break(1u);
LABEL_221:
                  __break(1u);
LABEL_222:
                  __break(1u);
LABEL_223:
                  __break(1u);
LABEL_224:
                  __break(1u);
LABEL_225:
                  __break(1u);
                  goto LABEL_226;
                }
              }

LABEL_128:
              v192 = v277;
              v30 = v295;
              a7 = v291;
            }

            if (++v191 == v294)
            {

              v183 = v283;
              a8 = v280;
              v28 = v281;
              v184 = v279;
              goto LABEL_124;
            }
          }
        }

LABEL_124:
        ++v28;

        sub_1D21A1ED8(v287, v286);
        if (v28 == a8)
        {
          goto LABEL_175;
        }
      }

      goto LABEL_235;
    }

LABEL_175:

    sub_1D21A1F98(v282, v289);
    v167 = v278;
  }

  v218 = *(v167 + 8) >> 60 == 15;
  v295 = v30;
  if (v218 && (a15 & 1) == 0)
  {
    v219 = v30 + 64;
    v220 = 1 << *(v30 + 32);
    v221 = -1;
    if (v220 < 64)
    {
      v221 = ~(-1 << v220);
    }

    a7 = v221 & *(v30 + 64);
    v30 = (v220 + 63) >> 6;

    a3 = 0;
    while (a7)
    {
LABEL_188:
      v223 = __clz(__rbit64(a7)) | (a3 << 6);
      v24 = *(*(v295 + 48) + 8 * v223);
      a7 &= a7 - 1;
      v224 = *(*(v295 + 56) + 4 * v223);
      v28 = *(v298 + 2);
      a8 = *(v28 + 16);
      if (a8 >= v276)
      {
        if (!a8)
        {
          goto LABEL_241;
        }

        v227 = *(v28 + 40);
        if (v227 < v224 || v227 == v224 && *(v28 + 32) < v24)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (!*(v28 + 16))
            {
              goto LABEL_202;
            }
          }

          else
          {
            v28 = sub_1D2204854(v28);
            if (!*(v28 + 16))
            {
LABEL_202:
              __break(1u);
LABEL_203:

              goto LABEL_204;
            }
          }

          *(v28 + 32) = v24;
          *(v28 + 40) = v224;
          *(v298 + 2) = v28;
          sub_1D220FD10();
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D2195E1C(0, a8 + 1, 1, v28);
        }

        a8 = *(v28 + 16);
        v225 = *(v28 + 24);
        if (a8 >= v225 >> 1)
        {
          v28 = sub_1D2195E1C((v225 > 1), a8 + 1, 1, v28);
        }

        *(v28 + 16) = a8 + 1;
        v226 = v28 + 16 * a8;
        *(v226 + 32) = v24;
        *(v226 + 40) = v224;
        *(v298 + 2) = v28;
        sub_1D220FBE0();
      }
    }

    v28 = v296;
    while (1)
    {
      v222 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_224;
      }

      if (v222 >= v30)
      {
        goto LABEL_203;
      }

      a7 = *(v219 + 8 * v222);
      ++a3;
      if (a7)
      {
        a3 = v222;
        goto LABEL_188;
      }
    }
  }

LABEL_204:
  *&aBlock = *(v298 + 2);
  swift_bridgeObjectRetain_n();
  a8 = v297;
  sub_1D21C7E2C(&aBlock);
  if (a8)
  {
    goto LABEL_246;
  }

  v228 = aBlock;
  v229 = *(aBlock + 16);
  if (v229)
  {
    v297 = a17;
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1D21AF75C(0, v229, 0);
    v230 = aBlock;
    v231 = *(aBlock + 16);
    v232 = 40;
    v233 = v229;
    do
    {
      v234 = *(v228 + v232);
      *&aBlock = v230;
      v235 = *(v230 + 24);
      if (v231 >= v235 >> 1)
      {
        sub_1D21AF75C((v235 > 1), v231 + 1, 1);
        v230 = aBlock;
      }

      *(v230 + 16) = v231 + 1;
      *(v230 + 4 * v231 + 32) = v234;
      v232 += 16;
      ++v231;
      --v233;
    }

    while (v233);
    v298 = a16;
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1D21AF7AC(0, v229, 0);
    v236 = aBlock;
    v237 = *(aBlock + 16);
    v238 = 32;
    do
    {
      v239 = *(v228 + v238);
      *&aBlock = v236;
      v240 = *(v236 + 24);
      if (v237 >= v240 >> 1)
      {
        sub_1D21AF7AC((v240 > 1), v237 + 1, 1);
        v236 = aBlock;
      }

      *(v236 + 16) = v237 + 1;
      *(v236 + 8 * v237 + 32) = v239;
      v238 += 16;
      ++v237;
      --v229;
    }

    while (v229);

    v241 = v298(v277, v230, v236);
  }

  else
  {

    v241 = a16(v277, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  }

  v242 = v241;
  sub_1D21C3294(v290, v285, v284);

  *v248 = v242 & 1;
}

uint64_t *sub_1D21C0F9C(uint64_t *result, char **a2)
{
  v2 = result[2];
  if (v2 >> 60 != 15)
  {
    v5 = *result;
    v4 = result[1];
    v6 = *a2;
    sub_1D21A3B78(v4, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_1D2195F78(0, *(v6 + 2) + 1, 1, v6);
      *a2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D2195F78((v8 > 1), v9 + 1, 1, v6);
      *a2 = v6;
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = v5;
    sub_1D225047C();

    return sub_1D21A1F98(v4, v2);
  }

  return result;
}

uint64_t sub_1D21C10AC(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a3;
  v27 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D2252720;
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D22526F0;
  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v10;
  *(v9 + 32) = a1;
  v11 = sub_1D225052C();
  *(v9 + 96) = sub_1D2174E10(0, &qword_1EDC86998);
  *(v9 + 104) = sub_1D21C3418(&qword_1EDC86990, &qword_1EDC86998);
  *(v9 + 72) = v11;
  *(v8 + 32) = sub_1D2250C5C();
  if (v23 != 2 && (a3 & 1) != 0)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D22526E0;
    *(v12 + 56) = MEMORY[0x1E69E6530];
    *(v12 + 64) = MEMORY[0x1E69E65A8];
    *(v12 + 32) = 2;
    sub_1D2250C5C();
    MEMORY[0x1D3898510]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2250B1C();
    }

    sub_1D2250B3C();
  }

  if ((a5 & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D22526E0;
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = MEMORY[0x1E69E65A8];
    *(v13 + 32) = a4;
    sub_1D2250C5C();
    MEMORY[0x1D3898510]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D2250B1C();
    }

    sub_1D2250B3C();
  }

  v14 = *(a6 + 16);
  v15 = sub_1D2250AEC();
  v16 = [objc_opt_self() andPredicateWithSubpredicates_];

  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = *(v14 + 16);
  MEMORY[0x1EEE9AC00](v18);

  v20 = v19;
  sub_1D2250DBC();
  swift_arrayDestroy();
  if (v26)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    sub_1D21A3B78(0, 0xC000000000000000);
    sub_1D21A1ED8(0, 0xC000000000000000);
    return v27;
  }

  return result;
}

id sub_1D21C1568(void *a1, char **a2)
{
  result = [a1 contextualEmbedding];
  if (result)
  {
    v5 = result;
    v6 = sub_1D225046C();
    v8 = v7;

    v9 = [a1 identifier];
    v10 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1D2195F78(0, *(v10 + 2) + 1, 1, v10);
      *a2 = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1D2195F78((v12 > 1), v13 + 1, 1, v10);
      *a2 = v10;
    }

    *(v10 + 2) = v13 + 1;
    *&v10[8 * v13 + 32] = v9;
    sub_1D225047C();

    return sub_1D21A1ED8(v6, v8);
  }

  return result;
}

uint64_t sub_1D21C16A4()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = sub_1D22507AC();
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

uint64_t sub_1D21C17E0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = v3;
  v33 = a3;
  v36 = a2;
  v7 = sub_1D225085C();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D225087C();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v3;
  v39 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AC0);
  v13 = sub_1D2250D5C();
  if (aBlock)
  {
    v33 = aBlock;
    v36 = v4;
    v31 = v41;
    v32 = v42;
    v30 = *(v3 + 72);
    v44 = sub_1D21C33FC;
    v45 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1D22102A0;
    v43 = &block_descriptor_16;
    v14 = _Block_copy(&aBlock);

    sub_1D225086C();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D2177E64(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
    sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
    sub_1D2250EAC();
    MEMORY[0x1D38987A0](0, v12, v9, v14);
    _Block_release(v14);
    v37[1](v9, v7);
    (*(v34 + 8))(v12, v35);
LABEL_3:

    return v33;
  }

  v30 = v12;
  v16 = v37;
  v17 = v7;
  result = v36(v13);
  if (!v4)
  {
    v20 = result;
    v36 = 0;
    v21 = v19;
    v22 = v18;
    v23 = sub_1D225084C();
    v29 = &v28;
    MEMORY[0x1EEE9AC00](v23);
    *(&v28 - 6) = v5;
    *(&v28 - 5) = a1;
    v32 = v21;
    v33 = v20;
    *(&v28 - 4) = v20;
    *(&v28 - 3) = v22;
    v31 = v22;
    *(&v28 - 2) = v21;
    v24 = v36;
    sub_1D2250D4C();
    v25 = v16[1];
    v36 = v24;
    v37 = v25;
    (v25)(v9, v17);
    v29 = *(v5 + 72);
    v44 = sub_1D21C33E0;
    v45 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1D22102A0;
    v43 = &block_descriptor_13;
    v26 = _Block_copy(&aBlock);

    v27 = v30;
    sub_1D225086C();
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D2177E64(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
    sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
    sub_1D2250EAC();
    MEMORY[0x1D38987A0](0, v27, v9, v26);
    _Block_release(v26);
    (v37)(v9, v17);
    (*(v34 + 8))(v27, v35);
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D21C1D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16))
  {

    v8 = sub_1D2196D38(a2);
    if (v9)
    {
      v10 = (*(v7 + 56) + 24 * v8);
      v11 = v10[1];
      v12 = v10[2];
      *a3 = *v10;
      a3[1] = v11;
      a3[2] = v12;

      sub_1D21A3B78(v11, v12);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t sub_1D21C1E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 24);
  if (*(v7 + 16) && (result = sub_1D2176758(a2), (v8 & 1) != 0))
  {
    v9 = (*(v7 + 56) + 24 * result);
    v10 = v9[1];
    v11 = v9[2];
    *a3 = *v9;
    a3[1] = v10;
    a3[2] = v11;

    return sub_1D21A3B78(v10, v11);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t sub_1D21C1EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v55 = sub_1D225055C();
  v52 = *(v55 - 8);
  v10 = MEMORY[0x1EEE9AC00](v55);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  swift_beginAccess();
  if (*(a1[3] + 16))
  {

    sub_1D2196D38(a2);
    v16 = v15;

    if (v16)
    {
      return result;
    }
  }

  swift_beginAccess();

  sub_1D21A3B78(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = a1[3];
  a1[3] = 0x8000000000000000;
  v50 = a5;
  sub_1D21BAFEC(a3, a4, a5, a2, isUniquelyReferenced_nonNull_native);
  a1[3] = v57;
  swift_endAccess();
  v19 = v52 + 16;
  v54 = *(v52 + 16);
  v54(v14, a2, v55);
  v20 = a1[4];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  a1[4] = v20;
  v22 = a4;
  if ((v21 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_4:
  v24 = *(v20 + 16);
  v23 = *(v20 + 24);
  if (v24 >= v23 >> 1)
  {
    v20 = sub_1D2196098(v23 > 1, v24 + 1, 1, v20);
  }

  *(v20 + 16) = v24 + 1;
  v25 = *(v52 + 32);
  v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = *(v52 + 72);
  result = v25(v20 + v26 + v56 * v24, v14, v55);
  a1[4] = v20;
  v27 = v50 >> 62;
  if ((v50 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v50);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v27 != 2)
  {
    v28 = 0;
    goto LABEL_16;
  }

  v30 = *(v22 + 16);
  v29 = *(v22 + 24);
  v31 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v31)
  {
    __break(1u);
LABEL_13:
    LODWORD(v28) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_53;
    }

    v28 = v28;
  }

LABEL_16:
  v32 = a1[5];
  v31 = __OFADD__(v32, v28);
  v33 = v32 + v28;
  if (!v31)
  {
    a1[5] = v33;
    if (a1[2] >= v33)
    {
      return result;
    }

    v22 = v52 + 8;
    v52 = v26;
    v53 = v12;
    v51 = v19;
    while (1)
    {
      v20 = a1[4];
      v34 = *(v20 + 16);
      if (!v34)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v20 = sub_1D2196098(0, *(v20 + 16) + 1, 1, v20);
        a1[4] = v20;
        goto LABEL_4;
      }

      v14 = v55;
      v54(v12, v20 + v26, v55);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      a1[4] = v20;
      if (!v35 || (v34 - 1) > *(v20 + 24) >> 1)
      {
        v20 = sub_1D2196098(v35, v34, 1, v20);
        a1[4] = v20;
      }

      v36 = *v22;
      (*v22)(v20 + v26, v14);
      if (v56 > 0 || v20 + v26 >= v20 + v26 + v56 + (*(v20 + 16) - 1) * v56)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v56)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      --*(v20 + 16);
      a1[4] = v20;
      swift_beginAccess();
      v37 = sub_1D2196D38(v12);
      if ((v38 & 1) == 0)
      {
        break;
      }

      v39 = v37;
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = a1[3];
      v57 = v41;
      a1[3] = 0x8000000000000000;
      if (!v40)
      {
        sub_1D21B8F04();
        v41 = v57;
      }

      v36(*(v41 + 48) + v39 * v56, v14);
      v42 = *(v41 + 56) + 24 * v39;
      v43 = *(v42 + 8);
      v20 = *(v42 + 16);
      sub_1D22022EC(v39, v41);
      v36(v53, v14);
      a1[3] = v41;
      swift_endAccess();
      sub_1D21A3B78(v43, v20);

      sub_1D21A1ED8(v43, v20);
      v44 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        v19 = v51;
        if (v44 == 2)
        {
          v49 = *(v43 + 16);
          v48 = *(v43 + 24);
          result = sub_1D21A1ED8(v43, v20);
          v45 = v48 - v49;
          v12 = v53;
          if (__OFSUB__(v48, v49))
          {
            goto LABEL_50;
          }

          goto LABEL_35;
        }

        result = sub_1D21A1ED8(v43, v20);
        v45 = 0;
        v26 = v52;
        v12 = v53;
      }

      else
      {
        v19 = v51;
        v26 = v52;
        if (v44)
        {
          result = sub_1D21A1ED8(v43, v20);
          LODWORD(v45) = HIDWORD(v43) - v43;
          v12 = v53;
          if (__OFSUB__(HIDWORD(v43), v43))
          {
            goto LABEL_49;
          }

          v45 = v45;
        }

        else
        {
          result = sub_1D21A1ED8(v43, v20);
          v45 = BYTE6(v20);
          v12 = v53;
        }
      }

LABEL_36:
      v46 = a1[5];
      v31 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v31)
      {
        goto LABEL_48;
      }

      a1[5] = v47;
      if (a1[2] >= v47)
      {
        return result;
      }
    }

    v36(v12, v14);
    result = swift_endAccess();
    v45 = 0;
LABEL_35:
    v26 = v52;
    goto LABEL_36;
  }

  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

unint64_t sub_1D21C243C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  if (*(a1[3] + 16))
  {
    result = sub_1D2176758(a2);
    if (v11)
    {
      return result;
    }
  }

  swift_beginAccess();

  sub_1D21A3B78(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = a1[3];
  a1[3] = 0x8000000000000000;
  sub_1D21BB1E8(a3, a4, a5, a2, isUniquelyReferenced_nonNull_native);
  a1[3] = v35;
  swift_endAccess();
  v13 = a1[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  a1[4] = v13;
  if ((result & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_4:
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    result = sub_1D2195F78((v14 > 1), v15 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v15 + 1;
  *(v13 + 8 * v15 + 32) = a2;
  a1[4] = v13;
  v16 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a5);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_16;
  }

  v19 = *(a4 + 16);
  v18 = *(a4 + 24);
  v20 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v20)
  {
    __break(1u);
LABEL_13:
    LODWORD(v17) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
      goto LABEL_47;
    }

    v17 = v17;
  }

LABEL_16:
  v21 = a1[5];
  v20 = __OFADD__(v21, v17);
  v22 = v21 + v17;
  if (!v20)
  {
    a1[5] = v22;
    if (a1[2] >= v22)
    {
      return result;
    }

    while (1)
    {
      a4 = a1[4];
      a5 = *(a4 + 16);
      if (!a5)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        result = sub_1D2195F78(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        a1[4] = result;
        goto LABEL_4;
      }

      a2 = *(a4 + 32);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      a1[4] = a4;
      if (!v23 || a5 - 1 > *(a4 + 24) >> 1)
      {
        a4 = sub_1D2195F78(v23, a5, 1, a4);
        a1[4] = a4;
      }

      v24 = *(a4 + 16);
      memmove((a4 + 32), (a4 + 40), 8 * v24 - 8);
      *(a4 + 16) = v24 - 1;
      a1[4] = a4;
      swift_beginAccess();
      v13 = a1[3];
      v25 = sub_1D2176758(a2);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = v25;
      v28 = swift_isUniquelyReferenced_nonNull_native();
      a5 = a1[3];
      a1[3] = 0x8000000000000000;
      if (!v28)
      {
        sub_1D21B91AC();
      }

      v29 = v27;
      v30 = (*(a5 + 56) + 24 * v27);
      a2 = *v30;
      a4 = v30[1];
      v13 = v30[2];
      sub_1D2202610(v29, a5);
      a1[3] = a5;
      swift_endAccess();
      sub_1D21A3B78(a4, v13);

      sub_1D21A1ED8(a4, v13);
      v31 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v31 != 2)
        {
          result = sub_1D21A1ED8(a4, v13);
          goto LABEL_29;
        }

        a2 = *(a4 + 16);
        a5 = *(a4 + 24);
        result = sub_1D21A1ED8(a4, v13);
        v32 = a5 - a2;
        if (__OFSUB__(a5, a2))
        {
          goto LABEL_44;
        }
      }

      else if (v31)
      {
        a5 = HIDWORD(a4);
        result = sub_1D21A1ED8(a4, v13);
        LODWORD(v32) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_43;
        }

        v32 = v32;
      }

      else
      {
        result = sub_1D21A1ED8(a4, v13);
        v32 = BYTE6(v13);
      }

LABEL_30:
      v33 = a1[5];
      v20 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      if (v20)
      {
        goto LABEL_42;
      }

      a1[5] = v34;
      if (a1[2] >= v34)
      {
        return result;
      }
    }

    result = swift_endAccess();
LABEL_29:
    v32 = 0;
    goto LABEL_30;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D21C27D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D225087C();
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D225085C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225084C();
  sub_1D2250D4C();
  v13 = *(v10 + 8);
  v13(v12, v9);
  v16[1] = *(v3 + 72);
  aBlock[4] = a2;
  v21 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D22102A0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);

  sub_1D225086C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D2177E64(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
  sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
  sub_1D2250EAC();
  MEMORY[0x1D38987A0](0, v8, v12, v14);
  _Block_release(v14);
  v13(v12, v9);
  (*(v17 + 8))(v8, v18);
}

uint64_t sub_1D21C2AB8(void *a1)
{
  swift_beginAccess();
  a1[3] = MEMORY[0x1E69E7CC8];

  a1[4] = MEMORY[0x1E69E7CC0];

  a1[5] = 0;
  return result;
}

uint64_t sub_1D21C2B60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21C2BD0(uint64_t a1)
{
  v2 = type metadata accessor for VUIndexScanner.ObservationEmbedding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D21C2C2C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *(a1 + 16);

  if (!v8 || !*(a2 + 16))
  {
    goto LABEL_26;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  v11 = *a4;
  v12 = sub_1D2176758(v9);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = v12;
  v18 = v13;
  v19 = v11[3];

  if (v19 >= v16)
  {
    if (a3)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D21B6BD4();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_33;
  }

  sub_1D21B13BC(v16, a3 & 1);
  v20 = sub_1D2176758(v9);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_32:
    sub_1D22512AC();
    __break(1u);
LABEL_33:
    sub_1D225101C();
    MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
    sub_1D22510EC();
    MEMORY[0x1D3898450](39, 0xE100000000000000);
    sub_1D22510FC();
    __break(1u);
    return;
  }

  v17 = v20;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v24 = *a4;
  *(*a4 + 8 * (v17 >> 6) + 64) |= 1 << v17;
  *(v24[6] + 8 * v17) = v9;
  *(v24[7] + 8 * v17) = v10;
  v25 = v24[2];
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24[2] = v27;
  v28 = *(a1 + 16);
  if (v28 != 1)
  {
    v29 = 5;
    do
    {
      v30 = v29 - 4;
      if (v29 - 4 >= v28)
      {
        goto LABEL_30;
      }

      v31 = *(a2 + 16);
      if (v30 == v31)
      {
        break;
      }

      if (v30 >= v31)
      {
        goto LABEL_31;
      }

      v32 = *(a1 + 8 * v29);
      v33 = *(a2 + 8 * v29);
      v34 = *a4;
      v35 = sub_1D2176758(v32);
      v37 = v34[2];
      v38 = (v36 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        goto LABEL_28;
      }

      v40 = v35;
      v41 = v36;
      v42 = v34[3];

      if (v42 < v39)
      {
        sub_1D21B13BC(v39, 1);
        v43 = sub_1D2176758(v32);
        if ((v41 & 1) != (v44 & 1))
        {
          goto LABEL_32;
        }

        v40 = v43;
      }

      if (v41)
      {
        goto LABEL_10;
      }

      v45 = *a4;
      *(*a4 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      *(v45[6] + 8 * v40) = v32;
      *(v45[7] + 8 * v40) = v33;
      v46 = v45[2];
      v26 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v26)
      {
        goto LABEL_29;
      }

      v45[2] = v47;
      v28 = *(a1 + 16);
      v48 = v29 - 3;
      ++v29;
    }

    while (v48 != v28);
  }

LABEL_26:

  swift_bridgeObjectRelease_n();
}

void sub_1D21C3010(float *a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v2 / fmaxf(v5, 1.0);
  }
}

uint64_t sub_1D21C3048(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2990);
    v5 = sub_1D225114C();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1D21C2C2C(a1, a2, 1, &v7);
  return v7;
}

uint64_t sub_1D21C3114(uint64_t a1)
{
  if (*(v1 + 50))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1D21BEB7C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v2 | (*(v1 + 49) << 8) | *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136));
}

uint64_t sub_1D21C31BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21C322C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D21C3294(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1D21A1ED8(a2, a3);
  }

  return result;
}

uint64_t sub_1D21C32DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1D21A3B78(a2, a3);
  }

  return result;
}

void sub_1D21C33E4()
{
  v1 = *(v0 + 56);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v3;
  }
}

void sub_1D21C3400()
{
  v1 = *(v0 + 64);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 64) = v3;
  }
}

uint64_t sub_1D21C3418(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D2174E10(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D21C34FC()
{
  sub_1D21C3590();
  if (v0 <= 0x3F)
  {
    sub_1D21A54E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D21C3590()
{
  if (!qword_1EDC87238)
  {
    v0 = sub_1D2250E5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC87238);
    }
  }
}

uint64_t sub_1D21C3A50(id a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v13[0] = 0;
    a1 = a1;
    v6 = [v2 initWithPersonObservation:v5 embeddingExpiration:0 contextualEmbeddingExpiration:0 error:v13];
    if (!v6)
    {
      v7 = v13[0];
      sub_1D22502FC();

      swift_willThrow();
      return v7;
    }

    v7 = v6;
    v8 = v13[0];

LABEL_10:
    return v7;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = [v2 initWithAnimalObservation_];
LABEL_9:
    v7 = v10;
    goto LABEL_10;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v10 = [v2 initWithSceneObservation_];
    goto LABEL_9;
  }

  result = sub_1D22510FC();
  __break(1u);
  return result;
}

id sub_1D21C3C78(void *a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v71 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v80 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v62 - v15;
  v16 = [a1 faceTorsoprint];
  if (!v16 || (v17 = v16, v18 = [v16 faceprint], v17, (v19 = v18) == 0))
  {
    v19 = [a1 faceprint];
  }

  v20 = [a1 faceTorsoprint];
  v77 = v19;
  if (!v20 || (v21 = v20, v22 = [v20 torsoprint], v21, v19 = v77, (v78 = v22) == 0))
  {
    v78 = [a1 torsoprint];
  }

  if (v19)
  {
    v23 = [v19 descriptorData];
    if (v23)
    {
      v24 = v23;
      v73 = sub_1D225046C();
      v75 = v25;

      v19 = v77;
    }

    else
    {
      v73 = 0;
      v75 = 0xF000000000000000;
    }

    v67 = a1;
    v68 = v3;
    v70 = v4;
    v26 = [v19 requestRevision] & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (!v78)
    {
      sub_1D217EE2C();
      swift_allocError();
      *v61 = 1;
      swift_willThrow();

      sub_1D2176170(v76, &qword_1EC6D23C0);
      sub_1D2176170(a2, &qword_1EC6D23C0);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v67 = a1;
    v68 = v3;
    v70 = v4;
    v73 = 0;
    v26 = 0;
    v75 = 0xF000000000000000;
  }

  VUObservationRevision.init(rawValue:)(v26);
  v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D2174DA8(a2, v79, &qword_1EC6D23C0);
  v69 = a2;
  if (v19)
  {
    [v19 confidence];
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v78;
  v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v31) = v28;
  v66 = [v30 initWithFloat_];
  if (v29)
  {
    v32 = [v29 descriptorData];
    if (v32)
    {
      v33 = v32;
      v72 = sub_1D225046C();
      v74 = v34;
    }

    else
    {
      v72 = 0;
      v74 = 0xF000000000000000;
    }

    v35 = [v29 requestRevision];
  }

  else
  {
    v35 = 0;
    v72 = 0;
    v74 = 0xF000000000000000;
  }

  v62 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  sub_1D2174DA8(v76, v80, &qword_1EC6D23C0);
  v36 = v75;
  if (v29)
  {
    [v29 confidence];
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v40) = v38;
  v64 = [v39 initWithFloat_];
  if (v36 >> 60 == 15)
  {
    v63 = 0;
  }

  else
  {
    v41 = v73;
    sub_1D21A3B78(v73, v36);
    v63 = sub_1D225045C();
    sub_1D21A1F98(v41, v36);
  }

  sub_1D2174DA8(v79, v12, &qword_1EC6D23C0);
  v42 = sub_1D22504FC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v45 = v44(v12, 1, v42);
  v65 = v65;
  v46 = 0;
  if (v45 != 1)
  {
    v46 = sub_1D22504BC();
    (*(v43 + 8))(v12, v42);
  }

  v47 = v74;
  v48 = v71;
  if (v74 >> 60 == 15)
  {
    v49 = 0;
  }

  else
  {
    v50 = v72;
    sub_1D21A3B78(v72, v74);
    v49 = sub_1D225045C();
    sub_1D21A1F98(v50, v47);
  }

  sub_1D2174DA8(v80, v48, &qword_1EC6D23C0);
  v51 = v44(v48, 1, v42);
  v52 = v62;
  if (v51 == 1)
  {
    v53 = 0;
  }

  else
  {
    v54 = sub_1D22504BC();
    v55 = v48;
    v53 = v54;
    (*(v43 + 8))(v55, v42);
  }

  v56 = v64;
  v57 = v66;
  v58 = v63;
  v59 = v65;
  v3 = [v68 initWithType:0 embedding:v63 embeddingRevision:v65 embeddingExpiration:v46 contextualEmbedding:v49 contextualEmbeddingRevision:v52 contextualEmbeddingExpiration:v53 embeddingConfidence:v66 contextualEmbeddingConfidence:v64];

  sub_1D21A1F98(v72, v74);
  sub_1D21A1F98(v73, v75);

  sub_1D2176170(v76, &qword_1EC6D23C0);
  sub_1D2176170(v69, &qword_1EC6D23C0);
  sub_1D2176170(v80, &qword_1EC6D23C0);
  sub_1D2176170(v79, &qword_1EC6D23C0);
  return v3;
}

id sub_1D21C45CC(void *a1)
{
  v3 = [a1 animalprint];
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    v9 = 0xF000000000000000;
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  result = [v3 descriptorData];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_1D225046C();
  v9 = v8;

  v10 = [v4 requestRevision] & 0xFFFFFFFFFFFFFFLL;
  if (v10 != 3737841667 && v10 != 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (v4)
  {
    [v4 confidence];
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v16) = v14;
  v17 = [v15 initWithFloat_];
  if (v9 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    sub_1D21A3B78(v7, v9);
    v18 = sub_1D225045C();
    sub_1D21A1F98(v7, v9);
  }

  v19 = v12;
  v20 = v17;
  v21 = [v1 initWithType:1 embedding:v18 embeddingRevision:v19 embeddingExpiration:0 contextualEmbedding:0 contextualEmbeddingRevision:0 contextualEmbeddingExpiration:0 embeddingConfidence:v20 contextualEmbeddingConfidence:0];

  sub_1D21A1F98(v7, v9);
  return v21;
}

void sub_1D21C47CC(void *a1)
{
  v3 = [a1 sceneprints];
  if (!v3)
  {
    v11 = 0;
    v8 = 0;
    v10 = 0xF000000000000000;
    goto LABEL_8;
  }

  sub_1D2174E10(0, &qword_1EC6D2B78);
  v4 = sub_1D2250AFC();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3898A80](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = *(v4 + 32);
  }

  v3 = v5;

  v6 = [v3 descriptorData];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D225046C();
    v10 = v9;

    [v3 requestRevision];
    sub_1D21A3B78(v8, v10);
    v11 = sub_1D225045C();
    sub_1D21A1ED8(v8, v10);
LABEL_8:
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    [v1 initWithType:2 embedding:v11 embeddingRevision:v12 embeddingExpiration:0 contextualEmbedding:0 contextualEmbeddingRevision:0 contextualEmbeddingExpiration:0 embeddingConfidence:0 contextualEmbeddingConfidence:0];

    sub_1D21A1F98(v8, v10);
    return;
  }

LABEL_11:
  __break(1u);
}

id VUWClusterResult.observationIdentifier.getter()
{
  v1 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VUWClusterResult.observationIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUWClusterResult_observationIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VUWClusterResult.clusterIdentifier.getter()
{
  v1 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VUWClusterResult.clusterIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VUWClusterResult_clusterIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VUWClusterResult.isKeyFace.getter()
{
  v1 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VUWClusterResult.isKeyFace.setter(char a1)
{
  v3 = OBJC_IVAR___VUWClusterResult_isKeyFace;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1D21C5320()
{
  if ([v0 tagType] > 1)
  {
    result = sub_1D22510FC();
    __break(1u);
  }

  else
  {
    v1 = [v0 uuid];
    sub_1D225054C();

    type metadata accessor for VUStreamingGallery.Tag(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

id sub_1D21C5744(uint64_t a1, _BYTE *a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1D22503FC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v19 = *&a2[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration];
  v12 = *&a2[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 16];
  v13 = *&a2[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 24];
  v22 = *&a2[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 32];
  v23 = a2[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration + 48];
  v20 = v12;
  v21 = v13;
  type metadata accessor for VUStreamingGallery(0);
  swift_allocObject();
  v14 = VUStreamingGallery.init(with:)(&v19);
  if (v3)
  {

    (*(v11 + 8))(a1, v10);
    v15 = sub_1D2176170(v9, &qword_1EC6D2100);
    type metadata accessor for VUWStreamingGallery(v15);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v14;
    sub_1D21E0CEC(v9, v13);
    sub_1D2176170(v9, &qword_1EC6D2100);
    *&v2[OBJC_IVAR___VUWStreamingGallery_streamingGallery] = v16;
    v18.receiver = v2;
    v18.super_class = VUWStreamingGallery;
    v4 = objc_msgSendSuper2(&v18, sel_init);

    (*(v11 + 8))(a1, v10);
  }

  return v4;
}

id sub_1D21C5AB0(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for VUStreamingGallery.Tag(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = *(v2 + OBJC_IVAR___VUWStreamingGallery_streamingGallery);
  v16 = *(a1 + OBJC_IVAR___VUWObservation_vuObservation);
  if (a2)
  {

    sub_1D21C5320();
    (*(v7 + 56))(v14, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(&v24 - v13, 1, 1, v6);
  }

  v17 = sub_1D21E3AE0(v16, 0, 1, 0);
  if (v3)
  {

    return sub_1D2176170(v14, &qword_1EC6D2888);
  }

  else
  {
    v20 = v18;
    v25 = v17;
    sub_1D2174DA8(v14, v12, &qword_1EC6D2888);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_1D2176170(v12, &qword_1EC6D2888);
    }

    else
    {
      v21 = v26;
      sub_1D21C7024(v12, v26);
      if ((v20 & 1) == 0)
      {
        sub_1D21E4888(v25, v21);
      }

      sub_1D21C6FC4(v21, type metadata accessor for VUStreamingGallery.Tag);
    }

    if (*(v15 + 81) == 1 && (sub_1D21F216C() & 1) != 0)
    {
      sub_1D21EB4B0();
    }

    else
    {
    }

    sub_1D2176170(v14, &qword_1EC6D2888);
    if (v20)
    {
      sub_1D217EE2C();
      swift_allocError();
      *v22 = 4;
      return swift_willThrow();
    }

    else
    {
      v23 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      return [v23 initWithInteger_];
    }
  }
}

uint64_t sub_1D21C5F40(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = *(v2 + OBJC_IVAR___VUWStreamingGallery_streamingGallery);
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v16 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
LABEL_11:
      sub_1D21C5320();
      v17 = type metadata accessor for VUStreamingGallery.Tag(0);
      v18 = (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
      goto LABEL_15;
    }

LABEL_14:
    v19 = type metadata accessor for VUStreamingGallery.Tag(0);
    v18 = (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
LABEL_15:
    v20 = &v25;
    MEMORY[0x1EEE9AC00](v18);
    *(&v25 - 2) = v10;
    *(&v25 - 1) = v9;
    v21 = sub_1D21ADB84(sub_1D21B9D0C, (&v25 - 4), v16);

    result = sub_1D2176170(v9, &qword_1EC6D2888);
    if (!v4)
    {
      v20 = MEMORY[0x1E69E7CC0];
      v27 = MEMORY[0x1E69E7CC0];
      v22 = *(v21 + 2);
      if (v22)
      {
        v23 = 0;
        v24 = v21 + 40;
        while (v23 < *(v21 + 2))
        {
          if (*v24)
          {

            v20 = MEMORY[0x1E69E7CC0];
            goto LABEL_25;
          }

          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          MEMORY[0x1D3898510]();
          if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v26 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1D2250B1C();
          }

          ++v23;
          result = sub_1D2250B3C();
          v20 = v27;
          v24 += 16;
          if (v22 == v23)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_25:
    }

    return v20;
  }

  v11 = sub_1D2250F4C();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v27 = MEMORY[0x1E69E7CC0];

  result = sub_1D22510BC();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v26 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = v13 + 1;
        MEMORY[0x1D3898A80]();

        swift_unknownObjectRelease();
        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        v13 = v14;
      }

      while (v11 != v14);
    }

    else
    {
      v15 = a1 + 32;
      do
      {
        v15 += 8;

        sub_1D225109C();
        sub_1D22510CC();
        sub_1D22510DC();
        sub_1D22510AC();
        --v11;
      }

      while (v11);
    }

    v16 = v27;
    v4 = v26;
    if (v25)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D21C6424(void *a1, uint64_t a2)
{
  v3 = v2;

  v6 = [a1 integerValue];
  v7 = v3;
  v8 = sub_1D21E4C80(v6, a2);

  if (!v7)
  {
    result = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v10 = *(v8 + 16);
      if (v10)
      {
        v17 = MEMORY[0x1E69E7CC0];
        sub_1D22510BC();
        v11 = (v8 + 48);
        do
        {
          v12 = *(v11 - 2);
          v13 = *(v11 - 1);
          v14 = *v11;
          v11 += 24;
          v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
          [objc_allocWithZone(VUWClusterResult) initWithObservationIdentifier:v15 clusterIdentifier:v16 isKeyFace:v14];

          sub_1D225109C();
          sub_1D22510CC();
          sub_1D22510DC();
          sub_1D22510AC();
          --v10;
        }

        while (v10);

        return v17;
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

uint64_t sub_1D21C66B8(uint64_t a1, uint64_t a2, int a3)
{
  v60 = a2;
  v52 = sub_1D225055C();
  v56 = *(v52 - 8);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v53 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v47 - v8;
  v10 = type metadata accessor for VUStreamingGallery.Tag(0);
  v58 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v54 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v47 - v15;
  v17 = type metadata accessor for VUStreamingGallery.Recognition(0);
  v57 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + OBJC_IVAR___VUWObservation_vuObservation);

  v21 = sub_1D2250C0C();
  v22 = sub_1D21E6B68(v20, v21, a3, 0);

  if (!v3)
  {
    v24 = v57;
    v50 = v19;
    v51 = v17;
    v59 = v16;
    result = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v25 = v22[2];
      if (v25)
      {
        v47[1] = 0;
        v61 = MEMORY[0x1E69E7CC0];
        sub_1D22510BC();
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v47[0] = v22;
        v27 = v22 + v26;
        v57 = *(v24 + 72);
        v58 += 6;
        v28 = v55;
        v48 = (v56 + 8);
        v49 = (v56 + 32);
        v29 = v50;
        v30 = v51;
        do
        {
          v60 = v25;
          sub_1D21C6F5C(v27, v29, type metadata accessor for VUStreamingGallery.Recognition);
          v36 = *(v29 + v30[5]);
          v37 = v59;
          sub_1D2174DA8(v29 + v30[6], v59, &qword_1EC6D2888);
          if ((*v58)(v37, 1, v10) == 1)
          {
            v31 = v29;
            sub_1D2176170(v37, &qword_1EC6D2888);
            v32 = 0;
          }

          else
          {
            sub_1D21C6F5C(v37, v28, type metadata accessor for VUStreamingGallery.Tag);
            v56 = swift_getEnumCaseMultiPayload() == 1;
            sub_1D21C6FC4(v28, type metadata accessor for VUStreamingGallery.Tag);
            v38 = v54;
            sub_1D21C6F5C(v37, v54, type metadata accessor for VUStreamingGallery.Tag);
            v39 = *v49;
            v41 = v52;
            v40 = v53;
            v42 = v38;
            v31 = v50;
            (*v49)(v53, v42, v52);
            v39(v9, v40, v41);
            v43 = objc_allocWithZone(VUWTag);
            v44 = v10;
            v45 = v9;
            v46 = sub_1D225052C();
            v32 = [v43 initWithType:v56 uuid:{v46, v47[0]}];

            v9 = v45;
            v10 = v44;
            v28 = v55;
            (*v48)(v9, v41);
            v30 = v51;
            sub_1D21C6FC4(v59, type metadata accessor for VUStreamingGallery.Tag);
          }

          v33 = *(v31 + v30[7]);
          v34 = objc_allocWithZone(VUWRecognition);
          LODWORD(v35) = v36;
          [v34 initWithScore:v32 tag:v33 matchType:v35];

          sub_1D21C6FC4(v31, type metadata accessor for VUStreamingGallery.Recognition);
          sub_1D225109C();
          v29 = v31;
          sub_1D22510CC();
          sub_1D22510DC();
          sub_1D22510AC();
          v27 += v57;
          v25 = v60 - 1;
        }

        while (v60 != 1);

        return v61;
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return result;
}

uint64_t sub_1D21C6D70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = a1;

  a4(v6);

  return 1;
}

id _sSo14VUWObservationC19VisualUnderstandingEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1D21C6F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21C6FC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D21C7024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VUStreamingGallery.Tag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D21C7088(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2180);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1D21C70F8(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    v12 = [a1 integerValue];
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 100;
    if (a2)
    {
LABEL_3:
      v13 = [a2 integerValue];
      if (a3)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  v13 = 100;
  if (a3)
  {
LABEL_4:
    v14 = [a3 integerValue];
    if (a2)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v14 = 30;
  if (a2)
  {
LABEL_5:
    v15 = [a2 integerValue];
    v16 = &off_1E83FA000;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  v15 = 10;
  v16 = &off_1E83FA000;
  if (a4)
  {
LABEL_6:
    LOBYTE(a4) = [a4 v16[343]];
  }

LABEL_7:
  if (a5)
  {
    LOBYTE(a5) = [a5 v16[343]];
  }

  if (a6)
  {
    [a6 floatValue];
  }

  else
  {
    v17 = 0;
  }

  v21 = a6 == 0;
  v18 = &v6[OBJC_IVAR___VUWStreamingGalleryConfiguration_configuration];
  *v18 = v12;
  *(v18 + 1) = v13;
  *(v18 + 2) = v14;
  *(v18 + 3) = v15;
  *(v18 + 4) = 5;
  v18[40] = a4;
  v18[41] = a5;
  *(v18 + 11) = v17;
  v18[48] = a6 == 0;
  v20.receiver = v6;
  v20.super_class = VUWStreamingGalleryConfiguration;
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1D21C7264(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10, void *a11)
{
  v42 = a2;
  v43 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - v21;
  if (a1 >= 3)
  {
    result = sub_1D22510FC();
    __break(1u);
    return result;
  }

  v40 = v20;
  v45 = a7;
  v46 = v11;
  v44 = a6;
  if (a4)
  {
    v41 = [a4 integerValue];
  }

  else
  {
    v41 = 0;
  }

  v47 = a5;
  sub_1D2174DA8(a5, v22, &qword_1EC6D23C0);
  if (!a10)
  {
    v24 = 0;
    if (a8)
    {
      goto LABEL_7;
    }

LABEL_9:
    v25 = 0;
    goto LABEL_10;
  }

  [a10 floatValue];
  v24 = v23;
  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_7:
  v25 = [a8 &off_1E83FA078];
LABEL_10:
  v26 = v40;
  sub_1D2174DA8(a9, v40, &qword_1EC6D23C0);
  if (a11)
  {
    [a11 floatValue];
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = a4 == 0;
  type metadata accessor for VUObservation();
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v31 = v43;
  *(v30 + 24) = v42;
  *(v30 + 32) = v31;
  *(v30 + 40) = v41;
  *(v30 + 48) = v29;
  sub_1D21C75B4(v22, v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingExpiration);
  v32 = v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_embeddingConfidence;
  *v32 = v24;
  *(v32 + 4) = a10 == 0;
  v33 = (v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbedding);
  v34 = v45;
  *v33 = v44;
  v33[1] = v34;
  v35 = v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingRevision;
  *v35 = v25;
  *(v35 + 8) = a8 == 0;
  sub_1D21C75B4(v26, v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingExpiration);
  v36 = v30 + OBJC_IVAR____TtC19VisualUnderstanding13VUObservation_contextualEmbeddingConfidence;
  *v36 = v28;
  *(v36 + 4) = a11 == 0;
  v37 = v46;
  *&v46[OBJC_IVAR___VUWObservation_vuObservation] = v30;
  v48.receiver = v37;
  v48.super_class = VUWObservation;
  v38 = objc_msgSendSuper2(&v48, sel_init);
  sub_1D2176170(a9, &qword_1EC6D23C0);
  sub_1D2176170(v47, &qword_1EC6D23C0);
  return v38;
}

uint64_t sub_1D21C75B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

VisualUnderstanding::VUGalleryUpdateType_optional __swiftcall VUGalleryUpdateType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VUGalleryEntityUpdate.tag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VUGalleryEntityUpdate(0) + 24);

  return sub_1D21C31BC(v3, a1);
}

unint64_t sub_1D21C76F0()
{
  result = qword_1EC6D2B80;
  if (!qword_1EC6D2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2B80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VUGalleryObservationUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[24])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VUGalleryObservationUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_1D21C7814()
{
  sub_1D21A54E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D21C7908()
{
  result = type metadata accessor for VUGalleryEntityUpdate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D21C7974()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2118);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22547E0;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000001D2258090;
  *(inited + 48) = sub_1D2250C1C();
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x80000001D22580D0;
  *(inited + 72) = sub_1D2250B8C();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x80000001D22580F0;
  *(inited + 96) = sub_1D2250B8C();
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = 0x80000001D2258110;
  *(inited + 120) = sub_1D2250B8C();
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000001D2258130;
  *(inited + 144) = sub_1D2250B5C();
  v1 = sub_1D21A1EA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2120);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1D21C7ACC()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D21C7B9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1D2203350(a1);
    return a2;
  }

  else
  {

    return sub_1D2203574(a1, a2);
  }
}

uint64_t sub_1D21C7BF0()
{

  v1 = OBJC_IVAR____TtC19VisualUnderstanding23VUIndexStreamingScanner_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VUIndexStreamingScanner()
{
  result = qword_1EDC873A8;
  if (!qword_1EDC873A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21C7CE8()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D21C7DC8(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v3 + 3) >> 1)
  {
    if (*(v3 + 2) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 2);
    }

    result = sub_1D2195E1C(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_1D21C7E2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8A70(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D21C7E98(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D21C7E98(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D225124C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D2250B2C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D21C8018(v7, v8, a1, v4);
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
    return sub_1D21C7F90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D21C7F90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = v6;
    v8 = v5;
    while (1)
    {
      v9 = *(v8 + 8);
      v10 = *(v8 - 8);
      if (v10 >= v9 && (v10 != v9 || *(v8 - 16) >= *v8))
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v12 = *v8;
      *v8 = *(v8 - 16);
      *(v8 - 8) = v9;
      *(v8 - 16) = v12;
      v8 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D21C8018(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v96 = *v96;
    if (!v96)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_112;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      ++v8;
      goto LABEL_35;
    }

    v12 = *a3 + 16 * v11;
    v13 = *(v12 + 8);
    v14 = *a3 + 16 * v8;
    v15 = *(v14 + 8);
    if (v15 >= v13)
    {
      v16 = *v14 < *v12;
      if (v15 != v13)
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }

    v8 += 2;
    if (v10 + 2 < v6)
    {
      v11 = v6 - 1;
      v17 = v14 + 24;
      v18 = v14 + 24;
      do
      {
        v19 = *(v18 + 16);
        v18 += 16;
        v20 = *v17 == v19;
        if (*v17 < v19)
        {
          if (!v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20)
        {
          if (((v16 ^ (*(v17 - 8) >= *(v17 + 8))) & 1) == 0)
          {
            v11 = v8 - 1;
            if (!v16)
            {
              goto LABEL_35;
            }

LABEL_23:
            if (v8 >= v10)
            {
              if (v10 <= v11)
              {
                v21 = 16 * v8 - 16;
                v22 = 16 * v10;
                v23 = v8;
                v24 = v10;
                do
                {
                  if (v24 != --v23)
                  {
                    v26 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_145;
                    }

                    v27 = (v26 + v22);
                    v28 = (v26 + v21);
                    v29 = *(v26 + v22);
                    v30 = *(v26 + v22 + 8);
                    if (v22 != v21 || v27 >= v28 + 1)
                    {
                      *v27 = *v28;
                    }

                    v25 = v26 + v21;
                    *v25 = v29;
                    *(v25 + 8) = v30;
                  }

                  ++v24;
                  v21 -= 16;
                  v22 += 16;
                }

                while (v24 < v23);
                v6 = a3[1];
              }

              goto LABEL_35;
            }

LABEL_141:
            __break(1u);
LABEL_142:
            result = sub_1D21C88C8(v9);
            v9 = result;
LABEL_112:
            v88 = v9 + 16;
            v89 = *(v9 + 2);
            if (v89 >= 2)
            {
              while (*a3)
              {
                v90 = &v9[16 * v89];
                v91 = *v90;
                v92 = &v88[2 * v89];
                v93 = v92[1];
                sub_1D21C8618((*a3 + 16 * *v90), (*a3 + 16 * *v92), (*a3 + 16 * v93), v96);
                if (v4)
                {
                }

                if (v93 < v91)
                {
                  goto LABEL_134;
                }

                if (v89 - 2 >= *v88)
                {
                  goto LABEL_135;
                }

                *v90 = v91;
                *(v90 + 1) = v93;
                v94 = *v88 - v89;
                if (*v88 < v89)
                {
                  goto LABEL_136;
                }

                v89 = *v88 - 1;
                result = memmove(v92, v92 + 2, 16 * v94);
                *v88 = v89;
                if (v89 <= 1)
                {
                }
              }

              goto LABEL_146;
            }
          }
        }

        else if (v16)
        {
          v11 = v8 - 1;
          goto LABEL_23;
        }

        ++v8;
        v17 = v18;
      }

      while (v6 != v8);
      v8 = v6;
    }

    if (v16)
    {
      goto LABEL_23;
    }

LABEL_35:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_138;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_139;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v8 < v10)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2195E30(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1D2195E30((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_147;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_77:
          if (v50)
          {
            goto LABEL_125;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_128;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_132;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_91:
        if (v68)
        {
          goto LABEL_127;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_130;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_98:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_1D21C8618((*a3 + 16 * v85), (*a3 + 16 * *&v9[16 * v46 + 32]), (*a3 + 16 * v86), v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D21C88C8(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_122;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1D21C883C(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_123;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_124;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_126;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_129;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_133;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_110;
    }
  }

  v31 = *a3;
  v32 = *a3 + 16 * v8;
  v33 = v10 - v8;
LABEL_45:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 8);
    v37 = *(v35 - 8);
    if (v37 >= v36 && (v37 != v36 || *(v35 - 16) >= *v35))
    {
LABEL_44:
      ++v8;
      v32 += 16;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_45;
      }

      v8 = v6;
      goto LABEL_57;
    }

    if (!v31)
    {
      break;
    }

    v39 = *v35;
    *v35 = *(v35 - 16);
    *(v35 - 8) = v36;
    *(v35 - 16) = v39;
    v35 -= 16;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_44;
    }
  }

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
  return result;
}

uint64_t sub_1D21C8618(float *__dst, float *__src, _OWORD *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = v6[2];
      v19 = v4[2];
      if (v19 >= v18 && (v19 != v18 || *v4 >= *v6))
      {
        break;
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v21 = 4 * v13;
  if (a4 != __src || &__src[v21] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v21];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v22 = v6 - 4;
    --v5;
    do
    {
      v23 = v5 + 1;
      v24 = *(v15 - 2);
      v25 = *(v6 - 2);
      if (v25 < v24 || ((v26 = v15 - 16, v25 == v24) ? (v27 = *v22 < *(v15 - 2)) : (v27 = 0), v27))
      {
        if (v23 != v6)
        {
          *v5 = *v22;
        }

        if (v15 <= v4 || (v6 -= 4, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v23 != v15)
      {
        *v5 = *v26;
      }

      --v5;
      v15 -= 16;
    }

    while (v26 > v4);
    v15 = v26;
  }

LABEL_43:
  v28 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v28))
  {
    memmove(v6, v4, v28);
  }

  return 1;
}

uint64_t sub_1D21C883C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D21C88C8(v3);
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

char *sub_1D21C88DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2358);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1D21C89E0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D21C8D88(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D21C8BC4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D21C8D88(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1D21C89E0(v11, v6, a2, a1);

    MEMORY[0x1D3899640](v11, -1, -1);
  }

  return v9;
}

uint64_t sub_1D21C8D88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 8 * v31);
      result = sub_1D225131C();
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 8 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1D21C9068(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 8 * (v12 | (v6 << 6)));
      result = sub_1D225131C();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 8 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 8 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D21C9068(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2478);
  result = sub_1D2250FFC();
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
    result = sub_1D225131C();
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

uint64_t sub_1D21C9254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24E0);
  result = sub_1D2250FFC();
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
    sub_1D225132C();

    sub_1D22509EC();
    result = sub_1D225137C();
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

uint64_t sub_1D21C9478(int a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, char *, char *), uint64_t a9)
{
  v186 = a8;
  v190 = a7;
  v194 = a6;
  v198 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v193 = &v178 - v13;
  v14 = *(v9 + 16);
  result = swift_beginAccess();
  v16 = *(v14 + 24);
  if (!*(v16 + 16))
  {
    return result;
  }

  result = sub_1D2176DFC(a1);
  if ((v17 & 1) == 0)
  {
    return result;
  }

  v203 = *(*(v16 + 56) + 8 * result);
  v18 = *(v203 + 16);
  v19 = *a2;
  if (v19 == 2 || (v19 & 1) != 0)
  {
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(a2 + 1);
  v210 = v20;
  if (v20)
  {
    v21 = v18;
    v22 = *(v20 + 16);

    if (v22)
    {
      sub_1D2174DA8(&v210, v205, &qword_1EC6D2B90);
      v23 = sub_1D2206838(v21);

      v24 = sub_1D2206838(v20);
      sub_1D2176170(&v210, &qword_1EC6D2B90);
      v25 = sub_1D21C8BC4(v24, v23);

      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = sub_1D21F7F20(*(v25 + 16), 0);
        v28 = sub_1D21F8ABC(v205, v27 + 4, v26, v25);
        sub_1D217CF78();
        if (v28 != v26)
        {
LABEL_187:
          __break(1u);
          goto LABEL_188;
        }

        v18 = v27;
        v29 = *(a2 + 2);
        if (!v29)
        {
          goto LABEL_25;
        }
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
        v29 = *(a2 + 2);
        if (!v29)
        {
LABEL_25:
          v36 = v203;
          goto LABEL_26;
        }
      }
    }

    else
    {
      v18 = v21;
      v29 = *(a2 + 2);
      if (!v29)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {

    v29 = *(a2 + 2);
    if (!v29)
    {
      goto LABEL_25;
    }
  }

  if (!*(v29 + 16))
  {
    goto LABEL_25;
  }

  v30 = sub_1D2206838(v18);

  v31 = sub_1D2206838(v29);

  if (*(v31 + 16) > *(v30 + 16) >> 3)
  {
    v32 = sub_1D2203574(v31, v30);

    v33 = *(v32 + 16);
    if (v33)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v205[0] = v30;
  sub_1D2203350(v31);

  v32 = v205[0];
  v33 = *(v205[0] + 16);
  if (!v33)
  {
LABEL_24:

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

LABEL_21:
  v34 = sub_1D21F7F20(v33, 0);
  v35 = sub_1D21F8ABC(v205, v34 + 4, v33, v32);
  sub_1D217CF78();
  if (v35 == v33)
  {
    v36 = v203;
    v18 = v34;
LABEL_26:
    v37 = a2[32];
    LODWORD(v199) = a1;
    v200 = v14;
    if ((v37 & 1) == 0)
    {
      v38 = *(v18 + 16);
      if (v38)
      {
        v39 = *(a2 + 3);
        v202 = v18;
        swift_beginAccess();
        v40 = 0;
        v41 = 0;
        v42 = MEMORY[0x1E69E7CC0];
        v204 = v39;
        while (1)
        {
          v43 = *(v36 + 56);
          if (v41 >= *(v43 + 16))
          {
            goto LABEL_179;
          }

          v44 = *(v18 + 32 + 8 * v41);
          v45 = v43 + v40;
          if (*(v45 + 40) == 1)
          {
            if (v39 == -1)
            {
              goto LABEL_34;
            }
          }

          else if (*(v45 + 32) == v39)
          {
LABEL_34:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v205[0] = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D21AF860(0, *(v42 + 16) + 1, 1);
              v36 = v203;
              v42 = v205[0];
            }

            v48 = *(v42 + 16);
            v47 = *(v42 + 24);
            if (v48 >= v47 >> 1)
            {
              sub_1D21AF860((v47 > 1), v48 + 1, 1);
              v36 = v203;
              v42 = v205[0];
            }

            *(v42 + 16) = v48 + 1;
            v49 = v42 + 16 * v48;
            *(v49 + 32) = v41;
            *(v49 + 40) = v44;
            v39 = v204;
          }

          ++v41;
          v40 += 16;
          if (v38 == v41)
          {
            goto LABEL_40;
          }
        }
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_40:

      v50 = *(v42 + 16);
      if (v50)
      {
        v205[0] = MEMORY[0x1E69E7CC0];
        sub_1D21AF7AC(0, v50, 0);
        v51 = v205[0];
        v52 = *(v205[0] + 16);
        v53 = 40;
        do
        {
          v54 = *(v42 + v53);
          v205[0] = v51;
          v55 = *(v51 + 24);
          if (v52 >= v55 >> 1)
          {
            sub_1D21AF7AC((v55 > 1), v52 + 1, 1);
            v51 = v205[0];
          }

          *(v51 + 16) = v52 + 1;
          *(v51 + 8 * v52 + 32) = v54;
          v53 += 16;
          ++v52;
          --v50;
        }

        while (v50);
        v56 = v51;

        v18 = v56;
        v36 = v203;
      }

      else
      {

        v18 = MEMORY[0x1E69E7CC0];
      }
    }

    v57 = *(v18 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    v202 = v18;
    v197 = v57;
    if (v57)
    {
      v59 = 0;
      v60 = v18 + 32;
      while (v59 < *(v18 + 16))
      {
        v61 = *(v36 + 16);
        v62 = *(v61 + 16);
        if (v62)
        {
          v63 = 0;
          v64 = v61 + 32;
          while (*(v64 + 8 * v63) != *(v60 + 8 * v59))
          {
            if (v62 == ++v63)
            {
              goto LABEL_50;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1D2195F78(0, *(v58 + 2) + 1, 1, v58);
          }

          v66 = *(v58 + 2);
          v65 = *(v58 + 3);
          v18 = v202;
          v57 = v197;
          if (v66 >= v65 >> 1)
          {
            v67 = sub_1D2195F78((v65 > 1), v66 + 1, 1, v58);
            v18 = v202;
            v58 = v67;
            v57 = v197;
          }

          *(v58 + 2) = v66 + 1;
          *&v58[8 * v66 + 32] = v63;
          v36 = v203;
        }

LABEL_50:
        if (++v59 == v57)
        {
          goto LABEL_61;
        }
      }

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
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

LABEL_61:
    v68 = *(v58 + 2);
    if (v68)
    {
      v208 = MEMORY[0x1E69E7CC0];
      sub_1D21AF840(0, v68, 0);
      v69 = v208;
      v70 = v203;
      swift_beginAccess();
      v71 = 0;
      do
      {
        v72 = *&v58[8 * v71 + 32];
        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_174;
        }

        v73 = *(v70 + 24);
        if (v72 >= *(v73 + 16))
        {
          goto LABEL_175;
        }

        v74 = v73 + 16 * v72;
        v75 = *(v74 + 32);
        v76 = *(v74 + 40);
        sub_1D21A3B64(v75, v76);
        v208 = v69;
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1D21AF840((v77 > 1), v78 + 1, 1);
          v70 = v203;
          v69 = v208;
        }

        ++v71;
        *(v69 + 16) = v78 + 1;
        v79 = v69 + 16 * v78;
        *(v79 + 32) = v75;
        *(v79 + 40) = v76;
      }

      while (v68 != v71);
      v207 = MEMORY[0x1E69E7CC0];
      sub_1D21AF840(0, v68, 0);
      v80 = v203;
      v81 = v207;
      swift_beginAccess();
      v82 = v81;
      v83 = 32;
      do
      {
        v84 = *&v58[v83];
        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_176;
        }

        v85 = v82;
        v86 = *(v80 + 40);
        if (v84 >= *(v86 + 16))
        {
          goto LABEL_177;
        }

        v87 = v86 + 16 * v84;
        v88 = *(v87 + 32);
        v89 = *(v87 + 40);
        sub_1D21A3B64(v88, v89);
        v82 = v85;
        v207 = v85;
        v90 = *(v85 + 16);
        v91 = *(v82 + 24);
        if (v90 >= v91 >> 1)
        {
          sub_1D21AF840((v91 > 1), v90 + 1, 1);
          v80 = v203;
          v82 = v207;
        }

        *(v82 + 16) = v90 + 1;
        v92 = v82 + 16 * v90;
        *(v92 + 32) = v88;
        *(v92 + 40) = v89;
        v83 += 8;
        --v68;
      }

      while (v68);
      v201 = v82;
    }

    else
    {

      v69 = MEMORY[0x1E69E7CC0];
      v201 = MEMORY[0x1E69E7CC0];
    }

    v93 = *(v200 + 24);
    if (!*(v93 + 16) || (v94 = sub_1D2176DFC(v199), (v95 & 1) == 0) || !v197)
    {
LABEL_166:
    }

    v181 = a9;
    v96 = *(*(v93 + 56) + 8 * v94);
    v97 = v202;
    v183 = v202 + 32;
    v182 = v194 & ~(v194 >> 63);
    v180 = v69 + 32;
    v179 = v201 + 32;

    v98 = 0;
    v189 = v96;
    v185 = v69;
    while (1)
    {
      if (v98 >= *(v97 + 16))
      {
        goto LABEL_186;
      }

      v99 = *(v183 + 8 * v98);
      type metadata accessor for MinHeap();
      inited = swift_initStackObject();
      v101 = MEMORY[0x1E69E7CC0];
      *(inited + 16) = MEMORY[0x1E69E7CC0];
      v102 = sub_1D2195E1C(0, v182, 0, v101);
      v204 = inited;
      *(inited + 16) = v102;
      v103 = v96[2];
      v104 = *(v103 + 16);
      v192 = v98;
      v200 = v104;
      v195 = v99;
      if (v104)
      {
        break;
      }

      v161 = v102;
LABEL_151:
      v206 = v161;
      swift_bridgeObjectRetain_n();
      v162 = v196;
      sub_1D21C7E2C(&v206);
      v163 = &v209;
      v196 = v162;
      if (v162)
      {
        goto LABEL_190;
      }

      v164 = v206;
      v165 = *(v206 + 2);
      if (v165)
      {
        v204 = v161;
        v206 = MEMORY[0x1E69E7CC0];
        sub_1D21AF75C(0, v165, 0);
        v166 = v206;
        v167 = *(v206 + 2);
        v168 = 40;
        v169 = v165;
        do
        {
          v170 = *&v164[v168];
          v206 = v166;
          v171 = *(v166 + 3);
          if (v167 >= v171 >> 1)
          {
            sub_1D21AF75C((v171 > 1), v167 + 1, 1);
            v166 = v206;
          }

          *(v166 + 2) = v167 + 1;
          *&v166[4 * v167 + 32] = v170;
          v168 += 16;
          ++v167;
          --v169;
        }

        while (v169);
        v206 = MEMORY[0x1E69E7CC0];
        sub_1D21AF7AC(0, v165, 0);
        v172 = v206;
        v173 = *(v206 + 2);
        v174 = 32;
        do
        {
          v175 = *&v164[v174];
          v206 = v172;
          v176 = *(v172 + 3);
          if (v173 >= v176 >> 1)
          {
            sub_1D21AF7AC((v176 > 1), v173 + 1, 1);
            v172 = v206;
          }

          *(v172 + 2) = v173 + 1;
          *&v172[8 * v173 + 32] = v175;
          v174 += 16;
          ++v173;
          --v165;
        }

        while (v165);

        v96 = v189;
      }

      else
      {

        v166 = MEMORY[0x1E69E7CC0];
        v172 = MEMORY[0x1E69E7CC0];
      }

      v177 = v186(v195, v166, v172);

      if (v177)
      {
        v98 = v192 + 1;
        v97 = v202;
        if (v192 + 1 != v197)
        {
          continue;
        }
      }

LABEL_172:

      goto LABEL_166;
    }

    v199 = v103 + 32;

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v105 = 0;
    v188 = v180 + 16 * v98;
    v187 = (v179 + 16 * v98);
    v106 = v201;
    v191 = v103;
    while (1)
    {
      if (v105 >= *(v103 + 16))
      {
        goto LABEL_178;
      }

      v107 = *(v199 + 8 * v105);
      if (v99 != v107)
      {
        break;
      }

LABEL_83:
      if (++v105 == v200)
      {

        v161 = *(v204 + 16);
        goto LABEL_151;
      }
    }

    if ((v198 & 0x100) != 0)
    {
      v111 = v96[9];
      if (*(v111 + 16) && (v112 = sub_1D2176758(*(v199 + 8 * v105)), (v113 & 1) != 0))
      {
        v114 = v112;
        v115 = *(v111 + 56);
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
        v117 = *(v116 - 8);
        v118 = v115 + *(v117 + 72) * v114;
        v103 = v191;
        v119 = v193;
        sub_1D2174DA8(v118, v193, &qword_1EC6D2968);
        (*(v117 + 56))(v119, 0, 1, v116);
        v96 = v189;
      }

      else
      {
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
        v119 = v193;
        (*(*(v123 - 8) + 56))(v193, 1, 1, v123);
      }

      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
      if ((*(*(v124 - 8) + 48))(v119, 1, v124))
      {
        sub_1D2176170(v119, &qword_1EC6D2B88);
        v106 = v201;
LABEL_100:
        v99 = v195;
        goto LABEL_83;
      }

      v125 = v119;
      v126 = *(v119 + *(v124 + 48));
      sub_1D2176170(v125, &qword_1EC6D2B88);
      v106 = v201;
      if (v126)
      {
        goto LABEL_100;
      }
    }

    if (v98 >= *(v185 + 16))
    {
      goto LABEL_180;
    }

    v108 = *(v188 + 8);
    v109 = 0.0;
    if (v108 >> 60 == 15)
    {
      v110 = 1;
    }

    else
    {
      v120 = v96[3];
      if (v105 >= *(v120 + 16))
      {
        goto LABEL_182;
      }

      v121 = v120 + 16 * v105;
      v122 = *(v121 + 40);
      if (v122 >> 60 == 15)
      {
        v110 = 1;
        v106 = v201;
        v98 = v192;
      }

      else
      {
        v127 = *v188;
        v128 = *(v121 + 32);
        v129 = *(v190 + 48);
        v130 = *(v190 + 56);
        sub_1D21A3B64(*v188, *(v188 + 8));
        sub_1D21A3B64(v128, v122);
        v131 = sub_1D223EDC0(v127, v108, v128, v122, v129, v130);
        if (!*(v131 + 2))
        {
          goto LABEL_189;
        }

        v109 = v131[8];

        sub_1D21A1F98(v127, v108);
        sub_1D21A1F98(v128, v122);
        v110 = 0;
        v106 = v201;
        v98 = v192;
      }
    }

    if (v98 >= *(v106 + 16))
    {
      goto LABEL_181;
    }

    v132 = v187[1];
    if (v132 >> 60 != 15)
    {
      v133 = v96[5];
      if (v105 >= *(v133 + 16))
      {
        goto LABEL_183;
      }

      v134 = v133 + 16 * v105;
      v135 = *(v134 + 40);
      v106 = v201;
      if (v135 >> 60 != 15)
      {
        v136 = *v187;
        v137 = *(v134 + 32);
        v138 = *(v190 + 48);
        v184 = *(v190 + 56);
        sub_1D21A3B64(v136, v132);
        sub_1D21A3B64(v137, v135);
        v139 = sub_1D223EDC0(v136, v132, v137, v135, v138, v184);
        if (*(v139 + 2))
        {
          v140 = v139[8];
          sub_1D21A1F98(v136, v132);
          sub_1D21A1F98(v137, v135);

          if ((v110 & 1) == 0)
          {
            if (((v109 + v140) * 0.5) < v109)
            {
              v140 = v109;
            }

            else
            {
              v140 = (v109 + v140) * 0.5;
            }
          }

          v106 = v201;
          goto LABEL_117;
        }

        sub_1D21A1F98(v136, v132);
        sub_1D21A1F98(v137, v135);

        v106 = v201;
      }
    }

    if (v110)
    {
      v140 = 0.0;
    }

    else
    {
      v140 = v109;
    }

LABEL_117:
    v103 = v191;
    v141 = *(v204 + 16);
    v142 = *(v141 + 2);
    if (v142 < v194)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_1D2195E1C(0, v142 + 1, 1, v141);
      }

      v144 = *(v141 + 2);
      v143 = *(v141 + 3);
      if (v144 >= v143 >> 1)
      {
        v141 = sub_1D2195E1C((v143 > 1), v144 + 1, 1, v141);
      }

      *(v141 + 2) = v144 + 1;
      v145 = &v141[16 * v144];
      *(v145 + 4) = v107;
      *(v145 + 10) = v140;
      *(v204 + 16) = v141;
      v146 = (v144 - 1) / 2;
      v147 = *(v141 + 2);
      if (v146 < v147)
      {
        while (v144 < v147)
        {
          v149 = v146;
          v150 = 16 * v146;
          v151 = &v141[16 * v146 + 32];
          v152 = *v151;
          v153 = *(v151 + 8);
          v154 = &v141[16 * v144 + 32];
          v155 = *v154;
          v156 = *(v154 + 8);
          if (v156 >= v153 && (v156 != v153 || v155 >= v152))
          {
            v106 = v201;
            v98 = v192;
            v99 = v195;
            v96 = v189;
            v103 = v191;
            goto LABEL_83;
          }

          if (v149 != v144)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v141 = sub_1D2204854(v141);
            }

            v158 = *(v141 + 2);
            if (v149 >= v158)
            {
              goto LABEL_170;
            }

            v159 = &v141[v150 + 32];
            *v159 = v155;
            *(v159 + 2) = v156;
            if (v144 >= v158)
            {
              goto LABEL_171;
            }

            v148 = &v141[16 * v144 + 32];
            *v148 = v152;
            *(v148 + 8) = v153;
            *(v204 + 16) = v141;
          }

          v146 = (v149 - 1) / 2;
          v147 = *(v141 + 2);
          v144 = v149;
          if (v146 >= v147)
          {
            goto LABEL_168;
          }
        }
      }

      else
      {
LABEL_168:
        __break(1u);
      }

      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    if (!v142)
    {
      goto LABEL_184;
    }

    v160 = *(v141 + 10);
    v98 = v192;
    v99 = v195;
    if (v160 < v140 || v160 == v140 && *(v141 + 4) < v107)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (!*(v141 + 2))
        {
          goto LABEL_185;
        }
      }

      else
      {
        v141 = sub_1D2204854(v141);
        if (!*(v141 + 2))
        {
          goto LABEL_185;
        }
      }

      *(v141 + 4) = v107;
      *(v141 + 10) = v140;
      *(v204 + 16) = v141;
      sub_1D220FD10();
      v106 = v201;
    }

    v96 = v189;
    goto LABEL_83;
  }

LABEL_188:
  __break(1u);
LABEL_189:

  __break(1u);
LABEL_190:

  __break(1u);
  return result;
}

uint64_t sub_1D21CA89C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(v1 + 16);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v9 + 32;
    while (*(v12 + 8 * v11) != a1)
    {
      if (v10 == ++v11)
      {
        goto LABEL_7;
      }
    }

    sub_1D21F4600(v11);
    swift_beginAccess();
    sub_1D21F4688(v11, &v15);
    swift_endAccess();
    sub_1D21A1F98(v15, *(&v15 + 1));
    swift_beginAccess();
    sub_1D21F4714(v11, v8);
    sub_1D2176170(v8, &qword_1EC6D23C0);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F4688(v11, &v15);
    swift_endAccess();
    sub_1D21A1F98(v15, *(&v15 + 1));
    swift_beginAccess();
    sub_1D21F4714(v11, v8);
    sub_1D2176170(v8, &qword_1EC6D23C0);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F4858(v11);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F48F4(v11);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F48F4(v11);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F4858(v11);
    swift_endAccess();
    swift_beginAccess();
    sub_1D21F4858(v11);
    swift_endAccess();
  }

LABEL_7:
  swift_beginAccess();
  sub_1D21F3FEC(a1, v5);
  sub_1D2176170(v5, &qword_1EC6D2B88);
  return swift_endAccess();
}

uint64_t sub_1D21CABAC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v19 - v6;
  v8 = v1[2];
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = v8 + 32;
    while (*(v12 + 8 * v11) != a1)
    {
      ++v11;
      v10 += 2;
      if (v9 == v11)
      {
        return result;
      }
    }

    swift_beginAccess();
    v13 = v1[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1[5] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1D22048B8(v13);
      v1[5] = v13;
    }

    if (v11 >= v13[2])
    {
      __break(1u);
    }

    else
    {
      v15 = &v13[v10];
      v16 = v13[v10 + 4];
      v17 = v15[5];
      *(v15 + 2) = xmmword_1D2253ED0;
      v1[5] = v13;
      swift_endAccess();
      sub_1D21A1F98(v16, v17);
      v18 = sub_1D22504FC();
      (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
      swift_beginAccess();
      v13 = v1[6];
      result = swift_isUniquelyReferenced_nonNull_native();
      v1[6] = v13;
      if (result)
      {
        goto LABEL_10;
      }
    }

    result = sub_1D22048A4(v13);
    v13 = result;
    v1[6] = result;
LABEL_10:
    if (v11 >= v13[2])
    {
      __break(1u);
    }

    else
    {
      sub_1D21A6488(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, &qword_1EC6D23C0);
      v1[6] = v13;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D21CADDC()
{

  return v0;
}

uint64_t sub_1D21CAE4C()
{
  sub_1D21CADDC();

  return swift_deallocClassInstance();
}

void sub_1D21CAE80(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v114 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C0);
  v109 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v112 = &v107 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v120 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v119 = &v107 - v13;
  v108 = v3;
  if (a1 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2250F4C())
  {
    v123 = a1 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v15 = 0;
    v110 = a1 & 0xFFFFFFFFFFFFFF8;
    v121 = i;
    v122 = a1;
    while (1)
    {
      if (v123)
      {
        v16 = MEMORY[0x1D3898A80](v15, a1);
      }

      else
      {
        if (v15 >= *(v110 + 16))
        {
          goto LABEL_79;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 type];
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_76;
      }

      v20 = v19;
      if (v19 > 0xFF)
      {
        goto LABEL_77;
      }

      if (!*(*(v4 + 24) + 16) || (sub_1D2176DFC(v19), (v21 & 1) == 0))
      {
        type metadata accessor for VUIndexStreamingStore.ObservationSet();
        a1 = swift_allocObject();
        v22 = MEMORY[0x1E69E7CC0];
        *(a1 + 16) = MEMORY[0x1E69E7CC0];
        *(a1 + 24) = v22;
        *(a1 + 32) = v22;
        *(a1 + 40) = v22;
        *(a1 + 48) = v22;
        *(a1 + 56) = v22;
        *(a1 + 64) = v22;
        *(a1 + 72) = MEMORY[0x1E69E7CC8];
        *(a1 + 80) = v22;
        *(a1 + 88) = v22;
        *(a1 + 96) = v22;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = *(v4 + 24);
        v24 = v124;
        *(v4 + 24) = 0x8000000000000000;
        v25 = sub_1D2176DFC(v20);
        v27 = v24[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_78;
        }

        v31 = v26;
        if (v24[3] >= v30)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_20;
          }

          v34 = v25;
          sub_1D21B79B0();
          v25 = v34;
          v33 = v124;
          if ((v31 & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_21:
          *(v33[7] + 8 * v25) = a1;
        }

        else
        {
          sub_1D21B2A98(v30, isUniquelyReferenced_nonNull_native);
          v25 = sub_1D2176DFC(v20);
          if ((v31 & 1) != (v32 & 1))
          {
            sub_1D22512AC();
            __break(1u);
            return;
          }

LABEL_20:
          v33 = v124;
          if (v31)
          {
            goto LABEL_21;
          }

LABEL_23:
          v33[(v25 >> 6) + 8] |= 1 << v25;
          *(v33[6] + v25) = v20;
          *(v33[7] + 8 * v25) = a1;
          v35 = v33[2];
          v29 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v29)
          {
            goto LABEL_80;
          }

          v33[2] = v36;
        }

        *(v4 + 24) = v33;
        swift_endAccess();
        *(v4 + 16) = v114;

        i = v121;
        a1 = v122;
      }

      v37 = *(v4 + 24);
      if (*(v37 + 16) && (v38 = sub_1D2176DFC(v20), (v39 & 1) != 0))
      {
        v40 = *(*(v37 + 56) + 8 * v38);

        v41 = [v17 identifier];
        v42 = [v17 embedding];
        v111 = v15 + 1;
        if (v42)
        {
          v43 = v42;
          v44 = sub_1D225046C();
          v117 = v45;
          v118 = v44;
        }

        else
        {
          v117 = 0xF000000000000000;
          v118 = 0;
        }

        v46 = sub_1D22504FC();
        v47 = *(*(v46 - 8) + 56);
        v47(v119, 1, 1, v46);
        v48 = [v17 contextualEmbedding];
        if (v48)
        {
          v49 = v48;
          v50 = sub_1D225046C();
          v115 = v51;
          v116 = v50;
        }

        else
        {
          v115 = 0xF000000000000000;
          v116 = 0;
        }

        v47(v120, 1, 1, v46);
        [v17 confidence];
        v53 = v52;
        v54 = v40[2];
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v40[2] = v54;
        if ((v55 & 1) == 0)
        {
          v54 = sub_1D2195F78(0, *(v54 + 2) + 1, 1, v54);
          v40[2] = v54;
        }

        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        if (v57 >= v56 >> 1)
        {
          v54 = sub_1D2195F78((v56 > 1), v57 + 1, 1, v54);
        }

        *(v54 + 2) = v57 + 1;
        *&v54[8 * v57 + 32] = v41;
        v40[2] = v54;
        swift_beginAccess();
        v58 = v40[3];
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v40[3] = v58;
        if ((v59 & 1) == 0)
        {
          v58 = sub_1D2196230(0, v58[2] + 1, 1, v58);
          v40[3] = v58;
        }

        v61 = v58[2];
        v60 = v58[3];
        if (v61 >= v60 >> 1)
        {
          v58 = sub_1D2196230((v60 > 1), v61 + 1, 1, v58);
        }

        v58[2] = v61 + 1;
        v62 = &v58[2 * v61];
        v64 = v117;
        v63 = v118;
        v62[4] = v118;
        v62[5] = v64;
        v40[3] = v58;
        swift_endAccess();
        sub_1D2174DA8(v119, v112, &qword_1EC6D23C0);
        swift_beginAccess();
        v65 = v40[4];
        sub_1D21A3B64(v63, v64);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v40[4] = v65;
        if ((v66 & 1) == 0)
        {
          v65 = sub_1D219620C(0, v65[2] + 1, 1, v65);
          v40[4] = v65;
        }

        v68 = v65[2];
        v67 = v65[3];
        if (v68 >= v67 >> 1)
        {
          v65 = sub_1D219620C(v67 > 1, v68 + 1, 1, v65);
        }

        v65[2] = v68 + 1;
        v69 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v70 = *(v109 + 72);
        sub_1D21A6938(v112, v65 + v69 + v70 * v68, &qword_1EC6D23C0);
        v40[4] = v65;
        swift_endAccess();
        swift_beginAccess();
        v71 = v40[5];
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v40[5] = v71;
        if ((v72 & 1) == 0)
        {
          v71 = sub_1D2196230(0, v71[2] + 1, 1, v71);
          v40[5] = v71;
        }

        v74 = v71[2];
        v73 = v71[3];
        if (v74 >= v73 >> 1)
        {
          v71 = sub_1D2196230((v73 > 1), v74 + 1, 1, v71);
        }

        v71[2] = v74 + 1;
        v75 = &v71[2 * v74];
        v77 = v115;
        v76 = v116;
        v75[4] = v116;
        v75[5] = v77;
        v40[5] = v71;
        swift_endAccess();
        sub_1D2174DA8(v120, v113, &qword_1EC6D23C0);
        swift_beginAccess();
        v78 = v40[6];
        sub_1D21A3B64(v76, v77);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v40[6] = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_1D219620C(0, v78[2] + 1, 1, v78);
          v40[6] = v78;
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          v78 = sub_1D219620C(v80 > 1, v81 + 1, 1, v78);
        }

        v78[2] = v81 + 1;
        sub_1D21A6938(v113, v78 + v69 + v81 * v70, &qword_1EC6D23C0);
        v40[6] = v78;
        swift_endAccess();
        swift_beginAccess();
        v82 = v40[8];
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v40[8] = v82;
        if ((v83 & 1) == 0)
        {
          v82 = sub_1D21960E4(0, *(v82 + 2) + 1, 1, v82);
          v40[8] = v82;
        }

        v18 = v111;
        v85 = *(v82 + 2);
        v84 = *(v82 + 3);
        if (v85 >= v84 >> 1)
        {
          v82 = sub_1D21960E4((v84 > 1), v85 + 1, 1, v82);
        }

        *(v82 + 2) = v85 + 1;
        v86 = &v82[8 * v85];
        *(v86 + 8) = v53;
        v86[36] = 0;
        v40[8] = v82;
        swift_endAccess();
        swift_beginAccess();
        v87 = v40[7];
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v40[7] = v87;
        if ((v88 & 1) == 0)
        {
          v87 = sub_1D21961E4(0, *(v87 + 2) + 1, 1, v87);
          v40[7] = v87;
        }

        v90 = *(v87 + 2);
        v89 = *(v87 + 3);
        if (v90 >= v89 >> 1)
        {
          v87 = sub_1D21961E4((v89 > 1), v90 + 1, 1, v87);
        }

        *(v87 + 2) = v90 + 1;
        v91 = &v87[16 * v90];
        *(v91 + 4) = 0;
        v91[40] = 1;
        v40[7] = v87;
        swift_endAccess();
        swift_beginAccess();
        v92 = v40[10];
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v40[10] = v92;
        if ((v93 & 1) == 0)
        {
          v92 = sub_1D21961E4(0, *(v92 + 2) + 1, 1, v92);
          v40[10] = v92;
        }

        v95 = *(v92 + 2);
        v94 = *(v92 + 3);
        if (v95 >= v94 >> 1)
        {
          v92 = sub_1D21961E4((v94 > 1), v95 + 1, 1, v92);
        }

        *(v92 + 2) = v95 + 1;
        v96 = &v92[16 * v95];
        *(v96 + 4) = 0;
        v96[40] = 1;
        v40[10] = v92;
        swift_endAccess();
        swift_beginAccess();
        v97 = v40[11];
        v98 = swift_isUniquelyReferenced_nonNull_native();
        v40[11] = v97;
        if ((v98 & 1) == 0)
        {
          v97 = sub_1D21960E4(0, *(v97 + 2) + 1, 1, v97);
          v40[11] = v97;
        }

        v100 = *(v97 + 2);
        v99 = *(v97 + 3);
        if (v100 >= v99 >> 1)
        {
          v97 = sub_1D21960E4((v99 > 1), v100 + 1, 1, v97);
        }

        *(v97 + 2) = v100 + 1;
        v101 = &v97[8 * v100];
        *(v101 + 8) = 0;
        v101[36] = 1;
        v40[11] = v97;
        swift_endAccess();
        swift_beginAccess();
        v102 = v40[12];
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v40[12] = v102;
        if ((v103 & 1) == 0)
        {
          v102 = sub_1D21960E4(0, *(v102 + 2) + 1, 1, v102);
          v40[12] = v102;
        }

        v105 = *(v102 + 2);
        v104 = *(v102 + 3);
        if (v105 >= v104 >> 1)
        {
          v102 = sub_1D21960E4((v104 > 1), v105 + 1, 1, v102);
        }

        *(v102 + 2) = v105 + 1;
        v106 = &v102[8 * v105];
        *(v106 + 8) = 0;
        v106[36] = 1;
        v40[12] = v102;
        swift_endAccess();

        sub_1D21A1F98(v116, v115);
        sub_1D21A1F98(v118, v117);
        sub_1D2176170(v120, &qword_1EC6D23C0);
        sub_1D2176170(v119, &qword_1EC6D23C0);

        i = v121;
        a1 = v122;
      }

      else
      {
      }

      ++v15;
      if (v18 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }
}

uint64_t sub_1D21CBA6C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  v39 = v6;
  v34 = v1;
  v35 = v1 + 64;
LABEL_5:
  if (v5)
  {
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * v10)));
    v12 = *(v11 + 16);
    swift_beginAccess();
    v13 = *(v11 + 56);
    v14 = *(v12 + 16);

    v15 = 0;
    v16 = v13 + 40;
LABEL_11:
    v17 = (v16 + 16 * v15);
    while (1)
    {
      if (v14 == v15)
      {
LABEL_4:

        v6 = v39;
        goto LABEL_5;
      }

      if (v15 >= *(v12 + 16))
      {
        break;
      }

      v18 = *(v13 + 16);
      if (v15 == v18)
      {
        goto LABEL_4;
      }

      if (v15 >= v18)
      {
        goto LABEL_30;
      }

      v19 = *v17;
      v17 += 16;
      ++v15;
      if ((v19 & 1) == 0)
      {
        v36 = v16;
        v20 = *(v12 + 24 + 8 * v15);
        v38 = *(v17 - 3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v20;
        v22 = sub_1D2176758(v20);
        v24 = v8[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          goto LABEL_32;
        }

        v28 = v23;
        if (v8[3] >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v32 = v22;
            sub_1D21B6C24();
            v22 = v32;
          }
        }

        else
        {
          sub_1D21B140C(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_1D2176758(v37);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_34;
          }
        }

        v2 = v35;
        if (v28)
        {
          *(v8[7] + 8 * v22) = v38;
        }

        else
        {
          v8[(v22 >> 6) + 8] |= 1 << v22;
          *(v8[6] + 8 * v22) = v37;
          *(v8[7] + 8 * v22) = v38;
          v30 = v8[2];
          v26 = __OFADD__(v30, 1);
          v31 = v30 + 1;
          if (v26)
          {
            goto LABEL_33;
          }

          v8[2] = v31;
        }

        v1 = v34;
        v16 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v8;
      }

      v5 = *(v2 + 8 * v9);
      ++v7;
      if (v5)
      {
        v7 = v9;
        goto LABEL_10;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CBD28(unsigned __int8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!*(v3 + 16))
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = sub_1D2176DFC(a1);
  if ((v5 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = *(v6 + 16);
  v8 = v7 + 24;
  swift_beginAccess();
  v9 = *(v6 + 56);
  v10 = *(v7 + 16);

  v11 = 0;
  v12 = v9 + 40;
  v13 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    v14 = (v12 + 16 * v11);
    do
    {
      if (v10 == v11)
      {
LABEL_22:

        return v13;
      }

      if (v11 >= *(v7 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v15 = *(v9 + 16);
      if (v11 == v15)
      {
        goto LABEL_22;
      }

      if (v11 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *v14;
      v14 += 16;
      ++v11;
    }

    while ((v16 & 1) != 0);
    v32 = v12;
    v33 = v8;
    v17 = *(v8 + 8 * v11);
    v18 = *(v14 - 3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1D2176758(v17);
    v22 = v13[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v26 = v21;
    if (v13[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v20;
        sub_1D21B6C24();
        v20 = v30;
      }

      goto LABEL_16;
    }

    sub_1D21B140C(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_1D2176758(v17);
    if ((v26 & 1) == (v27 & 1))
    {
LABEL_16:
      if (v26)
      {
        *(v13[7] + 8 * v20) = v18;
LABEL_20:
        v12 = v32;
        v8 = v33;
        continue;
      }

      v13[(v20 >> 6) + 8] |= 1 << v20;
      *(v13[6] + 8 * v20) = v17;
      *(v13[7] + 8 * v20) = v18;
      v28 = v13[2];
      v24 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (!v24)
      {
        v13[2] = v29;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
    }

    break;
  }

  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CBF54()
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D60);
  v89 = *(v93 - 8);
  v1 = MEMORY[0x1EEE9AC00](v93);
  v103 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v92 = &v78 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2968);
  v86 = *(v104 - 8);
  v4 = MEMORY[0x1EEE9AC00](v104);
  v101 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v91 = &v78 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v78 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v102 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2B98);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v78 - v17);
  swift_beginAccess();
  v19 = *(v0 + 24);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v80 = v19;

  v25 = 0;
  v105 = MEMORY[0x1E69E7CC8];
  v26 = &unk_1EC6D2BA0;
  v79 = v20;
  v78 = v24;
  v88 = v16;
  v95 = v18;
LABEL_6:
  if (v23)
  {
    v27 = v25;
LABEL_11:
    v83 = (v23 - 1) & v23;
    v28 = *(v80 + 56);
    v82 = v27;
    v29 = *(v28 + ((v27 << 9) | (8 * __clz(__rbit64(v23)))));
    swift_beginAccess();
    v30 = *(v29 + 72);
    v31 = v30 + 64;
    v32 = 1 << *(v30 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v30 + 64);
    v84 = (v32 + 63) >> 6;
    v81 = v29;

    v87 = v30;

    v35 = 0;
    v94 = v30 + 64;
    while (v34)
    {
      v36 = v35;
LABEL_27:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v36 << 6);
      v41 = *(*(v87 + 48) + 8 * v40);
      v42 = v85;
      sub_1D2174DA8(*(v87 + 56) + *(v86 + 72) * v40, v85, &qword_1EC6D2968);
      v43 = v26;
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
      v45 = *(v44 + 48);
      *v16 = v41;
      sub_1D21A6938(v42, v16 + v45, &qword_1EC6D2968);
      (*(*(v44 - 8) + 56))(v16, 0, 1, v44);
      v18 = v95;
LABEL_28:
      sub_1D21A6938(v16, v18, &qword_1EC6D2B98);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v43);
      if ((*(*(v46 - 8) + 48))(v18, 1, v46) == 1)
      {

        v25 = v82;
        v20 = v79;
        v24 = v78;
        v23 = v83;
        v26 = v43;
        goto LABEL_6;
      }

      v100 = *v18;
      v47 = v18 + *(v46 + 48);
      v48 = v104;
      v49 = v47[*(v104 + 48)];
      v50 = sub_1D225055C();
      v96 = *(v50 - 8);
      v51 = *(v96 + 32);
      v52 = v90;
      v51(v90, v47, v50);
      v53 = *(v48 + 48);
      v54 = v102;
      v51(v102, v52, v50);
      *(v54 + v53) = v49;
      v55 = *(v93 + 48);
      v98 = *(v93 + 64);
      v99 = v55;
      v56 = v91;
      sub_1D2174DA8(v54, v91, &qword_1EC6D2968);
      v57 = v92;
      v97 = v50;
      v51(v92, v56, v50);
      v58 = v101;
      v59 = v100;
      sub_1D2174DA8(v54, v101, &qword_1EC6D2968);
      v60 = v103;
      v61 = v98;
      *(v57 + v99) = *(v58 + *(v104 + 48));
      *(v57 + v61) = 1;
      sub_1D21A6938(v57, v60, &unk_1EC6D2D60);
      v62 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v62;
      v65 = sub_1D2176758(v59);
      v66 = v62[2];
      v67 = (v64 & 1) == 0;
      v68 = v66 + v67;
      if (__OFADD__(v66, v67))
      {
        goto LABEL_41;
      }

      v69 = v64;
      if (v62[3] >= v68)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D21B7B10();
        }
      }

      else
      {
        sub_1D21B2AAC(v68, isUniquelyReferenced_nonNull_native);
        v70 = sub_1D2176758(v59);
        if ((v69 & 1) != (v71 & 1))
        {
          goto LABEL_44;
        }

        v65 = v70;
      }

      v72 = v106;
      v105 = v106;
      if (v69)
      {
        sub_1D21A6488(v103, v106[7] + *(v89 + 72) * v65, &unk_1EC6D2D60);
        sub_1D2176170(v102, &qword_1EC6D2968);
      }

      else
      {
        v106[(v65 >> 6) + 8] |= 1 << v65;
        *(v72[6] + 8 * v65) = v59;
        sub_1D21A6938(v103, v72[7] + *(v89 + 72) * v65, &unk_1EC6D2D60);
        sub_1D2176170(v102, &qword_1EC6D2968);
        v73 = v72[2];
        v74 = __OFADD__(v73, 1);
        v75 = v73 + 1;
        if (v74)
        {
          goto LABEL_42;
        }

        v72[2] = v75;
      }

      (*(v96 + 8))(v101, v97);
      v16 = v88;
      v31 = v94;
      v18 = v95;
      v26 = &unk_1EC6D2BA0;
    }

    if (v84 <= v35 + 1)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v84;
    }

    v38 = v37 - 1;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v43 = v26;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(v26);
        (*(*(v76 - 8) + 56))(v16, 1, 1, v76);
        v34 = 0;
        v35 = v38;
        goto LABEL_28;
      }

      v34 = *(v31 + 8 * v36);
      ++v35;
      if (v34)
      {
        v35 = v36;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        return v105;
      }

      v23 = *(v20 + 8 * v27);
      ++v25;
      if (v23)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_44:
  result = sub_1D22512AC();
  __break(1u);
  return result;
}

uint64_t sub_1D21CC850(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(v1 + 24) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_9:
        v9 &= v9 - 1;

        sub_1D21CA89C(a1);
      }

      while (v9);
      continue;
    }
  }

  __break(1u);
  return result;
}