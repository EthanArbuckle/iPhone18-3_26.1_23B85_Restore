void sub_1000022D8(uint64_t a1, void *a2)
{
  v3 = [a2 ae_map:&stru_1000A5FD8];
  (*(*(a1 + 32) + 16))();
}

void sub_100003534(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 status];
  if (v3 < 2)
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[AEAConcreteAirPlayPrimitives stopAirPlayingWithCompletion:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"AEAConcreteAirPlayPrimitives.m" lineNumber:44 description:{@"Should never receve this route setting status %ld", objc_msgSend(v7, "status")}];
  }

  else
  {
    if ((v3 - 3) < 2)
    {
      v4 = *(*(a1 + 32) + 16);
LABEL_7:
      v4();
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v4 = *(*(a1 + 32) + 16);
      goto LABEL_7;
    }

    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[AEAConcreteAirPlayPrimitives stopAirPlayingWithCompletion:]_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"AEAConcreteAirPlayPrimitives.m" lineNumber:57 description:{@"Encountered unknown AirPlay status %ld", objc_msgSend(v7, "status")}];
  }

LABEL_10:
}

void sub_100003B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100003BAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained timerSource];
    v3 = dispatch_source_testcancel(v2);

    WeakRetained = v4;
    if (!v3)
    {
      [v4 timerDidFire];
      WeakRetained = v4;
    }
  }
}

id sub_100003D3C(uint64_t a1)
{
  v2 = [*(a1 + 32) timerSource];
  dispatch_source_cancel(v2);

  v3 = *(a1 + 32);

  return [v3 setFireHandler:0];
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for AEAConcreteEnvironment();
  swift_allocObject();
  v4 = sub_10006B020();
  qword_1000BC4F8 = v4;
  v5 = type metadata accessor for AEAAgent();
  v12[3] = v3;
  v12[4] = &off_1000AB8A0;
  v12[0] = v4;
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  swift_retain_n();
  sub_100060EC0(v12, v9, v11);
  sub_100003F04(v9);
  v6 = objc_allocWithZone(v5);
  v7 = sub_100022B38(v11);

  sub_100003FB4(v12);
  qword_1000BC500 = v7;
  sub_100022DE0();
  CFRunLoopRun();
  return 0;
}

