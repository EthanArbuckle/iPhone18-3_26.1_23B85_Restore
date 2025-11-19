uint64_t sub_188B42904(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA938C20);
  v38 = a2;
  result = sub_18A4A8468();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 48 * v21;
      v26 = *(v25 + 8);
      v41 = *(v25 + 16);
      v42 = *v25;
      v27 = *(v25 + 24);
      v39 = *(v25 + 33);
      v40 = *(v25 + 32);
      v28 = *(v25 + 40);
      if ((v38 & 1) == 0)
      {
      }

      sub_18A4A8888();
      sub_18A4A7348();
      result = sub_18A4A88E8();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v42;
      *(v17 + 8) = v26;
      *(v17 + 16) = v41;
      *(v17 + 24) = v27;
      *(v17 + 32) = v40;
      *(v17 + 33) = v39;
      *(v17 + 40) = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_188B42BFC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_18A4A85F8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_18A4A75D8();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1891CE20C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_188B46318(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_188B42D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_188A34624(0, &qword_1ED490230);
    for (i = v2 - 1; ; --i)
    {
      v6 = v3[1];
      v18 = *v3;
      v19 = v6;
      v7 = v3[3];
      v20 = v3[2];
      v21 = v7;
      v8 = v3[4];
      v9 = v4[3];
      v25 = v4[2];
      v26 = v9;
      v27 = v4[4];
      v10 = *v4;
      v24 = v4[1];
      v22 = v8;
      v23 = v10;
      sub_188B8B3D0(&v18, v17);
      sub_188B8B3D0(&v23, v17);
      if ((sub_18A4A7C88() & 1) == 0)
      {
        break;
      }

      if (BYTE8(v18) != BYTE8(v23))
      {
        break;
      }

      if (*&v19 != *&v24)
      {
        break;
      }

      v28.origin.x = *(&v19 + 1);
      *&v28.origin.y = v20;
      v12 = *(&v21 + 1);
      *&v28.size.height = v21;
      v11 = *&v22;
      v29.origin.x = *(&v24 + 1);
      *&v29.origin.y = v25;
      v14 = *(&v26 + 1);
      *&v29.size.height = v26;
      v13 = *&v27;
      if (!CGRectEqualToRect(v28, v29) || v12 != v14 || v11 != v13)
      {
        break;
      }

      v15 = sub_188B8C0E8(*(&v22 + 1), *(&v27 + 1));
      sub_188B8BA00(&v23);
      sub_188B8BA00(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      if (!i)
      {
        return 1;
      }

      v4 += 5;
      v3 += 5;
    }

    sub_188B8BA00(&v23);
    sub_188B8BA00(&v18);
  }

  return 0;
}

uint64_t sub_188B42F08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_188B42F50(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_188B42FA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_38:
      v1 = sub_189212B60(v1);
    }

    v3 = 0;
    v34 = v1;
    v35 = v1 + 32;
    v33 = v2;
    do
    {
      if (v3 == v2)
      {
        goto LABEL_35;
      }

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_36;
      }

      v4 = &v35[56 * v3];
      v5 = *v4;
      v38 = *(v4 + 2);
      v39 = *(v4 + 1);
      v36 = *(v4 + 4);
      v37 = *(v4 + 3);
      v6 = v4[40];
      v7 = *(v4 + 6);
      v40 = v6;
      v1 = *(*v4 + 16);
      if (v1)
      {
        swift_bridgeObjectRetain_n();
        v8 = v7;
        v9 = 0;
        v2 = 128;
        v10 = v5;
        while (v9 < *(v10 + 2))
        {
          v11 = (v9 + 1);
          v12 = &v10[v2];
          if ((v10[v2 - 64] & 1) == 0)
          {
            v13 = *(v12 - 12);
            v14 = *(v12 - 11);
            v15 = *(v12 - 10);
            v16 = *(v12 - 9);
            if (v9)
            {
              MaxX = CGRectGetMaxX(*&v10[v2 - 168]);
              v41.origin.x = v13;
              v41.origin.y = v14;
              v41.size.width = v15;
              v41.size.height = v16;
              MinX = (MaxX + CGRectGetMinX(v41)) * 0.5;
            }

            else
            {
              MinX = CGRectGetMinX(*(v0 + 8));
            }

            if (v11 >= *(v10 + 2))
            {
              v20 = CGRectGetMaxX(*(v0 + 8));
            }

            else
            {
              v19 = CGRectGetMinX(*&v10[v2 - 24]);
              v42.origin.x = v13;
              v42.origin.y = v14;
              v42.size.width = v15;
              v42.size.height = v16;
              v20 = (v19 + CGRectGetMaxX(v42)) * 0.5;
            }

            v43.origin.x = v13;
            v43.origin.y = v14;
            v43.size.width = v15;
            v43.size.height = v16;
            v21 = MinX - CGRectGetMinX(v43);
            if (v21 > -22.0)
            {
              v22 = v21;
            }

            else
            {
              v22 = -22.0;
            }

            v44.origin.x = v13;
            v44.origin.y = v14;
            v44.size.width = v15;
            v44.size.height = v16;
            v23 = CGRectGetMaxX(v44) - v20;
            if (v23 > -22.0)
            {
              v24 = v23;
            }

            else
            {
              v24 = -22.0;
            }

            v45.origin.x = v13;
            v45.origin.y = v14;
            v45.size.width = v15;
            v45.size.height = v16;
            MinY = CGRectGetMinY(v45);
            v46.origin.y = v38;
            v46.origin.x = v39;
            v46.size.height = v36;
            v46.size.width = v37;
            Height = CGRectGetHeight(v46);
            v47.origin.x = v13;
            v47.origin.y = v14;
            v47.size.width = v15;
            v47.size.height = v16;
            MaxY = CGRectGetMaxY(v47);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_188C40B18(v10);
            }

            if (v9 >= *(v10 + 2))
            {
              goto LABEL_34;
            }

            v28 = &v10[v2];
            *(v28 - 7) = fmin(-MinY, 0.0);
            *(v28 - 6) = fmin(v22, 0.0);
            *(v28 - 5) = fmin(-(Height - MaxY), 0.0);
            *(v28 - 4) = fmin(v24, 0.0);
          }

          v2 += 72;
          ++v9;
          if (v1 == v11)
          {
            v6 = v40;
            v2 = v33;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v29 = v7;
      swift_bridgeObjectRetain_n();
      v10 = v5;
LABEL_29:

      v1 = v34;
      v30 = *(v34 + 2);

      v31 = v7;
      if (v3 >= v30)
      {
        goto LABEL_37;
      }

      ++v3;
      v32 = *(v4 + 6);
      *v4 = v10;
      *(v4 + 1) = v39;
      *(v4 + 2) = v38;
      *(v4 + 3) = v37;
      *(v4 + 4) = v36;
      v4[40] = v6;
      *(v4 + 6) = v7;

      swift_bridgeObjectRelease_n();
    }

    while (v3 != v2);
    *v0 = v34;
  }
}

void sub_188B4336C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout);
  v47 = *(v2 + 16);
  if (!v47)
  {
    return;
  }

  v48 = v2 + 32;

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v45 = v2;
  v46 = a1;
  while (1)
  {
    if (v4 >= *(v2 + 16))
    {
      goto LABEL_84;
    }

    v6 = *(v48 + 24 * v4);
    v7 = *(a1 + 32);
    v8 = v6 >> 62;
    v49 = v5;
    v50 = v4;
    if (!v7)
    {
      break;
    }

    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = sub_18A4A7F68();
    }

    else
    {
      v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v10)
    {
      v51 = v9;
      v52 = v7;
      v11 = 0;
      v12 = MEMORY[0x1E69E7CC0];
      v13 = v10;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v14 = sub_188E49D08(v11, v6);
        }

        else
        {
          if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v14 = *(v6 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (*(v14 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__spilled))
        {
          goto LABEL_22;
        }

        if (*(v14 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact) == 1)
        {
          v17 = v51;
          if (!*(v51 + 16))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v17 = v52;
          if (!*(v52 + 16))
          {
            goto LABEL_22;
          }
        }

        v18 = sub_188A403F4(v14);
        if (v19)
        {
          v20 = *(*(v17 + 56) + 8 * v18);

          goto LABEL_23;
        }

LABEL_22:
        v20 = MEMORY[0x1E69E7CC0];
LABEL_23:

        v21 = *(v20 + 16);
        v22 = *(v12 + 2);
        v23 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_74;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v23 <= *(v12 + 3) >> 1)
        {
          if (*(v20 + 16))
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v22 <= v23)
          {
            v25 = v22 + v21;
          }

          else
          {
            v25 = v22;
          }

          v12 = sub_188C4108C(isUniquelyReferenced_nonNull_native, v25, 1, v12);
          if (*(v20 + 16))
          {
LABEL_32:
            if ((*(v12 + 3) >> 1) - *(v12 + 2) < v21)
            {
              goto LABEL_76;
            }

            swift_arrayInitWithCopy();

            if (v21)
            {
              v26 = *(v12 + 2);
              v27 = __OFADD__(v26, v21);
              v28 = v26 + v21;
              if (v27)
              {
                goto LABEL_81;
              }

              *(v12 + 2) = v28;
            }

            goto LABEL_10;
          }
        }

        if (v21)
        {
          goto LABEL_75;
        }

LABEL_10:
        ++v11;
        if (v16 == v13)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_62:
    v12 = MEMORY[0x1E69E7CC0];
LABEL_63:

    v5 = v49;
    v2 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_188C40F34(0, v49[2] + 1, 1, v49);
    }

    v44 = v5[2];
    v43 = v5[3];
    if (v44 >= v43 >> 1)
    {
      v5 = sub_188C40F34((v43 > 1), v44 + 1, 1, v5);
    }

    v4 = v50 + 1;
    v5[2] = v44 + 1;
    v5[v44 + 4] = v12;
    a1 = v46;
    if (v50 + 1 == v47)
    {

      return;
    }
  }

  if (v8)
  {
    v29 = sub_18A4A7F68();
  }

  else
  {
    v29 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v29)
  {
    goto LABEL_62;
  }

  v30 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v31 = v29;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v32 = sub_188E49D08(v30, v6);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v30 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      v32 = *(v6 + 8 * v30 + 32);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_77;
      }
    }

    v34 = v32;
    v35 = sub_18907CFE0();

    v36 = *(v35 + 16);
    v37 = *(v12 + 2);
    v38 = v37 + v36;
    if (__OFADD__(v37, v36))
    {
      break;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    if (v39 && v38 <= *(v12 + 3) >> 1)
    {
      if (!*(v35 + 16))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v37 <= v38)
      {
        v40 = v37 + v36;
      }

      else
      {
        v40 = v37;
      }

      v12 = sub_188C4108C(v39, v40, 1, v12);
      if (!*(v35 + 16))
      {
LABEL_41:

        if (v36)
        {
          goto LABEL_80;
        }

        goto LABEL_42;
      }
    }

    if ((*(v12 + 3) >> 1) - *(v12 + 2) < v36)
    {
      goto LABEL_82;
    }

    swift_arrayInitWithCopy();

    if (v36)
    {
      v41 = *(v12 + 2);
      v27 = __OFADD__(v41, v36);
      v42 = v41 + v36;
      if (v27)
      {
        goto LABEL_83;
      }

      *(v12 + 2) = v42;
    }

LABEL_42:
    ++v30;
    if (v33 == v31)
    {
      goto LABEL_63;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

unint64_t sub_188B43844(uint64_t a1, double a2)
{
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F9A0);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v147 - v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v84 = MEMORY[0x1E69E7CC0];

    return sub_188E8DF98(v84);
  }

  v150 = v5;
  v8 = MEMORY[0x1E69E7CC0];
  v159 = a1;
  v160 = MEMORY[0x1E69E7CC8];
  v9 = (a1 + 72);
  while (1)
  {
    v10 = v8;
    v11 = *(v9 - 4);
    v12 = *(v9 - 3);
    v13 = *(v9 - 2);
    v14 = *(v9 - 8);
    v15 = *v9;
    *&v185 = *(v9 - 5);
    v8 = v185;
    *(&v185 + 1) = v11;
    *&v186 = v12;
    *(&v186 + 1) = v13;
    LOBYTE(v187) = v14;
    *(&v187 + 1) = v15;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v16 = v160;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v176 = v16;
    v18 = sub_188B0944C(v8, v11);
    v20 = v16[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
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
      goto LABEL_119;
    }

    v24 = v19;
    if (v16[3] < v23)
    {
      sub_188B42584(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_188B0944C(v8, v11);
      if ((v24 & 1) != (v25 & 1))
      {
LABEL_121:
        sub_18A4A87A8();
        __break(1u);
LABEL_122:
        *&v176 = 0;
        *(&v176 + 1) = 0xE000000000000000;
        sub_18A4A80E8();

        *&v176 = 0xD00000000000002ALL;
        *(&v176 + 1) = 0x800000018A6AFE70;
        v143 = sub_1891CD8E0();
        v7 = v144;
        MEMORY[0x18CFE22D0](v143);

        goto LABEL_27;
      }

      goto LABEL_10;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      break;
    }

LABEL_10:
    v26 = v176;
    if (v24)
    {
      goto LABEL_26;
    }

LABEL_11:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    v27 = (v26[6] + 16 * v18);
    *v27 = v8;
    v27[1] = v11;
    v28 = (v26[7] + 48 * v18);
    v29 = v186;
    *v28 = v185;
    v28[1] = v29;
    v28[2] = v187;
    v30 = v26[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_109;
    }

    v26[2] = v31;
    v32 = *(v15 + 16);
    v8 = v10;
    v33 = *(v10 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_110;
    }

    v160 = v26;

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v8 + 3) >> 1, v36 >= v34))
    {
      if (!*(v15 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v8 = sub_188B466D8(v35, v37, 1, v8);
      v36 = *(v8 + 3) >> 1;
      if (!*(v15 + 16))
      {
LABEL_3:

        if (v32)
        {
          goto LABEL_111;
        }

        goto LABEL_4;
      }
    }

    if (v36 - *(v8 + 2) < v32)
    {
      goto LABEL_112;
    }

    swift_arrayInitWithCopy();

    if (v32)
    {
      v38 = *(v8 + 2);
      v22 = __OFADD__(v38, v32);
      v39 = v38 + v32;
      if (v22)
      {
        goto LABEL_117;
      }

      *(v8 + 2) = v39;
    }

LABEL_4:

    v9 += 6;
    if (!--v7)
    {
      goto LABEL_28;
    }
  }

  v40 = v18;
  sub_188FA3004();
  v18 = v40;
  v26 = v176;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v41 = (v26[7] + 48 * v18);
  v42 = v186;
  *v41 = v185;
  v41[1] = v42;
  v41[2] = v187;

  *&v176 = 0;
  *(&v176 + 1) = 0xE000000000000000;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000067, 0x800000018A6AFE00);
  sub_1891CD7E0(&v185);
LABEL_27:
  while (1)
  {
    sub_18A4A8398();
    __break(1u);
LABEL_28:
    *&v176 = v8;
    v43 = v159;

    sub_188B3BD78(&v176, v43);

    if (!v7)
    {
      break;
    }

    __break(1u);
LABEL_124:
    v161 = 0;
    v162 = 0xE000000000000000;
    sub_18A4A80E8();

    v161 = 0xD00000000000002ALL;
    v162 = 0x800000018A6AFE70;
    v145 = sub_1891CD8E0();
    v7 = v146;
    MEMORY[0x18CFE22D0](v145);
  }

  v44 = v176;
  v163 = v176;

  sub_18A4A8A68();
  v45 = *(v44 + 16);
  v155 = v44;
  v156 = v8;
  if (v45)
  {
    v46 = 0;
    *&v153 = v45;
    v149 = v45 - 1;
    v159 = MEMORY[0x1E69E7CC8];
    v2 = a2;
    while (2)
    {
      v47 = 40 * v46;
      while (1)
      {
        if (v46 >= *(v44 + 16))
        {
          goto LABEL_113;
        }

        v48 = v44 + v47;
        v49 = *(v44 + v47 + 32);
        v50 = *(v44 + v47 + 48);
        v184 = *(v44 + v47 + 64);
        v182 = v49;
        v183 = v50;
        v51 = *(v44 + v47 + 32);
        v52 = *(v48 + 40);
        v53 = *(v48 + 48);
        v54 = *(v48 + 56);
        LODWORD(v157) = *(v48 + 64);
        v158 = *(v48 + 65);
        v55 = *(&v49 + 1);
        v8 = v49;
        *&v154 = v46;
        v56 = v46 + 1;
        v57 = v159;
        v58 = *(v159 + 16);

        if (!v58)
        {
          break;
        }

        sub_188B0944C(v8, v55);
        v60 = v59;
        sub_188B42ED8(&v182);
        if ((v60 & 1) == 0)
        {
          break;
        }

        sub_188B42ED8(&v182);
        v47 += 40;
        v46 = v56;
        v44 = v155;
        if (v153 == v56)
        {
          goto LABEL_59;
        }
      }

      swift_bridgeObjectRetain_n();
      v61 = swift_isUniquelyReferenced_nonNull_native();
      *&v176 = v57;
      v63 = sub_188B0944C(v8, v55);
      v64 = *(v57 + 16);
      v65 = (v62 & 1) == 0;
      v66 = v64 + v65;
      if (__OFADD__(v64, v65))
      {
        goto LABEL_118;
      }

      v67 = v61;
      if (*(v57 + 24) >= v66)
      {
        if (v61)
        {
          v71 = *(&v183 + 1);
          if ((v62 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          LODWORD(v159) = v62;
          sub_188FA2E5C();
          v71 = *(&v183 + 1);
          if ((v159 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v68 = v62;
        sub_188B42904(v66, v67);
        v69 = sub_188B0944C(v8, v55);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_121;
        }

        v63 = v69;
        v71 = *(&v183 + 1);
        if ((v68 & 1) == 0)
        {
LABEL_46:
          v73 = v176;
          *(v176 + 8 * (v63 >> 6) + 64) |= 1 << v63;
          v74 = (v73[6] + 16 * v63);
          *v74 = v8;
          v74[1] = v55;
          v75 = v73[7] + 48 * v63;
          *v75 = v51;
          *(v75 + 8) = v52;
          *(v75 + 16) = v53;
          *(v75 + 24) = v54;
          *(v75 + 32) = v157;
          *(v75 + 33) = v158;
          *(v75 + 40) = v71;
          v76 = v73[2];
          v22 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v22)
          {
            __break(1u);
            goto LABEL_121;
          }

          v159 = v73;
          v73[2] = v77;
LABEL_48:
          if (!v160[2])
          {
            goto LABEL_122;
          }

          v78 = sub_188B0944C(v8, v55);
          if ((v79 & 1) == 0)
          {
            goto LABEL_122;
          }

          v80 = v2 - v71;
          v81 = *(v160[7] + 48 * v78 + 16);
          sub_188B42ED8(&v182);
          if (v71 <= 0.0)
          {
            v82 = 0.0;
          }

          else
          {
            v82 = v81;
          }

          v2 = v80 - v82;
          v83 = v154;
          *&v176 = v154;
          v44 = v155;
          v170 = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937CC8);
          sub_188A34360(&qword_1ED48CC58, &qword_1EA937CC8);
          sub_18A4A8A48();
          v46 = v56;
          if (v149 != v83)
          {
            continue;
          }

          goto LABEL_59;
        }
      }

      break;
    }

    sub_188B42ED8(&v182);
    v159 = v176;
    v72 = *(v176 + 56) + 48 * v63;
    *v72 = v51;
    *(v72 + 8) = v52;
    *(v72 + 16) = v53;
    *(v72 + 24) = v54;
    *(v72 + 32) = v157;
    *(v72 + 33) = v158;
    *(v72 + 40) = v71;

    goto LABEL_48;
  }

  v159 = MEMORY[0x1E69E7CC8];
  v2 = a2;
LABEL_59:
  sub_188B412BC(v152);
  if (qword_1ED48CD68 != -1)
  {
LABEL_119:
    swift_once();
  }

  v86 = sub_18A4A4378();
  v157 = __swift_project_value_buffer(v86, qword_1ED48CD70);
  v87 = sub_18A4A4358();
  v88 = sub_18A4A7968();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 134217984;
    *(v89 + 4) = a2;
    _os_log_impl(&dword_188A29000, v87, v88, "Available width: %f", v89, 0xCu);
    MEMORY[0x18CFEA5B0](v89, -1, -1);
  }

  if (v2 < -0.0001)
  {
    a2 = -v2;
    *&v90 = 134217984;
    v154 = v90;
    v2 = 0.0;
    *&v90 = 136315906;
    v147 = v90;
    *&v90 = 134218242;
    v153 = v90;
    do
    {
      v91 = v159;
      while (1)
      {
        v92 = v163;
        if (*(v163 + 2))
        {
          v93 = *(v163 + 4);
          v94 = *(v163 + 5);
          v95 = *(v163 + 6);
          v96 = *(v163 + 7);
          v158 = v163[64];
          v97 = v163[65];
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v158 = 0;
          v97 = 0;
          v96 = 0.0;
        }

        v98 = sub_18A4A4358();
        v99 = sub_18A4A7968();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          *v100 = v154;
          *(v100 + 4) = a2;
          _os_log_impl(&dword_188A29000, v98, v99, "Space to recover: %f", v100, 0xCu);
          v91 = v159;
          MEMORY[0x18CFEA5B0](v100, -1, -1);
        }

        if (!v94)
        {

          v140 = sub_18A4A4358();
          v141 = sub_18A4A7968();
          if (os_log_type_enabled(v140, v141))
          {
            v142 = swift_slowAlloc();
            *v142 = 0;
            _os_log_impl(&dword_188A29000, v140, v141, "We still have space to recover, but no more elements to recover the space from", v142, 2u);
            MEMORY[0x18CFEA5B0](v142, -1, -1);
          }

          (*(v150 + 8))(v152, v151);
          goto LABEL_107;
        }

        v164 = v93;
        v165 = v94;
        v166 = v95;
        v167 = v96;
        v168 = v158;
        v169 = v97;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v101 = *(v92 + 2);
          if (!v101)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v92 = sub_188B428F0(v92);
          v101 = *(v92 + 2);
          if (!v101)
          {
            goto LABEL_114;
          }
        }

        v8 = v95;
        v102 = v101 - 1;
        memmove(v92 + 32, v92 + 72, 40 * (v101 - 1));
        *(v92 + 2) = v102;

        v163 = v92;
        if (!*(v91 + 16))
        {
          goto LABEL_115;
        }

        v103 = sub_188B0944C(v93, v94);
        v105 = v104;

        if ((v105 & 1) == 0)
        {
          goto LABEL_116;
        }

        v106 = *(v91 + 56) + 48 * v103;
        v107 = *(v106 + 40);
        if (v96 < v107)
        {
          break;
        }

        if (v107 >= v96)
        {
        }

        else
        {

          v108 = sub_18A4A4358();
          v109 = sub_18A4A7968();

          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            v111 = swift_slowAlloc();
            v161 = v111;
            *v110 = v153;
            *(v110 + 4) = v107;
            *(v110 + 12) = 2080;
            v112 = sub_1891CD8E0();
            v114 = v113;

            v115 = sub_1891D69C0(v112, v114, &v161);

            *(v110 + 14) = v115;
            _os_log_impl(&dword_188A29000, v108, v109, "Ignoring higher priority candidate with a larger width than it is currently assigned. Current: %f. Candidate: %s", v110, 0x16u);
            __swift_destroy_boxed_opaque_existential_0Tm(v111);
            MEMORY[0x18CFEA5B0](v111, -1, -1);
            v91 = v159;
            MEMORY[0x18CFEA5B0](v110, -1, -1);
          }

          else
          {
          }
        }
      }

      v116 = *v106;
      v117 = *(v106 + 8);
      v149 = *(v106 + 16);
      v118 = *(v106 + 24);
      v148 = *(v106 + 32);
      v119 = *(v106 + 33);
      v120 = v160;
      v121 = v160[2];

      if (!v121)
      {
        goto LABEL_124;
      }

      v122 = sub_188B0944C(v93, v94);
      if ((v123 & 1) == 0)
      {
        goto LABEL_124;
      }

      if (v96 <= 0.0)
      {
        v124 = 0.0;
      }

      else
      {
        v124 = *(v120[7] + 48 * v122 + 16);
      }

      v125 = v96;
      v126 = v159;
      if (!((a2 >= v107 - (v96 + v124)) | v158 & 1))
      {
        if (!v120[2])
        {
          goto LABEL_124;
        }

        v127 = sub_188B0944C(v93, v94);
        v120 = v160;
        if ((v128 & 1) == 0)
        {
          goto LABEL_124;
        }

        v125 = v107 - a2;
        if (v107 - a2 <= 0.0)
        {
          v124 = 0.0;
        }

        else
        {
          v124 = *(v160[7] + 48 * v127 + 16);
        }
      }

      v170 = v116;
      v171 = v117;
      v172 = v149;
      v173 = v118;
      v174 = v148;
      v175 = v119;
      if (!v120[2])
      {
        goto LABEL_124;
      }

      v129 = sub_188B0944C(v116, v117);
      if ((v130 & 1) == 0)
      {
        goto LABEL_124;
      }

      v131 = *(v160[7] + 48 * v129 + 16);

      v132 = 0.0;
      if (v118 > 0.0)
      {
        v132 = v131;
      }

      v2 = 0.0;
      *&v176 = v93;
      *(&v176 + 1) = v94;
      v177 = v8;
      v133 = v107 - v125 - v124 + v132;
      v178 = v96;
      v179 = v158;
      v180 = v97;
      v181 = v125;

      v134 = swift_isUniquelyReferenced_nonNull_native();
      v161 = v126;
      sub_188CFC724(&v176, v93, v94, v134);
      v159 = v161;

      v135 = sub_18A4A4358();
      v136 = sub_18A4A7968();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v161 = v138;
        *v137 = v147;
        v139 = sub_1891D69C0(v93, v94, &v161);

        *(v137 + 4) = v139;
        *(v137 + 12) = 2048;
        *(v137 + 14) = v107;
        *(v137 + 22) = 2048;
        *(v137 + 24) = v125;
        *(v137 + 32) = 2048;
        *(v137 + 34) = v133;
        _os_log_impl(&dword_188A29000, v135, v136, "Changing resolved width for %s from %f to %f. Recovered %f", v137, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0Tm(v138);
        MEMORY[0x18CFEA5B0](v138, -1, -1);
        MEMORY[0x18CFEA5B0](v137, -1, -1);
      }

      else
      {
      }

      a2 = a2 - v133;
    }

    while (a2 > 0.0001);
  }

  (*(v150 + 8))(v152, v151);

  v91 = v159;
