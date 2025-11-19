uint64_t sub_1000CECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1000D0BF0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000CBA20(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1000D0D68();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1000D0A40(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1000CEDDC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B3894(v0, qword_1001E13A0);
  sub_1000A2B1C(v0, qword_1001E13A0);
  return Logger.init(subsystem:category:)();
}

void sub_1000CEE5C(void *a1)
{
  v2 = a1;
  v3 = [a1 type];
  if (!v3)
  {
LABEL_7:
    if (qword_1001DF140 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v22 = [v2 configurations];
  if (v22)
  {
    v23 = v22;
    sub_1000A0F74(0, &qword_1001E1478, STBlueprintConfiguration_ptr);
    sub_1000B3788(&qword_1001E1480, &qword_1001E1478, STBlueprintConfiguration_ptr);
    v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
    swift_beginAccess();
    v47 = v1;
    v50 = *(v1 + v25);
    if ((v24 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v26 = v51[0];
      v2 = v51[1];
      v27 = v51[2];
      v28 = v51[3];
      v29 = v51[4];
    }

    else
    {
      v37 = -1 << *(v24 + 32);
      v2 = (v24 + 56);
      v27 = ~v37;
      v38 = -v37;
      if (v38 < 64)
      {
        v39 = ~(-1 << v38);
      }

      else
      {
        v39 = -1;
      }

      v29 = v39 & *(v24 + 56);

      v28 = 0;
      v26 = v24;
    }

    v40 = (v27 + 64) >> 6;
    if (v26 < 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v41 = v28;
      v42 = v29;
      v43 = v28;
      if (!v29)
      {
        break;
      }

LABEL_31:
      v44 = (v42 - 1) & v42;
      v45 = *(*(v26 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v42)))));
      if (!v45)
      {
LABEL_37:
        sub_100003410();

        v46 = *(v47 + v25);
        *(v47 + v25) = v50;

        return;
      }

      while (1)
      {
        v49 = v45;
        sub_1000D2A9C(&v50, &v49);

        v28 = v43;
        v29 = v44;
        if ((v26 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_33:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v45 = v49;
          v43 = v28;
          v44 = v29;
          if (v49)
          {
            continue;
          }
        }

        goto LABEL_37;
      }
    }

    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v43 >= v40)
      {
        goto LABEL_37;
      }

      v42 = *(v2 + v43);
      ++v41;
      if (v42)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_39:
    swift_once();
LABEL_8:
    v11 = type metadata accessor for Logger();
    sub_1000A2B1C(v11, qword_1001E13A0);
    v12 = v2;
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51[0] = v15;
      *v14 = 136315138;
      v16 = [v12 identifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = sub_1000A2E68(v17, v19, v51);

      *(v14 + 4) = v20;
      v21 = "Not adding policies from %s because it is not a restrictions blueprint";
LABEL_18:
      _os_log_impl(&_mh_execute_header, oslog, v13, v21, v14, 0xCu);
      sub_1000A462C(v15);

      return;
    }

    goto LABEL_19;
  }

  if (qword_1001DF140 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000A2B1C(v30, qword_1001E13A0);
  v31 = v2;
  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51[0] = v15;
    *v14 = 136315138;
    v32 = [v31 identifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_1000A2E68(v33, v35, v51);

    *(v14 + 4) = v36;
    v21 = "Not adding policies from %s because it does not have any configurations";
    goto LABEL_18;
  }

LABEL_19:
}

id sub_1000CF4A0()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    result = [*(*(v2 + 56) + ((v9 << 9) | (8 * v10))) policy];
    if (result)
    {
      v11 = 1;
LABEL_13:

      return v11;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CF5B4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v72 = sub_1000CF4A0();
  sub_1000D072C(a3, &v85);
  if (v86)
  {
    sub_100004804(&v85, v87);
    v7 = v88;
    v8 = v89;
    sub_1000A9618(v87, v88);
    if ((*(v8 + 40))(v7, v8))
    {
      v9 = v88;
      v10 = v89;
      sub_1000A9618(v87, v88);
      AssociatedTypeWitness = (*(v10 + 32))(v9, v10);
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      AssociatedConformanceWitness = v15;

      sub_1000A462C(v87);
      goto LABEL_10;
    }

    sub_1000A462C(v87);
  }

  else
  {
    sub_1000A5148(&v85, &qword_1001E1468, &unk_100141B50);
  }

  AssociatedTypeWitness = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v17;
  sub_1000D072C(a3, v87);
  v18 = v88;
  if (v88)
  {
    v19 = v89;
    sub_1000A9618(v87, v88);
    v14 = (*(v19 + 32))(v18, v19);
    AssociatedConformanceWitness = v20;
    sub_1000A462C(v87);
  }

  else
  {
    sub_1000A5148(v87, &qword_1001E1468, &unk_100141B50);
    v14 = 0;
    AssociatedConformanceWitness = 0;
  }

LABEL_10:
  if (qword_1001DF140 != -1)
  {
LABEL_42:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000A2B1C(v21, qword_1001E13A0);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v75 = AssociatedTypeWitness;
  if (os_log_type_enabled(v22, v23))
  {
    v80 = a3;
    v24 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = sub_1000A2E68(AssociatedTypeWitness, v13, v87);
    *(v24 + 12) = 2082;
    if (AssociatedConformanceWitness)
    {
      v25 = v14;
    }

    else
    {
      v25 = 7104878;
    }

    v26 = a2;
    v27 = v4;
    v28 = AssociatedConformanceWitness;
    if (!AssociatedConformanceWitness)
    {
      AssociatedConformanceWitness = 0xE300000000000000;
    }

    v29 = v13;
    v30 = v14;
    v31 = sub_1000A2E68(v25, AssociatedConformanceWitness, v87);
    AssociatedConformanceWitness = v28;
    v4 = v27;
    a2 = v26;
    AssociatedTypeWitness = v75;

    *(v24 + 14) = v31;
    v14 = v30;
    v13 = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "currentContainerName: %{public}s, otherContainerName: %{public}s", v24, 0x16u);
    swift_arrayDestroy();

    a3 = v80;
  }

  else
  {
  }

  v32 = sub_1000D3078(AssociatedTypeWitness, v13, a1, a2);

  v33 = v4;
  v34 = sub_1000D34A4(v32, v33);

  v83 = v13;
  if (*(v34 + 16))
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v81 = a3;
      v37 = swift_slowAlloc();
      v77 = AssociatedConformanceWitness;
      v38 = swift_slowAlloc();
      v87[0] = v38;
      *v37 = 136315138;
      v39 = Set.description.getter();
      v41 = sub_1000A2E68(v39, v40, v87);

      *(v37 + 4) = v41;
      AssociatedTypeWitness = v75;
      v13 = v83;
      _os_log_impl(&_mh_execute_header, v35, v36, "Deleting web content filter stores: %s", v37, 0xCu);
      sub_1000A462C(v38);
      AssociatedConformanceWitness = v77;

      a3 = v81;
    }

    (*(a2 + 56))(v34, AssociatedTypeWitness, v13);
  }

  sub_1000D0078(a3);
  if (AssociatedConformanceWitness)
  {
    v42 = sub_1000D3078(v14, AssociatedConformanceWitness, a1, a2);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      a3 = swift_slowAlloc();
      v78 = AssociatedConformanceWitness;
      v45 = swift_slowAlloc();
      v87[0] = v45;
      *a3 = 136315138;
      v46 = Set.description.getter();
      AssociatedTypeWitness = v14;
      v48 = sub_1000A2E68(v46, v47, v87);

      *(a3 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Deleting web content filter stores in other container: %s", a3, 0xCu);
      sub_1000A462C(v45);
      AssociatedConformanceWitness = v78;
    }

    (*(a2 + 56))(v42, v14, AssociatedConformanceWitness);
  }

  v49 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
  swift_beginAccess();
  v50 = *&v33[v49];
  v51 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v13 = v53 & *(v50 + 64);
  v4 = ((v52 + 63) >> 6);
  v76 = v50;
  v79 = a2;

  v54 = 0;
  v73 = v4;
  v74 = v51;
  while (v13)
  {
    a2 = v79;
LABEL_38:
    v60 = __clz(__rbit64(v13)) | (v54 << 6);
    v61 = (*(v76 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    v64 = *(*(v76 + 56) + 8 * v60);
    swift_bridgeObjectRetain_n();
    a3 = v64;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v82 = v63;
      v69 = swift_slowAlloc();
      *&v85 = v69;
      *v67 = 136315394;
      *(v67 + 4) = sub_1000A2E68(v82, v62, &v85);
      *(v67 + 12) = 2112;
      *(v67 + 14) = a3;
      *v68 = a3;
      v70 = a3;
      _os_log_impl(&_mh_execute_header, v65, v66, "Applying web content filter policy for %s: %@", v67, 0x16u);
      sub_1000A5148(v68, &unk_1001E1820, &qword_100140020);

      sub_1000A462C(v69);
      v63 = v82;
    }

    v13 &= v13 - 1;
    v55 = *(a2 + 24);

    v55(v63, v62, v75, v83);
    swift_getObjectType();
    (*(a2 + 32))();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = AssociatedConformanceWitness + 16;
    v56 = *(AssociatedConformanceWitness + 16);
    v57 = a3;
    v58 = swift_checkMetadataState();
    v56(a3, v58, AssociatedConformanceWitness);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = v73;
    v51 = v74;
  }

  a2 = v79;
  while (1)
  {
    v59 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v59 >= v4)
    {
      break;
    }

    v13 = *(v51 + 8 * v59);
    ++v54;
    if (v13)
    {
      v54 = v59;
      goto LABEL_38;
    }
  }

  return v72 & 1;
}

uint64_t sub_1000D0078(uint64_t a1)
{
  sub_1000D072C(a1, &v13);
  if (!v14)
  {
    return sub_1000A5148(&v13, &qword_1001E1468, &unk_100141B50);
  }

  sub_100004804(&v13, v15);
  v1 = v16;
  v2 = v17;
  sub_1000A9618(v15, v16);
  if (((*(v2 + 40))(v1, v2) & 1) == 0)
  {
    if (qword_1001DF140 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000A2B1C(v3, qword_1001E13A0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Deleting legacy proto account store", v6, 2u);
    }

    v7 = v16;
    v8 = v17;
    sub_1000A9618(v15, v16);
    (*(v8 + 24))(v7, v8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = *(AssociatedConformanceWitness + 40);
    v11 = swift_checkMetadataState();
    v10(v11, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  return sub_1000A462C(v15);
}

id sub_1000D03D0()
{
  v0 = objc_allocWithZone(MOLocalSettingsStore);
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 initWithName:v1 sharedContainer:v2];

  return v3;
}

id sub_1000D04BC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 initWithName:v1 sharedContainer:v2];

  return v3;
}

id sub_1000D0560()
{
  v1 = [v0 webContent];

  return v1;
}

uint64_t sub_1000D05A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() storesForSharedContainer:v2];

  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1000D0624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4.super.isa = Set._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [swift_getObjCClassFromMetadata() deleteStoresWithStoreNames:v4.super.isa sharedContainer:v5];
}

void sub_1000D06C0(void *a1)
{
  [v1 setBlockedByFilter:a1];
}

uint64_t sub_1000D072C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E1468, &unk_100141B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D079C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000A0F2C(&qword_1001E14A0, qword_100141B70);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000D0A40(uint64_t result, uint64_t a2)
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

