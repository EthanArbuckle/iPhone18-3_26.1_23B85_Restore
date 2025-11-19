uint64_t sub_10005C7D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C828(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v12 = *(v1 + 120);
  v13 = *(v1 + 128);
  v10 = *(v1 + 88);
  v11 = *(v1 + 104);
  v8 = *(v1 + 56);
  v9 = *(v1 + 72);
  return sub_100057EA8(a1, *(v1 + 136), *(v1 + 144)) & 1;
}

uint64_t sub_10005C87C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C8BC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10005C960()
{
  result = qword_100091A68;
  if (!qword_100091A68)
  {
    type metadata accessor for CKSyncEngine.Configuration();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091A68);
  }

  return result;
}

unint64_t sub_10005C9C8()
{
  result = qword_100091AC8;
  if (!qword_100091AC8)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091AC8);
  }

  return result;
}

uint64_t sub_10005CA20(uint64_t a1)
{
  *(a1 + 8) = sub_10005CA88(&qword_1000916D0);
  result = sub_10005CA88(&qword_1000916E0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10005CA88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKSyncEngine.State.Serialization();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10005CACC()
{
  v0 = type metadata accessor for KeyRetriever();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - v8;
  KeyRetriever.init()();
  v10 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v6, v9, v0);
  v11 = sub_100062928(0x656C707041, 0xE500000000000000, v6, v10);
  result = (*(v1 + 8))(v9, v0);
  qword_100092F18 = v11;
  return result;
}

id sub_10005CC64()
{
  v0 = type metadata accessor for KeyRetriever();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = __chkstk_darwin(v0, v3);
  v6 = &token - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &token - v8;
  v10 = [objc_opt_self() currentConnection];
  if (!v10)
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100020D2C(v19, qword_100092EC8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get the current XPC connection", v22, 2u);
    }

    goto LABEL_14;
  }

  v11 = v10;
  [v10 auditToken];
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (!v12 || (v13 = sub_10005CF60(), !v14))
  {
    String.utf8CString.getter();
    v17 = os_variant_allows_internal_security_policies();

    if (v17)
    {
      v15 = sub_10005D144();
      v16 = v18;

      goto LABEL_7;
    }

LABEL_14:
    v15 = 0;
    v16 = 0;
    goto LABEL_15;
  }

  v15 = v13;
  v16 = v14;
LABEL_7:

LABEL_15:
  KeyRetriever.init()();
  v23 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v6, v9, v0);
  v24 = sub_100062928(v15, v16, v6, v23);
  (*(v1 + 8))(v9, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v24;
}

uint64_t sub_10005CF60()
{
  v14 = 0;
  v0 = SecTaskCopyTeamIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100020D2C(v3, qword_100092EC8);
    v4 = v14;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      sub_100020818(&qword_100091B90, &unk_10006E4A0);
      v9 = Optional.debugDescription.getter();
      v11 = sub_100033140(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from SecTask: %{public}s", v7, 0xCu);
      sub_1000208BC(v8);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10005D144()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_100062C3C(v11);
  }

  if (qword_100090D20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100020D2C(v4, qword_100092EC8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from connection entitlements", v7, 2u);
  }

  return 0;
}

Class sub_10005D330(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  sub_100062BE8();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  sub_10005D3F4(v6, v7, a4);

  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_10005D3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v15 = &_swiftEmptySetSingleton;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v14 = *(*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    sub_100020CD8(v14, *(&v14 + 1));
    sub_10005D53C(&v15, &v14, a2, a3);
    v9 &= v9 - 1;
    sub_100020D78(v14, *(&v14 + 1));
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v15;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_100020D78(v14, *(&v14 + 1));

  __break(1u);
  return result;
}

uint64_t sub_10005D53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v8 = sub_100020818(&qword_100091B80, &unk_10006E488);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v30 - v12;
  sub_100020CD8(*a2, *(a2 + 8));
  Token.init(data:)();
  if (!*(a3 + OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder))
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100020D2C(v26, qword_100092EC8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to create token decoder", v29, 2u);

      return (*(v9 + 8))(v13, v8);
    }

    return (*(v9 + 8))(v13, v8);
  }

  v14 = *(a3 + OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder);

  v15 = a4(v13);
  if (!v4)
  {
    sub_10005E9F8(v32, v15, v16);

    return (*(v9 + 8))(v13, v8);
  }

  if (qword_100090D20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100020D2C(v17, qword_100092EC8);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v20 = 136446210;
    v32[3] = v4;
    swift_errorRetain();
    sub_100020818(&qword_100091370, &qword_10006D390);
    v21 = String.init<A>(describing:)();
    v31 = v8;
    v23 = v9;
    v24 = sub_100033140(v21, v22, v32);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to decode token: %{public}s", v20, 0xCu);
    sub_1000208BC(v30);

    return (*(v23 + 8))(v13, v31);
  }

  else
  {

    return (*(v9 + 8))(v13, v8);
  }
}

Class sub_10005D9A0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a1;
  a4(v6);

  sub_100062BE8();
  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