LABEL_107:

  return v91;
}

unint64_t sub_188B44888@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v4 = result;
  v6 = v3[13];
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    if (*(result + 16))
    {
      result = sub_188B0944C(v3[12], v6);
      if (v9)
      {
        v8 = *(*(v4 + 56) + 48 * result + 40);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_5:
  v10 = v3[7];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_28;
  }

  result = sub_188B0944C(v3[6], v10);
  if ((v11 & 1) == 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(*(v4 + 56) + 48 * result + 40);
LABEL_9:
  v12 = v3[25];
  v13 = 0;
  v14 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_30;
  }

  result = sub_188B0944C(v3[24], v12);
  if ((v15 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = *(*(v4 + 56) + 48 * result + 40);
LABEL_13:
  v16 = v3[19];
  if (!v16)
  {
    goto LABEL_17;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_32;
  }

  result = sub_188B0944C(v3[18], v16);
  if ((v17 & 1) == 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = *(*(v4 + 56) + 48 * result + 40);
LABEL_17:
  v18 = v3[31];
  v19 = 0;
  v20 = 0;
  if (!v18)
  {
    goto LABEL_21;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_34;
  }

  result = sub_188B0944C(v3[30], v18);
  if ((v21 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = *(*(v4 + 56) + 48 * result + 40);
LABEL_21:
  v22 = v3[37];
  if (!v22)
  {
LABEL_25:
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v14;
    a2[3] = v13;
    a2[4] = v20;
    a2[5] = v19;
    return result;
  }

  if (!*(v4 + 16))
  {
    goto LABEL_36;
  }

  result = sub_188B0944C(v3[36], v22);
  if (v23)
  {
    v19 = *(*(v4 + 56) + 48 * result + 40);
    goto LABEL_25;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_188B44A2C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = &v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];
  v8 = *&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content];
  v9 = *&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_content + 8];

  if (sub_188B42D44(a1, v8))
  {
    v10 = sub_188B49C6C(a2, v9);

    if (v10)
    {
      return result;
    }
  }

  else
  {
  }

  *v7 = a1;
  v7[1] = a2;

  if (!*&v3[OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_overrideContent])
  {
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = 1;
    *(v13 + 25) = a3 & 1;
    *(v13 + 26) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_188B62BD0;
    *(v14 + 24) = v13;
    v17[4] = sub_188A4B574;
    v17[5] = v14;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_188A4A968;
    v17[3] = &block_descriptor_63;
    v15 = _Block_copy(v17);
    v16 = v3;

    [(UITraitCollection *)v12 _performWithFallbackEnvironment:v16 block:v15];
    _Block_release(v15);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_188B44C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 27, 7);
}

uint64_t sub_188B44CA0(_OWORD *a1, double a2)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  v7 = a1[1];
  *(v6 + 24) = *a1;
  *(v6 + 40) = v7;
  *(v6 + 56) = a1[2];
  *(v6 + 72) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_188B42888;
  *(v8 + 24) = v6;
  v14[4] = sub_188A4B574;
  *&v15.origin.x = v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_188A4A968;
  v14[3] = &block_descriptor_90_4;
  v9 = _Block_copy(v14);
  v10 = v2;
  sub_188A3F29C(a1, &v16, &unk_1EA93B3D8);

  [v5 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 56];
    v21 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 72];
    v22[0] = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 88];
    *(v22 + 10) = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 98];
    v17 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 8];
    v18 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 24];
    v19 = *&v10[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 40];
    sub_188B4336C(a1);
    v16 = a2;
    sub_188B45920(v12, &v16, v14);

    CGRectGetWidth(v15);
    v13 = sub_188B3EF60(v14);
    sub_188B42530(v14);

    return v13;
  }

  return result;
}

uint64_t sub_188B44EF8()
{
  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void sub_188B44F48(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  v111 = a3;
  v114 = a10;
  v100 = a8;
  v99 = a7;
  v96 = a4;
  v107 = sub_18A4A2B48();
  v15 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[5];
  v126 = a2[4];
  v127 = v17;
  v128 = a2[6];
  v129 = *(a2 + 56);
  v18 = a2[1];
  v122 = *a2;
  v123 = v18;
  v19 = a2[2];
  v20 = a2[3];
  v117 = a2;
  v124 = v19;
  v125 = v20;
  v98 = *(a1 + 16);
  if (v98)
  {
    v21 = 0;
    v97 = a1 + 32;
    v105 = v15 + 32;
    v22 = MEMORY[0x1E69E7CC0];
    v113 = *&UIEdgeInsetsZero.top;
    v112 = *&UIEdgeInsetsZero.bottom;
    v110 = 0.0;
    v23 = a5;
    v104.size.height = 0.0;
    v104.size.width = 0.0;
    v104.origin.y = a6;
    v104.origin.x = a5;
    v24 = v117;
    v103 = a5;
    v106 = v15;
    while (1)
    {
      v25 = *(v97 + 8 * v21);
      v26 = *(v24 + 112);
      v27 = *(v25 + 16);
      v108 = v21;
      if (v26)
      {
        if (v27 == 1)
        {
          if (*(v25 + 80) < 0)
          {
            v116 = 0;
          }

          else
          {
            v116 = *(v25 + 65) & 1;
          }

          v27 = 1;
        }

        else
        {
          v116 = 0;
        }
      }

      else
      {
        v116 = 1;
      }

      v102 = v22;

      swift_beginAccess();
      v101 = v23;
      if (v27)
      {
        v28 = 0;
        v29 = 0;
        v30 = (v25 + 80);
        v120 = MEMORY[0x1E69E7CC0];
        v115 = v25;
        v118 = v27;
        while (v28 < *(v25 + 16))
        {
          v32 = *(v30 - 6);
          v31 = *(v30 - 5);
          v34 = *(v30 - 4);
          v33 = *(v30 - 3);
          v36 = *(v30 - 2);
          v35 = *(v30 - 1);
          v37 = *v30;
          if (v37 < 0)
          {
            v65 = 0.0;
            if ((v31 & 1) == 0)
            {
              v65 = v24[4];
              if (v65 < *&v32)
              {
                v65 = *(v30 - 6);
              }
            }

            v23 = v23 + v65;
            sub_18907F470(*(v30 - 6), *(v30 - 5), *(v30 - 4), *(v30 - 3), *(v30 - 2), v35, *v30);
          }

          else
          {
            v38 = v24[5];
            v39 = v114;
            if ((v37 & 1) == 0)
            {
              v39 = a9;
            }

            if (v116)
            {
              v39 = a9;
            }

            v40 = v23 + v38;
            if (v39 <= *&v33)
            {
              v41 = v39;
            }

            else
            {
              v41 = *(v30 - 3);
            }

            if (v29)
            {
              v40 = v40 + v24[4];
            }

            v42 = *(v30 - 4);
            if (v24[8] < *&v32)
            {
              v43 = *(v30 - 6);
            }

            else
            {
              v43 = v24[8];
            }

            v119 = *(v30 - 1);
            if (*&v34 - v43 <= 0.0 || v42 - v43 <= 0.0)
            {
              sub_18907F470(v32, v31, v34, v33, v36, v35, v37);
            }

            else
            {
              v44 = v35;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937BF0);
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_18A64BFA0;
              *(v45 + 32) = v108;
              *(v45 + 40) = v28;
              sub_18907F470(v32, v31, v34, v33, v36, v44, v37);
              MEMORY[0x18CFDDA80](v45);
              v46 = v111;
              v47 = *(v111 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v46 + 16) = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v47 = sub_188E4BB58(0, v47[2] + 1, 1, v47);
                *(v111 + 16) = v47;
              }

              v50 = v47[2];
              v49 = v47[3];
              v51 = v50 + 1;
              if (v50 >= v49 >> 1)
              {
                v95 = v50 + 1;
                v66 = sub_188E4BB58(v49 > 1, v50 + 1, 1, v47);
                v51 = v95;
                v47 = v66;
              }

              v110 = v110 + *&v34 - v43;
              v47[2] = v51;
              (*(v106 + 32))(v47 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v50, v109, v107);
              *(v111 + 16) = v47;
              v24 = v117;
            }

            v52 = UIRectIntegralWithScale(v40, (v24[1] - v41) * 0.5 + a6, v43, v41, v24[3]);
            v54 = v53;
            v56 = v55;
            v58 = v57;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v120 = sub_188C40F58(0, *(v120 + 2) + 1, 1, v120);
            }

            v60 = *(v120 + 2);
            v59 = *(v120 + 3);
            if (v60 >= v59 >> 1)
            {
              v120 = sub_188C40F58((v59 > 1), v60 + 1, 1, v120);
            }

            v61 = v120;
            *(v120 + 2) = v60 + 1;
            v62 = &v61[72 * v60];
            *(v62 + 4) = v52;
            *(v62 + 5) = v54;
            *(v62 + 6) = v56;
            *(v62 + 7) = v58;
            v62[64] = v36 & 1;
            v63 = *&v121[3];
            *(v62 + 65) = *v121;
            *(v62 + 17) = v63;
            *(v62 + 72) = v113;
            *(v62 + 88) = v112;
            v130.origin.x = v52;
            v130.origin.y = v54;
            v130.size.width = v56;
            v130.size.height = v58;
            Width = CGRectGetWidth(v130);
            sub_18907F47C(v32, v31, v34, v33, v36, v119, v37);
            v23 = v38 + v40 + Width;
            v24 = v117;
            v25 = v115;
          }

          ++v28;
          v29 = v37 >= 0;
          v30 += 56;
          if (v118 == v28)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        return;
      }

      v120 = MEMORY[0x1E69E7CC0];
LABEL_48:
      v67 = *(v25 + 16);
      if (v67 == 1)
      {
        v22 = v102;
        if (*(v24 + 113))
        {
          v68 = *(v25 + 32);
          v69 = *(v25 + 40);
          v70 = *(v25 + 48);
          v71 = *(v25 + 56);
          v72 = *(v25 + 64);
          v73 = *(v25 + 72);
          v74 = *(v25 + 80);
          sub_18907F470(v68, v69, v70, v71, v72, v73, *(v25 + 80));

          if ((v74 & 0x80000000) == 0)
          {
            if ((v72 & 0x10000) != 0)
            {
              v24 = v117;
              if (!v73)
              {
                v73 = [objc_opt_self() tintColor];
              }

              goto LABEL_56;
            }

            sub_18907F47C(v68, v69, v70, v71, v72, v73, v74);
          }

          v73 = 0;
          v24 = v117;
        }

        else
        {

          v73 = 0;
        }
      }

      else
      {

        v73 = 0;
        v22 = v102;
      }

LABEL_56:
      v75 = v101;
      v131.origin.x = v103;
      v131.origin.y = a6;
      v131.size.width = v99;
      v131.size.height = v100;
      Height = CGRectGetHeight(v131);
      v77 = UIRectIntegralWithScale(v75, a6, v23 - v75, Height, v24[3]);
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v132.origin.x = v77;
      v132.origin.y = v78;
      v132.size.width = v80;
      v132.size.height = v82;
      v104 = CGRectUnion(v104, v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_188C4153C(0, *(v22 + 2) + 1, 1, v22);
      }

      v85 = *(v22 + 2);
      v84 = *(v22 + 3);
      if (v85 >= v84 >> 1)
      {
        v22 = sub_188C4153C((v84 > 1), v85 + 1, 1, v22);
      }

      *(v22 + 2) = v85 + 1;
      v86 = &v22[56 * v85];
      *(v86 + 4) = v120;
      v87 = v116 ^ 1;
      *(v86 + 5) = v77;
      *(v86 + 6) = v79;
      *(v86 + 7) = v81;
      *(v86 + 8) = v83;
      v86[72] = v87;
      *(v86 + 10) = v73;
      v24 = v117;
      if (v67)
      {
        v23 = v23 + v117[7];
      }

      v21 = v108 + 1;
      a5 = v103;
      if (v108 + 1 == v98)
      {
        goto LABEL_65;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
  v110 = 0.0;
  v104.origin.x = a5;
  v104.origin.y = a6;
  v104.size.width = 0.0;
  v104.size.height = 0.0;
LABEL_65:
  v88 = v96;
  *v96 = v22;
  *(v88 + 1) = a5;
  *(v88 + 2) = a6;
  v89 = v100;
  *(v88 + 3) = v99;
  *(v88 + 4) = v89;
  y = v104.origin.y;
  v88[5] = *&v104.origin.x;
  *(v88 + 6) = y;
  v91 = v104.size.height;
  v88[7] = *&v104.size.width;
  *(v88 + 8) = v91;
  *(v88 + 9) = v110;
  v92 = v127;
  *(v88 + 9) = v126;
  *(v88 + 10) = v92;
  *(v88 + 11) = v128;
  *(v88 + 96) = v129;
  v93 = v123;
  *(v88 + 5) = v122;
  *(v88 + 6) = v93;
  v94 = v125;
  *(v88 + 7) = v124;
  *(v88 + 8) = v94;
}

uint64_t sub_188B45920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v81 = sub_18A4A2B48();
  v5 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(a2 + 8);
  if (v9 - (*(a2 + 48) + *(a2 + 48)) > 0.0)
  {
    v10 = v9 - (*(a2 + 48) + *(a2 + 48));
  }

  else
  {
    v10 = 0.0;
  }

  if (*(a2 + 112))
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = v10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = (v12 + 16);
  v63 = v12;
  v64 = a2;
  sub_188B44F48(a1, a2, v12, &v108, 0.0, 0.0, v8, v9, v11, v10);
  v134.origin.x = *(&v110 + 1);
  *&v134.origin.y = v111;
  *&v134.size.height = v112;
  v105 = v118;
  v106 = v119;
  v107 = v120;
  v101 = v114;
  v102 = v115;
  v103 = v116;
  v104 = v117;
  v97 = v110;
  v98 = v111;
  v99 = v112;
  v100 = v113;
  v95 = v108;
  v96 = v109;
  Width = CGRectGetWidth(v134);
  swift_beginAccess();
  v15 = *v13;
  v16 = *(v15 + 16);
  if (!v16 || v8 - Width <= 0.0 || (v17 = (v8 - Width) / v16, v17 < 1.0))
  {
LABEL_43:
    sub_188B42FA0();
    if (v64[1])
    {
      sub_18907EF54();
    }

    v54 = v106;
    v55 = v62;
    *(v62 + 160) = v105;
    *(v55 + 176) = v54;
    *(v55 + 192) = v107;
    v56 = v102;
    *(v55 + 96) = v101;
    *(v55 + 112) = v56;
    v57 = v104;
    *(v55 + 128) = v103;
    *(v55 + 144) = v57;
    v58 = v98;
    *(v55 + 32) = v97;
    *(v55 + 48) = v58;
    v59 = v100;
    *(v55 + 64) = v99;
    *(v55 + 80) = v59;
    v60 = v96;
    *v55 = v95;
    *(v55 + 16) = v60;
    return result;
  }

  v93[9] = v117;
  v93[10] = v118;
  v93[11] = v119;
  v93[5] = v113;
  v93[6] = v114;
  v94 = v120;
  v93[7] = v115;
  v93[8] = v116;
  v93[2] = v110;
  v93[3] = v111;
  v93[4] = v112;
  v93[0] = v108;
  v93[1] = v109;
  sub_188B42530(v93);
  v18 = *(v15 + 16);
  if (!v18)
  {

LABEL_42:
    sub_188B44F48(a1, v64, v63, &v121, 0.0, 0.0, v8, v9, v11, v10);

    v105 = v131;
    v106 = v132;
    v107 = v133;
    v101 = v127;
    v102 = v128;
    v103 = v129;
    v104 = v130;
    v97 = v123;
    v98 = v124;
    v99 = v125;
    v100 = v126;
    v95 = v121;
    v96 = v122;
    goto LABEL_43;
  }

  v20 = *(v5 + 16);
  v19 = v5 + 16;
  v21 = v15 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v68 = *(a1 + 16);
  v69 = v20;
  v65 = *(v19 + 56);
  v70 = v19;
  v66 = (v19 - 8);
  v67 = a1 + 32;

  v78 = v7;
  while (1)
  {
    v69(v7, v21, v81);
    result = sub_18A4A2B28();
    if (result < 1)
    {
      break;
    }

    result = sub_18A4A2B58();
    if (result >= v68)
    {
      goto LABEL_47;
    }

    v24 = *(v67 + 8 * result);

    result = sub_18A4A2B28();
    if (result < 1)
    {
      goto LABEL_48;
    }

    if (sub_18A4A2B28() < 2)
    {
      result = sub_18A4A2388();
    }

    else
    {
      result = sub_18A4A2B58();
    }

    if (result < 0)
    {
      goto LABEL_49;
    }

    if (result >= *(v24 + 16))
    {
      goto LABEL_50;
    }

    v79 = v21;
    v80 = v18;
    v25 = v24 + 56 * result;
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);
    v28 = *(v25 + 48);
    v29 = *(v25 + 56);
    v31 = *(v25 + 64);
    v30 = *(v25 + 72);
    v32 = *(v25 + 80);
    sub_18907F470(v26, v27, v28, v29, v31, v30, *(v25 + 80));

    if (v32 < 0)
    {
      v22 = v30;
      v7 = v78;
      (*v66)(v78, v81);
      sub_18907F47C(v26, v27, v28, v29, v31, v22, v32);
    }

    else
    {
      v82 = a1;
      if (v17 + *&v26 <= *&v28)
      {
        v33 = v17 + *&v26;
      }

      else
      {
        v33 = *&v28;
      }

      sub_18907F470(v26, v27, v28, v29, v31, v30, v32);
      result = sub_18A4A2B28();
      if (result < 1)
      {
        goto LABEL_51;
      }

      *&v77 = v26;
      v34 = sub_18A4A2B58();
      result = sub_18A4A2B28();
      if (result < 1)
      {
        goto LABEL_52;
      }

      if (sub_18A4A2B28() < 2)
      {
        v35 = sub_18A4A2388();
      }

      else
      {
        v35 = sub_18A4A2B58();
      }

      v76 = v35;
      v36 = v29;
      *&v121 = v33;
      *(&v121 + 1) = v27;
      *&v122 = v28;
      *(&v122 + 1) = v29;
      v74 = v32 & 1;
      v75 = v31 & 1;
      LOWORD(v123) = v31 & 0x101;
      v72 = WORD1(v31) & 1;
      v73 = (v31 >> 8) & 1;
      BYTE2(v123) = BYTE2(v31) & 1;
      *(&v123 + 1) = v30;
      LOBYTE(v124) = v32 & 1;
      sub_18907F488(&v121, v83);
      v37 = v82;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        result = sub_189212B88(v37);
        v37 = result;
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }
      }

      if (v34 >= v37[2])
      {
        goto LABEL_54;
      }

      v82 = v37;
      v38 = v37 + 4;
      v39 = v37[v34 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[v34] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38[v34] = sub_189212B74(v39);
      }

      sub_18907F47C(v77, v27, v28, v36, v31, v30, v32);
      v77 = v122;
      v71 = v121;
      v41 = v123;
      v42 = *(&v123 + 1);
      v43 = v124;
      *v83 = v33;
      v83[1] = v27;
      v83[2] = v28;
      v83[3] = v36;
      v84 = v75;
      v85 = v73;
      v86 = v72;
      v87 = v91;
      v88 = v92;
      v89 = v30;
      v90 = v74;
      sub_18907F4C0(v83);
      v7 = v78;
      result = (*v66)(v78, v81);
      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      v44 = v38[v34];
      if (v76 >= *(v44 + 16))
      {
        goto LABEL_56;
      }

      v45 = v44 + 56 * v76;
      v46 = *(v45 + 32);
      v47 = *(v45 + 40);
      v48 = *(v45 + 48);
      v49 = *(v45 + 56);
      v50 = *(v45 + 64);
      v51 = *(v45 + 72);
      v52 = v77;
      *(v45 + 32) = v71;
      *(v45 + 48) = v52;
      *(v45 + 64) = *&v41 & 0x10101;
      *(v45 + 72) = v42;
      v53 = *(v45 + 80);
      *(v45 + 80) = v43 & 1;
      sub_18907F47C(v46, v47, v48, v49, v50, v51, v53);
      a1 = v82;
    }

    v21 = v79 + v65;
    v18 = v80 - 1;
    if (v80 == 1)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
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
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_188B46068()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_188B460A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_188B460EC(uint64_t a1, CGRect *a2, CGFloat *a3, CGRect *a4)
{
  p_x = &a2->origin.x;
  if ((*(a1 + 160) & 1) != 0 || *(a1 + 216))
  {
    p_y = &a2->origin.y;
    p_width = &a2->size.width;
    p_height = &a2->size.height;
    if (CGRectGetWidth(*a2) <= 0.0)
    {
      p_y = a3 + 1;
      p_width = a3 + 2;
      p_height = a3 + 3;
      p_x = a3;
    }
  }

  else
  {
    p_height = (a1 + 152);
    p_width = (a1 + 144);
    p_y = (a1 + 136);
    p_x = (a1 + 128);
  }

  v11 = *p_height;
  v12 = *p_width;
  v13 = *p_y;
  v14 = *p_x;
  v17.origin.x = *p_x;
  v17.origin.y = *p_y;
  v17.size.width = *p_width;
  v17.size.height = *p_height;
  CGRectGetMinX(v17);
  CGRectGetMaxX(*a4);
  MaxX = CGRectGetMaxX(*a4);
  if (CGRectGetWidth(*a4) > 0.0)
  {
    MaxX = MaxX + *(a1 + 240);
  }

  v18.origin.x = v14;
  v18.origin.y = v13;
  v18.size.width = v12;
  v18.size.height = v11;
  CGRectGetWidth(v18);
  return MaxX;
}

uint64_t sub_188B46254@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *v1 + 56 * v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = v2 + 1;
  v10 = *(v4 + 72);
  v1[1] = v9;
  v11 = v1[2];
  if (__OFADD__(v11, 1))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v1[2] = v11 + 1;
  *a1 = v11;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v10;
  *(a1 + 56) = v8;
  v12 = v8;
}

uint64_t get_enum_tag_for_layout_string_5UIKit33NavigationBarContentWidthResolverV7ElementVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_188B46318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v38 = result;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = (a5 + 40);
    v30 = *a4;