uint64_t sub_1000D0BF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000CBA20(a2, a3);
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
      sub_1000D079C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000CBA20(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_1000D0D68();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_1000D0D68()
{
  v1 = v0;
  sub_1000A0F2C(&qword_1001E14A0, qword_100141B70);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

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

uint64_t sub_1000D0EE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000A0F2C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1000D1108(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1000D118C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_1000D1594(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1000D12F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1000D1788(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000D146C(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    v9 = sub_1000D3304(v7, a2, a3, v8);

    return v9;
  }

  return result;
}

void *sub_1000D1504(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_1000D12F8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000D1594(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000A0F2C(&qword_1001DF558, &unk_10013F350);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1000D1788(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_1000A0F2C(&qword_1001E0238, &unk_100141B60);
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

uint64_t sub_1000D19AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000A0F2C(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

Swift::Int sub_1000D1BDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_1000A0F2C(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000A0F74(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1000D0EE8(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

uint64_t sub_1000D1DDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000D1BDC(v7, result + 1, &qword_1001DF548, &qword_10013F348, &qword_1001DF550, NSXPCConnection_ptr);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000D0EE8(v21 + 1, &qword_1001DF548, &qword_10013F348);
    }

    v19 = v8;
    sub_1000D1108(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000D22AC(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_1000D2044(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_1000D1BDC(v7, result + 1, &qword_1001E0248, qword_1001409A8, &qword_1001E1488, MOWebDomain_ptr);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_1000D0EE8(v21 + 1, &qword_1001E0248, qword_1001409A8);
    }

    v19 = v8;
    sub_1000D1108(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_1000D243C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

void sub_1000D22AC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000D0EE8(v6 + 1, &qword_1001DF548, &qword_10013F348);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000B6330();
      goto LABEL_12;
    }

    sub_1000D19AC(v6 + 1, &qword_1001DF548, &qword_10013F348);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000D243C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000D0EE8(v6 + 1, &qword_1001E0248, qword_1001409A8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1000B6344();
      goto LABEL_12;
    }

    sub_1000D19AC(v6 + 1, &qword_1001E0248, qword_1001409A8);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

BOOL sub_1000D25CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3._object = 0x800000010014EDC0;
  v3._countAndFlagsBits = 0xD000000000000016;
  return String.hasPrefix(_:)(v3);
}

uint64_t sub_1000D2614(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
    sub_1000B3788(&qword_1001E1490, &qword_1001E1488, MOWebDomain_ptr);
    result = Set.init(minimumCapacity:)();
    v11 = result;
    if (v2)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    v7 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1000D2044(&v10, v8);

      ++v7;
      if (v9 == v5)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000D2780(unint64_t a1)
{
  if (!a1 || (a1 >> 62 ? (v2 = _CocoaArrayWrapper.endIndex.getter()) : (v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)), !v2))
  {
LABEL_17:
    v15 = sub_1000D2614(_swiftEmptyArrayStorage);

    return v15;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = [v7 payloadAddress];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = [v8 payloadPageTitle];
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = String._bridgeToObjectiveC()();

      if (v13)
      {
        v5 = String._bridgeToObjectiveC()();
      }

      else
      {
        v5 = 0;
      }

      ++v4;
      [objc_allocWithZone(MOWebDomain) initWithDomain:v14 bookmark:v5];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v2 != v4);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D297C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v3 = (a1 + 40);
      do
      {
        v4 = *(v3 - 1);
        v5 = *v3;
        v6 = objc_allocWithZone(MOWebDomain);

        v7 = String._bridgeToObjectiveC()();
        [v6 initWithDomain:v7];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v3 += 2;
        --v2;
      }

      while (v2);
    }
  }

  v9 = sub_1000D2614(_swiftEmptyArrayStorage);

  return v9;
}

void sub_1000D2A9C(uint64_t a1, id *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [*a2 cemConfiguration];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {

      return;
    }

    v14 = v13;
    v48 = v6;
    v52 = v2;
    v15 = [v13 payloadRestrictWeb];
    v16 = [v15 BOOLValue];

    v49 = a1;
    if (v16)
    {
      v17 = [v14 payloadWhiteListEnabled];
      v18 = [v17 BOOLValue];

      if (v18)
      {
        v19 = [v14 payloadSiteWhiteList];
        if (v19)
        {
          v20 = v19;
          sub_1000A0F74(0, &qword_1001E1498, CEMSystemBasicWebContentFilterDeclaration_SiteWhiteListItem_ptr);
          v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v21 = 0;
        }

        v30 = objc_opt_self();
        sub_1000D2780(v21);

        sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
        sub_1000B3788(&qword_1001E1490, &qword_1001E1488, MOWebDomain_ptr);
        v31.super.isa = Set._bridgeToObjectiveC()().super.isa;

        v32 = [v30 allPolicyWithExceptions:v31.super.isa];
      }

      else
      {
        v23 = [v14 payloadUseContentFilter];
        v24 = [v23 BOOLValue];

        v25 = [v14 payloadFilterBlackList];
        if (v24)
        {
          if (v25)
          {
            v26 = v25;
            v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v27 = 0;
          }

          v33 = [v14 payloadFilterWhiteList];
          if (v33)
          {
            v34 = v33;
            v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          }

          else
          {
            v35 = 0;
          }

          v47 = objc_opt_self();
          sub_1000D297C(v27);

          sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
          sub_1000B3788(&qword_1001E1490, &qword_1001E1488, MOWebDomain_ptr);
          isa = Set._bridgeToObjectiveC()().super.isa;

          sub_1000D297C(v35);

          v38 = Set._bridgeToObjectiveC()().super.isa;

          v22 = [v47 autoPolicyWithDomains:isa exceptions:v38];

          goto LABEL_24;
        }

        if (v25)
        {
          v28 = v25;
          v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v29 = 0;
        }

        v36 = objc_opt_self();
        sub_1000D297C(v29);

        sub_1000A0F74(0, &qword_1001E1488, MOWebDomain_ptr);
        sub_1000B3788(&qword_1001E1490, &qword_1001E1488, MOWebDomain_ptr);
        v31.super.isa = Set._bridgeToObjectiveC()().super.isa;

        v32 = [v36 specificPolicyWithDomains:v31.super.isa];
      }

      v22 = v32;
    }

    else
    {
      v22 = [objc_opt_self() nonePolicy];
    }

LABEL_24:
    v39 = v22;
    v40 = [v10 objectID];
    v41 = [v40 URIRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = URL.absoluteString.getter();
    v44 = v43;
    (*(v48 + 8))(v9, v5);
    v50 = 0xD000000000000016;
    v51 = 0x800000010014EDC0;
    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);

    sub_1000CECE4(v39, v50, v51);
  }
}

uint64_t sub_1000D3078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (*(a4 + 48))();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26[1] = v26;
    v27 = v7;
    __chkstk_darwin(v4);
    v9 = v26 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v28 = 0;
    v10 = 0;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v7)
    {
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v18 = (*(v5 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];

      v21._object = 0x800000010014EDC0;
      v21._countAndFlagsBits = 0xD000000000000016;
      LOBYTE(v19) = String.hasPrefix(_:)(v21);

      if (v19)
      {
        *&v9[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_1000D1788(v9, v27, v28, v5);
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        return sub_1000D1788(v9, v27, v28, v5);
      }

      v16 = *(v5 + 56 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v7 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_1000D1504(v24, v7, v5, sub_1000D25CC);

  return v25;
}

uint64_t sub_1000D3304(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v14 = v11 | (v4 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    swift_beginAccess();
    v18 = *(*(a4 + v9) + 16);

    if (v18 && (sub_1000CBA20(v17, v16), (v19 & 1) != 0))
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();

      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_17:

        return sub_1000D1788(v22, a2, v23, a3);
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D34A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v37 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v32 = v7;
    v33 = v3;
    v31 = &v31;
    __chkstk_darwin(v9);
    v34 = &v31 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v8);
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v35 = 0;
    v36 = OBJC_IVAR____TtC15ScreenTimeAgent25ManagedSettingsApplicator_webContentFilterPolicyByStoreName;
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_12:
      v17 = v4;
      v18 = v14 | (v7 << 6);
      v19 = (*(v4 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v23 = v36;
      v22 = v37;
      swift_beginAccess();
      v8 = *&v22[v23];
      v24 = *(v8 + 16);

      if (v24 && (sub_1000CBA20(v21, v20), (v25 & 1) != 0))
      {
        swift_endAccess();

        v4 = v17;
        v12 = v38;
      }

      else
      {
        swift_endAccess();

        *&v34[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        v26 = __OFADD__(v35++, 1);
        v4 = v17;
        v12 = v38;
        if (v26)
        {
          __break(1u);
LABEL_18:
          v27 = sub_1000D1788(v34, v32, v35, v4);

          return v27;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v38 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v30 = v37;
  v27 = sub_1000D146C(v29, v7, v4, v30);

  return v27;
}

uint64_t sub_1000D3788(int a1, int a2, int a3)
{
  if (qword_1001DF140 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000A2B1C(v6, qword_1001E13A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240704;
    *(v9 + 4) = a2 & 1;
    *(v9 + 8) = 1026;
    *(v9 + 10) = a3 & 1;
    *(v9 + 14) = 1026;
    *(v9 + 16) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "User is managed: %{BOOL,public}d. User has Web Content Filter enabled: %{BOOL,public}d. User has passcode set: %{BOOL,public}d.", v9, 0x14u);
  }

  return (a2 | a3) & a1 & 1;
}

void sub_1000D38AC(char a1)
{
  if (qword_1001DF140 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000A2B1C(v2, qword_1001E13A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Should denyHistoryClearing and denyPrivateBrowsing: %{BOOL,public}d.", v5, 8u);
  }

  v6 = STManagedSettingsContainer;
  v7 = objc_allocWithZone(MOLocalSettingsStore);
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithName:v9 sharedContainer:v8];

  v11 = v10;
  v12 = [v11 safari];
  v13 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  [v12 setDenyHistoryClearing:v13];

  v14 = [v11 safari];
  v15 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  [v14 setDenyPrivateBrowsing:v15];
}

uint64_t sub_1000D3AF4()
{
  result = sub_1000D3B18();
  byte_1001E14A8 = result & 1;
  return result;
}

uint64_t sub_1000D3B18()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  Logger.init(subsystem:category:)();
  (*(v1 + 16))(v5, v7, v0);
  v8 = sub_100106124("One Time Preflight Process", 26, 2, v5, 0);
  (*(v1 + 8))(v7, v0);
  return v8 & 1;
}

id sub_1000D3E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Migration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Migration()
{
  result = qword_1001E14E0;
  if (!qword_1001E14E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D3F10()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_1000D3FA4()
{
  result = qword_1001E14F0;
  if (!qword_1001E14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E14F0);
  }

  return result;
}

unint64_t sub_1000D4114()
{
  result = qword_1001E14F8;
  if (!qword_1001E14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E14F8);
  }

  return result;
}

uint64_t sub_1000D4170(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000D426C(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D42D0()
{
  Hasher.init(_seed:)();
  sub_1000D4244(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1000D4310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000A95B0(a3, v24 - v10, &unk_1001DF9B0, &qword_100140000);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000A5148(v11, &unk_1001DF9B0, &qword_100140000);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1000A0F2C(&qword_1001E1848, &qword_100141ED8);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);
  sub_1000A0F2C(&qword_1001E1848, &qword_100141ED8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000D45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000A95B0(a3, v24 - v10, &unk_1001DF9B0, &qword_100140000);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000A5148(v11, &unk_1001DF9B0, &qword_100140000);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000A5148(a3, &unk_1001DF9B0, &qword_100140000);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_1000D4878(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000D48E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_1000D4924()
{
  v3 = 0;
  if ([v0 setTaskExpiredWithRetryAfter:&v3 error:?])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_1000D4A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000D4B08(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = *sub_1000A9618((v2 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v2 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
    v8 = v2;
    v9 = a2();
    v10 = *(v2 + v3);
    *(v8 + v3) = v9;
    v5 = v9;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

uint64_t sub_1000D4B8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___expressIntroductionSettingsCoordinator;
  swift_beginAccess();
  sub_1000A95B0(v1 + v3, &v7, &unk_1001E1A30, qword_100141EF8);
  if (v8)
  {
    return sub_100004804(&v7, a1);
  }

  sub_1000A5148(&v7, &unk_1001E1A30, qword_100141EF8);
  v5 = v1;
  v6 = *sub_1000A9618((v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
  sub_1000FC544(a1);
  sub_1000DEF80(a1, &v7);
  swift_beginAccess();
  sub_1000DEFE4(&v7, v5 + v3);
  return swift_endAccess();
}

void sub_1000D4CF4()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListenerDelegate);
LABEL_5:
    v9 = v2;
    return;
  }

  v4 = v0;
  v5 = *sub_1000A9618((v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
  v6 = sub_1000FAB50();
  v7 = [objc_allocWithZone(STAskForTimeListenerDelegate) initWithAskForTimeManager:v6];

  if (v7)
  {
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id sub_1000D4DA0()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeEventRelay;
  if (*(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeEventRelay))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeEventRelay);
  }

  else
  {
    v3 = v0;
    v4 = *sub_1000A9618((v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
    v5 = sub_1000FA9A0();
    v6 = *(v3 + v1);
    *(v3 + v1) = v5;
    v2 = v5;
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_1000D4E58()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListenerDelegate);
  }

  else
  {
    v4 = *sub_1000A9618((v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
    v5 = v0;
    v6 = sub_1000FA8C8();
    v7 = sub_1000FAF84();
    v8 = sub_1000FA934();
    v9 = [objc_allocWithZone(STToolServerDelegate) initWithPersistenceController:v6 screenTimeOrganizationController:v7 notificationManager:v8];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1000D4F9C(uint64_t *a1, uint64_t (*a2)(void), Class *a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v11 = *sub_1000A9618((v4 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v4 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
    v12 = v4;
    v13 = a2();
    v14 = [objc_allocWithZone(*a3) *a4];

    v15 = *(v12 + v5);
    *(v12 + v5) = v14;
    v7 = v14;

    v6 = 0;
  }

  v16 = v6;
  return v7;
}

id sub_1000D5064()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___bootstrapperQueue;
  v12 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___bootstrapperQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___bootstrapperQueue);
  }

  else
  {
    v14 = sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
    v19[1] = "time.activity.cleanup";
    v19[2] = v14;
    (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
    static DispatchQoS.unspecified.getter();
    v19[3] = _swiftEmptyArrayStorage;
    sub_1000DEEE4(&qword_1001E1A18, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000A0F2C(&qword_1001E1A20, qword_1001431E0);
    sub_1000DEF2C(&qword_1001E1A28, &qword_1001E1A20, qword_1001431E0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

id sub_1000D530C(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000D5408(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = v2;
    sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
    a2();
    v8 = objc_allocWithZone(NSXPCListener);
    v9 = String._bridgeToObjectiveC()();

    v10 = [v8 initWithMachServiceName:v9];

    v11 = *(v7 + v3);
    *(v7 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  v12 = v4;
  return v5;
}

id sub_1000D54F4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:*a2];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1000D55CC()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___cleanupActivityScheduler;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___cleanupActivityScheduler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___cleanupActivityScheduler);
  }

  else
  {
    v4 = objc_allocWithZone(NSBackgroundActivityScheduler);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithIdentifier:v5];

    v3 = v6;
    [v3 setPreregistered:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1000D5684()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___appCollectionActivityScheduler;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___appCollectionActivityScheduler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___appCollectionActivityScheduler);
  }

  else
  {
    v4 = objc_allocWithZone(NSBackgroundActivityScheduler);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithIdentifier:v5];

    v3 = v6;
    [v3 setPreregistered:1];
    v7 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1000D573C()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient;
  v2 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient);
LABEL_5:
    v12 = v2;
    return v3;
  }

  result = [objc_opt_self() systemConnection];
  if (result)
  {
    v5 = result;
    v6 = objc_allocWithZone(DMFConfigurationSourceClient);
    v7 = String._bridgeToObjectiveC()();
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v6 initWithConnection:v5 organizationIdentifier:v7 displayName:v8 localMachServiceName:v9];

    v11 = *(v0 + v1);
    *(v0 + v1) = v10;
    v3 = v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1000D587C()
{
  v1 = sub_1000D53C8();
  [v1 invalidate];

  v2 = sub_1000D53E8();
  [v2 invalidate];

  v4.receiver = v0;
  v4.super_class = type metadata accessor for Daemon();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for Daemon()
{
  result = qword_1001E17A8;
  if (!qword_1001E17A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D5D28()
{
  sub_1000D60EC();
  v1 = *sub_1000A9618((v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
  v2 = sub_1000FAA0C();
  v3 = [v2 screenTimeCapabilities];

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "ScreenTimeAgent starting with capabilities: %@", v7, 0xCu);
    sub_1000A5148(v8, &unk_1001E1820, &qword_100140020);
  }

  sub_1000D62D8();
  sub_1000D650C();
  sub_1000D6A10();
  sub_1000D6D08();
  v10 = sub_1000D4AC8();
  v11 = [v10 newBackgroundContext];

  v12 = [objc_opt_self() sharedScheduler];
  v13 = type metadata accessor for ScreenTimeFeatureFlags();
  v25 = v13;
  v26 = sub_1000DEEE4(&qword_1001E1A10, &type metadata accessor for ScreenTimeFeatureFlags);
  v14 = sub_1000AC704(&v22);
  (*(*(v13 - 8) + 104))(v14, enum case for ScreenTimeFeatureFlags.legacyUsageShutdown(_:), v13);
  v15 = isFeatureEnabled(_:)();
  sub_1000A462C(&v22);
  type metadata accessor for LegacyUsageShutdownScheduler.DeviceRecordProvider();
  sub_1000C81C4(&v22);
  v16 = [objc_opt_self() userKnowledgeStore];
  if (v16)
  {
    v17 = v16;
    sub_1000DB658(v11, v12, v15 & 1, &v22, v16);

    sub_1000A462C(&v22);
    v18 = sub_1000D5684();
    v26 = sub_1000DF1D0;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1000D61FC;
    v25 = &unk_1001A9238;
    v19 = _Block_copy(&v22);
    [v18 scheduleWithBlock:v19];
    _Block_release(v19);

    v20 = sub_1000D55CC();
    v26 = sub_1000DF1D0;
    v27 = 0;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_1000D61FC;
    v25 = &unk_1001A9260;
    v21 = _Block_copy(&v22);
    [v20 scheduleWithBlock:v21];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000D60EC()
{
  if (os_variant_has_internal_content())
  {
    v1 = sub_1000D54E0();
    [v1 setDelegate:v0];

    [*(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___diagnosticsListener) resume];
  }

  v2 = sub_1000D556C();
  [v2 setDelegate:v0];

  [*(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___legacyUserSettingsProviderListener) resume];
  v3 = sub_1000D55AC();
  [v3 setDelegate:v0];

  [*(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___legacyUserSettingsStoreListener) resume];
  v4 = sub_1000D558C();
  v5 = sub_1000D4CC0();
  [v4 setDelegate:v5];

  v6 = *(v0 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___exceptionMachServiceListener);

  return [v6 resume];
}

uint64_t sub_1000D61FC(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1000DEEA8, v5);
}

void sub_1000D62D8()
{
  v1 = v0;
  out_token = 0;
  sub_1000A0F74(0, &qword_1001E1A08, OS_dispatch_queue_ptr);
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v6[4] = sub_1000DEEA0;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1000D64B8;
  v6[3] = &unk_1001A9210;
  v4 = _Block_copy(v6);
  v5 = v1;

  notify_register_dispatch("com.apple.language.changed", &out_token, v2, v4);
  _Block_release(v4);
}

uint64_t sub_1000D640C()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Language changed, going to exit soon.", v2, 2u);
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_1000D64B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1000D650C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(STDowngradeMigrator) init];
  v3 = sub_1000B6E30();
  if (v3)
  {
    sub_1000B67FC();
    sub_1000B4B18();
    sub_1000B4EA0();
    v4 = sub_1000D4AC8();
    [v4 resume];

    v5 = *(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___persistenceController);
    v6 = [v5 viewContext];
    sub_1000B51B4();
  }

  else
  {
    v7 = sub_1000D4AC8();
    [v7 resume];
  }

  v8 = type metadata accessor for AuthKitFeatureFlag();
  v19 = v8;
  v20 = sub_1000DEEE4(&qword_1001E1A00, &type metadata accessor for AuthKitFeatureFlag);
  v9 = sub_1000AC704(v18);
  (*(*(v8 - 8) + 104))(v9, enum case for AuthKitFeatureFlag.ageBasedAccountSupport(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_1000A462C(v18);
  if (v8)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "AuthKit ageBasedAccountSupport is enabled. Starting sync observation.", v12, 2u);
    }

    sub_1000D4B8C(v18);
    v13 = *sub_1000A9618(v18, v19);
    sub_1000B904C();
    sub_1000A462C(v18);
  }

  v14 = sub_1000D4C80();
  [v14 resume];

  if (v3)
  {
    v15 = [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___screenTimeOrganizationController) requestManager];
    sub_1000B6A5C(v15);

    v16 = sub_1000D573C();
    [v16 setDelegate:v1];

    [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient) resume];
    sub_1000B6BD4();
  }

  else
  {
    v17 = sub_1000D573C();
    [v17 setDelegate:v1];

    [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient) resume];
  }
}

void sub_1000D6A10()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC services resuming", v4, 2u);
  }

  v5 = sub_1000D52F8();
  v6 = [v5 providePublicAgentService];

  v7 = (v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory);
  v8 = *sub_1000A9618((v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory), *(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory + 24));
  v9 = sub_1000FBBAC();
  [v6 setDelegate:v9];
  swift_unknownObjectRelease();

  v10 = [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___xpcServiceProvider) providePrivateAgentService];
  v11 = *sub_1000A9618(v7, v7[3]);
  v12 = sub_1000FBBAC();
  [v10 setDelegate:v12];
  swift_unknownObjectRelease();

  v13 = sub_1000D4CE0();
  sub_1000D4CF4();
  v15 = v14;
  [v13 setDelegate:v14];

  [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListener) resume];
  v16 = sub_1000D53C8();
  [v16 setDelegate:v1];

  [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___accessRequestListener) activate];
  v17 = sub_1000D53E8();
  [v17 setDelegate:v1];

  [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___accessResponderListener) activate];
  v18 = sub_1000D4F28();
  v19 = sub_1000D4F3C();
  [v18 setDelegate:v19];

  [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___contactsAgentListener) resume];
  v20 = sub_1000D5050();
  [v20 resume];

  v21 = sub_1000D4E44();
  v22 = sub_1000D4E58();
  [v21 setDelegate:v22];

  [*(v1 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListener) resume];
  v23 = sub_1000D4AE8();
  [v23 resume];

  v24 = sub_1000D4F6C();
  [v24 startSendingEvents];
}

uint64_t sub_1000D6D08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D5064();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000DEE88;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D48E0;
  aBlock[3] = &unk_1001A9120;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000DEEE4(&qword_1001E19E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000A0F2C(&qword_1001E19F0, qword_100143910);
  sub_1000DEF2C(&qword_1001E19F8, &qword_1001E19F0, qword_100143910);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v5 + 8))(v8, v15);
}

id sub_1000D6FC4(void *a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bootstrapping reactor", v4, 2u);
  }

  v21 = objc_opt_self();
  v5 = sub_1000D4AC8();
  v6 = [v5 persistentContainer];

  v7 = sub_1000D52F8();
  v8 = sub_1000D4C80();
  v9 = [v8 adapter];

  v10 = sub_1000D4DA0();
  v11 = sub_1000D4E24();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v26 = sub_1000DEE90;
  v27 = v12;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000D48E0;
  v25 = &unk_1001A9170;
  v13 = _Block_copy(&aBlock);
  v14 = a1;

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v26 = sub_1000DEE98;
  v27 = v15;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_1000D48E0;
  v25 = &unk_1001A91C0;
  v16 = _Block_copy(&aBlock);
  v17 = v14;

  v18 = [v21 bootstrappedReactorWithPersistentContainer:v6 xpcServiceProvider:v7 organizationControllerConfigurationAdapter:v9 askForTimeEventRelay:v10 askForTimeResponseHandler:v11 reactorWillShutdown:v13 reactorDidShutdown:v16];
  _Block_release(v16);
  _Block_release(v13);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v19 = qword_1001E7018;
  qword_1001E7018 = v18;

  return [*&v17[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___xpcServiceProvider] resume];
}

void sub_1000D72A4()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Reactor will shutdown.", v2, 2u);
  }

  v3 = sub_1000D52F8();
  [v3 suspend];
}

uint64_t sub_1000D7378()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "Reactor did shutdown. Restarting.", v2, 2u);
  }

  return sub_1000D6D08();
}

uint64_t sub_1000D7450()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1000D7560(uint64_t a1, const char *a2)
{
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a2, v4, 2u);
  }
}

uint64_t sub_1000D7810()
{
  v1 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1000D78A0, 0, 0);
}

uint64_t sub_1000D78A0()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000D799C;
  v3 = *(v0 + 16);

  return sub_10010DB7C("IDSServiceDelegate.incomingData", 31, 2, v3, 0);
}

uint64_t sub_1000D799C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DF14C, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000D7E0C()
{
  v1 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v0 + 16) = swift_task_alloc();

  return _swift_task_switch(sub_1000D7E98, 0, 0);
}

uint64_t sub_1000D7E98()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000D7F94;
  v3 = *(v0 + 16);

  return sub_10010DB7C("IDSServiceDelegate.activeAccountsChanged", 40, 2, v3, 0);
}

uint64_t sub_1000D7F94()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[4] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D80D0, 0, 0);
  }

  else
  {
    v4 = v3[2];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000D80D0()
{
  v1 = v0[2];

  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

void sub_1000D8244()
{
  v1 = v0;
  v2 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v32 - v4;
  v6 = sub_1000A0F2C(&unk_1001E1830, &unk_100141720);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v32 - v8;
  v10 = Notification.userInfo.getter();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v32[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32[2] = v12;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16) || (v13 = sub_1000CBB00(v33), (v14 & 1) == 0))
  {

    sub_1000C8034(v33);
LABEL_9:
    v34 = 0u;
    v35 = 0u;
    goto LABEL_10;
  }

  sub_1000A5078(*(v11 + 56) + 32 * v13, &v34);
  sub_1000C8034(v33);

  if (!*(&v35 + 1))
  {
LABEL_10:
    sub_1000A5148(&v34, &qword_1001E03A0, qword_100140A70);
    goto LABEL_11;
  }

  sub_1000C6C8C(&v34, v36);
  sub_1000A5078(v36, v33);
  sub_1000A0F74(0, &qword_1001E1840, NSPersistentCloudKitContainerEvent_ptr);
  if (swift_dynamicCast())
  {
    v15 = v34;
    v16 = [v34 endDate];
    if (v16)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v17 = 0;
    }

    else
    {
      v17 = 1;
    }

    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v9, v17, 1, v22);
    sub_1000A5148(v9, &unk_1001E1830, &unk_100141720);
    v23 = [v15 type];
    v24 = [v15 error];
    if (v24)
    {

      sub_1000D8770(v15);
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        if (v16)
        {
          v25 = type metadata accessor for TaskPriority();
          (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
          v26 = swift_allocObject();
          v26[2] = 0;
          v26[3] = 0;
          v26[4] = v1;
          v26[5] = v15;
          v27 = v1;
          v28 = v15;
          sub_1000D45CC(0, 0, v5, &unk_100141EC0, v26);

          goto LABEL_20;
        }

        sub_1000D8C28(v15);
      }

      else if (v23 == 2)
      {
        if (v16)
        {
          sub_1000D8F00(v15);
        }

        else
        {
          sub_1000D8D94(v15);
        }
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "Unknown event", v31, 2u);

          goto LABEL_20;
        }
      }
    }

    else if (v16)
    {
      sub_1000D8A84(v15);
    }

    else
    {
      sub_1000D8918(v15);
    }

