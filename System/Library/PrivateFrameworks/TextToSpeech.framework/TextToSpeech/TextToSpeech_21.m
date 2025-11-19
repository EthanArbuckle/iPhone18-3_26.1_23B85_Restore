uint64_t sub_1A94FD04C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  v9 = sub_1A957CEB8();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  if (v10)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v37 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(result + 48) + 56 * (v14 | (v11 << 6));
      v19 = *v17;
      v18 = *(v17 + 16);
      v20 = *(v17 + 32);
      *&v42[13] = *(v17 + 45);
      v41 = v18;
      *v42 = v20;
      v40 = v19;
      v21 = *(v5 + 40);
      sub_1A957D4F8();
      v22 = *(&v41 + 1);
      sub_1A94FF810(&v40, &v38);
      sub_1A957C228();
      sub_1A957D518();
      if (v22)
      {
        sub_1A957C228();
      }

      v38 = *v42;
      v39 = *&v42[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      v23 = sub_1A957D548();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        break;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      result = a4;
LABEL_27:
      *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = *(v5 + 48) + 56 * v27;
      v33 = v40;
      v34 = v41;
      v35 = *v42;
      *(v32 + 45) = *&v42[13];
      *(v32 + 16) = v34;
      *(v32 + 32) = v35;
      *v32 = v33;
      ++*(v5 + 16);
      if (__OFSUB__(v4--, 1))
      {
        goto LABEL_35;
      }

      if (!v4)
      {
LABEL_31:

        return v5;
      }

      v10 = v37;
      if (!v37)
      {
        goto LABEL_10;
      }
    }

    v28 = 0;
    v29 = (63 - v24) >> 6;
    result = a4;
    while (++v26 != v29 || (v28 & 1) == 0)
    {
      v30 = v26 == v29;
      if (v26 == v29)
      {
        v26 = 0;
      }

      v28 |= v30;
      v31 = *(v12 + 8 * v26);
      if (v31 != -1)
      {
        v27 = __clz(__rbit64(~v31)) + (v26 << 6);
        goto LABEL_27;
      }
    }
  }

  else
  {
LABEL_10:
    v15 = v11;
    while (1)
    {
      v11 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v11 >= a2)
      {
        goto LABEL_31;
      }

      v16 = a1[v11];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *sub_1A94FD380()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *(v18 + 1);
        v19 = *(v18 + 2);
        v21 = *v18;
        *&v24[13] = *(v18 + 45);
        v23[1] = v20;
        *v24 = v19;
        v23[0] = v21;
        memmove((*(v4 + 48) + v17), v18, 0x35uLL);
        result = sub_1A94FF810(v23, v22);
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

uint64_t sub_1A94FD508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB388398, &qword_1A9596DD0);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v22 = *(v3 + 48) + 56 * (v19 | (v7 << 6));
      v23 = *v22;
      v24 = *(v22 + 45);
      v25 = *(v22 + 32);
      v40 = *(v22 + 16);
      *v41 = v25;
      *&v41[13] = v24;
      v39 = v23;
      v26 = *(v6 + 40);
      sub_1A957D4F8();
      v27 = *(&v40 + 1);
      sub_1A94FF810(&v39, &v37);
      sub_1A957C228();
      sub_1A957D518();
      if (v27)
      {
        sub_1A957C228();
      }

      v37 = *v41;
      v38 = *&v41[16];
      type metadata accessor for AudioComponentDescription();
      sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
      sub_1A957C068();
      sub_1A957D518();
      result = sub_1A957D548();
      v28 = -1 << *(v6 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v3 = v36;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v3 = v36;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      v16 = v39;
      v17 = v40;
      v18 = *v41;
      *(v15 + 45) = *&v41[13];
      *(v15 + 16) = v17;
      *(v15 + 32) = v18;
      *v15 = v16;
      ++*(v6 + 16);
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v35;
        goto LABEL_30;
      }

      v21 = *(v8 + 8 * v7);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v11 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_1A94FD834(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1A957CE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v29 = v4;
      v10 = (v9 + 1) & v7;
      do
      {
        v14 = 56 * v6;
        v15 = *(v3 + 48) + 56 * v6;
        v16 = *v15;
        v17 = *(v15 + 45);
        v18 = *(v15 + 32);
        v33 = *(v15 + 16);
        *v34 = v18;
        *&v34[13] = v17;
        v32 = v16;
        v19 = *(v3 + 40);
        sub_1A957D4F8();
        v20 = *(&v33 + 1);
        sub_1A94FF810(&v32, &v30);
        sub_1A957C228();
        sub_1A957D518();
        if (v20)
        {
          sub_1A957C228();
        }

        v30 = *v34;
        v31 = *&v34[16];
        type metadata accessor for AudioComponentDescription();
        sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
        sub_1A957C068();
        sub_1A957D518();
        v21 = sub_1A957D548();
        sub_1A94FF990(&v32);
        v22 = v21 & v7;
        if (v2 >= v10)
        {
          v4 = v29;
          if (v22 < v10)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v4 = v29;
          if (v22 >= v10)
          {
            goto LABEL_13;
          }
        }

        if (v2 >= v22)
        {
LABEL_13:
          v23 = *(v3 + 48);
          v24 = v23 + 56 * v2;
          v25 = (v23 + v14);
          if (56 * v2 < v14 || v24 >= v25 + 56 || v2 != v6)
          {
            v11 = *v25;
            v12 = v25[1];
            v13 = v25[2];
            *(v24 + 48) = *(v25 + 6);
            *(v24 + 16) = v12;
            *(v24 + 32) = v13;
            *v24 = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v26 = *(v3 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v28;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A94FDAFC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v38 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    sub_1A94FC8B0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1A94FD380();
      goto LABEL_29;
    }

    sub_1A94FD508(v6 + 1);
  }

  v42 = *v3;
  v8 = *(*v3 + 40);
  sub_1A957D4F8();
  v10 = *(v5 + 16);
  v9 = *(v5 + 24);
  v44 = *(v5 + 8);
  v45 = *v5;
  sub_1A957C228();
  v43 = v9;
  sub_1A957D518();
  if (v9)
  {
    sub_1A957C228();
  }

  v11 = *(v5 + 52);
  v13 = *(v5 + 32);
  v12 = *(v5 + 36);
  v15 = *(v5 + 40);
  v14 = *(v5 + 44);
  v46 = *(v5 + 48);
  type metadata accessor for AudioComponentDescription();
  sub_1A94FF1F4(&qword_1EB385EC8, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957C068();
  v36 = v11;
  sub_1A957D518();
  result = sub_1A957D548();
  v16 = -1 << *(v42 + 32);
  a2 = result & ~v16;
  if ((*(v42 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v41 = v10;
    v17 = ~v16;
    v39 = v15;
    v40 = v13 | (v12 << 32);
    v18 = v9;
    do
    {
      v19 = *(v42 + 48) + 56 * a2;
      result = *v19;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v23 = *(v19 + 32);
      v22 = *(v19 + 36);
      v25 = *(v19 + 40);
      v24 = *(v19 + 44);
      v26 = *(v19 + 48);
      v27 = *(v19 + 52);
      if (*v19 != v45 || *(v19 + 8) != v44)
      {
        result = sub_1A957D3E8();
        v18 = v43;
        if ((result & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (v20)
      {
        if (!v18)
        {
          goto LABEL_13;
        }

        if (v21 != v41 || v20 != v18)
        {
          result = sub_1A957D3E8();
          v18 = v43;
          if ((result & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else if (v18)
      {
        goto LABEL_13;
      }

      result = static AudioComponentDescription.== infix(_:_:)(v23 | (v22 << 32), v25, v26, v40, v39);
      v18 = v43;
      if ((result & 1) != 0 && ((v27 ^ v36) & 1) == 0)
      {
        result = sub_1A957D428();
        __break(1u);
        break;
      }

LABEL_13:
      a2 = (a2 + 1) & v17;
    }

    while (((*(v42 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v30 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v31 = *(v30 + 48) + 56 * a2;
  v32 = *(v38 + 16);
  *v31 = *v38;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(v38 + 32);
  *(v31 + 45) = *(v38 + 45);
  v33 = *(v30 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v30 + 16) = v35;
  }

  return result;
}

uint64_t sub_1A94FDE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v7 = 0;
    MEMORY[0x1EEE9AC00]((v4 + 63) >> 6, v5);
    sub_1A957BB88();
    __break(1u);

    result = sub_1A9500BC0(0, v7);
    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

void *sub_1A94FDF68(uint64_t a1, uint64_t *a2, void *(*a3)(__int128 *__return_ptr))
{
  result = a3(&v8);
  if (!v3)
  {
    v6 = *a2;
    v7 = a2[1];
    *a2 = v8;
    return sub_1A9500BC0(v6, v7);
  }

  return result;
}

uint64_t sub_1A94FDFBC(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  if (a4)
  {
    if (result && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = result;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    goto LABEL_14;
  }

LABEL_7:
  if (!a3)
  {
LABEL_14:
    sub_1A94FE4E4(a5, 0);

    return 0;
  }

  if (a3 != *(a7 + 16))
  {
    v17 = result;
    result = a3 + a5;
    if (__OFADD__(a3, a5))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    sub_1A94FE4E4(result, 0);
    v7 = 0;
    v24 = 0;
    if (a2 > 0)
    {
      v19 = *v17;
    }

    goto LABEL_21;
  }

  if (a6)
  {
    v14 = a3;
    v7 = a5;
    swift_beginAccess();
    v15 = MEMORY[0x1AC584A00](*(v9 + 16) & 0x3FLL);
    a3 = v14;
    a5 = v7;
    v16 = v15 - v14;
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v16 = 15 - a3;
  if (__OFSUB__(15, a3))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1A957BBA8();
    if ((v20 & 1) == 0)
    {
      v21 = result;
      while ((v21 & 0x8000000000000000) == 0)
      {
        if (v21 >= *(a7 + 16))
        {
          goto LABEL_31;
        }

        v22 = *(sub_1A957B308() - 8);
        sub_1A94FE20C(a7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21);
        result = sub_1A957BBA8();
        v21 = result;
        if (v23)
        {
          v7 = v24;
          goto LABEL_27;
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_27:

    return v7;
  }

LABEL_11:
  if (v16 >= a5)
  {
    return v9;
  }

  result = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    sub_1A94FE4E4(result, 0);
    return v9;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1A94FE20C(uint64_t a1)
{
  v3 = sub_1A957B308();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3);
  v10 = v1 + 1;
  v9 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A93ABB88(0, *(v9 + 16) + 1, 1);
    v9 = *v10;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1A93ABB88(v12 > 1, v13 + 1, 1);
    v9 = *v10;
  }

  *(v9 + 16) = v13 + 1;
  result = (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v8, v3);
  v1[1] = v9;
  v15 = *v1;
  if (!*v1)
  {
    if (v13 < 0xF)
    {
      return result;
    }

    return sub_1A948AF24();
  }

  swift_beginAccess();
  if (MEMORY[0x1AC584A00](*(v15 + 16) & 0x3FLL) <= v13)
  {
    return sub_1A948AF24();
  }

  v16 = *v1;
  result = swift_isUniquelyReferenced_native();
  v17 = *v1;
  if ((result & 1) == 0)
  {
    if (!v17)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v18 = *v1;
    v19 = sub_1A957BB58();

    *v1 = v19;
    v17 = v19;
  }

  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v17 + 16);
  sub_1A94FF1F4(&qword_1ED970220, 255, MEMORY[0x1E6969770]);

  result = sub_1A957C058();
  v21 = 1 << *(v17 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_19;
  }

  v24 = v23 & result;
  v25 = sub_1A957BAF8();
  v29[0] = v17 + 16;
  v29[1] = v17 + 32;
  v29[2] = v24;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v33 = 0;
  while (v30)
  {
    sub_1A957BB38();
  }

  v28 = *(v9 + 16);
  sub_1A957BB28();
}

uint64_t sub_1A94FE4E4(uint64_t result, char a2)
{
  if (result < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v3 = v2;
  v5 = result;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v7 + 24) >> 1)
  {
    v10 = *v3;
    if (*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v7 + 16) <= v5)
    {
      v14 = v5;
    }

    else
    {
      v14 = *(v7 + 16);
    }

    sub_1A93ABB88(isUniquelyReferenced_nonNull_native, v14, 0);
    v7 = *v6;
    v10 = *v3;
    if (*v3)
    {
LABEL_5:
      swift_beginAccess();
      v11 = *(v10 + 16) & 0x3FLL;
      v12 = MEMORY[0x1AC584A20](v5);
      if (a2)
      {
        v13 = v12;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v16 = v12;
        swift_beginAccess();
        v12 = v16;
        v13 = *(v10 + 24) & 0x3FLL;
        if (v11 >= v12)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      if (v13 <= v12)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      goto LABEL_30;
    }
  }

  v12 = MEMORY[0x1AC584A20](v5);
  v11 = 0;
  if (a2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v12 > 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v17 = *(v7 + 16);
  if (v13 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v13;
  }

  result = MEMORY[0x1AC584A20](*(v7 + 16));
  if (result <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = result;
  }

  if (v19 < v11)
  {
    if (v13 <= v19)
    {
      v15 = v19;
    }

    else
    {
      v15 = v13;
    }

LABEL_30:
    v20 = sub_1A948AFC4(v7, v15, 0, v13);

    *v3 = v20;
    return result;
  }

  if (!v10 || (v21 = *v3, result = swift_isUniquelyReferenced_native(), (result & 1) != 0))
  {
    v22 = *v3;
    if (*v3)
    {
      goto LABEL_35;
    }

LABEL_39:
    if (!v13)
    {
      return result;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (!*v3)
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v23 = *v3;
  v22 = sub_1A957BB58();

  *v3 = v22;
  if (!v22)
  {
    goto LABEL_39;
  }

LABEL_35:
  result = swift_beginAccess();
  if ((*(v22 + 24) & 0x3FLL) != v13)
  {
    *(v22 + 24) = *(v22 + 24) & 0xFFFFFFFFFFFFFFC0 | v13 & 0x3F;
  }

  return result;
}

uint64_t sub_1A94FE6C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t sub_1A94FE70C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v32 = v10;
  v33 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640);
  *&v31 = a1;
  v11 = *a5;
  v13 = sub_1A937A490(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      sub_1A9378138(v20);
      return sub_1A932D070(&v31, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_1A94B2BF4();
    goto LABEL_7;
  }

  sub_1A94B2374(v16, a4 & 1);
  v22 = *a5;
  v23 = sub_1A937A490(a2, a3);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v25 = sub_1A9396054(&v31, v10);
  v26 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v25);
  v28 = (&v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_1A94FE93C(v13, a2, a3, *v28, v19);

  return sub_1A9378138(&v31);
}

uint64_t sub_1A94FE93C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = sub_1A937829C(&qword_1EB3882D0, qword_1A9596640);
  v17 = sub_1A93B744C(&qword_1EB3882D8, &qword_1EB3882D0, qword_1A9596640);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1A932D070(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1A94FEA2C(void *result, char *__dst, uint64_t a3, uint64_t a4)
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
  if (!__dst)
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
    v11 = __dst;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 56 * (v17 | (v12 << 6)));
      v20 = *(v18 + 1);
      v19 = *(v18 + 2);
      v21 = *v18;
      *&v26[13] = *(v18 + 45);
      v25[1] = v20;
      *v26 = v19;
      v25[0] = v21;
      memmove(v11, v18, 0x35uLL);
      if (v14 == v10)
      {
        sub_1A94FF0E4(v25, v24);
        goto LABEL_24;
      }

      v11 += 56;
      sub_1A94FF0E4(v25, v24);
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
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1A94FEBDC(void *result, void *a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_1A94FED34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A937829C(&qword_1EB3883A0, &qword_1A9596DD8);
  v3 = sub_1A957D128();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 13) = *(a1 + 93);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_1A9391BAC(&v24, v23, &qword_1EB3883A8, &qword_1A9596DE0);
  result = sub_1A937A490(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = v3[7] + 56 * result;
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 45) = *(v27 + 13);
    *(v12 + 16) = v14;
    *(v12 + 32) = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = (v10 + 72);
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 13) = *(v10 + 61);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_1A9391BAC(&v24, v23, &qword_1EB3883A8, &qword_1A9596DE0);
    result = sub_1A937A490(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A94FEEE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&unk_1EB388450, &qword_1A9596E28);
    v3 = sub_1A957D128();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A9391BAC(v4, v13, &qword_1EB3883E0, &unk_1A9596E10);
      result = sub_1A93B1014(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A93981D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1A94FF020(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A9500F54();
  result = MEMORY[0x1AC585770](v2, &type metadata for SSEVoiceLoader.SSERecord, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v13[0] = *v5;
      v7 = *(v5 + 32);
      v13[1] = v6;
      v14[0] = v7;
      *(v14 + 13) = *(v5 + 45);
      sub_1A94FF810(v13, v10);
      sub_1A94FB87C(v8, v13);
      v10[0] = v8[0];
      v10[1] = v8[1];
      *v11 = *v9;
      *&v11[13] = *&v9[13];
      sub_1A94FF990(v10);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1A94FF14C()
{
  result = qword_1EB3882F0;
  if (!qword_1EB3882F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3882F0);
  }

  return result;
}

unint64_t sub_1A94FF1A0()
{
  result = qword_1EB38A950[0];
  if (!qword_1EB38A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38A950);
  }

  return result;
}

uint64_t sub_1A94FF1F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL _s12TextToSpeech14SSEVoiceLoaderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 52);
  v14 = *(a1 + 52);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  return static AudioComponentDescription.== infix(_:_:)(v3, v5, v6, v9, v10) && v14 == v13;
}

uint64_t sub_1A94FF348(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C4C10 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xE900000000000074 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261507473726966 && a2 == 0xEA00000000007974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A94FF4C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&unk_1EB388380, &unk_1A9596DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A94FF1A0();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  LOBYTE(v34) = 0;
  v12 = sub_1A957D1E8();
  v14 = v13;
  v30 = v12;
  LOBYTE(v34) = 1;
  *&v29 = sub_1A957D198();
  *(&v29 + 1) = v15;
  type metadata accessor for AudioComponentDescription();
  LOBYTE(v31) = 2;
  sub_1A94FF1F4(&qword_1EB386388, 255, type metadata accessor for AudioComponentDescription);
  sub_1A957D238();
  v25 = HIDWORD(v34);
  v26 = v34;
  v44 = v35;
  v27 = v36;
  v28 = HIDWORD(v35);
  v45 = 3;
  v16 = sub_1A957D1F8();
  (*(v6 + 8))(v10, v5);
  HIDWORD(v24) = v16 & 1;
  v18 = *(&v29 + 1);
  v17 = v30;
  *&v31 = v30;
  *(&v31 + 1) = v14;
  v19 = v29;
  v32 = v29;
  v20 = v25;
  v21 = v26;
  *v33 = __PAIR64__(v25, v26);
  *&v33[8] = v44;
  *&v33[12] = v28;
  *&v33[16] = v27;
  v33[20] = BYTE4(v24);
  sub_1A94FF810(&v31, &v34);
  sub_1A9378138(a1);
  v34 = v17;
  v35 = v14;
  v36 = v19;
  v37 = v18;
  v38 = v21;
  v39 = v20;
  v40 = v44;
  v41 = v28;
  v42 = v27;
  v43 = BYTE4(v24);
  result = sub_1A94FF990(&v34);
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = *v33;
  *(a2 + 45) = *&v33[13];
  return result;
}

uint64_t sub_1A94FF848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return sub_1A94F8214(a1, v4);
}

unint64_t sub_1A94FF8E8()
{
  result = qword_1EB38AAF8[0];
  if (!qword_1EB38AAF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB38AAF8);
  }

  return result;
}

unint64_t sub_1A94FF93C()
{
  result = qword_1EB386158;
  if (!qword_1EB386158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386158);
  }

  return result;
}

unint64_t sub_1A94FF9C0()
{
  result = qword_1EB386128;
  if (!qword_1EB386128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386128);
  }

  return result;
}

unint64_t sub_1A94FFA18()
{
  result = qword_1EB388330;
  if (!qword_1EB388330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388330);
  }

  return result;
}

uint64_t sub_1A94FFA6C(uint64_t a1, uint64_t a2)
{
  result = sub_1A94FF1F4(&unk_1EB386080, a2, type metadata accessor for SSELoaderManager);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A94FFAC8()
{
  result = qword_1EB386138;
  if (!qword_1EB386138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386138);
  }

  return result;
}

unint64_t sub_1A94FFB20()
{
  result = qword_1EB388340;
  if (!qword_1EB388340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388340);
  }

  return result;
}

uint64_t dispatch thunk of SSELoaderManager.initialize()()
{
  v2 = *(*v0 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of SSELoaderManager.scan()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of SSELoaderManager.triggerFirstBootVoiceLoads()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

__n128 sub_1A94FFFDC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A950000C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_1A9500058(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A95000E0()
{
  result = qword_1EB3A0F60[0];
  if (!qword_1EB3A0F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A0F60);
  }

  return result;
}

unint64_t sub_1A9500138()
{
  result = qword_1EB3A1070;
  if (!qword_1EB3A1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1070);
  }

  return result;
}

unint64_t sub_1A9500190()
{
  result = qword_1EB38AAE0;
  if (!qword_1EB38AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38AAE0);
  }

  return result;
}

unint64_t sub_1A95001E8()
{
  result = qword_1EB38AAE8;
  if (!qword_1EB38AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38AAE8);
  }

  return result;
}

unint64_t sub_1A9500240()
{
  result = qword_1EB38A940;
  if (!qword_1EB38A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38A940);
  }

  return result;
}

unint64_t sub_1A9500298()
{
  result = qword_1EB38A948;
  if (!qword_1EB38A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB38A948);
  }

  return result;
}

uint64_t sub_1A95002EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A9382328;

  return sub_1A94F8214(a1, v4);
}

void sub_1A95003C4()
{
  v1 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A94F8E94(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1A950047C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A9500494(void *a1, void *a2)
{
  v5 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A94F9100(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 19) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1A950057C()
{
  v1 = *(sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
    v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
    v7 = (v0 + v5);
    v43 = v7[1];
    v44 = *v7;
    v41 = *(v0 + v6 + 8);
    v42 = *(v0 + v6);
    v8 = v0 + ((v6 + 19) & 0xFFFFFFFFFFFFFFF8);
    v39 = *(v8 + 8);
    v40 = *v8;
    v38 = *(v8 + 16);
    v9 = objc_opt_self();
    v45 = v4;
    v10 = [v45 AUAudioUnit];
    v11 = [v9 makeAU_];

    [v11 remoteProcessAuditToken];
    sub_1A957C1C8();
    v12 = xpc_copy_entitlement_for_token();

    if (v12 && (v13 = xpc_BOOL_get_value(v12), swift_unknownObjectRelease(), v13))
    {
      v14 = sub_1A957C0C8();
      v15 = [v11 messageChannelFor_];

      v16 = [objc_allocWithZone(TTSAUMessagingHost) initWithMessageChannel_];
      swift_unknownObjectRelease();
      v17 = [v16 voicesExternallyManaged];
      LODWORD(v15) = [v17 BOOLValue];

      if (v15)
      {
        v50[0] = MEMORY[0x1E69E7CC0];
        sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
        sub_1A957C5C8();

        return;
      }

      v22 = 1;
    }

    else
    {
      [v11 remoteProcessAuditToken];
      sub_1A957C1C8();
      v18 = xpc_copy_entitlement_for_token();

      if (v18 && (value = xpc_BOOL_get_value(v18), swift_unknownObjectRelease(), value))
      {
        sub_1A94FF14C();
        v20 = swift_allocError();
        *v21 = 3;
        v50[0] = v20;
        sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
        sub_1A957C5B8();
        v22 = 0;
      }

      else
      {
        v22 = 0;
      }
    }

    v25 = [v11 speechVoices];
    sub_1A9387478(0, &qword_1EB385EB8, 0x1E69584F0);
    v26 = sub_1A957C4C8();

    if (v26 >> 62)
    {
      goto LABEL_31;
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v11; v27; i = v11)
    {
      v11 = (v26 & 0xFFFFFFFFFFFFFF8);
      v28 = MEMORY[0x1E69E7CC0];
      v29 = 4;
      while (1)
      {
        v30 = v29 - 4;
        if ((v26 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1AC585DE0](v29 - 4, v26);
        }

        else
        {
          if (v30 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v31 = *(v26 + 8 * v29);
        }

        v32 = v31;
        v33 = __OFADD__(v30, 1);
        v34 = v29 - 3;
        if (v33)
        {
          break;
        }

        v49 = v31;
        sub_1A94F9580(&v49, v22, v44, v43, v45, v42, v41, v40, __src, v39, v38);

        memcpy(v50, __src, 0x118uLL);
        if (sub_1A932D058(v50) == 1)
        {
          memcpy(__dst, __src, sizeof(__dst));
          sub_1A937B960(__dst, &unk_1EB387BC0, &qword_1A9587E30);
        }

        else
        {
          memcpy(__dst, __src, sizeof(__dst));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1A93A3558(0, *(v28 + 2) + 1, 1, v28);
          }

          v36 = *(v28 + 2);
          v35 = *(v28 + 3);
          if (v36 >= v35 >> 1)
          {
            v28 = sub_1A93A3558((v35 > 1), v36 + 1, 1, v28);
          }

          memcpy(v46, __dst, sizeof(v46));
          *(v28 + 2) = v36 + 1;
          memcpy(&v28[280 * v36 + 32], v46, 0x118uLL);
        }

        ++v29;
        if (v34 == v27)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v27 = sub_1A957CE48();
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_33:

    v50[0] = v28;
    sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
    sub_1A957C5C8();
  }

  else
  {
    v23 = *(v0 + 24);
    if (v23)
    {
      v50[0] = *(v0 + 24);
      v24 = v23;
      sub_1A937829C(&qword_1EB386E70, &unk_1A9589D10);
      sub_1A957C5B8();
    }
  }
}

uint64_t sub_1A9500B68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A9500C04(a1, v2[2], v2[3], *(v2[4] + 8));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1A9500BC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A9500C04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v7 = sub_1A957B308();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v36 - v15;
  v17 = *(a3 + 16);
  v38 = a1;
  sub_1A957BBB8();
  v43 = *(a4 + 16);
  if (v43)
  {
    v18 = v17;
    v19 = 0;
    v21 = *(v8 + 16);
    v20 = v8 + 16;
    v46 = v21;
    v44 = *(v20 + 56);
    v45 = v18;
    v22 = (v20 - 8);
    v23 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v41 = a3;
    v42 = a4 + v23;
    v40 = a3 + v23;
    v37 = v18;
    v24 = v39;
    v21(v16, a4 + v23, v7);
    while (1)
    {
      if (v24)
      {

        v25 = sub_1A948A7A0(v16, v40, v45, (v24 + 16), v24 + 32);
        v27 = v26;

        if ((v27 & 1) != 0 || v25 < 0)
        {
          a3 = v41;
          goto LABEL_5;
        }
      }

      else
      {
        if (!v45)
        {
          goto LABEL_5;
        }

        v28 = 0;
        v29 = v40;
        while (1)
        {
          v46(v13, v29, v7);
          sub_1A94FF1F4(&unk_1ED970210, 255, MEMORY[0x1E6969770]);
          v30 = sub_1A957C098();
          (*v22)(v13, v7);
          if (v30)
          {
            break;
          }

          ++v28;
          v29 += v44;
          if (v45 == v28)
          {
            a3 = v41;
            v24 = v39;
            goto LABEL_5;
          }
        }
      }

      if (sub_1A957BB98())
      {
        a3 = v41;
        if (v37 == 1)
        {
          (*v22)(v16, v7);
          return 0;
        }

        --v37;
      }

      else
      {
        a3 = v41;
      }

      v24 = v39;
LABEL_5:
      ++v19;
      (*v22)(v16, v7);
      if (v19 == v43)
      {
        goto LABEL_20;
      }

      v46(v16, v42 + v44 * v19, v7);
    }
  }

  v37 = v17;
  v24 = v39;
LABEL_20:
  v31 = v24;
  v32 = *v38;
  v33 = v38[1];
  v34 = sub_1A937838C();

  return sub_1A94FDFBC(v32, v33, v37, 0, v34, v31, a3);
}

unint64_t sub_1A9500F54()
{
  result = qword_1EB386148;
  if (!qword_1EB386148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386148);
  }

  return result;
}

uint64_t sub_1A9500FA8(uint64_t a1, void *a2)
{
  v4 = *(*(sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8) - 8) + 80);
  if (a2)
  {
    *&v34[0] = a2;
    v5 = a2;
    sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
    return sub_1A957C5B8();
  }

  else if (a1)
  {
    v7 = a1 + 56;
    v8 = 1 << *(a1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a1 + 56);
    v11 = (v8 + 63) >> 6;
    v31 = a1;

    v12 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v13 = &unk_1EB388448;
    while (v10)
    {
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      sub_1A93B1F94(*(v31 + 48) + 40 * (v15 | (v12 << 6)), v33);
      sub_1A93B1F94(v33, v32);
      sub_1A937829C(v13, &qword_1A9596E20);
      if (swift_dynamicCast())
      {
        v16 = v13;
        sub_1A94F508C(v34);
        v28 = v34[1];
        v30 = v34[0];
        v18 = v35;
        v17 = v36;
        v19 = v38;
        v20 = v37;
        swift_unknownObjectRelease();
        result = sub_1A93B1058(v33);
        if (*(&v30 + 1))
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1A94FB048(0, *(v29 + 16) + 1, 1, v29);
            v29 = result;
          }

          v21 = v28;
          v23 = *(v29 + 16);
          v22 = *(v29 + 24);
          v24 = v23 + 1;
          v25 = v30;
          if (v23 >= v22 >> 1)
          {
            result = sub_1A94FB048((v22 > 1), v23 + 1, 1, v29);
            v21 = v28;
            v25 = v30;
            v24 = v23 + 1;
            v29 = result;
          }

          *(v29 + 16) = v24;
          v26 = v29 + 56 * v23;
          *(v26 + 32) = v25;
          *(v26 + 48) = v21;
          *(v26 + 64) = v18;
          *(v26 + 72) = v17;
          *(v26 + 84) = (v20 | (v19 << 32)) >> 32;
          *(v26 + 80) = v20;
          v13 = v16;
        }
      }

      else
      {
        result = sub_1A93B1058(v33);
      }
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        v27 = v29;
        goto LABEL_22;
      }

      v10 = *(v7 + 8 * v14);
      ++v12;
      if (v10)
      {
        v12 = v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v33[0] = v27;
    sub_1A937829C(&qword_1EB3883C8, &qword_1A9596DF8);
    return sub_1A957C5C8();
  }

  return result;
}

unint64_t sub_1A950129C()
{
  result = qword_1EB386108;
  if (!qword_1EB386108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386108);
  }

  return result;
}

uint64_t sub_1A95012F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3882C8, &qword_1A9596638);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9501374()
{
  result = qword_1EB386118;
  if (!qword_1EB386118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386118);
  }

  return result;
}

unint64_t sub_1A95013F0()
{
  result = qword_1ED96FDA8;
  if (!qword_1ED96FDA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FDA8);
  }

  return result;
}

uint64_t TTSExecutor.__allocating_init()()
{
  v14 = sub_1A957CAD8();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957CBD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1A957BF48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = swift_allocObject();
  v13[1] = sub_1A95013F0();
  sub_1A957BF38();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8098], v14);
  *(v11 + 16) = sub_1A957CBE8();
  return v11;
}

uint64_t TTSExecutor.init()()
{
  v15 = sub_1A957CAD8();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957CBD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1A957BF48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  sub_1A95013F0();
  sub_1A957BF38();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8098], v15);
  v11 = sub_1A957CBE8();
  v12 = v16;
  *(v16 + 16) = v11;
  return v12;
}

