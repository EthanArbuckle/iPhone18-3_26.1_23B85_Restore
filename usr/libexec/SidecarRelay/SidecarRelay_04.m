unint64_t sub_100058098()
{
  result = qword_10009B798;
  if (!qword_10009B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B798);
  }

  return result;
}

uint64_t sub_1000580EC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000FD4C(&qword_10009B728, &qword_100077618);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100058164()
{
  result = qword_10009B7B8;
  if (!qword_10009B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7B8);
  }

  return result;
}

_BYTE *sub_1000581B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100058284);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000582C0()
{
  result = qword_10009B7C0;
  if (!qword_10009B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7C0);
  }

  return result;
}

unint64_t sub_100058318()
{
  result = qword_10009B7C8;
  if (!qword_10009B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7C8);
  }

  return result;
}

unint64_t sub_100058370()
{
  result = qword_10009B7D0;
  if (!qword_10009B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B7D0);
  }

  return result;
}

uint64_t sub_10005840C()
{

  return Date.init()();
}

uint64_t sub_100058434()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

id sub_100058458()
{

  v1 = sub_1000587A4(v0);
  if (v1 && RapportRemoteDisplayDevice.cameraCapabilities.getter())
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 setCameraCapabilities:isa];
  }

  return v1;
}

uint64_t sub_1000584F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v23[-v6 - 8];
  v8 = a1[3];
  v9 = a1[4];
  sub_10000FCB4(a1, v8);
  (*(v9 + 72))(v8, v9);
  UUID.init(uuidString:)();

  v10 = type metadata accessor for UUID();
  if (sub_1000113A4(v7, 1, v10) == 1)
  {
    sub_10004B2B0(v7);
    if (qword_100098BB0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003420(v11, qword_1000A1AE8);
    sub_100013694(a1, v25);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446210;
      sub_100013694(v25, v23);
      sub_10000FC6C(&qword_10009B7E0, &unk_100077930);
      v16 = String.init<A>(describing:)();
      v18 = v17;
      sub_100003458(v25);
      v19 = sub_100014C58(v16, v18, &v24);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "No Persistent ID for Rapport Device '%{public}s'", v14, 0xCu);
      sub_100003458(v15);
    }

    else
    {

      sub_100003458(v25);
    }

    v20 = 1;
  }

  else
  {
    (*(*(v10 - 8) + 32))(a2, v7, v10);
    v20 = 0;
  }

  return sub_10001137C(a2, v20, 1, v10);
}

id sub_1000587A4(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for RapportRemoteDisplayDevice();
  v27[4] = &protocol witness table for RapportRemoteDisplayDevice;
  v27[0] = a1;
  sub_1000584F4(v27, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    sub_10004B2B0(v5);
    v11 = 0;
  }

  else
  {
    v26 = v7;
    (*(v7 + 32))(v10, v5, v6);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    off_10009BDB0();
    v12 = String._bridgeToObjectiveC()();

    off_10009BDB8();
    v13 = String._bridgeToObjectiveC()();

    off_10009BDE0();
    v14 = RPVersionToSourceVersionString();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v17 = String._bridgeToObjectiveC()();

    v18 = v16;
    v19 = isa;
    v20 = [v18 initWithIdentifier:isa model:v12 name:v13 version:v17];

    v21 = off_10009BDD8;
    v11 = v20;
    [v11 setStatus:v21()];
    [v11 setCameraState:off_10009BD88()];
    off_10009BDA8();
    v22 = String._bridgeToObjectiveC()();

    [v11 setMediaRouteIdentifier:v22];

    (*(v26 + 8))(v10, v6);
  }

  sub_100003458(v27);
  return v11;
}

id sub_100058B30(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CompanionLinkDevice();
  v34[3] = v11;
  v34[4] = &protocol witness table for CompanionLinkDevice;
  v12 = sub_10001E710(v34);
  sub_10001B314(a1, v12);
  sub_1000584F4(v34, v5);
  if (sub_1000113A4(v5, 1, v6) == 1)
  {
    sub_10004B2B0(v5);
    v13 = 0;
  }

  else
  {
    v33 = v7;
    (*(v7 + 32))(v10, v5, v6);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v14 = sub_100058EA0();
    v15(v14);
    v31 = String._bridgeToObjectiveC()();

    v16 = sub_100058EA0();
    v17(v16);
    v18 = String._bridgeToObjectiveC()();

    v19 = sub_100058EA0();
    v20(v19);
    v21 = RPVersionToSourceVersionString();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = String._bridgeToObjectiveC()();

    v25 = v23;
    v27 = v31;
    v26 = isa;
    v28 = [v25 initWithIdentifier:isa model:v31 name:v18 version:v24];

    v13 = v28;
    [v13 setStatus:CompanionLinkDevice.statusFlags.getter()];
    [v13 setCameraState:{off_10009B898(v11, &protocol witness table for CompanionLinkDevice)}];
    off_10009B8B8(v11, &protocol witness table for CompanionLinkDevice);
    v29 = String._bridgeToObjectiveC()();

    [v13 setMediaRouteIdentifier:v29];

    (*(v33 + 8))(v10, v6);
  }

  sub_100003458(v34);
  return v13;
}

uint64_t CompanionLinkDevice.id.getter()
{
  v0 = type metadata accessor for UUID();
  sub_100011D00(v0);
  v2 = *(v1 + 16);
  v3 = sub_100049A98();

  return v4(v3);
}

id CompanionLinkDevice._endpoint.getter()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  v1 = sub_10005C0B0(v0);

  return v1;
}

uint64_t type metadata accessor for CompanionLinkDevice()
{
  result = qword_10009B9B8;
  if (!qword_10009B9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CompanionLinkDevice.statusFlags.getter()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  v1 = sub_10005C0B0(v0);

  return [v1 statusFlags];
}

uint64_t CompanionLinkDevice.init(id:)@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  v3 = UUID.uuidString.getter();
  sub_10005B6CC(v3, v4, v2);

  *(a1 + *(type metadata accessor for CompanionLinkDevice() + 20)) = v2;
  v5 = type metadata accessor for UUID();
  sub_100011D00(v5);
  v7 = *(v6 + 32);
  v8 = sub_100049A98();

  return v9(v8);
}

