uint64_t sub_1D8A4AF2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D380(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D8B16B30();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D8B15D60();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8A4B2D4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

int64_t sub_1D8A4B060(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3BC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8A4B0CC(v5);
  *a1 = v2;
  return result;
}

int64_t sub_1D8A4B0CC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8B16B30();
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
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8A4B830(v7, v8, a1, v4);
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
    return sub_1D8A4B1C4(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1D8A4B1C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = *(v4 + a3);
    result = 0x36FBuLL >> v7;
    v9 = 0x6F9uLL >> v7;
    v10 = 0xF9uLL >> v7;
    v11 = 0x39uLL >> v7;
    v12 = v7 & 0xFFFFFFFB;
    v13 = v6;
    v14 = v5;
    while (1)
    {
      v15 = *(v14 - 1);
      if (v15 > 7)
      {
        break;
      }

      if (*(v14 - 1) > 3u)
      {
        if (v15 - 6 < 2)
        {
          if ((v11 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (v15 != 5)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (*(v14 - 1) <= 1u)
        {
          if (v15 != 1)
          {
            goto LABEL_4;
          }

LABEL_21:
          if ((v9 & 1) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_25;
        }

        if (v15 == 2)
        {
          goto LABEL_13;
        }
      }

      if (v12)
      {
        goto LABEL_4;
      }

LABEL_25:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v14 = v15;
      *--v14 = v8;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        ++a3;
        ++v5;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    if (((1 << v15) & 0x600) != 0)
    {
      if ((v10 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (((1 << v15) & 0x900) != 0)
    {
LABEL_13:
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1D8A4B2D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D885CC68(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D8A4BF08((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_1D87C7C5C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
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
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_1D8A4BF08((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
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
  return result;
}

uint64_t sub_1D8A4B830(uint64_t result, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v5 = v4;
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_126:
    v7 = *v91;
    if (!*v91)
    {
      goto LABEL_164;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_158:
      result = sub_1D885CC68(v9);
      v9 = result;
    }

    v83 = v9 + 16;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v9[16 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1D8A4C0FC((*a3 + *v85), (*a3 + *v87), *a3 + v88, v7);
        if (v5)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_150;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_151;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_152;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_162;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 >= v6)
    {
      goto LABEL_40;
    }

    v11 = *(*a3 + v8);
    v12 = flt_1D8B36E38[v11];
    v13 = flt_1D8B36E38[*(*a3 + v10)];
    v8 = v10 + 2;
    if (v10 + 2 < v6)
    {
      v14 = v11;
      while (1)
      {
        v17 = *(*a3 + v8);
        if (v14 <= 7u)
        {
          break;
        }

        v18 = 1 << v14;
        if ((v18 & 0x600) == 0)
        {
          if ((v18 & 0x900) != 0)
          {
            goto LABEL_22;
          }

LABEL_7:
          v15 = v12 < v13;
          v16 = 14598;
          goto LABEL_8;
        }

        v15 = v12 < v13;
        v16 = 16134;
LABEL_8:
        if (((v15 ^ (v16 >> v17)) & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_9:
        v14 = *(*a3 + v8++);
        if (v6 == v8)
        {
          v8 = v6;
          if (v12 < v13)
          {
            goto LABEL_31;
          }

          goto LABEL_40;
        }
      }

      if (v14 > 3u)
      {
        if (v14 - 6 >= 2)
        {
          if (v14 != 4)
          {
LABEL_27:
            if (v12 < v13 == ((v17 & 0xFFFFFFFB) != 0))
            {
              goto LABEL_28;
            }

            goto LABEL_9;
          }

LABEL_25:
          if (v12 < v13)
          {
            goto LABEL_31;
          }

          goto LABEL_9;
        }

        v15 = v12 < v13;
        v16 = 16326;
        goto LABEL_8;
      }

      if (v14 > 1u)
      {
        if (v14 != 2)
        {
          goto LABEL_27;
        }

LABEL_22:
        if (v12 < v13 == ((0x904uLL >> v17) & 1))
        {
          goto LABEL_28;
        }

        goto LABEL_9;
      }

      if (!v14)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

LABEL_28:
    if (v12 < v13)
    {
LABEL_31:
      if (v8 < v10)
      {
        goto LABEL_155;
      }

      if (v10 < v8)
      {
        v19 = v8 - 1;
        v20 = v10;
        do
        {
          if (v20 != v19)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_161;
            }

            v21 = *(v23 + v20);
            *(v23 + v20) = *(v23 + v19);
            *(v23 + v19) = v21;
          }
        }

        while (++v20 < v19--);
        v6 = a3[1];
      }
    }

LABEL_40:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_154;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_156;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_75:
    if (v8 < v10)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D87C7C5C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1D87C7C5C((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v91;
    if (!*v91)
    {
      goto LABEL_163;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_95:
          if (v46)
          {
            goto LABEL_141;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_144;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_148;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_109:
        if (v64)
        {
          goto LABEL_143;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_146;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_116:
        v7 = v42 - 1;
        if (v42 - 1 >= v39)
        {
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
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v80 = *&v9[16 * v7 + 32];
        v81 = *&v9[16 * v42 + 40];
        sub_1D8A4C0FC((*a3 + v80), (*a3 + *&v9[16 * v42 + 32]), *a3 + v81, v41);
        if (v5)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D885CC68(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_138;
        }

        v82 = &v9[16 * v7];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_1D885CBDC(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_139;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_140;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_142;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_145;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_149;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_95;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_126;
    }
  }

  v24 = *a3;
  v25 = *a3 + v8;
  v26 = v10 - v8;
LABEL_50:
  v27 = *(v24 + v8);
  v28 = *(v24 + v8);
  v29 = 0x36FBuLL >> v27;
  v30 = 0x6F9uLL >> v27;
  v31 = 0xF9uLL >> v27;
  v32 = 0x39uLL >> v27;
  v33 = v27 & 0xFFFFFFFB;
  v34 = v26;
  result = v25;
  while (1)
  {
    v35 = *(result - 1);
    if (v35 > 7)
    {
      if (((1 << v35) & 0x600) != 0)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      if (((1 << v35) & 0x900) != 0)
      {
LABEL_58:
        if ((v29 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      goto LABEL_66;
    }

    if (*(result - 1) > 3u)
    {
      if (v35 - 6 < 2)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_70;
      }

      if (v35 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_69;
    }

    if (*(result - 1) <= 1u)
    {
      if (v35 != 1)
      {
        goto LABEL_49;
      }

LABEL_66:
      if ((v30 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_70;
    }

    if (v35 == 2)
    {
      goto LABEL_58;
    }

LABEL_69:
    if (v33)
    {
      goto LABEL_49;
    }

LABEL_70:
    if (!v24)
    {
      break;
    }

    *result = v35;
    *--result = v28;
    if (__CFADD__(v34++, 1))
    {
LABEL_49:
      ++v8;
      ++v25;
      --v26;
      if (v8 != v6)
      {
        goto LABEL_50;
      }

      v8 = v6;
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
  return result;
}

uint64_t sub_1D8A4BF08(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8A4C0FC(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst < (a3 - __src))
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        v12 = *v6;
        v13 = *v4;
        if (v13 > 7)
        {
          break;
        }

        if (*v4 > 3u)
        {
          if (v13 - 6 < 2)
          {
            if ((0x39uLL >> v11))
            {
              goto LABEL_29;
            }

            goto LABEL_26;
          }

          if (v13 == 4)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if (*v4 <= 1u)
          {
            if (!*v4)
            {
              goto LABEL_26;
            }

LABEL_14:
            if ((0x6F9uLL >> v11))
            {
              goto LABEL_29;
            }

            goto LABEL_26;
          }

          if (v13 == 2)
          {
            goto LABEL_22;
          }
        }

        if ((v12 & 0xFFFFFFFB) == 0)
        {
LABEL_29:
          v15 = v6 + 1;
          if (v7 >= v6 && v7 < v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_26:
        v14 = v4 + 1;
        LOBYTE(v12) = *v4;
        v15 = v6;
        if (v7 < v4)
        {
          ++v4;
        }

        else
        {
          ++v4;
          if (v7 < v14)
          {
            goto LABEL_34;
          }
        }

LABEL_33:
        *v7 = v12;
LABEL_34:
        ++v7;
        if (v4 < v10)
        {
          v6 = v15;
          if (v15 < v5)
          {
            continue;
          }
        }

        goto LABEL_36;
      }

      if (((1 << v13) & 0x600) != 0)
      {
        if ((0xF9uLL >> v11))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      if (((1 << v13) & 0x900) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      if ((0x36FBuLL >> v11))
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_36:
    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_78;
    }

LABEL_77:
    if (v6 >= v10)
    {
      goto LABEL_78;
    }

    return 1;
  }

  if (a4 != __src || a4 >= a3)
  {
    memmove(a4, __src, a3 - __src);
  }

  v10 = &v4[v9];
  if (v9 < 1 || v6 <= v7)
  {
LABEL_76:
    if (v6 != v4)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  do
  {
    v16 = v6 - 1;
    --v5;
    v17 = v10;
    while (1)
    {
      v19 = *--v17;
      v18 = v19;
      v20 = v19;
      v21 = *v16;
      if (v21 <= 7)
      {
        break;
      }

      if (((1 << v21) & 0x600) != 0)
      {
        if ((0xF9uLL >> v18))
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }

      if (((1 << v21) & 0x900) == 0)
      {
        goto LABEL_53;
      }

LABEL_61:
      if ((0x36FBuLL >> v18))
      {
        goto LABEL_68;
      }

LABEL_65:
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = v20;
      }

      --v5;
      v10 = v17;
      if (v17 <= v4)
      {
        v10 = v17;
        goto LABEL_76;
      }
    }

    if (*v16 <= 3u)
    {
      if (*v16 <= 1u)
      {
        if (!*v16)
        {
          goto LABEL_65;
        }

LABEL_53:
        if ((0x6F9uLL >> v18))
        {
          goto LABEL_68;
        }

        goto LABEL_65;
      }

      if (v21 != 2)
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    if (v21 - 6 < 2)
    {
      if ((0x39uLL >> v18))
      {
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    if (v21 == 4)
    {
      goto LABEL_65;
    }

LABEL_64:
    if ((v20 & 0xFFFFFFFB) != 0)
    {
      goto LABEL_65;
    }

LABEL_68:
    if (v5 + 1 < v6 || v5 >= v6)
    {
      *v5 = v21;
    }

    if (v10 <= v4)
    {
      break;
    }

    --v6;
  }

  while (v16 > v7);
  v6 = v16;
  if (v16 == v4)
  {
    goto LABEL_77;
  }

LABEL_78:
  memmove(v6, v4, v10 - v4);
  return 1;
}

unint64_t *sub_1D8A4C424(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8A4C5FC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8A4C49C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8A4C5FC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8A4C424(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8A4C5FC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + v11) != 9)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF3FC0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF3FC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8A4C6E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1DA721350](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1DA721350](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13240();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = type metadata accessor for DetectionRequest.Originator(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v36 - v20;
  v22 = (&v36 + *(v19 + 56) - v20);
  sub_1D8A50DC0(a1, &v36 - v20, type metadata accessor for DetectionRequest.Originator);
  sub_1D8A50DC0(a2, v22, type metadata accessor for DetectionRequest.Originator);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D8A50E28(v22, type metadata accessor for DetectionRequest.Originator);
        goto LABEL_12;
      }

LABEL_20:
      sub_1D87A14E4(v21, &unk_1ECA64FB0);
      v25 = 0;
      return v25 & 1;
    }

    sub_1D8A50DC0(v21, v17, type metadata accessor for DetectionRequest.Originator);
    v31 = *v17;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_20;
    }

    v32 = *v22;
    v33 = *(v22 + 4);
    if (*(v17 + 4))
    {
      if (*(v17 + 4) != 1)
      {
        v25 = v33 == 2 && LODWORD(v32) == 0;
        goto LABEL_31;
      }

      if (v33 != 1)
      {
        goto LABEL_24;
      }
    }

    else if (*(v22 + 4))
    {
      goto LABEL_24;
    }

    if (v31 == v32)
    {
      v25 = 1;
      goto LABEL_31;
    }

LABEL_24:
    v25 = 0;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8A50DC0(v21, v15, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v27 = v38;
      v26 = v39;
      v28 = *(v38 + 32);
      v28(v8, v15, v39);
      v29 = v37;
      v28(v37, v22, v26);
      v25 = sub_1D8B13200();
      v30 = *(v27 + 8);
      v30(v29, v26);
      v30(v8, v26);
      goto LABEL_31;
    }

    (*(v38 + 8))(v15, v39);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1D8A50DC0(v21, v12, type metadata accessor for DetectionRequest.Originator);
    v24 = *v12;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = sub_1D894FA18(v24, *v22);

LABEL_31:
      sub_1D8A50E28(v21, type metadata accessor for DetectionRequest.Originator);
      return v25 & 1;
    }

    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_1D8A50E28(v21, type metadata accessor for DetectionRequest.Originator);
  v25 = 1;
  return v25 & 1;
}

BOOL _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for DetectionRequest(0);
  if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v4[5]], &a2[v4[5]]) & 1) == 0 || (sub_1D894CAAC(*&a1[v4[6]], *&a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  result = CGRectEqualToRect(*&a1[v4[7]], *&a2[v4[7]]);
  if (result)
  {
    return *&a1[v4[8]] == *&a2[v4[8]];
  }

  return result;
}

BOOL _s22VisualIntelligenceCore13CVCoordinatorC13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1D8855000(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v4 == v7;
  if (v3 != v6)
  {
    v8 = 0;
  }

  return ((v2 ^ v5) & 1) == 0 && v8;
}

uint64_t _s22VisualIntelligenceCore16DetectionRequestV10AnnotationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for DetectionRequest.Annotation(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v25 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v25 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D20);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_1D8A50DC0(a1, &v25 - v18, type metadata accessor for DetectionRequest.Annotation);
  sub_1D8A50DC0(a2, &v19[v20], type metadata accessor for DetectionRequest.Annotation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A50DC0(v19, v13, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D881F6FC(&v19[v20], v6, &qword_1ECA67750);
        v22 = sub_1D87EF584(v13, v6);
        sub_1D87A14E4(v6, &qword_1ECA67750);
        sub_1D87A14E4(v13, &qword_1ECA67750);
LABEL_12:
        sub_1D8A50E28(v19, type metadata accessor for DetectionRequest.Annotation);
        return v22 & 1;
      }

      sub_1D87A14E4(v13, &qword_1ECA67750);
    }

    else
    {
      sub_1D8A50DC0(v19, v10, type metadata accessor for DetectionRequest.Annotation);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v22 = sub_1D87DE87C(*v10, v19[v20]);
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_1D8A50DC0(v19, v15, type metadata accessor for DetectionRequest.Annotation);
    v23 = *v15;
    if (!swift_getEnumCaseMultiPayload())
    {
      v22 = sub_1D88E3100(v23, *&v19[v20]);

      goto LABEL_12;
    }
  }

  sub_1D87A14E4(v19, &qword_1ECA63D20);
  v22 = 0;
  return v22 & 1;
}

BOOL sub_1D8A4D088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 52);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 4);
  v8 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 48);
  v10 = *(a2 + 52);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  if (*(a1 + 4) == 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (!*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v13 = 0;
    if (v2 != v8 || *(a1 + 16) != v7)
    {
      return v13;
    }

LABEL_19:
    if (v4)
    {
      if (v3)
      {
        if (v10)
        {
          v18 = v11;
        }

        else
        {
          v18 = 0;
        }

        if (v18 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v10)
        {
          v20 = 0;
        }

        else
        {
          v20 = v11;
        }

        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v3 == v10)
      {
        v19 = v11;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v12 != 1)
        {
          return 0;
        }
      }

      else
      {
        if (v12 < 2)
        {
          return 0;
        }

        v21 = a1;
        v22 = a2;
        type metadata accessor for CGColor(0);
        sub_1D8A4F044(&unk_1EE0E3800, 255, type metadata accessor for CGColor);
        v23 = sub_1D8B13D60();
        a2 = v22;
        v24 = v23;
        a1 = v21;
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v12)
    {
      return 0;
    }

    v25 = *(a2 + 72);
    if (*(a1 + 72))
    {
      if (!v25)
      {
        return 0;
      }

      v26 = a1;
      v27 = a2;
      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer);
      v28 = v25;
      v29 = sub_1D8B13D60();

      a1 = v26;
      a2 = v27;
      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v25)
    {
      return 0;
    }

    v30 = *(a2 + 80);
    if (*(a1 + 80))
    {
      if (!v30)
      {
        return 0;
      }

      type metadata accessor for CVBuffer(0);
      sub_1D8A4F044(&unk_1EE0E37A0, 255, type metadata accessor for CVBuffer);
      v31 = v30;
      v32 = sub_1D8B13D60();

      return (v32 & 1) != 0;
    }

    return !v30;
  }

  if (*(a1 + 48) != 1)
  {
    if (v9 != 2 || v7 | v8 | *(a2 + 24) | *(a2 + 32) | *(a2 + 40))
    {
      return 0;
    }

    goto LABEL_19;
  }

  v13 = 0;
  if (v9 == 1 && v2 == v8)
  {
    v14 = a2;
    v15 = a1;
    v16 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
    a2 = v14;
    v17 = v16;
    a1 = v15;
    if (!v17)
    {
      return 0;
    }

    goto LABEL_19;
  }

  return v13;
}

BOOL sub_1D8A4D3A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a2 + 40) == 1 && v2 == *a2)
      {
        return CGRectEqualToRect(*(a1 + 1), *(a2 + 8));
      }

      return 0;
    }

    if (*(a2 + 40) != 2)
    {
      return 0;
    }

    v5 = vorrq_s8(*(a2 + 8), *(a2 + 24));
    return !(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | *a2);
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    return v2 == *a2 && a1[1] == *(a2 + 8);
  }
}

BOOL sub_1D8A4D460(uint64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionRequest(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = type metadata accessor for ProcessorState(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v41 - v21;
  v23 = &v41 + *(v20 + 56) - v21;
  sub_1D8A50DC0(a1, &v41 - v21, type metadata accessor for ProcessorState);
  sub_1D8A50DC0(a2, v23, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A50DC0(v22, v16, type metadata accessor for ProcessorState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v43;
        sub_1D8A512F0(v23, v43, type metadata accessor for DetectionResult);
        if (_s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v16, v25) && (sub_1D88E4098(*&v16[*(v42 + 20)], *&v25[*(v42 + 20)]) & 1) != 0)
        {
          sub_1D8A50E28(v25, type metadata accessor for DetectionResult);
          v26 = v16;
          v27 = type metadata accessor for DetectionResult;
LABEL_27:
          sub_1D8A50E28(v26, v27);
LABEL_28:
          sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
          return 1;
        }

        sub_1D8A50E28(v25, type metadata accessor for DetectionResult);
        sub_1D8A50E28(v16, type metadata accessor for DetectionResult);
LABEL_23:
        sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
        return 0;
      }

      v28 = type metadata accessor for DetectionResult;
      v29 = v16;
    }

    else
    {
      sub_1D8A50DC0(v22, v13, type metadata accessor for ProcessorState);
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48);
      v32 = *&v13[v30];
      v31 = *&v13[v30 + 8];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v34 = *&v23[v30];
        v33 = *&v23[v30 + 8];
        v35 = v44;
        sub_1D8A512F0(v23, v44, type metadata accessor for DetectionRequest);
        v36 = _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v13, v35);
        sub_1D8A50E28(v13, type metadata accessor for DetectionRequest);
        if (v36)
        {
          if (v32 == v34 && v31 == v33)
          {

            v27 = type metadata accessor for DetectionRequest;
            v26 = v35;
            goto LABEL_27;
          }

          v38 = sub_1D8B16BA0();

          sub_1D8A50E28(v35, type metadata accessor for DetectionRequest);
          if (v38)
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_1D8A50E28(v35, type metadata accessor for DetectionRequest);
        }

        goto LABEL_23;
      }

      v28 = type metadata accessor for DetectionRequest;
      v29 = v13;
    }

LABEL_19:
    sub_1D8A50E28(v29, v28);
    sub_1D87A14E4(v22, &qword_1ECA65E90);
    return 0;
  }

  sub_1D8A50DC0(v22, v18, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload())
  {
    v28 = type metadata accessor for DetectionRequest;
    v29 = v18;
    goto LABEL_19;
  }

  sub_1D8A512F0(v23, v9, type metadata accessor for DetectionRequest);
  v39 = _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(v18, v9);
  sub_1D8A50E28(v9, type metadata accessor for DetectionRequest);
  sub_1D8A50E28(v18, type metadata accessor for DetectionRequest);
  sub_1D8A50E28(v22, type metadata accessor for ProcessorState);
  return v39;
}

uint64_t sub_1D8A4DA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E60);
    v3 = sub_1D8B166E0();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      v26 = v4 + 1;
      sub_1D8B16D20();
      sub_1D8B15A60();

      result = sub_1D8B16D80();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          v13 = *(*(v3 + 48) + v9);
          if (v13 <= 1)
          {
            if (*(*(v3 + 48) + v9))
            {
              v14 = 0x6261686372616573;
            }

            else
            {
              v14 = 0x7474756853657270;
            }

            if (*(*(v3 + 48) + v9))
            {
              v15 = 0xEA0000000000656CLL;
            }

            else
            {
              v15 = 0xEA00000000007265;
            }

            if (v6 > 1)
            {
LABEL_23:
              v16 = 0x62616D6165727473;
              if (v6 == 3)
              {
                v16 = 0x6E49746C697562;
                v17 = 0xE700000000000000;
              }

              else
              {
                v17 = 0xEA0000000000656CLL;
              }

              if (v6 == 2)
              {
                v18 = 0x7261507473726966;
              }

              else
              {
                v18 = v16;
              }

              if (v6 == 2)
              {
                v19 = 0xEA00000000007974;
              }

              else
              {
                v19 = v17;
              }

              if (v14 != v18)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          else if (v13 == 2)
          {
            v14 = 0x7261507473726966;
            v15 = 0xEA00000000007974;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v13 == 3)
            {
              v14 = 0x6E49746C697562;
            }

            else
            {
              v14 = 0x62616D6165727473;
            }

            if (v13 == 3)
            {
              v15 = 0xE700000000000000;
            }

            else
            {
              v15 = 0xEA0000000000656CLL;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v19 = 0xEA0000000000656CLL;
            if (v14 != 0x6261686372616573)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0xEA00000000007265;
            if (v14 != 0x7474756853657270)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          if (v15 == v19)
          {

            goto LABEL_4;
          }

LABEL_40:
          v20 = sub_1D8B16BA0();

          if (v20)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      v4 = v26;
      if (v26 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D8A4DDAC(uint64_t a1)
{
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F40);
    v10 = sub_1D8B166E0();
    v11 = 0;
    v12 = v10 + 56;
    v13 = *(v3 + 80);
    v25 = v9;
    v26 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v3 + 72);
    while (2)
    {
      sub_1D8A50DC0(v26 + v14 * v11, v8, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v27);
      v15 = sub_1D8B16D80();
      v16 = ~(-1 << *(v10 + 32));
      for (i = v15 & v16; ; i = (i + 1) & v16)
      {
        v18 = *(v12 + 8 * (i >> 6));
        if (((1 << i) & v18) == 0)
        {
          break;
        }

        sub_1D8A50DC0(*(v10 + 48) + i * v14, v6, type metadata accessor for BundleClassification.ClassificationType);
        v19 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v6, v8);
        sub_1D8A50E28(v6, type metadata accessor for BundleClassification.ClassificationType);
        if (v19)
        {
          sub_1D8A50E28(v8, type metadata accessor for BundleClassification.ClassificationType);
          goto LABEL_4;
        }
      }

      *(v12 + 8 * (i >> 6)) = (1 << i) | v18;
      result = sub_1D8A512F0(v8, *(v10 + 48) + i * v14, type metadata accessor for BundleClassification.ClassificationType);
      v21 = *(v10 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (!v22)
      {
        *(v10 + 16) = v23;
LABEL_4:
        if (++v11 == v25)
        {
          return v10;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

CVPixelBufferRef sub_1D8A4E020(size_t a1, size_t a2, OSType a3)
{
  pixelBufferOut[1] = *MEMORY[0x1E69E9840];
  pixelBufferOut[0] = 0;
  if (((a2 | a1) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB80;
  v7 = *MEMORY[0x1E69660D8];
  *(inited + 32) = *MEMORY[0x1E69660D8];
  v8 = v7;
  v9 = sub_1D893CDD0(MEMORY[0x1E69E7CC0]);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA679A0);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E6966020];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = MEMORY[0x1E69E6530];
  *(inited + 80) = 64;
  v12 = v11;
  sub_1D893CF0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D90);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1D8A4F044(&qword_1EE0E37C0, 255, type metadata accessor for CFString);
  v13 = sub_1D8B15710();

  CVPixelBufferCreate(0, a1, a2, a3, v13, pixelBufferOut);

  v14 = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    sub_1D88C53E4();
    swift_allocError();
    *v15 = xmmword_1D8B282F0;
    *(v15 + 16) = 3;
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_1D8A4E254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>)
{
  sub_1D88C5438(a1, v62);
  sub_1D88C5438(v62, v63);
  if (v64 != 1)
  {
    goto LABEL_4;
  }

  v16 = v63[1];
  v17 = *(a3 + 32);
  sub_1D88C5438(v62, v61);
  sub_1D8A57AA0(v61, v59);
  v17(pixelBuffer, a2, a3);
  v18 = pixelBuffer[0];
  if (LOBYTE(pixelBuffer[1]))
  {
    sub_1D88C3978(pixelBuffer[0], pixelBuffer[1]);
    sub_1D88C558C(v62);
LABEL_4:
    sub_1D88C53E4();
    swift_allocError();
    *v19 = xmmword_1D8B23E20;
    *(v19 + 16) = 3;
    return swift_willThrow();
  }

  Width = CVPixelBufferGetWidth(pixelBuffer[0]);
  Height = CVPixelBufferGetHeight(v18);
  v66.origin.x = a5;
  v66.origin.y = a6;
  v66.size.width = a7;
  v66.size.height = a8;
  v23 = 0.0;
  if (CGRectIsEmpty(v66))
  {
    v24 = 0.0;
  }

  else
  {
    v24 = round(Width * a5);
    v25 = round(Width * 0.5 * a7);
    Width = v25 + v25;
    v23 = round(Height * a6);
    v26 = round(Height * 0.5 * a8);
    Height = v26 + v26;
  }

  v67.origin.x = v24;
  v67.origin.y = v23;
  v67.size.width = Width;
  v67.size.height = Height;
  v27 = CGRectGetWidth(v67);
  v68.origin.x = v24;
  v68.origin.y = v23;
  v68.size.width = Width;
  v68.size.height = Height;
  v28 = CGRectGetHeight(v68);
  v29 = v16;
  if (v27 > v16 || v28 > v29)
  {
    v31 = v29 / v27;
    v32 = v29 / v28;
    if (v32 >= v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v32;
    }

    v34 = v28;
    v27 = CGRound(v27 * v33);
    v28 = CGRound(v34 * v33);
  }

  if (v27 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v49 = v16;
  if (v28 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v35 = *&v65[3];
  v36 = v65[7];
  v37 = v27;
  v38 = v28;
  CameraSourceFrame.rotationAngle.getter(a3, v59);
  v39 = *v59;
  if (v36)
  {
    if (!v35)
    {
      v40 = v27;
      v37 = v38;
      if ((v63[0] & 0x100000000) == 0)
      {
        goto LABEL_43;
      }

LABEL_36:
      PixelFormatType = CVPixelBufferGetPixelFormatType(v18);
      goto LABEL_44;
    }
  }

  else
  {
    if (v35 > 8)
    {
      goto LABEL_33;
    }

    if (((1 << v35) & 0x18) != 0)
    {
      v39 = *v59 + -3.14159265;
      goto LABEL_34;
    }

    if (((1 << v35) & 0xC0) != 0)
    {
      v39 = *v59 + -1.57079633;
      goto LABEL_34;
    }

    if (((1 << v35) & 0x120) != 0)
    {
      v39 = *v59 + -4.71238898;
    }

    else
    {
LABEL_33:
      if (v35 - 1 >= 2)
      {
LABEL_54:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0);
        result = sub_1D8B16B90();
        __break(1u);
        return result;
      }
    }
  }

LABEL_34:
  v40 = v38;
  if (v39 != 1.57079633)
  {
    if (v39 == 4.71238898)
    {
      v40 = v38;
    }

    else
    {
      v40 = v27;
    }

    if (v39 != 4.71238898)
    {
      v37 = v38;
    }

    if ((v63[0] & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if ((v63[0] & 0x100000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_43:
  PixelFormatType = v63[0];
LABEL_44:
  if (((v37 | v40) & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v42 = sub_1D8A4E020(v40, v37, PixelFormatType);
  if (v8)
  {
    sub_1D88C3978(v18, 0);
    return sub_1D88C558C(v62);
  }

  else
  {
    v43 = v42;
    sub_1D88C3978(v18, 0);
    v56[0] = v63[0];
    v56[1] = v49;
    *&v56[2] = v24;
    *&v56[3] = v23;
    *&v56[4] = Width;
    *&v56[5] = Height;
    v57 = 1;
    *v58 = *v65;
    *&v58[15] = *&v65[15];
    v55 = 0;
    result = sub_1D88C5438(v56, pixelBuffer);
    *(&v54 + 1) = v43;
    v44 = v55;
    v60 = v55;
    v45 = v53;
    v59[2] = v52;
    v59[3] = v53;
    v47 = *pixelBuffer;
    v46 = v51;
    v59[0] = *pixelBuffer;
    v59[1] = v51;
    v48 = v54;
    v59[4] = v54;
    *(a4 + 32) = v52;
    *(a4 + 48) = v45;
    *(a4 + 64) = v48;
    *(a4 + 80) = v44;
    *a4 = v47;
    *(a4 + 16) = v46;
  }

  return result;
}

uint64_t sub_1D8A4E6CC(uint64_t a1)
{
  v72 = sub_1D8B13240();
  v2 = *(v72 - 8);
  v3 = MEMORY[0x1EEE9AC00](v72);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v62 - v5;
  v6 = type metadata accessor for DetectionRequest.Originator(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v62 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  MEMORY[0x1EEE9AC00](v76);
  v15 = &v62 - v14;
  v79 = type metadata accessor for DetectionRequest(0);
  v16 = *(v79 - 1);
  v17 = MEMORY[0x1EEE9AC00](v79);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v71 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E20);
    v23 = sub_1D8B166E0();
    v24 = 0;
    v82 = v23 + 56;
    v68 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v83 = *(v16 + 72);
    v70 = (v2 + 8);
    v63 = (v2 + 32);
    v65 = v6;
    v64 = v9;
    v77 = v21;
    v62 = v22;
    v81 = v23;
    while (1)
    {
      v73 = v24;
      sub_1D8A50DC0(v68 + v83 * v24, v21, type metadata accessor for DetectionRequest);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](*v21);
      v25 = v79;
      v78 = v79[5];
      DetectionRequest.Originator.hash(into:)(v84);
      v75 = *&v21[v25[6]];
      sub_1D8818BD0(v84, v75);
      v26 = &v21[v25[7]];
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      sub_1D88911A0(*v26, v28, v29, v30);
      v31 = v25[8];
      v32 = *&v21[v31];
      v33 = v32 == 0.0 ? 0.0 : *&v21[v31];
      MEMORY[0x1DA720250](*&v33);
      v34 = sub_1D8B16D80();
      v35 = v81;
      v36 = -1 << *(v81 + 32);
      v37 = v34 & ~v36;
      v38 = v37 >> 6;
      v39 = *(v82 + 8 * (v37 >> 6));
      v40 = 1 << v37;
      if (((1 << v37) & v39) != 0)
      {
        break;
      }

LABEL_44:
      *(v82 + 8 * v38) = v39 | v40;
      result = sub_1D8A512F0(v21, *(v35 + 48) + v37 * v83, type metadata accessor for DetectionRequest);
      v59 = *(v35 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        __break(1u);
        return result;
      }

      *(v35 + 16) = v61;
LABEL_46:
      v24 = v73 + 1;
      if (v73 + 1 == v22)
      {
        return v35;
      }
    }

    v80 = ~v36;
    v41 = *v21;
    while (1)
    {
      sub_1D8A50DC0(*(v35 + 48) + v37 * v83, v19, type metadata accessor for DetectionRequest);
      if (*v19 != v41)
      {
        goto LABEL_10;
      }

      v42 = &v15[*(v76 + 48)];
      sub_1D8A50DC0(&v19[v79[5]], v15, type metadata accessor for DetectionRequest.Originator);
      sub_1D8A50DC0(&v77[v78], v42, type metadata accessor for DetectionRequest.Originator);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          if (!swift_getEnumCaseMultiPayload())
          {
            sub_1D8A50E28(v42, type metadata accessor for DetectionRequest.Originator);
LABEL_34:
            sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
LABEL_35:
            if (sub_1D894CAAC(*&v19[v79[6]], v75))
            {
              v85.origin.x = v27;
              v85.origin.y = v28;
              v85.size.width = v29;
              v85.size.height = v30;
              if (CGRectEqualToRect(*&v19[v79[7]], v85) && *&v19[v79[8]] == v32)
              {
                sub_1D8A50E28(v19, type metadata accessor for DetectionRequest);
                v21 = v77;
                sub_1D8A50E28(v77, type metadata accessor for DetectionRequest);
                v22 = v62;
                v35 = v81;
                goto LABEL_46;
              }
            }

            goto LABEL_10;
          }

          goto LABEL_9;
        }

        v54 = v74;
        sub_1D8A50DC0(v15, v74, type metadata accessor for DetectionRequest.Originator);
        v55 = *v54;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_9;
        }

        v56 = *v42;
        v57 = *(v42 + 4);
        if (!*(v74 + 4))
        {
          if (v57)
          {
LABEL_39:
            sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
            goto LABEL_10;
          }

LABEL_33:
          if (v55 == v56)
          {
            goto LABEL_34;
          }

          goto LABEL_39;
        }

        if (*(v74 + 4) == 1)
        {
          if (v57 != 1)
          {
            goto LABEL_39;
          }

          goto LABEL_33;
        }

        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v56 == 0.0 && v57 == 2)
        {
          goto LABEL_35;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v46 = v71;
        sub_1D8A50DC0(v15, v71, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          (*v70)(v46, v72);
LABEL_9:
          sub_1D87A14E4(v15, &unk_1ECA64FB0);
          goto LABEL_10;
        }

        v47 = *v63;
        v48 = v66;
        v49 = v46;
        v50 = v72;
        (*v63)(v66, v49, v72);
        v51 = v67;
        v47(v67, v42, v50);
        v69 = sub_1D8B13200();
        v52 = *v70;
        (*v70)(v51, v50);
        v53 = v48;
        v9 = v64;
        v52(v53, v50);
        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v69)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_34;
          }

          goto LABEL_9;
        }

        sub_1D8A50DC0(v15, v9, type metadata accessor for DetectionRequest.Originator);
        v44 = *v9;
        if (swift_getEnumCaseMultiPayload() != 3)
        {

          goto LABEL_9;
        }

        v45 = sub_1D894FA18(v44, *v42);

        sub_1D8A50E28(v15, type metadata accessor for DetectionRequest.Originator);
        if (v45)
        {
          goto LABEL_35;
        }
      }

LABEL_10:
      sub_1D8A50E28(v19, type metadata accessor for DetectionRequest);
      v35 = v81;
      v37 = (v37 + 1) & v80;
      v38 = v37 >> 6;
      v39 = *(v82 + 8 * (v37 >> 6));
      v40 = 1 << v37;
      if ((v39 & (1 << v37)) == 0)
      {
        v21 = v77;
        v22 = v62;
        goto LABEL_44;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A4F044(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D8A4F08C(char *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v113 = a5;
  v112 = a4;
  v115 = a3;
  v132 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E30);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v125 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v124 = &v106 - v15;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70);
  v119 = *(v123 - 1);
  v16 = MEMORY[0x1EEE9AC00](v123);
  v122 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v114 = &v106 - v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v110 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v108 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v106 - v23;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368);
  v120 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v126 = (&v106 - v24);
  v25 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *&v136 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = a7;
  v28 = CameraSourceFrame.timestamp.getter(a6, a7);
  v29 = *(v8 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors);
  v30 = *(v29 + 16);
  v128 = a6;
  v133 = a2;
  v131 = v30;
  v117 = v8;
  if (v30)
  {
    v106 = v25;
    v130 = (v29 + 32);

    v32 = 0;
    v33 = MEMORY[0x1E69E7CC8];
    v129 = v31;
    do
    {
      if (v32 >= *(v31 + 16))
      {
        goto LABEL_49;
      }

      v134 = v32;
      sub_1D87C1470(&v130[5 * v32], &v140);
      v35 = *(&v141 + 1);
      v36 = v142;
      __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
      v37 = (*(v36 + 16))(v132, v35, v36);
      if (v37)
      {
        v38 = v37;
        *&v137 = *(v37 + 16);
        if (v137)
        {
          v39 = 0;
          v135 = (v37 + ((*(v136 + 80) + 32) & ~*(v136 + 80)));
          do
          {
            if (v39 >= *(v38 + 16))
            {
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              sub_1D8B16C30();
              __break(1u);
LABEL_53:
              LODWORD(v105) = 0;
              v104 = 1585;
              result = sub_1D8B168C0();
              __break(1u);
              return result;
            }

            v41 = *(v136 + 72);
            sub_1D8A50DC0(v135 + v41 * v39, v27, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D87C1470(&v140, &v138);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v139 = v33;
            v44 = sub_1D87F0040(v27);
            v45 = v33[2];
            v46 = (v43 & 1) == 0;
            v47 = v45 + v46;
            if (__OFADD__(v45, v46))
            {
              goto LABEL_47;
            }

            v48 = v43;
            if (v33[3] >= v47)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v33 = v139;
                if (v43)
                {
                  goto LABEL_9;
                }
              }

              else
              {
                sub_1D8968A94();
                v33 = v139;
                if (v48)
                {
                  goto LABEL_9;
                }
              }
            }

            else
            {
              sub_1D897085C(v47, isUniquelyReferenced_nonNull_native);
              v49 = sub_1D87F0040(v27);
              if ((v48 & 1) != (v50 & 1))
              {
                goto LABEL_52;
              }

              v44 = v49;
              v33 = v139;
              if (v48)
              {
LABEL_9:
                v40 = v33[7] + 40 * v44;
                __swift_destroy_boxed_opaque_existential_1(v40);
                sub_1D87C15B4(&v138, v40);
                sub_1D8A50E28(v27, type metadata accessor for CVProcessorTaskDescriptor);
                goto LABEL_10;
              }
            }

            v33[(v44 >> 6) + 8] |= 1 << v44;
            sub_1D8A50DC0(v27, v33[6] + v44 * v41, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D87C15B4(&v138, v33[7] + 40 * v44);
            sub_1D8A50E28(v27, type metadata accessor for CVProcessorTaskDescriptor);
            v51 = v33[2];
            v52 = __OFADD__(v51, 1);
            v53 = v51 + 1;
            if (v52)
            {
              goto LABEL_48;
            }

            v33[2] = v53;
LABEL_10:
            ++v39;
          }

          while (v137 != v39);
        }

        a6 = v128;
      }

      v34 = (v134 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v140);
      v32 = v34;
      a2 = v133;
      v31 = v129;
    }

    while (v34 != v131);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC8];
  }

  MEMORY[0x1EEE9AC00](v29);
  v54 = v127;
  *(&v106 - 4) = a6;
  *(&v106 - 3) = v54;
  v104 = v55;
  v105 = a2;
  v56 = v116;
  v57 = sub_1D89163D8(sub_1D8A59DD0, (&v106 - 6), v33);
  v58 = v33[2];
  v129 = v57;
  if (v58)
  {
    v59 = sub_1D87F3884(v58, 0);
    v60 = sub_1D881748C(&v140, v59 + ((*(v136 + 80) + 32) & ~*(v136 + 80)), v58, v33);

    sub_1D87977A0();
    if (v60 != v58)
    {
      goto LABEL_51;
    }

    a6 = v128;
    a2 = v133;
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
  }

  v61 = v127;
  v62 = sub_1D8A45B14(v59, a2, v115 | ((HIDWORD(v115) & 1) << 32), a6, v127);
  if (v56)
  {
  }

  else
  {
    v64 = v62;
    v116 = 0;

    v134 = *(v64 + 2);
    if (v134)
    {
      v65 = 0;
      v131 = (v119 + 56);
      v135 = MEMORY[0x1E69E7CC0];
      v130 = (v119 + 48);
      v66 = v126;
      v132 = v64;
      while (v65 < *(v64 + 2))
      {
        sub_1D87A0E38(&v64[((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v65], v66, &qword_1ECA63368);
        v67 = v66 + *(v121 + 48);
        v68 = *(v67 + 4);
        v143 = *(v67 + 3);
        v144 = v68;
        v145 = *(v67 + 10);
        v69 = *(v67 + 2);
        v141 = *(v67 + 1);
        v142 = v69;
        v140 = *v67;
        if (!v33[2])
        {
          goto LABEL_53;
        }

        v70 = v66 + *(v121 + 64);
        v71 = *v70;
        v136 = *(v70 + 1);
        v137 = v71;
        v72 = v70[32];
        v73 = sub_1D87F0040(v66);
        if ((v74 & 1) == 0)
        {
          goto LABEL_53;
        }

        sub_1D87C1470(v33[7] + 40 * v73, &v139);
        sub_1D87C15B4(&v139, &v138);
        v75 = v66;
        v76 = v123;
        v77 = v123[12];
        v78 = v125;
        v79 = v125 + v123[16];
        v80 = v125 + v123[20];
        sub_1D87C15B4(&v138, v125);
        sub_1D8A50DC0(v75, v78 + v77, type metadata accessor for CVProcessorTaskDescriptor);
        v81 = v143;
        *(v79 + 32) = v142;
        *(v79 + 48) = v81;
        *(v79 + 64) = v144;
        *(v79 + 80) = v145;
        v82 = v141;
        *v79 = v140;
        *(v79 + 16) = v82;
        v83 = v136;
        *v80 = v137;
        *(v80 + 16) = v83;
        *(v80 + 32) = v72;
        (*v131)(v78, 0, 1, v76);
        v84 = v124;
        sub_1D881F6FC(v78, v124, &unk_1ECA67E30);
        sub_1D881F59C(&v140, &v138);
        sub_1D87A14E4(v75, &qword_1ECA63368);
        if ((*v130)(v84, 1, v76) == 1)
        {
          sub_1D87A14E4(v84, &unk_1ECA67E30);
          v61 = v127;
          v66 = v126;
          v64 = v132;
        }

        else
        {
          v85 = v84;
          v86 = v118;
          sub_1D881F6FC(v85, v118, &unk_1ECA67D70);
          sub_1D881F6FC(v86, v122, &unk_1ECA67D70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_1D87C7F08(0, v135[2] + 1, 1, v135);
          }

          v66 = v126;
          v64 = v132;
          v88 = v135[2];
          v87 = v135[3];
          if (v88 >= v87 >> 1)
          {
            v135 = sub_1D87C7F08(v87 > 1, v88 + 1, 1, v135);
          }

          v89 = v135;
          v135[2] = v88 + 1;
          sub_1D881F6FC(v122, v89 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v88, &unk_1ECA67D70);
          v61 = v127;
        }

        if (v134 == ++v65)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_50;
    }

    v135 = MEMORY[0x1E69E7CC0];
LABEL_45:

    v90 = v109;
    v91 = v128;
    (*(v61 + 48))(v128, v61);
    v92 = sub_1D8B15EA0();
    (*(*(v92 - 8) + 56))(v114, 1, 1, v92);
    v93 = v110;
    v94 = v108;
    v95 = AssociatedTypeWitness;
    (*(v110 + 16))(v108, v90, AssociatedTypeWitness);
    v96 = (*(v93 + 80) + 72) & ~*(v93 + 80);
    v97 = (v107 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v61;
    v100 = v98;
    v98[2] = 0.0;
    v98[3] = 0.0;
    *(v98 + 4) = v91;
    *(v98 + 5) = v99;
    v98[6] = v28;
    v101 = v135;
    *(v98 + 7) = v117;
    *(v98 + 8) = v101;
    (*(v93 + 32))(v98 + v96, v94, v95);
    v102 = (v100 + v97);
    v103 = v113;
    *v102 = v112;
    v102[1] = v103;

    sub_1D89AEF08(0, 0, v114, &unk_1D8B36A60, v100);
    (*(v93 + 8))(v90, v95);

    return v129;
  }
}

uint64_t sub_1D8A4FF5C(uint64_t a1)
{
  v2 = sub_1D8B13430();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AF0);
    v9 = sub_1D8B166E0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8A4F044(&unk_1ECA67D60, 255, MEMORY[0x1E6969AD0]);
      v16 = sub_1D8B15790();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D8A4F044(&qword_1ECA64AF8, 255, MEMORY[0x1E6969AD0]);
          v23 = sub_1D8B158C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A50284(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1D87C0ED8(a1, &a1[a2]);
  }

  sub_1D8B12D30();
  swift_allocObject();
  sub_1D8B12CF0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1D8B13020();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1D8A50348(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D8B166E0();
    v5 = 0;
    v6 = v4 + 56;
    v7 = a1 + 32;
    while (1)
    {
      v11 = *(v7 + v5);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v11);
      result = sub_1D8B16D80();
      v13 = ~(-1 << *(v4 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v6 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v4 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v6 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v4 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v4 + 16) = v10;
      }

      if (++v5 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A5047C(uint64_t a1, unint64_t a2)
{
  v66 = a2;
  v67 = a1;
  v64 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B151E0();
  v63 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v62 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = v58 - v7;
  v8 = sub_1D8B162B0();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  *(v2 + 16) = 1;
  type metadata accessor for M2MHandle();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v13;
  *(v2 + 32) = 0;
  v58[2] = sub_1D87C1314();
  v58[1] = "cv-frame-ignored";
  sub_1D8B155D0();
  v74[0] = MEMORY[0x1E69E7CC0];
  sub_1D8A4F044(&unk_1EE0E3740, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80);
  sub_1D881CF20(&qword_1EE0E3920, &qword_1ECA66E80);
  v14 = v2;
  sub_1D8B16570();
  (*(v59 + 104))(v10, *MEMORY[0x1E69E8090], v60);
  *(v2 + 40) = sub_1D8B162F0();
  swift_weakInit();
  v15 = MEMORY[0x1E69E7CC8];
  *(v2 + 88) = MEMORY[0x1E69E7CC8];
  v16 = (v2 + 88);
  *(v2 + 96) = MEMORY[0x1E69E7CD0];
  *(v2 + 104) = v15;
  v17 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  if (qword_1EE0E4558 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v4, qword_1EE0E4560);
    v19 = v63;
    v20 = *(v63 + 16);
    v20(v14 + v17, v18, v4);
    v21 = v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter;
    v22 = v61;
    v20(v61, v18, v4);
    v20(v21, v22, v4);
    v20(v62, v22, v4);
    sub_1D8B15140();
    (*(v19 + 8))(v22, v4);
    v23 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
    *(v14 + v23) = dispatch_semaphore_create(0);
    v24 = MEMORY[0x1E69E7CC0];
    *(v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_processors) = MEMORY[0x1E69E7CC0];
    v25 = v14 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
    v26 = sub_1D893E448(v24);
    *v25 = 0;
    *(v25 + 8) = v26;
    v27 = v21;
    v28 = v65;
    sub_1D8A50DC0(v27, v65, type metadata accessor for LoggingSignposter);
    LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.init", 18, 2u, 1, 0, v74);
    sub_1D8A50E28(v28, type metadata accessor for LoggingSignposter);
    v29 = *(v67 + 24);
    v30 = *(v67 + 32);
    v31 = *(v67 + 40);
    *(v14 + 56) = *(v67 + 16);
    *(v14 + 64) = v29;
    *(v14 + 72) = v30;
    *(v14 + 80) = v31;
    swift_weakAssign();
    v66 = v14;
    v32 = *(v14 + 56);
    v33 = *(v32 + 16);
    if (!v33)
    {

      v34 = MEMORY[0x1E69E7CC0];
      v4 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v4)
      {
LABEL_21:

        v51 = v66;
        v52 = *(v66 + 64);
        v53 = *(v66 + 72);
        v54 = *(v66 + 80);
        v69 = *(v66 + 56);
        LOBYTE(v70) = v52;
        v71 = v53;
        LOBYTE(v72) = v54;

        sub_1D8A3FBA0(&v69);

        v55 = v75;
        v56 = v76;
        __swift_project_boxed_opaque_existential_1(v74, v75);
        (*(v56 + 8))(v55, v56);
        sub_1D8A50E28(v67, type metadata accessor for SaliencyStreamConfiguration);
        __swift_destroy_boxed_opaque_existential_1(v74);
        return v51;
      }

      goto LABEL_7;
    }

    v34 = sub_1D87F3998(*(v32 + 16), 0);
    v35 = sub_1D8817790(&v69, v34 + 32, v33, v32);
    v65 = v73;

    sub_1D87977A0();
    if (v35 != v33)
    {
      break;
    }

    v4 = v34[2];
    if (!v4)
    {
      goto LABEL_21;
    }

LABEL_7:
    v14 = 0;
    v17 = 0xFFF0000000000000;
    while (v14 < v34[2])
    {
      v36 = *(v34 + v14 + 32);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *v16;
      v38 = v68;
      *v16 = 0x8000000000000000;
      v39 = sub_1D881F7DC(v36);
      v41 = v38[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_23;
      }

      v45 = v40;
      if (v38[3] < v44)
      {
        sub_1D8971854(v44, isUniquelyReferenced_nonNull_native);
        v39 = sub_1D881F7DC(v36);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_27;
        }

LABEL_16:
        v47 = v68;
        if (v45)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      v50 = v39;
      sub_1D89692F4();
      v39 = v50;
      v47 = v68;
      if (v45)
      {
LABEL_8:
        *(v47[7] + 8 * v39) = 0xFFF0000000000000;
        goto LABEL_9;
      }

LABEL_17:
      v47[(v39 >> 6) + 8] |= 1 << v39;
      *(v47[6] + v39) = v36;
      *(v47[7] + 8 * v39) = 0xFFF0000000000000;
      v48 = v47[2];
      v43 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v43)
      {
        goto LABEL_24;
      }

      v47[2] = v49;
LABEL_9:
      ++v14;
      *v16 = v47;
      swift_endAccess();
      if (v4 == v14)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  __break(1u);
LABEL_27:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D8A50D00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8A4247C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8A50DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A50E28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A50F20(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[4];
  v8 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8A450C4(a1, v7, v1 + v6, v8, v3, v4);
}

unint64_t sub_1D8A50FEC()
{
  result = qword_1ECA67620;
  if (!qword_1ECA67620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67620);
  }

  return result;
}

unint64_t sub_1D8A51040()
{
  result = qword_1ECA67628;
  if (!qword_1ECA67628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67628);
  }

  return result;
}

unint64_t sub_1D8A51094()
{
  result = qword_1ECA67630;
  if (!qword_1ECA67630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67630);
  }

  return result;
}

unint64_t sub_1D8A510E8()
{
  result = qword_1ECA67640;
  if (!qword_1ECA67640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67638);
    sub_1D8A4F044(&qword_1ECA67420, 255, type metadata accessor for DetectionRequest.Originator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67640);
  }

  return result;
}

unint64_t sub_1D8A511A0()
{
  result = qword_1ECA67650;
  if (!qword_1ECA67650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67650);
  }

  return result;
}

unint64_t sub_1D8A511F4()
{
  result = qword_1ECA67660;
  if (!qword_1ECA67660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67660);
  }

  return result;
}

unint64_t sub_1D8A51248()
{
  result = qword_1ECA67668;
  if (!qword_1ECA67668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67668);
  }

  return result;
}

unint64_t sub_1D8A5129C()
{
  result = qword_1ECA67670;
  if (!qword_1ECA67670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67670);
  }

  return result;
}

uint64_t sub_1D8A512F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A51358()
{
  result = qword_1ECA676B8;
  if (!qword_1ECA676B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67638);
    sub_1D8A4F044(&unk_1ECA676C0, 255, type metadata accessor for DetectionRequest.Originator);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA676B8);
  }

  return result;
}

unint64_t sub_1D8A51410()
{
  result = qword_1ECA676D0;
  if (!qword_1ECA676D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA676D0);
  }

  return result;
}

unint64_t sub_1D8A51464()
{
  result = qword_1ECA67700;
  if (!qword_1ECA67700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67700);
  }

  return result;
}

unint64_t sub_1D8A514B8()
{
  result = qword_1ECA67708;
  if (!qword_1ECA67708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67708);
  }

  return result;
}

unint64_t sub_1D8A5150C()
{
  result = qword_1ECA67710;
  if (!qword_1ECA67710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67710);
  }

  return result;
}

unint64_t sub_1D8A51560()
{
  result = qword_1ECA67718;
  if (!qword_1ECA67718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67718);
  }

  return result;
}

unint64_t sub_1D8A515B4()
{
  result = qword_1ECA67768;
  if (!qword_1ECA67768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67768);
  }

  return result;
}

unint64_t sub_1D8A51608()
{
  result = qword_1ECA67770;
  if (!qword_1ECA67770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67770);
  }

  return result;
}

unint64_t sub_1D8A5165C()
{
  result = qword_1ECA67778;
  if (!qword_1ECA67778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67778);
  }

  return result;
}

unint64_t sub_1D8A516B0()
{
  result = qword_1ECA67780;
  if (!qword_1ECA67780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67780);
  }

  return result;
}

unint64_t sub_1D8A51704()
{
  result = qword_1ECA67790;
  if (!qword_1ECA67790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67790);
  }

  return result;
}

unint64_t sub_1D8A51758()
{
  result = qword_1ECA677A0;
  if (!qword_1ECA677A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA634B0);
    sub_1D8A4F044(&unk_1EE0E5FF8, 255, type metadata accessor for TextDetectorResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677A0);
  }

  return result;
}

unint64_t sub_1D8A51810()
{
  result = qword_1ECA677D0;
  if (!qword_1ECA677D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677D0);
  }

  return result;
}

unint64_t sub_1D8A51864()
{
  result = qword_1ECA677E0;
  if (!qword_1ECA677E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA634B0);
    sub_1D8A4F044(&unk_1EE0E5FD0, 255, type metadata accessor for TextDetectorResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677E0);
  }

  return result;
}

unint64_t sub_1D8A5191C()
{
  result = qword_1ECA677F8;
  if (!qword_1ECA677F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA677F8);
  }

  return result;
}