uint64_t TTSExecutor.enqueue(_:)()
{
  v1 = sub_1A957BF18();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A957BF48();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957C618();
  v12 = *(v0 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v0;
  aBlock[4] = sub_1A9501BD8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED8D8;
  v14 = _Block_copy(aBlock);

  sub_1A957BF28();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(qword_1ED96FED0, 255, MEMORY[0x1E69E7F60]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v10, v5, v14);
  _Block_release(v14);
  (*(v18 + 8))(v5, v1);
  (*(v6 + 8))(v10, v17);
}

uint64_t sub_1A9501BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = sub_1A950238C(&qword_1ED96FE68, a2, type metadata accessor for TTSExecutor);

  return MEMORY[0x1EEE6DF20](v3, v4, v5);
}

uint64_t sub_1A9501C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TTSExecutor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A9501D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1A950238C(&qword_1ED96FE70, a2, type metadata accessor for TTSExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_1A9501F40()
{
  v14 = sub_1A957CAD8();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957CBD8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1A957BF48();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  type metadata accessor for TTSExecutor();
  v11 = swift_allocObject();
  v13[1] = sub_1A95013F0();
  sub_1A957BF38();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A950238C(&unk_1ED96FE80, 255, MEMORY[0x1E69E8120]);
  sub_1A937829C(&qword_1EB388348, &qword_1A9596DA8);
  sub_1A946D250(&qword_1ED96FDB0, &qword_1EB388348, &qword_1A9596DA8);
  sub_1A957CE08();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8098], v14);
  result = sub_1A957CBE8();
  *(v11 + 16) = result;
  qword_1ED9708C8 = v11;
  return result;
}

