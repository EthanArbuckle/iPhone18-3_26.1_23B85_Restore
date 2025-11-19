uint64_t sub_100052978(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 56;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 56;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[56 * v11] <= a4)
    {
      memmove(a4, __dst, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
LABEL_45:
      v19 = v6;
    }

    else
    {
      do
      {
        v20 = 0;
        v21 = v12;
        while (1)
        {
          v12 = &v21[v20];
          v22 = (v5 + v20);
          v23 = (v5 + v20 - 56);
          if (v21[v20 - 24] == 1 && *(v6 - 24) == 0)
          {
            break;
          }

          if (*(v12 - 4) && *(v6 - 4) == 0)
          {
            break;
          }

          if (v22 != v12)
          {
            v26 = v12 - 56;
            v27 = *v26;
            v28 = *(v26 + 1);
            v29 = *(v26 + 2);
            *(v5 + v20 - 8) = *(v26 + 6);
            *(v5 + v20 - 40) = v28;
            *(v5 + v20 - 24) = v29;
            *v23 = v27;
          }

          v20 -= 56;
          v12 = &v21[v20];
          if (&v21[v20] <= v4)
          {
            goto LABEL_45;
          }
        }

        v19 = v6 - 56;
        if (v22 != v6)
        {
          v30 = *v19;
          v31 = *(v6 - 40);
          v32 = *(v6 - 24);
          *(v5 + v20 - 8) = *(v6 - 1);
          *(v5 + v20 - 40) = v31;
          *(v5 + v20 - 24) = v32;
          *v23 = v30;
        }

        if (v12 <= v4)
        {
          break;
        }

        v5 = v5 + v20 - 56;
        v6 -= 56;
      }

      while (v19 > v7);
      v12 = &v21[v20];
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v9] <= a4)
    {
      memmove(a4, __src, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        v13 = v6[32] == 1 && v4[32] == 0;
        if (v13)
        {
          break;
        }

        if (*(v6 + 3) && *(v4 + 3) == 0)
        {
          break;
        }

        v15 = v4;
        v13 = v7 == v4;
        v4 += 56;
        if (!v13)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v15 = v6;
      v13 = v7 == v6;
      v6 += 56;
      if (v13)
      {
        goto LABEL_20;
      }

LABEL_19:
      v16 = *v15;
      v17 = *(v15 + 1);
      v18 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v17;
      *(v7 + 2) = v18;
      *v7 = v16;
      goto LABEL_20;
    }

LABEL_22:
    v19 = v7;
  }

  v33 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v34 = (v33 >> 4) + (v33 >> 63);
  if (v19 != v4 || v19 >= &v4[56 * v34])
  {
    memmove(v19, v4, 56 * v34);
  }

  return 1;
}

