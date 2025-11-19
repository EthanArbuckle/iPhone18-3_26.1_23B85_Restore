uint64_t sub_1A4241808(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 16) >= *(*v9 + 16))
      {
LABEL_4:
        ++a3;
        v5 += 8;
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

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A4241874(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A3D86884(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_1A4242320((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1A3D867F8(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 16);
      v13 = *(*(*a3 + 8 * v11) + 16);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 16);
        v17 = (v12 < v13) ^ (v16 >= v15);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1A3D8598C((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_1A4242320((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1A3D867F8(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 16) >= *(*v29 + 16))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A4241DE4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A3D86884(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_1A4242524((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_1A3D8598C((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_1A4242524((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A3D86884(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1A3D867F8(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A4242320(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
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
      if (*(*v6 + 16) < *(*v4 + 16))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 16) < *(*v17 + 16))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A4242524(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
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
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

char *sub_1A4242710(char *a1, int64_t a2, char a3)
{
  result = sub_1A4242730(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4242730(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB135F38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1A4242828(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A42414C4(v3, 0);
  sub_1A42428BC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A42428BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v16 = a2;
    result = sub_1A524E2B4();
    a2 = v16;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A424307C(0, &qword_1EB135F40, v8, type metadata accessor for RenderEntry, MEMORY[0x1E69E62F8]);
          sub_1A4242EE8(v9, v10, v11);
          for (i = 0; i != v6; ++i)
          {
            v13 = sub_1A3E5C4E4(v17, i, a3);
            v15 = *v14;

            (v13)(v17, 0);
            *(v4 + 8 * i) = v15;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for RenderEntry();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A4242A58()
{
  result = qword_1EB135EA8;
  if (!qword_1EB135EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135EA8);
  }

  return result;
}

unint64_t sub_1A4242AAC()
{
  result = qword_1EB135EB0;
  if (!qword_1EB135EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135EB0);
  }

  return result;
}

unint64_t sub_1A4242BE0()
{
  result = qword_1EB1B1870[0];
  if (!qword_1EB1B1870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B1870);
  }

  return result;
}

unint64_t sub_1A4242C38()
{
  result = qword_1EB1B1980[0];
  if (!qword_1EB1B1980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B1980);
  }

  return result;
}

unint64_t sub_1A4242C98()
{
  result = qword_1EB135F20;
  if (!qword_1EB135F20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB135F20);
  }

  return result;
}

void sub_1A4242CFC()
{
  if (!qword_1EB135F28)
  {
    sub_1A4242C98();
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135F28);
    }
  }
}

uint64_t sub_1A4242D6C(void *a1)
{
  sub_1A4242CFC();
  v9 = 0;
  v2 = [a1 result_];
  if (v2)
  {
    v3 = v2;
    v4 = v9;
    v5 = [v3 buffer];
    swift_unknownObjectRelease();
    v9 = v5;
    return sub_1A524CBE4();
  }

  else
  {
    v7 = v9;
    v8 = sub_1A5240B84();

    swift_willThrow();
    v9 = v8;
    return sub_1A524CBD4();
  }
}

unint64_t sub_1A4242E80()
{
  result = qword_1EB1B1A90;
  if (!qword_1EB1B1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B1A90);
  }

  return result;
}

unint64_t sub_1A4242EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EB135F48;
  if (!qword_1EB135F48)
  {
    sub_1A424307C(255, &qword_1EB135F40, a3, type metadata accessor for RenderEntry, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135F48);
  }

  return result;
}

uint64_t sub_1A4242F70()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A423F878(v3, v4, v5, v2);
}

uint64_t sub_1A4243004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A424307C(0, a2, 255, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A424307C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A42430F4()
{
  result = qword_1EB1B1A98[0];
  if (!qword_1EB1B1A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B1A98);
  }

  return result;
}

uint64_t sub_1A4243168@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C4C098(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v8 = sub_1A3C5A374();

    return sub_1A42E7F0C(0, 1, v8, a1);
  }

  else
  {
    v10 = sub_1A3C56D60();
    v12 = v11;
    v14 = v13;
    sub_1A3C41FE8(v10, v11, v13, v7);
    sub_1A3C4208C(v10, v12, v14);
    sub_1A5241F74();
    v15 = sub_1A5241F84();
    (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
    return sub_1A3C52D78(v7, 6, v4, a1);
  }
}

uint64_t sub_1A4243320@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v63 = a2;
  v73 = a5;
  v66 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v66);
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697F948];
  sub_1A424DD4C(0, &qword_1EB127F50, type metadata accessor for LemonadeShelfPlaceholderView, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v57 - v9;
  sub_1A424B840(0);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424DD4C(0, &qword_1EB122C78, type metadata accessor for LemonadeShelfPlaceholderView, sub_1A424B840, v7);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - v13;
  v74 = type metadata accessor for LemonadeShelfPlaceholderView();
  MEMORY[0x1EEE9AC00](v74);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524C634();
  v18 = PXLemonadeLocalizedString(v17);

  v69 = sub_1A524C674();
  v20 = v19;

  v21 = sub_1A524C634();
  v22 = PXLemonadeLocalizedString(v21);

  v23 = sub_1A524C674();
  v25 = v24;

  v26 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v76[0] = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v75 = 3;
  v27 = v26;
  if (static LemonadePresentationContext.== infix(_:_:)(v76, &v75))
  {
    v72 = v27;
    v28 = sub_1A3C5A374();
    v29 = sub_1A3C5A374();
    v30 = sub_1A3C5A374();
    v31 = sub_1A3C5A374();
    v32 = sub_1A3C5A374();
    v54 = v25;
    v33 = v72;
    sub_1A425463C(v72, v28 & 1, v29 & 1, v30 & 1, v31 & 1, v32 & 1, 0xD000000000000026, 0x80000001A53CE940, v16, v69, v20, v23, v54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    sub_1A424A490(v16, v14, type metadata accessor for LemonadeShelfPlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424B944();
    sub_1A5249744();

    v34 = type metadata accessor for LemonadeShelfPlaceholderView;
    v35 = v16;
  }

  else
  {
    v58 = v23;
    v59 = "Albums.SharedAlbum.AX.Label.";
    v57 = v16;
    v60 = v20;
    v61 = v14;
    v36 = sub_1A524C634();
    v37 = PXLemonadeLocalizedString(v36);

    v38 = sub_1A524C674();
    v40 = v39;

    v41 = v27;
    sub_1A3C66EE8(v72);
    if (v63)
    {
      v50 = sub_1A3C5A374();
      v51 = sub_1A3C5A374();
      v52 = sub_1A3C5A374();
      v56 = v38;
      v47 = v62;
      sub_1A463DB54(v41, v50 & 1, v51 & 1, v52 & 1, 0xD000000000000026, v59 | 0x8000000000000000, v69, v60, v62, v58, v25, 0, 0, 0, 0, v56, v40, v72, v71);
      sub_1A424A490(v47, v65, type metadata accessor for LemonadePlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
      sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
      v48 = v67;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadePlaceholderView;
    }

    else
    {
      v42 = sub_1A3C5A374();
      v43 = sub_1A3C5A374();
      v44 = sub_1A3C5A374();
      v45 = sub_1A3C5A374();
      v46 = sub_1A3C5A374();
      v55 = v38;
      v47 = v57;
      sub_1A425463C(v41, v42 & 1, v43 & 1, v44 & 1, v45 & 1, v46 & 1, 0xD000000000000026, v59 | 0x8000000000000000, v57, v69, v60, v58, v25, 0, 0, 0, 0, 0, 0, v55, v40, v72, v71, 0, 0);
      sub_1A424A490(v47, v65, type metadata accessor for LemonadeShelfPlaceholderView);
      swift_storeEnumTagMultiPayload();
      sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
      sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
      v48 = v67;
      sub_1A5249744();
      v49 = type metadata accessor for LemonadeShelfPlaceholderView;
    }

    sub_1A424DDD0(v47, v49);
    sub_1A424A490(v48, v61, sub_1A424B840);
    swift_storeEnumTagMultiPayload();
    sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424B944();
    sub_1A5249744();

    v34 = sub_1A424B840;
    v35 = v48;
  }

  return sub_1A424DDD0(v35, v34);
}

uint64_t sub_1A4243B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1A424DD4C(0, &qword_1EB135F50, sub_1A42440B4, sub_1A4244290, MEMORY[0x1E697F948]);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  sub_1A41170C8();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5243B94();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;

  v41 = sub_1A52426E4();
  v40 = v15;
  v39 = PhotosObservableAlbum.keyAsset.getter();
  sub_1A4244368();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52F8E10;
  v18 = v17 + v16;
  (*(v12 + 104))(v14, *MEMORY[0x1E69C2800], v11);
  v19 = *(v12 + 32);
  v19(v10, v14, v11);
  v19(v18, v10, v11);
  v20 = (v18 + *(v7 + 56));
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1A4244540;
  *(v21 + 24) = a1;
  *v20 = sub_1A4244548;
  v20[1] = v21;

  v22 = sub_1A4249D98(v17);
  swift_setDeallocating();
  sub_1A424DDD0(v18, sub_1A41170C8);
  swift_deallocClassInstance();
  sub_1A40F2AD0();
  v24 = v23;
  sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
  v25 = MEMORY[0x1E6981E70];
  v26 = sub_1A41F7694();
  LOBYTE(v11) = sub_1A3C5A374();
  v27 = sub_1A43C9BB4();
  v29 = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v29;
  LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v52, 0, 0, v41, v40, v39, v11 & 1, sub_1A3F8B548, v53, v26, v30, v22, v25, v24);
  v49 = v53[4];
  v50 = v53[5];
  LOBYTE(v51) = v54;
  v45 = v53[0];
  v46 = v53[1];
  v48 = v53[3];
  v47 = v53[2];
  sub_1A52426D4();
  v31 = *(v44 + 16);

  v32 = sub_1A524BC04();
  v33 = v50;
  *(v5 + 4) = v49;
  *(v5 + 5) = v33;
  v34 = v51;
  v35 = v46;
  *v5 = v45;
  *(v5 + 1) = v35;
  v36 = v48;
  *(v5 + 2) = v47;
  *(v5 + 3) = v36;
  *(v5 + 12) = v34;
  *(v5 + 13) = v31;
  *(v5 + 14) = v32;
  *(v5 + 15) = v37;
  swift_storeEnumTagMultiPayload();
  sub_1A42440B4();
  sub_1A4244290(0);
  sub_1A424DD04(&unk_1EB124CD8, sub_1A42440B4);
  sub_1A4249C74();
  return sub_1A5249744();
}

void sub_1A42440B4()
{
  if (!qword_1EB124CD0)
  {
    sub_1A40F2AD0();
    sub_1A5243634();
    type metadata accessor for LemonadeSharedAlbumsCellAvatarView();
    sub_1A424DD04(&qword_1EB124EE0, sub_1A40F2AD0);
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    sub_1A424DD04(&qword_1EB129070, MEMORY[0x1E69C2568]);
    sub_1A424DD04(&qword_1EB1295C0, type metadata accessor for LemonadeSharedAlbumsCellAvatarView);
    v0 = sub_1A5243EA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124CD0);
    }
  }
}

void sub_1A4244228(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A42442B8()
{
  if (!qword_1EB125768)
  {
    sub_1A40F2AD0();
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    v0 = type metadata accessor for LemonadeMaterialTitleCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125768);
    }
  }
}

void sub_1A4244368()
{
  if (!qword_1EB120320)
  {
    sub_1A4249FF4(255, &unk_1EB124D10, MEMORY[0x1E69C2818], sub_1A3D712CC);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120320);
    }
  }
}

uint64_t sub_1A42443F0(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = a1;
  *(v4 + 1) = swift_getKeyPath();
  v4[16] = 0;
  *(v4 + 3) = swift_getKeyPath();
  v4[32] = 0;
  v5 = *(v2 + 28);
  *&v4[v5] = swift_getKeyPath();
  sub_1A3C4C098(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A424DD04(&qword_1EB125608, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView);

  return sub_1A524B8E4();
}

uint64_t sub_1A4244548@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1A4244578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if ([a1 px_isSharedAlbumsFolder])
  {
    v5 = [*(a2 + 16) px_virtualCollections];
    v6 = [v5 sharedAlbumsCollectionList];

    v7 = sub_1A3C445AC();
    v8 = sub_1A42E6C64(&type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v7);
    *a3 = v6;
    a3[1] = a2;
    a3[2] = v8;
    a3[3] = v9;
    v10 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(a3, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for LemonadeNavigationDestination();
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t sub_1A42446EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    sub_1A42EB0C0(*(a1 + 16), &v12);
  }

  else
  {
    v12 = a2;
    LOBYTE(v13) = a3;
    v8 = sub_1A3C44628();
    v9 = sub_1A3C66934(&v12, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v8);

    sub_1A42EB0A4(v9, a1, &v12);
  }

  v10 = v14;
  *a4 = v12;
  *(a4 + 8) = v13;
  *(a4 + 24) = v10;
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

void *sub_1A42447BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for LemonadeNavigationDestination();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v31 - v18);
  if (sub_1A3DBEE68(a2 & 1, 0))
  {
    v32 = a1;
    v20 = [*(a3 + 16) px_virtualCollections];
    v21 = [v20 sharedAlbumsCollectionList];

    v33 = a4;
    v34 = a5;
    v22 = sub_1A3C445AC();
    v23 = sub_1A42E6C64(&type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v22);
    *v19 = v21;
    v19[1] = a3;
    v19[2] = v23;
    v19[3] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1A424A490(v19, v16, type metadata accessor for LemonadeNavigationDestination);

    v25 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1A4249320(v26 > 1, v27 + 1, 1, v25);
    }

    sub_1A424DDD0(v19, type metadata accessor for LemonadeNavigationDestination);
    v25[2] = v27 + 1;
    sub_1A3CA25C0(v16, v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, type metadata accessor for LemonadeNavigationDestination);
    a1 = v32;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  sub_1A42446EC(a1, a4, a5, v13);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v25 = sub_1A4249320(0, v25[2] + 1, 1, v25);
  }

  v29 = v25[2];
  v28 = v25[3];
  if (v29 >= v28 >> 1)
  {
    v25 = sub_1A4249320(v28 > 1, v29 + 1, 1, v25);
  }

  v25[2] = v29 + 1;
  sub_1A3CA25C0(v13, v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, type metadata accessor for LemonadeNavigationDestination);
  return v25;
}

uint64_t sub_1A4244B44@<X0>(__n128 *a1@<X8>)
{
  v6 = 0uLL;
  v7 = -1;
  sub_1A4030F74(&v6, &v8);
  v2 = v9;
  *a1 = v8;
  a1[1].n128_u8[0] = v2;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1A4244BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [*(a1 + 16) px_virtualCollections];
  v9 = [v8 sharedAlbumsCollectionList];

  v10 = sub_1A42E6C64(a2, a3);
  *a4 = v9;
  a4[1] = a1;
  a4[2] = v10;
  a4[3] = v11;
  v12 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
}

uint64_t sub_1A4244CFC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1A524BC34();
  a1[1] = v2;
  sub_1A424D870(0, &qword_1EB135F58, sub_1A4249F6C);
  return sub_1A42469A8(a1 + *(v3 + 44));
}

void sub_1A4244D70(void **a1)
{
  v1 = *a1;
  type metadata accessor for SharedAlbumsItemListManager();
  sub_1A47F38AC(v1, 0, 0);
}

uint64_t sub_1A4244DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A424D760(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

unint64_t sub_1A4244EF4(uint64_t a1)
{
  v2 = sub_1A3C445AC();

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A4244F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = a1;
  a3[1] = a2;
  v9 = *(type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0) + 24);
  v10 = sub_1A43A1BA0();
  sub_1A424A490(v10, v8, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  v11 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v8, 5, v11, v12 & 1, a3 + v9);
}

uint64_t sub_1A4244FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  if ((static LemonadePhotoLibraryContext.== infix(_:_:)(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A42450EC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A424DD04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A42451B0()
{
  sub_1A524DC04();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A424DD04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A4245260()
{
  sub_1A524EC94();
  sub_1A524DC04();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A424DD04(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A4245320(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  sub_1A3C52C70(0, &qword_1EB12B160);
  if ((sub_1A524DBF4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for LemonadePhotoLibraryContext();
  if ((static LemonadePhotoLibraryContext.== infix(_:_:)(v2, v5) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v6 && v4 == v7)
  {
    return 1;
  }

  return sub_1A524EAB4();
}

uint64_t sub_1A4245408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8))
  {
    v8 = sub_1A437C79C();
    return sub_1A424A490(v8, a2, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    if (*(a1 + *(type metadata accessor for LemonadeFeedStyleOptions(0) + 20)) - 4 >= 3)
    {
      sub_1A3C41FE8(0, 0, 2, v7);
      v11 = sub_1A3DC1AF8();
      v13 = v17 & 1;
      v14 = a2;
      v15 = v7;
      v16 = 6;
    }

    else
    {
      v10 = sub_1A43A1BA0();
      sub_1A424A490(v10, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
      v11 = sub_1A3DC1AF8();
      v13 = v12 & 1;
      v14 = a2;
      v15 = v7;
      v16 = 5;
    }

    return sub_1A437C3B8(v15, v16, v11, v13, v14);
  }
}

uint64_t sub_1A4245530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v55 = a2;
  sub_1A3C4C098(0, &qword_1EB135F80, sub_1A424A4F8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = v46 - v4;
  sub_1A424A58C();
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697F948];
  sub_1A424DD4C(0, &qword_1EB135FB8, sub_1A424A890, sub_1A424A58C, MEMORY[0x1E697F948]);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v58 = v46 - v10;
  sub_1A424DD4C(0, &qword_1EB135FF8, sub_1A42440B4, sub_1A424A8D8, v8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v53 = v46 - v12;
  sub_1A424A890(0);
  v57 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A5243284();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424A8D8();
  MEMORY[0x1EEE9AC00](v24);
  v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v2 + 8);
  if (v29)
  {
    v30 = *((*MEMORY[0x1E69E7D40] & *v29) + 0x540);
    v49 = v25;
    v50 = v15;
    v47 = v28;
    v48 = v26;
    v51 = v29;
    v30();
    v31 = v54;
    v60 = v54;

    sub_1A52426E4();
    v46[1] = v32;
    sub_1A424A490(v2, v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    v33 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v34 = (v22 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_1A3CA25C0(v23, v35 + v33, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    *(v35 + v34) = v31;
    (*(v17 + 104))(v19, *MEMORY[0x1E69C23E0], v16);

    sub_1A4249D98(MEMORY[0x1E69E7CC0]);
    sub_1A40F2AD0();
    sub_1A424A9B8(0, &qword_1EB135FD0, sub_1A424AA1C);
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    sub_1A424AAEC();
    v36 = v47;
    sub_1A5242AA4();
    v38 = v48;
    v37 = v49;
    (*(v48 + 16))(v53, v36, v49);
    swift_storeEnumTagMultiPayload();
    sub_1A42440B4();
    sub_1A424DD04(&unk_1EB124CD8, sub_1A42440B4);
    sub_1A424DD04(&qword_1EB136008, sub_1A424A8D8);
    v39 = v50;
    sub_1A5249744();
    sub_1A424A490(v39, v58, sub_1A424A890);
    swift_storeEnumTagMultiPayload();
    sub_1A424ABC8();
    sub_1A424DD04(&qword_1EB136010, sub_1A424A58C);
    sub_1A5249744();

    sub_1A424DDD0(v39, sub_1A424A890);
    return (*(v38 + 8))(v36, v37);
  }

  else
  {
    v41 = v54;
    v60 = v54;
    sub_1A424A4F8();
    v43 = v51;
    (*(*(v42 - 8) + 56))(v51, 1, 1, v42);
    sub_1A40F2AD0();
    v45 = v44;
    sub_1A424DD4C(0, &qword_1EB135F98, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView, sub_1A424A6C4, MEMORY[0x1E697F960]);
    sub_1A424DD04(&qword_1EB124EE0, sub_1A40F2AD0);
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    sub_1A424A6EC();
    swift_retain_n();
    sub_1A48C8940(&v60, v43, sub_1A424ABC0, v41, v45, v7);
    sub_1A424A490(v7, v58, sub_1A424A58C);
    swift_storeEnumTagMultiPayload();
    sub_1A424ABC8();
    sub_1A424DD04(&qword_1EB136010, sub_1A424A58C);
    sub_1A5249744();
    return sub_1A424DDD0(v7, sub_1A424A58C);
  }
}

uint64_t sub_1A4245E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1A424ADF0();
  v54 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AE74();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424AF70();
  v53 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424DD4C(0, &qword_1EB136068, sub_1A424AF70, sub_1A424ADF0, MEMORY[0x1E697F960]);
  v52 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  LOBYTE(v56) = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  v60 = 3;
  sub_1A424B564();
  if (sub_1A524C594())
  {
    sub_1A424C334(0, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = sub_1A424AEF8();
    MEMORY[0x1A5904CD0](v10, v8, v19);
    sub_1A424B024();
    v20 = v8;
    v22 = v21;
    v23 = sub_1A424DD04(&qword_1EB136060, sub_1A424B024);
    v56 = v22;
    v57 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = v20;
    v57 = v19;
    v25 = swift_getOpaqueTypeConformance2();
    v26 = v54;
    MEMORY[0x1A5904CF0](v6, v53, v54, OpaqueTypeConformance2, v25);
    (*(v4 + 8))(v6, v26);
    sub_1A424DDD0(v10, sub_1A424AE74);
  }

  else
  {
    sub_1A424B14C();
    sub_1A424B25C();
    v28 = v27;
    sub_1A424B350();
    v30 = v29;
    v31 = sub_1A424B424();
    v32 = sub_1A5243474();
    v51 = v8;
    v33 = v32;
    v34 = sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);

    v56 = v28;
    v57 = v33;
    v58 = v31;
    v59 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    v56 = v28;
    v57 = v30;
    v58 = v31;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    PXDisplayCollectionDetailedCountsMake(0);
    v37 = v36;
    v56 = v36;
    v57 = v38;
    v58 = v39;
    sub_1A424B024();
    v41 = v40;
    v42 = sub_1A424DD04(&qword_1EB136060, sub_1A424B024);
    MEMORY[0x1A5904CD0](&v56, v41, v42);
    v56 = v41;
    v57 = v42;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = sub_1A424AEF8();
    v56 = v51;
    v57 = v44;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v53;
    MEMORY[0x1A5904CE0](v14, v53, v54, v43, v45);

    (*(v12 + 8))(v14, v46);
  }

  v47 = sub_1A424B5C0();
  v48 = v55;
  MEMORY[0x1A5904CD0](v17, v52, v47);
  sub_1A3CE7D80(v17);
  sub_1A424B710();
  return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
}

uint64_t sub_1A4246498()
{
  sub_1A424C05C(0, &qword_1EB136038, sub_1A424B2FC, &type metadata for LemonadeAlbumNewEntryLabel, MEMORY[0x1E697D670]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - v3;
  sub_1A424B25C();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424B2FC();

  sub_1A524B704();
  sub_1A424B4D4();
  sub_1A524AA94();
  (*(v2 + 8))(v4, v1);
  sub_1A424B350();
  v9 = sub_1A424B424();
  v10 = sub_1A5243474();
  v11 = sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v13[0] = v6;
  v13[1] = v10;
  v13[2] = v9;
  v13[3] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  return sub_1A424DDD0(v8, sub_1A424B25C);
}

uint64_t sub_1A4246744@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C5A374();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A4246770()
{
  v0 = sub_1A5243474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  sub_1A424B25C();
  sub_1A424B424();
  sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A42468AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    sub_1A42EB0C0(*(a1 + 16), &v10);
  }

  else
  {
    v5 = type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
    v6 = sub_1A424DD04(&qword_1EB136080, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
    v7 = sub_1A3C66934(v2, v5, v6);

    sub_1A42EB0A4(v7, a1, &v10);
  }

  v8 = v12;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 24) = v8;
  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A42469A8@<X0>(char *a1@<X8>)
{
  v44 = a1;
  sub_1A424A070();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  v42 = sub_1A5243834();
  v7 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C098(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_1A5243EC4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1A5242704();
  v20 = v19;
  if (v19 >> 62)
  {
    result = sub_1A524E2B4();
    v45 = v3;
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v3;
    if (!result)
    {
LABEL_7:

      v47 = 0u;
      v48 = 0u;
      v49 = 1;
      v23 = sub_1A52429A4();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      (*(v7 + 104))(v9, *MEMORY[0x1E69C2678], v42);
      sub_1A5243ED4();
      *v6 = sub_1A5249574();
      *(v6 + 1) = 0;
      v6[16] = 1;
      sub_1A424D870(0, &qword_1EB136190, sub_1A424A0D4);
      v25 = &v6[*(v24 + 44)];
      sub_1A52426D4();
      v26 = *(v46 + 16);

      v27 = sub_1A3C5A374();
      sub_1A44B2EA0(v26, v27 & 1, 0, 0, 256, v25);
      v28 = sub_1A524A064();
      sub_1A424A0D4(0);
      v30 = v25 + *(v29 + 36);
      *v30 = v28;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      __asm { FMOV            V0.2D, #6.0 }

      *(v30 + 24) = _Q0;
      *(v30 + 40) = 0;
      v36 = *(v14 + 16);
      v37 = v43;
      v36(v43, v18, v13);
      v38 = v45;
      sub_1A424A490(v6, v45, sub_1A424A070);
      v39 = v44;
      v36(v44, v37, v13);
      sub_1A4249FF4(0, &qword_1EB135F68, MEMORY[0x1E69C2928], sub_1A424A070);
      sub_1A424A490(v38, &v39[*(v40 + 48)], sub_1A424A070);
      sub_1A424DDD0(v6, sub_1A424A070);
      v41 = *(v14 + 8);
      v41(v18, v13);
      sub_1A424DDD0(v38, sub_1A424A070);
      return (v41)(v37, v13);
    }
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v20);
    goto LABEL_7;
  }

  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(v20 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1A4246F40(char *a1@<X8>)
{
  *a1 = sub_1A524BC34();
  *(a1 + 1) = v2;
  sub_1A424D870(0, &qword_1EB135F58, sub_1A4249F6C);
  sub_1A42469A8(&a1[*(v3 + 44)]);
  sub_1A52426D4();
  v4 = *(v10 + 16);

  v5 = sub_1A524BC04();
  v7 = v6;
  sub_1A424A9B8(0, &qword_1EB135FD0, sub_1A424AA1C);
  v9 = &a1[*(v8 + 36)];
  *v9 = v4;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
}

uint64_t sub_1A4247034@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1A4244228(0, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItem);
  a2[3] = v4;
  a2[4] = sub_1A424D760(&qword_1EB12A820, &qword_1EB12A800, type metadata accessor for PhotoKitItem);
  *a2 = v3;
}

uint64_t sub_1A4247100@<X0>(int a1@<W3>, void *a2@<X4>, uint64_t a3@<X8>)
{

  sub_1A4243320(v6, a1, a2, v6, a3);
}

uint64_t sub_1A4247160()
{
  sub_1A424DD04(&qword_1EB136130, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);

  return sub_1A3C47918();
}

uint64_t sub_1A42471CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadePlaceholderView();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424DD4C(0, &qword_1EB136088, sub_1A424B7F8, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v38 - v8;
  sub_1A424B7F8(0);
  v11 = v10;
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16) isSystemPhotoLibrary])
  {

    sub_1A4243320(v15, 1, sub_1A424DE40, a1, v14);

    sub_1A424A490(v14, v9, sub_1A424B7F8);
    swift_storeEnumTagMultiPayload();
    sub_1A424B894();
    sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    sub_1A5249744();
    v16 = sub_1A424B7F8;
    v17 = v14;
  }

  else
  {
    v18 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
    v43 = "Albums.SharedAlbum.AX.Label.";
    v42 = v18;

    v19 = sub_1A524C634();
    v20 = PXLocalizedString(v19);

    v21 = sub_1A524C674();
    v39 = v22;
    v40 = v21;

    v23 = sub_1A524C634();
    v24 = PXLocalizedString(v23);
    v41 = a2;
    v25 = v24;

    v38[0] = sub_1A524C674();
    v27 = v26;

    v28 = sub_1A524C634();
    v29 = PXLocalizedString(v28);
    v38[2] = v11;
    v30 = v29;

    v31 = sub_1A524C674();
    v33 = v32;

    sub_1A3C66EE8(sub_1A424B888);
    v34 = sub_1A3C5A374();
    v38[1] = v4;
    v35 = v34;
    LOBYTE(v23) = sub_1A3C5A374();
    v36 = sub_1A3C5A374();
    sub_1A463DB54(v42, v35 & 1, v23 & 1, v36 & 1, 0xD000000000000026, v43 | 0x8000000000000000, v40, v39, v6, v38[0], v27, 0, 0, 0, 0, v31, v33, sub_1A424B888, a1);

    sub_1A424A490(v6, v9, type metadata accessor for LemonadePlaceholderView);
    swift_storeEnumTagMultiPayload();
    sub_1A424B894();
    sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    sub_1A5249744();
    v16 = type metadata accessor for LemonadePlaceholderView;
    v17 = v6;
  }

  return sub_1A424DDD0(v17, v16);
}

uint64_t sub_1A42476C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3C4C098(0, &qword_1EB135F80, sub_1A424A4F8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v12 = a1;
  sub_1A424A4F8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1A40F2AD0();
  v9 = v8;
  sub_1A424DD4C(0, &qword_1EB135F98, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView, sub_1A424A6C4, MEMORY[0x1E697F960]);
  sub_1A424DD04(&qword_1EB124EE0, sub_1A40F2AD0);
  sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
  sub_1A424A6EC();
  swift_retain_n();
  return sub_1A48C8940(&v12, v6, sub_1A424DE5C, a1, v9, a2);
}

void sub_1A42478D0()
{
  v0 = sub_1A524C634();
  PhotoKitItemListImplementation.numberOfItems.getter();
  PXLocalizedCountsDescription(v0);
}

uint64_t sub_1A424796C()
{
  sub_1A424DD04(&qword_1EB136138, type metadata accessor for LemonadeSharedAlbumsFeature.MacFeedProvider);

  return sub_1A3C47918();
}

id sub_1A42479D8()
{
  v0 = objc_opt_self();

  return [v0 navigateToDestination:7 completion:0];
}

uint64_t sub_1A4247A18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  sub_1A424A6C4(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424DD4C(0, &qword_1EB136198, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView, sub_1A424A6C4, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *a1;
  v27 = 1;
  sub_1A424D8DC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v26 == v25[3])
  {
    *v14 = a2;
    *(v14 + 1) = swift_getKeyPath();
    v14[16] = 0;
    *(v14 + 3) = swift_getKeyPath();
    v14[32] = 0;
    v15 = *(v12 + 28);
    *&v14[v15] = swift_getKeyPath();
    sub_1A3C4C098(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1A424A490(v14, v11, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView);
    swift_storeEnumTagMultiPayload();
    sub_1A424DD04(&qword_1EB125608, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView);
    sub_1A424A7E0();

    sub_1A5249744();
    v16 = type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView;
    v17 = v14;
  }

  else
  {
    sub_1A52426D4();
    v18 = *(v26 + 16);

    v19 = sub_1A3C5A374();
    sub_1A44B2EA0(v18, v19 & 1, 0x403C000000000000, 0x3FF8000000000000, 0, v8);
    sub_1A52426D4();
    v20 = *(v26 + 16);

    v21 = sub_1A524BC14();
    v22 = &v8[*(v6 + 36)];
    *v22 = v20;
    *(v22 + 1) = v21;
    *(v22 + 2) = v23;
    sub_1A424A490(v8, v11, sub_1A424A6C4);
    swift_storeEnumTagMultiPayload();
    sub_1A424DD04(&qword_1EB125608, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView);
    sub_1A424A7E0();
    sub_1A5249744();
    v16 = sub_1A424A6C4;
    v17 = v8;
  }

  return sub_1A424DDD0(v17, v16);
}

void sub_1A4247E38(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeSharedAlbumsCellAvatarView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A4247F90();
  sub_1A52426D4();
  v6 = *(v19[1] + 16);

  v7 = sub_1A3C5A374();
  sub_1A44B2EA0(v6, v7 & 1, v5, 0x3FF8000000000000, 0, v4);
  sub_1A4248124();
  v8 = sub_1A524A064();
  sub_1A5247BC4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1A3CA25C0(v4, a1, type metadata accessor for LemonadeSharedAlbumsCellAvatarView);
  sub_1A424A0D4(0);
  v18 = a1 + *(v17 + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
}

double sub_1A4247F90()
{
  v1 = sub_1A5249234();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v6 = *(v0 + 8);
    v12 = *(v0 + 8);
  }

  else
  {

    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v12;
  }

  if ((v6 - 1) > 1)
  {
    v8 = (sub_1A4248124() & 1) == 0;
    result = 36.0;
    v10 = 28.0;
  }

  else
  {
    v8 = (sub_1A4248124() & 1) == 0;
    result = 36.0;
    v10 = 24.0;
  }

  if (v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1A4248124()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    sub_1A524D254();
    v11 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v9, 0);
    (*(v6 + 8))(v8, v5);
    if (v13[15])
    {
      goto LABEL_3;
    }

LABEL_5:
    type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView(0);
    sub_1A4248EC0(v4);
    v10 = sub_1A5248684();
    (*(v2 + 8))(v4, v1);
    return v10 & 1;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = 1;
  return v10 & 1;
}

id sub_1A4248344()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 sharedAlbumsCollectionList];

  return v2;
}

uint64_t sub_1A424839C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20[1] = a5;
  sub_1A424BE9C(0, &qword_1EB136090, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v20 - v10;
  sub_1A424BF44(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB126910);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  v16 = [v15 shouldShowEngUIToDifferentiateBetweenSharedAlbumTypes];

  if (v16)
  {
    *v14 = a3;
    v14[1] = a4;
    sub_1A424D870(0, &qword_1EB136118, sub_1A424BF80);
    sub_1A4248710(a2, a3, a4, v14 + *(v17 + 44));
    sub_1A424A490(v14, v11, sub_1A424BF44);
    swift_storeEnumTagMultiPayload();
    sub_1A424C05C(0, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
    sub_1A424DD04(&qword_1EB136108, sub_1A424BF44);
    sub_1A424C438();
    sub_1A5249744();
    return sub_1A424DDD0(v14, sub_1A424BF44);
  }

  else
  {
    sub_1A424C05C(0, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
    (*(*(v19 - 8) + 16))(v11, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_1A424DD04(&qword_1EB136108, sub_1A424BF44);
    sub_1A424C438();
    return sub_1A5249744();
  }
}

uint64_t sub_1A4248710@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v76 = a3;
  v82 = a4;
  sub_1A424DD4C(0, &qword_1EB1360C0, sub_1A424C100, sub_1A424C388, MEMORY[0x1E697E830]);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66[-v8];
  sub_1A424C0C4(0);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v66[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v66[-v15];
  sub_1A424C05C(0, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v66[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v78 = v20;
  v21 = *(v20 + 16);
  v73 = &v66[-v22];
  v79 = v23;
  v71 = v20 + 16;
  v70 = v21;
  v21(v19);
  v24 = [a1 px_isCloudKitSharedAlbum];
  v75 = a2;
  if (v24)
  {
    v83 = xmmword_1A5327F60;
    *&v84 = 0;
    *(&v84 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v85) = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v83 = xmmword_1A5327F40;
    *&v84 = 0;
    *(&v84 + 1) = MEMORY[0x1E69E7CC0];
    LOBYTE(v85) = 1;
LABEL_5:
    v25 = MEMORY[0x1E6981148];
    sub_1A5249744();
    v83 = v86;
    v84 = v87;
    v85 = v88;
    sub_1A424C334(0, &unk_1EB122710, v25, v25, MEMORY[0x1E697F960]);
    sub_1A424D1BC();
    sub_1A5249744();
    v68 = v87;
    v69 = v86;
    v26 = v88;
    if (v89)
    {
      v27 = 256;
    }

    else
    {
      v27 = 0;
    }

LABEL_8:
    v67 = v27 | v26;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v83 = xmmword_1A5327F50;
    *&v84 = 0;
    *(&v84 + 1) = MEMORY[0x1E69E7CC0];
    v85 = 256;
    sub_1A424C334(0, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    sub_1A424D1BC();
    sub_1A5249744();
    v68 = v87;
    v69 = v86;
    v26 = v88;
    if (v89)
    {
      v27 = 256;
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_8;
  }

  v69 = 0u;
  v67 = 65280;
  v68 = 0u;
LABEL_9:
  sub_1A524A244();
  v28 = sub_1A524A104();

  KeyPath = swift_getKeyPath();
  v30 = sub_1A524A064();
  sub_1A5247BC4();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v86) = 0;
  v39 = sub_1A524B434();
  if ([a1 px_isCloudKitSharedAlbum])
  {
    v40 = sub_1A524B444();
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v40 = sub_1A524B464();
    }

    else
    {
      v40 = sub_1A524B3D4();
    }
  }

  v41 = v40;
  v42 = &v9[*(v7 + 36)];
  sub_1A424C388();
  v44 = v43;
  v45 = *(v43 + 52);
  v46 = *MEMORY[0x1E697F468];
  v47 = sub_1A52494A4();
  (*(*(v47 - 8) + 104))(&v42[v45], v46, v47);
  *v42 = v41;
  *&v42[*(v44 + 56)] = 256;
  v48 = v68;
  *v9 = v69;
  *(v9 + 1) = v48;
  *(v9 + 16) = v67;
  *(v9 + 5) = KeyPath;
  *(v9 + 6) = v28;
  v9[56] = v30;
  *(v9 + 8) = v32;
  *(v9 + 9) = v34;
  *(v9 + 10) = v36;
  *(v9 + 11) = v38;
  v9[96] = 0;
  *(v9 + 13) = v39;
  sub_1A524BC04();
  v49 = 0x4020000000000000;
  if (sub_1A524BC44())
  {
    v50 = 0;
    v51 = 0x4020000000000000;
  }

  else
  {
    sub_1A524BC14();
    v51 = 0;
    if ((sub_1A524BC44() & 1) == 0)
    {
      v49 = 0;
    }

    v50 = v49;
  }

  v52 = sub_1A524A064();
  v53 = v72;
  sub_1A424D114(v9, v72);
  v54 = &v53[*(v74 + 36)];
  *v54 = v52;
  *(v54 + 1) = v49;
  *(v54 + 2) = v51;
  *(v54 + 3) = 0;
  *(v54 + 4) = v50;
  v54[40] = 0;
  v55 = v53;
  v56 = v80;
  sub_1A3CA25C0(v55, v80, sub_1A424C0C4);
  v57 = v77;
  v58 = v73;
  v59 = v79;
  v60 = v70;
  (v70)(v77, v73, v79);
  v61 = v81;
  sub_1A424A490(v56, v81, sub_1A424C0C4);
  v62 = v82;
  (v60)(v82, v57, v59);
  sub_1A424BFB4();
  sub_1A424A490(v61, v62 + *(v63 + 48), sub_1A424C0C4);
  sub_1A424DDD0(v56, sub_1A424C0C4);
  v64 = *(v78 + 8);
  v64(v58, v59);
  sub_1A424DDD0(v61, sub_1A424C0C4);
  return (v64)(v57, v59);
}

uint64_t sub_1A4248EC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4C098(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3E755F0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1A42490CC(uint64_t a1)
{
  sub_1A5243B94();
  sub_1A424DD04(&qword_1EB124D20, MEMORY[0x1E69C2818]);
  v2 = sub_1A524C4A4();
  return sub_1A4249160(a1, v2);
}

unint64_t sub_1A4249160(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5243B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A424DD04(&qword_1EB1398F0, MEMORY[0x1E69C2818]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

size_t sub_1A4249320(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C4C098(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
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
  v15 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
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

void sub_1A424951C(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumCreationView();
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for SharedCollectionActionView();
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1A5241C44();
  v10[3] = v6;
  v10[4] = sub_1A424DD04(&qword_1EB1292F0, MEMORY[0x1E69BDD60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69BDD20], v6);
  LOBYTE(v6) = sub_1A5241704();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v6)
  {
    type metadata accessor for SharedCollectionActionViewModel();

    SharedCollectionActionViewModel.__allocating_init(navigationContext:extensionContext:sharedCollection:sharedCollections:assets:mediaSources:albumName:batchComment:perAssetCreationOptions:updateCallback:doneCallback:)(v8, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  }

  type metadata accessor for SharedAlbumActionViewModel();

  v9 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(a1, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v9 & 1, 0, 0, 0, 0);
}

void sub_1A42499E4(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A4654ADC();
  PXPresentationEnvironmentForSender();
}

unint64_t sub_1A4249C74()
{
  result = qword_1EB124218;
  if (!qword_1EB124218)
  {
    sub_1A4244290(255);
    sub_1A424DD04(&unk_1EB125770, sub_1A42442B8);
    sub_1A4249D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124218);
  }

  return result;
}

unint64_t sub_1A4249D24()
{
  result = qword_1EB1255B8;
  if (!qword_1EB1255B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1255B8);
  }

  return result;
}

unint64_t sub_1A4249D98(uint64_t a1)
{
  sub_1A41170C8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A3D71220();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A424A490(v10, v6, sub_1A41170C8);
      result = sub_1A42490CC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5243B94();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_1A4249F6C()
{
  if (!qword_1EB135F60)
  {
    sub_1A4249FF4(255, &qword_1EB135F68, MEMORY[0x1E69C2928], sub_1A424A070);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135F60);
    }
  }
}

void sub_1A4249FF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A424A070()
{
  if (!qword_1EB135F70)
  {
    sub_1A424A0D4(255);
    sub_1A424A0FC();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135F70);
    }
  }
}

unint64_t sub_1A424A0FC()
{
  result = qword_1EB135F78;
  if (!qword_1EB135F78)
  {
    sub_1A424A0D4(255);
    sub_1A424DD04(&qword_1EB1295C0, type metadata accessor for LemonadeSharedAlbumsCellAvatarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135F78);
  }

  return result;
}

uint64_t sub_1A424A1AC(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24)) + 40))
  {
    return 0x1FFFFFFFELL;
  }

  if (shouldUseNewCollectionsLayout()())
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    v3 = [v2 enableHeaderTitleChevron];

    if ((v3 & 1) == 0)
    {
      return 0x4000000000000001;
    }
  }

  sub_1A3C38BD4();
  return 1;
}

uint64_t sub_1A424A298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A424A490(a1, v6, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 9)
  {
    type metadata accessor for SharedAlbumsItemListManager();
    v8 = *(a2 + 16);
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v6;
    v12 = v6[1];
    type metadata accessor for SharedAlbumsItemListManager();
    v8 = *(a2 + 16);
    v9 = v11;
    v10 = v12;
LABEL_5:
    sub_1A47F38AC(v8, v9, v10);
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1A524E404();

  v15 = 0xD00000000000001BLL;
  v16 = 0x80000001A53B42A0;
  sub_1A424DD04(&unk_1EB139AE0, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  v13 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v13);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A424A490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A424A4F8()
{
  if (!qword_1EB135F88)
  {
    sub_1A40F2AD0();
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    v0 = sub_1A52430A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135F88);
    }
  }
}

void sub_1A424A58C()
{
  if (!qword_1EB135F90)
  {
    sub_1A40F2AD0();
    sub_1A424DD4C(255, &qword_1EB135F98, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView, sub_1A424A6C4, MEMORY[0x1E697F960]);
    sub_1A424DD04(&qword_1EB124EE0, sub_1A40F2AD0);
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    sub_1A424A6EC();
    v0 = type metadata accessor for LemonadeAlbumCell();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135F90);
    }
  }
}

unint64_t sub_1A424A6EC()
{
  result = qword_1EB135FA8;
  if (!qword_1EB135FA8)
  {
    sub_1A424DD4C(255, &qword_1EB135F98, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView, sub_1A424A6C4, MEMORY[0x1E697F960]);
    sub_1A424DD04(&qword_1EB125608, type metadata accessor for LemonadeSharedAlbumsFeature.SharedAlbumAvatarView);
    sub_1A424A7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135FA8);
  }

  return result;
}

unint64_t sub_1A424A7E0()
{
  result = qword_1EB135FB0;
  if (!qword_1EB135FB0)
  {
    sub_1A424A6C4(255);
    sub_1A424DD04(&qword_1EB1295C0, type metadata accessor for LemonadeSharedAlbumsCellAvatarView);
    sub_1A4249D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135FB0);
  }

  return result;
}

void sub_1A424A8D8()
{
  if (!qword_1EB135FC8)
  {
    sub_1A40F2AD0();
    sub_1A424A9B8(255, &qword_1EB135FD0, sub_1A424AA1C);
    sub_1A424DD04(&qword_1EB124EE8, sub_1A40F2AD0);
    sub_1A424AAEC();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB135FC8);
    }
  }
}

void sub_1A424A9B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A424AA58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A424DD04(a4, a5);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A424AAEC()
{
  result = qword_1EB135FE8;
  if (!qword_1EB135FE8)
  {
    sub_1A424A9B8(255, &qword_1EB135FD0, sub_1A424AA1C);
    sub_1A424DD04(&qword_1EB135FF0, sub_1A424AA1C);
    sub_1A4249D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB135FE8);
  }

  return result;
}

unint64_t sub_1A424ABC8()
{
  result = qword_1EB136000;
  if (!qword_1EB136000)
  {
    sub_1A424A890(255);
    sub_1A424DD04(&unk_1EB124CD8, sub_1A42440B4);
    sub_1A424DD04(&qword_1EB136008, sub_1A424A8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136000);
  }

  return result;
}

void sub_1A424ACA8(char *a1@<X8>)
{
  type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider(0);
  *a1 = sub_1A524BC34();
  *(a1 + 1) = v2;
  sub_1A424D870(0, &qword_1EB135F58, sub_1A4249F6C);
  sub_1A42469A8(&a1[*(v3 + 44)]);
  sub_1A52426D4();
  v4 = *(v10 + 16);

  v5 = sub_1A524BC04();
  v7 = v6;
  sub_1A424A9B8(0, &qword_1EB135FD0, sub_1A424AA1C);
  v9 = &a1[*(v8 + 36)];
  *v9 = v4;
  *(v9 + 1) = v5;
  *(v9 + 2) = v7;
}

void sub_1A424ADF0()
{
  if (!qword_1EB127C98)
  {
    sub_1A424AE74();
    sub_1A424AEF8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127C98);
    }
  }
}

void sub_1A424AE74()
{
  if (!qword_1EB128060)
  {
    sub_1A424C334(255, &qword_1EB128070, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697C280]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128060);
    }
  }
}