uint64_t static TTSExecutor.shared.getter()
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSExecutor.shared.setter(uint64_t a1)
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED9708C8 = a1;
}

uint64_t (*static TTSExecutor.shared.modify())()
{
  if (qword_1ED9708C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t TTSActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))() + 16);
  v3 = sub_1A957CC08();

  return v3;
}

uint64_t sub_1A950238C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1A950246C(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice], a1, 0x118uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1A9502528()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceSmuggler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A95025A4()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  memcpy(v29, v0, 0x118uLL);
  v11 = [objc_allocWithZone(MEMORY[0x1E69584F8]) init];
  [v11 setIsInstalled_];
  [v11 setAssetSize_];
  [v11 setGender_];
  memcpy(v28, v0, sizeof(v28));
  v12 = CoreSynthesizer.Voice.synthesisProviderVoice.getter();
  [v11 setSynthesisProviderVoice_];

  [v11 setQuality_];
  v13 = sub_1A957C0C8();
  [v11 setIdentifier_];

  v14 = v29[8];
  v25 = v29[8];
  v15 = *sub_1A9493C54();
  v27 = v14;
  v28[0] = v15;
  sub_1A9387410();
  [v11 setIsDefault_];
  memcpy(v28, v29, sizeof(v28));
  CoreSynthesizer.Voice.primaryLocale.getter(v7);
  sub_1A957B1A8();
  v16 = *(v2 + 8);
  v16(v7, v1);
  sub_1A957B108();
  sub_1A957B118();
  v16(v10, v1);
  v17 = sub_1A957C0C8();

  [v11 setLanguage_];

  v18 = *sub_1A9493C00();
  v27 = v25;
  v28[0] = v18;
  [v11 setIsNoveltyVoice_];
  v19 = sub_1A957C0C8();
  [v11 setNonLocalizedNameWithoutQuality_];

  v20 = type metadata accessor for VoiceSmuggler();
  v21 = objc_allocWithZone(v20);
  memcpy(&v21[OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice], v29, 0x118uLL);
  sub_1A937B3DC(v29, v28);
  v26.receiver = v21;
  v26.super_class = v20;
  v22 = objc_msgSendSuper2(&v26, sel_init);
  [v11 setCoreVoiceWrapper_];

  return v11;
}

void *AVSpeechSynthesisVoice.coreVoice.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    memcpy(v6, (v4 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(v6));
    sub_1A937B3DC(v6, __dst);

    memcpy(__dst, v6, sizeof(__dst));
    nullsub_23(__dst);
  }

  else
  {

    sub_1A93847E0(__dst);
  }

  return memcpy(a1, __dst, 0x118uLL);
}

uint64_t sub_1A95029E8(void *a1)
{
  v1 = a1;
  IsSystem = AVSpeechSynthesisVoice.coreVoiceIsSystemVoice.getter();

  return IsSystem & 1;
}

uint64_t sub_1A9502A34(void *a1)
{
  v1 = a1;
  IsSiri = AVSpeechSynthesisVoice.coreVoiceIsSiriVoice.getter();

  return IsSiri & 1;
}

uint64_t sub_1A9502A80(uint64_t (*a1)(void *))
{
  v3 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    memcpy(__dst, (v4 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v9);

    v5 = memcpy(v9, __dst, sizeof(v9));
    v8 = *a1(v5);
    v6 = CoreSynthesizer.Voice.has(_:)(&v8);
    sub_1A937B48C(__dst);
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

id sub_1A9502B54(void *a1)
{
  v1 = a1;
  v2 = [v1 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    memcpy(__dst, (v3 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v7);

    memcpy(v7, __dst, sizeof(v7));
    CoreSynthesizer.Voice.localizedNameWithFootprint.getter();

    sub_1A937B48C(__dst);
  }

  else
  {

    v4 = [v1 nonLocalizedNameWithoutQuality];
    sub_1A957C0F8();
  }

  v5 = sub_1A957C0C8();

  return v5;
}

uint64_t AVSpeechSynthesisVoice.coreVoiceLocalizedName.getter()
{
  v1 = [v0 coreVoiceWrapper];
  type metadata accessor for VoiceSmuggler();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    memcpy(__dst, (v2 + OBJC_IVAR____TtC12TextToSpeech13VoiceSmuggler_voice), sizeof(__dst));
    sub_1A937B3DC(__dst, v7);

    memcpy(v7, __dst, sizeof(v7));
    v3 = CoreSynthesizer.Voice.localizedNameWithFootprint.getter();
    sub_1A937B48C(__dst);
    return v3;
  }

  else
  {

    v5 = [v0 nonLocalizedNameWithoutQuality];
    v6 = sub_1A957C0F8();

    return v6;
  }
}

uint64_t sub_1A9502DC0()
{
  v1 = *v0;
  sub_1A957C898();
  return 0;
}

uint64_t UInt32.dspGraphValue.getter(int a1)
{
  sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7668];
  *(v2 + 16) = xmmword_1A9587160;
  v4 = MEMORY[0x1E69E76D0];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = sub_1A957C138();
  MEMORY[0x1AC585140](v5);

  return 30768;
}

uint64_t sub_1A9502EA8(uint64_t a1)
{
  v3 = *v1;
  sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9587160;
  v5 = MEMORY[0x1E69E76D0];
  *(v4 + 56) = a1;
  *(v4 + 64) = v5;
  *(v4 + 32) = v3;
  v6 = sub_1A957C138();
  MEMORY[0x1AC585140](v6);

  return 30768;
}

uint64_t sub_1A9502F48(uint64_t a1)
{
  v2 = sub_1A9503650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9502F84(uint64_t a1)
{
  v2 = sub_1A9503650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9502FC0()
{
  v1 = 0x7475706E69;
  if (*v0 != 1)
  {
    v1 = 0x74757074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_1A950300C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950BDB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9503034(uint64_t a1)
{
  v2 = sub_1A9503554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503070(uint64_t a1)
{
  v2 = sub_1A9503554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A95030AC(uint64_t a1)
{
  v2 = sub_1A95035FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A95030E8(uint64_t a1)
{
  v2 = sub_1A95035FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503124(uint64_t a1)
{
  v2 = sub_1A95035A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503160(uint64_t a1)
{
  v2 = sub_1A95035A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A950319C(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v36 = a2;
  v4 = sub_1A937829C(&qword_1EB388470, &qword_1A9596FF8);
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v33 = &v29 - v7;
  v8 = sub_1A937829C(&qword_1EB388478, &qword_1A9597000);
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v29 - v11;
  v13 = sub_1A937829C(&qword_1EB388480, &qword_1A9597008);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v29 - v16;
  v18 = sub_1A937829C(&qword_1EB388488, &qword_1A9597010);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v29 - v22;
  v24 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A9503554();
  v25 = v37;
  sub_1A957D598();
  if (!v25)
  {
    v39 = 1;
    sub_1A95035FC();
    sub_1A957D288();
    v27 = v31;
    v26 = v32;
    goto LABEL_5;
  }

  if (v25 == 1)
  {
    v40 = 2;
    sub_1A95035A8();
    v12 = v33;
    sub_1A957D288();
    v27 = v34;
    v26 = v35;
LABEL_5:
    (*(v27 + 8))(v12, v26);
    return (*(v19 + 8))(v23, v18);
  }

  v38 = 0;
  sub_1A9503650();
  sub_1A957D288();
  sub_1A957D2E8();
  (*(v30 + 8))(v17, v13);
  return (*(v19 + 8))(v23, v18);
}

unint64_t sub_1A9503554()
{
  result = qword_1EB3A1200;
  if (!qword_1EB3A1200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1200);
  }

  return result;
}

unint64_t sub_1A95035A8()
{
  result = qword_1EB3A1208;
  if (!qword_1EB3A1208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1208);
  }

  return result;
}

unint64_t sub_1A95035FC()
{
  result = qword_1EB3A1210;
  if (!qword_1EB3A1210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1210);
  }

  return result;
}

unint64_t sub_1A9503650()
{
  result = qword_1EB3A1218;
  if (!qword_1EB3A1218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1218);
  }

  return result;
}

uint64_t sub_1A95036A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A950BEC4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1A95036EC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      return sub_1A957D548();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC5863C0](v3);
  return sub_1A957D548();
}

uint64_t sub_1A950376C()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 1;
    return MEMORY[0x1AC5863C0](v2);
  }

  if (v1 == 1)
  {
    v2 = 2;
    return MEMORY[0x1AC5863C0](v2);
  }

  v4 = *v0;
  MEMORY[0x1AC5863C0](0);

  return sub_1A957C228();
}

uint64_t sub_1A95037F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A957D4F8();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1AC5863C0](0);
      sub_1A957C228();
      return sub_1A957D548();
    }

    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC5863C0](v3);
  return sub_1A957D548();
}

uint64_t sub_1A9503870(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_1A957D3E8();
  }
}

