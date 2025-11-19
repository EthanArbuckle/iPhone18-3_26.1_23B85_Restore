uint64_t sub_10005EFC8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005F0C0;

  return v7(a1);
}

uint64_t sub_10005F0C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10005F1B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000A45C(&unk_1000943F0, &unk_100074FD0);
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

double sub_10005F2C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000327AC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10005F994();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_10005F648(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10005F378(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A45C(&qword_1000943E8, &qword_100074FC8);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_10000CB30(v28, &v42);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_10005F648(uint64_t result, uint64_t a2)
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
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10005F804(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005F378(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10005F994();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1000613D8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_10005F994()
{
  v1 = v0;
  sub_10000A45C(&qword_1000943E8, &qword_100074FC8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_10000CB30(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005FB68()
{
  v1 = (*((swift_isaMask & **(v0[17] + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70))();
  if (v1)
  {
    v2._countAndFlagsBits = (*(*v1 + 392))();
    String.append(_:)(v2);

    sub_10000A45C(&unk_100093A50, &unk_100073030);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100072BE0;
    v0[15] = 1920226159;
    v0[16] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 10;
    *(inited + 80) = 0xE100000000000000;
    v4 = sub_100017EE0(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_10005FD70();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

unint64_t sub_10005FD70()
{
  result = qword_100094148;
  if (!qword_100094148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094148);
  }

  return result;
}

unint64_t sub_10005FDC4()
{
  result = qword_100094170;
  if (!qword_100094170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094170);
  }

  return result;
}

uint64_t sub_10005FE18(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_10005FE50(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = [objc_allocWithZone(CNContactStore) init];
  sub_10000A45C(&unk_100092D10, &unk_100072C00);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100072BE0;
  *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 40) = v12;
  v39 = v11;
  sub_10000A45C(&qword_100094180, &qword_100074290);
  sub_10000A45C(&qword_1000941E8, &qword_100074AD0);
  if (!swift_dynamicCast())
  {
    v17 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_5;
  }

  sub_10000A45C(&unk_1000941F0, &unk_100074AD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = 0;
  v14 = [v10 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v39];

  if (v14)
  {
    v15 = v39;
    v16 = [v14 givenName];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

LABEL_5:
    v20 = sub_1000393CC();
    (*(v3 + 16))(v7, v20, v2);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38 = v2;
      v25 = v10;
      v26 = a1;
      v27 = v24;
      v39 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1000034B8(v17, v19, &v39);
      _os_log_impl(&_mh_execute_header, v21, v22, "Users first name returned from Bluetoothuserd: (%s)", v23, 0xCu);
      sub_1000036EC(v27);
      a1 = v26;
      v10 = v25;

      (*(v3 + 8))(v7, v38);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v28 = String._bridgeToObjectiveC()();
    (*(a1 + 16))(a1, v28, 0);

    v10 = v28;
    goto LABEL_9;
  }

  v29 = v39;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v30 = sub_1000393CC();
  (*(v3 + 16))(v9, v30, v2);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    swift_errorRetain();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v35;
    *v34 = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "Error trying to access contact store for users first name %@", v33, 0xCu);
    sub_100006CAC(v34, &qword_100093F70, &qword_1000730D0);
  }

  (*(v3 + 8))(v9, v2);
  swift_errorRetain();
  v36 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v36);

LABEL_9:
}

uint64_t sub_100060388(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 72) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 48) = a1;
  return _swift_task_switch(sub_1000603B0, 0, 0);
}

uint64_t sub_1000603B0()
{
  v1 = *(v0 + 72);
  v2 = v1 != 8;
  v3 = v1 == 8;
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  sub_100003690(*(v0 + 64), v0 + 16);
  sub_1000173C8(2 * v2, v5, v4, v0 + 16);
  sub_100006CAC(v0 + 16, &qword_100092CB8, &qword_100072C40);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1000173C8(2 * v3, v5, v4, v0 + 16);
  sub_100006CAC(v0 + 16, &qword_100092CB8, &qword_100072C40);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_10006049C()
{
  result = qword_100094200;
  if (!qword_100094200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094200);
  }

  return result;
}

void sub_100060524()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(v1);
  }
}

unint64_t sub_1000605B8()
{
  result = qword_100094240;
  if (!qword_100094240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094240);
  }

  return result;
}

uint64_t sub_100060750()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005CC98(v2, v3, v4);
}

uint64_t sub_100060804()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000615D8;

  return sub_10005EAFC(v2, v3, v5);
}

uint64_t sub_1000608C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000615D8;

  return sub_10005EBE4(a1, v4, v5, v7);
}

uint64_t sub_100060990(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000615D8;

  return sub_10005EFC8(a1, v5);
}

uint64_t sub_100060A48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10005C038;

  return sub_10005EFC8(a1, v5);
}

uint64_t sub_100060B00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000615D8;

  return sub_10005C2D0(v2, v3, v4, v6, v5);
}

uint64_t sub_100060BC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10005C038;

  return sub_10005BDC0(v2, v3, v5, v4);
}

uint64_t sub_100060C8C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005B088(v2, v4, v3);
}

uint64_t sub_100060D40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_10005A97C(v2, v3);
}

uint64_t sub_100060DEC()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100060E2C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_10005A2F0(v2, v4, v3);
}

uint64_t sub_100060EE0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_100059C1C(v2, v3);
}

uint64_t sub_100060F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100059558(v2, v3, v4);
}

uint64_t sub_100061040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100058594(v2, v3, v4);
}

uint64_t sub_1000610F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100057BA4(v2, v3, v4);
}

uint64_t sub_1000611A8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1000611F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_10005733C(v2, v3);
}

uint64_t sub_10006129C()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000612E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000615D8;

  return sub_100056DC8(v2, v3, v4);
}

uint64_t sub_100061398()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100061434()
{
  result = qword_1000943B0;
  if (!qword_1000943B0)
  {
    sub_100004890(255, &qword_1000943A8, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000943B0);
  }

  return result;
}

unint64_t sub_10006149C()
{
  result = qword_1000943C8;
  if (!qword_1000943C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000943C8);
  }

  return result;
}

uint64_t sub_1000614F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    sub_100061434();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100061558(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C9B0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_100061610()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v4 = [v3 Wireless];
    swift_unknownObjectRelease();
    v5 = [v4 BluetoothNearbyDevice];
    swift_unknownObjectRelease();
    v6 = *(v0 + 24);
    *(v0 + 24) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_1000616DC(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  return _objc_release_x1();
}

void (*sub_1000616E8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100061610();
  return sub_100061730;
}

void sub_100061730(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id sub_100061740()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[4];
  }

  else
  {
    v3 = (*(*v0 + 120))();
    v4 = [v3 source];

    v5 = v0[4];
    v0[4] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1000617D8(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return _objc_release_x1();
}

void (*sub_1000617E4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100061740();
  return sub_10006182C;
}

void sub_10006182C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

id sub_10006183C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v4 = [v3 Wireless];
    swift_unknownObjectRelease();
    v5 = [v4 BluetoothUseCase];
    swift_unknownObjectRelease();
    v6 = *(v0 + 40);
    *(v0 + 40) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100061908(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
  return _objc_release_x1();
}

void (*sub_100061914(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10006183C();
  return sub_10006195C;
}

void sub_10006195C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

void (*sub_10006196C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_100002764();
  return sub_1000138D4;
}

uint64_t sub_1000619B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v15 = Bool._bridgeToObjectiveC()().super.super.isa;
    LODWORD(v36) = a6;
    v16 = v8;
    v17 = UInt32._bridgeToObjectiveC()().super.super.isa;
    v18 = objc_allocWithZone(BMDeviceBluetoothNearbyDevice);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithInitiator:isa localIdentifier:v19 starting:v15 useCase:v17];

    v21 = (*(*v13 + 144))();
    [v21 sendEvent:v20];

    v22 = sub_1000021DC();
    (*(v16 + 16))(v11, v22, v7);
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v16;
      v29 = v28;
      v37 = v28;
      *v26 = 136315394;
      sub_100002834(v36);
      v30 = String.init(cString:)();
      v32 = sub_1000034B8(v30, v31, &v37);
      v36 = v7;
      v33 = v32;

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v34 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Send nearby device event %s for %@", v26, 0x16u);
      sub_100003738(v27);

      sub_1000036EC(v29);

      return (*(v35 + 8))(v11, v36);
    }

    else
    {

      return (*(v16 + 8))(v11, v7);
    }
  }

  return result;
}

