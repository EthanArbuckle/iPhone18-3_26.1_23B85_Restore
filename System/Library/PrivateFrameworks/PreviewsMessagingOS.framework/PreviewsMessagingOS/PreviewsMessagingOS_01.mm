uint64_t sub_25F3EF93C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25F487B20(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25F3F0210((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25F4A3270();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25F4A3270();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25F3EE578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25F3EE578((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25F3F0210((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25F487B20(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25F487A94(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25F4A3270(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_25F3EFF18(_BYTE *__src, _BYTE *__dst, unint64_t a3, _BYTE *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = a3 - __dst;
  if (__dst - __src < (a3 - __dst))
  {
    if (a4 != __src || a4 >= __dst)
    {
      memmove(a4, __src, v8);
    }

    v10 = &v4[v8];
    if (v8 < 1 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_74;
    }

    while (1)
    {
      v11 = *v4;
      if (*v6)
      {
        v12 = 1131045487;
      }

      else
      {
        v12 = 0x64616F4C6C6C61;
      }

      if (*v6)
      {
        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (*v4)
      {
        v14 = 1131045487;
      }

      else
      {
        v14 = 0x64616F4C6C6C61;
      }

      if (*v4)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      if (v12 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_25F4A3270();

        if (v17)
        {
          v18 = v6 + 1;
          v19 = v6;
          if (v7 >= v6 && v7 < v18)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }

      v20 = v4 + 1;
      v19 = v4;
      v18 = v6;
      if (v7 < v4)
      {
        ++v4;
      }

      else
      {
        ++v4;
        if (v7 < v20)
        {
          goto LABEL_33;
        }
      }

LABEL_32:
      *v7 = *v19;
LABEL_33:
      ++v7;
      if (v4 < v10)
      {
        v6 = v18;
        if (v18 < v5)
        {
          continue;
        }
      }

      v6 = v7;
      goto LABEL_74;
    }
  }

  if (a4 != __dst || a4 >= a3)
  {
    memmove(a4, __dst, a3 - __dst);
  }

  v10 = &v4[v9];
  if (v9 >= 1 && v6 > v7)
  {
LABEL_41:
    v21 = v6 - 1;
    --v5;
    while (1)
    {
      v22 = *v21;
      if (*(v10 - 1))
      {
        v23 = 1131045487;
      }

      else
      {
        v23 = 0x64616F4C6C6C61;
      }

      if (*(v10 - 1))
      {
        v24 = 0xE400000000000000;
      }

      else
      {
        v24 = 0xE700000000000000;
      }

      if (*v21)
      {
        v25 = 1131045487;
      }

      else
      {
        v25 = 0x64616F4C6C6C61;
      }

      if (*v21)
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = 0xE700000000000000;
      }

      if (v23 == v25 && v24 == v26)
      {
      }

      else
      {
        v28 = sub_25F4A3270();

        if (v28)
        {
          if (v5 + 1 < v6 || v5 >= v6)
          {
            *v5 = *v21;
          }

          if (v10 <= v4 || (--v6, v21 <= v7))
          {
            v6 = v21;
            break;
          }

          goto LABEL_41;
        }
      }

      v29 = (v10 - 1);
      if ((v5 + 1) < v10 || v5 >= v10)
      {
        *v5 = *v29;
      }

      --v5;
      --v10;
      if (v29 <= v4)
      {
        v10 = v29;
        break;
      }
    }
  }

LABEL_74:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_25F3F0210(char *__dst, char *__src, char *a3, char *a4)
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
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
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

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25F4A3270() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25F4A3270() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25F3F0438(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8DDB20](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v8 = *(v5 - 16);
      v10 = *(v5 - 1);
      v9 = *v5;
      MEMORY[0x25F8DDB20](0);

      sub_25F4A2C60();
      sub_25F4A2C60();

      sub_25F4A3320();
      if (v9)
      {
        sub_25F4A2C60();
      }

      v5 += 5;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25F3F0548(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x25F8DDB20](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      if (*(v5 - 2))
      {
        v6 = *(v5 - 3);
        sub_25F4A3320();

        sub_25F4A2C60();
      }

      else
      {
        sub_25F4A3320();
      }

      sub_25F4A2C60();

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25F3F0614(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x25F8DDB20](v4);
  if (v4)
  {
    v6 = (a2 + 72);
    do
    {
      v8 = *(v6 - 3);
      v9 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      if (*(v6 - 4))
      {
        v7 = *(v6 - 5);
        sub_25F4A3320();

        sub_25F4A2C60();
      }

      else
      {
        sub_25F4A3320();
      }

      sub_25F4A2C60();
      sub_25F3F0718(a1, v10);
      sub_25F4A3320();

      v6 += 48;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_25F3F0718(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_25F4A3350();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_25F4A3300();

    sub_25F4A2C60();
    v15 = sub_25F4A3350();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8DDB20](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F3F0874(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  sub_25F4A3350();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_25F4A3300();
    sub_25F4A2C60();

    result = sub_25F4A3350();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8DDB20](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F3F09E4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270() & 1;
  }
}

uint64_t sub_25F3F0AA4(_BYTE *a1, void *a2)
{
  v3 = *(v2 + 16);
  *a1 = 0;
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

unint64_t sub_25F3F0AB8()
{
  result = qword_27FD6D608;
  if (!qword_27FD6D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D608);
  }

  return result;
}

unint64_t sub_25F3F0B0C()
{
  result = qword_27FD6D618;
  if (!qword_27FD6D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D618);
  }

  return result;
}

unint64_t sub_25F3F0B60()
{
  result = qword_27FD6D628;
  if (!qword_27FD6D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D628);
  }

  return result;
}

unint64_t sub_25F3F0BB4()
{
  result = qword_27FD6D640;
  if (!qword_27FD6D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D640);
  }

  return result;
}

void *sub_25F3F0C08(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25F3F0D0C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25F3F0D88()
{
  result = qword_27FD6D658;
  if (!qword_27FD6D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D658);
  }

  return result;
}

unint64_t sub_25F3F0DDC()
{
  result = qword_27FD6D660;
  if (!qword_27FD6D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D660);
  }

  return result;
}

unint64_t sub_25F3F0E30()
{
  result = qword_27FD6D670;
  if (!qword_27FD6D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6D668, &qword_25F4A4440);
    sub_25F3F0D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D670);
  }

  return result;
}

void *sub_25F3F0EB4(void *result, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t *), uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    result[2] = a5;
    result[3] = a6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v17 = a3;
      v18 = result;
      v11 = 0;
      v12 = (a4 + 72);
      v19 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v13 = *(v12 - 2);
        v14 = *(v12 - 1);
        v15 = *v12;
        v21 = *(v12 - 5);
        v22 = *(v12 - 2);
        v23 = v13;
        v24 = v14;
        v25 = v15;

        a5(v20, &v21);

        v16 = v20[1];
        *v10 = v20[0];
        v10[1] = v16;
        if (v19 == v11)
        {
          a3 = v17;
          result = v18;
          goto LABEL_13;
        }

        v10 += 2;
        ++v11;
        v12 += 48;
        if (v9 == v11)
        {
          a3 = v9;
          result = v18;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_25F3F0FFC(void *result, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t *), uint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    result[2] = a5;
    result[3] = a6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = a2;
      v16 = a3;
      v17 = result;
      v11 = 0;
      v12 = (a4 + 56);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = *v12;
        v19 = *(v12 - 3);
        v20 = *(v12 - 1);
        v21 = v14;

        a5(v18, &v19);

        v15 = v18[1];
        *v10 = v18[0];
        v10[1] = v15;
        if (v13 == v11)
        {
          a3 = v16;
          result = v17;
          goto LABEL_13;
        }

        v10 += 2;
        ++v11;
        v12 += 4;
        if (v9 == v11)
        {
          a3 = v9;
          result = v17;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_25F3F1124(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_25F3F127C()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 48 * v1;
    v5 = *(v4 + 72);
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    v9 = v0[2];
    v8 = v0[3];
    v12 = *(v4 + 32);
    v10 = *(v4 + 40);
    v0[1] = v1 + 1;
    v13 = v10;
    v14 = v7;
    v15 = v6;
    v16 = v5;

    v9(&v11, &v12);

    return v11;
  }

  return result;
}

uint64_t sub_25F3F1354()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 32 * v1;
    v5 = *(v4 + 56);
    v7 = v0[2];
    v6 = v0[3];
    v10 = *(v4 + 32);
    v8 = *(v4 + 40);
    v0[1] = v1 + 1;
    v11 = v8;
    v12 = v5;

    v7(&v9, &v10);

    return v9;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS22BuiltTargetDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v53 = *(a1 + 56);
  v54 = *(a1 + 40);
  v42 = *(a1 + 72);
  v43 = *(a1 + 64);
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  v44 = *(a1 + 96);
  v45 = *(a1 + 104);
  v40 = *(a1 + 112);
  v38 = *(a1 + 120);
  v36 = *(a1 + 128);
  v34 = *(a1 + 136);
  v32 = *(a1 + 144);
  v30 = *(a1 + 152);
  v28 = *(a1 + 160);
  v26 = *(a1 + 168);
  v22 = *(a1 + 176);
  v24 = *(a1 + 184);
  v20 = *(a1 + 192);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v10 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v47 = *(a2 + 72);
  v50 = *(a2 + 64);
  v51 = *(a2 + 80);
  v52 = *(a2 + 88);
  v39 = *(a2 + 112);
  v37 = *(a2 + 120);
  v35 = *(a2 + 128);
  v33 = *(a2 + 136);
  v31 = *(a2 + 144);
  v29 = *(a2 + 152);
  v27 = *(a2 + 160);
  v25 = *(a2 + 168);
  v21 = *(a2 + 176);
  v23 = *(a2 + 184);
  v19 = *(a2 + 192);
  v41 = *(a2 + 104);
  v46 = *(a2 + 96);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else if (sub_25F4A3270() & 1) == 0 || ((v2 ^ v6))
  {
    return 0;
  }

  if (v4)
  {
    if (!v8 || (v3 != v7 || v4 != v8) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v54 != v10 || v5 != v9) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_25F3FB734(v53, v11) & 1) == 0)
  {
    return 0;
  }

  v12 = v42;
  if (!v42)
  {
    v13 = v43;
    sub_25F3E477C(v43, 0);
    v15 = v47;
    if (!v47)
    {
      sub_25F3E477C(v50, 0);
      v12 = 0;
      goto LABEL_41;
    }

    v14 = v50;
    sub_25F3E477C(v50, v47);
    goto LABEL_36;
  }

  v13 = v43;
  v14 = v50;
  v15 = v47;
  if (!v47)
  {
    sub_25F3E477C(v43, v42);
    sub_25F3E477C(v50, 0);
    sub_25F3E477C(v43, v42);

LABEL_36:
    sub_25F3E4814(v13, v42);
    v16 = v14;
    v17 = v15;
LABEL_38:
    sub_25F3E4814(v16, v17);
    return 0;
  }

  if ((v43 != v50 || v42 != v47) && (sub_25F4A3270() & 1) == 0 || (v48 != v51 || v49 != v52) && (sub_25F4A3270() & 1) == 0)
  {
    sub_25F3E477C(v43, v42);
    sub_25F3E477C(v50, v47);
    sub_25F3E477C(v43, v42);
    sub_25F3E4814(v50, v47);

    v16 = v43;
    v17 = v42;
    goto LABEL_38;
  }

  if (v44 == v46 && v45 == v41)
  {
    sub_25F3E477C(v43, v42);
    sub_25F3E477C(v50, v47);
    sub_25F3E477C(v43, v42);
    sub_25F3E4814(v50, v47);

LABEL_41:
    sub_25F3E4814(v13, v12);
    goto LABEL_42;
  }

  v55 = sub_25F4A3270();
  sub_25F3E477C(v43, v42);
  sub_25F3E477C(v50, v47);
  sub_25F3E477C(v43, v42);
  sub_25F3E4814(v50, v47);

  sub_25F3E4814(v43, v42);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_42:
  if (sub_25F3FB7C4(v40, v39) & 1) == 0 || (sub_25F3FB958(v38, v37) & 1) == 0 || (sub_25F3FB734(v36, v35) & 1) == 0 || (sub_25F3FBA40(v34, v33) & 1) == 0 || (sub_25F3FB734(v32, v31) & 1) == 0 || ((v30 ^ v29) & 1) != 0 || (sub_25F3E8D48(v28, v27) & 1) == 0 || ((v26 ^ v25))
  {
    return 0;
  }

  if (!v24)
  {
    if (!v23)
    {
      goto LABEL_59;
    }

    return 0;
  }

  if (!v23 || (v22 != v21 || v24 != v23) && (sub_25F4A3270() & 1) == 0)
  {
    return 0;
  }

LABEL_59:

  return sub_25F3FB734(v20, v19);
}

uint64_t sub_25F3F1AFC(_BYTE *a1, void *a2)
{
  v3 = *(v2 + 16);
  *a1 = 1;
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_25F3F1B14()
{
  result = qword_27FD6D678;
  if (!qword_27FD6D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D678);
  }

  return result;
}

uint64_t sub_25F3F1B68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F3F1BC8()
{
  v0 = sub_25F4A3170();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F3F1C14()
{
  v0 = sub_25F4A3170();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25F3F1C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for BuiltObjectFileDescription.Key;
  v5 = sub_25F3F1B14();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v19;
    v7 = v20;
    v17 = &type metadata for BuiltObjectFileDescription.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 1;
    sub_25F4A2530();
    v13 = v8;
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for BuiltObjectFileDescription.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5F8, &qword_25F4A4428);
    sub_25F3F1B68(&qword_27FD6D680, &qword_27FD6D5F8, &qword_25F4A4428);
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v21)
    {
      v9 = v21;
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    v17 = &type metadata for BuiltObjectFileDescription.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 3;
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v12 = (v21 == 2) | v21;
    *a2 = v13;
    *(a2 + 8) = v7;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v9;
    *(a2 + 40) = v12 & 1;
  }

  return result;
}

unint64_t sub_25F3F1F90()
{
  result = qword_27FD6D688;
  if (!qword_27FD6D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D688);
  }

  return result;
}

uint64_t sub_25F3F1FE4(uint64_t a1)
{
  v9 = &type metadata for BuiltStaticArchiveDescription.Key;
  v4 = sub_25F3F1F90();
  v10 = v4;
  LOBYTE(v8[0]) = 0;
  sub_25F4A2580();
  if (v1)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
    v2 = v11;
    v9 = &type metadata for BuiltStaticArchiveDescription.Key;
    v10 = v4;
    LOBYTE(v8[0]) = 1;
    sub_25F4A2530();
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v2;
}

unint64_t sub_25F3F2180()
{
  result = qword_27FD6D690;
  if (!qword_27FD6D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D690);
  }

  return result;
}

uint64_t sub_25F3F21F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25F3F2254()
{
  result = qword_27FD6D6A0;
  if (!qword_27FD6D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6A0);
  }

  return result;
}

unint64_t sub_25F3F22B0()
{
  result = qword_27FD6D6A8;
  if (!qword_27FD6D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6A8);
  }

  return result;
}

unint64_t sub_25F3F2304()
{
  result = qword_27FD6D6B0;
  if (!qword_27FD6D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6B0);
  }

  return result;
}

unint64_t sub_25F3F2360()
{
  result = qword_27FD6D6D0;
  if (!qword_27FD6D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6D0);
  }

  return result;
}

unint64_t sub_25F3F23B4()
{
  result = qword_27FD6D6D8;
  if (!qword_27FD6D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6D8);
  }

  return result;
}

unint64_t sub_25F3F2408()
{
  result = qword_27FD6D6E0;
  if (!qword_27FD6D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D6E0);
  }

  return result;
}