uint64_t sub_10005906C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for UUID();
  v9 = sub_100011C54(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100011CD4();
  v16 = (v15 - v14);
  v17 = type metadata accessor for CompanionLinkDevice();
  v18 = sub_100011D00(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_100011CD4();
  v23 = v22 - v21;
  v24 = a1;
  sub_10005B804(v24, &selRef_idsDeviceIdentifier);
  if (v25)
  {
    UUID.init(uuidString:)();

    if (sub_1000113A4(v7, 1, v8) != 1)
    {
      v27 = *(v11 + 32);
      v27(v16, v7, v8);
      *(v23 + *(v17 + 20)) = v24;
      v27(v23, v16, v8);
      sub_10001B314(v23, a2);
      v26 = 0;
      return sub_10001137C(a2, v26, 1, v17);
    }

    sub_100011668(v7, &qword_1000991D8, &qword_100075780);
  }

  else
  {
  }

  v26 = 1;
  return sub_10001137C(a2, v26, 1, v17);
}

uint64_t sub_100059274()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  if ([sub_10005C0B0(v0) accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  return sub_100049A98();
}

uint64_t sub_1000592D8()
{
  if ([*(v0 + 16) accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  return sub_100049A98();
}

uint64_t sub_10005938C()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  v1 = [sub_10005C0B0(v0) activityLevelTimeStamp];
  if (v1)
  {
    v2 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for Date();
  v3 = sub_10005C19C();

  return sub_10001137C(v3, v4, v5, v6);
}

uint64_t sub_100059408()
{
  v1 = [*(v0 + 16) activityLevelTimeStamp];
  if (v1)
  {
    v2 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for Date();
  v3 = sub_10005C19C();

  return sub_10001137C(v3, v4, v5, v6);
}

void *sub_10005947C()
{
  v1 = type metadata accessor for CompanionLinkDevice();
  if (![sub_10005C0B0(v1) homeKitUserIdentifiers])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100049CDC();
  type metadata accessor for UUID();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void *sub_1000594E8()
{
  if (![*(v1 + 16) homeKitUserIdentifiers])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100049CDC();
  type metadata accessor for UUID();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000595AC()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  v1 = [sub_10005C0B0(v0) serviceInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100059618()
{
  v1 = [*(v0 + 16) serviceInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100059688()
{
  sub_100049CDC();
  v1 = type metadata accessor for CompanionLinkDevice();
  if ([sub_10005C0B0(v1) *v0])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  return sub_100049A98();
}

uint64_t sub_1000596F0(SEL *a1)
{
  if ([*(v1 + 16) *a1])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  return sub_100049A98();
}

void *sub_100059748()
{
  v0 = type metadata accessor for CompanionLinkDevice();
  v1 = [sub_10005C0B0(v0) serviceTypes];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *sub_1000597B0()
{
  v1 = [*(v0 + 16) serviceTypes];
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t static CompanionLinkDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100049CF4();
  v101 = type metadata accessor for Date();
  v4 = sub_100011C54(v101);
  v98 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100011CD4();
  v96 = v9 - v8;
  v10 = sub_10000FC6C(&qword_10009B830, &qword_100077940);
  v11 = sub_100011D00(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v100 = &v95 - v14;
  v15 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v97 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v95 - v20;
  __chkstk_darwin(v19);
  v23 = &v95 - v22;
  v24 = type metadata accessor for CompanionLinkDevice();
  v25 = *(v2 + *(v24 + 20));
  v26 = [v25 flags];
  v102 = *(a2 + *(v24 + 20));
  if (v26 != [v102 flags])
  {
    return 0;
  }

  v99 = v25;
  if ([v25 accountID])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    v26 = 0;
    v24 = 0;
  }

  v27 = [v102 accountID];
  if (!v27)
  {
    v34 = v99;
    if (!v24)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (!v24)
  {
    v34 = v99;
    if (!v31)
    {
      goto LABEL_19;
    }

LABEL_17:

    return 0;
  }

  if (!v31)
  {
    goto LABEL_17;
  }

  if (v26 == v29 && v24 == v31)
  {

    v34 = v99;
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v34 = v99;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_19:
  v35 = [v34 activityLevel];
  if (v35 != [v102 activityLevel])
  {
    return 0;
  }

  sub_10005938C();
  sub_10005938C();
  v36 = *(v10 + 48);
  v37 = v100;
  sub_10005B730(v23, v100);
  sub_10005B730(v21, v37 + v36);
  v38 = v101;
  if (sub_1000113A4(v37, 1, v101) != 1)
  {
    v41 = v97;
    sub_10005B730(v37, v97);
    if (sub_1000113A4(v37 + v36, 1, v38) != 1)
    {
      v42 = v98;
      v43 = v37 + v36;
      v44 = v96;
      (*(v98 + 32))(v96, v43, v38);
      sub_10005C08C();
      sub_10005BFE0(v45, v46);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      v48 = *(v42 + 8);
      v48(v44, v38);
      v39 = &qword_10009B838;
      sub_100011668(v21, &qword_10009B838, &qword_100077948);
      sub_100011668(v23, &qword_10009B838, &qword_100077948);
      v48(v41, v38);
      sub_100011668(v37, &qword_10009B838, &qword_100077948);
      v40 = v99;
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_27;
    }

    sub_10005C1B0(v21);
    sub_10005C1B0(v23);
    (*(v98 + 8))(v41, v38);
LABEL_25:
    sub_100011668(v37, &qword_10009B830, &qword_100077940);
    return 0;
  }

  v39 = &qword_100077948;
  sub_10005C1B0(v21);
  sub_10005C1B0(v23);
  if (sub_1000113A4(v37 + v36, 1, v38) != 1)
  {
    goto LABEL_25;
  }

  sub_100011668(v37, &qword_10009B838, &qword_100077948);
  v40 = v99;
LABEL_27:
  if ([v40 homeKitUserIdentifiers])
  {
    sub_100049CF4();
    type metadata accessor for UUID();
    v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v50 = [v102 homeKitUserIdentifiers];
  if (v50)
  {
    v51 = v50;
    type metadata accessor for UUID();
    v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  v53 = sub_100049A98();
  v55 = sub_10005A3A0(v53, v54);

  if ((v55 & 1) == 0)
  {
    return 0;
  }

  v56 = [v99 identifier];
  if (v56)
  {
    v55 = v56;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v102 identifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v52 == &stru_100095FF8.name && v49 == v55)
  {

    v58 = v99;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v58 = v99;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  v59 = [v58 idsDeviceIdentifier];
  if (v59)
  {
    v55 = v59;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v102 idsDeviceIdentifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v52 == &stru_100095FF8.name && v49 == v55)
  {

    v61 = v99;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v61 = v99;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  v62 = [v61 model];
  if (v62)
  {
    v55 = v62;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v102 model])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v52 == &stru_100095FF8.name && v49 == v55)
  {

    v64 = v99;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v64 = v99;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  v65 = [v64 name];
  if (v65)
  {
    v55 = v65;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C160();
  }

  else
  {
    sub_10005C124();
  }

  if ([v102 name])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C130();
  }

  else
  {
    sub_10005C118();
  }

  if (v52 == &stru_100095FF8.name && v49 == v55)
  {

    v67 = v99;
  }

  else
  {
    sub_10005C04C();
    sub_10005C148();

    v67 = v99;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1000033E0(0, &qword_10009B840, NSObject_ptr);
  v68 = [v67 serviceInfo];
  v69 = &protocol witness table for AnyHashable;
  sub_10005C190();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005C190();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = [v102 serviceInfo];
  sub_10005C190();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005C190();
  v72.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v73 = static NSObject.== infix(_:_:)();

  if (v73)
  {
    v74 = [v67 serviceType];
    if (v74)
    {
      v69 = v74;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10005C160();
    }

    else
    {
      sub_10005C124();
    }

    if ([v102 serviceType])
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10005C130();
    }

    else
    {
      sub_10005C118();
    }

    if (v73 == &stru_100095FF8.name && v72.super.isa == v69)
    {

      v76 = v99;
    }

    else
    {
      sub_10005C04C();
      sub_10005C148();

      v76 = v99;
      if ((v73 & 1) == 0)
      {
        return 0;
      }
    }

    v77 = [v76 serviceTypes];
    if (v77)
    {
      v78 = v77;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v79 = [v102 serviceTypes];
    if (v79)
    {
      v80 = v79;
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v81 = sub_100049A98();
    v83 = sub_10005A5B4(v81, v82);

    v84 = v99;
    if (v83)
    {
      v85 = [v99 statusFlags];
      if (v85 == [v102 statusFlags])
      {
        if ([v84 sourceVersion])
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10005C0F4();
        }

        else
        {
          sub_10005C0E8();
        }

        v86._countAndFlagsBits = sub_100049A98();
        v87.rawValue = RapportSourceVersion.init(stringValue:)(v86).rawValue;
        v88 = [v102 sourceVersion];
        if (v88)
        {
          v89 = v88;
          v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v92 = v91;
        }

        else
        {
          v90 = 0;
          v92 = 0xE000000000000000;
        }

        v93._countAndFlagsBits = v90;
        v93._object = v92;
        if (v87.rawValue == RapportSourceVersion.init(stringValue:)(v93).rawValue)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10005A3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10005BFE0(&qword_10009A940, &type metadata accessor for UUID);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A5B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void CompanionLinkDevice.hash(into:)()
{
  sub_100049CDC();
  v2 = type metadata accessor for Date();
  v3 = sub_100011C54(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100011CD4();
  v10 = (v9 - v8);
  v11 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v18 = *(v1 + *(type metadata accessor for CompanionLinkDevice() + 20));
  Hasher._combine(_:)([v18 flags]);
  v19 = [v18 accountID];
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v2;

    Hasher._combine(_:)(1u);
    v2 = v41;
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)([v18 activityLevel]);
  sub_10005938C();
  sub_10005B730(v17, v15);
  if (sub_1000113A4(v15, 1, v2) == 1)
  {
    v21 = v0;
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v10, v15, v2);
    Hasher._combine(_:)(1u);
    sub_10005C08C();
    sub_10005BFE0(v22, v23);
    v21 = v10;
    dispatch thunk of Hashable.hash(into:)();
    v24 = sub_10005C0BC();
    v25(v24);
  }

  sub_100011668(v17, &qword_10009B838, &qword_100077948);
  if ([v18 homeKitUserIdentifiers])
  {
    sub_100049CF4();
    type metadata accessor for UUID();
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
  }

  sub_10005B8E8(v0, v26);

  if ([v18 identifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v18 idsDeviceIdentifier])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v18 model])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  if ([v18 name])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  v27 = [v18 serviceInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  NSObject.hash(into:)();

  if ([v18 serviceType])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C178();
  }

  else
  {
    sub_10005C10C();
  }

  sub_10005C0CC();

  v29 = [v18 serviceTypes];
  if (v29)
  {
    v30 = v29;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v31 = sub_100049A98();
  sub_10005B870(v31, v32);

  Hasher._combine(_:)([v18 statusFlags]);
  v33 = [v18 sourceVersion];
  if (v33)
  {
    v34 = v33;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  v38._countAndFlagsBits = v35;
  v38._object = v37;
  v39.rawValue = RapportSourceVersion.init(stringValue:)(v38).rawValue;
  Hasher._combine(_:)(v39.rawValue);
}

Swift::Int CompanionLinkDevice.hashValue.getter()
{
  Hasher.init(_seed:)();
  CompanionLinkDevice.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10005ABEC()
{
  Hasher.init(_seed:)();
  CompanionLinkDevice.hash(into:)();
  return Hasher._finalize()();
}

uint64_t CompanionLinkDevice.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompanionLinkDevice() + 20));
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = v3;
  v4 = RPStatusFlagsCopyDescription([v1 statusFlags]);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3C204653202CLL;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);

  if ([v1 sourceVersion])
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10005C0F4();
  }

  else
  {
    sub_10005C0E8();
  }

  v11._countAndFlagsBits = sub_100049A98();
  RapportSourceVersion.init(stringValue:)(v11);
  v12 = RPVersionToSourceVersionString();
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 39;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x27205653202CLL;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  return v21;
}

uint64_t sub_10005ADDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580577 && a2 == 0xE300000000000000;
  if (v3 || (sub_10005C070() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_10005C070() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7562345 && a2 == 0xE300000000000000;
      if (v7 || (sub_10005C070() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
        if (v8 || (sub_10005C070() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1701667182 && a2 == 0xE400000000000000;
          if (v9 || (sub_10005C070() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 2020569712 && a2 == 0xE400000000000000;
            if (v10 || (sub_10005C070() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1868983913 && a2 == 0xE400000000000000;
              if (v11 || (sub_10005C070() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
                if (v12 || (sub_10005C070() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7365636976726573 && a2 == 0xE800000000000000;
                  if (v13 || (sub_10005C070() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
                    if (v14 || (sub_10005C070() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
                    {

                      return 10;
                    }

                    else
                    {
                      sub_10005C070();
                      sub_10005C148();
                      if (a1)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10005B094(char a1)
{
  result = 6580577;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 7562345;
      break;
    case 3:
      result = 0x6C65646F6DLL;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 2020569712;
      break;
    case 6:
      result = 1868983913;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x7365636976726573;
      break;
    case 9:
      result = 0x737574617473;
      break;
    case 10:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005B1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005ADDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005B1EC(uint64_t a1)
{
  v2 = sub_10005B9E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005B228(uint64_t a1)
{
  v2 = sub_10005B9E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CompanionLinkDevice.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000FC6C(&qword_10009B858, &unk_100077950);
  v6 = sub_100011C54(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_10000FCB4(a1, a1[3]);
  sub_10005B9E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *(v3 + *(type metadata accessor for CompanionLinkDevice() + 20));
  sub_10005B804(v10, &selRef_accountID);
  if (v11)
  {
    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v12 = v10;
  sub_10005B804(v12, &selRef_identifier);
  if (v13)
  {
    sub_10005C028(1);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v14 = v12;
  sub_10005B804(v14, &selRef_idsDeviceIdentifier);
  if (v15)
  {
    sub_10005C028(2);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v16 = v14;
  sub_10005B804(v16, &selRef_model);
  if (v17)
  {
    sub_10005C028(3);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v18 = v16;
  sub_10005B804(v18, &selRef_name);
  if (v19)
  {
    sub_10005C028(4);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  if ([v18 proximity])
  {
    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_18;
    }
  }

  v23 = v18;
  sub_10005B804(v23, &selRef_serviceType);
  if (v24)
  {
    sub_10005C028(7);
    if (v2)
    {
      goto LABEL_27;
    }
  }

  v25 = v23;
  if (!sub_10005B7A0(v25))
  {
    goto LABEL_25;
  }

  sub_10000FC6C(&qword_100099160, &qword_100075748);
  sub_10005BA38();
  sub_10005C0A4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
LABEL_27:
    v28 = sub_10005C0BC();
    v29(v28);
  }

LABEL_25:
  v26 = [v25 statusFlags];
  if (v26)
  {
    v27 = RPStatusFlagsCopyDescription(v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10005C0A4();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v2)
    {
      goto LABEL_27;
    }
  }

  sub_10005B804(v25, &selRef_sourceVersion);
  if (!v30)
  {
LABEL_18:
    v20 = sub_10005C0BC();
    return v21(v20);
  }

  sub_10005C028(10);
  v31 = sub_10005C0BC();
  v32(v31);
}

uint64_t variable initialization expression of RapportRemoteDisplayServer.sessions()
{
  type metadata accessor for RapportRemoteDisplaySession();

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t variable initialization expression of RapportStreamServer.activating()
{
  type metadata accessor for RapportStreamSession();

  return Dictionary.init(dictionaryLiteral:)();
}

void sub_10005B6CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setIdentifier:v4];
}

uint64_t sub_10005B730(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009B838, &qword_100077948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B7A0(void *a1)
{
  v2 = [a1 serviceTypes];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005B804(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_10005B870(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void sub_10005B8E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = *(type metadata accessor for UUID() - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    sub_10005BFE0(&unk_100099180, &type metadata accessor for UUID);
    do
    {
      dispatch thunk of Hashable.hash(into:)();
      v5 += v6;
      --v3;
    }

    while (v3);
  }
}

unint64_t sub_10005B9E4()
{
  result = qword_10009B860;
  if (!qword_10009B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B860);
  }

  return result;
}

unint64_t sub_10005BA38()
{
  result = qword_10009A8F0;
  if (!qword_10009A8F0)
  {
    sub_10000FD4C(&qword_100099160, &qword_100075748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009A8F0);
  }

  return result;
}

uint64_t sub_10005BB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100049CDC();
  v6 = type metadata accessor for UUID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000113A4(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10005BC14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100049CF4();
  result = type metadata accessor for UUID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001137C(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005BCB8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_1000033E0(319, &unk_10009B9C8, RPCompanionLinkDevice_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompanionLinkDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CompanionLinkDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10005BEA0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10005BEDC()
{
  result = qword_10009B9F8;
  if (!qword_10009B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009B9F8);
  }

  return result;
}

unint64_t sub_10005BF34()
{
  result = qword_10009BA00;
  if (!qword_10009BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA00);
  }

  return result;
}

unint64_t sub_10005BF8C()
{
  result = qword_10009BA08;
  if (!qword_10009BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA08);
  }

  return result;
}

uint64_t sub_10005BFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005C028@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_10005C04C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10005C070()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10005C0CC()
{

  return String.hash(into:)();
}

void sub_10005C0F4()
{
}

void sub_10005C130()
{
}

uint64_t sub_10005C148()
{
}

void sub_10005C160()
{
}

void sub_10005C178()
{
}

uint64_t sub_10005C1B0(uint64_t a1)
{

  return sub_100011668(a1, v1, v2);
}

uint64_t sub_10005C28C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064878(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C2BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000496A4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064890(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100064870(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10005C350@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100064868(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10005C39C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100064880(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_10005C3E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064888();
  *a1 = result;
  return result;
}

uint64_t RapportErrorFlags.description.getter(unint64_t a1)
{
  v1 = RPErrorFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005C470()
{
  result = qword_10009BA10;
  if (!qword_10009BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA10);
  }

  return result;
}

unint64_t sub_10005C4C8()
{
  result = qword_10009BA18;
  if (!qword_10009BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA18);
  }

  return result;
}

unint64_t sub_10005C51C()
{
  result = qword_10009BA20;
  if (!qword_10009BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA20);
  }

  return result;
}

unint64_t sub_10005C574()
{
  result = qword_10009BA28;
  if (!qword_10009BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA28);
  }

  return result;
}

id sub_10005C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Dictionary.init(dictionaryLiteral:)();
  if (a5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = &type metadata for String;
    *&v21 = a4;
    *(&v21 + 1) = a5;
    sub_100011558(&v21, v18);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10003D158();
  }

  if (a6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_getErrorValue();
    v9 = v19;
    v10 = v20;
    v22 = v20;
    v11 = sub_10001E710(&v21);
    (*(*(v10 - 1) + 16))(v11, v9, v10);
    sub_100011558(&v21, v18);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10003D158();
  }

  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = String._bridgeToObjectiveC()();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithDomain:v13 code:a3 userInfo:isa];

  return v15;
}

uint64_t RapportStatusFlags.description.getter(unint64_t a1)
{
  v1 = RPStatusFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005C990()
{
  result = qword_10009BA30;
  if (!qword_10009BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA30);
  }

  return result;
}

unint64_t sub_10005C9E8()
{
  result = qword_10009BA38;
  if (!qword_10009BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA38);
  }

  return result;
}

unint64_t sub_10005CA3C()
{
  result = qword_10009BA40;
  if (!qword_10009BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA40);
  }

  return result;
}

unint64_t sub_10005CA94()
{
  result = qword_10009BA48;
  if (!qword_10009BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BA48);
  }

  return result;
}

uint64_t RapportRemoteDisplaySession.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t RapportRemoteDisplaySession.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_10005DFD8();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportRemoteDisplaySession.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005CC14;
}

void sub_10005CC14(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_10005CC98(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t RapportRemoteDisplaySession.__allocating_init(session:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportRemoteDisplaySession.init(session:)(a1);
  return v2;
}

uint64_t RapportRemoteDisplaySession.init(session:)(void *a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 32) = a1;
  v3 = sub_10005DF74();
  swift_weakInit();
  v16 = sub_10005CFC8;
  v17 = v3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v14 = sub_100025214;
  v15 = &unk_100090230;
  v4 = _Block_copy(v13);
  v5 = a1;

  [v5 setErrorHandler:v4];
  _Block_release(v4);
  v6 = sub_10005DF74();
  swift_weakInit();
  v16 = sub_10005D09C;
  v17 = v6;
  v13[0] = _NSConcreteStackBlock;
  sub_10005DF60();
  v14 = v7;
  v15 = &unk_100090258;
  v8 = _Block_copy(v13);

  [v5 setInterruptionHandler:v8];
  _Block_release(v8);
  v9 = sub_10005DF74();
  swift_weakInit();

  v16 = sub_10005D1B0;
  v17 = v9;
  v13[0] = _NSConcreteStackBlock;
  sub_10005DF60();
  v14 = v10;
  v15 = &unk_100090280;
  v11 = _Block_copy(v13);

  [v5 setInvalidationHandler:v11];
  _Block_release(v11);

  return v1;
}

uint64_t sub_10005CF30()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CF68(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005CFD0(a1);
  }

  return result;
}

uint64_t sub_10005CFD0(uint64_t result)
{
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 8);
      swift_errorRetain();
      v5(v1, v2, ObjectType, v3);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10005D084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005D0CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005D150(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10005D1E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportRemoteDisplaySession.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplaySession) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportRemoteDisplaySession.init(session:)(v0);
  return v1;
}

uint64_t RapportRemoteDisplaySession.deinit()
{
  RapportRemoteDisplaySession.cancel()();
  sub_10005D320(v0 + 16);

  return v0;
}

Swift::Void __swiftcall RapportRemoteDisplaySession.cancel()()
{
  [*(v0 + 32) invalidate];
  sub_10005DFD8();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t RapportRemoteDisplaySession.__deallocating_deinit()
{
  RapportRemoteDisplaySession.deinit();
  v0 = sub_100049BC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

id (*RapportRemoteDisplaySession.controlFlags.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 32);
  a1[1] = v3;
  *a1 = [v3 controlFlags];
  return sub_10005D3EC;
}

uint64_t RapportRemoteDisplaySession.destinationDevice.getter()
{
  v1 = [*(v0 + 32) destinationDevice];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = v2;
  return v3;
}

void RapportRemoteDisplaySession.destinationDevice.setter(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (a1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDestinationDevice:?];
}

void (*RapportRemoteDisplaySession.destinationDevice.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = RapportRemoteDisplaySession.destinationDevice.getter();
  return sub_10005D530;
}

void sub_10005D530(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    RapportRemoteDisplaySession.destinationDevice.setter(v5);
  }

  else
  {
    RapportRemoteDisplaySession.destinationDevice.setter(*a1);
  }
}

id RapportRemoteDisplaySession.dispatchQueue.getter()
{
  v1 = [*(v0 + 32) dispatchQueue];

  return v1;
}

void RapportRemoteDisplaySession.dispatchQueue.setter(void *a1)
{
  [*(v1 + 32) setDispatchQueue:a1];
}

void (*RapportRemoteDisplaySession.dispatchQueue.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 32);
  a1[1] = v3;
  *a1 = [v3 dispatchQueue];
  return sub_10005D664;
}

void sub_10005D664(id *a1)
{
  v1 = *a1;
  [a1[1] setDispatchQueue:?];
}

void RapportRemoteDisplaySession.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v6[4] = a1;
  v6[5] = a2;
  sub_100011C68();
  sub_100011D20();
  v6[2] = v4;
  v6[3] = &unk_1000902A8;
  v5 = _Block_copy(v6);

  [v3 activateWithCompletion:v5];
  _Block_release(v5);
}

void RapportRemoteDisplaySession.sendEvent(id:event:options:completion:)()
{
  v3 = sub_10005DF90();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  isa = v4.super.isa;
  if (v1)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v1 = v4.super.isa;
  }

  if (v2)
  {
    v7[4] = v2;
    v7[5] = v0;
    sub_100011C68();
    sub_100011D20();
    v7[2] = v6;
    v7[3] = &unk_1000902D0;
    v2 = _Block_copy(v7);
  }

  sub_10005DFB4(v4.super.isa, "sendEventID:event:options:completion:");
  _Block_release(v2);
}

void RapportRemoteDisplaySession.sendRequest(id:request:options:response:)()
{
  v3 = sub_10005DF90();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v7[4] = v2;
  v7[5] = v0;
  sub_100011C68();
  v7[1] = 1107296256;
  v7[2] = sub_10005D930;
  v7[3] = &unk_1000902F8;
  v5 = _Block_copy(v7);

  sub_10005DFB4(v6, "sendRequestID:request:options:responseHandler:");
  _Block_release(v5);
}

uint64_t sub_10005D930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_10005DA80()
{
  v1 = [*(v0 + 32) serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005DAE8(void *a1)
{
  v1 = [a1 serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportStreamServer.serviceType.getter()
{
  v1 = [*(v0 + 16) serviceType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005DDF4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();
    v1 = String.subscript.getter();

    return v1;
  }

  return result;
}

uint64_t sub_10005DF74()
{

  return swift_allocObject();
}

NSString sub_10005DF90()
{
  v2 = *(v0 + 32);

  return String._bridgeToObjectiveC()();
}

id sub_10005DFB4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_10005DFD8()
{

  return swift_beginAccess();
}

CompanionLink::RapportSourceVersion __swiftcall RapportSourceVersion.init(stringValue:)(Swift::String stringValue)
{
  sub_10005E160();
  v1 = StringProtocol.components<A>(separatedBy:)();

  v2 = *(v1 + 16);
  v3 = sub_10005E1B4(0, 10000, v2, v1);
  result.rawValue = sub_10005E1B4(1, 100, v2, v1);
  v5 = __OFADD__(v3, result.rawValue);
  v6 = v3 + result.rawValue;
  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = sub_10005E1B4(2, 1, v2, v1);

  result.rawValue = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_10005E160()
{
  result = qword_10009BB38;
  if (!qword_10009BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB38);
  }

  return result;
}

uint64_t sub_10005E1B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result >= a3)
  {
    return 0;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (*(a4 + 16) <= result)
  {
LABEL_68:
    __break(1u);
LABEL_69:

    v13 = sub_10005E614(v5, v6, 10);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_70;
    }

    return 0;
  }

  v4 = a2;
  v7 = a4 + 16 * result;
  v5 = *(v7 + 32);
  v6 = *(v7 + 40);
  v8 = HIBYTE(v6) & 0xF;
  v9 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v10 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      goto LABEL_72;
    }

    for (result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
    {
      v11 = *result;
      if (v11 == 43)
      {
        if (v9 < 1)
        {
          goto LABEL_75;
        }

        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (!result)
          {
            goto LABEL_63;
          }

          v20 = (result + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v12)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v11 == 45)
      {
        if (v9 < 1)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v12 = v9 - 1;
        if (v9 != 1)
        {
          v13 = 0;
          if (!result)
          {
            goto LABEL_63;
          }

          v14 = (result + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v16 - v15;
            if (__OFSUB__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v9)
      {
        v13 = 0;
        if (!result)
        {
LABEL_63:
          LOBYTE(v12) = 0;
          goto LABEL_65;
        }

        while (1)
        {
          v26 = *result - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++result;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }

LABEL_64:
      v13 = 0;
      LOBYTE(v12) = 1;
LABEL_65:
      v34 = v12;
      if (v12)
      {
        return 0;
      }

LABEL_70:
      result = v13 * v4;
      if ((v13 * v4) >> 64 == (v13 * v4) >> 63)
      {
        return result;
      }

      __break(1u);
LABEL_72:
      ;
    }
  }

  v33[0] = *(v7 + 32);
  v33[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (!v8)
      {
        goto LABEL_64;
      }

      v13 = 0;
      v28 = v33;
      do
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          goto LABEL_64;
        }

        v30 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          goto LABEL_64;
        }

        v13 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          goto LABEL_64;
        }

        ++v28;
        --v8;
      }

      while (v8);
      goto LABEL_63;
    }

    if (v8)
    {
      v12 = v8 - 1;
      if (v8 != 1)
      {
        v13 = 0;
        v17 = v33 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          v19 = 10 * v13;
          if ((v13 * 10) >> 64 != (10 * v13) >> 63)
          {
            break;
          }

          v13 = v19 - v18;
          if (__OFSUB__(v19, v18))
          {
            break;
          }

          ++v17;
          if (!--v12)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_74;
  }

  if (v8)
  {
    v12 = v8 - 1;
    if (v8 != 1)
    {
      v13 = 0;
      v23 = v33 + 1;
      while (1)
      {
        v24 = *v23 - 48;
        if (v24 > 9)
        {
          break;
        }

        v25 = 10 * v13;
        if ((v13 * 10) >> 64 != (10 * v13) >> 63)
        {
          break;
        }

        v13 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        ++v23;
        if (!--v12)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_10005E4E8()
{
  v0 = RPVersionToSourceVersionString();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005E55C()
{
  result = qword_10009BB40;
  if (!qword_10009BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB40);
  }

  return result;
}

unsigned __int8 *sub_10005E614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100045FD8();
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t RapportControlFlags.description.getter(unint64_t a1)
{
  v1 = RPControlFlagsCopyDescription(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t sub_10005ED28()
{
  result = qword_10009BB48;
  if (!qword_10009BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB48);
  }

  return result;
}

unint64_t sub_10005ED80()
{
  result = qword_10009BB50;
  if (!qword_10009BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB50);
  }

  return result;
}

unint64_t sub_10005EDD4()
{
  result = qword_10009BB58;
  if (!qword_10009BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB58);
  }

  return result;
}

unint64_t sub_10005EE2C()
{
  result = qword_10009BB60;
  if (!qword_10009BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB60);
  }

  return result;
}

unint64_t RapportStreamFlags.description.getter(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = RPStreamFlagsCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  return result;
}

unint64_t sub_10005EF28()
{
  result = qword_10009BB68;
  if (!qword_10009BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB68);
  }

  return result;
}

unint64_t sub_10005EF80()
{
  result = qword_10009BB70;
  if (!qword_10009BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB70);
  }

  return result;
}

unint64_t sub_10005EFD4()
{
  result = qword_10009BB78;
  if (!qword_10009BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB78);
  }

  return result;
}

unint64_t sub_10005F02C()
{
  result = qword_10009BB80;
  if (!qword_10009BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BB80);
  }

  return result;
}

uint64_t RapportRemoteDisplayDiscovery.delegate.getter()
{
  sub_100060254();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

uint64_t RapportRemoteDisplayDiscovery.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportRemoteDisplayDiscovery.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

void sub_10005F1B0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t RapportRemoteDisplayDiscovery.__allocating_init(discovery:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportRemoteDisplayDiscovery.init(discovery:)(a1);
  return v2;
}

uint64_t RapportRemoteDisplayDiscovery.init(discovery:)(void *a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10005F5D0;
  v23 = v2;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100052C90;
  v21 = &unk_100090418;
  v4 = _Block_copy(&v18);
  v5 = a1;

  sub_100060270(v6, "setInterruptionHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10005F69C;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v7;
  v21 = &unk_100090440;
  _Block_copy(&v18);
  v8 = sub_100060288();
  sub_100060270(v8, "setInvalidationHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10005F750;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_100060224();
  v20 = v9;
  v21 = &unk_100090468;
  _Block_copy(&v18);
  v10 = sub_100060288();
  sub_100060270(v10, "setDeviceFoundHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10005F934;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_100060224();
  v20 = v11;
  v21 = &unk_100090490;
  _Block_copy(&v18);
  v12 = sub_100060288();
  sub_100060270(v12, "setDeviceLostHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10005FABC;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005FBB4;
  v21 = &unk_1000904B8;
  _Block_copy(&v18);
  v13 = sub_100060288();
  sub_100060270(v13, "setDeviceChangedHandler:");
  _Block_release(v4);
  v14 = sub_10005DF74();
  swift_weakInit();

  v22 = sub_10005FC7C;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v15;
  v21 = &unk_1000904E0;
  v16 = _Block_copy(&v18);

  [v5 setErrorFlagsChangedHandler:v16];
  _Block_release(v16);

  return v1;
}

uint64_t sub_10005F598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005F600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F618()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005F6CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005F780(void *a1)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    v7 = a1;
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1;
  }
}

void sub_10005F864(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10005F8CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_10005F964(void *a1)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    v7 = a1;
    v6(v3, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = a1;
  }
}

uint64_t sub_10005FA48(void *a1, unsigned int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005FAC4(a1, a2);
  }

  return result;
}

uint64_t sub_10005FAC4(void *a1, unsigned int a2)
{
  type metadata accessor for RapportRemoteDisplayDevice();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v2 + 32);
    v7 = a2;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 32);
    v10 = a1;
    v9(v5, v7, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = a1;
  }
}

void sub_10005FBB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10005FC28(uint64_t a1, void (*a2)(void))
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10005FCAC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 24))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportRemoteDisplayDiscovery.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplayDiscovery) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportRemoteDisplayDiscovery.init(discovery:)(v0);
  return v1;
}

void *RapportRemoteDisplayDiscovery.devices.getter()
{
  v1 = [*(v0 + 16) discoveredDevices];
  sub_10005FED8();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100037E08(v2);
  if (v3)
  {
    v4 = v3;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v2 + 8 * v6 + 32);
        }

        v8 = v7;
        ++v6;
        type metadata accessor for RapportRemoteDisplayDevice();
        v9 = swift_allocObject();
        *(v9 + 32) = 0;
        swift_unknownObjectWeakInit();
        *(v9 + 16) = v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v10 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v4 != v6);

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_10005FED8()
{
  result = qword_10009BB88;
  if (!qword_10009BB88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10009BB88);
  }

  return result;
}

id RapportRemoteDisplayDiscovery.dispatchQueue.getter()
{
  v1 = [*(v0 + 16) dispatchQueue];

  return v1;
}

void RapportRemoteDisplayDiscovery.dispatchQueue.setter(void *a1)
{
  [*(v1 + 16) setDispatchQueue:a1];
}

void (*RapportRemoteDisplayDiscovery.dispatchQueue.modify(void *a1))(id *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 dispatchQueue];
  return sub_10005D664;
}

void RapportRemoteDisplayDiscovery.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090508;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t RapportRemoteDisplayDiscovery.__deallocating_deinit()
{
  sub_10005D320(v0 + 24);
  v1 = sub_100049BC8();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t RapportRemoteDisplayDiscovery.description.getter()
{
  v1 = [*(v0 + 16) description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100060238()
{

  return swift_weakInit();
}

uint64_t sub_100060254()
{

  return swift_beginAccess();
}

id sub_100060270(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100060288()
{
}

uint64_t RapportMessageable.serviceType.getter(uint64_t a1, uint64_t a2)
{
  v2 = [(*(a2 + 24))() serviceType];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_100060350(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 32);
  if (a2)
  {
    v4 = v3;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setServiceType:v6];
}

void sub_1000603E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    swift_unknownObjectRetain();
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_unknownObjectRetain();
    v4 = 0;
  }

  [v3 setServiceType:v4];
  swift_unknownObjectRelease();
}

void sub_100060480(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (a2)
  {
    v4 = v3;
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setServiceType:v6];
}

void RapportMessageable.serviceType.setter()
{
  sub_100062F60();
  v5 = sub_100062FA0(v1, v2, v3, v4);
  v7 = v6(v5);
  if (v0)
  {
    sub_100049BBC();
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setServiceType:v8];
  swift_unknownObjectRelease();
}

uint64_t (*sub_1000605A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = sub_10005DA80();
  a1[1] = v4;
  return sub_1000605F4;
}

void (*RapportMessageable.serviceType.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  sub_100062F60();
  v7 = sub_10005CC98(0x28uLL);
  *v5 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = v4;
  *v7 = RapportMessageable.serviceType.getter(v4, a3);
  v7[1] = v8;
  return sub_100060688;
}

void sub_100060688(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (*a1)[1];

    sub_100062FCC();
    v8 = v2[1];
  }

  else
  {
    sub_100062FCC();
  }

  free(v2);
}

void sub_10006071C(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 32);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090A38;
  v12 = _Block_copy(v13);

  [v9 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void sub_100060874(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unknownObjectRetain();
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090948;
  v12 = _Block_copy(v13);

  [a6 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

void sub_1000609C8(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E74;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100062128;
  v13[3] = &unk_100090808;
  v12 = _Block_copy(v13);

  [v9 registerEventID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void RapportMessageable.registerEvent(id:options:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, uint64_t a2, uint64_t a3), void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v27;
  a24 = v28;
  v36 = sub_100062F38(v29, v30, v31, v32, v33, v34, v35);
  v37(v36);
  v38 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  a13 = sub_100062120;
  a14 = v39;
  sub_100011C68();
  a10 = 1107296256;
  a11 = sub_100062128;
  a12 = &unk_100090558;
  v40 = _Block_copy(&a9);

  v41 = sub_100062EEC();
  [v41 v42];
  _Block_release(v40);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_100060C60(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 32);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000909E8;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void sub_100060DB8(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unknownObjectRetain();
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000908F8;
  v12 = _Block_copy(v13);

  [a6 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

void sub_100060F0C(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, uint64_t a5)
{
  v9 = *(v5 + 16);
  v10 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_100062E78;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100012F64;
  v13[3] = &unk_1000907B8;
  v12 = _Block_copy(v13);

  [v9 registerRequestID:v10 options:isa handler:v12];
  _Block_release(v12);
}

void RapportMessageable.registerRequest(id:options:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4), void *a12, uint64_t (*a13)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v27;
  a24 = v28;
  v36 = sub_100062F38(v29, v30, v31, v32, v33, v34, v35);
  v37(v36);
  v38 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v24;
  a13 = sub_1000622B8;
  a14 = v39;
  sub_100011C68();
  a10 = 1107296256;
  a11 = sub_100012F64;
  a12 = &unk_1000905A8;
  v40 = _Block_copy(&a9);

  v41 = sub_100062EEC();
  [v41 v42];
  _Block_release(v40);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_1000611A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v12 = *(v8 + 32);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v16[4] = a7;
    v16[5] = a8;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100025214;
    v16[3] = &unk_100090998;
    a7 = _Block_copy(v16);
  }

  [v12 sendEventID:v13 event:v14.super.isa destinationID:v15 options:isa completion:a7];
  _Block_release(a7);
}

void sub_10006132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8, void *a9)
{
  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v15[4] = a7;
    v15[5] = a8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100025214;
    v15[3] = &unk_1000908A8;
    a7 = _Block_copy(v15);
  }

  [a9 sendEventID:v12 event:v13.super.isa destinationID:v14 options:isa completion:a7];
  _Block_release(a7);
  swift_unknownObjectRelease();
}

void sub_1000614B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v12 = *(v8 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v16[4] = a7;
    v16[5] = a8;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100025214;
    v16[3] = &unk_100090768;
    a7 = _Block_copy(v16);
  }

  [v12 sendEventID:v13 event:v14.super.isa destinationID:v15 options:isa completion:a7];
  _Block_release(a7);
}

void RapportMessageable.sendEvent(id:event:destinationID:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, void *a7, uint64_t a8)
{
  v11 = sub_100062F88();
  v13 = v12(v11);
  v14 = String._bridgeToObjectiveC()();
  v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a7)
  {
    v18[4] = a7;
    v18[5] = a8;
    sub_100011C68();
    sub_100011D20();
    v18[2] = v17;
    v18[3] = &unk_1000905D0;
    a7 = _Block_copy(v18);
  }

  [v13 sendEventID:v14 event:v15.super.isa destinationID:v16 options:isa completion:a7];
  _Block_release(a7);
  swift_unknownObjectRelease();
}

void sub_1000617C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v12 = *(v8 + 32);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005D930;
  v17[3] = &unk_100090970;
  v16 = _Block_copy(v17);

  [v12 sendRequestID:v13 request:v14.super.isa destinationID:v15 options:isa responseHandler:v16];
  _Block_release(v16);
}

void sub_10006194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8, void *a9)
{
  swift_unknownObjectRetain();
  v12 = String._bridgeToObjectiveC()();
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v16[4] = a7;
  v16[5] = a8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_10005D930;
  v16[3] = &unk_100090880;
  v15 = _Block_copy(v16);

  [a9 sendRequestID:v12 request:v13.super.isa destinationID:v14 options:isa responseHandler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_100061AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v12 = *(v8 + 16);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10005D930;
  v17[3] = &unk_100090740;
  v16 = _Block_copy(v17);

  [v12 sendRequestID:v13 request:v14.super.isa destinationID:v15 options:isa responseHandler:v16];
  _Block_release(v16);
}

void RapportMessageable.sendRequest(id:request:destinationID:options:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Class isa, uint64_t a7, uint64_t a8)
{
  v11 = sub_100062F88();
  v12(v11);
  v13 = String._bridgeToObjectiveC()();
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v20[4] = a7;
  v20[5] = a8;
  sub_100011C68();
  sub_100062F00();
  v20[2] = v16;
  v20[3] = &unk_1000905F8;
  v17 = _Block_copy(v20);

  v18 = sub_100062EEC();
  [v18 v19];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_100061E10()
{
  sub_100062F60();
  v1 = *(v0 + 32);
  sub_100049BBC();
  v2 = String._bridgeToObjectiveC()();
  sub_100062F18(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_100061E74()
{
  sub_100062F60();
  swift_unknownObjectRetain();
  sub_100049BBC();
  v0 = String._bridgeToObjectiveC()();
  sub_100062F18(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
  swift_unknownObjectRelease();
}

void sub_100061EDC()
{
  sub_100062F60();
  v1 = *(v0 + 16);
  sub_100049BBC();
  v2 = String._bridgeToObjectiveC()();
  sub_100062F18(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_100061F4C()
{
  sub_100062F60();
  v4 = sub_100062FA0(v0, v1, v2, v3);
  v5(v4);
  sub_100049BBC();
  v6 = String._bridgeToObjectiveC()();
  sub_100062F18(v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
  swift_unknownObjectRelease();
}

id sub_100061FBC(void *a1)
{
  v1 = [a1 dispatchQueue];

  return v1;
}

id RapportMessageable.dispatchQueue.getter(uint64_t a1, uint64_t a2)
{
  v2 = [(*(a2 + 24))() dispatchQueue];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100062048(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
  }

  a3(a1, v5);
}

uint64_t sub_1000620E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v6, a3);
}

uint64_t sub_1000621E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100062200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = Dictionary.init(dictionaryLiteral:)();
  }

  a5(a1, v9, a3, a4);
}

void sub_1000622C0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, void *a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100025214;
    v13[3] = &unk_100090858;
    a5 = _Block_copy(v13);
  }

  [a7 sendEventID:v11 event:v12.super.isa options:isa completion:a5];
  _Block_release(a5);
  swift_unknownObjectRelease();
}

void sub_100062424(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, void *a5, uint64_t a6)
{
  v10 = *(v6 + 16);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100025214;
    v13[3] = &unk_100090718;
    a5 = _Block_copy(v13);
  }

  [v10 sendEventID:v11 event:v12.super.isa options:isa completion:a5];
  _Block_release(a5);
}

void RapportMessageable.sendEvent(id:event:options:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  isa = v30;
  v37 = sub_100062F6C(v32, v33, v34, v30, v28, v26, v35, v36);
  v39 = v38(v37);
  v40 = String._bridgeToObjectiveC()();
  v41.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  if (v29)
  {
    a13 = v29;
    a14 = v27;
    sub_100011C68();
    sub_100011D20();
    a11 = v42;
    a12 = &unk_100090620;
    v29 = _Block_copy(&a9);
  }

  [v39 sendEventID:v40 event:v41.super.isa options:isa completion:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

void sub_1000626B0(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5, uint64_t a6, void *a7)
{
  swift_unknownObjectRetain();
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10005D930;
  v14[3] = &unk_100090830;
  v13 = _Block_copy(v14);

  [a7 sendRequestID:v11 request:v12.super.isa options:isa responseHandler:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_100062810(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + 16);
  v11 = String._bridgeToObjectiveC()();
  v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v14[4] = a5;
  v14[5] = a6;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10005D930;
  v14[3] = &unk_1000906F0;
  v13 = _Block_copy(v14);

  [v10 sendRequestID:v11 request:v12.super.isa options:isa responseHandler:v13];
  _Block_release(v13);
}

void RapportMessageable.sendRequest(id:request:options:response:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100062FEC();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  isa = v30;
  v37 = sub_100062F6C(v32, v33, v34, v30, v28, v26, v35, v36);
  v38(v37);
  v39 = String._bridgeToObjectiveC()();
  v40.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  a13 = v29;
  a14 = v27;
  sub_100011C68();
  sub_100062F00();
  a11 = v41;
  a12 = &unk_100090648;
  v42 = _Block_copy(&a9);

  v43 = sub_100062EEC();
  [v43 v44];
  _Block_release(v42);
  swift_unknownObjectRelease();

  sub_100062FB4();
}

uint64_t AnyRapportMessageable.messenger.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t (*sub_100062AD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_10005DAE8(*v1);
  a1[1] = v3;
  return sub_100062B20;
}

uint64_t (*sub_100062C14(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = RapportStreamServer.serviceType.getter();
  a1[1] = v4;
  return sub_100062C60;
}

uint64_t sub_100062C78(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = a1[1];

    v8 = sub_100049BBC();
    a3(v8);
  }

  else
  {
    v10 = sub_100049BBC();
    return (a3)(v10);
  }
}

id sub_100062F18(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v13 = *v10;

  return [v11 v13];
}

uint64_t sub_100062F88()
{
  result = *(v0 + 16);
  v2 = *(*(v0 + 24) + 24);
  return result;
}

void sub_100062FCC()
{

  RapportMessageable.serviceType.setter();
}

uint64_t RapportRemoteDisplayServer.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 32);
  return result;
}

void (*RapportRemoteDisplayServer.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportRemoteDisplayServer.__allocating_init(server:)(void *a1)
{
  sub_100063D04();
  v2 = swift_allocObject();
  RapportRemoteDisplayServer.init(server:)(a1);
  return v2;
}

void *RapportRemoteDisplayServer.init(server:)(void *a1)
{
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RapportRemoteDisplaySession();
  v1[5] = Dictionary.init(dictionaryLiteral:)();
  v1[2] = a1;
  sub_10005DF74();
  sub_100060238();
  v15 = sub_100063400;
  v16 = v2;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100052C90;
  v14 = &unk_100090A88;
  v4 = _Block_copy(&v11);
  v5 = a1;

  [v5 setInterruptionHandler:v4];
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v15 = sub_10006352C;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100052C90;
  v14 = &unk_100090AB0;
  v6 = _Block_copy(&v11);

  [v5 setInvalidationHandler:v6];
  _Block_release(v6);
  sub_10005DF74();
  sub_100060238();
  v15 = sub_10006365C;
  v16 = v6;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000637F8;
  v14 = &unk_100090AD8;
  v7 = _Block_copy(&v11);

  [v5 setSessionStartHandler:v7];
  _Block_release(v7);
  v8 = sub_10005DF74();
  swift_weakInit();

  v15 = sub_100063924;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100063A98;
  v14 = &unk_100090B00;
  v9 = _Block_copy(&v11);

  [v5 setSessionEndedHandler:v9];
  _Block_release(v9);

  return v1;
}

uint64_t sub_1000633C8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063430(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063448()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000634CC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10006355C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000635E0(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100063664(a1, a2, a3);
  }

  return result;
}

void sub_100063664(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  type metadata accessor for RapportRemoteDisplaySession();
  swift_allocObject();
  v8 = a1;
  v9 = RapportRemoteDisplaySession.init(session:)(v8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v4 + 32);
    swift_beginAccess();

    v11 = *(v4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v4 + 40);
    sub_100068724(v9, v8, isUniquelyReferenced_nonNull_native);
    *(v4 + 40) = v15;
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v10 + 24))(v4, v9, a2, a3, ObjectType, v10);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10004B318();
    v14 = sub_10005C80C(-6714, 0xD000000000000025, 0x800000010007C090);
    a2();
  }
}

void sub_1000637F8(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_1000638B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006392C(a1, a2);
  }

  return result;
}

uint64_t sub_10006392C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 40);
  v7 = sub_100068614(a1);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = v7;
  v10 = *(v3 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  v12 = *(v17 + 24);
  sub_10000FC6C(&qword_10009BD28, &qword_100078B00);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
  v13 = *(*(v17 + 56) + 8 * v9);
  type metadata accessor for RapportRemoteDisplaySession();
  _NativeDictionary._delete(at:)();
  *(v3 + 40) = v17;
  swift_endAccess();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v14 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  (*(v14 + 32))(v3, v13, a2, ObjectType, v14);

  return swift_unknownObjectRelease();
}

void sub_100063A98(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t RapportRemoteDisplayServer.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPRemoteDisplayServer) init];
  sub_100063D04();
  v1 = swift_allocObject();
  RapportRemoteDisplayServer.init(server:)(v0);
  return v1;
}

void RapportRemoteDisplayServer.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090B28;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

uint64_t RapportRemoteDisplayServer.deinit()
{
  sub_10005D320(v0 + 24);
  v1 = *(v0 + 40);

  return v0;
}

uint64_t RapportRemoteDisplayServer.__deallocating_deinit()
{
  RapportRemoteDisplayServer.deinit();
  v0 = sub_100063D04();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100063CAC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t RapportEndpoint.accountID.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 accountID];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t RapportEndpoint.activityLevel.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 activityLevel];

  return v4;
}

uint64_t RapportEndpoint.activityLevelTimeStamp.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100064570(a1, a2);
  v5 = v4();
  v6 = [v5 activityLevelTimeStamp];

  if (v6)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = type metadata accessor for Date();

  return sub_10001137C(a3, v7, 1, v8);
}

uint64_t RapportEndpoint.cameraState.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 cameraState];

  return v4;
}

void *RapportEndpoint.homeKitUserIdentifiers.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 homeKitUserIdentifiers];

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for UUID();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_100063FD4()
{
  v1 = [*(v0 + *(type metadata accessor for CompanionLinkDevice() + 20)) mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100064048()
{
  v1 = [*(v0 + 16) mediaRouteIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportEndpoint.serviceInfo.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 serviceInfo];

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t sub_10006416C(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_100064570(a1, a2);
  v5 = v4();
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *RapportEndpoint.serviceTypes.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 serviceTypes];

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id RapportEndpoint.statusFlags.getter(uint64_t a1, uint64_t a2)
{
  sub_100064570(a1, a2);
  v3 = v2();
  v4 = [v3 statusFlags];

  return v4;
}

uint64_t sub_100064628@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000383A4(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t RapportDeviceChangeFlags.description.getter(unint64_t result)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = RPDeviceChangeFlagsCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  return result;
}

unint64_t sub_1000646E8()
{
  result = qword_10009BD30;
  if (!qword_10009BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD30);
  }

  return result;
}

unint64_t sub_100064740()
{
  result = qword_10009BD38;
  if (!qword_10009BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD38);
  }

  return result;
}

unint64_t sub_100064794()
{
  result = qword_10009BD40;
  if (!qword_10009BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD40);
  }

  return result;
}

unint64_t sub_1000647EC()
{
  result = qword_10009BD48;
  if (!qword_10009BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD48);
  }

  return result;
}

uint64_t *RapportStreamQoS.default.unsafeMutableAddressor()
{
  if (qword_10009B7E8 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.default;
}

uint64_t *RapportStreamQoS.background.unsafeMutableAddressor()
{
  if (qword_10009B7F0 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.background;
}

uint64_t *RapportStreamQoS.video.unsafeMutableAddressor()
{
  if (qword_10009B7F8 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.video;
}

uint64_t *RapportStreamQoS.voice.unsafeMutableAddressor()
{
  if (qword_10009B800 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.voice;
}

uint64_t *RapportStreamQoS.airPlayAudio.unsafeMutableAddressor()
{
  if (qword_10009B808 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayAudio;
}

uint64_t *RapportStreamQoS.airPlayScreenAudio.unsafeMutableAddressor()
{
  if (qword_10009B810 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayScreenAudio;
}

uint64_t *RapportStreamQoS.airPlayScreenVideo.unsafeMutableAddressor()
{
  if (qword_10009B818 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.airPlayScreenVideo;
}

uint64_t *RapportStreamQoS.ntp.unsafeMutableAddressor()
{
  if (qword_10009B820 != -1)
  {
    swift_once();
  }

  return &static RapportStreamQoS.ntp;
}

uint64_t sub_100064CC8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

uint64_t RapportStreamQoS.description.getter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v1 = RPStreamQoSCopyDescription(result);
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_100064DAC()
{
  result = qword_10009BD50;
  if (!qword_10009BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009BD50);
  }

  return result;
}

uint64_t RapportRemoteDisplayDevice.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t RapportRemoteDisplayDevice.persistentIdentifier.getter()
{
  v1 = [*(v0 + 16) persistentIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void (*RapportRemoteDisplayDevice.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportRemoteDisplayDevice.init(device:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t RapportRemoteDisplayDevice.cameraCapabilities.getter()
{
  v1 = [*(v0 + 16) cameraCapabilities];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportRemoteDisplayDevice.__deallocating_deinit()
{
  sub_10005D320(v0 + 24);

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_1000650F0(uint64_t (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a3();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 localizedDescription];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = a1();
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v33 = v4;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v15 = 136446979;
      v16 = sub_100014C58(v11, v12, &v34);

      *(v15 + 4) = v16;
      *(v15 + 12) = 2082;
      v17 = [v33 domain];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = sub_100014C58(v18, v20, &v34);

      *(v15 + 14) = v21;
      *(v15 + 22) = 2048;
      v22 = [v33 code];

      *(v15 + 24) = v22;
      *(v15 + 32) = 2081;
      v23 = sub_100014C58(v6, v8, &v34);

      *(v15 + 34) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s: %{public}s (%ld) %{private}s", v15, 0x2Au);
LABEL_6:
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    v33 = v4;

    v13 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v24))
    {
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v25 = 136446723;
      v26 = [v33 domain];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_100014C58(v27, v29, &v34);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2048;
      v31 = [v33 code];

      *(v25 + 14) = v31;
      *(v25 + 22) = 2081;
      v32 = sub_100014C58(v6, v8, &v34);

      *(v25 + 24) = v32;
      _os_log_impl(&_mh_execute_header, v13, v24, "%{public}s (%ld) %{private}s", v25, 0x20u);
      goto LABEL_6;
    }
  }
}

uint64_t CompanionLinkClient.delegate.getter()
{
  sub_100060254();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t CompanionLinkClient.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CompanionLinkClient.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 40);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_100065608;
}

void sub_100065608(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id (*CompanionLinkClient.controlFlags.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 controlFlags];
  return sub_10005D3EC;
}

uint64_t CompanionLinkClient.destinationDevice.setter(uint64_t a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  sub_100065814(a1, &v11 - v5);
  v8 = type metadata accessor for CompanionLinkDevice();
  if (sub_1000113A4(v6, 1, v8) == 1)
  {
    sub_10001B258(v6);
    v9 = 0;
  }

  else
  {
    v9 = *&v6[*(v8 + 20)];
    sub_100015230(v6);
  }

  [v7 setDestinationDevice:v9];

  return sub_10001B258(a1);
}

uint64_t sub_100065814(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*CompanionLinkClient.destinationDevice.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10000FC6C(&qword_1000994B8, &qword_100075A30) - 8) + 64);
  a1[1] = sub_10005CC98(v3);
  v4 = sub_10005CC98(v3);
  a1[2] = v4;
  CompanionLinkClient.destinationDevice.getter(v4);
  return sub_100065920;
}

void sub_100065920(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100065814(v3, v2);
    CompanionLinkClient.destinationDevice.setter(v2);
    sub_10001B258(v3);
  }

  else
  {
    CompanionLinkClient.destinationDevice.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_10006599C@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) *a1];
  if (v4)
  {

    return sub_10005906C(v4, a2);
  }

  else
  {
    v6 = type metadata accessor for CompanionLinkDevice();

    return sub_10001137C(a2, 1, 1, v6);
  }
}

uint64_t sub_100065A1C(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t CompanionLinkClient.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPCompanionLinkClient) init];
  sub_100063D04();
  v1 = swift_allocObject();
  sub_100065A1C(v0);
  v2 = v0;

  sub_100065ACC(v2);

  return v1;
}

void sub_100065ACC(void *a1)
{
  v2 = [objc_opt_self() mainBundle];
  sub_100067170(v2);
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [a1 setAppID:v4];

  v5 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067218;
  v25 = v5;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090C98;
  v6 = _Block_copy(&v20);

  [a1 setDisconnectHandler:v6];
  _Block_release(v6);
  sub_100013764();
  v7 = static OS_dispatch_queue.main.getter();
  [a1 setDispatchQueue:v7];

  v8 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067248;
  v25 = v8;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090CC0;
  v9 = _Block_copy(&v20);

  [a1 setDeviceFoundHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067278;
  v25 = v10;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090CE8;
  v11 = _Block_copy(&v20);

  [a1 setDeviceLostHandler:v11];
  _Block_release(v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672A8;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005FBB4;
  v23 = &unk_100090D10;
  v13 = _Block_copy(&v20);

  [a1 setDeviceChangedHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672B0;
  v25 = v14;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090D38;
  v15 = _Block_copy(&v20);

  [a1 setInterruptionHandler:v15];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_weakInit();
  v24 = sub_1000672E0;
  v25 = v16;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100052C90;
  v23 = &unk_100090D60;
  v17 = _Block_copy(&v20);

  [a1 setInvalidationHandler:v17];
  _Block_release(v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v24 = sub_100067310;
  v25 = v18;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10005F864;
  v23 = &unk_100090D88;
  v19 = _Block_copy(&v20);

  [a1 setLocalDeviceUpdatedHandler:v19];
  _Block_release(v19);
}

uint64_t CompanionLinkClient.__allocating_init(destination:serviceType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(RPCompanionLinkClient) init];
  sub_100063D04();
  v6 = swift_allocObject();
  sub_100065A1C(v5);
  v7 = v5;

  sub_100065ACC(v7);
  [*(v6 + 16) setDestinationDevice:*(a1 + *(type metadata accessor for CompanionLinkDevice() + 20))];
  v8 = *(v6 + 16);
  v9 = v8;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setServiceType:v10];

  sub_100015230(a1);
  return v6;
}

void sub_1000660E0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient disconnected", v6, 2u);
    }
  }
}

uint64_t sub_10006621C(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CompanionLinkDevice();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v6);
  if (sub_1000113A4(v6, 1, v7) == 1)
  {
    return sub_10001B258(v6);
  }

  sub_10001B314(v6, v10);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 16))(v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v10);
}

uint64_t sub_100066388(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CompanionLinkDevice();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v6);
  if (sub_1000113A4(v6, 1, v7) == 1)
  {
    return sub_10001B258(v6);
  }

  sub_10001B314(v6, v10);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v10);
}

uint64_t sub_1000664F4(void *a1, unsigned int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100066568(a1, a2);
  }

  return result;
}

uint64_t sub_100066568(void *a1, unsigned int a2)
{
  v5 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - v7;
  v9 = type metadata accessor for CompanionLinkDevice();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v8);
  if (sub_1000113A4(v8, 1, v9) == 1)
  {
    return sub_10001B258(v8);
  }

  sub_10001B314(v8, v12);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v12, a2, ObjectType, v14);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v12);
}

void sub_1000666E0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 40))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient interrupted", v6, 2u);
    }
  }
}

uint64_t sub_10006681C(uint64_t a1, void (*a2)(void))
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

void sub_100066870()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 40);
    ObjectType = swift_getObjectType();
    (*(v1 + 48))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003420(v3, qword_1000A1BC0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "CompanionLinkClient invalidated", v6, 2u);
    }
  }
}

