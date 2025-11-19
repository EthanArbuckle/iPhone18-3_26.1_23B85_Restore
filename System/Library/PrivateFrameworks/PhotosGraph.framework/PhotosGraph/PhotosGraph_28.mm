uint64_t sub_22F30BB8C(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22F30BCEC(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_22F30BF7C(v9, v4, v2);
  result = MEMORY[0x2319033A0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F30BCEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v26 = result;
  v27 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    v15 = [v14 label];
    if (!v15)
    {
      sub_22F740E20();
      goto LABEL_21;
    }

    v16 = v15;
    v17 = sub_22F740E20();
    v19 = v18;

    v20 = sub_22F740E20();
    if (v19)
    {
      if (v17 == v20 && v19 == v21)
      {

        v3 = a3;
LABEL_23:
        *(v26 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_22F1B1C9C(v26, a2, v27, v3);
        }
      }

      else
      {
        v23 = sub_22F742040();

        v3 = a3;
        if (v23)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v3 = a3;
LABEL_21:
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22F1B1C9C(v26, a2, v27, v3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_22F30BEEC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F30BFF4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_22F30BF7C(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_22F30BCEC(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22F30BFF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t))
{
  v19 = result;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = *(*(a3 + 48) + 8 * v13);

    v16 = a4(v15, v14);

    if (v16)
    {
      *(v19 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        return sub_22F1B1A80(v19, a2, v20, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22F1B1A80(v19, a2, v20, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F30C15C(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22F30BFF4(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22F30BEEC(v11, v6, v4, a2);
  result = MEMORY[0x2319033A0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F30C2DC(uint64_t a1, uint64_t (*a2)(id, uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v23 = MEMORY[0x277D84F98];
    sub_22F741CA0();
    v4 = sub_22F741D10();
    if (v4)
    {
      v5 = v4;
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      v6 = v5;
      do
      {
        v21 = v6;
        swift_dynamicCast();
        type metadata accessor for MomentRelevanceData(0);
        swift_dynamicCast();
        if (!v22)
        {
          break;
        }

        v7 = v22;

        v8 = a2(v7, v21);

        if (v8)
        {
          v9 = *(v3 + 16);
          if (*(v3 + 24) <= v9)
          {
            sub_22F12B228(v9 + 1, 1);
          }

          v3 = v23;
          v10 = *(v23 + 40);
          result = sub_22F741800();
          v12 = v23 + 64;
          v13 = -1 << *(v23 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 64 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v23 + 48) + 8 * v16) = v7;
          *(*(v23 + 56) + 8 * v16) = v21;
          ++*(v23 + 16);
        }

        else
        {
        }

        v6 = sub_22F741D10();
      }

      while (v6);
    }

    sub_22F0FF590();
  }

  else
  {
    v3 = sub_22F30C15C(a1, a2);
  }

  return v3;
}

uint64_t sub_22F30C574(double *__src, double *__dst, double *a3, double *a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v14] <= a4)
    {
      memmove(a4, __dst, 16 * v14);
    }

    v15 = &v5[2 * v14];
    if (v12 < 16 || v7 <= v8)
    {
      goto LABEL_81;
    }

    v69 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v76 = v5;
LABEL_46:
    v67 = v7 - 2;
    v6 -= 2;
    v40 = v15;
    v78 = v7;
    while (1)
    {
      v42 = *(v40 - 16);
      v40 -= 16;
      v41 = v42;
      v43 = *(v40 + 8);
      v44 = *(v7 - 1);
      if (v43 == v44)
      {
        v74 = v15;
        v45 = *(v7 - 2);
        v46 = objc_opt_self();
        v47 = *(a5 + v69);
        v48 = v41;
        v49 = v45;
        v71 = v48;
        v50 = [v46 beautifiedLocationNodeStringWithPlaceNode:v48 locationHelper:v47];
        if (v50)
        {
          v51 = v50;
          v52 = sub_22F740E20();
          v54 = v53;
        }

        else
        {
          v52 = 0;
          v54 = 0;
        }

        v55 = [v46 beautifiedLocationNodeStringWithPlaceNode:v49 locationHelper:{v47, v67}];
        if (v55)
        {
          v56 = v55;
          v57 = sub_22F740E20();
          v59 = v58;

          if (v54)
          {
            if (!v59)
            {
              v62 = v71;
LABEL_73:

              v15 = v74;
              v5 = v76;
              v7 = v78;
LABEL_74:
              if (v6 + 2 != v7)
              {
                *v6 = *v67;
              }

              if (v15 <= v5 || (v7 = v67, v67 <= v8))
              {
                v7 = v67;
                goto LABEL_81;
              }

              goto LABEL_46;
            }

            v68 = v49;
            v60 = sub_22F740F10();
            v61 = sub_22F740F10();
            if (v60 == v61)
            {
              if (v52 == v57 && v54 == v59)
              {

                v15 = v74;
                v5 = v76;
                v7 = v78;
              }

              else
              {
                v65 = sub_22F742040();

                v15 = v74;
                v5 = v76;
                v7 = v78;
                if (v65)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
              v63 = v61;

              v64 = v60 < v63;
              v15 = v74;
              v5 = v76;
              v7 = v78;
              if (v64)
              {
                goto LABEL_74;
              }
            }

            goto LABEL_70;
          }

          v62 = v71;
        }

        else
        {
          v62 = v71;
          if (v54)
          {
            goto LABEL_73;
          }

          v59 = 0;
        }

        v15 = v74;
        v5 = v76;
        v7 = v78;
        if (!v59)
        {
          goto LABEL_74;
        }
      }

      else if (v44 < v43)
      {
        goto LABEL_74;
      }

LABEL_70:
      if (v6 + 2 != v15)
      {
        *v6 = *v40;
      }

      v6 -= 2;
      v15 = v40;
      if (v40 <= v5)
      {
        v15 = v40;
        goto LABEL_81;
      }
    }
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v15 = &v5[2 * v11];
  if (v9 >= 16 && v7 < v6)
  {
    v70 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v73 = &v5[2 * v11];
    while (1)
    {
      v16 = v7[1];
      v17 = v5[1];
      if (v16 != v17)
      {
        if (v17 < v16)
        {
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      v77 = v7;
      v18 = *v7;
      v75 = v5;
      v19 = *v5;
      v20 = objc_opt_self();
      v21 = *(a5 + v70);
      v22 = v18;
      v23 = v19;
      v24 = [v20 beautifiedLocationNodeStringWithPlaceNode:v22 locationHelper:v21];
      if (v24)
      {
        v25 = v24;
        v26 = sub_22F740E20();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v20 beautifiedLocationNodeStringWithPlaceNode:v23 locationHelper:v21];
      if (!v29)
      {
        break;
      }

      v30 = v29;
      v31 = sub_22F740E20();
      v33 = v32;

      if (!v28)
      {
        goto LABEL_28;
      }

      if (!v33)
      {
        goto LABEL_26;
      }

      v34 = sub_22F740F10();
      v35 = sub_22F740F10();
      if (v34 == v35)
      {
        if (v26 == v31 && v28 == v33)
        {

          v15 = v73;
          v5 = v75;
          v7 = v77;
        }

        else
        {
          v39 = sub_22F742040();

          v15 = v73;
          v5 = v75;
          v7 = v77;
          if (v39)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v38 = v35;

        v15 = v73;
        v5 = v75;
        v7 = v77;
        if (v34 < v38)
        {
          goto LABEL_33;
        }
      }

LABEL_29:
      v36 = v5;
      v37 = v8 == v5;
      v5 += 2;
      if (!v37)
      {
        goto LABEL_34;
      }

LABEL_35:
      v8 += 2;
      if (v5 >= v15 || v7 >= v6)
      {
        goto LABEL_79;
      }
    }

    if (v28)
    {
LABEL_26:

      v15 = v73;
      v5 = v75;
      v7 = v77;
LABEL_33:
      v36 = v7;
      v37 = v8 == v7;
      v7 += 2;
      if (v37)
      {
        goto LABEL_35;
      }

LABEL_34:
      *v8 = *v36;
      goto LABEL_35;
    }

    v33 = 0;
LABEL_28:

    v15 = v73;
    v5 = v75;
    v7 = v77;
    if (!v33)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

LABEL_79:
  v7 = v8;
LABEL_81:
  if (v7 != v5 || v7 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v7, v5, 16 * ((v15 - v5) / 16));
  }

  return 1;
}

void sub_22F30CB90(char **a1, double *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_22F3F5F98(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 16 * *v10);
      __dst = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_22F30C574(__src, __dst, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_22F30CD30(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v7 = a3[1];
  v163 = MEMORY[0x277D84F90];
  if (v7 >= 1)
  {
    v152 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v144 = a5;
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8++;
      v145 = v9;
      if (v8 >= v7)
      {
        goto LABEL_43;
      }

      v11 = *a3;
      v12 = *a3 + 16 * v8;
      v13 = *(v12 + 8);
      v162[0] = *v12;
      v162[1] = v13;
      v14 = (v11 + 16 * v10);
      v15 = v10;
      v17 = v14[1];
      v161[0] = *v14;
      v16 = v161[0];
      v161[1] = v17;
      v18 = v162[0];
      v19 = *&v16;
      v20 = v6;
      v158 = sub_22F2FF4B4(v162, v161, v144);
      if (v6)
      {

LABEL_138:
        goto LABEL_139;
      }

      v8 = v15 + 2;
      v10 = v15;
      if (v15 + 2 >= v7)
      {
        goto LABEL_34;
      }

      v136 = v15;
      v21 = v14 + 3;
      v156 = v7;
      while (1)
      {
        v149 = v8;
        v24 = v21[2];
        if (v24 != *v21)
        {
          v22 = *v21 < v24;
          goto LABEL_10;
        }

        v25 = *(v21 + 1);
        v26 = *(v21 - 1);
        v27 = objc_opt_self();
        v28 = *&a5[v152];
        v29 = v25;
        v30 = v26;
        v31 = [v27 beautifiedLocationNodeStringWithPlaceNode:v29 locationHelper:v28];
        if (v31)
        {
          v32 = v31;
          v33 = sub_22F740E20();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v36 = [v27 beautifiedLocationNodeStringWithPlaceNode:v30 locationHelper:{v28, v136}];
        if (!v36)
        {
          if (v35)
          {
LABEL_25:
            v8 = v149;
            v7 = v156;

            v9 = v145;
            if ((v158 & 1) == 0)
            {
              v10 = v136;
              goto LABEL_43;
            }

            goto LABEL_11;
          }

          v40 = 0;
LABEL_28:
          v7 = v156;

          v22 = v40 == 0;

          v9 = v145;
          goto LABEL_10;
        }

        v37 = v36;
        v38 = sub_22F740E20();
        v40 = v39;

        if (!v35)
        {
          goto LABEL_28;
        }

        if (!v40)
        {
          goto LABEL_25;
        }

        v41 = sub_22F740F10();
        v42 = sub_22F740F10();
        if (v41 != v42)
        {
          v43 = v42;

          v22 = v41 < v43;
          goto LABEL_31;
        }

        if (v33 != v38 || v35 != v40)
        {
          v22 = sub_22F742040();

LABEL_31:
          v6 = v20;
          v9 = v145;
          v7 = v156;
LABEL_10:
          v23 = v158 ^ v22;
          v8 = v149;
          if (v23)
          {
            goto LABEL_33;
          }

          goto LABEL_11;
        }

        v6 = v20;
        v9 = v145;
        v8 = v149;
        v7 = v156;
        if (v158)
        {
          break;
        }

LABEL_11:
        ++v8;
        v21 += 2;
        if (v7 == v8)
        {
          v8 = v7;
LABEL_33:
          v10 = v136;
LABEL_34:
          if ((v158 & 1) == 0)
          {
            goto LABEL_43;
          }

          if (v8 >= v10)
          {
            goto LABEL_36;
          }

LABEL_161:
          __break(1u);
LABEL_162:

          __break(1u);
LABEL_163:

          __break(1u);
LABEL_164:

          __break(1u);
LABEL_165:

          __break(1u);
          goto LABEL_166;
        }
      }

      v10 = v136;
      if (v149 < v136)
      {
        goto LABEL_161;
      }

LABEL_36:
      if (v10 < v8)
      {
        v44 = 0;
        v45 = 16 * v8;
        v46 = 16 * v10;
        v47 = v10;
        do
        {
          if (v47 != v8 + v44 - 1)
          {
            v52 = *a3;
            if (!*a3)
            {
              goto LABEL_164;
            }

            v48 = (v52 + v46);
            v49 = v52 + v45;
            v50 = *v48;
            v51 = v48[1];
            *v48 = *(v49 - 16);
            *(v49 - 16) = v50;
            *(v49 - 8) = v51;
          }

          ++v47;
          --v44;
          v45 -= 16;
          v46 += 16;
        }

        while (v47 < v8 + v44);
      }

LABEL_43:
      v53 = a3[1];
      if (v8 >= v53)
      {
        goto LABEL_81;
      }

      if (__OFSUB__(v8, v10))
      {
        goto LABEL_158;
      }

      if (v8 - v10 >= a4)
      {
        goto LABEL_81;
      }

      v54 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_159;
      }

      if (v54 >= v53)
      {
        v54 = a3[1];
      }

      if (v54 < v10)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      if (v8 == v54)
      {
        goto LABEL_81;
      }

      v139 = v6;
      v159 = *a3;
      v55 = *a3 + 16 * v8;
      v137 = v10;
      v56 = v10 - v8;
      v141 = v54;
      while (2)
      {
        v150 = v8;
        v57 = v159 + 16 * v8;
        v58 = *v57;
        v59 = *(v57 + 8);
        v142 = v56;
        v143 = v55;
        while (2)
        {
          v60 = *(v55 - 16);
          v61 = *(v55 - 8);
          if (v59 != v61)
          {
            if (v61 >= v59)
            {
              goto LABEL_53;
            }

            goto LABEL_59;
          }

          v62 = objc_opt_self();
          v63 = *&a5[v152];
          v64 = v58;
          v65 = v60;
          v66 = [v62 beautifiedLocationNodeStringWithPlaceNode:v64 locationHelper:v63];
          if (v66)
          {
            v67 = v66;
            v154 = sub_22F740E20();
            v69 = v68;
          }

          else
          {
            v154 = 0;
            v69 = 0;
          }

          v71 = [v62 beautifiedLocationNodeStringWithPlaceNode:v65 locationHelper:{v63, v137}];
          if (!v71)
          {
            if (v69)
            {
LABEL_76:

              if (!v159)
              {
                goto LABEL_162;
              }
            }

            else
            {
              v75 = 0;
LABEL_74:

              if (v75)
              {
                goto LABEL_53;
              }

LABEL_59:
              if (!v159)
              {
                goto LABEL_162;
              }
            }

            v58 = *v55;
            v59 = *(v55 + 8);
            *v55 = *(v55 - 16);
            *(v55 - 8) = v59;
            *(v55 - 16) = v58;
            v55 -= 16;
            if (__CFADD__(v56++, 1))
            {
              goto LABEL_53;
            }

            continue;
          }

          break;
        }

        v72 = v71;
        v73 = sub_22F740E20();
        v75 = v74;

        if (!v69)
        {
          goto LABEL_74;
        }

        if (!v75)
        {
          goto LABEL_76;
        }

        v76 = sub_22F740F10();
        v77 = sub_22F740F10();
        v148 = v76;
        if (v76 != v77)
        {
          v79 = v77;

          if (v148 >= v79)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }

        if (v154 != v73 || v69 != v75)
        {
          v78 = sub_22F742040();

          if ((v78 & 1) == 0)
          {
            goto LABEL_53;
          }

          goto LABEL_59;
        }

LABEL_53:
        ++v8;
        v55 = v143 + 16;
        v56 = v142 - 1;
        if (v150 + 1 != v141)
        {
          continue;
        }

        break;
      }

      v8 = v141;
      v6 = v139;
      v9 = v145;
      v10 = v137;
LABEL_81:
      if (v8 < v10)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      }

      v81 = *(v9 + 2);
      v80 = *(v9 + 3);
      v82 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v9 = sub_22F13D970((v80 > 1), v81 + 1, 1, v9);
      }

      *(v9 + 2) = v82;
      v83 = v9 + 32;
      v84 = &v9[16 * v81 + 32];
      *v84 = v10;
      *(v84 + 1) = v8;
      v163 = v9;
      v157 = *a1;
      if (!*a1)
      {
        goto LABEL_165;
      }

      if (v81)
      {
        v146 = v9;
        v151 = v8;
        v155 = v9 + 32;
        while (1)
        {
          v85 = v82 - 1;
          if (v82 >= 4)
          {
            break;
          }

          if (v82 == 3)
          {
            v86 = *(v9 + 4);
            v87 = *(v9 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_102:
            if (v89)
            {
              goto LABEL_148;
            }

            v102 = &v9[16 * v82];
            v104 = *v102;
            v103 = *(v102 + 1);
            v105 = __OFSUB__(v103, v104);
            v106 = v103 - v104;
            v107 = v105;
            if (v105)
            {
              goto LABEL_151;
            }

            v108 = &v83[16 * v85];
            v110 = *v108;
            v109 = *(v108 + 1);
            v96 = __OFSUB__(v109, v110);
            v111 = v109 - v110;
            if (v96)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v106, v111))
            {
              goto LABEL_155;
            }

            if (v106 + v111 >= v88)
            {
              if (v88 < v111)
              {
                v85 = v82 - 2;
              }

              goto LABEL_123;
            }

            goto LABEL_116;
          }

          v112 = &v9[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v96 = __OFSUB__(v113, v114);
          v106 = v113 - v114;
          v107 = v96;
LABEL_116:
          if (v107)
          {
            goto LABEL_150;
          }

          v115 = &v83[16 * v85];
          v117 = *v115;
          v116 = *(v115 + 1);
          v96 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v96)
          {
            goto LABEL_153;
          }

          if (v118 < v106)
          {
            goto LABEL_3;
          }

LABEL_123:
          if (v85 - 1 >= v82)
          {
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
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v123 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v124 = &v83[16 * v85 - 16];
          v125 = *v124;
          v126 = v85;
          v127 = &v83[16 * v85];
          v128 = *(v127 + 1);
          v129 = (v123 + 16 * *v124);
          v130 = (v123 + 16 * *v127);
          v160 = (v123 + 16 * v128);
          v131 = v144;
          sub_22F30C574(v129, v130, v160, v157, v131);
          if (v6)
          {

            goto LABEL_138;
          }

          v9 = v146;
          if (v128 < v125)
          {
            goto LABEL_143;
          }

          v132 = *(v146 + 2);
          if (v126 > v132)
          {
            goto LABEL_144;
          }

          *v124 = v125;
          *(v124 + 1) = v128;
          if (v126 >= v132)
          {
            goto LABEL_145;
          }

          v82 = v132 - 1;
          memmove(v127, v127 + 16, 16 * (v132 - 1 - v126));
          *(v146 + 2) = v132 - 1;
          v8 = v151;
          v83 = v155;
          if (v132 <= 2)
          {
LABEL_3:
            v163 = v9;
            goto LABEL_4;
          }
        }

        v90 = &v83[16 * v82];
        v91 = *(v90 - 8);
        v92 = *(v90 - 7);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_146;
        }

        v95 = *(v90 - 6);
        v94 = *(v90 - 5);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_147;
        }

        v97 = &v9[16 * v82];
        v99 = *v97;
        v98 = *(v97 + 1);
        v96 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v96)
        {
          goto LABEL_149;
        }

        v96 = __OFADD__(v88, v100);
        v101 = v88 + v100;
        if (v96)
        {
          goto LABEL_152;
        }

        if (v101 >= v93)
        {
          v119 = &v83[16 * v85];
          v121 = *v119;
          v120 = *(v119 + 1);
          v96 = __OFSUB__(v120, v121);
          v122 = v120 - v121;
          if (v96)
          {
            goto LABEL_156;
          }

          if (v88 < v122)
          {
            v85 = v82 - 2;
          }

          goto LABEL_123;
        }

        goto LABEL_102;
      }

LABEL_4:
      v7 = a3[1];
      if (v8 >= v7)
      {
        goto LABEL_135;
      }
    }
  }

  v133 = a5;
LABEL_135:
  v134 = *a1;
  if (*a1)
  {
    v135 = a5;
    sub_22F30CB90(&v163, v134, a3, v135);
    if (v6)
    {

      goto LABEL_138;
    }

LABEL_139:
  }

  else
  {
LABEL_166:

    __break(1u);
  }
}

uint64_t sub_22F30D778(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v34 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
    v37 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
LABEL_6:
    v33 = a3;
    v7 = v37 + 16 * a3;
    v8 = *v7;
    v9 = *(v7 + 8);
    v31 = v6;
    v32 = v5;
    while (1)
    {
      v10 = *(v5 - 16);
      v11 = *(v5 - 8);
      if (v9 != v11)
      {
        break;
      }

      v12 = objc_opt_self();
      v13 = *(a5 + v34);
      v14 = v8;
      v15 = v10;
      v16 = [v12 beautifiedLocationNodeStringWithPlaceNode:v14 locationHelper:v13];
      if (v16)
      {
        v17 = v16;
        v36 = sub_22F740E20();
        v19 = v18;
      }

      else
      {
        v36 = 0;
        v19 = 0;
      }

      v21 = [v12 beautifiedLocationNodeStringWithPlaceNode:v15 locationHelper:v13];
      if (v21)
      {
        v22 = v21;
        v23 = sub_22F740E20();
        v25 = v24;

        if (!v19)
        {
          goto LABEL_26;
        }

        if (v25)
        {
          v26 = sub_22F740F10();
          v27 = sub_22F740F10();
          if (v26 == v27)
          {
            if (v36 == v23 && v19 == v25)
            {

LABEL_5:
              a3 = v33 + 1;
              v5 = v32 + 16;
              v6 = v31 - 1;
              if (v33 + 1 == a2)
              {
                return result;
              }

              goto LABEL_6;
            }

            v28 = sub_22F742040();

            if ((v28 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v29 = v27;

            if (v26 >= v29)
            {
              goto LABEL_5;
            }
          }

          goto LABEL_11;
        }
      }

      else if (!v19)
      {
        v25 = 0;
LABEL_26:

        if (v25)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (!v37)
        {
          goto LABEL_32;
        }

        goto LABEL_12;
      }

      if (!v37)
      {
LABEL_32:
        __break(1u);
        return result;
      }

LABEL_12:
      v8 = *v5;
      v9 = *(v5 + 8);
      *v5 = *(v5 - 16);
      *(v5 - 8) = v9;
      *(v5 - 16) = v8;
      v5 -= 16;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    if (v11 >= v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_22F30DA30(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_22F742000();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1170, &qword_22F7715A8);
        v8 = sub_22F741200();
        *(v8 + 16) = v7;
      }

      v10[0] = (v8 + 32);
      v10[1] = v7;
      v9 = v4;
      sub_22F30CD30(v10, v11, a1, v6, v9);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_22F30D778(0, v3, 1, a1, v4);
  }
}

void sub_22F30DB70(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65BC(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_22F30DA30(v7, v6);

  *a1 = v3;
}

void sub_22F30DC08(void ***a1, uint64_t a2, void ***a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  *(swift_allocObject() + 16) = a5;
  v146 = a3;
  v8 = a3[1];
  v153 = v5;
  if (v8 < 1)
  {
    v127 = v5;
    v10 = MEMORY[0x277D84F90];
LABEL_134:
    v154 = *a1;
    if (!*a1)
    {
      goto LABEL_173;
    }

    *(swift_allocObject() + 16) = v5;
    v155 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_136;
    }

    goto LABEL_167;
  }

  v136 = a4;
  v154 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
  v145 = v5;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v141 = v10;
    if (v9 + 1 >= v8)
    {
      goto LABEL_41;
    }

    v13 = v9;
    v14 = *v146;
    v15 = (*v146)[v9];
    v16 = (*v146)[v12];
    v17 = v15;
    v151 = sub_22F300018(v16, v17, v145);

    v12 = v13 + 2;
    v137 = v13;
    if (v13 + 2 < v8)
    {
      v18 = &v14[v13 + 2];
      v143 = v8;
      while (1)
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        v22 = *(*v18 + OBJC_IVAR___PGTripLocationScore__score);
        v23 = *&v20[OBJC_IVAR___PGTripLocationScore__score];
        if (v22 != v23)
        {
          v19 = v23 < v22;
          v10 = v141;
          goto LABEL_8;
        }

        v147 = v12;
        v24 = objc_opt_self();
        v25 = *&v21[OBJC_IVAR___PGTripLocationScore_locationNode];
        v26 = *(v154 + v5);
        v155 = v21;
        v27 = v20;
        v28 = [v24 beautifiedLocationNodeStringWithPlaceNode:v25 locationHelper:v26];
        if (v28)
        {
          v29 = v28;
          v30 = sub_22F740E20();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0;
        }

        v10 = v141;
        v33 = [v24 beautifiedLocationNodeStringWithPlaceNode:*&v27[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v26, v136}];
        if (!v33)
        {
          break;
        }

        v34 = v33;
        v35 = sub_22F740E20();
        v37 = v36;

        if (!v32)
        {
          goto LABEL_27;
        }

        if (!v37)
        {
          goto LABEL_24;
        }

        v38 = sub_22F740F10();
        v39 = sub_22F740F10();
        if (v38 == v39)
        {
          v40 = v30 == v35 && v32 == v37;
          v12 = v147;
          if (v40)
          {

            v5 = v153;
            v8 = v143;
            if (v151)
            {
              v11 = v137;
              goto LABEL_34;
            }

            goto LABEL_9;
          }

          v19 = sub_22F742040();

          v5 = v153;
          v8 = v143;
        }

        else
        {
          v41 = v39;

          v19 = v38 < v41;
          v5 = v153;
          v12 = v147;
          v8 = v143;
        }

LABEL_8:
        if ((v151 ^ v19))
        {
          goto LABEL_33;
        }

LABEL_9:
        ++v12;
        ++v18;
        if (v8 == v12)
        {
          v12 = v8;
          goto LABEL_32;
        }
      }

      if (v32)
      {
LABEL_24:
        v12 = v147;

        v8 = v143;
        if ((v151 & 1) == 0)
        {
          v11 = v137;
          goto LABEL_41;
        }

        goto LABEL_9;
      }

      v37 = 0;
LABEL_27:
      v12 = v147;

      v19 = v37 == 0;

      v8 = v143;
      goto LABEL_8;
    }

LABEL_32:
    v10 = v141;
LABEL_33:
    v11 = v137;
    if (v151)
    {
LABEL_34:
      if (v12 < v11)
      {
        goto LABEL_166;
      }

      if (v11 < v12)
      {
        v42 = 8 * v12 - 8;
        v43 = v11;
        v44 = v12;
        v45 = v11;
        do
        {
          if (v45 != --v44)
          {
            v46 = *v146;
            if (!*v146)
            {
              goto LABEL_170;
            }

            v47 = v46[v43];
            v46[v43] = *(v46 + v42);
            *(v46 + v42) = v47;
          }

          ++v45;
          v42 -= 8;
          ++v43;
        }

        while (v45 < v44);
      }
    }

LABEL_41:
    v48 = v146[1];
    if (v12 >= v48)
    {
      goto LABEL_81;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_163;
    }

    if (v12 - v11 >= v136)
    {
      goto LABEL_81;
    }

    v49 = (v11 + v136);
    if (__OFADD__(v11, v136))
    {
      goto LABEL_164;
    }

    if (v49 >= v48)
    {
      v49 = v146[1];
    }

    if (v49 < v11)
    {
      goto LABEL_165;
    }

    if (v12 == v49)
    {
      goto LABEL_81;
    }

    v155 = *v146;
    v5 = &(*v146)[v12 - 1];
    v138 = v11;
    v50 = v11 - v12;
    v140 = v49;
    while (2)
    {
      v148 = v12;
      v51 = v155[v12];
      v142 = v50;
      v144 = v5;
      while (1)
      {
        v52 = *v5;
        v53 = *&v51[OBJC_IVAR___PGTripLocationScore__score];
        v54 = *(*v5 + OBJC_IVAR___PGTripLocationScore__score);
        if (v53 != v54)
        {
          if (v54 >= v53)
          {
            goto LABEL_51;
          }

          goto LABEL_57;
        }

        v55 = objc_opt_self();
        v56 = *&v51[OBJC_IVAR___PGTripLocationScore_locationNode];
        v57 = *(v154 + v153);
        v58 = v51;
        v59 = v52;
        v60 = [v55 beautifiedLocationNodeStringWithPlaceNode:v56 locationHelper:v57];
        if (v60)
        {
          v61 = v60;
          v62 = sub_22F740E20();
          v64 = v63;
        }

        else
        {
          v62 = 0;
          v64 = 0;
        }

        v67 = [v55 beautifiedLocationNodeStringWithPlaceNode:*&v59[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:{v57, v136}];
        if (!v67)
        {
          if (v64)
          {
            goto LABEL_73;
          }

          v71 = 0;
LABEL_76:

          if (v71)
          {
            goto LABEL_51;
          }

LABEL_57:
          if (!v155)
          {
            goto LABEL_168;
          }

          goto LABEL_58;
        }

        v68 = v67;
        v69 = sub_22F740E20();
        v71 = v70;

        if (!v64)
        {
          goto LABEL_76;
        }

        if (v71)
        {
          break;
        }

LABEL_73:

        if (!v155)
        {
LABEL_168:

          __break(1u);
LABEL_169:

          __break(1u);
LABEL_170:

          __break(1u);
LABEL_171:

          __break(1u);
LABEL_172:

          __break(1u);
LABEL_173:

          __break(1u);
          return;
        }

LABEL_58:
        v65 = *v5;
        v51 = *(v5 + 8);
        *v5 = v51;
        *(v5 + 8) = v65;
        v5 -= 8;
        if (__CFADD__(v50++, 1))
        {
          goto LABEL_51;
        }
      }

      v152 = v58;
      v72 = sub_22F740F10();
      v73 = sub_22F740F10();
      if (v72 != v73)
      {
        v76 = v73;

        if (v72 >= v76)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v62 != v69 || v64 != v71)
      {
        v75 = sub_22F742040();

        if ((v75 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

LABEL_51:
      v12 = v148 + 1;
      v5 = v144 + 8;
      v50 = v142 - 1;
      if (v148 + 1 != v140)
      {
        continue;
      }

      break;
    }

    v12 = v140;
    v10 = v141;
    v11 = v138;
LABEL_81:
    if (v12 < v11)
    {
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      v10 = sub_22F3F5F98(v10);
LABEL_136:
      v128 = *(v10 + 2);
      if (v128 < 2)
      {
LABEL_144:

        return;
      }

      while (1)
      {
        v129 = *v146;
        if (!*v146)
        {
          goto LABEL_171;
        }

        v130 = *&v10[16 * v128];
        v131 = v10;
        v5 = *&v10[16 * v128 + 24];
        v132 = &v129[v130];
        v10 = &v129[*&v10[16 * v128 + 16]];
        v133 = &v129[v5];
        v134 = v155;
        sub_22F30B49C(v132, v10, v133, v154, v134);
        if (v150)
        {

          goto LABEL_132;
        }

        if (v5 < v130)
        {
          goto LABEL_160;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_22F3F5F98(v131);
        }

        if (v128 - 2 >= *(v131 + 2))
        {
          goto LABEL_161;
        }

        v135 = &v131[16 * v128];
        *v135 = v130;
        *(v135 + 1) = v5;
        sub_22F3F5F0C(v128 - 1);
        v10 = v131;
        v128 = *(v131 + 2);
        if (v128 <= 1)
        {
          goto LABEL_144;
        }
      }
    }

    v149 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F13D970(0, *(v10 + 2) + 1, 1, v10);
    }

    v78 = *(v10 + 2);
    v77 = *(v10 + 3);
    v5 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v10 = sub_22F13D970((v77 > 1), v78 + 1, 1, v10);
    }

    *(v10 + 2) = v5;
    v79 = &v10[16 * v78];
    *(v79 + 4) = v11;
    *(v79 + 5) = v149;
    v155 = *a1;
    if (!*a1)
    {
      goto LABEL_172;
    }

    if (v78)
    {
      break;
    }

LABEL_3:
    v9 = v149;
    v8 = v146[1];
    v5 = v153;
    if (v149 >= v8)
    {
      goto LABEL_134;
    }
  }

  while (1)
  {
    v80 = v5 - 1;
    if (v5 >= 4)
    {
      v85 = &v10[16 * v5 + 32];
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_149;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_150;
      }

      v92 = &v10[16 * v5];
      v94 = *v92;
      v93 = *(v92 + 1);
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_152;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_155;
      }

      if (v96 >= v88)
      {
        v114 = &v10[16 * v80 + 32];
        v116 = *v114;
        v115 = *(v114 + 1);
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_159;
        }

        if (v83 < v117)
        {
          v80 = v5 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_101;
    }

    if (v5 == 3)
    {
      v81 = *(v10 + 4);
      v82 = *(v10 + 5);
      v91 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      v84 = v91;
LABEL_101:
      if (v84)
      {
        goto LABEL_151;
      }

      v97 = &v10[16 * v5];
      v99 = *v97;
      v98 = *(v97 + 1);
      v100 = __OFSUB__(v98, v99);
      v101 = v98 - v99;
      v102 = v100;
      if (v100)
      {
        goto LABEL_154;
      }

      v103 = &v10[16 * v80 + 32];
      v105 = *v103;
      v104 = *(v103 + 1);
      v91 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v91)
      {
        goto LABEL_157;
      }

      if (__OFADD__(v101, v106))
      {
        goto LABEL_158;
      }

      if (v101 + v106 >= v83)
      {
        if (v83 < v106)
        {
          v80 = v5 - 2;
        }

        goto LABEL_122;
      }

      goto LABEL_115;
    }

    v107 = &v10[16 * v5];
    v109 = *v107;
    v108 = *(v107 + 1);
    v91 = __OFSUB__(v108, v109);
    v101 = v108 - v109;
    v102 = v91;
LABEL_115:
    if (v102)
    {
      goto LABEL_153;
    }

    v110 = &v10[16 * v80];
    v112 = *(v110 + 4);
    v111 = *(v110 + 5);
    v91 = __OFSUB__(v111, v112);
    v113 = v111 - v112;
    if (v91)
    {
      goto LABEL_156;
    }

    if (v113 < v101)
    {
      goto LABEL_3;
    }

LABEL_122:
    v118 = v80 - 1;
    if (v80 - 1 >= v5)
    {
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
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v119 = *v146;
    if (!*v146)
    {
      goto LABEL_169;
    }

    v120 = v10;
    v5 = *&v10[16 * v118 + 32];
    v121 = *&v10[16 * v80 + 32];
    v122 = *&v10[16 * v80 + 40];
    v10 = &v119[v5];
    v123 = &v119[v121];
    v124 = &v119[v122];
    v125 = v145;
    sub_22F30B49C(v10, v123, v124, v155, v125);
    if (v150)
    {
      break;
    }

    if (v122 < v5)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v120 = sub_22F3F5F98(v120);
    }

    if (v118 >= *(v120 + 2))
    {
      goto LABEL_148;
    }

    v126 = &v120[16 * v118];
    *(v126 + 4) = v5;
    *(v126 + 5) = v122;
    sub_22F3F5F0C(v80);
    v10 = v120;
    v5 = *(v120 + 2);
    if (v5 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_132:
}

void sub_22F30E770(uint64_t a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *(a1 + 8);
  v5 = a2;
  v6 = sub_22F742000();
  if (v6 < v4)
  {
    if (v4 >= -1)
    {
      v7 = v6;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TripLocationScore();
        v9 = sub_22F741200();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v50[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v50[1] = v8;
      v11 = v5;
      sub_22F30DC08(v50, v51, a1, v7, v11);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
    goto LABEL_46;
  }

  if (v4 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:

    __break(1u);
    return;
  }

  if (!v4)
  {

    return;
  }

  *(swift_allocObject() + 16) = v5;
  if (v4 == 1)
  {
    v10 = v5;

    goto LABEL_44;
  }

  v12 = *a1;
  v48 = OBJC_IVAR___PGTripFeatureProcessor_locationHelper;
  v41 = v5;
  v13 = -1;
  v14 = 1;
  v49 = v12;
  v47 = v5;
  v42 = v4;
  while (2)
  {
    v44 = v14;
    v45 = v13;
    v15 = v49[v14];
    v43 = v12;
    while (1)
    {
      v16 = *v12;
      v17 = *&v15[OBJC_IVAR___PGTripLocationScore__score];
      v18 = *(*v12 + OBJC_IVAR___PGTripLocationScore__score);
      if (v17 != v18)
      {
        if (v18 >= v17)
        {
          goto LABEL_14;
        }

        goto LABEL_39;
      }

      v19 = objc_opt_self();
      v20 = *&v15[OBJC_IVAR___PGTripLocationScore_locationNode];
      v21 = *&v5[v48];
      v22 = v15;
      v23 = v16;
      v24 = [v19 beautifiedLocationNodeStringWithPlaceNode:v20 locationHelper:{v21, v41}];
      if (v24)
      {
        v25 = v24;
        v26 = sub_22F740E20();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v19 beautifiedLocationNodeStringWithPlaceNode:*&v23[OBJC_IVAR___PGTripLocationScore_locationNode] locationHelper:v21];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_33;
        }

        v33 = 0;
LABEL_36:

        v5 = v47;
        if (v33)
        {
          goto LABEL_14;
        }

LABEL_39:
        if (!v49)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      v30 = v29;
      v31 = sub_22F740E20();
      v33 = v32;

      if (!v28)
      {
        goto LABEL_36;
      }

      if (v33)
      {
        break;
      }

LABEL_33:

      v5 = v47;
      if (!v49)
      {
        goto LABEL_47;
      }

LABEL_40:
      v39 = *v12;
      v15 = v12[1];
      *v12 = v15;
      v12[1] = v39;
      --v12;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_14;
      }
    }

    v46 = v22;
    v34 = sub_22F740F10();
    v35 = sub_22F740F10();
    if (v34 != v35)
    {
      v38 = v35;

      v5 = v47;
      if (v34 >= v38)
      {
        goto LABEL_14;
      }

      goto LABEL_39;
    }

    if (v26 != v31 || v28 != v33)
    {
      v37 = sub_22F742040();

      v5 = v47;
      if ((v37 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_39;
    }

    v5 = v47;
LABEL_14:
    v14 = v44 + 1;
    v12 = v43 + 1;
    v13 = v45 - 1;
    if (v44 + 1 != v42)
    {
      continue;
    }

    break;
  }

LABEL_44:
}

uint64_t sub_22F30EB94(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = *a1;
  v5 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22F3F6724(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v10[0] = v4 + 32;
  v10[1] = v7;
  v8 = v5;
  sub_22F30E770(v10, v8);

  sub_22F741BB0();
}

uint64_t sub_22F30EC60()
{
  v0 = sub_22F741E30();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_22F30ED14()
{
  result = sub_22F73F090();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22F30F024()
{
  result = sub_22F73F690();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph22TripLocationScoreErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_22F30F160(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_22F30F1A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F30F1F0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_22F30F220()
{
  result = qword_27DAB35B0;
  if (!qword_27DAB35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35B0);
  }

  return result;
}

unint64_t sub_22F30F274()
{
  result = qword_27DAB35B8;
  if (!qword_27DAB35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35B8);
  }

  return result;
}

uint64_t sub_22F30F2F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t *a2, uint64_t a3)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v65 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v66 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v59 = isUniquelyReferenced_nonNull_bridgeObject;
    v63 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x277D84F90];
    v60 = v3;
    while (1)
    {
      if (v66)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v4, v59);
      }

      else
      {
        if (v4 >= *(v65 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v63 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR___PGTripLocationScore_momentNodes);
      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        if (v8 < 0)
        {
          v28 = *(isUniquelyReferenced_nonNull_bridgeObject + OBJC_IVAR___PGTripLocationScore_momentNodes);
        }

        v10 = sub_22F741A00();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_43:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = v10;
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_22F741A00();
          goto LABEL_22;
        }

        v13 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v13 + 16);
LABEL_22:
      v14 = v10;
      isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v9)
      {
        v19 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v13 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v14)
          {
            goto LABEL_47;
          }

          v20 = v14;
          v21 = v13 + 8 * v16 + 32;
          v67 = v13;
          if (v9)
          {
            if (v18 < 1)
            {
              goto LABEL_49;
            }

            v61 = v14;
            v69 = v5;
            sub_22F30F98C();
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB35E0, &qword_22F784750);
              v23 = sub_22F14E004(v72, i, v8);
              v25 = *v24;
              (v23)(v72, 0);
              *(v21 + 8 * i) = v25;
            }

            v5 = v69;
            v3 = v60;
            v20 = v61;
          }

          else
          {
            sub_22F120634(0, &qword_2810A90E0, off_27887B100);
            swift_arrayInitWithCopy();
          }

          if (v20 > 0)
          {
            v26 = *(v67 + 16);
            v7 = __OFADD__(v26, v20);
            v27 = v26 + v20;
            if (v7)
            {
              goto LABEL_48;
            }

            *(v67 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      if (v14 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      if (v4 == v3)
      {
        goto LABEL_52;
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
LABEL_50:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_22F741A00();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_52:
  v70 = v5;
  if (v5 >> 62)
  {
LABEL_89:
    v30 = sub_22F741A00();
    if (v30)
    {
      goto LABEL_54;
    }
  }

  v30 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
  }

LABEL_54:
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v31 = 0;
  v32 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v33 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  v64 = OBJC_IVAR___PGTripFeatureProcessor_scorePerMoment;
  v62 = OBJC_IVAR___PGTripFeatureProcessor_totalScoreAvailable;
  while (1)
  {
    if ((v70 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x2319016F0](v31, v70);
    }

    else
    {
      if (v31 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v34 = *(v70 + 32 + 8 * v31);
    }

    v35 = v34;
    v7 = __OFADD__(v31++, 1);
    if (v7)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v36 = *a2;
    if ((*a2 & 0xC000000000000001) != 0)
    {
      if (v36 < 0)
      {
        v37 = *a2;
      }

      v38 = *a2;

      v39 = v35;
      v40 = sub_22F741A50();

      if (v40)
      {

        goto LABEL_57;
      }
    }

    else if (*(v36 + 16))
    {
      v41 = *(v36 + 40);
      v42 = *a2;

      v43 = sub_22F741800();
      v44 = -1 << *(v36 + 32);
      v45 = v43 & ~v44;
      if ((*(v36 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = *(*(v36 + 48) + 8 * v45);
          v48 = sub_22F741810();

          if (v48)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v36 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        v33 = v62;
        v32 = v64;
        goto LABEL_57;
      }

LABEL_73:

      v33 = v62;
      v32 = v64;
    }

    v49 = *(a3 + v32);
    v50 = 0.0;
    if (v49)
    {
      break;
    }

LABEL_56:
    *(a3 + v33) = v50 + *(a3 + v33);
    sub_22F10EEDC(v72, v35);

LABEL_57:
    if (v31 == v30)
    {
    }
  }

  if ((v49 & 0xC000000000000001) != 0)
  {
    if (v49 < 0)
    {
      v51 = *(a3 + v32);
    }

    v52 = v35;

    v53 = sub_22F741D00();

    if (v53)
    {
      type metadata accessor for MomentRelevanceData(0);
      swift_dynamicCast();
      v54 = v72[0];
      goto LABEL_83;
    }

LABEL_55:

    goto LABEL_56;
  }

  if (!*(v49 + 16))
  {
    goto LABEL_56;
  }

  v55 = *(a3 + v32);

  v56 = sub_22F1234BC(v35);
  if ((v57 & 1) == 0)
  {
    goto LABEL_55;
  }

  v54 = *(*(v49 + 56) + 8 * v56);

LABEL_83:

  if (!v54)
  {
    goto LABEL_56;
  }

  if ((v54[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore + 8] & 1) == 0)
  {
    v50 = *&v54[OBJC_IVAR____TtC11PhotosGraph19MomentRelevanceData__finalScore];

    goto LABEL_56;
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

unint64_t sub_22F30F98C()
{
  result = qword_27DAB35E8;
  if (!qword_27DAB35E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB35E0, &qword_22F784750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB35E8);
  }

  return result;
}

uint64_t EntityTaggingServiceClient.init(supportedTagsAsStrings:log:)(uint64_t a1, void *a2)
{
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3600, &qword_22F784770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v58 - v6;
  v8 = sub_22F7409A0();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F7409C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(sub_22F740A10());
  v18 = sub_22F740A00();
  if (v2)
  {

    v19 = v69;
    type metadata accessor for EntityTaggingServiceClient();
    v22 = *((*MEMORY[0x277D85000] & *v19) + 0x30);
    v23 = *((*MEMORY[0x277D85000] & *v19) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v61 = v11;
    v62 = v13;
    v63 = v7;
    v64 = a1;
    v65 = v8;
    v20 = v69;
    *(v69 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_etService) = v18;
    sub_22F740950();
    v21 = sub_22F740940();
    sub_22F740930();

    (*(v62 + 32))(v20 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_personView, v16, v12);
    v25 = v67;
    *(v20 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_log) = v67;
    v26 = v64;
    v27 = v64 + 56;
    v28 = 1 << *(v64 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v64 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = (v66 + 48);
    v62 = v66 + 32;
    v67 = v25;

    v33 = 0;
    v34 = v63;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      v36 = v33;
      if (!v30)
      {
        break;
      }

LABEL_12:
      v37 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v38 = (*(v26 + 48) + ((v33 << 10) | (16 * v37)));
      v39 = *v38;
      v40 = v38[1];
      sub_22F740EA0();
      sub_22F740980();
      if ((*v32)(v34, 1, v65) == 1)
      {
        result = sub_22F120ADC(v34, &qword_27DAB3600, &qword_22F784770);
      }

      else
      {
        v60 = *v62;
        v60(v61, v34, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_22F13FAD8(0, v35[2] + 1, 1, v35);
        }

        v41 = v66;
        v43 = v35[2];
        v42 = v35[3];
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          v59 = v43 + 1;
          v45 = sub_22F13FAD8(v42 > 1, v43 + 1, 1, v35);
          v44 = v59;
          v41 = v66;
          v35 = v45;
        }

        v35[2] = v44;
        result = (v60)(v35 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v43, v61, v65);
        v26 = v64;
      }
    }

    while (1)
    {
      v33 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        return result;
      }

      if (v33 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v33);
      ++v36;
      if (v30)
      {
        goto LABEL_12;
      }
    }

    v46 = sub_22F152924(v35);

    v47 = v69;
    *(v69 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest) = v46;
    v48 = type metadata accessor for EntityTaggingServiceClient();
    v68.receiver = v47;
    v68.super_class = v48;
    v17 = objc_msgSendSuper2(&v68, sel_init);
    v49 = sub_22F7415C0();
    v50 = *&v17[OBJC_IVAR___PGGraphEntityTaggingServiceClient_log];
    if (os_log_type_enabled(v50, v49))
    {

      v51 = v26;
      v52 = v17;
      v53 = v50;
      v54 = swift_slowAlloc();
      *v54 = 134218240;
      v55 = *(v51 + 16);

      *(v54 + 4) = v55;

      *(v54 + 12) = 2048;
      v56 = *(*&v52[OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest] + 16);

      *(v54 + 14) = v56;
      _os_log_impl(&dword_22F0FC000, v53, v49, "Supported graph tags: %ld, found matching IP tags: %ld", v54, 0x16u);
      MEMORY[0x2319033A0](v54, -1, -1);

      v57 = v67;
    }

    else
    {

      v57 = v17;
    }
  }

  return v17;
}

uint64_t type metadata accessor for EntityTaggingServiceClient()
{
  result = qword_2810AA1D0;
  if (!qword_2810AA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F310134(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22F7409A0();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3610, &unk_22F784780) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_22F740970();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F310298, 0, 0);
}

uint64_t sub_22F310298()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[4];
  v4 = v0[6] + OBJC_IVAR___PGGraphEntityTaggingServiceClient_personView;
  sub_22F7409B0();
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[6];
    sub_22F120ADC(v7, &qword_27DAB3610, &unk_22F784780);
    v9 = sub_22F7415C0();
    v10 = *(v8 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_log);
    if (os_log_type_enabled(v10, v9))
    {
      v12 = v0[4];
      v11 = v0[5];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_22F145F20(v12, v11, &v30);
      _os_log_impl(&dword_22F0FC000, v10, v9, "No entity identifier for person uuid %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2319033A0](v14, -1, -1);
      MEMORY[0x2319033A0](v13, -1, -1);
    }

    v15 = sub_22F14E214(MEMORY[0x277D84F90]);
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];
    v19 = v0[9];

    v20 = v0[1];

    return v20(v15);
  }

  else
  {
    v22 = v0[6];
    (*(v6 + 32))(v0[14], v7, v5);
    v23 = *(v22 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_etService);
    v24 = sub_22F740960();
    v26 = v25;
    v0[15] = v25;
    v27 = *(MEMORY[0x277D1F3D0] + 4);
    v29 = (*MEMORY[0x277D1F3D0] + MEMORY[0x277D1F3D0]);
    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_22F3105B0;

    return v29(v24, v26, 0);
  }
}

uint64_t sub_22F3105B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 120);
  v8 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v6 = sub_22F310C18;
  }

  else
  {
    v6 = sub_22F3106E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22F3106E4()
{
  v63 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  v3 = sub_22F7409F0();
  v4 = sub_22F7415C0();
  v5 = *(v2 + OBJC_IVAR___PGGraphEntityTaggingServiceClient_log);
  v6 = v3 >> 62;
  v56 = v3;
  if (os_log_type_enabled(v5, v4))
  {

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v62 = v8;
    *v7 = 134218242;
    if (v6)
    {
      v9 = sub_22F741A00();
    }

    else
    {
      v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    *(v7 + 4) = v9;

    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_22F145F20(v11, v10, &v62);
    _os_log_impl(&dword_22F0FC000, v5, v4, "%ld entity tags found for person %s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2319033A0](v8, -1, -1);
    MEMORY[0x2319033A0](v7, -1, -1);
  }

  if (v6)
  {
    goto LABEL_29;
  }

  v12 = v3;
  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v14 = 0;
    v15 = *(*(v0 + 48) + OBJC_IVAR___PGGraphEntityTaggingServiceClient_entityTagsToIngest);
    v58 = v12 & 0xC000000000000001;
    v52 = v12 + 32;
    v53 = v12 & 0xFFFFFFFFFFFFFF8;
    v60 = v15 + 56;
    v54 = *(v0 + 64);
    v16 = (v54 + 8);
    v51 = MEMORY[0x277D84F98];
    v55 = i;
    v61 = v15;
    while (1)
    {
      if (v58)
      {
        v17 = MEMORY[0x2319016F0](v14, v12);
      }

      else
      {
        if (v14 >= *(v53 + 16))
        {
          goto LABEL_28;
        }

        v17 = *(v52 + 8 * v14);
      }

      v18 = v17;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v20 = *(v0 + 80);
      sub_22F7409D0();
      v21 = *(v0 + 56);
      if (*(v15 + 16))
      {
        v59 = v18;
        v22 = *(v15 + 40);
        sub_22F31123C(&qword_2810A94A0);
        v23 = sub_22F740D40();
        v24 = -1 << *(v15 + 32);
        v25 = v23 & ~v24;
        if ((*(v60 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v57 = v14;
          v26 = ~v24;
          v27 = *(v54 + 72);
          v28 = *(v54 + 16);
          while (1)
          {
            v29 = *(v0 + 72);
            v30 = *(v0 + 56);
            v28(v29, *(v61 + 48) + v25 * v27, v30);
            sub_22F31123C(&unk_2810A9490);
            v31 = sub_22F740DE0();
            v32 = *v16;
            (*v16)(v29, v30);
            if (v31)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v60 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              v12 = v56;
              v14 = v57;
              i = v55;
              goto LABEL_22;
            }
          }

          v32(*(v0 + 80), *(v0 + 56));
          sub_22F7409E0();
          if (v33 <= 0.0)
          {
          }

          else
          {
            v34 = *(v0 + 72);
            v35 = *(v0 + 56);
            sub_22F7409D0();
            v36 = sub_22F740990();
            v38 = v37;
            v32(v34, v35);
            *(v0 + 16) = v36;
            *(v0 + 24) = v38;
            sub_22F160DE4();
            v39 = sub_22F7418C0();
            v41 = v40;

            sub_22F7409E0();
            v43 = v42;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = v51;
            sub_22F12FF10(v39, v41, isUniquelyReferenced_nonNull_native, v43);

            v51 = v62;
          }

          v12 = v56;
          v14 = v57;
          i = v55;
          v15 = v61;
        }

        else
        {
          v32 = *v16;
LABEL_22:
          v32(*(v0 + 80), *(v0 + 56));

          v15 = v61;
        }
      }

      else
      {
        (*v16)(*(v0 + 80), *(v0 + 56));
      }

      if (v14 == i)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v12 = v56;
  }

  v51 = MEMORY[0x277D84F98];
LABEL_31:

  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v45 = *(v0 + 112);
  v46 = *(v0 + 80);
  v47 = *(v0 + 88);
  v48 = *(v0 + 72);

  v49 = *(v0 + 8);

  return v49(v51);
}

uint64_t sub_22F310C18()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[18];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22F310E44(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_22F740E20();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_22F310F18;

  return sub_22F310134(v5, v7);
}

uint64_t sub_22F310F18()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v2)
  {
    v8 = sub_22F73F360();

    v9 = v8;
    v10 = 0;
  }

  else
  {
    v11 = sub_22F740C80();

    v10 = v11;
    v9 = 0;
    v8 = v11;
  }

  v12 = *(v3 + 24);
  (v12)[2](v12, v10, v9);

  _Block_release(v12);
  v13 = *(v7 + 8);

  return v13();
}

id EntityTaggingServiceClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntityTaggingServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityTaggingServiceClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F31123C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22F7409A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F311288()
{
  result = sub_22F7409C0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of EntityTaggingServiceClient.entityTagsForPerson(personLocalIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F3114B0;

  return v10(a1, a2);
}

uint64_t sub_22F3114B0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22F3115AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_22F12094C;

  return sub_22F310E44(v2, v3, v4);
}

void static MusicCuratorConfiguration.defaultConfiguration()(void *a1@<X8>)
{
  v36 = a1;
  v1 = sub_22F73F470();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_22F73EF30();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22F73EF20();
  v41 = [objc_allocWithZone(PGRemoteConfiguration) initWithTrialNamespace:4 onDiskResourceFile:0];
  type metadata accessor for MusicCurator();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v17 = sub_22F740DF0();
  v18 = sub_22F740DF0();
  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_22F73F430();

    (*(v39 + 32))(v11, v9, v38);
    v20 = sub_22F740DF0();
    v21 = sub_22F73F3F0();
    v22 = [v41 fileValueForKey:v20 withFallbackValue:v21];

    sub_22F73F430();
    v23 = v37;
    v24 = sub_22F73F480();
    if (v23)
    {

      v26 = *(v39 + 8);
      v27 = v6;
      v28 = v38;
      v26(v27, v38);
      v26(v11, v28);
    }

    else
    {
      v29 = v24;
      v30 = v25;
      v35 = v6;
      v37 = v11;
      v31 = v41;
      sub_22F311ABC();
      sub_22F73EF10();
      v32 = (v39 + 8);
      sub_22F133BF0(v29, v30);

      v33 = *v32;
      v34 = v38;
      (*v32)(v35, v38);
      v33(v37, v34);
      memcpy(v36, v40, 0x16CuLL);
    }
  }

  else
  {
    sub_22F311A68();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F311A68()
{
  result = qword_27DAB3618;
  if (!qword_27DAB3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3618);
  }

  return result;
}

unint64_t sub_22F311ABC()
{
  result = qword_2810AA238;
  if (!qword_2810AA238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA238);
  }

  return result;
}

unint64_t sub_22F311B58(unsigned __int8 a1)
{
  v1 = 0xD000000000000023;
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000002CLL;
    if (a1 != 2)
    {
      v5 = 0xD00000000000003CLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000033;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v3 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001BLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 != 4)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F311C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F315E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F311C88(uint64_t a1)
{
  v2 = sub_22F311FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F311CC4(uint64_t a1)
{
  v2 = sub_22F311FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.DisplayConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3620, &qword_22F784830);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F311FA4();
  sub_22F742200();
  if (!v2)
  {
    v34 = 0;
    v11 = sub_22F741EF0();
    v33 = 1;
    v12 = sub_22F741EF0();
    v32 = 2;
    v13 = sub_22F741EF0();
    v31 = 3;
    v25 = sub_22F741EF0();
    v30 = 4;
    v24 = sub_22F741EC0();
    v29 = 5;
    v23 = sub_22F741EF0();
    v28 = 6;
    v22 = sub_22F741EF0();
    v27 = 7;
    v21 = sub_22F741EF0();
    v26 = 8;
    v20 = sub_22F741EF0();
    (*(v6 + 8))(v9, v5);
    v15 = v24 & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    v16 = v25;
    *(a2 + 16) = v13;
    *(a2 + 24) = v16;
    *(a2 + 32) = v15;
    v17 = v22;
    *(a2 + 40) = v23;
    *(a2 + 48) = v17;
    v18 = v20;
    *(a2 + 56) = v21;
    *(a2 + 64) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F311FA4()
{
  result = qword_2810AA370;
  if (!qword_2810AA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA370);
  }

  return result;
}

unint64_t sub_22F312020()
{
  if (*v0)
  {
    result = 0xD000000000000020;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t sub_22F312058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000022F79A730 == a2 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022F79A750 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

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

uint64_t sub_22F31213C(uint64_t a1)
{
  v2 = sub_22F312354();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312178(uint64_t a1)
{
  v2 = sub_22F312354();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.PrefetchConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3628, &qword_22F784838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F312354();
  sub_22F742200();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_22F741EF0();
    v15 = 1;
    v12 = sub_22F741EF0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F312354()
{
  result = qword_2810AA350;
  if (!qword_2810AA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA350);
  }

  return result;
}

uint64_t sub_22F3123C0(uint64_t a1)
{
  v2 = sub_22F31247C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3123FC(uint64_t a1)
{
  v2 = sub_22F31247C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F31247C()
{
  result = qword_2810AA2D0;
  if (!qword_2810AA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2D0);
  }

  return result;
}

uint64_t sub_22F312540(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6965576369706F74;
    v6 = 0x6557656C61636F6CLL;
    if (a1 != 3)
    {
      v6 = 0x65576D6F646E6172;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (!a1)
    {
      v7 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD00000000000001DLL;
    if (a1 != 9)
    {
      v2 = 0xD000000000000021;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 6)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 == 5)
    {
      v3 = 0x6E656D69746E6573;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F3126E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F316170(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F312708(uint64_t a1)
{
  v2 = sub_22F312A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312744(uint64_t a1)
{
  v2 = sub_22F312A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.MusicForTopicConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3638, &qword_22F784848);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F312A8C();
  sub_22F742200();
  if (!v2)
  {
    v45 = 0;
    sub_22F741EE0();
    v12 = v11;
    v44 = 1;
    sub_22F741EE0();
    v14 = v13;
    v43 = 2;
    sub_22F741EE0();
    v16 = v15;
    v42 = 3;
    sub_22F741EE0();
    v18 = v17;
    v41 = 4;
    sub_22F741EE0();
    v20 = v19;
    v40 = 5;
    sub_22F741EE0();
    v22 = v21;
    v39 = 6;
    sub_22F741EE0();
    v24 = v23;
    v38 = 7;
    sub_22F741EE0();
    v34 = v26;
    v37 = 8;
    sub_22F741EE0();
    v28 = v27;
    v36 = 9;
    sub_22F741EE0();
    HIDWORD(v33) = v29;
    v35 = 10;
    v30 = sub_22F741EF0();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 4) = v14;
    *(a2 + 8) = v16;
    *(a2 + 12) = v18;
    *(a2 + 16) = v20;
    *(a2 + 20) = v22;
    v31 = HIDWORD(v33);
    v32 = v34;
    *(a2 + 24) = v24;
    *(a2 + 28) = v32;
    *(a2 + 32) = v28;
    *(a2 + 36) = v31;
    *(a2 + 40) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F312A8C()
{
  result = qword_2810AA270;
  if (!qword_2810AA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA270);
  }

  return result;
}

uint64_t sub_22F312AF8(uint64_t a1)
{
  v2 = sub_22F312BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312B34(uint64_t a1)
{
  v2 = sub_22F312BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312BB4()
{
  result = qword_2810AA2B0;
  if (!qword_2810AA2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2B0);
  }

  return result;
}

uint64_t sub_22F312C20(uint64_t a1)
{
  v2 = sub_22F312CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312C5C(uint64_t a1)
{
  v2 = sub_22F312CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312CDC()
{
  result = qword_2810AA310;
  if (!qword_2810AA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA310);
  }

  return result;
}

uint64_t sub_22F312D48(uint64_t a1)
{
  v2 = sub_22F312E04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312D84(uint64_t a1)
{
  v2 = sub_22F312E04();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312E04()
{
  result = qword_2810AA2F0;
  if (!qword_2810AA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2F0);
  }

  return result;
}

uint64_t sub_22F312EB0(uint64_t a1)
{
  v2 = sub_22F312F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F312EEC(uint64_t a1)
{
  v2 = sub_22F312F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22F312F6C()
{
  result = qword_2810AA330;
  if (!qword_2810AA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA330);
  }

  return result;
}

unint64_t sub_22F312FD8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 != 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0x65576D6F646E6172;
    if (v1 != 4)
    {
      v6 = 0x6E656D69746E6573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6965576369706F74;
    if (v1 != 2)
    {
      v2 = 0x6557656C61636F6CLL;
    }

    v3 = 0xD000000000000018;
    if (!*v0)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F313108(uint64_t a1)
{
  v2 = sub_22F31345C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F313144(uint64_t a1)
{
  v2 = sub_22F31345C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F3131C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, _DWORD *a5@<X8>)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v33 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v12 = &v33 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  a4();
  sub_22F742200();
  if (!v5)
  {
    v42 = 0;
    v15 = v33;
    sub_22F741EE0();
    v17 = v16;
    v41 = 1;
    sub_22F741EE0();
    v19 = v18;
    v40 = 2;
    sub_22F741EE0();
    v21 = v20;
    v39 = 3;
    sub_22F741EE0();
    v23 = v22;
    v38 = 4;
    sub_22F741EE0();
    v25 = v24;
    v37 = 5;
    sub_22F741EE0();
    v27 = v26;
    v36 = 6;
    sub_22F741EE0();
    v30 = v29;
    v35 = 7;
    sub_22F741EE0();
    v32 = v31;
    (*(v9 + 8))(v12, v15);
    *a5 = v17;
    a5[1] = v19;
    a5[2] = v21;
    a5[3] = v23;
    a5[4] = v25;
    a5[5] = v27;
    a5[6] = v30;
    a5[7] = v32;
  }

  return __swift_destroy_boxed_opaque_existential_0(v34);
}

unint64_t sub_22F31345C()
{
  result = qword_2810AA290;
  if (!qword_2810AA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA290);
  }

  return result;
}

unint64_t sub_22F3134F8()
{
  v1 = *v0;
  v2 = 0x6E61526369706F74;
  v3 = 0x6E656D69746E6573;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6152656C61636F6CLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22F3135D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F316798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F313600(uint64_t a1)
{
  v2 = sub_22F3138B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F31363C(uint64_t a1)
{
  v2 = sub_22F3138B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.DefaultScoresForRankersConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3668, &qword_22F784878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3138B8();
  sub_22F742200();
  if (!v2)
  {
    v30 = 0;
    sub_22F741EE0();
    v12 = v11;
    v29 = 1;
    sub_22F741EE0();
    v14 = v13;
    v28 = 2;
    sub_22F741EE0();
    v16 = v15;
    v27 = 3;
    sub_22F741EE0();
    v18 = v17;
    v26 = 4;
    sub_22F741EE0();
    v21 = v20;
    v25 = 5;
    sub_22F741EE0();
    v23 = v22;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v21;
    a2[5] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F3138B8()
{
  result = qword_2810AA3B0;
  if (!qword_2810AA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3B0);
  }

  return result;
}

unint64_t sub_22F31393C()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_22F313994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F3169AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F3139BC(uint64_t a1)
{
  v2 = sub_22F313C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3139F8(uint64_t a1)
{
  v2 = sub_22F313C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3670, &qword_22F784880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F313C0C();
  sub_22F742200();
  if (!v2)
  {
    v18[15] = 0;
    sub_22F741EE0();
    v12 = v11;
    v18[14] = 1;
    sub_22F741EE0();
    v15 = v14;
    v18[13] = 2;
    sub_22F741EE0();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F313C0C()
{
  result = qword_2810AA390;
  if (!qword_2810AA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA390);
  }

  return result;
}

__n128 MusicCuratorConfiguration.displayConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 MusicCuratorConfiguration.prefetchConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 72);
  *a1 = result;
  return result;
}

__n128 MusicCuratorConfiguration.musicForPerformer.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForTopic.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  result = *(v1 + 152);
  *(a1 + 32) = result;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouFavorites.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 168);
  v3 = *(v1 + 184);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouChill.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 200);
  v3 = *(v1 + 216);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForYouGetUp.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 232);
  v3 = *(v1 + 248);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForLocation.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 264);
  v3 = *(v1 + 280);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MusicCuratorConfiguration.musicForTime.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 296);
  v3 = *(v1 + 312);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

double MusicCuratorConfiguration.defaultScores.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 328);
  result = *(v1 + 344);
  *(a1 + 16) = result;
  return result;
}

float MusicCuratorConfiguration.scoreThresholds.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 360);
  *a1 = *(v1 + 352);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F313D44(unsigned __int8 a1)
{
  v1 = 0x726F46636973756DLL;
  if (a1 <= 4u)
  {
    if (a1 != 3)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000011;
    }

    v4 = 0xD000000000000015;
    if (!a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v2 = 0x53746C7561666564;
    if (a1 != 9)
    {
      v2 = 0x72685465726F6373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    if (a1 <= 7u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F313ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F316AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F313F00(uint64_t a1)
{
  v2 = sub_22F3144CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F313F3C(uint64_t a1)
{
  v2 = sub_22F3144CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCuratorConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3678, &qword_22F784888);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v8 = &v30 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F3144CC();
  sub_22F742200();
  if (!v2)
  {
    v33 = a2;
    v61 = 0;
    sub_22F314520();
    sub_22F741F10();
    v84 = v64;
    v85 = v65;
    v86 = v66;
    v82 = v62;
    v83 = v63;
    LOBYTE(v59) = 1;
    sub_22F314574();
    sub_22F741F10();
    v10 = v55;
    v58 = 2;
    sub_22F3145C8();
    sub_22F741F10();
    v31 = *(&v10 + 1);
    v32 = v10;
    v80 = v59;
    v81 = v60;
    v54 = 3;
    sub_22F31461C();
    sub_22F741F10();
    v77 = v55;
    v78 = v56;
    v79 = v57;
    v51 = 4;
    sub_22F314670();
    sub_22F741F10();
    v75 = v52;
    v76 = v53;
    v48 = 5;
    sub_22F3146C4();
    sub_22F741F10();
    v73 = v49;
    v74 = v50;
    v45 = 6;
    sub_22F314718();
    sub_22F741F10();
    v71 = v46;
    v72 = v47;
    v42 = 7;
    sub_22F31476C();
    sub_22F741F10();
    v69 = v43;
    v70 = v44;
    v39 = 8;
    sub_22F3147C0();
    sub_22F741F10();
    v67 = v40;
    v68 = v41;
    v35 = 9;
    sub_22F314814();
    sub_22F741F10();
    v12 = v36;
    v13 = v37;
    v14 = v38;
    v35 = 10;
    sub_22F314868();
    sub_22F741F10();
    (*(v5 + 8))(v8, v34);
    v15 = v37;
    v16 = v83;
    v17 = v85;
    v18 = v33;
    *(v33 + 32) = v84;
    *(v18 + 48) = v17;
    v19 = v86;
    v20 = v81;
    *v18 = v82;
    *(v18 + 16) = v16;
    v21 = v32;
    *(v18 + 64) = v19;
    *(v18 + 72) = v21;
    *(v18 + 80) = v31;
    v22 = v79;
    *(v18 + 88) = v80;
    *(v18 + 104) = v20;
    v23 = v77;
    v24 = v78;
    *(v18 + 152) = v22;
    *(v18 + 136) = v24;
    *(v18 + 120) = v23;
    v25 = v75;
    *(v18 + 184) = v76;
    *(v18 + 168) = v25;
    v26 = v73;
    *(v18 + 216) = v74;
    *(v18 + 200) = v26;
    v27 = v71;
    *(v18 + 248) = v72;
    *(v18 + 232) = v27;
    v28 = v70;
    *(v18 + 264) = v69;
    *(v18 + 280) = v28;
    v29 = v68;
    *(v18 + 296) = v67;
    *(v18 + 312) = v29;
    *(v18 + 328) = v12;
    *(v18 + 336) = v13;
    *&v28 = v36;
    *(v18 + 344) = v14;
    *(v18 + 352) = v28;
    *(v18 + 360) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F3144CC()
{
  result = qword_2810AA250;
  if (!qword_2810AA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA250);
  }

  return result;
}

unint64_t sub_22F314520()
{
  result = qword_2810AA358;
  if (!qword_2810AA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA358);
  }

  return result;
}

unint64_t sub_22F314574()
{
  result = qword_2810AA338;
  if (!qword_2810AA338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA338);
  }

  return result;
}

unint64_t sub_22F3145C8()
{
  result = qword_2810AA2B8;
  if (!qword_2810AA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2B8);
  }

  return result;
}

unint64_t sub_22F31461C()
{
  result = qword_2810AA258;
  if (!qword_2810AA258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA258);
  }

  return result;
}

unint64_t sub_22F314670()
{
  result = qword_2810AA298;
  if (!qword_2810AA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA298);
  }

  return result;
}

unint64_t sub_22F3146C4()
{
  result = qword_2810AA2F8;
  if (!qword_2810AA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2F8);
  }

  return result;
}

unint64_t sub_22F314718()
{
  result = qword_2810AA2D8;
  if (!qword_2810AA2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2D8);
  }

  return result;
}

unint64_t sub_22F31476C()
{
  result = qword_2810AA318;
  if (!qword_2810AA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA318);
  }

  return result;
}

unint64_t sub_22F3147C0()
{
  result = qword_2810AA278;
  if (!qword_2810AA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA278);
  }

  return result;
}

unint64_t sub_22F314814()
{
  result = qword_2810AA398;
  if (!qword_2810AA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA398);
  }

  return result;
}

unint64_t sub_22F314868()
{
  result = qword_2810AA378;
  if (!qword_2810AA378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA378);
  }

  return result;
}

id sub_22F314958(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  a3(__src);
  v3 = type metadata accessor for MusicCuratorConfigurationWrapper();
  v4 = objc_allocWithZone(v3);
  memcpy(&v4[OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration], __src, 0x16CuLL);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

id sub_22F314A0C(void (*a1)(void *__return_ptr))
{
  a1(__src);
  v1 = type metadata accessor for MusicCuratorConfigurationWrapper();
  v2 = objc_allocWithZone(v1);
  memcpy(&v2[OBJC_IVAR___PGMusicCuratorConfigurationWrapper_configuration], __src, 0x16CuLL);
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

void static MusicCuratorConfiguration.memoryCreationConfiguration()(uint64_t a1@<X8>)
{
  static MusicCuratorConfiguration.defaultConfiguration()(v15);
  if (!v1)
  {
    v14 = v30;
    v12 = v17;
    v13 = v31;
    v3 = v32;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v4 = sub_22F740B90();
    __swift_project_value_buffer(v4, qword_2810B4D90);
    v5 = sub_22F740B70();
    v6 = sub_22F7415C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22F0FC000, v5, v6, "[MemoriesMusic] Using memoryCreationMusicForTopicConfiguration", v7, 2u);
      MEMORY[0x2319033A0](v7, -1, -1);
    }

    v8 = v15[3];
    *(a1 + 32) = v15[2];
    *(a1 + 48) = v8;
    *(a1 + 64) = v16;
    v9 = v15[1];
    *a1 = v15[0];
    *(a1 + 16) = v9;
    *(a1 + 72) = v12;
    *(a1 + 88) = v18;
    *(a1 + 104) = v19;
    *(a1 + 120) = xmmword_22F7847E0;
    *(a1 + 136) = xmmword_22F7847F0;
    *(a1 + 152) = 0x412000004E6E6B28;
    *(a1 + 160) = 1000;
    *(a1 + 184) = v21;
    *(a1 + 168) = v20;
    *(a1 + 216) = v23;
    *(a1 + 200) = v22;
    *(a1 + 248) = v25;
    *(a1 + 232) = v24;
    v10 = v27;
    *(a1 + 264) = v26;
    *(a1 + 280) = v10;
    v11 = v29;
    *(a1 + 296) = v28;
    *(a1 + 312) = v11;
    *(a1 + 328) = v14;
    *(a1 + 344) = v13;
    *(a1 + 360) = v3;
  }
}

id MusicCuratorConfigurationWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCuratorConfigurationWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCuratorConfigurationWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F314DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 364))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F314E04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 364) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 364) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F314EB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 72))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22F314F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MusicCuratorConfiguration.ScoreThresholdsForRankersConfiguration(uint64_t result, int a2, int a3)
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

unint64_t sub_22F3151E4()
{
  result = qword_27DAB3688;
  if (!qword_27DAB3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3688);
  }

  return result;
}

unint64_t sub_22F31523C()
{
  result = qword_27DAB3690;
  if (!qword_27DAB3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3690);
  }

  return result;
}

unint64_t sub_22F315294()
{
  result = qword_27DAB3698;
  if (!qword_27DAB3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3698);
  }

  return result;
}

unint64_t sub_22F3152EC()
{
  result = qword_27DAB36A0;
  if (!qword_27DAB36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36A0);
  }

  return result;
}

unint64_t sub_22F315344()
{
  result = qword_27DAB36A8;
  if (!qword_27DAB36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36A8);
  }

  return result;
}

unint64_t sub_22F31539C()
{
  result = qword_27DAB36B0;
  if (!qword_27DAB36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36B0);
  }

  return result;
}

unint64_t sub_22F3153F4()
{
  result = qword_27DAB36B8;
  if (!qword_27DAB36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36B8);
  }

  return result;
}

unint64_t sub_22F31544C()
{
  result = qword_27DAB36C0;
  if (!qword_27DAB36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36C0);
  }

  return result;
}

unint64_t sub_22F3154A4()
{
  result = qword_27DAB36C8;
  if (!qword_27DAB36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36C8);
  }

  return result;
}

unint64_t sub_22F3154FC()
{
  result = qword_27DAB36D0;
  if (!qword_27DAB36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36D0);
  }

  return result;
}

unint64_t sub_22F315554()
{
  result = qword_27DAB36D8;
  if (!qword_27DAB36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36D8);
  }

  return result;
}