uint64_t sub_100052C20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100052CAC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100052CC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA4B8, &unk_100083470);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100052DC4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    __chkstk_darwin(a1, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_100052F24(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_100053014(v13, v7, v3);

  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_100052F24(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if ((*(*(a3 + 48) + 40 * v10 + 32) & 1) == 0)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100053430(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_100053430(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100053014(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_100052F24(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_10005308C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = type metadata accessor for UUID();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v48, v10);
  v47 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v42 = &v37 - v14;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_100003F6C(&qword_1000BA550, &unk_100083520);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v39 = v8 + 16;
  v40 = result;
  v46 = v8 + 32;
  v19 = result + 64;
  v38 = a4;
  v41 = v8;
  v20 = v48;
  while (v17)
  {
    v21 = __clz(__rbit64(v17));
    v43 = (v17 - 1) & v17;
LABEL_16:
    v24 = v21 | (v18 << 6);
    v25 = a4[6];
    v45 = *(v8 + 72);
    v26 = v42;
    (*(v8 + 16))(v42, v25 + v45 * v24, v20);
    v49 = *(a4[7] + 16 * v24);
    v44 = *(v8 + 32);
    v44(v47, v26, v20);
    v16 = v40;
    v27 = *(v40 + 40);
    sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID);

    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v16 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v19 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v8 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v19 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v19 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v8 = v41;
LABEL_26:
    *(v19 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v44)(*(v16 + 48) + v31 * v45, v47, v48);
    *(*(v16 + 56) + 16 * v31) = v49;
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38;
    v17 = v43;
    if (!a3)
    {
      return v16;
    }
  }

  v22 = v18;
  while (1)
  {
    v18 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v23 = a1[v18];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v43 = (v23 - 1) & v23;
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

uint64_t sub_100053430(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v37 = v4;
  v38 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v39 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 40 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v42 = *(v18 + 32);
    v23 = (v17 + 16 * v16);
    v40 = v23[1];
    v41 = *v23;
    v24 = *(v23 + 1);
    v25 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    if (v22)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v42);
    result = Hasher._finalize()();
    v9 = v38;
    v26 = -1 << *(v38 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = *(v38 + 48) + 40 * v29;
    *v34 = v19;
    *(v34 + 8) = v20;
    *(v34 + 16) = v21;
    *(v34 + 24) = v22;
    *(v34 + 32) = v42;
    v35 = *(v38 + 56) + 16 * v29;
    *v35 = v41;
    *(v35 + 1) = v40;
    *(v35 + 8) = v24;
    ++*(v38 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v37;
    v10 = v39;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v39 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t (*sub_10005370C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_100053CC0(v8);
  v8[9] = sub_1000538C8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100054040;
}

uint64_t (*sub_1000537B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_100053CE8(v8);
  v8[9] = sub_100053A20(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100053864;
}

void sub_100053868(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t (*sub_1000538C8(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100020DA8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10006DC60();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10006C498(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100020DA8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100054044;
}

uint64_t (*sub_100053A20(void *a1, uint64_t a2, uint64_t a3, char a4))()
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_100020DA8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_10006E40C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10006D150(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_100020DA8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100053B78;
}

void sub_100053B7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_100053F94(*(v13 + 48) + 16 * v12);
      sub_10005194C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_100053CC0(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100054038;
}

uint64_t (*sub_100053CE8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100053D10;
}

uint64_t sub_100053D44(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100053DA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1000500B8();
  *a2 = v3;
}

unint64_t sub_100053DF0()
{
  result = qword_1000BA508;
  if (!qword_1000BA508)
  {
    sub_100004B50(&qword_1000B9178, &qword_100081BC0);
    sub_100020934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA508);
  }

  return result;
}

uint64_t sub_100053E74()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053EB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100053EEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100053F24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA548, &qword_1000834D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053FF0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_100054048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005406C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 83))
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

uint64_t sub_1000540B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 83) = 1;
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

    *(result + 83) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100054120(uint64_t a1)
{
  v2 = a1;
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.count.getter();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v58 = _swiftEmptyArrayStorage;
    sub_10004A9DC(0, v3 & ~(v3 >> 63), 0);
    v49 = _swiftEmptyArrayStorage;
    if (v41)
    {
      v4 = __CocoaDictionary.startIndex.getter();
    }

    else
    {
      v6 = -1 << *(v2 + 32);
      v4 = _HashTable.startBucket.getter();
      v5 = *(v2 + 36);
    }

    v55 = v4;
    v56 = v5;
    v57 = v41 != 0;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v38 = v1;
      v39 = v3;
      v40 = v2;
      while (!__OFADD__(v7, 1))
      {
        v8 = v57;
        v42 = v55;
        v43 = v56;
        v44 = v7 + 1;
        sub_100055AE4(&v54, v55, v56, v57, v2);
        v10 = v9;
        v11 = v54;
        v12 = [v9 bundleIdentifier];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v14;
        v48 = v13;

        v15 = [v10 teamIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v18;
          v46 = v17;
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }

        v19 = [v10 requiresSignatureValidation];
        v20 = [v11 allowsNetworkAccess];
        v21 = [v11 isRequired];
        v22 = [v11 configurationInfo];
        v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = v49;
        v58 = v49;
        v26 = v49[2];
        v25 = v49[3];
        if (v26 >= v25 >> 1)
        {
          sub_10004A9DC((v25 > 1), v26 + 1, 1);
          v24 = v58;
        }

        v24[2] = v26 + 1;
        v27 = &v24[7 * v26];
        v27[4] = v48;
        v27[5] = v47;
        v27[6] = v46;
        v27[7] = v45;
        *(v27 + 64) = v19;
        v28 = *&v53[3];
        *(v27 + 65) = *v53;
        *(v27 + 17) = v28;
        *(v27 + 72) = v20;
        *(v27 + 73) = v21;
        v29 = v51;
        *(v27 + 39) = v52;
        *(v27 + 74) = v29;
        v27[10] = v23;
        v49 = v24;
        if (v41)
        {
          v2 = v40;
          if (!v8)
          {
            goto LABEL_30;
          }

          v30 = v39;
          if (__CocoaDictionary.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_100003F6C(&qword_1000BA590, &unk_100083700);
          v37 = Dictionary.Index._asCocoa.modify();
          __CocoaDictionary.formIndex(after:isUnique:)();
          v37(v50, 0);
        }

        else
        {
          v2 = v40;
          sub_100055980(v42, v43, v8, v40);
          v32 = v31;
          v34 = v33;
          v36 = v35;
          sub_100019F1C(v42, v43, v8);
          v55 = v32;
          v56 = v34;
          v57 = v36 & 1;
          v30 = v39;
        }

        if (v44 == v30)
        {
          sub_100019F1C(v55, v56, v57);
          return;
        }

        ++v7;
        if (v44 >= v30)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1000544CC()
{
  v1 = *(v0 + 56);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 56) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v25 = *(v0 + 56);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v25 + 48) + 40 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = v13[3];
      v17 = (*(v25 + 56) + 16 * v12);
      v24 = *v17;
      v18 = v17[1];
      v19 = *(v17 + 1);
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v20)
      {

        goto LABEL_18;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_18:

    v23 = 256;
    if (!v18)
    {
      v23 = 0;
    }

    return v23 | v24;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v3 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000546A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_100003F6C(&qword_1000B91F0, &qword_100081CE8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v43 - v14;
  if (![a2 isEnabled])
  {
    goto LABEL_7;
  }

  v16 = [a2 configurationsByApplicationDescriptor];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  v45 = a5;
  v59 = a4;
  sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
  sub_100022884(0, &qword_1000BA570, AEAssessmentIndividualConfiguration_ptr);
  sub_100056760();
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [a2 mainIndividualConfiguration];
  if (!v19)
  {

    a4 = v59;
LABEL_7:
    sub_10005670C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
LABEL_8:

    v23 = a4;
    return sub_100003FB4(v23);
  }

  v20 = v19;
  v43 = v18;
  v21 = *(a3 + 128);
  swift_beginAccess();
  sub_100019D8C(v21 + 40, v47, &qword_1000BA580, &qword_1000836E0);
  a4 = v59;
  v44 = v20;
  if (v47[3])
  {
    sub_100030BD0(v47, v46);
    sub_10005682C(v47);
    sub_10000859C(v46, &v48);
    sub_100030C2C(v46);
    sub_100008748(&v48, &v51);
  }

  else
  {
    sub_100019B28(v47, &qword_1000BA580, &qword_1000836E0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v25 = a4;
    v26 = a4[3];
    v27 = v25[4];
    sub_100005A3C(v25, v26);
    (*(v27 + 8))(a1, v26, v27);
    v28 = type metadata accessor for AEAParticipant.Process(0);
    if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
    {
      sub_100019B28(v15, &qword_1000B91F0, &qword_100081CE8);
      v51 = 0u;
      v52 = 0u;
      v53 = 0;
    }

    else
    {
      *(&v52 + 1) = v28;
      v53 = sub_100004F28();
      v29 = sub_100004F80(&v51);
      sub_1000567C8(v15, v29);
    }

    a4 = v59;
    v20 = v44;
    if (*(&v49 + 1))
    {
      sub_100019B28(&v48, &qword_1000BA588, &qword_1000836E8);
    }
  }

  if (!*(&v52 + 1))
  {

    sub_100019B28(&v51, &qword_1000BA588, &qword_1000836E8);
    sub_10005670C();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  sub_100008748(&v51, v54);
  v30 = [v20 allowsNetworkAccess];
  v31 = [v20 isRequired];
  v32 = [v20 configurationInfo];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000859C(v54, v55);
  BYTE8(v56) = v30;
  BYTE9(v56) = v31;
  *&v57 = v33;
  sub_100054120(v43);
  v35 = v34;

  if (*(v35 + 16))
  {
    sub_100003F6C(&qword_1000B8888, &unk_1000836F0);
    v36 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v36 = _swiftEmptyDictionarySingleton;
  }

  v38 = v45;
  v47[0] = v36;

  sub_1000555F8(v39, 1, v47);
  if (!v5)
  {

    *(&v57 + 1) = v47[0];
    v58[0] = [a2 allowsAutoCorrection];
    v58[1] = [a2 allowsSmartPunctuation];
    v58[2] = [a2 allowsSpellCheck];
    v58[3] = [a2 allowsPredictiveKeyboard];
    v58[4] = [a2 allowsKeyboardShortcuts];
    v58[5] = [a2 allowsActivityContinuation];
    v58[6] = [a2 allowsDictation];
    v58[7] = [a2 allowsAccessibilityKeyboard];
    v58[8] = [a2 allowsAccessibilityLiveCaptions];
    v58[9] = [a2 allowsAccessibilityReader];
    v58[10] = [a2 allowsAccessibilitySpeech];
    v58[11] = [a2 allowsAccessibilityTypingFeedback];
    v58[12] = [a2 allowsPasswordAutoFill];
    v58[13] = [a2 allowsContinuousPathKeyboard];
    v58[14] = [a2 allowsKeyboardMathSolving];
    v58[15] = [a2 allowsMathPaperSolving];
    v58[16] = [a2 allowsScreenshots];
    v58[17] = [a2 _allowsNetworkAccess];
    v40 = [a2 _allowsContentCapture];

    sub_100003FB4(v54);
    v58[18] = v40;
    v41 = v57;
    *(v38 + 32) = v56;
    *(v38 + 48) = v41;
    *(v38 + 64) = *v58;
    *(v38 + 79) = *&v58[15];
    v42 = v55[1];
    *v38 = v55[0];
    *(v38 + 16) = v42;
    v23 = v59;
    return sub_100003FB4(v23);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

BOOL sub_100054D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 == v9;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 == v9;
  }

  return result;
}

Swift::Int sub_100054E40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_100054ED8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_100054F40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

BOOL sub_100054FD4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = *a2;
  v12 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v14._countAndFlagsBits = v11;
  v14._object = v10;
  v15._countAndFlagsBits = v13;
  v15._object = v12;
  v16 = String.StandardComparator.compare(_:_:)(v14, v15);
  (*(v5 + 8))(v9, v4);
  return v16 == NSOrderedAscending;
}

BOOL sub_1000550D8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = *a2;
  v12 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v14._countAndFlagsBits = v13;
  v14._object = v12;
  v15._countAndFlagsBits = v11;
  v15._object = v10;
  v16 = String.StandardComparator.compare(_:_:)(v14, v15);
  (*(v5 + 8))(v9, v4);
  return v16 != NSOrderedAscending;
}

BOOL sub_1000551DC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = *a2;
  v12 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v14._countAndFlagsBits = v11;
  v14._object = v10;
  v15._countAndFlagsBits = v13;
  v15._object = v12;
  v16 = String.StandardComparator.compare(_:_:)(v14, v15);
  (*(v5 + 8))(v9, v4);
  return v16 != NSOrderedAscending;
}

BOOL sub_1000552E0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for String.StandardComparator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v13 = *a2;
  v12 = a2[1];
  static String.StandardComparator.localizedStandard.getter();
  v14._countAndFlagsBits = v13;
  v14._object = v12;
  v15._countAndFlagsBits = v11;
  v15._object = v10;
  v16 = String.StandardComparator.compare(_:_:)(v14, v15);
  (*(v5 + 8))(v9, v4);
  return v16 == NSOrderedAscending;
}

uint64_t sub_1000553E4@<X0>(uint64_t *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2);
  v5 = *a1;
  v6 = a1[1];
  v7 = objc_allocWithZone(LSApplicationRecord);
  swift_bridgeObjectRetain_n();
  v8 = sub_10005B030(v5, v6, 0);
  v20[3] = sub_100022884(0, &qword_1000B9F48, LSApplicationRecord_ptr);
  v20[4] = &off_1000A8258;
  v20[0] = v8;
  sub_100019D8C(v20, v17, &qword_1000BA558, "ĳ");
  v9 = v18;
  if (v18)
  {
    v10 = v19;
    sub_100005A3C(v17, v18);
    v9 = (*(v10 + 16))(v9, v10);
    v12 = v11;
    sub_100003FB4(v17);
  }

  else
  {
    sub_100019B28(v17, &qword_1000BA558, "ĳ");
    v12 = 0xE000000000000000;
  }

  sub_100019D8C(v20, v17, &qword_1000BA558, "ĳ");
  v13 = v18;
  if (v18)
  {
    v14 = v19;
    sub_100005A3C(v17, v18);
    v15 = (*(v14 + 24))(v13, v14);
    sub_100019B28(v20, &qword_1000BA558, "ĳ");
    result = sub_100003FB4(v17);
  }

  else
  {
    sub_100019B28(v20, &qword_1000BA558, "ĳ");
    result = sub_100019B28(v17, &qword_1000BA558, "ĳ");
    v15 = 2;
  }

  *a3 = v9;
  *(a3 + 8) = v12;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3 & 1;
  *(a3 + 33) = v15;
  return result;
}

uint64_t sub_1000555F8(uint64_t a1, char a2, uint64_t *a3)
{
  v46 = a3;
  v33 = *(a1 + 16);
  if (!v33)
  {
  }

  v5 = 0;
  for (i = 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_21;
    }

    v7 = *(a1 + i + 16);
    v37 = *(a1 + i);
    v38 = v7;
    v39 = *(a1 + i + 32);
    v8 = *(a1 + i + 48);
    v40 = v8;
    v34 = v7;
    v35 = v37;
    v9 = v39;
    v10 = BYTE8(v39);
    v11 = BYTE9(v39);
    sub_100019D8C(&v37, v36, &qword_1000BA188, &qword_1000832E0);
    if (!*(&v35 + 1))
    {
    }

    v41 = v35;
    v42 = v34;
    v43 = v9;
    LOBYTE(v39) = v9;
    v37 = v35;
    v38 = v34;
    v12 = *v46;
    v13 = sub_100020EB0(&v41);
    v15 = *(v12 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_18;
    }

    v19 = v14;
    if (*(v12 + 24) >= v18)
    {
      if ((a2 & 1) == 0)
      {
        v29 = v13;
        sub_10006E25C();
        v13 = v29;
      }
    }

    else
    {
      v20 = v46;
      sub_10006CE1C(v18, a2 & 1);
      v21 = *v20;
      v13 = sub_100020EB0(&v41);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }
    }

    v44 = v41;
    v45 = v42;
    if (v19)
    {
      break;
    }

    v23 = *v46;
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v24 = v23[6] + 40 * v13;
    v25 = v42;
    *v24 = v41;
    *(v24 + 16) = v25;
    *(v24 + 32) = v43;
    v26 = v23[7] + 16 * v13;
    *v26 = v10 & 1;
    *(v26 + 1) = v11 & 1;
    *(v26 + 8) = v8;
    v27 = v23[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    ++v5;
    v23[2] = v28;
    a2 = 1;
    if (v33 == v5)
    {
    }
  }

  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_100053F94(&v44);
    sub_100019B28(&v45, &qword_1000BA548, &qword_1000834D0);
  }

LABEL_21:
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v31._object = 0x8000000100089E20;
  v31._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v31);
  _print_unlocked<A, B>(_:_:)();
  v32._countAndFlagsBits = 39;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100055980(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
      swift_dynamicCast();
      sub_10002102C(v8);
      v6 = v5;

      if (v6)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
  v7 = *(a4 + 36);
}

void sub_100055AE4(void *a1, unint64_t a2, int a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
      swift_dynamicCast();
      sub_100022884(0, &qword_1000BA570, AEAssessmentIndividualConfiguration_ptr);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  sub_100022884(0, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
  swift_dynamicCast();
  a2 = sub_10002102C(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

uint64_t sub_100055CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  v95 = a3;
  sub_10006FAA8(v6);
  v7 = sub_10004C1E0(a2);

  result = a1;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  v99 = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

  v11 = 0;
  v97 = result + 32;
  v98 = result;
  v111 = v7 + 56;
  v101 = v7;
  do
  {
    v100 = v10;
    while (1)
    {
      if (v11 >= *(result + 16))
      {
LABEL_81:
        __break(1u);
        return result;
      }

      v12 = v97 + 40 * v11;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 24);
      v16 = *(v12 + 32);
      v17 = *(v12 + 33);
      v102 = v11 + 1;
      v104 = *(v12 + 33);
      v108 = *(v12 + 16);
      v107 = v16;
      if (!*(v7 + 16))
      {
        break;
      }

      v18 = *(v7 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v17);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      if (((*(v111 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_28;
      }

      v22 = ~v20;
      v23 = *(v101 + 48);
      while (1)
      {
        v26 = v23 + 40 * v21;
        v27 = *(v26 + 16);
        v28 = *(v26 + 24);
        v29 = *(v26 + 32);
        v30 = *(v26 + 33);
        v31 = *v26 == v14 && *(v26 + 8) == v13;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_13;
        }

        if (v27 == v108 && v28 == v15)
        {
          v24 = v107 == v29;
          goto LABEL_9;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

LABEL_13:
        v21 = (v21 + 1) & v22;
        if (((*(v111 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v24 = v107 == v29;
LABEL_9:
      if (!v24 || v30 != v104)
      {
        goto LABEL_13;
      }

      v10 = v100;
      v7 = v101;
      v11 = v102;
      result = v98;
      if (v102 == v99)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v10 = v100;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10004A8EC(0, v100[2] + 1, 1);
      v10 = v100;
    }

    result = v98;
    v7 = v101;
    v11 = v102;
    v34 = v10[2];
    v33 = v10[3];
    if (v34 >= v33 >> 1)
    {
      sub_10004A8EC((v33 > 1), v34 + 1, 1);
      result = v98;
      v10 = v100;
    }

    v10[2] = v34 + 1;
    v35 = &v10[5 * v34];
    v35[4] = v14;
    v35[5] = v13;
    v35[6] = v108;
    v35[7] = v15;
    *(v35 + 64) = v107;
    *(v35 + 65) = v104;
  }

  while (v102 != v99);
LABEL_33:

  v36 = v10[2];
  if (v36)
  {
    sub_10004A8CC(0, v36, 0);
    v37 = v10 + 7;
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v41 = _swiftEmptyArrayStorage[2];
      v40 = _swiftEmptyArrayStorage[3];

      if (v41 >= v40 >> 1)
      {
        sub_10004A8CC((v40 > 1), v41 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v41 + 1;
      v42 = &_swiftEmptyArrayStorage[2 * v41];
      v42[4] = v39;
      v42[5] = v38;
      v37 += 5;
      --v36;
    }

    while (v36);
  }

  v43 = *(a2 + 16);
  if (v43)
  {
    sub_10004A8CC(0, v43, 0);
    v44 = (a2 + 56);
    do
    {
      v46 = *(v44 - 1);
      v45 = *v44;
      v48 = _swiftEmptyArrayStorage[2];
      v47 = _swiftEmptyArrayStorage[3];

      if (v48 >= v47 >> 1)
      {
        sub_10004A8CC((v47 > 1), v48 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v48 + 1;
      v49 = &_swiftEmptyArrayStorage[2 * v48];
      v49[4] = v46;
      v49[5] = v45;
      v44 += 5;
      --v43;
    }

    while (v43);
  }

  v50 = *(v95 + 16);
  if (v50)
  {
    sub_10004A8CC(0, v50, 0);
    v51 = (v95 + 56);
    do
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v55 = _swiftEmptyArrayStorage[2];
      v54 = _swiftEmptyArrayStorage[3];

      if (v55 >= v54 >> 1)
      {
        sub_10004A8CC((v54 > 1), v55 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v55 + 1;
      v56 = &_swiftEmptyArrayStorage[2 * v55];
      v56[4] = v53;
      v56[5] = v52;
      v51 += 5;
      --v50;
    }

    while (v50);
  }

  v57 = 0;
  result = a2;
  v58 = *(a2 + 16);
LABEL_49:
  v59 = 40 * v57;
  while (v58 != v57)
  {
    if (v57 >= *(result + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    ++v57;
    v60 = v59 + 40;
    v61 = *(result + v59 + 64);
    v59 += 40;
    if (v61)
    {
      v63 = *(result + v60 - 8);
      v62 = *(result + v60);
      v64 = *(result + v60 + 16);
      v105 = *(result + v60 + 8);
      v65 = *(result + v60 + 25);

      v109 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004A8EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v67 = _swiftEmptyArrayStorage[2];
      v66 = _swiftEmptyArrayStorage[3];
      if (v67 >= v66 >> 1)
      {
        sub_10004A8EC((v66 > 1), v67 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v67 + 1;
      v68 = &_swiftEmptyArrayStorage[5 * v67];
      v68[4] = v63;
      v68[5] = v62;
      v68[6] = v105;
      v68[7] = v64;
      *(v68 + 64) = 1;
      *(v68 + 65) = v109;
      result = a2;
      goto LABEL_49;
    }
  }

  v69 = _swiftEmptyArrayStorage[2];
  if (v69)
  {
    sub_10004A8CC(0, v69, 0);
    v70 = &_swiftEmptyArrayStorage[7];
    do
    {
      v71 = *(v70 - 1);
      v72 = *v70;
      v74 = _swiftEmptyArrayStorage[2];
      v73 = _swiftEmptyArrayStorage[3];

      if (v74 >= v73 >> 1)
      {
        sub_10004A8CC((v73 > 1), v74 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v74 + 1;
      v75 = &_swiftEmptyArrayStorage[2 * v74];
      v75[4] = v71;
      v75[5] = v72;
      v70 += 5;
      --v69;
    }

    while (v69);
  }

  v76 = 0;
  result = v95;
  v77 = *(v95 + 16);
LABEL_64:
  v78 = 40 * v76;
  while (v77 != v76)
  {
    if (v76 >= *(result + 16))
    {
      goto LABEL_80;
    }

    ++v76;
    v79 = v78 + 40;
    v80 = *(result + v78 + 64);
    v78 += 40;
    if (v80)
    {
      v81 = *(result + v79);
      v82 = *(result + v79 + 16);
      v103 = *(result + v79 + 8);
      v106 = *(result + v79 - 8);
      v83 = *(result + v79 + 25);

      v110 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10004A8EC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v85 = _swiftEmptyArrayStorage[2];
      v84 = _swiftEmptyArrayStorage[3];
      result = v95;
      if (v85 >= v84 >> 1)
      {
        sub_10004A8EC((v84 > 1), v85 + 1, 1);
        result = v95;
      }

      _swiftEmptyArrayStorage[2] = v85 + 1;
      v86 = &_swiftEmptyArrayStorage[5 * v85];
      v86[4] = v106;
      v86[5] = v81;
      v86[6] = v103;
      v86[7] = v82;
      *(v86 + 64) = 1;
      *(v86 + 65) = v110;
      goto LABEL_64;
    }
  }

  v87 = _swiftEmptyArrayStorage[2];
  if (v87)
  {
    sub_10004A8CC(0, v87, 0);
    v88 = &_swiftEmptyArrayStorage[7];
    do
    {
      v89 = *(v88 - 1);
      v90 = *v88;
      v91 = _swiftEmptyArrayStorage[2];
      v92 = _swiftEmptyArrayStorage[3];

      if (v91 >= v92 >> 1)
      {
        sub_10004A8CC((v92 > 1), v91 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v91 + 1;
      v93 = &_swiftEmptyArrayStorage[2 * v91];
      v93[4] = v89;
      v93[5] = v90;
      v88 += 5;
      --v87;
    }

    while (v87);
  }

  *a4 = _swiftEmptyArrayStorage;
  a4[1] = _swiftEmptyArrayStorage;
  a4[2] = _swiftEmptyArrayStorage;
  a4[3] = _swiftEmptyArrayStorage;
  a4[4] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_100056564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000565AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100056604(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100056618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_100056660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000566B4()
{
  result = qword_1000BA560;
  if (!qword_1000BA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA560);
  }

  return result;
}

unint64_t sub_10005670C()
{
  result = qword_1000BA568;
  if (!qword_1000BA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA568);
  }

  return result;
}

unint64_t sub_100056760()
{
  result = qword_1000BA578;
  if (!qword_1000BA578)
  {
    sub_100022884(255, &qword_1000B88C8, AEAssessmentApplicationDescriptor_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA578);
  }

  return result;
}

uint64_t sub_1000567C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056870()
{
  result = qword_1000BA598;
  if (!qword_1000BA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA598);
  }

  return result;
}

void *sub_1000568F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004A8CC(0, v1, 0);
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 40 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10004A8CC((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_10001A784(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_10001A784(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100056B48(uint64_t a1)
{
  sub_100057C18();
  swift_getKeyPath();
  swift_getKeyPath();
  v8[0] = a1;

  static Published.subscript.setter();
  swift_beginAccess();
  sub_100019D8C(v1 + 96, v8, &qword_1000BA880, &qword_1000838F8);
  if (v8[3])
  {
    sub_10000859C(v8, v7);
    sub_100019B28(v8, &qword_1000BA880, &qword_1000838F8);
    v3 = *sub_100005A3C(v7, v7[3]);
    v4 = sub_1000568F4(a1);
    v5 = sub_10004C148(v4);

    sub_100031A84(v5);

    return sub_100003FB4(v7);
  }

  else
  {

    return sub_100019B28(v8, &qword_1000BA880, &qword_1000838F8);
  }
}

uint64_t sub_100056C98()
{
  v1 = v0;
  v2 = sub_100003F6C(&qword_1000B9188, &qword_100081CA0);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  __chkstk_darwin(v2, v4);
  v41 = &v40 - v5;
  v6 = sub_100003F6C(&qword_1000BA888, &unk_100083998);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v40 - v9;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C370(v11, qword_1000BC548);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Resuming participant matching", v14, 2u);
  }

  v15 = type metadata accessor for AEAConcreteRunningBoardPrimitives.RunningApplicationMonitor();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  *(v18 + 16) = [objc_allocWithZone(RBSProcessMonitor) init];
  v48[0] = &_swiftEmptySetSingleton;
  v19 = sub_100003F6C(&qword_1000B95F8, &qword_100082260);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(v18 + 24) = CurrentValueSubject.init(_:)();
  v22 = OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_browsingToken;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(v18 + v22, 1, 1, v23);
  *(v18 + OBJC_IVAR____TtCC15assessmentagent33AEAConcreteRunningBoardPrimitives25RunningApplicationMonitor_currentMonitoredBundleIDs) = &_swiftEmptySetSingleton;
  v49 = v15;
  v50 = &off_1000A86D8;
  v48[0] = v18;
  v24 = sub_100005A3C(v48, v15);
  sub_100057C18();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = *v24;
  v26 = sub_1000568F4(v45);
  v27 = sub_10004C148(v26);

  sub_100031A84(v27);

  sub_10000859C(v48, &v45);
  swift_beginAccess();
  sub_100058714(&v45, v1 + 96);
  swift_endAccess();
  sub_100005A3C(v48, v49);
  *&v45 = sub_1000330D8();
  sub_100003F6C(&qword_1000BA890, &qword_1000839F0);
  sub_100004EE0(&qword_1000BA898, &qword_1000BA890, &qword_1000839F0);
  sub_100004EE0(&qword_1000BA8A0, &qword_1000BA8A8, &qword_1000839F8);
  Publisher<>.removeDuplicates()();

  sub_10000859C(v1 + 56, &v45);
  v28 = swift_allocObject();
  sub_100008748(&v45, v28 + 16);
  v29 = &v10[*(v6 + 76)];
  *v29 = sub_10005881C;
  v29[1] = v28;
  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000BA8B0, &qword_1000BA888, &unk_100083998);
  Publisher<>.sink(receiveValue:)();

  sub_100019B28(v10, &qword_1000BA888, &unk_100083998);
  swift_beginAccess();
  sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
  sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0);
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  v30 = sub_100057DCC();
  v31 = *(v30 + 16);
  if (v31)
  {
    v44 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v32 = v30 + 32;
    do
    {
      sub_10000859C(v32, &v45);
      v33 = v46;
      v34 = v47;
      sub_100005A3C(&v45, v46);
      (*(v34 + 8))(v33, v34);
      sub_100003FB4(&v45);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v35 = v44[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 += 40;
      --v31;
    }

    while (v31);

    v36 = v44;
  }

  else
  {

    v36 = _swiftEmptyArrayStorage;
  }

  *&v45 = v36;
  sub_100003F6C(&qword_1000B91D0, &qword_100081CD0);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000B91D8, &qword_1000B91D0, &qword_100081CD0);
  v37 = v41;
  Publisher.map<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_100004EE0(&qword_1000B91E0, &qword_1000B9188, &qword_100081CA0);
  v38 = v43;
  Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v37, v38);
  swift_beginAccess();
  AnyCancellable.store<A>(in:)();
  swift_endAccess();

  return sub_100003FB4(v48);
}

uint64_t sub_1000574B0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100057548(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = qword_1000B6430;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C370(v4, qword_1000BC548);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      sub_10002C1E4();
      v9 = Set.description.getter();
      v11 = sub_100043D60(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Publishing Participants: %{public}s", v7, 0xCu);
      sub_100003FB4(v8);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v1;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100057718()
{
  v1 = v0;
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC548);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Suspending participant matching", v5, 2u);
  }

  swift_beginAccess();
  sub_100019D8C(v1 + 96, &v18, &qword_1000BA880, &qword_1000838F8);
  if (*(&v19 + 1))
  {
    sub_10000859C(&v18, v17);
    sub_100019B28(&v18, &qword_1000BA880, &qword_1000838F8);
    v6 = *sub_100005A3C(v17, v17[3]);
    sub_100032B7C();
    sub_100003FB4(v17);
  }

  else
  {
    sub_100019B28(&v18, &qword_1000BA880, &qword_1000838F8);
  }

  *&v20 = 0;
  v18 = 0u;
  v19 = 0u;
  swift_beginAccess();
  sub_100058714(&v18, v1 + 96);
  swift_endAccess();
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v18 = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v18 = v10;
    *v9 = 136446210;
    sub_10002C1E4();
    v11 = Set.description.getter();
    v13 = sub_100043D60(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Publishing Participants: %{public}s", v9, 0xCu);
    sub_100003FB4(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  *&v18 = &_swiftEmptySetSingleton;

  static Published.subscript.setter();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_100057B2C();
  sub_100019D8C(&v18, v17, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v17, &v16, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(v17, &qword_1000BBFF0, &qword_100081B30);
  sub_100019B28(&v18, &qword_1000BBFF0, &qword_100081B30);
  v14 = sub_100022574(_swiftEmptyArrayStorage);
  return sub_100056B48(v14);
}

uint64_t sub_100057B2C()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource);
  }

  else
  {
    v3 = type metadata accessor for AEAMainParticipantSource();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v2 = swift_allocObject();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_100019D8C(v9, v8, &qword_1000BBFF0, &qword_100081B30);
    sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
    Published.init(initialValue:)();
    sub_100019B28(v9, &qword_1000BBFF0, &qword_100081B30);
    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100057C18()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v15 - v5;
  v7 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource))
  {
    v8 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource);
  }

  else
  {
    swift_beginAccess();
    sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
    v9 = v0;
    Published.projectedValue.getter();
    swift_endAccess();
    v10 = type metadata accessor for AEAConfigurationParticipantSource();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v8 = swift_allocObject();
    v15[1] = _swiftEmptyDictionarySingleton;
    sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
    Published.init(initialValue:)();
    (*(v2 + 32))(v8 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v6, v1);
    v13 = *(v9 + v7);
    *(v9 + v7) = v8;
  }

  return v8;
}

uint64_t sub_100057DCC()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources;
  if (*(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources);
  }

  else
  {
    sub_100003F6C(&qword_1000B9158, &qword_100081B98);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100083800;
    v3 = sub_100057B2C();
    *(v2 + 56) = type metadata accessor for AEAMainParticipantSource();
    *(v2 + 64) = &off_1000A9A28;
    *(v2 + 32) = v3;
    v4 = sub_100057C18();
    *(v2 + 96) = type metadata accessor for AEAConfigurationParticipantSource();
    *(v2 + 104) = &off_1000A96A0;
    *(v2 + 72) = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100057E9C()
{
  sub_100003FB4((v0 + 16));
  sub_100003FB4((v0 + 56));
  sub_100019B28(v0 + 96, &qword_1000BA880, &qword_1000838F8);
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__participants;
  v4 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager_subscriptions);

  v6 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource);

  v7 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource);

  v8 = *(v0 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources);

  return v0;
}

uint64_t sub_100057FBC()
{
  sub_100057E9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAiOSParticipantManager()
{
  result = qword_1000BA690;
  if (!qword_1000BA690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100058068()
{
  sub_10002B688(319, &qword_1000B8EA0, &unk_1000B7360, &unk_100081AA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002B688(319, &qword_1000B8EB8, &qword_1000B7418, &qword_100081AB0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100058194()
{
  v0 = sub_100003F6C(&qword_1000B9130, &qword_100081B80);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v14 - v4;
  v6 = sub_100003F6C(&qword_1000B9138, &qword_100081B88);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000B9148, &qword_1000B9130, &qword_100081B80);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0);
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v5, v0);
  sub_100004EE0(&qword_1000B9150, &qword_1000B9138, &qword_100081B88);
  v12 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v11, v6);
  return v12;
}

uint64_t sub_100058410()
{
  sub_100057B2C();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100058498(uint64_t a1)
{
  sub_100057B2C();
  sub_100019D8C(a1, v4, &qword_1000BBFF0, &qword_100081B30);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100019D8C(v4, &v3, &qword_1000BBFF0, &qword_100081B30);
  static Published.subscript.setter();
  sub_100019B28(a1, &qword_1000BBFF0, &qword_100081B30);
  return sub_100019B28(v4, &qword_1000BBFF0, &qword_100081B30);
}

uint64_t sub_100058568()
{
  v0 = type metadata accessor for AEAAuxiliaryParticipantAggregatorSource();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  UUID.init()();
  v4 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v5 = sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v3 + v4) = CurrentValueSubject.init(_:)();
  return v3;
}

uint64_t sub_100058610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10005868C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  sub_10002BFA4();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100058714(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA880, &qword_1000838F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000587E4()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005881C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v1[5];
  v4 = v1[6];
  sub_100005A3C(v1 + 2, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

uint64_t sub_100058888()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000588D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100058948()
{
  v0 = sub_100003F6C(&qword_1000BA9B0, &qword_100083A38);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v35 - v4;
  v35 = sub_100003F6C(&qword_1000BA9B8, &qword_100083A40);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v35, v8);
  v10 = &v35 - v9;
  v11 = sub_100003F6C(&qword_1000BA9C0, &qword_100083A48);
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v35 - v15;
  v17 = sub_100003F6C(&qword_1000BA9C8, &qword_100083A50);
  v18 = *(v17 - 8);
  v40 = v17;
  v41 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v35 - v21;
  v23 = sub_100003F6C(&qword_1000BA9D0, &qword_100083A58);
  v24 = *(v23 - 8);
  v38 = v23;
  v39 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v35 - v27;
  swift_beginAccess();
  sub_100003F6C(&qword_1000BA9D8, &qword_100083A60);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000BA9E0, &qword_1000BA9B0, &qword_100083A38);
  sub_10005926C();
  Publisher<>.removeDuplicates()();
  (*(v1 + 8))(v5, v0);
  sub_100003F6C(&qword_1000BBFF0, &qword_100081B30);
  sub_100004EE0(&qword_1000BA9F0, &qword_1000BA9B8, &qword_100083A40);
  v29 = v35;
  Publisher.map<A>(_:)();
  (*(v6 + 8))(v10, v29);
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  v30 = v36;
  Publishers.Map.map<A>(_:)();
  (*(v37 + 8))(v16, v30);
  sub_100004EE0(&qword_1000BA9F8, &qword_1000BA9C8, &qword_100083A50);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0);
  v31 = v40;
  Publisher<>.removeDuplicates()();
  (*(v41 + 8))(v22, v31);
  sub_100004EE0(&qword_1000BAA00, &qword_1000BA9D0, &qword_100083A58);
  v32 = v38;
  v33 = Publisher.eraseToAnyPublisher()();
  (*(v39 + 8))(v28, v32);
  return v33;
}

void sub_100058E98()
{
  if (qword_1000B6430 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC548);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Main participant did change", v2, 2u);
  }
}

uint64_t sub_100058F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100026B2C(a1, &v6);
  if (*(&v7 + 1))
  {
    v10[0] = v6;
    v10[1] = v7;
    v10[2] = v8;
    v11 = v9;
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000807D0;
    sub_100030BD0(v10, inited + 32);
    v4 = sub_10004C3EC(inited);
    swift_setDeallocating();
    sub_100030C2C(inited + 32);
    result = sub_100030C2C(v10);
  }

  else
  {
    sub_1000353E0(&v6);
    result = sub_10004C3EC(_swiftEmptyArrayStorage);
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100059058()
{
  v1 = OBJC_IVAR____TtC15assessmentagent24AEAMainParticipantSource__mainParticipant;
  v2 = sub_100003F6C(&qword_1000BA9D8, &qword_100083A60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAMainParticipantSource()
{
  result = qword_1000BA8E8;
  if (!qword_1000BA8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059154()
{
  sub_1000591E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000591E4()
{
  if (!qword_1000BA8F8)
  {
    sub_100004B50(&qword_1000BBFF0, &qword_100081B30);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000BA8F8);
    }
  }
}

unint64_t sub_10005926C()
{
  result = qword_1000BA9E8;
  if (!qword_1000BA9E8)
  {
    sub_100004B50(&qword_1000BBFF0, &qword_100081B30);
    sub_10001FC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA9E8);
  }

  return result;
}

uint64_t sub_1000592F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void *a7)
{
  v45 = a6;
  v46 = a4;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC5B8;
  *v17 = qword_1000BC5B8;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2)
  {
    *(a3 + 144) = 0;
    swift_errorRetain();
    if (qword_1000B6420 == -1)
    {
LABEL_6:
      v21 = type metadata accessor for Logger();
      sub_10000C370(v21, qword_1000BC518);
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136446210;
        swift_getErrorValue();
        v26 = sub_100067820(v47);
        v28 = sub_100043D60(v26, v27, &v48);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "An error occurred while beginning the session. Error: %{public}s", v24, 0xCu);
        sub_100003FB4(v25);
      }

      swift_errorRetain();
      v46(a2);
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v30 = sub_10005AD24();
  if (v31)
  {
    v32 = v30;
    v33 = v31;
    if (qword_1000B6510 != -1)
    {
      swift_once();
    }

    sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1000807D0;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_10003549C();
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    v35 = String.init(format:_:)();
    v37 = v36;
  }

  else
  {
    if (qword_1000B6518 != -1)
    {
      swift_once();
    }

    v38 = qword_1000BC708;
    v37 = unk_1000BC710;

    v35 = v38;
  }

  sub_10005A650(v35, v37, 3.0);

  v39 = *(a3 + 128);
  v40 = swift_allocObject();
  v40[2] = a3;
  v40[3] = a1;
  v41 = v46;
  v40[4] = a7;
  v40[5] = v41;
  v40[6] = a5;
  v42 = a1;
  v43 = a7;

  sub_10005F078(v45, sub_10005BF54, v40);
}

uint64_t sub_10005974C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC5B8;
  *v17 = qword_1000BC5B8;
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v12);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  *(a2 + 144) = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

  v36[1] = a6;
  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v20 = type metadata accessor for Logger();
  sub_10000C370(v20, qword_1000BC518);
  swift_errorRetain();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36[0] = a5;
    v24 = v23;
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136446210;
    swift_getErrorValue();
    v26 = sub_100067820(v36[3]);
    v28 = sub_100043D60(v26, v27, aBlock);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "An error occurred while beginning the session. Error: %{public}s", v24, 0xCu);
    sub_100003FB4(v25);

    a5 = v36[0];
  }

  else
  {
  }

LABEL_9:
  if (a3)
  {
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a4;
    aBlock[4] = sub_10005BFDC;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100059C2C;
    aBlock[3] = &unk_1000A9C30;
    v31 = _Block_copy(aBlock);
    v32 = a4;

    [a3 setInvalidationHandler:v31];
    _Block_release(v31);
  }

  v33 = *(a2 + 136);
  *(a2 + 136) = a3;
  v34 = a3;
  swift_unknownObjectRelease();
  return a5(a1);
}

void sub_100059B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 168);
    *(Strong + 168) = a1;
    swift_errorRetain();
  }

  v7 = *(a3 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
  v8 = _convertErrorToNSError(_:)();
  aBlock[4] = sub_100009A18;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063398;
  aBlock[3] = &unk_1000A9C58;
  v9 = _Block_copy(aBlock);
  [v7 handleEventDidInvalidateWithError:v8 completion:v9];
  _Block_release(v9);
}

void sub_100059C2C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100059C94(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100059D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  *v11 = qword_1000BC5B8;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  *(a2 + 144) = 0;
  if (!a1)
  {
    return a3(a1);
  }

  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = type metadata accessor for Logger();
  sub_10000C370(v14, qword_1000BC518);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v19 = sub_100067820(v23[2]);
    v21 = sub_100043D60(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "An error occurred while updating the session. Error: %{public}s", v17, 0xCu);
    sub_100003FB4(v18);
  }

  else
  {
  }

  return a3(a1);
}

uint64_t sub_100059FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  *v11 = qword_1000BC5B8;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  swift_errorRetain();
  if (qword_1000B6420 != -1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v14 = type metadata accessor for Logger();
  sub_10000C370(v14, qword_1000BC518);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v33 = v18;
    *v17 = 136446210;
    swift_getErrorValue();
    v19 = sub_100067820(v32[2]);
    v21 = sub_100043D60(v19, v20, v33);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "An error occurred while ending the session. Error: %{public}s", v17, 0xCu);
    sub_100003FB4(v18);
  }

  else
  {
  }

LABEL_9:
  v22 = *(a2 + 136);
  *(a2 + 136) = 0;
  swift_unknownObjectRelease();
  *(a2 + 144) = 0;
  v23 = *(a2 + 152);
  v24 = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  sub_10000858C(v23);
  v25 = *(a2 + 56);
  v26 = *(a2 + 64);
  ObjectType = swift_getObjectType();
  (*(v26 + 80))(ObjectType, v26);
  v28 = *(a2 + 128);
  swift_beginAccess();
  v29 = *(v28 + 24);
  *(v28 + 24) = _swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v30 = *(v28 + 32);
  *(v28 + 32) = _swiftEmptyDictionarySingleton;

  memset(v33, 0, sizeof(v33));
  swift_beginAccess();
  sub_10005B2A0(v33, v28 + 40);
  swift_endAccess();
  return a3(a1);
}

uint64_t sub_10005A384()
{
  if (!*(v0 + 168))
  {
    goto LABEL_7;
  }

  ErrorValue = swift_getErrorValue();
  v2 = v26;
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(ErrorValue, v25);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  sub_10004C578(sub_10005AFE0, 0, v2);
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  if ((v8 & 1) == 0)
  {
LABEL_7:
    v14 = sub_10005AD24();
    if (v15)
    {
      v11 = v14;
      v12 = v15;
      if (qword_1000B6520 != -1)
      {
        swift_once();
      }

      v13 = &qword_1000BC718;
      goto LABEL_11;
    }

    if (qword_1000B6528 != -1)
    {
      swift_once();
    }

    v22 = &qword_1000BC728;
LABEL_18:
    v23 = *v22;
    v21 = v22[1];

    v19 = v23;
    goto LABEL_19;
  }

  v9 = sub_10005AD24();
  if (!v10)
  {
    if (qword_1000B6538 != -1)
    {
      swift_once();
    }

    v22 = &qword_1000BC748;
    goto LABEL_18;
  }

  v11 = v9;
  v12 = v10;
  if (qword_1000B6530 != -1)
  {
    swift_once();
  }

  v13 = &qword_1000BC738;
LABEL_11:
  v16 = *v13;
  v17 = v13[1];
  sub_100003F6C(&qword_1000B9718, &unk_100083BF0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000807D0;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10003549C();
  *(v18 + 32) = v11;
  *(v18 + 40) = v12;
  v19 = String.init(format:_:)();
  v21 = v20;
LABEL_19:
  sub_10005A650(v19, v21, 2.1);
}

void sub_10005A650(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = v3[19];
  if (v12)
  {
    v13 = v3[20];
    v14 = v3[14];

    v15 = [v14 showPromptsAndBanners];
    v16 = [v15 value];

    if (v16)
    {
      v17 = [v16 BOOLValue];

      if (v17)
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
        type metadata accessor for MainActor();
        sub_100008448(v12);

        v19 = static MainActor.shared.getter();
        v20 = swift_allocObject();
        *(v20 + 16) = v19;
        *(v20 + 24) = &protocol witness table for MainActor;
        *(v20 + 32) = v12;
        *(v20 + 40) = v13;
        *(v20 + 48) = a1;
        *(v20 + 56) = a2;
        *(v20 + 64) = a3;
        sub_10006F6D0(0, 0, v11, &unk_100083BE8, v20);
        sub_10000858C(v12);
      }

      else
      {

        sub_10000858C(v12);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10005A868(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v17 = (a5 + *a5);
  v13 = a5[1];
  v14 = swift_task_alloc();
  v8[8] = v14;
  *v14 = v8;
  v14[1] = sub_10005A9A0;
  v15.n128_f64[0] = a1;

  return v17(a7, a8, v15);
}

uint64_t sub_10005A9A0()
{
  v2 = v0;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 72) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10005AB5C;
  }

  else
  {
    v8 = sub_10005AAFC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10005AAFC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005AB5C()
{
  v18 = v0;
  v1 = v0[7];

  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_10000C370(v3, qword_1000BC518);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = v0[2];
    v11 = v0[4];
    v12 = sub_100067820(v0[3]);
    v14 = sub_100043D60(v12, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to present banner with error: %{public}s", v8, 0xCu);
    sub_100003FB4(v9);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10005AD24()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  (*(v2 + 16))(&v14, ObjectType, v2);
  if (*(&v15 + 1))
  {
    v18[1] = v15;
    v18[2] = v16;
    v18[0] = v14;
    v19 = v17;
    v4 = *(&v15 + 1);
    v5 = v16;
    sub_100005A3C(v18, *(&v15 + 1));
    v6 = (*(v5 + 48))(v4, v5);
    v8 = v7;
    v9 = objc_allocWithZone(LSApplicationRecord);
    v10 = sub_10005B030(v6, v8, 0);
    v11 = [v10 localizedName];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100030C2C(v18);
    return v12;
  }

  else
  {
    sub_1000353E0(&v14);
    return 0;
  }
}

uint64_t sub_10005AE70()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  sub_100003FB4((v0 + 72));

  v2 = *(v0 + 120);

  v3 = *(v0 + 128);

  v4 = *(v0 + 136);
  swift_unknownObjectRelease();
  v5 = *(v0 + 160);
  sub_10000858C(*(v0 + 152));
  v6 = *(v0 + 168);

  v7 = *(v0 + 176);

  return v0;
}

uint64_t sub_10005AED8()
{
  sub_10005AE70();

  return swift_deallocClassInstance();
}

uint64_t sub_10005AF34()
{
  if (*v0)
  {
    if (qword_1000B6490 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC610;
  }

  else
  {
    if (qword_1000B6488 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC600;
  }

  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10005AFE0()
{
  swift_errorRetain();
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  return swift_dynamicCast();
}

id sub_10005B030(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10005B10C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005B154(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F618;

  return sub_10005A868(v10, a1, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10005B24C()
{
  result = qword_1000BABC0;
  if (!qword_1000BABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BABC0);
  }

  return result;
}

uint64_t sub_10005B2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA580, &qword_1000836E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B310(uint64_t a1, _BYTE *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v63 = a2;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10000CB28;
  *(v16 + 24) = v15;
  v64 = v16;
  v17 = qword_1000B6460;
  swift_retain_n();

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC5B8;
  *v14 = qword_1000BC5B8;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v14, v9);
  if (v18)
  {
    if (*(a3 + 136))
    {
      v68 = 0;
      v69 = 0;

      a4(&v68);
    }

    if (*(a3 + 144))
    {
      sub_10003176C();
      v21 = swift_allocError();
      *v22 = 0;
      v68 = v21;
      v69 = 1;

      swift_errorRetain();
      a4(&v68);
    }

    else
    {
      v23 = *(a3 + 120);
      sub_10003FFDC(a1);
      if (((*(a1 + 81) & 1) != 0 || *(a1 + 82) == 1) && (v63[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] & 1) == 0)
      {
        v52 = AECoreError();
        swift_willThrow();
        v68 = v52;
        v69 = 1;

        swift_errorRetain();
        a4(&v68);
      }

      *(a3 + 144) = 1;
      v24 = *(a3 + 168);
      *(a3 + 168) = 0;

      v25 = *(a3 + 56);
      v26 = *(a3 + 64);
      ObjectType = swift_getObjectType();
      sub_100030BD0(a1, &v68);
      v28 = *(v26 + 24);
      v61 = v25;
      v28(&v68, ObjectType, v26);
      v29 = *(a1 + 56);
      v62 = a1;
      v30 = *(v26 + 48);

      v30(v31, ObjectType, v26);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = *(a3 + 152);
      v34 = *(a3 + 160);
      v59 = &unk_100083C88;
      *(a3 + 152) = &unk_100083C88;
      *(a3 + 160) = v32;
      v55 = v32;

      sub_10000858C(v33);
      sub_100030BD0(v62, &v68);
      v54 = v26;
      v35 = *(v26 + 8);
      v60 = ObjectType;
      v57 = v35(ObjectType, v26);
      v56 = (*(v26 + 64))(ObjectType, v26);
      v58 = *(a3 + 128);
      v36 = v58;
      v73 = sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
      v74 = sub_10005BB80();
      v72 = v36;
      v37 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = *(a3 + 176);
      v70 = v57;
      v71 = v56;
      v75 = &unk_100083C98;
      v76 = v37;
      v77 = &unk_100083CA0;
      v78 = v38;
      v79 = v59;
      v80 = v55;
      v81 = &unk_100083CA8;
      v82 = v39;
      v83 = &unk_100083CB0;
      v84 = v40;
      v85 = v41;
      v42 = *(a3 + 96);
      v43 = *(a3 + 104);
      sub_100005A3C((a3 + 72), v42);
      v44 = *(v43 + 8);

      v45 = v44(&v68, v42, v43);
      (*(v54 + 72))(v60);
      sub_100019F70(v62, v66);
      v46 = swift_allocObject();
      v47 = v66[3];
      *(v46 + 72) = v66[2];
      *(v46 + 88) = v47;
      *(v46 + 104) = *v67;
      v48 = v66[1];
      *(v46 + 40) = v66[0];
      *(v46 + 16) = a3;
      *(v46 + 24) = sub_10000CB34;
      v49 = v63;
      *(v46 + 32) = v64;
      *(v46 + 119) = *&v67[15];
      *(v46 + 56) = v48;
      *(v46 + 128) = v49;
      v65[4] = sub_10005BE84;
      v65[5] = v46;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 1107296256;
      v65[2] = sub_100059C94;
      v65[3] = &unk_1000A9B90;
      v50 = _Block_copy(v65);

      v51 = v49;

      [v45 activateSessionWithCompletion:v50];
      _Block_release(v50);

      sub_10005BEB0(&v68);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005BA60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005BA98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BAD0(uint64_t a1, uint64_t a2, double a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000F618;

  return sub_10000B450(a1, a2, v3, a3);
}

unint64_t sub_10005BB80()
{
  result = qword_1000BABD0;
  if (!qword_1000BABD0)
  {
    sub_100004B50(&qword_1000BABC8, &qword_100083C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BABD0);
  }

  return result;
}

uint64_t sub_10005BBE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000ACA4(v0);
}

uint64_t sub_10005BC74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000B010(v0);
}

uint64_t sub_10005BD04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000B85C(v0);
}

uint64_t sub_10005BD94()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001A778;

  return sub_10000BA04(v0);
}

uint64_t sub_10005BE24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_100003FB4((v0 + 40));
  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_10005BE98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005BF04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005BF64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BF9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10005BFF8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AEAUserNotificationError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AEAUserNotificationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AEAUserNotificationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_10005C088(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10005C0A4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

__n128 sub_10005C0D8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10005C0F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10005C13C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10005C1B4()
{
  result = qword_1000BABD8[0];
  if (!qword_1000BABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000BABD8);
  }

  return result;
}

uint64_t sub_10005C2B4(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005C38C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 112) + 16);
  v4 = *(*v2 + 104);
  v5 = v2 + *(*v2 + 120);
  return v3(a1, a2, v4);
}

uint64_t sub_10005C458()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10005C568()
{

  return swift_deallocClassInstance();
}

__n128 sub_10005C5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10005C5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10005C638(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10005C69C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_10005C8E0();
  static DispatchQoS.unspecified.getter();
  v12 = &_swiftEmptyArrayStorage;
  sub_10005C92C();
  sub_100003F6C(&qword_1000BADC8, &qword_100083FA0);
  sub_100004EE0(&qword_1000BADD0, &qword_1000BADC8, &qword_100083FA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v11;
  *(v11 + 16) = v6;
  *(v7 + 24) = dispatch_group_create();
  return v7;
}

unint64_t sub_10005C8E0()
{
  result = qword_1000B9CD8;
  if (!qword_1000B9CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B9CD8);
  }

  return result;
}

unint64_t sub_10005C92C()
{
  result = qword_1000BADC0;
  if (!qword_1000BADC0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BADC0);
  }

  return result;
}

uint64_t sub_10005C984()
{
  v1 = sub_100003F6C(&qword_1000BADD8, &unk_100083FA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v26 - v5;
  *&v27[0] = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  Just.init(_:)();
  sub_100004EE0(&qword_1000BADE0, &qword_1000BADD8, &unk_100083FA8);
  v7 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v6, v1);
  v8 = type metadata accessor for AEAAuxiliaryParticipantAggregatorSource();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  UUID.init()();
  v12 = OBJC_IVAR____TtC15assessmentagent39AEAAuxiliaryParticipantAggregatorSource_subject;
  v26[1] = &_swiftEmptySetSingleton;
  v13 = sub_100003F6C(&qword_1000B8200, &qword_100080D38);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v11 + v12) = CurrentValueSubject.init(_:)();
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  v17 = sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
  v18 = swift_allocObject();
  *(v18 + 24) = &_swiftEmptyDictionarySingleton;
  *(v18 + 32) = &_swiftEmptyDictionarySingleton;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0u;
  *(v18 + 104) = 0u;
  *(v18 + 119) = 0;
  *(v18 + 16) = v16;
  v32 = v17;
  v33 = sub_100004EE0(&qword_1000BABD0, &qword_1000BABC8, &qword_100083C90);
  v31 = v18;
  type metadata accessor for AEAManagedConfigurationRestrictionStatusManager();
  v19 = swift_allocObject();
  *(v19 + 16) = &_swiftEmptySetSingleton;
  v29 = v7;
  v30 = v11;
  v34 = &unk_100083FB8;
  v35 = 0;
  v36 = &unk_100083FC0;
  v37 = 0;
  v38 = &unk_100083FC8;
  v39 = 0;
  v40 = &unk_100084258;
  v41 = 0;
  v42 = &unk_100084250;
  v43 = 0;
  v44 = v19;
  v20 = v0[3];
  v21 = v0[4];
  sub_100005A3C(v0, v20);
  v22 = *(v21 + 8);
  v23 = v16;
  v24 = v22(v27, v20, v21);
  sub_10005BEB0(v27);
  sub_100003F6C(qword_1000BADE8, &qword_100083FD0);
  result = swift_allocObject();
  *(result + 16) = v24;
  return result;
}

uint64_t sub_10005CD30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10005CDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005CE70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_10005CF48()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10005CFD4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005CFD4()
{
  if (!qword_1000BAED8)
  {
    type metadata accessor for AEAConfigurationProfile.Payload(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000BAED8);
    }
  }
}

uint64_t sub_10005D060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 3)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10005D130(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_10005D1EC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005D27C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005D290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10005D2D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.CalculatorSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x79)
  {
    goto LABEL_17;
  }

  if (a2 + 135 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 135) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 135;
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

      return (*a1 | (v4 << 8)) - 135;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 135;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 5) & 0xFFFFFF87 | (8 * ((*a1 >> 1) & 0xF))) ^ 0x7F;
  if (v6 >= 0x78)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.CalculatorSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 135 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 135) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x79)
  {
    v4 = 0;
  }

  if (a2 > 0x78)
  {
    v5 = ((a2 - 121) >> 8) + 1;
    *result = a2 - 121;
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
    *result = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.NotesSetting(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AppAccessSetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x78)
  {
    goto LABEL_17;
  }

  if (a2 + 136 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 136) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 136;
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

      return (*a1 | (v4 << 8)) - 136;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 136;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 4) & 0xFFFFFF8F | (16 * ((*a1 >> 1) & 7))) ^ 0x7F;
  if (v6 >= 0x77)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AppAccessSetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 136 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 136) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x78)
  {
    v4 = 0;
  }

  if (a2 > 0x77)
  {
    v5 = ((a2 - 120) >> 8) + 1;
    *result = a2 - 120;
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
    *result = 2 * (((-a2 >> 4) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AccessibilitySetting(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AEAConfigurationProfile.Payload.Settings.AccessibilitySetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_10005D8B8()
{
  sub_10005D910();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_1000BC6A0 = result;
  return result;
}

unint64_t sub_10005D910()
{
  result = qword_1000BAFA8;
  if (!qword_1000BAFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000BAFA8);
  }

  return result;
}

double sub_10005D95C@<D0>(uint64_t a1@<X8>)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v3 = [objc_opt_self() auditTokenWithData:isa];

  if (v3)
  {
    [v3 underlyingToken];
    v4 = SecTaskCreateWithAuditToken(0, &v9);
    if (v4)
    {
      v5 = v4;
      v6 = type metadata accessor for AEAConcreteSecurityTaskPrimitives.ConcreteSecurityTask();
      v7 = swift_allocObject();
      *(v7 + 24) = xmmword_1000841C0;
      *(v7 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 32) = &off_1000AA308;

      *a1 = v7;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10005DA74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v4 = SecTaskCopySigningIdentifier(*(v0 + 16), 0);
    if (v4)
    {
      v5 = v4;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v3 = 0;
      v7 = 0;
    }

    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v7;

    sub_10005DB80(v8, v9);
  }

  sub_10005DB94(v1, v2);
  return v3;
}

uint64_t sub_10005DB1C()
{
  sub_10005DB80(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10005DB80(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10005DB94(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10005DBA8(uint64_t *a1, int a2)
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

uint64_t sub_10005DBF0(uint64_t result, int a2, int a3)
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

uint64_t sub_10005DC40(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10005DCF4()
{
  sub_10005DE40();
  v1 = *(v0 + 16);

  v2 = qword_1000BB190;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_10005DD60()
{
  v0 = *sub_10005DCF4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10005DDB4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = qword_1000BB190;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t sub_10005DE40()
{
  if (*(v0 + 16))
  {
    v1 = qword_1000BB190;

    sub_10005E1E0(v0 + v1);

    v2 = *(v0 + 16);
  }

  *(v0 + 16) = 0;
}

uint64_t sub_10005DED4(uint64_t (*a1)(uint64_t *))
{
  v2 = 0;
  v3 = 0;
  return a1(&v2);
}

uint64_t sub_10005DF14()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UUID();
  v19 = *(v3 - 8);
  v4 = v19;
  v5 = *(v19 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v18 - v11;
  UUID.init()();
  v18 = *(v2 + 80);
  sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  v13 = PassthroughSubject.__allocating_init()();
  v14 = *(v4 + 16);
  v14(v9, v12, v3);
  v21 = v13;
  swift_beginAccess();
  sub_10005E54C();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
  type metadata accessor for AEACurrentValueAntiphony.Membership();
  v14(v9, v12, v3);
  v15 = sub_10005DDB4(v1, v9);
  type metadata accessor for AnyCancellable();
  v20 = v15;

  swift_getWitnessTable();
  v16 = AnyCancellable.__allocating_init<A>(_:)();
  v20 = v13;
  swift_getWitnessTable();
  Publisher.eraseToAnyPublisher()();

  (*(v19 + 8))(v12, v3);

  return v16;
}

uint64_t sub_10005E1E0(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  (*(v8 + 16))(&v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v12 = 0;
  swift_beginAccess();
  v9 = *(v3 + 80);
  sub_100004B50(&qword_1000B9C20, &qword_100082A88);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  sub_10005E54C();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  return swift_endAccess();
}

uint64_t *sub_10005E360()
{
  v1 = *v0;

  v2 = v0[3];

  v3 = v0[4];

  v4 = *(*v0 + 112);
  v5 = *(v1 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  return v0;
}

uint64_t sub_10005E404()
{
  sub_10005E360();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10005E474()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10005E54C()
{
  result = qword_1000B88A0;
  if (!qword_1000B88A0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B88A0);
  }

  return result;
}

id sub_10005E5A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 16);
  v15 = [v53 dataRepresentation];
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100005A80(v16, v18);
  v20 = [v14 codeForAuditTokenData:isa];

  if (v20)
  {
    v21 = [v20 bundleIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v24;
      v52 = v23;

      v25 = [v20 entitlements];
      if (v25)
      {
        v26 = v25;
        v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v27 = 0;
      }

      v31 = sub_10006EF84(v27);
      if (!v31)
      {
        v31 = sub_100022428(_swiftEmptyArrayStorage);
      }

      if (*(v31 + 16) && (v32 = sub_100020DA8(0xD00000000000002BLL, 0x800000010008A310), (v33 & 1) != 0))
      {
        v34 = *(v31 + 56) + 24 * v32;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        sub_100006174(*v34, v36, *(v34 + 16));

        if (v37 > 1)
        {
          if (v37 == 2)
          {
            sub_100006198(v35, v36, 2);
          }

          else
          {
            sub_100006198(v35, v36, 3);
          }
        }

        else if (!v37)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      LOBYTE(v35) = 0;
LABEL_19:
      v38 = [v20 isTrusted];
      v39 = [v20 teamIdentifier];
      if (v39)
      {
        v40 = v39;
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v44 = [v20 url];
      if (v44)
      {
        v45 = v44;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        swift_unknownObjectRelease();
        v46 = type metadata accessor for URL();
        (*(*(v46 - 8) + 56))(v8, 0, 1, v46);
      }

      else
      {
        swift_unknownObjectRelease();
        v47 = type metadata accessor for URL();
        (*(*(v47 - 8) + 56))(v8, 1, 1, v47);
      }

      *v13 = v38;
      *(v13 + 1) = v41;
      *(v13 + 2) = v43;
      sub_10005EDD4(v8, &v13[*(v9 + 24)]);
      v48 = v52;
      *a2 = v53;
      *(a2 + 8) = v48;
      *(a2 + 16) = v51;
      *(a2 + 24) = v35 & 1;
      v49 = type metadata accessor for AEAParticipant.Process(0);
      sub_10005EE44(v13, a2 + *(v49 + 24));
      (*(*(v49 - 8) + 56))(a2, 0, 1, v49);
      v50 = v53;

      return v50;
    }

    swift_unknownObjectRelease();
  }

  v28 = type metadata accessor for AEAParticipant.Process(0);
  v29 = *(*(v28 - 8) + 56);

  return v29(a2, 1, 1, v28);
}

uint64_t sub_10005EA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v36[-v12];
  v14 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v36[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = [*(v4 + 16) codeForPid:a1];
  if (v19)
  {
    v20 = v19;
    v38 = a2;
    v21 = a3;

    v37 = [v20 isTrusted];
    v22 = [v20 teamIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v30 = [v20 url];
    v31 = v21;
    if (v30)
    {
      v32 = v30;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      v33 = type metadata accessor for URL();
      (*(*(v33 - 8) + 56))(v13, 0, 1, v33);
    }

    else
    {
      swift_unknownObjectRelease();
      v34 = type metadata accessor for URL();
      (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
    }

    *v18 = v37;
    *(v18 + 1) = v24;
    *(v18 + 2) = v26;
    sub_10005EDD4(v13, &v18[*(v14 + 24)]);
    *a4 = a1;
    *(a4 + 8) = v38;
    *(a4 + 16) = v31;
    *(a4 + 24) = 0;
    v35 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
    sub_10005EE44(v18, a4 + *(v35 + 24));
    return (*(*(v35 - 8) + 56))(a4, 0, 1, v35);
  }

  else
  {
    v27 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
    v28 = *(*(v27 - 8) + 56);

    return v28(a4, 1, 1, v27);
  }
}

uint64_t sub_10005EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EE44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.SecurityInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005EEA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10005EEF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005EF50(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10005F078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a3;
  v34 = a2;
  v33 = type metadata accessor for UUID();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v33, v8);
  v10 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v36 = &v33 - v12;
  v13 = sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v40[0] = Future.init(_:)();
  sub_100004EE0(&qword_1000BB300, &qword_1000BB2F8, &qword_100084480);
  v16 = Publisher.eraseToAnyPublisher()();

  v43 = v16;
  swift_beginAccess();
  v17 = *(v4 + 24);
  v38 = &v43;
  v39 = a1;

  sub_10005EF50(sub_1000608E0, v37, v17);

  v18 = v36;
  UUID.init()();
  v42 = v43;
  v19 = v33;
  (*(v6 + 16))(v10, v18, v33);
  sub_100019F70(a1, v40);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  (*(v6 + 32))(v22 + v20, v10, v19);
  v23 = v22 + v21;
  v24 = v40[3];
  *(v23 + 32) = v40[2];
  *(v23 + 48) = v24;
  *(v23 + 64) = *v41;
  *(v23 + 79) = *&v41[15];
  v25 = v40[1];
  *v23 = v40[0];
  *(v23 + 16) = v25;
  v26 = (v22 + ((v21 + 90) & 0xFFFFFFFFFFFFFFF8));
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;

  sub_100003F6C(&qword_1000BB308, &qword_100084488);
  sub_100004EE0(&qword_1000BB310, &qword_1000BB308, &qword_100084488);
  v28 = Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();

  v29 = *(v4 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v4 + 32);
  *(v4 + 32) = 0x8000000000000000;
  v31 = v36;
  sub_100041030(v28, v36, isUniquelyReferenced_nonNull_native);
  *(v4 + 32) = v42;
  swift_endAccess();

  (*(v6 + 8))(v31, v19);
}

uint64_t sub_10005F484(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v21 = a2;
  v6 = sub_100003F6C(&qword_1000BB318, &qword_100084490);
  v7 = *(v6 - 8);
  v22 = v6;
  v23 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v20 - v10;
  v26 = *a2;
  sub_100019F70(a3, v24);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v24[3];
  *(v12 + 56) = v24[2];
  *(v12 + 72) = v13;
  *(v12 + 88) = *v25;
  *(v12 + 103) = *&v25[15];
  v14 = v24[1];
  *(v12 + 24) = v24[0];
  *(v12 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100060C80;
  *(v15 + 24) = v12;

  v20 = static Subscribers.Demand.unlimited.getter();
  sub_100003F6C(&qword_1000BB308, &qword_100084488);
  sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  sub_100004EE0(&qword_1000BB310, &qword_1000BB308, &qword_100084488);
  sub_100004EE0(&qword_1000BB300, &qword_1000BB2F8, &qword_100084480);
  Publisher.flatMap<A, B>(maxPublishers:_:)();

  sub_100004EE0(&qword_1000BB320, &qword_1000BB318, &qword_100084490);
  v16 = v22;
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v23 + 8))(v11, v16);
  v18 = *v21;
  *v21 = v17;
}

uint64_t sub_10005F75C(uint64_t a1, uint64_t a2)
{
  sub_100019F70(a2, v10);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = v10[3];
  *(v3 + 56) = v10[2];
  *(v3 + 72) = v4;
  *(v3 + 88) = *v11;
  *(v3 + 103) = *&v11[15];
  v5 = v10[1];
  *(v3 + 24) = v10[0];
  *(v3 + 40) = v5;
  v6 = sub_100003F6C(&qword_1000BB2F8, &qword_100084480);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10005F834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_100019F70(a4, v10);
  v12[2] = v10[2];
  v12[3] = v10[3];
  *v13 = v11[0];
  *&v13[15] = *(v11 + 15);
  v12[0] = v10[0];
  v12[1] = v10[1];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100060EBC;
  *(v8 + 24) = v7;
  v14 = sub_100060D18;
  v15 = v8;

  PassthroughSubject.send(_:)();
  return sub_100060D20(v12);
}

uint64_t sub_10005F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v35 = a5;
  v34 = a1;
  v40 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v40 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v40, v10);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v41, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16, v19);
  v20 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(a2 + 16);
  (*(v17 + 16))(v20, a3, v16);
  sub_100019F70(a4, v45);
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  (*(v17 + 32))(v24 + v21, v20, v16);
  *(v24 + v22) = v34;
  v25 = v24 + v23;
  v26 = v45[1];
  *v25 = v45[0];
  *(v25 + 16) = v26;
  *(v25 + 79) = *&v46[15];
  v27 = *v46;
  *(v25 + 48) = v45[3];
  *(v25 + 64) = v27;
  *(v25 + 32) = v45[2];
  v28 = (v24 + ((v23 + 90) & 0xFFFFFFFFFFFFFFF8));
  v29 = v36;
  *v28 = v35;
  v28[1] = v29;
  aBlock[4] = sub_100060BD0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AA6D8;
  v30 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  v31 = v38;
  v32 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);
  (*(v42 + 8))(v31, v32);
  (*(v39 + 8))(v15, v41);
}

uint64_t sub_10005FD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  (*(v15 + 16))(v14, a2);
  swift_beginAccess();
  sub_10003FE1C(0, v14);
  swift_endAccess();
  if (!a3)
  {
    sub_100019F70(a4, v18);
    swift_beginAccess();
    sub_10005B2A0(v18, a1 + 40);
    swift_endAccess();
  }

  return a5(a3);
}

uint64_t sub_10005FEB0(void (*a1)(uint64_t *), uint64_t a2)
{

  sub_10005FF08(v2, a1, a2);
}

uint64_t sub_10005FF08(uint64_t *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  __chkstk_darwin(v6, v8);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  v66 = a2;
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = v11;
  v14 = a1[7];
  v13 = a1[8];
  v15 = a1[6];
  v16 = *a1;
  sub_10000859C((a1 + 1), &v70);
  v67 = a3;
  swift_retain_n();
  v17 = v13;
  v18 = v15;
  v19 = v14;
  if ([v17 isEnabled])
  {
    sub_10000859C(&v70, &v68);

    sub_1000546A8(v19, v17, v16, &v68, &v75);
    v48 = v16;
    sub_100003FB4(&v70);
    v28 = v12;
    if (*(v16 + 136))
    {

      v23 = 0;
      v22 = v75;
      v24 = v76;
      v25 = v77;
      v26 = v78;
      v27 = *v79;
      v21 = *&v79[16];
      v20 = *&v79[16] | (v79[18] << 16);
    }

    else
    {
      v22 = v75;
      v24 = v76;
      v25 = v77;
      v26 = v78;
      v27 = *v79;
      v20 = *&v79[16] | (v79[18] << 16);
      v23 = 1;
      v21 = v18;
    }
  }

  else
  {

    sub_100003FB4(&v70);
    v20 = 0;
    v21 = 0;
    v22 = 0uLL;
    v23 = 2;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = v12;
    v48 = v16;
  }

  v82[0] = v22;
  v82[1] = v24;
  v82[2] = v25;
  v82[3] = v26;
  v82[4] = v27;
  v83 = *&v20 & 0xFFFFFFLL;
  v84 = v21;
  v85 = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10000CB28;
  *(v29 + 24) = v28;
  sub_100060810(v82, &v75);
  if (!v81)
  {
    v72 = v77;
    v73 = v78;
    v74[0] = *v79;
    *(v74 + 15) = *&v79[15];
    v70 = v75;
    v71 = v76;
    v32 = qword_1000B6460;
    swift_retain_n();
    if (v32 != -1)
    {
      swift_once();
    }

    v33 = qword_1000BC5B8;
    *v10 = qword_1000BC5B8;
    v35 = v64;
    v34 = v65;
    (*(v64 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v65);
    v36 = v33;
    LOBYTE(v33) = _dispatchPreconditionTest(_:)();
    (*(v35 + 8))(v10, v34);
    if ((v33 & 1) == 0)
    {
      __break(1u);
LABEL_33:
      swift_once();
      goto LABEL_14;
    }

    if (*(v48 + 144))
    {
      sub_10003176C();
      v37 = swift_allocError();
      *v38 = 0;
      v68 = v37;
      v69 = 1;
      swift_errorRetain();
      v66(&v68);
    }

    else
    {
      v49 = *(v48 + 120);
      sub_10003FFDC(&v70);
      if (((BYTE1(v74[1]) & 1) != 0 || BYTE2(v74[1]) == 1) && (*(v18 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI) & 1) == 0)
      {
        v63 = AECoreError();
        swift_willThrow();
        v68 = v63;
        v69 = 1;
        swift_errorRetain();
        v66(&v68);

        goto LABEL_21;
      }

      *(v48 + 144) = 1;
      v52 = *(v48 + 56);
      v53 = *(v48 + 64);
      ObjectType = swift_getObjectType();
      sub_100030BD0(&v70, &v68);
      (*(v53 + 24))(&v68, ObjectType, v53);
      v55 = *(v48 + 56);
      v56 = *(v48 + 64);
      v57 = swift_getObjectType();
      v58 = v48;
      v59 = *(v56 + 48);

      v59(v60, v57, v56);
      v61 = *(v58 + 128);
      v62 = swift_allocObject();
      v62[2] = v58;
      v62[3] = sub_10000CB34;
      v62[4] = v29;

      sub_10005F078(&v70, sub_10006087C, v62);
    }

LABEL_21:
    sub_10005682C(&v70);
    sub_100060848(v82);
    goto LABEL_25;
  }

  if (v81 == 1)
  {
    v30 = v80;
    v72 = v77;
    v73 = v78;
    v74[0] = *v79;
    *(v74 + 15) = *&v79[15];
    v70 = v75;
    v71 = v76;
    swift_retain_n();
    v31 = v67;

    sub_10005B310(&v70, v30, v48, v66, v31);

    sub_10005682C(&v70);
    sub_100060848(v82);
LABEL_25:
  }

  v39 = qword_1000B6460;
  swift_retain_n();
  if (v39 != -1)
  {
    goto LABEL_33;
  }

LABEL_14:
  v40 = qword_1000BC5B8;
  *v10 = qword_1000BC5B8;
  v42 = v64;
  v41 = v65;
  (*(v64 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v65);
  v43 = v40;
  LOBYTE(v40) = _dispatchPreconditionTest(_:)();
  result = (*(v42 + 8))(v10, v41);
  if (v40)
  {
    v45 = *(v48 + 136);
    if (v45)
    {
      if (*(v48 + 144))
      {
        sub_10003176C();
        v46 = swift_allocError();
        *v47 = 0;
        *&v70 = v46;
        BYTE8(v70) = 1;
        swift_unknownObjectRetain();
        swift_errorRetain();
        v66(&v70);

        swift_unknownObjectRelease();
      }

      else
      {
        *(v48 + 144) = 1;
        swift_unknownObjectRetain();
        sub_10005A384();
        v50 = swift_allocObject();
        v50[2] = v48;
        v50[3] = sub_10000CB34;
        v50[4] = v29;
        *&v72 = sub_100031748;
        *(&v72 + 1) = v50;
        *&v70 = _NSConcreteStackBlock;
        *(&v70 + 1) = 1107296256;
        *&v71 = sub_100063398;
        *(&v71 + 1) = &unk_1000AA660;
        v51 = _Block_copy(&v70);

        [v45 deactivateWithCompletion:v51];
        _Block_release(v51);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      *&v70 = 0;
      BYTE8(v70) = 0;
      v66(&v70);
    }

    sub_100060848(v82);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000607D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060888()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000608C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060900()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 90) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  sub_100003FB4((v0 + v5));
  v8 = *(v0 + v5 + 48);

  v9 = *(v0 + v5 + 56);

  v10 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_100060A08(uint64_t *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = (v1 + ((v5 + 90) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = *a1;

  return sub_10005F928(v10, v6, v1 + v4, v1 + v5, v8, v9);
}

uint64_t sub_100060AB8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 90) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  sub_100003FB4((v0 + v6));
  v10 = *(v0 + v6 + 48);

  v11 = *(v0 + v6 + 56);

  v12 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100060BD0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v4 + 90) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_10005FD58(v5, v0 + v2, v6, v0 + v4, v8);
}

uint64_t sub_100060C8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_100060CBC()
{
  v1 = v0[2];

  sub_100003FB4(v0 + 3);
  v2 = v0[9];

  v3 = v0[10];

  return _swift_deallocObject(v0, 107, 7);
}

uint64_t sub_100060D20(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB328, &qword_100084498);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100060D88(uint64_t a1)
{
  if ((*(a1 + 96) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 sub_100060DA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100060DD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 97))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 96);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100060E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_100060E60(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t sub_100060EC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v6 + 168, v84);
  v7 = v85;
  v8 = sub_10001A19C(v84, v85);
  v9 = *(v7[-1].Description + 8);
  __chkstk_darwin(v8, v8);
  v11 = (&v78[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v14 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v82 = v14;
  v83 = &off_1000A7928;
  *&v81 = v13;
  type metadata accessor for AEAPolicyStore();
  v15 = swift_allocObject();
  v16 = sub_10001A19C(&v81, v14);
  v17 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v16, v16);
  v19 = (&v78[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v15[5] = v14;
  v15[6] = &off_1000A7928;
  v15[2] = v21;
  sub_100003FB4(&v81);
  sub_100003FB4(v84);
  sub_1000616D0(a2, &v81);
  if (v82)
  {
    sub_100008748(&v81, v84);
  }

  else
  {
    v85 = &type metadata for AEAiOSPolicyBundleFactory;
    v86 = &off_1000ABE30;
    v22 = swift_allocObject();
    v84[0] = v22;
    sub_10000859C(a1, v22 + 16);
    *(v22 + 56) = v15;
    v23 = v82;

    if (v23)
    {
      sub_100003F04(&v81);
    }
  }

  v24 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v24 + 384, &v81);
  v25 = v82;
  v26 = sub_10001A19C(&v81, v82);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26, v26);
  v29 = (&v78[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  v31 = *v29;
  v32 = type metadata accessor for AEAConcreteSecurityTaskPrimitives();
  v79 = v32;
  v80 = &off_1000AA318;
  v78[0] = v31;
  v77 = type metadata accessor for AEAiOSOSProcessLift();
  v33 = swift_allocObject();
  v34 = sub_10001A19C(v78, v32);
  v35 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v34, v34);
  v37 = (&v78[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v33[5] = v32;
  v33[6] = &off_1000AA318;
  v33[2] = v39;
  sub_100003FB4(v78);
  sub_100003FB4(&v81);
  v40 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v40 + 424, &v81);
  v41 = v82;
  v42 = sub_10001A19C(&v81, v82);
  v43 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v42, v42);
  v45 = (&v78[-1] - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = *v45;
  v48 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v79 = v48;
  v80 = &off_1000A86F8;
  v78[0] = v47;
  v49 = type metadata accessor for AEAiOSParticipantManager();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v53 = sub_10001A19C(v78, v48);
  v54 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v53, v53);
  v56 = (&v78[-1] - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;

  v59 = sub_100061D2C(v58, v33, v52);
  sub_100003FB4(v78);
  sub_100003FB4(&v81);
  v60 = sub_100005A3C(a1, a1[3]);
  sub_10000859C(*v60 + 320, &v81);
  sub_10000859C(v84, v78);
  v61 = *sub_100005A3C(a1, a1[3]);

  v62 = sub_10006AD78();
  v63 = v82;
  v64 = sub_10001A19C(&v81, v82);
  v65 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v64, v64);
  v67 = (&v78[-1] - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = sub_10006199C(*v67, v59, v33, v78, v62);
  sub_100003FB4(&v81);
  sub_10000859C(a1, &v81);
  v70 = swift_allocObject();
  sub_100008748(&v81, v70 + 16);
  sub_10000859C(a1, &v81);
  v71 = swift_allocObject();
  sub_100008748(&v81, v71 + 16);
  *(v71 + 56) = v69;
  v73 = a1[3];
  v72 = a1[4];
  v74 = sub_100005A3C(a1, v73);
  a3[3] = v73;
  a3[4] = *(v72 + 8);
  v75 = sub_100004F80(a3);
  (*(*(v73 - 8) + 16))(v75, v74, v73);
  sub_10000859C(v84, (a3 + 7));
  a3[16] = v77;
  a3[17] = &off_1000AC0C8;

  a3[5] = v59;
  a3[6] = &off_1000A9980;
  a3[12] = v69;
  a3[13] = v33;
  a3[18] = sub_100061FE4;
  a3[19] = v70;
  a3[20] = sub_100062054;
  a3[21] = v71;
  return sub_100003FB4(v84);
}

uint64_t sub_1000616D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B6578, &qword_10007F640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100061758(uint64_t a1, void *a2)
{
  sub_100003F6C(&qword_1000BB338, &qword_100084578);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100083800;
  v4 = *sub_100005A3C(a2, a2[3]);
  v5 = *sub_100005A3C(a2, a2[3]);
  v6 = *(*sub_100005A3C(a2, a2[3]) + 504);
  v7 = sub_100005A3C((v4 + 168), *(v4 + 192));
  v8 = sub_100005A3C((v5 + 592), *(v5 + 616));
  v9 = *v7;
  v10 = *v8;
  swift_unknownObjectRetain();
  v11 = sub_10006226C(v9, v10, v6);
  swift_unknownObjectRelease();
  *(v3 + 32) = v11;
  *(v3 + 40) = sub_10005C984();
  return v3;
}

uint64_t sub_10006184C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_100003F6C(&qword_1000BB330, &qword_100084570);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100083800;
  v9 = *(*sub_100005A3C(a3, a3[3]) + 144);
  v10 = type metadata accessor for AEAActiveRestrictionUUIDFetchingService();
  objc_allocWithZone(v10);
  swift_unknownObjectRetain();

  v11 = sub_10001E324(v9, a4);
  *(v8 + 56) = v10;
  *(v8 + 64) = &off_1000A7970;
  *(v8 + 32) = v11;
  v12 = *(*sub_100005A3C(a3, a3[3]) + 144);
  sub_100023F48(a1, v17);
  v13 = type metadata accessor for AEAAssessmentModeService();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectRetain();

  v15 = sub_10006516C(v12, v17, a2);
  swift_unknownObjectRelease();

  *(v8 + 96) = v13;
  *(v8 + 104) = &off_1000AAB80;
  *(v8 + 72) = v15;
  return v8;
}

uint64_t sub_10006199C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  v39[3] = v9;
  v39[4] = &off_1000AC480;
  v39[0] = a1;

  type metadata accessor for AEAAssessmentSessionManager();
  v10 = swift_allocObject();
  v11 = sub_10001A19C(v39, v9);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v11);
  v33 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v32 - v33);
  v34 = *(v12 + 16);
  v34(&v32 - v33);
  v15 = *v14;
  v38[3] = v9;
  v38[4] = &off_1000AC480;
  v38[0] = v15;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v16 = qword_1000BC5B8;
  sub_100003F6C(&qword_1000BABC8, &qword_100083C90);
  v17 = swift_allocObject();
  *(v17 + 24) = &_swiftEmptyDictionarySingleton;
  *(v17 + 32) = &_swiftEmptyDictionarySingleton;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 119) = 0;
  *(v17 + 16) = v16;
  *(v10 + 128) = v17;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  type metadata accessor for AEAManagedConfigurationRestrictionStatusManager();
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *(v10 + 152) = 0;
  v18 = swift_allocObject();
  *(v18 + 16) = &_swiftEmptySetSingleton;
  *(v10 + 176) = v18;
  sub_10000859C(v38, v10 + 16);
  *(v10 + 56) = a2;
  *(v10 + 64) = &off_1000A9980;
  sub_10000859C(a4, v10 + 72);
  *(v10 + 112) = a5;
  sub_10000859C(v38, v36);
  v19 = v37;
  v20 = sub_10001A19C(v36, v37);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20, v20);
  v23 = (&v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v35[3] = v9;
  v35[4] = &off_1000AC480;
  v35[0] = v25;
  type metadata accessor for AEAAssessmentSessionConfigurationValidator();
  v26 = swift_allocObject();
  v27 = sub_10001A19C(v35, v9);
  __chkstk_darwin(v27, v27);
  v28 = (&v32 - v33);
  v34(&v32 - v33);
  v29 = *v28;
  v26[5] = v9;
  v26[6] = &off_1000AC480;
  v26[2] = v29;
  v30 = v16;
  sub_100003FB4(a4);
  sub_100003FB4(v38);
  sub_100003FB4(v35);
  sub_100003FB4(v36);
  *(v10 + 120) = v26;
  sub_100003FB4(v39);
  return v10;
}

uint64_t sub_100061D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F6C(&qword_1000B9140, &qword_100081B90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v21 - v10;
  v12 = sub_100003F6C(&qword_1000B9170, &qword_100081BB8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v21 - v16;
  v27 = type metadata accessor for AEAiOSOSProcessLift();
  v28 = &off_1000AC0C8;
  *&v26 = a2;
  v24 = type metadata accessor for AEAConcreteRunningBoardPrimitives();
  v25 = &off_1000A86F8;
  *&v23 = a1;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  v18 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__candidateProcesses;
  v22 = &_swiftEmptySetSingleton;
  sub_100003F6C(&unk_1000B7360, &unk_100081AA0);
  Published.init(initialValue:)();
  (*(v13 + 32))(a3 + v18, v17, v12);
  v19 = OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager__participants;
  v22 = &_swiftEmptySetSingleton;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  Published.init(initialValue:)();
  (*(v7 + 32))(a3 + v19, v11, v6);
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager_subscriptions) = &_swiftEmptyArrayStorage;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___mainParticipantSource) = 0;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___configurationParticipantSource) = 0;
  *(a3 + OBJC_IVAR____TtC15assessmentagent24AEAiOSParticipantManager____lazy_storage___participantSources) = 0;
  sub_100008748(&v26, a3 + 56);
  sub_100008748(&v23, a3 + 16);
  return a3;
}

uint64_t sub_100061FAC()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062004(void (*a1)(void))
{
  sub_100003FB4((v1 + 16));
  a1(*(v1 + 56));

  return _swift_deallocObject(v1, 64, 7);
}

uint64_t sub_100062060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v26[3] = v6;
  v26[4] = &off_1000A7928;
  v26[0] = a1;
  v7 = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v24 = v7;
  v25 = &off_1000A6410;
  v23[0] = a2;
  type metadata accessor for AEAWaitForReadPermissionTask();
  v8 = swift_allocObject();
  v9 = sub_10001A19C(v26, v6);
  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v9, v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v24;
  v15 = sub_10001A19C(v23, v24);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15, v15);
  v18 = (v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v12;
  v21 = *v18;
  *(v8 + 40) = v6;
  *(v8 + 48) = &off_1000A7928;
  *(v8 + 16) = v20;
  *(v8 + 80) = v7;
  *(v8 + 88) = &off_1000A6410;
  *(v8 + 56) = v21;
  *(v8 + 104) = 0u;
  *(v8 + 120) = 0u;
  *(v8 + 136) = 0;
  *(v8 + 96) = a3;
  sub_100003FB4(v23);
  sub_100003FB4(v26);
  return v8;
}

uint64_t sub_10006226C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[3] = type metadata accessor for AEAConcreteFileSystemPrimitives();
  v28[4] = &off_1000A7928;
  v28[0] = a1;
  v27[3] = type metadata accessor for AEAConcreteMobileKeyBagPrimitives();
  v27[4] = &off_1000A6410;
  v27[0] = a2;
  sub_10000859C(v28, v25);
  sub_10000859C(v27, v23);
  v6 = v26;
  v7 = sub_10001A19C(v25, v26);
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v7, v7);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = v24;
  v13 = sub_10001A19C(v23, v24);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13, v13);
  v16 = (v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v10;
  v19 = *v16;

  swift_unknownObjectRetain();
  v20 = sub_100062060(v18, v19, a3);
  sub_100003FB4(v23);
  sub_100003FB4(v25);
  sub_100003F6C(&qword_1000BB340, &unk_100084580);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  sub_100003FB4(v28);
  sub_100003FB4(v27);
  return v21;
}

uint64_t sub_1000624A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_100062500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void sub_100062570(uint64_t a1, unsigned int a2)
{
  if (a2 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = a2 & 1;
  }

  Hasher._combine(_:)(v3);
  if ((a2 & 0xFF00) == 0x200)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = (a2 >> 8) & 1;
  }

  Hasher._combine(_:)(v4);
  if ((a2 & 0xFF0000) == 0x20000)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = HIWORD(a2) & 1;
  }

  Hasher._combine(_:)(v5);
  if (HIBYTE(a2) == 2)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v6 = HIBYTE(a2) & 1;
  }

  Hasher._combine(_:)(v6);
}

BOOL sub_10006262C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100062FE4(v5, v7);
}

uint64_t sub_100062688(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_1000628F4(&v5, &v7) & 1;
}

Swift::Int sub_1000626D4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100062720()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_100062728()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100062770()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100062570(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000627C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100062570(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_100062810(unsigned int a1, unsigned int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }
  }

  else if (a2 == 2 || ((a2 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 0xFF00) == 0x200)
  {
    if (BYTE1(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE1(a2) == 2 || ((((a1 & 0x100) == 0) ^ (a2 >> 8)) & 1) == 0)
  {
    return 0;
  }

  if ((a1 & 0xFF0000) == 0x20000)
  {
    if (BYTE2(a2) != 2)
    {
      return 0;
    }
  }

  else if (BYTE2(a2) == 2 || ((((a1 & 0x10000) == 0) ^ HIWORD(a2)) & 1) == 0)
  {
    return 0;
  }

  v2 = HIBYTE(a2);
  if (HIBYTE(a1) == 2)
  {
    if (v2 == 2)
    {
      return 1;
    }
  }

  else if (v2 != 2 && ((v2 ^ HIBYTE(a1)) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000628F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v12 = a1[5];
  v13 = a2[5];
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v14 = a1[6];
  v15 = a2[6];
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v16 = a1[7];
  v17 = a2[7];
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = a1[8];
  v19 = a2[8];
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }
  }

  else if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v20 = a1[9];
  v21 = a2[9];
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v21 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v22 = a1[10];
  v23 = a2[10];
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v24 = a1[11];
  v25 = a2[11];
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

  v26 = a1[12];
  v27 = a2[12];
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      return 0;
    }
  }

  else if (v27 == 2 || ((v27 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v28 = a1[13];
  v29 = a2[13];
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
  {
    return 0;
  }

  v30 = a1[14];
  v31 = a2[14];
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      return 0;
    }
  }

  else if (v31 == 2 || ((v31 ^ v30) & 1) != 0)
  {
    return 0;
  }

  v32 = a1[15];
  v33 = a2[15];
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
  {
    return 0;
  }

  v34 = a1[16];
  v35 = a2[16];
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      return 0;
    }
  }

  else if (v35 == 2 || ((v35 ^ v34) & 1) != 0)
  {
    return 0;
  }

  v36 = a1[17];
  v37 = a2[17];
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
  {
    return 0;
  }

  v38 = a1[18];
  v39 = a2[18];
  if (v38 == 2)
  {
    if (v39 != 2)
    {
      return 0;
    }
  }

  else if (v39 == 2 || ((v39 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v40 = a1[19];
  v41 = a2[19];
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      return 0;
    }
  }

  else if (v41 == 2 || ((v41 ^ v40) & 1) != 0)
  {
    return 0;
  }

  v42 = a1[20];
  v43 = a2[20];
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
  {
    return 0;
  }

  v44 = a1[21];
  v45 = a2[21];
  if (v44 == 2)
  {
    if (v45 != 2)
    {
      return 0;
    }
  }

  else if (v45 == 2 || ((v45 ^ v44) & 1) != 0)
  {
    return 0;
  }

  v46 = a1[22];
  v47 = a2[22];
  if (v46 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }
  }

  else if (v47 == 2 || ((v47 ^ v46) & 1) != 0)
  {
    return 0;
  }

  v48 = a1[23];
  v49 = a2[23];
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else if (v49 == 2 || ((v49 ^ v48) & 1) != 0)
  {
    return 0;
  }

  v50 = a1[24];
  v51 = a2[24];
  if (v50 == 2)
  {
    if (v51 != 2)
    {
      return 0;
    }
  }

  else if (v51 == 2 || ((v51 ^ v50) & 1) != 0)
  {
    return 0;
  }

  v52 = a1[25];
  v53 = a2[25];
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }
  }

  else if (v53 == 2 || ((v53 ^ v52) & 1) != 0)
  {
    return 0;
  }

  v54 = a1[26];
  v55 = a2[26];
  if (v54 == 2)
  {
    if (v55 != 2)
    {
      return 0;
    }
  }

  else if (v55 == 2 || ((v55 ^ v54) & 1) != 0)
  {
    return 0;
  }

  v56 = a1[27];
  v57 = a2[27];
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
  {
    return 0;
  }

  v58 = a1[28];
  v59 = a2[28];
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      return 0;
    }
  }

  else if (v59 == 2 || ((v59 ^ v58) & 1) != 0)
  {
    return 0;
  }

  v60 = a1[29];
  v61 = a2[29];
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      return 0;
    }
  }

  else if (v61 == 2 || ((v61 ^ v60) & 1) != 0)
  {
    return 0;
  }

  v62 = a1[30];
  v63 = a2[30];
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      return 0;
    }
  }

  else if (v63 == 2 || ((v63 ^ v62) & 1) != 0)
  {
    return 0;
  }

  v64 = a1[31];
  v65 = a2[31];
  if (v64 == 2)
  {
    if (v65 != 2)
    {
      return 0;
    }
  }

  else if (v65 == 2 || ((v65 ^ v64) & 1) != 0)
  {
    return 0;
  }

  v66 = a1[32];
  v67 = a2[32];
  if (v66 == 2)
  {
    if (v67 != 2)
    {
      return 0;
    }
  }

  else if (v67 == 2 || ((v67 ^ v66) & 1) != 0)
  {
    return 0;
  }

  v68 = a1[33];
  v69 = a2[33];
  if (v68 == 2)
  {
    if (v69 != 2)
    {
      return 0;
    }
  }

  else if (v69 == 2 || ((v69 ^ v68) & 1) != 0)
  {
    return 0;
  }

  v70 = a1[34];
  v71 = a2[34];
  if (v70 == 2)
  {
    if (v71 != 2)
    {
      return 0;
    }
  }

  else if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
  {
    return 0;
  }

  v72 = *(a1 + 35);
  v73 = *(a2 + 35);
  if (v72 == 3)
  {
    if (v73 == 3)
    {
      return 1;
    }
  }

  else if (v73 != 3 && (sub_100062810(v72, v73) & 1) != 0)
  {
    return 1;
  }

  return 0;
}

