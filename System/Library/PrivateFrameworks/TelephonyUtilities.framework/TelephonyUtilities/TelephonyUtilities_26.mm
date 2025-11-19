uint64_t sub_1003E9B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003E9B20(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1003E9B68(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0xD000000000000016;
  switch(v1)
  {
    case 0:
    case 4:
      return result;
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1003E9C44(uint64_t a1)
{
  result = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 2)
    {
      return 0xD00000000000001CLL;
    }

    else if (a1 == 1)
    {
      return 0xD000000000000027;
    }

    else
    {
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
    }
  }

  return result;
}

id sub_1003E9CEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(a3);
  v4 = String._bridgeToObjectiveC()();

  return v4;
}

unint64_t sub_1003E9DA8()
{
  result = qword_1006AA280;
  if (!qword_1006AA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA280);
  }

  return result;
}

unint64_t sub_1003E9E00()
{
  result = qword_1006AA288;
  if (!qword_1006AA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA288);
  }

  return result;
}

uint64_t sub_1003E9F60(void *a1, void *a2)
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100022D5C(v5, qword_1006BA6D0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v8 = sub_10000681C();
    v16 = v8;
    *v2 = 136446210;
    *(v2 + 4) = sub_10002741C(0xD00000000000001BLL, 0x8000000100574890, &v16);
    sub_100005FCC(&_mh_execute_header, v9, v10, "%{public}s");
    sub_100009B7C(v8);
    sub_100005F64();
    sub_100006868();
  }

  v11 = [a2 remoteMembers];
  sub_10039FBE8();
  sub_1003EBA24(&qword_1006A2660, sub_10039FBE8);
  v12 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1003EAC78(v12, a1);
  v14 = sub_1002E8BE0(v13);

  return v14;
}

void sub_1003EA0F4()
{
  sub_100010094();
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100022D5C(v2, qword_1006BA6D0);
  v4 = static os_log_type_t.default.getter();
  if (sub_100008C34(v4))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v1 = 136446210;
    sub_1000152BC();
    *(v1 + 4) = sub_10002741C(0xD000000000000020, v5, v6);
    sub_10000F828(&_mh_execute_header, v7, v8, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  if (([v0 isLocallyInitiated] & 1) == 0)
  {
    v9 = [v0 activity];
    v10 = [v9 originator];

    if (v10)
    {
      sub_10001AC50();
      sub_1003EA238();
    }
  }

  sub_100008348();
}

void sub_1003EA238()
{
  sub_100010094();
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100022D5C(v4, qword_1006BA6D0);
  v6 = static os_log_type_t.default.getter();
  if (sub_100008C34(v6))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v3 = 136446210;
    sub_1000152BC();
    *(v3 + 4) = sub_10002741C(0xD000000000000020, v7, v8);
    sub_10000F828(&_mh_execute_header, v9, v10, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  v11 = [v1 remoteParticipantForLightweightParticipantHandle:v2];
  if (v11)
  {
    v12 = v11;
    sub_10001AC50();
    sub_1003E9E64();
    sub_10000A224();
  }

  else
  {
    sub_1003EA4F8(v2, v0);
    sub_10000A224();
  }

  sub_100006B30();
  sub_100008348();
}

void sub_1003EA34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010094();
  a19 = v22;
  a20 = v23;
  sub_10000EB64();
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100022D5C(v24, qword_1006BA6D0);
  v26 = static os_log_type_t.default.getter();
  if (sub_100008C34(v26))
  {
    sub_100005274();
    sub_10001607C();
    sub_10000FB20();
    *v21 = 136446210;
    *(v21 + 4) = sub_10002741C(0xD000000000000020, 0x8000000100574840, &a10);
    sub_10000F828(&_mh_execute_header, v27, v28, "%{public}s");
    sub_100010508();
    sub_100005F64();
  }

  v29 = sub_1003698E0(v20, &selRef_nickname);
  if (v30)
  {
    v31 = v29;
    v32 = v30;
    sub_10031E958(0xD000000000000011, 0x8000000100566280);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10057D690;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_100009D88();
    *(v33 + 32) = v31;
    *(v33 + 40) = v32;
    String.init(format:_:)();
    sub_10000A224();
  }

  else
  {
    v34 = [v20 handle];
    sub_10001AC50();
    sub_1003EA238();
    sub_10000A224();
  }

  sub_100006B30();
  sub_100008348();
}

uint64_t sub_1003EA4F8(uint64_t a1, void *a2)
{
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100022D5C(v5, qword_1006BA6D0);
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v17 = sub_10000681C();
    *v2 = 136446210;
    sub_1000152BC();
    *(v2 + 4) = sub_10002741C(0xD000000000000013, v8, v9);
    sub_100005FCC(&_mh_execute_header, v10, v11, "%{public}s");
    sub_100009B7C(v17);
    sub_100005F64();
    sub_100006868();
  }

  v12 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v13 = [a2 executeFetchRequest:v12];
  v14 = [v13 localizedName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v15;
}

void sub_1003EA65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100010094();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v27 = type metadata accessor for Logger();
  v28 = sub_100022D5C(v27, qword_1006BA6D0);
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    sub_100005274();
    v30 = sub_10000681C();
    a10 = v30;
    *v20 = 136446210;
    sub_100018314();
    *(v20 + 4) = sub_10002741C(v31 | 8, v32 | 0x8000000000000000, &a10);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s", v20, 0xCu);
    sub_100009B7C(v30);
    sub_100005F64();
    sub_100006868();
  }

  v33 = 0;
  v34 = 0;
  switch([v26 sessionEventType])
  {
    case 1uLL:
      v35 = "RESUMED_PLAYBACK";
      goto LABEL_21;
    case 2uLL:
      v36 = 0x505F444553554150;
      v37 = 0xEF4B43414259414CLL;
      goto LABEL_28;
    case 3uLL:
      v36 = 0x4C505F4445564F4DLL;
      v37 = 0xEE004B4341425941;
      goto LABEL_28;
    case 4uLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v44)
      {
        goto LABEL_34;
      }

      v45 = 0x455050494B53;
      goto LABEL_17;
    case 8uLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v47)
      {
        goto LABEL_34;
      }

      sub_100018314();
      v39 = v48 | 2;
      v46 = (v49 | 0x8000000000000000);
      goto LABEL_32;
    case 0xAuLL:
      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v38)
      {
        goto LABEL_34;
      }

      v39 = 0x40255F4445444441;
      goto LABEL_31;
    case 0xBuLL:
      v36 = 0x5F44455441445055;
      v37 = 0xED00004555455551;
      goto LABEL_28;
    case 0xCuLL:
      v40 = sub_10000C27C();
      v41 = [v40 activity];

      LODWORD(v40) = [v41 isScreenSharingActivity];
      if (v40)
      {
        v42 = sub_10000C27C();
        v43 = [v42 isLocallyInitiated];

        if (v43)
        {
          goto LABEL_34;
        }
      }

      v53 = sub_10000C27C();
      v34 = [v53 activity];

      v33 = [v34 isScreenSharingActivity];
      if (v33)
      {
        sub_100018314();
        v36 = v54 | 6;
        goto LABEL_27;
      }

      if (v24)
      {
        sub_10031E958(0x5F44455452415453, 0xEA00000000004025);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_10057D690;
        v58 = sub_10000C27C();
        v59 = [v58 activity];

        v60 = [v59 metadata];
        if (v60)
        {
          v60 = sub_1003EB9B4(v60);
          v62 = v61;
        }

        else
        {
          v62 = 0;
        }

        *(v57 + 56) = &type metadata for String;
        *(v57 + 64) = sub_100009D88();
        if (v62)
        {
          v64 = v60;
        }

        else
        {
          v64 = 0;
        }

        v65 = 0xE000000000000000;
        if (v62)
        {
          v65 = v62;
        }

        *(v57 + 32) = v64;
        *(v57 + 40) = v65;
        goto LABEL_33;
      }

      sub_1003698E0(v26, &selRef_item);
      sub_10000A224();
      if (!v63)
      {
        goto LABEL_34;
      }

      v45 = 0x455452415453;
LABEL_17:
      v39 = v45 & 0xFFFFFFFFFFFFLL | 0x5F44000000000000;
      v46 = 0xEA00000000004025;
      goto LABEL_32;
    case 0xDuLL:
      if ([v26 sessionEventType] == 13 && (v50 = objc_msgSend(v26, "session"), v34 = objc_msgSend(v50, "activity"), v50, v33 = objc_msgSend(v34, "isScreenSharingActivity"), v34, v33))
      {
        sub_100018314();
        v36 = v52 | 4;
LABEL_27:
        v37 = (v51 | 0x8000000000000000);
LABEL_28:
        sub_10031E958(v36, v37);
        sub_10000A224();
      }

      else
      {
        sub_1003698E0(v26, &selRef_item);
        sub_10000A224();
        if (v55)
        {
          v39 = 0x40255F4445444E45;
LABEL_31:
          v46 = 0xE800000000000000;
LABEL_32:
          sub_10031E958(v39, v46);
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_10057D690;
          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = sub_100009D88();
          *(v56 + 32) = v33;
          *(v56 + 40) = v34;
LABEL_33:
          String.init(format:_:)();
          sub_10000A224();
        }
      }

LABEL_34:
      sub_100006B30();
      sub_100008348();
      return;
    case 0xEuLL:
      v35 = "ACTIVITY_CHANGED";
LABEL_21:
      v37 = ((v35 - 32) | 0x8000000000000000);
      v36 = 0xD000000000000010;
      goto LABEL_28;
    default:
      goto LABEL_34;
  }
}