unint64_t sub_25F3F2460()
{
  result = qword_27FD6D720;
  if (!qword_27FD6D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D720);
  }

  return result;
}

unint64_t sub_25F3F24B8()
{
  result = qword_27FD6D728;
  if (!qword_27FD6D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D728);
  }

  return result;
}

unint64_t sub_25F3F2510()
{
  result = qword_27FD6D730;
  if (!qword_27FD6D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D730);
  }

  return result;
}

unint64_t sub_25F3F2568()
{
  result = qword_27FD6D738;
  if (!qword_27FD6D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D738);
  }

  return result;
}

unint64_t sub_25F3F25C0()
{
  result = qword_27FD6D740;
  if (!qword_27FD6D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D740);
  }

  return result;
}

unint64_t sub_25F3F2618()
{
  result = qword_27FD6D748;
  if (!qword_27FD6D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D748);
  }

  return result;
}

unint64_t sub_25F3F2670()
{
  result = qword_27FD6D750;
  if (!qword_27FD6D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D750);
  }

  return result;
}

uint64_t sub_25F3F2708(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS22BuiltTargetDescriptionV15PlatformVersionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_25F3F27AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_25F3F27F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
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

uint64_t sub_25F3F2888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F3F28D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F3F292C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F3F2974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuiltObjectFileDescription.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BuiltObjectFileDescription.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BuiltTargetDescription.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BuiltTargetDescription.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F3F2CA8()
{
  result = qword_27FD6D760;
  if (!qword_27FD6D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D760);
  }

  return result;
}

unint64_t sub_25F3F2D00()
{
  result = qword_27FD6D768;
  if (!qword_27FD6D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D768);
  }

  return result;
}

unint64_t sub_25F3F2D58()
{
  result = qword_27FD6D770;
  if (!qword_27FD6D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D770);
  }

  return result;
}

unint64_t sub_25F3F2DB0()
{
  result = qword_27FD6D778;
  if (!qword_27FD6D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D778);
  }

  return result;
}

uint64_t sub_25F3F2E04()
{
  v0 = sub_25F4A3170();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25F3F2E50()
{
  result = qword_27FD6D780;
  if (!qword_27FD6D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D780);
  }

  return result;
}

uint64_t sub_25F3F2EA4(_BYTE *a1, void *a2)
{
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  *a1 = 1;
  *a2 = v4;
  a2[1] = v3;
}

unint64_t sub_25F3F2EC0()
{
  result = qword_27FD6D7C0;
  if (!qword_27FD6D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D7C0);
  }

  return result;
}

uint64_t *sub_25F3F2F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *v6;
  v6[2] = a1;
  v6[3] = a3;
  v8 = *(v7 + 80);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v6[4] = &unk_25F4A5330;
  v6[5] = v9;
  swift_unknownObjectRetain();
  return v6;
}

uint64_t sub_25F3F2FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_25F3F30B0;

  return sub_25F3F31A4(a1, a2, a3, a4, a7, a8);
}

uint64_t sub_25F3F30B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F3F31A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *(a6 + 8);
  v9 = sub_25F4A2E40();
  v7[10] = v9;
  v7[11] = v8;

  return MEMORY[0x2822009F8](sub_25F3F322C, v9, v8);
}

uint64_t sub_25F3F322C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Outlet();
  v5 = sub_25F421A74(v4, v3);
  v7 = v6;
  v0[12] = v5;
  v0[13] = v6;
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_25F3F3390;
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];

  return sub_25F3F4924(v7, v11, v9);
}

uint64_t sub_25F3F3390()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[10];
    v5 = v3[11];

    return MEMORY[0x2822009F8](sub_25F3F36B0, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v3[16] = v6;
    *v6 = v3;
    v6[1] = sub_25F3F3508;
    v7 = v3[12];
    v8 = v3[8];
    v9 = v3[9];
    v10 = v3[5];
    v11 = v3[2];

    return sub_25F421D90(v11, v8, v9, v10);
  }
}

uint64_t sub_25F3F3508()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_25F3F371C;
  }

  else
  {
    v7 = sub_25F3F3644;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_25F3F3644()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3F36B0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3F371C()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t *MessagePipe.__allocating_init<A>(branchingFunction:makeRightTransport:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v17 = *(v5 + 80);
  v18 = *(v5 + 88);
  v10 = type metadata accessor for BranchingBridgeBuilder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v13 = sub_25F3F68BC(a1, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_25F3F2F30(v13, v10, WitnessTable);

  return v15;
}

char *sub_25F3F38D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return sub_25F3F68BC(a1, a2, a3, a4);
}

uint64_t *sub_25F3F3968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void))
{
  v4 = v3;
  v7 = a3(0, *(v4 + 80), *(v4 + 88));
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_25F3F7B0C(a1, a2);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25F3F2F30(v10, v7, WitnessTable);

  return v12;
}

char *sub_25F3F3A30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_25F3F7B0C(a1, a2);
}

uint64_t MessagePipe.addMessageStream(origin:destination:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F3F3AA4, 0, 0);
}

uint64_t sub_25F3F3AA4()
{
  v1 = v0[6];
  v2 = *(v1 + 40);
  v10 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_25F3F3B9C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v5, v6);
}

uint64_t sub_25F3F3B9C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t MessagePipe.addLeftTransport(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F3F3CB0, 0, 0);
}

uint64_t sub_25F3F3CB0()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_25F3F3D68;
  v6 = v0[2];

  return sub_25F3F3E5C(v6, ObjectType, v2);
}

uint64_t sub_25F3F3D68()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F3F3E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Bridge();
  v8 = *(a3 + 8);
  v4[6] = v8;
  v9 = swift_task_alloc();
  v4[7] = v9;
  *v9 = v4;
  v9[1] = sub_25F3F4004;

  return sub_25F45A408(v3, v8, a1);
}

uint64_t sub_25F3F4004(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 56);
  v7 = *v3;
  v5[8] = a1;
  v5[9] = a2;

  if (v2)
  {
    v8 = v5[5];

    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    v5[10] = v11;
    *v11 = v7;
    v11[1] = sub_25F3F418C;
    v12 = v5[3];
    v13 = v5[4];
    v14 = v5[2];

    return sub_25F3F4924(a2, v14, v12);
  }
}

uint64_t sub_25F3F418C()
{
  v2 = v0;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v11 = *v1;
  *(*v1 + 88) = v2;

  v8 = sub_25F4A2E40();
  if (v2)
  {
    v9 = sub_25F3F4430;
  }

  else
  {
    v9 = sub_25F3F42F8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_25F3F42F8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = sub_25F4A2EA0();
  v10 = *(v0 + 16);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v10;
  *(v7 + 48) = v2;
  *(v7 + 56) = v5;
  swift_unknownObjectRetain_n();
  sub_25F494FEC(0, 0, v3, &unk_25F4A5320, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25F3F4430()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[11];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t MessagePipe.teardown(callsite:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25F3F44C4, 0, 0);
}

uint64_t sub_25F3F44C4()
{
  v1 = v0[3];
  v0[4] = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[5] = v2;
  v0[6] = swift_getObjectType();
  v3 = *(v2 + 8);
  v5 = sub_25F4A2E40();

  return MEMORY[0x2822009F8](sub_25F3F4554, v5, v4);
}

uint64_t sub_25F3F4554()
{
  v1 = v0[4];
  sub_25F3F45BC(v0[2], v0[6], v0[5]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_25F3F45BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a1;
  v16 = sub_25F4A2710();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  v9 = sub_25F4A26F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  (*(a3 + 32))(a2, a3);
  sub_25F4A26C0();
  sub_25F4A26B0();
  (*(v5 + 8))(v8, v16);
  return (*(v10 + 8))(v13, v9);
}

uint64_t MessagePipe.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return v0;
}

uint64_t MessagePipe.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_25F3F4924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  v6 = sub_25F4A26F0();
  v4[7] = v6;
  v7 = *(v6 - 8);
  v4[8] = v7;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = *(a3 + 8);
  v10 = sub_25F4A2E40();
  v4[11] = v10;
  v4[12] = v9;

  return MEMORY[0x2822009F8](sub_25F3F4AE4, v10, v9);
}

uint64_t sub_25F3F4AE4()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[5] + 32))(v0[4]);
  v3 = *(MEMORY[0x277D40480] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25F3F4BA4;
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];
  v8 = v0[7];

  return MEMORY[0x2821A0760](v0 + 2, v7, v5, v8);
}