unint64_t sub_22F3155AC()
{
  result = qword_27DAB36E0;
  if (!qword_27DAB36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36E0);
  }

  return result;
}

unint64_t sub_22F315604()
{
  result = qword_27DAB36E8;
  if (!qword_27DAB36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB36E8);
  }

  return result;
}

unint64_t sub_22F31565C()
{
  result = qword_2810AA240;
  if (!qword_2810AA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA240);
  }

  return result;
}

unint64_t sub_22F3156B4()
{
  result = qword_2810AA248;
  if (!qword_2810AA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA248);
  }

  return result;
}

unint64_t sub_22F31570C()
{
  result = qword_2810AA380;
  if (!qword_2810AA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA380);
  }

  return result;
}

unint64_t sub_22F315764()
{
  result = qword_2810AA388;
  if (!qword_2810AA388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA388);
  }

  return result;
}

unint64_t sub_22F3157BC()
{
  result = qword_2810AA3A0;
  if (!qword_2810AA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3A0);
  }

  return result;
}

unint64_t sub_22F315814()
{
  result = qword_2810AA3A8;
  if (!qword_2810AA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA3A8);
  }

  return result;
}

unint64_t sub_22F31586C()
{
  result = qword_2810AA280;
  if (!qword_2810AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA280);
  }

  return result;
}

