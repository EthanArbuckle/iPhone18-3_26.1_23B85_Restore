void sub_1C7427DEC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v99 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v89 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v89 = i)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v91 = &v8[16 * i];
        v92 = *v91;
        v93 = &v89[2 * i];
        v94 = v93[1];
        sub_1C7428E30((*a3 + 16 * *v91), (*a3 + 16 * *v93), (*a3 + 16 * v94), v99);
        if (v5)
        {
          break;
        }

        if (v94 < v92)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v89)
        {
          goto LABEL_122;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - i;
        if (*v89 < i)
        {
          goto LABEL_123;
        }

        i = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_1C7420830();
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 16 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *a3 + 16 * v7;
      v14 = 16 * v7;
      v15 = *(v13 + 8);
      v16 = *v10 < *v13;
      if (v12 != v15)
      {
        v16 = v12 < v15;
      }

      v17 = (v13 + 40);
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v9 >= v6)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        v17 += 2;
        v22 = v21;
        v23 = v20 >= v11;
        v24 = v21 >= v12;
        if (v21 == v12)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v18 = v19 + 1;
        v12 = v22;
        v11 = v20;
        if (v16 == v25)
        {
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      v9 = v6;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v9 < v7)
      {
        goto LABEL_127;
      }

      if (v7 < v9)
      {
        if (v6 >= v19)
        {
          v6 = v19;
        }

        v26 = 16 * v6;
        v27 = v9;
        v28 = v7;
        do
        {
          if (v28 != --v27)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v30 = (v29 + v14);
            v31 = v29 + v26;
            v32 = *v30;
            v33 = v30[1];
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v28;
          v26 -= 16;
          v14 += 16;
        }

        while (v28 < v27);
        v6 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_126;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v9 < v7)
    {
      goto LABEL_125;
    }

    v98 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v8 = v87;
    }

    v45 = *(v8 + 2);
    v46 = v45 + 1;
    if (v45 >= *(v8 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v8 = v88;
    }

    *(v8 + 2) = v46;
    v47 = v8 + 32;
    v48 = &v8[16 * v45 + 32];
    *v48 = v7;
    *(v48 + 1) = v9;
    v99 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = &v47[16 * v46 - 16];
        v51 = &v8[16 * v46];
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_63:
          if (v55)
          {
            goto LABEL_112;
          }

          v67 = *v51;
          v66 = *(v51 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_115;
          }

          v71 = *(v50 + 1);
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_120;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v46 < 2)
        {
          goto LABEL_114;
        }

        v74 = *v51;
        v73 = *(v51 + 1);
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_78:
        if (v70)
        {
          goto LABEL_117;
        }

        v76 = *v50;
        v75 = *(v50 + 1);
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_119;
        }

        if (v77 < v69)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v81 = &v47[16 * v49 - 16];
        v82 = *v81;
        v83 = &v47[16 * v49];
        v84 = *(v83 + 1);
        sub_1C7428E30((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v99);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v84 < v82)
        {
          goto LABEL_107;
        }

        v5 = v8;
        v85 = *(v8 + 2);
        if (v49 > v85)
        {
          goto LABEL_108;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        if (v49 >= v85)
        {
          goto LABEL_109;
        }

        v46 = v85 - 1;
        sub_1C7423CF4(v83 + 16, v85 - 1 - v49, &v47[16 * v49]);
        *(v5 + 2) = v85 - 1;
        v86 = v85 > 2;
        v8 = v5;
        v5 = 0;
        if (!v86)
        {
          goto LABEL_92;
        }
      }

      v56 = &v47[16 * v46];
      v57 = *(v56 - 8);
      v58 = *(v56 - 7);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_110;
      }

      v61 = *(v56 - 6);
      v60 = *(v56 - 5);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_111;
      }

      v63 = *(v51 + 1);
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_113;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_116;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = *(v50 + 1);
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_124;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v98;
    a4 = v96;
    if (v98 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_128;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v9 == v6)
  {
    goto LABEL_43;
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9 - 16;
  v36 = v7 - v9;
LABEL_34:
  v37 = (v34 + 16 * v9);
  v38 = *v37;
  v39 = v37[1];
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 8);
    v43 = *&v38 < *v41;
    if (v39 != v42)
    {
      v43 = v39 < v42;
    }

    if (!v43)
    {
LABEL_41:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (!v34)
    {
      break;
    }

    *(v41 + 16) = *v41;
    *v41 = v38;
    *(v41 + 8) = v39;
    v41 -= 16;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

void sub_1C7428398(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v90 = v6 + 16;
      v91 = *(v6 + 2);
      while (v91 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v92 = v6;
        v93 = &v6[16 * v91];
        v94 = *v93;
        v95 = &v90[2 * v91];
        v96 = v95[1];
        sub_1C7428FEC((*a3 + 24 * *v93), (*a3 + 24 * *v95), *a3 + 24 * v96, v100);
        if (v102)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_135;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_136;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_137;
        }

        v102 = 0;
        v91 = *v90 - 1;
        memmove(v95, v95 + 2, 16 * v97);
        *v90 = v91;
        v6 = v92;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v6 = sub_1C7420830();
    goto LABEL_111;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_33;
    }

    v8 = *a3;
    v9 = *a3 + 24 * v5;
    v10 = *(v9 + 16);
    v11 = *a3 + 24 * v7;
    v12 = *(v11 + 16);
    if (v10 == v12)
    {
      if (*v9 == *v11 && *(v9 + 8) == *(v11 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_1C7551DBC();
      }
    }

    else
    {
      v14 = v12 < v10;
    }

    v5 = v7 + 2;
    v15 = v8 + 24 * v7;
    v16 = 24 * v7;
    v17 = (v15 + 64);
    while (v5 < v4)
    {
      v18 = *(v17 - 3);
      if (*v17 == v18)
      {
        if (*(v17 - 2) == *(v17 - 5) && *(v17 - 1) == *(v17 - 4))
        {
          if (v14)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v20 = sub_1C7551DBC();
      }

      else
      {
        v20 = v18 < *v17;
      }

      if ((v14 ^ v20))
      {
        break;
      }

LABEL_24:
      ++v5;
      v17 += 3;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v5 < v7)
    {
      goto LABEL_141;
    }

    if (v7 < v5)
    {
      v21 = 24 * v5 - 8;
      v22 = v5;
      v23 = v7;
      do
      {
        if (v23 != --v22)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v25 = (v24 + v16);
          v26 = (v24 + v21);
          v27 = *v25;
          v28 = v25[1];
          v29 = v25[2];
          v30 = *v26;
          *v25 = *(v26 - 1);
          v25[2] = v30;
          *(v26 - 2) = v27;
          *(v26 - 1) = v28;
          *v26 = v29;
        }

        ++v23;
        v21 -= 24;
        v16 += 24;
      }

      while (v23 < v22);
    }

LABEL_33:
    v31 = a3[1];
    if (v5 >= v31)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_140;
    }

    if (v5 - v7 >= a4)
    {
LABEL_57:
      if (v5 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v6 = v88;
      }

      v46 = *(v6 + 2);
      v47 = v46 + 1;
      if (v46 >= *(v6 + 3) >> 1)
      {
        sub_1C6FB17EC();
        v6 = v89;
      }

      *(v6 + 2) = v47;
      v48 = v6 + 32;
      v49 = &v6[16 * v46 + 32];
      *v49 = v7;
      *(v49 + 1) = v5;
      v100 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      if (!v46)
      {
LABEL_106:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v6[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v6 + 4);
          v54 = *(v6 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_77:
          if (v56)
          {
            goto LABEL_126;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_129;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_134;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v47 < 2)
        {
          goto LABEL_128;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_92:
        if (v71)
        {
          goto LABEL_131;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_133;
        }

        if (v78 < v70)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v50 - 1 >= v47)
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v82 = v6;
        v83 = &v48[16 * v50 - 16];
        v84 = *v83;
        v85 = &v48[16 * v50];
        v86 = *(v85 + 1);
        sub_1C7428FEC((*a3 + 24 * *v83), (*a3 + 24 * *v85), *a3 + 24 * v86, v100);
        if (v102)
        {
          goto LABEL_119;
        }

        if (v86 < v84)
        {
          goto LABEL_121;
        }

        v87 = *(v82 + 2);
        if (v50 > v87)
        {
          goto LABEL_122;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        if (v50 >= v87)
        {
          goto LABEL_123;
        }

        v102 = 0;
        v47 = v87 - 1;
        sub_1C7423CF4(v85 + 16, v87 - 1 - v50, &v48[16 * v50]);
        v6 = v82;
        *(v82 + 2) = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_106;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_124;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_125;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_127;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_130;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_142;
  }

  if (v7 + a4 >= v31)
  {
    v32 = a3[1];
  }

  else
  {
    v32 = v7 + a4;
  }

  if (v32 < v7)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v5 == v32)
  {
    goto LABEL_57;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v5 - 24;
  v35 = v7 - v5;
LABEL_43:
  v36 = (v33 + 24 * v5);
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = v36[2];
  v40 = v35;
  v41 = v34;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = *&v37 == *v41 && v38 == *(v41 + 8);
      if (v43 || (sub_1C7551DBC() & 1) == 0)
      {
LABEL_55:
        ++v5;
        v34 += 24;
        --v35;
        if (v5 == v32)
        {
          v5 = v32;
          goto LABEL_57;
        }

        goto LABEL_43;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_55;
    }

    if (!v33)
    {
      break;
    }

    v37 = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = v37;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_55;
    }
  }

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
}

void sub_1C74289C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_67;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_68;
  }

  v23 = v19 / v18;
  v58 = a1;
  v57 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    sub_1C741E684(a2, v21 / v18, a4);
    v33 = a4 + v24 * v18;
    v34 = -v18;
    v35 = v33;
    v36 = v53;
    v54 = v34;
LABEL_40:
    v51 = a2 + v34;
    v37 = a3;
    v49 = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v58 = a2;
        v56 = v35;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v38 = v33 + v34;
      sub_1C74295B8(v33 + v34, v36);
      v39 = v52;
      sub_1C74295B8(v51, v52);
      v40 = *(v55 + 48);
      v41 = *(v36 + v40);
      v42 = *(v39 + v40);
      if (v41 == v42)
      {
        v43 = MEMORY[0x1CCA5A4B0](v36, v39);
      }

      else
      {
        v43 = v42 < v41;
      }

      v44 = v39;
      a3 = v37 + v54;
      sub_1C7429698(v44);
      sub_1C7429698(v36);
      if (v43)
      {
        if (v37 < a2 || a3 >= a2)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v50;
          v36 = v53;
          v34 = v54;
        }

        else
        {
          v35 = v50;
          v20 = v37 == a2;
          v47 = v51;
          a2 = v51;
          v36 = v53;
          v34 = v54;
          if (!v20)
          {
            v48 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
            v35 = v48;
          }
        }

        goto LABEL_40;
      }

      if (v37 < v33 || a3 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = a3;
        v33 = v38;
        v35 = v38;
        v36 = v53;
        v34 = v54;
      }

      else
      {
        v35 = v38;
        v20 = v33 == v37;
        v37 = a3;
        v33 = v38;
        v36 = v53;
        v34 = v54;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = a3;
          v33 = v38;
          v35 = v38;
        }
      }
    }

    v58 = a2;
    v56 = v49;
  }

  else
  {
    sub_1C741E684(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v56 = v25;
    while (a4 < v25 && a2 < a3)
    {
      sub_1C74295B8(a2, v16);
      sub_1C74295B8(a4, v13);
      v27 = *(v55 + 48);
      v28 = *&v16[v27];
      v29 = *&v13[v27];
      if (v28 == v29)
      {
        v30 = MEMORY[0x1CCA5A4B0](v16, v13);
      }

      else
      {
        v30 = v29 < v28;
      }

      sub_1C7429698(v13);
      sub_1C7429698(v16);
      if (v30)
      {
        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v18;
        a4 += v18;
      }

      a1 += v18;
      v58 = a1;
    }
  }

LABEL_65:
  sub_1C742088C(&v58, &v57, &v56);
}

uint64_t sub_1C7428E30(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = v6[1];
      v13 = v4[1];
      v14 = *v6 < *v4;
      if (v12 != v13)
      {
        v14 = v12 < v13;
      }

      if (!v14)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 2;
      if (!v16)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 16;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 2;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v15;
    goto LABEL_15;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[2 * v9];
LABEL_17:
  v17 = v6 - 2;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    v19 = *(v10 - 1);
    v20 = *(v6 - 1);
    v21 = *(v10 - 2) < *(v6 - 2);
    if (v19 != v20)
    {
      v21 = v19 < v20;
    }

    if (v21)
    {
      v16 = v5 + 2 == v6;
      v6 -= 2;
      if (!v16)
      {
        *v5 = *v17;
        v6 = v17;
      }

      goto LABEL_17;
    }

    if (v10 != v5 + 2)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 2;
  }

LABEL_32:
  v22 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v22])
  {
    memmove(v6, v4, 16 * v22);
  }

  return 1;
}

uint64_t sub_1C7428FEC(double *a1, double *a2, unint64_t a3, double *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1);
    v10 = &a4[3 * v8];
    while (1)
    {
      if (a4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_41;
      }

      v12 = v6[2];
      v13 = a4[2];
      if (v12 == v13)
      {
        v14 = *v6 == *a4 && *(v6 + 1) == *(a4 + 1);
        if (v14 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_13:
          v15 = a4;
          v14 = v7 == a4;
          a4 += 3;
          if (v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          v16 = *v15;
          v7[2] = v15[2];
          *v7 = v16;
          goto LABEL_15;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_13;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 3;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 3;
    }
  }

  sub_1C7423D18(a2);
  v17 = &a4[3 * v9];
LABEL_21:
  v18 = 0;
  v19 = v6;
  v6 -= 3;
  while (1)
  {
    v10 = &v17[v18 / 8];
    if (&v17[v18 / 8] <= a4 || v19 <= v7)
    {
      break;
    }

    v21 = *(v10 - 1);
    v22 = *(v19 - 1);
    if (v21 == v22)
    {
      v23 = *(v10 - 3) == *(v19 - 3) && *(v10 - 2) == *(v19 - 2);
      if (!v23 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_38:
        v26 = (v5 + v18);
        v5 = v5 + v18 - 24;
        v17 = (v17 + v18);
        if (v26 != v19)
        {
          v27 = *v6;
          *(v5 + 16) = v6[2];
          *v5 = v27;
        }

        goto LABEL_21;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_38;
    }

    if (v10 != (v5 + v18))
    {
      v24 = v5 + v18 - 24;
      v25 = *(v10 - 3);
      *(v24 + 16) = *(v10 - 1);
      *v24 = v25;
    }

    v18 -= 24;
  }

LABEL_41:
  v28 = (v10 - a4) / 24;
  if (v19 != a4 || v19 >= &a4[3 * v28])
  {
    memmove(v19, a4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1C7429208()
{
  v1 = v0;
  OUTLINED_FUNCTION_13_82();
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_86();
      sub_1C7429510(v11, v12, v13, v14);
      v1 = v15;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v1;
    }
  }

  MEMORY[0x1EEE9AC00](v2);
  sub_1C71FAC38(0, v4, v16 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_8_86();
  sub_1C7429370(v5, v6, v7, v8);
  if (!v0)
  {
    return v9;
  }

  swift_willThrow();
  return v1;
}

void sub_1C7429370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_13_82();
  v10 = v9;
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = v8 + 64;
  v16 = 1 << *(v8 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v8 + 64);
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(*(a3 + 56) + 8 * v23);
    if (v5 <= 0.0)
    {
      if (v24 == v6)
      {
        goto LABEL_16;
      }

      if (v4 <= 0.0)
      {
LABEL_19:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_22:
          a4(v12, v10, v13, a3);
          return;
        }
      }
    }

    else
    {
      v25 = erfc((v6 - v24) / v5 * 0.707106781) * 0.5;
      if (v25 > 1.0)
      {
LABEL_16:
        if (v4 <= 1.0)
        {
          goto LABEL_19;
        }
      }

      else if (v25 >= v4)
      {
        goto LABEL_19;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_22;
    }

    v22 = *(v15 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C7429510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_82();
    v8 = v7;
    v9 = v6;
    v10 = v5;
    if (v6)
    {
      bzero(v5, 8 * v6);
    }

    sub_1C7429370(v10, v9, v8, a4);
  }
}

uint64_t sub_1C74295B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7429628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7429698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C742970C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, a2, sizeof(__srca));
  memcpy(v13, __src, sizeof(v13));
  if (sub_1C73A1B7C(v13) == 1)
  {
    sub_1C6F66C14(v13);
    memcpy(v9, __srca, sizeof(v9));
    v4 = sub_1C73A1B7C(v9);
    sub_1C6F66C14(v9);
    if (v4 == 1)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1C6F66C14(v13);
    memcpy(v9, __srca, sizeof(v9));
    v6 = sub_1C73A1B7C(v9);
    sub_1C6F66C14(v9);
    if (v6 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }
  }

  memcpy(v9, __dst, sizeof(v9));
  memcpy(v10, __srca, sizeof(v10));
  sub_1C73A1EE0(__srca, v8);
  sub_1C73A1EE0(__dst, v8);
  sub_1C7030CDC(v9, &qword_1EC21B078);
  return v5 & 1;
}

uint64_t sub_1C7429844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  *(v6 + 80) = *(a3 + 16);
  v7 = *(a3 + 296);
  *(v6 + 96) = *(a3 + 208);
  *(v6 + 104) = v7;
  v8 = *a6;
  *(v6 + 152) = *(a6 + 4);
  v9 = a6[2];
  *(v6 + 112) = v8;
  *(v6 + 120) = v9;
  v10 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C742989C()
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v0 + 72) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, qword_1EDD289D8);
    v7 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v9);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v10, v11, "Public files not saved, does not match the condition");
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v12();
  }

  else
  {
    v1 = *(v0 + 152);
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    sub_1C742A1A8();
    *(v0 + 16) = v3;
    *(v0 + 24) = v1;
    *(v0 + 32) = v2;
    v4 = swift_task_alloc();
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_1C7429A28;

    return sub_1C742A50C();
  }
}

