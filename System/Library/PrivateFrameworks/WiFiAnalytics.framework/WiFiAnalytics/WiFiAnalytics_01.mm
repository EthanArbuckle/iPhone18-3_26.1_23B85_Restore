double sub_1C84753D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C8474B54(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C8474BCC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C8481D10((*(v12 + 56) + 32 * v9), a3);
    sub_1C8475474(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C8475474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C8590F04() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C8591014();

      sub_1C8590D34();
      v14 = sub_1C8591024();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_1C8475624(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C8474B54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C8474BCC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C8474D70(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C8474B54(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C8591004();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1C8481D10(a1, v23);
  }

  else
  {
    sub_1C8475774(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1C8475774(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C8481D10(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1C84757E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C84778D8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C847584C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1C847584C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C8590FC4();
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
        v5 = sub_1C8590E14();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C8475A14(v7, v8, a1, v4);
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
    return sub_1C8475944(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C8475944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_1C8590FE4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C8475A14(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
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
      result = sub_1C84762A4(v8);
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
        sub_1C8475FF0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C8590FE4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C8590FE4();
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
      result = sub_1C8474068(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C8474068((v39 > 1), v40 + 1, 1, v8);
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
        sub_1C8475FF0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C84762A4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C8476218(v44);
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
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_1C8590FE4(), (result & 1) == 0))
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

uint64_t sub_1C8475FF0(char *__dst, char *__src, char *a3, char *a4)
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

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_1C8590FE4() & 1) != 0)
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
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_1C8590FE4() & 1) != 0)
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

uint64_t sub_1C8476218(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C84762A4(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unsigned __int8 *sub_1C84762B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C8590DE4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C8476844();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C8590F64();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C8476844()
{
  v0 = sub_1C8590DF4();
  v4 = sub_1C84768C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C84768C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C8590D24();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C8590E84();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C8474630(v9, 0);
  v12 = sub_1C8476A1C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C8590D24();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C8590F64();
LABEL_4:

  return sub_1C8590D24();
}

unint64_t sub_1C8476A1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1C8476C3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C8590DA4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1C8590F64();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1C8476C3C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1C8590D84();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C8476C3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C8590DB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1CCA77620](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1C8476CB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1C8591014();
  sub_1C8590D34();
  v9 = sub_1C8591024();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1C8590FE4() & 1) != 0)
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

    sub_1C8477068(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C8476E08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADF0, &qword_1C85A10F0);
  result = sub_1C8590F34();
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
      sub_1C8591014();
      sub_1C8590D34();
      result = sub_1C8591024();
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

uint64_t sub_1C8477068(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1C8476E08(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1C84771E8();
      goto LABEL_16;
    }

    sub_1C8477344(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1C8591014();
  sub_1C8590D34();
  result = sub_1C8591024();
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

      result = sub_1C8590FE4();
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
  result = sub_1C8590FF4();
  __break(1u);
  return result;
}

void *sub_1C84771E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADF0, &qword_1C85A10F0);
  v2 = *v0;
  v3 = sub_1C8590F24();
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

uint64_t sub_1C8477344(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADF0, &qword_1C85A10F0);
  result = sub_1C8590F34();
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
      sub_1C8591014();

      sub_1C8590D34();
      result = sub_1C8591024();
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

uint64_t sub_1C847757C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1C8477628(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_1C8477780(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_1C84778EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
    v3 = sub_1C8590FB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C8481D68(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1C8474B54(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C8481D10(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1C84779FC(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, int a7, char a8)
{
  v8 = a8;
  v9 = a7;
  v14 = a1;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7 & 1) != 0 && (a8)
          {
            return 1;
          }

          goto LABEL_12;
        }

        goto LABEL_34;
      }

      v17 = 0;
LABEL_41:
      v25 = v14;
      v26 = a2;
      MEMORY[0x1EEE9AC00](a1);
      v23 = &v25;
      v19 = sub_1C847757C(sub_1C848234C, v22, &unk_1F481A428);
      a1 = sub_1C84821F4(&unk_1F481A448);
      if ((v19 & 1) == 0)
      {
        a1 = sub_1C8590DC4();
        if (a1)
        {
          if (a6)
          {
            goto LABEL_48;
          }

LABEL_44:
          v17 = 1;
          goto LABEL_46;
        }
      }

LABEL_45:
      if (a6)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    v24 = a7;
    v15 = a8;
    goto LABEL_16;
  }

  v24 = a7;
  v15 = a8;
  v25 = a1;
  v26 = a2;
  (MEMORY[0x1EEE9AC00])();
  v23 = &v25;
  v16 = sub_1C847757C(sub_1C848234C, v22, &unk_1F481A3B8);
  a1 = swift_arrayDestroy();
  if (v16)
  {
    if (a4)
    {
      v8 = v15;
      if (a5)
      {
        goto LABEL_11;
      }

      goto LABEL_33;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  a1 = sub_1C8590DC4();
  if (a1)
  {
    if ((a4 & 1) == 0)
    {
      v17 = 1;
LABEL_17:
      v25 = v14;
      v26 = a2;
      MEMORY[0x1EEE9AC00](a1);
      v23 = &v25;
      v18 = sub_1C847757C(sub_1C848234C, v22, &unk_1F481A3F8);
      a1 = sub_1C84821F4(&unk_1F481A418);
      if ((v18 & 1) != 0 || (a1 = sub_1C8590DC4(), (a1 & 1) == 0))
      {
        v8 = v15;
        v9 = v24;
        if (a5)
        {
          goto LABEL_45;
        }

        goto LABEL_41;
      }

      if (a5)
      {
        v8 = v15;
        if (a6)
        {
          if ((v24 & 1) == 0)
          {
LABEL_49:
            v17 = 1;
            goto LABEL_53;
          }

LABEL_56:
          if ((v8 & 1) == 0)
          {
            return 0;
          }

          v17 = 1;
LABEL_58:
          if ((sub_1C8590DC4() & 1) == 0)
          {
            return (v17 & 1) == 0;
          }

          return 0;
        }

        v17 = 1;
        v9 = v24;
LABEL_46:
        v25 = v14;
        v26 = a2;
        MEMORY[0x1EEE9AC00](a1);
        v23 = &v25;
        v20 = sub_1C847757C(sub_1C848234C, v22, &unk_1F481A458);
        sub_1C84821F4(&unk_1F481A478);
        if (v20 & 1) == 0 && (sub_1C8590DC4())
        {
LABEL_48:
          if ((v9 & 1) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        }

LABEL_50:
        if (v9)
        {
          goto LABEL_51;
        }

        goto LABEL_53;
      }

      v17 = 1;
      v8 = v15;
      goto LABEL_40;
    }

    v8 = v15;
    if (a5)
    {
      v9 = v24;
      if (a6)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    v17 = 1;
LABEL_40:
    v9 = v24;
    goto LABEL_41;
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_16;
  }

  v8 = v15;
  if ((a5 & 1) == 0)
  {
LABEL_33:
    v17 = 0;
    goto LABEL_40;
  }

LABEL_11:
  v9 = v24;
  if ((a6 & 1) == 0)
  {
LABEL_34:
    v17 = 0;
    goto LABEL_46;
  }

LABEL_12:
  if (v9)
  {
    if ((v8 & 1) == 0)
    {
      return 1;
    }

    v17 = 0;
    goto LABEL_58;
  }

  v17 = 0;
LABEL_53:
  if (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4() & 1) != 0 || (sub_1C8590DC4())
  {
    goto LABEL_56;
  }

LABEL_51:
  if (v8)
  {
    goto LABEL_58;
  }

  return (v17 & 1) == 0;
}

uint64_t sub_1C8477E94()
{

  v0 = sub_1C8590DC4();

  if (v0)
  {
    goto LABEL_8;
  }

  v1 = sub_1C8590DC4();

  if (v1)
  {
    goto LABEL_8;
  }

  v2 = sub_1C8590DC4();

  if (v2)
  {
    goto LABEL_8;
  }

  v3 = sub_1C8590DC4();

  if (v3)
  {
    goto LABEL_8;
  }

  v4 = sub_1C8590DC4();

  if (v4 & 1) != 0 || (, v5 = sub_1C8590DC4(), , (v5) || (, v6 = sub_1C8590DC4(), , (v6))
  {
LABEL_8:
    v7 = 0;
  }

  else
  {

    v9 = sub_1C8590DC4();

    v7 = v9 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1C847809C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a2 + 40;
    while (1)
    {
      v8 = (v7 + 16 * v6);
      v36 = v4;
      while (1)
      {
        if (v6 >= v5)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }

        v10 = *a3;
        if (*(*a3 + 16))
        {
          break;
        }

LABEL_5:
        ++v6;
        v8 += 2;
        if (v9 == v5)
        {
          return v4;
        }
      }

      v11 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_1C8474B54(v11, v12);
      if ((v14 & 1) == 0)
      {
        break;
      }

      sub_1C8481CB4(*(v10 + 56) + 32 * v13, v38);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v15 = v39;
      if (__OFADD__(v4, v39))
      {
        v16 = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v17 = qword_1EDE5CB90;
        if (os_log_type_enabled(qword_1EDE5CB90, v16))
        {
          v18 = v17;
          v19 = swift_slowAlloc();
          *v19 = 134218240;
          *(v19 + 4) = v36;
          *(v19 + 12) = 2048;
          *(v19 + 14) = v15;
          _os_log_impl(&dword_1C8460000, v18, v16, "safeAdditionCalculation overflowed adding a %ld b %ld", v19, 0x16u);
          v20 = v19;
          v17 = v18;
          MEMORY[0x1CCA78470](v20, -1, -1);
        }

        v21 = sub_1C8590E44();
        if (os_log_type_enabled(v17, v21))
        {
          buf = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v38[0] = v34;
          *buf = 136315138;
          v22 = MEMORY[0x1CCA77690](a4, MEMORY[0x1E69E6158]);
          log = v17;
          v24 = v15;
          v25 = sub_1C84741F0(v22, v23, v38);

          *(buf + 4) = v25;
          v15 = v24;
          v17 = log;
          _os_log_impl(&dword_1C8460000, log, v21, "addTimeOffsetToDictionary rssiStateKeys %s", buf, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x1CCA78470](v34, -1, -1);
          MEMORY[0x1CCA78470](buf, -1, -1);
        }

        v26 = sub_1C8590E44();
        if (os_log_type_enabled(v17, v26))
        {
          v27 = swift_slowAlloc();
          v28 = v17;
          v29 = v27;
          *v27 = 134218240;
          *(v27 + 4) = v36;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v15;
          _os_log_impl(&dword_1C8460000, v28, v26, "addTimeOffsetToDictionary safeAdditionCalculation check: m %ld val %ld", v27, 0x16u);
          v30 = v29;
          v4 = v36;
          MEMORY[0x1CCA78470](v30, -1, -1);
        }

        else
        {

          v4 = v36;
        }

        goto LABEL_5;
      }

      v4 += v39;

      result = v4;
      ++v6;
      v7 = v31;
      if (v9 == v5)
      {
        return result;
      }
    }

    goto LABEL_5;
  }

  return result;
}

unint64_t sub_1C847842C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1C8590D54();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1C8590DF4();
}

double sub_1C84784DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C8590C84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C8590C64();
  v21[0] = a1;
  v21[1] = a2;
  sub_1C8481E28();
  v9 = MEMORY[0x1E69E6158];
  sub_1C8590EA4();
  if ((v10 & 1) == 0)
  {
    if (a1 == 0x35372D35382DLL && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return -80.0;
    }

    if (a1 == 0x35362D35372DLL && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return -70.0;
    }

    if (a1 == 0x30352D35362DLL && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return -57.5;
    }

    if (a1 == 0x30352D203ELL && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return -50.0;
    }

    if (a1 == 0x35382D203CLL && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return -85.0;
    }

    if (a1 == 6710863 && a2 == 0xE300000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      goto LABEL_6;
    }

    if (a1 == 808656958 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_35:
      (*(v5 + 8))(v8, v4);
      return 30.0;
    }

    if (a1 == 0x30332D3032 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_39:
      (*(v5 + 8))(v8, v4);
      return 25.0;
    }

    if (a1 == 0x30322D3531 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_43:
      (*(v5 + 8))(v8, v4);
      return 17.5;
    }

    if (a1 == 0x35312D3031 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_47:
      (*(v5 + 8))(v8, v4);
      return 12.5;
    }

    if (a1 == 0x30312D2035 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 7.5;
    }

    if (a1 == 0x35202D2030 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 2.5;
    }

    if (a1 == 0x25302E303031 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_59:
      (*(v5 + 8))(v8, v4);
      return 100.0;
    }

    if (a1 == 0x25352E3738 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 87.5;
    }

    if (a1 == 0x25302E3537 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 75.0;
    }

    if (a1 == 0x25352E3236 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 62.5;
    }

    if (a1 == 0x25302E3035 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
LABEL_75:
      (*(v5 + 8))(v8, v4);
      return 50.0;
    }

    if (a1 == 0x25352E3733 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 37.5;
    }

    if (a1 == 0x25302E3532 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      goto LABEL_39;
    }

    if (a1 == 0x25352E3231 && a2 == 0xE500000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      goto LABEL_47;
    }

    if (a1 == 623914544 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      goto LABEL_6;
    }

    if (a1 == 1113858102 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
    {
      (*(v5 + 8))(v8, v4);
      return 6.0;
    }

    if ((a1 != 1113858101 || a2 != 0xE400000000000000) && (sub_1C8590FE4() & 1) == 0)
    {
      if (a1 == 1113858100 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 4.0;
      }

      if (a1 == 1113858099 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_104;
      }

      if (a1 == 1113858098 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 2.0;
      }

      if (a1 == 1113858097 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_155;
      }

      if (a1 == 1113858096 && a2 == 0xE400000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_6;
      }

      if (a1 == 0x2530392D303031 && a2 == 0xE700000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_59;
      }

      if (a1 == 0x2530382D3039 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 90.0;
      }

      if (a1 == 0x2530372D3038 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 80.0;
      }

      if (a1 == 0x2530362D3037 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 70.0;
      }

      if (a1 == 0x2530352D3036 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 60.0;
      }

      if (a1 == 0x2530342D3035 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_75;
      }

      if (a1 == 0x2530332D3034 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 40.0;
      }

      if (a1 == 0x2530322D3033 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        goto LABEL_35;
      }

      if (a1 == 0x2530312D3032 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 20.0;
      }

      if (a1 == 0x2530202D3031 && a2 == 0xE600000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
        (*(v5 + 8))(v8, v4);
        return 10.0;
      }

      if (a1 == 0x736D2032202D2030 && a2 == 0xE800000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
LABEL_155:
        (*(v5 + 8))(v8, v4);
        return 1.0;
      }

      if (a1 == 0x736D2034202D2032 && a2 == 0xE800000000000000 || (sub_1C8590FE4() & 1) != 0)
      {
LABEL_104:
        (*(v5 + 8))(v8, v4);
        return 3.0;
      }

      if ((a1 != 0x736D2036202D2034 || a2 != 0xE800000000000000) && (sub_1C8590FE4() & 1) == 0)
      {
        if (a1 == 0x736D2038202D2036 && a2 == 0xE800000000000000 || (sub_1C8590FE4() & 1) != 0)
        {
          (*(v5 + 8))(v8, v4);
          return 7.0;
        }

        if (a1 == 0x6D203031202D2038 && a2 == 0xE900000000000073 || (sub_1C8590FE4() & 1) != 0)
        {
          (*(v5 + 8))(v8, v4);
          return 9.0;
        }

        if ((a1 != 0x203531202D203031 || a2 != 0xEA0000000000736DLL) && (sub_1C8590FE4() & 1) == 0)
        {
          if ((a1 != 0x203032202D203531 || a2 != 0xEA0000000000736DLL) && (sub_1C8590FE4() & 1) == 0)
          {
            if ((a1 != 0x203033202D203032 || a2 != 0xEA0000000000736DLL) && (sub_1C8590FE4() & 1) == 0)
            {
              if (a1 == 0x303031202D203033 && a2 == 0xEB00000000736D20 || (sub_1C8590FE4() & 1) != 0)
              {
                (*(v5 + 8))(v8, v4);
                return 65.0;
              }

              else
              {
                if ((a1 != 0x3035202D20303031 || a2 != 0xEC000000736D2030) && (sub_1C8590FE4() & 1) == 0)
                {
                  v17 = sub_1C8590E44();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  v18 = qword_1EDE5CB90;
                  if (os_log_type_enabled(qword_1EDE5CB90, v17))
                  {
                    v19 = swift_slowAlloc();
                    v20 = swift_slowAlloc();
                    v21[0] = v20;
                    *v19 = 136315138;
                    *(v19 + 4) = sub_1C84741F0(a1, a2, v21);
                    _os_log_impl(&dword_1C8460000, v18, v17, "Unhandled bin %s", v19, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v20);
                    MEMORY[0x1CCA78470](v20, -1, -1);
                    MEMORY[0x1CCA78470](v19, -1, -1);
                  }

                  goto LABEL_6;
                }

                (*(v5 + 8))(v8, v4);
                return 300.0;
              }
            }

            goto LABEL_39;
          }

          goto LABEL_43;
        }

        goto LABEL_47;
      }
    }

    (*(v5 + 8))(v8, v4);
    return 5.0;
  }

  v11 = sub_1C8467E40(a1, a2);
  if (v12)
  {
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C85A1020;
    *(v13 + 56) = v9;
    *(v13 + 64) = sub_1C8481E7C();
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;

    sub_1C8590CA4();

LABEL_6:
    (*(v5 + 8))(v8, v4);
    return 0.0;
  }

  v16 = v11;
  (*(v5 + 8))(v8, v4);
  return v16;
}

uint64_t sub_1C84796E4(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 40;
  v27 = result + 40;
  while (2)
  {
    for (i = (v7 + 16 * v6); ; i += 2)
    {
      if (v6 >= v3)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      ++v6;
      if (v9 == v3)
      {
        return result;
      }
    }

    v12 = *(i - 1);
    v11 = *i;

    v13 = sub_1C8474B54(v12, v11);
    if ((v14 & 1) == 0 || (sub_1C8481CB4(*(v10 + 56) + 32 * v13, v29), (swift_dynamicCast() & 1) == 0) || v28 != a3)
    {

      goto LABEL_5;
    }

    v15 = sub_1C8590D44();
    v16 = sub_1C847842C(v15, v12, v11);
    v24 = v17;
    v25 = v16;
    v19 = v18;
    v21 = v20;

    v26 = MEMORY[0x1CCA77590](v25, v19, v24, v21);
    v23 = v22;

    sub_1C84784DC(v26, v23);

    ++v6;
    v7 = v27;
    if (v9 != v3)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1C8479888(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a3;
    v7 = 0;
    v32 = OBJC_IVAR____TtC13WiFiAnalytics21WANWActivityTransform_issues;
    v8 = a2 + 40;
    v30 = *(a2 + 16);
    while (1)
    {
      v9 = (v8 + 16 * v7);
      v34 = v4;
      while (1)
      {
        if (v7 >= v5)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v13 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_27;
        }

        v14 = *v6;
        if (*(*v6 + 16))
        {
          break;
        }

LABEL_6:
        ++v7;
        v9 += 2;
        if (v13 == v5)
        {
          return v4;
        }
      }

      v15 = *(v9 - 1);
      v16 = *v9;

      v17 = sub_1C8474B54(v15, v16);
      if ((v18 & 1) == 0)
      {
        goto LABEL_5;
      }

      sub_1C8481CB4(*(v14 + 56) + 32 * v17, v36);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      v35 = v37;
      if (__OFADD__(v4, v37))
      {
        break;
      }

      v4 += v37;

      result = v4;
      ++v7;
      v8 = v29;
      if (v13 == v5)
      {
        return result;
      }
    }

    v19 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v20 = qword_1EDE5CB90;
    if (os_log_type_enabled(qword_1EDE5CB90, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v34;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v35;
      _os_log_impl(&dword_1C8460000, v20, v19, "safeAdditionCalculation overflowed adding a %ld b %ld", v21, 0x16u);
      v22 = v21;
      v5 = v30;
      MEMORY[0x1CCA78470](v22, -1, -1);
    }

    *(a4 + v32) = 1;
    v23 = sub_1C8590E44();
    if (os_log_type_enabled(v20, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1C84741F0(v15, v16, v36);
      _os_log_impl(&dword_1C8460000, v20, v23, "foundKeysToReduce.reduce for sum %s setting self.issues = true", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v26 = v25;
      v6 = a3;
      MEMORY[0x1CCA78470](v26, -1, -1);
      v27 = v24;
      v5 = v30;
      MEMORY[0x1CCA78470](v27, -1, -1);
    }

    v28 = sub_1C8590E44();
    if (!os_log_type_enabled(v20, v28))
    {

      v4 = v34;
      goto LABEL_6;
    }

    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v34;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v35;
    v11 = v28;
    v4 = v34;
    _os_log_impl(&dword_1C8460000, v20, v11, "foundKeysToReduce.reduce for sum safeAdditionCalculation check: m %ld val %ld", v10, 0x16u);
    v12 = v10;
    v6 = a3;
    MEMORY[0x1CCA78470](v12, -1, -1);
LABEL_5:

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1C8479BF8(uint64_t result, uint64_t *a2, double a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 40;
  v28 = result + 40;
  do
  {
    for (i = (v7 + 16 * v6); ; i += 2)
    {
      if (v6 >= v4)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      ++v6;
      if (v9 == v4)
      {
        return result;
      }
    }

    v12 = *(i - 1);
    v11 = *i;

    v13 = sub_1C8474B54(v12, v11);
    if ((v14 & 1) == 0 || (sub_1C8481CB4(*(v10 + 56) + 32 * v13, v29), (swift_dynamicCast() & 1) == 0) || v30 <= 0)
    {

      goto LABEL_5;
    }

    v15 = sub_1C8590D44();
    v16 = sub_1C847842C(v15, v12, v11);
    v25 = v17;
    v26 = v16;
    v19 = v18;
    v21 = v20;

    v27 = MEMORY[0x1CCA77590](v26, v19, v25, v21);
    v23 = v22;

    v24 = sub_1C84784DC(v27, v23);

    if (v24 < a3)
    {
      a3 = v24;
    }

    ++v6;
    v7 = v28;
  }

  while (v9 != v4);
  return result;
}

uint64_t sub_1C8479DA4(uint64_t result, uint64_t *a2, double a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 40;
  v28 = result + 40;
  do
  {
    for (i = (v7 + 16 * v6); ; i += 2)
    {
      if (v6 >= v4)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      ++v6;
      if (v9 == v4)
      {
        return result;
      }
    }

    v12 = *(i - 1);
    v11 = *i;

    v13 = sub_1C8474B54(v12, v11);
    if ((v14 & 1) == 0 || (sub_1C8481CB4(*(v10 + 56) + 32 * v13, v29), (swift_dynamicCast() & 1) == 0) || v30 <= 0)
    {

      goto LABEL_5;
    }

    v15 = sub_1C8590D44();
    v16 = sub_1C847842C(v15, v12, v11);
    v25 = v17;
    v26 = v16;
    v19 = v18;
    v21 = v20;

    v27 = MEMORY[0x1CCA77590](v26, v19, v25, v21);
    v23 = v22;

    v24 = sub_1C84784DC(v27, v23);

    if (a3 < v24)
    {
      a3 = v24;
    }

    ++v6;
    v7 = v28;
  }

  while (v9 != v4);
  return result;
}

uint64_t sub_1C8479F50(uint64_t result, uint64_t *a2, double a3)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 40;
  v27 = result + 40;
  while (2)
  {
    for (i = (v7 + 16 * v6); ; i += 2)
    {
      if (v6 >= v4)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }

      v10 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      ++v6;
      if (v9 == v4)
      {
        return result;
      }
    }

    v12 = *(i - 1);
    v11 = *i;

    v13 = sub_1C8474B54(v12, v11);
    if ((v14 & 1) == 0 || (sub_1C8481CB4(*(v10 + 56) + 32 * v13, v29), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_5;
    }

    v15 = sub_1C8590D44();
    v16 = sub_1C847842C(v15, v12, v11);
    v18 = v17;
    v26 = v19;
    v21 = v20;

    v22 = MEMORY[0x1CCA77590](v16, v18, v26, v21);
    v24 = v23;

    v25 = sub_1C84784DC(v22, v24);

    a3 = a3 + v25 * v28;
    v6 = v9;
    v7 = v27;
    if (v9 != v4)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1C847A10C(uint64_t result, uint64_t *a2, double a3, uint64_t a4, uint64_t a5, double *a6)
{
  v7 = *(result + 16);
  if (!v7)
  {
    return result;
  }

  v9 = 0;
  v10 = result + 40;
  v32 = result + 40;
  while (2)
  {
    for (i = (v10 + 16 * v9); ; i += 2)
    {
      if (v9 >= v7)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_15;
      }

      v13 = *a2;
      if (*(*a2 + 16))
      {
        break;
      }

LABEL_5:
      ++v9;
      if (v12 == v7)
      {
        return result;
      }
    }

    v15 = *(i - 1);
    v14 = *i;

    v16 = sub_1C8474B54(v15, v14);
    if ((v17 & 1) == 0 || (sub_1C8481CB4(*(v13 + 56) + 32 * v16, v34), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_5;
    }

    v18 = v35;

    v19 = sub_1C8590D44();
    v20 = sub_1C847842C(v19, v15, v14);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x1CCA77590](v20, v22, v24, v26);
    v29 = v28;

    v30 = sub_1C84784DC(v27, v29);

    v31 = *a6;

    a3 = a3 + (v30 - v31) * (v30 - v31) * v18;
    v9 = v12;
    v10 = v32;
    if (v12 != v7)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1C847A2D8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v20 = a1 + 4;
  v3 = a1[5];

  if (v1 == 1)
  {
    return v2;
  }

  v4 = 1;
  v19 = v1;
LABEL_5:
  v5 = &v20[2 * v4];
  v7 = *v5;
  v6 = v5[1];

  while (1)
  {
    if (sub_1C8590DC4())
    {
      ++v4;

      if (v4 != v19)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }

    result = sub_1C8590D44();
    if (__OFSUB__(result, 1))
    {
      break;
    }

    if (result - 1 < 0)
    {
      goto LABEL_18;
    }

    sub_1C8590D54();
    v9 = sub_1C8590DF4();
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v2 = MEMORY[0x1CCA77590](v9, v11, v13, v15);
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      v2 = 0;
LABEL_13:

      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1C847A4A4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1C8590D54();

    return sub_1C8590DF4();
  }

  return result;
}

uint64_t sub_1C847A540(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = a2 + 40;
    v48 = *(a2 + 16);
    do
    {
      v45 = v6;
      for (i = (v9 + 16 * v8); ; i += 2)
      {
        if (v8 >= v7)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_39;
        }

        v12 = *(i - 1);
        v13 = *i;
        v14 = *a3;
        v15 = *(*a3 + 16);

        if (!v15 || (v16 = sub_1C8474B54(v12, v13), (v17 & 1) == 0) || (sub_1C8481CB4(*(v14 + 56) + 32 * v16, &v56), !swift_dynamicCast()))
        {
          v28 = sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          v50 = v8 + 1;
          v52 = v8;
          v58 = qword_1EDE5CB90;
          if (os_log_type_enabled(qword_1EDE5CB90, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            *&v56 = v30;
            *v29 = 136315138;
            *(v29 + 4) = sub_1C84741F0(a5, a6, &v56);
            _os_log_impl(&dword_1C8460000, v58, v28, "sum check: arrayStat %s", v29, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v30);
            MEMORY[0x1CCA78470](v30, -1, -1);
            MEMORY[0x1CCA78470](v29, -1, -1);
          }

          sub_1C8590E44();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1C85A0FE0;
          *(v31 + 56) = MEMORY[0x1E69E6158];
          v32 = sub_1C8481E7C();
          *(v31 + 64) = v32;
          *(v31 + 32) = v12;
          *(v31 + 40) = v13;
          v33 = *a3;
          if (*(*a3 + 16))
          {

            v34 = sub_1C8474B54(v12, v13);
            v35 = v12;
            if (v36)
            {
              sub_1C8481CB4(*(v33 + 56) + 32 * v34, &v56);
            }

            else
            {
              v56 = 0u;
              v57 = 0u;
            }
          }

          else
          {
            v35 = v12;
            v56 = 0u;
            v57 = 0u;
          }

          sub_1C8482178(&v56, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          v37 = MEMORY[0x1E69E6158];
          *(v31 + 96) = MEMORY[0x1E69E6158];
          *(v31 + 104) = v32;
          *(v31 + 72) = 0;
          *(v31 + 80) = 0xE000000000000000;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADD0, &qword_1C85A10D8);
          *(v31 + 136) = v38;
          v39 = sub_1C8481ED0();
          *(v31 + 144) = v39;
          *(v31 + 112) = a4;

          sub_1C8590CA4();

          sub_1C8590E54();
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1C85A0FE0;
          *(v40 + 56) = v37;
          *(v40 + 64) = v32;
          *(v40 + 32) = v35;
          *(v40 + 40) = v13;
          v55 = 0;
          v41 = *a3;
          if (*(*a3 + 16))
          {

            v42 = sub_1C8474B54(v35, v13);
            v8 = v52;
            if (v43)
            {
              sub_1C8481CB4(*(v41 + 56) + 32 * v42, &v56);
            }

            else
            {
              v56 = 0u;
              v57 = 0u;
            }
          }

          else
          {
            v56 = 0u;
            v57 = 0u;

            v8 = v52;
          }

          sub_1C8482178(&v56, &qword_1EC2AADB8, &qword_1C85A10C0);
          MEMORY[0x1CCA775F0](0x6C616E6F6974704FLL, 0xED00003E796E413CLL);
          *(v40 + 96) = MEMORY[0x1E69E6158];
          *(v40 + 104) = v32;
          *(v40 + 72) = 0;
          *(v40 + 80) = 0xE000000000000000;
          *(v40 + 136) = v38;
          *(v40 + 144) = v39;
          *(v40 + 112) = a4;

          sub_1C8590CA4();

          v7 = v48;
          v11 = v50;
          goto LABEL_6;
        }

        v58 = v12;
        if (!__OFADD__(v45, v55))
        {
          break;
        }

        v18 = sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        v19 = qword_1EDE5CB90;
        if (os_log_type_enabled(qword_1EDE5CB90, v18))
        {
          v20 = swift_slowAlloc();
          *v20 = 134218240;
          *(v20 + 4) = v45;
          *(v20 + 12) = 2048;
          *(v20 + 14) = v55;
          _os_log_impl(&dword_1C8460000, v19, v18, "safeAdditionCalculation overflowed adding a %ld b %ld", v20, 0x16u);
          MEMORY[0x1CCA78470](v20, -1, -1);
        }

        v21 = sub_1C8590E44();
        if (os_log_type_enabled(v19, v21))
        {
          v49 = v21;
          v22 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *&v56 = v51;
          *v22 = 136315394;
          *(v22 + 4) = sub_1C84741F0(v58, v13, &v56);
          *(v22 + 12) = 2080;
          v23 = MEMORY[0x1CCA77690](a4, MEMORY[0x1E69E6158]);
          v25 = v8 + 1;
          v26 = v8;
          v27 = sub_1C84741F0(v23, v24, &v56);

          *(v22 + 14) = v27;
          v8 = v26;
          v11 = v25;
          _os_log_impl(&dword_1C8460000, v19, v49, "reduceNonNumericStatesAndHistogramsToPct safeAdditionCalculation key %s foundKeysToReduce %s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA78470](v51, -1, -1);
          MEMORY[0x1CCA78470](v22, -1, -1);
        }

LABEL_6:
        ++v8;
        if (v11 == v7)
        {
          return v45;
        }
      }

      result = v45 + v55;
      v6 = v45 + v55;
      ++v8;
      v9 = v44;
    }

    while (v11 != v7);
  }

  return result;
}

uint64_t sub_1C847AC04(uint64_t a1, uint64_t a2)
{
  v4 = 100 * a1;
  if ((a1 * 100) >> 64 != (100 * a1) >> 63)
  {
    v5 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDE5CB90;
    if (!os_log_type_enabled(qword_1EDE5CB90, v5))
    {
      return 0;
    }

    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    v8 = "safePercentCalculation overflowed multiplying by 100 numerator %ld denominator %ld";
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = 22;
LABEL_6:
    _os_log_impl(&dword_1C8460000, v10, v9, v8, v11, v12);
    MEMORY[0x1CCA78470](v7, -1, -1);
    return 0;
  }

  if (!a2 || (v4 == 0x8000000000000000 ? (v14 = a2 == -1) : (v14 = 0), v14))
  {
    v15 = sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDE5CB90;
    if (!os_log_type_enabled(qword_1EDE5CB90, v15))
    {
      return 0;
    }

    v7 = swift_slowAlloc();
    *v7 = 134218496;
    *(v7 + 4) = v4;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a2;
    v8 = "safePercentCalculation overflowed dividing by product %ld numerator %ld denominator %ld";
    v9 = v15;
    v10 = v16;
    v11 = v7;
    v12 = 32;
    goto LABEL_6;
  }

  return v4 / a2;
}

uint64_t sub_1C847ADCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v35 = v2;
LABEL_4:
  v10 = v8;
  v36 = v9;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v10;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v1 + 48) + ((v8 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    v15 = 12;
    v16 = &off_1F481ABD0;
    while (--v15)
    {
      v17 = v16 + 2;
      v19 = *(v16 - 1);
      v18 = *v16;

      LOBYTE(v19) = sub_1C8590DD4();

      v16 = v17;
      if (v19)
      {
        v20 = v36;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v38[0] = v36;
        if ((result & 1) == 0)
        {
          result = sub_1C84750E0(0, *(v36 + 16) + 1, 1);
          v20 = *&v38[0];
        }

        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        if (v22 >= v21 >> 1)
        {
          result = sub_1C84750E0((v21 > 1), v22 + 1, 1);
          v20 = *&v38[0];
        }

        *(v20 + 16) = v22 + 1;
        v23 = v20 + 16 * v22;
        *(v23 + 32) = v14;
        *(v23 + 40) = v13;
        v9 = v20;
        v2 = v35;
        goto LABEL_4;
      }
    }

    v10 = v8;
    v2 = v35;
    v9 = v36;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  swift_arrayDestroy();

  v24 = *(v9 + 16);
  if (v24)
  {
    v25 = (v9 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;

      v28 = sub_1C8474B54(v26, v27);
      LOBYTE(v26) = v29;

      if (v26)
      {
        v30 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *a1;
        v37 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C8474BCC();
          v32 = v37;
        }

        v33 = *(*(v32 + 48) + 16 * v28 + 8);

        sub_1C8481D10((*(v32 + 56) + 32 * v28), v38);
        sub_1C8475474(v28, v32);
        *a1 = v32;
      }

      else
      {
        memset(v38, 0, sizeof(v38));
      }

      sub_1C8482178(v38, &qword_1EC2AADB8, &qword_1C85A10C0);
      v25 += 2;
      --v24;
    }

    while (v24);
  }

  return 1;
}

uint64_t sub_1C847B0A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 + 64;
  v3 = 1 << *(*a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v38 = v2;
LABEL_4:
  v10 = v8;
  v39 = v9;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v10;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(v1 + 48) + ((v8 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1C8481E28();

    v15 = 13;
    v16 = &unk_1F481ACA0;
    while (--v15)
    {
      v17 = (v16 + 2);
      v20 = (v16 - 1);
      v18 = *(v16 - 1);
      v19 = *(v20 + 1);
      *&v40[0] = v13;
      *(&v40[0] + 1) = v14;
      v42 = v18;
      v43 = v19;
      v21 = sub_1C8590EE4();
      v16 = v17;
      if (v21)
      {
        v22 = v39;
        result = swift_isUniquelyReferenced_nonNull_native();
        v41 = v39;
        if ((result & 1) == 0)
        {
          result = sub_1C84750E0(0, *(v39 + 16) + 1, 1);
          v22 = v41;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_1C84750E0((v23 > 1), v24 + 1, 1);
          v22 = v41;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v13;
        *(v25 + 40) = v14;
        v9 = v22;
        v6 = v37;
        v2 = v38;
        goto LABEL_4;
      }
    }

    v10 = v8;
    v2 = v38;
    v9 = v39;
    v6 = v37;
  }

  while (v5);
  while (1)
  {
LABEL_6:
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v10;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  swift_arrayDestroy();

  v26 = *(v9 + 16);
  if (v26)
  {
    v27 = (v39 + 40);
    do
    {
      v28 = *(v27 - 1);
      v29 = *v27;

      v30 = sub_1C8474B54(v28, v29);
      LOBYTE(v28) = v31;

      if (v28)
      {
        v32 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *a1;
        v42 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C8474BCC();
          v34 = v42;
        }

        v35 = *(*(v34 + 48) + 16 * v30 + 8);

        sub_1C8481D10((*(v34 + 56) + 32 * v30), v40);
        sub_1C8475474(v30, v34);
        *a1 = v34;
      }

      else
      {
        memset(v40, 0, sizeof(v40));
      }

      sub_1C8482178(v40, &qword_1EC2AADB8, &qword_1C85A10C0);
      v27 += 2;
      --v26;
    }

    while (v26);
  }

  return 1;
}

uint64_t sub_1C847B388(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v155 = MEMORY[0x1E69E7CC0];
    sub_1C8475100(0, v1, 0);
    v2 = v155;
    v4 = v3 + 64;
    v5 = -1 << *(v3 + 32);
    v6 = sub_1C8590EF4();
    v142 = v3 + 64;
    v143 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_17;
      }

      v146 = 1 << v6;
      v147 = v6 >> 6;
      v144 = v1;
      v145 = *(v3 + 36);
      v7 = (*(v3 + 48) + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      v148 = v6;
      sub_1C8481CB4(*(v3 + 56) + 32 * v6, v152);
      v150[0] = v9;
      v150[1] = v8;
      sub_1C8481D10(v152, v151);

      v159 = v9;
      v160 = v8;
      v158[0] = 0xD000000000000014;
      v158[1] = 0x80000001C85A2220;
      v156 = 1601397572;
      v157 = 0xE400000000000000;
      sub_1C8481E28();
      v149 = v2;
      v159 = sub_1C8590EC4();
      v160 = v10;
      v158[0] = 0xD000000000000010;
      v158[1] = 0x80000001C85A2280;
      v156 = 6255459;
      v157 = 0xE300000000000000;
      v11 = sub_1C8590EC4();
      v13 = v12;

      v159 = v11;
      v160 = v13;
      v158[0] = 0xD000000000000013;
      v158[1] = 0x80000001C85A2240;
      v156 = 1601399108;
      v157 = 0xE400000000000000;
      v14 = sub_1C8590EC4();
      v16 = v15;

      v159 = v14;
      v160 = v16;
      v158[0] = 0x6361667265746E69;
      v158[1] = 0xEF5F737461745365;
      v156 = 6255465;
      v157 = 0xE300000000000000;
      v17 = sub_1C8590EC4();
      v19 = v18;

      v159 = v17;
      v160 = v19;
      v158[0] = 0xD000000000000013;
      v158[1] = 0x80000001C85A2260;
      v156 = 6254916;
      v157 = 0xE300000000000000;
      v20 = sub_1C8590EC4();
      v22 = v21;

      v159 = v20;
      v160 = v22;
      v158[0] = 0x6C6175516B6E696CLL;
      v158[1] = 0xEF5F656C706D6153;
      v156 = 24433;
      v157 = 0xE200000000000000;
      v23 = sub_1C8590EC4();
      v25 = v24;

      v159 = v23;
      v160 = v25;
      v158[0] = 0xD000000000000013;
      v158[1] = 0x80000001C85A14C0;
      v156 = 0x5F63746244;
      v157 = 0xE500000000000000;
      v26 = sub_1C8590EC4();
      v28 = v27;

      v159 = v26;
      v160 = v28;
      strcpy(v158, "Diffscore_");
      BYTE3(v158[1]) = 0;
      HIDWORD(v158[1]) = -369098752;
      v156 = 6255428;
      v157 = 0xE300000000000000;
      v29 = sub_1C8590EC4();
      v31 = v30;

      v159 = v29;
      v160 = v31;
      v157 = 0xE300000000000000;
      v158[0] = 0x5F65726F6373;
      v158[1] = 0xE600000000000000;
      v156 = 6251379;
      v32 = sub_1C8590EC4();
      v34 = v33;

      v159 = v32;
      v160 = v34;
      strcpy(v158, "DiffapIfStats_");
      HIBYTE(v158[1]) = -18;
      v156 = 1601200452;
      v157 = 0xE400000000000000;
      v35 = sub_1C8590EC4();
      v37 = v36;

      v159 = v35;
      v160 = v37;
      strcpy(v158, "apIfStats_");
      BYTE3(v158[1]) = 0;
      HIDWORD(v158[1]) = -369098752;
      v156 = 6254689;
      v157 = 0xE300000000000000;
      v38 = sub_1C8590EC4();
      v40 = v39;

      v159 = v38;
      v160 = v40;
      v158[0] = 0xD000000000000010;
      v158[1] = 0x80000001C85A2710;
      v156 = 1601659204;
      v157 = 0xE400000000000000;
      v41 = sub_1C8590EC4();
      v43 = v42;

      v159 = v41;
      v160 = v43;
      v157 = 0xE300000000000000;
      strcpy(v158, "awdlIfStats_");
      BYTE5(v158[1]) = 0;
      HIWORD(v158[1]) = -5120;
      v156 = 6256481;
      v44 = sub_1C8590EC4();
      v46 = v45;

      v159 = v44;
      v160 = v46;
      v158[0] = 0x496E616E66666944;
      v158[1] = 0xEF5F737461745366;
      v156 = 0x5F6E616E44;
      v157 = 0xE500000000000000;
      v47 = sub_1C8590EC4();
      v49 = v48;

      v159 = v47;
      v160 = v49;
      strcpy(v158, "nanIfStats_");
      HIDWORD(v158[1]) = -352321536;
      v156 = 1601069422;
      v157 = 0xE400000000000000;
      v50 = sub_1C8590EC4();
      v52 = v51;

      v159 = v50;
      v160 = v52;
      strcpy(v158, "DiffirIfStats_");
      HIBYTE(v158[1]) = -18;
      v156 = 1601333572;
      v157 = 0xE400000000000000;
      v53 = sub_1C8590EC4();
      v55 = v54;

      v159 = v53;
      v160 = v55;
      strcpy(v158, "irIfStats_");
      BYTE3(v158[1]) = 0;
      HIDWORD(v158[1]) = -369098752;
      v156 = 6255209;
      v157 = 0xE300000000000000;
      v56 = sub_1C8590EC4();
      v58 = v57;

      v159 = v56;
      v160 = v58;
      strcpy(v158, "_awdlState_");
      HIDWORD(v158[1]) = -352321536;
      v156 = 1601397087;
      v157 = 0xE400000000000000;
      v59 = sub_1C8590EC4();
      v61 = v60;

      v159 = v59;
      v160 = v61;
      v157 = 0xE400000000000000;
      strcpy(v158, "_enableState_");
      HIWORD(v158[1]) = -4864;
      v156 = 1601398111;
      v62 = sub_1C8590EC4();
      v64 = v63;

      v159 = v62;
      v160 = v64;
      v157 = 0xE400000000000000;
      strcpy(v158, "_npeers_");
      BYTE1(v158[1]) = 0;
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -402653184;
      v156 = 1601203807;
      v65 = sub_1C8590EC4();
      v67 = v66;

      v159 = v65;
      v160 = v67;
      strcpy(v158, "_nrtpeers_");
      BYTE3(v158[1]) = 0;
      HIDWORD(v158[1]) = -369098752;
      v156 = 1601334879;
      v157 = 0xE400000000000000;
      v68 = sub_1C8590EC4();
      v70 = v69;

      v159 = v68;
      v160 = v70;
      v158[0] = 0xD000000000000013;
      v158[1] = 0x80000001C85A2730;
      v156 = 1601005919;
      v157 = 0xE400000000000000;
      v71 = sub_1C8590EC4();
      v73 = v72;

      v159 = v71;
      v160 = v73;
      v158[0] = 0xD000000000000012;
      v158[1] = 0x80000001C85A2750;
      v156 = 1600610655;
      v157 = 0xE400000000000000;
      v74 = sub_1C8590EC4();
      v76 = v75;

      v159 = v74;
      v160 = v76;
      strcpy(v158, "_btCoex_");
      BYTE1(v158[1]) = 0;
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -402653184;
      v156 = 1601462879;
      v157 = 0xE400000000000000;
      v77 = sub_1C8590EC4();
      v79 = v78;

      v159 = v77;
      v160 = v79;
      v158[0] = 0xD000000000000011;
      v158[1] = 0x80000001C85A2770;
      v156 = 6255199;
      v157 = 0xE300000000000000;
      v80 = sub_1C8590EC4();
      v82 = v81;

      v159 = v80;
      v160 = v82;
      v157 = 0xE400000000000000;
      v158[0] = 0x63417265776F705FLL;
      v158[1] = 0xEF5F797469766974;
      v156 = 1600221279;
      v83 = sub_1C8590EC4();
      v85 = v84;

      v159 = v83;
      v160 = v85;
      v157 = 0xE400000000000000;
      strcpy(v158, "_scanActivity_");
      HIBYTE(v158[1]) = -18;
      v156 = 1600222047;
      v86 = sub_1C8590EC4();
      v88 = v87;

      v159 = v86;
      v160 = v88;
      strcpy(v158, "_assoc_");
      v158[1] = 0xE700000000000000;
      v156 = 6250847;
      v157 = 0xE300000000000000;
      v89 = sub_1C8590EC4();
      v91 = v90;

      v159 = v89;
      v160 = v91;
      strcpy(v158, "_bytes_");
      v158[1] = 0xE700000000000000;
      v156 = 6251103;
      v157 = 0xE300000000000000;
      v92 = sub_1C8590EC4();
      v94 = v93;

      v159 = v92;
      v160 = v94;
      v157 = 0xE300000000000000;
      strcpy(v158, "_packets_");
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -385875968;
      v156 = 6254687;
      v95 = sub_1C8590EC4();
      v97 = v96;

      v159 = v95;
      v160 = v97;
      v158[0] = 0x5F726565705FLL;
      v158[1] = 0xE600000000000000;
      v156 = 1601335391;
      v157 = 0xE400000000000000;
      v98 = sub_1C8590EC4();
      v100 = v99;

      v159 = v98;
      v160 = v100;
      v157 = 0xE400000000000000;
      v158[0] = 0x6C706D6F4363615FLL;
      v158[1] = 0xEF5F736E6F697465;
      v156 = 1600348511;
      v101 = sub_1C8590EC4();
      v103 = v102;

      v159 = v101;
      v160 = v103;
      v157 = 0xE400000000000000;
      strcpy(v158, "_completions_");
      HIWORD(v158[1]) = -4864;
      v156 = 1601135455;
      v104 = sub_1C8590EC4();
      v106 = v105;

      v159 = v104;
      v160 = v106;
      v157 = 0xE400000000000000;
      strcpy(v158, "_sdbtdm_");
      BYTE1(v158[1]) = 0;
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -402653184;
      v156 = 1600418655;
      v107 = sub_1C8590EC4();
      v109 = v108;

      v159 = v107;
      v160 = v109;
      strcpy(v158, "_sliceStats0_");
      HIWORD(v158[1]) = -4864;
      v156 = 1597010783;
      v157 = 0xE400000000000000;
      v110 = sub_1C8590EC4();
      v112 = v111;

      v159 = v110;
      v160 = v112;
      strcpy(v158, "_sliceStats1_");
      HIWORD(v158[1]) = -4864;
      v156 = 1597076319;
      v157 = 0xE400000000000000;
      v113 = sub_1C8590EC4();
      v115 = v114;

      v159 = v113;
      v160 = v115;
      strcpy(v158, "_txmpduWME_");
      HIDWORD(v158[1]) = -352321536;
      v156 = 0x5F7778745FLL;
      v157 = 0xE500000000000000;
      v116 = sub_1C8590EC4();
      v118 = v117;

      v159 = v116;
      v160 = v118;
      strcpy(v158, "_rxmpduWME_");
      HIDWORD(v158[1]) = -352321536;
      v156 = 0x5F7778725FLL;
      v157 = 0xE500000000000000;
      v119 = sub_1C8590EC4();
      v121 = v120;

      v159 = v119;
      v160 = v121;
      v157 = 0xE500000000000000;
      strcpy(v158, "_rxmdpuLost_");
      BYTE5(v158[1]) = 0;
      HIWORD(v158[1]) = -5120;
      v156 = 0x5F4C78725FLL;
      v122 = sub_1C8590EC4();
      v124 = v123;

      v159 = v122;
      v160 = v124;
      strcpy(v158, "_nonBALost_");
      HIDWORD(v158[1]) = -352321536;
      v156 = 0x5F41426E5FLL;
      v157 = 0xE500000000000000;
      v125 = sub_1C8590EC4();
      v127 = v126;

      v159 = v125;
      v160 = v127;
      v157 = 0xE400000000000000;
      strcpy(v158, "_BALost_");
      BYTE1(v158[1]) = 0;
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -402653184;
      v156 = 1598112351;
      v128 = sub_1C8590EC4();
      v130 = v129;

      v159 = v128;
      v160 = v130;
      v157 = 0xE500000000000000;
      strcpy(v158, "_rxStall_");
      WORD1(v158[1]) = 0;
      HIDWORD(v158[1]) = -385875968;
      v156 = 0x5F7378725FLL;
      v131 = sub_1C8590EC4();
      v133 = v132;
      v2 = v149;

      sub_1C8481CB4(v151, v154);
      *&v153 = v131;
      *(&v153 + 1) = v133;
      sub_1C8482178(v150, &qword_1EC2AAD80, &qword_1C85A1088);
      v155 = v149;
      v135 = *(v149 + 16);
      v134 = *(v149 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_1C8475100((v134 > 1), v135 + 1, 1);
        v2 = v155;
      }

      *(v2 + 16) = v135 + 1;
      v136 = (v2 + 48 * v135);
      v137 = v153;
      v138 = v154[1];
      v136[3] = v154[0];
      v136[4] = v138;
      v136[2] = v137;
      v3 = v143;
      if (v148 >= -(-1 << *(v143 + 32)))
      {
        goto LABEL_18;
      }

      v4 = v142;
      if ((*(v142 + 8 * v147) & v146) == 0)
      {
        goto LABEL_19;
      }

      if (v145 != *(v143 + 36))
      {
        goto LABEL_20;
      }

      v6 = sub_1C8590F14();
      v1 = v144 - 1;
      if (v144 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_12:
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
      v139 = sub_1C8590FB4();
    }

    else
    {
      v139 = MEMORY[0x1E69E7CC8];
    }

    *&v153 = v139;

    sub_1C8474798(v140, 1, &v153);

    return v153;
  }

  return result;
}

uint64_t sub_1C847C89C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      if (sub_1C8590DC4() & 1) != 0 && (sub_1C8590DD4())
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C84750E0(0, *(v4 + 16) + 1, 1);
    }

    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    v11 = v10 + 1;
    if (v10 >= v9 >> 1)
    {
      result = sub_1C84750E0((v9 > 1), v10 + 1, 1);
      v11 = v10 + 1;
    }

    *(v4 + 16) = v11;
    v12 = v4 + 16 * v10;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_1C847CA30(uint64_t *a1)
{
  v4 = 0xD000000000000019;
  v5 = *a1;
  sub_1C84669B8(0xD000000000000024, 0x80000001C85A27D0, *a1, &v141);
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  v7 = &OBJC_METACLASS___PoliciesMO.superclass;
  if (!*(&v142 + 1))
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    *&v141 = 0;
    goto LABEL_11;
  }

  sub_1C84669B8(0xD000000000000024, 0x80000001C85A3930, v5, &v141);
  if (!*(&v142 + 1))
  {
LABEL_7:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_8;
  }

  v8 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (__OFADD__(*&v138[0], *&v138[0]))
  {
    goto LABEL_489;
  }

  *(&v142 + 1) = v8;
  *&v141 = 2 * *&v138[0];
LABEL_11:
  sub_1C8466D6C(&v141, 0xD000000000000023, 0x80000001C85A2840);
  v135 = a1;
  sub_1C84669B8(0xD00000000000001BLL, 0x80000001C85A2870, *a1, &v141);
  if (*(&v142 + 1))
  {
    v9 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      *(&v142 + 1) = v9;
      *&v141 = *&v138[0] != 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
  }

  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  *(&v142 + 1) = MEMORY[0x1E69E6530];
  *&v141 = 0;
LABEL_18:
  sub_1C8466D6C(&v141, 0xD000000000000022, 0x80000001C85A28C0);
  sub_1C84669B8(0xD000000000000024, 0x80000001C85A28F0, *a1, &v141);
  v2 = "DiffcontrollerStats_channelBandwidthChanged";
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_22;
  }

  v10 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    *&v141 = 0;
    goto LABEL_25;
  }

  *(&v142 + 1) = v10;
  *&v141 = *&v138[0] != 0;
LABEL_25:
  sub_1C8466D6C(&v141, 0xD00000000000002BLL, 0x80000001C85A2960);
  v11 = *a1;
  sub_1C84669B8(0xD00000000000001BLL, 0x80000001C85A2870, *a1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_35;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    goto LABEL_39;
  }

  v12 = *&v138[0];
  sub_1C84669B8(0xD000000000000017, 0x80000001C85A3910, v11, &v141);
  if (!*(&v142 + 1))
  {
LABEL_35:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_36;
  }

  v13 = MEMORY[0x1E69E6530];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (*&v138[0] > 14)
  {
    if ((*&v138[0] - 166) < 0xFFFFFFFFFFFFFF7ALL)
    {
      goto LABEL_34;
    }

    if ((*&v138[0] & 0x8000000000000000) != 0)
    {
      v12 = -*&v138[0];
      if (__OFSUB__(0, *&v138[0]))
      {
        goto LABEL_504;
      }
    }

    if (v12 > 132)
    {
      goto LABEL_34;
    }

    goto LABEL_417;
  }

  if ((*&v138[0] & 0x8000000000000000) != 0)
  {
    v12 = -*&v138[0];
    if (__OFSUB__(0, *&v138[0]))
    {
      goto LABEL_501;
    }
  }

  if (v12 <= 13)
  {
LABEL_417:
    *(&v142 + 1) = v13;
LABEL_39:
    *&v141 = 0;
    goto LABEL_40;
  }

LABEL_34:
  *(&v142 + 1) = v13;
  *&v141 = 1;
LABEL_40:
  sub_1C8466D6C(&v141, 0xD00000000000001FLL, 0x80000001C85A2990);
  v15 = *a1;
  sub_1C84669B8(0xD00000000000001BLL, 0x80000001C85A2870, *a1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_46;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_47:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    goto LABEL_50;
  }

  sub_1C84669B8(0xD000000000000017, 0x80000001C85A3910, v15, &v141);
  if (!*(&v142 + 1))
  {
LABEL_46:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_47;
  }

  v16 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*&v138[0])
  {
    *(&v142 + 1) = v16;
LABEL_50:
    *&v141 = 0;
    goto LABEL_51;
  }

  *(&v142 + 1) = v16;
  *&v141 = 1;
LABEL_51:
  sub_1C8466D6C(&v141, 0x4949504B69466957, 0xEC00000047343273);
  v17 = *a1;
  sub_1C84669B8(0xD00000000000001BLL, 0x80000001C85A2870, *a1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_56;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_57;
  }

  sub_1C84669B8(0xD000000000000017, 0x80000001C85A3910, v17, &v141);
  if (!*(&v142 + 1))
  {
LABEL_56:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_57;
  }

  v18 = MEMORY[0x1E69E6530];
  if (swift_dynamicCast())
  {
    *(&v142 + 1) = v18;
    goto LABEL_60;
  }

LABEL_57:
  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  *(&v142 + 1) = MEMORY[0x1E69E6530];
LABEL_60:
  *&v141 = 0;
  sub_1C8466D6C(&v141, 0x4949504B69466957, 0xEB00000000473573);
  v19 = *a1;
  sub_1C84669B8(0xD000000000000023, 0x80000001C85A2840, *a1, &v141);
  if (!*(&v142 + 1))
  {
LABEL_69:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_70;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_73;
  }

  sub_1C84669B8(0xD000000000000022, 0x80000001C85A28C0, v19, &v141);
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_73:
    v1 = a1;
    goto LABEL_74;
  }

  v1 = a1;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_74:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    *&v141 = 1;
    sub_1C8466D6C(&v141, 0xD00000000000001CLL, 0x80000001C85A2A20);
    goto LABEL_77;
  }

  sub_1C84669B8(0xD00000000000002BLL, 0x80000001C85A2960, v19, &v141);
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_74;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_1C84669B8(0xD00000000000001FLL, 0x80000001C85A2990, v19, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_69;
  }

  v20 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_70:
    v1 = a1;
    goto LABEL_74;
  }

  *(&v142 + 1) = v20;
  *&v141 = *&v138[0] <= 0;
  v1 = a1;
  sub_1C8466D6C(&v141, 0xD00000000000001CLL, 0x80000001C85A2A20);
LABEL_77:
  v21 = *v1;
  sub_1C84669B8(0xD000000000000032, 0x80000001C85A2A40, *v1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_85;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_86;
  }

  sub_1C84669B8(0xD00000000000002ELL, 0x80000001C85A36C0, v21, &v141);
  if (!*(&v142 + 1))
  {
LABEL_85:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_86;
  }

  v8 = MEMORY[0x1E69E6530];
  if (swift_dynamicCast())
  {
    if ((*&v138[0] & 0x8000000000000000) != 0)
    {
      goto LABEL_409;
    }

    v22 = 2 * *&v138[0];
    if (__OFADD__(*&v138[0], *&v138[0]))
    {
      goto LABEL_493;
    }

    if (v22 <= 0)
    {
LABEL_409:
      *(&v142 + 1) = v8;
      *&v141 = 0;
    }

    else
    {
      *(&v142 + 1) = MEMORY[0x1E69E63B0];
      *&v141 = *&v138[0] * 100.0 / v22;
    }

    goto LABEL_89;
  }

LABEL_86:
  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  v141 = 0u;
  v142 = 0u;
LABEL_89:
  sub_1C8466D6C(&v141, 0xD000000000000019, 0x80000001C85A2AB0);
  v23 = *v1;
  sub_1C84669B8(0xD000000000000033, 0x80000001C85A2AD0, *v1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_97;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_98:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
    goto LABEL_101;
  }

  sub_1C84669B8(0xD00000000000002ELL, 0x80000001C85A36C0, v23, &v141);
  if (!*(&v142 + 1))
  {
LABEL_97:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_98;
  }

  v8 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_98;
  }

  if ((*&v138[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_410;
  }

  v24 = 2 * *&v138[0];
  if (__OFADD__(*&v138[0], *&v138[0]))
  {
    goto LABEL_494;
  }

  if (v24 <= 0)
  {
LABEL_410:
    *(&v142 + 1) = v8;
    *&v141 = 0;
  }

  else
  {
    *(&v142 + 1) = MEMORY[0x1E69E63B0];
    *&v141 = *&v138[0] * 100.0 / v24;
  }

LABEL_101:
  sub_1C8466D6C(&v141, 0xD000000000000019, 0x80000001C85A2B40);
  v25 = *v1;
  sub_1C84669B8(0xD00000000000003ELL, 0x80000001C85A2B60, *v1, &v141);
  v136 = "WiFiKPIrxDataRetryPercent";
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_111;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_111:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
    goto LABEL_114;
  }

  v1 = *&v138[0];
  sub_1C84669B8(0xD00000000000003BLL, 0x80000001C85A3890, v25, &v141);
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_110;
  }

  v8 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_110:
    v1 = a1;
    goto LABEL_111;
  }

  v2 = *&v138[0];
  if ((*&v138[0] & 0x8000000000000000) == 0)
  {
    if (__OFADD__(*&v138[0], *&v138[0]))
    {
      goto LABEL_495;
    }

    *(&v142 + 1) = MEMORY[0x1E69E63B0];
    *&v141 = *&v138[0] * 100.0 / (2 * *&v138[0]);
    goto LABEL_457;
  }

  if (!*&v138[0])
  {
    *(&v142 + 1) = v8;
    *&v141 = 0;
LABEL_457:
    v1 = a1;
LABEL_114:
    sub_1C8466D6C(&v141, 0xD00000000000001CLL, 0x80000001C85A2BD0);
    goto LABEL_115;
  }

  sub_1C8590E64();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_1C85A0FF0;
  v133 = MEMORY[0x1E69E65A8];
  *(v132 + 56) = v8;
  *(v132 + 64) = v133;
  *(v132 + 32) = v1;
  *(v132 + 96) = v8;
  *(v132 + 104) = v133;
  *(v132 + 72) = v2;
  sub_1C8590CA4();

  v141 = 0u;
  v142 = 0u;
  v1 = a1;
  sub_1C8466D6C(&v141, 0xD00000000000001CLL, 0x80000001C85A2BD0);
LABEL_115:
  v26 = *v1;
  sub_1C84669B8(0xD000000000000041, 0x80000001C85A2BF0, *v1, &v141);
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_126;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_126:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
    v28 = 0xD00000000000001FLL;
    goto LABEL_129;
  }

  v1 = *&v138[0];
  sub_1C84669B8(0xD00000000000003ELL, 0x80000001C85A3810, v26, &v141);
  if (!*(&v142 + 1))
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_125;
  }

  v8 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_125:
    v1 = a1;
    goto LABEL_126;
  }

  v2 = *&v138[0];
  if ((*&v138[0] & 0x8000000000000000) != 0)
  {
    goto LABEL_411;
  }

  v27 = 2 * *&v138[0];
  if (__OFADD__(*&v138[0], *&v138[0]))
  {
    goto LABEL_496;
  }

  if (v27 <= 0)
  {
LABEL_411:
    if (*&v138[0])
    {
      sub_1C8590E64();
      if (qword_1EDE5CA48 != -1)
      {
        goto LABEL_499;
      }

      goto LABEL_413;
    }

    *(&v142 + 1) = v8;
    *&v141 = 0;
LABEL_446:
    v28 = v4 + 6;
    v1 = v135;
  }

  else
  {
    *(&v142 + 1) = MEMORY[0x1E69E63B0];
    *&v141 = *&v138[0] * 100.0 / v27;
    v28 = 0xD00000000000001FLL;
    v1 = a1;
  }

LABEL_129:
  sub_1C8466D6C(&v141, v28, 0x80000001C85A2C70);
  v29 = "WiFiKPIrxControlMACForUsPercent";
  v30 = *v1;
  sub_1C84669B8(v4 + 23, 0x80000001C85A2C90, *v1, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_142;
  }

  v31 = *&v138[0];
  sub_1C84669B8(v4 + 22, 0x80000001C85A37A0, v30, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_141;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_142;
  }

  v32 = *&v138[0];
  sub_1C84669B8(v4 + 24, 0x80000001C85A37D0, v30, &v141);
  if (!*(&v142 + 1))
  {
LABEL_141:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
LABEL_142:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      goto LABEL_487;
    }

    goto LABEL_143;
  }

  v33 = MEMORY[0x1E69E6530];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_142;
  }

  v34 = *&v138[0];
  if ((v31 & 0x8000000000000000) == 0 && (v32 & 0x8000000000000000) == 0 && (*&v138[0] & 0x8000000000000000) == 0)
  {
    v35 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_502;
    }

    v36 = __OFADD__(v35, *&v138[0]);
    v37 = v35 + *&v138[0];
    if (!v36)
    {
      *(&v142 + 1) = v33;
      *&v141 = v37;
      goto LABEL_144;
    }

    goto LABEL_503;
  }

  if (v31 >= 1)
  {
    *(&v142 + 1) = v33;
    *&v141 = v31;
    sub_1C8466D6C(&v141, 0xD000000000000019, 0x80000001C85A2D00);
  }

  if (v32 >= 1)
  {
    sub_1C84669B8(0xD000000000000019, 0x80000001C85A2D00, *v1, &v141);
    if (*(&v142 + 1))
    {
      if (swift_dynamicCast())
      {
        v32 = *&v138[0];
      }
    }

    else
    {
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    }

    *(&v142 + 1) = v33;
    *&v141 = v32;
    sub_1C8466D6C(&v141, 0xD000000000000019, 0x80000001C85A2D00);
  }

  if (v34 < 1)
  {
    goto LABEL_145;
  }

  sub_1C84669B8(0xD000000000000019, 0x80000001C85A2D00, *v1, &v141);
  if (*(&v142 + 1))
  {
    if (swift_dynamicCast())
    {
      v34 = *&v138[0];
    }
  }

  else
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
  }

  *(&v142 + 1) = v33;
  *&v141 = v34;
  while (1)
  {
LABEL_144:
    sub_1C8466D6C(&v141, 0xD000000000000019, 0x80000001C85A2D00);
LABEL_145:
    v39 = *v1;
    sub_1C84669B8(v4 + 23, v29 | 0x8000000000000000, *v1, &v141);
    if (!*(&v142 + 1))
    {
LABEL_152:
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      goto LABEL_153;
    }

    if (swift_dynamicCast())
    {
      v40 = *&v138[0];
      sub_1C84669B8(0xD000000000000019, 0x80000001C85A2D00, v39, &v141);
      if (!*(&v142 + 1))
      {
        goto LABEL_152;
      }

      v41 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if ((v40 & 0x8000000000000000) != 0 || *&v138[0] <= 0)
        {
          *(&v142 + 1) = v41;
          *&v141 = 0;
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = v40 * 100.0 / *&v138[0];
        }

        goto LABEL_156;
      }
    }

