uint64_t sub_1A4356E0C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void, __n128), uint64_t (*a6)(void))
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_1A3CAB9BC(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1A4357048(a4, a5);
      goto LABEL_7;
    }

    sub_1A4356910(v19, a3 & 1, a4, a5);
    v30 = sub_1A3CAB9BC(a2);
    if ((v20 & 1) == (v31 & 1))
    {
      v16 = v30;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

      return sub_1A4356F98(v16, a2, a1, v22, a4);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    return sub_1A4356F98(v16, a2, a1, v22, a4);
  }

LABEL_8:
  v23 = v22[7];
  v24 = a6(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

uint64_t sub_1A4356F98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_1A4357048(uint64_t (*a1)(void), void (*a2)(void, __n128))
{
  v4 = v2;
  v31 = a1(0);
  v33 = *(v31 - 8);
  v5 = MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - v6;
  a2(0, v5);
  v7 = *v2;
  v8 = sub_1A524E764();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29[0] = v4;
    result = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 64 + 8 * v11)
    {
      result = memmove(result, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v32 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        v24 = v33;
        v25 = *(v33 + 72) * v22;
        v27 = v30;
        v26 = v31;
        (*(v33 + 16))(v30, *(v7 + 56) + v25, v31);
        v28 = v32;
        *(*(v32 + 48) + 8 * v22) = v23;
        result = (*(v24 + 32))(*(v28 + 56) + v25, v27, v26);
        v17 = v34;
      }

      while (v34);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v29[0];
        v9 = v32;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v34 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }

  return result;
}

void sub_1A43572B0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A43574F0(v7, v8, a1, v4);
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
    sub_1A43573A8(0, v2, 1, a1);
  }
}

void sub_1A43573A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 + 9;
    v6 = a1 - a3;
LABEL_5:
    v25 = v5;
    v26 = a3;
    v7 = v6;
    while (1)
    {
      v8 = (v5 - 9);
      v9 = *(v5 - 25);
      v10 = *(v5 - 9);
      v11 = v9;
      [v10 size];
      v13 = v12;
      [v10 size];
      v15 = v13 * v14;
      [v11 size];
      v17 = v16;
      [v11 size];
      v19 = v18;

      if (v15 >= v17 * v19)
      {
LABEL_4:
        a3 = v26 + 1;
        v5 = v25 + 16;
        --v6;
        if (v26 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v20 = *(v5 - 25);
      *(v5 - 16) = *v5;
      v5 -= 16;
      v21 = *(v5 + 7);
      v22 = *(v5 + 15);
      *v8 = v20;
      *(v5 - 9) = v21;
      *(v5 - 1) = v22;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A43574F0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v10 = sub_1A3D86884(v10);
    }

    v117 = *(v10 + 2);
    if (v117 >= 2)
    {
      while (*v5)
      {
        v118 = v10;
        v10 = (v117 - 1);
        v119 = *&v118[16 * v117];
        v120 = *&v118[16 * v117 + 24];
        sub_1A4357C40((*v5 + 16 * v119), (*v5 + 16 * *&v118[16 * v117 + 16]), (*v5 + 16 * v120), v7);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v120 < v119)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1A3D86884(v118);
        }

        if (v117 - 2 >= *(v118 + 2))
        {
          goto LABEL_119;
        }

        v121 = &v118[16 * v117];
        *v121 = v119;
        *(v121 + 1) = v120;
        sub_1A3D867F8(v117 - 1);
        v10 = v118;
        v117 = *(v118 + 2);
        if (v117 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v124 = v10;
      v13 = *(*v7 + 16 * v12);
      v10 = (16 * v11);
      v14 = (*v7 + 16 * v11);
      v16 = *v14;
      v15 = v14 + 4;
      v5 = v13;
      v17 = v16;
      [v5 size];
      v19 = v18;
      [v5 size];
      v21 = v19 * v20;
      [v17 size];
      v23 = v22;
      [v17 size];
      v25 = v24;

      v26 = v23 * v25;
      v27 = v11 + 2;
      while (v8 != v27)
      {
        v28 = v8;
        v29 = *(v15 - 2);
        v5 = *v15;
        v30 = v29;
        [v5 size];
        v32 = v31;
        [v5 size];
        v34 = v32 * v33;
        [v30 size];
        v36 = v35;
        v8 = v28;
        [v30 size];
        v38 = v37;

        ++v27;
        v15 += 2;
        if (v21 < v26 == v34 >= v36 * v38)
        {
          v8 = v27 - 1;
          break;
        }
      }

      v7 = a3;
      if (v21 < v26)
      {
        if (v8 < v11)
        {
          goto LABEL_122;
        }

        if (v11 < v8)
        {
          v39 = 16 * v8 - 16;
          v40 = v8;
          v41 = v11;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v44 = &v10[v43];
              v45 = (v43 + v39);
              v46 = *&v10[v43];
              v47 = v10[v43 + 8];
              v48 = v10[v43 + 9];
              if (v10 != v39 || v44 >= v45 + 16)
              {
                *v44 = *v45;
              }

              v42 = v43 + v39;
              *v42 = v46;
              *(v42 + 8) = v47;
              *(v42 + 9) = v48;
            }

            ++v41;
            v39 -= 16;
            v10 += 16;
          }

          while (v41 < v40);
        }
      }

      v10 = v124;
    }

    v49 = v7[1];
    if (v8 < v49)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_121;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v49)
        {
          v50 = v7[1];
        }

        else
        {
          v50 = v11 + a4;
        }

        if (v50 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v50)
        {
          break;
        }
      }
    }

    v51 = v8;
    if (v8 < v11)
    {
      goto LABEL_120;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v10 = sub_1A3D8598C((v52 > 1), v53 + 1, 1, v10);
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v51;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v127 = v51;
    if (v53)
    {
      while (1)
      {
        v56 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v10 + 4);
          v58 = *(v10 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_109;
          }

          v73 = &v10[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_112;
          }

          v79 = &v10[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_116;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v10[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_111;
        }

        v86 = &v10[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_114;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        v94 = v56 - 1;
        if (v56 - 1 >= v54)
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

        if (!*v7)
        {
          goto LABEL_127;
        }

        v95 = *&v10[16 * v94 + 32];
        v96 = *&v10[16 * v56 + 40];
        sub_1A4357C40((*v7 + 16 * v95), (*v7 + 16 * *&v10[16 * v56 + 32]), (*v7 + 16 * v96), v5);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v96 < v95)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v94 >= *(v10 + 2))
        {
          goto LABEL_106;
        }

        v97 = &v10[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        sub_1A3D867F8(v56);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v10[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_107;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_108;
      }

      v68 = &v10[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_110;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_113;
      }

      if (v72 >= v64)
      {
        v90 = &v10[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v59 < v93)
        {
          v56 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v127;
    if (v127 >= v8)
    {
      goto LABEL_93;
    }
  }

  v125 = v10;
  v98 = *v7;
  v99 = v98 + 16 * v8 + 9;
  v100 = v11 - v8;
  v128 = v50;
LABEL_84:
  v129 = v99;
  v130 = v8;
  v101 = v100;
  while (1)
  {
    v102 = (v99 - 9);
    v103 = *(v99 - 25);
    v5 = *(v99 - 9);
    v104 = v103;
    [v5 size];
    v106 = v105;
    [v5 size];
    v108 = v106 * v107;
    [v104 size];
    v110 = v109;
    [v104 size];
    v112 = v111;

    if (v108 >= v110 * v112)
    {
LABEL_83:
      v8 = v130 + 1;
      v99 = v129 + 16;
      --v100;
      v51 = v128;
      if (v130 + 1 != v128)
      {
        goto LABEL_84;
      }

      v7 = a3;
      v10 = v125;
      if (v128 < v11)
      {
        goto LABEL_120;
      }

      goto LABEL_33;
    }

    if (!v98)
    {
      break;
    }

    v113 = *(v99 - 25);
    *(v99 - 16) = *v99;
    v99 -= 16;
    v114 = *(v99 + 7);
    v115 = *(v99 + 15);
    *v102 = v113;
    *(v99 - 9) = v114;
    *(v99 - 1) = v115;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_83;
    }
  }

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
}

uint64_t sub_1A4357C40(void **__dst, void **__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v12)
  {
    v30 = 2 * v12;
    v29 = __src;
    if (a4 != __src || &__src[v30] <= a4)
    {
      memmove(a4, __src, 16 * v12);
    }

    v15 = &v4[v30];
    if (v10 >= 16 && v29 > v6)
    {
LABEL_25:
      v49 = v29;
      v31 = v29 - 2;
      v5 -= 2;
      v32 = v15;
      do
      {
        v33 = v5 + 2;
        v34 = *(v32 - 2);
        v32 -= 2;
        v35 = v31;
        v36 = *v31;
        v37 = v34;
        v38 = v36;
        [v37 size];
        v40 = v39;
        [v37 size];
        v42 = v40 * v41;
        [v38 size];
        v44 = v43;
        [v38 size];
        v46 = v45;

        if (v42 < v44 * v46)
        {
          if (v33 != v49)
          {
            *v5 = *v35;
          }

          if (v15 <= v4 || (v29 = v35, v35 <= v6))
          {
            v29 = v35;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v33 != v15)
        {
          *v5 = *v32;
        }

        v5 -= 2;
        v15 = v32;
        v31 = v35;
      }

      while (v32 > v4);
      v15 = v32;
      v29 = v49;
    }
  }

  else
  {
    v13 = __src;
    v14 = 2 * v9;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v7 >= 16 && v13 < v5)
    {
      while (1)
      {
        v16 = *v4;
        v17 = *v13;
        v18 = v16;
        [v17 size];
        v20 = v19;
        [v17 size];
        v22 = v20 * v21;
        [v18 size];
        v24 = v23;
        [v18 size];
        v26 = v25;

        if (v22 >= v24 * v26)
        {
          break;
        }

        v27 = v13;
        v28 = v6 == v13;
        v13 += 2;
        if (!v28)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 2;
        if (v4 >= v15 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v27 = v4;
      v28 = v6 == v4;
      v4 += 2;
      if (v28)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v27;
      goto LABEL_17;
    }

LABEL_19:
    v29 = v6;
  }

LABEL_36:
  v47 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v29 != v4 || v29 >= (v4 + v47))
  {
    memmove(v29, v4, v47);
  }

  return 1;
}

char *sub_1A4357F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v4 = *v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v17 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  *&v2[*(v4 + 112)] = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 56);
  v13 = swift_unknownObjectRetain();
  v12(v13, v7, AssociatedConformanceWitness);
  (*(v8 + 32))(&v3[*(*v3 + 96)], v10, v7);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library();
  v14 = v17;
  (*(v18 + 16))(v17, v20, v19);
  v15 = swift_allocObject();
  sub_1A433D92C(v14);
  *&v3[*(*v3 + 104)] = v15;
  sub_1A433BEF8();
  return v3;
}

uint64_t sub_1A4358214()
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A433C578(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_1A4358328()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A433C2E0(v3, v4, v5, v2);
}

unint64_t sub_1A4358408()
{
  result = qword_1EB1385E8;
  if (!qword_1EB1385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1385E8);
  }

  return result;
}

uint64_t sub_1A435845C()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4358548()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A4358624()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A4358674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1A43586D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A43587B8()
{
  sub_1A43588E0(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
    sub_1A3DBD9A0();
    sub_1A524ECF4();
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1A435892C()
{
  sub_1A3EE53E0(319);
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    sub_1A524DF24();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1A4358AC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore37OneUpSharePlaySessionRecipientJournalC7LibraryC9LoadErrorOyx__G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4358B1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4358B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1A4358C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1A4358C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A4358CA0()
{
  result = sub_1A5240E64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4358D0C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4358E00(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 43;
    v10 = (((v8 + 7) & 0xFFFFFFF8) + 43) & 0xFFFFFFFB;
    v11 = v10 == 3 ? ((a2 - v7 + 0xFFFFFF) >> 24) + 1 : 2;
    v12 = v11 < 0x100 ? 1 : 2;
    v13 = v11 >= 2 ? v12 : 0;
    if (v13)
    {
      if (v13 == 2)
      {
        v14 = *(a1 + v9);
        if (v14)
        {
LABEL_18:
          v15 = (v14 << 24) - 0x1000000;
          if (v10 == 3)
          {
            v19 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v15 = 0;
            v19 = *a1;
          }

          return v7 + (v19 | v15) + 1;
        }
      }

      else
      {
        v14 = *(a1 + v9);
        if (v14)
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (v6 < 0x7FFFFFFF)
  {
    v18 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v17 = *(v5 + 48);

    return v17(a1);
  }
}

double sub_1A4359000(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v6 + 84);
  v9 = *(v6 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 43;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v12 = ((a3 - v10 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v10 >= a2)
  {
    if (v15)
    {
      if (v15 != 2)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return result;
        }

LABEL_32:
        if (v8 < 0x7FFFFFFF)
        {
          v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v19 + 8) = 0u;
            *(v19 + 24) = 0u;
            *v19 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v19 + 8) = (a2 - 1);
          }
        }

        else
        {
          v18 = *(v6 + 56);

          v18(a1, a2);
        }

        return result;
      }

      *&a1[v11] = 0;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  v16 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 == 3)
  {
    v17 = HIBYTE(v16) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    *a1 = v16;
    if (!v15)
    {
      return result;
    }
  }

  if (v15 == 2)
  {
    *&a1[v11] = v17;
  }

  else
  {
    a1[v11] = v17;
  }

  return result;
}

uint64_t sub_1A4359254(uint64_t a1)
{
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1A59082D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1A4355B04(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1A43593F0(uint64_t a1)
{
  v3 = *v1;
  v22 = *(*v1 + 88);
  v21 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v11;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v1[15];
  v20[0] = v1[14];
  (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v22;
  *(v17 + 4) = v21;
  *(v17 + 5) = v18;
  (*(v5 + 32))(&v17[v15], v8, AssociatedTypeWitness);
  v19 = &v17[v16];
  *v19 = v20[0];
  *(v19 + 1) = v14;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43596F8(uint64_t a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1A5240E64();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  sub_1A3DBD9A0();
  v9 = sub_1A524ECF4();
  v10 = sub_1A524DF24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - v20;
  (*(v11 + 16))(v13, a1, v10, v19);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 32))(v21, v13, v9);
  (*(v14 + 16))(v17, v21, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v14 + 8);
    v23(v21, v9);
    return (v23)(v17, v9);
  }

  else
  {
    v25 = v39;
    v24 = v40;
    (*(v40 + 32))(v39, v17, v4);
    (*(v24 + 16))(v6, v25, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = v36;
      v26 = v37;
      (*(v36 + 32))(v38, v6, v37);
      v28 = [objc_opt_self() defaultManager];
      v29 = sub_1A5240D44();
      v41[0] = 0;
      v30 = [v28 removeItemAtURL:v29 error:v41];

      if (v30)
      {
        v31 = v41[0];
      }

      else
      {
        v33 = v41[0];
        v34 = sub_1A5240B84();

        swift_willThrow();
      }

      v35 = v40;
      (*(v27 + 8))(v38, v26);
      (*(v35 + 8))(v39, v4);
      return (*(v14 + 8))(v21, v9);
    }

    else
    {
      v32 = *(v24 + 8);
      v32(v25, v4);
      (*(v14 + 8))(v21, v9);
      return (v32)(v6, v4);
    }
  }
}

unint64_t sub_1A4359C40(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, __n128), void (*a4)(uint64_t, uint64_t *), uint64_t (*a5)(void))
{
  v28 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - v11);
  v13 = *(a1 + 16);
  if (v13)
  {
    a3(0, v10);
    v14 = sub_1A524E794();
    v15 = *(v8 + 48);
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    while (1)
    {
      a4(v16, v12);
      v18 = *v12;
      result = sub_1A3CAB9BC(*v12);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + 8 * result) = v18;
      v22 = v14[7];
      v23 = v28(0);
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v12 + v15, v23);
      v24 = v14[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v14[2] = v26;
      v16 += v17;
      if (!--v13)
      {
        return v14;
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

void sub_1A4359E34()
{
  if (!qword_1EB1385F8)
  {
    sub_1A3C566A4(255, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1385F8);
    }
  }
}

void sub_1A4359ED4()
{
  if (!qword_1EB138608)
  {
    sub_1A4359E34();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138608);
    }
  }
}

uint64_t sub_1A4359F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4359FDC(uint64_t a1)
{
  v3 = *v1;
  v22 = *(*v1 + 88);
  v21 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v11;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v1[15];
  v20[0] = v1[14];
  (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v22;
  *(v17 + 4) = v21;
  *(v17 + 5) = v18;
  (*(v5 + 32))(&v17[v15], v8, AssociatedTypeWitness);
  v19 = &v17[v16];
  *v19 = v20[0];
  *(v19 + 1) = v14;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A435A2D8(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4359F74(a1, v4, sub_1A3EE53E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1A435C808(v4, sub_1A3EE53E0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1A5240D44();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_1A5240B84();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1A435A544()
{
  if (!qword_1EB138620)
  {
    sub_1A3C52C70(255, &qword_1EB138628);
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138620);
    }
  }
}

void sub_1A435A5C4()
{
  if (!qword_1EB138630)
  {
    sub_1A435A544();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138630);
    }
  }
}

void sub_1A435A684(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A435A6E8()
{
  if (!qword_1EB138648)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CE94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138648);
    }
  }
}

void sub_1A435A750()
{
  if (!qword_1EB138650)
  {
    sub_1A435A6E8();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138650);
    }
  }
}

