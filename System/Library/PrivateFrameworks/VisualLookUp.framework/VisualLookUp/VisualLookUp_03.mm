uint64_t sub_1D99C5CEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v102 = *v102;
    if (!v102)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D99E8FDC(v9);
      v9 = result;
    }

    v92 = v9 + 16;
    v93 = *(v9 + 2);
    if (v93 >= 2)
    {
      while (1)
      {
        v94 = *v6;
        if (!*v6)
        {
          goto LABEL_142;
        }

        v95 = &v9[16 * v93];
        v6 = *v95;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1D99C62F8((v94 + 24 * *v95), (v94 + 24 * *v96), v94 + 24 * v97, v102);
        if (v5)
        {
        }

        if (v97 < v6)
        {
          goto LABEL_130;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_131;
        }

        *v95 = v6;
        *(v95 + 1) = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_132;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        v6 = a3;
        if (v93 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 24 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 24 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1D9C7E7DC();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 24 * v10 + 32);
        v18 = v17;
        do
        {
          result = v17[2];
          v20 = v18[3];
          v18 += 3;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D9C7E7DC();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_135;
        }

        if (v10 < v8)
        {
          v22 = 24 * v8 - 8;
          v23 = 24 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v32 = *v6;
              if (!*v6)
              {
                goto LABEL_141;
              }

              v26 = (v32 + v23);
              v27 = (v32 + v22);
              v28 = *v26;
              v29 = v26[1];
              v30 = *(v26 + 4);
              v31 = *v27;
              *v26 = *(v27 - 1);
              v26[2] = v31;
              *(v27 - 2) = v28;
              *(v27 - 1) = v29;
              *v27 = v30;
            }

            ++v25;
            v22 -= 24;
            v23 += 24;
          }

          while (v25 < v24);
        }
      }
    }

    v33 = v6[1];
    if (v8 < v33)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_134;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D99E8FF0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v46 = *(v9 + 2);
    v45 = *(v9 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      result = sub_1D99E8FF0((v45 > 1), v46 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v47;
    v48 = &v9[16 * v46];
    *(v48 + 4) = v10;
    *(v48 + 5) = v8;
    v49 = *v102;
    if (!*v102)
    {
      goto LABEL_143;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v51 = *(v9 + 4);
          v52 = *(v9 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_121;
          }

          v67 = &v9[16 * v47];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_124;
          }

          v73 = &v9[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_128;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v47 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v9[16 * v47];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_123;
        }

        v80 = &v9[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_126;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v47)
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

        if (!*v6)
        {
          goto LABEL_140;
        }

        v89 = *&v9[16 * v88 + 32];
        v90 = *&v9[16 * v50 + 40];
        sub_1D99C62F8((*v6 + 24 * v89), (*v6 + 24 * *&v9[16 * v50 + 32]), *v6 + 24 * v90, v49);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D99E8FDC(v9);
        }

        if (v88 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v91 = &v9[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        result = sub_1D99E8F50(v50);
        v47 = *(v9 + 2);
        if (v47 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v9[16 * v47 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_119;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_120;
      }

      v62 = &v9[16 * v47];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_122;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_125;
      }

      if (v66 >= v58)
      {
        v84 = &v9[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v53 < v87)
        {
          v50 = v47 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_136;
  }

  v100 = v5;
  if (v10 + a4 >= v33)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v8 == v5)
  {
LABEL_54:
    v5 = v100;
    goto LABEL_55;
  }

  v34 = *v6;
  v35 = *v6 + 24 * v8 - 24;
  v99 = v10;
  v36 = v10 - v8;
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = *(v38 + 24) == *v38 && *(v38 + 32) == *(v38 + 8);
    if (v39 || (result = sub_1D9C7E7DC(), (result & 1) == 0))
    {
LABEL_42:
      ++v8;
      v35 += 24;
      --v36;
      if (v8 != v5)
      {
        goto LABEL_43;
      }

      v8 = v5;
      v6 = a3;
      v10 = v99;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v38 + 24);
    v40 = *(v38 + 32);
    v42 = *(v38 + 40);
    v43 = *(v38 + 16);
    *(v38 + 24) = *v38;
    *(v38 + 40) = v43;
    *v38 = v41;
    *(v38 + 8) = v40;
    *(v38 + 16) = v42;
    v38 -= 24;
    if (__CFADD__(v37++, 1))
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

uint64_t sub_1D99C62F8(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D9C7E7DC() & 1) != 0)
      {
        break;
      }

      v14 = v4;
      v16 = v7 == v4;
      v4 += 24;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v16 = v7 == v6;
    v6 += 24;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  v17 = 24 * v11;
  if (a4 != __src || &__src[v17] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 24;
    v5 -= 24;
    v19 = v13;
    do
    {
      v20 = *(v19 - 24);
      v21 = *(v19 - 16);
      v19 -= 24;
      v22 = v20 == *(v6 - 3) && v21 == *(v6 - 2);
      if (!v22 && (sub_1D9C7E7DC() & 1) != 0)
      {
        if ((v5 + 24) != v6)
        {
          v24 = *v18;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v24;
        }

        if (v13 <= v4 || (v6 -= 24, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if ((v5 + 24) != v13)
      {
        v23 = *v19;
        *(v5 + 16) = *(v19 + 16);
        *v5 = v23;
      }

      v5 -= 24;
      v13 = v19;
    }

    while (v19 > v4);
    v13 = v19;
  }

LABEL_39:
  v25 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v25])
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

unsigned __int8 *sub_1D99C6548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1D99C7754();

  result = sub_1D9C7DE9C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D99C7060();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D9C7E47C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1D99C6AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_1D99C7754();

  result = sub_1D9C7DE9C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D99C7060();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D9C7E47C();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D99C7060()
{
  v0 = sub_1D9C7DEAC();
  v4 = sub_1D99C70E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1D99C70E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1D9C7E29C();
    if (!v9 || (v10 = v9, v11 = sub_1D99C5A88(v9, 0), v12 = sub_1D99C7238(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1D9C7DD5C();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1D9C7DD5C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1D9C7E47C();
LABEL_4:

  return sub_1D9C7DD5C();
}

unint64_t sub_1D99C7238(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1D99C7458(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1D9C7DE2C();
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
          result = sub_1D9C7E47C();
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

    result = sub_1D99C7458(v12, a6, a7);
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

    result = sub_1D9C7DDFC();
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

uint64_t sub_1D99C7458(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D9C7DE3C();
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
    v5 = MEMORY[0x1DA73DFE0](15, a1 >> 16);
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

uint64_t sub_1D99C74DC(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *(a1 + 12) = *(v1 + 16);
  result = sub_1D99BD118(v3, v4);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1D99C752C()
{
  result = qword_1EDD2C660;
  if (!qword_1EDD2C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C660);
  }

  return result;
}

uint64_t sub_1D99C75E8(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

unint64_t sub_1D99C7634()
{
  result = qword_1EDD2C668;
  if (!qword_1EDD2C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C668);
  }

  return result;
}

uint64_t sub_1D99C7688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1D9C7E47C();
  }

  result = sub_1D99C77A8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1D99C7754()
{
  result = qword_1ECB512A0;
  if (!qword_1ECB512A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB512A0);
  }

  return result;
}

uint64_t sub_1D99C77A8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D99C7458(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D9C7DE1C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D99C7458(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D99C7458(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1D9C7DE1C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

__n128 sub_1D99C7C14(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v4 = v3 + *(_s14DetectedResultVMa() + 24);
  result = *v4;
  v6 = *(v4 + 16);
  *a1 = *v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_1D99C7C60(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D99C7CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99C7D24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D99C7D8C(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v3 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult(0);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v106 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v83 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v83 - v12);
  v94 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect(0);
  v14 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals(0);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v83 - v19;
  v100 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v100);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v83 = &v83 - v27;
  v28 = MEMORY[0x1E69E7CC0];
  v88 = *(a1 + 16);
  v84 = v24;
  if (!v88)
  {
LABEL_39:
    v98 = v28;
    v75 = v83;
    static Logger.argos.getter(v83);
    sub_1D9A3E0E0(v22);
    v43 = *(v84 + 8);
    v13 = v100;
    v43(v75, v100);

    v45 = sub_1D9C7D8BC();
    v76 = sub_1D9C7E09C();

    if (os_log_type_enabled(v45, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v116 = v78;
      *v77 = 136315138;
      v79 = MEMORY[0x1DA73E110](a1, &type metadata for VisualUnderstanding.Signal);
      v81 = v80;

      v82 = sub_1D9A0E224(v79, v81, &v116);

      *(v77 + 4) = v82;
      _os_log_impl(&dword_1D9962000, v45, v76, "VisualUnderstanding signals are: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      MEMORY[0x1DA7405F0](v78, -1, -1);
      MEMORY[0x1DA7405F0](v77, -1, -1);

      v43(v22, v100);
    }

    else
    {
LABEL_42:

      v43(v22, v13);
    }

    sub_1D99C7CC4(v85, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig);
    return;
  }

  v29 = 0;
  v111 = 0;
  v91 = a1 + 32;
  v90 = (v14 + 56);
  v99 = (v24 + 8);
  *&v26 = 136315138;
  v95 = v26;
  v96 = a1;
  v87 = v22;
  v109 = v7;
  v86 = v17;
  v101 = v25;
  while (1)
  {
    if (v29 >= *(a1 + 16))
    {
      goto LABEL_46;
    }

    v98 = v28;
    v97 = v29;
    v30 = v91 + 48 * v29;
    v114 = *(v30 + 32);
    v31 = v104;
    *v104 = MEMORY[0x1E69E7CC0];
    v32 = v92;

    v33 = *(v30 + 16);
    v112 = *v30;
    v108 = v33;
    sub_1D9C7D3BC();
    v34 = *(v32 + 24);
    v115 = *v90;
    v35 = v94;
    v36 = v115(&v31[v34], 1, 1, v94);
    v113 = &v83;
    MEMORY[0x1EEE9AC00](v36);
    v37 = v108;
    *(&v83 - 2) = v112;
    *(&v83 - 1) = v37;
    sub_1D99C8BAC(qword_1EDD2D720, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v38 = v93;
    v39 = v111;
    sub_1D9C7D6BC();
    v111 = v39;

    sub_1D99A6AE0(&v31[v34], &qword_1ECB51248);
    sub_1D99C8B08(v38, &v31[v34], type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.UpperLeftRect);
    v40 = &v31[v34];
    a1 = v96;
    v115(v40, 0, 1, v35);
    v41 = sub_1D9B6834C(a1);
    v114 = *(v41 + 16);
    if (v114)
    {
      break;
    }

LABEL_34:
    v69 = v86;
    sub_1D99C7D24(v104, v86, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    v28 = v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v87;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1D9AF927C(0, v28[2] + 1, 1, v28);
    }

    v72 = v28[2];
    v71 = v28[3];
    if (v72 >= v71 >> 1)
    {
      v28 = sub_1D9AF927C(v71 > 1, v72 + 1, 1, v28);
    }

    v73 = v97 + 1;
    v28[2] = v72 + 1;
    v74 = v28 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v72;
    v29 = v73;
    sub_1D99C8B08(v69, v74, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    sub_1D99C7CC4(v104, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainSignals);
    if (v29 == v88)
    {
      goto LABEL_39;
    }
  }

  v42 = 0;
  v22 = *v85;
  v43 = *(*v85 + 2);
  v113 = (v41 + 32);
  v107 = MEMORY[0x1E69E7CC0];
  *&v112 = v41;
  v105 = v43;
  while (v42 < *(v41 + 16))
  {
    v44 = &v113[3 * v42];
    v46 = *v44;
    v45 = v44[1];
    v47 = v44[2];

    v115 = v47;

    if (v43)
    {
      v48 = 0;
      while (1)
      {
        if (v48 >= *(v22 + 2))
        {
          __break(1u);
          goto LABEL_42;
        }

        v49 = &v22[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v48];
        sub_1D99C7D24(v49, v13, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
        if (*v13 == v46 && v13[1] == v45)
        {
          break;
        }

        v51 = sub_1D9C7E7DC();
        sub_1D99C7CC4(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
        if (v51)
        {
          goto LABEL_21;
        }

        if (v43 == ++v48)
        {
          goto LABEL_6;
        }
      }

      sub_1D99C7CC4(v13, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
LABEL_21:
      if (v48 >= *(v22 + 2))
      {
        goto LABEL_45;
      }

      v52 = v110;
      v53 = sub_1D99C7D24(v49, v110, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
      *&v108 = &v83;
      MEMORY[0x1EEE9AC00](v53);
      *(&v83 - 6) = v48;
      *(&v83 - 5) = v46;
      v54 = v115;
      *(&v83 - 4) = v45;
      *(&v83 - 3) = v54;
      *(&v83 - 2) = v52;
      sub_1D99C8BAC(&qword_1EDD2AB00, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      v55 = v109;
      v56 = v111;
      sub_1D9C7D6BC();
      v111 = v56;
      if (!*(*(v55 + 8) + 16))
      {
        v61 = v101;
        static Logger.argos.getter(v101);

        v62 = sub_1D9C7D8BC();
        v63 = sub_1D9C7E09C();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *&v108 = v62;
          v65 = v64;
          v66 = swift_slowAlloc();
          v116 = v66;
          *v65 = v95;

          v67 = sub_1D9A0E224(v46, v45, &v116);

          *(v65 + 4) = v67;
          v68 = v108;
          _os_log_impl(&dword_1D9962000, v108, v63, "No valid classification results %s", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x1DA7405F0](v66, -1, -1);
          MEMORY[0x1DA7405F0](v65, -1, -1);

          (*v99)(v101, v100);
        }

        else
        {

          (*v99)(v61, v100);
        }

        sub_1D99C7CC4(v109, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
        sub_1D99C7CC4(v110, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
        v41 = v112;
        v43 = v105;
        goto LABEL_8;
      }

      sub_1D99C7D24(v55, v106, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1D9AF9254(0, v107[2] + 1, 1, v107);
      }

      v43 = v105;
      v58 = v107[2];
      v57 = v107[3];
      if (v58 >= v57 >> 1)
      {
        v107 = sub_1D9AF9254(v57 > 1, v58 + 1, 1, v107);
      }

      v59 = v106;
      v60 = v107;
      v107[2] = v58 + 1;
      sub_1D99C8B08(v59, v60 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v58, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      *v104 = v60;
      sub_1D99C7CC4(v109, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults.DomainModelResult);
      sub_1D99C7CC4(v110, type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig.ModelConfig);
    }

    else
    {
LABEL_6:
    }

    v41 = v112;
LABEL_8:
    if (++v42 == v114)
    {

      a1 = v96;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_1D99C8B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99C8BAC(unint64_t *a1, void (*a2)(uint64_t))
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

double S2Edge.start.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double S2Edge.end.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = result;
  return result;
}

void __swiftcall S2Edge.init(start:end:)(VisualLookUp::S2Edge *__return_ptr retstr, VisualLookUp::S2Point start, VisualLookUp::S2Point end)
{
  v5 = *(v3 + 16);
  v6 = *(v4 + 16);
  *&retstr->start.x = *v3;
  retstr->start.z = v5;
  *&retstr->end.x = *v4;
  retstr->end.z = v6;
}

BOOL == infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

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

uint64_t sub_1D99C8CC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99C8CE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

id sub_1D99C8D88(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1D99ED894(a1, a2), (v5 & 1) != 0))
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99C8E60()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D99C8EBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = _s14DetectedResultVMa();
  v8 = a2 + *(v7 + 28);
  result = *(v8 + 16);
  v10 = result == v5 && *(v8 + 24) == v6;
  if (v10 || (result = sub_1D9C7E7DC(), v11 = 0, (result & 1) != 0))
  {
    v11 = *(a2 + *(v7 + 32));
  }

  *a3 = v11;
  return result;
}

uint64_t sub_1D99C8F44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9C85E90;
  v14.origin.x = v1;
  v14.origin.y = v2;
  v14.size.width = v3;
  v14.size.height = v4;
  Width = CGRectGetWidth(v14);
  v6 = v1;
  *(v5 + 32) = (Width * 0.5) + v6;
  v8 = v2;
  v9 = 1.0 - v8;
  v15.origin.x = v1;
  v15.origin.y = v2;
  v15.size.width = v3;
  v15.size.height = v4;
  Height = CGRectGetHeight(v15);
  *(v5 + 36) = v9 - (Height * 0.5);
  v16.origin.x = v1;
  v16.origin.y = v2;
  v16.size.width = v3;
  v16.size.height = v4;
  v11 = CGRectGetWidth(v16);
  *(v5 + 40) = v11;
  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  v12 = CGRectGetHeight(v17);
  *(v5 + 44) = v12;
  return v5;
}

void sub_1D99C9048(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v30 = *a5;
  v31 = a5[1];
  v10 = sub_1D9C196E8();
  v11 = sub_1D9C196E8();
  v35[0] = v30;
  v35[1] = v31;
  v12 = v6[4];
  v13 = a2;
  v14 = a2;
  v15 = a4;
  v16 = a3;
  v17 = sub_1D99CAA3C(a1, v13, a3, a4, v35, v10, v11, v7[4], v7[5]);
  v19 = v18;

  if (!v17)
  {
    sub_1D99CB864(a1, v14);

LABEL_6:
    v29 = 0;
    v19 = v15;
    goto LABEL_7;
  }

  v20 = v17;
  v21 = sub_1D99CB8A8(v19, v12);
  if (!v21)
  {
    v16 = a3;
    sub_1D99CB864(a1, v14);
    v15 = a4;

    goto LABEL_6;
  }

  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9C85EA0;
  v24 = v7[8];
  *(inited + 32) = v7[7];
  *(inited + 40) = v24;
  *(inited + 48) = v20;
  v25 = v7[9];
  v26 = v7[10];
  *(inited + 56) = v25;
  *(inited + 64) = v26;
  *(inited + 72) = v22;

  v27 = v22;
  v28 = sub_1D9A43384(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E0);
  swift_arrayDestroy();

  type metadata accessor for DomainPredictionModelInput();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v16 = a3;
  sub_1D99CB864(a1, v14);
LABEL_7:
  *a6 = v29;
  a6[1] = a1;
  a6[2] = v14;
  a6[3] = v16;
  a6[4] = v19;
}

uint64_t sub_1D99C92C0()
{

  return swift_deallocClassInstance();
}

void sub_1D99C9334(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D99C93DC(v5);
  *a1 = v3;
}

void sub_1D99C93DC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D99C9740(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D99C9508(0, v2, 1, a1);
  }
}

void sub_1D99C9508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D99CC070(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC070(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[19];
      v24 = v12[19];
      sub_1D99CC0F8(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC0F8(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D99CC158(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D99CC158(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D99C9740(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D99CA030(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D99CC070(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC070(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[19];
      v27 = v14[19];
      sub_1D99CC0F8(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99CC0F8(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D99CC070(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99CC070(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[19];
        v31 = v14[19];
        sub_1D99CC0F8(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99CC0F8(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D99CC158(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D99CC158(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D99CA030(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D99CC070(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99CC070(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[19];
    v93 = v14[19];
    sub_1D99CC0F8(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D99CC0F8(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D99CC158(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D99CC158(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D99CA030(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
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

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D99CC070(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D99CC070(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 76);
          v37 = *(v35 + 76);
          v38 = v35;
          v11 = v34;
          sub_1D99CC0F8(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D99CC0F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
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

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D99CC070(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D99CC070(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[19];
        v22 = *(v20 + 76);
        sub_1D99CC0F8(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99CC0F8(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

uint64_t sub_1D99CA500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9C7D8DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v50 - v18;
  if (!a2)
  {
    static Logger.argos.getter(v13);
    sub_1D9A3E0E0(v10);
    v37 = *(v8 + 8);
    v37(v13, v7);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "Detector's coarse labels not present.", v40, 2u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    v37(v10, v7);
    v20 = *(a4 + 16);
    if (!v20)
    {
      return MEMORY[0x1E69E7CC0];
    }

    goto LABEL_31;
  }

  v20 = *(a3 + 16);
  v21 = *(a4 + 16);
  if (v20 != v21)
  {
    static Logger.argos.getter(v16);

    v41 = sub_1D9C7D8BC();
    v42 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = *(a3 + 16);

      *(v43 + 12) = 2048;
      *(v43 + 14) = v21;

      _os_log_impl(&dword_1D9962000, v41, v42, "Detector's coarse label size does not matched with Domain PredictionNet's description. %ld != %ld", v43, 0x16u);
      MEMORY[0x1DA7405F0](v43, -1, -1);
    }

    else
    {
    }

    (*(v8 + 8))(v16, v7);
    v20 = *(a4 + 16);
    if (!v20)
    {
      return MEMORY[0x1E69E7CC0];
    }

LABEL_31:
    v26 = sub_1D9C7DF5C();
    *(v26 + 16) = v20;
    bzero((v26 + 32), 4 * v20);
    return v26;
  }

  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = 0;
  v23 = a4 + 32;
  v24 = (a3 + 48);
  v25 = v20 + 1;
  v26 = MEMORY[0x1E69E7CC0];
  v50 = v8;
  v51 = v7;
  v52 = v20 + 1;
  do
  {
    v27 = v23;
    v28 = (v23 + 16 * v22);
    v30 = *v28;
    v29 = v28[1];
    ++v22;
    v31 = v25;
    v32 = v24;
    do
    {
      if (!--v31)
      {

        static Logger.argos.getter(v19);

        v44 = sub_1D9C7D8BC();
        v45 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v53 = v47;
          *v46 = 136315138;
          v48 = sub_1D9A0E224(v30, v29, &v53);

          *(v46 + 4) = v48;
          _os_log_impl(&dword_1D9962000, v44, v45, "Failed to find class item for %s", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);
          MEMORY[0x1DA7405F0](v47, -1, -1);
          MEMORY[0x1DA7405F0](v46, -1, -1);
        }

        else
        {
        }

        (*(v50 + 8))(v19, v51);
        goto LABEL_31;
      }

      v33 = *v24;
      if (*(v24 - 2) == v30 && *(v24 - 1) == v29)
      {
        break;
      }

      v24 += 6;
    }

    while ((sub_1D9C7E7DC() & 1) == 0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1D9AF84B8(0, *(v26 + 16) + 1, 1, v26);
    }

    v23 = v27;
    v24 = v32;
    v36 = *(v26 + 16);
    v35 = *(v26 + 24);
    v25 = v52;
    if (v36 >= v35 >> 1)
    {
      v26 = sub_1D9AF84B8((v35 > 1), v36 + 1, 1, v26);
      v25 = v52;
    }

    *(v26 + 16) = v36 + 1;
    *(v26 + 4 * v36 + 32) = v33;
  }

  while (v22 != v20);
  return v26;
}

uint64_t sub_1D99CAA3C(uint64_t a1, uint64_t a2, void *a3, void *a4, double *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v163 = a7;
  v148 = a6;
  v161 = a3;
  v162 = a4;
  v158 = a2;
  v157 = a1;
  v11 = a9;
  v134 = sub_1D9C7D8DC();
  v164 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v127 - v15;
  v16 = _s14DetectedResultVMa();
  v149 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v147 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v127 - v19;
  v21 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v135 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v127 - v28);
  v30 = *a5;
  v31 = a5[1];
  v33 = a5[2];
  v32 = a5[3];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
  v35 = swift_allocObject();
  v165 = xmmword_1D9C85EB0;
  *(v35 + 16) = xmmword_1D9C85EB0;
  *(v35 + 32) = sub_1D9C7E06C();
  *(v35 + 40) = sub_1D9C7E06C();
  *(v35 + 48) = sub_1D9C7E06C();
  v36 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v37 = sub_1D9C18CFC(v35, 65568);
  v43 = v162;
  v155 = v29;
  v154 = v26;
  v152 = v23;
  v160 = v20;
  v140 = a8;
  v159 = v37;
  if (!v37)
  {
    static Logger.argos.getter(v13);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "Failed to create nodeFeatures MLMultiArray", v40, 2u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    (*(v164 + 8))(v13, v134);
    return 0;
  }

  v144 = sub_1D99CA500(v157, v158, v161, v163);
  v166[0] = v43;

  sub_1D99C9334(v166);
  v44 = 0;
  v45 = v166[0];
  v46 = v140;
  v47 = v149;
  v48 = v160;
  v49 = v135;
  v50 = v152;
  v138 = v166[0][2];
  if (v138)
  {
    v158 = 0;
    v51 = 0;
    v52 = 0;
    v129 = (*(v135 + 80) + 32) & ~*(v135 + 80);
    v137 = v166[0] + v129;
    v132 = 1.0 / v33;
    v127 = (v164 + 8);
    v142 = MEMORY[0x1E69E7CC0];
    v131 = 1.0 / v32;
    v41 = v159;
    v143 = a9;
    v133 = v30;
    v136 = v166[0];
    v130 = v31;
    do
    {
      if (v52 >= v45[2])
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v56 = *(v49 + 72);
      v141 = v52;
      v139 = v56;
      v57 = v155;
      sub_1D99CC070(&v137[v56 * v52], v155, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (*(v57 + 104) == 1)
      {
        v53 = v57;
      }

      else
      {
        v151 = v46 - v51;
        if (v46 == v51)
        {
          sub_1D99CC0F8(v155, type metadata accessor for VisualUnderstanding.ImageRegion);

          return v41;
        }

        v58 = v155;
        v59 = *v155;
        v60 = v155[1];
        v61 = v155[2];
        v62 = v155[3];
        v63 = *v155 - v30;
        v64 = v60 - v31;
        v167.origin.x = *v155;
        v167.origin.y = v60;
        v167.size.width = v61;
        v167.size.height = v62;
        Width = CGRectGetWidth(v167);
        v168.origin.x = v59;
        v168.origin.y = v60;
        v168.size.width = v61;
        v168.size.height = v62;
        Height = CGRectGetHeight(v168);
        v67 = v132;
        v68 = v132 * v63;
        v69 = v131;
        v169.origin.x = v63;
        v169.origin.y = v64;
        v169.size.width = Width;
        v169.size.height = Height;
        v70 = v67 * CGRectGetWidth(v169);
        v170.origin.x = v63;
        v170.origin.y = v64;
        v170.size.width = Width;
        v170.size.height = Height;
        v71 = CGRectGetHeight(v170);
        v166[0] = *&v68;
        *&v166[1] = v69 * v64;
        v166[2] = *&v70;
        *&v166[3] = v69 * v71;
        v153 = sub_1D99C8F44();
        v72 = v154;
        sub_1D99CC070(v58, v154, type metadata accessor for VisualUnderstanding.ImageRegion);

        v73 = MEMORY[0x1E69E7CC0];
        *(v72 + 56) = MEMORY[0x1E69E7CC0];
        v74 = *(v58 + 56);
        v150 = *(v74 + 16);
        if (v150)
        {
          v75 = 0;
          v146 = v51 ^ 0x7FFFFFFFFFFFFFFFLL;
          v76 = v73;
          v30 = v133;
          v31 = v130;
          v145 = v74;
          while (1)
          {
            if (v75 >= *(v74 + 16))
            {
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            v77 = (*(v47 + 80) + 32) & ~*(v47 + 80);
            v78 = *(v47 + 72);
            sub_1D99CC070(v74 + v77 + v78 * v75, v48, _s14DetectedResultVMa);
            if (v75 == v151)
            {
              break;
            }

            v79 = v48;
            v80 = v147;
            sub_1D99CC070(v79, v147, _s14DetectedResultVMa);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v157 = v75;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v76 = sub_1D9AF9018(0, v76[2] + 1, 1, v76);
            }

            v83 = v76[2];
            v82 = v76[3];
            if (v83 >= v82 >> 1)
            {
              v76 = sub_1D9AF9018(v82 > 1, v83 + 1, 1, v76);
            }

            v76[2] = v83 + 1;
            sub_1D99CC158(v80, v76 + v77 + v83 * v78, _s14DetectedResultVMa);
            *(v154 + 7) = v76;
            v84 = *(v155 + 19);
            v85 = sub_1D9AF84B8(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v86 = v85;
            v88 = *(v85 + 2);
            v87 = *(v85 + 3);
            v162 = v51;
            v156 = v76;
            if (v88 >= v87 >> 1)
            {
              v85 = sub_1D9AF84B8((v87 > 1), v88 + 1, 1, v85);
              v86 = v85;
            }

            *(v86 + 2) = v88 + 1;
            *&v86[4 * v88 + 32] = v84;
            v166[0] = v86;
            MEMORY[0x1EEE9AC00](v85);
            *(&v127 - 2) = v89;
            v90 = v158;
            v92 = sub_1D99BB774(sub_1D99CC0D8, (&v127 - 4), v91);
            v158 = v90;
            sub_1D9A18764(v92);

            sub_1D9A18764(v93);

            sub_1D9A18764(v94);
            v161 = v166[0];
            v95 = v166[0][2];
            v96 = v159;
            v97 = 0x1E696A000uLL;
            v98 = &off_1E858B000;
            v99 = v162;
            if (v95)
            {
              v100 = 0;
              v163 = v161 + 4;
              v164 = v95;
              do
              {
                v101 = *(v163 + v100);
                v102 = v100 + 1;
                v103 = v96;
                v104 = swift_allocObject();
                *(v104 + 16) = v165;
                *(v104 + 32) = sub_1D9C7E06C();
                *(v104 + 40) = sub_1D9C7E06C();
                *(v104 + 48) = sub_1D9C7E06C();
                v105 = objc_allocWithZone(*(v97 + 3480));
                LODWORD(v106) = v101;
                v107 = [v105 v98[267]];
                sub_1D99CC024();
                v108 = v99;
                v109 = v98;
                v110 = v97;
                v111 = v34;
                v112 = sub_1D9C7DF1C();
                v96 = v103;

                [v103 setObject:v107 forKeyedSubscript:v112];

                v34 = v111;
                v97 = v110;
                v98 = v109;
                v99 = v108;
                v100 = v102;
              }

              while (v164 != v102);
            }

            v48 = v160;
            v44 = sub_1D99CC0F8(v160, _s14DetectedResultVMa);
            v76 = v156;
            if (v157 == v146)
            {
              goto LABEL_54;
            }

            v75 = v157 + 1;
            v51 = v162 + 1;
            v11 = v143;
            v41 = v159;
            v47 = v149;
            v50 = v152;
            v74 = v145;
            if (v157 + 1 == v150)
            {
              goto LABEL_31;
            }
          }

          v113 = v128;
          static Logger.argos.getter(v128);
          v114 = sub_1D9C7D8BC();
          v115 = sub_1D9C7E09C();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&dword_1D9962000, v114, v115, "Reached maximum number of supported detector results of Domain Prediction Net", v116, 2u);
            MEMORY[0x1DA7405F0](v116, -1, -1);
          }

          (*v127)(v113, v134);
          v48 = v160;
          sub_1D99CC0F8(v160, _s14DetectedResultVMa);
          v46 = v140;
          v51 = v140;
          v49 = v135;
          v50 = v152;
        }

        else
        {
          v30 = v133;
          v31 = v130;
LABEL_31:

          v46 = v140;
          v49 = v135;
        }

        sub_1D99CC070(v154, v50, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v117 = v142;
        }

        else
        {
          v117 = sub_1D9AF8A90(0, v142[2] + 1, 1, v142);
        }

        v142 = v117;
        v119 = v117[2];
        v118 = v117[3];
        if (v119 >= v118 >> 1)
        {
          v142 = sub_1D9AF8A90(v118 > 1, v119 + 1, 1, v142);
        }

        sub_1D99CC0F8(v155, type metadata accessor for VisualUnderstanding.ImageRegion);
        v120 = v142;
        v142[2] = v119 + 1;
        v50 = v152;
        sub_1D99CC158(v152, v120 + v129 + v119 * v139, type metadata accessor for VisualUnderstanding.ImageRegion);
        v53 = v154;
      }

      v54 = v141 + 1;
      v44 = sub_1D99CC0F8(v53, type metadata accessor for VisualUnderstanding.ImageRegion);
      v52 = v54;
      v55 = v54 == v138;
      v45 = v136;
    }

    while (!v55);

    v121 = v142;
    if (v51 >= v46)
    {
      return v41;
    }
  }

  else
  {

    v51 = 0;
    v121 = MEMORY[0x1E69E7CC0];
    v41 = v159;
    if (v46 <= 0)
    {
      return v41;
    }
  }

  v142 = v121;
  if ((v11 & 0x8000000000000000) == 0)
  {
    do
    {
      if (v11)
      {
        sub_1D99CC024();
        v122 = 0;
        do
        {
          v123 = v122 + 1;
          v124 = swift_allocObject();
          *(v124 + 16) = v165;
          *(v124 + 32) = sub_1D9C7E06C();
          *(v124 + 40) = sub_1D9C7E06C();
          *(v124 + 48) = sub_1D9C7E06C();
          v125 = sub_1D9C7E22C();
          v126 = sub_1D9C7DF1C();

          [v41 setObject:v125 forKeyedSubscript:v126];

          v122 = v123;
        }

        while (v11 != v123);
      }

      ++v51;
    }

    while (v51 != v140);
    return v41;
  }

LABEL_56:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D99CB864(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D99CB8A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
  v12 = swift_allocObject();
  v73 = xmmword_1D9C85EC0;
  *(v12 + 16) = xmmword_1D9C85EC0;
  *(v12 + 32) = sub_1D9C7E06C();
  *(v12 + 40) = sub_1D9C7E06C();
  *(v12 + 48) = sub_1D9C7E06C();
  *(v12 + 56) = sub_1D9C7E06C();
  v13 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  result = sub_1D9C18CFC(v12, 65568);
  v18 = result;
  if (!result)
  {
    static Logger.argos.getter(v7);
    v15 = sub_1D9C7D8BC();
    v16 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D9962000, v15, v16, "Failed to create edgeAttributes MLMultiArray", v17, 2u);
      MEMORY[0x1DA7405F0](v17, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v69 = v9;
  v70 = a1;
  v71 = v11;
  v68[1] = 0;
  if (a2 < 0)
  {
    goto LABEL_46;
  }

  v19 = 0x1E696A000uLL;
  if (a2)
  {
    v20 = 0.0;
    do
    {
      v21 = 0;
      *&v72 = *&v20 + 1;
      do
      {
        v22 = v21 + 1;
        v23 = swift_allocObject();
        *(v23 + 16) = v73;
        *(v23 + 32) = sub_1D9C7E06C();
        *(v23 + 40) = sub_1D9C7E06C();
        *(v23 + 48) = sub_1D9C7E06C();
        *(v23 + 56) = sub_1D9C7E06C();
        v24 = [objc_allocWithZone(*(v19 + 3480)) initWithInteger_];
        sub_1D99CC024();
        v25 = sub_1D9C7DF1C();

        [v18 setObject:v24 forKeyedSubscript:v25];

        v19 = 0x1E696A000;
        v21 = v22;
      }

      while (a2 != v22);
      v20 = v72;
    }

    while (*&v72 != a2);
  }

  v26 = *(v70 + 16);
  if (v26)
  {
    v27 = v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v72 = *(v69 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v71;
    while (1)
    {
      sub_1D99CC070(v27, v29, type metadata accessor for VisualUnderstanding.ImageRegion);
      v30 = *(v29 + 56);

      result = sub_1D99CC0F8(v29, type metadata accessor for VisualUnderstanding.ImageRegion);
      v31 = *(v30 + 16);
      v32 = v28[2];
      v33 = v32 + v31;
      if (__OFADD__(v32, v31))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v33 <= v28[3] >> 1)
      {
        if (*(v30 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v32 <= v33)
        {
          v35 = v32 + v31;
        }

        else
        {
          v35 = v32;
        }

        v28 = sub_1D9AF9018(isUniquelyReferenced_nonNull_native, v35, 1, v28);
        if (*(v30 + 16))
        {
LABEL_25:
          v36 = (v28[3] >> 1) - v28[2];
          result = _s14DetectedResultVMa();
          if (v36 < v31)
          {
            goto LABEL_44;
          }

          swift_arrayInitWithCopy();

          v29 = v71;
          if (v31)
          {
            v37 = v28[2];
            v38 = __OFADD__(v37, v31);
            v39 = v37 + v31;
            if (v38)
            {
              goto LABEL_45;
            }

            v28[2] = v39;
          }

          goto LABEL_15;
        }
      }

      v29 = v71;
      if (v31)
      {
        goto LABEL_43;
      }

LABEL_15:
      v27 += *&v72;
      if (!--v26)
      {
        goto LABEL_30;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v40 = v28[2];
  if (!v40)
  {
LABEL_39:

    return v18;
  }

  v41 = 0;
  v42 = &off_1E858B000;
LABEL_33:
  v43 = 0;
  v71 = v41 + 1;
  while (1)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = v73;
    *(v47 + 32) = sub_1D9C7E06C();
    *(v47 + 40) = sub_1D9C7E06C();
    if (v41 != v43)
    {
      break;
    }

    *(v47 + 48) = sub_1D9C7E06C();
    *(v47 + 56) = sub_1D9C7E06C();
    v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v42[266]];
LABEL_35:
    v45 = v44;
    sub_1D99CC024();
    v46 = sub_1D9C7DF1C();

    [v18 setObject:v45 forKeyedSubscript:v46];
    ++v43;

    v42 = &off_1E858B000;
    if (v40 == v43)
    {
      v41 = v71;
      if (v71 == v40)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }
  }

  *(v47 + 48) = sub_1D9C7E06C();
  result = sub_1D9C7E06C();
  *(v47 + 56) = result;
  if (v41 < v28[2])
  {
    v48 = _s14DetectedResultVMa();
    v49 = *(v48 - 8);
    v50 = v28 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v51 = *(v49 + 72);
    v52 = *(v48 + 24);
    v53 = &v50[v51 * v41 + v52];
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[2];
    v57 = v53[3];
    v58 = &v50[v51 * v43 + v52];
    v59 = *v58;
    v60 = v58[1];
    v61 = v58[2];
    v62 = v58[3];
    v74.origin.x = *v53;
    v74.origin.y = v55;
    v74.size.width = v56;
    v74.size.height = v57;
    v72 = v54 + CGRectGetWidth(v74) * 0.5;
    v75.origin.x = v54;
    v75.origin.y = v55;
    v75.size.width = v56;
    v75.size.height = v57;
    v63 = v55 + CGRectGetHeight(v75) * 0.5;
    v76.origin.x = v59;
    v76.origin.y = v60;
    v76.size.width = v61;
    v76.size.height = v62;
    v64 = v59 + CGRectGetWidth(v76) * 0.5;
    v77.origin.x = v59;
    v77.origin.y = v60;
    v77.size.width = v61;
    v77.size.height = v62;
    Height = CGRectGetHeight(v77);
    *&Height = (v72 - v64) * (v72 - v64) + (v63 - (v60 + Height * 0.5)) * (v63 - (v60 + Height * 0.5));
    *&v63 = (2.0 - *&Height) * 0.5;
    v66 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v67) = LODWORD(v63);
    v44 = [v66 initWithFloat_];
    goto LABEL_35;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

unint64_t sub_1D99CC024()
{
  result = qword_1EDD2C390;
  if (!qword_1EDD2C390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2C390);
  }

  return result;
}

uint64_t sub_1D99CC070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99CC0F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99CC158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99CC1C0(char *a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9C7D8DC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7B80C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51308);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v36 - v13;
  v15 = type metadata accessor for MLModelBundle();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v7 + 16);
  v42 = a1;
  v20(v11, a1, v6, v17);
  sub_1D9B3669C(v11, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D99CC868(v14);
    v21 = v39;
    static Logger.argos.getter(v39);
    (v20)(v40, v42, v6);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v43 = v25;
      *v24 = 136315138;
      sub_1D99AB1D0();
      v26 = v40;
      v27 = sub_1D9C7E7AC();
      v29 = v28;
      v30 = *(v7 + 8);
      v30(v26, v6);
      v31 = sub_1D9A0E224(v27, v29, &v43);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_1D9962000, v22, v23, "Failed to initialize VI Model bundle %s)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1DA7405F0](v25, -1, -1);
      MEMORY[0x1DA7405F0](v24, -1, -1);

      v30(v42, v6);
      (*(v37 + 8))(v39, v38);
    }

    else
    {

      v35 = *(v7 + 8);
      v35(v42, v6);
      v35(v40, v6);
      (*(v37 + 8))(v21, v38);
    }

    type metadata accessor for ModelBundleProvider();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v7 + 8))(v42, v6);
    sub_1D99CC930(v14, v19, type metadata accessor for MLModelBundle);
    v32 = v36;
    sub_1D99A3FE8(&v19[*(v15 + 20)], v36);
    sub_1D99CC8D0(v19, type metadata accessor for MLModelBundle);
    v33 = v41;
    sub_1D99CC930(v32, v41 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info, type metadata accessor for MLModelInfo);
    return v33;
  }
}

uint64_t sub_1D99CC6F8()
{
  sub_1D99CC8D0(v0 + OBJC_IVAR____TtC12VisualLookUp19ModelBundleProvider_info, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ModelBundleProvider()
{
  result = qword_1ECB512F8;
  if (!qword_1ECB512F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99CC7C4()
{
  result = type metadata accessor for MLModelInfo(319);
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

uint64_t sub_1D99CC868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99CC8D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99CC930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99CC998@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = &v53 - v7;
  v8 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig(0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D9C7D8DC();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  v18 = sub_1D9C7DCDC();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v64 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  MEMORY[0x1EEE9AC00](v64);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  v24 = [objc_opt_self() defaultManager];
  v61 = a1;
  v25 = sub_1D9C7DC4C();
  v26 = [v24 contentsAtPath_];

  if (v26)
  {
    v60 = a3;
    v27 = sub_1D9C7B87C();
    v29 = v28;

    v30 = sub_1D9B88EB8(v27, v29);
    v54 = v17;
    v38 = v30;
    v40 = v39;
    sub_1D99A5748(v27, v29);

    sub_1D9C7DCBC();
    v55 = v38;
    v56 = v40;
    sub_1D9C7DC9C();
    sub_1D99CD250();
    memset(v67, 0, sizeof(v67));
    v68 = 0;
    v41 = v64;
    sub_1D9C7D69C();
    v42 = v54;
    static Logger.argos.getter(v54);
    sub_1D99CD2A8(v23, v20);
    v43 = sub_1D9C7D8BC();
    v44 = sub_1D9C7E09C();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v60;
    if (v45)
    {
      LODWORD(v61) = v44;
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      v48 = v58;
      sub_1D99CD30C(&v20[*(v41 + 20)], v58);
      v49 = v63;
      v50 = *(v62 + 48);
      if (v50(v48, 1, v63) == 1)
      {
        v51 = v57;
        *v57 = 0;
        *(v51 + 2) = 0;
        sub_1D9C7D3BC();
        sub_1D99CD3E4(v20, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
        if (v50(v48, 1, v49) != 1)
        {
          sub_1D99CD37C(v48);
        }
      }

      else
      {
        sub_1D99CD3E4(v20, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
        v51 = v57;
        sub_1D99CD444(v48, v57, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);
      }

      v52 = *v51;
      sub_1D99CD3E4(v51, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig.ImageSizeConfig);
      *(v47 + 4) = v52;
      _os_log_impl(&dword_1D9962000, v43, v61, "Loaded eligibility config with min image size %{public}f", v47, 0xCu);
      MEMORY[0x1DA7405F0](v47, -1, -1);
      sub_1D99A5748(v55, v56);

      v46 = v60;
    }

    else
    {
      sub_1D99A5748(v55, v56);

      sub_1D99CD3E4(v20, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
    }

    (*(v65 + 8))(v42, v66);
    return sub_1D99CD444(v23, v46, type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig);
  }

  else
  {

    static Logger.argos.getter(v14);

    v31 = sub_1D9C7D8BC();
    v32 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v67[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_1D9A0E224(v61, a2, v67);
      _os_log_impl(&dword_1D9962000, v31, v32, "Failed to load data at path %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1DA7405F0](v34, -1, -1);
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    (*(v65 + 8))(v14, v66);
    v35 = v62;
    v36 = v64;
    sub_1D9C7D3BC();
    return (*(v35 + 56))(a3 + *(v36 + 20), 1, 1, v63);
  }
}

unint64_t sub_1D99CD250()
{
  result = qword_1EDD2F7C8;
  if (!qword_1EDD2F7C8)
  {
    type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2F7C8);
  }

  return result;
}

uint64_t sub_1D99CD2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_EligibilityConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99CD30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99CD37C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99CD3E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99CD444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double S2AreaCentroid.centroid.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

VisualLookUp::S2AreaCentroid __swiftcall S2AreaCentroid.init(area:centroid:)(Swift::Double area, VisualLookUp::S2Point centroid)
{
  v4 = v2[2];
  *v3 = area;
  v5 = *v2;
  *(v3 + 8) = *v2;
  *(v3 + 24) = v4;
  result.centroid.z = centroid.z;
  result.centroid.y = centroid.y;
  result.area = *&v5;
  result.centroid.x = v4;
  return result;
}

uint64_t ObjectKnowledgeCSUCarrier.csuLocalizedLabel.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ObjectKnowledgeCSUCarrier.csuCategory.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ObjectKnowledgeCSUCarrier.csuVertical.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

unint64_t sub_1D99CD5CC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x69676E6F4C757363;
    v7 = 0x746974614C757363;
    if (a1 != 10)
    {
      v7 = 0x6973726556757363;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6765746143757363;
    v9 = 0x6974726556757363;
    if (a1 != 7)
    {
      v9 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x646951757363;
    v2 = 0xD00000000000001BLL;
    v3 = 0x69666E6F43757363;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x7079546449757363;
    if (a1 != 1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D99CD790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D99CF900(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D99CD7C4(uint64_t a1)
{
  v2 = sub_1D99CF29C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99CD800(uint64_t a1)
{
  v2 = sub_1D99CF29C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ObjectKnowledgeCSUCarrier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51318);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v24 = *(v1 + 8);
  v7 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = v7;
  v21 = *(v1 + 32);
  v20 = *(v1 + 48);
  v8 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v8;
  v9 = *(v1 + 80);
  v16 = *(v1 + 72);
  v17 = v9;
  v15 = *(v1 + 88);
  v10 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99CF29C();
  sub_1D9C7E96C();
  LOBYTE(v27) = 0;
  v11 = v25;
  sub_1D9C7E77C();
  if (!v11)
  {
    v12 = v21;
    LODWORD(v25) = v10;
    LOBYTE(v27) = 1;
    sub_1D9C7E75C();
    LOBYTE(v27) = 2;
    sub_1D9C7E6EC();
    v27 = v12;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51328);
    sub_1D99CF2F0();
    sub_1D9C7E74C();
    LOBYTE(v27) = 4;
    sub_1D9C7E70C();
    LOBYTE(v27) = 5;
    sub_1D9C7E6FC();
    LOBYTE(v27) = 6;
    sub_1D9C7E6EC();
    LOBYTE(v27) = 7;
    sub_1D9C7E6EC();
    v27 = v15;
    v26 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51340);
    sub_1D99CF398();
    sub_1D9C7E74C();
    LOBYTE(v27) = 9;
    sub_1D9C7E70C();
    LOBYTE(v27) = 10;
    sub_1D9C7E70C();
    LOBYTE(v27) = 11;
    sub_1D9C7E76C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ObjectKnowledgeCSUCarrier.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v12 = *(v2 + 88);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  MEMORY[0x1DA73EB00](*v2);
  sub_1D9C7E90C();
  sub_1D9C7DD6C();
  sub_1D99CEAF8(a1, v4);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1DA73EB00](*&v8);
  sub_1D9C7E8FC();
  sub_1D9C7DD6C();
  sub_1D9C7DD6C();
  sub_1D99CE688(a1, v12);
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1DA73EB00](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1DA73EB00](*&v10);
  return sub_1D9C7E91C();
}

uint64_t ObjectKnowledgeCSUCarrier.hashValue.getter()
{
  sub_1D9C7E8DC();
  ObjectKnowledgeCSUCarrier.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t ObjectKnowledgeCSUCarrier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51360);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99CF29C();
  sub_1D9C7E95C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v48) = 0;
  v9 = sub_1D9C7E68C();
  LOBYTE(v48) = 1;
  v10 = sub_1D9C7E66C();
  LOBYTE(v48) = 2;
  *&v39 = sub_1D9C7E5FC();
  *(&v39 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51328);
  LOBYTE(v40) = 3;
  sub_1D99CF464();
  sub_1D9C7E65C();
  v38 = v48;
  LOBYTE(v48) = 4;
  v37 = 0;
  sub_1D9C7E61C();
  v13 = v12;
  LOBYTE(v48) = 5;
  v34 = sub_1D9C7E60C();
  LOBYTE(v48) = 6;
  v33 = sub_1D9C7E5FC();
  v36 = v14;
  LOBYTE(v48) = 7;
  v32 = sub_1D9C7E5FC();
  v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51340);
  LOBYTE(v40) = 8;
  sub_1D99CF50C();
  sub_1D9C7E65C();
  v31 = v48;
  LOBYTE(v48) = 9;
  sub_1D9C7E61C();
  v17 = v16;
  LOBYTE(v48) = 10;
  sub_1D9C7E61C();
  v19 = v18;
  v62 = 11;
  LODWORD(v37) = sub_1D9C7E67C();
  v34 &= 1u;
  v20 = v34;
  (*(v6 + 8))(v8, v5);
  *&v40 = v9;
  WORD4(v40) = v10;
  v41 = v39;
  v21 = v38;
  *&v42 = v38;
  *(&v42 + 1) = v13;
  LOBYTE(v43) = v20;
  *(&v43 + 1) = v33;
  v22 = v36;
  *&v44 = v36;
  *(&v44 + 1) = v32;
  *&v45 = v35;
  v23 = v31;
  *(&v45 + 1) = v31;
  *&v46 = v17;
  *(&v46 + 1) = v19;
  v24 = v37;
  v47 = v37;
  *(a2 + 112) = v37;
  v25 = v45;
  *(a2 + 64) = v44;
  *(a2 + 80) = v25;
  *(a2 + 96) = v46;
  v26 = v40;
  v27 = v41;
  v28 = v43;
  *(a2 + 32) = v42;
  *(a2 + 48) = v28;
  *a2 = v26;
  *(a2 + 16) = v27;
  sub_1D99CF644(&v40, &v48);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v48 = v9;
  v49 = v10;
  v50 = v39;
  v51 = v21;
  v52 = v13;
  v53 = v34;
  v54 = v33;
  v55 = v22;
  v56 = v32;
  v57 = v35;
  v58 = v23;
  v59 = v17;
  v60 = v19;
  v61 = v24;
  return sub_1D99CF67C(&v48);
}

uint64_t sub_1D99CE4A8()
{
  sub_1D9C7E8DC();
  ObjectKnowledgeCSUCarrier.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99CE4EC()
{
  sub_1D9C7E8DC();
  ObjectKnowledgeCSUCarrier.hash(into:)(v1);
  return sub_1D9C7E93C();
}

uint64_t sub_1D99CE528(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA73EAC0](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1D9C7DD6C();

        sub_1D9C7E91C();
        result = sub_1D9C7E93C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99CE688(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v52 = sub_1D9C7B98C();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513A8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v43 - v9;
  v11 = *(a2 + 64);
  v43[0] = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v43[1] = v3 + 16;
  v51 = (v3 + 32);
  v46 = v3;
  v47 = a2;
  v48 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v19 = &unk_1D9C88E40;
  v44 = v10;
  v45 = v8;
  while (1)
  {
    v20 = v19;
    v53 = v17;
    if (!v14)
    {
      break;
    }

    v21 = v18;
LABEL_13:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v46;
    v27 = v47;
    v28 = v50;
    v29 = v52;
    (*(v46 + 16))(v50, *(v47 + 48) + *(v46 + 72) * v25, v52);
    v30 = *(*(v27 + 56) + 8 * v25);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0);
    v32 = *(v31 + 48);
    v33 = *(v26 + 32);
    v8 = v45;
    v33(v45, v28, v29);
    *&v8[v32] = v30;
    (*(*(v31 - 8) + 56))(v8, 0, 1, v31);

    v23 = v21;
    v19 = v20;
    v10 = v44;
LABEL_14:
    sub_1D99B1C20(v8, v10, &qword_1ECB513A8);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0);
    if ((*(*(v34 - 8) + 48))(v10, 1, v34) == 1)
    {

      return MEMORY[0x1DA73EAC0](v53);
    }

    v35 = *(v34 + 48);
    v36 = v52;
    v37 = v23;
    v38 = v50;
    (*v51)(v50, v10, v52);
    v39 = *&v10[v35];
    v40 = *(v49 + 48);
    v54[2] = *(v49 + 32);
    v54[3] = v40;
    v55 = *(v49 + 64);
    v41 = *(v49 + 16);
    v54[0] = *v49;
    v54[1] = v41;
    sub_1D99CFCF0(&qword_1EDD2C2F8);
    sub_1D9C7DBDC();
    (*v48)(v38, v36);
    sub_1D99CEF88(v54, v39);

    result = sub_1D9C7E93C();
    v17 = result ^ v53;
    v18 = v37;
  }

  if (v15 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v15)
    {
      v19 = v20;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B0);
      (*(*(v42 - 8) + 56))(v8, 1, 1, v42);
      v14 = 0;
      goto LABEL_14;
    }

    v14 = *(v43[0] + 8 * v21);
    ++v18;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D99CEAF8(__int128 *a1, uint64_t a2)
{
  v49 = a1;
  v52 = sub_1D9C7B98C();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513B8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = *(a2 + 64);
  v42 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v41 = (v11 + 63) >> 6;
  v44 = v3 + 16;
  v14 = (v3 + 32);
  v46 = v3;
  v47 = a2;
  v48 = (v3 + 8);

  v16 = 0;
  v17 = 0;
  v45 = v9;
  v43 = (v3 + 32);
  if (v13)
  {
    while (1)
    {
      v50 = v16;
      v18 = v17;
LABEL_13:
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v22 = v21 | (v18 << 6);
      v24 = v46;
      v23 = v47;
      v26 = v51;
      v25 = v52;
      (*(v46 + 16))(v51, *(v47 + 48) + *(v46 + 72) * v22, v52);
      v27 = (*(v23 + 56) + 16 * v22);
      v29 = *v27;
      v28 = v27[1];
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0);
      v31 = v53;
      v32 = (v53 + *(v30 + 48));
      v33 = *(v24 + 32);
      v14 = v43;
      v33(v53, v26, v25);
      *v32 = v29;
      v32[1] = v28;
      (*(*(v30 - 8) + 56))(v31, 0, 1, v30);

      v20 = v18;
      v9 = v45;
      v16 = v50;
LABEL_14:
      sub_1D99B1C20(v53, v9, &qword_1ECB513B8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0);
      if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
      {
        break;
      }

      v36 = v51;
      v35 = v52;
      (*v14)(v51, v9, v52);
      v37 = v49[3];
      v56 = v49[2];
      v57 = v37;
      v58 = *(v49 + 8);
      v38 = v49[1];
      v54 = *v49;
      v55 = v38;
      sub_1D99CFCF0(&qword_1EDD2C2F8);
      sub_1D9C7DBDC();
      (*v48)(v36, v35);
      sub_1D9C7DD6C();

      result = sub_1D9C7E93C();
      v16 ^= result;
      v17 = v20;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1DA73EAC0](v16);
  }

  else
  {
LABEL_5:
    if (v41 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v41;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v41)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB513C0);
        (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
        v13 = 0;
        goto LABEL_14;
      }

      v13 = *(v42 + 8 * v18);
      ++v17;
      if (v13)
      {
        v50 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D99CEF88(uint64_t a1, uint64_t a2)
{
  sub_1D9C7E93C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA73EAC0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1D9C7E8DC();

        sub_1D9C7DD6C();
        v11 = sub_1D9C7E93C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12VisualLookUp25ObjectKnowledgeCSUCarrierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v28 = *(a1 + 80);
    v29 = *(a1 + 72);
    v26 = *(a1 + 88);
    v10 = *(a1 + 96);
    v9 = *(a1 + 104);
    v27 = *(a1 + 112);
    v11 = *(a2 + 32);
    v12 = *(a2 + 40);
    v13 = *(a2 + 48);
    v14 = *(a2 + 56);
    v15 = *(a2 + 64);
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    v24 = *(a2 + 88);
    v19 = *(a2 + 96);
    v18 = *(a2 + 104);
    v25 = *(a2 + 112);
    if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }

    sub_1D9A01E50(v4, v11);
    v21 = v20;
    result = 0;
    if (v21 & 1) == 0 || v5 != v12 || ((v6 ^ v13))
    {
      return result;
    }

    if ((v7 != v14 || v8 != v15) && (sub_1D9C7E7DC() & 1) == 0 || (v29 != v16 || v28 != v17) && (sub_1D9C7E7DC() & 1) == 0)
    {
      return 0;
    }

    sub_1D9A02310(v26, v24);
    v23 = v22 & (v10 == v19);
    if (v9 != v18)
    {
      v23 = 0;
    }

    if (v27 == v25)
    {
      return v23;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D99CF29C()
{
  result = qword_1ECB51320;
  if (!qword_1ECB51320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51320);
  }

  return result;
}

unint64_t sub_1D99CF2F0()
{
  result = qword_1ECB51330;
  if (!qword_1ECB51330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51328);
    sub_1D99CFCF0(&qword_1ECB51338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51330);
  }

  return result;
}

unint64_t sub_1D99CF398()
{
  result = qword_1ECB51348;
  if (!qword_1ECB51348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51340);
    sub_1D99CFCF0(&qword_1ECB51338);
    sub_1D99CF5D8(&qword_1ECB51350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51348);
  }

  return result;
}

unint64_t sub_1D99CF464()
{
  result = qword_1ECB51368;
  if (!qword_1ECB51368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51328);
    sub_1D99CFCF0(&qword_1ECB51370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51368);
  }

  return result;
}

unint64_t sub_1D99CF50C()
{
  result = qword_1ECB51378;
  if (!qword_1ECB51378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51340);
    sub_1D99CFCF0(&qword_1ECB51370);
    sub_1D99CF5D8(&qword_1ECB51380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51378);
  }

  return result;
}

uint64_t sub_1D99CF5D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51358);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D99CF6B0()
{
  result = qword_1ECB51388;
  if (!qword_1ECB51388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51388);
  }

  return result;
}

__n128 __swift_memcpy116_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1D99CF730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 116))
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

uint64_t sub_1D99CF778(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 116) = 1;
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

    *(result + 116) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D99CF7FC()
{
  result = qword_1ECB51390;
  if (!qword_1ECB51390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51390);
  }

  return result;
}

unint64_t sub_1D99CF854()
{
  result = qword_1ECB51398;
  if (!qword_1ECB51398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51398);
  }

  return result;
}

unint64_t sub_1D99CF8AC()
{
  result = qword_1ECB513A0;
  if (!qword_1ECB513A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB513A0);
  }

  return result;
}

uint64_t sub_1D99CF900(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646951757363 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079546449757363 && a2 == 0xE900000000000065 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9CA46B0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9CA46D0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69666E6F43757363 && a2 == 0xED000065636E6564 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CA46F0 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6765746143757363 && a2 == 0xEB0000000079726FLL || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974726556757363 && a2 == 0xEB000000006C6163 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9CA4710 == a2 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69676E6F4C757363 && a2 == 0xEC00000065747574 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746974614C757363 && a2 == 0xEB00000000657475 || (sub_1D9C7E7DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6973726556757363 && a2 == 0xEA00000000006E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D9C7E7DC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1D99CFCF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9C7B98C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D99CFD34(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(1), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

uint64_t S2Projections.Projection.hashValue.getter()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  MEMORY[0x1DA73EAC0](v1);
  return sub_1D9C7E93C();
}

double sub_1D99D02AC(uint64_t a1, void *a2, void *a3)
{
  if (qword_1ECB50900 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a2 = v4;
    a3 = v5;
  }

  result = *&qword_1ECB51408;
  *a2 = qword_1ECB51408;
  *a3 = 1;
  return result;
}

double sub_1D99D0478@<D0>(void *a1@<X0>, double *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    v8 = a4;
    swift_once();
    a2 = v6;
    a4 = v8;
    a3 = v7;
  }

  result = *a2;
  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
  return result;
}

double static S2Projections.maxDiagAspect.getter()
{
  if (qword_1ECB50958 != -1)
  {
    swift_once();
  }

  return *&qword_1ECB514B8;
}

double static S2Projections.stToUV(s:)(double a1)
{
  v1 = a1 < 0.0;
  v2 = 1.0 - (1.0 - a1) * (1.0 - a1);
  v3 = (a1 + 1.0) * (a1 + 1.0) + -1.0;
  if (v1)
  {
    v3 = v2;
  }

  return v3 * 0.333333333;
}

void static S2Projections.uvToST(u:)(double a1)
{
  v1 = a1 * 3.0;
  if (a1 >= 0.0)
  {
    sqrt(v1 + 1.0);
  }

  else
  {
    sqrt(1.0 - v1);
  }
}

uint64_t static S2Projections.faceUvToXyz(face:u:v:)@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result <= 1)
  {
    v4 = 1.0;
    if (!result)
    {
      goto LABEL_12;
    }

    if (result == 1)
    {
      v4 = -a3;
      a3 = 1.0;
      goto LABEL_12;
    }

LABEL_11:
    v4 = a4;
    a4 = -1.0;
    goto LABEL_12;
  }

  if (result == 2)
  {
    v4 = -a3;
    a3 = -a4;
    a4 = 1.0;
    goto LABEL_12;
  }

  if (result == 3)
  {
    v5 = -a4;
    a4 = -a3;
    v4 = -1.0;
    a3 = v5;
    goto LABEL_12;
  }

  if (result != 4)
  {
    goto LABEL_11;
  }

  v4 = a4;
  a4 = -a3;
  a3 = -1.0;
LABEL_12:
  *a2 = v4;
  a2[1] = a3;
  a2[2] = a4;
  return result;
}

double static S2Projections.validFaceXyzToUv(face:point:)@<D0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  if (a1 <= 1)
  {
    if (!a1)
    {
      result = v5 / v4;
      *a3 = v3 / v4;
      a3[1] = result;
      return result;
    }

    if (a1 == 1)
    {
      v6 = -v4 / v3;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v10 = v5 / v4;
      result = v3 / v4;
      *a3 = v10;
      a3[1] = v3 / v4;
      return result;
    }

    if (a1 == 4)
    {
      v6 = v5 / v3;
      v5 = -v4;
LABEL_9:
      result = v5 / v3;
      *a3 = v6;
      a3[1] = result;
      return result;
    }

LABEL_13:
    v8 = -v3 / v5;
    v9 = -v4;
    goto LABEL_14;
  }

  v8 = -v4 / v5;
  v9 = -v3;
LABEL_14:
  result = v9 / v5;
  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t static S2Projections.xyzToFace(point:)(double *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = fabs(*a1);
  v4 = fabs(v1);
  v5 = fabs(v2);
  if (v4 < v3)
  {
    if (v5 < v3)
    {
      if (*a1 >= 0.0)
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    goto LABEL_8;
  }

  if (v5 >= v4)
  {
LABEL_8:
    if (v2 >= 0.0)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  if (v1 >= 0.0)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

void static S2Projections.faceXyzToUv(face:point:)(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[1];
  v5 = a2[2];
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v7 = *a2;
    }

    else
    {
      v7 = a2[2];
    }

    if (a1 == 4)
    {
      v7 = a2[1];
    }

    if (v7 < 0.0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (a1)
    {
      v6 = a2[2];
    }

    else
    {
      v6 = *a2;
    }

    if (a1 == 1)
    {
      v6 = a2[1];
    }

    if (v6 > 0.0)
    {
LABEL_8:
      v8[0] = *a2;
      v8[1] = v4;
      v8[2] = v5;
      static S2Projections.validFaceXyzToUv(face:point:)(a1, v8, &v9);
      *a3 = v9;
      *(a3 + 16) = 0;
      return;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
}

uint64_t static S2Projections.getUNorm(face:u:)@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v3 = -1.0;
  if (result <= 1)
  {
    v4 = 0.0;
    if (result)
    {
      if (result != 1)
      {
        goto LABEL_12;
      }

      v5 = 1.0;
      v3 = a3;
    }

    else
    {
      v5 = a3;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        v3 = 0.0;
        v5 = 1.0;
        v4 = a3;
        break;
      case 3:
        v5 = -a3;
        v4 = 1.0;
        v3 = 0.0;
        break;
      case 4:
        v3 = -a3;
        v4 = 1.0;
LABEL_13:
        v5 = 0.0;
        break;
      default:
LABEL_12:
        v4 = -a3;
        goto LABEL_13;
    }
  }

  *a2 = v5;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t static S2Projections.getVNorm(face:v:)@<X0>(uint64_t result@<X0>, double *a2@<X8>, double a3@<D0>)
{
  if (result <= 1)
  {
    if (!result)
    {
      v4 = -a3;
      a3 = 1.0;
      v3 = 0.0;
      goto LABEL_13;
    }

    if (result == 1)
    {
      v3 = -a3;
      a3 = 1.0;
      v4 = 0.0;
      goto LABEL_13;
    }

LABEL_12:
    v3 = 0.0;
    v4 = 1.0;
    goto LABEL_13;
  }

  v3 = -1.0;
  if (result == 2)
  {
    a3 = -a3;
    v4 = 0.0;
    goto LABEL_13;
  }

  if (result == 3)
  {
    v4 = a3;
    a3 = 0.0;
    goto LABEL_13;
  }

  if (result != 4)
  {
    goto LABEL_12;
  }

  v4 = 1.0;
  v3 = a3;
  a3 = 0.0;
LABEL_13:
  *a2 = v4;
  a2[1] = v3;
  a2[2] = a3;
  return result;
}

uint64_t static S2Projections.getNorm(face:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result <= 1)
  {
    if (!result)
    {
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0x3FF0000000000000;
      return result;
    }

    if (result == 1)
    {
      *a2 = xmmword_1D9C86350;
      a2[2] = 0;
      return result;
    }
  }

  else
  {
    switch(result)
    {
      case 2:
        *a2 = vnegq_f64(0);
        a2[2] = 0x3FF0000000000000;
        return result;
      case 3:
        v2 = xmmword_1D9C86340;
        goto LABEL_11;
      case 4:
        v2 = xmmword_1D9C86330;
LABEL_11:
        *a2 = v2;
        a2[2] = 0x8000000000000000;
        return result;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xBFF0000000000000;
  return result;
}

double static S2Projections.getUAxis(face:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3 || a1 == 4)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0xBFF0000000000000;
        return result;
      }

      goto LABEL_8;
    }

LABEL_7:
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0xBFF0000000000000;
    return result;
  }

  if (a1 == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  result = 0.0;
  *a2 = xmmword_1D9C86360;
  a2[2] = 0;
  return result;
}

uint64_t static S2Projections.getVAxis(face:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result <= 1)
  {
    if (result <= 1)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0x3FF0000000000000;
      return result;
    }
  }

  else if (result == 2 || result == 3)
  {
    *a2 = xmmword_1D9C86330;
    a2[2] = 0;
    return result;
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0x3FF0000000000000;
  return result;
}

unint64_t sub_1D99D0A88()
{
  result = qword_1ECB514C0;
  if (!qword_1ECB514C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB514C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for S2Projections(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for S2Projections(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D99D0C54()
{

  return sub_1D9C7DD0C();
}

uint64_t sub_1D99D0CA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v13 = *(v0 + 32);
  v14 = v2;
  v3 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v3;
  v4 = *(v0 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(v0 + 64);
  v11 = *(v0 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1D99D0F10(v12, v6);
  return sub_1D9C7DD0C();
}

uint64_t sub_1D99D0D54(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1D9C7DD0C();
}

uint64_t sub_1D99D0E44()
{
  sub_1D99CB864(*v0, v0[1]);

  return sub_1D9C7DD0C();
}

uint64_t sub_1D99D0E94()
{
  v1 = MEMORY[0x1EEE9AC00](v0);
  sub_1D99B1BBC(v1, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1D9C7DD0C();
}

void *sub_1D99D0F70()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v1[3] = v3;
  v1[4] = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51508);
  swift_allocObject();
  v1[2] = sub_1D99D2988(8, sub_1D99D2C54, v4);
  return v1;
}

uint64_t sub_1D99D1050@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[0] = 0xD00000000000001DLL;
  v6[1] = 0x80000001D9CA47C0;
  v6[2] = "NSFW Model Loading";
  v6[3] = 18;
  v7 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  sub_1D9AFD4B8(v6, a1);

  v4 = [objc_allocWithZone(VINSFWModelHandler) initWithPreferredMetalDevice_];
  sub_1D9AFCCA4();

  *a2 = v4;
  return result;
}

uint64_t sub_1D99D1128(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2[3];
  os_unfair_lock_lock(v9 + 4);
  v10 = v2[4];
  if (!a1)
  {
    if (v10)
    {
      goto LABEL_9;
    }

LABEL_7:
    os_unfair_lock_unlock(v9 + 4);
    return 0;
  }

  if (v10)
  {
    v11 = v10 == a1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    goto LABEL_7;
  }

LABEL_9:
  static Logger.argos.getter(v8);
  v13 = sub_1D9C7D8BC();
  v14 = sub_1D9C7E09C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D9962000, v13, v14, "Updating NSFW Model due to MetalDevice switch", v15, 2u);
    MEMORY[0x1DA7405F0](v15, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v2[4] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v16 = v2[2];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v4;
  v18 = *(v16 + 80);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v18 + 4);
  v19 = *(v16 + 40);
  *(v16 + 40) = sub_1D99D2C00;
  *(v16 + 48) = v17;
  sub_1D9979BF4(v19);
  v12 = 1;
  swift_beginAccess();
  v20 = *(v16 + 24);
  *(v16 + 24) = 0;
  v21 = *(v16 + 32);
  *(v16 + 32) = -1;

  sub_1D99D2BD0(v20, v21);
  os_unfair_lock_unlock(v18 + 4);

  os_unfair_lock_unlock(v9 + 4);
  return v12;
}

uint64_t sub_1D99D1398(_OWORD *a1, void *a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  *&v181 = a6;
  *&v182 = a5;
  v159 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v165 = v155 - v10;
  v164 = type metadata accessor for VisualUnderstanding.ImageRegion();
  *&v173 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v177 = (v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v166 = v155 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v169 = v155 - v15;
  v176 = sub_1D9C7D8DC();
  v180 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176);
  v175 = v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  *&v172 = v155 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v155 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v155 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v179 = (v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = v155 - v28;
  v30 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v178 = v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v155 - v34;
  v36 = a4[1];
  v224 = *a4;
  *v225 = v36;
  v37 = a4[3];
  *&v225[16] = a4[2];
  *&v225[32] = v37;
  v170 = a3;
  if ((sub_1D9A4D710(a3) & 1) == 0)
  {
    goto LABEL_12;
  }

  v38 = a2;
  v39 = *(v182 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
  v40 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
  swift_beginAccess();
  v168 = v40;
  sub_1D99AB100(v39 + v40, v29, &qword_1ECB514C8);
  v41 = *(v31 + 48);
  v42 = v41(v29, 1, v30);
  *&v182 = v41;
  v171 = v39;
  if (v42 == 1)
  {
    *v35 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    *(v35 + 1) = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
    *(v35 + 2) = sub_1D9A445A8(v43);
    *(v35 + 3) = v43;
    *(v35 + 4) = v43;
    *(v35 + 5) = v43;
    sub_1D9C7D3BC();
    v44 = *(v30 + 48);
    v45 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
    (*(*(v45 - 8) + 56))(&v35[v44], 1, 1, v45);
    if (v41(v29, 1, v30) != 1)
    {
      sub_1D99A6AE0(v29, &qword_1ECB514C8);
    }
  }

  else
  {
    sub_1D99D2B14(v29, v35, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  }

  v46 = v35[1];
  sub_1D99D2AB4(v35, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  if ((v46 & 1) == 0)
  {
LABEL_12:
    v56 = *v225;
    v57 = v159;
    *v159 = v224;
    v57[1] = v56;
    v58 = *&v225[32];
    v57[2] = *&v225[16];
    v57[3] = v58;
    v59 = v170;

    sub_1D99AB100(&v224, &v213, &qword_1ECB514D0);
    return v59;
  }

  v47 = v38;
  if (v224 == 1 || !*v225)
  {
    v60 = sub_1D99D2750(v181);
    v50 = v176;
    v61 = v60;
    v62 = v172;
    static Logger.argos.getter(v172);
    v63 = sub_1D9C7D8BC();
    v64 = sub_1D9C7E09C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1D9962000, v63, v64, "NSFWCheckerProcessor: run nsfw model", v65, 2u);
      v66 = v65;
      v50 = v176;
      MEMORY[0x1DA7405F0](v66, -1, -1);
    }

    (*(v180 + 8))(v62, v50);
    sub_1D9A4D9D4(v47, v61, v181);
    v68 = v67;

    v55 = v68;
  }

  else
  {
    v48 = *v225;

    static Logger.argos.getter(v24);
    sub_1D9A3E0E0(v21);
    v49 = *(v180 + 8);
    v50 = v176;
    v49(v24, v176);
    v51 = sub_1D9C7D8BC();
    v52 = sub_1D9C7E09C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1D9962000, v51, v52, "NSFWCheckerProcessor: using nsfw passed through by framework adopter", v53, 2u);
      v54 = v53;
      v50 = v176;
      MEMORY[0x1DA7405F0](v54, -1, -1);
    }

    v49(v21, v50);
    v55 = v48;
  }

  v222[0] = 0xD00000000000001DLL;
  v222[1] = 0x80000001D9CA47C0;
  v222[2] = "NSFW Model Postprocess Results";
  v222[3] = 30;
  v223 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v69 = v181;

  v157 = sub_1D9AFD4B8(v222, v69);

  v70 = v179;
  sub_1D99AB100(v171 + v168, v179, &qword_1ECB514C8);
  v71 = v182;
  if ((v182)(v70, 1, v30) == 1)
  {
    v72 = MEMORY[0x1E69E7CC0];
    v73 = v178;
    *v178 = 0;
    *(v73 + 1) = sub_1D9A441B8(v72);
    *(v73 + 2) = sub_1D9A445A8(v72);
    *(v73 + 3) = v72;
    *(v73 + 4) = v72;
    *(v73 + 5) = v72;
    sub_1D9C7D3BC();
    v74 = *(v30 + 48);
    v75 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
    (*(*(v75 - 8) + 56))(&v73[v74], 1, 1, v75);
    v76 = v71(v70, 1, v30);
    v77 = v170;
    v78 = v175;
    if (v76 != 1)
    {
      sub_1D99A6AE0(v70, &qword_1ECB514C8);
    }
  }

  else
  {
    v73 = v178;
    sub_1D99D2B14(v70, v178, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
    v77 = v170;
    v78 = v175;
  }

  v79 = sub_1D9A4DE30(v55, v73);

  sub_1D99D2AB4(v73, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
  v156 = v79;
  if (!*(v79 + 2))
  {

LABEL_62:
    v148 = v77;
    v149 = v224;
    if (v224 == 1)
    {
      v150 = 0;
      v151 = 0;
      v149 = 0;
      v181 = 0u;
      v182 = 0u;
    }

    else
    {
      v151 = *(&v224 + 1);
      v150 = *&v225[40];
      v181 = *&v225[24];
      v182 = *&v225[8];
    }

    v152 = v159;
    v153 = v156;
    sub_1D9AFCCA4();

    *v152 = v149;
    *(v152 + 1) = v151;
    *(v152 + 2) = v153;
    v154 = v182;
    *(v152 + 40) = v181;
    *(v152 + 24) = v154;
    *(v152 + 7) = v150;
    return v148;
  }

  v163 = v77[2];
  if (!v163)
  {
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_62;
  }

  v155[1] = 0;
  v81 = 0;
  v158 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v162 = v77 + v158;
  v167 = *(v173 + 72);
  v171 = 0x80000001D9CA3A40;
  v179 = (v180 + 16);
  v178 = (v180 + 8);
  v174 = "NSFW Model Postprocess Results";
  v161 = (v173 + 56);
  v77 = MEMORY[0x1E69E7CC0];
  v160 = (v173 + 48);
  *&v80 = 136315394;
  v173 = v80;
  v172 = xmmword_1D9C86430;
  while (1)
  {
    v170 = v77;
    v168 = v81;
    v82 = v169;
    sub_1D99B1BBC(&v162[v167 * v81], v169);
    sub_1D99B1BBC(v82, v177);
    v83 = *(v82 + 48);
    v84 = *(v83 + 16);
    result = swift_beginAccess();
    *&v181 = v84;
    if (v84)
    {
      break;
    }

    *&v182 = MEMORY[0x1E69E7CC0];
LABEL_54:
    sub_1D99D2AB4(v169, type metadata accessor for VisualUnderstanding.ImageRegion);
    v143 = v177;
    swift_beginAccess();
    v143[6] = v182;
    *(v143 + 18) = 0;

    v144 = v165;
    sub_1D99B1BBC(v143, v165);
    v145 = v164;
    (*v161)(v144, 0, 1, v164);
    sub_1D99D2AB4(v143, type metadata accessor for VisualUnderstanding.ImageRegion);
    if ((*v160)(v144, 1, v145) == 1)
    {
      sub_1D99A6AE0(v144, &qword_1ECB51220);
      v77 = v170;
    }

    else
    {
      sub_1D99D2B14(v144, v166, type metadata accessor for VisualUnderstanding.ImageRegion);
      v77 = v170;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_1D9AF8A90(0, v77[2] + 1, 1, v77);
      }

      v147 = v77[2];
      v146 = v77[3];
      if (v147 >= v146 >> 1)
      {
        v77 = sub_1D9AF8A90(v146 > 1, v147 + 1, 1, v77);
      }

      v77[2] = v147 + 1;
      sub_1D99D2B14(v166, v77 + v158 + v147 * v167, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    v81 = v168 + 1;
    if (v168 + 1 == v163)
    {
      goto LABEL_62;
    }
  }

  v86 = 0;
  v87 = (v83 + 32);
  *&v182 = MEMORY[0x1E69E7CC0];
  v180 = v83;
  while (v86 < *(v83 + 16))
  {
    v88 = *v87;
    v214 = v87[1];
    v213 = v88;
    v89 = v87[2];
    v90 = v87[3];
    v91 = v87[4];
    v218 = v87[5];
    v217 = v91;
    v216 = v90;
    v215 = v89;
    v92 = v87[6];
    v93 = v87[7];
    v94 = v87[8];
    *(v221 + 13) = *(v87 + 141);
    v221[0] = v94;
    v220 = v93;
    v219 = v92;
    v210 = v92;
    v211 = v93;
    v212[0] = v94;
    *(v212 + 13) = *(v221 + 13);
    v206 = v215;
    v207 = v216;
    v208 = v217;
    v209 = v218;
    v204 = v213;
    v205 = v214;
    WORD6(v211) = 0;
    LODWORD(v211) = 0;
    sub_1D99AE054(&v213, v202);
    sub_1D99AE054(&v213, v202);
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
LABEL_43:
      v104 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v104 = qword_1EDD354D8;
      }

      goto LABEL_45;
    }

    v95 = [objc_opt_self() mainBundle];
    v96 = [v95 bundleIdentifier];

    if (v96)
    {
      v97 = sub_1D9C7DC7C();
      v99 = v98;

      if (v97 == 0xD00000000000002BLL && v171 == v99)
      {

LABEL_36:
        v101 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v101 = &off_1ECB51BA8;
        }

        goto LABEL_40;
      }

      v100 = sub_1D9C7E7DC();

      if (v100)
      {
        goto LABEL_36;
      }
    }

    v101 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v101 = &qword_1EDD355A8;
    }

LABEL_40:
    v102 = *(*v101 + 32);

    v103 = sub_1D9C7DC4C();
    LODWORD(v102) = [v102 BOOLForKey_];

    if (!v102)
    {
      goto LABEL_43;
    }

    v104 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v104 = qword_1EDD2C990;
    }

LABEL_45:
    v105 = __swift_project_value_buffer(v50, v104);
    (*v179)(v78, v105, v50);
    v202[6] = v210;
    v202[7] = v211;
    v203[0] = v212[0];
    *(v203 + 13) = *(v212 + 13);
    v202[2] = v206;
    v202[3] = v207;
    v202[4] = v208;
    v202[5] = v209;
    v202[0] = v204;
    v202[1] = v205;
    sub_1D99AE054(v202, &v193);
    v106 = sub_1D9C7D8BC();
    v107 = sub_1D9C7E09C();
    sub_1D99AE0B0(v202);
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v184 = v109;
      *v108 = v173;
      v110 = sub_1D9A15C94(v202[0]);
      v112 = sub_1D9A0E224(v110, v111, &v184);

      *(v108 + 4) = v112;
      *(v108 + 12) = 2080;
      v113 = *v177;
      v114 = *(v177 + 1);
      v115 = *(v177 + 2);
      v116 = *(v177 + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8);
      v117 = swift_allocObject();
      *(v117 + 16) = v172;
      v226.origin.x = v113;
      v226.origin.y = v114;
      v226.size.width = v115;
      v226.size.height = v116;
      MinX = CGRectGetMinX(v226);
      v119 = MEMORY[0x1E69E7DE0];
      *(v117 + 56) = MEMORY[0x1E69E7DE0];
      v120 = sub_1D99D2A0C();
      *(v117 + 64) = v120;
      *(v117 + 32) = MinX;
      v227.origin.x = v113;
      v227.origin.y = v114;
      v227.size.width = v115;
      v227.size.height = v116;
      MinY = CGRectGetMinY(v227);
      *(v117 + 96) = v119;
      *(v117 + 104) = v120;
      *(v117 + 72) = MinY;
      v228.origin.x = v113;
      v228.origin.y = v114;
      v228.size.width = v115;
      v228.size.height = v116;
      Width = CGRectGetWidth(v228);
      *(v117 + 136) = v119;
      *(v117 + 144) = v120;
      *(v117 + 112) = Width;
      v229.origin.x = v113;
      v229.origin.y = v114;
      v229.size.width = v115;
      v229.size.height = v116;
      Height = CGRectGetHeight(v229);
      *(v117 + 176) = v119;
      *(v117 + 184) = v120;
      *(v117 + 152) = Height;
      *&v193 = v113;
      *(&v193 + 1) = v114;
      *&v194 = v115;
      *(&v194 + 1) = v116;
      NormalizedRect.rectID.getter();
      v125 = v124;
      v127 = v126;
      *(v117 + 216) = MEMORY[0x1E69E6158];
      *(v117 + 224) = sub_1D99D2A60();
      *(v117 + 192) = v125;
      *(v117 + 200) = v127;
      v128 = sub_1D9C7DCAC();
      v130 = sub_1D9A0E224(v128, v129, &v184);

      *(v108 + 14) = v130;
      v78 = v175;
      _os_log_impl(&dword_1D9962000, v106, v107, "Unselected %s from region %s because of sensitive content.", v108, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v109, -1, -1);
      v131 = v108;
      v50 = v176;
      MEMORY[0x1DA7405F0](v131, -1, -1);
    }

    (*v178)(v78, v50);
    swift_beginAccess();
    v190 = v210;
    v191 = v211;
    v192[0] = v212[0];
    *(v192 + 13) = *(v212 + 13);
    v186 = v206;
    v187 = v207;
    v188 = v208;
    v189 = v209;
    v184 = v204;
    v185 = v205;
    v199 = v210;
    v200 = v211;
    v201[0] = v212[0];
    *(v201 + 13) = *(v212 + 13);
    v195 = v206;
    v196 = v207;
    v197 = v208;
    v198 = v209;
    v193 = v204;
    v194 = v205;
    sub_1D99AE054(&v184, &v183);
    sub_1D99AE0B0(&v193);
    sub_1D99AE0B0(&v213);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D9AF8974(0, *(v182 + 16) + 1, 1, v182);
      *&v182 = result;
    }

    v133 = *(v182 + 16);
    v132 = *(v182 + 24);
    if (v133 >= v132 >> 1)
    {
      result = sub_1D9AF8974((v132 > 1), v133 + 1, 1, v182);
      *&v182 = result;
    }

    ++v86;
    v134 = v182;
    *(v182 + 16) = v133 + 1;
    v135 = (v134 + 160 * v133);
    v136 = v185;
    v135[2] = v184;
    v135[3] = v136;
    v137 = v186;
    v138 = v187;
    v139 = v189;
    v135[6] = v188;
    v135[7] = v139;
    v135[4] = v137;
    v135[5] = v138;
    v140 = v190;
    v141 = v191;
    v142 = v192[0];
    *(v135 + 173) = *(v192 + 13);
    v135[9] = v141;
    v135[10] = v142;
    v135[8] = v140;
    v87 += 10;
    v83 = v180;
    if (v181 == v86)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
  return result;
}

id sub_1D99D2750(uint64_t a1)
{
  v4 = *(v1 + 80);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  v5 = *(v1 + 32);
  if (v5 != 255)
  {
    v1 = *(v1 + 24);
    if ((v5 & 1) == 0)
    {
      sub_1D99D2BF4(v1);
      os_unfair_lock_unlock(v4 + 4);
      return v1;
    }

    v18 = v1;
    sub_1D99D2BF4(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030);
    swift_willThrowTypedImpl();
LABEL_9:
    os_unfair_lock_unlock(v4 + 4);
    return v1;
  }

  v6 = *(v1 + 56);
  if (!v6)
  {
    sub_1D99D2B7C();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  v7 = v1;
  v1 = *(v1 + 64);

  v6(&v18, a1);
  if (v2)
  {
    v8 = v7;
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = v2;
    *(v8 + 24) = v2;
    *(v8 + 32) = 1;
    sub_1D99D2BD0(v9, v10);
    swift_willThrow();
    sub_1D9979BF4(v6);
    goto LABEL_9;
  }

  sub_1D9979BF4(v6);
  v14 = v18;
  v15 = *(v7 + 24);
  *(v7 + 24) = v18;
  v16 = *(v7 + 32);
  *(v7 + 32) = 0;
  v17 = v14;
  sub_1D99D2BD0(v15, v16);
  os_unfair_lock_unlock(v4 + 4);
  return v17;
}

uint64_t sub_1D99D291C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D99D2988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  *(v3 + 32) = -1;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = v7;

  return sub_1D9B76440();
}

unint64_t sub_1D99D2A0C()
{
  result = qword_1ECB514E0;
  if (!qword_1ECB514E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB514E0);
  }

  return result;
}

unint64_t sub_1D99D2A60()
{
  result = qword_1EDD2A860;
  if (!qword_1EDD2A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2A860);
  }

  return result;
}

uint64_t sub_1D99D2AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99D2B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D99D2B7C()
{
  result = qword_1ECB514F0;
  if (!qword_1ECB514F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB514F0);
  }

  return result;
}

void sub_1D99D2BD0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D99D2BE8(a1);
  }
}

id sub_1D99D2C00@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VINSFWModelHandler) initWithPreferredMetalDevice_];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for ObjectDetectionDomainAssignmentRule()
{
  result = qword_1EDD306D0;
  if (!qword_1EDD306D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99D2CE4()
{
  result = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D99D2D6C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X2>, __int128 *a3@<X8>)
{
  v4 = v3;
  v120 = a2;
  v7 = type metadata accessor for ObjectDetectionDomainAssignmentRule();
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = (&v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v113 = (&v110 - v12);
  v13 = sub_1D9C7D8DC();
  v121 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v110 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v118 = &v110 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v114 = &v110 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v110 - v24;
  v26 = _s14DetectedResultVMa();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v31 = a1[7];
  v164 = a1[6];
  v165 = v31;
  v166[0] = a1[8];
  *(v166 + 13) = *(a1 + 141);
  v32 = a1[3];
  v160 = a1[2];
  v161 = v32;
  v33 = a1[5];
  v162 = a1[4];
  v163 = v33;
  v34 = a1[1];
  v158 = *a1;
  v159 = v34;
  if (*(v30 + 104) == 1)
  {
    v35 = a1[7];
    a3[6] = a1[6];
    a3[7] = v35;
    a3[8] = a1[8];
    *(a3 + 141) = *(a1 + 141);
    v36 = a1[3];
    a3[2] = a1[2];
    a3[3] = v36;
    v37 = a1[5];
    a3[4] = a1[4];
    a3[5] = v37;
    v38 = a1[1];
    *a3 = *a1;
    a3[1] = v38;
LABEL_10:
    sub_1D99D39B8(&v158, &v149);
    return result;
  }

  v112 = a3;
  v117 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v4 + 9);
  v40 = (v120 + 24);
  v119 = v13;
  v120 = v30;
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = (v30 + 56);
  }

  v42 = *v41;
  v43 = v28;

  v44 = *v4;
  v111 = v7;
  *&v149 = *(v4 + *(v7 + 28));

  sub_1D9A5FF38(v44, &v149, v42, v25);

  v45 = v43;
  if ((*(v27 + 48))(v25, 1, v43) == 1)
  {
    sub_1D99D3950(v25);
    static Logger.argos.getter(v19);
    sub_1D9A3E0E0(v16);
    v46 = *(v121 + 8);
    v46(v19, v119);
    v47 = sub_1D9C7D8BC();
    v48 = sub_1D9C7E09C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1D9962000, v47, v48, "No satisfied detector label", v49, 2u);
      MEMORY[0x1DA7405F0](v49, -1, -1);
    }

    v46(v16, v119);
    v50 = v165;
    v51 = v112;
    v112[6] = v164;
    v51[7] = v50;
    v51[8] = v166[0];
    *(v51 + 141) = *(v166 + 13);
    v52 = v161;
    v51[2] = v160;
    v51[3] = v52;
    v53 = v163;
    v51[4] = v162;
    v51[5] = v53;
    v54 = v159;
    *v51 = v158;
    v51[1] = v54;
    goto LABEL_10;
  }

  sub_1D99D3A28(v25, v117);
  if (*(v4 + 8) != 1)
  {
    v67 = v118;
    static Logger.argos.getter(v118);
    v114 = v4;
    v68 = v115;
    sub_1D99D3A8C(v4, v115, type metadata accessor for ObjectDetectionDomainAssignmentRule);
    v69 = v116;
    sub_1D99D3A8C(v120, v116, type metadata accessor for VisualUnderstanding.ImageRegion);
    v70 = sub_1D9C7D8BC();
    v71 = sub_1D9C7E09C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v142[0] = v73;
      *v72 = 136315394;
      v74 = v111;
      v75 = sub_1D9A15C94(*(v68 + *(v111 + 20)));
      v76 = v68;
      v78 = v77;
      sub_1D99D3AF4(v76, type metadata accessor for ObjectDetectionDomainAssignmentRule);
      v79 = sub_1D9A0E224(v75, v78, v142);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = v69[1];
      v149 = *v69;
      v150 = v80;
      v81 = NormalizedRect.loggingDescription.getter();
      v83 = v82;
      sub_1D99D3AF4(v69, type metadata accessor for VisualUnderstanding.ImageRegion);
      v84 = sub_1D9A0E224(v81, v83, v142);

      *(v72 + 14) = v84;
      _os_log_impl(&dword_1D9962000, v70, v71, "Assign %s to region %s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v73, -1, -1);
      MEMORY[0x1DA7405F0](v72, -1, -1);

      (*(v121 + 8))(v118, v119);
    }

    else
    {

      sub_1D99D3AF4(v69, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D99D3AF4(v68, type metadata accessor for ObjectDetectionDomainAssignmentRule);
      (*(v121 + 8))(v67, v119);
      v74 = v111;
    }

    v90 = *(v114 + *(v74 + 20));
    v91 = (v117 + *(v45 + 28));
    v92 = *v91;
    v93 = v91[1];
    v94 = v91[2];
    v95 = v91[3];
    v96 = *(v117 + *(v45 + 32));
    LOBYTE(v142[0]) = v90;
    *(v142 + 8) = 0u;
    *(&v142[1] + 8) = 0u;
    BYTE8(v142[2]) = 0;
    v143 = 0u;
    v144 = 0u;
    *&v145 = v92;
    *(&v145 + 1) = v93;
    *&v146 = v94;
    *(&v146 + 1) = v95;
    LODWORD(v147) = 0;
    DWORD1(v147) = v96;
    LOWORD(v148[0]) = 0;
    *(&v147 + 1) = 0;
    *(&v148[1] + 5) = 0;
    *(&v148[0] + 1) = 0;
    *&v148[1] = 0;
    v155 = v164;
    v156 = v165;
    v157[0] = v166[0];
    *(v157 + 13) = *(v166 + 13);
    v151 = v160;
    v152 = v161;
    v153 = v162;
    v154 = v163;
    v149 = v158;
    v150 = v159;
    if (sub_1D99AE104(&v149) == 1)
    {

      v97 = v112;
LABEL_22:
      sub_1D99D3AF4(v117, _s14DetectedResultVMa);
      v130 = v146;
      v131 = v147;
      v132[0] = v148[0];
      *(v132 + 13) = *(v148 + 13);
      v126 = v142[2];
      v127 = v143;
      v128 = v144;
      v129 = v145;
      v98 = v142[0];
      v99 = v142[1];
LABEL_28:
      v124 = v98;
      v125 = v99;
      faiss::NormalizationTransform::~NormalizationTransform(&v124);
      v141[0] = v132[0];
      *(v141 + 13) = *(v132 + 13);
      v135 = v126;
      v136 = v127;
      v137 = v128;
      v138 = v129;
      v133 = v124;
      v134 = v125;
      v106 = v131;
      v97[6] = v130;
      v97[7] = v106;
      v97[8] = v141[0];
      *(v97 + 141) = *(v141 + 13);
      v107 = v136;
      v97[2] = v135;
      v97[3] = v107;
      v108 = v138;
      v97[4] = v137;
      v97[5] = v108;
      result = *&v133;
      v109 = v134;
      *v97 = v133;
      v97[1] = v109;
      return result;
    }

    v100 = sub_1D9A15C94(v149);
    v102 = v101;
    v103 = sub_1D9A15C94(v90);
    v97 = v112;
    if (v100 == v103 && v102 == v104)
    {
    }

    else
    {
      v105 = sub_1D9C7E7DC();

      if ((v105 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v139 = v155;
    v140 = v156;
    v141[0] = v157[0];
    *(v141 + 13) = *(v157 + 13);
    v135 = v151;
    v136 = v152;
    v137 = v153;
    v138 = v154;
    v133 = v149;
    v134 = v150;
    v130 = v146;
    v131 = v147;
    v132[0] = v148[0];
    *(v132 + 13) = *(v148 + 13);
    v126 = v142[2];
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v124 = v142[0];
    v125 = v142[1];
    sub_1D9B67854(&v133, &v124, v122);
    sub_1D99D3AF4(v117, _s14DetectedResultVMa);
    sub_1D99AE0B0(v142);
    v130 = v122[6];
    v131 = v122[7];
    v132[0] = v123[0];
    *(v132 + 13) = *(v123 + 13);
    v126 = v122[2];
    v127 = v122[3];
    v128 = v122[4];
    v129 = v122[5];
    v98 = v122[0];
    v99 = v122[1];
    goto LABEL_28;
  }

  v56 = v114;
  static Logger.argos.getter(v114);
  v57 = v113;
  sub_1D99D3A8C(v120, v113, type metadata accessor for VisualUnderstanding.ImageRegion);
  v58 = sub_1D9C7D8BC();
  v59 = sub_1D9C7E09C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v142[0] = v61;
    *v60 = 136315138;
    v62 = v57[1];
    v149 = *v57;
    v150 = v62;
    v63 = NormalizedRect.loggingDescription.getter();
    v65 = v64;
    sub_1D99D3AF4(v57, type metadata accessor for VisualUnderstanding.ImageRegion);
    v66 = sub_1D9A0E224(v63, v65, v142);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_1D9962000, v58, v59, "Reject any domain to region %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x1DA7405F0](v61, -1, -1);
    MEMORY[0x1DA7405F0](v60, -1, -1);
  }

  else
  {

    sub_1D99D3AF4(v57, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  (*(v121 + 8))(v56, v119);
  sub_1D99D3AF4(v117, _s14DetectedResultVMa);
  v85 = v112;
  sub_1D99D3B54(&v149);
  v86 = v156;
  v85[6] = v155;
  v85[7] = v86;
  v85[8] = v157[0];
  *(v85 + 141) = *(v157 + 13);
  v87 = v152;
  v85[2] = v151;
  v85[3] = v87;
  v88 = v154;
  v85[4] = v153;
  v85[5] = v88;
  result = *&v149;
  v89 = v150;
  *v85 = v149;
  v85[1] = v89;
  return result;
}

uint64_t sub_1D99D3950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99D39B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99D3A28(uint64_t a1, uint64_t a2)
{
  v4 = _s14DetectedResultVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99D3A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99D3AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D99D3B54(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 149) = 0;
  return result;
}

uint64_t sub_1D99D3B88()
{
  sub_1D9C7B59C();
  swift_allocObject();
  sub_1D9C7B58C();
  sub_1D99DEF70();
  v0 = sub_1D9C7B57C();

  return v0;
}

uint64_t sub_1D99D3CD8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D99DF2A8();
  sub_1D9C7E96C();
  LOBYTE(v13) = 0;
  sub_1D9C7E6BC();
  if (!v2)
  {
    v15 = *(v3 + 16);
    v13 = *(v3 + 16);
    v12 = 1;
    sub_1D99AB100(&v15, v11, &qword_1ECB534E0);
    sub_1D99DF2FC();
    sub_1D9C7E6DC();
    sub_1D99B3C44(v13, *(&v13 + 1));
    *&v13 = *(v3 + 32);
    v11[0] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51608);
    sub_1D99DF3A4(&qword_1ECB51610);
    sub_1D9C7E74C();
    v13 = *(v3 + 40);
    v14 = v13;
    v12 = 3;
    sub_1D99AB100(&v14, v11, &qword_1ECB534E0);
    sub_1D9C7E6DC();
    sub_1D99B3C44(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D99D3F60()
{
  v1 = 0x7265755174786574;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0x6575516567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D99D3FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D99D97F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D99D4010(uint64_t a1)
{
  v2 = sub_1D99DF2A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D99D404C(uint64_t a1)
{
  v2 = sub_1D99DF2A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D99D4088@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D99D9970(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1D99D40F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D99D9D04(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D99D4128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D99DF200();
  v5 = sub_1D99DF254();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t sub_1D99D4180@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a4;
  v76 = a3;
  v85 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v80 = &v69 - v8;
  Context = type metadata accessor for VisualQueryContext();
  v78 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v69 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D9C7CA3C();
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7BA9C();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7CBEC();
  v83 = *(v13 - 8);
  v84 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  v23 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v86 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v69 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v69 - v30;
  v32 = a1[9];
  v100 = a1[8];
  v101 = v32;
  v102 = a1[10];
  v103 = *(a1 + 22);
  v33 = a1[5];
  v96 = a1[4];
  v97 = v33;
  v34 = a1[7];
  v98 = a1[6];
  v99 = v34;
  v35 = a1[1];
  v92 = *a1;
  v93 = v35;
  v36 = a1[3];
  v94 = a1[2];
  v95 = v36;
  v87 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) + 32);
  v88 = a2;
  sub_1D99AB100(a2 + v87, v22, &qword_1ECB51538);
  v37 = *(v24 + 48);
  v38 = v37(v22, 1, v23);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38 == 1)
  {
    *v31 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    *(v31 + 1) = v39;
    *(v31 + 4) = 0;
    sub_1D9C7D3BC();
    if (v37(v22, 1, v23) != 1)
    {
      sub_1D99A6AE0(v22, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D99DEB20(v22, v31, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v70 = *(v31 + 4);
  sub_1D99DEDE4(v31, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  sub_1D99AB100(v88 + v87, v19, &qword_1ECB51538);
  if (v37(v19, 1, v23) == 1)
  {
    *v28 = sub_1D9A446BC(v39);
    *(v28 + 1) = v39;
    *(v28 + 4) = 0;
    sub_1D9C7D3BC();
    if (v37(v19, 1, v23) != 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D99DEB20(v19, v28, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v90[8] = v100;
  v90[9] = v101;
  v90[10] = v102;
  v91 = v103;
  v90[4] = v96;
  v90[5] = v97;
  v90[6] = v98;
  v90[7] = v99;
  v90[0] = v92;
  v90[1] = v93;
  v90[2] = v94;
  v90[3] = v95;
  v40 = sub_1D9B67A68();
  MEMORY[0x1EEE9AC00](v40);
  *(&v69 - 2) = v28;
  v41 = sub_1D9BE8274(sub_1D99DF55C, (&v69 - 4), v40);

  v42 = sub_1D9BC1C48(v41);

  sub_1D99DEDE4(v28, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  if ((v42 & 0x100000000) != 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = v42;
  }

  v44 = v71;
  sub_1D99AB100(v88 + v87, v71, &qword_1ECB51538);
  if (v37(v44, 1, v23) == 1)
  {
    v45 = MEMORY[0x1E69E7CC0];
    v46 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    v47 = v86;
    *v86 = v46;
    v47[1] = v45;
    *(v47 + 4) = 0;
    sub_1D9C7D3BC();
    v48 = v37(v44, 1, v23);
    v49 = v82;
    if (v48 != 1)
    {
      sub_1D99A6AE0(v44, &qword_1ECB51538);
    }
  }

  else
  {
    v47 = v86;
    sub_1D99DEB20(v44, v86, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    v49 = v82;
  }

  sub_1D9C7CBDC();
  (*(v73 + 16))(v72, v76, v74);
  v50 = sub_1D9C7CB7C();
  MEMORY[0x1EEE9AC00](v50);
  v51 = v79;
  *(&v69 - 8) = v79;
  *(&v69 - 7) = v47;
  *(&v69 - 6) = &v92;
  *(&v69 - 5) = v70;
  *(&v69 - 32) = 0;
  *(&v69 - 3) = v43;
  *(&v69 - 16) = BYTE4(v42) & 1;
  *(&v69 - 1) = 0;
  sub_1D99DEF28(&unk_1ECB540F0, MEMORY[0x1E69BD540]);
  sub_1D9C7D6BC();
  sub_1D9C7CBAC();
  v52 = v80;
  sub_1D99AB100(v51, v80, &unk_1ECB51B10);
  v53 = Context;
  if ((*(v78 + 48))(v52, 1, Context) == 1)
  {
    sub_1D99A6AE0(v52, &unk_1ECB51B10);
    if ((sub_1D9A75D94() & 1) == 0)
    {
LABEL_18:
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v54 = &qword_1EDD355A8;
      goto LABEL_27;
    }
  }

  else
  {
    v55 = v69;
    sub_1D99DEB20(v52, v69, type metadata accessor for VisualQueryContext);
    v56 = sub_1D9C7CB5C();
    sub_1D9C7BA4C();
    v56(v90, 0);

    sub_1D9C7CBCC();
    if (*(v55 + *(v53 + 60) + 8))
    {

      sub_1D9C7CBBC();
    }

    sub_1D99DEDE4(v55, type metadata accessor for VisualQueryContext);
    if ((sub_1D9A75D94() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_1ECB50988 != -1)
  {
    swift_once();
  }

  v54 = &off_1ECB51BA8;
LABEL_27:
  v57 = *(*v54 + 32);

  v58 = sub_1D9C7DC4C();
  v59 = [v57 stringForKey_];

  if (v59)
  {
    v60 = sub_1D9C7DC7C();
    v62 = v61;

    *&v90[0] = 0xD000000000000030;
    *(&v90[0] + 1) = 0x80000001D9CA4870;
    MEMORY[0x1DA73DF90](v60, v62);

    v63 = v90[0];
    v64 = sub_1D9C7CB4C();
    v66 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *v66;
    *v66 = 0x8000000000000000;
    v47 = v86;
    sub_1D9C10E38(v63, *(&v63 + 1), 0xD000000000000011, 0x80000001D9CA4850, isUniquelyReferenced_nonNull_native);
    *v66 = v89;
    v64(v90, 0);
  }

  else
  {
  }

  (*(v83 + 32))(v85, v49, v84);
  return sub_1D99DEDE4(v47, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
}

uint64_t sub_1D99D4CDC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v82 = a3;
  v91 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v75 - v8;
  Context = type metadata accessor for VisualQueryContext();
  v84 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v75 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D9C7CA3C();
  MEMORY[0x1EEE9AC00](v83);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7BA9C();
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7CBEC();
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51538);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v77 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v93 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  v20 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = (&v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51540);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v75 - v26;
  v28 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[9];
  v106 = a1[8];
  v107 = v32;
  v108 = a1[10];
  v109 = *(a1 + 22);
  v33 = a1[5];
  v102 = a1[4];
  v103 = v33;
  v34 = a1[7];
  v104 = a1[6];
  v105 = v34;
  v35 = a1[1];
  v98 = *a1;
  v99 = v35;
  v36 = a1[3];
  v100 = a1[2];
  v101 = v36;
  v37 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v38 = *(v37 + 36);
  v94 = a2;
  sub_1D99AB100(a2 + v38, v27, &qword_1ECB51540);
  v39 = *(v29 + 48);
  if (v39(v27, 1, v28) == 1)
  {
    *v31 = 0;
    sub_1D9C7D3BC();
    if (v39(v27, 1, v28) != 1)
    {
      sub_1D99A6AE0(v27, &qword_1ECB51540);
    }
  }

  else
  {
    sub_1D99DEB20(v27, v31, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
  }

  v76 = *v31;
  sub_1D99DEDE4(v31, type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig);
  v40 = *(v37 + 32);
  sub_1D99AB100(v94 + v40, v19, &qword_1ECB51538);
  v41 = *(v20 + 48);
  v42 = v93;
  v43 = v41(v19, 1, v93);
  v44 = MEMORY[0x1E69E7CC0];
  if (v43 == 1)
  {
    *v24 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    *(v24 + 1) = v44;
    *(v24 + 4) = 0;
    sub_1D9C7D3BC();
    if (v41(v19, 1, v42) != 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB51538);
    }
  }

  else
  {
    sub_1D99DEB20(v19, v24, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  }

  v96[8] = v106;
  v96[9] = v107;
  v96[10] = v108;
  v97 = v109;
  v96[4] = v102;
  v96[5] = v103;
  v96[6] = v104;
  v96[7] = v105;
  v96[0] = v98;
  v96[1] = v99;
  v96[2] = v100;
  v96[3] = v101;
  v45 = sub_1D9B67A68();
  MEMORY[0x1EEE9AC00](v45);
  *(&v75 - 2) = v24;
  v46 = sub_1D9BE8274(sub_1D99DEACC, (&v75 - 4), v45);

  v47 = sub_1D9BC1C48(v46);

  sub_1D99DEDE4(v24, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
  if ((v47 & 0x100000000) != 0)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  v49 = v77;
  sub_1D99AB100(v94 + v40, v77, &qword_1ECB51538);
  v50 = v93;
  if (v41(v49, 1, v93) == 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
    v52 = sub_1D9A446BC(MEMORY[0x1E69E7CC0]);
    v53 = v92;
    *v92 = v52;
    v53[1] = v51;
    *(v53 + 4) = 0;
    sub_1D9C7D3BC();
    v54 = v41(v49, 1, v50);
    v55 = v88;
    if (v54 != 1)
    {
      sub_1D99A6AE0(v49, &qword_1ECB51538);
    }
  }

  else
  {
    v53 = v92;
    sub_1D99DEB20(v49, v92, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
    v55 = v88;
  }

  sub_1D9C7CBDC();
  (*(v79 + 16))(v78, v82, v80);
  v56 = sub_1D9C7CB7C();
  MEMORY[0x1EEE9AC00](v56);
  v57 = v85;
  *(&v75 - 8) = v85;
  *(&v75 - 7) = v53;
  *(&v75 - 6) = &v98;
  *(&v75 - 5) = v76;
  *(&v75 - 32) = 0;
  *(&v75 - 3) = v48;
  *(&v75 - 16) = BYTE4(v47) & 1;
  *(&v75 - 1) = 0;
  sub_1D99DEF28(&unk_1ECB540F0, MEMORY[0x1E69BD540]);
  sub_1D9C7D6BC();
  sub_1D9C7CBAC();
  v58 = v86;
  sub_1D99AB100(v57, v86, &unk_1ECB51B10);
  v59 = Context;
  if ((*(v84 + 48))(v58, 1, Context) == 1)
  {
    sub_1D99A6AE0(v58, &unk_1ECB51B10);
    if ((sub_1D9A75D94() & 1) == 0)
    {
LABEL_18:
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v60 = &qword_1EDD355A8;
      goto LABEL_27;
    }
  }

  else
  {
    v61 = v75;
    sub_1D99DEB20(v58, v75, type metadata accessor for VisualQueryContext);
    v62 = sub_1D9C7CB5C();
    sub_1D9C7BA4C();
    v62(v96, 0);

    sub_1D9C7CBCC();
    if (*(v61 + *(v59 + 60) + 8))
    {

      sub_1D9C7CBBC();
    }

    sub_1D99DEDE4(v61, type metadata accessor for VisualQueryContext);
    if ((sub_1D9A75D94() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (qword_1ECB50988 != -1)
  {
    swift_once();
  }

  v60 = &off_1ECB51BA8;
LABEL_27:
  v63 = *(*v60 + 32);

  v64 = sub_1D9C7DC4C();
  v65 = [v63 stringForKey_];

  if (v65)
  {
    v66 = sub_1D9C7DC7C();
    v68 = v67;

    *&v96[0] = 0xD000000000000030;
    *(&v96[0] + 1) = 0x80000001D9CA4870;
    MEMORY[0x1DA73DF90](v66, v68);

    v69 = v96[0];
    v70 = sub_1D9C7CB4C();
    v72 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = *v72;
    *v72 = 0x8000000000000000;
    sub_1D9C10E38(v69, *(&v69 + 1), 0xD000000000000011, 0x80000001D9CA4850, isUniquelyReferenced_nonNull_native);
    *v72 = v95;
    v70(v96, 0);
    v53 = v92;
  }

  else
  {
  }

  (*(v89 + 32))(v91, v55, v90);
  return sub_1D99DEDE4(v53, type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig);
}

uint64_t sub_1D99D58C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v27 = a8;
  v29 = a7;
  v26 = a6;
  v28 = a5;
  v30 = a9;
  v12 = sub_1D9C7C3EC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1D9C7C74C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ServerSearchProcessor();
  v17 = *(a4 + 144);
  v35[8] = *(a4 + 128);
  v35[9] = v17;
  v35[10] = *(a4 + 160);
  v36 = *(a4 + 176);
  v18 = *(a4 + 80);
  v35[4] = *(a4 + 64);
  v35[5] = v18;
  v19 = *(a4 + 112);
  v35[6] = *(a4 + 96);
  v35[7] = v19;
  v20 = *(a4 + 16);
  v35[0] = *a4;
  v21 = *(a4 + 32);
  v22 = *(a4 + 48);
  v35[1] = v20;
  v35[2] = v21;
  v35[3] = v22;
  v23 = sub_1D9A49910(v35);
  sub_1D9A49B20(a2, v23 & 1, v28, v26 & 1, v29, v27 & 1, v15);
  sub_1D9C7CA2C();
  v24 = *(a3 + 8);
  v31 = v16;
  v32 = a4;
  v33 = v24;
  v34 = v30;
  sub_1D99DEF28(&qword_1ECB51548, MEMORY[0x1E69BD2D8]);
  sub_1D9C7D6BC();
  return sub_1D9C7C9FC();
}

uint64_t sub_1D99D5B1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a11;
  v26 = a7;
  v27 = a9;
  v24 = a5;
  v25 = a10;
  v16 = sub_1D9C7C3EC();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1D9C7C74C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AF2FC(a2, a3);
  sub_1D9C7C9CC();
  v20 = type metadata accessor for ServerSearchProcessor();
  sub_1D9A49B20(a4, 1, v24, a6 & 1, v26, a8 & 1, v19);
  sub_1D9C7CA2C();
  v21 = *(v25 + 8);
  v29 = v20;
  v30 = v27;
  v31 = v21;
  v32 = v28;
  sub_1D99DEF28(&qword_1ECB51548, MEMORY[0x1E69BD2D8]);
  sub_1D9C7D6BC();
  return sub_1D9C7C9FC();
}

uint64_t sub_1D99D5D08(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1D9C7C8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9B6848C(*(a1 + 112));
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1D99FE358(0, v8, 0);
    v9 = v24;
    v20[2] = v4 + 32;
    v10 = sub_1D99DEF28(&qword_1ECB515A8, MEMORY[0x1E69BD4E0]);
    v20[0] = v7;
    v20[1] = v10;
    v11 = (v7 + 48);
    v21 = v4;
    do
    {
      v12 = *(v11 - 2);
      v13 = *v11;
      MEMORY[0x1EEE9AC00](v10);
      v20[-6] = v12;
      v20[-5] = v14;
      v15 = v22;
      v16 = v23;
      v20[-4] = v13;
      v20[-3] = v16;
      v20[-2] = v15;

      sub_1D9C7D6BC();

      v24 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D99FE358(v17 > 1, v18 + 1, 1);
        v9 = v24;
      }

      *(v9 + 16) = v18 + 1;
      v10 = (*(v21 + 32))(v9 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v6, v3);
      v11 += 3;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1D99D5F7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1D9C7C8BC();
  sub_1D99D9D14(a3, a4, a6);
  return sub_1D9C7C0CC();
}

uint64_t sub_1D99D5FE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a2;
  v68 = a3;
  v69 = a4;
  v6 = sub_1D9C7C9BC();
  v76 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = 0;
  v72 = _s14DetectedResultVMa();
  v67 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a1;
  v10 = *(a1 + 14);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v73 = v6;
  if (v11)
  {
    v13 = 0;
    v14 = (v10 + 72);
    while (v13 < *(v10 + 16))
    {
      a1 = *v14;
      v15 = *(*v14 + 2);
      v16 = *(v12 + 2);
      v4 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
        goto LABEL_48;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v4 > *(v12 + 3) >> 1)
      {
        if (v16 <= v4)
        {
          v18 = v16 + v15;
        }

        else
        {
          v18 = v16;
        }

        v12 = sub_1D9AF85EC(isUniquelyReferenced_nonNull_native, v18, 1, v12);
      }

      v6 = v73;
      if (*(a1 + 2))
      {
        if ((*(v12 + 3) >> 1) - *(v12 + 2) < v15)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v19 = *(v12 + 2);
          v20 = __OFADD__(v19, v15);
          v21 = v19 + v15;
          if (v20)
          {
            goto LABEL_51;
          }

          *(v12 + 2) = v21;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_49;
        }
      }

      ++v13;
      v14 += 6;
      if (v11 == v13)
      {
        goto LABEL_18;
      }
    }

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
    v12 = sub_1D9AF85EC(0, *(v12 + 2) + 1, 1, v12);
    goto LABEL_20;
  }

LABEL_18:
  a1 = v71;
  v4 = *(v71 + 11);
  if (!v4)
  {
    goto LABEL_23;
  }

  v10 = *(v71 + 10);
  v14 = *(v71 + 12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_20:
  v23 = *(v12 + 2);
  v22 = *(v12 + 3);
  if (v23 >= v22 >> 1)
  {
    v12 = sub_1D9AF85EC((v22 > 1), v23 + 1, 1, v12);
  }

  *(v12 + 2) = v23 + 1;
  v24 = &v12[24 * v23];
  *(v24 + 4) = v10;
  *(v24 + 5) = v4;
  *(v24 + 6) = v14;
  v6 = v73;
LABEL_23:
  v25 = sub_1D99D66A0();
  if (v26)
  {
    v28 = v25;
    v29 = v26;
    v30 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D9AF85EC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    if (v32 >= v31 >> 1)
    {
      v12 = sub_1D9AF85EC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v32 + 1;
    v33 = &v12[24 * v32];
    *(v33 + 4) = v28;
    *(v33 + 5) = v29;
    *(v33 + 6) = v30;
    v6 = v73;
  }

  v34 = *(a1 + 7);
  v35 = *(v34 + 16);
  if (v35)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1D99FE278(0, v35, 0);
    v36 = v78;
    v37 = v34 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v38 = *(v67 + 72);
    do
    {
      sub_1D99DED7C(v37, v9, _s14DetectedResultVMa);
      v39 = &v9[*(v72 + 28)];
      v40 = *(v39 + 2);
      v41 = *(v39 + 3);
      v42 = *&v9[*(v72 + 32)];

      sub_1D99DEDE4(v9, _s14DetectedResultVMa);
      v78 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1D99FE278((v43 > 1), v44 + 1, 1);
        v36 = v78;
      }

      *(v36 + 16) = v44 + 1;
      v45 = v36 + 24 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v41;
      *(v45 + 48) = v42;
      v37 += v38;
      --v35;
    }

    while (v35);
    v46 = v69;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D9AF85EC(0, *(v12 + 2) + 1, 1, v12);
    }

    v6 = v73;
    v48 = *(v12 + 2);
    v47 = *(v12 + 3);
    v49 = v12;
    v50 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v49 = sub_1D9AF85EC((v47 > 1), v48 + 1, 1, v12);
    }

    v12 = v49;
    *(v49 + 2) = v50;
    v51 = &v49[24 * v48];
    *(v51 + 4) = v68;
    *(v51 + 5) = v46;
    *(v51 + 6) = v36;
  }

  else
  {
    v50 = *(v12 + 2);
    if (!v50)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
  sub_1D99FE378(0, v50, 0);
  v52 = v78;
  v73 = v76 + 32;
  v53 = sub_1D99DEF28(&qword_1ECB51590, MEMORY[0x1E69BD530]);
  v71 = v12;
  v72 = v53;
  v54 = (v12 + 48);
  v55 = v70;
  do
  {
    v56 = *(v54 - 1);
    v57 = *v54;
    MEMORY[0x1EEE9AC00](v53);
    *(&v66 - 6) = v58;
    *(&v66 - 5) = v56;
    v59 = v74;
    v60 = v75;
    *(&v66 - 4) = v57;
    *(&v66 - 3) = v60;
    *(&v66 - 2) = v59;

    v61 = v6;
    v62 = v77;
    sub_1D9C7D6BC();
    v77 = v62;

    v78 = v52;
    v64 = *(v52 + 16);
    v63 = *(v52 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1D99FE378(v63 > 1, v64 + 1, 1);
      v52 = v78;
    }

    *(v52 + 16) = v64 + 1;
    v53 = (*(v76 + 32))(v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v64, v55, v61);
    v54 += 3;
    --v50;
    v6 = v61;
  }

  while (v50);

  return v52;
}

unint64_t sub_1D99D66A0()
{
  result = sub_1D9B67DFC();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = MEMORY[0x1E69E7CC0];
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v6 = 0xE300000000000000;
      v7 = 7631457;
      switch(*v4)
      {
        case 1:
          v6 = 0xE600000000000000;
          v7 = 0x65727574616ELL;
          break;
        case 2:
          v6 = 0xE800000000000000;
          v7 = 0x6B72616D646E616CLL;
          break;
        case 3:
          v6 = 0xEF6B72616D646E61;
          v7 = 0x4C6C61727574616ELL;
          break;
        case 4:
          v6 = 0xE500000000000000;
          v7 = 0x616964656DLL;
          break;
        case 5:
          v6 = 0xE400000000000000;
          v7 = 1802465122;
          break;
        case 6:
          v6 = 0xE500000000000000;
          v7 = 0x6D75626C61;
          break;
        case 7:
          v6 = 0xE400000000000000;
          v7 = 1937006947;
          break;
        case 8:
          v6 = 0xE400000000000000;
          v7 = 1936158564;
          break;
        case 9:
          v6 = 0xE700000000000000;
          v8 = 1835626081;
          goto LABEL_23;
        case 0xA:
          v6 = 0xE500000000000000;
          v7 = 0x7364726962;
          break;
        case 0xB:
          v6 = 0xE700000000000000;
          v7 = 0x73746365736E69;
          break;
        case 0xC:
          v6 = 0xE800000000000000;
          v7 = 0x73656C6974706572;
          break;
        case 0xD:
          v6 = 0xE700000000000000;
          v8 = 1835884909;
LABEL_23:
          v7 = v8 | 0x736C6100000000;
          break;
        case 0xE:
          v7 = 0xD000000000000010;
          v6 = 0x80000001D9CA2910;
          break;
        case 0xF:
          v6 = 0xE700000000000000;
          v7 = 0x6C657261707061;
          break;
        case 0x10:
          v6 = 0xEB00000000736569;
          v7 = 0x726F737365636361;
          break;
        case 0x11:
          v6 = 0xE400000000000000;
          v7 = 1685024614;
          break;
        case 0x12:
          v6 = 0xEA0000000000746ELL;
          v7 = 0x6F726665726F7473;
          break;
        case 0x13:
          v9 = 1852270963;
          goto LABEL_30;
        case 0x14:
          v7 = 0xD000000000000011;
          v6 = 0x80000001D9CA2950;
          break;
        case 0x15:
          v9 = 1869903201;
LABEL_30:
          v7 = v9 | 0x626D795300000000;
          v6 = 0xEA00000000006C6FLL;
          break;
        case 0x16:
          v6 = 0xEF6C6F626D79536FLL;
          v7 = 0x676F4C646E617262;
          break;
        case 0x17:
          v6 = 0xE700000000000000;
          v7 = 0x65646F63726162;
          break;
        case 0x18:
          v6 = 0xE900000000000065;
          v7 = 0x727574706C756373;
          break;
        case 0x19:
          v6 = 0xE700000000000000;
          v7 = 0x656E696C796B73;
          break;
        case 0x1A:
          v6 = 0xE800000000000000;
          v7 = 0x44327463656A626FLL;
          break;
        default:
          break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D9AF85D0(0, *(v5 + 16) + 1, 1, v5);
        v5 = result;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1D9AF85D0((v10 > 1), v11 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 16) = v11 + 1;
      v12 = v5 + 24 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v6;
      *(v12 + 48) = 1065353216;
      v4 += 160;
      if (v2 == v3)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_40:

    if (*(v5 + 16))
    {
      return 0xD000000000000018;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D99D6A8C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v11 = sub_1D9C7C98C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 16);
  if (v14)
  {
    v26 = a3;
    v27 = a6;
    v28 = a1;
    v33 = v6;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D99FE398(0, v14, 0);
    v15 = v34;
    v32 = v12 + 32;
    v16 = sub_1D99DEF28(&qword_1ECB51598, MEMORY[0x1E69BD520]);
    v31 = v16;
    v17 = a4 + 48;
    v18 = v29;
    do
    {
      v19 = *(v17 - 8);
      v20 = MEMORY[0x1EEE9AC00](v16);
      *(&v26 - 4) = v21;
      *(&v26 - 3) = v19;
      *(&v26 - 4) = LODWORD(v20);

      v22 = v33;
      sub_1D9C7D6BC();
      v33 = v22;

      v34 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D99FE398(v23 > 1, v24 + 1, 1);
        v15 = v34;
      }

      *(v15 + 16) = v24 + 1;
      v16 = (*(v12 + 32))(v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v18, v11);
      v17 += 24;
      --v14;
    }

    while (v14);
    a6 = v27;
    a3 = v26;
  }

  sub_1D9C7C8BC();
  sub_1D99D9D14(v30, a3, a6);
  return sub_1D9C7C0CC();
}

uint64_t sub_1D99D6D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D9C7C57C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  sub_1D9C7C56C();
  v20.origin.x = VIFlipOriginNormalizedRect(v11, v12, v13, v14);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMinX(v20);
  sub_1D9C7C4FC();
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMinY(v21);
  sub_1D9C7C51C();
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectGetWidth(v22);
  sub_1D9C7C53C();
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  CGRectGetHeight(v23);
  sub_1D9C7C55C();
  sub_1D9C7C2FC();
  sub_1D99D5D08(a2, a4);
  sub_1D9C7C10C();
  sub_1D99D5FE8(a2, a4, a5, a6);
  return sub_1D9C7C35C();
}

uint64_t sub_1D99D6E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7C95C();
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = *(a2 + 32);
  if (*(a2 + 8) != 1 && v6 != 0)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v19[0] = a1;
      v24 = MEMORY[0x1E69E7CC0];
      v9 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = sub_1D99FE3B8(0, v8, 0);
      v11 = v24;
      v12 = (v6 + 32);
      v19[1] = v20 + 32;
      do
      {
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v23 = *(v12 + 6);
        v22[1] = v14;
        v22[2] = v15;
        v22[0] = v13;
        MEMORY[0x1EEE9AC00](v10);
        v19[-2] = v22;
        sub_1D99DEBE4(v22, v21);
        sub_1D99DEF28(&qword_1ECB51568, MEMORY[0x1E69BD4F0]);
        sub_1D9C7D6BC();
        sub_1D99DEC40(v22);
        v24 = v11;
        v17 = *(v11 + 16);
        v16 = *(v11 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D99FE3B8(v16 > 1, v17 + 1, 1);
          v11 = v24;
        }

        *(v11 + 16) = v17 + 1;
        v10 = (*(v20 + 32))(v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v4);
        v12 = (v12 + 56);
        --v8;
      }

      while (v8);
    }
  }

  return sub_1D9C7C10C();
}