uint64_t sub_10005DA60(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v25 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_10005DD38(v14, v15, v2, a2);
      v18 = v17;

      if (v18 >> 60 != 15)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000468F0(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v21 = *(v25 + 2);
    v20 = *(v25 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_1000468F0((v20 > 1), v21 + 1, 1, v25);
      v22 = v21 + 1;
      v25 = result;
    }

    *(v25 + 2) = v22;
    v23 = &v25[16 * v21];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v9)
    {

      v24 = sub_100062B4C(v25);

      return v24;
    }

    v8 = *(v5 + 8 * v19);
    ++v11;
    if (v8)
    {
      v11 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Class sub_10005DC80(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  v10 = sub_10005DD38(v6, v8, v9, a4);
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100020D64(v10, v12);
    v13 = isa;
  }

  return v13;
}

uint64_t sub_10005DD38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = sub_100020818(&qword_100091B80, &unk_10006E488);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v20 - v12;
  if (*(a3 + OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_encoder))
  {

    a4(a1, a2);
    v18 = Token.data.getter();

    (*(v9 + 8))(v13, v8);
    return v18;
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100020D2C(v14, qword_100092EC8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to create token encoder", v17, 2u);
    }

    return 0;
  }
}

id sub_10005E0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenCoder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005E158(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application);
  v37 = a2;
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BD0, &type metadata accessor for Application);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_100060398(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_10005E438(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory);
  v37 = a2;
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BB8, &type metadata accessor for ActivityCategory);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_100060660(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_10005E718(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain);
  v37 = a2;
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BA0, &type metadata accessor for WebDomain);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
    sub_100060928(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_10005E9F8(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_100060BF0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10005EB48(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_141:
    v75 = *v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *__s1 = *v84;
    sub_100020CD8(a2, a3);
    sub_100060D70(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v84 = *__s1;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = a3 >> 62;
  if (a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3 == 0xC000000000000000;
  }

  v15 = !v14;
  v90 = v15;
  v16 = __OFSUB__(HIDWORD(a2), a2);
  v87 = v16;
  v86 = v6;
  v82 = (a2 >> 32) - a2;
  v83 = a2 >> 32;
  v88 = v6 + 56;
  v89 = v12;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v18 == 0xC000000000000000;
      }

      v23 = !v21 || a3 >> 62 != 3;
      if (((v23 | v90) & 1) == 0)
      {
        v77 = 0;
        v78 = 0xC000000000000000;
LABEL_142:
        sub_100020D78(v77, v78);
LABEL_143:
        v79 = *(*(v6 + 48) + 16 * v11);
        *a1 = v79;
        sub_100020CD8(v79, *(&v79 + 1));
        return 0;
      }

LABEL_36:
      v24 = 0;
      if (v13 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_147;
      }

      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_146;
      }

      v24 = v24;
      if (v13 <= 1)
      {
LABEL_33:
        v28 = BYTE6(a3);
        if (v13)
        {
          v28 = HIDWORD(a2) - a2;
          if (v87)
          {
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
LABEL_160:
            __break(1u);
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
LABEL_166:
            __break(1u);
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v13 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v13 != 2)
    {
      if (!v24)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v30 = *(a2 + 16);
    v29 = *(a2 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_145;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_140;
    }

    if (v20 > 1)
    {
      break;
    }

    if (v20)
    {
      if (v19 > v19 >> 32)
      {
        goto LABEL_148;
      }

      sub_100020CD8(v19, v18);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = v41;
        v43 = __DataStorage._offset.getter();
        if (__OFSUB__(v19, v43))
        {
          goto LABEL_150;
        }

        v40 = (v19 - v43 + v42);
      }

      else
      {
        v40 = 0;
      }

      __DataStorage._length.getter();
      v12 = v89;
      if (v13 == 2)
      {
        v68 = *(a2 + 16);
        v81 = *(a2 + 24);
        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v69 = __DataStorage._offset.getter();
          if (__OFSUB__(v68, v69))
          {
            goto LABEL_164;
          }

          v50 += v68 - v69;
        }

        v27 = __OFSUB__(v81, v68);
        v70 = v81 - v68;
        if (v27)
        {
          goto LABEL_160;
        }

        result = __DataStorage._length.getter();
        if (result >= v70)
        {
          v53 = v70;
        }

        else
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_176;
        }

        v9 = v88;
        v12 = v89;
        if (!v50)
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v13 != 1)
        {
          v9 = v88;
          *__s1 = a2;
          *&__s1[8] = a3;
          __s1[10] = BYTE2(a3);
          __s1[11] = BYTE3(a3);
          __s1[12] = BYTE4(a3);
          __s1[13] = BYTE5(a3);
          if (!v40)
          {
            goto LABEL_171;
          }

          goto LABEL_138;
        }

        if (v83 < a2)
        {
          goto LABEL_159;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v54 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v54))
          {
            goto LABEL_166;
          }

          v50 += a2 - v54;
        }

        result = __DataStorage._length.getter();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_180;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_179;
        }
      }

      goto LABEL_135;
    }

    *__s1 = v19;
    *&__s1[8] = v18;
    __s1[10] = BYTE2(v18);
    __s1[11] = BYTE3(v18);
    __s1[12] = BYTE4(v18);
    __s1[13] = BYTE5(v18);
    if (!v13)
    {
      goto LABEL_69;
    }

    if (v13 == 1)
    {
      if (v83 < a2)
      {
        goto LABEL_152;
      }

      sub_100020CD8(v19, v18);
      v31 = __DataStorage._bytes.getter();
      if (!v31)
      {
        goto LABEL_174;
      }

      v32 = v31;
      v33 = __DataStorage._offset.getter();
      if (__OFSUB__(a2, v33))
      {
        goto LABEL_156;
      }

      v34 = (a2 - v33 + v32);
      v35 = __DataStorage._length.getter();
      if (!v34)
      {
        goto LABEL_172;
      }

      goto LABEL_109;
    }

    v56 = *(a2 + 16);
    v55 = *(a2 + 24);
    sub_100020CD8(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v57 = __DataStorage._offset.getter();
      if (__OFSUB__(v56, v57))
      {
        goto LABEL_161;
      }

      v46 += v56 - v57;
    }

    v27 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    if (v27)
    {
      goto LABEL_153;
    }

    v49 = __DataStorage._length.getter();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_170;
    }