void sub_1A435A7F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A435A880(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    sub_1A435A898(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }
}

void sub_1A435A898(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_1A3C59280(a1, a2);
  }
}

uint64_t sub_1A435A8E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A4354E48(a1, v5, v4);
}

uint64_t sub_1A435A9D4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43552A4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435AAA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A434EF74(a1, v5, v4);
}

uint64_t sub_1A435AB98()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4350150(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435AC6C()
{
  v2 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_1A435A544();
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A434F8F0(v9, v10, v11, v7, v8, v0 + v3, v0 + v6);
}

unint64_t sub_1A435ADB0()
{
  result = qword_1EB138680;
  if (!qword_1EB138680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138680);
  }

  return result;
}

uint64_t sub_1A435AE64(void *a1, uint64_t a2, void *a3)
{
  sub_1A435A544();
  if (a1)
  {
    v5 = a1;
    return sub_1A524CBE4();
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
    swift_getWitnessTable();
    swift_allocError();
    *v7 = a3;
    v8 = a3;
    return sub_1A524CBD4();
  }
}

uint64_t objectdestroy_78Tm()
{
  sub_1A435A544();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A435AFF0(void *a1, void *a2)
{
  sub_1A435A544();
  if (a1)
  {
    v4 = a1;
    return sub_1A524CBE4();
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError();
    swift_getWitnessTable();
    swift_allocError();
    *v6 = a2;
    v7 = a2;
    return sub_1A524CBD4();
  }
}

uint64_t sub_1A435B0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A435B150()
{
  v2 = *(type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A43505C4(v5, v6, v7, v4, v0 + v3);
}

void sub_1A435B234()
{
  if (!qword_1EB138688)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CBF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138688);
    }
  }
}

void sub_1A435B2A0()
{
  if (!qword_1EB138690)
  {
    sub_1A435B310(255, &qword_1EB138698);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138690);
    }
  }
}

void sub_1A435B310(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A435B368(uint64_t a1)
{
  sub_1A435B310(0, &qword_1EB138698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A435B3DC(char a1, void *a2)
{
  v5 = *(sub_1A5240E64() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1A435B234();
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_1A434DE28(a1, a2, v9, v10, v2 + v6, v11);
}

void sub_1A435B4C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A524E7A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t objectdestroy_68Tm()
{
  v1 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat() - 8);
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_1A435A544();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v9 = sub_1A5240E64();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
  }

  else if (!EnumCaseMultiPayload)
  {
    sub_1A3C59280(*(v0 + v2), *(v0 + v2 + 8));
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1A435B708()
{
  v2 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  sub_1A435A544();
  v6 = (v3 + v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A434C7C0(v9, v10, v11, v7, v8, v0 + v3, v0 + v6);
}

uint64_t sub_1A435B84C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3D60150;

  return sub_1A4346DA0(a1, v4, v5, v6, v7);
}

uint64_t sub_1A435B954()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43473C4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435B9EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  if (*(v4 + 170) == 255)
  {
    v7 = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      *v10 = 134349312;
      *(v10 + 4) = v3;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v6;
      _os_log_impl(&dword_1A3C1C000, v9, v7, "Journal: [%{public}ld] No image data available; Queuing continuation. requiresFullResolution: %{BOOL}d", v10, 0x12u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    sub_1A4347144(v3, a1, v5, v6);
  }

  v12 = *(v4 + 136);
  v11 = *(v4 + 144);
  v13 = *(v4 + 152);
  v14 = *(v4 + 160);
  v15 = *(v4 + 168) | (*(v4 + 170) << 16);
  if (((*(v4 + 170) << 16) & 0x10000) != 0)
  {
    sub_1A435BEE0(v12, v11, v13, v14, v15, 1);
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
    sub_1A3DBD9A0();
    sub_1A524CBF4();
    return sub_1A524CBD4();
  }

  v32 = *(v4 + 152);
  if (*(v4 + 168))
  {
    sub_1A435BEE0(v12, v11, v13, v14, v15, 0);
    v16 = sub_1A524D264();
    v17 = *sub_1A486DB9C();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = v17;
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = v3;
      v20 = "Journal: [%{public}ld] Image data request immediately available via spatial data";
      v21 = v16;
LABEL_18:
      _os_log_impl(&dword_1A3C1C000, v18, v21, v20, v19, 0xCu);
      MEMORY[0x1A590EEC0](v19, -1, -1);
    }
  }

  else
  {
    if (*(v4 + 168) & 0x100) == 0 || (v5)
    {
      v31 = *(v4 + 144);
      sub_1A435BEE0(v12, v11, v13, v14, v15, 0);
      v29 = sub_1A524D264();
      log = *sub_1A486DB9C();
      v25 = os_log_type_enabled(log, v29);
      if (v6 & 1) != 0 || (v5)
      {
        v30 = v14;
        if (v25)
        {
          sub_1A435BF2C(v12, v31, v32, v14, v15);
          loga = log;
          v26 = swift_slowAlloc();
          *v26 = 134350080;
          *(v26 + 4) = v3;
          *(v26 + 12) = 1024;
          *(v26 + 14) = 0;
          *(v26 + 18) = 1024;
          *(v26 + 20) = v5;
          *(v26 + 24) = 1024;
          *(v26 + 26) = (v15 & 0x100) >> 8;
          sub_1A435A880(v12, v31, v32, v30, v15);
          *(v26 + 30) = 1024;
          *(v26 + 32) = v6;
          _os_log_impl(&dword_1A3C1C000, loga, v29, "Journal: [%{public}ld] Image data request not satisfied by currently available image data; Queuing for incoming asset. [isSpatial=%{BOOL}d, request=%{BOOL}d] [isFull=%{BOOL}d, request=%{BOOL}d]", v26, 0x24u);
          MEMORY[0x1A590EEC0](v26, -1, -1);
        }

        sub_1A4347144(v3, a1, v5, v6);
      }

      if (!v25)
      {
        goto LABEL_19;
      }

      v18 = log;
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = v3;
      v20 = "Journal: [%{public}ld] Image data request immediately available via high quality data";
      v21 = v29;
      goto LABEL_18;
    }

    sub_1A435BEE0(v12, v11, v13, v14, v15, 0);
    v23 = sub_1A524D264();
    v24 = *sub_1A486DB9C();
    if (os_log_type_enabled(v24, v23))
    {
      v18 = v24;
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = v3;
      v20 = "Journal: [%{public}ld] Image data request immediately available via mono data";
      v21 = v23;
      goto LABEL_18;
    }
  }

LABEL_19:
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult();
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  return sub_1A524CBE4();
}

id sub_1A435BEE0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_1A3D602A8(a1, a2);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return a1;
}

id sub_1A435BF2C(id result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1A435BEE0(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_1A435BFF4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 26) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v6 + 8);
  v18 = *v6;
  v8 = *(v6 + 16);
  if (*(v6 + 18))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (*(v6 + 17))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | v8;
  v12 = *(v0 + v5);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1A3CA8098;

  return sub_1A4342EC8(v13, v14, v15, v0 + v3, v18, v7, v11 | v9, v12);
}

unint64_t sub_1A435C204()
{
  result = qword_1EB139250;
  if (!qword_1EB139250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139250);
  }

  return result;
}

void sub_1A435C264()
{
  if (!qword_1EB1386A0)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CE44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1386A0);
    }
  }
}

void sub_1A435C30C()
{
  if (!qword_1EB1386B8)
  {
    sub_1A3DBD9A0();
    v0 = sub_1A524CE64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1386B8);
    }
  }
}

uint64_t objectdestroy_49Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A435C400()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4347FB4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435C498()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524E424();
}

unint64_t sub_1A435C580()
{
  result = qword_1EB1386C0;
  if (!qword_1EB1386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1386C0);
  }

  return result;
}

unint64_t sub_1A435C5D4()
{
  result = qword_1EB1391D0;
  if (!qword_1EB1391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1391D0);
  }

  return result;
}

uint64_t sub_1A435C628()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A3CA8098;

  return sub_1A4348FF8(v10, v11, v12, v0 + v3, v7, v8, v9);
}

uint64_t sub_1A435C7C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A435C808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_158Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A435C9BC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1A3CA8098;

  return sub_1A4351F3C(v10, v11, v12, v0 + v3, v7, v8, v9);
}

unint64_t sub_1A435CB54()
{
  result = qword_1EB139230;
  if (!qword_1EB139230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139230);
  }

  return result;
}

uint64_t sub_1A435CBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1A435CC64()
{
  if (!qword_1EB1386C8)
  {
    sub_1A52411C4();
    sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8]);
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1386C8);
    }
  }
}

id sub_1A435CD88(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView] = 0;
  v7 = &v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect];
  type metadata accessor for LemonadeInlineStoryPlayer();
  *v7 = sub_1A41F5728();
  *(v7 + 1) = v8;
  v7[16] = v9 & 1;
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView] = 1;
  v10 = *sub_1A4758804();
  v28 = v5;
  v29 = v6;
  v27 = 1;

  j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ_0(&v21);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v11 = (*(*v10 + 96))(&v28, &v15, &v27);
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_underlyingPlayer] = v11;
  *&v3[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_keyAsset] = a2;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for LemonadeInlineStoryPlayerUIView();
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setClipsToBounds_];

  swift_unknownObjectRelease();

  return v12;
}

void sub_1A435D024()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LemonadeInlineStoryPlayerUIView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_1A435D52C();
  [v0 bounds];
  [v1 setFrame_];

  if (sub_1A435D6D4())
  {
    [v0 bounds];
    sub_1A524D9E4();
  }

  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setBounds_];
    sub_1A41ACC68(v2);
  }
}

uint64_t sub_1A435D150()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player);
  }

  else
  {
    type metadata accessor for LemonadeInlineStoryPlayer();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v2 = sub_1A41F569C(v5, sub_1A435DBD8, v3, sub_1A435DBE0, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A435D258(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  aBlock[4] = sub_1A435DE5C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_18_3;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A435E03C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A435E03C(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

char *sub_1A435D52C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView];
  }

  else
  {
    v4 = v0;
    sub_1A435D150();
    v5 = type metadata accessor for LemonadeInlineStoryContentPlayerUIView();
    v6 = objc_allocWithZone(v5);
    type metadata accessor for PhotosCollectionPreviewPlayerUIView();
    *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v19.receiver = v6;
    v19.super_class = v5;
    v7 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v8 = OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView;
    v9 = *&v7[OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView];
    v10 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x68);
    v11 = v7;
    v12 = v9;

    v10(v13);

    [v11 addSubview_];

    v14 = sub_1A435D6D4();
    if (v14)
    {
      v15 = v14;
      [v4 insertSubview:v11 belowSubview:v14];
    }

    else
    {
      [v4 addSubview_];
    }

    v16 = *&v4[v1];
    *&v4[v1] = v11;
    v3 = v11;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

id sub_1A435D6D4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView];
  v3 = v2;
  if (v2 == 1)
  {
    if (*&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_keyAsset])
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = objc_allocWithZone(PXPhotoKitAssetView);
        swift_unknownObjectRetain();
        v5 = [v4 initWithFrame:1 options:{0.0, 0.0, 0.0, 0.0}];
        [v5 setAsset_];
        v3 = v5;
        [v3 setContentMode_];
        v6 = PXDisplayCollectionDetailedCountsMake([v0 addSubview_]);
        v8 = PXDisplayCollectionDetailedCountsMake(v7);
        CGAffineTransformMakeScale(&v19, v6, v8);
        [v3 setTransform_];
        sub_1A3C52C70(0, &qword_1EB126A10);
        v9 = [swift_getObjCClassFromMetadata() sharedInstance];
        v10 = [v9 alwaysFilterPlaceholder];

        if (v10)
        {
          v11 = [v3 layer];
          v12 = [objc_opt_self() yellowColor];
          v13 = [v12 colorWithAlphaComponent_];

          v14 = [v13 CGColor];
          [v11 setBorderColor_];

          v15 = [v3 layer];
          [v15 setBorderWidth_];
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v16 = *&v0[v1];
    *&v0[v1] = v3;
    v17 = v3;
    sub_1A41ACC68(v16);
  }

  sub_1A41ACC6C(v2);
  return v3;
}