uint64_t sub_100003F04(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B6578, &qword_10007F640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003F6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003FB4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100004004(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004010(uint64_t a1, int a2)
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

uint64_t sub_100004030(uint64_t result, int a2, int a3)
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

uint64_t sub_100004090(uint64_t a1, int a2)
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

uint64_t sub_1000040B0(uint64_t result, int a2, int a3)
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

uint64_t sub_1000040EC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t sub_100004138()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int sub_100004190()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100004200(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100004278(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000042F8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000433C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100004378()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000043CC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100004440(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_1000044AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100004534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000457C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000045BC(uint64_t a1)
{
  v2 = sub_100004708(&qword_1000B7158, type metadata accessor for URLResourceKey);
  v3 = sub_100004708(&qword_1000B7160, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004708(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000047D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000048B0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  result = a2();
  v7 = v6;
  if (v6)
  {
    v8 = result;
    *(a3 + 24) = type metadata accessor for AEAParticipant.Process(0);
    *(a3 + 32) = sub_100004F28();
    v9 = sub_100004F80(a3);
    result = sub_100004FE4(a1, v9);
    *(a3 + 40) = v8 & 1;
    *(a3 + 41) = HIBYTE(v8) & 1;
  }

  else
  {
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  *(a3 + 48) = v7;
  return result;
}

uint64_t sub_100004940()
{
  v1 = OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses;
  v2 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_configurationBuilder + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AEACandidateMatchingParticipantSource()
{
  result = qword_1000B7348;
  if (!qword_1000B7348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004A50()
{
  sub_100004AEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100004AEC()
{
  if (!qword_1000B7358)
  {
    sub_100004B50(&unk_1000B7360, &unk_100081AA0);
    v0 = type metadata accessor for Published.Publisher();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B7358);
    }
  }
}

uint64_t sub_100004B50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100004B98()
{
  v1 = sub_100003F6C(&qword_1000B73F0, &qword_10007FA00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v22 - v4;
  v6 = sub_100003F6C(&qword_1000B73F8, &qword_10007FA08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v22 - v10;
  v12 = *v0;
  v13 = (*v0 + OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_configurationBuilder);
  v14 = *v13;
  v15 = v13[1];
  v16 = OBJC_IVAR____TtC15assessmentagent37AEACandidateMatchingParticipantSource_candidateProcesses;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  v18 = sub_100003F6C(&qword_1000B7400, &unk_10007FA10);
  (*(*(v18 - 8) + 16))(v5, v12 + v16, v18);
  v19 = &v5[*(v1 + 76)];
  *v19 = sub_100004E70;
  v19[1] = v17;
  sub_100004EE0(&qword_1000B7408, &qword_1000B73F0, &qword_10007FA00);
  sub_100004EE0(&qword_1000B7410, &qword_1000B7418, &qword_100081AB0);

  Publisher<>.removeDuplicates()();
  sub_100004E78(v5);
  sub_100004EE0(&qword_1000B7420, &qword_1000B73F8, &qword_10007FA08);
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v7 + 8))(v11, v6);
  return v20;
}

uint64_t sub_100004E38()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100004E78(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B73F0, &qword_10007FA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004EE0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100004B50(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100004F28()
{
  result = qword_1000B7428;
  if (!qword_1000B7428)
  {
    type metadata accessor for AEAParticipant.Process(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7428);
  }

  return result;
}

uint64_t *sub_100004F80(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100004FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AEAParticipant.Process(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000507C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3 - 8, v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v18[-v10];
  v12 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL;
  swift_beginAccess();
  sub_100005AD4(v1 + v12, v11);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_100005B44(v11);
  v15 = *(v1 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_fileName);
  v16 = *(v1 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_fileName + 8);
  URL.appendingPathComponent(_:)();
  (*(v14 + 16))(v8, a1, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  swift_beginAccess();
  sub_100005BAC(v8, v1 + v12);
  return swift_endAccess();
}

uint64_t sub_100005490()
{
  v2 = v0;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v28 - v11;
  v13 = sub_100005A3C((v0 + 16), *(v0 + 40));
  sub_10000507C(v12);
  v14 = *v13;
  sub_10001D88C();
  if (v1)
  {
    return (*(v4 + 8))(v12, v3);
  }

  v16 = *(v4 + 8);
  v16(v12, v3);
  v17 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_backing;
  result = swift_beginAccess();
  if (*(*(v2 + v17) + 16))
  {
    v18 = objc_opt_self();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = 0;
    v20 = [v18 dataWithPropertyList:isa format:200 options:0 error:&v29];

    v21 = v29;
    if (v20)
    {
      v28 = v16;
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_100005A3C((v2 + 16), *(v2 + 40));
      sub_10000507C(v9);
      v26 = *v25;
      sub_10001D6DC();
      v28(v9, v3);
      return sub_100005A80(v22, v24);
    }

    else
    {
      v27 = v21;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1000057C8()
{
  sub_100003FB4(v0 + 2);
  v1 = OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_fileName + 8);

  v4 = *(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad_backing);

  sub_100005B44(v0 + OBJC_IVAR____TtCC15assessmentagent14AEAPolicyStore17WritingScratchpad____lazy_storage___fileURL);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s17WritingScratchpadCMa()
{
  result = qword_1000B7520;
  if (!qword_1000B7520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000058F4()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000059E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000059E4()
{
  if (!qword_1000B7530)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B7530);
    }
  }
}

void *sub_100005A3C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100005A80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100005AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005B44(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100005BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B7620, &qword_100081CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100005C1C()
{
  result = qword_1000B7890;
  if (!qword_1000B7890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7890);
  }

  return result;
}

__n128 sub_100005C78(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100005CCC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100005D1C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (sub_100005E44(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (sub_100005E44(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100005D78(void *a1, void *a2)
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

uint64_t sub_100005DA8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (sub_100005E44(v2, v5))
    {
      if (v3)
      {
        if (v4 && (sub_100005E44(v3, v4) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v4)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100005E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
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

    return 0;
  }

  return 1;
}

__n128 sub_100005ED4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v3 - 2);
      v8 = *v3;
      if (*v4 > 1u)
      {
        v10 = *(v4 - 1);
        v11 = *(v3 - 1);
        if (*v4 == 2)
        {
          if (v8 != 2)
          {
            return 0;
          }

          if (v6 != v7 || v10 != v11)
          {
            v12 = *(v4 - 2);
            v13 = *(v4 - 1);
            v14 = *(v3 - 2);
            v15 = *(v3 - 1);
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return 0;
            }
          }
        }

        else
        {
          if (v8 != 3)
          {
            return 0;
          }

          sub_100006174(*(v3 - 2), *(v3 - 1), 3);
          sub_100006174(v6, v10, 3);
          v16 = sub_100006014(v6, v7);
          sub_100006198(v7, v11, 3);
          sub_100006198(v6, v10, 3);
          if ((v16 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (*v4)
      {
        if (v8 != 1 || v6 != v7)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*v3 || ((v7 ^ v6) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100006174(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

uint64_t sub_100006198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1000061C4(void *a1)
{
  v6 = a1[10];
  v8 = a1[13];
  v10 = a1[16];
  v11 = *(a1[17] + 8);
  v12 = a1[18];
  _s17AEADeltaPublisherVMa();
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = a1[12];
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000062FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v8 = *(a2 + 64);
  v16 = a3;
  v17 = v7;
  v18 = a4;
  v19 = *(a2 + 48);
  v20 = v8;
  v9 = _s13AEACachingMapV22CachingMapSubscriptionCMa();
  v10 = (v4 + *(a2 + 76));
  v11 = *v10;
  v12 = v10[1];

  v13 = sub_100009360(v4, a1, v11, v12);

  *&v17 = v9;
  *(&v17 + 1) = swift_getWitnessTable();
  *&v15 = v13;
  dispatch thunk of Subscriber.receive(subscription:)();
  return sub_100003FB4(&v15);
}

uint64_t sub_10000640C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 176));

  v3 = *(*v0 + 152);
  v13 = v1[10];
  v14 = v1[13];
  v15 = v1[16];
  v16 = *(v1[17] + 8);
  v17 = v1[18];
  _s17AEADeltaPublisherVMa();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 160);
  v6 = v1[12];
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v0 + v5, v7);
  v8 = (v0 + *(*v0 + 168));
  v9 = v8[1];
  sub_10000858C(*v8);
  sub_1000086E0(v0 + *(*v0 + 192));
  v10 = *(v0 + *(*v0 + 200));

  v11 = *(v0 + *(*v0 + 208));

  return v0;
}

uint64_t sub_100006608()
{
  v0 = *sub_10000640C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100006674()
{
  v1 = *(v0 + *(*v0 + 176));
  os_unfair_lock_lock(v1);
  sub_1000066F8(v0);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000066F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 128);
  v7 = *(*(*a1 + 136) + 8);
  v8 = *(*a1 + 144);
  v42 = *(*a1 + 104);
  v43 = v5;
  *&v45 = v5;
  *(&v45 + 1) = v42;
  v41 = v6;
  *&v46 = v6;
  *(&v46 + 1) = v7;
  v48 = v8;
  v47 = v8;
  v38 = _s17AEADeltaPublisherVMa();
  v9 = type metadata accessor for Optional();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  __chkstk_darwin(v9, v11);
  v13 = v37 - v12;
  v14 = *(v3 + 96);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  result = __chkstk_darwin(v15, v18);
  v21 = v37 - v20;
  v22 = *(v3 + 184);
  if ((*(a1 + v22) & 1) == 0)
  {
    v37[0] = v4;
    v37[1] = v1;
    *(a1 + v22) = 1;
    v23 = *(*a1 + 192);
    swift_beginAccess();
    sub_100008670(a1 + v23, &v45);
    if (*(&v46 + 1))
    {
      sub_10000859C(&v45, v44);
      sub_1000086E0(&v45);
      v24 = v44[4];
      sub_100005A3C(v44, v44[3]);
      v25 = *(v24 + 8);
      dispatch thunk of Cancellable.cancel()();
      sub_100003FB4(v44);
    }

    else
    {
      sub_1000086E0(&v45);
    }

    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    swift_beginAccess();
    sub_100008600(&v45, a1 + v23);
    swift_endAccess();
    (*(*(v14 - 8) + 56))(v21, 1, 1, v14);
    v26 = *(*a1 + 160);
    swift_beginAccess();
    (*(v16 + 40))(a1 + v26, v21, v15);
    swift_endAccess();
    (*(*(v38 - 8) + 56))(v13, 1, 1);
    v27 = *(*a1 + 152);
    swift_beginAccess();
    (*(v39 + 40))(a1 + v27, v13, v40);
    swift_endAccess();
    v28 = (a1 + *(*a1 + 168));
    v29 = *v28;
    v30 = v28[1];
    *v28 = 0;
    v28[1] = 0;
    sub_10000858C(v29);
    v31 = *(*a1 + 200);
    swift_beginAccess();
    v32 = *(v41 + 8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v33 = v37[0];
    v34 = *(v37[0] + 88);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Dictionary();
    Dictionary.removeAll(keepingCapacity:)(0);
    swift_endAccess();
    v35 = *(*a1 + 208);
    swift_beginAccess();
    v36 = *(v33 + 112);
    type metadata accessor for Set();
    Set.removeAll(keepingCapacity:)(0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100006C50(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v3);
  sub_100006CF4(v1, a1, &v5);
  os_unfair_lock_unlock(v3);
  v5();
}

uint64_t sub_100006CF4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  if ((*(result + *(*result + 184)) & 1) == 0)
  {
    v5 = *(*result + 192);
    v6 = result;
    swift_beginAccess();
    sub_100008670(v6 + v5, &v8);
    if (v9)
    {
      sub_100008748(&v8, v10);
      sub_100008748(v10, &v8);
      v7 = swift_allocObject();
      result = sub_100008748(&v8, v7 + 16);
      *(v7 + 56) = a2;
      *a3 = sub_100008798;
      a3[1] = v7;
      return result;
    }

    result = sub_1000086E0(&v8);
  }

  *a3 = Publishers.AEACombineLatestMany.init(_:);
  a3[1] = 0;
  return result;
}

void sub_100006E28(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v3);
  sub_100006EB4(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100006EB4(uint64_t result, uint64_t a2)
{
  if ((*(result + *(*result + 184)) & 1) == 0)
  {
    v2 = result;
    sub_10000859C(a2, v4);
    v3 = *(*v2 + 192);
    swift_beginAccess();
    sub_100008600(v4, v2 + v3);
    return swift_endAccess();
  }

  return result;
}

void sub_100006F58(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v3);
  sub_100006FE4(v1, a1);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_100006FE4(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1;
  v4 = *a1;
  v5 = *(*a1 + 96);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1, a2);
  v9 = &v19 - v8;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10, v13);
  v16 = &v19 - v15;
  if ((*(a1 + *(v3 + 184)) & 1) == 0)
  {
    v17 = *(v4 + 160);
    swift_beginAccess();
    (*(v11 + 16))(v16, a1 + v17, v10);
    if ((*(v6 + 48))(v16, 1, v5))
    {
      return (*(v11 + 8))(v16, v10);
    }

    else
    {
      (*(v6 + 16))(v9, v16, v5);
      (*(v11 + 8))(v16, v10);
      v18 = *(v4 + 120);
      dispatch thunk of Subscriber.receive(completion:)();
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t (*sub_100007250(uint64_t a1, uint64_t a2, uint64_t a3))@<X0>(uint64_t *a1@<X8>)
{
  v7 = *(v3 + *(*v3 + 176));
  os_unfair_lock_lock(v7);
  sub_100007308(v3, a1, a2, a3, &v9);
  os_unfair_lock_unlock(v7);
  v9(&v9);

  return v9;
}

uint64_t sub_100007308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v42 = a5;
  v6 = *a1;
  v7 = *a1;
  v8 = *(*a1 + 96);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v36 - v14;
  v41 = *(v8 - 8);
  v16 = *(v41 + 64);
  v18 = __chkstk_darwin(v13, v17);
  result = __chkstk_darwin(v18, v19);
  v23 = &v36 - v22;
  v24 = sub_1000076C0;
  if ((*(a1 + *(v6 + 184)) & 1) == 0)
  {
    v36 = v21;
    v37 = v7;
    v26 = *(v7 + 160);
    swift_beginAccess();
    (*(v10 + 16))(v15, a1 + v26, v9);
    v27 = v41;
    if ((*(v41 + 48))(v15, 1, v8) == 1)
    {
      result = (*(v10 + 8))(v15, v9);
    }

    else
    {
      v28 = *(v27 + 32);
      v28(v23, v15, v8);
      v29 = (a1 + *(*a1 + 168));
      v30 = *v29;
      if (*v29)
      {
        v31 = v29[1];
        sub_100008448(*v29);
        v40 = sub_100007824(v38, v39, v40, v30, v31);
        v32 = v36;
        v28(v36, v23, v8);
        v33 = (*(v27 + 80) + 88) & ~*(v27 + 80);
        v25 = swift_allocObject();
        v34 = v37;
        *(v25 + 16) = *(v37 + 80);
        *(v25 + 24) = *(v34 + 88);
        *(v25 + 32) = v8;
        *(v25 + 40) = *(v34 + 104);
        *(v25 + 56) = *(v34 + 120);
        *(v25 + 64) = *(v34 + 128);
        *(v25 + 80) = *(v34 + 144);
        v28((v25 + v33), v32, v8);
        *(v25 + ((v16 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v40;

        result = sub_10000858C(v30);
        v24 = sub_1000084EC;
        goto LABEL_9;
      }

      result = (*(v27 + 8))(v23, v8);
    }

    v25 = 0;
    v24 = sub_1000076C0;
    goto LABEL_9;
  }

  v25 = 0;
LABEL_9:
  v35 = v42;
  *v42 = v24;
  v35[1] = v25;
  return result;
}

uint64_t sub_1000076C0@<X0>(uint64_t *a1@<X8>)
{
  result = static Subscribers.Demand.none.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000077CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_100007824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v111 = a4;
  v112 = a5;
  v117 = a1;
  v114 = *v5;
  v7 = v114;
  v8 = *(v114[16] + 8);
  v9 = v114[13];
  v10 = v114[10];
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = *(AssociatedTypeWitness - 8);
  v12 = *(v116 + 64);
  v14 = __chkstk_darwin(AssociatedTypeWitness, v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  __chkstk_darwin(v14, v17);
  v122 = &v90 - v18;
  v19 = v7[11];
  v120 = type metadata accessor for Optional();
  v94 = *(v120 - 8);
  v20 = *(v94 + 64);
  v22 = __chkstk_darwin(v120, v21);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v22, v25);
  v113 = &v90 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v115 = (&v90 - v30);
  v123 = v19;
  v93 = *(v19 - 8);
  v31 = *(v93 + 64);
  v33 = __chkstk_darwin(v29, v32);
  v102 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33, v35);
  v101 = &v90 - v37;
  v39 = __chkstk_darwin(v36, v38);
  v100 = &v90 - v40;
  __chkstk_darwin(v39, v41);
  v103 = &v90 - v42;
  v118 = v7[18];
  v124 = AssociatedTypeWitness;
  v43 = swift_getAssociatedTypeWitness();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  v47 = __chkstk_darwin(v43, v46);
  v99 = &v90 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v48;
  __chkstk_darwin(v47, v49);
  v51 = &v90 - v50;
  v52 = Array.endIndex.getter();
  v121 = v16;
  v119 = v24;
  if (v52)
  {
    v53 = *(*v5 + 200);
    v97 = *(*v5 + 208);
    swift_beginAccess();
    v54 = 0;
    v110 = (v44 + 16);
    v108 = (v44 + 8);
    v107 = (v93 + 48);
    v96 = (v93 + 32);
    v106 = (v94 + 8);
    v95 = (v93 + 8);
    v109 = a3;
    v98 = v53;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v44 + 16))(v51, a3 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v54, v43);
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v92 != 8)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v125 = result;
        (*v110)(v51, &v125, v43);
        swift_unknownObjectRelease();
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      v59 = *(v53 + v5);
      swift_getAssociatedConformanceWitness();
      v60 = v5;

      v61 = v123;
      v62 = v115;
      Dictionary.subscript.getter();

      (*v108)(v51, v43);
      if ((*v107)(v62, 1, v61) == 1)
      {
        (*v106)(v62, v120);
      }

      else
      {
        v63 = v44;
        v64 = v51;
        v65 = v103;
        v66 = v123;
        (*v96)(v103, v62, v123);
        swift_beginAccess();
        v67 = v114[14];
        type metadata accessor for Set();
        v68 = v113;
        Set.remove(_:)();
        (*v106)(v68, v120);
        swift_endAccess();
        v69 = v65;
        v51 = v64;
        v44 = v63;
        v53 = v98;
        (*v95)(v69, v66);
      }

      v5 = v60;
      v16 = v121;
      v55 = v109;
      ++v54;
      v56 = v58 == Array.endIndex.getter();
      a3 = v55;
      v24 = v119;
    }

    while (!v56);
  }

  v104 = v5;
  v71 = v117;
  if (!Array.endIndex.getter())
  {
    goto LABEL_25;
  }

  v72 = 0;
  v73 = *v104;
  v109 = *(*v104 + 200);
  v108 = *(v73 + 208);
  v74 = (v116 + 16);
  v75 = (v116 + 32);
  v76 = (v93 + 48);
  v98 = (v93 + 32);
  v97 = (v93 + 16);
  v96 = (v93 + 56);
  v95 = (v93 + 8);
  v115 = (v116 + 8);
  v94 += 8;
  v105 = v43;
  v107 = (v116 + 16);
  v106 = (v116 + 32);
  v103 = (v93 + 48);
  while (1)
  {
    v86 = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (!v86)
    {
      break;
    }

    (*(v116 + 16))(v122, v71 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v72, v124);
    v87 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      goto LABEL_24;
    }

LABEL_19:
    (*v75)(v16, v122, v124);
    v111(v16);
    if ((*v76)(v24, 1, v123) == 1)
    {
      (*v115)(v16, v124);
      (*v94)(v24, v120);
    }

    else
    {
      v77 = v123;
      v78 = v100;
      (*v98)(v100, v24, v123);
      dispatch thunk of Identifiable.id.getter();
      v110 = *v97;
      v79 = v113;
      (v110)(v113, v78, v77);
      (*v96)(v79, 0, 1, v77);
      swift_beginAccess();
      swift_getAssociatedConformanceWitness();
      type metadata accessor for Dictionary();
      Dictionary.subscript.setter();
      swift_endAccess();
      (v110)(v102, v78, v77);
      v24 = v119;
      swift_beginAccess();
      v80 = v114[14];
      type metadata accessor for Set();
      v81 = v121;
      v82 = v101;
      v75 = v106;
      Set.insert(_:)();
      v83 = *v95;
      v84 = v82;
      v76 = v103;
      (*v95)(v84, v77);
      swift_endAccess();
      v85 = v77;
      v74 = v107;
      v83(v78, v85);
      v16 = v81;
      (*v115)(v81, v124);
    }

    v71 = v117;
    ++v72;
    if (v87 == Array.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  result = _ArrayBuffer._getElementSlowPath(_:)();
  if (v91 != 8)
  {
    goto LABEL_27;
  }

  v125 = result;
  (*v74)(v122, &v125, v124);
  swift_unknownObjectRelease();
  v87 = v72 + 1;
  if (!__OFADD__(v72, 1))
  {
    goto LABEL_19;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  v88 = v104;
  v89 = *(*v104 + 208);
  swift_beginAccess();
  return *(v88 + v89);
}

uint64_t sub_100008448(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008458()
{
  v1 = *(*(v0 + 32) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  v5 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000084EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 56);
  v5 = *(v1 + ((*(*(*(v1 + 32) - 8) + 64) + ((*(*(*(v1 + 32) - 8) + 80) + 88) & ~*(*(*(v1 + 32) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  result = dispatch thunk of Subscriber.receive(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_10000858C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000859C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008600(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008670(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000086E0(uint64_t a1)
{
  v2 = sub_100003F6C(qword_1000B76B0, &unk_100081890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008748(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008760()
{
  sub_100003FB4((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008798()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_100005A3C(v0 + 2, v0[5]);
  return dispatch thunk of Subscription.request(_:)();
}

unint64_t sub_1000087EC(void *a1)
{
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[6];
  v7 = *(a1[7] + 8);
  v8 = a1[8];
  result = _s17AEADeltaPublisherVMa();
  if (v2 <= 0x3F)
  {
    result = sub_100008C24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100008894(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1000089D0(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, v9);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
LABEL_35:
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_35;
  }

  *(a1 + v9) = 0;
  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v21 = a2 & 0x7FFFFFFF;
      v21[1] = 0;
    }

    else
    {
      *v21 = a2 - 1;
    }
  }

  else if (v6 >= a2)
  {
    v22 = *(v5 + 56);

    v22();
  }

  else
  {
    if (v8 <= 3)
    {
      v17 = ~(-1 << (8 * v8));
    }

    else
    {
      v17 = -1;
    }

    if (v8)
    {
      v18 = v17 & (~v6 + a2);
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      v20 = a1;
      bzero(a1, v8);
      if (v19 > 2)
      {
        if (v19 == 3)
        {
          *v20 = v18;
          *(v20 + 2) = BYTE2(v18);
        }

        else
        {
          *v20 = v18;
        }
      }

      else if (v19 == 1)
      {
        *v20 = v18;
      }

      else
      {
        *v20 = v18;
      }
    }
  }
}

unint64_t sub_100008C24()
{
  result = qword_1000B7738;
  if (!qword_1000B7738)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000B7738);
  }

  return result;
}

uint64_t sub_100008C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

char *sub_100008C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v70 = a3;
  v71 = a4;
  v67 = a2;
  v64 = a1;
  v6 = *v4;
  v72 = (v6 + 120);
  v7 = *(v6 + 96);
  v68 = type metadata accessor for Optional();
  v66 = *(v68 - 8);
  v8 = *(v66 + 64);
  __chkstk_darwin(v68, v9);
  v65 = &v53 - v10;
  v11 = *(v6 + 80);
  v12 = *(v6 + 104);
  v73 = *(v6 + 144);
  *&v74 = v11;
  v69 = *(v6 + 128);
  v13 = *(*(&v69 + 1) + 8);
  v60 = v11;
  *(&v74 + 1) = v12;
  v61 = v12;
  v14 = v69;
  *&v75 = v69;
  *(&v75 + 1) = v13;
  *&v76 = v73;
  v15 = _s17AEADeltaPublisherVMa();
  v63 = type metadata accessor for Optional();
  v62 = *(v63 - 8);
  v16 = *(v62 + 64);
  __chkstk_darwin(v63, v17);
  v57 = &v53 - v18;
  v19 = *(v6 + 152);
  v54 = v15;
  v20 = *(v15 - 8);
  v56 = *(v20 + 56);
  v56(&v5[v19], 1, 1, v15);
  v21 = *(*v5 + 160);
  v58 = v7;
  v22 = *(v7 - 8);
  v23 = *(v22 + 56);
  v55 = v22 + 56;
  v59 = v23;
  v23(&v5[v21], 1, 1, v7);
  v24 = &v5[*(*v5 + 168)];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = *(*v5 + 176);
  v26 = swift_slowAlloc();
  *&v5[v25] = v26;
  *v26 = 0;
  v5[*(*v5 + 184)] = 0;
  v27 = &v5[*(*v5 + 192)];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v53 = *(*v5 + 200);
  v28 = *(v14 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v29 = *(v6 + 88);
  swift_getAssociatedConformanceWitness();
  *&v5[v53] = Dictionary.init()();
  v30 = *(*v5 + 208);
  v31 = *(v6 + 112);
  v32 = v29;
  *&v5[v30] = Set.init()();
  v33 = v57;
  v34 = v54;
  (*(v20 + 16))(v57, v64, v54);
  v35 = v33;
  v56(v33, 0, 1, v34);
  v36 = *(*v5 + 152);
  swift_beginAccess();
  (*(v62 + 40))(&v5[v36], v35, v63);
  swift_endAccess();
  v37 = v65;
  v38 = v58;
  (*(v22 + 16))(v65, v67, v58);
  v39 = v37;
  v40 = v37;
  v41 = v38;
  v59(v39, 0, 1, v38);
  v42 = *(*v5 + 160);
  swift_beginAccess();
  (*(v66 + 40))(&v5[v42], v40, v68);
  swift_endAccess();
  v43 = &v5[*(*v5 + 168)];
  v44 = *v43;
  v45 = v43[1];
  v46 = v71;
  *v43 = v70;
  v43[1] = v46;

  sub_10000858C(v44);
  *&v47 = v31;
  *(&v47 + 1) = *v72;
  *&v48 = v60;
  *(&v48 + 1) = v32;
  *&v49 = v41;
  *(&v49 + 1) = v61;
  v75 = v49;
  v74 = v48;
  v77 = v69;
  v76 = v47;
  v78 = v73;
  v79 = v5;
  v50 = _s13AEACachingMapV22CachingMapSubscriptionCMa();
  WitnessTable = swift_getWitnessTable();
  sub_10002412C(&v79, v34, v50, WitnessTable);
  return v5;
}

char *sub_100009360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v15 = *(v4 + 112);
  v16 = *(v4 + 128);
  v17 = *(v4 + 144);
  v9 = _s13AEACachingMapV22CachingMapSubscriptionCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  return sub_100008C94(a1, a2, a3, a4);
}

Swift::Int sub_1000093F8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100009464()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

id sub_1000094B4()
{
  [*&v0[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AEAClientConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000095CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener);
  [v1 setDelegate:v0];
  [v1 resume];
  v2 = *(v0 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10000C54C;
  v12 = v3;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100063354;
  v10 = &unk_1000A69C0;
  v4 = _Block_copy(&v7);

  [v2 setInterruptionHandler:v4];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_10000C568;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100063354;
  v10 = &unk_1000A69E8;
  v6 = _Block_copy(&v7);

  [v2 setInvalidationHandler:v6];
  _Block_release(v6);
}

uint64_t sub_10000978C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_10000C570;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6A10;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v13, v8);
}

void sub_100009A18(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000B6420 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C370(v1, qword_1000BC518);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_getErrorValue();
      v6 = sub_100067820(v9);
      v8 = sub_100043D60(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to forward invalidation error to client. Error: %{public}s", v4, 0xCu);
      sub_100003FB4(v5);
    }

    else
    {
    }
  }
}

uint64_t sub_100009BCC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  aBlock[4] = sub_10000C544;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6970;
  v14 = _Block_copy(aBlock);
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
}

char *sub_100009E68(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100064688(a1, 0, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009F30()
{
  if (qword_1000B6498 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC620;

  return v0;
}

void sub_100009FA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

void sub_10000A000()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100009BCC();
  }
}

id sub_10000A0B4(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v3[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives];
  result = [objc_opt_self() currentConnection];
  if (result)
  {
    v18 = result;
    v19 = [v16 auditTokenForConnection:result];

    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    v20[2] = v3;
    v20[3] = a1;
    v21 = v26;
    v20[4] = v19;
    v20[5] = v21;
    v20[6] = a3;
    aBlock[4] = sub_10000C360;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100063354;
    aBlock[3] = &unk_1000A6808;
    v22 = _Block_copy(aBlock);
    v23 = v3;
    v24 = a1;
    v25 = v19;

    static DispatchQoS.unspecified.getter();
    v29 = &_swiftEmptyArrayStorage;
    sub_10000BD9C();
    sub_100003F6C(&unk_1000B7860, &qword_100080450);
    sub_10000BDF4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);

    (*(v28 + 8))(v10, v6);
    (*(v11 + 8))(v15, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000A3E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v18 = qword_1000BC5B8;
  *v15 = qword_1000BC5B8;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1000B6420 != -1)
  {
LABEL_11:
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000C370(v20, qword_1000BC518);
  v21 = a2;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&_mh_execute_header, v22, v23, "Client did publish state: %{public}@", v24, 0xCu);
    sub_10000C3E8(v25);
  }

  v27 = *(v17 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 40);
  sub_10000859C(v17 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskSource + 48, v37 + 8);
  *&v37[0] = v27;
  *&v38 = a1;
  *(&v38 + 1) = a3;
  v39 = v21;
  sub_100003F6C(&qword_1000B7870, &qword_100080000);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 48) = v37[2];
  *(v28 + 64) = v29;
  *(v28 + 80) = v39;
  v30 = v37[1];
  *(v28 + 16) = v37[0];
  *(v28 + 32) = v30;
  v31 = *(v17 + OBJC_IVAR____TtC15assessmentagent24AEAAssessmentModeService_taskQueue);
  v32 = swift_allocObject();
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  v33 = v21;

  v34 = a1;
  v35 = a3;

  sub_100063404(v28, sub_10000C3E0, v32);
  swift_unknownObjectRelease();
}

void sub_10000A7E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_10000A84C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  v17[2] = v2;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_10000BD78;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6790;
  v18 = _Block_copy(aBlock);
  v19 = v2;

  static DispatchQoS.unspecified.getter();
  v21[1] = &_swiftEmptyArrayStorage;
  sub_10000BD9C();
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_10000BDF4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v6 + 8))(v10, v5);
  (*(v12 + 8))(v16, v11);
}

uint64_t sub_10000AAFC(void *a1, void (*a2)(void), uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;

    sub_100064D7C(a1, 1, v7, a2, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10000AC50()
{
  result = qword_1000B7850;
  if (!qword_1000B7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7850);
  }

  return result;
}

uint64_t sub_10000ACC4()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Agent beginning SAM", v4, 2u);
  }

  v5 = v0[21];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v7;
    v8 = Strong;
    v9 = v7;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v10 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6B40;
    v0[14] = v10;
    [v9 handleEventWantsBeginSingleAppModeWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10000AF00()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000C7B4;
  }

  else
  {
    v3 = sub_10000C7DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B030()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC518);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Agent ending SAM", v4, 2u);
  }

  v5 = v0[21];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v7;
    v8 = Strong;
    v9 = v7;

    v0[2] = v0;
    v0[3] = sub_10000B26C;
    v10 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6B18;
    v0[14] = v10;
    [v9 handleEventWantsEndSingleAppModeWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_10000B26C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000B3E0;
  }

  else
  {
    v3 = sub_10000B37C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B37C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B3E0()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_10000B450(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 192) = a3;
  *(v4 + 184) = a4;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  return _swift_task_switch(sub_10000B478, 0, 0);
}

uint64_t sub_10000B478()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[23];
    v5 = *(v0 + 21);
    v4 = *(v0 + 22);
    v6 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    *(v0 + 25) = v6;
    v7 = Strong;
    v8 = v6;

    v9 = String._bridgeToObjectiveC()();
    *(v0 + 26) = v9;
    sub_100005C1C();
    isa = NSNumber.init(floatLiteral:)(v3).super.super.isa;
    *(v0 + 27) = isa;
    *(v0 + 2) = v0;
    *(v0 + 3) = sub_10000B658;
    v11 = swift_continuation_init();
    *(v0 + 17) = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    *(v0 + 10) = _NSConcreteStackBlock;
    *(v0 + 11) = 1107296256;
    *(v0 + 12) = sub_100026B9C;
    *(v0 + 13) = &unk_1000A6B68;
    *(v0 + 14) = v11;
    [v8 handleEventWantsPresentBannerWithTitle:v9 duration:isa completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v12 = *(v0 + 1);

    return v12();
  }
}

uint64_t sub_10000B658()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_10000B7D8;
  }

  else
  {
    v3 = sub_10000B768;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B768()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000B7D8()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_10000B87C()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v3;
    v4 = Strong;
    v5 = v3;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v6 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6AF0;
    v0[14] = v6;
    [v5 handleEventWantsStartWindowContentCaptureWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10000BA24()
{
  v1 = v0[21];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy);
    v0[22] = v3;
    v4 = Strong;
    v5 = v3;

    v0[2] = v0;
    v0[3] = sub_10000AF00;
    v6 = swift_continuation_init();
    v0[17] = sub_100003F6C(&unk_1000B8D20, &qword_100085E80);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100026B9C;
    v0[13] = &unk_1000A6AC8;
    v0[14] = v6;
    [v5 handleEventWantsStopWindowContentCaptureWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

void sub_10000BBAC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    v9 = type metadata accessor for AEAClientConnection();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI] = 0;
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives] = a4;
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_lifecycleEventHandlingProxy] = a5;
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = a5;
    v13 = [v11 anonymousListener];
    *&v10[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_publicationListener] = v13;
    v15.receiver = v10;
    v15.super_class = v9;
    v14 = objc_msgSendSuper2(&v15, "init");
    a2(v14, 0);
  }
}

uint64_t sub_10000BCF8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000BD38()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000BD84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000BD9C()
{
  result = qword_1000B8950;
  if (!qword_1000B8950)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8950);
  }

  return result;
}

unint64_t sub_10000BDF4()
{
  result = qword_1000B8960;
  if (!qword_1000B8960)
  {
    sub_100004B50(&unk_1000B7860, &qword_100080450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8960);
  }

  return result;
}

id sub_10000BE58(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*&v1[OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives] connectionCanPublishAssessmentState:a1];
  if (v15)
  {
    v30 = v15;
    if (qword_1000B6460 != -1)
    {
      swift_once();
    }

    v28[1] = qword_1000BC5B8;
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    v36 = sub_10000C490;
    v37 = v16;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v28[2] = &v34;
    v34 = sub_100063354;
    v35 = &unk_1000A6880;
    v17 = _Block_copy(&aBlock);
    v29 = v1;
    v18 = a1;
    static DispatchQoS.unspecified.getter();
    v31 = &_swiftEmptyArrayStorage;
    sub_10000BD9C();
    sub_100003F6C(&unk_1000B7860, &qword_100080450);
    sub_10000BDF4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);
    (*(v4 + 8))(v8, v3);
    (*(v10 + 8))(v14, v9);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_10000C7A4;
    v37 = v19;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100063354;
    v35 = &unk_1000A68D0;
    v20 = _Block_copy(&aBlock);

    [v18 setInterruptionHandler:v20];
    _Block_release(v20);
    v21 = swift_allocObject();
    v22 = v29;
    swift_unknownObjectWeakInit();
    v36 = sub_10000C7A8;
    v37 = v21;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100063354;
    v35 = &unk_1000A6920;
    v23 = _Block_copy(&aBlock);

    [v18 setInvalidationHandler:v23];
    _Block_release(v23);
    v24 = [objc_allocWithZone(AEAssessmentStatePublishingXPCInterfaceFactory) init];
    v25 = [v24 makeInterface];

    [v18 setExportedInterface:v25];
    [v18 setExportedObject:v22];
    [v18 resume];
    return v30;
  }

  else
  {
    v27 = v15;
    [a1 invalidate];
    return v27;
  }
}

uint64_t sub_10000C310()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000C370(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C3A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C3E8(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7878, &qword_100080008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C450()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10000C490()
{
  v1 = *(v0 + 16);
  result = [*(v1 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_xpcPrimitives) connectionCanUsePrivateConfigurationSPI:*(v0 + 24)];
  *(v1 + OBJC_IVAR____TtC15assessmentagent19AEAClientConnection_canUsePrivateConfigurationSPI) = result;
  return result;
}

uint64_t sub_10000C4D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000C50C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for AEAClientConnection.ClientConnectionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AEAClientConnection.ClientConnectionError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000C698()
{
  result = qword_1000B7880;
  if (!qword_1000B7880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7880);
  }

  return result;
}

uint64_t sub_10000C6FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000C804()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_100003F6C(&qword_1000B7940, &unk_1000800F0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v0 setItems:isa];
}

uint64_t sub_10000C8B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return a2(0, 0);
  }

  swift_errorRetain();
  a2(a1, 1);
}

uint64_t sub_10000C928(void (*a1)(void ***), uint64_t a2)
{
  v5 = *v2;

  sub_10000C984(v5, a1, a2);
}

uint64_t sub_10000C984(void *a1, void (*a2)(void ***), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = [a1 recoverySession];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_10000CB28;
    *(v9 + 24) = v6;
    v16 = sub_10000CB34;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100063398;
    v15 = &unk_1000A6C18;
    v10 = _Block_copy(&v12);

    [v8 deactivateWithCompletion:v10];
    _Block_release(v10);

    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    a2(&v12);
  }
}

uint64_t sub_10000CAF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000CB5C()
{
  result = qword_1000B7960;
  if (!qword_1000B7960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7960);
  }

  return result;
}

uint64_t sub_10000CBB0()
{
  if (qword_1000B6468 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC5C0;

  return v0;
}

void sub_10000CC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_100003F6C(&qword_1000B7970, &qword_100080300);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = aBlock - v11;
  (*(v8 + 16))(aBlock - v11, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  aBlock[4] = sub_10000D34C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000CEA4;
  aBlock[3] = &unk_1000A6DB8;
  v15 = _Block_copy(aBlock);

  [a5 stopAirPlayingWithCompletion:v15];
  _Block_release(v15);
}

uint64_t sub_10000CDC8(char a1)
{
  if (a1)
  {
    memset(v4, 0, 41);
  }

  else
  {
    sub_10000CB5C();
    *&v4[0] = swift_allocError();
    BYTE8(v4[2]) = 1;
  }

  sub_10000D3E0(v4, &v2);
  if (v3)
  {
    sub_100003F6C(&qword_1000B7970, &qword_100080300);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100003F6C(&qword_1000B7970, &qword_100080300);
    CheckedContinuation.resume(returning:)();
  }

  return sub_10000D450(v4);
}

uint64_t sub_10000CEA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

double sub_10000CEF8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000CF08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v1 + 1);
  *(v2 + 48) = v1[3];
  return _swift_task_switch(sub_10000CF3C, 0, 0);
}

uint64_t sub_10000CF3C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = sub_100003F6C(&qword_1000BA390, qword_100083400);
  *v5 = v0;
  v5[1] = sub_10000D05C;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0x6574617669746361, 0xEF293A6874697728, sub_10000D2AC, v3, v6);
}

uint64_t sub_10000D05C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000D198, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_10000D198()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_10000D1FC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_10000D248()
{
  result = qword_1000B7968;
  if (!qword_1000B7968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7968);
  }

  return result;
}

uint64_t sub_10000D2B8()
{
  v1 = sub_100003F6C(&qword_1000B7970, &qword_100080300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D34C(char a1)
{
  v2 = *(*(sub_100003F6C(&qword_1000B7970, &qword_100080300) - 8) + 80);

  return sub_10000CDC8(a1);
}

uint64_t sub_10000D3C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D3E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(qword_1000B7978, &qword_100080308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D450(uint64_t a1)
{
  v2 = sub_100003F6C(qword_1000B7978, &qword_100080308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D4C0(uint64_t a1)
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

uint64_t sub_10000D530(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10000D670(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
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
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_10000D8C0(Swift::Bool a1)
{
  v2 = v1;
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(a1).super.super.isa;
  v5 = String._bridgeToObjectiveC()();
  [v2 setNumber:isa forKey:v5];
}

void sub_10000D958(Swift::Bool a1)
{
  v2 = v1;
  sub_100005C1C();
  isa = NSNumber.init(BOOLeanLiteral:)(a1).super.super.isa;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = String._bridgeToObjectiveC()();

  [v2 setNumber:isa forKey:v5];
}

uint64_t sub_10000DA08()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 numberForKey:v1];

  if (!v2)
  {
    return 2;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_10000DA80()
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 numberForKey:v1];

  if (!v2)
  {
    return 2;
  }

  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t sub_10000DB28()
{
  if (qword_1000B64A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1000BC640;

  return v0;
}

uint64_t sub_10000DBB0()
{
  sub_10000E3F0();
  sub_100003FB4(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];

  v3 = v0[13];
  swift_unknownObjectRelease();
  v4 = v0[14];
  swift_unknownObjectRelease();
  v5 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_10000DC14()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v0 - 8);
  v45 = v0;
  v1 = *(v44 + 64);
  __chkstk_darwin(v0, v2);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4, v6);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v37 - v11;
  v13 = sub_100003F6C(&qword_1000B7BA8, &qword_100080460);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v37 - v17;
  v19 = sub_100003F6C(&qword_1000B7BB0, &qword_100080468);
  v37 = *(v19 - 8);
  v38 = v19;
  v20 = *(v37 + 64);
  __chkstk_darwin(v19, v21);
  v23 = &v37 - v22;
  aBlock[0] = sub_10007C0EC();
  sub_100003F6C(&qword_1000B7BB8, &qword_100080470);
  sub_100003F6C(&qword_1000B7B98, &qword_100080448);
  sub_100004EE0(&qword_1000B7BC0, &qword_1000B7BB8, &qword_100080470);
  Publisher.compactMap<A>(_:)();

  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v24 = qword_1000BC5B8;
  aBlock[0] = qword_1000BC5B8;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  sub_10000EF70();
  sub_100004EE0(&qword_1000B7BD0, &qword_1000B7BA8, &qword_100080460);
  sub_10000EFBC(&qword_1000B7BD8, sub_10000EF70);
  v26 = v24;
  Publisher.receive<A>(on:options:)();
  sub_10000F004(v12);

  (*(v14 + 8))(v18, v13);
  swift_getKeyPath();
  v27 = v39;
  aBlock[0] = v39;
  sub_100004EE0(&qword_1000B7BE0, &qword_1000B7BB0, &qword_100080468);
  v28 = v38;
  v29 = Publisher<>.assign<A>(to:on:)();

  (*(v37 + 8))(v23, v28);
  v30 = *(v27 + 120);
  *(v27 + 120) = v29;

  v31 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10000F09C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6EB0;
  v32 = _Block_copy(aBlock);

  v33 = v40;
  static DispatchQoS.unspecified.getter();
  v46 = &_swiftEmptyArrayStorage;
  sub_10000EFBC(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  v34 = v43;
  v35 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v32);
  (*(v44 + 8))(v34, v35);
  (*(v41 + 8))(v33, v42);
}

uint64_t sub_10000E2CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *result;
  v5 = *result;
  v6 = 1 << *(*result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v9 = *(v5 + 56);
  v8 = v5 + 56;
  v10 = v7 & v9;
  v11 = (v6 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = *(v4 + 48) + 40 * (__clz(__rbit64(v10)) | (v3 << 6));
    result = *v13;
    v14 = *(v13 + 32);
    if (*v13 != 0x6C7070612E6D6F63 || *(v13 + 8) != 0xEE00697269532E65)
    {
      v10 &= v10 - 1;
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v16 = 0;
LABEL_16:
    *(a2 + 4) = 0;
    *a2 = v14;
    *(a2 + 5) = v16;
    return result;
  }

  while (1)
  {
    v12 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      v14 = 0;
      v16 = 1;
      goto LABEL_16;
    }

    v10 = *(v8 + 8 * v12);
    ++v3;
    if (v10)
    {
      v3 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E3F0()
{
  v1 = v0[14];
  if (v1)
  {
    [v1 end];
    v2 = v0[14];
  }

  v0[14] = 0;
  swift_unknownObjectRelease();
  if (v0[15])
  {
    v3 = v0[15];

    AnyCancellable.cancel()();

    v4 = v0[15];
  }

  v0[15] = 0;

  v5 = v0[13];
  if (v5)
  {
    [v5 releaseSiri];
    v6 = v0[13];
  }

  v0[13] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_10000E4EC()
{
  v1 = *(v0 + 96);
  *(v0 + 84) = *(v0 + 92);
  *(v0 + 88) = v1;
  v2 = *(v0 + 56);
  v3 = [v2 disableSiri];
  v4 = *(v0 + 104);
  *(v0 + 104) = v3;
  swift_unknownObjectRelease();
  v5 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_10000EF20;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100063354;
  v10[3] = &unk_1000A6E60;
  v6 = _Block_copy(v10);

  v7 = [v2 observeSiriSuppressionWithHandler:v6];
  _Block_release(v6);
  v8 = *(v0 + 112);
  *(v0 + 112) = v7;
  return swift_unknownObjectRelease();
}

uint64_t sub_10000E618()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  __chkstk_darwin(v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v13[1] = qword_1000BC5B8;
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_10000EF40;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100063354;
  aBlock[3] = &unk_1000A6E88;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000EFBC(&qword_1000B8950, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003F6C(&unk_1000B7860, &qword_100080450);
  sub_100004EE0(&qword_1000B8960, &unk_1000B7860, &qword_100080450);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v15 + 8))(v4, v0);
  (*(v5 + 8))(v9, v14);
}

uint64_t sub_10000E960(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_10000E9C0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000B6460 != -1)
  {
    swift_once();
  }

  v8 = qword_1000BC5B8;
  *v7 = qword_1000BC5B8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v8)
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
  v10 = type metadata accessor for Logger();
  sub_10000C370(v10, qword_1000BC518);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = *(v1 + 88);
    v39 = *(v1 + 84);
    v40 = v14;
    sub_100003F6C(&qword_1000B7B98, &qword_100080448);
    v15 = String.init<A>(describing:)();
    v17 = sub_100043D60(v15, v16, &v41);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = *(v1 + 96);
    v39 = *(v1 + 92);
    v40 = v18;
    v19 = String.init<A>(describing:)();
    v21 = sub_100043D60(v19, v20, &v41);

    *(v13 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "Siri suppression ended: applied to %{public}s. Current: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v22 = *(v1 + 96);
  if (*(v1 + 88))
  {
    if ((*(v1 + 96) & 1) == 0)
    {
LABEL_9:
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Re-instating Siri suppression.", v25, 2u);
      }

      v26 = *(v1 + 96);
      *(v1 + 84) = *(v1 + 92);
      *(v1 + 88) = v26;
      v27 = [*(v1 + 56) disableSiri];
LABEL_19:
      v33 = v27;
      v34 = *(v1 + 104);
      *(v1 + 104) = v33;
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    if (*(v1 + 84) != *(v1 + 92))
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_9;
    }
  }

  v28 = *(v1 + 80);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  v31 = os_log_type_enabled(v29, v30);
  if (v28 == 1)
  {
    if (v31)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Final attempt to re-instate Siri suppression.", v32, 2u);
    }

    *(v1 + 80) = 0;
    v27 = [*(v1 + 56) disableSiri];
    goto LABEL_19;
  }

  if (v31)
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not suppress Siri. Failing the session.", v36, 2u);
  }

  v38 = *(v1 + 64);
  v37 = *(v1 + 72);
  sub_10000EE94();
  swift_allocError();
  v38();
}

unint64_t sub_10000EE94()
{
  result = qword_1000B7B90;
  if (!qword_1000B7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7B90);
  }

  return result;
}

uint64_t sub_10000EEE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000EF70()
{
  result = qword_1000B7BC8;
  if (!qword_1000B7BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B7BC8);
  }

  return result;
}

uint64_t sub_10000EFBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F004(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000B7BA0, &qword_100080458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F06C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 96);
  *a2 = *(*result + 92);
  *(a2 + 4) = v2;
  return result;
}

uint64_t sub_10000F084(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 4);
  v3 = *a2;
  *(v3 + 92) = *result;
  *(v3 + 96) = v2;
  return result;
}

unint64_t sub_10000F0E0()
{
  result = qword_1000B7BE8;
  if (!qword_1000B7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7BE8);
  }

  return result;
}

__n128 sub_10000F144(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000F168(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10000F1B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000F234()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F2A0(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return _swift_task_switch(sub_10000F2C0, 0, 0);
}

uint64_t sub_10000F2C0()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 24);
  v3 = qword_1000B6460;
  v4 = AEKillAssessmentAgentNotificationName;
  if (v3 != -1)
  {
    swift_once();
    v1 = *(v0 + 144);
  }

  v5 = *(v0 + 136);
  v6 = qword_1000BC5B8;
  sub_10000F70C(v1, v0 + 16);
  v7 = swift_allocObject();
  v8 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v8;
  *(v7 + 80) = *(v0 + 80);
  v9 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v9;
  *(v0 + 120) = sub_10000F78C;
  *(v0 + 128) = v7;
  *(v0 + 88) = _NSConcreteStackBlock;
  *(v0 + 96) = 1107296256;
  *(v0 + 104) = sub_100063354;
  *(v0 + 112) = &unk_1000A7050;
  v10 = _Block_copy((v0 + 88));
  v11 = *(v0 + 128);

  v12 = [v2 observeSystemNotificationWithName:v4 onQueue:v6 withHandler:v10];
  _Block_release(v10);

  v5[3] = &type metadata for AEAKillAgentNotificationListenerDeactivation;
  v5[4] = &off_1000A7140;
  v13 = swift_allocObject();
  *v5 = v13;
  v13[2] = 0xD00000000000003ALL;
  v13[3] = 0x80000001000883E0;
  v13[4] = 4;
  v13[5] = v12;
  v14 = *(v0 + 8);

  return v14();
}

void sub_10000F4B0()
{
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C370(v0, qword_1000BC518);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received kill agent notification", v3, 2u);
  }

  exit(9);
}

uint64_t sub_10000F580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000F618;

  return sub_10000F2A0(a1);
}

uint64_t sub_10000F618()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000F744()
{
  v1 = v0[3];

  v2 = v0[5];
  swift_unknownObjectRelease();
  sub_100003FB4(v0 + 6);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10000F794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F7AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000F7FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    result = static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  *a2 = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_10000F874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for AEAMappedAntiphony();
  v16 = a3;
  v17 = a4;
  v12 = sub_100004F80(&v15);
  (*(*(a3 - 8) + 16))(v12, v5, a3);
  v13 = sub_10003A6B8(&v15, a1, a2);
  a5[3] = v11;
  a5[4] = swift_getWitnessTable();
  *a5 = v13;
}

unint64_t sub_10000F97C()
{
  v1 = v0;
  sub_100003F6C(&qword_1000B7CD0, &qword_100080770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100080700;
  v27[0] = kCFUserNotificationAlertHeaderKey;
  v3 = kCFUserNotificationAlertHeaderKey;
  sub_100003F6C(&qword_1000B7CD8, &qword_100080778);
  sub_1000109E8();
  AnyHashable.init<A>(_:)();
  v31 = *v1;
  v4 = v31;
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v4;
  *&v25 = kCFUserNotificationAlertMessageKey;
  sub_100010AC4(&v31, v27);
  v5 = kCFUserNotificationAlertMessageKey;
  AnyHashable.init<A>(_:)();
  v30 = v1[1];
  v6 = v30;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v6;
  *&v25 = kCFUserNotificationDefaultButtonTitleKey;
  sub_100010AC4(&v30, v27);
  v7 = kCFUserNotificationDefaultButtonTitleKey;
  AnyHashable.init<A>(_:)();
  v29 = v1[2];
  v8 = v29;
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v8;
  *&v25 = kCFUserNotificationAlternateButtonTitleKey;
  sub_100010AC4(&v29, v27);
  v9 = kCFUserNotificationAlternateButtonTitleKey;
  AnyHashable.init<A>(_:)();
  v28 = v1[3];
  v10 = v28;
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = v10;
  *&v25 = kCFUserNotificationAlertTopMostKey;
  sub_100010AC4(&v28, v27);
  v11 = kCFUserNotificationAlertTopMostKey;
  AnyHashable.init<A>(_:)();
  v12 = *(v1 + 64);
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = v12;
  v13 = sub_10002207C(inited);
  swift_setDeallocating();
  sub_100003F6C(&qword_1000B7CE8, &unk_100080780);
  swift_arrayDestroy();
  *&v25 = SBUserNotificationDefaultButtonTag;
  v14 = SBUserNotificationDefaultButtonTag;
  AnyHashable.init<A>(_:)();
  v15 = *(v1 + 65);
  v26 = &type metadata for Int;
  *&v25 = v15;
  sub_100010B20(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, isUniquelyReferenced_nonNull_native);
  sub_100010B30(v27);
  *&v25 = SBUserNotificationDismissOnLock;
  v17 = SBUserNotificationDismissOnLock;
  AnyHashable.init<A>(_:)();
  v18 = *(v1 + 66);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v18;
  sub_100010B20(&v25, v24);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, v19);
  sub_100010B30(v27);
  *&v25 = SBUserNotificationDontDismissOnUnlock;
  v20 = SBUserNotificationDontDismissOnUnlock;
  AnyHashable.init<A>(_:)();
  v21 = *(v1 + 67);
  v26 = &type metadata for Bool;
  LOBYTE(v25) = v21;
  sub_100010B20(&v25, v24);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_100040938(v24, v27, v22);
  sub_100010B30(v27);
  return v13;
}

uint64_t sub_10000FCE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;

  return _swift_task_switch(sub_10000FD78, 0, 0);
}

uint64_t sub_10000FD78()
{
  *(v0 + 16) = 0;
  if (CFUserNotificationReceiveResponse(*(v0 + 32), *(*(v0 + 40) + 72), (v0 + 16)))
  {
    sub_100010734();
    swift_allocError();
    *v1 = 0;
    *(v1 + 8) = 256;
    swift_willThrow();
  }

  else
  {
    **(v0 + 24) = *(v0 + 16);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = v25 - v11;
  sub_100010910(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100010980(v12);
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

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_100010980(a3);

      return v23;
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

  sub_100010980(a3);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100010108(uint64_t a1)
{
  *(v1 + 120) = a1;
  v2 = *(*(sub_100003F6C(&qword_1000BA380, &qword_100080750) - 8) + 64) + 15;
  *(v1 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1000101D0, 0, 0);
}

uint64_t sub_1000101D0()
{
  *(v0 + 108) = 0;
  v1 = *(*(v0 + 120) + 72);
  sub_10000F97C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v3 = CFUserNotificationCreate(0, v1, 3uLL, (v0 + 108), isa);
  *(v0 + 136) = v3;

  if (v3)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = v3;
    v8 = v5[1];
    v9 = v5[2];
    v10 = v5[3];
    *(v7 + 104) = v5[4];
    *(v7 + 88) = v10;
    *(v7 + 72) = v9;
    *(v7 + 56) = v8;
    *(v7 + 40) = *v5;
    v11 = v3;
    sub_1000108A8(v5, v0 + 16);
    v12 = sub_10000FE80(0, 0, v4, &unk_100080760, v7);
    *(v0 + 144) = v12;
    v13 = async function pointer to Task.result.getter[1];
    v14 = swift_task_alloc();
    *(v0 + 152) = v14;
    v15 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
    *(v0 + 160) = v15;
    *v14 = v0;
    v14[1] = sub_1000104AC;

    return Task.result.getter(v0 + 96, v12, &type metadata for UInt, v15, &protocol self-conformance witness table for Error);
  }

  else
  {
    v16 = *(v0 + 108);
    v17 = v16 < 1;
    v18 = v16 & ~(v16 >> 31);
    sub_100010734();
    swift_allocError();
    *v19 = v18;
    *(v19 + 8) = v17;
    swift_willThrow();
    v20 = *(v0 + 128);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1000104AC()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_1000105F0, 0, 0);
}

uint64_t sub_1000105F0()
{
  v1 = *(v0 + 96);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 160);
    v3 = *(v0 + 136);
    *(v0 + 112) = v1;
    swift_errorRetain();
    swift_willThrowTypedImpl();

    sub_100010904(v1, 1);
    v4 = *(v0 + 128);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 128);

    v8 = *(v0 + 8);

    return v8(v1 == 1);
  }
}

unint64_t sub_100010734()
{
  result = qword_1000B7CC0;
  if (!qword_1000B7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7CC0);
  }

  return result;
}

uint64_t sub_100010788()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000107E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F618;

  return sub_10000FCE4(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_100010904(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100010910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010980(uint64_t a1)
{
  v2 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000109E8()
{
  result = qword_1000B7CE0;
  if (!qword_1000B7CE0)
  {
    sub_100004B50(&qword_1000B7CD8, &qword_100080778);
    sub_100010A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7CE0);
  }

  return result;
}

unint64_t sub_100010A6C()
{
  result = qword_1000B71E0;
  if (!qword_1000B71E0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B71E0);
  }

  return result;
}

_OWORD *sub_100010B20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_100010B84(uint64_t a1)
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
          result = sub_100019F1C(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v6, v23, 0);
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

void *sub_100010DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10004A90C(0, v1, 0);
  v3 = a1 + 56;
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
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_10004A90C((v13 > 1), v12 + 1, 1);
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

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
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
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_100019F1C(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_100019F1C(v6, v23, 0);
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

Swift::Int sub_100010FF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011064()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000110A8()
{
  if (*v0)
  {
    if (qword_1000B64D0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC690;
  }

  else
  {
    if (qword_1000B64C8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1000BC680;
  }

  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100011154()
{
  v1[7] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_10001121C, v3, v2);
}

uint64_t sub_10001121C()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 112);
  v6 = (*(v1 + 104) + **(v1 + 104));
  v3 = *(*(v1 + 104) + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_100011308;

  return v6();
}

uint64_t sub_100011308()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 72);

    return _swift_task_switch(sub_10001144C, v7, v8);
  }
}

uint64_t sub_10001144C()
{
  v1 = v0[11];
  v2 = v0[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = type metadata accessor for AEAConcreteManagedConfigurationRestrictionsApplicator();
  swift_allocObject();

  v6 = sub_100077DEC(v4, v3);
  v0[5] = v5;
  v0[6] = &off_1000AC070;
  v0[2] = v6;
  v7 = sub_100005A3C(v0 + 2, v5);
  v8 = *(*v7 + 16);
  v9 = *(*v7 + 24);
  sub_10007A2F4(0);
  sub_100003FB4(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_100011544()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001A778;

  return sub_100011154();
}

uint64_t sub_1000115D0()
{
  v2 = *(v0 + 32);
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001A778;

  return sub_1000126EC();
}

uint64_t sub_100011674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 stringForKey:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = *(v2 + 24);
    v9 = *(v2 + 32);
  }

  a2[3] = &type metadata for AEARestrictionsRecoveryDeactivation;
  a2[4] = &off_1000A75E0;
  v10 = swift_allocObject();
  *a2 = v10;
  sub_10000859C(v2 + 80, v10 + 64);
  v11 = *(v2 + 200);
  v12 = *(v2 + 224);
  *(v10 + 16) = 0xD000000000000035;
  *(v10 + 24) = 0x8000000100088810;
  *(v10 + 32) = 5;
  *(v10 + 40) = 0;
  *(v10 + 48) = v7;
  *(v10 + 56) = v9;
  *(v10 + 104) = v11;
  *(v10 + 112) = *(v2 + 208);
  *(v10 + 128) = v12;
}

uint64_t sub_1000117B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[40] = a4;
  v5[41] = v4;
  v5[38] = a2;
  v5[39] = a3;
  v5[37] = a1;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011884, v7, v6);
}

uint64_t sub_100011884()
{
  v1 = v0;
  v2 = *(v0 + 328);
  v50 = *(v1 + 312);
  v51 = *(v1 + 320);
  v52 = *(v1 + 304);
  v48 = *(v2 + 32);
  v49 = *(v2 + 24);
  sub_10000859C(v2 + 40, v1 + 16);
  sub_10000859C(v2 + 80, v1 + 56);
  sub_10000859C(v2 + 120, v1 + 96);
  sub_10000859C(v2 + 160, v1 + 136);
  v43 = *(v2 + 200);
  v44 = *(v2 + 224);
  v45 = *(v2 + 232);
  v46 = *(v2 + 241);
  v47 = *(v2 + 240);
  v3 = *(v1 + 40);
  v53 = *(v2 + 208);
  sub_10001A19C(v1 + 16, v3);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64) + 15;
  v42 = swift_task_alloc();
  (*(v4 + 16))();
  v6 = *(v1 + 80);
  sub_10001A19C(v1 + 56, v6);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64) + 15;
  v41 = swift_task_alloc();
  (*(v7 + 16))();
  v9 = *(v1 + 120);
  sub_10001A19C(v1 + 96, v9);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64) + 15;
  v40 = swift_task_alloc();
  (*(v10 + 16))();
  v12 = *v42;
  v13 = *v41;
  v14 = *v40;
  v15 = type metadata accessor for AEAConcreteLaunchServicesPrimitives();
  *(v1 + 200) = v15;
  *(v1 + 208) = &off_1000AC480;
  *(v1 + 176) = v12;
  v39 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  *(v1 + 216) = v13;
  *(v1 + 240) = v39;
  *(v1 + 248) = &off_1000AC080;
  v38 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  *(v1 + 280) = v38;
  *(v1 + 288) = &off_1000A8060;
  *(v1 + 256) = v14;
  type metadata accessor for AEARestrictionsAssertion();
  v16 = swift_allocObject();
  sub_10001A19C(v1 + 176, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v37 = swift_task_alloc();
  (*(v17 + 16))();
  v19 = *(v1 + 240);
  v20 = sub_10001A19C(v1 + 216, v19);
  v21 = *(v19 - 8);
  v22 = *(v21 + 64) + 15;
  v23 = swift_task_alloc();
  (*(v21 + 16))(v23, v20, v19);
  v24 = *(v1 + 280);
  v25 = sub_10001A19C(v1 + 256, v24);
  v26 = *(v24 - 8);
  v27 = *(v26 + 64) + 15;
  v28 = swift_task_alloc();
  (*(v26 + 16))(v28, v25, v24);
  v29 = *v37;
  v30 = *v23;
  v31 = *v28;
  *(v16 + 56) = v15;
  *(v16 + 64) = &off_1000AC480;
  *(v16 + 32) = v29;
  *(v16 + 136) = v39;
  *(v16 + 144) = &off_1000AC080;
  *(v16 + 112) = v30;
  *(v16 + 96) = v38;
  *(v16 + 104) = &off_1000A8060;
  *(v16 + 72) = v31;
  *(v16 + 256) = _swiftEmptyArrayStorage;
  *(v16 + 264) = 0;
  *(v16 + 304) = 0;
  *(v16 + 272) = 0u;
  *(v16 + 288) = 0u;
  *(v16 + 16) = v49;
  *(v16 + 24) = v48;
  sub_100008748((v1 + 136), v16 + 192);
  *(v16 + 152) = v43;
  *(v16 + 160) = v53;
  *(v16 + 232) = v50;
  *(v16 + 240) = v51;
  *(v16 + 176) = v44;
  *(v16 + 184) = v45;
  *(v16 + 248) = v47;
  *(v16 + 249) = v46;
  swift_bridgeObjectRetain_n();

  sub_100003FB4((v1 + 256));

  sub_100003FB4((v1 + 216));

  sub_100003FB4((v1 + 176));

  sub_100003FB4((v1 + 96));

  sub_100003FB4((v1 + 56));

  sub_100003FB4((v1 + 16));

  v32 = swift_allocObject();
  v32[2] = v52;
  v32[3] = v49;
  v32[4] = v48;
  swift_unknownObjectRetain();
  sub_100013374(sub_10001A540, v32);
  v33 = *(v1 + 296);

  v33[3] = &type metadata for AEARestrictionsDeactivation;
  v33[4] = &off_1000A7600;
  v34 = swift_allocObject();
  *v33 = v34;
  *(v34 + 16) = 0xD00000000000002CLL;
  *(v34 + 24) = 0x80000001000887C0;
  *(v34 + 32) = 5;
  *(v34 + 40) = 0;
  *(v34 + 48) = v16;
  v35 = *(v1 + 8);

  return v35();
}

void sub_100011F1C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [a1 setString:v2 forKey:v3];

  v17 = 0;
  v4 = [a1 persistWithError:&v17];
  v5 = v17;
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C370(v8, qword_1000BC578);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = sub_100067820(v16);
      v15 = sub_100043D60(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to persist restriction scratchpad. Error: %{public}s", v11, 0xCu);
      sub_100003FB4(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1000121B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000F618;

  return sub_1000117B4(a1, a2, a3, a4);
}

uint64_t sub_100012270()
{
  if (v0[37])
  {
    v1 = v0[37];
  }

  else
  {
    v2 = v0[2];
    v3 = v0[3];
    sub_10000859C((v0 + 14), v24);
    sub_10000859C((v0 + 9), v22);
    v4 = v0[29];
    v5 = v0[30];
    v6 = v25;
    v7 = sub_10001A19C(v24, v25);
    v8 = *(*(v6 - 8) + 64);
    __chkstk_darwin(v7, v7);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = v23;
    v13 = sub_10001A19C(v22, v23);
    v14 = *(*(v12 - 8) + 64);
    __chkstk_darwin(v13, v13);
    v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v10;
    v19 = *v16;

    v1 = sub_100019378(v2, v3, v18, v19, v4, v5);
    sub_100003FB4(v22);
    sub_100003FB4(v24);
    v20 = v0[37];
    v0[37] = v1;
  }

  return v1;
}

uint64_t sub_100012490()
{
  if (v0[38])
  {
    v1 = v0[38];
  }

  else
  {
    sub_10000859C((v0 + 9), v25);
    v3 = v0[29];
    v2 = v0[30];
    v4 = v26;
    v5 = sub_10001A19C(v25, v26);
    v6 = *(*(v4 - 8) + 64);
    __chkstk_darwin(v5, v5);
    v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = *v8;
    v11 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
    v24[3] = v11;
    v24[4] = &off_1000A8060;
    v24[0] = v10;
    type metadata accessor for AEAHomeScreenConfigurer();
    v1 = swift_allocObject();
    v12 = sub_10001A19C(v24, v11);
    v13 = *(*(v11 - 8) + 64);
    __chkstk_darwin(v12, v12);
    v15 = (v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    *(v1 + 40) = v11;
    *(v1 + 48) = &off_1000A8060;
    *(v1 + 16) = v17;
    v18 = type metadata accessor for CATSerializer();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    v21 = CATSerializer.init()();
    *(v1 + 64) = v2;
    *(v1 + 72) = v21;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0;
    *(v1 + 56) = v3;
    sub_100003FB4(v24);
    sub_100003FB4(v25);
    v22 = v0[38];
    v0[38] = v1;
  }

  return v1;
}

uint64_t sub_1000126EC()
{
  v1[13] = v0;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1000127B4, v3, v2);
}

uint64_t sub_1000127B4()
{
  v1 = *(v0 + 104);
  *(v1 + 264) = 0;
  swift_beginAccess();
  sub_10006F5E4();
  swift_endAccess();
  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  sub_10000858C(v2);
  v4 = *(v1 + 288);
  if (v4)
  {
    [v4 cancel];
    v5 = *(v1 + 288);
  }

  v6 = *(v0 + 104);
  *(v1 + 288) = 0;
  swift_unknownObjectRelease();
  *(v0 + 128) = sub_100012490();

  return _swift_task_switch(sub_100012878, 0, 0);
}

uint64_t sub_100012878()
{
  v1 = *(v0[16] + 72);

  v2 = CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  v0[17] = v2;

  v3 = async function pointer to Task.value.getter[1];
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  *v4 = v0;
  v4[1] = sub_100012988;

  return Task.value.getter(v5, v2, &type metadata for () + 8, v5, &protocol self-conformance witness table for Error);
}

uint64_t sub_100012988()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = *(v2 + 136);

    v5 = sub_100012BAC;
  }

  else
  {
    v5 = sub_100012AA4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100012AA4()
{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[14];
  v4 = v0[15];

  return _swift_task_switch(sub_100012B10, v3, v4);
}

uint64_t sub_100012B10()
{
  v1 = v0[13];
  v0[20] = sub_100012270();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_100012E14;

  return sub_1000161F8();
}

uint64_t sub_100012BAC()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return _swift_task_switch(sub_100012C10, v2, v3);
}

uint64_t sub_100012C10()
{
  v18 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[19];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[8];
    v10 = v0[10];
    v11 = sub_100067820(v0[9]);
    v13 = sub_100043D60(v11, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to tear down home screen configuration session: %{public}s", v7, 0xCu);
    sub_100003FB4(v8);
  }

  else
  {
  }

  v14 = v0[13];
  v0[20] = sub_100012270();
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_100012E14;

  return sub_1000161F8();
}

uint64_t sub_100012E14()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v9 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_100013310;
  }

  else
  {
    v7 = v2[20];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_100012F30;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100012F30()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 176);
  v6 = (*(v1 + 168) + **(v1 + 168));
  v3 = *(*(v1 + 168) + 4);
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_10001301C;

  return v6();
}

uint64_t sub_10001301C()
{
  v2 = *(*v1 + 184);
  v3 = *v1;
  v3[24] = v0;

  if (v0)
  {
    v4 = v3[14];
    v5 = v3[15];

    return _swift_task_switch(sub_10001314C, v4, v5);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10001314C()
{
  v17 = v0;
  if (qword_1000B6420 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC518);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[24];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = v0[5];
    v10 = v0[7];
    v11 = sub_100067820(v0[6]);
    v13 = sub_100043D60(v11, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "An error occurred while tearing down single app mode: %{public}s", v7, 0xCu);
    sub_100003FB4(v8);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100013310()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

uint64_t sub_100013374(uint64_t result, uint64_t a2)
{
  if ((*(v2 + 264) & 1) == 0)
  {
    v3 = v2;
    *(v2 + 264) = 1;
    v5 = *(v2 + 272);
    v4 = *(v2 + 280);
    v3[34] = result;
    v3[35] = a2;

    sub_10000858C(v5);
    v6 = v3[27];
    v7 = v3[28];
    sub_100005A3C(v3 + 24, v6);
    (*(v7 + 16))(v6, v7);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v3[32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((v3[32] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100019F60;
    *(v9 + 24) = v8;
    sub_100003F6C(&qword_1000B80E0, &qword_100080A60);
    sub_100004EE0(&qword_1000B80E8, &qword_1000B80E0, &qword_100080A60);
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    sub_100003F6C(&qword_1000B80F0, &unk_100081CC0);
    sub_100004EE0(&qword_1000B80F8, &qword_1000B80F0, &unk_100081CC0);
    AnyCancellable.store<A>(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000135F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = v19 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    sub_100019F70(a1, v19);
    type metadata accessor for AgentActor();
    inited = swift_initStaticObject();
    v15 = sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
    v16 = swift_allocObject();
    v17 = v19[3];
    *(v16 + 72) = v19[2];
    *(v16 + 88) = v17;
    *(v16 + 104) = *v20;
    v18 = v19[1];
    *(v16 + 40) = v19[0];
    *(v16 + 16) = inited;
    *(v16 + 24) = v15;
    *(v16 + 32) = v12;
    *(v16 + 119) = *&v20[15];
    *(v16 + 56) = v18;
    *(v16 + 128) = a2;
    *(v16 + 136) = a3;

    sub_10006F6D0(0, 0, v10, &unk_100080A70, v16);
  }

  return result;
}

uint64_t sub_1000137C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_10000F618;

  return sub_100013890(a5, a6, a7);
}

uint64_t sub_100013890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[50] = v6;
  v4[51] = v5;

  return _swift_task_switch(sub_10001395C, v6, v5);
}

uint64_t sub_10001395C()
{
  v1 = *(v0 + 392);
  v2 = v1[34];
  if (v2)
  {
    v3 = v1[35];
    v1[34] = 0;
    v1[35] = 0;
    v2();
    sub_10000858C(v2);
    v1 = *(v0 + 392);
  }

  v4 = *(v0 + 368);
  v5 = sub_100005A3C(v1 + 4, v1[7]);
  sub_100042268(*v5, v4, v0 + 128);
  v6 = sub_100012270();
  v7 = *(v0 + 128);
  *(v0 + 416) = v6;
  *(v0 + 424) = v7;
  *(v0 + 344) = v7;
  sub_10001973C(v7, v0 + 72);
  v8 = *(v0 + 104) | ((*(v0 + 108) | (*(v0 + 110) << 16)) << 32);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v0 + 112);
  v9 = swift_task_alloc();
  *(v0 + 432) = v9;
  *v9 = v0;
  v9[1] = sub_100013A9C;

  return sub_100015360(v0 + 16);
}

uint64_t sub_100013A9C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v9 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = v2[50];
    v5 = v2[51];
    v6 = sub_100014F84;
  }

  else
  {
    v7 = v2[52];
    sub_100019AD4((v2 + 9));

    v4 = v2[50];
    v5 = v2[51];
    v6 = sub_100013BC4;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100013BC4()
{
  v1 = *(v0 + 392);
  if (!*(v1 + 288))
  {
    v2 = *(v1 + 184);
    v3 = sub_10001E8C0(*(v1 + 16), *(v1 + 24));
    v4 = *(v1 + 288);
    *(v1 + 288) = v3;
    swift_unknownObjectRelease();
    v1 = *(v0 + 392);
  }

  if (*(v1 + 249) == 1)
  {
    v5 = *(v0 + 424);
    v6 = *(v0 + 368);
    *(v0 + 448) = sub_100012490();
    *(v0 + 456) = sub_100019B88(v5);
    *(v0 + 464) = v7;
    *(v0 + 472) = v8;
    *(v0 + 480) = v9;

    return _swift_task_switch(sub_100013FEC, 0, 0);
  }

  if (*(v1 + 248) == 1)
  {
    if (*(*(*(v0 + 368) + 56) + 16))
    {
      v10 = *(*(v0 + 424) + 16);
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 272) = *(v0 + 136);
      sub_100019B28(v0 + 272, &qword_1000B80D0, &qword_100083180);
      *(v0 + 280) = *(v0 + 144);
      sub_100019B28(v0 + 280, &qword_1000B80D0, &qword_100083180);
      *(v0 + 288) = *(v0 + 152);
      sub_100019B28(v0 + 288, &qword_1000B80D0, &qword_100083180);
      *(v0 + 296) = *(v0 + 160);
      sub_100019B28(v0 + 296, &qword_1000B80D0, &qword_100083180);
      if (v10 != 1)
      {
        v11 = *(v0 + 392);
        v12 = *(v11 + 176);
        v22 = (*(v11 + 168) + **(v11 + 168));
        v13 = *(*(v11 + 168) + 4);
        v14 = swift_task_alloc();
        *(v0 + 528) = v14;
        *v14 = v0;
        v15 = sub_100014C78;
LABEL_16:
        v14[1] = v15;

        return v22();
      }
    }

    else
    {
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 304) = *(v0 + 136);
      sub_100019B28(v0 + 304, &qword_1000B80D0, &qword_100083180);
      *(v0 + 312) = *(v0 + 144);
      sub_100019B28(v0 + 312, &qword_1000B80D0, &qword_100083180);
      *(v0 + 320) = *(v0 + 152);
      sub_100019B28(v0 + 320, &qword_1000B80D0, &qword_100083180);
      *(v0 + 328) = *(v0 + 160);
      sub_100019B28(v0 + 328, &qword_1000B80D0, &qword_100083180);
    }

    v18 = *(v0 + 392);
    v19 = *(v18 + 160);
    v22 = (*(v18 + 152) + **(v18 + 152));
    v20 = *(*(v18 + 152) + 4);
    v14 = swift_task_alloc();
    *(v0 + 512) = v14;
    *v14 = v0;
    v15 = sub_100014900;
    goto LABEL_16;
  }

  sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
  *(v0 + 240) = *(v0 + 136);
  sub_100019B28(v0 + 240, &qword_1000B80D0, &qword_100083180);
  *(v0 + 248) = *(v0 + 144);
  sub_100019B28(v0 + 248, &qword_1000B80D0, &qword_100083180);
  *(v0 + 256) = *(v0 + 152);
  sub_100019B28(v0 + 256, &qword_1000B80D0, &qword_100083180);
  *(v0 + 360) = *(v0 + 160);
  sub_100019B28(v0 + 360, &qword_1000B80D0, &qword_100083180);
  v16 = *(v0 + 384);
  (*(v0 + 376))(0, 0);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100013FEC()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v4 = *(v2 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = *(v0 + 464);
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;

  v6 = CATSerializer.enqueue<A>(respectingCancelAll:_:)();
  *(v0 + 488) = v6;

  v7 = async function pointer to Task.value.getter[1];
  v8 = swift_task_alloc();
  *(v0 + 496) = v8;
  v9 = sub_100003F6C(&qword_1000B7CC8, &unk_100080A50);
  *v8 = v0;
  v8[1] = sub_100014130;

  return Task.value.getter(v9, v6, &type metadata for () + 8, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_100014130()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = v2[61];
    sub_100019B28((v2 + 43), &qword_1000B80D0, &qword_100083180);
    v2[26] = v2[17];
    sub_100019B28((v2 + 26), &qword_1000B80D0, &qword_100083180);
    v2[27] = v2[18];
    sub_100019B28((v2 + 27), &qword_1000B80D0, &qword_100083180);
    v2[28] = v2[19];
    sub_100019B28((v2 + 28), &qword_1000B80D0, &qword_100083180);
    v2[29] = v2[20];
    sub_100019B28((v2 + 29), &qword_1000B80D0, &qword_100083180);

    v5 = sub_1000146CC;
  }

  else
  {
    v5 = sub_1000142D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000142D8()
{
  v1 = v0[61];
  v2 = v0[56];

  v3 = v0[50];
  v4 = v0[51];

  return _swift_task_switch(sub_100014348, v3, v4);
}

uint64_t sub_100014348()
{
  if (*(*(v0 + 392) + 248) == 1)
  {
    if (*(*(*(v0 + 368) + 56) + 16))
    {
      v1 = *(*(v0 + 424) + 16);
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 272) = *(v0 + 136);
      sub_100019B28(v0 + 272, &qword_1000B80D0, &qword_100083180);
      *(v0 + 280) = *(v0 + 144);
      sub_100019B28(v0 + 280, &qword_1000B80D0, &qword_100083180);
      *(v0 + 288) = *(v0 + 152);
      sub_100019B28(v0 + 288, &qword_1000B80D0, &qword_100083180);
      *(v0 + 296) = *(v0 + 160);
      sub_100019B28(v0 + 296, &qword_1000B80D0, &qword_100083180);
      if (v1 != 1)
      {
        v2 = *(v0 + 392);
        v3 = *(v2 + 176);
        v13 = (*(v2 + 168) + **(v2 + 168));
        v4 = *(*(v2 + 168) + 4);
        v5 = swift_task_alloc();
        *(v0 + 528) = v5;
        *v5 = v0;
        v6 = sub_100014C78;
LABEL_10:
        v5[1] = v6;

        return v13();
      }
    }

    else
    {
      sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
      *(v0 + 304) = *(v0 + 136);
      sub_100019B28(v0 + 304, &qword_1000B80D0, &qword_100083180);
      *(v0 + 312) = *(v0 + 144);
      sub_100019B28(v0 + 312, &qword_1000B80D0, &qword_100083180);
      *(v0 + 320) = *(v0 + 152);
      sub_100019B28(v0 + 320, &qword_1000B80D0, &qword_100083180);
      *(v0 + 328) = *(v0 + 160);
      sub_100019B28(v0 + 328, &qword_1000B80D0, &qword_100083180);
    }

    v10 = *(v0 + 392);
    v11 = *(v10 + 160);
    v13 = (*(v10 + 152) + **(v10 + 152));
    v12 = *(*(v10 + 152) + 4);
    v5 = swift_task_alloc();
    *(v0 + 512) = v5;
    *v5 = v0;
    v6 = sub_100014900;
    goto LABEL_10;
  }

  sub_100019B28(v0 + 344, &qword_1000B80D0, &qword_100083180);
  *(v0 + 240) = *(v0 + 136);
  sub_100019B28(v0 + 240, &qword_1000B80D0, &qword_100083180);
  *(v0 + 248) = *(v0 + 144);
  sub_100019B28(v0 + 248, &qword_1000B80D0, &qword_100083180);
  *(v0 + 256) = *(v0 + 152);
  sub_100019B28(v0 + 256, &qword_1000B80D0, &qword_100083180);
  *(v0 + 360) = *(v0 + 160);
  sub_100019B28(v0 + 360, &qword_1000B80D0, &qword_100083180);
  v7 = *(v0 + 384);
  (*(v0 + 376))(0, 0);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000146CC()
{
  v1 = v0[56];

  v2 = v0[50];
  v3 = v0[51];

  return _swift_task_switch(sub_100014730, v2, v3);
}

uint64_t sub_100014730()
{
  v17 = v0;
  v1 = v0[63];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = v0[21];
    v8 = v0[23];
    v9 = sub_100067820(v0[22]);
    v11 = sub_100043D60(v9, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v13 = v0[47];
  v12 = v0[48];
  swift_errorRetain();
  v13(v1, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100014900()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(*v1 + 520) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_100014AA8;
  }

  else
  {
    v7 = sub_100014A3C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100014A3C()
{
  v1 = *(v0 + 384);
  (*(v0 + 376))(0, 0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100014AA8()
{
  v17 = v0;
  v1 = v0[65];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = v0[21];
    v8 = v0[23];
    v9 = sub_100067820(v0[22]);
    v11 = sub_100043D60(v9, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v13 = v0[47];
  v12 = v0[48];
  swift_errorRetain();
  v13(v1, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100014C78()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  if (v0)
  {
    v7 = sub_100014DB4;
  }

  else
  {
    v7 = sub_10001A788;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100014DB4()
{
  v17 = v0;
  v1 = v0[67];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C370(v2, qword_1000BC578);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = v0[21];
    v8 = v0[23];
    v9 = sub_100067820(v0[22]);
    v11 = sub_100043D60(v9, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to apply restrictions for configuration: %{public}s", v5, 0xCu);
    sub_100003FB4(v6);
  }

  v13 = v0[47];
  v12 = v0[48];
  swift_errorRetain();
  v13(v1, 1);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100014F84()
{
  v18 = v0;
  v1 = v0[52];
  sub_100019AD4((v0 + 9));

  sub_100019B28((v0 + 43), &qword_1000B80D0, &qword_100083180);
  v0[42] = v0[17];
  sub_100019B28((v0 + 42), &qword_1000B80D0, &qword_100083180);
  v0[33] = v0[18];
  sub_100019B28((v0 + 33), &qword_1000B80D0, &qword_100083180);
  v0[24] = v0[19];
  sub_100019B28((v0 + 24), &qword_1000B80D0, &qword_100083180);
  v0[25] = v0[20];
  sub_100019B28((v0 + 25), &qword_1000B80D0, &qword_100083180);
  v2 = v0[55];
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C370(v3, qword_1000BC578);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = v0[21];
    v9 = v0[23];
    v10 = sub_100067820(v0[22]);
    v12 = sub_100043D60(v10, v11, &v17);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to apply restrictions for configuration: %{public}s", v6, 0xCu);
    sub_100003FB4(v7);
  }

  v14 = v0[47];
  v13 = v0[48];
  swift_errorRetain();
  v14(v2, 1);

  v15 = v0[1];

  return v15();
}

uint64_t *sub_1000151F0()
{
  v1 = v0[3];

  sub_100003FB4(v0 + 4);
  sub_100003FB4(v0 + 9);
  sub_100003FB4(v0 + 14);
  v2 = v0[20];
  v3 = v0[22];

  v4 = v0[23];

  sub_100003FB4(v0 + 24);
  v5 = v0[30];

  v6 = v0[32];

  v7 = v0[35];
  sub_10000858C(v0[34]);
  v8 = v0[36];
  swift_unknownObjectRelease();
  v9 = v0[37];

  v10 = v0[38];

  return v0;
}

uint64_t sub_100015284()
{
  sub_1000151F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000152D8()
{
  [*(v0 + 152) cancel];
  sub_100003FB4((v0 + 112));
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 216);
  sub_100018A5C(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100015360(uint64_t a1)
{
  *(v2 + 904) = v1;
  *(v2 + 896) = a1;
  return _swift_task_switch(sub_100015384, v1, 0);
}

uint64_t sub_100015384()
{
  v103 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v3 = v1[21];
  v5 = v1[22];
  v4 = v1[23];
  v6 = v1[24];
  v7 = v1[25];
  v8 = *(v1 + 13);
  v9 = *v2;
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v12 = *(v2 + 40);
  v99 = *(v2 + 32);
  v100 = v2;
  v13 = *(v2 + 48);
  v14 = v1[26];
  v97 = *v2;
  if (v12 == 1)
  {
    if (v8 == 1)
    {
      sub_100018A14(v3, v5, v4, v6, v7, 1);
      sub_100019D8C(v2, v101 + 744, &qword_1000B80C0, &unk_100080A30);
      sub_100018A5C(v97, *(&v97 + 1), v11, v10, v99, 1);
LABEL_15:
      if (qword_1000B6440 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000C370(v40, qword_1000BC578);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      v16 = v101;
      if (!os_log_type_enabled(v41, v42))
      {
        goto LABEL_37;
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Skipping duplicate restrictions update", v43, 2u);
      goto LABEL_36;
    }

    goto LABEL_5;
  }

  if (v8 == 1)
  {
LABEL_5:
    v92 = v1;
    v93 = v1 + 21;
    v94 = v1[23];
    v15 = v1[24];
    sub_100018A14(v3, v5, v94, v6, v7, v8);
    sub_100019D8C(v2, v101 + 296, &qword_1000B80C0, &unk_100080A30);
    sub_100018A5C(v97, *(&v97 + 1), v11, v10, v99, v12);
    sub_100018A5C(v3, v5, v94, v15, v7, v14);
    goto LABEL_6;
  }

  v92 = v1;
  v93 = v1 + 21;
  *(v101 + 16) = v3;
  *(v101 + 24) = v5;
  *(v101 + 32) = v4;
  *(v101 + 40) = v6;
  *(v101 + 48) = v7;
  *(v101 + 54) = BYTE6(v7);
  *(v101 + 52) = WORD2(v7);
  *(v101 + 72) = v9;
  *(v101 + 56) = v8;
  *(v101 + 88) = v11;
  *(v101 + 96) = v10;
  *(v101 + 104) = v99;
  *(v101 + 110) = BYTE6(v99);
  *(v101 + 108) = WORD2(v99);
  *(v101 + 112) = v12;
  *(v101 + 120) = v13;
  v91 = v11;
  v39 = v6;
  v95 = sub_100062FE4(v101 + 72, v101 + 16);
  sub_100018A14(v3, v5, v4, v39, v7, v14);
  sub_100019D8C(v2, v101 + 800, &qword_1000B80C0, &unk_100080A30);
  sub_100018A5C(v3, v5, v4, v39, v7, v14);
  sub_100018A5C(v97, *(&v97 + 1), v91, v10, v99, v12);
  if (v95)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v16 = v101;
  v17 = *(v101 + 896);
  v18 = type metadata accessor for Logger();
  *(v101 + 912) = sub_10000C370(v18, qword_1000BC578);
  sub_100019D8C(v17, v101 + 352, &qword_1000B80C0, &unk_100080A30);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  sub_100019B28(v17, &qword_1000B80C0, &unk_100080A30);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v101 + 896);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v102[0] = v23;
    *v22 = 136315138;
    v25 = *(v21 + 16);
    v24 = *(v21 + 32);
    v26 = *v21;
    *(v101 + 680) = *(v21 + 48);
    *(v101 + 648) = v25;
    *(v101 + 664) = v24;
    *(v101 + 632) = v26;
    sub_100019D8C(v21, v101 + 688, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v27 = String.init<A>(describing:)();
    v29 = sub_100043D60(v27, v28, v102);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v19, v20, "Applying restrictions: %s", v22, 0xCu);
    sub_100003FB4(v23);
  }

  v30 = *sub_100005A3C((*(v101 + 904) + 112), *(*(v101 + 904) + 136));
  v31 = *(v100 + 40);
  if (v31 == 1)
  {
    v32 = 0;
  }

  else
  {
    v33 = *(v101 + 896);
    v34 = *(v100 + 48);
    v35 = *(v33 + 32);
    v36 = *(v33 + 16);
    *(v101 + 184) = *v33;
    *(v101 + 200) = v36;
    *(v101 + 216) = v35;
    *(v101 + 224) = v31;
    *(v101 + 232) = v34;
    v32 = sub_1000781BC(*(v30 + 32));
  }

  v37 = *(v30 + 16);
  v38 = *(v30 + 24);
  sub_10007A2F4(v32);
  v98 = (v101 + 856);
  v44 = *(v101 + 896);

  v45 = v92[21];
  v46 = v92[22];
  v47 = v92[23];
  v48 = v92[24];
  v50 = v92[25];
  v49 = v92[26];
  v51 = v92[27];
  v52 = *(v44 + 48);
  v53 = *(v44 + 32);
  v54 = *v44;
  *(v93 + 1) = *(v44 + 16);
  *(v93 + 2) = v53;
  *v93 = v54;
  v93[6] = v52;
  sub_100019D8C(v44, v101 + 408, &qword_1000B80C0, &unk_100080A30);
  sub_100018A14(v45, v46, v47, v48, v50, v49);
  sub_100018A5C(v45, v46, v47, v48, v50, v49);
  v55 = *(v101 + 896);
  if (v49 != 1)
  {
    *(v101 + 128) = v45;
    *(v101 + 136) = v46;
    *(v101 + 144) = v47;
    *(v101 + 152) = v48;
    *(v101 + 160) = v50;
    *(v101 + 166) = BYTE6(v50);
    *(v101 + 164) = WORD2(v50);
    *(v101 + 168) = v49;
    *(v101 + 176) = v51;
    v96 = sub_100016104();
    sub_100018A5C(v45, v46, v47, v48, v50, v49);
    v62 = *v55;
    v63 = v55[1];
    *(v101 + 888) = *(v55 + 4);
    *v98 = v62;
    *(v101 + 872) = v63;
    v59 = v100;
    v60 = *(v100 + 40);
    if (v60 != 1)
    {
      v58 = v101 + 856;
      v61 = v96;
      goto LABEL_28;
    }

    if (v96)
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Skipping SpringBoard observation: deactivating app restrictions", v66, 2u);
      }

      goto LABEL_34;
    }

LABEL_31:
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Skipping SpringBoard observation: no change in app restrictions", v74, 2u);
    }

LABEL_34:
    v75 = *(v101 + 912);
    v76 = *(v101 + 896);
    sub_100019D8C(v76, v101 + 464, &qword_1000B80C0, &unk_100080A30);
    v41 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    sub_100019B28(v76, &qword_1000B80C0, &unk_100080A30);
    if (!os_log_type_enabled(v41, v77))
    {
LABEL_37:

      v87 = *(v16 + 8);

      return v87();
    }

    v78 = *(v101 + 896);
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102[0] = v80;
    *v79 = 136315138;
    v82 = *(v78 + 16);
    v81 = *(v78 + 32);
    v83 = *v78;
    *(v101 + 568) = *(v78 + 48);
    *(v101 + 536) = v82;
    *(v101 + 552) = v81;
    *(v101 + 520) = v83;
    sub_100019D8C(v78, v101 + 576, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v84 = String.init<A>(describing:)();
    v86 = sub_100043D60(v84, v85, v102);

    *(v79 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v41, v77, "Finished applying restrictions: %s", v79, 0xCu);
    sub_100003FB4(v80);

LABEL_36:

    goto LABEL_37;
  }

  v56 = *v55;
  v57 = v55[1];
  v58 = v101 + 856;
  *(v101 + 888) = *(v55 + 4);
  *v98 = v56;
  *(v101 + 872) = v57;
  v59 = v100;
  v60 = *(v100 + 40);
  if (v60 == 1)
  {
    goto LABEL_31;
  }

  v61 = 0;
LABEL_28:
  *(v101 + 920) = v61;
  v67 = *(v59 + 48);
  v68 = *(v58 + 16);
  *(v101 + 240) = *v58;
  *(v101 + 256) = v68;
  *(v101 + 272) = *(v58 + 32);
  *(v101 + 280) = v60;
  *(v101 + 288) = v67;
  v69 = sub_100016104();
  *(v101 + 928) = v69;
  if (v61)
  {

    v71 = sub_10001A78C(v70, v69);

    if (v71)
    {

      goto LABEL_31;
    }
  }

  v89 = swift_task_alloc();
  *(v101 + 936) = v89;
  *v89 = v101;
  v89[1] = sub_100015D88;
  v90 = *(v101 + 904);

  return sub_10001653C(v69);
}

uint64_t sub_100015D88()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v4 = *v1;
  *(*v1 + 944) = v0;

  v5 = *(v2 + 904);
  if (v0)
  {
    v6 = sub_100016098;
  }

  else
  {
    v6 = sub_100015EB4;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100015EB4()
{
  v19 = v0;
  v1 = *(v0 + 928);
  v2 = *(v0 + 920);

  v3 = *(v0 + 912);
  v4 = *(v0 + 896);
  sub_100019D8C(v4, v0 + 464, &qword_1000B80C0, &unk_100080A30);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_100019B28(v4, &qword_1000B80C0, &unk_100080A30);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 896);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v11 = *(v7 + 16);
    v10 = *(v7 + 32);
    v12 = *v7;
    *(v0 + 568) = *(v7 + 48);
    *(v0 + 536) = v11;
    *(v0 + 552) = v10;
    *(v0 + 520) = v12;
    sub_100019D8C(v7, v0 + 576, &qword_1000B80C0, &unk_100080A30);
    sub_100003F6C(&qword_1000B80C0, &unk_100080A30);
    v13 = String.init<A>(describing:)();
    v15 = sub_100043D60(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Finished applying restrictions: %s", v8, 0xCu);
    sub_100003FB4(v9);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100016098()
{
  v1 = v0[116];

  v2 = v0[118];
  v3 = v0[115];

  v4 = v0[1];

  return v4();
}

void *sub_100016104()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return &_swiftEmptySetSingleton;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10004A8CC(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A8CC((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      *(v8 + 4) = v5;
      *(v8 + 5) = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = sub_10004C148(_swiftEmptyArrayStorage);

  return v9;
}

uint64_t sub_100016218()
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C370(v1, qword_1000BC578);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Tearing down restrictions and restriction monitoring session…", v4, 2u);
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = xmmword_1000807B0;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_100016388;
  v6 = *(v0 + 72);

  return sub_100015360(v0 + 16);
}

uint64_t sub_100016388()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 72);

    return _swift_task_switch(sub_1000164CC, v7, 0);
  }
}

uint64_t sub_1000164CC()
{
  [*(*(v0 + 72) + 152) cancel];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001653C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000165FC, v1, 0);
}

uint64_t sub_1000165FC()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 16) = xmmword_1000807C0;
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  ContinuousClock.init()();
  v5 = async function pointer to static Task<>.cat_withTimeout<A, B>(duration:clock:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  v7 = sub_100019624(&qword_1000B80A8, &type metadata accessor for ContinuousClock);
  *v6 = v0;
  v6[1] = sub_100016758;
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  return static Task<>.cat_withTimeout<A, B>(duration:clock:body:)(v7, v0 + 16, v8, &unk_100080A18, v4, &type metadata for () + 8, v9, v7);
}

uint64_t sub_100016758()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 88) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 40);
  if (v0)
  {
    v10 = sub_100016960;
  }

  else
  {
    v10 = sub_1000168FC;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000168FC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100016960()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1000169C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_100003F6C(&qword_1000B80B0, &qword_100080A20);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100003F6C(&qword_1000B80B8, &qword_100080A28);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100016AF8, 0, 0);
}

uint64_t sub_100016AF8()
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000C370(v1, qword_1000BC578);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Beginning SpringBoard observation for expected app restriction update", v4, 2u);
  }

  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[3];

  v10 = *(v9 + 152);
  type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession();
  sub_1000272D8();
  AsyncStream.makeAsyncIterator()();
  (*(v7 + 8))(v6, v8);
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_100016CD8;
  v13 = v0[10];
  v14 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v14);
}

uint64_t sub_100016CD8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100016DD4, 0, 0);
}

uint64_t sub_100016DD4()
{
  v21 = v0;
  v1 = v0[2];
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0[11];
  v3 = v0[2];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;

    v8 = Set.description.getter();
    v10 = v9;

    v11 = sub_100043D60(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Observed SpringBoard app restriction update: %s", v6, 0xCu);
    sub_100003FB4(v7);
  }

  v12 = sub_10001A78C(v1, v0[4]);

  if ((v12 & 1) == 0)
  {
    v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v17 = swift_task_alloc();
    v0[12] = v17;
    *v17 = v0;
    v17[1] = sub_100016CD8;
    v18 = v0[10];
    v19 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v19);
  }

  else
  {
LABEL_5:
    v13 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100017040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[33] = a3;
  v6[34] = a4;
  v6[32] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[37] = v8;
  v6[38] = v7;

  return _swift_task_switch(sub_100017110, v8, v7);
}

uint64_t sub_100017110()
{
  v67 = v0;
  v1 = v0[36];
  v2 = v0[33];
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  if (!v3)
  {
    v14 = v0[34];
    v15 = v0[35];
    v16 = v0[32];

    sub_1000188D8(v16, v2);
    sub_1000188D8(v4, 0);
    goto LABEL_20;
  }

  if (v4 != v0[32] || v3 != v2)
  {
    v8 = v0[33];
    v9 = v1[15];
    v10 = v1[16];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v21 = v0[34];
      v20 = v0[35];
      v22 = v0[33];

      sub_100019EC4(v4, v3);

LABEL_17:

      goto LABEL_18;
    }
  }

  if ((sub_1000061BC(v0[34], v5) & 1) == 0)
  {
    v18 = v0[33];
    v17 = v0[34];
    v19 = v0[35];

    sub_100019EC4(v4, v3);

LABEL_18:

LABEL_19:

    goto LABEL_20;
  }

  v12 = v0[33];
  v11 = v0[34];
  if (!v0[35])
  {
    v23 = v0[33];

    if (!v6)
    {
      sub_100019EC4(v4, v3);

      goto LABEL_37;
    }

    sub_100019EC4(v4, v3);

    goto LABEL_17;
  }

  if (!v6)
  {

    sub_100019EC4(v4, v3);

    goto LABEL_19;
  }

  v13 = sub_1000061BC(v0[35], v6);

  sub_100019EC4(v4, v3);

  if (v13)
  {
    goto LABEL_37;
  }

LABEL_20:
  v24 = v0[36];
  swift_beginAccess();
  sub_100019D8C(v24 + 80, (v0 + 2), &qword_1000B80A0, &qword_100080A08);
  v25 = v0[5];
  sub_100019B28((v0 + 2), &qword_1000B80A0, &qword_100080A08);
  if (v25)
  {
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v27 = v0[34];
    v26 = v0[35];
    v28 = v0[33];
    v29 = type metadata accessor for Logger();
    sub_10000C370(v29, qword_1000BC578);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = v0[34];
      v33 = v0[35];
      v35 = v0[32];
      v34 = v0[33];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v66 = v37;
      *v36 = 136446210;
      v0[22] = v35;
      v0[23] = v34;
      v0[24] = v32;
      v0[25] = v33;

      v38 = String.init<A>(describing:)();
      v40 = sub_100043D60(v38, v39, &v66);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating home screen with configuration: %{public}s", v36, 0xCu);
      sub_100003FB4(v37);
    }

    sub_100019D8C(v0[36] + 80, (v0 + 12), &qword_1000B80A0, &qword_100080A08);
    if (v0[15])
    {
      v41 = v0[33];
      v42 = v0[34];
      sub_10000859C((v0 + 12), (v0 + 17));
      sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
      v43 = *sub_100005A3C(v0 + 17, v0[20]);
      v44 = swift_task_alloc();
      v0[44] = v44;
      *v44 = v0;
      v44[1] = sub_100017DE0;
      v45 = v0[35];
      v46 = v0[32];

      return sub_1000277C4(v46, v41, v42, v45);
    }

    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    v58 = v0[35];
    v57 = v0[36];
    v59 = v0[33];
    v60 = v0[34];
    v61 = v57[15];
    v62 = v57[16];
    v63 = v57[17];
    v64 = v57[18];
    v57[15] = v0[32];
    v57[16] = v59;
    v57[17] = v60;
    v57[18] = v58;

    sub_1000188D8(v61, v62);
LABEL_37:
    v65 = v0[1];

    return v65();
  }

  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10000C370(v48, qword_1000BC578);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Beginning home screen configuration session for the first time", v51, 2u);
  }

  v52 = v0[36];

  v54 = *(v52 + 56);
  v53 = *(v52 + 64);
  v55 = swift_allocObject();
  v0[39] = v55;
  *(v55 + 16) = v54;
  *(v55 + 24) = v53;
  v0[40] = type metadata accessor for AEAConcreteSpringBoardPrimitives.HomeScreenConfigurationSession();
  swift_allocObject();

  v56 = swift_task_alloc();
  v0[41] = v56;
  *v56 = v0;
  v56[1] = sub_1000178BC;

  return sub_100027304(sub_100019E2C, v55);
}

uint64_t sub_1000178BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v11 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v6 = v4[39];

    v7 = v4[37];
    v8 = v4[38];
    v9 = sub_100017DC8;
  }

  else
  {
    v4[43] = a1;
    v9 = sub_1000179F0;
    v7 = 0;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1000179F0()
{
  v1 = v0[43];
  v2 = v0[39];
  v0[10] = v0[40];
  v0[11] = &off_1000A8038;

  v0[7] = v1;
  v3 = v0[37];
  v4 = v0[38];

  return _swift_task_switch(sub_100017A68, v3, v4);
}

uint64_t sub_100017A68()
{
  v34 = v0;
  v1 = v0[36];
  swift_beginAccess();
  sub_100019E54((v0 + 7), v1 + 80);
  swift_endAccess();
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = type metadata accessor for Logger();
  sub_10000C370(v5, qword_1000BC578);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[34];
    v9 = v0[35];
    v11 = v0[32];
    v10 = v0[33];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136446210;
    v0[22] = v11;
    v0[23] = v10;
    v0[24] = v8;
    v0[25] = v9;

    v14 = String.init<A>(describing:)();
    v16 = sub_100043D60(v14, v15, &v33);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating home screen with configuration: %{public}s", v12, 0xCu);
    sub_100003FB4(v13);
  }

  sub_100019D8C(v0[36] + 80, (v0 + 12), &qword_1000B80A0, &qword_100080A08);
  if (v0[15])
  {
    v17 = v0[33];
    v18 = v0[34];
    sub_10000859C((v0 + 12), (v0 + 17));
    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    v19 = *sub_100005A3C(v0 + 17, v0[20]);
    v20 = swift_task_alloc();
    v0[44] = v20;
    *v20 = v0;
    v20[1] = sub_100017DE0;
    v21 = v0[35];
    v22 = v0[32];

    return sub_1000277C4(v22, v17, v18, v21);
  }

  else
  {
    sub_100019B28((v0 + 12), &qword_1000B80A0, &qword_100080A08);
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[33];
    v27 = v0[34];
    v28 = v24[15];
    v29 = v24[16];
    v30 = v24[17];
    v31 = v24[18];
    v24[15] = v0[32];
    v24[16] = v26;
    v24[17] = v27;
    v24[18] = v25;

    sub_1000188D8(v28, v29);
    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100017DE0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 304);
  v6 = *(v2 + 296);
  if (v0)
  {
    v7 = sub_100017FD4;
  }

  else
  {
    v7 = sub_100017F1C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100017F1C()
{
  sub_100003FB4(v0 + 17);
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v1[15] = v0[32];
  v1[16] = v3;
  v1[17] = v4;
  v1[18] = v2;

  sub_1000188D8(v5, v6);
  v9 = v0[1];

  return v9();
}

uint64_t sub_100017FD4()
{
  sub_100003FB4(v0 + 17);
  v1 = v0[45];
  v2 = v0[1];

  return v2();
}

uint64_t sub_100018038(void (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  if (qword_1000B6440 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C370(v7, qword_1000BC578);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
  }

  sub_1000186FC();
  swift_allocError();
  *v11 = a4;
  a1();
}

uint64_t sub_100018170(uint64_t a1, uint64_t a2)
{
  v2[23] = a2;
  type metadata accessor for AgentActor();
  swift_initStaticObject();
  sub_100019624(&qword_1000B80C8, type metadata accessor for AgentActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[24] = v4;
  v2[25] = v3;

  return _swift_task_switch(sub_100018238, v4, v3);
}

uint64_t sub_100018238()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  sub_100019D8C(v1 + 80, v0 + 56, &qword_1000B80A0, &qword_100080A08);
  if (*(v0 + 80))
  {
    sub_100008748((v0 + 56), v0 + 16);
    if (qword_1000B6440 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C370(v2, qword_1000BC578);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ending home screen configuration session", v5, 2u);
    }

    *(v0 + 128) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 96) = 0u;
    swift_beginAccess();
    sub_100019E54(v0 + 96, v1 + 80);
    swift_endAccess();
    v6 = *sub_100005A3C((v0 + 16), *(v0 + 40));
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = sub_100018464;

    return sub_100027BDC();
  }

  else
  {
    sub_100019B28(v0 + 56, &qword_1000B80A0, &qword_100080A08);
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100018464()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 192);
  if (v0)
  {
    v7 = sub_100018604;
  }

  else
  {
    v7 = sub_1000185A0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000185A0()
{
  sub_100003FB4((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100018604()
{
  sub_100003FB4(v0 + 2);
  v1 = v0[1];
  v2 = v0[27];

  return v1();
}

uint64_t sub_100018668()
{
  sub_100003FB4(v0 + 2);
  v1 = v0[8];

  v2 = v0[9];

  sub_100019B28((v0 + 10), &qword_1000B80A0, &qword_100080A08);
  v3 = v0[17];
  v4 = v0[18];
  sub_1000188D8(v0[15], v0[16]);

  return swift_deallocClassInstance();
}

unint64_t sub_1000186FC()
{
  result = qword_1000B8098;
  if (!qword_1000B8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8098);
  }

  return result;
}

void *sub_100018750()
{
  if (qword_1000B6558 != -1)
  {
    swift_once();
  }

  v1 = qword_1000BC778;
  sub_100003F6C(&qword_1000B80D8, &unk_100081EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000807D0;
  v3 = v0[3];
  v4 = v0[4];
  sub_100005A3C(v0, v3);
  v5 = *(v4 + 48);

  *(inited + 32) = v5(v3, v4);
  *(inited + 40) = v6;
  v7 = v0[7];

  v9 = sub_100010B84(v8);

  sub_10006FBA0(v9);
  v10 = sub_10004C148(inited);

  if (*(v10 + 16) <= v1[2] >> 3)
  {
    sub_100018AA4(v10);
  }

  else
  {
    v1 = sub_100018BD0(v10, v1);
  }

  v11 = sub_100010DB0(v1);

  return v11;
}

uint64_t sub_1000188D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100018928()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100018968(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001A778;

  return sub_1000169C4(a1, v5, v4);
}

uint64_t sub_100018A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_100018A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
  }

  return result;
}

uint64_t sub_100018AA4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100039CB8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100018BD0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = a2 + 7;

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = v5[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (v5[6] + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v31 = *(v5 + 32);
  v57 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v57;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    __chkstk_darwin(v29, v30);
    v2 = &v56 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v32);
    v33 = *(v2 + 8 * v8) & ~v4;
    v34 = v5[2];
    v61 = v2;
    *(v2 + 8 * v8) = v33;
    v35 = v34 - 1;
LABEL_23:
    v59 = v35;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v37 = v28;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v12)
      {
        v5 = sub_10004B2D4(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v38);
      ++v37;
      if (v11)
      {
        v28 = v38;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v39 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v40 = *(v3 + 48);
            v63 = v28;
            v41 = (v40 + ((v28 << 10) | (16 * v39)));
            v42 = *v41;
            v4 = v41[1];
            v43 = v5[5];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v44 = Hasher._finalize()();
            v45 = -1 << *(v5 + 32);
            v8 = v44 & ~v45;
            v2 = v8 >> 6;
            v46 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v47 = (v5[6] + 16 * v8);
          if (*v47 != v42 || v47[1] != v4)
          {
            v49 = ~v45;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v49;
              v2 = v8 >> 6;
              v46 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v50 = (v5[6] + 16 * v8);
              if (*v50 == v42 && v50[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v36 = v61[v2];
          v61[v2] = v36 & ~v46;
          v27 = (v36 & v46) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v35 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_100019140(v53, v57, v5, v2, v65);

  if (!v54)
  {

    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_100019F14();
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_100019140(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_10004B2D4(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

uint64_t sub_100019378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for AEAConcreteManagedConfigurationPrimitives();
  v35[3] = v12;
  v35[4] = &off_1000AC080;
  v35[0] = a3;
  v33 = type metadata accessor for AEAConcreteSpringBoardPrimitives();
  v34 = &off_1000A8060;
  v32[0] = a4;
  type metadata accessor for AEARestrictionsApplicator();
  v13 = swift_allocObject();
  v14 = sub_10001A19C(v35, v12);
  v15 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v14, v14);
  v17 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = v33;
  v20 = sub_10001A19C(v32, v33);
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v20, v20);
  v23 = (v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v17;
  v26 = *v23;

  swift_defaultActor_initialize();
  *(v13 + 200) = 0;
  *(v13 + 184) = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 208) = xmmword_1000807B0;
  v27 = type metadata accessor for AEAConcreteManagedConfigurationRestrictionsApplicator();
  swift_allocObject();
  v28 = sub_100077DEC(a1, a2);
  *(v13 + 136) = v27;
  *(v13 + 144) = &off_1000AC070;
  *(v13 + 112) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = a5;
  *(v29 + 24) = a6;
  v30 = objc_allocWithZone(type metadata accessor for AEAConcreteSpringBoardPrimitives.AppRestrictionsMonitoringSession());
  *(v13 + 152) = sub_100026DD8(sub_10001A1EC, v29);
  *(v13 + 160) = &off_1000A8050;
  sub_100003FB4(v32);
  sub_100003FB4(v35);
  return v13;
}

uint64_t sub_100019624(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10001966C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004A90C(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A90C((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10001973C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = v2[71];
  v70 = v2[72];
  v71 = v2[73];
  v73 = v2[74];
  v74 = v2[75];
  v75 = v2[69];
  v76 = v2[64];
  v79 = v2[77];
  v77 = v2[70];
  v78 = v2[68];
  v80 = v2[76];
  v5 = v2[67];
  v6 = v2[65];
  v7 = v2[66];
  v8 = sub_1000544CC();
  if (v9 && (v10 = v8, v11 = v9, v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v14 = sub_1000228D8(v12, v13, v10 & 0x101, v11), , , v14 != 2) && (v14 & 1) != 0)
  {
    v15 = 256;
  }

  else
  {
    v15 = 256;
    if (!v2[78])
    {
      v15 = 0;
    }
  }

  v69 = v15;
  v16 = sub_1000544CC();
  if (v17 && (v18 = v16, v19 = v17, v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v22 = sub_1000228D8(v20, v21, v18 & 0x101, v19), , , v22 != 2) && (v22 & 1) != 0)
  {
    v23 = 0x10000;
    v24 = sub_1000544CC();
    if (!v25)
    {
LABEL_11:
      v26 = 3;
      goto LABEL_17;
    }
  }

  else
  {
    if (v2[79])
    {
      v23 = 0x10000;
    }

    else
    {
      v23 = 0;
    }

    v24 = sub_1000544CC();
    if (!v25)
    {
      goto LABEL_11;
    }
  }

  v27 = v24;
  v28 = v25;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = sub_1000228D8(v29, v30, v27 & 0x101, v28);

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v7;
  v33 = sub_1000228D8(v31, v32, v27 & 0x101, v28);

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v23;
  v37 = v5;
  v38 = sub_1000228D8(v34, v35, v27 & 0x101, v28);

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = sub_1000228D8(v39, v40, v27 & 0x101, v28);

  v42 = v67 | (v33 << 8);
  v7 = v68;
  v43 = v42 & 0xFF00FFFF | (v38 << 16);
  v5 = v37;
  v23 = v36;
  v26 = v43 | (v41 << 24);
LABEL_17:
  v44 = 256;
  if (v70)
  {
    v45 = 256;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 | v72;
  if (v71)
  {
    v47 = 0x10000;
  }

  else
  {
    v47 = 0;
  }

  v48 = &_mh_execute_header;
  if (v73)
  {
    v49 = &_mh_execute_header;
  }

  else
  {
    v49 = 0;
  }

  v50 = v46 | v47 | v49;
  if (v74)
  {
    v51 = 0x10000000000;
  }

  else
  {
    v51 = 0;
  }

  v52 = 0x1000000000000;
  if (!v75)
  {
    v52 = 0;
  }

  v53 = 0x100000000000000;
  if (!v76)
  {
    v53 = 0;
  }

  v54 = v50 | v51 | v52 | v53;
  if (v77)
  {
    v55 = 0x10000;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 | v79;
  v57 = 0x1000000;
  if (!v78)
  {
    v57 = 0;
  }

  if (!v80)
  {
    v48 = 0;
  }

  v58 = v56 | v57 | v48;
  if (v5)
  {
    v59 = 0x10000000000;
  }

  else
  {
    v59 = 0;
  }

  v60 = v58 | v59;
  if (!v7)
  {
    v44 = 0;
  }

  v61 = v44 | v6;
  v62 = v26 >> 8;
  v63 = HIBYTE(v26);
  v64 = v69 | v23 | (v26 << 24);
  v65 = sub_10001966C(a1);
  result = sub_100018750();
  *a2 = v54;
  *(a2 + 8) = v60;
  *(a2 + 16) = v61;
  *(a2 + 24) = 0;
  *(a2 + 38) = v63;
  *(a2 + 36) = v62;
  *(a2 + 32) = v64;
  *(a2 + 40) = v65;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100019B28(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003F6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100019B88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004A944(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v6 >= v7 >> 1)
      {
        sub_10004A944((v7 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v6];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return 0xD000000000000019;
}

uint64_t sub_100019C74()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019CC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_100017040(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100019D8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003F6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100019DF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F6C(&qword_1000B80A0, &qword_100080A08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019EC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100019F1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100019F28()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019FCC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_100003FB4(v0 + 5);
  v3 = v0[11];

  v4 = v0[12];

  v5 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10001A02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[16];
  v8 = v1[17];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000F618;

  return sub_1000137C8(a1, v4, v5, v6, (v1 + 5), v7, v8);
}

uint64_t sub_10001A100(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001A778;

  return sub_100018170(a1, v1);
}

uint64_t sub_10001A19C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AEARestrictionsActionError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AEARestrictionsActionError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001A388()
{
  result = qword_1000B8100;
  if (!qword_1000B8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B8100);
  }

  return result;
}

__n128 sub_10001A3DC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 120);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_10001A428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 242))
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

uint64_t sub_10001A470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 242) = 1;
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

    *(result + 242) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A500()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10001A540()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_100011F1C(*(v0 + 16));
}

uint64_t sub_10001A54C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001A58C()
{
  v1 = v0[3];

  v2 = v0[7];

  sub_100003FB4(v0 + 8);
  v3 = v0[14];

  v4 = v0[16];

  return _swift_deallocObject(v0, 136, 7);
}

__n128 sub_10001A5E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10001A610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10001A658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001A6C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001A6D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001A720(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10001A78C(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}