uint64_t sub_25F3F4BA4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_25F3F4DB4;
  }

  else
  {
    v10 = sub_25F3F4D3C;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_25F3F4D3C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  sub_25F4622DC(*(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F3F4DB4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_25F3F4E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a7 + 8);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_25F3FAD34;

  return sub_25F45AB68(a5, v9);
}

uint64_t sub_25F3F4EC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(a2 + 8);
  v6 = sub_25F4A2E40();
  v3[5] = v6;
  v3[6] = v5;

  return MEMORY[0x2822009F8](sub_25F3F4F3C, v6, v5);
}

uint64_t sub_25F3F4F3C()
{
  v1 = v0[2];
  v11 = v0[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0[7] = swift_getAssociatedTypeWitness();
  v0[8] = swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  v0[9] = sub_25F462610();
  v0[10] = v2;
  v3 = *(v11 + 40);
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_25F3F510C;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_25F3F510C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = v4[5];
    v8 = v4[6];
    v9 = sub_25F3F5324;
  }

  else
  {
    v4[13] = a1;
    v7 = v4[5];
    v8 = v4[6];
    v9 = sub_25F3F5234;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25F3F5234()
{
  v1 = v0[13];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Junction();
  sub_25F440BC0(v2, v1);

  v5 = v0[1];
  v6 = v0[9];

  return v5(v6);
}

uint64_t sub_25F3F5324()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_25F3F53C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = type metadata accessor for StraightBridgeBuilder();
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_25F3F54BC;

  return sub_25F3F4EC4(v6, WitnessTable);
}

uint64_t sub_25F3F54BC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25F3F55BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F3FAD38;

  return v6();
}

uint64_t sub_25F3F56A8()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3F576C, v0, 0);
}

uint64_t sub_25F3F576C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 120);
  v6 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_25F3F5860;

  return v6(v0 + 16);
}

uint64_t sub_25F3F5860()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_25F3F5D54, v4, 0);
  }

  else
  {
    v5 = v3[8];
    v7 = *(v5 + 80);
    v6 = *(v5 + 88);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Bridge();
    type metadata accessor for StraightBridgeBuilder();
    WitnessTable = swift_getWitnessTable();
    v3[12] = WitnessTable;
    v9 = swift_task_alloc();
    v3[13] = v9;
    *v9 = v3;
    v9[1] = sub_25F3F5ADC;
    v10 = v3[7];

    return sub_25F45A408(v10, WitnessTable, (v3 + 2));
  }
}

uint64_t sub_25F3F5ADC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  v6[14] = v2;

  v9 = v6[7];
  if (v2)
  {
    v10 = sub_25F3F5DB8;
  }

  else
  {
    v6[15] = a2;
    v6[16] = a1;
    v10 = sub_25F3F5C1C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_25F3F5C1C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[7];
  v5 = sub_25F4A2EA0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  swift_retain_n();

  sub_25F494FEC(0, 0, v3, &unk_25F4A52F0, v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];
  v8 = v0[15];

  return v7(v8);
}

uint64_t sub_25F3F5D54()
{
  v1 = v0[11];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3F5DB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[14];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3F5E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*a5 + 80);
  v8 = *(*a5 + 88);
  type metadata accessor for StraightBridgeBuilder();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25F3F30B0;

  return sub_25F45AB68(a5, WitnessTable);
}

uint64_t sub_25F3F5F20()
{
  v0 = sub_25F3F9088();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F3F5F48(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  sub_25F4A26F0();
  result = sub_25F4A3060();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25F3F60A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F3FAD58;

  return sub_25F3F56A8();
}

uint64_t sub_25F3F6130@<X0>(uint64_t a1@<X8>)
{
  v23 = *v1;
  v2 = v23;
  v24 = a1;
  v3 = v23[12];
  v4 = v23[10];
  swift_getAssociatedTypeWitness();
  v22 = v3;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_25F4A26F0();
  v6 = sub_25F4A3060();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &WitnessTable - v12;
  v14 = v2[17];
  swift_beginAccess();
  (*(v7 + 16))(v13, &v1[v14], v6);
  v15 = *(v5 - 8);
  if ((*(v15 + 48))(v13, 1, v5) != 1)
  {
    return (*(v15 + 32))(v24, v13, v5);
  }

  (*(v7 + 8))(v13, v6);
  v16 = swift_allocObject();
  v16[2] = v4;
  v17 = v23;
  v18 = v22;
  v16[3] = v23[11];
  v16[4] = v18;
  v16[5] = v17[13];
  v16[6] = &unk_25F4A52E0;
  v16[7] = v1;

  v19 = v24;
  sub_25F4A26D0();
  (*(v15 + 16))(v11, v19, v5);
  (*(v15 + 56))(v11, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(&v1[v14], v11, v6);
  return swift_endAccess();
}

uint64_t sub_25F3F64BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  v4 = *(v2 + 96);
  *(v1 + 16) = *(v2 + 80);
  *(v1 + 32) = v4;
  v5 = type metadata accessor for BranchingBridgeBuilder();
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_25F3F65C0;

  return sub_25F3F4EC4(v5, WitnessTable);
}

uint64_t sub_25F3F65C0(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_25F3F66C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F3F67AC;

  return v6();
}

uint64_t sub_25F3F67AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

char *sub_25F3F68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_defaultActor_initialize();
  v10 = *(*v4 + 136);
  v11 = *(v9 + 96);
  v12 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  v13 = sub_25F4A26F0();
  (*(*(v13 - 8) + 56))(&v4[v10], 1, 1, v13);
  *(v4 + 14) = a1;
  *(v4 + 15) = a2;
  *(v4 + 16) = a3;
  *(v4 + 17) = a4;
  return v4;
}

uint64_t sub_25F3F6A18()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return MEMORY[0x2822009F8](sub_25F3F6A60, v0, 0);
}

uint64_t sub_25F3F6A60()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v2[12];
  v4 = v2[10];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = v2[11];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = v2[13];
  v0[2] = AssociatedTypeWitness;
  v0[3] = v6;
  v0[4] = AssociatedConformanceWitness;
  v0[5] = v8;
  type metadata accessor for BranchingFork();
  v9 = *(v1 + 112);
  v10 = *(v1 + 120);

  sub_25F462678(v9, v10, sub_25F3F9AE4, v1);
  v12 = v11;

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_25F3F6BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v33 = a2;
  v34 = a4;
  v5 = *a3;
  WitnessTable = (*a3 + 104);
  v6 = *(v5 + 88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v26 - v9;
  v11 = *(v10 + 96);
  v12 = *(v10 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  *&v18 = v11;
  *(&v18 + 1) = *WitnessTable;
  *&v19 = v12;
  *(&v19 + 1) = v6;
  v26 = v19;
  v27 = v18;
  v35 = v19;
  v36 = v18;
  type metadata accessor for BranchingBridgeBuilder();
  WitnessTable = swift_getWitnessTable();
  (*(v14 + 16))(v17, v32, v13);
  v20 = v29;
  (*(v7 + 16))(v29, v33, v6);
  v21 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v22 = (v15 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = v27;
  *(v23 + 16) = v26;
  *(v23 + 32) = v24;
  *(v23 + 48) = a3;
  (*(v14 + 32))(v23 + v21, v17, v13);
  (*(v7 + 32))(v23 + v22, v20, v6);
  type metadata accessor for Junction();
  swift_retain_n();
  return sub_25F4A24D0();
}

uint64_t sub_25F3F6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_25F3F7004;

  return sub_25F3F9E44(a4);
}

uint64_t sub_25F3F7004(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25F3F7150, v9, 0);
  }
}

uint64_t sub_25F3F7174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*a5 + 96);
  *(v5 + 16) = *(*a5 + 80);
  *(v5 + 32) = v7;
  type metadata accessor for BranchingBridgeBuilder();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_task_alloc();
  *(v5 + 48) = v9;
  *v9 = v5;
  v9[1] = sub_25F3F7278;

  return sub_25F45AB68(a5, WitnessTable);
}

uint64_t sub_25F3F7278()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_25F3F736C()
{
  v1 = *v0;
  v2 = *(v0 + 15);

  v3 = *(v0 + 17);

  v4 = *(*v0 + 136);
  v5 = *(v1 + 96);
  v6 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  sub_25F4A26F0();
  v7 = sub_25F4A3060();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25F3F74B4()
{
  v0 = sub_25F3F736C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F3F74DC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  sub_25F4A26F0();
  result = sub_25F4A3060();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_25F3F7620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F3FAD58;

  return sub_25F3F6A18();
}

uint64_t sub_25F3F76E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v24[1] = a1;
  v28 = a4;
  v5 = *v4;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 80);
  swift_getAssociatedTypeWitness();
  v25 = v6;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  v24[0] = swift_getWitnessTable();
  v8 = sub_25F4A26F0();
  v9 = sub_25F4A3060();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(v5 + 112);
  swift_beginAccess();
  (*(v10 + 16))(v16, v4 + v17, v9);
  v18 = *(v8 - 8);
  if ((*(v18 + 48))(v16, 1, v8) != 1)
  {
    return (*(v18 + 32))(v28, v16, v8);
  }

  (*(v10 + 8))(v16, v9);
  v19 = swift_allocObject();
  v21 = v25;
  v20 = v26;
  v19[2] = v7;
  v19[3] = v21;
  v19[4] = v20;
  v19[5] = v4;

  v22 = v28;
  sub_25F4A26D0();
  (*(v18 + 16))(v14, v22, v8);
  (*(v18 + 56))(v14, 0, 1, v8);
  swift_beginAccess();
  (*(v10 + 40))(v4 + v17, v14, v9);
  return swift_endAccess();
}

uint64_t sub_25F3F7A14(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = type metadata accessor for BranchingOutletBuilder();
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_25F3FAD58;

  return sub_25F3F4EC4(v6, WitnessTable);
}

char *sub_25F3F7B0C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = *(*v2 + 112);
  v7 = *(v5 + 88);
  v8 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  v9 = sub_25F4A26F0();
  (*(*(v9 - 8) + 56))(&v2[v6], 1, 1, v9);
  *(v2 + 14) = a1;
  *(v2 + 15) = a2;
  return v2;
}

uint64_t sub_25F3F7C54()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return MEMORY[0x2822009F8](sub_25F3F7C9C, v0, 0);
}

uint64_t sub_25F3F7C9C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v0[2] = AssociatedTypeWitness;
  v0[3] = v7;
  v0[4] = AssociatedConformanceWitness;
  v0[5] = v8;
  type metadata accessor for BranchingFork();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;

  sub_25F462678(sub_25F3F9524, v9, sub_25F3F952C, v2);
  v11 = v10;

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_25F3F7E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_25F3F7FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a4;
  v31 = a1;
  v32 = a3;
  v4 = *(*a3 + 88);
  v5 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = v4;
  v7 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v29 = AssociatedTypeWitness;
  v30 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v9 = *(v27 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = v7;
  type metadata accessor for BranchingOutletBuilder();
  WitnessTable = swift_getWitnessTable();
  (*(v14 + 16))(v17, v31, v13);
  v19 = v27;
  (*(v9 + 16))(v12, v33, v27);
  v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v21 = (v15 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = swift_allocObject();
  v23 = v26;
  *(v22 + 2) = v18;
  *(v22 + 3) = v23;
  *(v22 + 4) = v32;
  (*(v14 + 32))(&v22[v20], v17, v13);
  (*(v9 + 32))(&v22[v21], v12, v19);
  type metadata accessor for Junction();
  swift_retain_n();
  return sub_25F4A24D0();
}

uint64_t sub_25F3F8338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_25F3F83E8;

  return sub_25F3F8534(a3, a4);
}

uint64_t sub_25F3F83E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_25F3FAD40, v9, 0);
  }
}

uint64_t sub_25F3F8534(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3F85FC, v2, 0);
}