LABEL_5:
    v29 = v5;
    while (1)
    {
      v8 = (v6 + 40 * v5);
      v9 = *v8;
      v10 = v8[1];
      v35 = *(v8 + 16);
      v33 = v9;
      v34 = v10;
      v11 = *(v8 - 40);
      v12 = *(v8 - 24);
      v37 = *(v8 - 4);
      v36[0] = v11;
      v36[1] = v12;
      if (v34 >= v12)
      {
        v13 = *(a5 + 16);
        if (!v13)
        {
          goto LABEL_29;
        }

        v14 = 0;
        v15 = v7;
        while (1)
        {
          v16 = *(v15 - 1) == v33 && *v15 == *(&v33 + 1);
          if (v16 || (sub_18A4A86C8() & 1) != 0)
          {
            break;
          }

          ++v14;
          v15 += 6;
          if (v13 == v14)
          {
            goto LABEL_29;
          }
        }

        v17 = 0;
        v18 = v7;
        while (1)
        {
          result = *(v7 - 1);
          if (result == *&v36[0] && *v7 == *(&v36[0] + 1))
          {
            break;
          }

          result = sub_18A4A86C8();
          if (result)
          {
            break;
          }

          ++v17;
          v7 += 6;
          if (v13 == v17)
          {
            goto LABEL_29;
          }
        }

        v7 = v18;
        v6 = v30;
        if (v14 >= v17)
        {
LABEL_4:
          v5 = v29 + 1;
          if (v29 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      --v5;
      v20 = *v8;
      v21 = v8 - 40;
      v22 = *(v8 + 2);
      v23 = *(v8 + 3);
      v24 = *(v8 + 32);
      v25 = *(v8 + 33);
      v26 = *(v8 - 24);
      *v8 = *(v8 - 40);
      v8[1] = v26;
      *(v8 + 4) = *(v8 - 1);
      *v21 = v20;
      *(v21 + 16) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      *(v21 + 33) = v25;
      if (v5 == v38)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_29:
    v32[5] = 0;
    v32[6] = 0xE000000000000000;
    sub_1891CED2C(&v33, v32);
    sub_1891CED2C(v36, v32);
    sub_18A4A80E8();

    v32[0] = 0xD00000000000002CLL;
    v32[1] = 0x800000018A6AFF00;
    v27 = sub_1891CD8E0();
    MEMORY[0x18CFE22D0](v27);

    result = sub_18A4A8398();
    __break(1u);
  }

  return result;
}

uint64_t sub_188B46640()
{
  v0 = sub_18A4A4378();
  __swift_allocate_value_buffer(v0, qword_1ED48CD70);
  __swift_project_value_buffer(v0, qword_1ED48CD70);
  return sub_18A4A4368();
}

char *sub_188B466D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_188B467F4@<X0>(_OWORD *a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  if (*(v2 + 249))
  {
    v4 = 6;
    if (*(v2 + 8) == 1)
    {
      v4 = 20;
    }

    v222 = v4;
    v239 = 30;
    v242 = 26;
    v5 = 8;
    v226 = 7;
    v217 = 25;
    v229 = 5;
    v6 = 4;
  }

  else
  {
    v239 = 20;
    v242 = 10;
    v5 = 9;
    v226 = 8;
    v217 = 7;
    v222 = 6;
    v229 = 4;
    v6 = 5;
  }

  v237 = v6;
  v250 = *(v2 + 240);
  v200 = *(v2 + 136);
  rect = *(v2 + 128);
  v198 = *(v2 + 152);
  v199 = *(v2 + 144);
  v7 = *(v2 + 160);
  if ((v7 & 1) != 0 || *(v2 + 216) != 2)
  {
    v369.origin.x = *(v2 + 32);
    v369.origin.y = *(v2 + 40);
    v369.size.width = *(v2 + 96);
    v369.size.height = *(v2 + 104);
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
    v386.origin.x = v8;
    v386.origin.y = v9;
    v386.size.width = v10;
    v386.size.height = v11;
    v370 = CGRectIntersection(v369, v386);
    x = v370.origin.x;
    y = v370.origin.y;
    width = v370.size.width;
    height = v370.size.height;
    if (CGRectGetWidth(v370) > 0.0)
    {
      v9 = y;
      goto LABEL_12;
    }
  }

  else
  {
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
  }

  v371.origin.x = v8;
  v371.origin.y = v9;
  v371.size.width = v10;
  v371.size.height = v11;
  x = CGRectGetMinX(v371);
  width = 0.0;
  height = 0.0;
LABEL_12:
  v16 = 0xD000000000000010;
  v372.origin.x = x;
  v372.origin.y = v9;
  v372.size.width = width;
  v372.size.height = height;
  if (CGRectGetWidth(v372) <= 0.0)
  {
    v244 = 0;
    v17 = 0;
    v24 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v17 = 0x800000018A6954D0;
    v373.origin.x = x;
    v373.origin.y = v9;
    v373.size.width = width;
    v373.size.height = height;
    v18 = CGRectGetWidth(v373);
    if (v18 <= 1000000.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1000000.0;
    }

    v20 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_188B466D8((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    v244 = 0xD000000000000012;
    *(v23 + 4) = 0xD000000000000012;
    *(v23 + 5) = 0x800000018A6954D0;
    *(v23 + 6) = 0;
    *(v23 + 7) = v19;
    *(v23 + 32) = 0;
    v24 = 1;
    if (v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v3 + 216) == 2)
  {
    v25 = *(v3 + 64);
    v26 = *(v3 + 72);
    v27 = *(v3 + 80);
    v28 = *(v3 + 88);
    goto LABEL_25;
  }

LABEL_23:
  v374.origin.x = *(v3 + 32);
  v29 = *(v3 + 40);
  v374.size.width = *(v3 + 48);
  v374.size.height = *(v3 + 56);
  v374.origin.y = v29;
  MaxX = CGRectGetMaxX(v374);
  v375.size.width = *(v3 + 112);
  v375.size.height = *(v3 + 120);
  v375.origin.x = MaxX - v375.size.width;
  v25 = *(v3 + 64);
  v26 = *(v3 + 72);
  v27 = *(v3 + 80);
  v28 = *(v3 + 88);
  v375.origin.y = v29;
  v387.origin.x = v25;
  v387.origin.y = v26;
  v387.size.width = v27;
  v387.size.height = v28;
  v376 = CGRectIntersection(v375, v387);
  v31 = v376.origin.x;
  v32 = v376.origin.y;
  v33 = v376.size.width;
  v34 = v376.size.height;
  if (CGRectGetWidth(v376) > 0.0)
  {
    v26 = v32;
    goto LABEL_26;
  }

LABEL_25:
  v377.origin.x = v25;
  v377.origin.y = v26;
  v377.size.width = v27;
  v377.size.height = v28;
  v31 = CGRectGetMaxX(v377);
  v33 = 0.0;
  v34 = 0.0;
LABEL_26:
  v35 = v250;
  v378.origin.x = v31;
  v378.origin.y = v26;
  v378.size.width = v33;
  v378.size.height = v34;
  if (CGRectGetWidth(v378) <= 0.0)
  {
    v235 = 0;
    v241 = 0;
    v249 = 0;
    v38 = 0;
  }

  else
  {
    v241 = 0x800000018A6954B0;
    v379.origin.x = v31;
    v379.origin.y = v26;
    v379.size.width = v33;
    v379.size.height = v34;
    v36 = CGRectGetWidth(v379);
    if (v36 <= 1000000.0)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1000000.0;
    }

    v38 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_188B466D8((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    v41 = &v38[40 * v40];
    v235 = 0xD000000000000013;
    *(v41 + 4) = 0xD000000000000013;
    *(v41 + 5) = 0x800000018A6954B0;
    *(v41 + 6) = 0;
    *(v41 + 7) = v37;
    *(v41 + 32) = 0;
    v249 = 1;
  }

  v42 = *(v3 + 272);
  v214 = v17;
  v216 = v20;
  v236 = v24;
  v224 = v5;
  rect_8 = v7;
  if (*(v3 + 272) == 0xFF)
  {
    v43 = 0;
    v213 = 0;
    v233 = 0;
    v251 = 0;
  }

  else
  {
    v45 = *(v3 + 256);
    v44 = *(v3 + 264);
    v46 = *(v3 + 280);
    v47 = *(v3 + 288);
    v48 = *v3;
    if (*(v3 + 272))
    {
      if (*(v3 + 272) == 1)
      {
        v49 = *(v3 + 256);
      }

      else
      {
        v52 = sub_188C57860(*(v3 + 256), *(v3 + 264), 2);
        v45(v52, 10000.0, v48, 50.0, 50.0);
      }
    }

    else
    {
      sub_188C57860(*(v3 + 256), *(v3 + 264), 0);
      LODWORD(v50) = 1112014848;
      LODWORD(v51) = 1112014848;
      [v45 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:v48 verticalFittingPriority:{v50, v51}];
    }

    v53 = v46;
    if (*(v3 + 304))
    {
      v54 = v249;
      v55 = v38;
    }

    else
    {
      v54 = v249;
      v56 = *(v3 + 296);
      v55 = v38;
      if (v47 == 0.0)
      {
        v47 = *(v3 + 296);
      }

      else if (v56 > 0.0 && v56 <= v47)
      {
        v47 = *(v3 + 296);
      }
    }

    if (v49 < v46)
    {
      v49 = v46;
    }

    if (v46 <= 0.0)
    {
      v49 = v47;
    }

    if (v49 <= 1000000.0)
    {
      v57 = v49;
    }

    else
    {
      v57 = 1000000.0;
    }

    v58 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v60 = *(v58 + 2);
    v59 = *(v58 + 3);
    v251 = v58;
    v61 = v59 >> 1;
    v62 = v60 + 1;
    if (v59 >> 1 <= v60)
    {
      v251 = sub_188B466D8((v59 > 1), v60 + 1, 1, v58);
      v59 = *(v251 + 3);
      v61 = v59 >> 1;
    }

    *(v251 + 2) = v62;
    v63 = &v251[40 * v60];
    *(v63 + 4) = 1801675074;
    *(v63 + 5) = 0xE400000000000000;
    *(v63 + 6) = 0;
    *(v63 + 7) = v57;
    *(v63 + 32) = 0;
    if (v46 > 1000000.0)
    {
      v53 = 1000000.0;
    }

    v64 = v60 + 2;
    if (v61 < v64)
    {
      v251 = sub_188B466D8((v59 > 1), v64, 1, v251);
    }

    sub_188C5F320(v45, v44, v42);
    *(v251 + 2) = v64;
    v65 = &v251[40 * v62];
    v43 = 1801675074;
    *(v65 + 4) = 1801675074;
    *(v65 + 5) = 0xE400000000000000;
    *(v65 + 6) = 1;
    *(v65 + 7) = v53;
    v233 = 1;
    *(v65 + 32) = 1;
    v16 = 0xD000000000000010;
    v38 = v55;
    v249 = v54;
    v213 = 0xE400000000000000;
  }

  v234 = v43;
  if (*(v3 + 344))
  {
    v66 = *(v3 + 312);
    v67 = *(v3 + 320);
    if (*(v3 + 328) <= 1000000.0)
    {
      v68 = *(v3 + 328);
    }

    else
    {
      v68 = 1000000.0;
    }

    v69 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v71 = *(v69 + 2);
    v70 = *(v69 + 3);
    v72 = v69;
    v73 = v70 >> 1;
    v74 = v71 + 1;
    if (v70 >> 1 <= v71)
    {
      v72 = sub_188B466D8((v70 > 1), v71 + 1, 1, v69);
      v70 = *(v72 + 3);
      v73 = v70 >> 1;
    }

    *(v72 + 2) = v74;
    v75 = &v72[40 * v71];
    *(v75 + 4) = 0xD000000000000010;
    *(v75 + 5) = 0x800000018A695490;
    *(v75 + 6) = 0;
    *(v75 + 7) = v68;
    *(v75 + 32) = 0;
    if (v67 > 1000000.0)
    {
      v67 = 1000000.0;
    }

    v76 = v71 + 2;
    if (v73 < (v71 + 2))
    {
      v72 = sub_188B466D8((v70 > 1), v71 + 2, 1, v72);
    }

    *(v72 + 2) = v76;
    v77 = &v72[40 * v74];
    *(v77 + 4) = 0xD000000000000010;
    *(v77 + 5) = 0x800000018A695490;
    *(v77 + 6) = v237;
    *(v77 + 7) = v67;
    *(v77 + 32) = 0;
    if (v66 > 1000000.0)
    {
      v66 = 1000000.0;
    }

    v78 = *(v72 + 3);
    if ((v71 + 3) > (v78 >> 1))
    {
      v79 = sub_188B466D8((v78 > 1), v71 + 3, 1, v72);
    }

    else
    {
      v79 = v72;
    }

    *(v79 + 2) = v71 + 3;
    v232 = v79;
    v80 = &v79[40 * v76];
    *(v80 + 4) = 0xD000000000000010;
    *(v80 + 5) = 0x800000018A695490;
    v81 = 0x800000018A695490;
    *(v80 + 6) = v239;
    *(v80 + 7) = v66;
    v209 = 1;
    *(v80 + 32) = 1;
  }

  else
  {
    v16 = 0;
    v81 = 0;
    v209 = 0;
    v232 = 0;
  }

  v238 = v16;
  v211 = v81;
  if (*(v3 + 408))
  {
    v82 = *(v3 + 376);
    v83 = *(v3 + 384);
    if (*(v3 + 392) <= 1000000.0)
    {
      v84 = *(v3 + 392);
    }

    else
    {
      v84 = 1000000.0;
    }

    v85 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    v88 = v86 >> 1;
    v89 = v87 + 1;
    v90 = v244;
    if (v86 >> 1 <= v87)
    {
      v85 = sub_188B466D8((v86 > 1), v87 + 1, 1, v85);
      v86 = *(v85 + 3);
      v88 = v86 >> 1;
    }

    *(v85 + 2) = v89;
    v91 = &v85[40 * v87];
    v240 = 0x42676E696461654CLL;
    *(v91 + 4) = 0x42676E696461654CLL;
    *(v91 + 5) = 0xEA00000000007261;
    v231 = 0xEA00000000007261;
    *(v91 + 6) = 0;
    *(v91 + 7) = v84;
    *(v91 + 32) = 0;
    if (v83 > 1000000.0)
    {
      v83 = 1000000.0;
    }

    v92 = v87 + 2;
    if (v88 < (v87 + 2))
    {
      v85 = sub_188B466D8((v86 > 1), v87 + 2, 1, v85);
    }

    v93 = a2;
    *(v85 + 2) = v92;
    v94 = &v85[40 * v89];
    *(v94 + 4) = 0x42676E696461654CLL;
    *(v94 + 5) = 0xEA00000000007261;
    *(v94 + 6) = v229;
    *(v94 + 7) = v83;
    *(v94 + 32) = 0;
    if (v82 > 1000000.0)
    {
      v82 = 1000000.0;
    }

    v95 = *(v85 + 3);
    if ((v87 + 3) > (v95 >> 1))
    {
      v85 = sub_188B466D8((v95 > 1), v87 + 3, 1, v85);
    }

    *(v85 + 2) = v87 + 3;
    v96 = &v85[40 * v92];
    *(v96 + 4) = 0x42676E696461654CLL;
    *(v96 + 5) = 0xEA00000000007261;
    *(v96 + 6) = v242;
    *(v96 + 7) = v82;
    v97 = 1;
    *(v96 + 32) = 1;
  }

  else
  {
    v240 = 0;
    v231 = 0;
    v97 = 0;
    v85 = 0;
    v90 = v244;
    v93 = a2;
  }

  v230 = v97;
  v219 = v85;
  if (v93 <= 0.0)
  {
    v228 = 0;
    v221 = 0;
    v223 = 0;
    v111 = 0;
  }

  else
  {
    if (v93 <= 1000000.0)
    {
      v98 = v93;
    }

    else
    {
      v98 = 1000000.0;
    }

    v99 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    v102 = v101 + 1;
    if (v101 >= v100 >> 1)
    {
      v99 = sub_188B466D8((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v102;
    v103 = &v99[40 * v101];
    v228 = 0x656C45656C746954;
    strcpy(v103 + 32, "TitleElements");
    *(v103 + 23) = -4864;
    *(v103 + 6) = 0;
    *(v103 + 7) = v98;
    *(v103 + 32) = 0;
    v104 = *(v3 + 640);
    v85 = v219;
    v221 = 0xED000073746E656DLL;
    if (v104 < v93)
    {
      if (v104 <= 1000000.0)
      {
        v105 = *(v3 + 640);
      }

      else
      {
        v105 = 1000000.0;
      }

      v106 = *(v99 + 3);
      v107 = v101 + 2;
      if (v107 > (v106 >> 1))
      {
        v99 = sub_188B466D8((v106 > 1), v107, 1, v99);
        v85 = v219;
      }

      *(v99 + 2) = v107;
      v108 = &v99[40 * v102];
      strcpy(v108 + 32, "TitleElements");
      *(v108 + 23) = -4864;
      *(v108 + 6) = v222;
      *(v108 + 7) = v105;
      *(v108 + 32) = 0;
      v102 = *(v99 + 2);
    }

    v109 = *(v99 + 3);
    if (v102 >= v109 >> 1)
    {
      v99 = sub_188B466D8((v109 > 1), v102 + 1, 1, v99);
      v85 = v219;
    }

    *(v99 + 2) = v102 + 1;
    v223 = v99;
    v110 = &v99[40 * v102];
    strcpy(v110 + 32, "TitleElements");
    *(v110 + 23) = -4864;
    *(v110 + 6) = v217;
    *(v110 + 7) = 0;
    v110[64] = v104 < v93;
    v110[65] = 0;
    v111 = 1;
  }

  v112 = *(v3 + 456);
  v259 = *(v3 + 440);
  v260 = v112;
  v113 = *(v3 + 488);
  v261 = *(v3 + 472);
  v262 = v113;
  v114 = v261;
  rect_24 = v111;
  if (v261)
  {
    v116 = *(&v259 + 1);
    v115 = *&v259;
    if (*(&v260 + 1) <= 1000000.0)
    {
      v117 = *(&v260 + 1);
    }

    else
    {
      v117 = 1000000.0;
    }

    v363 = *(&v261 + 1);
    v364 = v261;
    sub_188A3F29C(&v259, &v312, &unk_1EA936338);
    sub_188A3F29C(&v364, &v312, &qword_1EA937CD0);
    sub_188A3F29C(&v363, &v312, &qword_1EA937CD0);
    v118 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v120 = *(v118 + 2);
    v119 = *(v118 + 3);
    v121 = v38;
    v122 = v90;
    if (v120 >= v119 >> 1)
    {
      v118 = sub_188B466D8((v119 > 1), v120 + 1, 1, v118);
    }

    *(v118 + 2) = v120 + 1;
    v123 = &v118[40 * v120];
    v124 = 0x61427265746E6543;
    *(v123 + 4) = 0x61427265746E6543;
    *(v123 + 5) = 0xE900000000000072;
    v247 = 0xE900000000000072;
    *(v123 + 6) = 0;
    *(v123 + 7) = v117;
    *(v123 + 32) = 0;
    v125 = v118;
    sub_188A3F5FC(&v364, &qword_1EA937CD0);
    sub_188A3F5FC(&v363, &qword_1EA937CD0);
    v126 = v125;
    if (v116 > 1000000.0)
    {
      v116 = 1000000.0;
    }

    v128 = *(v125 + 2);
    v127 = *(v125 + 3);
    v129 = v127 >> 1;
    v130 = v128 + 1;
    if (v127 >> 1 <= v128)
    {
      v126 = sub_188B466D8((v127 > 1), v128 + 1, 1, v125);
      v127 = *(v126 + 3);
      v129 = v127 >> 1;
    }

    *(v126 + 2) = v130;
    v131 = &v126[40 * v128];
    *(v131 + 4) = 0x61427265746E6543;
    *(v131 + 5) = 0xE900000000000072;
    *(v131 + 6) = 3;
    *(v131 + 7) = v116;
    *(v131 + 32) = 0;
    if (v115 > 1000000.0)
    {
      v115 = 1000000.0;
    }

    v132 = v128 + 2;
    v90 = v122;
    if (v129 < v132)
    {
      v243 = sub_188B466D8((v127 > 1), v132, 1, v126);
    }

    else
    {
      v243 = v126;
    }

    sub_188A3F5FC(&v259, &unk_1EA936338);
    *(v243 + 2) = v132;
    v133 = &v243[40 * v130];
    *(v133 + 4) = 0x61427265746E6543;
    *(v133 + 5) = 0xE900000000000072;
    *(v133 + 6) = v226;
    *(v133 + 7) = v115;
    *(v133 + 32) = 0;
    v114 = 1;
    v85 = v219;
  }

  else
  {
    v121 = v38;
    v124 = 0;
    v247 = 0;
    v243 = 0;
  }

  v227 = v114;
  v215 = v124;
  v134 = *(v3 + 520);
  v255 = *(v3 + 504);
  v256 = v134;
  v135 = *(v3 + 552);
  v257 = *(v3 + 536);
  v258 = v135;
  v220 = v121;
  if (v257)
  {
    v137 = *(&v255 + 1);
    v136 = *&v255;
    if (*(&v256 + 1) <= 1000000.0)
    {
      v138 = *(&v256 + 1);
    }

    else
    {
      v138 = 1000000.0;
    }

    v361 = *(&v257 + 1);
    v362 = v257;
    sub_188A3F29C(&v255, &v312, &unk_1EA936338);
    sub_188A3F29C(&v362, &v312, &qword_1EA937CD0);
    sub_188A3F29C(&v361, &v312, &qword_1EA937CD0);
    v139 = sub_188B466D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v141 = *(v139 + 2);
    v140 = *(v139 + 3);
    v142 = v140 >> 1;
    v143 = v141 + 1;
    v144 = v247;
    if (v140 >> 1 <= v141)
    {
      v139 = sub_188B466D8((v140 > 1), v141 + 1, 1, v139);
      v140 = *(v139 + 3);
      v142 = v140 >> 1;
    }

    v145 = v216;
    *(v139 + 2) = v143;
    v146 = &v139[40 * v141];
    *(v146 + 4) = 0x676E696C69617254;
    *(v146 + 5) = 0xEB00000000726142;
    *(v146 + 6) = 0;
    *(v146 + 7) = v138;
    *(v146 + 32) = 0;
    if (v137 > 1000000.0)
    {
      v137 = 1000000.0;
    }

    v147 = v141 + 2;
    if (v142 < v147)
    {
      v139 = sub_188B466D8((v140 > 1), v147, 1, v139);
    }

    *(v139 + 2) = v147;
    v148 = &v139[40 * v143];
    *(v148 + 4) = 0x676E696C69617254;
    *(v148 + 5) = 0xEB00000000726142;
    *(v148 + 6) = 2;
    *(v148 + 7) = v137;
    *(v148 + 32) = 0;
    sub_188A3F5FC(&v362, &qword_1EA937CD0);
    sub_188A3F5FC(&v361, &qword_1EA937CD0);
    if (v136 > 1000000.0)
    {
      v136 = 1000000.0;
    }

    v150 = *(v139 + 2);
    v149 = *(v139 + 3);
    if (v150 >= v149 >> 1)
    {
      v139 = sub_188B466D8((v149 > 1), v150 + 1, 1, v139);
    }

    sub_188A3F5FC(&v255, &unk_1EA936338);
    *(v139 + 2) = v150 + 1;
    v151 = &v139[40 * v150];
    v152 = 0x676E696C69617254;
    *(v151 + 4) = 0x676E696C69617254;
    *(v151 + 5) = 0xEB00000000726142;
    v153 = 0xEB00000000726142;
    *(v151 + 6) = v224;
    *(v151 + 7) = v136;
    *(v151 + 32) = 0;
    v154 = 1;
    v85 = v219;
  }

  else
  {
    v152 = 0;
    v153 = 0;
    v139 = 0;
    v144 = v247;
    v154 = 0;
    v145 = v216;
  }

  v225 = v139;
  v212 = v153;
  v210 = v152;
  v218 = v154;
  v245 = v90;
  v248 = v144;
  if ((rect_8 & 1) != 0 || (v380.origin.y = v200, v380.origin.x = rect, v380.size.height = v198, v380.size.width = v199, v155 = CGRectGetWidth(v380), v154 = v218, v85 = v219, v152 = v210, v153 = v212, v155 <= 0.0) || *(v3 + 216) == 2)
  {
    v312 = v90;
    v313 = v214;
    v315 = 0;
    v314 = 0;
    v316 = v236;
    v317 = v145;
    v156 = v121;
    v157 = v145;
    v158 = v214;
    v318 = v238;
    v319 = v81;
    v321 = 0;
    v320 = 0;
    v159 = v209;
    v322 = v209;
    v160 = v144;
    v323 = v232;
    v324 = v234;
    v325 = v213;
    v327 = 0;
    v326 = 0;
    v161 = v81;
    v328 = v233;
    v329 = v251;
    v162 = v240;
    v330 = v240;
    v331 = v231;
    v333 = 0;
    v332 = 0;
    v334 = v230;
    v335 = v85;
    v336 = v228;
    v337 = v221;
    v339 = 0;
    v338 = 0;
    v163 = rect_24;
    v340 = rect_24;
    v341 = v223;
    v164 = v215;
    v342 = v215;
    v343 = v160;
    v344 = 0;
    v345 = 0;
    v346 = v227;
    v347 = v243;
    v348 = v152;
    v349 = v153;
    v350 = 0;
    v351 = 0;
    v352 = v154;
    v353 = v139;
    v354 = v235;
    v355 = v241;
    v357 = 0;
    v356 = 0;
    v358 = v249;
    v359 = v156;
    v360 = v35;
    v165 = v85;
    v166 = sub_188B41AC8();
    v167 = CGRectGetWidth(*(v3 + 64));
    rect_8a = sub_188B43844(v166, v167);

    goto LABEL_147;
  }

  v381.origin.x = rect;
  v381.origin.y = v200;
  v381.size.width = v199;
  v381.size.height = v198;
  v170 = *(v3 + 216);
  rect_8b = CGRectGetMinX(v381);
  v171 = v35;
  v173 = *(v3 + 64);
  v172 = *(v3 + 72);
  v174 = *(v3 + 80);
  v175 = *(v3 + 88);
  v382.origin.x = v173;
  v382.origin.y = v172;
  v382.size.width = v174;
  v382.size.height = v175;
  rect_8c = rect_8b - CGRectGetMinX(v382) - v171;
  v197 = v173;
  v383.origin.x = v173;
  v176 = v172;
  v35 = v171;
  v383.origin.y = v176;
  v383.size.width = v174;
  v383.size.height = v175;
  v177 = CGRectGetMaxX(v383);
  v384.origin.x = rect;
  v384.origin.y = v200;
  v384.size.width = v199;
  v384.size.height = v198;
  v178 = v177 - CGRectGetMaxX(v384) - v35;
  v312 = v90;
  v313 = v214;
  v315 = 0;
  v314 = 0;
  v316 = v236;
  v317 = v145;
  v318 = v238;
  v319 = v81;
  v321 = 0;
  v320 = 0;
  v322 = v209;
  v323 = v232;
  v324 = v234;
  v325 = v213;
  v327 = 0;
  v326 = 0;
  v328 = v233;
  v329 = v251;
  v330 = v240;
  v331 = v231;
  v333 = 0;
  v332 = 0;
  v334 = v230;
  v335 = v219;
  v336 = v228;
  v337 = v221;
  v339 = 0;
  v338 = 0;
  v340 = rect_24;
  v341 = v223;
  v342 = v215;
  v343 = v144;
  v344 = 0;
  v345 = 0;
  v346 = v227;
  v347 = v243;
  v348 = v210;
  v349 = v212;
  v350 = 0;
  v351 = 0;
  v352 = v218;
  v353 = v139;
  v354 = v235;
  v355 = v241;
  v357 = 0;
  v356 = 0;
  v358 = v249;
  v359 = v220;
  v360 = v35;
  v179 = sub_188F5FD9C(v170 == 0);
  rect_8d = sub_188B43844(v179, rect_8c);

  *&v289 = v228;
  *(&v289 + 1) = v221;
  v291 = 0;
  v290 = 0;
  *&v292 = rect_24;
  *(&v292 + 1) = v223;
  v367 = v292;
  v366 = 0u;
  v265 = v90;
  v266 = v214;
  v268 = 0;
  v267 = 0;
  v269 = v236;
  v270 = v216;
  v271 = v238;
  v272 = v81;
  v274 = 0;
  v273 = 0;
  v275 = v209;
  v276 = v232;
  v277 = v234;
  v278 = v213;
  v280 = 0;
  v279 = 0;
  v281 = v233;
  v282 = v251;
  v283 = v240;
  v284 = v231;
  v286 = 0;
  v285 = 0;
  v287 = v230;
  v288 = v219;
  v293 = v215;
  v294 = v144;
  v295 = 0;
  v296 = 0;
  v297 = v227;
  v298 = v243;
  v299 = v210;
  v300 = v212;
  v301 = 0;
  v302 = 0;
  v303 = v218;
  v304 = v139;
  v305 = v235;
  v306 = v241;
  v308 = 0;
  v307 = 0;
  v309 = v249;
  v310 = v220;
  v311 = v35;
  v365 = v289;
  sub_188A3F29C(&v365, v263, &qword_1EA937CC0);
  v180 = sub_188F60260();
  v181 = sub_188B43844(v180, v178);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v263[0] = rect_8d;
  sub_188F604DC(v181, sub_188F6046C, 0, isUniquelyReferenced_nonNull_native, v263);

  v183 = v263[0];
  v253 = v263[0];
  v184 = *(&v365 + 1);
  if (!*(&v365 + 1))
  {
LABEL_156:
    v164 = v215;
    v157 = v216;
    v158 = v214;
    v162 = v240;
    v161 = v211;
    v163 = rect_24;
    v159 = v209;
    v165 = v219;
    rect_8a = v183;
    goto LABEL_147;
  }

  v185 = v365;
  v186 = *(&v367 + 1);
  if (!v170)
  {
    v264[0] = v365;
    sub_188ECC874(v264);
    v368[0] = v186;
    sub_188A3F5FC(v368, &qword_1EA937CC8);
    goto LABEL_156;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934208);
  v187 = swift_allocObject();
  *(v187 + 16) = xmmword_18A64BFB0;
  v368[0] = v186;
  *(v187 + 32) = v185;
  *(v187 + 40) = v184;
  *(v187 + 48) = v366;
  *(v187 + 64) = v367;
  *(v187 + 72) = v186;

  sub_188A3F29C(v368, v263, &qword_1EA937CC8);
  v385.size.height = v175;
  v385.origin.x = v197;
  v385.origin.y = v176;
  v385.size.width = v174;
  v188 = CGRectGetWidth(v385);
  v189 = sub_188B43844(v187, v188);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v189 + 16) && (v190 = sub_188B0944C(v185, v184), (v191 & 1) != 0))
  {
    v192 = (*(v189 + 56) + 48 * v190);
    v194 = v192[1];
    v193 = v192[2];
    v264[0] = *v192;
    v264[1] = v194;
    v264[2] = v193;
    sub_188F60858(v264, v263);

    v195 = swift_isUniquelyReferenced_nonNull_native();
    v263[0] = v183;
    sub_188CFC724(v264, v185, v184, v195);

    sub_188A3F5FC(v368, &qword_1EA937CC8);
    v196 = v263[0];
  }

  else
  {

    sub_1891E988C(v185, v184, v263);

    sub_188A3F5FC(v368, &qword_1EA937CC8);

    v196 = v253;
  }

  rect_8a = v196;
  v158 = v214;
  v164 = v215;
  v157 = v216;
  v161 = v81;
  v163 = rect_24;
  v159 = v209;
  v165 = v219;
  v162 = v240;
LABEL_147:
  v263[0] = v245;
  v263[1] = v158;
  v263[3] = 0;
  v263[2] = 0;
  v263[4] = v236;
  v263[5] = v157;
  v263[6] = v238;
  v263[7] = v161;
  v263[9] = 0;
  v263[8] = 0;
  v263[10] = v159;
  v263[11] = v232;
  v263[12] = v234;
  v263[13] = v213;
  v263[15] = 0;
  v263[14] = 0;
  v263[16] = v233;
  v263[17] = v251;
  v263[18] = v162;
  v263[19] = v231;
  v263[20] = 0;
  v263[21] = 0;
  v263[22] = v230;
  v263[23] = v165;
  v263[24] = v228;
  v263[25] = v221;
  v263[27] = 0;
  v263[26] = 0;
  v263[28] = v163;
  v263[29] = v223;
  v263[30] = v164;
  v263[31] = v248;
  v263[32] = 0;
  v263[33] = 0;
  v263[34] = v227;
  v263[35] = v243;
  v263[36] = v210;
  v263[37] = v212;
  v263[38] = 0;
  v263[39] = 0;
  v263[40] = v218;
  v263[41] = v225;
  v263[42] = v235;
  v263[43] = v241;
  v263[45] = 0;
  v263[44] = 0;
  v263[46] = v249;
  v263[47] = v220;
  *&v263[48] = v35;
  sub_188B44888(rect_8a, v254);

  v252[0] = v245;
  v252[1] = v214;
  v252[2] = 0;
  v252[3] = 0;
  v252[4] = v236;
  v252[5] = v216;
  v252[6] = v238;
  v252[7] = v161;
  v252[8] = 0;
  v252[9] = 0;
  v252[10] = v159;
  v252[11] = v232;
  v252[12] = v234;
  v252[13] = v213;
  v252[14] = 0;
  v252[15] = 0;
  v252[16] = v233;
  v252[17] = v251;
  v252[18] = v162;
  v252[19] = v231;
  v252[20] = 0;
  v252[21] = 0;
  v252[22] = v230;
  v252[23] = v165;
  v252[24] = v228;
  v252[25] = v221;
  v252[27] = 0;
  v252[26] = 0;
  v252[28] = v163;
  v252[29] = v223;
  v252[30] = v215;
  v252[31] = v248;
  v252[32] = 0;
  v252[33] = 0;
  v252[34] = v227;
  v252[35] = v243;
  v252[36] = v210;
  v252[37] = v212;
  v252[38] = 0;
  v252[39] = 0;
  v252[40] = v218;
  v252[41] = v225;
  v252[42] = v235;
  v252[43] = v241;
  v252[45] = 0;
  v252[44] = 0;
  v252[46] = v249;
  v252[47] = v220;
  *&v252[48] = v35;
  result = sub_188B4333C(v252);
  v169 = v254[1];
  *a1 = v254[0];
  a1[1] = v169;
  a1[2] = v254[2];
  return result;
}

double sub_188B482B4@<D0>(uint64_t a1@<X8>, double a2@<D2>)
{
  v3 = v2;
  v5 = *(v2 + 608);
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  if (v5 != 255)
  {
    v9 = *(v2 + 592);
    if (*(v2 + 608))
    {
      v10 = *(v2 + 600);
      if (v5 == 1)
      {
        v7 = *(v3 + 592);
        v8 = *(v3 + 600);
      }

      else
      {
        v13 = *(v3 + 592);
        v14 = sub_188C57860(v9, *(v3 + 600), 2);
        v7 = v13(v14, 0.0, 0.0, 50.0, 50.0);
        v16 = v15;
        sub_188B487D4(v13, v10, 2);
        v8 = v16;
      }
    }

    else
    {
      LODWORD(a2) = 1112014848;
      LODWORD(v8) = 1112014848;
      [v9 systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a2, v8}];
      v7 = v11;
      v8 = v12;
    }
  }

  v17 = *(v3 + 584);
  v18 = 0.0;
  v19 = 0.0;
  if (v17 != 255)
  {
    v20 = *(v3 + 568);
    if (*(v3 + 584))
    {
      v21 = *(v3 + 576);
      if (v17 == 1)
      {
        v6 = *(v3 + 568);
        v19 = *(v3 + 576);
        v18 = v6;
      }

      else
      {
        v28 = v8;
        v29 = sub_188C57860(*(v3 + 568), *(v3 + 576), 2);
        v18 = v20(v29, 0.0, 0.0, 50.0, 50.0);
        v19 = v30;
        sub_188B487D4(v20, v21, 2);
        v31 = sub_188C57860(v20, v21, 2);
        v6 = v20(v31, 10000.0, 0.0, 50.0, 50.0);
        sub_188B487D4(v20, v21, 2);
        v8 = v28;
      }
    }

    else
    {
      LODWORD(a2) = 1112014848;
      v22 = v8;
      LODWORD(v8) = 1112014848;
      [*(v3 + 568) systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{a2, v8}];
      v18 = v23;
      v19 = v24;
      LODWORD(v25) = 1112014848;
      LODWORD(v26) = 1112014848;
      [v20 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v25, v26}];
      v8 = v22;
      v6 = v27;
    }
  }

  v64 = v19;
  v65 = v18;
  v32 = *v3 * 0.45;
  if (fmax(v8, v19) <= 0.0)
  {
    v33 = *v3;
  }

  else
  {
    v33 = *v3 * 0.45;
  }

  v34 = *(v3 + 632);
  v35 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v63 = v8;
  if (v34 != 255)
  {
    v38 = *(v3 + 616);
    if (*(v3 + 632))
    {
      v39 = *(v3 + 624);
      if (v34 == 1)
      {
        v35 = *(v3 + 616);
        v37 = *(v3 + 624);
        v36 = v35;
      }

      else
      {
        v45 = sub_188C57860(*(v3 + 616), *(v3 + 624), 2);
        v36 = v38(v45, 0.0, v33, 50.0, 1000.0);
        v37 = v46;
        sub_188B487D4(v38, v39, 2);
        v47 = sub_188C57860(v38, v39, 2);
        v35 = v38(v47, 10000.0, v33, 50.0, 1000.0);
        sub_188B487D4(v38, v39, 2);
      }
    }

    else
    {
      LODWORD(v32) = 1112014848;
      LODWORD(v8) = 1148846080;
      [*(v3 + 616) systemLayoutSizeFittingSize:0.0 withHorizontalFittingPriority:v33 verticalFittingPriority:{v32, v8}];
      v36 = v40;
      v37 = v41;
      LODWORD(v42) = 1112014848;
      LODWORD(v43) = 1148846080;
      [v38 systemLayoutSizeFittingSize:10000.0 withHorizontalFittingPriority:v33 verticalFittingPriority:{v42, v43}];
      v35 = v44;
    }
  }

  v61 = v6;
  v62 = v37;
  v48 = v7 + v6;
  v60 = v7;
  if (v7 > 0.0)
  {
    v48 = v7 + v6 + 8.0;
  }

  if (v48 <= v35)
  {
    v48 = v35;
  }

  sub_188B467F4(&v67, v48);
  v49 = v67;
  v50 = v68;
  v51 = v69;
  v52 = v70;
  v53 = v71;
  v54 = *(v3 + 456);
  v72 = *(v3 + 440);
  v73 = v54;
  v55 = *(v3 + 488);
  v74 = *(v3 + 472);
  v75 = v55;
  if (v74 && v70 < *(&v72 + 1) || *(v3 + 536) && v71 < *(v3 + 512) || *(v3 + 408) && v69 < *(v3 + 384) || *(v3 + 344) && *(&v67 + 1) < *(v3 + 320))
  {
    v56 = 1;
    goto LABEL_35;
  }

  v56 = 2;
  if ((*(v3 + 249) & 1) == 0 || v68 > 0.0)
  {
LABEL_35:
    if (v68 > 0.0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v56 = 0;
LABEL_36:
  v60 = 0.0;
  v61 = 0.0;
  v63 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v62 = 0.0;
  v36 = 0.0;
  v35 = 0.0;
LABEL_37:
  if (!v74)
  {
    sub_188A3F29C(&v72, v66, &unk_1EA936338);
    v57 = 1;
    if (*(v3 + 536))
    {
      goto LABEL_39;
    }

LABEL_41:
    v58 = 1;
    goto LABEL_42;
  }

  v57 = *&v73 <= v70;
  if (!*(v3 + 536))
  {
    goto LABEL_41;
  }

LABEL_39:
  v58 = *(v3 + 520) <= v53;
LABEL_42:
  *a1 = v49;
  *(a1 + 16) = v50;
  *(a1 + 24) = v51;
  *(a1 + 32) = v52;
  *(a1 + 40) = v53;
  *(a1 + 48) = v60;
  *(a1 + 56) = v63;
  *(a1 + 64) = v65;
  *(a1 + 72) = v64;
  result = v62;
  *(a1 + 80) = v61;
  *(a1 + 88) = v36;
  *(a1 + 96) = v62;
  *(a1 + 104) = v36;
  *(a1 + 112) = v35;
  *(a1 + 120) = v56;
  *(a1 + 121) = v57;
  *(a1 + 122) = v58;
  return result;
}

void sub_188B487D4(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_188C5F334(a1, a2, a3);
  }
}

id sub_188B487E8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64D660;
  *(inited + 32) = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  v4 = inited + 32;

  v6 = sub_188B48ADC(v5);

  *(inited + 40) = v6;
  *(inited + 48) = *(v2 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);

  v7 = 0;
LABEL_2:
  v8 = *(v4 + 8 * v7);
  if (v8 >> 62)
  {
    v9 = sub_18A4A7F68();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v7 + 1;

  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v4 = inited + 32;
      v7 = v16;
      if (v16 != 3)
      {
        goto LABEL_2;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      result = sub_188E49AA8(i, v8);
    }

    else
    {
      if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      result = *(v8 + 8 * i + 32);
    }

    v12 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_18907CF94;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188B89F00;
    aBlock[3] = &block_descriptor_101_0;
    v14 = _Block_copy(aBlock);

    v15 = [v12 enumerateVisibleItems_];

    _Block_release(v14);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      goto LABEL_20;
    }

    if (v15)
    {
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_188B48A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_188B48ADC(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v27 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = &qword_1EA93C6B8;
  while (1)
  {
    v5 = *(v27 + 24 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_18A4A7F68();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_18A4A7F68();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_18A4A7F68();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_18A4A8168();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_1890DAA30();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3);
        v18 = sub_188E4D09C(v31, i, v5);
        v20 = v3;
        v21 = *v19;
        (v18)(v31, 0);
        *(v16 + 8 * i) = v21;
        v3 = v20;
      }
    }

    else
    {
      sub_188A34624(0, &unk_1ED48DBD0);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_18A4A7F68();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
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

uint64_t sub_188B48DE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v71 = *(result + 16);
  if (!v71)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v52 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v3 = MEMORY[0x1E69E7CC8];
LABEL_79:
    *a2 = v52;
    *(a2 + 8) = v53;
    *(a2 + 16) = v54;
    *(a2 + 24) = v55;
    *(a2 + 32) = v4;
    *(a2 + 40) = v3;
    return result;
  }

  v69 = a2;
  v2 = 0;
  v70 = result + 32;
  v3 = MEMORY[0x1E69E7CC8];
  v4 = MEMORY[0x1E69E7CC8];
  v72 = MEMORY[0x1E69E7CC0];
  v73 = MEMORY[0x1E69E7CC0];
  v74 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v75 = v2;
    v5 = *(v70 + 24 * v2);
    v86[0] = MEMORY[0x1E69E7CC0];
    v84[0] = MEMORY[0x1E69E7CC0];
    v82[0] = MEMORY[0x1E69E7CC0];
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        break;
      }

      goto LABEL_50;
    }

    v6 = sub_18A4A7F68();
    if (v6)
    {
      break;
    }

LABEL_50:
    v43 = MEMORY[0x1E69E7CC0];
LABEL_51:
    if (*(v43 + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_188C40F34(0, v72[2] + 1, 1, v72);
      }

      v45 = v72[2];
      v44 = v72[3];
      if (v45 >= v44 >> 1)
      {
        v72 = sub_188C40F34((v44 > 1), v45 + 1, 1, v72);
      }

      v72[2] = v45 + 1;
      v72[v45 + 4] = v43;
    }

    else
    {
    }

    v46 = v84[0];
    if (*(v84[0] + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_188C40F34(0, v73[2] + 1, 1, v73);
      }

      v48 = v73[2];
      v47 = v73[3];
      if (v48 >= v47 >> 1)
      {
        v73 = sub_188C40F34((v47 > 1), v48 + 1, 1, v73);
      }

      v73[2] = v48 + 1;
      v73[v48 + 4] = v46;
    }

    else
    {
    }

    v49 = v82[0];
    if (*(v82[0] + 16))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_188C40F34(0, v74[2] + 1, 1, v74);
      }

      v51 = v74[2];
      v50 = v74[3];
      if (v51 >= v50 >> 1)
      {
        v74 = sub_188C40F34((v50 > 1), v51 + 1, 1, v74);
      }

      v74[2] = v51 + 1;
      v74[v51 + 4] = v49;
    }

    else
    {
    }

    v2 = v75 + 1;
    if (v75 + 1 == v71)
    {
      v56 = v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics;
      v57 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 80);
      v93[4] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 64);
      v93[5] = v57;
      v93[6] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 96);
      v94 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 112);
      v58 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 16);
      v93[0] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics);
      v93[1] = v58;
      v59 = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 48);
      v93[2] = *(v68 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics + 32);
      v93[3] = v59;
      sub_188B45920(v72, v93, v82);

      Width = CGRectGetWidth(v83);
      sub_188B42530(v82);
      v61 = *(v56 + 80);
      v91[4] = *(v56 + 64);
      v91[5] = v61;
      v91[6] = *(v56 + 96);
      v92 = *(v56 + 112);
      v62 = *(v56 + 16);
      v91[0] = *v56;
      v91[1] = v62;
      v63 = *(v56 + 48);
      v91[2] = *(v56 + 32);
      v91[3] = v63;
      sub_188B45920(v73, v91, v84);

      v64 = CGRectGetWidth(v85);
      sub_188B42530(v84);
      v65 = *(v56 + 80);
      v89[4] = *(v56 + 64);
      v89[5] = v65;
      v89[6] = *(v56 + 96);
      v90 = *(v56 + 112);
      v66 = *(v56 + 16);
      v89[0] = *v56;
      v89[1] = v66;
      v67 = *(v56 + 48);
      v89[2] = *(v56 + 32);
      v89[3] = v67;
      sub_188B45920(v74, v89, v86);

      v54 = CGRectGetWidth(rect);
      result = sub_188B42530(v86);
      v55 = v54 + v88;
      if (v54 >= v64)
      {
        v53 = v64;
      }

      else
      {
        v53 = v54;
      }

      if (v53 >= Width)
      {
        v52 = Width;
      }

      else
      {
        v52 = v53;
      }

      a2 = v69;
      goto LABEL_79;
    }
  }

  if (v6 < 1)
  {
    goto LABEL_84;
  }

  v7 = 0;
  v76 = v6;
  while (2)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_188E49D08(v7, v5);
    }

    else
    {
      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = sub_188BB70B4();
    v11 = v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8];
    if (v11 <= 0xFD)
    {
      v13 = *&v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93B3F0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18A64BFB0;
      if ((v11 & 0x80) != 0)
      {
        if (v11)
        {
          sub_188BB803C(v13, v11);
          v17 = 0;
          v16 = 0uLL;
          v18 = 0x80;
          v14 = 0.0;
          v15 = xmmword_18A6507C0;
        }

        else
        {
          sub_188BB803C(v13, v11);
          [v13 _width];
          v17 = 0;
          if (v14 <= 0.0)
          {
            v14 = 0.0;
          }

          v15 = 0uLL;
          v18 = 0x80;
          v16 = 0uLL;
        }
      }

      else
      {
        sub_188BB803C(v13, v11);
        sub_188BB8680(&v77);
        v14 = v77;
        v15 = v78;
        v16 = v79;
        v17 = v80;
        v18 = v81;
      }

      *(v12 + 32) = v14;
      *(v12 + 40) = v15;
      *(v12 + 56) = v16;
      *(v12 + 72) = v17;
      *(v12 + 80) = v18;
      sub_188BB6A30(v13, v11);
    }

    else
    {

      v12 = v10;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v93[0] = v4;
    v20 = sub_188A403F4(v9);
    v22 = v4[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (!v24)
    {
      v26 = v21;
      if (v4[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        v28 = v20;
        sub_188FA2E48();
        v20 = v28;
        v4 = *&v93[0];
        if ((v26 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_30:
        *(v4[7] + 8 * v20) = v10;
      }

      else
      {
        sub_188C412CC(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_188A403F4(v9);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_85;
        }

LABEL_29:
        v4 = *&v93[0];
        if (v26)
        {
          goto LABEL_30;
        }

LABEL_32:
        v4[(v20 >> 6) + 8] |= 1 << v20;
        *(v4[6] + 8 * v20) = v9;
        *(v4[7] + 8 * v20) = v10;
        v29 = v4[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_82;
        }

        v4[2] = v30;
      }

      v31 = swift_isUniquelyReferenced_nonNull_native();
      *&v93[0] = v3;
      v32 = sub_188A403F4(v9);
      v34 = v3[2];
      v35 = (v33 & 1) == 0;
      v24 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v24)
      {
        goto LABEL_81;
      }

      v37 = v33;
      if (v3[3] >= v36)
      {
        if (v31)
        {
          goto LABEL_39;
        }

        v39 = v32;
        sub_188FA2E48();
        v32 = v39;
        v3 = *&v93[0];
        if ((v37 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        *(v3[7] + 8 * v32) = v12;
      }

      else
      {
        sub_188C412CC(v36, v31);
        v32 = sub_188A403F4(v9);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_85;
        }

LABEL_39:
        v3 = *&v93[0];
        if (v37)
        {
          goto LABEL_40;
        }

LABEL_42:
        v3[(v32 >> 6) + 8] |= 1 << v32;
        *(v3[6] + 8 * v32) = v9;
        *(v3[7] + 8 * v32) = v12;
        v40 = v3[2];
        v24 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v24)
        {
          goto LABEL_83;
        }

        v3[2] = v41;
      }

      sub_188C40C4C(v42);
      if ([*&v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] _disabledExpansion])
      {

        v10 = v12;
      }

      sub_188C40C4C(v10);
      if (v9[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isFixed] == 1)
      {
        sub_188C40C4C(v12);
      }

      else
      {
      }

      if (v76 == ++v7)
      {

        v43 = v86[0];
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  result = sub_18A4A87A8();
  __break(1u);
  return result;
}

void sub_188B49604(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 80);
  v7[4] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 64);
  v7[5] = v2;
  v7[6] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 96);
  v8 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 112);
  v3 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 16);
  v7[0] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics);
  v7[1] = v3;
  v4 = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 48);
  v7[2] = *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_metrics + 32);
  v7[3] = v4;
  if ((sub_18907F360(a1, v7) & 1) == 0 && (*(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_18907A694();
    }
  }
}

