void sub_1C7021994(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v81 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 72 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 72 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = 72 * v8;
        v17 = (v9 + 72 * v8 + 152);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 10) && *v17 == *(v17 - 9))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v17 += 9;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 72 * v6 - 72;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x48uLL);
              memcpy((v22 + v19), __dst, 0x41uLL);
            }

            ++v21;
            v19 -= 72;
            v16 += 72;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 72 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 9) && v29[1] == *(v29 - 8);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 9, 0x48uLL);
                memcpy(v29 - 9, __dst, 0x41uLL);
                v29 -= 9;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 72;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1C7025784();
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v81 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1C70223D4(&v81, *a1, a3);
LABEL_103:
}

uint64_t sub_1C7021F04(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C70228EC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C702203C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C7022E5C((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C7022168(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C7023A70((*a3 + 56 * *v4), (*a3 + 56 * *v9), *a3 + 56 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C70222A0(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v14 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v14 = result;
  }

  v12 = v4;
  *v4 = v14;
  v6 = (v14 + 16);
  for (i = *(v14 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v14;
      return OUTLINED_FUNCTION_514();
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v14 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C7024E74();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v14;
  __break(1u);
  return result;
}

uint64_t sub_1C70223D4(uint64_t *a1, uint64_t a2, void *a3)
{
  i = a1;
  v14 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v14 = result;
  }

  v12 = i;
  *i = v14;
  v6 = (v14 + 16);
  for (i = *(v14 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v14;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v7 = (v14 + 16 * i);
    v8 = *v7;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C7025784();
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v7 = v8;
    v7[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v14;
  __break(1u);
  return result;
}

uint64_t sub_1C702250C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 >= v9)
  {
    sub_1C6F9A570(a2, (a3 - a2) / 40, a4);
    v31 = &v4[40 * v9];
    v35 = v7;
    v37 = v4;
    v19 = 0;
    v39 = v6;
    v33 = v5;
    while (1)
    {
      v10 = &v31[v19];
      if (&v31[v19] <= v4 || v6 <= v7)
      {
        break;
      }

      v21 = *(v10 - 5);
      v22 = *(v10 - 4);
      v23 = v10 - 40;
      v24 = *(v6 - 5);
      v25 = *(v6 - 4);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v21, v22);
      MEMORY[0x1CCA5CD70](v24, v25);

      v6 = v39;
      v7 = v35;
      v4 = v37;
      if (&v31[v19] != (v33 + v19))
      {
        v26 = *v23;
        v27 = *(v23 + 1);
        *(v33 + v19 - 8) = *(v23 + 4);
        *(v33 + v19 - 40) = v26;
        *(v33 + v19 - 24) = v27;
      }

      v19 -= 40;
    }
  }

  else
  {
    sub_1C6F9A570(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v32 = v5;
    v34 = v10;
    while (v4 < v10 && v6 < v5)
    {
      v12 = *v6;
      v13 = *(v6 + 1);
      v38 = v6;
      v14 = *v4;
      v15 = *(v4 + 1);
      v36 = v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v12, v13);
      MEMORY[0x1CCA5CD70](v14, v15);

      v16 = v4;
      v4 += 40;
      v6 = v38;
      v5 = v32;
      v10 = v34;
      if (v7 != v36)
      {
        v17 = *v16;
        v18 = *(v16 + 1);
        *(v7 + 4) = *(v16 + 4);
        *v7 = v17;
        *(v7 + 1) = v18;
      }

      v7 += 40;
    }

    v6 = v7;
  }

  v28 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v28])
  {
    memmove(v6, v4, 40 * v28);
  }

  return 1;
}

uint64_t sub_1C70228EC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1C6F9A570(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 40;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 40;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_1C6F9A570(a2, (a3 - a2) / 40, a4);
  v10 = &v4[40 * v9];
LABEL_19:
  v16 = v6 - 40;
  for (v5 -= 40; v10 > v4 && v6 > v7; v5 -= 40)
  {
    v18 = *(v10 - 5) == *(v6 - 5) && *(v10 - 4) == *(v6 - 4);
    if (!v18 && (sub_1C7551DBC() & 1) != 0)
    {
      v12 = v5 + 40 == v6;
      v6 -= 40;
      if (!v12)
      {
        v21 = *v16;
        v22 = *(v16 + 1);
        *(v5 + 32) = *(v16 + 4);
        *v5 = v21;
        *(v5 + 16) = v22;
        v6 = v16;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 40))
    {
      v19 = *(v10 - 40);
      v20 = *(v10 - 24);
      *(v5 + 32) = *(v10 - 1);
      *v5 = v19;
      *(v5 + 16) = v20;
    }

    v10 -= 40;
  }

LABEL_36:
  v23 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v23])
  {
    memmove(v6, v4, 40 * v23);
  }

  return 1;
}

uint64_t sub_1C7022AB4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 64;
  v9 = (a3 - a2) / 64;
  if (v8 < v9)
  {
    sub_1C741E43C(a1, (a2 - a1) / 64, a4);
    v10 = &v4[64 * v8];
    v55 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_47;
      }

      v56 = v7;
      v12 = *v6;
      v13 = *(v6 + 1);
      v14 = *(v6 + 2);
      v15 = *(v6 + 3);
      v70 = v6;
      v64 = v14;
      v65 = v15;
      v62 = v12;
      v63 = v13;
      v16 = *v4;
      v17 = *(v4 + 1);
      v18 = *(v4 + 3);
      v68 = *(v4 + 2);
      v69 = v18;
      v66 = v16;
      v67 = v17;
      v19 = v14;
      v20 = v68;
      v60 = 0x3A70697254;
      v61 = 0xE500000000000000;
      sub_1C7026698(&v62, &v58);
      sub_1C7026698(&v66, &v58);
      MEMORY[0x1CCA5CD70](v19, *(&v19 + 1));
      v22 = v60;
      v21 = v61;
      v58 = 0x3A70697254;
      v59 = 0xE500000000000000;
      MEMORY[0x1CCA5CD70](v20, *(&v20 + 1));
      v23 = v22 == v58 && v21 == v59;
      if (v23)
      {
        break;
      }

      v24 = sub_1C7551DBC();

      sub_1C70266D0(&v66);
      sub_1C70266D0(&v62);
      if ((v24 & 1) == 0)
      {
        goto LABEL_15;
      }

      v25 = v70;
      v6 = (v70 + 64);
      v5 = v55;
      v26 = v56;
      if (v56 != v70)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 = v26 + 64;
    }

    sub_1C70266D0(&v66);
    sub_1C70266D0(&v62);
LABEL_15:
    v25 = v4;
    v5 = v55;
    v26 = v56;
    v23 = v56 == v4;
    v4 += 64;
    v6 = v70;
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_16:
    v27 = *v25;
    v28 = v25[1];
    v29 = v25[3];
    *(v26 + 2) = v25[2];
    *(v26 + 3) = v29;
    *v26 = v27;
    *(v26 + 1) = v28;
    goto LABEL_17;
  }

  sub_1C741E43C(a2, (a3 - a2) / 64, a4);
  v10 = &v4[64 * v9];
  v57 = v7;
  v53 = v4;
LABEL_19:
  v54 = v6 - 64;
  v5 -= 64;
  v70 = v6;
  while (v10 > v4 && v6 > v7)
  {
    v31 = *(v10 - 64);
    v32 = *(v10 - 48);
    v33 = *(v10 - 16);
    v64 = *(v10 - 32);
    v65 = v33;
    v62 = v31;
    v63 = v32;
    v34 = *(v54 + 1);
    v66 = *v54;
    v67 = v34;
    v35 = *(v54 + 3);
    v68 = *(v54 + 2);
    v69 = v35;
    v36 = v64;
    v37 = v68;
    v60 = 0x3A70697254;
    v61 = 0xE500000000000000;
    sub_1C7026698(&v62, &v58);
    sub_1C7026698(&v66, &v58);
    MEMORY[0x1CCA5CD70](v36, *(&v36 + 1));
    v39 = v60;
    v38 = v61;
    v58 = 0x3A70697254;
    v59 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](v37, *(&v37 + 1));
    if (v39 == v58 && v38 == v59)
    {
      v41 = 0;
    }

    else
    {
      v41 = sub_1C7551DBC();
    }

    sub_1C70266D0(&v66);
    sub_1C70266D0(&v62);
    v7 = v57;
    v4 = v53;
    if (v41)
    {
      v46 = (v5 + 64) < v70 || v5 >= v70;
      if (!v46 && v5 + 64 == v70)
      {
        v6 = v54;
      }

      else
      {
        v6 = v54;
        v47 = *v54;
        v48 = *(v54 + 1);
        v49 = *(v54 + 3);
        *(v5 + 2) = *(v54 + 2);
        *(v5 + 3) = v49;
        *v5 = v47;
        *(v5 + 1) = v48;
      }

      goto LABEL_19;
    }

    v42 = (v5 + 64) < v10 || v5 >= v10;
    if (v42 || v10 != v5 + 64)
    {
      v43 = *(v10 - 64);
      v44 = *(v10 - 48);
      v45 = *(v10 - 16);
      *(v5 + 2) = *(v10 - 32);
      *(v5 + 3) = v45;
      *v5 = v43;
      *(v5 + 1) = v44;
    }

    v6 = v70;
    v5 -= 64;
    v10 -= 64;
  }

LABEL_47:
  v50 = (v10 - v4) / 64;
  if (v6 != v4 || v6 >= &v4[64 * v50])
  {
    memmove(v6, v4, v50 << 6);
  }

  return 1;
}

uint64_t sub_1C7022E5C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 64;
  v9 = (a3 - a2) / 64;
  if (v8 < v9)
  {
    sub_1C741E43C(a1, (a2 - a1) / 64, a4);
    v10 = &v4[64 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 64;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 64;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 64;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 3);
    *(v7 + 2) = *(v13 + 2);
    *(v7 + 3) = v16;
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_1C741E43C(a2, (a3 - a2) / 64, a4);
  v10 = &v4[64 * v9];
LABEL_19:
  v17 = v6 - 64;
  for (v5 -= 64; v10 > v4 && v6 > v7; v5 -= 64)
  {
    v19 = *(v10 - 8) == *(v6 - 8) && *(v10 - 7) == *(v6 - 7);
    if (!v19 && (sub_1C7551DBC() & 1) != 0)
    {
      v12 = v5 + 64 == v6;
      v6 -= 64;
      if (!v12)
      {
        v23 = *v17;
        v24 = *(v17 + 1);
        v25 = *(v17 + 3);
        *(v5 + 2) = *(v17 + 2);
        *(v5 + 3) = v25;
        *v5 = v23;
        *(v5 + 1) = v24;
        v6 = v17;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 64)
    {
      v20 = *(v10 - 4);
      v21 = *(v10 - 3);
      v22 = *(v10 - 1);
      *(v5 + 2) = *(v10 - 2);
      *(v5 + 3) = v22;
      *v5 = v20;
      *(v5 + 1) = v21;
    }

    v10 -= 64;
  }

LABEL_36:
  v26 = (v10 - v4) / 64;
  if (v6 != v4 || v6 >= &v4[64 * v26])
  {
    memmove(v6, v4, v26 << 6);
  }

  return 1;
}

void sub_1C7023018(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = type metadata accessor for PartOfWeekExtendedToken(0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v53 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v53 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v68 = a1;
  v67 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E4FC(a1, v19 / v18, a4);
    v60 = (a4 + v23 * v18);
    v66 = v60;
    v58 = a3;
    v62 = v18;
    while (1)
    {
      if (a4 >= v60 || a2 >= a3)
      {
        goto LABEL_71;
      }

      v63 = a1;
      v26 = a2;
      sub_1C702659C();
      sub_1C702659C();
      v64 = 0x6557664F74726150;
      v65 = 0xEB000000003A6B65;
      MEMORY[0x1CCA5CD70](*v16, v16[1]);
      v28 = v64;
      v27 = v65;
      v64 = 0x6557664F74726150;
      v65 = 0xEB000000003A6B65;
      MEMORY[0x1CCA5CD70](*v13, v13[1]);
      if (v28 == v64 && v27 == v65)
      {

        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v30 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v30)
        {
          v31 = v63;
          a2 = v26 + v62;
          if (v63 < v26 || v63 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v58;
          }

          else
          {
            a3 = v58;
            if (v63 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 = v62;
          goto LABEL_40;
        }
      }

      v33 = a4;
      v34 = v62;
      v31 = v63;
      a4 += v62;
      v35 = v63 < v33 || v63 >= a4;
      a2 = v26;
      if (v35)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v58;
      }

      else
      {
        a3 = v58;
        if (v63 != v33)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v67 = a4;
LABEL_40:
      a1 = v31 + v34;
      v68 = a1;
    }
  }

  sub_1C741E4FC(a2, v21 / v18, a4);
  v36 = a2;
  v37 = a4 + v24 * v18;
  v38 = -v18;
  v39 = v37;
  v63 = a1;
  v56 = v38;
  v57 = a4;
LABEL_42:
  v62 = v36;
  v58 = v36 + v38;
  v40 = a3;
  v54 = v39;
  while (1)
  {
    if (v37 <= a4)
    {
      v68 = v62;
      v66 = v39;
      goto LABEL_71;
    }

    if (v62 <= a1)
    {
      break;
    }

    v55 = v39;
    v41 = v37 + v38;
    v42 = v59;
    sub_1C702659C();
    v43 = v60;
    sub_1C702659C();
    v64 = 0x6557664F74726150;
    v65 = 0xEB000000003A6B65;
    MEMORY[0x1CCA5CD70](*v42, v42[1]);
    v44 = v64;
    v45 = v65;
    v64 = 0x6557664F74726150;
    v65 = 0xEB000000003A6B65;
    MEMORY[0x1CCA5CD70](*v43, v43[1]);
    if (v44 == v64 && v45 == v65)
    {
      v47 = 0;
    }

    else
    {
      v47 = sub_1C7551DBC();
    }

    v38 = v56;
    a3 = v40 + v56;
    sub_1C70265F0();
    sub_1C70265F0();
    a4 = v57;
    a1 = v63;
    if (v47)
    {
      if (v40 < v62 || a3 >= v62)
      {
        v50 = v58;
        swift_arrayInitWithTakeFrontToBack();
        v36 = v50;
        v39 = v55;
      }

      else
      {
        v51 = v55;
        v39 = v55;
        v52 = v58;
        v36 = v58;
        if (v40 != v62)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = v52;
          v39 = v51;
        }
      }

      goto LABEL_42;
    }

    if (v40 < v37 || a3 >= v37)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v39 = v41;
    v20 = v37 == v40;
    v40 += v38;
    v37 = v41;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v40 = a3;
      v37 = v41;
      v39 = v41;
    }
  }

  v68 = v62;
  v66 = v54;
LABEL_71:
  sub_1C7420848(&v68, &v67, &v66);
}

