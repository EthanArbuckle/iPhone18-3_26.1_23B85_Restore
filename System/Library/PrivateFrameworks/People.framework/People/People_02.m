uint64_t sub_10002F62C()
{
  v17 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[7];
  FamilyATBSendIMessage.isCallerAskToProcess.getter();
  AskToMetrics.init(isAskToProcess:)();
  static PeopleLogger.daemon.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  v8 = v0[16];
  v9 = v0[17];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002580C(0xD00000000000001FLL, 0x8000000100050E30, &v16);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v10, 0xCu);
    sub_100003938(v11);
  }

  v12 = *(v9 + 8);
  v12(v7, v8);
  v0[28] = v12;
  sub_100010734(0, &qword_100063638, FAFamilyCircle_ptr);
  v13 = async function pointer to static FAFamilyCircle.fetch()[1];
  v14 = swift_task_alloc();
  v0[29] = v14;
  *v14 = v0;
  v14[1] = sub_10002F800;

  return static FAFamilyCircle.fetch()();
}

uint64_t sub_10002F800(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_100030ABC;
  }

  else
  {
    v5 = sub_10002F914;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002F914()
{
  v1 = v0[30];
  if (v1)
  {
    v2 = v0[30];
    v3 = FAFamilyCircle.requestingFamilyMember.getter();
    v0[32] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = FAFamilyCircle.approvers.getter();
      v0[33] = v5;
      if (v5)
      {
        v6 = v5;
        v7 = v0[15];
        v8 = v0[11];
        v9 = v4;

        ResolvedFamily.init(requestingFamilyMember:actionFamilyMember:approvers:)();
        type metadata accessor for MessageSendRules();
        v0[34] = static MessageSendRules.sharedInstance.getter();
        v10 = type metadata accessor for DiscoveredHandles();
        (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
        v11 = *(&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + 1);
        v63 = (&async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:) + async function pointer to dispatch thunk of MessageSendRules.willSendAskToBuyRequest(from:to:client:askToMetrics:discoveredHandles:));
        v12 = swift_task_alloc();
        v0[35] = v12;
        *v12 = v0;
        v12[1] = sub_10002FE3C;
        v13 = v0[27];
        v14 = v0[11];

        return v63(v9, v6, 1, v13, v14);
      }

      v39 = v0[20];
      static PeopleLogger.daemon.getter();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = os_log_type_enabled(v40, v41);
      v44 = v0[27];
      v43 = v0[28];
      v45 = v0[26];
      v61 = v43;
      v65 = v0[25];
      v46 = v0[20];
      v48 = v0[16];
      v47 = v0[17];
      if (v42)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Failed to get approvers for logged in user", v49, 2u);
      }

      v61(v46, v48);
      (*(v45 + 8))(v44, v65);
    }

    else
    {
      v28 = v0[19];
      static PeopleLogger.daemon.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v33 = v0[27];
      v32 = v0[28];
      v34 = v0[26];
      v64 = v0[25];
      v35 = v0[19];
      v37 = v0[16];
      v36 = v0[17];
      if (v31)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Failed to get requesting Family member for logged in user", v38, 2u);
      }

      v32(v35, v37);
      (*(v34 + 8))(v33, v64);
    }
  }

  else
  {
    v16 = v0[18];
    static PeopleLogger.daemon.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[27];
    v21 = v0[28];
    v22 = v0[25];
    v23 = v0[26];
    v24 = v0[17];
    v25 = v0[18];
    v26 = v0[16];
    if (v19)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch FamilyCircle", v27, 2u);
    }

    v21(v25, v26);
    (*(v23 + 8))(v20, v22);
  }

  v50 = v0[27];
  v51 = v0[23];
  v52 = v0[24];
  v54 = v0[21];
  v53 = v0[22];
  v56 = v0[19];
  v55 = v0[20];
  v57 = v0[18];
  v59 = v0[14];
  v58 = v0[15];
  v62 = v0[11];
  v66 = v0[10];

  v60 = v0[1];

  return v60(0);
}

uint64_t sub_10002FE3C(char a1)
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 328) = a1;

  sub_100030BD4(v5);

  return _swift_task_switch(sub_10002FF9C, 0, 0);
}

uint64_t sub_10002FF9C()
{
  if (*(v0 + 328) == 1)
  {
    v2 = *(v0 + 112);
    v1 = *(v0 + 120);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v52 = FamilyATBSendIMessage.requestID.getter();
    v10 = v9;
    (*(v5 + 104))(v6, enum case for MessageDetails.EventSource.askToBuy(_:), v8);
    (*(v4 + 16))(v2, v1, v3);
    v11 = type metadata accessor for MessageConduit();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = MessageConduit.init()();
    *(v0 + 40) = v11;
    *(v0 + 48) = &protocol witness table for MessageConduit;
    *(v0 + 16) = v14;
    v15 = type metadata accessor for RequestMessageSender();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = swift_task_alloc();
    *(v0 + 288) = v18;
    *v18 = v0;
    v18[1] = sub_1000302FC;
    v19 = *(v0 + 112);
    v20 = *(v0 + 80);

    return sub_1000227AC(v52, v10, v20, v19, v0 + 16);
  }

  else
  {
    v22 = *(v0 + 168);
    static PeopleLogger.daemon.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 256);
    v27 = *(v0 + 240);
    v29 = *(v0 + 216);
    v28 = *(v0 + 224);
    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v47 = v26;
    v48 = *(v0 + 136);
    v49 = *(v0 + 128);
    v32 = *(v0 + 120);
    v33 = *(v0 + 96);
    v34 = *(v0 + 104);
    v50 = v33;
    v53 = *(v0 + 168);
    if (v25)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "iMessage config/device config prevents ATB iMessage send", v35, 2u);

      v27 = v47;
    }

    else
    {

      v23 = v47;
    }

    v28(v53, v49);
    (*(v34 + 8))(v32, v50);
    (*(v30 + 8))(v29, v31);
    v36 = *(v0 + 216);
    v37 = *(v0 + 184);
    v38 = *(v0 + 192);
    v40 = *(v0 + 168);
    v39 = *(v0 + 176);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v43 = *(v0 + 144);
    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    v51 = *(v0 + 88);
    v54 = *(v0 + 80);

    v46 = *(v0 + 8);

    return v46(0);
  }
}

uint64_t sub_1000302FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 288);
  v7 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v5 = sub_100030410;
  }

  else
  {
    v5 = sub_100030680;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100030410()
{
  v1 = v0[38];
  v2 = v0[30];
  v29 = v0[27];
  v3 = v0[26];
  v26 = v0[28];
  v27 = v0[25];
  v4 = v0[23];
  v5 = v0[17];
  v22 = v0[16];
  v23 = v0[32];
  v6 = v0[13];
  v24 = v0[12];
  v25 = v0[15];
  v7 = v0[7];
  static PeopleLogger.daemon.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(34);

  type metadata accessor for FamilyATBSendIMessage();
  sub_100030C3C(&qword_100063640, &type metadata accessor for FamilyATBSendIMessage);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 4203808;
  v9._object = 0xE300000000000000;
  String.append(_:)(v9);
  Logger.ifError(_:message:)();

  v26(v4, v22);
  (*(v6 + 8))(v25, v24);
  (*(v3 + 8))(v29, v27);
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  v16 = v0[19];
  v15 = v0[20];
  v17 = v0[18];
  v19 = v0[14];
  v18 = v0[15];
  v28 = v0[11];
  v30 = v0[10];

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_100030680()
{
  v1 = *(v0 + 296);

  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_10003071C;
  v3 = *(v0 + 296);

  return sub_100023238();
}

uint64_t sub_10003071C(uint64_t a1)
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 320) = a1;

  return _swift_task_switch(sub_10003083C, 0, 0);
}

uint64_t sub_10003083C()
{
  v1 = v0[40];
  v2 = v0[28];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[16];
  v6 = v0[17];
  static PeopleLogger.daemon.getter();
  Logger.ifError(_:message:)();
  v2(v3, v5);
  static PeopleLogger.daemon.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[40];
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v9 == 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "iMessage ATB iMessage send result %{BOOL}d", v10, 8u);
  }

  v11 = v0[40];
  v12 = v0[37];
  v13 = v0[32];
  v14 = v0[30];
  v35 = v0[27];
  v15 = v0[26];
  v33 = v0[28];
  v34 = v0[25];
  v16 = v0[22];
  v17 = v0[16];
  v32 = v0[15];
  v19 = v0[12];
  v18 = v0[13];

  v37 = v11 == 0;
  v33(v16, v17);
  (*(v18 + 8))(v32, v19);
  (*(v15 + 8))(v35, v34);
  v20 = v0[27];
  v22 = v0[23];
  v21 = v0[24];
  v24 = v0[21];
  v23 = v0[22];
  v26 = v0[19];
  v25 = v0[20];
  v27 = v0[18];
  v28 = v0[14];
  v29 = v0[15];
  v36 = v0[11];
  v38 = v0[10];

  v30 = v0[1];

  return v30(v37);
}

uint64_t sub_100030ABC()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v12 = v0[11];
  v13 = v0[10];
  (*(v0[26] + 8))(v0[27], v0[25]);

  v9 = v0[1];
  v10 = v0[31];

  return v9(0);
}

uint64_t sub_100030BD4(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063630, &qword_10004E6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030C3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100030CA0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 152) = a1;
  *(v2 + 160) = v3;
  return _swift_task_switch(sub_100030CC4, 0, 0);
}

uint64_t sub_100030CC4()
{
  v1 = v0[19];
  v2 = v0[20];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100030E00;
  v4 = swift_continuation_init();
  v0[17] = sub_100005E30(&qword_100063860, &unk_10004E8D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100030F0C;
  v0[13] = &unk_10005E9A0;
  v0[14] = v4;
  [v2 grabUnreadFor:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100030E00()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_100030F0C(uint64_t a1)
{
  v1 = *sub_100005E78((a1 + 32), *(a1 + 56));
  sub_10003558C();
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_100030F80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_100005E30(&qword_100063840, &qword_10004E888);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100031080, 0, 0);
}

uint64_t sub_100031080()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withTimeout<A>(after:_:)[1];

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100031180;
  v7 = v0[8];
  v6 = v0[9];

  return withTimeout<A>(after:_:)(v6, 1000000000000000000, 0, &unk_10004E8C8, v3, v7);
}

uint64_t sub_100031180()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_100031338;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_10003129C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003129C()
{
  v1 = v0[9];
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  sub_1000354F0(v1 + *(v0[8] + 64), v0[2]);
  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];

  return v7(v3, v2, v4);
}

uint64_t sub_100031338()
{
  v1 = v0[10];
  v2 = v0[7];

  static PeopleLogger.daemon.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "MessageFetcher getLastReceivedMessage timed out", v5, 2u);
  }

  v6 = v0[12];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];
  v10 = v0[2];

  (*(v8 + 8))(v7, v9);

  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v0[9];
  v13 = v0[7];

  v14 = v0[1];

  return v14(0, 0xE000000000000000, 0);
}

uint64_t sub_1000314B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100031574, 0, 0);
}

uint64_t sub_100031574()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  sub_100005E78(v1 + 2, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1000316A4;
  v7 = v0[4];

  return v9(v7, v2, v3);
}

uint64_t sub_1000316A4(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_1000317A4, 0, 0);
}

unint64_t sub_1000317A4()
{
  v49 = v0;
  v1 = v0[9];
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v38 = v0[9];
    }

    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      v4 = __OFSUB__(v3, 1);
      result = v3 - 1;
      if (v4)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v0[9] + 8 * result + 32);
LABEL_8:
          v7 = v0[7];
          static PeopleLogger.daemon.getter();
          swift_bridgeObjectRetain_n();
          v8 = v6;
          v9 = Logger.logObject.getter();
          v10 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v48 = v47;
            *v11 = 136315394;
            v12 = [v8 text];
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v14;

            v16 = sub_10002580C(v13, v15, &v48);

            *(v11 + 4) = v16;
            *(v11 + 12) = 2048;
            if (v1 >> 62)
            {
              v22 = v0[9];
              if (v1 < 0)
              {
                v23 = v0[9];
              }

              v17 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v24 = v0[9];
            v26 = v0[6];
            v25 = v0[7];
            v46 = v0[5];

            *(v11 + 14) = v17;

            _os_log_impl(&_mh_execute_header, v9, v10, "lastReceivedMessage %s out of %ld", v11, 0x16u);
            sub_100003938(v47);

            (*(v26 + 8))(v25, v46);
            v2 = v1 >> 62;
          }

          else
          {
            v18 = v0[9];
            v20 = v0[6];
            v19 = v0[7];
            v21 = v0[5];
            swift_bridgeObjectRelease_n();

            (*(v20 + 8))(v19, v21);
          }

          v27 = v0[2];
          v28 = [v8 text];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v29 = String.trim()();

          *v27 = v29;
          if (v2)
          {
            v31 = v0[9];
            if (v1 < 0)
            {
              v32 = v0[9];
            }

            v30 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v30 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v33 = v0[9];
          v34 = v0[2];

          v35 = (v34 + *(sub_100005E30(&qword_100063840, &qword_10004E888) + 64));
          *(v34 + 16) = v30;
          v36 = [v8 date];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v37 = 0;
          goto LABEL_26;
        }

        __break(1u);
        return result;
      }

      v44 = v0[9];
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v45 = v0[9];
      goto LABEL_8;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v39 = v0[9];
  v40 = v0[2];

  v35 = v40 + *(sub_100005E30(&qword_100063840, &qword_10004E888) + 64);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v40[2] = 0;
  v37 = 1;
LABEL_26:
  v41 = v0[7];
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v35, v37, 1, v42);

  v43 = v0[1];

  return v43();
}

uint64_t sub_100031BC0(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  *(v1 + 16) = v3;
  v4 = *(v3 - 8);
  *(v1 + 24) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  v6 = sub_100005E30(&qword_100063840, &qword_10004E888);
  *(v1 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  v8 = swift_task_alloc();
  *(v1 + 56) = v8;
  v9 = *(v6 + 64);
  *(v1 + 96) = v9;
  v10 = swift_task_alloc();
  *(v1 + 64) = v10;
  *v10 = v1;
  v10[1] = sub_100031D1C;

  return sub_100030F80(v8 + v9, a1);
}

uint64_t sub_100031D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  v7 = *v3;
  v4[9] = a1;
  v4[10] = a2;
  v4[11] = a3;

  return _swift_task_switch(sub_100031E20, 0, 0);
}

uint64_t sub_100031E20()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 56);
  *v3 = *(v0 + 72);
  *(v3 + 16) = v1;
  v4 = type metadata accessor for Date();
  if ((*(*(v4 - 8) + 48))(v3 + v2, 1, v4) == 1)
  {
    if (*(v0 + 88) >= 1)
    {
      v5 = *(v0 + 32);
      static PeopleLogger.common.getter();
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = *(v0 + 24);
      v9 = *(v0 + 32);
      v11 = *(v0 + 16);
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "No time in last unread message!", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
    }

    v13 = 0;
  }

  else
  {
    v14 = *(v0 + 48);
    v15 = *(v0 + 40);
    sub_100035130(*(v0 + 56), v14);
    v16 = *(v14 + 8);

    v13 = *(v14 + 16);
    sub_100007DB0(v14 + *(v15 + 64), &qword_100062738, &qword_10004D970);
  }

  v17 = *(v0 + 48);
  v18 = *(v0 + 32);
  sub_100007DB0(*(v0 + 56), &qword_100063840, &qword_10004E888);

  v19 = *(v0 + 8);

  return v19(v13);
}