LABEL_153:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v42 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_156:
    sub_1C8466D6C(&v141, v4 + 25, 0x80000001C85A2D60);
    v43 = *v1;
    sub_1C84669B8(v4 + 23, v29 | 0x8000000000000000, *v1, &v141);
    if (!*(&v142 + 1))
    {
      goto LABEL_163;
    }

    if (swift_dynamicCast())
    {
      v44 = *&v138[0];
      sub_1C84669B8(v4 + 22, 0x80000001C85A37A0, v43, &v141);
      if (!*(&v142 + 1))
      {
LABEL_163:
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_164;
      }

      v45 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if ((*&v138[0] & 0x8000000000000000) != 0 || v44 <= 0)
        {
          if (*&v138[0] < 1 || v44)
          {
            *(&v142 + 1) = v45;
            *&v141 = 0;
          }

          else
          {
            *(&v142 + 1) = v45;
            *&v141 = 100;
          }
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = *&v138[0] * 100.0 / v44;
        }

        goto LABEL_167;
      }
    }

LABEL_164:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v46 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_167:
    sub_1C8466D6C(&v141, v4 - 2, 0x80000001C85A2DD0);
    v47 = *v1;
    sub_1C84669B8(v4 + 23, v29 | 0x8000000000000000, *v1, &v141);
    if (!*(&v142 + 1))
    {
      goto LABEL_174;
    }

    if (swift_dynamicCast())
    {
      v48 = *&v138[0];
      sub_1C84669B8(v4 + 21, 0x80000001C85A3770, v47, &v141);
      if (!*(&v142 + 1))
      {
LABEL_174:
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_175;
      }

      v49 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if ((*&v138[0] & 0x8000000000000000) != 0 || v48 <= 0)
        {
          if (*&v138[0] < 1 || v48)
          {
            *(&v142 + 1) = v49;
            *&v141 = 0;
          }

          else
          {
            *(&v142 + 1) = v49;
            *&v141 = 100;
          }
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = *&v138[0] * 100.0 / v48;
        }

        goto LABEL_178;
      }
    }