uint64_t sub_1000669AC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

uint64_t sub_100066A14(void *a1)
{
  v3 = sub_10000FC6C(&qword_1000994B8, &qword_100075A30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for CompanionLinkDevice();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005906C(a1, v6);
  if (sub_1000113A4(v6, 1, v7) == 1)
  {
    return sub_10001B258(v6);
  }

  sub_10001B314(v6, v10);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 56))(v10, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  return sub_100015230(v10);
}

void CompanionLinkClient.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v8[4] = sub_100066CC4;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100025214;
  v8[3] = &unk_100090BF0;
  v7 = _Block_copy(v8);

  sub_1000485AC(a1);

  [v5 activateWithCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_100066C7C()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100066CC4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_100066D08(a1, v2);
}

uint64_t sub_100066CF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100066D08(uint64_t a1, void (*a2)(uint64_t))
{
  if (a2)
  {

    a2(a1);

    sub_100010FE8(a2);
    return;
  }

  if (a1)
  {
    v22 = _convertErrorToNSError(_:)();
    if (*(v2 + 24) != 1)
    {
      goto LABEL_27;
    }

    v5 = [v22 domain];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [v22 code];
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (v9 != 4099)
    {
LABEL_27:
      if (qword_10009B828 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      v21 = sub_100003420(v20, qword_1000A1BC0);
      __chkstk_darwin(v21);
      sub_1000650F0(sub_100067094, 0, sub_10001132C);

      return;
    }

    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003420(v16, qword_1000A1BC0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "CompanionLinkClient invalidated before activation completion", v19, 2u);
    }
  }

  else
  {
    if (qword_10009B828 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003420(v13, qword_1000A1BC0);
    v22 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v22, v14, "CompanionLinkClient activated", v15, 2u);
    }
  }
}

