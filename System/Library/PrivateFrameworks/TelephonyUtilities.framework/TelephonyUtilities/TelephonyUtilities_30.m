uint64_t sub_1004443B8()
{
  v3 = *(*v1 + 112);
  v2 = *v1;
  sub_100008060();
  *v4 = v2;
  *(v2 + 120) = v0;

  if (v0)
  {
    v5 = sub_1004445C0;
  }

  else
  {
    v6 = *(v2 + 88);

    v5 = sub_1004444CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004444CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100022C84();
  sub_10000B870();
  v14 = v12[12];
  v13 = v12[13];
  v16 = v12[9];
  v15 = v12[10];
  v18 = v12[7];
  v17 = v12[8];
  v19 = v12[6];
  v35 = v12[5];
  v20 = v12[4];
  sub_1004437E8(v15, v20);
  v14(v18, v20, v17);
  sub_100007C20();
  sub_10000AF74(v21, v22, v23, v17);
  v35(v18);
  sub_100009A04(v18, &unk_1006A52C0, &unk_10057D930);
  (*(v16 + 8))(v15, v17);
  v24 = v12[10];
  v25 = v12[7];

  sub_100009EF4();
  sub_100005F24();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, a10, a11, a12);
}

uint64_t sub_1004445C0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[2];

  v3(v5, v9, v6);
  sub_100007C20();
  sub_10000AF74(v10, v11, v12, v6);
  v8(v5);

  sub_100009A04(v5, &unk_1006A52C0, &unk_10057D930);
  v13 = v0[10];
  v14 = v0[7];

  sub_100009EF4();

  return v15();
}

void sub_1004446A8()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000C4C4();
  v16 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_100006890();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v26[4] = sub_1004463B4;
  v26[5] = v17;
  sub_100009FE4();
  v26[1] = 1107296256;
  sub_10000A600();
  v26[2] = v18;
  v26[3] = &unk_1006308B0;
  v19 = _Block_copy(v26);
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AB18();
  sub_10000F228(v21, v22);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F3F8();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v23 = *(v5 + 8);
  v24 = sub_100007764();
  v25(v24);
  (*(v12 + 8))(v1, v9);

  sub_100005EDC();
}

void sub_100444990()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000C4C4();
  v16 = *&v0[OBJC_IVAR____TtC13callservicesd19GreetingsDataSource_queue];
  sub_100006890();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v26[4] = sub_100444E4C;
  v26[5] = v17;
  sub_100009FE4();
  v26[1] = 1107296256;
  sub_10000A600();
  v26[2] = v18;
  v26[3] = &unk_100630680;
  v19 = _Block_copy(v26);
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000AB18();
  sub_10000F228(v21, v22);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F3F8();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  v23 = *(v5 + 8);
  v24 = sub_100007764();
  v25(v24);
  (*(v12 + 8))(v1, v9);

  sub_100005EDC();
}

void sub_100444B94()
{
  if (qword_1006A0B28 != -1)
  {
    sub_1000080B0();
  }

  v0 = type metadata accessor for Logger();
  sub_10000AF9C(v0, qword_1006BA5F8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    sub_100005FAC(&_mh_execute_header, v3, v4, "speech assets or locale changed- checking if we should regenerate greeting");
    sub_100008AE8();
  }

  sub_100435650();
}

_BYTE *storeEnumTagSinglePayload for GreetingsDataSource.MessageType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100444D88()
{
  result = qword_1006ABC60;
  if (!qword_1006ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABC60);
  }

  return result;
}

uint64_t sub_100444DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006ABC68, &unk_100587960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100444E68()
{
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 31) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v0 + v8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = (v0 + v9);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v0 + v10);
  v19 = *(v0 + v10 + 8);

  sub_10043E00C(v0 + v6, v12, v13, v14, v16, v17, v18, v19);
}

uint64_t sub_100444F18()
{
  sub_10000B870();
  v1 = type metadata accessor for URL();
  sub_100005EB4(v1);
  v4 = v0[3];
  v25 = v0[2];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v3 + 64) + ((*(v2 + 80) + 48) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  v11 = v7[17];
  v12 = swift_task_alloc();
  v13 = sub_10000FC98(v12);
  *v13 = v14;
  v13[1] = sub_10033A9AC;
  sub_100005F24();

  return sub_10043E9DC(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_100445058()
{
  v1 = type metadata accessor for URL();
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = v0 + ((*(v2 + 80) + 64) & ~*(v2 + 80));

  return sub_10043F60C(v3, v4, v5, v6, v7, v8, v9, v10);
}

void *sub_1004450E0(void *a1, SEL *a2)
{
  v2 = a1;
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C8E0();

  return v2;
}

void sub_100445148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a2;
  v63 = a3;
  v67 = a1;
  v5 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B28 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000AF9C(v16, qword_1006BA5F8);
  v64 = *(v11 + 16);
  v65 = v11 + 16;
  v64(v15, v67, v10);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v66 = v17;
    v21 = v20;
    v22 = swift_slowAlloc();
    v61 = v9;
    v23 = a4;
    v24 = v22;
    v69 = v22;
    *v21 = 136315138;
    v25 = URL.lastPathComponent.getter();
    v27 = v26;
    v28 = v15;
    v29 = v10;
    (*(v11 + 8))(v28, v10);
    v30 = sub_10002741C(v25, v27, &v69);

    *(v21 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "didGenerateOutgoingMessage %s", v21, 0xCu);
    sub_100009B7C(v24);
    a4 = v23;
    v9 = v61;

    v17 = v66;
  }

  else
  {

    v31 = v15;
    v29 = v10;
    (*(v11 + 8))(v31, v10);
  }

  v32 = OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState;
  v33 = *(a4 + OBJC_IVAR___CSDAnsweringMachineController_answeringMachineState);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    if ((sub_10030BF40() & 1) != 0 && (*(*(a4 + v32) + OBJC_IVAR____TtC13callservicesd21AnsweringMachineState_isStopping) & 1) == 0)
    {
      v36 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v66 = v17;
        v41 = v40;
        v69 = v40;
        *v39 = 136315138;
        v68 = [v36 receptionistState];
        type metadata accessor for TUCallReceptionistState(0);
        v42 = String.init<A>(reflecting:)();
        v44 = a4;
        v45 = sub_10002741C(v42, v43, &v69);

        *(v39 + 4) = v45;
        a4 = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "didGenerateOutgoingMessage state %s", v39, 0xCu);
        sub_100009B7C(v41);
      }

      v46 = v29;
      v47 = v36;
      if ([v47 receptionistState] == 4)
      {
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&_mh_execute_header, v48, v49, ".waitingForUserResponse -> .playingCustomMessage", v50, 2u);
        }

        [v47 setReceptionistState:5];
        v51 = String._bridgeToObjectiveC()();
        [v47 setLastReceptionistMessage:v51];

        v52 = *(a4 + OBJC_IVAR___CSDAnsweringMachineController_holdMusicAnsweringMachine);
        if (v52)
        {
          v53 = v52;
          sub_10042F01C();
        }

        sub_10030A5E0();
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "creating answering machine to play custom message", v56, 2u);
        }
      }

      else
      {
        if ([v47 receptionistState] != 3)
        {

          return;
        }

        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "ringing with custom message", v59, 2u);
        }

        v54 = String._bridgeToObjectiveC()();
        [v47 setLastReceptionistMessage:v54];
      }

      v64(v9, v67, v46);
      sub_10000AF74(v9, 0, 1, v46);
      sub_1003087A4();

      sub_100009A04(v9, &unk_1006A52C0, &unk_10057D930);
      return;
    }
  }
}

uint64_t sub_1004457B8(uint64_t a1, uint64_t a2)
{
  v8[3] = &type metadata for GreetingsChecksums;
  v8[4] = &off_10062F718;
  v4 = swift_allocObject();
  v8[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  v6 = a2 + OBJC_IVAR____TtC13callservicesd19GreetingsDataSource__greetingsChecksums;
  os_unfair_lock_lock(v6);
  sub_100009B7C((v6 + 8));
  sub_100445858(v8, v6 + 8);
  os_unfair_lock_unlock(v6);
  return sub_100009B7C(v8);
}

uint64_t sub_100445858(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_10000F49C(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1004458C0()
{
  sub_100022C84();
  sub_10000B870();
  v0 = type metadata accessor for URL();
  sub_100005EB4(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  sub_100035C50(v5);
  v7 = swift_task_alloc();
  v8 = sub_10000FC98(v7);
  *v8 = v9;
  sub_100015BDC(v8);
  sub_100005F24();

  return sub_100444138(v10, v11, v12, v13, v14, v15, v16, v17);
}

void sub_1004459A0()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_1004401AC(v3, v4);
}

uint64_t sub_100445A0C()
{
  sub_100005EF4();
  v1 = type metadata accessor for URL();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64) + 7;
  v8 = (v7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = (v7 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  v12 = *(v3 + 8);
  v12(v0 + v5, v1);

  v12(v0 + v9, v1);
  v13 = *(v0 + v10 + 8);

  sub_100015D74();
  sub_100005EDC();

  return _swift_deallocObject(v14, v15, v16);
}

uint64_t sub_100445B08()
{
  sub_100022C84();
  sub_10000B870();
  v0 = type metadata accessor for URL();
  sub_100005EB4(v0);
  v2 = v1;
  v4 = v3;
  v5 = *(v2 + 80);
  v6 = *(v4 + 64);
  sub_100035C50(v5);
  v7 = swift_task_alloc();
  v8 = sub_10000FC98(v7);
  *v8 = v9;
  sub_100015BDC(v8);
  sub_100005F24();

  return sub_100444138(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100445BE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100007674(a1, a2, a3, a4);
  sub_100008070(v5);
  v7 = *(v6 + 32);
  v8 = sub_100006B30();
  v9(v8);
  return v4;
}

unint64_t sub_100445C34()
{
  result = qword_1006ABC90;
  if (!qword_1006ABC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABC90);
  }

  return result;
}

uint64_t sub_100445C90()
{
  v1 = type metadata accessor for UUID();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  v5 = sub_100006884();

  return sub_10043BC8C(v5, v6, v7, v8);
}

uint64_t sub_100445D0C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  sub_100005EB4(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for URL();
  sub_100007BF0(v8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_100439C20(a1, v10, v1 + v5, v11);
}

void sub_100445DD8()
{
  v1 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for UUID();
  sub_100005EB4(v6);
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = type metadata accessor for URL();
  sub_100007BF0(v11);
  v13 = *(v0 + v10);
  v14 = v0 + ((v10 + *(v12 + 80) + 8) & ~*(v12 + 80));

  sub_10043A158(v0 + v3, v0 + v9, v13, v14);
}

void sub_100445F08()
{
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = *(v0 + v7);
  v10 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10043C044(v8, v0 + v6, v9, v10);
}

uint64_t sub_100445FC4@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_100440698(a1);
}

uint64_t sub_100445FE4()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_100007728();
  v7(v6);
  v8 = sub_100015D74();

  return _swift_deallocObject(v8, v9, v10);
}

void sub_1004460B8()
{
  v1 = type metadata accessor for UUID();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = *(v0 + 16);
  sub_1004424A8();
}

uint64_t sub_100446144()
{
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100005EB4(v8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10) & ~v10;
  v13 = *(v12 + 64);

  (*(v3 + 8))(v0 + v5, v1);
  v14 = type metadata accessor for URL();
  if (!sub_100015468(v0 + v11, 1, v14))
  {
    sub_10000F49C(v14);
    (*(v15 + 8))(v0 + v11, v14);
  }

  return _swift_deallocObject(v0, v11 + v13, v4 | v10 | 7);
}

uint64_t sub_1004462B4()
{
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v6);
  return sub_100442874(*(v0 + 16), v0 + v3, v0 + ((v5 + *(v7 + 80)) & ~*(v7 + 80)));
}

void sub_1004463D4(uint64_t a1, void *a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = 0;
  v22 = v4;
  v24 = v2;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_23;
      }

      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      swift_dynamicCast();
      v15 = v30;
      v13 = v5;
      v14 = v6;
      v2 = v24;
      if (!v30)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_13:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_23;
    }

LABEL_17:
    v16 = [v15 cluster];
    if (v16)
    {
      v17 = v16;
      sub_100006AF0(0, &qword_1006ABD38, TUConversationParticipantCluster_ptr);
      v18 = a2;
      v19 = static NSObject.== infix(_:_:)();

      v20 = v19 & 1;
      v2 = v24;
    }

    else
    {

      v20 = 0;
    }

    v5 = v13;
    v6 = v14;
    v21 = __OFADD__(v10, v20);
    v10 += v20;
    if (v21)
    {
      __break(1u);
LABEL_23:
      sub_100022DDC();

      return;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_100446668(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_10003D4D0();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D690;
    [v2 originatingUIType];
    v5 = String.init<A>(reflecting:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100009D88();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    LODWORD(v3) = [v2 originatingUIType];

    *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_originatingUIType) = v3;
  }

  else
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    v8 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }
}

uint64_t sub_10044680C(void *a1)
{
  v2 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount;
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount);
  v4 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_10001E550(v5);

  v8 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 <= v3)
    {
      v8 = v3;
    }

    *(v1 + v2) = v8;
  }

  return result;
}

void *sub_1004468E0()
{
  v1 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant;
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant);
  result = sub_100447B78();
  if (result <= v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = result;
  }

  *(v0 + v1) = v4;
  return result;
}

id sub_100446928(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for Date();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v46 - v23;
  v25 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
  swift_beginAccess();
  sub_100270E18(v2 + v25, v10);
  if (sub_100015468(v10, 1, v11) == 1)
  {
    return sub_100009A5C(v10, &qword_1006A3C70, &unk_10057EA80);
  }

  (*(v14 + 32))(v24, v10, v11);
  v27 = [a1 activeRemoteParticipants];
  sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
  sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
  sub_100009F18();
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = sub_10001E550(v28);

  result = [a1 state];
  v30 = result == 3;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    if (v32 <= *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants))
    {
      v32 = *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants);
    }

    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants) = v32;
    v33 = [a1 activeRemoteParticipants];
    sub_100009F18();
    v34 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = sub_10001E550(v34);

    if (v35 < 1)
    {
      v41 = *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants);
      if (v41 != 2 && (v41 & 1) != 0)
      {
        Date.init()();
        Date.timeIntervalSince(_:)();
        v43 = v42;
        v44 = *(v14 + 8);
        v44(v20, v11);
        result = (v44)(v24, v11);
        v45 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone;
        *v45 = v43;
        *(v45 + 8) = 0;
        return result;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants) = 1;
      v36 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone;
      if ((*(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone + 8) & 1) == 0)
      {
        v37 = *v36;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v39 = v38;
        v40 = *(v14 + 8);
        v40(v20, v11);
        result = (v40)(v24, v11);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone) = v39 - v37 + *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone);
        *v36 = 0;
        *(v36 + 8) = 1;
        return result;
      }
    }

    return (*(v14 + 8))(v24, v11);
  }

  return result;
}

void *sub_100446D6C(void *result)
{
  v2 = *(v1 + *result);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *result) = v4;
  }

  return result;
}

uint64_t sub_100446D88(uint64_t result)
{
  if (result)
  {
    v2 = (v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals);
    v3 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals);
    v4 = __OFADD__(v3, 1);
    v5 = v3 + 1;
    if (!v4)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v2 = (v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals);
  v6 = *(v1 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals);
  v4 = __OFADD__(v6, 1);
  v5 = v6 + 1;
  if (!v4)
  {
LABEL_6:
    *v2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100446DCC(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v5 = sub_100007BF0(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007BAC();
  v48 = v9 - v10;
  sub_100006838();
  __chkstk_darwin(v11, v12);
  v14 = &v47 - v13;
  v15 = type metadata accessor for Date();
  v16 = sub_100007FEC(v15);
  v47 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007BAC();
  v23 = v21 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v47 - v26;
  v28 = [a1 remoteMembers];
  sub_100006AF0(0, &qword_1006A3DE0, TUConversationMember_ptr);
  sub_10000CE3C(&qword_1006A2660, &qword_1006A3DE0, TUConversationMember_ptr);
  v29 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = sub_10001E550(v29);

  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_finalMemberCount) = v30 + 1;
    v32 = [a1 isOneToOneModeEnabled];
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtEnd) = v32;
    v33 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
    swift_beginAccess();
    sub_100270E18(v2 + v33, v14);
    v34 = &unk_1006BA000;
    if (sub_100015468(v14, 1, v15) == 1)
    {
      sub_100009A5C(v14, &qword_1006A3C70, &unk_10057EA80);
    }

    else
    {
      v35 = v47;
      (*(v47 + 32))(v27, v14, v15);
      Date.init()();
      Date.timeIntervalSince(_:)();
      v37 = v36;
      v38 = *(v35 + 8);
      v38(v23, v15);
      v39 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd;
      *v39 = v37;
      *(v39 + 8) = 0;
      v40 = v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration;
      *v40 = v37 - *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeStart);
      *(v40 + 8) = 0;
      v41 = [a1 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = sub_10001E550(v42);

      v38(v27, v15);
      v34 = &unk_1006BA000;
      if (!v43 && (*(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone + 8) & 1) == 0)
      {
        v44 = v37 - *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone) = v44 + *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone);
        *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timeAloneAtEnd) = v44;
      }
    }

    v45 = v48;
    sub_10000AF74(v48, 1, 1, v15);
    swift_beginAccess();
    sub_1003B3734(v45, v2 + v33);
    result = swift_endAccess();
    v46 = v2 + v34[302];
    *v46 = 0;
    *(v46 + 8) = 1;
    *(v2 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants) = 2;
  }

  return result;
}