uint64_t sub_188B496C4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  if (v2)
  {
    v3 = v2;
    sub_188C57FA8(v3);
  }

  v4 = sub_188EBC854();
  if (v4)
  {
    v5 = v4;
    sub_188B49844();
  }

  v6 = sub_188AEAD00();
  if (v6)
  {
    v7 = v6;
    sub_188B49844();
  }

  v8 = sub_188AEAF10();
  if (v8)
  {
    v9 = v8;
    sub_188B49844();
  }

  v10 = sub_188AEB244();
  if (v10)
  {
    v11 = v10;
    sub_188B49844();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_customizationContainerView);
    if (v13)
    {
      v14 = v13;
      v15 = [v1 tintColor];
      [v14 setTintColor_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_188B49844()
{
  v1 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts);
  v25 = *(v1 + 16);
  if (!v25)
  {
LABEL_25:
    v17 = v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = *(v17 + 8);
      v19 = objc_opt_self();
      if ([v19 _isInAnimationBlockWithAnimationsEnabled])
      {
        v20 = 1;
      }

      else
      {
        v20 = [v19 _isInSystemAnimationBlockWithAnimationsEnabled];
      }

      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v20, ObjectType, v18);
    }

    return;
  }

  v24 = v1 + 32;

  v2 = 0;
  v23 = v1;
  while (v2 < *(v1 + 16))
  {
    v3 = *(v24 + 24 * v2);
    if (v3 >> 62)
    {
      v4 = sub_18A4A7F68();
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_4;
      }
    }

    if (v4 < 1)
    {
      goto LABEL_34;
    }

    v26 = v2;

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_188E49D08(i, v3);
      }

      else
      {
        v9 = *(v3 + 8 * i + 32);
      }

      v8 = v9;
      if ((*(v9 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) & 1) == 0)
      {
        *(v9 + OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isDirty) = 1;
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          v12 = v10 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_delegate;
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            v15 = *(v12 + 8);
            v16 = objc_opt_self();
            if ([v16 _isInAnimationBlockWithAnimationsEnabled])
            {
              v6 = 1;
            }

            else
            {
              v6 = [v16 _isInSystemAnimationBlockWithAnimationsEnabled];
            }

            v7 = swift_getObjectType();
            (*(v15 + 8))(v6, v7, v15);
          }

          v8 = v11;
        }
      }
    }

    v1 = v23;
    v2 = v26;