uint64_t CompanionLinkClient.__deallocating_deinit()
{
  sub_10005D320(v0 + 32);
  v1 = sub_100063D04();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t sub_100067170(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000671E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void (*RapportStreamServer.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportStreamServer.__allocating_init(server:)(void *a1)
{
  sub_100063D04();
  v2 = swift_allocObject();
  RapportStreamServer.init(server:)(a1);
  return v2;
}

void *RapportStreamServer.init(server:)(void *a1)
{
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RapportStreamSession();
  v1[5] = Dictionary.init(dictionaryLiteral:)();
  v1[2] = a1;
  sub_10001203C();
  v3 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10006773C;
  v16 = v3;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100052C90;
  v14 = &unk_100090DD8;
  v4 = _Block_copy(&v11);
  v5 = a1;

  [v5 setInvalidationHandler:v4];
  _Block_release(v4);
  sub_10001203C();
  v6 = swift_allocObject();
  swift_weakInit();
  v15 = sub_10006785C;
  v16 = v6;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000679C0;
  v14 = &unk_100090E00;
  v7 = _Block_copy(&v11);

  [v5 setStreamAcceptHandler:v7];
  _Block_release(v7);
  sub_10001203C();
  v8 = swift_allocObject();
  swift_weakInit();

  v15 = sub_100067AFC;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100067C88;
  v14 = &unk_100090E28;
  v9 = _Block_copy(&v11);

  [v5 setStreamPrepareHandlerEx:v9];
  _Block_release(v9);

  return v1;
}

uint64_t sub_1000676B0()
{
  swift_weakDestroy();
  sub_10001203C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000676E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10006775C();
  }

  return result;
}

uint64_t sub_100067744(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006775C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000677E0(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100067864(a1, a2, a3);
  }

  return result;
}

void sub_100067864(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_beginAccess();
  v7 = sub_100068658(a1);
  swift_endAccess();
  if (!v7)
  {
    type metadata accessor for RapportStreamSession();
    swift_allocObject();
    v7 = RapportStreamSession.init(session:)(a1);
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v3, v7, a2, a3, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10004B318();
    v10 = sub_10005C80C(-6714, 0xD00000000000001DLL, 0x800000010007C280);
    a2();
  }
}

void sub_1000679C0(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

uint64_t sub_100067A78(void *a1, void *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_100067B04(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100067B04(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for RapportStreamSession();
  swift_allocObject();
  v6 = a1;
  v7 = RapportStreamSession.init(session:)(v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v3 + 32);
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 24))(v3, v7, ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease();
    swift_beginAccess();

    v13 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v3 + 40);
    sub_100068738(v7, v6, isUniquelyReferenced_nonNull_native, &qword_10009C030, &qword_1000790F8);
    *(v3 + 40) = v16;
    swift_endAccess();
    if (v12)
    {
      if (a2)
      {
        *a2 = _convertErrorToNSError(_:)();
      }

      sub_100068850(v10, 1);
      LOBYTE(v10) = 0;
    }

    else
    {
    }
  }

  else
  {

    LOBYTE(v10) = 1;
  }

  return v10 & 1;
}

uint64_t sub_100067C88(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6 & 1;
}

uint64_t RapportStreamServer.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPStreamServer) init];
  sub_100063D04();
  v1 = swift_allocObject();
  RapportStreamServer.init(server:)(v0);
  return v1;
}