uint64_t *sub_1003EABDC(uint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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
    sub_1003EB1A8(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

Swift::Int sub_1003EAC78(unint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v4 = a2;
    __CocoaSet.makeIterator()();
    while (1)
    {
      while (1)
      {
        if (!__CocoaSet.Iterator.next()())
        {

          return v3;
        }

        sub_10039FBE8();
        swift_dynamicCast();
        v5 = [v19 handle];
        v6 = [v4 handle];
        v7 = [v5 isEquivalentToHandle:v6];

        if (v7)
        {
          break;
        }
      }

      if (*(&_swiftEmptySetSingleton + 3) <= *(&_swiftEmptySetSingleton + 2))
      {
        sub_100396BE4();
      }

      v3 = &_swiftEmptySetSingleton;
      result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
      v9 = &_swiftEmptySetSingleton + 56;
      v10 = -1 << *(&_swiftEmptySetSingleton + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~*(&_swiftEmptySetSingleton + (v11 >> 6) + 7)) == 0)
      {
        break;
      }

      v13 = __clz(__rbit64((-1 << v11) & ~*(&_swiftEmptySetSingleton + (v11 >> 6) + 7))) | v11 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
      *&v9[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v13) = v19;
      ++*(&_swiftEmptySetSingleton + 2);
    }

    v14 = 0;
    v15 = (63 - v10) >> 6;
    while (++v12 != v15 || (v14 & 1) == 0)
    {
      v16 = v12 == v15;
      if (v12 == v15)
      {
        v12 = 0;
      }

      v14 |= v16;
      v17 = *&v9[8 * v12];
      if (v17 != -1)
      {
        v13 = __clz(__rbit64(~v17)) + (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = a2;
    v3 = sub_1003EAEC4(a1, v18);

    return v3;
  }

  return result;
}

uint64_t *sub_1003EAEC4(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = a2;
  v34 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v31 = v3;
    v29 = &v29;
    __chkstk_darwin(v9, v10);
    v30 = v7;
    v32 = (&v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_100396044(0, v7, v32);
    v33 = 0;
    v7 = 0;
    v35 = v4;
    v3 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v8 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v4 = v14 | (v7 << 6);
      v15 = v35;
LABEL_12:
      v18 = *(*(v15 + 48) + 8 * v4);
      v19 = [v18 handle];
      v20 = [v34 handle];
      v21 = [v19 isEquivalentToHandle:v20];

      if (v21)
      {
        *(v32 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v4;
        if (__OFADD__(v33++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1003EB814(v32, v30, v33, v15, &qword_1006A7A68, &qword_1005833B0);
          v24 = v23;
          v25 = v34;

          return v24;
        }
      }
    }

    v16 = v7;
    v15 = v35;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v7);
      ++v16;
      if (v17)
      {
        v13 = (v17 - 1) & v17;
        v4 = __clz(__rbit64(v17)) | (v7 << 6);
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

  v27 = swift_slowAlloc();
  v28 = v34;
  v24 = sub_1003EABDC(v27, v7, v4, v28);

  return v24;
}

void sub_1003EB1A8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    v15 = [v14 handle];
    v16 = [a4 handle];
    v17 = [v15 isEquivalentToHandle:v16];

    if (v17)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1003EB814(a1, a2, v21, a3, &qword_1006A7A68, &qword_1005833B0);

        return;
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
      goto LABEL_15;
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
}

void sub_1003EB370(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for Participant();
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v42, v10);
  v41 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(&qword_1006A7C68, &unk_100583510);
      v12 = static _SetStorage.allocate(capacity:)();
      v13 = v12;
      if (a2 < 1)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a1;
      }

      v15 = 0;
      v16 = v12 + 56;
      v37 = (v8 + 32);
      v38 = v8 + 16;
      v36 = a4;
      while (v14)
      {
        v17 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_16:
        v21 = *(a4 + 48);
        v40 = *(v8 + 72);
        (*(v8 + 16))(v41, v21 + v40 * (v17 | (v15 << 6)), v42);
        v22 = *(v13 + 40);
        sub_1003EBA24(&unk_1006A4860, &type metadata accessor for Participant);
        dispatch thunk of Hashable._rawHashValue(seed:)();
        v23 = *(v13 + 32);
        sub_10000EAC4();
        if (((v26 << v25) & ~*(v16 + 8 * v24)) == 0)
        {
          sub_10000E7C0();
          while (++v27 != v29 || (v28 & 1) == 0)
          {
            v30 = v27 == v29;
            if (v27 == v29)
            {
              v27 = 0;
            }

            v28 |= v30;
            if (*(v16 + 8 * v27) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v16 + v31) |= v32;
        (*v37)(*(v13 + 48) + v33 * v40, v41, v42);
        ++*(v13 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_30;
        }

        a4 = v36;
        v14 = v39;
        if (!a3)
        {
          goto LABEL_27;
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
          goto LABEL_27;
        }

        ++v18;
        if (a1[v15])
        {
          sub_100007C8C();
          v39 = v20 & v19;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_27:
  }
}

void sub_1003EB660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(&unk_1006A7B50, &qword_100583440);
      v8 = static _SetStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        sub_10000C85C();
LABEL_16:
        v17 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v18 = *(v9 + 40);
        v19 = static Hasher._hash(seed:_:)() & ~(-1 << *(v9 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          sub_10000E7C0();
          while (++v20 != v22 || (v21 & 1) == 0)
          {
            v23 = v20 == v22;
            if (v20 == v22)
            {
              v20 = 0;
            }

            v21 |= v23;
            if (*(v12 + 8 * v20) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v12 + v24) |= v25;
        *(*(v9 + 48) + 8 * v26) = v17;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        if (!v5)
        {
          goto LABEL_5;
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
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          sub_100007C8C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1003EB814(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10026D814(a5, a6);
      v10 = static _SetStorage.allocate(capacity:)();
      v11 = v10;
      if (a2 < 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = *a1;
      }

      v13 = 0;
      v14 = v10 + 56;
      while (v12)
      {
        sub_10000C85C();
LABEL_16:
        v19 = *(v11 + 40);
        v20 = *(*(a4 + 48) + 8 * (v15 | (v13 << 6)));
        NSObject._rawHashValue(seed:)(v19);
        v21 = *(v11 + 32);
        sub_10000EAC4();
        if (((v24 << v23) & ~*(v14 + 8 * v22)) == 0)
        {
          sub_10000E7C0();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v14 + 8 * v25) != -1)
            {
              sub_10000A950();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_10000FE84();
LABEL_25:
        sub_100007DC0();
        *(v14 + v29) |= v30;
        *(*(v11 + 48) + 8 * v31) = v20;
        ++*(v11 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= a2)
        {
          goto LABEL_5;
        }

        ++v16;
        if (a1[v13])
        {
          sub_100007C8C();
          v12 = v18 & v17;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1003EB9B4(void *a1)
{
  v2 = [a1 title];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003EBA24(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1003EBA6C(void *a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v4 = [objc_opt_self() sharedAudioSystemController];
  result = [objc_opt_self() defaultCenter];
  if (v4)
  {
    v6 = result;
    v7 = objc_allocWithZone(v1);

    return sub_1003ED960(v4, v3, v6, a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EBB34(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  v4 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

void sub_1003EBB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  v2 = sub_10000B6F4(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {
LABEL_10:

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if ([v4 isCurrentlyPicked])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_1003EBC38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if ([v1 isBluetooth] & 1) != 0 || (objc_msgSend(v1, "isWiredHeadset"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isWiredHeadphones];
  }

  return v2;
}

void sub_1003EBCB0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  v15 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v16 = sub_100009F00();
  *(v16 + 16) = xmmword_10057D690;
  sub_1000083D0();
  v58 = sub_100006AF0(v17, v18, v19);
  *(v16 + 56) = v58;
  sub_1000083D0();
  v57 = sub_100290B1C(v20, v21, v22);
  *(v16 + 64) = v57;
  *(v16 + 32) = v2;
  v60 = v2;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v59 = v0;
  v56 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes;
  v23 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes);
  v24 = sub_10000B6F4(v23);

  for (i = 0; ; ++i)
  {
    if (v24 == i)
    {

      v38 = sub_100010B20();
      static os_log_type_t.error.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_10057D6A0;
      *(v39 + 56) = v58;
      *(v39 + 64) = v57;
      *(v39 + 32) = v60;
      v40 = *(v0 + v56);
      *(v39 + 96) = sub_10026D814(&qword_1006AA378, &qword_1005863E8);
      *(v39 + 104) = sub_10001000C(&unk_1006AA380, &qword_1006AA378, &qword_1005863E8);
      *(v39 + 72) = v40;
      v41 = v60;

      os_log(_:dso:log:type:_:)();

      goto LABEL_20;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v26 = *(v23 + 8 * i + 32);
    }

    v27 = v26;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v28 = [v26 uniqueIdentifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = [v60 uniqueIdentifier];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    if (v29 == v33 && v31 == v35)
    {

LABEL_17:

      v42 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24);
      v43 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32);
      sub_100009B14((v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider), v42);
      (*(v43 + 40))(v27, v42, v43);
      v44 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState;
      if (*(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState))
      {
        v45 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
        *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = v27;
      }

      else
      {
        v46 = sub_100010B20();
        v47 = sub_100009F00();
        *(v47 + 16) = xmmword_10057D690;
        sub_1000083D0();
        *(v47 + 56) = sub_100006AF0(v48, v49, v50);
        sub_1000083D0();
        *(v47 + 64) = sub_100290B1C(v51, v52, v53);
        *(v47 + 32) = v27;
        v54 = v27;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v55 = *(v59 + v44);
        *(v59 + v44) = v54;
        sub_1003ED934(v55);
      }

LABEL_20:
      sub_100005EDC();
      return;
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1003EC2D0()
{
  sub_100005EF4();
  v62 = v1;
  v60 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v65 = v10 - v9;
  sub_10000D414();
  v66 = type metadata accessor for DispatchQoS();
  v11 = sub_100007FEC(v66);
  v64 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007FDC();
  v63 = v17 - v16;
  sub_10000D414();
  v18 = type metadata accessor for DispatchTimeInterval();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = (v26 - v25);
  v61 = type metadata accessor for DispatchWallTime();
  v28 = sub_100007FEC(v61);
  v30 = v29;
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v28, v33);
  v36 = v59 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v37);
  v39 = v59 - v38;
  sub_10000D414();
  v40 = type metadata accessor for DispatchPredicate();
  v41 = sub_100007FEC(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  __chkstk_darwin(v41, v46);
  sub_100007FDC();
  v49 = v48 - v47;
  v50 = *(v0 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *(v48 - v47) = v50;
  (*(v43 + 104))(v48 - v47, enum case for DispatchPredicate.onQueue(_:), v40);
  v59[1] = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  (*(v43 + 8))(v49, v40);
  if (v50)
  {
    static DispatchWallTime.now()();
    *v27 = 5;
    (*(v21 + 104))(v27, enum case for DispatchTimeInterval.seconds(_:), v18);
    + infix(_:_:)();
    (*(v21 + 8))(v27, v18);
    v59[0] = *(v30 + 8);
    v51 = v61;
    (v59[0])(v36, v61);
    v70[4] = v60;
    v70[5] = v62;
    sub_100009FE4();
    sub_1000081D4(COERCE_DOUBLE(1107296256));
    v70[2] = v52;
    v70[3] = &unk_10062E420;
    v53 = _Block_copy(v70);

    v54 = v63;
    static DispatchQoS.unspecified.getter();
    v69 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10000826C();
    sub_10001000C(v55, v56, &unk_10057D6E0);
    v57 = v65;
    v58 = v68;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(wallDeadline:qos:flags:execute:)();
    _Block_release(v53);
    (*(v67 + 8))(v57, v58);
    (*(v64 + 8))(v54, v66);
    (v59[0])(v39, v51);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003EC740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue];
  *v14 = v15;
  (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9);
  v16 = v15;
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v14, v9);
  if (v17)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v20 = dispatch_semaphore_create(0);
    v30 = a2;
    v31 = a4;
    v22 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 24];
    v21 = *&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider + 32];
    v29 = sub_100009B14(&v4[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider], v22);
    v23 = swift_allocObject();
    v23[2] = v19;
    v23[3] = v4;
    v23[4] = v20;
    v28 = *(v21 + 32);

    v24 = v4;
    v25 = v20;
    v28(a1, v30, a3, v31, sub_1003ED954, v23, v22, v21);

    OS_dispatch_semaphore.wait()();

    swift_beginAccess();
    v26 = *(v19 + 16);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003EC988(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    return;
  }

  if (!a1)
  {
    v18 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
    *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState) = 0;
LABEL_8:
    sub_1003ED934(v18);
    return;
  }

  v11 = [a1 hasAudioInterruption];
  v12 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState;
  v13 = *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState);
  if (v11)
  {
    if (v13 >= 2)
    {
      v14 = v13;
      v15 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057D690;
      *(v16 + 56) = sub_100006AF0(0, &unk_1006A2BB0, TUAudioRoute_ptr);
      *(v16 + 64) = sub_100290B1C(&qword_1006AA370, &unk_1006A2BB0, TUAudioRoute_ptr);
      *(v16 + 32) = v14;
      v17 = v14;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_1003EBCB0();
      sub_1003ED934(v13);
      v13 = *(v1 + v12);
    }

    *(v1 + v12) = 1;
    v18 = v13;
    goto LABEL_8;
  }

  if (v13 == 1)
  {
    *(v1 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState) = 0;
  }
}

Swift::Int sub_1003ECBE0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1000115DC(a1);
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1003ECC5C(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3, v5);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = sub_10001B8C8(a1, &selRef_audioCategory);
    v37 = v13;
    v38 = v12;
    v14 = sub_10001B8C8(a1, &selRef_audioMode);
    v35 = v15;
    v36 = v14;
    v16 = [a1 hasAudioInterruption];
  }

  else
  {
    v16 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  v17 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057D6A0;
  v19 = sub_100291454(a1);
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  v22 = sub_100009D88();
  *(v18 + 64) = v22;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  LOBYTE(aBlock[0]) = v16;
  v23 = String.init<A>(reflecting:)();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v22;
  *(v18 + 72) = v23;
  *(v18 + 80) = v24;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v25 = *&v1[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue];
  v26 = swift_allocObject();
  v26[2] = a1;
  v26[3] = v1;
  v27 = v37;
  v26[4] = v38;
  v26[5] = v27;
  v28 = v35;
  v26[6] = v36;
  v26[7] = v28;
  aBlock[4] = sub_1003ED944;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062E4C0;
  v29 = _Block_copy(aBlock);
  v30 = a1;
  v31 = v1;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  v32 = v41;
  v33 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v42 + 8))(v32, v33);
  (*(v39 + 8))(v11, v40);
}

void sub_1003ED028(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    v12 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
    *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute) = 0;
  }

  sub_1003EC988(a1);
  v13 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory);
  v14 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory + 8);
  v15 = 1;
  if (v14 && a4 && (*v13 != a3 || v14 != a4))
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v82 = a6;
  v83 = a3;
  v17 = (a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode);
  v18 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode + 8);
  v80 = a4;
  v81 = a5;
  if (v18 && a6 && (*v17 == a5 ? (v19 = v18 == a6) : (v19 = 0), !v19))
  {
    if ((v15 & _stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_17:
      sub_1003EBB54();
      v21 = v20;
      v78 = sub_1003EBC38(v20);

      v79 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1005800F0;
      v23 = a4;
      v24 = *v13;
      v25 = v13[1];

      v26 = sub_10001E478(v24, v25);
      v28 = v27;

      *(v22 + 56) = &type metadata for String;
      v29 = sub_100009D88();
      *(v22 + 64) = v29;
      *(v22 + 32) = v26;
      *(v22 + 40) = v28;
      v30 = sub_10001E478(v83, v23);
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v29;
      *(v22 + 72) = v30;
      *(v22 + 80) = v31;
      v32 = *v17;
      v33 = v17[1];

      v34 = sub_10001E478(v32, v33);
      v36 = v35;

      *(v22 + 136) = &type metadata for String;
      *(v22 + 144) = v29;
      *(v22 + 112) = v34;
      *(v22 + 120) = v36;
      v37 = sub_10001E478(v81, v82);
      *(v22 + 176) = &type metadata for String;
      *(v22 + 184) = v29;
      *(v22 + 152) = v37;
      *(v22 + 160) = v38;
      sub_1003EBB54();
      v40 = v39;
      v41 = sub_100291600(v39);
      v43 = v42;

      *(v22 + 216) = &type metadata for String;
      *(v22 + 224) = v29;
      *(v22 + 192) = v41;
      *(v22 + 200) = v43;
      v44 = v78;
      v45 = String.init<A>(reflecting:)();
      *(v22 + 256) = &type metadata for String;
      *(v22 + 264) = v29;
      v46 = v81;
      *(v22 + 232) = v45;
      *(v22 + 240) = v47;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v48 = v82;

      goto LABEL_20;
    }
  }

  else if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  v49 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10057CA70;
  v51 = *v13;
  v52 = v13[1];

  v53 = sub_10001E478(v51, v52);
  v55 = v54;

  *(v50 + 56) = &type metadata for String;
  v56 = sub_100009D88();
  *(v50 + 64) = v56;
  *(v50 + 32) = v53;
  *(v50 + 40) = v55;
  v57 = sub_10001E478(v83, a4);
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v56;
  *(v50 + 72) = v57;
  *(v50 + 80) = v58;
  v59 = *v17;
  v60 = v17[1];

  v61 = sub_10001E478(v59, v60);
  v63 = v62;

  *(v50 + 136) = &type metadata for String;
  *(v50 + 144) = v56;
  *(v50 + 112) = v61;
  *(v50 + 120) = v63;
  v46 = v81;
  v48 = v82;
  v64 = sub_10001E478(v81, v82);
  *(v50 + 176) = &type metadata for String;
  *(v50 + 184) = v56;
  *(v50 + 152) = v64;
  *(v50 + 160) = v65;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v44 = 1;
LABEL_20:
  v66 = v13[1];
  *v13 = v83;
  v13[1] = v80;

  v67 = v17[1];
  *v17 = v46;
  v17[1] = v48;

  sub_100010E74();
  v68 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute;
  v69 = *(a2 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute);
  if (v69)
  {
    if ((v44 & 1) == 0)
    {
      v70 = v69;
      v71 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_10057D690;
      v73 = *(a2 + v68);
      v74 = v73;
      v75 = sub_100291600(v73);
      v77 = v76;

      *(v72 + 56) = &type metadata for String;
      *(v72 + 64) = sub_100009D88();
      *(v72 + 32) = v75;
      *(v72 + 40) = v77;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_1003EBCB0();
    }
  }
}

BOOL sub_1003ED4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = v4;
  v10 = a1 == a3 && a2 == a4;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  v11 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider;
  sub_100009AB0(v6 + OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider, v18);
  sub_100009B14(v18, v19);
  DynamicType = swift_getDynamicType();
  v13 = v20;
  sub_100009B7C(v18);
  if (((*(v13 + 56))(a1, a2, DynamicType, v13) & 1) == 0)
  {
    return 0;
  }

  sub_100009AB0(v6 + v11, v18);
  sub_100009B14(v18, v19);
  v14 = 1;
  v15 = swift_getDynamicType();
  v16 = v20;
  sub_100009B7C(v18);
  if (((*(v16 + 56))(a3, a4, v15, v16) & 1) == 0)
  {
    return 0;
  }

  return v14;
}

void sub_1003ED648()
{
  v0 = type metadata accessor for Notification();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v7 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = sub_100009F00();
  *(v8 + 16) = xmmword_10057D690;
  v9 = *(v3 + 16);
  sub_1000083D0();
  v10();
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v14 = sub_10002E324();
  sub_1003ECC5C(v14);
}

uint64_t sub_1003ED90C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1003ED934(id a1)
{
  if (a1 >= 2)
  {
  }
}

Swift::Int sub_1003ED954(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1003ECBE0(a1, v1[2]);
}

char *sub_1003ED960(uint64_t a1, uint64_t a2, void *a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v25[3] = sub_100006AF0(0, &qword_1006AA390, TUAudioSystemController_ptr);
  v25[4] = &off_100627548;
  v25[0] = a1;
  v11 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_routesDidChangeHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_audioRoutes] = _swiftEmptyArrayStorage;
  v12 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioCategory];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioMode];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_lastUserPickedRoute] = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callAudioInterruptionState] = 0;
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_queue] = a4;
  sub_100009AB0(v25, &a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider]);
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver] = a2;
  v14 = objc_allocWithZone(CSDTTYProviderObserver);
  v15 = a4;
  v16 = [v14 init];
  *&a5[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_ttyProviderObserver] = v16;
  v24.receiver = a5;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "init");
  sub_100009AB0(&v17[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_localAudioSystemProvider], v23);
  sub_10026D814(&qword_1006AA398, &unk_1005863F0);
  if (swift_dynamicCast())
  {
    [v22 setDelegate:v17];
  }

  v18 = OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver;
  [*&v17[OBJC_IVAR____TtC13callservicesd23LocalAudioRouteProvider_callCenterObserver] setTriggers:3073];
  v19 = *&v17[v18];
  v20 = v17;
  [v19 setDelegate:v20];
  [a3 addObserver:v20 selector:"audioRouteInformationChangedWithNotification:" name:TUAudioSystemAudioPickableRoutesChanged object:0];

  [a3 addObserver:v20 selector:"audioInterruptionPropertiesChangedWithNotification:" name:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:0];
  sub_100009B7C(v25);
  return v20;
}

void *sub_1003EDBBC(uint64_t a1, uint64_t a2)
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10039B840(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v2[3] = a2;
  v2[4] = v5;
  v2[2] = a1;
  return v2;
}

BOOL sub_1003EDC2C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  sub_10042296C();
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    sub_1003968E0(&v7, a1);
    swift_endAccess();
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1003EDCD8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if ((v1 & 0xC000000000000001) == 0)
  {
    return *(v1 + 16);
  }

  sub_1000087D0();
  v2 = __CocoaSet.count.getter();

  return v2;
}

void sub_1003EDD40()
{
  v1 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v56 = v49 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v53 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v52 = v49 - v13;
  v15 = __chkstk_darwin(v12, v14);
  v51 = v49 - v16;
  __chkstk_darwin(v15, v17);
  v58 = v49 - v18;
  swift_beginAccess();
  v50 = *(v0 + 32);
  v19 = v50;
  if ((v50 & 0xC000000000000001) != 0)
  {
    sub_1000087D0();
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1003EE290();
    sub_1003EE2D4();
    Set.Iterator.init(_cocoa:)();
    v19 = v61;
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v23 = v65;
  }

  else
  {
    v24 = -1 << *(v50 + 32);
    v20 = v50 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v50 + 56);
    swift_bridgeObjectRetain_n();
    v22 = 0;
  }

  v49[1] = v21;
  v27 = (v21 + 64) >> 6;
  v57 = (v6 + 32);
  v54 = (v6 + 8);
  v55 = v19;
  v28 = 0.0;
  while (v19 < 0)
  {
    v34 = __CocoaSet.Iterator.next()();
    if (!v34 || (v59 = v34, sub_1003EE290(), swift_dynamicCast(), v33 = v60, v31 = v22, v32 = v23, !v60))
    {
LABEL_25:
      sub_100022DDC();

      return;
    }

LABEL_17:
    v35 = [v33 recordingEndedDate];
    if (v35)
    {
      v36 = v35;
      v37 = v51;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = v56;
      v39 = *v57;
      (*v57)(v56, v37, v5);
      sub_10000AF74(v38, 0, 1, v5);
      v39(v58, v38, v5);
    }

    else
    {
      v40 = v56;
      sub_10000AF74(v56, 1, 1, v5);
      static Date.now.getter();
      if (sub_100015468(v40, 1, v5) != 1)
      {
        sub_1003EE32C(v56);
      }
    }

    v41 = [v33 recordingStartedDate];
    if (v41)
    {
      v42 = v41;
      v43 = v53;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = v52;
      (*v57)(v52, v43, v5);
      v45 = v58;
      Date.timeIntervalSince(_:)();
      v47 = v46;
      v48 = *v54;
      (*v54)(v44, v5);
      v48(v45, v5);

      v28 = v28 + v47;
      v22 = v31;
      v23 = v32;
    }

    else
    {
      (*v54)(v58, v5);

      v22 = v31;
      v23 = v32;
      v28 = 0.0;
    }

    v19 = v55;
  }

  v29 = v22;
  v30 = v23;
  v31 = v22;
  if (v23)
  {
LABEL_13:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v19 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v27)
    {
      goto LABEL_25;
    }

    v30 = *(v20 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1003EE210()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1003EE238()
{
  sub_1003EE210();

  return _swift_deallocClassInstance(v0, 40, 7);
}

unint64_t sub_1003EE290()
{
  result = qword_1006A7A60;
  if (!qword_1006A7A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7A60);
  }

  return result;
}

unint64_t sub_1003EE2D4()
{
  result = qword_1006AA478;
  if (!qword_1006AA478)
  {
    sub_1003EE290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA478);
  }

  return result;
}

uint64_t sub_1003EE32C(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003EE3A0(uint64_t a1, void *a2)
{
  v3 = *(*(sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0) - 8) + 64);
  sub_100006688();
  __chkstk_darwin(v4, v5);
  v7 = &v29 - v6;
  v8 = a2[1];
  v9 = sub_100006884();
  v11 = v10(v9);
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v15 = a2[5];
  if (!v14)
  {
    goto LABEL_11;
  }

  v16 = sub_100006884();
  if (v15(v16))
  {
    v17 = sub_100006884();
    if ((v15(v17) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v18 = sub_100006884();
  if (v15(v18))
  {
    v25 = sub_100006884();
    if ((v15(v25) & 4) != 0)
    {
      goto LABEL_11;
    }

    v26 = sub_100006884();
    if ((v15(v26) & 8) != 0)
    {
      goto LABEL_11;
    }
  }

  v19 = a2[7];
  v20 = sub_100006884();
  v21(v20);
  v22 = type metadata accessor for UUID();
  v23 = 1;
  v24 = sub_100015468(v7, 1, v22);
  sub_10001D334(v7);
  if (v24 != 1)
  {
LABEL_11:
    v27 = sub_100006884();
    return (v15(v27) >> 9) & 1;
  }

  return v23;
}

id sub_1003EE538@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_1003B940C();
  *a1 = result;
  return result;
}

uint64_t sub_1003EE6B8(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1003EE774@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t sub_1003EE828()
{
  v1 = *((swift_isaMask & *v0) + 0x78);
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1003EE88C()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  sub_1000083C0();
  v3 = v2;
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  v9 = &v29 - v8;
  v12 = *((v11 & v10) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for Optional();
  sub_1000083C0();
  v16 = v15;
  v18 = *(v17 + 64);
  sub_100006688();
  __chkstk_darwin(v19, v20);
  v22 = &v29 - v21;
  sub_1003EE774(v9);
  (*(v12 + 24))(v1, v12);
  (*(v3 + 8))(v9, v1);
  if (sub_100015468(v22, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v22, v14);
    LOBYTE(v14) = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(*(AssociatedTypeWitness - 8) + 8))(v22, AssociatedTypeWitness);
    LODWORD(v14) = (v24 >> 5) & 1;
  }

  sub_1003EE828();
  v25 = Dictionary.values.getter();

  v30 = v25;
  __chkstk_darwin(v26, v27);
  *(&v29 - 4) = v1;
  *(&v29 - 3) = v12;
  *(&v29 - 16) = v14;
  type metadata accessor for Dictionary.Values();
  swift_getWitnessTable();
  v30 = Sequence.filter(_:)();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Array.init<A>(_:)();
}

uint64_t sub_1003EEBFC(uint64_t a1, char a2)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return ((v4(v5, AssociatedConformanceWitness) & 1) == 0) | ((a2 & 1) == 0);
}

id sub_1003EECC4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x50);
  sub_1000083C0();
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100006688();
  __chkstk_darwin(v9, v10);
  v12 = &v16 - v11;
  v13 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v13], v4);
  (*(*((v3 & v2) + 0x58) + 160))(v4, *((v3 & v2) + 0x58));
  (*(v6 + 8))(v12, v4);
  v14 = type metadata accessor for NearbyDeviceMonitor();
  v17.receiver = v1;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, "dealloc");
}

uint64_t sub_1003EEE60(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  sub_1000087F0();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v4 + 104)]);
  sub_1000087F0();
  v6 = &a1[*(v5 + 112)];
  v7 = v6[1];
  sub_1000051F8(*v6);
  sub_1000087F0();
  v9 = *&a1[*(v8 + 120)];
}

uint64_t sub_1003EEF9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1003EEBFC(a1, *(v1 + 32)) & 1;
}