unint64_t sub_1A424AEF8()
{
  result = qword_1EB128050;
  if (!qword_1EB128050)
  {
    sub_1A424AE74();
    sub_1A3D6FEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128050);
  }

  return result;
}

void sub_1A424AF70()
{
  if (!qword_1EB136018)
  {
    sub_1A424B024();
    sub_1A424DD04(&qword_1EB136060, sub_1A424B024);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136018);
    }
  }
}

void sub_1A424B024()
{
  if (!qword_1EB136020)
  {
    sub_1A424B14C();
    sub_1A424B25C();
    sub_1A424B350();
    sub_1A424B424();
    sub_1A5243474();
    sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for LemonadeAlbumToolbarContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136020);
    }
  }
}

void sub_1A424B14C()
{
  if (!qword_1EB136028)
  {
    sub_1A424B25C();
    sub_1A424B350();
    sub_1A424B424();
    sub_1A5243474();
    sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136028);
    }
  }
}

void sub_1A424B25C()
{
  if (!qword_1EB136030)
  {
    sub_1A424C05C(255, &qword_1EB136038, sub_1A424B2FC, &type metadata for LemonadeAlbumNewEntryLabel, MEMORY[0x1E697D670]);
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136030);
    }
  }
}

unint64_t sub_1A424B2FC()
{
  result = qword_1EB136040;
  if (!qword_1EB136040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136040);
  }

  return result;
}