uint64_t sub_1C7429A28()
{
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  *(v1 + 136) = type metadata accessor for FreeformStory();
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *v4 = v3;
  v4[1] = sub_1C7429B94;

  return sub_1C742B450();
}

uint64_t sub_1C7429B94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7429C78()
{
  v7 = v0;
  v1 = v0[7];
  v6[0] = *(v0[6] + *(v0[17] + 44));
  sub_1C742BBF0();
  sub_1C742C508();
  v2 = memcpy(v6, (v1 + 216), sizeof(v6));
  ExtendedTokenCollection.allTokens.getter(v2);
  sub_1C742C940();

  sub_1C742D380();
  if (qword_1EC214138 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  os_unfair_lock_lock(&dword_1EC25B920);
  sub_1C742DD34(&qword_1EC25B928, v3);
  os_unfair_lock_unlock(&dword_1EC25B920);
  sub_1C742E018(v0[9]);
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7429E14(const void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  memcpy(v11, a1, sizeof(v11));
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  memcpy(v8 + 5, v11, 0x90uLL);

  sub_1C73A1EE0(v11, v10);
  sub_1C6FEB80C(0, 0, v6, &unk_1C758AFD8, v8);
}

uint64_t sub_1C7429F40()
{
  result = sub_1C755068C();
  qword_1EC25B890 = result;
  *algn_1EC25B898 = v1;
  return result;
}

uint64_t sub_1C7429F70()
{
  result = sub_1C755068C();
  qword_1EC25B8A0 = result;
  *algn_1EC25B8A8 = v1;
  return result;
}

uint64_t sub_1C7429FA0()
{
  result = sub_1C755068C();
  qword_1EC25B8B0 = result;
  *algn_1EC25B8B8 = v1;
  return result;
}

uint64_t sub_1C7429FD0()
{
  result = sub_1C755068C();
  qword_1EC25B8C0 = result;
  *algn_1EC25B8C8 = v1;
  return result;
}

uint64_t sub_1C742A000()
{
  result = sub_1C755068C();
  qword_1EC25B8D0 = result;
  *algn_1EC25B8D8 = v1;
  return result;
}

uint64_t sub_1C742A030()
{
  result = sub_1C755068C();
  qword_1EC25B8E0 = result;
  *algn_1EC25B8E8 = v1;
  return result;
}

uint64_t sub_1C742A060()
{
  result = sub_1C755068C();
  qword_1EC25B8F0 = result;
  *algn_1EC25B8F8 = v1;
  return result;
}

uint64_t sub_1C742A090()
{
  result = sub_1C755068C();
  qword_1EC25B900 = result;
  *algn_1EC25B908 = v1;
  return result;
}

uint64_t sub_1C742A0C0()
{
  result = sub_1C755068C();
  qword_1EC25B910 = result;
  *algn_1EC25B918 = v1;
  return result;
}

uint64_t sub_1C742A0F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD289D8);
  __swift_project_value_buffer(v0, qword_1EDD289D8);
  return sub_1C754FEFC();
}

void sub_1C742A1A8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v29 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v29, qword_1EDD289D8);
    v34 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v34, v30))
    {
      v31 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v31);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v34, v1, "Prompt: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v13 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v13 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1C75504FC();
    }

    else
    {
      v3 = 0xEC0000007974706DLL;
      v5 = 0x652074706D6F7250;
    }

    sub_1C75506CC();
    sub_1C755069C();
    v15 = v14;
    (*(v8 + 8))(v12, v6);
    if (v15 >> 60 == 15)
    {

      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159();
      }

      v16 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v16, qword_1EDD289D8);
      v17 = sub_1C754FEEC();
      v18 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v18))
      {
        v19 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v19);
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v20, v21, "Prompt: couldn't encode string.");
        OUTLINED_FUNCTION_23_3();
      }
    }

    else
    {
      if (qword_1EC214140 != -1)
      {
        OUTLINED_FUNCTION_1_118();
      }

      os_unfair_lock_lock(&dword_1EC25B930);
      if (qword_1EC214118 != -1)
      {
        OUTLINED_FUNCTION_12_75();
      }

      v22 = qword_1EC25B8F0;
      v23 = *algn_1EC25B8F8;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FB0D6C();
      v24 = *(qword_1EC25B938 + 16);
      sub_1C6FB1594();

      v25 = qword_1EC25B938;
      *(qword_1EC25B938 + 16) = v24 + 1;
      v26 = (v25 + (v24 << 6));
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = 0x7470697263736544;
      v26[7] = 0xEB000000006E6F69;
      v26[8] = 0;
      v26[9] = 0;
      v26[10] = v5;
      v26[11] = v3;
      os_unfair_lock_unlock(&dword_1EC25B930);
      OUTLINED_FUNCTION_46_35();
      sub_1C7161C08();
      v27 = OUTLINED_FUNCTION_15_1();
      sub_1C70B5C10(v27, v28);
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C742A50C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 184) = v3;
  *(v0 + 192) = v4;
  v5 = sub_1C75506DC();
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_18(v5);
  *(v0 + 208) = v6;
  *(v0 + 216) = OUTLINED_FUNCTION_77();
  v7 = sub_1C754DF6C();
  *(v0 + 224) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 232) = v8;
  *(v0 + 240) = OUTLINED_FUNCTION_77();
  sub_1C754F2FC();
  v9 = OUTLINED_FUNCTION_77();
  v10 = *v2;
  *(v0 + 248) = v9;
  *(v0 + 256) = v10;
  *(v0 + 312) = *(v2 + 4);
  *(v0 + 264) = v2[2];
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C742A638()
{
  if (!PFOSVariantHasInternalDiagnostics() || *(*(v0 + 192) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
  {
    v1 = *(v0 + 256);
    v2 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C755BAB0;
    v4 = v1;

    v5 = sub_1C70CAC04(v2);
    if (v6)
    {
      v7 = *(v0 + 256);
      v8 = *(v0 + 312);
      *(v3 + 32) = v5;
      *(v3 + 40) = v6;
      sub_1C754F41C();
      *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
      *(v0 + 152) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_0((v0 + 120));
      MEMORY[0x1CCA5B6D0]();
      sub_1C754F30C();
      v9 = v7;

      v10 = [v9 librarySpecificFetchOptions];
      *(v0 + 272) = v10;
      [v10 setSharingFilter_];

      v11 = objc_opt_self();
      v12 = v10;
      v13 = sub_1C6FCA158(v3, v10, v11);
      *(v0 + 280) = v13;

      if (v13)
      {

        *(v0 + 112) = 0;
        *(v0 + 80) = 0u;
        *(v0 + 96) = 0u;
        *(v0 + 48) = 0u;
        *(v0 + 64) = 0u;
        *(v0 + 32) = 0u;
        *(v0 + 16) = 0u;
        v14 = swift_task_alloc();
        *(v0 + 288) = v14;
        *v14 = v0;
        v14[1] = sub_1C742A970;
        v15 = *(v0 + 264);
        v16 = *(v0 + 248);
        v17 = MEMORY[0x1E69E7CC0];

        sub_1C74B075C(v13, v17, (v0 + 16), v15, v0 + 120, v16, 0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159();
  }

  v18 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v18, qword_1EDD289D8);
  v19 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_16_1();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v21);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v22, v23, "Key Asset: Skipping public diagnostics as user is internal.");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_43();

  v24();
}

uint64_t sub_1C742A970(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v5 + 296) = v1;

  if (v1)
  {
    v8 = sub_1C742AEE0;
  }

  else
  {
    *(v5 + 304) = a1;
    v8 = sub_1C742AA8C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C742AA8C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  v41 = sub_1C710DADC(v1);
  v4 = v3;

  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 208);
  v42 = *(v0 + 200);
  v43 = *(v0 + 224);
  v9 = *(v0 + 184);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000018, 0x80000001C75AD2D0, v10);
  OUTLINED_FUNCTION_50_31();
  *(v0 + 160) = v44;
  *(v0 + 168) = v45;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  [v9 curationScore];
  sub_1C7550F5C();
  OUTLINED_FUNCTION_36_35();
  v11 = [v9 cls_universalDate];
  sub_1C754DF2C();

  v12 = sub_1C754DECC();
  (*(v5 + 8))(v6, v43);
  v13 = [v10 stringFromDate_];

  v14 = sub_1C755068C();
  v16 = v15;

  MEMORY[0x1CCA5CD70](v14, v16);

  v17 = OUTLINED_FUNCTION_49_31();
  MEMORY[0x1CCA5CD70](v17, 0xEA0000000000203ALL);
  if (v4)
  {
    v18 = v41;
  }

  else
  {
    v18 = 0xD00000000000001FLL;
  }

  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0x80000001C75B02E0;
  }

  MEMORY[0x1CCA5CD70](v18, v19);

  v20 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v20);
  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v21 = sub_1C755069C();
  v23 = v22;

  (*(v8 + 8))(v7, v42);
  if (v23 >> 60 == 15)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v24 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v24, qword_1EDD289D8);
    v25 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    v27 = OUTLINED_FUNCTION_128(v26);
    v28 = *(v0 + 256);
    if (v27)
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_52_30(&dword_1C6F5C000, v29, v30, "Key Asset: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F8 != -1)
    {
      OUTLINED_FUNCTION_16_64();
    }

    OUTLINED_FUNCTION_48_27();
    sub_1C75504FC();
    v31 = sub_1C742F968(v21);
    v33 = v32;
    sub_1C6FB0D6C();
    v34 = *(qword_1EC25B938 + 16);
    sub_1C6FB1594();
    v35 = qword_1EC25B938;
    *(qword_1EC25B938 + 16) = v34 + 1;
    OUTLINED_FUNCTION_47_24(v35 + (v34 << 6));
    v36[6] = v37;
    v36[7] = 0x80000001C75B0300;
    v36[8] = v31;
    v36[9] = v33;
    v36[10] = 0;
    v36[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    OUTLINED_FUNCTION_23_51();
    sub_1C7161C08();

    sub_1C70B5C10(v33, v23);
    v25 = v10;
  }

  OUTLINED_FUNCTION_43();

  return v38();
}

uint64_t sub_1C742AEE0()
{
  v52 = v0;
  v1 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159();
  }

  v2 = *(v0 + 296);
  v49 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v49, qword_1EDD289D8);
  v3 = v2;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51[0] = v9;
    *v8 = 136315138;
    *(v0 + 176) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    v11 = sub_1C75506EC();
    v13 = sub_1C6F765A4(v11, v12, v51);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Error while retrieve caption for key asset. Error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 184);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000018, 0x80000001C75AD2D0, v18);
  OUTLINED_FUNCTION_50_31();
  v19 = v51[1];
  *(v0 + 160) = v51[0];
  *(v0 + 168) = v19;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  [v17 curationScore];
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](0x203A657461440ALL, 0xE700000000000000);
  v20 = [v17 cls_universalDate];
  sub_1C754DF2C();

  v21 = sub_1C754DECC();
  (*(v15 + 8))(v14, v16);
  v50 = v18;
  v22 = [v18 stringFromDate_];

  v23 = sub_1C755068C();
  v25 = v24;

  MEMORY[0x1CCA5CD70](v23, v25);

  v26 = OUTLINED_FUNCTION_49_31();
  MEMORY[0x1CCA5CD70](v26, 0xEA0000000000203ALL);
  MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75B02E0);

  v27 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v27);
  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v28 = sub_1C755069C();
  v30 = v29;

  v31 = OUTLINED_FUNCTION_15_1();
  v32(v31);
  if (v30 >> 60 == 15)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    OUTLINED_FUNCTION_23_2(v49, qword_1EDD289D8);
    v33 = sub_1C754FEEC();
    v34 = sub_1C755119C();
    v35 = OUTLINED_FUNCTION_128(v34);
    v36 = *(v0 + 256);
    if (v35)
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_52_30(&dword_1C6F5C000, v37, v38, "Key Asset: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F8 != -1)
    {
      OUTLINED_FUNCTION_16_64();
    }

    OUTLINED_FUNCTION_48_27();
    sub_1C75504FC();
    v39 = sub_1C742F968(v28);
    v41 = v40;
    sub_1C6FB0D6C();
    v42 = *(qword_1EC25B938 + 16);
    sub_1C6FB1594();
    v43 = qword_1EC25B938;
    *(qword_1EC25B938 + 16) = v42 + 1;
    OUTLINED_FUNCTION_47_24(v43 + (v42 << 6));
    v44[6] = v45;
    v44[7] = 0x80000001C75B0300;
    v44[8] = v39;
    v44[9] = v41;
    v44[10] = 0;
    v44[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    OUTLINED_FUNCTION_23_51();
    sub_1C7161C08();

    sub_1C70B5C10(v41, v30);
    v33 = v50;
  }

  OUTLINED_FUNCTION_43();

  return v46();
}

uint64_t sub_1C742B450()
{
  OUTLINED_FUNCTION_42();
  v0[147] = v1;
  v0[146] = v2;
  v3 = sub_1C75506DC();
  v0[148] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[149] = v4;
  v0[150] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C742B4F8()
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v0 + 1176) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v3 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v3, qword_1EDD289D8);
    v4 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v6);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v7, v8, "Music: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v9();
  }

  else
  {
    type metadata accessor for StoryMusicCurator();
    v1 = swift_task_alloc();
    *(v0 + 1208) = v1;
    *v1 = v0;
    v1[1] = sub_1C742B66C;

    return static StoryMusicCurator.isUserEligibleForAppleMusic()();
  }
}

uint64_t sub_1C742B66C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  *(v1 + 1216) = v0;

  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C742B75C()
{
  v1 = 40;
  if (*(v0 + 1216))
  {
    v1 = 32;
  }

  v2 = *(*(v0 + 1168) + v1);
  if (*(v2 + 16))
  {
    memcpy((v0 + 400), (v2 + 32), 0xC0uLL);
    v4 = *(v0 + 424);
    v3 = *(v0 + 432);
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    memmove((v0 + 208), (v2 + 32), 0xC0uLL);
    CGRectMake(v7);
    sub_1C7080654(v0 + 400, v0 + 592);
    sub_1C7080654(v0 + 400, v0 + 784);
    sub_1C755180C();

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v4, v3);

    MEMORY[0x1CCA5CD70](0x6669746E6564490ALL, 0xED0000203A726569);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v6, v5);
    sub_1C70806B0(v0 + 400);

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000013);
    memcpy((v0 + 16), (v0 + 208), 0xC0uLL);
  }

  else
  {
    sub_1C7423CA4((v0 + 16));
  }

  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v8 = sub_1C755069C();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_55();
  v12(v11);
  if (v10 >> 60 == 15)
  {
    sub_1C7030CDC(v0 + 16, &qword_1EC21BDB0);
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v13 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v13, qword_1EDD289D8);
    v14 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v16);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v17, v18, "Music: couldn't encode string.");
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    memcpy((v0 + 976), (v0 + 16), 0xC0uLL);
    if (sub_1C70808D8(v0 + 976) == 1)
    {
      v19 = 0xED00006174616420;
      v20 = 0x636973756D206F4ELL;
    }

    else
    {
      sub_1C75504FC();
      v21 = OUTLINED_FUNCTION_15_1();
      MEMORY[0x1CCA5CD70](v21);

      MEMORY[0x1CCA5CD70](0x2079622022, 0xE500000000000000);
      sub_1C75504FC();
      v22 = OUTLINED_FUNCTION_15_1();
      MEMORY[0x1CCA5CD70](v22);
      sub_1C7030CDC(v0 + 16, &qword_1EC21BDB0);

      v20 = 34;
      v19 = 0xE100000000000000;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F0 != -1)
    {
      swift_once();
    }

    v23 = qword_1EC25B8A0;
    v24 = *algn_1EC25B8A8;
    sub_1C75504FC();
    sub_1C6FB0D6C();
    OUTLINED_FUNCTION_51_28();
    OUTLINED_FUNCTION_41_42();
    v25[4] = v23;
    v25[5] = v24;
    v25[6] = 1735290707;
    v25[7] = 0xE400000000000000;
    v25[8] = v20;
    v25[9] = v19;
    v25[10] = 0;
    v25[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    sub_1C7161C08();
    sub_1C70B5C10(v8, v10);
  }

  OUTLINED_FUNCTION_43();

  return v26();
}

