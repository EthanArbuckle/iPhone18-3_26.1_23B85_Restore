char *sub_1A93A3558(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB386AD8, &qword_1A95884F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 280);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[280 * v8])
    {
      memmove(v12, v13, 280 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A93A3680(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386AA8, &qword_1A95884D0);
  v10 = *(sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A937829C(&qword_1EB386A30, &unk_1A9587E60) - 8);
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

uint64_t sub_1A93A3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A93A38D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93A39C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A93A39FC()
{
  result = qword_1EB3923F0[0];
  if (!qword_1EB3923F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3923F0);
  }

  return result;
}

size_t sub_1A93A3A50(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A93A3C2C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
  v37 = a2;
  v14 = sub_1A957C058();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8]);
      v24 = sub_1A957C098();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1A93A48A4(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1A93A3F0C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
  v37 = a2;
  v14 = sub_1A957C058();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610]);
      v24 = sub_1A957C098();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_1A93A4B6C(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_1A93A41EC(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1A957B0B8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386AB8, &qword_1A95884D8);
  result = sub_1A957CEA8();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
      result = sub_1A957C058();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1A93A4548(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1A957B188();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  result = sub_1A957CEA8();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
      result = sub_1A957C058();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1A93A48A4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1A957B0B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A93A41EC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1A93A4E34(MEMORY[0x1E69695A8], &qword_1EB386AB8, &qword_1A95884D8);
      goto LABEL_12;
    }

    sub_1A93A506C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
  v16 = sub_1A957C058();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1A93A7604(&qword_1EB386AB0, MEMORY[0x1E69695A8]);
      v24 = sub_1A957C098();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

uint64_t sub_1A93A4B6C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A93A4548(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1A93A4E34(MEMORY[0x1E6969610], &qword_1EB386AA0, &qword_1A95885C0);
      goto LABEL_12;
    }

    sub_1A93A5388(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
  v16 = sub_1A957C058();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610]);
      v24 = sub_1A957C098();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A93A4E34(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  sub_1A937829C(a2, a3);
  v13 = *v3;
  v14 = sub_1A957CE98();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v6;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v8 + 32;
    for (i = v8 + 16; v22; result = (*(v8 + 32))(*(v15 + 48) + v27, v12, v7))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v8 + 72) * (v24 | (v19 << 6));
      (*(v8 + 16))(v12, *(v13 + 48) + v27, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v15;
  }

  return result;
}