unint64_t sub_1D8A51970()
{
  result = qword_1ECA67800;
  if (!qword_1ECA67800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67800);
  }

  return result;
}

unint64_t sub_1D8A519C4()
{
  result = qword_1ECA67810;
  if (!qword_1ECA67810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63D40);
    sub_1D8A4F044(&qword_1ECA67818, 255, type metadata accessor for DetectionRequest.Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67810);
  }

  return result;
}

unint64_t sub_1D8A51A7C()
{
  result = qword_1ECA67830;
  if (!qword_1ECA67830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67830);
  }

  return result;
}

unint64_t sub_1D8A51AD0()
{
  result = qword_1ECA67838;
  if (!qword_1ECA67838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63D40);
    sub_1D8A4F044(&qword_1ECA67840, 255, type metadata accessor for DetectionRequest.Annotation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67838);
  }

  return result;
}

unint64_t sub_1D8A51B88()
{
  result = qword_1ECA67850;
  if (!qword_1ECA67850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67850);
  }

  return result;
}

uint64_t sub_1D8A51BDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA67860);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A51C54()
{
  result = qword_1ECA67890;
  if (!qword_1ECA67890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67890);
  }

  return result;
}

unint64_t sub_1D8A51CA8()
{
  result = qword_1ECA678B8;
  if (!qword_1ECA678B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678B8);
  }

  return result;
}