uint64_t sub_1A95038E4()
{
  v1 = 0x65707974627573;
  if (*v0 != 1)
  {
    v1 = 0x74636166756E616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1A9503940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950CBD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9503968(uint64_t a1)
{
  v2 = sub_1A950C534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A95039A4(uint64_t a1)
{
  v2 = sub_1A950C534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A95039E0(uint64_t a1)
{
  v2 = sub_1A950C4E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503A1C(uint64_t a1)
{
  v2 = sub_1A950C4E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503A58()
{
  if (*v0)
  {
    result = 0x6E49746C697562;
  }

  else
  {
    result = 0x696E556F69647561;
  }

  *v0;
  return result;
}

uint64_t sub_1A9503A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696E556F69647561 && a2 == 0xE900000000000074;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49746C697562 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9503B7C(uint64_t a1)
{
  v2 = sub_1A950C48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9503BB8(uint64_t a1)
{
  v2 = sub_1A950C48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9503BF4(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388490, &qword_1A9597018);
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - v7;
  v9 = sub_1A937829C(&qword_1EB388498, &qword_1A9597020);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v30 - v12;
  v14 = sub_1A937829C(&qword_1EB3884A0, &qword_1A9597028);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v30 - v18;
  v20 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950C48C();
  sub_1A957D598();
  v21 = *v2;
  v22 = v2[1];
  if (v2[6])
  {
    v40 = 1;
    sub_1A950C4E0();
    sub_1A957D288();
    v23 = v32;
    sub_1A957D2E8();
    (*(v31 + 8))(v8, v23);
  }

  else
  {
    v24 = v2[2];
    v31 = v2[3];
    v32 = v24;
    v25 = v2[4];
    v26 = v2[5];
    v39 = 0;
    sub_1A950C534();
    sub_1A957D288();
    v38 = 0;
    v28 = v34;
    v27 = v35;
    sub_1A957D2E8();
    if (v27)
    {
      (*(v33 + 8))(v13, v28);
    }

    else
    {
      v37 = 1;
      sub_1A957D2E8();
      v36 = 2;
      sub_1A957D2E8();
      (*(v33 + 8))(v13, v28);
    }
  }

  return (*(v15 + 8))(v19, v14);
}

double sub_1A9503F54@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A950CCEC(a1, v6);
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

uint64_t sub_1A9503FBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 48);
  if (a1[6])
  {
    if (a2[6])
    {
      if (v4 != v6 || v5 != v7)
      {
        goto LABEL_17;
      }

      return 1;
    }

    return 0;
  }

  if (a2[6])
  {
    return 0;
  }

  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  if ((v4 != v6 || v5 != v7) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if ((v10 != v14 || v11 != v15) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v12 == v16 && v13 == v17)
  {
    return 1;
  }

LABEL_17:

  return sub_1A957D3E8();
}

uint64_t sub_1A95040E4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 48))
  {
    v3 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_1A950D300(v2, v1, v7, v6, v5, v4, 0);
    MEMORY[0x1AC585140](v2, v1);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    MEMORY[0x1AC585140](v7, v6);

    MEMORY[0x1AC585140](32, 0xE100000000000000);
    MEMORY[0x1AC585140](v5, v4);

    MEMORY[0x1AC585140](41, 0xE100000000000000);
    return 40;
  }

  return v2;
}

uint64_t sub_1A95041F0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v49 = result;
  if (!v7)
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v50 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v50 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(result + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(result + 56) + 88 * v12;
    v17 = *(v16 + 16);
    v62 = *v16;
    v63 = v17;
    v18 = *(v16 + 80);
    v20 = *(v16 + 48);
    v19 = *(v16 + 64);
    v64 = *(v16 + 32);
    v65 = v20;
    v66 = v19;
    v67 = v18;
    v53 = v20;
    v54 = v17;
    v51 = v64;
    v52 = v62;
    v22 = *(&v19 + 1);
    v21 = v19;

    sub_1A9450A1C(&v62, &v56);
    if (!v14)
    {
      return 1;
    }

    v62 = v52;
    v63 = v54;
    v64 = v51;
    v65 = v53;
    v66 = __PAIR128__(v22, v21);
    v67 = v18;
    v23 = sub_1A937A490(v15, v14);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_65;
    }

    v26 = *(a2 + 56) + 88 * v23;
    v27 = *(v26 + 16);
    v56 = *v26;
    v57 = v27;
    v29 = *(v26 + 48);
    v28 = *(v26 + 64);
    v30 = *(v26 + 80);
    v58 = *(v26 + 32);
    v61 = v30;
    v59 = v29;
    v60 = v28;
    if (v29)
    {
      if ((v65 & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v56 == v62)
      {
        goto LABEL_25;
      }

LABEL_24:
      if ((sub_1A957D3E8() & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_25;
    }

    if ((v65 & 1) != 0 || (v31 = v57, v32 = v58, v33 = v63, v34 = v64, v56 != v62) && (sub_1A957D3E8() & 1) == 0 || v31 != v33 && (sub_1A957D3E8() & 1) == 0)
    {
LABEL_65:
      v48 = &v62;
      goto LABEL_62;
    }

    if (v32 != v34)
    {
      goto LABEL_24;
    }

LABEL_25:
    v35 = *(&v59 + 1);
    v36 = *(&v65 + 1);
    sub_1A9450A1C(&v56, v55);
    if ((sub_1A95047BC(v35, v36, sub_1A937C310, &qword_1EB3884D0, &qword_1A9597040, sub_1A9505654) & 1) == 0)
    {
      goto LABEL_61;
    }

    result = sub_1A95047BC(v60, v66, sub_1A937C310, &qword_1EB3884F0, &unk_1A9597050, sub_1A9505058);
    if ((result & 1) == 0)
    {
      goto LABEL_61;
    }

    v37 = *(*(&v60 + 1) + 16);
    if (v37 != *(*(&v66 + 1) + 16))
    {
      goto LABEL_61;
    }

    if (v37 && *(&v60 + 1) != *(&v66 + 1))
    {
      v38 = (*(&v60 + 1) + 40);
      v39 = (*(&v66 + 1) + 40);
      do
      {
        v40 = *v38;
        v41 = *v39;
        if (*v38)
        {
          if (v40 == 1)
          {
            if (v41 != 1)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v41 < 2)
            {
              goto LABEL_61;
            }

            result = *(v38 - 1);
            if (result != *(v39 - 1) || v40 != v41)
            {
              result = sub_1A957D3E8();
              if ((result & 1) == 0)
              {
                goto LABEL_61;
              }
            }
          }
        }

        else if (v41)
        {
          goto LABEL_61;
        }

        v38 += 2;
        v39 += 2;
      }

      while (--v37);
    }

    v42 = *(v61 + 16);
    if (v42 != *(v67 + 16))
    {
LABEL_61:
      sub_1A9450AF4(&v62);
      v48 = &v56;
LABEL_62:
      sub_1A9450AF4(v48);
      return 0;
    }

    if (v42 && v61 != v67)
    {
      break;
    }

LABEL_48:
    sub_1A9450AF4(&v62);
    sub_1A9450AF4(&v56);
    result = v49;
    v7 = v50;
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  v44 = (v61 + 40);
  v45 = (v67 + 40);
  while (v42)
  {
    v46 = *v44;
    v47 = *v45;
    if (*v44)
    {
      if (v46 == 1)
      {
        if (v47 != 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v47 < 2)
        {
          goto LABEL_61;
        }

        result = *(v44 - 1);
        if (result != *(v45 - 1) || v46 != v47)
        {
          result = sub_1A957D3E8();
          if ((result & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }
    }

    else if (v47)
    {
      goto LABEL_61;
    }

    v44 += 2;
    v45 += 2;
    if (!--v42)
    {
      goto LABEL_48;
    }
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1A9504688(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_1A937A490(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A95047BC(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(__int128 *, void *))
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = (v8 + 63) >> 6;
  v31 = result;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_13:
    v15 = v12 | (v6 << 6);
    v16 = *(*(result + 48) + 4 * v15);
    v17 = *(result + 56) + 40 * v15;
    v18 = *v17;
    v19 = *(v17 + 8);
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    v22 = *(v17 + 32);
    if (*(v17 + 37))
    {
      v23 = 0x10000000000;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 & 0xFFFFFF00FFFFFFFFLL | (*(v17 + 36) << 32);
    a3(v18, v19, v21, v20, v22 | (*(v17 + 36) << 32));
    v41[0] = v18;
    v41[1] = v19;
    v41[2] = v21;
    v41[3] = v20;
    v42 = v22;
    v43 = WORD2(v24);
    v25 = sub_1A937BEE0(v16);
    if ((v26 & 1) == 0)
    {
      sub_1A937B960(v41, a4, a5);
      return 0;
    }

    v27 = *(a2 + 56) + 40 * v25;
    v28 = *(v27 + 30);
    v29 = *(v27 + 16);
    v39 = *v27;
    v40[0] = v29;
    *(v40 + 14) = v28;
    sub_1A9391BAC(&v39, v38, a4, a5);
    v30 = a6(&v39, v41);
    sub_1A937B960(v41, a4, a5);
    sub_1A937B960(&v39, a4, a5);
    result = v31;
    v10 = v37;
    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return 1;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A95049C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = _s12TextToSpeech14TTSAudioEffectO4SpecV7ControlO2eeoiySbAG_AGtFZ_0(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1A9504A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*v3)
      {
        if (v5 == 1)
        {
          if (v6 != 1)
          {
            return 0;
          }
        }

        else if (v6 < 2 || (*(v3 - 1) != *(v4 - 1) || v5 != v6) && (sub_1A957D3E8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1A9504B44()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x69747265706F7270;
  v4 = 0x737475706E69;
  if (v1 != 3)
  {
    v4 = 0x7374757074756FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9504BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950D5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9504C00(uint64_t a1)
{
  v2 = sub_1A950D34C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9504C3C(uint64_t a1)
{
  v2 = sub_1A950D34C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9504C78(void *a1)
{
  v3 = v1;
  v5 = sub_1A937829C(&qword_1EB3884A8, &qword_1A9597030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950D34C();
  sub_1A957D598();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = v3[2];
  v19 = *(v3 + 48);
  v15 = 0;
  sub_1A950D3A0();
  sub_1A957D338();
  if (!v2)
  {
    *&v16 = *(v3 + 7);
    v15 = 1;
    sub_1A937829C(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A950D3F4();
    sub_1A957D338();
    *&v16 = *(v3 + 8);
    v15 = 2;
    sub_1A937829C(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A950D4AC();
    sub_1A957D338();
    *&v16 = *(v3 + 9);
    v15 = 3;
    sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
    sub_1A9510300(&qword_1EB3884F8, sub_1A950D564);
    sub_1A957D338();
    *&v16 = *(v3 + 10);
    v15 = 4;
    sub_1A957D338();
  }

  return (*(v6 + 8))(v10, v5);
}

__n128 sub_1A9504F44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 48) & 1;
  v7 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v7;
  result = *(a1 + 32);
  *(a6 + 32) = result;
  *(a6 + 48) = v6;
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  return result;
}

double sub_1A9504F78@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A950D770(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A9504FEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1A950C588(v7, v9) & 1;
}

BOOL sub_1A9505058(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v35 = *(a1 + 24);
  v36 = v6 | (*(a1 + 36) << 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  if ((*(a1 + 37) & 1) == 0)
  {
    v15 = *(a2 + 16) | (*(a2 + 20) << 32) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 40);
    v26 = *(a2 + 24) | (*(a2 + 28) << 32) | ((*(a2 + 29) | (*(a2 + 31) << 16)) << 40);
    if ((*(a2 + 37) & 1) == 0)
    {
      v34 = *(a2 + 16);
      if (v3 == v7 && v4 == v8)
      {
        sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9328CAC();
      }

      else
      {
        v17 = sub_1A957D3E8();
        sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
        sub_1A9328CAC();
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_1A9328CAC();
      return v34 == v5;
    }

    v27 = *a2;
    v31 = *(a2 + 8);
    sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
    goto LABEL_12;
  }

  if ((*(a2 + 37) & 1) == 0)
  {
    v28 = *a2;
    v32 = *(a2 + 8);
    sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9327228();

LABEL_12:
    sub_1A9328CAC();
    goto LABEL_22;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (!v4)
  {
    if (!v8)
    {
      v30 = *(a2 + 20);
      v33 = *(a2 + 16);
      v23 = *(a2 + 28);
      v24 = *(a2 + 24);
      v25 = *(a2 + 36);
      sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
      sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
      v14 = v35;
      v13 = v36;
      sub_1A9327228();
      if ((v12 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_25:
      v21 = v24;
      v20 = v25;
      v22 = v23;
      if ((v30 & 1) != 0 || v33 != v5)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_21:
    sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9327228();

    goto LABEL_22;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  v30 = *(a2 + 20);
  v33 = *(a2 + 16);
  v23 = *(a2 + 28);
  v24 = *(a2 + 24);
  v25 = *(a2 + 36);
  if (v3 != v7 || v4 != v8)
  {
    v29 = sub_1A957D3E8();
    sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
    sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
    v14 = v35;
    v13 = v36;
    sub_1A9327228();

    if ((v29 & 1) == 0)
    {
      goto LABEL_22;
    }

    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  sub_1A9391BAC(a1, v37, &qword_1EB3884F0, &unk_1A9597050);
  sub_1A9391BAC(a2, v37, &qword_1EB3884F0, &unk_1A9597050);
  v14 = v35;
  v13 = v36;
  sub_1A9327228();

  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  v21 = v24;
  v20 = v25;
  v22 = v23;
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_30:
  if ((v14 & 0x100000000) != 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v22 & 1) != 0 || v21 != v14)
  {
    goto LABEL_22;
  }

  if ((v13 & 0x100000000) != 0)
  {
    if (v20)
    {
      goto LABEL_40;
    }

LABEL_22:
    sub_1A9328CAC();
    return 0;
  }

  if ((v20 & 1) != 0 || v9 != v6)
  {
    goto LABEL_22;
  }

LABEL_40:
  sub_1A9328CAC();
  return 1;
}

BOOL sub_1A9505654(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v35 = *(a1 + 24);
  v36 = v6 | (*(a1 + 36) << 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 32);
  v10 = *(a2 + 36);
  if ((*(a1 + 37) & 1) == 0)
  {
    v15 = *(a2 + 16) | (*(a2 + 20) << 32) | ((*(a2 + 21) | (*(a2 + 23) << 16)) << 40);
    v26 = *(a2 + 24) | (*(a2 + 28) << 32) | ((*(a2 + 29) | (*(a2 + 31) << 16)) << 40);
    if ((*(a2 + 37) & 1) == 0)
    {
      v34 = *(a2 + 16);
      if (v3 == v7 && v4 == v8)
      {
        sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9328CAC();
      }

      else
      {
        v17 = sub_1A957D3E8();
        sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
        sub_1A9328CAC();
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      sub_1A9328CAC();
      return v34 == v5;
    }

    v27 = *a2;
    v31 = *(a2 + 8);
    sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
    goto LABEL_12;
  }

  if ((*(a2 + 37) & 1) == 0)
  {
    v28 = *a2;
    v32 = *(a2 + 8);
    sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9327228();

LABEL_12:
    sub_1A9328CAC();
    goto LABEL_22;
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  if (!v4)
  {
    if (!v8)
    {
      v30 = *(a2 + 20);
      v33 = *(a2 + 16);
      v23 = *(a2 + 28);
      v24 = *(a2 + 24);
      v25 = *(a2 + 36);
      sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
      sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
      v14 = v35;
      v13 = v36;
      sub_1A9327228();
      if ((v12 & 0x100000000) != 0)
      {
        goto LABEL_29;
      }

LABEL_25:
      v21 = v24;
      v20 = v25;
      v22 = v23;
      if ((v30 & 1) != 0 || *&v5 != v33)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_21:
    sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9327228();

    goto LABEL_22;
  }

  if (!v8)
  {
    goto LABEL_21;
  }

  v30 = *(a2 + 20);
  v33 = *(a2 + 16);
  v23 = *(a2 + 28);
  v24 = *(a2 + 24);
  v25 = *(a2 + 36);
  if (v3 != v7 || v4 != v8)
  {
    v29 = sub_1A957D3E8();
    sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
    sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
    v14 = v35;
    v13 = v36;
    sub_1A9327228();

    if ((v29 & 1) == 0)
    {
      goto LABEL_22;
    }

    if ((v12 & 0x100000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  sub_1A9391BAC(a1, v37, &qword_1EB3884D0, &qword_1A9597040);
  sub_1A9391BAC(a2, v37, &qword_1EB3884D0, &qword_1A9597040);
  v14 = v35;
  v13 = v36;
  sub_1A9327228();

  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_25;
  }

LABEL_29:
  v21 = v24;
  v20 = v25;
  v22 = v23;
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_30:
  if ((v14 & 0x100000000) != 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((v22 & 1) != 0 || *&v14 != v21)
  {
    goto LABEL_22;
  }

  if ((v13 & 0x100000000) != 0)
  {
    if (v20)
    {
      goto LABEL_40;
    }

LABEL_22:
    sub_1A9328CAC();
    return 0;
  }

  if ((v20 & 1) != 0 || *&v6 != v9)
  {
    goto LABEL_22;
  }

LABEL_40:
  sub_1A9328CAC();
  return 1;
}

BOOL static TTSAudioEffect.Spec.GenericWire.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v150 = *(a3 - 8);
  v7 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v143 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A957CC58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v145 = *(TupleTypeMetadata2 - 8);
  v10 = *(v145 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v140 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v142 = &v136 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v147 = &v136 - v19;
  v160 = *(v9 - 8);
  v20 = v160[8];
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v139 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v141 = &v136 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v146 = &v136 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v152 = &v136 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v156 = &v136 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v158 = &v136 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v153 = &v136 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v157 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v159 = &v136 - v46;
  v149 = a3;
  v144 = a4;
  v47 = type metadata accessor for TTSAudioEffect.Spec.GenericWire();
  v48 = *(v47 - 8);
  v49 = v48[8];
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v53 = &v136 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v54);
  v56 = &v136 - v55;
  v57 = swift_getTupleTypeMetadata2();
  v154 = *(v57 - 8);
  v58 = *(v154 + 8);
  MEMORY[0x1EEE9AC00](v57, v59);
  v61 = &v136 + *(v57 + 48) - v60;
  v155 = v48;
  v62 = v48[2];
  v63 = &v136 - v60;
  v62();
  (v62)(v61, a2, v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v148 = v63;
    v64 = (v62)(v53, v63, v47);
    v66 = *v53;
    v65 = *(v53 + 1);
    MEMORY[0x1EEE9AC00](v64, v67);
    strcpy(&v136 - 32, "id  min max ");
    v161 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    v162 = v9;
    v163 = v9;
    v164 = v9;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v69 = TupleTypeMetadata[12];
    v70 = TupleTypeMetadata[16];
    v71 = TupleTypeMetadata[20];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v84 = v160[1];
      v84(&v53[v71], v9);
      v84(&v53[v70], v9);
      v84(&v53[v69], v9);
      v82 = 0;
      v83 = v154;
      v47 = v57;
LABEL_38:
      v63 = v148;
      goto LABEL_39;
    }

    v138 = v66;
    v72 = *(v61 + 1);
    v137 = *v61;
    v154 = v72;
    v73 = v160[4];
    v73(v159, &v53[v69], v9);
    v73(v157, &v53[v70], v9);
    v74 = &v53[v71];
    v75 = v153;
    v73(v153, v74, v9);
    v73(v158, &v61[v69], v9);
    v73(v156, &v61[v70], v9);
    v76 = &v61[v71];
    v77 = v152;
    v73(v152, v76, v9);
    if (v65)
    {
      v63 = v148;
      if (v154)
      {
        v78 = v160;
        if (v138 == v137 && v65 == v154)
        {

          goto LABEL_23;
        }

        v90 = sub_1A957D3E8();

        if (v90)
        {
LABEL_23:
          v91 = *(TupleTypeMetadata2 + 48);
          v92 = v78[2];
          v93 = v147;
          v92(v147, v159, v9);
          v92(&v93[v91], v158, v9);
          v94 = v149;
          v95 = v150 + 48;
          v96 = *(v150 + 48);
          v97 = v96(v93, 1, v149);
          v154 = v96;
          v138 = v92;
          v137 = (v78 + 2);
          if (v97 == 1)
          {
            if (v96(&v93[v91], 1, v94) == 1)
            {
              v136 = v95;
              v98 = v93;
              v99 = v78[1];
              v99(v98, v9);
LABEL_31:
              v109 = *(TupleTypeMetadata2 + 48);
              v110 = v142;
              v111 = v138;
              v138(v142, v157, v9);
              v147 = v109;
              v111(&v109[v110], v156, v9);
              v112 = v154;
              v113 = v136;
              if (v154(v110, 1, v94) == 1)
              {
                if (v112(&v147[v110], 1, v94) == 1)
                {
                  v136 = v113;
                  v99(v110, v9);
LABEL_42:
                  v124 = *(TupleTypeMetadata2 + 48);
                  v125 = v140;
                  v126 = v138;
                  v138(v140, v153, v9);
                  v160 = v124;
                  v126(v124 + v125, v152, v9);
                  v127 = v154;
                  if (v154(v125, 1, v94) == 1)
                  {
                    v99(v152, v9);
                    v99(v156, v9);
                    v99(v158, v9);
                    v99(v153, v9);
                    v99(v157, v9);
                    v99(v159, v9);
                    v128 = v127(v160 + v125, 1, v94);
                    v63 = v148;
                    v129 = v125;
                    if (v128 == 1)
                    {
                      v99(v125, v9);
LABEL_49:
                      v82 = 1;
                      v83 = v155;
                      goto LABEL_39;
                    }
                  }

                  else
                  {
                    v126(v139, v125, v9);
                    v130 = v160;
                    v129 = v125;
                    if (v127(v160 + v125, 1, v94) != 1)
                    {
                      v131 = v150;
                      v132 = v143;
                      (*(v150 + 32))(v143, &v130[v125], v94);
                      v133 = *(v144 + 24);
                      v134 = v139;
                      LODWORD(v160) = sub_1A957C098();
                      v135 = *(v131 + 8);
                      v135(v132, v94);
                      v99(v152, v9);
                      v99(v156, v9);
                      v99(v158, v9);
                      v99(v153, v9);
                      v99(v157, v9);
                      v99(v159, v9);
                      v135(v134, v94);
                      v99(v129, v9);
                      v63 = v148;
                      if (v160)
                      {
                        goto LABEL_49;
                      }

                      goto LABEL_21;
                    }

                    v99(v152, v9);
                    v99(v156, v9);
                    v99(v158, v9);
                    v99(v153, v9);
                    v99(v157, v9);
                    v99(v159, v9);
                    (*(v150 + 8))(v139, v94);
                    v63 = v148;
                  }

                  (*(v145 + 8))(v129, TupleTypeMetadata2);
LABEL_21:
                  v82 = 0;
                  v83 = v155;
                  goto LABEL_39;
                }
              }

              else
              {
                v111(v141, v110, v9);
                v114 = v147;
                v115 = v112(&v147[v110], 1, v94);
                v116 = v94;
                if (v115 != 1)
                {
                  v136 = v113;
                  v118 = v150;
                  v119 = v143;
                  (*(v150 + 32))(v143, &v114[v110], v116);
                  v120 = *(v144 + 24);
                  v121 = v141;
                  v122 = sub_1A957C098();
                  v123 = *(v118 + 8);
                  v123(v119, v149);
                  v123(v121, v149);
                  v94 = v149;
                  v99(v110, v9);
                  if (v122)
                  {
                    goto LABEL_42;
                  }

                  goto LABEL_37;
                }

                (*(v150 + 8))(v141, v94);
              }

              (*(v145 + 8))(v110, TupleTypeMetadata2);
LABEL_37:
              v99(v152, v9);
              v99(v156, v9);
              v99(v158, v9);
              v99(v153, v9);
              v99(v157, v9);
              v99(v159, v9);
              v82 = 0;
              v83 = v155;
              goto LABEL_38;
            }
          }

          else
          {
            v92(v146, v93, v9);
            if (v96(&v93[v91], 1, v94) != 1)
            {
              v136 = v95;
              v100 = v150;
              v101 = &v93[v91];
              v102 = v143;
              (*(v150 + 32))(v143, v101, v94);
              v103 = *(v144 + 24);
              v104 = v146;
              v105 = v93;
              v106 = v94;
              v107 = sub_1A957C098();
              v108 = *(v100 + 8);
              v108(v102, v106);
              v108(v104, v106);
              v99 = v160[1];
              v99(v105, v9);
              if ((v107 & 1) == 0)
              {
                goto LABEL_37;
              }

              v94 = v149;
              goto LABEL_31;
            }

            (*(v150 + 8))(v146, v94);
          }

          (*(v145 + 8))(v93, TupleTypeMetadata2);
          v99 = v78[1];
          goto LABEL_37;
        }

LABEL_20:
        v89 = v78[1];
        v89(v77, v9);
        v89(v156, v9);
        v89(v158, v9);
        v89(v75, v9);
        v89(v157, v9);
        v89(v159, v9);
        goto LABEL_21;
      }

      v78 = v160;
    }

    else
    {
      v63 = v148;
      v78 = v160;
      if (!v154)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  (v62)(v56, v63, v47);
  v80 = *v56;
  v79 = *(v56 + 1);
  v81 = *(v56 + 4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v82 = 0;
    v83 = v154;
    v47 = v57;
  }

  else
  {
    v85 = *(v61 + 4);
    if (v80 == *v61 && v79 == *(v61 + 1))
    {
      v86 = *(v61 + 1);
    }

    else
    {
      v87 = *(v61 + 1);
      v88 = sub_1A957D3E8();

      if ((v88 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v82 = v81 == v85;
    v83 = v155;
  }

LABEL_39:
  (*(v83 + 1))(v63, v47);
  return v82;
}

uint64_t sub_1A9506D34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61726170 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A9506DFC(char a1)
{
  if (a1)
  {
    return 0x6D61726170;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A9506E28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A9506F28(char a1)
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1 & 1);
  return sub_1A957D548();
}

uint64_t sub_1A9506F70(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_1A9506F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A9507128(unsigned __int8 a1)
{
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](a1);
  return sub_1A957D548();
}

uint64_t sub_1A9507170(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 7235949;
  if (a1 != 2)
  {
    v2 = 7889261;
  }

  if (a1)
  {
    v1 = 12639;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A95071E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506D34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A950720C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A9507260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A95072E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  sub_1A957D4F8();
  a4(v7, *v4);
  return sub_1A957D548();
}

uint64_t sub_1A9507334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506E28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A950735C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A95073B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1A9507420()
{
  sub_1A957D4F8();
  sub_1A9507100(v2, *v0);
  return sub_1A957D548();
}

uint64_t sub_1A9507468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A9506F9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9507490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A95074E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TTSAudioEffect.Spec.GenericWire.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = _s4SpecV11GenericWireO15ValueCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v75 = v6;
  v78 = sub_1A957D368();
  v76 = *(v78 - 8);
  v7 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v78, v8);
  v90 = v68 - v9;
  v10 = sub_1A957CC58();
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v77 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v83 = v68 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v80 = v68 - v19;
  v20 = _s4SpecV11GenericWireO13BoxCodingKeysOMa();
  v21 = swift_getWitnessTable();
  v68[3] = v20;
  v68[2] = v21;
  v22 = sub_1A957D368();
  v70 = *(v22 - 8);
  v71 = v22;
  v23 = *(v70 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v69 = v68 - v26;
  v27 = *(a2 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25, v29);
  v31 = v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68[1] = v4;
  v68[0] = v5;
  _s4SpecV11GenericWireO10CodingKeysOMa();
  swift_getWitnessTable();
  v84 = sub_1A957D368();
  v82 = *(v84 - 8);
  v32 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84, v33);
  v35 = v68 - v34;
  v36 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  v85 = v35;
  sub_1A957D598();
  (*(v27 + 16))(v31, v79, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v39 = *v31;
  if (EnumCaseMultiPayload == 1)
  {
    v40 = *(v31 + 1);
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v38);
    strcpy(&v68[-4], "id  min max ");
    v41 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    v42 = v73;
    v86 = v41;
    v87 = v73;
    v88 = v73;
    v89 = v73;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v44 = TupleTypeMetadata[16];
    v45 = TupleTypeMetadata[20];
    v46 = v72;
    v47 = *(v72 + 32);
    v47(v80, &v31[TupleTypeMetadata[12]], v42);
    v47(v83, &v31[v44], v42);
    v48 = &v31[v45];
    v49 = v77;
    v47(v77, v48, v42);
    LOBYTE(v86) = 1;
    v50 = v84;
    v51 = v85;
    sub_1A957D288();
    LOBYTE(v86) = 0;
    v52 = v78;
    v53 = v81;
    sub_1A957D298();

    if (v53)
    {
      (*(v76 + 8))(v90, v52);
      v54 = *(v46 + 8);
      v54(v49, v42);
      v54(v83, v42);
      v54(v80, v42);
      return (*(v82 + 8))(v51, v50);
    }

    else
    {
      LOBYTE(v86) = 1;
      v63 = *(v68[0] + 16);
      v64 = v80;
      sub_1A957D2B8();
      LOBYTE(v86) = 2;
      v65 = v78;
      sub_1A957D2B8();
      LOBYTE(v86) = 3;
      v66 = v77;
      sub_1A957D2B8();
      (*(v76 + 8))(v90, v65);
      v67 = *(v46 + 8);
      v67(v66, v42);
      v67(v83, v42);
      v67(v64, v42);
      return (*(v82 + 8))(v85, v84);
    }
  }

  else
  {
    v56 = *(v31 + 1);
    v57 = *(v31 + 4);
    LOBYTE(v86) = 0;
    v58 = v69;
    v59 = v84;
    v60 = v85;
    sub_1A957D288();
    LOBYTE(v86) = 0;
    v61 = v71;
    v62 = v81;
    sub_1A957D2E8();

    if (!v62)
    {
      LOBYTE(v86) = 1;
      sub_1A957D358();
    }

    (*(v70 + 8))(v58, v61);
    return (*(v82 + 8))(v60, v59);
  }
}

uint64_t TTSAudioEffect.Spec.GenericWire.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v91 = a4;
  v7 = _s4SpecV11GenericWireO15ValueCodingKeysOMa();
  WitnessTable = swift_getWitnessTable();
  v90 = v7;
  v85 = sub_1A957D278();
  v86 = *(v85 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85, v9);
  v96 = &v76 - v10;
  v11 = _s4SpecV11GenericWireO13BoxCodingKeysOMa();
  v87 = swift_getWitnessTable();
  v88 = v11;
  v84 = sub_1A957D278();
  v83 = *(v84 - 8);
  v12 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84, v13);
  v93 = &v76 - v14;
  _s4SpecV11GenericWireO10CodingKeysOMa();
  swift_getWitnessTable();
  v92 = sub_1A957D278();
  v94 = *(v92 - 8);
  v15 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92, v16);
  v18 = &v76 - v17;
  v82 = a2;
  v81 = a3;
  v19 = type metadata accessor for TTSAudioEffect.Spec.GenericWire();
  v80 = *(v19 - 8);
  v20 = *(v80 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = (&v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = (&v76 - v27);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v76 - v30;
  v32 = a1;
  v33 = a1[3];
  v34 = v32[4];
  v98 = v32;
  sub_1A93780F4(v32, v33);
  v95 = v18;
  v35 = v97;
  sub_1A957D588();
  if (!v35)
  {
    v77 = v28;
    v36 = v93;
    v79 = v24;
    v78 = v31;
    v37 = v95;
    v97 = v19;
    v38 = v92;
    *&v99 = sub_1A957D268();
    sub_1A957C578();
    swift_getWitnessTable();
    *&v101 = sub_1A957CD78();
    *(&v101 + 1) = v39;
    *&v102 = v40;
    *(&v102 + 1) = v41;
    sub_1A957CD68();
    swift_getWitnessTable();
    sub_1A957C9B8();
    v42 = v99;
    if (v99 == 2 || (v76 = v101, v99 = v101, v100 = v102, (sub_1A957C9D8() & 1) == 0))
    {
      v44 = sub_1A957CF58();
      swift_allocError();
      v46 = v45;
      v47 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v46 = v97;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v94 + 8))(v37, v38);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v42)
      {
        LOBYTE(v99) = 1;
        sub_1A957D178();
        v103 = 0;
        v43 = v85;
        v53 = sub_1A957D198();
        MEMORY[0x1EEE9AC00](v53, v54);
        strcpy(&v76 - 32, "id  min max ");
        v56 = v55;
        *&v99 = sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
        *(&v99 + 1) = sub_1A957CC58();
        *&v100 = *(&v99 + 1);
        *(&v100 + 1) = *(&v99 + 1);
        v57 = v43;
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v59 = TupleTypeMetadata[12];
        v60 = v79;
        *v79 = v53;
        v60[1] = v56;
        v93 = v56;
        LOBYTE(v99) = 1;
        v61 = *(v81 + 8);
        sub_1A957D1B8();
        v90 = v59;
        v66 = TupleTypeMetadata[16];
        LOBYTE(v99) = 2;
        sub_1A957D1B8();
        v67 = v94;
        WitnessTable = v66;
        v71 = TupleTypeMetadata[20];
        LOBYTE(v99) = 3;
        sub_1A957D1B8();
        (*(v86 + 8))(v96, v57);
        (*(v67 + 8))(v95, v38);
        swift_unknownObjectRelease();
        v72 = v79;
        v73 = v97;
        swift_storeEnumTagMultiPayload();
        v74 = v91;
        v75 = v72;
      }

      else
      {
        LOBYTE(v99) = 0;
        v48 = v36;
        v49 = v38;
        sub_1A957D178();
        v74 = v91;
        LOBYTE(v99) = 0;
        v50 = v84;
        v51 = sub_1A957D1E8();
        v52 = v94;
        v63 = v62;
        v64 = v48;
        v96 = v51;
        LOBYTE(v99) = 1;
        LODWORD(v48) = sub_1A957D258();
        (*(v83 + 8))(v64, v50);
        (*(v52 + 8))(v37, v49);
        swift_unknownObjectRelease();
        v73 = v97;
        v68 = v77;
        *v77 = v96;
        v68[1] = v63;
        *(v68 + 4) = v48;
        swift_storeEnumTagMultiPayload();
        v75 = v68;
      }

      v69 = *(v80 + 32);
      v70 = v78;
      v69(v78, v75, v73);
      v69(v74, v70, v73);
    }
  }

  return sub_1A9378138(v98);
}

uint64_t sub_1A950897C()
{
  v1 = 0x70756F7267;
  v2 = 0x656C67676F74;
  if (*v0 != 2)
  {
    v2 = 0x726564696C73;
  }

  if (*v0)
  {
    v1 = 1802398060;
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

uint64_t sub_1A95089E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950FAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9508A0C(uint64_t a1)
{
  v2 = sub_1A950DD74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508A48(uint64_t a1)
{
  v2 = sub_1A950DD74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508A84()
{
  if (*v0)
  {
    result = 0x6E6572646C696863;
  }

  else
  {
    result = 0x656C746974;
  }

  *v0;
  return result;
}

uint64_t sub_1A9508ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9508B94(uint64_t a1)
{
  v2 = sub_1A950DF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508BD0(uint64_t a1)
{
  v2 = sub_1A950DF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508C0C()
{
  if (*v0)
  {
    result = 28532;
  }

  else
  {
    result = 0x6C6562616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A9508C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9508D08(uint64_t a1)
{
  v2 = sub_1A950DE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508D44(uint64_t a1)
{
  v2 = sub_1A950DE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508D80()
{
  v1 = *v0;
  v2 = 0x6574656D61726170;
  v3 = 7889261;
  v4 = 1885697139;
  if (v1 != 4)
  {
    v4 = 1953066613;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C6562616CLL;
  if (v1 != 1)
  {
    v5 = 7235949;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1A9508E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950FC40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A9508E48(uint64_t a1)
{
  v2 = sub_1A950DDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9508E84(uint64_t a1)
{
  v2 = sub_1A950DDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9508EC0()
{
  if (*v0)
  {
    result = 0x6C6562616CLL;
  }

  else
  {
    result = 0x6574656D61726170;
  }

  *v0;
  return result;
}

uint64_t sub_1A9508F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A9508FDC(uint64_t a1)
{
  v2 = sub_1A950DE1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9509018(uint64_t a1)
{
  v2 = sub_1A950DE1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSAudioEffect.Spec.Control.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388508, &qword_1A9597070);
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v74 = &v69 - v7;
  v8 = sub_1A937829C(&qword_1EB388510, &qword_1A9597078);
  v72 = *(v8 - 8);
  v73 = v8;
  v9 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v69 - v11;
  v13 = sub_1A937829C(&qword_1EB388518, &qword_1A9597080);
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v69 - v16;
  v18 = sub_1A937829C(&qword_1EB388520, &qword_1A9597088);
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v69 - v21;
  v80 = sub_1A937829C(&qword_1EB388528, &qword_1A9597090);
  v78 = *(v80 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80, v24);
  v26 = &v69 - v25;
  v27 = *v2;
  v28 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950DD74();
  v79 = v26;
  sub_1A957D598();
  v29 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v29 == 2)
    {
      v37 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v39 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v40 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      LOBYTE(v82) = 2;
      sub_1A950DE1C();
      v42 = v79;
      v41 = v80;
      sub_1A957D288();
      LOBYTE(v82) = 0;
      v43 = v73;
      v44 = v77;
      sub_1A957D2E8();
      if (v44)
      {
        (*(v72 + 8))(v12, v43);
        v45 = *(v78 + 8);
        v46 = v42;
      }

      else
      {
        LOBYTE(v82) = 1;
        sub_1A957D2E8();
        (*(v72 + 8))(v12, v43);
        v46 = v79;
        v45 = *(v78 + 8);
      }

      return v45(v46, v41);
    }

    else
    {
      v54 = v27 & 0x3FFFFFFFFFFFFFFFLL;
      v55 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v57 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v58 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v73 = v57;
      v60 = *(v54 + 48);
      v59 = *(v54 + 52);
      v61 = *(v54 + 56);
      v62 = *(v54 + 64);
      v63 = *(v54 + 72);
      LOBYTE(v82) = 3;
      sub_1A950DDC8();
      v64 = v74;
      v66 = v79;
      v65 = v80;
      sub_1A957D288();
      LOBYTE(v82) = 0;
      v68 = v76;
      v67 = v77;
      sub_1A957D2E8();
      if (!v67)
      {
        v77 = v63;
        LOBYTE(v82) = 1;
        sub_1A957D2E8();
        LOBYTE(v82) = 2;
        sub_1A957D318();
        v65 = v80;
        LOBYTE(v82) = 3;
        sub_1A957D318();
        LOBYTE(v82) = 4;
        sub_1A957D318();
        LOBYTE(v82) = 5;
        sub_1A957D298();
      }

      (*(v75 + 8))(v64, v68);
      return (*(v78 + 8))(v66, v65);
    }
  }

  else if (v29)
  {
    v47 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v48 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v49 = *((v27 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    LOBYTE(v82) = 1;
    sub_1A950DE70();
    v51 = v79;
    v50 = v80;
    sub_1A957D288();
    LOBYTE(v82) = 0;
    v52 = v71;
    v53 = v77;
    sub_1A957D2E8();
    if (!v53)
    {
      v82 = v49;
      v81 = 1;
      sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
      sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C);
      sub_1A957D338();
    }

    (*(v70 + 8))(v17, v52);
    return (*(v78 + 8))(v51, v50);
  }

  else
  {
    v30 = *(v27 + 16);
    v31 = *(v27 + 24);
    v32 = *(v27 + 32);
    LOBYTE(v82) = 0;
    sub_1A950DF90();
    v34 = v79;
    v33 = v80;
    sub_1A957D288();
    LOBYTE(v82) = 0;
    v35 = v77;
    sub_1A957D298();
    if (!v35)
    {
      v82 = v32;
      v81 = 1;
      sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
      sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C);
      sub_1A957D338();
    }

    (*(v69 + 8))(v22, v18);
    return (*(v78 + 8))(v34, v33);
  }
}

uint64_t TTSAudioEffect.Spec.Control.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    v8 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if (v4 == 2)
    {
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      v12 = *(v8 + 40);
      MEMORY[0x1AC5863C0](2);
      sub_1A957C228();
    }

    else
    {
      v21 = *(v8 + 16);
      v22 = *(v8 + 24);
      v23 = *(v8 + 32);
      v24 = *(v8 + 40);
      v25 = *(v8 + 48);
      v26 = *(v8 + 52);
      v27 = *(v8 + 56);
      v28 = *(v8 + 64);
      v29 = *(v8 + 72);
      MEMORY[0x1AC5863C0](3);
      sub_1A957C228();
      sub_1A957C228();
      sub_1A957D528();
      sub_1A957D528();
      sub_1A957D528();
      if (!v29)
      {
        return sub_1A957D518();
      }

      sub_1A957D518();
    }

    return sub_1A957C228();
  }

  else if (v4)
  {
    v13 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v14 = v13[2];
    v15 = v13[3];
    v16 = v13[4];
    MEMORY[0x1AC5863C0](1);
    sub_1A957C228();
    result = MEMORY[0x1AC5863C0](*(v16 + 16));
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = (v16 + 32);
      do
      {
        v20 = *v19++;

        TTSAudioEffect.Spec.Control.hash(into:)(a1);

        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    MEMORY[0x1AC5863C0](0);
    sub_1A957D518();
    if (v6)
    {
      sub_1A957C228();
    }

    result = MEMORY[0x1AC5863C0](*(v7 + 16));
    v30 = *(v7 + 16);
    if (v30)
    {
      v31 = (v7 + 32);
      do
      {
        v32 = *v31++;

        TTSAudioEffect.Spec.Control.hash(into:)(a1);

        --v30;
      }

      while (v30);
    }
  }

  return result;
}

uint64_t TTSAudioEffect.Spec.Control.hashValue.getter()
{
  v2[9] = *v0;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t TTSAudioEffect.Spec.Control.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v83 = a2;
  v84 = sub_1A937829C(&qword_1EB388548, &qword_1A95970A0);
  v89 = *(v84 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v84, v4);
  v92 = &v81 - v5;
  v87 = sub_1A937829C(&qword_1EB388550, &qword_1A95970A8);
  v90 = *(v87 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v87, v7);
  v91 = &v81 - v8;
  v86 = sub_1A937829C(&qword_1EB388558, &qword_1A95970B0);
  v88 = *(v86 - 8);
  v9 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v86, v10);
  v12 = &v81 - v11;
  v13 = sub_1A937829C(&qword_1EB388560, &qword_1A95970B8);
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - v16;
  v18 = sub_1A937829C(&qword_1EB388568, &qword_1A95970C0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v81 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v94 = a1;
  sub_1A93780F4(a1, v25);
  sub_1A950DD74();
  v26 = v93;
  sub_1A957D588();
  if (!v26)
  {
    v27 = v13;
    v28 = v12;
    v29 = v91;
    v30 = v92;
    v82 = 0;
    v93 = v19;
    v31 = sub_1A957D268();
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v31 + 32);
      if (v32 == 1 && v33 != 4)
      {
        if (*(v31 + 32) > 1u)
        {
          if (v33 == 2)
          {
            v95 = 2;
            sub_1A950DE1C();
            v46 = v29;
            v47 = v82;
            sub_1A957D178();
            v48 = v93;
            if (!v47)
            {
              v52 = swift_allocObject();
              v95 = 0;
              v53 = v87;
              v59 = v18;
              *(v52 + 16) = sub_1A957D1E8();
              *(v52 + 24) = v60;
              v95 = 1;
              v61 = sub_1A957D1E8();
              v69 = v68;
              (*(v90 + 8))(v46, v53);
              (*(v48 + 8))(v23, v59);
              swift_unknownObjectRelease();
              *(v52 + 32) = v61;
              *(v52 + 40) = v69;
              v43 = v52 | 0x8000000000000000;
              goto LABEL_25;
            }

            (*(v93 + 8))(v23, v18);
            goto LABEL_20;
          }

          v95 = 3;
          sub_1A950DDC8();
          v51 = v82;
          sub_1A957D178();
          v50 = v93;
          if (!v51)
          {
            v91 = swift_allocObject();
            v95 = 0;
            v56 = v84;
            v57 = sub_1A957D1E8();
            v64 = v91;
            *(v91 + 2) = v57;
            *(v64 + 3) = v65;
            v95 = 1;
            v66 = sub_1A957D1E8();
            v67 = v89;
            v70 = v91;
            *(v91 + 4) = v66;
            *(v70 + 5) = v71;
            v95 = 2;
            sub_1A957D218();
            *(v91 + 12) = v72;
            v95 = 3;
            sub_1A957D218();
            *(v91 + 13) = v73;
            v95 = 4;
            sub_1A957D218();
            *(v91 + 14) = v74;
            v95 = 5;
            v75 = sub_1A957D198();
            v76 = v56;
            v77 = v75;
            v79 = v78;
            (*(v67 + 8))(v30, v76);
            (*(v50 + 8))(v23, v18);
            swift_unknownObjectRelease();
            v80 = v91;
            *(v91 + 8) = v77;
            *(v80 + 72) = v79;
            *v83 = v80 | 0xC000000000000000;
            return sub_1A9378138(v94);
          }
        }

        else
        {
          if (*(v31 + 32))
          {
            v95 = 1;
            sub_1A950DE70();
            v49 = v82;
            sub_1A957D178();
            if (!v49)
            {
              v54 = swift_allocObject();
              v95 = 0;
              v55 = v86;
              *(v54 + 16) = sub_1A957D1E8();
              *(v54 + 24) = v62;
              sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
              v95 = 1;
              sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4);
              sub_1A957D238();
              (*(v88 + 8))(v28, v55);
              (*(v93 + 8))(v23, v18);
              swift_unknownObjectRelease();
              v43 = v54 | 0x4000000000000000;
              goto LABEL_25;
            }
          }

          else
          {
            v95 = 0;
            sub_1A950DF90();
            v41 = v82;
            sub_1A957D178();
            if (!v41)
            {
              v42 = v23;
              v43 = swift_allocObject();
              v95 = 0;
              v44 = sub_1A957D198();
              v45 = v93;
              *(v43 + 16) = v44;
              *(v43 + 24) = v58;
              sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
              v95 = 1;
              sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4);
              sub_1A957D238();
              (*(v85 + 8))(v17, v27);
              (*(v45 + 8))(v42, v18);
              swift_unknownObjectRelease();
LABEL_25:
              *v83 = v43;
              return sub_1A9378138(v94);
            }
          }

          v50 = v93;
        }

        (*(v50 + 8))(v23, v18);
LABEL_20:
        swift_unknownObjectRelease();
        return sub_1A9378138(v94);
      }
    }

    v35 = sub_1A957CF58();
    swift_allocError();
    v36 = v23;
    v38 = v37;
    v39 = v18;
    v40 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v38 = &type metadata for TTSAudioEffect.Spec.Control;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v93 + 8))(v36, v39);
    swift_unknownObjectRelease();
  }

  return sub_1A9378138(v94);
}

uint64_t sub_1A950A7C0()
{
  v2[9] = *v0;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t sub_1A950A810()
{
  v2[9] = *v0;
  sub_1A957D4F8();
  TTSAudioEffect.Spec.Control.hash(into:)(v2);
  return sub_1A957D548();
}

uint64_t TTSAudioEffect.Spec.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTSAudioEffect.Spec.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.localizedEffectDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t TTSAudioEffect.Spec.localizedEffectDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.icon.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TTSAudioEffect.Spec.icon.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TTSAudioEffect.Spec.controls.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_1A950AA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  v16 = MEMORY[0x1E69E7CC8];
  v96 = MEMORY[0x1E69E7CC8];
  v100 = v10;
  v99 = v14;
LABEL_6:
  if (v13)
  {
    v17 = v15;
  }

  else
  {
    do
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_61;
      }

      if (v17 >= v14)
      {

        *a9 = a1;
        *(a9 + 8) = a2;
        *(a9 + 16) = a7;
        *(a9 + 24) = a8;
        *(a9 + 32) = a5;
        *(a9 + 40) = a6;
        *(a9 + 48) = a10 & 1;
        *(a9 + 56) = a3;
        *(a9 + 64) = a4;
        *(a9 + 72) = v96;
        *(a9 + 80) = v16;
        return result;
      }

      v13 = *(v10 + 8 * v17);
      ++v15;
    }

    while (!v13);
  }

  v18 = __clz(__rbit64(v13));
  v13 &= v13 - 1;
  v19 = *(a3 + 56) + 88 * (v18 | (v17 << 6));
  v21 = *(v19 + 56);
  v20 = *(v19 + 64);
  v22 = 1 << *(v21 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v21 + 64);
  v25 = (v22 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v102 = v20;

  v26 = 0;
  while (v24)
  {
LABEL_20:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v29 = *(v21 + 56) + 40 * (v28 | (v26 << 6));
    if (*(v29 + 37) == 1)
    {
      v30 = *v29;
      v31 = *(v29 + 8);
      v33 = *(v29 + 16);
      v32 = *(v29 + 24);
      v34 = *(v29 + 36);
      v35 = *(v29 + 32);
      if (!v31)
      {
        goto LABEL_30;
      }

      if ((v33 & 0x100000000) == 0)
      {
        v86 = v30;
        sub_1A9327228();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103 = v96;
        v37 = sub_1A937A490(v86, v31);
        v38 = v96[2];
        v39 = (v36 & 1) == 0;
        v40 = v38 + v39;
        if (__OFADD__(v38, v39))
        {
          goto LABEL_62;
        }

        if (v96[3] < v40)
        {
          v97 = v36;
          sub_1A944FB30(v40, isUniquelyReferenced_nonNull_native);
          v41 = sub_1A937A490(v86, v31);
          v43 = v42 & 1;
          v44 = v97;
          if ((v97 & 1) != v43)
          {
            goto LABEL_66;
          }

          v37 = v41;
LABEL_27:
          v45 = v86;
          if ((v44 & 1) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v37;
          v98 = v36;
          sub_1A9450338();
          v44 = v98;
          v37 = v83;
          goto LABEL_27;
        }

        v45 = v86;
        if (v36)
        {
LABEL_33:
          v82 = v37;
          sub_1A9328CAC();
          v96 = v103;
          *(v103[7] + 4 * v82) = v33;
LABEL_30:
          sub_1A9328CAC();
        }

        else
        {
LABEL_28:
          v103[(v37 >> 6) + 8] |= 1 << v37;
          v46 = (v103[6] + 16 * v37);
          *v46 = v45;
          v46[1] = v31;
          *(v103[7] + 4 * v37) = v33;
          sub_1A9328CAC();
          v47 = v103[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_64;
          }

          v96 = v103;
          v103[2] = v49;
        }
      }
    }
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v27 >= v25)
    {
      break;
    }

    v24 = *(v21 + 64 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_20;
    }
  }

  v50 = 0;
  v51 = v102;
  v52 = 1 << *(v102 + 32);
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  else
  {
    v53 = -1;
  }

  v54 = v53 & *(v102 + 64);
  v55 = (v52 + 63) >> 6;
  while (v54)
  {
LABEL_44:
    v57 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v58 = *(v51 + 56) + 40 * (v57 | (v50 << 6));
    if (*(v58 + 37) == 1)
    {
      v59 = *v58;
      v60 = *(v58 + 8);
      v61 = *(v58 + 16);
      v62 = *(v58 + 24);
      v63 = *(v58 + 36);
      v64 = *(v58 + 32);
      if (v60)
      {
        if ((v61 & 0x100000000) == 0)
        {
          v65 = v59;
          v84 = v61;
          sub_1A9327228();

          v66 = swift_isUniquelyReferenced_nonNull_native();
          v87 = v65;
          v67 = sub_1A937A490(v65, v60);
          v69 = v16[2];
          v70 = (v68 & 1) == 0;
          v48 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v48)
          {
            goto LABEL_63;
          }

          v72 = v68;
          if (v16[3] >= v71)
          {
            v74 = v84;
            if ((v66 & 1) == 0)
            {
              v79 = v67;
              sub_1A944FF38();
              v67 = v79;
              v74 = v84;
            }
          }

          else
          {
            sub_1A944F3C0(v71, v66);
            v67 = sub_1A937A490(v87, v60);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_66;
            }

            v74 = v84;
          }

          if (v72)
          {
            v85 = v67;
            v75 = v74;
            sub_1A9328CAC();
            *(v16[7] + 4 * v85) = v75;
            sub_1A9328CAC();
            v51 = v102;
          }

          else
          {
            v16[(v67 >> 6) + 8] |= 1 << v67;
            v76 = (v16[6] + 16 * v67);
            *v76 = v87;
            v76[1] = v60;
            *(v16[7] + 4 * v67) = v74;
            sub_1A9328CAC();
            v77 = v16[2];
            v48 = __OFADD__(v77, 1);
            v78 = v77 + 1;
            if (v48)
            {
              goto LABEL_65;
            }

            v16[2] = v78;
            v51 = v102;
          }
        }
      }

      else
      {
        sub_1A9328CAC();
        v51 = v102;
      }
    }
  }

  while (1)
  {
    v56 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v56 >= v55)
    {

      v15 = v17;
      v10 = v100;
      v14 = v99;
      goto LABEL_6;
    }

    v54 = *(v102 + 64 + 8 * v56);
    ++v50;
    if (v54)
    {
      v50 = v56;
      goto LABEL_44;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t TTSAudioEffect.Spec.defaultParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t TTSAudioEffect.Spec.defaultProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

unint64_t sub_1A950B138()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x7365786F62;
  if (v1 != 4)
  {
    v4 = 0x736C6F72746E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1852793705;
  if (v1 != 2)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A950B228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A950FE3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A950B250(uint64_t a1)
{
  v2 = sub_1A950E038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A950B28C(uint64_t a1)
{
  v2 = sub_1A950E038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSAudioEffect.Spec.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB388580, &qword_1A95970C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v22 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v30 = v1[3];
  v31 = v11;
  v12 = v1[4];
  v28 = v1[5];
  v29 = v12;
  v27 = *(v1 + 48);
  v13 = v1[7];
  v25 = v1[8];
  v26 = v13;
  v14 = v1[9];
  v23 = v1[10];
  v24 = v14;
  v15 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950E038();
  sub_1A957D598();
  LOBYTE(v34) = 0;
  v16 = v8;
  v17 = v32;
  sub_1A957D2E8();
  if (v17)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v19 = v25;
  v18 = v26;
  v20 = v24;
  LOBYTE(v34) = 1;
  sub_1A957D298();
  LOBYTE(v34) = 2;
  sub_1A957D298();
  LOBYTE(v34) = 3;
  sub_1A957D2F8();
  v34 = v18;
  v33 = 4;
  sub_1A937829C(&qword_1EB388588, &qword_1A95970D0);
  sub_1A950E08C(&qword_1EB388590, sub_1A950E110);
  sub_1A957D338();
  v34 = v19;
  v33 = 5;
  sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
  sub_1A950DEC4(&qword_1EB388538, sub_1A950DF3C);
  sub_1A957D338();
  v34 = v20;
  v33 = 6;
  sub_1A937829C(&qword_1EB3885A0, &qword_1A95970D8);
  sub_1A950E228(&qword_1EB3885A8);
  sub_1A957D338();
  v34 = v23;
  v33 = 7;
  sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
  sub_1A950E164(&qword_1EB3885B0);
  sub_1A957D338();
  return (*(v4 + 8))(v16, v3);
}

uint64_t TTSAudioEffect.Spec.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3885B8, &qword_1A95970E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950E038();
  sub_1A957D588();
  if (v2)
  {
    sub_1A9378138(a1);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    v12 = sub_1A957D1E8();
    v32 = v13;
    LOBYTE(v39[0]) = 1;
    v14 = sub_1A957D198();
    v31 = v15;
    LOBYTE(v39[0]) = 2;
    *&v29 = sub_1A957D198();
    *(&v29 + 1) = v16;
    LOBYTE(v39[0]) = 3;
    v28 = sub_1A957D1F8();
    sub_1A937829C(&qword_1EB388588, &qword_1A95970D0);
    LOBYTE(v33) = 4;
    sub_1A950E08C(&qword_1EB3885C0, sub_1A950E1D4);
    sub_1A957D238();
    v27 = v39[0];
    sub_1A937829C(&qword_1EB388530, &qword_1A9597098);
    LOBYTE(v33) = 5;
    sub_1A950DEC4(&qword_1EB388570, sub_1A950DFE4);
    sub_1A957D238();
    v30 = v39[0];
    sub_1A937829C(&qword_1EB3885A0, &qword_1A95970D8);
    LOBYTE(v33) = 6;
    sub_1A950E228(&qword_1EB3885D0);
    sub_1A957D238();
    v26 = v14;
    v17 = v39[0];
    sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
    v46 = 7;
    sub_1A950E164(&qword_1EB3885D8);
    sub_1A957D238();
    v28 &= 1u;
    v18 = v28;
    (*(v6 + 8))(v10, v5);
    v19 = v47;
    *&v33 = v12;
    v20 = v32;
    *(&v33 + 1) = v32;
    v21 = v31;
    *&v34 = v26;
    *(&v34 + 1) = v31;
    v35 = v29;
    LOBYTE(v36) = v18;
    v22 = v30;
    *(&v36 + 1) = v27;
    *&v37 = v30;
    *(&v37 + 1) = v17;
    v38 = v47;
    *(a2 + 80) = v47;
    v23 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v23;
    *(a2 + 64) = v37;
    v24 = v34;
    *a2 = v33;
    *(a2 + 16) = v24;
    sub_1A937BE84(&v33, v39);
    sub_1A9378138(a1);
    v39[0] = v12;
    v39[1] = v20;
    v39[2] = v26;
    v39[3] = v21;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v22;
    v44 = v17;
    v45 = v19;
    return sub_1A94509C8(v39);
  }
}

uint64_t sub_1A950BDB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A950BEC4(uint64_t *a1)
{
  v39 = sub_1A937829C(&qword_1EB388650, &qword_1A9598960);
  v41 = *(v39 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39, v3);
  v42 = &v37 - v4;
  v37 = sub_1A937829C(&qword_1EB388658, &qword_1A9598968);
  v40 = *(v37 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37, v6);
  v8 = &v37 - v7;
  v9 = sub_1A937829C(&qword_1EB388660, &qword_1A9598970);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - v12;
  v14 = sub_1A937829C(&qword_1EB388668, &qword_1A9598978);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v44 = a1;
  v22 = sub_1A93780F4(a1, v20);
  sub_1A9503554();
  v23 = v43;
  sub_1A957D588();
  if (!v23)
  {
    v43 = 0;
    v24 = v42;
    v25 = sub_1A957D268();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_1A957CF58();
      swift_allocError();
      v31 = v30;
      v22 = v19;
      v32 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
      *v31 = &_s4SpecV8EndPointON;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
      swift_willThrow();
      (*(v15 + 8))(v22, v14);
    }

    else
    {
      if (*(v25 + 32))
      {
        if (v27 == 1)
        {
          v46 = 1;
          sub_1A95035FC();
          v22 = v19;
          v33 = v43;
          sub_1A957D178();
          if (!v33)
          {
            (*(v40 + 8))(v8, v37);
            (*(v15 + 8))(v19, v14);
            swift_unknownObjectRelease();
            v22 = 0;
            goto LABEL_19;
          }
        }

        else
        {
          v47 = 2;
          sub_1A95035A8();
          v22 = v19;
          v35 = v43;
          sub_1A957D178();
          if (!v35)
          {
            (*(v41 + 8))(v24, v39);
            (*(v15 + 8))(v19, v14);
            swift_unknownObjectRelease();
            v22 = 0;
            goto LABEL_19;
          }
        }
      }

      else
      {
        v45 = 0;
        sub_1A9503650();
        v22 = v19;
        v34 = v43;
        sub_1A957D178();
        if (!v34)
        {
          v22 = sub_1A957D1E8();
          (*(v38 + 8))(v13, v9);
          (*(v15 + 8))(v19, v14);
          swift_unknownObjectRelease();
          goto LABEL_19;
        }
      }

      (*(v15 + 8))(v19, v14);
    }

    swift_unknownObjectRelease();
  }

LABEL_19:
  sub_1A9378138(v44);
  return v22;
}

unint64_t sub_1A950C48C()
{
  result = qword_1EB3A1220;
  if (!qword_1EB3A1220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1220);
  }

  return result;
}

unint64_t sub_1A950C4E0()
{
  result = qword_1EB3A1228;
  if (!qword_1EB3A1228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1228);
  }

  return result;
}

unint64_t sub_1A950C534()
{
  result = qword_1EB3A1230;
  if (!qword_1EB3A1230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1230);
  }

  return result;
}

uint64_t sub_1A950C588(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 48);
  if (a1[6])
  {
    if ((a2[6] & 1) == 0)
    {
      return 0;
    }

    if (v4 != v6 || v5 != v7)
    {
LABEL_15:
      if (sub_1A957D3E8())
      {
        goto LABEL_16;
      }

      return 0;
    }
  }

  else
  {
    if (a2[6])
    {
      return 0;
    }

    v9 = a1[2];
    v10 = a1[3];
    v11 = a1[4];
    v12 = a1[5];
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[5];
    if ((v4 != v6 || v5 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if ((v9 != v13 || v10 != v14) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if (v11 != v15 || v12 != v16)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  if ((sub_1A95047BC(a1[7], a2[7], sub_1A937C310, &qword_1EB3884D0, &qword_1A9597040, sub_1A9505654) & 1) == 0 || (sub_1A95047BC(a1[8], a2[8], sub_1A937C310, &qword_1EB3884F0, &unk_1A9597050, sub_1A9505058) & 1) == 0 || (sub_1A9504A84(a1[9], a2[9]) & 1) == 0)
  {
    return 0;
  }

  v17 = a1[10];
  v18 = a2[10];

  return sub_1A9504A84(v17, v18);
}

uint64_t _s12TextToSpeech14TTSAudioEffectO4SpecV7ControlO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 62 == 1)
      {
        v22 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v23 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v24 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v25 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
        v26 = v25[4];
        v27 = v22 == v25[2] && v23 == v25[3];
        if (v27 || (sub_1A957D3E8() & 1) != 0)
        {

          v28 = sub_1A95049C4(v24, v26);

          return v28 & 1;
        }
      }

      return 0;
    }

    if (!(v3 >> 62))
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      v7 = *(v3 + 24);
      v8 = *(v3 + 32);
      if (v5)
      {
        if (!v7)
        {
          return 0;
        }

        v9 = *(v2 + 16) == *(v3 + 16) && v5 == v7;
        if (!v9 && (sub_1A957D3E8() & 1) == 0)
        {
          return 0;
        }

LABEL_53:

        v48 = sub_1A95049C4(v6, v8);

        return v48 & 1;
      }

      if (!v7)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (v3 >> 62 != 3)
    {
      return 0;
    }

    v29 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v30 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v32 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v31 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
    v33 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v34 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v35 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    v36 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v37 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v39 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v38 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x34);
    v40 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    v41 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) && *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v43 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v42 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);
    if (!v41 && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    if (v29 == v36 && v30 == v37)
    {
      if (v32 != v39 || v31 != v38 || v33 != v40)
      {
        return 0;
      }
    }

    else
    {
      v45 = sub_1A957D3E8();
      result = 0;
      if ((v45 & 1) == 0)
      {
        return result;
      }

      v46 = v32 == v39 && v31 == v38;
      if (!v46 || v33 != v40)
      {
        return result;
      }
    }

    if (v35)
    {
      if (!v42 || (v34 != v43 || v35 != v42) && (sub_1A957D3E8() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v42)
    {
      return 0;
    }

    return 1;
  }

  if (v3 >> 62 != 2)
  {
    return 0;
  }

  v10 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v12 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v13 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v14 = v3 & 0x3FFFFFFFFFFFFFFFLL;
  v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v18 = *(v14 + 40);
  v19 = v10 == v15 && v11 == v16;
  if (!v19 && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v12 == v17 && v13 == v18)
  {
    return 1;
  }

  return sub_1A957D3E8();
}

uint64_t _s12TextToSpeech14TTSAudioEffectO4SpecV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v18 = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  v16 = *(a1 + 72);
  v17 = *(a2 + 64);
  v15 = *(a2 + 72);
  v13 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1A957D3E8() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7 || (v2 != v8 || v3 != v7) && (sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (v9)
    {
      return 0;
    }

LABEL_20:
    if (((v6 ^ v11) & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  if (v4 != v10 || v5 != v9)
  {
    if ((sub_1A957D3E8() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v6 != v11)
  {
    return 0;
  }

LABEL_21:
  if ((sub_1A95041F0(v20, v19) & 1) == 0 || (sub_1A95049C4(v18, v17) & 1) == 0 || (sub_1A937A354(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1A9504688(v14, v13);
}

uint64_t sub_1A950CBD0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A950CCEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = sub_1A937829C(&qword_1EB388638, &qword_1A9598948);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  v5 = *(v4 + 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v54 - v7;
  v9 = sub_1A937829C(&qword_1EB388640, &qword_1A9598950);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v54 - v12;
  v14 = sub_1A937829C(&qword_1EB388648, &qword_1A9598958);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v54 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v63 = a1;
  sub_1A93780F4(a1, v20);
  sub_1A950C48C();
  v22 = v62;
  sub_1A957D588();
  if (v22)
  {
    return sub_1A9378138(v63);
  }

  v23 = v19;
  v24 = sub_1A957D268();
  if (*(v24 + 16) != 1)
  {
    v29 = sub_1A957CF58();
    swift_allocError();
    v31 = v30;
    v32 = *(sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0) + 48);
    *v31 = &_s4SpecV3BoxV7BoxTypeON;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v15 + 8))(v19, v14);
    swift_unknownObjectRelease();
    return sub_1A9378138(v63);
  }

  v25 = *(v24 + 32);
  if (v25)
  {
    v68 = 1;
    sub_1A950C4E0();
    v26 = v8;
    sub_1A957D178();
    v27 = v59;
    v28 = sub_1A957D1E8();
    v38 = v37;
    v56 = v28;
    v57 = v25;
    (*(v60 + 1))(v26, v27);
    (*(v15 + 8))(v23, v14);
    swift_unknownObjectRelease();
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = v38;
  }

  else
  {
    v67 = 0;
    sub_1A950C534();
    sub_1A957D178();
    v60 = v23;
    v62 = v14;
    v57 = v25;
    v66 = 0;
    v34 = v9;
    v35 = sub_1A957D1E8();
    v36 = v13;
    v43 = v45;
    v56 = v35;
    v65 = 1;
    v46 = sub_1A957D1E8();
    v47 = v34;
    v49 = v61;
    v48 = v62;
    v40 = v50;
    v55 = v46;
    v64 = 2;
    v59 = v47;
    v51 = sub_1A957D1E8();
    v42 = v52;
    v53 = *(v49 + 8);
    v61 = v51;
    v53(v36, v59);
    (*(v15 + 8))(v60, v48);
    swift_unknownObjectRelease();
    v39 = v55;
    v41 = v61;
  }

  result = sub_1A9378138(v63);
  v44 = v58;
  *v58 = v56;
  v44[1] = v43;
  v44[2] = v39;
  v44[3] = v40;
  v44[4] = v41;
  v44[5] = v42;
  *(v44 + 48) = v57;
  return result;
}

uint64_t sub_1A950D300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {

    v7 = vars8;
  }
}

unint64_t sub_1A950D34C()
{
  result = qword_1EB3A1238;
  if (!qword_1EB3A1238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1238);
  }

  return result;
}

unint64_t sub_1A950D3A0()
{
  result = qword_1EB3884B0;
  if (!qword_1EB3884B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884B0);
  }

  return result;
}

unint64_t sub_1A950D3F4()
{
  result = qword_1EB3884C0;
  if (!qword_1EB3884C0)
  {
    sub_1A93A7B68(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A93B744C(&qword_1EB3884C8, &qword_1EB3884D0, &qword_1A9597040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884C0);
  }

  return result;
}

unint64_t sub_1A950D4AC()
{
  result = qword_1EB3884E0;
  if (!qword_1EB3884E0)
  {
    sub_1A93A7B68(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A93B744C(&qword_1EB3884E8, &qword_1EB3884F0, &unk_1A9597050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3884E0);
  }

  return result;
}

unint64_t sub_1A950D564()
{
  result = qword_1EB388500;
  if (!qword_1EB388500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388500);
  }

  return result;
}

uint64_t sub_1A950D5B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374757074756FLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A950D770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A937829C(&qword_1EB3885F8, &qword_1A9598940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  sub_1A93780F4(a1, a1[3]);
  sub_1A950D34C();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  LOBYTE(v31) = 0;
  sub_1A95100D4();
  sub_1A957D238();
  v29 = v37;
  v28 = v38;
  v30 = v39;
  v46 = v40;
  sub_1A937829C(&qword_1EB3884B8, &qword_1A9597038);
  LOBYTE(v31) = 1;
  sub_1A9510128();
  sub_1A957D238();
  v27 = v37;
  sub_1A937829C(&qword_1EB3884D8, &qword_1A9597048);
  LOBYTE(v31) = 2;
  sub_1A9510248();
  sub_1A957D238();
  v26 = v37;
  v12 = sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
  LOBYTE(v31) = 3;
  v13 = sub_1A9510300(&qword_1EB388628, sub_1A9510378);
  v25 = v12;
  v24 = v13;
  sub_1A957D238();
  v23 = v37;
  v47 = 4;
  sub_1A957D238();
  (*(v6 + 8))(v10, v5);
  v25 = v45;
  v31 = v29;
  v14 = v28;
  v32 = v28;
  v33 = v30;
  v15 = v46;
  LOBYTE(v34) = v46;
  v16 = v27;
  v17 = v26;
  *(&v34 + 1) = v27;
  *&v35 = v26;
  v18 = v23;
  *(&v35 + 1) = v23;
  v36 = v45;
  sub_1A9450A1C(&v31, &v37);
  sub_1A9378138(a1);
  v37 = v29;
  v38 = v14;
  v39 = v30;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v25;
  result = sub_1A9450AF4(&v37);
  v20 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v20;
  *(a2 + 64) = v35;
  *(a2 + 80) = v36;
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  return result;
}

unint64_t sub_1A950DD74()
{
  result = qword_1EB3A1240;
  if (!qword_1EB3A1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1240);
  }

  return result;
}

unint64_t sub_1A950DDC8()
{
  result = qword_1EB3A1248;
  if (!qword_1EB3A1248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1248);
  }

  return result;
}

unint64_t sub_1A950DE1C()
{
  result = qword_1EB3A1250;
  if (!qword_1EB3A1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1250);
  }

  return result;
}

unint64_t sub_1A950DE70()
{
  result = qword_1EB3A1258;
  if (!qword_1EB3A1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1258);
  }

  return result;
}

uint64_t sub_1A950DEC4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB388530, &qword_1A9597098);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950DF3C()
{
  result = qword_1EB388540;
  if (!qword_1EB388540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388540);
  }

  return result;
}

unint64_t sub_1A950DF90()
{
  result = qword_1EB3A1260;
  if (!qword_1EB3A1260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A1260);
  }

  return result;
}

unint64_t sub_1A950DFE4()
{
  result = qword_1EB388578;
  if (!qword_1EB388578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388578);
  }

  return result;
}

unint64_t sub_1A950E038()
{
  result = qword_1EB3A1268[0];
  if (!qword_1EB3A1268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A1268);
  }

  return result;
}

uint64_t sub_1A950E08C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB388588, &qword_1A95970D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E110()
{
  result = qword_1EB388598;
  if (!qword_1EB388598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388598);
  }

  return result;
}

uint64_t sub_1A950E164(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3876B8, &qword_1A95970E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E1D4()
{
  result = qword_1EB3885C8;
  if (!qword_1EB3885C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885C8);
  }

  return result;
}

uint64_t sub_1A950E228(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3885A0, &qword_1A95970D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A950E29C()
{
  result = qword_1EB3885E0;
  if (!qword_1EB3885E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885E0);
  }

  return result;
}

unint64_t sub_1A950E2F4()
{
  result = qword_1EB3885E8;
  if (!qword_1EB3885E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3885E8);
  }

  return result;
}

uint64_t sub_1A950E36C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A950E3A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A950E3E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A950E44C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A950E494(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 48) = -a2;
    }
  }

  return result;
}

void sub_1A950E504(uint64_t a1)
{
  sub_1A950E98C();
  if (v3 <= 0x3F)
  {
    MEMORY[0x1EEE9AC00](v2, v3);
    sub_1A93A7B68(&qword_1EB3872B0, &unk_1A9597060);
    v4 = *(a1 + 16);
    sub_1A957CC58();
    swift_getTupleTypeMetadata();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1A950E604(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = *(v3 + 64) + 1;
  }

  v4 = *(v3 + 80);
  v6 = ((v5 + v4 + ((v5 + v4 + ((v4 + 16) & ~v4)) & ~v4)) & ~v4) + v5;
  v7 = 20;
  if (v6 > 0x14)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1A950E778(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = *(v5 + 64) + 1;
  }

  v6 = *(v5 + 80);
  v8 = ((v7 + v6 + ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6)) & ~v6) + v7;
  if (v8 <= 0x14)
  {
    v8 = 20;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_42:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v8] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_27;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_1A950E98C()
{
  if (!qword_1EB3885F0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3885F0);
    }
  }
}

uint64_t _s4SpecV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4SpecV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A950EC30()
{
  result = qword_1EB3A2170[0];
  if (!qword_1EB3A2170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2170);
  }

  return result;
}

unint64_t sub_1A950EC88()
{
  result = qword_1EB3A2380[0];
  if (!qword_1EB3A2380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2380);
  }

  return result;
}

unint64_t sub_1A950ECE0()
{
  result = qword_1EB3A2590[0];
  if (!qword_1EB3A2590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2590);
  }

  return result;
}

unint64_t sub_1A950ED38()
{
  result = qword_1EB3A27A0[0];
  if (!qword_1EB3A27A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A27A0);
  }

  return result;
}

unint64_t sub_1A950ED90()
{
  result = qword_1EB3A29B0[0];
  if (!qword_1EB3A29B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A29B0);
  }

  return result;
}

unint64_t sub_1A950EDE8()
{
  result = qword_1EB3A2BC0[0];
  if (!qword_1EB3A2BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A2BC0);
  }

  return result;
}

unint64_t sub_1A950EE94()
{
  result = qword_1EB3A33D0[0];
  if (!qword_1EB3A33D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A33D0);
  }

  return result;
}

unint64_t sub_1A950EEEC()
{
  result = qword_1EB3A35E0[0];
  if (!qword_1EB3A35E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A35E0);
  }

  return result;
}

unint64_t sub_1A950EF44()
{
  result = qword_1EB3A37F0[0];
  if (!qword_1EB3A37F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A37F0);
  }

  return result;
}

unint64_t sub_1A950EF9C()
{
  result = qword_1EB3A3A00[0];
  if (!qword_1EB3A3A00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3A00);
  }

  return result;
}

unint64_t sub_1A950EFF4()
{
  result = qword_1EB3A3C10[0];
  if (!qword_1EB3A3C10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3C10);
  }

  return result;
}

unint64_t sub_1A950F04C()
{
  result = qword_1EB3A3E20[0];
  if (!qword_1EB3A3E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3E20);
  }

  return result;
}

unint64_t sub_1A950F0A4()
{
  result = qword_1EB3A3F30;
  if (!qword_1EB3A3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A3F30);
  }

  return result;
}

unint64_t sub_1A950F0FC()
{
  result = qword_1EB3A3F38[0];
  if (!qword_1EB3A3F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3F38);
  }

  return result;
}

unint64_t sub_1A950F154()
{
  result = qword_1EB3A3FC0;
  if (!qword_1EB3A3FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A3FC0);
  }

  return result;
}

unint64_t sub_1A950F1AC()
{
  result = qword_1EB3A3FC8[0];
  if (!qword_1EB3A3FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A3FC8);
  }

  return result;
}

unint64_t sub_1A950F204()
{
  result = qword_1EB3A4050;
  if (!qword_1EB3A4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4050);
  }

  return result;
}

