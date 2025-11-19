uint64_t sub_1D219D9AC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2438);
  result = sub_1D2250FDC();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1D2250E2C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D219DBC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_1D219DC6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D225124C();
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
        type metadata accessor for VUIndexTag();
        v6 = sub_1D2250B2C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D219E9E0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D219E054(0, v2, 1, a1);
  }
}

uint64_t sub_1D219DD70(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_1D225124C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      if (v9 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v12 = sub_1D2250B2C();
        *(v12 + 16) = v9 / 2;
      }

      v14[0] = v12 + 32;
      v14[1] = v9 / 2;
      v13 = v12;
      a4(v14, v15, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

uint64_t sub_1D219DE90(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D225124C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
        v6 = sub_1D2250B2C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D219FBC4(v8, v9, a1, v4);
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
    return sub_1D219E1B8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D219DFD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3 + 8);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      if (*(*(v9 - 1) + 16) >= *(v7 + 16))
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

      v10 = *v9;
      *v9 = *(v9 - 1);
      *(v9 - 1) = v7;
      *(v9 - 2) = v10;
      v9 -= 2;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D219E054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 type];
      v13 = [v11 type];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D219E14C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (*(*v9 + 16) >= *(v7 + 16))
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

uint64_t sub_1D219E1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    v22 = v20;
    v23 = v39;
    while (1)
    {
      sub_1D2174DA8(v21, v16, &qword_1EC6D2528);
      sub_1D2174DA8(v19, v12, &qword_1EC6D2528);
      v24 = *(v23 + 48);
      v25 = *&v16[v24];
      v26 = *&v12[v24];
      sub_1D2176170(v12, &qword_1EC6D2528);
      result = sub_1D2176170(v16, &qword_1EC6D2528);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_1D21A6938(v21, v38, &qword_1EC6D2528);
      v23 = v39;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D21A6938(v27, v19, &qword_1EC6D2528);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D219E420(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D21C88C8(v10);
      v10 = result;
    }

    v82 = *(v10 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = *&v10[16 * v82];
        v84 = *&v10[16 * v82 + 24];
        sub_1D21A0538((*a3 + 16 * v83), (*a3 + 16 * *&v10[16 * v82 + 16]), (*a3 + 16 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v82 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v85 = &v10[16 * v82];
        *v85 = v83;
        *(v85 + 1) = v84;
        result = sub_1D21C883C(v82 - 1);
        v82 = *(v10 + 2);
        if (v82 <= 1)
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
      v12 = 16 * v11;
      v13 = *a3 + 16 * v11;
      v14 = *(*(*a3 + 16 * v9 + 8) + 16);
      v15 = *(*(v13 + 8) + 16);
      v16 = v11 + 2;
      v17 = (v13 + 40);
      v18 = v14;
      while (v7 != v16)
      {
        v19 = *v17;
        v17 += 2;
        v20 = (v15 < v14) ^ (v18 >= *(v19 + 16));
        ++v16;
        v18 = *(v19 + 16);
        if ((v20 & 1) == 0)
        {
          v9 = v16 - 1;
          if (v15 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v15 >= v14)
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
        v21 = 0;
        v22 = 16 * v9;
        v23 = v11;
        do
        {
          if (v23 != v9 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = v24[1];
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v9 + v21);
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
      result = sub_1D219639C(0, *(v10 + 2) + 1, 1, v10, &qword_1EC6D2358);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v37 = *(v10 + 3);
    v38 = v5 + 1;
    if (v5 >= v37 >> 1)
    {
      result = sub_1D219639C((v37 > 1), v5 + 1, 1, v10, &qword_1EC6D2358);
      v10 = result;
    }

    *(v10 + 2) = v38;
    v39 = &v10[16 * v5];
    *(v39 + 4) = v11;
    *(v39 + 5) = v9;
    v40 = *v87;
    if (!*v87)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v10 + 4);
          v43 = *(v10 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v10[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_107;
          }

          v64 = &v10[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v68 = &v10[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_71:
        if (v63)
        {
          goto LABEL_106;
        }

        v71 = &v10[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_109;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_78:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
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

        v80 = *&v10[16 * v79 + 32];
        v5 = *&v10[16 * v41 + 40];
        sub_1D21A0538((*a3 + 16 * v80), (*a3 + 16 * *&v10[16 * v41 + 32]), (*a3 + 16 * v5), v40);
        if (v4)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v79 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v81 = &v10[16 * v79];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        result = sub_1D21C883C(v41);
        v38 = *(v10 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v10[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v10[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_108;
      }

      if (v57 >= v49)
      {
        v75 = &v10[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_112;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
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

  v29 = *a3;
  v30 = *a3 + 16 * v9;
  v31 = v11 - v9;
LABEL_30:
  v32 = *(v29 + 16 * v9 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(*(v34 - 1) + 16) >= *(v32 + 16))
    {
LABEL_29:
      ++v9;
      v30 += 16;
      --v31;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    *v34 = *(v34 - 1);
    *(v34 - 1) = v32;
    *(v34 - 2) = v35;
    v34 -= 2;
    if (__CFADD__(v33++, 1))
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

void sub_1D219E9E0(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v9 = sub_1D21C88C8(v9);
    }

    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*v6)
      {
        v90 = v9;
        v9 = (v89 - 1);
        v91 = *&v90[16 * v89];
        v92 = *&v90[16 * v89 + 24];
        sub_1D21A074C((*v6 + 8 * v91), (*v6 + 8 * *&v90[16 * v89 + 16]), (*v6 + 8 * v92), v11);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v92 < v91)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1D21C88C8(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_117;
        }

        v93 = &v90[16 * v89];
        *v93 = v91;
        *(v93 + 1) = v92;
        sub_1D21C883C(v89 - 1);
        v9 = v90;
        v89 = *(v90 + 2);
        if (v89 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v8 + 1 < v7)
    {
      v101 = v7;
      v96 = v5;
      v12 = 8 * v8;
      v13 = (*v6 + 8 * v8);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*v6 + 8 * v11);
      v5 = v15;
      v105 = [v16 type];
      v103 = [v5 type];

      v98 = v10;
      v17 = (v10 + 2);
      while (1)
      {
        v11 = v101;
        if (v101 == v17)
        {
          break;
        }

        v18 = *(v14 - 1);
        v5 = *v14;
        v19 = v18;
        v6 = v9;
        v20 = [v5 type];
        LODWORD(v18) = [v19 type];

        v21 = v20 < v18;
        v9 = v6;
        v22 = !v21;
        ++v17;
        ++v14;
        if ((((v105 < v103) ^ v22) & 1) == 0)
        {
          v11 = v17 - 1;
          break;
        }
      }

      v10 = v98;
      if (v105 >= v103)
      {
        v6 = a3;
        v5 = v96;
      }

      else
      {
        if (v11 < v98)
        {
          goto LABEL_120;
        }

        v6 = a3;
        if (v98 >= v11)
        {
          v5 = v96;
        }

        else
        {
          v23 = 8 * v11 - 8;
          v24 = v11;
          v25 = v98;
          v5 = v96;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v26 = *(v27 + v12);
              *(v27 + v12) = *(v27 + v23);
              *(v27 + v23) = v26;
            }

            ++v25;
            v23 -= 8;
            v12 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = *(v6 + 1);
    if (v11 < v28)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (&v11[-v10] < a4)
      {
        v29 = (v10 + a4);
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v29 >= v28)
        {
          v29 = *(v6 + 1);
        }

        if (v29 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v29)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v11 < v10)
    {
      goto LABEL_118;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D219639C(0, *(v9 + 2) + 1, 1, v9, &qword_1EC6D2358);
    }

    v44 = *(v9 + 2);
    v43 = *(v9 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v9 = sub_1D219639C((v43 > 1), v44 + 1, 1, v9, &qword_1EC6D2358);
    }

    *(v9 + 2) = v45;
    v46 = &v9[16 * v44];
    *(v46 + 4) = v10;
    *(v46 + 5) = v11;
    v107 = v11;
    v11 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v44)
    {
      while (1)
      {
        v47 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_60:
          if (v51)
          {
            goto LABEL_107;
          }

          v64 = &v9[16 * v45];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_110;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_114;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v45 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v74 = &v9[16 * v45];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_74:
        if (v69)
        {
          goto LABEL_109;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_112;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_81:
        v85 = v47 - 1;
        if (v47 - 1 >= v45)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v86 = *&v9[16 * v85 + 32];
        v87 = *&v9[16 * v47 + 40];
        sub_1D21A074C((*v6 + 8 * v86), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v87), v11);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v87 < v86)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D21C88C8(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v88 = &v9[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        sub_1D21C883C(v47);
        v45 = *(v9 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v45 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_105;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_106;
      }

      v59 = &v9[16 * v45];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_108;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_111;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v50 < v84)
        {
          v47 = v45 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

LABEL_3:
    v7 = *(v6 + 1);
    v8 = v107;
    if (v107 >= v7)
    {
      goto LABEL_91;
    }
  }

  v102 = v9;
  v104 = v29;
  v97 = v5;
  v99 = v10;
  v30 = *v6;
  v31 = *v6 + 8 * v11 - 8;
  v32 = v10 - v11;
LABEL_33:
  v106 = v11;
  v33 = *(v30 + 8 * v11);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    v36 = *v35;
    v37 = v33;
    v38 = v36;
    v39 = [v37 type];
    v40 = [v38 type];

    if (v39 >= v40)
    {
LABEL_32:
      v11 = v106 + 1;
      v31 += 8;
      --v32;
      if (v106 + 1 != v104)
      {
        goto LABEL_33;
      }

      v11 = v104;
      v6 = a3;
      v5 = v97;
      v9 = v102;
      v10 = v99;
      goto LABEL_40;
    }

    if (!v30)
    {
      break;
    }

    v41 = *v35;
    v33 = *(v35 + 8);
    *v35 = v33;
    *(v35 + 8) = v41;
    v35 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

uint64_t sub_1D219F074(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1D21C88C8(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1D21A0A30((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D219639C(0, *(v8 + 16) + 1, 1, v8, &qword_1EC6D2358);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1D219639C((v34 > 1), v5 + 1, 1, v8, &qword_1EC6D2358);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
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
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_1D21A0A30((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
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
  return result;
}

uint64_t sub_1D219F634(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1D21C88C8(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_1D21A0C2C((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_1D21C883C(v77 - 1);
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
        v17 = (v13 < v12) ^ (v15 >= v16);
        ++v14;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v9 = v14 - 1;
          if (v13 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v13 >= v12)
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
      result = sub_1D219639C(0, *(v10 + 2) + 1, 1, v10, &qword_1EC6D2358);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_1D219639C((v32 > 1), v5 + 1, 1, v10, &qword_1EC6D2358);
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
        sub_1D21A0C2C((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D21C88C8(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_1D21C883C(v36);
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
    if (*(*v29 + 16) >= *(v27 + 16))
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

uint64_t sub_1D219FBC4(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v111 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v120 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v114 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v123 = &v108 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v108 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v124 = &v108 - v16;
  v121 = a3;
  v17 = *(a3 + 8);
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a3 = *v111;
    if (!*v111)
    {
      goto LABEL_135;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D21C88C8(a4);
    }

    v127 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v121)
      {
        v104 = *(result + 16 * a4);
        v105 = result;
        v106 = *(result + 16 * (a4 - 1) + 40);
        sub_1D21A0E30(*v121 + *(v120 + 72) * v104, *v121 + *(v120 + 72) * *(result + 16 * (a4 - 1) + 32), *v121 + *(v120 + 72) * v106, a3);
        if (v5)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D21C88C8(v105);
        }

        if (a4 - 2 >= *(v105 + 2))
        {
          goto LABEL_123;
        }

        v107 = &v105[16 * a4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_1D21C883C(a4 - 1);
        result = v127;
        a4 = *(v127 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v108 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = &qword_1EC6D2528;
  v126 = v8;
  while (1)
  {
    v21 = v18;
    v115 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v110 = v5;
      v22 = *v121;
      v119 = v22;
      v23 = *(v120 + 72);
      a3 = v22 + v23 * (v18 + 1);
      v24 = v124;
      sub_1D2174DA8(a3, v124, v20);
      v25 = v22 + v23 * v18;
      v26 = v125;
      sub_1D2174DA8(v25, v125, v20);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v29 = *(v26 + v27);
      sub_1D2176170(v26, v20);
      result = sub_1D2176170(v24, v20);
      v109 = v18;
      a4 = v18 + 2;
      v122 = v23;
      v30 = v119 + v23 * (v18 + 2);
      while (v17 != a4)
      {
        v31 = v17;
        v32 = v124;
        sub_1D2174DA8(v30, v124, v20);
        v33 = v125;
        sub_1D2174DA8(a3, v125, v20);
        v34 = *(v126 + 48);
        v35 = *(v32 + v34);
        v36 = *(v33 + v34);
        sub_1D2176170(v33, v20);
        v37 = v32;
        v17 = v31;
        result = sub_1D2176170(v37, v20);
        ++a4;
        v30 += v122;
        a3 += v122;
        if (v29 < v28 == v36 >= v35)
        {
          v17 = a4 - 1;
          break;
        }
      }

      v5 = v110;
      v21 = v109;
      v8 = v126;
      if (v29 < v28)
      {
        if (v17 < v109)
        {
          goto LABEL_126;
        }

        if (v109 < v17)
        {
          a4 = v122 * (v17 - 1);
          v38 = v17 * v122;
          v39 = v17;
          v40 = v109;
          a3 = v109 * v122;
          do
          {
            if (v40 != --v39)
            {
              v41 = *v121;
              if (!*v121)
              {
                goto LABEL_132;
              }

              sub_1D21A6938(v41 + a3, v114, v20);
              if (a3 < a4 || v41 + a3 >= v41 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D21A6938(v114, v41 + a4, v20);
            }

            ++v40;
            a4 -= v122;
            v38 -= v122;
            a3 += v122;
          }

          while (v40 < v39);
          v5 = v110;
          v8 = v126;
          v21 = v109;
        }
      }
    }

    v42 = v121[1];
    if (v17 < v42)
    {
      if (__OFSUB__(v17, v21))
      {
        goto LABEL_125;
      }

      if (v17 - v21 < v108)
      {
        if (__OFADD__(v21, v108))
        {
          goto LABEL_127;
        }

        if (v21 + v108 >= v42)
        {
          v43 = v121[1];
        }

        else
        {
          v43 = v21 + v108;
        }

        if (v43 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v17 != v43)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v115;
    }

    else
    {
      result = sub_1D219639C(0, *(v115 + 2) + 1, 1, v115, &qword_1EC6D2358);
      v19 = result;
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    a3 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      result = sub_1D219639C((v44 > 1), a4 + 1, 1, v19, &qword_1EC6D2358);
      v19 = result;
    }

    *(v19 + 2) = a3;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v21;
    *(v45 + 5) = v18;
    v46 = *v111;
    if (!*v111)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v47 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v48 = *(v19 + 4);
          v49 = *(v19 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_52:
          if (v51)
          {
            goto LABEL_113;
          }

          v64 = &v19[16 * a3];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_116;
          }

          v70 = &v19[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_120;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v74 = &v19[16 * a3];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_66:
        if (v69)
        {
          goto LABEL_115;
        }

        v77 = &v19[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v47 - 1;
        if (v47 - 1 >= a3)
        {
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
          goto LABEL_128;
        }

        if (!*v121)
        {
          goto LABEL_131;
        }

        v85 = v19;
        a3 = *&v19[16 * a4 + 32];
        v86 = *&v19[16 * v47 + 40];
        sub_1D21A0E30(*v121 + *(v120 + 72) * a3, *v121 + *(v120 + 72) * *&v19[16 * v47 + 32], *v121 + *(v120 + 72) * v86, v46);
        if (v5)
        {
        }

        if (v86 < a3)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v87 = v85;
        }

        else
        {
          v87 = sub_1D21C88C8(v85);
        }

        v8 = v126;
        if (a4 >= *(v87 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v87[16 * a4];
        *(v88 + 4) = a3;
        *(v88 + 5) = v86;
        v127 = v87;
        a4 = &v127;
        result = sub_1D21C883C(v47);
        v19 = v127;
        a3 = *(v127 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v19[16 * a3 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_111;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_112;
      }

      v59 = &v19[16 * a3];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_114;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_117;
      }

      if (v63 >= v55)
      {
        v81 = &v19[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_121;
        }

        if (v50 < v84)
        {
          v47 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = v121[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v110 = v5;
  v89 = *v121;
  v90 = *(v120 + 72);
  v91 = *v121 + v90 * (v17 - 1);
  v92 = -v90;
  v109 = v21;
  v93 = v21 - v17;
  v122 = v89;
  v112 = v90;
  v113 = v43;
  a3 = v89 + v17 * v90;
LABEL_86:
  v118 = v91;
  v119 = v17;
  v116 = a3;
  v117 = v93;
  v94 = v91;
  v95 = v126;
  while (1)
  {
    a4 = v124;
    sub_1D2174DA8(a3, v124, v20);
    v96 = v125;
    sub_1D2174DA8(v94, v125, v20);
    v97 = *(v95 + 48);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_1D2176170(v96, v20);
    result = sub_1D2176170(a4, v20);
    if (v99 >= v98)
    {
LABEL_85:
      v17 = v119 + 1;
      v18 = v113;
      v91 = v118 + v112;
      v93 = v117 - 1;
      a3 = v116 + v112;
      if (v119 + 1 != v113)
      {
        goto LABEL_86;
      }

      v5 = v110;
      v8 = v126;
      v21 = v109;
      if (v113 < v109)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v100 = v20;
    v101 = v123;
    sub_1D21A6938(a3, v123, v100);
    v95 = v126;
    swift_arrayInitWithTakeFrontToBack();
    v102 = v101;
    v20 = v100;
    sub_1D21A6938(v102, v94, v100);
    v94 += v92;
    a3 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_1D21A0538(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(*(v4 + 1) + 16) < *(*(v6 + 1) + 16))
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
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(*(v6 - 1) + 16) < *(*(v14 - 1) + 16))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

uint64_t sub_1D21A074C(char *__dst, void **a2, id *a3, char *__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[8 * v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *--v26;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 type];
          v35 = [v33 type];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[8 * v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 type];
          v20 = [v18 type];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

uint64_t sub_1D21A0A30(float *__dst, float *__src, float *a3, float *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
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

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_1D21A0C2C(char *__dst, char *__src, char *a3, char *a4)
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
      if (*(*v4 + 16) < *(*v6 + 16))
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
      if (*(*v17 + 16) < *(v21 + 16))
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

uint64_t sub_1D21A0E30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2528);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
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

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v43 = v25;
      v44 = a4;
      do
      {
        v41 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v45 = v27;
        while (1)
        {
          v30 = v48;
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v41;
            goto LABEL_58;
          }

          v42 = v24;
          v48 += v25;
          v31 = v26 + v25;
          sub_1D2174DA8(v31, v11, &qword_1EC6D2528);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v46;
          sub_1D2174DA8(v33, v46, &qword_1EC6D2528);
          v36 = *(v47 + 48);
          v37 = *(v34 + v36);
          v38 = *(v35 + v36);
          v39 = v35;
          v11 = v34;
          sub_1D2176170(v39, &qword_1EC6D2528);
          sub_1D2176170(v34, &qword_1EC6D2528);
          if (v38 < v37)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v48 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v45;
          v29 = v31 > v44;
          v25 = v43;
          if (!v29)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        if (v30 < v45 || v48 >= v45)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
        }

        else
        {
          v25 = v43;
          a2 = v32;
          if (v30 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v42;
      }

      while (v26 > v44);
    }

LABEL_57:
    v51 = a2;
    v49 = v24;
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
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < v48)
    {
      do
      {
        sub_1D2174DA8(a2, v11, &qword_1EC6D2528);
        v20 = v46;
        sub_1D2174DA8(a4, v46, &qword_1EC6D2528);
        v21 = *(v47 + 48);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D2176170(v20, &qword_1EC6D2528);
        sub_1D2176170(v11, &qword_1EC6D2528);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v13;
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
        v51 = a1;
      }

      while (a4 < v18 && a2 < v48);
    }
  }

LABEL_58:
  sub_1D21FF0AC(&v51, &v50, &v49);
  return 1;
}

unint64_t *sub_1D21A1330(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1D21A662C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

char *sub_1D21A13C0(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = *v4;
  v7 = *(*v4 + 16);
  v8 = v7 + v10;
  if (__OFADD__(v7, v10))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v6 = a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v11;
  if (!result)
  {
    goto LABEL_8;
  }

  v12 = *(v11 + 24) >> 1;
  if (v12 < v8)
  {
    goto LABEL_19;
  }

  if (v9 == v5)
  {
    while (v10 > 0)
    {
      __break(1u);
LABEL_8:
      if (v7 <= v8)
      {
        v13 = v8;
      }

      else
      {
        v13 = v7;
      }

LABEL_11:
      result = sub_1D21AFA7C(result, v13, 1);
      v11 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v9 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v14 = *(v11 + 16);
  if (v12 - v14 < v10)
  {
    __break(1u);
  }

  else
  {
    result = memcpy((v11 + 16 * v14 + 32), (v6 + 16 * v5), 16 * v10);
    if (v10 <= 0)
    {
LABEL_16:
      result = swift_unknownObjectRelease();
      *v4 = v11;
      return result;
    }

    v15 = *(v11 + 16);
    v16 = __OFADD__(v15, v10);
    v17 = v15 + v10;
    if (!v16)
    {
      *(v11 + 16) = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D21A14E0(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a3;
  v10 = sub_1D2176758(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1D21B1670(v15, a2 & 1);
    v10 = sub_1D2176758(v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1D22512AC();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1D21B6D70();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v7;
  *(v21[7] + 4 * v10) = v8;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v14)
  {
    v21[2] = v23;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v24 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = sub_1D2176758(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_1D21B1670(v33, 1);
        v29 = sub_1D2176758(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      *(v36[7] + 4 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v36[2] = v38;
      v24 += 4;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D225101C();
  MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
  sub_1D22510EC();
  MEMORY[0x1D3898450](39, 0xE100000000000000);
  sub_1D22510FC();
  __break(1u);
}

void sub_1D21A1840(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_6;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = *a3;
  v10 = sub_1D2176758(v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1D21B140C(v15, a2 & 1);
    v10 = sub_1D2176758(v8);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1D22512AC();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1D21B6C24();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2560);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v8;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_1D225101C();
    MEMORY[0x1D3898450](0xD00000000000001BLL, 0x80000001D2257420);
    sub_1D22510EC();
    MEMORY[0x1D3898450](39, 0xE100000000000000);
    sub_1D22510FC();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v24 = a1 + 7;
    v25 = 1;
    while (v25 < a1[2])
    {
      v26 = *(v24 - 1);
      v27 = *v24;
      v28 = *a3;
      v29 = sub_1D2176758(v26);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_24;
      }

      v34 = v30;
      if (v28[3] < v33)
      {
        sub_1D21B140C(v33, 1);
        v29 = sub_1D2176758(v26);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      *(v36[7] + 8 * v29) = v27;
      v37 = v36[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_25;
      }

      ++v25;
      v36[2] = v38;
      v24 += 2;
      if (v4 == v25)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

uint64_t sub_1D21A1B90(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D2250F4C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D21F7F84(v3, 0);
  sub_1D2204E68((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D21A1C24(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D225126C() & 1;
  }
}

void sub_1D21A1C7C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1D38989A0](a1, a2, v7);
      sub_1D2174E10(0, &qword_1EDC872A8);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D2174E10(0, &qword_1EDC872A8);
    if (sub_1D2250F2C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D2250F3C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D2250E2C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D2250E3C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t sub_1D21A1ED8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D21A1F98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D21A1ED8(a1, a2);
  }

  return a1;
}

uint64_t sub_1D21A207C@<X0>(uint64_t *a1@<X8>)
{

  v2 = sub_1D221AD20();

  *a1 = v2;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D21A21A4(float a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v5 = a1;
    v3 = v2(&v5);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1D21A2254(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1D21A22A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D23F0);
    v3 = sub_1D225114C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D2196DD8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D21A2384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2500);
    v3 = sub_1D225114C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D2196C7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void *sub_1D21A2498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2508);
  v3 = sub_1D225114C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D2196DD8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D2196DD8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D21A25A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24F0);
    v3 = sub_1D225114C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2174DA8(v4, &v11, &qword_1EC6D24F8);
      v5 = v11;
      result = sub_1D2178270(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D21A6450(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D21A26F8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_1D225114C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1D2196C7C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

void *sub_1D21A27F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24C8);
  v3 = sub_1D225114C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D2176DFC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D2176DFC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D21A2904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2498);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D24A0);
    v7 = sub_1D225114C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D2174DA8(v9, v5, &qword_1EC6D2498);
      result = sub_1D2196E40(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for VUStreamingGallery.Label(0);
      result = sub_1D21A6320(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for VUStreamingGallery.Label);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D21A2AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2430);
    v3 = sub_1D225114C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D2196C7C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D21A2BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2588);
    v3 = sub_1D225114C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2174DA8(v4, &v13, &qword_1EC6D2590);
      v5 = v13;
      v6 = v14;
      result = sub_1D2196C7C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D21A6450(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D21A2D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2448);
    v3 = sub_1D225114C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1D21A3B78(v7, v8);
      result = sub_1D2196C7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D21A2E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v5 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D21AF7AC(0, v2, 0);
  v3 = v31;
  v30 = v5 + 56;
  result = sub_1D2250EBC();
  v7 = result;
  v8 = 0;
  v26 = v5 + 64;
  v27 = v2;
  v28 = a2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v30 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_24;
    }

    v29 = v8;
    v12 = *(v5 + 36);
    result = sub_1D2176758(*(*(v5 + 48) + 8 * v7));
    if ((v13 & 1) == 0)
    {
      goto LABEL_25;
    }

    v14 = v5;
    v15 = *(*(a2 + 56) + 8 * result);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    v18 = v3;
    if (v17 >= v16 >> 1)
    {
      result = sub_1D21AF7AC((v16 > 1), v17 + 1, 1);
      v18 = v3;
    }

    *(v18 + 16) = v17 + 1;
    *(v18 + 8 * v17 + 32) = v15;
    v9 = 1 << *(v14 + 32);
    if (v7 >= v9)
    {
      goto LABEL_26;
    }

    v19 = *(v30 + 8 * v11);
    if ((v19 & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    v5 = v14;
    v3 = v18;
    if (v12 != *(v14 + 36))
    {
      goto LABEL_28;
    }

    v20 = v19 & (-2 << (v7 & 0x3F));
    if (v20)
    {
      v9 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v27;
    }

    else
    {
      v21 = v11 << 6;
      v22 = v11 + 1;
      v10 = v27;
      v23 = (v26 + 8 * v11);
      while (v22 < (v9 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D217B36C(v7, v12, 0);
          v9 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D217B36C(v7, v12, 0);
    }

LABEL_4:
    a2 = v28;
    v8 = v29 + 1;
    v7 = v9;
    if (v29 + 1 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D21A3088(char *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v36 = a4;
  v35 = sub_1D225085C();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  type metadata accessor for VUGalleryTransaction();
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 24) = 0;
  sub_1D225081C();
  *(v11 + 16) = v10;
  *(v11 + 24) = a2;

  v12 = sub_1D225080C();
  v13 = sub_1D2250CCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2171000, v12, v13, "Starting gallery transaction", v14, 2u);
    MEMORY[0x1D3899640](v14, -1, -1);
  }

  v15 = [objc_allocWithZone(VUWGalleryTransaction) init];
  *&v15[OBJC_IVAR___VUWGalleryTransaction_transaction] = v11;
  v16 = v15;

  v17 = a3(v16);

  if (v17)
  {
    swift_willThrow();
  }

  else
  {
    v18 = sub_1D225080C();
    v19 = sub_1D2250CCC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D2171000, v18, v19, "Flushing gallery transaction", v20, 2u);
      MEMORY[0x1D3899640](v20, -1, -1);
    }

    v21 = v34;
    sub_1D224C3D8();
    v17 = v21;
    if (!v21)
    {

      v30 = sub_1D225080C();
      v31 = sub_1D2250CBC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        v33 = *(v11 + 40);
        *(v32 + 4) = *(v11 + 32);
        *(v32 + 12) = 2048;
        *(v32 + 14) = v33;

        _os_log_impl(&dword_1D2171000, v30, v31, "Transaction succeeded, added %ld observations and removed %ld", v32, 0x16u);
        MEMORY[0x1D3899640](v32, -1, -1);
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  sub_1D225084C();
  sub_1D2250D4C();
  (*(v7 + 8))(v9, v35);
  v22 = v17;
  v23 = sub_1D225080C();
  v24 = sub_1D2250CDC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = v17;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 4) = v28;
    *v26 = v28;
    _os_log_impl(&dword_1D2171000, v23, v24, "%@", v25, 0xCu);
    sub_1D2176170(v26, &qword_1EC6D2150);
    MEMORY[0x1D3899640](v26, -1, -1);
    MEMORY[0x1D3899640](v25, -1, -1);
  }

  swift_willThrow();
LABEL_11:
  *(v11 + 24) = 0;
}

id sub_1D21A3548()
{
  v1 = OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token;
  *&v0[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_token] = 0;
  v2 = &v0[OBJC_IVAR____TtCC19VisualUnderstanding9VUGallery8Bookmark_changeID];
  *v2 = 0;
  v2[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D25A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D22526E0;
  *(v3 + 32) = sub_1D2174E10(0, &unk_1EDC87288);
  sub_1D2250DFC();

  if (v15)
  {
    v4 = swift_dynamicCast();
    v5 = v12;
    if (!v4)
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1D2176170(v14, &unk_1EC6D2180);
    v5 = 0;
  }

  v6 = *&v0[v1];
  *&v0[v1] = v5;

  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D22526E0;
  *(v7 + 32) = sub_1D2174E10(0, &qword_1EDC876F8);
  sub_1D2250DFC();

  if (v15)
  {
    v8 = swift_dynamicCast();
    v9 = v12;
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v8 ^ 1;
  }

  else
  {
    sub_1D2176170(v14, &unk_1EC6D2180);
    v9 = 0;
    v10 = 1;
  }

  *v2 = v9;
  v2[8] = v10;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for VUGallery.Bookmark();
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_1D21A37A4()
{
  result = qword_1EDC872A0;
  if (!qword_1EDC872A0)
  {
    sub_1D2174E10(255, &qword_1EDC872A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC872A0);
  }

  return result;
}

uint64_t sub_1D21A3844(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D225126C() & 1;
  }
}

uint64_t sub_1D21A3B64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D21A3B78(a1, a2);
  }

  return a1;
}

uint64_t sub_1D21A3B78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D21A3CCC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);

  v7 = sub_1D2212558(v3, v4, v5, v6);

  *a1 = v7;
  return result;
}

uint64_t objectdestroy_89Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1D21A3E94()
{
  result = qword_1EC6D2200;
  if (!qword_1EC6D2200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2200);
  }

  return result;
}

unint64_t sub_1D21A3EEC()
{
  result = qword_1EC6D2208;
  if (!qword_1EC6D2208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2208);
  }

  return result;
}

unint64_t sub_1D21A3F44()
{
  result = qword_1EC6D2210;
  if (!qword_1EC6D2210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2210);
  }

  return result;
}

unint64_t sub_1D21A3F9C()
{
  result = qword_1EC6D2218;
  if (!qword_1EC6D2218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2218);
  }

  return result;
}

unint64_t sub_1D21A3FF4()
{
  result = qword_1EC6D2220;
  if (!qword_1EC6D2220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2220);
  }

  return result;
}

uint64_t sub_1D21A4090(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1D21A40DC()
{
  result = qword_1EC6D2230;
  if (!qword_1EC6D2230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2230);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1D21A41C0()
{
  result = qword_1EC6D2248;
  if (!qword_1EC6D2248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2248);
  }

  return result;
}

unint64_t sub_1D21A4218()
{
  result = qword_1EC6D2250;
  if (!qword_1EC6D2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2250);
  }

  return result;
}

uint64_t sub_1D21A4274()
{
  result = sub_1D22507AC();
  if (v1 <= 0x3F)
  {
    result = sub_1D22503FC();
    if (v2 <= 0x3F)
    {
      result = sub_1D225082C();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of VUGallery.update(_:force:progressHandler:)()
{
  return (*(*v0 + 496))();
}

{
  return (*(*v0 + 520))();
}

uint64_t dispatch thunk of VUGallery.reset(_:)()
{
  return (*(*v0 + 568))();
}

{
  return (*(*v0 + 576))();
}

uint64_t dispatch thunk of VUGallery.tags(for:)()
{
  return (*(*v0 + 624))();
}

{
  return (*(*v0 + 640))();
}

uint64_t dispatch thunk of VUGallery.similarity(between:and:metric:)()
{
  v1 = (*(*v0 + 760))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

{
  v1 = (*(*v0 + 768))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

uint64_t getEnumTagSinglePayload for VUGallery.Client(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VUGallery.Client(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D21A543C()
{
  sub_1D21A54E4();
  if (v0 <= 0x3F)
  {
    sub_1D217842C(319, qword_1EDC869F8, &type metadata for VUGallery.Source, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D21A54E4()
{
  if (!qword_1EDC88E00[0])
  {
    sub_1D225055C();
    v0 = sub_1D2250E5C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDC88E00);
    }
  }
}

uint64_t getEnumTagSinglePayload for VUGallery.EntityClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VUGallery.EntityClass(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VUGenerationConditioner.GenerationOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VUGenerationConditioner.GenerationOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D21A5804()
{
  sub_1D21A54E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for VUGallery.ProgressStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VUGallery.ProgressStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1D21A5A28()
{
  sub_1D21A54E4();
  if (v0 <= 0x3F)
  {
    sub_1D217842C(319, &unk_1EDC872C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D21A5AEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D21A5B34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D21A5BA8()
{
  result = sub_1D225055C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D21A5C64()
{
  sub_1D21A5D80();
  if (v0 <= 0x3F)
  {
    sub_1D21A54E4();
    if (v1 <= 0x3F)
    {
      sub_1D217842C(319, &qword_1EDC87238, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21A5D80()
{
  if (!qword_1EC6D2338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D2340);
    v0 = sub_1D2250B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6D2338);
    }
  }
}

uint64_t getEnumTagSinglePayload for VUGallery.SimilarityMetric(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for VUGallery.SimilarityMetric(_WORD *result, int a2, int a3)
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

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VUGallery.ClusteringOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 6))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 5);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VUGallery.ClusteringOptions(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 5) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D21A5F94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D21A5FDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D21A602C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D21A6074(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for VUEnrollmentGallery.VUEnrollmentGalleryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VUEnrollmentGallery.VUEnrollmentGalleryError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
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

uint64_t sub_1D21A6228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D21A6270(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D21A6320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21A6388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D21A63F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_1D21A6450(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D21A6488(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t *sub_1D21A662C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_1D21FFCA4(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_1D21FFCA4(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D21A6734(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](v9);
    bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_1D21A662C((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_1D21A1330(v13, v7, a1, a2);
  MEMORY[0x1D3899640](v13, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

uint64_t sub_1D21A6938(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_327Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_383Tm()
{

  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D21A6D54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_280Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D21A6E48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D21A6E68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D21A74A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x696A6F6D65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x61727473756C6C69;
    }

    else
    {
      v4 = 0x686374656B73;
    }

    if (v3 == 2)
    {
      v5 = 0xEC0000006E6F6974;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F6974616D696E61;
    }

    else
    {
      v4 = 0x696A6F6D65;
    }

    if (v3)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x61727473756C6C69;
  v8 = 0xEC0000006E6F6974;
  if (a2 != 2)
  {
    v7 = 0x686374656B73;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6F6974616D696E61;
    v6 = 0xE90000000000006ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D225126C();
  }

  return v11 & 1;
}

uint64_t sub_1D21A75F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F73726570;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x656E656373;
    }

    else
    {
      v4 = 0x6D6F74737563;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616D696E61;
    }

    else
    {
      v4 = 0x6E6F73726570;
    }

    v5 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x656E656373;
  if (a2 != 2)
  {
    v7 = 0x6D6F74737563;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616D696E61;
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
    v9 = 0xE600000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D225126C();
  }

  return v10 & 1;
}

uint64_t VUGenerationConditioner.ConditionerError.hashValue.getter()
{
  v1 = *v0;
  sub_1D225132C();
  MEMORY[0x1D3898D70](v1);
  return sub_1D225137C();
}

uint64_t sub_1D21A77B8()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D21A7880()
{
  sub_1D22509EC();
}

uint64_t sub_1D21A7934()
{
  sub_1D225132C();
  sub_1D22509EC();

  return sub_1D225137C();
}

uint64_t sub_1D21A79F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D21AD1E0();
  *a1 = result;
  return result;
}

void sub_1D21A7A28(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x696A6F6D65;
  v4 = 0xEC0000006E6F6974;
  v5 = 0x61727473756C6C69;
  if (*v1 != 2)
  {
    v5 = 0x686374656B73;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F6974616D696E61;
    v2 = 0xE90000000000006ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D21A7ABC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style) <= 1u)
  {
    if (!*(v2 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style))
    {
      v3 = &unk_1F4DAE0F8;
      goto LABEL_23;
    }

    v6 = sub_1D225095C();
    if (!a2)
    {

      sub_1D225095C();

LABEL_22:
      v3 = &unk_1F4DADFD8;
      goto LABEL_23;
    }

    if (v6 != a1 || v7 != a2)
    {
      v9 = sub_1D225126C();

      if (v9)
      {
LABEL_20:
        v3 = &unk_1F4DADF78;
        goto LABEL_23;
      }

      if (sub_1D225095C() != a1 || v10 != a2)
      {
        v12 = sub_1D225126C();

        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }
    }

    goto LABEL_20;
  }

  if (*(v2 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style) == 2)
  {
    v3 = &unk_1F4DAE098;
  }

  else
  {
    v3 = &unk_1F4DAE038;
  }

LABEL_23:

  return sub_1D21A22A4(v3);
}

uint64_t static VUGenerationConditioner.faceRepresentationVersion.getter()
{
  if (qword_1EC6D20F0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC6D7490;

  return v0;
}

uint64_t sub_1D21A7C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-1] - v5;
  v7 = sub_1D225063C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D21A2384(MEMORY[0x1E69E7CC0]);
  sub_1D225056C();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1D225060C();
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  result = sub_1D225062C();
  if (!v2)
  {
    v12 = v8;
    *&v24 = v28;
    sub_1D22505FC();
    sub_1D22505BC();
    sub_1D2174DA8(v27, v22, &qword_1EC6D2788);
    v13 = v7;
    if (v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2798);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2880);
      v14 = a2;
      v15 = v6;
      if ((swift_dynamicCast() & 1) == 0)
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
      }

      v16 = v12;
    }

    else
    {
      sub_1D2176170(v22, &qword_1EC6D2788);
      v24 = 0u;
      v25 = 0u;
      v26 = 0;
      v14 = a2;
      v16 = v12;
      v15 = v6;
    }

    sub_1D2174DA8(&v24, v22, &qword_1EC6D2878);
    if (!v23)
    {
      sub_1D2176170(v22, &qword_1EC6D2878);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2778);
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
LABEL_11:
      sub_1D2176170(v15, &qword_1EC6D2770);
      sub_1D21AD0DC();
      swift_allocError();
      *v20 = 0;
      swift_willThrow();
      sub_1D2176170(v27, &qword_1EC6D2788);
      (*(v16 + 8))(v10, v13);
      return sub_1D2176170(&v24, &qword_1EC6D2878);
    }

    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1D225064C();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2778);
    v19 = *(v18 - 8);
    (*(v19 + 56))(v15, 0, 1, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    if ((*(v19 + 48))(v15, 1, v18) == 1)
    {
      goto LABEL_11;
    }

    sub_1D2176170(v27, &qword_1EC6D2788);
    (*(v16 + 8))(v10, v13);
    (*(v19 + 32))(v14, v15, v18);
    return sub_1D2176170(&v24, &qword_1EC6D2878);
  }

  return result;
}

uint64_t VUGenerationConditioner.__allocating_init(for:)(void (*a1)(void, void), unint64_t a2)
{
  v4 = swift_allocObject();
  VUGenerationConditioner.init(for:)(a1, a2);
  return v4;
}

uint64_t VUGenerationConditioner.init(for:)(void (*a1)(void, void), unint64_t a2)
{
  v223 = a2;
  v225 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2100);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v203 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v210 = &v190 - v6;
  v206 = sub_1D225066C();
  v201 = *(v206 - 1);
  MEMORY[0x1EEE9AC00](v206);
  v200 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1D22503FC();
  v209 = *(v208 - 8);
  v8 = MEMORY[0x1EEE9AC00](v208);
  v195 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v204 = &v190 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v205 = &v190 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v202 = &v190 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v199 = &v190 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v198 = &v190 - v18;
  v216 = sub_1D225068C();
  v197 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v196 = &v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2760);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v213 = &v190 - v21;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2768);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v207 = &v190 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2770);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v215 = (&v190 - v24);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2778);
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v214 = &v190 - v25;
  v226 = sub_1D225082C();
  v228 = *(v226 - 8);
  v26 = MEMORY[0x1EEE9AC00](v226);
  v219 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v190 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v190 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v190 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v190 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v190 - v40;
  v235 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_logger;
  sub_1D225081C();
  v222 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_signposter;
  sub_1D225079C();
  v42 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_facePositionBoundingBoxes;
  v43 = sub_1D21A2498(&unk_1F4DAE258);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2780);
  swift_arrayDestroy();
  v221 = v42;
  *(v2 + v42) = v43;
  v44 = v223;
  v45 = v2;
  v46 = (v2 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_adapterIdentifier);
  v47 = v225;
  *v46 = v225;
  v46[1] = v44;
  v220 = v46;
  sub_1D22505FC();
  swift_allocObject();

  v227 = sub_1D22505EC();
  v48 = v224;
  sub_1D22505DC();
  if (v48)
  {

    v233 = 0;
    v231 = 0u;
    v232 = 0u;
LABEL_3:
    sub_1D2176170(&v231, &qword_1EC6D2788);
    v49 = v228;
    v50 = v2;
    v51 = v219;
    v52 = v226;
    (*(v228 + 16))(v219, v2 + v235, v226);

    v53 = sub_1D225080C();
    v54 = sub_1D2250CDC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = v52;
      v57 = swift_slowAlloc();
      v234[0] = v57;
      *v55 = 136315138;
      v58 = sub_1D21761D0(v47, v44, v234);

      *(v55 + 4) = v58;
      _os_log_impl(&dword_1D2171000, v53, v54, "Cannot find adapter resource in catalog for identifier: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      v59 = v57;
      v52 = v56;
      v50 = v45;
      MEMORY[0x1D3899640](v59, -1, -1);
      v60 = v55;
      v49 = v228;
      MEMORY[0x1D3899640](v60, -1, -1);
    }

    else
    {
    }

    v61 = *(v49 + 8);
    v61(v51, v52);
    v62 = v222;
    sub_1D21AD0DC();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();

    goto LABEL_34;
  }

  v191 = v41;
  v224 = v39;
  v194 = v30;
  v192 = v36;
  v193 = v33;
  if (!*(&v232 + 1))
  {
    goto LABEL_3;
  }

  v64 = v44;
  v219 = 0;
  sub_1D2179AC4(&v231, v234);
  __swift_project_boxed_opaque_existential_1(v234, v234[3]);
  v65 = sub_1D225060C();
  v67 = v66;
  sub_1D225059C();
  __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
  v50 = v2;
  if (sub_1D225061C() == v65 && v68 == v67)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);

    v69 = 1;
    v70 = v217;
    goto LABEL_18;
  }

  v71 = sub_1D225126C();

  __swift_destroy_boxed_opaque_existential_0Tm(&v231);
  v70 = v217;
  if (v71)
  {

    v69 = 1;
    goto LABEL_18;
  }

  sub_1D225057C();
  __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
  if (sub_1D225061C() == v65 && v72 == v67)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);
LABEL_17:

    v69 = 0;
    goto LABEL_18;
  }

  v73 = sub_1D225126C();

  __swift_destroy_boxed_opaque_existential_0Tm(&v231);
  if (v73)
  {
    goto LABEL_17;
  }

  sub_1D22505AC();
  __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
  if (sub_1D225061C() == v65 && v156 == v67)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);
LABEL_59:

    v69 = 2;
    goto LABEL_18;
  }

  v157 = sub_1D225126C();

  __swift_destroy_boxed_opaque_existential_0Tm(&v231);
  if (v157)
  {
    goto LABEL_59;
  }

  sub_1D225058C();
  __swift_project_boxed_opaque_existential_1(&v231, *(&v232 + 1));
  if (sub_1D225061C() == v65 && v169 == v67)
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);
    v69 = 3;
  }

  else
  {
    v179 = sub_1D225126C();

    __swift_destroy_boxed_opaque_existential_0Tm(&v231);
    if ((v179 & 1) == 0)
    {
      v180 = v228;
      v181 = v191;
      v182 = v226;
      (*(v228 + 16))(v191, v2 + v235, v226);

      v183 = sub_1D225080C();
      v184 = sub_1D2250CDC();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v231 = v186;
        *v185 = 136315138;
        v187 = sub_1D21761D0(v225, v64, &v231);

        *(v185 + 4) = v187;
        _os_log_impl(&dword_1D2171000, v183, v184, "Unsupported adapter with identifier %s", v185, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v186);
        MEMORY[0x1D3899640](v186, -1, -1);
        v188 = v185;
        v180 = v228;
        MEMORY[0x1D3899640](v188, -1, -1);
      }

      else
      {
      }

      v61 = *(v180 + 8);
      v61(v181, v182);
      v52 = v182;
      v62 = v222;
      sub_1D21AD0DC();
      swift_allocError();
      *v189 = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v69 = 3;
  }

LABEL_18:
  *(v2 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style) = v69;
  v74 = v215;
  v75 = v219;
  sub_1D21A7C68(v227, v215);
  v76 = v226;
  v77 = v228;
  v78 = v216;
  if (!v75)
  {
    v85 = v218;
    (*(v70 + 56))(v74, 0, 1, v218);
    (*(v70 + 32))(v214, v74, v85);
    sub_1D21AD17C(v234, v229);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2798);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v233 = 0;
      v231 = 0u;
      v232 = 0u;
    }

    sub_1D2174DA8(&v231, v229, &qword_1EC6D27A8);
    if (v230)
    {
      __swift_project_boxed_opaque_existential_1(v229, v230);
      v86 = v213;
      sub_1D225064C();
      v224 = 0;
      v100 = v211;
      v101 = v212;
      (*(v211 + 56))(v86, 0, 1, v212);
      __swift_destroy_boxed_opaque_existential_0Tm(v229);
      v102 = (*(v100 + 48))(v86, 1, v101);
      v87 = v228;
      if (v102 != 1)
      {

        (*(v100 + 32))(v207, v86, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D25C0);
        v103 = v209;
        v104 = (*(v209 + 80) + 32) & ~*(v209 + 80);
        v223 = *(v209 + 72);
        v105 = swift_allocObject();
        *(v105 + 16) = xmmword_1D2252700;
        v194 = v105;
        v219 = (v105 + v104);
        v106 = v196;
        v107 = sub_1D22505CC();
        v108 = v198;
        MEMORY[0x1D38980B0](v107);
        (*(v197 + 8))(v106, v78);
        v229[0] = 0;
        v229[1] = 0xE000000000000000;
        sub_1D225101C();

        v109 = *(v50 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style);
        v110 = 0xE500000000000000;
        strcpy(v229, "personalized_");
        HIWORD(v229[1]) = -4864;
        v111 = 0x696A6F6D65;
        v112 = 0xEC0000006E6F6974;
        v113 = 0x61727473756C6C69;
        if (v109 != 2)
        {
          v113 = 0x686374656B73;
          v112 = 0xE600000000000000;
        }

        if (v109)
        {
          v111 = 0x6F6974616D696E61;
          v110 = 0xE90000000000006ELL;
        }

        if (v109 <= 1)
        {
          v114 = v111;
        }

        else
        {
          v114 = v113;
        }

        if (v109 <= 1)
        {
          v115 = v110;
        }

        else
        {
          v115 = v112;
        }

        MEMORY[0x1D3898450](v114, v115);

        MEMORY[0x1D3898450](0xD00000000000001FLL, 0x80000001D22575E0);
        v116 = v219;
        sub_1D225034C();

        v225 = *(v103 + 8);
        v117 = v208;
        v225(v108, v208);
        v118 = v200;
        v119 = sub_1D22505CC();
        v120 = v199;
        MEMORY[0x1D3898090](v119);
        v215 = *(v201 + 1);
        (v215)(v118, v206);
        v121 = v223;
        sub_1D225034C();
        v225(v120, v117);
        v122 = sub_1D22505CC();
        v201 = &v116[2 * v121];
        MEMORY[0x1D3898090](v122);
        (v215)(v118, v206);
        v123 = v209;
        v206 = *(v209 + 56);
        v206(v210, 1, 1, v117);
        v124 = *(v123 + 16);
        v125 = v202;
        v126 = v117;
        v127 = v103 + 8;
        v124(v202, v116, v126);
        v128 = [objc_opt_self() defaultManager];
        sub_1D22503AC();
        v129 = sub_1D225092C();

        v130 = [v128 fileExistsAtPath_];

        v131 = v125;
        v216 = v127;
        v215 = (v123 + 16);
        v213 = v124;
        if (v130 || (v132 = v208, v225(v125, v208), v124(v125, &v219[v223], v132), v133 = [objc_opt_self() defaultManager], sub_1D22503AC(), v134 = sub_1D225092C(), , LOBYTE(v132) = objc_msgSend(v133, sel_fileExistsAtPath_, v134), v133, v134, (v132 & 1) != 0) || (v135 = v208, v225(v131, v208), v124(v131, v201, v135), v136 = objc_msgSend(objc_opt_self(), sel_defaultManager), sub_1D22503AC(), v137 = sub_1D225092C(), , LOBYTE(v135) = objc_msgSend(v136, sel_fileExistsAtPath_, v137), v136, v137, (v135 & 1) != 0))
        {
          v138 = v210;
          sub_1D2176170(v210, &qword_1EC6D2100);

          v139 = v209;
          v140 = v208;
          (*(v209 + 32))(v138, v131, v208);
          v206(v138, 0, 1, v140);
          v141 = v204;
        }

        else
        {
          v140 = v208;
          v225(v131, v208);

          v138 = v210;
          v141 = v204;
          v139 = v209;
        }

        v142 = v203;
        sub_1D2174DA8(v138, v203, &qword_1EC6D2100);
        v143 = (*(v139 + 48))(v142, 1, v140);
        v144 = v228;
        v145 = v205;
        v146 = v193;
        if (v143 == 1)
        {
          sub_1D2176170(v142, &qword_1EC6D2100);
          v147 = v192;
          (*(v144 + 16))(v192, v50 + v235, v226);
          v148 = sub_1D225080C();
          v149 = sub_1D2250CDC();
          v150 = os_log_type_enabled(v148, v149);
          v151 = v217;
          if (v150)
          {
            v152 = swift_slowAlloc();
            *v152 = 0;
            _os_log_impl(&dword_1D2171000, v148, v149, "Cannot find personalization model", v152, 2u);
            v153 = v152;
            v144 = v228;
            MEMORY[0x1D3899640](v153, -1, -1);
          }

          v61 = *(v144 + 8);
          v154 = v226;
          v61(v147, v226);
          sub_1D21AD0DC();
          swift_allocError();
          *v155 = 0;
          swift_willThrow();

          sub_1D2176170(v210, &qword_1EC6D2100);
          (*(v211 + 8))(v207, v212);
          (*(v151 + 8))(v214, v218);
          v52 = v154;
          sub_1D2176170(&v231, &qword_1EC6D27A8);
          goto LABEL_22;
        }

        (*(v139 + 32))(v205, v142, v140);
        v158 = v226;
        (*(v144 + 16))(v146, v50 + v235, v226);
        (v213)(v141, v145, v140);
        v159 = sub_1D225080C();
        v160 = sub_1D2250CEC();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = swift_slowAlloc();
          v162 = swift_slowAlloc();
          v229[0] = v162;
          *v161 = 136315138;
          sub_1D21AD38C();
          v163 = sub_1D225125C();
          v164 = v141;
          v166 = v165;
          v167 = v225;
          v225(v164, v140);
          v168 = sub_1D21761D0(v163, v166, v229);

          *(v161 + 4) = v168;
          _os_log_impl(&dword_1D2171000, v159, v160, "Loading personalization model at %s", v161, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v162);
          MEMORY[0x1D3899640](v162, -1, -1);
          MEMORY[0x1D3899640](v161, -1, -1);

          v61 = *(v228 + 8);
          v61(v193, v226);
        }

        else
        {

          v170 = v225;
          v225(v141, v140);
          v61 = *(v144 + 8);
          v171 = v158;
          v167 = v170;
          v61(v193, v171);
        }

        v172 = v217;
        v173 = v195;
        v174 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
        [v174 setComputeUnits_];
        sub_1D2174E10(0, &qword_1EC6D27B0);
        v175 = v205;
        (v213)(v173, v205, v140);
        v176 = v224;
        v177 = sub_1D21AD22C(v173, v174);
        if (!v176)
        {
          v178 = v177;

          v167(v175, v140);
          sub_1D2176170(v210, &qword_1EC6D2100);
          (*(v211 + 8))(v207, v212);
          (*(v172 + 8))(v214, v218);
          *(v50 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_personalizationModel) = v178;
          sub_1D2176170(&v231, &qword_1EC6D27A8);
          __swift_destroy_boxed_opaque_existential_0Tm(v234);
          return v50;
        }

        v167(v175, v140);
        sub_1D2176170(v210, &qword_1EC6D2100);
        (*(v211 + 8))(v207, v212);
        (*(v172 + 8))(v214, v218);
        sub_1D2176170(&v231, &qword_1EC6D27A8);
        v62 = v222;
LABEL_32:
        v52 = v226;
        goto LABEL_33;
      }
    }

    else
    {
      sub_1D2176170(v229, &qword_1EC6D27A8);
      v87 = v228;
      v86 = v213;
      (*(v211 + 56))(v213, 1, 1, v212);
    }

    sub_1D2176170(v86, &qword_1EC6D2760);
    v88 = v194;
    v89 = v226;
    (*(v87 + 16))(v194, v50 + v235, v226);

    v90 = sub_1D225080C();
    v91 = sub_1D2250CDC();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v229[0] = v93;
      *v92 = 136315138;
      v94 = sub_1D21761D0(v225, v64, v229);

      *(v92 + 4) = v94;
      _os_log_impl(&dword_1D2171000, v90, v91, "Cannot find adapter asset for %s in catalog", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v93);
      v95 = v93;
      v70 = v217;
      MEMORY[0x1D3899640](v95, -1, -1);
      v96 = v92;
      v87 = v228;
      MEMORY[0x1D3899640](v96, -1, -1);
    }

    else
    {
    }

    v61 = *(v87 + 8);
    v61(v88, v89);
    v62 = v222;
    sub_1D21AD0DC();
    swift_allocError();
    *v97 = 0;
    swift_willThrow();

    (*(v70 + 8))(v214, v218);
    sub_1D2176170(&v231, &qword_1EC6D27A8);
    goto LABEL_32;
  }

  (*(v70 + 56))(v74, 1, 1, v218);
  sub_1D2176170(v74, &qword_1EC6D2770);
  v79 = v224;
  (*(v77 + 16))(v224, v50 + v235, v76);
  v80 = sub_1D225080C();
  v81 = sub_1D2250CDC();
  v52 = v76;
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1D2171000, v80, v81, "Cannot find conditioning asset in catalog", v82, 2u);
    v83 = v82;
    v77 = v228;
    MEMORY[0x1D3899640](v83, -1, -1);
  }

  v61 = *(v77 + 8);
  v61(v79, v76);
  sub_1D21AD0DC();
  swift_allocError();
  *v84 = 0;
  swift_willThrow();

LABEL_22:
  v62 = v222;
LABEL_33:
  __swift_destroy_boxed_opaque_existential_0Tm(v234);
LABEL_34:
  v61((v50 + v235), v52);
  v98 = sub_1D22507AC();
  (*(*(v98 - 8) + 8))(v50 + v62, v98);

  type metadata accessor for VUGenerationConditioner();
  swift_deallocPartialClassInstance();
  return v50;
}

uint64_t sub_1D21AA128(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (qword_1EC6D20F0 != -1)
  {
    v6 = v2;
    v7 = *(a1 + 32);
    swift_once();
    v3 = v7;
    v2 = v6;
  }

  if (v2 == qword_1EC6D7490 && v3 == *algn_1EC6D7498)
  {
    return 1;
  }

  else
  {
    return sub_1D225126C() & 1;
  }
}

uint64_t VUGenerationConditioner.GenerationOptions.seed.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t VUGenerationConditioner.GenerationOptions.targetBoundingBox.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t VUGenerationConditioner.GenerationOptions.ageCategory.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t VUGenerationConditioner.GenerationOptions.ageCategory.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VUGenerationConditioner.GenerationOptions.init(seed:targetBoundingBox:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = a3;
  return result;
}

uint64_t VUGenerationConditioner.GenerationOptions.init(seed:targetBoundingBox:ageCategory:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1D21AA320()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6765746143656761;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684366707;
  }
}

uint64_t sub_1D21AA380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D21AD4A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D21AA3C0(uint64_t a1)
{
  v2 = sub_1D21AD3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D21AA3FC(uint64_t a1)
{
  v2 = sub_1D21AD3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VUGenerationConditioner.GenerationOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[2] = v1[3];
  v11 = v7;
  v10[1] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D21AD3E4();
  sub_1D225139C();
  v16 = 0;
  v8 = v12;
  sub_1D22511EC();
  if (!v8)
  {
    v13 = v11;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27C8);
    sub_1D21AD438(&qword_1EC6D27D0);
    sub_1D22511FC();
    v14 = 2;
    sub_1D22511DC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t VUGenerationConditioner.GenerationOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D21AD3E4();
  sub_1D225138C();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_1D225119C();
    v20 = v10;
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27C8);
    v22 = 1;
    sub_1D21AD438(&qword_1EC6D27E0);
    sub_1D22511AC();
    v13 = v19[1];
    v21 = 2;
    v14 = sub_1D225117C();
    v16 = v15;
    v17 = *(v6 + 8);
    v19[0] = v14;
    v17(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v20 & 1;
    v18 = v19[0];
    *(a2 + 16) = v13;
    *(a2 + 24) = v18;
    *(a2 + 32) = v16;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

void *sub_1D21AA8F4(id *a1, uint64_t a2, void *a3, __int128 *a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v13 = *a4;
  v14 = a4[1];
  v11 = *(a4 + 4);
  result = sub_1D223C130(a3, a5, a6, a7, a8);
  if (!v8)
  {
    v15[0] = v13;
    v15[1] = v14;
    v16 = v11;
    sub_1D21AA9B0(a1, a2, result, v15);
  }

  return result;
}

unint64_t sub_1D21AA9B0(id *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v107 = a2;
  v108 = a1;
  v7 = sub_1D225077C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v104 - v12;
  v14 = *(a4 + 16);
  v111[0] = *a4;
  v111[1] = v14;
  v112 = *(a4 + 32);
  sub_1D225076C();
  v109 = v4;
  v15 = sub_1D225078C();
  v16 = sub_1D2250DAC();
  if (sub_1D2250E4C())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v15, v16, v18, "personalizeTextEmbedding", "", v17, 2u);
    MEMORY[0x1D3899640](v17, -1, -1);
  }

  (*(v8 + 16))(v11, v13, v7);
  sub_1D22507EC();
  swift_allocObject();
  v19 = sub_1D22507DC();
  (*(v8 + 8))(v13, v7);
  v20 = a3[3];
  v21 = a3[4];
  if (qword_1EC6D20F0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC6D7490;
  v23 = *algn_1EC6D7498;
  v24 = v109;
  if ((v20 != qword_1EC6D7490 || v21 != *algn_1EC6D7498) && (sub_1D225126C() & 1) == 0)
  {
    v108 = v19;

    v29 = sub_1D225080C();
    v30 = sub_1D2250CDC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v113 = v32;
      *v31 = 136315394;
      *(v31 + 4) = sub_1D21761D0(v20, v21, &v113);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_1D21761D0(v22, v23, &v113);
      _os_log_impl(&dword_1D2171000, v29, v30, "Provided face conditioning (%s) doesn't match the expected version (%s)", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3899640](v32, -1, -1);
      MEMORY[0x1D3899640](v31, -1, -1);
    }

    sub_1D21AD0DC();
    swift_allocError();
    *v33 = 2;
    swift_willThrow();
    goto LABEL_49;
  }

  v25 = *v108;
  v26 = [*v108 shape];
  v106 = sub_1D2174E10(0, &qword_1EDC876F8);
  v27 = sub_1D2250AFC();

  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 != 3)
    {
      goto LABEL_10;
    }

LABEL_16:
    v105 = a3;
    a3 = (v27 & 0xC000000000000001);
    if ((v27 & 0xC000000000000001) != 0)
    {
      goto LABEL_68;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = v24;
      v35 = v25;
      v36 = v19;
      v37 = *(v27 + 32);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_70;
  }

  v28 = sub_1D2250F4C();
  if (v28 == 3)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (v28 != 2)
  {
LABEL_37:

    v60 = sub_1D225080C();
    v61 = sub_1D2250CDC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v113 = v63;
      *v62 = 136315138;
      v64 = MEMORY[0x1D3898540](v27, v106);
      v66 = v65;

      v67 = sub_1D21761D0(v64, v66, &v113);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1D2171000, v60, v61, "Cannot personalize layer of shape %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v63);
      MEMORY[0x1D3899640](v63, -1, -1);
      v68 = v62;
LABEL_42:
      MEMORY[0x1D3899640](v68, -1, -1);
      goto LABEL_43;
    }

LABEL_43:

    sub_1D21AD0DC();
    swift_allocError();
    *v71 = 3;
    swift_willThrow();
LABEL_49:
    sub_1D21AB72C();
  }

  v21 = v27 & 0xC000000000000001;
  while (1)
  {
    v41 = v28 - 2;
    if (v21)
    {
      break;
    }

    if (v41 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v27 + 8 * v41 + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_68:
    v34 = v24;
    v35 = v25;
    v36 = v19;
    v37 = MEMORY[0x1D3898A80](0, v27);
LABEL_19:
    v38 = v37;
    v39 = sub_1D2250E1C();
    v40 = sub_1D2250E3C();

    v19 = v36;
    v25 = v35;
    v24 = v34;
    v21 = a3;
    a3 = v105;
    if ((v40 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v42 = MEMORY[0x1D3898A80](v41, v27);
LABEL_23:
  v43 = v42;
  v44 = [v42 integerValue];

  if (v107 < 0 || v44 <= v107)
  {

    v60 = sub_1D225080C();
    v69 = sub_1D2250CDC();
    if (os_log_type_enabled(v60, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134218240;
      *(v70 + 4) = v107;
      *(v70 + 12) = 2048;
      *(v70 + 14) = v44;
      _os_log_impl(&dword_1D2171000, v60, v69, "Cannot personalize embedding at position %ld as input layer has %ld tokens", v70, 0x16u);
      v68 = v70;
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v45 = [*(v24 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_personalizationModel) modelDescription];
  v46 = [v45 outputDescriptionsByName];

  sub_1D2174E10(0, &qword_1EC6D27E8);
  v47 = sub_1D225089C();

  if (!*(v47 + 16) || (v48 = sub_1D2196C7C(0xD000000000000016, 0x80000001D2257630), (v49 & 1) == 0))
  {

LABEL_45:

    v25 = 0;
LABEL_46:
    v72 = sub_1D225080C();
    v73 = sub_1D2250CDC();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D2171000, v72, v73, "Cannot get token size", v74, 2u);
      MEMORY[0x1D3899640](v74, -1, -1);
    }

    sub_1D21AD0DC();
    swift_allocError();
    *v75 = 1;
    swift_willThrow();

    goto LABEL_49;
  }

  v50 = *(*(v47 + 56) + 8 * v48);

  v51 = [v50 multiArrayConstraint];

  if (!v51)
  {
    goto LABEL_45;
  }

  v105 = v25;
  v25 = v51;
  v52 = [v25 shape];
  v26 = sub_1D2250AFC();

  if (!(v26 >> 62))
  {
    v53 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  v53 = sub_1D2250F4C();
  if (!v53)
  {
LABEL_71:

    goto LABEL_46;
  }

LABEL_30:
  v54 = __OFSUB__(v53, 1);
  result = v53 - 1;
  if (v54)
  {
    __break(1u);
    goto LABEL_73;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
LABEL_73:
    v56 = MEMORY[0x1D3898A80](result, v26);
    goto LABEL_35;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (result >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v56 = *(v26 + 8 * result + 32);
LABEL_35:
  v57 = v56;
  v58 = v28 - 1;

  if (v21)
  {
    v59 = MEMORY[0x1D3898A80](v58, v27);
    goto LABEL_53;
  }

  if (v58 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v59 = *(v27 + 8 * v58 + 32);
LABEL_53:
    v76 = v59;
    v77 = sub_1D2250E3C();

    if (v77)
    {
      v106 = v57;
      v78 = v105;
      v79 = [v105 dataType];
      if (v79 == [v25 dataType])
      {

        MEMORY[0x1EEE9AC00](v80);
        v82 = v107;
        v81 = v108;
        *(&v104 - 8) = v25;
        *(&v104 - 7) = v82;
        *(&v104 - 6) = v27;
        *(&v104 - 5) = v58;
        v83 = v109;
        *(&v104 - 4) = v81;
        *(&v104 - 3) = v83;
        *(&v104 - 2) = a3;
        *(&v104 - 1) = v111;
        v84 = v78;
        sub_1D2250C9C();
      }

      else
      {

        v92 = v25;
        v93 = sub_1D225080C();
        v94 = sub_1D2250CDC();

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v113 = v96;
          *v95 = 136315138;
          v110 = [v92 dataType];
          type metadata accessor for MLMultiArrayDataType(0);
          v97 = sub_1D22509AC();
          v99 = sub_1D21761D0(v97, v98, &v113);

          *(v95 + 4) = v99;
          _os_log_impl(&dword_1D2171000, v93, v94, "Cannot personalize layer, expected type %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          MEMORY[0x1D3899640](v96, -1, -1);
          MEMORY[0x1D3899640](v95, -1, -1);
        }

        sub_1D21AD0DC();
        swift_allocError();
        *v100 = 3;
        swift_willThrow();
      }
    }

    else
    {

      v85 = v57;
      v86 = sub_1D225080C();
      v87 = sub_1D2250CDC();

      if (os_log_type_enabled(v86, v87))
      {
        v107 = v25;
        v108 = v19;
        v88 = v21;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v89 = 138412546;
        if (v88)
        {
          v91 = MEMORY[0x1D3898A80](v58, v27);
        }

        else
        {
          v91 = *(v27 + 8 * v58 + 32);
        }

        v101 = v91;

        *(v89 + 4) = v101;
        *(v89 + 12) = 2112;
        *(v89 + 14) = v85;
        *v90 = v101;
        v90[1] = v85;
        v102 = v85;
        _os_log_impl(&dword_1D2171000, v86, v87, "Cannot personalize layer of embedding size %@, expected %@", v89, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2150);
        swift_arrayDestroy();
        MEMORY[0x1D3899640](v90, -1, -1);
        MEMORY[0x1D3899640](v89, -1, -1);
        v25 = v107;
      }

      else
      {
      }

      sub_1D21AD0DC();
      swift_allocError();
      *v103 = 3;
      swift_willThrow();
    }

    goto LABEL_49;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1D21AB72C()
{
  v0 = sub_1D22507BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D225077C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D225078C();
  sub_1D22507CC();
  v9 = sub_1D2250D9C();
  if (sub_1D2250E4C())
  {

    sub_1D22507FC();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_1D225075C();
    _os_signpost_emit_with_name_impl(&dword_1D2171000, v8, v9, v12, "personalizeTextEmbedding", v10, v11, 2u);
    MEMORY[0x1D3899640](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1D21AB980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, id *a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v187 = *MEMORY[0x1E69E9840];
  v18 = a11[1];
  v165 = *a11;
  v168 = v18;
  v19 = a11[2];
  v164 = a11[3];
  v169 = a11;
  v163 = a11[4];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2830);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v160 - v20;
  v23 = *(a3 + 16);
  v21 = a3 + 16;
  v22 = v23;
  v24 = [a4 dataType];
  v25 = 2;
  if (v24 == 65568)
  {
    v25 = 4;
  }

  if (!a1)
  {
    goto LABEL_138;
  }

  if (v22 < 2)
  {
    __break(1u);
    goto LABEL_125;
  }

  v162 = v19;
  v19 = *(v21 + 8 * v22);
  v26 = a5 * v19;
  if ((a5 * v19) >> 64 != (a5 * v19) >> 63)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v22 = v26 * v25;
  if ((v26 * v25) >> 64 != (v26 * v25) >> 63)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v177 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2510);
  a5 = swift_allocObject();
  v180 = xmmword_1D2252750;
  *(a5 + 16) = xmmword_1D2252750;
  sub_1D2174E10(0, &qword_1EDC876F8);
  *(a5 + 32) = sub_1D2250E1C();
  if ((a6 & 0xC000000000000001) == 0)
  {
    if ((a7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a7)
    {
      v27 = *(a6 + 8 * a7 + 32);
      goto LABEL_11;
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
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
  }

LABEL_127:
  v27 = MEMORY[0x1D3898A80](a7, a6);
LABEL_11:
  v28 = a1 + v22;
  *(a5 + 40) = v27;
  v29 = [*a8 dataType];
  v30 = swift_allocObject();
  *(v30 + 16) = v180;
  *(v30 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v30 + 40) = sub_1D2250E1C();
  v31 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v32 = sub_1D2250AEC();

  v33 = sub_1D2250AEC();

  v185 = 0;
  v34 = [v31 initWithDataPointer:v28 shape:v32 dataType:v29 strides:v33 deallocator:0 error:&v185];

  v35 = v185;
  if (!v34)
  {
    v82 = v185;
    sub_1D22502FC();

    swift_willThrow();
    return;
  }

  v161 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2838);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D22526E0;
  *(inited + 32) = 0x6D655F6E656B6F74;
  *(inited + 40) = 0xEF676E6964646562;
  v37 = objc_opt_self();
  v38 = v35;
  v174 = v37;
  v170 = v34;
  *(inited + 48) = [v37 featureValueWithMultiArray_];
  v39 = sub_1D21A26E4(inited);
  swift_setDeallocating();
  sub_1D2176170(inited + 32, &qword_1EC6D2840);
  v173 = v39;
  v183 = v39;
  v175 = a9;
  v172 = *(a9 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_personalizationModel);
  v40 = [v172 modelDescription];
  v41 = [v40 inputDescriptionsByName];

  v171 = sub_1D2174E10(0, &qword_1EC6D27E8);
  v42 = sub_1D225089C();

  v43 = sub_1D220F1E4(v42);
  v44 = *(a10 + 16);
  v47 = *(v44 + 64);
  v46 = v44 + 64;
  v45 = v47;
  v48 = 1 << *(*(a10 + 16) + 32);
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  else
  {
    v49 = -1;
  }

  v50 = v49 & v45;
  v51 = (v48 + 63) >> 6;
  v52 = (v43 + 56);
  v178 = *(a10 + 16);

  v53 = 0;
  while (v50)
  {
    v54 = v50;
LABEL_24:
    v50 = (v54 - 1) & v54;
    if (*(v43 + 2))
    {
      v179 = (v54 - 1) & v54;
      v56 = __clz(__rbit64(v54)) | (v53 << 6);
      v57 = (*(v178 + 48) + 16 * v56);
      v59 = *v57;
      v58 = v57[1];
      v60 = *(*(v178 + 56) + 8 * v56);
      sub_1D225132C();

      *&v180 = v60;
      sub_1D22509EC();
      v61 = sub_1D225137C();
      v62 = -1 << v43[32];
      v63 = v61 & ~v62;
      if ((*(v52 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
      {
        v64 = ~v62;
        while (1)
        {
          v65 = (*(v43 + 6) + 16 * v63);
          v66 = *v65 == v59 && v65[1] == v58;
          if (v66 || (sub_1D225126C() & 1) != 0)
          {
            break;
          }

          v63 = (v63 + 1) & v64;
          if (((*(v52 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v67 = [v174 featureValueWithMultiArray_];
        if (v67)
        {
          v71 = v67;
          v72 = v183;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v72;
          sub_1D21BA640(v71, v59, v58, isUniquelyReferenced_nonNull_native);

          v173 = v185;
          v183 = v185;
        }

        else
        {
          v68 = sub_1D2196C7C(v59, v58);
          v70 = v69;

          if (v70)
          {
            v74 = v183;
            v75 = swift_isUniquelyReferenced_nonNull_native();
            v185 = v74;
            if (!v75)
            {
              sub_1D21B7560();
              v74 = v185;
            }

            sub_1D22019A0(v68, v74);
            v173 = v74;
            v183 = v74;
          }

          else
          {
          }
        }
      }

      else
      {
LABEL_16:
      }

      v50 = v179;
    }
  }

  while (1)
  {
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_71;
    }

    if (v55 >= v51)
    {
      break;
    }

    v54 = *(v46 + 8 * v55);
    ++v53;
    if (v54)
    {
      v53 = v55;
      goto LABEL_24;
    }
  }

  v43 = v172;
  v76 = [v172 modelDescription];
  v77 = [v76 inputDescriptionsByName];

  v78 = sub_1D225089C();
  if (!*(v78 + 16))
  {

    v46 = v177;
    goto LABEL_54;
  }

  v52 = "targetBoundingBox";
  sub_1D2196C7C(0xD000000000000010, 0x80000001D2257730);
  v80 = v79;

  v46 = v177;
  if ((v80 & 1) == 0)
  {
    goto LABEL_54;
  }

  v81 = *(v169 + 16);
  if (v81 == 1)
  {
    goto LABEL_54;
  }

  if (v168)
  {
    if (!v81)
    {
      goto LABEL_54;
    }

LABEL_50:

    sub_1D2174E10(0, &qword_1EC6D2848);
    v185 = v81;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D27C8);
    sub_1D2177F3C(&qword_1EC6D2850, &qword_1EC6D27C8);
    sub_1D225083C();
    sub_1D2177F3C(&qword_1EC6D2858, &qword_1EC6D2830);
    v83 = sub_1D2250CAC();
    sub_1D21DEAF4([v174 featureValueWithMultiArray_], 0xD000000000000010, v52 | 0x8000000000000000);

    v84 = sub_1D225080C();
    v85 = sub_1D2250CBC();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v185 = v87;
      *v86 = 136315138;
      v88 = MEMORY[0x1D3898540](v81, MEMORY[0x1E69E63B0]);
      v90 = v89;

      v91 = sub_1D21761D0(v88, v90, &v185);
      v43 = v172;

      *(v86 + 4) = v91;
      _os_log_impl(&dword_1D2171000, v84, v85, "Using bounding box to ground face to %s", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      MEMORY[0x1D3899640](v87, -1, -1);
      MEMORY[0x1D3899640](v86, -1, -1);
    }

    else
    {
    }

    goto LABEL_54;
  }

  if (v81)
  {
    goto LABEL_50;
  }

  v111 = *(v175 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style);
  if (v111 <= 1 && !*(v175 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_style))
  {
LABEL_69:

    goto LABEL_54;
  }

LABEL_71:
  v112 = sub_1D225126C();

  if (v112)
  {
    goto LABEL_54;
  }

  srand48(v165);
  v113 = drand48();
  v114 = v163;

  v115 = sub_1D21A7ABC(v164, v114);

  v116 = sub_1D225080C();
  v117 = sub_1D2250CCC();
  sub_1D2176170(v169, &qword_1EC6D2860);
  v118 = os_log_type_enabled(v116, v117);
  v179 = v115;
  if (v118)
  {
    LODWORD(v173) = v117;
    v119 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v184 = v169;
    v171 = v119;
    *v119 = 136315906;
    v120 = *(v115 + 16);
    v121 = MEMORY[0x1E69E7CC0];
    if (v120)
    {
      v122 = v115;
      v168 = v116;
      v182 = MEMORY[0x1E69E7CC0];
      *&v180 = v120;
      sub_1D21AF73C(0, v120, 0);
      v121 = v182;
      v123 = v115 + 64;
      v124 = sub_1D2250EBC();
      v178 = v52;
      do
      {
        if (v124 < 0 || v124 >= 1 << *(v122 + 32))
        {
          goto LABEL_130;
        }

        if ((*(v123 + 8 * (v124 >> 6)) & (1 << v124)) == 0)
        {
          goto LABEL_131;
        }

        v125 = *(*(v122 + 48) + v124);
        v126 = *(v122 + 36);
        v127 = *(*(v122 + 56) + 8 * v124);
        v185 = 0;
        v186 = 0xE000000000000000;
        LOBYTE(v181) = v125;
        sub_1D22510EC();
        MEMORY[0x1D3898450](8250, 0xE200000000000000);
        v128 = v127 * 100.0;
        if (COERCE__INT64(fabs(v127 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_132;
        }

        if (v128 <= -9.22337204e18)
        {
          goto LABEL_133;
        }

        if (v128 >= 9.22337204e18)
        {
          goto LABEL_134;
        }

        v181 = v128;
        v129 = sub_1D225125C();
        MEMORY[0x1D3898450](v129);

        MEMORY[0x1D3898450](37, 0xE100000000000000);
        v130 = v185;
        v131 = v186;
        v182 = v121;
        v132 = v121[2];
        v133 = v121[3];
        if (v132 >= v133 >> 1)
        {
          v162 = v185;
          sub_1D21AF73C((v133 > 1), v132 + 1, 1);
          v130 = v162;
          v121 = v182;
        }

        v121[2] = v132 + 1;
        v134 = &v121[2 * v132];
        v134[4] = v130;
        v134[5] = v131;
        v122 = v179;
        if (v124 >= -(-1 << *(v179 + 32)))
        {
          goto LABEL_135;
        }

        v46 = v177;
        v43 = v172;
        if ((*(v123 + 8 * (v124 >> 6)) & (1 << v124)) == 0)
        {
          goto LABEL_136;
        }

        if (v126 != *(v179 + 36))
        {
          goto LABEL_137;
        }

        v124 = sub_1D2250EDC();
        v66 = v180 == 1;
        *&v180 = v180 - 1;
        v52 = v178;
      }

      while (!v66);
      v114 = v163;
      v116 = v168;
    }

    v185 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D2868);
    sub_1D2177F3C(&qword_1EC6D2870, &qword_1EC6D2868);
    v135 = sub_1D22508EC();
    v137 = v136;

    v138 = sub_1D21761D0(v135, v137, &v184);

    v139 = v171;
    *(v171 + 4) = v138;
    *(v139 + 12) = 2080;
    if (v114)
    {
      v140 = v164;
    }

    else
    {
      v140 = 16718;
    }

    if (v114)
    {
      v141 = v114;
    }

    else
    {
      v141 = 0xE200000000000000;
    }

    v142 = sub_1D21761D0(v140, v141, &v184);

    *(v139 + 14) = v142;
    *(v139 + 22) = 2048;
    *(v139 + 24) = v165;
    *(v139 + 32) = 2048;
    *(v139 + 34) = v113;
    _os_log_impl(&dword_1D2171000, v116, v173, "Using weights distribution %s for age %s with seed %ld and random value %f", v139, 0x2Au);
    v143 = v169;
    swift_arrayDestroy();
    MEMORY[0x1D3899640](v143, -1, -1);
    MEMORY[0x1D3899640](v139, -1, -1);
  }

  else
  {
  }

  v144 = v179;
  if (!*(v179 + 16) || (v145 = sub_1D21A7398(0), (v146 & 1) == 0))
  {
    v148 = 0.0;
    if (v113 > 0.0)
    {
      goto LABEL_102;
    }

LABEL_106:
    v151 = 0;
    goto LABEL_107;
  }

  v147 = *(*(v144 + 56) + 8 * v145);
  if (v113 <= v147)
  {
    goto LABEL_106;
  }

  v148 = v147 + 0.0;
LABEL_102:
  if (*(v144 + 16) && (v149 = sub_1D21A7398(1), (v150 & 1) != 0))
  {
    v148 = v148 + *(*(v144 + 56) + 8 * v149);
    if (v113 <= v148)
    {
LABEL_105:
      v151 = 1;
      goto LABEL_107;
    }
  }

  else if (v113 <= v148)
  {
    goto LABEL_105;
  }

  if (*(v144 + 16) && (v155 = sub_1D21A7398(2), (v156 & 1) != 0))
  {
    v157 = v148 + *(*(v144 + 56) + 8 * v155);
    if (v113 <= v157)
    {
      goto LABEL_121;
    }
  }

  else
  {
    if (v113 <= v148)
    {
LABEL_121:
      v151 = 2;
      goto LABEL_107;
    }

    v157 = v148 + 0.0;
  }

  if (*(v144 + 16) && (v158 = sub_1D21A7398(3), (v159 & 1) != 0))
  {
    if (v113 > v157 + *(*(v144 + 56) + 8 * v158))
    {
      goto LABEL_69;
    }
  }

  else if (v113 > v157)
  {
    goto LABEL_69;
  }

  v151 = 3;
LABEL_107:

  v152 = *(v175 + OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_facePositionBoundingBoxes);
  if (*(v152 + 16))
  {
    v153 = sub_1D21A7398(v151);
    if (v154)
    {
      v81 = *(*(v152 + 56) + 8 * v153);
      goto LABEL_50;
    }
  }

LABEL_54:
  v92 = sub_1D225080C();
  v93 = sub_1D2250CBC();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 134217984;
    *(v94 + 4) = v46;
    _os_log_impl(&dword_1D2171000, v92, v93, "Personalizing the text embedding at position %ld", v94, 0xCu);
    MEMORY[0x1D3899640](v94, -1, -1);
  }

  sub_1D21DE3B4(v183);
  v95 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v96 = v176;
  v97 = sub_1D21ACFF4();
  if (v96)
  {
  }

  else
  {
    v98 = v97;
    v185 = 0;
    v99 = [v43 predictionFromFeatures:v97 error:&v185];
    if (v99)
    {
      v100 = v99;
      v101 = v185;
      v102 = sub_1D225092C();
      v103 = [v100 featureValueForName_];

      swift_unknownObjectRelease();
      v104 = [v103 multiArrayValue];

      if (v104)
      {
        MEMORY[0x1EEE9AC00](v105);
        *(&v160 - 2) = v161;
        sub_1D2250C8C();

        return;
      }

      v107 = sub_1D225080C();
      v108 = sub_1D2250CDC();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_1D2171000, v107, v108, "Could not get the personalization model output", v109, 2u);
        MEMORY[0x1D3899640](v109, -1, -1);
      }

      sub_1D21AD0DC();
      swift_allocError();
      *v110 = 1;
    }

    else
    {
      v106 = v185;

      sub_1D22502FC();
    }

    swift_willThrow();
  }
}

uint64_t VUGenerationConditioner.deinit()
{
  v1 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t VUGenerationConditioner.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_logger;
  v2 = sub_1D225082C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19VisualUnderstanding23VUGenerationConditioner_signposter;
  v4 = sub_1D22507AC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id sub_1D21ACFF4()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1D225088C();

  v6[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D22502FC();

    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1D21AD0DC()
{
  result = qword_1EC6D2790;
  if (!qword_1EC6D2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D2790);
  }

  return result;
}

uint64_t type metadata accessor for VUGenerationConditioner()
{
  result = qword_1EDC873E8;
  if (!qword_1EDC873E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21AD17C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D21AD1E0()
{
  v0 = sub_1D225116C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

id sub_1D21AD22C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D225033C();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1D22503FC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1D22502FC();

    swift_willThrow();
    v11 = sub_1D22503FC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_1D21AD38C()
{
  result = qword_1EDC87248;
  if (!qword_1EDC87248)
  {
    sub_1D22503FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC87248);
  }

  return result;
}

unint64_t sub_1D21AD3E4()
{
  result = qword_1EC6D27C0;
  if (!qword_1EC6D27C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D27C0);
  }

  return result;
}

uint64_t sub_1D21AD438(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D27C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}