unint64_t sub_22F3158C4()
{
  result = qword_2810AA288;
  if (!qword_2810AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA288);
  }

  return result;
}

unint64_t sub_22F31591C()
{
  result = qword_2810AA320;
  if (!qword_2810AA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA320);
  }

  return result;
}

unint64_t sub_22F315974()
{
  result = qword_2810AA328;
  if (!qword_2810AA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA328);
  }

  return result;
}

unint64_t sub_22F3159CC()
{
  result = qword_2810AA2E0;
  if (!qword_2810AA2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2E0);
  }

  return result;
}

unint64_t sub_22F315A24()
{
  result = qword_2810AA2E8;
  if (!qword_2810AA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2E8);
  }

  return result;
}

unint64_t sub_22F315A7C()
{
  result = qword_2810AA300;
  if (!qword_2810AA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA300);
  }

  return result;
}

unint64_t sub_22F315AD4()
{
  result = qword_2810AA308;
  if (!qword_2810AA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA308);
  }

  return result;
}

unint64_t sub_22F315B2C()
{
  result = qword_2810AA2A0;
  if (!qword_2810AA2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2A0);
  }

  return result;
}

unint64_t sub_22F315B84()
{
  result = qword_2810AA2A8;
  if (!qword_2810AA2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2A8);
  }

  return result;
}

