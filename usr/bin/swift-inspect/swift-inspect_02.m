uint64_t sub_1000226B0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 >= v11)
  {
    v16 = 112 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 112 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 112 && v6 > v7)
    {
LABEL_21:
      v5 -= 112;
      do
      {
        v17 = v5 + 112;
        if (*(v13 - 9) < *(v6 - 9))
        {
          v19 = v6 - 112;
          if (v17 != v6)
          {
            memmove(v5, v6 - 112, 0x70uLL);
          }

          if (v13 <= v4 || (v6 -= 112, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_33;
          }

          goto LABEL_21;
        }

        v18 = (v13 - 112);
        if (v17 != v13)
        {
          memmove(v5, v13 - 112, 0x70uLL);
        }

        v5 -= 112;
        v13 -= 112;
      }

      while (v18 > v4);
      v13 = v18;
    }
  }

  else
  {
    v12 = 112 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 112)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while (*(v6 + 5) < *(v4 + 5))
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 112;
          if (!v15)
          {
            goto LABEL_12;
          }

LABEL_13:
          v7 += 112;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_15;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 112;
        if (v15)
        {
          goto LABEL_13;
        }

LABEL_12:
        memmove(v7, v14, 0x70uLL);
        goto LABEL_13;
      }

LABEL_15:
      v6 = v7;
    }
  }

LABEL_33:
  v20 = 112 * ((v13 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20);
  }

  return 1;
}

uint64_t sub_100022910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002299C(v3);
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