id sub_1A435DB6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A435DBE0(char a1, uint64_t a2, unsigned int a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1 & 1;
    if ((a3 >> 8))
    {
      v10 = v7;
      v11 = sub_1A435D6D4();
      if (v11)
      {
        v12 = 0.0;
        if (a1)
        {
          v12 = 1.0;
        }

        v13 = v11;
        [v11 setAlpha_];
      }
    }

    else if (a3)
    {
      sub_1A3C52C70(0, &qword_1EB12B170);
      v9 = v7;
      sub_1A524DB44();
    }

    else
    {
      v14 = *&a2;
      v15 = objc_opt_self();
      aBlock[4] = sub_1A435DDE0;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_162;
      v16 = _Block_copy(aBlock);
      v17 = v7;

      [v15 animateWithDuration:v16 animations:v14];

      _Block_release(v16);
    }
  }

  return result;
}

void sub_1A435DDE0()
{
  v1 = *(v0 + 24);
  v2 = sub_1A435D6D4();
  if (v2)
  {
    v3 = 0.0;
    if (v1)
    {
      v3 = 1.0;
    }

    v4 = v2;
    [v2 setAlpha_];
  }
}

uint64_t sub_1A435DE5C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1A435D6D4();
    v3 = *&v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect];
    v4 = *&v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect + 8];
    v5 = v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect + 16];
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB12B170);
      v7 = v2;
      sub_1A524DB44();
    }

    else
    {
      v8 = v4;
      v9 = objc_opt_self();
      aBlock[4] = sub_1A435E084;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_24_2;
      v10 = _Block_copy(aBlock);
      v11 = v2;

      [v9 animateWithDuration:v10 animations:v8];

      _Block_release(v10);
    }
  }

  return result;
}

uint64_t sub_1A435E03C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A435E084()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A41F7694();
    v3 = sub_1A41F7694();
    CGAffineTransformMakeScale(&v5, v2, v3);
    return [v1 setTransform_];
  }

  return result;
}

uint64_t sub_1A435E10C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A435E158(a1, v2 + OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item);
  return v2;
}

uint64_t sub_1A435E158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E1BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item;
  swift_beginAccess();
  return sub_1A435E214(v1 + v3, a1);
}

uint64_t sub_1A435E214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E278(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item;
  swift_beginAccess();
  sub_1A435E2D8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A435E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E39C()
{
  v1 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*v0 + 96))(v2);
  v6 = sub_1A4965B3C(v5);
  sub_1A435E450(v4);
  return v6;
}

uint64_t sub_1A435E450(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A435E4AC()
{
  sub_1A435E450(v0 + OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationModel()
{
  result = qword_1EB1B8D40;
  if (!qword_1EB1B8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A435E690(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A3D3D728;
}

uint64_t sub_1A435E768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A435E7B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A435E808()
{
  result = type metadata accessor for GenerativeStoryEventSuggestion();
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

uint64_t sub_1A435E89C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v17 = a1;
  v10 = sub_1A3C52C70(0, &unk_1EB138730);
  v11 = a1;
  SendableTransfer.init(wrappedValue:)(&v17, v10, &v18);
  *a5 = v18;
  v17 = a2;
  sub_1A435EA24(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset, sub_1A3C5D0E8);
  v13 = v12;
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v17, v13, &v18);
  a5[1] = v18;
  v17 = a3;
  v14 = sub_1A3C5D0E8(0, &qword_1EB120790);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v17, v14, &v18);
  a5[2] = v18;
  v17 = a4;
  sub_1A435EA24(0, &unk_1EB138740, &qword_1EB126D00, 0x1E69D3810, sub_1A3C52C70);
  SendableTransfer.init(wrappedValue:)(&v17, v15, &v18);

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  a5[3] = v18;
  return result;
}

void sub_1A435EA24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A435EA80()
{
  result = qword_1EB138750;
  if (!qword_1EB138750)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138750);
  }

  return result;
}

uint64_t sub_1A435EACC()
{
  v1 = [objc_msgSend(*v0 assetCollection)];
  swift_unknownObjectRelease();
  v2 = sub_1A524C674();

  return v2;
}

unint64_t sub_1A435EB4C()
{
  result = qword_1EB138758;
  if (!qword_1EB138758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138758);
  }

  return result;
}

unint64_t sub_1A435EBA4()
{
  result = qword_1EB138760;
  if (!qword_1EB138760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138760);
  }

  return result;
}

unint64_t sub_1A435EBF8()
{
  result = qword_1EB138768;
  if (!qword_1EB138768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138768);
  }

  return result;
}

unint64_t sub_1A435EC50()
{
  result = qword_1EB138770[0];
  if (!qword_1EB138770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB138770);
  }

  return result;
}

void sub_1A435ECE0(uint64_t *a1@<X8>)
{
  v3 = [objc_msgSend(*v1 assetCollection)];
  swift_unknownObjectRelease();
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1A435ED78(uint64_t a1)
{
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - v3;
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  result = sub_1A524C634();
  v12 = *(a1 + 24);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = *(a1 + 32);
  if (v13 < -32768)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(a1 + 56);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = *(a1 + 64);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v16 = result;
  v52 = *(a1 + 32);
  v17 = *(a1 + 16);
  v50 = *(a1 + 40);
  v18 = *(a1 + 48);
  v48 = v17;
  v49 = v18;
  v19 = *(a1 + 72);
  if (*(a1 + 84))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 80);
  }

  v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v22 = v20;
  v47 = [v21 initWithFloat_];
  if (*(a1 + 92))
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_1A524CF14();
  }

  v23 = *(a1 + 100);
  v51 = v4;
  if (v23)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1A524CF14();
  }

  v44 = *(a1 + 104);
  v24 = *(a1 + 112);
  v25 = *(a1 + 128);
  v43 = *(a1 + 120);
  v42 = v25;
  v26 = *(a1 + 136);
  v41 = *(a1 + 144);
  v27 = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) + 68);
  sub_1A435F3F4(a1 + v27, v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  v28 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v10, 1, v28) != 1)
  {
    v40[1] = v12;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A43643AC(v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  sub_1A435F3F4(a1 + v27, v7, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  if (v29(v7, 1, v28) == 1)
  {
    sub_1A43643AC(v7, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v30 = sub_1A5241144();
    (*(*(v30 - 8) + 56))(v51, 1, 1, v30);
    v31 = 0;
  }

  else
  {
    v32 = v51;
    sub_1A435F3F4(&v7[*(v28 + 20)], v51, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    sub_1A435F460(v7, type metadata accessor for OneUpSharePlayTitleInfo);
    v33 = sub_1A5241144();
    v34 = *(v33 - 8);
    v31 = 0;
    if ((*(v34 + 48))(v32, 1, v33) != 1)
    {
      v31 = sub_1A5241074();
      (*(v34 + 8))(v32, v33);
    }
  }

  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v54[1] = v24;
  v54[2] = v43;
  v53[0] = v42;
  v53[1] = v26;
  v53[2] = v41;
  v54[0] = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v39 = [v35 initWithUUID:v16 mediaType:v48 mediaSubtypes:v12 spatialMediaType:v52 isSpatialPresentation:v50 playbackStyle:v49 pixelWidth:v19 pixelHeight:v14 duration:v15 hdrGain:v47 focalLength:v46 focalLengthIn35mm:v45 photoIrisStillDisplayTime:v54 photoIrisVideoDuration:v53 localizedGeoDescription:0 creationDate:v31];

  sub_1A435F460(a1, type metadata accessor for OneUpSharePlayAssetMetadata);
  return v39;
}

uint64_t sub_1A435F3F4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C7D0D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A435F460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A435F4CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65756C6176;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7367616C66;
    }

    else
    {
      v4 = 0x68636F7065;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616373656D6974;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x7367616C66;
  if (a2 != 2)
  {
    v7 = 0x68636F7065;
  }

  if (a2)
  {
    v2 = 0x6C616373656D6974;
    v6 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1A524EAB4();
  }

  return v10 & 1;
}

uint64_t sub_1A435F604()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A435F660()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A435F6A8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A524E824();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A435F720@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1A524E824();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1A435F778(uint64_t a1)
{
  v2 = sub_1A435FFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A435F7B4(uint64_t a1)
{
  v2 = sub_1A435FFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A435F7FC()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A435F8B8()
{
  sub_1A524C794();
}

uint64_t sub_1A435F960()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A435FA18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4362788();
  *a1 = result;
  return result;
}

void sub_1A435FA48(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x65756C6176;
  v4 = 0x7367616C66;
  if (*v1 != 2)
  {
    v4 = 0x68636F7065;
  }

  if (*v1)
  {
    v3 = 0x6C616373656D6974;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1A435FAC0()
{
  v1 = 0x65756C6176;
  v2 = 0x7367616C66;
  if (*v0 != 2)
  {
    v2 = 0x68636F7065;
  }

  if (*v0)
  {
    v1 = 0x6C616373656D6974;
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

uint64_t sub_1A435FB34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A4362788();
  *a1 = result;
  return result;
}

uint64_t sub_1A435FB5C(uint64_t a1)
{
  v2 = sub_1A435FF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A435FB98(uint64_t a1)
{
  v2 = sub_1A435FF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayCMTime.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1A4363300(0, &qword_1EB138790, sub_1A435FF60, &type metadata for OneUpSharePlayCMTime.CMTimeCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v18[-v7];
  sub_1A4363300(0, &qword_1EB138798, sub_1A435FFB4, &type metadata for OneUpSharePlayCMTime.CodingKeys, v4);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A435FFB4();
  sub_1A524ED14();
  if (!v2)
  {
    v13 = v22;
    v12 = v23;
    sub_1A435FF60();
    sub_1A524E844();
    v29 = 0;
    v20 = sub_1A524E904();
    v28 = 1;
    v25 = sub_1A524E8F4();
    v27 = 2;
    v19 = sub_1A524E914();
    v26 = 3;
    v15 = sub_1A524E904();
    (*(v12 + 8))(v24, v6);
    (*(v13 + 8))(v11, v9);
    v16 = v21;
    *v21 = v20;
    v17 = v19;
    *(v16 + 2) = v25;
    *(v16 + 3) = v17;
    v16[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1A435FF60()
{
  result = qword_1EB1B9050;
  if (!qword_1EB1B9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B9050);
  }

  return result;
}

unint64_t sub_1A435FFB4()
{
  result = qword_1EB1B9058;
  if (!qword_1EB1B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B9058);
  }

  return result;
}

uint64_t OneUpSharePlayCMTime.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1A4363300(0, &qword_1EB1387A0, sub_1A435FF60, &type metadata for OneUpSharePlayCMTime.CMTimeCodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  sub_1A4363300(0, &unk_1EB1387A8, sub_1A435FFB4, &type metadata for OneUpSharePlayCMTime.CodingKeys, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v1 + 12);
  v25 = *(v1 + 8);
  v22 = v11;
  v21 = *(v1 + 16);
  v12 = a1[3];
  v13 = a1;
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1A435FFB4();
  v16 = v9;
  v17 = v5;
  sub_1A524ED34();
  sub_1A435FF60();
  sub_1A524E944();
  v29 = 0;
  v18 = v24;
  sub_1A524E9F4();
  if (v18)
  {
    (*(v23 + 8))(v7, v5);
  }

  else
  {
    v19 = v23;
    v28 = 1;
    sub_1A524E9E4();
    v27 = 2;
    sub_1A524EA04();
    v26 = 3;
    sub_1A524E9F4();
    (*(v19 + 8))(v7, v17);
  }

  return (*(v10 + 8))(v15, v16);
}

uint64_t OneUpSharePlayTitleInfo.init(localizedGeoDescription:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  return sub_1A43631D4(a3, a4 + *(v6 + 20), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

void OneUpSharePlayTitleInfo.description.getter()
{
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53D3050);
  sub_1A3C39898(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43605F8()
{
  if (*v0)
  {
    return 0x6E6F697461657263;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1A4360640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A5331E90 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A436072C(uint64_t a1)
{
  v2 = sub_1A4363090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4360768(uint64_t a1)
{
  v2 = sub_1A4363090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayTitleInfo.encode(to:)(void *a1)
{
  sub_1A4363300(0, &qword_1EB1387B8, sub_1A4363090, &type metadata for OneUpSharePlayTitleInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363090();
  sub_1A524ED34();
  v11 = 0;
  sub_1A524E954();
  if (!v1)
  {
    type metadata accessor for OneUpSharePlayTitleInfo(0);
    v10 = 1;
    sub_1A5241144();
    sub_1A43630E4(&qword_1EB1387C0, MEMORY[0x1E6969530]);
    sub_1A524E984();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t OneUpSharePlayTitleInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  sub_1A4363300(0, &qword_1EB1387C8, sub_1A4363090, &type metadata for OneUpSharePlayTitleInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363090();
  v12 = v19;
  sub_1A524ED14();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = a1;
  v13 = v17;
  v21 = 0;
  *v11 = sub_1A524E864();
  v11[1] = v14;
  sub_1A5241144();
  v20 = 1;
  sub_1A43630E4(&qword_1EB1387D0, MEMORY[0x1E6969530]);
  sub_1A524E894();
  (*(v13 + 8))(v8, v18);
  sub_1A43631D4(v5, v11 + *(v9 + 20), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  sub_1A43633BC(v11, v16, type metadata accessor for OneUpSharePlayTitleInfo);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return sub_1A435F460(v11, type metadata accessor for OneUpSharePlayTitleInfo);
}

double OneUpSharePlayAssetMetadata.photoIrisStillDisplayTime.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  result = *(v1 + 112);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  return result;
}

double OneUpSharePlayAssetMetadata.photoIrisVideoDuration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  result = *(v1 + 136);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  return result;
}

uint64_t OneUpSharePlayAssetMetadata.init(asset:includingTitleInfo:)@<X0>(unint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v60 - v7);
  v9 = *a1;
  v10 = a1[1];
  KeyPath = swift_getKeyPath();
  v60 = v9;
  v61 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v66);

  v12 = v67;
  *a3 = v66;
  *(a3 + 8) = v12;
  v13 = swift_getKeyPath();
  v60 = v9;
  v61 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(v13, &v66);

  *(a3 + 16) = v66;
  v14 = swift_getKeyPath();
  v60 = v9;
  v61 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(v14, &v66);

  if ((v66 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 24) = v66;
    v16 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v16, &v66);

    *(a3 + 32) = v66 & 1;
    v17 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v17, &v66);

    *(a3 + 40) = v66 & 1;
    v18 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v18, &v66);

    v19 = v66;
    if (v67)
    {
      v19 = 0;
    }

    *(a3 + 48) = v19;
    v20 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v20, &v65);

    v21 = v65;
    v22 = swift_getKeyPath();
    v66 = v9;
    v67 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v22, &v64);

    v23 = v64;
    *(a3 + 56) = v21;
    *(a3 + 64) = v23;
    v24 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v24, &v66);

    v25 = *&v66;
    if (v67)
    {
      v25 = 0.0;
    }

    *(a3 + 72) = v25;
    v26 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v26, &v66);

    v27 = v66;
    if (v66)
    {
      [v66 floatValue];
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    *(a3 + 80) = v29;
    *(a3 + 84) = v27 == 0;
    v30 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v30, &v66);

    v31 = v66;
    v32 = 1;
    if (v66 >= 2)
    {
      LODWORD(v65) = 0;
      BYTE4(v65) = 1;
      MEMORY[0x1A5908290](v66, &v65);
      sub_1A3C327F4(v31);
      v33 = v65;
      v32 = BYTE4(v65);
    }

    else
    {
      v33 = 0;
    }

    *(a3 + 88) = v33;
    *(a3 + 92) = v32;
    v34 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v34, &v66);

    v35 = v66;
    v36 = 1;
    if (v66 >= 2)
    {
      LODWORD(v65) = 0;
      BYTE4(v65) = 1;
      MEMORY[0x1A5908290](v66, &v65);
      sub_1A3C327F4(v35);
      v37 = v65;
      v36 = BYTE4(v65);
    }

    else
    {
      v37 = 0;
    }

    *(a3 + 96) = v37;
    *(a3 + 100) = v36;
    v38 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v38, &v66);

    if ((v66 & 8) != 0)
    {
      v43 = swift_getKeyPath();
      v66 = v9;
      v67 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v43, &v60);

      v44 = MEMORY[0x1E6960C70];
      if (v63)
      {
        v45 = *(MEMORY[0x1E6960C70] + 8);
        v46 = *(MEMORY[0x1E6960C70] + 12);
        v47 = MEMORY[0x1E6960C70];
        v48 = *(MEMORY[0x1E6960C70] + 16);
      }

      else
      {
        v48 = v62;
        v47 = &v60;
        v45 = v61;
        v46 = HIDWORD(v61);
      }

      *(a3 + 104) = *v47;
      *(a3 + 112) = v45;
      *(a3 + 116) = v46;
      *(a3 + 120) = v48;
      v49 = swift_getKeyPath();
      v66 = v9;
      v67 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v49, &v60);

      if (v63)
      {
        v40 = *(v44 + 2);
        v41 = *(v44 + 3);
        v42 = v44[2];
      }

      else
      {
        v42 = v62;
        v44 = &v60;
        v40 = v61;
        v41 = HIDWORD(v61);
      }

      v39 = *v44;
    }

    else
    {
      v39 = *MEMORY[0x1E6960C70];
      v40 = *(MEMORY[0x1E6960C70] + 8);
      v41 = *(MEMORY[0x1E6960C70] + 12);
      v42 = *(MEMORY[0x1E6960C70] + 16);
      *(a3 + 104) = *MEMORY[0x1E6960C70];
      *(a3 + 112) = v40;
      *(a3 + 116) = v41;
      *(a3 + 120) = v42;
    }

    *(a3 + 128) = v39;
    *(a3 + 136) = v40;
    *(a3 + 140) = v41;
    *(a3 + 144) = v42;
    if (a2)
    {
      v50 = swift_getKeyPath();
      v60 = v9;
      v61 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v50, &v66);

      if (v67 >= 2)
      {
        v51 = v66;
      }

      else
      {
        v51 = 0;
      }

      if (v67 >= 2)
      {
        v52 = v67;
      }

      else
      {
        v52 = 0;
      }

      v53 = swift_getKeyPath();
      v60 = v9;
      v61 = v10;
      v54 = type metadata accessor for OneUpSharePlayTitleInfo(0);
      OneUpSharePlayOverridableAsset.subscript.getter(v53, v8 + *(v54 + 20));

      *v8 = v51;
      v8[1] = v52;
      (*(*(v54 - 8) + 56))(v8, 0, 1, v54);
      v55 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
      sub_1A43631D4(v8, a3 + *(v55 + 68), &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    }

    else
    {
      v55 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
      v56 = *(v55 + 68);
      v57 = type metadata accessor for OneUpSharePlayTitleInfo(0);
      (*(*(v57 - 8) + 56))(a3 + v56, 1, 1, v57);
    }

    v58 = swift_getKeyPath();
    v60 = v9;
    v61 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v58, &v66);

    swift_unknownObjectRelease();

    v59 = v66 & 1;
    result = type metadata accessor for OneUpSharePlayAssetMetadata(0);
    *(a3 + *(v55 + 72)) = v59;
  }

  return result;
}

void sub_1A43614EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_1A4361554@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

id sub_1A4361588@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaSubtypes];
  *a2 = result;
  return result;
}

uint64_t sub_1A43615D4@<X0>(id *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v5 *a2];
  }

  else
  {
    result = 2;
  }

  *a3 = result;
  return result;
}

id sub_1A4361634@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 respondsToSelector_];
  if (v4)
  {
    result = [v3 playbackStyle];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = (v4 & 1) == 0;
  return result;
}

