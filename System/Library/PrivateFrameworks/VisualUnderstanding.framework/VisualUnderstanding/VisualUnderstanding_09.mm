int64_t sub_1D2209C7C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  result = sub_1D225124C();
  if (result >= v4)
  {
    if (v4 < 0)
    {
      goto LABEL_27;
    }

    if (v4 <= 1)
    {
    }

    v8 = *a1;

    v9 = -1;
    v10 = 1;
    v11 = v8;
    v22 = v4;
LABEL_12:
    swift_beginAccess();
    v12 = v9;
    v13 = v11;
    while (1)
    {
      v14 = *(a2 + 32);
      if (!*(v14 + 16))
      {
LABEL_11:
        ++v10;
        v11 = (v11 + 8);
        --v9;
        if (v10 == v22)
        {
        }

        goto LABEL_12;
      }

      v15 = v13->i64[0];
      v16 = sub_1D2176758(v13->i64[1]);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(*(v14 + 56) + 8 * v16);
      result = sub_1D2176758(v15);
      if (v19)
      {
        goto LABEL_20;
      }

      if (v18 <= 0.0)
      {
        goto LABEL_11;
      }

LABEL_21:
      if (!v8)
      {
        goto LABEL_28;
      }

      *v13 = vextq_s8(*v13, *v13, 8uLL);
      v13 = (v13 - 8);
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_11;
      }
    }

    result = sub_1D2176758(v15);
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }

    v18 = 0.0;
LABEL_20:
    if (*(*(v14 + 56) + 8 * result) >= v18)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  if (v4 >= -1)
  {
    v6 = result;
    if (v4 <= 1)
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = sub_1D2250B2C();
      *(v7 + 16) = v4 / 2;
    }

    v24[0] = (v7 + 32);
    v24[1] = (v4 / 2);

    sub_1D2209360(v24, v23, a1, v6, a2);

    *(v7 + 16) = 0;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D2209E94(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D21C8A98(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1D2209C7C(v7, a2);

  *a1 = v4;
}

uint64_t sub_1D2209F38(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 < v14 >> 3)
  {
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[v12];
    if (v10 < 8)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_49;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_11;
      }

      v19 = *v6;
      v20 = sub_1D2176758(*v8);
      if (v21)
      {
        v22 = *(*(a5 + 56) + 4 * v20);
        v23 = sub_1D2176758(v19);
        if ((v24 & 1) == 0)
        {
          if (v22 > 0.0)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      else
      {
        v23 = sub_1D2176758(v19);
        if ((v25 & 1) == 0)
        {
          goto LABEL_11;
        }

        v22 = 0.0;
      }

      if (*(*(a5 + 56) + 4 * v23) < v22)
      {
LABEL_23:
        v17 = v8;
        v18 = v9 == v8++;
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v9 = *v17;
        goto LABEL_13;
      }

LABEL_11:
      v17 = v6;
      v18 = v9 == v6++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v9;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v15] <= a4)
  {
    memmove(a4, __src, 8 * v15);
  }

  v16 = &v6[v15];
  if (v13 >= 8 && v8 > v9)
  {
LABEL_31:
    v26 = v8 - 1;
    --v7;
    while (1)
    {
      v27 = v16 - 1;
      if (*(a5 + 16))
      {
        v28 = *v26;
        v29 = sub_1D2176758(*v27);
        if (v30)
        {
          v31 = *(*(a5 + 56) + 4 * v29);
          v32 = sub_1D2176758(v28);
          if (v33)
          {
            goto LABEL_40;
          }

          if (v31 > 0.0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v32 = sub_1D2176758(v28);
          if (v34)
          {
            v31 = 0.0;
LABEL_40:
            if (*(*(a5 + 56) + 4 * v32) < v31)
            {
LABEL_43:
              if (v7 + 1 != v8)
              {
                *v7 = *v26;
              }

              if (v16 <= v6 || (--v8, v26 <= v9))
              {
                v8 = v26;
                break;
              }

              goto LABEL_31;
            }
          }
        }
      }

      if (v7 + 1 != v16)
      {
        *v7 = *v27;
      }

      --v7;
      --v16;
      if (v27 <= v6)
      {
        v16 = v27;
        break;
      }
    }
  }

LABEL_49:
  if (v8 != v6 || v8 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v6, 8 * (v16 - v6));
  }

  return 1;
}

uint64_t sub_1D220A1EC(char *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = a1;
  v10 = *a1;

  v24 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D21C88C8(v24);
  }

  v21 = v9;
  *v9 = v24;
  v11 = *(v24 + 2);
  v27 = (v24 + 16);
  if (v11 < 2)
  {
LABEL_9:

    *v21 = v24;
LABEL_11:

    return 1;
  }

  else
  {
    while (1)
    {
      v12 = *a3;
      if (!*a3)
      {
        break;
      }

      v13 = v7;
      v9 = &v24[16 * v11];
      v14 = *v9;
      v15 = &v27[2 * v11];
      v16 = v15[1];
      v17 = (v12 + 8 * *v15);
      v25 = (v12 + 8 * v16);
      v26 = (v12 + 8 * *v9);

      sub_1D2209F38(v26, v17, v25, a2, a6);
      v7 = v13;
      if (v13)
      {

        *v21 = v24;

        swift_bridgeObjectRelease_n();
        goto LABEL_11;
      }

      if (v16 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v27;
      if (v11 - 2 >= *v27)
      {
        goto LABEL_13;
      }

      *v9 = v14;
      *(v9 + 1) = v16;
      v19 = v18 - v11;
      if (v18 < v11)
      {
        goto LABEL_14;
      }

      v11 = v18 - 1;
      memmove(v15, v15 + 2, 16 * v19);
      *v27 = v11;
      if (v11 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v24;

    __break(1u);
  }

  return result;
}

uint64_t sub_1D220A404(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v121 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  if (v10 >= 1)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v12 = 0;
    v114 = a6;
    v115 = MEMORY[0x1E69E7CC0];
    v108 = a4;
    v119 = a7;
    while (1)
    {
      v13 = v12++;
      if (v12 >= v10)
      {
        v23 = v115;
      }

      else
      {
        v14 = *a3;
        v15 = *(a7 + 16);
        if (v15)
        {
          v16 = *(v14 + 8 * v13);
          v17 = sub_1D2176758(*(v14 + 8 * v12));
          v18 = 0.0;
          v19 = 0.0;
          if (v20)
          {
            v19 = *(*(a7 + 56) + 4 * v17);
          }

          v21 = sub_1D2176758(v16);
          if (v22)
          {
            v18 = *(*(a7 + 56) + 4 * v21);
          }
        }

        else
        {
          v18 = 0.0;
          v19 = 0.0;
        }

        v24 = (v13 + 2);
        if (v13 + 2 < v10)
        {
          v25 = (v14 + 8 * v13 + 16);
          while (1)
          {
            v26 = v12;
            v12 = v24;
            if (v15)
            {
              v27 = *(v25 - 1);
              v28 = sub_1D2176758(*v25);
              v29 = 0.0;
              if (v30)
              {
                v29 = *(*(a7 + 56) + 4 * v28);
              }

              v31 = sub_1D2176758(v27);
              if (v32)
              {
                if (v18 < v19 == *(*(a7 + 56) + 4 * v31) >= v29)
                {
                  goto LABEL_26;
                }
              }

              else if (v18 < v19 == v29 <= 0.0)
              {
                v26 = v12 - 1;
                goto LABEL_26;
              }
            }

            else if (v18 < v19)
            {
              v26 = (v24 - 1);
              v23 = v115;
              if (v24 < v13)
              {
                goto LABEL_141;
              }

              goto LABEL_28;
            }

            v24 = (v12 + 1);
            ++v25;
            if (v10 == v12 + 1)
            {
              v26 = v12;
              v12 = v10;
              goto LABEL_26;
            }
          }
        }

        v26 = v12;
        v12 = v13 + 2;
LABEL_26:
        v23 = v115;
        if (v18 < v19)
        {
          if (v12 < v13)
          {
            goto LABEL_141;
          }

LABEL_28:
          if (v13 <= v26)
          {
            v48 = v12 - 1;
            v49 = v13;
            do
            {
              if (v49 != v48)
              {
                v52 = *a3;
                if (!*a3)
                {
                  goto LABEL_146;
                }

                v50 = *(v52 + 8 * v49);
                *(v52 + 8 * v49) = *(v52 + 8 * v48);
                *(v52 + 8 * v48) = v50;
              }
            }

            while (++v49 < v48--);
          }
        }
      }

      v33 = a3[1];
      if (v12 >= v33)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v12, v13))
      {
        goto LABEL_140;
      }

      if (v12 - v13 >= v108)
      {
        goto LABEL_61;
      }

      if (__OFADD__(v13, v108))
      {
        goto LABEL_142;
      }

      v34 = v13 + v108 >= v33 ? a3[1] : v13 + v108;
      if (v34 < v13)
      {
        break;
      }

      if (v12 == v34)
      {
        goto LABEL_61;
      }

      v35 = *a3;
      v36 = *a3 + 8 * v12 - 8;
      __src = v13;
      v37 = (v13 - v12);
      while (2)
      {
        v38 = v37;
        v39 = v36;
        while (*(a7 + 16))
        {
          v40 = v39->i64[0];
          v41 = sub_1D2176758(v39->i64[1]);
          if ((v42 & 1) == 0)
          {
            v44 = sub_1D2176758(v40);
            if ((v46 & 1) == 0)
            {
              break;
            }

            v43 = 0.0;
LABEL_48:
            if (*(*(a7 + 56) + 4 * v44) >= v43)
            {
              break;
            }

            goto LABEL_49;
          }

          v43 = *(*(a7 + 56) + 4 * v41);
          v44 = sub_1D2176758(v40);
          if (v45)
          {
            goto LABEL_48;
          }

          if (v43 <= 0.0)
          {
            break;
          }

LABEL_49:
          if (!v35)
          {
            goto LABEL_144;
          }

          *v39 = vextq_s8(*v39, *v39, 8uLL);
          v39 = (v39 - 8);
          if (__CFADD__(v38++, 1))
          {
            break;
          }
        }

        ++v12;
        v36 += 8;
        --v37;
        if (v12 != v34)
        {
          continue;
        }

        break;
      }

      v12 = v34;
      v23 = v115;
      v13 = __src;
LABEL_61:
      if (v12 < v13)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D2195E30(0, *(v23 + 2) + 1, 1, v23);
      }

      v54 = *(v23 + 2);
      v53 = *(v23 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v23 = sub_1D2195E30((v53 > 1), v54 + 1, 1, v23);
      }

      *(v23 + 2) = v55;
      v56 = v23 + 32;
      v57 = &v23[16 * v54 + 32];
      *v57 = v13;
      *(v57 + 1) = v12;
      v113 = *a1;
      if (!*a1)
      {
        goto LABEL_147;
      }

      v115 = v23;
      if (v54)
      {
        v111 = v23 + 32;
        v112 = v12;
        while (1)
        {
          v58 = v55 - 1;
          if (v55 >= 4)
          {
            break;
          }

          if (v55 == 3)
          {
            v59 = *(v23 + 4);
            v60 = *(v23 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_82:
            if (v62)
            {
              goto LABEL_129;
            }

            v75 = &v23[16 * v55];
            v77 = *v75;
            v76 = *(v75 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_131;
            }

            v81 = &v56[16 * v58];
            v83 = *v81;
            v82 = *(v81 + 1);
            v69 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v69)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v79, v84))
            {
              goto LABEL_136;
            }

            if (v79 + v84 >= v61)
            {
              if (v61 < v84)
              {
                v58 = v55 - 2;
              }

              goto LABEL_104;
            }

            goto LABEL_97;
          }

          if (v55 < 2)
          {
            goto LABEL_137;
          }

          v85 = &v23[16 * v55];
          v87 = *v85;
          v86 = *(v85 + 1);
          v69 = __OFSUB__(v86, v87);
          v79 = v86 - v87;
          v80 = v69;
LABEL_97:
          if (v80)
          {
            goto LABEL_133;
          }

          v88 = &v56[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v69 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v69)
          {
            goto LABEL_135;
          }

          if (v91 < v79)
          {
            goto LABEL_3;
          }

LABEL_104:
          if (v58 - 1 >= v55)
          {
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

          v96 = *a3;
          if (!*a3)
          {
            goto LABEL_145;
          }

          v97 = &v56[16 * v58 - 16];
          v98 = *v97;
          v99 = v58;
          v100 = &v56[16 * v58];
          v101 = *(v100 + 1);
          v102 = (v96 + 8 * *v97);
          __srca = (v96 + 8 * *v100);
          v103 = (v96 + 8 * v101);

          sub_1D2209F38(v102, __srca, v103, v113, v119);
          if (v120)
          {

            goto LABEL_119;
          }

          if (v101 < v98)
          {
            goto LABEL_124;
          }

          v23 = v115;
          v104 = *(v115 + 2);
          if (v99 > v104)
          {
            goto LABEL_125;
          }

          *v97 = v98;
          *(v97 + 1) = v101;
          if (v99 >= v104)
          {
            goto LABEL_126;
          }

          v105 = v99;
          v55 = v104 - 1;
          memmove(v100, v100 + 16, 16 * (v104 - 1 - v105));
          *(v115 + 2) = v104 - 1;
          a7 = v119;
          v56 = v111;
          v12 = v112;
          if (v104 <= 2)
          {
            goto LABEL_3;
          }
        }

        v63 = &v56[16 * v55];
        v64 = *(v63 - 8);
        v65 = *(v63 - 7);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_127;
        }

        v68 = *(v63 - 6);
        v67 = *(v63 - 5);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_128;
        }

        v70 = &v23[16 * v55];
        v72 = *v70;
        v71 = *(v70 + 1);
        v69 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v69)
        {
          goto LABEL_130;
        }

        v69 = __OFADD__(v61, v73);
        v74 = v61 + v73;
        if (v69)
        {
          goto LABEL_132;
        }

        if (v74 >= v66)
        {
          v92 = &v56[16 * v58];
          v94 = *v92;
          v93 = *(v92 + 1);
          v69 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v69)
          {
            goto LABEL_138;
          }

          if (v61 < v95)
          {
            v58 = v55 - 2;
          }

          goto LABEL_104;
        }

        goto LABEL_82;
      }

LABEL_3:
      v10 = a3[1];
      a6 = v114;
      if (v12 >= v10)
      {
        v121 = v115;
        v9 = a5;
        goto LABEL_116;
      }
    }

LABEL_143:
    __break(1u);