unint64_t sub_1D8A51CFC()
{
  result = qword_1ECA678C0;
  if (!qword_1ECA678C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678C0);
  }

  return result;
}

unint64_t sub_1D8A51D50()
{
  result = qword_1ECA678C8;
  if (!qword_1ECA678C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678C8);
  }

  return result;
}

unint64_t sub_1D8A51DA4()
{
  result = qword_1ECA678D0;
  if (!qword_1ECA678D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA678D0);
  }

  return result;
}

unint64_t sub_1D8A51DF8()
{
  result = qword_1ECA67920;
  if (!qword_1ECA67920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67920);
  }

  return result;
}

unint64_t sub_1D8A51E4C()
{
  result = qword_1ECA67928;
  if (!qword_1ECA67928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67928);
  }

  return result;
}

unint64_t sub_1D8A51EA0()
{
  result = qword_1ECA67930;
  if (!qword_1ECA67930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67930);
  }

  return result;
}

unint64_t sub_1D8A51EF4()
{
  result = qword_1ECA67938;
  if (!qword_1ECA67938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67938);
  }

  return result;
}

unint64_t sub_1D8A51F48()
{
  result = qword_1ECA67940;
  if (!qword_1ECA67940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67940);
  }

  return result;
}

unint64_t sub_1D8A51FBC()
{
  result = qword_1ECA67988;
  if (!qword_1ECA67988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67988);
  }

  return result;
}