void sub_1003EEFC0(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v51 = _swiftEmptyDictionarySingleton;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + 8 * v11);
    if (v15 >> 62)
    {
      v43 = v14;
      v44 = v13;
      v45 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v44;
      v14 = v43;
      v16 = v45;
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v16)
    {
      v49 = v14;
      v50 = v13;
      v47 = v3;
      sub_10039C390(0, (v15 & 0xC000000000000001) == 0, v15);
      v48 = v2;
      if ((v15 & 0xC000000000000001) != 0)
      {

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v15 + 32);

        v18 = v17;
      }

      v52 = v18;
      v19 = 1;
      while (v16 != v19)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_43;
          }

          if (v19 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v21 = v20;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_42;
        }

        if (*&v52[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version] < *&v20[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version])
        {

          ++v19;
          v52 = v21;
        }

        else
        {

          ++v19;
        }
      }

      v28 = v51;
      v29 = v51[2];
      if (v51[3] <= v29)
      {
        sub_100457E6C(v29 + 1, 1, v22, v23, v24, v25, v26, v27, v46, v47, v48, SBYTE4(v48));
        v28 = _swiftEmptyDictionarySingleton;
      }

      v30 = v28[5];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v31 = Hasher._finalize()();
      v32 = v28 + 8;
      v51 = v28;
      v33 = -1 << *(v28 + 32);
      v34 = v31 & ~v33;
      v35 = v34 >> 6;
      v36 = (-1 << v34) & ~v28[(v34 >> 6) + 8];
      v2 = v48;
      if (!v36)
      {
        v38 = 0;
        v39 = (63 - v33) >> 6;
        v3 = v47;
        while (++v35 != v39 || (v38 & 1) == 0)
        {
          v40 = v35 == v39;
          if (v35 == v39)
          {
            v35 = 0;
          }

          v38 |= v40;
          v41 = v32[v35];
          if (v41 != -1)
          {
            v37 = __clz(__rbit64(~v41)) + (v35 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_45;
      }

      v37 = __clz(__rbit64(v36)) | v34 & 0x7FFFFFFFFFFFFFC0;
      v3 = v47;
LABEL_37:
      *(v32 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
      v42 = (v51[6] + 16 * v37);
      *v42 = v49;
      v42[1] = v50;
      *(v51[7] + 8 * v37) = v52;
      ++v51[2];
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_1003EF338(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1003EF398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for POSIXError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &__src[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  __src[0] = 0;
  v12 = [v10 dataWithPropertyList:isa format:200 options:0 error:__src];

  v13 = __src[0];
  if (!v12)
  {
    v22 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v12;
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = Data.count.getter();
  v18 = __OFADD__(v17, 200);
  v19 = v17 + 200;
  if (v18)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v20 = malloc(v19);
  if (!v20)
  {
    LODWORD(__src[0]) = 12;
    sub_1003F77E8(_swiftEmptyArrayStorage);
    sub_1003F7CA4(&unk_1006AA7D0, &type metadata accessor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v5 + 8))(v9, v4);
    swift_willThrow();
    sub_100049B14(v14, v16);
    return v12;
  }

  v12 = v20;
  bzero(__src + 4, 0xC4uLL);
  LODWORD(__src[0]) = 1;
  sub_1003F7BEC(a1, a2, &__src[17], &v26);
  v21 = Data.count.getter();
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  if (HIDWORD(v21))
  {
    goto LABEL_12;
  }

  HIDWORD(__src[0]) = v21;
  memcpy(v12, __src, 0xC8uLL);
  Data.count.getter();
  Data.copyBytes(to:count:)();
  sub_100049B14(v14, v16);
  return v12;
}

id sub_1003EF6B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v2 = [v0 initWithArray:isa];

  return v2;
}

double sub_1003EF758(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v22;
      if (qword_1006A0B20 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA5E0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v7, v8, "ConversationLinkSync: randomCheckInInterval: defaults overriding {overrideInterval: %f)}", v9, 0xCu);
      }

      return v5;
    }
  }

  else
  {
    sub_100009A04(v25, &unk_1006A2D10, &unk_10057D940);
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v10 = 1.0;
      v11 = 4.0;
    }

    else
    {
      v11 = 40.0;
      v10 = 20.0;
    }

    sub_1003F79B4(v10, v11);
    v5 = v12;
  }

  else
  {
    v5 = 0.01;
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA5E0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v25[0] = v17;
    *v16 = 134218242;
    *(v16 + 4) = v5;
    *(v16 + 12) = 2080;
    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, v25);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "ConversationLinkSync: randomCheckInInterval: calculated {interval: %f, scheduleMode: %s}", v16, 0x16u);
    sub_100009B7C(v17);
  }

  return v5;
}

uint64_t sub_1003EFAA4()
{
  v1 = *(v0 + 128);
  os_state_remove_handler();
  sub_100060500(v0 + 16);
  sub_100009B7C((v0 + 32));

  v2 = *(v0 + 80);
  swift_unknownObjectRelease();

  v3 = *(v0 + 104);

  v4 = *(v0 + 112);

  return v0;
}

uint64_t sub_1003EFB0C()
{
  sub_1003EFAA4();

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_1003EFB64()
{
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10057D690;
  v2 = *(v0 + 112);
  *(v1 + 32) = sub_1004330F4();
  *(v1 + 40) = v3;
  sub_1003EFBF8();
}

void sub_1003EFC74()
{
  sub_100005EF4();
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v32 = sub_100007CD8();
  v16 = sub_100007FEC(v32);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16, v21);
  sub_10000E4F4();
  v31 = *(v0 + 120);
  v22 = swift_allocObject();
  *(v22 + 16) = v0;
  *(v22 + 24) = v8;
  *(v22 + 32) = v6;
  v33[4] = v4;
  v33[5] = v22;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v33[2] = v23;
  v33[3] = v30;
  v24 = _Block_copy(v33);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v25, v26);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  v27 = *(v12 + 8);
  v28 = sub_100007764();
  v29(v28);
  (*(v18 + 8))(v1, v32);

  sub_100005EDC();
}

void sub_1003EFEA4()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v10 = sub_100007CD8();
  v11 = sub_100007FEC(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_10000E4F4();
  v15 = *(v0 + 120);
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v2;
  v26[4] = sub_1003F7D48;
  v26[5] = v16;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v26[2] = v17;
  v26[3] = &unk_10062E820;
  v18 = _Block_copy(v26);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v19, v20);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v21 = *(v6 + 8);
  v22 = sub_100007764();
  v23(v22);
  v24 = sub_10000BAE0();
  v25(v24);

  sub_100005EDC();
}

void sub_1003F00CC()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v8 = sub_100007CD8();
  v9 = sub_100007FEC(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  sub_10000E4F4();
  v13 = *(v0 + 120);
  v23[4] = sub_1003F7D40;
  v24 = v0;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v14;
  v23[3] = &unk_10062E7D0;
  v15 = _Block_copy(v23);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v16, v17);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  v18 = *(v4 + 8);
  v19 = sub_100007764();
  v20(v19);
  v21 = sub_10000BAE0();
  v22(v21);

  sub_100005EDC();
}

void sub_1003F02A4(uint64_t a1)
{
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ConversationLinkSync: scheduleCheckInIfNeeded called", v5, 2u);
  }

  sub_1003F28CC([*(*(a1 + 72) + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) hasActiveAccounts]);
}

void sub_1003F03A8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v11 = sub_100007CD8();
  v12 = sub_100007FEC(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_10000E4F4();
  v16 = *(v1 + 120);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v3;
  v27[4] = sub_1003F7D38;
  v27[5] = v17;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v27[2] = v18;
  v27[3] = &unk_10062E7A8;
  v19 = _Block_copy(v27);

  static DispatchQoS.unspecified.getter();
  sub_10001053C();
  sub_1003F7CA4(v20, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v22 = *(v7 + 8);
  v23 = sub_100007764();
  v24(v23);
  v25 = sub_10000BAE0();
  v26(v25);

  sub_100005EDC();
}

uint64_t sub_1003F05A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  v4 = sub_1002E99B4();
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5E0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = Set.description.getter();
    v11 = sub_10002741C(v9, v10, &v16);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = Array.description.getter();
    v14 = sub_10002741C(v12, v13, &v16);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "ConversationLinkSync: scheduleRecover called {deviceDestinations: %s, pseudonyms: %s}", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_1003F519C(a2, v4);
}

void sub_1003F1184()
{
  v1 = sub_10000C5BC();
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  v3 = *(v0 + 112);
  *(inited + 32) = sub_1004330F4();
  *(inited + 40) = v4;
  v5 = sub_1002A3870(inited, *v1);
  swift_setDeallocating();
  sub_1002F5C78();
  if (!sub_10000B6F4(v5))
  {

    return;
  }

  v6 = (v5 & 0xC000000000000001);
  sub_10039C390(0, (v5 & 0xC000000000000001) == 0, v5);
  if ((v5 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v7 = *(v5 + 32);
  }

  sub_10000C870();

  v8 = sub_100433470();
  v9 = OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version;
  v10 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];
  if (v8 >= v10)
  {

    return;
  }

  v11 = v8;
  if (__OFADD__(v10, 10))
  {
    __break(1u);
  }

  else
  {
    sub_1004334E4(v10 + 10);
    if (qword_1006A0B20 == -1)
    {
      goto LABEL_7;
    }
  }

  sub_10000854C();
  swift_once();
LABEL_7:
  v12 = type metadata accessor for Logger();
  sub_1000075F0(v12, qword_1006BA5E0);
  v13 = v6;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100007C08();
    *v16 = 134218240;
    *(v16 + 4) = v11;
    *(v16 + 12) = 2048;
    *(v16 + 14) = *&v6[v9];

    _os_log_impl(&_mh_execute_header, v14, v15, "ConversationLinkSync: scheduleCheckIn validation check failed, fixing local version {localVersion: %ld, localLatest.version: %ld}", v16, 0x16u);
    sub_100005F40();
  }

  else
  {
  }
}

void sub_1003F1384(uint64_t a1, char a2, unsigned int a3)
{
  v4 = v3;
  v8 = *(v3 + 72);
  v9 = sub_1002E99B4();
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000075F0(v10, qword_1006BA5E0);

  v11 = sub_10000B8B0();
  sub_1003F7CEC(v11);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = sub_10000B8B0();
  sub_1003F7CFC(v14);
  if (os_log_type_enabled(v12, v13))
  {
    v15 = sub_100005E84();
    v29 = swift_slowAlloc();
    *v15 = 136315650;
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002741C(v16, v17, &v29);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = Set.description.getter();
    v21 = sub_10002741C(v19, v20, &v29);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2080;
    v22 = sub_10000B8B0();
    sub_1003F7CEC(v22);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_10002741C(v23, v24, &v29);

    *(v15 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "ConversationLinkSync: scheduleCheckIn called {scheduleMode: %s, deviceDestinations: %s, type: %s}", v15, 0x20u);
    swift_arrayDestroy();
    sub_100008AE8();
    sub_100005F40();
  }

  v26 = *(v4 + 104);
  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  v28 = sub_10000B8B0();
  sub_1003F7CEC(v28);

  sub_1002B7C2C(v9, 2, a3, sub_1003F7D0C, v27);

  sub_1003F1184();
}

void sub_1003F15F8(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(CSDMessagingLinkSyncCheckInMessage) init];
  if (a1 == 1)
  {
    v5 = _swiftEmptyArrayStorage;
    v6 = Dictionary.init(dictionaryLiteral:)();
    if (v4)
    {
      [v4 setShouldCheckAllGenerators:1];
    }
  }

  else
  {
    v7 = sub_10000C5BC();
    if (a1)
    {
      v8 = sub_1002A3870(a1, *v7);
    }

    else
    {
      v8 = sub_1002A226C(*v7);
    }

    v5 = v8;
    if (v4)
    {
      [v4 setShouldCheckAllGenerators:a1 == 0];
    }

    if (a2)
    {
      v9 = sub_10000C5BC();
      v10 = sub_1002A2FCC(*v9);
    }

    else
    {
      v10 = Dictionary.init(dictionaryLiteral:)();
    }

    v6 = v10;
  }

  v11 = *(v6 + 16);
  v12 = sub_10000B6F4(v5);

  if (!v12)
  {
LABEL_46:

    return;
  }

  v13 = sub_10000B6F4(v5);
  v14 = 0;
  v32 = v11;
  while (1)
  {
    if (v13 == v14)
    {

      v20 = sub_10000B6F4(_swiftEmptyArrayStorage);
      v21 = 0;
      v22 = v6;
      while (1)
      {
        if (v20 == v21)
        {
          goto LABEL_46;
        }

        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v23 = _swiftEmptyArrayStorage[v21 + 4];
        }

        v24 = v23;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_49;
        }

        if (v4)
        {
          [v4 addGeneratorDescriptors:v23];
        }

        if (v11)
        {
          sub_10039BD94(v24, &selRef_generatorID);
          if (!v25)
          {
            goto LABEL_52;
          }

          if (!*(v22 + 16))
          {

            v30 = 0;
            goto LABEL_40;
          }

          v26 = sub_100005208();
          v27 = v22;
          v29 = v28;

          if (v29)
          {
            v30 = *(*(v27 + 56) + 8 * v26);
            v22 = v27;
            v11 = v32;
            if (v30 < 0)
            {
              goto LABEL_51;
            }

LABEL_40:
            if (!v4)
            {
              goto LABEL_42;
            }

LABEL_41:
            sub_100006AF0(0, &qword_1006AA828, off_100616688);
            v31 = sub_1003F19DC(v30);
            [v4 addGenerateDescriptorInfos:v31];

            goto LABEL_42;
          }

          v30 = 0;
          v22 = v27;
          v11 = v32;
          if (v4)
          {
            goto LABEL_41;
          }
        }

LABEL_42:

        ++v21;
      }
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v15 = *(v5 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    v18 = [objc_opt_self() generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:v15];

    ++v14;
    if (v18)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
      {
        sub_10001AC68(v19);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v17;
      v11 = v32;
    }
  }

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

id sub_1003F19DC(uint64_t a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v3 = result;
    [result setGenerateDescriptorVersionSum:a1];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003F1A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
  v11 = v10;
  if (v10)
  {
    [v10 setType:2];
    v12 = v11;
    sub_1003F15F8(a3, a4);
    v14 = v13;
    [v12 setCheckInMessage:v13];

    sub_1003F7B24(v12);
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_10039B534();
  v19 = v18;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000075F0(v20, qword_1006BA5E0);
  v21 = v11;

  v50 = inited;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v48 = v11;
    v24 = sub_100007C08();
    v25 = sub_10000777C();
    v49 = sub_100005E84();
    v51[0] = v49;
    *v24 = 136315394;
    v26 = Set.description.getter();
    sub_10002741C(v26, v27, v51);
    sub_10000C870();

    *(v24 + 4) = v16;
    *(v24 + 12) = 2112;
    *(v24 + 14) = v21;
    *v25 = v48;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "ConversationLinkSync: Performing check in {dest: %s, message: %@}", v24, 0x16u);
    sub_100009A04(v25, &unk_1006A2630, &qword_10057CB40);
    sub_10000E668();
    sub_100009B7C(v49);
    sub_10000E668();
    sub_100005F40();
  }

  if (v16 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v5 + 72);
    v30 = sub_100007764();
    sub_100290AC4(v30, v31);
    v32 = sub_100007764();
    v34 = sub_1002E9B84(v32, v33, v19);
    v36 = v35;
    v37 = sub_100007764();
    sub_100290B6C(v37, v38);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = sub_100007C08();
      v51[0] = swift_slowAlloc();
      *v41 = 136315394;
      Set.description.getter();
      sub_100027704();
      v42 = sub_100008DB8();
      sub_10002741C(v42, v43, v44);
      sub_10000C870();

      *(v41 + 4) = v16;
      *(v41 + 12) = 2080;
      v45 = sub_10002741C(v34, v36, v51);

      *(v41 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "ConversationLinkSync: Sent check in {to: %s, idsIdentifier: %s}", v41, 0x16u);
      swift_arrayDestroy();
      sub_100005F40();
      sub_100005F40();

      sub_100290B6C(v19, v50);
    }

    else
    {

      v46 = sub_100007764();
      sub_100290B6C(v46, v47);
    }
  }
}

void sub_1003F1FA0(void *a1)
{
  v1 = [a1 generatorDescriptors];
  if (!v1)
  {
    sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
    v1 = NSArray.init(arrayLiteral:)();
  }

  sub_100006AF0(0, &unk_1006AA810, off_100616668);
  static Array._conditionallyBridgeFromObjectiveC(_:result:)();

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5E0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_100005274();
    v5 = sub_100005E84();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_10001E3F8();
    *(v4 + 4) = sub_10002741C(v6, v7, v8);
    _os_log_impl(&_mh_execute_header, oslog, v3, "ConversationLinkSync: Processing check in, unable to convert descriptors -- dropping {from: %s}", v4, 0xCu);
    sub_100009B7C(v5);
    sub_100008AE8();
    sub_10000E668();
  }

  else
  {
  }
}

void sub_1003F28CC(char a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v22;
      goto LABEL_9;
    }
  }

  else
  {
    sub_100009A04(v25, &unk_1006A2D10, &unk_10057D940);
  }

  v8 = 0;
LABEL_9:
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA5E0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109376;
    *(v12 + 4) = a1 & 1;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v8;
    _os_log_impl(&_mh_execute_header, v10, v11, "ConversationLinkSync: checkAccountStateForCheckIn called {activeAccounts: %{BOOL}d, lastAccountsChangedState: %{BOOL}d}", v12, 0xEu);
    sub_1000079DC();
  }

  if (v8 != (a1 & 1))
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_20;
    }

    v13 = *(v2 + 72);
    v14 = *(sub_1002E99B4() + 16);

    if (v14)
    {
      sub_1003F1384(0, 0, 2u);
    }

    v15 = *(sub_1002E99B4() + 16);

    if (v15)
    {

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67109376;
        *(v18 + 4) = 1;
        *(v18 + 8) = 1024;
        v19 = *(sub_1002E99B4() + 16);

        *(v18 + 10) = v19 == 0;

        _os_log_impl(&_mh_execute_header, v16, v17, "ConversationLinkSync: missing devices, waiting until devices appear {activeAccounts: %{BOOL}d, interactor.deviceDestinations.isEmpty: %{BOOL}d}", v18, 0xEu);
        sub_100006868();
      }

      else
      {
      }
    }

    else
    {
LABEL_20:
      v20 = [v4 standardUserDefaults];
      v21 = String._bridgeToObjectiveC()();
      [v20 setBool:a1 & 1 forKey:v21];
    }
  }

  sub_1000089B0();
}

void sub_1003F2C10()
{
  swift_allocObject();
  swift_weakInit();
  sub_1000114F8();
  v4[1] = 1107296256;
  v4[2] = sub_1003EF338;
  v4[3] = &unk_10062E708;
  v0 = _Block_copy(v4);

  sub_10002F6DC();
  xpc_activity_register(v1, v2, v3);
  _Block_release(v0);
}

void sub_1003F2CD4(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA5E0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "ConversationLinkSync: check in activity fired", v29, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v31 = *(Strong + 120);

      aBlock[4] = sub_1003F7C9C;
      aBlock[5] = a2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_10062E730;
      v32 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v36 = _swiftEmptyArrayStorage;
      sub_1003F7CA4(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v5 + 8))(v9, v4);
      (*(v11 + 8))(v15, v10);
    }
  }

  else if (!state)
  {
    empty = xpc_dictionary_create_empty();
    xpc_dictionary_set_string(empty, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(empty, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_int64(empty, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_7_DAYS);
    v18 = xpc_activity_copy_criteria(a1);
    if (v18)
    {
      if (!xpc_equal(v18, empty))
      {
        xpc_activity_set_criteria(a1, empty);
      }

      swift_unknownObjectRelease();
    }

    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000AF9C(v19, qword_1006BA5E0);
    swift_unknownObjectRetain();
    v35 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      aBlock[6] = empty;
      swift_unknownObjectRetain();
      sub_10026D814(&qword_1006A2BD0, &unk_100586640);
      v23 = String.init<A>(reflecting:)();
      v25 = sub_10002741C(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v35, v20, "ConversationLinkSync: check in activity scheduled {criteria: %s}", v21, 0xCu);
      sub_100009B7C(v22);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v33 = v35;
    }
  }
}

uint64_t sub_1003F3278()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1003F1384(0, 1, 2u);
  }

  return result;
}