void sub_1A424B350()
{
  if (!qword_1EB136048)
  {
    sub_1A424B25C();
    sub_1A5243474();
    sub_1A424B424();
    sub_1A424DD04(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136048);
    }
  }
}

unint64_t sub_1A424B424()
{
  result = qword_1EB136050;
  if (!qword_1EB136050)
  {
    sub_1A424B25C();
    sub_1A424B4D4();
    sub_1A424DD04(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136050);
  }

  return result;
}

unint64_t sub_1A424B4D4()
{
  result = qword_1EB136058;
  if (!qword_1EB136058)
  {
    sub_1A424C05C(255, &qword_1EB136038, sub_1A424B2FC, &type metadata for LemonadeAlbumNewEntryLabel, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136058);
  }

  return result;
}

unint64_t sub_1A424B564()
{
  result = qword_1EB129AF0;
  if (!qword_1EB129AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129AF0);
  }

  return result;
}

unint64_t sub_1A424B5C0()
{
  result = qword_1EB136070;
  if (!qword_1EB136070)
  {
    sub_1A424DD4C(255, &qword_1EB136068, sub_1A424AF70, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A424B024();
    sub_1A424DD04(&qword_1EB136060, sub_1A424B024);
    swift_getOpaqueTypeConformance2();
    sub_1A424AE74();
    sub_1A424AEF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136070);
  }

  return result;
}

void sub_1A424B710()
{
  if (!qword_1EB136078)
  {
    sub_1A424DD4C(255, &qword_1EB136068, sub_1A424AF70, sub_1A424ADF0, MEMORY[0x1E697F960]);
    sub_1A424B5C0();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB136078);
    }
  }
}

unint64_t sub_1A424B894()
{
  result = qword_1EB127E10;
  if (!qword_1EB127E10)
  {
    sub_1A424B7F8(255);
    sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424B944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E10);
  }

  return result;
}

unint64_t sub_1A424B944()
{
  result = qword_1EB127DF0;
  if (!qword_1EB127DF0)
  {
    sub_1A424B840(255);
    sub_1A424DD04(&qword_1EB129988, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127DF0);
  }

  return result;
}

void sub_1A424BA24(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  v2 = [v1 px_virtualCollections];
  v7 = [v2 sharedAlbumsCollectionList];

  LODWORD(v2) = [v1 isSystemPhotoLibrary];
  sub_1A424DCB4(0, &unk_1EB126170, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F8E10;
    *(v3 + 56) = sub_1A3C52C70(0, &qword_1EB120A70);
    *(v3 + 32) = v7;
    v4 = v7;
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F8E10;
    *(v3 + 56) = sub_1A3C52C70(0, &qword_1EB126BF0);
    *(v3 + 32) = v1;
    v4 = v1;
  }

  sub_1A3C52C70(0, &qword_1EB126690);
  v5 = v4;
  v6 = MEMORY[0x1A5908EF0](v3);
  sub_1A52422A4();
}

uint64_t sub_1A424BBF0()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_1A3D71010();
  v9 = sub_1A5242724();
  if (v10)
  {
    sub_1A3C38BD4();
    sub_1A3C4C098(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F8E10;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1A3D710E8();
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v12 = sub_1A524C6B4();

    return v12;
  }

  else
  {
    v14 = v9;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v16[1] = v14;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v15 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
    return v15;
  }
}

void sub_1A424BE9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A424BF44(255);
    v7 = v6;
    sub_1A424C05C(255, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A424BFB4()
{
  if (!qword_1EB1360A8)
  {
    sub_1A424C05C(255, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
    sub_1A424C0C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1360A8);
    }
  }
}

void sub_1A424C05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A424C100()
{
  if (!qword_1EB1360C8)
  {
    sub_1A424C1CC(255, &qword_1EB1360D0, &qword_1EB1360D8, sub_1A424C244, sub_1A3EC18C4);
    sub_1A424C334(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1360C8);
    }
  }
}

void sub_1A424C1CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A424DD4C(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A424C2AC()
{
  if (!qword_1EB1360F0)
  {
    sub_1A424C334(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1360F0);
    }
  }
}

void sub_1A424C334(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A424C388()
{
  if (!qword_1EB1360F8)
  {
    sub_1A524B984();
    sub_1A424DD04(&qword_1EB1214C0, MEMORY[0x1E6981998]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1360F8);
    }
  }
}

unint64_t sub_1A424C438()
{
  result = qword_1EB136110;
  if (!qword_1EB136110)
  {
    sub_1A424C05C(255, &qword_1EB1360B0, sub_1A4249D24, &type metadata for SharedAlbumVariantEngUIBadge, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136110);
  }

  return result;
}