uint64_t sub_25F3F85FC()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v15 = v0[3];
  v4 = v0[2];
  v6 = *(v1 + 80);
  v5 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Outlet();
  v7 = sub_25F421A74(v15, v4);
  v9 = v8;
  v10 = sub_25F4A2EA0();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  type metadata accessor for BranchingOutletBuilder();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = WitnessTable;
  v12[4] = v7;
  v12[5] = v3;
  swift_retain_n();
  sub_25F3F8E1C(0, 0, v2, &unk_25F4A5260, v12);

  v13 = v0[1];

  return v13(v9);
}

uint64_t sub_25F3F8814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[2] = a5;
  v7 = *a5;
  v8 = *(*a4 + 88);
  v9 = *(*a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[3] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v5[4] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v5[5] = v13;
  v14 = *(*(type metadata accessor for AsyncMessageStream(0) - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v5[6] = v15;
  v16 = *(v7 + 80);
  v17 = *(v7 + 88);
  type metadata accessor for BranchingOutletBuilder();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_task_alloc();
  v5[7] = v19;
  *v19 = v5;
  v19[1] = sub_25F3F89F0;

  return sub_25F4227CC(v15, v13, a5, WitnessTable);
}

uint64_t sub_25F3F89F0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_25F3F8DB0;
  }

  else
  {
    v6 = sub_25F3F8B1C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25F3F8B1C()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v8 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_25F3F8C10;
  v5 = v0[5];
  v6 = v0[6];

  return v8(v6, v5);
}

uint64_t sub_25F3F8C10()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F3F8D20, v2, 0);
}

uint64_t sub_25F3F8D20()
{
  v1 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  sub_25F3F94B8(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25F3F8DB0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_25F3F8E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_25F3F93E0(a3, v24 - v10);
  v12 = sub_25F4A2EA0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F3F9450(v11);
  }

  else
  {
    sub_25F4A2E90();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F4A2E40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F4A2C40() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_25F3F9450(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F3F9450(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

char *sub_25F3F9088()
{
  v1 = *v0;
  v2 = *(v0 + 15);

  v3 = *(*v0 + 112);
  v4 = *(v1 + 88);
  v5 = *(v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MergingFork();
  swift_getWitnessTable();
  sub_25F4A26F0();
  v6 = sub_25F4A3060();
  (*(*(v6 - 8) + 8))(&v0[v3], v6);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25F3F91CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F3FAD58;

  return sub_25F3F7C54();
}

uint64_t sub_25F3F9258(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3F929C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3F92E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F3F9320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F3FAD34;

  return sub_25F3F8814(a1, v4, v5, v7, v6);
}

uint64_t sub_25F3F93E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F3F9450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F3F94B8(uint64_t a1)
{
  v2 = type metadata accessor for AsyncMessageStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F3F9524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F3F7E80(a1, a2);
}

uint64_t sub_25F3F9534()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = v6 + *(v4 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v0 + 4);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  (*(v9 + 8))(&v0[v11], v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v12, v13 | 7);
}

uint64_t sub_25F3F973C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F3FAD34;

  return sub_25F3F8338(a1, v12, v1 + v8, v1 + v11);
}

uint64_t sub_25F3F9950()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F3F9988(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F3FAD34;

  return sub_25F3F55BC(a1, v7);
}

uint64_t sub_25F3F9A54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25F3FAD3C;

  return sub_25F3F7A14(v0);
}

uint64_t sub_25F3F9AEC()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(v1 - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + *(v5 + 64) + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v6 | v9;
  v13 = *(v0 + 6);

  (*(v5 + 8))(&v0[v7], AssociatedTypeWitness);
  (*(v8 + 8))(&v0[v10], v1);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_25F3F9C94(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v10 = (v9 + *(v8 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v11 = v1[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F3FAD34;

  return sub_25F3F6F64(a1, v11, v1 + v9, v1 + v10);
}

uint64_t sub_25F3F9E44(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3F9F08, v1, 0);
}

uint64_t sub_25F3F9F08()
{
  v1 = v0[12];
  v2 = *(v1 + 136);
  v7 = (*(v1 + 128) + **(v1 + 128));
  v3 = *(*(v1 + 128) + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_25F3FA000;
  v5 = v0[11];

  return v7(v0 + 2, v5);
}

uint64_t sub_25F3FA000()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 128) = v0;

  if (v0)
  {
    v4 = *(v3 + 96);

    return MEMORY[0x2822009F8](sub_25F3FA524, v4, 0);
  }

  else
  {
    v5 = *(v3 + 104);
    v6 = v5[12];
    v7 = v5[10];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Bridge();
    *&v8 = v7;
    *(&v8 + 1) = v5[11];
    *(v3 + 56) = v8;
    *&v8 = v6;
    *(&v8 + 1) = v5[13];
    *(v3 + 72) = v8;
    type metadata accessor for BranchingBridgeBuilder();
    WitnessTable = swift_getWitnessTable();
    *(v3 + 136) = WitnessTable;
    v10 = swift_task_alloc();
    *(v3 + 144) = v10;
    *v10 = v3;
    v10[1] = sub_25F3FA2AC;
    v11 = *(v3 + 96);

    return sub_25F45A408(v11, WitnessTable, v3 + 16);
  }
}

uint64_t sub_25F3FA2AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 144);
  v8 = *v3;
  v6[19] = v2;

  v9 = v6[12];
  if (v2)
  {
    v10 = sub_25F3FA588;
  }

  else
  {
    v6[20] = a2;
    v6[21] = a1;
    v10 = sub_25F3FA3EC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_25F3FA3EC()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v5 = sub_25F4A2EA0();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  swift_retain_n();

  sub_25F494FEC(0, 0, v3, &unk_25F4A52C0, v6);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];
  v8 = v0[20];

  return v7(v8);
}

uint64_t sub_25F3FA524()
{
  v1 = v0[16];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3FA588()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F3FA5F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F3FAD34;

  return sub_25F3F7174(a1, v4, v5, v7, v6);
}

uint64_t sub_25F3FA6B4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F3FA6EC(uint64_t a1)
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
  v10[1] = sub_25F3F30B0;

  return sub_25F3F66C0(a1, v9);
}

uint64_t sub_25F3FA7CC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25F3FAD3C;

  return sub_25F3F64BC(v0);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F3FA8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F3F30B0;

  return sub_25F3F5E24(a1, v4, v5, v7, v6);
}

uint64_t sub_25F3FA964()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25F3FA9F4;

  return sub_25F3F53C4(v0);
}