void sub_1003F32DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::Bool isUnique, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  sub_10000C16C();
  a35 = v37;
  a36 = v39;
  v40 = v36;
  v42 = v41;
  v44 = v43;
  v45 = v38;
  v46 = v38[4];
  a24 = v46;
  v118 = v41;
  v119 = v40;
  v117 = v43;
  if ((v47 & 1) == 0)
  {
LABEL_21:

    goto LABEL_25;
  }

  v48 = *v38;
  v49 = *(*v38 + 16);
  if (v49)
  {
    isUniquea = v38;
    a22 = _swiftEmptyArrayStorage;

    v46 = &a22;
    specialized ContiguousArray.reserveCapacity(_:)();
    v52 = sub_100308264(v48);
    v40 = 0;
    v53 = v48 + 56;
    v120 = v49;
    v54 = 1;
    if ((v52 & 0x8000000000000000) == 0)
    {
      while (v52 < v54 << *(v48 + 32))
      {
        v55 = v52 >> 6;
        v45 = v54 << v52;
        if ((*(v53 + 8 * (v52 >> 6)) & (v54 << v52)) == 0)
        {
          goto LABEL_50;
        }

        if (*(v48 + 36) != v50)
        {
          goto LABEL_51;
        }

        v56 = v50;
        v57 = (*(v48 + 48) + 16 * v52);
        v58 = *v57;
        v59 = v57[1];
        v122 = v51;
        v60 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());

        v42 = sub_1003DFB90(v58, v59, 0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v44 = a22[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v122)
        {
          goto LABEL_57;
        }

        v46 = 1 << *(v48 + 32);
        if (v52 >= v46)
        {
          goto LABEL_52;
        }

        if ((*(v53 + 8 * v55) & v45) == 0)
        {
          goto LABEL_53;
        }

        if (*(v48 + 36) != v56)
        {
          goto LABEL_54;
        }

        sub_100018690();
        if (v63)
        {
          v45 = v55 << 6;
          v65 = v55 + 1;
          v66 = (v48 + 64 + 8 * v55);
          v64 = v120;
          while (v65 < (v46 + 63) >> 6)
          {
            v67 = *v66++;
            v42 = v67;
            v45 += 64;
            ++v65;
            if (v67)
            {
              sub_100010000(v52, v61, 0);
              v54 = 1;
              v46 = __clz(__rbit64(v42)) + v45;
              goto LABEL_18;
            }
          }

          sub_100010000(v52, v61, 0);
          v54 = 1;
        }

        else
        {
          v46 = __clz(__rbit64(v62)) | v52 & 0x7FFFFFFFFFFFFFC0;
          v64 = v120;
        }

LABEL_18:
        if (++v40 == v64)
        {
          v68 = a22;
          v42 = v118;
          v40 = v119;
          v45 = isUniquea;
          v44 = v117;
          goto LABEL_24;
        }

        v51 = 0;
        v50 = *(v48 + 36);
        v52 = v46;
        if (v46 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_24:
  sub_100413DE0(v68);
  v46 = a24;
LABEL_25:
  v69 = *(v45 + 16);
  if (*(v69 + 16))
  {
    v70 = *(v45 + 16);

    v71 = sub_1002A2784(v46);
    sub_1003EEFC0(v71);
    v73 = v72;

    v74 = 0;
    v75 = v69 + 56;
    v76 = 1 << *(v69 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & *(v69 + 56);
    v79 = (v76 + 63) >> 6;
    v121 = v69;
LABEL_29:
    v123 = v73;
    while (v78)
    {
LABEL_35:
      v81 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
      v82 = (*(v69 + 48) + ((v74 << 10) | (16 * v81)));
      v83 = *v82;
      v84 = v82[1];
      v85 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());
      swift_bridgeObjectRetain_n();
      v86 = sub_100022074();
      v88 = sub_1003DFB90(v86, v87, 0);
      if (v88)
      {
        v95 = v88;
        isUniqueb = swift_isUniquelyReferenced_nonNull_native();
        a22 = v123;
        sub_100022074();
        sub_100005208();
        v96 = v123[2];
        v124 = v97;
        sub_10004A10C();
        v101 = v99 + v100;
        if (__OFADD__(v99, v100))
        {
          goto LABEL_55;
        }

        v102 = v98;
        sub_10026D814(&qword_1006AA808, &unk_100586630);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniqueb, v101))
        {
          sub_100022074();
          v103 = sub_100005208();
          if ((v124 & 1) != (v104 & 1))
          {
            goto LABEL_58;
          }

          v102 = v103;
          if ((v124 & 1) == 0)
          {
LABEL_42:
            v73 = a22;
            sub_1000163C8(&a22[v102 >> 6]);
            v105 = (v73[6] + 16 * v102);
            *v105 = v83;
            v105[1] = v84;
            *(v73[7] + 8 * v102) = v95;
            v106 = v73[2];
            v107 = __OFADD__(v106, 1);
            v108 = v106 + 1;
            if (v107)
            {
              goto LABEL_56;
            }

            v73[2] = v108;
            goto LABEL_46;
          }
        }

        else if ((v124 & 1) == 0)
        {
          goto LABEL_42;
        }

        v73 = a22;
        v109 = a22[7];
        v110 = *(v109 + 8 * v102);
        *(v109 + 8 * v102) = v95;

LABEL_46:
        v69 = v121;
        goto LABEL_29;
      }

      sub_100022074();
      v73 = v123;
      v89 = sub_100005208();
      v91 = v90;

      v69 = v121;
      if (v91)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a22 = v123;
        v93 = v123[3];
        sub_10026D814(&qword_1006AA808, &unk_100586630);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v93);
        v73 = a22;
        v94 = *(a22[6] + 16 * v89 + 8);

        _NativeDictionary._delete(at:)();
        goto LABEL_29;
      }
    }

    while (1)
    {
      v80 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v80 >= v79)
      {

        v46 = sub_10027404C(v73);
        v42 = v118;
        v40 = v119;
        v44 = v117;
        goto LABEL_48;
      }

      v78 = *(v75 + 8 * v80);
      ++v74;
      if (v78)
      {
        v74 = v80;
        goto LABEL_35;
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
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_48:
    v111 = sub_100009B14((v40 + 32), *(v40 + 56));
    v112 = sub_1002A333C(v46, *v111);

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v44;
    *(inited + 40) = v42;

    sub_10039B534();
    sub_1003F38A0(v112, v114);

    sub_100027EC0();
  }
}

void sub_1003F38A0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < 1)
  {
    goto LABEL_23;
  }

  oslog = v2;
  v49 = a2;
  v6 = [objc_allocWithZone(CSDMessagingLinkSyncUpdateMessage) init];
  v7 = sub_10000B6F4(a1);
  if (v7)
  {
    v8 = v7;
    sub_100006AF0(0, &unk_1006AA7F0, off_100616660);
    if (v8 < 1)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      sub_1003F3ED0();
      v13 = v12;
      if (v6)
      {
        v14 = v6;
        [v14 addLink:v13];
      }
    }
  }

  v48 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
  if (v48)
  {
    [v48 setType:1];
    [v48 setUpdateMessage:v6];
    v15 = sub_1003F7B24(v48);
    v17 = v16;
  }

  else
  {
    [0 setUpdateMessage:v6];
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000AF9C(v18, qword_1006BA5E0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    sub_100007C08();
    sub_100007608();
    sub_10000FC74();
    *v19 = 136315394;
    v22 = Set.description.getter();
    v23 = v15;
    sub_10002741C(v22, v24, v50);

    sub_1000100C0();
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v25 = Array.description.getter();
    v27 = sub_10002741C(v25, v26, v50);

    *(v19 + 14) = v27;
    v15 = v23;
    sub_10001C9AC(&_mh_execute_header, v20, v21, "ConversationLinkSync: Sending link update {to: %s, linksToSend: %s}");
    swift_arrayDestroy();
    sub_100008AE8();
    sub_10000E668();
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_29;
  }

  isa = oslog[9].isa;
  v29 = sub_10000FB2C();
  sub_100290AC4(v29, v30);
  v31 = sub_10000FB2C();
  v33 = sub_1002E9B84(v31, v32, v49);
  v35 = v34;
  v36 = sub_10000FB2C();
  sub_100290B6C(v36, v37);

  osloga = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(osloga, v38))
  {
    sub_100007C08();
    sub_100007608();
    sub_10000FC74();
    MEMORY[0] = 136315394;
    v39 = Set.description.getter();
    sub_10002741C(v39, v40, v50);

    sub_1000100C0();
    v41 = sub_10002741C(v33, v35, v50);

    MEMORY[0xE] = v41;
    sub_10001C9AC(&_mh_execute_header, osloga, v38, "ConversationLinkSync: Sent link update {to: %s, idsIdentifier: %s}");
    swift_arrayDestroy();
    sub_100008AE8();
    sub_10000E668();

    sub_100290B6C(v15, v17);
LABEL_23:
    sub_100006660();
    return;
  }

  v42 = sub_10000FB2C();
  sub_100290B6C(v42, v43);

  sub_100006660();
}

void sub_1003F3ED0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v89 = v5;
  v90 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_10000E4F4();
  v9 = type metadata accessor for Date();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007BAC();
  v87 = v16 - v17;
  v20 = __chkstk_darwin(v18, v19);
  v88 = &v86 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v25 = &v86 - v24;
  __chkstk_darwin(v23, v26);
  v28 = &v86 - v27;
  v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!v29)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = [v2 pseudonym];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  sub_1003CE928(v32, v34, v30, &selRef_setPseudonym_);
  v35 = [v2 publicKey];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  sub_1003F7A2C(v36, v38, v30);
  v39 = sub_1003F7B90(v2, &selRef_privateKey);
  if (v40 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v42 = v39;
    v43 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100290B6C(v42, v43);
  }

  [v30 setPrivateKey:isa];

  v44 = [v2 creationDate];
  if (v44)
  {
    v45 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 32))(v28, v25, v9);
    Date.timeIntervalSince1970.getter();
    [v30 setCreationDateEpochTime:?];
    (*(v12 + 8))(v28, v9);
  }

  v46 = [v2 expirationDate];
  if (v46)
  {
    v47 = v46;
    v48 = v87;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = v88;
    (*(v12 + 32))(v88, v48, v9);
    Date.timeIntervalSince1970.getter();
    [v30 setPseudonymExpirationDateEpochTime:?];
    (*(v12 + 8))(v49, v9);
  }

  v50 = [v2 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = UUID.uuidString.getter();
  v53 = v52;
  (*(v89 + 8))(v0, v90);
  sub_1003CE928(v51, v53, v30, &selRef_setGroupUUIDString_);
  [v30 setIsActivated:{objc_msgSend(v2, "isActivated")}];
  v54 = [v2 originator];
  v55 = [v54 identifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = [v2 originator];
  [v56 revision];

  v57 = objc_allocWithZone(type metadata accessor for GeneratorDescriptor());
  sub_100006844();
  v61 = sub_1003DFB90(v58, v59, v60);
  v62 = [objc_opt_self() generatorDescriptorWithCSDConversationLinkGeneratorDescriptor:v61];

  [v30 setGeneratorDescriptor:v62];
  v63 = [v2 originator];
  v64 = [v63 handle];

  v65 = objc_opt_self();
  v66 = [v65 handleWithTUHandle:v64];

  [v30 setOriginatorHandle:v66];
  v67 = sub_1003F7AAC(v2);
  if (v67)
  {
    v68 = v67;
    v86 = v2;
    if ((v67 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_1002E932C();
      Set.Iterator.init(_cocoa:)();
      v68 = v93;
      v69 = v94;
      v70 = v95;
      v71 = v96;
      v72 = v97;
    }

    else
    {
      v71 = 0;
      v73 = -1 << *(v67 + 32);
      v69 = v67 + 56;
      v70 = ~v73;
      v74 = -v73;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      else
      {
        v75 = -1;
      }

      v72 = v75 & *(v67 + 56);
    }

    v90 = v70;
    v76 = (v70 + 64) >> 6;
    if (v68 < 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v77 = v71;
      v78 = v72;
      v79 = v71;
      if (!v72)
      {
        break;
      }

LABEL_21:
      v80 = (v78 - 1) & v78;
      v81 = *(*(v68 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v78)))));
      if (!v81)
      {
LABEL_27:
        sub_10000D6CC();
        sub_10031E890();
        v2 = v86;
        goto LABEL_28;
      }

      while (1)
      {
        v83 = [v65 handleWithTUHandle:{v81, v86}];
        [v30 addInvitedHandles:v83];

        v71 = v79;
        v72 = v80;
        if ((v68 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_23:
        v82 = __CocoaSet.Iterator.next()();
        if (v82)
        {
          v91 = v82;
          sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
          swift_dynamicCast();
          v81 = v92;
          v79 = v71;
          v80 = v72;
          if (v92)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    while (1)
    {
      v79 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v79 >= v76)
      {
        goto LABEL_27;
      }

      v78 = *(v69 + 8 * v79);
      ++v77;
      if (v78)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_28:
  sub_10039BD94(v2, &selRef_name);
  if (v84)
  {
    v85 = String._bridgeToObjectiveC()();
  }

  else
  {
    v85 = 0;
  }

  [v30 setLinkName:{v85, v86}];

  sub_100005EDC();
}

void sub_1003F463C(void *a1)
{
  v2 = [a1 links];
  if (v2)
  {
    v3 = v2;
    v13 = 0;
    sub_100006AF0(0, &unk_1006AA7F0, off_100616660);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA5E0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = sub_100005274();
    v8 = sub_10000777C();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "ConversationLinkSync: Processing update, unable to convert descriptors -- dropping {update: %@}", v7, 0xCu);
    sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    sub_100008AE8();
    sub_10000E668();
  }

  sub_100006048();
}

void sub_1003F4A14()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v11 = v9 - v10;
  __chkstk_darwin(v12, v13);
  v15 = &v92 - v14;
  v16 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v92 - v19;
  v21 = type metadata accessor for UUID();
  v22 = sub_100007FEC(v21);
  v108 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22, v26);
  sub_100007BAC();
  v29 = (v27 - v28);
  __chkstk_darwin(v30, v31);
  v107 = &v92 - v32;
  v33 = sub_10039BD94(v1, &selRef_pseudonym);
  if (!v34)
  {
    goto LABEL_4;
  }

  v35 = v34;
  v106 = v33;
  v36 = sub_1003F7B90(v1, &selRef_publicKey);
  if (v37 >> 60 == 15)
  {
    goto LABEL_3;
  }

  v104 = v36;
  v105 = v37;
  v103 = v21;
  v38 = [v1 originatorHandle];
  if (!v38)
  {
    goto LABEL_43;
  }

  v39 = v38;
  v40 = [v38 tuHandle];

  v102 = v40;
  if (!v40)
  {
    sub_100290B6C(v104, v105);

    goto LABEL_4;
  }

  v100 = v29;
  v41 = [v1 generatorDescriptor];
  if (!v41)
  {
    goto LABEL_44;
  }

  v42 = v41;
  v43 = [v41 csdConversationLinkGeneratorDescriptor];

  v101 = v43;
  if (!v43)
  {

    sub_100290B6C(v104, v105);
LABEL_3:

LABEL_4:
    sub_100005EDC();
    return;
  }

  sub_10039BD94(v1, &selRef_groupUUIDString);
  if (v44)
  {
    UUID.init(uuidString:)();

    v45 = v103;
    if (sub_100015468(v20, 1, v103) == 1)
    {

      sub_100290B6C(v104, v105);

      sub_100009A04(v20, &unk_1006A3DD0, &unk_10057C9D0);
      goto LABEL_4;
    }

    (*(v108 + 32))(v107, v20, v45);
    v46 = sub_1003F7B90(v1, &selRef_privateKey);
    v97 = v47;
    v98 = v46;
    [v1 creationDateEpochTime];
    Date.init(timeIntervalSince1970:)();
    [v1 pseudonymExpirationDateEpochTime];
    Date.init(timeIntervalSince1970:)();
    v96 = [v1 isActivated];
    v48 = [v1 invitedHandles];
    v99 = v15;
    if (v48)
    {
      v49 = v48;
      v94 = v11;
      v109 = 0;
      sub_100006AF0(0, &qword_1006AA800, off_100616680);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v50 = v109;
      if (v109)
      {
        v92 = v5;
        v93 = v2;
        v95 = _swiftEmptyArrayStorage;
        v109 = _swiftEmptyArrayStorage;
        v51 = sub_10000B6F4(v50);
        v52 = 0;
        while (1)
        {
          if (v51 == v52)
          {

            v95 = sub_1002F1FE8(v95);
            v5 = v92;
            v2 = v93;
            goto LABEL_30;
          }

          if ((v50 & 0xC000000000000001) != 0)
          {
            v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v53 = *(v50 + 8 * v52 + 32);
          }

          v54 = v53;
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          v56 = [v53 tuHandle];

          ++v52;
          if (v56)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v57 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v57 >> 1)
            {
              sub_10001AC68(v57);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            sub_10000F2EC();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v95 = v109;
            v52 = v55;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v95 = 0;
LABEL_30:
      v11 = v94;
    }

    else
    {
      v95 = 0;
    }

    v94 = sub_10039BD94(v1, &selRef_linkName);
    v59 = v58;
    v60 = *&v101[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
    v61 = *&v101[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];
    v62 = *&v101[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];
    v63 = objc_allocWithZone(TUConversationLinkOriginator);

    v64 = v102;
    v65 = sub_100006B30();
    v102 = v66;
    v68 = sub_1003F7774(v65, v67, v62, v66);
    v69 = v100;
    (*(v108 + 16))(v100, v107, v103);
    v70 = objc_allocWithZone(TUMutableConversationLinkDescriptor);
    v71 = v68;
    v73 = v104;
    v72 = v105;
    sub_1002EAE60(v104, v105);
    v100 = v71;
    v74 = sub_1003F7684(v69, v71, v106, v35, v73, v72);
    v75 = v74;
    v76 = v97;
    if (v97 >> 60 == 15)
    {
      v72 = 0;
    }

    else
    {
      v77 = sub_10000A1F8();
      sub_100290AC4(v77, v78);
      sub_10000A1F8();
      Data._bridgeToObjectiveC()();
      v79 = sub_10000C870();
      v74 = sub_100290B6C(v79, v76);
    }

    v80 = v95;
    sub_10003EBA8(v74, "setPrivateKey:");

    v82 = v99;
    if (v80)
    {
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      sub_1002E932C();
      v83.super.isa = Set._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v83.super.isa = 0;
    }

    sub_10003EBA8(v81, "setInvitedHandles:");

    isa = Date._bridgeToObjectiveC()().super.isa;
    sub_10003EBA8(isa, "setCreationDate:");

    v85 = Date._bridgeToObjectiveC()().super.isa;
    sub_10003EBA8(v85, "setExpirationDate:");

    v86 = [v75 setActivated:v96];
    if (v59)
    {
      v87 = String._bridgeToObjectiveC()();
    }

    else
    {
      v87 = 0;
    }

    v88 = v102;
    sub_10003EBA8(v86, "setName:");

    v89 = sub_10000A1F8();
    sub_100290B6C(v89, v90);
    sub_100290B6C(v104, v105);

    v91 = *(v5 + 8);
    v91(v11, v2);
    v91(v82, v2);
    (*(v108 + 8))(v107, v103);
    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
}

void sub_1003F519C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_38;
  }

  v4 = *(v2 + 88);
  v5 = (a1 + 40);
  v6 = _swiftEmptyArrayStorage;
  v7 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;
  oslog = v4;
  do
  {
    v9 = *(v5 - 1);
    v10 = *v5;

    v11 = String._bridgeToObjectiveC()();
    v12 = [v4 v7[476]];

    if (v12)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = v6[2];
        sub_10000A698();
        sub_100017840();
        v6 = v25;
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_10001AC68(v13);
        sub_100017840();
        v6 = v26;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v9;
      v15[5] = v10;
      v16 = String._bridgeToObjectiveC()();

      [v4 noteItem:v16];
    }

    else
    {
      if (p_inst_meths[356] != -1)
      {
        sub_10000854C();
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000075F0(v17, qword_1006BA5E0);

      v18 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v16))
      {
        v19 = sub_100005274();
        v20 = v6;
        v21 = p_inst_meths;
        v22 = sub_100005E84();
        v82 = v22;
        *v19 = 136315138;
        v23 = sub_10002741C(v9, v10, &v82);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v18, v16, "ConversationLinkSync: Excluding pseudonym from recover message as it is at rate limit {pseudonym: %s}", v19, 0xCu);
        sub_100009B7C(v22);
        p_inst_meths = v21;
        v6 = v20;
        v7 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
        sub_100005F40();
        v4 = oslog;
        sub_100005F40();
      }

      else
      {
      }
    }

    v5 += 2;
    --v3;
  }

  while (v3);
  if (v6[2])
  {
    v27 = [objc_allocWithZone(CSDMessagingLinkSyncRecoverMessage) init];
    if (v27)
    {
      sub_100006AF0(0, &qword_1006A9348, NSMutableArray_ptr);
      v28 = v27;
      v29 = sub_10000C870();
      sub_1002F3C28(v29);
      v30 = sub_1003EF6B0();
      [v16 setPseudonyms:v30];
    }

    v31 = [objc_allocWithZone(CSDMessagingLinkSyncMessage) init];
    v32 = v31;
    v33 = a2;
    if (v31)
    {
      [v31 setType:3];
      [v32 setRecoverMessage:v27];
      v34 = sub_1003F7B24(v32);
      v36 = v35;
    }

    else
    {
      [0 setRecoverMessage:v27];
      v34 = 0;
      v36 = 0xF000000000000000;
    }

    if (p_inst_meths[356] != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000AF9C(v44, qword_1006BA5E0);
    v45 = v27;

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v81 = v45;

    if (os_log_type_enabled(v46, v47))
    {
      v74 = v34;
      v75 = v36;
      oslogb = v32;
      v48 = sub_100007C08();
      v49 = sub_10000777C();
      v50 = sub_100005E84();
      v82 = v50;
      *v48 = 136315394;
      v51 = Set.description.getter();
      v53 = sub_10002741C(v51, v52, &v82);

      *(v48 + 4) = v53;
      *(v48 + 12) = 2112;
      if (v27)
      {
        v54 = [v81 pseudonyms];
        v55 = v54;
      }

      else
      {
        v54 = 0;
        v55 = 0;
      }

      v36 = v75;
      *(v48 + 14) = v54;
      *v49 = v55;
      sub_10001C9AC(&_mh_execute_header, v46, v47, "ConversationLinkSync: Sending recover {to: %s, pseudonyms: %@}");
      sub_100009A04(v49, &unk_1006A2630, &qword_10057CB40);
      sub_1000079DC();
      sub_100009B7C(v50);
      sub_100006868();
      sub_10000E668();

      v33 = a2;
      v32 = oslogb;
      v34 = v74;
    }

    else
    {
    }

    if (v36 >> 60 == 15)
    {
      __break(1u);
      return;
    }

    v56 = *(v76 + 72);
    v57 = sub_10000D6CC();
    sub_100290AC4(v57, v58);

    v59 = sub_10000D6CC();
    v61 = sub_1002E9B84(v59, v60, v33);
    v63 = v62;
    v64 = sub_10000D6CC();
    sub_100290B6C(v64, v65);

    osloga = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(osloga, v66))
    {
      sub_100007C08();
      v82 = sub_100007608();
      MEMORY[0] = 136315394;
      v67 = Set.description.getter();
      v69 = v68;
      sub_10002741C(v67, v68, &v82);

      sub_1000100C0();
      sub_10002741C(v61, v63, &v82);
      sub_10000C870();

      MEMORY[0xE] = v69;
      sub_10001C9AC(&_mh_execute_header, osloga, v66, "ConversationLinkSync: Sent recover {to: %s, idsIdentifier: %s}");
      swift_arrayDestroy();
      sub_100006868();
      sub_10000E668();

      sub_100290B6C(v34, v36);
      goto LABEL_37;
    }

    v70 = sub_10000D6CC();
    sub_100290B6C(v70, v71);
  }

  else
  {

    if (p_inst_meths[356] != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000075F0(v37, qword_1006BA5E0);

    osloga = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(osloga, v38))
    {
      v39 = sub_100005274();
      v40 = sub_100005E84();
      v82 = v40;
      *v39 = 136315138;
      v41 = Array.description.getter();
      v43 = sub_10002741C(v41, v42, &v82);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, osloga, v38, "ConversationLinkSync: No pseudonyms remain after rate limiting, not sending message {pseudonyms: %s}", v39, 0xCu);
      sub_100009B7C(v40);
      sub_10000E668();
      sub_100005F40();
LABEL_37:

LABEL_38:
      sub_1000089B0();
      return;
    }
  }

  sub_1000089B0();
}