id RapportStreamSession.messenger.getter@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) messenger];
  if (result)
  {
    v4 = &protocol witness table for AnyRapportMessageable;
    v5 = &type metadata for AnyRapportMessageable;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v5;
  a1[4] = v4;
  return result;
}

uint64_t RapportStreamServer.messenger.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100067E64(a1, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_10000FCB4(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    sub_100003458(v8);
  }

  else
  {
    sub_100067ED4(v8);
    v6 = 0;
  }

  [v3 setMessenger:v6];
  swift_unknownObjectRelease();
  return sub_100067ED4(a1);
}

uint64_t sub_100067E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FC6C(&qword_10009A888, "bc");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067ED4(uint64_t a1)
{
  v2 = sub_10000FC6C(&qword_10009A888, "bc");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*RapportStreamServer.messenger.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10005CC98(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  RapportStreamSession.messenger.getter(v3);
  return sub_100067FA0;
}

void sub_100067FA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100067E64(*a1, v2 + 40);
    RapportStreamServer.messenger.setter(v2 + 40);
    sub_100067ED4(v2);
  }

  else
  {
    RapportStreamServer.messenger.setter(*a1);
  }

  free(v2);
}

void RapportStreamServer.serviceType.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setServiceType:v4];
}

void (*RapportStreamServer.serviceType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = RapportStreamServer.serviceType.getter();
  a1[1] = v3;
  return sub_1000680C8;
}

void sub_1000680C8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    RapportStreamServer.serviceType.setter(v3, v2);
  }

  else
  {
    RapportStreamServer.serviceType.setter(*a1, v2);
  }
}

unint64_t RapportStreamSession.streamFlags.setter(unint64_t result)
{
  if (!HIDWORD(result))
  {
    return [*(v1 + 16) setStreamFlags:result];
  }

  __break(1u);
  return result;
}

unint64_t (*RapportStreamServer.streamFlags.modify(void *a1))(unint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamFlags];
  return sub_1000681DC;
}

uint64_t RapportStreamSession.streamQoS.setter(uint64_t result)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return [*(v1 + 16) setStreamQoS:result];
  }

  __break(1u);
  return result;
}

uint64_t (*RapportStreamServer.streamQoS.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamQoS];
  return sub_1000682B4;
}

void RapportStreamServer.activate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100025214;
  v5[3] = &unk_100090E50;
  v4 = _Block_copy(v5);

  [v3 activateWithCompletion:v4];
  _Block_release(v4);
}

unint64_t sub_100068614(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_100039860(a1, v4);
}

uint64_t sub_100068658(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100068614(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v9 = *(*v2 + 24);
  sub_10000FC6C(&qword_10009C030, &qword_1000790F8);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);
  v10 = *(*(v12 + 56) + 8 * v6);
  type metadata accessor for RapportStreamSession();
  _NativeDictionary._delete(at:)();
  *v2 = v12;
  return v10;
}

unint64_t sub_100068738(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_100068614(a2);
  sub_100049830(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  sub_10000FC6C(a4, a5);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v12))
  {
    goto LABEL_5;
  }

  v20 = *v8;
  v21 = sub_100068614(a2);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    return sub_10003E7B4(v18, a2, a1, v23);
  }

  v24 = v23[7];
  v25 = *(v24 + 8 * v18);
  *(v24 + 8 * v18) = a1;
}

uint64_t sub_100068850(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10006885C()
{
  _Block_release(*(v0 + 16));
  sub_10001203C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000688A8()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_1000A1BC0);
  sub_100003420(v0, qword_1000A1BC0);
  return Logger.init(subsystem:category:)();
}

uint64_t RapportStreamSession.__allocating_init(session:)(void *a1)
{
  sub_100049BC8();
  v2 = swift_allocObject();
  RapportStreamSession.init(session:)(a1);
  return v2;
}

uint64_t RapportStreamSession.delegate.setter(uint64_t a1, uint64_t a2)
{
  sub_10006A9E4();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RapportStreamSession.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_10005CC98(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 32);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_10005F1B0;
}

uint64_t RapportStreamSession.init(session:)(void *a1)
{
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10006A92C;
  v23 = v2;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100052C90;
  v21 = &unk_100090EC8;
  v4 = _Block_copy(&v18);
  v5 = a1;

  sub_100060270(v6, "setFlowControlWriteChangedHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_100068E68;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v7;
  v21 = &unk_100090EF0;
  _Block_copy(&v18);
  v8 = sub_100060288();
  sub_100060270(v8, "setInvalidationHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_100068F1C;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v9;
  v21 = &unk_100090F18;
  _Block_copy(&v18);
  sub_100060288();
  RPStreamSessionSetDisconnectHandler(v5, v4);
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_10006905C;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100069160;
  v21 = &unk_100090F40;
  _Block_copy(&v18);
  v10 = sub_100060288();
  sub_100060270(v10, "setReceivedEventHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_1000692EC;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100069404;
  v21 = &unk_100090F68;
  _Block_copy(&v18);
  v11 = sub_100060288();
  sub_100060270(v11, "setReceivedRequestHandler:");
  _Block_release(v4);
  sub_10005DF74();
  sub_100060238();
  v22 = sub_100069584;
  v23 = v4;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v12;
  v21 = &unk_100090F90;
  _Block_copy(&v18);
  v13 = sub_100060288();
  sub_100060270(v13, "setStatusChangedHandler:");
  _Block_release(v4);
  v14 = sub_10005DF74();
  swift_weakInit();

  v22 = sub_100069618;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  sub_10005DF60();
  v20 = v15;
  v21 = &unk_100090FB8;
  v16 = _Block_copy(&v18);

  [v5 setConnectionReadyHandler:v16];
  _Block_release(v16);

  return v1;
}

uint64_t sub_100068DC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068DFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068E14(uint64_t a1, void (*a2)(void))
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_100068E98()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068F4C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100068FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100069064(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100069064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 32);
    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = Dictionary.init(dictionaryLiteral:)();
    }

    ObjectType = swift_getObjectType();
    v11 = *(v8 + 24);

    v11(v4, a3, v9, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v9, v10, a4);
}

uint64_t sub_100069248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000692F4(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_1000692F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v6 + 32);
    v16 = a3;
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = Dictionary.init(dictionaryLiteral:)();
    }

    ObjectType = swift_getObjectType();
    v15 = *(v12 + 32);

    v15(v6, v16, v13, a5, a6, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  v8(v9, v11, v12, a4, sub_10001375C, v14);
}

uint64_t sub_100069538()
{
  sub_100060254();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000695A0();
  }

  return result;
}

uint64_t sub_1000695A0()
{
  sub_100060254();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100069648()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 48))(v0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RapportStreamSession.__allocating_init()()
{
  v0 = [objc_allocWithZone(RPStreamSession) init];
  sub_100049BC8();
  v1 = swift_allocObject();
  RapportStreamSession.init(session:)(v0);
  return v1;
}

uint64_t RapportStreamSession.deinit()
{
  RapportStreamSession.cancel()();

  sub_10005D320(v0 + 24);
  return v0;
}

Swift::Void __swiftcall RapportStreamSession.cancel()()
{
  [*(v0 + 16) invalidate];
  sub_10006A9E4();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t RapportStreamSession.__deallocating_deinit()
{
  RapportStreamSession.deinit();
  v0 = sub_100049BC8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t RapportStreamSession.serviceType.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.serviceType.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

uint64_t RapportStreamSession.delegatedProcessUPID.modify(void *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v3;
  *a1 = [v3 delegatedProcessUPID];
  return sub_10006A97C();
}

uint64_t RapportStreamSession.messenger.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100067E64(a1, v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_10000FCB4(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    sub_100003458(v8);
  }

  else
  {
    sub_10005235C(v8, &qword_10009A888, "bc");
    v6 = 0;
  }

  [v3 setMessenger:v6];
  swift_unknownObjectRelease();
  return sub_10005235C(a1, &qword_10009A888, "bc");
}

void (*RapportStreamSession.messenger.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_10005CC98(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  RapportStreamSession.messenger.getter(v3);
  return sub_100069A00;
}

void sub_100069A00(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100067E64(*a1, v2 + 40);
    RapportStreamSession.messenger.setter(v2 + 40);
    sub_10005235C(v2, &qword_10009A888, "bc");
  }

  else
  {
    RapportStreamSession.messenger.setter(*a1);
  }

  free(v2);
}

uint64_t RapportStreamSession.nwClientID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) nwClientID];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return sub_10001137C(a1, v5, 1, v6);
}

uint64_t RapportStreamSession.streamFlags.modify(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamFlags];
  return sub_10006A97C();
}

uint64_t RapportStreamSession.streamID.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.streamID.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

uint64_t sub_100069BC0(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v4);
  }

  v7 = a1[1];

  a3(v5, v4);
}

uint64_t RapportStreamSession.streamKey.getter()
{
  v1 = [*(v0 + 16) streamKey];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t RapportStreamSession.streamQoS.modify(void *a1)
{
  a1[1] = v1;
  *a1 = [*(v1 + 16) streamQoS];
  return sub_10006A97C();
}

id (*RapportStreamSession.streamType.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 streamType];
  return sub_100069D84;
}

id (*RapportStreamSession.trafficFlags.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  *(a1 + 8) = [v3 trafficFlags];
  return sub_100069E10;
}

uint64_t sub_100069E30(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

void sub_100069EA4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 *a3];
}

uint64_t RapportStreamSession.trafficSessionID.modify(uint64_t *a1)
{
  a1[2] = v1;
  *a1 = RapportStreamSession.trafficSessionID.getter();
  a1[1] = v3;
  return sub_10006A97C();
}

void sub_100069FA0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + 16);
  v10[4] = a1;
  v10[5] = a2;
  sub_100011C68();
  sub_100011D20();
  v10[2] = v8;
  v10[3] = v7;
  v9 = _Block_copy(v10);

  [v6 *a4];
  _Block_release(v9);
}

void RapportStreamSession.sendEvent(id:event:options:completion:)()
{
  v3 = sub_10006A9C0();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  isa = v4.super.isa;
  if (v1)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v1 = v4.super.isa;
  }

  if (v2)
  {
    v7[4] = v2;
    v7[5] = v0;
    sub_100011C68();
    sub_100011D20();
    v7[2] = v6;
    v7[3] = &unk_100091030;
    v2 = _Block_copy(v7);
  }

  sub_10005DFB4(v4.super.isa, "sendEventID:event:options:completion:");
  _Block_release(v2);
}

void RapportStreamSession.sendRequest(id:request:options:response:)()
{
  v3 = sub_10006A9C0();
  v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v7[4] = v2;
  v7[5] = v0;
  sub_100011C68();
  v7[1] = 1107296256;
  v7[2] = sub_10005D930;
  v7[3] = &unk_100091058;
  v5 = _Block_copy(v7);

  sub_10005DFB4(v6, "sendRequestID:request:options:responseHandler:");
  _Block_release(v5);
}

uint64_t sub_10006A8CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

NSString sub_10006A9C0()
{
  v2 = *(v0 + 16);

  return String._bridgeToObjectiveC()();
}

uint64_t sub_10006A9E4()
{

  return swift_beginAccess();
}

void sub_10006AA04(Swift::String a1@<X1:X0>, uint64_t a2@<X8>)
{
  *(v2 - 112) = a2 & 0xFFFF0000FFFFFFFFLL | 0x272000000000;
  *(v2 - 104) = 0xE600000000000000;

  String.append(_:)(a1);
}

void sub_10006AA24()
{
}

uint64_t DarwinNotification.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_10006AA98@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_100048A38;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000485AC(v4);
}

uint64_t sub_10006AB2C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_10006B390;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_1000485AC(v3);
  return sub_100010FE8(v8);
}

uint64_t DarwinNotification.handler.getter()
{
  sub_10006B3E8();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1000485AC(v1);
  return v1;
}

uint64_t DarwinNotification.handler.setter(uint64_t a1, uint64_t a2)
{
  sub_10006B400();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_100010FE8(v5);
}