char *sub_1000229B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CB8, &qword_10008FF10);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100022AB4(char *a1, int64_t a2, char a3)
{
  result = sub_100022C94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022AD4(char *a1, int64_t a2, char a3)
{
  result = sub_100023218(a1, a2, a3, *v3, &qword_1000B4CC0, &qword_10008FF18);
  *v3 = result;
  return result;
}

char *sub_100022B04(char *a1, int64_t a2, char a3)
{
  result = sub_100022FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022B24(char *a1, int64_t a2, char a3)
{
  result = sub_1000230F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100022B44(char *a1, int64_t a2, char a3)
{
  result = sub_100023218(a1, a2, a3, *v3, &qword_1000B50D0, &unk_100090F88);
  *v3 = result;
  return result;
}

char *sub_100022B74(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CE0, &qword_10008FF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 648);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[648 * v8])
    {
      memmove(v12, v13, 648 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 648 * v8);
  }

  return v10;
}

char *sub_100022C94(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C88, &qword_10008FEE0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100022DA0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B5128, &unk_1000911C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4DD8, &qword_1000907F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100022ED4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CF0, &qword_10008FF48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_100022FF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CC8, &qword_10008FF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000230F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B50D8, &unk_100090F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100023218(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000021C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void (*sub_100023314(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1000247E8(v6);
  v6[9] = sub_100024430(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1000233B8;
}

void sub_1000233B8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_100023418(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100023ACC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100023568(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_100023C4C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100023648(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5138, &qword_1000911E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1000238A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5100, &qword_100090FC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100023ACC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100023648(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100023D6C();
      goto LABEL_16;
    }

    sub_100024008(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100023C4C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000238A8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100023EC8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100024240(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100023D6C()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5138, &qword_1000911E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

void *sub_100023EC8()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5100, &qword_100090FC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_100024008(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5138, &qword_1000911E0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_100024240(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000021C0(&qword_1000B5100, &qword_100090FC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

void (*sub_100024430(uint64_t *a1, uint64_t a2, char a3))(char **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x2B8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 680) = v3;
  *(v8 + 672) = a2;
  v10 = *v3;
  v11 = sub_10001F92C(a2);
  *(v9 + 105) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100021914();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1000201FC(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_10001F92C(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 688) = v11;
  if (v17)
  {
    memmove((v9 + 224), (*(*v4 + 56) + 112 * v11), 0x69uLL);
  }

  else
  {
    *(v9 + 313) = 0u;
    *(v9 + 288) = 0u;
    *(v9 + 304) = 0u;
    *(v9 + 256) = 0u;
    *(v9 + 272) = 0u;
    *(v9 + 224) = 0u;
    *(v9 + 240) = 0u;
  }

  return sub_10002459C;
}

void sub_10002459C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 224;
  v4 = (*a1 + 336);
  v5 = *(*a1 + 19);
  *(v2 + 25) = *(*a1 + 18);
  *(v2 + 26) = v5;
  v6 = *(v2 + 15);
  *(v2 + 21) = *(v2 + 14);
  *(v2 + 22) = v6;
  v7 = *(v2 + 17);
  *(v2 + 23) = *(v2 + 16);
  *(v2 + 24) = v7;
  *(v4 + 89) = *(v3 + 89);
  v8 = *(v2 + 52);
  LOBYTE(v9) = v2[105];
  if (a2)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    v10 = *(v2 + 86);
    v11 = *(v2 + 85);
    if (v2[105])
    {
      goto LABEL_9;
    }

    v12 = *(v2 + 84);
    v9 = *v11;
    v13 = v3[5];
    *(v2 + 4) = v3[4];
    *(v2 + 5) = v13;
    *(v2 + 89) = *(v3 + 89);
    v14 = v3[1];
    *v2 = *v3;
    *(v2 + 1) = v14;
    v15 = v3[3];
    *(v2 + 2) = v3[2];
    *(v2 + 3) = v15;
    v9[(v10 >> 6) + 8] |= 1 << v10;
    *(v9[6] + 8 * v10) = v12;
    v16 = (v9[7] + 112 * v10);
    v17 = *v2;
    v18 = *(v2 + 2);
    v16[1] = *(v2 + 1);
    v16[2] = v18;
    *v16 = v17;
    v19 = *(v2 + 3);
    v20 = *(v2 + 4);
    v21 = *(v2 + 5);
    *(v16 + 89) = *(v2 + 89);
    v16[4] = v20;
    v16[5] = v21;
    v16[3] = v19;
    v22 = v9[2];
    v23 = __OFADD__(v22, 1);
    v8 = v22 + 1;
    if (!v23)
    {
LABEL_13:
      v9[2] = v8;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v8)
  {
LABEL_10:
    if (v9)
    {
      sub_100020F40(*(v2 + 86), **(v2 + 85));
    }

    goto LABEL_14;
  }

  v10 = *(v2 + 86);
  v11 = *(v2 + 85);
  if ((v9 & 1) == 0)
  {
    v24 = *(v2 + 84);
    v9 = *v11;
    v25 = v3[5];
    *(v2 + 11) = v3[4];
    *(v2 + 12) = v25;
    *(v2 + 201) = *(v3 + 89);
    v26 = v3[1];
    *(v2 + 7) = *v3;
    *(v2 + 8) = v26;
    v27 = v3[3];
    *(v2 + 9) = v3[2];
    *(v2 + 10) = v27;
    v9[(v10 >> 6) + 8] |= 1 << v10;
    *(v9[6] + 8 * v10) = v24;
    v28 = (v9[7] + 112 * v10);
    v29 = *(v2 + 7);
    v30 = *(v2 + 9);
    v28[1] = *(v2 + 8);
    v28[2] = v30;
    *v28 = v29;
    v31 = *(v2 + 10);
    v32 = *(v2 + 11);
    v33 = *(v2 + 12);
    *(v28 + 89) = *(v2 + 201);
    v28[4] = v32;
    v28[5] = v33;
    v28[3] = v31;
    v34 = v9[2];
    v23 = __OFADD__(v34, 1);
    v8 = v34 + 1;
    if (v23)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  memmove((*(*v11 + 56) + 112 * v10), v3, 0x69uLL);
LABEL_14:
  v35 = v3[5];
  *(v2 + 32) = v3[4];
  *(v2 + 33) = v35;
  *(v2 + 537) = *(v3 + 89);
  v36 = v3[1];
  *(v2 + 28) = *v3;
  *(v2 + 29) = v36;
  v37 = v3[3];
  *(v2 + 30) = v3[2];
  *(v2 + 31) = v37;
  sub_10002600C(v4, (v2 + 560), &qword_1000B50F0, &qword_100090FB8);
  sub_100002BCC((v2 + 448), &qword_1000B50F0, &qword_100090FB8);

  free(v2);
}

uint64_t (*sub_1000247E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100024810;
}

uint64_t sub_10002481C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v8 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v9 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v9 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v9 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *v3;
  if (!v8)
  {
LABEL_10:
    v12 = isUniquelyReferenced_nonNull_native;
    sub_100023EC8();
    isUniquelyReferenced_nonNull_native = v12;
    v9 = v13;
  }

  v10 = *(*(v9 + 48) + 8 * isUniquelyReferenced_nonNull_native);
  sub_1000248E8(isUniquelyReferenced_nonNull_native);
  *v3 = v13;
  return v10;
}

unint64_t sub_1000248E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_100024ABC(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

void *sub_100024B2C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000021C0(&qword_1000B5120, &qword_1000911C0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10001F92C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
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
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_10001F92C(v4);
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

unint64_t sub_100024C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000021C0(&qword_1000B50E0, &qword_100090FA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10001F92C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100024D14(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000021C0(&qword_1000B50A8, &qword_100090F48);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_10001F92C(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 9);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10001F92C(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100024E28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000021C0(&qword_1000B50F8, &qword_100090FC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 48);
  *v29 = *(a1 + 32);
  v5 = *(a1 + 96);
  v6 = *(a1 + 128);
  *&v29[80] = *(a1 + 112);
  *&v29[96] = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  *&v29[16] = v4;
  *&v29[32] = v7;
  v29[112] = *(a1 + 144);
  *&v29[48] = v8;
  *&v29[64] = v5;
  v9 = *v29;
  result = sub_10001F92C(*v29);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_10002600C(v29, v28, &qword_1000B5108, &unk_100090FD0);
    return v3;
  }

  v12 = a1 + 152;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v9;
    v13 = (v3[7] + 112 * result);
    v14 = *&v29[8];
    v15 = *&v29[40];
    v13[1] = *&v29[24];
    v13[2] = v15;
    *v13 = v14;
    v16 = *&v29[56];
    v17 = *&v29[72];
    v18 = *&v29[88];
    *(v13 + 89) = *&v29[97];
    v13[4] = v17;
    v13[5] = v18;
    v13[3] = v16;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_10002600C(v29, v28, &qword_1000B5108, &unk_100090FD0);
    v22 = *(v12 + 16);
    *v29 = *v12;
    v23 = *(v12 + 64);
    v24 = *(v12 + 96);
    *&v29[80] = *(v12 + 80);
    *&v29[96] = v24;
    v25 = *(v12 + 32);
    v26 = *(v12 + 48);
    *&v29[16] = v22;
    *&v29[32] = v25;
    v29[112] = *(v12 + 112);
    *&v29[48] = v26;
    *&v29[64] = v23;
    v9 = *v29;
    result = sub_10001F92C(*v29);
    v12 += 120;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100024FEC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;
  result = sub_10001F92C(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_100020654(v14, v5 & 1);
    v16 = *a3;
    result = sub_10001F92C(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v7;
    *(v18[7] + 8 * result) = v8;
    v20 = v18[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v21;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_100021AE4();
  result = v19;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v18[7] + 8 * result) = v8;
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v22 = *a3;
      result = sub_10001F92C(v6);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v13 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v23;
      if (v22[3] < v26)
      {
        sub_100020654(v26, 1);
        v27 = *a3;
        result = sub_10001F92C(v6);
        if ((v7 & 1) != (v28 & 1))
        {
          goto LABEL_5;
        }
      }

      v29 = *a3;
      if (v7)
      {
        *(v29[7] + 8 * result) = v8;
      }

      else
      {
        v29[(result >> 6) + 8] |= 1 << result;
        *(v29[6] + 8 * result) = v6;
        *(v29[7] + 8 * result) = v8;
        v30 = v29[2];
        v13 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v29[2] = v31;
      }

      v5 += 2;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

char *sub_1000251FC(char *result, uint64_t a2, uint64_t a3)
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

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
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

uint64_t sub_1000252A0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10002533C(_BYTE *a1)
{
  if ((a1[16] & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1[17] & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10000F3FC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10000F3FC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x736154646C696863;
  *(v5 + 5) = 0xE90000000000006BLL;
  if (a1[17])
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10000F3FC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x657275747566;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if (a1[18])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_10000F3FC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "groupChildTask");
    v11[47] = -18;
    if ((a1[19] & 1) == 0)
    {
LABEL_14:
      if ((a1[24] & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((a1[19] & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10000F3FC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "asyncLetTask");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1[24] & 1) == 0)
  {
LABEL_15:
    if ((a1[25] & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_10000F3FC((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x656C6C65636E6163;
  *(v17 + 5) = 0xE900000000000064;
  if ((a1[25] & 1) == 0)
  {
LABEL_16:
    if ((a1[26] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_34:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_10000F3FC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0xD000000000000012;
  *(v20 + 5) = 0x80000001000981D0;
  if ((a1[26] & 1) == 0)
  {
LABEL_17:
    if ((a1[27] & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_39:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_10000F3FC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x6574616C61637365;
  *(v23 + 5) = 0xE900000000000064;
  if (a1[27])
  {
LABEL_44:
    if (a1[28])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
      }

      v25 = *(v2 + 2);
      v24 = *(v2 + 3);
      if (v25 >= v24 >> 1)
      {
        v2 = sub_10000F3FC((v24 > 1), v25 + 1, 1, v2);
      }

      *(v2 + 2) = v25 + 1;
      v26 = &v2[16 * v25];
      *(v26 + 4) = 0x676E696E6E7572;
      *(v26 + 5) = 0xE700000000000000;
    }
  }

LABEL_50:
  if (a1[29])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000F3FC(0, *(v2 + 2) + 1, 1, v2);
    }

    v28 = *(v2 + 2);
    v27 = *(v2 + 3);
    if (v28 >= v27 >> 1)
    {
      v2 = sub_10000F3FC((v27 > 1), v28 + 1, 1, v2);
    }

    *(v2 + 2) = v28 + 1;
    v29 = &v2[16 * v28];
    *(v29 + 4) = 0x6465756575716E65;
    *(v29 + 5) = 0xE800000000000000;
  }

  else if (!*(v2 + 2))
  {

    return 48;
  }

  sub_1000021C0(&qword_1000B4D18, &qword_10008FF78);
  sub_10000BD8C(&qword_1000B4D20, &qword_1000B4D18, &qword_10008FF78);
  v30 = BidirectionalCollection<>.joined(separator:)();

  return v30;
}

uint64_t sub_100025900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = a5;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__s1 = a1;
      v14 = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = String.utf8CString.getter();
      v9 = __s1;
LABEL_6:
      v10 = strstr(v9, (v8 + 32));

      if (v10)
      {
        v11 = String.utf8CString.getter();
        strlen((v11 + 32));

        return String.init(cString:)();
      }

      else
      {
      }

      return v5;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v8 = String.utf8CString.getter();
      v9 = (v7 + 32);
      goto LABEL_6;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v6)
  {
    return v15;
  }

  return v5;
}

void *sub_100025A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000021C0(&qword_1000B50B8, &qword_100090F60);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_10001F9E8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_10001F9E8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025B5C@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_100025A48(&off_1000A9E88);
  sub_1000021C0(&qword_1000B50B0, &unk_100090F50);
  swift_arrayDestroy();
  if ((a1 & 0x10000) != 0)
  {
    v5 = sub_10000F3FC(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_10000F3FC((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v11 = &v5[16 * v10];
    *(v11 + 4) = 0xD000000000000011;
    *(v11 + 5) = 0x8000000100098050;
    if ((a1 & 0x100) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
    if ((a1 & 0x100) != 0)
    {
LABEL_3:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10000F3FC(0, *(v5 + 2) + 1, 1, v5);
      }

      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_10000F3FC((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v8 = &v5[16 * v7];
      *(v8 + 4) = 0xD000000000000011;
      *(v8 + 5) = 0x8000000100098030;
      goto LABEL_12;
    }
  }

  if (!*(v5 + 2))
  {
    v14 = 0xE100000000000000;
    v12 = 48;
    if (!v4[2])
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_12:

  sub_1000021C0(&qword_1000B4D18, &qword_10008FF78);
  sub_10000BD8C(&qword_1000B4D20, &qword_1000B4D18, &qword_10008FF78);
  v12 = BidirectionalCollection<>.joined(separator:)();
  v14 = v13;

  if (!v4[2])
  {
LABEL_16:

    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);

    v19 = 0x286E776F6E6B6E75;
    v18 = 0xE800000000000000;
    goto LABEL_17;
  }

LABEL_13:
  v15 = sub_10001F9E8(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = (v4[7] + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

LABEL_17:
  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = HIBYTE(a1);
  return result;
}

unint64_t sub_100025E28()
{
  result = qword_1000B5098;
  if (!qword_1000B5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5098);
  }

  return result;
}

unint64_t sub_100025E7C()
{
  result = qword_1000B50A0;
  if (!qword_1000B50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B50A0);
  }

  return result;
}

uint64_t sub_100025ED0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_10001CA34(a1, v2[4], v2[5], a2);
}

uint64_t sub_100025EF0(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100025F08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100025F50(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10002600C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000021C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002608C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000260B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000260EC(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_10002611C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100026168(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000261C4(uint64_t a1)
{
  result = sub_1000261EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000261EC()
{
  result = qword_1000B5110;
  if (!qword_1000B5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5110);
  }

  return result;
}

unint64_t sub_100026240(uint64_t a1)
{
  result = sub_100026268();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100026268()
{
  result = qword_1000B5118;
  if (!qword_1000B5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5118);
  }

  return result;
}

uint64_t sub_1000262BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000021C0(&qword_1000B5140, &qword_1000911E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v10 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for UniversalOptions, v10, v28);
  v11 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_100026534();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002BCC(v28, &qword_1000B47D8, &qword_10008E990);
    return sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_10000BD8C(&qword_1000B4828, &qword_1000B47D8, &qword_10008E990);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100002BCC(v28, &qword_1000B47D8, &qword_10008E990);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    result = sub_100002B38(a1);
    v13 = v19;
    v14 = v29;
    *(v29 + 32) = v18;
    *(v14 + 48) = v13;
    *(v14 + 64) = v20;
    *(v14 + 80) = v21;
    v15 = v17;
    *v14 = v16;
    *(v14 + 16) = v15;
  }

  return result;
}

unint64_t sub_100026534()
{
  result = qword_1000B5148;
  if (!qword_1000B5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5148);
  }

  return result;
}

unint64_t sub_10002659C()
{
  result = qword_1000B5150;
  if (!qword_1000B5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5150);
  }

  return result;
}

unint64_t sub_1000265F4()
{
  result = qword_1000B5158;
  if (!qword_1000B5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5158);
  }

  return result;
}

unint64_t sub_10002664C()
{
  result = qword_1000B5160;
  if (!qword_1000B5160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5160);
  }

  return result;
}

unint64_t sub_1000266B8(uint64_t a1)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    goto LABEL_54;
  }

  v3 = a1;
  v6 = (a1 + 16 + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  v127[0] = sub_100028B10(a1);
  v127[1] = v9;
  v10 = 0xE100000000000000;
  v126[0] = 45;
  v126[1] = 0xE100000000000000;
  v124 = 95;
  v125 = 0xE100000000000000;
  sub_100027B90();
  v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v4 = v12;

  v116 = v11;
  if (v5 == 1)
  {
    v115 = 49;
    v13 = 50;
    v114 = 0xE100000000000000;
  }

  else
  {
    v10 = 0xE900000000000029;
    v114 = 0xE200000000000000;
    v13 = 0x29312B3124282824;
    v115 = 12580;
  }

  v113 = v13;
  v117 = v10;
  (*(v8 + 16))(v126, v7, v8);
  CommandConfiguration.subcommands.getter();
  v15 = v14;
  sub_100027BE4(v126);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (v15 + 32);
    v2 = &_swiftEmptyArrayStorage;
    do
    {
      v120 = *v17;
      (*(*(v17 + 1) + 16))(v127);
      sub_100027BE4(v127);
      if (v128)
      {
        v124 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004E880(0, *(v2 + 2) + 1, 1);
          v2 = v124;
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          sub_10004E880((v18 > 1), v19 + 1, 1);
          v2 = v124;
        }

        *(v2 + 2) = v19 + 1;
        *&v2[16 * v19 + 32] = v120;
      }

      ++v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  v118 = v5;
  if (v5 != 1)
  {
    goto LABEL_21;
  }

  v1 = *(v2 + 2);
  if (!v1)
  {
    goto LABEL_21;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v21 = *(v2 + 2);
    v20 = *(v2 + 3);
    if (v21 >= v20 >> 1)
    {
      v2 = sub_100043048((v20 > 1), v21 + 1, 1, v2);
    }

    v22 = sub_100028988();
    *(v2 + 2) = v21 + 1;
    v23 = &v2[16 * v21];
    *(v23 + 4) = &type metadata for HelpCommand;
    *(v23 + 5) = v22;
LABEL_21:
    v119 = v3;
    v121 = v4;
    sub_100027C38(v3);
    v24 = *(v2 + 2);
    v25 = &_swiftEmptyArrayStorage;
    if (v24)
    {
      v124 = &_swiftEmptyArrayStorage;
      sub_10004E820(0, v24, 0);
      v25 = &_swiftEmptyArrayStorage;
      v28 = v2 + 40;
      do
      {
        v29 = (*(*v28 + 24))(*(v28 - 1), *v28, v26, v27);
        v31 = v30;
        v124 = v25;
        v33 = v25[2];
        v32 = v25[3];
        if (v33 >= v32 >> 1)
        {
          sub_10004E820((v32 > 1), v33 + 1, 1);
          v25 = v124;
        }

        v25[2] = v33 + 1;
        v34 = &v25[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        v28 += 2;
        --v24;
      }

      while (v24);
    }

    sub_100041830(v25);
    v4 = v119;
    v35 = sub_100027F74(v119);
    v124 = v116;
    v125 = v121;

    v36._countAndFlagsBits = 0xA7B202928;
    v36._object = 0xE500000000000000;
    String.append(_:)(v36);
    if (v118 == 1)
    {
      v37._countAndFlagsBits = sub_10002BBF8(4, 0xD000000000000050, 0x8000000100098460);
      String.append(_:)(v37);
    }

    strcpy(&v123, "    opts=");
    BYTE3(v123._object) = 0;
    HIDWORD(v123._object) = -369098752;
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 2594;
    v42._object = 0xE200000000000000;
    String.append(_:)(v42);
    String.append(_:)(v123);

    v43 = *(v35 + 16);
    if (v43)
    {
      v44 = (v35 + 40);
      do
      {
        v45 = *(v44 - 1);
        v46 = *v44;

        _StringGuts.grow(_:)(20);

        v123._countAndFlagsBits = 0xD000000000000010;
        v123._object = 0x8000000100098340;
        v47._countAndFlagsBits = v45;
        v47._object = v46;
        String.append(_:)(v47);

        v48._countAndFlagsBits = 2594;
        v48._object = 0xE200000000000000;
        String.append(_:)(v48);
        v49._countAndFlagsBits = 0xD000000000000010;
        v49._object = 0x8000000100098340;
        String.append(_:)(v49);

        v44 += 2;
        --v43;
      }

      while (v43);
    }

    v123._countAndFlagsBits = 0;
    v123._object = 0xE000000000000000;
    _StringGuts.grow(_:)(115);
    v50._countAndFlagsBits = 0xD00000000000001ALL;
    v50._object = 0x8000000100098360;
    String.append(_:)(v50);
    v51._countAndFlagsBits = v115;
    v51._object = v114;
    String.append(_:)(v51);
    v52._countAndFlagsBits = 0xD000000000000057;
    v52._object = 0x8000000100098380;
    String.append(_:)(v52);
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    String.append(_:)(v53);

    v54 = sub_1000282F0(v119);
    v56 = v55;
    v57 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      v58 = v54;
      _StringGuts.grow(_:)(21);

      strcpy(&v123, "case $prev in\n");
      HIBYTE(v123._object) = -18;
      v59 = sub_10002BBF8(4, v58, v56);
      v61 = v60;

      v62._countAndFlagsBits = v59;
      v62._object = v61;
      String.append(_:)(v62);

      v63._countAndFlagsBits = 0x636173650ALL;
      v63._object = 0xE500000000000000;
      String.append(_:)(v63);
      v64 = sub_10002BBF8(4, v123._countAndFlagsBits, v123._object);
      v66 = v65;

      v123._countAndFlagsBits = v64;
      v123._object = v66;

      v67._countAndFlagsBits = 10;
      v67._object = 0xE100000000000000;
      String.append(_:)(v67);

      v68._countAndFlagsBits = v64;
      v68._object = v66;
      String.append(_:)(v68);
    }

    if (*(v2 + 2))
    {
      _StringGuts.grow(_:)(30);

      v123._countAndFlagsBits = 0xD000000000000016;
      v123._object = 0x80000001000983E0;
      v69._countAndFlagsBits = v115;
      v69._object = v114;
      String.append(_:)(v69);

      v70._countAndFlagsBits = 0xA6E69207D5DLL;
      v70._object = 0xE600000000000000;
      String.append(_:)(v70);
      v71._countAndFlagsBits = 0xD000000000000016;
      v71._object = 0x80000001000983E0;
      String.append(_:)(v71);

      v72 = *(v2 + 2);
      v73 = v113;
      if (v72)
      {
        v74 = (v2 + 40);
        do
        {
          v75 = v73;
          v76 = *(v74 - 1);
          v77 = *v74;
          _StringGuts.grow(_:)(36);

          v123._countAndFlagsBits = 40;
          v123._object = 0xE100000000000000;
          v78 = *(v77 + 24);
          v79._countAndFlagsBits = v78(v76, v77);
          String.append(_:)(v79);

          v80._countAndFlagsBits = 0x202020200A29;
          v80._object = 0xE600000000000000;
          String.append(_:)(v80);
          v81._countAndFlagsBits = v116;
          v81._object = v121;
          String.append(_:)(v81);
          v82._countAndFlagsBits = 95;
          v82._object = 0xE100000000000000;
          String.append(_:)(v82);
          v83 = v76;
          v73 = v75;
          v84._countAndFlagsBits = v78(v83, v77);
          String.append(_:)(v84);

          v85._countAndFlagsBits = 32;
          v85._object = 0xE100000000000000;
          String.append(_:)(v85);
          v86._countAndFlagsBits = v75;
          v86._object = v117;
          String.append(_:)(v86);
          v87._countAndFlagsBits = 0xD000000000000013;
          v87._object = 0x8000000100098400;
          String.append(_:)(v87);
          v88 = sub_10002BBF8(8, 40, 0xE100000000000000);
          v90 = v89;

          v91._countAndFlagsBits = v88;
          v91._object = v90;
          String.append(_:)(v91);

          v74 += 2;
          --v72;
        }

        while (v72);
      }

      v92._countAndFlagsBits = 0x6361736520202020;
      v92._object = 0xE90000000000000ALL;
      String.append(_:)(v92);
      v4 = v119;
    }

    else
    {
    }

    v93._countAndFlagsBits = 0xD000000000000034;
    v93._object = 0x8000000100098420;
    String.append(_:)(v93);
    v3 = v124;
    v94 = v125;
    v95 = *(v2 + 2);
    if (!v95)
    {
      break;
    }

    v115 = v124;
    v116 = v125;
    v123._countAndFlagsBits = &_swiftEmptyArrayStorage;
    sub_10004E820(0, v95, 0);
    countAndFlagsBits = &_swiftEmptyArrayStorage;
    v97 = 32;
    v117 = 1;
    while (1)
    {
      sub_1000021C0(&qword_1000B5190, &qword_100092750);
      v122 = *&v2[v97];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008E640;
      *(inited + 32) = v122;
      v99 = (inited + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v101 = v4[3] >> 1, v1 = v4, v101 <= v118))
      {
        v1 = sub_100043048(isUniquelyReferenced_nonNull_native, v118 + 1, 1, v4);
        v101 = *(v1 + 3) >> 1;
      }

      v102 = *(v1 + 2);
      if (v101 <= v102)
      {
        break;
      }

      *&v1[16 * v102 + 32] = *v99;

      ++*(v1 + 2);
      v103 = sub_1000266B8(v1);
      v105 = v104;

      v123._countAndFlagsBits = countAndFlagsBits;
      v3 = countAndFlagsBits[2];
      v106 = countAndFlagsBits[3];
      if (v3 >= v106 >> 1)
      {
        sub_10004E820((v106 > 1), v3 + 1, 1);
        countAndFlagsBits = v123._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v3 + 1;
      v107 = &countAndFlagsBits[2 * v3];
      v107[4] = v103;
      v107[5] = v105;
      v97 += 16;
      --v95;
      v4 = v119;
      if (!v95)
      {

        v3 = v115;
        v94 = v116;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v2 = sub_100043048(0, (v1 + 1), 1, v2);
  }

LABEL_52:
  v108 = BidirectionalCollection<>.joined(separator:)();
  v110 = v109;

  v123._object = v94;

  v111._countAndFlagsBits = v108;
  v111._object = v110;
  String.append(_:)(v111);

  return v3;
}

unint64_t sub_100027B90()
{
  result = qword_1000B5178;
  if (!qword_1000B5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5178);
  }

  return result;
}

uint64_t sub_100027C38(uint64_t a1)
{
  result = sub_10002C1D0(0, a1);
  v2 = result;
  v3 = *(result + 16);
  if (!v3)
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_37:

    return v5;
  }

  v4 = 0;
  v41 = result + 32;
  v5 = &_swiftEmptyArrayStorage;
  v39 = *(result + 16);
  v40 = result;
  while (v4 < *(v2 + 16))
  {
    v6 = (v41 + 192 * v4);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[3];
    v45[2] = v6[2];
    v45[3] = v9;
    v45[0] = v7;
    v45[1] = v8;
    v10 = v6[4];
    v11 = v6[5];
    v12 = v6[7];
    v46 = v6[6];
    v47 = v12;
    v45[4] = v10;
    v45[5] = v11;
    v13 = v6[8];
    v14 = v6[9];
    v15 = v6[11];
    v50 = v6[10];
    v51 = v15;
    v48 = v13;
    v49 = v14;
    v16 = &_swiftEmptyArrayStorage;
    if (BYTE8(v46))
    {
      goto LABEL_23;
    }

    if (*&v45[0] >= 2uLL)
    {
      v17 = *&v45[0];
    }

    else
    {
      v17 = &_swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v18)
    {
      sub_100028B00(*&v45[0]);
      sub_1000289DC(v45, &v42);
      v44 = &_swiftEmptyArrayStorage;
      sub_10004E820(0, v18, 0);
      v16 = v44;
      v19 = (v17 + 6);
      while (1)
      {
        v20 = *(v19 - 2);
        v21 = *(v19 - 1);
        v22 = *v19;
        if (!(v22 >> 6))
        {
          break;
        }

        if (v22 >> 6 != 1)
        {
          v42 = 45;
          v24 = 0xE100000000000000;
          goto LABEL_17;
        }

        v42 = 0;
        v43 = 0xE000000000000000;

        v23._countAndFlagsBits = 45;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
        Character.write<A>(to:)();
LABEL_18:
        sub_100028AE8(v20, v21, v22);
        v26 = v42;
        v27 = v43;
        v44 = v16;
        v29 = v16[2];
        v28 = v16[3];
        if (v29 >= v28 >> 1)
        {
          sub_10004E820((v28 > 1), v29 + 1, 1);
          v16 = v44;
        }

        v19 += 24;
        v16[2] = v29 + 1;
        v30 = &v16[2 * v29];
        v30[4] = v26;
        v30[5] = v27;
        if (!--v18)
        {

          result = sub_100028A38(v45);
          v3 = v39;
          v2 = v40;
          goto LABEL_23;
        }
      }

      v42 = 11565;
      v24 = 0xE200000000000000;
LABEL_17:
      v43 = v24;

      v25._countAndFlagsBits = v20;
      v25._object = v21;
      String.append(_:)(v25);
      goto LABEL_18;
    }

    sub_100028B00(*&v45[0]);

    v16 = &_swiftEmptyArrayStorage;
LABEL_23:
    v31 = v16[2];
    v32 = *(v5 + 2);
    v33 = v32 + v31;
    if (__OFADD__(v32, v31))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && (v34 = *(v5 + 3) >> 1, v34 >= v33))
    {
      if (!v16[2])
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v32 <= v33)
      {
        v35 = v32 + v31;
      }

      else
      {
        v35 = v32;
      }

      result = sub_100042F3C(result, v35, 1, v5);
      v5 = result;
      v34 = *(result + 24) >> 1;
      if (!v16[2])
      {
LABEL_3:

        if (v31)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if (v34 - *(v5 + 2) < v31)
    {
      goto LABEL_41;
    }

    swift_arrayInitWithCopy();

    if (v31)
    {
      v36 = *(v5 + 2);
      v37 = __OFADD__(v36, v31);
      v38 = v36 + v31;
      if (v37)
      {
        goto LABEL_42;
      }

      *(v5 + 2) = v38;
    }

LABEL_4:
    if (++v4 == v3)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_100027F74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    result = sub_10004C130(*(result + 16 + 16 * v1), *(*(result + 16 + 16 * v1 + 8) + 8), 0, 0, 0, 0);
    v4 = v3;
    v5 = *(result + 16);
    if (!v5)
    {
      v10 = &_swiftEmptyArrayStorage;
      goto LABEL_22;
    }

    v6 = 0;
    v7 = 0x80000001000986D0;
    v8 = "$(${COMP_WORDS[0]} ";
    v9 = result + 32;
    v10 = &_swiftEmptyArrayStorage;
    v11 = v5 - 1;
    while (1)
    {
      v12 = (v9 + 192 * v6);
      v13 = v6;
      while (1)
      {
        if (v13 >= *(result + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v14 = *v12;
        v15 = v12[1];
        v16 = v12[3];
        v46[2] = v12[2];
        v46[3] = v16;
        v46[0] = v14;
        v46[1] = v15;
        v17 = v12[4];
        v18 = v12[5];
        v19 = v12[7];
        v46[6] = v12[6];
        v46[7] = v19;
        v46[4] = v17;
        v46[5] = v18;
        v20 = v12[8];
        v21 = v12[9];
        v22 = v12[11];
        v49 = v12[10];
        v50 = v22;
        v47 = v20;
        v48 = v21;
        if (*&v46[0])
        {
          goto LABEL_7;
        }

        v23 = v47;
        if (v48 > 1u)
        {
          break;
        }

        if (v48 != 1)
        {
          v38 = v11;
          v39 = v9;
          v40 = v4;
          v41 = result;
          v44 = v47;
          sub_1000289DC(v46, &v42);
          sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
          sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
          v27 = BidirectionalCollection<>.joined(separator:)();
          v29 = v28;
          sub_100028A38(v46);
          goto LABEL_15;
        }

LABEL_7:
        ++v13;
        v12 += 12;
        if (v5 == v13)
        {
          goto LABEL_22;
        }
      }

      if (v48 == 4)
      {
        goto LABEL_7;
      }

      v38 = v11;
      v39 = v9;
      v40 = v4;
      v41 = result;
      if (v48 == 2)
      {
        v24 = *(&v47 + 1);
        v44 = 10276;
        v45 = 0xE200000000000000;
        sub_1000289DC(v46, &v42);
        v25._countAndFlagsBits = v23;
        v25._object = v24;
        String.append(_:)(v25);
        v26._countAndFlagsBits = 41;
        v26._object = 0xE100000000000000;
        String.append(_:)(v26);
        sub_100028A38(v46);
        v27 = v44;
        v29 = v45;
      }

      else
      {
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_1000289DC(v46, &v42);
        _StringGuts.grow(_:)(43);

        v42 = 0xD000000000000015;
        v43 = v7;
        v30._countAndFlagsBits = sub_100028CFC(v2);
        String.append(_:)(v30);

        v31._object = (v8 | 0x8000000000000000);
        v31._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v31);
        sub_100028A38(v46);
        v27 = v42;
        v29 = v43;
      }

LABEL_15:
      v32 = v8;
      v33 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100042F3C(0, *(v10 + 2) + 1, 1, v10);
      }

      v35 = *(v10 + 2);
      v34 = *(v10 + 3);
      result = v41;
      v11 = v38;
      if (v35 >= v34 >> 1)
      {
        v37 = sub_100042F3C((v34 > 1), v35 + 1, 1, v10);
        v11 = v38;
        v10 = v37;
        result = v41;
      }

      v6 = v13 + 1;
      *(v10 + 2) = v35 + 1;
      v36 = &v10[16 * v35];
      *(v36 + 4) = v27;
      *(v36 + 5) = v29;
      v7 = v33;
      v8 = v32;
      v9 = v39;
      v4 = v40;
      if (v11 == v13)
      {
LABEL_22:

        return v10;
      }
    }
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000282F0(uint64_t result)
{
  v68 = result;
  v1 = *(result + 16);
  if (!v1)
  {
LABEL_53:
    __break(1u);
    return result;
  }

  result = sub_10004C130(*(result + 16 + 16 * v1), *(*(result + 16 + 16 * v1 + 8) + 8), 0, 0, 0, 0);
  v2 = result;
  v3 = *(result + 16);
  v4 = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v5 = 0;
    v6 = result + 32;
    v69 = &_swiftEmptyArrayStorage;
    v70 = *(result + 16);
    v71 = result;
    v72 = result + 32;
    while (v5 < *(v2 + 16))
    {
      v7 = (v6 + 192 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[3];
      v80[2] = v7[2];
      v80[3] = v10;
      v80[0] = v8;
      v80[1] = v9;
      v11 = v7[4];
      v12 = v7[5];
      v13 = v7[7];
      v81 = v7[6];
      v82 = v13;
      v80[4] = v11;
      v80[5] = v12;
      v14 = v7[8];
      v15 = v7[9];
      v16 = v7[11];
      v85 = v7[10];
      v86 = v16;
      v83 = v14;
      v84 = v15;
      v17 = BYTE8(v81);
      v87[0] = *&v80[0];
      if (!BYTE8(v81))
      {
        if (*&v80[0] >= 2uLL)
        {
          v19 = *&v80[0];
        }

        else
        {
          v19 = v4;
        }

        v20 = v19[2];
        if (!v20)
        {
          sub_1000289DC(v80, &v78);
          sub_100028A8C(v87, &v78);

          v18 = v4;
LABEL_24:
          v6 = v72;
          goto LABEL_25;
        }

        v73 = v5;
        sub_1000289DC(v80, &v78);
        sub_100028A8C(v87, &v78);
        v75 = v4;
        sub_10004E820(0, v20, 0);
        v18 = v75;
        v21 = (v19 + 6);
        while (2)
        {
          v23 = *(v21 - 2);
          v22 = *(v21 - 1);
          v24 = *v21;
          if (v24 >> 6)
          {
            if (v24 >> 6 == 1)
            {
              v78 = 0;
              v79 = 0xE000000000000000;

              v25._countAndFlagsBits = 45;
              v25._object = 0xE100000000000000;
              String.append(_:)(v25);
              Character.write<A>(to:)();
              goto LABEL_19;
            }

            v78 = 45;
            v26 = 0xE100000000000000;
          }

          else
          {
            v78 = 11565;
            v26 = 0xE200000000000000;
          }

          v79 = v26;

          v27._countAndFlagsBits = v23;
          v27._object = v22;
          String.append(_:)(v27);
LABEL_19:
          sub_100028AE8(v23, v22, v24);
          v28 = v78;
          v29 = v79;
          v75 = v18;
          v31 = v18[2];
          v30 = v18[3];
          if (v31 >= v30 >> 1)
          {
            sub_10004E820((v30 > 1), v31 + 1, 1);
            v18 = v75;
          }

          v21 += 24;
          v18[2] = v31 + 1;
          v32 = &v18[2 * v31];
          v32[4] = v28;
          v32[5] = v29;
          if (!--v20)
          {

            v3 = v70;
            v2 = v71;
            v4 = &_swiftEmptyArrayStorage;
            v5 = v73;
            goto LABEL_24;
          }

          continue;
        }
      }

      sub_1000289DC(v80, &v78);
      v18 = v4;
LABEL_25:
      ++v5;
      v33 = v18[2];

      if (v33 && (BYTE8(v85) & 1) != 0)
      {
        v78 = 0;
        v79 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);
        v34 = v4;
        if (v17)
        {
          goto LABEL_44;
        }

        if (v87[0] >= 2uLL)
        {
          v35 = v87[0];
        }

        else
        {
          v35 = v4;
        }

        v36 = v35[2];
        if (v36)
        {
          sub_100028A8C(v87, &v75);
          v77 = v4;
          sub_10004E820(0, v36, 0);
          v34 = v77;
          v74 = v5;
          v37 = (v35 + 6);
          while (1)
          {
            v38 = *(v37 - 2);
            v39 = *(v37 - 1);
            v40 = *v37;
            if (!(v40 >> 6))
            {
              break;
            }

            if (v40 >> 6 != 1)
            {
              v75 = 45;
              v42 = 0xE100000000000000;
              goto LABEL_38;
            }

            v75 = 0;
            v76 = 0xE000000000000000;

            v41._countAndFlagsBits = 45;
            v41._object = 0xE100000000000000;
            String.append(_:)(v41);
            Character.write<A>(to:)();
LABEL_39:
            sub_100028AE8(v38, v39, v40);
            v44 = v75;
            v45 = v76;
            v77 = v34;
            v47 = v34[2];
            v46 = v34[3];
            v5 = v74;
            if (v47 >= v46 >> 1)
            {
              sub_10004E820((v46 > 1), v47 + 1, 1);
              v34 = v77;
            }

            v37 += 24;
            v34[2] = v47 + 1;
            v48 = &v34[2 * v47];
            v48[4] = v44;
            v48[5] = v45;
            if (!--v36)
            {

              v4 = &_swiftEmptyArrayStorage;
              goto LABEL_44;
            }
          }

          v75 = 11565;
          v42 = 0xE200000000000000;
LABEL_38:
          v76 = v42;

          v43._countAndFlagsBits = v38;
          v43._object = v39;
          String.append(_:)(v43);
          goto LABEL_39;
        }

        sub_100028A8C(v87, &v75);

        v34 = v4;
LABEL_44:
        v49 = v4;
        v75 = v34;
        sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
        sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
        v50 = BidirectionalCollection<>.joined(separator:)();
        v52 = v51;

        v53._countAndFlagsBits = v50;
        v53._object = v52;
        String.append(_:)(v53);

        v54._countAndFlagsBits = 2601;
        v54._object = 0xE200000000000000;
        String.append(_:)(v54);
        v55 = sub_100027224(v68);
        v57 = sub_10002BBF8(4, v55, v56);
        v59 = v58;

        v60._countAndFlagsBits = v57;
        v60._object = v59;
        String.append(_:)(v60);

        v61._countAndFlagsBits = 0x746572202020200ALL;
        v61._object = 0xEE003B3B0A6E7275;
        String.append(_:)(v61);
        sub_100028A38(v80);
        v62 = v78;
        v63 = v79;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100042F3C(0, *(v69 + 2) + 1, 1, v69);
          v69 = result;
        }

        v6 = v72;
        v3 = v70;
        v65 = *(v69 + 2);
        v64 = *(v69 + 3);
        if (v65 >= v64 >> 1)
        {
          result = sub_100042F3C((v64 > 1), v65 + 1, 1, v69);
          v69 = result;
        }

        *(v69 + 2) = v65 + 1;
        v66 = &v69[16 * v65];
        *(v66 + 4) = v62;
        *(v66 + 5) = v63;
        v2 = v71;
        v4 = v49;
        if (v5 == v70)
        {
          goto LABEL_51;
        }
      }

      else
      {
        result = sub_100028A38(v80);
        if (v5 == v3)
        {
          goto LABEL_51;
        }
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v69 = &_swiftEmptyArrayStorage;
LABEL_51:

  v78 = v69;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
  v67 = BidirectionalCollection<>.joined(separator:)();

  return v67;
}

unint64_t sub_100028988()
{
  result = qword_1000B5198;
  if (!qword_1000B5198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5198);
  }

  return result;
}

uint64_t sub_100028AE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

unint64_t sub_100028B00(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100028B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = &_swiftEmptyArrayStorage;
LABEL_19:
    sub_100029A8C(v3);

    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v13 = BidirectionalCollection<>.joined(separator:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    return 95;
  }

  v2 = (a1 + 40);
  v3 = &_swiftEmptyArrayStorage;
  while (1)
  {
    result = sub_100029684(*(v2 - 1), *v2);
    v5 = *(result + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    v8 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      result = sub_100042F3C(result, v9, 1, v3);
      v3 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 2;
    if (!--v1)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *sub_100028CFC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = v3 != 0;
  v5 = &_swiftEmptyArrayStorage;
  if (v3 >= 2)
  {
    v39[0] = &_swiftEmptyArrayStorage;
    result = sub_10004E820(0, (v3 - v4) & ~((v3 - v4) >> 63), 0);
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      v5 = v39[0];
      v12 = a1 + 16 * v4 + 40;
      while (v4 < v3)
      {
        v13 = *(v12 - 8);
        result = (*(*v12 + 24))();
        v39[0] = v5;
        v16 = v5[2];
        v15 = v5[3];
        if (v16 >= v15 >> 1)
        {
          v18 = result;
          v19 = v14;
          sub_10004E820((v15 > 1), v16 + 1, 1);
          v14 = v19;
          result = v18;
          v5 = v39[0];
        }

        v5[2] = v16 + 1;
        v17 = &v5[2 * v16];
        v17[4] = result;
        v17[5] = v14;
        ++v4;
        v12 += 16;
        if (v3 == v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    v39[0] = v5;
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v6 = BidirectionalCollection<>.joined(separator:)();
    v8 = v7;

    v9 = *v1;
    if (*v2 >= 2)
    {
      v20 = *v2;
    }

    else
    {
      v9 = &_swiftEmptyArrayStorage;
    }

    v21 = sub_1000592A8(v9);
    v23 = v22;
    v25 = v24;
    v26 = v24;

    if (v26 <= 0xFD)
    {
      v32 = sub_100068E38(v21, v23, v25);
      v34 = v35;
      sub_100029F88(v21, v23, v25);
    }

    else
    {
      v27 = v2[4];
      if (v27[2])
      {
        v28 = v27[4];
        v29 = v27[5];
        v30 = v27[6];
        sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10008E640;
        *(inited + 32) = v28;
        *(inited + 40) = v29;
        v39[0] = v30;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100041830(inited);
        v32 = BidirectionalCollection<>.joined(separator:)();
        v34 = v33;
      }

      else
      {
        v34 = 0xE300000000000000;
        v32 = 2960685;
      }
    }

    _StringGuts.grow(_:)(22);

    strcpy(v39, "---completion ");
    HIBYTE(v39[1]) = -18;
    v36._countAndFlagsBits = v6;
    v36._object = v8;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 539831584;
    v37._object = 0xE400000000000000;
    String.append(_:)(v37);
    v38._countAndFlagsBits = v32;
    v38._object = v34;
    String.append(_:)(v38);

    return v39[0];
  }

  return result;
}

uint64_t CommandConfiguration.commandName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static CompletionShell.fish.getter()
{
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return 1752394086;
}

uint64_t sub_1000291B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s14ArgumentParser15CompletionShellV8rawValueACSgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000291E4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_1000291F0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002923C()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_100029244()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10002929C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000292CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 == 6845306 && a2 == 0xE300000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return sub_10002C418(a3, a4);
  }

  _stringCompareWithSmolCheck(_:_:expecting:)();
  if (a1 == 1752392034 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_100028B10(inited);
    swift_setDeallocating();
    sub_100027B90();
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v13 = v12;

    _StringGuts.grow(_:)(34);

    strcpy(v24, "#!/bin/bash\n\n");
    HIWORD(v24[1]) = -4864;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10008E640;
    *(v14 + 32) = a3;
    *(v14 + 40) = a4;
    v15 = sub_1000266B8(v14);
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 0x656C706D6F630A0ALL;
    v19._object = 0xEE0020462D206574;
    String.append(_:)(v19);
    v20._countAndFlagsBits = v11;
    v20._object = v13;
    String.append(_:)(v20);

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = (*(a4 + 24))(a3, a4);
    String.append(_:)(v22);

    return v24[0];
  }

  else
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    if (a1 == 1752394086 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return sub_10002A22C(a3, a4);
    }

    else
    {
      _StringGuts.grow(_:)(27);
      v23._object = 0x8000000100098740;
      v23._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v23);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void *sub_100029684(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v48);
  v50 = v49;
  sub_100029F9C(&v50, &v46);
  sub_100027BE4(v48);
  v4 = *(&v50 + 1);
  if (!*(&v50 + 1))
  {
    (*(a2 + 24))(a1, a2);
    v46 = 32;
    v47 = 0xE100000000000000;
    __chkstk_darwin();
    v43 = &v46;
    v27 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002A00C, v42, v25, v26, &v44);
    v28 = v27[2];
    if (v28)
    {
      v46 = &_swiftEmptyArrayStorage;
      result = sub_10004E820(0, v28, 0);
      v29 = 0;
      v30 = v46;
      v31 = v27 + 7;
      while (v29 < v27[2])
      {
        v32 = *(v31 - 3);
        v33 = *(v31 - 2);
        v34 = *(v31 - 1);
        v35 = *v31;

        v36 = static String._fromSubstring(_:)();
        v38 = v37;

        v46 = v30;
        v40 = *(v30 + 16);
        v39 = *(v30 + 24);
        if (v40 >= v39 >> 1)
        {
          result = sub_10004E820((v39 > 1), v40 + 1, 1);
          v30 = v46;
        }

        ++v29;
        *(v30 + 16) = v40 + 1;
        v41 = v30 + 16 * v40;
        *(v41 + 32) = v36;
        *(v41 + 40) = v38;
        v31 += 4;
        if (v28 == v29)
        {

          return v30;
        }
      }

      goto LABEL_21;
    }

    return &_swiftEmptyArrayStorage;
  }

  v5 = v50;
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10008E640;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  (*(a2 + 24))(a1, a2);
  v46 = 32;
  v47 = 0xE100000000000000;
  __chkstk_darwin();
  v43 = &v46;
  v9 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002A210, v42, v7, v8, &v44);
  v10 = v9[2];
  if (!v10)
  {

    v13 = &_swiftEmptyArrayStorage;
LABEL_17:
    v46 = v6;
    sub_100041830(v13);
    return v46;
  }

  v45 = v6;
  v46 = &_swiftEmptyArrayStorage;
  result = sub_10004E820(0, v10, 0);
  v12 = 0;
  v13 = v46;
  v14 = v9 + 7;
  while (v12 < v9[2])
  {
    v15 = *(v14 - 3);
    v16 = *(v14 - 2);
    v17 = *(v14 - 1);
    v18 = *v14;

    v19 = static String._fromSubstring(_:)();
    v21 = v20;

    v46 = v13;
    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      result = sub_10004E820((v22 > 1), v23 + 1, 1);
      v13 = v46;
    }

    ++v12;
    v13[2] = v23 + 1;
    v24 = &v13[2 * v23];
    v24[4] = v19;
    v24[5] = v21;
    v14 += 4;
    if (v10 == v12)
    {

      v6 = v45;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_100029A8C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = a1[4];
  v3 = a1[5];
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008E640;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  result = swift_bridgeObjectRetain_n();
  if (v1 != 1)
  {
    v7 = a1 + 5;
    v8 = 1;
    v21 = a1 + 5;
    do
    {
      v9 = (v5 + 16);
      v10 = &v7[2 * v8];
      v11 = v8;
      while (1)
      {
        if (v11 >= v1)
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        v8 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_22;
        }

        v12 = *(v10 - 1);
        v13 = *v10;
        v14 = *v9;
        if (!*v9)
        {
          break;
        }

        v15 = &v9[2 * v14];
        result = *v15;
        if (*v15 != v12 || v15[1] != v13)
        {
          v17 = *(v10 - 1);
          v18 = *v10;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v11;
        v10 += 2;
        if (v8 == v1)
        {
          goto LABEL_3;
        }
      }

      v19 = *(v5 + 24);

      if (v14 >= v19 >> 1)
      {
        result = sub_100042F3C((v19 > 1), v14 + 1, 1, v5);
        v5 = result;
      }

      v7 = v21;
      *(v5 + 16) = v14 + 1;
      v20 = v5 + 16 * v14;
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
    }

    while (v8 != v1);
  }

LABEL_3:

  return v5;
}

uint64_t _s14ArgumentParser15CompletionShellV8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  result = 6845306;
  if (a1 != 6845306 || a2 != 0xE300000000000000)
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return a1;
    }

    result = 1752392034;
    if (a1 != 1752392034 || a2 != 0xE400000000000000)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v8 = a1 == 1752394086 && a2 == 0xE400000000000000;
      if (v6 & 1) != 0 || v8 || (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return a1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t _s14ArgumentParser15CompletionShellV12autodetectedACSgyFZ_0()
{
  result = getenv("SHELL");
  if (result)
  {
    String.init(cString:)();
    v20[0] = 47;
    v20[1] = 0xE100000000000000;
    __chkstk_darwin();
    v18[2] = v20;
    v3 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002A210, v18, v1, v2, &v19);
    v4 = v3[2];
    if (!v4)
    {
LABEL_22:

      return 0;
    }

    v5 = &v3[4 * v4];
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v5[3];
    swift_bridgeObjectRetain_n();

    v10 = static String._fromSubstring(_:)();
    v12 = v11;
    swift_bridgeObjectRelease_n();
    result = 6845306;
    if (v10 != 6845306 || v12 != 0xE300000000000000)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return v10;
      }

      result = 1752392034;
      if (v10 != 1752392034 || v12 != 0xE400000000000000)
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = v10 == 1752394086 && v12 == 0xE400000000000000;
        if (v15 & 1) != 0 || v17 || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return v10;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

unint64_t sub_100029ED4()
{
  result = qword_1000B51B8;
  if (!qword_1000B51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B51B8);
  }

  return result;
}

__n128 sub_100029F6C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100029F88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_100028AE8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100029F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B51D8, &qword_100094230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002A02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    result = 6845306;
    if (a3 != 6845306 || a4 != 0xE300000000000000)
    {
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return a3;
      }

      result = 1752392034;
      if (a3 != 1752392034 || a4 != 0xE400000000000000)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return a3;
        }

        result = 1752394086;
        if (a3 != 1752394086 || a4 != 0xE400000000000000)
        {
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            return a3;
          }

          sub_10002A1BC();
          swift_allocError();
          *v8 = a3;
          *(v8 + 8) = a4;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    result = _s14ArgumentParser15CompletionShellV12autodetectedACSgyFZ_0();
    if (!v7)
    {
      sub_10002A1BC();
      swift_allocError();
      *v8 = 0;
      *(v8 + 8) = 0;
LABEL_16:
      *(v8 + 16) = v9;
      *(v8 + 32) = v10;
      *(v8 + 48) = v11;
      *(v8 + 64) = v12;
      *(v8 + 80) = 3;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_10002A1BC()
{
  result = qword_1000B51E0;
  if (!qword_1000B51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B51E0);
  }

  return result;
}

uint64_t sub_10002A22C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v6 = v5;
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10008F240;
  *(v7 + 32) = sub_10002B7FC(v4, v6);
  *(v7 + 40) = v8;
  v9 = sub_10002B91C(v4, v6);
  v11 = v10;

  *(v7 + 48) = v9;
  *(v7 + 56) = v11;
  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10008E640;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  sub_10002A3F8(v12);

  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10002BB28();
  v13 = BidirectionalCollection<>.joined(separator:)();

  v14._countAndFlagsBits = 2570;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);

  v15 = BidirectionalCollection<>.joined(separator:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  return v13;
}

Swift::String *sub_10002A3F8(uint64_t a1)
{
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    v2 = sub_100043048(0, (v1 + 1), 1, v2);
    goto LABEL_15;
  }

  v3 = a1;
  v9 = a1 + 32;
  v8 = *(a1 + 32);
  v10 = v9 + 16 * v7;
  v12 = *(v10 - 16);
  v11 = *(v10 - 8);
  v5 = (*(*(v9 + 8) + 24))();
  v4 = v13;
  (*(v11 + 16))(v142, v12, v11);
  CommandConfiguration.subcommands.getter();
  v15 = v14;
  sub_100027BE4(v142);
  countAndFlagsBits = v15[1]._countAndFlagsBits;
  v6 = _swiftEmptyArrayStorage;
  v137 = v3;
  if (countAndFlagsBits)
  {
    v17 = v15 + 2;
    v2 = _swiftEmptyArrayStorage;
    do
    {
      v136 = *v17;
      (*(v17->_object + 2))(v143);
      sub_100027BE4(v143);
      if (v144)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148._countAndFlagsBits = v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E880(0, v2[1]._countAndFlagsBits + 1, 1);
          v2 = v148._countAndFlagsBits;
        }

        v20 = v2[1]._countAndFlagsBits;
        object = v2[1]._object;
        if (v20 >= object >> 1)
        {
          sub_10004E880((object > 1), v20 + 1, 1);
          v2 = v148._countAndFlagsBits;
        }

        v2[1]._countAndFlagsBits = v20 + 1;
        v2[v20 + 2] = v136;
        v3 = v137;
      }

      ++v17;
      --countAndFlagsBits;
    }

    while (countAndFlagsBits);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if (v7 != 1 || (v1 = v2[1]._countAndFlagsBits) == 0)
  {
    v134 = v2;
    goto LABEL_19;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_15:
  v21 = v2;
  v22 = v2[1]._countAndFlagsBits;
  v134 = v21;
  v23 = v21[1]._object;
  if (v22 >= v23 >> 1)
  {
    v134 = sub_100043048((v23 > 1), v22 + 1, 1, v134);
  }

  v24 = sub_100028988();
  *(v134 + 2) = v22 + 1;
  v25 = &v134[16 * v22];
  *(v25 + 4) = &type metadata for HelpCommand;
  *(v25 + 5) = v24;
LABEL_19:
  v148._countAndFlagsBits = 0x5F74666977735FLL;
  v148._object = 0xE700000000000000;
  v26._countAndFlagsBits = v5;
  v26._object = v4;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x635F676E6973755FLL;
  v27._object = 0xEE00646E616D6D6FLL;
  String.append(_:)(v27);

  v28 = v148._countAndFlagsBits;
  v29 = v148._object;
  v148._countAndFlagsBits = 0;
  v148._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  strcpy(&v148, "complete -c ");
  BYTE5(v148._object) = 0;
  HIWORD(v148._object) = -5120;
  v30._countAndFlagsBits = v5;
  v30._object = v4;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x27206E2D20;
  v31._object = 0xE500000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = v28;
  v32._object = v29;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 8736;
  v33._object = 0xE200000000000000;
  String.append(_:)(v33);
  v138[0] = v6;
  sub_10004E820(0, v7, 0);
  v36 = v138[0];
  v37 = (v3 + 40);
  v38 = v7;
  do
  {
    v39 = (*(*v37 + 24))(*(v37 - 1), *v37, v34, v35);
    v138[0] = v36;
    v42 = *(v36 + 16);
    v41 = *(v36 + 24);
    if (v42 >= v41 >> 1)
    {
      v44 = v39;
      v45 = v40;
      sub_10004E820((v41 > 1), v42 + 1, 1);
      v40 = v45;
      v39 = v44;
      v3 = v137;
      v36 = v138[0];
    }

    *(v36 + 16) = v42 + 1;
    v43 = v36 + 16 * v42;
    *(v43 + 32) = v39;
    *(v43 + 40) = v40;
    v37 += 2;
    --v38;
  }

  while (v38);
  v138[0] = v36;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10002BB28();
  v46 = BidirectionalCollection<>.joined(separator:)();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50._countAndFlagsBits = 34;
  v50._object = 0xE100000000000000;
  String.append(_:)(v50);
  v141 = v148;
  v1 = v134;
  v51 = *(v134 + 2);
  if (v51)
  {
    v148._countAndFlagsBits = 8736;
    v148._object = 0xE200000000000000;
    v138[0] = v6;
    sub_10004E820(0, v51, 0);
    v54 = v138[0];
    v55 = v134 + 40;
    do
    {
      v56 = (*(*v55 + 24))(*(v55 - 1), *v55, v52, v53);
      v138[0] = v54;
      v59 = *(v54 + 16);
      v58 = *(v54 + 24);
      if (v59 >= v58 >> 1)
      {
        v61 = v56;
        v62 = v57;
        sub_10004E820((v58 > 1), v59 + 1, 1);
        v57 = v62;
        v3 = v137;
        v56 = v61;
        v54 = v138[0];
      }

      *(v54 + 16) = v59 + 1;
      v60 = v54 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v57;
      v55 += 2;
      --v51;
    }

    while (v51);
    v138[0] = v54;
    v63 = BidirectionalCollection<>.joined(separator:)();
    v65 = v64;

    v66._countAndFlagsBits = v63;
    v66._object = v65;
    String.append(_:)(v66);

    v67._countAndFlagsBits = 34;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    String.append(_:)(v148);

    v1 = v134;
  }

  v135 = v7;
  v2 = &v141;
  v68._countAndFlagsBits = 39;
  v68._object = 0xE100000000000000;
  String.append(_:)(v68);
  v69 = *(v1 + 2);
  v4 = _swiftEmptyArrayStorage;
  if (v69)
  {
    v140 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v69, 0);
    v4 = v140;
    swift_beginAccess();
    v70 = v1 + 40;
    do
    {
      v71 = *(v70 - 1);
      v72 = *v70;
      (*(*v70 + 16))(v145, v71, *v70);
      v147 = v146;

      sub_100027BE4(v145);
      v148 = v147;
      v138[0] = 39;
      v138[1] = 0xE100000000000000;
      v139._countAndFlagsBits = 10076;
      v139._object = 0xE200000000000000;
      sub_100027B90();
      v73 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v75 = v74;
      sub_1000186F4(&v147);
      v148._countAndFlagsBits = 0;
      v148._object = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v148._countAndFlagsBits = 0x2720612D20662DLL;
      v148._object = 0xE700000000000000;
      v76._countAndFlagsBits = (*(v72 + 24))(v71, v72);
      String.append(_:)(v76);

      v77._countAndFlagsBits = 0x2720642D2027;
      v77._object = 0xE600000000000000;
      String.append(_:)(v77);
      v78._countAndFlagsBits = v73;
      v78._object = v75;
      String.append(_:)(v78);

      v79._countAndFlagsBits = 39;
      v79._object = 0xE100000000000000;
      String.append(_:)(v79);
      v80 = v148._countAndFlagsBits;
      v81 = v148._object;
      v148 = v141;

      v82._countAndFlagsBits = 32;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      v2 = &v148;
      v83._countAndFlagsBits = v80;
      v83._object = v81;
      String.append(_:)(v83);

      v84 = v148;
      v140 = v4;
      v86 = v4[2];
      v85 = v4[3];
      v1 = (v86 + 1);
      if (v86 >= v85 >> 1)
      {
        v2 = &v140;
        sub_10004E820((v85 > 1), v86 + 1, 1);
        v4 = v140;
      }

      v4[2] = v1;
      *&v4[2 * v86 + 4] = v84;
      v70 += 2;
      --v69;
    }

    while (v69);
    v3 = v137;
  }

  v87 = sub_10002C1D0(0, v3);
  v7 = v88;
  v89 = 0;
  v5 = v87[2];
  v6 = _swiftEmptyArrayStorage;
LABEL_36:
  v90 = (192 * v89) | 0x20;
  while (v5 != v89)
  {
    if (v89 >= v87[2])
    {
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
      __break(1u);
      goto LABEL_86;
    }

    ++v89;
    v1 = (v90 + 192);
    v91 = v87 + v90;
    v92 = *v91;
    v93 = *(v91 + 1);
    v94 = *(v91 + 3);
    v150 = *(v91 + 2);
    v151 = v94;
    v148 = v92;
    v149 = v93;
    v95 = *(v91 + 4);
    v96 = *(v91 + 5);
    v97 = *(v91 + 7);
    v154 = *(v91 + 6);
    v155 = v97;
    v152 = v95;
    v153 = v96;
    v98 = *(v91 + 8);
    v99 = *(v91 + 9);
    v100 = *(v91 + 11);
    v158 = *(v91 + 10);
    v159 = v100;
    v156 = v98;
    v157 = v99;
    sub_1000289DC(&v148, v138);
    v2 = sub_10002B108(v3);
    sub_100028A38(&v148);
    v90 = v1;
    if (v2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000438EC(0, v6[2] + 1, 1, v6);
      }

      v102 = v6[2];
      v101 = v6[3];
      v1 = (v102 + 1);
      if (v102 >= v101 >> 1)
      {
        v6 = sub_1000438EC((v101 > 1), v102 + 1, 1, v6);
      }

      v6[2] = v1;
      v6[v102 + 4] = v2;
      v3 = v137;
      goto LABEL_36;
    }
  }

  v103 = v6[2];
  if (v103)
  {
    v138[0] = _swiftEmptyArrayStorage;
    sub_10004E820(0, v103, 0);
    v104 = 4;
    v105 = v138[0];
    do
    {
      v139._countAndFlagsBits = v6[v104];

      v106 = BidirectionalCollection<>.joined(separator:)();
      v108 = v107;

      v138[0] = v105;
      v110 = v105[2];
      v109 = v105[3];
      if (v110 >= v109 >> 1)
      {
        sub_10004E820((v109 > 1), v110 + 1, 1);
        v105 = v138[0];
      }

      v105[2] = v110 + 1;
      v111 = &v105[2 * v110];
      v111[4] = v106;
      v111[5] = v108;
      ++v104;
      --v103;
    }

    while (v103);

    v3 = v137;
    v112 = v105[2];
    if (v112)
    {
      goto LABEL_51;
    }

LABEL_57:

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_58;
  }

  v105 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptyArrayStorage[2];
  if (!v112)
  {
    goto LABEL_57;
  }

LABEL_51:
  v140 = _swiftEmptyArrayStorage;
  sub_10004E820(0, v112, 0);
  v5 = v140;
  swift_beginAccess();
  v113 = (v105 + 5);
  do
  {
    v114 = *(v113 - 1);
    v115 = *v113;
    v139 = v141;

    v116._countAndFlagsBits = 32;
    v116._object = 0xE100000000000000;
    String.append(_:)(v116);
    v117._countAndFlagsBits = v114;
    v117._object = v115;
    String.append(_:)(v117);

    v118 = v139;
    v140 = v5;
    v120 = v5[2];
    v119 = v5[3];
    if (v120 >= v119 >> 1)
    {
      sub_10004E820((v119 > 1), v120 + 1, 1);
      v5 = v140;
    }

    v5[2] = v120 + 1;
    *&v5[2 * v120 + 4] = v118;
    v113 += 2;
    --v112;
  }

  while (v112);

  v3 = v137;
LABEL_58:
  v121 = *(v134 + 2);
  if (v121)
  {
    v122 = v134 + 32;
    v2 = _swiftEmptyArrayStorage;
    v6 = &qword_100092750;
    while (1)
    {
      sub_1000021C0(&qword_1000B5190, &qword_100092750);
      v123 = swift_allocObject();
      *(v123 + 32) = *v122;
      v7 = v123 + 32;
      *(v123 + 16) = xmmword_10008E640;

      v124 = swift_isUniquelyReferenced_nonNull_native();
      if (!v124 || (v125 = *(v3 + 24) >> 1, v1 = v3, v125 <= v135))
      {
        v1 = sub_100043048(v124, v135 + 1, 1, v3);
        v125 = *(v1 + 3) >> 1;
      }

      v126 = *(v1 + 2);
      if (v125 <= v126)
      {
        goto LABEL_81;
      }

      *&v1[16 * v126 + 32] = *v7;

      ++*(v1 + 2);
      v7 = sub_10002A3F8(v1);

      v127 = *(v7 + 16);
      v1 = v2[1]._countAndFlagsBits;
      v3 = &v1[v127];
      if (__OFADD__(v1, v127))
      {
        goto LABEL_82;
      }

      v128 = swift_isUniquelyReferenced_nonNull_native();
      if (!v128 || v3 > (v2[1]._object >> 1))
      {
        if (v1 <= v3)
        {
          v129 = &v1[v127];
        }

        else
        {
          v129 = v1;
        }

        v2 = sub_100042F3C(v128, v129, 1, v2);
      }

      v3 = v137;
      if (*(v7 + 16))
      {
        if (((v2[1]._object >> 1) - v2[1]._countAndFlagsBits) < v127)
        {
          goto LABEL_84;
        }

        swift_arrayInitWithCopy();

        if (v127)
        {
          v130 = v2[1]._countAndFlagsBits;
          v131 = __OFADD__(v130, v127);
          v132 = v130 + v127;
          if (v131)
          {
            goto LABEL_85;
          }

          v2[1]._countAndFlagsBits = v132;
        }
      }

      else
      {

        if (v127)
        {
          goto LABEL_83;
        }
      }

      ++v122;
      if (!--v121)
      {
        goto LABEL_79;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_79:

  sub_100041830(v5);
  sub_100041830(v4);

  return v2;
}

uint64_t sub_10002B7FC(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(279);
  v4._object = 0x8000000100098B00;
  v4._countAndFlagsBits = 0xD00000000000004ELL;
  String.append(_:)(v4);
  _StringGuts.grow(_:)(22);

  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x636F72706572705FLL;
  v6._object = 0xED0000726F737365;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x5F74666977735FLL;
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD0000000000000C7;
  v8._object = 0x8000000100098B50;
  String.append(_:)(v8);
  return 0;
}

unint64_t sub_10002BB28()
{
  result = qword_1000B5188;
  if (!qword_1000B5188)
  {
    sub_100002B84(&qword_1000B5180, &unk_100095FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5188);
  }

  return result;
}

uint64_t sub_10002BB8C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBFu)
  {
  }

  return result;
}

uint64_t sub_10002BBF8(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v32._countAndFlagsBits = 10;
  v32._object = 0xE100000000000000;
  v31 = &v32;

  v7 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 0, sub_10002EFA8, v30, a2, a3, v6);
  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  v9 = String.init(repeating:count:)(v8, a1);
  v10 = v7[2];
  if (v10)
  {
    v37 = &_swiftEmptyArrayStorage;
    sub_10004E860(0, v10, 0);
    v11 = v37;
    v12 = v7 + 7;
    do
    {
      v13 = *(v12 - 3);
      v14 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;

      if ((v14 ^ v13) >= 0x4000)
      {
        Substring.distance(from:to:)();
        String.count.getter();
        v32 = v9;
        v35 = static String._fromSubstring(_:)();
        v36 = v17;
        String.append<A>(contentsOf:)();
        Substring.init(_:)();
        v32._countAndFlagsBits = v13;
        v32._object = v14;
        v33 = v15;
        v34 = v16;
        v18 = static String._fromSubstring(_:)();
        v20 = v19;

        v35 = v18;
        v36 = v20;
        sub_10002EFC4();
        String.append<A>(contentsOf:)();
        v13 = Substring.init(_:)();
        v14 = v21;
        v15 = v22;
        v24 = v23;

        v16 = v24;
      }

      v37 = v11;
      v26 = v11[2];
      v25 = v11[3];
      if (v26 >= v25 >> 1)
      {
        sub_10004E860((v25 > 1), v26 + 1, 1);
        v11 = v37;
      }

      v11[2] = v26 + 1;
      v27 = &v11[4 * v26];
      v27[4] = v13;
      v27[5] = v14;
      v27[6] = v15;
      v27[7] = v16;
      v12 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {

    v11 = &_swiftEmptyArrayStorage;
  }

  v32._countAndFlagsBits = v11;
  sub_1000021C0(&qword_1000B51F0, &qword_1000914B8);
  sub_10000BD8C(&qword_1000B51F8, &qword_1000B51F0, &qword_1000914B8);
  sub_10002F018();
  v28 = Sequence<>.joined(separator:)();

  return v28;
}

uint64_t sub_10002BEDC(Swift::Int a1, unint64_t a2, unint64_t a3, char *a4)
{
  v34._countAndFlagsBits = 10;
  v34._object = 0xE100000000000000;
  v33 = &v34;

  v9 = sub_10002E954(0x7FFFFFFFFFFFFFFFLL, 0, sub_10002F224, v32, a2, a3, a4, v8);
  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  v11 = String.init(repeating:count:)(v10, a1);
  v12 = *(v9 + 2);
  if (v12)
  {
    v39 = _swiftEmptyArrayStorage;
    sub_10004E860(0, v12, 0);
    v13 = v39;
    v14 = (v9 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *(v14 - 2);
      v17 = *(v14 - 1);
      v18 = *v14;

      if ((v16 ^ v15) >= 0x4000)
      {
        Substring.distance(from:to:)();
        String.count.getter();
        v34 = v11;
        v37 = static String._fromSubstring(_:)();
        v38 = v19;
        String.append<A>(contentsOf:)();
        Substring.init(_:)();
        v34._countAndFlagsBits = v15;
        v34._object = v16;
        v35 = v17;
        v36 = v18;
        v20 = static String._fromSubstring(_:)();
        v22 = v21;

        v37 = v20;
        v38 = v22;
        sub_10002EFC4();
        String.append<A>(contentsOf:)();
        v15 = Substring.init(_:)();
        v16 = v23;
        v17 = v24;
        v26 = v25;

        v18 = v26;
      }

      v39 = v13;
      v28 = v13[2];
      v27 = v13[3];
      if (v28 >= v27 >> 1)
      {
        sub_10004E860((v27 > 1), v28 + 1, 1);
        v13 = v39;
      }

      v13[2] = v28 + 1;
      v29 = &v13[4 * v28];
      v29[4] = v15;
      v29[5] = v16;
      v29[6] = v17;
      v29[7] = v18;
      v14 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  v34._countAndFlagsBits = v13;
  sub_1000021C0(&qword_1000B51F0, &qword_1000914B8);
  sub_10000BD8C(&qword_1000B51F8, &qword_1000B51F0, &qword_1000914B8);
  sub_10002F018();
  v30 = Sequence<>.joined(separator:)();

  return v30;
}

void *sub_10002C1D0(int a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v30 = sub_10004C130(*(a2 + 16 + 16 * v2), *(*(a2 + 16 + 16 * v2 + 8) + 8), a1, 0, 0, 0);
    sub_10002E058(a2, &v31);
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v22 = v35;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v18 = v31;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v56[8] = v39;
    v56[9] = v40;
    v56[10] = v41;
    v56[11] = v42;
    v56[4] = v35;
    v56[5] = v36;
    v56[6] = v37;
    v56[7] = v38;
    v56[0] = v31;
    v56[1] = v32;
    v56[2] = v33;
    v56[3] = v34;
    if (sub_10002F07C(v56) != 1)
    {
      v58[8] = v26;
      v58[9] = v27;
      v58[10] = v28;
      v58[11] = v29;
      v58[4] = v22;
      v58[5] = v23;
      v58[6] = v24;
      v58[7] = v25;
      v58[0] = v18;
      v58[1] = v19;
      v58[2] = v20;
      v58[3] = v21;
      sub_10005CE10(v58);
      sub_100002BCC(&v31, &qword_1000B5208, &qword_1000914C0);
    }

    sub_10002E350(a2, &v43);
    v14 = v51;
    v15 = v52;
    v16 = v53;
    v17 = v54;
    v10 = v47;
    v11 = v48;
    v12 = v49;
    v13 = v50;
    v6 = v43;
    v7 = v44;
    v8 = v45;
    v9 = v46;
    v55[8] = v51;
    v55[9] = v52;
    v55[10] = v53;
    v55[11] = v54;
    v55[4] = v47;
    v55[5] = v48;
    v55[6] = v49;
    v55[7] = v50;
    v55[0] = v43;
    v55[1] = v44;
    v55[2] = v45;
    v55[3] = v46;
    if (sub_10002F07C(v55) != 1)
    {
      v57[8] = v14;
      v57[9] = v15;
      v57[10] = v16;
      v57[11] = v17;
      v57[4] = v10;
      v57[5] = v11;
      v57[6] = v12;
      v57[7] = v13;
      v57[0] = v6;
      v57[1] = v7;
      v57[2] = v8;
      v57[3] = v9;
      sub_10005CE10(v57);
      sub_100002BCC(&v43, &qword_1000B5208, &qword_1000914C0);
    }

    return v30;
  }

  else
  {
    v4 = &_swiftEmptyArrayStorage;
    sub_100074524(&_swiftEmptyArrayStorage);
  }

  return v4;
}

uint64_t sub_10002C418(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B5190, &qword_100092750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v5 = sub_100028B10(inited);
  v7 = v6;
  swift_setDeallocating();
  _StringGuts.grow(_:)(195);
  v8._countAndFlagsBits = 0x666564706D6F6323;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  v9 = *(a2 + 24);
  v10._countAndFlagsBits = v9(a1, a2);
  String.append(_:)(v10);

  v11._object = 0x8000000100098C20;
  v11._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v11);
  v9(a1, a2);
  sub_100027B90();
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD00000000000002CLL;
  v16._object = 0x8000000100098C50;
  String.append(_:)(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008E640;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  v18 = sub_10002C67C(v17);
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD00000000000005FLL;
  v22._object = 0x8000000100098C80;
  String.append(_:)(v22);
  v23._countAndFlagsBits = v5;
  v23._object = v7;
  String.append(_:)(v23);

  return 0;
}

uint64_t sub_10002C67C(uint64_t a1)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_52;
  }

  v1 = a1;
  v5 = (a1 + 16 + 16 * v4);
  v7 = *v5;
  v6 = v5[1];
  v108._countAndFlagsBits = sub_100028B10(a1);
  v108._object = v8;
  v106 = sub_10002EE2C(v1);
  (*(v6 + 16))(v114, v7, v6);
  CommandConfiguration.subcommands.getter();
  v10 = v9;
  sub_100027BE4(v114);
  v11 = *(v10 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v12 = (v10 + 32);
    do
    {
      v111 = *v12;
      (*(*(v12 + 1) + 16))(v115);
      sub_100027BE4(v115);
      if (v116)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117[0] = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E880(0, *(v3 + 2) + 1, 1);
          v3 = v117[0];
        }

        v14 = *(v3 + 2);
        v13 = *(v3 + 3);
        if (v14 >= v13 >> 1)
        {
          sub_10004E880((v13 > 1), v14 + 1, 1);
          v3 = v117[0];
        }

        *(v3 + 2) = v14 + 1;
        *&v3[16 * v14 + 32] = v111;
      }

      ++v12;
      --v11;
    }

    while (v11);
  }

  v2 = 0xD000000000000011;

  if (!*(v3 + 2))
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_38;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_53;
  }

  for (i = v106; ; i = sub_100042F3C(0, *(v106 + 16) + 1, 1, v106))
  {
    v18 = *(i + 2);
    v17 = *(i + 3);
    v19 = v17 >> 1;
    v20 = v18 + 1;
    if (v17 >> 1 <= v18)
    {
      i = sub_100042F3C((v17 > 1), v18 + 1, 1, i);
      v17 = *(i + 3);
      v19 = v17 >> 1;
    }

    *(i + 2) = v20;
    v21 = &i[16 * v18];
    *(v21 + 4) = v2;
    *(v21 + 5) = 0x8000000100098CE0;
    v22 = v18 + 2;
    if (v19 < v22)
    {
      i = sub_100042F3C((v17 > 1), v22, 1, i);
    }

    *(i + 2) = v22;
    v23 = &i[16 * v20];
    *(v23 + 4) = 0x203A3A2A292D2827;
    *(v23 + 5) = 0xEF276772613E2D3ALL;
    v105 = v4;
    v106 = i;
    if (v4 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100043048(0, *(v3 + 2) + 1, 1, v3);
      }

      v25 = *(v3 + 2);
      v24 = *(v3 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v3 = sub_100043048((v24 > 1), v25 + 1, 1, v3);
      }

      v27 = sub_100028988();
      *(v3 + 2) = v26;
      v28 = &v3[16 * v25];
      *(v28 + 4) = &type metadata for HelpCommand;
      *(v28 + 5) = v27;
LABEL_26:
      sub_10004E820(0, v26, 0);
      v31 = 0;
      v32 = v3 + 40;
      v4 = &type metadata for String;
      v112 = v3;
      v109 = v26;
      v107 = v1;
      while (v31 < *(v3 + 2))
      {
        v33 = *(v32 - 1);
        v34 = *v32;
        v35._countAndFlagsBits = (*(*v32 + 24))(v33, *v32);
        String.append(_:)(v35);

        v36._countAndFlagsBits = 58;
        v36._object = 0xE100000000000000;
        String.append(_:)(v36);
        (*(v34 + 16))(v117, v33, v34);
        v119 = v118;

        sub_100027BE4(v117);
        sub_100027B90();
        StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        sub_1000186F4(&v119);
        v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v39 = v38;

        v40._countAndFlagsBits = v37;
        v40._object = v39;
        String.append(_:)(v40);

        v41._countAndFlagsBits = 39;
        v41._object = 0xE100000000000000;
        String.append(_:)(v41);
        v42 = sub_10002BBF8(12, 39, 0xE100000000000000);
        v2 = v43;

        v45 = _swiftEmptyArrayStorage[2];
        v44 = _swiftEmptyArrayStorage[3];
        if (v45 >= v44 >> 1)
        {
          sub_10004E820((v44 > 1), v45 + 1, 1);
        }

        ++v31;
        _swiftEmptyArrayStorage[2] = v45 + 1;
        v46 = &_swiftEmptyArrayStorage[2 * v45];
        v46[4] = v42;
        v46[5] = v2;
        v32 += 2;
        v3 = v112;
        v1 = v107;
        if (v109 == v31)
        {
          sub_10004E820(0, v109, 0);
          v47 = 0;
          v48 = (v112 + 40);
          v4 = _swiftEmptyArrayStorage;
          while (v47 < *(v3 + 2))
          {
            v49 = v1;
            v51 = *(v48 - 1);
            v50 = *v48;
            _StringGuts.grow(_:)(21);

            v52 = *(v50 + 24);
            v53._countAndFlagsBits = v52(v51, v50);
            String.append(_:)(v53);

            v54._countAndFlagsBits = 0x202020200A29;
            v54._object = 0xE600000000000000;
            String.append(_:)(v54);
            String.append(_:)(v108);
            v55._countAndFlagsBits = 95;
            v55._object = 0xE100000000000000;
            String.append(_:)(v55);
            v56._countAndFlagsBits = v52(v51, v50);
            String.append(_:)(v56);

            v57._countAndFlagsBits = 0x3B3B202020200ALL;
            v57._object = 0xE700000000000000;
            String.append(_:)(v57);
            v2 = sub_10002BBF8(12, 40, 0xE100000000000000);
            v59 = v58;

            v61 = _swiftEmptyArrayStorage[2];
            v60 = _swiftEmptyArrayStorage[3];
            if (v61 >= v60 >> 1)
            {
              sub_10004E820((v60 > 1), v61 + 1, 1);
            }

            ++v47;
            _swiftEmptyArrayStorage[2] = v61 + 1;
            v62 = &_swiftEmptyArrayStorage[2 * v61];
            v62[4] = v2;
            v62[5] = v59;
            v48 += 2;
            v1 = v49;
            v3 = v112;
            if (v109 == v47)
            {
              v2 = 0xD000000000000011;
              goto LABEL_37;
            }
          }

          goto LABEL_51;
        }
      }

      goto LABEL_50;
    }

    v26 = *(v3 + 2);
    if (v26)
    {
      goto LABEL_26;
    }

LABEL_37:
    _StringGuts.grow(_:)(214);
    v63._countAndFlagsBits = v2 + 60;
    v63._object = 0x8000000100098D00;
    String.append(_:)(v63);
    sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v64 = BidirectionalCollection<>.joined(separator:)();
    v66 = v65;

    v67._countAndFlagsBits = v64;
    v67._object = v66;
    String.append(_:)(v67);

    v68._countAndFlagsBits = 0xD000000000000067;
    v68._object = 0x8000000100098D50;
    String.append(_:)(v68);
    v69 = BidirectionalCollection<>.joined(separator:)();
    v71 = v70;

    v72._countAndFlagsBits = v69;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 0xD00000000000001ELL;
    v73._object = 0x8000000100098DC0;
    String.append(_:)(v73);
    v29 = sub_10002BBF8(4, 0, 0xE000000000000000);
    v30 = v74;

    v4 = v105;
LABEL_38:
    _StringGuts.grow(_:)(127);
    String.append(_:)(v108);

    v75._countAndFlagsBits = 0xD000000000000035;
    v75._object = 0x8000000100098DE0;
    String.append(_:)(v75);

    v108._countAndFlagsBits = sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
    sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
    v76 = BidirectionalCollection<>.joined(separator:)();
    v78 = v77;

    v79 = sub_10002BBF8(8, v76, v78);
    v81 = v80;

    v82._countAndFlagsBits = v79;
    v82._object = v81;
    String.append(_:)(v82);

    v83._countAndFlagsBits = 0xD000000000000031;
    v83._object = 0x8000000100098E20;
    String.append(_:)(v83);
    v84._countAndFlagsBits = v29;
    v84._object = v30;
    String.append(_:)(v84);

    v85._countAndFlagsBits = 0xD000000000000013;
    v85._object = 0x8000000100098E60;
    String.append(_:)(v85);
    v86 = *(v3 + 2);
    if (!v86)
    {
      break;
    }

    v113 = v3;
    sub_10004E820(0, v86, 0);
    v3 = _swiftEmptyArrayStorage;
    v87 = 32;
    v108._object = 1;
    while (1)
    {
      sub_1000021C0(&qword_1000B5190, &qword_100092750);
      v110 = *&v113[v87];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008E640;
      *(inited + 32) = v110;
      v2 = (inited + 32);

      v89 = swift_isUniquelyReferenced_nonNull_native();
      if (!v89 || (v90 = *(v1 + 24) >> 1, v91 = v1, v90 <= v4))
      {
        v91 = sub_100043048(v89, v4 + 1, 1, v1);
        v90 = *(v91 + 3) >> 1;
      }

      v92 = *(v91 + 2);
      if (v90 <= v92)
      {
        break;
      }

      v93 = v4;
      *&v91[16 * v92 + 32] = *v2;

      ++*(v91 + 2);
      v94 = sub_10002C67C(v91);
      v96 = v95;

      v98 = _swiftEmptyArrayStorage[2];
      v97 = _swiftEmptyArrayStorage[3];
      if (v98 >= v97 >> 1)
      {
        sub_10004E820((v97 > 1), v98 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v98 + 1;
      v99 = &_swiftEmptyArrayStorage[2 * v98];
      v99[4] = v94;
      v99[5] = v96;
      v87 += 16;
      --v86;
      v4 = v93;
      if (!v86)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_47:

  v100 = BidirectionalCollection<>.joined(separator:)();
  v102 = v101;

  v103._countAndFlagsBits = v100;
  v103._object = v102;
  String.append(_:)(v103);

  return 0;
}

uint64_t sub_10002DE7C(char a1, uint64_t a2)
{
  v9 = a2;
  v3 = *(a2 + 16);
  v4 = a2 + 16 * v3 + 24;
  do
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    --v3;
    v5 = *(v4 - 8);
    (*(*v4 + 16))(v10);
    v13 = v10[17];
    sub_10002F164(&v13, v11);
    sub_100027BE4(v10);
    v4 -= 16;
  }

  while (!v13);
  sub_100002BCC(&v13, &qword_1000B5218, &qword_1000914C8);
  __chkstk_darwin();
  v14 = v3;
  sub_10002F1D4(&v14, v11);
  if (!*&v11[0])
  {
LABEL_7:
    *&v11[0] = &_swiftEmptySetSingleton;
    v8 = sub_10003AD7C(&off_1000AC098);
    swift_arrayDestroy();

    v7 = sub_100077460(a1, v8);

    return v7;
  }

  (*(*(&v11[0] + 1) + 16))(v11);
  v14 = v12;
  sub_10002F164(&v14, &v9);
  result = sub_100027BE4(v11);
  if (v14)
  {
    v7 = sub_100077460(a1, v14);
    sub_100002BCC(&v14, &qword_1000B5218, &qword_1000914C8);
    return v7;
  }

  __break(1u);
  return result;
}

double sub_10002E058@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    while (1)
    {
      v5 = *(v4 - 8);
      (*(*v4 + 16))(v46);
      v48 = v47;
      v6 = v47;

      sub_100027BE4(v46);
      sub_1000186F4(&v48);
      v7 = HIBYTE(*(&v6 + 1)) & 0xFLL;
      if ((*(&v6 + 1) & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        break;
      }

      v4 += 16;
      if (!--v3)
      {
        goto LABEL_7;
      }
    }

    v8 = sub_1000681D4(0, 0xE000000000000000, 0, 0);
    v10 = v9;
    v12 = v11;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10008E640;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    *(v13 + 48) = v12;

    v22 = 1uLL;
    *&v23 = 0;
    *(&v23 + 1) = v13;
    *&v24 = &_swiftEmptyArrayStorage;
    BYTE8(v24) = 0;
    *&v25 = 0xD000000000000011;
    *(&v25 + 1) = 0x8000000100098F00;
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    LOBYTE(v28) = 0;
    *(&v28 + 1) = 0;
    v29 = 0xE000000000000000;
    v30[0] = 1;
    v30[1] = 0;
    v30[2] = 0;
    v30[3] = v13;
    v30[4] = &_swiftEmptyArrayStorage;
    v31 = 0;
    v32 = 0xD000000000000011;
    v33 = 0x8000000100098F00;
    v34 = 0;
    v35 = 0xE000000000000000;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = 0;
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_10002F094(&v22, &v49);
    sub_10002F0F0(v30);
    *&v41[72] = v26;
    *&v41[88] = v27;
    *&v41[104] = v28;
    *&v41[8] = v22;
    *&v41[24] = v23;
    *&v41[40] = v24;
    *&v41[56] = v25;
    LOBYTE(v49) = 0;
    *&v41[120] = v29;
    v42 = 0uLL;
    *v41 = &off_1000AC060;
    LOWORD(v43) = 4;
    *(&v43 + 1) = String.init(argument:);
    *&v44 = 0;
    BYTE8(v44) = 0;
    *&v45 = String.init(argument:);
    *(&v45 + 1) = 0;
    v14._countAndFlagsBits = v41;
    String.init(argument:)(v14);
    v57 = v42;
    v58 = v43;
    v59 = v44;
    v60 = v45;
    v53 = *&v41[64];
    v54 = *&v41[80];
    v55 = *&v41[96];
    v56 = *&v41[112];
    v49 = *v41;
    v50 = *&v41[16];
    v51 = *&v41[32];
    v52 = *&v41[48];
  }

  else
  {
LABEL_7:
    sub_10002F144(&v49);
  }

  v15 = v58;
  a2[8] = v57;
  a2[9] = v15;
  v16 = v60;
  a2[10] = v59;
  a2[11] = v16;
  v17 = v54;
  a2[4] = v53;
  a2[5] = v17;
  v18 = v56;
  a2[6] = v55;
  a2[7] = v18;
  v19 = v50;
  *a2 = v49;
  a2[1] = v19;
  result = *&v51;
  v21 = v52;
  a2[2] = v51;
  a2[3] = v21;
  return result;
}

double sub_10002E350@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = sub_10002DE7C(0, a1);
  if (*(v3 + 16))
  {

    v4 = sub_1000681D4(0, 0xE000000000000000, 0, 0);
    v6 = v5;
    v8 = v7;
    sub_1000021C0(&qword_1000B5210, &unk_100092A40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10008E640;
    *(v9 + 32) = v4;
    *(v9 + 40) = v6;
    *(v9 + 48) = v8;

    v18 = 1uLL;
    *&v19 = 0;
    *(&v19 + 1) = v9;
    *&v20 = &_swiftEmptyArrayStorage;
    BYTE8(v20) = 0;
    *&v21 = 0xD000000000000016;
    *(&v21 + 1) = 0x8000000100098EE0;
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    LOBYTE(v24) = 0;
    *(&v24 + 1) = 0;
    v25 = 0xE000000000000000;
    v26[0] = 1;
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v9;
    v26[4] = &_swiftEmptyArrayStorage;
    v27 = 0;
    v28 = 0xD000000000000016;
    v29 = 0x8000000100098EE0;
    v30 = 0;
    v31 = 0xE000000000000000;
    v32 = 0;
    v33 = 0xE000000000000000;
    v34 = 0;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_10002F094(&v18, &v42);
    sub_10002F0F0(v26);
    *&v37[72] = v22;
    *&v37[88] = v23;
    *&v37[104] = v24;
    *&v37[8] = v18;
    *&v37[24] = v19;
    *&v37[40] = v20;
    *&v37[56] = v21;
    LOBYTE(v42) = 0;
    *&v37[120] = v25;
    v38 = 0uLL;
    *v37 = v3;
    LOWORD(v39) = 4;
    *(&v39 + 1) = String.init(argument:);
    *&v40 = 0;
    BYTE8(v40) = 0;
    *&v41 = String.init(argument:);
    *(&v41 + 1) = 0;
    v10._countAndFlagsBits = v37;
    String.init(argument:)(v10);
    v50 = v38;
    v51 = v39;
    v52 = v40;
    v53 = v41;
    v46 = *&v37[64];
    v47 = *&v37[80];
    v48 = *&v37[96];
    v49 = *&v37[112];
    v42 = *v37;
    v43 = *&v37[16];
    v44 = *&v37[32];
    v45 = *&v37[48];
  }

  else
  {

    sub_10002F144(&v42);
  }

  v11 = v51;
  a2[8] = v50;
  a2[9] = v11;
  v12 = v53;
  a2[10] = v52;
  a2[11] = v12;
  v13 = v47;
  a2[4] = v46;
  a2[5] = v13;
  v14 = v49;
  a2[6] = v48;
  a2[7] = v14;
  v15 = v43;
  *a2 = v42;
  a2[1] = v15;
  result = *&v44;
  v17 = v45;
  a2[2] = v44;
  a2[3] = v17;
  return result;
}

void *sub_10002E594@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000436D4(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000436D4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000436D4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000436D4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000436D4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10002E954@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = _swiftEmptyArrayStorage;
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = Substring.subscript.getter();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = Substring.index(after:)() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = Substring.index(after:)();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = Substring.subscript.getter();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1000436D4(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1000436D4((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = Substring.index(after:)();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = Substring.subscript.getter();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1000436D4((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1000436D4(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = Substring.subscript.getter();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1000436D4(0, 1, 1, _swiftEmptyArrayStorage);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10002ED5C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v7 = a3;
  result = a1(&v6, &v7);
  if (!v4)
  {
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EDD4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10002EE2C(uint64_t a1)
{
  result = sub_10002C1D0(0, a1);
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  v7 = (192 * v4) | 0x20;
  while (1)
  {
    if (v5 == v4)
    {

      return v6;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    ++v4;
    v8 = v7 + 192;
    v9 = (v3 + v7);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[3];
    v26[2] = v9[2];
    v26[3] = v12;
    v26[0] = v10;
    v26[1] = v11;
    v13 = v9[4];
    v14 = v9[5];
    v15 = v9[7];
    v26[6] = v9[6];
    v26[7] = v15;
    v26[4] = v13;
    v26[5] = v14;
    v16 = v9[8];
    v17 = v9[9];
    v18 = v9[11];
    v26[10] = v9[10];
    v26[11] = v18;
    v26[8] = v16;
    v26[9] = v17;
    sub_1000289DC(v26, &v25);
    v19 = sub_10002D274(a1);
    v21 = v20;
    result = sub_100028A38(v26);
    v7 = v8;
    if (v21)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100042F3C(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v23 = *(v6 + 2);
      v22 = *(v6 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_100042F3C((v22 > 1), v23 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v23 + 1;
      v24 = &v6[16 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10002EFC4()
{
  result = qword_1000B51E8;
  if (!qword_1000B51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B51E8);
  }

  return result;
}

unint64_t sub_10002F018()
{
  result = qword_1000B5200;
  if (!qword_1000B5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5200);
  }

  return result;
}

unint64_t sub_10002F06C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_10002F07C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_10002F144(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10002F164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5218, &qword_1000914C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t *sub_10002F1D4@<X0>(unint64_t *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 16 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Parsed();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t Argument.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Argument();
  sub_10002F35C(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v7, v4, WitnessTable, a2);
  return sub_100002B38(a1);
}

uint64_t sub_10002F35C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Argument.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Option.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Parsed();
  (*(*(v5 - 8) + 8))(v2, v5);
  (*(*(v4 - 8) + 32))(v2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

void (*Argument.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Argument.wrappedValue.getter(a2, v10);
  return sub_10002F754;
}

void sub_10002F754(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Option.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Option.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_10002F830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Parsed();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

unint64_t Argument.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000016;
  }

  else
  {
    (*(v4 + 32))(v9, v14, v3);
    (*(v4 + 16))(v7, v9, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v9, v3);
    return v16;
  }
}

Swift::Int FlagExclusivity.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t Argument<A>.init(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a5;
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v29 = a8;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = (&v24 - v14);
  v16 = *(a6 - 8);
  v17 = (*(v16 + 80) + 81) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  *(v19 + 24) = a7;
  v20 = *(a2 + 16);
  *(v19 + 32) = *a2;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 80) = *(a2 + 48);
  (*(v16 + 32))(v19 + v17, v25, a6);
  v21 = v19 + v18;
  v22 = v27;
  *v21 = v26;
  *(v21 + 8) = v22;
  *(v21 + 16) = v28;
  sub_10006A034(sub_100032690, v19, v15);
  return (*(v12 + 32))(v29, v15, v11);
}

uint64_t sub_10002FD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8, uint64_t a9)
{
  v38 = a4;
  v37 = a3;
  v39 = a1;
  v40 = type metadata accessor for Optional();
  v14 = *(v40 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v36 - v16;
  v18 = type metadata accessor for Bare();
  v19 = *(a9 - 8);
  (*(v19 + 16))(v17, a5, a9);
  (*(v19 + 56))(v17, 0, 1, a9);

  v20 = v37;

  v21 = v38;
  sub_10003350C(v38, v41);
  sub_10003357C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B274(v39, a2, v20, 0, v21, 0, v17, v41, a6, a7, a8, v18, WitnessTable);
  (*(v14 + 8))(v17, v40, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v41[8];
  v26 = v41[10];
  v27 = v41[11];
  v24[11] = v41[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v41[4];
  v29 = v41[6];
  v30 = v41[7];
  v24[7] = v41[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v41[0];
  v32 = v41[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v41[2];
  v34 = v41[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Argument<A>.init(help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for Parsed();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = (&v22 - v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v20 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = *(a1 + 48);
  *(v19 + 88) = a2;
  *(v19 + 96) = a3;
  *(v19 + 104) = a4;
  sub_10006A034(sub_100032724, v19, v18);
  return (*(v15 + 32))(a7, v18, v14);
}

uint64_t sub_100030124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v36 = a4;
  v37 = a1;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v35 - v17;
  v19 = type metadata accessor for Bare();
  (*(*(a8 - 8) + 56))(v18, 1, 1, a8);

  v20 = v36;
  sub_10003350C(v36, v38);
  sub_10003357C(a5, a6, a7);
  WitnessTable = swift_getWitnessTable();
  v22 = sub_10005B274(v37, a2, a3, 0, v20, 0, v18, v38, a5, a6, a7, v19, WitnessTable);
  (*(v15 + 8))(v18, v14, v22);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v23 = swift_allocObject();
  v24 = v38[8];
  v25 = v38[10];
  v26 = v38[11];
  v23[11] = v38[9];
  v23[12] = v25;
  v23[13] = v26;
  v27 = v38[4];
  v28 = v38[6];
  v29 = v38[7];
  v23[7] = v38[5];
  v23[8] = v28;
  v23[9] = v29;
  v23[10] = v24;
  v30 = v38[0];
  v31 = v38[1];
  v23[1] = xmmword_10008E640;
  v23[2] = v30;
  v32 = v38[2];
  v33 = v38[3];
  v23[3] = v31;
  v23[4] = v32;
  v23[5] = v33;
  v23[6] = v27;
  return sub_100072F04(v23);
}

uint64_t Argument.init(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a7;
  v29 = a3;
  v31 = a5;
  v30 = a4;
  v27 = a1;
  v32 = a9;
  v12 = type metadata accessor for Parsed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v27 - v15);
  v17 = *(a8 - 8);
  v18 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  v22 = v27;
  v23 = v28;
  *(v20 + 80) = a6;
  *(v20 + 88) = v23;
  (*(v17 + 32))(v20 + v18, v22, a8);
  v24 = v20 + v19;
  v25 = v30;
  *v24 = v29;
  *(v24 + 8) = v25;
  *(v24 + 16) = v31;
  sub_10006A034(sub_100032854, v20, v16);
  return (*(v13 + 32))(v32, v16, v12);
}

uint64_t sub_100030560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v39 = a8;
  v40 = a6;
  v43 = a5;
  v38 = a4;
  v41 = a1;
  v42 = type metadata accessor for Optional();
  v14 = *(v42 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v37 - v16;
  v18 = type metadata accessor for Bare();
  v19 = *(a11 - 8);
  (*(v19 + 16))(v17, a7, a11);
  (*(v19 + 56))(v17, 0, 1, a11);

  v20 = v38;
  sub_10003350C(v38, v44);
  v21 = v39;
  sub_10003357C(v39, a9, a10);
  v22 = v40;

  WitnessTable = swift_getWitnessTable();
  v24 = sub_10005B5C0(v41, a2, a3, 0, v20, 0, v43, v44, v22, v17, v21, a9, a10, v18, WitnessTable);
  (*(v14 + 8))(v17, v42, v24);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v25 = swift_allocObject();
  v26 = v44[8];
  v27 = v44[10];
  v28 = v44[11];
  v25[11] = v44[9];
  v25[12] = v27;
  v25[13] = v28;
  v29 = v44[4];
  v30 = v44[6];
  v31 = v44[7];
  v25[7] = v44[5];
  v25[8] = v30;
  v25[9] = v31;
  v25[10] = v26;
  v32 = v44[0];
  v33 = v44[1];
  v25[1] = xmmword_10008E640;
  v25[2] = v32;
  v34 = v44[2];
  v35 = v44[3];
  v25[3] = v33;
  v25[4] = v34;
  v25[5] = v35;
  v25[6] = v29;
  return sub_100072F04(v25);
}

uint64_t Argument.init(help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a8;
  v15 = type metadata accessor for Parsed();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = (&v23 - v18);
  v20 = swift_allocObject();
  v21 = *(a1 + 16);
  *(v20 + 24) = *a1;
  *(v20 + 16) = a7;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a1 + 32);
  *(v20 + 72) = *(a1 + 48);
  *(v20 + 80) = a5;
  *(v20 + 88) = a6;
  *(v20 + 96) = a2;
  *(v20 + 104) = a3;
  *(v20 + 112) = a4;
  sub_10006A034(sub_1000328F8, v20, v19);
  return (*(v16 + 32))(v24, v19, v15);
}

uint64_t sub_100030980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v39 = a5;
  v36 = a4;
  v37 = a1;
  v38 = type metadata accessor for Optional();
  v15 = *(v38 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v35 - v17;
  v19 = type metadata accessor for Bare();
  (*(*(a10 - 8) + 56))(v18, 1, 1, a10);

  v20 = v36;
  sub_10003350C(v36, v40);
  sub_10003357C(a7, a8, a9);

  WitnessTable = swift_getWitnessTable();
  v22 = sub_10005B5C0(v37, a2, a3, 0, v20, 0, v39, v40, a6, v18, a7, a8, a9, v19, WitnessTable);
  (*(v15 + 8))(v18, v38, v22);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v23 = swift_allocObject();
  v24 = v40[8];
  v25 = v40[10];
  v26 = v40[11];
  v23[11] = v40[9];
  v23[12] = v25;
  v23[13] = v26;
  v27 = v40[4];
  v28 = v40[6];
  v29 = v40[7];
  v23[7] = v40[5];
  v23[8] = v28;
  v23[9] = v29;
  v23[10] = v24;
  v30 = v40[0];
  v31 = v40[1];
  v23[1] = xmmword_10008E640;
  v23[2] = v30;
  v32 = v40[2];
  v33 = v40[3];
  v23[3] = v31;
  v23[4] = v32;
  v23[5] = v33;
  v23[6] = v27;
  return sub_100072F04(v23);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v27 = a1;
  v30 = a5;
  v28 = a3;
  v29 = a4;
  v31 = a8;
  v10 = type metadata accessor for Optional();
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = (&v26 - v14);
  v16 = *(v10 - 8);
  v17 = (*(v16 + 80) + 81) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v21 = v26;
  v20 = v27;
  *(v19 + 16) = a6;
  *(v19 + 24) = v21;
  v22 = *(a2 + 16);
  *(v19 + 32) = *a2;
  *(v19 + 48) = v22;
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 80) = *(a2 + 48);
  (*(v16 + 32))(v19 + v17, v20, v10);
  v23 = v19 + v18;
  v24 = v29;
  *v23 = v28;
  *(v23 + 8) = v24;
  *(v23 + 16) = v30;
  sub_10006A034(sub_100032AD0, v19, v15);
  return (*(v12 + 32))(v31, v15, v11);
}

uint64_t sub_100030DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v16 = type metadata accessor for Optional();

  sub_10003350C(a4, v30);
  sub_10003357C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, 0, a5, v30, a6, a7, a8, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v18 = swift_allocObject();
  v19 = v30[8];
  v20 = v30[10];
  v21 = v30[11];
  v18[11] = v30[9];
  v18[12] = v20;
  v18[13] = v21;
  v22 = v30[4];
  v23 = v30[6];
  v24 = v30[7];
  v18[7] = v30[5];
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v19;
  v25 = v30[0];
  v26 = v30[1];
  v18[1] = xmmword_10008E640;
  v18[2] = v25;
  v27 = v30[2];
  v28 = v30[3];
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[6] = v22;
  return sub_100072F04(v18);
}

uint64_t sub_100030F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v23 = a7;
  v24 = a8;
  v22 = a4;
  type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v21 - v16);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a1 + 32);
  *(v18 + 80) = *(a1 + 48);
  *(v18 + 88) = a2;
  *(v18 + 96) = a3;
  *(v18 + 104) = v22;
  sub_10006A034(v23, v18, v17);
  return (*(v14 + 32))(v24, v17, v13);
}

uint64_t sub_1000310C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8)
{
  v34 = a1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v34 - v18;
  (*(*(a8 - 8) + 56))(&v34 - v18, 1, 1, a8);

  sub_10003350C(a4, v35);
  sub_10003357C(a5, a6, a7);
  WitnessTable = swift_getWitnessTable();
  v21 = sub_10005B274(v34, a2, a3, 0, a4, 0, v19, v35, a5, a6, a7, v15, WitnessTable);
  (*(v16 + 8))(v19, v15, v21);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v22 = swift_allocObject();
  v23 = v35[8];
  v24 = v35[10];
  v25 = v35[11];
  v22[11] = v35[9];
  v22[12] = v24;
  v22[13] = v25;
  v26 = v35[4];
  v27 = v35[6];
  v28 = v35[7];
  v22[7] = v35[5];
  v22[8] = v27;
  v22[9] = v28;
  v22[10] = v23;
  v29 = v35[0];
  v30 = v35[1];
  v22[1] = xmmword_10008E640;
  v22[2] = v29;
  v31 = v35[2];
  v32 = v35[3];
  v22[3] = v30;
  v22[4] = v31;
  v22[5] = v32;
  v22[6] = v26;
  return sub_100072F04(v22);
}

uint64_t Argument.init<A>(wrappedValue:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a7;
  v31 = a3;
  v28 = a6;
  v29 = a1;
  v33 = a5;
  v32 = a4;
  v34 = a9;
  v11 = type metadata accessor for Optional();
  v12 = type metadata accessor for Parsed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = (&v27 - v15);
  v17 = *(v11 - 8);
  v18 = (*(v17 + 80) + 96) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a8;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 72) = *(a2 + 48);
  v22 = v29;
  v23 = v30;
  *(v20 + 80) = v28;
  *(v20 + 88) = v23;
  (*(v17 + 32))(v20 + v18, v22, v11);
  v24 = v20 + v19;
  v25 = v32;
  *v24 = v31;
  *(v24 + 8) = v25;
  *(v24 + 16) = v33;
  sub_10006A034(sub_100032D4C, v20, v16);
  return (*(v13 + 32))(v34, v16, v12);
}

uint64_t sub_100031530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = type metadata accessor for Optional();

  sub_10003350C(a4, v32);
  sub_10003357C(a8, a9, a10);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, 0, a5, v32, a6, a7, a8, a9, a10, v17, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  v20 = v32[8];
  v21 = v32[10];
  v22 = v32[11];
  v19[11] = v32[9];
  v19[12] = v21;
  v19[13] = v22;
  v23 = v32[4];
  v24 = v32[6];
  v25 = v32[7];
  v19[7] = v32[5];
  v19[8] = v24;
  v19[9] = v25;
  v19[10] = v20;
  v26 = v32[0];
  v27 = v32[1];
  v19[1] = xmmword_10008E640;
  v19[2] = v26;
  v28 = v32[2];
  v29 = v32[3];
  v19[3] = v27;
  v19[4] = v28;
  v19[5] = v29;
  v19[6] = v23;
  return sub_100072F04(v19);
}

uint64_t sub_1000316E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v23 = a3;
  v24 = a6;
  v25 = a4;
  v26 = a8;
  type metadata accessor for Optional();
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = (&v23 - v16);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 24) = *a1;
  *(v18 + 16) = a7;
  *(v18 + 40) = v19;
  *(v18 + 56) = *(a1 + 32);
  *(v18 + 72) = *(a1 + 48);
  v20 = v23;
  v21 = v24;
  *(v18 + 80) = a5;
  *(v18 + 88) = v21;
  *(v18 + 96) = a2;
  *(v18 + 104) = v20;
  *(v18 + 112) = v25;
  sub_10006A034(a9, v18, v17);
  return (*(v14 + 32))(v26, v17, v13);
}

uint64_t sub_10003184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v36 = a6;
  v38 = a5;
  v37 = a1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v36 - v18;
  (*(*(a10 - 8) + 56))(&v36 - v18, 1, 1, a10);

  v20 = a4;
  sub_10003350C(a4, v39);
  sub_10003357C(a7, a8, a9);
  v21 = v36;

  WitnessTable = swift_getWitnessTable();
  v23 = sub_10005B5C0(v37, a2, a3, 0, v20, 0, v38, v39, v21, v19, a7, a8, a9, v15, WitnessTable);
  (*(v16 + 8))(v19, v15, v23);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v24 = swift_allocObject();
  v25 = v39[8];
  v26 = v39[10];
  v27 = v39[11];
  v24[11] = v39[9];
  v24[12] = v26;
  v24[13] = v27;
  v28 = v39[4];
  v29 = v39[6];
  v30 = v39[7];
  v24[7] = v39[5];
  v24[8] = v29;
  v24[9] = v30;
  v24[10] = v25;
  v31 = v39[0];
  v32 = v39[1];
  v24[1] = xmmword_10008E640;
  v24[2] = v31;
  v33 = v39[2];
  v34 = v39[3];
  v24[3] = v32;
  v24[4] = v33;
  v24[5] = v34;
  v24[6] = v28;
  return sub_100072F04(v24);
}

uint64_t Argument.init<A>(wrappedValue:parsing:help:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;
  v17 = *(a3 + 16);
  *(v16 + 32) = *a3;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a3 + 32);
  *(v16 + 80) = *(a3 + 48);
  *(v16 + 81) = a2;
  *(v16 + 88) = a1;
  *(v16 + 96) = a4;
  *(v16 + 104) = a5;
  *(v16 + 112) = a6;
  type metadata accessor for Array();
  sub_10006A034(sub_100032E90, v16, &v22);
  v20 = v22;
  v21 = v23;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v24, &v20, v18);
  return v24;
}

uint64_t sub_100031BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v16 = type metadata accessor for Array();
  v31 = a6;

  sub_10003350C(a4, v32);
  sub_10003357C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, a5, &v31, v32, a7, a8, a9, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v18 = swift_allocObject();
  v19 = v32[8];
  v20 = v32[10];
  v21 = v32[11];
  v18[11] = v32[9];
  v18[12] = v20;
  v18[13] = v21;
  v22 = v32[4];
  v23 = v32[6];
  v24 = v32[7];
  v18[7] = v32[5];
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v19;
  v25 = v32[0];
  v26 = v32[1];
  v18[1] = xmmword_10008E640;
  v18[2] = v25;
  v27 = v32[2];
  v28 = v32[3];
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[6] = v22;
  return sub_100072F04(v18);
}

uint64_t Argument.init<A>(parsing:help:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a6;
  *(v14 + 24) = a7;
  v15 = *(a2 + 16);
  *(v14 + 32) = *a2;
  *(v14 + 48) = v15;
  *(v14 + 64) = *(a2 + 32);
  *(v14 + 80) = *(a2 + 48);
  *(v14 + 81) = a1;
  *(v14 + 88) = a3;
  *(v14 + 96) = a4;
  *(v14 + 104) = a5;
  type metadata accessor for Array();
  sub_10006A034(sub_100032F30, v14, &v20);
  v18 = v20;
  v19 = v21;
  v16 = type metadata accessor for Parsed();
  (*(*(v16 - 8) + 32))(&v22, &v18, v16);
  return v22;
}

uint64_t sub_100031E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v16 = type metadata accessor for Array();
  v30 = 0;

  sub_10003350C(a4, v31);
  sub_10003357C(a6, a7, a8);
  WitnessTable = swift_getWitnessTable();
  sub_10005B274(a1, a2, a3, 0, a4, a5, &v30, v31, a6, a7, a8, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v18 = swift_allocObject();
  v19 = v31[8];
  v20 = v31[10];
  v21 = v31[11];
  v18[11] = v31[9];
  v18[12] = v20;
  v18[13] = v21;
  v22 = v31[4];
  v23 = v31[6];
  v24 = v31[7];
  v18[7] = v31[5];
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v19;
  v25 = v31[0];
  v26 = v31[1];
  v18[1] = xmmword_10008E640;
  v18[2] = v25;
  v27 = v31[2];
  v28 = v31[3];
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[6] = v22;
  return sub_100072F04(v18);
}

uint64_t Argument.init<A>(wrappedValue:parsing:help:completion:transform:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  v18 = *(a3 + 16);
  *(v17 + 24) = *a3;
  *(v17 + 16) = a9;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a3 + 32);
  *(v17 + 72) = *(a3 + 48);
  *(v17 + 73) = a2;
  *(v17 + 80) = a7;
  *(v17 + 88) = a8;
  *(v17 + 96) = a1;
  *(v17 + 104) = a4;
  *(v17 + 112) = a5;
  *(v17 + 120) = a6;
  type metadata accessor for Array();
  sub_10006A034(sub_100032FD8, v17, &v23);
  v21 = v23;
  v22 = v24;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v25, &v21, v19);
  return v25;
}

uint64_t sub_100032124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v16 = type metadata accessor for Array();
  v33 = a8;

  sub_10003350C(a4, v34);
  sub_10003357C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, a5, a6, v34, a7, &v33, a9, a10, a11, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v18 = swift_allocObject();
  v19 = v34[8];
  v20 = v34[10];
  v21 = v34[11];
  v18[11] = v34[9];
  v18[12] = v20;
  v18[13] = v21;
  v22 = v34[4];
  v23 = v34[6];
  v24 = v34[7];
  v18[7] = v34[5];
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v19;
  v25 = v34[0];
  v26 = v34[1];
  v18[1] = xmmword_10008E640;
  v18[2] = v25;
  v27 = v34[2];
  v28 = v34[3];
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[6] = v22;
  return sub_100072F04(v18);
}

uint64_t Argument.init<A>(parsing:help:completion:transform:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v17 = *(a2 + 16);
  *(v16 + 24) = *a2;
  *(v16 + 16) = a8;
  *(v16 + 40) = v17;
  *(v16 + 56) = *(a2 + 32);
  *(v16 + 72) = *(a2 + 48);
  *(v16 + 73) = a1;
  *(v16 + 80) = a6;
  *(v16 + 88) = a7;
  *(v16 + 96) = a3;
  *(v16 + 104) = a4;
  *(v16 + 112) = a5;
  type metadata accessor for Array();
  sub_10006A034(sub_100033088, v16, &v22);
  v20 = v22;
  v21 = v23;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v24, &v20, v18);
  return v24;
}

uint64_t sub_1000323DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v16 = type metadata accessor for Array();
  v32 = 0;

  sub_10003350C(a4, v33);
  sub_10003357C(a8, a9, a10);

  WitnessTable = swift_getWitnessTable();
  sub_10005B5C0(a1, a2, a3, 0, a4, a5, a6, v33, a7, &v32, a8, a9, a10, v16, WitnessTable);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v18 = swift_allocObject();
  v19 = v33[8];
  v20 = v33[10];
  v21 = v33[11];
  v18[11] = v33[9];
  v18[12] = v20;
  v18[13] = v21;
  v22 = v33[4];
  v23 = v33[6];
  v24 = v33[7];
  v18[7] = v33[5];
  v18[8] = v23;
  v18[9] = v24;
  v18[10] = v19;
  v25 = v33[0];
  v26 = v33[1];
  v18[1] = xmmword_10008E640;
  v18[2] = v25;
  v27 = v33[2];
  v28 = v33[3];
  v18[3] = v26;
  v18[4] = v27;
  v18[5] = v28;
  v18[6] = v22;
  return sub_100072F04(v18);
}

uint64_t sub_10003255C()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 5))
  {

    v6 = *(v0 + 7);

    v7 = *(v0 + 9);
  }

  (*(v2 + 8))(&v0[v4], v1);
  v8 = v0[v5 + 16];
  if (v8 != 255)
  {
    sub_100032650(*&v0[v5], *&v0[v5 + 8], v8);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100032650(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_100032690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 81) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v3 + 24);
  return sub_10002FD38(a1, a2, a3, v3 + 32, v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_100032758()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v0 + 4))
  {

    v6 = *(v0 + 6);

    v7 = *(v0 + 8);
  }

  v8 = *(v0 + 11);

  (*(v2 + 8))(&v0[v4], v1);
  v9 = v0[v5 + 16];
  if (v9 != 255)
  {
    sub_100032650(*&v0[v5], *&v0[v5 + 8], v9);
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

uint64_t sub_100032854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(v3[2] - 8) + 80) + 96) & ~*(*(v3[2] - 8) + 80);
  v5 = v3 + ((*(*(v3[2] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100030560(a1, a2, a3, (v3 + 3), v3[10], v3[11], v3 + v4, *v5, *(v5 + 1), v5[16], v3[2]);
}

uint64_t sub_100032970()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 5))
  {

    v6 = *(v0 + 7);

    v7 = *(v0 + 9);
  }

  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 - 8);
  if (!(*(v9 + 48))(&v0[v4], 1, v1))
  {
    (*(v9 + 8))(&v0[v4], v1);
  }

  v10 = v0[v8 + 16];
  if (v10 != 255)
  {
    sub_100032650(*&v0[v8], *&v0[v8 + 8], v10);
  }

  return _swift_deallocObject(v0, v8 + 17, v3 | 7);
}

uint64_t sub_100032AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(type metadata accessor for Optional() - 8);
  v10 = (*(v9 + 80) + 81) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100030DFC(a1, a2, a3, v3 + 4, v3 + v10, *v11, *(v11 + 1), v11[16]);
}

uint64_t sub_100032BE4()
{
  v1 = *(v0 + 2);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64) + v4 + 7;
  if (*(v0 + 4))
  {

    v6 = *(v0 + 6);

    v7 = *(v0 + 8);
  }

  v8 = v5 & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 11);

  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(&v0[v4], 1, v1))
  {
    (*(v10 + 8))(&v0[v4], v1);
  }

  v11 = v0[v8 + 16];
  if (v11 != 255)
  {
    sub_100032650(*&v0[v8], *&v0[v8 + 8], v11);
  }

  return _swift_deallocObject(v0, v8 + 17, v3 | 7);
}

uint64_t sub_100032D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = *(type metadata accessor for Optional() - 8);
  v9 = (*(v8 + 80) + 96) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_100031530(a1, a2, a3, v3 + 3, v3[10], v3[11], v3 + v9, *v10, *(v10 + 1), v10[16]);
}

uint64_t sub_100032E28()
{
  if (*(v0 + 40))
  {

    v1 = *(v0 + 56);

    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v4);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_100032E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_100031BE4(a1, a2, a3, (v3 + 32), *(v3 + 81), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112));
}

uint64_t sub_100032ED0()
{
  if (*(v0 + 40))
  {

    v1 = *(v0 + 56);

    v2 = *(v0 + 72);
  }

  v3 = *(v0 + 104);
  if (v3 != 255)
  {
    sub_100032650(*(v0 + 88), *(v0 + 96), v3);
  }

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_100032F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_100031E78(a1, a2, a3, (v3 + 32), *(v3 + 81), *(v3 + 88), *(v3 + 96), *(v3 + 104));
}

uint64_t sub_100032F68()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 48);

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);
  if (v5 != 255)
  {
    sub_100032650(*(v0 + 104), *(v0 + 112), v5);
  }

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_100033020()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 48);

    v2 = *(v0 + 64);
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_100032650(*(v0 + 96), *(v0 + 104), v4);
  }

  return _swift_deallocObject(v0, 113, 7);
}

uint64_t sub_1000330CC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100033110(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100033150()
{
  result = qword_1000B5268[0];
  if (!qword_1000B5268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5268);
  }

  return result;
}

uint64_t sub_1000331AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Parsed();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10003321C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_100033334(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10003350C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B52F0, qword_100091640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003357C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100033590(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100033590(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t CommandConfiguration._superCommandName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CommandConfiguration._superCommandName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CommandConfiguration.abstract.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CommandConfiguration.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

_BYTE *(*ArgumentHelp.shouldDisplay.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48) == 0;
  return sub_1000337B0;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:shouldDisplay:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, Swift::Bool shouldDisplay)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility.base = !shouldDisplay;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:visibility:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, ArgumentParser::ArgumentVisibility visibility)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility = visibility;
}

uint64_t sub_100033804@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = a1;
  return result;
}

void __swiftcall ArgumentHelp.init(stringLiteral:)(ArgumentParser::ArgumentHelp *__return_ptr retstr, Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;

  retstr->abstract._countAndFlagsBits = countAndFlagsBits;
  retstr->abstract._object = object;
  retstr->discussion._countAndFlagsBits = 0;
  retstr->discussion._object = 0xE000000000000000;
  retstr->valueName.value._countAndFlagsBits = 0;
  retstr->valueName.value._object = 0;
  retstr->visibility.base = ArgumentParser_ArgumentVisibility_Representation_default;
}

unint64_t sub_100033894()
{
  result = qword_1000B5300;
  if (!qword_1000B5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5300);
  }

  return result;
}

unint64_t sub_10003390C()
{
  result = qword_1000B5308;
  if (!qword_1000B5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5308);
  }

  return result;
}

unint64_t sub_100033974()
{
  result = qword_1000B5310;
  if (!qword_1000B5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5310);
  }

  return result;
}