void sub_1003F5A84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, id a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_10000C16C();
  a34 = v36;
  a35 = v37;
  v38 = v35;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = [v43 pseudonyms];
  if (!v45 || (v46 = v45, a23 = 0, static Array._conditionallyBridgeFromObjectiveC(_:result:)(), v46, !a23))
  {
LABEL_22:
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    sub_10000AF9C(v76, qword_1006BA5E0);

    v77 = v44;
    v121 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v121, v78))
    {
      v79 = sub_100007C08();
      v80 = sub_10000777C();
      v81 = sub_100005E84();
      a23 = v81;
      *v79 = 138412546;
      *(v79 + 4) = v77;
      *v80 = v77;
      *(v79 + 12) = 2080;
      v82 = v77;
      *(v79 + 14) = sub_10002741C(v42, v40, &a23);
      _os_log_impl(&_mh_execute_header, v121, v78, "ConversationLinkSync: No pseudonyms found in recover -- dropping {recover: %@, from: %s}", v79, 0x16u);
      sub_100009A04(v80, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v81);
      sub_100006868();
      sub_100005F40();
LABEL_26:

LABEL_27:
      sub_100027EC0();
      return;
    }

    goto LABEL_41;
  }

  if (!*(a23 + 16))
  {

    goto LABEL_22;
  }

  v119 = a23;
  if (qword_1006A0B20 != -1)
  {
    sub_10000854C();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_1000075F0(v47, qword_1006BA5E0);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  v117 = v40;
  v118 = v38;
  v116 = v42;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = sub_100007C08();
    a23 = swift_slowAlloc();
    *v50 = 136315394;
    v51 = Array.description.getter();
    v53 = sub_10002741C(v51, v52, &a23);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    *(v50 + 14) = sub_10002741C(v42, v40, &a23);
    _os_log_impl(&_mh_execute_header, v48, v49, "ConversationLinkSync: Processing recover, asked to check for links matching pseudonyms {pseudonyms: %s, from: %s}", v50, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  v54 = *(v119 + 16);
  if (v54)
  {
    v55 = *(v38 + 96);
    v56 = (v119 + 40);
    v57 = _swiftEmptyArrayStorage;
    v120 = v55;
    do
    {
      v59 = *(v56 - 1);
      v58 = *v56;

      sub_10000F2EC();
      v60 = String._bridgeToObjectiveC()();
      v61 = [v55 underLimitForItem:v60];

      if (v61)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = v57[2];
          sub_10000A698();
          sub_100017840();
          v57 = v74;
        }

        v63 = v57[2];
        v62 = v57[3];
        if (v63 >= v62 >> 1)
        {
          sub_10001AC68(v62);
          sub_100017840();
          v57 = v75;
        }

        v57[2] = v63 + 1;
        v64 = &v57[2 * v63];
        v64[4] = v59;
        v64[5] = v58;
        sub_10000F2EC();
        v65 = String._bridgeToObjectiveC()();

        v55 = v120;
        [v120 noteItem:v65];
      }

      else
      {

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = sub_100005274();
          v69 = sub_100005E84();
          a23 = v69;
          *v68 = 136315138;
          v70 = Array.description.getter();
          v72 = sub_10002741C(v70, v71, &a23);

          *(v68 + 4) = v72;
          v55 = v120;
          _os_log_impl(&_mh_execute_header, v66, v67, "ConversationLinkSync: Excluding pseudonym from recover response as it is at rate limit {pseudonym: %s}", v68, 0xCu);
          sub_100009B7C(v69);
          sub_100005F40();
          sub_100005F40();
        }
      }

      v56 += 2;
      --v54;
    }

    while (v54);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  if (v57[2])
  {

    v83 = *sub_100009B14((v118 + 32), *(v118 + 56));

    v85 = sub_1002A3600(v84, v83);

    if (sub_10000B6F4(v85) >= 1)
    {

      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = sub_100007C08();
        a23 = swift_slowAlloc();
        *v88 = 136315394;
        sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
        v89 = Array.description.getter();
        v91 = sub_10002741C(v89, v90, &a23);

        *(v88 + 4) = v91;
        *(v88 + 12) = 2080;

        v92 = Array.description.getter();

        v93 = sub_100008DB8();
        sub_10002741C(v93, v94, v95);
        sub_10000C870();

        *(v88 + 14) = v92;
        sub_100017EF8(&_mh_execute_header, v96, v97, "ConversationLinkSync: Found link descriptors for pseudonyms specified in recover -- sending update {linkDescriptors: %s, pseudonyms: %s}");
        swift_arrayDestroy();
        sub_10000E668();
        sub_1000079DC();
      }

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v116;
      *(inited + 40) = v117;

      sub_10039B534();
      sub_1003F38A0(v85, v99);

      goto LABEL_27;
    }

    v121 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v121, v107))
    {
      v108 = sub_100005274();
      v109 = sub_100005E84();
      a23 = v109;
      *v108 = 136315138;

      v110 = Array.description.getter();
      v112 = v111;

      v113 = sub_10002741C(v110, v112, &a23);

      *(v108 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v121, v107, "ConversationLinkSync: Did not find link descriptors for pseudonyms -- nothing to send in response {pseudonyms: %s}", v108, 0xCu);
      sub_100009B7C(v109);
      sub_10000E668();
      goto LABEL_38;
    }
  }

  else
  {

    v121 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v121, v100))
    {
      v101 = sub_100005274();
      v102 = sub_100005E84();
      a23 = v102;
      *v101 = 136315138;
      v103 = Array.description.getter();
      v105 = v104;

      v106 = sub_10002741C(v103, v105, &a23);

      *(v101 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v121, v100, "ConversationLinkSync: No pseudonyms remain after rate limiting, not sending recover response {pseudonyms: %s}", v101, 0xCu);
      sub_100009B7C(v102);
      sub_10000E668();
LABEL_38:
      sub_100005F40();

      goto LABEL_26;
    }
  }

LABEL_41:
  sub_100027EC0();
}

void sub_1003F6320()
{
  v1 = *(v0 + 120);
  swift_allocObject();
  swift_weakInit();
  sub_1000114F8();
  v4[1] = 1107296256;
  v4[2] = sub_100026924;
  v4[3] = &unk_10062E6E0;
  v2 = _Block_copy(v4);

  v3 = os_state_add_handler();
  _Block_release(v2);
  *(v0 + 128) = v3;
}

uint64_t sub_1003F63E0(char a1)
{
  result = sub_1003F68CC(a1);
  v2 = 0;
  v4 = result + 64;
  v3 = *(result + 64);
  v51 = result;
  v5 = 1 << *(result + 32);
  v70 = 0;
  v71 = 0xE000000000000000;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;
  v9 = &type metadata for Any;
  v56 = v8;
  v52 = result + 64;
  if ((v6 & v3) == 0)
  {
LABEL_6:
    while (1)
    {
      v10 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        v57 = v2;
        v58 = 0;
        v66 = 0u;
        v67 = 0u;
        v65 = 0;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v10);
      ++v2;
      if (v7)
      {
        v57 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  while (1)
  {
    v57 = v2;
    v10 = v2;
LABEL_10:
    v58 = (v7 - 1) & v7;
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(v51 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100006A94(*(v51 + 56) + 32 * v11, &v61);
    v65._countAndFlagsBits = v14;
    v65._object = v13;
    sub_10003EBF0(&v61, &v66);

LABEL_11:
    v68 = v65;
    v69[0] = v66;
    v69[1] = v67;
    object = v65._object;
    if (!v65._object)
    {
      goto LABEL_43;
    }

    countAndFlagsBits = v68._countAndFlagsBits;
    sub_10003EBF0(v69, v64);
    v65._countAndFlagsBits = countAndFlagsBits;
    v65._object = object;
    v17._countAndFlagsBits = 2618;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    String.append(_:)(v65);

    sub_100006A94(v64, &v65);
    sub_10026D814(&qword_1006AA7C8, &qword_100586610);
    if (sub_10000BC10())
    {
      v18 = v61._countAndFlagsBits;
      v19 = *(v61._countAndFlagsBits + 16);
      if (v19)
      {
        v20 = 32;
        do
        {
          v21 = *(v18 + v20);
          v65._countAndFlagsBits = 2105376;
          v65._object = 0xE300000000000000;

          v22 = Array.description.getter();
          v24 = v23;

          v25._countAndFlagsBits = v22;
          v25._object = v24;
          String.append(_:)(v25);

          sub_1003F7F04(v26);
          String.append(_:)(v65);

          v20 += 8;
          --v19;
        }

        while (v19);

        v8 = v56;
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    sub_100006A94(v64, &v65);
    sub_10026D814(&qword_1006AA7C0, &unk_100586600);
    if (!sub_10000BC10())
    {
      v61._countAndFlagsBits = 2105376;
      v61._object = 0xE300000000000000;
      sub_100006A94(v64, &v65);
      v49._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v49);

      sub_1003F7F04(v50);
      String.append(_:)(v61);
      goto LABEL_38;
    }

    result = v61._countAndFlagsBits;
    v54 = *(v61._countAndFlagsBits + 16);
    if (v54)
    {
      break;
    }

LABEL_38:

LABEL_39:
    result = sub_100009B7C(v64);
    v2 = v57;
    v7 = v58;
    if (!v58)
    {
      goto LABEL_6;
    }
  }

  v27 = 0;
  v55 = v61._countAndFlagsBits + 32;
  v53 = v61._countAndFlagsBits;
  while (1)
  {
    if (v27 >= *(result + 16))
    {
      goto LABEL_45;
    }

    v28 = *(v55 + 8 * v27);
    v59 = v27 + 1;

    sub_1003F7F04(v29);
    v30 = 0;
    v31 = 1 << *(v28 + 32);
    v32 = v31 < 64 ? ~(-1 << v31) : -1;
    v33 = v32 & *(v28 + 64);
    v34 = (v31 + 63) >> 6;
    if (!v33)
    {
      break;
    }

    while (1)
    {
      v35 = v30;
LABEL_30:
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v37 = v36 | (v35 << 6);
      v38 = (*(v28 + 48) + 16 * v37);
      v40 = *v38;
      v39 = v38[1];
      sub_100006A94(*(v28 + 56) + 32 * v37, v60);
      v61._countAndFlagsBits = v40;
      v61._object = v39;
      sub_10003EBF0(v60, &v62);

LABEL_31:
      v65 = v61;
      v66 = v62;
      v67 = v63;
      v41 = v61._object;
      if (!v61._object)
      {
        break;
      }

      v42 = v9;
      v43 = v65._countAndFlagsBits;
      sub_10003EBF0(&v66, &v61);
      v44._countAndFlagsBits = v43;
      v9 = v42;
      v44._object = v41;
      String.append(_:)(v44);

      v45._countAndFlagsBits = 540949792;
      v45._object = 0xE400000000000000;
      String.append(_:)(v45);
      sub_100006A94(&v61, v60);
      v46._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v46);

      sub_1003F7F04(v47);
      v48._countAndFlagsBits = 2105376;
      v48._object = 0xE300000000000000;
      String.append(_:)(v48);

      sub_100009B7C(&v61._countAndFlagsBits);
      if (!v33)
      {
        goto LABEL_26;
      }
    }

    result = v53;
    v27 = v59;
    v4 = v52;
    v8 = v56;
    if (v59 == v54)
    {
      goto LABEL_38;
    }
  }

LABEL_26:
  while (1)
  {
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v35 >= v34)
    {
      v33 = 0;
      v62 = 0u;
      v63 = 0u;
      v61 = 0;
      goto LABEL_31;
    }

    v33 = *(v28 + 64 + 8 * v35);
    ++v30;
    if (v33)
    {
      v30 = v35;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:

  return v70;
}

uint64_t sub_1003F68CC(char a1)
{
  Dictionary.init(dictionaryLiteral:)();
  v92 = v1;
  v2 = sub_100009B14(v1 + 4, v1[7]);
  v3 = sub_1002A226C(*v2);
  v98 = sub_10000B6F4(v3);
  if (v98)
  {
    v4 = 0;
    v96 = v3 & 0xC000000000000001;
    v5 = _swiftEmptyDictionarySingleton;
    v93 = v3 & 0xFFFFFFFFFFFFFF8;
    v94 = v3;
    while (1)
    {
      if (v96)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v93 + 16))
        {
          goto LABEL_58;
        }

        v6 = *(v3 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v100 = (v4 + 1);
      v9 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier];
      v8 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_identifier + 8];
      v10 = *&v6[OBJC_IVAR___CSDConversationLinkGeneratorDescriptor_version];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103[0] = v5;
      sub_10000F2EC();
      sub_100005208();
      v12 = v5[2];
      sub_10004A10C();
      v17 = v15 + v16;
      if (__OFADD__(v15, v16))
      {
        goto LABEL_56;
      }

      v18 = v13;
      v19 = v14;
      sub_10026D814(&unk_1006A6F30, &qword_100582708);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
      {
        sub_10000F2EC();
        v20 = sub_100005208();
        if ((v19 & 1) != (v21 & 1))
        {
LABEL_63:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v18 = v20;
      }

      if (v19)
      {

        v5 = v103[0];
        *(*(v103[0] + 7) + 8 * v18) = v10;
      }

      else
      {
        v5 = v103[0];
        sub_1000163C8(v103[0] + 8 * (v18 >> 6));
        v22 = (*(v103[0] + 6) + 16 * v18);
        *v22 = v9;
        v22[1] = v8;
        *(v5[7] + 8 * v18) = v10;

        v23 = v5[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_57;
        }

        v5[2] = v25;
      }

      ++v4;
      v3 = v94;
      if (v100 == v98)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  v5 = _swiftEmptyDictionarySingleton;
LABEL_19:

  v26 = sub_10026D814(&qword_1006AA7B0, &qword_1005865F0);
  v104 = v26;
  v103[0] = v5;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10003DE1C();
  v27 = v92[14];
  sub_1004330F4();
  v103[1] = v28;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v104 = &type metadata for Int;
  v103[0] = sub_100433470();
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v29 = sub_100009B14(v92 + 4, v92[7]);
  v30 = sub_1002A2FCC(*v29);
  v104 = v26;
  v103[0] = v30;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_100040430();
  v31 = v102;
  sub_100009AB0((v92 + 4), v103);
  sub_10026D814(&qword_1006AA7B8, &qword_1005865F8);
  v89 = v26;
  if (swift_dynamicCast())
  {
    v103[0] = 0;
    v32 = [v105 conversationLinkDescriptorsWithPredicate:0 limit:0 offset:0 error:v103];
    v33 = v103[0];
    if (v32)
    {
      v34 = v32;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v33;

      v37 = sub_10000B6F4(v35);
      if (v37)
      {
        if (v37 < 1)
        {
          goto LABEL_62;
        }

        v38 = 0;
        v95 = v35 & 0xC000000000000001;
        v39 = _swiftEmptyDictionarySingleton;
        v40 = _swiftEmptyArrayStorage;
        v91 = v37;
        do
        {
          if (v95)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v41 = *(v35 + 8 * v38 + 32);
          }

          v42 = v41;
          v101 = v41;
          sub_10026D814(&unk_1006A39A0, &unk_10057D700);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10057E830;
          *(inited + 32) = 0x796E6F6475657370;
          *(inited + 40) = 0xE90000000000006DLL;
          v44 = [v42 pseudonym];
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;

          *(inited + 48) = v45;
          *(inited + 56) = v47;
          *(inited + 72) = &type metadata for String;
          *(inited + 80) = 0xD000000000000012;
          *(inited + 88) = 0x8000000100574FC0;
          v48 = [v101 originator];
          v49 = [v48 revision];

          *(inited + 96) = v49;
          *(inited + 120) = &type metadata for Int;
          *(inited + 128) = 0xD000000000000014;
          *(inited + 136) = 0x8000000100574FE0;
          v50 = [v101 originator];
          v51 = [v50 identifier];

          v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v54 = v53;

          *(inited + 168) = &type metadata for String;
          *(inited + 144) = v52;
          *(inited + 152) = v54;
          v55 = Dictionary.init(dictionaryLiteral:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = v40[2];
            sub_10000A698();
            sub_100470348();
            v40 = v85;
          }

          v57 = v40[2];
          v56 = v40[3];
          if (v57 >= v56 >> 1)
          {
            sub_10001AC68(v56);
            sub_100470348();
            v40 = v86;
          }

          v40[2] = v57 + 1;
          v40[v57 + 4] = v55;
          v58 = [v101 originator];
          v59 = [v58 identifier];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v99 = v40;
          if (v39[2] && (v60 = sub_100005208(), (v61 & 1) != 0))
          {
            v62 = *(v39[7] + 8 * v60);
          }

          else
          {
            v62 = 0;
          }

          v63 = [v101 originator];
          v64 = [v63 identifier];

          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v67 = v66;

          v68 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_59;
          }

          v97 = v38;
          v69 = v35;
          v70 = swift_isUniquelyReferenced_nonNull_native();
          v103[0] = v39;
          sub_100005208();
          v71 = v39[2];
          sub_10004A10C();
          v76 = v74 + v75;
          if (__OFADD__(v74, v75))
          {
            goto LABEL_60;
          }

          v77 = v72;
          v78 = v73;
          sub_10026D814(&unk_1006A6F30, &qword_100582708);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v70, v76))
          {
            v79 = sub_100005208();
            if ((v78 & 1) != (v80 & 1))
            {
              goto LABEL_63;
            }

            v77 = v79;
          }

          v35 = v69;
          v39 = v103[0];
          if (v78)
          {
            *(*(v103[0] + 7) + 8 * v77) = v68;
          }

          else
          {
            sub_1000163C8(v103[0] + 8 * (v77 >> 6));
            v81 = (v39[6] + 16 * v77);
            *v81 = v65;
            v81[1] = v67;
            *(v39[7] + 8 * v77) = v68;
            v82 = v39[2];
            v24 = __OFADD__(v82, 1);
            v83 = v82 + 1;
            if (v24)
            {
              goto LABEL_61;
            }

            v39[2] = v83;
          }

          ++v38;
          v40 = v99;
        }

        while (v91 != v97 + 1);
        swift_unknownObjectRelease();

        goto LABEL_50;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v87 = v103[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    v39 = _swiftEmptyDictionarySingleton;
    v40 = _swiftEmptyArrayStorage;
LABEL_50:
    v31 = v102;
    goto LABEL_51;
  }

  v39 = _swiftEmptyDictionarySingleton;
  v40 = _swiftEmptyArrayStorage;
LABEL_51:
  if (a1)
  {
    v104 = sub_10026D814(&qword_1006AA7C0, &unk_100586600);
    v103[0] = v40;
    sub_10004A028();
    swift_isUniquelyReferenced_nonNull_native();
    v102 = v31;
    sub_100040430();
  }

  else
  {
  }

  v104 = v89;
  v103[0] = v39;
  sub_10004A028();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10003DE1C();
  return v102;
}

void sub_1003F72B4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 104);
  v7 = sub_1002B8CE8();
  if (v7)
  {
    sub_1002B9008(v7);
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000075F0(v8, qword_1006BA5E0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = sub_100005274();
      v12 = sub_100005E84();
      v19 = v12;
      *v11 = 136315138;
      v13 = Set.description.getter();
      v15 = sub_10002741C(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "ConversationLinkSync: devices changed making sure we send a check in to them as well {deviceDestinations: %s}", v11, 0xCu);
      sub_100009B7C(v12);
      sub_1000079DC();
      sub_100005F40();
    }

    sub_1002B7C2C(a2, 1, 2u, sub_1003F74B8, v3);
    sub_100006048();
  }

  else
  {
    [*(a1 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service) hasActiveAccounts];
    sub_100006048();

    sub_1003F28CC(v17);
  }
}

uint64_t sub_1003F74C0()
{
  v1 = v0;
  _StringGuts.grow(_:)(181);
  sub_10000C4D0();
  String.append(_:)(v2);
  v3 = *v0;
  v4._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v4);

  sub_10000C4D0();
  String.append(_:)(v5);
  v6 = v0[1];
  v7._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v7);

  sub_10000C4D0();
  v8._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v8);
  v9 = v0[3];
  type metadata accessor for GeneratorDescriptor();
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  sub_10000C4D0();
  v11._countAndFlagsBits = 0xD000000000000021;
  String.append(_:)(v11);
  v12 = v1[4];
  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  sub_10000C4D0();
  String.append(_:)(v14);
  v15 = v1[2];
  v16._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