void sub_1C742BBF0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v67 = *v3;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v47 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v47, qword_1EDD289D8);
    v70 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v70, v48))
    {
      v49 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v49);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v70, v3, "Memory: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v62 = v5;
    v63 = v12;
    v64 = v8;
    v65 = v6;
    v13 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v66 = v13;
    v14 = *(v13 + 40);

    v15 = sub_1C75504DC();
    v16 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_assetNumberByStage;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v68 = v15;
    while (v20)
    {
      v23 = v20;
LABEL_12:
      v20 = (v23 - 1) & v23;
      if (*(v15 + 16))
      {
        v25 = (*(v17 + 48) + 16 * (__clz(__rbit64(v23)) | (v22 << 6)));
        v27 = *v25;
        v26 = v25[1];
        sub_1C75504FC();
        v28 = sub_1C6F78124(v27, v26);
        if (v29)
        {
          v30 = (*(v15 + 56) + 16 * v28);
          v31 = *v30;
          v32 = v30[1];
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v31, v32);

          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          v33 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v33);

          v34 = OUTLINED_FUNCTION_42_2();
          MEMORY[0x1CCA5CD70](v34);
          MEMORY[0x1CCA5CD70](9, 0xE100000000000000);
          v15 = v68;
        }
      }
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v24 >= v21)
      {
        break;
      }

      v23 = *(v17 + 64 + 8 * v24);
      ++v22;
      if (v23)
      {
        v22 = v24;
        goto LABEL_12;
      }
    }

    v35 = *(v66 + 32);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v36 = *(v35 + 24);
    v69 = *(v36 + 16);

    sub_1C75504FC();
    v37 = 0;
    v38 = v36 + 80;
    while (v69 != v37)
    {
      v39 = *(v36 + 16);
      if (v37 == v39)
      {
        break;
      }

      if (v37 >= v39)
      {
        goto LABEL_66;
      }

      v38 += 80;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      v40 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v40);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v41 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v41);

      v42 = OUTLINED_FUNCTION_42_2();
      MEMORY[0x1CCA5CD70](v42);
      MEMORY[0x1CCA5CD70](0x7265747061684309, 0xE900000000000020);

      ++v37;
    }

    sub_1C755180C();
    OUTLINED_FUNCTION_36_35();
    MEMORY[0x1CCA5CD70](*v62, v62[1]);
    MEMORY[0x1CCA5CD70](0x6C7469746275530ALL, 0xEB00000000203A65);
    if (v62[4])
    {
      v44 = v62[5];
      v43 = v62[6];
      sub_1C75504FC();
    }

    else
    {
      v43 = 0xEB00000000656C74;
      v44 = 0x6974627573206F4ELL;
    }

    MEMORY[0x1CCA5CD70](v44, v43);

    OUTLINED_FUNCTION_36_35();
    v45 = 0xE600000000000000;
    v46 = 0x79636167654CLL;
    switch(v67 >> 5)
    {
      case 1u:
        if (v67)
        {
          v46 = 0xD00000000000001CLL;
        }

        else
        {
          v46 = 0xD00000000000001BLL;
        }

        if (v67)
        {
          v45 = 0x80000001C75A0570;
        }

        else
        {
          v45 = 0x80000001C75A0590;
        }

        break;
      case 2u:
        if (v67 == 64)
        {
          v46 = 0x42206C6175736956;
        }

        else
        {
          v46 = 0xD00000000000001ALL;
        }

        if (v67 == 64)
        {
          v45 = 0xEC00000064657361;
        }

        else
        {
          v45 = 0x80000001C75A0550;
        }

        break;
      case 3u:
        if (v67 == 96)
        {
          v46 = 0x736552207473614CLL;
        }

        else
        {
          v46 = 0x61622D7469617254;
        }

        if (v67 == 96)
        {
          v45 = 0xEB0000000074726FLL;
        }

        else
        {
          v45 = 0xEB00000000646573;
        }

        break;
      case 4u:
        break;
      default:
        if (v67)
        {
          v45 = 0x80000001C75A05D0;
        }

        else
        {
          v45 = 0x80000001C75A05B0;
        }

        v46 = 0xD000000000000012;
        break;
    }

    MEMORY[0x1CCA5CD70](v46, v45);

    MEMORY[0x1CCA5CD70](0xD000000000000033, 0x80000001C75B0220);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75B0260);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    v52 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v52);
    sub_1C75506CC();
    v53 = sub_1C755069C();
    v55 = v54;

    (*(v64 + 8))(v63, v65);
    if (v55 >> 60 == 15)
    {
      if (qword_1EDD07C00 == -1)
      {
LABEL_56:
        v56 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v56, qword_1EDD289D8);
        v57 = sub_1C754FEEC();
        v58 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v58))
        {
          v59 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v59);
          OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v60, v61, "Memory: couldn't encode string.");
          OUTLINED_FUNCTION_23_3();
        }

        goto LABEL_64;
      }

LABEL_67:
      OUTLINED_FUNCTION_0_159();
      goto LABEL_56;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C742E2C0(&qword_1EC25B938, v67);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214100 != -1)
    {
      swift_once();
    }

    sub_1C7161C08();
    sub_1C70B5C10(v53, v55);

LABEL_64:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C742C508()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v31 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v31, qword_1EDD289D8);
    v36 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v36, v32))
    {
      v33 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v33);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v36, v1, "Assets: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v11 = [objc_opt_self() fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE28);
      v13 = sub_1C75504AC();
    }

    else
    {
      v13 = 0;
    }

    v14 = [v3 fetchedObjects];
    if (v14)
    {
      v15 = v14;
      sub_1C6FDEC1C();
      v16 = sub_1C7550B5C();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    v17 = sub_1C6FB6304();
    for (i = 0; v17 != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1CCA5DDD0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        OUTLINED_FUNCTION_0_159();
LABEL_19:
        v23 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v23, qword_1EDD289D8);
        v24 = sub_1C754FEEC();
        v25 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v25))
        {
          v26 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v26);
          OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v27, v28, "Assets: couldn't encode string.");
          OUTLINED_FUNCTION_23_3();
        }

        goto LABEL_27;
      }

      v37 = v19;
      sub_1C742E520(v38, &v37, v13);
    }

    sub_1C75506CC();
    sub_1C755069C();
    v22 = v21;

    (*(v6 + 8))(v10, v4);
    if (v22 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C742E888(&qword_1EC25B938);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214108 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_46_35();
    sub_1C7161C08();
    v29 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v29, v30);
LABEL_27:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C742C940()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v84 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v84, qword_1EDD289D8);
    v109 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v109, v85))
    {
      v86 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v86);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v109, v3, "Traits: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();

    return;
  }

  v105 = v12;
  v106 = v8;
  v107 = v6;
  v108 = v5;
  v13 = *(v3 + 16);
  if (!v13)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v39 = v108;
    v40 = *(v108 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    v104 = v40;
    if (v40)
    {
      v115 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v42 = v115;
      v43 = v108 + 32;
      do
      {
        sub_1C6FB5E28(v43, &v110);
        v44 = v112;
        v45 = v113;
        __swift_project_boxed_opaque_existential_1(&v110, v112);
        v46 = (*(v45 + 32))(v44, v45);
        v48 = v47;
        __swift_destroy_boxed_opaque_existential_1(&v110);
        v115 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_15(v49);
          sub_1C6F7ED9C();
          v42 = v115;
        }

        *(v42 + 16) = v50 + 1;
        v51 = v42 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v43 += 40;
        --v40;
      }

      while (v40);
      v39 = v108;
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    v110 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    v52 = sub_1C75505FC();
    v54 = v53;

    v110 = v15;
    sub_1C75504FC();
    v55 = sub_1C75505FC();
    v57 = v56;

    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000002ELL);
    MEMORY[0x1CCA5CD70](v52, v54);

    MEMORY[0x1CCA5CD70](0x3A736E656B6F540ALL, 0xE900000000000020);
    MEMORY[0x1CCA5CD70](v55, v57);

    v58 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v58);
    sub_1C75506CC();
    OUTLINED_FUNCTION_34_41();
    v59 = sub_1C755069C();
    v61 = v60;

    (*(v106 + 8))(v105, v107);
    if (v61 >> 60 == 15)
    {

      if (qword_1EDD07C00 != -1)
      {
        goto LABEL_68;
      }

      goto LABEL_38;
    }

    sub_1C75504FC();
    sub_1C7033F04(2, v39);
    v71 = v70 >> 1;
    v72 = (v70 >> 1) - v69;
    if (__OFSUB__(v70 >> 1, v69))
    {
      __break(1u);
    }

    else
    {
      v103 = v59;
      v102 = v61;
      if (v72)
      {
        v73 = v68;
        v74 = v69;
        v115 = v41;
        sub_1C6F7ED9C();
        if ((v72 & 0x8000000000000000) == 0)
        {
          v75 = v115;
          v61 = v73 + 40 * v74;
          while (v74 < v71)
          {
            sub_1C6FB5E28(v61, &v110);
            v76 = v112;
            v77 = v113;
            __swift_project_boxed_opaque_existential_1(&v110, v112);
            v78 = (*(v77 + 32))(v76, v77);
            v80 = v79;
            __swift_destroy_boxed_opaque_existential_1(&v110);
            v115 = v75;
            v82 = *(v75 + 16);
            v81 = *(v75 + 24);
            if (v82 >= v81 >> 1)
            {
              OUTLINED_FUNCTION_15(v81);
              sub_1C6F7ED9C();
              v75 = v115;
            }

            *(v75 + 16) = v82 + 1;
            v83 = v75 + 16 * v82;
            *(v83 + 32) = v78;
            *(v83 + 40) = v80;
            ++v74;
            v61 += 40;
            if (v71 == v74)
            {
              swift_unknownObjectRelease();
              goto LABEL_58;
            }
          }

          goto LABEL_66;
        }

        __break(1u);
        return;
      }

      swift_unknownObjectRelease();
      v75 = MEMORY[0x1E69E7CC0];
LABEL_58:
      v110 = v75;
      v89 = sub_1C75505FC();
      v71 = v90;

      v110 = 0x20646E61202CLL;
      v111 = 0xE600000000000000;
      v91 = 2;
      if (v104 > 2)
      {
        v91 = v104;
      }

      v92 = v91 - 2;
      v93 = *(v15 + 16);
      v21 = __OFADD__(v92, v93);
      v94 = v92 + v93;
      if (!v21)
      {
        v115 = v94;
        v95 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v95);

        MEMORY[0x1CCA5CD70](0x65726F6D20, 0xE500000000000000);
        v115 = v89;
        v116 = v71;
        sub_1C75504FC();
        v96 = OUTLINED_FUNCTION_15_1();
        MEMORY[0x1CCA5CD70](v96);

        v61 = v115;
        v71 = v116;
        if (qword_1EC214140 == -1)
        {
LABEL_62:
          os_unfair_lock_lock(&dword_1EC25B930);
          if (qword_1EC214110 != -1)
          {
            swift_once();
          }

          v97 = qword_1EC25B8E0;
          v98 = *algn_1EC25B8E8;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FB0D6C();
          v99 = *(qword_1EC25B938 + 16);
          sub_1C6FB1594();

          v100 = qword_1EC25B938;
          *(qword_1EC25B938 + 16) = v99 + 1;
          v101 = (v100 + (v99 << 6));
          v101[4] = v97;
          v101[5] = v98;
          v101[6] = 0x64726F572079654BLL;
          v101[7] = 0xE900000000000073;
          v101[8] = 0;
          v101[9] = 0;
          v101[10] = v61;
          v101[11] = v71;
          os_unfair_lock_unlock(&dword_1EC25B930);

          OUTLINED_FUNCTION_15_1();
          sub_1C7161C08();
          sub_1C70B5C10(v103, v102);
          goto LABEL_65;
        }

LABEL_71:
        OUTLINED_FUNCTION_1_118();
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v14 = v3 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v16 = 1;
  v17 = 1;
  while (1)
  {
    sub_1C6FB5E28(v14, &v115);
    sub_1C6FB5E28(&v115, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    if (swift_dynamicCast())
    {
      break;
    }

    sub_1C6FB5E28(&v115, v114);
    if (swift_dynamicCast())
    {

      v110 = 544499024;
      v111 = 0xE400000000000000;
      v114[0] = v16;
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_37_2();
        v15 = v35;
      }

      v23 = *(v15 + 16);
      if (v23 >= *(v15 + 24) >> 1)
      {
        OUTLINED_FUNCTION_5_96();
        v15 = v36;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = 544499024;
      *(v24 + 40) = 0xE400000000000000;
      v21 = __OFADD__(v16++, 1);
      if (v21)
      {
        goto LABEL_67;
      }
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v115, v117);
      v25 = OUTLINED_FUNCTION_15_1();
      v27 = v26(v25);
      v29 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_37_2();
        v15 = v37;
      }

      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_15(v30);
        sub_1C6FB1814();
        v15 = v38;
      }

      *(v15 + 16) = v31 + 1;
      v32 = v15 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
    }

LABEL_26:
    __swift_destroy_boxed_opaque_existential_1(&v115);
    v14 += 40;
    if (!--v13)
    {
      goto LABEL_29;
    }
  }

  v110 = 0x206E6F73726550;
  v111 = 0xE700000000000000;
  v114[0] = v17;
  v18 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v18);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_37_2();
    v15 = v33;
  }

  v19 = *(v15 + 16);
  if (v19 >= *(v15 + 24) >> 1)
  {
    OUTLINED_FUNCTION_5_96();
    v15 = v34;
  }

  *(v15 + 16) = v19 + 1;
  v20 = v15 + 16 * v19;
  *(v20 + 32) = 0x206E6F73726550;
  *(v20 + 40) = 0xE700000000000000;
  v21 = __OFADD__(v17++, 1);
  if (!v21)
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  OUTLINED_FUNCTION_0_159();
LABEL_38:
  v62 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v62, qword_1EDD289D8);
  v63 = sub_1C754FEEC();
  v64 = sub_1C755119C();
  if (OUTLINED_FUNCTION_7_0(v64))
  {
    v65 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v65);
    OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v66, v67, "Traits: couldn't encode string.");
    OUTLINED_FUNCTION_23_3();
  }