LABEL_100:
    if (v49 >= v48)
    {
      v58 = v48;
    }

    else
    {
      v58 = v49;
    }

    v59 = memcmp(__s1, v46, v58);
    sub_100020D78(v19, v18);
    v9 = v88;
    v12 = v89;
    if (!v59)
    {
LABEL_140:
      v77 = a2;
      v78 = a3;
      goto LABEL_142;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_141;
    }
  }

  if (v20 == 2)
  {
    v36 = *(v19 + 16);
    sub_100020CD8(v19, v18);
    v37 = __DataStorage._bytes.getter();
    if (v37)
    {
      v38 = v37;
      v39 = __DataStorage._offset.getter();
      if (__OFSUB__(v36, v39))
      {
        goto LABEL_149;
      }

      v40 = (v36 - v39 + v38);
    }

    else
    {
      v40 = 0;
    }

    __DataStorage._length.getter();
    v12 = v89;
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        if (v83 < a2)
        {
          goto LABEL_155;
        }

        v50 = __DataStorage._bytes.getter();
        if (v50)
        {
          v51 = __DataStorage._offset.getter();
          if (__OFSUB__(a2, v51))
          {
            goto LABEL_165;
          }

          v50 += a2 - v51;
        }

        result = __DataStorage._length.getter();
        v53 = (a2 >> 32) - a2;
        if (result < v82)
        {
          v53 = result;
        }

        if (!v40)
        {
          goto LABEL_178;
        }

        v9 = v88;
        if (!v50)
        {
          goto LABEL_177;
        }

        goto LABEL_135;
      }

      v9 = v88;
      *__s1 = a2;
      *&__s1[8] = a3;
      __s1[10] = BYTE2(a3);
      __s1[11] = BYTE3(a3);
      __s1[12] = BYTE4(a3);
      __s1[13] = BYTE5(a3);
      if (!v40)
      {
        goto LABEL_169;
      }

LABEL_138:
      v73 = __s1;
      v72 = v40;
      v71 = BYTE6(a3);
LABEL_139:
      v74 = memcmp(v72, v73, v71);
      sub_100020D78(v19, v18);
      v6 = v86;
      if (!v74)
      {
        goto LABEL_140;
      }

      goto LABEL_13;
    }

    v65 = *(a2 + 16);
    v80 = *(a2 + 24);
    v50 = __DataStorage._bytes.getter();
    if (v50)
    {
      v66 = __DataStorage._offset.getter();
      if (__OFSUB__(v65, v66))
      {
        goto LABEL_163;
      }

      v50 += v65 - v66;
    }

    v27 = __OFSUB__(v80, v65);
    v67 = v80 - v65;
    if (v27)
    {
      goto LABEL_158;
    }

    result = __DataStorage._length.getter();
    if (result >= v67)
    {
      v53 = v67;
    }

    else
    {
      v53 = result;
    }

    if (!v40)
    {
      goto LABEL_182;
    }

    v9 = v88;
    v12 = v89;
    if (!v50)
    {
      goto LABEL_181;
    }