unint64_t sub_1D8A52010()
{
  result = qword_1ECA679B0;
  if (!qword_1ECA679B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679B0);
  }

  return result;
}

unint64_t sub_1D8A52064()
{
  result = qword_1ECA679C8;
  if (!qword_1ECA679C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679C8);
  }

  return result;
}

uint64_t sub_1D8A520B8(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA679B8);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8A52148()
{
  result = qword_1ECA679E0;
  if (!qword_1ECA679E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA679E0);
  }

  return result;
}

uint64_t sub_1D8A5219C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  v44 = *(v13 + 56);
  v45 = v13 + 56;
  v44(v11, 1, 1, v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;
  v14[5] = a1;

  v46 = sub_1D89AF1B4(0, 0, v11, &unk_1D8B36A08, v14);
  v15 = *(a1 + 16);
  if (!v15)
  {
  }

  v16 = (a1 + 32);
  v42 = (v13 + 8);
  v43 = (v13 + 48);
  while (1)
  {
    v17 = *v16;
    v47 = v16 + 1;
    v18 = v48;
    v44(v48, 1, 1, v12);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = v46;
    *(v19 + 40) = v17;
    sub_1D87A0E38(v18, v7, &unk_1ECA675E0);
    LODWORD(v18) = (*v43)(v7, 1, v12);

    if (v18 == 1)
    {
      sub_1D87A14E4(v7, &unk_1ECA675E0);
    }

    else
    {
      sub_1D8B15E90();
      (*v42)(v7, v12);
    }

    v20 = v12;
    v21 = *(v19 + 16);
    swift_unknownObjectRetain();

    if (v21)
    {
      swift_getObjectType();
      v22 = sub_1D8B15E00();
      v24 = v23;
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    sub_1D87A14E4(v48, &unk_1ECA675E0);
    if (v24 | v22)
    {
      v50 = 0;
      v51 = 0;
      v52 = v22;
      v53 = v24;
    }

    v25 = swift_task_create();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v2 + 104);
    v27 = v49;
    *(v2 + 104) = 0x8000000000000000;
    v28 = sub_1D881F7DC(v17);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = v28;
        sub_1D8969464();
        v28 = v39;
      }
    }

    else
    {
      sub_1D8971FA0(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1D881F7DC(v17);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_25;
      }
    }

    v12 = v20;
    v36 = v49;
    if (v34)
    {
      *(v49[7] + 8 * v28) = v25;
    }

    else
    {
      v49[(v28 >> 6) + 8] |= 1 << v28;
      *(v36[6] + v28) = v17;
      *(v36[7] + 8 * v28) = v25;
      v37 = v36[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_24;
      }

      v36[2] = v38;
    }

    *(v2 + 104) = v36;
    swift_endAccess();
    --v15;
    v16 = v47;
    if (!v15)
    {
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

uint64_t sub_1D8A52644()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.prepare", 21, 2u, 1, 0, v18);
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v16 = v4;
  v7 = sub_1D87F3998(v6, 0);
  v8 = sub_1D8817790(&v17, v7 + 32, v6, v5);
  swift_bridgeObjectRetain_n();
  sub_1D87977A0();
  if (v8 == v6)
  {
    v4 = v16;
LABEL_5:
    v17 = v7;
    sub_1D8A4B060(&v17);

    v9 = v17;
    sub_1D8A5219C(v17);
    swift_beginAccess();
    v10 = *(v1 + 104);
    v11 = sub_1D8B15EA0();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v9;
    v12[5] = v10;
    v12[6] = v1;

    sub_1D89AEF08(0, 0, v4, &unk_1D8B369F8, v12);

    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v14 + 8))(v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D8A528C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *v1 = *(*(v2 + 104) + 16) != 0;
  return result;
}

unint64_t sub_1D8A5297C()
{
  result = qword_1EE0E6B28;
  if (!qword_1EE0E6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E6B28);
  }

  return result;
}

uint64_t sub_1D8A52A68(void *a1)
{
  a1[1] = sub_1D8A4F044(&qword_1ECA67880, 255, type metadata accessor for DetectionRequest);
  a1[2] = sub_1D8A4F044(&qword_1ECA67858, 255, type metadata accessor for DetectionRequest);
  result = sub_1D8A4F044(qword_1EE0E6980, 255, type metadata accessor for DetectionRequest);
  a1[3] = result;
  return result;
}

unint64_t sub_1D8A52B70()
{
  result = qword_1ECA67A00;
  if (!qword_1ECA67A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A00);
  }

  return result;
}