LABEL_20:
    sub_1000A462C(v36);
    return;
  }

  sub_1000A462C(v36);
LABEL_11:
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v33[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1000A2E68(0xD000000000000019, 0x800000010014FB30, v33);
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: Failed to retrieve the container event from notification.userInfo.", v20, 0xCu);
    sub_1000A462C(v21);
  }
}

void sub_1000D8770(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000A2E68(0xD000000000000017, 0x800000010014FB50, &v8);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "------- %s called %@", v4, 0x16u);
    sub_1000A5148(v5, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v6);
  }

  if (qword_1001DF110 != -1)
  {
    swift_once();
  }

  *(qword_1001E6FF0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer_cloudKitStatus) = 1;
}

void sub_1000D8918(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000A2E68(0xD000000000000015, 0x800000010014FB90, &v8);
    *(v3 + 12) = 2112;
    *(v3 + 14) = v1;
    *v4 = v1;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "------- %s called %@", v3, 0x16u);
    sub_1000A5148(v4, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v5);
  }
}

void sub_1000D8A84(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000A2E68(0xD000000000000014, 0x800000010014FB70, &v8);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "------- %s called %@", v4, 0x16u);
    sub_1000A5148(v5, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v6);
  }

  if (qword_1001DF110 != -1)
  {
    swift_once();
  }

  *(qword_1001E6FF0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer_cloudKitStatus) = 0;
}