uint64_t sub_1C70235E8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 >= v9)
  {
    sub_1C7423D0C(a2, (a3 - a2) / 56, a4);
    v33 = &v4[56 * v9];
    v38 = v7;
    v40 = v4;
    v20 = 0;
    v41 = v6;
    v35 = v5;
    while (1)
    {
      v10 = &v33[v20];
      if (&v33[v20] <= v4 || v6 <= v7)
      {
        break;
      }

      v22 = *(v10 - 7);
      v24 = *(v10 - 6);
      v23 = v10 - 56;
      v26 = *(v6 - 7);
      v25 = *(v6 - 6);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v22, v24);
      MEMORY[0x1CCA5CD70](v26, v25);

      v6 = v41;
      v7 = v38;
      v4 = v40;
      if (&v33[v20] != (v35 + v20))
      {
        v27 = *v23;
        v28 = *(v23 + 1);
        v29 = *(v23 + 2);
        *(v35 + v20 - 8) = *(v23 + 6);
        *(v35 + v20 - 40) = v28;
        *(v35 + v20 - 24) = v29;
        *(v35 + v20 - 56) = v27;
      }

      v20 -= 56;
    }
  }

  else
  {
    sub_1C7423D0C(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    v34 = v5;
    v36 = v10;
    while (v4 < v10 && v6 < v5)
    {
      v37 = v7;
      v13 = *v6;
      v12 = *(v6 + 1);
      v14 = *v4;
      v15 = *(v4 + 1);
      v39 = v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v13, v12);
      MEMORY[0x1CCA5CD70](v14, v15);

      v16 = v4;
      v4 += 56;
      v5 = v34;
      v10 = v36;
      if (v37 != v39)
      {
        v17 = *v16;
        v18 = *(v16 + 1);
        v19 = *(v16 + 2);
        *(v37 + 6) = *(v16 + 6);
        *(v37 + 1) = v18;
        *(v37 + 2) = v19;
        *v37 = v17;
      }

      v7 = v37 + 56;
    }

    v6 = v7;
  }

  v30 = 56 * ((v10 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v30])
  {
    memmove(v6, v4, v30);
  }

  return 1;
}

uint64_t sub_1C7023A70(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 56;
  v9 = (a3 - a2) / 56;
  if (v8 < v9)
  {
    sub_1C7423D0C(a1, (a2 - a1) / 56, a4);
    v10 = &v4[56 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 56;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 56;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 56;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    *(v7 + 6) = *(v13 + 6);
    *(v7 + 1) = v15;
    *(v7 + 2) = v16;
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1C7423D0C(a2, (a3 - a2) / 56, a4);
  v10 = &v4[56 * v9];
LABEL_19:
  v17 = v6 - 56;
  for (v5 -= 56; v10 > v4 && v6 > v7; v5 -= 56)
  {
    v19 = *(v10 - 7) == *(v6 - 7) && *(v10 - 6) == *(v6 - 6);
    if (!v19 && (sub_1C7551DBC() & 1) != 0)
    {
      v12 = v5 + 56 == v6;
      v6 -= 56;
      if (!v12)
      {
        v23 = *v17;
        v24 = *(v17 + 1);
        v25 = *(v17 + 2);
        *(v5 + 48) = *(v17 + 6);
        *(v5 + 16) = v24;
        *(v5 + 32) = v25;
        *v5 = v23;
        v6 = v17;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 56))
    {
      v20 = *(v10 - 56);
      v21 = *(v10 - 40);
      v22 = *(v10 - 24);
      *(v5 + 48) = *(v10 - 1);
      *(v5 + 16) = v21;
      *(v5 + 32) = v22;
      *v5 = v20;
    }

    v10 -= 56;
  }

LABEL_36:
  v26 = 56 * ((v10 - v4) / 56);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

void sub_1C7023C54(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = type metadata accessor for TimeExtendedToken(0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v54 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v54 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v69 = a1;
  v68 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E514(a1, v19 / v18, a4);
    v61 = (a4 + v23 * v18);
    v67 = v61;
    v59 = a3;
    while (1)
    {
      if (a4 >= v61 || a2 >= a3)
      {
        goto LABEL_71;
      }

      v64 = a1;
      v26 = a2;
      sub_1C702659C();
      v63 = a4;
      sub_1C702659C();
      v65 = 0x3A656D6954;
      v66 = 0xE500000000000000;
      MEMORY[0x1CCA5CD70](*v16, v16[1]);
      v28 = v65;
      v27 = v66;
      v65 = 0x3A656D6954;
      v66 = 0xE500000000000000;
      MEMORY[0x1CCA5CD70](*v13, v13[1]);
      if (v28 == v65 && v27 == v66)
      {

        sub_1C70265F0();
        sub_1C70265F0();
      }

      else
      {
        v30 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v30)
        {
          v31 = v26;
          a2 = v26 + v18;
          v32 = v64;
          v33 = v64 < v31 || v64 >= a2;
          a3 = v59;
          if (v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v63;
          goto LABEL_40;
        }
      }

      v34 = v64;
      v35 = v63 + v18;
      v36 = v64 < v63 || v64 >= v35;
      a2 = v26;
      a3 = v59;
      if (v36)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v34;
      }

      else
      {
        v32 = v64;
        if (v64 != v63)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v68 = v35;
      a4 = v35;
LABEL_40:
      a1 = v32 + v18;
      v69 = a1;
    }
  }

  v64 = a1;
  sub_1C741E514(a2, v21 / v18, a4);
  v37 = a2;
  v38 = a4 + v24 * v18;
  v39 = -v18;
  v40 = v38;
  v63 = a4;
  v57 = v39;
LABEL_42:
  v41 = a3;
  v55 = v40;
  v42 = v40;
  v58 = v37 + v39;
  v59 = v37;
  while (1)
  {
    if (v38 <= a4)
    {
      v69 = v59;
      v67 = v42;
      goto LABEL_71;
    }

    if (v59 <= v64)
    {
      break;
    }

    v56 = v42;
    v43 = v38 + v39;
    v44 = v60;
    sub_1C702659C();
    v45 = v61;
    sub_1C702659C();
    v65 = 0x3A656D6954;
    v66 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](*v44, v44[1]);
    v46 = v65;
    v47 = v66;
    v65 = 0x3A656D6954;
    v66 = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](*v45, v45[1]);
    if (v46 == v65 && v47 == v66)
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_1C7551DBC();
    }

    v39 = v57;
    a3 = v41 + v57;
    sub_1C70265F0();
    sub_1C70265F0();
    a4 = v63;
    v50 = v58;
    if (v49)
    {
      if (v41 < v59 || a3 >= v59)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = v50;
        v40 = v56;
      }

      else
      {
        v53 = v56;
        v40 = v56;
        v37 = v58;
        if (v41 != v59)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = v50;
          v40 = v53;
        }
      }

      goto LABEL_42;
    }

    if (v41 < v38 || a3 >= v38)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v42 = v43;
    v20 = v38 == v41;
    v41 += v39;
    v38 = v43;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v41 = a3;
      v38 = v43;
      v42 = v43;
    }
  }

  v69 = v59;
  v67 = v55;
LABEL_71:
  sub_1C7420860(&v69, &v68, &v67);
}

void sub_1C7024200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v20;
  a20 = v21;
  v75 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v82 = v33(0);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v74[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v80 = &v74[-v36];
  MEMORY[0x1EEE9AC00](v37);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v41 = *(v40 + 72);
  if (!v41)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v42 = v30 - v32 == 0x8000000000000000 && v41 == -1;
  if (v42)
  {
    goto LABEL_72;
  }

  v43 = v28 - v30;
  if (v28 - v30 == 0x8000000000000000 && v41 == -1)
  {
    goto LABEL_73;
  }

  v45 = v24;
  v46 = (v30 - v32) / v41;
  a10 = v32;
  v84 = v26;
  if (v46 < v43 / v41)
  {
    v45(v32, (v30 - v32) / v41, v26, v39);
    v47 = v30;
    v81 = (v26 + v46 * v41);
    v83 = v81;
    while (1)
    {
      if (v26 >= v81 || v47 >= v28)
      {
        goto LABEL_70;
      }

      v49 = v47;
      sub_1C702659C();
      OUTLINED_FUNCTION_362();
      sub_1C702659C();
      OUTLINED_FUNCTION_441();
      if (v42 && v50 == v51)
      {
        sub_1C70265F0();
        OUTLINED_FUNCTION_35_0();
        sub_1C70265F0();
      }

      else
      {
        v53 = sub_1C7551DBC();
        sub_1C70265F0();
        OUTLINED_FUNCTION_35_0();
        sub_1C70265F0();
        if (v53)
        {
          if (v32 < v49 || v32 >= v49 + v41)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v32 != v49)
          {
            OUTLINED_FUNCTION_225();
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v49 + v41;
          goto LABEL_40;
        }
      }

      if (v32 < v26 || v32 >= v26 + v41)
      {
        OUTLINED_FUNCTION_455();
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v32 != v26)
      {
        OUTLINED_FUNCTION_455();
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
      }

      v84 = v26 + v41;
      v26 += v41;
      v47 = v49;
LABEL_40:
      v32 += v41;
      a10 = v32;
    }
  }

  v56 = v43 / v41;
  v45(v30, v43 / v41, v26, v39);
  v57 = v30;
  v58 = v26 + v56 * v41;
  v59 = -v41;
  v60 = v58;
LABEL_42:
  v78 = v57 + v59;
  v79 = v57;
  v61 = v28;
  v62 = v60;
  v77 = v60;
  while (1)
  {
    if (v58 <= v26)
    {
      a10 = v57;
      v83 = v62;
      goto LABEL_70;
    }

    if (v57 <= v32)
    {
      break;
    }

    v76 = v62;
    v63 = v59;
    v64 = (v58 + v59);
    sub_1C702659C();
    OUTLINED_FUNCTION_362();
    sub_1C702659C();
    OUTLINED_FUNCTION_441();
    if (v42 && v65 == v66)
    {
      v68 = 0;
    }

    else
    {
      v68 = sub_1C7551DBC();
    }

    v28 = v61 + v63;
    sub_1C70265F0();
    sub_1C70265F0();
    if (v68)
    {
      if (v61 < v79 || v28 >= v79)
      {
        v71 = v78;
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeFrontToBack();
        v57 = v71;
        v59 = v63;
        v60 = v76;
      }

      else
      {
        v72 = v78;
        v57 = v78;
        v59 = v63;
        v60 = v76;
        if (v61 != v79)
        {
          OUTLINED_FUNCTION_180();
          OUTLINED_FUNCTION_225();
          v60 = v73;
          swift_arrayInitWithTakeBackToFront();
          v57 = v72;
        }
      }

      goto LABEL_42;
    }

    if (v61 < v58 || v28 >= v58)
    {
      OUTLINED_FUNCTION_180();
      OUTLINED_FUNCTION_225();
      swift_arrayInitWithTakeFrontToBack();
      v61 += v63;
      v58 = v64;
      v62 = v64;
      v57 = v79;
      v59 = v63;
      v60 = v77;
    }

    else
    {
      v62 = v64;
      v42 = v58 == v61;
      v61 += v63;
      v58 = v64;
      v57 = v79;
      v59 = v63;
      v60 = v77;
      if (!v42)
      {
        OUTLINED_FUNCTION_180();
        OUTLINED_FUNCTION_225();
        swift_arrayInitWithTakeBackToFront();
        v57 = v79;
        v61 = v28;
        v58 = v64;
        v62 = v64;
      }
    }
  }

  a10 = v57;
  v83 = v60;
LABEL_70:
  v75(&a10, &v84, &v83);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C702466C(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = (a2 - a1) / 40;
  v8 = (a3 - a2) / 40;
  if (v7 >= v8)
  {
    sub_1C6F9A570(a2, (a3 - a2) / 40, a4);
    v20 = a2;
    v32 = &v4[40 * v8];
    v38 = v6;
    v40 = v4;
    for (i = 0; ; i -= 40)
    {
      v11 = &v32[i];
      if (&v32[i] <= v4 || v20 <= v6)
      {
        break;
      }

      v23 = *(v11 - 5);
      v24 = *(v11 - 4);
      v25 = v11 - 40;
      v26 = *(v20 - 4);
      v33 = *(v20 - 5);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v23, v24);
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v33, v26);

      v6 = v38;
      v4 = v40;
      v20 = a2;
      if (&v32[i] != (v5 + i))
      {
        v27 = *v25;
        v28 = *(v25 + 1);
        *(v5 + i - 8) = *(v25 + 4);
        *(v5 + i - 40) = v27;
        *(v5 + i - 24) = v28;
      }
    }
  }

  else
  {
    sub_1C6F9A570(a1, (a2 - a1) / 40, a4);
    v10 = a2;
    v11 = &v4[40 * v7];
    v35 = v5;
    v36 = v11;
    while (v4 < v11 && v10 < v5)
    {
      v37 = v6;
      v13 = *v10;
      v14 = *(v10 + 1);
      v41 = v10;
      v15 = *(v4 + 1);
      v34 = *v4;
      v39 = v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v13, v14);
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v34, v15);

      v16 = v4;
      v4 += 40;
      v10 = v41;
      v5 = v35;
      v11 = v36;
      if (v37 != v39)
      {
        v17 = *v16;
        v18 = *(v16 + 1);
        *(v37 + 4) = *(v16 + 4);
        *v37 = v17;
        *(v37 + 1) = v18;
      }

      v6 = v37 + 40;
    }

    v20 = v6;
  }

  v29 = (v11 - v4) / 40;
  if (v20 != v4 || v20 >= &v4[40 * v29])
  {
    memmove(v20, v4, 40 * v29);
  }

  return 1;
}