uint64_t sub_1A93A506C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1A957B0B8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386AB8, &qword_1A95884D8);
  v11 = sub_1A957CEA8();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
      result = sub_1A957C058();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1A93A5388(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1A957B188();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  v11 = sub_1A957CEA8();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
      result = sub_1A957C058();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1A93A5704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A93A5764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A93A5804(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1A93A5A58((v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1A93A59C8(v13, v6, a2, a1);

    MEMORY[0x1AC587CD0](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void *sub_1A93A59C8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_1A93A5A58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A93A5A58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a2;
  v73 = a1;
  v6 = sub_1A957B188();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v82 = (v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = v68 - v14;
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v83 = (v68 - v18);
  result = MEMORY[0x1EEE9AC00](v17, v19);
  v72 = v68 - v21;
  v22 = *(a3 + 16);
  v23 = *(a4 + 16);
  v84 = v7 + 16;
  v80 = a4;
  v81 = a3;
  v76 = v7;
  if (v23 >= v22)
  {
    v48 = 0;
    v49 = *(a3 + 56);
    v71 = a3 + 56;
    v50 = 1 << *(a3 + 32);
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v52 = v51 & v49;
    v53 = (v50 + 63) >> 6;
    v79 = a4 + 56;
    v83 = (v7 + 8);
    j = v53;
    v75 = 0;
    if (v52)
    {
      goto LABEL_30;
    }

LABEL_31:
    v55 = v48;
    while (1)
    {
      v48 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v48 >= v53)
      {
LABEL_44:

        return sub_1A93A6140(v73, v69, v75, a3);
      }

      v56 = *(v71 + 8 * v48);
      ++v55;
      if (v56)
      {
        v54 = __clz(__rbit64(v56));
        for (i = ((v56 - 1) & v56); ; i = ((v52 - 1) & v52))
        {
          v57 = v54 | (v48 << 6);
          v58 = *(a3 + 48);
          v59 = *(v7 + 72);
          v77 = v57;
          v60 = *(v7 + 16);
          v60(v82, v58 + v59 * v57, v6);
          v61 = *(a4 + 40);
          sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
          v62 = sub_1A957C058();
          v63 = -1 << *(a4 + 32);
          v64 = v62 & ~v63;
          if ((*(v79 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
          {
            v72 = (v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v65 = ~v63;
            while (1)
            {
              v60(v15, *(v80 + 48) + v64 * v59, v6);
              sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610]);
              v66 = sub_1A957C098();
              v67 = *v83;
              (*v83)(v15, v6);
              if (v66)
              {
                break;
              }

              v64 = (v64 + 1) & v65;
              if (((*(v79 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
              {
                a4 = v80;
                goto LABEL_42;
              }
            }

            result = (v67)(v82, v6);
            v7 = v76;
            *(v73 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v77;
            v53 = j;
            v32 = __OFADD__(v75++, 1);
            a4 = v80;
            a3 = v81;
            v52 = i;
            if (v32)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v67 = *v83;
LABEL_42:
            result = (v67)(v82, v6);
            a3 = v81;
            v7 = v76;
            v53 = j;
            v52 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v54 = __clz(__rbit64(v52));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v75 = 0;
    v24 = a4;
    v25 = 0;
    v27 = v24 + 56;
    v26 = *(v24 + 56);
    v68[0] = v27;
    v28 = 1 << *(v27 - 24);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & v26;
    v31 = (v28 + 63) >> 6;
    v70 = v7 + 32;
    v71 = v31;
    v77 = a3 + 56;
    v82 = (v7 + 8);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_10:
    v34 = v25;
    while (1)
    {
      v25 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v25 >= v31)
      {
        goto LABEL_44;
      }

      v35 = *(v68[0] + 8 * v25);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        for (j = (v35 - 1) & v35; ; j = (v30 - 1) & v30)
        {
          v36 = *(v7 + 72);
          v37 = *(v80 + 48) + v36 * (v33 | (v25 << 6));
          v38 = v72;
          i = *(v7 + 16);
          v79 = v36;
          i(v72, v37, v6);
          (*(v7 + 32))(v83, v38, v6);
          v39 = *(a3 + 40);
          sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
          v40 = sub_1A957C058();
          v41 = -1 << *(a3 + 32);
          v42 = v40 & ~v41;
          v43 = v42 >> 6;
          v44 = 1 << v42;
          if (((1 << v42) & *(v77 + 8 * (v42 >> 6))) != 0)
          {
            v68[1] = v82 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v45 = ~v41;
            while (1)
            {
              i(v15, *(v81 + 48) + v42 * v79, v6);
              sub_1A93A7604(&qword_1EB386490, MEMORY[0x1E6969610]);
              v46 = sub_1A957C098();
              v47 = *v82;
              (*v82)(v15, v6);
              if (v46)
              {
                break;
              }

              v42 = (v42 + 1) & v45;
              v43 = v42 >> 6;
              v44 = 1 << v42;
              if (((1 << v42) & *(v77 + 8 * (v42 >> 6))) == 0)
              {
                a3 = v81;
                goto LABEL_21;
              }
            }

            result = (v47)(v83, v6);
            v30 = j;
            v73[v43] |= v44;
            v7 = v76;
            v32 = __OFADD__(v75++, 1);
            a3 = v81;
            v31 = v71;
            if (v32)
            {
              goto LABEL_48;
            }

            if (!v30)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v47 = *v82;
LABEL_21:
            result = (v47)(v83, v6);
            v7 = v76;
            v31 = v71;
            v30 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v33 = __clz(__rbit64(v30));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1A93A6140(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = sub_1A957B188();
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v38, v10);
  v37 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  result = sub_1A957CEB8();
  v12 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 56;
  v33 = (v8 + 32);
  v34 = v8 + 16;
  v32 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = *(a4 + 48);
    v36 = *(v8 + 72);
    (*(v8 + 16))(v37, v20 + v36 * (v17 | (v15 << 6)), v38);
    v21 = *(v12 + 40);
    sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610]);
    result = sub_1A957C058();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    result = (*v33)(*(v12 + 48) + v25 * v36, v37, v38);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v32;
    v14 = v35;
    if (!a3)
    {
LABEL_28:

      return v12;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      goto LABEL_28;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A93A6468(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_1A957B308();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = (&v38 - v15);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - v18;
  v20 = sub_1A937829C(&qword_1EB386A98, &unk_1A95884C0);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v25 = &v38 - v24;
  v26 = (&v38 + *(v23 + 56) - v24);
  sub_1A93A5764(v39, &v38 - v24, type metadata accessor for SpeechSlicer.VoiceQuery);
  sub_1A93A5764(v40, v26, type metadata accessor for SpeechSlicer.VoiceQuery);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33 = v38;
    sub_1A93A5764(v25, v19, type metadata accessor for SpeechSlicer.VoiceQuery);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v33 + 8))(v19, v2);
LABEL_16:
      sub_1A937B960(v25, &qword_1EB386A98, &unk_1A95884C0);
      goto LABEL_17;
    }

    (*(v33 + 32))(v6, v26, v2);
    v34 = MEMORY[0x1AC5840A0](v19, v6);
    v35 = *(v33 + 8);
    v35(v6, v2);
    v35(v19, v2);
LABEL_19:
    sub_1A93A5704(v25, type metadata accessor for SpeechSlicer.VoiceQuery);
    return v34 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A93A5764(v25, v12, type metadata accessor for SpeechSlicer.VoiceQuery);
    memcpy(v44, v12, 0x118uLL);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A937B48C(v44);
      goto LABEL_16;
    }

    memcpy(v43, v26, sizeof(v43));
    memcpy(v42, v12, sizeof(v42));
    memcpy(v41, v26, sizeof(v41));
    v34 = static CoreSynthesizer.Voice.== infix(_:_:)(v42, v41);
    sub_1A937B48C(v43);
    sub_1A937B48C(v44);
    goto LABEL_19;
  }

  sub_1A93A5764(v25, v16, type metadata accessor for SpeechSlicer.VoiceQuery);
  v29 = *v16;
  v28 = v16[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_16;
  }

  if (v29 == *v26 && v28 == v26[1])
  {
    v36 = v26[1];

    goto LABEL_21;
  }

  v31 = v26[1];
  v32 = sub_1A957D3E8();

  if (v32)
  {
LABEL_21:
    sub_1A93A5704(v25, type metadata accessor for SpeechSlicer.VoiceQuery);
    v34 = 1;
    return v34 & 1;
  }

  sub_1A93A5704(v25, type metadata accessor for SpeechSlicer.VoiceQuery);
LABEL_17:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s12TextToSpeech0C6SlicerV5SliceV0E4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B8C8();
  v84 = *(v4 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1A937829C(&qword_1EB386AC0, &qword_1A95884E0);
  v8 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83, v9);
  v85 = &v79 - v10;
  v11 = sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v82 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v86 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v88 = &v79 - v20;
  v89 = sub_1A957B308();
  v91 = *(v89 - 8);
  v21 = v91[8];
  v23 = MEMORY[0x1EEE9AC00](v89, v22);
  v87 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v90 = &v79 - v26;
  v27 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v79 - v34;
  v36 = sub_1A937829C(&qword_1EB386AC8, &qword_1A95884E8);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v41 = &v79 - v40;
  v42 = (&v79 + *(v39 + 56) - v40);
  sub_1A93A5764(a1, &v79 - v40, type metadata accessor for SpeechSlicer.Slice.SliceType);
  sub_1A93A5764(a2, v42, type metadata accessor for SpeechSlicer.Slice.SliceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A93A5764(v41, v32, type metadata accessor for SpeechSlicer.Slice.SliceType);
    v44 = *v32;
    v43 = v32[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v44 == *v42 && v43 == v42[1])
      {
        v69 = v42[1];
      }

      else
      {
        v46 = v42[1];
        v47 = sub_1A957D3E8();

        if ((v47 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_19:
      sub_1A93A5704(v41, type metadata accessor for SpeechSlicer.Slice.SliceType);
      return 1;
    }
  }

  else
  {
    sub_1A93A5764(v41, v35, type metadata accessor for SpeechSlicer.Slice.SliceType);
    memcpy(v95, v35, 0x118uLL);
    v48 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v49 = *(v48 + 48);
    v50 = *(v48 + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v80 = v4;
      memcpy(v94, v42, sizeof(v94));
      v51 = v91[4];
      v52 = v89;
      v51(v90, &v35[v49], v89);
      v53 = &v35[v50];
      v54 = v88;
      sub_1A93A7460(v53, v88, &qword_1EB386A18, &qword_1A9587E40);
      v55 = v42 + v49;
      v56 = v87;
      v51(v87, v55, v52);
      v57 = v42 + v50;
      v58 = v86;
      sub_1A93A7460(v57, v86, &qword_1EB386A18, &qword_1A9587E40);
      memcpy(v93, v95, sizeof(v93));
      memcpy(v92, v94, sizeof(v92));
      if (static CoreSynthesizer.Voice.== infix(_:_:)(v93, v92))
      {
        v59 = v90;
        if (MEMORY[0x1AC5840A0](v90, v56))
        {
          v60 = *(v83 + 48);
          v61 = v85;
          sub_1A9391BAC(v54, v85, &qword_1EB386A18, &qword_1A9587E40);
          sub_1A9391BAC(v58, v61 + v60, &qword_1EB386A18, &qword_1A9587E40);
          v62 = v84;
          v63 = v58;
          v64 = *(v84 + 48);
          v65 = v80;
          if (v64(v61, 1, v80) == 1)
          {
            sub_1A937B48C(v94);
            sub_1A937B48C(v95);
            sub_1A937B960(v63, &qword_1EB386A18, &qword_1A9587E40);
            v66 = v52;
            v67 = v91[1];
            v67(v87, v66);
            sub_1A937B960(v88, &qword_1EB386A18, &qword_1A9587E40);
            v68 = v66;
            v61 = v85;
            v67(v90, v68);
            if (v64(v61 + v60, 1, v65) == 1)
            {
              sub_1A937B960(v61, &qword_1EB386A18, &qword_1A9587E40);
              goto LABEL_19;
            }
          }

          else
          {
            v73 = v82;
            sub_1A9391BAC(v61, v82, &qword_1EB386A18, &qword_1A9587E40);
            if (v64(v61 + v60, 1, v65) != 1)
            {
              v75 = v61 + v60;
              v76 = v81;
              (*(v62 + 32))(v81, v75, v65);
              sub_1A93A7604(&qword_1EB386AD0, MEMORY[0x1E6988218]);
              LODWORD(v83) = sub_1A957C098();
              sub_1A937B48C(v94);
              sub_1A937B48C(v95);
              v77 = *(v62 + 8);
              v77(v76, v65);
              sub_1A937B960(v86, &qword_1EB386A18, &qword_1A9587E40);
              v78 = v91[1];
              v78(v87, v52);
              sub_1A937B960(v88, &qword_1EB386A18, &qword_1A9587E40);
              v78(v90, v52);
              v77(v82, v65);
              sub_1A937B960(v61, &qword_1EB386A18, &qword_1A9587E40);
              if ((v83 & 1) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_19;
            }

            sub_1A937B48C(v94);
            sub_1A937B48C(v95);
            sub_1A937B960(v86, &qword_1EB386A18, &qword_1A9587E40);
            v74 = v91[1];
            v74(v87, v52);
            sub_1A937B960(v88, &qword_1EB386A18, &qword_1A9587E40);
            v74(v90, v52);
            (*(v62 + 8))(v73, v65);
          }

          sub_1A937B960(v61, &qword_1EB386AC0, &qword_1A95884E0);
        }

        else
        {
          sub_1A937B48C(v94);
          sub_1A937B48C(v95);
          sub_1A937B960(v58, &qword_1EB386A18, &qword_1A9587E40);
          v72 = v91[1];
          v72(v56, v52);
          sub_1A937B960(v54, &qword_1EB386A18, &qword_1A9587E40);
          v72(v59, v52);
        }
      }

      else
      {
        sub_1A937B48C(v94);
        sub_1A937B48C(v95);
        sub_1A937B960(v58, &qword_1EB386A18, &qword_1A9587E40);
        v71 = v91[1];
        v71(v56, v52);
        sub_1A937B960(v54, &qword_1EB386A18, &qword_1A9587E40);
        v71(v90, v52);
      }

LABEL_25:
      sub_1A93A5704(v41, type metadata accessor for SpeechSlicer.Slice.SliceType);
      return 0;
    }

    sub_1A937B48C(v95);
    sub_1A937B960(&v35[v50], &qword_1EB386A18, &qword_1A9587E40);
    (v91[1])(&v35[v49], v89);
  }

  sub_1A937B960(v41, &qword_1EB386AC8, &qword_1A95884E8);
  return 0;
}

uint64_t sub_1A93A72C4(uint64_t a1)
{
  v2 = sub_1A957B0B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1AC585770](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_1A93A3C2C(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t sub_1A93A7460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A93A74C8()
{
  result = qword_1EB392408[0];
  if (!qword_1EB392408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB392408);
  }

  return result;
}

uint64_t sub_1A93A754C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93A7604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A93A7654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1A93A769C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A93A7740(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1A93A7758(uint64_t a1, uint64_t a2)
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

uint64_t sub_1A93A7774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A93A77BC(uint64_t result, int a2, int a3)
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

__n128 sub_1A93A7818(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A93A7824(uint64_t a1, int a2)
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

uint64_t sub_1A93A7844(uint64_t result, int a2, int a3)
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

uint64_t sub_1A93A7888()
{
  result = sub_1A957B308();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A93A7924()
{
  result = sub_1A93A79B8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SpeechSlicer.Slice.SliceType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A93A79B8()
{
  result = qword_1EB386A80;
  if (!qword_1EB386A80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB386A80);
  }

  return result;
}

void sub_1A93A7A6C()
{
  sub_1A93A7AE0();
  if (v0 <= 0x3F)
  {
    sub_1A93A7BB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A93A7AE0()
{
  if (!qword_1EB386A88)
  {
    sub_1A957B308();
    sub_1A93A7B68(&qword_1EB386A18, &qword_1A9587E40);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB386A88);
    }
  }
}

uint64_t sub_1A93A7B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A93A7BB0()
{
  result = qword_1EB386A90;
  if (!qword_1EB386A90)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB386A90);
  }

  return result;
}

unint64_t sub_1A93A7C04()
{
  result = qword_1EB3925C0[0];
  if (!qword_1EB3925C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3925C0);
  }

  return result;
}

unint64_t sub_1A93A7C5C()
{
  result = qword_1EB3926D0[0];
  if (!qword_1EB3926D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3926D0);
  }

  return result;
}

unint64_t sub_1A93A7CB0(uint64_t a1)
{
  result = sub_1A93A7CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A93A7CD8()
{
  result = qword_1EB3927E0[0];
  if (!qword_1EB3927E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3927E0);
  }

  return result;
}

unint64_t sub_1A93A7D2C(uint64_t a1)
{
  result = sub_1A93A7D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A93A7D54()
{
  result = qword_1EB392870;
  if (!qword_1EB392870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB392870);
  }

  return result;
}

uint64_t sub_1A93A7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1A93ACC6C(a2);
  sub_1A937829C(&qword_1EB386B08, &qword_1A9588588);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_1A93A7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1A9381740(a2);
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

unint64_t *sub_1A93A7EF0()
{
  if (qword_1EB38EE78 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7B38;
}

uint64_t Locale.LanguageCode.macroLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED970400 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED970408;
  v3 = sub_1A957B148();
  if (*(v2 + 16))
  {
    v5 = sub_1A937A490(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v2 + 56) + 16 * v5);
      v9 = *v8;
      v10 = v8[1];

      sub_1A957B198();
      v11 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = 1;
LABEL_8:
  v12 = sub_1A957B188();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

uint64_t Locale.LanguageCode.isMacroLanguage.getter()
{
  if (qword_1ED970400 != -1)
  {
    swift_once();
  }

  v1 = sub_1A93A80E8(v0);
  v2 = sub_1A957B148();
  v4 = sub_1A93A8204(v2, v3, v1);

  return v4 & 1;
}

uint64_t sub_1A93A80E8(uint64_t a1)
{
  result = MEMORY[0x1AC585770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A93AB260(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93A8204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  v7 = sub_1A957D548();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1A957D3E8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t Locale.LanguageCode.childLanguages.getter()
{
  v1 = sub_1A957B188();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED970400 != -1)
  {
    v5 = swift_once();
  }

  v9 = qword_1ED970408;
  MEMORY[0x1EEE9AC00](v5, v6);
  v20[-2] = v0;

  v10 = sub_1A93A8548(sub_1A93AAEE0, &v20[-4], v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v20[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB24(0, v11, 0);
    v12 = v20[0];
    v13 = (v10 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_1A957B198();
      v20[0] = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A93ABB24(v16 > 1, v17 + 1, 1);
        v12 = v20[0];
      }

      *(v12 + 16) = v17 + 1;
      (*(v2 + 32))(v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17, v8, v1);
      v13 += 2;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1A93ACF58(v12);

  return v18;
}

uint64_t sub_1A93A8548(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
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
  v10 = MEMORY[0x1E69E7CC0];
  v21 = a3;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v10;
    }

    v8 = *(v5 + 8 * v12);
    ++v4;
    if (v8)
    {
      v11 = v10;
      v4 = v12;
      while (1)
      {
        v13 = a3;
        v14 = (*(a3 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
        v16 = *v14;
        v15 = v14[1];
        v23[0] = *v14;
        v23[1] = v15;

        v17 = v22(v23);
        if (v3)
        {
          break;
        }

        v8 &= v8 - 1;
        v10 = v11;
        if (v17)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v24 = v11;
          if ((result & 1) == 0)
          {
            result = sub_1A93ABB68(0, *(v11 + 16) + 1, 1);
            v10 = v24;
          }

          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          v3 = 0;
          if (v19 >= v18 >> 1)
          {
            result = sub_1A93ABB68((v18 > 1), v19 + 1, 1);
            v3 = 0;
            v10 = v24;
          }

          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v15;
          a3 = v21;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          a3 = v13;
          v3 = 0;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }

      v10 = v11;

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93A8724(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_1A957B0E8();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v35, v6);
  v34 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A957B308();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v33, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v30[1] = v2;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v13, 0);
    v14 = v39;
    v31 = (v8 + 8);
    v32 = (v4 + 16);
    v15 = (a1 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;

      v18 = sub_1A957B0C8();
      v19 = sub_1A957B278();
      v21 = v20;
      v22 = sub_1A957B188();
      if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
      {

        sub_1A957B158();
      }

      v19(v37, 0);
      v18(v38, 0);
      (*v32)(v34, v36, v35);
      sub_1A957B0F8();
      v23 = sub_1A957B118();
      v25 = v24;
      (*v31)(v12, v33);

      v39 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A93ABB68((v26 > 1), v27 + 1, 1);
        v14 = v39;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  return v14;
}

uint64_t sub_1A93A8A18(uint64_t a1)
{
  v41 = sub_1A957B308();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v41, v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v34[1] = v1;
  v43 = MEMORY[0x1E69E7CC0];
  v36 = v6;
  sub_1A93ABB88(0, v9, 0);
  v10 = v43;
  v11 = v36 + 56;
  v12 = -1 << *(v36 + 32);
  result = sub_1A957CE18();
  v14 = result;
  v15 = v36;
  v16 = 0;
  v39 = v3 + 32;
  v40 = v3;
  v35 = v36 + 64;
  v37 = v9;
  v38 = v11;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v15 + 32))
  {
    v19 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    v42 = *(v15 + 36);
    v20 = (*(v15 + 48) + 16 * v14);
    v21 = *v20;
    v22 = v20[1];
    v23 = v15;

    sub_1A957B1B8();
    v43 = v10;
    v24 = v8;
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1A93ABB88(v25 > 1, v26 + 1, 1);
      v10 = v43;
    }

    *(v10 + 16) = v26 + 1;
    result = (*(v40 + 32))(v10 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26, v24, v41);
    v17 = 1 << *(v23 + 32);
    if (v14 >= v17)
    {
      goto LABEL_23;
    }

    v15 = v23;
    v11 = v38;
    v27 = *(v38 + 8 * v19);
    if ((v27 & (1 << v14)) == 0)
    {
      goto LABEL_24;
    }

    if (v42 != *(v15 + 36))
    {
      goto LABEL_25;
    }

    v8 = v24;
    v28 = v27 & (-2 << (v14 & 0x3F));
    if (v28)
    {
      v17 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v18 = v37;
    }

    else
    {
      v29 = v19 << 6;
      v30 = v19 + 1;
      v31 = (v35 + 8 * v19);
      v18 = v37;
      while (v30 < (v17 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_1A932D0A4(v14, v42, 0);
          v15 = v36;
          v17 = __clz(__rbit64(v32)) + v29;
          goto LABEL_19;
        }
      }

      result = sub_1A932D0A4(v14, v42, 0);
      v15 = v36;
LABEL_19:
      v8 = v24;
    }

    ++v16;
    v14 = v17;
    if (v16 == v18)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1A93A8D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v79 = a2;
  v74 = sub_1A937829C(&qword_1EB386AE8, &unk_1A9588510);
  v3 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74, v4);
  v76 = &v66 - v5;
  v6 = sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v73 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v66 - v16;
  v18 = sub_1A957B188();
  v77 = *(v18 - 8);
  v78 = v18;
  v19 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A957B218();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v66 - v31;
  v33 = type metadata accessor for TTSMacroLanguageDisambiguationMapping();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A93AD140(v2, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v68 = v29;
    v71 = v11;
    v41 = *(sub_1A937829C(&qword_1EB386AF8, &unk_1A9588520) + 48);
    v67 = *(v24 + 32);
    v67(v32, v37, v23);
    v42 = *(v77 + 32);
    v72 = v22;
    v69 = v42;
    v70 = v77 + 32;
    v42(v22, &v37[v41], v78);
    (*(v24 + 16))(v17, v32, v23);
    (*(v24 + 56))(v17, 0, 1, v23);
    v43 = v73;
    sub_1A957B2C8();
    v44 = *(v74 + 48);
    v45 = v76;
    sub_1A9391BAC(v17, v76, &qword_1EB386AF0, &unk_1A958C740);
    v75 = v44;
    sub_1A9391BAC(v43, v45 + v44, &qword_1EB386AF0, &unk_1A958C740);
    v46 = *(v24 + 48);
    if (v46(v45, 1, v23) == 1)
    {
      sub_1A937B960(v43, &qword_1EB386AF0, &unk_1A958C740);
      sub_1A937B960(v17, &qword_1EB386AF0, &unk_1A958C740);
      (*(v24 + 8))(v32, v23);
      v47 = v76;
      v48 = v46(v76 + v75, 1, v23) == 1;
      v49 = v79;
      v50 = v47;
      v51 = v72;
      if (!v48)
      {
        goto LABEL_11;
      }

      sub_1A937B960(v47, &qword_1EB386AF0, &unk_1A958C740);
    }

    else
    {
      v55 = v76;
      v56 = v71;
      sub_1A9391BAC(v76, v71, &qword_1EB386AF0, &unk_1A958C740);
      v57 = v55 + v75;
      v58 = v75;
      if (v46(v57, 1, v23) == 1)
      {
        sub_1A937B960(v43, &qword_1EB386AF0, &unk_1A958C740);
        sub_1A937B960(v17, &qword_1EB386AF0, &unk_1A958C740);
        v59 = *(v24 + 8);
        v59(v32, v23);
        v59(v56, v23);
        v49 = v79;
        v50 = v76;
        v51 = v72;
LABEL_11:
        sub_1A937B960(v50, &qword_1EB386AE8, &unk_1A9588510);
LABEL_12:
        v61 = v77;
        v60 = v78;
        (*(v77 + 8))(v51, v78);
        return (*(v61 + 56))(v49, 1, 1, v60);
      }

      v62 = v76;
      v63 = v68;
      v67(v68, (v76 + v58), v23);
      sub_1A93AD42C(&qword_1EB386230, MEMORY[0x1E6969680]);
      LODWORD(v75) = sub_1A957C098();
      v64 = *(v24 + 8);
      v64(v63, v23);
      sub_1A937B960(v43, &qword_1EB386AF0, &unk_1A958C740);
      sub_1A937B960(v17, &qword_1EB386AF0, &unk_1A958C740);
      v64(v32, v23);
      v64(v56, v23);
      sub_1A937B960(v62, &qword_1EB386AF0, &unk_1A958C740);
      v49 = v79;
      v51 = v72;
      if ((v75 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v65 = v78;
    v69(v49, v51, v78);
    return (*(v77 + 56))(v49, 0, 1, v65);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v39 = *(v37 + 1);
    (*v37)(v75);
  }

  else
  {
    v53 = v77;
    v52 = v78;
    v54 = v79;
    (*(v77 + 32))(v79, v37, v78);
    return (*(v53 + 56))(v54, 0, 1, v52);
  }
}

uint64_t sub_1A93A9458()
{
  sub_1A937829C(&qword_1EB386B28, &qword_1A95885A8);
  v0 = (sub_1A937829C(&qword_1EB386B30, &unk_1A95885B0) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A9587160;
  v4 = v0[14];
  sub_1A957B178();
  sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
  v5 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A9588500;
  v9 = sub_1A937829C(&qword_1EB386AF8, &unk_1A9588520);
  v10 = *(v9 + 48);
  sub_1A957B208();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  v11 = *(v9 + 48);
  sub_1A957B208();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  *(v3 + v2 + v4) = v8;
  v12 = sub_1A93ACD70(v3);
  swift_setDeallocating();
  sub_1A937B960(v3 + v2, &qword_1EB386B30, &unk_1A95885B0);
  result = swift_deallocClassInstance();
  qword_1EB3A7850 = v12;
  return result;
}

uint64_t Locale.legacyIdentifier.getter()
{
  v1 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v2 = *(*(v1 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v34 - v8;
  v10 = sub_1A957B2E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A957B188();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v35 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v34 - v23;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v11 + 8))(v15, v10);
  v25 = *(v17 + 48);
  if (v25(v9, 1, v16) == 1)
  {
    v6 = v9;
LABEL_5:
    sub_1A937B960(v6, &qword_1EB386A68, &qword_1A9587F40);
    return sub_1A957B1A8();
  }

  v34 = v0;
  v26 = *(v17 + 32);
  v26(v24, v9, v16);
  Locale.LanguageCode.macroLanguage.getter(v6);
  if (v25(v6, 1, v16) == 1)
  {
    (*(v17 + 8))(v24, v16);
    goto LABEL_5;
  }

  v28 = v35;
  v26(v35, v6, v16);
  v40 = sub_1A957B1A8();
  v41 = v29;
  v38 = sub_1A957B148();
  v39 = v30;
  v36 = sub_1A957B148();
  v37 = v31;
  sub_1A93820F4();
  v32 = sub_1A957CD08();

  v33 = *(v17 + 8);
  v33(v28, v16);
  v33(v24, v16);
  return v32;
}

uint64_t Locale.withTTSLanguageDisambiguation(overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v87 = a2;
  v3 = sub_1A957B0E8();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v82 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v81 = &v74 - v9;
  v10 = type metadata accessor for TTSMacroLanguageDisambiguationMapping();
  v91 = *(v10 - 8);
  v11 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v86 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v80 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v74 - v24;
  v26 = sub_1A957B2E8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v74 - v34;
  v36 = sub_1A957B188();
  v37 = *(v36 - 8);
  v38 = v37[8];
  v40 = MEMORY[0x1EEE9AC00](v36, v39);
  v79 = &v74 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v74 - v43;
  v92 = v2;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v89 = *(v27 + 8);
  v90 = v26;
  v89(v35, v26);
  v88 = v37[6];
  if (v88(v25, 1, v36) == 1)
  {
    sub_1A937B960(v25, &qword_1EB386A68, &qword_1A9587F40);
LABEL_10:
    v55 = v87;
    v56 = sub_1A957B308();
    return (*(*(v56 - 8) + 16))(v55, v92, v56);
  }

  else
  {
    v78 = v37;
    v76 = v37[4];
    v77 = v37 + 4;
    v76(v44, v25, v36);
    if (qword_1ED970400 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {

      v46 = sub_1A93A80E8(v45);
      v47 = sub_1A957B148();
      v49 = sub_1A93A8204(v47, v48, v46);

      v50 = v86;
      if ((v49 & 1) == 0)
      {
        (v78[1])(v44, v36);
        goto LABEL_10;
      }

      v51 = v85;
      if (v85 && *(v85 + 16) && (v52 = sub_1A93AB008(v44), (v53 & 1) != 0))
      {
        v54 = *(*(v51 + 56) + 8 * v52);
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      if (qword_1EB3892C0 != -1)
      {
        swift_once();
      }

      v58 = qword_1EB3A7850;
      v59 = *(qword_1EB3A7850 + 16);
      v75 = v44;
      if (v59)
      {
        v60 = sub_1A93AB008(v44);
        if (v61)
        {
          v62 = *(*(v58 + 56) + 8 * v60);
          v93[0] = v54;

          sub_1A93ABEB4(v63);
          v54 = v93[0];
        }
      }

      v64 = *(v54 + 16);
      if (!v64)
      {
        break;
      }

      v44 = 0;
      while (v44 < *(v54 + 16))
      {
        sub_1A93AD140(v54 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v44, v50);
        sub_1A957B2F8();
        sub_1A93A8D34(v32, v22);
        sub_1A93AD1A4(v50);
        v89(v32, v90);
        if (v88(v22, 1, v36) != 1)
        {

          v66 = v79;
          v76(v79, v22, v36);
          sub_1A957B118();
          v67 = v81;
          sub_1A957B0D8();
          v68 = v78;
          v69 = v80;
          (v78[2])(v80, v66, v36);
          (v68[7])(v69, 0, 1, v36);
          v70 = sub_1A957B0C8();
          sub_1A957B298();
          v70(v93, 0);
          v71 = v83;
          v72 = v84;
          (*(v83 + 16))(v82, v67, v84);
          sub_1A957B0F8();
          (*(v71 + 8))(v67, v72);
          v73 = v68[1];
          v73(v66, v36);
          return (v73)(v75, v36);
        }

        ++v44;
        sub_1A937B960(v22, &qword_1EB386A68, &qword_1A9587F40);
        if (v64 == v44)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

LABEL_22:

    (v78[1])(v75, v36);
    v65 = sub_1A957B308();
    return (*(*(v65 - 8) + 16))(v87, v92, v65);
  }
}

uint64_t Array<A>.toAXPrimaryLocales.getter(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v24 = MEMORY[0x1E69E7CC0];
  v9 = *(a1 + 16);
  if (!v9)
  {
    v12 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v10 = (a1 + 40);
  do
  {
    v11 = *v10;
    v23[0] = *(v10 - 1);
    v23[1] = v11;
    sub_1A93AA410(&v24, v23, &v22);

    v12 = v22;
    v24 = v22;
    v10 += 2;
    --v9;
  }

  while (v9);
  v13 = *(v22 + 16);
  if (!v13)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23[0] = v8;
  sub_1A93ABB88(0, v13, 0);
  v14 = v23[0];
  v15 = (v12 + 40);
  do
  {
    v16 = *(v15 - 1);
    v17 = *v15;

    sub_1A957B1B8();
    v23[0] = v14;
    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1A93ABB88(v18 > 1, v19 + 1, 1);
      v14 = v23[0];
    }

    *(v14 + 16) = v19 + 1;
    (*(v3 + 32))(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19, v7, v2);
    v15 += 2;
    --v13;
  }

  while (v13);

  return v14;
}

uint64_t sub_1A93AA410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v44 = a3;
  v5 = sub_1A957B2A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v40 - v14;
  v16 = sub_1A957B0E8();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v22 = *a2;
  v21 = a2[1];
  if (qword_1ED970AF0 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED970AF8[0];
  if (*(qword_1ED970AF8[0] + 16))
  {
    v24 = sub_1A937A490(v22, v21);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      v45 = v43;

      result = sub_1A93ABFE0(v26);
      *v44 = v45;
      return result;
    }
  }

  sub_1A957B0D8();

  sub_1A957B268();
  sub_1A957B288();
  (*(v6 + 8))(v10, v5);
  v28 = sub_1A957B188();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    sub_1A937B960(v15, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    v30 = sub_1A957B148();
    v32 = v31;
    (*(v29 + 8))(v15, v28);
    if (*(v23 + 16))
    {
      v33 = sub_1A937A490(v30, v32);
      v35 = v34;

      if (v35)
      {
        v36 = *(*(v23 + 56) + 8 * v33);

        v38 = sub_1A93A8724(v37, v20);

        v45 = v43;

        sub_1A93ABFE0(v38);
        *v44 = v45;
        return (*(v41 + 8))(v20, v42);
      }
    }

    else
    {
    }
  }

  sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = v22;
  *(inited + 40) = v21;
  v45 = v43;

  sub_1A93ABFE0(inited);
  *v44 = v45;
  return (*(v41 + 8))(v20, v42);
}

uint64_t Array<A>.toAXSecondaryLocales.getter(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CC0];
  v36 = *(a1 + 16);
  if (v36)
  {
    v9 = 0;
    v34 = a1 + 32;
    v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v10 = (v34 + 16 * v9);
      v12 = *v10;
      v11 = v10[1];
      v13 = qword_1ED970AE0;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_1ED970AE8;
      if (*(qword_1ED970AE8 + 16))
      {
        break;
      }

      v18 = MEMORY[0x1E69E7CC0];
      v19 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v19)
      {
        goto LABEL_12;
      }

LABEL_3:
      ++v9;

      v7 = v35;
      if (v9 == v36)
      {
        goto LABEL_19;
      }
    }

    v15 = sub_1A937A490(v12, v11);
    v17 = v16;

    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      v18 = *(*(v14 + 56) + 8 * v15);
    }

    v19 = *(v18 + 16);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A93AC2AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v20 = (v18 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v8 + 2);
      v23 = *(v8 + 3);

      if (v24 >= v23 >> 1)
      {
        v8 = sub_1A93AC2AC((v23 > 1), v24 + 1, 1, v8);
      }

      *(v8 + 2) = v24 + 1;
      v25 = &v8[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      v20 += 2;
      --v19;
    }

    while (v19);
    goto LABEL_3;
  }

LABEL_19:
  v26 = *(v8 + 2);
  if (v26)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v26, 0);
    v27 = v39;
    v28 = (v8 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;

      sub_1A957B1B8();
      v39 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1A93ABB88(v31 > 1, v32 + 1, 1);
        v27 = v39;
      }

      *(v27 + 16) = v32 + 1;
      (*(v38 + 32))(v27 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v7, v37);
      v28 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v27;
}

id TTSAXResource.primaryLocales.getter()
{
  result = [v0 languages];
  if (result)
  {
    v2 = result;
    v3 = sub_1A957C4C8();

    v4 = Array<A>.toAXPrimaryLocales.getter(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTSAXResource.secondaryLocales.getter()
{
  v1 = [v0 synthesisProviderVoice];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 supportedLanguages];

    v4 = sub_1A957C4C8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A93AD200(v4);

  v6 = [v0 synthesisProviderVoice];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 primaryLanguages];

    v9 = sub_1A957C4C8();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A93AC3B8(v9, v5);

  v36 = v10;
  v11 = [v0 synthesisProviderVoice];
  if (!v11 || (v12 = v11, v13 = [v11 isFirstParty], v12, (v13 & 1) == 0))
  {

LABEL_31:
    sub_1A93A8A18(v10);

    return;
  }

  v14 = 0;
  v15 = v5 + 56;
  v16 = 1 << *(v5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v5 + 56);
  v19 = (v16 + 63) >> 6;
  v34 = v5;
  while (v18)
  {
LABEL_18:
    v21 = (*(v5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v18)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = qword_1ED970AE0;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED970AE8;
    if (!*(qword_1ED970AE8 + 16))
    {

      v29 = MEMORY[0x1E69E7CC0];
      v30 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v30)
      {
        goto LABEL_12;
      }

LABEL_26:
      v31 = (v29 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;

        sub_1A93AB260(&v35, v32, v33);

        v31 += 2;
        --v30;
      }

      while (v30);
      goto LABEL_12;
    }

    v26 = sub_1A937A490(v23, v22);
    v28 = v27;

    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v26);
    }

    v30 = *(v29 + 16);
    if (v30)
    {
      goto LABEL_26;
    }

LABEL_12:
    v18 &= v18 - 1;

    v5 = v34;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v10 = v36;
      goto LABEL_31;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1A93AAEE0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[1];
  if (qword_1ED970400 != -1)
  {
    v17 = v4;
    v18 = a1[1];
    swift_once();
    v5 = v18;
    v4 = v17;
  }

  v6 = qword_1ED970408;
  if (!*(qword_1ED970408 + 16) || (v7 = sub_1A937A490(v4, v5), (v8 & 1) == 0))
  {
    sub_1A957B148();
    goto LABEL_12;
  }

  v9 = (*(v6 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];

  v13 = sub_1A957B148();
  if (!v10)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  if (v11 == v13 && v10 == v12)
  {

    v15 = 1;
  }

  else
  {
    v15 = sub_1A957D3E8();
  }

LABEL_13:

  return v15 & 1;
}

unint64_t sub_1A93AB008(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1A957B188();
  sub_1A93AD42C(&qword_1EB386498, MEMORY[0x1E6969610]);
  v5 = sub_1A957C058();

  return sub_1A93AB0A0(a1, v5);
}

unint64_t sub_1A93AB0A0(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_1A93AD42C(&qword_1EB386490, MEMORY[0x1E6969610]);
      v17 = sub_1A957C098();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1A93AB260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  v9 = sub_1A957D548();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1A93AB610(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A93AB3B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A93AB610(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A93AB3B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A93AB790();
      goto LABEL_16;
    }

    sub_1A93AB8EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1A957D4F8();
  sub_1A957C228();
  result = sub_1A957D548();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A957D3E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A93AB790()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1A93AB8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1A957D4F8();

      sub_1A957C228();
      result = sub_1A957D548();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

size_t sub_1A93ABB24(size_t a1, int64_t a2, char a3)
{
  result = sub_1A93ABCD8(a1, a2, a3, *v3, &qword_1EB386B40, &qword_1A95885C8, MEMORY[0x1E6969610]);
  *v3 = result;
  return result;
}

char *sub_1A93ABB68(char *a1, int64_t a2, char a3)
{
  result = sub_1A93ABBCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A93ABB88(size_t a1, int64_t a2, char a3)
{
  result = sub_1A93ABCD8(a1, a2, a3, *v3, &qword_1EB386B18, &unk_1A95916F0, MEMORY[0x1E6969770]);
  *v3 = result;
  return result;
}

char *sub_1A93ABBCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A93ABCD8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A93ABEB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1A93AC0D4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TTSMacroLanguageDisambiguationMapping();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A93ABFE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1A93AC2AC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

size_t sub_1A93AC0D4(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
  v10 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping() - 8);
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

char *sub_1A93AC2AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A93AC3B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v61[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v2 = MEMORY[0x1E69E7CD0];
    goto LABEL_43;
  }

  v61[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v52 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v57 = v4;
  v58 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v55 = v5 + 1;
    v11 = *(v2 + 40);
    sub_1A957D4F8();

    sub_1A957C228();
    v12 = sub_1A957D548();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v55;
    if (v55 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((sub_1A957D3E8() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v58;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v61[1] = v55;

  v23 = *(v2 + 32);
  v53 = ((1 << v23) + 63) >> 6;
  v24 = 8 * v53;
  v25 = v58;
  if ((v23 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v46 = v24;

  v47 = v46;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v54 = &v51;
    MEMORY[0x1EEE9AC00](v21, v22);
    v14 = &v51 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    v60 = v7;
    memcpy(v14, v7, v26);
    v59 = v2;
    v27 = *(v2 + 16);
    v28 = *(v14 + 8 * v15) & ~v16;
    v56 = v14;
    *(v14 + 8 * v15) = v28;
    v29 = v27 - 1;
    v30 = v57;
    v7 = *(v57 + 16);
    v31 = v55;
    while (1)
    {
      v55 = v29;
      if (v31 == v7)
      {
LABEL_41:
        v2 = sub_1A93ACA48(v56, v53, v55, v59);
LABEL_42:

LABEL_43:
        v44 = *MEMORY[0x1E69E9840];
        return v2;
      }

      v15 = v31;
      while (1)
      {
        if (v31 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v30 + 16))
        {
          goto LABEL_45;
        }

        v33 = (v25 + 16 * v15);
        v34 = *v33;
        v16 = v33[1];
        ++v15;
        v2 = v59;
        v35 = *(v59 + 40);
        sub_1A957D4F8();

        sub_1A957C228();
        v36 = sub_1A957D548();
        v37 = -1 << *(v2 + 32);
        v38 = v36 & ~v37;
        v14 = v38 >> 6;
        v39 = 1 << v38;
        if (((1 << v38) & v60[v38 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v25 = v58;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v40 = (*(v2 + 48) + 16 * v38);
      if (*v40 != v34 || v40[1] != v16)
      {
        v42 = ~v37;
        v2 = 1;
        while ((sub_1A957D3E8() & 1) == 0)
        {
          v38 = (v38 + 1) & v42;
          v14 = v38 >> 6;
          v39 = 1 << v38;
          if (((1 << v38) & v60[v38 >> 6]) == 0)
          {
            v30 = v57;
            goto LABEL_37;
          }

          v43 = (*(v59 + 48) + 16 * v38);
          if (*v43 == v34 && v43[1] == v16)
          {
            break;
          }
        }
      }

      v30 = v57;
      v32 = v56[v14];
      v56[v14] = v32 & ~v39;
      if ((v32 & v39) == 0)
      {
        goto LABEL_22;
      }

      v29 = v55 - 1;
      v25 = v58;
      if (__OFSUB__(v55, 1))
      {
        __break(1u);
      }

      v31 = v15;
      if (v55 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v48 = swift_slowAlloc();
  memcpy(v48, v7, v47);
  v49 = v52;
  v50 = sub_1A93AC864(v48, v53, v2, v14, v61);

  if (!v49)
  {

    MEMORY[0x1AC587CD0](v48, -1, -1);

    v2 = v50;
    goto LABEL_43;
  }

  result = MEMORY[0x1AC587CD0](v48, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1A93AC864(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1A93ACA48(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        sub_1A957D4F8();

        sub_1A957C228();
        v17 = sub_1A957D548();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((sub_1A957D3E8() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1A93ACA48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEB8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1A957D4F8();

    sub_1A957C228();
    result = sub_1A957D548();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1A93ACC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386B10, &unk_1A9588590);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
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

unint64_t sub_1A93ACD70(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386B30, &unk_1A95885B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
    v9 = sub_1A957D128();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v11, v7, &qword_1EB386B30, &unk_1A95885B0);
      result = sub_1A93AB008(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1A957B188();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

uint64_t sub_1A93ACF58(uint64_t a1)
{
  v2 = sub_1A957B188();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1A93AD42C(&qword_1EB386498, MEMORY[0x1E6969610]);
  result = MEMORY[0x1AC585770](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_1A93A3F0C(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}

uint64_t type metadata accessor for TTSMacroLanguageDisambiguationMapping()
{
  result = qword_1EB390C50;
  if (!qword_1EB390C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93AD140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSMacroLanguageDisambiguationMapping();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93AD1A4(uint64_t a1)
{
  v2 = type metadata accessor for TTSMacroLanguageDisambiguationMapping();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93AD200(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC585770](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A93AB260(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1A93AD298()
{
  sub_1A93AD320();
  if (v0 <= 0x3F)
  {
    sub_1A93AD394();
    if (v1 <= 0x3F)
    {
      sub_1A93AD3E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1A93AD320()
{
  if (!qword_1EB386428)
  {
    sub_1A957B218();
    sub_1A957B188();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB386428);
    }
  }
}

unint64_t sub_1A93AD394()
{
  result = qword_1EB386378;
  if (!qword_1EB386378)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB386378);
  }

  return result;
}

void sub_1A93AD3E4()
{
  if (!qword_1EB386430)
  {
    v0 = sub_1A957B188();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386430);
    }
  }
}

uint64_t sub_1A93AD42C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TTSMarkup.Language.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Language.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v35, 0, v35, &v30);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v8 & 1) != 0))
  {
    v24 = a2;
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v33 = v11;
    v34 = v10;
    v13 = (*((*v5 & *a1) + 0x100))(v12);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1AC585DE0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_1A93D1250(&v25);

        if (v26)
        {
          sub_1A932D070(&v25, &v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1A93ADC90(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = sub_1A93ADC90((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          sub_1A932D070(&v27, &v17[5 * v22 + 4]);
        }

        else
        {
          sub_1A937B960(&v25, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v16;
        if (v20 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v28 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v29 = &protocol witness table for <A> [A];

    *&v27 = v17;
    sub_1A93A38D8(&v27, v31);
    sub_1A93ADDD8(&v30, v24);
    return sub_1A93ADE10(&v30);
  }

  else
  {

    result = sub_1A937B960(v31, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  return result;
}

uint64_t TTSMarkup.Language.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))(v3);
}

{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.Language.init(languageCode:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(v11, 0, v11, a4);
  *(v7 + 8) = 0u;
  v7 += 8;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Language.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x676E616C3A6C6D78;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

unint64_t sub_1A93ADB04()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x676E616C3A6C6D78;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A93ADBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Language.accept<A>(_:)(a1, a2, a3);
}

void *sub_1A93ADC90(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A93ADE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v12[3] = &type metadata for VocalizerMarkup;
  v12[4] = &off_1F1CF2420;
  LOBYTE(v12[0]) = v9;

  v10 = sub_1A93775FC();
  return sub_1A94A50A4(v12, 1, a1, 1, a3, a4, v10 & 1, a5);
}

void sub_1A93ADF74(float a1)
{
  v1 = 100.0;
  v2 = (a1 + -1.0) * 100.0;
  if (v2 < 0.0)
  {
    v3 = sub_1A94CF2F0(-100.0, 0.0, 50.0, 100.0, v2);
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    v1 = -9.2234e18;
    if (v3 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v3 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v4 = sub_1A94CF2F0(0.0, v1, v1, 200.0, v2);
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

void sub_1A93AE060(float a1)
{
  v1 = a1;
  v2 = 1.0;
  if (v1 < 1.0)
  {
    v2 = sub_1A94CF2F0(0.0, 1.0, 50.0, 100.0, v1);
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v2 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v2 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v3 = sub_1A94CF2F0(v2, 4.0, 100.0, 400.0, v1);
  if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1A93AE13C(char *a1)
{
  v1 = *a1;
  v2 = 0x70733D6E745C1B20;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
    goto LABEL_8;
  }

  v4 = sub_1A957D3E8();

  if (v4)
  {
    return v2;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
    goto LABEL_8;
  }

  v6 = sub_1A957D3E8();

  if (v6)
  {
    return v2;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
LABEL_8:

    return v2;
  }

  v7 = sub_1A957D3E8();

  if ((v7 & 1) == 0)
  {
    return 32;
  }

  return v2;
}

unint64_t sub_1A93AE370()
{
  result = qword_1EB386B58;
  if (!qword_1EB386B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B58);
  }

  return result;
}

uint64_t sub_1A93AE3C8(double a1)
{
  result = 0x65737561705C1B20;
  sub_1A93AE554(a1, 0x65737561705C1B20, 0xE90000000000003DLL, 8284, 0xE200000000000000);
  return result;
}

uint64_t sub_1A93AE464(float a1)
{
  result = 0x3D6C6F765C1B20;
  sub_1A93AE774(a1, 0x3D6C6F765C1B20, 0xE700000000000000, 8284, 0xE200000000000000);
  return result;
}

uint64_t static SiriVocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v11[3] = &type metadata for SiriVocalizerMarkup;
  v11[4] = &off_1F1CF2470;
  LOBYTE(v11[0]) = v9;

  return sub_1A94A50A4(v11, 0, a1, 1, a3, a4, 1, a5);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A93AE554(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v8 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v8);

    MEMORY[0x1AC585140](a4, a5);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A93AE628(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = objc_opt_self();
  v6 = sub_1A957C0C8();
  sub_1A957B1A8();
  v7 = sub_1A957C0C8();

  v8 = [v5 lhPhonemesFromIPA:v6 language:v7];

  if (v8)
  {
    v9 = sub_1A957C0F8();
    v11 = v10;

    sub_1A957CF08();

    MEMORY[0x1AC585140](v9, v11);

    MEMORY[0x1AC585140](0x726F3D696F745C1BLL, 0xEC000000205C6874);
    return 0x6C3D696F745C1B20;
  }

  else
  {
  }

  return v3;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1A93AE774(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 * 80.0;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    v8 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v8);

    MEMORY[0x1AC585140](a4, a5);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A93AE840(char *a1)
{
  v1 = *a1;
  v2 = 0x6570733D6E745C1BLL;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
    goto LABEL_8;
  }

  v4 = sub_1A957D3E8();

  if (v4)
  {
    return v2;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
    goto LABEL_8;
  }

  v6 = sub_1A957D3E8();

  if (v6)
  {
    return v2;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v10 == v8 && v11 == v9)
  {
LABEL_8:

    return v2;
  }

  v7 = sub_1A957D3E8();

  if ((v7 & 1) == 0)
  {
    return 32;
  }

  return v2;
}

uint64_t sub_1A93AEA70()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = sub_1A957B1A8();
  MEMORY[0x1AC585140](v1);

  MEMORY[0x1AC585140](92, 0xE100000000000000);
  return 0x3D676E616C5C1BLL;
}

uint64_t sub_1A93AEAF4(double a1)
{
  result = 0x3D65737561705C1BLL;
  sub_1A93AE554(a1, 0x3D65737561705C1BLL, 0xE800000000000000, 92, 0xE100000000000000);
  return result;
}

uint64_t sub_1A93AEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1AC585140]();
  MEMORY[0x1AC585140](a7, a8);
  return a5;
}

uint64_t sub_1A93AEBB8(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A93ADF74(a1);
  v9 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v9);

  MEMORY[0x1AC585140](a6, a7);
  return a4;
}

uint64_t sub_1A93AEC58(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A93AE060(a1);
  v9 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v9);

  MEMORY[0x1AC585140](a6, a7);
  return a4;
}

uint64_t sub_1A93AECD8(float a1)
{
  result = 0x3D6C6F765C1BLL;
  sub_1A93AE774(a1, 0x3D6C6F765C1BLL, 0xE600000000000000, 92, 0xE100000000000000);
  return result;
}

uint64_t VocalizerLanguageMarkupStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A93AEDD8()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

unint64_t sub_1A93AEE20()
{
  result = qword_1EB386B60;
  if (!qword_1EB386B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B60);
  }

  return result;
}

id sub_1A93AEFAC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 attributes];
  if (!v6)
  {

LABEL_8:
    sub_1A9378138(a2);
    sub_1A93847E0(__dst);
    return memcpy(a3, __dst, 0x118uLL);
  }

  v7 = v6;
  v8 = sub_1A957C038();

  sub_1A9379534(a2, v30);
  v9 = [a1 state];
  v10 = 0x20301010202uLL >> (8 * v9);
  if (v9 >= 7)
  {
    LOBYTE(v10) = 2;
  }

  v29 = v10;
  v11 = a2[3];
  v12 = a2[4];
  sub_1A93780F4(a2, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v15 = v14;
  result = [a1 assetId];
  if (result)
  {
    v17 = result;
    v18 = sub_1A957C0F8();
    v20 = v19;

    v21 = sub_1A93B0D40();
    CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v13, v15, v18, v20, v21, v27);
    v24[0] = v27[0];
    v24[1] = v27[1];
    v25 = v28;
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A9587160;
    *(v22 + 32) = *sub_1A9493C9C();
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v23[0] = v23[1];
    sub_1A93AF494(v8, v30, &v29, v24, v23, __src);

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1A932D058(__dst) != 1)
    {
      memcpy(a3, __src, 0x118uLL);
      nullsub_23(a3);
      return sub_1A9378138(a2);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_1A93AF284(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      a1(__src, &v20);
      if (v3)
      {

        return v8;
      }

      memcpy(v18, __src, sizeof(v18));
      if (sub_1A932D058(v18) == 1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1A9384810(__dst);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93A3558(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93A3558((v12 > 1), v13 + 1, 1, v8);
        }

        memcpy(v16, __dst, sizeof(v16));
        *(v8 + 2) = v13 + 1;
        memcpy(&v8[280 * v13 + 32], v16, 0x118uLL);
        a1 = v15;
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1A93AF494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v155 = a6;
  v11 = sub_1A957B308();
  v154 = *(v11 - 8);
  v12 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = *a3;
  v16 = *a4;
  v17 = a4[1];
  v18 = a4[3];
  v151 = a4[2];
  v152 = v16;
  v150 = a4[4];
  v19 = *a5;
  sub_1A9379398(&v161[4]);
  sub_1A94978C4();
  sub_1A948F660();
  sub_1A93BC894(&v161[15]);
  *v157 = sub_1A957C0F8();
  *&v157[8] = v20;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v21 = sub_1A93B1014(v160), (v22 & 1) == 0))
  {

LABEL_19:

    sub_1A93B1058(v160);
    sub_1A9378138(a2);
LABEL_20:
    sub_1A93B10AC(*&v161[15], *(&v161[15] + 1));
    sub_1A93847E0(v160);
    return memcpy(v155, v160, 0x118uLL);
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v21, v158);
  sub_1A93B1058(v160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);
LABEL_22:

    goto LABEL_20;
  }

  v23 = *&v157[8];
  v148 = *v157;
  *v157 = sub_1A957C0F8();
  *&v157[8] = v24;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v149 = v23, v25 = sub_1A93B1014(v160), (v26 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v25, v158);
  sub_1A93B1058(v160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);
LABEL_25:

    goto LABEL_22;
  }

  v147 = *v157;
  *v157 = sub_1A957C0F8();
  *&v157[8] = v27;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v28 = sub_1A93B1014(v160), (v29 & 1) == 0))
  {

LABEL_27:

    goto LABEL_19;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v28, v158);
  sub_1A93B1058(v160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);

    goto LABEL_25;
  }

  v145 = *v157;
  v146 = *&v157[8];
  *v157 = sub_1A957C0F8();
  *&v157[8] = v30;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v31 = sub_1A93B1014(v160), (v32 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v31, v158);
  sub_1A93B1058(v160);
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);

    goto LABEL_25;
  }

  v141 = *v157;
  if (!*(*v157 + 16))
  {
    sub_1A9378138(a2);

    goto LABEL_22;
  }

  if (sub_1A957C0F8() != v145 || v33 != v146)
  {
    LODWORD(v144) = sub_1A957D3E8();

    if (v144)
    {
      v140 = 1;
      goto LABEL_34;
    }

    if (sub_1A957C0F8() == v145 && v68 == v146)
    {
      v34 = 5;
      goto LABEL_17;
    }

    LODWORD(v145) = sub_1A957D3E8();

    if (v145)
    {
      v140 = 5;
      goto LABEL_35;
    }

    sub_1A9378138(a2);

    goto LABEL_22;
  }

  v34 = 1;
LABEL_17:
  v140 = v34;

LABEL_34:

LABEL_35:
  v161[0] = v147;
  *(&v161[2] + 1) = v148;
  *&v161[3] = v149;
  *v157 = sub_1A957C0F8();
  *&v157[8] = v36;

  sub_1A957CE88();
  if (!*(a1 + 16) || (v37 = sub_1A93B1014(v160), (v38 & 1) == 0))
  {
    sub_1A93B1058(v160);
    goto LABEL_40;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v37, v158);
  sub_1A93B1058(v160);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    v146 = 0xE100000000000000;
    v39 = 45;
    goto LABEL_41;
  }

  v39 = *v157;
  v146 = *&v157[8];
LABEL_41:
  if (v39 == sub_1A957C0F8() && v146 == v40)
  {
    LODWORD(v145) = 0;
    v146 = v40;
  }

  else
  {
    v144 = v39;
    LODWORD(v145) = sub_1A957D3E8();

    if (v145)
    {
      v41 = 0;
      goto LABEL_47;
    }

    v69 = sub_1A957C0F8();
    LODWORD(v145) = 1;
    if (v144 != v69 || v146 != v70)
    {
      LODWORD(v145) = sub_1A957D3E8();

      if (v145)
      {
        v41 = 1;
      }

      else
      {
        v41 = 2;
      }

      goto LABEL_48;
    }
  }

  v41 = v145;
LABEL_47:

LABEL_48:
  BYTE9(v161[3]) = v41;
  v159 = v19;
  *v157 = sub_1A957C0F8();
  *&v157[8] = v42;
  sub_1A957CE88();
  if (*(a1 + 16) && (v43 = sub_1A93B1014(v160), (v44 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v43, v158);
    sub_1A93B1058(v160);
    sub_1A93B1EF4();
    if (swift_dynamicCast())
    {
      v45 = *v157;
      if ([*v157 BOOLValue])
      {
        v46 = sub_1A9493C00();
        sub_1A93B0A74(v160, *v46);
      }
    }
  }

  else
  {
    sub_1A93B1058(v160);
  }

  if (v153 == 2)
  {
    goto LABEL_59;
  }

  if (v153 == 3)
  {
    v47 = sub_1A9493D44();
LABEL_60:
    sub_1A93B0A74(v160, *v47);
    goto LABEL_61;
  }

  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1A9587160;
  *(v48 + 32) = *sub_1A9493C84();
  v160[0] = v48;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  sub_1A93B0A74(v160, v158[0]);
  if (v153)
  {
LABEL_59:
    v47 = sub_1A9493D2C();
    goto LABEL_60;
  }

LABEL_61:
  memset(&v161[5], 0, 40);
  v49 = v140;
  *(&v161[4] + 1) = v140;
  BYTE8(v161[7]) = 2;
  *v157 = sub_1A957C0F8();
  *&v157[8] = v50;
  sub_1A93B10F0(v49, 0, 0, 0, 0, 0, 2);
  sub_1A957CE88();
  if (*(a1 + 16) && (v51 = sub_1A93B1014(v160), (v52 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v51, v158);
    sub_1A93B1058(v160);
    swift_dynamicCast();
  }

  else
  {
    sub_1A93B1058(v160);
  }

  CoreSynthesizer.Voice.Quality.init(rawValue:)(v160);
  v53 = v160[0];
  if (LOBYTE(v160[0]) == 5)
  {
    v53 = 0;
  }

  BYTE8(v161[3]) = v53;
  v157[0] = v53;
  LOBYTE(v156[0]) = 1;
  v54 = sub_1A93B1148();
  sub_1A957C438();
  v146 = v54;
  sub_1A957C438();
  if (v160[0] == v158[0] && v160[1] == v158[1])
  {
  }

  else
  {
    v55 = sub_1A957D3E8();

    if ((v55 & 1) == 0)
    {

      v139 = 0;
      *&v161[2] = 0;
      *(&v161[1] + 1) = 0;
      v138 = MEMORY[0x1E69E7CC0];
      goto LABEL_82;
    }
  }

  v56 = sub_1A957C1A8();
  v58 = v57;

  v160[0] = v56;
  v160[1] = v58;
  strcpy(v158, "super-compact");
  HIWORD(v158[1]) = -4864;
  strcpy(v157, "compact");
  *&v157[8] = 0xE700000000000000;
  sub_1A93820F4();
  v59 = sub_1A957CD08();
  v61 = v60;

  v139 = v61;

  v62 = sub_1A93AC2AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v64 = *(v62 + 2);
  v63 = *(v62 + 3);
  v65 = v64 + 1;
  if (v64 >= v63 >> 1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    *(v62 + 2) = v65;
    v138 = v62;
    v66 = &v62[16 * v64];
    v67 = v139;
    *(v66 + 4) = v59;
    *(v66 + 5) = v67;
    *(&v161[1] + 1) = v59;
    *&v161[2] = v67;
LABEL_82:
    v157[0] = BYTE8(v161[3]);
    LOBYTE(v156[0]) = 2;
    sub_1A957C438();
    sub_1A957C438();
    v65 = v160[1];
    v59 = v158[1];
    v64 = v141;
    if (v160[0] == v158[0] && v160[1] == v158[1])
    {
LABEL_84:

      goto LABEL_86;
    }

    LODWORD(v147) = sub_1A957D3E8();

    if ((v147 & 1) == 0)
    {
      v157[0] = BYTE8(v161[3]);
      LOBYTE(v156[0]) = 1;
      sub_1A957C438();
      sub_1A957C438();
      v65 = v160[1];
      v59 = v158[1];
      if (v160[0] == v158[0] && v160[1] == v158[1])
      {
        goto LABEL_84;
      }

      LODWORD(v147) = sub_1A957D3E8();

      if ((v147 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

LABEL_86:
    v63 = *(v64 + 16);
    if (v63)
    {
      break;
    }

    __break(1u);
LABEL_142:
    v62 = sub_1A93AC2AC((v63 > 1), v65, 1, v62);
  }

  v71 = *(v64 + 32);
  v72 = *(v64 + 40);

  v73 = sub_1A957C0C8();

  v78 = _BuiltInVoiceNameForLanguage(v73, v74, v75, v76, v77);

  if (!v78)
  {
LABEL_96:

    goto LABEL_97;
  }

  v79 = sub_1A957C0F8();
  v81 = v80;

  if (v79 == v148 && v81 == v149)
  {

    v64 = v141;
  }

  else
  {
    v82 = sub_1A957D3E8();

    v64 = v141;

    if ((v82 & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  v83 = sub_1A9493C54();
  sub_1A93B0A74(v160, *v83);
LABEL_97:
  *&v161[4] = v159;
  v84 = *MEMORY[0x1E69B1858];
  *v157 = sub_1A957C0F8();
  *&v157[8] = v85;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v86 = sub_1A93B1014(v160), (v87 & 1) == 0))
  {
    sub_1A93B1058(v160);
    goto LABEL_102;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v86, v158);
  sub_1A93B1058(v160);
  sub_1A93B1EF4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_102:
    v89 = 0;
    v90 = 1;
    goto LABEL_103;
  }

  v88 = *v157;
  v89 = [*v157 unsignedIntValue];

  v90 = 0;
LABEL_103:
  DWORD1(v161[11]) = v89;
  BYTE8(v161[11]) = v90;
  v91 = *MEMORY[0x1E69B1870];
  *v157 = sub_1A957C0F8();
  *&v157[8] = v92;
  sub_1A957CE88();
  if (*(a1 + 16) && (v93 = sub_1A93B1014(v160), (v94 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v93, v158);
    sub_1A93B1058(v160);
    sub_1A93B1EF4();
    if (swift_dynamicCast())
    {
      v95 = *v157;
      v96 = [*v157 unsignedIntValue];

      v97 = 0;
      goto LABEL_109;
    }
  }

  else
  {
    sub_1A93B1058(v160);
  }

  v96 = 0;
  v97 = 1;
LABEL_109:
  HIDWORD(v161[11]) = v96;
  LOBYTE(v161[12]) = v97;
  v98 = Array<A>.toAXPrimaryLocales.getter(v64);
  v99 = *(v98 + 16);
  if (v99)
  {
    v160[0] = MEMORY[0x1E69E7CC0];
    v148 = v99;
    sub_1A93ABB68(0, v99, 0);
    v100 = v160[0];
    v101 = *(v154 + 16);
    v102 = *(v154 + 80);
    v137 = v98;
    v103 = v98 + ((v102 + 32) & ~v102);
    v143 = *(v154 + 72);
    v144 = v101;
    v145 = (v154 + 16);
    v142 = (v154 + 8);
    do
    {
      (v144)(v15, v103, v11);
      v104 = sub_1A957B1A8();
      v146 = v105;
      *&v147 = v104;
      (*v142)(v15, v11);
      v160[0] = v100;
      v106 = *(v100 + 16);
      v107 = *(v100 + 24);
      v108 = v106 + 1;
      if (v106 >= v107 >> 1)
      {
        v136 = v106 + 1;
        sub_1A93ABB68((v107 > 1), v106 + 1, 1);
        v108 = v136;
        v100 = v160[0];
      }

      *(v100 + 16) = v108;
      v109 = v100 + 16 * v106;
      v110 = v146;
      *(v109 + 32) = v147;
      *(v109 + 40) = v110;
      v103 += v143;
      --v148;
    }

    while (v148);

    v64 = v141;
  }

  else
  {

    v100 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v100);
  v112 = v111;
  v114 = v113;
  *&v161[8] = v111;
  *(&v161[8] + 1) = v113;
  v115 = Array<A>.toAXSecondaryLocales.getter(v64);

  v116 = *(v115 + 16);
  v142 = v112;
  v137 = v114;
  if (v116)
  {
    v160[0] = MEMORY[0x1E69E7CC0];
    v148 = v116;
    sub_1A93ABB68(0, v116, 0);
    v117 = v160[0];
    v118 = *(v154 + 16);
    v119 = *(v154 + 80);
    v141 = v115;
    v120 = v115 + ((v119 + 32) & ~v119);
    v144 = *(v154 + 72);
    v145 = v118;
    v154 += 16;
    v143 = (v154 - 8);
    do
    {
      v145(v15, v120, v11);
      v121 = sub_1A957B1A8();
      v146 = v122;
      *&v147 = v121;
      (*v143)(v15, v11);
      v160[0] = v117;
      v123 = *(v117 + 16);
      v124 = *(v117 + 24);
      v125 = v123 + 1;
      if (v123 >= v124 >> 1)
      {
        v136 = v123 + 1;
        sub_1A93ABB68((v124 > 1), v123 + 1, 1);
        v125 = v136;
        v117 = v160[0];
      }

      *(v117 + 16) = v125;
      v126 = v117 + 16 * v123;
      v127 = v146;
      *(v126 + 32) = v147;
      *(v126 + 40) = v127;
      v120 += v144;
      --v148;
    }

    while (v148);
  }

  else
  {

    v117 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v117);
  *&v161[9] = v128;
  *(&v161[9] + 1) = v129;
  *v157 = 0xD000000000000010;
  *&v157[8] = 0x80000001A95C1000;
  sub_1A957CE88();
  if (*(a1 + 16) && (v130 = sub_1A93B1014(v160), (v131 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v130, v158);
    sub_1A93B1058(v160);

    if (swift_dynamicCast())
    {
      v132 = sub_1A93B1D40(*v157, *&v157[8]);

      if ((v132 & 0x100000000) == 0)
      {
        sub_1A93B183C(v140, 0, 0, 0, 0, 0, 2);
        goto LABEL_134;
      }
    }
  }

  else
  {

    sub_1A93B1058(v160);
  }

  memset(&v160[1], 0, 40);
  v133 = v140;
  v160[0] = v140;
  LOBYTE(v160[6]) = 2;
  memset(&v158[1], 0, 40);
  v158[0] = 5;
  LOBYTE(v158[6]) = 2;
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A93B183C(v133, 0, 0, 0, 0, 0, 2);
  sub_1A957C438();
  if (*v157 == v156[0] && *&v157[8] == v156[1])
  {

    goto LABEL_133;
  }

  v134 = sub_1A957D3E8();

  if (v134)
  {
LABEL_133:
    v135 = sub_1A93B1D40(0x6B74636DuLL, 0xE400000000000000);
    LODWORD(v132) = v135;
    if ((v135 & 0x100000000) == 0)
    {
LABEL_134:
      sub_1A9378138(a2);
      goto LABEL_136;
    }
  }

  v132 = sub_1A93B1D40(0x636E7263uLL, 0xE400000000000000);
  sub_1A9378138(a2);
  if ((v132 & 0x100000000) != 0)
  {

    sub_1A93B183C(*(&v161[4] + 1), *&v161[5], *(&v161[5] + 1), *&v161[6], *(&v161[6] + 1), *&v161[7], SBYTE8(v161[7]));

    goto LABEL_20;
  }

LABEL_136:
  LODWORD(v161[10]) = 1635087216;
  DWORD1(v161[10]) = v132;
  *(&v161[10] + 1) = 1634758764;
  LODWORD(v161[11]) = 0;
  *&v161[1] = v138;
  BYTE1(v161[12]) = v153;
  *(&v161[12] + 1) = v152;
  *&v161[13] = v17;
  *(&v161[13] + 1) = v151;
  *&v161[14] = v18;
  *(&v161[14] + 1) = v150;
  memcpy(v157, v161, sizeof(v157));
  memcpy(v158, v161, sizeof(v158));
  nullsub_23(v158);
  memcpy(v155, v158, 0x118uLL);
  memcpy(v160, v161, sizeof(v160));
  sub_1A937B3DC(v157, v156);
  return sub_1A937B48C(v160);
}

BOOL sub_1A93B0A74(void *a1, uint64_t a2)
{
  v7 = *v2;
  sub_1A9387410();
  sub_1A957CD98();
  sub_1A93B1F40();
  v4 = sub_1A957C098();
  if (v4)
  {
    v5 = v8;
  }

  else
  {
    v5 = a2;
    sub_1A957CDD8();
  }

  *a1 = v5;
  return (v4 & 1) == 0;
}

void sub_1A93B0B3C(uint64_t a1)
{
  v2 = sub_1A937838C();
  v3 = sub_1A93B119C(&v18, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v18;
  if (v18 != v4)
  {
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v4 < v18)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      sub_1A93B19E0(a1, a1 + 32, 0, (2 * v18) | 1);
      v19 = v3;
      v20 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v7 = (a1 + 32 + 16 * v5);
          v9 = *v7;
          v8 = v7[1];
          v10 = v19;
          v11 = v20;
          v12 = *(v20 + 16);
          if (v19)
          {
            v13 = v7[1];

            sub_1A93B1894(v9, v8, v11 + 32, v12, (v10 + 16));
            v15 = v14;

            if ((v15 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v12)
            {
              v16 = (v20 + 40);
              do
              {
                v17 = *(v16 - 1) == v9 && *v16 == v8;
                if (v17 || (sub_1A957D3E8() & 1) != 0)
                {
                  goto LABEL_9;
                }

                v16 += 2;
              }

              while (--v12);
            }
          }

          sub_1A93B13D0(v9, v8);
LABEL_8:

LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

Swift::UInt32_optional __swiftcall UInt32.init(axFourCharCode:)(Swift::String axFourCharCode)
{
  v1 = sub_1A93B1D40(axFourCharCode._countAndFlagsBits, axFourCharCode._object);

  return (v1 | ((HIDWORD(v1) & 1) << 32));
}

id sub_1A93B0D40()
{
  v1 = v0;
  result = [v0 attributes];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1A957C038();

  v11 = 0xD000000000000011;
  sub_1A957CE88();
  if (*(v4 + 16) && (v5 = sub_1A93B1014(v12), (v6 & 1) != 0))
  {
    sub_1A937BA14(*(v4 + 56) + 32 * v5, v13);
    sub_1A93B1058(v12);

    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {

    sub_1A93B1058(v12);
  }

  result = [v1 attributes];
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = result;
  v8 = sub_1A957C038();

  v11 = 0x746E65746E6F435FLL;
  sub_1A957CE88();
  if (*(v8 + 16) && (v9 = sub_1A93B1014(v12), (v10 & 1) != 0))
  {
    sub_1A937BA14(*(v8 + 56) + 32 * v9, v13);
    sub_1A93B1058(v12);

    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {

    sub_1A93B1058(v12);
  }

  return 0;
}

unint64_t sub_1A93B0F54()
{
  result = qword_1ED96FEB8;
  if (!qword_1ED96FEB8)
  {
    sub_1A93A7B68(&unk_1EB388360, qword_1A958B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FEB8);
  }

  return result;
}

id sub_1A93B0FB8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  sub_1A9379534(v4, v7);
  return sub_1A93AEFAC(v5, v7, a2);
}

unint64_t sub_1A93B1014(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1A957CE68();

  return sub_1A93B1C78(a1, v5);
}

uint64_t sub_1A93B10AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1A93B10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  return result;
}

unint64_t sub_1A93B1148()
{
  result = qword_1ED96FFD8;
  if (!qword_1ED96FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFD8);
  }

  return result;
}

uint64_t sub_1A93B119C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1AC584A20](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1AC584A30]();
    sub_1A93B1AB8(a2 + 32, v8, (v14 + 16));
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1A93B1280(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1A93B1280(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A93ABB68(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v18[2];
    v17 = a1;
    do
    {
      v7 = v5++;
      v8 = (a1 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v18 + 5;
      v12 = v6 + 1;
      while (--v12)
      {
        if (v9 != *(v11 - 1) || v10 != *v11)
        {
          v11 += 2;
          if ((sub_1A957D3E8() & 1) == 0)
          {
            continue;
          }
        }

        return v7;
      }

      v14 = v18[2];
      v15 = v18[3];
      v6 = v14 + 1;

      if (v14 >= v15 >> 1)
      {
        sub_1A93ABB68((v15 > 1), v14 + 1, 1);
      }

      v18[2] = v6;
      v16 = &v18[2 * v14];
      v16[4] = v9;
      v16[5] = v10;
      a1 = v17;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_1A93B13D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((result & 1) == 0)
  {
    result = sub_1A93ABB68(0, *(v7 + 16) + 1, 1);
    v7 = *v6;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1A93ABB68((v10 > 1), v11 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v11 + 1;
  v12 = v7 + 16 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  v3[1] = v7;
  v13 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (MEMORY[0x1AC584A00](*(v13 + 16) & 0x3FLL) > v11)
    {
      v14 = *v3;
      result = swift_isUniquelyReferenced_native();
      v15 = *v3;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = *v3;
        v17 = sub_1A957BB58();

        *v3 = v17;
        v15 = v17;
      }

      if (v15)
      {
        v18 = *(v15 + 16);
        v19 = *(*v6 + 16) + ~(*(v15 + 24) >> 6);
        return sub_1A957BB08();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v11 < 0xF)
  {
    return result;
  }

  return sub_1A93B1548();
}

uint64_t sub_1A93B1548()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1AC584A20](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A93B15E8(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A93B15E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1AC584A20](v6);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1AC584A30](v8, a4);
    sub_1A93B1668(a1, (v10 + 16));
    return v10;
  }

  return result;
}

uint64_t sub_1A93B16B8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v11 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v11 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        v9 = *a3;
        sub_1A957D4F8();

        sub_1A957C228();
        result = sub_1A957D548();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v10 = sub_1A957BAF8();

        if (v10)
        {
          while (1)
          {
            sub_1A957BB38();
          }
        }

        result = sub_1A957BB28();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1A93B17E8()
{
  result = qword_1EB386460;
  if (!qword_1EB386460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386460);
  }

  return result;
}

uint64_t sub_1A93B183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }

  return result;
}

uint64_t sub_1A93B1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *a5;
  sub_1A957D4F8();
  sub_1A957C228();
  result = sub_1A957D548();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A957BAF8();
    result = sub_1A957BB18();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1A957D3E8())
          {
            break;
          }

          sub_1A957BB38();
          result = sub_1A957BB18();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1A93B19E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A93B1AB8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v3 = a3;
  v4 = result;
  v5 = 0;
  v16 = result;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v17 = v5 + 1;
    v6 = (v4 + 16 * v5);
    v7 = *v6;
    v8 = v6[1];
    v9 = *v3;
    sub_1A957D4F8();

    sub_1A957C228();
    result = sub_1A957D548();
    if (__OFSUB__(1 << *v3, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_1A957BAF8();

    v4 = v16;
    while (1)
    {
      v10 = sub_1A957BB18();
      if (v11)
      {
        break;
      }

      v12 = (v16 + 16 * v10);
      v13 = *v12 == *v6 && v12[1] == v6[1];
      if (v13 || (sub_1A957D3E8() & 1) != 0)
      {
        return 0;
      }

      sub_1A957BB38();
    }

    result = sub_1A957BB28();
    ++v5;
    v3 = a3;
    if (v17 != a2)
    {
      continue;
    }

    return 1;
  }
}

unint64_t sub_1A93B1C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A93B1F94(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC585D30](v9, a1);
      sub_1A93B1058(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A93B1D40(unint64_t a1, unint64_t a2)
{
  v4 = sub_1A957C238();
  if (v4 != 4 || ((a2 & 0x2000000000000000) != 0 ? (v5 = HIBYTE(a2) & 0xF) : (v5 = a1 & 0xFFFFFFFFFFFFLL), !v5))
  {
    v10 = 0;
LABEL_28:
    LOBYTE(v19[0]) = v4 != 4;
    return v10 | ((v4 != 4) << 32);
  }

  v6 = 0;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_1A938156C(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v5)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_1A957C308();
      result = v18;
      if (v11 != v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v14 = v19;
      }

      else
      {
        v14 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_1A957CF68();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    result = sub_1A938156C(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_9:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_10;
    }

LABEL_21:
    if (v5 <= result >> 16)
    {
      goto LABEL_30;
    }

    result = sub_1A957C2C8();
LABEL_10:
    v10 = v15 | (v6 << 8);
    v6 = v10;
    if (4 * v5 == result >> 14)
    {
      v4 = 4;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1A93B1EF4()
{
  result = qword_1ED96FCD8;
  if (!qword_1ED96FCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FCD8);
  }

  return result;
}

unint64_t sub_1A93B1F40()
{
  result = qword_1ED970000;
  if (!qword_1ED970000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED970000);
  }

  return result;
}

uint64_t TTSMarkup.Sentence.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Sentence.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 88))(v3);
}

{
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.Sentence.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v25, 0, v25, &v22);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v15 = a1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1A93D1250(&v17);

      if (v18)
      {
        sub_1A932D070(&v17, &v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = v13 + 1;
        sub_1A932D070(&v19, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A9383404(&v17);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v20 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v21 = &protocol witness table for <A> [A];

  *&v19 = v8;
  sub_1A93A38D8(&v19, v23);
  sub_1A93B25AC(&v22, a2);
  return sub_1A93B25E4(&v22);
}

uint64_t TTSMarkup.Sentence.init(speech:)@<X0>(void (*a1)(void *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = SpeechContext.init<each A>(_:)(v7, 0, v7, a2);
  *(v3 + 8) = 0u;
  v3 += 8;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0u;
  a1(v6, v4);
  return sub_1A93A38D8(v6, v3);
}

uint64_t sub_1A93B24FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Sentence.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A93B2614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A93B265C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t CoreSynthesizer.Voice.sampleText(forLocale:)(uint64_t a1)
{
  v147 = a1;
  v133 = sub_1A957B188();
  v137 = *(v133 - 8);
  v2 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v133, v3);
  v122 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  v5 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130, v6);
  v132 = &v122 - v7;
  v8 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v123 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v136 = &v122 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v131 = &v122 - v17;
  v129 = sub_1A957B2E8();
  v134 = *(v129 - 8);
  v18 = *(v134 + 8);
  v20 = MEMORY[0x1EEE9AC00](v129, v19);
  v128 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v127 = &v122 - v23;
  v24 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v28 = &v122 - v27;
  v29 = sub_1A957B308();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](v29, v32);
  v126 = (&v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v122 - v36;
  v38 = *(v1 + 8);
  v140 = *v1;
  v141 = v38;
  v39 = *(v1 + 32);
  v180 = *(v1 + 16);
  v181 = v39;
  v182 = *(v1 + 48);
  v40 = *(v1 + 64);
  v143 = *(v1 + 72);
  v183 = v40;
  v41 = *(v1 + 88);
  v42 = *(v1 + 96);
  v43 = *(v1 + 104);
  v145 = *(v1 + 80);
  v146 = v42;
  v139 = *(v1 + 112);
  v142 = *(v1 + 120);
  v44 = *(v1 + 137);
  v171 = *(v1 + 121);
  v172 = v44;
  v45 = *(v1 + 201);
  v175 = *(v1 + 185);
  v176 = v45;
  v46 = *(v1 + 169);
  v173 = *(v1 + 153);
  v174 = v46;
  *(v179 + 15) = *(v1 + 264);
  v47 = *(v1 + 249);
  v48 = *(v1 + 217);
  v178 = *(v1 + 233);
  v179[0] = v47;
  v177 = v48;
  sub_1A9391BAC(v147, v28, &qword_1EB386988, &qword_1A9587830);
  v147 = v30;
  v49 = *(v30 + 48);
  v50 = v49(v28, 1, v29);
  v144 = v43;
  v138 = v41;
  if (v50 == 1)
  {
    *&v170[15] = *(v1 + 264);
    v51 = *(v1 + 32);
    v151 = *(v1 + 16);
    v152 = v51;
    v153 = *(v1 + 48);
    v52 = *(v1 + 233);
    *v170 = *(v1 + 249);
    v53 = *(v1 + 217);
    v169 = v52;
    v168 = v53;
    v54 = *(v1 + 185);
    v167 = *(v1 + 201);
    v166 = v54;
    v55 = *(v1 + 153);
    v165 = *(v1 + 169);
    v164 = v55;
    v56 = *(v1 + 121);
    v163 = *(v1 + 137);
    v149 = v140;
    v150 = v141;
    v154 = *(v1 + 64);
    v155 = v143;
    v156 = v145;
    v157 = v41;
    v158 = v146;
    v159 = v43;
    v57 = v139;
    v160 = v139;
    v161 = v142;
    v162 = v56;
    CoreSynthesizer.Voice.primaryLocale.getter(v37);
    v58 = v49(v28, 1, v29);
    v59 = v147;
    if (v58 != 1)
    {
      sub_1A937B960(v28, &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v59 = v147;
    (*(v147 + 32))(v37, v28, v29);
    v57 = v139;
  }

  v124 = sub_1A957B118();
  v125 = v60;
  v151 = v180;
  v152 = v181;
  v153 = v182;
  *&v170[15] = *(v179 + 15);
  v163 = v172;
  v162 = v171;
  v167 = v176;
  v166 = v175;
  v165 = v174;
  v164 = v173;
  *v170 = v179[0];
  v169 = v178;
  v149 = v140;
  v150 = v141;
  v154 = v183;
  v155 = v143;
  v156 = v145;
  v157 = v138;
  v158 = v146;
  v159 = v144;
  v160 = v57;
  v161 = v142;
  v168 = v177;
  v61 = v126;
  CoreSynthesizer.Voice.primaryLocale.getter(v126);
  v62 = v127;
  sub_1A957B2F8();
  v63 = *(v59 + 8);
  v135 = v29;
  v147 = v59 + 8;
  v126 = v63;
  (v63)(v61, v29);
  v64 = v131;
  sub_1A957B2B8();
  v65 = *(v134 + 1);
  v66 = v62;
  v67 = v129;
  v65(v66, v129);
  v68 = v128;
  v134 = v37;
  sub_1A957B2F8();
  v69 = v136;
  sub_1A957B2B8();
  v65(v68, v67);
  v70 = *(v130 + 48);
  v71 = v132;
  sub_1A9391BAC(v64, v132, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A9391BAC(v69, v71 + v70, &qword_1EB386A68, &qword_1A9587F40);
  v72 = *(v137 + 48);
  v73 = v133;
  if (v72(v71, 1, v133) == 1)
  {
    sub_1A937B960(v69, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v64, &qword_1EB386A68, &qword_1A9587F40);
    v74 = v72(v71 + v70, 1, v73);
    v76 = v145;
    v75 = v146;
    v77 = v144;
    v78 = v135;
    if (v74 == 1)
    {
      sub_1A937B960(v71, &qword_1EB386A68, &qword_1A9587F40);
      goto LABEL_18;
    }

LABEL_10:
    sub_1A937B960(v71, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_11;
  }

  v79 = v123;
  sub_1A9391BAC(v71, v123, &qword_1EB386A68, &qword_1A9587F40);
  if (v72(v71 + v70, 1, v73) == 1)
  {
    sub_1A937B960(v136, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v64, &qword_1EB386A68, &qword_1A9587F40);
    (*(v137 + 8))(v79, v73);
    v76 = v145;
    v75 = v146;
    v77 = v144;
    goto LABEL_10;
  }

  v91 = v137;
  v92 = v122;
  (*(v137 + 32))(v122, v71 + v70, v73);
  sub_1A93B4F90();
  v93 = sub_1A957C098();
  v94 = *(v91 + 8);
  v94(v92, v73);
  sub_1A937B960(v136, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v64, &qword_1EB386A68, &qword_1A9587F40);
  v94(v79, v73);
  sub_1A937B960(v71, &qword_1EB386A68, &qword_1A9587F40);
  v76 = v145;
  v75 = v146;
  v77 = v144;
  v78 = v135;
  if ((v93 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v96 = v140;
  v95 = v141;
  v97 = sub_1A93B4EDC(v140, v141);
  if (!v98)
  {
    v151 = v180;
    v152 = v181;
    v153 = v182;
    *&v170[15] = *(v179 + 15);
    v163 = v172;
    v162 = v171;
    v167 = v176;
    v166 = v175;
    v165 = v174;
    v164 = v173;
    *v170 = v179[0];
    v169 = v178;
    v149 = v96;
    v150 = v95;
    v154 = v183;
    v155 = v143;
    v156 = v76;
    v157 = v138;
    v158 = v75;
    v159 = v77;
    v160 = v139;
    v161 = v142;
    v168 = v177;
    v110 = CoreSynthesizer.Voice.cannonicId.getter();
    v99 = sub_1A93B4EDC(v110, v111);
    v113 = v112;

    if (v113)
    {

      goto LABEL_26;
    }

LABEL_11:
    v80 = v142;
    if (v142)
    {
      v81 = v143;
      if (v142 == 2 && v143 == 3 && !(v138 | v76 | v75 | v77 | v139))
      {
        v82 = v75;
        v83 = sub_1A957C0C8();
        v84 = sub_1A957C0C8();
        v85 = sub_1A957C0C8();
        type metadata accessor for CoreSynthesizer();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v87 = [objc_opt_self() bundleForClass_];
        v88 = sub_1A957C0C8();

        v89 = AXNSLocalizedStringForLocale();

        if (v89)
        {
          sub_1A957C0F8();

          sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_1A9587160;
          v151 = v180;
          v152 = v181;
          v153 = v182;
          *&v170[15] = *(v179 + 15);
          v168 = v177;
          v169 = v178;
          *v170 = v179[0];
          v164 = v173;
          v165 = v174;
          v166 = v175;
          v167 = v176;
          v162 = v171;
          v149 = v140;
          v150 = v141;
          v154 = v183;
          v155 = 3;
          v156 = 0;
          v157 = 0;
          v158 = v82;
          v159 = v144;
          v160 = v139;
          v161 = 2;
          v163 = v172;
LABEL_23:
          v107 = CoreSynthesizer.Voice.localizedName.getter();
          v109 = v108;
          *(v90 + 56) = MEMORY[0x1E69E6158];
          *(v90 + 64) = sub_1A93B3A38();
          *(v90 + 32) = v107;
          *(v90 + 40) = v109;
          v99 = sub_1A957C138();

LABEL_30:
          v78 = v135;
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v81 = v143;
      LOBYTE(v149) = v143;
      v148 = 3;
      sub_1A93B3A8C();
      if ((sub_1A957C098() & 1) == 0)
      {
        v114 = sub_1A957C0C8();
        v115 = sub_1A957C0C8();
        v116 = sub_1A957C0C8();
        type metadata accessor for CoreSynthesizer();
        v117 = swift_getObjCClassFromMetadata();
        v118 = [objc_opt_self() bundleForClass_];
        v119 = sub_1A957C0C8();

        v120 = AXNSLocalizedStringForLocale();

        if (v120)
        {
          v99 = sub_1A957C0F8();

          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v100 = sub_1A957C0C8();
    v101 = sub_1A957C0C8();
    v102 = sub_1A957C0C8();
    type metadata accessor for CoreSynthesizer();
    v103 = swift_getObjCClassFromMetadata();
    v104 = [objc_opt_self() bundleForClass_];
    v105 = sub_1A957C0C8();

    v106 = AXNSLocalizedStringForLocale();

    if (v106)
    {
      sub_1A957C0F8();

      sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1A9587160;
      v151 = v180;
      v152 = v181;
      v153 = v182;
      *&v170[15] = *(v179 + 15);
      v163 = v172;
      v162 = v171;
      v167 = v176;
      v166 = v175;
      v165 = v174;
      v164 = v173;
      *v170 = v179[0];
      v169 = v178;
      v149 = v140;
      v150 = v141;
      v154 = v183;
      v155 = v81;
      v156 = v76;
      v157 = v138;
      v158 = v146;
      v159 = v144;
      v160 = v139;
      v161 = v80;
      v168 = v177;
      goto LABEL_23;
    }

LABEL_29:
    v99 = 0;
    goto LABEL_30;
  }

  v99 = v97;
LABEL_26:

LABEL_31:
  (v126)(v134, v78);
  return v99;
}

uint64_t CoreSynthesizer.Voice.localizedName.getter()
{
  v1 = v0;
  v2 = sub_1A957B308();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v5 = sub_1A957C0A8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v8 = v0[5];
  v9 = v0[6];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v1[9];
  v13 = (v1 + 121);
  v14 = *(v1 + 120);
  if (!*(v1 + 120))
  {
    v22 = v1[11];
    v23 = v1[10];
    v26 = v1[13];
    v28 = v1[14];
    v30 = v1[12];
    v24 = v1[9];
    sub_1A93B4FE8();
    sub_1A957C438();
    sub_1A957C438();
    if (v31 == v70 && v36 == v71)
    {
    }

    else
    {
      v16 = sub_1A957D3E8();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v34 = *v1;
    v38 = *(v1 + 1);
    *&v68[15] = *(v1 + 33);
    v62 = *(v1 + 217);
    v65 = *(v1 + 233);
    *v68 = *(v1 + 249);
    v50 = *(v1 + 153);
    v53 = *(v1 + 169);
    v56 = *(v1 + 185);
    v59 = *(v1 + 201);
    v44 = *v13;
    v41 = v1[4];
    v47 = *(v1 + 137);
    sub_1A93B3BF0();
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_14:
    *&v69[15] = *(v1 + 33);
    v35 = *v1;
    v39 = *(v1 + 1);
    v63 = *(v1 + 217);
    v66 = *(v1 + 233);
    *v69 = *(v1 + 249);
    v51 = *(v1 + 153);
    v54 = *(v1 + 169);
    v57 = *(v1 + 185);
    v60 = *(v1 + 201);
    v45 = *v13;
    v42 = v1[4];
    v48 = *(v1 + 137);
    return sub_1A93B42E8();
  }

  if (v14 != 1)
  {
    if (v14 != 2)
    {
      goto LABEL_19;
    }

    v15 = v1[11] | v1[10] | v1[12] | v1[13] | v1[14];
    if (v12 == 2 && !v15)
    {
      v25 = v1[13];
      v27 = v1[14];
      v29 = v1[12];
      v32 = *sub_1A9493CFC();
      sub_1A9387410();
      if (sub_1A957CD88())
      {
        v33 = *v1;
        v37 = *(v1 + 1);
        *&v67[15] = *(v1 + 33);
        v61 = *(v1 + 217);
        v64 = *(v1 + 233);
        *v67 = *(v1 + 249);
        v49 = *(v1 + 153);
        v52 = *(v1 + 169);
        v55 = *(v1 + 185);
        v58 = *(v1 + 201);
        v43 = *v13;
        v40 = v1[4];
        v46 = *(v1 + 137);
        return sub_1A93B42E8();
      }

LABEL_19:

      sub_1A957C0B8();
      type metadata accessor for CoreSynthesizer();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      sub_1A957B258();
      return sub_1A957C178();
    }

    if (v12 != 3 || v15)
    {
      goto LABEL_19;
    }
  }

  return v8;
}

unint64_t sub_1A93B3A38()
{
  result = qword_1EB386458;
  if (!qword_1EB386458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386458);
  }

  return result;
}

unint64_t sub_1A93B3A8C()
{
  result = qword_1EB386B80;
  if (!qword_1EB386B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B80);
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.sampleText.getter()
{
  v1 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v5 = &v10[-v4 - 8];
  memcpy(v10, v0, sizeof(v10));
  v6 = sub_1A957B308();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = CoreSynthesizer.Voice.sampleText(forLocale:)(v5);
  sub_1A937B960(v5, &qword_1EB386988, &qword_1A9587830);
  return v7;
}

id sub_1A93B3BF0()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[1];
  v77 = *v0;
  v78 = v7;
  v8 = *(v0 + 5);
  v79 = *(v0 + 4);
  v9 = *(v0 + 6);
  v10 = *(v0 + 232);
  v73 = *(v0 + 216);
  v74 = v10;
  v11 = *(v0 + 264);
  v75 = *(v0 + 248);
  v76 = v11;
  v12 = *(v0 + 168);
  v69 = *(v0 + 152);
  v70 = v12;
  v13 = *(v0 + 200);
  v71 = *(v0 + 184);
  v72 = v13;
  v14 = *(v0 + 104);
  v65 = *(v0 + 88);
  v66 = v14;
  v15 = *(v0 + 136);
  v67 = *(v0 + 120);
  v68 = v15;
  v16 = *(v0 + 72);
  v63 = *(v0 + 56);
  v64 = v16;
  v42 = objc_opt_self();
  result = [v42 sharedInstance];
  v43 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = *(v0 + 248);
  v62 = *(v0 + 264);
  v19 = v0[1];
  v44 = *v0;
  v45 = v19;
  v20 = *(v0 + 232);
  v59 = *(v0 + 216);
  v60 = v20;
  v61 = v18;
  v21 = *(v0 + 168);
  v55 = *(v0 + 152);
  v56 = v21;
  v22 = *(v0 + 200);
  v57 = *(v0 + 184);
  v58 = v22;
  v23 = *(v0 + 104);
  v51 = *(v0 + 88);
  v52 = v23;
  v24 = *(v0 + 136);
  v53 = *(v0 + 120);
  v54 = v24;
  v25 = *(v0 + 72);
  v49 = *(v0 + 56);
  v46 = *(v0 + 4);
  v47 = v8;
  v48 = v9;
  v50 = v25;
  CoreSynthesizer.Voice.primaryLocale.getter(v6);
  Locale.siriLocaleIdentifier.getter();
  v26 = v8;
  v27 = v6;
  v28 = *(v2 + 8);
  v40 = v2 + 8;
  v41 = v1;
  v28(v6, v1);
  v29 = sub_1A957C0C8();

  v30 = sub_1A957C0C8();
  v31 = v43;
  v32 = [v43 outputVoiceDescriptorForOutputLanguageCode:v29 voiceName:v30];

  if (v32)
  {
    goto LABEL_5;
  }

  v33 = v27;
  v34 = v41;
  result = [v42 sharedInstance];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v35 = result;
  v44 = v77;
  v45 = v78;
  v62 = v76;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v49 = v63;
  v46 = v79;
  v47 = v26;
  v48 = v9;
  v50 = v64;
  CoreSynthesizer.Voice.primaryLocale.getter(v33);
  Locale.siriLocaleIdentifier.getter();
  v28(v33, v34);
  v36 = sub_1A957C0C8();

  sub_1A957C1A8();
  v37 = sub_1A957C0C8();

  v32 = [v35 outputVoiceDescriptorForOutputLanguageCode:v36 voiceName:v37];

  if (v32)
  {
LABEL_5:
    v38 = [v32 localizedDisplay];

    if (v38)
    {
      v39 = sub_1A957C0F8();

      return v39;
    }
  }

  return 0;
}

uint64_t Locale.siriLocaleIdentifier.getter()
{
  v0 = sub_1A957B2E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v22 - v9;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v1 + 8))(v5, v0);
  v11 = sub_1A957B188();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1A937B960(v10, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    v13 = 0x41532D7261;
    v16 = sub_1A957B148();
    v18 = v17;
    (*(v12 + 8))(v10, v11);
    if (v16 == 29281 && v18 == 0xE200000000000000)
    {

      return v13;
    }

    v20 = sub_1A957D3E8();

    if (v20)
    {
      return v13;
    }
  }

  v13 = Locale.legacyIdentifier.getter();
  v15 = v14;
  if (sub_1A957C348())
  {
    v25 = v13;
    v26 = v15;
    v23 = 7236963;
    v24 = 0xE300000000000000;
LABEL_13:
    v22[0] = 26746;
    v22[1] = 0xE200000000000000;
    sub_1A93820F4();
    v13 = sub_1A957CD08();

    return v13;
  }

  if (sub_1A957C348())
  {
    v25 = v13;
    v26 = v15;
    v23 = 6649209;
    v24 = 0xE300000000000000;
    goto LABEL_13;
  }

  return v13;
}

uint64_t sub_1A93B42E8()
{
  v5 = *v0;
  v6 = v0[1];
  v1 = *(v0 + 5);
  v2 = *(v0 + 6);
  v21 = *(v0 + 264);
  v18 = *(v0 + 216);
  v19 = *(v0 + 232);
  v20 = *(v0 + 248);
  v14 = *(v0 + 152);
  v15 = *(v0 + 168);
  v16 = *(v0 + 184);
  v17 = *(v0 + 200);
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  v12 = *(v0 + 120);
  v13 = *(v0 + 136);
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  v7 = *(v0 + 4);
  result = sub_1A93B3BF0();
  if (!v4)
  {
    if (TTSIsInternalBuild())
    {
      sub_1A957CF08();

      MEMORY[0x1AC585140](v1, v2);
      MEMORY[0x1AC585140](0x454C204952495320, 0xEC0000007E7E4B41);
      return 32382;
    }

    else
    {
      return 2108704;
    }
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.localizedNameWithFootprint.getter()
{
  v1 = sub_1A957B308();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v4 = sub_1A957C0A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v61 = *v0;
  v62 = v0[1];
  v63 = v0[2];
  v64 = *(v0 + 6);
  v7 = *(v0 + 56);
  *&v60 = *(v0 + 57);
  v8 = *(v0 + 9);
  *(&v60 + 7) = *(v0 + 8);
  v10 = *(v0 + 10);
  v9 = *(v0 + 11);
  v12 = *(v0 + 12);
  v11 = *(v0 + 13);
  v13 = *(v0 + 14);
  *&v59[15] = *(v0 + 264);
  v58 = *(v0 + 233);
  *v59 = *(v0 + 249);
  v56 = *(v0 + 201);
  v57 = *(v0 + 217);
  v54 = *(v0 + 169);
  v55 = *(v0 + 185);
  v52 = *(v0 + 137);
  v53 = *(v0 + 153);
  v51 = *(v0 + 121);
  if (*(v0 + 120) != 2 || v9 | v10 | v8 | v12 | v11 | v13 && ((v8 - 1) > 1 || v9 | v10 | v12 | v11 | v13))
  {
    goto LABEL_9;
  }

  v35 = *(v0 + 13);
  v36 = *(v0 + 14);
  v33 = *(v0 + 11);
  v34 = *(v0 + 12);
  v31 = *(v0 + 10);
  v32 = *(v0 + 9);
  v14 = sub_1A9502D6C();
  v15 = TTSStringForSpeechFootprint(v14);
  if (!v15)
  {
LABEL_9:
    *&v50[15] = *(v0 + 264);
    v37 = *v0;
    v38 = v0[1];
    v39 = v0[2];
    v43 = *(v0 + 137);
    v42 = *(v0 + 121);
    v47 = *(v0 + 201);
    v46 = *(v0 + 185);
    v45 = *(v0 + 169);
    v44 = *(v0 + 153);
    *v50 = *(v0 + 249);
    v49 = *(v0 + 233);
    v40 = *(v0 + 6);
    *&v41 = *(v0 + 57);
    *(&v41 + 7) = *(v0 + 8);
    v48 = *(v0 + 217);
  }

  else
  {
    v16 = v15;
    sub_1A957C0F8();

    sub_1A93820F4();
    v17 = MEMORY[0x1E69E6158];
    sub_1A957CD08();

    v18 = sub_1A957C1B8();
    v20 = v19;

    sub_1A957CF08();

    MEMORY[0x1AC585140](0xD000000000000010, 0x80000001A95C10A0);

    sub_1A957C0B8();
    type metadata accessor for CoreSynthesizer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    sub_1A957B258();
    if (v18 == sub_1A957C178() && v20 == v23)
    {
    }

    else
    {
      v25 = sub_1A957D3E8();

      if ((v25 & 1) == 0)
      {
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1A9587160;
        v27 = CoreSynthesizer.Voice.localizedName.getter();
        v29 = v28;
        *(v26 + 56) = v17;
        *(v26 + 64) = sub_1A93B3A38();
        *(v26 + 32) = v27;
        *(v26 + 40) = v29;
        v30 = sub_1A957C138();

        return v30;
      }
    }
  }

  return CoreSynthesizer.Voice.localizedName.getter();
}

uint64_t sub_1A93B4A00()
{
  type metadata accessor for SampleStringOverrideCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EB392A08 = v0;
  return result;
}

unint64_t sub_1A93B4A64()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1A957BC88();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A957AFD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[3];
  v45 = sub_1A93B5060;
  v46 = v0;
  os_unfair_lock_lock(v14 + 4);
  sub_1A93B5080(&v47);
  os_unfair_lock_unlock(v14 + 4);
  result = v47;
  if (!v47)
  {
    v41 = v8;
    v42 = v7;
    v40 = v9;
    v43 = v3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = [objc_opt_self() bundleForClass_];
    v18 = sub_1A957C0C8();
    v19 = sub_1A957C0C8();
    v20 = [v17 URLForResource:v18 withExtension:v19];

    v21 = v44;
    if (v20)
    {
      sub_1A957AF98();

      v22 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v23 = sub_1A957AF58();
      v24 = [v22 initWithContentsOfURL_];

      if (v24)
      {
        v47 = 0;
        sub_1A957C028();

        if (v47)
        {
          v27 = MEMORY[0x1EEE9AC00](v25, v26);
          *(&v39 - 2) = v1;
          *(&v39 - 1) = v28;
          MEMORY[0x1EEE9AC00](v27, v29);
          *(&v39 - 2) = sub_1A93B50C4;
          *(&v39 - 1) = v30;
          v32 = v31;
          os_unfair_lock_lock(v14 + 4);
          sub_1A93B5100();
          os_unfair_lock_unlock(v14 + 4);
          (*(v40 + 8))(v13, v41);
          return v32;
        }
      }

      (*(v40 + 8))(v13, v41);
    }

    v33 = sub_1A93772F8();
    v35 = v42;
    v34 = v43;
    (*(v21 + 16))(v42, v33, v43);
    v36 = sub_1A957BC68();
    v37 = sub_1A957CA78();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1A9324000, v36, v37, "Failed to load sample dictionary", v38, 2u);
      MEMORY[0x1AC587CD0](v38, -1, -1);
    }

    (*(v21 + 8))(v35, v34);
    return sub_1A9381740(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1A93B4E9C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A93B4EDC(uint64_t a1, uint64_t a2)
{
  if (qword_1EB392A00 != -1)
  {
    swift_once();
  }

  v4 = sub_1A93B4A64();
  if (*(v4 + 16) && (v5 = sub_1A937A490(a1, a2), (v6 & 1) != 0))
  {
    v7 = (*(v4 + 56) + 16 * v5);
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

unint64_t sub_1A93B4F90()
{
  result = qword_1EB386490;
  if (!qword_1EB386490)
  {
    sub_1A957B188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386490);
  }

  return result;
}

unint64_t sub_1A93B4FE8()
{
  result = qword_1EB386B88;
  if (!qword_1EB386B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B88);
  }

  return result;
}

void *sub_1A93B5080@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_1A93B50C4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_1A93B5100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for VoiceLoadRunCondition(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for VoiceLoadRunCondition(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED96FCE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED96FCE0);
    }
  }
}

uint64_t sub_1A93B51CC()
{
  v0 = sub_1A937829C(&qword_1EB386B90, &unk_1A9588940);
  sub_1A9377618(v0, qword_1EB3A7BC0);
  sub_1A937731C(v0, qword_1EB3A7BC0);
  return sub_1A957BAA8();
}

uint64_t sub_1A93B5248(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet();
  v5 = *(v4 - 8);
  v68 = v4;
  v69 = v5;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v61 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v60 - v14;
  v16 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v60 - v19;
  v21 = sub_1A957B308();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v83, a1, sizeof(v83));
  sub_1A93B5960(a2, v20);
  v27 = *(v22 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    memcpy(v82, v83, sizeof(v82));
    CoreSynthesizer.Voice.primaryLocale.getter(v26);
    if (v27(v20, 1, v21) != 1)
    {
      sub_1A937B960(v20, &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v20, v21);
  }

  v65 = v22;
  v66 = v21;
  v72 = Locale.legacyIdentifier.getter();
  v67 = v28;
  sub_1A9470340();
  v62 = v30;
  v63 = v29;
  v80 = v29;
  v81 = v30;
  v79 = MEMORY[0x1E69E7CC0];
  v87 = v83[15];
  v84 = *&v83[9];
  v85 = *&v83[11];
  v86 = *&v83[13];
  if (!LOBYTE(v83[15]) || LOBYTE(v83[15]) == 2 && v84 == 1 && (v31 = vorrq_s8(v85, v86), !(*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | *(&v84 + 1))))
  {
    *v82 = *&v83[9];
    *&v82[16] = *&v83[11];
    *&v82[32] = *&v83[13];
    v82[48] = v83[15];
    v74 = 1;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    v78 = 2;
    sub_1A93B7280(&v84, v73);
    sub_1A93B72DC();
    v32 = sub_1A957C098();
    sub_1A93B183C(*v82, *&v82[8], *&v82[16], *&v82[24], *&v82[32], *&v82[40], v82[48]);
    v33 = "ax_gryphon_resource_order";
    if (v32)
    {
      v33 = "ax_compact_resource_order";
    }

    v34 = v33 - 32;
    v35 = Locale.siriLocaleIdentifier.getter();
    v37 = (off_1F1CEDFA8)(v35, v36, 0xD000000000000019, v34 | 0x8000000000000000);

    if (v37)
    {
      sub_1A93B5A34(v37);
    }
  }

  v64 = v26;
  result = (off_1F1CEDFB0)(v72, v67);
  v39 = result;
  v41 = v68;
  v40 = v69;
  v71 = *(result + 16);
  if (v71)
  {
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v42 >= *(v39 + 16))
      {
        __break(1u);
        return result;
      }

      v44 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v45 = *(v40 + 72);
      sub_1A93B59D0(v39 + v44 + v45 * v42, v15);
      v74 = *&v15[*(v41 + 28)];
      v46 = v87;
      if (v87)
      {
        if (v87 != 2 || (v47 = vorrq_s8(v85, v86), v48 = *&vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL)) | *(&v84 + 1), v84 == 1) && !v48)
        {
LABEL_22:
          v46 = 1;
          goto LABEL_23;
        }

        if (v84 != 4 || v48)
        {
          if (v84 != 5 || v48)
          {
            goto LABEL_22;
          }

          v46 = 3;
        }

        else
        {
          v46 = 2;
        }
      }

LABEL_23:
      v73[0] = v46;
      if ((sub_1A93B5CE8(v83[0], v83[1], v73) & 1) != 0 && v15[*(v41 + 44)] == 1)
      {
        sub_1A93B5FF0(v15, v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v82 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A93B60F4(0, *(v43 + 16) + 1, 1);
          v43 = *v82;
        }

        v51 = *(v43 + 16);
        v50 = *(v43 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_1A93B60F4(v50 > 1, v51 + 1, 1);
          v43 = *v82;
        }

        *(v43 + 16) = v51 + 1;
        result = sub_1A93B5FF0(v70, v43 + v44 + v51 * v45);
        v41 = v68;
        v40 = v69;
      }

      else
      {
        result = sub_1A93B5F94(v15);
      }

      if (v71 == ++v42)
      {
        goto LABEL_37;
      }
    }
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_37:

  v52 = *(v43 + 16);
  if (v52)
  {
    v53 = v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v54 = *(v40 + 72);
    v55 = v61;
    v56 = v66;
    v57 = v67;
    do
    {
      sub_1A93B59D0(v53, v55);
      sub_1A937B3DC(v83, v82);

      sub_1A93B6518(v55, v83, v72, v57);

      sub_1A937B48C(v83);
      v58 = sub_1A93B5F94(v55);
      MEMORY[0x1AC585360](v58);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A957C4F8();
        v56 = v66;
      }

      sub_1A957C538();
      v53 += v54;
      --v52;
    }

    while (v52);
  }

  else
  {

    v56 = v66;
  }

  (*(v65 + 8))(v64, v56);
  return v79;
}

uint64_t sub_1A93B5960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}