LABEL_4:
    if (++v2 == v25)
    {

      v0 = v22;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_188B49B18()
{
  *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isDeferringSearchSuggestionsMenuRefreshForGeometryChange) = 0;
  v1 = sub_188AEAF10();
  if (v1)
  {

    v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration);
    if (v2)
    {
      v6 = v2;
      if ([v6 isHidden])
      {
        v3 = v6;
      }

      else
      {
        v4 = [(_UIBarButtonItemSearchBarGroup *)v6 searchBar];
        v5 = [v4 _searchController];

        [v5 _hostingNavigationBarDidLayoutInlineSearchBar];
        v3 = v5;
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV15TitlePropertiesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_188B49C6C(uint64_t a1, uint64_t a2)
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

  v3 = 0;
  v123 = a1 + 32;
  v4 = a2 + 32;
  v115 = a2 + 32;
  while (1)
  {
    result = sub_188C45F1C(v123 + 192 * v3, v159);
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    sub_188C45F1C(v4 + 192 * v3, v146);
    if ((MEMORY[0x18CFE2F70](v159, v146) & 1) == 0)
    {
      goto LABEL_125;
    }

    v6 = v161;
    v7 = v162;
    v8 = v148;
    v9 = v149;
    if (!CGRectEqualToRect(rect1, rect2))
    {
      goto LABEL_125;
    }

    if (v6 != v8 || v7 != v9)
    {
      goto LABEL_125;
    }

    if (v164)
    {
      if (!v151 || (v163 != v150 || v164 != v151) && (sub_18A4A86C8() & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else if (v151)
    {
      goto LABEL_125;
    }

    if ((MEMORY[0x18CFE2F70](&v165, &v152) & 1) == 0)
    {
      goto LABEL_125;
    }

    v11 = *(v166 + 16);
    if (v11 != *(v153 + 16))
    {
      goto LABEL_125;
    }

    v120 = v3;
    if (v11)
    {
      if (v166 != v153)
      {
        break;
      }
    }

LABEL_94:
    v4 = v115;
    if ((sub_188F8D2D0(v167, v154) & 1) == 0 || v168 != v155 || v169 != v156)
    {
      goto LABEL_125;
    }

    v64 = v170;
    v65 = v171;
    v66 = v157;
    v67 = v158;
    if (v170)
    {
      if (!v157)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, qword_1ED4913C0);
      v68 = v66;
      v69 = v64;
      v70 = sub_18A4A7C88();

      if ((v70 & 1) == 0)
      {
        goto LABEL_125;
      }
    }

    else if (v157)
    {
      goto LABEL_125;
    }

    sub_188C460F0(v146);
    sub_188C460F0(v159);
    result = v65 == v67;
    if (v65 == v67)
    {
      v3 = v120 + 1;
      if (v120 + 1 != v2)
      {
        continue;
      }
    }

    return result;
  }

  v12 = (v166 + 32);
  v13 = (v153 + 32);
  v14 = v11 - 1;
  v109 = v2;
  while (1)
  {
    v15 = v12[1];
    v128 = *v12;
    v129 = v15;
    v16 = v12[2];
    v17 = v12[3];
    v18 = v12[5];
    v132 = v12[4];
    *v133 = v18;
    v130 = v16;
    v131 = v17;
    v19 = v12[6];
    v20 = v12[7];
    v21 = v12[9];
    v135 = v12[8];
    v136 = v21;
    *&v133[16] = v19;
    v134 = v20;
    v22 = v13[1];
    v137 = *v13;
    v138 = v22;
    v23 = v13[2];
    v24 = v13[3];
    v25 = v13[5];
    v141 = v13[4];
    *v142 = v25;
    v139 = v23;
    v140 = v24;
    v26 = v13[6];
    v27 = v13[7];
    v28 = v13[9];
    v144 = v13[8];
    v145 = v28;
    *&v142[16] = v26;
    v143 = v27;
    if (v129)
    {
      if ((v138 & 1) == 0)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, &qword_1ED490230);
      sub_188C464C4(&v128, v127);
      sub_188C464C4(&v137, v127);
      if ((sub_18A4A7C88() & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    else
    {
      if (v138)
      {
        goto LABEL_125;
      }

      sub_188A34624(0, &qword_1ED490230);
      sub_188C464C4(&v128, v127);
      sub_188C464C4(&v137, v127);
    }

    if ((sub_18A4A7C88() & 1) == 0)
    {
      goto LABEL_124;
    }

    v172.origin.x = *(&v129 + 1);
    *&v172.origin.y = v130;
    *&v172.size.height = v131;
    v173.origin.x = *(&v138 + 1);
    *&v173.origin.y = v139;
    *&v173.size.height = v140;
    if (!CGRectEqualToRect(v172, v173) || *(&v131 + 1) != *(&v140 + 1) || *&v132 != *&v141 || *(&v132 + 1) != *(&v141 + 1) || *v133 != *v142)
    {
      goto LABEL_124;
    }

    if (v133[24] == 255)
    {
      if (v142[24] != 255)
      {
        goto LABEL_124;
      }

      goto LABEL_60;
    }

    if (v142[24] == 255)
    {
      goto LABEL_124;
    }

    if (v133[24] > 2u)
    {
      if (v133[24] == 3)
      {
        if (v142[24] != 3)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v133[24] != 4)
        {
          if (v142[24] != 5)
          {
            goto LABEL_124;
          }

LABEL_59:
          if (*&v133[8] != *&v142[8])
          {
            goto LABEL_124;
          }

          goto LABEL_60;
        }

        if (v142[24] != 4)
        {
          goto LABEL_124;
        }
      }
    }

    else
    {
      if (v133[24])
      {
        if (v133[24] == 1)
        {
          if (v142[24] != 1)
          {
            goto LABEL_124;
          }
        }

        else if (v142[24] != 2)
        {
          goto LABEL_124;
        }

        goto LABEL_59;
      }

      if (v142[24])
      {
        goto LABEL_124;
      }
    }

    if (*&v133[8] != *&v142[8] && (sub_18A4A86C8() & 1) == 0)
    {
      goto LABEL_124;
    }

LABEL_60:
    v124 = v14;
    v29 = *(&v134 + 1);
    v30 = v134;
    v31 = *(&v135 + 1);
    v32 = v135;
    v33 = v143;
    v125 = v134;
    v126 = *(&v143 + 1);
    v34 = v144;
    v35 = v145;
    v119 = *(&v135 + 1);
    if (*(&v135 + 1) == 1)
    {
      v113 = v13;
      v114 = v136;
      v36 = v135;
      v37 = *(&v144 + 1);
      v38 = *(&v134 + 1);
      v39 = *(&v136 + 1);
      sub_188EC2284(v134, *(&v134 + 1), v135, 1, v136, *(&v136 + 1));
      if (v37 == 1)
      {
        sub_188EC2284(v33, v126, v34, 1, v35, *(&v35 + 1));
        sub_188EC2210(v125, v38, v36, 1, v114, v39);
        v13 = v113;
LABEL_91:
        sub_188C46888(&v137);
        sub_188C46888(&v128);
        v63 = v124;
        goto LABEL_92;
      }

      v71 = v37;
      v72 = v126;
      sub_188EC2284(v33, v126, v34, v37, v35, *(&v35 + 1));
      v32 = v36;
      v73 = 1;
LABEL_108:
      sub_188EC2210(v125, v38, v32, v73, v114, v39);
      v81 = v33;
      v82 = v72;
      v83 = v34;
      v84 = v71;
      v86 = *(&v35 + 1);
      v85 = v35;
      goto LABEL_123;
    }

    v118 = v144;
    v121 = v143;
    if (*(&v144 + 1) == 1)
    {
      v38 = *(&v134 + 1);
      v74 = v143;
      v73 = *(&v135 + 1);
      v75 = *(&v136 + 1);
      v76 = v136;
      v77 = v134;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v78 = v74;
      v72 = v126;
      sub_188EC2284(v78, v126, v34, 1, v35, *(&v35 + 1));
      v79 = v75;
      v80 = v75;
      v33 = v121;
      sub_188EC2284(v77, v38, v32, v73, v76, v79);
      sub_188EC226C(v77, v38, v32);

      v114 = v76;
      v71 = 1;
      v39 = v80;
      v34 = v118;

      goto LABEL_108;
    }

    v111 = v12;
    v112 = *(&v134 + 1);
    v116 = *(&v145 + 1);
    v117 = *(&v144 + 1);
    v122 = v145;
    if (v135)
    {
      break;
    }

    if (v144)
    {
LABEL_118:
      v94 = *(&v134 + 1);
      v95 = v143;
      v104 = *(&v135 + 1);
      v41 = *(&v136 + 1);
      v96 = v136;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      sub_188EC2284(v95, v126, v118, v117, v35, *(&v35 + 1));
      sub_188EC2284(v125, v94, v32, v104, v96, v41);
      v106 = v96;
      sub_188EC2210(v121, v126, v118, v117, v35, *(&v35 + 1));
      v105 = v125;
      v107 = v94;
      goto LABEL_122;
    }

    v40 = v135;
    v41 = *(&v136 + 1);
    v42 = v136;
    v43 = *(&v143 + 1);
    if (v134 != v143)
    {
      v104 = *(&v135 + 1);
      v97 = v135;
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v32 = v97;
      v98 = v116;
      sub_188EC2284(v33, v126, v118, v117, v122, v116);
      sub_188EC2284(v125, v112, v97, v104, v42, v41);
      v99 = v33;
      v100 = v126;
      v101 = v118;
      v102 = v117;
      v103 = v122;
LABEL_120:
      v106 = v42;
      sub_188EC2210(v99, v100, v101, v102, v103, v98);
      v105 = v125;
      v107 = v112;
      goto LABEL_122;
    }

LABEL_75:
    v110 = v40;
    if (v31)
    {
      v48 = v43;
      v49 = v30;
      if (!v117)
      {
        v87 = v29;
        v32 = v40;
        v88 = v30;
        v104 = v31;
        sub_188EC2284(v30, v29, v32, v31, v42, v41);
        sub_188EC2284(v121, v48, v118, 0, v122, v116);
        sub_188EC2284(v88, v87, v32, v104, v42, v41);
        v106 = v42;
        sub_188EC2210(v121, v126, v118, 0, v122, v116);
        v105 = v88;
        v107 = v87;
        goto LABEL_122;
      }

      v50 = v29;
      v51 = v31;
      v106 = v42;
      sub_188A34624(0, qword_1ED4913C0);
      sub_188EC2284(v49, v50, v40, v51, v42, v41);
      sub_188EC2284(v121, v43, v118, v117, v122, v116);
      sub_188EC2284(v49, v50, v40, v51, v42, v41);
      v52 = v117;
      v53 = v51;
      v54 = sub_18A4A7C88();

      if ((v54 & 1) == 0)
      {
        v93 = v121;
LABEL_112:
        v89 = v126;
        v91 = v117;
        v90 = v118;
        v92 = v122;
LABEL_113:
        sub_188EC2210(v93, v89, v90, v91, v92, v116);
LABEL_114:
        v32 = v110;
        v107 = v112;
        v105 = v125;
        v104 = v119;
        goto LABEL_122;
      }

      if (v106)
      {
LABEL_79:
        v12 = v111;
        if (!v122)
        {
          v93 = v121;
          v89 = v126;
          v91 = v117;
          v90 = v118;
          v92 = 0;
          goto LABEL_113;
        }

        sub_188A34624(0, qword_1ED4913C0);
        v55 = v122;
        v56 = v106;
        v57 = sub_18A4A7C88();

        v58 = v121;
        if ((v57 & 1) == 0)
        {
          v93 = v121;
          goto LABEL_112;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v107 = v29;
      v59 = v30;
      sub_188EC2284(v30, v29, v40, 0, v42, v41);
      if (v117)
      {
        sub_188EC2284(v121, v43, v118, v117, v122, v116);
        sub_188EC2284(v59, v107, v40, 0, v42, v41);
        v32 = v40;
        v106 = v42;
        sub_188EC2210(v121, v126, v118, v117, v122, v116);
        v105 = v59;
        v104 = 0;
        goto LABEL_122;
      }

      sub_188EC2284(v121, v43, v118, 0, v122, v116);
      sub_188EC2284(v59, v107, v40, 0, v42, v41);
      v106 = v42;
      if (v42)
      {
        goto LABEL_79;
      }
    }

    v58 = v121;
    v12 = v111;
    if (v122)
    {
      sub_188EC2210(v121, v126, v118, v117, v122, v116);
      v106 = 0;
      goto LABEL_114;
    }

LABEL_85:
    v32 = v110;
    if (!v41)
    {
      if (v116)
      {
        sub_188EC2210(v58, v126, v118, v117, v122, v116);
        v41 = 0;
        v107 = v112;
        v104 = v119;
        v105 = v125;
        goto LABEL_122;
      }

      sub_188EC2210(v58, v126, v118, v117, v122, 0);
      sub_188EC226C(v125, v112, v110);

      sub_188EC2210(v125, v112, v110, v119, v106, 0);
      v2 = v109;
      goto LABEL_91;
    }

    if (!v116)
    {
      sub_188EC2210(v58, v126, v118, v117, v122, 0);
      v107 = v112;
      v104 = v119;
      v105 = v125;
      goto LABEL_122;
    }

    sub_188A34624(0, &qword_1ED48C4A0);
    v60 = v116;
    v61 = v41;
    v62 = sub_18A4A7C88();

    sub_188EC2210(v121, v126, v118, v117, v122, v116);
    sub_188EC226C(v125, v112, v110);

    sub_188EC2210(v125, v112, v110, v119, v106, v41);
    sub_188C46888(&v137);
    sub_188C46888(&v128);
    v63 = v124;
    v2 = v109;
    if ((v62 & 1) == 0)
    {
      goto LABEL_125;
    }

LABEL_92:
    if (!v63)
    {
      goto LABEL_94;
    }

    v14 = v63 - 1;
    v13 += 10;
    v12 += 10;
  }

  if (v135 != 1)
  {
    v40 = v135;
    v41 = *(&v136 + 1);
    v42 = v136;
    v43 = *(&v143 + 1);
    if (v144 != 2 || v143 != 0)
    {
      v104 = *(&v135 + 1);
      sub_188EC2284(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1));
      v98 = v116;
      sub_188EC2284(v33, v126, v118, v117, v122, v116);
      sub_188EC2284(v125, v112, v40, v104, v42, v41);
      v99 = v33;
      v100 = v126;
      v101 = v118;
      v102 = v117;
      v32 = v40;
      v103 = v122;
      goto LABEL_120;
    }

    goto LABEL_75;
  }

  if (v144 != 1)
  {
    goto LABEL_118;
  }

  v40 = v135;
  v41 = *(&v136 + 1);
  v42 = v136;
  v43 = *(&v143 + 1);
  if (v134 == v143)
  {
    goto LABEL_75;
  }

  v44 = *(&v134 + 1);
  v45 = *(&v135 + 1);
  v46 = v134;
  v47 = sub_18A4A86C8();
  v31 = v45;
  v30 = v46;
  v29 = v44;
  if (v47)
  {
    goto LABEL_75;
  }

  v104 = v45;
  sub_188EC2284(v46, v44, v40, v45, v42, v41);
  sub_188EC2284(v33, v126, v118, v117, v122, v116);
  sub_188EC2284(v46, v44, v40, v45, v42, v41);
  v32 = v40;
  sub_188EC2210(v121, v126, v118, v117, v122, v116);
  v105 = v46;
  v106 = v42;
  v107 = v44;
LABEL_122:
  v108 = v105;
  sub_188EC226C(v105, v107, v32);

  v81 = v108;
  v82 = v107;
  v83 = v32;
  v84 = v104;
  v85 = v106;
  v86 = v41;
LABEL_123:
  sub_188EC2210(v81, v82, v83, v84, v85, v86);
LABEL_124:
  sub_188C46888(&v137);
  sub_188C46888(&v128);
LABEL_125:
  sub_188C460F0(v146);
  sub_188C460F0(v159);
  return 0;
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV06ButtonC10PropertiesVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_5UIKit26NavigationBarContentLayoutV08RenamingD14ViewPropertiesVSg(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

void sub_188B4ABEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v2 = [Strong superview];
    if (v2)
    {

      [v18 bounds];
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      v6 = *&v18[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_preferredHeight];
      v20.size.height = v6;
      Height = CGRectGetHeight(v20);
      [v18 bounds];
      v8 = CGRectGetHeight(v21);
      v9 = 0.0;
      if (v8 < Height)
      {
        [v18 bounds];
        MaxY = CGRectGetMaxY(v22);
        v23.origin.x = x;
        v23.origin.y = y;
        v23.size.width = width;
        v23.size.height = v6;
        v9 = MaxY - CGRectGetHeight(v23);
      }

      [v18 convertRect:0 toView:{x, v9, width, v6}];
      v11 = v24.origin.x;
      v12 = v24.origin.y;
      v13 = v24.size.width;
      v14 = v24.size.height;
      v15 = (v0 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace);
      if (!CGRectEqualToRect(v24, *(v0 + OBJC_IVAR____TtC5UIKit40NavigationBarLargeTitleReparentingHelper_frameInGlobalCoordinateSpace)))
      {
        *v15 = v11;
        v15[1] = v12;
        v15[2] = v13;
        v15[3] = v14;
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          [v16 setNeedsLayout];
        }
      }
    }
  }
}

void sub_188B4ADDC()
{
  if (*(v0 + 168) == 1)
  {
    swift_beginAccess();
    v1 = *(v0 + 344);
    if (!v1)
    {
      goto LABEL_40;
    }

    v2 = v1;
    sub_18916870C();

    return;
  }

  swift_beginAccess();
  v3 = *(v0 + 336);
  if (v3 && *(v3 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v4 = v3;
    sub_188B4C524();

    return;
  }

  swift_beginAccess();
  v5 = *(v0 + 400);
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_34:
    v20 = v3;
    goto LABEL_35;
  }

  while (1)
  {
    v7 = v5 & 0xC000000000000001;
    v8 = (v5 + 32);
    v9 = v3;

    if ((v5 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *v8;
      goto LABEL_12;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v6 = sub_18A4A7F68();
    if (!v6)
    {
      goto LABEL_34;
    }
  }

  v10 = sub_188E4A488(0, v5);
LABEL_12:
  v11 = v10[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v11 > 3)
  {

    v6 = 0;
LABEL_35:

    CGRectMake();
    return;
  }

  if (v6 == 1)
  {
    v12 = 0;
    if (!v7)
    {
      goto LABEL_29;
    }

LABEL_38:
    v18 = sub_188E4A488(v12, v5);
LABEL_31:
    v19 = v18;

    v6 = v19;
    sub_1891698A4();

    goto LABEL_35;
  }

  v12 = 0;
  while (1)
  {
    v13 = v12 + 1;
    if (!v7)
    {
      break;
    }

    v14 = sub_188E4A488(v12 + 1, v5);
    v15 = __OFADD__(v13, 1);
    v16 = (v12 + 2);
    if (v15)
    {
      goto LABEL_26;
    }

LABEL_21:
    v17 = v14[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v17 < 4)
    {
      ++v12;
      if (v16 != v6)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v14 = *(v5 + 8 * v12 + 40);
  v15 = __OFADD__(v13, 1);
  v16 = (v12 + 2);
  if (!v15)
  {
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  if (v7)
  {
    goto LABEL_38;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_38;
  }

LABEL_29:
  if (v12 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = v8[v12];
    goto LABEL_31;
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_188B4B09C()
{
  v4 = v0;
  v5 = *(v0 + 48);
  v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v5)
  {
    goto LABEL_36;
  }

  swift_beginAccess();
  v2 = *(v0 + 328);
  if (!v2 || *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) != 1)
  {
    swift_beginAccess();
    v0 = *(v0 + 400);
    if (v0 >> 62)
    {
      goto LABEL_31;
    }

    v18 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_32:
    v30 = v2;
    v31 = v5;
    goto LABEL_33;
  }

  v5 = v5;
  v0 = v2;
  v7 = sub_188B4C524();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v13;
  v15 = v11;
  v16 = v9;
  v17 = v7;
LABEL_35:
  [v5 v6[400]];

LABEL_36:
  v32 = *(v4 + 152);
  if (v32)
  {
    v33 = v32;
    v0 = v4;
    sub_18916764C();
    [v33 v6[400]];
  }

  v34 = *(v4 + 56);
  if (v34)
  {
    v35 = v34;
    v0 = v4;
    sub_188B4ADDC();
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = v39;
    v44 = *(v4 + 72);
    if (v44)
    {
      v0 = v44;
      [v0 frame];
      [v0 v6[400]];
      v45 = [v0 superview];
      v46 = v45;
      if (v45)
      {
        [v45 safeAreaInsets];
        v48 = v47;
        v50 = v49;
      }

      else
      {
        v48 = 0.0;
        v50 = 0.0;
      }

      v183.origin.x = v40;
      v183.origin.y = v41;
      v183.size.width = v42;
      v183.size.height = v43;
      MinX = CGRectGetMinX(v183);
      if (MinX > v48)
      {
        v48 = MinX;
      }

      v184.origin.x = v40;
      v184.origin.y = v41;
      v184.size.width = v42;
      v184.size.height = v43;
      MaxX = CGRectGetMaxX(v184);
      if (v46)
      {
        [v46 bounds];
        v53 = CGRectGetMaxX(v185);
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v53 - v50;
      if (v54 >= MaxX)
      {
        v54 = MaxX;
      }

      v55 = v54 - v48;
      v56 = v35;
      v57 = [v0 superview];
      [v0 convertRect:v57 fromView:{v48, v41, v55, v43}];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v56 v6[400]];
    }

    else
    {
      [v35 v6[400]];
      v46 = v35;
    }
  }

  v5 = *(v4 + 128);
  if (v5)
  {
    swift_beginAccess();
    v2 = *(v4 + 352);
    if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
    {
      v66 = v5;
      v0 = v2;
      v67 = sub_188B4C524();
      v69 = v68;
      v71 = v70;

      goto LABEL_87;
    }

    swift_beginAccess();
    v0 = *(v4 + 400);
    if (v0 >> 62)
    {
      goto LABEL_83;
    }

    v72 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      while (1)
      {
        v1 = v0 & 0xC000000000000001;
        v3 = v0 & 0xFFFFFFFFFFFFFF8;
        rect = (v0 + 32);
        v73 = v5;
        v74 = v2;

        if ((v0 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v75 = *rect;
          goto LABEL_62;
        }

LABEL_82:
        __break(1u);
LABEL_83:
        v72 = sub_18A4A7F68();
        if (!v72)
        {
          goto LABEL_84;
        }
      }

      v75 = sub_188E4A488(0, v0);
LABEL_62:
      v76 = v75[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v76 <= 4)
      {
        if (v72 == 1)
        {
          v23 = 0;
          if (v1)
          {
            goto LABEL_211;
          }

          goto LABEL_79;
        }

        v23 = 0;
        while (1)
        {
          v6 = (v23 + 1);
          if (v1)
          {
            v77 = sub_188E4A488(v23 + 1, v0);
            v25 = __OFADD__(v6, 1);
            v78 = v23 + 2;
            if (v25)
            {
              goto LABEL_76;
            }
          }

          else
          {
            if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v77 = *(v0 + 8 * v23 + 40);
            v25 = __OFADD__(v6, 1);
            v78 = v23 + 2;
            if (v25)
            {
LABEL_76:
              __break(1u);
LABEL_77:
              v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
              if (v1)
              {
                goto LABEL_211;
              }

              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_217;
              }

LABEL_79:
              if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v80 = rect[v23];
                goto LABEL_81;
              }

              __break(1u);
              goto LABEL_213;
            }
          }

          v79 = v77[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

          if (v79 < 5)
          {
            ++v23;
            if (v78 != v72)
            {
              continue;
            }
          }

          goto LABEL_77;
        }
      }
    }

    else
    {
LABEL_84:
      v82 = v2;
      v83 = v5;
    }

    v0 = 0;
    goto LABEL_86;
  }

LABEL_90:
  v5 = *(v4 + 80);
  if (!v5)
  {
    goto LABEL_125;
  }

  swift_beginAccess();
  v2 = *(v4 + 344);
  if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
  {
    v5 = v5;
    v0 = v2;
    v89 = sub_188B4C524();
    v91 = v90;
    v93 = v92;
    v95 = v94;

    v96 = v95;
    v97 = v93;
    v98 = v91;
    v99 = v89;
    goto LABEL_124;
  }

  swift_beginAccess();
  v0 = *(v4 + 400);
  if (!(v0 >> 62))
  {
    v100 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_96;
    }

LABEL_121:
    v110 = v2;
    v111 = v5;
LABEL_122:
    v0 = 0;
    goto LABEL_123;
  }

  while (1)
  {
    v100 = sub_18A4A7F68();
    if (!v100)
    {
      goto LABEL_121;
    }

LABEL_96:
    v1 = v0 & 0xC000000000000001;
    v3 = v0 & 0xFFFFFFFFFFFFFF8;
    rect = (v0 + 32);
    v101 = v5;
    v102 = v2;

    if ((v0 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v103 = *rect;
      goto LABEL_99;
    }

LABEL_119:
    __break(1u);
  }

  v103 = sub_188E4A488(0, v0);
LABEL_99:
  v104 = v103[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

  if (v104 > 6)
  {

    goto LABEL_122;
  }

  if (v100 == 1)
  {
    v23 = 0;
    if (!v1)
    {
      goto LABEL_116;
    }

    goto LABEL_213;
  }

  v23 = 0;
  while (1)
  {
    v6 = (v23 + 1);
    if (!v1)
    {
      break;
    }

    v105 = sub_188E4A488(v23 + 1, v0);
    v25 = __OFADD__(v6, 1);
    v106 = v23 + 2;
    if (v25)
    {
      goto LABEL_113;
    }

LABEL_108:
    v107 = v105[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v107 < 7)
    {
      ++v23;
      if (v106 != v100)
      {
        continue;
      }
    }

    goto LABEL_114;
  }

  if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_119;
  }

  v105 = *(v0 + 8 * v23 + 40);
  v25 = __OFADD__(v6, 1);
  v106 = v23 + 2;
  if (!v25)
  {
    goto LABEL_108;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
  if (!v1)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_218;
    }

LABEL_116:
    if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v108 = rect[v23];
      goto LABEL_118;
    }

    __break(1u);
LABEL_215:
    v133 = sub_188E4A488(v23, v0);
LABEL_157:
    v134 = v133;

    v0 = v134;
    sub_1891698A4();

LABEL_162:
    v124 = CGRectMake();
LABEL_163:
    [v5 v6[400]];

    goto LABEL_164;
  }

LABEL_213:
  v108 = sub_188E4A488(v23, v0);
LABEL_118:
  v109 = v108;

  v0 = v109;
  sub_1891698A4();

LABEL_123:
  v99 = CGRectMake();
LABEL_124:
  [v5 v6[400]];

LABEL_125:
  v112 = *(v4 + 144);
  if (v112)
  {
    v0 = objc_opt_self();
    v113 = v112;
    if (([v0 _hasInProcessProgressAnimator] & 1) == 0)
    {
      v0 = v4;
      sub_188CCAC84();
      [v113 v6[400]];
    }
  }

  v5 = *(v4 + 160);
  if (v5)
  {
    swift_beginAccess();
    v2 = *(v4 + 384);
    if (v2 && *(v2 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_active) == 1)
    {
      v5 = v5;
      v0 = v2;
      v114 = sub_188B4C524();
      v116 = v115;
      v118 = v117;
      v120 = v119;

      v121 = v120;
      v122 = v118;
      v123 = v116;
      v124 = v114;
      goto LABEL_163;
    }

    swift_beginAccess();
    v0 = *(v4 + 400);
    if (v0 >> 62)
    {
      goto LABEL_159;
    }

    v125 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v125)
    {
      while (1)
      {
        v1 = v0 & 0xC000000000000001;
        v3 = v0 & 0xFFFFFFFFFFFFFF8;
        rect = (v0 + 32);
        v126 = v5;
        v127 = v2;

        if ((v0 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v128 = *rect;
          goto LABEL_138;
        }

LABEL_158:
        __break(1u);
LABEL_159:
        v125 = sub_18A4A7F68();
        if (!v125)
        {
          goto LABEL_160;
        }
      }

      v128 = sub_188E4A488(0, v0);
LABEL_138:
      v129 = v128[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

      if (v129 <= 9)
      {
        if (v125 == 1)
        {
          v23 = 0;
          if (v1)
          {
            goto LABEL_215;
          }

          goto LABEL_155;
        }

        v23 = 0;
        while (1)
        {
          v6 = (v23 + 1);
          if (v1)
          {
            v130 = sub_188E4A488(v23 + 1, v0);
            v25 = __OFADD__(v6, 1);
            v131 = v23 + 2;
            if (v25)
            {
              goto LABEL_152;
            }
          }

          else
          {
            if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_158;
            }

            v130 = *(v0 + 8 * v23 + 40);
            v25 = __OFADD__(v6, 1);
            v131 = v23 + 2;
            if (v25)
            {
LABEL_152:
              __break(1u);
LABEL_153:
              v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
              if (v1)
              {
                goto LABEL_215;
              }

              if ((v23 & 0x8000000000000000) == 0)
              {
LABEL_155:
                if (v23 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v133 = rect[v23];
                  goto LABEL_157;
                }

                __break(1u);
LABEL_217:
                __break(1u);
LABEL_218:
                __break(1u);
              }

              __break(1u);
              return;
            }
          }

          v132 = v130[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

          if (v132 < 0xA)
          {
            ++v23;
            if (v131 != v125)
            {
              continue;
            }
          }

          goto LABEL_153;
        }
      }
    }

    else
    {
LABEL_160:
      v135 = v2;
      v136 = v5;
    }

    v0 = 0;
    goto LABEL_162;
  }

LABEL_164:
  v137 = *(v4 + 120);
  if (v137)
  {
    v138 = *(v4 + 80);
    if (v138)
    {
      v139 = v137;
      [v138 frame];
      v140 = *(v4 + 80);
      recta = v141;
      v143 = v142;
      v145 = v144;
      v147 = v146;
      if (v140)
      {
        [v140 directionalLayoutMargins];
        v150 = v149;
        goto LABEL_170;
      }
    }

    else
    {
      v151 = v137;
      recta = 0.0;
      v147 = 0.0;
      v145 = 0.0;
      v143 = 0.0;
    }

    v150 = 0.0;
    v148 = 0.0;
LABEL_170:
    v152 = *(v4 + 224) - v150 - v148;
    v0 = v137;
    v153 = 0.0;
    [v0 sizeThatFits_];
    v155 = v154;
    [v0 setBounds_];
    v156 = v150 + v152 * 0.5;
    v186.origin.x = v143;
    v186.origin.y = v145;
    v186.size.width = v147;
    v186.size.height = recta;
    MaxY = CGRectGetMaxY(v186);
    v158 = *(v4 + 80);
    if (v158)
    {
      [*(v158 + OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView) restingHeightOfTitleView];
      v153 = v159;
    }

    [v0 _firstLineBaseline];
    [v0 setCenter_];
  }

  swift_beginAccess();
  v5 = *(v4 + 400);
  if (!(v5 >> 62))
  {
    v18 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }

LABEL_175:
    if (v18 >= 1)
    {

      swift_beginAccess();
      v161 = 0;
      LOBYTE(v162) = 1;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v163 = sub_188E4A488(v161, v5);
          if (!v162)
          {
            goto LABEL_186;
          }
        }

        else
        {
          v163 = *(v5 + 8 * v161 + 32);
          if (!v162)
          {
LABEL_186:
            v162 = 0;
            v166 = *(v4 + 360);
            if (!v166)
            {
              goto LABEL_184;
            }

            goto LABEL_187;
          }
        }

        v164 = *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_preferredHeight];
        if (v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_isCollapsible] == 1)
        {
          v165 = 0.0;
          if (v164 <= 0.0)
          {
            goto LABEL_183;
          }
        }

        else
        {
          v165 = *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_minimumHeight];
          if (v165 >= v164)
          {
LABEL_183:
            v162 = 1;
            v166 = *(v4 + 360);
            if (!v166)
            {
              goto LABEL_184;
            }

            goto LABEL_187;
          }
        }

        v180 = _UIUnlerp(*&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_collapsingHeight], v165, v164 - *&v163[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_bottomInsetForTransitionProgress]);
        v162 = _UIClamp_2(v180) == 0.0;
        v166 = *(v4 + 360);
        if (!v166)
        {
LABEL_184:
          v167 = v163;
LABEL_190:
          v173 = *(v4 + 368);
          if (!v173 || (type metadata accessor for NavigationBarLayout.InsertLayoutData(), v172 = v163, v174 = v173, v175 = sub_18A4A7C88(), v174, v172, (v175 & 1) == 0))
          {
            v176 = *(v4 + 384);
            v172 = v163;
            if (v176)
            {
              type metadata accessor for NavigationBarLayout.InsertLayoutData();
              v177 = v176;
              v178 = sub_18A4A7C88();

              if ((v178 & 1) == 0)
              {
                goto LABEL_178;
              }

              v179 = *(v4 + 160);
              if (!v179)
              {
                goto LABEL_178;
              }

              v172 = v179;
              sub_189168020(v172, v162);
            }
          }

          goto LABEL_177;
        }

LABEL_187:
        type metadata accessor for NavigationBarLayout.InsertLayoutData();
        v168 = v163;
        v169 = v166;
        v170 = sub_18A4A7C88();

        if ((v170 & 1) == 0)
        {
          goto LABEL_190;
        }

        v171 = *(v4 + 136);
        if (!v171)
        {
          goto LABEL_178;
        }

        v172 = v171;
        sub_189168020(v172, v162);
        [v172 _updateIsPinnedInNavigationBar_];
LABEL_177:

LABEL_178:
        ++v161;

        if (v18 == v161)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_204:
    v21 = sub_188E4A488(0, v0);
LABEL_10:
    v22 = v21[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

    if (v22 <= 1)
    {
      if (v18 == 1)
      {
        v23 = 0;
        if (!v1)
        {
          goto LABEL_27;
        }

        goto LABEL_209;
      }

      v23 = 0;
      while (1)
      {
        v6 = (v23 + 1);
        if (v1)
        {
          v24 = sub_188E4A488(v23 + 1, v0);
          v25 = __OFADD__(v6, 1);
          v26 = v23 + 2;
          if (v25)
          {
LABEL_24:
            __break(1u);
LABEL_25:
            v6 = &selRef_setEnqueuedWillEnterForegroundActions_;
            if (!v1)
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                __break(1u);
                goto LABEL_209;
              }

LABEL_27:
              if (v23 < *(v3 + 16))
              {
                v28 = rect[v23];
                goto LABEL_29;
              }

              __break(1u);
LABEL_211:
              v80 = sub_188E4A488(v23, v0);
LABEL_81:
              v81 = v80;

              v0 = v81;
              sub_1891698A4();

LABEL_86:
              v67 = CGRectMake();
              v69 = v84;
              v71 = v85;
LABEL_87:
              [v5 fullHeightOfRefreshControl];
              v87 = v86;
              v88 = [v5 hostContainerView];
              if (v88)
              {
                v0 = v88;
                [v88 v6[400]];
              }

              goto LABEL_90;
            }

LABEL_209:
            v28 = sub_188E4A488(v23, v0);
LABEL_29:
            v29 = v28;

            v0 = v29;
            sub_1891698A4();

LABEL_34:
            v17 = CGRectMake();
            goto LABEL_35;
          }
        }

        else
        {
          if (v6 >= *(v3 + 16))
          {
            do
            {
              __break(1u);
LABEL_31:
              v18 = sub_18A4A7F68();
              if (!v18)
              {
                goto LABEL_32;
              }

LABEL_7:
              v1 = v0 & 0xC000000000000001;
              v3 = v0 & 0xFFFFFFFFFFFFFF8;
              rect = (v0 + 32);
              v19 = v5;
              v20 = v2;

              if ((v0 & 0xC000000000000001) != 0)
              {
                goto LABEL_204;
              }
            }

            while (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10));
            v21 = *rect;
            goto LABEL_10;
          }

          v24 = *(v0 + 8 * v23 + 40);
          v25 = __OFADD__(v6, 1);
          v26 = v23 + 2;
          if (v25)
          {
            goto LABEL_24;
          }
        }

        v27 = v24[OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData_order];

        if (v27 < 2)
        {
          ++v23;
          if (v26 != v18)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_33:
    v0 = 0;
    goto LABEL_34;
  }

  v18 = sub_18A4A7F68();
  if (v18)
  {
    goto LABEL_175;
  }
}

uint64_t sub_188B4C018(void *a1)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = [v1 stack];
    v3 = [v4 topItem];

    if (!v3)
    {
      return 0;
    }
  }

  v5 = v3;
  v6 = a1;
  v7 = [v1 navigationBar];
  v8 = [v7 _effectiveDelegate];

  if (v8)
  {
    if ([v8 respondsToSelector_])
    {
      v9 = [v8 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v9 = [v5 _searchControllerIfAllowed];
LABEL_8:

  if (!v9)
  {

    return 0;
  }

  v10 = [v5 _stackEntry];
  if (v10 && (v11 = v10, v12 = [v10 isSearchActive], v11, (v12 & 1) != 0))
  {
    v13 = [v9 hidesNavigationBarDuringPresentation];

    return v13 ^ 1;
  }

  else
  {

    return 1;
  }
}

void sub_188B4C1CC()
{
  v1 = v0;
  v2 = [v0 stack];
  v21 = [v2 topItem];

  if (!v21)
  {
    return;
  }

  v3 = [v21 _stackEntry];
  if (v3 && (v4 = v3, v5 = [v3 isSearchActive], v4, v5))
  {
    v6 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    v7 = *&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
    if (v7 && (*&v6[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration + 8] & 1) != 0)
    {
      v8 = v7;
      v9 = v6;
      v10 = sub_188B3461C();

      v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
      v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = (v10 & 1) == 0;
      v12 = v21;
      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
      v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = 1;
      v12 = v21;
    }

    if ([v12 searchBarPlacement] == 2)
    {
      v16 = v21;
      v17 = [v1 navigationBar];
      v18 = [v17 _effectiveDelegate];

      if (!v18)
      {
        v19 = [v16 _searchControllerIfAllowed];
LABEL_23:

        if (v19)
        {
          v20 = [v19 hidesNavigationBarDuringPresentation];

          *v11 = v20;
        }

        goto LABEL_9;
      }

      if ([v18 respondsToSelector_])
      {
        v19 = [v18 _effectiveSearchControllerForSearchBarGivenTopNavigationItem_];
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v11 = &v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar];
    v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_isSuppressingTabBar] = 0;
  }

LABEL_9:
  v12 = v21;
LABEL_10:
  if (v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__isActiveTabBarHost] == 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__tabBarHostedView];
    if (v13)
    {
      v14 = *v11;
      v15 = v13;
      [v15 setSuppressTabBar_];

      v12 = v21;
    }
  }
}

void UIFloorToScale(double a1, double a2)
{
  if (a2 == 0.0 && AdjustToScale_onceToken_0 != -1)
  {
    dispatch_once(&AdjustToScale_onceToken_0, &__block_literal_global_306);
  }
}

double sub_188B4C524()
{
  if (*(v0 + OBJC_IVAR____TtCC5UIKit19NavigationBarLayoutP33_95161DEFFEF46EC64A409C69AE26E63516InsertLayoutData__verticalOrigin + 8))
  {
    sub_18A4A80E8();

    v1 = [v0 description];
    v2 = sub_18A4A7288();
    v4 = v3;

    MEMORY[0x18CFE22D0](v2, v4);

    v5 = sub_18A4A7258();

    __UIKIT_SOFT_ASSERT_FAIL(v5);
  }

  return 0.0;
}

void sub_188B4C634(void *a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_188CC51D8(a1, a2, a3 & 1);
  }
}

uint64_t get_enum_tag_for_layout_string_5UIKit24NavigationBarContentViewC08SubtitleD0OSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_188B4C668(void *a1, void *a2)
{
  v3 = *&v2[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_largeTitleView];
  if (!v3)
  {
    return;
  }

  v4 = v2;
  v7 = v3;
  v8 = (sub_188B3761C() & 1);
  v9 = OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView;
  if ([*&v7[OBJC_IVAR____TtC5UIKit27NavigationBarLargeTitleView_largeTitleView] titleType] != v8)
  {
    [*&v7[v9] setTitleType_];
    sub_188B4ABEC();
  }

  if (!a1)
  {
    [*&v7[v9] setTitleView_];
    goto LABEL_13;
  }

  v10 = [a1 _largeTitleView];
  v11 = *&v7[v9];
  if (!v10)
  {
    [*&v7[v9] setTitleView_];
    v14 = [a1 largeTitle];
    if (v14 || (v14 = [a1 title]) != 0)
    {
      v15 = v14;
      sub_18A4A7288();
    }

LABEL_13:
    v16 = *&v7[v9];
    v17 = sub_18A4A7258();

    [v16 setTitle_];

    if (!a1)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v12 = v10;
  v13 = sub_18A4A7258();
  [v11 setTitle_];

  [*&v7[v9] setTitleView_];
LABEL_14:
  v18 = [a1 largeAttributedSubtitle];
  if (v18)
  {
LABEL_19:
    v23 = v18;
    goto LABEL_21;
  }

  v19 = [a1 attributedSubtitle];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 string];
    if (!v21)
    {
      sub_18A4A7288();
      v21 = sub_18A4A7258();
    }

    v22 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

    v18 = v22;
    goto LABEL_19;
  }

LABEL_20:
  v23 = 0;
LABEL_21:
  v48 = v23;
  [*&v7[v9] setAttributedSubtitle_];

  v24 = [a1 largeSubtitleView];
  [*&v7[v9] setSubtitleView_];

  if (a1 && (v25 = [a1 _alternateLargeTitles]) != 0)
  {
    v26 = v25;
    sub_18A4A7548();

    v27 = *&v7[v9];
    v28 = sub_18A4A7518();
  }

  else
  {
    v28 = 0;
    v27 = *&v7[v9];
  }

  [v27 setAlternateTitles_];

  v29 = [a1 _largeTitleAccessoryView];
  [*&v7[v9] setAccessoryView_];

  if (a1)
  {
    [*&v7[v9] setAlignAccessoryViewToTitleBaseline_];
    [*&v7[v9] setAccessoryViewHorizontalAlignment_];
    v30 = [a1 _largeTitleTwoLineMode];
  }

  else
  {
    [*&v7[v9] setAlignAccessoryViewToTitleBaseline_];
    [*&v7[v9] setAccessoryViewHorizontalAlignment_];
    v30 = 0;
  }

  [*&v7[v9] setTwoLineMode_];
  v31 = [v4 navigationBar];
  v32 = [v31 traitCollection];

  v33 = [v32 userInterfaceIdiom];
  v47 = v4;
  if (a2)
  {
    v34 = [a2 largeTitleTextAttributes];
    type metadata accessor for Key(0);
    sub_188C5E0DC();
  }

  else
  {
    v35 = [v4 navigationBar];
    v36 = [v35 largeTitleTextAttributes];

    if (v36)
    {
      type metadata accessor for Key(0);
      sub_188C5E0DC();
      sub_18A4A70A8();
    }

    else
    {
      sub_188AEC99C(MEMORY[0x1E69E7CC0]);
    }

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v37 = sub_18A4A7088();

    v34 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v37, v33, 0);
  }

  sub_18A4A70A8();
  v38 = a2;

  v39 = *&v7[v9];
  type metadata accessor for Key(0);
  sub_188C5E0DC();
  v40 = sub_18A4A7088();

  [v39 setTitleAttributes_];

  if (v38)
  {
    v41 = [v38 subtitleTextAttributes];
  }

  else
  {
    v41 = _UINavigationTitleAppearanceDefaultLargeSubtitleTextAttributes(v45);
  }

  v42 = v41;
  sub_18A4A70A8();

  v43 = *&v7[v9];
  v44 = sub_18A4A7088();

  [v43 setSubtitleAttributes_];

  if (sub_188B3761C())
  {
    sub_188BAABA0(v46);
  }

  [*&v7[v9] setProvidesExtraSpaceForExcessiveLineHeights_];
  [*&v7[v9] updateContent];
  sub_188B4ABEC();
}