uint64_t sub_100061D18()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100061D70()
{
  v0 = swift_allocObject();
  sub_100061DA8();
  return v0;
}

uint64_t sub_100061DA8()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = sub_10000A8F8();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_1000023BC(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  return v0;
}

void type metadata accessor for CBUseCase()
{
  if (!qword_100094660)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100094660);
    }
  }
}

Swift::Int sub_10006207C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100062100()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10006215C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10008C418, *a1);

  *a2 = v3 != 0;
  return result;
}

void *sub_1000621E8()
{
  type metadata accessor for SystemNotificationManager();
  v0 = swift_allocObject();
  result = sub_100062344();
  qword_100098B48 = v0;
  return result;
}

uint64_t *sub_100062224()
{
  if (qword_100098630 != -1)
  {
    swift_once();
  }

  return &qword_100098B48;
}

uint64_t sub_100062274()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1000622AC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *sub_100062344()
{
  v1 = v0;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v17 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000A8F8();
  v16[1] = "dedPHY";
  v16[2] = v10;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_1000931A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000A45C(&unk_100092CD0, &unk_100072C60);
  sub_10000FA34(&qword_1000931B0, &unk_100092CD0, &unk_100072C60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[2] = v11;
  v1[3] = &_swiftEmptyArrayStorage;
  v1[4] = &_swiftEmptyDictionarySingleton;
  v22 = sub_100065900;
  v23 = v1;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10000AC24;
  v21 = &unk_10008C620;
  v12 = _Block_copy(&aBlock);

  xpc_set_event_stream_handler("com.apple.alarm", v11, v12);
  _Block_release(v12);
  v13 = v1[2];
  v22 = sub_100065908;
  v23 = v1;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10000AC24;
  v21 = &unk_10008C648;
  v14 = _Block_copy(&aBlock);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v13, v14);
  _Block_release(v14);
  return v1;
}

uint64_t sub_1000626EC(uint64_t a1, uint64_t a2)
{
  Date.timeIntervalSince1970.getter();
  v5 = *(*v2 + 168);

  return v5(a1, a2);
}

xpc_object_t sub_10006275C(uint64_t a1, unint64_t a2, double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000392CC();
  (*(v7 + 16))(v10, v11, v6);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000034B8(a1, a2, &v19);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a3;
    _os_log_impl(&_mh_execute_header, v12, v13, "Scheduling alarm: %s for %f", v14, 0x16u);
    sub_1000036EC(v15);
  }

  (*(v7 + 8))(v10, v6);
  result = xpc_dictionary_create(0, 0, 0);
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = 1000000000 * a3;
  if ((a3 * 1000000000) >> 64 == v17 >> 63)
  {
    xpc_dictionary_set_date(result, "Date", v17);
    String.utf8CString.getter();
    swift_unknownObjectRetain();
    xpc_set_event();
    swift_unknownObjectRelease_n();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1000629FC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000392CC();
  (*(v5 + 16))(v8, v9, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1000034B8(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "Canceling alarm: %s", v12, 0xCu);
    sub_1000036EC(v13);
  }

  (*(v5 + 8))(v8, v4);
  String.utf8CString.getter();
  xpc_set_event();
}

void sub_100062BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SystemNotificationSource();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100012664(a3, v15);
  v16 = (*(v8 + 48))(v15, 2, v7);
  if (v16)
  {
    if (v16 == 1)
    {
      out_token = -1;
      v17 = v3[2];
      v18 = swift_allocObject();
      v18[2] = v3;
      v18[3] = a1;
      v18[4] = a2;
      v35 = sub_100064D24;
      v36 = v18;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10000C72C;
      v34 = &unk_10008C4F0;
      v19 = _Block_copy(&aBlock);

      v20 = String.utf8CString.getter();
      notify_register_dispatch((v20 + 32), &out_token, v17, v19);

      _Block_release(v19);
      if (!out_token)
      {
        swift_beginAccess();
        v21 = v3[4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = v3[4];
        v3[4] = 0x8000000000000000;
        sub_100064FD0(0, a1, a2, isUniquelyReferenced_nonNull_native);
        v3[4] = v29;
        swift_endAccess();
      }
    }

    else
    {
      v23 = [objc_opt_self() defaultCenter];
      v24 = String._bridgeToObjectiveC()();
      v25 = swift_allocObject();
      v25[2] = v3;
      v25[3] = a1;
      v25[4] = a2;
      v35 = sub_100064CD8;
      v36 = v25;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1000636EC;
      v34 = &unk_10008C4A0;
      v26 = _Block_copy(&aBlock);

      v27 = [v23 addObserverForName:v24 object:v3 queue:0 usingBlock:v26];
      _Block_release(v26);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    (*(*v3 + 160))(a1, a2, v11);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_100063014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SystemNotificationSource();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v15 = &v26[-1] - v14;
  v16 = (*(*a1 + 104))(v13);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v11 + 80);
    v25 = v16;
    v19 = v16 + ((v18 + 32) & ~v18);
    v20 = *(v11 + 72);
    do
    {
      sub_100065160(v19, v15);
      sub_10000FA7C(v15, v26);
      sub_1000654B0(v15);
      v21 = v27;
      v22 = v28;
      sub_1000078C8(v26, v27);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 56))(v9, 1, 2, v23);
      (*(v22 + 8))(v9, a2, a3, v21, v22);
      sub_1000126C8(v9);
      sub_1000036EC(v26);
      v19 += v20;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_100063254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v50 = a1;
  v6 = type metadata accessor for SystemNotificationSource();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v49 = *(v10 - 8);
  v11 = *(v49 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v45 - v12;
  v14 = type metadata accessor for Notification();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000392CC();
  v51 = v20;
  v52 = v19;
  (*(v20 + 16))(v23, v24, v19);
  v25 = *(v15 + 16);
  v26 = v50;
  v50 = v14;
  v25(v18, v26, v14);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v46 = v29;
    v48 = swift_slowAlloc();
    v54[0] = v48;
    *v29 = 136315138;
    v47 = v28;
    v30 = Notification.name.getter();
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    (*(v15 + 8))(v18, v50);
    v33 = sub_1000034B8(v45, v32, v54);

    v34 = v46;
    *(v46 + 1) = v33;
    _os_log_impl(&_mh_execute_header, v27, v47, "Local notification received: %s", v34, 0xCu);
    sub_1000036EC(v48);
  }

  else
  {

    (*(v15 + 8))(v18, v50);
  }

  v35 = (*(v51 + 8))(v23, v52);
  v36 = (*(*v53 + 104))(v35);
  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = *(v49 + 80);
    v53 = v36;
    v39 = v36 + ((v38 + 32) & ~v38);
    v40 = *(v49 + 72);
    do
    {
      sub_100065160(v39, v13);
      sub_10000FA7C(v13, v54);
      sub_1000654B0(v13);
      v41 = v55;
      v42 = v56;
      sub_1000078C8(v54, v55);
      v43 = type metadata accessor for Date();
      (*(*(v43 - 8) + 56))(v9, 2, 2, v43);
      (*(v42 + 8))(v9, a3, a4, v41, v42);
      sub_1000126C8(v9);
      sub_1000036EC(v54);
      v39 += v40;
      --v37;
    }

    while (v37);
  }
}

uint64_t sub_1000636EC(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1000637E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(*v2 + 176))();
  swift_beginAccess();
  v6 = v2[4];
  if (*(v6 + 16))
  {

    v7 = sub_1000327AC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 4 * v7);

      notify_cancel(v9);
    }

    else
    {
    }
  }

  v10 = [objc_opt_self() defaultCenter];
  [v10 removeObserver:v3];
}