void sub_1000D8C28(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000A2E68(0xD00000000000001ALL, 0x800000010014FC00, &v8);
    *(v3 + 12) = 2112;
    *(v3 + 14) = v1;
    *v4 = v1;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "------- %s called %@", v3, 0x16u);
    sub_1000A5148(v4, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v5);
  }
}

void sub_1000D8D94(void *a1)
{
  v1 = a1;
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_1000A2E68(0xD000000000000018, 0x800000010014FC40, &v8);
    *(v3 + 12) = 2112;
    *(v3 + 14) = v1;
    *v4 = v1;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, oslog, v2, "------- %s called %@", v3, 0x16u);
    sub_1000A5148(v4, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v5);
  }
}

void sub_1000D8F00(void *a1)
{
  v1 = a1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v4 = 136315394;
    *(v4 + 4) = sub_1000A2E68(0xD000000000000017, 0x800000010014FC20, &v8);
    *(v4 + 12) = 2112;
    *(v4 + 14) = v1;
    *v5 = v1;
    v7 = v1;
    _os_log_impl(&_mh_execute_header, v2, v3, "------- %s called %@", v4, 0x16u);
    sub_1000A5148(v5, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v6);
  }

  if (qword_1001DF110 != -1)
  {
    swift_once();
  }

  *(qword_1001E6FF0 + OBJC_IVAR____TtC15ScreenTimeAgent19PersistentContainer_cloudKitStatus) = 0;
}

uint64_t sub_1000D918C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000D921C, 0, 0);
}

uint64_t sub_1000D921C()
{
  v15 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_1000A2E68(0xD000000000000019, 0x800000010014FBE0, &v14);
    *(v6 + 12) = 2112;
    *(v6 + 14) = v5;
    *v7 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "------- %s called %@", v6, 0x16u);
    sub_1000A5148(v7, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v8);
  }

  v10 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1000D9464;
  v12 = *(v0 + 32);

  return sub_10010DB7C("CloudPersistentContainer.didImportFromCloudKit", 46, 2, v12, 0);
}

uint64_t sub_1000D9464()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000D95A0, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000D95A0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1000D9604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*(type metadata accessor for LocalDeviceManagement() - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000D96A0, 0, 0);
}

uint64_t sub_1000D96A0()
{
  v1 = v0[3];
  v2 = v0[4];
  type metadata accessor for Code(0);
  v0[2] = 4002;
  sub_1000DEEE4(&qword_1001DF660, type metadata accessor for Code);
  v3 = static _ErrorCodeProtocol.~= infix(_:_:)();
  v0[7] = OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_logger;
  if (v3)
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Starting DMF organization setup and initialization", v6, 2u);
    }

    v7 = v0[3];

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[3];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing all DMD declarations failed with: %{public}@", v11, 0xCu);
      sub_1000A5148(v12, &unk_1001E1820, &qword_100140020);
    }

    v14 = v0[6];

    Logger.init(subsystem:category:)();
    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    v15[1] = sub_1000D9A88;
    v16 = v0[6];

    return sub_1000B399C();
  }

  else
  {
    v18 = v0[3];
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[3];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "DMF Configuration Client failed to start: %@. Cannot continue.", v22, 0xCu);
      sub_1000A5148(v23, &unk_1001E1820, &qword_100140020);
    }

    v25 = v0[3];

    swift_willThrow();
    swift_errorRetain();
    v26 = v0[3];
    v28 = v0[5];
    v27 = v0[6];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1000D9A88()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  sub_1000DE7BC(*(v2 + 48));
  if (v0)
  {
    v5 = sub_1000D9D54;
  }

  else
  {
    v5 = sub_1000D9BBC;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1000D9BBC()
{
  v1 = v0[4];
  v2 = sub_1000D573C();
  [v2 invalidate];

  result = [objc_opt_self() systemConnection];
  if (result)
  {
    v4 = result;
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v8 = objc_allocWithZone(DMFConfigurationSourceClient);
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v8 initWithConnection:v4 organizationIdentifier:v9 displayName:v10 localMachServiceName:v11];

    v13 = *(v7 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient);
    *(v7 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient) = v12;

    v14 = v0[1];

    return v14();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D9D54()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create DM organization: %@. Will retry", v7, 0xCu);
    sub_1000A5148(v8, &unk_1001E1820, &qword_100140020);
  }

  v10 = v0[5];

  Logger.init(subsystem:category:)();
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1000D9F1C;
  v12 = v0[5];

  return sub_1000B399C();
}

uint64_t sub_1000D9F1C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  sub_1000DE7BC(*(v2 + 40));
  if (v0)
  {
    v5 = sub_1000DA1F0;
  }

  else
  {
    v5 = sub_1000DA050;
  }

  return _swift_task_switch(v5, 0, 0);
}

id sub_1000DA050()
{
  v1 = v0[9];

  v2 = v0[4];
  v3 = sub_1000D573C();
  [v3 invalidate];

  result = [objc_opt_self() systemConnection];
  if (result)
  {
    v5 = result;
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v9 = objc_allocWithZone(DMFConfigurationSourceClient);
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v9 initWithConnection:v5 organizationIdentifier:v10 displayName:v11 localMachServiceName:v12];

    v14 = *(v8 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient);
    *(v8 + OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient) = v13;

    v15 = v0[1];

    return v15();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA1F0()
{
  v1 = v0[9];

  v2 = v0[11];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000DA6BC(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1000DA79C;

  return sub_1000DE260();
}

uint64_t sub_1000DA79C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1000DA90C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A4F84;

  return sub_1000DA6BC(v2, v3, v5, v4);
}

uint64_t sub_1000DA9CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1000DA9FC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LegacyUsageShutdownScheduler();
  if (sub_1000CC3BC(a2, a4))
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000A2B1C(v9, qword_1001E0E88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v17[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "Legacy usage is already disabled, expiring %{public}s", v12, 0xCu);
      sub_1000A462C(v13);
    }

    sub_1000DADB4(a1, 1);
  }

  else
  {
    sub_1000DEF80(a4, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = a2;
    sub_100004804(v17, (v14 + 4));
    v14[9] = a1;
    v14[10] = &off_1001A7AC0;
    v15 = a2;
    v16 = a1;
    sub_1000C89D8(v15, a3, sub_1000DEED0);
  }
}

void sub_1000DADB4(id a1, char a2)
{
  if (a2)
  {
    if (qword_1001DF120 != -1)
    {
      swift_once();
    }

    v23 = 0;
    if ([a1 setTaskExpiredWithRetryAfter:&v23 error:*&qword_1001E0E80])
    {
      v3 = qword_1001DF128;
      v4 = v23;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000A2B1C(v5, qword_1001E0E88);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        *v8 = 136446210;
        *(v8 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v23);
        _os_log_impl(&_mh_execute_header, v6, v7, "Successfully completed and expired %{public}s", v8, 0xCu);
        sub_1000A462C(v9);
      }
    }

    else
    {
      v15 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1001DF128 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000A2B1C(v16, qword_1001E0E88);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v19 = 136446466;
        *(v19 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v23);
        *(v19 + 12) = 2082;
        swift_errorRetain();
        sub_1000A0F2C(&unk_1001E1110, &unk_100140900);
        v20 = String.init<A>(describing:)();
        v22 = sub_1000A2E68(v20, v21, &v23);

        *(v19 + 14) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to expire %{public}s: %{public}s", v19, 0x16u);
        swift_arrayDestroy();
      }

      [a1 setTaskCompleted];
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000A2B1C(v10, qword_1001E0E88);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, &v23);
      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully completed %{public}s", v13, 0xCu);
      sub_1000A462C(v14);
    }

    [a1 setTaskCompleted];
  }
}

id sub_1000DB2A0(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for ConcreteDependencyFactory();
  v12[4] = &off_1001AB1F8;
  v12[5] = &off_1001AB240;
  v12[6] = &off_1001AB220;
  v12[7] = &off_1001AB1B8;
  v12[8] = &off_1001AB230;
  v12[9] = &off_1001AB1E8;
  v12[10] = &off_1001AB1D8;
  v12[11] = &off_1001AB1C8;
  v12[12] = &off_1001AB1A8;
  v12[13] = &off_1001AB198;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___mirroringMonitor] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___persistenceController] = 0;
  v12[14] = &off_1001AB188;
  v12[15] = &off_1001AB158;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___notificationManager] = 0;
  v5 = &a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___expressIntroductionSettingsCoordinator];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___screenTimeOrganizationController] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeManager] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___exceptionListenerDelegate] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeListenerDelegate] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeEventRelay] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeResponseHandler] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askForTimeConfigurationProvider] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askToManager] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___commandLineToolListenerDelegate] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___publicAgentListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___privateAgentListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___contactsAgentListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___agentListenerDelegate] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___coreAnalyticsManager] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___storeServer] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___bootstrapperQueue] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___xpcServiceProvider] = 0;
  v12[16] = &off_1001AB128;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_organizationControllerAdapter] = 0;
  v12[3] = v4;
  v12[0] = a1;
  Logger.init(subsystem:category:)();
  v6 = &a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_kXpcStreamNotifyd];
  *v6 = 0xD00000000000001ALL;
  *(v6 + 1) = 0x800000010014FEB0;
  v7 = &a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_kXpcStreamAlarm];
  *v7 = 0x6C7070612E6D6F63;
  *(v7 + 1) = 0xEF6D72616C612E65;
  v8 = &a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_kXpcStreamDistnoted];
  *v8 = 0xD00000000000001CLL;
  *(v8 + 1) = 0x800000010014FED0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___askAlternateListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___accessRequestListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___accessResponderListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___communicationListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___contactsListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___diagnosticsListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___downtimeListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___privateListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___settingsListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___setupListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___legacyUserSettingsProviderListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___exceptionMachServiceListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___legacyUserSettingsStoreListener] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___cleanupActivityScheduler] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___appCollectionActivityScheduler] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___analyticsActivityScheduler] = 0;
  *&a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon____lazy_storage___configurationSourceClient] = 0;
  sub_1000DF054(v12, &a2[OBJC_IVAR____TtC15ScreenTimeAgent6Daemon_factory]);
  v11.receiver = a2;
  v11.super_class = type metadata accessor for Daemon();
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_1000A462C(v12);
  return v9;
}

uint64_t sub_1000DB658(void *a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v27[3] = sub_1000A0F74(0, &qword_1001E1158, _DKKnowledgeStore_ptr);
  v27[4] = &off_1001A8360;
  v27[0] = a5;
  sub_1000DEF80(a4, v26);
  sub_1000DEF80(v27, v25);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;
  sub_100004804(v26, v10 + 40);
  sub_100004804(v25, v10 + 80);
  v11 = a5;
  v12 = a1;
  v13 = a2;
  v14 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_1000DEEBC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D4878;
  aBlock[3] = &unk_1001A92D8;
  v15 = _Block_copy(aBlock);
  LODWORD(v13) = [v13 registerForTaskWithIdentifier:v14 usingQueue:0 launchHandler:v15];

  _Block_release(v15);

  if (v13)
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000A2B1C(v16, qword_1001E0E88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, aBlock);
      v21 = "Successfully registered %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v17, v18, v21, v19, 0xCu);
      sub_1000A462C(v20);
    }
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000A2B1C(v22, qword_1001E0E88);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, aBlock);
      v21 = "Failed to register %{public}s";
      goto LABEL_10;
    }
  }

  return sub_1000A462C(v27);
}

void sub_1000DB9A4(void *a1, char a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v15[4] = sub_1000CC1B0;
    v15[5] = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1000D48E0;
    v15[3] = &unk_1001A9300;
    v9 = _Block_copy(v15);

    [a1 setExpirationHandler:v9];
    _Block_release(v9);
    sub_1000DA9FC(a1, a3, a4, a5);
  }

  else
  {
    if (qword_1001DF128 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000A2B1C(v10, qword_1001E0E88);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1000A2E68(0xD000000000000033, 0x800000010014EB00, v15);
      _os_log_impl(&_mh_execute_header, v11, v12, "Feature is disabled, expiring %{public}s", v13, 0xCu);
      sub_1000A462C(v14);
    }

    sub_1000DADB4(a1, 1);
  }
}