BOOL sub_100062FE4(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(*a2, *a1), v5), vdupq_n_s64(3uLL)));
  if (v6.i8[4])
  {
    if ((v6.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v6.i8[0])
    {
      return 0;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v9 = *(a2 + 16);
    v10 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);
    v18[0] = *a2;
    v18[1] = v9;
    v19 = v10;
    v21 = BYTE6(v10);
    v20 = WORD2(v10);
    v14[0] = v4;
    v14[1] = v7;
    v15 = v8;
    v17 = BYTE6(v8);
    v16 = WORD2(v8);
    if ((sub_1000628F4(v14, v18) & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!v11 || (sub_1000061BC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a2 + 48);
  if (*(a1 + 48))
  {
    return v12 && (sub_1000061BC() & 1) != 0;
  }

  return !v12;
}

__n128 sub_100063114(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100063128(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[39])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100063188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 39) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 39) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1000631EC()
{
  result = qword_1000BB348;
  if (!qword_1000BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB348);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEAManagedConfigurationRestrictions.Features.CalculatorFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[4])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AEAManagedConfigurationRestrictions.Features.CalculatorFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100063300()
{
  result = qword_1000BB350;
  if (!qword_1000BB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB350);
  }

  return result;
}

uint64_t sub_100063354(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100063398(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100063404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23, v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v4 + 16);
  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = a3;
  aBlock[4] = sub_100065520;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAD18;
  v20 = _Block_copy(aBlock);

  sub_100008448(a2);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v9 + 8))(v13, v8);
  (*(v14 + 8))(v18, v23);
}