LABEL_175:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v50 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_178:
    sub_1C8466D6C(&v141, v4 + 1, 0x80000001C85A2E20);
    v51 = *v1;
    sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, *v1, &v141);
    if (!*(&v142 + 1))
    {
      goto LABEL_185;
    }

    if (swift_dynamicCast())
    {
      v52 = *&v138[0];
      sub_1C84669B8(v4 + 29, 0x80000001C85A3730, v51, &v141);
      if (!*(&v142 + 1))
      {
LABEL_185:
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_186;
      }

      v53 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if (v52 - 0x20000000 < 0xFFFFFFFFE0000001 || *&v138[0] >> 29)
        {
          *(&v142 + 1) = v53;
          *&v141 = 0;
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = *&v138[0] * 100.0 / v52;
        }

        goto LABEL_189;
      }
    }

LABEL_186:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v54 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_189:
    sub_1C8466D6C(&v141, v4 + 5, 0x80000001C85A2EA0);
    v55 = *v1;
    sub_1C84669B8(v4 + 28, 0x80000001C85A2EC0, *v1, &v141);
    if (!*(&v142 + 1))
    {
      goto LABEL_196;
    }

    if (swift_dynamicCast())
    {
      v56 = *&v138[0];
      sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, v55, &v141);
      if (!*(&v142 + 1))
      {
LABEL_196:
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_197;
      }

      v57 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if ((v56 & 0x8000000000000000) != 0 || *&v138[0] <= 0)
        {
          *(&v142 + 1) = v57;
          *&v141 = 0;
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = v56 * 100.0 / *&v138[0];
        }

        goto LABEL_200;
      }
    }