id sub_1000DBBC4(void *a1)
{
  v2 = v1;
  type metadata accessor for OSActivity();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v5 = _os_activity_create(&_mh_execute_header, "XPC Listener Delegate: Should Accept Connection", qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  *(v4 + 16) = v5;
  swift_beginAccess();
  os_activity_scope_enter(v5, (v4 + 24));
  swift_endAccess();
  v6 = [a1 serviceName];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0xE900000000000073;
    v8 = 0x756F6D796E6F6E41;
  }

  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1000A2E68(v8, v10, &aBlock);
    *(v14 + 12) = 1024;
    *(v14 + 14) = [v11 processIdentifier];

    _os_log_impl(&_mh_execute_header, v12, v13, "%s connection received from process %d", v14, 0x12u);
    sub_1000A462C(v15);
  }

  else
  {
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v16 == v10)
  {
    goto LABEL_11;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v34 == v10)
  {
LABEL_11:

LABEL_13:

    v18 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STAskServiceProtocol];
    [v11 setExportedInterface:v18];

    v19 = type metadata accessor for AskService();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    v22 = swift_allocObject();
    v23 = OBJC_IVAR____TtC15ScreenTimeAgent10AskService____lazy_storage___logger;
    v24 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
    [v11 setExportedObject:v22];

    v26 = swift_allocObject();
    *(v26 + 16) = v2;
    v183 = sub_1000DEE40;
    v184 = v26;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A9080;
    v27 = _Block_copy(&aBlock);
    v28 = v2;

    [v11 setInterruptionHandler:v27];
    _Block_release(v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v183 = sub_1000DEE64;
    v184 = v29;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v30 = &unk_1001A90D0;
LABEL_14:
    v181 = sub_1000D48E0;
    v182 = v30;
    v31 = _Block_copy(&aBlock);
    v32 = v28;

    [v11 setInvalidationHandler:v31];
    _Block_release(v31);
    [v11 activate];

    return v25;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_13;
  }

  sub_1000A0F74(0, &qword_1001DF550, NSXPCConnection_ptr);
  if (static NSXPCConnection.accessRequestorCompatibilityMachServiceName.getter() == v8 && v36 == v10)
  {

LABEL_23:
    v38 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14ScreenTimeCore16AccessRequesting_];
    [v11 setExportedInterface:v38];

    v39 = [v11 exportedInterface];
    if (v39)
    {
      v40 = v39;

      static NSXPCConnection.configureExportedAccessRequestingInterface(_:)();

      v41 = sub_1000D4CA0();
      v42 = type metadata accessor for AccessCompatibilityService();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      v45 = swift_allocObject();
      v46 = OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService____lazy_storage___logger;
      v47 = type metadata accessor for Logger();
      v25 = 1;
      (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
      *(v45 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_oneMoreMinuteValue) = 0x404E000000000000;
      *(v45 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService) = v41;
      [v11 setExportedObject:v45];

      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      v183 = sub_1000DEDF8;
      v184 = v48;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000D48E0;
      v182 = &unk_1001A8FE0;
      v49 = _Block_copy(&aBlock);
      v28 = v2;

      [v11 setInterruptionHandler:v49];
      _Block_release(v49);
      v50 = swift_allocObject();
      *(v50 + 16) = v28;
      v183 = sub_1000DEE1C;
      v184 = v50;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v30 = &unk_1001A9030;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_77;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_23;
  }

  if (static NSXPCConnection.accessResponderCompatibilityMachServiceName.getter() == v8 && v51 == v10)
  {

LABEL_29:
    v53 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14ScreenTimeCore16AccessResponding_];
    [v11 setExportedInterface:v53];

    result = [v11 exportedInterface];
    if (result)
    {
      v54 = result;

      static NSXPCConnection.configureExportedAccessRespondingInterface(_:)();

      v55 = sub_1000D4CA0();
      v56 = type metadata accessor for AccessCompatibilityService();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      v59 = swift_allocObject();
      v60 = OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService____lazy_storage___logger;
      v61 = type metadata accessor for Logger();
      v25 = 1;
      (*(*(v61 - 8) + 56))(v59 + v60, 1, 1, v61);
      *(v59 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_oneMoreMinuteValue) = 0x404E000000000000;
      *(v59 + OBJC_IVAR____TtC15ScreenTimeAgent26AccessCompatibilityService_askForTimeService) = v55;
      [v11 setExportedObject:v59];

      v62 = swift_allocObject();
      *(v62 + 16) = v2;
      v183 = sub_1000DEDB0;
      v184 = v62;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000D48E0;
      v182 = &unk_1001A8F40;
      v63 = _Block_copy(&aBlock);
      v28 = v2;

      [v11 setInterruptionHandler:v63];
      _Block_release(v63);
      v64 = swift_allocObject();
      *(v64 + 16) = v28;
      v183 = sub_1000DEDD4;
      v184 = v64;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v30 = &unk_1001A8F90;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_81;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v52)
  {
    goto LABEL_29;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v65 == v10)
  {

LABEL_35:

    v67 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STCommunicationServiceProtocol];
    [v11 setExportedInterface:v67];

    v68 = type metadata accessor for CommunicationService();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    v71 = swift_allocObject();
    v72 = OBJC_IVAR____TtC15ScreenTimeAgent20CommunicationService____lazy_storage___logger;
    v73 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v73 - 8) + 56))(v71 + v72, 1, 1, v73);
    [v11 setExportedObject:v71];

    v74 = swift_allocObject();
    *(v74 + 16) = v2;
    v183 = sub_1000DED68;
    v184 = v74;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8EA0;
    v75 = _Block_copy(&aBlock);
    v28 = v2;

    [v11 setInterruptionHandler:v75];
    _Block_release(v75);
    v76 = swift_allocObject();
    *(v76 + 16) = v28;
    v183 = sub_1000DED8C;
    v184 = v76;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v30 = &unk_1001A8EF0;
    goto LABEL_14;
  }

  v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v66)
  {
    goto LABEL_35;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v77 == v10)
  {

LABEL_40:

    v79 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STContactsServiceProtocol];
    [v11 setExportedInterface:v79];

    v80 = type metadata accessor for ContactsService();
    v81 = *(v80 + 48);
    v82 = *(v80 + 52);
    v83 = swift_allocObject();
    v84 = OBJC_IVAR____TtC15ScreenTimeAgent15ContactsService____lazy_storage___logger;
    v85 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v85 - 8) + 56))(v83 + v84, 1, 1, v85);
    *(v83 + OBJC_IVAR____TtC15ScreenTimeAgent15ContactsService____lazy_storage___privateService) = 0;
    [v11 setExportedObject:v83];

    v86 = swift_allocObject();
    *(v86 + 16) = v2;
    v183 = sub_1000DED20;
    v184 = v86;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8E00;
    v87 = _Block_copy(&aBlock);
    v28 = v2;

    [v11 setInterruptionHandler:v87];
    _Block_release(v87);
    v88 = swift_allocObject();
    *(v88 + 16) = v28;
    v183 = sub_1000DED44;
    v184 = v88;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v30 = &unk_1001A8E50;
    goto LABEL_14;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    goto LABEL_40;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v89 == v10)
  {

LABEL_45:

    v91 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STDiagnosticsServiceProtocol];
    [v11 setExportedInterface:v91];
    [v11 setRemoteObjectInterface:v91];

    v92 = type metadata accessor for DiagnosticsService();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = OBJC_IVAR____TtC15ScreenTimeAgent18DiagnosticsService____lazy_storage___logger;
    v97 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v97 - 8) + 56))(v95 + v96, 1, 1, v97);
    *(v95 + 16) = v11;
    v98 = v11;
    [v98 setExportedObject:v95];
    v99 = swift_allocObject();
    *(v99 + 16) = v2;
    v183 = sub_1000DECD8;
    v184 = v99;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8D60;
    v100 = _Block_copy(&aBlock);
    v101 = v2;

    [v98 setInterruptionHandler:v100];
    _Block_release(v100);
    v102 = swift_allocObject();
    *(v102 + 16) = v101;
    v183 = sub_1000DECFC;
    v184 = v102;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8DB0;
    v103 = _Block_copy(&aBlock);
    v104 = v101;

    [v98 setInvalidationHandler:v103];
    _Block_release(v103);
    [v98 activate];

    return v25;
  }

  v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v90)
  {
    goto LABEL_45;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v105 == v10)
  {

LABEL_50:

    v107 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STDowntimeServiceProtocol];
    [v11 setExportedInterface:v107];

    v108 = type metadata accessor for DowntimeService();
    v109 = *(v108 + 48);
    v110 = *(v108 + 52);
    v111 = swift_allocObject();
    v112 = OBJC_IVAR____TtC15ScreenTimeAgent15DowntimeService____lazy_storage___logger;
    v113 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v113 - 8) + 56))(v111 + v112, 1, 1, v113);
    [v11 setExportedObject:v111];

    v114 = swift_allocObject();
    *(v114 + 16) = v2;
    v183 = sub_1000DEC90;
    v184 = v114;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8CC0;
    v115 = _Block_copy(&aBlock);
    v28 = v2;

    [v11 setInterruptionHandler:v115];
    _Block_release(v115);
    v116 = swift_allocObject();
    *(v116 + 16) = v28;
    v183 = sub_1000DECB4;
    v184 = v116;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v30 = &unk_1001A8D10;
    goto LABEL_14;
  }

  v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v106)
  {
    goto LABEL_50;
  }

  if (static NSXPCConnection.legacyAgentUserSettingsProviderServiceName.getter() == v8 && v117 == v10)
  {

    goto LABEL_55;
  }

  v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v118)
  {
LABEL_55:
    v119 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14ScreenTimeCore21UserSettingsProviding_];
    [v11 setExportedInterface:v119];

    result = [v11 exportedInterface];
    if (result)
    {
      v120 = result;

      static NSXPCConnection.configureExportedUserSettingsProvidingInterface(_:)();

      v121 = type metadata accessor for LegacyUserSettingsService();
      v122 = *(v121 + 48);
      v123 = *(v121 + 52);
      v124 = swift_allocObject();
      v125 = OBJC_IVAR____TtC15ScreenTimeAgent25LegacyUserSettingsService____lazy_storage___logger;
      v126 = type metadata accessor for Logger();
      v25 = 1;
      (*(*(v126 - 8) + 56))(v124 + v125, 1, 1, v126);
      [v11 setExportedObject:v124];

      v127 = swift_allocObject();
      *(v127 + 16) = v2;
      v183 = sub_1000DEC48;
      v184 = v127;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000D48E0;
      v182 = &unk_1001A8C20;
      v128 = _Block_copy(&aBlock);
      v28 = v2;

      [v11 setInterruptionHandler:v128];
      _Block_release(v128);
      v129 = swift_allocObject();
      *(v129 + 16) = v28;
      v183 = sub_1000DEC6C;
      v184 = v129;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v30 = &unk_1001A8C70;
      goto LABEL_14;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (static NSXPCConnection.legacyAgentUserSettingsStoreServiceName.getter() == v8 && v130 == v10)
  {
  }

  else
  {
    v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v131 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v143 == v10)
      {
      }

      else
      {
        v144 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v144 & 1) == 0)
        {
          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v155 == v10)
          {
          }

          else
          {
            v156 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v156 & 1) == 0)
            {
              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v8 && v167 == v10)
              {

LABEL_78:
                v169 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STSetupServiceProtocol];
                [v11 setExportedInterface:v169];

                v170 = type metadata accessor for SetupService();
                v171 = *(v170 + 48);
                v172 = *(v170 + 52);
                v173 = swift_allocObject();
                v174 = OBJC_IVAR____TtC15ScreenTimeAgent12SetupService____lazy_storage___logger;
                v175 = type metadata accessor for Logger();
                v25 = 1;
                (*(*(v175 - 8) + 56))(v173 + v174, 1, 1, v175);
                [v11 setExportedObject:v173];

                v176 = swift_allocObject();
                *(v176 + 16) = v2;
                v183 = sub_1000DEB34;
                v184 = v176;
                aBlock = _NSConcreteStackBlock;
                v180 = 1107296256;
                v181 = sub_1000D48E0;
                v182 = &unk_1001A89A0;
                v177 = _Block_copy(&aBlock);
                v28 = v2;

                [v11 setInterruptionHandler:v177];
                _Block_release(v177);
                v178 = swift_allocObject();
                *(v178 + 16) = v28;
                v183 = sub_1000DEB70;
                v184 = v178;
                aBlock = _NSConcreteStackBlock;
                v180 = 1107296256;
                v30 = &unk_1001A89F0;
                goto LABEL_14;
              }