const char *sub_1000638D0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v19 = String.init(cString:)();
    v21 = v20;
    v22 = sub_1000392CC();
    v23 = *(v14 + 16);
    v41 = v13;
    v23(v17, v22, v13);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v9;
      v27 = v26;
      v28 = swift_slowAlloc();
      v40 = a2;
      v29 = v28;
      v42[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000034B8(v19, v21, v42);
      _os_log_impl(&_mh_execute_header, v24, v25, "On xpc event stream, com.apple.notifyd.matching, notification %s", v27, 0xCu);
      sub_1000036EC(v29);
      a2 = v40;

      v9 = v39;
    }

    v30 = (*(v14 + 8))(v17, v41);
    v31 = (*(*a2 + 104))(v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v9 + 80);
      v41 = v31;
      v34 = v31 + ((v33 + 32) & ~v33);
      v35 = *(v9 + 72);
      do
      {
        sub_100065160(v34, v12);
        sub_10000FA7C(v12, v42);
        sub_1000654B0(v12);
        v36 = v43;
        v37 = v44;
        sub_1000078C8(v42, v43);
        v38 = type metadata accessor for Date();
        (*(*(v38 - 8) + 56))(v7, 1, 2, v38);
        (*(v37 + 8))(v7, v19, v21, v36, v37);
        sub_1000126C8(v7);
        sub_1000036EC(v42);
        v34 += v35;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

const char *sub_100063CAC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemNotificationSource();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    v19 = String.init(cString:)();
    v21 = v20;
    v22 = sub_1000392CC();
    v23 = *(v14 + 16);
    v41 = v13;
    v23(v17, v22, v13);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v39 = v9;
      v27 = v26;
      v28 = swift_slowAlloc();
      v40 = a2;
      v29 = v28;
      v42[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000034B8(v19, v21, v42);
      _os_log_impl(&_mh_execute_header, v24, v25, "On xpc event stream, com.apple.alarm, notification %s", v27, 0xCu);
      sub_1000036EC(v29);
      a2 = v40;

      v9 = v39;
    }

    v30 = (*(v14 + 8))(v17, v41);
    v31 = (*(*a2 + 104))(v30);
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = *(v9 + 80);
      v41 = v31;
      v34 = v31 + ((v33 + 32) & ~v33);
      v35 = *(v9 + 72);
      do
      {
        sub_100065160(v34, v12);
        sub_10000FA7C(v12, v42);
        sub_1000654B0(v12);
        v36 = v43;
        v37 = v44;
        sub_1000078C8(v42, v43);
        static Date.now.getter();
        v38 = type metadata accessor for Date();
        (*(*(v38 - 8) + 56))(v7, 0, 2, v38);
        (*(v37 + 8))(v7, v19, v21, v36, v37);
        sub_1000126C8(v7);
        sub_1000036EC(v42);
        v34 += v35;
        --v32;
      }

      while (v32);
    }
  }

  return result;
}