LABEL_65:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C742D380()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  j = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = (v7 - v6);
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v20 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v20, qword_1EDD289D8);
    v87 = sub_1C754FEEC();
    v21 = sub_1C755118C();
    if (os_log_type_enabled(v87, v21))
    {
      v22 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v22);
      _os_log_impl(&dword_1C6F5C000, v87, v21, "Ambiguity: Skipping public diagnostics as user is internal.", v8, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v84 = v8;
    v85 = v4;
    if (qword_1EDD0E058 != -1)
    {
LABEL_78:
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v10 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E060);
    MEMORY[0x1EEE9AC00](v10);
    OUTLINED_FUNCTION_13_83();
    v11 = OUTLINED_FUNCTION_31_43();
    v14 = sub_1C706CC1C(v11, v12, v13);
    v15 = 0;
    v86 = *(v14 + 2);
    for (i = 32; ; i += 120)
    {
      if (v86 == v15)
      {
LABEL_10:

        goto LABEL_19;
      }

      if (v15 >= *(v14 + 2))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      memcpy(v91, v14 + i, 0x78uLL);
      memcpy(v90, v14 + i, sizeof(v90));
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v17 == 2)
      {
        break;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v19 = v18;
      sub_1C6FDD548(v91);
      if (v19 == 1)
      {
        goto LABEL_10;
      }

      ++v15;
    }

    sub_1C6FDD548(v91);
LABEL_19:
    v83 = j;
    if (qword_1EDD0E038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
    MEMORY[0x1EEE9AC00](v25);
    OUTLINED_FUNCTION_13_83();
    v26 = OUTLINED_FUNCTION_31_43();
    v29 = sub_1C706CC1C(v26, v27, v28);
    v30 = 0;
    v31 = *(v29 + 2);
    for (j = 32; ; j += 120)
    {
      if (v31 == v30)
      {
LABEL_27:

        goto LABEL_29;
      }

      if (v30 >= *(v29 + 2))
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_53_35(v91);
      OUTLINED_FUNCTION_53_35(v90);
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v32 == 2)
      {
        break;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v34 = v33;
      sub_1C6FDD548(v91);
      if (v34 == 1)
      {
        goto LABEL_27;
      }

      ++v30;
    }

    sub_1C6FDD548(v91);
LABEL_29:
    if (qword_1EDD0E078 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E080);
    MEMORY[0x1EEE9AC00](v35);
    OUTLINED_FUNCTION_13_83();
    v36 = OUTLINED_FUNCTION_31_43();
    v39 = sub_1C706CC1C(v36, v37, v38);
    v40 = 0;
    v41 = *(v39 + 2);
    for (j = 32; ; j += 120)
    {
      v42 = MEMORY[0x1E69E7CC0];
      if (v41 == v40)
      {

        if (v86 == v15)
        {
          if (v31 == v30)
          {
            goto LABEL_57;
          }

          goto LABEL_44;
        }

        goto LABEL_45;
      }

      if (v40 >= *(v39 + 2))
      {
        goto LABEL_77;
      }

      OUTLINED_FUNCTION_53_35(v91);
      OUTLINED_FUNCTION_53_35(v90);
      sub_1C6FCA6E4(v91, v89);
      sub_1C72D36F8();
      if (v43 == 2)
      {

        sub_1C6FDD548(v91);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_37_39();
      sub_1C72D36F8();
      v45 = v44;
      sub_1C6FDD548(v91);
      if (v45 == 1)
      {
        break;
      }

      ++v40;
    }

LABEL_42:
    if (v86 == v15)
    {
      if (v31 == v30)
      {
        goto LABEL_52;
      }

LABEL_44:
      OUTLINED_FUNCTION_37_2();
      v42 = v46;
      v47 = *(v46 + 16);
LABEL_48:
      v51 = *(v42 + 24);
      if (v47 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_15(v51);
        sub_1C6FB1814();
        v42 = v80;
      }

      *(v42 + 16) = v47 + 1;
      v52 = v42 + 16 * v47;
      *(v52 + 32) = 0x6F697461636F4C09;
      *(v52 + 40) = 0xE90000000000006ELL;
      goto LABEL_51;
    }

LABEL_45:
    OUTLINED_FUNCTION_37_2();
    v42 = v48;
    v49 = *(v48 + 16);
    v47 = v49 + 1;
    if (v49 >= *(v48 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_96();
      v42 = v79;
    }

    *(v42 + 16) = v47;
    v50 = v42 + 16 * v49;
    *(v50 + 32) = 0x6E6F7372655009;
    *(v50 + 40) = 0xE700000000000000;
    if (v31 != v30)
    {
      goto LABEL_48;
    }

LABEL_51:
    if (v41 == v40)
    {
      goto LABEL_57;
    }

LABEL_52:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_37_2();
      v42 = v77;
    }

    v53 = *(v42 + 16);
    if (v53 >= *(v42 + 24) >> 1)
    {
      OUTLINED_FUNCTION_5_96();
      v42 = v78;
    }

    *(v42 + 16) = v53 + 1;
    v54 = v42 + 16 * v53;
    *(v54 + 32) = 0x656D695409;
    *(v54 + 40) = 0xE500000000000000;
LABEL_57:
    if (!*(v42 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v42 = v81;
      }

      v55 = *(v42 + 16);
      if (v55 >= *(v42 + 24) >> 1)
      {
        OUTLINED_FUNCTION_5_96();
        v42 = v82;
      }

      *(v42 + 16) = v55 + 1;
      v56 = v42 + 16 * v55;
      *(v56 + 32) = 0x656E6F4E09;
      *(v56 + 40) = 0xE500000000000000;
    }

    v91[0] = v42;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_42_2();
    v57 = sub_1C75505FC();
    v59 = v58;

    v91[0] = 0;
    v91[1] = 0xE000000000000000;
    sub_1C755180C();

    v91[0] = 0xD000000000000010;
    v91[1] = 0x80000001C75B01B0;
    MEMORY[0x1CCA5CD70](v57, v59);

    v60 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v60);
    sub_1C75506CC();
    OUTLINED_FUNCTION_34_41();
    v61 = sub_1C755069C();
    v63 = v62;

    (*(v85 + 8))(v84, v83);
    if (v63 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159();
      }

      v64 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v64, qword_1EDD289D8);
      v65 = sub_1C754FEEC();
      v66 = sub_1C755119C();
      if (OUTLINED_FUNCTION_128(v66))
      {
        v67 = OUTLINED_FUNCTION_127();
        *v67 = 0;
        _os_log_impl(&dword_1C6F5C000, v65, v66, "Ambiguity: couldn't encode string.", v67, 2u);
        OUTLINED_FUNCTION_109();
      }
    }

    else
    {
      if (qword_1EC214140 != -1)
      {
        OUTLINED_FUNCTION_1_118();
      }

      v88 = v61;
      os_unfair_lock_lock(&dword_1EC25B930);
      if (qword_1EC2140E8 != -1)
      {
        swift_once();
      }

      v69 = qword_1EC25B890;
      v68 = *algn_1EC25B898;
      v91[0] = v42;
      sub_1C75504FC();
      sub_1C75504FC();
      v70 = sub_1C75505FC();
      v72 = v71;

      v91[0] = v70;
      v91[1] = v72;
      v90[0] = 9;
      v90[1] = 0xE100000000000000;
      v89[0] = 0;
      v89[1] = 0xE000000000000000;
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_0_53();
      v73 = sub_1C755155C();
      v75 = v74;

      sub_1C6FB0D6C();
      OUTLINED_FUNCTION_51_28();
      OUTLINED_FUNCTION_41_42();
      v76[4] = v69;
      v76[5] = v68;
      v76[6] = 0x20676E697373694DLL;
      v76[7] = 0xEF736C6961746544;
      v76[8] = 0;
      v76[9] = 0;
      v76[10] = v73;
      v76[11] = v75;
      os_unfair_lock_unlock(&dword_1EC25B930);
      sub_1C7161C08();
      sub_1C70B5C10(v88, v63);
    }

    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C742DD34(uint64_t *a1, uint64_t a2)
{
  v5 = 0;
  v6 = *a1;
  v7 = *(*a1 + 16);
  for (i = 32; ; i += 144)
  {
    if (v7 == v5)
    {
      v11 = 0;
      v2 = 0;
      v5 = *(v6 + 16);
      while (1)
      {
        if (v5 == v2)
        {
          v2 = v5;
          goto LABEL_27;
        }

        memmove(v23, (v6 + v11 + 32), 0x90uLL);
        v12 = sub_1C73A1B7C(v23);
        sub_1C6F66C14(v23);
        if (v12 != 1)
        {
          break;
        }

        ++v2;
        v11 += 144;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_34;
      }

      if (v2 + 1 != v5)
      {
        v5 = v11 + 176;
        v7 = v2 + 2;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (v5 >= *(v6 + 16))
    {
      break;
    }

    memcpy(__dst, (v6 + i), sizeof(__dst));
    ++v5;
    memmove(v23, (v6 + i), 0x90uLL);
    v9 = sub_1C73A1B7C(v23);
    sub_1C6F66C14(v23);
    if (v9 == 1)
    {
      v10 = sub_1C7429E14;
    }

    else
    {
      v10 = sub_1C7429DD0;
    }

    memcpy(v21, __dst, sizeof(v21));
    sub_1C73A1EE0(__dst, v20);
    v2 = 0;
    v10(v21, a2);
    sub_1C73A1F3C(__dst);
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  do
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1C70E42F0();
    v6 = v17;
LABEL_16:
    v13 = v6 + 32;
    while (1)
    {
      v14 = v7 - 1;
      v15 = *(v6 + 16);
      if (v7 - 1 >= v15)
      {
        goto LABEL_30;
      }

      memmove(__dst, (v6 + v5), 0x90uLL);
      v16 = sub_1C73A1B7C(__dst);
      sub_1C6F66C14(__dst);
      if (v16 == 1)
      {
        if (v14 != v2)
        {
          if (v2 >= v15)
          {
            goto LABEL_31;
          }

          memcpy(v18, (v13 + 144 * v2), sizeof(v18));
          memcpy(__src, (v6 + v5), sizeof(__src));
          sub_1C73A1EE0(v18, v21);
          sub_1C73A1EE0(__src, v21);
          memcpy(v20, (v13 + 144 * v2), sizeof(v20));
          memcpy((v13 + 144 * v2), __src, 0x90uLL);
          sub_1C73A1F3C(v20);
          if (v14 >= *(v6 + 16))
          {
            goto LABEL_32;
          }

          memcpy(v21, (v6 + v5), sizeof(v21));
          memcpy((v6 + v5), v18, 0x90uLL);
          sub_1C73A1F3C(v21);
        }

        ++v2;
      }

      if (v7 == *(v6 + 16))
      {
        break;
      }

      ++v7;
      v5 += 144;
    }

    *a1 = v6;
LABEL_27:
    ;
  }

  while (*(v6 + 16) < v2);
  sub_1C71596B4(v2);
}

void sub_1C742E018(uint64_t a1)
{
  if (PFOSVariantHasInternalDiagnostics() && *(a1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v5 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v5, qword_1EDD289D8);
    oslog = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v7);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, oslog, v1, "String Description File: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }
  }

  else
  {
    sub_1C754D7AC();
    swift_allocObject();
    sub_1C754D79C();
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C75504FC();
    os_unfair_lock_unlock(&dword_1EC25B930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE10);
    sub_1C742F890();
    sub_1C754D78C();

    sub_1C755068C();
    sub_1C7161C08();

    v3 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v3, v4);
  }
}

void sub_1C742E2C0(uint64_t *a1, unsigned __int8 a2)
{
  if (qword_1EC214100 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC25B8C0;
  v4 = *algn_1EC25B8C8;
  v6 = 0xE600000000000000;
  v7 = 0x79636167654CLL;
  switch(a2 >> 5)
  {
    case 1:
      if (a2)
      {
        v7 = 0xD00000000000001CLL;
      }

      else
      {
        v7 = 0xD00000000000001BLL;
      }

      if (a2)
      {
        v6 = 0x80000001C75A0570;
      }

      else
      {
        v6 = 0x80000001C75A0590;
      }

      break;
    case 2:
      if (a2 == 64)
      {
        v7 = 0x42206C6175736956;
      }

      else
      {
        v7 = 0xD00000000000001ALL;
      }

      if (a2 == 64)
      {
        v6 = 0xEC00000064657361;
      }

      else
      {
        v6 = 0x80000001C75A0550;
      }

      break;
    case 3:
      if (a2 == 96)
      {
        v7 = 0x736552207473614CLL;
      }

      else
      {
        v7 = 0x61622D7469617254;
      }

      if (a2 == 96)
      {
        v6 = 0xEB0000000074726FLL;
      }

      else
      {
        v6 = 0xEB00000000646573;
      }

      break;
    case 4:
      break;
    default:
      if (a2)
      {
        v6 = 0x80000001C75A05D0;
      }

      else
      {
        v6 = 0x80000001C75A05B0;
      }

      v7 = 0xD000000000000012;
      break;
  }

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v7, v6);

  MEMORY[0x1CCA5CD70](0x6F6D20646E61202CLL, 0xEA00000000006572);
  sub_1C6FB0D6C();
  v8 = *(*a1 + 16);
  sub_1C6FB1594();
  v9 = *a1;
  *(v9 + 16) = v8 + 1;
  v10 = (v9 + (v8 << 6));
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = 0xD000000000000010;
  v10[7] = 0x80000001C75B0280;
  v10[8] = 0;
  v10[9] = 0;
  v10[10] = 0;
  v10[11] = 0xE000000000000000;
  *a1 = v9;
}

void sub_1C742E520(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (!a3 || (v5 = [v3 localIdentifier], v6 = sub_1C755068C(), v8 = v7, v5, v9 = sub_1C6FE3768(v6, v8, a3), , !v9))
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = [v3 sceneAnalysisProperties];
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  v12 = [v10 sceneAnalysisVersion];

  v13 = [objc_allocWithZone(PNAssetSafeForDisplayModelSet) initWithSceneAnalysisVersion_];
  v14 = [v13 ivsNSFWModel];
  v15 = [v14 anyNode];

  if (!v15)
  {

LABEL_19:
    v22 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x207465737341, 0xE600000000000000);
    v23 = sub_1C70CAC04(v3);
    if (v24)
    {
      v22 = v24;
    }

    else
    {
      v23 = 0;
    }

    MEMORY[0x1CCA5CD70](v23, v22);

    MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75B0200);
    [v3 curationScore];
    sub_1C7550F5C();
    MEMORY[0x1CCA5CD70](0x53205746534E090ALL, 0xEE00203A65726F63);
    sub_1C7550F5C();
    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    return;
  }

  v26 = v3;
  v16 = sub_1C6FB6304();
  v25 = v15;
  v17 = v15;
  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

LABEL_18:
      v3 = v26;
      v15 = v25;
      goto LABEL_19;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1CCA5DDD0](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v19 = *(v9 + 8 * i + 32);
    }

    v20 = v19;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v21 = [v19 extendedSceneIdentifier];
    if (v21 == [v17 identifier])
    {

      [v20 confidence];

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_1C742E888(uint64_t *a1)
{
  if (qword_1EC214108 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B8D0;
  v2 = *algn_1EC25B8D8;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Photos Quality");
  *(v6 + 63) = -18;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

uint64_t static NonInternalDiagnosticsGenerator.retrievePrompt(for:)()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  if (qword_1EC214118 != -1)
  {
    OUTLINED_FUNCTION_12_75();
  }

  sub_1C73C6860(qword_1EC25B8F0, *algn_1EC25B8F8, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1C7030CDC(v3, &qword_1EC215BD8);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
    sub_1C754DD6C();
    sub_1C75506CC();
    OUTLINED_FUNCTION_55();
    v11 = sub_1C75506AC();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v17, v18);
    (*(v6 + 8))(v10, v4);
    if (v16)
    {
      return v11;
    }
  }

  return 0x752074706D6F7250;
}

uint64_t sub_1C742ECE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974627573 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
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

uint64_t sub_1C742EE38(char a1)
{
  result = 0x656D614E656C6966;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C742EEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C742ECE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C742EEEC(uint64_t a1)
{
  v2 = sub_1C742F40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C742EF28(uint64_t a1)
{
  v2 = sub_1C742F40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NonInternalDiagnosticsFileDescriptionData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDE0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v14[5] = v1[3];
  v14[6] = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C742F40C();
  sub_1C755200C();
  v18 = 0;
  v12 = v14[7];
  sub_1C7551CCC();
  if (!v12)
  {
    v17 = 1;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551CCC();
    v16 = 2;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551C7C();
    v15 = 3;
    OUTLINED_FUNCTION_30_44();
    sub_1C7551C7C();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t NonInternalDiagnosticsFileDescriptionData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDF0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C742F40C();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  OUTLINED_FUNCTION_62_3();
  v11 = sub_1C7551BBC();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  OUTLINED_FUNCTION_62_3();
  v13 = sub_1C7551BBC();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  OUTLINED_FUNCTION_62_3();
  v25 = sub_1C7551B6C();
  v27 = v15;
  v35 = 3;
  v16 = sub_1C7551B6C();
  v18 = v17;
  (*(v7 + 8))(v10, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  v22 = v31;
  *a2 = v30;
  a2[1] = v22;
  v23 = v33;
  a2[2] = v32;
  a2[3] = v23;
  sub_1C742F460(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  return sub_1C742F498(v34);
}

unint64_t sub_1C742F40C()
{
  result = qword_1EC21BDE8;
  if (!qword_1EC21BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BDE8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NonInternalDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NonInternalDiagnosticsFileDescriptionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C742F66C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 72) >> 2) & 0x3F80 | (*(a1 + 72) >> 1) | (*(a1 + 72) >> 4) & 0xFFFFC000;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C742F6C8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 64) = 0;
      *(a1 + 72) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00003FFFFLL | ((-a2 >> 14) << 18);
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C742F754(uint64_t result, uint64_t a2)
{
  v2 = *(result + 128) & 1 | (a2 << 63);
  *(result + 72) &= 0x30101uLL;
  *(result + 128) = v2;
  return result;
}

unint64_t sub_1C742F78C()
{
  result = qword_1EC21BDF8;
  if (!qword_1EC21BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BDF8);
  }

  return result;
}

unint64_t sub_1C742F7E4()
{
  result = qword_1EC21BE00;
  if (!qword_1EC21BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE00);
  }

  return result;
}

unint64_t sub_1C742F83C()
{
  result = qword_1EC21BE08;
  if (!qword_1EC21BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE08);
  }

  return result;
}

unint64_t sub_1C742F890()
{
  result = qword_1EC21BE18;
  if (!qword_1EC21BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21BE10);
    sub_1C742F914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE18);
  }

  return result;
}

unint64_t sub_1C742F914()
{
  result = qword_1EC21BE20;
  if (!qword_1EC21BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE20);
  }

  return result;
}

uint64_t sub_1C742F968(void *a1)
{
  v1 = [a1 originalFilename];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

uint64_t sub_1C742F9CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a17 < 0)
  {

    sub_1C7318A10(a2, a3);

    sub_1C7318A10(a11, a12);
  }

  else
  {
  }
}

uint64_t sub_1C742FAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6F738F4;

  return sub_1C73A0040(a1, v4, v5, v6, (v1 + 5));
}

void OUTLINED_FUNCTION_21_59()
{

  JUMPOUT(0x1CCA5F8E0);
}

void OUTLINED_FUNCTION_40_45(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_50_31()
{

  return sub_1C755180C();
}

void *OUTLINED_FUNCTION_53_35(void *a1)
{

  return memcpy(a1, (v1 + v2), 0x78uLL);
}

uint64_t AssetCurationOutlierDetector.generatePromptBindings(with:userPrompt:traits:storyTitle:assetCurationOutlierPromptMaximumTokenCount:assetRichDescriptionByUUID:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[27] = v14;
  v9[28] = v8;
  v9[25] = a8;
  v9[26] = v13;
  v9[23] = a6;
  v9[24] = a7;
  v9[21] = a4;
  v9[22] = a5;
  v9[19] = a2;
  v9[20] = a3;
  v9[18] = a1;
  v10 = sub_1C754F38C();
  v9[29] = v10;
  v9[30] = *(v10 - 8);
  v9[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C742FD00, 0, 0);
}

uint64_t sub_1C742FD00()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 208), *(*(v0 + 208) + 24));
  sub_1C754F1CC();
  sub_1C754F2CC();
  v1 = *(v0 + 184);
  v16 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(*(v0 + 168), 1, 0);
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAA0;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 64) = 0x737469617274;
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v5;
  *(inited + 88) = v7;
  *(inited + 96) = 0x74695479726F7473;
  *(inited + 104) = 0xEA0000000000656CLL;
  *(inited + 112) = v2;
  *(inited + 120) = v1;
  sub_1C75504FC();
  sub_1C75504FC();
  *(v0 + 256) = sub_1C75504DC();
  v9 = sub_1C75504FC();
  sub_1C74303CC(v9, v16);

  v10 = swift_task_alloc();
  *(v0 + 264) = v10;
  *v10 = v0;
  v10[1] = sub_1C742FFF4;
  OUTLINED_FUNCTION_17_1();

  return sub_1C743055C(v11, v12, v13);
}