unint64_t sub_22F315BDC()
{
  result = qword_2810AA260;
  if (!qword_2810AA260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA260);
  }

  return result;
}

unint64_t sub_22F315C34()
{
  result = qword_2810AA268;
  if (!qword_2810AA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA268);
  }

  return result;
}

unint64_t sub_22F315C8C()
{
  result = qword_2810AA2C0;
  if (!qword_2810AA2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2C0);
  }

  return result;
}

unint64_t sub_22F315CE4()
{
  result = qword_2810AA2C8;
  if (!qword_2810AA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA2C8);
  }

  return result;
}

unint64_t sub_22F315D3C()
{
  result = qword_2810AA340;
  if (!qword_2810AA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA340);
  }

  return result;
}

unint64_t sub_22F315D94()
{
  result = qword_2810AA348;
  if (!qword_2810AA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA348);
  }

  return result;
}

unint64_t sub_22F315DEC()
{
  result = qword_2810AA360;
  if (!qword_2810AA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA360);
  }

  return result;
}

unint64_t sub_22F315E44()
{
  result = qword_2810AA368;
  if (!qword_2810AA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA368);
  }

  return result;
}

uint64_t sub_22F315E98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000023 && 0x800000022F79A780 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000033 && 0x800000022F79A7B0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002CLL && 0x800000022F79A7F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000003CLL && 0x800000022F79A820 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x800000022F79A860 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000022F79A890 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022F79A8C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022F79A8E0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A900 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22F316170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022F79A920 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F79A940 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965576369706F74 && a2 == 0xEB00000000746867 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6557656C61636F6CLL && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65576D6F646E6172 && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF74686769655774 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A960 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79A980 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022F79A9A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022F79A9C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022F79A9E0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_22F3164F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x800000022F79A920 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F79A940 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6965576369706F74 && a2 == 0xEB00000000746867 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6557656C61636F6CLL && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65576D6F646E6172 && a2 == 0xEC00000074686769 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF74686769655774 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79A960 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79A980 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22F316798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000022F78D4B0 == a2;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61526369706F74 && a2 == 0xEB0000000072656BLL || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152656C61636F6CLL && a2 == 0xEC00000072656B6ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D69746E6573 && a2 == 0xEF72656B6E615274 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022F79AA10 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022F79AA30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_22F3169AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000022F79AA50 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F79AA70 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022F79AA90 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_22F742040();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F316AD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000022F79AAC0 == a2;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F79AAE0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7924F0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xED00006369706F54 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022F79AB00 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79AB20 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79AB40 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F7991C0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F46636973756DLL && a2 == 0xEC000000656D6954 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xED00007365726F63 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEF73646C6F687365)
  {

    return 10;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

void __swiftcall GraphEntityRanker.Options.init(biasTerm:minimumAssetsPerMoment:minimumAssetsPerScene:birthdayBoost:disableNormalization:)(PhotosGraph::GraphEntityRanker::Options *__return_ptr retstr, Swift::Double biasTerm, Swift::Int minimumAssetsPerMoment, Swift::Int minimumAssetsPerScene, Swift::Double birthdayBoost, Swift::Bool disableNormalization)
{
  retstr->biasTerm = biasTerm;
  retstr->minimumAssetsPerMoment = minimumAssetsPerMoment;
  retstr->minimumAssetsPerScene = minimumAssetsPerScene;
  retstr->birthdayBoost = birthdayBoost;
  retstr->disableNormalization = disableNormalization;
}

uint64_t GraphEntityRanker.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  GraphEntityRanker.init()();
  return v3;
}