LABEL_135:
    if (v40 == v50)
    {
      sub_100020D78(v19, v18);
      sub_100020D78(a2, a3);
      v6 = v86;
      goto LABEL_143;
    }

    v71 = v53;
    v72 = v40;
    v73 = v50;
    goto LABEL_139;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v13)
  {
LABEL_69:
    __s2 = a2;
    v92 = a3;
    v93 = BYTE2(a3);
    v94 = BYTE3(a3);
    v95 = BYTE4(a3);
    v96 = BYTE5(a3);
    if (!memcmp(__s1, &__s2, BYTE6(a3)))
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  if (v13 == 2)
  {
    v45 = *(a2 + 16);
    v44 = *(a2 + 24);
    sub_100020CD8(v19, v18);
    v46 = __DataStorage._bytes.getter();
    if (v46)
    {
      v47 = __DataStorage._offset.getter();
      if (__OFSUB__(v45, v47))
      {
        goto LABEL_162;
      }

      v46 += v45 - v47;
    }

    v27 = __OFSUB__(v44, v45);
    v48 = v44 - v45;
    if (v27)
    {
      goto LABEL_154;
    }

    v49 = __DataStorage._length.getter();
    v6 = v86;
    if (!v46)
    {
      goto LABEL_173;
    }

    goto LABEL_100;
  }

  if (v83 < a2)
  {
    goto LABEL_151;
  }

  sub_100020CD8(v19, v18);
  v60 = __DataStorage._bytes.getter();
  if (v60)
  {
    v61 = v60;
    v62 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v62))
    {
      goto LABEL_157;
    }

    v34 = (a2 - v62 + v61);
    v35 = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_168;
    }