id sub_1003F7684(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000FB2C();
  v13 = String._bridgeToObjectiveC()();

  v14 = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v7 initWithGroupUUID:isa originator:a2 pseudonym:v13 publicKey:v14];

  sub_100049B14(a5, a6);
  v16 = type metadata accessor for UUID();
  sub_100008070(v16);
  (*(v17 + 8))(a1);
  return v15;
}

id sub_1003F7774(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = [v4 initWithIdentifier:v7 revision:a3 handle:a4];

  return v8;
}

unint64_t sub_1003F77E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = _swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_10026D814(&unk_1006AC0A0, &qword_100586618);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100285FC4(v6, &v15, &unk_1006AA7E0, &unk_100586620);
    v7 = v15;
    v8 = v16;
    result = sub_1003F793C(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_10003EBF0(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1003F793C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100006110(a1, a2, v6);
}

void sub_1003F79B4(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_1003A7258(0x20000000000001);
  }
}

void sub_1003F7A2C(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(a1, a2);
  [a3 setPublicKey:isa];
}

uint64_t sub_1003F7AAC(void *a1)
{
  v1 = [a1 invitedHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_1002E932C();
  sub_100006B30();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1003F7B24(void *a1)
{
  v2 = [a1 data];

  if (v2)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

uint64_t sub_1003F7B90(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

char *sub_1003F7BEC(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_1003B4734(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1003B4734(v4, __dst, a4);
}

uint64_t sub_1003F7CA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F7CEC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1003F7CFC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1003F7D0C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  sub_1003F1A34(a1, a2, v3, v4);
}

uint64_t sub_1003F7D60(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1003F7DB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003F7DDC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003F7E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003F7E98(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_1003F7F1C()
{
  v1 = OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled;
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1003F7F60(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1003F7F60(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_featureFlags) conversationOneToOneModeEnabled];
  if (result)
  {
    v2 = objc_opt_self();
    result = [v2 sharedInstance];
    if (result)
    {
      v3 = result;
      v4 = [result multiwaySupported];

      if (v4)
      {
        v5 = [v2 sharedInstance];
        if (v5)
        {
          v6 = v5;
          v7 = [v5 multiwayBlocked];

          return v7 ^ 1;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003F8028()
{
  v1 = (v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf);
  v2 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf);
  v3 = *(v0 + OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v4 = sub_1003F80B8();
    v5 = *v1;
    v6 = v1[1];
    *v1 = v4;
    v1[1] = v7;

    sub_1003FC4A4(v5, v6);
  }

  sub_1003FC4B8(v2, v3);
  return v4;
}

id sub_1003F80B8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = [result pushToken];

    if (v2)
    {
      return sub_1003E09D0(v2, &selRef___imHexString);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003F813C()
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19, v2);
  sub_100007FDC();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  sub_100007FDC();
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  sub_100007FDC();
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10001000C(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (TUSimulatedModeEnabled())
  {
    v13 = [objc_allocWithZone(TUSimulatedIDSIDQueryController) init];
LABEL_4:
    swift_getObjectType();
    v15 = objc_allocWithZone(TUFeatureFlags);
    swift_unknownObjectRetain();
    v16 = [v15 init];
    v17 = [objc_allocWithZone(type metadata accessor for SharedConversationServerBag()) init];
    v18 = sub_1003FC528(v12, v13, v16, v17);
    swift_unknownObjectRelease();
    swift_deallocPartialClassInstance();
    return v18;
  }

  result = [objc_opt_self() sharedInstance];
  v13 = result;
  if (result)
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void sub_1003F8494(void *a1, int a2, uint64_t a3, uint64_t a4, char *a5, const void *a6)
{
  v79 = a2;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v83, v17);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a6;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10057D690;
  _Block_copy(a6);
  v21 = [a1 value];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = sub_1003E09D0(v21, &selRef_IDSFormattedDestinationID);
  if (v23)
  {
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    v24 = sub_1003F7F1C();
    v84 = v19;
    v85 = a6;
    if ((v24 & 1) != 0 && [*&a5[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] isModernGFTEnabled])
    {
      v72 = a5;
      v75 = v11;
      v25 = sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);

      v26 = sub_1003F8E78();
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      v74 = v12;
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v27 = swift_allocObject();
      v28 = v27;
      *(v27 + 16) = xmmword_10057D6A0;
      if (v26)
      {
        v89 = v25;
        v90 = sub_1003FC43C();
        *&aBlock = v26;
        sub_10002F0C8(&aBlock, (v28 + 4));
        v29 = v26;
      }

      else
      {
        *(v27 + 56) = &type metadata for String;
        v29 = 0;
        *(v27 + 64) = sub_100009D88();
        v28[4] = 0;
        v28[5] = 0xE000000000000000;
      }

      v28[12] = &type metadata for String;
      v28[13] = sub_100009D88();
      v28[9] = a3;
      v28[10] = a4;

      v73 = v29;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v42 = swift_allocObject();
      *(v42 + 16) = _swiftEmptyArrayStorage;
      v76 = swift_allocObject();
      *(v76 + 16) = _swiftEmptyArrayStorage;
      v77 = swift_allocObject();
      *(v77 + 16) = _swiftEmptyArrayStorage;
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      v44 = dispatch_group_create();
      dispatch_group_enter(v44);
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;
      v48 = swift_allocObject();
      v78 = v42;
      v48[2] = v42;
      v48[3] = v43;
      v48[4] = v44;

      v49 = v44;
      v50 = v26;
      v51 = v26;
      v52 = v72;
      sub_1003F8EEC(v20, v45, v47, v50, sub_1003FC358, v48);

      dispatch_group_enter(v49);
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;
      v56 = swift_allocObject();
      v56[2] = v76;
      v56[3] = v43;
      v56[4] = v49;

      v57 = v49;

      sub_1003F8EEC(v20, v53, v55, v51, sub_1003FC384, v56);

      dispatch_group_enter(v57);
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      v61 = swift_allocObject();
      v62 = v77;
      v61[2] = v77;
      v61[3] = v43;
      v61[4] = v57;

      v71 = v57;

      sub_1003F8EEC(v20, v58, v60, v51, sub_1003FC3F8, v61);

      v70 = *&v52[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue];
      v63 = swift_allocObject();
      *(v63 + 16) = v78;
      *(v63 + 24) = v52;
      *(v63 + 32) = v79 & 1;
      *(v63 + 40) = v76;
      *(v63 + 48) = v62;
      *(v63 + 56) = v43;
      *(v63 + 64) = sub_1003FBBC4;
      *(v63 + 72) = v84;
      v90 = sub_1003FC424;
      v91 = v63;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v88 = sub_100004CEC;
      v89 = &unk_10062EA90;
      v64 = _Block_copy(&aBlock);

      v65 = v52;

      v66 = v80;
      static DispatchQoS.unspecified.getter();
      v86 = _swiftEmptyArrayStorage;
      sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_10001000C(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
      v67 = v82;
      v68 = v75;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v69 = v71;
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v64);

      (*(v74 + 8))(v67, v68);
      (*(v81 + 8))(v66, v83);

      v41 = v85;
    }

    else
    {
      if (qword_1006A0AA0 != -1)
      {
        swift_once();
      }

      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_10057D6A0;
      LOBYTE(aBlock) = a5[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled] & 1;
      v31 = a5;
      v32 = String.init<A>(reflecting:)();
      v34 = v33;
      *(v30 + 56) = &type metadata for String;
      v35 = sub_100009D88();
      *(v30 + 64) = v35;
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      LOBYTE(aBlock) = [*&v31[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] isModernGFTEnabled];
      v36 = String.init<A>(reflecting:)();
      *(v30 + 96) = &type metadata for String;
      *(v30 + 104) = v35;
      *(v30 + 72) = v36;
      *(v30 + 80) = v37;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      isa = Array._bridgeToObjectiveC()().super.isa;
      v39 = Array._bridgeToObjectiveC()().super.isa;
      v40 = Array._bridgeToObjectiveC()().super.isa;
      v41 = v85;
      (*(v85 + 2))(v85, isa, v39, v40, 0);
    }

    _Block_release(v41);
  }

  else
  {
    _Block_release(a6);
    __break(1u);
  }
}

id sub_1003F8E78()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithUnprefixedURI:v1];

  return v2;
}

void sub_1003F8EEC(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D6A0;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100009D88();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  aBlock = a2;
  v31 = a3;

  v15 = String.init<A>(reflecting:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = *&v6[OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController];
  swift_unknownObjectRetain();
  sub_1002F3C28(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = String._bridgeToObjectiveC()();
  v25 = TUBundleIdentifierCallServicesDaemon;
  v26 = *&v6[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue];
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v6;
  v20[6] = a5;
  v20[7] = a6;
  v20[8] = a1;
  v34 = sub_1003FC4CC;
  v35 = v20;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100005438;
  v33 = &unk_10062EAE0;
  v21 = _Block_copy(&aBlock);
  v22 = a4;
  v23 = v6;

  v24 = v25;

  [v17 currentIDStatusForDestinations:isa service:v19 preferredFromID:v22 listenerID:v24 queue:v26 completionBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

void sub_1003F91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  *(v9 + 56) = sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
  *(v9 + 64) = sub_10001000C(&unk_1006AA8B0, &unk_1006AA8A0, &unk_1005866E8);
  *(v9 + 32) = a1;

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;

  swift_beginAccess();
  *(a4 + 16) = a2;
  dispatch_group_leave(a5);
}

uint64_t sub_1003F9364(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, void *, unint64_t, void))
{
  v10 = 0;
  v161 = 0;
  swift_beginAccess();
  v127 = a1;
  isa = a1[2];
  v151 = _swiftEmptyArrayStorage;
  v154 = _swiftEmptyArrayStorage;
  v144 = (isa & 0xC000000000000001);
  v145 = sub_10000B6F4(isa);
  v141 = IDSRegistrationPropertySupportsModernGFT;
  v138 = IDSRegistrationPropertyIsGreenTea;

  v12 = 0;
  v129 = 0;
  v132 = 0;
  v136 = 0;
  v137 = 0;
LABEL_2:
  while (2)
  {
    for (i = v12; ; ++i)
    {
      if (v145 == i)
      {
        goto LABEL_34;
      }

      if (v144)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v14 = *(isa + 8 * i + 32);
      }

      v15 = v14;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
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
        swift_beginAccess();
        if (*(a6 + 16) != 5)
        {
          swift_beginAccess();
          v101 = sub_10000B6F4(v7[2]);
          swift_beginAccess();
          result = sub_10000B6F4(*(a4 + 16));
          v30 = __OFADD__(v101, result);
          v102 = v101 + result;
          if (v30)
          {
LABEL_169:
            __break(1u);
          }

          else
          {
            swift_beginAccess();
            result = sub_10000B6F4(*(a5 + 16));
            if (!__OFADD__(v102, result))
            {
              if (v102 + result)
              {
                goto LABEL_148;
              }

              sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
              v123 = static OS_os_log.default.getter();
              static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)();

              v10 = 4;
LABEL_149:
              swift_beginAccess();
              *(a6 + 16) = v10;
              goto LABEL_150;
            }
          }

          __break(1u);
          return result;
        }

LABEL_148:
        v10 = 3;
        goto LABEL_149;
      }

      v16 = [v14 pushToken];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v17, v19);
      v21 = [v15 URI];
      v7 = [v21 prefixedURI];

      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v22 = IDSCopyIDForTokenWithID();

      if (!v22)
      {

        v30 = __OFADD__(v137++, 1);
        if (v30)
        {
          goto LABEL_158;
        }

        goto LABEL_2;
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v23;

      v24 = [v15 capabilities];
      v25 = [v24 valueForCapability:v141];

      if (v25 != 1)
      {

        v30 = __OFADD__(v136++, 1);
        if (v30)
        {
          goto LABEL_159;
        }

        goto LABEL_2;
      }

      v26 = sub_1003F8028();
      if (v27)
      {
        v158 = v8;
        v159 = v7;
        v156 = v26;
        v157 = v27;
        sub_10001E364();
        v28 = StringProtocol.contains<A>(_:)();

        if (v28)
        {

          v30 = __OFADD__(v132++, 1);
          if (!v30)
          {
            goto LABEL_2;
          }

LABEL_165:
          __break(1u);
LABEL_166:
          swift_once();
LABEL_154:
          v149 = *(v10 + 896);
          static os_log_type_t.error.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_10057D6A0;
          swift_beginAccess();
          v153 = v7[2];

          sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
          v107 = String.init<A>(reflecting:)();
          v109 = v108;
          *(v106 + 56) = &type metadata for String;
          v110 = sub_100009D88();
          *(v106 + 64) = v110;
          *(v106 + 32) = v107;
          *(v106 + 40) = v109;
          swift_beginAccess();
          v152 = *(a4 + 16);

          v111 = String.init<A>(reflecting:)();
          *(v106 + 96) = &type metadata for String;
          *(v106 + 104) = v110;
          v7 = v127;
          *(v106 + 72) = v111;
          *(v106 + 80) = v112;
          os_log(_:dso:log:type:_:)();

          v8 = v126;
          i = a2;
          goto LABEL_155;
        }
      }

      else
      {
      }

      if ((a3 & 1) == 0)
      {
        v29 = [v15 capabilities];
        v7 = [v29 valueForCapability:v138];

        if (v7 == 1)
        {
          break;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= *((v154 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v151 = v154;
    }

    v30 = __OFADD__(v129++, 1);
    if (!v30)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_34:

  v161 = v137;
  v7 = v151;
  v31 = sub_10000B6F4(v151);
  v32 = 0;
  v146 = v151 & 0xC000000000000001;
  v12 = v151 & 0xFFFFFFFFFFFFFF8;
  v144 = _swiftEmptyArrayStorage;
  while (v31 != v32)
  {
    if (v146)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v32 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_137;
      }

      v33 = *(v151 + 8 * v32 + 32);
    }

    v7 = v33;
    i = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_136;
    }

    v34 = [v33 pushToken];
    v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100049B14(v35, v37);
    v38 = [v7 URI];
    v39 = [v38 prefixedURI];

    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = String._bridgeToObjectiveC()();
    }

    v8 = IDSCopyIDForTokenWithID();

    if (v8)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      isa = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = v144[2];
        sub_100017840();
        v144 = v45;
      }

      v42 = v144[2];
      v7 = (v42 + 1);
      if (v42 >= v144[3] >> 1)
      {
        sub_100017840();
        v144 = v46;
      }

      v144[2] = v7;
      v43 = &v144[2 * v42];
      v43[4] = v40;
      v43[5] = isa;
      v32 = i;
    }

    else
    {

      ++v32;
    }
  }

  v47 = 0;
  v160 = 0;
  i = _swiftEmptyArrayStorage;
  while (v31 != v47)
  {
    if (v146)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v47 >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_139;
      }

      v48 = *(v151 + 8 * v47 + 32);
    }

    v7 = v48;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_138;
    }

    v156 = v48;
    sub_1003FA698(&v156, &v161, &v160, &v158);

    isa = v159;
    if (v159)
    {
      v49 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = *(i + 16);
        sub_100017840();
        i = v52;
      }

      v8 = *(i + 16);
      v7 = (v8 + 1);
      if (v8 >= *(i + 24) >> 1)
      {
        sub_100017840();
        i = v53;
      }

      *(i + 16) = v7;
      v50 = i + 16 * v8;
      *(v50 + 32) = v49;
      *(v50 + 40) = isa;
    }

    ++v47;
  }

  v126 = i;

  swift_beginAccess();
  isa = *(a4 + 16);
  v147 = sub_10000B6F4(isa);

  v12 = 0;
  v135 = 0;
  v131 = 0;
  v137 = 0;
  v151 = _swiftEmptyArrayStorage;
LABEL_65:
  while (2)
  {
    for (i = v12; ; ++i)
    {
      if (v147 == i)
      {
        goto LABEL_94;
      }

      if ((isa & 0xC000000000000001) != 0)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((isa & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_141;
        }

        v54 = *(isa + 8 * i + 32);
      }

      v55 = v54;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_140;
      }

      v56 = [v54 pushToken];
      v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v57, v59);
      v61 = [v55 URI];
      v7 = [v61 prefixedURI];

      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v62 = IDSCopyIDForTokenWithID();

      if (!v62)
      {

        v30 = __OFADD__(v135++, 1);
        if (v30)
        {
          goto LABEL_162;
        }

        goto LABEL_65;
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v63;

      v156 = v8;
      v157 = v7;
      __chkstk_darwin(v64, v65);
      if (sub_100013094())
      {

        v30 = __OFADD__(v137++, 1);
        if (!v30)
        {
          goto LABEL_65;
        }

        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v66 = sub_1003F8028();
      if (v67)
      {
        break;
      }

LABEL_79:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = *(v151 + 16);
        sub_100017840();
        v151 = v72;
      }

      v69 = *(v151 + 16);
      if (v69 >= *(v151 + 24) >> 1)
      {
        sub_100017840();
        v151 = v73;
      }

      *(v151 + 16) = v69 + 1;
      v70 = (v151 + 16 * v69);
      v70[4] = v8;
      v70[5] = v7;
    }

    v156 = v8;
    v157 = v7;
    v154 = v66;
    v155 = v67;
    sub_10001E364();
    v68 = StringProtocol.contains<A>(_:)();

    if ((v68 & 1) == 0)
    {
      goto LABEL_79;
    }

    v30 = __OFADD__(v131++, 1);
    if (!v30)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_94:

  swift_beginAccess();
  v74 = *(a5 + 16);
  v148 = sub_10000B6F4(v74);
  v140 = v74 & 0xFFFFFFFFFFFFFF8;
  v142 = v74 & 0xC000000000000001;
  v143 = v74;

  v12 = 0;
  v128 = 0;
  v138 = 0;
  v134 = 0;
  isa = _swiftEmptyArrayStorage;
LABEL_95:
  while (2)
  {
    for (i = v12; ; ++i)
    {
      if (v148 == i)
      {
        goto LABEL_125;
      }

      if (v142)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v140 + 16))
        {
          goto LABEL_143;
        }

        v75 = *(v143 + 8 * i + 32);
      }

      v76 = v75;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_142;
      }

      v77 = [v75 pushToken];
      v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      v81.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100049B14(v78, v80);
      v82 = [v76 URI];
      v7 = [v82 prefixedURI];

      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = IDSCopyIDForTokenWithID();

      if (!v8)
      {

        v30 = __OFADD__(v134++, 1);
        if (v30)
        {
          goto LABEL_164;
        }

        goto LABEL_95;
      }

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v84;

      v154 = v83;
      v155 = v7;
      __chkstk_darwin(v85, v86);
      v8 = &v154;
      v87 = sub_100013094();
      if (v87)
      {
        break;
      }

      v154 = v83;
      v155 = v7;
      __chkstk_darwin(v87, v88);
      if (sub_100013094())
      {
        break;
      }

      sub_1003F8028();
      if (v89)
      {
        v8 = v89;
        v154 = v83;
        v155 = v7;
        sub_10001E364();
        v90 = StringProtocol.contains<A>(_:)();

        if (v90)
        {

          v30 = __OFADD__(v128++, 1);
          if (!v30)
          {
            goto LABEL_95;
          }

          __break(1u);
LABEL_125:

          i = v144[2];
          v8 = v126;
          v7 = v127;
          if (!i && !*(v151 + 16) && !*(isa + 16))
          {
            v97 = v132 + v131;
            if (__OFADD__(v132, v131))
            {
              __break(1u);
            }

            else
            {
              v30 = __OFADD__(v97, v128);
              v98 = v97 + v128;
              if (!v30)
              {
                if (v98)
                {
                  sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
                  v99 = static OS_os_log.default.getter();
                  static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)();

                  v10 = 1;
                  goto LABEL_149;
                }

                if (v129)
                {
                  sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
                  v100 = static OS_os_log.default.getter();
                  static os_log_type_t.default.getter();
                  v10 = 2;
                  os_log(_:dso:log:type:_:)();

                  goto LABEL_149;
                }

                goto LABEL_144;
              }
            }

            __break(1u);
            goto LABEL_169;
          }

LABEL_150:
          swift_beginAccess();
          v103 = sub_10000B6F4(v7[2]);
          v104 = v137 + v138;
          if (__OFADD__(v137, v138))
          {
            goto LABEL_160;
          }

          v12 = v160;
          v30 = __OFADD__(v104, v160);
          v105 = v104 + v160;
          if (v30)
          {
            goto LABEL_161;
          }

          v10 = &unk_1006BA000;
          if (v103 != v105)
          {
            a2 = i;
            if (qword_1006A0AA0 == -1)
            {
              goto LABEL_154;
            }

            goto LABEL_166;
          }

LABEL_155:
          if (qword_1006A0AA0 != -1)
          {
            goto LABEL_163;
          }

          goto LABEL_156;
        }
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = *(isa + 16);
        sub_100017840();
        isa = v94;
      }

      v91 = *(isa + 16);
      if (v91 >= *(isa + 24) >> 1)
      {
        sub_100017840();
        isa = v95;
      }

      *(isa + 16) = v91 + 1;
      v92 = isa + 16 * v91;
      *(v92 + 32) = v83;
      *(v92 + 40) = v7;
    }

    v30 = __OFADD__(v138++, 1);
    if (!v30)
    {
      continue;
    }

    break;
  }

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
  swift_once();