void *GraphEntityRanker.init()()
{
  v1 = v0;
  v29 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = sub_22F73FA10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = sub_22F73F7D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v22, *MEMORY[0x277CC9830], v17, v20);
  sub_22F73F7E0();
  (*(v18 + 8))(v22, v17);
  sub_22F73F9C0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_22F120ADC(v8, &qword_27DAB24E0, &unk_22F77C6B0);
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v13, v16, v9);
    swift_beginAccess();
    sub_22F73F980();
    swift_endAccess();
    (*(v10 + 8))(v16, v9);
  }

  v23 = v28;
  sub_22F73F780();
  v24 = sub_22F73F7C0();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  swift_beginAccess();
  sub_22F73F960();
  swift_endAccess();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_bundle) = [objc_opt_self() bundleForClass_];
  return v1;
}

void GraphEntityRanker.rankEntities(in:with:currentDate:progressReporter:)(void *a1, __int128 *a2, void *a3)
{
  v8 = a2[1];
  v129 = *a2;
  v130 = v8;
  v9 = *(a2 + 32);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v10 = qword_2810B4DF0;
  *&v11 = CACurrentMediaTime();
  sub_22F1B560C("GraphEntityRanker.rankEntities", 30, 2u, v11, 0, v10, v125);
  v12 = sub_22F741670();
  v13 = [a1 numberOfMomentNodes];
  if (v13 < 1)
  {

    sub_22F1B2BBC(0);

    return;
  }

  v14 = v13;
  v124 = MEMORY[0x277D84F90];
  v113 = v12 & 0xC000000000000001;
  v114 = v3;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2319016F0](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v15 = *(v12 + 32);
  }

  v16 = v15;
  *&v17 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPersonEntities", 23, 2u, v17, 0, v10, v126);
  sub_22F741690();
  if (v4)
  {

    sub_22F1B2BBC(0);

LABEL_18:
    sub_22F1B2BBC(0);

    return;
  }

  v112 = v10;
  v111 = a1;
  v18 = [objc_opt_self() namedPersonNodesInGraph_];
  v123 = MEMORY[0x277D84F90];
  v19 = swift_allocObject();
  v20 = v14;
  v14 = v9;
  v9 = v19;
  v109 = v20;
  *(v19 + 16) = v20;
  v21 = a2[1];
  *(v19 + 24) = *a2;
  *(v19 + 40) = v21;
  *(v19 + 56) = v14;
  *(v19 + 64) = v3;
  *(v19 + 72) = 0;
  *(v19 + 80) = 0;
  *(v19 + 88) = &v123;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22F31E30C;
  *(v22 + 24) = v9;
  v121 = sub_22F26B650;
  v122 = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  v5 = 1107296256;
  *(&aBlock + 1) = 1107296256;
  *&v120 = sub_22F322D74;
  *(&v120 + 1) = &block_descriptor_29;
  v23 = _Block_copy(&aBlock);

  [v18 enumerateUsingBlock_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_60;
  }

  v110 = v14;
  if ((v14 & 1) == 0)
  {

    v25 = sub_22F31E70C(v24);

    v123 = v25;
  }

  sub_22F7416A0();

  v26 = v123;
  sub_22F1B2BBC(0);

  sub_22F1458B4(v26);
  if (v113)
  {
    v27 = MEMORY[0x2319016F0](1, v12);
    v14 = v111;
  }

  else
  {
    v14 = v111;
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v27 = *(v12 + 40);
  }

  *&v28 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphPetEntities", 20, 2u, v28, 0, v10, v127);
  sub_22F741690();
  v29 = [objc_opt_self() namedPetNodesInGraph_];
  v123 = MEMORY[0x277D84F90];
  v30 = swift_allocObject();
  v30[2] = v109;
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = &v123;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22F31E974;
  *(v31 + 24) = v30;
  v121 = sub_22F1F68E8;
  v122 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v120 = sub_22F322D74;
  *(&v120 + 1) = &block_descriptor_12_0;
  v32 = _Block_copy(&aBlock);

  [v29 enumerateUsingBlock_];
  _Block_release(v32);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    goto LABEL_72;
  }

  if ((v110 & 1) == 0)
  {

    v34 = sub_22F31E70C(v33);

    v123 = v34;
  }

  sub_22F7416A0();

  v35 = v123;
  sub_22F1B2BBC(0);

  sub_22F1458B4(v35);
  aBlock = v129;
  v120 = v130;
  LOBYTE(v9) = v110;
  LOBYTE(v121) = v110;
  if (v113)
  {
    v36 = MEMORY[0x2319016F0](2, v12);
    v37 = v114;
  }

  else
  {
    v37 = v3;
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
    {
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v36 = *(v12 + 48);
  }

  v38 = sub_22F31E980(v14, &aBlock);

  sub_22F1458B4(v38);
  aBlock = v129;
  v120 = v130;
  LOBYTE(v121) = v110;
  if (v113)
  {
    v39 = MEMORY[0x2319016F0](3, v12);
  }

  else
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
    {
      goto LABEL_128;
    }

    v39 = *(v12 + 56);
  }

  v40 = v39;
  v41 = sub_22F31ED48(v14, &aBlock);

  sub_22F1458B4(v41);
  aBlock = v129;
  v120 = v130;
  LOBYTE(v121) = v110;
  if (v113)
  {
    v42 = MEMORY[0x2319016F0](4, v12);
    v43 = a3;
  }

  else
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
    {
      __break(1u);
      goto LABEL_131;
    }

    v42 = *(v12 + 64);
    v43 = a3;
  }

  sub_22F3184E0(v14, &aBlock, v109, v43, v42);
  v45 = v44;

  sub_22F1458B4(v45);
  aBlock = v129;
  v120 = v130;
  LOBYTE(v121) = v110;
  if (v113)
  {
    v46 = MEMORY[0x2319016F0](5, v12);
    goto LABEL_40;
  }

LABEL_38:
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
  {
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
    goto LABEL_136;
  }

  v46 = *(v12 + 72);
LABEL_40:
  v47 = v46;
  v107 = sub_22F320284(v14, &aBlock);
  if (v4)
  {

    goto LABEL_18;
  }

  v48 = *(v107 + 16);
  if (!v48)
  {
LABEL_60:

LABEL_61:
    aBlock = v129;
    v120 = v130;
    LOBYTE(v121) = v9;
    if (v113)
    {
      v63 = MEMORY[0x2319016F0](6, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 7uLL)
      {
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
        goto LABEL_141;
      }

      v63 = *(v12 + 80);
    }

    v64 = v63;
    v65 = sub_22F32071C(v14, &aBlock, v109, a3, v63);

    sub_22F1458B4(v65);
    aBlock = v129;
    v120 = v130;
    LOBYTE(v121) = v9;
    if (v113)
    {
      v66 = MEMORY[0x2319016F0](7, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 8uLL)
      {
LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      v66 = *(v12 + 88);
    }

    v67 = v66;
    v68 = sub_22F3211F0(v111, &aBlock);

    sub_22F1458B4(v68);
    aBlock = v129;
    v120 = v130;
    LOBYTE(v121) = v110;
    if (v113)
    {
      v69 = MEMORY[0x2319016F0](8, v12);
LABEL_75:
      v70 = v69;
      v71 = sub_22F321BD8(v111, &aBlock);

      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = v124;
        v74 = 32;
        v117 = v71;
        while (1)
        {
          v75 = *(v117 + v74);
          v76 = *(v75 + 16);
          v77 = *(v73 + 2);
          v78 = v77 + v76;
          if (__OFADD__(v77, v76))
          {
            goto LABEL_132;
          }

          v79 = *(v117 + v74);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v78 > *(v73 + 3) >> 1)
          {
            if (v77 <= v78)
            {
              v81 = v77 + v76;
            }

            else
            {
              v81 = v77;
            }

            v73 = sub_22F13FB00(isUniquelyReferenced_nonNull_native, v81, 1, v73);
          }

          if (*(v75 + 16))
          {
            if ((*(v73 + 3) >> 1) - *(v73 + 2) < v76)
            {
              goto LABEL_134;
            }

            swift_arrayInitWithCopy();

            if (v76)
            {
              v82 = *(v73 + 2);
              v61 = __OFADD__(v82, v76);
              v83 = v82 + v76;
              if (v61)
              {
                goto LABEL_135;
              }

              *(v73 + 2) = v83;
            }
          }

          else
          {

            if (v76)
            {
              goto LABEL_133;
            }
          }

          v74 += 8;
          if (!--v72)
          {

            v124 = v73;
            goto LABEL_93;
          }
        }
      }

LABEL_93:
      aBlock = v129;
      v120 = v130;
      LOBYTE(v121) = v110;
      if (v113)
      {
        v84 = MEMORY[0x2319016F0](9, v12);
      }

      else
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xAuLL)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v84 = *(v12 + 104);
      }

      v85 = v84;
      v115 = sub_22F3223D0(v111, &aBlock, v109);

      v86 = *(v115 + 16);
      if (v86)
      {
        v118 = v124;
        v87 = 32;
        while (1)
        {
          v88 = *(v115 + v87);
          v89 = *(v88 + 16);
          v90 = *(v118 + 2);
          v91 = v90 + v89;
          if (__OFADD__(v90, v89))
          {
            goto LABEL_137;
          }

          v92 = *(v115 + v87);

          v93 = swift_isUniquelyReferenced_nonNull_native();
          if (!v93 || v91 > *(v118 + 3) >> 1)
          {
            if (v90 <= v91)
            {
              v94 = v90 + v89;
            }

            else
            {
              v94 = v90;
            }

            v118 = sub_22F13FB00(v93, v94, 1, v118);
          }

          if (*(v88 + 16))
          {
            if ((*(v118 + 3) >> 1) - *(v118 + 2) < v89)
            {
              goto LABEL_139;
            }

            swift_arrayInitWithCopy();

            if (v89)
            {
              v95 = *(v118 + 2);
              v61 = __OFADD__(v95, v89);
              v96 = v95 + v89;
              if (v61)
              {
                goto LABEL_140;
              }

              *(v118 + 2) = v96;
            }
          }

          else
          {

            if (v89)
            {
              goto LABEL_138;
            }
          }

          v87 += 8;
          if (!--v86)
          {

            v124 = v118;
            goto LABEL_118;
          }
        }
      }

LABEL_117:

LABEL_118:
      if (v113)
      {
        v97 = MEMORY[0x2319016F0](10, v12);
      }

      else
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 0xBuLL)
        {
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          return;
        }

        v97 = *(v12 + 112);
      }

      v37 = v97;

      *&v98 = CACurrentMediaTime();
      sub_22F1B560C("rankGraphHomeWorkEntities", 25, 2u, v98, 0, v112, v128);
      sub_22F741690();
      v99 = [v111 localeIdentifier];
      v100 = sub_22F740E20();
      v102 = v101;

      sub_22F120634(0, &qword_2810A8F90, off_27887AE30);
      v10 = [swift_getObjCClassFromMetadata() nodesInGraph_];
      v123 = MEMORY[0x277D84F90];
      v103 = swift_allocObject();
      v103[2] = v109;
      v103[3] = &v123;
      v103[4] = v100;
      v103[5] = v102;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_22F3227A8;
      *(v104 + 24) = v103;
      v121 = sub_22F26B650;
      v122 = v104;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = v5;
      *&v120 = sub_22F322D74;
      *(&v120 + 1) = &block_descriptor_21_1;
      v105 = _Block_copy(&aBlock);

      [v10 enumerateUsingBlock_];
      _Block_release(v105);
      LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

      if ((v105 & 1) == 0)
      {
        v14 = v123;

        if ((v110 & 1) == 0)
        {
          v106 = sub_22F31E70C(v14);

          v14 = v106;
        }

        sub_22F7416A0();
        goto LABEL_129;
      }

      goto LABEL_145;
    }