LABEL_109:
    if (v35 >= v82)
    {
      v63 = (a2 >> 32) - a2;
    }

    else
    {
      v63 = v35;
    }

    v64 = memcmp(__s1, v34, v63);
    sub_100020D78(v19, v18);
    v9 = v88;
    if (!v64)
    {
      goto LABEL_140;
    }

    goto LABEL_13;
  }

  __DataStorage._length.getter();
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
LABEL_174:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_10005F4C4(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for Application();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BD8, &unk_10006E4C0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_10005F820(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for ActivityCategory();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BC0, &qword_10006E4B8);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_10005FB7C(uint64_t a1)
{
  v2 = v1;
  v42 = type metadata accessor for WebDomain();
  v4 = *(v42 - 8);
  v5 = v4[8];
  __chkstk_darwin(v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BA8, &qword_10006E4B0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_10005FED8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100020818(&qword_100091B88, &qword_10006E498);
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

uint64_t sub_100060138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100020818(&qword_100091B78, &qword_10006E480);
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
      Data.hash(into:)();
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

uint64_t sub_100060398(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for Application();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
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
    sub_10005F4C4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100061670(&type metadata accessor for Application, &qword_100091BD8, &unk_10006E4C0);
      goto LABEL_12;
    }

    sub_100061B60(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BD0, &type metadata accessor for Application);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100060660(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for ActivityCategory();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
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
    sub_10005F820(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100061670(&type metadata accessor for ActivityCategory, &qword_100091BC0, &qword_10006E4B8);
      goto LABEL_12;
    }

    sub_100061E7C(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BB8, &type metadata accessor for ActivityCategory);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100060928(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for WebDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
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
    sub_10005FB7C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100061670(&type metadata accessor for WebDomain, &qword_100091BA8, &qword_10006E4B0);
      goto LABEL_12;
    }

    sub_100062198(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      sub_100062CA4(&qword_100091BA0, &type metadata accessor for WebDomain);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100060BF0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_10005FED8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000618A8();
      goto LABEL_16;
    }

    sub_1000624B4(v8 + 1);
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

Swift::Int sub_100060D70(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_143;
  }

  if (a4)
  {
    sub_100060138(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100061A04();
      goto LABEL_143;
    }

    sub_1000626EC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  result = Hasher._finalize()();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  a3 = result & ~v13;
  if (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
LABEL_143:
    v71 = *v80;
    *(*v80 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v72 = (*(v71 + 48) + 16 * a3);
    *v72 = v7;
    v72[1] = a2;
    v73 = *(v71 + 16);
    v30 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (!v30)
    {
      *(v71 + 16) = v74;
      return result;
    }

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
LABEL_160:
    __break(1u);
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
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
  }

  v14 = ~v13;
  v15 = a2 >> 62;
  if (v7)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v84 = v17;
  v79 = v10;
  v18 = __OFSUB__(HIDWORD(v7), v7);
  v81 = v18;
  v77 = (v7 >> 32) - v7;
  v78 = v7 >> 32;
  v82 = v14;
  v83 = v10 + 56;
  while (1)
  {
    v19 = (*(v10 + 48) + 16 * a3);
    v21 = *v19;
    v20 = v19[1];
    v22 = v20 >> 62;
    if (v20 >> 62 == 3)
    {
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || a2 >> 62 != 3;
      if (((v25 | v84) & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }

    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_32;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      v30 = __OFSUB__(v36, v37);
      v26 = v36 - v37;
      if (v30)
      {
        goto LABEL_147;
      }
    }

    else if (v22)
    {
      LODWORD(v26) = HIDWORD(v21) - v21;
      if (__OFSUB__(HIDWORD(v21), v21))
      {
        goto LABEL_148;
      }

      v26 = v26;
    }

    else
    {
      v26 = BYTE6(v20);
    }

LABEL_33:
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (!v26)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v29 = *(v7 + 16);
      v28 = *(v7 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_145;
      }
    }

    else
    {
      v27 = BYTE6(a2);
      if (v15)
      {
        v27 = HIDWORD(v7) - v7;
        if (v81)
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }
      }
    }

    if (v26 == v27)
    {
      break;
    }

LABEL_20:
    a3 = (a3 + 1) & v14;
    if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_185;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      *__s1 = v21;
      *&__s1[8] = v20;
      __s1[10] = BYTE2(v20);
      __s1[11] = BYTE3(v20);
      __s1[12] = BYTE4(v20);
      __s1[13] = BYTE5(v20);
      if (!v15)
      {
        goto LABEL_97;
      }

      if (v15 == 1)
      {
        if (v78 < v7)
        {
          goto LABEL_152;
        }

        sub_100020CD8(v21, v20);
        v31 = __DataStorage._bytes.getter();
        if (!v31)
        {
          goto LABEL_175;
        }

        v32 = v31;
        v33 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v33))
        {
          goto LABEL_158;
        }

        v34 = v7 - v33 + v32;
        v35 = __DataStorage._length.getter();
        if (!v34)
        {
          goto LABEL_174;
        }

LABEL_111:
        if (v35 >= v77)
        {
          v56 = (v7 >> 32) - v7;
        }

        else
        {
          v56 = v35;
        }

LABEL_114:
        v60 = __s1;
        v61 = v34;
LABEL_140:
        v70 = memcmp(v60, v61, v56);
        result = sub_100020D78(v21, v20);
LABEL_141:
        v14 = v82;
        v12 = v83;
        if (!v70)
        {
          goto LABEL_185;
        }

        goto LABEL_20;
      }

      v54 = *(v7 + 16);
      v53 = *(v7 + 24);
      sub_100020CD8(v21, v20);
      v34 = __DataStorage._bytes.getter();
      if (v34)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_162;
        }

        v34 += v54 - v55;
      }

      v30 = __OFSUB__(v53, v54);
      v51 = v53 - v54;
      if (v30)
      {
        goto LABEL_156;
      }

      v52 = __DataStorage._length.getter();
      v10 = v79;
      if (!v34)
      {
        goto LABEL_172;
      }

LABEL_104:
      if (v52 >= v51)
      {
        v56 = v51;
      }

      else
      {
        v56 = v52;
      }

      goto LABEL_114;
    }

    if (v21 > v21 >> 32)
    {
      goto LABEL_149;
    }

    sub_100020CD8(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v45 = __DataStorage._offset.getter();
      if (__OFSUB__(v21, v45))
      {
        goto LABEL_151;
      }

      v39 += v21 - v45;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v66 = *(v7 + 16);
      v76 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v67 = __DataStorage._offset.getter();
        if (__OFSUB__(v66, v67))
        {
          goto LABEL_166;
        }

        v41 += v66 - v67;
      }

      v30 = __OFSUB__(v76, v66);
      v68 = v76 - v66;
      if (v30)
      {
        goto LABEL_161;
      }

      v69 = __DataStorage._length.getter();
      if (v69 >= v68)
      {
        v44 = v68;
      }

      else
      {
        v44 = v69;
      }

      if (!v39)
      {
        goto LABEL_177;
      }

      if (!v41)
      {
        goto LABEL_176;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_160;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v46 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v46))
        {
          goto LABEL_167;
        }

        v41 += v7 - v46;
      }

      v47 = __DataStorage._length.getter();
      v44 = (v7 >> 32) - v7;
      if (v47 < v77)
      {
        v44 = v47;
      }

      if (!v39)
      {
        goto LABEL_181;
      }

      if (!v41)
      {
        goto LABEL_180;
      }

      goto LABEL_136;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_173;
    }

    goto LABEL_139;
  }

  if (v22 == 2)
  {
    v38 = *(v21 + 16);
    sub_100020CD8(v21, v20);
    v39 = __DataStorage._bytes.getter();
    if (v39)
    {
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v38, v40))
      {
        goto LABEL_150;
      }

      v39 += v38 - v40;
    }

    __DataStorage._length.getter();
    if (v15 == 2)
    {
      v62 = *(v7 + 16);
      v75 = *(v7 + 24);
      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v62, v63))
        {
          goto LABEL_164;
        }

        v41 += v62 - v63;
      }

      v30 = __OFSUB__(v75, v62);
      v64 = v75 - v62;
      if (v30)
      {
        goto LABEL_159;
      }

      v65 = __DataStorage._length.getter();
      if (v65 >= v64)
      {
        v44 = v64;
      }

      else
      {
        v44 = v65;
      }

      if (!v39)
      {
        goto LABEL_183;
      }

      if (!v41)
      {
        goto LABEL_182;
      }

      goto LABEL_136;
    }

    if (v15 == 1)
    {
      if (v78 < v7)
      {
        goto LABEL_155;
      }

      v41 = __DataStorage._bytes.getter();
      if (v41)
      {
        v42 = __DataStorage._offset.getter();
        if (__OFSUB__(v7, v42))
        {
          goto LABEL_165;
        }

        v41 += v7 - v42;
      }

      v43 = __DataStorage._length.getter();
      v44 = (v7 >> 32) - v7;
      if (v43 < v77)
      {
        v44 = v43;
      }

      if (!v39)
      {
        goto LABEL_179;
      }

      if (!v41)
      {
        goto LABEL_178;
      }

LABEL_136:
      if (v39 == v41)
      {
        goto LABEL_184;
      }

      v70 = memcmp(v39, v41, v44);
      result = sub_100020D78(v21, v20);
      v10 = v79;
      goto LABEL_141;
    }

    *__s1 = v7;
    *&__s1[8] = a2;
    __s1[10] = BYTE2(a2);
    __s1[11] = BYTE3(a2);
    __s1[12] = BYTE4(a2);
    __s1[13] = BYTE5(a2);
    if (!v39)
    {
      goto LABEL_170;
    }