uint64_t sub_1C7024AC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 56;
  v10 = (a3 - a2) / 56;
  if (v9 < v10)
  {
    OUTLINED_FUNCTION_362();
    sub_1C741E52C(v11, v12, v13);
    v14 = a4 + 56 * v9;
    v62 = v6;
    while (1)
    {
      if (a4 >= v14 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_47;
      }

      v77 = v8;
      v16 = *v7;
      v17 = *(v7 + 16);
      v18 = *(v7 + 32);
      v63 = v7;
      v72 = *(v7 + 48);
      v70 = v17;
      v71 = v18;
      v69 = v16;
      v19 = *a4;
      v20 = *(a4 + 16);
      v21 = *(a4 + 32);
      v76 = *(a4 + 48);
      v74 = v20;
      v75 = v21;
      v73 = v19;
      OUTLINED_FUNCTION_258();
      v67 = v4;
      v68 = 0xE90000000000003ALL;
      sub_1C70260B4(&v69, &v65);
      sub_1C70260B4(&v73, &v65);
      v22 = OUTLINED_FUNCTION_323();
      MEMORY[0x1CCA5CD70](v22);
      v24 = v67;
      v23 = v68;
      v65 = v4;
      v66 = 0xE90000000000003ALL;
      v25 = OUTLINED_FUNCTION_431();
      MEMORY[0x1CCA5CD70](v25);
      v26 = v24 == v65 && v23 == v66;
      if (v26)
      {
        break;
      }

      v27 = OUTLINED_FUNCTION_342();

      sub_1C70260EC(&v73);
      sub_1C70260EC(&v69);
      v28 = v77;
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      v6 = v62;
      v29 = v7;
      v7 += 56;
      if (v77 != v63)
      {
        goto LABEL_16;
      }

LABEL_17:
      v8 = v28 + 56;
    }

    sub_1C70260EC(&v73);
    sub_1C70260EC(&v69);
    v28 = v77;
LABEL_15:
    v29 = a4;
    v26 = v28 == a4;
    a4 += 56;
    v6 = v62;
    if (v26)
    {
      goto LABEL_17;
    }

LABEL_16:
    v30 = OUTLINED_FUNCTION_260_0(v29);
    *(v28 + 48) = v31;
    *(v28 + 16) = v32;
    *(v28 + 32) = v33;
    *v28 = v30;
    goto LABEL_17;
  }

  v77 = a1;
  v34 = OUTLINED_FUNCTION_156();
  sub_1C741E52C(v34, v35, a4);
  v14 = a4 + 56 * v10;
  v60 = a4;
LABEL_19:
  v61 = v7 - 56;
  v6 -= 56;
  v64 = v7;
  while (v14 > a4 && v7 > v77)
  {
    v37 = *(v14 - 56);
    v38 = *(v14 - 24);
    v39 = *(v14 - 40);
    v72 = *(v14 - 8);
    v70 = v39;
    v71 = v38;
    v69 = v37;
    v40 = *(v61 + 16);
    v73 = *v61;
    v74 = v40;
    v75 = *(v61 + 32);
    v76 = *(v61 + 48);
    v41 = v39;
    v42 = v40;
    OUTLINED_FUNCTION_258();
    v67 = v4;
    v68 = 0xE90000000000003ALL;
    sub_1C70260B4(&v69, &v65);
    sub_1C70260B4(&v73, &v65);
    MEMORY[0x1CCA5CD70](v41, *(&v41 + 1));
    v44 = v67;
    v43 = v68;
    v65 = v4;
    v66 = 0xE90000000000003ALL;
    MEMORY[0x1CCA5CD70](v42, *(&v42 + 1));
    if (v44 == v65 && v43 == v66)
    {
      v46 = 0;
    }

    else
    {
      v46 = OUTLINED_FUNCTION_342();
    }

    sub_1C70260EC(&v73);
    sub_1C70260EC(&v69);
    v7 = v64;
    a4 = v60;
    if (v46)
    {
      v51 = v6 + 56 < v64 || v6 >= v64;
      if (!v51 && v6 + 56 == v64)
      {
        v7 = v61;
      }

      else
      {
        v7 = v61;
        v52 = *v61;
        v53 = *(v61 + 16);
        v54 = *(v61 + 32);
        *(v6 + 48) = *(v61 + 48);
        *(v6 + 16) = v53;
        *(v6 + 32) = v54;
        *v6 = v52;
      }

      goto LABEL_19;
    }

    v47 = v6 + 56 < v14 || v6 >= v14;
    if (v47 || v14 != v6 + 56)
    {
      v48 = *(v14 - 56);
      v49 = *(v14 - 40);
      v50 = *(v14 - 24);
      *(v6 + 48) = *(v14 - 8);
      *(v6 + 16) = v49;
      *(v6 + 32) = v50;
      *v6 = v48;
    }

    v6 -= 56;
    v14 -= 56;
  }

LABEL_47:
  if (v7 != a4 || v7 >= a4 + 56 * ((v14 - a4) / 56))
  {
    v56 = OUTLINED_FUNCTION_505();
    memmove(v56, v57, v58);
  }

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1C7024E74()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_489();
  if (v6 != v7)
  {
    v8 = OUTLINED_FUNCTION_455();
    sub_1C741E52C(v8, v9, v0);
    v19 = &v0[56 * v4];
    while (1)
    {
      if (v0 >= v19 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_441();
      v13 = v13 && v11 == v12;
      if (v13 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v14 = v1;
      v13 = v2 == v1;
      v1 += 56;
      if (!v13)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 56;
    }

    v14 = v0;
    v13 = v2 == v0;
    v0 += 56;
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = OUTLINED_FUNCTION_260_0(v14);
    *(v2 + 6) = v16;
    *(v2 + 1) = v17;
    *(v2 + 2) = v18;
    *v2 = v15;
    goto LABEL_18;
  }

  sub_1C741E52C(v1, v5, v0);
  v19 = &v0[56 * v5];
LABEL_19:
  v20 = v1 - 56;
  for (v3 -= 56; v19 > v0 && v1 > v2; v3 -= 56)
  {
    v22 = *(v19 - 7) == *(v1 - 7) && *(v19 - 6) == *(v1 - 6);
    if (!v22 && (sub_1C7551DBC() & 1) != 0)
    {
      v13 = v3 + 56 == v1;
      v1 -= 56;
      if (!v13)
      {
        v26 = *v20;
        v27 = *(v20 + 1);
        v28 = *(v20 + 2);
        *(v3 + 48) = *(v20 + 6);
        *(v3 + 16) = v27;
        *(v3 + 32) = v28;
        *v3 = v26;
        v1 = v20;
      }

      goto LABEL_19;
    }

    if (v19 != (v3 + 56))
    {
      v23 = *(v19 - 56);
      v24 = *(v19 - 40);
      v25 = *(v19 - 24);
      *(v3 + 48) = *(v19 - 1);
      *(v3 + 16) = v24;
      *(v3 + 32) = v25;
      *v3 = v23;
    }

    v19 -= 56;
  }

LABEL_36:
  if (v1 != v0 || v1 >= &v0[56 * ((v19 - v0) / 56)])
  {
    v30 = OUTLINED_FUNCTION_294();
    memmove(v30, v31, v32);
  }

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1C702501C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 72;
  v9 = (a3 - a2) / 72;
  if (v8 < v9)
  {
    sub_1C7423D04(a1, (a2 - a1) / 72, a4);
    v10 = &v4[72 * v8];
    v45 = v5;
    v41 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v53 = v7;
      memcpy(__dst, v6, 0x42uLL);
      __src = v4;
      memcpy(v52, v4, 0x42uLL);
      v12 = __dst[4];
      v13 = __dst[5];
      v15 = v52[4];
      v14 = v52[5];
      v49 = 980706640;
      v50 = 0xE400000000000000;
      sub_1C7025FF8(__dst, &v47);
      sub_1C7025FF8(v52, &v47);
      MEMORY[0x1CCA5CD70](v12, v13);
      v17 = v49;
      v16 = v50;
      v47 = 980706640;
      v48 = 0xE400000000000000;
      MEMORY[0x1CCA5CD70](v15, v14);
      if (v17 == v47 && v16 == v48)
      {

        sub_1C7026030(v52);
        sub_1C7026030(__dst);
      }

      else
      {
        v19 = sub_1C7551DBC();

        sub_1C7026030(v52);
        sub_1C7026030(__dst);
        if (v19)
        {
          v20 = v6;
          v21 = v53;
          v22 = v53 == v6;
          v6 += 72;
          v4 = __src;
          goto LABEL_15;
        }
      }

      v20 = __src;
      v4 = __src + 72;
      v21 = v53;
      v22 = v53 == __src;
LABEL_15:
      v10 = v41;
      if (!v22)
      {
        memmove(v21, v20, 0x48uLL);
      }

      v7 = v21 + 72;
      v5 = v45;
    }
  }

  sub_1C7423D04(a2, (a3 - a2) / 72, a4);
  v10 = &v4[72 * v9];
  v53 = v7;
  __srca = v4;
LABEL_19:
  v39 = v6;
  v40 = v6 - 72;
  for (i = v5 - 72; v10 > v4 && v6 > v7; i = v46 - 72)
  {
    v46 = i;
    v42 = v10;
    v10 -= 72;
    memcpy(__dst, v10, 0x42uLL);
    memcpy(v52, v40, 0x42uLL);
    v25 = __dst[4];
    v26 = __dst[5];
    v28 = v52[4];
    v27 = v52[5];
    v49 = 980706640;
    v50 = 0xE400000000000000;
    sub_1C7025FF8(__dst, &v47);
    sub_1C7025FF8(v52, &v47);
    MEMORY[0x1CCA5CD70](v25, v26);
    v29 = v49;
    v30 = v50;
    v47 = 980706640;
    v48 = 0xE400000000000000;
    MEMORY[0x1CCA5CD70](v28, v27);
    if (v29 == v47 && v30 == v48)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1C7551DBC();
    }

    v5 = v46;

    sub_1C7026030(v52);
    sub_1C7026030(__dst);
    v4 = __srca;
    v7 = v53;
    v33 = v46 + 72;
    if (v32)
    {
      v35 = v33 < v39 || v46 >= v39;
      if (!v35 && v33 == v39)
      {
        v6 = v40;
      }

      else
      {
        v6 = v40;
        memmove(v46, v40, 0x48uLL);
      }

      v10 = v42;
      goto LABEL_19;
    }

    v34 = v33 < v42 || v46 >= v42;
    v6 = v39;
    if (v34 || v42 != v33)
    {
      memmove(v46, v10, 0x48uLL);
    }
  }

LABEL_48:
  v36 = 72 * ((v10 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v36])
  {
    memmove(v6, v4, v36);
  }

  return 1;
}

uint64_t sub_1C70253C8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 72;
  v9 = (a3 - a2) / 72;
  if (v8 < v9)
  {
    sub_1C7423D04(a1, (a2 - a1) / 72, a4);
    v10 = &v4[72 * v8];
    v45 = v5;
    v41 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_48;
      }

      v53 = v7;
      memcpy(__dst, v6, 0x41uLL);
      __src = v4;
      memcpy(v52, v4, 0x41uLL);
      v12 = __dst[4];
      v13 = __dst[5];
      v15 = v52[4];
      v14 = v52[5];
      v49 = 0x3A6E6F73726550;
      v50 = 0xE700000000000000;
      sub_1C7025F3C(__dst, &v47);
      sub_1C7025F3C(v52, &v47);
      MEMORY[0x1CCA5CD70](v12, v13);
      v17 = v49;
      v16 = v50;
      v47 = 0x3A6E6F73726550;
      v48 = 0xE700000000000000;
      MEMORY[0x1CCA5CD70](v15, v14);
      if (v17 == v47 && v16 == v48)
      {

        sub_1C7025F74(v52);
        sub_1C7025F74(__dst);
      }

      else
      {
        v19 = sub_1C7551DBC();

        sub_1C7025F74(v52);
        sub_1C7025F74(__dst);
        if (v19)
        {
          v20 = v6;
          v21 = v53;
          v22 = v53 == v6;
          v6 += 72;
          v4 = __src;
          goto LABEL_15;
        }
      }

      v20 = __src;
      v4 = __src + 72;
      v21 = v53;
      v22 = v53 == __src;