id sub_1A43616A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelWidth];
  *a2 = result;
  return result;
}

id sub_1A43616D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelHeight];
  *a2 = result;
  return result;
}

id sub_1A436170C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = [*a1 respondsToSelector_];
  v5 = result;
  v6 = 0;
  if (result)
  {
    result = [v3 duration];
  }

  *a2 = v6;
  *(a2 + 8) = (v5 & 1) == 0;
  return result;
}

id sub_1A4361778@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v3 hdrGain];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A43617F8@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v5 *a2];
  }

  else
  {
    result = 1;
  }

  *a3 = result;
  return result;
}

id sub_1A4361878@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = [*a1 respondsToSelector_];
  v7 = result;
  if (result)
  {
    result = [v5 *a2];
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v9 = 0;
    v8 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = (v7 & 1) == 0;
  return result;
}

void sub_1A4361904(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v4 = [v3 localizedGeoDescription];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A524C674();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_1A4361994@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result & 1;
  return result;
}

unint64_t sub_1A43619F4(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x707954616964656DLL;
      break;
    case 2:
      result = 0x627553616964656DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 5;
      goto LABEL_6;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x7A69536C65786970;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x6E696147726468;
      break;
    case 9:
      result = 0x6E654C6C61636F66;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 9;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x666E49656C746974;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A4361BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4363DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A4361BFC(uint64_t a1)
{
  v2 = sub_1A4363258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4361C38(uint64_t a1)
{
  v2 = sub_1A4363258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A4363300(0, &qword_1EB1387D8, sub_1A4363258, &type metadata for OneUpSharePlayAssetMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363258();
  sub_1A524ED34();
  LOBYTE(v16) = 0;
  sub_1A524E994();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1A524E9C4();
    LOBYTE(v16) = 2;
    sub_1A524E9C4();
    LOBYTE(v16) = 3;
    sub_1A524E9C4();
    LOBYTE(v16) = 4;
    sub_1A524E9A4();
    LOBYTE(v16) = 5;
    sub_1A524E9C4();
    v16 = *(v3 + 56);
    v18 = 6;
    type metadata accessor for CGSize(0);
    sub_1A43630E4(&qword_1EB1387E0, type metadata accessor for CGSize);
    sub_1A524E9D4();
    LOBYTE(v16) = 7;
    sub_1A524E9B4();
    v11 = *(v3 + 84);
    LOBYTE(v16) = 8;
    v18 = v11;
    sub_1A524E974();
    v12 = *(v3 + 92);
    LOBYTE(v16) = 9;
    v18 = v12;
    sub_1A524E974();
    v13 = *(v3 + 100);
    LOBYTE(v16) = 10;
    v18 = v13;
    sub_1A524E974();
    v14 = *(v3 + 120);
    v16 = *(v3 + 104);
    v17 = v14;
    v18 = 11;
    sub_1A43632AC();
    sub_1A524E9D4();
    v15 = *(v3 + 144);
    v16 = *(v3 + 128);
    v17 = v15;
    v18 = 12;
    sub_1A524E9D4();
    type metadata accessor for OneUpSharePlayAssetMetadata(0);
    LOBYTE(v16) = 13;
    type metadata accessor for OneUpSharePlayTitleInfo(0);
    sub_1A43630E4(&qword_1EB1387F0, type metadata accessor for OneUpSharePlayTitleInfo);
    sub_1A524E984();
    LOBYTE(v16) = 14;
    sub_1A524E964();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t OneUpSharePlayAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  sub_1A4363300(0, &qword_1EB1387F8, sub_1A4363258, &type metadata for OneUpSharePlayAssetMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v28 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A4363258();
  v27 = v9;
  v14 = v29;
  sub_1A524ED14();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v30);
  }

  LOBYTE(v31) = 0;
  *v12 = sub_1A524E8A4();
  *(v12 + 1) = v15;
  LOBYTE(v31) = 1;
  *(v12 + 2) = sub_1A524E8D4();
  LOBYTE(v31) = 2;
  *(v12 + 3) = sub_1A524E8D4();
  LOBYTE(v31) = 3;
  *(v12 + 4) = sub_1A524E8D4();
  LOBYTE(v31) = 4;
  v12[40] = sub_1A524E8B4() & 1;
  LOBYTE(v31) = 5;
  *(v12 + 6) = sub_1A524E8D4();
  type metadata accessor for CGSize(0);
  v29 = v16;
  v33 = 6;
  sub_1A43630E4(&qword_1EB138800, type metadata accessor for CGSize);
  sub_1A524E8E4();
  *(v12 + 56) = v31;
  LOBYTE(v31) = 7;
  sub_1A524E8C4();
  *(v12 + 9) = v17;
  LOBYTE(v31) = 8;
  v18 = sub_1A524E884();
  *(v12 + 20) = v18;
  v12[84] = BYTE4(v18) & 1;
  LOBYTE(v31) = 9;
  v19 = sub_1A524E884();
  *(v12 + 22) = v19;
  v12[92] = BYTE4(v19) & 1;
  LOBYTE(v31) = 10;
  v20 = sub_1A524E884();
  *(v12 + 24) = v20;
  v12[100] = BYTE4(v20) & 1;
  v33 = 11;
  sub_1A4363368();
  sub_1A524E8E4();
  v21 = v32;
  *(v12 + 104) = v31;
  *(v12 + 15) = v21;
  v33 = 12;
  sub_1A524E8E4();
  v22 = v32;
  *(v12 + 8) = v31;
  *(v12 + 18) = v22;
  type metadata accessor for OneUpSharePlayTitleInfo(0);
  LOBYTE(v31) = 13;
  sub_1A43630E4(&unk_1EB138810, type metadata accessor for OneUpSharePlayTitleInfo);
  sub_1A524E894();
  sub_1A43631D4(v5, &v12[*(v10 + 68)], &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  LOBYTE(v31) = 14;
  v23 = sub_1A524E874();
  (*(v7 + 8))(v27, v28);
  v12[*(v10 + 72)] = v23;
  sub_1A43633BC(v12, v26, type metadata accessor for OneUpSharePlayAssetMetadata);
  __swift_destroy_boxed_opaque_existential_0(v30);
  return sub_1A435F460(v12, type metadata accessor for OneUpSharePlayAssetMetadata);
}

uint64_t sub_1A4362788()
{
  v0 = sub_1A524E824();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

BOOL _s12PhotosUICore27OneUpSharePlayAssetMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v28 - v9);
  sub_1A4364348(0, &qword_1EB138848, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A524EAB4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    v16 = *(a2 + 84);
    if (*(a1 + 84))
    {
      if (!*(a2 + 84))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 80) != *(a2 + 80))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    v17 = *(a2 + 92);
    if (*(a1 + 92))
    {
      if (!*(a2 + 92))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 88) != *(a2 + 88))
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    v18 = *(a2 + 100);
    if (*(a1 + 100))
    {
      if (!*(a2 + 100))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 96) != *(a2 + 96))
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    if ((sub_1A524DAB4() & 1) == 0 || (sub_1A524DAB4() & 1) == 0)
    {
      return 0;
    }

    v29 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
    v19 = *(v29 + 68);
    v20 = *(v12 + 48);
    sub_1A435F3F4(a1 + v19, v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v21 = a2 + v19;
    v22 = v20;
    sub_1A435F3F4(v21, &v14[v20], &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v23 = *(v5 + 48);
    if (v23(v14, 1, v4) == 1)
    {
      if (v23(&v14[v22], 1, v4) == 1)
      {
        sub_1A43643AC(v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
LABEL_41:
        v25 = *(v29 + 72);
        v26 = *(a1 + v25);
        v27 = *(a2 + v25);
        if (v26 != 2)
        {
          return v27 != 2 && ((v27 ^ v26) & 1) == 0;
        }

        return v27 == 2;
      }
    }

    else
    {
      sub_1A435F3F4(v14, v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
      if (v23(&v14[v22], 1, v4) != 1)
      {
        sub_1A43642E4(&v14[v22], v7);
        v24 = _s12PhotosUICore23OneUpSharePlayTitleInfoV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1A435F460(v7, type metadata accessor for OneUpSharePlayTitleInfo);
        sub_1A435F460(v10, type metadata accessor for OneUpSharePlayTitleInfo);
        sub_1A43643AC(v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
        if (!v24)
        {
          return 0;
        }

        goto LABEL_41;
      }

      sub_1A435F460(v10, type metadata accessor for OneUpSharePlayTitleInfo);
    }

    sub_1A4364288(v14, &qword_1EB138848, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    return 0;
  }

  return result;
}

BOOL _s12PhotosUICore23OneUpSharePlayTitleInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  sub_1A4364348(0, &qword_1EB12AFD0, &qword_1EB12AFE0, v8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - v14;
  v16 = a1[1];
  v17 = a2[1];
  if (v16)
  {
    if (!v17 || (*a1 != *a2 || v16 != v17) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v28 = v7;
  v18 = *(type metadata accessor for OneUpSharePlayTitleInfo(0) + 20);
  v19 = *(v13 + 48);
  v20 = v5;
  v21 = MEMORY[0x1E6969530];
  sub_1A435F3F4(a1 + v18, v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  sub_1A435F3F4(a2 + v18, &v15[v19], &qword_1EB12AFE0, v21);
  v22 = *(v20 + 48);
  if (v22(v15, 1, v4) == 1)
  {
    if (v22(&v15[v19], 1, v4) == 1)
    {
      sub_1A43643AC(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      return 1;
    }

    goto LABEL_13;
  }

  sub_1A435F3F4(v15, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if (v22(&v15[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v11, v4);
LABEL_13:
    sub_1A4364288(v15, &qword_1EB12AFD0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    return 0;
  }

  v24 = v28;
  (*(v20 + 32))(v28, &v15[v19], v4);
  sub_1A43630E4(&unk_1EB12AFF0, MEMORY[0x1E6969530]);
  v25 = sub_1A524C594();
  v26 = *(v20 + 8);
  v26(v24, v4);
  v26(v11, v4);
  sub_1A43643AC(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  return (v25 & 1) != 0;
}

unint64_t sub_1A4363090()
{
  result = qword_1EB1B9060[0];
  if (!qword_1EB1B9060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9060);
  }

  return result;
}

uint64_t sub_1A43630E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A43631D4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A3C7D0D8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A4363258()
{
  result = qword_1EB1B90F0[0];
  if (!qword_1EB1B90F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B90F0);
  }

  return result;
}

unint64_t sub_1A43632AC()
{
  result = qword_1EB1387E8;
  if (!qword_1EB1387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1387E8);
  }

  return result;
}

void sub_1A4363300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4363368()
{
  result = qword_1EB138808;
  if (!qword_1EB138808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138808);
  }

  return result;
}

uint64_t sub_1A43633BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4363470()
{
  sub_1A3C39898(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A3C7D0D8(319, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A436355C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C39898(319, &qword_1EB120B50, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3C7D0D8(319, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
      if (v2 <= 0x3F)
      {
        sub_1A3C39898(319, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OneUpSharePlayAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OneUpSharePlayAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A4363890()
{
  result = qword_1EB1B97A0[0];
  if (!qword_1EB1B97A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B97A0);
  }

  return result;
}

unint64_t sub_1A43638E8()
{
  result = qword_1EB1B9A30[0];
  if (!qword_1EB1B9A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9A30);
  }

  return result;
}

unint64_t sub_1A4363940()
{
  result = qword_1EB1B9C40[0];
  if (!qword_1EB1B9C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9C40);
  }

  return result;
}

unint64_t sub_1A4363AB8()
{
  result = qword_1EB1BA0D0[0];
  if (!qword_1EB1BA0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA0D0);
  }

  return result;
}

unint64_t sub_1A4363B10()
{
  result = qword_1EB1BA1E0;
  if (!qword_1EB1BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA1E0);
  }

  return result;
}

unint64_t sub_1A4363B68()
{
  result = qword_1EB1BA1E8[0];
  if (!qword_1EB1BA1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA1E8);
  }

  return result;
}

unint64_t sub_1A4363BC0()
{
  result = qword_1EB1BA270;
  if (!qword_1EB1BA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA270);
  }

  return result;
}

unint64_t sub_1A4363C18()
{
  result = qword_1EB1BA278;
  if (!qword_1EB1BA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA278);
  }

  return result;
}

unint64_t sub_1A4363C70()
{
  result = qword_1EB1BA300;
  if (!qword_1EB1BA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA300);
  }

  return result;
}

unint64_t sub_1A4363CC8()
{
  result = qword_1EB1BA308[0];
  if (!qword_1EB1BA308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA308);
  }

  return result;
}

unint64_t sub_1A4363D20()
{
  result = qword_1EB1BA390;
  if (!qword_1EB1BA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA390);
  }

  return result;
}

unint64_t sub_1A4363D78()
{
  result = qword_1EB1BA398;
  if (!qword_1EB1BA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA398);
  }

  return result;
}

uint64_t sub_1A4363DCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x627553616964656DLL && a2 == 0xED00007365707974 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53D30B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A5331CB0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED0000656C797453 || (sub_1A524EAB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7A69536C65786970 && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696147726468 && a2 == 0xE700000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xEB00000000687467 || (sub_1A524EAB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A5331E20 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A53D30D0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A53D30F0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x666E49656C746974 && a2 == 0xE90000000000006FLL || (sub_1A524EAB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A53D3110 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1A4364288(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1A4364348(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A43642E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4364348(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3C7D0D8(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A43643AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C7D0D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1A4364408(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A43650E4(a1);

  return v2;
}

uint64_t sub_1A4364454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 232))(v8);
  }
}

uint64_t sub_1A4364574(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {

    v7 = *((*(*v1 + 144))(v6) + 16);

    v8 = [v7 name];

    v9 = sub_1A524C674();
    v11 = v10;

    (*(*v1 + 200))(v9, v11);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v1;
    v13 = a1;
    (*(*v1 + 232))(v4);
  }
}

uint64_t sub_1A4364718()
{
  (*(*v0 + 144))();
  v1 = ImportSourceItem.id.getter();

  return v1;
}

uint64_t (*sub_1A4364780(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A43647D4;
}

uint64_t sub_1A43647D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *((*(*v5 + 144))(result) + 16);

    v7 = [v6 name];

    v8 = sub_1A524C674();
    v10 = v9;

    return (*(*v5 + 200))(v8, v10);
  }

  return result;
}

uint64_t sub_1A43648A8()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  swift_beginAccess();
}

uint64_t sub_1A4364924@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4364970(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

void (*sub_1A43649C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 224))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A436544C(&qword_1EB129DC8, type metadata accessor for LemonadeImportSourceModel);
  sub_1A52415F4();

  v4[7] = sub_1A4364780(v4);
  return sub_1A4364B00;
}

void sub_1A4364B0C()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4364B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1A4364C48(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 224))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A436544C(&qword_1EB129DC8, type metadata accessor for LemonadeImportSourceModel);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C();
  return sub_1A4364D84;
}

uint64_t sub_1A4364ED0()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4364F94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 144))();
  *a1 = result;
  return result;
}