LABEL_139:
    v61 = __s1;
    v60 = v39;
    v56 = BYTE6(a2);
    goto LABEL_140;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v15)
  {
LABEL_97:
    __s2 = v7;
    v86 = a2;
    v87 = BYTE2(a2);
    v88 = BYTE3(a2);
    v89 = BYTE4(a2);
    v90 = BYTE5(a2);
    result = memcmp(__s1, &__s2, BYTE6(a2));
    if (!result)
    {
      goto LABEL_185;
    }

    goto LABEL_20;
  }

  if (v15 == 2)
  {
    v49 = *(v7 + 16);
    v48 = *(v7 + 24);
    sub_100020CD8(v21, v20);
    v34 = __DataStorage._bytes.getter();
    if (v34)
    {
      v50 = __DataStorage._offset.getter();
      if (__OFSUB__(v49, v50))
      {
        goto LABEL_163;
      }

      v34 += v49 - v50;
    }

    v30 = __OFSUB__(v48, v49);
    v51 = v48 - v49;
    if (v30)
    {
      goto LABEL_154;
    }

    v52 = __DataStorage._length.getter();
    v10 = v79;
    if (!v34)
    {
      goto LABEL_171;
    }

    goto LABEL_104;
  }

  if (v78 < v7)
  {
    goto LABEL_153;
  }

  sub_100020CD8(v21, v20);
  v57 = __DataStorage._bytes.getter();
  if (v57)
  {
    v58 = v57;
    v59 = __DataStorage._offset.getter();
    if (__OFSUB__(v7, v59))
    {
      goto LABEL_157;
    }

    v34 = v7 - v59 + v58;
    v35 = __DataStorage._length.getter();
    if (!v34)
    {
      goto LABEL_169;
    }

    goto LABEL_111;
  }

  __DataStorage._length.getter();
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
LABEL_174:
  __break(1u);