id sub_1004471E0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  v120 = v115 - v9;
  v10 = type metadata accessor for Date();
  v11 = sub_100007FEC(v10);
  v124 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007BAC();
  v122 = v16 - v17;
  sub_100006838();
  __chkstk_darwin(v18, v19);
  v123 = v115 - v20;
  sub_100006838();
  __chkstk_darwin(v21, v22);
  v126 = v115 - v23;
  v24 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v25 = sub_100007BF0(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25, v28);
  sub_100007BAC();
  v121 = v29 - v30;
  sub_100006838();
  __chkstk_darwin(v31, v32);
  v34 = v115 - v33;
  v35 = type metadata accessor for UUID();
  v36 = sub_100007FEC(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  __chkstk_darwin(v36, v41);
  v43 = v115 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd];
  *v44 = 0;
  v45 = 1;
  v44[8] = 1;
  v46 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration];
  *v46 = 0;
  v46[8] = 1;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_originatingUIType] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryTimeouts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_remoteMemberNotInMemberListCounts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_transitionAttempts] = 0;
  v116 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToOneToOneModeFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToGFTModeFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIRequests] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetrySuccesses] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryAttempts] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryFailures] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetrySuccesses] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone] = 0;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timeAloneAtEnd] = 0;
  v119 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
  v125 = v10;
  sub_10000AF74(&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase], 1, 1, v10);
  v117 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants;
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants] = 2;
  v47 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone];
  *v47 = 0;
  v47[8] = 1;
  v48 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = UUID.uuidString.getter();
  v51 = v50;
  v52 = *(v38 + 8);
  v115[1] = v38 + 8;
  v52(v43, v35);
  v53 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uuid];
  *v53 = v49;
  v53[1] = v51;
  v54 = sub_1000160B0();
  v55 = [v54 conversationID];

  v56 = v121;
  if (v55)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  sub_10000AF74(v56, v45, 1, v35);
  sub_100286068(v56, v34);
  v57 = sub_100015468(v34, 1, v35);
  v58 = v125;
  if (v57 == 1)
  {
    sub_100009A5C(v34, &unk_1006A3DD0, &unk_10057C9D0);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    v59 = UUID.uuidString.getter();
    v60 = v61;
    v52(v34, v35);
  }

  v62 = v122;
  v63 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_CID];
  *v63 = v59;
  v63[1] = v60;
  v64 = v126;
  Date.init()();
  v65 = sub_1000160B0();
  v66 = v124;
  if (v65)
  {

    v67 = sub_1000160B0();
    v68 = [v67 timebase];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v66 + 8))(v62, v58);
    v69 = sub_1000160B0();
    v70 = [v69 timebase];

    v71 = v123;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v71 = v123;
    (*(v124 + 16))(v123, v64, v58);
  }

  Date.timeIntervalSince(_:)();
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeStart] = v72;
  result = Date.timeIntervalSinceReferenceDate.getter();
  v75 = v74 / 14400.0;
  if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v75 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v75 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  Date.init(timeIntervalSinceReferenceDate:)();
  (*(v66 + 32))(&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationBaseTime], v62, v58);
  v76 = v120;
  (*(v66 + 16))(v120, v71, v58);
  sub_10000AF74(v76, 0, 1, v58);
  v77 = v119;
  swift_beginAccess();
  sub_1003B3734(v76, &v2[v77]);
  swift_endAccess();
  v78 = [a1 remoteMembers];
  sub_100011550();
  sub_100006AF0(v79, v80, v81);
  sub_100011550();
  sub_10000CE3C(v82, v83, v84);
  v85 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v86 = sub_10001E550(v85);

  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_initialMemberCount] = v86;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount] = v86;
  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_finalMemberCount] = v86;
  v87 = [a1 activeRemoteParticipants];
  sub_100009F18();
  sub_100006AF0(v88, v89, v90);
  sub_100009F18();
  sub_10000CE3C(v91, v92, v93);
  sub_100011550();
  v94 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = sub_10001E550(v94);

  result = [a1 state];
  v96 = result == 3;
  v97 = __OFADD__(v95, v96);
  v98 = v95 + v96;
  if (v97)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants] = v98;
  *&v2[v116] = sub_100447B78();
  v99 = [a1 isOneToOneModeEnabled];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtStart] = v99;
  v100 = [a1 isOneToOneModeEnabled];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtEnd] = v100;
  v101 = [a1 link];
  v102 = v101;
  if (v101)
  {
  }

  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasLink] = v102 != 0;
  v103 = [a1 isPendingConversation];
  v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_isPending] = v103;
  v104 = [a1 activeRemoteParticipants];
  sub_100011550();
  v105 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v106 = sub_10001E550(v105);

  v2[v117] = v106 > 0;
  v107 = [a1 provider];
  v108 = [v107 identifier];

  v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v111 = v110;

  v112 = &v2[OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationProvider];
  *v112 = v109;
  v112[1] = v111;
  v127.receiver = v2;
  v127.super_class = ObjectType;
  v113 = objc_msgSendSuper2(&v127, "init");

  v114 = *(v66 + 8);
  v114(v71, v58);
  v114(v126, v58);
  return v113;
}

void *sub_100447B78()
{
  v1 = [v0 localParticipantCluster];
  v2 = v1;
  if (v1)
  {
    if ([v1 type] == 1)
    {
      v3 = [v0 activeRemoteParticipants];
      sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      sub_10000CE3C(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
      v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = v2;
      sub_1004463D4(v4, v5);
      v2 = v6;
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

uint64_t sub_100447CC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65766974616C6572 && a2 == 0xED00007472617453;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 4475203 && a2 == 0xE300000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000100577B70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000100562A50 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6B6E694C736168 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E69646E65507369 && a2 == 0xE900000000000067;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65766974616C6572 && a2 == 0xEB00000000646E45;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x800000010056E950 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x800000010056E970 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x800000010056EB10 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x8000000100577BB0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x8000000100577BD0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000010 && 0x8000000100577BF0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000017 && 0x8000000100577C10 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000017 && 0x8000000100577C30 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000017 && 0x8000000100577C50 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000021 && 0x8000000100577C70 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x8000000100577CA0 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000031 && 0x8000000100577CC0 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x8000000100577D00 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x8000000100577D20 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000011 && 0x8000000100577D40 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000012 && 0x8000000100577D60 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000013 && 0x8000000100577D80 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000014 && 0x8000000100577DA0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000014 && 0x8000000100577DC0 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000015 && 0x8000000100577DE0 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000023 && 0x8000000100577E00 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000023 && 0x8000000100577E30 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD000000000000024 && 0x8000000100577E60 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000013 && 0x8000000100577E90 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0x6E6F6C41656D6974 && a2 == 0xEE00646E45744165;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x65736162656D6974 && a2 == 0xE800000000000000;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000018 && 0x8000000100577EC0 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else if (a1 == 0xD000000000000010 && 0x8000000100577EE0 == a2)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v42)
                                                                          {
                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            return 37;
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
  }
}

uint64_t sub_100448764(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
    case 7:
      result = 0x65766974616C6572;
      break;
    case 2:
      result = 4475203;
      break;
    case 3:
    case 4:
    case 26:
    case 27:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x6B6E694C736168;
      break;
    case 6:
      result = 0x6E69646E65507369;
      break;
    case 8:
      v3 = 0x697461727564;
      goto LABEL_18;
    case 9:
    case 25:
    case 32:
      result = 0xD000000000000013;
      break;
    case 10:
    case 11:
    case 23:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000012;
      break;
    case 14:
    case 36:
      result = 0xD000000000000010;
      break;
    case 15:
    case 16:
    case 17:
    case 22:
      result = 0xD000000000000017;
      break;
    case 18:
      result = 0xD000000000000021;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 20:
      result = 0xD000000000000031;
      break;
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 24:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
    case 30:
      result = 0xD000000000000023;
      break;
    case 31:
      result = 0xD000000000000024;
      break;
    case 33:
      v3 = 0x6C41656D6974;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E6F000000000000;
      break;
    case 34:
      result = 0x65736162656D6974;
      break;
    case 35:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100448AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100447CC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100448AFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10044875C();
  *a1 = result;
  return result;
}

uint64_t sub_100448B24(uint64_t a1)
{
  v2 = sub_100449564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100448B60(uint64_t a1)
{
  v2 = sub_100449564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t type metadata accessor for RTCCSDConversationInfo()
{
  result = qword_1006ABD18;
  if (!qword_1006ABD18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100448CA0()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100316450();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100448DF8(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  sub_100007BF0(v5);
  v7 = *(v6 + 64);
  sub_100006688();
  __chkstk_darwin(v8, v9);
  v11 = &v59 - v10;
  v12 = sub_10026D814(&qword_1006ABD28, &qword_100587AC0);
  sub_100007FEC(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_100006688();
  __chkstk_darwin(v17, v18);
  v20 = &v59 - v19;
  v21 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_100449564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uuid);
  v23 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uuid + 8);
  v60 = 0;
  sub_10000F708();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v24 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeStart);
    v60 = 1;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_CID);
    v26 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_CID + 8);
    sub_10000A488(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = 3;
    type metadata accessor for Date();
    sub_1004495B8(&qword_1006A6D30, &type metadata accessor for Date);
    sub_10000F708();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationProvider);
    v28 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_conversationProvider + 8);
    sub_10000A488(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasLink);
    sub_100008880(5);
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_isPending);
    sub_100008880(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_relativeEnd);
    sub_10000A488(7);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_duration);
    sub_10000A488(8);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtStart);
    sub_100008880(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_uPlusOneModeAtEnd);
    sub_100008880(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_originatingUIType);
    sub_100008880(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maximumMemberCount);
    sub_100008880(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_initialMemberCount);
    sub_100008880(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_finalMemberCount);
    sub_100008880(14);
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipants);
    sub_100008880(15);
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryAttempts);
    sub_100008880(16);
    KeyedEncodingContainer.encode(_:forKey:)();
    v39 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_AVCBlobRecoveryTimeouts);
    sub_100008880(17);
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_remoteMemberNotInMemberListCounts);
    sub_100008880(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_transitionAttempts);
    sub_100008880(19);
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_maxNumberOfParticipantsNearbyWithLocalParticipant);
    sub_100008880(20);
    KeyedEncodingContainer.encode(_:forKey:)();
    v43 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToOneToOneModeFailures);
    sub_100008880(21);
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_switchToGFTModeFailures);
    sub_100008880(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIRequests);
    sub_100008880(23);
    KeyedEncodingContainer.encode(_:forKey:)();
    v46 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIApprovals);
    sub_100008880(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    v47 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_numberLMIDismissals);
    sub_100008880(25);
    KeyedEncodingContainer.encode(_:forKey:)();
    v48 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryAttempts);
    sub_100008880(26);
    KeyedEncodingContainer.encode(_:forKey:)();
    v49 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetryFailures);
    sub_100008880(27);
    KeyedEncodingContainer.encode(_:forKey:)();
    v50 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_messageRetrySuccesses);
    sub_100008880(28);
    KeyedEncodingContainer.encode(_:forKey:)();
    v51 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryAttempts);
    sub_100008880(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    v52 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetryFailures);
    sub_100008880(30);
    KeyedEncodingContainer.encode(_:forKey:)();
    v53 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_avcBlobRecoveryMessageRetrySuccesses);
    sub_100008880(31);
    KeyedEncodingContainer.encode(_:forKey:)();
    v54 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_cumulativeTimeAlone);
    v60 = 32;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    v55 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timeAloneAtEnd);
    v60 = 33;
    sub_10000F708();
    KeyedEncodingContainer.encode(_:forKey:)();
    v56 = OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_timebase;
    swift_beginAccess();
    sub_100270E18(v3 + v56, v11);
    v61 = 34;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100009A5C(v11, &qword_1006A3C70, &unk_10057EA80);
    v57 = *(v3 + OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_hasHadActiveParticipants);
    v61 = 35;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100015398(OBJC_IVAR____TtC13callservicesd22RTCCSDConversationInfo_lastTimeNotAlone);
    v61 = 36;
    sub_10000F708();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v14 + 8))(v20, v12);
}

uint64_t sub_10044950C(uint64_t a1)
{
  result = sub_1004495B8(&qword_1006A39C8, type metadata accessor for RTCCSDConversationInfo);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449564()
{
  result = qword_1006ABD30;
  if (!qword_1006ABD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD30);
  }

  return result;
}

uint64_t sub_1004495B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for RTCCSDConversationInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
    if (a2 + 36 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 36) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RTCCSDConversationInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
        break;
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100449768()
{
  result = qword_1006ABD40;
  if (!qword_1006ABD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD40);
  }

  return result;
}

unint64_t sub_1004497C0()
{
  result = qword_1006ABD48;
  if (!qword_1006ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD48);
  }

  return result;
}

unint64_t sub_100449818()
{
  result = qword_1006ABD50;
  if (!qword_1006ABD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABD50);
  }

  return result;
}

void sub_10044986C()
{
  sub_100449908();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Locale();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100449908()
{
  if (!qword_1006ABDC0)
  {
    type metadata accessor for CallTranslationDisclosureFileLocation();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ABDC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallTranslationDisclosureDescriptor.DisclosureState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_100449A40()
{
  result = qword_1006ABDF8;
  if (!qword_1006ABDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABDF8);
  }

  return result;
}

uint64_t sub_100449A94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 translationDisclosureLocation];
  *(v12 + 1) = v13;
  v14 = [a2 remoteLocale];
  v15 = *(v8 + 28);
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  if ([a2 translationState] == 2)
  {

    v16 = 0;
LABEL_5:
    v12[16] = v16;
    *v12 = a3;
    v12[4] = BYTE4(a3);
    v12[5] = BYTE5(a3) & 1;
    sub_10044A04C(v12, a4);
    sub_10000AF74(a4, 0, 1, v8);
    return sub_10044A0B0(v12);
  }

  v17 = [a2 translationState];

  if (v17 == 4)
  {
    v16 = 1;
    goto LABEL_5;
  }

  v19 = type metadata accessor for Locale();
  (*(*(v19 - 8) + 8))(&v12[v15], v19);
  return sub_10000AF74(a4, 1, 1, v8);
}

unint64_t sub_100449C5C(uint64_t a1)
{
  result = sub_100449C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100449C84()
{
  result = qword_1006ABE00;
  if (!qword_1006ABE00)
  {
    type metadata accessor for CallTranslationDisclosureDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABE00);
  }

  return result;
}

uint64_t sub_100449CDC(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    type metadata accessor for CallTranslationDisclosureFileLocation();
    v7 = v6;
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v10 = *(type metadata accessor for CallTranslationDisclosureDescriptor() + 28);
  if ((static Locale.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 5);
  v12 = *(a2 + 5);
  result = v12 & v11;
  if ((v12 & 1) == 0 && (v11 & 1) == 0)
  {
    v13 = *a1 | ((a1[1] & 1) << 32);
    v14 = *a2 | ((a2[1] & 1) << 32);

    return sub_10029CD10(v13, v14);
  }

  return result;
}

unint64_t sub_100449DF4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = 0xD000000000000024;
  v18 = 0x8000000100577FA0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x8000000100577FD0;
  v7._countAndFlagsBits = sub_10029163C(*(v0 + 8));
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  String.append(_:)(v16);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v16._countAndFlagsBits = 0xD00000000000001CLL;
  v16._object = 0x8000000100577FF0;
  v15[15] = *(v0 + 16);
  v9._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  String.append(_:)(v10);
  String.append(_:)(v16);

  strcpy(&v16, "remoteLocale=");
  HIWORD(v16._object) = -4864;
  v11 = type metadata accessor for CallTranslationDisclosureDescriptor();
  (*(v2 + 16))(v6, v0 + *(v11 + 28), v1);
  v12._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v12);

  String.append(_:)(v16);

  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return v17;
}

