uint64_t sub_100044E58(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v39 = &v39 - v12;
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2;
  v19 = *v2;
  v20 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v43 = a2;
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  result = (*(v14 + 8))(v18, v13);
  if (v25 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v42 = a1;
    Data.hash(into:)();
    sub_10001CA20(v23, v25);
    v27 = Hasher._finalize()();
    v28 = -1 << *(v19 + 32);
    v29 = v27 & ~v28;
    if ((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
    {
      v30 = ~v28;
      v31 = *(v41 + 72);
      while (1)
      {
        sub_100043A70(*(v19 + 48) + v31 * v29, v10);
        if (*(v10 + 1) == v21 && *(v10 + 2) == v22)
        {
          break;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100043AD4(v10);
        if (v33)
        {
          goto LABEL_12;
        }

        v29 = (v29 + 1) & v30;
        if (((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      sub_100043AD4(v10);
LABEL_12:
      sub_100043AD4(v43);
      sub_100043A70(*(v19 + 48) + v31 * v29, v42);
      return 0;
    }

    else
    {
LABEL_10:
      v34 = v40;
      v35 = *v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v43;
      v38 = v39;
      sub_100043A70(v43, v39);
      v44 = *v34;
      sub_100047B68(v38, v29, isUniquelyReferenced_nonNull_native);
      *v34 = v44;
      sub_10004C47C(v37, v42);
      return 1;
    }
  }

  return result;
}

uint64_t sub_100045154(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  sub_10002C1E4();
  dispatch thunk of Hashable.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if ((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v52 = ~v8;
    v50 = v4;
    v51 = v4 + 56;
    while (1)
    {
      sub_100030BD0(*(v4 + 48) + 56 * v9, v55);
      v10 = v56;
      v11 = v57;
      sub_100005A3C(v55, v56);
      v12 = (*(v11 + 24))(v10, v11);
      v14 = v13;
      v15 = *(a2 + 24);
      v16 = *(a2 + 32);
      sub_100005A3C(a2, v15);
      v17 = (*(v16 + 24))(v15, v16);
      v19 = v17;
      v20 = v18;
      v21 = v14 >> 62;
      v22 = v18 >> 62;
      if (v14 >> 62 == 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_32;
        }

        v30 = *(v12 + 16);
        v29 = *(v12 + 24);
        v31 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v31)
        {
          goto LABEL_68;
        }

        if (v22 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v21)
      {
        LODWORD(v28) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_69;
        }

        v28 = v28;
        if (v22 <= 1)
        {
LABEL_29:
          if (v22)
          {
            if (__OFSUB__(HIDWORD(v17), v17))
            {
              goto LABEL_67;
            }

            if (v28 != HIDWORD(v17) - v17)
            {
              goto LABEL_4;
            }
          }

          else if (v28 != BYTE6(v18))
          {
            goto LABEL_4;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v28 = BYTE6(v14);
        if (v22 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      if (v22 != 2)
      {
        if (v28)
        {
          goto LABEL_4;
        }

LABEL_43:
        sub_100005A80(v17, v18);
        v26 = v12;
        v27 = v14;
LABEL_44:
        sub_100005A80(v26, v27);
        goto LABEL_62;
      }

      v33 = *(v17 + 16);
      v32 = *(v17 + 24);
      v31 = __OFSUB__(v32, v33);
      v34 = v32 - v33;
      if (v31)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
      }

      if (v28 != v34)
      {
LABEL_4:
        sub_100005A80(v17, v18);
        sub_100005A80(v12, v14);
LABEL_5:
        sub_100030C2C(v55);
        goto LABEL_6;
      }

LABEL_39:
      if (v28 < 1)
      {
        goto LABEL_43;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v36 = *(v12 + 16);
          v35 = *(v12 + 24);
          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v38 = __DataStorage._offset.getter();
            if (__OFSUB__(v36, v38))
            {
              goto LABEL_72;
            }

            v37 += v36 - v38;
          }

          if (__OFSUB__(v35, v36))
          {
            goto LABEL_71;
          }

LABEL_58:
          __DataStorage._length.getter();
          sub_100043B30(v37, v19, v20, v54);
          sub_100005A80(v12, v14);
          sub_100005A80(v19, v20);
          v4 = v50;
          v7 = v51;
          if ((v54[0] & 1) == 0)
          {
            goto LABEL_5;
          }

          goto LABEL_62;
        }

        memset(v54, 0, 14);
      }

      else
      {
        if (v21)
        {
          if (v12 >> 32 < v12)
          {
            goto LABEL_70;
          }

          v37 = __DataStorage._bytes.getter();
          if (v37)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v12, v39))
            {
              goto LABEL_73;
            }

            v37 += v12 - v39;
          }

          goto LABEL_58;
        }

        v54[0] = v12;
        LOWORD(v54[1]) = v14;
        BYTE2(v54[1]) = BYTE2(v14);
        BYTE3(v54[1]) = BYTE3(v14);
        BYTE4(v54[1]) = BYTE4(v14);
        BYTE5(v54[1]) = BYTE5(v14);
      }

      sub_100043B30(v54, v17, v18, &v53);
      sub_100005A80(v12, v14);
      sub_100005A80(v19, v20);
      v7 = v51;
      if (!v53)
      {
        goto LABEL_5;
      }

LABEL_62:
      if (v58 != *(a2 + 40))
      {
        goto LABEL_5;
      }

      v40 = *(a2 + 48);
      sub_10003EB28();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v42 = Dictionary._bridgeToObjectiveC()().super.isa;
      v43 = static NSObject.== infix(_:_:)();

      sub_100030C2C(v55);
      if (v43)
      {
        sub_100030C2C(a2);
        sub_100030BD0(*(v4 + 48) + 56 * v9, a1);
        return 0;
      }

LABEL_6:
      v9 = (v9 + 1) & v52;
      if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    if (v12)
    {
      v23 = 0;
    }

    else
    {
      v23 = v14 == 0xC000000000000000;
    }

    if (v23 && v18 >> 62 == 3 && !v17 && v18 == 0xC000000000000000)
    {
      sub_100005A80(0, 0xC000000000000000);
      v26 = 0;
      v27 = 0xC000000000000000;
      goto LABEL_44;
    }

LABEL_32:
    v28 = 0;
    if (v22 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

LABEL_65:
  v45 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100030BD0(a2, v55);
  v54[0] = *v48;
  sub_100047E70(v55, v9, isUniquelyReferenced_nonNull_native);
  *v48 = v54[0];
  v47 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v47;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return 1;
}

uint64_t sub_100045710(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100048500(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1000457F4(Swift::Int *a1, Swift::Int a2, Swift::Int a3, void *a4)
{
  v8 = *v4;
  v9 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v16 = (*(v8 + 48) + 24 * v12);
      v17 = v16[2];
      v18 = *v16 == a2 && v16[1] == a3;
      if (v18 || (v19 = v16[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        sub_10003EB28();

        v14 = v17;
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v24 = (*(v8 + 48) + 24 * v12);
    v25 = v24[1];
    v26 = v24[2];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;

    v27 = v26;
    return 0;
  }

  else
  {
LABEL_11:
    v20 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v28;

    v22 = a4;
    sub_100048620(a2, a3, v22, v12, isUniquelyReferenced_nonNull_native);
    *v28 = v30;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = v22;
    return 1;
  }
}

uint64_t sub_1000459D0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
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
    sub_100048804(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100045AB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

Swift::Int sub_100045D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA148, &unk_100083290);
  v5 = static _SetStorage.resize(original:capacity:move:)();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v36 = (v3 + 56);
    v37 = v3;
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
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v15 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 33);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      *v14 = v20;
      *(v14 + 8) = v21;
      *(v14 + 16) = v22;
      *(v14 + 24) = v23;
      *(v14 + 32) = v24;
      *(v14 + 33) = v25;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100045FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v38 = v2;
    v39 = v3;
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
    v40 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v41 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v6 + 40);
      Hasher.init(_seed:)();
      v42 = v21;
      String.hash(into:)();
      if (v22 >> 60 == 15)
      {
        v26 = v22;
        v27 = v23;
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        v27 = v23;
        v26 = v22;
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
      v6 = v40;
      v28 = -1 << *(v40 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v40 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v42;
      *(v15 + 16) = v27;
      *(v15 + 24) = v26;
      *(v15 + 32) = v24;
      ++*(v40 + 16);
      v3 = v39;
      v11 = v41;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      v36 = v6;
      bzero(v8, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      v6 = v36;
    }

    else
    {
      *v8 = -1 << v35;
    }

    v2 = v38;
    *(v3 + 16) = 0;
  }

  v37 = v6;

  *v2 = v37;
  return result;
}

uint64_t sub_1000462CC(uint64_t a1)
{
  v2 = v1;
  v51 = type metadata accessor for String.Encoding();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51, v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v46 = v2;
    v47 = v13;
    v17 = 0;
    v18 = (v13 + 56);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v48 = (v4 + 8);
    v23 = result + 56;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v52 = (v21 - 1) & v21;
LABEL_17:
      v28 = *(v13 + 48);
      v29 = *(v49 + 72);
      sub_10004C47C(v28 + v29 * (v25 | (v17 << 6)), v12);
      v30 = *(v16 + 40);
      Hasher.init(_seed:)();
      v31 = *(v12 + 1);
      v32 = *(v12 + 2);
      v33 = v12;
      v34 = v50;
      static String.Encoding.utf8.getter();
      v35 = String.data(using:allowLossyConversion:)();
      v37 = v36;
      result = (*v48)(v34, v51);
      if (v37 >> 60 == 15)
      {
        goto LABEL_34;
      }

      Data.hash(into:)();
      sub_10001CA20(v35, v37);
      result = Hasher._finalize()();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      v12 = v33;
      if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v23 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_10004C47C(v33, *(v16 + 48) + v24 * v29);
      ++*(v16 + 16);
      v13 = v47;
      v21 = v52;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    v45 = 1 << *(v13 + 32);
    if (v45 >= 64)
    {
      bzero(v18, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v45;
    }

    v2 = v46;
    *(v13 + 16) = 0;
  }

  *v2 = v16;
  return result;
}

uint64_t sub_1000466B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA100, &qword_100083248);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v33 = *(v19 + 48);
      v30 = *v19;
      v20 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_10002C1E4();
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *(v15 + 48) = v33;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      *v15 = v30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100046944(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA128, &qword_100083268);
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

uint64_t sub_100046B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100046DE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v6 + 48) + 4 * v14) = v18;
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

Swift::Int sub_100047010(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100045AB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100048928();
      goto LABEL_16;
    }

    sub_1000494D8(v8 + 1);
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

Swift::Int sub_100047190(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_24;
  }

  if (a3)
  {
    sub_100045D18(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100048A84();
      goto LABEL_24;
    }

    sub_100049710(v6 + 1);
  }

  v8 = *(v5 + 32);
  v9 = *v5;
  v10 = *(v5 + 8);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v37 = v12;
  v38 = v11;
  String.hash(into:)();
  v15 = *(v5 + 33);
  v36 = v8;
  Hasher._combine(_:)(v8 & 1);
  v35 = v15;
  Hasher._combine(_:)(v15);
  result = Hasher._finalize()();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a2 = result & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v13 + 48);
    while (1)
    {
      v20 = v19 + 40 * a2;
      result = *v20;
      v21 = *(v20 + 16);
      v22 = *(v20 + 24);
      v23 = *(v20 + 32);
      v24 = *(v20 + 33);
      v25 = *v20 == v9 && *(v20 + 8) == v10;
      if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v26 = v21 == v38 && v22 == v37;
        if (v26 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (((v23 ^ v36) & 1) == 0 && v24 == v35)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v18;
      if (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_24:
  v27 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 40 * a2;
  v29 = *(v34 + 16);
  *v28 = *v34;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(v34 + 32);
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }

  return result;
}

Swift::Int sub_1000473B4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v67 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_94;
  }

  if (a3)
  {
    sub_100045FD4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100048C04();
      goto LABEL_94;
    }

    sub_1000499CC(v6 + 1);
  }

  v65 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = *v5;
  v10 = *(v5 + 8);
  String.hash(into:)();
  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = v11 >> 60;
  if (v11 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v68 = *(v5 + 32);
  Hasher._combine(_:)(v68);
  result = Hasher._finalize()();
  v14 = v65;
  v15 = -1 << *(v65 + 32);
  a2 = result & ~v15;
  if ((*(v65 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v70 = v12;
    v71 = ~v15;
    if (v12)
    {
      v16 = 0;
    }

    else
    {
      v16 = v11 == 0xC000000000000000;
    }

    v17 = !v16;
    v64 = v17;
    v18 = v11 >> 62;
    v19 = __OFSUB__(HIDWORD(v12), v12);
    v63 = v19;
    v62 = HIDWORD(v12) - v12;
    v69 = v9;
    while (1)
    {
      v22 = *(v14 + 48) + 40 * a2;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      if (*v22 != v9 || *(v22 + 8) != v10)
      {
        v27 = *(v22 + 8);
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      if (v24 >> 60 == 15)
      {
        if (v13 <= 0xE)
        {
          goto LABEL_22;
        }

        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v70, v11);
LABEL_33:
        v28 = v23;
        v29 = v24;
        goto LABEL_34;
      }

      if (v13 > 0xE)
      {
LABEL_22:
        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v70, v11);
        sub_10001CA20(v23, v24);
        v20 = v70;
        v9 = v69;
        v21 = v11;
LABEL_23:
        result = sub_10001CA20(v20, v21);
        goto LABEL_24;
      }

      v30 = v24 >> 62;
      if (v24 >> 62 == 3)
      {
        break;
      }

      v34 = v11 >> 62;
      if (v30 > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_60;
        }

        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        v38 = __OFSUB__(v36, v37);
        v35 = v36 - v37;
        if (v38)
        {
          goto LABEL_100;
        }

        if (v18 <= 1)
        {
          goto LABEL_57;
        }
      }

      else if (v30)
      {
        LODWORD(v35) = HIDWORD(v23) - v23;
        if (__OFSUB__(HIDWORD(v23), v23))
        {
          goto LABEL_99;
        }

        v35 = v35;
        if (v18 <= 1)
        {
LABEL_57:
          v39 = BYTE6(v11);
          if (v34)
          {
            v39 = v62;
            if (v63)
            {
              goto LABEL_97;
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        v35 = BYTE6(v24);
        if (v18 <= 1)
        {
          goto LABEL_57;
        }
      }

LABEL_61:
      if (v34 != 2)
      {
        if (v35)
        {
LABEL_69:
          sub_10001C9B8(v23, v24);
          sub_10001C9B8(v70, v11);
          v9 = v69;
          sub_10001CA20(v70, v11);
          v20 = v23;
          v21 = v24;
          goto LABEL_23;
        }

LABEL_70:

        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v70, v11);
        v9 = v69;
        v13 = v11 >> 60;
        sub_10001CA20(v70, v11);
        sub_10001CA20(v23, v24);

        goto LABEL_33;
      }

      v41 = *(v70 + 16);
      v40 = *(v70 + 24);
      v38 = __OFSUB__(v40, v41);
      v39 = v40 - v41;
      if (v38)
      {
        goto LABEL_98;
      }

LABEL_63:
      if (v35 != v39)
      {
        goto LABEL_69;
      }

      if (v35 < 1)
      {
        goto LABEL_70;
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          *&v73[6] = 0;
          *v73 = 0;

          sub_10001C9B8(v23, v24);
          sub_10001C9B8(v23, v24);
          v42 = v11;
          v43 = v70;
          sub_10001C9B8(v70, v11);
          goto LABEL_83;
        }

        v59 = *(v23 + 24);
        v61 = *(v23 + 16);

        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v70, v11);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v45 = v44;
          v46 = __DataStorage._offset.getter();
          v47 = v61;
          if (__OFSUB__(v61, v46))
          {
            goto LABEL_103;
          }

          v58 = v61 - v46 + v45;
        }

        else
        {
          v58 = 0;
          v47 = v61;
        }

        if (__OFSUB__(v59, v47))
        {
          goto LABEL_102;
        }

        __DataStorage._length.getter();
        v52 = v58;
      }

      else
      {
        if (!v30)
        {
          *v73 = v23;
          *&v73[8] = v24;
          v73[10] = BYTE2(v24);
          v73[11] = BYTE3(v24);
          v73[12] = BYTE4(v24);
          v73[13] = BYTE5(v24);

          sub_10001C9B8(v23, v24);
          sub_10001C9B8(v23, v24);
          v42 = v11;
          v43 = v70;
          sub_10001C9B8(v70, v11);
LABEL_83:
          sub_100043B30(v73, v43, v42, &v72);
          sub_10001CA20(v70, v42);
          v51 = v72;
          goto LABEL_90;
        }

        if (v23 >> 32 < v23)
        {
          goto LABEL_101;
        }

        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v23, v24);
        sub_10001C9B8(v70, v11);
        v48 = __DataStorage._bytes.getter();
        if (v48)
        {
          v60 = v48;
          v49 = __DataStorage._offset.getter();
          if (__OFSUB__(v23, v49))
          {
            goto LABEL_104;
          }

          v50 = v23 - v49 + v60;
        }

        else
        {
          v50 = 0;
        }

        __DataStorage._length.getter();
        v52 = v50;
      }

      sub_100043B30(v52, v70, v11, v73);
      sub_10001CA20(v70, v11);
      v51 = v73[0];
LABEL_90:
      sub_10001CA20(v23, v24);

      result = sub_10001CA20(v23, v24);
      v13 = v11 >> 60;
      if (v51)
      {
        v14 = v65;
        if (v25 == v68)
        {
LABEL_105:
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      else
      {
        v14 = v65;
      }

LABEL_24:
      a2 = (a2 + 1) & v71;
      if (((*(v65 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    if (v23)
    {
      v31 = 0;
    }

    else
    {
      v31 = v24 == 0xC000000000000000;
    }

    v33 = !v31 || v11 >> 62 != 3;
    if (((v33 | v64) & 1) == 0)
    {

      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001C9B8(0, 0xC000000000000000);
      sub_10001CA20(0, 0xC000000000000000);
      sub_10001CA20(0, 0xC000000000000000);

      v28 = 0;
      v29 = 0xC000000000000000;
LABEL_34:
      result = sub_10001CA20(v28, v29);
      if (v25 == v68)
      {
        goto LABEL_105;
      }

      goto LABEL_24;
    }

    v34 = v11 >> 62;
LABEL_60:
    v35 = 0;
    if (v34 <= 1)
    {
      goto LABEL_57;
    }

    goto LABEL_61;
  }

LABEL_94:
  v53 = *v66;
  *(*v66 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v54 = *(v53 + 48) + 40 * a2;
  v55 = *(v67 + 16);
  *v54 = *v67;
  *(v54 + 16) = v55;
  *(v54 + 32) = *(v67 + 32);
  v56 = *(v53 + 16);
  v38 = __OFADD__(v56, 1);
  v57 = v56 + 1;
  if (v38)
  {
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
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
  }

  *(v53 + 16) = v57;
  return result;
}

uint64_t sub_100047B68(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*v4 + 16);
  v20 = *(*v4 + 24);
  v40 = a1;
  if (v20 > v19 && (a3 & 1) != 0)
  {
    goto LABEL_17;
  }

  if (a3)
  {
    v39 = v8;
    sub_1000462CC(v19 + 1);
    goto LABEL_8;
  }

  if (v20 > v19)
  {
    sub_100048D88();
LABEL_17:
    v34 = *v4;
    *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_10004C47C(v40, *(v34 + 48) + *(v41 + 72) * a2);
    v36 = *(v34 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (!v37)
    {
      *(v34 + 16) = v38;
      return result;
    }

    __break(1u);
    goto LABEL_20;
  }

  v39 = v8;
  sub_100049C7C(v19 + 1);
LABEL_8:
  v21 = *v4;
  v22 = *(*v4 + 40);
  Hasher.init(_seed:)();
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;
  (*(v14 + 8))(v18, v13);
  if (v27 >> 60 != 15)
  {
    Data.hash(into:)();
    sub_10001CA20(v25, v27);
    v28 = Hasher._finalize()();
    v29 = -1 << *(v21 + 32);
    a2 = v28 & ~v29;
    if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v30 = ~v29;
      v31 = *(v41 + 72);
      while (1)
      {
        sub_100043A70(*(v21 + 48) + v31 * a2, v12);
        if (*(v12 + 1) == v23 && *(v12 + 2) == v24)
        {
          goto LABEL_21;
        }

        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_100043AD4(v12);
        if (v33)
        {
          goto LABEL_22;
        }

        a2 = (a2 + 1) & v30;
        if (((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_100043AD4(v12);
LABEL_22:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100047E70(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000466B0(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100048F6C();
        goto LABEL_73;
      }

      sub_10004A030(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_10002C1E4();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v11 = v9 + 56;
    v12 = -1 << *(v9 + 32);
    a2 = result & ~v12;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v62 = ~v12;
      v59 = v3;
      v60 = v9;
      v61 = v9 + 56;
      while (1)
      {
        sub_100030BD0(*(v9 + 48) + 56 * a2, v65);
        v13 = v66;
        v14 = v67;
        sub_100005A3C(v65, v66);
        v15 = (*(v14 + 24))(v13, v14);
        v17 = v16;
        v19 = *(v6 + 24);
        v18 = *(v6 + 32);
        sub_100005A3C(v6, v19);
        v20 = (*(v18 + 24))(v19, v18);
        v22 = v17 >> 62;
        v23 = v21 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_39;
          }

          v31 = *(v15 + 16);
          v30 = *(v15 + 24);
          v32 = __OFSUB__(v30, v31);
          v29 = v30 - v31;
          if (v32)
          {
            goto LABEL_78;
          }

          if (v23 <= 1)
          {
            goto LABEL_36;
          }
        }

        else if (v22)
        {
          LODWORD(v29) = HIDWORD(v15) - v15;
          if (__OFSUB__(HIDWORD(v15), v15))
          {
            goto LABEL_79;
          }

          v29 = v29;
          if (v23 <= 1)
          {
LABEL_36:
            if (v23)
            {
              if (__OFSUB__(HIDWORD(v20), v20))
              {
                goto LABEL_76;
              }

              if (v29 != HIDWORD(v20) - v20)
              {
                goto LABEL_11;
              }
            }

            else if (v29 != BYTE6(v21))
            {
              goto LABEL_11;
            }

            goto LABEL_46;
          }
        }

        else
        {
          v29 = BYTE6(v17);
          if (v23 <= 1)
          {
            goto LABEL_36;
          }
        }

LABEL_40:
        if (v23 != 2)
        {
          if (v29)
          {
            goto LABEL_11;
          }

LABEL_51:
          sub_100005A80(v20, v21);
          v27 = v15;
          v28 = v17;
LABEL_52:
          sub_100005A80(v27, v28);
          goto LABEL_53;
        }

        v34 = *(v20 + 16);
        v33 = *(v20 + 24);
        v32 = __OFSUB__(v33, v34);
        v35 = v33 - v34;
        if (v32)
        {
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (v29 != v35)
        {
LABEL_11:
          sub_100005A80(v20, v21);
          sub_100005A80(v15, v17);
LABEL_12:
          result = sub_100030C2C(v65);
          goto LABEL_13;
        }

LABEL_46:
        if (v29 < 1)
        {
          goto LABEL_51;
        }

        if (v22 > 1)
        {
          v41 = v20;
          v42 = v21;
          if (v22 == 2)
          {
            v43 = *(v15 + 16);
            v44 = *(v15 + 24);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_82;
              }

              v45 += v43 - v46;
            }

            if (__OFSUB__(v44, v43))
            {
              goto LABEL_81;
            }

            __DataStorage._length.getter();
            sub_100043B30(v45, v41, v42, v64);
            sub_100005A80(v15, v17);
            sub_100005A80(v41, v42);
            v47 = v64[0];
            v4 = v59;
          }

          else
          {
            memset(v64, 0, 14);
            sub_100043B30(v64, v20, v21, &v63);
            sub_100005A80(v15, v17);
            sub_100005A80(v41, v42);
            v47 = v63;
          }
        }

        else
        {
          if (!v22)
          {
            v64[0] = v15;
            LOWORD(v64[1]) = v17;
            BYTE2(v64[1]) = BYTE2(v17);
            BYTE3(v64[1]) = BYTE3(v17);
            BYTE4(v64[1]) = BYTE4(v17);
            BYTE5(v64[1]) = BYTE5(v17);
            v36 = v20;
            v37 = v21;
            sub_100043B30(v64, v20, v21, &v63);
            v11 = v61;
            sub_100005A80(v15, v17);
            sub_100005A80(v36, v37);
            if ((v63 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_53;
          }

          if (v15 >> 32 < v15)
          {
            goto LABEL_80;
          }

          v48 = v20;
          v49 = v21;
          v50 = __DataStorage._bytes.getter();
          if (v50)
          {
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v15, v51))
            {
              goto LABEL_83;
            }

            v50 += v15 - v51;
          }

          v4 = v59;
          __DataStorage._length.getter();
          sub_100043B30(v50, v48, v49, v64);
          sub_100005A80(v15, v17);
          sub_100005A80(v48, v49);
          v47 = v64[0];
        }

        v9 = v60;
        v11 = v61;
        if ((v47 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_53:
        if (v68 != *(v6 + 40))
        {
          goto LABEL_12;
        }

        v38 = *(v6 + 48);
        sub_10003EB28();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v40 = Dictionary._bridgeToObjectiveC()().super.isa;
        LOBYTE(v38) = static NSObject.== infix(_:_:)();

        result = sub_100030C2C(v65);
        if (v38)
        {
          result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_13:
        a2 = (a2 + 1) & v62;
        if (((*(v11 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      if (v15)
      {
        v24 = 0;
      }

      else
      {
        v24 = v17 == 0xC000000000000000;
      }

      if (v24 && v21 >> 62 == 3 && !v20 && v21 == 0xC000000000000000)
      {
        sub_100005A80(0, 0xC000000000000000);
        v27 = 0;
        v28 = 0xC000000000000000;
        goto LABEL_52;
      }

LABEL_39:
      v29 = 0;
      if (v23 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }
  }

LABEL_73:
  v52 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v53 = *(v52 + 48) + 56 * a2;
  v54 = *v6;
  v55 = *(v6 + 16);
  v56 = *(v6 + 32);
  *(v53 + 48) = *(v6 + 48);
  *(v53 + 16) = v55;
  *(v53 + 32) = v56;
  *v53 = v54;
  v57 = *(v52 + 16);
  v32 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  if (v32)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
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
  }

  *(v52 + 16) = v58;
  return result;
}

uint64_t sub_100048500(uint64_t result, unint64_t a2, char a3)
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
    sub_100046944(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1000490EC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004A288(v5 + 1);
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

Swift::Int sub_100048620(Swift::Int result, Swift::Int a2, Swift::Int a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100046B68(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_10004922C();
      goto LABEL_18;
    }

    sub_10004A478(v10 + 1);
  }

  v12 = *v5;
  v13 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  result = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v18 = (*(v12 + 48) + 24 * a4);
      v19 = v18[2];
      v20 = *v18 == v9 && v18[1] == a2;
      if (v20 || (v21 = v18[1], result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        sub_10003EB28();

        v16 = v19;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          goto LABEL_21;
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_18:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = v9;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_21:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100048804(uint64_t result, unint64_t a2, char a3)
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
    sub_100046DE8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100049398();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10004A6D8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v12 + 48) + 4 * a2) = v4;
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

void *sub_100048928()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

void *sub_100048A84()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA148, &unk_100083290);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        LOBYTE(v18) = *(v18 + 33);
        v24 = *(v4 + 48) + v17;
        *v24 = v20;
        *(v24 + 8) = v19;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = v23;
        *(v24 + 33) = v18;
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

void *sub_100048C04()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LODWORD(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;

        result = sub_10001C9B8(v21, v22);
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

void *sub_100048D88()
{
  v1 = v0;
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  v8 = *v0;
  v9 = static _SetStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_100043A70(*(v8 + 48) + v23, v7);
        result = sub_10004C47C(v7, *(v10 + 48) + v23);
      }

      while (v18);
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
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

void *sub_100048F6C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA100, &qword_100083248);
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
        v17 = 56 * (v14 | (v8 << 6));
        result = sub_100030BD0(*(v2 + 48) + v17, v22);
        v18 = *(v4 + 48) + v17;
        v19 = v23;
        v20 = v22[2];
        v21 = v22[1];
        *v18 = v22[0];
        *(v18 + 16) = v21;
        *(v18 + 32) = v20;
        *(v18 + 48) = v19;
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

void *sub_1000490EC()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA128, &qword_100083268);
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

id sub_10004922C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;

        result = v20;
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

void *sub_100049398()
{
  v1 = v0;
  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

uint64_t sub_1000494D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
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

uint64_t sub_100049710(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA148, &unk_100083290);
  result = static _SetStorage.resize(original:capacity:move:)();
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
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 32);
      v25 = *(v19 + 33);
      v26 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      result = Hasher._finalize()();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v37 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      v11 = v38;
      *(v15 + 16) = v23;
      *(v15 + 24) = v22;
      *(v15 + 32) = v24;
      *(v15 + 33) = v25;
      ++*(v37 + 16);
      v3 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_1000499CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA168, &qword_1000832C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v19 + 24);
      v34 = *(v19 + 32);
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();

      sub_10001C9B8(v22, v23);
      String.hash(into:)();
      if (v23 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
      }

      Hasher._combine(_:)(v34);
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v23;
      *(v15 + 32) = v34;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_31;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100049C7C(uint64_t a1)
{
  v2 = v1;
  v50 = type metadata accessor for String.Encoding();
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v50, v6);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v14 = *(*v2 + 24);
  }

  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v45 = v2;
    v46 = v13;
    v17 = 0;
    v18 = v13 + 56;
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 56);
    v22 = (v19 + 63) >> 6;
    v47 = (v4 + 8);
    v23 = result + 56;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v51 = (v21 - 1) & v21;
LABEL_17:
      v28 = *(v13 + 48);
      v29 = *(v48 + 72);
      sub_100043A70(v28 + v29 * (v25 | (v17 << 6)), v12);
      v30 = *(v16 + 40);
      Hasher.init(_seed:)();
      v31 = *(v12 + 1);
      v32 = *(v12 + 2);
      v33 = v12;
      v34 = v49;
      static String.Encoding.utf8.getter();
      v35 = String.data(using:allowLossyConversion:)();
      v37 = v36;
      result = (*v47)(v34, v50);
      if (v37 >> 60 == 15)
      {
        goto LABEL_32;
      }

      Data.hash(into:)();
      sub_10001CA20(v35, v37);
      result = Hasher._finalize()();
      v38 = -1 << *(v16 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      v12 = v33;
      if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v23 + 8 * v40);
          if (v44 != -1)
          {
            v24 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_31;
      }

      v24 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_10004C47C(v33, *(v16 + 48) + v24 * v29);
      ++*(v16 + 16);
      v13 = v46;
      v21 = v51;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v2 = v45;
        goto LABEL_29;
      }

      v27 = *(v18 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v51 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v16;
  }

  return result;
}

uint64_t sub_10004A030(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA100, &qword_100083248);
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
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100030BD0(*(v3 + 48) + 56 * (v18 | (v7 << 6)), v30);
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_10002C1E4();
      dispatch thunk of Hashable.hash(into:)();
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
      v14 = *(v6 + 48) + 56 * v13;
      v15 = v30[0];
      v16 = v30[1];
      v17 = v30[2];
      *(v14 + 48) = v31;
      *(v14 + 16) = v16;
      *(v14 + 32) = v17;
      *v14 = v15;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v20 = *(v3 + 56 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
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

uint64_t sub_10004A288(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA128, &qword_100083268);
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

uint64_t sub_10004A478(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();

      v24 = v22;
      String.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v24;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_10004A6D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100003F6C(&qword_1000BA158, &qword_1000832A8);
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
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
      *(*(v6 + 48) + 4 * v13) = v17;
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

char *sub_10004A8CC(char *a1, int64_t a2, char a3)
{
  result = sub_10004AA1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A8EC(char *a1, int64_t a2, char a3)
{
  result = sub_10004AB28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A90C(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC44(a1, a2, a3, *v3, &qword_1000BA178, &qword_1000832D0);
  *v3 = result;
  return result;
}

char *sub_10004A944(char *a1, int64_t a2, char a3)
{
  result = sub_10004AC44(a1, a2, a3, *v3, &qword_1000BA170, &qword_1000832C8);
  *v3 = result;
  return result;
}

size_t sub_10004A97C(size_t a1, int64_t a2, char a3)
{
  result = sub_10004AD50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A99C(char *a1, int64_t a2, char a3)
{
  result = sub_10004AF28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10004A9BC(char *a1, int64_t a2, char a3)
{
  result = sub_10004B038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10004A9DC(void *a1, int64_t a2, char a3)
{
  result = sub_10004B184(a1, a2, a3, *v3, &qword_1000BA180, &qword_1000832D8, &qword_1000BA188, &qword_1000832E0);
  *v3 = result;
  return result;
}

char *sub_10004AA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004AB28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000B9F40, &unk_100083190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10004AC44(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100003F6C(a5, a6);
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
    swift_arrayInitWithCopy();
  }

  return v12;
}

size_t sub_10004AD50(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003F6C(&qword_1000B9388, &unk_100082010);
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

char *sub_10004AF28(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA150, &qword_1000832A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004B038(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003F6C(&qword_1000BA110, &qword_100083250);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10004B184(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100003F6C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003F6C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_10004B2D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003F6C(&qword_1000B93F8, &unk_100083270);
  result = static _SetStorage.allocate(capacity:)();
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
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
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
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
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

uint64_t sub_10004B4F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003F6C(&qword_1000BA100, &qword_100083248);
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_100030BD0(*(a4 + 48) + 56 * (v13 | (v11 << 6)), v30);
    v16 = *(v6 + 40);
    Hasher.init(_seed:)();
    sub_10002C1E4();
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 56 * v20;
    v26 = v30[0];
    v27 = v30[1];
    v28 = v30[2];
    *(v25 + 48) = v31;
    *(v25 + 16) = v27;
    *(v25 + 32) = v28;
    *v25 = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
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

uint64_t sub_10004B748(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100003F6C(&qword_1000BA160, &unk_1000832B0);
  result = static _SetStorage.allocate(capacity:)();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v9[5];
    Hasher.init(_seed:)();

    v21 = v19;
    String.hash(into:)();
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (v9[6] + 24 * v25);
    *v30 = v17;
    v30[1] = v18;
    v30[2] = v21;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
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
      v33 = (v15 - 1) & v15;
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

uint64_t sub_10004B9A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = type metadata accessor for String.Encoding();
  v8 = *(v50 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v50, v10);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_100003F6C(&qword_1000BA118, &qword_100083258);
  result = static _SetStorage.allocate(capacity:)();
  v17 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v46 = a1;
  v47 = (v8 + 8);
  v21 = result + 56;
  v45 = a4;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v51 = (v19 - 1) & v19;
LABEL_16:
    v25 = *(a4 + 48);
    v26 = *(v48 + 72);
    sub_100043A70(v25 + v26 * (v22 | (v20 << 6)), v16);
    v27 = v17[5];
    Hasher.init(_seed:)();
    v28 = v17;
    v29 = *(v16 + 1);
    v30 = *(v16 + 2);
    v31 = v16;
    v32 = v49;
    static String.Encoding.utf8.getter();
    v33 = String.data(using:allowLossyConversion:)();
    v35 = v34;
    result = (*v47)(v32, v50);
    if (v35 >> 60 == 15)
    {
      goto LABEL_34;
    }

    Data.hash(into:)();
    sub_10001CA20(v33, v35);
    result = Hasher._finalize()();
    v36 = -1 << *(v28 + 32);
    v37 = result & ~v36;
    v38 = v37 >> 6;
    v16 = v31;
    v17 = v28;
    if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
    {
      v40 = 0;
      v41 = (63 - v36) >> 6;
      a1 = v46;
      while (++v38 != v41 || (v40 & 1) == 0)
      {
        v42 = v38 == v41;
        if (v38 == v41)
        {
          v38 = 0;
        }

        v40 |= v42;
        v43 = *(v21 + 8 * v38);
        if (v43 != -1)
        {
          v39 = __clz(__rbit64(~v43)) + (v38 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_32;
    }

    v39 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
    a1 = v46;
LABEL_27:
    *(v21 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
    result = sub_10004C47C(v31, v17[6] + v39 * v26);
    ++v17[2];
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_33;
    }

    a4 = v45;
    v19 = v51;
    if (!a3)
    {
LABEL_29:

      return v17;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      goto LABEL_29;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v51 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_10004BD54(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_10004BF58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10004BDE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v22 = a4;
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_100030BD0(*(a3 + 48) + 56 * v15, v21);
    v16 = v22(v21);
    result = sub_100030C2C(v21);
    if (v4)
    {
      return result;
    }

    if (v16)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_10004B4F8(v19, a2, v20, a3);
      }
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
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BF58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v32 = a4;
  v28 = a2;
  v29 = a1;
  v6 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  result = __chkstk_darwin(v6 - 8, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v12 = 0;
  v33 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
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
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v12 << 6);
    sub_100043A70(*(v33 + 48) + *(v31 + 72) * v23, v11);
    v24 = v32(v11);
    result = sub_100043AD4(v11);
    if (v4)
    {
      return result;
    }

    if (v24)
    {
      *(v29 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v30++, 1))
      {
        __break(1u);
LABEL_16:
        v26 = v33;

        return sub_10004B9A0(v29, v28, v30, v26);
      }
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
      goto LABEL_16;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004C148(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100044308(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10004C1E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10004C4E0();
  result = Set.init(minimumCapacity:)();
  v12 = result;
  if (v2)
  {
    v4 = (a1 + 65);
    do
    {
      v5 = *(v4 - 33);
      v6 = *(v4 - 25);
      v7 = *(v4 - 17);
      v8 = *(v4 - 9);
      v9 = *(v4 - 1);
      v10 = *v4;
      v4 += 40;
      v13[0] = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      v14 = v9;
      v15 = v10;

      sub_100044458(v11, v13);

      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_10004C298(uint64_t a1)
{
  v2 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v16 - v10;
  v12 = *(a1 + 16);
  sub_10004C534(&qword_1000B8838);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v12)
  {
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_100043A70(v14, v8);
      sub_100044E58(v11, v8);
      sub_100043AD4(v11);
      v14 += v15;
      --v12;
    }

    while (v12);
    return v17;
  }

  return result;
}

uint64_t sub_10004C3EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10002C1E4();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100030BD0(v4, v5);
      sub_100045154(v6, v5);
      sub_100030C2C(v6);
      v4 += 56;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10004C47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.AuxiliaryProcess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004C4E0()
{
  result = qword_1000BA140;
  if (!qword_1000BA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA140);
  }

  return result;
}

uint64_t sub_10004C534(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AEAParticipant.AuxiliaryProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10004C578(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1, a2);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &_swiftEmptySetSingleton;
  sub_100003F6C(&unk_1000BA190, &qword_1000832E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000807D0;
  (*(v7 + 16))(v10, v4, a3);
  v12 = _getErrorEmbeddedNSError<A>(_:)();
  if (v12)
  {
    v13 = v12;
    (*(v7 + 8))(v10, a3);
    v14 = 1;
  }

  else
  {
    v13 = swift_allocError();
    (*(v7 + 32))(v15, v10, a3);
    v14 = *(v11 + 16);
  }

  *(v11 + 32) = v13;
  v29[1] = v11;
  v30 = v11 + 32;
  if (!v14)
  {
    goto LABEL_18;
  }

  v16 = 0;
  v17 = (2 * v14) | 1;
  while (1)
  {
    v18 = v17 >> 1;
    if (v16 != v17 >> 1)
    {
      break;
    }

LABEL_7:
    if (v16 == v18)
    {
      goto LABEL_18;
    }
  }

  if (v16 >= (v17 >> 1))
  {
    __break(1u);
    return;
  }

  v19 = *(v30 + 8 * v16++);
  v31 = v16;
  v32 = v17;
  swift_errorRetain();
  v20 = _convertErrorToNSError(_:)();
  v21 = v33;
  if (v33[2])
  {
    v22 = v33[5];
    v23 = static Hasher._hash(seed:_:)();
    v24 = -1 << *(v21 + 32);
    v25 = v23 & ~v24;
    if ((*(v21 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25))
    {
      v26 = ~v24;
      while (*(v21[6] + 8 * v25) != v20)
      {
        v25 = (v25 + 1) & v26;
        if (((*(v21 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_16:
  if ((a1(v19) & 1) == 0)
  {
    sub_100045710(v29, v20);
    v27 = [v20 underlyingErrors];
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10004C8A4(v28);

    v16 = v31;
    v17 = v32;
    v18 = v32 >> 1;
    goto LABEL_7;
  }

LABEL_18:

  swift_unknownObjectRelease();
}

void *sub_10004C8A4(void *result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v5 = result;
  v6 = result[2];
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v3 + 8 * v4) != &v9[v10 + 4])
  {

LABEL_7:
    v11 = v4;
    goto LABEL_9;
  }

  v12 = v9[3];

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v4, v13);
  v11 = v4 + v13;
  if (v14)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  result = (v4 + v6);
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v11 < result)
  {
    if (v11 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = 2 * v11;
    if (v15 > result)
    {
      result = v15;
    }
  }

  result = sub_10004CFA0(result);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_39;
  }

  v19 = v1[1] + 8 * v17 + 8 * v18;
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v23 = v18;
    goto LABEL_22;
  }

  v20 = *v1;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v21[2];
  if (v19 != &v21[v22 + 4])
  {

    goto LABEL_20;
  }

  v24 = v21[3];

  v25 = (v24 >> 1) - v22;
  v14 = __OFADD__(v18, v25);
  v23 = v18 + v25;
  if (v14)
  {
LABEL_46:
    __break(1u);
    return result;
  }

LABEL_22:
  v26 = v23 - v18;
  if (__OFSUB__(v23, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v27 = v5[2];
  if (v27)
  {
    if (v26 >= v6)
    {
      sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      result = (v18 + v6);
      if (!__OFADD__(v18, v6))
      {
        sub_10004CC10(result);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v26)
  {

    return sub_10004CCC8(v5, v27);
  }

  else
  {
  }
}

void *sub_10004CAF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&unk_1000BA190, &qword_1000832E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_10004CB78(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003F6C(&qword_1000BA130, &qword_100083280);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_10004CC10(void *result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v9 = result[2];
  v5 = __OFADD__(v9, v7);
  v10 = &v7[v9];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v10;

  v11 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_10004CCC8(void *result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = (v4 >> 1) - v3;
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_45;
  }

  v6 = result[2];
  v30 = v6;
  if (v6 == a2)
  {
LABEL_33:
  }

  if (v6 <= a2)
  {
    goto LABEL_46;
  }

  v34 = result;
  v7 = a2 + 1;
  v28 = result + 4;
  v8 = result[a2 + 4];
  result = swift_errorRetain();
  v27 = v2;
  while (!__OFADD__(v5, 1))
  {
    v35 = sub_10004D134(v5, v5 + 1, *v2, v2[1], v3, v4);
    v9 = sub_10004D2F4();
    sub_10004D310(&v35, v5, 0, v9);

    v3 = v2[2];
    v4 = v2[3];
    v10 = (v4 >> 1) - v3;
    if (__OFSUB__(v4 >> 1, v3))
    {
      goto LABEL_39;
    }

    v11 = v2[1];
    v33 = v4 >> 1;
    v32 = v11;
    if ((v4 & 1) == 0)
    {
      goto LABEL_13;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v12[2];
    if ((v11 + 8 * v3 + 8 * v10) != &v12[v13 + 4])
    {

LABEL_13:
      v14 = (v4 >> 1) - v3;
      v15 = v5 - v10;
      if (v5 < v10)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

    v16 = v3;
    v17 = v12[3];

    v18 = (v17 >> 1) - v13;
    v14 = v10 + v18;
    if (__OFADD__(v10, v18))
    {
      goto LABEL_44;
    }

    v3 = v16;
    v15 = v5 - v14;
    if (v5 < v14)
    {
LABEL_17:
      v19 = v3;
      v20 = 0;
      v29 = v5;
      v31 = v19;
      v21 = v32 + 8 * v5 + 8 * v19;
      while (1)
      {
        *(v21 + 8 * v20) = v8;
        if (v30 - v7 == v20)
        {
          v8 = 0;
          v7 = v30;
          v5 = v29 + v20 + 1;
          goto LABEL_24;
        }

        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v7 + v20 >= v34[2])
        {
          goto LABEL_37;
        }

        v8 = v28[v7 + v20];
        result = swift_errorRetain();
        ++v20;
        if (!(v15 + v20))
        {
          v7 += v20;
          v5 = v14;
LABEL_24:
          v2 = v27;
          v3 = v31;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      break;
    }

LABEL_25:
    v22 = __OFSUB__(v5, v10);
    v23 = v5 - v10;
    if (v22)
    {
      goto LABEL_40;
    }

    if (v23)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = _swiftEmptyArrayStorage;
      }

      v24 = result[2];
      v22 = __OFADD__(v24, v23);
      v25 = v24 + v23;
      if (v22)
      {
        goto LABEL_41;
      }

      result[2] = v25;

      v26 = v33 + v23;
      if (__OFADD__(v33, v23))
      {
        goto LABEL_42;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      v4 = v4 & 1 | (2 * v26);
      v2[3] = v4;
    }

    if (!v8)
    {
      goto LABEL_33;
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
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_10004CFA0(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 8 * v6 + 8 * v7) != &v9[v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_10004CAF4(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        v16 = v1[1] + 8 * v14;
        sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
        result = swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v14))
        {
          v17 = *(v5 + 16);
          v13 = __OFADD__(v14, v17);
          v18 = v14 + v17;
          if (!v13)
          {
            if (v18 >= v14)
            {
              if ((v18 & 0x8000000000000000) == 0)
              {
                v19 = (2 * v18) | 1;
                v20 = *v1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - 8 * v14;
                v1[2] = v14;
                v1[3] = v19;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10004D134(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == &v11[v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_10004CAF4(v6, v25);
}

uint64_t sub_10004D310(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v32 = v13;
  v33 = (v18 + 8 * a3);
  result = sub_10004D5F0(v7);
  v36 = v9 + 32;
  if (result)
  {
    v19 = result;
    v31 = v9;
    v20 = v4[2];
    v21 = (v4[1] + 8 * v20);
    v22 = &v21[8 * a2];
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    swift_arrayDestroy();
    if (v17 != v21 || v17 >= v22)
    {
      memmove(v17, v21, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v23 = &v22[8 * v34];
    if (v33 != v23 || v33 >= &v23[8 * v32])
    {
      memmove(v33, v23, 8 * v32);
    }

    *(v19 + 16);
    swift_arrayDestroy();
    *(v19 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v20 = v4[2];
    v24 = v20 + a2;
    if (__OFADD__(v20, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v24 < v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v24, v20))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v25 = v4[1];
    sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    swift_arrayInitWithCopy();
    result = (a4)(v36 + 8 * a2, a3);
    v26 = v24 + v34;
    if (__OFADD__(v24, v34))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return result;
    }

    swift_arrayInitWithCopy();
  }

  v28 = *v4;
  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v20))
  {
    goto LABEL_33;
  }

  v29 = *(v9 + 16);
  v11 = __OFADD__(v20, v29);
  v30 = v20 + v29;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v30 < v20)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v30 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v36 - 8 * v20;
  v4[2] = v20;
  v4[3] = (2 * v30) | 1;
}

void *sub_10004D5F0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *v1;
  v10 = v1[1] + 8 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  if ((v10 + 8 * v8) != &v11[v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v15 = (v14 >> 1) - v12;
  v16 = __OFADD__(v8, v15);
  v13 = v8 + v15;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v13 < a1)
  {
    return 0;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v17 = v10 - result - 25;
  if (v10 - result - 32 >= 0)
  {
    v17 = v10 - result - 32;
  }

  v16 = __OFADD__(v8, v17 >> 3);
  v6 = v8 + (v17 >> 3);
  if (v16)
  {
    goto LABEL_20;
  }

  v5 = result[2];
  if (v6 < v5)
  {
LABEL_21:
    v18 = result;
    sub_10004D750(v6, v5, 0);
    return v18;
  }

  return result;
}

unint64_t sub_10004D750(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10004D850(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t *, uint64_t))
{
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(a1, a2);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v14(0);
  (*(v10 + 16))(v13, v5, a1);
  return sub_10004F608(v13, v15, a1, a2, a4, a5);
}

uint64_t sub_10004D954()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100005A3C(v0 + 2, v1);
  v3 = *(v2 + 16);
  v4 = swift_unknownObjectRetain();
  v3(v8, v4, v1, v2);
  v5 = v9;
  if (v9)
  {
    v6 = v10;
    sub_100005A3C(v8, v9);
    v5 = sub_10004D850(v5, v6, type metadata accessor for AEAPolicyDeactivationRunner, type metadata accessor for AEAPolicyDeactivationRunner, sub_10004F76C);
    swift_unknownObjectRelease();
    sub_100003FB4(v8);
  }

  else
  {
    swift_unknownObjectRelease();
    sub_100019B28(v8, &qword_1000BA390, qword_100083400);
  }

  return v5;
}

uint64_t sub_10004DAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = v21 - v14;
  sub_10000859C(v5 + 16, v23);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  sub_100019D8C(v23, v21, &qword_1000BA388, &qword_1000833F0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = v21[1];
  *(v18 + 32) = v21[0];
  *(v18 + 48) = v19;
  *(v18 + 64) = v22;
  *(v18 + 72) = a1;
  *(v18 + 80) = a2;
  *(v18 + 88) = a3;
  *(v18 + 96) = sub_10004F494;
  *(v18 + 104) = v16;
  swift_unknownObjectRetain_n();
  swift_retain_n();

  sub_10006F6D0(0, 0, v15, &unk_1000833F8, v18);

  swift_unknownObjectRelease_n();

  return sub_100019B28(v23, &qword_1000BA388, &qword_1000833F0);
}

uint64_t sub_10004DCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v10;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  return _swift_task_switch(sub_10004DCF8, 0, 0);
}

uint64_t sub_10004DCF8()
{
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  sub_100005A3C(v1, v2);
  v4 = *(v3 + 24);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10004DE2C;
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[8];

  return (v11)(v0 + 2, v9, v7, v8, v2, v3);
}

uint64_t sub_10004DE2C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_10004E044;
  }

  else
  {
    v3 = sub_10004DF40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004DF40()
{
  v10 = v0;
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_100005A3C(v0 + 2, v0[5]);
    v3 = sub_10004D850(v1, v2, type metadata accessor for AEAPolicyDeactivationRunner, type metadata accessor for AEAPolicyDeactivationRunner, sub_10004F76C);
    sub_100003FB4(v0 + 2);
  }

  else
  {
    sub_100019B28((v0 + 2), &qword_1000BA390, qword_100083400);
    v3 = 0;
  }

  v4 = v0[11];
  v5 = v0[12];
  v8 = v3;
  v9 = 0;
  v4(&v8, &v9);
  swift_unknownObjectRelease();
  v6 = v0[1];

  return v6();
}

uint64_t sub_10004E044()
{
  v8 = v0;
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v6 = 0;
  v7 = v1;
  swift_errorRetain();
  v3(&v6, &v7);

  v4 = v0[1];

  return v4();
}

void sub_10004E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_10004E268(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_100005A3C(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 8);

  v4(v1, v3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10004E310(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  sub_100005A3C(a1 + 2, v1);
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);

  v5 = v4(v1, v3);

  return v5;
}

uint64_t sub_10004E57C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return _swift_task_switch(sub_10004E5F8, 0, 0);
}

uint64_t sub_10004E5F8()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_100005A3C(v1 + 2, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10004E720;

  return v8(v2, v3);
}

uint64_t sub_10004E720()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_10004E8B0;
  }

  else
  {
    v3 = sub_10004E834;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004E834()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004E8B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  v4 = _convertErrorToNSError(_:)();

  (*(v3 + 16))(v3, v4);

  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10004E974()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004E9B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001A778;

  return sub_10004E57C(v2, v3);
}

uint64_t sub_10004EA60(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001A778;

  return v7();
}

uint64_t sub_10004EB4C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001A778;

  return sub_10004EA60(v2, v3, v5);
}

uint64_t sub_10004EC0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000F618;

  return v8();
}

uint64_t sub_10004ECF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004ED34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001A778;

  return sub_10004EC0C(a1, v4, v5, v7);
}

uint64_t sub_10004EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  sub_100019D8C(a3, v26 - v12, &qword_1000BA380, &qword_100080750);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100019B28(v13, &qword_1000BA380, &qword_100080750);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = String.utf8CString.getter() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_100019B28(a3, &qword_1000BA380, &qword_100080750);

    return v24;
  }

LABEL_8:
  sub_100019B28(a3, &qword_1000BA380, &qword_100080750);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10004F0FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10004F1F4;

  return v7(a1);
}

uint64_t sub_10004F1F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004F2EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004F324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A778;

  return sub_10004F0FC(a1, v5);
}

uint64_t sub_10004F3DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F618;

  return sub_10004F0FC(a1, v5);
}

uint64_t sub_10004F494(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_10004F4C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[11];

  v4 = v0[13];

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10004F51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000F618;

  return sub_10004DCC8(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_10004F608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(uint64_t *, uint64_t))
{
  v13[3] = a3;
  v13[4] = a4;
  v10 = sub_100004F80(v13);
  (*(*(a3 - 8) + 32))(v10, a1, a3);
  a5(0);
  v11 = swift_allocObject();
  a6(v13, v11 + 16);
  return v11;
}

uint64_t sub_10004F6B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10004F6E8()
{
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_10004F770()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004F7E4()
{
  v1 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  __chkstk_darwin(v1, v3);
  v59 = v47 - v4;
  v5 = sub_100003F6C(&qword_1000BA4C0, &qword_100083480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v47 - v9;
  v48 = sub_100003F6C(&qword_1000BA4C8, &qword_100083488);
  v50 = *(v48 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v48, v12);
  v14 = v47 - v13;
  v49 = sub_100003F6C(&qword_1000BA4D0, &qword_100083490);
  v51 = *(v49 - 8);
  v15 = *(v51 + 64);
  __chkstk_darwin(v49, v16);
  v18 = v47 - v17;
  v53 = sub_100003F6C(&qword_1000BA4D8, &qword_100083498);
  v19 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53, v20);
  v47[1] = v47 - v21;
  v22 = sub_100003F6C(&qword_1000BA4E0, &qword_1000834A0);
  v23 = *(v22 - 8);
  v54 = v22;
  v55 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = v47 - v26;
  v58 = sub_100003F6C(&qword_1000BA4E8, &qword_1000834A8);
  v60 = *(v58 - 8);
  v28 = *(v60 + 64);
  __chkstk_darwin(v58, v29);
  v52 = v47 - v30;
  v31 = sub_100003F6C(&qword_1000BA4F0, &qword_1000834B0);
  v32 = *(v31 - 8);
  v56 = v31;
  v57 = v32;
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  v36 = v47 - v35;
  swift_beginAccess();
  sub_100003F6C(&qword_1000BA4F8, &qword_1000834B8);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100004EE0(&qword_1000BA500, &qword_1000BA4C0, &qword_100083480);
  sub_100053DF0();
  Publisher<>.removeDuplicates()();
  (*(v6 + 8))(v10, v5);
  sub_100003F6C(&qword_1000B9178, &qword_100081BC0);
  v47[2] = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_100004EE0(&qword_1000BA510, &qword_1000BA4C8, &qword_100083488);
  v37 = v48;
  Publisher.map<A>(_:)();
  (*(v50 + 8))(v14, v37);
  sub_100003F6C(&qword_1000BA518, &unk_1000834C0);
  v38 = v49;
  Publishers.Map.map<A>(_:)();
  (*(v51 + 8))(v18, v38);
  (*(v61 + 16))(v59, v0 + OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses, v62);
  sub_100004EE0(&qword_1000BA520, &qword_1000BA4D8, &qword_100083498);
  sub_100004EE0(&qword_1000BA528, &qword_1000B7400, &unk_10007FA10);
  Publishers.CombineLatest.init(_:_:)();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100053EAC;
  *(v40 + 24) = v39;
  sub_100003F6C(&qword_1000B7418, &qword_100081AB0);
  sub_100004EE0(&qword_1000BA530, &qword_1000BA4E0, &qword_1000834A0);
  v41 = v52;
  v42 = v54;
  Publisher.map<A>(_:)();

  (*(v55 + 8))(v27, v42);
  sub_100004EE0(&qword_1000BA538, &qword_1000BA4E8, &qword_1000834A8);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0);
  v43 = v58;
  Publisher<>.removeDuplicates()();
  (*(v60 + 8))(v41, v43);
  sub_100004EE0(&qword_1000BA540, &qword_1000BA4F0, &qword_1000834B0);
  v44 = v56;
  v45 = Publisher.eraseToAnyPublisher()();
  (*(v57 + 8))(v36, v44);
  return v45;
}

void *sub_100050030(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return &_swiftEmptySetSingleton;
  }

  v4 = sub_100050784(a1, a2);

  return v4;
}

void sub_1000500B8()
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
    _os_log_impl(&_mh_execute_header, oslog, v1, "Participant configuration did change", v2, 2u);
  }
}

uint64_t sub_1000501A0@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v2 = *a1;
  v66 = _swiftEmptyDictionarySingleton;
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v59 = v2;
  while (v6)
  {
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v8 << 6);
    v11 = *(v2 + 56);
    v12 = *(v2 + 48) + 40 * v10;
    v13 = *(v12 + 16);
    v67 = *v12;
    v68 = v13;
    v69 = *(v12 + 32);
    v14 = v67;
    v70[0] = v13;
    v15 = (v11 + 16 * v10);
    v60 = *v15;
    v61 = v15[1];
    v16 = *(v15 + 1);
    v17 = v66;
    v18 = v66[2];

    v62 = v16;
    if (!v18)
    {
      sub_100053F24(v70, v65);

LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v17;
      v21 = sub_100020DA8(v14, *(&v14 + 1));
      v23 = v17[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_40;
      }

      v27 = v22;
      if (v17[3] >= v26)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v32 = v21;
        sub_10006E40C();
        v21 = v32;
        v29 = v65[0];
        if ((v27 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        v30 = v29[7];
        v31 = *(v30 + 8 * v21);
        *(v30 + 8 * v21) = _swiftEmptyDictionarySingleton;
      }

      else
      {
        sub_10006D150(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_100020DA8(v14, *(&v14 + 1));
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_44;
        }

LABEL_20:
        v29 = v65[0];
        if (v27)
        {
          goto LABEL_21;
        }

LABEL_23:
        v29[(v21 >> 6) + 8] |= 1 << v21;
        *(v29[6] + 16 * v21) = v14;
        *(v29[7] + 8 * v21) = _swiftEmptyDictionarySingleton;
        v33 = v29[2];
        v25 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v25)
        {
          goto LABEL_42;
        }

        v29[2] = v34;
      }

      v66 = v29;
      goto LABEL_26;
    }

    sub_100053F24(v70, v65);

    sub_100020DA8(v14, *(&v14 + 1));
    if ((v19 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:

    v36 = sub_1000506AC(v65, v14, *(&v14 + 1));
    if (!*v35)
    {

      (v36)(v65, 0);
      goto LABEL_5;
    }

    v37 = v35;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *v37;
    v39 = v64;
    *v37 = 0x8000000000000000;
    v40 = sub_100020EB0(&v67);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v25 = __OFADD__(v42, v43);
    v44 = v42 + v43;
    if (v25)
    {
      goto LABEL_41;
    }

    v45 = v41;
    if (v39[3] < v44)
    {
      sub_10006CE1C(v44, v38);
      v40 = sub_100020EB0(&v67);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_45;
      }

LABEL_32:
      v47 = v64;
      if ((v45 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (v38)
    {
      goto LABEL_32;
    }

    v50 = v40;
    sub_10006E25C();
    v40 = v50;
    v47 = v64;
    if ((v45 & 1) == 0)
    {
LABEL_35:
      v47[(v40 >> 6) + 8] |= 1 << v40;
      v51 = v47[6] + 40 * v40;
      v52 = v68;
      *v51 = v67;
      *(v51 + 16) = v52;
      *(v51 + 32) = v69;
      v53 = v47[7] + 16 * v40;
      *v53 = v60;
      *(v53 + 1) = v61;
      *(v53 + 8) = v62;
      v54 = v47[2];
      v25 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v25)
      {
        goto LABEL_43;
      }

      v47[2] = v55;

      sub_100053F24(v70, v63);
      goto LABEL_37;
    }

LABEL_33:
    v48 = v47[7] + 16 * v40;
    v49 = *(v48 + 8);
    *v48 = v60;
    *(v48 + 1) = v61;
    *(v48 + 8) = v62;

LABEL_37:
    v56 = *v37;
    *v37 = v47;

    (v36)(v65, 0);
    v2 = v59;
LABEL_5:
    v6 &= v6 - 1;

    sub_100019B28(v70, &qword_1000BA548, &qword_1000834D0);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      *a2 = v66;
      return result;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t (*sub_100050624(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_10005370C(v6, a2, a3);
  return sub_10005403C;
}

uint64_t (*sub_1000506AC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000537B8(v6, a2, a3);
  return sub_100050734;
}

void sub_100050738(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100050784(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v3 = type metadata accessor for AEAParticipant.Process(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  for (i = _swiftEmptyArrayStorage; v11; *(v20 + 2) = v21)
  {
LABEL_10:
    while (1)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_100004FE4(*(a2 + 48) + *(v4 + 72) * (v17 | (v14 << 6)), v8);
      sub_1000509D8(v8, v25, &v26);
      sub_100053D44(v8);
      if (*(&v27 + 1))
      {
        break;
      }

      result = sub_100019B28(&v26, &qword_1000BBFF0, &qword_100081B30);
      if (!v11)
      {
        goto LABEL_6;
      }
    }

    v30 = v26;
    v31 = v27;
    v32 = v28;
    v33 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100072970(0, *(i + 2) + 1, 1, i);
      i = result;
    }

    v19 = *(i + 2);
    v18 = *(i + 3);
    if (v19 >= v18 >> 1)
    {
      result = sub_100072970((v18 > 1), v19 + 1, 1, i);
      i = result;
    }

    *(i + 2) = v19 + 1;
    v20 = &i[56 * v19];
    v21 = v30;
    v22 = v31;
    v23 = v32;
    *(v20 + 10) = v33;
    *(v20 + 3) = v22;
    *(v20 + 4) = v23;
  }

LABEL_6:
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      v24 = sub_10004C3EC(i);

      return v24;
    }

    v11 = *(a2 + 56 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000509D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = result, v41 = *(result + 16), v42 = *(result + 8), result = sub_100020DA8(v42, v41), (v6 & 1) != 0))
  {
    v7 = 0;
    v8 = *(*(a2 + 56) + 8 * result);
    v9 = 1 << *(v8 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v8 + 64);
    v12 = (v9 + 63) >> 6;
    v43 = v5;
    while (v11)
    {
      v13 = v7;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      if (*(*(v8 + 48) + 40 * (v14 | (v13 << 6)) + 32) == 1)
      {
        v15 = *(v5 + *(type metadata accessor for AEAParticipant.Process(0) + 24));

        if ((v15 & 1) == 0)
        {
          v16 = sub_100052DC4(v8);

          v8 = v16;
        }

LABEL_17:
        v38 = a3;
        v17 = *(v8 + 16);
        if (v17)
        {
          v18 = sub_10004CB78(*(v8 + 16), 0);
          v19 = sub_10007373C(&v45, (v18 + 4), v17, v8);

          sub_100019F14();
          if (v19 != v17)
          {
            __break(1u);
            goto LABEL_20;
          }
        }

        else
        {
LABEL_20:
          v18 = _swiftEmptyArrayStorage;
        }

        *&v45 = v18;
        sub_100052170(&v45);

        v20 = v45;
        v39 = *(v45 + 16);
        if (v39)
        {
          v21 = 0;
          v22 = 0;
          v40 = v45;
          do
          {
            if (v22 >= *(v20 + 16))
            {
              goto LABEL_45;
            }

            v23 = v20 + v21;
            v24 = *(v20 + v21 + 32);
            v25 = *(v20 + v21 + 40);
            v27 = *(v20 + v21 + 48);
            v26 = *(v20 + v21 + 56);
            v28 = *(v20 + v21 + 80);
            v29 = *(v20 + v21 + 73);
            v30 = *(v20 + v21 + 72);
            v44 = *(v23 + 64);
            v31 = type metadata accessor for AEAParticipant.Process(0);
            *(&v46 + 1) = v31;
            *&v47 = sub_100053FF0(&qword_1000B7428, type metadata accessor for AEAParticipant.Process);
            v32 = sub_100004F80(&v45);
            sub_100004FE4(v43, v32);
            BYTE8(v47) = v30;
            BYTE9(v47) = v29;
            v48 = v28;
            if ((v44 & 1) == 0)
            {
              goto LABEL_41;
            }

            if (v24 == v42 && v25 == v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (!v26)
              {
LABEL_41:

LABEL_43:

                v37 = v46;
                *v38 = v45;
                *(v38 + 16) = v37;
                *(v38 + 32) = v47;
                *(v38 + 48) = v48;
                return result;
              }

              v33 = v43 + *(v31 + 24);
              v34 = *(v33 + 16);
              if (v34)
              {
                if (v27 == *(v33 + 8) && v26 == v34)
                {

                  goto LABEL_43;
                }

                v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v20 = v40;
                if (v36)
                {
                  goto LABEL_43;
                }
              }

              else
              {

                v20 = v40;
              }

              sub_100030C2C(&v45);
            }

            else
            {

              sub_100030C2C(&v45);

              v20 = v40;
            }

            ++v22;
            v21 += 56;
          }

          while (v39 != v22);
        }

        *(v38 + 48) = 0;
        *(v38 + 16) = 0u;
        *(v38 + 32) = 0u;
        *v38 = 0u;
        return result;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        goto LABEL_17;
      }

      v11 = *(v8 + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);

    __break(1u);
  }

  else
  {
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_100050E0C()
{
  v1 = OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource_candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15assessmentagent33AEAConfigurationParticipantSource__configurationsByApplicationDescriptor;
  v4 = sub_100003F6C(&qword_1000BA4F8, &qword_1000834B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEAConfigurationParticipantSource()
{
  result = qword_1000BA3D0;
  if (!qword_1000BA3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100050F54()
{
  sub_100051074(319, &qword_1000B7358, &unk_1000B7360, &unk_100081AA0, &type metadata accessor for Published.Publisher);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100051074(319, &unk_1000BA3E0, &qword_1000B9178, &qword_100081BC0, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100051074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004B50(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000510FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000512AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + v3);
        v20 = (v18 + v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10005145C(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = _HashTable.previousHole(before:)();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID);
      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 16 * a1);
          v34 = (v32 + 16 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_10005177C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 16 * v6);
      v14 = *v13;
      v15 = v13[1];
      Hasher.init(_seed:)();
      sub_10001C9CC(v14, v15);
      Data.hash(into:)();
      v16 = Hasher._finalize()();
      result = sub_100005A80(v14, v15);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (v3 != v6 || v22 >= v23 + 56)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v10;
          *(v22 + 32) = v11;
          *v22 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005194C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100051AFC(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = _HashTable.previousHole(before:)();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_100053FF0(&qword_1000B88A0, &type metadata accessor for UUID);
      v27 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

_OWORD *sub_100051E1C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100010B20(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_100051E88(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_100010B20(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_100051F04(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_100051F4C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100051F94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for UUID();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_100052054(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1000520B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

Swift::Int sub_100052170(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100053D30(v2);
  }

  v3 = v2[2];
  v29[0] = (v2 + 4);
  v29[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if ((*(v12 + 56) != 1 || *v12 != 0) && (!v12[6] || *(v12 - 1) != 0))
          {
            break;
          }

          v13 = v12 - 4;
          v14 = *(v12 + 3);
          v15 = *(v12 + 5);
          v16 = *(v12 + 7);
          v28 = v12[9];
          v26 = v15;
          v27 = v16;
          v25 = v14;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 5) = v17;
          *(v12 + 7) = *v12;
          v12[9] = v12[2];
          v18 = v28;
          v19 = v27;
          v20 = v25;
          v13[1] = v26;
          *v12 = v19;
          v12[2] = v18;
          *v13 = v20;
          v12 -= 7;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 7;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_100003F6C(&qword_1000BA138, &qword_100083288);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v25 = v7 + 4;
    *(&v25 + 1) = v6;
    sub_100052324(&v25, v24, v29, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100052324(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v102 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_116:
    v102 = *v102;
    if (!v102)
    {
      goto LABEL_154;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_118;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v5)
    {
      ++v7;
      goto LABEL_38;
    }

    v11 = *a3 + 56 * v10;
    v12 = *(v11 + 32);
    v13 = *a3 + 56 * v7;
    if (v12 == 1 && *(v13 + 32) == 0)
    {
      v17 = 1;
    }

    else
    {
      v15 = *(v13 + 24);
      if (*(v11 + 24))
      {
        v16 = v15 == 0;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
    }

    v7 += 2;
    if (v9 + 2 < v5)
    {
      v10 = v5 - 1;
      v18 = (*a3 + 56 * v9 + 144);
      do
      {
        v19 = v12;
        LOBYTE(v12) = *v18;
        if ((v19 & 1) == 0 && *v18)
        {
          if ((v17 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (*(v18 - 1))
        {
          if (((v17 ^ (*(v18 - 8) != 0)) & 1) == 0)
          {
            v10 = v7 - 1;
            if ((v17 & 1) == 0)
            {
              goto LABEL_38;
            }

LABEL_30:
            if (v7 >= v9)
            {
              if (v9 <= v10)
              {
                v20 = 56 * v7 - 56;
                v21 = 56 * v9;
                v22 = v7;
                v23 = v9;
                do
                {
                  if (v23 != --v22)
                  {
                    v24 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_151;
                    }

                    v25 = (v24 + v21);
                    v26 = *(v24 + v21 + 48);
                    v27 = (v24 + v20);
                    v29 = v25[1];
                    v28 = v25[2];
                    v30 = *v25;
                    v32 = v27[1];
                    v31 = v27[2];
                    v33 = *v27;
                    *(v25 + 6) = *(v27 + 6);
                    v25[1] = v32;
                    v25[2] = v31;
                    *v25 = v33;
                    *v27 = v30;
                    v27[1] = v29;
                    v27[2] = v28;
                    *(v27 + 6) = v26;
                  }

                  ++v23;
                  v20 -= 56;
                  v21 += 56;
                }

                while (v23 < v22);
                v5 = a3[1];
              }

              goto LABEL_38;
            }

LABEL_147:
            __break(1u);
LABEL_148:
            result = sub_100052CAC(v8);
            v8 = result;
LABEL_118:
            v94 = v8 + 16;
            v95 = *(v8 + 2);
            if (v95 >= 2)
            {
              while (*a3)
              {
                v96 = &v8[16 * v95];
                v97 = *v96;
                v98 = &v94[2 * v95];
                v99 = v98[1];
                sub_100052978((*a3 + 56 * *v96), (*a3 + 56 * *v98), *a3 + 56 * v99, v102);
                if (v4)
                {
                }

                if (v99 < v97)
                {
                  goto LABEL_140;
                }

                if (v95 - 2 >= *v94)
                {
                  goto LABEL_141;
                }

                *v96 = v97;
                *(v96 + 1) = v99;
                v100 = *v94 - v95;
                if (*v94 < v95)
                {
                  goto LABEL_142;
                }

                v95 = *v94 - 1;
                result = memmove(v98, v98 + 2, 16 * v100);
                *v94 = v95;
                if (v95 <= 1)
                {
                }
              }

              goto LABEL_152;
            }
          }
        }

        else if (v17)
        {
          v10 = v7 - 1;
          goto LABEL_30;
        }

        v18 += 56;
        ++v7;
      }

      while (v5 != v7);
      v7 = v5;
    }

    if (v17)
    {
      goto LABEL_30;
    }

LABEL_38:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_144;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_145;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_63:
    if (v7 < v9)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100052CC0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_100052CC0((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v102;
    if (!*v102)
    {
      goto LABEL_153;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_83:
          if (v56)
          {
            goto LABEL_131;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_134;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_137;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_138;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_97:
        if (v74)
        {
          goto LABEL_133;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_136;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_104:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (!*a3)
        {
          goto LABEL_150;
        }

        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_100052978((*a3 + 56 * v91), (*a3 + 56 * *&v8[16 * v52 + 32]), *a3 + 56 * v92, v51);
        if (v4)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100052CAC(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_128;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_100052C20(v52);
        v49 = *(v8 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_129;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_130;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_132;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_135;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_139;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_83;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_116;
    }
  }

  v34 = *a3;
  v35 = *a3 + 56 * v7 - 56;
  v36 = v9 - v7;
LABEL_48:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    if ((*(v38 + 88) != 1 || *(v38 + 32) != 0) && (!*(v38 + 80) || *(v38 + 24) != 0))
    {
LABEL_47:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_48;
      }

      v7 = v5;
      goto LABEL_63;
    }

    if (!v34)
    {
      break;
    }

    v41 = *(v38 + 104);
    v42 = *(v38 + 88);
    v43 = *(v38 + 56);
    v44 = *(v38 + 16);
    *(v38 + 56) = *v38;
    v45 = *(v38 + 72);
    *(v38 + 72) = v44;
    *(v38 + 88) = *(v38 + 32);
    *(v38 + 104) = *(v38 + 48);
    *v38 = v43;
    *(v38 + 16) = v45;
    *(v38 + 32) = v42;
    *(v38 + 48) = v41;
    v38 -= 56;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_47;
    }
  }

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
  return result;
}