void sub_1000636C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 24);
  dispatch_group_enter(v20);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v19 = qword_1000BC5B8;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_10006557C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAD68;
  v18 = _Block_copy(aBlock);

  sub_100008448(a3);
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v21);

  OS_dispatch_group.wait()();
}

uint64_t sub_1000639D4()
{
  if (qword_1000B64A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC630;

  return v0;
}

id sub_100063A3C()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAAssessmentModeService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100063C1C()
{
  v2 = *(*v0 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject);
  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000B8548, &qword_1000B8540, &qword_100080FD0);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_100063D14(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v24, v15);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v23[1] = qword_1000BC5B8;
  v18 = swift_allocObject();
  v18[2] = v3;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a1;
  aBlock[4] = sub_1000645C0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000AAC00;
  v19 = _Block_copy(aBlock);
  v20 = v3;

  v21 = a1;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v8 + 8))(v12, v7);
  (*(v13 + 8))(v17, v24);
}

void sub_100063FFC(char *a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4)
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C370(v8, qword_1000BC518);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Publisher attempting to connect", v11, 2u);
  }

  if (*&a1[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection])
  {
    sub_1000644EC();
    v12 = swift_allocError();
    a2(0, v12);
  }

  else
  {
    v13 = *&a1[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc];
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a1;
    v15 = qword_1000B6460;

    v16 = a1;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = [objc_opt_self() proxyWithEndpoint:a4 queue:qword_1000BC5B8];
    v18 = swift_allocObject();
    v18[2] = sub_100064624;
    v18[3] = v14;
    v18[4] = v13;
    v18[5] = v17;
    v21[4] = sub_10006467C;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_100063398;
    v21[3] = &unk_1000AAC78;
    v19 = _Block_copy(v21);

    swift_unknownObjectRetain();
    v20 = v17;

    [v20 handleEventDidBeginWithCompletion:v19];
    _Block_release(v19);
  }
}