LABEL_15:
      v10 = v41;
      if (!v22)
      {
        memmove(v21, v20, 0x48uLL);
      }

      v7 = v21 + 72;
      v5 = v45;
    }
  }

  sub_1C7423D04(a2, (a3 - a2) / 72, a4);
  v10 = &v4[72 * v9];
  v53 = v7;
  __srca = v4;
LABEL_19:
  v39 = v6;
  v40 = v6 - 72;
  for (i = v5 - 72; v10 > v4 && v6 > v7; i = v46 - 72)
  {
    v46 = i;
    v42 = v10;
    v10 -= 72;
    memcpy(__dst, v10, 0x41uLL);
    memcpy(v52, v40, 0x41uLL);
    v25 = __dst[4];
    v26 = __dst[5];
    v28 = v52[4];
    v27 = v52[5];
    v49 = 0x3A6E6F73726550;
    v50 = 0xE700000000000000;
    sub_1C7025F3C(__dst, &v47);
    sub_1C7025F3C(v52, &v47);
    MEMORY[0x1CCA5CD70](v25, v26);
    v29 = v49;
    v30 = v50;
    v47 = 0x3A6E6F73726550;
    v48 = 0xE700000000000000;
    MEMORY[0x1CCA5CD70](v28, v27);
    if (v29 == v47 && v30 == v48)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1C7551DBC();
    }

    v5 = v46;

    sub_1C7025F74(v52);
    sub_1C7025F74(__dst);
    v4 = __srca;
    v7 = v53;
    v33 = v46 + 72;
    if (v32)
    {
      v35 = v33 < v39 || v46 >= v39;
      if (!v35 && v33 == v39)
      {
        v6 = v40;
      }

      else
      {
        v6 = v40;
        memmove(v46, v40, 0x48uLL);
      }

      v10 = v42;
      goto LABEL_19;
    }

    v34 = v33 < v42 || v46 >= v42;
    v6 = v39;
    if (v34 || v42 != v33)
    {
      memmove(v46, v10, 0x48uLL);
    }
  }

LABEL_48:
  v36 = 72 * ((v10 - v4) / 72);
  if (v6 != v4 || v6 >= &v4[v36])
  {
    memmove(v6, v4, v36);
  }

  return 1;
}

uint64_t sub_1C7025784()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_489();
  if (v7 != v8)
  {
    v9 = OUTLINED_FUNCTION_455();
    v10(v9);
    v16 = &v0[72 * v4];
    while (1)
    {
      if (v0 >= v16 || v1 >= v3)
      {
        v1 = v2;
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_441();
      v14 = v14 && v12 == v13;
      if (v14 || (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      v15 = v1;
      v14 = v2 == v1;
      v1 += 72;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v2 += 72;
    }

    v15 = v0;
    v14 = v2 == v0;
    v0 += 72;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v2, v15, 0x48uLL);
    goto LABEL_18;
  }

  v6(v1, v5, v0);
  v16 = &v0[72 * v5];
LABEL_19:
  v17 = v1 - 72;
  for (v3 -= 72; v16 > v0 && v1 > v2; v3 -= 72)
  {
    v19 = *(v16 - 9) == *(v1 - 72) && *(v16 - 8) == *(v1 - 64);
    if (!v19 && (sub_1C7551DBC() & 1) != 0)
    {
      v14 = v3 + 72 == v1;
      v1 -= 72;
      if (!v14)
      {
        v22 = OUTLINED_FUNCTION_55();
        memmove(v22, v23, 0x48uLL);
        v1 = v17;
      }

      goto LABEL_19;
    }

    if (v16 != (v3 + 72))
    {
      v20 = OUTLINED_FUNCTION_291();
      memmove(v20, v21, 0x48uLL);
    }

    v16 -= 72;
  }

LABEL_36:
  if (v1 != v0 || v1 >= &v0[72 * ((v16 - v0) / 72)])
  {
    v25 = OUTLINED_FUNCTION_294();
    memmove(v25, v26, v27);
  }

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1C702591C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C6F699F8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1C70259B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C70259FC()
{
  result = qword_1EDD0E9C0;
  if (!qword_1EDD0E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9C0);
  }

  return result;
}

unint64_t sub_1C7025A50()
{
  result = qword_1EDD0E9F0;
  if (!qword_1EDD0E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9F0);
  }

  return result;
}

unint64_t sub_1C7025AA4()
{
  result = qword_1EDD0E9D8;
  if (!qword_1EDD0E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9D8);
  }

  return result;
}

unint64_t sub_1C7025AF8()
{
  result = qword_1EDD0E9A8;
  if (!qword_1EDD0E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9A8);
  }

  return result;
}

unint64_t sub_1C7025B4C()
{
  result = qword_1EC215CD8;
  if (!qword_1EC215CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215CD8);
  }

  return result;
}

unint64_t sub_1C7025BA0()
{
  result = qword_1EDD0DAC8;
  if (!qword_1EDD0DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAC8);
  }

  return result;
}

unint64_t sub_1C7025BF4()
{
  result = qword_1EDD0D828;
  if (!qword_1EDD0D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D828);
  }

  return result;
}

unint64_t sub_1C7025C48()
{
  result = qword_1EDD0D818;
  if (!qword_1EDD0D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D818);
  }

  return result;
}

unint64_t sub_1C7025C9C()
{
  result = qword_1EDD0D0A0;
  if (!qword_1EDD0D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D0A0);
  }

  return result;
}

unint64_t sub_1C7025CF0()
{
  result = qword_1EDD0E8E8;
  if (!qword_1EDD0E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8E8);
  }

  return result;
}

unint64_t sub_1C7025D44()
{
  result = qword_1EDD0E8F8;
  if (!qword_1EDD0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8F8);
  }

  return result;
}

unint64_t sub_1C7025D98()
{
  result = qword_1EDD0DAB0;
  if (!qword_1EDD0DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAB0);
  }

  return result;
}

unint64_t sub_1C7025DEC()
{
  result = qword_1EDD0E990;
  if (!qword_1EDD0E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E990);
  }

  return result;
}

unint64_t sub_1C7025E40()
{
  result = qword_1EDD0E8F0;
  if (!qword_1EDD0E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8F0);
  }

  return result;
}

unint64_t sub_1C7025E94()
{
  result = qword_1EDD0DAA8;
  if (!qword_1EDD0DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAA8);
  }

  return result;
}

unint64_t sub_1C7025EE8()
{
  result = qword_1EDD0E988;
  if (!qword_1EDD0E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E988);
  }

  return result;
}

unint64_t sub_1C7025FA4()
{
  result = qword_1EC215D08;
  if (!qword_1EC215D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215D08);
  }

  return result;
}

unint64_t sub_1C7026060()
{
  result = qword_1EDD0E4D8;
  if (!qword_1EDD0E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4D8);
  }

  return result;
}

unint64_t sub_1C702611C()
{
  result = qword_1EC215D40;
  if (!qword_1EC215D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215D40);
  }

  return result;
}

uint64_t sub_1C7026190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7026200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C7026270()
{
  result = qword_1EDD0EAD8[0];
  if (!qword_1EDD0EAD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0EAD8);
  }

  return result;
}

unint64_t sub_1C70262C4()
{
  result = qword_1EDD0D100;
  if (!qword_1EDD0D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D100);
  }

  return result;
}

unint64_t sub_1C7026318()
{
  result = qword_1EDD0D0F0;
  if (!qword_1EDD0D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D0F0);
  }

  return result;
}

unint64_t sub_1C702636C()
{
  result = qword_1EC215D88;
  if (!qword_1EC215D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215D88);
  }

  return result;
}

unint64_t sub_1C70263C0()
{
  result = qword_1EC215D98;
  if (!qword_1EC215D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215D90);
    sub_1C70259B4(&qword_1EC215DA0, MEMORY[0x1E69C19F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215D98);
  }

  return result;
}

unint64_t sub_1C7026474()
{
  result = qword_1EC215DB0;
  if (!qword_1EC215DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215D90);
    sub_1C70259B4(&qword_1EC215DB8, MEMORY[0x1E69C19F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215DB0);
  }

  return result;
}

unint64_t sub_1C7026548()
{
  result = qword_1EC215DC8;
  if (!qword_1EC215DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215DC8);
  }

  return result;
}

uint64_t sub_1C702659C()
{
  v1 = OUTLINED_FUNCTION_47_0();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  return v0;
}

uint64_t sub_1C70265F0()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C7026644()
{
  result = qword_1EC215DF0;
  if (!qword_1EC215DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215DF0);
  }

  return result;
}

unint64_t sub_1C7026700()
{
  result = qword_1EC215E08;
  if (!qword_1EC215E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E08);
  }

  return result;
}

unint64_t sub_1C7026754()
{
  result = qword_1EC215E10;
  if (!qword_1EC215E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E10);
  }

  return result;
}

unint64_t sub_1C70267A8()
{
  result = qword_1EC215E20;
  if (!qword_1EC215E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E20);
  }

  return result;
}

uint64_t sub_1C70267FC()
{
  v1 = OUTLINED_FUNCTION_47_0();
  v2(v1);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  return v0;
}

unint64_t sub_1C7026850()
{
  result = qword_1EDD0A530;
  if (!qword_1EDD0A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A530);
  }

  return result;
}

unint64_t sub_1C70268A4()
{
  result = qword_1EC218E20;
  if (!qword_1EC218E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E20);
  }

  return result;
}

unint64_t sub_1C70268F8()
{
  result = qword_1EDD09F28;
  if (!qword_1EDD09F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F28);
  }

  return result;
}

unint64_t sub_1C702694C()
{
  result = qword_1EC218E10;
  if (!qword_1EC218E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E10);
  }

  return result;
}

unint64_t sub_1C70269A0()
{
  result = qword_1EC218E00;
  if (!qword_1EC218E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218E00);
  }

  return result;
}

unint64_t sub_1C70269F4()
{
  result = qword_1EC218DF0;
  if (!qword_1EC218DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC218DF0);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1C7026A9C()
{
  result = qword_1EC215E30;
  if (!qword_1EC215E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E30);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{

  OUTLINED_FUNCTION_328();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

unint64_t sub_1C7026B2C()
{
  result = qword_1EDD0DF40;
  if (!qword_1EDD0DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DF40);
  }

  return result;
}

unint64_t sub_1C7026B80()
{
  result = qword_1EDD0D008;
  if (!qword_1EDD0D008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E40);
    sub_1C7026C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D008);
  }

  return result;
}

unint64_t sub_1C7026C04()
{
  result = qword_1EDD0E8D0;
  if (!qword_1EDD0E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8D0);
  }

  return result;
}

unint64_t sub_1C7026C58()
{
  result = qword_1EDD0D048;
  if (!qword_1EDD0D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E48);
    sub_1C7026CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D048);
  }

  return result;
}

unint64_t sub_1C7026CDC()
{
  result = qword_1EDD0F1F0;
  if (!qword_1EDD0F1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1F0);
  }

  return result;
}

unint64_t sub_1C7026D30()
{
  result = qword_1EDD0CFF8;
  if (!qword_1EDD0CFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215698);
    sub_1C7026DB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFF8);
  }

  return result;
}

unint64_t sub_1C7026DB4()
{
  result = qword_1EDD0E4C0;
  if (!qword_1EDD0E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4C0);
  }

  return result;
}

unint64_t sub_1C7026E08()
{
  result = qword_1EDD0CFB8;
  if (!qword_1EDD0CFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E50);
    sub_1C7026E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFB8);
  }

  return result;
}

unint64_t sub_1C7026E8C()
{
  result = qword_1EDD0D810;
  if (!qword_1EDD0D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D810);
  }

  return result;
}

unint64_t sub_1C7026EE0()
{
  result = qword_1EDD0D028;
  if (!qword_1EDD0D028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E58);
    sub_1C70259B4(&qword_1EDD0EAC0, type metadata accessor for TimeExtendedToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D028);
  }

  return result;
}

unint64_t sub_1C7026F94()
{
  result = qword_1EDD0CFE0;
  if (!qword_1EDD0CFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E60);
    sub_1C7027018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFE0);
  }

  return result;
}

unint64_t sub_1C7027018()
{
  result = qword_1EDD0E230;
  if (!qword_1EDD0E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E230);
  }

  return result;
}

unint64_t sub_1C702706C()
{
  result = qword_1EDD0CFD0;
  if (!qword_1EDD0CFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E68);
    sub_1C70259B4(qword_1EDD0DE88, type metadata accessor for PartOfWeekExtendedToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFD0);
  }

  return result;
}

unint64_t sub_1C7027120()
{
  result = qword_1EDD0D018;
  if (!qword_1EDD0D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E70);
    sub_1C70271A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D018);
  }

  return result;
}

unint64_t sub_1C70271A4()
{
  result = qword_1EDD0EA00[0];
  if (!qword_1EDD0EA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0EA00);
  }

  return result;
}

unint64_t sub_1C70271F8()
{
  result = qword_1EC215E80;
  if (!qword_1EC215E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E78);
    sub_1C702727C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E80);
  }

  return result;
}

unint64_t sub_1C702727C()
{
  result = qword_1EC215E88;
  if (!qword_1EC215E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E88);
  }

  return result;
}

unint64_t sub_1C70272D0()
{
  result = qword_1EDD0D000;
  if (!qword_1EDD0D000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E40);
    sub_1C7027354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D000);
  }

  return result;
}

unint64_t sub_1C7027354()
{
  result = qword_1EDD0E8C0;
  if (!qword_1EDD0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8C0);
  }

  return result;
}

unint64_t sub_1C70273A8()
{
  result = qword_1EDD0D040;
  if (!qword_1EDD0D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E48);
    sub_1C702742C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D040);
  }

  return result;
}