void (*sub_1A4365004(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 160))();
  return sub_1A3D3D728;
}

uint64_t sub_1A4365098@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A43650E4(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0xE000000000000000;
  sub_1A5241604();
  v1[2] = a1;
  v3 = *(*v1 + 144);

  v5 = *(v3(v4) + 16);

  v6 = [v5 name];

  v7 = sub_1A524C674();
  v9 = v8;

  (*(*v1 + 200))(v7, v9);
  return v1;
}

uint64_t sub_1A43651D0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v2[2] = v3;

  v5 = *((*(*v2 + 144))(v4) + 16);

  v6 = [v5 name];

  v7 = sub_1A524C674();
  v9 = v8;

  return (*(*v2 + 200))(v7, v9);
}

uint64_t type metadata accessor for LemonadeImportSourceModel()
{
  result = qword_1EB183310;
  if (!qword_1EB183310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A436544C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A436549C()
{
  result = sub_1A5241614();
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

uint64_t sub_1A4365548@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  sub_1A3F1EA2C(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4365968();
  v31 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  *v38 = *v1;
  *&v38[16] = v10;
  *&v38[32] = *(v1 + 32);
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 32);
  sub_1A4365E70(v38, v36);
  sub_1A524B704();
  v13 = sub_1A43F2548();
  KeyPath = swift_getKeyPath();
  v15 = &v5[*(v3 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  if (*v38)
  {
    v16 = (*(**v38 + 1040))() & 1;
  }

  else
  {
    v16 = 2;
  }

  LOBYTE(v33) = v16;
  v17 = swift_allocObject();
  v18 = *&v38[16];
  *(v17 + 16) = *v38;
  *(v17 + 32) = v18;
  *(v17 + 48) = *&v38[32];
  sub_1A4365E70(v38, v36);
  sub_1A4366440(0, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v20 = v19;
  v21 = sub_1A3F1EC00();
  v22 = sub_1A4365A30();
  sub_1A524B144();

  sub_1A43660A4(v5);
  v33 = *&v38[8];
  v34 = *&v38[24];
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v33 = v36[0];
  v34 = v36[1];
  v35 = v37;
  v23 = swift_allocObject();
  v24 = *&v38[16];
  *(v23 + 16) = *v38;
  *(v23 + 32) = v24;
  *(v23 + 48) = *&v38[32];
  sub_1A4365E70(v38, v32);
  v32[0] = v3;
  v32[1] = v20;
  v32[2] = v21;
  v32[3] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v31;
  View.tapToRadar(workflow:completion:)(&v33, sub_1A43661D0, v23, v31, OpaqueTypeConformance2, v30);

  v27 = v34;

  sub_1A3DAECB8(v27, *(&v27 + 1));
  return (*(v7 + 8))(v9, v26);
}

void sub_1A4365968()
{
  if (!qword_1EB138850)
  {
    sub_1A3F1EA2C(255);
    sub_1A4366440(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A3F1EC00();
    sub_1A4365A30();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138850);
    }
  }
}

unint64_t sub_1A4365A30()
{
  result = qword_1EB126DE8;
  if (!qword_1EB126DE8)
  {
    sub_1A4366440(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126DE8);
  }

  return result;
}

uint64_t sub_1A4365AC4()
{
  sub_1A4365B84(&v8);
  v1 = *(v0 + 40);
  v10[0] = *(v0 + 24);
  v10[1] = v1;
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v2;
  v4[2] = v8;
  v5 = v9;
  sub_1A4366490(v10, v4);
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A3DAECB8(v6, *(&v6 + 1));
}

double sub_1A4365B84@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    v4 = *(*v3 + 1304);

    v6 = v4(v5);
    if (v6 == 1)
    {
      v7 = (*(*v3 + 1088))();
      (*(*v3 + 1960))(0, 0xD000000000000023, 0x80000001A53D3160, v7);
    }

    else
    {
      sub_1A3DB9B78(v6);
    }

    v9 = (*(*v3 + 1304))(v10);
    v8 = (*(*v3 + 1376))();
    v11 = (*(*v3 + 992))();
    v12 = (*(*v3 + 416))(v11);
    (*(*v3 + 440))(v12);
  }

  else
  {
    v8 = 0;
    v9 = 5;
  }

  type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  sub_1A48DA3E0(v9, v8 & 1, &v14);

  sub_1A4366520(v9);

  *a1 = v14;
  result = *&v15;
  *(a1 + 8) = v15;
  return result;
}

double sub_1A4365E50@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7261646152;
  *a1 = xmmword_1A5332AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

double sub_1A4365EA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  sub_1A4366440(0, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E69E6720]);
  sub_1A524B694();
  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1A4365F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5249204();
  *a1 = result;
  return result;
}

unsigned __int8 *sub_1A4365F80(unsigned __int8 *result, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *result;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }
  }

  else if (v5 == 2 || (v4 & 1) != 0)
  {
    return result;
  }

  if (v5)
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      (*(*v6 + 1048))(0);
    }

    sub_1A4365B84(&v13);
    v7 = *(v3 + 40);
    v15[0] = *(v3 + 24);
    v15[1] = v7;
    v8 = *(v3 + 40);
    v11 = *(v3 + 24);
    v12 = v8;
    v9[2] = v13;
    v10 = v14;
    sub_1A4366490(v15, v9);
    sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A3DAECB8(v11, *(&v11 + 1));
  }

  return result;
}

uint64_t sub_1A43660A4(uint64_t a1)
{
  sub_1A3F1EA2C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4366100(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4366440(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm_46()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43661D0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  if (*(v2 + 16))
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1F0);

    v5(v6);
  }

  sub_1A4366440(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = sub_1A524C674();
  *(v7 + 40) = v8;
  (*((*v4 & *a1) + 0x1F8))(v7);

  return (*((*v4 & *a1) + 0x200))(0);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore11TTRWorkflowVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4366378(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A43663D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1A4366440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4366490(uint64_t a1, uint64_t a2)
{
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4366520(id a1)
{
  if (a1 != 5)
  {
    sub_1A3DB9B78(a1);
  }
}

void LemonadePreviewableCollectionCurationContext.__allocating_init(collection:environmentValues:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  swift_defaultActor_initialize();
  *(v2 + 128) = 1;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 6;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind) = MEMORY[0x1E69E7CC8];
  *(v2 + 112) = v3;
  *(v2 + 120) = a1;
  sub_1A5245BA4();
}

void LemonadePreviewableCollectionCurationContext.init(collection:environmentValues:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_defaultActor_initialize();
  *(v1 + 128) = 1;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 6;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind) = MEMORY[0x1E69E7CC8];
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
  sub_1A5245BA4();
}

uint64_t sub_1A43666DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *(a1 + 24) = &type metadata for PhotosPreviewableCollection;
  *a1 = v2;
  *(a1 + 8) = v3;
  return swift_unknownObjectRetain();
}

uint64_t sub_1A43666FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1A436678C;

  return sub_1A43670B8();
}

uint64_t sub_1A436678C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1A436689C, v1, 0);
}

uint64_t sub_1A436689C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind);
  if (v1 == 6)
  {
    return sub_1A524E6E4();
  }

  **(v0 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A436696C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A43669FC;

  return sub_1A43670B8();
}

uint64_t sub_1A43669FC()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A4366B0C, v1, 0);
}

uint64_t sub_1A4366B0C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A524E6E4();
}