uint64_t sub_100032028()
{
  if (*(v0 + 144))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(53);
  v3._countAndFlagsBits = 0xD00000000000001FLL;
  v3._object = 0x8000000100050F80;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x8000000100050FA0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_10003217C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.daemon.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Got BMReadMessageEvent: %@", v12, 0xCu);
    sub_100007DB0(v13, &qword_100062758, &unk_10004E8A0);
  }

  (*(v5 + 8))(v8, v4);
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10004D790;
  v16 = [v9 idsHandle];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *(v15 + 32) = v17;
  *(v15 + 40) = v19;
  v20 = [v9 markedUnread];
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  *(v21 + 24) = v2;
  *(v21 + 32) = v20;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_1000323F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 216) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  v6 = *(v5 - 8);
  *(v4 + 72) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v8 = type metadata accessor for StatusType();
  *(v4 + 88) = v8;
  v9 = *(v8 - 8);
  *(v4 + 96) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  v11 = *(*(sub_100005E30(&qword_100062A80, &qword_10004ED60) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v12 = *(*(sub_100005E30(&qword_100062738, &qword_10004D970) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100032584, 0, 0);
}

uint64_t sub_100032584()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[16] = [v3 predicateForContactsMatchingHandleStrings:isa];

  v5 = v2[12];
  sub_100005E78(v2 + 8, v2[11]);
  v6 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v0[17] = 0;
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v8; i = v0)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      v12 = v11;
      v0 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v11 identifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100022130(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_100022130((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      ++v9;
      if (v0 == v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_19:
  i[18] = v10;
  v20 = *(i + 216);

  if (v20)
  {
    v21 = i[7];
    v22 = v21[7];
    sub_100005E78(v21 + 3, v21[6]);
    dispatch thunk of LaunchRecordReaderProtocol.reload()();
    type metadata accessor for LaunchRecorderWriter();
    i[19] = static LaunchRecorderWriter.sharedInstance.getter();
    sub_100035368(&qword_100063858, 255, &type metadata accessor for LaunchRecorderWriter);
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    i[20] = v24;
    i[21] = v23;

    return _swift_task_switch(sub_100032C8C, v24, v23);
  }

  else
  {
    if (*(i[18] + 16))
    {
      v25 = i[7];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10001DB48(i[7], i[18], Strong);
        swift_unknownObjectRelease();
      }

      v27 = i[18];
      v28 = i[14];

      v29 = type metadata accessor for TaskPriority();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      sub_100014EE4(0, 0, v28, &unk_10004E8B8, v30);
    }

    else
    {
    }

    v31 = i[15];
    v32 = i[16];
    v34 = i[13];
    v33 = i[14];
    v35 = i[11];
    v36 = i[12];
    v37 = i[10];
    type metadata accessor for PeopleAnalytics();
    (*(v36 + 104))(v34, enum case for StatusType.readMessage(_:), v35);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();

    (*(v36 + 8))(v34, v35);

    v38 = i[1];

    return v38();
  }
}

uint64_t sub_100032C8C()
{
  v1 = *(v0 + 152);
  dispatch thunk of LaunchRecorderWriter.reload()();

  return _swift_task_switch(sub_100032CF4, 0, 0);
}

uint64_t sub_100032CF4()
{
  v1 = v0[18];
  v2 = v0[7];
  v3 = v2[7];
  sub_100005E78(v2 + 3, v2[6]);
  v0[22] = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  v4 = *(v1 + 16);
  v0[23] = v4;
  if (!v4)
  {
LABEL_8:

    v15 = v0[20];
    v16 = v0[21];
    v17 = sub_100032F38;
    goto LABEL_10;
  }

  v5 = 0;
  while (1)
  {
    v0[24] = v5;
    v8 = v0[22];
    v9 = v0[18] + 16 * v5;
    v10 = *(v9 + 32);
    v0[25] = v10;
    v11 = *(v9 + 40);
    v0[26] = v11;
    if (*(v8 + 16))
    {
      break;
    }

LABEL_3:
    v6 = v0[15];
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_100007DB0(v6, &qword_100062738, &qword_10004D970);
    v5 = v0[24] + 1;
    if (v5 == v0[23])
    {
      v14 = v0[22];
      goto LABEL_8;
    }
  }

  v12 = sub_100005EBC(v10, v11);
  if ((v13 & 1) == 0)
  {

    goto LABEL_3;
  }

  v18 = v0[15];
  v19 = *(v0[22] + 56);
  v20 = v12;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v18, v19 + *(v22 + 72) * v20, v21);
  (*(v22 + 56))(v18, 0, 1, v21);
  sub_100007DB0(v18, &qword_100062738, &qword_10004D970);
  v15 = v0[20];
  v16 = v0[21];
  v17 = sub_100032FC8;
LABEL_10:

  return _swift_task_switch(v17, v15, v16);
}

uint64_t sub_100032F38()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  dispatch thunk of LaunchRecorderWriter.save()();
  if (v2)
  {

    v3 = sub_1000355D8;
  }

  else
  {
    v3 = sub_100033254;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100032FC8()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[19];
  dispatch thunk of LaunchRecorderWriter.remove(contactId:)();

  return _swift_task_switch(sub_100033040, 0, 0);
}

uint64_t sub_100033040()
{
  v1 = v0[24] + 1;
  if (v1 == v0[23])
  {
LABEL_2:
    v2 = v0[22];

    v3 = v0[20];
    v4 = v0[21];
    v5 = sub_100032F38;
    goto LABEL_3;
  }

  while (1)
  {
    v0[24] = v1;
    v8 = v0[22];
    v9 = v0[18] + 16 * v1;
    v10 = *(v9 + 32);
    v0[25] = v10;
    v11 = *(v9 + 40);
    v0[26] = v11;
    if (*(v8 + 16))
    {
      break;
    }

LABEL_7:
    v6 = v0[15];
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_100007DB0(v6, &qword_100062738, &qword_10004D970);
    v1 = v0[24] + 1;
    if (v1 == v0[23])
    {
      goto LABEL_2;
    }
  }

  v12 = sub_100005EBC(v10, v11);
  if ((v13 & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = v0[15];
  v15 = *(v0[22] + 56);
  v16 = v12;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v14, v15 + *(v18 + 72) * v16, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  sub_100007DB0(v14, &qword_100062738, &qword_10004D970);
  v3 = v0[20];
  v4 = v0[21];
  v5 = sub_100032FC8;
LABEL_3:

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100033254()
{
  v1 = v0[19];

  if (*(v0[18] + 16))
  {
    v2 = v0[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10001DB48(v0[7], v0[18], Strong);
      swift_unknownObjectRelease();
    }

    v4 = v0[18];
    v5 = v0[14];

    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_100014EE4(0, 0, v5, &unk_10004E8B8, v7);
  }

  else
  {
  }

  v8 = v0[15];
  v9 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[10];
  type metadata accessor for PeopleAnalytics();
  (*(v13 + 104))(v11, enum case for StatusType.readMessage(_:), v12);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();

  (*(v13 + 8))(v11, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_100033440()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_1000334FC, 0, 0);
}

uint64_t sub_1000334FC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.unreadMessage(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_1000335B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for StatusType();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = sub_100005E30(&qword_100063840, &qword_10004E888);
  v4[25] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000337D8, 0, 0);
}

uint64_t sub_1000337D8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = objc_opt_self();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[30] = [v3 predicateForContactsWithIdentifiers:isa];

  v5 = v2[12];
  sub_100005E78(v2 + 8, v2[11]);
  v6 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v0[31] = v6;
  v7 = v6;
  v8 = sub_100007728(_swiftEmptyArrayStorage);
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v0[32] = result;
    if (result)
    {
LABEL_3:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v0[34] = 0;
        v0[35] = v8;
        v0[33] = v8;
        v10 = v0[31];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v0[36] = v11;
        v12 = v0[8];
        v13 = CNContact.people_normalizedHandles.getter();
        v0[37] = v13;
        v14 = *sub_100005E78((v12 + 104), *(v12 + 128));
        v15 = swift_task_alloc();
        v0[38] = v15;
        *v15 = v0;
        v15[1] = sub_100033D64;

        return sub_100031BC0(v13);
      }

      return result;
    }
  }

  else
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[32] = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  v17 = v0[30];
  v16 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v21 = v0[26];
  v20 = v0[27];
  v23 = v0[23];
  v22 = v0[24];
  v26 = v0[22];
  v27 = v0[21];
  v28 = v0[20];
  v29 = v0[17];
  v30 = v0[16];
  v31 = v0[15];
  v32 = v0[12];
  v24 = v0[6];

  *v24 = v8;

  v25 = v0[1];

  return v25();
}

uint64_t sub_100033D64(uint64_t a1)
{
  v2 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100033E64, 0, 0);
}

uint64_t sub_100033E64()
{
  if (v0[39] < 1)
  {
    v10 = v0[36];
    v9 = v0[37];

    v11 = v0[34] + 1;
    if (v11 == v0[32])
    {
      v12 = v0[35];
      v14 = v0[30];
      v13 = v0[31];
      v16 = v0[28];
      v15 = v0[29];
      v18 = v0[26];
      v17 = v0[27];
      v20 = v0[23];
      v19 = v0[24];
      v29 = v0[22];
      v30 = v0[21];
      v31 = v0[20];
      v32 = v0[17];
      v33 = v0[16];
      v34 = v0[15];
      v35 = v0[12];
      v21 = v0[6];

      *v21 = v12;

      v22 = v0[1];

      return v22();
    }

    else
    {
      v0[34] = v11;
      v23 = v0[31];
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v23 + 8 * v11 + 32);
      }

      v0[36] = v24;
      v25 = v0[8];
      v26 = CNContact.people_normalizedHandles.getter();
      v0[37] = v26;
      v27 = *sub_100005E78((v25 + 104), *(v25 + 128));
      v28 = swift_task_alloc();
      v0[38] = v28;
      *v28 = v0;
      v28[1] = sub_100033D64;

      return sub_100031BC0(v26);
    }
  }

  else
  {
    v1 = v0[29];
    v2 = v0[25];
    v3 = sub_100005E78((v0[8] + 104), *(v0[8] + 128));
    v4 = *(v2 + 64);
    v5 = *v3;
    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = sub_100034120;
    v7 = v0[37];

    return sub_100030F80(v1 + v4, v7);
  }
}

uint64_t sub_100034120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 320);
  v6 = *(*v3 + 296);
  v8 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = a3;

  return _swift_task_switch(sub_100034244, 0, 0);
}

uint64_t sub_100034244()
{
  v149 = v0;
  v1 = *(v0 + 344);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  *v2 = *(v0 + 328);
  *(v2 + 16) = v1;
  sub_100035130(v2, v3);
  v7 = *(v3 + 8);

  v8 = *(v6 + 48);
  v9 = *(v4 + 64);
  if (v8(v3 + v9, 1, v5) == 1)
  {
    sub_100007DB0(v3 + v9, &qword_100062738, &qword_10004D970);
  }

  else
  {
    v144 = v8;
    v10 = *(v0 + 288);
    v11 = *(v0 + 72);
    (*(*(v0 + 152) + 32))(*(v0 + 192), v3 + v9, *(v0 + 144));
    v12 = [v10 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (*(v11 + 16))
    {
      v16 = *(v0 + 72);
      v17 = sub_100005EBC(v13, v15);
      v19 = v18;

      if (v19)
      {
        v21 = *(v0 + 184);
        v20 = *(v0 + 192);
        v22 = *(v0 + 176);
        v135 = *(v0 + 168);
        v139 = *(v0 + 288);
        v23 = *(v0 + 144);
        v24 = *(v0 + 152);
        v25 = *(v0 + 136);
        v26 = *(v24 + 16);
        v26(v21, *(*(v0 + 72) + 56) + *(v24 + 72) * v17, v23);
        static PeopleLogger.daemon.getter();
        v26(v22, v20, v23);
        v26(v135, v21, v23);
        v27 = v139;
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(v0 + 288);
          v129 = v29;
          v31 = *(v0 + 176);
          v123 = *(v0 + 168);
          log = v28;
          v32 = *(v0 + 144);
          v33 = *(v0 + 152);
          v132 = *(v0 + 112);
          v136 = *(v0 + 104);
          v140 = *(v0 + 136);
          v34 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          *v34 = 136315650;
          v35 = [v30 identifier];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          v39 = sub_10002580C(v36, v38, &v148);

          *(v34 + 4) = v39;
          *(v34 + 12) = 2080;
          sub_100035368(&qword_100063850, 255, &type metadata accessor for Date);
          v40 = dispatch thunk of CustomStringConvertible.description.getter();
          v42 = v41;
          v43 = *(v33 + 8);
          v43(v31, v32);
          v44 = sub_10002580C(v40, v42, &v148);

          *(v34 + 14) = v44;
          *(v34 + 22) = 2080;
          v45 = dispatch thunk of CustomStringConvertible.description.getter();
          v47 = v46;
          v43(v123, v32);
          v48 = sub_10002580C(v45, v47, &v148);

          *(v34 + 24) = v48;
          _os_log_impl(&_mh_execute_header, log, v129, "%s message time %s viewed %s", v34, 0x20u);
          swift_arrayDestroy();

          v49 = *(v132 + 8);
          v49(v140, v136);
        }

        else
        {
          v51 = *(v0 + 168);
          v50 = *(v0 + 176);
          v52 = *(v0 + 144);
          v53 = *(v0 + 152);
          v54 = *(v0 + 136);
          v55 = *(v0 + 104);
          v56 = *(v0 + 112);

          v57 = *(v53 + 8);
          v57(v51, v52);
          v57(v50, v52);
          v43 = v57;
          v49 = *(v56 + 8);
          v49(v54, v55);
        }

        v59 = *(v0 + 184);
        v58 = *(v0 + 192);
        v8 = v144;
        if (static Date.< infix(_:_:)())
        {
          v60 = *(v0 + 288);
          v61 = *(v0 + 128);
          static PeopleLogger.daemon.getter();
          v62 = v60;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.debug.getter();

          v65 = os_log_type_enabled(v63, v64);
          v66 = *(v0 + 288);
          v67 = *(v0 + 232);
          v141 = *(v0 + 184);
          v145 = *(v0 + 192);
          v68 = *(v0 + 152);
          v133 = *(v0 + 128);
          v137 = *(v0 + 144);
          v130 = *(v0 + 104);
          if (v65)
          {
            v125 = *(v0 + 112) + 8;
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v148 = v70;
            *v69 = 136315138;
            v122 = v66;
            v71 = [v66 identifier];
            v72 = v43;
            v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v124 = v67;
            v75 = v74;

            v76 = sub_10002580C(v73, v75, &v148);

            *(v69 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v63, v64, "%s viewed since unread message", v69, 0xCu);
            sub_100003938(v70);

            v49(v133, v130);
            v72(v141, v137);
            v72(v145, v137);
            v77 = v124;
          }

          else
          {

            v49(v133, v130);
            v43(v141, v137);
            v43(v145, v137);
            v77 = v67;
          }

          sub_100007DB0(v77, &qword_100063840, &qword_10004E888);
          v103 = *(v0 + 280);
          v102 = *(v0 + 264);
          goto LABEL_19;
        }

        v78 = *(v0 + 192);
        v79 = *(v0 + 144);
        v43(*(v0 + 184), v79);
        v43(v78, v79);
      }

      else
      {
        (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));
        v8 = v144;
      }
    }

    else
    {
      (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

      v8 = v144;
    }
  }

  v80 = *(v0 + 232);
  v81 = *(v0 + 208);
  v82 = *(v0 + 216);
  v83 = *(v0 + 200);
  v84 = *(v0 + 144);
  v85 = [*(v0 + 288) identifier];
  v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v146 = v86;

  sub_100005E30(&qword_100063260, &qword_10004E2B0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_10004D790;
  sub_100035130(v80, v82);
  v88 = *v82;
  v89 = v82[1];
  sub_100035130(v80, v81);
  v90 = *(v81 + 8);

  v91 = *(v83 + 64);
  if (v8(v81 + v91, 1, v84) == 1)
  {
    v92 = *(v0 + 144);
    v93 = *(v0 + 160);
    Date.init()();
    if (v8(v81 + v91, 1, v92) != 1)
    {
      sub_100007DB0(v81 + v91, &qword_100062738, &qword_10004D970);
    }
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 160), v81 + v91, *(v0 + 144));
  }

  v94 = *(v0 + 312);
  v95 = *(v0 + 288);
  v96 = *(v0 + 264);
  v97 = *(v0 + 232);
  v98 = *(v0 + 216);
  v99 = *(v0 + 160);
  v100 = *(*(v0 + 200) + 64);
  *(v87 + 56) = type metadata accessor for MessagePersonStatus();
  *(v87 + 64) = sub_100035368(&qword_100063848, 255, &type metadata accessor for MessagePersonStatus);
  sub_100007784((v87 + 32));
  MessagePersonStatus.init(lastMessageString:unreadCount:date:)();
  sub_100007DB0(v98 + v100, &qword_100062738, &qword_10004D970);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148 = v96;
  sub_100006B74(v87, v142, v146, isUniquelyReferenced_nonNull_native);

  v102 = v148;
  sub_100007DB0(v97, &qword_100063840, &qword_10004E888);
  v103 = v102;