unint64_t sub_1D8A52BC8()
{
  result = qword_1ECA67A08;
  if (!qword_1ECA67A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A08);
  }

  return result;
}

unint64_t sub_1D8A52C60(void *a1)
{
  a1[1] = sub_1D88C92F4();
  a1[2] = sub_1D88C91A4();
  result = sub_1D8A52C98();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8A52C98()
{
  result = qword_1ECA67A30;
  if (!qword_1ECA67A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67A30);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore7CVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8A52D08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A52D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A52D94(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1D8A52DF8()
{
  type metadata accessor for DetectionRequest.Originator(319);
  if (v0 <= 0x3F)
  {
    sub_1D8A52EAC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8A52EAC()
{
  if (!qword_1EE0E3840)
  {
    type metadata accessor for DetectionRequest.Annotation(255);
    sub_1D8A4F044(&qword_1EE0E6B20, 255, type metadata accessor for DetectionRequest.Annotation);
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3840);
    }
  }
}

void sub_1D8A52F44()
{
  sub_1D8B13240();
  if (v0 <= 0x3F)
  {
    sub_1D8A52FCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A52FCC()
{
  if (!qword_1ECA67A40)
  {
    type metadata accessor for DetectionRequest.Originator(255);
    sub_1D8A4F044(qword_1EE0E6A48, 255, type metadata accessor for DetectionRequest.Originator);
    v0 = sub_1D8B16080();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA67A40);
    }
  }
}

void sub_1D8A53064()
{
  sub_1D8A5A194(319, &unk_1EE0E39A8, type metadata accessor for TextDetectorResult);
  if (v0 <= 0x3F)
  {
    sub_1D8A530FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8A530FC()
{
  if (!qword_1ECA67A50)
  {
    type metadata accessor for GroundingMD6_1Descriptor();
    sub_1D8A4F044(&unk_1ECA67A58, 255, type metadata accessor for GroundingMD6_1Descriptor);
    v0 = type metadata accessor for GroundingResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA67A50);
    }
  }
}

void sub_1D8A531CC()
{
  type metadata accessor for DetectionRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1D8A53250();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A53250()
{
  if (!qword_1EE0E39F0)
  {
    v0 = sub_1D8B15DB0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E39F0);
    }
  }
}

uint64_t sub_1D8A532C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *(a1 + 64);
  v7 = *(a1 + 80);
  v14 = (*(a3 + 24) + **(a3 + 24));
  v8 = swift_task_alloc();
  v9 = *(a1 + 16);
  *(v3 + 16) = *a1;
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  *(v3 + 32) = v9;
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v13;
  *(v3 + 96) = v7;
  *(v3 + 104) = v8;
  *v8 = v3;
  v8[1] = sub_1D8A53418;

  return v14(v3 + 16, a2, a3);
}

uint64_t sub_1D8A53418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D8A5350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v10;
  v15 = *(a5 + 64);
  v23 = *a6;
  v16 = *(a6 + 2);
  v17 = *(a6 + 3);
  v18 = *(a6 + 32);
  v24 = (*(a10 + 32) + **(a10 + 32));
  v19 = swift_task_alloc();
  v20 = *(a5 + 16);
  *(v13 + 16) = *a5;
  v21 = *(a5 + 48);
  *(v13 + 48) = *(a5 + 32);
  *(v13 + 64) = v21;
  *(v13 + 128) = v19;
  *(v13 + 32) = v20;
  *(v13 + 80) = v15;
  *(v13 + 88) = v23;
  *(v13 + 104) = v16;
  *(v13 + 112) = v17;
  *(v13 + 120) = v18;
  *v19 = v13;
  v19[1] = sub_1D8A536AC;

  return v24(a1, a2, a3, a4, v13 + 16, v13 + 88, a7, a8, a9, a10);
}

uint64_t sub_1D8A536AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CVCoordinationRegime(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CVCoordinationRegime(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A53840(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D8A53858(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8A538DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8A53924(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8A5399C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A539D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A53A24(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D8A53A80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1D8A53AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresight(actionPin:)(uint64_t a1)
{
  v6 = (*(*v1 + 520) + **(*v1 + 520));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresight(bundle:)(uint64_t a1)
{
  v6 = (*(*v1 + 528) + **(*v1 + 528));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of CVDebugArtifactManager.recordBoresightClassification(_:timestamp:)(uint64_t a1, double a2)
{
  v9 = (*(*v2 + 536) + **(*v2 + 536));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D886553C;
  v7.n128_f64[0] = a2;

  return v9(a1, v7);
}

uint64_t dispatch thunk of CVDebugArtifactManager.collectStreamingState()(uint64_t a1)
{
  v6 = (*(*v1 + 544) + **(*v1 + 544));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D886553C;

  return v6(a1);
}

uint64_t dispatch thunk of M2MHandle.scaler(inputPixelBuffer:outputPixelBuffer:rotation:crop:destinationRect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  v6 = *(*v4 + 200);
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = v5;
  return v6(a1, a2, a3, v9);
}

uint64_t sub_1D8A541C0()
{
  result = sub_1D8B151E0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LoggingSignposter(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of CVCoordinator.testingOnlyAwaitAllLoaded()()
{
  v4 = (*(*v0 + 416) + **(*v0 + 416));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D886553C;

  return v4();
}

uint64_t sub_1D8A544E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8A54528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore29CVProcessorInputConfigurationV11ContentModeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8A54754(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A547B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8A5489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8A54940()
{
  if (!qword_1EE0E68C0[0])
  {
    type metadata accessor for DetectionRequest(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE0E68C0);
    }
  }
}

unint64_t sub_1D8A549FC()
{
  result = qword_1ECA67AF8;
  if (!qword_1ECA67AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67AF8);
  }

  return result;
}

unint64_t sub_1D8A54A54()
{
  result = qword_1EE0E5030;
  if (!qword_1EE0E5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E5030);
  }

  return result;
}

unint64_t sub_1D8A54AAC()
{
  result = qword_1ECA67B08;
  if (!qword_1ECA67B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B08);
  }

  return result;
}

unint64_t sub_1D8A54B04()
{
  result = qword_1ECA67B10;
  if (!qword_1ECA67B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B10);
  }

  return result;
}

unint64_t sub_1D8A54B5C()
{
  result = qword_1ECA67B18;
  if (!qword_1ECA67B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B18);
  }

  return result;
}

unint64_t sub_1D8A54BB4()
{
  result = qword_1ECA67B20;
  if (!qword_1ECA67B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B20);
  }

  return result;
}

unint64_t sub_1D8A54C0C()
{
  result = qword_1ECA67B28;
  if (!qword_1ECA67B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B28);
  }

  return result;
}

unint64_t sub_1D8A54C64()
{
  result = qword_1ECA67B30;
  if (!qword_1ECA67B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B30);
  }

  return result;
}

unint64_t sub_1D8A54CBC()
{
  result = qword_1ECA67B38;
  if (!qword_1ECA67B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B38);
  }

  return result;
}

unint64_t sub_1D8A54D14()
{
  result = qword_1ECA67B40;
  if (!qword_1ECA67B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B40);
  }

  return result;
}

unint64_t sub_1D8A54D6C()
{
  result = qword_1ECA67B48;
  if (!qword_1ECA67B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B48);
  }

  return result;
}

unint64_t sub_1D8A54DC4()
{
  result = qword_1ECA67B50;
  if (!qword_1ECA67B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B50);
  }

  return result;
}

unint64_t sub_1D8A54E1C()
{
  result = qword_1ECA67B58;
  if (!qword_1ECA67B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B58);
  }

  return result;
}

unint64_t sub_1D8A54E74()
{
  result = qword_1ECA67B60;
  if (!qword_1ECA67B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B60);
  }

  return result;
}

unint64_t sub_1D8A54ECC()
{
  result = qword_1ECA67B68;
  if (!qword_1ECA67B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B68);
  }

  return result;
}

unint64_t sub_1D8A54F24()
{
  result = qword_1ECA67B70;
  if (!qword_1ECA67B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B70);
  }

  return result;
}

unint64_t sub_1D8A54F7C()
{
  result = qword_1ECA67B78;
  if (!qword_1ECA67B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B78);
  }

  return result;
}

unint64_t sub_1D8A54FD4()
{
  result = qword_1ECA67B80;
  if (!qword_1ECA67B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B80);
  }

  return result;
}

unint64_t sub_1D8A5502C()
{
  result = qword_1ECA67B88;
  if (!qword_1ECA67B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B88);
  }

  return result;
}

unint64_t sub_1D8A55084()
{
  result = qword_1ECA67B90;
  if (!qword_1ECA67B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B90);
  }

  return result;
}

unint64_t sub_1D8A550DC()
{
  result = qword_1ECA67B98;
  if (!qword_1ECA67B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67B98);
  }

  return result;
}

unint64_t sub_1D8A55134()
{
  result = qword_1ECA67BA0;
  if (!qword_1ECA67BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BA0);
  }

  return result;
}

unint64_t sub_1D8A5518C()
{
  result = qword_1ECA67BA8;
  if (!qword_1ECA67BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BA8);
  }

  return result;
}

unint64_t sub_1D8A551E4()
{
  result = qword_1ECA67BB0;
  if (!qword_1ECA67BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BB0);
  }

  return result;
}

unint64_t sub_1D8A5523C()
{
  result = qword_1ECA67BB8;
  if (!qword_1ECA67BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BB8);
  }

  return result;
}

unint64_t sub_1D8A55294()
{
  result = qword_1ECA67BC0;
  if (!qword_1ECA67BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BC0);
  }

  return result;
}

unint64_t sub_1D8A552EC()
{
  result = qword_1ECA67BC8;
  if (!qword_1ECA67BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BC8);
  }

  return result;
}

unint64_t sub_1D8A55344()
{
  result = qword_1ECA67BD0;
  if (!qword_1ECA67BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BD0);
  }

  return result;
}

unint64_t sub_1D8A5539C()
{
  result = qword_1ECA67BD8;
  if (!qword_1ECA67BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BD8);
  }

  return result;
}

unint64_t sub_1D8A553F4()
{
  result = qword_1ECA67BE0;
  if (!qword_1ECA67BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BE0);
  }

  return result;
}

unint64_t sub_1D8A5544C()
{
  result = qword_1ECA67BE8;
  if (!qword_1ECA67BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BE8);
  }

  return result;
}

unint64_t sub_1D8A554A4()
{
  result = qword_1ECA67BF0;
  if (!qword_1ECA67BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BF0);
  }

  return result;
}

unint64_t sub_1D8A554FC()
{
  result = qword_1ECA67BF8;
  if (!qword_1ECA67BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67BF8);
  }

  return result;
}

unint64_t sub_1D8A55554()
{
  result = qword_1ECA67C00;
  if (!qword_1ECA67C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C00);
  }

  return result;
}

unint64_t sub_1D8A555AC()
{
  result = qword_1ECA67C08;
  if (!qword_1ECA67C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C08);
  }

  return result;
}

unint64_t sub_1D8A55604()
{
  result = qword_1ECA67C10;
  if (!qword_1ECA67C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C10);
  }

  return result;
}

unint64_t sub_1D8A5565C()
{
  result = qword_1ECA67C18;
  if (!qword_1ECA67C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C18);
  }

  return result;
}

unint64_t sub_1D8A556B4()
{
  result = qword_1ECA67C20;
  if (!qword_1ECA67C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C20);
  }

  return result;
}

unint64_t sub_1D8A5570C()
{
  result = qword_1ECA67C28;
  if (!qword_1ECA67C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C28);
  }

  return result;
}

unint64_t sub_1D8A55764()
{
  result = qword_1ECA67C30;
  if (!qword_1ECA67C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C30);
  }

  return result;
}

unint64_t sub_1D8A557BC()
{
  result = qword_1ECA67C38;
  if (!qword_1ECA67C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C38);
  }

  return result;
}

unint64_t sub_1D8A55814()
{
  result = qword_1ECA67C40;
  if (!qword_1ECA67C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C40);
  }

  return result;
}

unint64_t sub_1D8A5586C()
{
  result = qword_1ECA67C48;
  if (!qword_1ECA67C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C48);
  }

  return result;
}

unint64_t sub_1D8A558C4()
{
  result = qword_1ECA67C50;
  if (!qword_1ECA67C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C50);
  }

  return result;
}

unint64_t sub_1D8A5591C()
{
  result = qword_1ECA67C58;
  if (!qword_1ECA67C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C58);
  }

  return result;
}

unint64_t sub_1D8A55974()
{
  result = qword_1ECA67C60;
  if (!qword_1ECA67C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C60);
  }

  return result;
}

unint64_t sub_1D8A559CC()
{
  result = qword_1ECA67C68;
  if (!qword_1ECA67C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C68);
  }

  return result;
}

unint64_t sub_1D8A55A24()
{
  result = qword_1ECA67C70;
  if (!qword_1ECA67C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C70);
  }

  return result;
}

unint64_t sub_1D8A55A7C()
{
  result = qword_1ECA67C78;
  if (!qword_1ECA67C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C78);
  }

  return result;
}

unint64_t sub_1D8A55AD4()
{
  result = qword_1ECA67C80;
  if (!qword_1ECA67C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C80);
  }

  return result;
}

unint64_t sub_1D8A55B2C()
{
  result = qword_1ECA67C88;
  if (!qword_1ECA67C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C88);
  }

  return result;
}

unint64_t sub_1D8A55B84()
{
  result = qword_1ECA67C90;
  if (!qword_1ECA67C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C90);
  }

  return result;
}

unint64_t sub_1D8A55BDC()
{
  result = qword_1ECA67C98;
  if (!qword_1ECA67C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67C98);
  }

  return result;
}

unint64_t sub_1D8A55C34()
{
  result = qword_1ECA67CA0;
  if (!qword_1ECA67CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CA0);
  }

  return result;
}

unint64_t sub_1D8A55C8C()
{
  result = qword_1ECA67CA8;
  if (!qword_1ECA67CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CA8);
  }

  return result;
}

unint64_t sub_1D8A55CE4()
{
  result = qword_1ECA67CB0;
  if (!qword_1ECA67CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CB0);
  }

  return result;
}

unint64_t sub_1D8A55D3C()
{
  result = qword_1ECA67CB8;
  if (!qword_1ECA67CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CB8);
  }

  return result;
}

unint64_t sub_1D8A55D94()
{
  result = qword_1ECA67CC0;
  if (!qword_1ECA67CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CC0);
  }

  return result;
}

unint64_t sub_1D8A55DEC()
{
  result = qword_1ECA67CC8;
  if (!qword_1ECA67CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CC8);
  }

  return result;
}

unint64_t sub_1D8A55E44()
{
  result = qword_1ECA67CD0;
  if (!qword_1ECA67CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CD0);
  }

  return result;
}

unint64_t sub_1D8A55E9C()
{
  result = qword_1ECA67CD8;
  if (!qword_1ECA67CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CD8);
  }

  return result;
}

unint64_t sub_1D8A55EF4()
{
  result = qword_1ECA67CE0;
  if (!qword_1ECA67CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CE0);
  }

  return result;
}

unint64_t sub_1D8A55F4C()
{
  result = qword_1ECA67CE8;
  if (!qword_1ECA67CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CE8);
  }

  return result;
}

unint64_t sub_1D8A55FA4()
{
  result = qword_1ECA67CF0;
  if (!qword_1ECA67CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CF0);
  }

  return result;
}

unint64_t sub_1D8A55FFC()
{
  result = qword_1ECA67CF8;
  if (!qword_1ECA67CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67CF8);
  }

  return result;
}

unint64_t sub_1D8A56054()
{
  result = qword_1ECA67D00;
  if (!qword_1ECA67D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D00);
  }

  return result;
}