uint64_t sub_1C742FFF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {

    v7 = sub_1C74302D0;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = sub_1C7430130;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C7430130()
{
  v1 = v0[34];
  v2 = v0[32];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC80A4();
  v3 = v2;
  sub_1C754F2EC();
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[26];
  if (v1)
  {

    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1C754F1AC();
    (*(v5 + 8))(v4, v6);

    OUTLINED_FUNCTION_6_0();

    return v8();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0[26], v7[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];

    return v10(v3);
  }
}

uint64_t sub_1C74302D0()
{
  v1 = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1(*(v0 + 208), *(*(v0 + 208) + 24));
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C74303CC(unint64_t a1, uint64_t a2)
{
  v5 = v2;
  sub_1C75504FC();
  StoryPrompt.init(promptTemplate:bindings:usesCustomSystemPrompt:)(2, a1, 0, &v21);
  if (v3)
  {
    return v4;
  }

  StoryPrompt.fullyRendered()();

  v9 = static LLMWrapper.robustOverestimatedTokenCount(in:)();

  v4 = a2 - v9;
  if (!__OFSUB__(a2, v9))
  {
    v10 = sub_1C754FEEC();
    sub_1C755117C();
    v11 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_98();
      v13 = swift_slowAlloc();
      *v13 = 134218496;
      *(v13 + 4) = a2;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v4;
      _os_log_impl(&dword_1C6F5C000, v10, v5, "Asset curation outlier prompt maximum token count: %ld. Token count without asset description: %ld, remaining %ld", v13, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v14, v15, v16, v17, v18, v19, v20);
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C743055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C7430580, 0, 0);
}

uint64_t sub_1C7430580()
{
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (os_log_type_enabled(v2, v3))
  {
    v1 = v0[8];
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Processing asset rich descriptions with tokenLimit: %ld", v4, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v5 = v0[8];

  if (v5 < 1)
  {
    sub_1C7430CFC();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[6];
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v7 = *(v6 + 16);
  v0[10] = v7;
  if (!v7)
  {
LABEL_14:
    sub_1C75504FC();
    sub_1C75504FC();
    v17 = sub_1C754FEEC();
    sub_1C755117C();
    v18 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[10];
      OUTLINED_FUNCTION_98();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v35 = swift_slowAlloc();
      *v21 = 134218499;
      *(v21 + 4) = 0;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v20;

      *(v21 + 22) = 2085;
      v22 = OUTLINED_FUNCTION_0_11();
      *(v21 + 24) = sub_1C6F765A4(v22, v23, v24);
      _os_log_impl(&dword_1C6F5C000, v17, v1, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v25);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v26);
    }

    else
    {
    }

    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_20_3();

    __asm { BRAA            X3, X16 }
  }

  v8 = 0;
  while (1)
  {
    v0[13] = 0;
    v0[14] = v8;
    v0[11] = 0;
    v0[12] = 0;
    v9 = v0[7];
    v10 = v0[6] + 16 * v8;
    v0[15] = *(v10 + 32);
    v0[16] = *(v10 + 40);
    if (*(v9 + 16))
    {
      break;
    }

LABEL_9:
    if (++v8 == v7)
    {
      goto LABEL_14;
    }
  }

  sub_1C75504FC();
  v11 = OUTLINED_FUNCTION_0_11();
  v13 = sub_1C6F78124(v11, v12);
  if ((v14 & 1) == 0)
  {

    v8 = v0[14];
    v7 = v0[10];
    goto LABEL_9;
  }

  v29 = OUTLINED_FUNCTION_1_134(v13);
  OUTLINED_FUNCTION_0_179(v29);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_20_3();

  return MEMORY[0x1EEE6DFA0](v30, v31, v32);
}

uint64_t sub_1C7430874()
{
  v1 = v0[11];
  v2 = sub_1C70CDFD4(v0[15], v0[16]);
  v0[20] = v1;
  if (v1)
  {

    v4 = sub_1C7430CE4;
  }

  else
  {
    v5 = v2;
    v6 = v3;

    v0[21] = v6;
    v0[22] = v5;
    v4 = sub_1C7430934;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C7430934()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[3];
  v7 = sub_1C75507FC();
  v8 = 0xE000000000000000;
  if (v7 > 0)
  {
    v8 = 0xE100000000000000;
  }

  v0[4] = 32 * (v7 > 0);
  v0[5] = v8;
  MEMORY[0x1CCA5CD70](v2, v1);

  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](v5, v4);

  v10 = v0[4];
  v9 = v0[5];
  v11 = static LLMWrapper.robustOverestimatedTokenCount(in:)();
  if (v3)
  {

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  v12 = v11;
  v13 = static LLMWrapper.robustOverestimatedTokenCount(in:)();
  v18 = v13;
  if (__OFADD__(v13, v12))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }

  if ((v13 + v12) > v0[8])
  {

    v19 = sub_1C754FEEC();
    v20 = sub_1C755117C();
    if (os_log_type_enabled(v19, v20))
    {
      v6 = v0[8];
      OUTLINED_FUNCTION_98();
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      *(v21 + 4) = v18;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v12;
      *(v21 + 22) = 2048;
      *(v21 + 24) = v6;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Reached token limit. CurrentTokenCount: %ld + DescriptionTokenCount: %ld > %ld", v21, 0x20u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v22 = v0[12];
LABEL_13:
    sub_1C75504FC();
    sub_1C75504FC();
    v23 = sub_1C754FEEC();
    sub_1C755117C();
    v24 = OUTLINED_FUNCTION_17_59();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[10];
      OUTLINED_FUNCTION_98();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v42 = swift_slowAlloc();
      *v27 = 134218499;
      *(v27 + 4) = v22;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v26;

      *(v27 + 22) = 2085;
      v28 = OUTLINED_FUNCTION_57_0();
      *(v27 + 24) = sub_1C6F765A4(v28, v29, v30);
      _os_log_impl(&dword_1C6F5C000, v23, v6, "Processed %ld asset descriptions out of %ld: %{sensitive}s", v27, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X3, X16 }
  }

  v6 = v0[13];
  MEMORY[0x1CCA5CD70](v10, v9);

  v22 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_28;
  }

  while (1)
  {
    do
    {
      v31 = v0[14] + 1;
      if (v31 == v0[10])
      {
        goto LABEL_13;
      }

      v0[13] = v22;
      v0[14] = v31;
      v0[11] = 0;
      v0[12] = v22;
      v32 = v0[7];
      v33 = v0[6] + 16 * v31;
      v6 = *(v33 + 32);
      v0[15] = v6;
      v34 = *(v33 + 40);
      v0[16] = v34;
    }

    while (!*(v32 + 16));
    sub_1C75504FC();
    v35 = sub_1C6F78124(v6, v34);
    if (v36)
    {
      break;
    }
  }

  v39 = OUTLINED_FUNCTION_1_134(v35);
  OUTLINED_FUNCTION_0_179(v39);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

unint64_t sub_1C7430CFC()
{
  result = qword_1EC21BE30;
  if (!qword_1EC21BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21BE30);
  }

  return result;
}

uint64_t sub_1C7430D50(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C74327A8(v6);
  return sub_1C755193C();
}

id defaultTCCCollectionFetcher(photoLibrary:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for TCCCollectionFetcher();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = a1;
  result = objc_msgSendSuper2(&v8, sel_init);
  a2[3] = v4;
  a2[4] = &protocol witness table for TCCCollectionFetcher;
  *a2 = result;
  return result;
}

id TCCCollectionFetcher.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1C7430EC0()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  result = sub_1C755146C();
  qword_1EC25B940 = result;
  return result;
}

id TCCCollectionFetcher.init(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___TCCCollectionFetcher_photoLibrary] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::OpaquePointer_optional __swiftcall TCCCollectionFetcher.fetchAssetsForTCC(limit:seed:)(Swift::Int limit, NSNumber_optional seed)
{
  if (seed.value.super.super.isa)
  {
    v2 = seed.value.super.super.isa;
    v3 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  else
  {
    v69 = 0;
    MEMORY[0x1CCA5F900](&v69, 8, *&seed.is_nil);
    v3 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  }

  v4 = qword_1EC214148;
  v5 = v3;
  v6 = limit;
  if (v4 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v7 = qword_1EC25B940;
    type metadata accessor for PerformanceMeasure();
    swift_allocObject();
    v8 = v7;
    PerformanceMeasure.init(name:log:)();
    v69 = MEMORY[0x1E69E7CC0];
    swift_allocObject();
    PerformanceMeasure.init(name:log:)();
    v9 = sub_1C74317D0(v6, v5);

    sub_1C6F85170();
    v10 = sub_1C75504FC();
    sub_1C6FD242C(v10);
    v11 = v69;
    if (sub_1C6FB6304() == v6)
    {
      break;
    }

    v65 = v8;
    v15 = sub_1C6FB6304();
    v6 = 0;
    v5 = (v9 & 0xC000000000000001);
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 == v6)
      {
        sub_1C6FD2568(v16);
        swift_allocObject();
        v27 = v65;
        PerformanceMeasure.init(name:log:)();
        v28 = sub_1C6FB6304();
        v30 = __OFSUB__(limit, v28);
        v31 = (limit - v28);
        if (v30)
        {
          __break(1u);
        }

        else
        {
          OUTLINED_FUNCTION_0_180();
          v34 = sub_1C7431C04(v32, v33);
          sub_1C6F85170();
          v35 = sub_1C75504FC();
          sub_1C6FD242C(v35);
          v67 = v69;
          if (sub_1C6FB6304() == limit)
          {

            sub_1C6F85170();
            v36 = sub_1C755117C();
            if (os_log_type_enabled(v27, v36))
            {
              sub_1C75504FC();
              sub_1C75504FC();
              v37 = swift_slowAlloc();
              *v37 = 134218240;
              v38 = sub_1C6FB6304();

              *(v37 + 4) = v38;

              *(v37 + 12) = 2048;
              v39 = sub_1C6FB6304();

              *(v37 + 14) = v39;

              _os_log_impl(&dword_1C6F5C000, v27, v36, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets, and %ld safe assets", v37, 0x16u);
              MEMORY[0x1CCA5F8E0](v37, -1, -1);
            }

            else
            {
            }

            v40 = sub_1C7259820(v9 & 0xC000000000000001, v67);

            goto LABEL_47;
          }

          v64 = v27;
          v41 = sub_1C6FB6304();
          v42 = 0;
          v5 = (v34 & 0xC000000000000001);
          v6 = v34 & 0xFFFFFFFFFFFFFF8;
          v66 = MEMORY[0x1E69E7CC0];
          while (v41 != v42)
          {
            if (v5)
            {
              v43 = MEMORY[0x1CCA5DDD0](v42, v34);
            }

            else
            {
              if (v42 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_51;
              }

              v43 = *(v34 + 8 * v42 + 32);
            }

            v44 = v43;
            v45 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              goto LABEL_50;
            }

            v46 = sub_1C70CAC04(v43);
            v48 = v47;

            ++v42;
            if (v48)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v66 = v51;
              }

              v49 = *(v66 + 16);
              if (v49 >= *(v66 + 24) >> 1)
              {
                sub_1C6FB1814();
                v66 = v52;
              }

              *(v66 + 16) = v49 + 1;
              v50 = v66 + 16 * v49;
              *(v50 + 32) = v46;
              *(v50 + 40) = v48;
              v42 = v45;
            }
          }

          sub_1C6FD2568(v66);
          swift_allocObject();
          v53 = v64;
          PerformanceMeasure.init(name:log:)();
          v54 = sub_1C6FB6304();
          v30 = __OFSUB__(limit, v54);
          v31 = (limit - v54);
          if (!v30)
          {
            OUTLINED_FUNCTION_0_180();
            sub_1C74321CC(v55, v56, v57);

            sub_1C6F85170();
            v58 = sub_1C75504FC();
            sub_1C6FD242C(v58);
            sub_1C6F85170();
            v59 = sub_1C755117C();
            if (os_log_type_enabled(v53, v59))
            {
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v60 = swift_slowAlloc();
              *v60 = 134218496;
              v61 = sub_1C6FB6304();

              *(v60 + 4) = v61;

              *(v60 + 12) = 2048;
              v62 = sub_1C6FB6304();

              *(v60 + 14) = v62;

              *(v60 + 22) = 2048;
              v63 = sub_1C6FB6304();

              *(v60 + 24) = v63;

              _os_log_impl(&dword_1C6F5C000, v53, v59, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets, %ld safe assets, and %ld random ones", v60, 0x20u);
              MEMORY[0x1CCA5F8E0](v60, -1, -1);
            }

            else
            {
            }

            v40 = sub_1C7259820(v34 & 0xC000000000000001, v69);

            goto LABEL_47;
          }
        }

        __break(1u);
        goto LABEL_55;
      }

      if (v5)
      {
        v17 = MEMORY[0x1CCA5DDD0](v6, v9);
      }

      else
      {
        if (v6 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v17 = *(v9 + 8 * v6 + 32);
      }

      v18 = v17;
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v20 = sub_1C70CAC04(v17);
      v22 = v21;

      ++v6;
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v16 = v25;
        }

        v23 = *(v16 + 16);
        if (v23 >= *(v16 + 24) >> 1)
        {
          sub_1C6FB1814();
          v16 = v26;
        }

        *(v16 + 16) = v23 + 1;
        v24 = v16 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v22;
        v6 = v19;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  sub_1C6F85170();
  v12 = sub_1C755117C();
  if (os_log_type_enabled(v8, v12))
  {
    sub_1C75504FC();
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_1C6FB6304();

    *(v13 + 4) = v14;

    _os_log_impl(&dword_1C6F5C000, v8, v12, "[TCCCollectionFetcher] Returned with a set of %ld suggestion key assets", v13, 0xCu);
    MEMORY[0x1CCA5F8E0](v13, -1, -1);
  }

  else
  {
  }

  v40 = sub_1C7259820(v5, v11);
LABEL_47:

  v31 = v40;
LABEL_55:
  result.value._rawValue = v31;
  result.is_nil = v29;
  return result;
}

uint64_t sub_1C74317D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary);
  v6 = [v5 librarySpecificFetchOptions];
  v7 = v6;
  if (a1 <= 200)
  {
    v8 = 200;
  }

  else
  {
    v8 = a1;
  }

  [v6 setFetchLimit_];
  v9 = [objc_opt_self() fetchAllFeaturedStateEnabledSuggestionsWithOptions_];
  if ([v9 count])
  {
    v10 = [v5 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C7565670;
    v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v11 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
    sub_1C71F8834(v11, v10);
    [v10 setIncludeGuestAssets_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C755BAB0;
    *(v13 + 32) = sub_1C755068C();
    *(v13 + 40) = v14;
    sub_1C6FCA0EC(v13, v10);
    v15 = [objc_opt_self() fetchKeyAssetForEachSuggestion:v9 options:v10];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 fetchedObjects];

      if (v17)
      {
        v18 = sub_1C6F65BE8(0, &qword_1EDD0FA70);
        v19 = sub_1C7550B5C();

        if (sub_1C6FB6304() >= 1)
        {
          v20 = sub_1C7259820(a2, v19);

          v21 = sub_1C6FB6304();
          if (v21 < a1)
          {
            a1 = v21;
          }

          v22 = a1 - 1;
          if (__OFSUB__(a1, 1))
          {
            __break(1u);
          }

          else if ((v22 & 0x8000000000000000) == 0)
          {
            v23 = a1;
            if (!__OFADD__(v22, 1))
            {
              sub_1C70359E0(0, v20);
              sub_1C70359E0(a1, v20);
              if ((v20 & 0xC000000000000001) != 0)
              {
                if (a1 < 0)
                {
                  goto LABEL_41;
                }

                sub_1C75504FC();
                v24 = 0;
                do
                {
                  v25 = v24 + 1;
                  sub_1C755189C();
                  v24 = v25;
                }

                while (a1 != v25);
              }

              else
              {
                sub_1C75504FC();
              }

              if (!(v20 >> 62))
              {
                if ((a1 & 0x8000000000000000) == 0)
                {

                  a1 = 0;
                  v18 = v20 & 0xFFFFFFFFFFFFFF8;
                  v20 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
                  v23 = (2 * v23) | 1;
                  if ((v23 & 1) == 0)
                  {
LABEL_28:
                    sub_1C739C610(v18, v20, a1, v23);
                    v26 = v28;
                    swift_unknownObjectRelease();

                    goto LABEL_22;
                  }

LABEL_33:
                  sub_1C7551DEC();
                  swift_unknownObjectRetain_n();
                  v32 = swift_dynamicCastClass();
                  if (!v32)
                  {
                    swift_unknownObjectRelease();
                    v32 = MEMORY[0x1E69E7CC0];
                  }

                  v33 = *(v32 + 16);

                  if (!__OFSUB__(v23 >> 1, a1))
                  {
                    if (v33 == (v23 >> 1) - a1)
                    {
                      v26 = swift_dynamicCastClass();

                      swift_unknownObjectRelease();
                      if (!v26)
                      {
                        swift_unknownObjectRelease();
                        v26 = MEMORY[0x1E69E7CC0];
                      }

                      swift_unknownObjectRelease();
                      goto LABEL_19;
                    }

LABEL_43:
                    swift_unknownObjectRelease_n();
                    goto LABEL_28;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

                __break(1u);
LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_32:

              v18 = sub_1C7551ADC();
              a1 = v29;
              v23 = v30;
              v20 = v31;

              if ((v23 & 1) == 0)
              {
                goto LABEL_28;
              }

              goto LABEL_33;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v26 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v7 = v9;
    goto LABEL_23;
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v10 = v9;
LABEL_23:

  return v26;
}

uint64_t sub_1C7431C04(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = [*(v2 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C7565670;
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v5 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  sub_1C71F8834(v5, v4);
  [v4 setIncludeGuestAssets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755BAB0;
  *(v7 + 32) = sub_1C755068C();
  *(v7 + 40) = v8;
  sub_1C6FCA0EC(v7, v4);
  if (a1 <= 200)
  {
    v9 = 200;
  }

  else
  {
    v9 = a1;
  }

  [v4 setFetchLimit_];
  v10 = [objc_opt_self() fetchAssetsWithOptions_];
  v11 = [v10 fetchedObjects];

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = sub_1C6F65BE8(0, &qword_1EDD0FA70);
  sub_1C7550B5C();

  if (sub_1C6FB6304() < 1)
  {

LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1C75504FC();
  v44[0] = sub_1C71CC828(v13);
  sub_1C7430D50(v44);

  v14 = v44[0];
  v15 = sub_1C6FB6304();
  if (v15 >= a1)
  {
    v16 = a1;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  i = v16;
  if (__OFADD__(v17, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1C70359E0(0, v14);
  sub_1C70359E0(v16, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    sub_1C75504FC();
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      sub_1C755189C();
      v19 = v20;
    }

    while (v16 != v20);
  }

  else
  {
    sub_1C75504FC();
  }

  v40 = v12;
  v41 = v4;
  if ((v14 & 0x8000000000000000) == 0 && (v14 & 0x4000000000000000) == 0)
  {
    if ((v16 & 0x8000000000000000) == 0)
    {

      a1 = 0;
      v12 = v14 + 32;
      i = (2 * v16) | 1;
      goto LABEL_30;
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_29:

  v23 = sub_1C7551ADC();
  v12 = v24;
  a1 = v25;
  i = v26;

  v14 = v23;
  if ((i & 1) == 0)
  {
LABEL_25:
    sub_1C739C610(v14, v12, a1, i);
    a1 = v22;
    goto LABEL_36;
  }

LABEL_30:
  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(i >> 1, a1))
  {
    goto LABEL_59;
  }

  if (v28 != (i >> 1) - a1)
  {
LABEL_60:
    swift_unknownObjectRelease_n();
    goto LABEL_25;
  }

  a1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (a1)
  {
    goto LABEL_37;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_36:
  swift_unknownObjectRelease();
LABEL_37:
  v45 = MEMORY[0x1E69E7CC0];
  v12 = sub_1C6FB6304();
  for (i = 0; v12 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1CCA5DDD0](i, a1);
    }

    else
    {
      if (i >= *(a1 + 16))
      {
        goto LABEL_56;
      }

      v29 = *(a1 + 8 * i + 32);
    }

    v30 = v29;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v31 = [v29 sceneAnalysisProperties];
    if (!v31)
    {
      goto LABEL_47;
    }

    v14 = v31;
    v32 = [v31 sceneAnalysisVersion];

    if (v32 < 32)
    {
      goto LABEL_47;
    }

    v33 = sub_1C70CAC04(v30);
    if (!v34)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v14 = v34;
    v43 = &v40;
    v44[0] = v33;
    v44[1] = v34;
    MEMORY[0x1EEE9AC00](v33);
    *(&v40 - 2) = v44;
    v35 = sub_1C70735F4();

    if (!v35)
    {
      v14 = &v45;
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
LABEL_47:
    }
  }

  if (sub_1C6FB6304())
  {
    v36 = objc_opt_self();
    v37 = sub_1C7550B3C();

    v38 = [v36 safeAssetsForWidgetDisplay_];

    v21 = sub_1C7550B5C();
    return v21;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C74321CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [*(v3 + OBJC_IVAR___TCCCollectionFetcher_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7565670;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 32) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 0);
  sub_1C71F8834(v8, v7);
  [v7 setIncludeGuestAssets_];
  if (a1 <= 200)
  {
    v10 = 200;
  }

  else
  {
    v10 = a1;
  }

  [v7 setFetchLimit_];
  if (*(a2 + 16))
  {
    sub_1C6F65BE8(0, &qword_1EDD0FAD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C75604F0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C6F6D524();
    *(v11 + 32) = 1684632949;
    *(v11 + 40) = 0xE400000000000000;
    *(v11 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *(v11 + 104) = sub_1C71D0360();
    *(v11 + 72) = a2;
    sub_1C75504FC();
    v12 = sub_1C755112C();
    [v7 setPredicate_];
  }

  v13 = [objc_opt_self() fetchAssetsWithOptions_];
  v14 = [v13 fetchedObjects];

  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v16 = sub_1C7550B5C();

  if (sub_1C6FB6304() < 1)
  {

LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1C7259820(a3, v16);

  v18 = sub_1C6FB6304();
  if (v18 < a1)
  {
    a1 = v18;
  }

  v19 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v19 < 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = a1;
  if (__OFADD__(v19, 1))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1C70359E0(0, v17);
  sub_1C70359E0(a1, v17);
  if ((v17 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_1C75504FC();
    v21 = 0;
    do
    {
      v14 = v21 + 1;
      sub_1C755189C();
      v21 = v14;
    }

    while (a1 != v14);
  }

  else
  {
    sub_1C75504FC();
  }

  if (v17 >> 62)
  {
LABEL_28:

    v15 = sub_1C7551ADC();
    v14 = v24;
    a1 = v25;
    v20 = v26;

    if ((v20 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  a1 = 0;
  v15 = v17 & 0xFFFFFFFFFFFFFF8;
  v14 = ((v17 & 0xFFFFFFFFFFFFFF8) + 32);
  v20 = (2 * v20) | 1;
  if ((v20 & 1) == 0)
  {
LABEL_24:
    sub_1C739C610(v15, v14, a1, v20);
    v22 = v23;
    swift_unknownObjectRelease();

    return v22;
  }

LABEL_29:
  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v20 >> 1, a1))
  {
    goto LABEL_39;
  }

  if (v28 != (v20 >> 1) - a1)
  {
LABEL_40:
    swift_unknownObjectRelease_n();
    goto LABEL_24;
  }

  v22 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRelease();
  return v22;
}

id TCCCollectionFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TCCCollectionFetcher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C74327A8(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D480(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C743297C(v8, v9, a1, v5);
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
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C7432888(0, v3, 1, a1);
  }
}

void sub_1C7432888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 curationScore];
        v15 = v14;
        [v13 curationScore];
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C743297C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v116;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v99 = v6 + 16;
      v100 = *(v6 + 2);
      while (v100 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v101 = v6;
        v102 = &v6[16 * v100];
        v103 = *v102;
        v104 = &v99[2 * v100];
        v105 = *(v104 + 1);
        sub_1C7432FDC((*a3 + 8 * *v102), (*a3 + 8 * *v104), (*a3 + 8 * v105), v114);
        if (v5)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_119;
        }

        if (v100 - 2 >= *v99)
        {
          goto LABEL_120;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v106 = *v99 - v100;
        if (*v99 < v100)
        {
          goto LABEL_121;
        }

        v100 = *v99 - 1;
        sub_1C7423CF4(v104 + 16, v106, v104);
        *v99 = v100;
        v6 = v101;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1C7420830();
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_clsSceneClassifications;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v108 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = *(*a3 + 8 * v5);
      v15 = v13;
      [v14 v7[53]];
      v17 = v16;
      [v15 v7[53]];
      v19 = v18;

      v111 = v9;
      v20 = v9 + 2;
      while (1)
      {
        v21 = v20;
        if (++v5 >= v4)
        {
          break;
        }

        v22 = *(v12 - 1);
        v23 = *v12;
        v24 = v22;
        [v23 v7[53]];
        v26 = v25;
        [v24 v7[53]];
        v28 = v27;

        ++v12;
        v20 = v21 + 1;
        if (v19 < v17 == v28 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v19 >= v17)
      {
        v6 = v108;
        v8 = v111;
      }

      else
      {
        v8 = v111;
        if (v5 < v111)
        {
          goto LABEL_125;
        }

        if (v111 >= v5)
        {
          v6 = v108;
        }

        else
        {
          if (v4 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v4;
          }

          v30 = 8 * v29 - 8;
          v31 = v5;
          v32 = v111;
          v6 = v108;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v11);
              *(v33 + v11) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v11 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v5 < v35)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v6 = v97;
    }

    v52 = *(v6 + 2);
    v53 = v52 + 1;
    if (v52 >= *(v6 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v6 = v98;
    }

    *(v6 + 2) = v53;
    v54 = v6 + 32;
    v55 = &v6[16 * v52 + 32];
    *v55 = v8;
    *(v55 + 1) = v5;
    v114 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v52)
    {
      v113 = v5;
      while (1)
      {
        v56 = v53 - 1;
        v57 = &v54[16 * v53 - 16];
        v58 = &v6[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v6 + 4);
          v60 = *(v6 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_60:
          if (v62)
          {
            goto LABEL_110;
          }

          v74 = *v58;
          v73 = *(v58 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_113;
          }

          v78 = *(v57 + 1);
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_118;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v53 < 2)
        {
          goto LABEL_112;
        }

        v81 = *v58;
        v80 = *(v58 + 1);
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_75:
        if (v77)
        {
          goto LABEL_115;
        }

        v83 = *v57;
        v82 = *(v57 + 1);
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_117;
        }

        if (v84 < v76)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v56 - 1 >= v53)
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v88 = &v54[16 * v56 - 16];
        v89 = *v88;
        v90 = v56;
        v91 = &v54[16 * v56];
        v92 = *(v91 + 1);
        sub_1C7432FDC((*a3 + 8 * *v88), (*a3 + 8 * *v91), (*a3 + 8 * v92), v114);
        if (v116)
        {
          goto LABEL_103;
        }

        if (v92 < v89)
        {
          goto LABEL_105;
        }

        v5 = v54;
        v93 = v7;
        v94 = v6;
        v95 = *(v6 + 2);
        if (v90 > v95)
        {
          goto LABEL_106;
        }

        *v88 = v89;
        *(v88 + 1) = v92;
        if (v90 >= v95)
        {
          goto LABEL_107;
        }

        v53 = v95 - 1;
        sub_1C7423CF4(v91 + 16, v95 - 1 - v90, v91);
        *(v94 + 2) = v95 - 1;
        v96 = v95 > 2;
        v6 = v94;
        v7 = v93;
        v54 = v5;
        v5 = v113;
        if (!v96)
        {
          goto LABEL_89;
        }
      }

      v63 = &v54[16 * v53];
      v64 = *(v63 - 8);
      v65 = *(v63 - 7);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_108;
      }

      v68 = *(v63 - 6);
      v67 = *(v63 - 5);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_109;
      }

      v70 = *(v58 + 1);
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_111;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_114;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = *(v57 + 1);
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_122;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v36 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v36)
  {
    goto LABEL_39;
  }

  v109 = v6;
  v37 = *a3;
  v38 = *a3 + 8 * v5 - 8;
  v112 = v8;
  v114 = v36;
  v39 = v8 - v5;
LABEL_32:
  v40 = *(v37 + 8 * v5);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    [v44 v7[53]];
    v47 = v46;
    [v45 v7[53]];
    v49 = v48;

    if (v49 >= v47)
    {
LABEL_37:
      ++v5;
      v38 += 8;
      --v39;
      if (v5 == v114)
      {
        v5 = v114;
        v6 = v109;
        v8 = v112;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
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

uint64_t sub_1C7432FDC(void **a1, id *a2, id *a3, void **a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1);
    v11 = &a4[v8];
    while (1)
    {
      if (a4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *a4;
      v14 = *v6;
      v15 = v13;
      [v14 curationScore];
      v17 = v16;
      [v15 curationScore];
      v19 = v18;

      if (v19 >= v17)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v20 = a4;
    v21 = v7 == a4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2);
  v11 = &a4[v9];
  v38 = a4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > a4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 curationScore];
    v30 = v29;
    [v28 curationScore];
    v32 = v31;

    v33 = v5 + 1;
    if (v32 < v30)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      a4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    a4 = v38;
  }

LABEL_28:
  v35 = v11 - a4;
  if (v6 != a4 || v6 >= &a4[v35])
  {
    memmove(v6, a4, 8 * v35);
  }

  return 1;
}

void sub_1C7433254(uint64_t a1, void *a2, void *a3)
{
  if (qword_1EDD0A0E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EDD0A0E8);
  v7 = sub_1C754FEEC();
  v8 = sub_1C75511BC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C6F5C000, v7, v8, "Sending memory creation event analytics", v9, 2u);
    MEMORY[0x1CCA5F8E0](v9, -1, -1);
  }

  sub_1C7433474(a1, a2, a3);
  v10 = sub_1C754FEEC();
  v11 = sub_1C75511BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "Sending music curation event analytics", v12, 2u);
    MEMORY[0x1CCA5F8E0](v12, -1, -1);
  }

  static MusicCurationAnalyticsSender.sendMusicCurationEventAnalytics(_:performanceMetricsReporter:error:)(a1, a2);
}

uint64_t sub_1C74333F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A0E8);
  __swift_project_value_buffer(v0, qword_1EDD0A0E8);
  return sub_1C754FEFC();
}

void sub_1C7433474(uint64_t a1, void *a2, void *a3)
{
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(__dst);
  sub_1C710E08C(__dst[0], &unk_1F46A86B8);
  sub_1C755104C();
  v6 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  *__dst = v6;
  sub_1C6FC7E40();
  v7 = *__dst;
  static LLMDefaults.backendEnvironment.getter(&v55);
  sub_1C710E258(v55, &unk_1F46A86E0);
  sub_1C755104C();
  swift_isUniquelyReferenced_nonNull_native();
  *__dst = v7;
  sub_1C6FC7E40();
  v8 = *__dst;
  v9 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
  swift_beginAccess();

  v10 = sub_1C7462320();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v8;
  sub_1C7241D3C(v10, sub_1C7241FE4, 0, isUniquelyReferenced_nonNull_native, __dst);
  v12 = *__dst;

  v13 = sub_1C717B4E0();

  v14 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v12;
  sub_1C7241D3C(v13, sub_1C7241FE4, 0, v14, __dst);
  v15 = *__dst;

  v16 = sub_1C7031C84();

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v15;
  sub_1C7241D3C(v16, sub_1C7241FE4, 0, v17, __dst);
  v18 = *__dst;
  swift_beginAccess();

  v19 = sub_1C717C5B0();

  v20 = swift_isUniquelyReferenced_nonNull_native();
  *__dst = v18;
  sub_1C7241D3C(v19, sub_1C7241FE4, 0, v20, __dst);
  v21 = *__dst;
  StoryGenerationDiagnosticContext.generationSummary.getter(__src);
  v22 = sub_1C70AD0EC();
  memcpy(__dst, __src, 0xF0uLL);
  sub_1C7169188(__dst);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  __src[0] = v21;
  sub_1C7241D3C(v22, sub_1C7241FE4, 0, v23, __src);
  v24 = __src[0];
  v25 = *(v9 + 40);
  v26 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_generationEntryPoint;
  swift_beginAccess();
  v27 = *(v25 + v26);
  v28 = 1;
  switch(v27)
  {
    case 5:
      break;
    default:
      v28 = sub_1C7551DBC();
      break;
  }

  if (a3)
  {
    v29 = a3;

    v30 = sub_1C717D808(a3, v28 & 1);
  }

  else
  {

    v30 = sub_1C717D780();
  }

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v52 = v24;
  sub_1C7241D3C(v30, sub_1C7241FE4, 0, v31, &v52);
  v32 = v52;
  v33 = a2[3];
  v34 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v33);
  v35 = (*(v34 + 8))(v33, v34);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v52 = v32;
  sub_1C7241D3C(v35, sub_1C7241FE4, 0, v36, &v52);
  v37 = v52;

  v38 = sub_1C6FF6F88();

  v39 = swift_isUniquelyReferenced_nonNull_native();
  v52 = v37;
  sub_1C7241D3C(v38, sub_1C7241FE4, 0, v39, &v52);
  v40 = objc_opt_self();
  v41 = sub_1C755065C();
  sub_1C6FEAF80();
  sub_1C75504FC();
  v42 = sub_1C755048C();

  [v40 sendEvent:v41 withPayload:v42];

  if (qword_1EDD0A0E0 != -1)
  {
    swift_once();
  }

  v43 = sub_1C754FF1C();
  __swift_project_value_buffer(v43, qword_1EDD0A0E8);
  v44 = sub_1C754FEEC();
  v45 = sub_1C75511BC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v52 = v47;
    *v46 = 136315394;
    *(v46 + 4) = sub_1C6F765A4(0xD000000000000028, 0x80000001C75B0430, &v52);
    *(v46 + 12) = 2080;

    v48 = sub_1C75504BC();
    v50 = v49;

    v51 = sub_1C6F765A4(v48, v50, &v52);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_1C6F5C000, v44, v45, "Sent %s with payload: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v47, -1, -1);
    MEMORY[0x1CCA5F8E0](v46, -1, -1);
  }
}

void sub_1C7433C74(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v35 = v38;
    v4 = sub_1C70D4544(v1);
    v6 = v5;
    v7 = 0;
    v8 = v1 + 64;
    v29 = v5;
    v30 = v2;
    v28 = v1 + 72;
    v31 = v1 + 64;
    v32 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v9 = v4 >> 6;
      if ((*(v8 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_46;
      }

      v33 = v3;
      v34 = v7 + 1;
      v10 = *(*(v1 + 48) + v4);
      sub_1C75504FC();
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(v10)
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_25;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_25:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_20;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 10:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 11:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_16:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 13:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 14:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 15:
          v12 = 1685024621;
          break;
        case 16:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_20:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 17:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 18:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 19:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v36 = v12;
      v37 = v11;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v16 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v16);

      v17 = v35;
      v18 = *(v35 + 16);
      if (v18 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v17 = v35;
      }

      *(v17 + 16) = v18 + 1;
      v19 = v17 + 16 * v18;
      *(v19 + 32) = v36;
      *(v19 + 40) = v37;
      v1 = v32;
      v20 = 1 << *(v32 + 32);
      if (v4 >= v20)
      {
        goto LABEL_47;
      }

      v8 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v4)) == 0)
      {
        goto LABEL_48;
      }

      v35 = v17;
      if (*(v32 + 36) != v6)
      {
        goto LABEL_49;
      }

      v22 = v21 & (-2 << (v4 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C6F9ED50(v4, v6, v33 & 1);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v4, v6, v33 & 1);
      }

LABEL_42:
      v3 = 0;
      v4 = v20;
      v6 = v29;
      v7 = v34;
      if (v34 == v30)
      {
        return;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }
}

uint64_t QueryAssetsRetrievalProcessor.performPublicEventQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1248) = v4;
  *(v5 + 1240) = a4;
  *(v5 + 1232) = a3;
  *(v5 + 1224) = a1;
  v7 = sub_1C754F14C();
  *(v5 + 1256) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v5 + 1264) = v8;
  *(v5 + 1272) = swift_task_alloc();
  *(v5 + 1280) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216360);
  *(v5 + 1288) = swift_task_alloc();
  *(v5 + 1296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328);
  *(v5 + 1304) = swift_task_alloc();
  *(v5 + 1312) = swift_task_alloc();
  *(v5 + 1320) = swift_task_alloc();
  *(v5 + 1328) = swift_task_alloc();
  *(v5 + 1336) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE40);
  *(v5 + 1344) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v5 + 1352) = v10;
  *(v5 + 1360) = swift_task_alloc();
  v11 = sub_1C754F38C();
  *(v5 + 1368) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v5 + 1376) = v12;
  *(v5 + 1384) = swift_task_alloc();
  *(v5 + 1392) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C7434364, 0, 0);
}