uint64_t sub_100064090()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000640D8()
{
  v1 = *(v0 + 16);
  sub_10000A45C(&qword_100092E80, qword_100072CF0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100064150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v22[-v9 - 8];
  sub_10000FA7C(a1, v22);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_10000A45C(&qword_100094868, &qword_100075210);
  Subscription.init(subscriber:unsubscribeBlock:)(v22, sub_100065890, v11, v12, a3);
  sub_100065160(a3, v10);
  v13 = (*(*a2 + 120))(v22);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_100064A9C(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_100064A9C(v18 > 1, v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  sub_10001219C(v10, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19);
  return v13(v22, 0);
}

uint64_t sub_100064360(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v22);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = v21 - v15;
  v21[1] = *(v1 + 16);
  sub_100065160(a1, v21 - v15);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  sub_10001219C(v16, v18 + v17);
  aBlock[4] = sub_1000651D0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C540;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100002254(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v22);
}

uint64_t sub_1000646D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = &_swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_100065160(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        sub_1000654B0(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_10001219C(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100065680(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100065680(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_10001219C(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_1000654B0(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

void (*sub_100064990(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(**v1 + 120))();
  return sub_10000E7CC;
}

uint64_t sub_100064A24()
{
  v1 = *(*v0 + 16);
  sub_10000A45C(&qword_100092E80, qword_100072CF0);
  return OS_dispatch_queue.sync<A>(execute:)();
}

size_t sub_100064A9C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100094858, &qword_100075208);
  v10 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
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
  v15 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
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

uint64_t type metadata accessor for SystemNotificationSource()
{
  result = qword_100098840;
  if (!qword_100098840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100064CE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064D30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000A45C(&qword_100094870, &unk_100075218);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_100064FD0(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1000327AC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100064D30(v16, a4 & 1);
      v20 = *v5;
      result = sub_1000327AC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100065518();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_100065160(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000651D0()
{
  v1 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 104))();
  v7[2] = v3;
  v5 = sub_1000646D4(sub_10006540C, v7, v4);
  return (*(*v2 + 112))(v5);
}

unint64_t sub_1000652C0()
{
  result = qword_100094668;
  if (!qword_100094668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094668);
  }

  return result;
}

uint64_t sub_100065380()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

BOOL sub_10006540C()
{
  v1 = *(v0 + 16);
  sub_10000A45C(&qword_100092E80, qword_100072CF0);
  sub_10000FA34(&qword_100094860, &qword_100092E80, qword_100072CF0);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_1000654B0(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100065518()
{
  v1 = v0;
  sub_10000A45C(&qword_100094870, &unk_100075218);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

size_t sub_100065680(size_t a1, int64_t a2, char a3)
{
  result = sub_1000656A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000656A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100094858, &qword_100075208);
  v10 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
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
  v15 = *(sub_10000A45C(&qword_100092E80, qword_100072CF0) - 8);
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

uint64_t sub_100065890(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100064360(a1);
  }

  return result;
}

uint64_t sub_100065940()
{
  qword_100098858 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t *Transaction.$current.unsafeMutableAddressor()
{
  if (qword_100098860 != -1)
  {
    swift_once();
  }

  return &static Transaction.$current;
}

uint64_t sub_100065A4C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10000A45C(a2, a3);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  *a4 = result;
  return result;
}

uint64_t *Transaction.$currentNSXPCConnection.unsafeMutableAddressor()
{
  if (qword_100098868 != -1)
  {
    swift_once();
  }

  return &static Transaction.$currentNSXPCConnection;
}

uint64_t sub_100065B14(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100065B98(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;
  TaskLocal.get()();
  return v5;
}

uint64_t static Transaction.asyncTask(name:block:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21 - v12;
  v14 = swift_allocObject();
  sub_10006676C(a1, a2, a3);
  v15 = objc_opt_self();

  v16 = [v15 currentConnection];
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v14;
  v18[5] = v16;
  v18[6] = a4;
  v18[7] = a5;
  v19 = v16;

  sub_100066404(0, 0, v13, &unk_100075230, v18);
}

uint64_t sub_100065D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  return _swift_task_switch(sub_100065DC4, 0, 0);
}

uint64_t sub_100065DC4()
{
  if (qword_100098860 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_100065F34;
  v6 = *(v0 + 24);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v6, v0 + 16, &unk_100075338, v2, 0, 0, 0xD000000000000020, 0x800000010007C3D0);
}

uint64_t sub_100065F34()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 32);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_100066074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return _swift_task_switch(sub_100066098, 0, 0);
}

uint64_t sub_100066098()
{
  if (qword_100098868[0] != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 32);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 40);
  v2 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1000661E8;
  v4 = *(v0 + 24);

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v4, v0 + 16, &unk_100075348, v1, 0, 0, 0xD000000000000020, 0x800000010007C3D0);
}

uint64_t sub_1000661E8()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = *(v2 + 56);

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_10006631C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005F0C0;

  return v6();
}

uint64_t sub_100066404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100067B74(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100067BE4(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100067BE4(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100067BE4(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static Transaction.named<A>(_:with:)(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  sub_10006676C(a1, a2, a3);
  a4(v8);
}

os_activity_scope_state_s *sub_10006676C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v53 - v16;
  v3[3].opaque[0] = 0;
  v3[2].opaque[0] = 0;
  v3[3].opaque[1] = 0;
  v56 = v7;
  v57 = v6;
  v58 = v10;
  v55 = a3;
  v54 = v14;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      while (1)
      {
        *description = static String._fromUTF8Repairing(_:)();
        v61 = v21;

        v22._countAndFlagsBits = 46;
        v22._object = 0xE100000000000000;
        String.append(_:)(v22);

        v23 = *description;
        v24 = v61;
        UUID.init()();
        v25 = UUID.uuidString.getter();
        v27 = v26;
        v28 = *(v12 + 8);
        v12 += 8;
        v28(v17, v54);
        *description = v23;
        v61 = v24;

        v29._countAndFlagsBits = v25;
        v29._object = v27;
        String.append(_:)(v29);

        v30 = v61;
        v3[1].opaque[0] = *description;
        v3[1].opaque[1] = v30;
        String.utf8CString.getter();
        v6 = os_transaction_create();

        v31 = v3[2].opaque[0];
        v3[2].opaque[0] = v6;
        swift_unknownObjectRelease();
        v16 = v55;
        if (v55)
        {
          v16 = HIDWORD(a1);
          a3 = v56;
          v17 = v57;
          if (!HIDWORD(a1))
          {
            v18 = a1 & 0xFFFFF800;
            v19 = 55296;
            if (v18 == 55296)
            {
              goto LABEL_42;
            }

            v18 = a1 >> 16;
            if (a1 >> 16 > 0x10)
            {
              __break(1u);
            }

            else if (a1 <= 0x7F)
            {
              v34 = a1 + 1;
              v6 = v58;
              goto LABEL_20;
            }

            v19 = (a1 & 0x3F) << 8;
            v6 = v58;
            if (a1 < 0x800)
            {
              v34 = (a1 >> 6) + v19 + 33217;
              goto LABEL_20;
            }

            goto LABEL_43;
          }
        }

        else
        {
          a3 = v56;
          v17 = v57;
          v6 = v58;
          if (a1)
          {
            if (qword_100098850 != -1)
            {
              swift_once();
            }

            v32 = qword_100098858;
            v33 = a1;
            goto LABEL_23;
          }

LABEL_30:
          __break(1u);
        }

        __break(1u);
LABEL_32:
        v47 = (a1 & 0x3F) << 8;
        v48 = (a1 >> 6) + v47 + 33217;
        v49 = (v47 | (a1 >> 6) & 0x3F) << 8;
        v50 = (a1 >> 18) + ((v49 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v51 = (a1 >> 12) + v49 + 8487393;
        if (v16)
        {
          v20 = v50;
        }

        else
        {
          v20 = v51;
        }

        if (a1 < 0x800)
        {
          v20 = v48;
        }

LABEL_9:
        *description = (v20 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v20) >> 3))));
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v16 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = a1 & 0xFFFFF800;
  v19 = 55296;
  if (v18 != 55296)
  {
    v16 = a1 >> 16;
    if (a1 >> 16 <= 0x10)
    {
      if (a1 > 0x7F)
      {
        goto LABEL_32;
      }

      v20 = a1 + 1;
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  v52 = (v19 | (a1 >> 6) & 0x3F) << 8;
  if (v18)
  {
    v34 = (a1 >> 18) + ((v52 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
  }

  else
  {
    v34 = (a1 >> 12) + v52 + 8487393;
  }

LABEL_20:
  *description = (v34 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v34) & 0x18)));
  if (qword_100098850 != -1)
  {
    swift_once();
  }

  v32 = qword_100098858;
  v33 = description;
LABEL_23:
  v3[2].opaque[1] = _os_activity_create(&_mh_execute_header, v33, v32, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  v35 = swift_unknownObjectRetain();
  os_activity_scope_enter(v35, v3 + 3);
  swift_endAccess();
  swift_unknownObjectRelease();
  v36 = sub_100039318();
  (*(a3 + 16))(v6, v36, v17);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 136315138;
    v59 = v40;
    *description = 0x3A4E58545BLL;
    v61 = 0xE500000000000000;
    v41 = v3[1].opaque[0];
    v42 = v3[1].opaque[1];

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 93;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);

    v45 = sub_1000034B8(*description, v61, &v59);

    *(v39 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v37, v38, "Opened %s", v39, 0xCu);
    sub_1000036EC(v40);

    (*(a3 + 8))(v58, v17);
  }

  else
  {

    (*(a3 + 8))(v6, v17);
  }

  return v3;
}

uint64_t sub_100066D94(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10005C038;

  return sub_100065D9C(a1, v8, v9, v4, v5, v7, v6);
}

void *Transaction.deinit()
{
  sub_100066E88();
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100066E88()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v7 = sub_100039318();
    (*(v2 + 16))(v6, v7, v1);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136315138;
      v15 = v11;
      v16 = 0x3A4E58545BLL;
      v17 = 0xE500000000000000;
      String.append(_:)(*(v0 + 16));
      v12._countAndFlagsBits = 93;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = sub_1000034B8(v16, v17, &v15);

      *(v10 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "Closed %s", v10, 0xCu);
      sub_1000036EC(v11);
    }

    (*(v2 + 8))(v6, v1);
    swift_beginAccess();
    os_activity_scope_leave((v0 + 48));
    swift_endAccess();
    v14 = *(v0 + 32);
    *(v0 + 32) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Transaction.__deallocating_deinit()
{
  sub_100066E88();
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100067148()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return _swift_task_switch(sub_10006719C, 0, 0);
}

uint64_t sub_10006719C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  sub_10006676C(v4, v3, v5);
  v12 = (v2 + *v2);
  v7 = v2[1];
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_1000672D8;
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return v12(v10, v6);
}

uint64_t sub_1000672D8()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100067450;
  }

  else
  {
    v3 = sub_1000673EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000673EC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100067450()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t static Transaction.named<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 96) = a4;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  return _swift_task_switch(sub_1000674E4, 0, 0);
}

uint64_t sub_1000674E4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1000675BC;
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 96);

  return static Transaction.named<A>(_:with:)(v8, v6, v7, v9, &unk_100075250, v2);
}

uint64_t sub_1000675BC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000676F8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000676F8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10006775C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10005C038;

  return v8(a1);
}

uint64_t sub_100067854(uint64_t a1)
{
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005C038;

  return sub_10006775C(a1, v6, v5);
}

uint64_t Transaction.description.getter()
{
  String.append(_:)(v0[1]);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x3A4E58545BLL;
}

uint64_t sub_100067958()
{
  String.append(_:)((*v0)[1]);
  v1._countAndFlagsBits = 93;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0x3A4E58545BLL;
}

__n128 sub_1000679D8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000679E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067A04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for os_activity_scope_state_s()
{
  if (!qword_1000949F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000949F0);
    }
  }
}

uint64_t sub_100067A7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100067E50;

  return v7(a1);
}

uint64_t sub_100067B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067BE4(uint64_t a1)
{
  v2 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100067C4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000615D8;

  return sub_100067A7C(a1, v5);
}

uint64_t sub_100067D04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000615D8;

  return sub_100066074(a1, v4, v5, v6);
}

uint64_t sub_100067DB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000615D8;

  return sub_10006631C(v4, v2);
}