LABEL_144:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_145:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_146:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_147:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_148:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
LABEL_116:
  v106 = *a1;
  if (!*a1)
  {
    goto LABEL_148;
  }

  sub_1D220A1EC(&v121, v106, a3, v9, a6, a7);
  if (v120)
  {

LABEL_119:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

unint64_t sub_1D220AC3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = result - a3;
LABEL_5:
    v11 = v10;
    v12 = v9;
    while (1)
    {
      if (!*(a5 + 16))
      {
LABEL_4:
        ++v6;
        v9 += 8;
        --v10;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v13 = v12->i64[0];
      v14 = sub_1D2176758(v12->i64[1]);
      if (v15)
      {
        v16 = *(*(a5 + 56) + 4 * v14);
        result = sub_1D2176758(v13);
        if ((v17 & 1) == 0)
        {
          if (v16 <= 0.0)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      else
      {
        result = sub_1D2176758(v13);
        if ((v18 & 1) == 0)
        {
          goto LABEL_4;
        }

        v16 = 0.0;
      }

      if (*(*(a5 + 56) + 4 * result) >= v16)
      {
        goto LABEL_4;
      }

LABEL_14:
      if (!v8)
      {
        __break(1u);
        return result;
      }

      *v12 = vextq_s8(*v12, *v12, 8uLL);
      v12 = (v12 - 8);
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D220AD48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  result = sub_1D225124C();
  if (result >= v9)
  {
    if (v9 < 0)
    {
      goto LABEL_17;
    }

    if (v9)
    {

      sub_1D220AC3C(0, v9, 1, a1, a4);
      if (v4)
      {
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
LABEL_14:
        swift_bridgeObjectRelease_n();
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_14;
  }

  if (v9 >= -1)
  {
    v11 = result;
    v12 = v9 / 2;
    if (v9 <= 1)
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v13 = sub_1D2250B2C();
      *(v13 + 16) = v12;
    }

    v14[0] = (v13 + 32);
    v14[1] = v12;

    sub_1D220A404(v14, v15, a1, v11, a2, a3, a4);

    *(v13 + 16) = 0;

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D220AF5C(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D21C8A98(v9);
  }

  v10 = *(v9 + 2);
  v12[0] = (v9 + 32);
  v12[1] = v10;

  sub_1D220AD48(v12, a2, a3, a4);

  *a1 = v9;
  if (v4)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

unint64_t sub_1D220B098(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_1D220B140(void *result)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = result[4];
  v35 = result[3] >> 1;
  if (v5 == v35)
  {
    return result;
  }

  v31 = result[2];
  if (v5 < v31 || v5 >= v35)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(result[1] + 8 * v5);
  v30 = result[1];
  while (!__OFADD__(v4, 1))
  {
    v36 = sub_1D22056F8(v4, v4 + 1, *v7, v7[1], v3, v2);
    v11 = sub_1D22058BC();
    v12 = v7;
    sub_1D220540C(&v36, v4, 0, v11);

    v3 = v7[2];
    v2 = v7[3];
    v13 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v33 = v2 >> 1;
    v32 = v7[1];
    v14 = v32 + 8 * v3;
    if (v2)
    {
      v34 = v7[3];
      sub_1D225127C();
      swift_unknownObjectRetain();
      v15 = swift_dynamicCastClass();
      if (!v15)
      {
        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v16 = *(v15 + 16);
      if (v14 + 8 * v13 == v15 + 8 * v16 + 32)
      {
        v18 = *(v15 + 24);

        v19 = (v18 >> 1) - v16;
        v20 = __OFADD__(v13, v19);
        v17 = v13 + v19;
        if (v20)
        {
          goto LABEL_48;
        }

        v7 = v12;
      }

      else
      {

        v17 = v13;
      }

      v2 = v34;
      if (v4 >= v17)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = (v2 >> 1) - v3;
      if (v4 >= v13)
      {
        goto LABEL_33;
      }
    }

    *(v14 + 8 * v4) = v9;
    v21 = v4 + 1;
    if (v8 != v35)
    {
      v22 = 0;
      while (1)
      {
        if (v8 < v31)
        {
          goto LABEL_42;
        }

        v23 = v22;
        if (v8 + v22 >= v35)
        {
          goto LABEL_42;
        }

        v9 = *(v30 + 8 * v8 + 8 * v22);
        if (!(v21 - v17 + v22))
        {
          break;
        }

        *(v32 + 8 * v4 + 8 * v3 + 8 + 8 * v22++) = v9;
        if (!(v8 - v35 + v23 + 1))
        {
          v9 = 0;
          v4 = v21 + v22;
          v8 = v35;
LABEL_31:
          v10 = v21 + v23 < v17;
          goto LABEL_34;
        }
      }

      v8 += v22 + 1;
      v4 = v17;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v35;
    ++v4;
LABEL_34:
    v24 = v4 - v13;
    if (__OFSUB__(v4, v13))
    {
      goto LABEL_45;
    }

    if (v24)
    {
      v25 = v10;
      v26 = v2;
      sub_1D225127C();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x1E69E7CC0];
      }

      v27 = result[2];
      v20 = __OFADD__(v27, v24);
      v28 = v27 + v24;
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v28;

      v29 = v33 + v24;
      if (__OFADD__(v33, v24))
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v26 & 1 | (2 * v29);
      v7[3] = v2;
      v10 = v25;
    }

    if (v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
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
LABEL_50:
  __break(1u);
  return result;
}

void *sub_1D220B450(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1D225127C();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v13 + 8 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = 2 * v15;
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_1D2205284(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + 8 * v21 + 8 * v22);
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_1D225127C();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + 8 * v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_1D2205640(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_1D220B140(v32);
  }

  return result;
}

uint64_t sub_1D220B68C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *__dst, uint64_t a5, uint64_t a6)
{
  v8 = __dst;
  v9 = a3;
  v10 = a2;
  v11 = __src;
  v12 = a2 - __src;
  v13 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v13 = a2 - __src;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  if (v14 < v16 >> 3)
  {
    if (__dst != __src || &__src[v14] <= __dst)
    {
      memmove(__dst, __src, 8 * v14);
    }

    v18 = (v8 + 8 * v14);
    if (v12 < 8)
    {
LABEL_10:
      v10 = v11;
      goto LABEL_51;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_10;
      }

      v38 = *v10;
      v37 = *v8;
      v21 = sub_1D21F7040(&v38, &v37, a5, a6);
      if (v6)
      {
        v31 = v18 - v8 + 7;
        if ((v18 - v8) >= 0)
        {
          v31 = v18 - v8;
        }

        if (v11 < v8 || v11 >= v8 + (v31 & 0xFFFFFFFFFFFFFFF8) || v11 != v8)
        {
          v33 = 8 * (v31 >> 3);
          v34 = v11;
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (v21)
      {
        break;
      }

      v19 = v8;
      v20 = v11 == v8;
      v8 += 8;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v11;
      if (v8 >= v18)
      {
        goto LABEL_10;
      }
    }

    v19 = v10;
    v20 = v11 == v10++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v11 = *v19;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v17] <= __dst)
  {
    memmove(__dst, a2, 8 * v17);
  }

  v18 = (v8 + 8 * v17);
  if (v15 < 8 || v10 <= v11)
  {
LABEL_51:
    v32 = v18 - v8 + 7;
    if ((v18 - v8) >= 0)
    {
      v32 = v18 - v8;
    }

    v30 = v32 >> 3;
    if (v10 < v8 || v10 >= v8 + (v32 & 0xFFFFFFFFFFFFFFF8) || v10 != v8)
    {
LABEL_56:
      v33 = 8 * v30;
      v34 = v10;
LABEL_57:
      memmove(v34, v8, v33);
    }

    goto LABEL_58;
  }

  v22 = -v8;
LABEL_26:
  v23 = v10 - 1;
  v24 = v18 + v22;
  --v9;
  v25 = v18;
  while (1)
  {
    v26 = *--v25;
    v38 = v26;
    v37 = *v23;
    v27 = sub_1D21F7040(&v38, &v37, a5, a6);
    if (v6)
    {
      break;
    }

    v28 = v9 + 1;
    if (v27)
    {
      if (v28 != v10)
      {
        *v9 = *v23;
      }

      if (v18 <= v8 || (--v10, v22 = -v8, v23 <= v11))
      {
        v10 = v23;
        goto LABEL_51;
      }

      goto LABEL_26;
    }

    if (v28 != v18)
    {
      *v9 = *v25;
    }

    v24 -= 8;
    --v9;
    v18 = v25;
    if (v25 <= v8)
    {
      v18 = v25;
      goto LABEL_51;
    }
  }

  if (v24 >= 0)
  {
    v29 = v24;
  }

  else
  {
    v29 = v24 + 7;
  }

  v30 = v29 >> 3;
  if (v10 < v8 || v10 >= v8 + (v29 & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v10, v8, 8 * v30);
  }

  else if (v10 != v8)
  {
    goto LABEL_56;
  }

LABEL_58:

  return 1;
}

uint64_t sub_1D220B9C0(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a1;
  v9 = *a1;

  v25 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v25 = sub_1D21C88C8(v25);
  }

  v21 = v8;
  *v8 = v25;
  v10 = v25 + 16;
  v11 = *(v25 + 2);
  if (v11 < 2)
  {
LABEL_9:

    *v21 = v25;
LABEL_11:

    return 1;
  }

  else
  {
    while (1)
    {
      v12 = *a3;
      if (!*a3)
      {
        break;
      }

      v13 = &v25[16 * v11];
      v14 = *v13;
      v15 = v10;
      v16 = &v10[16 * v11];
      v8 = *(v16 + 1);
      __src = (v12 + 8 * *v13);
      v26 = (v12 + 8 * *v16);
      v17 = (v12 + 8 * v8);

      sub_1D220B68C(__src, v26, v17, a2, a4, a5);

      if (v6)
      {
        *v21 = v25;

        goto LABEL_11;
      }

      if (v8 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v18 = *v15;
      if (v11 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v8;
      v19 = v18 - v11;
      if (v18 < v11)
      {
        goto LABEL_14;
      }

      v10 = v15;
      v11 = v18 - 1;
      memmove(v16, v16 + 16, 16 * v19);
      *v15 = v11;
      if (v11 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v21 = v25;

    __break(1u);
  }

  return result;
}

uint64_t sub_1D220BBA0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = MEMORY[0x1E69E7CC0];
  v10 = a3[1];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v103 = a5;
  if (v10 >= 1)
  {
    v93 = a4;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v100 = a6;
    do
    {
      v14 = v11 + 1;
      if (v11 + 1 < v10)
      {
        v15 = v12;
        v16 = *a3;
        v17 = *(*a3 + 8 * v14);
        v104 = *(*a3 + 8 * v11);
        v105 = v17;
        v18 = sub_1D21F7040(&v105, &v104, a5, a6);
        if (v6)
        {
          goto LABEL_96;
        }

        v19 = v18;
        v20 = v11 + 2;
        v21 = (v16 + 8 * v11 + 16);
        while (v10 != v20)
        {
          v22 = *v21;
          v104 = *(v21 - 1);
          v105 = v22;
          ++v20;
          ++v21;
          if ((v19 ^ sub_1D21F7040(&v105, &v104, a5, a6)))
          {
            v10 = v20 - 1;
            break;
          }
        }

        v12 = v15;
        if (v19)
        {
          if (v10 < v11)
          {
            goto LABEL_117;
          }

          if (v11 < v10)
          {
            v23 = v10 - 1;
            v24 = v11;
            do
            {
              if (v24 != v23)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_120;
                }

                v27 = *(v26 + 8 * v24);
                *(v26 + 8 * v24) = *(v26 + 8 * v23);
                *(v26 + 8 * v23) = v27;
              }
            }

            while (++v24 < v23--);
          }
        }

        v14 = v10;
      }

      v28 = a3[1];
      if (v14 >= v28)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v14, v11))
      {
        goto LABEL_114;
      }

      if (v14 - v11 >= v93)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v11, v93))
      {
        goto LABEL_115;
      }

      if (v11 + v93 >= v28)
      {
        v29 = a3[1];
      }

      else
      {
        v29 = v11 + v93;
      }

      if (v29 < v11)
      {
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_119:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_120:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_121:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_122:
        swift_bridgeObjectRelease_n();
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }

      if (v14 == v29)
      {
LABEL_33:
        if (v14 < v11)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v98 = v12;
        v82 = *a3;
        v83 = *a3 + 8 * v14 - 8;
        v84 = v11 - v14;
        do
        {
          v85 = v14;
          v86 = *(v82 + 8 * v14);
          v87 = v84;
          v88 = v83;
          do
          {
            v105 = v86;
            v104 = *v88;
            v89 = sub_1D21F7040(&v105, &v104, a5, v100);
            if (v6)
            {
              goto LABEL_96;
            }

            if ((v89 & 1) == 0)
            {
              break;
            }

            if (!v82)
            {
              goto LABEL_119;
            }

            v90 = *v88;
            v86 = v88[1];
            *v88 = v86;
            v88[1] = v90;
            --v88;
          }

          while (!__CFADD__(v87++, 1));
          v14 = v85 + 1;
          v83 += 8;
          --v84;
        }

        while (v85 + 1 != v29);
        v14 = v29;
        v12 = v98;
        if (v29 < v11)
        {
          goto LABEL_113;
        }
      }

      v95 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D2195E30(0, *(v12 + 2) + 1, 1, v12);
      }

      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v12 = sub_1D2195E30((v30 > 1), v31 + 1, 1, v12);
      }

      *(v12 + 2) = v32;
      v33 = v12 + 32;
      v34 = &v12[16 * v31 + 32];
      *v34 = v11;
      *(v34 + 1) = v95;
      v106 = v12;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      if (v31)
      {
        v96 = v12 + 32;
        v97 = v12;
        while (1)
        {
          v35 = v32 - 1;
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v36 = *(v12 + 4);
            v37 = *(v12 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_54:
            if (v39)
            {
              goto LABEL_104;
            }

            v52 = &v12[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_107;
            }

            v58 = &v33[16 * v35];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_111;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v32 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v62 = &v12[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_68:
          if (v57)
          {
            goto LABEL_106;
          }

          v65 = &v33[16 * v35];
          v67 = *v65;
          v66 = *(v65 + 1);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_109;
          }

          if (v68 < v56)
          {
            goto LABEL_6;
          }

LABEL_75:
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
            goto LABEL_116;
          }

          v73 = *a3;
          if (!*a3)
          {
            goto LABEL_118;
          }

          v74 = &v33[16 * v35 - 16];
          v75 = *v74;
          v76 = v35;
          v77 = &v33[16 * v35];
          v78 = *(v77 + 1);
          __src = (v73 + 8 * *v74);
          v79 = (v73 + 8 * *v77);
          v80 = (v73 + 8 * v78);

          sub_1D220B68C(__src, v79, v80, __dst, v103, v100);
          if (v6)
          {

            goto LABEL_96;
          }

          v12 = v97;
          if (v78 < v75)
          {
            goto LABEL_99;
          }

          v81 = *(v97 + 2);
          if (v76 > v81)
          {
            goto LABEL_100;
          }

          *v74 = v75;
          *(v74 + 1) = v78;
          if (v76 >= v81)
          {
            goto LABEL_101;
          }

          v32 = v81 - 1;
          memmove(v77, v77 + 16, 16 * (v81 - 1 - v76));
          *(v97 + 2) = v81 - 1;
          a5 = v103;
          v33 = v96;
          if (v81 <= 2)
          {
LABEL_6:
            v106 = v12;
            goto LABEL_7;
          }
        }

        v40 = &v33[16 * v32];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_102;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_103;
        }

        v47 = &v12[16 * v32];
        v49 = *v47;
        v48 = *(v47 + 1);
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_105;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v51 >= v43)
        {
          v69 = &v33[16 * v35];
          v71 = *v69;
          v70 = *(v69 + 1);
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_112;
          }

          if (v38 < v72)
          {
            v35 = v32 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_7:
      a6 = v100;
      v10 = a3[1];
      v11 = v95;
    }

    while (v95 < v10);
  }

  v13 = *a1;
  if (!*a1)
  {
    goto LABEL_122;
  }

  sub_1D220B9C0(&v106, v13, a3, v103, a6);
  if (v6)
  {

LABEL_96:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_1D220C248(char **a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *a1;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D21C8A98(v7);
  }

  v8 = *(v7 + 2);
  v9 = v7 + 32;
  v26[0] = (v7 + 32);
  v26[1] = v8;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = sub_1D225124C();
  if (v10 >= v8)
  {
    if (v8 > 1)
    {
      v24 = v6;

      v14 = -1;
      v15 = 1;
      v16 = (v7 + 32);
      while (2)
      {
        v17 = *&v9[8 * v15];
        v18 = v14;
        v19 = v16;
        do
        {
          v25[0] = v17;
          v27 = *v19;
          v20 = sub_1D21F7040(v25, &v27, a2, a3);
          if (v3)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v6 = v24;
            goto LABEL_20;
          }

          if ((v20 & 1) == 0)
          {
            break;
          }

          v21 = *v19;
          v17 = v19[1];
          *v19 = v17;
          v19[1] = v21;
          --v19;
        }

        while (!__CFADD__(v18++, 1));
        ++v15;
        ++v16;
        --v14;
        v9 = v7 + 32;
        if (v15 != v8)
        {
          continue;
        }

        break;
      }

      swift_bridgeObjectRelease_n();
      v6 = v24;
    }

    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = v10;
    if (v8 >= 2)
    {
      v12 = sub_1D2250B2C();
      *(v12 + 16) = v8 >> 1;
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    v25[0] = (v12 + 32);
    v25[1] = (v8 >> 1);
    v13 = v12;

    sub_1D220BBA0(v25, &v27, v26, v11, a2, a3);

    *(v13 + 16) = 0;
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

LABEL_20:
  *v6 = v7;
  swift_bridgeObjectRelease_n();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D220C50C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D220C574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D220C5D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s19VisualUnderstanding18VUStreamingGalleryC5LabelO09isUnknownE05labelSbAE_tFZ_0(uint64_t a1)
{
  v2 = sub_1D225055C();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D80);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for VUStreamingGallery.Label(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v34 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - v22;
  sub_1D220C5D4(a1, &v34 - v22, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D220C5D4(a1, v18, type metadata accessor for VUStreamingGallery.Label);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v37;
      (*(v37 + 32))(v14, v18, v2);
      v25 = 0;
    }

    else
    {
      v25 = 1;
      v24 = v37;
    }

    (*(v24 + 56))(v14, v25, 1, v2);
    sub_1D225050C();
    v27 = *(v4 + 48);
    sub_1D2174DA8(v14, v6, &qword_1EC6D2110);
    sub_1D2174DA8(v12, &v6[v27], &qword_1EC6D2110);
    v28 = *(v24 + 48);
    if (v28(v6, 1, v2) == 1)
    {
      sub_1D2176170(v12, &qword_1EC6D2110);
      sub_1D2176170(v14, &qword_1EC6D2110);
      if (v28(&v6[v27], 1, v2) == 1)
      {
        sub_1D2176170(v6, &qword_1EC6D2110);
        v26 = 1;
LABEL_15:
        sub_1D220C574(v23, type metadata accessor for VUStreamingGallery.Label);
        return v26 & 1;
      }
    }

    else
    {
      v29 = v36;
      sub_1D2174DA8(v6, v36, &qword_1EC6D2110);
      if (v28(&v6[v27], 1, v2) != 1)
      {
        v30 = v37;
        v31 = v35;
        (*(v37 + 32))(v35, &v6[v27], v2);
        sub_1D220E134(&qword_1EDC87220, MEMORY[0x1E69695A8]);
        v26 = sub_1D225091C();
        v32 = *(v30 + 8);
        v32(v31, v2);
        sub_1D2176170(v12, &qword_1EC6D2110);
        sub_1D2176170(v14, &qword_1EC6D2110);
        v32(v36, v2);
        sub_1D2176170(v6, &qword_1EC6D2110);
        goto LABEL_15;
      }

      sub_1D2176170(v12, &qword_1EC6D2110);
      sub_1D2176170(v14, &qword_1EC6D2110);
      (*(v37 + 8))(v29, v2);
    }

    sub_1D2176170(v6, &unk_1EC6D2D80);
    v26 = 0;
    goto LABEL_15;
  }

  sub_1D220C5D4(a1, v21, type metadata accessor for VUStreamingGallery.Label);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D220C574(v21, type metadata accessor for VUStreamingGallery.Label);
    v26 = 0;
  }

  else
  {
    v26 = *v21 == -1;
  }

  return v26 & 1;
}

uint64_t sub_1D220CC20(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v6 = __dst;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v11 = a2 - __src;
  }

  v12 = v11 >> 4;
  v13 = a3 - a2;
  v14 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    if (__dst != __src || &__src[16 * v12] <= __dst)
    {
      memmove(__dst, __src, 16 * v12);
    }

    v16 = &v6[16 * v12];
    result = swift_beginAccess();
    if (v10 >= 16 && v8 < v7)
    {
      do
      {
        v18 = *v8;
        if ((*v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v19 = *(a5 + 64);
        v20 = *(v19 + 16);
        if (v18 >= v20)
        {
          goto LABEL_58;
        }

        v21 = *v6;
        v22 = v19 + 32;
        v23 = v22 + 8 * v18;
        v24 = *v23;
        if (*(v23 + 4))
        {
          v24 = 0.0;
        }

        if (v21 >= v20)
        {
          goto LABEL_61;
        }

        v25 = v22 + 8 * v21;
        if (*(v25 + 4))
        {
          if (v24 <= 0.0)
          {
            goto LABEL_18;
          }
        }

        else if (*v25 >= v24)
        {
LABEL_18:
          v26 = v6;
          v27 = v9 == v6;
          v6 += 16;
          if (v27)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v9 = *v26;
          goto LABEL_20;
        }

        v26 = v8;
        v27 = v9 == v8;
        v8 += 16;
        if (!v27)
        {
          goto LABEL_19;
        }

LABEL_20:
        v9 += 16;
      }

      while (v6 < v16 && v8 < v7);
    }

    v8 = v9;
    goto LABEL_52;
  }

  if (__dst != a2 || &a2[16 * v15] <= __dst)
  {
    memmove(__dst, a2, 16 * v15);
  }

  v16 = &v6[16 * v15];
  result = swift_beginAccess();
  if (v13 < 16 || v8 <= v9)
  {
LABEL_52:
    if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
    {
      memmove(v8, v6, 16 * ((v16 - v6) / 16));
    }

    return 1;
  }

LABEL_32:
  v28 = v8 - 16;
  v7 -= 16;
  v29 = v16;
  while (1)
  {
    v31 = *(v29 - 2);
    v29 -= 16;
    v30 = v31;
    if ((v31 & 0x8000000000000000) != 0)
    {
      break;
    }

    v32 = *(a5 + 64);
    v33 = *(v32 + 16);
    if (v30 >= v33)
    {
      goto LABEL_59;
    }

    v34 = *v28;
    v35 = v32 + 32;
    v36 = v35 + 8 * v30;
    v37 = *v36;
    if (*(v36 + 4))
    {
      v37 = 0.0;
    }

    if (v34 >= v33)
    {
      goto LABEL_60;
    }

    v38 = v35 + 8 * v34;
    if (*(v38 + 4))
    {
      if (v37 > 0.0)
      {
        goto LABEL_45;
      }
    }

    else if (*v38 < v37)
    {
LABEL_45:
      if (v7 + 16 != v8)
      {
        *v7 = *v28;
      }

      if (v16 <= v6 || (v8 -= 16, v28 <= v9))
      {
        v8 = v28;
        goto LABEL_52;
      }

      goto LABEL_32;
    }

    if (v7 + 16 != v16)
    {
      *v7 = *v29;
    }

    v7 -= 16;
    v16 = v29;
    if (v29 <= v6)
    {
      v16 = v29;
      goto LABEL_52;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_1D220CF1C(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1D21C88C8(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
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
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_1D220CC20(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1D220D0C4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = a3[1];
  v115 = MEMORY[0x1E69E7CC0];
  if (v9 < 1)
  {
    swift_retain_n();
LABEL_104:
    v103 = *a1;
    if (*a1)
    {

      sub_1D220CF1C(&v115, v103, a3, a5);
      if (v6)
      {

        goto LABEL_107;
      }
    }

    goto LABEL_141;
  }

  swift_retain_n();
  swift_beginAccess();
  v11 = 0;
  v109 = a5;
  v110 = MEMORY[0x1E69E7CC0];
  v105 = a4;
  v106 = a1;
  while (1)
  {
    v12 = v11++;
    if (v11 >= v9)
    {
      goto LABEL_27;
    }

    v13 = *a3;
    v14 = (*a3 + 16 * v11);
    v15 = *v14;
    v113 = *(*a3 + 16 * v12);
    v114 = v15;
    v16 = sub_1D21CCFE4(&v114, &v113, a5);
    if (v6)
    {
      goto LABEL_107;
    }

    v11 = v12 + 2;
    if (v12 + 2 >= v9)
    {
LABEL_18:
      if ((v16 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    v17 = *(a5 + 64);
    v18 = v17 + 32;
    v19 = *v14;
    v20 = (v13 + 16 * v12 + 32);
    do
    {
      v22 = *v20;
      v20 += 2;
      v21 = v22;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }

      v23 = *(v17 + 16);
      if (v21 >= v23)
      {
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
        return result;
      }

      v24 = v18 + 8 * v21;
      v25 = *v24;
      if (*(v24 + 4))
      {
        v25 = 0.0;
      }

      if (v19 >= v23)
      {
        goto LABEL_120;
      }

      v26 = v18 + 8 * v19;
      if (*(v26 + 4) == 1)
      {
        if (((v16 ^ (v25 <= 0.0)) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v16 & 1) == *v26 >= v25)
      {
        goto LABEL_18;
      }

      ++v11;
      v19 = v21;
    }

    while (v9 != v11);
    v11 = v9;
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v11 < v12)
    {
      goto LABEL_136;
    }

    if (v12 < v11)
    {
      v27 = 16 * v11 - 16;
      v28 = 16 * v12;
      v29 = v11;
      v30 = v12;
      do
      {
        if (v30 != --v29)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v32 = *(v31 + v28);
          *(v31 + v28) = *(v31 + v27);
          *(v31 + v27) = v32;
        }

        ++v30;
        v27 -= 16;
        v28 += 16;
      }

      while (v30 < v29);
    }

LABEL_27:
    v33 = a3[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v12))
      {
        goto LABEL_133;
      }

      if (v11 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_134;
        }

        if (v12 + a4 < v33)
        {
          v33 = v12 + a4;
        }

        if (v33 < v12)
        {
          goto LABEL_135;
        }

        if (v11 != v33)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v11 < v12)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_1D2195E30(0, *(v110 + 2) + 1, 1, v110);
    }

    v49 = *(v110 + 2);
    v48 = *(v110 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v110 = sub_1D2195E30((v48 > 1), v49 + 1, 1, v110);
    }

    *(v110 + 2) = v50;
    v51 = v110 + 32;
    v52 = &v110[16 * v49 + 32];
    *v52 = v12;
    *(v52 + 1) = v11;
    v115 = v110;
    __dst = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v49)
    {
      v112 = v6;
      v53 = v110;
      v107 = v11;
      while (1)
      {
        v54 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v55 = *(v53 + 4);
          v56 = *(v53 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_73:
          if (v58)
          {
            goto LABEL_123;
          }

          v71 = &v53[16 * v50];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_126;
          }

          v77 = &v51[16 * v54];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_130;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v50 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v81 = &v53[16 * v50];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_87:
        if (v76)
        {
          goto LABEL_125;
        }

        v84 = &v51[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_128;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_94:
        if (v54 - 1 >= v50)
        {
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

        v92 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v93 = &v51[16 * v54 - 16];
        v94 = *v93;
        v95 = v51;
        v96 = v54;
        v97 = &v51[16 * v54];
        v98 = *(v97 + 1);
        v99 = (v92 + 16 * *v93);
        v100 = (v92 + 16 * *v97);
        v101 = (v92 + 16 * v98);

        sub_1D220CC20(v99, v100, v101, __dst, v109);
        if (v112)
        {

          v115 = v110;
          goto LABEL_107;
        }

        v53 = v110;
        if (v98 < v94)
        {
          goto LABEL_115;
        }

        v102 = *(v110 + 2);
        if (v96 > v102)
        {
          goto LABEL_116;
        }

        *v93 = v94;
        *(v93 + 1) = v98;
        if (v96 >= v102)
        {
          goto LABEL_117;
        }

        v50 = v102 - 1;
        memmove(v97, v97 + 16, 16 * (v102 - 1 - v96));
        *(v110 + 2) = v102 - 1;
        v11 = v107;
        v51 = v95;
        if (v102 <= 2)
        {
LABEL_3:
          v115 = v53;
          v6 = v112;
          a4 = v105;
          a1 = v106;
          goto LABEL_4;
        }
      }

      v59 = &v51[16 * v50];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_121;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_122;
      }

      v66 = &v53[16 * v50];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_124;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_127;
      }

      if (v70 >= v62)
      {
        v88 = &v51[16 * v54];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_131;
        }

        if (v57 < v91)
        {
          v54 = v50 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_4:
    v9 = a3[1];
    a5 = v109;
    if (v11 >= v9)
    {
      goto LABEL_104;
    }
  }

  v34 = *a3;
  v35 = *a3 + 16 * v11 - 16;
  v36 = v12 - v11;
LABEL_37:
  v37 = *(v34 + 16 * v11);
  v38 = v36;
  v39 = v35;
  while ((v37 & 0x8000000000000000) == 0)
  {
    v40 = *(a5 + 64);
    v41 = *(v40 + 16);
    if (v37 >= v41)
    {
      goto LABEL_111;
    }

    v42 = *v39;
    v43 = v40 + 32;
    v44 = *(v43 + 8 * v37);
    if (*(v43 + 8 * v37 + 4))
    {
      v44 = 0.0;
    }

    if (v42 >= v41)
    {
      goto LABEL_112;
    }

    v45 = v43 + 8 * v42;
    if (*(v45 + 4))
    {
      if (v44 <= 0.0)
      {
        goto LABEL_36;
      }
    }

    else if (*v45 >= v44)
    {
      goto LABEL_36;
    }

    if (!v34)
    {
      goto LABEL_137;
    }

    v46 = *(v39 + 24);
    *(v39 + 16) = *v39;
    *v39 = v37;
    *(v39 + 8) = v46;
    v39 -= 16;
    if (__CFADD__(v38++, 1))
    {
LABEL_36:
      ++v11;
      v35 += 16;
      --v36;
      if (v11 != v33)
      {
        goto LABEL_37;
      }

      v11 = v33;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_107:
}

uint64_t sub_1D220D79C(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D21C8B9C(v4);
  }

  v5 = *(v4 + 2);
  v27[0] = (v4 + 32);
  v27[1] = v5;
  swift_retain_n();
  v6 = sub_1D225124C();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = (v5 >> 1);
    if (v5 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CE8);
      v9 = sub_1D2250B2C();
      *(v9 + 16) = v8;
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v26[0] = (v9 + 32);
    v26[1] = v8;

    sub_1D220D0C4(v26, &v25, v27, v7, a2);

    *(v9 + 16) = 0;

    goto LABEL_26;
  }

  if (!v5)
  {

LABEL_26:
    *a1 = v4;
  }

  if (v5 == 1)
  {
LABEL_25:

    goto LABEL_26;
  }

  v10 = -1;
  v11 = 1;
  v12 = v4 + 32;
LABEL_14:
  result = swift_beginAccess();
  v14 = *&v4[16 * v11 + 32];
  v15 = v10;
  v16 = v12;
  while ((v14 & 0x8000000000000000) == 0)
  {
    v19 = *(a2 + 64);
    v20 = *(v19 + 16);
    if (v14 >= v20)
    {
      goto LABEL_28;
    }

    v21 = *v16;
    v22 = v19 + 32;
    v23 = *(v22 + 8 * v14);
    if (*(v22 + 8 * v14 + 4))
    {
      v23 = 0.0;
    }

    if (v21 >= v20)
    {
      goto LABEL_29;
    }

    v24 = v22 + 8 * v21;
    if (*(v24 + 4))
    {
      if (v23 <= 0.0)
      {
LABEL_13:
        ++v11;
        v12 += 16;
        --v10;
        if (v11 == v5)
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }
    }

    else if (*v24 >= v23)
    {
      goto LABEL_13;
    }

    v17 = *(v16 + 3);
    *(v16 + 1) = *v16;
    *v16 = v14;
    *(v16 + 1) = v17;
    v16 -= 16;
    if (__CFADD__(v15++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D220DA08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D220DA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D220DAC0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a2;
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2C20);
  MEMORY[0x1EEE9AC00](v33);
  v7 = (&v28 - v6);
  v8 = type metadata accessor for VUStreamingGallery.Label(0);
  v32 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v12 = 0;
  v34 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v35 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = *(v34[6] + 8 * v23);
    sub_1D220C5D4(v34[7] + *(v32 + 72) * v23, v11, type metadata accessor for VUStreamingGallery.Label);
    *v7 = v24;
    sub_1D220C5D4(v11, v7 + *(v33 + 48), type metadata accessor for VUStreamingGallery.Label);
    if (*(a4 + 16))
    {
      sub_1D2176758(v24);
      v26 = v25;
      sub_1D2176170(v7, &qword_1EC6D2C20);
      result = sub_1D220C574(v11, type metadata accessor for VUStreamingGallery.Label);
      v18 = v35;
      if (v26)
      {
        *(v30 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_1D22000C8(v30, v29, v31, v34);
        }
      }
    }

    else
    {
      sub_1D2176170(v7, &qword_1EC6D2C20);
      result = sub_1D220C574(v11, type metadata accessor for VUStreamingGallery.Label);
      v18 = v35;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_1D22000C8(v30, v29, v31, v34);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v35 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D220DD90(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1D21FFA60(v12, v7, a1, a2);
      MEMORY[0x1D3899640](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D220DAC0((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1D220DF70(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23D0);
    v6 = sub_1D2250B2C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        sub_1D21A3B64(v5, a2);
        *(v9 - 1) = v5;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    sub_1D21A3B64(v5, a2);
    return v7;
  }

  return result;
}

uint64_t sub_1D220E024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2888);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D220E098()
{
  result = qword_1EC6D2C40;
  if (!qword_1EC6D2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2C40);
  }

  return result;
}

uint64_t sub_1D220E134(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D220E180()
{
  result = qword_1EC6D2C50;
  if (!qword_1EC6D2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2C50);
  }

  return result;
}

unint64_t sub_1D220E1D8()
{
  result = qword_1EC6D2C58;
  if (!qword_1EC6D2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2C58);
  }

  return result;
}

uint64_t sub_1D220E234()
{
  result = sub_1D225082C();
  if (v1 <= 0x3F)
  {
    result = sub_1D22507AC();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of VUStreamingGallery.add(observation:observationIdentifier:trackIdentifier:context:ignoreLowConfidence:)(uint64_t a1, uint64_t a2, char a3)
{
  return (*(*v3 + 608))(a1, a2, a3 & 1);
}

{
  return (*(*v3 + 616))(a1, a2, a3 & 1);
}

uint64_t dispatch thunk of VUStreamingGallery.recognize(observation:k:confirmedOnly:)()
{
  return (*(*v0 + 688))();
}

{
  return (*(*v0 + 720))();
}

uint64_t sub_1D220EBB8()
{
  result = sub_1D225055C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
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

uint64_t sub_1D220EC40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D220EC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D220ED08()
{
  result = sub_1D225055C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VUStreamingGallery.ClusterResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VUStreamingGallery.ClusterResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void sub_1D220EE58()
{
  sub_1D220EF58(319, &qword_1EC6D2C80, type metadata accessor for VUStreamingGallery.Label);
  if (v0 <= 0x3F)
  {
    sub_1D220EF58(319, &qword_1EC6D2C88, type metadata accessor for VUStreamingGallery.Tag);
    if (v1 <= 0x3F)
    {
      sub_1D220EF58(319, &qword_1EDC87230, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D220EF58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2250E5C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D220EFD4()
{
  result = type metadata accessor for VUStreamingGallery.Label(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D220F098()
{
  result = qword_1EDC86980;
  if (!qword_1EDC86980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC86980);
  }

  return result;
}

uint64_t sub_1D220F114(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1D220F1A4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

unint64_t Int.entityClass.getter@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if (HIBYTE(result) == 6)
  {
    v2 = 3;
  }

  else
  {
    v2 = HIBYTE(result) == 2;
  }

  if (HIBYTE(result) == 63)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t VUError.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

unint64_t sub_1D220F2D0()
{
  result = qword_1EC6D2CF8;
  if (!qword_1EC6D2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2CF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VUError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VUError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unsigned __int16 *sub_1D220F484@<X0>(unsigned __int16 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D220F4A0()
{
  result = qword_1EC6D2D00;
  if (!qword_1EC6D2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2D00);
  }

  return result;
}

unint64_t VUPluginType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

VisualUnderstanding::VUPluginType_optional __swiftcall VUPluginType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D225116C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D220F5A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "ion";
  }

  else
  {
    v4 = "VUDeviceOwnerPlugin";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (*a2)
  {
    v7 = "VUDeviceOwnerPlugin";
  }

  else
  {
    v7 = "ion";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D225126C();
  }

  return v9 & 1;
}

unint64_t sub_1D220F650()
{
  result = qword_1EC6D2D08;
  if (!qword_1EC6D2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2D08);
  }

  return result;
}

uint64_t sub_1D220F6A4()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D220F724()
{
  sub_1D22509EC();
}

uint64_t sub_1D220F790()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D220F80C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D225116C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D220F86C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000013;
  }

  if (*v1)
  {
    v3 = "VUDeviceOwnerPlugin";
  }

  else
  {
    v3 = "ion";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D220F8B0()
{
  result = qword_1EC6D2D10;
  if (!qword_1EC6D2D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D2D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2D10);
  }

  return result;
}

BOOL sub_1D220F970(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

BOOL sub_1D220F9A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 < v2)
  {
    return 0;
  }

  if (v3 == v2)
  {
    return *a2 >= *a1;
  }

  return 1;
}

BOOL sub_1D220F9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return *a1 >= *a2;
  }

  return 1;
}

BOOL sub_1D220FA14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 < v2)
  {
    return 1;
  }

  if (v3 == v2)
  {
    return *a2 < *a1;
  }

  return 0;
}

void sub_1D220FA74(uint64_t a1, float a2)
{
  v5 = *(v2 + 16);
  v6 = *(v5 + 2);
  if (v6 < *(v2 + 24))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1D2195E1C(0, v6 + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    if (v9 >= v8 >> 1)
    {
      v5 = sub_1D2195E1C((v8 > 1), v9 + 1, 1, v5);
    }

    *(v5 + 2) = v9 + 1;
    v10 = &v5[16 * v9];
    *(v10 + 4) = a1;
    *(v10 + 10) = a2;
    *(v2 + 16) = v5;

    sub_1D220FBE0();
    return;
  }

  if (!v6)
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(v5 + 10);
  if (v11 >= a2 && (v11 != a2 || *(v5 + 4) >= a1))
  {
    return;
  }

  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((v13 & 1) == 0)
  {
LABEL_22:
    v5 = sub_1D2204854(v5);
    if (*(v5 + 2))
    {
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    return;
  }

  if (!*(v5 + 2))
  {
    goto LABEL_23;
  }

LABEL_18:
  *(v5 + 4) = a1;
  *(v5 + 10) = a2;
  *(v2 + 16) = v5;

  sub_1D220FD10();
}

void sub_1D220FBE0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 2);
  if (v2)
  {
    v3 = (v2 - 2) / 2;
    if (v3 >= v2)
    {
LABEL_20:
      __break(1u);
    }

    else
    {
      v4 = v2 - 1;
      while (v4 < v2)
      {
        v6 = v3;
        v7 = 16 * v3;
        v8 = &v1[16 * v3 + 32];
        v9 = *v8;
        v10 = *(v8 + 8);
        v11 = &v1[16 * v4 + 32];
        v12 = *v11;
        v13 = *(v11 + 8);
        if (v13 >= v10 && (v13 != v10 || v12 >= v9))
        {
          return;
        }

        if (v6 != v4)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 16) = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v1 = sub_1D2204854(v1);
          }

          v16 = *(v1 + 2);
          if (v6 >= v16)
          {
            goto LABEL_22;
          }

          v17 = &v1[v7 + 32];
          *v17 = v12;
          *(v17 + 2) = v13;
          if (v4 >= v16)
          {
            goto LABEL_23;
          }

          v5 = &v1[16 * v4 + 32];
          *v5 = v9;
          *(v5 + 8) = v10;
          *(v0 + 16) = v1;
        }

        v3 = (v6 - 1) / 2;
        v2 = *(v1 + 2);
        v4 = v6;
        if (v3 >= v2)
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1D220FD10()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 16);
  while (1)
  {
    v4 = v1 | 1;
    v5 = *(v3 + 2);
    if ((v1 | 1) >= v5)
    {
      break;
    }

    v6 = v1 + 2;
    if (__OFADD__(v1, 2))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (v6 >= v5)
    {
      v11 = v1 | 1;
    }

    else
    {
      if (v6 < 0)
      {
        goto LABEL_32;
      }

      if (v1 < 0)
      {
        goto LABEL_33;
      }

      v7 = &v3[16 * v6 + 32];
      v8 = *(v7 + 8);
      v9 = &v3[16 * v4 + 32];
      v10 = *(v9 + 8);
      v11 = v6;
      if (v8 >= v10)
      {
        v11 = v4;
        if (v8 == v10)
        {
          if (*v7 >= *v9)
          {
            v11 = v4;
          }

          else
          {
            v11 = v6;
          }
        }
      }
    }

    if (v2 >= v5)
    {
      goto LABEL_29;
    }

    if (v11 >= v5)
    {
      goto LABEL_30;
    }

    v12 = &v3[16 * v2 + 32];
    v13 = *(v12 + 8);
    v14 = &v3[16 * v11 + 32];
    v15 = *(v14 + 8);
    if (v13 < v15)
    {
      return;
    }

    v16 = *v12;
    v17 = *v14;
    if (v13 == v15 && v16 < v17)
    {
      return;
    }

    if (v2 != v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 16) = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v3 = sub_1D2204854(v3);
      }

      v20 = *(v3 + 2);
      if (v2 >= v20)
      {
        goto LABEL_34;
      }

      v21 = &v3[16 * v2 + 32];
      *v21 = v17;
      *(v21 + 8) = v15;
      if (v11 >= v20)
      {
        goto LABEL_35;
      }

      v22 = &v3[16 * v11 + 32];
      *v22 = v16;
      *(v22 + 8) = v13;
      *(v0 + 16) = v3;
    }

    v1 = 2 * v11;
    v2 = v11;
    if (v11 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }
  }
}

uint64_t sub_1D220FEA4()
{

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MinHeap.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MinHeap.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

unint64_t sub_1D220FF74()
{
  result = qword_1EC6D2D20;
  if (!qword_1EC6D2D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2D20);
  }

  return result;
}

uint64_t sub_1D2210050(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D2210098(uint64_t result, int a2, int a3)
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

uint64_t sub_1D2210118()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *(v0 + 8);
  v3 = *(*v0 + 16);
  if (v2 == v3)
  {
    goto LABEL_6;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    result = *(*v0 + 8 * v2 + 32);
    *(v0 + 8) = v2 + 1;
    v4 = *(v0 + 24);
    v5 = *(*(v0 + 16) + 16);
    if (v4 == v5)
    {
LABEL_6:
      result = 0;
      *(v0 + 32) = 1;
      return result;
    }

    if (v4 < v5)
    {
      *(v0 + 24) = v4 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D22101B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D2250A9C() != a1 || v9 != a2)
  {
    v10 = sub_1D225126C();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D22509FC();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D22102A0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1D22102E4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8AAC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
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
      v7 = sub_1D2250B2C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D2213300(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D221041C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D21C8AE8(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D225124C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2CD8);
      v8 = sub_1D2250B2C();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_1D21D89B8(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1D2210570()
{
  v1 = sub_1D225080C();
  v2 = sub_1D2250CBC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2171000, v1, v2, "Starting mapping migration...", v3, 2u);
    MEMORY[0x1D3899640](v3, -1, -1);
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_1D2174E10(0, &unk_1EDC886D0);
  v5 = sub_1D2250C5C();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v6;
  sub_1D2250DBC();

  if (!v0)
  {
    sub_1D22299E0(16);
    v8 = CFAbsoluteTimeGetCurrent();
    v9 = sub_1D225080C();
    v10 = sub_1D2250CBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v8 - Current;
      _os_log_impl(&dword_1D2171000, v9, v10, "Mapping migration took %fs", v11, 0xCu);
      MEMORY[0x1D3899640](v11, -1, -1);
    }
  }
}

void sub_1D22107D0(void *a1, uint64_t a2)
{
  type metadata accessor for VUIndexMapping();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  [v4 setLabel_];
  [v4 setPartition_];
  [a1 setMapping_];
}

void sub_1D2210898(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char **a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v9 = 0;
    v10 = a2 + 32;
    v11 = a3 + 32;
    do
    {
      v12 = *(v10 + 4 * v9);
      if ((a4 & 1) != 0 && v12 < *(a5 + 80))
      {
        break;
      }

      if (v9 >= *(a3 + 16))
      {
        __break(1u);
        return;
      }

      v13 = *(v11 + 8 * v9);
      v14 = *a6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D21964C0(0, *(v14 + 2) + 1, 1, v14);
        *a6 = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1D21964C0((v16 > 1), v17 + 1, 1, v14);
        *a6 = v14;
      }

      ++v9;
      *(v14 + 2) = v17 + 1;
      v18 = &v14[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 10) = v12;
    }

    while (v6 != v9);
  }
}

uint64_t sub_1D22109C8(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v72) = a4;
  v71 = a3;
  v65 = a2;
  LODWORD(v73) = a1;
  v70 = sub_1D2250D3C();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D225077C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v62 - v14;
  sub_1D225076C();
  v16 = sub_1D225078C();
  v17 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v16, v17, v19, "similarityLabel", "", v18, 2u);
    v20 = v18;
    v5 = v4;
    MEMORY[0x1D3899640](v20, -1, -1);
  }

  (*(v10 + 16))(v13, v15, v9);
  sub_1D22507EC();
  swift_allocObject();
  v21 = sub_1D22507DC();
  (*(v10 + 8))(v15, v9);
  v22 = *(v5 + 16);
  v23 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!*(v24 + 16) || (v25 = sub_1D2176DFC(v73), (v26 & 1) == 0))
  {
    v47 = sub_1D225080C();
    v48 = sub_1D2250CDC();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 16777472;
      v49[4] = v73;
      _os_log_impl(&dword_1D2171000, v47, v48, "No parameters metadata for type %hhu", v49, 5u);
      MEMORY[0x1D3899640](v49, -1, -1);
    }

    goto LABEL_15;
  }

  v63 = v21;
  v27 = *(*(v24 + 56) + 8 * v25);
  sub_1D2174E10(0, &qword_1EDC886A0);
  v64 = v27;

  sub_1D225086C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D2177EAC(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  (*(v69 + 104))(v68, *MEMORY[0x1E69E8090], v70);
  v28 = sub_1D2250D7C();
  v29 = MEMORY[0x1E69E7CC8];
  v80[0] = MEMORY[0x1E69E7CC8];
  v30 = *(v22 + 16);
  v31 = swift_allocObject();
  *(v31 + 16) = v73;
  *(v31 + 17) = 0;
  *(v31 + 18) = 0;
  *(v31 + 20) = 1;
  *(v31 + 24) = v71;
  v32 = v72;
  *(v31 + 32) = v72 & 1;
  *(v31 + 40) = 4096;
  *(v31 + 48) = v22;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 56) = v80;
  v33 = swift_allocObject();
  v33[2] = sub_1D21A6B74;
  v33[3] = v31;
  v78 = sub_1D2179F38;
  v79 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v75 = 1107296256;
  v76 = sub_1D2179EE8;
  v77 = &block_descriptor_21_0;
  v34 = _Block_copy(&aBlock);
  v35 = v30;

  [v35 performBlockAndWait_];

  _Block_release(v34);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = swift_allocObject();
  v37 = v36;
  *(v36 + 16) = v29;
  v38 = (v36 + 16);
  v39 = v65;
  if ((v32 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v29;
    *v38 = 0x8000000000000000;
    sub_1D21B9EA4(v39, isUniquelyReferenced_nonNull_native, 0.0);
    *v38 = aBlock;
  }

  LOBYTE(v80[0]) = 1;
  v80[1] = 0;
  v80[2] = 0;
  v80[3] = v39;
  v81 = 512;
  MEMORY[0x1EEE9AC00](v36);
  v33 = 0;
  sub_1D21BCC70(v73, v80, 0x202u, 0, 0x201u, 128, 16, v64, v41, sub_1D22132F4, (&v62 - 6));

  v78 = nullsub_1;
  v79 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v75 = 1107296256;
  v76 = sub_1D2179EE8;
  v77 = &block_descriptor_27;
  v42 = _Block_copy(&aBlock);

  dispatch_sync(v28, v42);
  _Block_release(v42);
  if (swift_isEscapingClosureAtFileLocation())
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v43 = *v38;
  v44 = *(*v38 + 16);
  if (!v44)
  {

    v45 = MEMORY[0x1E69E7CC0];
    v21 = v63;
    goto LABEL_18;
  }

  v71 = v37;
  v72 = v28;
  v73 = v5;
  v45 = sub_1D21F800C(v44, 0);
  v46 = sub_1D21F91B8(&aBlock, (v45 + 32), v44, v43);
  swift_bridgeObjectRetain_n();
  sub_1D217CF78();
  if (v46 == v44)
  {
    v5 = v73;
    v21 = v63;
    v28 = v72;
LABEL_18:
    aBlock = v45;
    sub_1D221041C(&aBlock);

    v52 = aBlock;
    v53 = *(aBlock + 2);
    if (v53)
    {
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1D21AFA4C(0, v53, 0);
      v54 = 0;
      v50 = aBlock;
      v55 = *(aBlock + 2);
      v56 = 16 * v55;
      do
      {
        v57 = *&v52[v54 + 32];
        v58 = *&v52[v54 + 40];
        aBlock = v50;
        v59 = *(v50 + 3);
        v60 = v55 + 1;
        if (v55 >= v59 >> 1)
        {
          sub_1D21AFA4C((v59 > 1), v55 + 1, 1);
          v50 = aBlock;
        }

        *(v50 + 2) = v60;
        v61 = &v50[v56 + v54];
        *(v61 + 4) = v57;
        *(v61 + 10) = v58;
        v54 += 16;
        v55 = v60;
        --v53;
      }

      while (v53);

      v21 = v63;
      goto LABEL_16;
    }

LABEL_15:
    v50 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D2212DF0(v5, v21, "similarityLabel");

    return v50;
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D221148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v39 = sub_1D225085C();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CD0];
  v45[4] = MEMORY[0x1E69E7CD0];
  v14 = *(a3 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = a3 + 32;
    v17 = a2 + 32;
    v33 = (v9 + 8);
    v34 = v45;
    v32 = (v11 + 8);
    v35 = v14;
    do
    {
      v18 = *(a2 + 16);
      if (v15 == v18)
      {
        break;
      }

      if (v15 >= v18)
      {
        __break(1u);
        return result;
      }

      if (*(a4 + 16))
      {
        v19 = *(v17 + 4 * v15);
        result = sub_1D2176758(*(v16 + 8 * v15));
        if (v20)
        {
          v21 = *(*(a4 + 56) + 8 * result);
          result = sub_1D2198024(aBlock, v21);
          if (result)
          {
            v22 = swift_allocObject();
            *(v22 + 16) = v41;
            *(v22 + 24) = v21;
            *(v22 + 32) = v19;
            v45[2] = sub_1D2213A38;
            v45[3] = v22;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            v45[0] = sub_1D22102A0;
            v45[1] = &block_descriptor_33;
            v42 = _Block_copy(aBlock);

            v23 = v36;
            sub_1D225086C();
            v43 = MEMORY[0x1E69E7CC0];
            sub_1D2177EAC(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
            sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
            v24 = v17;
            v25 = a2;
            v26 = v16;
            v27 = v38;
            v28 = v39;
            sub_1D2250EAC();
            v29 = v42;
            MEMORY[0x1D38987A0](0, v23, v27, v42);
            _Block_release(v29);
            v30 = v27;
            v16 = v26;
            a2 = v25;
            v17 = v24;
            (*v33)(v30, v28);
            v31 = v23;
            v14 = v35;
            (*v32)(v31, v37);
          }
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  return 1;
}

uint64_t sub_1D2211850(uint64_t a1, uint64_t a2, float a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = 0.0;
  if (*(v6 + 16))
  {
    v8 = sub_1D2176758(a2);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 4 * v8);
    }
  }

  swift_endAccess();
  if (v7 > a3)
  {
    a3 = v7;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_1D21B9EA4(a2, isUniquelyReferenced_nonNull_native, a3);
  *(a1 + 16) = v12;
  return swift_endAccess();
}

unint64_t sub_1D2211928(uint64_t a1, uint64_t a2)
{
  v57 = sub_1D2250D3C();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D2250D1C();
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225087C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D225077C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  sub_1D225076C();
  v58 = v2;
  v17 = sub_1D225078C();
  v18 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v19 = swift_slowAlloc();
    v52 = v5;
    v20 = a1;
    v21 = a2;
    v22 = v19;
    *v19 = 0;
    v23 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v17, v18, v23, "similarity", "", v22, 2u);
    v24 = v22;
    a2 = v21;
    a1 = v20;
    v5 = v52;
    MEMORY[0x1D3899640](v24, -1, -1);
  }

  (*(v11 + 16))(v14, v16, v10);
  sub_1D22507EC();
  swift_allocObject();
  v25 = sub_1D22507DC();
  (*(v11 + 8))(v16, v10);
  if (!*(a1 + 16) || !*(a2 + 16))
  {
    goto LABEL_11;
  }

  v52 = a2;
  sub_1D2174E10(0, &qword_1EDC886A0);
  sub_1D225086C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D2177EAC(&qword_1EDC886B0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AE8);
  sub_1D2177F3C(&qword_1EDC886E0, &qword_1EC6D2AE8);
  sub_1D2250EAC();
  (*(v5 + 104))(v56, *MEMORY[0x1E69E8090], v57);
  v26 = a1;
  v27 = sub_1D2250D7C();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v60 = 256;
  v29 = *(v58 + 16);
  sub_1D2174E10(0, &unk_1EDC886D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D22526E0;
  v31 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = MEMORY[0x1E69E6530];
  *(v30 + 64) = v31;
  v57 = v26;
  *(v30 + 32) = *(v26 + 32);
  v32 = sub_1D2250C5C();
  v33 = MEMORY[0x1EEE9AC00](v32);
  *(&v51 - 10) = MEMORY[0x1EEE9AC00](v33);
  *(&v51 - 9) = 0;
  *(&v51 - 8) = &unk_1F4DADD60;
  *(&v51 - 7) = 1;
  *(&v51 - 48) = 0;
  *(&v51 - 5) = 0;
  v47 = 1;
  v48 = v29;
  v49 = sub_1D2213294;
  v50 = v34;
  v36 = v35;
  sub_1D2250DBC();

  if ((v60 & 0x100) != 0 || (v37 = v60, v38 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters, swift_beginAccess(), v39 = *(v29 + v38), !*(v39 + 16)) || (v40 = sub_1D2176DFC(v37), (v41 & 1) == 0))
  {

LABEL_11:
    sub_1D2212DF0(v58, v25, "similarity");

    v45 = 0;
    v46 = 1;
    goto LABEL_12;
  }

  v42 = *(*(v39 + 56) + 8 * v40);
  v61[0] = 2;
  v63 = 0;
  v64 = 0;
  v62 = v57;
  v65 = 513;
  MEMORY[0x1EEE9AC00](v40);

  sub_1D21BCC70(v37, v61, 0x202u, 0, 0x201u, 128, 16, v42, 0, sub_1D22132DC, (&v51 - 6));
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2179EE8;
  aBlock[3] = &block_descriptor_3;
  v43 = _Block_copy(aBlock);

  dispatch_sync(v27, v43);

  _Block_release(v43);
  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v45 = *(v28 + 16);

    sub_1D2212DF0(v58, v25, "similarity");

    v46 = 0;
LABEL_12:
    v61[0] = v46;
    return v45 | (v46 << 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2212168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v9 = sub_1D225085C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D225087C();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[4] = a3;
  v35[5] = 0;
  v35[6] = a2;
  v35[7] = 0;
  v36 = 0;

  v16 = sub_1D2210118();
  if ((v17 & 0x100000000) == 0)
  {
    v18 = v17;
    v28 = (v10 + 8);
    v29 = v35;
    v27 = (v13 + 8);
    do
    {
      v22 = *(a4 + 16);
      v23 = (a4 + 32);
      while (v22)
      {
        v24 = *v23++;
        --v22;
        if (v24 == v16)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = v32;
          *(v19 + 24) = v18;
          v35[2] = sub_1D22132E8;
          v35[3] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v35[0] = sub_1D22102A0;
          v35[1] = &block_descriptor_12;
          v20 = _Block_copy(aBlock);

          sub_1D225086C();
          v33 = MEMORY[0x1E69E7CC0];
          sub_1D2177EAC(&qword_1EDC869F0, MEMORY[0x1E69E7F60]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2AD0);
          sub_1D2177F3C(&qword_1EDC869D8, &qword_1EC6D2AD0);
          sub_1D2250EAC();
          MEMORY[0x1D38987A0](0, v15, v12, v20);
          _Block_release(v20);
          (*v28)(v12, v9);
          (*v27)(v15, v30);

          break;
        }
      }

      v16 = sub_1D2210118();
      v18 = v21;
    }

    while ((v21 & 0x100000000) == 0);
  }

  return 1;
}

uint64_t sub_1D22124EC(uint64_t a1, float a2)
{
  swift_beginAccess();
  if (*(a1 + 16) > a2)
  {
    a2 = *(a1 + 16);
  }

  result = swift_beginAccess();
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_1D2212558(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v9 = HIBYTE(a2);
  v57 = MEMORY[0x1E69E7CC0];
  if (HIBYTE(a2) > 0x3F || ((1 << SHIBYTE(a2)) & 0x8000000000000044) == 0)
  {
    v9 = 0;
  }

  v10 = *(v4 + 16);
  v11 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (*(v12 + 16) && (v13 = sub_1D2176DFC(v9), (v14 & 1) != 0))
  {
    v50 = a4;
    v15 = *(*(v12 + 56) + 8 * v13);
    v56 = 1065336439;
    v55 = 1064346583;
    v54 = a3;
    v16 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v49 = v15;

    v17 = sub_1D225092C();
    v18 = [v16 initWithSuiteName_];

    if (v18)
    {
      v19 = sub_1D225092C();
      v20 = [v18 objectForKey_];

      if (v20)
      {
        sub_1D2250E9C();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v58 = v52;
      v59 = v53;
      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v25 = v51;
          v26 = sub_1D225080C();
          v27 = sub_1D2250CDC();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 134217984;
            *(v28 + 4) = v25;
            _os_log_impl(&dword_1D2171000, v26, v27, "Overriding number of neighbors to %ld", v28, 0xCu);
            MEMORY[0x1D3899640](v28, -1, -1);
          }

          if (v25 < a3)
          {
            a3 = v25;
          }

          v54 = a3;
        }
      }

      else
      {
        sub_1D2176170(&v58, &unk_1EC6D2180);
      }

      v29 = sub_1D225092C();
      v30 = [v18 objectForKey_];

      if (v30)
      {
        sub_1D2250E9C();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v58 = v52;
      v59 = v53;
      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v48 = a1;
          v31 = *&v51;
          v32 = sub_1D225080C();
          v33 = sub_1D2250CDC();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 134217984;
            *(v34 + 4) = v31;
            _os_log_impl(&dword_1D2171000, v32, v33, "Overriding duplicate threshold to %f", v34, 0xCu);
            MEMORY[0x1D3899640](v34, -1, -1);
          }

          v56 = LODWORD(v31);
          a1 = v48;
        }
      }

      else
      {
        sub_1D2176170(&v58, &unk_1EC6D2180);
      }

      v35 = sub_1D225092C();
      v36 = [v18 objectForKey_];

      if (v36)
      {
        sub_1D2250E9C();
        swift_unknownObjectRelease();
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v58 = v52;
      v59 = v53;
      if (*(&v53 + 1))
      {
        if (swift_dynamicCast())
        {
          v37 = *&v51;
          v38 = sub_1D225080C();
          v39 = sub_1D2250CDC();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 134217984;
            *(v40 + 4) = v37;
            _os_log_impl(&dword_1D2171000, v38, v39, "Overriding modality threshold to %f", v40, 0xCu);
            MEMORY[0x1D3899640](v40, -1, -1);
          }

          v55 = LODWORD(v37);
        }

        else
        {
        }
      }

      else
      {

        sub_1D2176170(&v58, &unk_1EC6D2180);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1D22526E0;
    *(result + 32) = a1;
    LOBYTE(v58) = 2;
    v59 = 0uLL;
    *(&v58 + 1) = result;
    v60 = 513;
    if ((a3 - 0x2000000000000000) >> 62 == 3)
    {
      MEMORY[0x1EEE9AC00](result);
      v43[2] = &v55;
      v44 = v41 & 1;
      v45 = &v56;
      v46 = &v57;
      v47 = &v54;
      sub_1D21BCC70(v9, &v58, 0x201u, a2, 0x200u, v42, 4, v49, 1, sub_1D2213280, v43);

      return v57;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_1D225080C();
    v22 = sub_1D2250CDC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 16777472;
      v23[4] = v9;
      _os_log_impl(&dword_1D2171000, v21, v22, "Cannot obtain parameters for type %hhu", v23, 5u);
      MEMORY[0x1D3899640](v23, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D2212C7C(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, char a5, float *a6, char **a7, void *a8)
{
  v10 = 0;
  v11 = *(a3 + 16);
  v12 = a3 + 32;
  v13 = 1.0;
  v14 = a2 + 32;
  while (v11 != v10)
  {
    v15 = *(a2 + 16);
    if (v10 == v15)
    {
      break;
    }

    if (v10 >= v15)
    {
      __break(1u);
      return;
    }

    v16 = *(v14 + 4 * v10);
    if (v16 >= *a4)
    {
      v17 = *(v12 + 8 * v10);
      if ((a5 & 1) != 0 || v16 < (v13 * *a6))
      {
        v18 = *a7;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a7 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = sub_1D2195F78(0, *(v18 + 2) + 1, 1, v18);
          *a7 = v18;
        }

        v21 = *(v18 + 2);
        v20 = *(v18 + 3);
        if (v21 >= v20 >> 1)
        {
          v18 = sub_1D2195F78((v20 > 1), v21 + 1, 1, v18);
          *a7 = v18;
        }

        *(v18 + 2) = v21 + 1;
        *&v18[8 * v21 + 32] = v17;
      }

      ++v10;
      v13 = v16;
      if (*(*a7 + 2) != *a8)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1D2212DF0(uint64_t a1, uint64_t a2, const char *a3)
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

uint64_t sub_1D2213058@<X0>(float *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, float)@<X3>, char *a5@<X8>)
{
  v9 = vcvts_n_f32_s64(a2, 1uLL);
  swift_beginAccess();
  v10 = (v9 / *a3) * 0.95;
  v11 = 1;
  result = swift_beginAccess();
  v13 = *a1 + v10;
  *a1 = v13;
  if (a4)
  {
    result = a4(result, fminf(v13, 1.0));
    v11 = result & 1;
  }

  *a5 = v11;
  return result;
}

uint64_t sub_1D221313C()
{
  result = sub_1D22507AC();
  if (v1 <= 0x3F)
  {
    result = sub_1D225082C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D2213234(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D2250ABC();
  }

  __break(1u);
  return result;
}

id sub_1D2213294(void *a1)
{
  v2 = *(v1 + 16);
  result = [a1 type];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    *v2 = result;
    v2[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2213300(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D21C88C8(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D221384C((*a3 + *v77), (*a3 + *v79), *a3 + v80, v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + v7);
      v11 = *(*a3 + v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
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
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + v17);
            *(v20 + v17) = *(v20 + v16);
            *(v20 + v16) = v18;
          }
        }

        while (++v17 < v16--);
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
      result = sub_1D2195E30(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D2195E30((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D221384C((*a3 + *v70), (*a3 + *v72), *a3 + v73, v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *(v26 - 1);
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v27;
    *--v26 = v24;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_1D221384C(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
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

uint64_t sub_1D2213A4C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, NSObject *a8, char a9, uint64_t *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, char a14)
{
  v130 = a7;
  v126 = a6;
  v129 = a3;
  v127 = a2;
  v19 = sub_1D225077C();
  v128 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v125 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v108 - v25;
  v132 = v14;
  v27 = *(v14 + 16);
  v28 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  v29 = *&v28[v27];
  v30 = *(v29 + 16);
  v131 = a1;
  if (!v30 || (v31 = sub_1D2176DFC(a1), (v32 & 1) == 0))
  {
    v34 = sub_1D225080C();
    v38 = sub_1D2250CDC();
    if (os_log_type_enabled(v34, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 16777472;
      v39[4] = v131;
      _os_log_impl(&dword_1D2171000, v34, v38, "No parameters for type %hhu", v39, 5u);
      MEMORY[0x1D3899640](v39, -1, -1);
    }

    goto LABEL_59;
  }

  v33 = *(*(v29 + 56) + 8 * v31);
  if ((a5 & 1) == 0 && *(v33 + 24) != a4)
  {

    a8 = sub_1D225080C();
    v42 = sub_1D2250CDC();
    if (os_log_type_enabled(a8, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = a4;
      *(v43 + 12) = 2048;
      v44 = *&v28[v27];
      v45 = *(v44 + 16);
      if (v45)
      {
        v46 = sub_1D2176DFC(v131);
        if (v47)
        {
          v45 = *(*(*(v44 + 56) + 8 * v46) + 24);
        }

        else
        {
          v45 = 0;
        }
      }

      *(v43 + 14) = v45;

      _os_log_impl(&dword_1D2171000, a8, v42, "Embedding revision %ld is different from index revision %ld", v43, 0x16u);
      MEMORY[0x1D3899640](v43, -1, -1);

      goto LABEL_79;
    }

    goto LABEL_28;
  }

  if ((a9 & 1) == 0 && *(v33 + 32) != a8)
  {

    v48 = sub_1D225080C();
    v49 = sub_1D2250CDC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      *(v50 + 4) = a8;
      *(v50 + 12) = 2048;
      v51 = *&v28[v27];
      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = sub_1D2176DFC(v131);
        if (v54)
        {
          v52 = *(*(*(v51 + 56) + 8 * v53) + 32);
        }

        else
        {
          v52 = 0;
        }
      }

      *(v50 + 14) = v52;

      _os_log_impl(&dword_1D2171000, v48, v49, "Contextual embedding revision %ld is different from index revision %ld", v50, 0x16u);
      MEMORY[0x1D3899640](v50, -1, -1);

      goto LABEL_79;
    }

LABEL_30:

LABEL_79:

    return MEMORY[0x1E69E7CC0];
  }

  if (v129 >> 60 == 15)
  {
    if (v130 >> 60 == 15)
    {

      v34 = sub_1D225080C();
      v35 = sub_1D2250CDC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        v37 = "Missing either an embedding or contextual embedding";
LABEL_57:
        _os_log_impl(&dword_1D2171000, v34, v35, v37, v36, 2u);
        MEMORY[0x1D3899640](v36, -1, -1);
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    goto LABEL_42;
  }

  v40 = v129 >> 62;
  if ((v129 >> 62) <= 1)
  {
    if (v40)
    {
      v41 = (HIDWORD(v127) - v127);
      if (__OFSUB__(HIDWORD(v127), v127))
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v41 = v41;
    }

    else
    {
      v41 = BYTE6(v129);
    }

    goto LABEL_34;
  }

  if (v40 != 2)
  {
    v41 = 0;
    goto LABEL_34;
  }

  v56 = *(v127 + 16);
  v55 = *(v127 + 24);
  v57 = __OFSUB__(v55, v56);
  v41 = v55 - v56;
  if (v57)
  {
    __break(1u);
LABEL_28:

    goto LABEL_30;
  }

LABEL_34:
  v58 = *(v33 + 48);
  if (*(v33 + 56))
  {
    if ((v58 - 0x2000000000000000) >> 62 == 3)
    {
      if (v41 != 4 * v58)
      {
        goto LABEL_37;
      }

LABEL_41:
      if (v130 >> 60 == 15)
      {
        goto LABEL_64;
      }

LABEL_42:
      v59 = v130 >> 62;
      if ((v130 >> 62) > 1)
      {
        if (v59 != 2)
        {
          v41 = 0;
          goto LABEL_52;
        }

        v61 = *(v126 + 16);
        v60 = *(v126 + 24);
        v57 = __OFSUB__(v60, v61);
        v41 = v60 - v61;
        if (!v57)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v59)
      {
        v41 = BYTE6(v130);
LABEL_52:
        v62 = *(v33 + 48);
        if ((*(v33 + 56) & 1) == 0)
        {
          if (v62 + 0x4000000000000000 >= 0)
          {
            if (v41 != 2 * v62)
            {
LABEL_55:

              v34 = sub_1D225080C();
              v35 = sub_1D2250CDC();
              if (os_log_type_enabled(v34, v35))
              {
                v36 = swift_slowAlloc();
                *v36 = 0;
                v37 = "Unexpected contextual embedding size";
                goto LABEL_57;
              }

              goto LABEL_58;
            }

LABEL_64:
            v124 = v33;

            sub_1D225076C();
            v64 = sub_1D225078C();
            v65 = sub_1D2250DAC();
            if (sub_1D2250E4C())
            {
              v66 = swift_slowAlloc();
              *v66 = 0;
              v67 = sub_1D225075C();
              _os_signpost_emit_with_name_impl(&dword_1D2171000, v64, v65, v67, "search", "", v66, 2u);
              MEMORY[0x1D3899640](v66, -1, -1);
            }

            v68 = v128;
            v123 = *(v128 + 16);
            v123(v24, v26, v19);
            v122 = sub_1D22507EC();
            swift_allocObject();
            v69 = sub_1D22507DC();
            v71 = *(v68 + 8);
            v70 = v68 + 8;
            v121 = v71;
            v71(v26, v19);
            v72 = *&v28[v27];
            v73 = v131;
            if (!*(v72 + 16) || (v74 = sub_1D2176DFC(v131), (v75 & 1) == 0))
            {
              v97 = v132;
              v98 = sub_1D225080C();
              v99 = sub_1D2250CDC();
              if (os_log_type_enabled(v98, v99))
              {
                v100 = swift_slowAlloc();
                *v100 = 16777472;
                v100[4] = v73;
                _os_log_impl(&dword_1D2171000, v98, v99, "No parameters metadata for type %hhu", v100, 5u);
                MEMORY[0x1D3899640](v100, -1, -1);
              }

              sub_1D2212DF0(v97, v69, "search");

              return MEMORY[0x1E69E7CC0];
            }

            v117 = v69;
            v128 = v70;
            v111 = a12;
            v109 = a10;
            v76 = *(*(v72 + 56) + 8 * v74);
            LODWORD(v118) = a13;
            v136 = MEMORY[0x1E69E7CC0];
            v110 = *(v132 + OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_scanner);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23C8);
            inited = swift_initStackObject();
            v120 = xmmword_1D22526E0;
            *(inited + 16) = xmmword_1D22526E0;
            v78 = v127;
            *(inited + 32) = v127;
            v116 = inited + 32;
            v79 = v129;
            v119 = inited;
            *(inited + 40) = v129;
            v80 = swift_initStackObject();
            *(v80 + 16) = v120;
            v81 = v126;
            *(v80 + 32) = v126;
            v115 = v80 + 32;
            v82 = v130;
            v114 = v80;
            *(v80 + 40) = v130;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23E8);
            v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
            v83 = (*(*(v108 - 8) + 80) + 32) & ~*(*(v108 - 8) + 80);
            v84 = swift_allocObject();
            *(v84 + 16) = v120;
            v113 = v84;
            v112 = v83;
            v85 = sub_1D2174DA8(v109, v84 + v83, &qword_1EC6D2110);
            *&v120 = &v108;
            MEMORY[0x1EEE9AC00](v85);
            v109 = &v108 - 6;
            *(&v108 - 32) = v118 & 1;
            *(&v108 - 3) = v76;
            *(&v108 - 2) = &v136;
            v118 = v76;
            v27 = v110;

            sub_1D21A3B64(v78, v79);
            sub_1D21A3B64(v81, v82);
            v86 = v125;
            sub_1D225076C();
            v87 = sub_1D225078C();
            v88 = sub_1D2250DAC();
            if (sub_1D2250E4C())
            {
              v89 = swift_slowAlloc();
              *v89 = 0;
              v90 = sub_1D225075C();
              _os_signpost_emit_with_name_impl(&dword_1D2171000, v87, v88, v90, "searchBatch", "", v89, 2u);
              v91 = v89;
              v86 = v125;
              MEMORY[0x1D3899640](v91, -1, -1);
            }

            v123(v24, v86, v19);
            swift_allocObject();
            v92 = sub_1D22507DC();
            v121(v86, v19);
            v134 = 0;
            v135 = 0;
            v93 = v119;
            v19 = *(v119 + 40);
            v94 = v117;
            if (v19 >> 60 == 15)
            {
              v95 = 0;
              v96 = 0;
              v28 = MEMORY[0x1E69E7CC0];
LABEL_82:
              v101 = v131;
              v102 = sub_1D21D7DAC(v131, v96, v95, v111);
              v103 = sub_1D21C3048(v28, v102);

              v133 = 1;
              v104 = sub_1D2174E10(0, &qword_1EDC886A0);
              MEMORY[0x1EEE9AC00](v104);
              *(&v108 - 16) = &v133;
              *(&v108 - 15) = a11;
              *(&v108 - 56) = 514;
              *(&v108 - 13) = 0;
              *(&v108 - 48) = 513;
              *(&v108 - 94) = a14 & 1;
              *(&v108 - 11) = v103;
              *(&v108 - 10) = &unk_1F4DADAC0;
              *(&v108 - 9) = v27;
              *(&v108 - 64) = v101;
              v105 = v114;
              *(&v108 - 7) = v113;
              *(&v108 - 6) = v105;
              *(&v108 - 5) = v118;
              *(&v108 - 4) = v93;
              *(&v108 - 24) = 0;
              v106 = v109;
              *(&v108 - 2) = sub_1D221815C;
              *(&v108 - 1) = v106;
              sub_1D2250D2C();
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D23D0);
              swift_arrayDestroy();
              swift_setDeallocating();
              swift_arrayDestroy();

              sub_1D21A1ED8(v134, v135);
              sub_1D21BE918(v27, v92);

              v107 = v136;
              sub_1D2212DF0(v132, v94, "search");

              return v107;
            }

            v130 = v92;
            v24 = v117;
            a4 = *(v119 + 32);
            sub_1D21A3B78(a4, v19);
            v28 = sub_1D2195F78(0, 1, 1, MEMORY[0x1E69E7CC0]);
            a1 = *(v28 + 2);
            v41 = *(v28 + 3);
            v29 = a1 + 1;
            if (a1 < v41 >> 1)
            {
LABEL_81:
              *(v28 + 2) = v29;
              *&v28[8 * a1 + 32] = 0;
              sub_1D225047C();
              sub_1D21A1F98(a4, v19);
              v96 = v134;
              v95 = v135;
              v94 = v24;
              v93 = v119;
              v92 = v130;
              goto LABEL_82;
            }

LABEL_89:
            v28 = sub_1D2195F78((v41 > 1), v29, 1, v28);
            goto LABEL_81;
          }

          goto LABEL_86;
        }

        if ((v62 - 0x2000000000000000) >> 62 == 3)
        {
          if (v41 != 4 * v62)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v41 = (HIDWORD(v126) - v126);
      if (__OFSUB__(HIDWORD(v126), v126))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v41 = v41;
      goto LABEL_52;
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v58 + 0x4000000000000000 < 0)
  {
    goto LABEL_84;
  }

  if (v41 == 2 * v58)
  {
    goto LABEL_41;
  }

LABEL_37:

  v34 = sub_1D225080C();
  v35 = sub_1D2250CDC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = "Unexpected embedding size";
    goto LABEL_57;
  }

LABEL_58:

LABEL_59:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2214A88(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void (*a6)(float), uint64_t a7)
{
  v385 = a7;
  v389 = a6;
  v367 = a5;
  v378 = a4;
  v369 = a3;
  v387 = a2;
  v383 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2110);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v382 = &v307 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v381 = &v307 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v372 = &v307 - v13;
  v374 = sub_1D225055C();
  v380 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v373 = &v307 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v368 = &v307 - v16;
  v390 = sub_1D22503FC();
  v384 = *(v390 - 8);
  v17 = MEMORY[0x1EEE9AC00](v390);
  v361 = &v307 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v365 = &v307 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v388 = &v307 - v21;
  v22 = sub_1D225077C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v364 = &v307 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v386 = &v307 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v307 - v28;
  v30 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_signposter;
  sub_1D225076C();
  v392 = v7;
  v363 = v30;
  v31 = sub_1D225078C();
  v32 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v33 = v22;
    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v31, v32, v35, "update", "", v34, 2u);
    v36 = v34;
    v22 = v33;
    MEMORY[0x1D3899640](v36, -1, -1);
  }

  v38 = v23 + 16;
  v37 = *(v23 + 16);
  v37(v386, v29, v22);
  v39 = sub_1D22507EC();
  swift_allocObject();
  v40 = sub_1D22507DC();
  v43 = *(v23 + 8);
  v42 = v23 + 8;
  v41 = v43;
  v43(v29, v22);
  v44 = v391;
  v45 = *(v392 + 16);
  sub_1D22299E0(16);
  if (v44)
  {
    goto LABEL_226;
  }

  v346 = v37;
  v344 = v41;
  v345 = v39;
  v347 = v38;
  v355 = v40;
  v348 = v42;
  v349 = v22;
  v46 = swift_allocObject();
  v47 = sub_1D2219F2C(0, 0, 1);
  v360 = v46;
  *(v46 + 16) = v47;
  v48 = (v46 + 16);
  v366 = swift_allocObject();
  *(v366 + 16) = 0;
  v49 = v384;
  v50 = *(v384 + 6);
  v51 = v390;
  v377 = v384 + 48;
  v376 = v50;
  v52 = (v50)(v387, 1, v390);
  v53 = v45;
  if (v52 != 1)
  {
    MEMORY[0x1EEE9AC00](v52);
    *(&v307 - 4) = v45;
    *(&v307 - 24) = 6;
    *(&v307 - 2) = sub_1D2212DE0;
    *(&v307 - 1) = 0;
    v65 = v64;
    sub_1D2250DBC();

    v299 = *(v53 + 16);
    sub_1D2250DBC();
  }

  swift_beginAccess();

  aBlock[0] = sub_1D21F84E0(v54);
  sub_1D22102E4(aBlock);

  v55 = v389;
  v370 = *(aBlock[0] + 2);
  if (!v370)
  {
LABEL_206:

    sub_1D221E3AC();
    v300 = v355;
    if (v55)
    {
      v55(1.0);
    }

    sub_1D2212DF0(v392, v300, "update");
  }

  v356 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_scanner;
  v357 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_logger;
  v351 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_quantizer;
  v331 = OBJC_IVAR____TtC19VisualUnderstanding16VUPersistedIndex_clusterer;
  v371 = aBlock[0] + 32;
  v362 = aBlock[0];
  v312 = v48;
  swift_beginAccess();
  v57 = v362;
  v58 = 0;
  v59 = v383;
  v359 = (v383 + 32);
  v350 = &v394;
  v329 = (v49 + 32);
  v60 = 1819047270;
  if (v369)
  {
    v60 = 1953718630;
  }

  v322 = v60;
  v328 = (v49 + 16);
  v327 = (v49 + 8);
  v339 = "ing/VUIndexQuantizer.swift";
  v352 = (v380 + 48);
  v336 = (v380 + 32);
  v335 = (v380 + 56);
  v334 = (v380 + 16);
  v332 = (v380 + 8);
  v314 = "ity";
  v311 = " -1 AND type == %d";
  *&v56 = 16777986;
  v321 = v56;
  *&v56 = 134218240;
  v316 = v56;
  *(&v61 + 1) = 2;
  v358 = xmmword_1D22526E0;
  *&v61 = 134218496;
  v313 = v61;
  *&v61 = 134217984;
  v325 = v61;
  *(&v61 + 1) = 0xF000000000000000;
  v333 = xmmword_1D2253ED0;
  *&v61 = 136315138;
  v318 = v61;
  v62 = v388;
  v63 = 0;
  v380 = v53;
  while (1)
  {
    if (v58 >= *(v57 + 2))
    {
      __break(1u);

      goto LABEL_221;
    }

    v66 = v371[v58];
    if (v59)
    {
      v67 = *(v59 + 16);
      v68 = v359;
      while (v67)
      {
        v69 = *v68++;
        --v67;
        if (v69 == v66)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_14;
    }

LABEL_20:
    v391 = v63;
    v379 = v58;
    v70 = v376(v387, 1, v51) != 1 && v66 == 6;
    v71 = v70;
    if (v70)
    {
      if (v378)
      {
        v72 = *(v392 + v356);
        v375 = 1;
LABEL_39:
        v89 = v368;
        sub_1D2174DA8(v387, v368, &qword_1EC6D2100);
        if (v376(v89, 1, v51) == 1)
        {

          v85 = sub_1D2176170(v89, &qword_1EC6D2100);
          goto LABEL_41;
        }

        (*v329)(v62, v89, v51);
        v337 = v72;

        v112 = v364;
        sub_1D225076C();
        v113 = sub_1D225078C();
        v114 = sub_1D2250DAC();
        v115 = sub_1D2250E4C();
        v116 = v346;
        if (v115)
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          v118 = sub_1D225075C();
          _os_signpost_emit_with_name_impl(&dword_1D2171000, v113, v114, v118, "syncAssets", "", v117, 2u);
          MEMORY[0x1D3899640](v117, -1, -1);
        }

        v119 = v349;
        v116(v386, v112, v349);
        swift_allocObject();
        v338 = sub_1D22507DC();
        v344(v112, v119);
        v120 = sub_1D225080C();
        v121 = sub_1D2250CBC();
        v122 = os_log_type_enabled(v120, v121);
        v354 = v66;
        if (v122)
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          aBlock[0] = v124;
          *v123 = v321;
          *(v123 + 4) = v66;
          *(v123 + 5) = 2080;
          v125 = sub_1D21761D0(v322, 0xE400000000000000, aBlock);

          *(v123 + 7) = v125;
          *(v123 + 15) = 2080;
          if (v375)
          {
            v126 = 0x646563726F662820;
          }

          else
          {
            v126 = 0;
          }

          if (v375)
          {
            v127 = 0xE900000000000029;
          }

          else
          {
            v127 = 0xE000000000000000;
          }

          v128 = sub_1D21761D0(v126, v127, aBlock);

          *(v123 + 17) = v128;
          v53 = v380;
          _os_log_impl(&dword_1D2171000, v120, v121, "Using vector store to update type %hhu in %s mode%s", v123, 0x19u);
          swift_arrayDestroy();
          v129 = v124;
          v51 = v390;
          MEMORY[0x1D3899640](v129, -1, -1);
          MEMORY[0x1D3899640](v123, -1, -1);
        }

        v130 = *v328;
        v131 = v365;
        v132 = v388;
        (*v328)(v365, v388, v51);
        v133 = *(v392 + v351);
        type metadata accessor for VUVectorSearchScanner();
        swift_allocObject();

        v134 = v391;
        v135 = sub_1D224CE5C(v131, v53, v133, 160000000);
        if (v134)
        {

          v136 = v361;
          v130(v361, v132, v51);
          v137 = sub_1D225080C();
          v138 = sub_1D2250CDC();
          v139 = os_log_type_enabled(v137, v138);
          v140 = v327;
          if (v139)
          {
            v141 = swift_slowAlloc();
            v142 = swift_slowAlloc();
            aBlock[0] = v142;
            *v141 = v318;
            v143 = sub_1D225030C();
            v145 = v144;
            v146 = v136;
            v147 = *v140;
            (*v140)(v146, v390);
            v148 = sub_1D21761D0(v143, v145, aBlock);

            *(v141 + 4) = v148;
            _os_log_impl(&dword_1D2171000, v137, v138, "Cannot open the vector store at %s!", v141, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v142);
            v149 = v142;
            v53 = v380;
            MEMORY[0x1D3899640](v149, -1, -1);
            v150 = v141;
            v51 = v390;
            MEMORY[0x1D3899640](v150, -1, -1);
          }

          else
          {

            v164 = v136;
            v147 = *v140;
            (*v140)(v164, v51);
          }

          sub_1D2212DF0(v392, v338, "syncAssets");

          v62 = v388;
          v147(v388, v51);
          v63 = 0;
          goto LABEL_11;
        }

        v151 = v135;
        v330 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
        v152 = *(v53 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters);
        v153 = *(v152 + 16);
        v66 = v354;
        v384 = v135;
        if (v153 && (v154 = sub_1D2176DFC(v354), (v155 & 1) != 0) && *(*(*(v152 + 56) + 8 * v154) + 24) == *&v151[OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision])
        {
          v156 = 0;
        }

        else
        {

          v157 = sub_1D225080C();
          v158 = sub_1D2250CEC();
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            *v159 = v316;
            v160 = *(v53 + v330);
            v161 = *(v160 + 16);
            if (v161)
            {
              v162 = sub_1D2176DFC(v66);
              if (v163)
              {
                v161 = *(*(*(v160 + 56) + 8 * v162) + 24);
              }

              else
              {
                v161 = 0;
              }
            }

            *(v159 + 4) = v161;

            *(v159 + 12) = 2048;
            *(v159 + 14) = *&v384[OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision];

            _os_log_impl(&dword_1D2171000, v157, v158, "Resetting index as a new embedding revision is available: %ld -> %ld", v159, 0x16u);
            MEMORY[0x1D3899640](v159, -1, -1);

            v51 = v390;
          }

          else
          {
          }

          sub_1D2174E10(0, &unk_1EDC886D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
          v165 = swift_allocObject();
          *(v165 + 16) = v358;
          *(v165 + 56) = MEMORY[0x1E69E7508];
          *(v165 + 64) = MEMORY[0x1E69E7558];
          *(v165 + 32) = v66;
          v166 = sub_1D2250C5C();
          *(&v307 - 2) = MEMORY[0x1EEE9AC00](v166);
          *(&v307 - 1) = v53;
          v168 = v167;
          sub_1D2250DBC();

          v169 = sub_1D22299E0(16);
          v151 = v384;
          if (v389)
          {
            (v389)(v169, 0.0);
          }

          v156 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2D28);
        v170 = sub_1D2250D5C();
        LODWORD(v353) = v156;
        v171 = aBlock[0];
        v172 = *&v151[OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_defaultAssetSuffix + 8];
        v173 = *(v53 + 16);
        MEMORY[0x1EEE9AC00](v170);
        *(&v307 - 24) = -1;
        *(&v307 - 46) = v66;
        *(&v307 - 5) = 4096;
        *(&v307 - 4) = v53;
        *(&v307 - 3) = v174;
        *(&v307 - 2) = v172;

        v175 = v173;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2E10);
        sub_1D2250DBC();

        v62 = aBlock[0];

        v177 = sub_1D220F1E4(v176);
        v178 = v177;
        v179 = *(v171 + 2);
        v180 = *(v177 + 16);
        v317 = v171;
        if (v179 > v180 >> 3)
        {

          v71 = sub_1D22039D0(v171, v178);
        }

        else
        {
          aBlock[0] = v177;

          sub_1D2203448(v171);
          v71 = aBlock[0];
        }

        v181 = v389;
        v391 = 0;
        if (*(v71 + 16))
        {

          v183 = sub_1D21F3E24(v182);
          isa = v183[2].isa;
          if (isa)
          {
            v309 = v178;
            v310 = v71;
            v324 = sub_1D2174E10(0, &unk_1EDC886D0);
            v184 = 0;
            v343 = v183;
            v320 = v183 + 5;
            v323 = 0xD000000000000010;
            v185 = 0x2000;
            v186 = isa;
            while (1)
            {
              v341 = v185;
              if (v186 >= v185)
              {
                v187 = v185;
              }

              else
              {
                v187 = v186;
              }

              v188 = __OFADD__(v184, 0x2000);
              v189 = MEMORY[0x1D3898F20]();
              if (v188)
              {
                goto LABEL_231;
              }

              if (v186 >= v184 + 0x2000)
              {
                v71 = v184 + 0x2000;
              }

              else
              {
                v71 = v186;
              }

              if (v71 < v184)
              {
                goto LABEL_232;
              }

              v190 = v343[2].isa;
              if (v190 < v184 || v190 < v71)
              {
                goto LABEL_233;
              }

              v340 = v184 + 0x2000;
              v342 = v189;

              if (v184 == v71)
              {
                v353 = MEMORY[0x1E69E7CC0];
                goto LABEL_129;
              }

              v319 = v187 - 1;
              v353 = MEMORY[0x1E69E7CC0];
              v192 = v184;
              do
              {
                v193 = &v320[2 * v192];
                v51 = v192;
                while (1)
                {
                  if (v192 < v184 || v51 >= v71)
                  {
                    __break(1u);

                    goto LABEL_221;
                  }

                  if (*(v62 + 2))
                  {
                    break;
                  }

LABEL_117:
                  ++v51;
                  v193 += 2;
                  if (v187 == v51)
                  {
                    v181 = v389;
                    goto LABEL_129;
                  }
                }

                v195 = *(v193 - 1);
                v194 = *v193;

                v186 = v62;
                v196 = sub_1D2196C7C(v195, v194);
                if ((v197 & 1) == 0)
                {

                  goto LABEL_117;
                }

                v198 = *(*(v62 + 7) + 8 * v196);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v315 = v198;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v353 = sub_1D2195F78(0, *(v353 + 2) + 1, 1, v353);
                }

                v181 = v389;
                v201 = *(v353 + 2);
                v200 = *(v353 + 3);
                v186 = (v201 + 1);
                if (v201 >= v200 >> 1)
                {
                  v353 = sub_1D2195F78((v200 > 1), v201 + 1, 1, v353);
                }

                v192 = (v51 + 1);
                v202 = v353;
                *(v353 + 2) = v186;
                *&v202[8 * v201 + 32] = v315;
              }

              while (v319 != v51);
LABEL_129:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
              v203 = swift_allocObject();
              *(v203 + 16) = v358;
              *(v203 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
              *(v203 + 64) = sub_1D2177F3C(&qword_1EDC869D0, &qword_1EC6D21D8);
              *(v203 + 32) = v353;
              v204 = sub_1D2250C5C();
              v205 = v380;
              *(&v307 - 2) = MEMORY[0x1EEE9AC00](v204);
              *(&v307 - 1) = v205;
              v207 = v206;
              v208 = v391;
              sub_1D2250DBC();
              if (v208)
              {

                swift_bridgeObjectRelease_n();

                v306 = v390;
                objc_autoreleasePoolPop(v342);

                sub_1D2212DF0(v392, v338, "syncAssets");

                (*v327)(v388, v306);

                goto LABEL_225;
              }

              v209 = sub_1D22299E0(16);
              v71 = v366;
              v391 = 0;
              v51 = v390;
              if (v181)
              {
                (v181)(v209, 0.0);
              }

              objc_autoreleasePoolPop(v342);
              v185 = v341 + 0x2000;
              v184 = v340;
              v186 = isa;
              v66 = v354;
              if (v340 >= isa)
              {

                LODWORD(v353) = 1;
                v53 = v380;
                v71 = v310;
                v178 = v309;
                goto LABEL_135;
              }
            }
          }

          LODWORD(v353) = 1;
        }

        else
        {
        }

LABEL_135:
        v210 = v317;
        v62 = v388;
        v72 = v384;
        if (*(v178 + 16) > *(v317 + 2) >> 3)
        {

          v212 = sub_1D22039D0(v178, v210);
        }

        else
        {
          aBlock[0] = v317;

          sub_1D2203448(v178);

          v212 = aBlock[0];
        }

        if (*(v212 + 2))
        {

          v214 = sub_1D21F3E24(v213);
          v215 = *(v214 + 16);
          if (v215)
          {
            v309 = v212;
            v310 = v71;
            v216 = 0;
            v323 = 0;
            v341 = OBJC_IVAR____TtC19VisualUnderstanding21VUVectorSearchScanner_embeddingRevision;
            v340 = v214;
            isa = (v214 + 40);
            v217 = 2048;
            v71 = v374;
            v308 = v215;
            while (1)
            {
              v320 = v217;
              v218 = (v215 >= v217 ? v217 : v215);
              v353 = v218;
              v219 = __OFADD__(v216, 2048);
              v220 = v215;
              v221 = MEMORY[0x1D3898F20]();
              if (v219)
              {
                break;
              }

              if (v220 >= (v216 + 256))
              {
                v222 = (v216 + 2048);
              }

              else
              {
                v222 = v220;
              }

              if (v222 < v216)
              {
                goto LABEL_235;
              }

              v319 = v216 + 2048;
              v324 = v221;
              v223 = *(v340 + 16);
              v224 = v223 < v216 || v223 < v222;
              v225 = v391;
              if (v224)
              {
                goto LABEL_236;
              }

              v315 = v222 - v216;
              if (v222 != v216)
              {

                v226 = isa;
                v343 = v222;
                while (v216 < v222)
                {
                  v229 = *(v226 - 1);
                  v228 = *v226;

                  sub_1D22101B0(47, 0xE100000000000000, v229, v228);
                  v391 = v225;
                  if (v230)
                  {
                    v231 = 0;
                    v232 = 0;
                  }

                  else
                  {
                    v233 = sub_1D2250ABC();
                    MEMORY[0x1D3898400](v233);

                    v234 = sub_1D22509FC();
                    v235 = sub_1D2213234(v234, v229, v228);
                    v237 = v236;
                    v239 = v238;
                    v241 = v240;

                    v231 = MEMORY[0x1D3898400](v235, v237, v239, v241);
                    v232 = v242;

                    v71 = v374;
                  }

                  v243 = v372;
                  sub_1D225050C();

                  if ((*v352)(v243, 1, v71) == 1)
                  {

                    v227 = v243;
                    v51 = v390;
                    v225 = v391;
                    v62 = v388;
                    v53 = v380;
                  }

                  else
                  {
                    v244 = v373;
                    (*v336)(v373, v243, v71);
                    v342 = *&v384[v341];
                    v245 = *v335;
                    (*v335)(v381, 1, 1, v71);
                    v246 = v382;
                    (*v334)(v382, v244, v71);
                    v247 = (v245)(v246, 0, 1, v71);
                    v53 = v380;
                    v248 = v354;
                    if (*(*(v380 + v330) + 16))
                    {
                      v247 = sub_1D2176DFC(v354);
                    }

                    MEMORY[0x1EEE9AC00](v247);
                    *(&v307 - 22) = 0;
                    *(&v307 - 168) = 1;
                    *(&v307 - 83) = -1;
                    *(&v307 - 20) = v53;
                    *(&v307 - 19) = 0;
                    *(&v307 - 144) = 1;
                    v249 = v333;
                    *(&v307 - 17) = v333;
                    *(&v307 - 15) = v249;
                    *(&v307 - 104) = v248;
                    *(&v307 - 12) = v381;
                    *(&v307 - 11) = v382;
                    *(&v307 - 10) = v231;
                    *(&v307 - 9) = v232;
                    *(&v307 - 64) = 3;
                    *(&v307 - 15) = 0;
                    *(&v307 - 56) = 1;
                    *(&v307 - 13) = 0;
                    *(&v307 - 24) = 257;
                    *(&v307 - 5) = v342;
                    *(&v307 - 32) = 0;
                    *(&v307 - 3) = 0;
                    *(&v307 - 16) = 1;
                    v251 = v250;
                    v252 = v391;
                    sub_1D2250DBC();
                    v225 = v252;
                    if (v252)
                    {

                      swift_bridgeObjectRelease_n();

                      (*v332)(v373, v374);
                      v51 = v390;
                      v62 = v388;
                      sub_1D2176170(v382, &qword_1EC6D2110);
                      sub_1D2176170(v381, &qword_1EC6D2110);
                      v254 = v355;
                      goto LABEL_216;
                    }

                    v253 = *(v53 + 16);
                    sub_1D2250DBC();
                    v51 = v390;
                    v62 = v388;

                    v71 = v374;
                    (*v332)(v373, v374);
                    sub_1D2176170(v382, &qword_1EC6D2110);
                    v227 = v381;
                  }

                  ++v216;
                  sub_1D2176170(v227, &qword_1EC6D2110);
                  v226 += 2;
                  v222 = v343;
                  if (v353 == v216)
                  {

                    v66 = v354;
                    goto LABEL_170;
                  }
                }

                __break(1u);
                goto LABEL_230;
              }

LABEL_170:
              sub_1D22299E0(16);
              v254 = v355;
              v255 = v389;
              if (v225)
              {

                swift_bridgeObjectRelease_n();

LABEL_216:
                objc_autoreleasePoolPop(v324);

                sub_1D2212DF0(v392, v338, "syncAssets");

                (*v327)(v62, v51);

                v40 = v254;
                goto LABEL_226;
              }

              v391 = 0;
              v256 = v323 + v315;
              if (__OFADD__(v323, v315))
              {
                goto LABEL_237;
              }

              v257 = sub_1D225080C();
              v258 = sub_1D2250CBC();
              if (os_log_type_enabled(v257, v258))
              {
                v259 = swift_slowAlloc();
                *v259 = v325;
                *(v259 + 4) = v256;
                _os_log_impl(&dword_1D2171000, v257, v258, "Added %ld assets, flushing...", v259, 0xCu);
                v260 = v259;
                v71 = v374;
                MEMORY[0x1D3899640](v260, -1, -1);
              }

              v323 = v256;

              if (v255)
              {
                v255(0.0);
              }

              objc_autoreleasePoolPop(v324);
              v217 = &v320[256];
              isa = (isa + 0x8000);
              v216 = v319;
              v215 = v308;
              if (v319 >= v308)
              {

                v72 = v384;
                v71 = v310;
                v212 = v309;
                v261 = v323;
                goto LABEL_181;
              }
            }

LABEL_234:
            __break(1u);
LABEL_235:
            __break(1u);
LABEL_236:
            __break(1u);
LABEL_237:
            __break(1u);
LABEL_238:
            __break(1u);

            __break(1u);
            return result;
          }

          v261 = 0;
LABEL_181:
          if (__OFADD__(*v312, v261))
          {
            goto LABEL_238;
          }

          *v312 += v261;
        }

        else if (!v353)
        {
          goto LABEL_185;
        }

        v309 = v212;
        MEMORY[0x1EEE9AC00](v211);
        *(&v307 - 4) = v53;
        *(&v307 - 24) = v66;
        *(&v307 - 2) = sub_1D2213048;
        *(&v307 - 1) = 0;
        v263 = v262;
        v264 = v391;
        sub_1D2250DBC();
        if (!v264)
        {

          sub_1D22299E0(16);
          v391 = 0;
          v212 = v309;
LABEL_185:

          v265 = v317;

          v266 = sub_1D225080C();
          LODWORD(v353) = sub_1D2250CEC();
          if (os_log_type_enabled(v266, v353))
          {
            v267 = swift_slowAlloc();
            v343 = v266;
            v268 = v212;
            v269 = v267;
            *v267 = v313;
            v270 = *(v71 + 16);

            *(v269 + 1) = v270;

            *(v269 + 6) = 2048;
            v271 = *(v268 + 2);

            *(v269 + 14) = v271;

            *(v269 + 11) = 2048;
            v72 = v384;
            v272 = *(v265 + 2);

            *(v269 + 3) = v272;

            v273 = v343;
            _os_log_impl(&dword_1D2171000, v343, v353, "Removed %ld assets from the index and added %ld, total is %ld assets", v269, 0x20u);
            MEMORY[0x1D3899640](v269, -1, -1);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v274 = swift_bridgeObjectRelease_n();
          }

          if ((v369 & 1) == 0)
          {
            MEMORY[0x1EEE9AC00](v274);
            *(&v307 - 16) = v66;
            *(&v307 - 1) = v53;
            v288 = v287;
            v289 = v391;
            sub_1D2250DBC();
            v391 = v289;

            if ((aBlock[0] & 1) == 0)
            {
              sub_1D2174E10(0, &unk_1EDC886D0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
              v290 = swift_allocObject();
              *(v290 + 16) = v358;
              *(v290 + 56) = MEMORY[0x1E69E7508];
              *(v290 + 64) = MEMORY[0x1E69E7558];
              *(v290 + 32) = v66;
              v291 = sub_1D2250C5C();
              v292 = sub_1D2219F2C(v291, 0, 1);

              if (!v292)
              {
                v293 = swift_allocObject();
                *(v293 + 16) = v358;
                *(v293 + 56) = MEMORY[0x1E69E7508];
                *(v293 + 64) = MEMORY[0x1E69E7558];
                *(v293 + 32) = v66;
                v294 = sub_1D2250C5C();
                v295 = sub_1D2219F2C(v294, 0, 1);

                if (!v295)
                {
                  v86 = v375;
                  goto LABEL_201;
                }
              }
            }

            v282 = sub_1D225080C();
            v296 = sub_1D2250CEC();
            if (!os_log_type_enabled(v282, v296))
            {
              goto LABEL_199;
            }

            v297 = swift_slowAlloc();
            *v297 = 0;
            _os_log_impl(&dword_1D2171000, v282, v296, "Re-clustering as index is stale", v297, 2u);
            v286 = v297;
LABEL_198:
            MEMORY[0x1D3899640](v286, -1, -1);
LABEL_199:

LABEL_200:
            v86 = 1;
LABEL_201:
            v62 = v388;
LABEL_202:
            v298 = v327;
            sub_1D2212DF0(v392, v338, "syncAssets");

            v85 = (*v298)(v62, v51);
            goto LABEL_42;
          }

          sub_1D2174E10(0, &unk_1EDC886D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
          v275 = swift_allocObject();
          *(v275 + 16) = v358;
          *(v275 + 56) = MEMORY[0x1E69E7508];
          *(v275 + 64) = MEMORY[0x1E69E7558];
          *(v275 + 32) = v66;
          v276 = sub_1D2250C5C();
          *(&v307 - 4) = MEMORY[0x1EEE9AC00](v276);
          *(&v307 - 3) = 0;
          *(&v307 - 2) = v53;
          v278 = v277;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D21D8);
          v279 = v391;
          sub_1D2250DBC();
          if (!v279)
          {

            v280 = aBlock[0];
            v281 = *(aBlock[0] + 2);
            v391 = 0;
            if (!v281)
            {

              v86 = v375;
              goto LABEL_202;
            }

            v282 = sub_1D225080C();
            v283 = sub_1D2250CEC();
            if (!os_log_type_enabled(v282, v283))
            {

              swift_bridgeObjectRelease_n();
              goto LABEL_200;
            }

            v284 = swift_slowAlloc();
            *v284 = v325;
            v285 = *(v280 + 2);

            *(v284 + 4) = v285;

            _os_log_impl(&dword_1D2171000, v282, v283, "Queuing %ld for fast clustering", v284, 0xCu);
            v286 = v284;
            goto LABEL_198;
          }

          sub_1D2212DF0(v392, v338, "syncAssets");

LABEL_222:

          (*v327)(v62, v51);
          goto LABEL_223;
        }

LABEL_221:

        sub_1D2212DF0(v392, v338, "syncAssets");

        goto LABEL_222;
      }

LABEL_35:
      v87 = sub_1D2179B00(v66);
      if (v88)
      {
        v72 = *(v392 + v356);
        v375 = 1;
        if ((v71 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v375 = v87 != 10;
        v72 = *(v392 + v356);
        if ((v71 & 1) == 0)
        {
LABEL_37:

LABEL_41:
          v86 = 1;
          goto LABEL_42;
        }
      }

      goto LABEL_39;
    }

    sub_1D2174E10(0, &unk_1EDC886D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
    v73 = swift_allocObject();
    *(v73 + 16) = v358;
    *(v73 + 56) = MEMORY[0x1E69E6530];
    *(v73 + 64) = MEMORY[0x1E69E65A8];
    v74 = v66;
    *(v73 + 32) = v66;
    v75 = sub_1D2250C5C();
    v398 = 0;
    v399 = 1;
    v76 = *(v53 + 16);
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    *(v77 + 24) = 1;
    *(v77 + 32) = 0;
    *(v77 + 40) = &v398;
    *(v77 + 48) = v53;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_1D2217F14;
    *(v78 + 24) = v77;
    v396 = sub_1D21A732C;
    v397 = v78;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v394 = sub_1D2179EE8;
    v395 = &block_descriptor_48;
    v79 = _Block_copy(aBlock);
    v80 = v76;
    v81 = v75;

    [v80 performBlockAndWait_];

    _Block_release(v79);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
      goto LABEL_234;
    }

    v83 = v398;
    v84 = v399;

    if (v84)
    {
      v51 = v390;
      v63 = v391;
      v62 = v388;
      v55 = v389;
      v59 = v383;
      v57 = v362;
      v53 = v380;
      goto LABEL_13;
    }

    v51 = v390;
    v62 = v388;
    v53 = v380;
    if (v83)
    {
      break;
    }

    v63 = v391;
LABEL_11:
    v55 = v389;
LABEL_12:
    v59 = v383;
    v57 = v362;
LABEL_13:
    v58 = v379;
LABEL_14:
    if (++v58 == v370)
    {
      goto LABEL_206;
    }
  }

  v66 = v74;
  if ((v378 & 1) == 0)
  {
    goto LABEL_35;
  }

  v72 = *(v392 + v356);

  v86 = 1;
  v375 = 1;
LABEL_42:
  v384 = v72;
  MEMORY[0x1EEE9AC00](v85);
  *(&v307 - 16) = v66;
  *(&v307 - 1) = v53;
  v91 = v90;
  v92 = v391;
  sub_1D2250DBC();
  v63 = v92;

  if ((aBlock[0] & 1) == 0 && !v375)
  {
    v55 = v389;
    if (!v389)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v105 = swift_allocObject();
  v55 = v389;
  v106 = v385;
  *(v105 + 16) = v389;
  *(v105 + 24) = v106;
  sub_1D21A6D54(v55);
  sub_1D21D3CF0(v66, v384, v375, sub_1D2217FD4, v105);
  if (v92)
  {

    goto LABEL_223;
  }

  v107 = CFAbsoluteTimeGetCurrent();
  v108 = sub_1D225080C();
  v109 = sub_1D2250CCC();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = v325;
    *(v110 + 4) = v107 - Current;
    _os_log_impl(&dword_1D2171000, v108, v109, "Updating partitions took %fs", v110, 0xCu);
    v111 = v110;
    v63 = 0;
    v55 = v389;
    MEMORY[0x1D3899640](v111, -1, -1);
  }

  if (v55)
  {
LABEL_45:
    v55(0.0);
  }

LABEL_46:
  if (v86)
  {
    v93 = *(v53 + OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters);
    if (!*(v93 + 16) || (v94 = sub_1D2176DFC(v66), (v95 & 1) == 0))
    {

      v302 = sub_1D225080C();
      v303 = sub_1D2250CDC();
      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        *v304 = 16777472;
        v304[4] = v66;
        _os_log_impl(&dword_1D2171000, v302, v303, "Failed to fetch parameters for type %hhu", v304, 5u);
        MEMORY[0x1D3899640](v304, -1, -1);
      }

      sub_1D217EE2C();
      swift_allocError();
      *v305 = 5;
      swift_willThrow();

      goto LABEL_224;
    }

    v391 = v63;
    v96 = *(*(v93 + 56) + 8 * v94);
    if ((v367 & 0x100000000) == 0)
    {
      *(v96 + 80) = v367;
    }

    v97 = v392;
    v395 = type metadata accessor for VUIndexScanner(0);
    v396 = &off_1F4DAFCF8;
    aBlock[0] = v384;
    v98 = swift_allocObject();
    v99 = v366;
    v98[2] = v97;
    v98[3] = v99;
    v98[4] = v360;
    v98[5] = v55;
    v98[6] = v385;

    sub_1D21A6D54(v55);

    v100 = v391;
    sub_1D222DE40(v66, v96, aBlock, 0, v369 & 1, v375, sub_1D2217F24, v98);
    if (v100)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(aBlock);

      goto LABEL_225;
    }

    v101 = __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    v53 = v380;
    MEMORY[0x1EEE9AC00](v101);
    *(&v307 - 4) = v53;
    *(&v307 - 24) = v66;
    *(&v307 - 2) = sub_1D2213124;
    *(&v307 - 1) = 0;
    v103 = v102;
    sub_1D2250DBC();
    v63 = 0;

    v62 = v388;
    v55 = v389;
    v51 = v390;
  }

  sub_1D22299E0(16);
  if (!v63)
  {

    goto LABEL_12;
  }

LABEL_223:

LABEL_224:

LABEL_225:
  v40 = v355;
LABEL_226:
  sub_1D2212DF0(v392, v40, "update");
}

uint64_t sub_1D2217FD4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0.0) & 1;
  }

  else
  {
    return 1;
  }
}

unint64_t MLMultiArray.data.getter()
{
  result = [v0 count];
  if ((result - 0x2000000000000000) >> 62 == 3)
  {
    v5[0] = sub_1D2218A0C(4 * result);
    v5[1] = v2;
    v3 = v0;
    sub_1D22184F4(v5, v3, 4, v4);
    return v5[0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D2218264(uint64_t a1, int a2, id a3, uint64_t a4, uint64_t a5)
{
  v9 = [a3 shape];
  sub_1D21DC344();
  v10 = sub_1D2250AFC();

  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v10 + 32); ; i = MEMORY[0x1D3898A80](0, v10))
    {
      v12 = i;

      v13 = [v12 integerValue];

      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (!v13)
      {
        return;
      }

      v10 = 0;
      v28 = v13;
      while (1)
      {
        v14 = [a3 shape];
        v15 = sub_1D2250AFC();

        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1D3898A80](1, v15);
        }

        else
        {
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            goto LABEL_26;
          }

          v16 = *(v15 + 40);
        }

        v17 = v16;

        v18 = [v17 integerValue];

        v19 = v18 * a4;
        if ((v18 * a4) >> 64 != (v18 * a4) >> 63)
        {
          break;
        }

        if (!a1)
        {
          goto LABEL_35;
        }

        v20 = [a3 strides];
        v21 = sub_1D2250AFC();

        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1D3898A80](0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v22 = *(v21 + 32);
        }

        v23 = v22;

        v24 = [v23 integerValue];

        v25 = v10 * v24;
        if ((v10 * v24) >> 64 != (v10 * v24) >> 63)
        {
          goto LABEL_27;
        }

        v26 = v25 * a4;
        if ((v25 * a4) >> 64 != (v25 * a4) >> 63)
        {
          goto LABEL_29;
        }

        if (!a5)
        {
          goto LABEL_36;
        }

        v27 = v10 * v19;
        if ((v10 * v19) >> 64 != (v10 * v19) >> 63)
        {
          goto LABEL_30;
        }

        if (v19 < 0)
        {
          goto LABEL_31;
        }

        ++v10;
        memmove((a5 + v27), (a1 + v26), v19);
        if (v28 == v10)
        {
          return;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1D22184F4(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v23 = a3;
      v24 = a4;
      v25 = v4;
      v13 = a2;

      sub_1D21A1ED8(v7, v6);
      *&v26 = v7;
      *(&v26 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1D2254540;
      sub_1D21A1ED8(0, 0xC000000000000000);
      sub_1D225040C();
      v14 = *(&v26 + 1);
      v15 = *(v26 + 16);
      v16 = *(v26 + 24);
      if (sub_1D225028C())
      {
        if (__OFSUB__(v15, sub_1D22502BC()))
        {
          __break(1u);
        }

        else if (!__OFSUB__(v16, v15))
        {
          v17 = sub_1D22502AC();
          MEMORY[0x1EEE9AC00](v17);
          sub_1D2250C8C();

          *a1 = v26;
          a1[1] = v14 | 0x8000000000000000;
          return;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      *(&v26 + 7) = 0;
      *&v26 = 0;
      MEMORY[0x1EEE9AC00](a1);
      v21 = v20;
      sub_1D2250C8C();
    }
  }

  else
  {
    v24 = a4;
    v25 = v4;
    if (v8)
    {
      v18 = a2;
      sub_1D21A3B78(v7, v6);
      sub_1D21A1ED8(v7, v6);
      *&v26 = v7;
      *(&v26 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1D2254540;
      sub_1D21A1ED8(0, 0xC000000000000000);
      sub_1D22188E0(&v26, v18);

      v19 = *(&v26 + 1) | 0x4000000000000000;
      *a1 = v26;
      a1[1] = v19;
    }

    else
    {
      v23 = a3;
      v22[1] = v7 >> 40;
      v22[2] = HIWORD(v7);
      v22[3] = HIBYTE(v7);
      v22[4] = v6 >> 8;
      v22[5] = v6 >> 16;
      v22[6] = v6 >> 24;
      v22[7] = v6 >> 40;
      v22[8] = HIDWORD(v6);
      v9 = a2;
      v10 = sub_1D21A1ED8(v7, v6);
      v22[9] = v22;
      *&v26 = v7;
      WORD4(v26) = v6;
      BYTE10(v26) = BYTE2(v6);
      BYTE11(v26) = BYTE3(v6);
      BYTE12(v26) = BYTE4(v6);
      BYTE13(v26) = BYTE5(v6);
      BYTE14(v26) = BYTE6(v6);
      MEMORY[0x1EEE9AC00](v10);
      sub_1D2250C8C();
      v11 = v26;
      v12 = DWORD2(v26) | ((WORD6(v26) | (BYTE14(v26) << 16)) << 32);

      *a1 = v11;
      a1[1] = v12;
    }
  }
}

uint64_t sub_1D22188E0(int *a1, void *a2)
{
  result = sub_1D225041C();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1D225028C();
  if (result)
  {
    result = sub_1D22502BC();
    if (!__OFSUB__(v5, result))
    {
      v6 = sub_1D22502AC();
      MEMORY[0x1EEE9AC00](v6);
      sub_1D2250C8C();
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D2218A0C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1D22502DC();
      swift_allocObject();
      sub_1D225029C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1D225042C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1D2218AE4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D21C8AD4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D222AB1C(v6);
  return sub_1D22510AC();
}

void sub_1D2218B60(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_17:
    v2 = sub_1D2250F4C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = 0;
  v19 = v1 & 0xC000000000000001;
  v16 = v1;
  v17 = v1 & 0xFFFFFFFFFFFFFF8;
  v4 = &off_1E83FA000;
  while (1)
  {
    if (v19)
    {
      v6 = MEMORY[0x1D3898A80](v3, v1);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        goto LABEL_16;
      }

      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v6 v4[275]];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v11 = [v9 client];

    v12 = v4;
    v13 = [v7 v4[275]];
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v15 = [v13 mapping];

    if (v15)
    {
      v5 = [v15 label];
    }

    else
    {
      v5 = -1;
    }

    [v7 setResolved_];

    ++v3;
    v4 = v12;
    v1 = v16;
    if (v8 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1D2218D18(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC19VisualUnderstanding20VUIndexCoreDataStore_parameters;
  swift_beginAccess();
  *(a1 + v4) = MEMORY[0x1E69E7CC8];

  v5 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v6 = sub_1D225092C();
  v7 = [v5 initWithEntityName_];

  v8 = *(a1 + 16);
  type metadata accessor for VUIndexSubset();
  v9 = v8;
  v10 = sub_1D2250DDC();
  if (v1)
  {

    return;
  }

  v11 = v10;

  if (v11 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2250F4C())
  {
    v77 = v7;
    v7 = 0;
    v85 = v11;
    v87 = v11 & 0xC000000000000001;
    v79 = v11 & 0xFFFFFFFFFFFFFF8;
    v80 = a1;
    v84 = i;
    while (1)
    {
      if (v87)
      {
        v13 = MEMORY[0x1D3898A80](v7, v11);
      }

      else
      {
        if (v7 >= *(v79 + 16))
        {
          goto LABEL_32;
        }

        v13 = *(v11 + 8 * v7 + 32);
      }

      v14 = v13;
      v15 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v16 = [v13 type];
      if ((v16 & 0x80000000) != 0)
      {
        goto LABEL_30;
      }

      v17 = v16;
      if (v16 > 0xFF)
      {
        goto LABEL_31;
      }

      v18 = [v14 embeddingRevision];
      v19 = [v14 contextualEmbeddingRevision];
      type metadata accessor for VUIndexParameters();
      swift_allocObject();
      v20 = sub_1D21768F0(v17, v18, 0, v19, 0, 0);
      if (v2)
      {

        v2 = 0;
      }

      else
      {
        v11 = v20;
        swift_beginAccess();
        v82 = v11;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v4;
        v4 = isUniquelyReferenced_nonNull_native;
        v90 = *&v22[a1];
        v23 = v90;
        v2 = v22;
        *&v22[a1] = 0x8000000000000000;
        a1 = sub_1D2176DFC(v17);
        v25 = v23[2];
        v26 = (v24 & 1) == 0;
        v27 = v25 + v26;
        if (__OFADD__(v25, v26))
        {
          goto LABEL_33;
        }

        v28 = v24;
        if (v23[3] >= v27)
        {
          if ((v4 & 1) == 0)
          {
            sub_1D21B799C();
          }
        }

        else
        {
          sub_1D2177118(v27, v4);
          v29 = sub_1D2176DFC(v17);
          if ((v28 & 1) != (v30 & 1))
          {
            goto LABEL_85;
          }

          a1 = v29;
        }

        v4 = v2;
        v31 = v90;
        v2 = 0;
        if (v28)
        {
          *(v90[7] + 8 * a1) = v82;
        }

        else
        {
          v90[(a1 >> 6) + 8] |= 1 << a1;
          *(v31[6] + a1) = v17;
          v11 = v82;
          *(v31[7] + 8 * a1) = v82;
          v32 = v31[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_34;
          }

          v31[2] = v34;
        }

        a1 = v80;
        *(v80 + v4) = v31;
        swift_endAccess();
      }

      v11 = v85;
      ++v7;
      if (v15 == v84)
      {

LABEL_28:

        return;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v35 = &off_1E83FA000;
  v36 = [*(a1 + 16) persistentStoreCoordinator];
  if (!v36)
  {

    return;
  }

  v83 = v2;
  v37 = v36;
  v38 = [v36 persistentStores];

  sub_1D2174E10(0, &qword_1EDC886C0);
  v39 = sub_1D2250AFC();

  if (v39 >> 62)
  {
    goto LABEL_80;
  }

  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_81:

    goto LABEL_28;
  }

LABEL_39:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x1D3898A80](0, v39);
    goto LABEL_42;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v39 + 32);
LABEL_42:
    v41 = v40;

    v42 = [*(a1 + 16) v35[302]];
    v81 = a1;
    v78 = v7;
    v86 = v41;
    if (v42)
    {
      v43 = v42;
      v44 = [v42 metadataForPersistentStore_];

      v39 = sub_1D225089C();
      if (v39)
      {
        if (*(v39 + 16) && (v45 = sub_1D2196C7C(0xD000000000000010, 0x80000001D2258FD0), (v46 & 1) != 0))
        {
          sub_1D21763A8(*(v39 + 56) + 32 * v45, v89);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D2D90);
          if (swift_dynamicCast())
          {
            v35 = v90;
LABEL_51:
            v47 = 0;
            v7 = (v35 + 8);
            v48 = 1 << *(v35 + 32);
            v49 = -1;
            if (v48 < 64)
            {
              v49 = ~(-1 << v48);
            }

            a1 = v49 & v35[8];
            v50 = (v48 + 63) >> 6;
            while (1)
            {
              while (1)
              {
                while (1)
                {
                  if (!a1)
                  {
                    while (1)
                    {
                      v52 = v47 + 1;
                      if (__OFADD__(v47, 1))
                      {
                        break;
                      }

                      if (v52 >= v50)
                      {

                        return;
                      }

                      a1 = *(v7 + 8 * v52);
                      ++v47;
                      if (a1)
                      {
                        v51 = v4;
                        v47 = v52;
                        goto LABEL_61;
                      }
                    }

                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    if (!sub_1D2250F4C())
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_39;
                  }

                  v51 = v4;
LABEL_61:
                  v53 = __clz(__rbit64(a1));
                  a1 &= a1 - 1;
                  v54 = v53 | (v47 << 6);
                  v55 = (v35[6] + 16 * v54);
                  v57 = *v55;
                  v56 = v55[1];
                  v4 = *(v35[7] + v54);

                  v58 = sub_1D221970C(v57, v56);
                  if ((v58 & 0x100) == 0)
                  {
                    break;
                  }

                  v4 = v51;
                }

                v59 = *(v4 + 16);
                if (!v59)
                {
                  goto LABEL_78;
                }

                v88 = v58;
                if (v59 == 1)
                {
                  goto LABEL_79;
                }

                v60 = *(v4 + 32);
                v61 = *(v4 + 40);
                type metadata accessor for VUIndexParameters();
                v62 = swift_allocObject();
                v63 = v61;
                v39 = v62;
                v64 = sub_1D21768F0(v88, v60, 0, v63, 0, 0);
                if (!v83)
                {
                  break;
                }

                v83 = 0;
                v4 = v51;
              }

              v65 = v64;
              swift_beginAccess();

              v66 = swift_isUniquelyReferenced_nonNull_native();
              v90 = *(v81 + v51);
              *(v81 + v51) = 0x8000000000000000;
              sub_1D21BA804(v65, v88, v66);
              v76 = v51;
              *(v81 + v51) = v90;
              swift_endAccess();
              v67 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
              v68 = sub_1D225092C();
              v69 = [v67 initWithEntityName_];

              sub_1D2174E10(0, &unk_1EDC886D0);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2400);
              v70 = swift_allocObject();
              *(v70 + 16) = xmmword_1D22526E0;
              *(v70 + 56) = MEMORY[0x1E69E6530];
              *(v70 + 64) = MEMORY[0x1E69E65A8];
              *(v70 + 32) = v88;
              v71 = sub_1D2250C5C();
              [v69 setPredicate_];

              v72 = *(v81 + 16);
              v83 = 0;
              v73 = sub_1D2250DDC();

              if (v73 >> 62)
              {
                if (!sub_1D2250F4C())
                {
LABEL_73:

                  v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
                  [v75 setType_];
                  goto LABEL_74;
                }
              }

              else if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              if ((v73 & 0xC000000000000001) != 0)
              {
                v74 = MEMORY[0x1D3898A80](0, v73);
              }

              else
              {
                if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_84;
                }

                v74 = *(v73 + 32);
              }

              v75 = v74;

LABEL_74:
              [v75 setEmbeddingRevision_];
              v39 = *(v4 + 40);

              [v75 setContextualEmbeddingRevision_];

              v4 = v76;
            }
          }
        }

        else
        {
        }
      }
    }

    v35 = sub_1D21A2AE8(MEMORY[0x1E69E7CC0]);
    goto LABEL_51;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  sub_1D22512AC();
  __break(1u);
}