LABEL_156:
  v113 = *(v10 + 896);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_1005866B0;
  swift_beginAccess();
  v115 = sub_10000B6F4(v7[2]);
  *(v114 + 56) = &type metadata for Int;
  *(v114 + 64) = &protocol witness table for Int;
  *(v114 + 32) = v115;
  swift_beginAccess();
  v116 = sub_10000B6F4(*(a4 + 16));
  *(v114 + 96) = &type metadata for Int;
  *(v114 + 104) = &protocol witness table for Int;
  *(v114 + 72) = v116;
  swift_beginAccess();
  v117 = sub_10000B6F4(*(a5 + 16));
  *(v114 + 136) = &type metadata for Int;
  *(v114 + 144) = &protocol witness table for Int;
  *(v114 + 112) = v117;
  *(v114 + 176) = &type metadata for Int;
  *(v114 + 184) = &protocol witness table for Int;
  *(v114 + 152) = i;
  v118 = *(v151 + 16);
  *(v114 + 216) = &type metadata for Int;
  *(v114 + 224) = &protocol witness table for Int;
  *(v114 + 192) = v118;
  v119 = *(isa + 16);
  *(v114 + 256) = &type metadata for Int;
  *(v114 + 264) = &protocol witness table for Int;
  *(v114 + 232) = v119;
  v120 = *(v8 + 16);
  *(v114 + 296) = &type metadata for Int;
  *(v114 + 304) = &protocol witness table for Int;
  *(v114 + 272) = v120;
  *(v114 + 336) = &type metadata for Int;
  *(v114 + 344) = &protocol witness table for Int;
  *(v114 + 312) = v136;
  *(v114 + 376) = &type metadata for Int;
  *(v114 + 384) = &protocol witness table for Int;
  *(v114 + 352) = v132;
  *(v114 + 416) = &type metadata for Int;
  *(v114 + 424) = &protocol witness table for Int;
  *(v114 + 392) = v129;
  v121 = v161;
  *(v114 + 456) = &type metadata for Int;
  *(v114 + 464) = &protocol witness table for Int;
  *(v114 + 432) = v121;
  *(v114 + 496) = &type metadata for Int;
  *(v114 + 504) = &protocol witness table for Int;
  *(v114 + 472) = v137;
  *(v114 + 536) = &type metadata for Int;
  *(v114 + 544) = &protocol witness table for Int;
  *(v114 + 512) = v131;
  *(v114 + 576) = &type metadata for Int;
  *(v114 + 584) = &protocol witness table for Int;
  *(v114 + 552) = v135;
  *(v114 + 616) = &type metadata for Int;
  *(v114 + 624) = &protocol witness table for Int;
  *(v114 + 592) = v134;
  *(v114 + 656) = &type metadata for Int;
  *(v114 + 664) = &protocol witness table for Int;
  *(v114 + 632) = v138;
  *(v114 + 696) = &type metadata for Int;
  *(v114 + 704) = &protocol witness table for Int;
  *(v114 + 672) = v128;
  *(v114 + 736) = &type metadata for Int;
  *(v114 + 744) = &protocol witness table for Int;
  *(v114 + 712) = v12;
  swift_beginAccess();
  v122 = *(a6 + 16);
  *(v114 + 776) = &type metadata for Int;
  *(v114 + 784) = &protocol witness table for Int;
  *(v114 + 752) = v122;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_100414368(isa);
  swift_beginAccess();
  a7(v151, v144, v8, *(a6 + 16));
}

void sub_1003FA698(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 pushToken];
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(v9, v11);
  v13 = [v7 URI];
  v14 = [v13 prefixedURI];

  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = IDSCopyIDForTokenWithID();

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = [v7 capabilities];
    v20 = [v19 valueForCapability:IDSRegistrationPropertySupportsSSRC];

    if (v20 == 1)
    {
      *a4 = v16;
      a4[1] = v18;
      return;
    }

    if (!__OFADD__(*a3, 1))
    {
      ++*a3;
      goto LABEL_10;
    }
  }

  else
  {
    if (!__OFADD__(*a2, 1))
    {
      ++*a2;
LABEL_10:
      *a4 = 0;
      a4[1] = 0;
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1003FA8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = Array._bridgeToObjectiveC()().super.isa;
  v9 = Array._bridgeToObjectiveC()().super.isa;
  (*(a5 + 16))(a5, isa, v8, v9, a4);
}

void sub_1003FA9C8(uint64_t a1, void **a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_25;
  }

LABEL_2:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057E830;
  v13 = sub_100291118(a1);
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  v16 = sub_100009D88();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *&__src[0] = a2;
  *(&__src[0] + 1) = a3;

  v17 = String.init<A>(reflecting:)();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v16;
  *(v12 + 72) = v17;
  *(v12 + 80) = v18;
  v50 = a4;
  v19 = sub_100291614(a4);
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v16;
  *(v12 + 112) = v19;
  *(v12 + 120) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (!a1)
  {
    goto LABEL_23;
  }

  v46 = a5;
  v22 = sub_1003FBBCC(a1, v21);
  a1 = v22;
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  a4 = v25 & *(v22 + 64);
  v26 = (v24 + 63) >> 6;

  v27 = 0;
  for (i = _swiftEmptyArrayStorage; a4; a4 &= a4 - 1)
  {
LABEL_10:
    a5 = __clz(__rbit64(a4)) | (v27 << 6);
    sub_100006724(*(a1 + 48) + 40 * a5, __src);
    sub_100006A94(*(a1 + 56) + 32 * a5, &__src[2] + 8);
    memcpy(__dst, __src, 0x48uLL);
    v54 = __src[0];
    v55 = __src[1];
    v56 = *&__src[2];
    sub_100009B7C(&__dst[2] + 1);
    if (*(&v55 + 1))
    {
      __dst[0] = v54;
      __dst[1] = v55;
      *&__dst[2] = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004707C0(0, i[2] + 1, 1, i);
        i = v34;
      }

      a5 = i[2];
      v30 = i[3];
      if (a5 >= v30 >> 1)
      {
        sub_1004707C0(v30 > 1, a5 + 1, 1, i);
        i = v35;
      }

      i[2] = a5 + 1;
      v31 = &i[5 * a5];
      v32 = __dst[0];
      v33 = __dst[1];
      v31[8] = *&__dst[2];
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
    }

    else
    {
      sub_1000099A4(&v54, &unk_1006AA8C0, qword_1005866F8);
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_2;
    }

    if (v29 >= v26)
    {
      break;
    }

    a4 = *(v23 + 8 * v29);
    ++v27;
    if (a4)
    {
      v27 = v29;
      goto LABEL_10;
    }
  }

  v36 = sub_100422C0C(i);

  a5 = v46;
  if (v36)
  {
    if (*(v36 + 16))
    {
      sub_1003FAE80(v36, a2, a3, v50, a6, a7);

      return;
    }
  }

LABEL_23:
  v37 = *(a5 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController);
  swift_unknownObjectRetain();
  sub_1002F3C28(a8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = String._bridgeToObjectiveC()();
  v40 = TUBundleIdentifierCallServicesDaemon;
  v48 = *(a5 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue);
  v41 = swift_allocObject();
  v41[2] = a2;
  v41[3] = a3;
  v41[4] = v50;
  v41[5] = a6;
  v41[6] = a7;
  v41[7] = a5;
  *&__src[2] = sub_1003FC4E0;
  *(&__src[2] + 1) = v41;
  *&__src[0] = _NSConcreteStackBlock;
  *(&__src[0] + 1) = 1107296256;
  *&__src[1] = sub_100005438;
  *(&__src[1] + 1) = &unk_10062EB30;
  v42 = _Block_copy(__src);
  v43 = v50;

  v44 = a5;

  v45 = v40;

  [v37 requiredIDStatusForDestinations:isa service:v39 preferredFromID:v43 listenerID:v45 queue:v48 completionBlock:v42];
  _Block_release(v42);
  swift_unknownObjectRelease();
}

void sub_1003FAE80(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D6A0;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v11 = String.init<A>(reflecting:)();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100009D88();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  aBlock = a2;
  v30 = a3;

  v15 = String.init<A>(reflecting:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = *(v6 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController);
  swift_unknownObjectRetain();
  sub_1002F3C28(a1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = String._bridgeToObjectiveC()();
  v20 = TUBundleIdentifierCallServicesDaemon;
  v25 = *(v6 + OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue);
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v33 = sub_1003FC4F8;
  v34 = v21;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100005438;
  v32 = &unk_10062EB80;
  v22 = _Block_copy(&aBlock);
  v23 = a4;

  v24 = v20;

  [v17 currentRemoteDevicesForDestinations:isa service:v19 preferredFromID:v23 listenerID:v24 queue:v25 completionBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
}

uint64_t sub_1003FB150(uint64_t a1, void **a2, uint64_t a3, _OWORD *i, unint64_t a5, uint64_t a6)
{
  if (qword_1006A0AA0 != -1)
  {
    goto LABEL_28;
  }

LABEL_2:
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057E830;
  v12 = sub_100291118(a1);
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  v45 = a1;
  v15 = sub_100009D88();
  *(v11 + 64) = v15;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  *&__src[0] = a2;
  *(&__src[0] + 1) = a3;

  v16 = String.init<A>(reflecting:)();
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v15;
  *(v11 + 72) = v16;
  *(v11 + 80) = v17;
  v18 = sub_100291614(i);
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v15;
  *(v11 + 112) = v18;
  *(v11 + 120) = v19;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (!v45)
  {
    goto LABEL_24;
  }

  v41 = a2;
  v42 = a3;
  v43 = i;
  v44 = a5;
  v21 = sub_1003FBBCC(v45, v20);
  v22 = v21;
  a1 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;

  a2 = 0;
  v27 = _swiftEmptyArrayStorage;
  a3 = 40;
  for (i = __src; v25; v25 &= v25 - 1)
  {
LABEL_10:
    v29 = __clz(__rbit64(v25)) | (a2 << 6);
    sub_100006724(*(v22 + 48) + 40 * v29, __src);
    sub_100006A94(*(v22 + 56) + 32 * v29, &__src[2] + 8);
    memcpy(__dst, __src, 0x48uLL);
    v48 = __src[0];
    v49 = __src[1];
    v50 = *&__src[2];
    sub_100009B7C(&__dst[2] + 1);
    if (*(&v49 + 1))
    {
      __dst[0] = v48;
      __dst[1] = v49;
      *&__dst[2] = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004707C0(0, v27[2] + 1, 1, v27);
        v27 = v34;
      }

      a5 = v27[2];
      v30 = v27[3];
      if (a5 >= v30 >> 1)
      {
        sub_1004707C0(v30 > 1, a5 + 1, 1, v27);
        v27 = v35;
      }

      v27[2] = a5 + 1;
      v31 = &v27[5 * a5];
      v32 = __dst[0];
      v33 = __dst[1];
      v31[8] = *&__dst[2];
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
    }

    else
    {
      sub_1000099A4(&v48, &unk_1006AA8C0, qword_1005866F8);
    }
  }

  while (1)
  {
    v28 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_2;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(a1 + 8 * v28);
    a2 = (a2 + 1);
    if (v25)
    {
      a2 = v28;
      goto LABEL_10;
    }
  }

  v36 = sub_100422C0C(v27);

  a5 = v44;
  if (v36)
  {
    if (*(v36 + 16))
    {
      sub_1003FAE80(v36, v41, v42, v43, v44, a6);
    }
  }

  v39 = *(sub_1003FBD30(v45, v37) + 16);

  if (v39)
  {
LABEL_24:
    v40 = 5;
  }

  else
  {
    v40 = 0;
  }

  return (a5)(_swiftEmptyArrayStorage, v40);
}

uint64_t sub_1003FB4F4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5, void (*a6)(unint64_t, void))
{
  if (qword_1006A0AA0 != -1)
  {
LABEL_70:
    swift_once();
  }

  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057CA70;
  v11 = sub_100291118(a1);
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  v14 = sub_100009D88();
  *(v10 + 64) = v14;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v67[0] = a2;

  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  v15 = String.init<A>(reflecting:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v14;
  *(v10 + 72) = v15;
  *(v10 + 80) = v16;
  v67[0] = a3;
  v67[1] = a4;

  v17 = String.init<A>(reflecting:)();
  *(v10 + 136) = &type metadata for String;
  *(v10 + 144) = v14;
  *(v10 + 112) = v17;
  *(v10 + 120) = v18;
  v19 = sub_100291614(a5);
  *(v10 + 176) = &type metadata for String;
  *(v10 + 184) = v14;
  *(v10 + 152) = v19;
  *(v10 + 160) = v20;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v21 = 0;
  v22 = a2[2];
  v23 = a2 + 5;
  v59 = _swiftEmptyArrayStorage;
  a2 = &unk_1006A2D10;
  a4 = &protocol witness table for String;
  a5 = v23;
LABEL_3:
  v24 = &v23[2 * v21];
  while (v22 != v21)
  {
    if (v21 >= v22)
    {
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
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    a3 = (v21 + 1);
    if (__OFADD__(v21, 1))
    {
      goto LABEL_62;
    }

    if (!a1)
    {
      goto LABEL_15;
    }

    v65 = *(v24 - 1);
    v66 = *v24;
    swift_bridgeObjectRetain_n();
    AnyHashable.init<A>(_:)();
    if (!*(a1 + 16) || (v25 = sub_1000067D4(), (v26 & 1) == 0))
    {

      sub_100006780(v67);
LABEL_15:
      v68 = 0u;
      v69 = 0u;
LABEL_16:
      sub_1000099A4(&v68, &unk_1006A2D10, &unk_10057D940);
      goto LABEL_17;
    }

    sub_100006A94(*(a1 + 56) + 32 * v25, &v68);

    sub_100006780(v67);
    if (!*(&v69 + 1))
    {
      goto LABEL_16;
    }

    sub_10026D814(&unk_1006AA8A0, &unk_1005866E8);
    if (swift_dynamicCast())
    {
      v27 = v70;
      if (v70)
      {
        v28 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31 = v59[2];
          sub_1004708EC();
          v28 = v32;
        }

        v30 = v28[2];
        v59 = v28;
        if (v30 >= v28[3] >> 1)
        {
          sub_1004708EC();
          v59 = v33;
        }

        v59[2] = v30 + 1;
        v59[v30 + 4] = v27;
        v21 = a3;
        v23 = a5;
        goto LABEL_3;
      }
    }

LABEL_17:
    v21 = (v21 + 1);
    v24 += 2;
  }

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  a4 = v59;
  v61 = v59 + 4;
  v62 = v59[2];
  a2 = &unk_1005866E8;
  while (v34 != v62)
  {
    if (v34 >= a4[2])
    {
      goto LABEL_63;
    }

    a3 = a2;
    v36 = v61[v34];
    a2 = (v36 >> 62);
    if (v36 >> 62)
    {
      if (v36 < 0)
      {
        v56 = v61[v34];
      }

      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = v35 >> 62;
    if (v35 >> 62)
    {
      v39 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v39 + v37;
    if (__OFADD__(v39, v37))
    {
      goto LABEL_64;
    }

    a5 = v37;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v38)
      {
LABEL_38:
        _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v40 = v35 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
        v41 = *(v40 + 16);
      }

      v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v40 = v35 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_40;
    }

    if (v38)
    {
      goto LABEL_38;
    }

    v40 = v35 & 0xFFFFFFFFFFFFFF8;
    if (a1 > *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

LABEL_40:
    ++v34;
    v42 = *(v40 + 16);
    v43 = (*(v40 + 24) >> 1) - v42;
    v44 = v40 + 8 * v42;
    v63 = v40;
    if (a2)
    {
      v46 = _CocoaArrayWrapper.endIndex.getter();
      if (!v46)
      {
        goto LABEL_54;
      }

      a1 = v46;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (v43 < v47)
      {
        goto LABEL_68;
      }

      if (a1 < 1)
      {
        goto LABEL_69;
      }

      v45 = v47;
      v60 = v34;
      v48 = v44 + 32;
      a2 = a3;
      sub_10001000C(qword_1006AA8D8, &unk_1006AA8A0, a3);
      v49 = 0;
      do
      {
        sub_10026D814(&unk_1006AA8A0, a2);
        v50 = sub_100024CFC(v67, v49, v36);
        v52 = *v51;
        v50(v67, 0);
        *(v48 + 8 * v49) = v52;
        a2 = a3;
        ++v49;
      }

      while (a1 != v49);
      a4 = v59;
      v34 = v60;
LABEL_50:

      if (v45 < a5)
      {
        goto LABEL_65;
      }

      if (v45 > 0)
      {
        v53 = *(v63 + 16);
        v54 = __OFADD__(v53, v45);
        v55 = v53 + v45;
        if (v54)
        {
          goto LABEL_66;
        }

        *(v63 + 16) = v55;
      }
    }

    else
    {
      a2 = (v36 & 0xFFFFFFFFFFFFFF8);
      v45 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
        if (v43 < v45)
        {
          goto LABEL_67;
        }

        sub_100006AF0(0, &qword_1006AA8D0, IDSEndpoint_ptr);
        swift_arrayInitWithCopy();
        a2 = a3;
        goto LABEL_50;
      }

LABEL_54:

      a2 = a3;
      if (a5 > 0)
      {
        goto LABEL_65;
      }
    }
  }

  a6(v35, 0);
}

uint64_t sub_1003FBBCC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v3 = sub_1003FC2D4(v9, v5, v3);

      return v3;
    }
  }

  __chkstk_darwin(a1, a2);
  v6 = &v10 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v5, v6);
  sub_1003FC078(v6, v5, v3);
  if (!v2)
  {
    return v7;
  }

  swift_willThrow();
  return v3;
}