uint64_t sub_1000642E8(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    return (a3)(0, a1);
  }

  v7 = *(a5 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection);
  *(a5 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection) = a1;
  v9 = a1;

  *&v9[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = &off_1000AAB68;
  swift_unknownObjectWeakAssign();
  sub_1000095CC();
  v10 = [*&v9[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] endpoint];
  a3();

  v11 = *(a5 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject);

  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0);
  Subject<>.send()();
}

unint64_t sub_1000644EC()
{
  result = qword_1000BB418;
  if (!qword_1000BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB418);
  }

  return result;
}

uint64_t sub_100064540()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064578()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000645CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000645E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064634()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064688(void *a1, char a2, char *a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v12 = qword_1000BC5B8;
  *v11 = qword_1000BC5B8;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if (qword_1000B6420 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v14 = type metadata accessor for Logger();
  sub_10000C370(v14, qword_1000BC518);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67240192;
    *(v17 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "Assessment source did disconnect, gracefully: %{BOOL,public}d", v17, 8u);
  }

  v18 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection];
  if (v18 && (type metadata accessor for AEAClientConnection(), v19 = v18, v20 = a1, v21 = static NSObject.== infix(_:_:)(), v20, v19, (v21 & 1) != 0))
  {
    v22 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40];
    sub_100003F6C(&qword_1000BB430, &unk_1000848C0);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *&v20[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v24 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskQueue];
    v25 = swift_allocObject();
    v25[2] = a3;
    v25[3] = Publishers.AEACombineLatestMany.init(_:);
    v25[4] = 0;

    v26 = a3;
    sub_100063404(v23, sub_1000656E4, v25);
  }

  else
  {
    v27 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject];

    sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
    sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0);
    Subject<>.send()();
  }
}