uint64_t sub_25F3FA9F4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_25F3FAAF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F3FAB38(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F3FAD34;

  return sub_25F3F4E18(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_25F3FAC0C()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F3FAC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v12 = v4[5];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_25F3FAD34;

  return sub_25F3F2FD0(a1, a2, a3, a4, v12, v10, v11, v13);
}

uint64_t sub_25F3FAD5C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v25 = a2 + 32;
    v26 = result + 32;
    while (1)
    {
      if (v3 == v2)
      {
LABEL_59:
        __break(1u);
        return result;
      }

      v4 = v26 + 48 * v3;
      result = *v4;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      v9 = v25 + 48 * v3;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      v13 = *(v9 + 40);
      if (*v4 != *v9 || *(v4 + 8) != *(v9 + 8))
      {
        result = sub_25F4A3270();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      if (v5 != v10 || v6 != v11)
      {
        result = sub_25F4A3270();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      v16 = *(v7 + 16);
      if (v16 != *(v12 + 16))
      {
        return 0;
      }

      if (v16)
      {
        v17 = v7 == v12;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v20 = (v7 + 40);
        v21 = (v12 + 40);
        while (v16)
        {
          result = *(v20 - 1);
          if (result != *(v21 - 1) || *v20 != *v21)
          {
            result = sub_25F4A3270();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }

          v20 += 2;
          v21 += 2;
          if (!--v16)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_59;
      }

LABEL_24:
      if (v8 == 4)
      {
        if (v13 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v13 == 4)
      {
        return 0;
      }

      if (v8 > 1)
      {
        v19 = 0x70616373646E616CLL;
        if (v8 == 2)
        {
          v18 = 0xED00007466654C65;
          if (v13 <= 1)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v18 = 0xEE00746867695265;
          if (v13 <= 1)
          {
LABEL_46:
            if (v13)
            {
              v23 = 0x800000025F4B6AF0;
              if (v19 != 0xD000000000000012)
              {
                goto LABEL_54;
              }
            }

            else
            {
              v23 = 0xE800000000000000;
              if (v19 != 0x7469617274726F70)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_52;
          }
        }
      }

      else if (v8)
      {
        v19 = 0xD000000000000012;
        v18 = 0x800000025F4B6AF0;
        if (v13 <= 1)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
        v19 = 0x7469617274726F70;
        if (v13 <= 1)
        {
          goto LABEL_46;
        }
      }

      if (v13 == 2)
      {
        v23 = 0xED00007466654C65;
        if (v19 != 0x70616373646E616CLL)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v23 = 0xEE00746867695265;
        if (v19 != 0x70616373646E616CLL)
        {
          goto LABEL_54;
        }
      }

LABEL_52:
      if (v18 == v23)
      {

        goto LABEL_6;
      }

LABEL_54:
      v24 = sub_25F4A3270();

      if ((v24 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      ++v3;
      result = 1;
      if (v3 == v2)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_25F3FB058(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v89 = v2;
  v90 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 144);
    v9 = *(v5 + 176);
    v70 = *(v5 + 160);
    v71 = v9;
    v10 = *(v5 + 80);
    v11 = *(v5 + 112);
    v66 = *(v5 + 96);
    v67 = v11;
    v12 = *(v5 + 112);
    v13 = *(v5 + 144);
    v68 = *(v5 + 128);
    v69 = v13;
    v14 = *(v5 + 16);
    v15 = *(v5 + 48);
    v62 = *(v5 + 32);
    v63 = v15;
    v16 = *(v5 + 48);
    v17 = *(v5 + 80);
    v64 = *(v5 + 64);
    v65 = v17;
    v18 = *(v5 + 16);
    v61[0] = *v5;
    v61[1] = v18;
    v19 = *(v5 + 176);
    v58 = v70;
    v59 = v19;
    v54 = v66;
    v55 = v12;
    v56 = v68;
    v57 = v8;
    v50 = v62;
    v51 = v16;
    v52 = v64;
    v53 = v10;
    v48 = v61[0];
    v49 = v14;
    v20 = *(v6 + 144);
    v21 = *(v6 + 176);
    v82 = *(v6 + 160);
    v83 = v21;
    v22 = *(v6 + 80);
    v23 = *(v6 + 112);
    v78 = *(v6 + 96);
    v79 = v23;
    v24 = *(v6 + 112);
    v25 = *(v6 + 144);
    v80 = *(v6 + 128);
    v81 = v25;
    v26 = *(v6 + 16);
    v27 = *(v6 + 48);
    v74 = *(v6 + 32);
    v75 = v27;
    v28 = *(v6 + 48);
    v29 = *(v6 + 80);
    v76 = *(v6 + 64);
    v77 = v29;
    v30 = *(v6 + 16);
    v73[0] = *v6;
    v73[1] = v30;
    v31 = *(v6 + 176);
    v45 = v82;
    v46 = v31;
    v41 = v78;
    v42 = v24;
    v43 = v80;
    v44 = v20;
    v37 = v74;
    v38 = v28;
    v39 = v76;
    v40 = v22;
    v72 = *(v5 + 192);
    v60 = *(v5 + 192);
    v84 = *(v6 + 192);
    v47 = *(v6 + 192);
    v35 = v73[0];
    v36 = v26;
    sub_25F3F0A3C(v61, v34);
    sub_25F3F0A3C(v73, v34);
    v32 = _s19PreviewsMessagingOS22BuiltTargetDescriptionV2eeoiySbAC_ACtFZ_0(&v48, &v35);
    v85[10] = v45;
    v85[11] = v46;
    v86 = v47;
    v85[6] = v41;
    v85[7] = v42;
    v85[8] = v43;
    v85[9] = v44;
    v85[2] = v37;
    v85[3] = v38;
    v85[4] = v39;
    v85[5] = v40;
    v85[0] = v35;
    v85[1] = v36;
    sub_25F3F0A74(v85);
    v87[9] = v57;
    v87[10] = v58;
    v87[11] = v59;
    v87[5] = v53;
    v87[6] = v54;
    v87[7] = v55;
    v87[8] = v56;
    v87[1] = v49;
    v87[2] = v50;
    v87[3] = v51;
    v87[4] = v52;
    v88 = v60;
    v87[0] = v48;
    sub_25F3F0A74(v87);
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 200;
    v5 += 200;
  }

  return 1;
}

uint64_t sub_25F3FB298(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_82;
    }

    v6 = (v4 + 24 * v3);
    v7 = v6[1];
    v8 = v6[2];
    v9 = (v5 + 24 * v3);
    v10 = v9[1];
    v11 = v9[2];
    if (v7)
    {
      if (!v10)
      {
        return 0;
      }

      if (*v6 != *v9 || v7 != v10)
      {
        v13 = v6[1];
        v14 = v9[1];
        v15 = v3;
        v16 = v4;
        v17 = v5;
        v18 = sub_25F4A3270();
        v5 = v17;
        v4 = v16;
        v3 = v15;
        if ((v18 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v10)
    {
      return 0;
    }

    v19 = *(v8 + 16);
    if (v19 != *(v11 + 16))
    {
      return 0;
    }

    if (v19 && v8 != v11)
    {
      break;
    }

LABEL_21:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  v43 = v5;
  v44 = v4;
  v45 = v3;
  v46 = v2;
  v50 = v11 + 32;
  v51 = v8 + 32;

  v21 = 0;
  v48 = v8;
  v49 = v11;
  v47 = v19;
  while (v21 < *(v8 + 16))
  {
    if (v21 >= *(v11 + 16))
    {
      goto LABEL_81;
    }

    v22 = v51 + 48 * v21;
    result = *v22;
    v23 = *(v22 + 16);
    v52 = *(v22 + 24);
    v24 = *(v22 + 32);
    v25 = *(v22 + 40);
    v26 = v50 + 48 * v21;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = *(v26 + 40);
    v31 = *v22 == *v26 && *(v22 + 8) == *(v26 + 8);
    if (!v31 && (v32 = *(v26 + 8), result = sub_25F4A3270(), (result & 1) == 0) || (v23 == v27 ? (v33 = v52 == v28) : (v33 = 0), !v33 && (result = sub_25F4A3270(), (result & 1) == 0) || (v34 = *(v24 + 16), v34 != *(v29 + 16))))
    {
LABEL_77:

      return 0;
    }

    if (v34)
    {
      v35 = v24 == v29;
    }

    else
    {
      v35 = 1;
    }

    if (!v35)
    {
      v38 = (v24 + 40);
      v39 = (v29 + 40);
      while (v34)
      {
        result = *(v38 - 1);
        if (result != *(v39 - 1) || *v38 != *v39)
        {
          result = sub_25F4A3270();
          if ((result & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        v38 += 2;
        v39 += 2;
        if (!--v34)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
      break;
    }

LABEL_43:
    if (v25 == 4)
    {
      if (v30 != 4)
      {
        goto LABEL_77;
      }

      goto LABEL_24;
    }

    if (v30 == 4)
    {
      goto LABEL_77;
    }

    if (v25 > 1)
    {
      v37 = 0x70616373646E616CLL;
      if (v25 == 2)
      {
        v36 = 0xED00007466654C65;
      }

      else
      {
        v36 = 0xEE00746867695265;
      }
    }

    else if (v25)
    {
      v37 = 0xD000000000000012;
      v36 = 0x800000025F4B6AF0;
    }

    else
    {
      v36 = 0xE800000000000000;
      v37 = 0x7469617274726F70;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v41 = 0xED00007466654C65;
        if (v37 != 0x70616373646E616CLL)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v41 = 0xEE00746867695265;
        if (v37 != 0x70616373646E616CLL)
        {
          goto LABEL_72;
        }
      }
    }

    else if (v30)
    {
      v41 = 0x800000025F4B6AF0;
      if (v37 != 0xD000000000000012)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v41 = 0xE800000000000000;
      if (v37 != 0x7469617274726F70)
      {
        goto LABEL_72;
      }
    }

    if (v36 == v41)
    {
      v42 = 1;
      goto LABEL_73;
    }

LABEL_72:
    v42 = sub_25F4A3270();
LABEL_73:

    if ((v42 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_24:
    ++v21;
    v8 = v48;
    v11 = v49;
    if (v21 == v47)
    {

      v3 = v45;
      v2 = v46;
      v5 = v43;
      v4 = v44;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_25F3FB734(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_25F4A3270() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25F3FB7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + v3 + 40);
      v5 = *(a1 + v3 + 48);
      v6 = *(a1 + v3 + 56);
      v7 = *(a1 + v3 + 64);
      v8 = *(a2 + v3 + 40);
      v9 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v11 = *(a2 + v3 + 64);
      v19 = *(a2 + v3 + 72);
      v20 = *(a1 + v3 + 72);
      if (v4)
      {
        if (!v8)
        {
          return 0;
        }

        v12 = *(a1 + v3 + 32) == *(a2 + v3 + 32) && v4 == v8;
        if (!v12 && (sub_25F4A3270() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v13 = v5 == v9 && v6 == v10;
      if (!v13 && (sub_25F4A3270() & 1) == 0)
      {
        return 0;
      }

      v15 = sub_25F3E8B90(v14, v11);

      result = 0;
      if (v15 & 1) == 0 || ((v20 ^ v19))
      {
        return result;
      }

      v3 += 48;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25F3FB958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_25F4A3270() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_25F4A3270() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_25F3FBA40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 64);
  v25 = *(a2 + 56);
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    v8 = a1;
    v9 = a2;
    v10 = sub_25F4A3270();
    a2 = v9;
    v11 = v10;
    a1 = v8;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = v5;
  v12 = v2 - 1;
  v13 = (a2 + 104);
  for (i = (a1 + 104); ; i += 5)
  {

    v15 = (v3 & 1) != 0 ? 1801545079 : 0x676E6F727473;
    v16 = (v3 & 1) != 0 ? 0xE400000000000000 : 0xE600000000000000;
    v17 = (v6 & 1) != 0 ? 1801545079 : 0x676E6F727473;
    v18 = (v6 & 1) != 0 ? 0xE400000000000000 : 0xE600000000000000;
    if (v15 == v17 && v16 == v18)
    {
    }

    else
    {
      v19 = sub_25F4A3270();

      if ((v19 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v4)
    {
      break;
    }

    v20 = v12;
    if (v7)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (!v20)
    {
      return 1;
    }

    v3 = *(i - 16);
    v22 = *(i - 1);
    v4 = *i;
    v6 = *(v13 - 16);
    v7 = *v13;
    v25 = *(v13 - 1);
    if ((*(i - 4) != *(v13 - 4) || *(i - 3) != *(v13 - 3)) && (sub_25F4A3270() & 1) == 0)
    {
      return 0;
    }

    v24 = v22;
    v12 = v20 - 1;
    v13 += 5;
  }

  if (v7)
  {
    v20 = v12;
    if (v24 == v25 && v4 == v7)
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v21 = sub_25F4A3270();

      swift_bridgeObjectRelease_n();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

LABEL_39:

LABEL_40:

  return 0;
}

uint64_t StaticLinkablePreviewProduct.builtTargetDescriptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t StaticLinkablePreviewProduct.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  result = MEMORY[0x25F8DDB20](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v22[0] = *v6;
      v7 = v6[1];
      v8 = v6[2];
      v9 = v6[4];
      v22[3] = v6[3];
      v22[4] = v9;
      v22[1] = v7;
      v22[2] = v8;
      v10 = v6[5];
      v11 = v6[6];
      v12 = v6[8];
      v22[7] = v6[7];
      v22[8] = v12;
      v22[5] = v10;
      v22[6] = v11;
      v13 = v6[9];
      v14 = v6[10];
      v15 = v6[11];
      v23 = *(v6 + 24);
      v22[10] = v14;
      v22[11] = v15;
      v22[9] = v13;
      v16 = v6[11];
      v36 = v6[10];
      v37 = v16;
      v38 = *(v6 + 24);
      v17 = v6[7];
      v32 = v6[6];
      v33 = v17;
      v18 = v6[9];
      v34 = v6[8];
      v35 = v18;
      v19 = v6[3];
      v28 = v6[2];
      v29 = v19;
      v20 = v6[5];
      v30 = v6[4];
      v31 = v20;
      v21 = v6[1];
      v26 = *v6;
      v27 = v21;
      sub_25F3F0A3C(v22, v24);
      BuiltTargetDescription.hash(into:)(a1);
      v24[10] = v36;
      v24[11] = v37;
      v25 = v38;
      v24[6] = v32;
      v24[7] = v33;
      v24[8] = v34;
      v24[9] = v35;
      v24[2] = v28;
      v24[3] = v29;
      v24[4] = v30;
      v24[5] = v31;
      v24[0] = v26;
      v24[1] = v27;
      result = sub_25F3F0A74(v24);
      v6 = (v6 + 200);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t StaticLinkablePreviewProduct.hashValue.getter()
{
  v3 = *v0;
  sub_25F4A3300();
  StaticLinkablePreviewProduct.hash(into:)(v2);
  return sub_25F4A3350();
}

uint64_t sub_25F3FBEF4()
{
  v3 = *v0;
  sub_25F4A3300();
  StaticLinkablePreviewProduct.hash(into:)(v2);
  return sub_25F4A3350();
}

uint64_t sub_25F3FBF44()
{
  v3 = *v0;
  sub_25F4A3300();
  StaticLinkablePreviewProduct.hash(into:)(v2);
  return sub_25F4A3350();
}

uint64_t sub_25F3FBFA0()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3FC014()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F3FC068@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t StaticLinkablePreviewProduct.propertyListValue.getter()
{
  v1 = *v0;
  result = _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
  if (*(v1 + 16))
  {
    v3[5] = v1;
    v3[3] = &type metadata for StaticLinkablePreviewProduct.Key;
    v3[4] = sub_25F3FC184();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
    sub_25F3FC1D8();
    sub_25F4A2520();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

unint64_t sub_25F3FC184()
{
  result = qword_27FD6D9F8;
  if (!qword_27FD6D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6D9F8);
  }

  return result;
}

unint64_t sub_25F3FC1D8()
{
  result = qword_27FD6DA08;
  if (!qword_27FD6DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6DA00, &qword_25F4A5350);
    sub_25F3FC25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA08);
  }

  return result;
}

unint64_t sub_25F3FC25C()
{
  result = qword_27FD6DA10;
  if (!qword_27FD6DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA10);
  }

  return result;
}

uint64_t StaticLinkablePreviewProduct.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9[3] = &type metadata for StaticLinkablePreviewProduct.Key;
  v9[4] = sub_25F3FC184();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
  sub_25F3FC1D8();
  sub_25F4A2580();
  if (v2)
  {
    v5 = sub_25F4A25E0();
    (*(*(v5 - 8) + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    if (v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = sub_25F4A25E0();
    result = (*(*(v8 - 8) + 8))(a1, v8);
    *a2 = v7;
  }

  return result;
}

unint64_t sub_25F3FC3DC()
{
  result = qword_27FD6DA18;
  if (!qword_27FD6DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA18);
  }

  return result;
}

uint64_t sub_25F3FC458(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25F3FC4A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F3FC500()
{
  result = qword_27FD6DA20;
  if (!qword_27FD6DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA20);
  }

  return result;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.sfSymbolName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.sfSymbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.init(id:name:sfSymbolName:)(PreviewsMessagingOS::CanvasControlDescription::ControlType::TimelineConfiguration::TimelineStop *__return_ptr retstr, Swift::Int id, Swift::String name, Swift::String_optional sfSymbolName)
{
  retstr->id = id;
  retstr->name = name;
  retstr->sfSymbolName = sfSymbolName;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.stops.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

PreviewsMessagingOS::CanvasControlDescription::ControlType::TimelineConfiguration __swiftcall CanvasControlDescription.ControlType.TimelineConfiguration.init(stops:allowShuffle:)(PreviewsMessagingOS::CanvasControlDescription::ControlType::TimelineConfiguration stops, Swift::Bool allowShuffle)
{
  *v2 = stops.stops._rawValue;
  *(v2 + 8) = allowShuffle;
  stops.allowShuffle = allowShuffle;
  return stops;
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.sfSymbolName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.sfSymbolName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall CanvasControlDescription.ControlType.ToggleConfiguration.init(sfSymbolName:title:supportsInteractionEvents:)(PreviewsMessagingOS::CanvasControlDescription::ControlType::ToggleConfiguration *__return_ptr retstr, Swift::String sfSymbolName, Swift::String title, Swift::Bool supportsInteractionEvents)
{
  retstr->sfSymbolName = sfSymbolName;
  retstr->title = title;
  retstr->supportsInteractionEvents = supportsInteractionEvents;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Item.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Item.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsMessagingOS::CanvasControlDescription::ControlType::GridConfiguration::Item __swiftcall CanvasControlDescription.ControlType.GridConfiguration.Item.init(title:)(Swift::String_optional title)
{
  object = title.value._object;
  countAndFlagsBits = title.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.title.value._object = v6;
  result.title.value._countAndFlagsBits = v5;
  return result;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.firstItem.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.firstItem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.moreItems.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall CanvasControlDescription.ControlType.GridConfiguration.Section.init(title:firstItem:moreItems:)(PreviewsMessagingOS::CanvasControlDescription::ControlType::GridConfiguration::Section *__return_ptr retstr, Swift::String_optional title, PreviewsMessagingOS::CanvasControlDescription::ControlType::GridConfiguration::Item firstItem, Swift::OpaquePointer moreItems)
{
  retstr->title = title;
  retstr->firstItem = *firstItem.title.value._countAndFlagsBits;
  retstr->moreItems._rawValue = firstItem.title.value._object;
}

void __swiftcall CanvasControlDescription.ControlType.GridConfiguration.Section.init(title:items:)(PreviewsMessagingOS::CanvasControlDescription::ControlType::GridConfiguration::Section_optional *__return_ptr retstr, Swift::String_optional title, Swift::OpaquePointer items)
{
  object = title.value._object;
  v5 = *(items._rawValue + 2);
  if (v5)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
    v7 = *(items._rawValue + 4);
    v8 = *(items._rawValue + 5);
    sub_25F402BE0(items._rawValue, items._rawValue + 32, 1, (2 * v5) | 1);
    v10 = v9;
  }

  else
  {

    countAndFlagsBits = 0;
    object = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
  }

  retstr->value.title.value._countAndFlagsBits = countAndFlagsBits;
  retstr->value.title.value._object = object;
  retstr->value.firstItem.title.value._countAndFlagsBits = v7;
  retstr->value.firstItem.title.value._object = v8;
  retstr->value.moreItems._rawValue = v10;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.items.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7A0, &qword_25F4A4F30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25F4A43D0;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v7 = v4;

  sub_25F3E895C(v5);
  return v7;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.sections.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

__n128 CanvasControlDescription.thumbnailGeometry.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CanvasControlDescription(0) + 24));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 CanvasControlDescription.thumbnailGeometry.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for CanvasControlDescription(0) + 24));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

__n128 CanvasControlDescription.init(controlType:modifiers:thumbnailGeometry:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X2>, uint64_t a3@<X8>)
{
  v9 = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u8[8];
  v7 = a3 + *(type metadata accessor for CanvasControlDescription(0) + 24);
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  sub_25F40317C(a1, a3, type metadata accessor for CanvasControlDescription.ControlType);
  result = v9;
  *v7 = v9;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  return result;
}

uint64_t static CanvasControlDescription.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CanvasControlDescription.ControlType(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for CanvasControlDescription(0);
  v3 = a1 + *(result + 24);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  return result;
}

uint64_t sub_25F3FCECC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7265696669646F6DLL;
  v4 = 0xE900000000000073;
  v5 = 0x800000025F4B5C60;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000025F4B5C60;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x546C6F72746E6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000657079;
  }

  v8 = 0x7265696669646F6DLL;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x546C6F72746E6F63;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000657079;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F3FCFD4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FD088()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FD128()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FD1D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F404918();
  *a2 = result;
  return result;
}

void sub_25F3FD208(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0xE900000000000073;
  v5 = 0x7265696669646F6DLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000025F4B5C60;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546C6F72746E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F3FD278()
{
  v1 = 0x7265696669646F6DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546C6F72746E6F63;
  }
}

uint64_t CanvasControlDescription.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CanvasControlDescription.ControlType(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &type metadata for CanvasControlDescription.Key;
  v9 = sub_25F402CF8();
  v20 = v9;
  LOBYTE(v18[0]) = 0;
  sub_25F403134(&qword_27FD6DA30, type metadata accessor for CanvasControlDescription.ControlType);
  sub_25F4A2530();
  if (v2)
  {
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    v19 = &type metadata for CanvasControlDescription.Key;
    v20 = v9;
    LOBYTE(v18[0]) = 1;
    sub_25F402D4C();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v18);
    v19 = &type metadata for CanvasControlDescription.Key;
    v20 = v9;
    LOBYTE(v18[0]) = 2;
    sub_25F402DFC();
    sub_25F4A2580();
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    __swift_destroy_boxed_opaque_existential_1(v18);
    *v16 = *&v16[3];
    v13 = v16[5];
    v14 = v17;
    v15 = a2 + *(type metadata accessor for CanvasControlDescription(0) + 24);
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    result = sub_25F40317C(v8, a2, type metadata accessor for CanvasControlDescription.ControlType);
    *v15 = *v16;
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
  }

  return result;
}

uint64_t sub_25F3FD5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC10, &qword_25F4A65F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC18, &unk_25F4A6600);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  v14 = *(v7 + 56);
  *(v21 - v12) = 0;
  sub_25F402ED8(a1, v21 + v14 - v12, type metadata accessor for CanvasControlDescription.ControlType);
  v15 = a1 + *(type metadata accessor for CanvasControlDescription(0) + 24);
  *v21 = *v15;
  v16 = *(v15 + 16);
  v27 = *(v15 + 24);
  sub_25F404B8C(v13, v11, &qword_27FD6DC18, &unk_25F4A6600);
  v17 = *v11;
  sub_25F40317C(&v11[*(v7 + 56)], v5, type metadata accessor for CanvasControlDescription.ControlType);
  v18 = type metadata accessor for CanvasControlDescription.ControlType(0);
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  v26 = v17;
  v25 = 1;
  v24 = 0;
  v23 = 2;
  *&v21[3] = *v21;
  v21[5] = v16;
  v22 = v27;
  sub_25F402CF8();
  sub_25F403134(&qword_27FD6DA30, type metadata accessor for CanvasControlDescription.ControlType);
  sub_25F402D4C();
  sub_25F402DFC();
  v19 = sub_25F4A28C0();
  sub_25F3F21F4(v5, &qword_27FD6DC10, &qword_25F4A65F8);
  sub_25F3F21F4(v13, &qword_27FD6DC18, &unk_25F4A6600);
  return v19;
}

double ThumbnailGeometry.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void ThumbnailGeometry.init(size:cornerRadius:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
}

uint64_t sub_25F3FD940(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x615272656E726F63;
  }

  else
  {
    v4 = 1702521203;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEC00000073756964;
  }

  if (*a2)
  {
    v6 = 0x615272656E726F63;
  }

  else
  {
    v6 = 1702521203;
  }

  if (*a2)
  {
    v7 = 0xEC00000073756964;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3FD9E8()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FDA6C()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FDADC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F3FDB68(uint64_t *a1@<X8>)
{
  v2 = 1702521203;
  if (*v1)
  {
    v2 = 0x615272656E726F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEC00000073756964;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F3FDBA8()
{
  if (*v0)
  {
    result = 0x615272656E726F63;
  }

  else
  {
    result = 1702521203;
  }

  *v0;
  return result;
}

uint64_t ThumbnailGeometry.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for ThumbnailGeometry.Key;
  v5 = sub_25F402E58();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  type metadata accessor for CGSize(0);
  sub_25F4A2530();
  if (v2)
  {
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v6 = v15;
    v7 = v16;
    v13 = &type metadata for ThumbnailGeometry.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    v11 = v17;
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t ThumbnailGeometry.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return sub_25F4A25A0();
}

uint64_t sub_25F3FDD90()
{
  type metadata accessor for CGSize(0);
  sub_25F402E58();
  return sub_25F4A28D0();
}

uint64_t sub_25F3FDE24()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  return sub_25F4A25A0();
}

PreviewsMessagingOS::CanvasControlEvent::Event_optional __swiftcall CanvasControlEvent.Event.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_CanvasControlEvent_Event_thumbnailRequest;
  }

  else
  {
    v2.value = PreviewsMessagingOS_CanvasControlEvent_Event_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t CanvasControlEvent.Event.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7463617265746E69;
  }
}

uint64_t sub_25F3FDF1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x7463617265746E69;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6F69;
  }

  else
  {
    v5 = 0x800000025F4B5C90;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0x7463617265746E69;
  }

  if (*a2)
  {
    v7 = 0x800000025F4B5C90;
  }

  else
  {
    v7 = 0xEB000000006E6F69;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3FDFD0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FE060()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FE0DC()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F3FE174(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B5C90;
  v3 = 0x7463617265746E69;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEB000000006E6F69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F3FE1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F404AEC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t CanvasControlEvent.init<A>(event:controlIndex:state:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F4A3060();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = *(a4 - 8);
  (*(v14 + 16))(&v17 - v12, a3, a4);
  (*(v14 + 56))(v13, 0, 1, a4);
  v15 = a5 + *(type metadata accessor for CanvasControlEvent(0) + 24);
  PlistValueBox.init<A>(value:)(v13);
  result = (*(v14 + 8))(a3, a4);
  *a5 = a1 & 1;
  *(a5 + 8) = a2;
  return result;
}

uint64_t PlistValueBox.init<A>(value:)(uint64_t a1)
{
  sub_25F403038();
  sub_25F4A25C0();
  v2 = sub_25F4A3060();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_25F3FE5C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x496C6F72746E6F63;
  v4 = 0xEC0000007865646ELL;
  if (v2 != 1)
  {
    v3 = 0x786F426574617473;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x746E657665;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x496C6F72746E6F63;
  v8 = 0xEC0000007865646ELL;
  if (*a2 != 1)
  {
    v7 = 0x786F426574617473;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x746E657665;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F3FE6D4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FE77C()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FE810()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FE8B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F404964();
  *a2 = result;
  return result;
}

void sub_25F3FE8E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC0000007865646ELL;
  v5 = 0x496C6F72746E6F63;
  if (v2 != 1)
  {
    v5 = 0x786F426574617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E657665;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F3FE948()
{
  v1 = 0x496C6F72746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x786F426574617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E657665;
  }
}

uint64_t CanvasControlEvent.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PlistValueBox(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &type metadata for CanvasControlEvent.Key;
  v9 = sub_25F40308C();
  v19 = v9;
  LOBYTE(v17[0]) = 0;
  sub_25F4030E0();
  sub_25F4A2530();
  if (v2)
  {
    v12 = sub_25F4A25E0();
    (*(*(v12 - 8) + 8))(a1, v12);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    v10 = v20;
    v18 = &type metadata for CanvasControlEvent.Key;
    v19 = v9;
    LOBYTE(v17[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = v16;
    v18 = &type metadata for CanvasControlEvent.Key;
    v19 = v9;
    LOBYTE(v17[0]) = 2;
    sub_25F403134(&qword_27FD6DA68, type metadata accessor for PlistValueBox);
    sub_25F4A2530();
    v13 = sub_25F4A25E0();
    (*(*(v13 - 8) + 8))(a1, v13);
    __swift_destroy_boxed_opaque_existential_1(v17);
    *a2 = v10;
    *(a2 + 8) = v11;
    v14 = type metadata accessor for CanvasControlEvent(0);
    return sub_25F40317C(v8, a2 + *(v14 + 24), type metadata accessor for PlistValueBox);
  }
}

uint64_t sub_25F3FEC2C(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC00, &qword_25F4A65E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC08, &qword_25F4A65F0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  v14 = *a1;
  v15 = *(a1 + 1);
  v16 = *(v7 + 56);
  v22[-v12] = 2;
  v17 = type metadata accessor for CanvasControlEvent(0);
  sub_25F402ED8(&a1[*(v17 + 24)], &v13[v16], type metadata accessor for PlistValueBox);
  v27 = 0;
  v26 = v14;
  v25 = 1;
  v23 = v15;
  v24 = 0;
  sub_25F404B8C(v13, v11, &qword_27FD6DC08, &qword_25F4A65F0);
  v18 = *v11;
  sub_25F40317C(&v11[*(v7 + 56)], v5, type metadata accessor for PlistValueBox);
  v19 = type metadata accessor for PlistValueBox(0);
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  v22[15] = v18;
  sub_25F40308C();
  sub_25F4030E0();
  sub_25F403134(&qword_27FD6DA68, type metadata accessor for PlistValueBox);
  v20 = sub_25F4A28C0();
  sub_25F3F21F4(v5, &qword_27FD6DC00, &qword_25F4A65E8);
  sub_25F3F21F4(v13, &qword_27FD6DC08, &qword_25F4A65F0);
  return v20;
}

uint64_t CanvasControlEvent.description.getter()
{
  sub_25F4A30F0();
  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  else
  {
    v1 = 0x7463617265746E69;
  }

  if (*v0)
  {
    v2 = 0x800000025F4B5C90;
  }

  else
  {
    v2 = 0xEB000000006E6F69;
  }

  MEMORY[0x25F8DD480](v1, v2);

  MEMORY[0x25F8DD480](0x6F72746E6F63203ALL, 0xEB0000000023206CLL);
  v7 = *(v0 + 8);
  v3 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v3);

  MEMORY[0x25F8DD480](2112800, 0xE300000000000000);
  v4 = v0 + *(type metadata accessor for CanvasControlEvent(0) + 24);
  v5 = PlistValueBox.description.getter();
  MEMORY[0x25F8DD480](v5);

  return 0;
}

uint64_t sub_25F3FF14C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v7[3] = &type metadata for PlistValueBox.Key;
  v7[4] = sub_25F403038();
  a3(v7, a1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t PlistValueBox.propertyListValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A25E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlistValueBox.description.getter()
{
  v0 = sub_25F4A2570();
  if (*(v0 + 16) && (v1 = sub_25F3EEC04(0x65756C6176, 0xE500000000000000), (v2 & 1) != 0))
  {
    sub_25F4031FC(*(v0 + 56) + 32 * v1, v8);
  }

  else
  {

    memset(v8, 0, sizeof(v8));
  }

  sub_25F404B8C(v8, &v6, &qword_27FD6DA70, &qword_25F4A5548);
  if (v7)
  {
    sub_25F4031EC(&v6, v5);
    sub_25F4A3140();
    v3 = 0;
    __swift_destroy_boxed_opaque_existential_1(v5);
    sub_25F3F21F4(v8, &qword_27FD6DA70, &qword_25F4A5548);
  }

  else
  {
    sub_25F3F21F4(v8, &qword_27FD6DA70, &qword_25F4A5548);
    return 7104878;
  }

  return v3;
}

uint64_t sub_25F3FF3D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F4A25E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25F3FF4C0()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FF594()
{
  *v0;
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FF654()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FF724@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4049B0();
  *a2 = result;
  return result;
}

void sub_25F3FF754(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656E696C656D6974;
  v5 = 0xE400000000000000;
  v6 = 1684632167;
  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (v2 != 3)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C67676F74;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F3FF7E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4048C4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F3FF8A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72756769666E6F63;
  }

  else
  {
    v4 = 0x696D697263736964;
  }

  if (v3)
  {
    v5 = 0xEC000000746E616ELL;
  }

  else
  {
    v5 = 0xED00006E6F697461;
  }

  if (*a2)
  {
    v6 = 0x72756769666E6F63;
  }

  else
  {
    v6 = 0x696D697263736964;
  }

  if (*a2)
  {
    v7 = 0xED00006E6F697461;
  }

  else
  {
    v7 = 0xEC000000746E616ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F3FF964()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F3FF9FC()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F3FFA80()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F3FFB20(uint64_t *a1@<X8>)
{
  v2 = 0x696D697263736964;
  if (*v1)
  {
    v2 = 0x72756769666E6F63;
  }

  v3 = 0xEC000000746E616ELL;
  if (*v1)
  {
    v3 = 0xED00006E6F697461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F3FFB74()
{
  if (*v0)
  {
    result = 0x72756769666E6F63;
  }

  else
  {
    result = 0x696D697263736964;
  }

  *v0;
  return result;
}

uint64_t CanvasControlDescription.ControlType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for CanvasControlDescription.ControlType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v39 = &type metadata for CanvasControlDescription.ControlType.Key;
  v17 = sub_25F403258();
  v40 = v17;
  LOBYTE(v38[0]) = 0;
  sub_25F4032AC();
  sub_25F4A2530();
  if (v2)
  {
    v18 = sub_25F4A25E0();
    (*(*(v18 - 8) + 8))(a1, v18);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v33[0] = v11;
  v33[1] = v4;
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (v34 <= 1u)
  {
    v39 = &type metadata for CanvasControlDescription.ControlType.Key;
    v40 = v17;
    LOBYTE(v38[0]) = 1;
    if (v34)
    {
      sub_25F403354();
      sub_25F4A2530();
      v21 = v41;
      v28 = sub_25F4A25E0();
      (*(*(v28 - 8) + 8))(a1, v28);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *v14 = v34;
      *(v14 + 2) = v29;
      *(v14 + 3) = v30;
      v14[32] = v31;
      swift_storeEnumTagMultiPayload();
      v24 = v14;
    }

    else
    {
      sub_25F4033A8();
      sub_25F4A2530();
      v21 = v41;
      v22 = sub_25F4A25E0();
      (*(*(v22 - 8) + 8))(a1, v22);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v23 = BYTE8(v34);
      *v16 = v34;
      v16[8] = v23;
      swift_storeEnumTagMultiPayload();
      v24 = v16;
    }

    return sub_25F40317C(v24, v21, type metadata accessor for CanvasControlDescription.ControlType);
  }

  else
  {
    if (v34 == 2)
    {
      v39 = &type metadata for CanvasControlDescription.ControlType.Key;
      v40 = v17;
      LOBYTE(v38[0]) = 1;
      sub_25F403300();
      sub_25F4A2530();
      v25 = sub_25F4A25E0();
      (*(*(v25 - 8) + 8))(a1, v25);
      __swift_destroy_boxed_opaque_existential_1(v38);
      v26 = v33[0];
      *v33[0] = v34;
      swift_storeEnumTagMultiPayload();
      v32 = v26;
    }

    else
    {
      if (v34 != 3)
      {
        v27 = sub_25F4A25E0();
        (*(*(v27 - 8) + 8))(a1, v27);
        return swift_storeEnumTagMultiPayload();
      }

      v39 = &type metadata for CanvasControlDescription.ControlType.Key;
      v40 = v17;
      LOBYTE(v38[0]) = 1;
      v20 = sub_25F4A25E0();
      sub_25F4A2530();
      (*(*(v20 - 8) + 8))(a1, v20);
      __swift_destroy_boxed_opaque_existential_1(v38);
      swift_storeEnumTagMultiPayload();
      v32 = v8;
    }

    return sub_25F40317C(v32, v41, type metadata accessor for CanvasControlDescription.ControlType);
  }
}

uint64_t CanvasControlDescription.ControlType.propertyListValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20[-v3];
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CanvasControlDescription.ControlType(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v0;
  v14 = sub_25F403258();
  sub_25F4032AC();
  sub_25F4A25C0();
  sub_25F402ED8(v0, v13, type metadata accessor for CanvasControlDescription.ControlType);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v17 = *(v13 + 2);
      v18 = *(v13 + 3);
      v19 = v13[32];
      v22 = *v13;
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v27 = &type metadata for CanvasControlDescription.ControlType.Key;
      v28 = v14;
      LOBYTE(v26[0]) = 1;
      sub_25F403354();
      sub_25F4A2520();
      sub_25F403404(v22, *(&v22 + 1));
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }

    v16 = v13[8];
    *&v22 = *v13;
    BYTE8(v22) = v16;
    v27 = &type metadata for CanvasControlDescription.ControlType.Key;
    v28 = v14;
    LOBYTE(v26[0]) = 1;
    sub_25F4033A8();
    goto LABEL_8;
  }

  if (result == 2)
  {
    *&v22 = *v13;
    v27 = &type metadata for CanvasControlDescription.ControlType.Key;
    v28 = v14;
    LOBYTE(v26[0]) = 1;
    sub_25F403300();
LABEL_8:
    sub_25F4A2520();

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  if (result != 3)
  {
    return result;
  }

  (*(v6 + 32))(v9, v13, v5);
  (*(v6 + 16))(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v27 = &type metadata for CanvasControlDescription.ControlType.Key;
  v28 = v14;
  LOBYTE(v26[0]) = 1;
  sub_25F4A2520();
  sub_25F3F21F4(v4, &qword_27FD6DAA0, &qword_25F4A5550);
  (*(v6 + 8))(v9, v5);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_25F400424(_BYTE *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for CanvasControlDescription.ControlType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  sub_25F402ED8(a3, v9, type metadata accessor for CanvasControlDescription.ControlType);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      result = sub_25F402DA0(v9);
      v12 = 1;
    }

    else
    {
      result = sub_25F402DA0(v9);
      v12 = 0;
    }
  }

  else if (result == 2)
  {
    result = sub_25F402DA0(v9);
    v12 = 2;
  }

  else if (result == 3)
  {
    v11 = sub_25F4A25E0();
    result = (*(*(v11 - 8) + 8))(v9, v11);
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_25F40058C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x756853776F6C6C61;
  }

  else
  {
    v4 = 0x73706F7473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEC000000656C6666;
  }

  if (*a2)
  {
    v6 = 0x756853776F6C6C61;
  }

  else
  {
    v6 = 0x73706F7473;
  }

  if (*a2)
  {
    v7 = 0xEC000000656C6666;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F4A3270();
  }

  return v9 & 1;
}

uint64_t sub_25F400638()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4006C0()
{
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F400734()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4007C4(uint64_t *a1@<X8>)
{
  v2 = 0x73706F7473;
  if (*v1)
  {
    v2 = 0x756853776F6C6C61;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEC000000656C6666;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F400808()
{
  if (*v0)
  {
    result = 0x756853776F6C6C61;
  }

  else
  {
    result = 0x73706F7473;
  }

  *v0;
  return result;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration.Key;
  v5 = sub_25F403448();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAB0, &qword_25F4A5558);
  sub_25F403770(&qword_27FD6DAB8, &qword_27FD6DAB0, &qword_25F4A5558, sub_25F40349C);
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 = v14;
    v12 = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v9 = sub_25F4A25E0();
    (*(*(v9 - 8) + 8))(a1, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v7;
    *(a2 + 8) = v10;
  }

  return result;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_25F4A25A0();
}

uint64_t sub_25F400A70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAB0, &qword_25F4A5558);
  sub_25F403448();
  sub_25F403770(&qword_27FD6DAB8, &qword_27FD6DAB0, &qword_25F4A5558, sub_25F40349C);
  return sub_25F4A28D0();
}

uint64_t sub_25F400B3C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return sub_25F4A25A0();
}

uint64_t sub_25F400B9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6C6F626D79536673;
    v3 = 0xEC000000656D614ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6C6F626D79536673;
    v7 = 0xEC000000656D614ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F400C98()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F400D30()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F400DB4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F400E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F4049FC();
  *a2 = result;
  return result;
}

void sub_25F400E78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6C6F626D79536673;
    v4 = 0xEC000000656D614ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F400ECC()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6C6F626D79536673;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.Key;
  v5 = sub_25F4034FC();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = v16;
    v14 = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    sub_25F4A2580();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v6;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v10;
  }

  return result;
}

uint64_t CanvasControlDescription.ControlType.TimelineConfiguration.TimelineStop.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F401150(uint64_t *a1)
{
  v2 = *(a1 + 3);
  v5 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  sub_25F4034FC();
  return sub_25F4A28C0();
}

uint64_t sub_25F4011F8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F401260(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0x800000025F4B5D30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000019;
    v3 = 0x800000025F4B5D30;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C6F626D79536673;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEC000000656D614ELL;
  }

  v8 = 0x656C746974;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000019;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6F626D79536673;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000656D614ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F401358()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F401404()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F40149C()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F401544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F404A48();
  *a2 = result;
  return result;
}

void sub_25F401574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656D614ELL;
  v4 = 0xE500000000000000;
  v5 = 0x656C746974;
  if (v2 != 1)
  {
    v5 = 0xD000000000000019;
    v4 = 0x800000025F4B5D30;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6F626D79536673;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4015DC()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D79536673;
  }
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = &type metadata for CanvasControlDescription.ControlType.ToggleConfiguration.Key;
  v5 = sub_25F403558();
  v16 = v5;
  LOBYTE(v14[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v8 = v17;
    v7 = v18;
    v15 = &type metadata for CanvasControlDescription.ControlType.ToggleConfiguration.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = &type metadata for CanvasControlDescription.ControlType.ToggleConfiguration.Key;
    v16 = v5;
    LOBYTE(v14[0]) = 2;
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    v11 = v19;
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t CanvasControlDescription.ControlType.ToggleConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_25F4A25A0();
}

uint64_t sub_25F4018C0(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v2 = *(a1 + 32);
  sub_25F403558();
  return sub_25F4A28C0();
}

uint64_t sub_25F401964()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_25F4A25A0();
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.propertyListValue.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAD8, &qword_25F4A5560);
  sub_25F4035C0();
  sub_25F403770(&qword_27FD6DAE8, &qword_27FD6DAD8, &qword_25F4A5560, sub_25F403614);
  return sub_25F4A25C0();
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Key;
  v7[4] = sub_25F4035C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAD8, &qword_25F4A5560);
  sub_25F403770(&qword_27FD6DAE8, &qword_27FD6DAD8, &qword_25F4A5560, sub_25F403614);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F401D28()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAD8, &qword_25F4A5560);
  sub_25F4035C0();
  sub_25F403770(&qword_27FD6DAE8, &qword_27FD6DAD8, &qword_25F4A5560, sub_25F403614);
  return sub_25F4A25C0();
}

uint64_t sub_25F401DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Key;
  v7[4] = sub_25F4035C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAD8, &qword_25F4A5560);
  sub_25F403770(&qword_27FD6DAE8, &qword_27FD6DAD8, &qword_25F4A5560, sub_25F403614);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F401F48()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F401FC0()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F402018@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F4A3170();

  *a2 = v5 != 0;
  return result;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Item.propertyListValue.getter()
{
  v2 = *v0;
  sub_25F40366C();
  return sub_25F4A25C0();
}

double CanvasControlDescription.ControlType.GridConfiguration.Item.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Item.Key;
  v7[4] = sub_25F40366C();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F402204()
{
  v2 = *v0;
  sub_25F40366C();
  return sub_25F4A25C0();
}

double sub_25F402274@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Item.Key;
  v7[4] = sub_25F40366C();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F402374(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006DLL;
  v3 = *a1;
  v4 = 0x6574497473726966;
  if (v3 == 1)
  {
    v5 = 0xE90000000000006DLL;
  }

  else
  {
    v4 = 0x6D65744965726F6DLL;
    v5 = 0xE900000000000073;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x656C746974;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6574497473726966;
  if (*a2 != 1)
  {
    v8 = 0x6D65744965726F6DLL;
    v2 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F402470()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F402514()
{
  *v0;
  *v0;
  sub_25F4A2C60();
}

uint64_t sub_25F4025A4()
{
  v1 = *v0;
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F402644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25F404A94();
  *a2 = result;
  return result;
}

void sub_25F402674(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6574497473726966;
  v5 = 0xE90000000000006DLL;
  if (v2 != 1)
  {
    v4 = 0x6D65744965726F6DLL;
    v5 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4026D4()
{
  v1 = 0x6574497473726966;
  if (*v0 != 1)
  {
    v1 = 0x6D65744965726F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.propertyListValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

uint64_t sub_25F402780(__int128 *a1)
{
  v1 = *a1;
  v13 = a1[1];
  v14 = v1;
  v2 = *a1;
  v3 = *(a1 + 4);
  v12 = 0;
  v11 = v2;
  v10 = 1;
  v9 = v13;
  v8 = 2;
  v7 = v3;
  sub_25F404B8C(&v14, v6, &qword_27FD6D5F0, &qword_25F4A4420);
  sub_25F404B40(&v13, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DB10, &qword_25F4A5568);
  sub_25F4036C8();
  sub_25F40371C();
  sub_25F403770(&qword_27FD6DB18, &qword_27FD6DB10, &qword_25F4A5568, sub_25F40371C);
  v4 = sub_25F4A28C0();
  sub_25F404B78(v9, *(&v9 + 1));
  sub_25F3F21F4(&v14, &qword_27FD6D5F0, &qword_25F4A4420);
  return v4;
}

uint64_t CanvasControlDescription.ControlType.GridConfiguration.Section.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Section.Key;
  v5 = sub_25F4036C8();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F4A2580();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v9 = v16;
    v8 = v17;
    v14 = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Section.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F40371C();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = v17;
    v18 = v16;
    v14 = &type metadata for CanvasControlDescription.ControlType.GridConfiguration.Section.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DB10, &qword_25F4A5568);
    sub_25F403770(&qword_27FD6DB18, &qword_27FD6DB10, &qword_25F4A5568, sub_25F40371C);
    sub_25F4A2530();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = v16;
    *a2 = v9;
    a2[1] = v8;
    a2[2] = v18;
    a2[3] = v10;
    a2[4] = v12;
  }

  return result;
}

uint64_t sub_25F402B78()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_25F4A25A0();
}

void sub_25F402BE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D7A0, &qword_25F4A4F30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_25F402CF8()
{
  result = qword_27FD6DA28;
  if (!qword_27FD6DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA28);
  }

  return result;
}

unint64_t sub_25F402D4C()
{
  result = qword_27FD6DA38;
  if (!qword_27FD6DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA38);
  }

  return result;
}

uint64_t sub_25F402DA0(uint64_t a1)
{
  v2 = type metadata accessor for CanvasControlDescription.ControlType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F402DFC()
{
  result = qword_27FD6DA40;
  if (!qword_27FD6DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA40);
  }

  return result;
}

unint64_t sub_25F402E58()
{
  result = qword_27FD6DA48;
  if (!qword_27FD6DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA48);
  }

  return result;
}

uint64_t sub_25F402EAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_25F3FDD90();
}

uint64_t sub_25F402ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F402F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F402FC8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = sub_25F4A3060();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v5, v6);
}

unint64_t sub_25F403038()
{
  result = qword_27FD6DA50;
  if (!qword_27FD6DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA50);
  }

  return result;
}

unint64_t sub_25F40308C()
{
  result = qword_27FD6DA58;
  if (!qword_27FD6DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA58);
  }

  return result;
}

unint64_t sub_25F4030E0()
{
  result = qword_27FD6DA60;
  if (!qword_27FD6DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA60);
  }

  return result;
}

uint64_t sub_25F403134(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F40317C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_OWORD *sub_25F4031EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25F4031FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25F403258()
{
  result = qword_27FD6DA78;
  if (!qword_27FD6DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA78);
  }

  return result;
}

unint64_t sub_25F4032AC()
{
  result = qword_27FD6DA80;
  if (!qword_27FD6DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA80);
  }

  return result;
}

unint64_t sub_25F403300()
{
  result = qword_27FD6DA88;
  if (!qword_27FD6DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA88);
  }

  return result;
}

unint64_t sub_25F403354()
{
  result = qword_27FD6DA90;
  if (!qword_27FD6DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA90);
  }

  return result;
}

unint64_t sub_25F4033A8()
{
  result = qword_27FD6DA98;
  if (!qword_27FD6DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DA98);
  }

  return result;
}

uint64_t sub_25F403404(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_25F403448()
{
  result = qword_27FD6DAA8;
  if (!qword_27FD6DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAA8);
  }

  return result;
}

unint64_t sub_25F40349C()
{
  result = qword_27FD6DAC0;
  if (!qword_27FD6DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAC0);
  }

  return result;
}

uint64_t sub_25F4034F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F400A70();
}

unint64_t sub_25F4034FC()
{
  result = qword_27FD6DAC8;
  if (!qword_27FD6DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAC8);
  }

  return result;
}

unint64_t sub_25F403558()
{
  result = qword_27FD6DAD0;
  if (!qword_27FD6DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAD0);
  }

  return result;
}

unint64_t sub_25F4035C0()
{
  result = qword_27FD6DAE0;
  if (!qword_27FD6DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAE0);
  }

  return result;
}