LABEL_19:
  v104 = *(v0 + 272) + 1;
  if (v104 == *(v0 + 256))
  {
    v106 = *(v0 + 240);
    v105 = *(v0 + 248);
    v108 = *(v0 + 224);
    v107 = *(v0 + 232);
    v110 = *(v0 + 208);
    v109 = *(v0 + 216);
    v112 = *(v0 + 184);
    v111 = *(v0 + 192);
    v126 = *(v0 + 176);
    loga = *(v0 + 168);
    v131 = *(v0 + 160);
    v134 = *(v0 + 136);
    v138 = *(v0 + 128);
    v143 = *(v0 + 120);
    v147 = *(v0 + 96);
    v113 = *(v0 + 48);

    *v113 = v103;

    v114 = *(v0 + 8);

    return v114();
  }

  else
  {
    *(v0 + 272) = v104;
    *(v0 + 280) = v103;
    *(v0 + 264) = v102;
    v116 = *(v0 + 248);
    if ((v116 & 0xC000000000000001) != 0)
    {
      v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v117 = *(v116 + 8 * v104 + 32);
    }

    *(v0 + 288) = v117;
    v118 = *(v0 + 64);
    v119 = CNContact.people_normalizedHandles.getter();
    *(v0 + 296) = v119;
    v120 = *sub_100005E78((v118 + 104), *(v118 + 128));
    v121 = swift_task_alloc();
    *(v0 + 304) = v121;
    *v121 = v0;
    v121[1] = sub_100033D64;

    return sub_100031BC0(v119);
  }
}

uint64_t sub_100034CFC()
{
  v1 = v0[2];

  sub_100003938(v0 + 3);
  sub_100003938(v0 + 8);
  sub_100003938(v0 + 13);
  v2 = v0[18];

  sub_100007E10((v0 + 19));

  return swift_deallocClassInstance();
}

uint64_t sub_100034D80@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.readMessage(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100034DF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100034E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_100034E8C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 56);
  sub_100005E78((*v1 + 24), *(*v1 + 48));
  dispatch thunk of LaunchRecordReaderProtocol.reload()();
  v5 = v3[7];
  sub_100005E78(v3 + 3, v3[6]);
  v6 = dispatch thunk of LaunchRecordReaderProtocol.dates(forContactIdentifier:)();
  sub_100005E30(&qword_100062700, &unk_10004D940);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v3;
  v7[4] = v6;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_100034F94(uint64_t a1, uint64_t a2)
{
  result = sub_100035368(&qword_100063830, a2, type metadata accessor for IMessageStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100035034()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003507C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECE4;

  return sub_1000335B4(a1, v4, v5, v6);
}

uint64_t sub_100035130(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100063840, &qword_10004E888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000351D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001ECE4;

  return sub_1000323F4(a1, v4, v5, v6);
}

uint64_t sub_100035284()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000352BC()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_100033440();
}

uint64_t sub_100035368(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000353E0(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_100035444(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CBC;

  return sub_1000314B0(a1, v5, v4);
}

uint64_t sub_1000354F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100062738, &qword_10004D970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003558C()
{
  result = qword_100063868;
  if (!qword_100063868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063868);
  }

  return result;
}

uint64_t sub_1000355DC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  static PeopleLogger.daemon.getter();
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v21[1] = a3;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23[0] = v14;
    *v13 = 136315138;
    string = xpc_dictionary_get_string(a1, _xpc_event_key_name);
    v22 = a2;
    if (string)
    {
      v16 = String.init(cString:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100050A10;
      v16 = 0xD000000000000021;
    }

    v19 = sub_10002580C(v16, v18, v23);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "did receive xpc event: %s", v13, 0xCu);
    sub_100003938(v14);

    (*(v7 + 8))(v10, v6);
    a2 = v22;
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v23[3] = &type metadata for XPCEvent;
  v23[4] = &off_10005E2F0;
  v23[0] = a1;
  swift_unknownObjectRetain();
  a2(v23);
  swift_unknownObjectRelease();
  return sub_100003938(v23);
}

void sub_100035864(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100010734(0, &qword_100063A70, EKSharee_ptr);
    sub_10003D90C();
    Set.Iterator.init(_cocoa:)();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
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

  v16 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100010734(0, &qword_100063A70, EKSharee_ptr), swift_dynamicCast(), v13 = v17, v4 = v9, v5 = v10, !v17))
      {
LABEL_22:
        sub_100014AB0();
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
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 contactPredicate];

    v9 = v4;
    v10 = v5;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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
      goto LABEL_22;
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

void *sub_100035AD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_10000D654(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000077E8(v4, v8);
      sub_100005E30(&qword_100062AA8, &unk_10004EB10);
      sub_100005E30(&qword_100062AA0, &unk_10004DBF0);
      swift_dynamicCast();
      v10 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10000D654((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      v2[2] = v6 + 1;
      sub_10000784C(&v9, &v2[5 * v6 + 4]);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100035C08(uint64_t a1)
{
  v2 = type metadata accessor for CalendarPersonStatus();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_10000D6F4(0, v7, 0);
    v8 = v22;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v2);
      v22 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_10000D6F4((v13 > 1), v14 + 1, 1);
      }

      v20 = v2;
      v21 = sub_10003B410(&qword_100063A50, 255, &type metadata accessor for CalendarPersonStatus);
      v15 = sub_100007784(&v19);
      v10(v15, v6, v2);
      v8 = v22;
      v22[2] = v14 + 1;
      sub_10000784C(&v19, &v8[5 * v14 + 4]);
      (*(v9 - 8))(v6, v2);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void sub_100035E04(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_10000D6D4(0, v2 & ~(v2 >> 63), 0);
    v37 = _swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_10003BAE4(v39, v40, v41, v1, &qword_100062C10, CNContact_ptr);
        v13 = v12;
        v14 = [v12 identifier];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_10000D6D4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_100005E30(&qword_100063A78, &qword_10004EAE8);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_10003D900(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_10003D900(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_10003D900(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void *sub_10003617C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 16 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_10003D900(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_10003D900(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100036394(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for Date();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v6 = *(*(sub_100005E30(&qword_100062A80, &qword_10004ED60) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000364A4, 0, 0);
}

uint64_t sub_1000364A4()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v21 = v0[6];
  v22 = v1;
  v8 = v0[4];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = *(v5 + 16);
  v10(v2, v8, v6);
  v10(v3, v7, v6);
  v11 = *(v5 + 80);
  v12 = (v11 + 40) & ~v11;
  v13 = (v4 + v11 + v12) & ~v11;
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v21;
  v15 = *(v5 + 32);
  v15(&v14[v12], v2, v6);
  v15(&v14[v13], v3, v6);

  v16 = sub_1000151E4(0, 0, v22, &unk_10004EB00, v14);
  v0[13] = v16;
  v17 = async function pointer to Task.result.getter[1];
  v18 = swift_task_alloc();
  v0[14] = v18;
  v19 = sub_100005E30(&unk_100062DB0, &qword_10004E010);
  *v18 = v0;
  v18[1] = sub_1000366C0;

  return Task.result.getter(v0 + 2, v16, v19, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_1000366C0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_1000367D8, 0, 0);
}

uint64_t sub_1000367D8(uint64_t a1)
{
  if (*(v1 + 24))
  {

    return _swift_willThrowTypedImpl(a1, &type metadata for Never, &protocol witness table for Never);
  }

  else
  {
    v4 = *(v1 + 88);
    v3 = *(v1 + 96);
    v5 = *(v1 + 80);
    v6 = *(v1 + 16);

    v7 = *(v1 + 8);

    return v7(v6);
  }
}

uint64_t sub_100036888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_1000368AC, 0, 0);
}

uint64_t sub_1000368AC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = *(v0[3] + 24);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = Date._bridgeToObjectiveC()().super.isa;
  v6 = [v3 predicateForEventsWithStartDate:isa endDate:v5 calendars:0];

  v7 = [v3 eventsMatchingPredicate:v6];
  sub_100010734(0, &qword_100062D90, EKEvent_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v17 = v6;
    v18 = v0;
    v6 = 0;
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v10 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(v8 + 8 * v6 + 32);
      }

      v12 = v11;
      v0 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (([v11 isAllDay] & 1) != 0 || objc_msgSend(v12, "status") == 3)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v13 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = v8 & 0xFFFFFFFFFFFFFF8;
      }

      ++v6;
      if (v0 == i)
      {
        v6 = v17;
        v0 = v18;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:
  v14 = v0[2];

  *v14 = _swiftEmptyArrayStorage;
  v15 = v0[1];

  return v15();
}

uint64_t sub_100036B10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100036B30, 0, 0);
}

uint64_t sub_100036B30()
{
  if ([p_weak_ivar_lyt[2] hasAttendees])
  {
    v1 = [p_weak_ivar_lyt[2] attendees];
    if (v1)
    {
      v2 = v1;
      sub_100010734(0, &qword_100063A60, EKParticipant_ptr);
      v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v3 >> 62)
      {
        goto LABEL_33;
      }

      for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v28 = p_weak_ivar_lyt;
        v5 = 0;
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v7 = *(v3 + 8 * v5 + 32);
          }

          v8 = v7;
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (([v7 isCurrentUser] & 1) != 0 || objc_msgSend(v8, "participantStatus") == 3)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v10 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v6 = v3 & 0xFFFFFFFFFFFFFF8;
          }

          ++v5;
          if (v9 == i)
          {
            p_weak_ivar_lyt = v28;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        ;
      }

LABEL_21:

      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (!v13)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
          goto LABEL_35;
        }
      }

      v14 = specialized ContiguousArray.reserveCapacity(_:)();
      if (v13 < 0)
      {
        __break(1u);
        return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v14, v15, v16, v17);
      }

      v18 = 0;
      do
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v19 = _swiftEmptyArrayStorage[v18 + 4];
        }

        v20 = v19;
        ++v18;
        v21 = [v19 contactPredicate];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v22 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v13 != v18);
LABEL_35:

      p_weak_ivar_lyt[4] = _swiftEmptyArrayStorage;
      v23 = p_weak_ivar_lyt[3];
      v24 = v23[7];
      v25 = v23[8];
      sub_100005E78(v23 + 4, v24);
      v26 = async function pointer to dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)[1];
      v27 = swift_task_alloc();
      p_weak_ivar_lyt[5] = v27;
      *v27 = p_weak_ivar_lyt;
      v27[1] = sub_100036EE4;
      v14 = _swiftEmptyArrayStorage;
      v15 = 0;
      v16 = v24;
      v17 = v25;

      return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v14, v15, v16, v17);
    }
  }

  v11 = p_weak_ivar_lyt[1];

  return v11(&_swiftEmptySetSingleton);
}