LABEL_175:
  __DataStorage._length.getter();
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  sub_100020D78(v21, v20);
LABEL_185:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100061670(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v28 - v11;
  sub_100020818(a2, a3);
  v13 = *v3;
  v14 = static _SetStorage.copy(original:)();
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

void *sub_1000618A8()
{
  v1 = v0;
  sub_100020818(&qword_100091B88, &qword_10006E498);
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

void *sub_100061A04()
{
  v1 = v0;
  sub_100020818(&qword_100091B78, &qword_10006E480);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100020CD8(v18, *(&v18 + 1));
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

uint64_t sub_100061B60(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for Application();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BD8, &unk_10006E4C0);
  v11 = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091BC8, &type metadata accessor for Application);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100061E7C(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for ActivityCategory();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BC0, &qword_10006E4B8);
  v11 = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091BB0, &type metadata accessor for ActivityCategory);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100062198(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for WebDomain();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100020818(&qword_100091BA8, &qword_10006E4B0);
  v11 = static _SetStorage.resize(original:capacity:move:)();
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
      sub_100062CA4(&qword_100091B98, &type metadata accessor for WebDomain);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_1000624B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100020818(&qword_100091B88, &qword_10006E498);
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

uint64_t sub_1000626EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100020818(&qword_100091B78, &qword_10006E480);
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
      sub_100020CD8(v19, v20);
      Data.hash(into:)();
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

id sub_100062928(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for KeyRetriever();
  v27[3] = v8;
  v27[4] = &protocol witness table for KeyRetriever;
  v9 = sub_1000283C4(v27);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  v10 = &a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_teamIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  if (a2)
  {
    sub_100020F40(v27, v25);
    v11 = type metadata accessor for TokenDecoder();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder] = TokenDecoder.init(teamIdentifier:keyRetriever:)();
    sub_100020F40(v27, v25);
    v14 = type metadata accessor for TokenEncoder();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = TokenEncoder.init(teamIdentifier:keyRetriever:)();
  }

  else
  {
    if (qword_100090D20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100020D2C(v18, qword_100092EC8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create token coder with nil team identifier", v21, 2u);
    }

    v17 = 0;
    *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_decoder] = 0;
  }

  *&a4[OBJC_IVAR____TtC18UsageTrackingAgent10TokenCoder_encoder] = v17;
  v22 = type metadata accessor for TokenCoder();
  v26.receiver = a4;
  v26.super_class = v22;
  v23 = objc_msgSendSuper2(&v26, "init");
  sub_1000208BC(v27);
  return v23;
}

uint64_t sub_100062B4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100062BE8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100020CD8(v6, *v4);
      sub_10005EB48(v7, v6, v5);
      sub_100020D78(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100062BE8()
{
  result = qword_100091B70;
  if (!qword_100091B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100091B70);
  }

  return result;
}

uint64_t sub_100062C3C(uint64_t a1)
{
  v2 = sub_100020818(&qword_100091360, &unk_10006D960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100062CA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100062D10()
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  v2 = Set._bridgeToObjectiveC()().super.isa;
  v3 = Set._bridgeToObjectiveC()().super.isa;
  type metadata accessor for Identifier(0);
  sub_1000637A8();
  v4 = Set._bridgeToObjectiveC()().super.isa;
  v5 = DateInterval._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v6 = [v0 queryForApplications:isa exemptApplications:v2 webDomains:v3 categories:v4 interval:v5 error:&v10];

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

uint64_t sub_100062E90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100062EB4, 0, 0);
}

uint64_t sub_100062EB4()
{
  v1 = v0[19];
  v2 = v0[20];
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FF38;
  v4 = swift_continuation_init();
  v0[17] = sub_100020818(&qword_100091BE8, &unk_10006E540);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100062FE8;
  v0[13] = &unk_100088018;
  v0[14] = v4;
  [v2 queryForUncategorizedLocalWebUsageDuringInterval:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100062FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100020908((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100020818(&qword_100091370, &qword_10006D390);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_100021848(0, &qword_1000914F0, NSNumber_ptr);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000630E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100029CC0;
  v18.n128_f64[0] = a8;

  return (sub_100063284)(a1, a2, a3, a4, a5, a6, a7, v18);
}

void sub_1000631E8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100063250(uint64_t a1)
{
  v1 = *sub_100020908((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100063284(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, objc_class *a7, objc_class *a8)
{
  v12 = *(*(sub_100020818(&qword_1000913D0, &qword_10006D9C0) - 8) + 64) + 15;
  v13 = swift_task_alloc();
  v8[24].super.isa = v13;
  v24.super.isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v8[25].super.isa = v24.super.isa;
  sub_100035814(a3, v13);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  isa = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v13, v14);
  }

  v8[26].super.isa = isa;
  v17 = Array._bridgeToObjectiveC()().super.isa;
  v8[27].super.isa = v17;
  sub_100021848(0, &qword_100090FB0, CTCategory_ptr);
  v18 = Dictionary._bridgeToObjectiveC()().super.isa;
  v8[28].super.isa = v18;
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;
  v8[29].super.isa = v19;
  v8[22].super.isa = a7;
  v8[23].super.isa = a8;
  v8[18].super.isa = _NSConcreteStackBlock;
  v8[19].super.isa = 1107296256;
  v8[20].super.isa = sub_1000631E8;
  v8[21].super.isa = &unk_100087FC8;
  v20 = _Block_copy(&v8[18]);
  v8[30].super.isa = v20;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[2].super.isa = v8;
  v8[3].super.isa = sub_1000635BC;
  v22 = swift_continuation_init();
  v8[17].super.isa = sub_100020818(&qword_100091BE0, &qword_10006E538);
  v8[14].super.isa = v22;
  v8[10].super.isa = _NSConcreteStackBlock;
  v8[11].super.isa = 1107296256;
  v8[12].super.isa = sub_100063250;
  v8[13].super.isa = &unk_100087FF0;

  [ObjCClassFromMetadata queryUsageDuringInterval:v24.super.isa partitionInterval:isa adjustedStartDate:v17 eventStreams:v18 categoryByBundleIdentifier:v19 categoryByWebDomain:v20 usageReportHandler:a1 completionHandler:&v8[10]];

  return _swift_continuation_await(&v8[2]);
}

uint64_t sub_1000635BC()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 216);
  v5 = *(*v0 + 208);
  v6 = *(*v0 + 200);
  v7 = *(*v0 + 192);
  v11 = *v0;
  _Block_release(*(*v0 + 240));

  v8 = *(v1 + 184);

  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_100063778(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000637A8()
{
  result = qword_100090EB0;
  if (!qword_100090EB0)
  {
    type metadata accessor for Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100090EB0);
  }

  return result;
}

void sub_100063828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"USBudgetRegistration.m" lineNumber:146 description:{@"Failed to find Application Support directory, %@", a3}];
}

void sub_10006389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[NSAssertionHandler currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"USBudgetRegistration.m" lineNumber:152 description:{@"Failed to create %@: %@", a3, a4}];
}

void sub_10006391C()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100063998(uint64_t *a1)
{
  sub_10000F1D4(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100063A14(uint64_t a1, id *a2)
{
  v2 = *(a1 + 40);
  v8 = [*a2 valueForKey:@"identifier"];
  sub_10000F1AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100063B1C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100063B94(uint64_t *a1, uint64_t a2)
{
  sub_10000F194(a1, a2, __stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063C0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(*(*a2 + 8) + 40);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_100063CA0(uint64_t *a1, uint64_t a2)
{
  sub_10000F194(a1, a2, __stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063D18(uint64_t *a1, uint64_t a2)
{
  sub_10000F194(a1, a2, __stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063D90(uint64_t *a1)
{
  sub_10000F1D4(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100063E0C(uint64_t *a1)
{
  sub_10000F1D4(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100063E88(void *a1)
{
  v1 = [a1 predicate];
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100063FA8(void *a1)
{
  [a1 count];
  sub_10000F1C8();
  sub_10000F1E0(&_mh_execute_header, &_os_log_default, v1, "Looking up %lu application categories to find all equivalent applications and web domain budgets that are associated with applications", v2);
}

void sub_1000640A0(void *a1)
{
  [a1 count];
  sub_10000F1C8();
  sub_10000F1E0(&_mh_execute_header, &_os_log_default, v1, "Looking up %lu web domain categories to find application budgets that are associated with web domains", v2);
}

void sub_100064118()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000641A8()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064220(uint64_t *a1, uint64_t a2)
{
  sub_10000F194(a1, a2, __stack_chk_guard);
  sub_10000F168();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100064298(uint64_t *a1)
{
  sub_10000F1D4(a1, __stack_chk_guard);
  v2 = 138543362;
  v3 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to get managed object ID for budget URI: %{public}@", &v2, 0xCu);
}

void sub_100064318()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100064394()
{
  sub_10000F1C8();
  sub_10000F1B8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000644B4(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to delete local data from iCloud: %{public}@", buf, 0xCu);
}

void sub_100064500()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064578(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000645F4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006466C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000646E4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006475C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000647D4(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierApplication]"}];
}

void sub_100064848()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000648C0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064938()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000649B0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064A28(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:672 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierWebDomain]"}];
}

void sub_100064A9C()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064B14()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064B8C(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:764 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierNowPlaying]"}];
}

void sub_100064C00()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064C78()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064CF0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064D68()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064DE0()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064E58()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100064ED0(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"USBudgetTracker.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"[registrationIdentifier isEqualToString:RegistrationIdentifierVideo]"}];
}

void sub_100064F44(uint64_t a1, void *a2)
{
  v7 = [a2 error];
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100064FEC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065064(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000650E4()
{
  sub_10000F1C8();
  v2 = 2082;
  v3 = v0;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to create budget URI from string: %{public}s for alarm: %{public}s", v1, 0x16u);
}

void sub_10006516C(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000651EC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065264()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000652DC()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100065354()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000653CC(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100065448(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000654C4(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100065540(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000655BC(uint64_t a1)
{
  sub_10001C65C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1000656B4()
{
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10006572C(void *a1)
{
  v1 = [a1 name];
  sub_10000F1C8();
  sub_10000F1AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000657BC(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138543362;
  *a3 = a2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to calculate threshold adjust time: %{public}@", buf, 0xCu);
}

void sub_100065808()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065880()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000658F8()
{
  sub_10001C624();
  sub_10000F1AC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100065970(void *a1)
{
  sub_10001C63C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1000659EC(void *a1)
{
  sub_10001C63C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100065A68(void *a1)
{
  sub_10001C63C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100065AE4(void *a1)
{
  sub_10001C63C(a1, __stack_chk_guard);
  sub_10000F180();
  sub_10001C64C();
  sub_10000F1AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_100065B60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100065BE0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100065C60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000F180();
  sub_10001C668();
  sub_10000F1AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100065CE0(void *a1, void *a2)
{
  v3 = [a1 threshold];
  v4 = [a2 name];
  v5 = [a2 clientIdentifier];
  sub_10001D080();
  v9 = v4;
  v10 = v6;
  v11 = v7;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute warning date for threshold: %{public}@ for %{public}@/%{public}@", v8, 0x20u);
}

void sub_100065DB4(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 clientIdentifier];
  sub_10001D080();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute next threshold date for %{public}@/%{public}@", v5, 0x16u);
}

void sub_100065E64(void *a1)
{
  v2 = [a1 name];
  v3 = [a1 clientIdentifier];
  sub_10001D080();
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not compute next interval for %{public}@/%{public}@", v5, 0x16u);
}

void sub_100065F28(uint64_t a1)
{
  v1 = *(*a1 + 40);
  v2 = 138412290;
  v3 = v1;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Recording the most uncategorized web domain of the day with DifferentialPrivacy: %@", &v2, 0xCu);
}

void sub_100065FF8(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to query uncategorized local web usage, %@", &v1, 0xCu);
}

void sub_100066078(uint64_t a1, void *a2)
{
  v2 = 138543618;
  v3 = a1;
  v4 = 1024;
  v5 = [a2 processIdentifier];
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%{public}@ connection received from process %d", &v2, 0x12u);
}

void sub_100066118(uint64_t a1)
{
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected Mach service name %@", &v1, 0xCu);
}

void sub_100066198(uint64_t a1)
{
  v1 = 138543618;
  v2 = a1;
  v3 = 2114;
  v4 = USUsageTrackingPrivateEntitlement;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}@ is missing the %{public}@ entitlement.", &v1, 0x16u);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DeviceActivityDataStore.localDeviceIdentifier()()
{
  v0 = DeviceActivityDataStore.localDeviceIdentifier()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}