unint64_t sub_1D8A560AC()
{
  result = qword_1ECA67D08;
  if (!qword_1ECA67D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D08);
  }

  return result;
}

unint64_t sub_1D8A56104()
{
  result = qword_1ECA67D10;
  if (!qword_1ECA67D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D10);
  }

  return result;
}

unint64_t sub_1D8A5615C()
{
  result = qword_1ECA67D18;
  if (!qword_1ECA67D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D18);
  }

  return result;
}

unint64_t sub_1D8A561B4()
{
  result = qword_1ECA67D20;
  if (!qword_1ECA67D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D20);
  }

  return result;
}

unint64_t sub_1D8A5620C()
{
  result = qword_1ECA67D28;
  if (!qword_1ECA67D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D28);
  }

  return result;
}

unint64_t sub_1D8A56264()
{
  result = qword_1ECA67D30;
  if (!qword_1ECA67D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67D30);
  }

  return result;
}

uint64_t sub_1D8A562B8(uint64_t a1)
{
  v2 = sub_1D8B15270();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63EE0);
    v9 = sub_1D8B166E0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8A4F044(&qword_1EE0E3A80, 255, MEMORY[0x1E69E0220]);
      v16 = sub_1D8B15790();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D8A4F044(&qword_1EE0E3A78, 255, MEMORY[0x1E69E0220]);
          v23 = sub_1D8B158C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A565E0(uint64_t a1)
{
  v2 = sub_1D8B14510();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DC0);
    v9 = sub_1D8B166E0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8A4F044(&qword_1ECA667D8, 255, MEMORY[0x1E69C9BC8]);
      v16 = sub_1D8B15790();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D8A4F044(&unk_1ECA67DD0, 255, MEMORY[0x1E69C9BC8]);
          v23 = sub_1D8B158C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

CGColorRef sub_1D8A56908()
{
  v0 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;
  v1 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;
  v2 = vcvtd_n_f64_u64(sub_1D8A4C6E8(0x20000000000001uLL), 0x35uLL) + 0.0;

  return CGColorCreateGenericRGB(v0, v1, v2, 1.0);
}

uint64_t sub_1D8A56988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67E18);
    v3 = sub_1D8B166E0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_1D8B15970();
      sub_1D8B16D20();
      v27 = v7;
      sub_1D8B15A60();
      v8 = sub_1D8B16D80();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_1D8B15970();
        v18 = v17;
        if (v16 == sub_1D8B15970() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_1D8B16BA0();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A56B7C(uint64_t a1)
{
  v2 = sub_1D8B13FA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E00);
    v9 = sub_1D8B166E0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D8A4F044(&qword_1ECA649A0, 255, MEMORY[0x1E69A1168]);
      v16 = sub_1D8B15790();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D8A4F044(&qword_1ECA67E10, 255, MEMORY[0x1E69A1168]);
          v23 = sub_1D8B158C0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D8A56EA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D8B47DE0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D69676572 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496B63617274 && a2 == 0xEF7265696669746ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73756F69726176 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8A5706C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69646E756F7267 && a2 == 0xEF746C7573655267 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B47A60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8A57194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746365746564 && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E696769726FLL && a2 == 0xEA0000000000726FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746F6E6E61 && a2 == 0xEB00000000736E6FLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B47E00 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8A57368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E616D65446E6FLL && a2 == 0xEF65636E65646143)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8A57488(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B47E20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379726F74636166 && a2 == 0xEF73676E69747465 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536172656D6163 && a2 == 0xEE0073676E697474 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C4170696B73 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A57608(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B47E40 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D8B47E20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B47E60 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D8B47E80 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A577C0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 56);
  v9 = *(v2 + 64);
  v11 = *(v2 + 72);
  v10 = *(v2 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8A46A7C(v8, a1, a2, v5, v6, v7, v9, v11, v10);
}

uint64_t sub_1D8A578C4(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v8 = (*(*(v4 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1[3];
  v15 = v1[2];
  v10 = v1[6];
  v11 = *(v1 + ((v9 + 135) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8A475FC(a1, v11, v15, v14, v10, v1 + v6, v1 + v7, v1 + v8, v1 + v9);
}

uint64_t sub_1D8A57B18(uint64_t a1)
{
  v156 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v156);
  v3 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1D8B13240();
  v4 = *(v170 - 8);
  v5 = MEMORY[0x1EEE9AC00](v170);
  v166 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v168 = &v156 - v7;
  v188 = type metadata accessor for DetectionRequest.Originator(0);
  v8 = MEMORY[0x1EEE9AC00](v188);
  v163 = (&v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x1EEE9AC00](v8);
  v172 = &v156 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v156 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v162 = (&v156 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v161 = &v156 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v167 = &v156 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v158 = (&v156 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v157 = &v156 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v164 = &v156 - v25;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64FB0);
  v26 = MEMORY[0x1EEE9AC00](v181);
  v180 = &v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v176 = &v156 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v178 = &v156 - v30;
  v31 = type metadata accessor for DetectionRequest(0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v186 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v185 = &v156 - v34;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E90);
  MEMORY[0x1EEE9AC00](v182);
  v36 = &v156 - v35;
  v189 = type metadata accessor for ProcessorState(0);
  v37 = *(v189 - 8);
  v38 = MEMORY[0x1EEE9AC00](v189);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v187 = &v156 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v191 = &v156 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v156 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v196 = &v156 - v47;
  v48 = *(a1 + 16);
  if (!v48)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v190 = v46;
  v160 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E30);
  v49 = sub_1D8B166E0();
  v50 = 0;
  v194 = v49 + 56;
  v174 = a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
  v195 = *(v37 + 72);
  v169 = (v4 + 8);
  v165 = (v4 + 32);
  v51 = v49;
  v52 = v182;
  v192 = v49;
  v171 = v3;
  v184 = v31;
  v173 = v48;
  while (1)
  {
    v177 = v50;
    sub_1D8A50DC0(v174 + v195 * v50, v196, type metadata accessor for ProcessorState);
    sub_1D8B16D20();
    sub_1D8A36918(&v198);
    v53 = sub_1D8B16D80();
    v193 = ~(-1 << *(v51 + 32));
    v54 = v53 & v193;
    v55 = (v53 & v193) >> 6;
    v56 = *(v194 + 8 * v55);
    v57 = 1 << (v53 & v193);
    if ((v57 & v56) != 0)
    {
      break;
    }

LABEL_4:
    *(v194 + 8 * v55) = v56 | v57;
    result = sub_1D8A512F0(v196, *(v51 + 48) + v54 * v195, type metadata accessor for ProcessorState);
    v59 = *(v51 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      __break(1u);
      goto LABEL_156;
    }

    *(v51 + 16) = v61;
LABEL_6:
    v50 = v177 + 1;
    if (v177 + 1 == v173)
    {
      return v51;
    }
  }

  while (1)
  {
    sub_1D8A50DC0(*(v51 + 48) + v54 * v195, v45, type metadata accessor for ProcessorState);
    v63 = &v36[*(v52 + 48)];
    sub_1D8A50DC0(v45, v36, type metadata accessor for ProcessorState);
    sub_1D8A50DC0(v196, v63, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v65 = v191;
      sub_1D8A50DC0(v36, v191, type metadata accessor for ProcessorState);
      if (!swift_getEnumCaseMultiPayload())
      {
        v92 = v63;
        v93 = v185;
        sub_1D8A512F0(v92, v185, type metadata accessor for DetectionRequest);
        if (*v65 != *v93)
        {
          goto LABEL_141;
        }

        v94 = v184[5];
        v95 = v178;
        v96 = v178 + *(v181 + 48);
        sub_1D8A50DC0(&v191[v94], v178, type metadata accessor for DetectionRequest.Originator);
        sub_1D8A50DC0(&v185[v94], v96, type metadata accessor for DetectionRequest.Originator);
        v97 = swift_getEnumCaseMultiPayload();
        if (v97 > 1)
        {
          if (v97 == 2)
          {
            v127 = v157;
            sub_1D8A50DC0(v95, v157, type metadata accessor for DetectionRequest.Originator);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v128 = v127;
              v129 = *v165;
              v130 = v168;
              v131 = v170;
              (*v165)(v168, v128, v170);
              v132 = v166;
              v129(v166, v96, v131);
              LODWORD(v183) = sub_1D8B13200();
              v133 = *v169;
              v52 = v182;
              (*v169)(v132, v131);
              v134 = v130;
              v3 = v171;
              v133(v134, v131);
              sub_1D8A50E28(v95, type metadata accessor for DetectionRequest.Originator);
              v51 = v192;
              if ((v183 & 1) == 0)
              {
                goto LABEL_141;
              }

              goto LABEL_136;
            }

            (*v169)(v127, v170);
            goto LABEL_92;
          }

          if (v97 == 3)
          {
            v98 = v158;
            sub_1D8A50DC0(v95, v158, type metadata accessor for DetectionRequest.Originator);
            v99 = *v98;
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v100 = sub_1D894FA18(v99, *v96);

              sub_1D8A50E28(v95, type metadata accessor for DetectionRequest.Originator);
              v51 = v192;
              if ((v100 & 1) == 0)
              {
                goto LABEL_141;
              }

LABEL_136:
              if ((sub_1D894CAAC(*&v191[v184[6]], *&v185[v184[6]]) & 1) == 0)
              {
                goto LABEL_141;
              }

              v153 = v191;
              v154 = CGRectEqualToRect(*&v191[v184[7]], *&v185[v184[7]]);
              sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
              if (v154 && *(v153 + v184[8]) == *&v185[v184[8]])
              {
                sub_1D8A50E28(v185, type metadata accessor for DetectionRequest);
                sub_1D8A50E28(v153, type metadata accessor for DetectionRequest);
                goto LABEL_149;
              }

LABEL_142:
              sub_1D8A50E28(v185, type metadata accessor for DetectionRequest);
              v151 = v153;
              goto LABEL_143;
            }

LABEL_92:
            v51 = v192;
LABEL_93:
            sub_1D87A14E4(v178, &unk_1ECA64FB0);
            goto LABEL_141;
          }

          v135 = swift_getEnumCaseMultiPayload();
          v51 = v192;
          if (v135 != 4)
          {
            goto LABEL_93;
          }

LABEL_135:
          sub_1D8A50E28(v178, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_136;
        }

        if (!v97)
        {
          v101 = swift_getEnumCaseMultiPayload();
          v51 = v192;
          if (v101)
          {
            goto LABEL_93;
          }

          sub_1D8A50E28(v96, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_135;
        }

        v136 = v164;
        sub_1D8A50DC0(v95, v164, type metadata accessor for DetectionRequest.Originator);
        v137 = *v136;
        v138 = swift_getEnumCaseMultiPayload();
        v51 = v192;
        if (v138 != 1)
        {
          goto LABEL_93;
        }

        v139 = *v96;
        v140 = *(v96 + 4);
        if (*(v164 + 4))
        {
          if (*(v164 + 4) != 1)
          {
            sub_1D8A50E28(v178, type metadata accessor for DetectionRequest.Originator);
            if (v139 == 0.0 && v140 == 2)
            {
              goto LABEL_136;
            }

LABEL_141:
            sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
            v153 = v191;
            goto LABEL_142;
          }

          if (v140 != 1)
          {
            goto LABEL_140;
          }
        }

        else if (v140)
        {
          goto LABEL_140;
        }

        if (v137 == v139)
        {
          goto LABEL_135;
        }

LABEL_140:
        sub_1D8A50E28(v178, type metadata accessor for DetectionRequest.Originator);
        goto LABEL_141;
      }

      sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
      v62 = type metadata accessor for DetectionRequest;
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v74 = v3;
    v75 = v190;
    sub_1D8A50DC0(v36, v190, type metadata accessor for ProcessorState);
    v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40) + 48);
    v77 = *&v75[v76 + 8];
    v183 = *&v75[v76];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v79 = *(v63 + v76);
      v78 = *(v63 + v76 + 8);
      v80 = v63;
      v81 = v186;
      sub_1D8A512F0(v80, v186, type metadata accessor for DetectionRequest);
      if (*v75 != *v81)
      {

        v3 = v74;
        v51 = v192;
        goto LABEL_127;
      }

      v82 = v75;
      v175 = v79;
      v179 = v78;
      v83 = v74;
      v84 = v184[5];
      v85 = v180;
      v86 = v180 + *(v181 + 48);
      sub_1D8A50DC0(&v82[v84], v180, type metadata accessor for DetectionRequest.Originator);
      sub_1D8A50DC0(&v186[v84], v86, type metadata accessor for DetectionRequest.Originator);
      v87 = swift_getEnumCaseMultiPayload();
      if (v87 > 1)
      {
        v88 = v172;
        v51 = v192;
        if (v87 != 2)
        {
          v3 = v83;
          if (v87 == 3)
          {
            v89 = v180;
            v90 = v163;
            sub_1D8A50DC0(v180, v163, type metadata accessor for DetectionRequest.Originator);
            v91 = *v90;
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              v159 = sub_1D894FA18(v91, *v86);

              sub_1D8A50E28(v89, type metadata accessor for DetectionRequest.Originator);
              goto LABEL_61;
            }

LABEL_86:

LABEL_88:
            v52 = v182;
LABEL_89:
            sub_1D87A14E4(v180, &unk_1ECA64FB0);
LABEL_127:
            sub_1D8A50E28(v190, type metadata accessor for DetectionRequest);
            sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
LABEL_128:
            v151 = v186;
LABEL_143:
            sub_1D8A50E28(v151, type metadata accessor for DetectionRequest);
LABEL_144:
            sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
            goto LABEL_11;
          }

          v120 = swift_getEnumCaseMultiPayload();
          v52 = v182;
          if (v120 != 4)
          {

            goto LABEL_89;
          }

LABEL_116:
          sub_1D8A50E28(v180, type metadata accessor for DetectionRequest.Originator);
LABEL_117:
          v147 = v184;
          v148 = v190;
          v149 = v186;
          if ((sub_1D894CAAC(*&v190[v184[6]], *&v186[v184[6]]) & 1) == 0 || !CGRectEqualToRect(*(v148 + v147[7]), *(v149 + v147[7])))
          {

            v3 = v171;
            goto LABEL_127;
          }

          if (*(v148 + v147[8]) != *(v149 + v147[8]))
          {
            sub_1D8A50E28(v45, type metadata accessor for ProcessorState);

            sub_1D8A50E28(v148, type metadata accessor for DetectionRequest);
            v3 = v171;
            goto LABEL_128;
          }

          sub_1D8A50E28(v148, type metadata accessor for DetectionRequest);
          if (v183 == v175 && v77 == v179)
          {

            sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
            sub_1D8A50E28(v186, type metadata accessor for DetectionRequest);
            v3 = v171;
LABEL_152:
            sub_1D8A50E28(v196, type metadata accessor for ProcessorState);
            v155 = v36;
            goto LABEL_150;
          }

          v150 = sub_1D8B16BA0();

          sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
          sub_1D8A50E28(v186, type metadata accessor for DetectionRequest);
          v3 = v171;
          if (v150)
          {
            goto LABEL_152;
          }

          goto LABEL_144;
        }

        sub_1D8A50DC0(v180, v172, type metadata accessor for DetectionRequest.Originator);
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          (*v169)(v88, v170);
          v3 = v171;
          goto LABEL_88;
        }

        v115 = *v165;
        v116 = v170;
        (*v165)(v168, v88, v170);
        v117 = v166;
        v115(v166, v86, v116);
        v118 = v168;
        v159 = sub_1D8B13200();
        v119 = *v169;
        (*v169)(v117, v116);
        v119(v118, v116);
        sub_1D8A50E28(v180, type metadata accessor for DetectionRequest.Originator);
        v3 = v171;
LABEL_61:
        v52 = v182;
        if (v159)
        {
          goto LABEL_117;
        }

LABEL_126:

        goto LABEL_127;
      }

      v51 = v192;
      if (!v87)
      {
        if (swift_getEnumCaseMultiPayload())
        {
          v3 = v83;
          goto LABEL_86;
        }

        sub_1D8A50E28(v86, type metadata accessor for DetectionRequest.Originator);
        v52 = v182;
        goto LABEL_116;
      }

      v121 = v85;
      v122 = v160;
      sub_1D8A50DC0(v121, v160, type metadata accessor for DetectionRequest.Originator);
      v123 = *v122;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v3 = v83;
        goto LABEL_88;
      }

      v124 = *(v122 + 4);
      v125 = *v86;
      v126 = *(v86 + 4);
      if (*(v122 + 4))
      {
        v3 = v83;
        if (v124 != 1)
        {
          v152 = v125;
          sub_1D8A50E28(v180, type metadata accessor for DetectionRequest.Originator);
          v52 = v182;
          if (v152 == 0.0 && v126 == 2)
          {
            goto LABEL_117;
          }

          goto LABEL_126;
        }

        v52 = v182;
        if (v126 != 1)
        {
LABEL_125:
          sub_1D8A50E28(v180, type metadata accessor for DetectionRequest.Originator);
          goto LABEL_126;
        }
      }

      else
      {
        v3 = v83;
        v52 = v182;
        if (v126)
        {
          goto LABEL_125;
        }
      }

      if (v123 == v125)
      {
        goto LABEL_116;
      }

      goto LABEL_125;
    }

    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);

    sub_1D8A50E28(v75, type metadata accessor for DetectionRequest);
    v3 = v74;
    v51 = v192;
LABEL_10:
    sub_1D87A14E4(v36, &qword_1ECA65E90);
LABEL_11:
    v54 = (v54 + 1) & v193;
    v55 = v54 >> 6;
    v56 = *(v194 + 8 * (v54 >> 6));
    v57 = 1 << v54;
    if ((v56 & (1 << v54)) == 0)
    {
      goto LABEL_4;
    }
  }

  v65 = v187;
  sub_1D8A50DC0(v36, v187, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
    v62 = type metadata accessor for DetectionResult;
LABEL_9:
    sub_1D8A50E28(v65, v62);
    goto LABEL_10;
  }

  sub_1D8A512F0(v63, v3, type metadata accessor for DetectionResult);
  v66 = v65;
  if (*v65 != *v3)
  {
    goto LABEL_113;
  }

  v67 = v184[5];
  v68 = v176;
  v69 = v176 + *(v181 + 48);
  sub_1D8A50DC0(v66 + v67, v176, type metadata accessor for DetectionRequest.Originator);
  sub_1D8A50DC0(&v3[v67], v69, type metadata accessor for DetectionRequest.Originator);
  v70 = swift_getEnumCaseMultiPayload();
  if (v70 <= 1)
  {
    if (!v70)
    {
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_82;
      }

      sub_1D8A50E28(v69, type metadata accessor for DetectionRequest.Originator);
LABEL_97:
      sub_1D8A50E28(v68, type metadata accessor for DetectionRequest.Originator);
      v66 = v187;
      goto LABEL_98;
    }

    v111 = v167;
    sub_1D8A50DC0(v68, v167, type metadata accessor for DetectionRequest.Originator);
    v112 = *v111;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_82;
    }

    v113 = *v69;
    v114 = *(v69 + 4);
    if (*(v167 + 4))
    {
      if (*(v167 + 4) != 1)
      {
        sub_1D8A50E28(v68, type metadata accessor for DetectionRequest.Originator);
        v66 = v187;
        if (v113 != 0.0 || v114 != 2)
        {
          goto LABEL_113;
        }

        goto LABEL_98;
      }

      if (v114 != 1)
      {
        goto LABEL_110;
      }
    }

    else if (v114)
    {
      goto LABEL_110;
    }

    if (v112 == v113)
    {
      goto LABEL_97;
    }