uint64_t sub_1A4366BE4(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = *a1;
  v5 = (*(*v1 + 168) + **(*v1 + 168));
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1A4366D00;

  return v5();
}

uint64_t sub_1A4366D00(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4366E18, v2, 0);
}

uint64_t sub_1A4366E18()
{
  v1 = sub_1A408F39C(*(v0 + 64), *(v0 + 56));

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
    swift_beginAccess();
    if (*(*(v2 + v3) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A4367804();
    swift_allocError();
    v5 = 6;
  }

  else
  {
    sub_1A4367804();
    swift_allocError();
    v5 = *(v0 + 64);
  }

  *v4 = v5;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A4366F90(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
  v5 = *a2;
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  swift_getObjectType();
  sub_1A4368610(a1, v5, isUniquelyReferenced_nonNull_native, &v8);
  *(v2 + v4) = v8;
  return swift_endAccess();
}

id sub_1A436703C()
{
  v1 = v0;
  v2 = *(v0 + 128);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1A4910738();
    v4 = *(v1 + 128);
    *(v1 + 128) = v3;
    v5 = v3;
    sub_1A3C327F4(v4);
  }

  sub_1A3C327E4(v2);
  return v3;
}

uint64_t sub_1A43670D8()
{
  v1 = *(v0 + 64);
  if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x1E69E7CC0];
    v2 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
    swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1BA3C0 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1BA3C8);
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "No implicit curation provided, falling back gracefully", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }

    v7 = static LemonadeCurationKind.allCases.getter();
    v8 = v7[2];
    if (v8)
    {
      v9 = 32;
      sub_1A3F5F320();
      do
      {
        *(v0 + 16) = *(v7 + v9);
        *(v0 + 72) = 5;
        if ((sub_1A524C594() & 1) == 0 && *(*(v1 + v2) + 16))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        ++v9;
        --v8;
      }

      while (v8);
    }

    if (*(*(v1 + v2) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10 = *(v0 + 64);
    *(v10 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 3;
    swift_beginAccess();
    *(v10 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = *(v13 + 16);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1A4367804()
{
  result = qword_1EB1BA3E8[0];
  if (!qword_1EB1BA3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA3E8);
  }

  return result;
}

id sub_1A4367858(void *a1)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v2 = result;
    type metadata accessor for PhotoKitFetcher();
    PhotoKitFetcher.__allocating_init(_:)(v2);
    PhotosEnvironmentValues.photosCurationContext.getter();
  }

  __break(1u);
  __break(1u);
  return result;
}

void LemonadePreviewableCollectionCurationContext.deinit()
{
  swift_unknownObjectRelease();
  sub_1A3C327F4(*(v0 + 128));
  sub_1A5245BA4();
}

void LemonadePreviewableCollectionCurationContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1A3C327F4(*(v0 + 128));
  sub_1A5245BA4();
}

uint64_t sub_1A4367AD4(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBB594;

  return v6(a1);
}

uint64_t sub_1A4367C18(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return v6(a1);
}

uint64_t sub_1A4367D3C()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t sub_1A4367E4C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1BA3C8);
  __swift_project_value_buffer(v0, qword_1EB1BA3C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4367EC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D548(0, &qword_1EB138880);
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

unint64_t sub_1A4367FBC(unsigned __int8 a1)
{
  sub_1A4368E5C();
  v1 = sub_1A524C4A4();
  return sub_1A4368024(a1, v1);
}

unint64_t sub_1A4368024(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A4368EB0();
    do
    {
      if (sub_1A524C594())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1A43680EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4368DF0();
  v31 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1A4368E5C();
      result = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_1A4368378()
{
  v1 = v0;
  sub_1A4368DF0();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1A43684C8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  v8 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A4367EC4(0, *(v8 + 2) + 1, 1, v8);
    *(a3 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A4367EC4((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v8[v11 + 32] = v7;
  *(a3 + 16) = v8;
  swift_endAccess();
  v12 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a4 + v12);
  *(a4 + v12) = 0x8000000000000000;
  sub_1A4368610(a2, v7, v13, &v15);
  *(a4 + v12) = v15;
  return swift_endAccess();
}

unint64_t sub_1A4368610(uint64_t a1, unsigned __int8 a2, char a3, void *a4)
{
  v8 = *a4;
  result = sub_1A4367FBC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A43680EC(v14, a3 & 1);
      result = sub_1A4367FBC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4368378();
      result = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A436875C(uint64_t a1)
{
  result = sub_1A4368830(&qword_1EB129350);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LemonadePreviewableCollectionCurationContext()
{
  result = qword_1EB177150;
  if (!qword_1EB177150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43687EC(uint64_t a1)
{
  result = sub_1A4368830(&qword_1EB129358);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4368830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadePreviewableCollectionCurationContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.currentCurationKind.getter(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return v6(a1);
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.availableCurationKinds.getter()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.assets(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D43A98;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for LemonadeAssetCollectionCurationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 6;
  v9 = v7 - 6;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4368DBC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A4368DD0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

void sub_1A4368DF0()
{
  if (!qword_1EB138860)
  {
    sub_1A40091D8();
    sub_1A4368E5C();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138860);
    }
  }
}

unint64_t sub_1A4368E5C()
{
  result = qword_1EB138870;
  if (!qword_1EB138870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138870);
  }

  return result;
}

unint64_t sub_1A4368EB0()
{
  result = qword_1EB138878;
  if (!qword_1EB138878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138878);
  }

  return result;
}

void *sub_1A4368F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1A52411B4();
  sub_1A5241604();
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[2] = a4;
  v10[3] = a5;
  if (a3 < 0)
  {
  }

  else
  {
    a1 = 0;
  }

  v10[7] = a1;
  return v10;
}

void *sub_1A4368FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A52411B4();
  sub_1A5241604();
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[2] = a4;
  v5[3] = a5;
  if (a3 < 0)
  {
  }

  else
  {
    a1 = 0;
  }

  v5[7] = a1;
  return v5;
}

uint64_t type metadata accessor for PhotosViewPersonBannerModel()
{
  result = qword_1EB1BA680;
  if (!qword_1EB1BA680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1A43691B4()
{

  sub_1A4369270(v0[4], v0[5], v0[6]);

  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A4369270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v3 = vars8;
  }
}

uint64_t sub_1A43692BC()
{

  sub_1A4369270(v0[4], v0[5], v0[6]);

  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43693B4(uint64_t a1)
{
  result = sub_1A436949C(&qword_1EB138890, type metadata accessor for PhotosViewPersonBannerModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A436949C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A43694E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A436956C()
{
  result = sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
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

uint64_t sub_1A4369668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 24))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A43696E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A4369764(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_1A4369794()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1BA698);
  __swift_project_value_buffer(v6, qword_1EB1BA698);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static DeleteAssetsIntent.title.modify())()
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1BA698);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4369A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BA698);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A4369B44(uint64_t a1)
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BA698);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static DeleteAssetsIntent.parameterSummary.getter()
{
  sub_1A436B3E0(0, &qword_1EB1388A0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A436B3E0(0, &qword_1EB1388B0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4369DD0();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4369E48();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4369DD0()
{
  result = qword_1EB1388A8;
  if (!qword_1EB1388A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388A8);
  }

  return result;
}

void sub_1A4369E48()
{
  if (!qword_1EB1388B8)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1388B8);
    }
  }
}

uint64_t DeleteAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v1 = sub_1A5240334();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v22 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v20 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240BA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v19[0] = sub_1A5240BB4();
  v13 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  sub_1A3F57E84();
  v19[1] = v14;
  sub_1A524C5B4();
  sub_1A5241244();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v16(v10, v15, v7);
  v17 = v20;
  sub_1A5240BC4();
  (*(v13 + 56))(v17, 0, 1, v19[0]);
  v26 = 0;
  sub_1A5240174();
  (*(v23 + 104))(v22, *MEMORY[0x1E695A500], v24);
  sub_1A3F587A8();
  sub_1A3F58824();
  result = sub_1A5240034();
  *v25 = result;
  return result;
}

uint64_t DeleteAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A436A3B4, v5, v4);
}

uint64_t sub_1A436A3B4()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4369DD0();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A5332F98);
}

uint64_t sub_1A436A4F4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A436A58C, v4, v3);
}

uint64_t sub_1A436A58C()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[7];
  v0[14] = v2;
  v0[8] = v1;
  v3 = sub_1A4369DD0();
  v4 = AppIntent.px_intentName.getter();
  v6 = v5;
  v0[15] = v5;
  v0[2] = v1;
  v0[5] = &type metadata for DeleteAssetsIntent;
  v0[6] = v3;

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DB3B20;

  return sub_1A436AB58(v2, v4, v6);
}

uint64_t sub_1A436A6B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A436A4F4(a1, v1);
}

uint64_t sub_1A436A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return (sub_1A436AB58)(a1, a2, a3, a4);
}

void (*DeleteAssetsIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A436A8C4()
{
  sub_1A436B3E0(0, &qword_1EB1388A0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A436B3E0(0, &qword_1EB1388B0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4369E48();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A436AA80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return DeleteAssetsIntent.perform()(a1);
}

uint64_t sub_1A436AB1C(uint64_t a1)
{
  v2 = sub_1A4369DD0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A436AB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A436AC50, v6, v5);
}

void sub_1A436AC50()
{
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A436B018()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A436B1B8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A436B134;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A436B134()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A436B1B8()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A436B238()
{
  result = qword_1EB1388C0;
  if (!qword_1EB1388C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388C0);
  }

  return result;
}

unint64_t sub_1A436B294()
{
  result = qword_1EB1388C8;
  if (!qword_1EB1388C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388C8);
  }

  return result;
}

unint64_t sub_1A436B2EC()
{
  result = qword_1EB1388D0;
  if (!qword_1EB1388D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388D0);
  }

  return result;
}

unint64_t sub_1A436B36C()
{
  result = qword_1EB1388D8;
  if (!qword_1EB1388D8)
  {
    sub_1A436B3E0(255, &qword_1EB1388E0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388D8);
  }

  return result;
}

void sub_1A436B3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4369DD0();
    v7 = a3(a1, &type metadata for DeleteAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_1A436B45C(void *a1)
{
  v1 = a1;
  v2 = [v1 appContentController];
  v3 = [v2 eventTracker];

  return v3;
}

id sub_1A436B4D4(void *a1)
{
  v1 = a1;
  v2 = [v1 appContentController];
  v3 = [v2 numberOfItemsToPlayInline];

  return v3;
}

void sub_1A436B534(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = [v5 appContentController];
  [v4 setNumberOfItemsToPlayInline_];
}

id sub_1A436B5A4(void *a1)
{
  v1 = a1;
  if ([v1 contentControllerHelper])
  {

    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A436B67C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 appContentController];
  v6 = [v5 *a3];

  return v6;
}

void sub_1A436B6E8(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v6 = [v7 appContentController];
  [v6 *a4];
}

uint64_t sub_1A436B7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MapOptionsChooseMapView();
  v9 = *(v8 + 20);
  *(a2 + v9) = swift_getKeyPath();
  v10 = MEMORY[0x1E697DCB8];
  sub_1A437049C(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v11 = *(v8 + 24);
  *(a2 + v11) = swift_getKeyPath();
  sub_1A437049C(0, &qword_1EB128A38, sub_1A3EBE398, v10);
  swift_storeEnumTagMultiPayload();
  v13[1] = 0x4020000000000000;
  (*(v5 + 104))(v7, *MEMORY[0x1E6980F30], v4);
  sub_1A3F185D4();
  result = sub_1A52480B4();
  *a2 = sub_1A41C6230;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for MapOptionsChooseMapView()
{
  result = qword_1EB1BA9E0;
  if (!qword_1EB1BA9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1A436B9D0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A436BC7C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249584();
  v15 = v1;
  LODWORD(v16) = 0;
  sub_1A4370718(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  sub_1A524EE64();
  sub_1A436BD10(0);
  sub_1A4370718(&qword_1EB138A60, sub_1A436BD10);
  sub_1A5247CC4();
  sub_1A524BC04();
  sub_1A5248AD4();
  (*(v6 + 32))(a1, v8, v5);
  sub_1A436D280(0, &qword_1EB138A68, sub_1A436BC7C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v10 = a1 + *(v9 + 36);
  v11 = v21;
  *(v10 + 64) = v20;
  *(v10 + 80) = v11;
  *(v10 + 96) = v22;
  v12 = v17;
  *v10 = v16;
  *(v10 + 16) = v12;
  result = v19;
  *(v10 + 32) = v18;
  *(v10 + 48) = result;
  return result;
}

void sub_1A436BC7C()
{
  if (!qword_1EB1388E8)
  {
    sub_1A436BD10(255);
    sub_1A4370718(&qword_1EB138A60, sub_1A436BD10);
    v0 = sub_1A5247CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1388E8);
    }
  }
}

void sub_1A436BD44()
{
  if (!qword_1EB1388F8)
  {
    sub_1A436BDB4(255);
    sub_1A436CB6C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1388F8);
    }
  }
}

void sub_1A436BDFC()
{
  if (!qword_1EB138908)
  {
    sub_1A436BE90(255);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138908);
    }
  }
}

void sub_1A436BEC4()
{
  if (!qword_1EB138918)
  {
    sub_1A436BF28(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138918);
    }
  }
}

void sub_1A436C03C()
{
  if (!qword_1EB138940)
  {
    sub_1A436C110(255);
    sub_1A52489A4();
    sub_1A436C364();
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138940);
    }
  }
}

void sub_1A436C158()
{
  if (!qword_1EB138950)
  {
    sub_1A436C1EC(255);
    sub_1A436CABC(&qword_1EB138968, sub_1A436C1EC, sub_1A436C2B4);
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138950);
    }
  }
}

void sub_1A436C220()
{
  if (!qword_1EB138960)
  {
    sub_1A3FA9EEC(255, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138960);
    }
  }
}

unint64_t sub_1A436C2B4()
{
  result = qword_1EB138970;
  if (!qword_1EB138970)
  {
    sub_1A436C220();
    sub_1A3E44C04();
    sub_1A4370718(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138970);
  }

  return result;
}

unint64_t sub_1A436C364()
{
  result = qword_1EB138978;
  if (!qword_1EB138978)
  {
    sub_1A436C110(255);
    sub_1A4370718(&qword_1EB138980, sub_1A436C158);
    sub_1A4370718(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138978);
  }

  return result;
}