uint64_t sub_10044A04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranslationDisclosureDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044A0B0(uint64_t a1)
{
  v2 = type metadata accessor for CallTranslationDisclosureDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10044A10C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction] = 1031878742;
  v2 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  v3 = type metadata accessor for CallTranslationDisclosureDescriptor();
  sub_10000AF74(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = 0;
  *&v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback] = 0;
  v4 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags;
  *&v0[v4] = [objc_allocWithZone(TUFeatureFlags) init];
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode] = 0;
  v0[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration] = 1;
  v5 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for MicrophoneInjectionUtilities()) init];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t type metadata accessor for CallTranslationDisclosureProvider()
{
  result = qword_1006ABE40;
  if (!qword_1006ABE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10044A384()
{
  sub_10044A45C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10044A45C()
{
  if (!qword_1006ABE50)
  {
    type metadata accessor for CallTranslationDisclosureDescriptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ABE50);
    }
  }
}

void sub_10044A4B4(uint64_t a1)
{
  v3 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v4 = sub_100008070(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100007BAC();
  v58 = v8 - v9;
  v12 = __chkstk_darwin(v10, v11);
  v57 = &v57 - v13;
  __chkstk_darwin(v12, v14);
  v16 = (&v57 - v15);
  v17 = sub_10026D814(&unk_1006ABE90, &qword_100585598);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v57 - v21;
  v23 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8, v25);
  sub_100007BAC();
  v28 = v26 - v27;
  v31 = __chkstk_darwin(v29, v30);
  v33 = (&v57 - v32);
  __chkstk_darwin(v31, v34);
  v36 = &v57 - v35;
  sub_10044A04C(a1, &v57 - v35);
  sub_10000AF74(v36, 0, 1, v3);
  v37 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  v38 = *(v18 + 56);
  sub_10044C3A0(v36, v22);
  sub_10044C3A0(v1 + v37, &v22[v38]);
  sub_100008860(v22);
  if (!v39)
  {
    sub_10044C3A0(v22, v33);
    sub_100008860(&v22[v38]);
    if (!v39)
    {
      sub_10044C410(&v22[v38], v16);
      v42 = sub_100449CDC(v33, v16);
      sub_10044A0B0(v16);
      sub_100009A04(v36, &unk_1006A2B50, &unk_1005811A0);
      sub_10044A0B0(v33);
      sub_100009A04(v22, &unk_1006A2B50, &unk_1005811A0);
      if (v42)
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_10044A04C(a1, v28);
      sub_10000AF74(v28, 0, 1, v3);
      swift_beginAccess();
      sub_10004DEE0(v28, v1 + v37);
      swift_endAccess();
      sub_10044AA1C(a1);
      v40 = *(a1 + 16);
      v41 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      if (v40)
      {
        sub_10044B3E4();
      }

      else
      {
        sub_10044B31C();
      }

      return;
    }

    sub_100009A04(v36, &unk_1006A2B50, &unk_1005811A0);
    sub_10044A0B0(v33);
LABEL_9:
    sub_100009A04(v22, &unk_1006ABE90, &qword_100585598);
    goto LABEL_10;
  }

  sub_100009A04(v36, &unk_1006A2B50, &unk_1005811A0);
  sub_100008860(&v22[v38]);
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_100009A04(v22, &unk_1006A2B50, &unk_1005811A0);
LABEL_14:
  if (qword_1006A0B30 != -1)
  {
    sub_100008720();
  }

  v43 = type metadata accessor for Logger();
  sub_10000AF9C(v43, qword_1006BA610);
  v44 = v57;
  sub_10044A04C(a1, v57);
  v45 = v58;
  sub_10044A04C(a1, v58);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v48 = 136315394;
    sub_10044A04C(v44, v16);
    v49 = sub_1000160C8();
    v51 = v50;
    sub_10044A0B0(v44);
    v52 = sub_10002741C(v49, v51, v59);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    sub_10044A04C(v45, v16);
    v53 = sub_1000160C8();
    v55 = v54;
    sub_10044A0B0(v45);
    v56 = sub_10002741C(v53, v55, v59);

    *(v48 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v46, v47, "Asked to begin or update playback of disclosure, but new descriptor %s is equal to activeDescriptor%s so doing nothing", v48, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    sub_10044A0B0(v45);
    sub_10044A0B0(v44);
  }
}

void sub_10044AA1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v102 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v104 = &v97 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v100 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v101 = &v97 - v19;
  __chkstk_darwin(v18, v20);
  v103 = &v97 - v21;
  v22 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22, v24);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v97 - v29;
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000AF9C(v31, qword_1006BA610);
  v33 = a1;
  sub_10044A04C(a1, v30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v99 = v2;
    v37 = v36;
    v38 = swift_slowAlloc();
    v97 = v11;
    v98 = v12;
    v39 = v38;
    *&v105[0] = v38;
    *v37 = 136315138;
    sub_10044A04C(v30, v27);
    v40 = String.init<A>(reflecting:)();
    v41 = v32;
    v43 = v42;
    sub_10044A0B0(v30);
    v44 = sub_10002741C(v40, v43, v105);
    v32 = v41;

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Creating translation disclosure audio players for descriptor: %s", v37, 0xCu);
    sub_100009B7C(v39);
    v11 = v97;
    v12 = v98;

    v2 = v99;
  }

  else
  {

    sub_10044A0B0(v30);
  }

  v45 = *(v33 + 8);
  if (!v45)
  {
    goto LABEL_12;
  }

  v46 = *(v22 + 28);
  v47 = &v45[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource];
  v48 = *sub_100009B14(&v45[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource], *&v45[OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource + 24]);
  v49 = v45;
  v50 = v104;
  sub_10038053C(1, v104);
  v51 = v50;
  if (sub_100015468(v50, 1, v11) == 1)
  {
    v52 = v50;
LABEL_11:

    sub_100009A04(v52, &unk_1006A52C0, &unk_10057D930);
LABEL_12:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Not able to get the local/remote disclosure location", v58, 2u);
    }

    goto LABEL_28;
  }

  v98 = v32;
  v99 = v49;
  v53 = *(v12 + 32);
  v54 = v103;
  v53(v103, v51, v11);
  v55 = *sub_100009B14(v47, *(v47 + 3));
  v52 = v102;
  sub_100380548(1, v102);
  if (sub_100015468(v52, 1, v11) == 1)
  {
    (*(v12 + 8))(v54, v11);
    v49 = v99;
    goto LABEL_11;
  }

  v59 = v101;
  v53(v101, v52, v11);
  v60 = [*&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags] simultaneousTranslationDisclosureEnabled];
  if (v60)
  {
    v61 = 2;
  }

  else
  {
    v61 = 1;
  }

  v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode] = v60 ^ 1;
  v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode] = v61;
  if (v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration] == 1)
  {
    v62 = _TUIsInternalInstall();
    v63 = v103;
    if (v62)
    {
      v64 = objc_opt_self();
      v65 = [v64 tu_defaults];
      v66 = String._bridgeToObjectiveC()();
      v67 = [v65 objectForKey:v66];

      if (v67)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100009A04(v105, &unk_1006A2D10, &unk_10057D940);
        v68 = [v64 tu_defaults];
        v69 = String._bridgeToObjectiveC()();
        [v68 floatForKey:v69];
        v71 = v70;

        v72 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction;
        *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction] = v71;
        v73 = v2;
        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 134217984;
          *(v76 + 4) = *&v2[v72];
          _os_log_impl(&_mh_execute_header, v74, v75, "Setting volumeReduction to %f", v76, 0xCu);
        }
      }

      else
      {
        memset(v105, 0, sizeof(v105));
        sub_100009A04(v105, &unk_1006A2D10, &unk_10057D940);
      }

      v63 = v103;
      v59 = v101;
    }

    v89 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction;
    v90 = sub_10044C4CC(v63, v2, *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_volumeReduction]);
    v91 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = v90;

    v92 = sub_10044C4CC(v59, v2, *&v2[v89]);
    v93 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = v92;

    v94 = sub_10044C4CC(v63, v2, 1.0);
    v95 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = v94;

    v88 = sub_10044C4CC(v59, v2, 1.0);
    v96 = *(v12 + 8);
    v96(v59, v11);
    v96(v63, v11);
  }

  else
  {
    v77 = *sub_100009B14(v47, *(v47 + 3));
    v78 = v100;
    sub_1003804B4();
    v79 = sub_10044C4CC(v78, v2, 1.0);
    v80 = *(v12 + 8);
    v80(v78, v11);
    v81 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer] = v79;

    v82 = *sub_100009B14(v47, *(v47 + 3));
    sub_1003804C0();
    v83 = sub_10044C4CC(v78, v2, 1.0);
    v80(v78, v11);
    v84 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer] = v83;

    v85 = v103;
    v86 = sub_10044C4CC(v103, v2, 1.0);
    v87 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer];
    *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer] = v86;

    v88 = sub_10044C4CC(v59, v2, 1.0);
    v80(v59, v11);
    v80(v85, v11);
  }

  v56 = *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer];
  *&v2[OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer] = v88;
LABEL_28:
}

void sub_10044B31C()
{
  sub_10004DAF4();
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode);
  v3 = v1;
  sub_10044B564(v1, v2);

  if ([*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    v4 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
    v5 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
    v6 = v4;
    sub_10044B564(v4, v5);
  }

  if (!*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer))
  {
    *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback) = 1;
  }
}

void sub_10044B3E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
  if (v1)
  {
    v2 = v1;
    if ([v2 isPlaying])
    {
      [v2 stop];
      [v2 setCurrentTime:0.0];

      *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback) = 0;
    }

    else
    {
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
  if (v3)
  {
    v4 = v3;
    if ([v4 isPlaying])
    {
      [v4 stop];
      [v4 setCurrentTime:0.0];

      *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback) = 0;
    }

    else
    {
    }
  }

  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localInjectionMode);
  v7 = v5;
  sub_10044B564(v5, v6);

  if ([*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    v8 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    v9 = *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
    v10 = v8;
    sub_10044B564(v8, v9);
  }

  if (!*(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer))
  {
    *(v0 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback) = 1;
  }
}

void sub_10044B564(void *a1, unsigned __int8 a2)
{
  if (a1)
  {
    v3 = v2;
    v6 = qword_1006A0B30;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA610);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Playing audio for translation disclosure", v11, 2u);
    }

    v12 = *(v3 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
    v19 = v7;
    sub_1003C4830(a1, a2, 0, 1);

    if (([v19 play]& 1) == 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Error playing audio for translation disclosure!", v15, 2u);
      }
    }
  }

  else
  {
    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA610);
    v19 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v19, v17, "Audio player is nil, cannot play!", v18, 2u);
    }
  }
}

uint64_t sub_10044B7EC(void *a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v81 - v7;
  v9 = type metadata accessor for CallTranslationDisclosureDescriptor();
  v10 = sub_100008070(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_activeDescriptor;
  swift_beginAccess();
  sub_10044C3A0(v2 + v16, v8);
  if (sub_100015468(v8, 1, v9) == 1)
  {
    return sub_100009A04(v8, &unk_1006A2B50, &unk_1005811A0);
  }

  sub_10044C410(v8, v15);
  if ((v15[16] & 1) == 0)
  {
    v24 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
    v25 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStartDisclosureAudioPlayer);
    if (v25 && (sub_1003FE870(), v26 = a1, v27 = v25, sub_10000AB30(), v28 = static NSObject.== infix(_:_:)(), v25, v26, (v28 & 1) != 0))
    {
      sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback);
      v29 = v24;
      if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v29 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
      v25 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer);
      if (!v25 || (sub_1003FE870(), v39 = a1, v40 = v25, sub_10000AB30(), v41 = static NSObject.== infix(_:_:)(), v25, v39, (v41 & 1) == 0))
      {
LABEL_26:
        if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
        {
          v57 = *v24;
          if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration))
          {
            if (v57)
            {
              sub_1003FE870();
              v58 = a1;
              v59 = v57;
              v60 = sub_10000F8C4();

              if (v60)
              {
                v61 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
                v62 = *v24;
                v63 = *v24;
                sub_1003C4478(v62);

                v64 = sub_100010B20();
                static os_log_type_t.default.getter();
                sub_100008378();
                os_log(_:dso:log:type:_:)();

                v46 = [objc_opt_self() defaultCenter];
LABEL_43:
                v55 = v46;
                if (qword_1006A0788 != -1)
                {
                  swift_once();
                }

                v56 = qword_1006BA1B8;
                goto LABEL_46;
              }
            }
          }

          else if (v57)
          {
            sub_1003FE870();
            v73 = a1;
            v74 = v57;
            v75 = sub_10000F8C4();

            if (v75)
            {
              v76 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer;
              if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStartDisclosureAudioPlayer))
              {
                v77 = sub_100010B20();
                static os_log_type_t.default.getter();
                sub_100008378();
                os_log(_:dso:log:type:_:)();

                v78 = *(v2 + v76);
                v79 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
                v80 = v78;
                sub_10001155C();
              }
            }
          }
        }

        sub_10000EC18(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStartPlayerFinishPlayback);
        if (!v36)
        {
          return sub_10044A0B0(v15);
        }

        sub_10000EC18(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback);
        if (!v36)
        {
          return sub_10044A0B0(v15);
        }

        v45 = sub_100010B20();
        static os_log_type_t.default.getter();
        sub_100008378();
        os_log(_:dso:log:type:_:)();

        v46 = [objc_opt_self() defaultCenter];
        goto LABEL_43;
      }

      sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStartPlayerFinishPlayback);
    }

    v42 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
    v43 = *v29;
    v44 = sub_10000AB30();
    sub_1003C4478(v44);

    goto LABEL_26;
  }

  v18 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  v19 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_localStopDisclosureAudioPlayer);
  if (v19 && (sub_1003FE870(), v20 = a1, v21 = v19, sub_10000AB30(), v22 = static NSObject.== infix(_:_:)(), v19, v20, (v22 & 1) != 0))
  {
    sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback);
    v23 = v18;
    if (([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled] & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v23 = (v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    v19 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer);
    if (!v19)
    {
      goto LABEL_16;
    }

    sub_1003FE870();
    v30 = a1;
    v31 = v19;
    sub_10000AB30();
    v32 = static NSObject.== infix(_:_:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1000173E8(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback);
  }

  v33 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
  v34 = *v23;
  v35 = sub_10000AB30();
  sub_1003C4478(v35);

LABEL_16:
  if ([*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_featureFlags) simultaneousTranslationDisclosureEnabled])
  {
    goto LABEL_17;
  }

  v47 = *v18;
  if ((*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_currentDisclosureConfiguration) & 1) == 0)
  {
    if (v47)
    {
      sub_1003FE870();
      v65 = a1;
      v66 = v47;
      v67 = sub_10000F8C4();

      if (v67)
      {
        v68 = OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer;
        if (*(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteStopDisclosureAudioPlayer))
        {
          v69 = sub_100010B20();
          static os_log_type_t.default.getter();
          sub_100008378();
          os_log(_:dso:log:type:_:)();

          v70 = *(v2 + v68);
          v71 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_remoteInjectionMode);
          v72 = v70;
          sub_10001155C();
        }
      }
    }

    goto LABEL_17;
  }

  if (!v47 || (sub_1003FE870(), v48 = a1, v49 = v47, v50 = sub_10000F8C4(), v47, v48, (v50 & 1) == 0))
  {
LABEL_17:
    sub_10000EC18(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didLocalStopPlayerFinishPlayback);
    if (!v36)
    {
      return sub_10044A0B0(v15);
    }

    sub_10000EC18(OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_didRemoteStopPlayerFinishPlayback);
    if (!v36)
    {
      return sub_10044A0B0(v15);
    }

    v37 = sub_100010B20();
    static os_log_type_t.default.getter();
    sub_100008378();
    os_log(_:dso:log:type:_:)();

    v38 = [objc_opt_self() defaultCenter];
    goto LABEL_36;
  }

  v51 = *(v2 + OBJC_IVAR____TtC13callservicesd33CallTranslationDisclosureProvider_microphoneInjectionUtilities);
  v52 = *v18;
  v53 = *v18;
  sub_1003C4478(v52);

  v54 = sub_100010B20();
  static os_log_type_t.default.getter();
  sub_100008378();
  os_log(_:dso:log:type:_:)();

  v38 = [objc_opt_self() defaultCenter];
LABEL_36:
  v55 = v38;
  if (qword_1006A0790 != -1)
  {
    swift_once();
  }

  v56 = qword_1006BA1C0;
LABEL_46:
  [v55 postNotificationName:v56 object:0];

  return sub_10044A0B0(v15);
}

void sub_10044C018(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1006A0B30 != -1)
    {
      sub_100008720();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA610);
    v4 = a1;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2080;
      v9 = v4;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v10 = String.init<A>(describing:)();
      v12 = sub_10002741C(v10, v11, &v14);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v5, "audioPlayerDecodeErrorDidOccur for %@, error: %s", v6, 0x16u);
      sub_100009A04(v7, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v8);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CallTranslationDisclosureProvider.disclosureConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10044C34C()
{
  result = qword_1006ABE58;
  if (!qword_1006ABE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABE58);
  }

  return result;
}

uint64_t sub_10044C3A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A2B50, &unk_1005811A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10044C410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallTranslationDisclosureDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10044C474(uint64_t a1, uint64_t a2, float a3)
{

  return sub_10044C4CC(a1, a2, a3);
}