LABEL_197:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v58 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_200:
    sub_1C8466D6C(&v141, v4 + 19, 0x80000001C85A2F40);
    v59 = *v1;
    sub_1C84669B8(v4 + 36, 0x80000001C85A2F70, *v1, &v141);
    if (!*(&v142 + 1))
    {
      goto LABEL_207;
    }

    if (swift_dynamicCast())
    {
      v60 = *&v138[0];
      sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, v59, &v141);
      if (!*(&v142 + 1))
      {
LABEL_207:
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        goto LABEL_208;
      }

      v61 = MEMORY[0x1E69E6530];
      if (swift_dynamicCast())
      {
        if ((v60 & 0x8000000000000000) != 0 || *&v138[0] <= 0)
        {
          *(&v142 + 1) = v61;
          *&v141 = 0;
        }

        else
        {
          *(&v142 + 1) = MEMORY[0x1E69E63B0];
          *&v141 = v60 * 100.0 / *&v138[0];
        }

        goto LABEL_211;
      }
    }

LABEL_208:
    sub_1C8590E44();
    if (p_superclass[329] != -1)
    {
      swift_once();
    }

    v62 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
LABEL_211:
    sub_1C8466D6C(&v141, v4 + 17, 0x80000001C85A2FF0);
    v63 = *v1;
    sub_1C84669B8(v4 + 25, 0x80000001C85A3020, *v1, &v141);
    if (*(&v142 + 1))
    {
      v64 = swift_dynamicCast() ? *&v138[0] : 0;
    }

    else
    {
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      v64 = 0;
    }

    sub_1C84669B8(v4 + 25, 0x80000001C85A3060, v63, &v141);
    if (*(&v142 + 1))
    {
      v65 = swift_dynamicCast() ? *&v138[0] : 0;
    }

    else
    {
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      v65 = 0;
    }

    p_superclass = "tions_TxBK_success";
    sub_1C84669B8(v4 + 25, 0x80000001C85A30A0, v63, &v141);
    if (*(&v142 + 1))
    {
      v7 = swift_dynamicCast() ? *&v138[0] : 0;
    }

    else
    {
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      v7 = 0;
    }

    v1 = "tions_TxVO_success";
    sub_1C84669B8(v4 + 25, 0x80000001C85A30E0, v63, &v141);
    if (*(&v142 + 1))
    {
      v29 = swift_dynamicCast() ? *&v138[0] : 0;
    }

    else
    {
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      v29 = 0;
    }

    sub_1C84669B8(v4 + 25, 0x80000001C85A3020, v63, &v141);
    v66 = *(&v142 + 1);
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    if (!v66)
    {
      sub_1C84669B8(v4 + 25, 0x80000001C85A3060, v63, &v141);
      v67 = *(&v142 + 1);
      sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
      if (!v67)
      {
        sub_1C84669B8(v4 + 25, 0x80000001C85A30A0, v63, &v141);
        v68 = *(&v142 + 1);
        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
        if (!v68)
        {
          sub_1C84669B8(v4 + 25, 0x80000001C85A30E0, v63, &v141);
          v69 = *(&v142 + 1);
          sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
          if (!v69)
          {
            break;
          }
        }
      }
    }

    v70 = v64 + v65;
    if (__OFADD__(v64, v65))
    {
      __break(1u);
LABEL_484:
      __break(1u);
      goto LABEL_485;
    }

    v36 = __OFADD__(v70, v7);
    v71 = v7 + v70;
    if (v36)
    {
      goto LABEL_484;
    }

    v69 = &v71[v29];
    if (!__OFADD__(v71, v29))
    {
      v72 = 0;
      goto LABEL_239;
    }