uint64_t sub_1000339E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

__n128 sub_100033A28(uint64_t a1, uint64_t a2)
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

uint64_t sub_100033A44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100033A8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100033B18()
{
  result = qword_1000B5318;
  if (!qword_1000B5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5318);
  }

  return result;
}

unint64_t sub_100033B90()
{
  result = qword_1000B5320;
  if (!qword_1000B5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5320);
  }

  return result;
}

uint64_t sub_100033CB4(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 initializeBufferWithCopyOfBuffer for SplitArguments.Index(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100033CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100033D44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100033D88(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100033DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034274();
  v5 = sub_1000342C8();

  return Error<>._code.getter(a1, a2, v4, v5);
}

_DWORD *sub_100033E50@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_100033E60()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100033ED4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t static CleanExit.helpRequest(_:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_100002AA0(a1, v1);

  return sub_100034094(v3, v1, v2);
}

uint64_t CleanExit.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x706C65682D2DLL;
  }

  if (a3 != 1)
  {
    return 0xD000000000000018;
  }

  return a1;
}

uint64_t sub_100034024()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t sub_100034094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  v5 = sub_100007DE4(v8);
  (*(*(a2 - 8) + 16))(v5, a1, a2);
  sub_100002AA0(v8, v9);
  DynamicType = swift_getDynamicType();
  sub_100002B38(v8);
  return DynamicType;
}