uint64_t DarwinNotification.__allocating_init(check:)(uint64_t a1, uint64_t a2)
{
  sub_10006B3D8();
  v4 = swift_allocObject();
  DarwinNotification.init(check:)(a1, a2);
  return v4;
}

uint64_t DarwinNotification.init(check:)(uint64_t a1, uint64_t a2)
{
  sub_10006B3BC(a1, a2);
  v4 = String.utf8CString.getter();
  sub_10006B41C();
  notify_register_check((v4 + 32), v2);
  swift_endAccess();

  sub_10006AD74();
  return v3;
}

uint64_t sub_10006AD74()
{
  sub_10006B3E8();
  v1 = *(v0 + 32);
  state64 = DarwinNotification.state.getter();
  notify_get_state(v1, &state64);
  return DarwinNotification.state.setter(state64);
}

uint64_t DarwinNotification.__allocating_init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10006B3D8();
  v6 = swift_allocObject();
  DarwinNotification.init(dispatch:queue:)(a1, a2, a3);
  return v6;
}

uint64_t DarwinNotification.init(dispatch:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10006B3BC(a1, a2);
  v6 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_10006AFC8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10006B05C;
  v11[3] = &unk_1000910E8;
  v7 = _Block_copy(v11);

  v8 = a3;

  v9 = String.utf8CString.getter();

  sub_10006B41C();
  notify_register_dispatch((v9 + 32), v3, v8, v7);
  swift_endAccess();

  _Block_release(v7);

  sub_10006AD74();
  return v4;
}

uint64_t sub_10006AF90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AFC8()
{
  sub_10006B3E8();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10006B3E8();
    v2 = *(v1 + 40);
    if (v2)
    {
      v3 = *(v1 + 48);
      sub_1000485AC(*(v1 + 40));

      v2(v4);
      return sub_100010FE8(v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10006B05C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10006B0B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DarwinNotification.state.getter()
{
  sub_10006B3E8();
  v1 = *(v0 + 32);
  sub_10006B41C();
  notify_get_state(v1, (v0 + 56));
  swift_endAccess();
  return *(v0 + 56);
}

uint64_t DarwinNotification.state.setter(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(v1 + 56) != a1)
  {
    *(v1 + 56) = a1;
    sub_10006B3E8();
    notify_set_state(*(v1 + 32), a1);
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = String.utf8CString.getter();
    notify_post((v6 + 32));
  }

  return result;
}

Swift::Void __swiftcall DarwinNotification.cancel()()
{
  sub_10006B400();
  v1 = *(v0 + 32);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 32) = -1;
  }
}

void *DarwinNotification.deinit()
{
  DarwinNotification.cancel()();
  v1 = v0[3];

  v2 = v0[6];
  sub_100010FE8(v0[5]);
  return v0;
}

uint64_t DarwinNotification.__deallocating_deinit()
{
  DarwinNotification.deinit();
  v0 = sub_10006B3D8();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10006B234@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DarwinNotification.state.getter();
  *a2 = result;
  return result;
}

uint64_t (*DarwinNotification.state.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DarwinNotification.state.getter();
  return sub_10006B2D0;
}

uint64_t sub_10006B358()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006B390()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10006B3BC(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = -1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 40) = 0;
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10006B3E8()
{

  return swift_beginAccess();
}

uint64_t sub_10006B400()
{

  return swift_beginAccess();
}

uint64_t sub_10006B41C()
{

  return swift_beginAccess();
}

uint64_t static DispatchTimeInterval.seconds(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0)
  {
    goto LABEL_39;
  }

  if (a2 >= 9223372040.0)
  {
    if (a2 >= 9.22337204e12)
    {
      if (a2 >= 9.22337204e15)
      {
        sub_10006D354();
        if (v5)
        {
          sub_10006D438();
          if (!v9 & v8)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v13 <= -9.22337204e18)
          {
LABEL_38:
            __break(1u);
LABEL_39:
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          sub_10006D538(v13);
          v6 = &enum case for DispatchTimeInterval.seconds(_:);
        }

        else
        {
          v6 = &enum case for DispatchTimeInterval.never(_:);
        }
      }

      else
      {
        sub_10006D438();
        if (!v9 & v8)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v11 <= -9.22337204e18)
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_10006D354();
        if (!v5)
        {
          goto LABEL_36;
        }

        sub_10006D538(v12);
        v6 = &enum case for DispatchTimeInterval.milliseconds(_:);
      }
    }

    else
    {
      sub_10006D438();
      if (!v9 & v8)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v7 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_10006D354();
      if (!v5)
      {
        goto LABEL_33;
      }

      sub_10006D538(v10);
      v6 = &enum case for DispatchTimeInterval.microseconds(_:);
    }

    goto LABEL_25;
  }

  v3 = a2 * 1000000000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_10006D354();
  if (!v5)
  {
    goto LABEL_30;
  }

  sub_10006D538(v4);
  v6 = &enum case for DispatchTimeInterval.nanoseconds(_:);
LABEL_25:
  v14 = *v6;
  v15 = type metadata accessor for DispatchTimeInterval();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:)(Swift::Double a1)
{
  sub_10006D308();
  sub_10006D478();
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = sub_100011C54(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100011D10();
  v11 = (v9 - v10);
  __chkstk_darwin(v12);
  v13 = sub_10006D5D0();
  v14 = sub_100011C54(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100011D10();
  v21 = v19 - v20;
  __chkstk_darwin(v22);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v16 + 8);
  v23(v21, v13);
  (*(v6 + 104))(v1, enum case for DispatchTimeInterval.never(_:), v3);
  sub_100057048(v11);
  sub_10006D484();
  v24 = *(v6 + 8);
  v24(v11, v3);
  v24(v1, v3);
  v23(v2, v13);
  sub_10006D374();
}

Swift::Void __swiftcall OS_dispatch_source_timer.reset(_:interval:)(Swift::Double _, Swift::Double interval)
{
  sub_10006D308();
  v5 = v4;
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = sub_100011C54(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100011D10();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v16 = sub_10006D5D0();
  v17 = sub_100011C54(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100011D10();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = *(v19 + 8);
  v26(v24, v16);
  static DispatchTimeInterval.seconds(_:)(v2, v5);
  sub_100057048(v14);
  sub_10006D484();
  v27 = *(v9 + 8);
  v27(v14, v6);
  v27(v2, v6);
  v26(v3, v16);
  sub_10006D374();
}

uint64_t sub_10006B9E4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = sub_100011C54(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100011CD4();
  v8 = v7 - v6;
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v8, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v9 = static OS_dispatch_queue.global(qos:)();
  result = (*(v3 + 8))(v8, v0);
  qword_1000A1A38 = v9;
  return result;
}

id static OS_dispatch_queue.defaultPriority.getter()
{
  if (qword_1000A1A30 != -1)
  {
    sub_10006D334();
  }

  v1 = qword_1000A1A38;

  return v1;
}

void OS_dispatch_queue.after(_:closure:)()
{
  sub_10006D308();
  v3 = v2;
  v5 = v4;
  sub_10006D478();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100011C54(v6);
  v30 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100011CD4();
  sub_10006D418();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100011C54(v11);
  v28 = v13;
  v29 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100011CD4();
  v18 = v17 - v16;
  v27 = type metadata accessor for DispatchTime();
  v19 = *(v27 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v27);
  sub_100011D10();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_10006D428();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v19 + 8);
  v25(v23, v27);
  v31[4] = v5;
  v31[5] = v3;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 1107296256;
  v31[2] = sub_100052C90;
  v31[3] = &unk_1000911C0;
  v26 = _Block_copy(v31);

  static DispatchQoS.unspecified.getter();
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);
  (*(v30 + 8))(v0, v6);
  (*(v28 + 8))(v18, v29);
  v25(v1, v27);

  sub_10006D374();
}

uint64_t sub_10006BE54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OS_dispatch_queue.once(_:closure:)()
{
  sub_10006D308();
  v52 = v3;
  v53 = v4;
  sub_10006D478();
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_100011C54(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10001B850();
  v55 = v9;
  sub_10006D39C();
  __chkstk_darwin(v10);
  sub_100049C80();
  sub_10006D390();
  v54 = type metadata accessor for DispatchTime();
  v11 = sub_100011C54(v54);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10001B850();
  sub_10006D2F8();
  v15 = __chkstk_darwin(v14);
  v23 = sub_10006D2AC(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  v24 = sub_100011C54(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100011CD4();
  v51 = sub_10006D3A8();
  v27 = sub_100011C54(v51);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100011CD4();
  sub_10006D418();
  v30 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v31 = sub_100011C54(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100011CD4();
  sub_10006D544();
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  sub_10006D27C();
  sub_10006C2C0(v34, v35);
  v36 = sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10006D5B0();
  v37 = sub_10006D364();
  v38(v37, v30);
  swift_getObjectType();
  v39 = swift_allocObject();
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v30;
  v56[4] = sub_10006C30C;
  v56[5] = v39;
  v56[0] = _NSConcreteStackBlock;
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v56[2] = v40;
  v56[3] = &unk_100091210;
  v41 = _Block_copy(v56);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D570();
  _Block_release(v41);
  v42 = sub_10006D52C();
  v43(v42);
  sub_10006D324();
  v44(v0, v51);

  sub_10006D520();
  static DispatchTime.now()();
  sub_10006D50C();
  + infix(_:_:)();
  v45 = sub_10006D3E0();
  (v41)(v45);
  v46 = sub_10006D3C4();
  v47(v46);
  sub_100057048(v55);
  sub_10006D3FC();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v48 = *(v0 + 8);
  v48(v36, &qword_100077628);
  v49 = sub_10006D500();
  (v48)(v49);
  (v41)(v2, v1);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t sub_10006C2C0(unint64_t *a1, void (*a2)(uint64_t))
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

void OS_dispatch_queue.wallOnce(_:closure:)()
{
  sub_10006D308();
  v52 = v3;
  v53 = v4;
  sub_10006D478();
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = sub_100011C54(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10001B850();
  v55 = v9;
  sub_10006D39C();
  __chkstk_darwin(v10);
  sub_100049C80();
  sub_10006D390();
  v54 = type metadata accessor for DispatchWallTime();
  v11 = sub_100011C54(v54);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10001B850();
  sub_10006D2F8();
  v15 = __chkstk_darwin(v14);
  v23 = sub_10006D2AC(v15, v16, v17, v18, v19, v20, v21, v22, v50);
  v24 = sub_100011C54(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100011CD4();
  v51 = sub_10006D3A8();
  v27 = sub_100011C54(v51);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100011CD4();
  sub_10006D418();
  v30 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v31 = sub_100011C54(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100011CD4();
  sub_10006D544();
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  sub_10006D27C();
  sub_10006C2C0(v34, v35);
  v36 = sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10006D5B0();
  v37 = sub_10006D364();
  v38(v37, v30);
  swift_getObjectType();
  v39 = swift_allocObject();
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v30;
  v56[4] = sub_10006D250;
  v56[5] = v39;
  v56[0] = _NSConcreteStackBlock;
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v56[2] = v40;
  v56[3] = &unk_100091260;
  v41 = _Block_copy(v56);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D570();
  _Block_release(v41);
  v42 = sub_10006D52C();
  v43(v42);
  sub_10006D324();
  v44(v0, v51);

  sub_10006D520();
  static DispatchWallTime.now()();
  sub_10006D50C();
  + infix(_:_:)();
  v45 = sub_10006D3E0();
  (v41)(v45);
  v46 = sub_10006D3C4();
  v47(v46);
  sub_100057048(v55);
  sub_10006D3FC();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v48 = *(v0 + 8);
  v48(v36, &qword_100077628);
  v49 = sub_10006D500();
  (v48)(v49);
  (v41)(v2, v1);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t sub_10006C764()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10006C7A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  (*(v0 + 16))();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

void OS_dispatch_queue.timer(_:interval:closure:)()
{
  sub_10006D308();
  v3 = sub_10006D4A8(v1, v2);
  v4 = sub_100011C54(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10001B850();
  v51 = v7;
  sub_10006D39C();
  __chkstk_darwin(v8);
  sub_100049C80();
  sub_10006D390();
  v9 = type metadata accessor for DispatchTime();
  v10 = sub_100011C54(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10001B850();
  sub_10006D2F8();
  v14 = __chkstk_darwin(v13);
  v22 = sub_10006D2AC(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  v23 = sub_100011C54(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100011CD4();
  v50 = sub_10006D3A8();
  v26 = sub_100011C54(v50);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100011CD4();
  v31 = (v30 - v29);
  v32 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v33 = sub_100011C54(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100011CD4();
  sub_10006D544();
  v36 = sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  v52[0] = _swiftEmptyArrayStorage;
  sub_10006D27C();
  sub_10006C2C0(v37, v38);
  sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v39 = sub_10006D364();
  v40(v39, v32);
  swift_getObjectType();
  sub_10006D2D0();
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v52[2] = v41;
  v52[3] = &unk_100091288;
  v42 = _Block_copy(v52);

  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D590();
  _Block_release(v42);
  v43 = sub_10006D52C();
  v44(v43);
  sub_10006D324();
  v45(v31, v50);

  sub_10006D520();
  static DispatchTime.now()();
  sub_10006D4EC();
  + infix(_:_:)();
  v46 = sub_10006D4D8();
  v31(v46);
  sub_10006D550();
  sub_100057048(v51);
  sub_10006D460();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v47 = sub_10006D448();
  v51(v47);
  v48 = sub_10006D500();
  v51(v48);
  (v31)(v36, v0);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

void OS_dispatch_queue.wallTimer(_:interval:closure:)()
{
  sub_10006D308();
  v3 = sub_10006D4A8(v1, v2);
  v4 = sub_100011C54(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10001B850();
  v51 = v7;
  sub_10006D39C();
  __chkstk_darwin(v8);
  sub_100049C80();
  sub_10006D390();
  v9 = type metadata accessor for DispatchWallTime();
  v10 = sub_100011C54(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10001B850();
  sub_10006D2F8();
  v14 = __chkstk_darwin(v13);
  v22 = sub_10006D2AC(v14, v15, v16, v17, v18, v19, v20, v21, v49);
  v23 = sub_100011C54(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100011CD4();
  v50 = sub_10006D3A8();
  v26 = sub_100011C54(v50);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100011CD4();
  v31 = (v30 - v29);
  v32 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v33 = sub_100011C54(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100011CD4();
  sub_10006D544();
  v36 = sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  v52[0] = _swiftEmptyArrayStorage;
  sub_10006D27C();
  sub_10006C2C0(v37, v38);
  sub_10006D5F0();
  sub_10006D608(&unk_10009C1B0);
  sub_10006D294();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  v39 = sub_10006D364();
  v40(v39, v32);
  swift_getObjectType();
  sub_10006D2D0();
  sub_10006D264(COERCE_DOUBLE(1107296256));
  v52[2] = v41;
  v52[3] = &unk_1000912B0;
  v42 = _Block_copy(v52);

  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  sub_10006D590();
  _Block_release(v42);
  v43 = sub_10006D52C();
  v44(v43);
  sub_10006D324();
  v45(v31, v50);

  sub_10006D520();
  static DispatchWallTime.now()();
  sub_10006D4EC();
  + infix(_:_:)();
  v46 = sub_10006D4D8();
  v31(v46);
  sub_10006D550();
  sub_100057048(v51);
  sub_10006D460();
  OS_dispatch_source_timer.schedule(wallDeadline:repeating:leeway:)();
  v47 = sub_10006D448();
  v51(v47);
  v48 = sub_10006D500();
  v51(v48);
  (v31)(v36, v0);
  OS_dispatch_source.resume()();
  sub_10006D4CC();
  sub_10006D374();
}

uint64_t OS_dispatch_semaphore.wait(_:)()
{
  sub_10006D478();
  v0 = type metadata accessor for DispatchTime();
  v1 = sub_100011C54(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100011D10();
  v8 = (v6 - v7);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v13 = OS_dispatch_semaphore.wait(timeout:)();
  v12(v11, v0);
  return v13 & 1;
}

uint64_t static OS_dispatch_source.makeSignalSourceIgnored(signal:queue:)(int a1)
{
  v2 = SIG_IGN.getter();
  signal(a1, v2);
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  return static OS_dispatch_source.makeSignalSource(signal:queue:)();
}

void sub_10006D138(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  *a4 = OS_dispatch_source_data_replace.doubleData.getter();
}

void sub_10006D170(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a2;
  OS_dispatch_source_data_replace.doubleData.setter(*a1);
}

void (*OS_dispatch_source_data_replace.doubleData.modify(uint64_t *a1, uint64_t a2))(Swift::UInt *a1)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = OS_dispatch_source.data.getter();
  return sub_10006D1FC;
}

void sub_10006D1FC(Swift::UInt *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  OS_dispatch_source_data_replace.replace(data:)(*a1);
}

uint64_t sub_10006D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 - 216) = &a9 - v9;

  return type metadata accessor for DispatchWorkItemFlags();
}

void sub_10006D2D0()
{
  v1 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 232);
  *(v0 - 112) = v1;
  *(v0 - 152) = _NSConcreteStackBlock;
}

uint64_t sub_10006D334()
{

  return swift_once();
}

uint64_t sub_10006D3A8()
{

  return type metadata accessor for DispatchQoS();
}

uint64_t sub_10006D3C4()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 104);
  return *(v0 - 192);
}

uint64_t sub_10006D3E0()
{
  v2 = *(v1 - 160);
  v3 = *(v2 + 8);
  *(v1 - 160) = v2 + 8;
  result = v0;
  v5 = *(v1 - 200);
  return result;
}

uint64_t sub_10006D448()
{
  v2 = *(*(v1 - 168) + 8);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t sub_10006D484()
{
  v2 = *(v0 - 104);

  return OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
}

uint64_t sub_10006D4A8(uint64_t a1, uint64_t a2)
{
  *(v3 - 240) = v2;
  *(v3 - 232) = a1;
  *(v3 - 224) = a2;

  return type metadata accessor for DispatchTimeInterval();
}

uint64_t sub_10006D4D8()
{
  v2 = *(v1 - 192);
  v3 = *(*(v1 - 200) + 8);
  return v0;
}

uint64_t sub_10006D550()
{
  v3 = *(v0 - 184);

  return static DispatchTimeInterval.seconds(_:)(v3, v2);
}

uint64_t sub_10006D570()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

uint64_t sub_10006D590()
{

  return OS_dispatch_source.setEventHandler(qos:flags:handler:)();
}

uint64_t sub_10006D5B0()
{
  v2 = *(v0 - 264);

  return static OS_dispatch_source.makeTimerSource(flags:queue:)();
}

uint64_t sub_10006D5D0()
{

  return type metadata accessor for DispatchTime();
}

uint64_t sub_10006D5F0()
{

  return sub_10000FC6C(v0, v1);
}

uint64_t sub_10006D608(unint64_t *a1)
{

  return sub_100018B20(a1, v1, v2);
}

uint64_t sub_10006D6BC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 1) != 30 || v1 == 0)
  {
    return 0;
  }

  v3 = swift_slowAlloc();
  if (!if_indextoname(v1, v3))
  {
    sub_10001B8B0();
    return 0;
  }

  v4 = String.init(cString:)();
  sub_10001B8B0();
  return v4;
}

const char *sub_10006D770()
{
  v12[0].sa_len = *v0;
  memcpy(&v12[0].sa_family, v0 + 1, 0x7FuLL);
  if (v12[0].sa_len)
  {
    sa_len = v12[0].sa_len;
  }

  else
  {
    sa_len = 128;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v4 = getnameinfo(v12, sa_len, v2, 0x401u, v3, 0x20u, 26);
  if (!v4)
  {
    v6 = String.init(cString:)();
    v7 = String.init(cString:)();
    v9 = v8;
    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v11._countAndFlagsBits = v7;
    v11._object = v9;
    String.append(_:)(v11);

    goto LABEL_8;
  }

  result = gai_strerror(v4);
  if (result)
  {
    v6 = String.init(cString:)();
LABEL_8:
    sub_10001B8B0();

    return v6;
  }

  __break(1u);
  return result;
}

double sub_10006D914(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

id sub_10006D9A8()
{
  result = [objc_allocWithZone(type metadata accessor for TimeSyncManager()) init];
  qword_10009C1D0 = result;
  return result;
}

id sub_10006D9DC()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation];
  *v2 = 0;
  v2[8] = -1;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_clocks] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_10006DA70()
{
  v0 = type metadata accessor for Logger();
  sub_1000034A4(v0, qword_10009C1D8);
  sub_100003420(v0, qword_10009C1D8);
  return Logger.init(subsystem:category:)();
}

BOOL sub_10006DAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
  swift_beginAccess();

  sub_10007120C(&qword_10009C428, &qword_100079388);
  v8 = *(*(v3 + v7) + 16);
  sub_100071270(v8, &qword_10009C428, &qword_100079388);
  v9 = *(v3 + v7);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = sub_100071784;
  *(v10 + 40) = v6;
  *(v3 + v7) = v9;
  swift_endAccess();
  return sub_10006DBE4();
}

BOOL sub_10006DBE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation + 8);
  if (v1 != 255)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
    v3 = OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_completions;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      sub_10007157C(v2, v1 & 1);
      v6 = (v4 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v10 = v2;
        v11 = v1 & 1;

        v8(&v10);

        v6 += 2;
        --v5;
      }

      while (v5);
      sub_1000714F8(v2, v1);
    }
  }

  return v1 != 255;
}

void sub_10006DCD4(uint64_t a1, uint64_t a2)
{
  sub_10006DAE8(a1, a2);
  if (!sub_10006DBE4())
  {
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003420(v2, qword_10009C1D8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Activating TimeSync", v5, 2u);
    }

    sub_10006DDDC();
  }
}

void sub_10006DDDC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_10007151C;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100052C90;
  v5[3] = &unk_1000914E0;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 notifyWhenClockManagerIsAvailable:v3];
  _Block_release(v3);
}

void sub_10006DEC0(void *a1)
{
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003420(v2, qword_10009C1D8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TSClockManager is Available", v5, 2u);
  }

  v6 = [objc_opt_self() sharedClockManager];
  [v6 addClient:a1];
  aBlock[0] = 0;
  v7 = [v6 addgPTPServicesWithError:aBlock];
  v8 = aBlock[0];
  if (v7)
  {
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a1;
    aBlock[4] = sub_100071524;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100052C90;
    aBlock[3] = &unk_100091530;
    v11 = _Block_copy(aBlock);
    v12 = v8;
    v13 = a1;

    [v9 notifyWhengPTPManagerIsAvailable:v11];
    _Block_release(v11);
  }

  else
  {
    v14 = aBlock[0];
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __chkstk_darwin(v16);
    sub_1000650F0(sub_10006E5D0, 0, sub_10001132C);
    swift_errorRetain();
    sub_10006E2D4(v15, 1);
  }
}

void sub_10006E198()
{
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003420(v0, qword_10009C1D8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "gPTPManager is Available", v3, 2u);
  }

  v4 = [objc_opt_self() sharedgPTPManager];
  v5 = v4;
  sub_10006E2D4(v4, 0);
}

uint64_t sub_10006E2D4(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  v16 = a2 & 1;
  *(v15 + 32) = a2 & 1;
  aBlock[4] = sub_100071570;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_100091580;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  sub_10007157C(a1, v16);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

BOOL sub_10006E5F4(uint64_t a1, void *a2, char a3)
{
  v4 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v5 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v4 = a2;
  v6 = *(v4 + 8);
  v7 = a3 & 1;
  *(v4 + 8) = a3 & 1;
  sub_1000714F8(v5, v6);
  sub_10007157C(a2, v7);
  return sub_10006DBE4();
}

id sub_10006E654()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006E6F0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003420(v10, qword_10009C1D8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "TimeSync Connection Interrupted", v13, 2u);
  }

  sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_1000714D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_100091490;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
  sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v19);
}

void sub_10006EA84(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation;
  v2 = *(a1 + OBJC_IVAR____TtC15SidecarTimeSyncP33_52E478E0294A7D1A30B0593D640BE43C15TimeSyncManager_activation);
  *v1 = 0;
  v3 = *(v1 + 8);
  *(v1 + 8) = -1;
  sub_1000714F8(v2, v3);
  sub_10006DDDC();
}

uint64_t sub_10006EB34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10009C1C8 != -1)
  {
    swift_once();
  }

  v9 = sub_100003420(v4, qword_10009C1D8);
  v10 = (*(v5 + 16))(v8, v9, v4);
  v11 = *(v2 + 24);
  v12 = (*(v2 + 16) + 24);
  if (v11)
  {
    v12 = &TSNullClockIdentifier;
  }

  if (v11 == 255)
  {
    v12 = &TSNullClockIdentifier;
  }

  v13 = *v12;
  v14 = __chkstk_darwin(v10);
  *(&v19 - 2) = v15;
  __chkstk_darwin(v14);
  *(&v19 - 2) = a1;
  sub_1000650F0(sub_1000716B4, v16, sub_100011C20);
  (*(v5 + 8))(v8, v4);
  result = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v18 == 255 || (v18 & 1) == 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = 1;
    sub_10006F0F4(result, v18);
    swift_errorRetain();
    return sub_10006ED3C();
  }

  return result;
}