unint64_t sub_1C702742C()
{
  result = qword_1EDD0F1E8;
  if (!qword_1EDD0F1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F1E8);
  }

  return result;
}

unint64_t sub_1C7027480()
{
  result = qword_1EDD0CFF0;
  if (!qword_1EDD0CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215698);
    sub_1C7027504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFF0);
  }

  return result;
}

unint64_t sub_1C7027504()
{
  result = qword_1EDD0E4B8;
  if (!qword_1EDD0E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4B8);
  }

  return result;
}

unint64_t sub_1C7027558()
{
  result = qword_1EDD0CFB0;
  if (!qword_1EDD0CFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E50);
    sub_1C70275DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFB0);
  }

  return result;
}

unint64_t sub_1C70275DC()
{
  result = qword_1EDD0D808;
  if (!qword_1EDD0D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D808);
  }

  return result;
}

unint64_t sub_1C7027630()
{
  result = qword_1EDD0D020;
  if (!qword_1EDD0D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E58);
    sub_1C70259B4(&qword_1EDD0EAB8, type metadata accessor for TimeExtendedToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D020);
  }

  return result;
}

unint64_t sub_1C70276E4()
{
  result = qword_1EDD0CFD8;
  if (!qword_1EDD0CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E60);
    sub_1C7027768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFD8);
  }

  return result;
}

unint64_t sub_1C7027768()
{
  result = qword_1EDD0E228;
  if (!qword_1EDD0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E228);
  }

  return result;
}

unint64_t sub_1C70277BC()
{
  result = qword_1EDD0CFC8;
  if (!qword_1EDD0CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E68);
    sub_1C70259B4(&qword_1EDD0DE80, type metadata accessor for PartOfWeekExtendedToken);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CFC8);
  }

  return result;
}

unint64_t sub_1C7027870()
{
  result = qword_1EDD0D010;
  if (!qword_1EDD0D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E70);
    sub_1C70278F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D010);
  }

  return result;
}

unint64_t sub_1C70278F4()
{
  result = qword_1EDD0E9F8;
  if (!qword_1EDD0E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9F8);
  }

  return result;
}

unint64_t sub_1C7027948()
{
  result = qword_1EC215E98;
  if (!qword_1EC215E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215E78);
    sub_1C70279CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215E98);
  }

  return result;
}

unint64_t sub_1C70279CC()
{
  result = qword_1EC215EA0;
  if (!qword_1EC215EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EA0);
  }

  return result;
}

uint64_t sub_1C7027A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v5 = MEMORY[0x1E69E7CD0];
  v2 = a1 + 32;
  do
  {
    v2 += 8;
    v3 = sub_1C75504FC();
    sub_1C73978C4(v3);
    --v1;
  }

  while (v1);
  return v5;
}

void sub_1C7027AF4()
{
  OUTLINED_FUNCTION_33();
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 32);
    v4 = MEMORY[0x1E69E7CD0];
    do
    {
      v5 = *v3;
      if (v2)
      {
        v14[0] = *v3;
        v6 = *(v4 + 32) & 0x3F;
        OUTLINED_FUNCTION_86_3();
        MEMORY[0x1EEE9AC00](v7);
        v8 = v13;
        v13[2] = v14;
        v13[3] = v4;
        v10 = (v9 + 63) >> 6;
        isStackAllocationSafe = sub_1C75504FC();
        if (v6 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v8 = v13 - ((8 * v10 + 15) & 0x3FFFFFFFFFFFFFF0);
          sub_1C71FAC38(0, v10, v8);
          sub_1C71FB7FC(v8, v10, v5, v4);
          OUTLINED_FUNCTION_461();
        }

        else
        {
          v12 = swift_slowAlloc();
          sub_1C71FD078(v12, v10, sub_1C702B138);
          OUTLINED_FUNCTION_461();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v4 = v8;
      }

      else
      {
        sub_1C75504FC();

        v4 = sub_1C706D154(v5);
      }

      ++v3;
      --v1;
      v2 = 1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_25_0();
}

unint64_t sub_1C7027D20()
{
  result = qword_1EC215EB8;
  if (!qword_1EC215EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EB8);
  }

  return result;
}

unint64_t sub_1C7027D78()
{
  result = qword_1EC215EC0;
  if (!qword_1EC215EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EC0);
  }

  return result;
}

unint64_t sub_1C7027E0C()
{
  result = qword_1EDD0A538[0];
  if (!qword_1EDD0A538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0A538);
  }

  return result;
}

unint64_t sub_1C7027E64()
{
  result = qword_1EDD0E8C8;
  if (!qword_1EDD0E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8C8);
  }

  return result;
}

unint64_t sub_1C7027EF8()
{
  result = qword_1EDD0B130;
  if (!qword_1EDD0B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B130);
  }

  return result;
}

unint64_t sub_1C7027F50()
{
  result = qword_1EDD0B128;
  if (!qword_1EDD0B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B128);
  }

  return result;
}

unint64_t sub_1C7027FE4()
{
  result = qword_1EDD09F38;
  if (!qword_1EDD09F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F38);
  }

  return result;
}

unint64_t sub_1C702803C()
{
  result = qword_1EDD09F30;
  if (!qword_1EDD09F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09F30);
  }

  return result;
}

unint64_t sub_1C70280D0()
{
  result = qword_1EDD087F0;
  if (!qword_1EDD087F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD087F0);
  }

  return result;
}

unint64_t sub_1C7028128()
{
  result = qword_1EDD087E8;
  if (!qword_1EDD087E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD087E8);
  }

  return result;
}

unint64_t sub_1C7028180()
{
  result = qword_1EC215EC8;
  if (!qword_1EC215EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EC8);
  }

  return result;
}

uint64_t sub_1C70281D4(void *a1)
{
  a1[1] = sub_1C70259B4(&qword_1EDD0EAB8, type metadata accessor for TimeExtendedToken);
  a1[2] = sub_1C70259B4(&qword_1EDD0EAC0, type metadata accessor for TimeExtendedToken);
  result = sub_1C70259B4(qword_1EDD0A7E0, type metadata accessor for TimeExtendedToken);
  a1[3] = result;
  return result;
}

unint64_t sub_1C7028308()
{
  result = qword_1EDD09B00;
  if (!qword_1EDD09B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09B00);
  }

  return result;
}

unint64_t sub_1C7028360()
{
  result = qword_1EDD09AF8;
  if (!qword_1EDD09AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09AF8);
  }

  return result;
}

uint64_t sub_1C70283B4(void *a1)
{
  a1[1] = sub_1C70259B4(&qword_1EDD0DE80, type metadata accessor for PartOfWeekExtendedToken);
  a1[2] = sub_1C70259B4(qword_1EDD0DE88, type metadata accessor for PartOfWeekExtendedToken);
  result = sub_1C70259B4(&qword_1EDD09800, type metadata accessor for PartOfWeekExtendedToken);
  a1[3] = result;
  return result;
}

unint64_t sub_1C70284E8()
{
  result = qword_1EDD0A7C8;
  if (!qword_1EDD0A7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7C8);
  }

  return result;
}

unint64_t sub_1C7028540()
{
  result = qword_1EDD0A7C0;
  if (!qword_1EDD0A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A7C0);
  }

  return result;
}

unint64_t sub_1C7028598()
{
  result = qword_1EC215ED0;
  if (!qword_1EC215ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215ED0);
  }

  return result;
}

uint64_t sub_1C702862C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1C7028680()
{
  result = qword_1EC215ED8;
  if (!qword_1EC215ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215ED8);
  }

  return result;
}

unint64_t sub_1C70286D8()
{
  result = qword_1EC215EE0;
  if (!qword_1EC215EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EE0);
  }

  return result;
}

uint64_t __swift_memcpy6_2(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonRelationshipAgeInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 6))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 4);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonRelationshipAgeInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C7028864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C70288A4(uint64_t result, int a2, int a3)
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

uint64_t sub_1C7028910(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7028950(uint64_t result, int a2, int a3)
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
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C70289D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7028A10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C7028AB4()
{
  sub_1C7028B94();
  if (v0 <= 0x3F)
  {
    sub_1C754DABC();
    if (v1 <= 0x3F)
    {
      sub_1C7028BE4();
      if (v2 <= 0x3F)
      {
        sub_1C7028C3C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C7028B94()
{
  if (!qword_1EDD0CED0)
  {
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0CED0);
    }
  }
}

void sub_1C7028BE4()
{
  if (!qword_1EC215EE8)
  {
    sub_1C754DABC();
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC215EE8);
    }
  }
}

void sub_1C7028C3C()
{
  if (!qword_1EDD0CF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00);
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0CF48);
    }
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C7028CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7028CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C7028D84()
{
  sub_1C754F09C();
  if (v0 <= 0x3F)
  {
    sub_1C7028C3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C7028E28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7028E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7028EF0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7028F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeaturedCollectionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExtendedTokenCollection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeExtendedToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenericLocationExtendedToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptSuggestion.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PetExtendedToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7029464(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C70294E8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C70295B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7029638(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7029714(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_480(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_480((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_480(v8);
}

_BYTE *sub_1C7029798(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_479(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_476(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_477(result, v6);
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
          result = OUTLINED_FUNCTION_478(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtendedTokenSource.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7029970(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7029A30()
{
  result = qword_1EC215EF0;
  if (!qword_1EC215EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EF0);
  }

  return result;
}

unint64_t sub_1C7029A88()
{
  result = qword_1EC215EF8;
  if (!qword_1EC215EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215EF8);
  }

  return result;
}

unint64_t sub_1C7029AE0()
{
  result = qword_1EC215F00;
  if (!qword_1EC215F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F00);
  }

  return result;
}

unint64_t sub_1C7029B38()
{
  result = qword_1EC215F08;
  if (!qword_1EC215F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F08);
  }

  return result;
}

unint64_t sub_1C7029B90()
{
  result = qword_1EC215F10;
  if (!qword_1EC215F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F10);
  }

  return result;
}

unint64_t sub_1C7029BE8()
{
  result = qword_1EC215F18;
  if (!qword_1EC215F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F18);
  }

  return result;
}

unint64_t sub_1C7029C40()
{
  result = qword_1EC215F20;
  if (!qword_1EC215F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F20);
  }

  return result;
}

unint64_t sub_1C7029C98()
{
  result = qword_1EC215F28;
  if (!qword_1EC215F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F28);
  }

  return result;
}

unint64_t sub_1C7029CF0()
{
  result = qword_1EC215F30;
  if (!qword_1EC215F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F30);
  }

  return result;
}

unint64_t sub_1C7029D48()
{
  result = qword_1EC215F38;
  if (!qword_1EC215F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F38);
  }

  return result;
}

unint64_t sub_1C7029DA0()
{
  result = qword_1EC215F40;
  if (!qword_1EC215F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F40);
  }

  return result;
}

unint64_t sub_1C7029DF8()
{
  result = qword_1EC215F48;
  if (!qword_1EC215F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F48);
  }

  return result;
}

unint64_t sub_1C7029E50()
{
  result = qword_1EC215F50;
  if (!qword_1EC215F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F50);
  }

  return result;
}

unint64_t sub_1C7029EA8()
{
  result = qword_1EC215F58;
  if (!qword_1EC215F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F58);
  }

  return result;
}

unint64_t sub_1C7029F00()
{
  result = qword_1EC215F60;
  if (!qword_1EC215F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F60);
  }

  return result;
}

unint64_t sub_1C7029F58()
{
  result = qword_1EDD0DF30;
  if (!qword_1EDD0DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DF30);
  }

  return result;
}

unint64_t sub_1C7029FB0()
{
  result = qword_1EDD0DF38;
  if (!qword_1EDD0DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DF38);
  }

  return result;
}

unint64_t sub_1C702A008()
{
  result = qword_1EC215F68;
  if (!qword_1EC215F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F68);
  }

  return result;
}

unint64_t sub_1C702A060()
{
  result = qword_1EC215F70;
  if (!qword_1EC215F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F70);
  }

  return result;
}

unint64_t sub_1C702A0B8()
{
  result = qword_1EC215F78;
  if (!qword_1EC215F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F78);
  }

  return result;
}

unint64_t sub_1C702A110()
{
  result = qword_1EC215F80;
  if (!qword_1EC215F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F80);
  }

  return result;
}

unint64_t sub_1C702A168()
{
  result = qword_1EC215F88;
  if (!qword_1EC215F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F88);
  }

  return result;
}

unint64_t sub_1C702A1C0()
{
  result = qword_1EC215F90;
  if (!qword_1EC215F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F90);
  }

  return result;
}

unint64_t sub_1C702A218()
{
  result = qword_1EC215F98;
  if (!qword_1EC215F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215F98);
  }

  return result;
}

unint64_t sub_1C702A270()
{
  result = qword_1EC215FA0;
  if (!qword_1EC215FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FA0);
  }

  return result;
}

unint64_t sub_1C702A2C8()
{
  result = qword_1EDD0EAC8;
  if (!qword_1EDD0EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0EAC8);
  }

  return result;
}

unint64_t sub_1C702A320()
{
  result = qword_1EDD0EAD0;
  if (!qword_1EDD0EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0EAD0);
  }

  return result;
}

unint64_t sub_1C702A378()
{
  result = qword_1EC215FA8;
  if (!qword_1EC215FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FA8);
  }

  return result;
}

unint64_t sub_1C702A3D0()
{
  result = qword_1EC215FB0;
  if (!qword_1EC215FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FB0);
  }

  return result;
}

unint64_t sub_1C702A428()
{
  result = qword_1EDD0E4C8;
  if (!qword_1EDD0E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4C8);
  }

  return result;
}