void sub_188B4CD90(void *a1)
{
  v3 = *(v1 + 104);
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_6:
    *(v1 + 104) = a1;
    v7 = a1;

    sub_188B386EC();
    goto LABEL_7;
  }

  v4 = v1;
  sub_188A34624(0, &unk_1ED48DBC0);
  v5 = v3;
  v7 = a1;
  v6 = sub_18A4A7C88();

  if ((v6 & 1) == 0)
  {
    v1 = v4;
    v3 = *(v4 + 104);
    goto LABEL_6;
  }

LABEL_7:
}

uint64_t sub_188B4CE64@<X0>(uint64_t a1@<X8>)
{
  sub_188B4D13C();

  sub_188B48DE8(v2, v16);

  v4 = *v16;
  v3 = *&v16[1];
  v5 = v16[2];
  v6 = v16[3];
  v15 = v17;

  v8 = sub_188B48ADC(v7);

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:

    v4 = v3;
    goto LABEL_15;
  }

  result = sub_18A4A7F68();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (result != 1)
  {

LABEL_15:
    *a1 = v4;
    *(a1 + 8) = v3;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v15;
    return result;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_188E49AA8(0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    v11 = v10;

    v12 = [v11 barButtonItems];

    sub_188A34624(0, &qword_1ED48E8C0);
    v13 = sub_18A4A7548();

    if (v13 >> 62)
    {
      v14 = sub_18A4A7F68();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 <= 1)
    {
      v4 = v3;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

BOOL sub_188B4D020()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode);
  if (v2 == 2)
  {
    v6 = sub_188AEB244();
    if (!v6)
    {
      goto LABEL_10;
    }

    v4 = v6;
    v5 = sub_1890797B0();
  }

  else
  {
    if (v2 != 1)
    {
      goto LABEL_10;
    }

    if (sub_188EBCD74() && !dyld_program_sdk_at_least())
    {
      return 1;
    }

    v3 = sub_188AEB244();
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = v3;
    v5 = sub_189079CF4(v3);
  }

  v7 = v5;

  if (v7)
  {
    return 1;
  }

LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode) == 2)
  {
    v8 = sub_188AEAD00();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1890797B0();

      if (v10)
      {
        return 1;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode) == 2)
  {
    v11 = sub_188EBC854();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1890797B0();

      if (v13)
      {
        return 1;
      }
    }
  }

  return *(v1 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_additionalOverflowItems) != 0;
}

void sub_188B4D13C()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_188B33C7C(MEMORY[0x1E69E7CC0]);
  v68 = v2;
  v69 = v3;
  v67 = 0;
  sub_188B4D780();
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections);
  if (!v4)
  {
LABEL_82:
    __break(1u);
    return;
  }

  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v6 += 3;

      sub_188B52458(v9, v7, v8, v66, v1, &v69, &v67, &v68);

      --v5;
    }

    while (v5);

    v10 = v68;
    v3 = v69;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionLayouts) = v10;

  v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupLayoutMap;
  swift_beginAccess();
  *(v1 + v11) = v3;

  v12 = MEMORY[0x1E69E7CC0];
  v57 = *(v10 + 16);
  if (v57)
  {
    v13 = 0;
    v58 = v10 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    v55 = v10;
    v56 = v1;
    while (v13 < *(v10 + 16))
    {
      v15 = *(v58 + 24 * v13);
      v65 = v12;
      if (v15 >> 62)
      {
        v16 = sub_18A4A7F68();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v59 = v14;
      v60 = v13;

      if (v16)
      {
        v54 = v15;
        v17 = 0;
        v18 = v15 & 0xC000000000000001;
        v19 = v15 & 0xFFFFFFFFFFFFFF8;
        v63 = v16;
        v64 = v15 + 32;
        v20 = &selRef__isDictationButtonVisible;
        v61 = v15 & 0xC000000000000001;
        v62 = v15 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v18)
          {
            v21 = sub_188E49D08(v17, v54);
          }

          else
          {
            if (v17 >= *(v19 + 16))
            {
              goto LABEL_79;
            }

            v21 = *(v64 + 8 * v17);
          }

          v22 = v21;
          v23 = __OFADD__(v17++, 1);
          if (v23)
          {
            goto LABEL_78;
          }

          v24 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group;
          if ([*&v21[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_group] v20[143]])
          {
          }

          else
          {
            if (v22[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout__compact] == 1 && (v25 = [*&v22[v24] representativeItem]) != 0 && (v26 = v25, v27 = objc_msgSend(v25, sel_isHidden), v26, !v27))
            {
LABEL_37:
              sub_18A4A81D8();
              sub_18A4A8218();
              sub_18A4A8228();
              sub_18A4A81E8();
            }

            else
            {
              v28 = [*&v22[v24] barButtonItems];
              sub_188A34624(0, &qword_1ED48E8C0);
              v29 = sub_18A4A7548();

              if (v29 >> 62)
              {
                v30 = sub_18A4A7F68();
              }

              else
              {
                v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v31 = 0;
              v32 = 0;
              while (v30 != v31)
              {
                if ((v29 & 0xC000000000000001) != 0)
                {
                  v33 = sub_188E49ABC(v31, v29);
                }

                else
                {
                  if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_75;
                  }

                  v33 = *(v29 + 8 * v31 + 32);
                }

                v34 = v33;
                if (__OFADD__(v31, 1))
                {
                  __break(1u);
LABEL_75:
                  __break(1u);
LABEL_76:
                  __break(1u);
                  goto LABEL_77;
                }

                v35 = [v33 isHidden];

                v36 = v35 ^ 1;
                ++v31;
                v23 = __OFADD__(v32, v36);
                v32 += v36;
                if (v23)
                {
                  goto LABEL_76;
                }
              }

              v20 = &selRef__isDictationButtonVisible;
              v18 = v61;
              if (v32 >= 1)
              {
                goto LABEL_37;
              }
            }

            v19 = v62;
            v16 = v63;
          }

          if (v17 == v16)
          {
            v37 = v65;
            goto LABEL_44;
          }
        }
      }

      v37 = MEMORY[0x1E69E7CC0];
LABEL_44:

      if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
      {
        v39 = sub_18A4A7F68();
        v38 = sub_18A4A7F68();
        if (v38)
        {
LABEL_47:
          v40 = 0;
          while (1)
          {
            if ((v37 & 0xC000000000000001) != 0)
            {
              v41 = sub_188E49D08(v40, v37);
            }

            else
            {
              if (v40 >= *(v37 + 16))
              {
                goto LABEL_80;
              }

              v41 = *(v37 + 32 + 8 * v40);
            }

            v42 = v41;
            v23 = __OFADD__(v40++, 1);
            if (v23)
            {
              break;
            }

            if ((v41[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout + 8] & 0x80000000) == 0)
            {
              *(*&v41[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_representativeLayout] + 160) = 1;
            }

            v43 = OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_itemLayouts;
            swift_beginAccess();
            v44 = *&v42[v43];
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = (v44 + 40);
              v47 = (v44 + 40);
              do
              {
                v48 = *v47;
                v47 += 16;
                if ((v48 & 0x80000000) == 0)
                {
                  *(*(v46 - 1) + 160) = 1;
                }

                v46 = v47;
                --v45;
              }

              while (v45);
            }

            v42[OBJC_IVAR____TtCC5UIKit19NavigationButtonBar11GroupLayout_isOnlyGroupInSection] = v39 == 1;

            if (v40 == v38)
            {
              goto LABEL_63;
            }
          }

LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          break;
        }
      }

      else
      {
        v38 = *(v37 + 16);
        v39 = v38;
        if (v38)
        {
          goto LABEL_47;
        }
      }

LABEL_63:
      if (v39 < 1)
      {

        v10 = v55;
        v1 = v56;
        v12 = MEMORY[0x1E69E7CC0];
        v14 = v59;
        v49 = v60;
      }

      else
      {
        v14 = v59;
        v10 = v55;
        v1 = v56;
        v49 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_188B5227C(0, *(v59 + 2) + 1, 1, v59);
        }

        v51 = *(v14 + 2);
        v50 = *(v14 + 3);
        v12 = MEMORY[0x1E69E7CC0];
        if (v51 >= v50 >> 1)
        {
          v53 = sub_188B5227C((v50 > 1), v51 + 1, 1, v14);
          v12 = MEMORY[0x1E69E7CC0];
          v14 = v53;
        }

        *(v14 + 2) = v51 + 1;
        v52 = &v14[24 * v51];
        *(v52 + 5) = 0;
        *(v52 + 6) = 0;
        *(v52 + 4) = v37;
      }

      v13 = v49 + 1;
      if (v13 == v57)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_73:
  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayoutHasCriticalGroup) = v67;
  *(v1 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_effectiveLayout) = v14;
}

uint64_t sub_188B4D780()
{
  v1 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections;
  if (*(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_resolvedSections))
  {
    v2 = 0;
    v3 = 0;
LABEL_30:
    sub_188A55B8C(v2);
    return sub_188A55B8C(v3);
  }

  v4 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer;
  v5 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_groupOrderer);
  v6 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
  if (v5)
  {
    v64 = MEMORY[0x1E69E7CC0];
    v7 = swift_allocObject();
    *(v7 + 16) = &v64;
    v8 = swift_allocObject();
    v56 = sub_18907CFDC;
    *(v8 + 16) = sub_18907CFDC;
    *(v8 + 24) = v7;
    v62 = sub_18907CFD8;
    v63 = v8;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_188B52BCC;
    v61 = &block_descriptor_81_1;
    v9 = _Block_copy(&aBlock);
    v10 = v5;

    [(_UIButtonBarGroupOrderer *)v10 enumerateOrderedGroupsPartitionedIntoSections:v9];

    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v64 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_sectionedBarButtonGroups);

  v56 = 0;