LABEL_110:
    sub_1D8A50E28(v68, type metadata accessor for DetectionRequest.Originator);
    goto LABEL_83;
  }

  if (v70 == 2)
  {
    v102 = v161;
    sub_1D8A50DC0(v68, v161, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*v169)(v102, v170);
      goto LABEL_82;
    }

    v103 = *v165;
    v104 = v3;
    v105 = v168;
    v106 = v102;
    v107 = v170;
    (*v165)(v168, v106, v170);
    v108 = v166;
    v103(v166, v69, v107);
    LOBYTE(v103) = sub_1D8B13200();
    v109 = *v169;
    (*v169)(v108, v107);
    v110 = v105;
    v3 = v104;
    v109(v110, v107);
    sub_1D8A50E28(v176, type metadata accessor for DetectionRequest.Originator);
    v66 = v187;
    if (v103)
    {
      goto LABEL_98;
    }

LABEL_113:
    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
    sub_1D8A50E28(v3, type metadata accessor for DetectionResult);
    sub_1D8A50E28(v66, type metadata accessor for DetectionResult);
    sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
    v52 = v182;
    v51 = v192;
    goto LABEL_11;
  }

  if (v70 != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_97;
    }

LABEL_82:
    sub_1D87A14E4(v68, &unk_1ECA64FB0);
LABEL_83:
    v66 = v187;
    goto LABEL_113;
  }

  v71 = v162;
  sub_1D8A50DC0(v68, v162, type metadata accessor for DetectionRequest.Originator);
  v72 = *v71;
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_82;
  }

  v73 = sub_1D894FA18(v72, *v69);

  sub_1D8A50E28(v68, type metadata accessor for DetectionRequest.Originator);
  v66 = v187;
  if ((v73 & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_98:
  if ((sub_1D894CAAC(*(v66 + v184[6]), *&v3[v184[6]]) & 1) == 0)
  {
    goto LABEL_113;
  }

  result = CGRectEqualToRect(*(v66 + v184[7]), *&v3[v184[7]]);
  if (!result)
  {
    goto LABEL_113;
  }

  if (*(v66 + v184[8]) != *&v3[v184[8]])
  {
    goto LABEL_113;
  }

  v141 = *(v156 + 20);
  v142 = *(v66 + v141);
  v143 = *&v3[v141];
  v144 = *(v143 + 16);
  v183 = *(v142 + 16);
  if (v183 != v144)
  {
    goto LABEL_113;
  }

  if (!v183 || v142 == v143)
  {
LABEL_148:
    sub_1D8A50E28(v45, type metadata accessor for ProcessorState);
    sub_1D8A50E28(v3, type metadata accessor for DetectionResult);
    sub_1D8A50E28(v187, type metadata accessor for DetectionResult);
    v52 = v182;
    v51 = v192;
LABEL_149:
    sub_1D8A50E28(v36, type metadata accessor for ProcessorState);
    v155 = v196;
LABEL_150:
    sub_1D8A50E28(v155, type metadata accessor for ProcessorState);
    goto LABEL_6;
  }

  v145 = 0;
  v179 = v142 + 32;
  while (v145 < *(v142 + 16))
  {
    *&v198 = *(v179 + 8 * v145);
    if (v145 >= *(v143 + 16))
    {
      goto LABEL_157;
    }

    v197 = *(v143 + 32 + 8 * v145);

    v146 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v198, &v197);

    v66 = v187;
    if ((v146 & 1) == 0)
    {
      goto LABEL_113;
    }

    if (v183 == ++v145)
    {
      goto LABEL_148;
    }
  }

LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
  return result;
}

void sub_1D8A596F4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 32))(&v53, a2, a3);
  v9 = v53;
  v10 = v54;
  if (v54)
  {
    v11 = v53;
LABEL_6:
    sub_1D88C3978(v11, v10);
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v9 = 1;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_7:
    *a4 = v14;
    *(a4 + 16) = v15;
    *(a4 + 32) = v16;
    *(a4 + 48) = v17;
    *(a4 + 64) = v12;
    *(a4 + 72) = v9;
    *(a4 + 80) = v13;
    return;
  }

  sub_1D88C5438(a1, v47);
  sub_1D88C5438(v47, &v48);
  if (!v50 || v50 == 1)
  {
LABEL_5:
    v11 = v9;
    v10 = 0;
    goto LABEL_6;
  }

  v35 = v49;
  v36 = v48;
  v18 = v51;
  v34 = v52;
  sub_1D88C5438(v47, v43);
  v19 = v44;
  sub_1D88C5438(v47, v45);
  sub_1D88C5510(v46);
  sub_1D88C5510(v19);
  sub_1D88C5530(v47, &v37);
  sub_1D88C2718(v9, 0);
  Width = CVPixelBufferGetWidth(v9);
  Height = CVPixelBufferGetHeight(v9);
  CameraSourceFrame.rotationAngle.getter(a3, &v37);
  v21.n128_u64[0] = v37;
  if (v34 == 1)
  {
    if (!v18)
    {
      v22 = Width;
      Width = Height;
      goto LABEL_26;
    }
  }

  else
  {
    if (v18 > 8)
    {
      goto LABEL_18;
    }

    if (((1 << v18) & 0x18) != 0)
    {
      v21.n128_f64[0] = *&v37 + -3.14159265;
      goto LABEL_19;
    }

    if (((1 << v18) & 0xC0) != 0)
    {
      v21.n128_f64[0] = *&v37 + -1.57079633;
      goto LABEL_19;
    }

    if (((1 << v18) & 0x120) == 0)
    {
LABEL_18:
      if (v18 - 1 >= 2)
      {
LABEL_50:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0);
        sub_1D8B16B90();
        __break(1u);
        return;
      }

      goto LABEL_19;
    }

    v21.n128_f64[0] = *&v37 + -4.71238898;
  }

LABEL_19:
  v22 = Height;
  if (v21.n128_f64[0] != 1.57079633)
  {
    v23 = Width;
    if (v21.n128_f64[0] == 4.71238898)
    {
      v22 = Height;
    }

    else
    {
      v22 = Width;
    }

    if (v21.n128_f64[0] != 4.71238898)
    {
      v23 = Height;
    }

    Width = v23;
  }