LABEL_77:
              v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v168 & 1) == 0)
              {

                return 0;
              }

              goto LABEL_78;
            }
          }

          v157 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STSettingsServiceProtocol];
          [v11 setExportedInterface:v157];

          v158 = type metadata accessor for SettingsService();
          v159 = *(v158 + 48);
          v160 = *(v158 + 52);
          v161 = swift_allocObject();
          v162 = OBJC_IVAR____TtC15ScreenTimeAgent15SettingsService____lazy_storage___logger;
          v163 = type metadata accessor for Logger();
          v25 = 1;
          (*(*(v163 - 8) + 56))(v161 + v162, 1, 1, v163);
          [v11 setExportedObject:v161];

          v164 = swift_allocObject();
          *(v164 + 16) = v2;
          v183 = sub_1000DEB94;
          v184 = v164;
          aBlock = _NSConcreteStackBlock;
          v180 = 1107296256;
          v181 = sub_1000D48E0;
          v182 = &unk_1001A8A40;
          v165 = _Block_copy(&aBlock);
          v28 = v2;

          [v11 setInterruptionHandler:v165];
          _Block_release(v165);
          v166 = swift_allocObject();
          *(v166 + 16) = v28;
          v183 = sub_1000DEBB8;
          v184 = v166;
          aBlock = _NSConcreteStackBlock;
          v180 = 1107296256;
          v30 = &unk_1001A8A90;
          goto LABEL_14;
        }
      }

      v145 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___STPrivateServiceProtocol];
      [v11 setExportedInterface:v145];

      v146 = type metadata accessor for PrivateService();
      v147 = *(v146 + 48);
      v148 = *(v146 + 52);
      v149 = swift_allocObject();
      v150 = OBJC_IVAR____TtC15ScreenTimeAgent14PrivateService____lazy_storage___logger;
      v151 = type metadata accessor for Logger();
      v25 = 1;
      (*(*(v151 - 8) + 56))(v149 + v150, 1, 1, v151);
      [v11 setExportedObject:v149];

      v152 = swift_allocObject();
      *(v152 + 16) = v2;
      v183 = sub_1000DEBDC;
      v184 = v152;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v181 = sub_1000D48E0;
      v182 = &unk_1001A8AE0;
      v153 = _Block_copy(&aBlock);
      v28 = v2;

      [v11 setInterruptionHandler:v153];
      _Block_release(v153);
      v154 = swift_allocObject();
      *(v154 + 16) = v28;
      v183 = sub_1000DEC00;
      v184 = v154;
      aBlock = _NSConcreteStackBlock;
      v180 = 1107296256;
      v30 = &unk_1001A8B30;
      goto LABEL_14;
    }
  }

  v132 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14ScreenTimeCore19UserSettingsStoring_];
  [v11 setExportedInterface:v132];

  result = [v11 exportedInterface];
  if (result)
  {
    v133 = result;

    static NSXPCConnection.configureExportedUserSettingsStoringInterface(_:)();

    v134 = type metadata accessor for LegacyUserSettingsService();
    v135 = *(v134 + 48);
    v136 = *(v134 + 52);
    v137 = swift_allocObject();
    v138 = OBJC_IVAR____TtC15ScreenTimeAgent25LegacyUserSettingsService____lazy_storage___logger;
    v139 = type metadata accessor for Logger();
    v25 = 1;
    (*(*(v139 - 8) + 56))(v137 + v138, 1, 1, v139);
    [v11 setExportedObject:v137];

    v140 = swift_allocObject();
    *(v140 + 16) = v2;
    v183 = sub_1000DEC24;
    v184 = v140;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v181 = sub_1000D48E0;
    v182 = &unk_1001A8B80;
    v141 = _Block_copy(&aBlock);
    v28 = v2;

    [v11 setInterruptionHandler:v141];
    _Block_release(v141);
    v142 = swift_allocObject();
    *(v142 + 16) = v28;
    v183 = sub_1000DF170;
    v184 = v142;
    aBlock = _NSConcreteStackBlock;
    v180 = 1107296256;
    v30 = &unk_1001A8BD0;
    goto LABEL_14;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_1000DDAD4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  return sub_100106EE8("IDSServiceDelegate.didSendWithSuccess", 37, 2, v3, 0);
}

void sub_1000DDD0C(uint64_t a1, uint64_t a2)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a2)
    {
      sub_1000DEAE0();
      swift_allocError();
      *v7 = a1;
      v7[1] = a2;

      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Message %@ has been delivered with context", v5, 0xCu);
    sub_1000A5148(v6, &unk_1001E1820, &qword_100140020);
  }
}

uint64_t sub_1000DDE70()
{
  v0 = type metadata accessor for Logger();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  return sub_100106EE8("Daemon.unpackingIDSData", 23, 2, v3, 0);
}

id sub_1000DE0B8(char *description, const char *a2)
{
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  if (qword_1001DF138 != -1)
  {
    swift_once();
  }

  v4 = _os_activity_create(&_mh_execute_header, description, qword_1001E12B0, OS_ACTIVITY_FLAG_DEFAULT);
  swift_beginAccess();
  os_activity_scope_enter(v4, &v10);
  swift_endAccess();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  v8 = [objc_allocWithZone(CATOperation) init];
  swift_beginAccess();
  os_activity_scope_leave(&v10);
  swift_endAccess();
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1000DE260()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1000DE2F0, 0, 0);
}

uint64_t sub_1000DE2F0()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000DE3EC;
  v3 = *(v0 + 24);

  return sub_10010DB7C("Daemon:userNotificationCenter.didReceiveResponse", 48, 2, v3, 0);
}

uint64_t sub_1000DE3EC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DE528, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1000DE528()
{
  v15 = v0;
  v1 = v0[5];
  v2 = v0[2];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1000A2E68(0xD000000000000025, 0x800000010014FA30, &v14);
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in %s: %@", v7, 0x16u);
    sub_1000A5148(v8, &unk_1001E1820, &qword_100140020);

    sub_1000A462C(v9);
  }

  else
  {
  }

  v11 = v0[3];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000DE6FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A5418;

  return sub_1000D9604(a1, v4, v5, v7, v6);
}

uint64_t sub_1000DE7BC(uint64_t a1)
{
  v2 = type metadata accessor for LocalDeviceManagement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DE818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A4F84;

  return sub_1000D918C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000DE8D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000DE920()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000D7E0C();
}

uint64_t sub_1000DE9E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v12 = *(v0 + 72);
  v9 = *(v0 + 88);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1000A5418;

  return sub_1000D7810();
}

unint64_t sub_1000DEAE0()
{
  result = qword_1001E1858;
  if (!qword_1001E1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1858);
  }

  return result;
}

uint64_t sub_1000DEB58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DEEE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DEF2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000A53D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DEF80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000DEFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&unk_1001E1A30, qword_100141EF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DF054(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 128);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 112);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  *(a2 + 112) = v9;
  *(a2 + 128) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static STEventStreams.fetchAllURLs(for:profileIdentifier:)()
{
  v0 = type metadata accessor for Date();
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.distantPast.getter();
  static Date.now.getter();
  DateInterval.init(start:end:)();
  v8 = static EventStreams.urls(during:bundleIdentifier:profileIdentifier:)();
  (*(v4 + 8))(v7, v3);
  return v8;
}

id STEventStreams.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_1000DF75C()
{
  result = qword_1001E1A68;
  if (!qword_1001E1A68)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1A68);
  }

  return result;
}

uint64_t type metadata accessor for Restrictions()
{
  result = qword_1001E1A98;
  if (!qword_1001E1A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DF808()
{
  v1 = OBJC_IVAR____TtC15ScreenTimeAgent11LocalDevice_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LocalDevice()
{
  result = qword_1001E1B80;
  if (!qword_1001E1B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DF8D4()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000DF970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent14PrivateService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000A5148(v9, &qword_1001DFDC0, &unk_1001405E0);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000DFCFC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000DFDAC, 0, 0);
}

uint64_t sub_1000DFDAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.isScreenTimeEnabledForLocalUser", 46, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E0074(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E0134, 0, 0);
}

uint64_t sub_1000E0134()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("PrivateService.isScreenTimeEnabledForRemoteUser", 47, 2, v1, 0);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v2;

  (*(v3 + 16))(v3, v6 & 1, 0);
  v7 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E040C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E04BC, 0, 0);
}

uint64_t sub_1000E04BC()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BDEE8;
  v3 = *(v0 + 24);

  return sub_10010DB7C("PrivateService.setScreenTimeEnabledForLocalUser", 47, 2, v3, 0);
}

uint64_t sub_1000E074C(void *a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = _Block_copy(a3);
  v8 = a1;

  return _swift_task_switch(sub_1000E080C, 0, 0);
}

uint64_t sub_1000E080C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0908;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.setScreenTimeEnabledForRemoteUserWithDSID", 56, 2, v3, 0);
}

uint64_t sub_1000E0908()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000E0AAC;
  }

  else
  {
    v3 = sub_1000E0A1C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E0A1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  v3 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E0AAC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v5);

  v6 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000E0CE8(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E0DA8, 0, 0);
}

uint64_t sub_1000E0DA8()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0EA4;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.enableRemoteManagement", 37, 2, v3, 0);
}

uint64_t sub_1000E0EA4()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000EEA10;
  }

  else
  {
    v3 = sub_1000EE9E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E1130(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E11E0, 0, 0);
}

uint64_t sub_1000E11E0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.isScreenTimeSyncEnabled", 38, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E14A4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E1554, 0, 0);
}

uint64_t sub_1000E1554()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BCE14;
  v3 = *(v0 + 24);

  return sub_10010DB7C("PrivateService.setScreenTimeSyncEnabled", 39, 2, v3, 0);
}

uint64_t sub_1000E17C8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E1878, 0, 0);
}

uint64_t sub_1000E1878()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.shouldRequestMoreTime", 36, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E1B40(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E1C00, 0, 0);
}

uint64_t sub_1000E1C00()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("PrivateService.isContentPrivacyEnabled", 38, 2, v1, 0);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v2;

  (*(v3 + 16))(v3, v6 & 1, 0);
  v7 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E1EC8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E1F78, 0, 0);
}

uint64_t sub_1000E1F78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.clearRestrictionsPasscode", 40, 2, v2, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E2218(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E22C8, 0, 0);
}

uint64_t sub_1000E22C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.isRestrictionsPasscodeSet", 40, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E257C(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E262C, 0, 0);
}

uint64_t sub_1000E262C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.needsToSetRestrictionsPasscode", 45, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E28F4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E29A4, 0, 0);
}

uint64_t sub_1000E29A4()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BDEE8;
  v3 = *(v0 + 24);

  return sub_10010DB7C("PrivateService.setRestrictionsPasscode", 38, 2, v3, 0);
}

uint64_t sub_1000E2C2C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E2CDC, 0, 0);
}

uint64_t sub_1000E2CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.authenticateRestrictionsPasscode", 47, 2, v2, 1);

  (*(*(v0 + 32) + 16))(*(v0 + 32), 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E2E04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1000A0F2C(&qword_1001E1F08, &qword_100142050);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(sub_1000A0F2C(&qword_1001E1F10, &qword_100142058) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000E2F08, 0, 0);
}

uint64_t sub_1000E2F08()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  Logger.init(subsystem:category:)();
  sub_100104108("PrivateService.fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDate", 71, 2, v1, 1, 0, sub_1000EC5B8, v3);
  v4 = v0[6];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  sub_1000EC5D4(v0[7], v5);
  v8 = *v5;
  v9 = *(v6 + 48);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 32))(v7, &v5[v9], v10);

  v11 = v0[1];

  return v11(v8);
}

void sub_1000E30DC(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000A0F2C(&qword_1001E1F08, &qword_100142050);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DF970(v12);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v4;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Fetching Restrictions passcode entry attempt count and timeout date", v15, 2u);
    v2 = v1;
    v4 = v32;
  }

  (*(v9 + 8))(v12, v8);
  if (qword_1001DF110 != -1)
  {
    swift_once();
  }

  v16 = qword_1001E6FF0;
  v17 = type metadata accessor for DataStore(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  (*(v9 + 56))(v20 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, 1, 1, v8);
  if (byte_1001E7010 == 1)
  {
    v20[2] = v16;
    v21 = v16;
    v22 = sub_1000F5578();
    __chkstk_darwin(v22);
    NSManagedObjectContext.performAndWait<A>(_:)();
    if (v2)
    {
      swift_setDeallocating();

      sub_1000A5148(v20 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
      v23 = *(*v20 + 12);
      v24 = *(*v20 + 26);
      swift_deallocClassInstance();
    }

    else
    {
      v25 = *(v4 + 48);
      swift_setDeallocating();

      sub_1000A5148(v20 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
      v26 = *(*v20 + 12);
      v27 = *(*v20 + 26);
      swift_deallocClassInstance();

      v28 = *v7;
      v29 = *(v4 + 48);
      v30 = type metadata accessor for Date();
      (*(*(v30 - 8) + 32))(&a1[v25], &v7[v29], v30);
      *a1 = v28;
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000E36B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = type metadata accessor for Date();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v2[5] = v7;
  v2[6] = _Block_copy(a1);

  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_1000E37D0;

  return sub_1000E2E04(v7);
}

uint64_t sub_1000E37D0(void *a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v4[6];
  if (v1)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v12 = v5[4];
    v11 = v5[5];
    v13 = v5[3];
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v11, v13);
    (v9)[2](v9, a1, isa, 0);

    _Block_release(v9);
  }

  v15 = v5[5];

  v16 = *(v8 + 8);

  return v16();
}

uint64_t sub_1000E3B28(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E3BD8, 0, 0);
}

uint64_t sub_1000E3BD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v4 = sub_100108C3C("PrivateService.fetchCommunicationPolicies", 41, 2, v1, 0);
  v6 = v5;

  (*(v2 + 16))(*(v0 + 32), v4, v6, 0);
  v7 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E3EBC(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = _Block_copy(a3);
  v8 = a2;

  return _swift_task_switch(sub_1000E3F7C, 0, 0);
}

uint64_t sub_1000E3F7C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.setManageContactsEnabled", 39, 2, v1, 0);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  (*(v2 + 16))(v2, 0);
  v5 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E424C(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E430C, 0, 0);
}