void sub_100067E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a4;
  v7 = *(a1 + 48);
  v126 = *(a1 + 32);
  v127 = v7;
  v128 = *(a1 + 64);
  v8 = *(a1 + 16);
  *&v124[80] = *a1;
  v125 = v8;
  v9 = *a2;
  object = *(a2 + 8);
  v11 = *(a2 + 24);
  baseNumber = *(a2 + 16);
  countAndFlagsBits = v9;
  v12 = *(a2 + 40);
  v92 = *(a2 + 32);
  v93 = v11;
  v13 = *(a2 + 48);
  v14 = *(a2 + 64);
  buildNumber = *(a2 + 56);
  value = v12;
  v88 = *(a2 + 72);
  v89 = v14;
  v15 = type metadata accessor for Logger();
  v81 = *(v15 - 8);
  v82 = v15;
  v16 = *(v81 + 64);
  v17 = __chkstk_darwin(v15);
  v84 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v79 = &v76 - v20;
  v86 = *(a3 - 8);
  v21 = *(v86 + 64);
  __chkstk_darwin(v19);
  v98 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v80 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v97 = &v76 - v29;
  __chkstk_darwin(v28);
  v99 = &v76 - v30;
  v31 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v76 - v36;
  v83 = objc_opt_self();
  v96 = [v83 standardUserDefaults];
  if (*(a1 + 8))
  {
    if (object)
    {
LABEL_5:
      sub_100006C44(a1, v124, &qword_100094A18, &qword_100075360);
      *&v124[32] = v126;
      *&v124[48] = v127;
      *&v124[64] = v128;
      *v124 = *&v124[80];
      *&v124[16] = v125;
      v38 = 1;
      v39 = v13;
      goto LABEL_6;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (object)
  {
    goto LABEL_5;
  }

  Transaction.capture()();
  v68._countAndFlagsBits = SystemInfo.buildVersion.getter();
  SystemVersionNumber.init(rawValue:)(&v116, v68);
  object = v116.value.rawValue._object;
  if (v116.value.rawValue._object)
  {
    v77 = a3;
    v78 = v37;
    baseNumber = v116.value.baseNumber;
    countAndFlagsBits = v116.value.rawValue._countAndFlagsBits;
    v92 = v116.value.baseLetter._object;
    v93 = v116.value.baseLetter._countAndFlagsBits;
    buildNumber = v116.value.buildNumber;
    value = v116.value.childType.value;
    v88 = v116.value.suffix.value._object;
    v89 = v116.value.suffix.value._countAndFlagsBits;
    is_nil = v116.value.childType.is_nil;
    v116.is_nil = v116.value.childType.is_nil;
    v69 = String._bridgeToObjectiveC()();
    v70 = [v96 stringForKey:v69];

    if (!v70)
    {
      a3 = v77;
      goto LABEL_13;
    }

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74._countAndFlagsBits = v71;
    v74._object = v73;
    SystemVersionNumber.init(rawValue:)(v124, v74);
    v38 = 0;
    v39 = v116.is_nil;
    a3 = v77;
    v37 = v78;
LABEL_6:
    *&v117 = countAndFlagsBits;
    *(&v117 + 1) = object;
    *&v118 = baseNumber;
    *(&v118 + 1) = v93;
    *&v119 = v92;
    *(&v119 + 1) = value;
    is_nil = v39;
    LOBYTE(v120) = v39;
    *(&v120 + 1) = buildNumber;
    *&v121 = v89;
    *(&v121 + 1) = v88;
    v123[0] = v117;
    v123[1] = v118;
    v123[2] = v119;
    v123[3] = v120;
    v123[4] = v121;
    if (*&v124[8])
    {
      v122[0] = *v124;
      v122[1] = *&v124[16];
      v122[2] = *&v124[32];
      v122[3] = *&v124[48];
      v122[4] = *&v124[64];
      v108 = *&v124[32];
      v109 = *&v124[48];
      v110 = *&v124[64];
      v106 = *v124;
      v107 = *&v124[16];
      v103 = v119;
      v104 = v120;
      v105 = v121;
      v101 = v117;
      v102 = v118;
      sub_100006C44(a2, v100, &qword_100094A18, &qword_100075360);
      sub_10000A4A4(&v117, v100);
      sub_10000A27C();
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v113 = v103;
      v114 = v104;
      v115 = v105;
      v111 = v101;
      v112 = v102;
      sub_10000A4DC(&v111);
      if ((v41 & 1) == 0)
      {
        (*(v85 + 16))(v122, v123, a3);
      }

      sub_100006CAC(v124, &qword_100094A18, &qword_100075360);
      if (v38)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100006C44(a2, v122, &qword_100094A18, &qword_100075360);
      if (v38)
      {
LABEL_10:
        sub_10000A4DC(&v117);
        goto LABEL_14;
      }
    }

    v78 = v37;
LABEL_13:
    *&v111 = countAndFlagsBits;
    *(&v111 + 1) = object;
    *&v112 = baseNumber;
    *(&v112 + 1) = v93;
    *&v113 = v92;
    *(&v113 + 1) = value;
    LOBYTE(v114) = is_nil;
    *(&v114 + 1) = buildNumber;
    *&v115 = v89;
    *(&v115 + 1) = v88;
    v117 = v111;
    v118 = v112;
    v119 = v113;
    v120 = v114;
    v121 = v115;
    SystemVersionNumber.description.getter();
    sub_10000A4DC(&v111);
    v42 = String._bridgeToObjectiveC()();

    v43 = String._bridgeToObjectiveC()();
    [v96 setValue:v42 forKey:v43];

    v37 = v78;
LABEL_14:
    sub_1000689B4(v99);
    v44 = [v83 standardUserDefaults];
    v45 = String._bridgeToObjectiveC()();
    v46 = [v44 stringForKey:v45];

    if (v46)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();
    }

    else
    {
      (*(v24 + 56))(v37, 1, 1, v23);
    }

    (*(v24 + 16))(v97, v99, v23);
    v47 = v86;
    (*(v86 + 16))(v98, v87, a3);
    sub_100006C44(v37, v35, &qword_100093938, &qword_1000739C8);
    if ((*(v24 + 48))(v35, 1, v23) == 1)
    {
      sub_100006CAC(v35, &qword_100093938, &qword_1000739C8);
      v48 = sub_100039094();
      v50 = v81;
      v49 = v82;
      (*(v81 + 16))(v84, v48, v82);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "No lastLaunchBootSessionUUID on record", v53, 2u);
        v47 = v86;
      }

      (*(v50 + 8))(v84, v49);
      v55 = v97;
      v54 = v98;
      sub_100068E48(v97, v98, a3, v85);

      (*(v47 + 8))(v54, a3);
      v56 = *(v24 + 8);
      v56(v55, v23);
    }

    else
    {
      v57 = v80;
      (*(v24 + 32))();
      sub_1000693D0();
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        (*(v47 + 8))(v98, a3);
        v58 = *(v24 + 8);
        v58(v97, v23);
        v59 = sub_100039094();
        v60 = v81;
        v61 = v82;
        v62 = v79;
        (*(v81 + 16))(v79, v59, v82);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = 0;
          _os_log_impl(&_mh_execute_header, v63, v64, "This is *NOT* the first run since reboot", v65, 2u);

          (*(v60 + 8))(v79, v61);
        }

        else
        {

          (*(v60 + 8))(v62, v61);
        }

        v58(v80, v23);
        v58(v99, v23);
        goto LABEL_31;
      }

      v67 = v97;
      v66 = v98;
      sub_100068E48(v97, v98, a3, v85);

      v56 = *(v24 + 8);
      v56(v57, v23);
      (*(v47 + 8))(v66, a3);
      v56(v67, v23);
    }

    v56(v99, v23);
LABEL_31:
    sub_100006CAC(v37, &qword_100093938, &qword_1000739C8);
    return;
  }

  v75 = v96;
}

uint64_t sub_1000689B4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A45C(&qword_100093938, &qword_1000739C8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for String.Encoding();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 37;
  v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v15 + 16) = 37;
  *(v15 + 48) = 0u;
  *(v15 + 61) = 0;
  *(v15 + 32) = 0u;
  if (sysctlbyname("kern.bootsessionuuid", (v15 + 32), &v33, 0, 0))
  {
    v15 = v3;
    v19 = errno.getter();
    if (!strerror(v19))
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  static String.Encoding.ascii.getter();
  sub_10006905C(v15, v14);
  if (!v16)
  {
    while (1)
    {
LABEL_9:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_10:
      v21 = String.init(utf8String:)();
      v22 = v20;
      if (v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_100039094();
      (*(v15 + 16))(v6, v24, v2);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        if (v22)
        {
          v27 = v21;
        }

        else
        {
          v27 = 0x6E776F6E6B6E55;
        }

        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v34 = v29;
        *v28 = 136315394;
        v30 = sub_1000034B8(v27, v23, &v34);

        *(v28 + 4) = v30;
        *(v28 + 12) = 1024;
        *(v28 + 14) = errno.getter();
        _os_log_impl(&_mh_execute_header, v25, v26, "Error from sysctlbyname: %s(%d", v28, 0x12u);
        sub_1000036EC(v29);
      }

      else
      {
      }

      v31 = *(v15 + 8);
      v15 += 8;
      v31(v6, v2);
    }
  }

  v2 = v16;
  UUID.init(uuidString:)();
  v6 = type metadata accessor for UUID();
  v17 = *(v6 - 1);
  if ((*(v17 + 48))(v10, 1, v6) == 1)
  {
    sub_100006CAC(v10, &qword_100093938, &qword_1000739C8);
    goto LABEL_9;
  }

  return (*(v17 + 32))(a1, v10, v6);
}