uint64_t sub_1A424C518(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4244228(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A424C66C(uint64_t a1)
{
  result = sub_1A3C445AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A424C718()
{
  result = qword_1EB136128;
  if (!qword_1EB136128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136128);
  }

  return result;
}

uint64_t sub_1A424C868(uint64_t a1)
{
  result = sub_1A424DD04(&qword_1EB136080, type metadata accessor for LemonadeSharedAlbumsFeature.DefaultFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A424C9F4(uint64_t a1)
{
  result = sub_1A424DD04(&qword_1EB136140, type metadata accessor for LemonadeSharedAlbumsFeature.MacFeedProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A424CB04()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A3C4C098(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A424CC30()
{
  sub_1A40F2AD0();
  if (v0 <= 0x3F)
  {
    sub_1A424DCB4(319, &unk_1EB1247B0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A424DCB4(319, &qword_1EB1246E0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A3C4C098(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A424CD6C()
{
  result = qword_1EB122A78;
  if (!qword_1EB122A78)
  {
    sub_1A424DD4C(255, &qword_1EB122A70, sub_1A42440B4, sub_1A4244290, MEMORY[0x1E697F960]);
    sub_1A424DD04(&unk_1EB124CD8, sub_1A42440B4);
    sub_1A4249C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A78);
  }

  return result;
}

unint64_t sub_1A424CE60()
{
  result = qword_1EB136148;
  if (!qword_1EB136148)
  {
    sub_1A424DD4C(255, &qword_1EB136150, sub_1A424A890, sub_1A424A58C, MEMORY[0x1E697F960]);
    sub_1A424ABC8();
    sub_1A424DD04(&qword_1EB136010, sub_1A424A58C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136148);
  }

  return result;
}

unint64_t sub_1A424CF54()
{
  result = qword_1EB136158;
  if (!qword_1EB136158)
  {
    sub_1A424DD4C(255, &qword_1EB136160, sub_1A424B7F8, type metadata accessor for LemonadePlaceholderView, MEMORY[0x1E697F960]);
    sub_1A424B894();
    sub_1A424DD04(&qword_1EB12A078, type metadata accessor for LemonadePlaceholderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136158);
  }

  return result;
}

unint64_t sub_1A424D048()
{
  result = qword_1EB136168;
  if (!qword_1EB136168)
  {
    sub_1A424BE9C(255, &qword_1EB136170, MEMORY[0x1E697F960]);
    sub_1A424DD04(&qword_1EB136108, sub_1A424BF44);
    sub_1A424C438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136168);
  }

  return result;
}

uint64_t sub_1A424D114(uint64_t a1, uint64_t a2)
{
  sub_1A424DD4C(0, &qword_1EB1360C0, sub_1A424C100, sub_1A424C388, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A424D1BC()
{
  result = qword_1EB122720;
  if (!qword_1EB122720)
  {
    sub_1A424C334(255, &unk_1EB122710, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697F960]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122720);
  }

  return result;
}

void sub_1A424D274()
{
  if (!qword_1EB136178)
  {
    sub_1A4244228(255, &qword_1EB12E7A8, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    sub_1A424D760(&qword_1EB136180, &qword_1EB12E7A8, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    v0 = type metadata accessor for LemonadeCollectionCustomizationView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136178);
    }
  }
}

uint64_t objectdestroy_92Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = (v2 + ((*(*v4 + 80) + 16) & ~*(*v4 + 80)));

  v6 = v5 + v4[9];
  sub_1A3C4C098(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1A5248284();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  v8 = a2(0);
  sub_1A3D35BAC(*&v6[v8[9]], v6[v8[9] + 8]);
  v9 = v8[10];
  sub_1A3C4C098(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A5248714();
    (*(*(v10 - 8) + 8))(&v6[v9], v10);
  }

  else
  {
  }

  v11 = v8[11];
  sub_1A3C4C098(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5242D14();
    (*(*(v12 - 8) + 8))(&v6[v11], v12);
  }

  else
  {
  }

  v13 = &v6[v8[13]];

  return swift_deallocObject();
}

void sub_1A424D69C()
{
  if (!qword_1EB12BF20)
  {
    sub_1A4244228(255, &qword_1EB12BF00, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    sub_1A424D760(&qword_1EB12BF10, &qword_1EB12BF00, type metadata accessor for LemonadeCollectionCustomizationSharedCollectionsModel);
    v0 = type metadata accessor for LemonadeCollectionCustomizationView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12BF20);
    }
  }
}

uint64_t sub_1A424D760(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4244228(255, a2, &qword_1EB126AC0, 0x1E6978650, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A424D7E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(v6, a3);
}

void sub_1A424D870(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A424D8DC()
{
  result = qword_1EB1258C0;
  if (!qword_1EB1258C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1258C0);
  }

  return result;
}

void sub_1A424D930(void *a1)
{
  v17 = sub_1A5240B74();
  v2 = [v17 code];
  v3 = [v17 localizedDescription];
  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  [a1 setTitle_];

  v4 = [v17 localizedFailureReason];
  [a1 setMessage_];

  sub_1A424DCB4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  v6 = sub_1A524C634();
  v7 = PXLocalizedString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  v8 = [objc_allocWithZone(off_1E7721440) initWithTitle:v7 style:1 action:0];

  *(v5 + 32) = v8;
  sub_1A3C52C70(0, &qword_1EB12B9F0);
  v9 = sub_1A524CA14();

  [a1 addActions_];

  if (v2 == 1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1A52F9790;
    v11 = sub_1A524C634();
    v12 = PXLemonadeLocalizedString(v11);

    if (!v12)
    {
      sub_1A524C674();
      v12 = sub_1A524C634();
    }

    v13 = objc_allocWithZone(off_1E7721440);
    aBlock[4] = sub_1A42479D8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_105_0;
    v14 = _Block_copy(aBlock);

    v15 = [v13 initWithTitle:v12 style:0 action:v14];
    _Block_release(v14);

    *(v10 + 32) = v15;
    v16 = sub_1A524CA14();

    [a1 addActions_];
  }

  else
  {
  }
}

void sub_1A424DCB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A424DD04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A424DD4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A424DDD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A424DE60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697E730];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A424E2C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LemonadeCustomizeButton();
  sub_1A425164C(v1 + *(v12 + 20), v11, &qword_1EB128A50, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A52486A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1A424E094@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A424E2C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for LemonadeCustomizeButton();
  sub_1A425164C(v1 + *(v12 + 24), v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5242D14();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A424E2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LemonadeCustomizeButton.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeCustomizeButton();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A424E610();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A424F41C(v1, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A42515E4(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for LemonadeCustomizeButton);
  v14 = v1;
  sub_1A425116C(0, &qword_1EB122FB8, sub_1A424E6A4, sub_1A3E42C88);
  sub_1A424EF1C();
  sub_1A524B704();
  sub_1A424EDC4(&qword_1EB121AD8, sub_1A424E610);
  sub_1A524AA94();
  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for LemonadeCustomizeButton()
{
  result = qword_1EB186490;
  if (!qword_1EB186490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A424E610()
{
  if (!qword_1EB121AD0)
  {
    sub_1A425116C(255, &qword_1EB122FB8, sub_1A424E6A4, sub_1A3E42C88);
    sub_1A424EF1C();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121AD0);
    }
  }
}

void sub_1A424E6A4()
{
  if (!qword_1EB123040)
  {
    sub_1A424E738();
    sub_1A424EEC8(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123040);
    }
  }
}

void sub_1A424E738()
{
  if (!qword_1EB123098)
  {
    sub_1A424E7B8();
    sub_1A424EE0C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123098);
    }
  }
}

void sub_1A424E7B8()
{
  if (!qword_1EB123198)
  {
    sub_1A424E884(255, &qword_1EB1233C8, sub_1A424E85C);
    sub_1A424EE0C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123198);
    }
  }
}

void sub_1A424E884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A424E8E8()
{
  if (!qword_1EB123F38)
  {
    sub_1A424E980();
    sub_1A424E2C8(255, &qword_1EB127880, MEMORY[0x1E697DC30], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123F38);
    }
  }
}

void sub_1A424E980()
{
  if (!qword_1EB121F38)
  {
    sub_1A424E884(255, &qword_1EB123BB8, sub_1A424EA78);
    sub_1A5249E64();
    sub_1A424ECF0();
    sub_1A424EDC4(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F38);
    }
  }
}

void sub_1A424EA78()
{
  if (!qword_1EB121970)
  {
    sub_1A424E2C8(255, &qword_1EB121178, sub_1A424EB0C, MEMORY[0x1E6981F40]);
    sub_1A424EC68();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121970);
    }
  }
}

void sub_1A424EB0C()
{
  if (!qword_1EB1236D8)
  {
    sub_1A424E2C8(255, &qword_1EB1236E0, sub_1A424EBA4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1236D8);
    }
  }
}

void sub_1A424EBA4()
{
  if (!qword_1EB128308)
  {
    sub_1A424EEC8(255, &qword_1EB1285B0, MEMORY[0x1E6981748], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A424E2C8(255, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128308);
    }
  }
}

unint64_t sub_1A424EC68()
{
  result = qword_1EB121180;
  if (!qword_1EB121180)
  {
    sub_1A424E2C8(255, &qword_1EB121178, sub_1A424EB0C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121180);
  }

  return result;
}

unint64_t sub_1A424ECF0()
{
  result = qword_1EB123BC0;
  if (!qword_1EB123BC0)
  {
    sub_1A424E884(255, &qword_1EB123BB8, sub_1A424EA78);
    sub_1A424EDC4(&qword_1EB121978, sub_1A424EA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123BC0);
  }

  return result;
}

uint64_t sub_1A424EDC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A424EE0C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A424EE78(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A424EE78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A424EEC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A424EF1C()
{
  result = qword_1EB122FC0;
  if (!qword_1EB122FC0)
  {
    sub_1A425116C(255, &qword_1EB122FB8, sub_1A424E6A4, sub_1A3E42C88);
    sub_1A424F088(&qword_1EB123048, sub_1A424E6A4, sub_1A424F040, sub_1A3D6D4B0);
    sub_1A424EDC4(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FC0);
  }

  return result;
}

uint64_t sub_1A424F088(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A424F15C()
{
  result = qword_1EB1233D0;
  if (!qword_1EB1233D0)
  {
    sub_1A424E884(255, &qword_1EB1233C8, sub_1A424E85C);
    sub_1A424F200();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1233D0);
  }

  return result;
}

unint64_t sub_1A424F200()
{
  result = qword_1EB1237D8;
  if (!qword_1EB1237D8)
  {
    sub_1A424E85C(255);
    sub_1A424F280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1237D8);
  }

  return result;
}

unint64_t sub_1A424F280()
{
  result = qword_1EB123F40;
  if (!qword_1EB123F40)
  {
    sub_1A424E8E8();
    sub_1A424E884(255, &qword_1EB123BB8, sub_1A424EA78);
    sub_1A5249E64();
    sub_1A424ECF0();
    sub_1A424EDC4(&qword_1EB127A50, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1A419AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123F40);
  }

  return result;
}

uint64_t sub_1A424F41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeCustomizeButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A424F484(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A524A204();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1E6980E30];
  sub_1A424E2C8(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = v31 - v6;
  v42 = sub_1A524A274();
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v40 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A5249E64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31[9] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1A424EA78();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E884(0, &qword_1EB123BB8, sub_1A424EA78);
  v31[2] = v14;
  MEMORY[0x1EEE9AC00](v14);
  sub_1A424E980();
  v31[11] = v15;
  v31[10] = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v31[3] = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E8E8();
  MEMORY[0x1EEE9AC00](v17);
  v31[4] = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E85C(0);
  v31[7] = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v31[5] = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E884(0, &qword_1EB1233C8, sub_1A424E85C);
  v31[8] = v21 - 8;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v31[6] = v31 - v22;
  sub_1A424E7B8();
  v37 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23 - 8);
  v34 = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E738();
  v38 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25 - 8);
  v35 = v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E6A4();
  v39 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27 - 8);
  v36 = v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = sub_1A5249314();
  *(v13 + 1) = 0;
  v13[16] = 1;
  sub_1A4251464();
  v30 = &v13[*(v29 + 44)];
  v31[1] = a1;
  sub_1A4250160(a1, v30);
}