BOOL sub_10006ED3C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    v2 = *(v0 + 16);
    swift_beginAccess();
    v3 = *(v0 + 168);
    *(v0 + 168) = _swiftEmptyArrayStorage;
    v4 = *(v3 + 16);
    if (v4)
    {
      sub_100011304(v2, v1 & 1);
      v5 = (v3 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v9 = v2;
        v10 = v1 & 1;

        v7(&v9);

        v5 += 2;
        --v4;
      }

      while (v4);
      sub_10006F0F4(v2, v1);
    }
  }

  return v1 != 255;
}

uint64_t Domain.__allocating_init()()
{
  v0 = swift_allocObject();
  Domain.init()();
  return v0;
}

uint64_t Domain.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  sub_10006D914(__src);
  memcpy((v0 + 32), __src, 0x81uLL);
  *(v0 + 168) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t Domain.deinit()
{
  Domain.deallocate()();
  sub_10006F0F4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 168);

  return v0;
}

Swift::Void __swiftcall Domain.deallocate()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2 != 255 && (v2 & 1) == 0)
  {
    v3 = *(v0 + 16);
    v4 = *(v3 + 24);
    if (v4 != TSNullClockIdentifier)
    {
      sub_100011304(*(v0 + 16), 0);
      if (qword_10009C1C8 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100003420(v5, qword_10009C1D8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v6, v7, "%llx: Deallocating", v8, 0xCu);
      }

      if (qword_10009C1C0 != -1)
      {
        swift_once();
      }

      sub_100049E4C();
      v9 = swift_allocObject();
      *(v9 + 16) = v1;
      *(v9 + 24) = v4;

      sub_10006DCD4(sub_10006FC14, v9);

      sub_10006F0F4(v3, v2);
    }
  }

  sub_1000033E0(0, &qword_100099030, NSError_ptr);
  v10 = sub_100071794(-536870212, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 207);
  v11 = *(v1 + 16);
  *(v1 + 16) = v10;
  v12 = *(v1 + 24);
  *(v1 + 24) = 1;

  sub_10006F0F4(v11, v12);
}

uint64_t sub_10006F0F4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_100011310(result, a2 & 1);
  }

  return result;
}