void sub_1C7434364()
{
  v278 = v0;
  v275 = v0 + 1096;
  v272 = v0 + 1128;
  v242 = (v0 + 1192);
  v243 = (v0 + 1160);
  v233 = (v0 + 1208);
  v1 = *(v0 + 1232);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = v0;
  sub_1C754F15C();
  *(v0 + 1208) = MEMORY[0x1E69E7CD0];
  static StoryGenerationUtilities.musicRelatedQueryTokens(in:)();
  v4 = v3;
  v5 = 0;
  v6 = *(v3 + 16);
  v7 = v3 - 48;
  v8 = MEMORY[0x1E69E7CC0];
  v274 = v2;
LABEL_2:
  v9 = v7 + 120 * v5;
  while (v6 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_187;
    }

    v10 = (v9 + 120);
    ++v5;
    v11 = *(v9 + 136);
    v9 += 120;
    if ((v11 & 1) == 0)
    {
      v268 = *v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1CD0();
        v8 = v13;
      }

      v12 = *(v8 + 16);
      if (v12 >= *(v8 + 24) >> 1)
      {
        sub_1C6FB1CD0();
        v8 = v14;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 16 * v12 + 32) = v268;
      v2 = v274;
      goto LABEL_2;
    }
  }

  v15 = v2[174];
  v262 = *(v15 + 16);
  v232 = v8;
  if (v262)
  {
    v229 = v4;
    v16 = 0;
    v231 = 0;
    v235 = 0;
    v246 = 0;
    v244 = 0;
    v17 = 0;
    v255 = v2[160];
    v18 = v2[158];
    v259 = v15 + 32;
    v240 = (v2[169] + 8);
    v241 = "cEventQueryTokens";
    HIDWORD(v239) = *MEMORY[0x1E69C17C0];
    v252 = (v18 + 104);
    v234 = (v18 + 32);
    v238 = (v18 + 8);
    HIDWORD(v236) = *MEMORY[0x1E69C17B0];
    v19 = MEMORY[0x1E69E7CC8];
    v230 = v8 + 40;
    v245 = MEMORY[0x1E69E7CC8];
    v237 = v2[174];
    while (1)
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_189;
      }

      memcpy(v2 + 2, (v259 + 120 * v17), 0x78uLL);
      sub_1C6FCA6E4((v2 + 2), (v2 + 17));
      if (qword_1EDD0E0C8 != -1)
      {
        swift_once();
      }

      TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
      v21 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1C755BAB0;
      memcpy((v22 + 32), v2 + 2, 0x78uLL);
      *(swift_task_alloc() + 16) = v21;
      sub_1C6FCA6E4((v2 + 2), (v2 + 32));
      v23 = sub_1C707351C();
      swift_setDeallocating();
      sub_1C6FDC98C();

      if (!v23)
      {
        sub_1C6FDD548((v2 + 2));
        goto LABEL_79;
      }

      v265 = v19;
      v269 = v17;
      v24 = v2[170];
      v25 = v2[168];
      v26 = v2[166];
      v27 = v2[162];
      v248 = v2[167];
      v249 = v2[157];
      v28 = *(v2 + 2);
      *v243 = v28;
      *v242 = v28;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE48);
      sub_1C754EE3C();
      v29 = sub_1C74378EC();
      v227 = sub_1C7437940();
      v228 = sub_1C7099594(&qword_1EC21BE60, &qword_1EC21BE40);
      v226 = v29;
      v2 = v274;
      sub_1C75510DC();
      (*v240)(v24, v25);
      sub_1C71691DC(v243);
      sub_1C70DF0F4();
      v247 = sub_1C7073450();
      memcpy(v277, v274 + 2, 0x78uLL);
      v30 = v248;
      QueryToken.publicEvent()();
      v31 = *v252;
      (*v252)(v26, HIDWORD(v239), v249);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v249);
      v32 = *(v255 + 48);
      sub_1C7437994(v248, v27);
      sub_1C7437994(v26, v27 + v32);
      if (__swift_getEnumTagSinglePayload(v27, 1, v249) == 1)
      {
        break;
      }

      v34 = v274[157];
      sub_1C7437994(v274[162], v274[165]);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27 + v32, 1, v34);
      v36 = v274[166];
      v37 = v274[165];
      if (EnumTagSinglePayload == 1)
      {
        sub_1C7030CDC(v274[166], &qword_1EC216328);
        v38 = OUTLINED_FUNCTION_16_65();
        v39(v38);
LABEL_23:
        sub_1C7030CDC(v274[162], &qword_1EC216360);
        goto LABEL_48;
      }

      v250 = v16;
      v40 = v274[162];
      v41 = v274[159];
      v42 = v274[157];
      (*v234)(v41, v27 + v32, v42);
      sub_1C7437A04();
      v43 = sub_1C755063C();
      v44 = *v238;
      v45 = v41;
      v2 = v274;
      (*v238)(v45, v42);
      v30 = &unk_1C7575BE0;
      sub_1C7030CDC(v36, &qword_1EC216328);
      v44(v37, v42);
      v46 = v40;
      v16 = v250;
      sub_1C7030CDC(v46, &qword_1EC216328);
      v17 = v269;
      if (v43)
      {
        goto LABEL_25;
      }