void sub_1A436C444()
{
  if (!qword_1EB138988)
  {
    sub_1A436D280(255, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1A436C848();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138988);
    }
  }
}

void sub_1A436C4E0()
{
  if (!qword_1EB138998)
  {
    sub_1A436C574(255);
    sub_1A4370718(&qword_1EB1389E8, sub_1A436C574);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138998);
    }
  }
}

void sub_1A436C5A8()
{
  if (!qword_1EB1389A8)
  {
    sub_1A436C610(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1389A8);
    }
  }
}

void sub_1A436C6D0()
{
  if (!qword_1EB1389C8)
  {
    sub_1A436C764(255);
    sub_1A4370718(&qword_1EB1389E0, sub_1A436C764);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1389C8);
    }
  }
}

void sub_1A436C798()
{
  if (!qword_1EB1389D8)
  {
    sub_1A436C800(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1389D8);
    }
  }
}

unint64_t sub_1A436C848()
{
  result = qword_1EB1389F0;
  if (!qword_1EB1389F0)
  {
    sub_1A436D280(255, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
    sub_1A4370718(&qword_1EB1389F8, sub_1A436C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1389F0);
  }

  return result;
}

void sub_1A436C930()
{
  if (!qword_1EB138A00)
  {
    sub_1A436C9C4(255);
    sub_1A436CABC(&qword_1EB138A18, sub_1A436C9C4, sub_1A436CB38);
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138A00);
    }
  }
}

void sub_1A436C9F8()
{
  if (!qword_1EB138A10)
  {
    sub_1A5248A14();
    sub_1A4370718(&qword_1EB128090, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249954();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138A10);
    }
  }
}

uint64_t sub_1A436CABC(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_1A436CBA0()
{
  if (!qword_1EB138A38)
  {
    sub_1A436CC2C();
    sub_1A437087C(255, &qword_1EB1276F0, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138A38);
    }
  }
}

void sub_1A436CC2C()
{
  if (!qword_1EB138A40)
  {
    sub_1A436CDB0();
    sub_1A3EC1A14();
    sub_1A436CEB4();
    sub_1A52489A4();
    sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4);
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A4370718(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138A40);
    }
  }
}

void sub_1A436CDB0()
{
  if (!qword_1EB138A48)
  {
    sub_1A436CEB4();
    sub_1A52489A4();
    sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4);
    sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138A48);
    }
  }
}

void sub_1A436CEB4()
{
  if (!qword_1EB138A50)
  {
    sub_1A436CF10();
    v0 = sub_1A524B764();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138A50);
    }
  }
}

unint64_t sub_1A436CF10()
{
  result = qword_1EB1BA950[0];
  if (!qword_1EB1BA950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA950);
  }

  return result;
}

uint64_t sub_1A436CF64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CB6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1A436BDB4(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1A436D308(&v22 - v16);
  type metadata accessor for MapOptionsChooseMapViewModel();
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
  v18 = sub_1A5247EB4();
  sub_1A43701CC(v18 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, v5, sub_1A4370038);

  v24 = a1;
  sub_1A436F8E8(sub_1A437012C, v11);
  sub_1A43707F4(v5, sub_1A4370038);
  sub_1A4370158(v17, v14, sub_1A436BDB4);
  sub_1A4370158(v11, v8, sub_1A436CB6C);
  v19 = v23;
  sub_1A4370158(v14, v23, sub_1A436BDB4);
  sub_1A436BD44();
  sub_1A4370158(v8, v19 + *(v20 + 48), sub_1A436CB6C);
  sub_1A4370320(v11, sub_1A436CB6C);
  sub_1A4370320(v17, sub_1A436BDB4);
  sub_1A4370320(v8, sub_1A436CB6C);
  return sub_1A4370320(v14, sub_1A436BDB4);
}

void sub_1A436D280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A436D308@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  sub_1A436BE90(0);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BF28(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v36 - v11;
  sub_1A437029C(0, &qword_1EB138AA0, sub_1A436BDFC, sub_1A436BE90, MEMORY[0x1E697F948]);
  v40 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  sub_1A436BDFC();
  v41 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A52486A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  type metadata accessor for MapOptionsChooseMapView();
  sub_1A4248EC0(v24);
  (*(v19 + 104))(v21, *MEMORY[0x1E697E6C8], v18);
  sub_1A4370718(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  v25 = sub_1A524C534();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v26(v24, v18);
  if (v25)
  {
    v27 = v37;
    sub_1A436DAE0(0, v37);
    v28 = v38;
    sub_1A436DAE0(1uLL, v38);
    sub_1A4370158(v27, v7, sub_1A436BF28);
    v29 = v36;
    sub_1A4370158(v28, v36, sub_1A436BF28);
    v30 = v39;
    sub_1A4370158(v7, v39, sub_1A436BF28);
    sub_1A436BEC4();
    sub_1A4370158(v29, v30 + *(v31 + 48), sub_1A436BF28);
    sub_1A4370320(v29, sub_1A436BF28);
    sub_1A4370320(v7, sub_1A436BF28);
    sub_1A4370158(v30, v14, sub_1A436BE90);
    swift_storeEnumTagMultiPayload();
    sub_1A4370718(&qword_1EB138AB0, sub_1A436BDFC);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90);
    sub_1A5249744();
    sub_1A4370320(v30, sub_1A436BE90);
    sub_1A4370320(v28, sub_1A436BF28);
    v32 = v27;
    v33 = sub_1A436BF28;
  }

  else
  {
    *v17 = sub_1A5249314();
    *(v17 + 1) = 0x4034000000000000;
    v17[16] = 0;
    sub_1A4370500(0, &qword_1EB138AA8, sub_1A436BE90);
    sub_1A436D948(&v17[*(v34 + 44)]);
    sub_1A4370158(v17, v14, sub_1A436BDFC);
    swift_storeEnumTagMultiPayload();
    sub_1A4370718(&qword_1EB138AB0, sub_1A436BDFC);
    sub_1A4370718(&qword_1EB138A28, sub_1A436BE90);
    sub_1A5249744();
    v33 = sub_1A436BDFC;
    v32 = v17;
  }

  return sub_1A4370320(v32, v33);
}

uint64_t sub_1A436D948@<X0>(uint64_t a1@<X8>)
{
  sub_1A436BF28(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1A436DAE0(0, &v16 - v12);
  sub_1A436DAE0(1uLL, v10);
  sub_1A4370158(v13, v7, sub_1A436BF28);
  sub_1A4370158(v10, v4, sub_1A436BF28);
  sub_1A4370158(v7, a1, sub_1A436BF28);
  sub_1A436BEC4();
  sub_1A4370158(v4, a1 + *(v14 + 48), sub_1A436BF28);
  sub_1A4370320(v10, sub_1A436BF28);
  sub_1A4370320(v13, sub_1A436BF28);
  sub_1A4370320(v4, sub_1A436BF28);
  return sub_1A4370320(v7, sub_1A436BF28);
}

uint64_t sub_1A436DAE0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v145 = a2;
  sub_1A436C610(0);
  v141 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v143 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v142 = &v123 - v8;
  v9 = sub_1A52489A4();
  v137 = *(v9 - 8);
  v138 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v136 = (&v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = sub_1A5249524();
  v135 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapOptionsChooseMapView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C158();
  v126 = *(v17 - 8);
  v127 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C110(0);
  v128 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C03C();
  v134 = v23;
  v132 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C000(0);
  v129 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v149 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BFB8(0);
  v125 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v150 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436BF70(0);
  v139 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43701CC(v3, v16, type metadata accessor for MapOptionsChooseMapView);
  v31 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_1A4370234(v16, v33 + v31, type metadata accessor for MapOptionsChooseMapView);
  *(v33 + v32) = a1;
  v151 = a1;
  sub_1A436C1EC(0);
  sub_1A436CABC(&qword_1EB138968, sub_1A436C1EC, sub_1A436C2B4);
  sub_1A524B704();
  v35 = *v3;
  v34 = *(v3 + 8);
  v144 = v3;
  LODWORD(v33) = *(v3 + 16);
  v36 = type metadata accessor for MapOptionsChooseMapViewModel();
  v37 = sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
  v148 = v33;
  v146 = v37;
  v147 = v36;
  sub_1A5247EB4();
  v38 = sub_1A4951D80();

  v39 = a1;
  if (v38 == a1)
  {
    sub_1A52494E4();
    v40 = v131;
  }

  else
  {
    *&v166 = MEMORY[0x1E69E7CC0];
    sub_1A4370718(&qword_1EB12EC88, MEMORY[0x1E697F5E0]);
    sub_1A3F37230(0);
    sub_1A4370718(&qword_1EB12EC98, sub_1A3F37230);
    v40 = v131;
    sub_1A524E224();
  }

  sub_1A4370718(&qword_1EB138980, sub_1A436C158);
  v41 = v127;
  sub_1A524AAF4();
  (*(v135 + 8))(v12, v40);
  (*(v126 + 8))(v19, v41);
  v42 = v136;
  sub_1A5248994();
  sub_1A436C364();
  sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248]);
  v43 = v130;
  v44 = v138;
  sub_1A524A934();
  (*(v137 + 8))(v42, v44);
  sub_1A43707F4(v22, sub_1A436C110);
  v133 = v34;
  sub_1A5247EB4();
  v45 = sub_1A4951D80();

  v124 = v39;
  v46 = v45 != v39;
  v47 = v149;
  (*(v132 + 32))(v149, v43, v134);
  *(v47 + *(v129 + 36)) = v46;
  v48 = sub_1A5249574();
  v49 = v150 + *(v125 + 36);
  *v49 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 0;
  v50 = v49;
  v138 = v49;
  sub_1A4370500(0, &qword_1EB138AB8, sub_1A436C574);
  v136 = (v50 + *(v51 + 44));
  v135 = sub_1A5249314();
  v159 = 1;
  *&v166 = PXMapOptionsMapStyle.title.getter(v39);
  *(&v166 + 1) = v52;
  sub_1A3D5F9DC();
  v53 = sub_1A524A464();
  v55 = v54;
  v57 = v56;
  v137 = v35;
  sub_1A524A0E4();
  v58 = sub_1A524A3C4();
  v60 = v59;
  v62 = v61;
  v64 = v63;

  sub_1A3E04DF4(v53, v55, v57 & 1);

  KeyPath = swift_getKeyPath();
  v66 = swift_getKeyPath();
  *&v160 = v58;
  *(&v160 + 1) = v60;
  LOBYTE(v161) = v62 & 1;
  *(&v161 + 1) = v174[0];
  DWORD1(v161) = *(v174 + 3);
  *(&v161 + 1) = v64;
  *&v162 = KeyPath;
  *(&v162 + 1) = 0x3FE3333333333333;
  *&v163 = v66;
  *(&v163 + 1) = 1;
  LOBYTE(v164) = 0;
  LOBYTE(v157) = 0;
  v155 = v162;
  v156 = v163;
  v153 = v160;
  v154 = v161;
  v173 = 1;
  *&v166 = v58;
  *(&v166 + 1) = v60;
  LOBYTE(v167) = v62 & 1;
  DWORD1(v167) = *(v174 + 3);
  *(&v167 + 1) = v174[0];
  *(&v167 + 1) = v64;
  *&v168 = KeyPath;
  *(&v168 + 1) = 0x3FE3333333333333;
  *&v169 = v66;
  *(&v169 + 1) = 1;
  LOBYTE(v170) = 0;
  sub_1A43701CC(&v160, v152, sub_1A436C800);
  sub_1A43707F4(&v166, sub_1A436C800);
  v162 = v155;
  v163 = v156;
  v160 = v153;
  v161 = v154;
  v164 = v157;
  v165 = 1;
  v168 = v155;
  v169 = v156;
  v166 = v153;
  v167 = v154;
  v170 = v157;
  v171 = 0;
  v172 = 1;
  sub_1A43701CC(&v160, v152, sub_1A436C764);
  sub_1A43707F4(&v166, sub_1A436C764);
  *&v158[39] = v162;
  *&v158[55] = v163;
  *&v158[71] = v164;
  v158[87] = v165;
  *&v158[7] = v160;
  *&v158[23] = v161;
  LOBYTE(v53) = v159;
  LOBYTE(v64) = sub_1A524A0C4();
  sub_1A5247BC4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v152[0] = 0;
  LOBYTE(KeyPath) = sub_1A524A054();
  sub_1A5247BC4();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = v142;
  v84 = &v142[*(v141 + 36)];
  sub_1A524BBD4();
  LOBYTE(v60) = sub_1A524A064();
  sub_1A41CD494(0);
  v84[*(v85 + 36)] = v60;
  v86 = *v158;
  *(v83 + 33) = *&v158[16];
  *(v83 + 17) = v86;
  v87 = *&v158[48];
  *(v83 + 81) = *&v158[64];
  v88 = *&v158[32];
  *(v83 + 65) = v87;
  *v83 = v135;
  *(v83 + 8) = 0;
  *(v83 + 16) = v53;
  *(v83 + 97) = *&v158[80];
  *(v83 + 49) = v88;
  *(v83 + 112) = v64;
  *(v83 + 120) = v68;
  *(v83 + 128) = v70;
  *(v83 + 136) = v72;
  *(v83 + 144) = v74;
  *(v83 + 152) = 0;
  *(v83 + 160) = KeyPath;
  *(v83 + 168) = v76;
  *(v83 + 176) = v78;
  *(v83 + 184) = v80;
  *(v83 + 192) = v82;
  *(v83 + 200) = 0;
  v89 = v143;
  sub_1A43701CC(v83, v143, sub_1A436C610);
  v90 = v136;
  *v136 = 0;
  *(v90 + 8) = 1;
  v91 = v90;
  sub_1A436C5A8();
  sub_1A43701CC(v89, v91 + *(v92 + 48), sub_1A436C610);
  sub_1A43707F4(v83, sub_1A436C610);
  sub_1A43707F4(v89, sub_1A436C610);
  sub_1A5247EB4();
  v93 = sub_1A4951D80();

  v94 = v124;
  LOBYTE(KeyPath) = v93 == v124;
  sub_1A436D280(0, &qword_1EB138990, sub_1A436C4E0, MEMORY[0x1E69805C0], MEMORY[0x1E697E830]);
  v96 = v138;
  *(v138 + *(v95 + 36)) = KeyPath;
  v97 = sub_1A524BC74();
  v99 = v98;
  sub_1A436C444();
  v101 = (v96 + *(v100 + 36));
  *v101 = v97;
  v101[1] = v99;
  v102 = v150;
  sub_1A437056C(v149, v150, sub_1A436C000);
  v103 = v140;
  v104 = &v140[*(v139 + 36)];
  v105 = *(sub_1A5248A14() + 20);
  v106 = *MEMORY[0x1E697F468];
  v107 = sub_1A52494A4();
  (*(*(v107 - 8) + 104))(&v104[v105], v106, v107);
  __asm { FMOV            V0.2D, #10.0 }

  *v104 = _Q0;
  sub_1A3E42C88();
  *&v104[*(v113 + 36)] = 256;
  sub_1A437056C(v102, v103, sub_1A436BFB8);
  v114 = sub_1A524BC74();
  v116 = v115;
  sub_1A436BF28(0);
  v118 = v145;
  v119 = v145 + *(v117 + 36);
  sub_1A436EBFC(v94, v119);
  sub_1A436C930();
  v121 = (v119 + *(v120 + 36));
  *v121 = v114;
  v121[1] = v116;
  return sub_1A437056C(v103, v118, sub_1A436BF70);
}