LABEL_485:
    __break(1u);
LABEL_486:
    __break(1u);
LABEL_487:
    swift_once();
LABEL_143:
    v38 = v7[370];
    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
  }

  v72 = 1;
LABEL_239:
  v2 = "tions_TxVI_success";
  sub_1C84669B8(v4 + 18, 0x80000001C85A3120, v63, &v141);
  v73 = v135;
  p_superclass = &OBJC_METACLASS___PoliciesMO.superclass;
  v7 = &OBJC_METACLASS___PoliciesMO.superclass;
  v1 = "WiFiKPIrxFCSDroppedPercent";
  if (*(&v142 + 1))
  {
    v74 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      *(&v142 + 1) = v74;
      *&v141 = *&v138[0];
      goto LABEL_248;
    }
  }

  else
  {
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
  }

  if (v72)
  {
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
  }

  else
  {
    *(&v142 + 1) = MEMORY[0x1E69E6530];
    *&v141 = v69;
  }

LABEL_248:
  sub_1C8466D6C(&v141, v4 + 18, 0x80000001C85A3120);
  v8 = *v135;
  sub_1C84669B8(v4 + 16, 0x80000001C85A3190, *v135, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_256;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_257:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    goto LABEL_260;
  }

  v75 = *&v138[0];
  sub_1C84669B8(v4 + 18, 0x80000001C85A3120, v8, &v141);
  if (!*(&v142 + 1))
  {
LABEL_256:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_257;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_257;
  }

  if ((v75 & 0x8000000000000000) == 0)
  {
    v76 = v75 + *&v138[0];
    if (__OFADD__(v75, *&v138[0]))
    {
      goto LABEL_490;
    }

    if (v76 > 0)
    {
      *(&v142 + 1) = MEMORY[0x1E69E63B0];
      *&v141 = v75 * 100.0 / v76;
      v77 = v4 + 9;
      goto LABEL_261;
    }
  }

LABEL_260:
  v141 = 0u;
  v142 = 0u;
  v77 = v4 + 9;
LABEL_261:
  sub_1C8466D6C(&v141, v77, 0x80000001C85A31F0);
  v78 = *v135;
  sub_1C84669B8(v4 + 33, 0x80000001C85A3220, *v135, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_268;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_269:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
LABEL_272:
    v141 = 0u;
    v142 = 0u;
    goto LABEL_273;
  }

  v79 = *&v138[0];
  sub_1C84669B8(v4 + 33, 0x80000001C85A36F0, v78, &v141);
  if (!*(&v142 + 1))
  {
LABEL_268:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_269;
  }

  v80 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_269;
  }

  if ((v79 & 0x8000000000000000) == 0 && *&v138[0] > 0)
  {
    *(&v142 + 1) = MEMORY[0x1E69E63B0];
    *&v141 = v79 * 100.0 / *&v138[0];
    goto LABEL_273;
  }

  if (v79 | *&v138[0] && (v79 & 0x8000000000000000) == 0)
  {
    goto LABEL_272;
  }

  *(&v142 + 1) = v80;
  *&v141 = 0;
LABEL_273:
  sub_1C8466D6C(&v141, v4 + 26, 0x80000001C85A32A0);
  v81 = *v135;
  sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, *v135, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_280;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_281;
  }

  v82 = *&v138[0];
  sub_1C84669B8(v4 + 21, 0x80000001C85A3360, v81, &v141);
  if (!*(&v142 + 1))
  {
LABEL_280:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_281;
  }

  if (swift_dynamicCast())
  {
    if ((v82 & 0x8000000000000000) != 0 || *&v138[0] <= 0)
    {
      v141 = 0u;
      v142 = 0u;
    }

    else
    {
      *(&v142 + 1) = MEMORY[0x1E69E63B0];
      *&v141 = v82 / *&v138[0];
    }

    sub_1C8466D6C(&v141, v4 + 23, 0x80000001C85A3320);
    goto LABEL_284;
  }

LABEL_281:
  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  v141 = 0u;
  v142 = 0u;
  sub_1C8466D6C(&v141, v4 + 23, 0x80000001C85A3320);