uint64_t sub_1000E430C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.requestToManageContacts", 38, 2, v1, 0);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  (*(v2 + 16))(v2, 0);
  v5 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E45DC(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E469C, 0, 0);
}

uint64_t sub_1000E469C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = sub_100108CD0("PrivateService.fetchContactManagementState", 42, 2, v1, 0);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v2;

  (*(v3 + 16))(v3, v6, 0);
  v7 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E4964(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E4A14, 0, 0);
}

uint64_t sub_1000E4A14()
{
  v2 = v0[2];
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  sub_100108D64("PrivateService.primaryiCloudCardDAVAccountIdentifier", 52, 2, v1, 1);

  v3 = String._bridgeToObjectiveC()();

  v4 = v0[4];
  (v4)[2](v4, v3, 0);

  _Block_release(v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000E4CDC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E4D8C, 0, 0);
}

uint64_t sub_1000E4D8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.fetchContactsEditable", 36, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E5054(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v7 = *(*(sub_1000A0F2C(&qword_1001E1F18, &unk_1001422F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = _Block_copy(a2);
  v11 = a1;

  return _swift_task_switch(sub_1000E51A8, 0, 0);
}

uint64_t sub_1000E51A8()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v6 = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  Logger.init(subsystem:category:)();
  sub_1001041A0("PrivateService.fetchLastCommunicationLimitsModificationDate", 59, 2, v1, 1, 0, sub_1000ED9F8, v6);

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  (*(v8 + 32))(v7, v0[5], v9);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v7, v9);
  v11 = isa;
  v12 = isa;
  v13 = v0[9];
  v15 = v0[4];
  v14 = v0[5];
  (v13)[2](v13, v11, 0);

  _Block_release(v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E54F0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E55A0, 0, 0);
}

uint64_t sub_1000E55A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.applyDefaultUserPolicies", 39, 2, v2, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E585C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64) + 15;
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v4[8] = v11;

  return _swift_task_switch(sub_1000E59A8, 0, 0);
}

uint64_t sub_1000E59A8()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000E5AA4;
  v3 = *(v0 + 24);

  return sub_10010DB7C("PrivateService.permitWebFilterURL", 33, 2, v3, 0);
}

uint64_t sub_1000E5AA4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1000E5C8C;
  }

  else
  {
    v4 = sub_1000E5BD4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E5BD4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 16);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  _Block_release(*(v0 + 56));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000E5C8C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  (*(v5 + 8))(v3, v4);
  v7 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v7);

  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  _Block_release(*(v0 + 56));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000E5EE0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E5F90, 0, 0);
}

uint64_t sub_1000E5F90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v3 = sub_100106124("PrivateService.isExplicitContentRestricted", 42, 2, v1, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), v3 & 1, 0);
  v4 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

void sub_1000E60CC(void *a1@<X1>, const char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = a5;
  v42 = a4;
  v8 = v5;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DF970(v14);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = a3;
    v40 = v5;
    v19 = v18;
    v20 = a2;
    v21 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v21 = v15;
    v22 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, v20, v19, 0xCu);
    sub_1000A5148(v21, &unk_1001E1820, &qword_100140020);

    v8 = v40;
  }

  (*(v11 + 8))(v14, v10);
  if (qword_1001DF110 != -1)
  {
    swift_once();
  }

  v23 = qword_1001E6FF0;
  v24 = type metadata accessor for DataStore(0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v27[3] = 0;
  v27[4] = 0;
  (*(v11 + 56))(v27 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, 1, 1, v10);
  if (byte_1001E7010 == 1)
  {
    v27[2] = v23;
    v28 = v23;
    sub_1000F5C78(v15);
    if (v8)
    {
    }

    else
    {
      v30 = v29;
      v43 = 0;
      v31 = sub_1000F5578();
      __chkstk_darwin(v31);
      *(&v39 - 4) = v27;
      *(&v39 - 3) = v30;
      v38 = &v43;
      NSManagedObjectContext.performAndWait<A>(_:)();

      v32 = v27[4];
      __chkstk_darwin(v33);
      *(&v39 - 4) = v27;
      *(&v39 - 3) = v30;
      LOBYTE(v38) = v34;
      type metadata accessor for Date();
      v35 = v32;
      NSManagedObjectContext.performAndWait<A>(_:)();

      swift_setDeallocating();
      sub_1000A5148(v27 + OBJC_IVAR____TtC15ScreenTimeAgent9DataStore____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
      v36 = *(*v27 + 12);
      v37 = *(*v27 + 26);
      swift_deallocClassInstance();
    }
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000E66A8(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v7 = *(*(sub_1000A0F2C(&qword_1001E1F18, &unk_1001422F0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[6] = v8;
  v9 = *(v8 - 8);
  v3[7] = v9;
  v10 = *(v9 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = _Block_copy(a2);
  v11 = a1;

  return _swift_task_switch(sub_1000E67FC, 0, 0);
}

uint64_t sub_1000E67FC()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  v6 = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  Logger.init(subsystem:category:)();
  sub_1001041A0("PrivateService.fetchLastModificationDate", 40, 2, v1, 1, 0, sub_1000ED650, v6);

  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
  (*(v8 + 32))(v7, v0[5], v9);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v7, v9);
  v11 = isa;
  v12 = isa;
  v13 = v0[9];
  v15 = v0[4];
  v14 = v0[5];
  (v13)[2](v13, v11, 0);

  _Block_release(v13);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1000E6B60(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = _Block_copy(a3);

  return _swift_task_switch(sub_1000E6C10, 0, 0);
}

uint64_t sub_1000E6C10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.applyIntrocutionModel", 36, 2, v2, 0);

  (*(*(v0 + 32) + 16))(*(v0 + 32), 0);
  v3 = *(v0 + 24);
  _Block_release(*(v0 + 32));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E6EC4(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000E6F84, 0, 0);
}

uint64_t sub_1000E6F84()
{
  v1 = v0[4];
  Logger.init(subsystem:category:)();
  v2 = sub_100108BA8("PrivateService.isAllowFindMyFriendsModificationSet", 50, 2, v1, 0);
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v2;

  (v3)[2](v3, v6, 0);
  _Block_release(v3);

  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1000E7274(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = _Block_copy(a3);
  v8 = a2;

  return _swift_task_switch(sub_1000E7334, 0, 0);
}

uint64_t sub_1000E7334()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0EA4;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.updateAllowFindMyFriendsModification", 51, 2, v3, 0);
}

uint64_t sub_1000E75BC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E766C, 0, 0);
}

uint64_t sub_1000E766C()
{
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.shouldAllowOneMoreMinuteForBundleIdentifier", 58, 2, v1, 0);
  v2 = v0[4];
  v3 = v0[2];
  sub_1000A9564();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;

  (v2)[2](v2, isa, 0);
  _Block_release(v2);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E795C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E7A0C, 0, 0);
}

uint64_t sub_1000E7A0C()
{
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.shouldAllowOneMoreMinuteForWebDomain", 51, 2, v1, 0);
  v2 = v0[4];
  v3 = v0[2];
  sub_1000A9564();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;

  (v2)[2](v2, isa, 0);
  _Block_release(v2);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E7CFC(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[3] = swift_task_alloc();
  v3[4] = _Block_copy(a2);

  return _swift_task_switch(sub_1000E7DAC, 0, 0);
}

uint64_t sub_1000E7DAC()
{
  v1 = v0[3];
  Logger.init(subsystem:category:)();
  sub_100106EE8("PrivateService.shouldAllowOneMoreMinuteForCategoryIdentifier", 60, 2, v1, 0);
  v2 = v0[4];
  v3 = v0[2];
  sub_1000A9564();
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;

  (v2)[2](v2, isa, 0);
  _Block_release(v2);

  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000E8088(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v2[4] = _Block_copy(a1);

  return _swift_task_switch(sub_1000E8138, 0, 0);
}

uint64_t sub_1000E8138()
{
  v1 = *(v0 + 24);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000BDEE8;
  v3 = *(v0 + 24);

  return sub_10010DB7C("PrivateService.forceFamilyFetch", 31, 2, v3, 0);
}

uint64_t sub_1000E83C8(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[2] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a3);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_1000E84DC, 0, 0);
}

uint64_t sub_1000E84DC()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000E85D8;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForURL", 37, 2, v3, 0);
}

uint64_t sub_1000E85D8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000E86EC;
  }

  else
  {
    v3 = sub_1000EE9EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E86EC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  _Block_release(*(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000E8944(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v3 + 16) = swift_task_alloc();
  *(v3 + 24) = _Block_copy(a3);

  return _swift_task_switch(sub_1000E89E0, 0, 0);
}

uint64_t sub_1000E89E0()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000E8ADC;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForURLs", 38, 2, v3, 0);
}

uint64_t sub_1000E8ADC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1000E8BF0;
  }

  else
  {
    v3 = sub_1000EEA14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E8BF0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  v4 = *(v0 + 16);
  _Block_release(*(v0 + 24));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000E8E28(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v3 + 16) = swift_task_alloc();
  *(v3 + 24) = _Block_copy(a3);

  return _swift_task_switch(sub_1000E8EC4, 0, 0);
}

uint64_t sub_1000E8EC4()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000E8FC0;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForDomain", 40, 2, v3, 0);
}

uint64_t sub_1000E8FC0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1000EEA18;
  }

  else
  {
    v3 = sub_1000EEA14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E9268(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[2] = swift_task_alloc();
  v6 = type metadata accessor for DateInterval();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a3);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_task_switch(sub_1000E937C, 0, 0);
}

uint64_t sub_1000E937C()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1000E9478;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryDuringInterval", 45, 2, v3, 0);
}

uint64_t sub_1000E9478()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000EE9F0;
  }

  else
  {
    v3 = sub_1000EE9EC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000E9718(uint64_t a1, const void *a2)
{
  v4 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = _Block_copy(a2);

  return _swift_task_switch(sub_1000E97B4, 0, 0);
}

uint64_t sub_1000E97B4()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000E8FC0;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteAllWebApplicationHistory", 45, 2, v3, 0);
}

uint64_t sub_1000E9A58(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[2] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v4[7] = v11;

  return _swift_task_switch(sub_1000E9B88, 0, 0);
}

uint64_t sub_1000E9B88()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000E9C84;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForURLWithProfileIdentifier", 58, 2, v3, 0);
}

uint64_t sub_1000E9C84()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000E9E54;
  }

  else
  {
    v4 = sub_1000E9DB4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E9DB4()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  (*(v1 + 16))(v1, 0);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  _Block_release(*(v0 + 48));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000E9E54()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  v4 = *(v0 + 40);
  v5 = *(v0 + 16);
  _Block_release(*(v0 + 48));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000EA0C0(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[2] = swift_task_alloc();
  v4[3] = _Block_copy(a4);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v4[4] = v8;

  return _swift_task_switch(sub_1000EA178, 0, 0);
}

uint64_t sub_1000EA178()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000EA274;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForURLsWithProfileIdentifier", 59, 2, v3, 0);
}

uint64_t sub_1000EA274()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1000EA420;
  }

  else
  {
    v4 = sub_1000EA3A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000EA3A4()
{
  (*(*(v0 + 24) + 16))();
  v1 = *(v0 + 16);
  _Block_release(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EA420()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v3);

  v4 = *(v0 + 16);
  _Block_release(*(v0 + 24));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000EA66C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[2] = swift_task_alloc();
  v4[3] = _Block_copy(a4);
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
  }

  v4[4] = v8;

  return _swift_task_switch(sub_1000EA724, 0, 0);
}

uint64_t sub_1000EA724()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000EA820;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForDomainWithProfileIdentifier", 61, 2, v3, 0);
}

uint64_t sub_1000EA820()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_1000EEA1C;
  }

  else
  {
    v4 = sub_1000EEA14;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000EAAF8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[2] = swift_task_alloc();
  v8 = type metadata accessor for DateInterval();
  v4[3] = v8;
  v9 = *(v8 - 8);
  v4[4] = v9;
  v10 = *(v9 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = _Block_copy(a4);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v4[7] = v11;

  return _swift_task_switch(sub_1000EAC28, 0, 0);
}

uint64_t sub_1000EAC28()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1000EAD24;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteWebHistoryDuringIntervalWithProfileIdentifier", 66, 2, v3, 0);
}