uint64_t sub_1A436E8C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B554();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C220();
  v9 = v8;
  v20[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  PXMapOptionsMapStyle.imageName.getter(a1);
  v13 = sub_1A524C634();

  v14 = [v12 px:v13 imageNamed:?];

  if (v14)
  {
    v15 = v14;
    sub_1A524B524();
    (*(v5 + 104))(v7, *MEMORY[0x1E6981630], v4);
    v16 = sub_1A524B5C4();

    (*(v5 + 8))(v7, v4);
    v20[3] = v16;
    v20[4] = 0;
    v21 = 1;
    v20[1] = PXMapOptionsMapStyle.title.getter(a1);
    v20[2] = v17;
    sub_1A3FA9EEC(0, &qword_1EB128580, MEMORY[0x1E6981748], MEMORY[0x1E697F578], MEMORY[0x1E697E830]);
    sub_1A3E44C04();
    sub_1A3D5F9DC();
    sub_1A524AC94();

    sub_1A4370234(v11, a2, sub_1A436C220);
    return (*(v20[0] + 56))(a2, 0, 1, v9);
  }

  else
  {
    v19 = *(v20[0] + 56);

    return v19(a2, 1, 1, v9);
  }
}

uint64_t sub_1A436EBFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436C9F8();
  v8 = v7;
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapViewModel();
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
  sub_1A5247EB4();
  v11 = sub_1A4951D80();

  if (v11 == a1)
  {
    v12 = *(v4 + 20);
    v13 = *MEMORY[0x1E697F468];
    v14 = sub_1A52494A4();
    (*(*(v14 - 8) + 104))(&v6[v12], v13, v14);
    __asm { FMOV            V0.2D, #10.0 }

    *v6 = _Q0;
    v20 = [objc_opt_self() systemBlueColor];
    v21 = sub_1A524B284();
    sub_1A5247EE4();
    v22 = MEMORY[0x1E697EAF0];
    sub_1A43701CC(v6, v10, MEMORY[0x1E697EAF0]);
    v23 = *&v37 * 0.5;
    v24 = &v10[*(v8 + 68)];
    sub_1A43701CC(v6, v24, v22);
    *(v24 + *(sub_1A5248A04() + 20)) = v23;
    sub_1A43705D4();
    v26 = v24 + *(v25 + 36);
    v27 = v38;
    *v26 = v37;
    *(v26 + 16) = v27;
    *(v26 + 32) = v39;
    sub_1A4370668();
    *(v24 + *(v28 + 52)) = v21;
    *(v24 + *(v28 + 56)) = 256;
    v29 = sub_1A524BC74();
    v31 = v30;
    sub_1A43707F4(v6, MEMORY[0x1E697EAF0]);
    sub_1A4370760();
    v33 = (v24 + *(v32 + 36));
    *v33 = v29;
    v33[1] = v31;
    sub_1A437056C(v10, a2, sub_1A436C9F8);
    return (*(v36 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v35 = *(v36 + 56);

    return v35(a2, 1, 1, v8);
  }
}

void sub_1A436EFA0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v64 = a2;
  sub_1A3EC2854();
  v63 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v5;
  v6 = sub_1A52486A4();
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v51 - v9;
  sub_1A3EC1A14();
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52489A4();
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CEB4();
  v16 = v15;
  v66 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CDB0();
  v56 = v19;
  v55 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A436CC2C();
  v58 = *(v22 - 8);
  v59 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MapOptionsChooseMapViewModel();
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
  v24 = v65;
  sub_1A5247EB4();
  v71 = v70;
  sub_1A436CF10();
  sub_1A524B704();
  sub_1A5248994();
  v25 = sub_1A4370718(&qword_1EB138A58, sub_1A436CEB4);
  v26 = sub_1A4370718(&qword_1EB122F70, MEMORY[0x1E697C248]);
  v54 = v21;
  v52 = v26;
  sub_1A524A934();
  v27 = *(v67 + 8);
  v67 = v12;
  v28 = v12;
  v29 = v68;
  v27(v14, v28);
  v30 = *(v66 + 8);
  v66 = v16;
  v30(v18, v16);
  v31 = v69;
  v32 = *(v69 + 104);
  v32(v29, *MEMORY[0x1E697E6F8], v6);
  v32(v24, *MEMORY[0x1E697E728], v6);
  sub_1A4370718(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  if (sub_1A524C544())
  {
    v33 = *(v31 + 32);
    v51 = v25;
    v34 = v60;
    v33(v60, v29, v6);
    v35 = v63;
    v33((v34 + *(v63 + 48)), v24, v6);
    v36 = v53;
    sub_1A43701CC(v34, v53, sub_1A3EC2854);
    v37 = *(v35 + 48);
    v38 = v61;
    v33(v61, v36, v6);
    v39 = *(v31 + 8);
    v39(v36 + v37, v6);
    sub_1A4370234(v34, v36, sub_1A3EC2854);
    v33((v38 + *(v62 + 36)), (v36 + *(v35 + 48)), v6);
    v39(v36, v6);
    v72 = v66;
    v73 = v67;
    v74 = v51;
    v75 = v52;
    swift_getOpaqueTypeConformance2();
    sub_1A4370718(&qword_1EB126FC0, sub_1A3EC1A14);
    v40 = v57;
    v41 = v56;
    v42 = v54;
    sub_1A524AB84();
    sub_1A43707F4(v38, sub_1A3EC1A14);
    (*(v55 + 8))(v42, v41);
    sub_1A437006C();
    v44 = *(v43 + 48);
    v45 = sub_1A5240E64();
    LOBYTE(v37) = (*(*(v45 - 8) + 48))(v70 + v44, 1, v45) == 1;
    KeyPath = swift_getKeyPath();
    v47 = swift_allocObject();
    *(v47 + 16) = v37;
    v48 = v64;
    (*(v58 + 32))(v64, v40, v59);
    sub_1A436CBA0();
    v50 = (v48 + *(v49 + 36));
    *v50 = KeyPath;
    v50[1] = sub_1A3E07024;
    v50[2] = v47;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A436F828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A437006C();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A43701CC(a1, v7, sub_1A437006C);
  v8 = *v7;
  result = sub_1A43707F4(v7 + *(v5 + 56), sub_1A3EE53E0);
  *a2 = v8;
  return result;
}

uint64_t sub_1A436F8E8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  sub_1A437006C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43701CC(v2, v13, sub_1A4370038);
  v14 = 1;
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_1A4370234(v13, v10, sub_1A437006C);
  a1(v10);
  if (!v3)
  {
    sub_1A43707F4(v10, sub_1A437006C);
    v14 = 0;
LABEL_4:
    sub_1A436CBA0();
    return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
  }

  result = sub_1A43707F4(v10, sub_1A437006C);
  __break(1u);
  return result;
}

id sub_1A436FB00(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v2 setAttributedText_];
  [v2 setNumberOfLines_];
  [v2 setTextAlignment_];
  [v2 setAdjustsFontForContentSizeCategory_];
  LODWORD(v3) = 1132068864;
  [v2 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1144750080;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  [v2 setUserInteractionEnabled_];
  return v2;
}

id sub_1A436FBE4(uint64_t a1, int a2, id a3)
{
  result = [a3 systemLayoutSizeFittingSize_];
  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1A436FC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A436FFE4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A436FC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A436FFE4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A436FCEC()
{
  sub_1A436FFE4();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A436FD40()
{
  sub_1A436FE54();
  if (v0 <= 0x3F)
  {
    sub_1A437049C(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A437049C(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A431FAA8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A436FE54()
{
  if (!qword_1EB138A70)
  {
    type metadata accessor for MapOptionsChooseMapViewModel();
    sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
    v0 = sub_1A5247ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138A70);
    }
  }
}

unint64_t sub_1A436FEE8()
{
  result = qword_1EB138A80;
  if (!qword_1EB138A80)
  {
    sub_1A436D280(255, &qword_1EB138A68, sub_1A436BC7C, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A4370718(&qword_1EB138A88, sub_1A436BC7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138A80);
  }

  return result;
}

unint64_t sub_1A436FFE4()
{
  result = qword_1EB1BAAF0[0];
  if (!qword_1EB1BAAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BAAF0);
  }

  return result;
}

void sub_1A437006C()
{
  if (!qword_1EB138A98)
  {
    sub_1A43700E0();
    sub_1A3EE53E0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138A98);
    }
  }
}

unint64_t sub_1A43700E0()
{
  result = qword_1EB126A40;
  if (!qword_1EB126A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A40);
  }

  return result;
}

uint64_t sub_1A4370158(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43701CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4370234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A437029C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4370320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4370380()
{
  v1 = *(type metadata accessor for MapOptionsChooseMapView() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  type metadata accessor for MapOptionsChooseMapViewModel();
  sub_1A4370718(&qword_1EB138A78, type metadata accessor for MapOptionsChooseMapViewModel);
  sub_1A5247EB4();
  sub_1A4952078(v2);
}

void sub_1A437049C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4370500(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A437056C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43705D4()
{
  if (!qword_1EB138AC0)
  {
    sub_1A5248A04();
    sub_1A4370718(&unk_1EB13D870, MEMORY[0x1E697EAB8]);
    v0 = sub_1A5248384();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138AC0);
    }
  }
}

void sub_1A4370668()
{
  if (!qword_1EB138AC8)
  {
    sub_1A43705D4();
    sub_1A4370718(&qword_1EB138AD0, sub_1A43705D4);
    v0 = sub_1A5247D54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138AC8);
    }
  }
}

uint64_t sub_1A4370718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4370760()
{
  if (!qword_1EB138AD8)
  {
    sub_1A4370668();
    sub_1A3FA9EEC(255, &qword_1EB12CF60, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], MEMORY[0x1E697F930]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB138AD8);
    }
  }
}

uint64_t sub_1A43707F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A437087C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A43708CC()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A437097C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4370A60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
    sub_1A52415C4();
  }
}

void sub_1A4370BC0()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4370C70(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4370D7C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
    sub_1A52415C4();
  }
}

uint64_t sub_1A4370EDC()
{
  sub_1A4370FD0();
  v0 = 1;
  if ((v1 & 1) == 0)
  {
    PhotosSearchAIStatus.status.getter(&v7);
    v6 = 1;
    if (!static SearchAIStatus.== infix(_:_:)(&v7, &v6))
    {
      sub_1A3C52C70(0, &qword_1EB120A48);
      v2 = [swift_getObjCClassFromMetadata() sharedInstance];
      v3 = [v2 forceIndexingFooter];

      if (v3)
      {
        return 1;
      }

      else
      {
        sub_1A3C52C70(0, &qword_1EB126A10);
        v4 = [swift_getObjCClassFromMetadata() sharedInstance];
        v0 = [v4 forceShowProcessingUI];
      }
    }
  }

  return v0;
}

void sub_1A4370FD0()
{
  sub_1A43710E0();
  v1 = v0 * 100.0;
  if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 9.2234e18)
  {
    sub_1A3C52C70(0, &qword_1EB120A48);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v2 indexingBannerPercentageThreshold];

    return;
  }

LABEL_7:
  __break(1u);
}

BOOL sub_1A4371098()
{
  PhotosSearchAIStatus.status.getter(&v2);
  v1 = 1;
  return static SearchAIStatus.== infix(_:_:)(&v2, &v1);
}

void sub_1A43710E0()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  v1 = *(v0 + 56);
  if (!v1 || (v2 = v1, sub_1A488C1D8(), sub_1A4371520(), sub_1A524C9C4(), sub_1A524C9C4(), v2, v6 != v5))
  {
    swift_getKeyPath();
    sub_1A52415D4();

    v3 = *(v0 + 56);
    if (v3)
    {
      v4 = v3;
      LemonadeFeatureAvailabilityMonitor.progress.getter();
    }
  }
}

void *sub_1A437125C()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

float sub_1A4371304()
{
  PhotosSearchAIStatus.status.getter(&v9);
  v8 = 1;
  if (static SearchAIStatus.== infix(_:_:)(&v9, &v8))
  {
    return 1.1;
  }

  sub_1A3C52C70(0, &qword_1EB120A48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata sharedInstance];
  v2 = [v1 forceIndexingFooter];

  if (v2)
  {
    return 1.1;
  }

  sub_1A3C52C70(0, &qword_1EB126A10);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 forceShowProcessingUI];

  if (v4)
  {
    return 1.1;
  }

  v6 = [ObjCClassFromMetadata sharedInstance];
  v7 = [v6 indexingBannerPercentageThreshold];

  return v7 / 100.0;
}

id sub_1A4371438@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_1A43714F0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A4371574(v1);
}

unint64_t sub_1A4371520()
{
  result = qword_1EB125498;
  if (!qword_1EB125498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125498);
  }

  return result;
}

void sub_1A4371574(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for LemonadeFeatureAvailabilityMonitor();
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

void sub_1A43716F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

void *sub_1A437172C()
{
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_1A43717E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
  sub_1A52415D4();

  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_1A43718B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A43718E4(v1);
}

void sub_1A43718E4(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 72);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4373250(&qword_1EB1255C0, type metadata accessor for LemonadeSearchIndexingStatus);
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for LemonadeSearchIndexingStatusGenericEmptyStateViewModel(0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_1A4371A78()
{
  v0 = swift_allocObject();
  sub_1A4371AB0();
  return v0;
}