LABEL_284:
  v83 = *v135;
  sub_1C84669B8(v4 + 21, 0x80000001C85A3360, *v135, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_291;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_292;
  }

  v84 = *&v138[0];
  sub_1C84669B8(v4 + 33, 0x80000001C85A36F0, v83, &v141);
  if (!*(&v142 + 1))
  {
LABEL_291:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_292;
  }

  if (swift_dynamicCast())
  {
    if ((v84 & 0x8000000000000000) != 0 || (*&v138[0] & 0x8000000000000000) != 0)
    {
      v141 = 0u;
      v142 = 0u;
    }

    else
    {
      *(&v142 + 1) = MEMORY[0x1E69E63B0];
      *&v141 = v84 + *&v138[0];
    }

    sub_1C8466D6C(&v141, v4 + 20, 0x80000001C85A33D0);
    goto LABEL_295;
  }

LABEL_292:
  sub_1C8590E44();
  if (qword_1EDE5CA48 != -1)
  {
    swift_once();
  }

  sub_1C8590CA4();
  v141 = 0u;
  v142 = 0u;
  sub_1C8466D6C(&v141, v4 + 20, 0x80000001C85A33D0);
LABEL_295:
  v85 = *v135;
  sub_1C84669B8(v4 + 21, 0x80000001C85A3360, *v135, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_308;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_309;
  }

  v86 = *&v138[0];
  sub_1C84669B8(v4 + 21, 0x80000001C85A36C0, v85, &v141);
  if (!*(&v142 + 1))
  {
LABEL_308:
    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_309;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_309:
    sub_1C8590E44();
    if (qword_1EDE5CA48 != -1)
    {
      swift_once();
    }

    sub_1C8590CA4();
    v141 = 0u;
    v142 = 0u;
    sub_1C8466D6C(&v141, v4 + 17, 0x80000001C85A3440);
    goto LABEL_312;
  }

  v87 = *&v138[0];
  sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, v85, &v141);
  if (!*(&v142 + 1))
  {
    goto LABEL_308;
  }

  v8 = MEMORY[0x1E69E6530];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_309;
  }

  v88 = v87 + *&v138[0];
  v89 = __OFADD__(v87, *&v138[0]);
  if ((v86 & 0x8000000000000000) != 0)
  {
    if (!v89)
    {
      goto LABEL_469;
    }

    __break(1u);
    goto LABEL_466;
  }

  if (!v89)
  {
    if (v88 > 0)
    {
      *(&v142 + 1) = MEMORY[0x1E69E63B0];
      *&v141 = v86 * 100.0 / v88;
      goto LABEL_472;
    }

    if (v86)
    {
LABEL_469:
      if (v88)
      {
        v141 = 0u;
        v142 = 0u;
      }

      else
      {
        *(&v142 + 1) = v8;
        *&v141 = 100;
      }

LABEL_472:
      v134 = v4 + 17;
    }

    else
    {
      *(&v142 + 1) = v8;
      *&v141 = 0;
      v134 = v4 + 17;
    }

    sub_1C8466D6C(&v141, v134, 0x80000001C85A3440);
LABEL_312:
    v90 = *v135;
    sub_1C84669B8(v4 + 21, 0x80000001C85A2E40, *v135, &v141);
    if (*(&v142 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_321;
      }

      v91 = *&v138[0];
      sub_1C84669B8(v4 + 18, 0x80000001C85A3120, v90, &v141);
      if (*(&v142 + 1))
      {
        v8 = MEMORY[0x1E69E6530];
        if (swift_dynamicCast())
        {
          if (v91 < 0 || v91 < *&v138[0])
          {
            *(&v142 + 1) = v8;
            *&v141 = 0;
            v92 = v4 + 2;
          }

          else
          {
            if (__OFSUB__(v91, *&v138[0]))
            {
              goto LABEL_497;
            }

            *(&v142 + 1) = v8;
            *&v141 = v91 - *&v138[0];
            v92 = v4 + 2;
          }

          sub_1C8466D6C(&v141, v92, 0x80000001C85A34A0);
LABEL_324:
          sub_1C84669B8(v4 + 18, 0x80000001C85A3120, *v135, &v141);
          if (*(&v142 + 1))
          {
            v93 = MEMORY[0x1E69E6530];
            if (swift_dynamicCast())
            {
              *(&v142 + 1) = v93;
              *&v141 = *&v138[0];
              v94 = v4 - 1;
              goto LABEL_331;
            }
          }

          else
          {
            sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
          }

          sub_1C8590E44();
          if (qword_1EDE5CA48 != -1)
          {
            swift_once();
          }

          sub_1C8590CA4();
          v141 = 0u;
          v142 = 0u;
          v94 = v4 - 1;
LABEL_331:
          sub_1C8466D6C(&v141, v94, 0x80000001C85A34F0);
          v95 = *v135;
          sub_1C84669B8(v4 + 2, 0x80000001C85A34A0, *v135, &v141);
          if (*(&v142 + 1))
          {
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_340;
            }

            v96 = *&v138[0];
            sub_1C84669B8(v4 - 1, 0x80000001C85A34F0, v95, &v141);
            if (*(&v142 + 1))
            {
              v8 = MEMORY[0x1E69E6530];
              if (swift_dynamicCast())
              {
                if ((v96 & 0x8000000000000000) != 0)
                {
                  goto LABEL_450;
                }

                v97 = *&v138[0] + v96;
                if (__OFADD__(*&v138[0], v96))
                {
                  goto LABEL_491;
                }

                if (v97 > 0)
                {
                  *(&v142 + 1) = MEMORY[0x1E69E63B0];
                  *&v141 = v96 * 100.0 / v97;
                  v98 = v4 + 16;
                  goto LABEL_345;
                }

                if (v96)
                {
LABEL_450:
                  if (*&v138[0] >= 1)
                  {
                    *(&v142 + 1) = v8;
                    *&v141 = 100;
                    goto LABEL_344;
                  }

LABEL_343:
                  v141 = 0u;
                  v142 = 0u;
LABEL_344:
                  v98 = v4 + 16;
LABEL_345:
                  sub_1C8466D6C(&v141, v98, 0x80000001C85A3550);
                  v99 = *v135;
                  sub_1C84669B8(v4 + 37, v136 | 0x8000000000000000, *v135, &v141);
                  if (*(&v142 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v100 = *&v138[0];
                      v1 = 0x80000001C85A35D0;
                      sub_1C84669B8(v4 + 9, 0x80000001C85A35D0, v99, &v141);
                      if (*(&v142 + 1))
                      {
                        v8 = MEMORY[0x1E69E6530];
                        if (swift_dynamicCast())
                        {
                          if (v100 < 0 || v100 < *&v138[0])
                          {
                            *(&v142 + 1) = v8;
                            *&v141 = 0;
                            v101 = v4 + 2;
                          }

                          else
                          {
                            if (__OFSUB__(v100, *&v138[0]))
                            {
                              goto LABEL_498;
                            }

                            *(&v142 + 1) = v8;
                            *&v141 = v100 - *&v138[0];
                            v101 = v4 + 2;
                          }

                          v73 = v135;
                          sub_1C8466D6C(&v141, v101, 0x80000001C85A35B0);
LABEL_359:
                          sub_1C84669B8(v4 + 9, 0x80000001C85A35D0, *v73, &v141);
                          if (*(&v142 + 1))
                          {
                            v102 = MEMORY[0x1E69E6530];
                            if (swift_dynamicCast())
                            {
                              *(&v142 + 1) = v102;
                              *&v141 = *&v138[0];
                              v103 = v4 - 1;
                              goto LABEL_366;
                            }
                          }

                          else
                          {
                            sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
                          }

                          sub_1C8590E44();
                          if (qword_1EDE5CA48 != -1)
                          {
                            swift_once();
                          }

                          sub_1C8590CA4();
                          v141 = 0u;
                          v142 = 0u;
                          v103 = v4 - 1;
LABEL_366:
                          sub_1C8466D6C(&v141, v103, 0x80000001C85A3630);
                          v104 = *v73;
                          sub_1C84669B8(v4 + 2, 0x80000001C85A35B0, *v73, &v141);
                          if (*(&v142 + 1))
                          {
                            if ((swift_dynamicCast() & 1) == 0)
                            {
                              goto LABEL_375;
                            }

                            v105 = *&v138[0];
                            sub_1C84669B8(v4 - 1, 0x80000001C85A3630, v104, &v141);
                            if (*(&v142 + 1))
                            {
                              v8 = MEMORY[0x1E69E6530];
                              if (swift_dynamicCast())
                              {
                                if ((v105 & 0x8000000000000000) == 0)
                                {
                                  v106 = *&v138[0] + v105;
                                  if (__OFADD__(*&v138[0], v105))
                                  {
                                    goto LABEL_492;
                                  }

                                  if (v106 > 0)
                                  {
                                    *(&v142 + 1) = MEMORY[0x1E69E63B0];
                                    *&v141 = v105 * 100.0 / v106;
                                    v107 = v4 + 16;
                                    goto LABEL_380;
                                  }

                                  if (!v105)
                                  {
                                    *(&v142 + 1) = v8;
                                    *&v141 = 0;
                                    goto LABEL_379;
                                  }
                                }

                                if (*&v138[0] >= 1)
                                {
                                  *(&v142 + 1) = v8;
                                  *&v141 = 100;
                                  goto LABEL_379;
                                }

LABEL_378:
                                v141 = 0u;
                                v142 = 0u;
LABEL_379:
                                v107 = v4 + 16;
LABEL_380:
                                sub_1C8466D6C(&v141, v107, 0x80000001C85A3690);
                                v108 = *v73;

                                v110 = sub_1C8467D54(v109);
                                v137 = v108;

                                v111 = sub_1C847C89C(v110);

                                v29 = *(v111 + 16);
                                if (!v29)
                                {
LABEL_408:

                                  return 1;
                                }

                                v4 = sub_1C8481E28();
                                v1 = (v111 + 40);
                                while (2)
                                {
                                  v7 = *v1;
                                  *&v141 = *(v1 - 1);
                                  p_superclass = v141;
                                  *(&v141 + 1) = v7;
                                  *&v138[0] = 0x657572745FLL;
                                  *(&v138[0] + 1) = 0xE500000000000000;
                                  v139 = 0x65736C61665FLL;
                                  v140 = 0xE600000000000000;

                                  v136 = sub_1C8590EC4();
                                  v2 = v112;
                                  *&v141 = p_superclass;
                                  *(&v141 + 1) = v7;
                                  *&v138[0] = 0x657572745FLL;
                                  *(&v138[0] + 1) = 0xE500000000000000;
                                  v139 = 1952673887;
                                  v140 = 0xE400000000000000;
                                  v113 = sub_1C8590EC4();
                                  v115 = v114;
                                  if (*(v137 + 16))
                                  {
                                    v8 = v113;
                                    v116 = sub_1C8474B54(p_superclass, v7);
                                    if (v117)
                                    {
                                      sub_1C8481CB4(*(v137 + 56) + 32 * v116, &v141);
                                      if (swift_dynamicCast())
                                      {
                                        v118 = *&v138[0];
                                        if (*(v137 + 16) && (v119 = sub_1C8474B54(v136, v2), (v120 & 1) != 0))
                                        {
                                          sub_1C8481CB4(*(v137 + 56) + 32 * v119, &v141);
                                        }

                                        else
                                        {
                                          v141 = 0u;
                                          v142 = 0u;
                                        }

                                        if (*(&v142 + 1))
                                        {
                                          if (swift_dynamicCast())
                                          {

                                            v126 = v118 + *&v138[0];
                                            if (__OFADD__(v118, *&v138[0]))
                                            {
                                              goto LABEL_486;
                                            }

                                            if (v126)
                                            {
                                              if (v118 == 0x8000000000000000 && v126 == -1)
                                              {
                                                __break(1u);
LABEL_489:
                                                __break(1u);
LABEL_490:
                                                __break(1u);
LABEL_491:
                                                __break(1u);
LABEL_492:
                                                __break(1u);
LABEL_493:
                                                __break(1u);
LABEL_494:
                                                __break(1u);
LABEL_495:
                                                __break(1u);
LABEL_496:
                                                __break(1u);
LABEL_497:
                                                __break(1u);
LABEL_498:
                                                __break(1u);
LABEL_499:
                                                swift_once();
LABEL_413:
                                                v129 = v7[370];
                                                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AADC0, &qword_1C85A10C8);
                                                v130 = swift_allocObject();
                                                *(v130 + 16) = xmmword_1C85A0FF0;
                                                v131 = MEMORY[0x1E69E65A8];
                                                *(v130 + 56) = v8;
                                                *(v130 + 64) = v131;
                                                *(v130 + 32) = v1;
                                                *(v130 + 96) = v8;
                                                *(v130 + 104) = v131;
                                                *(v130 + 72) = v2;
                                                sub_1C8590CA4();

                                                v141 = 0u;
                                                v142 = 0u;
                                                goto LABEL_446;
                                              }

                                              *(&v142 + 1) = MEMORY[0x1E69E6530];
                                              *&v141 = v118 / v126;
                                            }

                                            else
                                            {
                                              *(&v142 + 1) = MEMORY[0x1E69E6530];
                                              *&v141 = 0;
                                            }

                                            sub_1C8481D10(&v141, v138);
                                            v127 = *v135;
                                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                            v139 = *v135;
                                            sub_1C8475624(v138, v8, v115, isUniquelyReferenced_nonNull_native);

                                            v137 = v139;
                                            *v135 = v139;
                                            goto LABEL_383;
                                          }

LABEL_391:
                                        }

                                        else
                                        {

                                          sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
                                        }

                                        v121 = sub_1C8590E44();
                                        if (qword_1EDE5CA48 != -1)
                                        {
                                          swift_once();
                                        }

                                        v122 = qword_1EDE5CB90;
                                        if (os_log_type_enabled(qword_1EDE5CB90, v121))
                                        {
                                          v123 = swift_slowAlloc();
                                          v124 = swift_slowAlloc();
                                          *&v141 = v124;
                                          *v123 = 136315138;
                                          v125 = sub_1C84741F0(p_superclass, v7, &v141);

                                          *(v123 + 4) = v125;
                                          _os_log_impl(&dword_1C8460000, v122, v121, "Failed to find values of out[DifflinkQualSampleTrue] out[DifflinkQualSampleFalse] for %s", v123, 0xCu);
                                          __swift_destroy_boxed_opaque_existential_0(v124);
                                          MEMORY[0x1CCA78470](v124, -1, -1);
                                          MEMORY[0x1CCA78470](v123, -1, -1);
                                        }

                                        else
                                        {
                                        }

LABEL_383:
                                        v1 += 16;
                                        if (!--v29)
                                        {
                                          goto LABEL_408;
                                        }

                                        continue;
                                      }
                                    }
                                  }

                                  break;
                                }

                                goto LABEL_391;
                              }

LABEL_375:
                              sub_1C8590E44();
                              if (qword_1EDE5CA48 != -1)
                              {
                                swift_once();
                              }

                              sub_1C8590CA4();
                              goto LABEL_378;
                            }
                          }

                          sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
                          goto LABEL_375;
                        }
                      }

                      else
                      {
                        sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
                      }

                      v73 = v135;
                    }
                  }

                  else
                  {
                    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
                  }

                  sub_1C8590E44();
                  if (qword_1EDE5CA48 != -1)
                  {
                    swift_once();
                  }

                  sub_1C8590CA4();
                  v141 = 0u;
                  v142 = 0u;
                  sub_1C8466D6C(&v141, v4 + 2, 0x80000001C85A35B0);
                  goto LABEL_359;
                }

LABEL_466:
                *(&v142 + 1) = v8;
                *&v141 = 0;
                goto LABEL_344;
              }

LABEL_340:
              sub_1C8590E44();
              if (qword_1EDE5CA48 != -1)
              {
                swift_once();
              }

              sub_1C8590CA4();
              goto LABEL_343;
            }
          }

          sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
          goto LABEL_340;
        }

LABEL_321:
        sub_1C8590E44();
        if (qword_1EDE5CA48 != -1)
        {
          swift_once();
        }

        sub_1C8590CA4();
        v141 = 0u;
        v142 = 0u;
        sub_1C8466D6C(&v141, v4 + 2, 0x80000001C85A34A0);
        goto LABEL_324;
      }
    }

    sub_1C8482178(&v141, &qword_1EC2AADB8, &qword_1C85A10C0);
    goto LABEL_321;
  }

  __break(1u);