id sub_10044C4CC(uint64_t a1, uint64_t a2, float a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007BAC();
  __chkstk_darwin(v10, v11);
  v13 = &v39[-1] - v12;
  v14 = *(v7 + 16);
  v14(&v39[-1] - v12, a1, v6);
  v15 = objc_allocWithZone(AVAudioPlayer);
  v16 = sub_10039F99C(v13);
  [v16 setNumberOfLoops:0];
  *&v17 = a3;
  [v16 setVolume:v17];
  [v16 setDelegate:a2];
  v18 = [objc_opt_self() auxiliarySession];
  v39[0] = 0;
  if ([v18 setCategory:AVAudioSessionCategoryVoiceOver withOptions:1 error:v39])
  {
    v19 = v39[0];
    [v16 setAudioSession:v18];
    v20 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v21 = swift_allocObject();
    v22 = sub_10000E86C(v21, xmmword_10057D6A0);
    (v14)(v22);
    v23 = sub_1000160C8();
    v25 = v24;
    v21[3].n128_u64[1] = &type metadata for String;
    v21[4].n128_u64[0] = sub_100009D88();
    v21[2].n128_u64[0] = v23;
    v21[2].n128_u64[1] = v25;
    v21[6].n128_u64[0] = &type metadata for Float;
    v21[6].n128_u64[1] = &protocol witness table for Float;
    v21[4].n128_f32[2] = a3;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v26 = v39[0];
    v27 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v28 = sub_100010B20();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v29 = swift_allocObject();
    v30 = sub_10000E86C(v29, xmmword_10057D6A0);
    (v14)(v30);
    v31 = sub_1000160C8();
    v33 = v32;
    v29[3].n128_u64[1] = &type metadata for String;
    v34 = sub_100009D88();
    v29[4].n128_u64[0] = v34;
    v29[2].n128_u64[0] = v31;
    v29[2].n128_u64[1] = v33;
    v39[0] = v27;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v35 = String.init<A>(reflecting:)();
    v29[6].n128_u64[0] = &type metadata for String;
    v29[6].n128_u64[1] = v34;
    v29[4].n128_u64[1] = v35;
    v29[5].n128_u64[0] = v36;
    sub_100008378();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v16;
}

uint64_t sub_10044C950()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_10044C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments;
  *&v5[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments] = 0;
  swift_unknownObjectWeakInit();
  v12 = *&v5[v11];
  *&v5[v11] = 0;

  swift_unknownObjectWeakAssign();
  v17.receiver = v5;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "init");
  v14 = sub_10044D574(a1, a2, a3, v13, a5);
  swift_unknownObjectRelease();
  if (v14)
  {
    v15 = *&v13[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments];
    *&v13[OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments] = v14;
  }

  else
  {

    return 0;
  }

  return v13;
}

id sub_10044CB50()
{
  result = *(v0 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments);
  if (result)
  {
    return [result streamToken];
  }

  __break(1u);
  return result;
}

SEL *sub_10044CC24(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments))
  {
    return [*(v1 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments) *result];
  }

  __break(1u);
  return result;
}

id sub_10044CC44(id result, unsigned __int8 a2, uint64_t a3, void *a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC13callservicesd13CSDAVCMoments_moments);
  if (v5)
  {
    v6 = a4;
    v8 = result;
    if (a4)
    {
      v9 = v5;
      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = v5;
    }

    v11 = [v5 newRequestWithMediaType:v8 mode:a2 requesteeID:v6];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_10044CE1C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result moments:v2 capabilitiesDidChange:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10044CF08(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if (a3)
    {
      a3 = _convertErrorToNSError(_:)();
    }

    [v9 *a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10044CFB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  sub_10044CF08(v13, a4, a5, a6);
}

uint64_t sub_10044D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v11 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v29 - v18;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_1003507C4(a3, v19);
    v22 = type metadata accessor for URL();
    v24 = 0;
    if (sub_100015468(v19, 1, v22) != 1)
    {
      URL._bridgeToObjectiveC()(v23);
      v24 = v25;
      (*(*(v22 - 8) + 8))(v19, v22);
    }

    sub_1003507C4(a4, v16);
    if (sub_100015468(v16, 1, v22) == 1)
    {
      v27 = 0;
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      URL._bridgeToObjectiveC()(v26);
      v27 = v28;
      (*(*(v22 - 8) + 8))(v16, v22);
      if (!a5)
      {
LABEL_9:
        [v21 moments:v6 didEndProcessingRequest:a2 stillImageURL:v24 movieURL:v27 error:a5];

        return swift_unknownObjectRelease();
      }
    }

    a5 = _convertErrorToNSError(_:)();
    goto LABEL_9;
  }

  return result;
}

void *sub_10044D48C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"momentsServerDidDisconnect:"])
    {
      [v2 momentsServerDidDisconnect:v0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10044D574(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(AVCMoments) initWithStreamToken:a1 requesterID:v8 delegate:a4 dispatchQueue:a5];

  return v9;
}

uint64_t sub_10044D610(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_10000AF74(v8, 1, 1, v9);
  sub_100008BA8();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  sub_100008BA8();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100587EA0;
  v11[5] = v10;
  sub_10044EEA8(0, 0, v8, &unk_100587EB0, v11);
}

uint64_t sub_10044D718(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10044D73C, 0, 0);
}

uint64_t sub_10044D73C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = [v1 queue];
  v0[6] = v4;
  v5 = sub_1002EDD40();
  v6 = swift_task_alloc();
  v0[7] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  *v8 = v0;
  v8[1] = sub_10044D894;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 9, v4, v5, 0, 0, &unk_100587EE0, v6, &type metadata for Bool);
}

uint64_t sub_10044D894()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *(v2 + 48);
  v6 = *v1;
  sub_100008060();
  *v7 = v6;

  if (v0)
  {
    v8 = sub_10044D9D8;
  }

  else
  {
    v9 = *(v3 + 56);

    v8 = sub_10044D9BC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10044D9D8()
{
  sub_100006810();
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);

  v3 = sub_10001157C();

  return v4(v3);
}

uint64_t sub_10044DA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_10044DAE4;

  return sub_10044DC24(a3, a4);
}

uint64_t sub_10044DAE4()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  v6 = *(v4 + 32);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (v0)
  {
    v9 = sub_1002F761C;
  }

  else
  {
    *(v5 + 48) = v3 & 1;
    v9 = sub_10044DC00;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10044DC24(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for DispatchPredicate();
  v3[24] = v7;
  v8 = *(v7 - 8);
  v3[25] = v8;
  v9 = *(v8 + 64) + 15;
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_10044DD44, 0, 0);
}

uint64_t sub_10044DD44()
{
  v64 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  *v1 = [*(v0 + 160) queue];
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1006A0C18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = *(v0 + 144);
  v6 = type metadata accessor for Logger();
  v7 = sub_10000AF9C(v6, qword_1006ABF38);
  v8 = v5;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = *(v0 + 144);
    v12 = sub_100007C08();
    v13 = swift_slowAlloc();
    v14 = sub_100005E84();
    v63 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000A4A0(v14);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: %@", v12, 0x16u);
    sub_1000099A4(v13, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v14);
    sub_100005F40();
    sub_100005F40();
  }

  v16 = [*(v0 + 144) isSystemActivity];
  v17 = *(v0 + 144);
  if (v16)
  {
    v18 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 144);
      sub_100007C08();
      v22 = sub_10000FE98();
      v23 = sub_100005E84();
      v63 = v23;
      *v7 = 136315394;
      v24 = sub_10000A4A0(v23);
      sub_10000EC24(v24);
      *(v7 + 14) = v21;
      *v22 = v21;
      v25 = v21;
      v26 = "%s: Approving system activity %@";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v19, v20, v26, v7, 0x16u);
      sub_1000099A4(v22, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v23);
      sub_100005F40();
      sub_100005F40();
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v27 = [v17 isPlaceholderActivity];
  v28 = *(v0 + 144);
  if (v27)
  {
    v29 = v28;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v30 = *(v0 + 144);
      sub_100007C08();
      v22 = sub_10000FE98();
      v23 = sub_100005E84();
      v63 = v23;
      *v7 = 136315394;
      v31 = sub_10000A4A0(v23);
      sub_10000EC24(v31);
      *(v7 + 14) = v30;
      *v22 = v30;
      v32 = v30;
      v26 = "%s: Approving placeholder activity %@";
      goto LABEL_11;
    }

LABEL_12:

    v33 = *(v0 + 208);
    v34 = *(v0 + 184);

    v35 = *(v0 + 8);
    v36 = 1;
LABEL_13:

    return v35(v36);
  }

  sub_1002C89F0(v28);
  if (!v38)
  {
    sub_10044F4A0();
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
    v41 = *(v0 + 208);
    v42 = *(v0 + 184);

    v36 = sub_10001157C();
    goto LABEL_13;
  }

  if (*(v0 + 152))
  {
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = sub_100005E84();
      v63 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10000A4A0(v46);
      _os_log_impl(&_mh_execute_header, v43, v44, "%s: Found activity creation option to skip replacement prompt", v45, 0xCu);
      sub_100009B7C(v46);
      sub_100005F40();
      sub_100005F40();
    }

    (*(*(v0 + 176) + 104))(*(v0 + 184), enum case for AuthorizationRequestOverrides.PromptCondition.automatic(_:), *(v0 + 168));
    v47 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());
    v48 = AuthorizationRequestOverrides.init(promptCondition:)();
    dispatch thunk of AuthorizationRequestOverrides.confirmReplacement.setter();
    v39 = v48;
  }

  else
  {
    v39 = 0;
  }

  *(v0 + 216) = v39;
  v49 = *(v0 + 144);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 144);
    sub_100007C08();
    v53 = sub_10000FE98();
    v54 = sub_100005E84();
    v63 = v54;
    *v7 = 136315394;
    v55 = sub_10002741C(0xD00000000000002FLL, 0x8000000100578790, &v63);
    sub_10000EC24(v55);
    *(v7 + 14) = v52;
    *v53 = v52;
    v56 = v52;
    _os_log_impl(&_mh_execute_header, v50, v51, "%s: Requesting authorization for application for %@", v7, 0x16u);
    sub_1000099A4(v53, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v54);
    sub_100005F40();
    sub_100005F40();
  }

  v57 = *(v0 + 160);
  v58 = [v57 activityAuthorizationManager];
  *(v0 + 224) = v58;
  v59 = String._bridgeToObjectiveC()();
  *(v0 + 232) = v59;

  v60 = [v57 screenSharingActivityManager];
  v61 = *&v60[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes];
  *(v0 + 240) = v61;
  swift_unknownObjectRetain();

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 256;
  *(v0 + 24) = sub_10044E4C8;
  v62 = swift_continuation_init();
  *(v0 + 136) = sub_10026D814(&qword_1006A5E40, &qword_100580BC0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100331448;
  *(v0 + 104) = &unk_100630E28;
  *(v0 + 112) = v62;
  [v58 requestAuthorizationForApplicationWithBundleIdentifier:v59 preparing:0 overrides:v39 currentScreenShareAttributes:v61 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10044E4C8()
{
  sub_100006810();
  sub_100005F18();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 248) = v4;
  if (v4)
  {
    v5 = sub_10044E674;
  }

  else
  {
    v5 = sub_10044E5D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10044E5D0()
{
  sub_1000066BC();
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);

  v5 = *(v0 + 256);
  swift_unknownObjectRelease();

  v6 = *(v0 + 208);
  v7 = *(v0 + 184);

  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_10044E674()
{
  sub_1000066BC();
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  swift_willThrow();

  swift_unknownObjectRelease();
  v6 = v0[31];
  v7 = v0[26];
  v8 = v0[23];

  v9 = sub_10001157C();

  return v10(v9);
}

uint64_t sub_10044E7A8(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_10044E874;

  return sub_10044D718(v8, a2);
}

uint64_t sub_10044E874(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_100008060();
  *v7 = v6;
  v8 = v5[5];
  v9 = v5[3];
  v10 = v5[2];
  v11 = *v2;
  *v7 = *v2;

  v12 = v5[4];
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (*(v12 + 16))(v12, 0, v13);
  }

  else
  {
    (*(v12 + 16))(v5[4], a1 & 1, 0);
  }

  _Block_release(v6[4]);
  v14 = v11[1];

  return v14();
}

uint64_t sub_10044EA1C()
{
  sub_1000066BC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000F8E0(v6);

  return v8(v7);
}

uint64_t sub_10044EABC()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006ABF38);
  sub_10000AF9C(v0, qword_1006ABF38);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10044EB3C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1002FA1E0;

  return v7();
}

uint64_t sub_10044EC24()
{
  sub_1000066BC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000F8E0(v6);

  return v8(v7);
}

uint64_t sub_10044ECC4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1002F92EC;

  return v8();
}

uint64_t sub_10044EDAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  sub_100008BA8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10044EDE8()
{
  sub_1000066BC();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_10000A58C(v7);
  *v8 = v9;
  v8[1] = sub_1002F92EC;

  return sub_10044ECC4(v2, v3, v4, v6);
}

uint64_t sub_10044EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  sub_1002EE1BC(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  if (sub_100015468(v13, 1, v14) == 1)
  {
    sub_1000099A4(v13, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  if (*(a5 + 16))
  {
    v15 = *(a5 + 24);
    v16 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
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

      sub_1000099A4(a3, &qword_1006A5310, &qword_10057D580);

      return v24;
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

  sub_1000099A4(a3, &qword_1006A5310, &qword_10057D580);
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

uint64_t sub_10044F174(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10044F26C;

  return v7(a1);
}

uint64_t sub_10044F26C()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_10044F354()
{
  sub_10000C698();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10000A58C(v3);
  *v4 = v5;
  v6 = sub_100008040(v4);

  return v7(v6);
}

uint64_t sub_10044F3E8()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_10000A58C(v8);
  *v9 = v10;
  v9[1] = sub_1002F92EC;

  return sub_10044DA34(v4, v5, v6, v7, v2);
}

unint64_t sub_10044F4A0()
{
  result = qword_1006ABF50;
  if (!qword_1006ABF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABF50);
  }

  return result;
}

_BYTE *_s33ActivitySessionAuthorizationErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10044F5D4()
{
  result = qword_1006ABF58;
  if (!qword_1006ABF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006ABF58);
  }

  return result;
}

id sub_10044F628(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() requestWithIdentifier:v6 content:a3 trigger:a4];

  return v7;
}

void sub_10044F6AC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v25;
    v2 = v26;
    v3 = v27;
    v4 = v28;
    v5 = v29;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v22 = v3;
  v23 = _swiftEmptyArrayStorage;
  v24 = v1;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr), swift_dynamicCast(), v13 = v30, v4 = v9, v5 = v10, !v30))
      {
LABEL_24:
        sub_100022DDC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = sub_100021AEC([v13 activity]);
    v16 = v15;

    v9 = v4;
    v10 = v5;
    v1 = v24;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = v23[2];
        sub_100017840();
        v23 = v20;
      }

      v17 = v23[2];
      if (v17 >= v23[3] >> 1)
      {
        sub_100017840();
        v23 = v21;
      }

      v23[2] = v17 + 1;
      v18 = &v23[2 * v17];
      v18[4] = v14;
      v18[5] = v16;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

NSString sub_10044F95C()
{
  result = String._bridgeToObjectiveC()();
  static NSNotificationName.foregroundApplicationChanged = result;
  return result;
}

uint64_t *NSNotificationName.foregroundApplicationChanged.unsafeMutableAddressor()
{
  if (qword_1006A0C20 != -1)
  {
    sub_10000F904();
  }

  return &static NSNotificationName.foregroundApplicationChanged;
}

id static NSNotificationName.foregroundApplicationChanged.getter()
{
  if (qword_1006A0C20 != -1)
  {
    sub_10000F904();
  }

  v1 = static NSNotificationName.foregroundApplicationChanged;

  return v1;
}

unint64_t sub_10044FA74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620EB8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10044FAC0()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006ABFD8, &unk_100588060);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_notificationType))
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v6 = v1;

  v4._countAndFlagsBits = v2;
  v4._object = v3;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_10044FB98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchQoS();
  v15 = sub_100007FEC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v15, v20);
  sub_100007FDC();
  v47 = v22 - v21;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA6D0);
  sub_100009AB0(a1, aBlock);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v46 = v17;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v52[0] = v44;
    *v43 = 136315138;
    v26 = a1;
    v27 = v13;
    v28 = v14;
    v29 = v4;
    v30 = v7;
    v45 = v1;
    v32 = v49;
    v31 = v50;
    sub_100009B14(aBlock, v49);
    v33 = v32;
    v7 = v30;
    v4 = v29;
    v14 = v28;
    v13 = v27;
    a1 = v26;
    v34 = (*(v31 + 2))(v33, v31);
    v36 = v35;
    sub_100009B7C(aBlock);
    v37 = sub_10002741C(v34, v36, v52);
    v2 = v45;

    *(v43 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v24, v25, "Received response with identifier %s", v43, 0xCu);
    sub_100009B7C(v44);
    sub_100005F40();
    v17 = v46;
    sub_100005F40();
  }

  else
  {

    sub_100009B7C(aBlock);
  }

  v38 = *&v2[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue];
  sub_100009AB0(a1, v52);
  v39 = swift_allocObject();
  sub_10002F0C8(v52, v39 + 16);
  *(v39 + 56) = v2;
  v50 = sub_100455478;
  v51 = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  v49 = &unk_100630FA0;
  v40 = _Block_copy(aBlock);
  v41 = v2;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);
  (*(v7 + 8))(v13, v4);
  (*(v17 + 8))(v47, v14);
}