uint64_t sub_100068E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100039094();
  (*(v7 + 16))(v10, v11, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "This is the first run since reboot", v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = [objc_opt_self() standardUserDefaults];
  UUID.uuidString.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();
  [v15 setObject:v16 forKey:v17];

  return (*(a4 + 24))(a3, a4);
}

uint64_t sub_10006905C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = static String.Encoding.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if ((v9 & 1) == 0)
  {
    static String.Encoding.ascii.getter();
    v11 = static String.Encoding.== infix(_:_:)();
    v10(v8, v4);
    if ((v11 & 1) == 0)
    {
      static String.Encoding.nonLossyASCII.getter();
      v12 = static String.Encoding.== infix(_:_:)();
      v10(v8, v4);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  v14 = sub_100069428(v13);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  static String.Encoding.utf8.getter();
  v17 = static String.Encoding.== infix(_:_:)();
  v10(v8, v4);
  if (v17)
  {

LABEL_17:
    v10(a2, v4);
    return v16;
  }

  if ((_StringGuts._isContiguousASCII.getter() & 1) == 0)
  {

LABEL_10:
    v18 = *(a1 + 16);
    if (v18)
    {
      v8 = 0;
      while (v8[a1 + 32])
      {
        if (v18 == ++v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v19 = [objc_allocWithZone(NSString) initWithBytes:a1 + 32 length:v8 encoding:String.Encoding.rawValue.getter()];

    if (!v19)
    {
      v10(a2, v4);
      return 0;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_17;
  }

  v10(a2, v4);

  return v16;
}

uint64_t sub_100069340()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000693D0()
{
  result = qword_100094A10;
  if (!qword_100094A10)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A10);
  }

  return result;
}

uint64_t sub_100069428(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    result += 32;
    if (!v3)
    {
LABEL_6:
      v7 = static String._tryFromUTF8(_:)();
      swift_unknownObjectRelease();
      return v7;
    }

    v4 = 0;
    v5 = v1 - 1;
    while (v5 != v4)
    {
      if (!*(v2 + 33 + v4++))
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000694B8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    v3 = [objc_allocWithZone(ACAccountStore) init];
    v4 = *(v0 + 48);
    *(v0 + 48) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*sub_100069524(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000694B8();
  return sub_1000138D4;
}

uint64_t sub_10006956C()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for KeyValueStoreManager();
    v1 = sub_1000143A4();
    (*(*v1 + 128))(*(v2 + 16));
    v3 = *(v2 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_100069604(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t (*sub_100069614(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10006956C();
  return sub_10006965C;
}

uint64_t sub_10006965C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
}

void sub_10006966C()
{
  if (*(v0 + 64) == 1)
  {
    Transaction.capture()();
    *(v0 + 64) = 0;
  }
}

uint64_t (*sub_10006969C(void *a1))(uint64_t result)
{
  *a1 = v1;
  sub_10006966C();
  return sub_1000696DC;
}

id sub_1000696E8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    [v3 setDispatchQueue:*(v0 + 16)];
    v13 = sub_10006DE88;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C888;
    v4 = _Block_copy(&v9);

    [v3 setFirstUnlockHandler:v4];
    _Block_release(v4);
    v13 = sub_10006DE00;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C8B0;
    v5 = _Block_copy(&v9);

    [v3 activateWithCompletion:v5];
    _Block_release(v5);
    v6 = *(v0 + 72);
    *(v0 + 72) = v3;
    v2 = v3;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100069898(uint64_t a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  return _objc_release_x1();
}

void (*sub_1000698A4(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000696E8();
  return sub_1000698EC;
}

void sub_1000698EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
}

id sub_1000698FC()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 80);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    [v3 setDispatchQueue:*(v0 + 16)];
    v13 = sub_10006DE84;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C838;
    v4 = _Block_copy(&v9);

    [v3 setPrimaryAppleIDChangedHandler:v4];
    _Block_release(v4);
    v13 = sub_10006DDFC;
    v14 = v0;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100002410;
    v12 = &unk_10008C860;
    v5 = _Block_copy(&v9);

    [v3 activateWithCompletion:v5];
    _Block_release(v5);
    v6 = *(v0 + 80);
    *(v0 + 80) = v3;
    v2 = v3;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t sub_100069AAC(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  return _objc_release_x1();
}

void (*sub_100069AB8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1000698FC();
  return sub_100069B00;
}

void sub_100069B00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 80);
  *(v1 + 80) = v2;
}

uint64_t sub_100069B10()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1000327AC(0xD000000000000010, 0x800000010007C930), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  qword_100098B68 = v7;
  qword_100098B70 = v6;
  return result;
}

uint64_t sub_100069BF4(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_100069C34(a1);
  return v5;
}

uint64_t sub_100069C34(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 99) = 0u;
  v3 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  v4 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler) = 0;
  *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer) = 0;
  *(v1 + 16) = a1;
  return v1;
}

Swift::UInt64 sub_100069CF4()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsTimeDuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = UpTicks()();
  v8 = *(v0 + 24);
  v9 = v7 >= v8;
  result = v7 - v8;
  if (v9)
  {
    v11 = UpTicksToSeconds(_:)(result);
    v29 = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v12._object = 0x800000010007C5A0;
    v12._countAndFlagsBits = 0xD00000000000001DLL;
    String.append(_:)(v12);
    v28._countAndFlagsBits = v11;
    (*(v3 + 104))(v6, enum case for DefaultStringInterpolation.PrintUtilsTimeDuration.duration(_:), v2);
    sub_10006A07C();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:)();
    (*(v3 + 8))(v6, v2);
    if (IsAppleInternalBuild())
    {
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      v13._countAndFlagsBits = 0x20656C707041202CLL;
      v13._object = 0xEC000000203A4449;
      String.append(_:)(v13);
      v27 = *(v0 + 32);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      String.append(_:)(v28);
    }

    v14._countAndFlagsBits = 10;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v15 = (*(*v0 + 440))();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 description];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    *&v27 = v18;
    *(&v27 + 1) = v20;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:)(v28);

    v21._countAndFlagsBits = 10;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v22 = (*(*v1 + 480))();
    if (v22)
    {
      v23 = (*(*v22 + 104))(v22);
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    *&v27 = v23;
    *(&v27 + 1) = v25;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();

    String.append(_:)(v28);

    v26._countAndFlagsBits = 10;
    v26._object = 0xE100000000000000;
    String.append(_:)(v26);
    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10006A07C()
{
  result = qword_100094A20;
  if (!qword_100094A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094A20);
  }

  return result;
}

uint64_t sub_10006A148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_10006DDF4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C810;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t sub_10006A3F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v8 = sub_100039094();
  (*(v4 + 16))(v7, v8, v3);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Activate", v11, 2u);
  }

  v12 = (*(v4 + 8))(v7, v3);
  return (*(*a2 + 408))(v12);
}

uint64_t sub_10006A594()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  if (!*(v1 + 24))
  {
    *(v1 + 24) = UpTicks()();
  }

  if (qword_1000988F0 != -1)
  {
    swift_once();
  }

  v29 = v7;
  swift_beginAccess();
  v10 = qword_100098B70;
  if (qword_100098B70)
  {
    v11 = qword_100098B68;

    v12 = sub_100039094();
    v27 = *(v3 + 16);
    v28 = v12;
    v27(v9);

    v13 = v3;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = v1;
      v17 = v16;
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 136315138;
      v19 = sub_1000034B8(v11, v10, &v30);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Launching bluetoothuserd (%s)", v17, 0xCu);
      sub_1000036EC(v18);
    }

    else
    {
    }

    v20 = *(v13 + 8);
    v20(v9, v2);
    v21 = v29;
    (v27)(v29, v28, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Activate bluetoothuserd services", v24, 2u);
    }

    v20(v21, v2);
    sub_10006C4B8();
    return notify_post("com.apple.bluetoothuser.daemonStarted");
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006A930()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 16);
  aBlock[4] = sub_10006D7AC;
  v16 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008C768;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10000C8F4();
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000C94C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_10006AB84()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039094();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidate", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_10006ACE8();
}