unint64_t sub_1A950F25C()
{
  result = qword_1EB3A4058[0];
  if (!qword_1EB3A4058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4058);
  }

  return result;
}

unint64_t sub_1A950F2B4()
{
  result = qword_1EB3A40E0;
  if (!qword_1EB3A40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A40E0);
  }

  return result;
}

unint64_t sub_1A950F30C()
{
  result = qword_1EB3A40E8[0];
  if (!qword_1EB3A40E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A40E8);
  }

  return result;
}

unint64_t sub_1A950F364()
{
  result = qword_1EB3A4170;
  if (!qword_1EB3A4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4170);
  }

  return result;
}

unint64_t sub_1A950F3BC()
{
  result = qword_1EB3A4178;
  if (!qword_1EB3A4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4178);
  }

  return result;
}

unint64_t sub_1A950F414()
{
  result = qword_1EB3A4200;
  if (!qword_1EB3A4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4200);
  }

  return result;
}

unint64_t sub_1A950F46C()
{
  result = qword_1EB3A4208[0];
  if (!qword_1EB3A4208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4208);
  }

  return result;
}

unint64_t sub_1A950F56C()
{
  result = qword_1EB3A4410;
  if (!qword_1EB3A4410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4410);
  }

  return result;
}

unint64_t sub_1A950F5C4()
{
  result = qword_1EB3A4418[0];
  if (!qword_1EB3A4418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4418);
  }

  return result;
}