void sub_1A4250160(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A524B554();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1A5246944();
  v6 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424EBA4();
  v56 = v9;
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52486A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A424E2C8(0, &qword_1EB1236E0, sub_1A424EBA4, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v53 = a1;
  sub_1A424DE60(v15);
  LOBYTE(a1) = sub_1A5248684();
  (*(v13 + 8))(v15, v12);
  if (a1)
  {
    v22 = 1;
  }

  else
  {
    v23 = sub_1A4A5AE3C();
    (*(v6 + 16))(v8, v23, v50);
    sub_1A524B5E4();
    v25 = v51;
    v24 = v52;
    (*(v51 + 104))(v5, *MEMORY[0x1E6981630], v52);
    v50 = sub_1A524B5C4();

    (*(v25 + 8))(v5, v24);
    type metadata accessor for LemonadeCustomizeButton();
    sub_1A4074924();
    sub_1A52480D4();
    sub_1A52480D4();
    sub_1A524BC74();
    sub_1A52481F4();
    v26 = v60;
    v27 = v61;
    v28 = v62;
    v29 = v63;
    v52 = v64;
    v53 = v59;
    v30 = &v11[*(v56 + 36)];
    sub_1A424E2C8(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v32 = *(v31 + 28);
    v33 = *MEMORY[0x1E69816C8];
    v34 = sub_1A524B5B4();
    (*(*(v34 - 8) + 104))(v30 + v32, v33, v34);
    *v30 = swift_getKeyPath();
    v35 = v52;
    v36 = v53;
    *v11 = v50;
    *(v11 + 1) = v36;
    v11[16] = v26;
    *(v11 + 3) = v27;
    v11[32] = v28;
    *(v11 + 5) = v29;
    *(v11 + 6) = v35;
    sub_1A42515E4(v11, v21, sub_1A424EBA4);
    v22 = 0;
  }

  (*(v54 + 56))(v21, v22, 1, v56);
  v57 = sub_1A3C38BD4();
  v58 = v37;
  sub_1A3D5F9DC();
  v38 = sub_1A524A464();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = MEMORY[0x1E69E6720];
  sub_1A425164C(v21, v18, &qword_1EB1236E0, sub_1A424EBA4, MEMORY[0x1E69E6720]);
  v46 = v55;
  sub_1A425164C(v18, v55, &qword_1EB1236E0, sub_1A424EBA4, v45);
  sub_1A424EB0C();
  v48 = v46 + *(v47 + 48);
  *v48 = v38;
  *(v48 + 8) = v40;
  v42 &= 1u;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  sub_1A3E75E68(v38, v40, v42);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4250788()
{
  v1 = sub_1A5249234();
  v17 = *(v1 - 8);
  v18 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E697E730];
  v5 = MEMORY[0x1E697DCB8];
  sub_1A424E2C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = sub_1A52486A4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeCustomizeButton();
  sub_1A425164C(v0 + *(v13 + 20), v8, &qword_1EB128A50, v4, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v17 + 8))(v3, v18);
  }

  v15 = (*(v10 + 88))(v12, v9);
  result = 20.0;
  if (v15 != *MEMORY[0x1E697E718] && v15 != *MEMORY[0x1E697E6F0] && v15 != *MEMORY[0x1E697E6F8] && v15 != *MEMORY[0x1E697E6E8] && v15 != *MEMORY[0x1E697E708] && v15 != *MEMORY[0x1E697E720] && v15 != *MEMORY[0x1E697E728])
  {
    result = 22.0;
    if (v15 != *MEMORY[0x1E697E6C0])
    {
      result = 24.0;
      if (v15 != *MEMORY[0x1E697E6C8])
      {
        result = 26.0;
        if (v15 != *MEMORY[0x1E697E6D0])
        {
          result = 28.0;
          if (v15 != *MEMORY[0x1E697E6D8])
          {
            result = 30.0;
            if (v15 != *MEMORY[0x1E697E6E0])
            {
              (*(v10 + 8))(v12, v9, 30.0);
              return 20.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A4250B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  v5 = type metadata accessor for LemonadeCustomizeButton();
  v6 = *(v5 + 20);
  *(a4 + v6) = swift_getKeyPath();
  v7 = MEMORY[0x1E697DCB8];
  sub_1A424E2C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = *(v5 + 24);
  *(a4 + v8) = swift_getKeyPath();
  sub_1A424E2C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v7);
  swift_storeEnumTagMultiPayload();
  sub_1A3F93828();
  return sub_1A52480C4();
}

uint64_t sub_1A4250C88(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A424E610();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A424F41C(v2, &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1A42515E4(&v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for LemonadeCustomizeButton);
  v14 = v2;
  sub_1A425116C(0, &qword_1EB122FB8, sub_1A424E6A4, sub_1A3E42C88);
  sub_1A424EF1C();
  sub_1A524B704();
  sub_1A424EDC4(&qword_1EB121AD8, sub_1A424E610);
  sub_1A524AA94();
  return (*(v7 + 8))(v9, v6);
}

void sub_1A4250F24()
{
  sub_1A424EE78(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A424E2C8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A424E2C8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A4074924();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A425105C()
{
  result = qword_1EB123C50;
  if (!qword_1EB123C50)
  {
    sub_1A425116C(255, &qword_1EB123C48, sub_1A424E610, MEMORY[0x1E697CBE8]);
    sub_1A424EDC4(&qword_1EB121AD8, sub_1A424E610);
    sub_1A424EDC4(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123C50);
  }

  return result;
}

void sub_1A425116C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for LemonadeCustomizeButton();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  sub_1A424E2C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[6];
  sub_1A424E2C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5242D14();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[7];
  sub_1A4074924();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1A4251404()
{
  type metadata accessor for LemonadeCustomizeButton();

  return sub_1A424F3A4();
}

void sub_1A4251464()
{
  if (!qword_1EB124518)
  {
    sub_1A424E2C8(255, &qword_1EB121178, sub_1A424EB0C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124518);
    }
  }
}

uint64_t sub_1A42514FC(uint64_t a1)
{
  sub_1A424E884(0, &qword_1EB123BB8, sub_1A424EA78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A425157C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42515E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A425164C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A424E2C8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A42516BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A424E2C8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A4251734(void *a1)
{
  v3 = [a1 title];
  if (!v3)
  {
    sub_1A524C674();
    v3 = sub_1A524C634();
  }

  v4 = [a1 systemImageName];
  v5 = [a1 state];
  sub_1A42518A0(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v8[4] = sub_1A4251C10;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3F4ECC0;
  v8[3] = &block_descriptor_135;
  v7 = _Block_copy(v8);
  swift_unknownObjectRetain();

  [v1 addItemWithTitle:v3 systemImageName:v4 state:v5 options:0 handler:v7];

  _Block_release(v7);
}

unint64_t sub_1A42518A0(unint64_t result)
{
  if (result >= 3)
  {
    v7 = v2;
    v8 = v1;
    v9 = v3;
    v10 = v4;
    sub_1A524E404();

    strcpy(v6, "unknown state ");
    v6[15] = -18;
    type metadata accessor for PXMenuActionState(0);
    v5 = sub_1A524C714();
    MEMORY[0x1A5907B60](v5);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4251968(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A3EBECA4(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1A524EA94();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  [a3 performAction:v11 presentationSource:a2];
  return swift_unknownObjectRelease();
}

void sub_1A4251AB4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1A4251C40;
  *(v3 + 24) = v2;
  v4[4] = sub_1A3D78DD0;
  v4[5] = v3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D35A90;
  v4[3] = &block_descriptor_9_6;
  _Block_copy(v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4251C40(uint64_t result)
{
  v14 = result;
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
LABEL_17:
    result = sub_1A524E2B4();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  for (i = 4; ; ++i)
  {
    v5 = i - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A59097F0](i - 4, v2);
      v7 = i - 3;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * i);
      swift_unknownObjectRetain();
      v7 = i - 3;
      if (__OFADD__(v5, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    v8 = [v6 title];
    if (!v8)
    {
      sub_1A524C674();
      v8 = sub_1A524C634();
    }

    v9 = [v6 systemImageName];
    v10 = [v6 state];
    if (v10 >= 3)
    {
      break;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    v18 = sub_1A4251F28;
    v19 = v11;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v16 = sub_1A3F4ECC0;
    v17 = &block_descriptor_16_4;
    v12 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v14 addItemWithTitle:v8 systemImageName:v9 state:v10 options:0 handler:v12];

    _Block_release(v12);
    result = swift_unknownObjectRelease();
    if (v7 == v3)
    {
      return result;
    }
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1A524E404();

  strcpy(&aBlock, "unknown state ");
  HIBYTE(aBlock) = -18;
  v20 = v10;
  type metadata accessor for PXMenuActionState(0);
  v13 = sub_1A524C714();
  MEMORY[0x1A5907B60](v13);

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A4251F54@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v51 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v51);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v52 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v53 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 9) = a3;
  *(a8 + 10) = a4;
  *(a8 + 11) = a5;
  *(a8 + 16) = a6;
  v25 = type metadata accessor for LemonadePeopleSectionProvider(0);
  *(a8 + *(v25 + 44)) = a7;
  if (a7)
  {
    v26 = MEMORY[0x1E69E7D40];
    v27 = *((*MEMORY[0x1E69E7D40] & *a7) + 0x1C8);
    v28 = a7;
    v29 = v27();
    if (v29 > 4 || ((1 << v29) & 0x1A) == 0)
    {
      v48 = sub_1A437C79C();
      v46 = v53;
      sub_1A4253880(v48, v53, type metadata accessor for LemonadeFeedBodyStyle);
    }

    else
    {
      (*((*v26 & *v28) + 0x210))(&v54);
      if (v54 == 1)
      {
        v31 = sub_1A437CA18();
      }

      else
      {
        v31 = sub_1A437C79C();
      }

      v47 = v52;
      v46 = v53;
      sub_1A4253880(v31, v52, type metadata accessor for LemonadeFeedBodyStyle);

      sub_1A425399C(v47, v46, type metadata accessor for LemonadeFeedBodyStyle);
    }

    sub_1A425399C(v46, v24, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v53 = sub_1A3C47918();
    v33 = v32;
    v34 = v25;
    v35 = sub_1A3C47918();
    v37 = v36;
    v38 = sub_1A3C52D68();
    v40 = v39;
    v42 = v41;
    v43 = sub_1A3C4ED50();
    BYTE1(v54) = 1;
    *v17 = sub_1A42522CC;
    *(v17 + 1) = 0;
    v17[16] = 2;
    *(v17 + 3) = 0;
    v17[32] = 1;
    *(v17 + 5) = v53;
    *(v17 + 6) = v33;
    *(v17 + 7) = v35;
    *(v17 + 8) = v37;
    v25 = v34;
    *(v17 + 9) = v38;
    *(v17 + 10) = v40;
    v17[88] = v42;
    v17[89] = v43;
    swift_storeEnumTagMultiPayload();
    v44 = sub_1A3DC1AF8();
    sub_1A437C3B8(v17, 0, v44, v45 & 1, v24);
  }

  return sub_1A425399C(v24, a8 + *(v25 + 40), type metadata accessor for LemonadeFeedBodyStyle);
}

uint64_t sub_1A42522CC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C21F0])
  {
    return 40;
  }

  (*(v3 + 8))(v6, v2);
  return 35;
}

uint64_t sub_1A42523E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v5 = type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A425431C(0, &qword_1EB136208, MEMORY[0x1E697F948]);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = v35 - v9;
  v10 = sub_1A5243284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v40 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadePeopleSectionProvider(0);
  v14 = v13 - 8;
  v39 = *(v13 - 8);
  v15 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1A4253798();
  v41 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[*(v14 + 52)];
  if (v20)
  {
    v21 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x540);
    v38 = v5;
    v36 = v17;
    v37 = v20;
    v21();
    v47 = a1;

    sub_1A5242964();
    v35[1] = v22;
    sub_1A4253880(v3, v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleSectionProvider);
    v23 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v24 = swift_allocObject();
    sub_1A425399C(v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for LemonadePeopleSectionProvider);
    *(v24 + ((v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    (*(v11 + 104))(v40, *MEMORY[0x1E69C23E0], v10);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A40C61BC();
    sub_1A40C6344();
    sub_1A4254568(&qword_1EB131800, sub_1A40C61BC);
    v25 = sub_1A3C36888();
    v45 = &type metadata for LemonadePeopleShelfProvider;
    v46 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1A5242AA4();
    v26 = v36;
    v27 = v41;
    (*(v36 + 16))(v43, v19, v41);
    swift_storeEnumTagMultiPayload();
    sub_1A4254568(&qword_1EB136218, sub_1A4253798);
    sub_1A42538E8();
    sub_1A5249744();

    return (*(v26 + 8))(v19, v27);
  }

  else
  {
    v29 = v3[9];
    v30 = v3[10];
    v31 = v3[11];
    v32 = *(v5 + 32);
    v33 = *MEMORY[0x1E69C2538];
    v34 = sub_1A5243624();
    (*(*(v34 - 8) + 104))(&v7[v32], v33, v34);
    *v7 = a1;
    v7[8] = v29;
    v7[9] = v30;
    v7[10] = v31;
    sub_1A4253880(v7, v43, type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView);
    swift_storeEnumTagMultiPayload();
    sub_1A4254568(&qword_1EB136218, sub_1A4253798);
    sub_1A42538E8();

    sub_1A5249744();
    return sub_1A4253940(v7);
  }
}

uint64_t sub_1A4252A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A5243624();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5242954();
  v8 = v11[1];
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2538], v4);
  v9 = *(a1 + 10);
  LOBYTE(a1) = *(a1 + 11);
  sub_1A3C36888();
  sub_1A414D324(v8, v7, v9, a1, a2);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A4252B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A42541FC(0, &qword_1EB124D70, MEMORY[0x1E69C2540]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  sub_1A5242954();
  v9 = v22;
  v10 = sub_1A3D61684(0, v22[3].Kind);
  v11 = 0;
  if (v10)
  {
    v12 = PhotoKitItem.keyAsset.getter();
    if (v12)
    {

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  v20[1] = v11;
  v13 = *(v3 + 32);
  v14 = sub_1A5243624();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, v2 + v13, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  sub_1A4253880(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  sub_1A425399C(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView);
  sub_1A40C61BC();
  sub_1A40C6344();
  sub_1A4254568(&qword_1EB1317F0, sub_1A40C61BC);
  sub_1A4254568(&qword_1EB1317F8, sub_1A40C61BC);
  sub_1A4254568(&qword_1EB131800, sub_1A40C61BC);
  v18 = sub_1A3C36888();

  v22 = &type metadata for LemonadePeopleShelfProvider;
  v23 = v18;
  swift_getOpaqueTypeConformance2();
  return sub_1A5242504();
}

uint64_t sub_1A4252F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))();
  }

  else
  {
    v8 = 0;
  }

  if (MEMORY[0x1A590D320]())
  {
    v9 = *(a1 + 16);

    sub_1A4270424(v9);
  }

  else
  {
    v10 = v7 != 0;
    v11 = type metadata accessor for LemonadePeopleSectionProvider(0);
    v12 = sub_1A4254568(&qword_1EB136220, type metadata accessor for LemonadePeopleSectionProvider);
    v13 = sub_1A3C66934(v4, v11, v12);
    v18 = a1;
    sub_1A4253C40(0, &qword_1EB129F78, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItemListManager);
    sub_1A4253C40(0, &qword_1EB125C30, &qword_1EB1265C0, 0x1E6978980, type metadata accessor for PhotoKitItem);
    v15 = v14;
    v16 = sub_1A4254510(&qword_1EB136228, &qword_1EB129F78, type metadata accessor for PhotoKitItemListManager);

    sub_1A426FECC(v13, &v18, v10, v8, v15, v16, a3);
  }

  type metadata accessor for LemonadeNavigationDestination();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4253168@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5243624();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5242954();
  v8 = v11[1];
  (*(v5 + 104))(v7, *MEMORY[0x1E69C2538], v4);
  v9 = *(v2 + 10);
  LOBYTE(v2) = *(v2 + 11);
  sub_1A3C36888();
  sub_1A414D324(v8, v7, v9, v2, a1);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A42532AC()
{
  v1._object = 0x80000001A53CEBD0;
  v1._countAndFlagsBits = 0xD000000000000020;
  return LemonadeLocalizedPeopleAndPetsTitle(for:key:)(v0->super.isa, v1)._countAndFlagsBits;
}

uint64_t sub_1A425333C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = [*(*a1 + 16) localIdentifier];
  v4 = sub_1A524C674();
  v6 = v5;

  v9[0] = v4;
  v9[1] = v6;
  v8[2] = v9;
  LOBYTE(v2) = sub_1A3D3E5DC(sub_1A3D3F194, v8, v2);

  return v2 & 1;
}

void sub_1A42533DC()
{
  v0 = sub_1A524C634();
  PhotoKitItemListImplementation.numberOfItems.getter();
  PXLocalizedCountsDescription(v0);
}

uint64_t sub_1A4253474()
{
  result = sub_1A5242964();
  if (!v1)
  {
    return sub_1A3C38BD4();
  }

  return result;
}

uint64_t sub_1A42534B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4254510(&qword_1EB136268, &qword_1EB125C30, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A4253554()
{
  sub_1A4254568(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);

  return sub_1A3C47918();
}

void sub_1A42535C0(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x378);
    v5 = v2;
    v6 = v4();
    v7 = (*((*v3 & *v5) + 0x528))();
    v8 = sub_1A3C36888();
    v9 = sub_1A3C6E9EC();
    sub_1A414DB94(a1, 0, 1, v9, v6, v7 & 1, &type metadata for LemonadePeopleShelfProvider, v8);
  }

  v10 = sub_1A3C36888();
  v11 = sub_1A3C6E9EC();
  v12 = sub_1A3C30368();
  sub_1A414DB94(a1, 0, 1, v11, 0, v12 & 1, &type metadata for LemonadePeopleShelfProvider, v10);
}

void sub_1A4253798()
{
  if (!qword_1EB136210)
  {
    sub_1A40C61BC();
    sub_1A40C6344();
    sub_1A4254568(&qword_1EB131800, sub_1A40C61BC);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136210);
    }
  }
}

uint64_t sub_1A4253880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A42538E8()
{
  result = qword_1EB1645D0[0];
  if (!qword_1EB1645D0[0])
  {
    type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1645D0);
  }

  return result;
}

uint64_t sub_1A4253940(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A425399C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_38()
{
  v1 = type metadata accessor for LemonadePeopleSectionProvider(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2 + *(v1 + 40);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A4253BA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleSectionProvider(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A4252A28(v4, a1);
}

void sub_1A4253C40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4253CA8(uint64_t a1)
{
  *(a1 + 8) = sub_1A4254568(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider);
  result = sub_1A4254568(&qword_1EB136238, type metadata accessor for LemonadePeopleSectionProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4253D7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4253C40(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4253FE8(uint64_t a1)
{
  result = sub_1A4254568(&qword_1EB136220, type metadata accessor for LemonadePeopleSectionProvider);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4254108()
{
  sub_1A3C52C70(319, &qword_1EB126BF0);
  if (v0 <= 0x3F)
  {
    sub_1A3F5E928();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v2 <= 0x3F)
      {
        sub_1A42541FC(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A42541FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4254250()
{
  result = qword_1EB136258;
  if (!qword_1EB136258)
  {
    sub_1A425431C(255, &qword_1EB136260, MEMORY[0x1E697F960]);
    sub_1A4254568(&qword_1EB136218, sub_1A4253798);
    sub_1A42538E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136258);
  }

  return result;
}

void sub_1A425431C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4253798();
    v7 = v6;
    v8 = type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A42543B4()
{
  sub_1A40C61BC();
  if (v0 <= 0x3F)
  {
    sub_1A5243624();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4254460@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LemonadePeopleSectionProvider.PhotosPersonView(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));
  v6 = *(v3 + 32);
  v7 = *(v5 + 9);
  v8 = *(v5 + 10);
  sub_1A3C36888();

  return sub_1A414D324(v4, v5 + v6, v7, v8, a1);
}

uint64_t sub_1A4254510(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A4253C40(255, a2, &qword_1EB1265C0, 0x1E6978980, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4254568(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42545E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A42DE888();
  *a1 = result;
  return result;
}

uint64_t sub_1A425463C@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a8;
  v70 = a7;
  v68 = a6;
  v65 = a5;
  v63 = a4;
  v79 = a24;
  v80 = a25;
  v77 = a22;
  v78 = a23;
  v75 = a20;
  v76 = a21;
  v73 = a18;
  v74 = a19;
  v71 = a17;
  v69 = a16;
  v66 = a14;
  v67 = a15;
  v64 = a13;
  v62 = a12;
  v61 = a11;
  v60 = a10;
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v60 - v30;
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v32 = type metadata accessor for LemonadeShelfPlaceholderView();
  v33 = v32[5];
  sub_1A42545B4(0);
  sub_1A5247C74();
  v34 = v32[20];
  *(a9 + v34) = swift_getKeyPath();
  sub_1A3F31578(0);
  swift_storeEnumTagMultiPayload();
  v35 = a9 + v32[21];
  *v35 = swift_getKeyPath();
  *(v35 + 8) = 0;
  v36 = v32[22];
  *(a9 + v36) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  v37 = v32[23];
  *(a9 + v37) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v38 = sub_1A48F4570();
  v39 = v38[3];
  v81 = *v38;
  v82 = *(v38 + 1);
  v83 = v39;

  PhotosPreference.init(_:)(&v81, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (a2)
  {
    v40 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
    *(swift_allocObject() + 16) = v40;
  }

  sub_1A5247C74();

  result = sub_1A4254A90(v31, a9 + v33);
  *(a9 + v32[6]) = a2 & 1;
  *(a9 + v32[7]) = a3 & 1;
  *(a9 + v32[8]) = v63 & 1;
  *(a9 + v32[9]) = v65 & 1;
  *(a9 + v32[10]) = v68 & 1;
  v42 = (a9 + v32[11]);
  v43 = v72;
  *v42 = v70;
  v42[1] = v43;
  v44 = (a9 + v32[12]);
  v45 = v61;
  *v44 = v60;
  v44[1] = v45;
  v46 = (a9 + v32[13]);
  v47 = v64;
  *v46 = v62;
  v46[1] = v47;
  v48 = (a9 + v32[14]);
  v49 = v67;
  *v48 = v66;
  v48[1] = v49;
  v50 = (a9 + v32[15]);
  v51 = v71;
  *v50 = v69;
  v50[1] = v51;
  v52 = (a9 + v32[16]);
  v53 = v74;
  *v52 = v73;
  v52[1] = v53;
  v54 = (a9 + v32[17]);
  v55 = v76;
  *v54 = v75;
  v54[1] = v55;
  v56 = (a9 + v32[18]);
  v57 = v78;
  *v56 = v77;
  v56[1] = v57;
  v58 = (a9 + v32[19]);
  v59 = v80;
  *v58 = v79;
  v58[1] = v59;
  return result;
}

uint64_t type metadata accessor for LemonadeShelfPlaceholderView()
{
  result = qword_1EB17F0C0;
  if (!qword_1EB17F0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4254A90(uint64_t a1, uint64_t a2)
{
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4254B24@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for SharedLibraryFilterViewModel();
  result = SharedLibraryFilterViewModel.__allocating_init(sharedLibraryStatusProvider:)(v3);
  *a1 = result;
  return result;
}

void sub_1A4254B68()
{
  v1 = v0;
  sub_1A4255154(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255770(0, &qword_1EB122C20, sub_1A4256CFC, sub_1A4255154, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A4256CFC(0);
  MEMORY[0x1EEE9AC00](v6);
  v23 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1A5249234();
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + *(type metadata accessor for LemonadeShelfPlaceholderView() + 84);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v13 = *v11;
    if (v12 == 4)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1A524D254();
    v21 = v8;
    v14 = sub_1A524A014();
    v22 = v1;
    v15 = v14;
    sub_1A5246DF4();

    v1 = v22;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v24 + 8))(v10, v21);
    v13 = v27;
    if (v27 == 4)
    {
      goto LABEL_7;
    }
  }

  v26 = v13;
  v25 = 3;
  sub_1A3E760D0();
  if (sub_1A524C594())
  {
    v16 = sub_1A5249584();
    v17 = v23;
    *v23 = v16;
    v17[1] = 0;
    *(v17 + 16) = 0;
    sub_1A425D12C(0, &qword_1EB136270, sub_1A4256E00);
    sub_1A425AA7C(v1, v17 + *(v18 + 44));
  }

LABEL_7:
  *v4 = sub_1A5249574();
  *(v4 + 1) = 0;
  v4[16] = 1;
  sub_1A4257980();
  sub_1A4257048(v1, &v4[*(v19 + 44)]);
}

void sub_1A425517C()
{
  if (!qword_1EB121798)
  {
    sub_1A4255770(255, &qword_1EB123168, sub_1A4255224, sub_1A42567E4, MEMORY[0x1E697E830]);
    sub_1A4256980();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121798);
    }
  }
}

void sub_1A425524C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42552B0()
{
  if (!qword_1EB123768)
  {
    sub_1A425524C(255, &qword_1EB123E88, sub_1A4255368);
    sub_1A425BF6C(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123768);
    }
  }
}

void sub_1A4255368()
{
  if (!qword_1EB121E20)
  {
    sub_1A425541C();
    sub_1A4256044(&qword_1EB1216C0, sub_1A425541C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E20);
    }
  }
}

void sub_1A425541C()
{
  if (!qword_1EB1216B8)
  {
    sub_1A42554B0(255);
    sub_1A4256044(&qword_1EB121000, sub_1A42554B0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216B8);
    }
  }
}

void sub_1A42554E4()
{
  if (!qword_1EB121980)
  {
    sub_1A425559C();
    sub_1A425C2C4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A4256210(255);
    sub_1A425655C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB121980);
    }
  }
}

void sub_1A425559C()
{
  if (!qword_1EB121988)
  {
    sub_1A4255630(255);
    sub_1A4256044(&qword_1EB1211C0, sub_1A4255630);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121988);
    }
  }
}

void sub_1A4255664()
{
  if (!qword_1EB123970)
  {
    sub_1A4255728(255);
    sub_1A42558F0(255);
    sub_1A425C2C4(255, &qword_1EB1273B0, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    sub_1A4255A94(255);
    sub_1A425608C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB123970);
    }
  }
}

void sub_1A4255770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4255814()
{
  if (!qword_1EB124E60)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB124E60);
    }
  }
}

void sub_1A4255874(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A425C2C4(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4255944(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4255874(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], MEMORY[0x1E6980A08]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A42559DC()
{
  if (!qword_1EB128248)
  {
    sub_1A425524C(255, &qword_1EB1283D0, sub_1A3DF14C0);
    sub_1A4255874(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128248);
    }
  }
}

void sub_1A4255AF0()
{
  if (!qword_1EB1233D8)
  {
    sub_1A4255B84();
    sub_1A425BF6C(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1233D8);
    }
  }
}

void sub_1A4255B84()
{
  if (!qword_1EB1237F0)
  {
    sub_1A4255770(255, &qword_1EB123F58, sub_1A4255C5C, sub_1A3E744F4, MEMORY[0x1E697E830]);
    sub_1A4255874(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1237F0);
    }
  }
}

void sub_1A4255C5C()
{
  if (!qword_1EB121F30)
  {
    sub_1A4255D74(255);
    sub_1A5249544();
    sub_1A4255F24(&qword_1EB121D18, sub_1A4255D74, sub_1A4255EDC);
    sub_1A4256044(&unk_1EB122DF0, MEMORY[0x1E697C540]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F30);
    }
  }
}

void sub_1A4255DA8()
{
  if (!qword_1EB122650)
  {
    sub_1A4255E30(255, &qword_1EB122658, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122650);
    }
  }
}

void sub_1A4255E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A425BF6C(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v9 = v8;
    v10 = a3(255);
    v11 = a4(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A4255F24(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4255F94()
{
  result = qword_1EB122660;
  if (!qword_1EB122660)
  {
    sub_1A4255E30(255, &qword_1EB122658, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
    sub_1A3D6E520();
    sub_1A3D6E470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122660);
  }

  return result;
}

uint64_t sub_1A4256044(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A42560FC()
{
  if (!qword_1EB127378)
  {
    sub_1A425BF6C(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A425618C();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127378);
    }
  }
}

unint64_t sub_1A425618C()
{
  result = qword_1EB127458;
  if (!qword_1EB127458)
  {
    sub_1A425BF6C(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127458);
  }

  return result;
}

void sub_1A42562A0()
{
  if (!qword_1EB121888)
  {
    sub_1A4256334(255);
    sub_1A4256044(&qword_1EB120F40, sub_1A4256334);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121888);
    }
  }
}

void sub_1A4256370()
{
  if (!qword_1EB123A60)
  {
    sub_1A42563FC();
    sub_1A425C2C4(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123A60);
    }
  }
}

void sub_1A42563FC()
{
  if (!qword_1EB1216E8)
  {
    sub_1A4256490(255);
    sub_1A4256044(&qword_1EB1210E0, sub_1A4256490);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1216E8);
    }
  }
}