LABEL_48:
      v59 = v2[167];
      v60 = v2[164];
      v61 = v2[161];
      v62 = v2[157];
      v31(v60, HIDWORD(v236), v62);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v62);
      v63 = *(v255 + 48);
      sub_1C7437994(v59, v61);
      sub_1C7437994(v60, v61 + v63);
      if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
      {
        v64 = v2[157];
        sub_1C7030CDC(v2[164], &qword_1EC216328);
        v65 = v265;
        if (__swift_getEnumTagSinglePayload(v61 + v63, 1, v64) != 1)
        {
          goto LABEL_53;
        }

        sub_1C7030CDC(v2[161], &qword_1EC216328);
      }

      else
      {
        v66 = v2[157];
        sub_1C7437994(v2[161], v2[163]);
        v67 = __swift_getEnumTagSinglePayload(v61 + v63, 1, v66);
        v68 = v2[164];
        v69 = v2[163];
        v65 = v265;
        if (v67 == 1)
        {
          sub_1C7030CDC(v2[164], &qword_1EC216328);
          v70 = OUTLINED_FUNCTION_16_65();
          v71(v70);
LABEL_53:
          sub_1C7030CDC(v2[161], &qword_1EC216360);
          v72 = v246;
LABEL_54:
          sub_1C6F6E5B4(v72);
          swift_isUniquelyReferenced_nonNull_native();
          v277[0] = v65;
          sub_1C6FC2A70();
          OUTLINED_FUNCTION_10_77();
          if (v50)
          {
            goto LABEL_192;
          }

          v75 = v73;
          v76 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
          v77 = sub_1C7551A2C();
          v19 = v277[0];
          if (v77)
          {
            v78 = OUTLINED_FUNCTION_15_78();
            if ((v76 & 1) != (v79 & 1))
            {
              goto LABEL_131;
            }

            v75 = v78;
            if (v76)
            {
              goto LABEL_61;
            }

LABEL_60:
            sub_1C6FCABD4(v75, v2 + 2, MEMORY[0x1E69E7CC0], v19);
            sub_1C6FCA6E4((v2 + 2), (v2 + 47));
          }

          else
          {
            v2 = v274;
            if ((v76 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

LABEL_61:
          v80 = v247;
          sub_1C6FD9B98();
          sub_1C6F6E5B4(v244);
          swift_isUniquelyReferenced_nonNull_native();
          v277[0] = v245;
          v81 = sub_1C6FC2A70();
          v83 = v82;
          if (__OFADD__(*(v245 + 16), (v82 & 1) == 0))
          {
            goto LABEL_193;
          }

          v84 = v81;
          v85 = sub_1C7551A2C();
          v86 = v277[0];
          if (v85)
          {
            v87 = sub_1C6FC2A70();
            if ((v83 & 1) != (v88 & 1))
            {
              goto LABEL_131;
            }

            v84 = v87;
          }

          if (v83)
          {
            sub_1C6FDD548((v2 + 2));
          }

          else
          {
            sub_1C6FCABD4(v84, v2 + 2, MEMORY[0x1E69E7CC0], v86);
          }

          v89 = v2[167];
          v245 = v86;
          sub_1C6FD9B98();
          sub_1C7030CDC(v89, &qword_1EC216328);
          v244 = sub_1C6FC0A88;
          v246 = sub_1C6FC0A88;
          v15 = v237;
          v17 = v269;
          goto LABEL_79;
        }

        v251 = v2[161];
        v90 = v274[159];
        v91 = v274[157];
        (*v234)(v90, v61 + v63, v91);
        sub_1C7437A04();
        v92 = sub_1C755063C();
        v93 = *v238;
        v94 = v90;
        v2 = v274;
        (*v238)(v94, v91);
        v64 = v16;
        sub_1C7030CDC(v68, &qword_1EC216328);
        v93(v69, v91);
        sub_1C7030CDC(v251, &qword_1EC216328);
        v72 = v246;
        if ((v92 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      sub_1C6F6E5B4(v235);
      swift_isUniquelyReferenced_nonNull_native();
      v277[0] = v65;
      sub_1C6FC2A70();
      OUTLINED_FUNCTION_10_77();
      if (v50)
      {
        goto LABEL_195;
      }

      v97 = v95;
      v98 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
      v99 = OUTLINED_FUNCTION_20_59();
      v19 = v277[0];
      if (v99)
      {
        v99 = OUTLINED_FUNCTION_15_78();
        if ((v98 & 1) != (v100 & 1))
        {
          goto LABEL_131;
        }

        v97 = v99;
      }

      else
      {
        v2 = v274;
      }

      v17 = v269;
      if ((v98 & 1) == 0)
      {
        sub_1C6FCABD4(v97, v2 + 2, MEMORY[0x1E69E7CC0], v19);
        v99 = sub_1C6FCA6E4((v2 + 2), (v2 + 62));
      }

      v107 = OUTLINED_FUNCTION_19_71(v99, v100, v101, v102, v103, v104, v105, v106, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247);
      sub_1C6FD9B98();
      sub_1C70F50AC();

      memcpy(v2 + 77, v277, 0x78uLL);
      sub_1C6FDD548((v2 + 77));
      sub_1C7030CDC(v64, &qword_1EC216328);
      v235 = sub_1C6FC0A88;
LABEL_78:
      v15 = v237;
LABEL_79:
      if (++v17 == v262)
      {

        v121 = v244;
        v122 = v245;
        v123 = v231;
        v124 = v235;
        v125 = v246;
        goto LABEL_90;
      }
    }

    v33 = v274[157];
    sub_1C7030CDC(v274[166], &qword_1EC216328);
    v17 = v269;
    if (__swift_getEnumTagSinglePayload(v27 + v32, 1, v33) == 1)
    {
      sub_1C7030CDC(v274[162], &qword_1EC216328);
LABEL_25:
      if ((v2[9] & 1) == 0)
      {
        v47 = *(v232 + 16);
        if (v47)
        {
          v48 = v2[7];
          v49 = v2[8];
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            goto LABEL_199;
          }

          v52 = v230;
          while (1)
          {
            v53 = *(v52 - 1);
            v54 = v53 + *v52;
            if (__OFADD__(v53, *v52))
            {
              goto LABEL_188;
            }

            if (v51 >= v54)
            {
              v55 = v53 + *v52;
            }

            else
            {
              v55 = v51;
            }

            if (v48 >= v53 && v48 < v54)
            {
              v58 = v55 - v48;
              if (__OFSUB__(v55, v48))
              {
                goto LABEL_190;
              }
            }

            else
            {
              if (v53 < v48 || v53 >= v51)
              {
                goto LABEL_47;
              }

              v50 = __OFSUB__(v55, v53);
              v58 = v55 - v53;
              if (v50)
              {
                goto LABEL_194;
              }
            }

            if (v58 > 0)
            {
              sub_1C6F6E5B4(v231);
              swift_isUniquelyReferenced_nonNull_native();
              v277[0] = v265;
              sub_1C6FC2A70();
              OUTLINED_FUNCTION_10_77();
              if (v50)
              {
                goto LABEL_205;
              }

              v110 = v108;
              v111 = v109;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318);
              v112 = OUTLINED_FUNCTION_20_59();
              v19 = v277[0];
              if ((v112 & 1) == 0)
              {
                v2 = v274;
                if (v111)
                {
                  goto LABEL_88;
                }

                goto LABEL_87;
              }

              v112 = OUTLINED_FUNCTION_15_78();
              if ((v111 & 1) == (v113 & 1))
              {
                v110 = v112;
                v17 = v269;
                if (v111)
                {
LABEL_88:
                  v120 = OUTLINED_FUNCTION_19_71(v112, v113, v114, v115, v116, v117, v118, v119, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247);
                  sub_1C6FD9B98();
                  sub_1C70F50AC();

                  memcpy(v2 + 107, v277, 0x78uLL);
                  sub_1C6FDD548((v2 + 107));
                  sub_1C7030CDC(v30, &qword_1EC216328);
                  v231 = sub_1C6FC0A88;
                  goto LABEL_78;
                }

LABEL_87:
                sub_1C6FCABD4(v110, v2 + 2, MEMORY[0x1E69E7CC0], v19);
                v112 = sub_1C6FCA6E4((v2 + 2), (v2 + 92));
                goto LABEL_88;
              }

LABEL_131:
              OUTLINED_FUNCTION_44();

              sub_1C7551E4C();
              return;
            }

LABEL_47:
            v52 += 2;
            if (!--v47)
            {
              goto LABEL_48;
            }
          }
        }
      }

      goto LABEL_48;
    }

    goto LABEL_23;
  }

  v123 = 0;
  v124 = 0;
  v125 = 0;
  v121 = 0;
  v122 = MEMORY[0x1E69E7CC8];
  v19 = MEMORY[0x1E69E7CC8];
LABEL_90:
  v126 = MEMORY[0x1E69E7CC8];

  v2[181] = v19;
  v2[180] = v122;
  v2[179] = v121;
  v2[178] = v125;
  v2[177] = v124;
  v2[176] = v123;
  v2[152] = v126;
  v127 = sub_1C75504FC();
  sub_1C6FDE0B8(v127);
  v2[182] = v128;

  if (*(v19 + 16))
  {
    v129 = v19 + 64;
    OUTLINED_FUNCTION_10();
    v132 = v131 & v130;
    v257 = (63 - v133) >> 6;
    swift_bridgeObjectRetain_n();
    v134 = 0;
    v135 = MEMORY[0x1E69E7CC0];
    v260 = v19 + 64;
    v266 = v19;
    while (1)
    {
      v2[183] = v135;
      if (!v132)
      {
        while (1)
        {
          v136 = v134 + 1;
          if (__OFADD__(v134, 1))
          {
            break;
          }

          if (v136 >= v257)
          {

            *(v2 + 1528) = 0;
            sub_1C6FDC2F0((v2 + 127));
            v160 = swift_task_alloc();
            v2[184] = v160;
            *v160 = v2;
            v160[1] = sub_1C7435C78;
            goto LABEL_177;
          }

          v132 = *(v129 + 8 * v136);
          ++v134;
          if (v132)
          {
            v134 = v136;
            goto LABEL_97;
          }
        }

LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

LABEL_97:
      v137 = *(*(v19 + 56) + ((v134 << 9) | (8 * __clz(__rbit64(v132)))));
      if (v137 >> 62)
      {
        v138 = sub_1C75516BC();
      }

      else
      {
        v138 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v139 = v135 >> 62;
      if (v135 >> 62)
      {
        v140 = sub_1C75516BC();
      }

      else
      {
        v140 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v273 = v138;
      v50 = __OFADD__(v140, v138);
      v141 = v140 + v138;
      if (v50)
      {
        goto LABEL_196;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v139)
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_26_4();
      if (v142 < v141)
      {
        goto LABEL_108;
      }

LABEL_109:
      v270 = v135;
      v132 &= v132 - 1;
      v144 = *(v143 + 16);
      v145 = v142 - v144;
      v146 = v143 + 8 * v144;
      v263 = v143;
      if (v137 >> 62)
      {
        v149 = sub_1C75516BC();
        if (!v149)
        {
          goto LABEL_123;
        }

        v150 = v149;
        v151 = sub_1C75516BC();
        if (v145 < v151)
        {
          goto LABEL_203;
        }

        if (v150 < 1)
        {
          goto LABEL_204;
        }

        v253 = v151;
        v152 = v146 + 32;
        OUTLINED_FUNCTION_0_181();
        sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
        v153 = 0;
        v154 = v275;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
          v155 = sub_1C6FDD09C(v154, v153, v137);
          v157 = *v156;
          v155(v275, 0);
          v154 = v275;
          *(v152 + 8 * v153++) = v157;
        }

        while (v150 != v153);
        v2 = v274;
        v19 = v266;
        v148 = v253;
LABEL_119:

        v135 = v270;
        v129 = v260;
        if (v148 < v273)
        {
          goto LABEL_197;
        }

        if (v148 > 0)
        {
          v158 = *(v263 + 16);
          v50 = __OFADD__(v158, v148);
          v159 = v158 + v148;
          if (v50)
          {
            goto LABEL_198;
          }

          *(v263 + 16) = v159;
        }
      }

      else
      {
        v147 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v147)
        {
          if (v145 < v147)
          {
            goto LABEL_202;
          }

          v148 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C70DF0F4();
          swift_arrayInitWithCopy();
          goto LABEL_119;
        }

LABEL_123:

        v129 = v260;
        if (v273 > 0)
        {
          goto LABEL_197;
        }
      }
    }

    if (v139)
    {
LABEL_107:
      sub_1C75516BC();
    }

LABEL_108:
    v135 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_109;
  }

  if (!*(v2[180] + 16))
  {

    if (*(v2[152] + 16))
    {
      if (*(*v233 + 16))
      {
        sub_1C7437350(*v233, v2 + 152);
      }

      type metadata accessor for QueryAssetsRetrievalProcessor();
      sub_1C75504FC();
      v165 = sub_1C754FEEC();
      v166 = sub_1C75511BC();
      v167 = OUTLINED_FUNCTION_21_0(v166);
      v168 = v2[175];
      if (v167)
      {
        swift_slowAlloc();
        v169 = OUTLINED_FUNCTION_31_0();
        v277[0] = v169;
        *v123 = 136315138;
        sub_1C7433C74(v168);
        v171 = v170;

        v172 = MEMORY[0x1CCA5D090](v171, MEMORY[0x1E69E6158]);
        v174 = v173;

        v175 = sub_1C6F765A4(v172, v174, v277);

        *(v123 + 4) = v175;
        OUTLINED_FUNCTION_89(&dword_1C6F5C000, v176, v177, "Add assets to public event query tokens, scoped with: %s");
        __swift_destroy_boxed_opaque_existential_1(v169);
        v178 = v169;
        v2 = v274;
        MEMORY[0x1CCA5F8E0](v178, -1, -1);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v215 = v2[153];
      v216 = v2[152];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
      sub_1C6FDE390();
      v217 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1((v2 + 122));

      *v215 = v216;
      v215[1] = v217;
    }

    else
    {
      v214 = v2[153];
      __swift_destroy_boxed_opaque_existential_1((v2 + 122));

      *v214 = 0;
      v214[1] = 0;
    }

    v218 = v2[179];
    v219 = v2[178];
    v220 = v2;
    v221 = v2[173];
    v222 = v220[172];
    v223 = v220[171];
    v254 = v218;
    OUTLINED_FUNCTION_13_84();
    (*(v222 + 8))(v221, v223);
    OUTLINED_FUNCTION_7_95();
    sub_1C6F6E5B4(v219);
    sub_1C6F6E5B4(v254);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  v2[135] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v2[136] = &off_1F46ACFD0;
  v161 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v162 = v161;
  if (v161)
  {
    v163 = [v161 integerValue];
  }

  else
  {
    v163 = 0;
  }

  v179 = v2[180];
  *(v2 + 1056) = 5;
  v2[133] = v163;
  *(v2 + 1072) = v162 == 0;
  v180 = v179 + 64;
  OUTLINED_FUNCTION_10();
  v183 = v182 & v181;
  v261 = (63 - v184) >> 6;
  v267 = v185;
  swift_bridgeObjectRetain_n();
  v186 = 0;
  v187 = MEMORY[0x1E69E7CC0];
  v264 = v180;
  while (1)
  {
    v2[187] = v187;
    if (!v183)
    {
      break;
    }

LABEL_146:
    v189 = *(*(v267 + 56) + ((v186 << 9) | (8 * __clz(__rbit64(v183)))));
    if (v189 >> 62)
    {
      v190 = sub_1C75516BC();
    }

    else
    {
      v190 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v191 = v187 >> 62;
    if (v187 >> 62)
    {
      v192 = sub_1C75516BC();
    }

    else
    {
      v192 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v193 = v192 + v190;
    if (__OFADD__(v192, v190))
    {
      goto LABEL_200;
    }

    sub_1C75504FC();
    v276 = v190;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v191)
      {
LABEL_156:
        sub_1C75516BC();
      }

LABEL_157:
      v187 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_158;
    }

    if (v191)
    {
      goto LABEL_156;
    }

    OUTLINED_FUNCTION_26_4();
    if (v194 < v193)
    {
      goto LABEL_157;
    }

LABEL_158:
    v183 &= v183 - 1;
    v196 = *(v195 + 16);
    v197 = v194 - v196;
    v198 = v195 + 8 * v196;
    v271 = v195;
    if (v189 >> 62)
    {
      v201 = sub_1C75516BC();
      if (!v201)
      {
        goto LABEL_172;
      }

      v202 = v201;
      v258 = sub_1C75516BC();
      if (v197 < v258)
      {
        goto LABEL_208;
      }

      v256 = v187;
      v203 = v272;
      if (v202 < 1)
      {
LABEL_209:
        __break(1u);
        return;
      }

      v204 = v198 + 32;
      OUTLINED_FUNCTION_0_181();
      sub_1C7099594(&qword_1EC2155C8, v205);
      for (i = 0; i != v202; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v207 = sub_1C6FDD09C(v203, i, v189);
        v209 = *v208;
        v207(v272, 0);
        v203 = v272;
        *(v204 + 8 * i) = v209;
      }

      v2 = v274;
      v200 = v276;
      v187 = v256;
      v199 = v258;
      v180 = v264;
LABEL_168:

      if (v199 < v200)
      {
        goto LABEL_201;
      }

      if (v199 > 0)
      {
        v210 = *(v271 + 16);
        v50 = __OFADD__(v210, v199);
        v211 = v210 + v199;
        if (v50)
        {
          goto LABEL_206;
        }

        *(v271 + 16) = v211;
      }
    }

    else
    {
      v199 = *((v189 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v199)
      {
        if (v197 < v199)
        {
          goto LABEL_207;
        }

        sub_1C70DF0F4();
        swift_arrayInitWithCopy();
        v180 = v264;
        v200 = v276;
        goto LABEL_168;
      }

LABEL_172:

      v180 = v264;
      if (v276 > 0)
      {
        goto LABEL_201;
      }
    }
  }

  while (1)
  {
    v188 = v186 + 1;
    if (__OFADD__(v186, 1))
    {
      goto LABEL_191;
    }

    if (v188 >= v261)
    {
      break;
    }

    v183 = *(v180 + 8 * v188);
    ++v186;
    if (v183)
    {
      v186 = v188;
      goto LABEL_146;
    }
  }

  *(v2 + 1529) = 1;
  v212 = swift_task_alloc();
  v2[188] = v212;
  *v212 = v2;
  OUTLINED_FUNCTION_3_113(v212);
LABEL_177:
  OUTLINED_FUNCTION_44();

  sub_1C71074E0();
}

uint64_t sub_1C7435C78(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1480) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v4 + 1016);

    v5 = sub_1C7436AA8;
  }

  else
  {
    *(v4 + 1488) = a1;
    __swift_destroy_boxed_opaque_existential_1(v4 + 1016);

    v5 = sub_1C7435DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C7435DEC()
{
  v80 = v0;
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1448);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74378B4, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 1216));

  if (!*(*(v0 + 1440) + 16))
  {

    if (*(*(v0 + 1216) + 16))
    {
      if (*(*(v0 + 1208) + 16))
      {
        sub_1C7437350(*(v0 + 1208), (v0 + 1216));
      }

      v11 = *(v0 + 1248);

      type metadata accessor for QueryAssetsRetrievalProcessor();
      sub_1C75504FC();
      v12 = sub_1C754FEEC();
      v13 = sub_1C75511BC();
      v14 = OUTLINED_FUNCTION_21_0(v13);
      v15 = *(v0 + 1400);
      if (v14)
      {
        swift_slowAlloc();
        v16 = OUTLINED_FUNCTION_31_0();
        v79 = v16;
        *v11 = 136315138;
        sub_1C7433C74(v15);
        v18 = v17;

        v19 = MEMORY[0x1CCA5D090](v18, MEMORY[0x1E69E6158]);
        v21 = v20;

        v22 = sub_1C6F765A4(v19, v21, &v79);

        *(v11 + 4) = v22;
        OUTLINED_FUNCTION_89(&dword_1C6F5C000, v23, v24, "Add assets to public event query tokens, scoped with: %s");
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x1CCA5F8E0](v16, -1, -1);
        OUTLINED_FUNCTION_37();
      }

      else
      {
      }

      v61 = *(v0 + 1224);
      v62 = *(v0 + 1216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
      sub_1C6FDE390();
      v63 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1(v0 + 976);

      *v61 = v62;
      v61[1] = v63;
    }

    else
    {
      v60 = *(v0 + 1224);
      __swift_destroy_boxed_opaque_existential_1(v0 + 976);

      *v60 = 0;
      v60[1] = 0;
    }

    v64 = *(v0 + 1424);
    v65 = *(v0 + 1384);
    v66 = *(v0 + 1376);
    v67 = *(v0 + 1368);
    v70 = *(v0 + 1432);
    OUTLINED_FUNCTION_13_84();
    (*(v66 + 8))(v65, v67);
    OUTLINED_FUNCTION_7_95();
    sub_1C6F6E5B4(v64);
    sub_1C6F6E5B4(v70);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_329();

    __asm { BRAA            X1, X16 }
  }

  v71 = v0 + 1128;
  *(v0 + 1080) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 1088) = &off_1F46ACFD0;
  v8 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v25 = *(v0 + 1440);
  *(v0 + 1056) = 5;
  *(v0 + 1064) = v10;
  *(v0 + 1072) = v9 == 0;
  v26 = v25 + 64;
  OUTLINED_FUNCTION_10();
  v29 = v28 & v27;
  v31 = (63 - v30) >> 6;
  v76 = v32;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v34 = MEMORY[0x1E69E7CC0];
  v74 = v31;
  v75 = v26;
  v72 = v0;
  while (1)
  {
    *(v0 + 1496) = v34;
    if (!v29)
    {
      break;
    }

LABEL_16:
    v36 = *(*(v76 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v29)))));
    if (v36 >> 62)
    {
      v37 = sub_1C75516BC();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      v39 = sub_1C75516BC();
    }

    else
    {
      v39 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v39 + v37;
    if (__OFADD__(v39, v37))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v38)
      {
LABEL_27:
        sub_1C75516BC();
      }