unint64_t sub_100034138()
{
  result = qword_1000B5328;
  if (!qword_1000B5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5328);
  }

  return result;
}

uint64_t sub_1000341CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100034218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100034274()
{
  result = qword_1000B5330;
  if (!qword_1000B5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5330);
  }

  return result;
}

unint64_t sub_1000342C8()
{
  result = qword_1000B5338;
  if (!qword_1000B5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5338);
  }

  return result;
}

uint64_t sub_100034328@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t Flag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Flag();
  sub_10002F35C(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_10006991C(v7, v4, WitnessTable, a2);
  return sub_100002B38(a1);
}

uint64_t Flag.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*Flag.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v7 = *(a2 + 16);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(v9);
    v10 = malloc(v9);
  }

  v6[5] = v10;
  Flag.wrappedValue.getter(a2, v10);
  return sub_10002F754;
}

unint64_t Flag.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v17 - v13;
  (*(v11 + 16))(&v17 - v13, v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v14, v10);
    return 0xD000000000000012;
  }

  else
  {
    (*(v4 + 32))(v9, v14, v3);
    (*(v4 + 16))(v7, v9, v3);
    v16 = String.init<A>(describing:)();
    (*(v4 + 8))(v9, v3);
    return v16;
  }
}

Swift::Int FlagInversion.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t (*Flag<A>.init(name:inversion:exclusivity:help:)(uint64_t a1, char a2, char a3, uint64_t a4))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  *(v8 + 25) = a3;
  v9 = *(a4 + 16);
  *(v8 + 32) = *a4;
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a4 + 32);
  *(v8 + 80) = *(a4 + 48);
  return sub_1000351FC;
}