LABEL_501:
  __break(1u);
LABEL_502:
  __break(1u);
LABEL_503:
  __break(1u);
LABEL_504:
  __break(1u);
  return result;
}

uint64_t sub_1C84805EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = a1;
    v155 = MEMORY[0x1E69E7CC0];
    sub_1C8475100(0, v1, 0);
    v2 = v155;
    v4 = v3 + 64;
    v5 = -1 << *(v3 + 32);
    v6 = sub_1C8590EF4();
    v142 = v3 + 64;
    v143 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
    {
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_17;
      }

      v146 = 1 << v6;
      v147 = v6 >> 6;
      v144 = v1;
      v145 = *(v3 + 36);
      v7 = (*(v3 + 48) + 16 * v6);
      v9 = *v7;
      v8 = v7[1];
      v148 = v6;
      sub_1C8481CB4(*(v3 + 56) + 32 * v6, v152);
      v150[0] = v9;
      v150[1] = v8;
      sub_1C8481D10(v152, v151);

      v159 = v9;
      v160 = v8;
      v157 = 1601397572;
      v158 = 0xE400000000000000;
      v156[0] = 0xD000000000000014;
      v156[1] = 0x80000001C85A2220;
      sub_1C8481E28();
      v149 = v2;
      v159 = sub_1C8590EC4();
      v160 = v10;
      v157 = 6255459;
      v158 = 0xE300000000000000;
      v156[0] = 0xD000000000000010;
      v156[1] = 0x80000001C85A2280;
      v11 = sub_1C8590EC4();
      v13 = v12;

      v159 = v11;
      v160 = v13;
      v157 = 1601399108;
      v158 = 0xE400000000000000;
      v156[0] = 0xD000000000000013;
      v156[1] = 0x80000001C85A2240;
      v14 = sub_1C8590EC4();
      v16 = v15;

      v159 = v14;
      v160 = v16;
      v157 = 6255465;
      v158 = 0xE300000000000000;
      v156[0] = 0x6361667265746E69;
      v156[1] = 0xEF5F737461745365;
      v17 = sub_1C8590EC4();
      v19 = v18;

      v159 = v17;
      v160 = v19;
      v157 = 6254916;
      v158 = 0xE300000000000000;
      v156[0] = 0xD000000000000013;
      v156[1] = 0x80000001C85A2260;
      v20 = sub_1C8590EC4();
      v22 = v21;

      v159 = v20;
      v160 = v22;
      v157 = 24433;
      v158 = 0xE200000000000000;
      v156[0] = 0x6C6175516B6E696CLL;
      v156[1] = 0xEF5F656C706D6153;
      v23 = sub_1C8590EC4();
      v25 = v24;

      v159 = v23;
      v160 = v25;
      v157 = 0x5F63746244;
      v158 = 0xE500000000000000;
      v156[0] = 0xD000000000000013;
      v156[1] = 0x80000001C85A14C0;
      v26 = sub_1C8590EC4();
      v28 = v27;

      v159 = v26;
      v160 = v28;
      v157 = 6255428;
      v158 = 0xE300000000000000;
      strcpy(v156, "Diffscore_");
      BYTE3(v156[1]) = 0;
      HIDWORD(v156[1]) = -369098752;
      v29 = sub_1C8590EC4();
      v31 = v30;

      v159 = v29;
      v160 = v31;
      v157 = 6251379;
      v158 = 0xE300000000000000;
      v156[0] = 0x5F65726F6373;
      v156[1] = 0xE600000000000000;
      v32 = sub_1C8590EC4();
      v34 = v33;

      v159 = v32;
      v160 = v34;
      v157 = 1601200452;
      v158 = 0xE400000000000000;
      strcpy(v156, "DiffapIfStats_");
      HIBYTE(v156[1]) = -18;
      v35 = sub_1C8590EC4();
      v37 = v36;

      v159 = v35;
      v160 = v37;
      v157 = 6254689;
      v158 = 0xE300000000000000;
      strcpy(v156, "apIfStats_");
      BYTE3(v156[1]) = 0;
      HIDWORD(v156[1]) = -369098752;
      v38 = sub_1C8590EC4();
      v40 = v39;

      v159 = v38;
      v160 = v40;
      v157 = 1601659204;
      v158 = 0xE400000000000000;
      v156[0] = 0xD000000000000010;
      v156[1] = 0x80000001C85A2710;
      v41 = sub_1C8590EC4();
      v43 = v42;

      v159 = v41;
      v160 = v43;
      v157 = 6256481;
      v158 = 0xE300000000000000;
      strcpy(v156, "awdlIfStats_");
      BYTE5(v156[1]) = 0;
      HIWORD(v156[1]) = -5120;
      v44 = sub_1C8590EC4();
      v46 = v45;

      v159 = v44;
      v160 = v46;
      v157 = 0x5F6E616E44;
      v158 = 0xE500000000000000;
      v156[0] = 0x496E616E66666944;
      v156[1] = 0xEF5F737461745366;
      v47 = sub_1C8590EC4();
      v49 = v48;

      v159 = v47;
      v160 = v49;
      v157 = 1601069422;
      v158 = 0xE400000000000000;
      strcpy(v156, "nanIfStats_");
      HIDWORD(v156[1]) = -352321536;
      v50 = sub_1C8590EC4();
      v52 = v51;

      v159 = v50;
      v160 = v52;
      v157 = 1601333572;
      v158 = 0xE400000000000000;
      strcpy(v156, "DiffirIfStats_");
      HIBYTE(v156[1]) = -18;
      v53 = sub_1C8590EC4();
      v55 = v54;

      v159 = v53;
      v160 = v55;
      v157 = 6255209;
      v158 = 0xE300000000000000;
      strcpy(v156, "irIfStats_");
      BYTE3(v156[1]) = 0;
      HIDWORD(v156[1]) = -369098752;
      v56 = sub_1C8590EC4();
      v58 = v57;

      v159 = v56;
      v160 = v58;
      v157 = 1601397087;
      v158 = 0xE400000000000000;
      strcpy(v156, "_awdlState_");
      HIDWORD(v156[1]) = -352321536;
      v59 = sub_1C8590EC4();
      v61 = v60;

      v159 = v59;
      v160 = v61;
      v157 = 1601398111;
      v158 = 0xE400000000000000;
      strcpy(v156, "_enableState_");
      HIWORD(v156[1]) = -4864;
      v62 = sub_1C8590EC4();
      v64 = v63;

      v159 = v62;
      v160 = v64;
      v157 = 1601203807;
      v158 = 0xE400000000000000;
      strcpy(v156, "_npeers_");
      BYTE1(v156[1]) = 0;
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -402653184;
      v65 = sub_1C8590EC4();
      v67 = v66;

      v159 = v65;
      v160 = v67;
      v157 = 1601334879;
      v158 = 0xE400000000000000;
      strcpy(v156, "_nrtpeers_");
      BYTE3(v156[1]) = 0;
      HIDWORD(v156[1]) = -369098752;
      v68 = sub_1C8590EC4();
      v70 = v69;

      v159 = v68;
      v160 = v70;
      v157 = 1601005919;
      v158 = 0xE400000000000000;
      v156[0] = 0xD000000000000013;
      v156[1] = 0x80000001C85A2730;
      v71 = sub_1C8590EC4();
      v73 = v72;

      v159 = v71;
      v160 = v73;
      v157 = 1600610655;
      v158 = 0xE400000000000000;
      v156[0] = 0xD000000000000012;
      v156[1] = 0x80000001C85A2750;
      v74 = sub_1C8590EC4();
      v76 = v75;

      v159 = v74;
      v160 = v76;
      v157 = 1601462879;
      v158 = 0xE400000000000000;
      strcpy(v156, "_btCoex_");
      BYTE1(v156[1]) = 0;
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -402653184;
      v77 = sub_1C8590EC4();
      v79 = v78;

      v159 = v77;
      v160 = v79;
      v157 = 6255199;
      v158 = 0xE300000000000000;
      v156[0] = 0xD000000000000011;
      v156[1] = 0x80000001C85A2770;
      v80 = sub_1C8590EC4();
      v82 = v81;

      v159 = v80;
      v160 = v82;
      v157 = 1600221279;
      v158 = 0xE400000000000000;
      v156[0] = 0x63417265776F705FLL;
      v156[1] = 0xEF5F797469766974;
      v83 = sub_1C8590EC4();
      v85 = v84;

      v159 = v83;
      v160 = v85;
      v157 = 1600222047;
      v158 = 0xE400000000000000;
      strcpy(v156, "_scanActivity_");
      HIBYTE(v156[1]) = -18;
      v86 = sub_1C8590EC4();
      v88 = v87;

      v159 = v86;
      v160 = v88;
      v157 = 6250847;
      v158 = 0xE300000000000000;
      strcpy(v156, "_assoc_");
      v156[1] = 0xE700000000000000;
      v89 = sub_1C8590EC4();
      v91 = v90;

      v159 = v89;
      v160 = v91;
      v157 = 6251103;
      v158 = 0xE300000000000000;
      strcpy(v156, "_bytes_");
      v156[1] = 0xE700000000000000;
      v92 = sub_1C8590EC4();
      v94 = v93;

      v159 = v92;
      v160 = v94;
      v157 = 6254687;
      v158 = 0xE300000000000000;
      strcpy(v156, "_packets_");
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -385875968;
      v95 = sub_1C8590EC4();
      v97 = v96;

      v159 = v95;
      v160 = v97;
      v157 = 1601335391;
      v158 = 0xE400000000000000;
      v156[0] = 0x5F726565705FLL;
      v156[1] = 0xE600000000000000;
      v98 = sub_1C8590EC4();
      v100 = v99;

      v159 = v98;
      v160 = v100;
      v157 = 1600348511;
      v158 = 0xE400000000000000;
      v156[0] = 0x6C706D6F4363615FLL;
      v156[1] = 0xEF5F736E6F697465;
      v101 = sub_1C8590EC4();
      v103 = v102;

      v159 = v101;
      v160 = v103;
      v157 = 1601135455;
      v158 = 0xE400000000000000;
      strcpy(v156, "_completions_");
      HIWORD(v156[1]) = -4864;
      v104 = sub_1C8590EC4();
      v106 = v105;

      v159 = v104;
      v160 = v106;
      v157 = 1600418655;
      v158 = 0xE400000000000000;
      strcpy(v156, "_sdbtdm_");
      BYTE1(v156[1]) = 0;
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -402653184;
      v107 = sub_1C8590EC4();
      v109 = v108;

      v159 = v107;
      v160 = v109;
      v157 = 1597010783;
      v158 = 0xE400000000000000;
      strcpy(v156, "_sliceStats0_");
      HIWORD(v156[1]) = -4864;
      v110 = sub_1C8590EC4();
      v112 = v111;

      v159 = v110;
      v160 = v112;
      v157 = 1597076319;
      v158 = 0xE400000000000000;
      strcpy(v156, "_sliceStats1_");
      HIWORD(v156[1]) = -4864;
      v113 = sub_1C8590EC4();
      v115 = v114;

      v159 = v113;
      v160 = v115;
      v157 = 0x5F7778745FLL;
      v158 = 0xE500000000000000;
      strcpy(v156, "_txmpduWME_");
      HIDWORD(v156[1]) = -352321536;
      v116 = sub_1C8590EC4();
      v118 = v117;

      v159 = v116;
      v160 = v118;
      v157 = 0x5F7778725FLL;
      v158 = 0xE500000000000000;
      strcpy(v156, "_rxmpduWME_");
      HIDWORD(v156[1]) = -352321536;
      v119 = sub_1C8590EC4();
      v121 = v120;

      v159 = v119;
      v160 = v121;
      v157 = 0x5F4C78725FLL;
      v158 = 0xE500000000000000;
      strcpy(v156, "_rxmdpuLost_");
      BYTE5(v156[1]) = 0;
      HIWORD(v156[1]) = -5120;
      v122 = sub_1C8590EC4();
      v124 = v123;

      v159 = v122;
      v160 = v124;
      v157 = 0x5F41426E5FLL;
      v158 = 0xE500000000000000;
      strcpy(v156, "_nonBALost_");
      HIDWORD(v156[1]) = -352321536;
      v125 = sub_1C8590EC4();
      v127 = v126;

      v159 = v125;
      v160 = v127;
      v157 = 1598112351;
      v158 = 0xE400000000000000;
      strcpy(v156, "_BALost_");
      BYTE1(v156[1]) = 0;
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -402653184;
      v128 = sub_1C8590EC4();
      v130 = v129;

      v159 = v128;
      v160 = v130;
      v157 = 0x5F7378725FLL;
      v158 = 0xE500000000000000;
      strcpy(v156, "_rxStall_");
      WORD1(v156[1]) = 0;
      HIDWORD(v156[1]) = -385875968;
      v131 = sub_1C8590EC4();
      v133 = v132;
      v2 = v149;

      sub_1C8481CB4(v151, v154);
      *&v153 = v131;
      *(&v153 + 1) = v133;
      sub_1C8482178(v150, &qword_1EC2AAD80, &qword_1C85A1088);
      v155 = v149;
      v135 = *(v149 + 16);
      v134 = *(v149 + 24);
      if (v135 >= v134 >> 1)
      {
        sub_1C8475100((v134 > 1), v135 + 1, 1);
        v2 = v155;
      }

      *(v2 + 16) = v135 + 1;
      v136 = (v2 + 48 * v135);
      v137 = v153;
      v138 = v154[1];
      v136[3] = v154[0];
      v136[4] = v138;
      v136[2] = v137;
      v3 = v143;
      if (v148 >= -(-1 << *(v143 + 32)))
      {
        goto LABEL_18;
      }

      v4 = v142;
      if ((*(v142 + 8 * v147) & v146) == 0)
      {
        goto LABEL_19;
      }

      if (v145 != *(v143 + 36))
      {
        goto LABEL_20;
      }

      v6 = sub_1C8590F14();
      v1 = v144 - 1;
      if (v144 == 1)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_12:
    if (*(v2 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD88, &qword_1C85A1090);
      v139 = sub_1C8590FB4();
    }

    else
    {
      v139 = MEMORY[0x1E69E7CC8];
    }

    *&v153 = v139;

    sub_1C8474798(v140, 1, &v153);

    return v153;
  }

  return result;
}

uint64_t sub_1C8481CB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C8481D10(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8481D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2AAD90, &qword_1C85A1098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1C8481E28()
{
  result = qword_1EDE5CA38;
  if (!qword_1EDE5CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE5CA38);
  }

  return result;
}

unint64_t sub_1C8481E7C()
{
  result = qword_1EDE5CA30;
  if (!qword_1EDE5CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE5CA30);
  }

  return result;
}