void sub_10044FF94(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = (v79 - v7);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  sub_100009B14(a1, v15);
  v84._countAndFlagsBits = (*(v16 + 8))(v15, v16);
  switch(sub_10044FA74(v84))
  {
    case 1u:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000AF9C(v42, qword_1006BA6D0);
      sub_100009AB0(a1, v81);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_25;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136315138;
      v43 = v82;
      v44 = v83;
      sub_100009B14(v81, v82);
      v45 = (*(v44 + 16))(v43, v44);
      v47 = v46;
      sub_100009B7C(v81);
      v48 = sub_10002741C(v45, v47, v80);

      *(v20 + 4) = v48;
      v28 = "continueActivity action for notification: %s";
      goto LABEL_24;
    case 2u:
      v29 = a1[3];
      v30 = a1[4];
      sub_100009B14(a1, v29);
      v31 = (*(v30 + 24))(v29, v30);
      v79[1] = 0xD000000000000025;
      v79[2] = 0x8000000100578870;
      AnyHashable.init<A>(_:)();
      sub_100006600(v81, v31);

      sub_100006780(v81);
      if (v80[3])
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        UUID.init(uuidString:)();

        if (sub_100015468(v8, 1, v9) != 1)
        {
          (*(v10 + 32))(v14, v8, v9);
          v56 = *(a2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_conversationManager);
          isa = UUID._bridgeToObjectiveC()().super.isa;
          v58 = [v56 activeConversationWithGroupUUID:isa];

          if (v58)
          {
            v59 = sub_100450A24();
            if (!v59)
            {
              (*(v10 + 8))(v14, v9);

              return;
            }

            v60 = v59;
            [v56 joinConversationWithRequest:v59];
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v61 = type metadata accessor for Logger();
            sub_10000AF9C(v61, qword_1006BA6D0);
            v62 = v60;
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              *v65 = 138412290;
              *(v65 + 4) = v62;
              *v66 = v60;
              v67 = v62;
              _os_log_impl(&_mh_execute_header, v63, v64, "Created and sent a joinRequest for conversation %@", v65, 0xCu);
              sub_100009A5C(v66, &unk_1006A2630, &qword_10057CB40);
            }

            else
            {
            }
          }

          else
          {
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v68 = type metadata accessor for Logger();
            sub_10000AF9C(v68, qword_1006BA6D0);
            sub_100009AB0(a1, v81);
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v69, v70))
            {

              (*(v10 + 8))(v14, v9);
              goto LABEL_26;
            }

            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v80[0] = v72;
            *v71 = 136315138;
            v73 = v82;
            v74 = v83;
            sub_100009B14(v81, v82);
            v75 = (*(v74 + 16))(v73, v74);
            v77 = v76;
            sub_100009B7C(v81);
            v78 = sub_10002741C(v75, v77, v80);

            *(v71 + 4) = v78;
            _os_log_impl(&_mh_execute_header, v69, v70, "Could not find conversation for notification: %s", v71, 0xCu);
            sub_100009B7C(v72);
          }

          (*(v10 + 8))(v14, v9);
          return;
        }

        v32 = &unk_1006A3DD0;
        v33 = &unk_10057C9D0;
        v34 = v8;
      }

      else
      {
        v32 = &unk_1006A2D10;
        v33 = &unk_10057D940;
        v34 = v80;
      }

      sub_100009A5C(v34, v32, v33);
LABEL_20:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10000AF9C(v49, qword_1006BA6D0);
      sub_100009AB0(a1, v81);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_25:

LABEL_26:
        sub_100009B7C(v81);
        return;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136315138;
      v50 = v82;
      v51 = v83;
      sub_100009B14(v81, v82);
      v52 = (*(v51 + 16))(v50, v51);
      v54 = v53;
      sub_100009B7C(v81);
      v55 = sub_10002741C(v52, v54, v80);

      *(v20 + 4) = v55;
      v28 = "Could not create groupUUID for notification: %s";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v18, v19, v28, v20, 0xCu);
      sub_100009B7C(v21);

      return;
    case 3u:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000AF9C(v35, qword_1006BA6D0);
      sub_100009AB0(a1, v81);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_25;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136315138;
      v36 = v82;
      v37 = v83;
      sub_100009B14(v81, v82);
      v38 = (*(v37 + 8))(v36, v37);
      v40 = v39;
      sub_100009B7C(v81);
      v41 = sub_10002741C(v38, v40, v80);

      *(v20 + 4) = v41;
      v28 = "Unknown notification response received %s";
      goto LABEL_24;
    default:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000AF9C(v17, qword_1006BA6D0);
      sub_100009AB0(a1, v81);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_25;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v80[0] = v21;
      *v20 = 136315138;
      v22 = v82;
      v23 = v83;
      sub_100009B14(v81, v82);
      v24 = (*(v23 + 16))(v22, v23);
      v26 = v25;
      sub_100009B7C(v81);
      v27 = sub_10002741C(v24, v26, v80);

      *(v20 + 4) = v27;
      v28 = "requestScreenShare action for notification: %s";
      goto LABEL_24;
  }
}

uint64_t sub_100450A24()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 queue];

  sub_10026D814(&unk_1006ABFC8, &unk_100588050);
  OS_dispatch_queue.sync<A>(execute:)();

  return v3;
}

uint64_t type metadata accessor for SharePlayNotificationProvider()
{
  result = qword_1006ABFB0;
  if (!qword_1006ABFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100450C80()
{
  sub_1002FAAA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100450D88(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for UUID();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v26 - v16;
  v18 = [objc_opt_self() sharedInstance];
  v19 = [v18 callContainer];

  v20 = [v19 frontmostCall];
  swift_unknownObjectRelease();
  v21 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:a1 originatingUIType:65];
  [v21 setWantsStagingArea:1];
  if (v20)
  {
    v22 = [v20 uniqueProxyIdentifierUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v27 + 32);
    v23(v8, v14, v9);
    sub_10000AF74(v8, 0, 1, v9);
    v23(v17, v8, v9);
  }

  else
  {
    sub_10000AF74(v8, 1, 1, v9);
    v24 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100015468(v8, 1, v9) != 1)
    {
      sub_100009A5C(v8, &unk_1006A3DD0, &unk_10057C9D0);
    }
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v27 + 8))(v17, v9);
  [v21 setUUID:isa];

  *a2 = v21;
}

void sub_10045109C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v4, v6);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA6D0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = a1;
    v18 = v4;
    v19 = v2;
    v20 = v17;
    v21 = swift_slowAlloc();
    v60 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10002741C(0xD000000000000023, 0x8000000100578A00, &v60);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v20, 0xCu);
    sub_100009B7C(v21);

    v2 = v19;
    v4 = v18;
    a1 = v56;
  }

  v22 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *v13 = v22;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v22)
  {
    if (TUSharePlayForceDisabled())
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "SharePlay force disabled, not posting foreground application notification.", v26, 2u);
LABEL_12:

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    if (CPForegroundApplication.applicationType.getter() == 2)
    {
      v27 = a1;
      v24 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v59 = v27;
        v60 = v30;
        *v29 = 136315138;
        type metadata accessor for CPForegroundApplication();
        v31 = v27;
        v32 = String.init<A>(reflecting:)();
        v34 = sub_10002741C(v32, v33, &v60);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v24, v28, "Not posting notification for unsupported foreground application: %s", v29, 0xCu);
        sub_100009B7C(v30);

        goto LABEL_12;
      }

LABEL_13:

      return;
    }

    v35 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v36 = CPForegroundApplication.applicationType.getter();
    v37 = CPForegroundApplication.isGameCenterApplication.getter();
    v38 = "WILL_SHAREPLAY_AUTOMATICALLY";
    v39 = "CHOOSE_CONTENT_TO_USE_SHAREPLAY";
    if (v36 == 1)
    {
      v38 = "PLAY_THIS_GAME_USING_SHAREPLAY";
    }

    v40 = 0xD00000000000001CLL;
    v41 = 0xD00000000000001ELL;
    if (v36 == 1)
    {
      v41 = 0xD000000000000021;
    }

    else
    {
      v39 = "(for:conversation:participant:)";
    }

    if (v36 != 1)
    {
      v40 = 0xD00000000000001FLL;
    }

    if (v37)
    {
      v42 = v41;
    }

    else
    {
      v38 = v39;
      v42 = v40;
    }

    sub_10031E958(v42, (v38 | 0x8000000000000000));
    CPForegroundApplication.localizedApplicationName.getter();
    v43 = String._bridgeToObjectiveC()();

    [v35 setTitle:v43];

    v44 = String._bridgeToObjectiveC()();

    [v35 setBody:v44];

    [v35 setSound:0];
    v45 = sub_10044FAC0();
    sub_1004554A0(v45, v46, v35);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v47 = v57;
    UUID.init()();
    v48 = UUID.uuidString.getter();
    v50 = v49;
    (*(v58 + 8))(v47, v4);
    v51 = v35;
    v52 = sub_10044F628(v48, v50, v51, 0);
    [v52 setDestinations:1];
    v53 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add);
    if (v53)
    {
      v54 = *(v2 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8);

      v53(v52);

      sub_1000051F8(v53);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1004516CC(void *a1, NSObject *a2, void *a3)
{
  v4 = v3;
  v133 = a3;
  v135 = a2;
  v132 = type metadata accessor for URL();
  v127 = *(v132 - 8);
  v6 = *(v127 + 64);
  __chkstk_darwin(v132, v7);
  v126 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v130 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v131 = &v119 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(v16, v19);
  v134 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v129 = &v119 - v23;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000AF9C(v24, qword_1006BA6D0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v137 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_10002741C(0xD00000000000002FLL, 0x8000000100578940, &v137);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s", v27, 0xCu);
    sub_100009B7C(v28);
  }

  if ((TUSharePlayForceDisabled() & 1) == 0)
  {
    v125 = v16;
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      *v35 = 136446466;
      v136 = [v32 sessionEventType];
      type metadata accessor for TUConversationNoticeEventType(0);
      v36 = String.init<A>(reflecting:)();
      v128 = v17;
      v38 = sub_10002741C(v36, v37, &v137);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2082;
      v136 = v32;
      sub_100006AF0(0, &qword_1006ABFF8, TUConversationNotice_ptr);
      v39 = v32;
      v40 = String.init<A>(reflecting:)();
      v42 = sub_10002741C(v40, v41, &v137);
      v4 = v3;

      *(v35 + 14) = v42;
      v17 = v128;
      _os_log_impl(&_mh_execute_header, v33, v34, "Generating notification for notice type: %{public}s and notice: %{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    v43 = v135;
    v44 = *(v4 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_displayStringProvider);
    v45 = [v135 provider];
    v46 = [v45 isTelephonyWithSharePlayProvider];

    sub_1003EA65C(v32, v46, v44, v47, v48, v49, v50, v51, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
    if (v53)
    {
      v54 = v53;
      v121 = v52;
      v123 = [v133 identifier];
      v124 = [v43 localParticipantIdentifier];
      if ([v32 sessionEventType] != 13 || (v55 = objc_msgSend(v32, "session"), v56 = objc_msgSend(v55, "activity"), v55, LODWORD(v55) = objc_msgSend(v56, "isScreenSharingActivity"), v56, !v55) || v123 != v124)
      {
        v122 = v54;
        v119 = [objc_allocWithZone(UNMutableNotificationContent) init];
        sub_10026D814(&qword_1006A4458, &unk_100588070);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057E830;
        v137 = 0x4449656C646E7562;
        v138 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        v66 = [v32 session];
        v67 = [v66 UUID];

        v68 = v129;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = UUID.uuidString.getter();
        v71 = v70;
        v73 = *(v17 + 8);
        v72 = v17 + 8;
        v133 = v73;
        (v73)(v68, v125);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v69;
        *(inited + 80) = v71;
        v137 = 0x6B6361626C6C6163;
        v138 = 0xEB000000004C5255;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = sub_10026D814(&qword_1006ABFF0, &qword_100588080);
        v74 = [v32 actionURL];
        if (v74)
        {
          v75 = v74;
          v76 = v130;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v77 = 0;
          v78 = v132;
        }

        else
        {
          v77 = 1;
          v78 = v132;
          v76 = v130;
        }

        sub_10000AF74(v76, v77, 1, v78);
        v84 = v131;
        sub_1002A01B0(v76, v131);
        v85 = sub_100015468(v84, 1, v78);
        v86 = v125;
        v120 = v4;
        v128 = v72;
        if (v85)
        {
          sub_100009A5C(v84, &unk_1006A52C0, &unk_10057D930);
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v90 = v126;
          v89 = v127;
          (*(v127 + 16))(v126, v84, v78);
          sub_100009A5C(v84, &unk_1006A52C0, &unk_10057D930);
          v87 = URL.absoluteString.getter();
          v88 = v91;
          (*(v89 + 8))(v90, v78);
        }

        *(inited + 144) = v87;
        *(inited + 152) = v88;
        v137 = 0xD000000000000025;
        v138 = 0x8000000100578870;
        AnyHashable.init<A>(_:)();
        v92 = v135;
        v93 = [v135 groupUUID];
        v94 = v134;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v95 = UUID.uuidString.getter();
        v97 = v96;
        (v133)(v94, v86);
        *(inited + 240) = &type metadata for String;
        *(inited + 216) = v95;
        *(inited + 224) = v97;
        Dictionary.init(dictionaryLiteral:)();
        sub_10031E958(0x40255F524F46, 0xE600000000000000);
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_10057D690;
        v99 = [v92 displayName];
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v102 = v101;

        *(v98 + 56) = &type metadata for String;
        *(v98 + 64) = sub_100009D88();
        *(v98 + 32) = v100;
        *(v98 + 40) = v102;
        String.init(format:_:)();

        v104 = v119;
        v103 = v120;
        v105 = String._bridgeToObjectiveC()();

        [v104 setTitle:v105];

        v106 = String._bridgeToObjectiveC()();

        [v104 setBody:v106];

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v104 setUserInfo:isa];

        [v104 setSound:0];
        v108 = String._bridgeToObjectiveC()();
        [v104 setCategoryIdentifier:v108];

        v109 = sub_10044FAC0();
        sub_1004554A0(v109, v110, v104);
        sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
        v111 = v134;
        UUID.init()();
        v112 = UUID.uuidString.getter();
        v114 = v113;
        (v133)(v111, v86);
        v115 = v104;
        v116 = sub_10044F628(v112, v114, v115, 0);
        [v116 setDestinations:1];
        v117 = *(v103 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add);
        if (v117)
        {
          v118 = *(v103 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8);

          v117(v116);

          sub_1000051F8(v117);
        }

        else
        {
        }

        return;
      }

      v57 = v32;
      v58 = v133;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138543618;
        *(v61 + 4) = v57;
        *(v61 + 12) = 2112;
        *(v61 + 14) = v58;
        *v62 = v57;
        v62[1] = v58;
        v63 = v57;
        v64 = v58;
        _os_log_impl(&_mh_execute_header, v59, v60, "Not posting notification as detected locally ended screen sharing for notice: %{public}@ with participant: %@", v61, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
LABEL_23:
      }
    }

    else
    {
      v79 = v32;
      v59 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v59, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v81 = 138543362;
        *(v81 + 4) = v79;
        *v82 = v79;
        v83 = v79;
        _os_log_impl(&_mh_execute_header, v59, v80, "Not posting notification for unsupported notice: %{public}@", v81, 0xCu);
        sub_100009A5C(v82, &unk_1006A2630, &qword_10057CB40);
        goto LABEL_23;
      }
    }

    return;
  }

  v135 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v135, v29, "SharePlay force disabled, not posting notification for notice.", v30, 2u);
  }

  v31 = v135;
}