uint64_t Domain.__deallocating_deinit()
{
  Domain.deinit();

  return _swift_deallocClassInstance(v0, 176, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Domain.bind(peer:)(Swift::String peer)
{
  memset(v2, 0, sizeof(v2));
  sub_10006F1E4();
  if (!v1)
  {
    memcpy(__dst, v2, sizeof(__dst));
    sub_10006F2DC(__dst);
  }
}

uint64_t sub_10006F1E4()
{
  String.utf8CString.getter();
  v0 = StringToSockAddr();

  result = noErr.getter();
  if (v0 != result)
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100071788(v0, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 154);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10006F2DC(const void *a1)
{
  memcpy(__dst, (v1 + 32), 0x81uLL);
  if (sub_1000713E0(__dst) == 1)
  {
    memcpy(v4, a1, 0x80uLL);
    sub_100071710(v4);
    memcpy((v1 + 32), v4, 0x81uLL);
    return sub_10006F3F0();
  }

  else
  {
    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    sub_100071794(-536870212, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, 166);
    return swift_willThrow();
  }
}

uint64_t sub_10006F3F0()
{
  v1 = v0;
  result = sub_10006ED3C();
  if ((result & 1) == 0)
  {
    memcpy(__dst, (v0 + 32), 0x81uLL);
    result = sub_1000713E0(__dst);
    if (result != 1)
    {
      memcpy(__src, __dst, sizeof(__src));
      if (qword_10009C1C8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003420(v3, qword_10009C1D8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v28 = v7;
        *v6 = 136446210;
        memcpy(v26, __dst, sizeof(v26));
        if (__dst[0])
        {
          v8 = __dst[0];
        }

        else
        {
          v8 = 128;
        }

        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = getnameinfo(v26, v8, v9, 0x401u, v10, 0x20u, 26);
        if (v11)
        {
          result = gai_strerror(v11);
          if (!result)
          {
            __break(1u);
            return result;
          }

          v12 = String.init(cString:)();
          v14 = v13;
        }

        else
        {
          v15 = String.init(cString:)();
          v17 = v16;
          v24 = String.init(cString:)();
          v19 = v18;
          v25 = v17;
          v20._countAndFlagsBits = 58;
          v20._object = 0xE100000000000000;
          String.append(_:)(v20);
          v21._countAndFlagsBits = v24;
          v21._object = v19;
          String.append(_:)(v21);

          v12 = v15;
          v14 = v25;
        }

        v22 = sub_100014C58(v12, v14, &v28);

        *(v6 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s: Allocating", v6, 0xCu);
        sub_100003458(v7);
      }

      if (qword_10009C1C0 != -1)
      {
        swift_once();
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v1;
      memcpy((v23 + 24), __src, 0x80uLL);

      sub_10006DCD4(sub_10007165C, v23);
    }
  }

  return result;
}

uint64_t Domain.allocate(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100049E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_beginAccess();

  sub_10007120C(&unk_10009C418, &qword_100079380);
  v7 = *(*(v3 + 168) + 16);
  sub_100071270(v7, &unk_10009C418, &qword_100079380);
  v8 = *(v3 + 168);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_100071430;
  *(v9 + 40) = v6;
  *(v3 + 168) = v8;
  swift_endAccess();
  return sub_10006F3F0();
}

void sub_10006F80C(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v12 = sub_100003420(v7, qword_10009C1D8);
    v13 = (*(v8 + 16))(v11, v12, v7);
    v14 = __chkstk_darwin(v13);
    *&v27[-16] = a4;
    __chkstk_darwin(v14);
    *&v27[-16] = a1;
    sub_1000650F0(sub_100071780, v15, sub_100011C20);
LABEL_14:
    (*(v8 + 8))(v11, v7);
    return;
  }

  v28 = 0;
  if (([a1 removePTPInstanceWithIdentifier:a4 error:&v28] & 1) == 0)
  {
    v21 = v28;
    v22 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v23 = sub_100003420(v7, qword_10009C1D8);
    v24 = (*(v8 + 16))(v11, v23, v7);
    v25 = __chkstk_darwin(v24);
    *&v27[-16] = a4;
    __chkstk_darwin(v25);
    *&v27[-16] = v22;
    sub_1000650F0(sub_100071780, v26, sub_100011C20);

    goto LABEL_14;
  }

  v16 = qword_10009C1C8;
  v17 = v28;
  if (v16 != -1)
  {
    swift_once();
  }

  sub_100003420(v7, qword_10009C1D8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v18, v19, "%llx: Deallocated", v20, 0xCu);
  }
}

uint64_t sub_10006FBE0()
{
  v1 = *(v0 + 16);

  sub_100049E4C();

  return _swift_deallocObject(v2, v3, v4);
}

const char *sub_10006FC20(void *a1, char a2, uint64_t a3, _DWORD *a4)
{
  if (a2)
  {
    return sub_10006EB34(a1);
  }

  v10 = 0;
  v11 = TSNullClockIdentifier;
  if ([a1 addPTPInstance:&v11 error:&v10])
  {
    v6 = v11;
    v7 = v10;
    return sub_10006FD04(v6, a4, 10);
  }

  else
  {
    v8 = v10;
    v9 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10006EB34(v9);
  }
}

const char *sub_10006FD04(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v89 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v81 = *(v83 - 8);
  v9 = *(v81 + 64);
  __chkstk_darwin(v83);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v77 = *(v11 - 8);
  v12 = *(v77 + 64);
  __chkstk_darwin(v11);
  v14 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for DispatchTime();
  v79 = *(v87 - 1);
  v15 = *(v79 + 64);
  v16 = __chkstk_darwin(v87);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v73 - v19;
  v20 = *a2;
  LODWORD(v88) = a2[1];
  v21 = *(a2 + 1);
  v22 = *(a2 + 2);
  memcpy(__dst, a2 + 6, sizeof(__dst));
  v76 = v20;
  v75 = v21;
  v23 = v21;
  v24 = v22;
  if (BYTE1(v20) != 30)
  {
    if (BYTE1(v20) != 2)
    {
LABEL_17:
      sub_1000033E0(0, &qword_100099030, NSError_ptr);
      v48 = 261;
LABEL_18:
      v49 = sub_100071794(-536870212, 0, 0, "SidecarTimeSync/SidecarTimeSync.swift", 37, 2, v48);
      swift_willThrow();
LABEL_19:
      sub_10006EB34(v49);

      return sub_10006ED3C();
    }

    v23 = sub_10006D64C();
  }

  v97[0] = v23;
  v97[1] = v24;
  sub_10006D6BC();
  if (!v25)
  {
    goto LABEL_17;
  }

  v74 = v4;
  v26 = [objc_opt_self() sharedClockManager];
  v27 = [v26 clockWithClockIdentifier:v89];

  if (!v27)
  {

LABEL_23:
    v50 = v74;
    v51 = v86;
    if (v86)
    {
      sub_1000033E0(0, &qword_1000991A0, OS_dispatch_queue_ptr);
      v88 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v14 = 100;
      v52 = v77;
      (*(v77 + 104))(v14, enum case for DispatchTimeInterval.milliseconds(_:), v11);
      v53 = v78;
      + infix(_:_:)();
      (*(v52 + 8))(v14, v11);
      v79 = *(v79 + 8);
      (v79)(v18, v87);
      v54 = swift_allocObject();
      v55 = v89;
      v54[2] = v50;
      v54[3] = v55;
      memcpy(v54 + 4, a2, 0x80uLL);
      v54[20] = v51;
      v94[1] = sub_1000716A4;
      v94[2] = v54;
      *&v92.sa_len = _NSConcreteStackBlock;
      *&v92.sa_data[6] = 1107296256;
      v93 = sub_100052C90;
      v94[0] = &unk_100091670;
      v56 = _Block_copy(&v92);

      v57 = v80;
      static DispatchQoS.unspecified.getter();
      *&v92.sa_len = _swiftEmptyArrayStorage;
      sub_10006C2C0(&unk_10009A9A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000FC6C(&unk_100099AD0, &qword_100075D58);
      sub_100018B20(&qword_10009A9B0, &unk_100099AD0, &qword_100075D58);
      v58 = v82;
      v59 = v85;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v60 = v88;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v56);

      (*(v84 + 8))(v58, v59);
      (*(v81 + 8))(v57, v83);
      return (v79)(v53, v87);
    }

    sub_1000033E0(0, &qword_100099030, NSError_ptr);
    v48 = 268;
    goto LABEL_18;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {

    goto LABEL_23;
  }

  v29 = v28;
  LOWORD(v90) = 0;
  v30 = String._bridgeToObjectiveC()();

  *&v92.sa_len = 0;
  v87 = v29;
  v31 = [v29 addUnicastUDPv6EtEPortOnInterfaceNamed:v30 withDestinationAddress:v97 allocatedPortNumber:&v90 error:&v92];

  v32 = v74;
  if (!v31)
  {
    v61 = *&v92.sa_len;
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_19;
  }

  v33 = qword_10009C1C8;
  v34 = *&v92.sa_len;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003420(v35, qword_10009C1D8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v36, v37))
  {

LABEL_30:
    type metadata accessor for Clock();
    swift_allocObject();
    v70 = sub_100070780(v87);
    v71 = *(v32 + 16);
    *(v32 + 16) = v70;
    v72 = *(v32 + 24);
    *(v32 + 24) = 0;
    sub_10006F0F4(v71, v72);
    return sub_10006ED3C();
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v96 = v39;
  *v38 = 136446466;
  *&v92.sa_len = v76;
  *&v92.sa_data[2] = v88;
  *&v92.sa_data[6] = v75;
  v93 = v22;
  memcpy(v94, __dst, sizeof(v94));
  if (v76)
  {
    v40 = v76;
  }

  else
  {
    v40 = 128;
  }

  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v43 = getnameinfo(&v92, v40, v41, 0x401u, v42, 0x20u, 26);
  if (!v43)
  {
    v62 = String.init(cString:)();
    v64 = v63;
    v88 = String.init(cString:)();
    v66 = v65;
    v90 = v62;
    v91 = v64;
    v67._countAndFlagsBits = 58;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v68._countAndFlagsBits = v88;
    v68._object = v66;
    String.append(_:)(v68);

    v45 = v90;
    v47 = v91;
    goto LABEL_29;
  }

  result = gai_strerror(v43);
  if (result)
  {
    v45 = String.init(cString:)();
    v47 = v46;
LABEL_29:

    v69 = sub_100014C58(v45, v47, &v96);

    *(v38 + 4) = v69;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Allocated %llx", v38, 0x16u);
    sub_100003458(v39);

    v32 = v74;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_100070690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!__OFSUB__(a4, 1))
  {
    return sub_10006FD04(a2, a3, a4 - 1);
  }

  __break(1u);
  return result;
}

uint64_t Clock.__allocating_init(clockIdentifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Clock.init(clockIdentifier:)(a1);
  return v2;
}

uint64_t Clock.init(clockIdentifier:)(uint64_t a1)
{
  v2 = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 24) = a1;
  *(v1 + 32) = v2;
  *(v1 + 16) = [objc_allocWithZone(TSgPTPClock) initWithClockIdentifier:a1];
  return v1;
}

uint64_t sub_100070780(void *a1)
{
  *(v1 + 32) = TSNullgPTPClockIdentity;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v3 = [a1 clockIdentifier];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  return v1;
}

Swift::UInt64 __swiftcall Clock.domainTimeForMachAbsoluteTime(_:)(Swift::UInt64 a1)
{
  v3 = TSNullgPTPClockIdentity;
  result = [*(v1 + 16) convertFromMachAbsoluteToDomainTime:a1 grandmasterUsed:&v3];
  *(v1 + 32) = v3;
  return result;
}

Swift::UInt64 __swiftcall Clock.machAbsoluteTimeForDomainTime(_:)(Swift::UInt64 a1)
{
  v4 = TSNullgPTPClockIdentity;
  v3 = 0;
  result = [*(v1 + 16) convertFromDomainToMachAbsoluteTime:a1 grandmasterUsed:&v4 portNumber:&v3];
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1000708C4()
{
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    if ((*(v0 + 40) & 1) == 0)
    {
      return sub_100070E58();
    }
  }

  else if (*(v0 + 40))
  {
    return sub_100070914();
  }

  return result;
}

uint64_t sub_100070914()
{
  v61 = type metadata accessor for DispatchTimeInterval();
  v0 = sub_100011C54(v61);
  v59 = v1;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v0);
  v58 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v57 = (&v51 - v6);
  v62 = type metadata accessor for DispatchTime();
  v7 = sub_100011C54(v62);
  v60 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  sub_100011CD4();
  v56 = v12 - v11;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = sub_100011C54(v13);
  v54 = v15;
  v55 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  sub_100011CD4();
  v20 = v19 - v18;
  v21 = type metadata accessor for DispatchQoS();
  v22 = sub_100011C54(v21);
  v51 = v23;
  v52 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_100011CD4();
  v28 = v27 - v26;
  v29 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v30 = sub_100011C54(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_100011CD4();
  v37 = v36 - v35;
  sub_1000033E0(0, &unk_10009B750, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006C2C0(&unk_10009C1A0, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10000FC6C(&unk_10009B760, &qword_100077628);
  sub_100018B20(&unk_10009C1B0, &unk_10009B760, &qword_100077628);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v38 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v32 + 8))(v37, v29);
  swift_getObjectType();
  v39 = swift_allocObject();
  v40 = v53;
  swift_weakInit();
  sub_100049E4C();
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v38;
  aBlock[4] = sub_1000715FC;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100052C90;
  aBlock[3] = &unk_1000915F8;
  v42 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_100056EFC();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v42);
  (*(v54 + 8))(v20, v55);
  (*(v51 + 8))(v28, v52);

  v43 = v56;
  static DispatchTime.now()();
  v44 = v57;
  *v57 = 5;
  v45 = v59;
  v46 = v61;
  (*(v59 + 104))(v44, enum case for DispatchTimeInterval.seconds(_:), v61);
  v47 = v58;
  sub_100057048(v58);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v48 = *(v45 + 8);
  v48(v47, v46);
  v48(v44, v46);
  (*(v60 + 8))(v43, v62);
  OS_dispatch_source.activate()();
  v49 = *(v40 + 48);
  *(v40 + 48) = v38;
  return swift_unknownObjectRelease();
}

uint64_t sub_100070E58()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    v1 = *(v0 + 48);
  }

  *(v0 + 48) = 0;

  return swift_unknownObjectRelease();
}

uint64_t Clock.heartbeat.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return sub_1000708C4();
}

uint64_t (*Clock.heartbeat.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100070F98;
}

uint64_t sub_100070F98(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_1000708C4();
  }

  return result;
}

void sub_100070FCC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = mach_absolute_time();
    v3 = Clock.domainTimeForMachAbsoluteTime(_:)(v2);
    sub_100071604(*(v1 + 32), v2, v3, [*(v1 + 16) lockState]);
    if (qword_10009C1C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003420(v4, qword_10009C1D8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134218752;
      *(v7 + 4) = *(v1 + 24);
      *(v7 + 12) = 2048;
      *(v7 + 14) = *(v1 + 32);

      *(v7 + 22) = 2048;
      *(v7 + 24) = v2;
      *(v7 + 32) = 2048;
      *(v7 + 34) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "%llx: (%llx) %llu -> %llu", v7, 0x2Au);
    }

    else
    {
    }

    if (v3 == TSInvalidTime)
    {
      swift_getObjectType();
      OS_dispatch_source.cancel()();
    }
  }

  else
  {
    swift_getObjectType();
    OS_dispatch_source.cancel()();
  }
}

uint64_t Clock.deinit()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Clock.__deallocating_deinit()
{
  Clock.deinit();

  return _swift_deallocClassInstance(v0, 56, 7);
}

void *sub_10007120C(uint64_t *a1, uint64_t *a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result)
  {
    result = sub_1000712B8(result, v5[2] + 1, 1, v5, a1, a2);
    *v2 = result;
  }

  return result;
}

void *sub_100071270(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = (*v3)[3];
  if (result + 1 > (v4 >> 1))
  {
    result = sub_1000712B8((v4 > 1), result + 1, 1, *v3, a2, a3);
    *v3 = result;
  }

  return result;
}

void *sub_1000712B8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
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

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10000FC6C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 16);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  if (v7)
  {
    if (v12 != a4 || &a4[2 * v10 + 4] <= v12 + 4)
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000FC6C(&unk_100099A90, qword_100075D18);
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1000713E0(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000713FC()
{
  v1 = *(v0 + 24);

  sub_100049E4C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000714A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000714E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000714F8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100071510(a1, a2 & 1);
  }
}

void sub_100071510(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10007152C()
{
  sub_100071510(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 33, 7);
}

id sub_10007157C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100071588()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000715C0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_100049E4C();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_1000715FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100070FCC();
}

uint64_t sub_100071624()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10007166C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 168, 7);
}

unint64_t sub_1000716BC()
{
  result = qword_10009C410;
  if (!qword_10009C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009C410);
  }

  return result;
}

uint64_t sub_100071718(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

id sub_1000717A0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v11 = *a8;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_10005C5E8(v12, v13, a1, a2, a3, 0);
}

void sub_100071B6C(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  v16 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v16];
  v4 = v16;
  if (v3)
  {
    v5 = sub_100071D7C(v3);
    v15 = v4;
    v6 = [NSJSONSerialization dataWithJSONObject:v5 options:7 error:&v15];
    v7 = v15;

    v4 = v7;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v6 = [NSJSONSerialization dataWithJSONObject:v4 options:7 error:0];
  }

LABEL_7:
  v8 = objc_opt_new();
  [v8 setFormatOptions:2163];
  v9 = +[NSTimeZone systemTimeZone];
  [v8 setTimeZone:v9];

  v10 = +[NSDate date];
  v11 = [v8 stringFromDate:v10];
  v12 = [NSString stringWithFormat:@"%s-%@.json", *(*(a1 + 32) + 32), v11];
  v13 = +[_DiagnosticsHandler tmpDir];
  v14 = [NSURL fileURLWithPath:v12 isDirectory:0 relativeToURL:v13];

  [v6 writeToURL:v14 atomically:0];
}

id sub_100071D7C(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100071FDC;
    v10[3] = &unk_100091718;
    v10[4] = v3;
    [v2 enumerateKeysAndObjectsUsingBlock:v10];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100072068;
    v9[3] = &unk_100091740;
    v9[4] = v3;
    [v2 enumerateObjectsUsingBlock:v9];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v1 base64EncodedStringWithOptions:0];
LABEL_11:
    v3 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([NSJSONSerialization isValidJSONObject:v1])
    {
      v5 = v1;
    }

    else
    {
      v5 = [v1 description];
    }

    goto LABEL_11;
  }

  v6 = v1;
  v7 = objc_opt_new();
  [v7 setFormatOptions:2163];
  v8 = +[NSTimeZone systemTimeZone];
  [v7 setTimeZone:v8];

  v3 = [v7 stringFromDate:v6];

LABEL_6:

  return v3;
}

void sub_100071FDC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = sub_100071D7C(a3);
  v6 = *(a1 + 32);
  v7 = sub_100071D7C(v5);

  [v6 setObject:v8 forKeyedSubscript:v7];
}

void sub_100072068(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_100071D7C(a2);
  [v2 addObject:v3];
}

char *sub_1000721C4()
{
  v0 = malloc_type_malloc(0x78uLL, 0x1000040EBE173EBuLL);
  pthread_mutex_init(v0, 0);
  pthread_cond_init((v0 + 64), 0);
  atomic_store(0, v0 + 112);
  return v0;
}

uint64_t sub_10007221C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  atomic_store(1u, (a1 + 112));
  pthread_cond_signal((a1 + 64));

  return pthread_mutex_unlock(a1);
}

pthread_mutex_t *sub_100072268(pthread_mutex_t *result)
{
  v1 = &result[1].__opaque[40];
  v2 = atomic_load(&result[1].__opaque[40]);
  if ((v2 & 1) == 0)
  {
    v3 = result;
    pthread_mutex_lock(result);
    v4 = atomic_load(v1);
    if ((v4 & 1) == 0)
    {
      do
      {
        pthread_cond_wait(&v3[1], v3);
        v5 = atomic_load(&v3[1].__opaque[40]);
      }

      while ((v5 & 1) == 0);
    }

    return pthread_mutex_unlock(v3);
  }

  return result;
}

id sub_1000722E8(unint64_t a1, _BYTE *a2)
{
  v4 = objc_alloc_init(NSMutableString);
  v5 = *a2;
  do
  {
    v6 = a2 + 1;
    if (((1 << v5) & a1) != 0)
    {
      if ([v4 length])
      {
        v7 = " ";
      }

      else
      {
        v7 = "";
      }

      [v4 appendFormat:@"%s%s", v7, v6];
    }

    v8 = &v6[strlen(v6)];
    v9 = *(v8 + 1);
    a2 = v8 + 1;
    v5 = v9;
  }

  while (v9);

  return v4;
}

id RPDataLinkTypeCopyDescription(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_100091760)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

id RPFlowControlStateCopyDescription(unsigned int a1)
{
  if (a1 > 2)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1000917C0)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

id RPStreamQoSCopyDescription(int a1)
{
  if (a1 <= 9)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return [NSString stringWithCString:"Video" encoding:4];
      }

      if (a1 == 3)
      {
        return [NSString stringWithCString:"Voice" encoding:4];
      }
    }

    else
    {
      if (!a1)
      {
        return [NSString stringWithCString:"Default" encoding:4];
      }

      if (a1 == 1)
      {
        return [NSString stringWithCString:"Background" encoding:4];
      }
    }

    return [NSString stringWithCString:"?" encoding:4];
  }

  if (a1 > 11)
  {
    if (a1 == 12)
    {
      return [NSString stringWithCString:"AirPlayScreenVideo" encoding:4];
    }

    if (a1 == 20)
    {
      return [NSString stringWithCString:"NTP" encoding:4];
    }

    return [NSString stringWithCString:"?" encoding:4];
  }

  if (a1 == 10)
  {
    return [NSString stringWithCString:"AirPlayAudio" encoding:4];
  }

  else
  {
    return [NSString stringWithCString:"AirPlayScreenAudio" encoding:4];
  }
}

id RPStreamTypeCopyDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    v1 = "?";
  }

  else
  {
    v1 = (&off_1000917D8)[a1];
  }

  return [NSString stringWithCString:v1 encoding:4];
}

void RPStreamSessionSetDisconnectHandler(void *a1, void *a2)
{
  v5 = a1;
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_retainBlock(v3);
    [v5 performSelector:"setDisconnectHandler:" withObject:v4];
  }
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}