unint64_t sub_1C702A480()
{
  result = qword_1EDD0E4D0;
  if (!qword_1EDD0E4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E4D0);
  }

  return result;
}

unint64_t sub_1C702A4D8()
{
  result = qword_1EC215FB8;
  if (!qword_1EC215FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FB8);
  }

  return result;
}

unint64_t sub_1C702A530()
{
  result = qword_1EC215FC0;
  if (!qword_1EC215FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FC0);
  }

  return result;
}

unint64_t sub_1C702A588()
{
  result = qword_1EDD0E8D8;
  if (!qword_1EDD0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8D8);
  }

  return result;
}

unint64_t sub_1C702A5E0()
{
  result = qword_1EDD0E8E0;
  if (!qword_1EDD0E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E8E0);
  }

  return result;
}

unint64_t sub_1C702A638()
{
  result = qword_1EDD0DAB8;
  if (!qword_1EDD0DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAB8);
  }

  return result;
}

unint64_t sub_1C702A690()
{
  result = qword_1EDD0DAC0;
  if (!qword_1EDD0DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0DAC0);
  }

  return result;
}

unint64_t sub_1C702A6E8()
{
  result = qword_1EDD0E998;
  if (!qword_1EDD0E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E998);
  }

  return result;
}

unint64_t sub_1C702A740()
{
  result = qword_1EDD0E9A0;
  if (!qword_1EDD0E9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9A0);
  }

  return result;
}

unint64_t sub_1C702A798()
{
  result = qword_1EDD0E9C8;
  if (!qword_1EDD0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9C8);
  }

  return result;
}

unint64_t sub_1C702A7F0()
{
  result = qword_1EDD0E9D0;
  if (!qword_1EDD0E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9D0);
  }

  return result;
}

unint64_t sub_1C702A848()
{
  result = qword_1EDD0E9E0;
  if (!qword_1EDD0E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9E0);
  }

  return result;
}

unint64_t sub_1C702A8A0()
{
  result = qword_1EDD0E9E8;
  if (!qword_1EDD0E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9E8);
  }

  return result;
}

unint64_t sub_1C702A8F8()
{
  result = qword_1EDD0E9B0;
  if (!qword_1EDD0E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9B0);
  }

  return result;
}

unint64_t sub_1C702A950()
{
  result = qword_1EDD0E9B8;
  if (!qword_1EDD0E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E9B8);
  }

  return result;
}

unint64_t sub_1C702A9A8()
{
  result = qword_1EDD0E918;
  if (!qword_1EDD0E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E918);
  }

  return result;
}

unint64_t sub_1C702AA00()
{
  result = qword_1EDD0E920;
  if (!qword_1EDD0E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E920);
  }

  return result;
}

unint64_t sub_1C702AA58()
{
  result = qword_1EDD0E900;
  if (!qword_1EDD0E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E900);
  }

  return result;
}

unint64_t sub_1C702AAB0()
{
  result = qword_1EDD0E908;
  if (!qword_1EDD0E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E908);
  }

  return result;
}

unint64_t sub_1C702AB08()
{
  result = qword_1EDD0E930;
  if (!qword_1EDD0E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E930);
  }

  return result;
}

unint64_t sub_1C702AB60()
{
  result = qword_1EDD0E938;
  if (!qword_1EDD0E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E938);
  }

  return result;
}

unint64_t sub_1C702ABB4()
{
  result = qword_1EC215FC8;
  if (!qword_1EC215FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215FC8);
  }

  return result;
}

unint64_t sub_1C702AC08()
{
  result = qword_1EDD0D0F8;
  if (!qword_1EDD0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D0F8);
  }

  return result;
}

uint64_t sub_1C702AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  (*(a4 + 40))(&v12, a3, a4);
  if ((v13 & 1) != 0 || !(*(a4 + 56))(a3, a4))
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  (*(v6 + 8))(v9, a3);
  return v10;
}

BOOL sub_1C702ADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10 = ExtendedToken.isUsedForAssetScoping.getter(a3, a4);
  (*(v6 + 8))(v9, a3);
  return v10;
}

uint64_t sub_1C702AEB0(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &__dst[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v8);
  memcpy(__dst, a2, sizeof(__dst));
  LOBYTE(a4) = sub_1C702AFBC(v10, __dst, a3, a4);
  (*(v7 + 8))(v10, a3);
  return a4 & 1;
}

uint64_t sub_1C702AFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(a4 + 40))(&v10, a3, a4);
  if (v11)
  {
    v8 = 0;
  }

  else
  {
    sub_1C6FB5E28(v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    if (swift_dynamicCast())
    {

      v8 = 1;
    }

    else
    {
      sub_1C6FB5E28(v13, v12);
      v8 = swift_dynamicCast();
      if (v8)
      {
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

void OUTLINED_FUNCTION_47_8(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[5].n128_u64[0] = v4;
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

__n128 OUTLINED_FUNCTION_53_6@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  *(v1 - 144) = *(a1 + 16);
  *(v1 - 128) = v4;
  *(v1 - 112) = v3;
  *(v1 - 160) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_54_5@<Q0>(__int128 *a1@<X8>)
{
  v3 = a1[1];
  result = a1[2];
  v4 = *a1;
  *(v1 - 224) = *(a1 + 6);
  *(v1 - 256) = v3;
  *(v1 - 240) = result;
  *(v1 - 272) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_3()
{

  return sub_1C70265F0();
}

unint64_t OUTLINED_FUNCTION_85_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;
  *(v1 - 88) = *(v1 - 72);
  *(v1 - 65) = 1;

  return sub_1C7025D44();
}

void OUTLINED_FUNCTION_88_2()
{
  v4 = *(v0 + 80);
  *(v4 + 16) = v1;
  *(v4 + 8 * v2 + 32) = v3;
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1, uint64_t a2)
{
  *(v2 - 344) = a1;
  *(v2 - 336) = a2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_108_1()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return sub_1C75505AC();
}

void OUTLINED_FUNCTION_115_1()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_118_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 280) = &a9 - v9;
  *(v11 - 296) = v10[1];
  v12 = v10[3];
  *(v11 - 304) = v10[2];
  *(v11 - 320) = v12;
  v13 = v10[5];
  *(v11 - 336) = v10[4];
  *(v11 - 344) = v13;
  v14 = v10[7];
  *(v11 - 368) = v10[6];
  *(v11 - 376) = v14;
  v15 = v10[9];
  *(v11 - 392) = v10[8];
  *(v11 - 400) = v15;
}

void OUTLINED_FUNCTION_128_2()
{
  v2 = *(v1 - 464);
  v3 = *(v1 - 424);
  *v2 = *(v1 - 416);
  v2[1] = v3;
  v4 = *(v1 - 440);
  v2[2] = *(v1 - 432);
  v2[3] = v4;
  v5 = *(v1 - 336);
  v2[4] = *(v1 - 352);
  v2[5] = v5;
  v6 = *(v1 - 360);
  v2[6] = *(v1 - 344);
  v2[7] = v6;
  v2[8] = *(v1 - 368);
  v2[9] = v0;
}

void OUTLINED_FUNCTION_132_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 272);

  sub_1C71FB7FC(a1, a2, a3, v5);
}

void OUTLINED_FUNCTION_133_0()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_145_0()
{
  *(v1 - 120) = v0;

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_155()
{

  return sub_1C7551C1C();
}

void OUTLINED_FUNCTION_161()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_185()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  *(v1 - 144) = *(v0 + 6);
  v6 = (v1 - 192);
  v6[1] = v4;
  v6[2] = v5;
  *v6 = v3;
  v7 = v0[1];
  *(v1 - 272) = *v0;
  v8 = v0[2];
  *(v1 - 256) = v7;
  *(v1 - 240) = v8;
  *(v1 - 224) = *(v0 + 6);

  return sub_1C70260B4(v1 - 192, v1 - 344);
}

void OUTLINED_FUNCTION_189()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_190()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_195()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_197()
{

  return sub_1C702659C();
}

uint64_t OUTLINED_FUNCTION_227()
{

  return sub_1C75505AC();
}

void OUTLINED_FUNCTION_233(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  a1[4] = a4;
  a1[5] = a5;
  a1[2] = a2;
  a1[3] = a3;
}

uint64_t OUTLINED_FUNCTION_241()
{

  return sub_1C70265F0();
}

uint64_t OUTLINED_FUNCTION_246(uint64_t a1, uint64_t a2)
{
  *(v2 - 272) = a1;
  *(v2 - 264) = a2;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_250()
{

  return sub_1C755063C();
}

uint64_t OUTLINED_FUNCTION_252_0()
{

  return sub_1C7551F3C();
}

void OUTLINED_FUNCTION_253()
{
  v4 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 8 * v3 + 32) = v1;
}

uint64_t OUTLINED_FUNCTION_264()
{
  *(v1 - 96) = v0;

  return sub_1C755058C();
}

void OUTLINED_FUNCTION_281()
{
  *(v0 - 192) = 0x6557664F74726150;
  *(v0 - 184) = 0xEB000000003A6B65;

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_311()
{
}

uint64_t OUTLINED_FUNCTION_312()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_315()
{

  return sub_1C75505AC();
}

void OUTLINED_FUNCTION_329_0(void *a1@<X8>)
{
  v6 = *(v1 - 256);
  v7 = *(v5 - 280);
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = *(v5 - 240);
  a1[7] = v3;
  a1[8] = v4;
  a1[9] = v2;
}

double OUTLINED_FUNCTION_332()
{
  *(v0 - 304) = 0;
  result = 0.0;
  *(v0 - 320) = 0u;
  *(v0 - 336) = 0u;
  return result;
}

void OUTLINED_FUNCTION_335()
{
  *(v0 + 16) = v2;
  v5 = v0 + 40 * v3;
  *(v5 + 32) = *(v4 - 272);
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_338()
{

  return sub_1C7551F3C();
}

void OUTLINED_FUNCTION_341()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_342()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_355(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);
  v3 = *(v1 - 296);
  *v2 = *(v1 - 288);
  v2[1] = v3;
}

void OUTLINED_FUNCTION_356()
{

  sub_1C6FB20F8();
}

void OUTLINED_FUNCTION_358()
{

  JUMPOUT(0x1CCA5CD70);
}

__n128 OUTLINED_FUNCTION_361@<Q0>(uint64_t a1@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(v1 - 240) = *(a1 + 32);
  *(v1 - 224) = v4;
  *(v1 - 256) = v3;
  *(v1 - 272) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_371()
{
  result = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v1 - 128) = *(v0 + 48);
  *(v1 - 160) = v3;
  *(v1 - 144) = v4;
  *(v1 - 176) = result;
  return result;
}

void OUTLINED_FUNCTION_375()
{
  *(v0 + 16) = v1;
  v5 = v0 + 56 * v3;
  *(v5 + 32) = *(v4 - 256);
  *(v5 + 40) = v2;
}

void OUTLINED_FUNCTION_381()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_383()
{

  return sub_1C6FB5E28(v0 + 192, v1 - 216);
}

uint64_t OUTLINED_FUNCTION_385()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_387()
{

  return sub_1C7551DBC();
}

__n128 *OUTLINED_FUNCTION_398@<X0>(__n128 *result@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>)
{
  result[4].n128_u64[0] = a2;
  result[2] = a4;
  result[3] = a3;
  result[1] = a5;
  return result;
}

void OUTLINED_FUNCTION_413()
{
  *(v1 + 16) = v2;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 344) = a3;
  *(v3 - 496) = a1;

  return type metadata accessor for PartOfWeekExtendedToken(0);
}

uint64_t OUTLINED_FUNCTION_419()
{

  return sub_1C6FB5E28(v0 - 216, v0 - 256);
}

uint64_t OUTLINED_FUNCTION_420()
{

  return sub_1C7551F3C();
}

void OUTLINED_FUNCTION_430()
{
  *(v3 - 256) = v1;
  *(v5 - 176) = v1;
  *(v5 - 168) = v0;
  *(v5 - 424) = v0;
  *(v5 - 160) = v4;
  *(v5 - 152) = v2;
}

void OUTLINED_FUNCTION_446(uint64_t a1@<X8>)
{
  *(a1 + 57) = v1;
  *(a1 + 58) = *(v3 - 264);
  *(a1 + 64) = v2;
}

__n128 OUTLINED_FUNCTION_448@<Q0>(__int128 *a1@<X8>)
{
  result = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  *(v1 - 128) = result;
  *(v1 - 112) = v3;
  *(v1 - 160) = v4;
  *(v1 - 144) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_453()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_461()
{
}

uint64_t OUTLINED_FUNCTION_462()
{
}

uint64_t OUTLINED_FUNCTION_463()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_464()
{
}

uint64_t OUTLINED_FUNCTION_466()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_467()
{

  return sub_1C7551CCC();
}

uint64_t OUTLINED_FUNCTION_468()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_469()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_470()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_471()
{

  return sub_1C7551FFC();
}

uint64_t OUTLINED_FUNCTION_473()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_474@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = 0xEA00000000003A79;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_475()
{

  return sub_1C7025FF8(v1 - 168, v0 + 272);
}

uint64_t OUTLINED_FUNCTION_481@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_483()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 208);
}

uint64_t OUTLINED_FUNCTION_484()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_485()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_486()
{
}

uint64_t OUTLINED_FUNCTION_487()
{
}

void OUTLINED_FUNCTION_498()
{
  *(v2 - 256) = v1;
  *(v3 - 128) = v1;
  *(v3 - 120) = v0;
  *(v3 - 392) = v0;
}

void OUTLINED_FUNCTION_518()
{
  v4 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 8 * v2 + 32) = v1;
}