uint64_t sub_1003FBD30(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v3 = sub_1003FC25C(v9, v5, v3);

      return v3;
    }
  }

  __chkstk_darwin(a1, a2);
  v6 = &v10 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v5, v6);
  sub_1003FBE94(v6, v5, v3);
  if (!v2)
  {
    return v7;
  }

  swift_willThrow();
  return v3;
}

void sub_1003FBE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
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
    sub_100006724(*(a3 + 48) + 40 * v13, v22);
    sub_100006A94(*(a3 + 56) + 32 * v13, v21);
    sub_100006724(v22, __src);
    sub_100006A94(v21, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    if (swift_dynamicCast())
    {
      v14 = v23;
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
      if (v14 == 2)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
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
      sub_1003850B4(a1, a2, v18, a3);
      return;
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
LABEL_19:
  __break(1u);
}

void sub_1003FC078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
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
    sub_100006724(*(a3 + 48) + 40 * v13, v22);
    sub_100006A94(*(a3 + 56) + 32 * v13, v21);
    sub_100006724(v22, __src);
    sub_100006A94(v21, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    if (swift_dynamicCast())
    {
      v14 = v23;
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
      if (v14 == 1)
      {
        *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_100006780(__dst);
      sub_100009B7C(v21);
      sub_100006780(v22);
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
      sub_1003850B4(a1, a2, v18, a3);
      return;
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
LABEL_19:
  __break(1u);
}

void *sub_1003FC25C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003FBE94(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1003FC2D4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1003FC078(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1003FC3B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1003FC43C()
{
  result = qword_1006AA890;
  if (!qword_1006AA890)
  {
    sub_100006AF0(255, &qword_1006A2BA0, IDSURI_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AA890);
  }

  return result;
}

uint64_t sub_1003FC4A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1003FC4B8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id sub_1003FC528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FaceTimeInviteDemuxer();
  v9 = objc_allocWithZone(v8);
  v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___supportsConversationOneToOneModeEnabled] = 2;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer____lazy_storage___pushTokenForSelf] = xmmword_10057F880;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_queue] = a1;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_idsQueryController] = a2;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_featureFlags] = a3;
  *&v9[OBJC_IVAR___CSDFaceTimeInviteDemuxer_serverBag] = a4;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1003FC614(uint64_t a1)
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

uint64_t sub_1003FC6C0()
{
  v71 = *v0;
  v1 = v71;
  v2 = *(v71 + 80);
  v3 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1000083C0();
  v73 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7, v8);
  v75 = v69 - v9;
  sub_1000083C0();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14, v15);
  sub_100007BAC();
  v70 = v16 - v17;
  __chkstk_darwin(v18, v19);
  v74 = v69 - v20;
  sub_1000083C0();
  v22 = v21;
  v78 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v25, v26);
  sub_100007BAC();
  v72 = (v27 - v28);
  v31 = __chkstk_darwin(v29, v30);
  v76 = v69 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v36 = v69 - v35;
  __chkstk_darwin(v34, v37);
  v79 = v69 - v38;
  v39 = *(v0 + *(v1 + 128));
  v40 = v0[2];
  v41 = v0[3];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v39 objectForKey:v42];

  if (v43)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10003EBF0(&v80, v81);
  }

  else
  {
    memset(v81, 0, 32);
  }

  sub_10026D814(&unk_1006A2D10, &unk_10057D940);
  v44 = v79;
  v45 = swift_dynamicCast();
  sub_10000AF74(v44, v45 ^ 1u, 1, v2);
  v46 = v78;
  v47 = *(v78 + 16);
  v47(v36, v44, v3);
  sub_10000A7C0(v36);
  if (v55)
  {
    v48 = *(v46 + 8);
    v48(v36, v3);
LABEL_16:
    v57 = 1;
    goto LABEL_17;
  }

  v49 = v74;
  v69[0] = *(v11 + 32);
  v69[1] = v22;
  (v69[0])(v74, v36, v2);
  v50 = *(*v0 + 120);
  v51 = v76;
  (*(v11 + 16))(v76, v49, v2);
  sub_10000AF74(v51, 0, 1, v2);
  v52 = v0 + v50;
  v53 = *(TupleTypeMetadata2 + 48);
  v54 = v75;
  v47(v75, v52, v3);
  v47((v54 + v53), v51, v3);
  sub_10000A7C0(v54);
  if (!v55)
  {
    v58 = v11;
    v59 = v72;
    v47(v72, v54, v3);
    sub_10000A7C0(v54 + v53);
    if (!v60)
    {
      v63 = v70;
      (v69[0])(v70, v54 + v53, v2);
      v64 = *(v71 + 104);
      v65 = v59;
      v66 = v54;
      v67 = dispatch thunk of static Equatable.== infix(_:_:)();
      v68 = *(v58 + 8);
      v68(v63, v2);
      v48 = *(v78 + 8);
      v48(v76, v3);
      v68(v49, v2);
      v68(v65, v2);
      v48(v66, v3);
      v57 = v67 ^ 1;
      goto LABEL_17;
    }

    v48 = *(v78 + 8);
    v48(v76, v3);
    v61 = *(v58 + 8);
    v61(v49, v2);
    v61(v59, v2);
    v54 = v75;
    v56 = v73;
    goto LABEL_15;
  }

  v48 = *(v78 + 8);
  v48(v51, v3);
  (*(v11 + 8))(v49, v2);
  sub_10000A7C0(v54 + v53);
  v56 = v73;
  if (!v55)
  {
LABEL_15:
    (*(v56 + 8))(v54, TupleTypeMetadata2);
    goto LABEL_16;
  }

  v48(v54, v3);
  v57 = 0;
LABEL_17:
  v48(v79, v3);
  return v57 & 1;
}

void sub_1003FCCD0()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  type metadata accessor for Optional();
  sub_1000083C0();
  v4 = *(v3 + 64);
  __chkstk_darwin(v5, v6);
  v8 = &v15 - v7;
  v9 = *&v0[*(v1 + 128)];
  (*(v10 + 16))(&v15 - v7, &v0[*(v1 + 120)]);
  v11 = 0;
  if (sub_100015468(v8, 1, v2) != 1)
  {
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(*(v2 - 8) + 8))(v8, v2);
  }

  v12 = *(v0 + 2);
  v13 = *(v0 + 3);
  v14 = String._bridgeToObjectiveC()();
  [v9 setObject:v11 forKey:v14];
  swift_unknownObjectRelease();
}

uint64_t sub_1003FCE58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

char *sub_1003FCE88()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(*v0 + 120);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for Optional();
  sub_1000080D0(v5);
  (*(v6 + 8))(&v0[v3]);

  return v0;
}

uint64_t sub_1003FCF2C()
{
  sub_1003FCE88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1003FCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v72 = a1;
  v8 = type metadata accessor for SHA256();
  sub_1000083C0();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13, v14);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SHA256Digest();
  sub_1000083C0();
  v73 = v18;
  v74 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007BAC();
  v24 = v22 - v23;
  __chkstk_darwin(v25, v26);
  v28 = &v65 - v27;
  v29 = Data.init(contentsOf:options:)();
  v68 = a2;
  v69 = a4;
  v70 = a3;
  v71 = v4;
  v37 = v29;
  v39 = v38;
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100290AC4(v37, v39);
  sub_1003FD638(v37, v39);
  v66 = v39;
  v67 = v37;
  sub_100049B14(v37, v39);
  dispatch thunk of HashFunction.finalize()();
  (*(v10 + 8))(v16, v8);
  v41 = v73;
  v40 = v74;
  (*(v73 + 16))(v24, v28, v74);
  sub_1003FD6D4(&unk_1006AAA60, &type metadata accessor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  v43 = v79;
  v42 = v80;
  v78 = v79[2];
  v44 = v40;
  v45 = v41;
  v46 = _swiftEmptyArrayStorage;
  if (v80 == v78)
  {
LABEL_6:
    (*(v45 + 8))(v28);

    v79 = v46;
    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    sub_100296FEC();
    v47 = BidirectionalCollection<>.joined(separator:)();
    v49 = v48;
    sub_100049B14(v67, v66);
    v50 = type metadata accessor for URL();
    sub_1000080D0(v50);
    (*(v51 + 8))(v70);

    return sub_1002E86B8(v72, v68, v47, v49, v69);
  }

  else
  {
    v76 = v79 + 4;
    v75 = xmmword_10057D690;
    v52 = v80;
    v53 = v28;
    v77 = v80;
    while ((v42 & 0x8000000000000000) == 0)
    {
      if (v52 >= v43[2])
      {
        goto LABEL_17;
      }

      v54 = v43;
      v55 = v44;
      v56 = *(v76 + v52);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v57 = swift_allocObject();
      *(v57 + 16) = v75;
      *(v57 + 56) = &type metadata for UInt8;
      *(v57 + 64) = &protocol witness table for UInt8;
      *(v57 + 32) = v56;
      v58 = String.init(format:_:)();
      v60 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = v46[2];
        sub_100017840();
        v46 = v63;
      }

      v24 = v46[2];
      v37 = (v24 + 1);
      if (v24 >= v46[3] >> 1)
      {
        sub_100017840();
        v46 = v64;
      }

      ++v52;
      v46[2] = v37;
      v61 = &v46[2 * v24];
      v61[4] = v58;
      v61[5] = v60;
      v42 = v77;
      v44 = v55;
      v28 = v53;
      v43 = v54;
      if (v78 == v52)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    swift_once();
    v30 = type metadata accessor for Logger();
    sub_10000AF9C(v30, qword_1006BA5F8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "couldn't read contents of toneURL", v33, 2u);
    }

    v34 = type metadata accessor for URL();
    sub_1000080D0(v34);
    (*(v35 + 8))(v24);
    type metadata accessor for FileChecksum();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1003FD584()
{
  v0 = sub_1003FCE58();

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t type metadata accessor for FileChecksum()
{
  result = qword_1006AA988;
  if (!qword_1006AA988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003FD638(uint64_t result, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_9;
      }

      result = result;
      v4 = v5;
      goto LABEL_7;
    case 2uLL:
      v3 = *(result + 24);
      result = *(result + 16);
      v4 = v3;
LABEL_7:
      result = sub_1003FD7F0(result, v4);
      if (v2)
      {
        goto LABEL_8;
      }

      return result;
    default:
      result = sub_1003FD71C();
      if (!v2)
      {
        return result;
      }

LABEL_8:

      __break(1u);
LABEL_9:
      __break(1u);
      return result;
  }
}

uint64_t sub_1003FD6D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003FD71C()
{
  type metadata accessor for SHA256();
  sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1003FD7F0(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1003FD6D4(&qword_1006A3848, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1003FD8D0()
{
  ObjectType = swift_getObjectType();
  sub_100010554(OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor);
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer] = 0;
  v2 = OBJC_IVAR____TtC13callservicesd18DisclosureProvider_microphoneInjectionUtilities;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for MicrophoneInjectionUtilities()) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1003FDA20(uint64_t a1)
{
  swift_getObjectType();
  v3 = a1 & 0x10000000000;
  v4 = &v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor];
  v5 = *&v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor] | ((*&v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 4] | (v1[OBJC_IVAR____TtC13callservicesd18DisclosureProvider_activeDescriptor + 6] << 16)) << 32);
  if ((v5 & 0xFF000000000000) != 0x3000000000000)
  {
    LOBYTE(v47) = v3 != 0;
    if (sub_10029CDE8(a1 & 0xFF00FFFFFFFFFFLL | ((v3 != 0) << 40), v5 & 0xFF000000000000 | (((v5 >> 40) & 1) << 40) | v5 & 0xFFFFFFFFFFLL))
    {
      if (qword_1006A0B30 != -1)
      {
        sub_100008720();
      }

      v6 = type metadata accessor for Logger();
      sub_10000AF9C(v6, qword_1006BA610);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v8 = 136315394;
        v9 = String.init<A>(reflecting:)();
        v11 = sub_10002741C(v9, v10, &v47);

        *(v8 + 4) = v11;
        *(v8 + 12) = 2080;
        v12 = String.init<A>(reflecting:)();
        v14 = sub_10002741C(v12, v13, &v47);

        *(v8 + 14) = v14;
        _os_log_impl(&_mh_execute_header, oslog, v7, "Asked to begin or update playback of disclosure, but new descriptor %s is equal to activeDescriptor%s so doing nothing", v8, 0x16u);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      else
      {
      }

      return;
    }
  }

  v4[6] = BYTE6(a1);
  *v4 = a1;
  *(v4 + 2) = (a1 & 0x1FFFFFFFFFFuLL) >> 32;
  if (!BYTE6(a1))
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v25 = type metadata accessor for Logger();
    sub_10000AF9C(v25, qword_1006BA610);
    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v27, v28))
    {
      swift_slowAlloc();
      v47 = sub_10000681C();
      *v4 = 136315138;
      v29 = v26;
      v30 = String.init<A>(reflecting:)();
      v32 = sub_10002741C(v30, v31, &v47);

      *(v4 + 4) = v32;
      sub_100005FCC(&_mh_execute_header, v33, v34, "Asked to begin playing call recording start disclosure %s");
      sub_10000AA88();
      sub_100005F40();
    }

    v35 = &OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer;
    goto LABEL_24;
  }

  if (BYTE6(a1) != 1)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v36 = type metadata accessor for Logger();
    sub_10000AF9C(v36, qword_1006BA610);
    v37 = v1;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v38, v39))
    {
      swift_slowAlloc();
      v47 = sub_10000681C();
      *v4 = 136315138;
      v40 = v37;
      v41 = String.init<A>(reflecting:)();
      v43 = sub_10002741C(v41, v42, &v47);

      *(v4 + 4) = v43;
      sub_100005FCC(&_mh_execute_header, v44, v45, "Asked to begin playing call recording recurring disclosure %s");
      sub_10000AA88();
      sub_100005F40();
    }

    v35 = &OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer;
LABEL_24:
    sub_1003FDFFC(v35);
    return;
  }

  if (qword_1006A0B30 != -1)
  {
    sub_100008720();
  }

  v15 = type metadata accessor for Logger();
  sub_10000AF9C(v15, qword_1006BA610);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    swift_slowAlloc();
    v47 = sub_10000681C();
    *v4 = 136315138;
    v19 = v16;
    v20 = String.init<A>(reflecting:)();
    v22 = sub_10002741C(v20, v21, &v47);

    *(v4 + 4) = v22;
    sub_100005FCC(&_mh_execute_header, v23, v24, "Asked to begin playing call recording end disclosure %s");
    sub_10000AA88();
    sub_100005F40();
  }

  sub_1003FDF54();
}

void sub_1003FDF54()
{
  sub_1003FE054();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 stop];
      [v2 setCurrentTime:0.0];
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  v4 = v3;
  sub_1003FE2B0(v3);
}

void sub_1003FDFFC(void *a1)
{
  sub_1003FE054();
  v3 = *(v1 + *a1);
  v4 = v3;
  sub_1003FE2B0(v3);
}

void sub_1003FE054()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA610);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Creating recording disclosure audio players", v11, 2u);
  }

  type metadata accessor for DisclosureDataSource();
  sub_1002E82CC();
  v12 = sub_10044C474(v7, v1, 1.0);
  v13 = *(v3 + 8);
  v13(v7, v2);
  v14 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_startDisclosureAudioPlayer) = v12;

  sub_1002E7C7C();
  v15 = sub_10044C474(v7, v1, 1.0);
  v13(v7, v2);
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_stopDisclosureAudioPlayer) = v15;

  URL.init(fileURLWithPath:)();
  v17 = sub_10044C474(v7, v1, 1.0);
  v13(v7, v2);
  v18 = *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer);
  *(v1 + OBJC_IVAR____TtC13callservicesd18DisclosureProvider_recurringDisclosureAudioPlayer) = v17;
}