void sub_1A42564C4()
{
  if (!qword_1EB1230C0)
  {
    sub_1A4256534(255);
    sub_1A4255924(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1230C0);
    }
  }
}

void sub_1A425655C()
{
  if (!qword_1EB120F18)
  {
    sub_1A4256720(255, &qword_1EB120F20, &unk_1EB1217D0, sub_1A4256650, sub_1A42565EC);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120F18);
    }
  }
}

void sub_1A42565EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4256650()
{
  if (!qword_1EB121880)
  {
    sub_1A42566E4(255);
    sub_1A4256044(&qword_1EB120F30, sub_1A42566E4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121880);
    }
  }
}

void sub_1A4256720(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A425677C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A42567E4()
{
  if (!qword_1EB1276D8)
  {
    sub_1A42568D0();
    sub_1A5248A14();
    sub_1A4256044(&qword_1EB127A30, sub_1A42568D0);
    sub_1A4256044(&qword_1EB128090, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1276D8);
    }
  }
}

void sub_1A42568D0()
{
  if (!qword_1EB127A28)
  {
    sub_1A425692C();
    v0 = sub_1A5249F04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127A28);
    }
  }
}

unint64_t sub_1A425692C()
{
  result = qword_1EB128908;
  if (!qword_1EB128908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128908);
  }

  return result;
}

unint64_t sub_1A4256980()
{
  result = qword_1EB123170;
  if (!qword_1EB123170)
  {
    sub_1A4255770(255, &qword_1EB123168, sub_1A4255224, sub_1A42567E4, MEMORY[0x1E697E830]);
    sub_1A4256A74();
    sub_1A4256044(&unk_1EB1276E0, sub_1A42567E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123170);
  }

  return result;
}

unint64_t sub_1A4256A74()
{
  result = qword_1EB123380;
  if (!qword_1EB123380)
  {
    sub_1A4255224(255);
    sub_1A4256AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123380);
  }

  return result;
}

unint64_t sub_1A4256AF4()
{
  result = qword_1EB123770;
  if (!qword_1EB123770)
  {
    sub_1A42552B0();
    sub_1A4256B74();
    sub_1A4256C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123770);
  }

  return result;
}

unint64_t sub_1A4256B74()
{
  result = qword_1EB123E90;
  if (!qword_1EB123E90)
  {
    sub_1A425524C(255, &qword_1EB123E88, sub_1A4255368);
    sub_1A425541C();
    sub_1A4256044(&qword_1EB1216C0, sub_1A425541C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E90);
  }

  return result;
}

unint64_t sub_1A4256C78()
{
  result = qword_1EB127AE8;
  if (!qword_1EB127AE8)
  {
    sub_1A425BF6C(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127AE8);
  }

  return result;
}

void sub_1A4256D6C()
{
  if (!qword_1EB121740)
  {
    sub_1A4256E00(255);
    sub_1A4256044(&qword_1EB1211E0, sub_1A4256E00);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121740);
    }
  }
}

void sub_1A4256E34()
{
  if (!qword_1EB123A20)
  {
    sub_1A4256EBC(255);
    sub_1A4256370();
    sub_1A4256EE4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB123A20);
    }
  }
}

void sub_1A4256EE4()
{
  if (!qword_1EB1230A8)
  {
    sub_1A425524C(255, &qword_1EB1230B0, sub_1A4255AC8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1230A8);
    }
  }
}

void sub_1A4256F60()
{
  if (!qword_1EB1276C8)
  {
    sub_1A425BF6C(255, &qword_1EB127A38, MEMORY[0x1E697E610], MEMORY[0x1E697E608], MEMORY[0x1E69809C0]);
    sub_1A5248A14();
    sub_1A3D6F4F8();
    sub_1A4256044(&qword_1EB128090, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1276C8);
    }
  }
}

void sub_1A4257048(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A5249D74();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52486A4();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v37 - v8;
  v9 = sub_1A5242D14();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  sub_1A425541C();
  v43 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255368();
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A425524C(0, &qword_1EB123E88, sub_1A4255368);
  v44 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v37 - v22;
  sub_1A42552B0();
  v47 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v42 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255224(0);
  v46 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v52 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A5249584();
  type metadata accessor for LemonadeShelfPlaceholderView();
  sub_1A425C514(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v15);
  (*(v10 + 104))(v12, *MEMORY[0x1E69C2210], v9);
  v27 = sub_1A5242D04();
  v28 = *(v10 + 8);
  v28(v12, v9);
  v28(v15, v9);
  if ((v27 & 1) != 0 && (v29 = v38, sub_1A425C514(sub_1A3E31270, sub_1A3E755F0, MEMORY[0x1E697E730], v38), v30 = v40, v31 = v39, (*(v40 + 104))(v39, *MEMORY[0x1E697E728], v5), sub_1A4256044(&qword_1EB1288D0, MEMORY[0x1E697E730]), v32 = sub_1A524C534(), v33 = *(v30 + 8), v33(v31, v5), v33(v29, v5), (v32 & 1) == 0))
  {
    v35 = 0;
    v34 = 0x4040000000000000;
  }

  else
  {
    v34 = 0;
    v35 = 1;
  }

  *v18 = v41;
  *(v18 + 1) = v34;
  v18[16] = v35;
  sub_1A425D12C(0, &qword_1EB124480, sub_1A42554B0);
  sub_1A4257BB4(a1, &v18[*(v36 + 44)]);
}

void sub_1A4257980()
{
  if (!qword_1EB124450)
  {
    sub_1A4255770(255, &qword_1EB123168, sub_1A4255224, sub_1A42567E4, MEMORY[0x1E697E830]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124450);
    }
  }
}

unint64_t sub_1A4257A2C()
{
  result = qword_1EB123570;
  if (!qword_1EB123570)
  {
    sub_1A4256CFC(255);
    sub_1A4257B14(&qword_1EB123AB0, sub_1A4256D44, &qword_1EB121748, sub_1A4256D6C);
    sub_1A4256044(&qword_1EB1276D0, sub_1A4256F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123570);
  }

  return result;
}