uint64_t sub_10006ACE8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = sub_10006BB6C();
  v12 = (*(*v0 + 440))(v11);
  if (v12)
  {
    v13 = v12;
    (*((swift_isaMask & *v12) + 0x1A0))();
  }

  (*(*v1 + 448))(0);
  v14 = v1[5];
  v1[4] = 0;
  v1[5] = 0;

  (*(*v1 + 552))(v15);
  if (*(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler))
  {
    os_state_remove_handler();
  }

  v16 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  swift_beginAccess();
  sub_10006DD14(v1 + v16, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v17 = &qword_100094A28;
    v18 = &qword_100075390;
    v19 = v5;
  }

  else
  {
    v20 = sub_100017D84(v5, v10);
    (*(*v1 + 288))(v20);
    sub_1000149B8(v10);

    v17 = &qword_100092FA8;
    v18 = &unk_100075380;
    v19 = v10;
  }

  sub_100006CAC(v19, v17, v18);
  v21 = *(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer);
  if (v21)
  {
    v22 = *((swift_isaMask & *v21) + 0xE8);
    v23 = v21;
    v22();
  }

  return sub_10006DBC4();
}

void *sub_10006B01C()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_10006B060(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

void sub_10006B0F8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v62 - v9;
  v11 = (*(*v0 + 360))(v8);
  v12 = [v11 primaryAppleID];

  if (!v12)
  {
    v19 = (v1 + 40);
    v18 = *(v1 + 40);
    v17 = (v1 + 32);
LABEL_11:
    if (!v18)
    {
      return;
    }

    goto LABEL_14;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = (v1 + 32);
  v19 = (v1 + 40);
  v18 = *(v1 + 40);
  if (!v16)
  {
    goto LABEL_11;
  }

  if (v18)
  {
    if (v14 == *(v1 + 32) && v18 == v16)
    {
      goto LABEL_32;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      return;
    }
  }

  else
  {
  }

LABEL_14:
  v22 = (*(*v1 + 264))(v13);
  v66 = [v22 aa_primaryAppleAccount];

  if (!v66)
  {
    return;
  }

  v23 = [v66 aa_altDSID];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [v66 username];
  if (v28)
  {
    v64 = v3;
    v29 = v28;
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v30;

    v31 = (*(*v1 + 440))();
    if (!v31)
    {
LABEL_28:
      v41 = *v19;
      *v17 = v63;
      v42 = v65;
      *v19 = v65;

      if (IsAppleInternalBuild())
      {
        v43 = sub_100039094();
        v44 = v64;
        (*(v64 + 16))(v10, v43, v2);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v62 = v27;
          v48 = v42;
          v49 = v47;
          v67 = swift_slowAlloc();
          *v49 = 136315394;
          v50 = sub_1000034B8(v63, v48, &v67);

          *(v49 + 4) = v50;
          *(v49 + 12) = 2080;
          *(v49 + 14) = sub_1000034B8(v25, v62, &v67);
          _os_log_impl(&_mh_execute_header, v45, v46, "Apple Account %s) updated for %s", v49, 0x16u);
          swift_arrayDestroy();

          (*(v64 + 8))(v10, v2);
          v27 = v62;
        }

        else
        {

          (*(v44 + 8))(v10, v2);
        }
      }

      else
      {
        v51 = v27;

        v52 = sub_100039094();
        v53 = v64;
        (*(v64 + 16))(v7, v52, v2);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Apple Account found", v56, 2u);
        }

        (*(v53 + 8))(v7, v2);
        v27 = v51;
      }

      type metadata accessor for CloudPairingManager();
      sub_10004DD5C(v25, v27);
      v58 = v57;
      (*((swift_isaMask & *v57) + 0xE0))(*(v1 + 16));
      v59 = *(*v1 + 448);
      v60 = v58;
      v61 = v59(v58);
      (*((swift_isaMask & *v60) + 0x198))(v61);

      return;
    }

    v62 = v2;
    v32 = v25;
    v33 = v27;
    v34 = v31;
    v35 = (*((swift_isaMask & *v31) + 0x130))();
    v37 = v36;

    v27 = v33;
    if (v35 != v32 || v37 != v33)
    {
      v25 = v32;
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v62;
      if (v39)
      {

LABEL_24:
        v40 = v66;

        return;
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

LABEL_32:
}

uint64_t sub_10006B84C()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_10006B884(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_10006B91C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 480))(v5))
  {
  }

  else
  {
    v9 = sub_100039094();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Debug manager started", v12, 2u);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for DebugManager();
    v13 = sub_1000116EC();
    (*(*v13 + 184))();
    v14 = *(*v1 + 488);

    v14(v15);
  }
}

uint64_t sub_10006BB6C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v0 + 480))(v4);
  if (result)
  {
    v8 = result;
    v9 = sub_100039094();
    (*(v2 + 16))(v6, v9, v1);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Debug manager stopped", v12, 2u);
    }

    v13 = (*(v2 + 8))(v6, v1);
    (*(*v8 + 192))(v13);
  }

  return result;
}

uint64_t sub_10006BD38(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t sub_10006BDD0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 520))(v5))
  {
  }

  else
  {
    v9 = sub_100039094();
    (*(v3 + 16))(v7, v9, v2);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Intelligence manager started", v12, 2u);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for IntelligenceManager();
    v13 = sub_100061D70();
    return (*(*v1 + 528))(v13);
  }
}

uint64_t sub_10006BFE4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v0 + 520))(v5))
  {

    v8 = sub_100039094();
    (*(v3 + 16))(v7, v8, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Intelligence manager stopped", v11, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  return (*(*v1 + 528))(0);
}

uint64_t sub_10006C1B8()
{
  v1 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v20 - v6;
  v8 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription;
  swift_beginAccess();
  sub_10006DD14(v0 + v8, v7);
  v9 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = sub_100006CAC(v7, &qword_100094A28, &qword_100075390);
  v13 = *(*v0 + 288);
  v14 = v13(v12);
  v15 = v14;
  if (v11 == 1)
  {
    (*(*v14 + 216))(v14);

    v13(v16);
    v20[3] = type metadata accessor for BluetoothUserDaemon();
    v20[4] = &off_10008C7B0;
    v20[0] = v0;

    sub_100014720();

    sub_1000036EC(v20);
    (*(v10 + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_10006DD84(v5, v0 + v8);
    return swift_endAccess();
  }

  else
  {
    v18 = (*(*v0 + 360))();
    v19 = [v18 primaryAppleID];

    if (v19)
    {
    }

    (*(*v15 + 224))(v19 != 0);
  }
}

void sub_10006C4B8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v44 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - v14;
  v16 = v0[112];
  v17 = (*v0 + 336);
  v47 = *v17;
  v18 = v47(v13);
  v19 = [v18 firstUnlocked];

  if (sub_100015134(2, 3u))
  {
    v46 = v9;
    v19 = sub_100016230(2, 3u);
    v20 = sub_100039094();
    (*(v3 + 16))(v15, v20, v2);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v17;
      *v23 = 67109376;
      *(v23 + 4) = v16;
      *(v23 + 8) = 1024;
      *(v23 + 10) = v19 & 1;
      _os_log_impl(&_mh_execute_header, v21, v22, "Cloud Pairing Manager Overridden: %{BOOL}d -> %{BOOL}d", v23, 0xEu);
      v17 = v45;
    }

    (*(v3 + 8))(v15, v2);
    v9 = v46;
  }

  if (v16 != (v19 & 1))
  {
    v24 = sub_100039094();
    (*(v3 + 16))(v12, v24, v2);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = v17;
      *v27 = 67109376;
      *(v27 + 4) = v16;
      *(v27 + 8) = 1024;
      *(v27 + 10) = v19 & 1;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cloud Pairing Manager Enabled: %{BOOL}d -> %{BOOL}d", v27, 0xEu);
    }

    (*(v3 + 8))(v12, v2);
    v1[112] = v19 & 1;
  }

  v28 = v1[113];
  v29 = sub_1000159B4(2, 4u, &type metadata for Bool, &v50);
  v30 = v50;
  if (v50 == 2)
  {
    v31 = v47(v29);
    v30 = [v31 firstUnlocked];
  }

  if (v28 != (v30 & 1))
  {
    v32 = sub_100039094();
    (*(v3 + 16))(v9, v32, v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 67109376;
      *(v35 + 4) = v28;
      *(v35 + 8) = 1024;
      *(v35 + 10) = v30 & 1;
      _os_log_impl(&_mh_execute_header, v33, v34, "Debug Manager Enabled: %{BOOL}d -> %{BOOL}d", v35, 0xEu);
    }

    (*(v3 + 8))(v9, v2);
    v1[113] = v30 & 1;
  }

  v36 = v1[114];
  v37 = sub_1000159B4(2, 5u, &type metadata for Bool, &v49);
  v38 = v49;
  if (v49 == 2)
  {
    v39 = v47(v37);
    v38 = [v39 firstUnlocked];
  }

  if (v36 != (v38 & 1))
  {
    v40 = sub_100039094();
    (*(v3 + 16))(v48, v40, v2);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109376;
      *(v43 + 4) = v36;
      *(v43 + 8) = 1024;
      *(v43 + 10) = v38 & 1;
      _os_log_impl(&_mh_execute_header, v41, v42, "Intelligence Manager Enabled: %{BOOL}d -> %{BOOL}d", v43, 0xEu);
    }

    (*(v3 + 8))(v48, v2);
    v1[114] = v38 & 1;
  }

  sub_10006CA8C();
}