void sub_10045247C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v154 = *(v8 - 8);
  isa = v154[8].isa;
  __chkstk_darwin(v8, v10);
  v12 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000AF9C(v13, qword_1006BA6D0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v153 = a2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v159 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_10002741C(0xD000000000000036, 0x80000001005788E0, &v159);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v18, 0xCu);
    sub_100009B7C(v19);
  }

  if (TUSharePlayForceDisabled())
  {
    v154 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v154, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v154, v20, "SharePlay force disabled, not posting new activity session notification.", v21, 2u);
    }

    v22 = v154;

    return;
  }

  v23 = *&v4[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_removeNotification];
  if (v23)
  {
    v24 = *&v4[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_removeNotification + 8];

    v25 = [a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = UUID.uuidString.getter();
    v28 = v27;
    (v154[1].isa)(v12, v8);
    v23(v26, v28);
    sub_1000051F8(v23);
  }

  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v150 = a3;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v152 = v12;
    v34 = v14;
    v35 = a3;
    v36 = v8;
    v37 = v4;
    v38 = v33;
    v39 = swift_slowAlloc();
    v159 = v39;
    *v38 = 134349314;
    *(v38 + 4) = v35;
    *(v38 + 12) = 2080;
    *&v157 = v29;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v40 = v29;
    v41 = String.init<A>(reflecting:)();
    v43 = sub_10002741C(v41, v42, &v159);

    *(v38 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v31, "Generating notification for new launch state: %{public}lu activity session: %s", v38, 0x16u);
    sub_100009B7C(v39);

    v4 = v37;
    v8 = v36;
    v14 = v34;
    v12 = v152;
  }

  v44 = v153;
  v152 = v4;
  v45 = *&v4[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_displayStringProvider];
  sub_1003EA0F4();
  if (v46)
  {
    v151 = v29;
    v47 = [v29 activity];
    v48 = [v47 originator];

    if (v48)
    {
      v49 = [v44 remoteParticipantForLightweightParticipantHandle:v48];
      if (v49)
      {
        v50 = v44;
        v51 = v49;
        sub_1003E9E64(v49, v50, v45);
        v53 = v52;

        if (v53)
        {
        }
      }

      else
      {
      }
    }

    v57 = [objc_allocWithZone(UNMutableNotificationContent) init];
    v58 = String._bridgeToObjectiveC()();

    [v57 setTitle:v58];

    v59 = v151;
    v60 = [v151 activity];
    v61 = [v60 isScreenSharingActivity];

    v149 = v14;
    if (v61)
    {
      if (([v59 isLocallyInitiated] & 1) == 0)
      {
        sub_10031E958(0xD000000000000016, 0x80000001005748F0);
      }

      v97 = v152;
      v98 = String._bridgeToObjectiveC()();

      [v57 setBody:v98];

      v87 = v12;
    }

    else
    {
      v148 = v57;
      sub_10031E958(0x5F44455452415453, 0xEA00000000004025);
      v146[1] = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v62 = swift_allocObject();
      v147 = xmmword_10057D690;
      *(v62 + 16) = xmmword_10057D690;
      v63 = [v59 activity];
      v64 = [v63 concatenatedDescription];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      *(v62 + 56) = &type metadata for String;
      v146[0] = sub_100009D88();
      *(v62 + 64) = v146[0];
      *(v62 + 32) = v65;
      *(v62 + 40) = v67;
      v68 = String.init(format:_:)();
      v70 = v69;

      if (v150 == 1)
      {
        v71 = v70;
        v72 = [v59 activity];
        v73 = [v72 isSupported];

        if (v73)
        {
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            *v76 = 0;
            _os_log_impl(&_mh_execute_header, v74, v75, "Showing Join SharePlay because activity is supported", v76, 2u);
          }

          v159 = v68;
          v160 = v70;
          *&v157 = 4203786;
          *(&v157 + 1) = 0xE300000000000000;
          v77 = swift_allocObject();
          *(v77 + 16) = v147;
          v78 = sub_10031E958(0x4148535F4E494F4ALL, 0xEE0059414C504552);
          v79 = v146[0];
          *(v77 + 56) = &type metadata for String;
          *(v77 + 64) = v79;
          *(v77 + 32) = v78;
          *(v77 + 40) = v80;
          sub_10001E364();
          StringProtocol.appendingFormat<A>(_:_:)();

          v81 = String._bridgeToObjectiveC()();

          [v148 setBody:v81];

          *&v157 = 0xD000000000000019;
          *(&v157 + 1) = 0x80000001005788C0;
          AnyHashable.init<A>(_:)();
          v82 = [v151 UUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v83 = UUID.uuidString.getter();
          v85 = v84;
          v86 = v154[1].isa;
          (v86)(v12, v8);
          v158 = &type metadata for String;
          *&v157 = v83;
          *(&v157 + 1) = v85;
          sub_10003EBF0(&v157, v156);
          swift_isUniquelyReferenced_nonNull_native();
          v155 = _swiftEmptyDictionarySingleton;
          sub_100378C74(v156, &v159);
          v87 = v12;
          v88 = v155;
          sub_100006780(&v159);
          v89 = v153;
          v90 = [v153 provider];
          v91 = [objc_opt_self() telephonyWithSharePlayProvider];
          v92 = [v90 isEqualToConversationProvider:v91];

          if (v92)
          {
            *&v157 = 0xD000000000000025;
            *(&v157 + 1) = 0x8000000100578870;
            AnyHashable.init<A>(_:)();
            v93 = [v89 groupUUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v94 = UUID.uuidString.getter();
            v96 = v95;
            (v86)(v87, v8);
            v158 = &type metadata for String;
            *&v157 = v94;
            *(&v157 + 1) = v96;
            sub_10003EBF0(&v157, v156);
            swift_isUniquelyReferenced_nonNull_native();
            v155 = v88;
            sub_100378C74(v156, &v159);
            sub_100006780(&v159);
          }

          v97 = v152;
          v57 = v148;
          goto LABEL_47;
        }

        v105 = [v59 activity];
        v106 = [v105 isEligibleForWebBrowser];

        v107 = Logger.logObject.getter();
        v108 = static os_log_type_t.default.getter();
        v109 = os_log_type_enabled(v107, v108);
        if (!v106)
        {
          if (v109)
          {
            v120 = swift_slowAlloc();
            *v120 = 0;
            _os_log_impl(&_mh_execute_header, v107, v108, "Showing Get the App because app for the activity is not installed", v120, 2u);
          }

          v159 = v68;
          v160 = v71;
          *&v157 = 4203786;
          *(&v157 + 1) = 0xE300000000000000;
          v121 = swift_allocObject();
          *(v121 + 16) = v147;
          v122 = sub_10031E958(0x40255F544547, 0xE600000000000000);
          v123 = v146[0];
          *(v121 + 56) = &type metadata for String;
          *(v121 + 64) = v123;
          *(v121 + 32) = v122;
          *(v121 + 40) = v124;
          sub_10001E364();
          StringProtocol.appendingFormat<A>(_:_:)();

          v125 = String._bridgeToObjectiveC()();

          v57 = v148;
          [v148 setBody:v125];

          v126 = sub_100021AEC([v151 activity]);
          if (v127)
          {
            v128 = v126;
            v129 = v127;
            *&v157 = 0xD000000000000015;
            *(&v157 + 1) = 0x80000001005788A0;
            AnyHashable.init<A>(_:)();
            v158 = &type metadata for String;
            *&v157 = v128;
            *(&v157 + 1) = v129;
            sub_10003EBF0(&v157, v156);
            swift_isUniquelyReferenced_nonNull_native();
            v155 = _swiftEmptyDictionarySingleton;
            sub_100378C74(v156, &v159);
            sub_100006780(&v159);
          }

          v97 = v152;
          v87 = v12;
          goto LABEL_47;
        }

        if (v109)
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v107, v108, "Showing Open in Safari because activity is supported in web browser", v110, 2u);
        }

        v159 = v68;
        v160 = v71;
        *&v157 = 4203786;
        *(&v157 + 1) = 0xE300000000000000;
        v111 = swift_allocObject();
        *(v111 + 16) = v147;
        v112 = sub_10031E958(0x5F4E495F4E45504FLL, 0xEE00495241464153);
        v113 = v146[0];
        *(v111 + 56) = &type metadata for String;
        *(v111 + 64) = v113;
        *(v111 + 32) = v112;
        *(v111 + 40) = v114;
        sub_10001E364();
        StringProtocol.appendingFormat<A>(_:_:)();

        v115 = String._bridgeToObjectiveC()();

        v57 = v148;
        [v148 setBody:v115];

        *&v157 = 0xD000000000000019;
        *(&v157 + 1) = 0x80000001005788C0;
        AnyHashable.init<A>(_:)();
        v116 = [v151 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v117 = UUID.uuidString.getter();
        v119 = v118;
        (v154[1].isa)(v12, v8);
        v158 = &type metadata for String;
        *&v157 = v117;
        *(&v157 + 1) = v119;
        sub_10003EBF0(&v157, v156);
        swift_isUniquelyReferenced_nonNull_native();
        v155 = _swiftEmptyDictionarySingleton;
        sub_100378C74(v156, &v159);
        v87 = v12;
        sub_100006780(&v159);
      }

      else
      {
        v99 = String._bridgeToObjectiveC()();

        v57 = v148;
        [v148 setBody:v99];

        sub_10026D814(&qword_1006A4458, &unk_100588070);
        inited = swift_initStackObject();
        *(inited + 16) = v147;
        v159 = 0x4449656C646E7562;
        v160 = 0xE800000000000000;
        AnyHashable.init<A>(_:)();
        v101 = [v59 UUID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v102 = UUID.uuidString.getter();
        v104 = v103;
        (v154[1].isa)(v12, v8);
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v102;
        *(inited + 80) = v104;
        Dictionary.init(dictionaryLiteral:)();
        v87 = v12;
      }

      v97 = v152;
    }

LABEL_47:
    v130 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v57 setUserInfo:v130];

    v131 = sub_10044FAC0();
    sub_1004554A0(v131, v132, v57);
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    UUID.init()();
    v133 = UUID.uuidString.getter();
    v135 = v134;
    (v154[1].isa)(v87, v8);
    v136 = v57;
    v137 = sub_10044F628(v133, v135, v136, 0);
    [v137 setDestinations:1];
    v138 = v137;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v141 = 138412290;
      *(v141 + 4) = v138;
      *v142 = v138;
      v143 = v138;
      _os_log_impl(&_mh_execute_header, v139, v140, "Delivering user notification for new activity session: %@", v141, 0xCu);
      sub_100009A5C(v142, &unk_1006A2630, &qword_10057CB40);
    }

    v144 = *&v97[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add];
    if (v144)
    {
      v145 = *&v97[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_add + 8];

      v144(v138);

      sub_1000051F8(v144);
    }

    else
    {
    }

    return;
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v54, v55, "Not posting notification for launched activity session because it's locally originated", v56, 2u);
  }
}

uint64_t sub_100453828(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3, v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  __chkstk_darwin(v8, v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Notification();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v22[1] = *&v1[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue];
  (*(v14 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = swift_allocObject();
  (*(v14 + 32))(v18 + v17, v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v18 + ((v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_100455504;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100630FF0;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v7, v3);
  (*(v23 + 8))(v12, v24);
}

void sub_100453B70(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Notification.object.getter();
  if (!v80)
  {
    sub_100009A5C(v79, &unk_1006A2D10, &unk_10057D940);
LABEL_6:
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

  type metadata accessor for CPForegroundApplication();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v10 = v76;
  v73 = a2;
  v70 = *&a2[OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_conversationManager];
  v11 = [v70 activeConversations];
  v9 = TUConversation_ptr;
  v12 = sub_100006AF0(0, &unk_1006A0C80, TUConversation_ptr);
  v13 = sub_10000CE3C(&unk_1006A3BB8, &unk_1006A0C80, TUConversation_ptr);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v10;
  v75 = v12;
  v69 = v13;
  v72 = v14;
  if ((v14 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v14 = v79[0];
    v15 = v79[1];
    a1 = v79[2];
    v5 = v80;
    v4 = v81;
  }

  else
  {
    v28 = -1 << *(v14 + 32);
    v15 = v14 + 56;
    a1 = ~v28;
    v29 = -v28;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v4 = v30 & *(v14 + 56);

    v5 = 0;
  }

  v71 = a1;
  v31 = (a1 + 64) >> 6;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = __CocoaSet.Iterator.next()();
  if (v32)
  {
    v78 = v32;
    swift_dynamicCast();
    v33 = v76;
    v34 = v5;
    v9 = v4;
    if (v76)
    {
      while (1)
      {
        if ([v33 state] == 3 || (a1 = objc_msgSend(v33, "provider"), a2 = objc_msgSend(a1, "isTelephonyWithSharePlayProvider"), a1, (a2 & 1) != 0))
        {
          sub_100022DDC();

          v50 = [v33 activitySessions];
          sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
          sub_10000CE3C(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
          v51 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          sub_10044F6AC(v51);

          v52 = v74;
          v76 = CPForegroundApplication.bundleIdentifier.getter();
          v77 = v53;
          __chkstk_darwin(v76, v53);
          *(&v69 - 2) = &v76;
          v54 = sub_100013094();

          if (v54)
          {
            v55 = v73;
            if (qword_1006A0B70 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            sub_10000AF9C(v56, qword_1006BA6D0);
            v57 = v55;
            v58 = v52;
            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v61 = swift_slowAlloc();
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              v78 = v63;
              *v61 = 138543618;
              *(v61 + 4) = v57;
              *v62 = v57;
              *(v61 + 12) = 2080;
              v64 = v57;
              v76 = CPForegroundApplication.bundleIdentifier.getter();
              v77 = v65;
              v66 = String.init<A>(reflecting:)();
              v68 = sub_10002741C(v66, v67, &v78);

              *(v61 + 14) = v68;
              _os_log_impl(&_mh_execute_header, v59, v60, "%{public}@: Ignoring notice for foreground application with existing activity session: %s", v61, 0x16u);
              sub_100009A5C(v62, &unk_1006A2630, &qword_10057CB40);

              sub_100009B7C(v63);
            }

            else
            {
            }
          }

          else
          {
            sub_10045109C(v52);
          }

          return;
        }

        v5 = v34;
        v4 = v9;
        if (v14 < 0)
        {
          goto LABEL_15;
        }

LABEL_18:
        v35 = v5;
        v36 = v4;
        v34 = v5;
        if (!v4)
        {
          break;
        }

LABEL_22:
        v9 = ((v36 - 1) & v36);
        v33 = *(*(v14 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v36)))));
        if (!v33)
        {
          goto LABEL_27;
        }
      }

      while (1)
      {
        v34 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v34 >= v31)
        {
          goto LABEL_27;
        }

        v36 = *(v15 + 8 * v34);
        ++v35;
        if (v36)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
LABEL_7:
      v16 = type metadata accessor for Logger();
      sub_10000AF9C(v16, qword_1006BA6D0);
      (*(v5 + 16))(v9, a1, v4);
      v17 = a2;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v76 = v22;
        *v20 = 138543618;
        *(v20 + 4) = v17;
        *v21 = v17;
        *(v20 + 12) = 2080;
        v23 = v17;
        Notification.object.getter();
        v24 = sub_100291184();
        v26 = v25;
        sub_100009A5C(v79, &unk_1006A2D10, &unk_10057D940);
        (*(v5 + 8))(v9, v4);
        v27 = sub_10002741C(v24, v26, &v76);

        *(v20 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "%{public}@: Received invalid notification object for foreground application change notification: %s", v20, 0x16u);
        sub_100009A5C(v21, &unk_1006A2630, &qword_10057CB40);

        sub_100009B7C(v22);
      }

      else
      {

        (*(v5 + 8))(v9, v4);
      }

      return;
    }
  }

LABEL_27:
  sub_100022DDC();

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA6D0);
  v38 = v73;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v76 = v43;
    *v41 = 138543618;
    *(v41 + 4) = v38;
    *v42 = v38;
    *(v41 + 12) = 2080;
    v44 = v38;
    v45 = [v70 activeConversations];
    v46 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = v46;
    sub_10026D814(&unk_1006AC000, &qword_100588088);
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, &v76);

    *(v41 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "%{public}@: Could not find active conversation in conversations: %s", v41, 0x16u);
    sub_100009A5C(v42, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v43);
  }
}

void sub_100454630(uint64_t a1, void *a2, void *a3, void *a4)
{
  v106 = a3;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v105 = v9;
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v8, v12);
  v15 = __chkstk_darwin(v13, v14);
  v104 = &v101 - v16;
  __chkstk_darwin(v15, v17);
  v19 = &v101 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v107 = v4;
  v30 = *(v4 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ([a2 state] != 3)
  {
    v32 = [a2 provider];
    v33 = [v32 isTelephonyWithSharePlayProvider];

    if (!v33)
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C();
      }

      v47 = type metadata accessor for Logger();
      sub_10000AF9C(v47, qword_1006BA6D0);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v48, v49))
      {
        goto LABEL_15;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Not posting notification for activity because conversation is not joined or telephonyProvider", v50, 2u);
      goto LABEL_14;
    }
  }

  if ([a4 sessionEventType] != 12)
  {
    goto LABEL_6;
  }

  v34 = [a4 session];
  v35 = [v34 isLocallyInitiated];

  if (v35)
  {
    goto LABEL_6;
  }

  v51 = [a4 sessionUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v52 = OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_activitySessionMap;
  v53 = v107;
  swift_beginAccess();
  v54 = sub_100025C58(v19, *(v53 + v52));
  if (!v54)
  {
    swift_endAccess();
    v103 = *(v105 + 8);
    v103(v19, v7);
LABEL_25:
    v81 = *(v107 + v52);

    v82 = [a4 sessionUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v81 + 16))
    {
      sub_100021E24();
      v84 = v83;

      v85 = sub_1000183A4();
      v86(v85);
      v87 = &selRef_isInstalled;
      v88 = &selRef_normalizedValue;
      if (v84)
      {
        goto LABEL_6;
      }
    }

    else
    {

      v89 = sub_1000183A4();
      v90(v89);
      v87 = &selRef_isInstalled;
      v88 = &selRef_normalizedValue;
    }

    v91 = [a2 v88[439]];
    v92 = [v91 v87[144]];

    if (v92)
    {
LABEL_6:
      if (qword_1006A0B70 == -1)
      {
LABEL_7:
        v36 = type metadata accessor for Logger();
        sub_10000AF9C(v36, qword_1006BA6D0);
        v37 = a4;
        v38 = a2;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = sub_100007C08();
          v42 = sub_10001158C();
          *v41 = 138412546;
          *(v41 + 4) = v37;
          *(v41 + 12) = 2112;
          *(v41 + 14) = v38;
          *v42 = v37;
          v42[1] = v38;
          v43 = v37;
          v44 = v38;
          sub_10000EC34(&_mh_execute_header, v45, v46, "Posting notification for activity session notice: %@ on conversation: %@");
          sub_10026D814(&unk_1006A2630, &qword_10057CB40);
          swift_arrayDestroy();
          sub_100005F40();
          sub_100005F40();
        }

        sub_1004516CC(v37, v38, v106);
        return;
      }

LABEL_35:
      sub_10000860C();
      goto LABEL_7;
    }

    if (qword_1006A0B70 != -1)
    {
      sub_10000860C();
    }

    v93 = type metadata accessor for Logger();
    sub_10000AF9C(v93, qword_1006BA6D0);
    v94 = a4;
    v95 = a2;
    v48 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v48, v96))
    {
LABEL_15:

      return;
    }

    v97 = sub_100007C08();
    v98 = sub_10001158C();
    *v97 = 138412546;
    *(v97 + 4) = v94;
    *(v97 + 12) = 2112;
    *(v97 + 14) = v95;
    *v98 = v94;
    v98[1] = v95;
    v99 = v94;
    v100 = v95;
    _os_log_impl(&_mh_execute_header, v48, v96, "Not posting notification for activity session start notice: %@ on conversation: %@ since activitySessionLaunch has not already posted", v97, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40();
LABEL_14:
    sub_100005F40();
    goto LABEL_15;
  }

  v55 = v54;
  swift_endAccess();
  v56 = *(v105 + 8);
  v57 = v19;
  v58 = v7;
  v102 = v105 + 8;
  v103 = v56;
  v56(v57, v7);
  v59 = [a4 session];
  v60 = [v59 activity];

  LOBYTE(v59) = [v55 isEquivalentToActivity:v60];
  if ((v59 & 1) == 0)
  {

    goto LABEL_25;
  }

  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v61 = type metadata accessor for Logger();
  sub_10000AF9C(v61, qword_1006BA6D0);
  v62 = a4;
  v63 = a2;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = sub_100007C08();
    v67 = sub_10001158C();
    *v66 = 138412546;
    *(v66 + 4) = v62;
    *(v66 + 12) = 2112;
    *(v66 + 14) = v63;
    *v67 = v62;
    v67[1] = v63;
    v68 = v62;
    v69 = v63;
    _os_log_impl(&_mh_execute_header, v64, v65, "Not posting notification for activity session start notice: %@ on conversation: %@ since activitySessionLaunch has already posted", v66, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  v70 = [v62 sessionUUID];
  v71 = v104;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_1003846E4(v71, v72, v73, v74, v75, v76, v77, v78, v101, v102);
  v80 = v79;
  swift_endAccess();

  v103(v71, v58);
}