LABEL_7:
  v11 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups;
  v12 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedLeadingGroups);
  if (v12 >> 62)
  {
    v13 = sub_18A4A7F68();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 < 1)
  {
    v19 = 0;
    v55 = 0;
    goto LABEL_17;
  }

  if (*(v0 + v4) || !v64[2])
  {
    v14 = objc_opt_self();
    sub_188A34624(0, &unk_1ED48DBD0);

    v15 = sub_18A4A7518();

    v16 = swift_allocObject();
    *(v16 + 16) = &v64;
    isEscapingClosureAtFileLocation = swift_allocObject();
    v55 = sub_18907CD90;
    *(isEscapingClosureAtFileLocation + 16) = sub_18907CD90;
    *(isEscapingClosureAtFileLocation + 24) = v16;
    v62 = sub_18907CFD8;
    v63 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_188B52BCC;
    v61 = &block_descriptor_61_1;
    v18 = _Block_copy(&aBlock);
    v6 = v63;

    [v14 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v18);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v19 = 0;
    v6 = &OBJC_INSTANCE_METHODS__UIViewServiceProxy_ReplyAwaiting;
LABEL_17:
    v15 = OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups;
    v28 = *(v0 + OBJC_IVAR____TtC5UIKit19NavigationButtonBar_fixedTrailingGroups);
    if (v28 >> 62)
    {
      v29 = sub_18A4A7F68();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = v19;
    if (v29 < 1)
    {
      v34 = 0;
      v3 = 0;
      goto LABEL_29;
    }

    if (!*(v0 + v4))
    {
      isEscapingClosureAtFileLocation = v64;
      if (v64[2])
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_26;
        }

        goto LABEL_36;
      }
    }

    v30 = v1;
    v31 = objc_opt_self();
    sub_188A34624(0, &unk_1ED48DBD0);

    v32 = sub_18A4A7518();

    v6 = swift_allocObject();
    v6[2] = &v64;
    v33 = swift_allocObject();
    v3 = sub_188B5341C;
    *(v33 + 16) = sub_188B5341C;
    *(v33 + 24) = v6;
    v62 = sub_188B52C3C;
    v63 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v59 = 1107296256;
    v60 = sub_188B52BCC;
    v61 = &block_descriptor_41_3;
    v15 = _Block_copy(&aBlock);
    v1 = v63;

    [v31 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v34 = 0;
      v1 = v30;
LABEL_29:
      *(v0 + v1) = v64;

      sub_188A55B8C(v56);
      sub_188A55B8C(v54);
      sub_188A55B8C(v55);
      v2 = v34;
      goto LABEL_30;
    }

    goto LABEL_34;
  }

  v52 = v1;
  v21 = v64[4];
  v20 = v64[5];
  v22 = v64[6];

  sub_188C99D68(0);

  v57 = MEMORY[0x1E69E7CC0];
  v23 = objc_opt_self();
  v50 = v0;
  aBlock = *(v0 + v11);

  sub_188B34B04(v21);
  sub_188A34624(0, &unk_1ED48DBD0);
  v24 = sub_18A4A7518();

  v25 = swift_allocObject();
  *(v25 + 2) = &v57;
  *(v25 + 3) = v21;
  *(v25 + 4) = v20;
  *(v25 + 5) = v22;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_188BB67AC;
  *(v26 + 24) = v25;
  v15 = v25;
  v62 = sub_18907CFD8;
  v63 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v59 = 1107296256;
  v60 = sub_188B52BCC;
  v61 = &block_descriptor_71_1;
  isEscapingClosureAtFileLocation = _Block_copy(&aBlock);
  v1 = v63;

  [v23 _partitionGroupsIntoSections_sectionHandler_];

  _Block_release(isEscapingClosureAtFileLocation);
  v0 = swift_isEscapingClosureAtFileLocation();

  if ((v0 & 1) == 0)
  {
    v27 = v57;

    sub_188C99E1C(0, 0, v27);

    v55 = 0;
    v19 = sub_188BB67AC;
    v0 = v50;
    v1 = v52;
    goto LABEL_17;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_188BB6798(isEscapingClosureAtFileLocation);
  isEscapingClosureAtFileLocation = result;
LABEL_26:
  v53 = v1;
  v36 = *(isEscapingClosureAtFileLocation + 16);
  if (v36)
  {
    v37 = v6;
    v38 = v36 - 1;
    v39 = (isEscapingClosureAtFileLocation + 24 * v36);
    v40 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    *(isEscapingClosureAtFileLocation + 16) = v38;
    v64 = isEscapingClosureAtFileLocation;
    v57 = MEMORY[0x1E69E7CC0];
    v43 = objc_opt_self();
    v51 = v0;
    v44 = *&v15[v0];
    aBlock = v40;

    sub_188B34B04(v44);
    sub_188A34624(0, &unk_1ED48DBD0);
    v45 = sub_18A4A7518();

    v46 = swift_allocObject();
    v46[2] = &v57;
    v46[3] = v40;
    v46[4] = v41;
    v46[5] = v42;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_188C411B0;
    *(v47 + 24) = v46;
    v62 = sub_18907CFD8;
    v63 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v59 = v37[308];
    v60 = sub_188B52BCC;
    v61 = &block_descriptor_51_1;
    v48 = _Block_copy(&aBlock);

    [v43 _partitionGroupsIntoSections_sectionHandler_];

    _Block_release(v48);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if ((v45 & 1) == 0)
    {

      sub_188C411D4(v49);

      v3 = 0;
      v34 = sub_188C411B0;
      v0 = v51;
      v1 = v53;
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_188B4E2A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = ObjectType;
  v4 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout;
  if (v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout])
  {
    v23.receiver = v0;
    v23.super_class = ObjectType;
    objc_msgSendSuper2(&v23, sel_layoutSubviews);
    return;
  }

  v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isPerformingLayout] = 1;
  v5 = _UINavigationBarCastToAugmentedTitleView(*&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 8]);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _navigationBarContentOverlayRects];
    sub_188A34624(0, &qword_1ED48EC30);
    v8 = sub_18A4A7548();
  }

  else
  {
    v8 = 0;
  }

  v25.receiver = v1;
  v25.super_class = v3;
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer];
  [v1 bounds];
  [v9 setFrame_];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v13 = [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled];
    v22 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout;
    v14 = v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout] | v13;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v14 & 1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_188B51BD8;
    *(v17 + 24) = v16;
    aBlock[4] = sub_188A4B574;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188A4A968;
    aBlock[3] = &block_descriptor_162;
    v18 = _Block_copy(aBlock);
    v19 = v1;

    [(UITraitCollection *)v15 _performWithFallbackEnvironment:v19 block:v18];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      if (v8)
      {
        if (v6)
        {
          v20 = [v6 _navigationBarContentOverlayRects];
          sub_188A34624(0, &qword_1ED48EC30);
          v21 = sub_18A4A7548();

          LOBYTE(v20) = sub_188CCF39C(v8, v21);

          if ((v20 & 1) == 0)
          {
            [v6 setNeedsLayout];
          }
        }

        else
        {
        }
      }

      if (qword_1ED48C6C8 == -1)
      {
        goto LABEL_15;
      }
    }

    swift_once();
LABEL_15:
    if (byte_1EA930840 == 1)
    {
      sub_188EBE970();
    }

    v12 = v22;
    goto LABEL_18;
  }

  v11 = Strong;

  v12 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_shouldAnimateNextLayout;
LABEL_18:
  v1[v12] = 0;
  v1[v4] = 0;
}

uint64_t sub_188B4E658()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

void sub_188B4E6A0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_contentView];
    sub_188A34624(0, &qword_1ED48F680);
    v5 = v4;
    v6 = a1;
    v7 = sub_18A4A7C88();

    if (v7 & 1) != 0 || (v8 = *&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift_promptView]) != 0 && (v9 = v6, v10 = v8, v11 = sub_18A4A7C88(), v10, v9, (v11))
    {
      v14 = v6;
      v12 = [v2 navigationBar];
      v13 = [v12 window];

      if (v13)
      {

        _UIBarsSetAccessibilityLimits(v14);
      }
    }
  }
}

double sub_188B4E848()
{
  v1 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];

    [v1 contentHeightForContentSize_];
  }

  else
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    result = 44.0;
    if (v5 == 5)
    {
      return 36.0;
    }
  }

  return result;
}

void sub_188B4E8EC(void *a1)
{
  v3 = v1[18];
  v4 = v1[12];
  v29 = v3;
  if (v4)
  {
    v5 = v3;
    [a1 insertSubview:v4 atIndex:0];
    v4 = 1;
    v6 = v1[16];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v3;
    v6 = v1[16];
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = [v6 hostContainerView];
  if (v8)
  {
    v9 = v8;
    [a1 insertSubview:v8 atIndex:v4];

    ++v4;
  }

LABEL_7:
  v10 = v1[19];
  if (v10)
  {
    [a1 insertSubview:v10 atIndex:v4++];
  }

  v11 = v1[20];
  if (v11)
  {
    [a1 insertSubview:v11 atIndex:v4++];
  }

  if (v29)
  {
    [a1 insertSubview:v29 atIndex:v4++];
  }

  v12 = v1[10];
  if (v12)
  {
    [a1 insertSubview:v12 atIndex:v4++];
  }

  v13 = v1[9];
  if (v13)
  {
    v14 = v1[9];
  }

  else
  {
    v15 = v1[7];
    if (!v15)
    {
      goto LABEL_20;
    }

    v14 = v15;
    v13 = 0;
  }

  v16 = v13;
  [a1 insertSubview:v14 atIndex:v4];

  ++v4;
LABEL_20:
  v17 = v1[6];
  if (v17)
  {
    [a1 insertSubview:v17 atIndex:v4++];
  }

  v18 = v1[15];
  if (v18)
  {
    [a1 insertSubview:v18 atIndex:v4++];
  }

  v19 = v1[7];
  if (v19)
  {
    v20 = [*(v19 + OBJC_IVAR____TtC5UIKit24NavigationBarContentView_assistant) previewContainer];
    if (v20)
    {
      v21 = v20;
      [a1 insertSubview:v20 atIndex:v4];
    }
  }

  v22 = v1[9];
  if (v22)
  {
    v23 = v1[7];
    if (v23)
    {
      v24 = v23;
      v25 = v22;
      v26 = [v24 superview];
      if (v26 && (v27 = v26, v26, v27 == v25))
      {
        v28 = v24;
        v24 = v25;
      }

      else
      {
        [v25 addSubview_];
        v28 = v25;
      }
    }
  }

  if (v29)
  {
    [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  }
}

id sub_188B4EC10(void *a1)
{
  if (*&v1[OBJC_IVAR____TtC5UIKit44_UINavigationBarVisualProviderModernIOSSwift__appearanceAPIVersion] > 1 || ((v8 = a1, v2 = [a1 userInterfaceStyle], v3 = objc_msgSend(v1, sel_navigationBar), v4 = objc_msgSend(v3, sel_barStyle), v3, a1 = v8, (v4 - 3) >= 0xFFFFFFFFFFFFFFFELL) ? (v5 = v2 == 2) : (v5 = 1), v5))
  {

    return a1;
  }

  else
  {
    v7 = [v8 _traitCollectionByReplacingNSIntegerValue_forTraitToken_];

    return v7;
  }
}

double sub_188B4ECFC(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v333 = v8;
  v431 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView;
  v9 = *&v1[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renamingContentView];
  if (v9)
  {
    v10 = v9;
    v11 = [v3 traitCollection];
    v12 = [v11 horizontalSizeClass];

    if (v12 == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    [v10 setTextAlignment_];
  }

  v14 = [v3 traitCollection];
  v15 = [v14 _barPlattersHidden];

  v16 = [v3 traitCollection];
  v17 = sub_188B4E848();
  v18 = [v3 _shouldReverseLayoutDirection];
  v19 = [v16 userInterfaceIdiom];
  v328 = v7;
  if (v19 <= 2)
  {
    if ((v19 + 1) < 4)
    {
LABEL_8:
      [v16 displayScale];
      v21 = v20;

      if (v15)
      {
        v22 = 6.0;
      }

      else
      {
        v22 = 8.0;
      }

      v433 = 4.0;
      if (v15)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 4.0;
      }

      if (v15)
      {
        v24 = 6.0;
      }

      else
      {
        v24 = 12.0;
      }

      if (v15)
      {
        v25 = 12.0;
      }

      else
      {
        v25 = 2.0;
      }

      v26 = v15 ^ 1;
      if (v15)
      {
        v27 = 12.0;
      }

      else
      {
        v27 = 6.0;
      }

      v28 = 1;
      v435 = 36.0;
      v434 = 12.0;
      if (v15)
      {
        v29 = 12.0;
      }

      else
      {
        v29 = 7.0;
      }

      goto LABEL_26;
    }

    goto LABEL_67;
  }

  if (v19 == 3)
  {
    [v16 displayScale];
    v21 = v61;

    v28 = 0;
    v25 = 2.0;
    v435 = 28.0;
    v26 = 1;
    v24 = 8.0;
    v23 = 4.0;
    v22 = 0.0;
    v433 = 4.0;
    v434 = 8.0;
    v27 = 8.0;
    v29 = 8.0;
    goto LABEL_26;
  }

  if (v19 == 6)
  {
    goto LABEL_8;
  }

  if (v19 != 5)
  {
LABEL_67:
    [v16 displayScale];
    v21 = v62;

    v29 = 7.0;
    v26 = 1;
    v27 = 6.0;
    v25 = 2.0;
    v24 = 12.0;
    v23 = 4.0;
    v22 = 8.0;
    v435 = 36.0;
    v433 = 4.0;
    v28 = 1;
    v434 = 12.0;
    goto LABEL_26;
  }

  [v16 displayScale];
  v21 = v43;

  if (v15)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 4.0;
  }

  v22 = 6.0;
  if (v15)
  {
    v25 = 6.0;
  }

  else
  {
    v25 = 2.0;
  }

  v44 = 8.0;
  v24 = 12.0;
  if (v15)
  {
    v44 = 12.0;
  }

  v434 = v44;
  if (v15)
  {
    v27 = 10.0;
  }

  else
  {
    v27 = 6.0;
  }

  if (v15)
  {
    v29 = 11.0;
  }

  else
  {
    v29 = 7.0;
  }

  v26 = v15 ^ 1;
  v28 = 1;
  v435 = 28.0;
  v433 = v23;
LABEL_26:
  v30 = sub_188EBC854();
  if (v30)
  {
    v31 = &v30[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v31 = 0;
    *(v31 + 1) = v17;
    v31[16] = v18;
    *(v31 + 17) = *v493;
    *(v31 + 5) = *&v493[3];
    *(v31 + 3) = v21;
    *(v31 + 4) = v22;
    *(v31 + 5) = v23;
    *(v31 + 6) = v433;
    *(v31 + 7) = v24;
    *(v31 + 8) = v435;
    *(v31 + 9) = v25;
    *(v31 + 10) = v434;
    *(v31 + 11) = v27;
    v31[96] = v28;
    *(v31 + 97) = *v492;
    *(v31 + 25) = *&v492[3];
    *(v31 + 13) = v29;
    v31[112] = v26;
    v31[113] = v28;
  }

  v32 = sub_188AEAD00();
  if (v32)
  {
    v33 = &v32[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v33 = 0;
    *(v33 + 1) = v17;
    v33[16] = v18;
    *(v33 + 17) = *v493;
    *(v33 + 5) = *&v493[3];
    *(v33 + 3) = v21;
    *(v33 + 4) = v22;
    *(v33 + 5) = v23;
    *(v33 + 6) = v433;
    *(v33 + 7) = v24;
    *(v33 + 8) = v435;
    *(v33 + 9) = v25;
    *(v33 + 10) = v434;
    *(v33 + 11) = v27;
    v33[96] = v28;
    *(v33 + 97) = *v492;
    *(v33 + 25) = *&v492[3];
    *(v33 + 13) = v29;
    v33[112] = v26;
    v33[113] = v28;
  }

  v34 = sub_188AEB244();
  if (v34)
  {
    v35 = &v34[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v35 = 0;
    *(v35 + 1) = v17;
    v35[16] = v18;
    *(v35 + 17) = *v493;
    *(v35 + 5) = *&v493[3];
    *(v35 + 3) = v21;
    *(v35 + 4) = v22;
    *(v35 + 5) = v23;
    *(v35 + 6) = v433;
    *(v35 + 7) = v24;
    *(v35 + 8) = v435;
    *(v35 + 9) = v25;
    *(v35 + 10) = v434;
    *(v35 + 11) = v27;
    v35[96] = v28;
    *(v35 + 97) = *v492;
    *(v35 + 25) = *&v492[3];
    *(v35 + 13) = v29;
    v35[112] = v26;
    v35[113] = v28;
  }

  v36 = sub_188AEAF10();
  if (v36)
  {
    v37 = &v36[OBJC_IVAR____TtC5UIKit19NavigationButtonBar_layoutMetrics];
    *v37 = 0;
    *(v37 + 1) = v17;
    v37[16] = v18;
    *(v37 + 17) = *v493;
    *(v37 + 5) = *&v493[3];
    *(v37 + 3) = v21;
    *(v37 + 4) = v22;
    *(v37 + 5) = v23;
    *(v37 + 6) = v433;
    *(v37 + 7) = v24;
    *(v37 + 8) = v435;
    *(v37 + 9) = v25;
    *(v37 + 10) = v434;
    *(v37 + 11) = v27;
    v37[96] = v28;
    *(v37 + 97) = *v492;
    *(v37 + 25) = *&v492[3];
    *(v37 + 13) = v29;
    v37[112] = v26;
    v37[113] = v28;
  }

  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_activeRenamerSession] && *&v3[v431])
  {
    v38 = [v3 traitCollection];
    v39 = [v38 horizontalSizeClass];

    v438 = v39 == 1;
  }

  else
  {
    v438 = 0;
  }

  v40 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v41 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineSearchConfiguration];
  v326 = v18;
  v322 = v26;
  v320 = v28;
  v334 = v5;
  if (!v41)
  {
    v436 = 0;
    goto LABEL_60;
  }

  v436 = v40[9] & (v5 ^ 1);
  if ((*(v40 + 4) & 1) == 0)
  {
LABEL_60:
    v347 = 0;
    goto LABEL_61;
  }

  v42 = v41;
  v347 = sub_188B3461C();

LABEL_61:
  v45 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled;
  v327 = v17;
  v324 = v25;
  v325 = v21;
  v323 = v23;
  v321 = v22;
  v319 = v27;
  v332 = v29;
  if (v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleEnabled] == 1)
  {
    sub_188B55154();
    v46 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
    if (v46)
    {
      if (v3[v45] == 1)
      {
        v47 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
        if (v47)
        {
          v48 = v46;
          v49 = v47;
          [v49 bounds];
          v51 = v50;
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v58 = v48;
          [v49 convertRect:v58 toCoordinateSpace:{v51, v53, v55, v57}];
          v60 = v59;
        }

        else
        {
          v60 = 0.0;
          v63 = v46;
        }

        [v46 setMenuAlignmentInsets_];
      }
    }
  }

  if (*v40)
  {
    v64 = *v40;
    if ([v64 isHidden])
    {
      v65 = v64;
LABEL_79:

      goto LABEL_80;
    }

    v66 = [(_UIBarButtonItemSearchBarGroup *)v64 searchBar];
    v65 = v66;
    if (v66 && ([v66 _isEnabled] & 1) == 0)
    {
      v67 = [v65 window];
      if (!v67)
      {
        v68 = 1;
        goto LABEL_78;
      }
    }

    v68 = 0;
LABEL_78:
    [(_UIBarButtonItemSearchBarGroup *)v64 _setDisabledExpansion:v68];
    [(_UIBarButtonItemSearchBarGroup *)v64 _setSearchBarShouldBeFlexible:?];

    goto LABEL_79;
  }

LABEL_80:
  v69 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v70 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 16];
  v489 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext];
  v490[0] = v70;
  *(v490 + 10) = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 26];
  v346 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 42];
  v345 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 43];
  v349 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_tabBarContext + 44];
  v71 = sub_188EBE444();
  *&v491[5] = v489;
  *&v491[21] = v490[0];
  *&v491[31] = *(v490 + 10);
  v72 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl;
  v73 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__titleControl];
  if (v73)
  {
    v413 = [v73 isInteractive];
  }

  else
  {
    v413 = 0;
  }

  [v3 _safeAreaCornerInsets];
  v74 = [v3 _shouldReverseLayoutDirection];
  if (v74)
  {
    v75 = *&v726;
  }

  else
  {
    v75 = *&v723;
  }

  v439 = v75;
  if (v74)
  {
    v76 = *(&v726 + 1);
  }

  else
  {
    v76 = *(&v723 + 1);
  }

  v415 = v76;
  v77 = [v3 _shouldReverseLayoutDirection];
  if (v77)
  {
    v78 = *&v723;
  }

  else
  {
    v78 = *&v726;
  }

  v437 = v78;
  if (v77)
  {
    v79 = *(&v723 + 1);
  }

  else
  {
    v79 = *(&v726 + 1);
  }

  v80 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins];
  v81 = sub_188AECB54(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_margins + 64], [v3 _shouldReverseLayoutDirection]);
  [v3 safeAreaInsets];
  v86 = v82;
  v416 = v24;
  v414 = v79;
  if (*(v80 + 8))
  {
    if ((~v81 & 5) != 0)
    {
      v87 = v81 | 5;
    }

    else
    {
      v87 = v81;
    }

    v86 = UIEdgeInsetsSubtract(v87, v82, v83, v84, v85, v82);
  }

  [v3 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v92 = UIEdgeInsetsAdd(15, v88, v89, v90, v91, v86);
  [v3 _shouldReverseLayoutDirection];
  _UIEdgeInsetsFromDirectionalEdgeInsets();
  v97 = UIEdgeInsetsMax(10, v93, v94, v95, v96, v92);
  v99 = v98;
  v101 = v100;
  v102 = [v3 _shouldReverseLayoutDirection];
  if (v102)
  {
    v103 = v99;
  }

  else
  {
    v103 = v101;
  }

  if (v102)
  {
    v99 = v101;
  }

  [v3 bounds];
  v108 = UIRectInset(v104, v105, v106, v107, v97, v103, 10.0, v99);
  v389 = v109;
  v440 = v110;
  v365 = v111;
  v427 = v45;
  if (v15)
  {
    v112 = sub_188EBC854();
    if (v112 && (v113 = v112, v114 = sub_1890797B0(), v113, (v114 & 1) != 0) || (v115 = sub_188AEAD00()) != 0 && (v116 = v115, v117 = sub_1890797B0(), v116, (v117 & 1) != 0))
    {
      v108 = v108 - v332;
      v440 = v332 + v440;
      v439 = v439 - v332;
    }

    v118 = sub_188AEAF10();
    if (v118)
    {
      v119 = v118;
      v120 = sub_1890797B0();

      if (v120)
      {
        v440 = v332 + v440;
        v437 = v437 - v332;
      }
    }
  }

  v409 = sub_188B4E848();
  v121 = [v3 traitCollection];
  v122 = [v121 horizontalSizeClass];

  v123 = [v3 traitCollection];
  v407 = [v123 userInterfaceIdiom];

  v124 = [v3 traitCollection];
  [v124 displayScale];
  v348 = v125;

  [v3 bounds];
  v412 = v126;
  v411 = v127;
  v410 = v128;
  v130 = v129;
  v131 = *v69 & (v69[42] | v69[43]);
  v408 = v122;
  if (v131)
  {
    v132 = *(v69 + 1);
    v133 = *(v69 + 2);
    v134 = *(v69 + 3);
    v135 = *(v69 + 4);
  }

  else
  {
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 0;
  }

  v136 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost;
  v137 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_augmentedTitleViewHost];
  v406 = v132;
  v405 = v133;
  v404 = v134;
  v403 = v135;
  if (v137)
  {
    v138 = *(v137 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v138)
    {
      v139 = v138;
      if ([v139 _preferredAlignment])
      {
        v140 = [v139 _preferredAlignment];

        if (v140 <= 3)
        {
          v401 = 0x2010001u >> (8 * v140);
          goto LABEL_124;
        }
      }

      else
      {
      }
    }
  }

  LOBYTE(v401) = 0;
LABEL_124:
  v400 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_resolvedContentSize];
  v141 = v131 ^ 1;
  v142 = 1;
  if ((*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_toolbarStyle] - 1) > 1)
  {
    v143 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    v142 = v143 && ([v143 useLeadingAlignedLargeTitle:v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 72] toolbarStyle:?] & 1) != 0;
  }

  v430 = v142;
  v145 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 40];
  v144 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 48];
  v146 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 64];
  v402 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleContent + 56];
  v399 = sub_188EBE8E0();
  v396 = _UIBarsUseNewPadHeights();
  v398 = [v3 _shouldReverseLayoutDirection];
  v367 = v141 & 1;
  v476 = v141 & 1;
  v475 = 1;
  v481 = 1;
  v147 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_backButton];
  v148 = 0;
  if (v147 && ((v438 | v436) & 1) == 0)
  {
    v150 = swift_allocObject();
    *(v150 + 16) = v3;
    *(v150 + 24) = v147;
    v154 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_visualProvider];
    if (v154)
    {
      v155 = v147;
      v156 = v3;
      [v154 minimumBackButtonWidth];
    }

    else
    {
      v157 = v147;
      v158 = [v3 traitCollection];
      v159 = [v158 userInterfaceIdiom];

      if (v159 == 5)
      {
        v160 = _UISolariumEnabled();

        v153 = 34.0;
        if (v160)
        {
          v153 = 38.0;
        }
      }

      else
      {

        v153 = 44.0;
      }
    }

    v151 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView__backButtonMaximumWidth];
    v149 = sub_188C5DE00;
    v152 = 2;
  }

  else
  {
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v152 = 255;
    v153 = 0.0;
  }

  v393 = v152;
  v366 = v153;
  v161 = v71 & 1;
  v162 = *&v3[v136];
  v397 = v150;
  v395 = v151;
  if (v162)
  {
    v163 = *(v162 + OBJC_IVAR____TtCC5UIKit24NavigationBarContentView22AugmentedTitleViewHost_augmentedTitleView);
    if (v163)
    {
      [v163 _navigationBarBackButtonMaximumWidth];
      v148 = v164;
      v481 = 0;
    }
  }

  objc_opt_self();
  +[UIView _beginDisablingPromoteDescendantToFirstResponder];
  v165 = 0;
  v166 = -1;
  v394 = v149;
  v318 = v161;
  if (((v349 | v438 | v436) & 1) != 0 || ((v346 ^ 1 | v161) & 1) == 0 || ((v345 ^ 1 | v161) & 1) == 0)
  {
    v317 = 0;
    v173 = 0;
    v388 = -1;
    v170 = 0;
LABEL_163:
    v171 = -1;
    goto LABEL_164;
  }

  v165 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeTitleControl];
  if (!v165 || v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_renderInlineLargeTitle] != 1)
  {
    if (v3[v427] == 1)
    {
      sub_188B55154();
      v165 = *&v3[v72];
      if (v165)
      {
        v174 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
        v175 = v165;
        v176 = v174;
        sub_188FE3828(v175);

        v166 = 0;
      }
    }

    else
    {
      v165 = 0;
    }

    v177 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
    if (v177)
    {
      v178 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
      v173 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_titleIconView];
      v179 = v177;
      v180 = v178;
      sub_188FE3828(v179);

      v181 = 0;
    }

    else
    {
      v173 = 0;
      v181 = -1;
    }

    v388 = v181;
    v182 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_subtitleView];
    if (v182)
    {
      v183 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
      v184 = v182;
      v185 = v183;
      v170 = v182;
      v186 = v185;
      sub_188FE3828(v184);

      v171 = 0;
      v317 = 0;
      goto LABEL_164;
    }

    v170 = 0;
    v317 = 0;
    goto LABEL_163;
  }

  v167 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
  v168 = v165;
  v169 = v167;
  sub_188FE3828(v168);

  v170 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_inlineLargeSubtitleView];
  if (v170)
  {
    v171 = 0;
  }

  else
  {
    v171 = -1;
  }

  v172 = v170;
  v166 = 0;
  v173 = 0;
  v388 = -1;
  v430 = 1;
  v317 = 1;