void OUTLINED_FUNCTION_580()
{
  *(v3 - 160) = v0;
  *(v3 - 256) = v1;
  *(v3 - 264) = v2;
}

unint64_t OUTLINED_FUNCTION_587@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v5 - 160) = a1;
  *(v5 - 192) = a3;
  *(v5 - 176) = a4;
  *(v5 - 208) = a2;
  *(v5 - 104) = v4;

  return sub_1C70268F8();
}

uint64_t OUTLINED_FUNCTION_589()
{

  return sub_1C7551D7C();
}

uint64_t OUTLINED_FUNCTION_590@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1C7551B9C();
}

uint64_t OUTLINED_FUNCTION_591@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;
  *(v1 - 184) = 0xE600000000000000;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_592()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_593()
{

  return sub_1C755180C();
}

uint64_t OUTLINED_FUNCTION_594@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_599()
{

  return sub_1C70265F0();
}

uint64_t OUTLINED_FUNCTION_600()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 - 216);
}

void OUTLINED_FUNCTION_602()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_603()
{

  return sub_1C75504FC();
}

uint64_t sub_1C702D284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E6F73 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C702D350(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x73676E6F73;
  }
}

uint64_t sub_1C702D390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C702D284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C702D3B8(uint64_t a1)
{
  v2 = sub_1C702D790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C702D3F4(uint64_t a1)
{
  v2 = sub_1C702D790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C702D430(uint64_t a1)
{
  v2 = sub_1C702D7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C702D46C(uint64_t a1)
{
  v2 = sub_1C702D7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C702D4A8(uint64_t a1)
{
  v2 = sub_1C702D838();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C702D4E4(uint64_t a1)
{
  v2 = sub_1C702D838();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleMusicSmartSearchOptions.SearchResultType.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215FF0);
  OUTLINED_FUNCTION_3_0();
  v24 = v4;
  v25 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215FF8);
  OUTLINED_FUNCTION_3_0();
  v21 = v8;
  v22 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216000);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C702D790();
  sub_1C755200C();
  v19 = (v14 + 8);
  if (v18)
  {
    sub_1C702D7E4();
    v20 = v23;
    sub_1C7551C6C();
    (*(v24 + 8))(v20, v25);
  }

  else
  {
    sub_1C702D838();
    sub_1C7551C6C();
    (*(v21 + 8))(v11, v22);
  }

  (*v19)(v17, v12);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C702D790()
{
  result = qword_1EC216008;
  if (!qword_1EC216008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216008);
  }

  return result;
}

unint64_t sub_1C702D7E4()
{
  result = qword_1EC216010;
  if (!qword_1EC216010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216010);
  }

  return result;
}

unint64_t sub_1C702D838()
{
  result = qword_1EC216018;
  if (!qword_1EC216018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216018);
  }

  return result;
}

uint64_t AppleMusicSmartSearchOptions.SearchResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void AppleMusicSmartSearchOptions.SearchResultType.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v46 = v0;
  v2 = v1;
  v43 = v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216020);
  OUTLINED_FUNCTION_3_0();
  v42 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216028);
  OUTLINED_FUNCTION_3_0();
  v41 = v9;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216030);
  OUTLINED_FUNCTION_3_0();
  v44 = v14;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C702D790();
  v18 = v46;
  sub_1C7551FFC();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v8;
  v40 = v12;
  v46 = v2;
  v19 = v45;
  v20 = sub_1C7551C5C();
  v21 = sub_1C6FD80E0(v20, 0);
  if (v23 == v24 >> 1)
  {
    v45 = v21;
LABEL_9:
    v34 = sub_1C75518EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v36 = &type metadata for AppleMusicSmartSearchOptions.SearchResultType;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v17, v13);
    v2 = v46;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  v38[1] = 0;
  if (v23 < (v24 >> 1))
  {
    v25 = *(v22 + v23);
    v26 = sub_1C6FD80C8(v23 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v25)
      {
        sub_1C702D7E4();
        v31 = v7;
        OUTLINED_FUNCTION_5_3();
        v32 = v43;
        v33 = v44;
        swift_unknownObjectRelease();
        (*(v42 + 8))(v31, v19);
      }

      else
      {
        sub_1C702D838();
        v37 = v40;
        OUTLINED_FUNCTION_5_3();
        v32 = v43;
        v33 = v44;
        swift_unknownObjectRelease();
        (*(v41 + 8))(v37, v39);
      }

      (*(v33 + 8))(v17, v28);
      *v32 = v25;
      __swift_destroy_boxed_opaque_existential_1(v46);
      goto LABEL_11;
    }

    v45 = v26;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AppleMusicSmartSearchOptions.searchPrompt.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

void __swiftcall AppleMusicSmartSearchOptions.init(searchPrompt:searchResultTypes:limit:includeNaturalLanguageResults:)(PhotosIntelligence::AppleMusicSmartSearchOptions *__return_ptr retstr, Swift::String searchPrompt, Swift::OpaquePointer searchResultTypes, Swift::Int limit, Swift::Bool includeNaturalLanguageResults)
{
  retstr->searchPrompt = searchPrompt;
  retstr->searchResultTypes = searchResultTypes;
  retstr->limit = limit;
  retstr->includeNaturalLanguageResults = includeNaturalLanguageResults;
}

uint64_t sub_1C702DDF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250686372616573 && a2 == 0xEC00000074706D6FLL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C7599F50 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74696D696CLL && a2 == 0xE500000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001DLL && 0x80000001C7599F70 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C702DF58(char a1)
{
  result = 0x7250686372616573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x74696D696CLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C702DFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C702DDF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C702E01C(uint64_t a1)
{
  v2 = sub_1C703042C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C702E058(uint64_t a1)
{
  v2 = sub_1C703042C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleMusicSmartSearchOptions.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v14 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216038);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = v10;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C703042C();
  sub_1C755200C();
  v11 = v14;
  sub_1C7551CCC();
  if (!v11)
  {
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216048);
    sub_1C70304D4(&qword_1EC216050, sub_1C7030480);
    sub_1C7551D2C();
    sub_1C7551D0C();
    sub_1C7551CDC();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_125();
}

void AppleMusicSmartSearchOptions.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216060);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C703042C();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v6 = sub_1C7551BBC();
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216048);
    sub_1C70304D4(&qword_1EC216068, sub_1C703054C);
    sub_1C7551C1C();
    v11 = sub_1C7551BFC();
    v8 = sub_1C7551BCC();
    v9 = OUTLINED_FUNCTION_12_7();
    v10(v9);
    *v4 = v6;
    *(v4 + 8) = v12;
    *(v4 + 16) = v13;
    *(v4 + 24) = v11;
    *(v4 + 32) = v8 & 1;
    sub_1C75504FC();
    sub_1C75504FC();
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C702E580()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC25B628);
  __swift_project_value_buffer(v0, qword_1EC25B628);
  return sub_1C754FEFC();
}

uint64_t static AppleMusicSmartSearch.searchCatalog(with:)()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216078);
  *(v0 + 24) = OUTLINED_FUNCTION_77();
  v4 = sub_1C754ED6C();
  *(v0 + 32) = v4;
  OUTLINED_FUNCTION_18(v4);
  *(v0 + 40) = v5;
  *(v0 + 48) = OUTLINED_FUNCTION_77();
  v6 = sub_1C75500DC();
  *(v0 + 56) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v0 + 64) = v7;
  v8 = OUTLINED_FUNCTION_77();
  v9 = *v2;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = *(v2 + 1);
  *(v0 + 104) = v2[3];
  *(v0 + 128) = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C702E748, 0, 0);
}

uint64_t sub_1C702E748()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E6977370];
    v6 = MEMORY[0x1E6976B90];
    do
    {
      if (*v3)
      {
        v7 = sub_1C75501FC();
        v8 = v5;
      }

      else
      {
        v7 = sub_1C75501EC();
        v8 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB2350();
        v4 = v11;
      }

      v9 = *(v4 + 16);
      if (v9 >= *(v4 + 24) >> 1)
      {
        sub_1C6FB2350();
        v4 = v12;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      ++v3;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69B2930], v0[7]);
  sub_1C75500EC();
  if (!*(v4 + 16))
  {
  }

  v13 = v0[3];
  sub_1C75504FC();
  sub_1C754ED2C();
  sub_1C754ED3C();
  v14 = *MEMORY[0x1E69B2948];
  v15 = sub_1C75500FC();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  sub_1C754ED4C();
  sub_1C754ED1C();
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_1C702E9C8;
  v17 = v0[2];

  return MEMORY[0x1EEE1F728](v17);
}

uint64_t sub_1C702E9C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C702EB5C;
  }

  else
  {
    v7 = sub_1C702EAD0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C702EAD0()
{
  v1 = OUTLINED_FUNCTION_4_10();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1C702EB5C()
{
  v1 = OUTLINED_FUNCTION_4_10();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t static AppleMusicSmartSearch.searchCatalogForSongs(with:)(uint64_t a1)
{
  *(v2 + 56) = v1;
  v4 = sub_1C754ED0C();
  *(v2 + 64) = v4;
  OUTLINED_FUNCTION_18(v4);
  *(v2 + 72) = v5;
  *(v2 + 80) = OUTLINED_FUNCTION_77();
  v6 = sub_1C754ED8C();
  *(v2 + 88) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v2 + 96) = v7;
  *(v2 + 104) = OUTLINED_FUNCTION_77();
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(v2 + 16) = *a1;
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 40) = v8;
  *(v2 + 48) = v9;
  v10 = swift_task_alloc();
  *(v2 + 112) = v10;
  *v10 = v2;
  v10[1] = sub_1C702ED50;

  return static AppleMusicSmartSearch.searchCatalog(with:)();
}

uint64_t sub_1C702ED50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1C702F118;
  }

  else
  {
    v7 = sub_1C702EE58;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C702EE58()
{
  v29 = v0;
  v1 = v0[9];
  result = sub_1C754ED7C();
  v3 = result;
  v4 = 0;
  v27 = *(result + 16);
  v5 = (v1 + 8);
  v6 = v0[15];
  v7 = MEMORY[0x1E69E7CC0];
  while (v27 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = v0[7];
    (*(v1 + 16))(v0[10], v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v4, v0[8]);
    sub_1C702F184(v8, &v28);
    v9 = v6;
    v10 = v0[10];
    v11 = v0[8];
    if (v9)
    {

      (*v5)(v10, v11);
    }

    result = (*v5)(v0[10], v0[8]);
    v12 = v28;
    v13 = *(v28 + 16);
    v14 = *(v7 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_26;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v15 > *(v7 + 24) >> 1)
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      sub_1C6FB2378(isUniquelyReferenced_nonNull_native, v17, 1, v7);
      v7 = v18;
    }

    if (*(v12 + 16))
    {
      v19 = (*(v7 + 24) >> 1) - *(v7 + 16);
      result = sub_1C75501EC();
      if (v19 < v13)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v13)
      {
        v20 = *(v7 + 16);
        v21 = __OFADD__(v20, v13);
        v22 = v20 + v13;
        if (v21)
        {
          goto LABEL_29;
        }

        *(v7 + 16) = v22;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_27;
      }
    }

    v6 = 0;
    ++v4;
  }

  v24 = v0[12];
  v23 = v0[13];
  v25 = v0[11];

  (*(v24 + 8))(v23, v25);

  v26 = v0[1];

  return v26(v7);
}

uint64_t sub_1C702F118()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C702F184@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v50 = a1;
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216080);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v37 - v4;
  v52 = sub_1C75501EC();
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v37 - v7;
  v8 = sub_1C754ECEC();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2160F0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2160F8);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  sub_1C754ECFC();
  v39 = v21;
  v40 = v16;
  (*(v16 + 16))(v18, v21, v15);
  sub_1C7030C8C(&qword_1EC216100);
  sub_1C75509AC();
  v22 = *(v12 + 44);
  sub_1C7030C8C(&qword_1EC216108);
  v23 = (v47 + 2);
  ++v47;
  v45 = (v44 + 32);
  v46 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C755107C();
    if (*&v14[v22] == v51[0])
    {
      sub_1C7030CDC(v14, &qword_1EC2160F0);
      result = (*(v40 + 8))(v39, v15);
      *v41 = v46;
      return result;
    }

    v24 = sub_1C75510CC();
    v25 = v48;
    (*v23)(v10);
    v24(v51, 0);
    sub_1C755108C();
    v26 = v49;
    sub_1C702F740(v10, v49);
    if (v2)
    {
      break;
    }

    (*v47)(v10, v25);
    if (__swift_getEnumTagSinglePayload(v26, 1, v52) == 1)
    {
      sub_1C7030CDC(v26, &qword_1EC216080);
    }

    else
    {
      v27 = *v45;
      v28 = v26;
      v29 = v52;
      (*v45)(v42, v28, v52);
      v27(v43, v42, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB2378(0, *(v46 + 16) + 1, 1, v46);
        v46 = v34;
      }

      v31 = *(v46 + 16);
      v30 = *(v46 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v38 = v31 + 1;
        sub_1C6FB2378(v30 > 1, v31 + 1, 1, v46);
        v32 = v38;
        v46 = v35;
      }

      v33 = v46;
      *(v46 + 16) = v32;
      v27((v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31), v43, v52);
    }
  }

  (*v47)(v10, v25);
  sub_1C7030CDC(v14, &qword_1EC2160F0);

  __break(1u);
  return result;
}