LABEL_73:
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 9uLL)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v69 = *(v12 + 96);
    goto LABEL_75;
  }

  v49 = v124;
  v50 = 32;
  while (1)
  {
    v108 = v48;
    v52 = *(v107 + v50);
    v53 = *(v52 + 16);
    v37 = *(v49 + 2);
    v54 = &v37[v53];
    if (__OFADD__(v37, v53))
    {
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v10 = v14;
    v55 = *(v107 + v50);

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v49;
    if (!v56 || v54 > *(v49 + 3) >> 1)
    {
      if (v37 <= v54)
      {
        v58 = &v37[v53];
      }

      else
      {
        v58 = v37;
      }

      v57 = sub_22F13FB00(v56, v58, 1, v49);
    }

    if (!*(v52 + 16))
    {
      v51 = v57;

      v49 = v51;
      if (v53)
      {
        goto LABEL_115;
      }

      goto LABEL_45;
    }

    if ((*(v57 + 3) >> 1) - *(v57 + 2) < v53)
    {
      break;
    }

    v59 = v57;
    swift_arrayInitWithCopy();

    v49 = v59;
    if (v53)
    {
      v60 = *(v59 + 2);
      v61 = __OFADD__(v60, v53);
      v62 = v60 + v53;
      if (v61)
      {
        goto LABEL_127;
      }

      *(v59 + 2) = v62;
    }

LABEL_45:
    v50 += 8;
    v48 = v108 - 1;
    if (v108 == 1)
    {

      v124 = v49;
      LOBYTE(v9) = v110;
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:

  sub_22F1B2BBC(0);

  sub_22F1458B4(v14);
  sub_22F1B2BBC(0);
}

void sub_22F3184E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a4;
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v92 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v75 - v14;
  v15 = sub_22F73F9B0();
  v90 = *(v15 - 8);
  v91 = v15;
  v16 = *(v90 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v19 = qword_2810B4DF0;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("rankGraphSeasonEntities", 23, 2u, v20, 0, v19, v102);
  sub_22F741690();
  if (v5)
  {
    sub_22F1B2BBC(0);

LABEL_9:

    return;
  }

  v83 = a5;
  v21 = [a1 localeIdentifier];
  v84 = sub_22F740E20();
  v23 = v22;

  if ((a3 * 10) >> 64 != (10 * a3) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v76 = v10;
  v77 = v9;
  v78 = 0;
  v24 = 1.0 / (10 * a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3708, &qword_22F785BF8);
  inited = swift_initStackObject();
  v89 = xmmword_22F7727B0;
  *(inited + 16) = xmmword_22F7727B0;
  *(inited + 32) = 1;
  v26 = *MEMORY[0x277D275F0];
  *(inited + 40) = sub_22F740E20();
  *(inited + 48) = v27;
  *(inited + 56) = 2;
  v28 = *MEMORY[0x277D275F8];
  *(inited + 64) = sub_22F740E20();
  *(inited + 72) = v29;
  *(inited + 80) = 3;
  v30 = *MEMORY[0x277D275E8];
  *(inited + 88) = sub_22F740E20();
  *(inited + 96) = v31;
  *(inited + 104) = 4;
  v81 = a1;
  v82 = v23;
  v32 = *MEMORY[0x277D27600];
  *(inited + 112) = sub_22F740E20();
  *(inited + 120) = v33;
  v85 = sub_22F150118(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3710, &qword_22F785C00);
  swift_arrayDestroy();
  v34 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3718, &qword_22F785C08);
  v35 = swift_initStackObject();
  *(v35 + 16) = v89;
  *(v35 + 32) = sub_22F740E20();
  *(v35 + 40) = v36;
  *(v35 + 48) = v24;
  *(v35 + 56) = sub_22F740E20();
  *(v35 + 64) = v37;
  *(v35 + 72) = v24;
  *(v35 + 80) = sub_22F740E20();
  *(v35 + 88) = v38;
  *(v35 + 96) = v24;
  *(v35 + 104) = sub_22F740E20();
  *(v35 + 112) = v39;
  *(v35 + 120) = v24;
  v40 = sub_22F14E214(v35);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3720, &qword_22F785C10);
  swift_arrayDestroy();
  *(v34 + 16) = v40;
  v80 = v34 + 16;
  v41 = sub_22F73F5B0();
  v42 = v95;
  v43 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v86 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  swift_beginAccess();
  v44 = v90;
  v45 = v91;
  v88 = *(v90 + 16);
  *&v89 = v90 + 16;
  v88(v18, v42 + v43, v91);
  v46 = sub_22F73F8E0();
  v90 = *(v44 + 8);
  (v90)(v18, v45);
  v47 = swift_allocObject();
  *(v47 + 16) = v85;
  *(v47 + 24) = v34;
  v100 = sub_22F322AA4;
  v101 = v47;
  v96 = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v87 = &v98;
  v98 = sub_22F31C650;
  v99 = &block_descriptor_89;
  v48 = _Block_copy(&v96);

  v49 = v34;

  PLSearchSeasonStringsForDate();
  _Block_release(v48);

  v50 = objc_opt_self();
  v79 = v50;
  v51 = sub_22F73F5B0();
  v52 = [v50 dateByAddingWeeksOfYear:-1 toDate:v51];

  sub_22F73F640();
  v53 = sub_22F73F5B0();
  v88(v18, v95 + v86, v45);
  v54 = sub_22F73F8E0();
  (v90)(v18, v45);
  v55 = swift_allocObject();
  v56 = v85;
  *(v55 + 16) = v85;
  *(v55 + 24) = v49;
  v57 = v49;
  *(v55 + 32) = v24;
  v100 = sub_22F322AAC;
  v101 = v55;
  v96 = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_22F31C650;
  v99 = &block_descriptor_95;
  v58 = _Block_copy(&v96);

  PLSearchSeasonStringsForDate();
  _Block_release(v58);

  v59 = sub_22F73F5B0();
  v60 = [v79 dateByAddingWeeksOfYear:4 toDate:v59];

  sub_22F73F640();
  v61 = sub_22F73F5B0();
  v88(v18, v95 + v86, v45);
  v62 = sub_22F73F8E0();
  (v90)(v18, v45);
  v63 = swift_allocObject();
  *(v63 + 16) = v56;
  *(v63 + 24) = v57;
  *(v63 + 32) = v24;
  v100 = sub_22F322D28;
  v101 = v63;
  v96 = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_22F31C650;
  v99 = &block_descriptor_101_0;
  v64 = _Block_copy(&v96);

  PLSearchSeasonStringsForDate();
  _Block_release(v64);

  sub_22F120634(0, &qword_2810A8FB8, off_27887B3B0);
  v65 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v103 = MEMORY[0x277D84F90];
  v66 = swift_allocObject();
  v67 = v84;
  v66[2] = v80;
  v66[3] = v67;
  v66[4] = v82;
  v66[5] = &v103;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_22F322B18;
  *(v68 + 24) = v66;
  v100 = sub_22F26B650;
  v101 = v68;
  v96 = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = sub_22F322D74;
  v99 = &block_descriptor_110;
  v69 = _Block_copy(&v96);

  [v65 enumerateUsingBlock_];
  _Block_release(v69);
  LOBYTE(v69) = swift_isEscapingClosureAtFileLocation();

  if (v69)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v70 = v78;
  sub_22F7416A0();
  if (v70)
  {

    v71 = v77;
    v72 = *(v76 + 8);
    v72(v92, v77);
    v72(v93, v71);

    sub_22F1B2BBC(0);

    goto LABEL_9;
  }

  v73 = v77;
  v74 = *(v76 + 8);
  v74(v92, v77);
  v74(v93, v73);

  sub_22F1B2BBC(0);
}

uint64_t GraphEntityRanker.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v2 = sub_22F73F9B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t GraphEntityRanker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v2 = sub_22F73F9B0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F319078(void *a1)
{
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3728, &qword_22F785C18);
  v2 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v182 = &v162[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v180 = &v162[-v5];
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3730, &qword_22F785C20);
  v6 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v174 = &v162[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v179 = &v162[-v9];
  v10 = sub_22F73F270();
  v184 = *(v10 - 8);
  v11 = *(v184 + 64);
  MEMORY[0x28223BE20](v10);
  v187 = &v162[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v197 = sub_22F73F990();
  v199 = *(v197 - 8);
  v13 = *(v199 + 64);
  MEMORY[0x28223BE20](v197);
  v205 = &v162[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v203 = sub_22F73F9B0();
  v207 = *(v203 - 8);
  v15 = *(v207 + 64);
  MEMORY[0x28223BE20](v203);
  v196 = &v162[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v176 = &v162[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v185 = &v162[-v21];
  MEMORY[0x28223BE20](v22);
  v188 = &v162[-v23];
  MEMORY[0x28223BE20](v24);
  v194 = &v162[-v25];
  MEMORY[0x28223BE20](v26);
  v28 = &v162[-v27];
  MEMORY[0x28223BE20](v29);
  v31 = &v162[-v30];
  MEMORY[0x28223BE20](v32);
  v34 = &v162[-v33];
  v35 = sub_22F73F690();
  v36 = *(v35 - 8);
  v37 = v36[8];
  MEMORY[0x28223BE20](v35);
  v175 = &v162[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v186 = &v162[-v40];
  MEMORY[0x28223BE20](v41);
  v189 = &v162[-v42];
  MEMORY[0x28223BE20](v43);
  v198 = &v162[-v44];
  MEMORY[0x28223BE20](v45);
  v208 = &v162[-v46];
  MEMORY[0x28223BE20](v47);
  v49 = &v162[-v48];
  v171 = v50;
  *&v52 = MEMORY[0x28223BE20](v51).n128_u64[0];
  v206 = &v162[-v53];
  v54 = [a1 birthdayDate];
  v172 = a1;
  v170 = v49;
  if (v54)
  {
    v55 = v54;
    sub_22F73F640();

    v56 = v36[4];
    v56(v31, v49, v35);
    v57 = v36[7];
    v57(v31, 0, 1, v35);
    v56(v34, v31, v35);
    v58 = v36;
    v57(v34, 0, 1, v35);
    v59 = (v36 + 6);
    v60 = v36[6];
    v61 = v59 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  }

  else
  {
    v190 = v10;
    v62 = v36;
    v63 = v36[7];
    v64 = 1;
    v63(v31, 1, 1, v35);
    v65 = [a1 potentialBirthdayDate];
    if (v65)
    {
      v66 = v65;
      sub_22F73F640();

      v64 = 0;
    }

    v63(v28, v64, 1, v35);
    sub_22F1207AC(v28, v34, &qword_27DAB0920, &qword_22F770B20);
    v58 = v36;
    v60 = v36[6];
    v61 = (v62 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v60(v31, 1, v35) != 1)
    {
      sub_22F120ADC(v31, &qword_27DAB0920, &qword_22F770B20);
    }

    v10 = v190;
  }

  v68 = v205;
  v67 = v206;
  if (v60(v34, 1, v35) == 1)
  {
    v69 = v34;
    return sub_22F120ADC(v69, &qword_27DAB0920, &qword_22F770B20);
  }

  v190 = v10;
  v70 = v58[4];
  v178 = v58 + 4;
  v177 = v70;
  v70(v67, v34, v35);
  sub_22F73F680();
  v169 = v58;
  v71 = v204;
  v72 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  v191 = OBJC_IVAR____TtC11PhotosGraph17GraphEntityRanker_cal;
  swift_beginAccess();
  v202 = v35;
  v73 = v207;
  v74 = v207 + 16;
  v201 = *(v207 + 16);
  v75 = v71 + v72;
  v76 = v196;
  v193 = v60;
  v192 = v61;
  v77 = v203;
  v201(v196, v75, v203);
  v78 = *MEMORY[0x277CC9988];
  v79 = v199;
  v80 = v199 + 104;
  v195 = *(v199 + 104);
  v163 = v78;
  v81 = v197;
  v195(v68);
  v164 = sub_22F73F9A0();
  v82 = *(v79 + 8);
  v82(v68, v81);
  v200 = *(v73 + 8);
  v200(v76, v77);
  v173 = v74;
  v201(v76, v204 + v191, v77);
  v165 = *MEMORY[0x277CC9940];
  v168 = v80;
  v195(v68);
  v83 = v194;
  sub_22F73F940();
  v84 = v81;
  v166 = v82;
  v167 = v79 + 8;
  v82(v68, v81);
  v207 = v73 + 8;
  v200(v76, v77);
  if (v193(v83, 1, v202) == 1)
  {
    v85 = v169[1];
    v86 = v202;
    v85(v208, v202);
    v85(v206, v86);
    v69 = v83;
    return sub_22F120ADC(v69, &qword_27DAB0920, &qword_22F770B20);
  }

  v87 = v202;
  v177(v198, v83, v202);
  v88 = v203;
  v89 = v204;
  v90 = v76;
  v201(v76, v204 + v191, v203);
  v91 = v205;
  v92 = v195;
  (v195)(v205, v165, v84);
  v93 = v188;
  sub_22F73F940();
  v94 = v93;
  v166(v91, v84);
  v200(v90, v88);
  if (v193(v93, 1, v87) == 1)
  {
    v95 = v93;
    v96 = v169[1];
    v97 = v202;
    v96(v198, v202);
    v96(v208, v97);
    v96(v206, v97);
    v69 = v95;
    return sub_22F120ADC(v69, &qword_27DAB0920, &qword_22F770B20);
  }

  v98 = v92;
  v177(v189, v94, v202);
  v99 = v191;
  v201(v90, v89 + v191, v203);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
  v100 = v89;
  v101 = v84;
  v102 = *(v199 + 72);
  v103 = (*(v199 + 80) + 32) & ~*(v199 + 80);
  v104 = v98;
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_22F770DF0;
  v106 = v105 + v103;
  v104(v106, *MEMORY[0x277CC9998], v101);
  v104(v106 + v102, *MEMORY[0x277CC9968], v101);
  sub_22F3D97CC(v105);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v107 = v187;
  sub_22F73F860();

  v108 = v203;
  v200(v90, v203);
  sub_22F73F200();
  v201(v90, v100 + v99, v108);
  v109 = v205;
  (v195)(v205, *MEMORY[0x277CC9980], v101);
  sub_22F73F9A0();
  v110 = v166;
  v166(v109, v101);
  v200(v90, v108);
  sub_22F73F1E0();
  v201(v90, v204 + v99, v108);
  v111 = v208;
  v112 = v205;
  (v195)(v205, *MEMORY[0x277CC99A0], v101);
  sub_22F73F9A0();
  v110(v112, v101);
  v113 = v200;
  v200(v90, v108);
  sub_22F73F230();
  sub_22F73F970();
  v114 = v185;
  sub_22F73F920();
  v113(v90, v108);
  v115 = v202;
  if (v193(v114, 1, v202) == 1)
  {
    (*(v184 + 8))(v107, v190);
    v116 = v169[1];
    v116(v189, v115);
    v116(v198, v115);
    v116(v111, v115);
    v116(v206, v115);
LABEL_16:
    v69 = v114;
    return sub_22F120ADC(v69, &qword_27DAB0920, &qword_22F770B20);
  }

  v177(v186, v114, v115);
  v118 = sub_22F173D18();
  v119 = v198;
  v120 = v189;
  v199 = v118;
  result = sub_22F740DD0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v121 = v169;
  v122 = v169 + 2;
  v123 = v169[2];
  v124 = v180;
  (v123)(v180, v119, v115);
  v125 = v183;
  v126 = v124 + *(v183 + 48);
  v194 = v122;
  v188 = v123;
  (v123)(v126, v120, v115);
  v127 = v182;
  sub_22F322BBC(v124, v182);
  v128 = *(v125 + 48);
  v129 = v179;
  v130 = v177;
  v177(v179, v127, v115);
  v131 = v121[1];
  (v131)(&v127[v128], v115);
  sub_22F1207AC(v124, v127, &qword_27DAB3728, &qword_22F785C18);
  v130(v129 + *(v181 + 36), &v127[*(v125 + 48)], v115);
  v132 = v131;
  (v131)(v127, v115);
  v133 = v186;
  if ((sub_22F740DC0() & 1) == 0)
  {
    sub_22F120ADC(v129, &unk_27DAB3730, &qword_22F785C20);
    v135 = v187;
    goto LABEL_25;
  }

  v134 = sub_22F740DD0();
  sub_22F120ADC(v129, &unk_27DAB3730, &qword_22F785C20);
  v135 = v187;
  if ((v134 & 1) == 0)
  {
LABEL_25:
    (v131)(v133, v115);
    (*(v184 + 8))(v135, v190);
    (v131)(v189, v115);
    (v131)(v198, v115);
    (v131)(v208, v115);
    return (v131)(v206, v115);
  }

  sub_22F73F600();
  v136 = v198;
  v137 = v208;
  result = sub_22F740DD0();
  if ((result & 1) == 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v138 = v188;
  (v188)(v124, v136, v115);
  v139 = v183;
  v138(v124 + *(v183 + 48), v137, v115);
  v140 = v182;
  sub_22F322BBC(v124, v182);
  v179 = *(v139 + 48);
  v141 = v174;
  v142 = v177;
  v177(v174, v140, v115);
  (v131)(v140 + v179, v115);
  sub_22F1207AC(v124, v140, &qword_27DAB3728, &qword_22F785C18);
  v142(v141 + *(v181 + 36), v140 + *(v139 + 48), v115);
  (v131)(v140, v115);
  v143 = sub_22F740DC0();
  v144 = v133;
  v185 = v132;
  if (v143)
  {
    sub_22F740DD0();
  }

  sub_22F120ADC(v141, &unk_27DAB3730, &qword_22F785C20);
  v114 = v176;
  v145 = v166;
  v146 = v208;
  v147 = v196;
  v148 = v203;
  v201(v196, v204 + v191, v203);
  v149 = v205;
  v150 = v197;
  (v195)(v205, v163, v197);
  sub_22F73F940();
  v145(v149, v150);
  v200(v147, v148);
  if (v193(v114, 1, v115) == 1)
  {
    v151 = v185;
    (v185)(v144, v115);
    (*(v184 + 8))(v187, v190);
    v151(v189, v115);
    v151(v198, v115);
    v151(v146, v115);
    v151(v206, v115);
    goto LABEL_16;
  }

  v152 = v175;
  v153 = v177;
  v177(v175, v114, v115);
  v154 = swift_allocObject();
  *(v154 + 16) = 0;
  v155 = v170;
  (v188)(v170, v152, v115);
  v156 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v157 = (v171 + v156 + 7) & 0xFFFFFFFFFFFFFFF8;
  v158 = swift_allocObject();
  v153(v158 + v156, v155, v115);
  *(v158 + v157) = v154;
  aBlock[4] = sub_22F322C2C;
  aBlock[5] = v158;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F31AA18;
  aBlock[3] = &block_descriptor_169;
  v159 = _Block_copy(aBlock);

  [v172 enumerateMomentEdgesAndNodesUsingBlock_];
  _Block_release(v159);
  v160 = v185;
  (v185)(v175, v115);
  v160(v186, v115);
  (*(v184 + 8))(v187, v190);
  v160(v189, v115);
  v160(v198, v115);
  v160(v208, v115);
  v160(v206, v115);
  swift_beginAccess();
  v161 = *(v154 + 16);
}

uint64_t sub_22F31A8E0(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_22F73F690();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  *&v11 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 localEndDate];
  sub_22F73F640();

  v15 = sub_22F73F5C0();
  result = (*(v9 + 8))(v13, v8);
  if (v15)
  {
    result = swift_beginAccess();
    *(a5 + 16) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_22F31AA18(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a3;
  v8(v10, v9, a4);
}

void sub_22F31AAAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char **a8)
{
  v14 = [a1 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_22F740E20();
    v18 = v17;

    v19 = [a1 numberOfMomentNodes] / a3;
    if (v19 <= 0.0)
    {
    }

    else
    {
      if (*(a4 + 24) > 0.0)
      {
        sub_22F319078(a1);
        v19 = v19 + v20;
      }

      sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [a1 localIdentifier];
      v23 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

      if (v23)
      {
        v24 = sub_22F740E20();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v30 = *a8;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22F13FB00(0, *(v30 + 2) + 1, 1, v30);
        *a8 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        v30 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v30);
        *a8 = v30;
      }

      *(v30 + 2) = v33 + 1;
      v34 = &v30[64 * v33];
      v34[32] = 0;
      *(v34 + 33) = *v36;
      *(v34 + 9) = *&v36[3];
      *(v34 + 5) = v16;
      *(v34 + 6) = v18;
      *(v34 + 7) = v24;
      *(v34 + 8) = v26;
      *(v34 + 9) = v19;
      *(v34 + 10) = a6;
      *(v34 + 11) = a7;
    }
  }

  else
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v27 = sub_22F740B90();
    __swift_project_value_buffer(v27, qword_2810B4CE0);
    oslog = sub_22F740B70();
    v28 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v28, "GraphEntityRanker: Supposedly named person has no name", v29, 2u);
      MEMORY[0x2319033A0](v29, -1, -1);
    }
  }
}

uint64_t sub_22F31ADC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  result = [a1 numberOfMomentNodes];
  v12 = result / a3;
  if (v12 > 0.0)
  {
    v13 = [a1 localIdentifier];
    if (!v13)
    {
      sub_22F740E20();
      v13 = sub_22F740DF0();
    }

    sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v14 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

    if (v14)
    {
      v15 = sub_22F740E20();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = [a1 name];
    v19 = sub_22F740E20();
    v21 = v20;

    v22 = *a6;

    result = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v22;
    if ((result & 1) == 0)
    {
      result = sub_22F13FB00(0, *(v22 + 16) + 1, 1, v22);
      v22 = result;
      *a6 = result;
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      result = sub_22F13FB00((v23 > 1), v24 + 1, 1, v22);
      v22 = result;
      *a6 = result;
    }

    *(v22 + 16) = v24 + 1;
    v25 = v22 + (v24 << 6);
    *(v25 + 32) = 1;
    *(v25 + 33) = *v26;
    *(v25 + 36) = *&v26[3];
    *(v25 + 40) = v19;
    *(v25 + 48) = v21;
    *(v25 + 56) = v15;
    *(v25 + 64) = v17;
    *(v25 + 72) = v12;
    *(v25 + 80) = a4;
    *(v25 + 88) = a5;
  }

  return result;
}

void sub_22F31AFA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6, char **a7, char **a8)
{
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    return;
  }

  v14 = v13;
  v72 = a6;
  v73 = a3;
  v15 = a1;
  v16 = [v14 name];
  v17 = sub_22F740E20();
  v19 = v18;

  v20 = [v14 locationMask];
  if ((v20 & 0x10) != 0)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v64 = sub_22F740B90();
      __swift_project_value_buffer(v64, qword_2810B4CE0);
      osloga = sub_22F740B70();
      v65 = sub_22F7415E0();
      if (!os_log_type_enabled(osloga, v65))
      {
        goto LABEL_45;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "GraphEntityRanker: Could not process city node";
      goto LABEL_44;
    }

    v22 = v21;
    v23 = v15;
    v24 = [v22 collection];
    v70 = a7;
    v25 = a5;
    v26 = v15;
    v27 = [v24 numberOfMomentNodes];

    v28 = v27;
    v15 = v26;
    a5 = v25;
    a7 = v70;
    v29 = v28 / a3;
    if (v29 > 0.0)
    {
      v30 = *v72;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v72 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_22F13FB00(0, *(v30 + 2) + 1, 1, v30);
        *v72 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        *v72 = sub_22F13FB00((v32 > 1), v33 + 1, 1, v30);
      }

      v34 = *v72;
      *(v34 + 2) = v33 + 1;
      v35 = &v34[64 * v33];
      v35[32] = 2;
      *(v35 + 5) = v17;
      *(v35 + 6) = v19;
      goto LABEL_27;
    }
  }

  v71 = v19;
  if ((v20 & 0x40) != 0)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (!v36)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v68 = sub_22F740B90();
      __swift_project_value_buffer(v68, qword_2810B4CE0);
      osloga = sub_22F740B70();
      v65 = sub_22F7415E0();
      if (!os_log_type_enabled(osloga, v65))
      {
        goto LABEL_45;
      }

      v66 = swift_slowAlloc();
      *v66 = 0;
      v67 = "GraphEntityRanker: Could not process state node";
      goto LABEL_44;
    }

    v37 = v36;
    v38 = v15;
    v39 = [v37 collection];
    v40 = a7;
    v41 = a5;
    v42 = v15;
    v43 = [v39 numberOfMomentNodes];

    v44 = v43;
    v15 = v42;
    a5 = v41;
    v29 = v44 / v73;
    if (v29 > 0.0)
    {
      v45 = *v40;

      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v45;
      if ((v46 & 1) == 0)
      {
        v45 = sub_22F13FB00(0, *(v45 + 2) + 1, 1, v45);
        *v40 = v45;
      }

      v48 = *(v45 + 2);
      v47 = *(v45 + 3);
      if (v48 >= v47 >> 1)
      {
        *v40 = sub_22F13FB00((v47 > 1), v48 + 1, 1, v45);
      }

      v49 = *v40;
      *(v49 + 2) = v48 + 1;
      v35 = &v49[64 * v48];
      v50 = 3;
LABEL_26:
      v35[32] = v50;
      *(v35 + 5) = v17;
      *(v35 + 6) = v71;
LABEL_27:
      *(v35 + 7) = 0;
      *(v35 + 8) = 0;
      *(v35 + 9) = v29;
      *(v35 + 10) = a4;
      *(v35 + 11) = a5;
      return;
    }
  }

  if ((v20 & 0x80) == 0)
  {
LABEL_29:

    return;
  }

  objc_opt_self();
  v51 = swift_dynamicCastObjCClass();
  if (v51)
  {
    v52 = v51;
    v53 = v15;
    v54 = [v52 collection];
    v55 = a5;
    v56 = v15;
    v57 = [v54 numberOfMomentNodes];

    v58 = v57;
    v15 = v56;
    v29 = v58 / v73;
    if (v29 > 0.0)
    {
      a5 = v55;
      v59 = *a8;

      v60 = swift_isUniquelyReferenced_nonNull_native();
      *a8 = v59;
      if ((v60 & 1) == 0)
      {
        v59 = sub_22F13FB00(0, *(v59 + 2) + 1, 1, v59);
        *a8 = v59;
      }

      v62 = *(v59 + 2);
      v61 = *(v59 + 3);
      if (v62 >= v61 >> 1)
      {
        *a8 = sub_22F13FB00((v61 > 1), v62 + 1, 1, v59);
      }

      v63 = *a8;
      *(v63 + 2) = v62 + 1;
      v35 = &v63[64 * v62];
      v50 = 4;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v69 = sub_22F740B90();
  __swift_project_value_buffer(v69, qword_2810B4CE0);
  osloga = sub_22F740B70();
  v65 = sub_22F7415E0();
  if (os_log_type_enabled(osloga, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    v67 = "GraphEntityRanker: Could not process country node";
LABEL_44:
    _os_log_impl(&dword_22F0FC000, osloga, v65, v67, v66, 2u);
    MEMORY[0x2319033A0](v66, -1, -1);
  }

LABEL_45:
}

void sub_22F31B658(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = [a1 sceneNode];
  v14 = [v13 sceneName];
  v15 = sub_22F740E20();
  v17 = v16;

  if ([a2 nodeRefForExtendedSceneClassId_] && PFSceneTaxonomyNodeIsIndexed())
  {
    v85 = [a1 momentNode];
    v18 = [v13 sceneIdentifier];
    swift_beginAccess();
    v19 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(a3 + 16);
    *(a3 + 16) = 0x8000000000000000;
    sub_22F132770(v18, v15, v17, isUniquelyReferenced_nonNull_native);
    *(a3 + 16) = v87;
    swift_endAccess();
    v21 = [v13 localizedName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_22F740E20();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    swift_beginAccess();

    sub_22F1216C0(v23, v25, v15, v17);
    swift_endAccess();
    v26 = [v85 localIdentifier];
    v27 = sub_22F740E20();
    v29 = v28;

    swift_beginAccess();
    v30 = *(a5 + 16);
    v83 = a8;
    if (*(v30 + 16))
    {
      v31 = sub_22F1229E8(v27, v29);
      v33 = v32;

      if (v33)
      {
        v34 = *(*(v30 + 56) + 8 * v31);

LABEL_14:
        swift_endAccess();
        v35 = [a1 numberOfSearchConfidenceAssets];
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_22F131078(v35, v15, v17, v36);
        v37 = v34;
        v38 = [v85 localIdentifier];
        v39 = sub_22F740E20();
        v41 = v40;

        swift_beginAccess();
        v42 = *(a5 + 16);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *(a5 + 16);
        v44 = 0x8000000000000000;
        *(a5 + 16) = 0x8000000000000000;
        sub_22F132748(v37, v39, v41, v43);

        *(a5 + 16) = v88;
        swift_endAccess();
        swift_beginAccess();
        v45 = *(a6 + 16);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v47 = *(a6 + 16);
        v89 = v47;
        *(a6 + 16) = 0x8000000000000000;
        v48 = sub_22F1229E8(v15, v17);
        v50 = v47[2];
        v51 = (v49 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          __break(1u);
          goto LABEL_42;
        }

        v37 = v49;
        if (v47[3] >= v53)
        {
          v44 = v83;
          a5 = a7;
          v41 = &selRef_numberOfCoworkerCalendarSignalRegistrations;
          if (v46)
          {
            goto LABEL_19;
          }

          goto LABEL_47;
        }

        sub_22F125704(v53, v46);
        v48 = sub_22F1229E8(v15, v17);
        v44 = v83;
        a5 = a7;
        v41 = 0x278899000;
        if ((v37 & 1) == (v54 & 1))
        {
          goto LABEL_19;
        }

LABEL_34:
        v48 = sub_22F7420C0();
        __break(1u);
LABEL_35:
        if ((v41 & 1) == 0)
        {
          v41 = v48;
          sub_22F1341B0();
          v48 = v41;
        }

LABEL_37:
        *(v83 + 16) = v89;
        if ((v44 & 1) == 0)
        {
          v44 = v48;
          sub_22F1534CC(v48, v17, v46, 0, v89);

          v48 = v44;
        }

        v78 = v89[7];
        v79 = *(v78 + 8 * v48);
        v52 = __OFADD__(v79, v37);
        v80 = v79 + v37;
        if (!v52)
        {
          *(v78 + 8 * v48) = v80;
          swift_endAccess();

          return;
        }

        while (1)
        {
          __break(1u);
LABEL_47:
          v81 = v48;
          sub_22F1341B0();
          v48 = v81;
LABEL_19:
          *(a6 + 16) = v89;
          if ((v37 & 1) == 0)
          {
            v37 = v48;
            sub_22F1534CC(v48, v15, v17, 0, v89);

            v48 = v37;
          }

          v55 = v89[7];
          v56 = *(v55 + 8 * v48);
          v52 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v52)
          {
            break;
          }

          *(v55 + 8 * v48) = v57;
          swift_endAccess();
          v37 = [a1 *(v41 + 480)];
          swift_beginAccess();
          v58 = *(a5 + 16);
          a6 = swift_isUniquelyReferenced_nonNull_native();
          v59 = *(a5 + 16);
          v89 = v59;
          *(a5 + 16) = 0x8000000000000000;
          v48 = sub_22F1229E8(v15, v17);
          v61 = v59[2];
          v62 = (v60 & 1) == 0;
          v52 = __OFADD__(v61, v62);
          v63 = v61 + v62;
          if (v52)
          {
            goto LABEL_43;
          }

          v46 = v60;
          if (v59[3] >= v63)
          {
            if ((a6 & 1) == 0)
            {
              v82 = v48;
              sub_22F1341B0();
              v48 = v82;
              v41 = 0x278899000;
            }
          }

          else
          {
            sub_22F125704(v63, a6);
            v48 = sub_22F1229E8(v15, v17);
            if ((v46 & 1) != (v64 & 1))
            {
              goto LABEL_34;
            }
          }

          *(a5 + 16) = v59;
          if ((v46 & 1) == 0)
          {
            v65 = v48;
            sub_22F1534CC(v48, v15, v17, 0, v59);

            v48 = v65;
          }

          v66 = v59[7];
          v67 = *(v66 + 8 * v48);
          v52 = __OFADD__(v67, v37);
          v68 = v67 + v37;
          if (v52)
          {
            goto LABEL_44;
          }

          *(v66 + 8 * v48) = v68;
          swift_endAccess();

          v69 = [v85 localIdentifier];
          v17 = sub_22F740E20();
          v46 = v70;

          v37 = [a1 *(v41 + 480)];
          swift_beginAccess();
          v71 = *(v44 + 16);
          v41 = swift_isUniquelyReferenced_nonNull_native();
          v72 = *(v44 + 16);
          v89 = v72;
          *(v44 + 16) = 0x8000000000000000;
          v48 = sub_22F1229E8(v17, v46);
          v74 = v72[2];
          v75 = (v73 & 1) == 0;
          v52 = __OFADD__(v74, v75);
          v76 = v74 + v75;
          if (!v52)
          {
            v44 = v73;
            if (v72[3] >= v76)
            {
              goto LABEL_35;
            }

            sub_22F125704(v76, v41);
            v48 = sub_22F1229E8(v17, v46);
            if ((v44 & 1) != (v77 & 1))
            {
              goto LABEL_34;
            }

            goto LABEL_37;
          }

LABEL_45:
          __break(1u);
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
    }

    v34 = sub_22F14F1C0(MEMORY[0x277D84F90]);
    goto LABEL_14;
  }
}

uint64_t sub_22F31BD4C(int a1, id a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = [a2 meaningNodes];
  v10 = [v9 parentMeaningNodes];
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22F322BB0;
  *(v12 + 24) = v11;
  v17[4] = sub_22F26B650;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F322D74;
  v17[3] = &block_descriptor_160;
  v13 = _Block_copy(v17);
  v14 = v10;
  v15 = a5;

  [v9 enumerateUsingBlock_];

  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

void sub_22F31BEF8(void *a1, int a2, id a3, uint64_t *a4, void *a5, void *a6)
{
  if ([a3 containsNode_])
  {
    return;
  }

  v10 = [a1 label];
  if (!v10)
  {
    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v18 = sub_22F740B90();
    __swift_project_value_buffer(v18, qword_2810B4CE0);
    v19 = a1;
    v46 = sub_22F740B70();
    v20 = sub_22F7415E0();

    if (os_log_type_enabled(v46, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v19;
      v23 = v19;
      _os_log_impl(&dword_22F0FC000, v46, v20, "GraphEntityRanker: MeaningNode %@ has nil label", v21, 0xCu);
      sub_22F120ADC(v22, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v22, -1, -1);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    goto LABEL_34;
  }

  v11 = v10;
  v12 = sub_22F740E20();
  v14 = v13;
  if (v12 != sub_22F740E20() || v14 != v15)
  {
    v17 = sub_22F742040();
    v46 = v11;

    if (v17)
    {

LABEL_34:

      return;
    }

    v24 = identifierForMeaningLabel(v46);

    if (!v24)
    {

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v36 = sub_22F740B90();
      __swift_project_value_buffer(v36, qword_2810B4CE0);

      v46 = sub_22F740B70();
      v37 = sub_22F7415E0();

      if (os_log_type_enabled(v46, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v38 = 136315138;
        v40 = sub_22F145F20(v12, v14, &v48);

        *(v38 + 4) = v40;
        v41 = "GraphEntityRanker: MeaningLabel %s has no associated identifier defined";
LABEL_32:
        _os_log_impl(&dword_22F0FC000, v46, v37, v41, v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x2319033A0](v39, -1, -1);
        MEMORY[0x2319033A0](v38, -1, -1);

        return;
      }

LABEL_33:

      goto LABEL_34;
    }

    v25 = sub_22F740E20();
    v27 = v26;

    v28 = localizationKeyForMeaningLabel(v46);
    if (v28)
    {
      v47 = sub_22F740E20();
      v30 = v29;
      v31 = [a1 localizedName];
      if (!v31)
      {

        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v44 = sub_22F740B90();
        __swift_project_value_buffer(v44, qword_2810B4CE0);

        v46 = sub_22F740B70();
        v37 = sub_22F7415E0();

        if (os_log_type_enabled(v46, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v48 = v39;
          *v38 = 136315138;
          v45 = sub_22F145F20(v12, v14, &v48);

          *(v38 + 4) = v45;
          v41 = "GraphEntityRanker: MeaningLabel %s has no associated localized name";
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      v32 = v31;

      v14 = sub_22F740E20();
      v12 = v33;

      v34 = *a4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *a4;
      *a4 = 0x8000000000000000;
      sub_22F132944(v14, v12, v25, v27, v47, v30, isUniquelyReferenced_nonNull_native);

      *a4 = v48;
      [a5 addObject_];

      if (!__OFADD__(*a6, 1))
      {
        ++*a6;
        return;
      }

      __break(1u);
    }

    else
    {

      if (qword_2810A9400 == -1)
      {
        goto LABEL_26;
      }
    }

    swift_once();
LABEL_26:
    v42 = sub_22F740B90();
    __swift_project_value_buffer(v42, qword_2810B4CE0);

    v46 = sub_22F740B70();
    v37 = sub_22F7415E0();

    if (os_log_type_enabled(v46, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v48 = v39;
      *v38 = 136315138;
      v43 = sub_22F145F20(v12, v14, &v48);

      *(v38 + 4) = v43;
      v41 = "GraphEntityRanker: MeaningLabel %s has no associated localization key defined";
      goto LABEL_32;
    }

    goto LABEL_33;
  }
}

unint64_t sub_22F31C598(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 16))
  {
    result = sub_22F1235AC(result);
    if (v8)
    {
      v9 = (*(a5 + 56) + 16 * result);
      v10 = *v9;
      v11 = v9[1];
      swift_beginAccess();

      v12 = *(a6 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(a6 + 16);
      *(a6 + 16) = 0x8000000000000000;
      sub_22F12FF10(v10, v11, isUniquelyReferenced_nonNull_native, 1.0);

      *(a6 + 16) = v14;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_22F31C650(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = sub_22F740E20();
  v7 = v6;
  v8 = sub_22F741420();

  v4(a2, v5, v7, v8);
}

unint64_t sub_22F31C6FC(unint64_t result, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a6 + 16))
  {
    result = sub_22F1235AC(result);
    if (v10)
    {
      v11 = (*(a6 + 56) + 16 * result);
      v13 = *v11;
      v12 = v11[1];
      swift_beginAccess();
      v14 = *(a7 + 16);
      v15 = *(v14 + 16);

      if (v15 && (v16 = sub_22F1229E8(v13, v12), (v17 & 1) != 0))
      {
        v18 = *(*(v14 + 56) + 8 * v16);
        swift_endAccess();
        if (vabdd_f64(v18, a2) < 1.0e-10)
        {
          swift_beginAccess();
          v19 = *(a7 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(a7 + 16);
          *(a7 + 16) = 0x8000000000000000;
          sub_22F12FF10(v13, v12, isUniquelyReferenced_nonNull_native, 0.5);

          *(a7 + 16) = v21;
          return swift_endAccess();
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  return result;
}

void sub_22F31C830(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v11 = [a1 name];
  if (!v11)
  {
    sub_22F740E20();

    sub_22F740E20();
    v11 = sub_22F740DF0();
  }

  v12 = sub_22F740E20();
  v14 = v13;
  v15 = identifierForSeasonLabel(v11);

  if (!v15)
  {

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v33 = sub_22F740B90();
    __swift_project_value_buffer(v33, qword_2810B4CE0);
    osloga = sub_22F740B70();
    v34 = sub_22F7415E0();
    if (!os_log_type_enabled(osloga, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GraphEntityRanker: scoredSeasonEntities() unexpectedly encountered nil identifier.";
    goto LABEL_24;
  }

  v16 = sub_22F740E20();
  v18 = v17;

  v19 = [a1 localizedName];
  if (v19)
  {
    v20 = v19;
    oslog = sub_22F740E20();
    v22 = v21;

    swift_beginAccess();
    v23 = *a3;
    if (*(v23 + 16) && (v24 = sub_22F1229E8(v12, v14), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();

      v27 = *a6;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_22F13FB00(0, *(v27 + 2) + 1, 1, v27);
        *a6 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_22F13FB00((v29 > 1), v30 + 1, 1, v27);
        *a6 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[64 * v30];
      v31[32] = 7;
      v32 = *(&v46 + 3);
      *(v31 + 33) = v46;
      *(v31 + 9) = v32;
      *(v31 + 5) = oslog;
      *(v31 + 6) = v22;
      *(v31 + 7) = v16;
      *(v31 + 8) = v18;
      *(v31 + 9) = v26;
      *(v31 + 10) = a4;
      *(v31 + 11) = a5;
    }

    else
    {
      swift_endAccess();

      if (qword_2810A9400 != -1)
      {
        swift_once();
      }

      v37 = sub_22F740B90();
      __swift_project_value_buffer(v37, qword_2810B4CE0);

      v38 = sub_22F740B70();
      v39 = sub_22F7415E0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v40 = 136315138;
        v42 = sub_22F145F20(v12, v14, &v46);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_22F0FC000, v38, v39, "GraphEntityRanker: scoredSeasonEntries() no score for %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x2319033A0](v41, -1, -1);
        MEMORY[0x2319033A0](v40, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v43 = sub_22F740B90();
  __swift_project_value_buffer(v43, qword_2810B4CE0);
  osloga = sub_22F740B70();
  v34 = sub_22F7415E0();
  if (os_log_type_enabled(osloga, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "GraphEntityRanker: scoredSeasonEntities() unexpectedly encountered nil localized season name.";
LABEL_24:
    _os_log_impl(&dword_22F0FC000, osloga, v34, v36, v35, 2u);
    MEMORY[0x2319033A0](v35, -1, -1);
  }

LABEL_25:
}

uint64_t sub_22F31CD14(void *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, void *a6)
{
  v9 = [a1 collection];
  v10 = [v9 momentNodes];

  v11 = [v10 numberOfAssets];
  if (!__OFADD__(*a3, v11))
  {
    *a3 += v11;
    v12 = [a1 name];
    v13 = sub_22F740E20();
    v15 = v14;

    v16 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = *a4;
    *a4 = 0x8000000000000000;
    sub_22F131078(v11, v13, v15, isUniquelyReferenced_nonNull_native);

    v18 = *a4;
    *a4 = v93;

    v87 = a1;
    v19 = [a1 preciseLocalizedCategoryNames];
    v20 = sub_22F741420();

    v21 = 0;
    v22 = 0;
    v24 = v20 + 56;
    v23 = *(v20 + 56);
    v88 = v20;
    v25 = 1 << *(v20 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v23;
    v28 = (v25 + 63) >> 6;
    v90 = v11;
    if ((v26 & v23) == 0)
    {
LABEL_6:
      while (1)
      {
        v29 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v29 >= v28)
        {
          v86 = v21;

          v53 = [v87 performers];
          v54 = sub_22F741420();

          v55 = 0;
          v56 = 0;
          v92 = v54;
          v57 = 1 << *(v54 + 32);
          v58 = -1;
          if (v57 < 64)
          {
            v58 = ~(-1 << v57);
          }

          v59 = v54 + 56;
          v60 = v58 & *(v54 + 56);
          for (i = (v57 + 63) >> 6; v60; v56 = v62)
          {
            v62 = v56;
LABEL_29:
            v63 = (*(v92 + 48) + ((v62 << 10) | (16 * __clz(__rbit64(v60)))));
            v65 = *v63;
            v64 = v63[1];

            sub_22F107E14(v55);
            v66 = *a6;
            v67 = swift_isUniquelyReferenced_nonNull_native();
            v68 = *a6;
            *a6 = 0x8000000000000000;
            v70 = sub_22F1229E8(v65, v64);
            v71 = v68[2];
            v72 = (v69 & 1) == 0;
            v73 = v71 + v72;
            if (__OFADD__(v71, v72))
            {
              goto LABEL_49;
            }

            v74 = v69;
            if (v68[3] >= v73)
            {
              if ((v67 & 1) == 0)
              {
                sub_22F1341B0();
              }
            }

            else
            {
              sub_22F125704(v73, v67);
              v75 = sub_22F1229E8(v65, v64);
              if ((v74 & 1) != (v76 & 1))
              {
                goto LABEL_54;
              }

              v70 = v75;
            }

            v77 = *a6;
            *a6 = v68;

            v78 = *a6;
            if (v74)
            {
            }

            else
            {
              v78[(v70 >> 6) + 8] |= 1 << v70;
              v79 = (v78[6] + 16 * v70);
              *v79 = v65;
              v79[1] = v64;
              *(v78[7] + 8 * v70) = 0;
              v80 = v78[2];
              v48 = __OFADD__(v80, 1);
              v81 = v80 + 1;
              if (v48)
              {
                goto LABEL_52;
              }

              v78[2] = v81;
            }

            v82 = v78[7];
            v83 = *(v82 + 8 * v70);
            v48 = __OFADD__(v83, v90);
            v84 = v83 + v90;
            if (v48)
            {
              goto LABEL_50;
            }

            v60 &= v60 - 1;
            *(v82 + 8 * v70) = v84;
            v55 = sub_22F1C39C4;
          }

          while (1)
          {
            v62 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              break;
            }

            if (v62 >= i)
            {

              sub_22F107E14(v86);

              return sub_22F107E14(v55);
            }

            v60 = *(v59 + 8 * v62);
            ++v56;
            if (v60)
            {
              goto LABEL_29;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v27 = *(v24 + 8 * v29);
        ++v22;
        if (v27)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_46;
    }

    while (1)
    {
      v29 = v22;
LABEL_9:
      v30 = (*(v88 + 48) + ((v29 << 10) | (16 * __clz(__rbit64(v27)))));
      v32 = *v30;
      v31 = v30[1];

      sub_22F107E14(v21);
      v33 = *a5;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = *a5;
      *a5 = 0x8000000000000000;
      v37 = sub_22F1229E8(v32, v31);
      v38 = v35[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        break;
      }

      v41 = v36;
      if (v35[3] >= v40)
      {
        if ((v34 & 1) == 0)
        {
          sub_22F1341B0();
        }
      }

      else
      {
        sub_22F125704(v40, v34);
        v42 = sub_22F1229E8(v32, v31);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_54;
        }

        v37 = v42;
      }

      v44 = *a5;
      *a5 = v35;

      v45 = *a5;
      if (v41)
      {
      }

      else
      {
        v45[(v37 >> 6) + 8] |= 1 << v37;
        v46 = (v45[6] + 16 * v37);
        *v46 = v32;
        v46[1] = v31;
        *(v45[7] + 8 * v37) = 0;
        v47 = v45[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_51;
        }

        v45[2] = v49;
      }

      v50 = v45[7];
      v51 = *(v50 + 8 * v37);
      v48 = __OFADD__(v51, v90);
      v52 = v51 + v90;
      if (v48)
      {
        goto LABEL_48;
      }

      v27 &= v27 - 1;
      *(v50 + 8 * v37) = v52;
      v21 = sub_22F1C39C4;
      v22 = v29;
      if (!v27)
      {
        goto LABEL_6;
      }
    }

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
    __break(1u);
  }

  __break(1u);
LABEL_54:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F31D2D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = a3;

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v16 << 6);
      v20 = *(*(a1 + 56) + 8 * v19) / v14;
      if (v20 > 0.0)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v22 = (*(a1 + 48) + 16 * v19);
    v27 = *v22;
    v28 = v22[1];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22F13FB00(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v24 = *(v17 + 16);
    v23 = *(v17 + 24);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      result = sub_22F13FB00((v23 > 1), v24 + 1, 1, v17);
      v25 = v24 + 1;
      v17 = result;
    }

    *(v17 + 16) = v25;
    v26 = v17 + (v24 << 6);
    *(v26 + 32) = v8;
    *(v26 + 33) = *v29;
    *(v26 + 36) = *&v29[3];
    *(v26 + 40) = v27;
    *(v26 + 48) = v28;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    *(v26 + 72) = v20;
    *(v26 + 80) = a4;
    *(v26 + 88) = a5;
  }

  while (v12);
LABEL_6:
  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v13)
    {

      return v17;
    }

    v12 = *(v9 + 8 * v21);
    ++v16;
    if (v12)
    {
      v16 = v21;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F31D490(void *a1)
{
  v1 = [a1 name];
  v2 = sub_22F740E20();
  v4 = v3;

  sub_22F10BBDC(&v6, v2, v4);
}

void sub_22F31D50C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_22F73F690();
  sub_22F741180();
  v5 = a2;
  v4();
}

uint64_t sub_22F31D59C(void *a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v16 = [a1 name];
  v17 = sub_22F740E20();
  v19 = v18;

  v20 = [a1 localizedName];
  if (v20)
  {
    v21 = v20;
    v31 = a6;
    v32 = sub_22F740E20();
    v23 = v22;

    if ([a1 numberOfMomentNodes] >= 1)
    {
      v24 = *a4;

      v25 = sub_22F15E910(v17, v19, v24);

      if (v25)
      {
        a2 = [a1 numberOfMomentNodes] / a5;
        *v31 = 1;
      }

      v26 = *a9;

      result = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v26;
      if ((result & 1) == 0)
      {
        result = sub_22F13FB00(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
        *a9 = result;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_22F13FB00((v28 > 1), v29 + 1, 1, v26);
        v26 = result;
        *a9 = result;
      }

      *(v26 + 16) = v29 + 1;
      v30 = v26 + (v29 << 6);
      *(v30 + 32) = 11;
      *(v30 + 33) = *v34;
      *(v30 + 36) = *&v34[3];
      *(v30 + 40) = v32;
      *(v30 + 48) = v23;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      *(v30 + 72) = a2;
      *(v30 + 80) = a7;
      *(v30 + 88) = a8;
      return result;
    }
  }
}

void sub_22F31D7C8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  if ([a1 isTrip])
  {
    type metadata accessor for TripTitleGenerator();
    v9 = [a1 collection];
    v10 = [v9 tripFeatureNodes];
    v11 = [v9 momentNodes];
    v12 = static TripTitleGenerator.title(for:momentNodes:locationHelper:)(v10, v11, a3);
    v14 = v13;

    v15 = v12;
    v16 = [a1 collection];
    v17 = [v16 momentNodes];

    v18 = [v17 numberOfAssets];
    if (__OFADD__(*a4, v18))
    {
      __break(1u);
    }

    else
    {
      *a4 += v18;
      v19 = *a5;
      v20 = *(*a5 + 16);
      if (v20)
      {
        v21 = sub_22F1229E8(v15, v14);
        if (v22)
        {
          v20 = *(*(v19 + 56) + 8 * v21);
        }

        else
        {
          v20 = 0;
        }
      }

      if (v18 <= v20)
      {
        v18 = v20;
      }

      v23 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *a5;
      *a5 = 0x8000000000000000;
      sub_22F131078(v18, v15, v14, isUniquelyReferenced_nonNull_native);

      v25 = *a5;
      *a5 = v26;
    }
  }
}

uint64_t sub_22F31DB54(void *a1, uint64_t a2, void *a3, uint64_t *a4, void *a5)
{
  v8 = [a1 collection];
  v9 = [v8 momentNodes];

  v10 = [v9 numberOfAssets];
  v64 = v10;
  if (__OFADD__(*a3, v10))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  *a3 += v10;
  v11 = [a1 name];
  v12 = sub_22F740E20();
  v14 = v13;

  v15 = *a4;
  if (*(*a4 + 16))
  {
    v16 = sub_22F1229E8(v12, v14);
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v15 + 56) + 8 * v16);
      goto LABEL_7;
    }
  }

  else
  {
  }

  v19 = 0;
LABEL_7:
  v20 = [a1 name];
  v21 = sub_22F740E20();
  v23 = v22;

  if (v10 <= v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = v10;
  }

  v25 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *a4;
  *a4 = 0x8000000000000000;
  sub_22F131078(v24, v21, v23, isUniquelyReferenced_nonNull_native);

  v27 = *a4;
  *a4 = v66;

  v28 = [a1 businessCategories];
  v29 = sub_22F741420();

  v30 = 0;
  v31 = 0;
  v33 = v29 + 56;
  v32 = *(v29 + 56);
  v63 = v29;
  v34 = 1 << *(v29 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v37 = (v34 + 63) >> 6;
  if ((v35 & v32) != 0)
  {
    while (1)
    {
      v38 = v31;
LABEL_17:
      v39 = (*(v63 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
      v41 = *v39;
      v40 = v39[1];

      sub_22F107E14(v30);
      v42 = *a5;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v44 = *a5;
      *a5 = 0x8000000000000000;
      v46 = sub_22F1229E8(v41, v40);
      v47 = v44[2];
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        break;
      }

      v50 = v45;
      if (v44[3] >= v49)
      {
        if ((v43 & 1) == 0)
        {
          sub_22F1341B0();
        }
      }

      else
      {
        sub_22F125704(v49, v43);
        v51 = sub_22F1229E8(v41, v40);
        if ((v50 & 1) != (v52 & 1))
        {
          goto LABEL_38;
        }

        v46 = v51;
      }

      v53 = *a5;
      *a5 = v44;

      v54 = *a5;
      if (v50)
      {
      }

      else
      {
        v54[(v46 >> 6) + 8] |= 1 << v46;
        v55 = (v54[6] + 16 * v46);
        *v55 = v41;
        v55[1] = v40;
        *(v54[7] + 8 * v46) = 0;
        v56 = v54[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_36;
        }

        v54[2] = v58;
      }

      v59 = v54[7];
      v60 = *(v59 + 8 * v46);
      v57 = __OFADD__(v60, v64);
      v61 = v60 + v64;
      if (v57)
      {
        goto LABEL_35;
      }

      v36 &= v36 - 1;
      *(v59 + 8 * v46) = v61;
      v30 = sub_22F1C39C4;
      v31 = v38;
      if (!v36)
      {
        goto LABEL_14;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  while (1)
  {
LABEL_14:
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v38 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v38);
    ++v31;
    if (v36)
    {
      goto LABEL_17;
    }
  }

  return sub_22F107E14(v30);
}