uint64_t sub_100034CA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t *a7)
{
  v12 = a7[2];
  v13 = a7[3];
  v51 = a7[4];
  v56 = a7[5];
  v14 = *(a7 + 48);
  if (a5)
  {
    v52 = sub_10003A2B8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2, a3);
    v15 = 0x656C6261736964;
    v16 = 0xE700000000000000;
  }

  else
  {
    v52 = sub_10003B384(a1, a2, a4);
    v15 = 28526;
    v16 = 0xE200000000000000;
  }

  v54 = sub_10003A2B8(v15, v16, 0, a4, a1, a2, a3);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008E640;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  v18 = a7[1];
  v53 = a1;
  v49 = v13;
  v50 = v12;
  v57 = v14;
  if (v18)
  {
    v19 = *a7;
    v97[0] = *a7;
    v97[1] = v18;
    if (v56)
    {
      sub_100039960(v97, v86);

      v20 = v18;
      v21 = v13;
      v22 = a2;
      v23 = v21;
      v24 = v51;
      v25 = v56;
      v26 = v57;
      goto LABEL_10;
    }

    v48 = a2;
    sub_100039960(v97, v86);

    v26 = v57;
    v20 = v18;
    v23 = v13;
  }

  else
  {
    v48 = a2;
    v26 = 0;
    v19 = 0;
    v12 = 0;
    v20 = 0xE000000000000000;
    v23 = 0xE000000000000000;
  }

  v22 = v48;

  v24 = 0;
  v25 = 0xE000000000000000;