uint64_t sub_1000EAD24()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1000EE9F4;
  }

  else
  {
    v4 = sub_1000EE9EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000EAFE8(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[2] = swift_task_alloc();
  v3[3] = _Block_copy(a3);
  if (a2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;

  return _swift_task_switch(sub_1000EB0A0, 0, 0);
}

uint64_t sub_1000EB0A0()
{
  v1 = *(v0 + 16);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1000EA820;
  v3 = *(v0 + 16);

  return sub_10010DB7C("PrivateService.deleteAllWebApplicationHistoryWithProfileIdentifier", 66, 2, v3, 0);
}

uint64_t sub_1000EB344(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v8 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = _Block_copy(a4);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;

  return _swift_task_switch(sub_1000EB47C, 0, 0);
}

uint64_t sub_1000EB47C()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000EB578;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.deleteWebHistoryForURLWithClientBundleURLWrapper", 63, 2, v3, 0);
}

uint64_t sub_1000EB578()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000EB750;
  }

  else
  {
    v3 = sub_1000EB68C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EB68C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  (*(v4 + 8))(v1, v3);
  (*(v2 + 16))(v2, 0);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  _Block_release(*(v0 + 64));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000EB750()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  (*(v5 + 8))(v3, v4);
  v8 = _convertErrorToNSError(_:)();

  (*(v2 + 16))(v2, v8);

  v9 = *(v0 + 56);
  v10 = *(v0 + 32);
  _Block_release(*(v0 + 64));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000EB9D8(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v8 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v9 = type metadata accessor for DateInterval();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v5[6] = v10;
  v11 = *(v10 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = _Block_copy(a4);
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;

  return _swift_task_switch(sub_1000EBB10, 0, 0);
}

uint64_t sub_1000EBB10()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1000EBC0C;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.deleteWebHistoryDuringIntervalWithClientBundleURLWrapper", 71, 2, v3, 0);
}

uint64_t sub_1000EBC0C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1000EEA24;
  }

  else
  {
    v3 = sub_1000EEA20;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EBEB4(uint64_t a1, void *a2, const void *a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v7 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v4[5] = _Block_copy(a3);
  v8 = a2;

  return _swift_task_switch(sub_1000EBF74, 0, 0);
}

uint64_t sub_1000EBF74()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000EC070;
  v3 = *(v0 + 32);

  return sub_10010DB7C("PrivateService.deleteAllWebHistoryWithClientBundleURLWrapper", 60, 2, v3, 0);
}

uint64_t sub_1000EC070()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1000E0AAC;
  }

  else
  {
    v3 = sub_1000EC184;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EC184()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  v4 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000EC210()
{
  sub_1000A5148(v0 + OBJC_IVAR____TtC15ScreenTimeAgent14PrivateService____lazy_storage___logger, &qword_1001DFDC0, &unk_1001405E0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivateService()
{
  result = qword_1001E1CD8;
  if (!qword_1001E1CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000EC2DC()
{
  result = qword_1001E1F00;
  if (!qword_1001E1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1F00);
  }

  return result;
}

uint64_t sub_1000EC5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A0F2C(&qword_1001E1F08, &qword_100142050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC660()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000EBEB4(v2, v3, v5, v4);
}

uint64_t sub_1000EC720()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000EB9D8(v2, v3, v4, v5, v6);
}

uint64_t sub_1000EC7E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000EB344(v2, v3, v4, v5, v6);
}

uint64_t sub_1000EC8B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000EAFE8(v2, v3, v5);
}

uint64_t sub_1000EC970()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000EAAF8(v2, v3, v4, v5);
}

uint64_t sub_1000ECA38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000EA66C(v2, v3, v4, v5);
}

uint64_t sub_1000ECB00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000EA0C0(v2, v3, v4, v5);
}

uint64_t sub_1000ECBC8()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ECC20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000A5418;

  return sub_1000E9A58(v2, v3, v4, v5);
}

uint64_t sub_1000ECCE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E9718(v2, v3);
}

uint64_t sub_1000ECD9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E9268(v2, v3, v5);
}

uint64_t sub_1000ECE5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E8E28(v2, v3, v5);
}

uint64_t sub_1000ECF1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E8944(v2, v3, v5);
}

uint64_t sub_1000ECFDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E83C8(v2, v3, v5);
}

uint64_t sub_1000ED09C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E8088(v2, v3);
}

uint64_t sub_1000ED148()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E7CFC(v2, v3, v4);
}

uint64_t sub_1000ED1FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E795C(v2, v3, v4);
}

uint64_t sub_1000ED2B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E75BC(v2, v3, v4);
}

uint64_t sub_1000ED364()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E7274(v2, v3, v4, v5);
}

uint64_t sub_1000ED428()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E6EC4(v2, v3, v4);
}

uint64_t sub_1000ED4DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E6B60(v2, v3, v5, v4);
}

uint64_t sub_1000ED59C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E66A8(v2, v3, v4);
}

uint64_t sub_1000ED6DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E5EE0(v2, v3);
}

uint64_t sub_1000ED788()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ED7D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E585C(v2, v3, v5, v4);
}

uint64_t sub_1000ED898()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E54F0(v2, v3);
}

uint64_t sub_1000ED944()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E5054(v2, v3, v4);
}

uint64_t sub_1000EDA64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E4CDC(v2, v3);
}

uint64_t sub_1000EDB10()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E4964(v2, v3);
}

uint64_t sub_1000EDBBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E45DC(v2, v3, v4);
}

uint64_t sub_1000EDC70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E424C(v2, v3, v4);
}

uint64_t sub_1000EDD24()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000EDD6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E3EBC(v2, v3, v4, v5);
}

uint64_t sub_1000EDE30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E3B28(v2, v3);
}

uint64_t sub_1000EDEDC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E36B0(v2, v3);
}

uint64_t sub_1000EDF88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E2C2C(v2, v3, v4);
}

uint64_t sub_1000EE03C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E28F4(v2, v3, v4);
}

uint64_t sub_1000EE0F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E257C(v2, v3);
}

uint64_t sub_1000EE19C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E2218(v2, v3);
}

uint64_t sub_1000EE248()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E1EC8(v2, v3);
}

uint64_t sub_1000EE2F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E1B40(v2, v3, v4);
}

uint64_t sub_1000EE3A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A4F84;

  return sub_1000E17C8(v2, v3);
}

uint64_t sub_1000EE454()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E14A4(v2, v4, v3);
}

uint64_t sub_1000EE508()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000E1130(v2, v3);
}

uint64_t sub_1000EE5B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E0CE8(v2, v3, v4);
}

uint64_t sub_1000EE668()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000A5418;

  return sub_1000E074C(v2, v3, v5, v4);
}

uint64_t sub_1000EE72C()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000EE76C()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E040C(v2, v4, v3);
}

uint64_t sub_1000EE820()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000E0074(v2, v3, v4);
}

uint64_t sub_1000EE8D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000A5418;

  return sub_1000DFCFC(v2, v3);
}

unint64_t sub_1000EE994()
{
  result = qword_1001E1F20;
  if (!qword_1001E1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001E1F20);
  }

  return result;
}

uint64_t sub_1000EEBB4(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000EEC74, 0, 0);
}

uint64_t sub_1000EEC74()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = sub_100106124("DowntimeService.isDowntimeEnabled", 33, 2, v1, 0);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v2;

  (*(v3 + 16))(v3, v6 & 1, 0);
  v7 = *(v0 + 32);
  _Block_release(*(v0 + 40));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000EEF50(void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v6 = *(*(type metadata accessor for Logger() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = _Block_copy(a2);
  v7 = a1;

  return _swift_task_switch(sub_1000EF010, 0, 0);
}

uint64_t sub_1000EF010()
{
  v1 = *(v0 + 32);
  Logger.init(subsystem:category:)();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000E0908;
  v3 = *(v0 + 32);

  return sub_10010DB7C("DowntimeService.toggleOnDemandDowntime", 38, 2, v3, 0);
}

uint64_t sub_1000EF10C()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent15DowntimeService____lazy_storage___logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DowntimeService()
{
  result = qword_1001E1F58;
  if (!qword_1001E1F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EF1C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A4F84;

  return sub_1000EEF50(v2, v3, v4);
}

uint64_t sub_1000EF278()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000EEBB4(v2, v3, v4);
}

uint64_t type metadata accessor for Downtime()
{
  result = qword_1001E2030;
  if (!qword_1001E2030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for Downtime();
}

uint64_t sub_1000EF380@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A0F2C(&qword_1001DFDC0, &unk_1001405E0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC15ScreenTimeAgent25LegacyUserSettingsService____lazy_storage___logger;
  swift_beginAccess();
  sub_1000BBA38(v1 + v10, v9);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1000ABF3C(v9);
  Logger.init(subsystem:category:)();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000BBAA8(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1000EF580()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000EF640, 0, 0);
}

uint64_t sub_1000EF640()
{
  v1 = v0[2];
  sub_1000EF380(v0[5]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LegacyUserSettingsService: userIdentifiers() is not implemented!", v4, 2u);
  }

  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(&_swiftEmptySetSingleton);
}

uint64_t sub_1000EF8CC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1000EF974;

  return sub_1000EF580();
}

uint64_t sub_1000EF974()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    type metadata accessor for UserID();
    sub_1000F28C8();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v9 = isa;
    v8 = 0;
    v7 = isa;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_1000EFB10()
{
  v0 = sub_1000A0F2C(&qword_1001E21E8, &qword_1001427F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v46 - v2;
  v4 = sub_1000A0F2C(&qword_1001E21F0, &unk_1001427F8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v46 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v53 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v51 = v46 - v12;
  sub_1000A0F2C(&unk_1001E0010, &qword_100140140);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100142710;
  v13 = type metadata accessor for Calendar();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v7, 1, 1, v13);
  v17 = type metadata accessor for TimeZone();
  v18 = *(v17 - 8);
  v19 = *(v18 + 56);
  v20 = v18 + 56;
  v49 = v17;
  v19(v3, 1, 1, v17);
  v50 = v19;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v15(v7, 1, 1, v13);
  v19(v3, 1, 1, v17);
  v21 = v20;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v52 = type metadata accessor for Schedule();
  v22 = objc_allocWithZone(v52);
  *(v54 + 32) = Schedule.init(enabled:start:end:)();
  v46[1] = v16;
  v47 = v15;
  v15(v7, 1, 1, v13);
  v23 = v49;
  v24 = v50;
  v48 = v21;
  v50(v3, 1, 1, v49);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v15(v7, 1, 1, v13);
  v24(v3, 1, 1, v23);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v25 = objc_allocWithZone(v52);
  *(v54 + 40) = Schedule.init(enabled:start:end:)();
  v46[0] = v13;
  v26 = v47;
  v47(v7, 1, 1, v13);
  v27 = v50;
  v50(v3, 1, 1, v23);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v26(v7, 1, 1, v13);
  v27(v3, 1, 1, v23);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v28 = objc_allocWithZone(v52);
  *(v54 + 48) = Schedule.init(enabled:start:end:)();
  v29 = v46[0];
  v26(v7, 1, 1, v46[0]);
  v30 = v50;
  v50(v3, 1, 1, v23);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v26(v7, 1, 1, v29);
  v30(v3, 1, 1, v23);
  v31 = v30;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v32 = objc_allocWithZone(v52);
  *(v54 + 56) = Schedule.init(enabled:start:end:)();
  v33 = v29;
  v34 = v29;
  v35 = v47;
  v47(v7, 1, 1, v34);
  v36 = v49;
  v31(v3, 1, 1, v49);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v35(v7, 1, 1, v33);
  v31(v3, 1, 1, v36);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v37 = objc_allocWithZone(v52);
  *(v54 + 64) = Schedule.init(enabled:start:end:)();
  v35(v7, 1, 1, v33);
  v38 = v49;
  v31(v3, 1, 1, v49);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v35(v7, 1, 1, v33);
  v39 = v38;
  v31(v3, 1, 1, v38);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v40 = objc_allocWithZone(v52);
  *(v54 + 72) = Schedule.init(enabled:start:end:)();
  v41 = v46[0];
  v35(v7, 1, 1, v46[0]);
  v31(v3, 1, 1, v39);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v35(v7, 1, 1, v41);
  v31(v3, 1, 1, v39);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v42 = objc_allocWithZone(v52);
  v43 = Schedule.init(enabled:start:end:)();
  v44 = v54;
  *(v54 + 80) = v43;
  return v44;
}

uint64_t sub_1000F0AF4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000F0BC4;

  return sub_1000F1DFC();
}

uint64_t sub_1000F0BC4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 32);
  if (v3)
  {
    v11 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v11);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000F0F14(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000F0FF4;

  return sub_1000F2084();
}

uint64_t sub_1000F0FF4()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  v10 = *(v3 + 40);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_1000F1348(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1000F2920;

  return sub_1000F2250();
}

uint64_t sub_1000F15B4(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000F1684;

  return sub_1000F241C();
}

uint64_t sub_1000F1684()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1000F1824()
{
  sub_1000ABF3C(v0 + OBJC_IVAR____TtC15ScreenTimeAgent25LegacyUserSettingsService____lazy_storage___logger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyUserSettingsService()
{
  result = qword_1001E2118;
  if (!qword_1001E2118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F18DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000A5418;

  return sub_1000F15B4(v2, v3, v4);
}

void sub_1000F1B30(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000A0F2C(&qword_1001E21E0, &qword_1001427E8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = sub_1000F1990(v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for AppLimit();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for AppLimit();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}