LABEL_28:
      v78 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_29;
    }

    if (v38)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_26_4();
    if (v41 < v40)
    {
      goto LABEL_28;
    }

    v78 = v34;
LABEL_29:
    v29 &= v29 - 1;
    v43 = *(v42 + 16);
    v44 = v41 - v43;
    v45 = v42 + 8 * v43;
    v77 = v42;
    if (v36 >> 62)
    {
      v47 = sub_1C75516BC();
      if (!v47)
      {
        goto LABEL_43;
      }

      v48 = v47;
      v49 = sub_1C75516BC();
      if (v44 < v49)
      {
        goto LABEL_61;
      }

      if (v48 < 1)
      {
        goto LABEL_62;
      }

      v73 = v49;
      v50 = v45 + 32;
      OUTLINED_FUNCTION_0_181();
      sub_1C7099594(&qword_1EC2155C8, &qword_1EC215050);
      for (i = 0; i != v48; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050);
        v52 = sub_1C6FDD09C(v71, i, v36);
        v54 = *v53;
        v52(v71, 0);
        *(v50 + 8 * i) = v54;
      }

      v0 = v72;
      v46 = v73;
LABEL_39:

      v34 = v78;
      v31 = v74;
      v26 = v75;
      if (v46 < v37)
      {
        goto LABEL_58;
      }

      if (v46 > 0)
      {
        v55 = *(v77 + 16);
        v56 = __OFADD__(v55, v46);
        v57 = v55 + v46;
        if (v56)
        {
          goto LABEL_59;
        }

        *(v77 + 16) = v57;
      }
    }

    else
    {
      v46 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        if (v44 < v46)
        {
          goto LABEL_60;
        }

        sub_1C70DF0F4();
        swift_arrayInitWithCopy();
        goto LABEL_39;
      }

LABEL_43:

      v34 = v78;
      v31 = v74;
      v26 = v75;
      if (v37 > 0)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v35 >= v31)
    {
      break;
    }

    v29 = *(v26 + 8 * v35);
    ++v33;
    if (v29)
    {
      v33 = v35;
      goto LABEL_16;
    }
  }

  *(v0 + 1529) = 1;
  v58 = swift_task_alloc();
  *(v0 + 1504) = v58;
  *v58 = v0;
  OUTLINED_FUNCTION_3_113(v58);
  OUTLINED_FUNCTION_329();

  sub_1C71074E0();
}

uint64_t sub_1C743658C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1512) = v1;

  if (v1)
  {

    v5 = sub_1C7436BB0;
  }

  else
  {
    *(v4 + 1520) = a1;

    v5 = sub_1C74366F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C74366F8()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1440);
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FDE6CC(MEMORY[0x1E69E7CC8], sub_1C74378D0, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 1216));

  __swift_destroy_boxed_opaque_existential_1(v0 + 1056);
  if (*(*(v0 + 1216) + 16))
  {
    if (*(*(v0 + 1208) + 16))
    {
      sub_1C7437350(*(v0 + 1208), (v0 + 1216));
    }

    v8 = *(v0 + 1248);

    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    v11 = OUTLINED_FUNCTION_21_0(v10);
    v12 = *(v0 + 1400);
    if (v11)
    {
      swift_slowAlloc();
      v13 = OUTLINED_FUNCTION_31_0();
      v33 = v13;
      *v8 = 136315138;
      sub_1C7433C74(v12);
      v15 = v14;

      v16 = MEMORY[0x1CCA5D090](v15, MEMORY[0x1E69E6158]);
      v18 = v17;

      v19 = sub_1C6F765A4(v16, v18, &v33);

      *(v8 + 4) = v19;
      OUTLINED_FUNCTION_89(&dword_1C6F5C000, v20, v21, "Add assets to public event query tokens, scoped with: %s");
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    v23 = *(v0 + 1224);
    v24 = *(v0 + 1216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0);
    sub_1C6FDE390();
    v25 = sub_1C75504DC();
    __swift_destroy_boxed_opaque_existential_1(v0 + 976);

    *v23 = v24;
    v23[1] = v25;
  }

  else
  {
    v22 = *(v0 + 1224);
    __swift_destroy_boxed_opaque_existential_1(v0 + 976);

    *v22 = 0;
    v22[1] = 0;
  }

  v26 = *(v0 + 1408);
  v27 = *(v0 + 1384);
  v28 = *(v0 + 1376);
  v29 = *(v0 + 1368);
  v32 = *(v0 + 1432);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1232), *(*(v0 + 1232) + 24));
  sub_1C754F1AC();
  (*(v28 + 8))(v27, v29);
  sub_1C6F6E5B4(v26);
  OUTLINED_FUNCTION_7_95();
  sub_1C6F6E5B4(v32);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_329();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7436AA8()
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 976);

  OUTLINED_FUNCTION_2_124();
  v4 = (*(v0 + 8))(v2, v3);
  OUTLINED_FUNCTION_4_105(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1C7436BB0()
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 976);
  __swift_destroy_boxed_opaque_existential_1(v1 + 1056);

  OUTLINED_FUNCTION_2_124();
  v4 = (*(v0 + 8))(v2, v3);
  OUTLINED_FUNCTION_4_105(v4, v5, v6, v7, v8, v9, v10, v11, v14);

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1C7436CC0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE68);
  sub_1C754EE8C();

  MEMORY[0x1CCA5CC40]();

  sub_1C755083C();
  result = sub_1C75514FC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

void sub_1C7436DB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' public event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B04C0);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C7437080(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor();
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Embedding retrieval failed for '%{private}@' public event token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000025, 0x80000001C75A2CF0);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C75B04C0);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

uint64_t sub_1C7437350(uint64_t a1, id *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  result = sub_1C75504FC();
  v12 = 0;
  while (v9)
  {
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = memcpy(__dst, (*(v5 + 48) + 120 * (v14 | (v12 << 6))), 0x78uLL);
    v15 = *a2;
    if (*(*a2 + 2))
    {
      sub_1C6FCA6E4(__dst, &v52);
      v16 = sub_1C6FC2A70();
      if ((v17 & 1) != 0 && (v18 = *(v15[7] + 8 * v16), *(v18 + 16)))
      {
        v49 = a2;
        v50 = v5;
        v51 = v3;
        v52 = MEMORY[0x1E69E7CC0];
        v19 = 1 << *(v18 + 32);
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v21 = v20 & *(v18 + 64);
        v22 = (v19 + 63) >> 6;
        result = swift_bridgeObjectRetain_n();
        v23 = 0;
        if (v21)
        {
          goto LABEL_22;
        }

        while (1)
        {
          v24 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_37;
          }

          if (v24 >= v22)
          {
            break;
          }

          v21 = *(v18 + 64 + 8 * v24);
          ++v23;
          if (v21)
          {
            v23 = v24;
            do
            {
LABEL_22:
              v21 &= v21 - 1;
              v25 = sub_1C75504FC();
              result = sub_1C6FD25FC(v25);
            }

            while (v21);
            continue;
          }
        }

        v26 = sub_1C706D154(v52);
        if (!*(v26 + 16))
        {

          result = sub_1C6FDD548(__dst);
          v3 = v51;
          goto LABEL_32;
        }

        v3 = v51;
        v27 = *(v51 + 8);
        v28 = *(v51 + 16);
        v52 = *v51;
        v53 = v27;
        v54 = v28;
        v29 = v52;

        static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v26, &v52);

        v30 = v52;

        v31 = sub_1C75504FC();
        v32 = sub_1C706D87C(v31);
        if (*(v32 + 16))
        {
          v33 = *(v51 + 8);
          v34 = *v51;

          v35 = objc_autoreleasePoolPush();
          sub_1C71C8640(v32, 0, v34, v33, &v52);
          objc_autoreleasePoolPop(v35);

          v3 = v51;
          v36 = v52;
          type metadata accessor for QueryAssetsRetrievalProcessor();
          sub_1C75504FC();
          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          v48 = v36;
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v52 = v47;
            *v39 = 134218242;
            *(v39 + 4) = v36[2];

            *(v39 + 12) = 2080;
            v40 = sub_1C7550F9C();
            v42 = v41;

            v43 = sub_1C6F765A4(v40, v42, &v52);

            *(v39 + 14) = v43;
            _os_log_impl(&dword_1C6F5C000, v37, v38, "Expand to all %ld assets in the moments = %s", v39, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v47);
            MEMORY[0x1CCA5F8E0](v47, -1, -1);
            v44 = v39;
            v3 = v51;
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
          }

          else
          {
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C755BAB0;
          v46 = __dst[3];
          *(inited + 32) = __dst[2];
          *(inited + 40) = v46;
          *(inited + 48) = v48;
          sub_1C75504FC();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
          sub_1C75504DC();
          a2 = v49;
          swift_isUniquelyReferenced_nonNull_native();
          v52 = *v49;
          sub_1C6FC7AB4();

          result = sub_1C6FDD548(__dst);
          *v49 = v52;
          v5 = v50;
        }

        else
        {

          result = sub_1C6FDD548(__dst);
LABEL_32:
          a2 = v49;
        }
      }

      else
      {
        result = sub_1C6FDD548(__dst);
      }
    }
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

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}