unint64_t sub_25F403614()
{
  result = qword_27FD6DAF0;
  if (!qword_27FD6DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAF0);
  }

  return result;
}

unint64_t sub_25F40366C()
{
  result = qword_27FD6DAF8;
  if (!qword_27FD6DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DAF8);
  }

  return result;
}

unint64_t sub_25F4036C8()
{
  result = qword_27FD6DB00;
  if (!qword_27FD6DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DB00);
  }

  return result;
}

unint64_t sub_25F40371C()
{
  result = qword_27FD6DB08;
  if (!qword_27FD6DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DB08);
  }

  return result;
}

uint64_t sub_25F403770(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25F4037FC()
{
  result = qword_27FD6DB20;
  if (!qword_27FD6DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6DB20);
  }

  return result;
}

void sub_25F4038A8()
{
  type metadata accessor for CanvasControlDescription.ControlType(319);
  if (v0 <= 0x3F)
  {
    sub_25F403934();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F403934()
{
  if (!qword_27FD6DB38)
  {
    v0 = sub_25F4A3060();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6DB38);
    }
  }
}

void sub_25F403984()
{
  sub_25F403A20();
  if (v0 <= 0x3F)
  {
    sub_25F403A50();
    if (v1 <= 0x3F)
    {
      sub_25F403A80();
      if (v2 <= 0x3F)
      {
        sub_25F403AB0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_25F403A20()
{
  result = qword_27FD6DB50;
  if (!qword_27FD6DB50)
  {
    result = &type metadata for CanvasControlDescription.ControlType.TimelineConfiguration;
    atomic_store(&type metadata for CanvasControlDescription.ControlType.TimelineConfiguration, &qword_27FD6DB50);
  }

  return result;
}

ValueMetadata *sub_25F403A50()
{
  result = qword_27FD6DB58;
  if (!qword_27FD6DB58)
  {
    result = &type metadata for CanvasControlDescription.ControlType.ToggleConfiguration;
    atomic_store(&type metadata for CanvasControlDescription.ControlType.ToggleConfiguration, &qword_27FD6DB58);
  }

  return result;
}

ValueMetadata *sub_25F403A80()
{
  result = qword_27FD6DB60;
  if (!qword_27FD6DB60)
  {
    result = &type metadata for CanvasControlDescription.ControlType.GridConfiguration;
    atomic_store(&type metadata for CanvasControlDescription.ControlType.GridConfiguration, &qword_27FD6DB60);
  }

  return result;
}

void sub_25F403AB0()
{
  if (!qword_27FD6DB68)
  {
    v0 = sub_25F4A25E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD6DB68);
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25F403B0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_25F403B54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F403BB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F403C00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F403C6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_25F403CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F403D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_25F403D74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F403DD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F403E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ThumbnailGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ThumbnailGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_25F403F08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PlistValueBox(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_25F403FC0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for PlistValueBox(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}