void sub_10006CA8C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 336))(v5);
  v9 = [v8 firstUnlocked];

  if (v9)
  {
    v10 = *(v1 + 112);
    v11 = sub_10000CBC4();
    v12 = *v11;
    v13 = swift_isaMask & **v11;
    if (v10 == 1)
    {
      v14 = *((swift_isaMask & **v11) + 0xF8);
      v15 = v12;
      v14();

      sub_10006B0F8();
    }

    else
    {
      v20 = *((swift_isaMask & **v11) + 0x100);
      v21 = v12;
      v20();

      v22 = (*(*v1 + 440))();
      if (v22)
      {
        v23 = v22;
        (*((swift_isaMask & *v22) + 0x1A0))();
      }

      (*(*v1 + 448))(0);
      v24 = v1[5];
      v1[4] = 0;
      v1[5] = 0;
    }

    if (*(v1 + 113) == 1)
    {
      v25 = sub_10006B91C();
    }

    else
    {
      v25 = sub_10006BB6C();
    }

    v26 = *v1;
    if (*(v1 + 114) == 1)
    {
      (*(v26 + 544))(v25);
    }

    else
    {
      (*(v26 + 552))(v25);
    }

    v27 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler;
    if (!*(v1 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__osStateHandler))
    {
      v28 = v1[2];
      aBlock[4] = sub_10006D95C;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10006CEC4;
      aBlock[3] = &unk_10008C7C0;
      v29 = _Block_copy(aBlock);

      v30 = os_state_add_handler();
      _Block_release(v29);
      *(v1 + v27) = v30;
    }

    sub_10006C1B8();
    sub_10006D3E4();
  }

  else
  {
    v16 = sub_100039094();
    (*(v3 + 16))(v7, v16, v2);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Bluetooth User Daemon waiting for first unlock...", v19, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_10006CEC4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

uint64_t sub_10006CF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = static SystemVersionNumber.< infix(_:_:)(a1, a2);
  v13 = sub_100039094();
  v14 = *(v5 + 16);
  if (v12)
  {
    v14(v11, v13, v4);
    sub_10000A4A4(a1, v22);
    sub_10000A4A4(a2, v22);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_10000A4DC(a1);
    sub_10000A4DC(a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000034B8(*a1, *(a1 + 8), v22);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1000034B8(*a2, *(a2 + 8), v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Migrating from %s to %s", v17, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    v14(v9, v13, v4);
    sub_10000A4A4(a1, v22);
    sub_10000A4A4(a2, v22);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    sub_10000A4DC(a1);
    sub_10000A4DC(a2);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_1000034B8(*a1, *(a1 + 8), v22);
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_1000034B8(*a2, *(a2 + 8), v22);
      _os_log_impl(&_mh_execute_header, v19, v20, "Back-migrating from %s to %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_10006D26C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039094();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "First launch since boot...", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  result = swift_beginAccess();
  byte_100098B60 = 1;
  return result;
}

void sub_10006D3E4()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer;
  if (!*(v0 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon__xpcServer))
  {
    type metadata accessor for BluetoothUserXPCServer();
    v2 = v0;
    v3 = sub_10005D0A0(*(v0 + 16));
    v4 = *((swift_isaMask & *v3) + 0x78);

    v4(v5);
    v6 = *(v2 + v1);
    *(v2 + v1) = v3;
    v7 = v3;

    (*((swift_isaMask & *v7) + 0xD8))();
  }
}

uint64_t sub_10006D4FC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 96);

  v4 = *(v0 + 104);

  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd19BluetoothUserDaemon_keyValueStoreChangeSubscription, &qword_100094A28, &qword_100075390);

  return v0;
}

uint64_t sub_10006D58C()
{
  sub_10006D4FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006D714(char a1)
{
  v3 = *v1;
  sub_10006C4B8();
  result = (*(*v3 + 480))();
  if (result)
  {
    sub_100011A2C(a1);
  }

  return result;
}

uint64_t type metadata accessor for BluetoothUserDaemon()
{
  result = qword_100098990;
  if (!qword_100098990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006D808()
{
  sub_10006D8F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10006D8F8()
{
  if (!qword_100094A58)
  {
    sub_10000C9B0(&qword_100092FA8, &unk_100075380);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100094A58);
    }
  }
}

void sub_10006D95C()
{
  (*(*v0 + 392))();
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  v18 = 0;
  v3 = [v1 dataWithPropertyList:v2 format:200 options:0 error:&v18];

  v4 = v18;
  if (!v3)
  {
    v10 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v7);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v12 = *(v5 + 16);
  v11 = *(v5 + 24);
  v13 = __OFSUB__(v11, v12);
  v9 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_10:
    LODWORD(v9) = HIDWORD(v5) - v5;
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v9 = v9;
  }

LABEL_13:
  if (__OFADD__(v9, 200))
  {
    __break(1u);
    goto LABEL_36;
  }

  v14 = calloc(v9 + 200, 1uLL);
  if (!v14)
  {
    sub_1000066CC(v5, v7);
    return;
  }

  *v14 = 1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
LABEL_31:
      *(v14 + 1) = 0;
      goto LABEL_32;
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    v13 = __OFSUB__(v15, v16);
    v17 = v15 - v16;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v8)
  {
    *(v14 + 1) = BYTE6(v7);
LABEL_32:
    strcpy(v14 + 136, "BluetoothUserDaemon State");
LABEL_34:
    Data.copyBytes(to:count:)();
    sub_1000066CC(v5, v7);
    return;
  }

  LODWORD(v17) = HIDWORD(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v17 = v17;
LABEL_25:
  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (HIDWORD(v17))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v14 + 1) = v17;
  strcpy(v14 + 136, "BluetoothUserDaemon State");
  if (v8 == 2)
  {
    if (!__OFSUB__(*(v5 + 24), *(v5 + 16)))
    {
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v5), v5))
  {
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_10006DBC4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100039094();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Invalidated", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_10006DD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006DD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100094A28, &qword_100075390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10006DE04()
{
  v0 = type metadata accessor for BluetoothUserDaemon();
  memset(v1, 0, sizeof(v1));
  sub_100067E54(v1, v1, v0, &off_10008C790);
  sub_10006C4B8();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

Swift::String_optional __swiftcall NSScanner.scanCharacter()()
{
  v0 = NSScanner.scanCharacter()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}