LABEL_164:
  v387 = v171;
  v390 = v170;
  v391 = v173;
  v392 = v166;
  v187 = *&v3[v431];
  v386 = v187;
  if (v187)
  {
    v188 = v187;
    v189 = [v3 traitCollection];
    v190 = [v189 horizontalSizeClass];

    v191 = v190 == 1;
    [v188 horizontalTextInset];
    v193 = v192;
  }

  else
  {
    v193 = 0;
    v191 = 2;
  }

  v194 = swift_allocObject();
  *(v194 + 16) = 0;
  v195 = swift_allocObject();
  v196 = MEMORY[0x1E69E7CC0];
  v339 = v195;
  *(v195 + 16) = MEMORY[0x1E69E7CC0];
  v316 = (v195 + 16);
  v338 = swift_allocObject();
  *(v338 + 16) = 0;
  v337 = swift_allocObject();
  *(v337 + 16) = v196;
  v336 = swift_allocObject();
  *(v336 + 16) = 0;
  v335 = swift_allocObject();
  *(v335 + 16) = v196;
  v341 = swift_allocObject();
  *(v341 + 16) = 0;
  v340 = swift_allocObject();
  *(v340 + 16) = v196;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticLeadingGroupsMode] == 1)
  {
    v197 = sub_188EBC854();
    v198 = v197;
    if (!v197)
    {
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      goto LABEL_175;
    }

    if (!v438 && (v436 & 1) == 0)
    {
      sub_188B4D13C();

      sub_188B48DE8(v206, v494);
      v428 = v494[0];
      v353 = v494[1];
      v425 = v494[2];
      v202 = v494[3];
      v203 = v494[4];
      v207 = v494[5];

      v208 = swift_allocObject();
      v208[2] = v194;
      v208[3] = v339;
      v208[4] = v198;
      v198 = v208;
      v723 = 0u;
      v724 = 0u;
      v725 = 0u;
      v726 = 0u;

      sub_188A3F5FC(&v723, &unk_1EA936338);
      v204 = v207;
      v201 = v425;
      v199 = v428;
      v200 = v353;
      v205 = sub_188EC2BF8;
      goto LABEL_175;
    }
  }

  v199 = 0;
  v200 = 0;
  v201 = 0;
  v202 = 0;
  v203 = 0;
  v204 = 0;
  v205 = 0;
  v198 = 0;
LABEL_175:
  v429 = v199;
  v426 = v201;
  v384 = v202;
  v383 = v203;
  v381 = v198;
  v382 = v204;
  v378 = v205;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingGroupsMode] == 1)
  {
    v209 = sub_188AEAD00();
    if (v209)
    {
      v210 = v209;
      if (!v438 && (v436 & 1) == 0)
      {
        sub_188B4D13C();

        sub_188B48DE8(v292, v495);
        v420 = v495[0];
        v418 = v495[1];
        v213 = v495[2];
        v214 = v495[3];
        v424 = v495[4];
        v422 = v495[5];

        v218 = swift_allocObject();
        v218[2] = v338;
        v218[3] = v337;
        v218[4] = v210;
        v723 = 0u;
        v724 = 0u;
        v725 = 0u;
        v726 = 0u;

        sub_188A3F5FC(&v723, &unk_1EA936338);
        v212 = v418;
        v211 = v420;
        v216 = v422;
        v215 = v424;
        v217 = sub_188B428D0;
        goto LABEL_181;
      }
    }
  }

  v211 = 0;
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0;
  v218 = 0;
LABEL_181:
  v417 = v212;
  v419 = v211;
  v377 = v217;
  v421 = v216;
  v423 = v215;
  v368 = v218;
  if (*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerGroupsMode] == 1)
  {
    v219 = sub_188AEB244();
    if (v219)
    {
      v220 = v219;
      if (!v438 && v347 & 1 | ((v436 & 1) == 0))
      {
        sub_188B4D13C();

        sub_188B48DE8(v221, v496);
        v432 = v496[0];
        v375 = v496[2];
        v376 = v496[1];
        v373 = v496[4];
        v374 = v496[3];
        v372 = v496[5];

        v222 = swift_allocObject();
        v222[2] = v336;
        v222[3] = v335;
        v371 = v222;
        v222[4] = v220;
        v723 = 0u;
        v724 = 0u;
        v725 = 0u;
        v726 = 0u;

        sub_188A3F5FC(&v723, &unk_1EA936338);
        v370 = sub_188EC2BF8;
        goto LABEL_188;
      }
    }
  }

  v432 = 0;
  v375 = 0;
  v376 = 0;
  v373 = 0;
  v374 = 0;
  v371 = 0;
  v372 = 0;
  v370 = 0;
LABEL_188:
  v223 = sub_188B4D020();
  if (v223)
  {
    v224 = sub_188B2A31C();
    if (v224 && (v225 = v224, v226 = [v224 image], v225, v218 = v368, v226))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v233 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v233)
    {
      [v233 setHidden_];
    }

    if ((v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] & 1) == 0)
    {
      v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] = 1;
LABEL_202:
      sub_188B33CA4();
      [v3 setNeedsLayout];
    }
  }

  else
  {
    v227 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled;
    if ((v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingGroupsEnabled] & 1) == 0)
    {
      v228 = OBJC_IVAR____TtC5UIKit24NavigationBarContentView_staticTrailingItemGroups;
      swift_beginAccess();
      v229 = *&v3[v228];
      v230 = v229 >> 62 ? sub_18A4A7F68() : *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v231 = v230 > 0;
      v232 = v3[v227];
      v3[v227] = v231;
      if (v231 != v232)
      {
        goto LABEL_202;
      }
    }
  }

  v234 = sub_188AEAF10();
  v235 = v234;
  v343 = v146;
  v344 = v145;
  v342 = v148;
  v385 = v193;
  v379 = v214;
  v380 = v213;
  if (!v234)
  {
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v240 = 0;
    v241 = 0;
    goto LABEL_208;
  }

  if (v438 || (v436 & v347 & 1) != 0)
  {

    v234 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v240 = 0;
    v241 = 0;
    v235 = 0;
LABEL_208:
    v242 = v348;
    v243 = v365;
    goto LABEL_209;
  }

  if (v223)
  {
    sub_188B4D13C();

    sub_188B48DE8(v291, v497);
  }

  else
  {
    v293 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v293)
    {
      [v293 _setCalculationVisibility_];
    }

    sub_188B4CE64(v497);
  }

  v362 = v497[4];
  v364 = v497[5];
  v356 = v497[3];
  v358 = v497[2];
  v360 = v497[1];
  v294 = v497[0];
  v295 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
  if (v295)
  {
    [v295 _setCalculationVisibility_];
  }

  v296 = swift_allocObject();
  v296[2] = v341;
  v296[3] = v340;
  v296[4] = v235;
  v235 = v296;
  v723 = 0u;
  v724 = 0u;
  v725 = 0u;
  v726 = 0u;

  sub_188A3F5FC(&v723, &unk_1EA936338);
  v234 = v294;
  v241 = sub_188EC2BF8;
  v242 = v348;
  v243 = v365;
  v218 = v368;
  v239 = v362;
  v240 = v364;
  v237 = v358;
  v236 = v360;
  v238 = v356;
LABEL_209:
  *v767 = *v480;
  *v803 = *v479;
  *v807 = *v478;
  *v811 = *v477;
  v741 = v487;
  v742 = v488;
  *v745 = *v486;
  *&v745[3] = *&v486[3];
  *v751 = *v485;
  *&v751[3] = *&v485[3];
  v752 = 0x4024000000000000;
  *&v754[3] = *&v484[3];
  *v754 = *v484;
  v759 = v483;
  v758 = v482;
  v766 = v481;
  *&v767[3] = *&v480[3];
  *&v803[3] = *&v479[3];
  *&v807[3] = *&v478[3];
  *&v811[3] = *&v477[3];
  v812 = 0x4052C00000000000;
  v744 = v430;
  v750 = v399;
  v753 = v396;
  v756 = v398;
  v757 = v413;
  v802 = v392;
  v806 = v388;
  v810 = v387;
  v817 = 0;
  *&v723 = v409;
  *(&v723 + 1) = v408;
  *&v724 = v407;
  v244 = v242;
  *(&v724 + 1) = v242;
  *&v725 = v412;
  *(&v725 + 1) = v411;
  *&v726 = v410;
  *(&v726 + 1) = v130;
  v727 = v108;
  v728 = v389;
  v729 = v440;
  v245 = v243;
  v730 = v243;
  v731 = v439;
  v732 = v415;
  v733 = v437;
  v734 = v414;
  v735 = v406;
  v736 = v405;
  v737 = v404;
  v738 = v403;
  v739 = v367;
  v740 = v401;
  v743 = v400;
  v746 = v145;
  v747 = v144;
  v748 = v402;
  v749 = v146;
  v755 = v416;
  v760 = v394;
  v761 = v397;
  v762 = v393;
  v763 = v366;
  v764 = v395;
  v765 = v148;
  v768 = v429;
  v354 = v200;
  v769 = v200;
  v770 = v426;
  v771 = v384;
  v772 = v383;
  v773 = v382;
  v774 = v378;
  v775 = v381;
  v776 = v419;
  v777 = v417;
  v778 = v213;
  v779 = v214;
  v780 = v423;
  v781 = v421;
  v782 = v377;
  v783 = v218;
  v784 = v432;
  v785 = v376;
  v786 = v375;
  v787 = v374;
  v788 = v373;
  v789 = v372;
  v790 = v370;
  v791 = v371;
  v351 = v235;
  v352 = v234;
  v792 = v234;
  v357 = v237;
  v359 = v236;
  v793 = v236;
  v794 = v237;
  v355 = v238;
  v795 = v238;
  v361 = v239;
  v363 = v240;
  v796 = v239;
  v797 = v240;
  v350 = v241;
  v798 = v241;
  v799 = v235;
  v800 = v165;
  v801 = 0;
  v804 = v391;
  v805 = 0;
  v808 = v390;
  v809 = 0;
  v813 = v191;
  v814 = v385;
  v815 = v386;
  v816 = 0;
  sub_188B482B4(&v498, v243);
  v369 = v499;
  v246 = v505[16];
  v247 = sub_188AEAF10();
  v331 = v144;
  v330 = v165;
  v329 = v108;
  if (!v247)
  {
LABEL_214:
    v474 = v498;
    v472 = v504;
    v473[0] = *v505;
    *(v473 + 15) = *&v505[15];
    v468 = v500;
    v469 = v501;
    v471 = v503;
    v470 = v502;
    v250 = v368;
    goto LABEL_215;
  }

  v248 = v247;
  if (v223 || v438 || (v249 = v432, (v436 & v347 & 1) != 0))
  {

    goto LABEL_214;
  }

  if (v246 == 2)
  {
    v254 = v413;
    if (v334)
    {
      v315 = v130;
      v252 = v409;
      v253 = v437;

      v474 = v498;
      v472 = v504;
      v473[0] = *v505;
      *(v473 + 15) = *&v505[15];
      v468 = v500;
      v469 = v501;
      v471 = v503;
      v470 = v502;
      v517 = v498;
      v518 = v369;
      v521 = v502;
      v520 = v501;
      v519 = v500;
      *&v524[15] = *&v505[15];
      *v524 = *v505;
      v523 = v504;
      v522 = v503;
      goto LABEL_217;
    }

    v301 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v301)
    {
      v302 = v301;
      [v302 setHidden_];
    }

    v474 = v498;
    v472 = v504;
    v473[0] = *v505;
    *(v473 + 15) = *&v505[15];
    v468 = v500;
    v469 = v501;
    v471 = v503;
    v470 = v502;
    v517 = v498;
    v522 = v503;
    v523 = v504;
    *v524 = v473[0];
    v519 = v500;
    v251 = v369;
    v518 = v369;
    *&v524[15] = *&v505[15];
    v520 = v501;
    v521 = v502;
    v303 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons];
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons] = 0;
    v273 = v367;
    v250 = v368;
    if (v303)
    {
      goto LABEL_221;
    }

    goto LABEL_222;
  }

  v297 = sub_188B2A31C();
  if (v334)
  {
    v250 = v368;
    if (v297 && (v298 = v297, v299 = [v297 image], v298, v249 = v432, v299))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v306 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v306)
    {
      [v306 _setCalculationVisibility_];
    }
  }

  else
  {
    v250 = v368;
    if (v297 && (v304 = v297, v305 = [v297 image], v304, v249 = v432, v305))
    {
    }

    else
    {
      sub_188CDFBF0();
    }

    v307 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
    if (v307)
    {
      [v307 setHidden_];
    }
  }

  if (v361)
  {
    sub_188B4D13C();

    sub_188B48DE8(v308, v506);
    v249 = v432;

    v309 = v506[0];
    v310 = v506[1];
    v311 = v506[2];
    v312 = v506[3];
    v313 = v506[4];
    v314 = v506[5];
  }

  else
  {
    v313 = 0;
    v314 = v363;
    v311 = v357;
    v310 = v359;
    v312 = v355;
    v309 = v352;
  }

  *v672 = *v480;
  *v708 = *v479;
  *v712 = *v478;
  *v716 = *v477;
  v646 = v487;
  v647 = v488;
  *v650 = *v486;
  *&v650[3] = *&v486[3];
  *v656 = *v485;
  *&v656[3] = *&v485[3];
  v657 = 0x4024000000000000;
  *&v659[3] = *&v484[3];
  *v659 = *v484;
  v664 = v483;
  v663 = v482;
  v671 = v481;
  *&v672[3] = *&v480[3];
  *&v708[3] = *&v479[3];
  *&v712[3] = *&v478[3];
  *&v716[3] = *&v477[3];
  v717 = 0x4052C00000000000;
  v649 = v430;
  v655 = v399;
  v658 = v396;
  v661 = v398;
  v662 = v413;
  v707 = v392;
  v711 = v388;
  v715 = v387;
  v722 = 0;
  v624 = v409;
  v625 = v408;
  v626 = v407;
  v627 = v244;
  v628 = v412;
  v629 = v411;
  v630 = v410;
  v631 = v130;
  v632 = v108;
  v633 = v389;
  v634 = v440;
  v635 = v245;
  v636 = v439;
  v637 = v415;
  v638 = v437;
  v639 = v414;
  v640 = v406;
  v641 = v405;
  v642 = v404;
  v643 = v403;
  v644 = v367;
  v645 = v401;
  v648 = v400;
  v651 = v145;
  v652 = v144;
  v653 = v402;
  v654 = v146;
  v660 = v416;
  v665 = v394;
  v666 = v397;
  v667 = v393;
  v668 = v366;
  v669 = v395;
  v670 = v148;
  v673 = v429;
  v674 = v354;
  v675 = v426;
  v676 = v384;
  v677 = v383;
  v678 = v382;
  v679 = v378;
  v680 = v381;
  v681 = v419;
  v682 = v417;
  v683 = v213;
  v684 = v214;
  v685 = v423;
  v686 = v421;
  v687 = v377;
  v688 = v250;
  v689 = v249;
  v690 = v376;
  v691 = v375;
  v692 = v374;
  v693 = v373;
  v694 = v372;
  v695 = v370;
  v696 = v371;
  v352 = v309;
  v697 = v309;
  v357 = v311;
  v359 = v310;
  v698 = v310;
  v699 = v311;
  v355 = v312;
  v700 = v312;
  v361 = v313;
  v363 = v314;
  v701 = v313;
  v702 = v314;
  v703 = v350;
  v704 = v351;
  v705 = v165;
  v706 = 0;
  v709 = v391;
  v710 = 0;
  v713 = v390;
  v714 = 0;
  v718 = v191;
  v719 = v385;
  v720 = v386;
  v721 = 0;
  sub_188B482B4(&v507, v300);
  v474 = v507;
  v369 = v508;
  v472 = v513;
  v473[0] = *v514;
  *(v473 + 15) = *&v514[15];
  v468 = v509;
  v469 = v510;
  v471 = v512;
  v470 = v511;

  LOBYTE(v246) = v514[16];
LABEL_215:
  v517 = v474;
  v522 = v471;
  v523 = v472;
  *v524 = v473[0];
  v519 = v468;
  v520 = v469;
  v251 = v369;
  v518 = v369;
  *&v524[15] = *(v473 + 15);
  v521 = v470;
  if ((v334 & 1) == 0)
  {
    v271 = v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons];
    v272 = v246 & 1;
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowContainsOverflowedButtons] = v246 & 1;
    v254 = v413;
    v273 = v367;
    if (v272 != v271)
    {
LABEL_221:
      sub_188CDFBF0();
    }

LABEL_222:
    v369 = v251;
    v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_isTitleHidden] = v251 == 0.0;
    *v573 = *v480;
    *v609 = *v479;
    *v613 = *v478;
    *v617 = *v477;
    v545 = v273;
    v546 = v401;
    v547 = v487;
    v548 = v488;
    *v551 = *v486;
    *&v551[3] = *&v486[3];
    *v557 = *v485;
    *&v557[3] = *&v485[3];
    v558 = 0x4024000000000000;
    *&v560[3] = *&v484[3];
    *v560 = *v484;
    v565 = v483;
    v564 = v482;
    v572 = v481;
    *&v573[3] = *&v480[3];
    *&v609[3] = *&v479[3];
    *&v613[3] = *&v478[3];
    *&v617[3] = *&v477[3];
    v618 = 0x4052C00000000000;
    v550 = v430;
    v556 = v399;
    v559 = v396;
    v562 = v398;
    v563 = v254;
    v608 = v392;
    v612 = v388;
    v616 = v387;
    v623 = 0;
    v525 = v409;
    v526 = v408;
    v527 = v407;
    v528 = v244;
    v529 = v412;
    v530 = v411;
    v531 = v410;
    v532 = v130;
    v533 = v108;
    v534 = v389;
    v535 = v440;
    v536 = v245;
    v537 = v439;
    v538 = v415;
    v539 = v437;
    v540 = v414;
    v541 = v406;
    v542 = v405;
    v543 = v404;
    v544 = v403;
    v549 = v400;
    v263 = v146;
    v262 = v344;
    v552 = v344;
    v264 = v331;
    v553 = v331;
    v554 = v402;
    v555 = v343;
    v561 = v416;
    v566 = v394;
    v567 = v397;
    v568 = v393;
    v267 = v366;
    v569 = v366;
    v570 = v395;
    v265 = v148;
    v571 = v148;
    v574 = v429;
    v575 = v354;
    v576 = v426;
    v577 = v384;
    v578 = v383;
    v579 = v382;
    v580 = v378;
    v581 = v381;
    v582 = v419;
    v583 = v417;
    v584 = v213;
    v585 = v214;
    v586 = v423;
    v587 = v421;
    v588 = v377;
    v589 = v250;
    v590 = v432;
    v591 = v376;
    v592 = v375;
    v593 = v374;
    v594 = v373;
    v595 = v372;
    v596 = v370;
    v597 = v371;
    v598 = v352;
    v599 = v359;
    v600 = v357;
    v601 = v355;
    v602 = v361;
    v603 = v363;
    v604 = v350;
    v605 = v351;
    v606 = v165;
    v607 = 0;
    v610 = v391;
    v611 = 0;
    v614 = v390;
    v615 = 0;
    v619 = v191;
    v620 = v385;
    v621 = v386;
    v622 = 0;
    sub_188B3FEB0(&v517, v515);
    v274 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
    sub_188FE3588();

    +[UIView _endDisablingPromoteDescendantToFirstResponder];
    v275 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_leadingBarFrame];
    v276 = v515[5];
    *v275 = v515[4];
    *(v275 + 1) = v276;
    v275[32] = 0;
    v277 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_centerBarFrame];
    v278 = v515[7];
    *v277 = v515[6];
    *(v277 + 1) = v278;
    v277[32] = 0;
    v279 = &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_trailingBarFrame];
    v280 = v515[9];
    *v279 = v515[8];
    *(v279 + 1) = v280;
    v279[32] = 0;
    swift_beginAccess();
    v281 = *v316;
    swift_beginAccess();
    v282 = *(v337 + 16);
    swift_beginAccess();
    v283 = *(v335 + 16);
    swift_beginAccess();
    v266 = v273;
    v284 = *(v340 + 16);
    memcpy(__dst, v515, 0x140uLL);
    LOBYTE(__dst[40]) = v438;
    BYTE1(__dst[40]) = v436 & 1;
    BYTE2(__dst[40]) = v347 & 1;
    *(&__dst[40] + 3) = *v491;
    *(&__dst[42] + 3) = *&v491[16];
    *(&__dst[44] + 2) = *&v491[31];
    BYTE2(__dst[46]) = v346;
    BYTE3(__dst[46]) = v345;
    BYTE4(__dst[46]) = v349;
    BYTE5(__dst[46]) = v318;
    BYTE6(__dst[46]) = v317;
    __dst[47] = v281;
    __dst[48] = v282;
    __dst[49] = v283;
    __dst[50] = v284;
    __dst[51] = 0;
    *&__dst[52] = v327;
    LOBYTE(__dst[53]) = v326;
    *(&__dst[53] + 1) = *v493;
    HIDWORD(__dst[53]) = *&v493[3];
    __dst[54] = v325;
    *&__dst[55] = v321;
    *&__dst[56] = v323;
    *&__dst[57] = v433;
    *&__dst[58] = v416;
    v261 = v409;
    *&__dst[59] = v435;
    *&__dst[60] = v324;
    *&__dst[61] = v434;
    *&__dst[62] = v319;
    LOBYTE(__dst[63]) = v320;
    v256 = v401;
    *(&__dst[63] + 1) = *v492;
    HIDWORD(__dst[63]) = *&v492[3];
    *&__dst[64] = v332;
    LOBYTE(__dst[65]) = v322;
    BYTE1(__dst[65]) = v320;
    memcpy(v516, __dst, 0x20AuLL);
    memcpy(__src, __dst, sizeof(__src));
    signpost_c2_entryLock_start(v285, v286);
    memcpy(v441, &v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], 0x20AuLL);
    v254 = v413;
    memcpy(&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_lastLayoutResult], __src, 0x20AuLL);

    v258 = v399;
    v257 = v400;

    v259 = v396;

    sub_188B43304(__dst, v465);
    sub_188A3F5FC(v441, &unk_1EA9362C0);
    v269 = v388;
    sub_188B3CBC4(v516, v328 & 1);
    v270 = v387;
    sub_188B4AB88(__dst);

    v268 = v392;

    goto LABEL_223;
  }

  v315 = v130;
  v252 = v409;
  v253 = v437;
  v254 = v413;
LABEL_217:
  v255 = *&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_overflowGroup];
  v256 = v401;
  v257 = v400;
  v258 = v399;
  v259 = v396;
  if (v255)
  {
    [v255 _setCalculationVisibility_];
  }

  v260 = *(*&v3[OBJC_IVAR____TtC5UIKit24NavigationBarContentView_transitionContainer] + OBJC_IVAR____TtC5UIKit32NavigationBarTransitionContainer_hostedViewContainer);
  sub_188FE3588();

  +[UIView _endDisablingPromoteDescendantToFirstResponder];

  v437 = v253;
  v261 = v252;
  v244 = v348;
  v130 = v315;
  v263 = v343;
  v262 = v344;
  v264 = v331;
  v265 = v342;
  v266 = v367;
  v267 = v366;
  v268 = v392;
  v269 = v388;
  v270 = v387;
LABEL_223:

  *&v441[8] = v408;
  *&v441[16] = v407;
  *&v441[128] = v406;
  *&v441[136] = v405;
  *&v441[144] = v404;
  *&v441[152] = v403;
  v441[160] = v266;
  v441[161] = v256;
  *&v441[168] = v257;
  v441[176] = v430;
  v441[216] = v258;
  v441[232] = v259;
  v441[248] = v398;
  v441[249] = v254;
  *&v441[256] = v394;
  *&v441[264] = v397;
  *&v441[272] = v393;
  *&v441[288] = v395;
  *&v441[312] = v429;
  *&v441[320] = v354;
  *&v441[328] = v426;
  *&v441[336] = v384;
  *&v441[344] = v383;
  *&v441[352] = v382;
  *&v441[360] = v378;
  *&v441[368] = v381;
  *&v441[376] = v419;
  *&v441[384] = v417;
  *&v441[162] = v487;
  *&v441[177] = *v486;
  *&v441[217] = *v485;
  *&v441[236] = *&v484[3];
  *&v441[233] = *v484;
  *&v441[250] = v482;
  *&v441[305] = *v480;
  *&v441[166] = v488;
  *&v441[180] = *&v486[3];
  *&v441[220] = *&v485[3];
  *&v441[224] = 0x4024000000000000;
  *&v441[254] = v483;
  v441[304] = v481;
  *&v441[308] = *&v480[3];
  *v441 = v261;
  *&v441[24] = v244;
  *&v441[32] = v412;
  *&v441[40] = v411;
  *&v441[48] = v410;
  *&v441[56] = v130;
  *&v441[64] = v329;
  *&v441[72] = v389;
  *&v441[80] = v440;
  *&v441[88] = v365;
  *&v441[96] = v439;
  *&v441[104] = v415;
  *&v441[112] = v437;
  *&v441[120] = v414;
  *&v441[184] = v262;
  *&v441[192] = v264;
  *&v441[200] = v402;
  *&v441[208] = v263;
  *&v441[240] = v416;
  *&v441[280] = v267;
  *&v441[296] = v265;
  *&v441[392] = v380;
  *&v441[400] = v379;
  *&v441[408] = v423;
  *&v441[416] = v421;
  *&v441[424] = v377;
  *&v441[432] = v368;
  *&v441[440] = v432;
  *&v441[448] = v376;
  *&v441[456] = v375;
  *&v441[464] = v374;
  *&v441[472] = v373;
  *&v441[480] = v372;
  *&v441[488] = v370;
  *&v441[496] = v371;
  *&v441[504] = v352;
  *&v441[512] = v359;
  *&v441[520] = v357;
  v442 = v355;
  v443 = v361;
  v444 = v363;
  v445 = v350;
  v446 = v351;
  v447 = v330;
  v448 = 0;
  v449 = v268;
  *v450 = *v479;
  *&v450[3] = *&v479[3];
  v451 = v391;
  v452 = 0;
  v453 = v269;
  *v454 = *v478;
  *&v454[3] = *&v478[3];
  v455 = v390;
  v456 = 0;
  v457 = v270;
  *v458 = *v477;
  *&v458[3] = *&v477[3];
  v459 = 0x4052C00000000000;
  v460 = v191;
  v461 = v385;
  v462 = v386;
  v463 = 0;
  v464 = 0;
  sub_188B49BF0(v441);
  *v333 = v474;
  *(v333 + 16) = v369;
  v287 = v470;
  *(v333 + 72) = v471;
  v288 = v473[0];
  *(v333 + 88) = v472;
  *(v333 + 104) = v288;
  result = *&v468;
  v290 = v469;
  *(v333 + 24) = v468;
  *(v333 + 119) = *(v473 + 15);
  *(v333 + 40) = v290;
  *(v333 + 56) = v287;
  return result;
}