unint64_t sub_1A950F61C()
{
  result = qword_1EB3A44A0;
  if (!qword_1EB3A44A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A44A0);
  }

  return result;
}

unint64_t sub_1A950F674()
{
  result = qword_1EB3A44A8[0];
  if (!qword_1EB3A44A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A44A8);
  }

  return result;
}

unint64_t sub_1A950F6CC()
{
  result = qword_1EB3A4530;
  if (!qword_1EB3A4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4530);
  }

  return result;
}

unint64_t sub_1A950F724()
{
  result = qword_1EB3A4538[0];
  if (!qword_1EB3A4538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4538);
  }

  return result;
}

unint64_t sub_1A950F77C()
{
  result = qword_1EB3A45C0;
  if (!qword_1EB3A45C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A45C0);
  }

  return result;
}

unint64_t sub_1A950F7D4()
{
  result = qword_1EB3A45C8[0];
  if (!qword_1EB3A45C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A45C8);
  }

  return result;
}

unint64_t sub_1A950F82C()
{
  result = qword_1EB3A4650;
  if (!qword_1EB3A4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4650);
  }

  return result;
}

unint64_t sub_1A950F884()
{
  result = qword_1EB3A4658[0];
  if (!qword_1EB3A4658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4658);
  }

  return result;
}