LABEL_26:
  v24 = *(a1 + 72);
  v25 = Width;
  if (v24)
  {
    v26 = v24;
    if (CVPixelBufferGetWidth(v26) == v22 && CVPixelBufferGetHeight(v26) == v25)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v26);

      v28 = v35;
      v29 = PixelFormatType == v36;
      v25 = Width;
      if (v29)
      {
        v28 = 1;
      }

      if (v28 == 1)
      {
        sub_1D88C558C(v47);
        sub_1D88C558C(v47);
        sub_1D88C3978(v9, 0);
        sub_1D88C558C(v47);
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  (*(a3 + 40))(&v37, a2, a3, v21);
  if (BYTE8(v39) == 1 && CVPixelBufferGetWidth(v9) == v22 && CVPixelBufferGetHeight(v9) == v25)
  {
    v30 = CVPixelBufferGetPixelFormatType(v9);
    sub_1D88C558C(v47);
    v32 = v35;
    v31 = v36;
    if (v30 == v36)
    {
      v32 = 1;
    }

    if (v32 == 1)
    {
      sub_1D88C558C(v47);
      sub_1D88C3978(v9, 0);
      v42 = 0;
      sub_1D88C5438(v47, &v37);
      v14 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
LABEL_48:
      v12 = v41;
      v13 = v42;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D88C558C(v47);
    v31 = v36;
    if (v35)
    {
      v31 = CVPixelBufferGetPixelFormatType(v9);
    }
  }

  if (((v25 | v22) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v33 = sub_1D8A4E020(v22, v25, v31);
  sub_1D88C558C(v47);
  sub_1D88C3978(v9, 0);
  if (!v4)
  {
    sub_1D88C3978(v9, 0);
    v42 = 0;
    sub_1D88C5438(v47, &v37);
    v14 = v37;
    v15 = v38;
    v16 = v39;
    v17 = v40;
    v9 = v33;
    goto LABEL_48;
  }

  sub_1D88C558C(v47);
  sub_1D88C3978(v9, 0);
}

uint64_t sub_1D8A59B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8A3E5A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D8A59BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A401C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D8A59CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A40D1C(a1, v4, v5, v6, v7);
}

id viCore_makeM2MController()
{
  v0 = objc_alloc(NSClassFromString(&cfstr_Figm2mcontroll.isa));
  v1 = [v0 performSelector:sel_init];

  return v1;
}

uint64_t sub_1D8A59DF4(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 3);
  v15 = *(v1 + 2);
  v7 = v1[6];
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D8864FBC;

  return sub_1D8A45C4C(v7, a1, v15, v6, v8, v9, v1 + v5, v12, v11);
}

uint64_t sub_1D8A59F70()
{
  v1 = *(type metadata accessor for ProcessorState(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + v6);
  v8 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8A4541C(v0 + v2, v0 + v5, v7, v8);
}

void sub_1D8A5A0F4()
{
  sub_1D8A5A194(319, &qword_1EE0E39D0, type metadata accessor for DetectionRequest);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetectionRequest(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A5A194(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8B15DB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D8A5A1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A5A244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D8A5A2B8()
{
  result = qword_1ECA67E70;
  if (!qword_1ECA67E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E70);
  }

  return result;
}

uint64_t sub_1D8A5A358(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A5A3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CVProcessorInputConfiguration.Dimensions(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CVProcessorInputConfiguration.Dimensions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CVProcessorInputConfiguration.Dimensions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A5A4F0(uint64_t a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D8A5A508(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D8A5A550()
{
  result = qword_1ECA67E80;
  if (!qword_1ECA67E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E80);
  }

  return result;
}

unint64_t sub_1D8A5A5A8()
{
  result = qword_1ECA67E88;
  if (!qword_1ECA67E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E88);
  }

  return result;
}

unint64_t sub_1D8A5A600()
{
  result = qword_1ECA67E90;
  if (!qword_1ECA67E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E90);
  }

  return result;
}

unint64_t sub_1D8A5A658()
{
  result = qword_1ECA67E98;
  if (!qword_1ECA67E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E98);
  }

  return result;
}

unint64_t CVDetection.DetectionType.description.getter()
{
  result = 0x6E69646E756F7267;
  switch(*v0)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 0xA:
      result = 0x646F6D69746C756DLL;
      break;
    case 0xB:
      result = 0x69746568746E7973;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

double CVDetection.timestamp.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t CVDetection.rotationAngle.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 80))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

double *sub_1D8A5A9D8@<X0>(double *result@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  v5 = *a2;
  v6 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v12 = v3[6];
  v11 = v3[7];
  if (*result == *a2)
  {
    *a3 = *v3;
    a3[1] = v6;
    a3[2] = v8;
    a3[3] = v7;
    a3[4] = v10;
    a3[5] = v9;
    a3[6] = v12;
    a3[7] = v11;
    return result;
  }

  v93 = *(v3 + 1);
  v94 = *(v3 + 3);
  v95 = *(v3 + 2);
  v92 = *v3;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  b = t1.b;
  a = t1.a;
  d = t1.d;
  c = t1.c;
  ty = t1.ty;
  tx = t1.tx;
  v96 = v4 - v5;
  CGAffineTransformMakeRotation(&t1, -(v4 - v5));
  v14 = t1.a;
  v15 = t1.b;
  v80 = t1.b;
  v81 = t1.a;
  v82 = t1.d;
  v83 = t1.c;
  v100 = t1.tx;
  v97 = t1.ty;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v16 = t1.a;
  v17 = t1.b;
  v18 = t1.c;
  v19 = t1.d;
  v90 = t1.d;
  v91 = t1.c;
  v20 = t1.tx;
  v21 = t1.ty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB70;
  *(inited + 32) = a;
  *(inited + 40) = b;
  *(inited + 48) = c;
  *(inited + 56) = d;
  *(inited + 64) = tx;
  *(inited + 72) = ty;
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 96) = v83;
  *(inited + 104) = v82;
  *(inited + 112) = v100;
  *(inited + 120) = v97;
  *(inited + 128) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 160) = v20;
  *(inited + 168) = v21;
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v23;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  t2.a = a;
  t2.b = b;
  t2.c = c;
  t2.d = d;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v107, &t1, &t2);
  t1 = v107;
  t2.a = v81;
  t2.b = v80;
  t2.c = v83;
  t2.d = v82;
  t2.tx = v100;
  t2.ty = v97;
  CGAffineTransformConcat(&v107, &t1, &t2);
  v24 = v107.tx;
  v25 = v107.ty;
  v98 = *&v107.c;
  v101 = *&v107.a;

  *&t1.a = v101;
  *&t1.c = v98;
  t1.tx = v24;
  t1.ty = v25;
  t2.a = v16;
  t2.b = v17;
  t2.c = v91;
  t2.d = v90;
  t2.tx = v20;
  t2.ty = v21;
  CGAffineTransformConcat(&v107, &t1, &t2);
  v26 = v107.a;
  v27 = v107.b;
  v28 = v107.c;
  v29 = v107.d;
  v30 = v107.tx;
  v31 = v107.ty;
  v32 = MEMORY[0x1E69E7CC0];
  *&t2.a = MEMORY[0x1E69E7CC0];
  sub_1D87F3F8C(0, 4, 0);
  v33 = t2.a;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v36 = CGPointApplyAffineTransform(v92, &t1);
  y = v36.y;
  x = v36.x;
  v38 = *(*&v33 + 16);
  v37 = *(*&v33 + 24);
  if (v38 >= v37 >> 1)
  {
    sub_1D87F3F8C((v37 > 1), v38 + 1, 1);
    y = v36.y;
    x = v36.x;
    v33 = t2.a;
  }

  *(*&v33 + 16) = v38 + 1;
  v39 = *&v33 + 16 * v38;
  *(v39 + 32) = x;
  *(v39 + 40) = y;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v42 = CGPointApplyAffineTransform(v93, &t1);
  v41 = v42.y;
  v40 = v42.x;
  v44 = *(*&v33 + 16);
  v43 = *(*&v33 + 24);
  if (v44 >= v43 >> 1)
  {
    sub_1D87F3F8C((v43 > 1), v44 + 1, 1);
    v41 = v42.y;
    v40 = v42.x;
    v33 = t2.a;
  }

  *(*&v33 + 16) = v44 + 1;
  v45 = *&v33 + 16 * v44;
  *(v45 + 32) = v40;
  *(v45 + 40) = v41;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v48 = CGPointApplyAffineTransform(v94, &t1);
  v47 = v48.y;
  v46 = v48.x;
  v50 = *(*&v33 + 16);
  v49 = *(*&v33 + 24);
  if (v50 >= v49 >> 1)
  {
    sub_1D87F3F8C((v49 > 1), v50 + 1, 1);
    v47 = v48.y;
    v46 = v48.x;
  }

  v51 = t2.a;
  *(*&t2.a + 16) = v50 + 1;
  v52 = *&v51 + 16 * v50;
  *(v52 + 32) = v46;
  *(v52 + 40) = v47;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v55 = CGPointApplyAffineTransform(v95, &t1);
  v54 = v55.y;
  *&v53 = v55.x;
  v57 = *(*&v51 + 16);
  v56 = *(*&v51 + 24);
  v58 = v57 + 1;
  if (v57 >= v56 >> 1)
  {
    sub_1D87F3F8C((v56 > 1), v57 + 1, 1);
    v54 = v55.y;
    *&v53 = v55.x;
    v51 = t2.a;
  }

  *(*&v51 + 16) = v58;
  v59 = *&v51 + 32;
  v60 = (*&v51 + 32 + 16 * v57);
  *v60 = v53;
  v60[1] = v54;
  *&v53 = v96 * 180.0 / 3.14159265 / 90.0;
  v61 = 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(*&v53)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*&v53 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&v53 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v57 = *&v53;
  t1.a = v32;
  sub_1D87F3F8C(0, 4, 0);
  v62 = v57 + 4;
  if (__OFADD__(v57, 4))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = -v62 < 0;
  v64 = -v62 & 3;
  v65 = v62 & 3;
  if (v63)
  {
    v61 = v65;
  }

  else
  {
    v61 = -v64;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  if (v61 < *(*&v51 + 16))
  {
    v66 = t1.a;
    v53 = *(v59 + 16 * v61);
    v32 = *(*&t1.a + 16);
    v61 = *(*&t1.a + 24);
    v58 = *&v32 + 1;
    if (*&v32 < v61 >> 1)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v103 = v53;
  sub_1D87F3F8C((v61 > 1), v58, 1);
  v53 = v103;
  v66 = t1.a;
LABEL_21:
  *(*&v66 + 16) = v58;
  *(*&v66 + 16 * *&v32 + 32) = v53;
  v67 = v57 + 5;
  if (__OFADD__(v57, 5))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v63 = -v67 < 0;
  v68 = -v67 & 3;
  v67 &= 3u;
  if (!v63)
  {
    v67 = -v68;
  }

  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v67 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v67);
    v67 = *(*&v66 + 24);
    *&v32 += 2;
    if (v58 < v67 >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v104 = v53;
  sub_1D87F3F8C((v67 > 1), *&v32, 1);
  v53 = v104;
  v66 = t1.a;
LABEL_27:
  *(*&v66 + 16) = v32;
  *(*&v66 + 16 * v58 + 32) = v53;
  v69 = v57 + 6;
  if (__OFADD__(v57, 6))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v63 = -v69 < 0;
  v70 = -v69 & 3;
  v71 = v69 & 3;
  if (!v63)
  {
    v71 = -v70;
  }

  if ((v71 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (v71 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v71);
    v32 = *(*&v66 + 16);
    v66 = *(*&v66 + 24);
    v58 = *&v32 + 1;
    if (*&v32 < *&v66 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_57;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  v105 = v53;
  sub_1D87F3F8C((*&v66 > 1uLL), v58, 1);
  v53 = v105;
LABEL_33:
  v72 = t1.a;
  *(*&t1.a + 16) = v58;
  *(*&v72 + 16 * *&v32 + 32) = v53;
  v73 = v57 + 7;
  if (__OFADD__(v57, 7))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v63 = -v73 < 0;
  v74 = -v73 & 3;
  v73 &= 3u;
  if (!v63)
  {
    v73 = -v74;
  }

  if ((v73 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (v73 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v73);
    v73 = *(*&v72 + 24);
    *&v32 += 2;
    if (v58 < v73 >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  v106 = v53;
  sub_1D87F3F8C((v73 > 1), *&v32, 1);
  v53 = v106;
  v72 = t1.a;
LABEL_39:
  *(*&v72 + 16) = v32;
  *(*&v72 + 16 * v58 + 32) = v53;

  v75 = *(*&v72 + 16);
  if (!v75)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v75 == 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v75 >= 4)
  {
    v76 = *(*&v72 + 32);
    v77 = *(*&v72 + 40);
    v99 = *(*&v72 + 80);
    v102 = *(*&v72 + 48);
    v78 = *(*&v72 + 64);
    v79 = *(*&v72 + 72);

    *a3 = v76;
    a3[1] = v77;
    *(a3 + 1) = v102;
    *(a3 + 2) = v99;
    a3[6] = v78;
    a3[7] = v79;
    return result;
  }

LABEL_64:
  __break(1u);
  return result;
}

uint64_t CVDetection.detection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AFMResult(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*v1 >> 60)
  {
    case 1:
      v22 = type metadata accessor for GroundedParseDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v22;
      a1[4] = sub_1D8A6D324(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_15;
    case 2:
      v17 = type metadata accessor for MetaDetectionResult();
      v8 = swift_projectBox();
      a1[3] = v17;
      a1[4] = sub_1D8A6D324(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for MetaDetectionResult;
      goto LABEL_15;
    case 3:
    case 8:
      v7 = type metadata accessor for ObjectDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v7;
      a1[4] = sub_1D8A6D324(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_15;
    case 4:
      v23 = type metadata accessor for ParseDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v23;
      a1[4] = sub_1D8A6D324(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for ParseDetectorResult;
      goto LABEL_15;
    case 5:
      v24 = type metadata accessor for TextDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v24;
      a1[4] = sub_1D8A6D324(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for TextDetectorResult;
      goto LABEL_15;
    case 6:
    case 7:
      v11 = type metadata accessor for StreamingBarcodeDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v11;
      a1[4] = sub_1D8A6D324(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_15;
    case 9:
    case 0xALL:
      v12 = v4;
      v13 = swift_projectBox();
      sub_1D8A6D488(v13, v6, type metadata accessor for AFMResult);
      a1[3] = v12;
      a1[4] = sub_1D8A6D324(&qword_1EE0E3F80, type metadata accessor for AFMResult);
      v14 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1D8A6D36C(v6, v14, type metadata accessor for AFMResult);
    case 0xBLL:
      v16 = type metadata accessor for SyntheticDetectionResult();
      v8 = swift_projectBox();
      a1[3] = v16;
      a1[4] = sub_1D8A6D324(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_15;
    case 0xCLL:
      v18 = type metadata accessor for GroundedParseEmbeddingsResult(0);
      v8 = swift_projectBox();
      a1[3] = v18;
      a1[4] = sub_1D8A6D324(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_15;
    case 0xDLL:
      v25 = type metadata accessor for GroundedParseClassificationsResult(0);
      v8 = swift_projectBox();
      a1[3] = v25;
      a1[4] = sub_1D8A6D324(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_15:
      result = sub_1D8A6D488(v8, boxed_opaque_existential_1, v10);
      break;
    default:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
      v20 = swift_projectBox();
      a1[3] = v19;
      a1[4] = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
      v21 = __swift_allocate_boxed_opaque_existential_1(a1);

      result = sub_1D894733C(v20, v21);
      break;
  }

  return result;
}

void CVDetection.bounds.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v3, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  Corners.bounds.getter();
}

uint64_t sub_1D8A5B798@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ParseDetectorResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1 >> 60;
  if (v10 == 1)
  {
    v29 = swift_projectBox();
    sub_1D8A6D488(v29, v5, type metadata accessor for GroundedParseDetectorResult);
    v30 = sub_1D8B13240();
    (*(*(v30 - 8) + 16))(a1, v5, v30);
    v31 = *&v5[v3[9]];
    v32 = *&v5[v3[7]];
    v33 = type metadata accessor for GenericParseDataResult();
    sub_1D8A6D488(&v5[v3[13]], a1 + v33[7], type metadata accessor for VisualUnderstandingContainer);
    v34 = v3[11];
    v48 = v5[v3[10]];
    v35 = v3[16];
    v36 = *&v5[v3[15]];
    v37 = &v5[v3[12]];
    v39 = *v37;
    v38 = v37[1];
    v41 = *&v5[v34];
    v40 = *&v5[v34 + 8];
    v42 = *&v5[v35];

    sub_1D8A6D3D4(v5, type metadata accessor for GroundedParseDetectorResult);
    *(a1 + v33[5]) = v31;
    *(a1 + v33[6]) = v32;
    *(a1 + v33[8]) = v48;
    *(a1 + v33[9]) = v36;
    v43 = (a1 + v33[10]);
    *v43 = v39;
    v43[1] = v38;
    v44 = (a1 + v33[11]);
    *v44 = v41;
    v44[1] = v40;
    *(a1 + v33[12]) = v42;
    return (*(*(v33 - 1) + 56))(a1, 0, 1, v33);
  }

  else if (v10 == 4)
  {
    v11 = v7;
    v12 = swift_projectBox();
    sub_1D8A6D488(v12, v9, type metadata accessor for ParseDetectorResult);
    v13 = sub_1D8B13240();
    (*(*(v13 - 8) + 16))(a1, v9, v13);
    v14 = *&v9[v11[9]];
    v15 = *&v9[v11[7]];
    v16 = type metadata accessor for GenericParseDataResult();
    sub_1D8A6D488(&v9[v11[13]], a1 + v16[7], type metadata accessor for VisualUnderstandingContainer);
    v17 = v11[11];
    v48 = v9[v11[10]];
    v18 = v11[15];
    v19 = *&v9[v11[14]];
    v20 = &v9[v11[12]];
    v22 = *v20;
    v21 = v20[1];
    v24 = *&v9[v17];
    v23 = *&v9[v17 + 8];
    v25 = *&v9[v18];

    sub_1D8A6D3D4(v9, type metadata accessor for ParseDetectorResult);
    *(a1 + v16[5]) = v14;
    *(a1 + v16[6]) = v15;
    *(a1 + v16[8]) = v48;
    *(a1 + v16[9]) = v19;
    v26 = (a1 + v16[10]);
    *v26 = v22;
    v26[1] = v21;
    v27 = (a1 + v16[11]);
    *v27 = v24;
    v27[1] = v23;
    *(a1 + v16[12]) = v25;
    return (*(*(v16 - 1) + 56))(a1, 0, 1, v16);
  }

  else
  {
    v45 = type metadata accessor for GenericParseDataResult();
    v46 = *(*(v45 - 8) + 56);

    return v46(a1, 1, 1, v45);
  }
}

uint64_t CVDetection.corners.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CVDetection.DetectionType.maxDetectionFps.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 <= 8u)
    {
      if (v1 - 6 >= 2)
      {
LABEL_8:
        result = sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (v1 - 9 >= 2 && v1 - 12 >= 2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CVDetection.label.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A5BE40()
{
  v1 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetaDetectionResult();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *v0 >> 60;
  if (v17 <= 8)
  {
    if (v17 == 1)
    {
      v23 = swift_projectBox();
      sub_1D8A6D488(v23, v12, type metadata accessor for GroundedParseDetectorResult);
      v16 = sub_1D8AD2AC8();
      v19 = type metadata accessor for GroundedParseDetectorResult;
      v20 = v12;
      goto LABEL_12;
    }

    if (v17 == 2)
    {
      v21 = swift_projectBox();
      sub_1D8A6D488(v21, v9, type metadata accessor for MetaDetectionResult);
      v16 = sub_1D8AD28E4();
      v19 = type metadata accessor for MetaDetectionResult;
      v20 = v9;
      goto LABEL_12;
    }
  }

  else
  {
    if ((v17 - 9) < 2)
    {
      v22 = swift_projectBox();
      sub_1D8A6D488(v22, v15, type metadata accessor for AFMResult);
      v16 = sub_1D8AD2CAC();
      v19 = type metadata accessor for AFMResult;
      v20 = v15;
      goto LABEL_12;
    }

    if (v17 == 12)
    {
      v24 = swift_projectBox();
      sub_1D8A6D488(v24, v6, type metadata accessor for GroundedParseEmbeddingsResult);
      v16 = sub_1D8AD2CD8();
      v19 = type metadata accessor for GroundedParseEmbeddingsResult;
      v20 = v6;
      goto LABEL_12;
    }

    if (v17 == 13)
    {
      v18 = swift_projectBox();
      sub_1D8A6D488(v18, v3, type metadata accessor for GroundedParseClassificationsResult);
      v16 = sub_1D8AD2D04();
      v19 = type metadata accessor for GroundedParseClassificationsResult;
      v20 = v3;
LABEL_12:
      sub_1D8A6D3D4(v20, v19);
    }
  }

  return v16;
}