uint64_t sub_1A4257B14(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1A4256044(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4257BB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[22] = a2;
  sub_1A4256720(0, &qword_1EB120F20, &unk_1EB1217D0, sub_1A4256650, sub_1A42565EC);
  v30[21] = v3;
  v30[19] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30[5] = v30 - v4;
  sub_1A4255AC8(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30[2] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30[1] = v30 - v8;
  sub_1A4256650();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v30[4] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30[3] = v30 - v12;
  sub_1A425655C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v30[24] = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v30[20] = v30 - v16;
  v17 = sub_1A52486A4();
  v30[13] = *(v17 - 8);
  v30[14] = v17;
  MEMORY[0x1EEE9AC00](v17);
  v30[12] = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v30[11] = v30 - v20;
  v21 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  sub_1A425559C();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v30[18] = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v30 - v26;
  *v27 = sub_1A5249314();
  *(v27 + 1) = 0;
  v27[16] = 1;
  sub_1A425D12C(0, &qword_1EB124520, sub_1A4255630);
  v29 = *(v28 + 44);
  v30[17] = v27;
  sub_1A4258E90(a1, &v27[v29]);
}

void sub_1A4258E90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_1A42560C0(0);
  v59 = v3;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeShelfPlaceholderView();
  v51 = v5;
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = v6;
  v46 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42560FC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v42 - v10;
  sub_1A425608C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v60 = v42 - v14;
  sub_1A4255AC8(0);
  v56 = v15;
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42[0] = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255A94(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v58 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v72 = v42 - v20;
  v43 = sub_1A52486A4();
  v42[3] = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42[2] = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v42[1] = v42 - v23;
  v70 = sub_1A5242D14();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v67 = v42 - v26;
  v66 = sub_1A5242254();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v54 = v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A5242234();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v52 = sub_1A5242274();
  v28 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v30 = v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A5242264();
  v50 = v31;
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42557F4(0);
  v53 = v35;
  MEMORY[0x1EEE9AC00](v35);
  sub_1A4255728(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v71 = v42 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v40 = (a1 + *(v5 + 44));
  v41 = v40[1];
  *v34 = *v40;
  v34[1] = v41;
  (*(v32 + 104))(v34, *MEMORY[0x1E69C1D40], v31, v39);
  (*(v28 + 104))(v30, *MEMORY[0x1E69C1D48], v52);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4259FC0()
{
  v0 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for LemonadeShelfPlaceholderView();
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A425A288()
{
  v1 = type metadata accessor for LemonadeShelfPlaceholderView();
  if (*(v0 + *(v1 + 68) + 8) || (v3 = v1, sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]), v4 = sub_1A5247C84(), v7) && (v5 = (*(*v7 + 144))(v4), , v5) && (v1 = v3, *(v0 + *(v3 + 24)) == 1))
  {
    v2 = *(v0 + *(v1 + 32)) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

__n128 sub_1A425A388@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249544();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255D74(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255AF0();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A425B494(v2, v10);
  sub_1A5249534();
  sub_1A4255F24(&qword_1EB121D18, sub_1A4255D74, sub_1A4255EDC);
  sub_1A4256044(&unk_1EB122DF0, MEMORY[0x1E697C540]);
  sub_1A524A934();
  (*(v5 + 8))(v7, v4);
  sub_1A425C710(v10, sub_1A4255D74);
  sub_1A4255770(0, &qword_1EB123F58, sub_1A4255C5C, sub_1A3E744F4, MEMORY[0x1E697E830]);
  v16 = &v14[*(v15 + 36)];
  sub_1A3E744F4(0);
  sub_1A5248B14();
  *v16 = swift_getKeyPath();
  sub_1A524A254();
  sub_1A524A1A4();
  v17 = sub_1A524A1F4();

  KeyPath = swift_getKeyPath();
  sub_1A4255B84();
  v20 = &v14[*(v19 + 36)];
  *v20 = KeyPath;
  v20[1] = v17;
  *&v14[*(v12 + 44)] = sub_1A524B3C4();
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A425CD04(v14, a1, sub_1A4255AF0);
  sub_1A4255AC8(0);
  v22 = a1 + *(v21 + 36);
  v23 = v26[5];
  *(v22 + 64) = v26[4];
  *(v22 + 80) = v23;
  *(v22 + 96) = v26[6];
  v24 = v26[1];
  *v22 = v26[0];
  *(v22 + 16) = v24;
  result = v26[3];
  *(v22 + 32) = v26[2];
  *(v22 + 48) = result;
  return result;
}

void sub_1A425A728()
{
  v8 = sub_1A524A204();
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = (v0 + *(type metadata accessor for LemonadeShelfPlaceholderView() + 60));
  v3 = v2[1];
  if (v3)
  {
    v5 = *v2;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  sub_1A425BF6C(0, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A425AA7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1A425524C(0, &qword_1EB1230B0, sub_1A4255AC8);
  v29[4] = *(v3 - 8);
  v29[5] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29[0] = v29 - v4;
  sub_1A4256EE4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = v29 - v8;
  v9 = type metadata accessor for LemonadeShelfPlaceholderView();
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A4256EBC(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v35 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v29 - v17);
  *v18 = sub_1A524BC14();
  v18[1] = v19;
  sub_1A425C410();
  v33 = *(v20 + 44);
  sub_1A425D328(a1, v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelfPlaceholderView);
  v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v22 = swift_allocObject();
  sub_1A425D390(v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for LemonadeShelfPlaceholderView);
  v36 = a1;
  sub_1A524B704();
  LOBYTE(v11) = sub_1A524A084();
  sub_1A5247BC4();
  v23 = v18 + *(v14 + 44);
  *v23 = v11;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v30 = *(a1 + *(v10 + 48));
  if (v30 == 1)
  {
    v28 = sub_1A5249574();
  }

  else
  {
    v28 = sub_1A5249584();
  }

  v33 = v28;
  v37 = 0;
  sub_1A425B284();
}

uint64_t sub_1A425B208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A425B494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3D6E2C8();
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35[2] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4255E30(0, &qword_1EB122BC8, sub_1A3D6E2C8, MEMORY[0x1E697F948]);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = v35 - v7;
  v8 = type metadata accessor for LemonadeShelfPlaceholderView();
  v36 = *(v8 - 1);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A425BF6C(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  v16 = sub_1A5247C84();
  if (v41 && (v17 = (*(*v41 + 144))(v16), , v17) && *(a1 + v8[6]) == 1)
  {
    v41 = sub_1A3C38BD4();
    v42 = v18;
    sub_1A425D328(a1, v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelfPlaceholderView);
    v19 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v20 = swift_allocObject();
    sub_1A425D390(v10, v20 + v19, type metadata accessor for LemonadeShelfPlaceholderView);
    sub_1A3D5F9DC();
    sub_1A524B754();
    v21 = v37;
    (*(v37 + 16))(v39, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6E520();
    sub_1A3D6E470();
    sub_1A5249744();
    (*(v21 + 8))(v15, v12);
    v32 = 0;
  }

  else
  {
    v22 = (a1 + v8[18]);
    v23 = *v22;
    if (*v22)
    {
      v24 = v22[1];
      v25 = (a1 + v8[17]);
      v26 = *v25;
      v27 = v25[1];
      v35[1] = a2;
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v28 = 0;
      }

      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE000000000000000;
      }

      v41 = v28;
      v42 = v29;
      sub_1A425D328(a1, v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeShelfPlaceholderView);
      v30 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v23;
      *(v31 + 24) = v24;
      sub_1A425D390(v10, v31 + v30, type metadata accessor for LemonadeShelfPlaceholderView);
      sub_1A3C66EE8(v23);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v32 = 1;
  }

  sub_1A4255E30(0, &qword_1EB122658, sub_1A3D6E2C8, MEMORY[0x1E697F960]);
  return (*(*(v33 - 8) + 56))(a2, v32, 1, v33);
}

uint64_t sub_1A425BB0C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = sub_1A5249234();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a3;
  LOBYTE(a3) = *(a3 + 8);

  if ((a3 & 1) == 0)
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v9 = v12[1];
  }

  a1(v9);
}

uint64_t sub_1A425BC70(uint64_t a1)
{
  result = type metadata accessor for LemonadeShelfPlaceholderView();
  v3 = (a1 + *(result + 76));
  if (*v3)
  {
    return (*v3)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A425BCB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = sub_1A5242264();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LemonadeShelfPlaceholderView();
  sub_1A425C514(sub_1A3E71AC8, sub_1A3D61D44, MEMORY[0x1E69C2218], v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C2210], v2);
  v13 = sub_1A5242D04();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = 0x69632E6B72616D78;
  if (v13)
  {
    v15 = 0x6B72616D78;
  }

  v16 = 0xEC000000656C6372;
  if (v13)
  {
    v16 = 0xE500000000000000;
  }

  *v12 = v15;
  v12[1] = v16;
  (*(v10 + 104))(v12, *MEMORY[0x1E69C1D38], v9);
  v17 = sub_1A5242B94();
  result = (*(v10 + 8))(v12, v9);
  *a1 = v17;
  return result;
}

void sub_1A425BF6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A425BFD4()
{
  sub_1A425C4A4(319, &qword_1EB124880, MEMORY[0x1E69C1D78], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A425C4A4(319, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      sub_1A425C2C4(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1A425C4A4(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1A425C4A4(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A4255874(319, &unk_1EB1247E0, &qword_1EB1258E8, &type metadata for LemonadeShelfLocation, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A425C4A4(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1A425C4A4(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v7 <= 0x3F)
                {
                  sub_1A425BF6C(319, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
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

void sub_1A425C2C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A425C314()
{
  result = qword_1EB122790;
  if (!qword_1EB122790)
  {
    sub_1A4255770(255, &qword_1EB122788, sub_1A4256CFC, sub_1A4255154, MEMORY[0x1E697F960]);
    sub_1A4257A2C();
    sub_1A4257B14(&qword_1EB123A40, sub_1A4255154, &qword_1EB1217A0, sub_1A425517C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122790);
  }

  return result;
}

void sub_1A425C410()
{
  if (!qword_1EB136278)
  {
    sub_1A425BF6C(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136278);
    }
  }
}

void sub_1A425C4A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A425C514@<X0>(uint64_t (*a1)(void, __n128)@<X0>, void (*a2)(uint64_t, char *, __n128)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1(0, v12);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  a2(v8, &v22 - v17, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    sub_1A524D254();
    v21 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1A425C710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A425C770()
{
  v1 = *(type metadata accessor for LemonadeShelfPlaceholderView() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1A425BB0C(v2, v3, v4);
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = type metadata accessor for LemonadeShelfPlaceholderView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[5];
  sub_1A425C4A4(0, &qword_1EB1272B0, sub_1A42545B4, MEMORY[0x1E6981E90]);
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_1A425C4A4(0, &qword_1EB127220, sub_1A42545B4, MEMORY[0x1E6981E98]);

  if (*(v2 + v1[18]))
  {
  }

  if (*(v2 + v1[19]))
  {
  }

  v5 = v1[20];
  sub_1A3F31578(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5247E04();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[21]), *(v2 + v1[21] + 8));
  v7 = v1[22];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5242D14();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  v9 = v1[23];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1A52486A4();
    (*(*(v10 - 8) + 8))(v2 + v9, v10);
  }

  else
  {
  }

  v11 = v1[24];
  sub_1A425BF6C(0, &qword_1EB12ACE8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], type metadata accessor for PhotosPreference);
  (*(*(v12 - 8) + 8))(v2 + v11, v12);

  return swift_deallocObject();
}

uint64_t sub_1A425CB7C()
{
  type metadata accessor for LemonadeShelfPlaceholderView();
  sub_1A425C4A4(0, &qword_1EB124938, sub_1A42545B4, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  if (v1)
  {
    [*(v1 + 24) setViewMode_];
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A425CC94(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A425524C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A425CD04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A425CD78()
{
  result = qword_1EB123A68;
  if (!qword_1EB123A68)
  {
    sub_1A4256370();
    sub_1A4256044(&qword_1EB1216F0, sub_1A42563FC);
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A68);
  }

  return result;
}

unint64_t sub_1A425CE34()
{
  result = qword_1EB1231E8;
  if (!qword_1EB1231E8)
  {
    sub_1A4255924(255);
    sub_1A425CED4();
    sub_1A425D018(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1231E8);
  }

  return result;
}

unint64_t sub_1A425CED4()
{
  result = qword_1EB123410;
  if (!qword_1EB123410)
  {
    sub_1A42559DC();
    sub_1A425CF74();
    sub_1A425D018(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123410);
  }

  return result;
}

unint64_t sub_1A425CF74()
{
  result = qword_1EB123828;
  if (!qword_1EB123828)
  {
    sub_1A425524C(255, &qword_1EB1283D0, sub_1A3DF14C0);
    sub_1A405D614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123828);
  }

  return result;
}

uint64_t sub_1A425D018(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4255874(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A425D07C()
{
  result = qword_1EB122610;
  if (!qword_1EB122610)
  {
    sub_1A4256258(255);
    sub_1A4256044(&qword_1EB121890, sub_1A42562A0);
    sub_1A425CD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122610);
  }

  return result;
}

void sub_1A425D12C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A425D1A8()
{
  result = qword_1EB124350;
  if (!qword_1EB124350)
  {
    sub_1A42557F4(255);
    swift_getOpaqueTypeConformance2();
    sub_1A425D018(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124350);
  }

  return result;
}

uint64_t sub_1A425D260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A425D2C8()
{
  v1 = *(type metadata accessor for LemonadeShelfPlaceholderView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A425BC70(v2);
}

uint64_t sub_1A425D328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A425D390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A425D420()
{
  result = qword_1EB171FF0[0];
  if (!qword_1EB171FF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171FF0);
  }

  return result;
}

unint64_t sub_1A425D494()
{
  result = qword_1EB171B58[0];
  if (!qword_1EB171B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171B58);
  }

  return result;
}

unint64_t sub_1A425D574()
{
  result = qword_1EB1B2170;
  if (!qword_1EB1B2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B2170);
  }

  return result;
}

uint64_t sub_1A425D5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  swift_beginAccess();
  return sub_1A425D620(v1 + v3, a1);
}

uint64_t sub_1A425D620(uint64_t a1, uint64_t a2)
{
  sub_1A425D684();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A425D684()
{
  if (!qword_1EB129168)
  {
    sub_1A5242A14();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129168);
    }
  }
}

uint64_t sub_1A425D6DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  swift_beginAccess();
  sub_1A425D73C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A425D73C(uint64_t a1, uint64_t a2)
{
  sub_1A425D684();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A425D800()
{
  sub_1A425D684();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5242A14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  (*(*v0 + 88))(v9);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A425D9E4(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1A425DEF8();
    v14 = objc_allocWithZone(v13);
    v15 = sub_1A52485F4();
    (*(v5 + 8))(v11, v4);
    return v15;
  }
}

uint64_t sub_1A425D9E4(uint64_t a1)
{
  sub_1A425D684();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A425DA40()
{
  sub_1A425D9E4(v0 + OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content);

  return swift_deallocClassInstance();
}

uint64_t sub_1A425DAA4()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12PhotosUICore43PhotosNavigationItemPaletteContentContainer_content;
  v2 = sub_1A5242A14();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t type metadata accessor for PhotosNavigationItemPaletteContentContainer()
{
  result = qword_1EB171068;
  if (!qword_1EB171068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A425DB74()
{
  sub_1A425D684();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A425DCA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v14 = sub_1A425D800();
  }

  else
  {
    v14 = 0;
  }

  v3 = [a1 _bottomPalette];
  if (v3)
  {

    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (!v14)
  {
LABEL_11:
    v11 = [a1 _bottomPalette];
    if (v11)
    {

      v12 = [a1 _bottomPalette];
      if (v12)
      {
        v13 = v12;
        [v12 removeFromSuperview];

        [a1 _setBottomPalette_];
        goto LABEL_14;
      }

      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E69DD5E0]);
  v5 = v14;
  v6 = [v4 initWithContentView_];
  [a1 _setBottomPalette_];

  v7 = [a1 _bottomPalette];
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  [v7 setClipsToBounds_];

  v9 = [a1 _bottomPalette];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setPreferredHeight_];

LABEL_14:
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    [a1 setBackButtonDisplayMode_];
  }
}

id sub_1A425DE80(void *a1)
{
  v3 = *v1;
  [a1 setLargeTitleDisplayMode_];
  [a1 setStyle_];

  return [a1 setTitleView_];
}

void sub_1A425DEF8()
{
  if (!qword_1EB1288E0)
  {
    sub_1A5242A14();
    sub_1A425DF5C();
    v0 = sub_1A5248614();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1288E0);
    }
  }
}

unint64_t sub_1A425DF5C()
{
  result = qword_1EB129178;
  if (!qword_1EB129178)
  {
    sub_1A5242A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129178);
  }

  return result;
}

uint64_t RedactedShimmer.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52489F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  HIDWORD(v16) = *(v1 + 24);
  sub_1A52489E4();
  sub_1A425E488(0, &qword_1EB127BA8, sub_1A425E210);
  sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210);
  sub_1A524B174();
  (*(v4 + 8))(v6, v3);
  v18 = v7;
  v19 = v8;
  sub_1A425EADC(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v10 = v17;
  sub_1A425E264(0);
  *(a1 + *(v11 + 36)) = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;
  *(v12 + 40) = BYTE4(v16);
  sub_1A425E414(0, &qword_1EB128340, sub_1A425E264);
  v14 = (a1 + *(v13 + 36));
  *v14 = sub_1A425E364;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
}

unint64_t sub_1A425E210()
{
  result = qword_1EB12A5D0;
  if (!qword_1EB12A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5D0);
  }

  return result;
}

void sub_1A425E28C()
{
  if (!qword_1EB127590)
  {
    sub_1A425E488(255, &qword_1EB127BA8, sub_1A425E210);
    sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127590);
    }
  }
}

uint64_t sub_1A425E364()
{
  sub_1A524BCF4();
  sub_1A524BCC4();

  sub_1A52483D4();
}

void sub_1A425E414(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1A425E478(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

void sub_1A425E488(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1A52499C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A425E4E8()
{
  result = qword_1EB12A5E8;
  if (!qword_1EB12A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5E8);
  }

  return result;
}

void sub_1A425E53C()
{
  if (!qword_1EB1287A0)
  {
    sub_1A425E488(255, &qword_1EB127BB8, sub_1A425E4E8);
    sub_1A425E5C8();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1287A0);
    }
  }
}

void sub_1A425E5C8()
{
  if (!qword_1EB1289A8)
  {
    sub_1A425E62C();
    sub_1A425E684();
    v0 = sub_1A5247FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1289A8);
    }
  }
}

void sub_1A425E62C()
{
  if (!qword_1EB128878)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128878);
    }
  }
}

unint64_t sub_1A425E684()
{
  result = qword_1EB128880;
  if (!qword_1EB128880)
  {
    sub_1A425E62C();
    sub_1A425E704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128880);
  }

  return result;
}

unint64_t sub_1A425E704()
{
  result = qword_1EB12A5D8;
  if (!qword_1EB12A5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5D8);
  }

  return result;
}

double sub_1A425E758(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1A425E764(void *a1))(uint64_t)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1A425F578;
}

uint64_t sub_1A425E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A425F49C();

  return MEMORY[0x1EEDDA6B0](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1A425E810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1A425F49C();

  return MEMORY[0x1EEDDA6A8](a1, a2, a3, a4, a5, v10);
}

__n128 sub_1A425E88C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_1A524B404();
  v6 = sub_1A524B474();

  sub_1A524B404();
  v7 = sub_1A524B474();

  sub_1A524BE94();
  v9 = v8;
  v11 = v10;
  sub_1A425E488(0, &qword_1EB127BB8, sub_1A425E4E8);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  sub_1A425E53C();
  v14 = a2 + *(v13 + 36);
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  __asm { FMOV            V0.2D, #3.0 }

  *(v14 + 24) = result;
  *(v14 + 40) = v9;
  *(v14 + 48) = v11;
  return result;
}

double sub_1A425E9A8@<D0>(uint64_t a1@<X8>)
{
  sub_1A425EADC(0, &qword_1EB126210, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52FF950;
  swift_retain_n();
  *(v2 + 32) = sub_1A524BB34();
  *(v2 + 40) = v3;

  *(v2 + 48) = sub_1A524BB34();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_1A524BB34();
  *(v2 + 72) = v5;
  sub_1A524BB44();
  sub_1A524BE44();
  sub_1A524BE64();
  sub_1A5248434();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void sub_1A425EADC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t View.redactedShimmer(active:duration:bounce:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v43 = a5;
  v44 = a4;
  v39 = a2;
  LODWORD(WitnessTable) = a1;
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38[-v13];
  v15 = sub_1A5248804();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38[-v20];
  v22 = sub_1A5249754();
  v41 = *(v22 - 8);
  v42 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38[-v24];
  if (WitnessTable)
  {
    v49 = 0;
    sub_1A524B694();
    *&v47[2] = a6;
    v48 = v39 & 1;
    v26 = v44;
    MEMORY[0x1A5906490](v47, a3, &type metadata for RedactedShimmer, v44);

    v27 = sub_1A425E210();
    v45 = v26;
    v46 = v27;
    WitnessTable = swift_getWitnessTable();
    v28 = *(v16 + 16);
    v28(v21, v18, v15);
    v29 = *(v16 + 8);
    v29(v18, v15);
    v28(v18, v21, v15);
    sub_1A3DF4798(v18, v15);
    v29(v18, v15);
    v29(v21, v15);
  }

  else
  {
    v30 = *(v9 + 16);
    v30(v14, v6, a3, v23);
    (v30)(v11, v14, a3);
    v31 = sub_1A425E210();
    v54 = v44;
    v55 = v31;
    swift_getWitnessTable();
    sub_1A3DF4890(v11, v15, a3);
    v32 = *(v9 + 8);
    v32(v11, a3);
    v32(v14, a3);
  }

  v33 = sub_1A425E210();
  v34 = v44;
  v52 = v44;
  v53 = v33;
  v50 = swift_getWitnessTable();
  v51 = v34;
  v35 = v42;
  swift_getWitnessTable();
  v36 = v41;
  (*(v41 + 16))(v43, v25, v35);
  return (*(v36 + 8))(v25, v35);
}

unint64_t sub_1A425EFB8()
{
  result = qword_1EB12A5F0;
  if (!qword_1EB12A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5F0);
  }

  return result;
}

unint64_t sub_1A425F014()
{
  result = qword_1EB12AF28;
  if (!qword_1EB12AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF28);
  }

  return result;
}

uint64_t sub_1A425F0BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_1A425F118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A425F1A0()
{
  result = qword_1EB128348;
  if (!qword_1EB128348)
  {
    sub_1A425E414(255, &qword_1EB128340, sub_1A425E264);
    sub_1A425F244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128348);
  }

  return result;
}