uint64_t sub_100064A20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    swift_errorRetain();
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C370(v6, qword_1000BC518);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    sub_100010904(v5, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = sub_100067820(v17);
      v13 = sub_100043D60(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Found error while cleaning up from disconnect. Error: %{public}s", v9, 0xCu);
      sub_100003FB4(v10);

      sub_100010904(v5, 1);
    }

    else
    {

      sub_100010904(v5, 1);
    }
  }

  v14 = *(a2 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection);
  *(a2 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection) = 0;

  a3();
  v15 = *(a2 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject);

  sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0);
  Subject<>.send()();
}

uint64_t sub_100064C6C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = 0;
  }

  return a2(v2);
}

uint64_t sub_100064CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(*v7 + 88);

  sub_100008448(a3);
  v9(sub_1000655D4, v8);
}

uint64_t sub_100064D7C(void *a1, char a2, char *a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = qword_1000B6460;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC5B8;
  *v15 = qword_1000BC5B8;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v18)
  {
    if (qword_1000B6420 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v20 = type metadata accessor for Logger();
  sub_10000C370(v20, qword_1000BC518);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "Assessment source did disconnect, gracefully: %{BOOL,public}d", v23, 8u);
  }

  v24 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection];
  if (v24 && (type metadata accessor for AEAClientConnection(), v25 = v24, v26 = a1, v27 = static NSObject.== infix(_:_:)(), v26, v25, (v27 & 1) != 0))
  {
    v28 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40];
    sub_100003F6C(&qword_1000BB430, &unk_1000848C0);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *&v26[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakAssign();
    v30 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskQueue];
    v31 = swift_allocObject();
    v31[2] = a3;
    v31[3] = sub_100065504;
    v31[4] = v16;

    v32 = a3;

    sub_100063404(v29, sub_100065510, v31);
  }

  else
  {
    a4(0);
    v33 = *&a3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject];

    sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
    sub_100004EE0(&qword_1000BB428, &qword_1000B8540, &qword_100080FD0);
    Subject<>.send()();
  }
}