uint64_t sub_1C702F740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1C754ECEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C75501EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v54 - v20;
  (*(v4 + 16))(v6, a1, v3, v19);
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69B2920])
  {
    (*(v4 + 96))(v6, v3);
    v59 = v8[4];
    v59(v21, v6, v7);
    if (qword_1EC213C90 != -1)
    {
      swift_once();
    }

    v22 = sub_1C754FF1C();
    __swift_project_value_buffer(v22, qword_1EC25B628);
    v23 = v8[2];
    v23(v17, v21, v7);
    v23(v14, v21, v7);
    v23(v60, v21, v7);
    v23(v61, v21, v7);
    v24 = sub_1C754FEEC();
    v25 = sub_1C755118C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v55 = v25;
      v27 = v26;
      v56 = swift_slowAlloc();
      v63 = v56;
      *v27 = 136315906;
      v54 = v24;
      sub_1C75501BC();
      v28 = sub_1C755015C();
      v57 = v8 + 4;
      v29 = v28;
      v31 = v30;

      v58 = v8[1];
      v58(v17, v7);
      v32 = sub_1C6F765A4(v29, v31, &v63);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      v33 = sub_1C75501DC();
      v35 = v34;
      v36 = v58;
      v58(v14, v7);
      v37 = sub_1C6F765A4(v33, v35, &v63);

      *(v27 + 14) = v37;
      *(v27 + 22) = 2080;
      v38 = v60;
      v39 = sub_1C755018C();
      v41 = v40;
      v36(v38, v7);
      v42 = sub_1C6F765A4(v39, v41, &v63);

      *(v27 + 24) = v42;
      *(v27 + 32) = 2080;
      v43 = v61;
      sub_1C755019C();
      v44 = MEMORY[0x1CCA5D090]();
      v46 = v45;

      v58(v43, v7);
      v47 = sub_1C6F765A4(v44, v46, &v63);

      *(v27 + 34) = v47;
      v48 = v54;
      _os_log_impl(&dword_1C6F5C000, v54, v55, "Song: id=%s, title=%s, artistName=%s, genres=%s", v27, 0x2Au);
      v49 = v56;
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v49, -1, -1);
      MEMORY[0x1CCA5F8E0](v27, -1, -1);
    }

    else
    {

      v52 = v8[1];
      v52(v61, v7);
      v52(v60, v7);
      v52(v14, v7);
      v52(v17, v7);
    }

    v51 = v62;
    v59(v62, v21, v7);
    v50 = 0;
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v50 = 1;
    v51 = v62;
  }

  return __swift_storeEnumTagSinglePayload(v51, v50, 1, v7);
}

uint64_t static AppleMusicSmartSearch.filterOutExplicit(songs:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216080);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v23 - v3;
  v5 = sub_1C75501EC();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v25 = &v23 - v11;
  v12 = 0;
  v13 = *(a1 + 16);
  v28 = (v7 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = *(v7 + 72);
    sub_1C702FFB0(a1 + v14 + v15 * v12, v4);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1C7030CDC(v4, &qword_1EC216080);
      ++v12;
    }

    else
    {
      v27 = *v28;
      v27(v25, v4, v5);
      v27(v26, v25, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB2378(0, *(v29 + 16) + 1, 1, v29);
        v29 = v20;
      }

      v17 = *(v29 + 16);
      v16 = *(v29 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v23 = *(v29 + 16);
        v24 = v17 + 1;
        sub_1C6FB2378(v16 > 1, v17 + 1, 1, v29);
        v17 = v23;
        v18 = v24;
        v29 = v21;
      }

      ++v12;
      v19 = v29;
      *(v29 + 16) = v18;
      v27((v19 + v14 + v17 * v15), v26, v5);
    }
  }

  return v29;
}

uint64_t sub_1C702FFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_1C75501EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2160E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33[-v8];
  v10 = sub_1C755017C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33[-v15];
  sub_1C75501AC();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1C7030CDC(v9, &qword_1EC2160E0);
LABEL_9:
    v30 = v38;
    (*(v4 + 16))(v38, a1, v3);
    v31 = 0;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v3);
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 104))(v13, *MEMORY[0x1E6975D58], v10);
  v17 = sub_1C755016C();
  v18 = v13;
  v19 = *(v11 + 8);
  v19(v18, v10);
  if ((v17 & 1) == 0)
  {
    v19(v16, v10);
    goto LABEL_9;
  }

  v37 = v19;
  if (qword_1EC213C90 != -1)
  {
    swift_once();
  }

  v20 = sub_1C754FF1C();
  __swift_project_value_buffer(v20, qword_1EC25B628);
  (*(v4 + 16))(v6, a1, v3);
  v21 = sub_1C754FEEC();
  v22 = sub_1C755118C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v35 = v23;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v23 = 136315138;
    sub_1C7030C34();
    v24 = sub_1C7551D8C();
    v34 = v22;
    v26 = v25;
    (*(v4 + 8))(v6, v3);
    v27 = sub_1C6F765A4(v24, v26, &v39);

    v28 = v35;
    *(v35 + 1) = v27;
    _os_log_impl(&dword_1C6F5C000, v21, v34, "Filtering out explicit song %s", v28, 0xCu);
    v29 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1CCA5F8E0](v29, -1, -1);
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v37(v16, v10);
  v31 = 1;
  v30 = v38;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v3);
}

unint64_t sub_1C703042C()
{
  result = qword_1EC216040;
  if (!qword_1EC216040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216040);
  }

  return result;
}

unint64_t sub_1C7030480()
{
  result = qword_1EC216058;
  if (!qword_1EC216058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216058);
  }

  return result;
}

uint64_t sub_1C70304D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216048);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C703054C()
{
  result = qword_1EC216070;
  if (!qword_1EC216070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216070);
  }

  return result;
}

unint64_t sub_1C70305A4()
{
  result = qword_1EC216088;
  if (!qword_1EC216088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216088);
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

uint64_t sub_1C703060C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C703064C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AppleMusicSmartSearchOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C70307C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70308C8()
{
  result = qword_1EC216090;
  if (!qword_1EC216090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216090);
  }

  return result;
}

unint64_t sub_1C7030920()
{
  result = qword_1EC216098;
  if (!qword_1EC216098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216098);
  }

  return result;
}

unint64_t sub_1C7030978()
{
  result = qword_1EC2160A0;
  if (!qword_1EC2160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160A0);
  }

  return result;
}

unint64_t sub_1C70309D0()
{
  result = qword_1EC2160A8;
  if (!qword_1EC2160A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160A8);
  }

  return result;
}

unint64_t sub_1C7030A28()
{
  result = qword_1EC2160B0;
  if (!qword_1EC2160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160B0);
  }

  return result;
}

unint64_t sub_1C7030A80()
{
  result = qword_1EC2160B8;
  if (!qword_1EC2160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160B8);
  }

  return result;
}

unint64_t sub_1C7030AD8()
{
  result = qword_1EC2160C0;
  if (!qword_1EC2160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160C0);
  }

  return result;
}

unint64_t sub_1C7030B30()
{
  result = qword_1EC2160C8;
  if (!qword_1EC2160C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160C8);
  }

  return result;
}

unint64_t sub_1C7030B88()
{
  result = qword_1EC2160D0;
  if (!qword_1EC2160D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160D0);
  }

  return result;
}

unint64_t sub_1C7030BE0()
{
  result = qword_1EC2160D8;
  if (!qword_1EC2160D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160D8);
  }

  return result;
}

unint64_t sub_1C7030C34()
{
  result = qword_1EC2160E8;
  if (!qword_1EC2160E8)
  {
    sub_1C75501EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2160E8);
  }

  return result;
}

uint64_t sub_1C7030C8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2160F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C7030CDC(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

float static PairwiseMetrics.euclideanDistance(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = *a2;
  __C = v2;
  static FloatVector.- infix(_:_:)(&__C, &v6, v8);
  v3 = *(v8[0] + 16);
  LODWORD(__C) = 2143289344;
  vDSP_svesq((v8[0] + 32), 1, &__C, v3);
  v4 = *&__C;

  return sqrtf(v4);
}

float static PairwiseMetrics.cosineDistance(_:_:)()
{
  OUTLINED_FUNCTION_0_16();
  static PairwiseMetrics.cosineSimilarity(_:_:)(v0, v1);
  result = 1.0 - v2;
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

void static PairwiseMetrics.cosineSimilarity(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  __C = NAN;
  vDSP_svesq((v2 + 32), 1, &__C, v4);
  v5 = __C;
  v6 = *(v3 + 16);
  __C = NAN;
  v7 = sqrtf(v5);
  vDSP_svesq((v3 + 32), 1, &__C, v6);
  if ((v7 * sqrtf(__C)) == 0.0)
  {
    return;
  }

  v8 = *(v2 + 16);
  if (v8 != *(v3 + 16))
  {
LABEL_7:
    __break(1u);
  }

  __C = 0.0;
  vDSP_dotpr((v2 + 32), 1, (v3 + 32), 1, &__C, v8);
}

float static PairwiseMetrics.cosineCLIPDistance(_:_:)()
{
  OUTLINED_FUNCTION_0_16();
  static PairwiseMetrics.cosineSimilarity(_:_:)(v0, v1);
  v3 = (v2 + 1.0) * 0.5;
  if (v3 <= 0.0)
  {
    return 3.4028e38;
  }

  else
  {
    return (1.0 - v3) / v3;
  }
}

float static PairwiseMetrics.jaccardDistance(_:_:)()
{
  OUTLINED_FUNCTION_0_16();
  static PairwiseMetrics.jaccardSimilarity(_:_:)(v0, v1);
  return 1.0 - v2;
}

uint64_t static PairwiseMetrics.jaccardSimilarity(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2 != *(*a2 + 16))
  {
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = 0;
    v4 = *a2 + 32;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = *(*result + 32 + 4 * v3);
      if (v7 != 0.0)
      {
        goto LABEL_7;
      }

      if (v3 >= v2)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        return result;
      }

      if (*(v4 + 4 * v3) != 0.0)
      {
LABEL_7:
        if (v3 >= v2)
        {
          goto LABEL_14;
        }

        v6 = v6 + 1.0;
        if (v7 == *(v4 + 4 * v3))
        {
          v5 = v5 + 1.0;
        }
      }

      ++v3;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t static PairwiseMetrics.hammingDistance(_:_:)(uint64_t result, uint64_t a2)
{
  v2 = *(*result + 16);
  if (v2 == *(*a2 + 16))
  {
    if (v2)
    {
      v3 = 0;
      v4 = 0.0;
      while (v2 != v3)
      {
        v5 = *(*result + 32 + 4 * v3);
        v6 = *(*a2 + 32 + 4 * v3++);
        if (v5 == v6)
        {
          v7 = 0.0;
        }

        else
        {
          v7 = 1.0;
        }

        v4 = v4 + v7;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static PairwiseMetrics.argMinDist(from:to:using:)(uint64_t *a1, uint64_t a2, float (*a3)(uint64_t *, uint64_t *))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v7 = *a1;
    v17 = MEMORY[0x1E69E7CC0];
    sub_1C716DD68(0, v3, 0);
    v4 = v17;
    v8 = (a2 + 32);
    do
    {
      v9 = *v8;
      v15 = v7;
      v16 = v9;
      sub_1C75504FC();
      v10 = a3(&v16, &v15);

      v17 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1C716DD68(v11 > 1, v12 + 1, 1);
        v4 = v17;
      }

      *(v4 + 16) = v12 + 1;
      *(v4 + 4 * v12 + 32) = v10;
      ++v8;
      --v3;
    }

    while (v3);
  }

  v17 = v4;
  v13 = FloatVector.argmin()();

  return v13;
}

_BYTE *storeEnumTagSinglePayload for PairwiseMetrics(_BYTE *result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C703129C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C70312DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C703132C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746172656E6567 && a2 == 0xEE00656C74695464)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C7031404(char a1)
{
  if (a1)
  {
    return 0x65746172656E6567;
  }

  else
  {
    return 0x694274706D6F7270;
  }
}

uint64_t sub_1C7031454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216110);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7031908();
  sub_1C755200C();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  sub_1C703195C(&qword_1EDD06C70);
  sub_1C7551D2C();
  if (!v4)
  {
    v15 = 1;
    sub_1C7551C7C();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C703160C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216120);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_1C7031908();
  sub_1C7551FFC();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C703195C(&qword_1EC216128);
    sub_1C7551C1C();
    v4 = v8;
    sub_1C7551B6C();
    v6 = OUTLINED_FUNCTION_0_17();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1C7031818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C703132C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7031840(uint64_t a1)
{
  v2 = sub_1C7031908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C703187C(uint64_t a1)
{
  v2 = sub_1C7031908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70318B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C703160C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C7031908()
{
  result = qword_1EC216118;
  if (!qword_1EC216118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216118);
  }

  return result;
}

uint64_t sub_1C703195C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214C50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TitleDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7031AA8()
{
  result = qword_1EC216130;
  if (!qword_1EC216130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216130);
  }

  return result;
}

unint64_t sub_1C7031B00()
{
  result = qword_1EC216138;
  if (!qword_1EC216138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216138);
  }

  return result;
}

unint64_t sub_1C7031B58()
{
  result = qword_1EC216140;
  if (!qword_1EC216140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216140);
  }

  return result;
}

void sub_1C7031BAC(const void *a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1C7033044(a1, v7);
  sub_1C70330AC((v1 + 24), a1);
  if (*(*(v1 + 24) + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C71593CC(v4);
    sub_1C7033044(a1, v7);
    sub_1C6FB0900();
    v5 = *(*(v1 + 24) + 16);
    sub_1C6FB1184();
    v6 = *(v1 + 24);
    *(v6 + 16) = v5 + 1;
    memcpy((v6 + 80 * v5 + 32), a1, 0x50uLL);
    *(v2 + 24) = v6;
    swift_endAccess();
  }
}