unint64_t sub_1A425F244()
{
  result = qword_1EB128630;
  if (!qword_1EB128630)
  {
    sub_1A425E264(255);
    sub_1A425E488(255, &qword_1EB127BA8, sub_1A425E210);
    sub_1A425F3F4(&qword_1EB127BB0, &qword_1EB127BA8, sub_1A425E210);
    swift_getOpaqueTypeConformance2();
    sub_1A425E4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128630);
  }

  return result;
}

unint64_t sub_1A425F348()
{
  result = qword_1EB1287A8;
  if (!qword_1EB1287A8)
  {
    sub_1A425E53C();
    sub_1A425F3F4(&qword_1EB127BC0, &qword_1EB127BB8, sub_1A425E4E8);
    sub_1A425F444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287A8);
  }

  return result;
}

uint64_t sub_1A425F3F4(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A425E488(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A425F444()
{
  result = qword_1EB1289B0;
  if (!qword_1EB1289B0)
  {
    sub_1A425E5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1289B0);
  }

  return result;
}

unint64_t sub_1A425F49C()
{
  result = qword_1EB12A5E0;
  if (!qword_1EB12A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A5E0);
  }

  return result;
}

__n128 sub_1A425F58C@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A426006C(0);
  sub_1A524B694();
  v7 = v35;
  sub_1A524B694();
  v9 = v35.n128_u64[1];
  v8 = v35.n128_u64[0];
  sub_1A524B694();
  v10 = v35;
  sub_1A524B694();
  v11 = v35;
  sub_1A524B694();
  v12 = v35;
  sub_1A524B694();
  v29 = v35;
  sub_1A524B694();
  v13 = v35;
  v38[0] = 0;
  sub_1A524B694();
  v14 = v35.n128_u64[1];
  v15 = v35.n128_u64[0];
  sub_1A524B694();
  v28 = v35.n128_u8[0];
  v27 = v35.n128_u64[1];
  v16 = sub_1A524BCB4();
  if (*(a1 + 384) == 1)
  {
    pixelBufferOut = 0;
    v25 = v16;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v26 = v35.n128_u64[1];
    v24 = sub_1A524C3D4();

    CVPixelBufferCreate(*MEMORY[0x1E695E480], 1uLL, 1uLL, 0x42475241u, v24, &pixelBufferOut);
    v17 = pixelBufferOut;
    v38[0] = pixelBufferOut;
    sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
    v18 = v17;
    sub_1A524B6B4();
    v37 = v35.n128_u64[1];
    v38[0] = v35.n128_u64[0];
    v34 = pixelBufferOut;
    v19 = v35.n128_u64[1];
    v20 = v35.n128_u64[0];
    v21 = pixelBufferOut;
    sub_1A42640D0(v38, v33, sub_1A426006C);
    sub_1A42640D0(&v37, v33, sub_1A4264138);
    sub_1A524B6B4();
    v14 = v26;

    v9 = v19;
    v8 = v20;
    sub_1A4264AC0(v38, sub_1A426006C);
    sub_1A4264AC0(&v37, sub_1A4264138);

    v16 = v25;
  }

  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *&v22 = v8;
  *(&v22 + 1) = v9;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v7;
  *(a5 + 48) = v22;
  *(a5 + 64) = v10;
  *(a5 + 80) = v11;
  result = v29;
  *(a5 + 96) = v12;
  *(a5 + 112) = v29;
  *(a5 + 128) = v13;
  *(a5 + 144) = v15;
  *(a5 + 152) = v14;
  *(a5 + 160) = v28;
  *(a5 + 168) = v27;
  *(a5 + 176) = v16;
  return result;
}

__n128 ParallaxAssetView.init(viewModel:animateLayers:overlapView:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A426006C(0);
  sub_1A524B694();
  v10 = v101;
  sub_1A524B694();
  v43 = v101;
  sub_1A524B694();
  v42 = v101;
  sub_1A524B694();
  v41 = v101;
  sub_1A524B694();
  v40 = v101;
  sub_1A524B694();
  v39 = v101;
  sub_1A524B694();
  v11 = v101;
  *&v89[0] = 0;
  sub_1A524B694();
  v12 = *(&v101 + 1);
  v13 = v101;
  sub_1A524B694();
  v37 = v101;
  v38 = *(&v101 + 1);
  v14 = sub_1A524BCB4();
  v15 = a2 & 1;
  if (*(a1 + 384) == 1)
  {
    *&v50 = a1;
    BYTE8(v50) = a2 & 1;
    *(&v50 + 9) = *v63;
    HIDWORD(v50) = *&v63[3];
    v52 = v101;
    v53 = v101;
    *&v51 = a3;
    *(&v51 + 1) = a4;
    v54 = v101;
    v55 = v101;
    v56 = v101;
    v57 = v101;
    v58 = v101;
    v59 = v101;
    LOBYTE(v60) = v101;
    *(&v60 + 1) = *v62;
    DWORD1(v60) = *&v62[3];
    *(&v60 + 1) = *(&v101 + 1);
    v61 = v14;
    v46 = v101;
    v47 = v101;
    v48 = v60;
    v49 = v14;
    v44 = v50;
    v45 = v51;
    v33 = v14;
    v32 = a2 & 1;
    v16 = type metadata accessor for ParallaxAssetView();
    v35 = a4;
    v36 = *(v16 - 8);
    v17 = *(v36 + 16);
    v17(&v101, &v50, v16);
    v30 = v17;
    v85 = v46;
    v86 = __PAIR128__(v12, v13);
    v87 = v48;
    v88 = v49;
    v81 = v42;
    v82 = v41;
    v83 = v40;
    v84 = v39;
    v77 = v44;
    v78 = v45;
    v79 = v10;
    v80 = v43;
    pixelBufferOut = 0;
    sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
    v31 = sub_1A524C3D4();

    CVPixelBufferCreate(*MEMORY[0x1E695E480], 1uLL, 1uLL, 0x42475241u, v31, &pixelBufferOut);
    v18 = pixelBufferOut;
    v64 = v77;
    v65 = v78;
    v34 = v12;
    v20 = *(&v79 + 1);
    v19 = v79;
    v73 = v86;
    v74 = v87;
    v75 = v88;
    v69 = v82;
    v70 = v83;
    v71 = v84;
    v72 = v85;
    v67 = v80;
    v68 = v81;
    v21 = pixelBufferOut;
    v17(&v101, &v77, v16);
    v101 = __PAIR128__(v20, v19);
    *&v89[0] = v18;
    sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v89[0] = v64;
    v89[1] = v65;
    v90 = v19;
    v91 = v20;
    v98 = v73;
    v99 = v74;
    v100 = v75;
    v94 = v69;
    v95 = v70;
    v97 = v72;
    v96 = v71;
    v92 = v67;
    v93 = v68;
    v22 = *(v36 + 8);
    v22(v89, v16);
    v23 = pixelBufferOut;
    v64 = v77;
    v65 = v78;
    v24 = v80;
    v25 = a1;
    v26 = *(&v80 + 1);
    v71 = v85;
    v72 = v86;
    v73 = v87;
    *&v74 = v88;
    v66 = v79;
    v67 = v81;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v30(&v101, &v77, v16);
    v27 = v23;
    *&v101 = v24;
    *(&v101 + 1) = v26;
    v113 = v23;
    sub_1A524B6B4();

    v101 = v64;
    v102 = v65;
    v103 = v66;
    *&v104 = v24;
    *(&v104 + 1) = v26;
    a1 = v25;
    v109 = v71;
    v110 = v72;
    v111 = v73;
    v112 = v74;
    v105 = v67;
    v106 = v68;
    v107 = v69;
    v108 = v70;
    v22(&v101, v16);

    v109 = v46;
    v110 = v47;
    v111 = v48;
    v112 = v49;
    v105 = v42;
    v106 = v41;
    v107 = v40;
    v108 = v39;
    v101 = v44;
    v102 = v45;
    v103 = v10;
    v104 = v43;
    v22(&v101, v16);
    v15 = v32;
    v14 = v33;
    v12 = v34;
    a4 = v35;
  }

  *a5 = a1;
  *(a5 + 8) = v15;
  *(a5 + 9) = *v63;
  *(a5 + 12) = *&v63[3];
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v10;
  *(a5 + 48) = v43;
  *(a5 + 64) = v42;
  *(a5 + 80) = v41;
  result = v40;
  *(a5 + 96) = v40;
  *(a5 + 112) = v39;
  *(a5 + 128) = v11;
  *(a5 + 144) = v13;
  *(a5 + 152) = v12;
  *(a5 + 160) = v37;
  v29 = *v62;
  *(a5 + 164) = *&v62[3];
  *(a5 + 161) = v29;
  *(a5 + 168) = v38;
  *(a5 + 176) = v14;
  return result;
}

void ParallaxAssetView.body.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_1A4260908(255);
  *&v65 = v4;
  v29 = *(a1 + 16);
  sub_1A41EF370(255);
  *(&v65 + 1) = sub_1A5248804();
  sub_1A4260C48(255);
  *&v66 = v5;
  sub_1A4260E88(255);
  *(&v66 + 1) = v6;
  swift_getTupleTypeMetadata();
  sub_1A524BE24();
  sub_1A5249754();
  sub_1A524DF24();
  v51 = sub_1A4260FA0();
  WitnessTable = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v24[1] = swift_getWitnessTable();
  v7 = sub_1A524B8B4();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A5248804();
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v26 = v24 - v9;
  v28 = v8;
  v10 = sub_1A5248804();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v32 = v24 - v11;
  sub_1A42645D4(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
  v13 = v12;
  v33 = v12;
  v25 = swift_getWitnessTable();
  v48 = v25;
  v49 = MEMORY[0x1E697E040];
  v27 = swift_getWitnessTable();
  v46 = v27;
  v47 = MEMORY[0x1E69805D0];
  v35 = v10;
  v14 = swift_getWitnessTable();
  v37 = v14;
  v36 = sub_1A4260FF4();
  *&v65 = v10;
  *(&v65 + 1) = v13;
  *&v66 = v14;
  *(&v66 + 1) = v36;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v31 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v34 = v24 - v17;
  v18 = v2[9];
  v61 = v2[8];
  v62 = v18;
  v63 = v2[10];
  v64 = *(v2 + 22);
  v19 = v2[5];
  v57 = v2[4];
  v58 = v19;
  v20 = v2[7];
  v59 = v2[6];
  v60 = v20;
  v21 = v2[1];
  v53 = *v2;
  v54 = v21;
  v22 = v2[3];
  v55 = v2[2];
  v56 = v22;
  sub_1A524BC74();
  v23 = *(a1 + 24);
  v43 = v29;
  v44 = v23;
  v24[0] = v23;
  v45 = &v53;
  sub_1A524B8A4();
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v76 = v64;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v72 = v60;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v68 = v56;
  sub_1A426225C();
}

void sub_1A42609D4()
{
  if (!qword_1EB1362A8)
  {
    sub_1A4260A70(255);
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1362A8);
    }
  }
}

void sub_1A4260AE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4264998(a4, a5);
    v8 = sub_1A524B8B4();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4260BB0()
{
  if (!qword_1EB1362C8)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB1362C8);
    }
  }
}

void sub_1A4260CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4260D4C()
{
  if (!qword_1EB136300)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A4260DDC();
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136300);
    }
  }
}

unint64_t sub_1A4260DDC()
{
  result = qword_1EB136308;
  if (!qword_1EB136308)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    sub_1A41CE100();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136308);
  }

  return result;
}

void sub_1A4260EA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41EF370(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4260F14()
{
  if (!qword_1EB136318)
  {
    sub_1A4264028(255, &qword_1EB1362D0, &type metadata for ParallaxImageViewWrapper, MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB136318);
    }
  }
}

unint64_t sub_1A4260FA0()
{
  result = qword_1EB136320;
  if (!qword_1EB136320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136320);
  }

  return result;
}

unint64_t sub_1A4260FF4()
{
  result = qword_1EB136328;
  if (!qword_1EB136328)
  {
    sub_1A42645D4(255, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage, MEMORY[0x1E69E6720]);
    sub_1A4261090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136328);
  }

  return result;
}

unint64_t sub_1A4261090()
{
  result = qword_1EB136330;
  if (!qword_1EB136330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136330);
  }

  return result;
}

uint64_t sub_1A42610E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v87 = a3;
  v95 = a4;
  sub_1A4260908(255);
  v129[0] = v6;
  sub_1A41EF370(255);
  v129[1] = sub_1A5248804();
  sub_1A4260C48(255);
  v129[2] = v7;
  sub_1A4260E88(255);
  v129[3] = v8;
  swift_getTupleTypeMetadata();
  v9 = sub_1A524BE24();
  v89 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v68 - v10;
  v86 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v84 = a2;
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5248804();
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v68 - v16;
  v17 = sub_1A5249754();
  v94 = sub_1A524DF24();
  v18 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v83 = a1;
  v24 = *a1;
  v25 = *(**a1 + 448);

  v27 = v25(v26);
  v96 = v9;
  if (v27)
  {
    ParallaxAssetDebugView.init(viewModel:)(v24, v129);
    v28 = sub_1A4260FA0();
    WitnessTable = swift_getWitnessTable();
    sub_1A3DF4798(v129, &type metadata for ParallaxAssetDebugView);

    (*(*(v17 - 8) + 56))(v20, 0, 1, v17);
    v97 = v28;
    v98 = WitnessTable;
    swift_getWitnessTable();
    v30 = *(v18 + 16);
    v31 = v94;
    v30(v23, v20, v94);
    v32 = *(v18 + 8);
    v33 = v20;
    v34 = v30;
    v32(v33, v31);
    v35 = v31;
  }

  else
  {
    v79 = v20;
    v80 = v18;
    v81 = v23;
    v82 = v17;

    (*(*v24 + 544))(v128, v36);
    memcpy(v129, v128, 0x123uLL);
    if (get_enum_tag_for_layout_string_xRi_zRi0_zlyxIsegr_Sg_0(v129) != 1)
    {
      sub_1A42644DC(v128, &qword_1EB130E60, &type metadata for ParallaxAssetCompositeImage);
      v40 = sub_1A524BC74();
      v72 = v41;
      v73 = v40;
      *&v69 = sub_1A524BC74();
      *(&v69 + 1) = v42;
      v43 = v83;
      v120[0] = *(v83 + 4);
      sub_1A42641A0(0, &qword_1EB136358, sub_1A426006C, MEMORY[0x1E6981790]);
      v45 = v44;
      sub_1A524B6A4();
      v46 = v104;
      v47 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v46, v47, v120);
      v78 = v120[0];
      v120[0] = *(v43 + 5);
      sub_1A524B6A4();
      v48 = v104;
      v49 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v48, v49, v120);
      v77 = v120[0];
      v120[0] = *(v43 + 2);
      v70 = v45;
      sub_1A524B6A4();
      v50 = v104;
      v51 = sub_1A3C6E9EC();
      v52 = sub_1A41CE0F4(v50, v51, v120);
      v53 = v120[0];
      v54 = (*(*v24 + 896))(v52);
      v55 = v43[16];
      v74 = v43[17];
      *&v120[0] = v55;
      *(&v120[0] + 1) = v74;
      v76 = MEMORY[0x1E6981790];
      sub_1A42645D4(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
      v71 = v56;
      sub_1A524B6A4();
      v57 = v104;
      v120[0] = *(v43 + 6);
      sub_1A524B6A4();
      v58 = v104;
      v59 = sub_1A3C6E9EC();
      sub_1A41CE0F4(v58, v59, &v104);
      v60 = v104;
      v61 = v43[18];
      v75 = v43[19];
      *&v120[0] = v61;
      *(&v120[0] + 1) = v75;
      sub_1A524B6A4();
      v62 = v99;
      v63 = v69;
      v104 = v69;
      v105 = v78;
      v106 = v77;
      v107 = v53;
      *&v108 = v54;
      *(&v108 + 1) = v57;
      v101 = v77;
      v102 = v53;
      v103 = v108;
      v99 = v69;
      v100 = v78;
      sub_1A42640D0(&v104, v120, sub_1A4260A70);
      v120[0] = v63;
      v120[2] = v77;
      v120[1] = v78;
      v120[3] = v53;
      v121 = v54;
      v122 = v57;
      sub_1A4264AC0(v120, sub_1A4260A70);
      v113 = v101;
      v114 = v102;
      v115 = v103;
      v112 = v100;
      v111 = v99;
      v116 = v60;
      v117 = v62;
      v118[4] = v103;
      v118[3] = v102;
      v118[2] = v101;
      v118[1] = v100;
      v118[0] = v99;
      v118[5] = v60;
      v119 = v62;
      sub_1A42640D0(&v111, v120, sub_1A42609A0);
      sub_1A4264AC0(v118, sub_1A42609A0);
      v108 = v115;
      v109 = v116;
      v110 = v117;
      v104 = v111;
      v105 = v112;
      v107 = v114;
      v106 = v113;
      sub_1A426225C();
    }

    v37 = v79;
    (*(*(v82 - 8) + 56))(v79, 1, 1, v82);
    v38 = sub_1A4260FA0();
    v39 = swift_getWitnessTable();
    v126 = v38;
    v127 = v39;
    swift_getWitnessTable();
    v64 = v80;
    v23 = v81;
    v34 = *(v80 + 16);
    v35 = v94;
    v34(v81, v37, v94);
    v32 = *(v64 + 8);
    v32(v37, v35);
  }

  v65 = sub_1A4260FA0();
  v66 = swift_getWitnessTable();
  v124 = v65;
  v125 = v66;
  v123 = swift_getWitnessTable();
  swift_getWitnessTable();
  v34(v95, v23, v35);
  return (v32)(v23, v35);
}