char *sub_10006516C(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_clientConnection] = 0;
  v7 = OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_activityStatusDidChangeSubject;
  v8 = sub_100003F6C(&qword_1000B8540, &qword_100080FD0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *&v3[v7] = PassthroughSubject.init()();
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc] = a1;
  sub_100023F48(a2, &v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource]);
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskQueue] = a3;
  swift_unknownObjectRetain();

  v11 = [a1 makeSourceRegisteringListener];
  *&v3[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] = v11;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for AEAAssessmentModeService();
  v12 = objc_msgSendSuper2(&v14, "init");
  [*&v12[OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_XPCListener] setDelegate:v12];
  sub_100023D58(a2);
  return v12;
}

id sub_100065290(void *a1)
{
  v2 = v1;
  v4 = [*(v1 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_xpc) connectionCanRegisterAsAssessmentSource:a1];
  if (v4)
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000C370(v5, qword_1000BC518);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring new connection for assessment source…", v8, 2u);
    }

    v9 = [objc_allocWithZone(AEAssessmentStateSourceRegisteringXPCInterfaceFactory) init];
    v10 = [v9 makeInterface];

    [a1 setExportedInterface:v10];
    [a1 setExportedObject:v2];
    v11 = &selRef_resume;
  }

  else
  {
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C370(v12, qword_1000BC518);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Invalid assessment source. Invalidating connection.", v15, 2u);
    }

    v11 = &selRef_invalidate;
  }

  [a1 *v11];
  return v4;
}