uint64_t sub_100036EE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  v4[6] = v1;

  v7 = v4[4];
  if (v1)
  {

    v8 = sub_1000370CC;
  }

  else
  {

    v4[7] = a1;
    v8 = sub_10003703C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003703C()
{
  v1 = v0[6];
  sub_100035E04(v0[7]);
  v3 = v2;

  v4 = sub_10001E3F0(v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000370CC()
{
  v1 = sub_10001E3F0(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100037144(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return _swift_task_switch(sub_1000371D4, 0, 0);
}

uint64_t sub_1000371D4()
{
  v51 = v0;
  v1 = [*(v0 + 32) calendar];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 sharees];

  if (!v3 || (v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v3, sub_100037A94(v4), v6 = v5, v7 = , !v6))
  {
    v25 = *(v0 + 8);

    return v25(&_swiftEmptySetSingleton);
  }

  if ((v6 & 0xC000000000000001) == 0)
  {
    v27 = *(v6 + 32);
    v8 = ((1 << v27) + 63) >> 6;
    if ((v27 & 0x3Fu) <= 0xD)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

  v8 = &_swiftEmptySetSingleton;
  v50 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v9 = __CocoaSet.Iterator.next()();
  if (!v9)
  {
LABEL_26:

    goto LABEL_43;
  }

  v10 = v9;
  sub_100010734(0, &qword_100063A70, EKSharee_ptr);
  v11 = v10;
  while (1)
  {
    *(v0 + 24) = v11;
    swift_dynamicCast();
    v12 = [*(v0 + 16) shareeStatus];
    v13 = *(v0 + 16);
    if (v12 == 1)
    {
      break;
    }

LABEL_8:
    v11 = __CocoaSet.Iterator.next()();
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v14 = *(v8 + 16);
  if (*(v8 + 24) <= v14)
  {
    sub_10001BB2C(v14 + 1);
    v8 = v50;
  }

  v6 = v13;
  v15 = NSObject._rawHashValue(seed:)(*(v8 + 40));
  v16 = v8 + 56;
  v17 = -1 << *(v8 + 32);
  v18 = v15 & ~v17;
  v19 = v18 >> 6;
  if (((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6))) != 0)
  {
    v20 = __clz(__rbit64((-1 << v18) & ~*(v8 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v8 + 48) + 8 * v20) = v13;
    ++*(v8 + 16);
    goto LABEL_8;
  }

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
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_22;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_28:
    v48 = &v48;
    v49 = v8;
    __chkstk_darwin(v7);
    v29 = &v48 - ((v28 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v28);
    v30 = 0;
    v31 = 0;
    v32 = 1 << *(v6 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v6 + 56);
    v35 = (v32 + 63) >> 6;
    while (v34)
    {
      v36 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_38:
      v8 = v36 | (v31 << 6);
      if ([*(*(v6 + 48) + 8 * v8) shareeStatus] == 1)
      {
        *&v29[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_42:
          v8 = sub_100040C28(v29, v49, v30, v6);
          goto LABEL_43;
        }
      }
    }

    v37 = v31;
    while (1)
    {
      v31 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v31 >= v35)
      {
        goto LABEL_42;
      }

      v38 = *(v6 + 56 + 8 * v31);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v34 = (v38 - 1) & v38;
        goto LABEL_38;
      }
    }
  }

  v47 = swift_slowAlloc();
  v8 = sub_10003BA44(v47, v8, v6, sub_100037DB8, 0, sub_10003B6C4);

LABEL_43:
  v40 = *(v0 + 40);
  sub_100035864(v8);
  v42 = v41;
  *(v0 + 48) = v41;

  v43 = v40[7];
  v44 = v40[8];
  sub_100005E78(v40 + 4, v43);
  v45 = async function pointer to dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)[1];
  v46 = swift_task_alloc();
  *(v0 + 56) = v46;
  *v46 = v0;
  v46[1] = sub_1000377A8;

  return dispatch thunk of ContactFetcherProtocol.contacts(withPredicates:includeImages:)(v42, 0, v43, v44);
}

uint64_t sub_1000377A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = v1;

  v7 = v4[6];
  if (v1)
  {

    v8 = sub_1000379E8;
  }

  else
  {

    v4[9] = a1;
    v8 = sub_10003792C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003792C()
{
  v1 = v0[8];
  sub_100035E04(v0[9]);
  v3 = v2;

  v4 = sub_10001E3F0(v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000379E8()
{
  v1 = sub_10001E3F0(_swiftEmptyArrayStorage);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_100037A94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005E30(&qword_100062DA8, &qword_10004EAF0);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_100010734(0, &qword_100063A70, EKSharee_ptr);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100007864(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000078C0(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_10003B584(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100007864(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_1000078C0(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = NSObject._rawHashValue(seed:)(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

Swift::Int sub_100037E0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100037E80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100037EC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100037F24()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100037F68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100037FC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_100010734(0, &qword_100062D80, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & ~(v3 ^ v5) & 1;
}

uint64_t sub_100038030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_100005E30(&qword_100063A48, &unk_10004EA80);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();
  v9 = *(*(sub_100005E30(&qword_100062A80, &qword_10004ED60) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100038160, 0, 0);
}

uint64_t sub_100038160()
{
  v1 = *(v0 + 160);
  v48 = sub_100007A30(_swiftEmptyArrayStorage);
  if (v1 >> 62)
  {
    if (*(v0 + 160) < 0)
    {
      v41 = *(v0 + 160);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_27:
    v42 = *(v0 + 200);
    v43 = **(v0 + 152);
    sub_100005E30(&qword_100063A40, &qword_10004EA68);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 240) = v48;
    *(v0 + 248) = v48;
    v44 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
    v45 = swift_task_alloc();
    *(v0 + 256) = v45;
    *v45 = v0;
    v45[1] = sub_100038770;
    v46 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = v0 + 128;
    v2 = 0;
    v3 = 0;

    return TaskGroup.Iterator.next(isolation:)(v5, v2, v3, v4);
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_27;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v50 = v1 & 0xC000000000000001;
    v49 = *(v0 + 160) + 32;
    v57 = **(v0 + 152);
    v51 = v5;
    while (1)
    {
      v56 = v6;
      if (v50)
      {
        v9 = *(v0 + 160);
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v49 + 8 * v6);
      }

      v11 = v10;
      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v15 = *(v0 + 168);
      v14 = *(v0 + 176);
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      v55 = *(v17 + 56);
      v55(v12, 1, 1, v16);
      v18 = swift_allocObject();
      v18[2] = 0;
      v19 = v18 + 2;
      v18[3] = 0;
      v18[4] = v15;
      v18[5] = v11;
      v18[6] = v14;
      sub_10002A4B0(v12, v13);
      v54 = *(v17 + 48);
      LODWORD(v12) = v54(v13, 1, v16);

      v53 = v11;

      v20 = *(v0 + 224);
      if (v12 == 1)
      {
        sub_100007DB0(*(v0 + 224), &qword_100062A80, &qword_10004ED60);
        if (*v19)
        {
          goto LABEL_12;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v20, v16);
        if (*v19)
        {
LABEL_12:
          v21 = v18[3];
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = dispatch thunk of Actor.unownedExecutor.getter();
          v24 = v23;
          swift_unknownObjectRelease();
          goto LABEL_15;
        }
      }

      v22 = 0;
      v24 = 0;
LABEL_15:
      v25 = swift_allocObject();
      *(v25 + 16) = &unk_10004EAA8;
      *(v25 + 24) = v18;

      sub_100005E30(&qword_100063A40, &qword_10004EA68);
      v26 = v24 | v22;
      v52 = v17;
      if (v24 | v22)
      {
        v26 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      v27 = *(v0 + 232);
      v29 = *(v0 + 208);
      v28 = *(v0 + 216);
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      *(v0 + 80) = 1;
      *(v0 + 88) = v26;
      *(v0 + 96) = v57;
      swift_task_create();

      sub_100007DB0(v27, &qword_100062A80, &qword_10004ED60);
      v55(v28, 1, 1, v16);
      v32 = swift_allocObject();
      v32[2] = 0;
      v33 = v32 + 2;
      v32[3] = 0;
      v32[4] = v31;
      v32[5] = v53;
      v32[6] = v30;
      sub_10002A4B0(v28, v29);
      LODWORD(v28) = v54(v29, 1, v16);

      v34 = v53;

      v35 = *(v0 + 208);
      if (v28 == 1)
      {
        sub_100007DB0(*(v0 + 208), &qword_100062A80, &qword_10004ED60);
        if (!*v33)
        {
          goto LABEL_21;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v52 + 8))(v35, v16);
        if (!*v33)
        {
LABEL_21:
          v37 = 0;
          v39 = 0;
          goto LABEL_22;
        }
      }

      v36 = v32[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v37 = dispatch thunk of Actor.unownedExecutor.getter();
      v39 = v38;
      swift_unknownObjectRelease();
LABEL_22:
      v40 = swift_allocObject();
      *(v40 + 16) = &unk_10004EAB8;
      *(v40 + 24) = v32;

      if (v39 | v37)
      {
        v7 = v0 + 48;
        *(v0 + 48) = 0;
        *(v0 + 56) = 0;
        *(v0 + 64) = v37;
        *(v0 + 72) = v39;
      }

      else
      {
        v7 = 0;
      }

      v6 = v56 + 1;
      v8 = *(v0 + 216);
      *(v0 + 104) = 1;
      *(v0 + 112) = v7;
      *(v0 + 120) = v57;
      swift_task_create();

      sub_100007DB0(v8, &qword_100062A80, &qword_10004ED60);
      if (v51 == v56 + 1)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v5, v2, v3, v4);
}

uint64_t sub_100038770()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10003886C, 0, 0);
}

uint64_t sub_10003886C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = v1 + 64;
    v3 = -1 << *(v1 + 32);
    if (-v3 < 64)
    {
      v4 = ~(-1 << -v3);
    }

    else
    {
      v4 = -1;
    }

    v5 = v4 & *(v1 + 64);
    v6 = (63 - v3) >> 6;
    v64 = *(v0 + 240);

    v11 = 0;
    v62 = v1 + 64;
    v63 = (v0 + 128);
    v60 = v1;
    for (i = v6; ; v6 = i)
    {
      if (!v5)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_48;
          }

          if (v14 >= v6)
          {
            break;
          }

          v5 = *(v2 + 8 * v14);
          ++v11;
          if (v5)
          {
            v11 = v14;
            goto LABEL_12;
          }
        }

        v59[15] = v64;
        v46 = *(&async function pointer to TaskGroup.Iterator.next(isolation:) + 1);
        v47 = swift_task_alloc();
        v59[16].i64[0] = v47;
        *v47 = v59;
        v47[1] = sub_100038770;
        v48 = v59[12].i64[1];
        v10 = v59[11].i64[1];
        v7 = v63;
        v8 = 0;
        v9 = 0;

        return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
      }

LABEL_12:
      v15 = __clz(__rbit64(v5)) | (v11 << 6);
      v16 = (*(v1 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v1 + 56) + 8 * v15);

      v20 = v64.i64[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[1] = v64.i64[0];
      v22 = v17;
      v23 = sub_100005EBC(v17, v18);
      v24 = *(v64.i64[0] + 16);
      v25 = (v8 & 1) == 0;
      v7 = (v24 + v25);
      if (__OFADD__(v24, v25))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v26 = v8;
      if (*(v64.i64[0] + 24) >= v7)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v27 = v64.i64[0];
          v2 = v62;
          if (v8)
          {
            goto LABEL_6;
          }

LABEL_19:
          sub_100007E88(v23, v22, v18, &_swiftEmptySetSingleton, v27);

          goto LABEL_6;
        }

        sub_100005E30(&qword_100062728, &qword_10004D960);
        v30 = static _DictionaryStorage.copy(original:)();
        v27 = v30;
        v31 = *(v64.i64[0] + 16);
        if (v31)
        {
          v7 = (v30 + 64);
          v8 = (v64.i64[0] + 64);
          v32 = ((1 << *(v27 + 32)) + 63) >> 6;
          v57 = v64.i64[0] + 64;
          if (v27 != v64.i64[0] || v7 >= &v8[8 * v32])
          {
            v7 = memmove(v7, v8, 8 * v32);
            v31 = *(v64.i64[0] + 16);
          }

          v33 = 0;
          *(v27 + 16) = v31;
          v34 = 1 << *(v64.i64[0] + 32);
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          else
          {
            v35 = -1;
          }

          v36 = v35 & *(v64.i64[0] + 64);
          v37 = (v34 + 63) >> 6;
          v58 = v37;
          if (v36)
          {
            do
            {
              v38 = __clz(__rbit64(v36));
              v65 = (v36 - 1) & v36;
LABEL_34:
              v41 = v38 | (v33 << 6);
              v42 = (*(v20 + 48) + 16 * v41);
              v43 = v42[1];
              v44 = *(*(v20 + 56) + 8 * v41);
              v45 = (*(v27 + 48) + 16 * v41);
              *v45 = *v42;
              v45[1] = v43;
              *(*(v27 + 56) + 8 * v41) = v44;

              v37 = v58;
              v36 = v65;
            }

            while (v65);
          }

          v39 = v33;
          while (1)
          {
            v33 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v33 >= v37)
            {
              goto LABEL_36;
            }

            v40 = *(v57 + 8 * v33);
            ++v39;
            if (v40)
            {
              v38 = __clz(__rbit64(v40));
              v65 = (v40 - 1) & v40;
              goto LABEL_34;
            }
          }

LABEL_49:
          __break(1u);
          return TaskGroup.Iterator.next(isolation:)(v7, v8, v9, v10);
        }

LABEL_36:

        v2 = v62;
        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_100006738(v7, isUniquelyReferenced_nonNull_native);
        v27 = v63[1];
        v28 = sub_100005EBC(v17, v18);
        if ((v26 & 1) != (v29 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v23 = v28;
        v2 = v62;
        if ((v26 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      v5 &= v5 - 1;
      v12 = *(v27 + 56) + 8 * v23;

      sub_100039614(v13);

      v64 = vdupq_n_s64(v27);
      v1 = v60;
    }
  }

  v49 = *(v0 + 248);
  v50 = *(v0 + 224);
  v51 = *(v0 + 232);
  v53 = *(v0 + 208);
  v52 = *(v0 + 216);
  v54 = *(v0 + 144);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  *v54 = v49;

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100038D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_100038DF0;

  return sub_100036B10(a5);
}

uint64_t sub_100038DF0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100038EF0, 0, 0);
}

void sub_100038EF0()
{
  v33 = v0;
  v1 = sub_100041274(*(v0 + 32), *(v0 + 48));
  v2 = sub_100007A30(_swiftEmptyArrayStorage);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v31 = v1;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v11 = (*(v31 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v2;
    v15 = sub_100005EBC(v13, v12);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v21 = v16;
    if (v2[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v15;
        sub_10000709C();
        v15 = v27;
        v2 = v32[0];
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100006738(v20, isUniquelyReferenced_nonNull_native);
      v2 = v32[0];
      v15 = sub_100005EBC(v13, v12);
      if ((v21 & 1) != (v22 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    if (v21)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v2[6] + 16 * v15);
    *v23 = v13;
    v23[1] = v12;
    *(v2[7] + 8 * v15) = &_swiftEmptySetSingleton;
    v24 = v2[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_28;
    }

    v2[2] = v25;
    v26 = v15;

    v15 = v26;
LABEL_4:
    v6 &= v6 - 1;
    v9 = v2[7] + 8 * v15;
    sub_10001B2CC(v32, *(v30 + 24), 0);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v28 = *(v30 + 16);

  *v28 = v2;
  v29 = *(v30 + 8);

  v29();
}

uint64_t sub_1000391B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a1;
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_100039254;

  return sub_100037144(a5);
}

uint64_t sub_100039254(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100039354, 0, 0);
}

void sub_100039354()
{
  v33 = v0;
  v1 = sub_100041274(*(v0 + 32), *(v0 + 48));
  v2 = sub_100007A30(_swiftEmptyArrayStorage);
  v3 = v1 + 56;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 56);
  v7 = (63 - v5) >> 6;
  v31 = v1;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v11 = (*(v31 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v6)))));
    v13 = *v11;
    v12 = v11[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v2;
    v15 = sub_100005EBC(v13, v12);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v21 = v16;
    if (v2[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = v15;
        sub_10000709C();
        v15 = v27;
        v2 = v32[0];
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_100006738(v20, isUniquelyReferenced_nonNull_native);
      v2 = v32[0];
      v15 = sub_100005EBC(v13, v12);
      if ((v21 & 1) != (v22 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    if (v21)
    {
      goto LABEL_4;
    }

LABEL_16:
    v2[(v15 >> 6) + 8] |= 1 << v15;
    v23 = (v2[6] + 16 * v15);
    *v23 = v13;
    v23[1] = v12;
    *(v2[7] + 8 * v15) = &_swiftEmptySetSingleton;
    v24 = v2[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_28;
    }

    v2[2] = v25;
    v26 = v15;

    v15 = v26;
LABEL_4:
    v6 &= v6 - 1;
    v9 = v2[7] + 8 * v15;
    sub_10001B2CC(v32, *(v30 + 24), 1);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v28 = *(v30 + 16);

  *v28 = v2;
  v29 = *(v30 + 8);

  v29();
}

void sub_100039614(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_10001B2CC(v10, *(*(a1 + 48) + ((v8 << 10) | (16 * v9))), *(v8 + 8));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100039718(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_100005E30(&qword_100063A30, &unk_10004EA50);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = sub_100005E30(&qword_100062A88, &qword_10004DBE0);
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v2[14] = v11;
  v12 = *(v11 - 8);
  v2[15] = v12;
  v13 = *(v12 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v14 = type metadata accessor for PeopleFeatureFlagNames();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100039958, 0, 0);
}

uint64_t sub_100039958()
{
  v74 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = *(v0[4] + 16);
  (*(v2 + 104))(v1, enum case for PeopleFeatureFlagNames.calendarStatus(_:), v3);
  LOBYTE(v4) = dispatch thunk of FeatureFlagsProvider.isEnabled(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[18];
    v6 = v0[12];
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v69 = v0[8];
    v70 = v0[3];
    Date.init()();
    v11 = objc_opt_self();
    v12 = [v11 hours];
    sub_100010734(0, &qword_100062AF0, NSUnitDuration_ptr);
    Measurement.init(value:unit:)();
    v13 = [v11 hours];
    Measurement.init(value:unit:)();
    v14 = *(v9 + 16);
    v14(v10, v7, v8);
    v14(v10 + *(v69 + 48), v6, v8);
    v15 = v0[18];
    if (*(v70 + 16))
    {
      v17 = v0[16];
      v16 = v0[17];
      v18 = v0[9];
      v19 = v0[18];
      static Date.- infix(_:_:)();
      static Date.+ infix(_:_:)();
      v20 = swift_task_alloc();
      v0[22] = v20;
      *v20 = v0;
      v20[1] = sub_100039F3C;
      v21 = v0[16];
      v22 = v0[17];
      v23 = v0[4];

      return sub_100036394(v22, v21);
    }

    v26 = v0[14];
    v27 = v0[15];
    v29 = v0[12];
    v28 = v0[13];
    v30 = v0[10];
    v31 = v0[11];
    v32 = v0[9];
    v33 = sub_100007A30(_swiftEmptyArrayStorage);
    sub_100007DB0(v32, &qword_100063A30, &unk_10004EA50);
    v34 = *(v31 + 8);
    v34(v29, v30);
    v34(v28, v30);
    (*(v27 + 8))(v15, v26);
    v35 = sub_100007728(_swiftEmptyArrayStorage);
    v36 = *(v33 + 64);
    v72 = v35;
    v37 = -1;
    v38 = -1 << *(v33 + 32);
    if (-v38 < 64)
    {
      v37 = ~(-1 << -v38);
    }

    v39 = v37 & v36;
    v40 = (63 - v38) >> 6;

    v41 = 0;
    if (v39)
    {
      while (1)
      {
        v42 = v41;
LABEL_14:
        v43 = v0[4];
        v44 = __clz(__rbit64(v39)) | (v42 << 6);
        v45 = (*(v33 + 48) + 16 * v44);
        v46 = v45[1];
        v47 = *(*(v33 + 56) + 8 * v44);
        v73[0] = *v45;
        v73[1] = v46;
        v73[2] = v47;

        sub_10003AB34(&v72, v73);

        v39 &= v39 - 1;
        v41 = v42;
        if (!v39)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        __break(1u);
        return result;
      }

      if (v42 >= v40)
      {
        break;
      }

      v39 = *(v33 + 64 + 8 * v42);
      ++v41;
      if (v39)
      {
        goto LABEL_14;
      }
    }

    v48 = v0[7];

    v25 = v72;
    static PeopleLogger.common.getter();

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();

    v51 = os_log_type_enabled(v49, v50);
    v52 = v0[6];
    v53 = v0[7];
    v54 = v0[5];
    if (v51)
    {
      v71 = v0[7];
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v73[0] = v56;
      *v55 = 136315138;
      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v57 = Dictionary.description.getter();
      v59 = sub_10002580C(v57, v58, v73);

      *(v55 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v49, v50, "CalendarStatusSource returning statuses %s", v55, 0xCu);
      sub_100003938(v56);

      (*(v52 + 8))(v71, v54);
    }

    else
    {

      (*(v52 + 8))(v53, v54);
    }
  }

  else
  {
    v25 = sub_100007728(_swiftEmptyArrayStorage);
  }

  v60 = v0[21];
  v62 = v0[17];
  v61 = v0[18];
  v63 = v0[16];
  v65 = v0[12];
  v64 = v0[13];
  v66 = v0[9];
  v67 = v0[7];

  v68 = v0[1];

  return v68(v25);
}

uint64_t sub_100039F3C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  v4[23] = v1;

  v7 = v4[17];
  v8 = v4[16];
  v9 = v4[15];
  v10 = v4[14];
  if (v1)
  {

    v11 = *(v9 + 8);
    v4[29] = v11;
    v4[30] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v10);
    v11(v7, v10);
    v12 = sub_10003A74C;
  }

  else
  {
    v4[24] = a1;
    v13 = *(v9 + 8);
    v4[25] = v13;
    v4[26] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v8, v10);
    v13(v7, v10);
    v12 = sub_10003A138;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10003A138()
{
  v1 = *(v0 + 192);
  v2 = sub_100005E30(&qword_100063A40, &qword_10004EA68);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v6 = swift_task_alloc();
  *(v0 + 224) = v6;
  *v6 = v0;
  v6[1] = sub_10003A248;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v2, v2, 0, 0, &unk_10004EA78, v3, v2);
}

uint64_t sub_10003A248()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 192);
  v5 = *v0;

  return _swift_task_switch(sub_10003A37C, 0, 0);
}

uint64_t sub_10003A37C()
{
  v51 = v0;
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  sub_100007DB0(v0[9], &qword_100063A30, &unk_10004EA50);
  v9 = *(v7 + 8);
  v9(v6, v8);
  v9(v5, v8);
  v2(v3, v4);
  v10 = v0[2];
  v11 = v0[23];
  v12 = sub_100007728(_swiftEmptyArrayStorage);
  v13 = *(v10 + 64);
  v49 = v12;
  v14 = -1;
  v15 = -1 << *(v10 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & v13;
  v17 = (63 - v15) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v21 = v0[4];
      v22 = __clz(__rbit64(v16)) | (v20 << 6);
      v23 = (*(v10 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(*(v10 + 56) + 8 * v22);
      v50[0] = *v23;
      v50[1] = v24;
      v50[2] = v25;

      sub_10003AB34(&v49, v50);
      if (v11)
      {
        break;
      }

      v16 &= v16 - 1;
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    while (1)
    {
LABEL_5:
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      if (v20 >= v17)
      {
        break;
      }

      v16 = *(v10 + 64 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    v26 = v0[7];

    v27 = v49;
    static PeopleLogger.common.getter();

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[6];
    v32 = v0[7];
    v33 = v0[5];
    if (v30)
    {
      v48 = v0[7];
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50[0] = v35;
      *v34 = 136315138;
      sub_100005E30(&qword_100063A38, &qword_10004EA60);
      v36 = Dictionary.description.getter();
      v38 = sub_10002580C(v36, v37, v50);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "CalendarStatusSource returning statuses %s", v34, 0xCu);
      sub_100003938(v35);

      (*(v31 + 8))(v48, v33);
    }

    else
    {

      (*(v31 + 8))(v32, v33);
    }

    v39 = v0[21];
    v41 = v0[17];
    v40 = v0[18];
    v42 = v0[16];
    v44 = v0[12];
    v43 = v0[13];
    v45 = v0[9];
    v46 = v0[7];

    v47 = v0[1];

    return v47(v27);
  }
}

uint64_t sub_10003A74C()
{
  v51 = v0;
  v1 = v0[29];
  v47 = v0[30];
  v2 = v0[18];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = sub_100007A30(_swiftEmptyArrayStorage);
  sub_100007DB0(v8, &qword_100063A30, &unk_10004EA50);
  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);
  v1(v2, v3);
  v11 = sub_100007728(_swiftEmptyArrayStorage);
  v12 = *(v9 + 64);
  v49 = v11;
  v13 = -1;
  v14 = -1 << *(v9 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & v12;
  v16 = (63 - v14) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = v0[4];
      v21 = __clz(__rbit64(v15)) | (v19 << 6);
      v22 = (*(v9 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(*(v9 + 56) + 8 * v21);
      v50[0] = *v22;
      v50[1] = v23;
      v50[2] = v24;

      sub_10003AB34(&v49, v50);

      v15 &= v15 - 1;
      v18 = v19;
      if (!v15)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v19 >= v16)
    {
      break;
    }

    v15 = *(v9 + 64 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  v25 = v0[7];

  v26 = v49;
  static PeopleLogger.common.getter();

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[5];
  if (v29)
  {
    v48 = v0[7];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v50[0] = v34;
    *v33 = 136315138;
    sub_100005E30(&qword_100063A38, &qword_10004EA60);
    v35 = Dictionary.description.getter();
    v37 = sub_10002580C(v35, v36, v50);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "CalendarStatusSource returning statuses %s", v33, 0xCu);
    sub_100003938(v34);

    (*(v30 + 8))(v48, v32);
  }

  else
  {

    (*(v30 + 8))(v31, v32);
  }

  v38 = v0[21];
  v40 = v0[17];
  v39 = v0[18];
  v41 = v0[16];
  v43 = v0[12];
  v42 = v0[13];
  v44 = v0[9];
  v45 = v0[7];

  v46 = v0[1];

  return v46(v26);
}

uint64_t sub_10003AB34(void *a1, uint64_t *a2)
{
  v3 = v2;
  v60 = type metadata accessor for Date();
  v56 = *(v60 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v60);
  v59 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[1];
  v57 = *a2;
  v58 = v8;
  v9 = a2[2];
  LOBYTE(v8) = *(v9 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_35;
    }
  }

  __chkstk_darwin(v13);
  bzero(v54 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);
  v14 = 0;
  v15 = 0;
  v16 = 1 << *(v9 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v9 + 56);
  v19 = (v16 + 63) >> 6;
  while (1)
  {
    if (!v18)
    {
      v22 = v15;
      while (1)
      {
        v15 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v15 >= v19)
        {
          goto LABEL_16;
        }

        v23 = *(v9 + 56 + 8 * v15);
        ++v22;
        if (v23)
        {
          v18 = (v23 - 1) & v23;
          v21 = __clz(__rbit64(v23)) | (v15 << 6);
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v21 = v20 | (v15 << 6);
LABEL_12:
    if ((*(*(v9 + 48) + 16 * v21 + 8) & 1) == 0)
    {
      *(v54 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v21;
      if (__OFADD__(v14++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  for (i = sub_100041040((v54 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, v14, v9); ; i = v53)
  {
    v26 = sub_10003617C(i);

    v27 = sub_10001E918(v26);

    v28 = sub_10003D4D4(v9, v27);

    v11 = sub_10003617C(v28);

    sub_10003CE30(v27);
    v30 = v29;
    v9 = v3;

    if (v11 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v31)
      {
LABEL_32:

        v33 = _swiftEmptyArrayStorage;
LABEL_33:
        v44 = v58;

        v45 = sub_10003BCFC(v30);

        v46 = sub_10003BCFC(v33);

        v61 = v45;
        sub_10003B458(v46);
        v47 = sub_100035C08(v61);

        v48 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = *a1;
        sub_100006B74(v47, v57, v44, isUniquelyReferenced_nonNull_native);

        *a1 = v61;
        return result;
      }
    }

    else
    {
      v31 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
        goto LABEL_32;
      }
    }

    v61 = _swiftEmptyArrayStorage;
    sub_10000D734(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v54[0] = v30;
      v54[1] = v3;
      v55 = a1;
      v32 = 0;
      v33 = v61;
      v34 = v11;
      v35 = v11 & 0xC000000000000001;
      v36 = (v56 + 8);
      v37 = v11;
      do
      {
        if (v35)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v38 = *(v34 + 8 * v32 + 32);
        }

        v39 = v38;
        v40 = v59;
        Date.init()();
        v41 = sub_10003C66C(v39, 1, v40);

        (*v36)(v40, v60);
        v61 = v33;
        v43 = v33[2];
        v42 = v33[3];
        if (v43 >= v42 >> 1)
        {
          sub_10000D734((v42 > 1), v43 + 1, 1);
          v33 = v61;
        }

        ++v32;
        v33[2] = v43 + 1;
        v33[v43 + 4] = v41;
        v34 = v37;
      }

      while (v31 != v32);

      a1 = v55;
      v30 = v54[0];
      goto LABEL_33;
    }

    __break(1u);
LABEL_35:
    v51 = swift_slowAlloc();
    v52 = sub_10003BA44(v51, v11, v9, sub_10003B0B8, 0, sub_10003B830);
    if (v3)
    {
      break;
    }

    v53 = v52;
    v3 = 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B0C8()
{
  v1 = *(v0 + 16);

  sub_100003938((v0 + 32));
  sub_100007E10(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_10003B13C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for StatusType.calendar(_:);
  v3 = type metadata accessor for StatusType();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10003B1B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10003B1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return StatusSource.debugID.getter(a1, WitnessTable);
}

uint64_t sub_10003B248(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005B08;

  return sub_100039718(a1);
}

uint64_t sub_10003B2E0()
{
  v1 = *v0;
  _StringGuts.grow(_:)(33);
  v2._object = 0x8000000100051050;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_10003B370(uint64_t a1, uint64_t a2)
{
  result = sub_10003B410(&qword_100063A20, a2, type metadata accessor for CalendarStatusSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003B410(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003B458(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100022490(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for CalendarPersonStatus();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_10003B584(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_100010734(0, &qword_100063A70, EKSharee_ptr);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_10003B6C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_100040C28(a1, a2, v20, a3);
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

void sub_10003B830(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **))
{
  v27 = a3;
  v23 = 0;
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
    v15 = *(v27 + 48) + 16 * v14;
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 8);
    v25 = v16;
    v26 = v15;
    v17 = v16;
    v18 = a4(&v25);

    if (v4)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:
        v20 = v27;

        sub_100041040(a1, a2, v23, v20);
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

unint64_t *sub_10003B9A8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_10003D244(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_10003BA44(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

void sub_10003BAE4(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100010734(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100010734(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_10003BCFC(uint64_t a1)
{
  v2 = sub_100005E30(&qword_100063A58, &unk_10004EAD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v48 - v7;
  v8 = type metadata accessor for CalendarPersonStatus();
  v9 = *(*(v8 - 8) + 64);
  result = __chkstk_darwin(v8);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = 0;
  v61 = 0;
  v12 = 0;
  v49 = *(v13 + 80);
  v14 = _swiftEmptyArrayStorage;
  v54 = (v49 + 32) & ~v49;
  v59 = _swiftEmptyArrayStorage + v54;
  v15 = (v13 + 56);
  v50 = v13 + 48;
  v51 = v13 + 16;
  v52 = v13;
  v57 = (v13 + 32);
LABEL_4:
  v18 = *(a1 + 16);
  if (v12 != v18)
  {
    if (v12 < v18)
    {
      while (1)
      {
        v19 = *(a1 + 32 + 8 * v12);

        if (v19)
        {
          break;
        }

LABEL_9:
        ++v12;
        v20 = *(a1 + 16);
        if (v12 == v20)
        {
          goto LABEL_36;
        }

        if (v12 >= v20)
        {
          goto LABEL_42;
        }
      }

      v16 = *(v19 + 16);
      if (!v16)
      {
        (*v15)(v6, 1, 1, v8);
        result = sub_100007DB0(v6, &qword_100063A58, &unk_10004EAD0);
        goto LABEL_9;
      }

      v17 = 0;
      ++v12;
      while (1)
      {
        if (v17 >= v16)
        {
          goto LABEL_43;
        }

        v21 = v14;
        v22 = v52;
        v23 = *(v52 + 72);
        v61 = v17;
        v56 = v23;
        (*(v52 + 16))(v6, v19 + v54 + v23 * v17, v8);
        (*(v22 + 56))(v6, 0, 1, v8);
        v24 = v55;
        sub_10003D890(v6, v55);
        if ((*(v22 + 48))(v24, 1, v8) == 1)
        {
          v14 = v21;
          goto LABEL_37;
        }

        v53 = *v57;
        result = v53(v58, v24, v8);
        v25 = v21;
        v26 = v60;
        if (!v60)
        {
          break;
        }

LABEL_34:
        v42 = __OFSUB__(v26, 1);
        v43 = v26 - 1;
        if (v42)
        {
          goto LABEL_44;
        }

        v60 = v43;
        ++v61;
        v44 = v59;
        result = v53(v59, v58, v8);
        v59 = &v44[v56];
        v14 = v25;
        v16 = *(v19 + 16);
        v17 = v61;
        if (v61 == v16)
        {
          (*v15)(v6, 1, 1, v8);
          result = sub_100007DB0(v6, &qword_100063A58, &unk_10004EAD0);
          goto LABEL_4;
        }
      }

      v27 = *(v21 + 3);
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      sub_100005E30(&qword_100063280, &unk_10004E2D0);
      v30 = v54;
      v60 = v29;
      v25 = swift_allocObject();
      result = j__malloc_size(v25);
      v31 = v56;
      if (!v56)
      {
        goto LABEL_47;
      }

      v32 = result - v30;
      if (result - v30 == 0x8000000000000000 && v56 == -1)
      {
        goto LABEL_48;
      }

      v34 = v30;
      v35 = v32 / v56;
      *(v25 + 2) = v60;
      *(v25 + 3) = 2 * (v32 / v31);
      v36 = &v25[v30];
      v37 = v21;
      v38 = *(v21 + 2);
      v39 = *(v21 + 3) >> 1;
      v40 = v39 * v31;
      if (!v38)
      {
LABEL_33:
        v59 = &v36[v40];
        v41 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v26 = v41;
        goto LABEL_34;
      }

      if (v25 < v37 || v36 >= &v37[v34 + v40])
      {
        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v25 == v37)
        {
LABEL_32:
          *(v37 + 2) = 0;
          goto LABEL_33;
        }

        v59 = v35;
        v60 = v36;
        v48 = v40;
        swift_arrayInitWithTakeBackToFront();
      }

      v40 = v48;
      v35 = v59;
      v36 = v60;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_36:
  v24 = v55;
  (*v15)(v55, 1, 1, v8);
LABEL_37:

  result = sub_100007DB0(v24, &qword_100063A58, &unk_10004EAD0);
  v45 = *(v14 + 3);
  if (v45 < 2)
  {
    return v14;
  }

  v46 = v45 >> 1;
  v42 = __OFSUB__(v46, v60);
  v47 = v46 - v60;
  if (!v42)
  {
    *(v14 + 2) = v47;
    return v14;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10003C21C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10001ECE4;

  return sub_100038030(a1, a2, v6, v7, v8);
}

uint64_t sub_10003C2E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001ECE4;

  return sub_100038D4C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003C3AC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003C3E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001ECE4;

  return sub_10001E1CC(a1, v5);
}

uint64_t sub_10003C49C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003C4EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001ECE4;

  return sub_1000391B0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10003C5B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007CBC;

  return sub_10001E1CC(a1, v5);
}

id sub_10003C66C(void *a1, char a2, uint64_t a3)
{
  v60 = type metadata accessor for CalendarPersonStatus.Representation();
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v60);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = __chkstk_darwin(v11);
  v56 = &v52 - v13;
  v14 = __chkstk_darwin(v12);
  v57 = &v52 - v15;
  v16 = __chkstk_darwin(v14);
  v58 = &v52 - v17;
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v63 = type metadata accessor for CalendarPersonStatus.Priority();
  v20 = *(v63 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v63);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v52 - v25;
  if (a2)
  {
    goto LABEL_6;
  }

  v27 = [a1 attendees];
  if (!v27)
  {
    goto LABEL_7;
  }

  v28 = v27;
  v59 = a3;
  sub_100010734(0, &qword_100063A60, EKParticipant_ptr);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v29 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v30 > 3)
  {
LABEL_6:
    v31 = &enum case for CalendarPersonStatus.Priority.low(_:);
  }

  else
  {
LABEL_7:
    v31 = &enum case for CalendarPersonStatus.Priority.high(_:);
  }

  v32 = *v31;
  v59 = v20;
  (*(v20 + 104))(v26, v32, v63);
  result = [a1 startDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v34 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = static Date.> infix(_:_:)();
  (*(v9 + 8))(v19, v8);
  sub_100005E30(&qword_100063280, &unk_10004E2D0);
  v36 = *(type metadata accessor for CalendarPersonStatus() - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  if ((v35 & 1) == 0)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10004D790;
    result = [a1 title];
    if (result)
    {
      v50 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      result = [a1 startDate];
      if (result)
      {
        v51 = result;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v62 + 104))(v61, enum case for CalendarPersonStatus.Representation.past(_:), v60);
        v49 = v59;
        v48 = v63;
        (*(v59 + 16))(v24, v26, v63);
        CalendarPersonStatus.init(title:startDate:representation:priority:)();
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10004D9E0;
  result = [a1 title];
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (!result)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = result;
  v52 = v39;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = *(v62 + 104);
  v62 += 104;
  v54 = v42;
  v42(v61, enum case for CalendarPersonStatus.Representation.past(_:), v60);
  v53 = *(v59 + 16);
  v53(v24, v26, v63);
  v55 = v39 + v38;
  CalendarPersonStatus.init(title:startDate:representation:priority:)();
  result = [a1 title];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v43 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = result;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v54(v61, enum case for CalendarPersonStatus.Representation.alert(_:), v60);
  v53(v24, v26, v63);
  CalendarPersonStatus.init(title:startDate:representation:priority:)();
  result = [a1 title];
  v45 = v52;
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  result = [a1 startDate];
  if (result)
  {
    v47 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v54(v61, enum case for CalendarPersonStatus.Representation.future(_:), v60);
    v48 = v63;
    v53(v24, v26, v63);
    CalendarPersonStatus.init(title:startDate:representation:priority:)();
    v49 = v59;
LABEL_20:
    (*(v49 + 8))(v26, v48);
    return v45;
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_10003CE30(uint64_t a1)
{
  v41 = type metadata accessor for Date();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v41);
  v40 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_10000D734(0, v6 & ~(v6 >> 63), 0);
    v43 = v48;
    if (v42)
    {
      v7 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = _HashTable.startBucket.getter();
      v8 = *(a1 + 36);
    }

    v45 = v7;
    v46 = v8;
    v47 = v42 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v34[1] = v1;
      v10 = 0;
      v38 = v6;
      v39 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v36 = a1 + 56;
      v37 = v11;
      v35 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v15 = v45;
        v14 = v46;
        v16 = v47;
        sub_10003BAE4(v45, v46, v47, a1, &qword_100062D90, EKEvent_ptr);
        v18 = v17;
        v19 = v40;
        Date.init()();
        v20 = sub_10003C66C(v18, 0, v19);
        (*v39)(v19, v41);

        v21 = v43;
        v48 = v43;
        v23 = v43[2];
        v22 = v43[3];
        if (v23 >= v22 >> 1)
        {
          sub_10000D734((v22 > 1), v23 + 1, 1);
          v21 = v48;
        }

        v21[2] = v23 + 1;
        v21[v23 + 4] = v20;
        v43 = v21;
        if (v42)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v38;
          sub_100005E30(&qword_100063A68, &qword_10004EAE0);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v12(v44, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_10003D900(v45, v46, v47);
            return;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v24 = 1 << *(a1 + 32);
          if (v15 >= v24)
          {
            goto LABEL_38;
          }

          v25 = v15 >> 6;
          v26 = *(v36 + 8 * (v15 >> 6));
          if (((v26 >> v15) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_40;
          }

          v27 = v26 & (-2 << (v15 & 0x3F));
          if (v27)
          {
            v24 = __clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0;
            v6 = v38;
          }

          else
          {
            v28 = v25 << 6;
            v29 = v25 + 1;
            v30 = (v35 + 8 * v25);
            v6 = v38;
            while (v29 < (v24 + 63) >> 6)
            {
              v32 = *v30++;
              v31 = v32;
              v28 += 64;
              ++v29;
              if (v32)
              {
                sub_10003D900(v15, v14, 0);
                v24 = __clz(__rbit64(v31)) + v28;
                goto LABEL_33;
              }
            }

            sub_10003D900(v15, v14, 0);
          }

LABEL_33:
          v33 = *(a1 + 36);
          v45 = v24;
          v46 = v33;
          v47 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

void sub_10003D244(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v38 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v40 = a4 & 0xC000000000000001;
  v41 = a4 + 56;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v8 << 6);
    v18 = *(v6 + 48) + 16 * v17;
    if (*(v18 + 8) == 1)
    {
      v19 = *v18;
      if (v40)
      {
        v20 = v12;
        v21 = v19;
        v22 = v5;
        v23 = v21;
        v24 = __CocoaSet.contains(_:)();

        v5 = v22;
        v12 = v20;
        v6 = a3;
        if ((v24 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (*(a4 + 16))
      {
        v34 = v17;
        v35 = v12;
        v36 = a2;
        sub_100010734(0, &qword_100062D90, EKEvent_ptr);
        v25 = *(a4 + 40);
        v26 = v19;
        v27 = NSObject._rawHashValue(seed:)(v25);
        v28 = -1 << *(a4 + 32);
        v29 = v27 & ~v28;
        if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
        {
LABEL_21:

          a2 = v36;
          v6 = a3;
          v17 = v34;
          v12 = v35;
          goto LABEL_22;
        }

        v30 = ~v28;
        while (1)
        {
          v31 = *(*(a4 + 48) + 8 * v29);
          v32 = static NSObject.== infix(_:_:)();

          if (v32)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v41 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        a2 = v36;
        v6 = a3;
        v12 = v35;
      }

      else
      {
LABEL_22:
        *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v38++, 1))
        {
          goto LABEL_28;
        }
      }
    }
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

      sub_100041040(a1, a2, v38, v6);
      return;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_10003D4D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_32;
  }

  while (2)
  {
    v45 = &v41;
    __chkstk_darwin(v10);
    v48 = &v41 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v48, v9);
    v11 = 0;
    v12 = v5 + 56;
    v13 = 1 << *(v5 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v5 + 56);
    v49 = 0;
    v50 = (v13 + 63) >> 6;
    v16 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v16 = a2;
    }

    v46 = a2;
    v47 = v16;
    v52 = a2 & 0xC000000000000001;
    v53 = a2 + 56;
    v51 = v5;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      if (*(v21 + 8) == 1)
      {
        v22 = *v21;
        if (v52)
        {
          v23 = v8;
          v24 = v3;
          v25 = v15;
          v26 = v20;
          v9 = v22;
          v27 = __CocoaSet.contains(_:)();

          v20 = v26;
          v15 = v25;
          v3 = v24;
          v8 = v23;
          v5 = v51;
          a2 = v46;
          if ((v27 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (*(a2 + 16))
        {
          v41 = v20;
          v42 = v15;
          v43 = v8;
          v44 = v3;
          v9 = sub_100010734(0, &qword_100062D90, EKEvent_ptr);
          v28 = *(a2 + 40);
          v29 = v22;
          v30 = NSObject._rawHashValue(seed:)(v28);
          v31 = a2;
          v32 = -1 << *(a2 + 32);
          v33 = v30 & ~v32;
          if (((*(v53 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
LABEL_24:

            v8 = v43;
            v3 = v44;
            a2 = v31;
            v5 = v51;
            v20 = v41;
            v15 = v42;
            goto LABEL_25;
          }

          v34 = ~v32;
          while (1)
          {
            v35 = *(*(v31 + 48) + 8 * v33);
            v36 = static NSObject.== infix(_:_:)();

            if (v36)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v53 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v8 = v43;
          v3 = v44;
          a2 = v31;
          v5 = v51;
          v15 = v42;
        }

        else
        {
LABEL_25:
          *&v48[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
          if (__OFADD__(v49++, 1))
          {
            __break(1u);
          }
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v50)
      {
        v38 = sub_100041040(v48, v8, v49, v5);
        goto LABEL_30;
      }

      v19 = *(v12 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v40 = swift_slowAlloc();

  v38 = sub_10003B9A8(v40, v8, v5, a2);

LABEL_30:

  return v38;
}

uint64_t sub_10003D890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E30(&qword_100063A58, &unk_10004EAD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D900(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_10003D90C()
{
  result = qword_100063A80;
  if (!qword_100063A80)
  {
    sub_100010734(255, &qword_100063A70, EKSharee_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A80);
  }

  return result;
}

uint64_t sub_10003D974()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_10003DA68(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100007CBC;

  return sub_100036888(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_10003DB94(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10003DBA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10003DBF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003DC44()
{
  result = qword_100063A88;
  if (!qword_100063A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarStatusSource.EventWithReason.Reason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CalendarStatusSource.EventWithReason.Reason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003DE14()
{
  result = qword_100063A90;
  if (!qword_100063A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A90);
  }

  return result;
}

uint64_t sub_10003DE70(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);

  result = swift_beginAccess();
  v7 = 0;
  for (i = (v3 + 63) >> 6; v5; result = )
  {
    v9 = v7;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_bridgeObjectRetain_n();
    sub_10001B17C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      swift_endAccess();
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003DFAC(void *a1, void *a2)
{
  v4 = a2[15];
  sub_100005E78(a2 + 11, a2[14]);

  return sub_100042D74(a1, 1, a2);
}

uint64_t sub_10003E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[1] = a3;
  v9 = type metadata accessor for ContactPerson();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  type metadata accessor for PeopleBiomeEventIndexer();
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a5;
  *(v14 + 3) = sub_100042BF0;
  *(v14 + 4) = v12;
  (*(v10 + 32))(&v14[v13], v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  static PeopleBiomeEventIndexer.indexEvent(locationEvent:withPerson:withIndexer:completion:)();
}

uint64_t sub_10003E1C0(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, void (*a5)(void, void, void))
{
  v9 = type metadata accessor for StatusType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.daemon.getter();

    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49 = a4;
      v24 = v23;
      v52 = swift_slowAlloc();
      *v24 = 136315394;
      (*(v10 + 104))(v13, enum case for StatusType.location(_:), v9);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
      LODWORD(v47) = v22;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = a3;
      v27 = v26;
      (*(v10 + 8))(v13, v9);
      v28 = sub_10002580C(v25, v27, &v52);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_10002580C(v29, v30, &v52);

      *(v24 + 14) = v31;
      a3 = v48;
      _os_log_impl(&_mh_execute_header, v21, v47, "'%s' event error: %s", v24, 0x16u);
      swift_arrayDestroy();
    }

    (*(v50 + 8))(v18, v51);
    swift_errorRetain();
    a3(a1, 0, 1);
  }

  else
  {
    v48 = a5;
    v49 = a4;
    static PeopleLogger.daemon.getter();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v35 = 136315138;
      (*(v10 + 104))(v13, enum case for StatusType.location(_:), v9);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = a3;
      v39 = v38;
      (*(v10 + 8))(v13, v9);
      v40 = sub_10002580C(v36, v39, &v52);
      a3 = v37;

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v33, v34, "'%s' event consume complete", v35, 0xCu);
      sub_100003938(v47);
    }

    (*(v50 + 8))(v20, v51);
    v41 = ContactPerson.contact.getter();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 identifier];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0xE000000000000000;
    }

    a3(v44, v46, 0);
  }
}

uint64_t sub_10003E760(uint64_t *a1, uint64_t a2, int a3, void *a4)
{
  v40 = a4;
  v43 = a3;
  v7 = type metadata accessor for StatusType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v33 = a2;
    v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v4;
    v39 = v8;
    v15 = 0;
    v16 = v13 + 40;
    v35 = v14 - 1;
    v17 = _swiftEmptyArrayStorage;
    v36 = v13 + 40;
    do
    {
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= *(v13 + 16))
        {
          __break(1u);
          return result;
        }

        v20 = *(v18 - 1);
        v21 = *v18;
        v15 = v19 + 1;

        if (String.trimToNil()().value._object)
        {
          break;
        }

        v18 += 2;
        ++v19;
        if (v14 == v15)
        {
          v26 = v17[2] != 0;
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v41 = v17;
      v34 = v7;
      if ((result & 1) == 0)
      {
        result = sub_10000D6D4(0, v17[2] + 1, 1);
        v17 = v41;
      }

      v23 = v17[2];
      v22 = v17[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        result = sub_10000D6D4((v22 > 1), v23 + 1, 1);
        v24 = v23 + 1;
        v17 = v41;
      }

      v17[2] = v24;
      v25 = &v17[2 * v23];
      v25[4] = v20;
      v25[5] = v21;
      v7 = v34;
      v16 = v36;
    }

    while (v35 != v19);
    v26 = 1;
LABEL_14:
    v27 = v39;
    type metadata accessor for PeopleAnalytics();
    v28 = v37;
    (*(v27 + 104))(v37, enum case for StatusType.location(_:), v7);
    static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
    (*(v27 + 8))(v28, v7);
    if (v26 && (v43 & 1) != 0)
    {
      sub_10003EAE4(v40, v17);
    }
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    (*(v8 + 104))(v12, enum case for StatusType.location(_:), v7);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;

    v41 = v29;
    v42 = v31;
    (*(v8 + 8))(v12, v7);
    v32._object = 0x80000001000510D0;
    v32._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v32);
    static PeopleErrors.createError(_:code:)();

    return swift_willThrow();
  }
}

uint64_t sub_10003EAE4(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = &_swiftEmptySetSingleton;
  sub_100005E78((v2 + 168), *(v2 + 192));
  type metadata accessor for WidgetConfigurationReader();
  sub_10000D0E8();
  sub_1000077E8(v2 + 168, v9);
  v6 = swift_allocObject();
  sub_10000784C(v9, (v6 + 2));
  v6[7] = v5;
  v6[8] = a2;
  v6[9] = a1;
  v6[10] = v2;

  v7 = a1;

  dispatch thunk of Promise.then<A>(_:)();
}

uint64_t sub_10003EC2C()
{
  sub_100007E10((v0 + 2));
  v1 = v0[4];

  v2 = v0[5];

  sub_100003938(v0 + 6);
  sub_100003938(v0 + 11);
  sub_100003938(v0 + 16);
  sub_100003938(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_10003ECB8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10001DB84(a1, a2, Strong);
    swift_unknownObjectRelease();
  }

  static PeopleLogger.location.getter();
  v16 = a3;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33 = v10;
    v35 = v20;
    *v19 = 136380931;
    v21 = [v16 idsHandle];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v9;
    v24 = v23;

    v25 = sub_10002580C(v22, v24, &v35);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = BMFindMyLocationChangeEvent.reason.getter();
    v28 = sub_10002580C(v26, v27, &v35);

    *(v19 + 14) = v28;
    v9 = v34;
    _os_log_impl(&_mh_execute_header, v17, v18, "Event triggered widget refresh: %{private}s, %s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v11 + 8))(v14, v33);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_100014EE4(0, 0, v9, &unk_10004ED80, v30);
}

uint64_t sub_10003EFF0()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10003F0AC, 0, 0);
}

uint64_t sub_10003F0AC()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.location(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004810, v2, v1);
}

uint64_t sub_10003F164(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v11 = type metadata accessor for Logger();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v40 = a2;
  v41 = a3 + 16;
  sub_10001558C(sub_100042820, v39, v15);
  v16 = v6;
  swift_beginAccess();
  v17 = *(a3 + 16);

  v18 = sub_100041274(a4, v17);
  v19 = *(v18 + 16);
  v43 = v11;
  if (v19)
  {
    v20 = sub_100013DD0(v19, 0);
    v21 = sub_100014AC4(&v42, v20 + 4, v19, v18);
    sub_100014AB0();
    if (v21 == v19)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_5:
  v35 = v16;
  static PeopleLogger.location.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42 = v25;
    *v24 = 136315138;
    v26 = Array.description.getter();
    v28 = a4;
    v29 = sub_10002580C(v26, v27, &v42);

    *(v24 + 4) = v29;
    a4 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "location-sharing contact ids %s", v24, 0xCu);
    sub_100003938(v25);
  }

  (*(v38 + 8))(v14, v43);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v30 = swift_allocObject();
  v30[2] = v20;
  v30[3] = a4;
  v31 = v36;
  v32 = v37;
  v30[4] = v36;
  v30[5] = v32;

  v33 = v31;

  return Promise.__allocating_init(_:)();
}

uint64_t sub_10003F47C(void **a1)
{
  v1 = sub_10000C3F4(*a1);
  v2 = sub_10001E3F0(v1);

  sub_10003DE70(v2);
}

uint64_t sub_10003F4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = type metadata accessor for Logger();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10003F5B4, 0, 0);
}

uint64_t sub_10003F5B4()
{
  v37 = v0;
  v1 = *(v0 + 24);
  if (*(*(v0 + 16) + 16))
  {
    v2 = *(v0 + 72);
    static PeopleLogger.location.getter();

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 72);
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    if (v5)
    {
      v9 = *(v0 + 24);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36 = v11;
      *v10 = 136315138;
      v12 = Array.description.getter();
      v14 = sub_10002580C(v12, v13, &v36);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v3, v4, "location-sharing lookup task with %s", v10, 0xCu);
      sub_100003938(v11);
    }

    (*(v8 + 8))(v6, v7);
    v15 = *(v0 + 24);
    type metadata accessor for OSTransaction();
    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *(v16 + 16) = *(v0 + 32);
    *(v16 + 32) = v15;
    v17 = async function pointer to static OSTransaction.named(_:block:)[1];
    v18 = swift_task_alloc();
    *(v0 + 88) = v18;
    *v18 = v0;
    v18[1] = sub_10003F934;

    return static OSTransaction.named(_:block:)("com.apple.people.LocationStatusEventListener", 44, 2, &unk_10004ED58, v16);
  }

  else
  {
    v19 = *(v0 + 64);
    static PeopleLogger.location.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 56);
    v23 = *(v0 + 64);
    v25 = *(v0 + 48);
    if (v22)
    {
      v26 = *(v0 + 24);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315138;
      v29 = Array.description.getter();
      v31 = sub_10002580C(v29, v30, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "location-sharing: %s not in any widget", v27, 0xCu);
      sub_100003938(v28);
    }

    (*(v24 + 8))(v23, v25);
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_10003F934()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[10];

    v8 = v2[8];
    v7 = v2[9];

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_10003FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v6 = *(*(sub_100005E30(&qword_100062A80, &qword_10004ED60) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[6] = v7;
  v8 = *(v7 - 8);
  v3[7] = v8;
  v9 = *(v8 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v10 = async function pointer to static LocateFriend.isUpdateSignificant(event:with:)[1];
  v11 = swift_task_alloc();
  v3[10] = v11;
  *v11 = v3;
  v11[1] = sub_10003FBCC;

  return static LocateFriend.isUpdateSignificant(event:with:)(a1, a2 + 128);
}

uint64_t sub_10003FBCC(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10003FCCC, 0, 0);
}

uint64_t sub_10003FCCC()
{
  v48 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 88) == 1)
  {
    v2 = *(v0 + 72);
    static PeopleLogger.location.getter();
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (v6)
    {
      v45 = *(v0 + 72);
      v10 = *(v0 + 16);
      v11 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = [v10 idsHandle];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v8;
      v15 = v14;

      v16 = sub_10002580C(v13, v15, &v47);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v17 = BMFindMyLocationChangeEvent.reason.getter();
      v19 = sub_10002580C(v17, v18, &v47);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v4, v5, "Event significant: %s, %s", v11, 0x16u);
      swift_arrayDestroy();

      (*(v9 + 8))(v45, v44);
    }

    else
    {

      (*(v9 + 8))(v7, v8);
    }

    sub_10003ECB8(*(v0 + 24), *(v0 + 32), *(v0 + 16));
  }

  else
  {
    v20 = *(v0 + 64);
    static PeopleLogger.location.getter();
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v27 = *(v0 + 48);
    if (v24)
    {
      v28 = *(v0 + 16);
      v46 = *(v0 + 64);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      v31 = [v28 idsHandle];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10002580C(v32, v34, &v47);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v22, v23, "Update event not significant for %s", v29, 0xCu);
      sub_100003938(v30);

      (*(v25 + 8))(v46, v27);
    }

    else
    {

      (*(v25 + 8))(v26, v27);
    }

    v36 = *(v0 + 40);
    v37 = type metadata accessor for TaskPriority();
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    sub_100014EE4(0, 0, v36, &unk_10004ED70, v38);
  }

  v40 = *(v0 + 64);
  v39 = *(v0 + 72);
  v41 = *(v0 + 40);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1000400C0()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10004017C, 0, 0);
}

uint64_t sub_10004017C()
{
  (*(v0[3] + 104))(v0[4], enum case for StatusType.location(_:), v0[2]);
  type metadata accessor for MainActor();
  v0[5] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040234, v2, v1);
}

uint64_t sub_100040234()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  static MetricTemplate.updateStatusCount(for:signaled:)();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000402CC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for StatusType();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100040390, 0, 0);
}

void sub_100040390()
{
  v1 = v0[12];
  v2 = v0[10];
  v19 = v0[9];
  v3 = v0[7];
  v21 = v0[8];
  v4 = enum case for StatusType.location(_:);
  v5 = *(v0[11] + 104);
  v5(v1, enum case for StatusType.location(_:), v2);
  v6 = [objc_opt_self() findMyLocationChangeStream];
  v7 = sub_100005E30(&qword_100063BC8, &qword_10004ED30);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = BiomeStreamReader.init(statusType:readerStream:)();
  v0[13] = v10;
  v5(v1, v4, v2);
  v11 = swift_allocObject();
  v0[14] = v11;
  *(v11 + 16) = v3;
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v19;
  *(v12 + 24) = v21;
  v0[5] = v7;
  v13 = sub_100040B78();
  v0[2] = v10;
  v0[6] = v13;
  v14 = *(&async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + 1);
  v18 = &async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:) + async function pointer to dispatch thunk of ReindexCoordinator.reindex<A>(statusType:squashEvents:includeEvent:handleEvent:withReader:);

  v15 = swift_task_alloc();
  v0[16] = v15;
  sub_100040BDC();
  *v15 = v0;
  v15[1] = sub_1000405F4;
  v16 = v0[12];
  v17 = v0[8];

  __asm { BR              X8 }
}

uint64_t sub_1000405F4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 88);
  v7 = *(*v0 + 80);
  v9 = *v0;

  (*(v6 + 8))(v5, v7);
  sub_100003938((v1 + 16));

  return _swift_task_switch(sub_100040794, 0, 0);
}

uint64_t sub_100040794()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100040830(void *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = [a1 idsHandle];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v11[0] = v4;
    v11[1] = v6;
    __chkstk_darwin(v7);
    v10[2] = v11;
    v8 = sub_10001B0D0(sub_10002A294, v10, a2);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_100040900()
{
  v1 = *v0;
  _StringGuts.grow(_:)(46);
  v2._object = 0x80000001000510A0;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 10506;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  return 0;
}

uint64_t sub_1000409A4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100007CBC;

  return sub_1000402CC(a1, a2);
}

uint64_t sub_100040A4C(uint64_t a1, uint64_t a2)
{
  result = sub_10004272C(&qword_100063BC0, a2, type metadata accessor for LocationStatusEventListener);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100040AA4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100040AE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100040B24(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  ReindexCoordinator.indexer.getter();
  v5 = sub_1000415F4(a1, 0, v4);

  return v5;
}

unint64_t sub_100040B78()
{
  result = qword_100063BD0;
  if (!qword_100063BD0)
  {
    sub_100010594(&qword_100063BC8, &qword_10004ED30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063BD0);
  }

  return result;
}

unint64_t sub_100040BDC()
{
  result = qword_100063BD8;
  if (!qword_100063BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100063BD8);
  }

  return result;
}

uint64_t sub_100040C28(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100005E30(&qword_100062DA8, &qword_10004EAF0);
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

uint64_t sub_100040E1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100005E30(&qword_100062D70, &qword_10004DFB0);
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

uint64_t sub_100041040(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100005E30(&qword_100062D88, &unk_10004ED90);
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
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v4 + 48) + 16 * (v13 | (v11 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v9[5];
    Hasher.init(_seed:)();
    v20 = v17;
    NSObject.hash(into:)();
    Hasher._combine(_:)(v18);
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = v9[6] + 16 * v24;
    *v29 = v20;
    *(v29 + 8) = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
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

uint64_t sub_100041274(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_100041414(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_100042B84(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_100041414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          Hasher.init(_seed:)();

          String.hash(into:)();
          v14 = Hasher._finalize()();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_100040E1C(v26, a2, v25, a4);
}

uint64_t sub_1000415F4(void *a1, int a2, void *a3)
{
  v154 = a3;
  v5 = type metadata accessor for ContactPerson();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v151 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = &v134 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v134 - v14;
  v137 = v16;
  __chkstk_darwin(v13);
  v136 = &v134 - v17;
  v18 = type metadata accessor for StatusType();
  v144 = *(v18 - 8);
  v145 = v18;
  v19 = *(v144 + 64);
  __chkstk_darwin(v18);
  v143 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v147 = *(v21 - 1);
  v22 = v147[8];
  v23 = __chkstk_darwin(v21);
  v140 = (&v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v142 = &v134 - v26;
  v27 = __chkstk_darwin(v25);
  v155 = &v134 - v28;
  __chkstk_darwin(v27);
  v30 = &v134 - v29;
  static PeopleLogger.location.getter();
  v31 = a1;
  v32 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v152) = a1;
  v33 = os_log_type_enabled(v32, a1);
  v153 = v21;
  v141 = a2;
  v139 = v12;
  v138 = v15;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v156 = v150;
    *v34 = 136380931;
    v35 = [v31 idsHandle];
    v36 = v31;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = v37;
    v31 = v36;
    v41 = sub_10002580C(v40, v39, &v156);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = BMFindMyLocationChangeEvent.reason.getter();
    v44 = sub_10002580C(v42, v43, &v156);

    *(v34 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v32, v152, "Got location change event for handle %{private}s: %s", v34, 0x16u);
    swift_arrayDestroy();

    v45 = v30;
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    v146 = v147[1];
    (v146)(v45, v21);
  }

  else
  {

    v146 = v147[1];
    (v146)(v30, v21);
    p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  }

  v47 = objc_opt_self();
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10004D790;
  v49 = [v31 p_weak_ivar_lyt[402]];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = [v47 predicateForContactsMatchingHandleStrings:isa];

  v55 = v154[10];
  sub_100005E78(v154 + 6, v154[9]);
  v56 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v152 = v31;
  v135 = v54;
  v155 = v5;
  v150 = v6;
  if (v56 >> 62)
  {
    v133 = v56;
    v57 = _CocoaArrayWrapper.endIndex.getter();
    v56 = v133;
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v153;
  v59 = v147;
  if (v57)
  {
    v60 = v56;
    v156 = _swiftEmptyArrayStorage;
    sub_10000D754(0, v57 & ~(v57 >> 63), 0);
    if (v57 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v61 = 0;
    v54 = v156;
    v62 = v60;
    v148 = v6 + 32;
    v149 = v60 & 0xC000000000000001;
    v63 = v151;
    do
    {
      if (v149)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(v62 + 8 * v61 + 32);
      }

      v65 = v64;
      v66 = [v152 idsHandle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ContactPerson.init(contact:idsHandle:)();
      v156 = v54;
      v67 = v54[2];
      v68 = v54[3];
      if (v67 >= v68 >> 1)
      {
        sub_10000D754(v68 > 1, v67 + 1, 1);
        v54 = v156;
      }

      ++v61;
      v54[2] = v67 + 1;
      v6 = v150;
      v5 = v155;
      (*(v150 + 32))(v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v67, v63, v155);
      v58 = v153;
    }

    while (v57 != v61);
  }

  else
  {

    v54 = _swiftEmptyArrayStorage;
  }

  v69 = v142;
  if (!v54[2])
  {
    static PeopleLogger.daemon.getter();
    v85 = v152;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v140 = v54;
      v89 = v88;
      v153 = swift_slowAlloc();
      v156 = v153;
      *v89 = 136315395;
      v90 = v144;
      v91 = v145;
      v92 = *(v144 + 104);
      v151 = v86;
      v93 = v143;
      v92(v143, enum case for StatusType.location(_:), v145);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v150) = v87;
      v95 = v85;
      v96 = v94;
      v98 = v97;
      (*(v90 + 8))(v93, v91);
      v99 = sub_10002580C(v96, v98, &v156);

      *(v89 + 4) = v99;
      *(v89 + 12) = 2081;
      v100 = [v95 idsHandle];
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v104 = sub_10002580C(v101, v103, &v156);

      *(v89 + 14) = v104;
      v85 = v95;
      v105 = v151;
      _os_log_impl(&_mh_execute_header, v151, v150, "No contact for '%s' %{private}s; placeholder created", v89, 0x16u);
      swift_arrayDestroy();

      v54 = v140;

      (v146)(v142, v58);
    }

    else
    {

      (v146)(v69, v58);
    }

    v60 = v136;
    v124 = [v85 idsHandle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactPerson.init(contact:idsHandle:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v135;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_29:
      v127 = v54[2];
      v126 = v54[3];
      if (v127 >= v126 >> 1)
      {
        v54 = sub_1000224B8(v126 > 1, v127 + 1, 1, v54);
      }

      v54[2] = v127 + 1;
      (*(v6 + 32))(v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v127, v60, v5);
      v106 = v54[2];
      if (v106)
      {
        goto LABEL_24;
      }

LABEL_32:

      v123 = v154;
      goto LABEL_33;
    }

LABEL_36:
    v54 = sub_1000224B8(0, v54[2] + 1, 1, v54);
    goto LABEL_29;
  }

  v70 = v140;
  static PeopleLogger.daemon.getter();

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v156 = v153;
    *v73 = 134218242;
    *(v73 + 4) = v54[2];

    *(v73 + 12) = 2080;
    v74 = v143;
    v75 = v144;
    v76 = v145;
    (*(v144 + 104))(v143, enum case for StatusType.location(_:), v145);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v151) = v72;
    v78 = v54;
    v79 = v77;
    v81 = v80;
    (*(v75 + 8))(v74, v76);
    v82 = v79;
    v54 = v78;
    v83 = sub_10002580C(v82, v81, &v156);
    v6 = v150;

    *(v73 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v71, v151, "Found %ld valid contacts for '%s'", v73, 0x16u);
    sub_100003938(v153);

    v84 = v140;
  }

  else
  {

    v84 = v70;
  }

  (v146)(v84, v58);
  v59 = v135;
  v106 = v54[2];
  if (!v106)
  {
    goto LABEL_32;
  }

LABEL_24:
  v156 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v108 = *(v6 + 16);
  v107 = v6 + 16;
  v153 = v108;
  v109 = *(v107 + 64);
  v140 = v54;
  v110 = v54 + ((v109 + 32) & ~v109);
  v150 = *(v107 + 56);
  v151 = v109;
  v111 = (v109 + 24) & ~v109;
  v148 = (v137 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = v111;
  v146 = (v107 - 8);
  v147 = (v107 + 16);
  v112 = v139;
  v113 = v138;
  v114 = v152;
  do
  {
    v115 = v153;
    (v153)(v113, v110, v5);
    (v115)(v112, v113, v5);
    v116 = v148;
    v117 = swift_allocObject();
    *(v117 + 16) = v114;
    (*v147)(v117 + v149, v112, v5);
    *(v117 + v116) = v154;
    v118 = sub_100005E30(&qword_100063BE0, &qword_10004ED38);
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();
    v121 = v114;

    Promise.init(startBlock:)();
    (*v146)(v113, v5);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v122 = v156[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v5 = v155;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v110 += v150;
    --v106;
  }

  while (v106);

  v123 = v154;
  v59 = v135;
LABEL_33:
  sub_100005E30(&qword_100063BE0, &qword_10004ED38);
  static Promise.all(_:)();

  v128 = swift_allocObject();
  *(v128 + 16) = v123;
  *(v128 + 24) = v141 & 1;
  v129 = v152;
  *(v128 + 32) = v152;
  v130 = v129;

  v131 = dispatch thunk of Promise.then<A>(_:)();

  return v131;
}

uint64_t sub_10004272C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000427A4()
{
  sub_100003938((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100042820(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10003F47C(a1);
}

uint64_t sub_10004283C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004288C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007CBC;

  return sub_10003F4E4(a1, v4, v5, v7, v6);
}

uint64_t sub_10004294C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001ECE4;

  return sub_10003FA7C(v2, v3, v4);
}

uint64_t sub_1000429F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042A2C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001ECE4;

  return sub_1000400C0();
}

uint64_t sub_100042AD8()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100007CBC;

  return sub_10003EFF0();
}

uint64_t sub_100042B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100041414(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100042BB8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  v8 = a3 & 1;
  return v4(v7);
}

uint64_t sub_100042C30()
{
  v1 = type metadata accessor for ContactPerson();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100042CFC(uint64_t a1)
{
  v3 = *(type metadata accessor for ContactPerson() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return sub_10003E1C0(a1, v4, v5, v6, v7);
}

uint64_t sub_100042D74(void *a1, int a2, void *a3)
{
  v154 = a3;
  v5 = type metadata accessor for ContactPerson();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v151 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v8);
  v12 = &v134 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v134 - v14;
  v137 = v16;
  __chkstk_darwin(v13);
  v136 = &v134 - v17;
  v18 = type metadata accessor for StatusType();
  v144 = *(v18 - 8);
  v145 = v18;
  v19 = *(v144 + 64);
  __chkstk_darwin(v18);
  v143 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Logger();
  v147 = *(v21 - 1);
  v22 = v147[8];
  v23 = __chkstk_darwin(v21);
  v140 = (&v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23);
  v142 = &v134 - v26;
  v27 = __chkstk_darwin(v25);
  v155 = &v134 - v28;
  __chkstk_darwin(v27);
  v30 = &v134 - v29;
  static PeopleLogger.location.getter();
  v31 = a1;
  v32 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.default.getter();

  LODWORD(v152) = a1;
  v33 = os_log_type_enabled(v32, a1);
  v153 = v21;
  v141 = a2;
  v139 = v12;
  v138 = v15;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v156 = v150;
    *v34 = 136380931;
    v35 = [v31 idsHandle];
    v36 = v31;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = v37;
    v31 = v36;
    v41 = sub_10002580C(v40, v39, &v156);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = BMFindMyLocationChangeEvent.reason.getter();
    v44 = sub_10002580C(v42, v43, &v156);

    *(v34 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v32, v152, "Got location change event for handle %{private}s: %s", v34, 0x16u);
    swift_arrayDestroy();

    v45 = v30;
    p_weak_ivar_lyt = (&ScreenTimeStatusSource + 56);
    v146 = v147[1];
    (v146)(v45, v21);
  }

  else
  {

    v146 = v147[1];
    (v146)(v30, v21);
    p_weak_ivar_lyt = &ScreenTimeStatusSource.weak_ivar_lyt;
  }

  v47 = objc_opt_self();
  sub_100005E30(&qword_100062930, &qword_10004DB40);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10004D790;
  v49 = [v31 p_weak_ivar_lyt[402]];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = [v47 predicateForContactsMatchingHandleStrings:isa];

  v55 = v154[10];
  sub_100005E78(v154 + 6, v154[9]);
  v56 = dispatch thunk of ContactFetcherProtocol.contacts(withPredicate:includeImages:)();
  v152 = v31;
  v135 = v54;
  v155 = v5;
  v150 = v6;
  if (v56 >> 62)
  {
    v133 = v56;
    v57 = _CocoaArrayWrapper.endIndex.getter();
    v56 = v133;
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v153;
  v59 = v147;
  if (v57)
  {
    v60 = v56;
    v156 = _swiftEmptyArrayStorage;
    sub_10000D754(0, v57 & ~(v57 >> 63), 0);
    if (v57 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v61 = 0;
    v54 = v156;
    v62 = v60;
    v148 = v6 + 32;
    v149 = v60 & 0xC000000000000001;
    v63 = v151;
    do
    {
      if (v149)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(v62 + 8 * v61 + 32);
      }

      v65 = v64;
      v66 = [v152 idsHandle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      ContactPerson.init(contact:idsHandle:)();
      v156 = v54;
      v67 = v54[2];
      v68 = v54[3];
      if (v67 >= v68 >> 1)
      {
        sub_10000D754(v68 > 1, v67 + 1, 1);
        v54 = v156;
      }

      ++v61;
      v54[2] = v67 + 1;
      v6 = v150;
      v5 = v155;
      (*(v150 + 32))(v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v67, v63, v155);
      v58 = v153;
    }

    while (v57 != v61);
  }

  else
  {

    v54 = _swiftEmptyArrayStorage;
  }

  v69 = v142;
  if (!v54[2])
  {
    static PeopleLogger.daemon.getter();
    v85 = v152;

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v140 = v54;
      v89 = v88;
      v153 = swift_slowAlloc();
      v156 = v153;
      *v89 = 136315395;
      v90 = v144;
      v91 = v145;
      v92 = *(v144 + 104);
      v151 = v86;
      v93 = v143;
      v92(v143, enum case for StatusType.location(_:), v145);
      sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
      v94 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v150) = v87;
      v95 = v85;
      v96 = v94;
      v98 = v97;
      (*(v90 + 8))(v93, v91);
      v99 = sub_10002580C(v96, v98, &v156);

      *(v89 + 4) = v99;
      *(v89 + 12) = 2081;
      v100 = [v95 idsHandle];
      v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v103 = v102;

      v104 = sub_10002580C(v101, v103, &v156);

      *(v89 + 14) = v104;
      v85 = v95;
      v105 = v151;
      _os_log_impl(&_mh_execute_header, v151, v150, "No contact for '%s' %{private}s; placeholder created", v89, 0x16u);
      swift_arrayDestroy();

      v54 = v140;

      (v146)(v142, v58);
    }

    else
    {

      (v146)(v69, v58);
    }

    v60 = v136;
    v124 = [v85 idsHandle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    ContactPerson.init(contact:idsHandle:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v135;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_29:
      v127 = v54[2];
      v126 = v54[3];
      if (v127 >= v126 >> 1)
      {
        v54 = sub_1000224B8(v126 > 1, v127 + 1, 1, v54);
      }

      v54[2] = v127 + 1;
      (*(v6 + 32))(v54 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v127, v60, v5);
      v106 = v54[2];
      if (v106)
      {
        goto LABEL_24;
      }

LABEL_32:

      v123 = v154;
      goto LABEL_33;
    }

LABEL_36:
    v54 = sub_1000224B8(0, v54[2] + 1, 1, v54);
    goto LABEL_29;
  }

  v70 = v140;
  static PeopleLogger.daemon.getter();

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    v156 = v153;
    *v73 = 134218242;
    *(v73 + 4) = v54[2];

    *(v73 + 12) = 2080;
    v74 = v143;
    v75 = v144;
    v76 = v145;
    (*(v144 + 104))(v143, enum case for StatusType.location(_:), v145);
    sub_10004272C(&qword_100062708, 255, &type metadata accessor for StatusType);
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    LODWORD(v151) = v72;
    v78 = v54;
    v79 = v77;
    v81 = v80;
    (*(v75 + 8))(v74, v76);
    v82 = v79;
    v54 = v78;
    v83 = sub_10002580C(v82, v81, &v156);
    v6 = v150;

    *(v73 + 14) = v83;
    _os_log_impl(&_mh_execute_header, v71, v151, "Found %ld valid contacts for '%s'", v73, 0x16u);
    sub_100003938(v153);

    v84 = v140;
  }

  else
  {

    v84 = v70;
  }

  (v146)(v84, v58);
  v59 = v135;
  v106 = v54[2];
  if (!v106)
  {
    goto LABEL_32;
  }

LABEL_24:
  v156 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v108 = *(v6 + 16);
  v107 = v6 + 16;
  v153 = v108;
  v109 = *(v107 + 64);
  v140 = v54;
  v110 = v54 + ((v109 + 32) & ~v109);
  v150 = *(v107 + 56);
  v151 = v109;
  v111 = (v109 + 24) & ~v109;
  v148 = (v137 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = v111;
  v146 = (v107 - 8);
  v147 = (v107 + 16);
  v112 = v139;
  v113 = v138;
  v114 = v152;
  do
  {
    v115 = v153;
    (v153)(v113, v110, v5);
    (v115)(v112, v113, v5);
    v116 = v148;
    v117 = swift_allocObject();
    *(v117 + 16) = v114;
    (*v147)(v117 + v149, v112, v5);
    *(v117 + v116) = v154;
    v118 = sub_100005E30(&qword_100063BE0, &qword_10004ED38);
    v119 = *(v118 + 48);
    v120 = *(v118 + 52);
    swift_allocObject();
    v121 = v114;

    Promise.init(startBlock:)();
    (*v146)(v113, v5);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v122 = v156[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v5 = v155;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v110 += v150;
    --v106;
  }

  while (v106);

  v123 = v154;
  v59 = v135;
LABEL_33:
  sub_100005E30(&qword_100063BE0, &qword_10004ED38);
  static Promise.all(_:)();

  v128 = swift_allocObject();
  *(v128 + 16) = v123;
  *(v128 + 24) = v141 & 1;
  v129 = v152;
  *(v128 + 32) = v152;
  v130 = v129;

  v131 = dispatch thunk of Promise.then<A>(_:)();

  return v131;
}

uint64_t sub_100043EAC()
{
  v1 = type metadata accessor for ContactPerson();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100043F84(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ContactPerson() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_10003E00C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_100044034()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000440A4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100010734(0, &qword_100063DF8, CHHandle_ptr);
    sub_100046F98();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v29;
    v27 = v28;
    v3 = v30;
    v4 = v31;
    v5 = v32;
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
    v27 = a1;

    v4 = 0;
  }

  v25 = v3;
  v26 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = v4;
  while (v27 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100010734(0, &qword_100063DF8, CHHandle_ptr), swift_dynamicCast(), v17 = v33, v4 = v9, v16 = v5, !v33))
    {
LABEL_27:
      sub_100014AB0();
      return v26;
    }

LABEL_19:
    v18 = [v17 normalizedValue];
    if (v18)
    {
      v19 = v18;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = String.trimToNil()();
      countAndFlagsBits = v20.value._countAndFlagsBits;
      object = v20.value._object;

      if (v20.value._object)
      {

LABEL_22:
        v21 = v26;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100022130(0, *(v26 + 2) + 1, 1, v26);
          v21 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_100022130((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v26 = v21;
        v24 = &v21[16 * v23];
        *(v24 + 4) = countAndFlagsBits;
        *(v24 + 5) = object;
        v5 = v16;
        goto LABEL_8;
      }
    }

    v10 = [v17 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = String.trimToNil()();
    countAndFlagsBits = v11.value._countAndFlagsBits;
    object = v11.value._object;

    v9 = v4;
    v5 = v16;
    if (v11.value._object)
    {
      goto LABEL_22;
    }
  }

  v14 = v9;
  v15 = v5;
  v4 = v9;
  if (v5)
  {
LABEL_15:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v27 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v2 + 8 * v4);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

id sub_1000443B8()
{
  result = [objc_allocWithZone(CHManager) init];
  qword_100065590 = result;
  return result;
}

uint64_t sub_100044410()
{
  if (*(v0 + 32))
  {
    _print_unlocked<A, B>(_:_:)();
    v2 = 0;
    v1 = 0xE000000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
    v2 = 4271950;
  }

  _StringGuts.grow(_:)(63);
  v3._countAndFlagsBits = 0xD000000000000029;
  v3._object = 0x80000001000511B0;
  String.append(_:)(v3);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x80000001000511E0;
  v4._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v2;
  v5._object = v1;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10506;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t sub_100044564(void *a1)
{
  v3 = type metadata accessor for StatusType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005E30(&qword_100062A80, &qword_10004ED60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v27 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = sub_100047118(a1);
  if (*(v18 + 2))
  {
    v27[0] = *(v18 + 2);
    v19 = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10001E138(v1, v19, Strong);

      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      sub_100014EE4(0, 0, v11, &unk_10004EF28, v22);
      swift_unknownObjectRelease();
    }

    else
    {

      static PeopleLogger.common.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "Where is our status delegate?", v25, 2u);
      }

      (*(v13 + 8))(v17, v12);
    }
  }

  else
  {
  }

  type metadata accessor for PeopleAnalytics();
  (*(v4 + 104))(v7, enum case for StatusType.missedCall(_:), v3);
  static PeopleAnalytics.eventReceived(foundContacts:statusType:)();
  (*(v4 + 8))(v7, v3);
  sub_100005E30(&qword_100062750, &qword_10004D990);
  v27[5] = 0;
  v28 = 0;
  return Promise.__allocating_init(with:)();
}

uint64_t sub_100044A4C()
{
  v1 = type metadata accessor for StatusType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100044B08, 0, 0);
}