void sub_100454F34(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v53 = a2;
  v54 = a3;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v8, v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v30 = *(v5 + OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_queue);
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    sub_10000860C();
    goto LABEL_10;
  }

  if ([a4 isLocallyInitiated])
  {
    return;
  }

  v32 = [a4 state];
  if (v32 > 5 || ((1 << v32) & 0x23) == 0)
  {
    return;
  }

  v33 = OBJC_IVAR____TtC13callservicesd29SharePlayNotificationProvider_activitySessionMap;
  swift_beginAccess();
  v34 = *(v5 + v33);

  v35 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v34 + 16))
  {
    sub_100021E24();
    v37 = v36;

    v38 = *(v10 + 8);
    v38(v19, v7);
    if (v37)
    {
      return;
    }
  }

  else
  {

    v38 = *(v10 + 8);
    v38(v19, v7);
  }

  v39 = [a4 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = [a4 activity];
  [v40 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006AF0(0, &unk_1006ABFE0, TUConversationActivity_ptr);
  swift_dynamicCast();
  swift_beginAccess();
  v41 = *(v5 + v33);
  swift_isUniquelyReferenced_nonNull_native();
  v55 = *(v5 + v33);
  sub_10037A48C();
  *(v5 + v33) = v55;
  v38(v16, v7);
  swift_endAccess();
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v42 = type metadata accessor for Logger();
  sub_10000AF9C(v42, qword_1006BA6D0);
  v43 = a4;
  v44 = v53;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = sub_100007C08();
    v48 = sub_10001158C();
    *v47 = 138412546;
    *(v47 + 4) = v43;
    *(v47 + 12) = 2112;
    *(v47 + 14) = v44;
    *v48 = v43;
    v48[1] = v44;
    v49 = v43;
    v50 = v44;
    sub_10000EC34(&_mh_execute_header, v51, v52, "Posting notification for activity session launch: %@ on conversation: %@");
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  sub_10045247C(v43, v44, v54);
}

void sub_1004554A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setNotificationProviderIdentifier:v4];
}

void sub_100455504()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100453B70(v0 + v2, v3);
}