uint64_t sub_1000654CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006552C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006558C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000655D4(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = v5;
  dispatch_group_leave(*(v2 + 24));
  if (v3)
  {
    v3(&v6);
  }
}

uint64_t sub_100065628()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10006567C()
{
  result = qword_1000BB438;
  if (!qword_1000BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB438);
  }

  return result;
}

unint64_t sub_1000656F8()
{
  result = qword_1000BB440;
  if (!qword_1000BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB440);
  }

  return result;
}

uint64_t sub_10006574C()
{
  if (*v0)
  {
    if (qword_1000B6478 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC5E0;
  }

  else
  {
    if (qword_1000B6470 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC5D0;
  }

  v3 = *v1;
  v2 = v1[1];

  return v3;
}

unint64_t sub_10006580C()
{
  result = qword_1000BB448;
  if (!qword_1000BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BB448);
  }

  return result;
}

uint64_t sub_100065878()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100065938, 0, 0);
}

uint64_t sub_100065938()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = [objc_opt_self() assessmentModeFileURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(*sub_100005A3C((v2 + 24), *(v2 + 48)) + 16);
  URL.path.getter();
  v5 = String._bridgeToObjectiveC()();

  LODWORD(v1) = [v4 fileExistsAtPath:v5];

  if (v1)
  {
    v6 = v0[5];
    v7 = *sub_100005A3C((v2 + 24), *(v2 + 48));
    sub_10001D88C();
    v9 = v0[4];
    v8 = v0[5];
    v10 = v0[3];
    [*(v0[2] + 64) postSystemNotificationWithName:AEAssessmentStateDidChangeNotificationName];
    (*(v9 + 8))(v8, v10);
  }

  else
  {
    sub_1000656F8();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    (*(v0[4] + 8))(v0[5], v0[3]);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100065AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_100065878();
}

double sub_100065B80@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 numberForKey:v5];

  if (v6)
  {
    if ([v6 BOOLValue])
    {
      *(a2 + 24) = &type metadata for AEAAssessmentStateDeactivation;
      *(a2 + 32) = &off_1000AB088;
      v7 = swift_allocObject();
      *a2 = v7;
      sub_10000859C(v2 + 24, (v7 + 5));
      v8 = *(v2 + 64);
      swift_unknownObjectRetain();

      v7[2] = 0xD00000000000002CLL;
      v7[3] = 0x800000010008A420;
      v7[4] = 5;
      v7[10] = v8;
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100065C98(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100065D88, 0, 0);
}

uint64_t sub_100065D88()
{
  v1 = v0[4];
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v3 = String._bridgeToObjectiveC()();
  [v1 setNumber:isa forKey:v3];

  v0[2] = 0;
  v4 = [v1 persistWithError:v0 + 2];
  v5 = v0[2];
  if (v4)
  {
    v6 = v0[8];
    v7 = v0[5];
    v8 = objc_opt_self();
    v9 = v5;
    v10 = [v8 assessmentModeFileURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = *(*sub_100005A3C((v7 + 24), *(v7 + 48)) + 16);
    URL.path.getter();
    v12 = String._bridgeToObjectiveC()();

    LOBYTE(v11) = [v11 fileExistsAtPath:v12];

    v13 = v0[8];
    if ((v11 & 1) == 0)
    {
      v18 = *sub_100005A3C((v7 + 24), *(v7 + 48));
      sub_1000660E8(v13);
      v20 = v0[7];
      v19 = v0[8];
      v21 = v0[6];
      v24 = v0[3];
      v25 = *(v0[5] + 64);
      [v25 postSystemNotificationWithName:AEAssessmentStateDidChangeNotificationName];
      v24[3] = &type metadata for AEAAssessmentStateDeactivation;
      v24[4] = &off_1000AB088;
      v26 = swift_allocObject();
      *v24 = v26;
      sub_10000859C(v7 + 24, (v26 + 5));
      v26[2] = 0xD00000000000002CLL;
      v26[3] = 0x800000010008A420;
      v26[4] = 5;
      v26[10] = v25;
      v27 = *(v20 + 8);
      swift_unknownObjectRetain();
      v27(v19, v21);

      v28 = v0[1];
      goto LABEL_7;
    }

    v14 = v0[6];
    v15 = v0[7];
    sub_1000656F8();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    (*(v15 + 8))(v13, v14);
  }

  else
  {
    v17 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v22 = v0[8];

  v28 = v0[1];
LABEL_7:

  return v28();
}

uint64_t sub_1000660E8(uint64_t a1)
{
  v3 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v56 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v57 = v52 - v9;
  v55 = type metadata accessor for URL();
  v54 = *(v55 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v55, v11);
  v53 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLResourceValues();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  v16 = __chkstk_darwin(v13, v15);
  v58 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16, v18);
  v61 = v52 - v20;
  __chkstk_darwin(v19, v21);
  v65 = v52 - v22;
  v23 = type metadata accessor for CocoaError.Code();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10001D6DC();
  if (v1)
  {
    swift_errorRetain();
    static CocoaError.fileWriteFileExists.getter();
    sub_10001DF10();
    v30 = static _ErrorCodeProtocol.~= infix(_:_:)();

    result = (*(v24 + 8))(v28, v23);
    if (v30)
    {

      sub_100003F6C(&qword_1000B9398, &unk_100084B10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000807D0;
      *(inited + 32) = NSURLContentModificationDateKey;
      v32 = NSURLContentModificationDateKey;
      sub_100030788(inited);
      swift_setDeallocating();
      sub_1000667D0(inited + 32);
      v33 = v65;
      v34 = a1;
      URL.resourceValues(forKeys:)();

      v35 = v54;
      v36 = v53;
      v37 = v55;
      (*(v54 + 16))(v53, v34, v55);
      v38 = v59;
      v52[0] = *(v59 + 16);
      v52[1] = v59 + 16;
      v39 = v60;
      (v52[0])(v61, v33, v60);
      v40 = type metadata accessor for AEAConcreteFileSystemPrimitives.ConcreteURLResourceValues();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      v43 = swift_allocObject();
      (*(v35 + 32))(v43 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingURL, v36, v37);
      (*(v38 + 32))(v43 + OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues, v61, v39);
      v63 = v40;
      v64 = &off_1000A78F8;
      v62[0] = v43;
      v44 = *(v38 + 8);
      v45 = v39;
      v44(v65, v39);
      v46 = v57;
      Date.init()();
      v47 = type metadata accessor for Date();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
      v48 = *sub_10001A19C(v62, v63);
      sub_10006682C(v46, v56);
      swift_beginAccess();
      URLResourceValues.contentModificationDate.setter();
      swift_endAccess();
      sub_10006689C(v46);
      v49 = *sub_100005A3C(v62, v63);
      v50 = OBJC_IVAR____TtCC15assessmentagent31AEAConcreteFileSystemPrimitives25ConcreteURLResourceValues_backingValues;
      swift_beginAccess();
      v51 = v58;
      (v52[0])(v58, v49 + v50, v45);
      swift_beginAccess();
      URL.setResourceValues(_:)();
      v44(v51, v45);
      swift_endAccess();
      return sub_100003FB4(v62);
    }
  }

  return result;
}

uint64_t sub_1000666E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F618;

  return sub_100065C98(a1, a2);
}

uint64_t sub_100066788()
{
  v1 = v0[3];

  sub_100003FB4(v0 + 5);
  v2 = v0[10];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000667D0(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006689C(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BB450, &qword_100084B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006692C()
{
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_10006767C(v2);
}

uint64_t sub_1000669C0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v2 = "com.apple.Health";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "shouldRestoreStageManagerMode";
  }

  else
  {
    v4 = "com.apple.Health";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}