unint64_t sub_1C8481ED0()
{
  result = qword_1EC2AADD8;
  if (!qword_1EC2AADD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2AADD0, &qword_1C85A10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2AADD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C8481F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

_BYTE **sub_1C8481FAC(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_1C8481FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C8481FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C8482024()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void sub_1C8482070(double **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1C84820B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v5);
  v3 = MEMORY[0x1CCA77690](v5, MEMORY[0x1E69E6158]);

  return v3;
}

uint64_t sub_1C848211C(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v6();
  v10 = sub_1C84741F0(v8, v9, a3);

  v12 = *a1;
  *v12 = v10;
  *a1 = v12 + 1;
  return result;
}

uint64_t sub_1C8482178(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1C848228C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C8590FE4() & 1;
  }
}

uint64_t sub_1C84822E4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t WiFiAnalyticsAWDWiFiDPSReportReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 64) |= 1u;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_60;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_60:
            *(a1 + 8) = v21;
            goto LABEL_55;
          case 2:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSNotification);
            [a1 addStallNotification:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSNotificationReadFrom(v14, a2))
            {
LABEL_62:

              return 0;
            }

            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSActiveProbeStats);
            [a1 addProbeResult:v14];
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSActiveProbeStatsReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSSnapshot);
          objc_storeStrong((a1 + 40), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSSnapshotReadFrom(&v14->super.super.isa, a2))
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiUSBEventNotification);
          [a1 addUsbEvent:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiUSBEventNotificationReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSCountersSample);
          [a1 addDpsCounterSample:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSCountersSampleReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(WiFiAnalyticsAWDWiFiDPSEpilogue);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiDPSEpilogueReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityMpduLostReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityMpduWME);
        v14 = 16;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityMpduWME);
        v14 = 8;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityMpduWMEReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityAggregateMetricsReadFrom(uint64_t a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v163 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v163 & 0x7F) << v6;
      if ((v163 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 192) |= 0x1000u;
        while (1)
        {
          v163 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v163 & 0x7F) << v14;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v12 = v15++ >= 9;
          if (v12)
          {
            v20 = 0;
LABEL_284:
            v161 = 104;
            goto LABEL_334;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

        goto LABEL_284;
      case 2u:
        v88 = 0;
        v89 = 0;
        v90 = 0;
        *(a1 + 192) |= 0x2000u;
        while (1)
        {
          v163 = 0;
          v91 = [a2 position] + 1;
          if (v91 >= [a2 position] && (v92 = objc_msgSend(a2, "position") + 1, v92 <= objc_msgSend(a2, "length")))
          {
            v93 = [a2 data];
            [v93 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v90 |= (v163 & 0x7F) << v88;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v88 += 7;
          v12 = v89++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_288;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v90;
        }

LABEL_288:
        v161 = 112;
        goto LABEL_334;
      case 3u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        *(a1 + 192) |= 0x8000u;
        while (1)
        {
          v163 = 0;
          v72 = [a2 position] + 1;
          if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 1, v73 <= objc_msgSend(a2, "length")))
          {
            v74 = [a2 data];
            [v74 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v71 |= (v163 & 0x7F) << v69;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v12 = v70++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_272;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v71;
        }

LABEL_272:
        v161 = 128;
        goto LABEL_334;
      case 5u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        *(a1 + 192) |= 4u;
        while (1)
        {
          v163 = 0;
          v121 = [a2 position] + 1;
          if (v121 >= [a2 position] && (v122 = objc_msgSend(a2, "position") + 1, v122 <= objc_msgSend(a2, "length")))
          {
            v123 = [a2 data];
            [v123 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v120 |= (v163 & 0x7F) << v118;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v12 = v119++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_309;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v120;
        }

LABEL_309:
        v161 = 24;
        goto LABEL_334;
      case 6u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 192) |= 8u;
        while (1)
        {
          v163 = 0;
          v127 = [a2 position] + 1;
          if (v127 >= [a2 position] && (v128 = objc_msgSend(a2, "position") + 1, v128 <= objc_msgSend(a2, "length")))
          {
            v129 = [a2 data];
            [v129 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v126 |= (v163 & 0x7F) << v124;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v12 = v125++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_313;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v126;
        }

LABEL_313:
        v161 = 32;
        goto LABEL_334;
      case 7u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        *(a1 + 192) |= 0x400000u;
        while (1)
        {
          v163 = 0;
          v78 = [a2 position] + 1;
          if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 1, v79 <= objc_msgSend(a2, "length")))
          {
            v80 = [a2 data];
            [v80 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v77 |= (v163 & 0x7F) << v75;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v75 += 7;
          v12 = v76++ >= 9;
          if (v12)
          {
            v81 = 0;
            goto LABEL_276;
          }
        }

        if ([a2 hasError])
        {
          v81 = 0;
        }

        else
        {
          v81 = v77;
        }

LABEL_276:
        v162 = 184;
        goto LABEL_293;
      case 8u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        *(a1 + 192) |= 0x800000u;
        while (1)
        {
          v163 = 0;
          v97 = [a2 position] + 1;
          if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 1, v98 <= objc_msgSend(a2, "length")))
          {
            v99 = [a2 data];
            [v99 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v96 |= (v163 & 0x7F) << v94;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v12 = v95++ >= 9;
          if (v12)
          {
            v81 = 0;
            goto LABEL_292;
          }
        }

        if ([a2 hasError])
        {
          v81 = 0;
        }

        else
        {
          v81 = v96;
        }

LABEL_292:
        v162 = 188;
LABEL_293:
        *(a1 + v162) = v81;
        continue;
      case 9u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 192) |= 0x4000u;
        while (1)
        {
          v163 = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v163 & 0x7F) << v100;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v12 = v101++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_297;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v102;
        }

LABEL_297:
        v161 = 120;
        goto LABEL_334;
      case 0xAu:
        v136 = 0;
        v137 = 0;
        v138 = 0;
        *(a1 + 192) |= 0x400u;
        while (1)
        {
          v163 = 0;
          v139 = [a2 position] + 1;
          if (v139 >= [a2 position] && (v140 = objc_msgSend(a2, "position") + 1, v140 <= objc_msgSend(a2, "length")))
          {
            v141 = [a2 data];
            [v141 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v138 |= (v163 & 0x7F) << v136;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v136 += 7;
          v12 = v137++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_321;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v138;
        }

LABEL_321:
        v161 = 88;
        goto LABEL_334;
      case 0xCu:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        *(a1 + 192) |= 0x100u;
        while (1)
        {
          v163 = 0;
          v133 = [a2 position] + 1;
          if (v133 >= [a2 position] && (v134 = objc_msgSend(a2, "position") + 1, v134 <= objc_msgSend(a2, "length")))
          {
            v135 = [a2 data];
            [v135 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v132 |= (v163 & 0x7F) << v130;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v12 = v131++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_317;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v132;
        }

LABEL_317:
        v161 = 72;
        goto LABEL_334;
      case 0xDu:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        *(a1 + 192) |= 0x10000u;
        while (1)
        {
          v163 = 0;
          v48 = [a2 position] + 1;
          if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v47 |= (v163 & 0x7F) << v45;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v45 += 7;
          v12 = v46++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_256;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v47;
        }

LABEL_256:
        v161 = 136;
        goto LABEL_334;
      case 0xEu:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        *(a1 + 192) |= 0x20000u;
        while (1)
        {
          v163 = 0;
          v85 = [a2 position] + 1;
          if (v85 >= [a2 position] && (v86 = objc_msgSend(a2, "position") + 1, v86 <= objc_msgSend(a2, "length")))
          {
            v87 = [a2 data];
            [v87 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v84 |= (v163 & 0x7F) << v82;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v12 = v83++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_280;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v84;
        }

LABEL_280:
        v161 = 144;
        goto LABEL_334;
      case 0x10u:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        *(a1 + 192) |= 0x200000u;
        while (1)
        {
          v163 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v59 |= (v163 & 0x7F) << v57;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v12 = v58++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_264;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v59;
        }

LABEL_264:
        v161 = 176;
        goto LABEL_334;
      case 0x12u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 192) |= 0x40000u;
        while (1)
        {
          v163 = 0;
          v36 = [a2 position] + 1;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
          {
            v38 = [a2 data];
            [v38 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v35 |= (v163 & 0x7F) << v33;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v12 = v34++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_248;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v35;
        }

LABEL_248:
        v161 = 152;
        goto LABEL_334;
      case 0x13u:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        *(a1 + 192) |= 0x100000u;
        while (1)
        {
          v163 = 0;
          v109 = [a2 position] + 1;
          if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 1, v110 <= objc_msgSend(a2, "length")))
          {
            v111 = [a2 data];
            [v111 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v108 |= (v163 & 0x7F) << v106;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v106 += 7;
          v12 = v107++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_301;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v108;
        }

LABEL_301:
        v161 = 168;
        goto LABEL_334;
      case 0x14u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        *(a1 + 192) |= 0x80000u;
        while (1)
        {
          v163 = 0;
          v115 = [a2 position] + 1;
          if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 1, v116 <= objc_msgSend(a2, "length")))
          {
            v117 = [a2 data];
            [v117 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v114 |= (v163 & 0x7F) << v112;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v12 = v113++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_305;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v114;
        }

LABEL_305:
        v161 = 160;
        goto LABEL_334;
      case 0x15u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        *(a1 + 192) |= 2u;
        while (1)
        {
          v163 = 0;
          v151 = [a2 position] + 1;
          if (v151 >= [a2 position] && (v152 = objc_msgSend(a2, "position") + 1, v152 <= objc_msgSend(a2, "length")))
          {
            v153 = [a2 data];
            [v153 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v150 |= (v163 & 0x7F) << v148;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v12 = v149++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_329;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v150;
        }

LABEL_329:
        v161 = 16;
        goto LABEL_334;
      case 0x16u:
        v142 = 0;
        v143 = 0;
        v144 = 0;
        *(a1 + 192) |= 0x800u;
        while (1)
        {
          v163 = 0;
          v145 = [a2 position] + 1;
          if (v145 >= [a2 position] && (v146 = objc_msgSend(a2, "position") + 1, v146 <= objc_msgSend(a2, "length")))
          {
            v147 = [a2 data];
            [v147 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v144 |= (v163 & 0x7F) << v142;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v142 += 7;
          v12 = v143++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_325;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v144;
        }

LABEL_325:
        v161 = 96;
        goto LABEL_334;
      case 0x17u:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 192) |= 0x10u;
        while (1)
        {
          v163 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v163 & 0x7F) << v21;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v12 = v22++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_240;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_240:
        v161 = 40;
        goto LABEL_334;
      case 0x18u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 192) |= 0x20u;
        while (1)
        {
          v163 = 0;
          v66 = [a2 position] + 1;
          if (v66 >= [a2 position] && (v67 = objc_msgSend(a2, "position") + 1, v67 <= objc_msgSend(a2, "length")))
          {
            v68 = [a2 data];
            [v68 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v65 |= (v163 & 0x7F) << v63;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v12 = v64++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_268;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v65;
        }

LABEL_268:
        v161 = 48;
        goto LABEL_334;
      case 0x19u:
        v154 = 0;
        v155 = 0;
        v156 = 0;
        *(a1 + 192) |= 0x40u;
        while (1)
        {
          v163 = 0;
          v157 = [a2 position] + 1;
          if (v157 >= [a2 position] && (v158 = objc_msgSend(a2, "position") + 1, v158 <= objc_msgSend(a2, "length")))
          {
            v159 = [a2 data];
            [v159 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v156 |= (v163 & 0x7F) << v154;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v154 += 7;
          v12 = v155++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_333;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v156;
        }

LABEL_333:
        v161 = 56;
        goto LABEL_334;
      case 0x1Au:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 192) |= 0x80u;
        while (1)
        {
          v163 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v163 & 0x7F) << v27;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v12 = v28++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_244;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v29;
        }

LABEL_244:
        v161 = 64;
        goto LABEL_334;
      case 0x1Bu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        *(a1 + 192) |= 1u;
        while (1)
        {
          v163 = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v163 & 0x7F) << v51;
          if ((v163 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v12 = v52++ >= 9;
          if (v12)
          {
            v20 = 0;
            goto LABEL_260;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v53;
        }

LABEL_260:
        v161 = 8;
        goto LABEL_334;
      case 0x1Cu:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        *(a1 + 192) |= 0x200u;
        break;
      default:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        continue;
    }

    while (1)
    {
      v163 = 0;
      v42 = [a2 position] + 1;
      if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
      {
        v44 = [a2 data];
        [v44 getBytes:&v163 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v41 |= (v163 & 0x7F) << v39;
      if ((v163 & 0x80) == 0)
      {
        break;
      }

      v39 += 7;
      v12 = v40++ >= 9;
      if (v12)
      {
        v20 = 0;
        goto LABEL_252;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v41;
    }

LABEL_252:
    v161 = 80;
LABEL_334:
    *(a1 + v161) = v20;
  }

  return [a2 hasError] ^ 1;
}

uint64_t WiFiAnalyticsAWDWiFiNWActivityAWDLInterfaceStatsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v56) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v56 & 0x7F) << v5;
      if ((v56 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadString();
        v14 = *(a1 + 88);
        *(a1 + 88) = v13;

        goto LABEL_119;
      case 2u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addPackets:v22];
        goto LABEL_54;
      case 3u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityTraffic);
        [a1 addBytes:v22];
LABEL_54:
        v56 = 0;
        v57 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityTrafficReadFrom(v22, a2))
        {
          goto LABEL_121;
        }

        goto LABEL_66;
      case 4u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addNpeers:v22];
        goto LABEL_60;
      case 5u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addNrtpeers:v22];
        goto LABEL_60;
      case 6u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addAwdlState:v22];
        goto LABEL_60;
      case 7u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 136) |= 0x20u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v56 & 0x7F) << v35;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_109;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v37;
        }

LABEL_109:
        v53 = 96;
        goto LABEL_118;
      case 8u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 136) |= 4u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v56 & 0x7F) << v29;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_105;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v31;
        }

LABEL_105:
        v53 = 72;
        goto LABEL_118;
      case 9u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        *(a1 + 136) |= 8u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v49 |= (v56 & 0x7F) << v47;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v11 = v48++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_117;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v49;
        }

LABEL_117:
        v53 = 76;
        goto LABEL_118;
      case 0xAu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 136) |= 0x10u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v56 & 0x7F) << v23;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_101;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v25;
        }

LABEL_101:
        v53 = 80;
        goto LABEL_118;
      case 0xBu:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 136) |= 2u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v56 & 0x7F) << v41;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_113;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v43;
        }

LABEL_113:
        v53 = 40;
        goto LABEL_118;
      case 0xCu:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityStateBin);
        [a1 addEnableState:v22];
LABEL_60:
        v56 = 0;
        v57 = 0;
        if (!PBReaderPlaceMark() || !WiFiAnalyticsAWDWiFiNWActivityStateBinReadFrom(v22, a2))
        {
          goto LABEL_121;
        }

        goto LABEL_66;
      case 0xDu:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBK:v22];
        goto LABEL_64;
      case 0xEu:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyBE:v22];
        goto LABEL_64;
      case 0xFu:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVO:v22];
        goto LABEL_64;
      case 0x10u:
        v22 = objc_alloc_init(WiFiAnalyticsAWDWiFiNWActivityHistogramBin);
        [a1 addTxLatencyVI:v22];
LABEL_64:
        v56 = 0;
        v57 = 0;
        if (PBReaderPlaceMark() && WiFiAnalyticsAWDWiFiNWActivityHistogramBinReadFrom(v22, a2))
        {
LABEL_66:
          PBReaderRecallMark();

LABEL_119:
          v54 = [a2 position];
          if (v54 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_121:

        return 0;
      case 0x11u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 136) |= 1u;
        while (1)
        {
          LOBYTE(v56) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v56 & 0x7F) << v15;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_97;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_97:
        v53 = 8;
LABEL_118:
        *(a1 + v53) = v21;
        goto LABEL_119;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_119;
    }
  }
}