void sub_100455590(uint64_t a1)
{
  sub_100027EF4(a1);
  if (v2)
  {
    sub_10026D814(&unk_1006A7590, &qword_100582CF0);
    v3 = sub_10001AC80();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(v1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = (v3 + 8);

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    sub_10000B904(__clz(__rbit64(v6)) | (v9 << 6));
    v12 = v11[1];
    v15 = *(v14 + 8 * v13);
    *&v49 = *v11;
    *(&v49 + 1) = v12;

    swift_dynamicCast();
    sub_10026D814(&unk_1006AC0B0, &unk_10057E750);
    swift_dynamicCast();
    v16 = sub_1000053D0();
    v17 = sub_10003EBF0(v16, v48);
    sub_100006C58(v17, v18, v19, v20, v21, v22, v23, v24, v31, v15, v34, v36, v37, v39, v40, v42, v43, v44, v45, v46, v47);
    sub_10003EBF0(v48, &v49);
    v25 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v25) & ~*&v8[8 * (v25 >> 6)]) == 0)
    {
      sub_10000E7C0();
      while (1)
      {
        sub_100007A0C();
        if (v29)
        {
          if (v27)
          {
            goto LABEL_26;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        if (*&v8[8 * v26] != -1)
        {
          sub_10000A950();
          goto LABEL_22;
        }
      }
    }

    sub_10000FE84();
LABEL_22:
    v6 &= v6 - 1;
    sub_100007DC0();
    sub_100008C78(v30, v32, v33, v35, v38, v41);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t sub_1004557B0(uint64_t a1)
{
  sub_100027EF4(a1);
  if (v2)
  {
    sub_10026D814(&unk_1006AC0A0, &qword_100586618);
    v4 = sub_10001AC80();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  sub_100007990();
  v9 = v8 & v7;
  sub_1004582A8();

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_10000B904(v13 | (v12 << 6));
    v16 = *v14;
    v15 = v14[1];
    v30 = *(v18 + v17);

    swift_dynamicCast();
    sub_10003EBF0(&v31, v33);
    sub_10003EBF0(v33, v34);
    sub_10003EBF0(v34, &v32);
    result = sub_100005208();
    v19 = result;
    if (v20)
    {
      sub_10004A130();
      v22 = v21[1];
      *v21 = v16;
      v21[1] = v15;

      v23 = (v4[7] + 32 * v19);
      sub_100009B7C(v23);
      result = sub_10003EBF0(&v32, v23);
      v11 = v12;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_10003A5CC();
      *(v4 + v24 + 64) |= v25;
      sub_10004A130();
      *v26 = v16;
      v26[1] = v15;
      result = sub_10003EBF0(&v32, (v4[7] + 32 * v19));
      v27 = v4[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_18;
      }

      v4[2] = v29;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v3)
    {

      return v4;
    }

    v9 = *(v1 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1004559AC(uint64_t a1)
{
  sub_100027EF4(a1);
  if (v2)
  {
    sub_10026D814(&qword_1006AC068, &qword_1005880C8);
    v4 = sub_10001AC80();
  }

  else
  {
    v4 = _swiftEmptyDictionarySingleton;
  }

  v5 = *(v1 + 64);
  v6 = *(v1 + 32);
  sub_100007990();
  v9 = v8 & v7;
  sub_1004582A8();

  v10 = 0;
  while (v9)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_10000B904(v12 | (v11 << 6));
    v15 = *v13;
    v14 = v13[1];
    v18 = *(v17 + 8 * v16);

    v19 = v18;
    sub_10000F2EC();
    v20 = sub_100005208();
    if (v21)
    {
      sub_10004A130();
      v23 = v22[1];
      *v22 = v15;
      v22[1] = v14;

      v24 = v4[7];
      v25 = *(v24 + 8 * v20);
      *(v24 + 8 * v20) = v19;

      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      sub_10003A5CC();
      *(v4 + v26 + 64) |= v27;
      sub_10004A130();
      *v28 = v15;
      v28[1] = v14;
      *(v4[7] + 8 * v20) = v19;
      v29 = v4[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v4[2] = v31;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v3)
    {

      return;
    }

    v9 = *(v1 + 64 + 8 * v11);
    ++v10;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_100455B60(uint64_t a1, void *a2)
{
  type metadata accessor for AnalyticsReporter();
  v3 = sub_10000667C();
  sub_10045722C(v3);
  v4 = sub_100017E58();
  sub_100456FA4(v4);

  return sub_100455C24(a2);
}

uint64_t sub_100455C24(void *a1)
{
  if (qword_1006A0C28 != -1)
  {
    sub_100007E54();
  }

  v2 = sub_1004582B4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();

  sub_100017F18();
  v3 = sub_100006718();
  v4 = sub_1000513D8(v3);
  swift_endAccess();

  if (v4)
  {
  }

  else
  {
    v5 = sub_1004582B4();
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = sub_1004582B4();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CallRecordingTracker();
    swift_allocObject();
    v10 = sub_100006C30();
    v12 = sub_1003EDBBC(v10, v11);
    sub_100008D34();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10037A4B4(v12, v6, v8, isUniquelyReferenced_nonNull_native, v14, v15, v16, v17, qword_1006AC010, v25);
    qword_1006AC010 = v24;

    swift_endAccess();
  }

  v18 = sub_1004582B4();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FA2C();

  sub_100017F18();
  v19 = sub_100006718();
  v20 = sub_1000513D8(v19);

  if (!v20)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v21 = sub_1003EDC2C(a1);

  if (v21)
  {
    sub_10045722C(a1);
    v23 = sub_100017E58();
    sub_100456FA4(v23);
  }

  return result;
}

uint64_t sub_100455E14(void *a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v15 = v7;
    *v6 = 136315138;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v6 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logged manual launch needed event for session: %s");
    sub_100009B7C(v7);
    sub_100005F64();
    sub_100006868();
  }

  return sub_1004568EC(v3);
}

uint64_t sub_100455FC4(char a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100005274();
    v6 = sub_100005E84();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002741C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Logged incoming IMAV call with silenced: %s", v5, 0xCu);
    sub_100009B7C(v6);
    sub_100005F64();
    sub_100008AE8();
  }

  return sub_100456AD4(a1 & 1);
}

uint64_t sub_100456124()
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v0 = type metadata accessor for Logger();
  sub_1000075F0(v0, qword_1006BA5B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000689C(v2))
  {
    *swift_slowAlloc() = 0;
    sub_10000A154();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    sub_100008AE8();
  }

  return sub_100456BD4();
}

uint64_t sub_100456204(void *a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA5B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005274();
    v7 = sub_100005E84();
    v15 = v7;
    *v6 = 136315138;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v6 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logged manual launch attempt event for session: %s");
    sub_100009B7C(v7);
    sub_100005F64();
    sub_100006868();
  }

  return sub_1004568EC(v3);
}

void sub_1004563B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_100017014();
  a31 = v32;
  a32 = v33;
  v35 = v34;
  v37 = v36;
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v38 = type metadata accessor for Logger();
  sub_1000075F0(v38, qword_1006BA5B0);
  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    a10 = swift_slowAlloc();
    *v42 = 136315394;
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    v43 = v39;
    v44 = String.init<A>(reflecting:)();
    v46 = sub_10002741C(v44, v45, &a10);

    *(v42 + 4) = v46;
    *(v42 + 12) = 2080;
    type metadata accessor for IDSGroupSessionServerErrorCode(0);
    v47 = String.init<A>(reflecting:)();
    v49 = sub_10002741C(v47, v48, &a10);

    *(v42 + 14) = v49;
    _os_log_impl(&_mh_execute_header, v40, v41, "Logged session server termination event for session: %s reason: %s", v42, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100006868();
  }

  sub_100021AEC([v39 activity]);
  if (v50)
  {
    sub_10000FA2C();
    sub_10026D814(&unk_1006AC070, &qword_1005880D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D6A0;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x8000000100565550;
    v52 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    sub_100006718();
    *(inited + 48) = sub_100050758();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000100578FC0;
    LODWORD(a10) = v35;
    dispatch thunk of CustomStringConvertible.description.getter();
    *(inited + 72) = sub_100050758();
    v53 = Dictionary.init(dictionaryLiteral:)();
    sub_1004559AC(v53);
    sub_10000667C();

    sub_1000517AC(0xD00000000000003BLL, 0x8000000100578FE0, v52);
  }

  else
  {
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Couldn't log server termination event because of no bundleIdentifier on activitySession", v56, 2u);
      sub_100005F40();
    }
  }

  sub_1000100E0();
}

uint64_t sub_100456740(char a1)
{
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v2 = type metadata accessor for Logger();
  sub_1000075F0(v2, qword_1006BA5B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000689C(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = a1 & 1;
    sub_10000A154();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    sub_100008AE8();
  }

  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000100578F70;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v12 = Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC(v12);
  sub_10000667C();

  sub_1000517AC(0xD000000000000027, 0x8000000100578F90, inited);
}

uint64_t sub_1004568EC(void *a1)
{
  v1 = [a1 activity];
  v2 = [v1 metadata];

  if (v2)
  {
    v3 = [v2 context];

    v4 = [v3 analyticsIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10026D814(&unk_1006AC070, &qword_1005880D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D6A0;
  strcpy((inited + 32), "activity_type");
  *(inited + 46) = -4864;
  v6 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
  *(inited + 48) = sub_100050758();
  *(inited + 56) = 0x745F6E6F69746361;
  *(inited + 64) = 0xEB00000000657079;

  *(inited + 72) = sub_100050758();
  v7 = Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC(v7);
  sub_10000667C();

  sub_1000517AC(0xD00000000000002ELL, 0x8000000100578F40, v6);
}

uint64_t sub_100456AD4(char a1)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0x6465636E656C6973;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v3 = Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC(v3);
  sub_10000667C();

  sub_1000517AC(0xD00000000000002ALL, 0x8000000100578F10, inited);
}

uint64_t sub_100456BD4()
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0x796C706572;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v1 = Dictionary.init(dictionaryLiteral:)();
  sub_1004559AC(v1);
  sub_10000667C();

  sub_1000517AC(0xD00000000000002BLL, 0x8000000100578EE0, NSNumber_ptr);
}

id sub_100456CCC(int a1, void *a2, id a3)
{
  v4 = v3;
  result = [a3 status];
  if (result != 5)
  {
    result = [a3 status];
    if (result != 6)
    {
      if (qword_1006A0B10 != -1)
      {
        sub_1000085AC();
      }

      v8 = type metadata accessor for Logger();
      sub_10000AF9C(v8, qword_1006BA5B0);
      v9 = a3;
      v10 = a2;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = sub_100005E84();
        v28 = v26;
        *v13 = 136315394;
        v15 = [v9 callUUID];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_10002741C(v16, v18, &v28);

        *(v13 + 4) = v19;
        *(v13 + 12) = 2112;
        *(v13 + 14) = v10;
        *v14 = v10;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v11, v12, "Audio route update for %s: %@", v13, 0x16u);
        sub_1000099A4(v14, &unk_1006A2630, &qword_10057CB40);
        sub_100005F40();
        sub_100009B7C(v26);
        sub_100005F40();
        sub_100006868();
      }

      type metadata accessor for AnalyticsReporter();
      v21 = sub_100037034(v10);
      v23 = v22;
      v24 = OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker;
      sub_100008D34();
      v25 = *(v4 + v24);
      swift_isUniquelyReferenced_nonNull_native();
      v27 = *(v4 + v24);
      sub_1000371E0(v21, v23, v9);
      *(v4 + v24) = v27;
      return swift_endAccess();
    }
  }

  return result;
}

void sub_10045722C(void *a1)
{
  v2 = type metadata accessor for Date();
  sub_1000083C0();
  v4 = v3;
  v6 = *(v5 + 64);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  v13 = Dictionary.init(dictionaryLiteral:)();
  v14 = [a1 recordingStartedDate];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = [a1 recordingEndedDate];
    if (v16)
    {
      v17 = v16;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSince(_:)();
      sub_100017248();
      if (v19 ^ v20 | v18)
      {
        sub_100035D70();
        if (!(v19 ^ v20 | v18))
        {
          sub_100035C84();
          if (v19)
          {
            [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v21];
            v22 = sub_10002F700();
            sub_10002F798(v17, v23, 0x8000000100578E50, v22, v24, v25, v26, v27, v48, v13);
            v28 = *(v4 + 8);
            v28(v11, v2);
            v29 = sub_10000F2EC();
            (v28)(v29);
            return;
          }

          goto LABEL_16;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v30 = *(v4 + 8);
    v31 = sub_10000F2EC();
    v32(v31);
  }

  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v33 = type metadata accessor for Logger();
  sub_10000AF9C(v33, qword_1006BA5B0);
  v34 = a1;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = sub_100005274();
    v38 = sub_100005E84();
    v48 = v34;
    v49 = v38;
    *v37 = 136315138;
    sub_100006AF0(0, &qword_1006A7A60, TUCallRecordingSession_ptr);
    v39 = v34;
    v40 = String.init<A>(reflecting:)();
    v42 = sub_10002741C(v40, v41, &v49);

    *(v37 + 4) = v42;
    sub_10000A154();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_100009B7C(v38);
    sub_100006868();
    sub_100008AE8();
  }
}

uint64_t sub_10045755C(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t sub_100457574(uint64_t a1)
{
  sub_1002A21FC(a1, v13);
  if (v14)
  {
    if (swift_dynamicCast())
    {
      sub_10000BC6C();
      v2 = v11 == 0xD000000000000010 && v1 == v12;
      if (v2 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 2;
      }

      sub_10000BC6C();
      v5 = v11 == 0xD000000000000011 && v4 == v12;
      if (v5 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 3;
      }

      sub_10000BC6C();
      v7 = v11 == 0xD000000000000015 && v6 == v12;
      if (v7 || (sub_100005ED0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        return 1;
      }

      sub_10000BC6C();
      if (v11 == 0xD000000000000010 && v8 == v12)
      {

        return 4;
      }

      sub_100005ED0();
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        return 4;
      }
    }
  }

  else
  {
    sub_1000099A4(v13, &unk_1006A2D10, &unk_10057D940);
  }

  return 0;
}

id sub_100457708()
{
  *&v0[OBJC_IVAR___CSDAnalyticsReporter_callToStartTransportType] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___CSDAnalyticsReporter_callToAudioRoutesTracker] = _swiftEmptyDictionarySingleton;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100457780()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100457800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = __CocoaDictionary.count.getter();
  if (!__OFADD__(v8, 1))
  {
    *v3 = sub_100457898(v7, v8 + 1);
LABEL_7:
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10037A4DC(a1, a2);
    *v3 = v9;
    return;
  }

  __break(1u);
}

Swift::Int sub_100457898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10026D814(&unk_1006AC058, &qword_1005880B8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
      swift_dynamicCast();
      sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_100457FF0(v4 + 1, 1);
      }

      v2 = v17;
      result = NSObject._rawHashValue(seed:)(*(v17 + 40));
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100457AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_100017014();
  sub_1000069B4(v16);
  sub_10026D814(&qword_1006A2E98, &unk_10057DEF0);
  v17 = sub_10001E450();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v17;
    sub_1000100E0();
    return;
  }

  v18 = 0;
  v19 = *(v13 + 64);
  v20 = *(v13 + 32);
  sub_1000153A8();
  sub_10003EACC();
  if (!v14)
  {
LABEL_4:
    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      ++v22;
      if (*(v13 + 64 + 8 * v18))
      {
        sub_100007C8C();
        v14 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v35 = *(v13 + 32);
      sub_10000BAFC();
      if (v37 != v38)
      {
        sub_100035E98(v36);
      }

      else
      {
        sub_10000D78C(v36);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_10003EBC0();
LABEL_9:
    sub_10003DE64(v21);
    if ((v25 & 1) == 0)
    {
    }

    v26 = *(v17 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v27 = *(v17 + 32);
    sub_10000EAC4();
    v29 = *(v15 + 8 * v28);
    sub_10004A064();
    if (v30)
    {
      break;
    }

    sub_10000FE84();
LABEL_21:
    sub_100007DC0();
    sub_1000160E0(v34);
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (*(v15 + 8 * v31) != -1)
    {
      sub_10000A950();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_100457C68()
{
  sub_100017014();
  v4 = v0;
  v5 = *v0;
  if (*(*v0 + 24) > v6)
  {
    v7 = *(*v0 + 24);
  }

  v47 = v1;
  sub_10026D814(v2, v3);
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    sub_1000100E0();
    return;
  }

  v45 = v4;
  v46 = v5;
  v9 = 0;
  v11 = v5 + 64;
  v10 = *(v5 + 64);
  v12 = *(v5 + 32);
  sub_1000153A8();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = v8 + 64;
  if ((v14 & v13) == 0)
  {
LABEL_6:
    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v17)
      {
        break;
      }

      ++v20;
      if (*(v11 + 8 * v9))
      {
        sub_100007C8C();
        v15 = v22 & v21;
        goto LABEL_11;
      }
    }

    if ((v47 & 1) == 0)
    {

      v4 = v45;
      goto LABEL_32;
    }

    v41 = *(v5 + 32);
    sub_10000BAFC();
    v4 = v45;
    if (v43 != v44)
    {
      sub_100035E98(v42);
    }

    else
    {
      sub_10000D78C(v42);
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v23 = v19 | (v9 << 6);
    v24 = (*(v5 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(v5 + 56) + 8 * v23);
    if ((v47 & 1) == 0)
    {
      v28 = v24[1];
    }

    v29 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v30 = *(v8 + 32);
    sub_10000EAC4();
    v32 = *(v18 + 8 * v31);
    sub_10004A064();
    if (v33)
    {
      break;
    }

    sub_10000FE84();
LABEL_23:
    sub_100007DC0();
    *(v18 + v37) |= v38;
    v40 = (*(v8 + 48) + 16 * v39);
    *v40 = v25;
    v40[1] = v26;
    *(*(v8 + 56) + 8 * v39) = v27;
    ++*(v8 + 16);
    v5 = v46;
    if (!v15)
    {
      goto LABEL_6;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v33)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    if (*(v18 + 8 * v34) != -1)
    {
      sub_10000A950();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_100457E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_100017014();
  sub_1000069B4(v16);
  sub_10026D814(&qword_1006AC098, &unk_1005880E0);
  v17 = sub_10001E450();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v17;
    sub_1000100E0();
    return;
  }

  v18 = 0;
  v19 = *(v13 + 64);
  v20 = *(v13 + 32);
  sub_1000153A8();
  sub_10003EACC();
  if (!v14)
  {
LABEL_4:
    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      ++v22;
      if (*(v13 + 64 + 8 * v18))
      {
        sub_100007C8C();
        v14 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v36 = *(v13 + 32);
      sub_10000BAFC();
      if (v38 != v39)
      {
        sub_100035E98(v37);
      }

      else
      {
        sub_10000D78C(v37);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_10003EBC0();
LABEL_9:
    sub_10003DE64(v21);
    if ((v25 & 1) == 0)
    {

      v26 = v13;
    }

    v27 = *(v17 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    v28 = *(v17 + 32);
    sub_10000EAC4();
    v30 = *(v15 + 8 * v29);
    sub_10004A064();
    if (v31)
    {
      break;
    }

    sub_10000FE84();
LABEL_21:
    sub_100007DC0();
    sub_1000160E0(v35);
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  sub_10000E7C0();
  while (1)
  {
    sub_100007A0C();
    if (v31)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v15 + 8 * v32) != -1)
    {
      sub_10000A950();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_100457FF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10026D814(&unk_1006AC058, &qword_1005880B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {

LABEL_34:
    *v3 = v8;
    return result;
  }

  v33 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        sub_100396044(0, (v32 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(*(v5 + 48) + 8 * v19);
    v21 = *(*(v5 + 56) + 8 * v19);
    if ((a2 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    result = NSObject._rawHashValue(seed:)(*(v8 + 40));
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v8 + 48) + 8 * v27) = v20;
    *(*(v8 + 56) + 8 * v27) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_100458254(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_100461CC4() & 1;
}

id sub_1004582B4()
{
  v3 = *(v1 + 1176);

  return [v0 v3];
}

void sub_1004582CC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100458338()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(REMStore) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1004583A4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for UUID();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10045849C, 0, 0);
}

uint64_t sub_10045849C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v30 = v0[11];
    v29 = v0[12];

    sub_100009EF4();
LABEL_12:

    return v31();
  }

  v70 = v0 + 2;
  v3 = v0[10];
  v4 = objc_opt_self();
  v6 = *(v3 + 16);
  v3 += 16;
  v5 = v6;
  v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v71 = *(v3 + 56);
  v73 = v4;
  v8 = (v3 - 8);
  do
  {
    v9 = v76[11];
    v10 = v76[12];
    v11 = v76[9];
    v5(v10, v7, v11);
    v5(v9, v10, v11);
    v12 = [v73 cdEntityName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = objc_allocWithZone(REMObjectID);
    sub_1004592E0(v9);
    (*v8)(v10, v11);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 += v71;
    --v2;
  }

  while (v2);
  v14 = v76[8];
  v15 = sub_100458338();
  v16 = [objc_allocWithZone(REMSaveRequest) initWithStore:v15];
  v76[13] = v16;

  v17 = *(v14 + 16);
  sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
  v18 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v76[6] = 0;
  v20 = [v18 fetchRemindersWithObjectIDs:isa error:v76 + 6];

  v21 = v76[6];
  if (!v20)
  {
    v32 = v21;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v34 = v76[11];
    v33 = v76[12];

    sub_100009EF4();
    goto LABEL_12;
  }

  v22 = v76[8];
  sub_100006AF0(0, &qword_1006AC1A0, REMReminder_ptr);
  sub_10045939C();
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v21;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = __CocoaDictionary.count.getter();
    }

    else
    {
      v28 = *(v23 + 16);
    }

    *(v27 + 4) = v28;

    _os_log_impl(&_mh_execute_header, v25, v26, "Found %ld reminders", v27, 0xCu);
  }

  else
  {
  }

  v37 = sub_10045964C(v36);
  v75 = v16;
  if (v37)
  {
    v38 = v37;
    specialized ContiguousArray.reserveCapacity(_:)();
    v77 = sub_1004595EC(v23);
    v78 = v39;
    v79 = v40 & 1;
    if (v38 < 0)
    {
      goto LABEL_45;
    }

    v41 = 0;
    v72 = v23 & 0xC000000000000001;
    v74 = v23;
    do
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_44;
      }

      v43 = sub_100008898();
      sub_100459738(v43, v44, v45, v74);
      v47 = v46;
      v48 = [v16 updateReminder:v46];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v49 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v72)
      {
        if (!v79)
        {
          goto LABEL_46;
        }

        v16 = v75;
        if (__CocoaDictionary.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_10026D814(&qword_1006AC1B0, &unk_100588150);
        v62 = Dictionary.Index._asCocoa.modify();
        __CocoaDictionary.formIndex(after:isUnique:)();
        v62(v70, 0);
      }

      else
      {
        v50 = sub_100008898();
        sub_100459404(v50, v51, v52, v74);
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v59 = sub_100008898();
        sub_100010000(v59, v60, v61);
        v77 = v54;
        v78 = v56;
        v79 = v58 & 1;
        v16 = v75;
      }

      ++v41;
    }

    while (v42 != v38);
    swift_bridgeObjectRelease_n();
    sub_100010000(v77, v78, v79);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v63 = sub_10000B6F4(_swiftEmptyArrayStorage);
  for (i = 0; v63 != i; ++i)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v65 = _swiftEmptyArrayStorage[i + 4];
    }

    v66 = v65;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    [v65 setCompleted:1];
  }

  v67 = swift_task_alloc();
  v76[14] = v67;
  *(v67 + 16) = v75;
  v68 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v69 = swift_task_alloc();
  v76[15] = v69;
  *v69 = v76;
  v69[1] = sub_100458C0C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v69, 0, 0, 0xD00000000000001ELL, 0x80000001005790C0, sub_1004598D0, v67, &type metadata for () + 8);
}

uint64_t sub_100458C0C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100458DF8;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100458D5C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100458D5C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  sub_100009EF4();

  return v3();
}

uint64_t sub_100458DF8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  sub_100009EF4();

  return v5();
}

void sub_100458EA4(uint64_t a1, void *a2)
{
  v4 = sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = aBlock - v8;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  aBlock[4] = sub_1004598D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004582CC;
  aBlock[3] = &unk_1006310F0;
  v13 = _Block_copy(aBlock);

  [a2 saveWithQueue:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_100459080(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10026D814(&qword_1006A28C0, &unk_10057D4B0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1004590F4()
{
  v1 = OBJC_IVAR____TtC13callservicesd13ReminderStore_logger;
  v2 = type metadata accessor for Logger();
  sub_1000080D0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for ReminderStore()
{
  result = qword_1006AC0F0;
  if (!qword_1006AC0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004591E0()
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

uint64_t sub_10045927C()
{
  *(v0 + 16) = 0;
  Logger.init(subsystem:category:)();
  return v0;
}

id sub_1004592E0(uint64_t a1)
{
  v2 = v1;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = String._bridgeToObjectiveC()();

  v6 = [v2 initWithUUID:isa entityName:v5];

  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

unint64_t sub_10045939C()
{
  result = qword_1006AC1A8;
  if (!qword_1006AC1A8)
  {
    sub_100006AF0(255, &unk_1006A3C00, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AC1A8);
  }

  return result;
}

void sub_100459404(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
      swift_dynamicCast();
      sub_1002DA91C();
      v6 = v5;

      if (v6)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (*(a4 + 36) == a2)
  {
    _HashTable.occupiedBucket(after:)();
    v7 = *(a4 + 36);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10045956C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = _HashTable.occupiedBucket(after:)();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004595EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.startIndex.getter();
  }

  v3 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10045964C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaDictionary.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

uint64_t sub_10045966C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1004596E8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_100459738(uint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaDictionary.value(at:)();
      sub_100006AF0(0, &qword_1006AC1A0, REMReminder_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  __CocoaDictionary.Index.key.getter();
  sub_100006AF0(0, &unk_1006A3C00, REMObjectID_ptr);
  swift_dynamicCast();
  a2 = v12;
  sub_1002DA91C();
  a1 = v7;
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a4 + 56) + 8 * a1);

  v11 = v10;
}

uint64_t sub_1004598D8(uint64_t a1)
{
  v2 = *(*(sub_10026D814(&qword_1006A28C0, &unk_10057D4B0) - 8) + 80);

  return sub_100459080(a1);
}

uint64_t sub_100459954()
{
  sub_10045AB38();
  result = NSString.init(stringLiteral:)();
  qword_1006BAA40 = result;
  return result;
}

uint64_t sub_1004599E0()
{
  sub_10045AB38();
  result = NSString.init(stringLiteral:)();
  qword_1006BAA48 = result;
  return result;
}

id sub_100459A24(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_100459B04()
{
  v1 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  v2 = *(v0 + OBJC_IVAR___CSDKeychainPasswordItem_account + 8);

  return v1;
}

uint64_t sub_100459BB0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDKeychainPasswordItem_account);
  v4 = *(v2 + OBJC_IVAR___CSDKeychainPasswordItem_account + 8);
  *v3 = a1;
  v3[1] = a2;
}

id sub_100459BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_service];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_account];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR___CSDKeychainPasswordItem_accessGroup];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

char *sub_100459CEC()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100459DF8();
  if (!v0)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    if (v11)
    {
      v5 = v10;
    }

    else
    {
      sub_10045AAE4();
      sub_100008248();
      *v13 = 1;
      *(v13 + 4) = 1;
      swift_willThrow();
    }

    sub_100049B14(v8, v9);
  }

  return v5;
}

uint64_t sub_100459DF8()
{
  v0 = sub_10045A544();
  v8 = &type metadata for Bool;
  LOBYTE(v7) = 1;
  sub_10003EBF0(&v7, result);
  v1 = kSecReturnData;
  swift_isUniquelyReferenced_nonNull_native();
  sub_10037A5D8(result, v1);

  result[0] = 0;
  type metadata accessor for CFString(0);
  sub_10045AA8C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SecItemCopyMatching(isa, result);

  if (result[0] && (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v0 = v7;
    v3 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10045AAE4();
    sub_100008248();
    *v4 = 0;
    *(v4 + 4) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_10045A090()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  result = (*(v1 + 8))(v5, v0);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_10045A1B4(v6, v8);
    return sub_100290B6C(v6, v8);
  }

  return result;
}

void sub_10045A1B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10045A544();
  v18 = &type metadata for Data;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  sub_10003EBF0(&v17, v16);
  v5 = kSecValueData;
  sub_100290AC4(a1, a2);
  swift_isUniquelyReferenced_nonNull_native();
  v19 = v4;
  sub_10037A5D8(v16, v5);

  type metadata accessor for CFString(0);
  sub_10045AA8C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = SecItemAdd(isa, 0);

  if (v7 == -25299)
  {
    sub_10045A544();

    sub_10026D814(&qword_1006AC200, &qword_100588178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v5;
    *(inited + 40) = a1;
    *(inited + 48) = a2;
    v9 = v5;
    sub_100290AC4(a1, a2);
    Dictionary.init(dictionaryLiteral:)();
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_10045A544();
    v11 = Dictionary._bridgeToObjectiveC()().super.isa;

    v12 = SecItemUpdate(v11, v10.super.isa);

    if (v12 == noErr.getter())
    {
      v13 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

LABEL_6:
      return;
    }

    sub_10045AAE4();
    sub_100008248();
    *v14 = -25299;
    *(v14 + 4) = 0;
    swift_willThrow();
  }

  else
  {
    if (v7 == noErr.getter())
    {
      v13 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
      goto LABEL_6;
    }

    sub_10045AAE4();
    sub_100008248();
    *v15 = v7;
    *(v15 + 4) = 0;
    swift_willThrow();
  }
}