LABEL_10:
  v78 = 1uLL;
  *&v79 = 0;
  *(&v79 + 1) = v17;
  *&v80 = _swiftEmptyArrayStorage;
  BYTE8(v80) = 1;
  *&v81 = v19;
  *(&v81 + 1) = v20;
  *&v82 = v12;
  *(&v82 + 1) = v23;
  *&v83 = v24;
  *(&v83 + 1) = v25;
  LOBYTE(v84) = v26;
  *(&v84 + 1) = 0;
  v85 = 0xE000000000000000;
  v86[0] = 1;
  v86[1] = 0;
  v86[2] = 0;
  v86[3] = v17;
  v86[4] = _swiftEmptyArrayStorage;
  v87 = 1;
  v88 = v19;
  v89 = v20;
  v90 = v12;
  v91 = v23;
  v92 = v24;
  v93 = v25;
  v94 = v26;
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_10002F094(&v78, v67);
  sub_10002F0F0(v86);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10008E640;
  *(v27 + 32) = v53;
  *(v27 + 40) = v22;
  *(v27 + 48) = a3;
  v28 = v22;
  if (v18)
  {
    v29 = *a7;
    v98[0] = *a7;
    v98[1] = v18;
    v30 = v56;
    sub_100039960(v98, v67);
    v31 = v49;

    if (v56)
    {

      v32 = v50;
      v33 = v51;
    }

    else
    {
      v33 = 0;
      v30 = 0xE000000000000000;
      v32 = v50;
    }

    v34 = v57;
  }

  else
  {
    v29 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v18 = 0xE000000000000000;
    v31 = 0xE000000000000000;
    v30 = 0xE000000000000000;
  }

  v59 = 1uLL;
  *&v60 = 0;
  *(&v60 + 1) = v27;
  *&v61 = _swiftEmptyArrayStorage;
  BYTE8(v61) = 0;
  *&v62 = v29;
  *(&v62 + 1) = v18;
  *&v63 = v32;
  *(&v63 + 1) = v31;
  *&v64 = v33;
  *(&v64 + 1) = v30;
  LOBYTE(v65) = v34;
  *(&v65 + 1) = 0;
  v66 = 0xE000000000000000;
  v67[0] = 1;
  v67[1] = 0;
  v67[2] = 0;
  v67[3] = v27;
  v67[4] = _swiftEmptyArrayStorage;
  v68 = 0;
  v69 = v29;
  v70 = v18;
  v71 = v32;
  v72 = v31;
  v73 = v33;
  v74 = v30;
  v75 = v34;
  v76 = 0;
  v77 = 0xE000000000000000;

  sub_10002F094(&v59, v58);
  sub_10002F0F0(v67);
  v35 = swift_allocObject();
  *(v35 + 16) = v53;
  *(v35 + 24) = v28;
  *(v35 + 32) = a3;
  *(v35 + 40) = a6;
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 24) = v53;
  *(v36 + 32) = v28;
  *(v36 + 40) = a3;
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  *(v37 + 24) = v28;
  *(v37 + 32) = a3;
  *(v37 + 40) = a6;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10008F240;
  *(v38 + 32) = v52;
  v39 = v83;
  *(v38 + 104) = v82;
  *(v38 + 120) = v39;
  *(v38 + 136) = v84;
  v40 = v85;
  v41 = v79;
  *(v38 + 40) = v78;
  *(v38 + 56) = v41;
  v42 = v81;
  *(v38 + 72) = v80;
  *(v38 + 88) = v42;
  *(v38 + 160) = 0;
  *(v38 + 168) = 0;
  *(v38 + 152) = v40;
  *(v38 + 176) = 4;
  *(v38 + 184) = sub_100039AD4;
  *(v38 + 192) = v35;
  *(v38 + 200) = 0;
  *(v38 + 208) = sub_100039AB4;
  *(v38 + 216) = v36;
  *(v38 + 224) = v54;
  v43 = v59;
  *(v38 + 248) = v60;
  *(v38 + 232) = v43;
  v44 = v66;
  v45 = v65;
  *(v38 + 312) = v64;
  *(v38 + 328) = v45;
  v46 = v63;
  *(v38 + 280) = v62;
  *(v38 + 296) = v46;
  *(v38 + 264) = v61;
  *(v38 + 352) = 0;
  *(v38 + 360) = 0;
  *(v38 + 344) = v44;
  *(v38 + 368) = 4;
  *(v38 + 376) = sub_100039AEC;
  *(v38 + 384) = v37;
  *(v38 + 392) = 0;
  *(v38 + 400) = String.init(argument:);
  *(v38 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v38);
}