unint64_t sub_1A950F8DC()
{
  result = qword_1EB3A46E0;
  if (!qword_1EB3A46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A46E0);
  }

  return result;
}

unint64_t sub_1A950F934()
{
  result = qword_1EB3A46E8[0];
  if (!qword_1EB3A46E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A46E8);
  }

  return result;
}

unint64_t sub_1A950F98C()
{
  result = qword_1EB3A4770;
  if (!qword_1EB3A4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4770);
  }

  return result;
}

unint64_t sub_1A950F9E4()
{
  result = qword_1EB3A4778;
  if (!qword_1EB3A4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4778);
  }

  return result;
}

unint64_t sub_1A950FA3C()
{
  result = qword_1EB3A4800;
  if (!qword_1EB3A4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3A4800);
  }

  return result;
}

unint64_t sub_1A950FA94()
{
  result = qword_1EB3A4808[0];
  if (!qword_1EB3A4808[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3A4808);
  }

  return result;
}

uint64_t sub_1A950FAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C67676F74 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564696C73 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A957D3E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A950FC40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xEB00000000644972;
  if (v4 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1885697139 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

uint64_t sub_1A950FE3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A957D3E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A95C4D70 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A95C4D90 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365786F62 && a2 == 0xE500000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C6F72746E6F63 && a2 == 0xE800000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C4DB0 == a2 || (sub_1A957D3E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A95C4DD0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A957D3E8();

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

unint64_t sub_1A95100D4()
{
  result = qword_1EB388600;
  if (!qword_1EB388600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388600);
  }

  return result;
}

unint64_t sub_1A9510128()
{
  result = qword_1EB388608;
  if (!qword_1EB388608)
  {
    sub_1A93A7B68(&qword_1EB3884B8, &qword_1A9597038);
    sub_1A93B744C(&qword_1EB388610, &qword_1EB3884D0, &qword_1A9597040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388608);
  }

  return result;
}

uint64_t sub_1A95101E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1A9510248()
{
  result = qword_1EB388618;
  if (!qword_1EB388618)
  {
    sub_1A93A7B68(&qword_1EB3884D8, &qword_1A9597048);
    sub_1A93B744C(&qword_1EB388620, &qword_1EB3884F0, &unk_1A9597050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388618);
  }

  return result;
}

uint64_t sub_1A9510300(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(&qword_1EB3876C0, &qword_1A958EB68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A9510378()
{
  result = qword_1EB388630;
  if (!qword_1EB388630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388630);
  }

  return result;
}

uint64_t TTSMarkupSpeech.tap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  TTSMarkupSpeech.subscript.getter(KeyPath, a3, a4);
  v12 = v18;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_1A9510C28(0, v18[2] + 1, 1, v18);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1A9510C28((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[2 * v14];
  v15[4] = sub_1A951053C;
  v15[5] = v11;
  v17 = v12;
  return TTSMarkupSpeech.subscript.setter(&v17, KeyPath, a3, a4);
}

uint64_t sub_1A951053C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, *a2, a2[1], a3);
}

uint64_t TTSMarkupSpeech.handleEventTaps(event:ssml:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = *a1;
  v23 = a1[1];
  KeyPath = swift_getKeyPath();
  TTSMarkupSpeech.subscript.getter(KeyPath, a4, a5);

  v12 = *(v25[0] + 16);

  if (v12)
  {
    v14 = swift_getKeyPath();
    TTSMarkupSpeech.subscript.getter(v14, a4, a5);

    v15 = *(v25[0] + 16);
    v17 = v22;
    v16 = v23;
    if (v15)
    {
      v18 = (v25[0] + 40);
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;
        v26[0] = v17;
        v26[1] = v16;
        v25[3] = a4;
        v25[4] = a5;
        v21 = sub_1A93981E4(v25);
        (*(*(a4 - 8) + 16))(v21, v6, a4);
        v24[0] = a2;
        v24[1] = a3;

        v20(v26, v24, v25);

        sub_1A9378138(v25);
        v17 = v22;
        v16 = v23;
        v18 += 2;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

unint64_t TTSMarkupSpeech.handle(event:ssml:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a2;
  v55 = *(a4 - 8);
  v9 = *(v55 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v48 - v14;
  v16 = *v13;
  v17 = v13[1];
  v18 = v13[2];
  v19 = v13[3];
  KeyPath = swift_getKeyPath();
  v56 = a4;
  v57 = a5;
  v21 = a4;
  v22 = v5;
  TTSMarkupSpeech.subscript.getter(KeyPath, v21, a5);

  if ((v68 & 1) == 0)
  {
    v24 = v65;
    v52 = v16;
    *&v65 = v16;
    *(&v65 + 1) = v17;
    v66 = v18;
    v67 = v19;
    v53 = a3;
    result = sub_1A9510BA8(v58, a3);
    v26 = result >> 14;
    if (result >> 14 < *(&v24 + 1) >> 14 && v24 >> 14 != *(&v24 + 1) >> 14)
    {
      v27 = v25 >> 14;
      if (v24 >> 14 < v25 >> 14 && v26 != v27)
      {
        v49 = v19;
        v50 = v18;
        v51 = v17;
        v28 = v56;
        v29 = *(v55 + 16);
        v29(v15, v22, v56);
        sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
        if (swift_dynamicCast())
        {
          v30 = *(v65 + 16);
          if (v30)
          {
            v55 = v65;
            v31 = v65 + 32;
            do
            {
              sub_1A9379534(v31, &v65);
              v32 = v67;
              v33 = v68;
              sub_1A93780F4(&v65, v67);
              v34 = swift_getKeyPath();
              TTSMarkupSpeech.subscript.getter(v34, v32, v33);

              if (v64 != 1)
              {
                v35 = v62 >> 14;
                if (v26 < *(&v62 + 1) >> 14 && v35 < v27 && v35 != *(&v62 + 1) >> 14)
                {
                  v38 = v67;
                  v39 = v68;
                  sub_1A93780F4(&v65, v67);
                  *&v62 = v52;
                  *(&v62 + 1) = v51;
                  *&v63 = v50;
                  *(&v63 + 1) = v49;
                  (*(v39 + 88))(&v62, v58, v53, v38, v39);
                }
              }

              sub_1A9378138(&v65);
              v31 += 40;
              --v30;
            }

            while (v30);

            v47 = v57;
            v41 = v53;
            v44 = v52;
            goto LABEL_29;
          }

          v41 = v53;
        }

        else
        {
          v29(v54, v22, v28);
          sub_1A937829C(&qword_1EB387678, &qword_1A958EAB8);
          v40 = swift_dynamicCast();
          v41 = v53;
          if (v40)
          {
            sub_1A932D070(&v62, &v65);
            v42 = v67;
            v43 = v68;
            sub_1A93780F4(&v65, v67);
            (*(v43 + 16))(&v59, v42, v43);
            v44 = v52;
            if (v61)
            {
              sub_1A932D070(&v59, &v62);
              v45 = *(&v63 + 1);
              v46 = v64;
              sub_1A93780F4(&v62, *(&v63 + 1));
              *&v59 = v44;
              *(&v59 + 1) = v51;
              v60 = v50;
              v61 = v49;
              (*(v46 + 88))(&v59, v58, v41, v45, v46);
              sub_1A9378138(&v62);
            }

            else
            {
              sub_1A937B960(&v59, &qword_1EB3868E8, &unk_1A958F280);
            }

            sub_1A9378138(&v65);
            goto LABEL_28;
          }

          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          sub_1A937B960(&v62, &qword_1EB387680, qword_1A958EAC0);
        }

        v44 = v52;
LABEL_28:
        v47 = v57;
LABEL_29:
        *&v65 = v44;
        *(&v65 + 1) = v51;
        v66 = v50;
        v67 = v49;
        return TTSMarkupSpeech.handleEventTaps(event:ssml:)(&v65, v58, v41, v28, v47);
      }
    }
  }

  return result;
}

uint64_t sub_1A9510BA8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if ((v3 >> 61) <= 1 && v3 >> 61)
  {
    if (v2[2] < 3u)
    {
      result = *v2;
      v5 = v2[1];
      return result;
    }

    if ((a2 & 0x1000000000000000) != 0 && (a1 & 0x800000000000000) == 0)
    {
      return 15;
    }
  }

  else if ((a2 & 0x1000000000000000) != 0 && (a1 & 0x800000000000000) == 0)
  {
    return 15;
  }

  return 15;
}