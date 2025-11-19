void sub_1004166A8()
{
  v1 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 contactStore];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers) = &_swiftEmptySetSingleton;
  v4 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  type metadata accessor for Date();
  sub_10000C87C(v0 + v4);
  sub_10000C87C(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate);
  v5 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  type metadata accessor for UUID();
  sub_10026D814(&unk_1006AB1A0, &unk_100586F30);
  sub_10000F198(&qword_1006A3BE0, &type metadata accessor for UUID);
  *(v0 + v5) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType) = 1;
  v6 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10041687C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  sub_10000AF9C(v9, qword_1006BA6D0);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
    swift_beginAccess();
    v16 = *&v10[v15];

    v17 = Set.description.getter();
    v19 = v18;

    v20 = sub_10002741C(v17, v19, &v40);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Removing all voicemail notifications. Current notification identifiers: %s", v13, 0xCu);
    sub_100009B7C(v14);
  }

  v0 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  swift_beginAccess();
  v38 = v0;
  v39 = v10;
  v21 = *&v0[v10];
  v22 = 1 << *(v21 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v21 + 56);
  v25 = &v10[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification];
  v26 = (v22 + 63) >> 6;

  v27 = 0;
  while (v24)
  {
    v28 = v24;
LABEL_14:
    v24 = (v28 - 1) & v28;
    v30 = *v25;
    if (*v25)
    {
      v31 = (*(v21 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v32 = *v31;
      v33 = v31[1];
      v34 = *(v25 + 1);

      sub_1000115CC(v30);
      v35 = v32;
      v0 = v34;
      v30(v35, v33);
      sub_1000051F8(v30);
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v29 >= v26)
    {
      break;
    }

    v28 = *(v21 + 56 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_14;
    }
  }

  v36 = *&v38[v39];
  *&v38[v39] = &_swiftEmptySetSingleton;
}

uint64_t sub_100416C2C(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
    v13 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v12);
    if ((*(v13 + 32))(v12, v13))
    {
      v14 = a1[3];
      v15 = a1[4];
      sub_100009B14(a1, v14);
      v16 = (*(v15 + 72))(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    return v16 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100416DB8(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v3);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    v12 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
    v13 = *(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
    sub_100009B14((v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v12);
    if ((*(v13 + 32))(v12, v13))
    {
      v14 = a1[3];
      v15 = a1[4];
      sub_100009B14(a1, v14);
      v16 = (*(v15 + 80))(v14, v15);
    }

    else
    {
      v16 = 0;
    }

    return v16 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100416F44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v9 = &v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource];
  v12 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v13 = *&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v2[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v12);
  if (((*(v13 + 24))(v12, v13) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000AF9C(v18, qword_1006BA6D0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Voicemail is not subscribed", v21, 2u);
    }

    goto LABEL_21;
  }

  if (qword_1006A0B70 != -1)
  {
    goto LABEL_25;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA6D0);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    *(v17 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v15, v16, "Asked to post %ld voicemails", v17, 0xCu);
  }

  else
  {
  }

  v22 = *(a1 + 16);
  if (v22)
  {
    if (v22 == 1)
    {
      sub_1002E9780(a1, &v33);
      if (v34)
      {
        sub_10002F0C8(&v33, v35);
        v23 = v2;
        sub_10041757C(v35, 1, v23, v23);
        sub_100009B7C(v35);
      }

      else
      {
        sub_100009A04(&v33, &qword_1006AB398, &qword_1005870C0);
      }

      return;
    }

    v24 = (a1 + 32);
    do
    {
      v25 = v2;
      sub_100417FAC(v24, 0, v25, v25);
      v24 += 5;
      --v22;
    }

    while (v22);
    v26 = *(v9 + 3);
    v27 = *(v9 + 4);
    sub_100009B14(v9, v26);
    v28 = (*(v27 + 88))(v26, v27);
    if (v28 >= 1)
    {
      v29 = v28;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v30, v31, "Adding notification with count: %ld", v32, 0xCu);
      }

      v19 = sub_100418C14(v29, 0);
      sub_100418F74(v19);
LABEL_21:
    }
  }
}

void sub_1004173A4(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v6);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
    v14 = a1[3];
    v15 = a1[4];
    sub_100009B14(a1, v14);
    v19[1] = (*(v15 + 40))(v14, v15);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = sub_10044F628(v16, v17, a2, 0);
    [v18 setDestinations:15];
    sub_100418F74(v18);
  }

  else
  {
    __break(1u);
  }
}

void sub_10041757C(void *a1, int a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  v10 = sub_100419534(a1, a2);
  v11 = [objc_allocWithZone(TUIntentController) initWithContactProvider:*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore)];
  sub_100009AB0(a1, aBlock);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v12 = v72[0];
    v67 = _swiftEmptyArrayStorage;
    if ([v72[0] csd_callbackHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ([v12 csd_senderHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [v11 voicemailStartCallIntentByHandleForHandles:isa];

    sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
    sub_1002E932C();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100413728(v15, &v67);
    v17 = v16;
    v65 = v18;

    if (v17)
    {
      v63 = v9;
      v64 = v11;

      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA6D0);
      v20 = v12;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 identifier];

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved intent; updating notification content for voicemail message with identifier %lu", v23, 0xCu);
      }

      else
      {

        v21 = v20;
      }

      v47 = v65;

      if ([*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
      {
        sub_100006AF0(0, &qword_1006AB408, INInteraction_ptr);
        v48 = v65;
        v49 = sub_10041B138(v48, 0);
        [v49 setDirection:2];
        sub_100009AB0(a1, v72);
        v50 = swift_allocObject();
        v50[2] = v10;
        v50[3] = v48;
        v50[4] = sub_100421164;
        v50[5] = v8;
        sub_10002F0C8(v72, (v50 + 6));
        v50[11] = v20;
        v70 = sub_1004211A4;
        v71 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004582CC;
        v69 = &unk_10062FE80;
        v51 = _Block_copy(aBlock);
        v52 = v20;
        v53 = v48;
        v54 = v10;

        [v49 donateInteractionWithCompletion:v51];

        _Block_release(v51);

        return;
      }

      aBlock[0] = 0;
      v55 = [v10 contentByUpdatingWithProvider:v65 error:aBlock];
      if (v55)
      {
        v56 = v55;
        v57 = aBlock[0];
        sub_1004189DC();
      }

      else
      {
        v58 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v59 = v20;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          *(v62 + 4) = [v59 identifier];

          _os_log_impl(&_mh_execute_header, v60, v61, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v62, 0xCu);
          v47 = v65;
        }

        else
        {

          v60 = v59;
        }

        sub_1004189DC();
      }
    }

    else
    {
      v66 = v12;
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA6D0);
      sub_100009AB0(a1, aBlock);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        v41 = v9;
        v43 = v69;
        v42 = v70;
        sub_100009B14(aBlock, v69);
        v44 = *(v42 + 5);
        v45 = v42;
        v9 = v41;
        v46 = v44(v43, v45);
        sub_100009B7C(aBlock);
        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cound not retrieve intent; using original notification content for voicemail message with identifier %lu", v40, 0xCu);
      }

      else
      {
        sub_100009B7C(aBlock);
      }

      sub_1004189DC();
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA6D0);
    sub_100009AB0(a1, aBlock);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = v9;
      v29 = v11;
      v30 = v10;
      v31 = v69;
      v32 = v70;
      sub_100009B14(aBlock, v69);
      v33 = *(v32 + 5);
      v34 = v31;
      v9 = v28;
      v35 = v32;
      v10 = v30;
      v11 = v29;
      v36 = v33(v34, v35);
      sub_100009B7C(aBlock);
      *(v27 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cound not retrieve voicemail message; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {
      sub_100009B7C(aBlock);
    }

    sub_1004189DC();
  }
}

void sub_100417FAC(void *a1, int a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a4;
  v10 = sub_100419534(a1, a2);
  v11 = [objc_allocWithZone(TUIntentController) initWithContactProvider:*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_contactStore)];
  sub_100009AB0(a1, aBlock);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
  if (swift_dynamicCast())
  {
    v12 = v72[0];
    v67 = _swiftEmptyArrayStorage;
    if ([v72[0] csd_callbackHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ([v12 csd_senderHandle])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = [v11 voicemailStartCallIntentByHandleForHandles:isa];

    sub_100006AF0(0, &unk_1006AB3F8, INStartCallIntent_ptr);
    sub_1002E932C();
    v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100413728(v15, &v67);
    v17 = v16;
    v65 = v18;

    if (v17)
    {
      v63 = v9;
      v64 = v11;

      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000AF9C(v19, qword_1006BA6D0);
      v20 = v12;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = [v20 identifier];

        _os_log_impl(&_mh_execute_header, v21, v22, "Retrieved intent; updating notification content for voicemail message with identifier %lu", v23, 0xCu);
      }

      else
      {

        v21 = v20;
      }

      v47 = v65;

      if ([*(a3 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
      {
        sub_100006AF0(0, &qword_1006AB408, INInteraction_ptr);
        v48 = v65;
        v49 = sub_10041B138(v48, 0);
        [v49 setDirection:2];
        sub_100009AB0(a1, v72);
        v50 = swift_allocObject();
        v50[2] = v10;
        v50[3] = v48;
        v50[4] = sub_1004211A8;
        v50[5] = v8;
        sub_10002F0C8(v72, (v50 + 6));
        v50[11] = v20;
        v70 = sub_100421370;
        v71 = v50;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1004582CC;
        v69 = &unk_10062FF48;
        v51 = _Block_copy(aBlock);
        v52 = v20;
        v53 = v48;
        v54 = v10;

        [v49 donateInteractionWithCompletion:v51];

        _Block_release(v51);

        return;
      }

      aBlock[0] = 0;
      v55 = [v10 contentByUpdatingWithProvider:v65 error:aBlock];
      if (v55)
      {
        v56 = v55;
        v57 = aBlock[0];
        sub_1004189DC();
      }

      else
      {
        v58 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v59 = v20;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          *(v62 + 4) = [v59 identifier];

          _os_log_impl(&_mh_execute_header, v60, v61, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v62, 0xCu);
          v47 = v65;
        }

        else
        {

          v60 = v59;
        }

        sub_1004189DC();
      }
    }

    else
    {
      v66 = v12;
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000AF9C(v37, qword_1006BA6D0);
      sub_100009AB0(a1, aBlock);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        v41 = v9;
        v43 = v69;
        v42 = v70;
        sub_100009B14(aBlock, v69);
        v44 = *(v42 + 5);
        v45 = v42;
        v9 = v41;
        v46 = v44(v43, v45);
        sub_100009B7C(aBlock);
        *(v40 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v38, v39, "Cound not retrieve intent; using original notification content for voicemail message with identifier %lu", v40, 0xCu);
      }

      else
      {
        sub_100009B7C(aBlock);
      }

      sub_1004189DC();
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000AF9C(v24, qword_1006BA6D0);
    sub_100009AB0(a1, aBlock);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      v28 = v9;
      v29 = v11;
      v30 = v10;
      v31 = v69;
      v32 = v70;
      sub_100009B14(aBlock, v69);
      v33 = *(v32 + 5);
      v34 = v31;
      v9 = v28;
      v35 = v32;
      v10 = v30;
      v11 = v29;
      v36 = v33(v34, v35);
      sub_100009B7C(aBlock);
      *(v27 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v25, v26, "Cound not retrieve voicemail message; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {
      sub_100009B7C(aBlock);
    }

    sub_1004189DC();
  }
}

void sub_1004189DC()
{
  sub_100005EF4();
  v33 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v35 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v35);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  sub_10000C4C4();
  v34 = *&v5[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  sub_100009AB0(v9, v37);
  v23 = swift_allocObject();
  *(v23 + 16) = v5;
  sub_10002F0C8(v37, v23 + 24);
  *(v23 + 64) = v7;
  v36[4] = v3;
  v36[5] = v23;
  sub_100006028();
  v36[1] = 1107296256;
  sub_10000A600();
  v36[2] = v24;
  v36[3] = v33;
  v25 = _Block_copy(v36);
  v26 = v5;
  v27 = v7;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v28, v29);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100035C08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v30 = *(v13 + 8);
  v31 = sub_100007764();
  v32(v31);
  (*(v19 + 8))(v0, v35);

  sub_100005EDC();
}

id sub_100418C14(uint64_t a1, char a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v24 - v7;
  v9 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0xD000000000000014, 0x8000000100576650);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  *(v10 + 56) = &type metadata for Int;
  *(v10 + 64) = &protocol witness table for Int;
  *(v10 + 32) = a1;
  String.init(format:_:)();

  v11 = String._bridgeToObjectiveC()();

  [v9 setBody:v11];

  sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  v12 = String._bridgeToObjectiveC()();

  [v9 setTitle:v12];

  if (qword_1006A0BF0 != -1)
  {
    swift_once();
  }

  v13 = String._bridgeToObjectiveC()();
  [v9 setCategoryIdentifier:v13];

  URL.init(string:)();
  v14 = type metadata accessor for URL();
  v16 = 0;
  if (sub_100015468(v8, 1, v14) != 1)
  {
    URL._bridgeToObjectiveC()(v15);
    v16 = v17;
    (*(*(v14 - 8) + 8))(v8, v14);
  }

  [v9 setDefaultActionURL:v16];

  v18 = sub_10041B070();
  sub_1004554A0(v18, v19, v9);
  if (a2)
  {
    v20 = [objc_opt_self() soundWithAlertType:4];
    [v9 setSound:v20];
  }

  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v21 = v9;
  v22 = sub_10044F628(0xD000000000000012, 0x8000000100576670, v21, 0);
  [v22 setDestinations:15];

  return v22;
}

id sub_100418F74(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v9, v4);
  if (v10)
  {
    v13 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add);
    if (v13)
    {
      v14 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_add + 8);

      v13(a1);
      sub_1000051F8(v13);
    }

    v15 = [a1 identifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    sub_10001E84C();
    swift_endAccess();

    return [objc_opt_self() _resetCache];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10041914C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v4);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_4:
    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA6D0);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *(a1 + 16);

      _os_log_impl(&_mh_execute_header, v15, v16, "Asked to update %ld voicemail notifications", v17, 0xCu);
    }

    else
    {
    }

    v22 = *(a1 + 16);
    if (v22)
    {
      v23 = v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_replace;
      v24 = a1 + 32;
      v34 = v2;
      do
      {
        sub_100009AB0(v24, v37);
        v25 = sub_100419534(v37, 0);
        v26 = *v23;
        if (*v23)
        {
          v27 = *(v23 + 8);
          v29 = v38;
          v28 = v39;
          sub_100009B14(v37, v38);
          v35 = v25;
          v30 = v23;
          v31 = *(v28 + 40);

          v32 = v31(v29, v28);
          v23 = v30;
          v25 = v35;
          v36 = v32;
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v26(v33);
          sub_1000051F8(v26);
        }

        sub_100009B7C(v37);
        v24 += 40;
        --v22;
      }

      while (v22);
    }

    return;
  }

  v12 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v13 = *(v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((v2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v12);
  if ((*(v13 + 24))(v12, v13))
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000AF9C(v18, qword_1006BA6D0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Voicemail is not subscribed", v21, 2u);
  }
}

id sub_100419534(void *a1, int a2)
{
  v147 = a2;
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v144 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v145 = &v142 - v10;
  v11 = type metadata accessor for URL();
  v148 = *(v11 - 8);
  v149 = v11;
  v12 = *(v148 + 64);
  __chkstk_darwin(v11, v13);
  v143 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for UUID();
  v15 = *(v146 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v146, v17);
  v19 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  v27 = String._bridgeToObjectiveC()();

  [v26 setTitle:v27];

  v151 = v2;
  sub_10041AFDC(a1);
  v28 = String._bridgeToObjectiveC()();

  [v26 setBody:v28];

  v29 = a1[3];
  v30 = a1[4];
  sub_100009B14(a1, v29);
  (*(v30 + 32))(v29, v30);
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v21 + 8))(v25, v20);
  v150 = v26;
  [v26 setDate:isa];

  v32 = objc_opt_self();
  v33 = a1[3];
  v34 = a1[4];
  sub_100009B14(a1, v33);
  (*(v34 + 8))(v33, v34);
  v35 = UUID._bridgeToObjectiveC()().super.isa;
  (*(v15 + 8))(v19, v146);
  v36 = [v32 phoneAppVoicemailURLForMessageUUID:v35];

  if (v36)
  {
    v37 = v143;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v38);
    v36 = v39;
    (*(v148 + 8))(v37, v149);
  }

  v40 = v150;
  [v150 setDefaultActionURL:v36];

  v41 = sub_10041B070();
  sub_1004554A0(v41, v42, v40);
  *&v152 = 0xD000000000000015;
  *(&v152 + 1) = 0x8000000100576610;
  AnyHashable.init<A>(_:)();
  v43 = a1;
  v44 = v40;
  v45 = a1[3];
  v46 = a1[4];
  sub_100009B14(a1, v45);
  v47 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{(*(v46 + 40))(v45, v46)}];
  v48 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v153 = v48;
  *&v152 = v47;
  v49 = [v44 userInfo];
  v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v153)
  {
    sub_10003EBF0(&v152, &v155);
    swift_isUniquelyReferenced_nonNull_native();
    v154 = v50;
    sub_100378C74(&v155, v157);
    sub_100006780(v157);
  }

  else
  {
    sub_100009A04(&v152, &unk_1006A2D10, &unk_10057D940);
    v51 = sub_1000067D4();
    if (v52)
    {
      v53 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = v50;
      v55 = *(v50 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55);
      v56 = v154;
      sub_100006780(*(v154 + 48) + 40 * v53);
      sub_10003EBF0((*(v56 + 56) + 32 * v53), &v155);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v155 = 0u;
      v156 = 0u;
    }

    sub_100006780(v157);
    sub_100009A04(&v155, &unk_1006A2D10, &unk_10057D940);
  }

  v57 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v44 setUserInfo:v57];

  *&v152 = 0xD000000000000011;
  *(&v152 + 1) = 0x8000000100576630;
  AnyHashable.init<A>(_:)();
  v58 = a1[3];
  v59 = a1[4];
  sub_100009B14(a1, v58);
  v60 = [objc_allocWithZone(NSNumber) initWithDouble:{(*(v59 + 56))(v58, v59)}];
  v153 = v48;
  *&v152 = v60;
  v61 = [v44 userInfo];
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v153)
  {
    sub_10003EBF0(&v152, &v155);
    swift_isUniquelyReferenced_nonNull_native();
    v154 = v62;
    sub_100378C74(&v155, v157);
    sub_100006780(v157);
    v63 = &selRef_setParticipantRefreshBlock_;
  }

  else
  {
    sub_100009A04(&v152, &unk_1006A2D10, &unk_10057D940);
    v64 = sub_1000067D4();
    if (v65)
    {
      v66 = v64;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v154 = v62;
      v68 = *(v62 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v67, v68);
      v69 = v154;
      sub_100006780(*(v154 + 48) + 40 * v66);
      sub_10003EBF0((*(v69 + 56) + 32 * v66), &v155);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v155 = 0u;
      v156 = 0u;
    }

    v63 = &selRef_setParticipantRefreshBlock_;
    sub_100006780(v157);
    sub_100009A04(&v155, &unk_1006A2D10, &unk_10057D940);
  }

  v70 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v44 v63[455]];

  v71 = *(v151 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v72 = *(v151 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((v151 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v71);
  v73 = (*(v72 + 48))(a1, v71, v72);
  if (v74 >> 60 != 15)
  {
    v75 = v73;
    v76 = v74;
    strcpy(&v152, "voicemailData");
    HIWORD(v152) = -4864;
    AnyHashable.init<A>(_:)();
    v77 = Data._bridgeToObjectiveC()().super.isa;
    v153 = sub_100006AF0(0, &qword_1006A41C0, NSData_ptr);
    *&v152 = v77;
    v78 = [v44 userInfo];
    v79 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v153)
    {
      sub_10003EBF0(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v79;
      sub_100378C74(&v155, v157);
      sub_100006780(v157);
    }

    else
    {
      sub_100009A04(&v152, &unk_1006A2D10, &unk_10057D940);
      v80 = sub_1000067D4();
      if (v81)
      {
        v82 = v80;
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v79;
        v84 = *(v79 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        v85 = v84;
        v63 = &selRef_setParticipantRefreshBlock_;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v83, v85);
        v86 = v154;
        sub_100006780(*(v154 + 48) + 40 * v82);
        sub_10003EBF0((*(v86 + 56) + 32 * v82), &v155);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v155 = 0u;
        v156 = 0u;
      }

      sub_100006780(v157);
      sub_100009A04(&v155, &unk_1006A2D10, &unk_10057D940);
    }

    v87 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v44 v63[455]];
    sub_100290B6C(v75, v76);
  }

  v88 = v43[3];
  v89 = v43[4];
  sub_100009B14(v43, v88);
  v90 = (*(v89 + 88))(v88, v89);
  if (v90)
  {
    v91 = v90;
    v92 = [v90 URL];

    if (v92)
    {
      v93 = v144;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v94 = 0;
      v95 = v145;
      v97 = v148;
      v96 = v149;
    }

    else
    {
      v94 = 1;
      v95 = v145;
      v97 = v148;
      v96 = v149;
      v93 = v144;
    }

    sub_10000AF74(v93, v94, 1, v96);
    sub_100421108(v93, v95, &unk_1006A52C0, &unk_10057D930);
    if (sub_100015468(v95, 1, v96) != 1)
    {
      URL.absoluteString.getter();
      (*(v97 + 8))(v95, v96);
      *&v152 = 0xD000000000000010;
      *(&v152 + 1) = 0x800000010056FCF0;
      AnyHashable.init<A>(_:)();
      v107 = String._bridgeToObjectiveC()();

      v108 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
      v153 = v108;
      *&v152 = v107;
      v109 = [v44 userInfo];
      v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (v108)
      {
        sub_10003EBF0(&v152, &v155);
        swift_isUniquelyReferenced_nonNull_native();
        v154 = v110;
        sub_100378C74(&v155, v157);
        sub_100006780(v157);
      }

      else
      {
        sub_100009A04(&v152, &unk_1006A2D10, &unk_10057D940);
        v111 = sub_1000067D4();
        if (v112)
        {
          v113 = v111;
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v154 = v110;
          v115 = *(v110 + 24);
          sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
          v116 = v115;
          v63 = &selRef_setParticipantRefreshBlock_;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v114, v116);
          v117 = v154;
          sub_100006780(*(v154 + 48) + 40 * v113);
          sub_10003EBF0((*(v117 + 56) + 32 * v113), &v155);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          v155 = 0u;
          v156 = 0u;
        }

        sub_100006780(v157);
        sub_100009A04(&v155, &unk_1006A2D10, &unk_10057D940);
      }

      v99 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v44 v63[455]];
      goto LABEL_41;
    }

    sub_100009A04(v95, &unk_1006A52C0, &unk_10057D930);
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v98 = type metadata accessor for Logger();
  sub_10000AF9C(v98, qword_1006BA6D0);
  sub_100009AB0(v43, v157);
  v99 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v99, v100))
  {

    sub_100009B7C(v157);
    goto LABEL_42;
  }

  v101 = swift_slowAlloc();
  v102 = swift_slowAlloc();
  *&v155 = v102;
  *v101 = 136315138;
  sub_100009AB0(v157, &v152);
  sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
  v103 = String.init<A>(reflecting:)();
  v105 = v104;
  sub_100009B7C(v157);
  v106 = sub_10002741C(v103, v105, &v155);
  v44 = v150;

  *(v101 + 4) = v106;
  _os_log_impl(&_mh_execute_header, v99, v100, "[WARN] Could not generate dial request URL for voicemail: %s", v101, 0xCu);
  sub_100009B7C(v102);
  v63 = &selRef_setParticipantRefreshBlock_;

LABEL_41:

LABEL_42:
  v118 = v43[3];
  v119 = v43[4];
  sub_100009B14(v43, v118);
  v120 = (*(v119 + 48))(v118, v119);
  if (v121)
  {
    v122 = v120;
    v123 = v121;
    if (qword_1006A0BE0 != -1)
    {
      swift_once();
    }

    v124 = String._bridgeToObjectiveC()();
    [v44 setCategoryIdentifier:v124];

    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v125 = swift_allocObject();
    *(v125 + 16) = xmmword_10057D690;
    *(v125 + 32) = v122;
    *(v125 + 40) = v123;

    sub_100420F48(v125, v44);
    v126 = String._bridgeToObjectiveC()();
    [v44 setThreadIdentifier:v126];

    strcpy(&v152, "contactInfo");
    HIDWORD(v152) = -352321536;
    AnyHashable.init<A>(_:)();
    v127 = String._bridgeToObjectiveC()();

    v128 = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
    v153 = v128;
    *&v152 = v127;
    v129 = [v44 userInfo];
    v130 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v128)
    {
      sub_10003EBF0(&v152, &v155);
      swift_isUniquelyReferenced_nonNull_native();
      v154 = v130;
      sub_100378C74(&v155, v157);
      sub_100006780(v157);
    }

    else
    {
      sub_100009A04(&v152, &unk_1006A2D10, &unk_10057D940);
      v132 = sub_1000067D4();
      if (v133)
      {
        v134 = v132;
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v130;
        v136 = *(v130 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        v137 = v136;
        v63 = &selRef_setParticipantRefreshBlock_;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v135, v137);
        v138 = v154;
        sub_100006780(*(v154 + 48) + 40 * v134);
        sub_10003EBF0((*(v138 + 56) + 32 * v134), &v155);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        v155 = 0u;
        v156 = 0u;
      }

      sub_100006780(v157);
      sub_100009A04(&v155, &unk_1006A2D10, &unk_10057D940);
    }

    v131 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v44 v63[455]];
  }

  else
  {
    if (qword_1006A0BE8 != -1)
    {
      swift_once();
    }

    v131 = String._bridgeToObjectiveC()();
    [v44 setCategoryIdentifier:v131];
  }

  if (v147)
  {
    v139 = [objc_opt_self() soundWithAlertType:4];
    [v44 setSound:v139];
  }

  sub_10041A90C(v43);
  sub_100006AF0(0, &unk_1006AB3E0, UNNotificationAttachment_ptr);
  v140 = Array._bridgeToObjectiveC()().super.isa;

  [v44 setAttachments:v140];

  return v44;
}

void *sub_10041A90C(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = v32 - v11;
  __chkstk_darwin(v10, v13);
  v15 = v32 - v14;
  v33 = _swiftEmptyArrayStorage;
  v16 = a1[3];
  v17 = a1[4];
  sub_100009B14(a1, v16);
  (*(v17 + 64))(v16, v17);
  v18 = objc_opt_self();
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  URL.lastPathComponent.getter();
  v22 = String._bridgeToObjectiveC()();

  v23 = [v18 copyFileAtURL:v21 toTemporaryFileWithName:v22];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100006AF0(0, &unk_1006AB3E0, UNNotificationAttachment_ptr);
    v24 = a1[3];
    v25 = a1[4];
    sub_100009B14(a1, v24);
    v32[2] = (*(v25 + 40))(v24, v25);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v3 + 16))(v8, v12, v2);
    sub_10041AE20(v26, v28, v8, 0);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v30 = v33;
    v29 = *(v3 + 8);
    v29(v12, v2);
    v29(v15, v2);
  }

  else
  {
    (*(v3 + 8))(v15, v2);
    return _swiftEmptyArrayStorage;
  }

  return v30;
}

id sub_10041AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  if (a4)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v19 = 0;
  v11 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v9 options:v10.super.isa error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 8);
    v15 = v12;
    v14(a3, v13);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 8))(a3, v17);
  }

  return v11;
}

id sub_10041AFDC(void *a1)
{
  if (![*(v1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_featureFlags) vmCatchUpDonationEnabled])
  {
    return sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  }

  v3 = a1[3];
  v4 = a1[4];
  sub_100009B14(a1, v3);
  result = (*(v4 + 96))(v3, v4);
  if (!v6)
  {
    return sub_10031E958(0x49414D4543494F56, 0xE90000000000004CLL);
  }

  return result;
}

uint64_t sub_10041B070()
{
  swift_getObjectType();
  sub_10026D814(&unk_1006AB3D0, &unk_1005870E0);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_notificationType))
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

id sub_10041B138(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

void sub_10041B194(uint64_t a1, id a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
    swift_errorRetain();
    v12 = static OS_os_log.default.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v28 = a2;
      v15 = a4;
      v16 = a7;
      v17 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to donate interaction: %@", v14, 0xCu);
      sub_100009A04(v17, &unk_1006A2630, &qword_10057CB40);
      a7 = v16;
      a4 = v15;
    }

    else
    {
    }
  }

  v29 = 0;
  v19 = [a2 contentByUpdatingWithProvider:a3 error:{&v29, v28}];
  if (v19)
  {
    v20 = v19;
    v21 = v29;
    a4(a6, v20);
  }

  else
  {
    v22 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000AF9C(v23, qword_1006BA6D0);
    v24 = a7;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = [v24 identifier];

      _os_log_impl(&_mh_execute_header, v25, v26, "Could not update notification content; using original notification content for voicemail message with identifier %lu", v27, 0xCu);
    }

    else
    {

      v25 = v24;
    }

    a4(a6, a2);
  }
}

void *sub_10041B4D0()
{
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B510(_swiftEmptyArrayStorage);
  }

  else
  {
    v0 = &_swiftEmptySetSingleton;
  }

  v29 = v0;
  sub_10038A844();
  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(0xD000000000000016, 0x800000010056FB60);
  sub_100006AF0(0, &unk_1006AB3C0, UNNotificationActionIcon_ptr);
  sub_100392948();
  sub_1003929A4();
  v2 = v1;
  sub_10031E958(0xD000000000000025, 0x80000001005765E0);
  sub_100392948();
  sub_1003929A4();
  v4 = v3;
  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  if (qword_1006A0BE0 != -1)
  {
    swift_once();
  }

  v5 = qword_1006AB270;
  v6 = *algn_1006AB278;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057DEC0;
  *(v7 + 32) = v2;
  *(v7 + 40) = v4;
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  sub_100022D00();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;

  v11 = v2;
  v12 = v4;
  v13 = sub_1003890FC(v5, v6, v7, v8, 2);
  sub_10039634C(&v28, v13);

  if (qword_1006A0BE8 != -1)
  {
    swift_once();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10057CA80;
  *(v14 + 32) = v12;
  sub_100022D00();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10057D6A0;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  *(v15 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 56) = v17;
  v18 = v12;

  v19 = sub_100006B30();
  v21 = sub_1003890FC(v19, v20, v14, v15, 2);
  sub_10039634C(&v28, v21);

  if (qword_1006A0BF0 != -1)
  {
    swift_once();
  }

  v22 = qword_1006AB290;
  v23 = *algn_1006AB298;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10057D690;
  *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v24 + 40) = v25;

  v26 = sub_1003890FC(v22, v23, _swiftEmptyArrayStorage, v24, 2);
  sub_10039634C(&v28, v26);

  return v29;
}

void sub_10041B948()
{
  sub_100005EF4();
  v1 = v0;
  v98 = type metadata accessor for UUID();
  v2 = sub_100007FEC(v98);
  v95 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2, v6);
  sub_100007FDC();
  v94 = v8 - v7;
  v9 = sub_10026D814(&qword_1006AB3A0, &qword_1005870C8);
  v10 = sub_100007BF0(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_100007BAC();
  v99 = v14 - v15;
  __chkstk_darwin(v16, v17);
  v19 = &v84 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = sub_100007FEC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21, v26);
  sub_100007FDC();
  v29 = v28 - v27;
  v30 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *(v28 - v27) = v30;
  (*(v23 + 104))(v28 - v27, enum case for DispatchPredicate.onQueue(_:), v20);
  v31 = v30;
  v32 = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v29, v20);
  if (v32)
  {
    if (qword_1006A0B70 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_40;
  }

  while (1)
  {
    __break(1u);
LABEL_40:
    sub_10000860C();
LABEL_3:
    v33 = type metadata accessor for Logger();
    v34 = sub_10000AF9C(v33, qword_1006BA6D0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_100005274();
      v38 = swift_slowAlloc();
      v100 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_10002741C(0xD000000000000011, 0x8000000100576590, &v100);
      _os_log_impl(&_mh_execute_header, v35, v36, "%s", v37, 0xCu);
      sub_100009B7C(v38);
      sub_100005F40();
      sub_100005F40();
    }

    v39 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
    sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24]);
    v40 = *(v39 + 24);
    v41 = sub_10000667C();
    if (v42(v41, v39))
    {
      break;
    }

    v45 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
    swift_beginAccess();
    v46 = *&v1[v45];
    if (!*(v46 + 16))
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "No current unsubscribed voicemail info, attempting to update...", v49, 2u);
        sub_100005F40();
      }

      sub_10041C034();
      v46 = *&v1[v45];
    }

    v84 = v34;
    v85 = v1;
    v50 = v46 + 64;
    v51 = 1 << *(v46 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v46 + 64);
    v54 = (v51 + 63) >> 6;
    v89 = v95 + 32;
    v90 = v95 + 16;
    v96 = (v95 + 8);
    v93 = v46;

    v86 = 0;
    v87 = 0;
    v88 = v54;
    v55 = 0;
    v56 = 0;
    v1 = &qword_1006AB3A8;
    v57 = v99;
    v91 = v50;
    v92 = v19;
    while (v53)
    {
      v97 = v55;
      v58 = v56;
LABEL_19:
      v59 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v60 = v59 | (v58 << 6);
      v61 = v93;
      v62 = v94;
      v63 = v95;
      v64 = v98;
      (*(v95 + 16))(v94, *(v93 + 48) + *(v95 + 72) * v60, v98);
      v65 = *(v61 + 56) + 16 * v60;
      LOBYTE(v61) = *v65;
      v66 = *(v65 + 8);
      v67 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
      v68 = v99 + *(v67 + 48);
      v1 = &qword_1006AB3A8;
      (*(v63 + 32))(v99, v62, v64);
      *v68 = v61;
      *(v68 + 8) = v66;
      v57 = v99;
      sub_100007C20();
      sub_10000AF74(v69, v70, v71, v67);
      v50 = v91;
      v19 = v92;
      v55 = v97;
      v54 = v88;
LABEL_20:
      sub_100421108(v57, v19, &qword_1006AB3A0, &qword_1005870C8);
      v72 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
      if (sub_100015468(v19, 1, v72) == 1)
      {

        if (v55)
        {
          v44 = v87 & ~(v87 >> 63);
        }

        else
        {
          v44 = 0;
        }

        v1 = v85;
        v43 = v86;
        goto LABEL_34;
      }

      v73 = &v19[*(v72 + 48)];
      v74 = *v73;
      if (v74 == 1)
      {
        v75 = *(v73 + 1);
        if (v75 < 1)
        {
          v86 = 1;
        }

        else
        {
          v76 = __OFADD__(v87, v75);
          v87 += v75;
          if (v76)
          {
            goto LABEL_38;
          }
        }
      }

      v55 |= v74;
      (*v96)(v19, v98);
    }

    while (1)
    {
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v58 >= v54)
      {
        v77 = sub_10026D814(&qword_1006AB3A8, &unk_1005870D0);
        sub_10000AF74(v57, 1, 1, v77);
        v53 = 0;
        goto LABEL_20;
      }

      v53 = *(v50 + 8 * v58);
      ++v56;
      if (v53)
      {
        v97 = v55;
        v56 = v58;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  v43 = 0;
  v44 = 0;
LABEL_34:
  v78 = v1;
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = sub_10000777C();
    *v81 = 138412802;
    *(v81 + 4) = v78;
    *v82 = v78;
    *(v81 + 12) = 2048;
    *(v81 + 14) = v44;
    *(v81 + 22) = 1024;
    *(v81 + 24) = v43 & 1;
    v83 = v78;
    _os_log_impl(&_mh_execute_header, v79, v80, "%@ count: %ld isAmbiguous: %{BOOL}d", v81, 0x1Cu);
    sub_100009A04(v82, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  sub_100005EDC();
}

void sub_10041C034()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v50 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v40 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v19 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v18);
  if ((*(v19 + 24))(v18, v19))
  {
    return;
  }

  v20 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_telephonyClient];
  aBlock[0] = 0;
  v49 = v20;
  v21 = [v20 getSubscriptionInfoWithError:aBlock];
  if (!v21)
  {
    v39 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return;
  }

  v22 = v21;
  v23 = aBlock[0];
  v24 = sub_100420FB4(v22);
  if (!v24)
  {

    return;
  }

  v25 = v24;
  v26 = sub_10000B6F4(v24);
  if (v26)
  {
    v27 = v26;
    v40 = v22;
    if (v26 >= 1)
    {
      v28 = 0;
      v45 = v3 + 16;
      v46 = v25 & 0xC000000000000001;
      v43 = v3 + 32;
      v44 = v4 + 7;
      v41 = v3 + 8;
      v42 = v52;
      v47 = v1;
      v48 = v25;
      do
      {
        if (v46)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = *(v25 + 8 * v28 + 32);
        }

        v30 = v29;
        ++v28;
        v31 = [v29 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = v50;
        (*(v3 + 16))(v50, v9, v2);
        v33 = (*(v3 + 80) + 16) & ~*(v3 + 80);
        v34 = (v44 + v33) & 0xFFFFFFFFFFFFFFF8;
        v35 = swift_allocObject();
        (*(v3 + 32))(v35 + v33, v32, v2);
        v36 = v47;
        *(v35 + v34) = v47;
        v52[2] = sub_100421024;
        v52[3] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v52[0] = sub_10041DC10;
        v52[1] = &unk_10062FD18;
        v37 = _Block_copy(aBlock);
        v38 = v36;

        [v49 getVoicemailInfo:v30 completion:v37];
        _Block_release(v37);

        (*(v3 + 8))(v9, v2);
        v25 = v48;
      }

      while (v27 != v28);

      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }

LABEL_16:
}

void sub_10041C508()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  sub_10000C4C4();
  v18 = *&v0[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  sub_100009AB0(v3, v29);
  sub_100022D00();
  v19 = swift_allocObject();
  sub_10002F0C8(v29, v19 + 16);
  *(v19 + 56) = v0;
  v28[4] = sub_100420414;
  v28[5] = v19;
  sub_100006028();
  v28[1] = 1107296256;
  sub_10000A600();
  v28[2] = v20;
  v28[3] = &unk_10062FCC8;
  v21 = _Block_copy(v28);
  v22 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v23, v24);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100035C08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  v25 = *(v7 + 8);
  v26 = sub_100007764();
  v27(v26);
  (*(v14 + 8))(v1, v11);

  sub_100005EDC();
}

void sub_10041C734(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_100009B14(a1, v4);
  v61._countAndFlagsBits = (*(v5 + 8))(v4, v5);
  v6 = sub_100415DCC(v61);
  if (v6 != 2)
  {
    v10 = v6;
    v11 = a1[3];
    v12 = a1[4];
    sub_100009B14(a1, v11);
    v13 = (*(v12 + 16))(v11, v12);
    v15 = v14;
    v16 = HIBYTE(v14) & 0xF;
    v17 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {

      goto LABEL_78;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      LOBYTE(v55) = 0;
      v21 = sub_100420554(v13, v15, 10);
      v34 = v53;
LABEL_73:

      if ((v34 & 1) == 0)
      {
        v35 = (a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource);
        v36 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
        v37 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
        sub_100009B14((a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v36);
        (*(v37 + 72))(&v55, v21, v36, v37);
        if (v56)
        {
          sub_10002F0C8(&v55, v57);
          if (v10)
          {
            v38 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_callbackVoicemail);
            v39 = *(a2 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_callbackVoicemail + 8);

            v38(v57);
          }

          else
          {
            v51 = v35[3];
            v52 = v35[4];
            sub_100009B14(v35, v51);
            (*(v52 + 96))(v57, v51, v52);
          }

LABEL_84:
          sub_100009B7C(v57);
          return;
        }

        sub_100009A04(&v55, &qword_1006AB398, &qword_1005870C0);
      }

LABEL_78:
      if (qword_1006A0B70 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000AF9C(v40, qword_1006BA6D0);
      sub_100009AB0(a1, v57);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v55 = v44;
        *v43 = 136315138;
        v45 = v58;
        v46 = v59;
        sub_100009B14(v57, v58);
        v47 = (*(v46 + 16))(v45, v46);
        v49 = v48;
        sub_100009B7C(v57);
        v50 = sub_10002741C(v47, v49, &v55);

        *(v43 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v41, v42, "Could not find voicemail with identifier: %s", v43, 0xCu);
        sub_100009B7C(v44);

        return;
      }

      goto LABEL_84;
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v57[0] = v13;
      v57[1] = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v13 == 43)
      {
        if (v16)
        {
          if (--v16)
          {
            v21 = 0;
            v29 = v57 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_91:
        __break(1u);
        return;
      }

      if (v13 != 45)
      {
        if (v16)
        {
          v21 = 0;
          v32 = v57;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            v32 = (v32 + 1);
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v16)
      {
        if (--v16)
        {
          v21 = 0;
          v25 = v57 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v26;
            v21 = 10 * v21 - v26;
            if (!v24)
            {
              break;
            }

            ++v25;
            if (!--v16)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((v13 & 0x1000000000000000) != 0)
      {
        v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v19 = _StringObject.sharedUTF8.getter();
      }

      v20 = *v19;
      if (v20 == 43)
      {
        if (v17 >= 1)
        {
          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (v19)
            {
              v27 = v19 + 1;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  goto LABEL_71;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_71;
                }

                v24 = __CFADD__(10 * v21, v28);
                v21 = 10 * v21 + v28;
                if (v24)
                {
                  goto LABEL_71;
                }

                ++v27;
                if (!--v16)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_71;
        }

        goto LABEL_90;
      }

      if (v20 != 45)
      {
        if (v17)
        {
          v21 = 0;
          if (v19)
          {
            while (1)
            {
              v31 = *v19 - 48;
              if (v31 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_71;
              }

              v24 = __CFADD__(10 * v21, v31);
              v21 = 10 * v21 + v31;
              if (v24)
              {
                goto LABEL_71;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_71:
        v21 = 0;
        LOBYTE(v16) = 1;
        goto LABEL_72;
      }

      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          if (v19)
          {
            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_71;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                goto LABEL_71;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_63:
          LOBYTE(v16) = 0;
LABEL_72:
          LOBYTE(v55) = v16;
          v34 = v16;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA6D0);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unknown notification response received", v9, 2u);
  }
}

uint64_t type metadata accessor for VoicemailNotificationProvider()
{
  result = qword_1006AB318;
  if (!qword_1006AB318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10041CF9C()
{
  sub_100316450();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10041D0D4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v7 = sub_100007BF0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14, v15);
  v17 = &v51 - v16;
  if (v3)
  {
    if ([v3 isVoiceMailMWI])
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C();
      }

      v18 = type metadata accessor for Logger();
      sub_10000AF9C(v18, qword_1006BA6D0);
      v19 = v5;
      v20 = v3;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v52 = v1;
        v24 = v23;
        v25 = swift_slowAlloc();
        *v24 = 138412546;
        *(v24 + 4) = v20;
        *(v24 + 12) = 2112;
        *(v24 + 14) = v19;
        *v25 = v3;
        v25[1] = v5;
        v26 = v20;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v21, v22, "Handling voicemailInfoAvailableNotification voicemailInfo: %@, context: %@", v24, 0x16u);
        sub_10026D814(&unk_1006A2630, &qword_10057CB40);
        swift_arrayDestroy();
        sub_100005F40();
        v1 = v52;
        sub_100005F40();
      }

      v28 = [v20 count];
      v29 = [v28 integerValue];

      if (v29 && ([v20 available] & 1) != 0)
      {
        v30 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
        swift_beginAccess();
        sub_100270E18(v1 + v30, v17);
        v31 = type metadata accessor for Date();
        v32 = sub_100015468(v17, 1, v31);
        sub_100009A04(v17, &qword_1006A3C70, &unk_10057EA80);
        Date.init()();
        sub_100007C20();
        sub_10000AF74(v33, v34, v35, v31);
        swift_beginAccess();
        sub_1003B3734(v13, v1 + v30);
        swift_endAccess();
        v36 = [v20 count];
        v37 = [v36 integerValue];

        if ((v37 & 0x8000000000000000) != 0)
        {
          v42 = v32 == 1;
          v41 = 0;
        }

        else
        {
          v38 = v32 == 1;
          v39 = [v20 count];
          v40 = [v39 integerValue];

          v41 = v40;
          v42 = v38;
        }

        v50 = sub_100418C14(v41, v42);
        sub_100418F74(v50);
      }

      else
      {
        v48 = *(&v1->isa + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);
        if (v48)
        {
          v49 = *(&v1[1].isa + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_removeNotification);

          v48(0xD000000000000012, 0x8000000100576670);
          sub_1000051F8(v48);
        }
      }

      sub_10041C034();
      sub_100005EDC();
    }

    else
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C();
      }

      v43 = type metadata accessor for Logger();
      sub_10000AF9C(v43, qword_1006BA6D0);
      v52 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v52, v44, "Voicemail is not MWI - Ignoring voicemailInfoAvailableNotification", v45, 2u);
        sub_100005F40();
      }

      sub_100005EDC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10041D5B4(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v18);
  v20 = &v68 - v19;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000AF9C(v21, qword_1006BA6D0);
  v74 = v12[2];
  v75 = v12 + 2;
  v74(v20, a6, v11);
  v23 = a2;
  v76 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v72 = v25;
  v26 = os_log_type_enabled(v24, v25);
  v77 = v12;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v71 = v17;
    v28 = v12;
    v29 = v27;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79[0] = v70;
    *v29 = 136315650;
    sub_10000F198(&qword_1006A25E0, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v11;
    v32 = a1;
    v33 = a6;
    v34 = a7;
    v36 = v35;
    v37 = v28;
    v17 = v71;
    v38 = v20;
    v39 = v31;
    v73 = v37[1];
    v73(v38, v31);
    v40 = sub_10002741C(v30, v36, v79);
    a7 = v34;
    a6 = v33;
    a1 = v32;

    *(v29 + 4) = v40;
    *(v29 + 12) = 1024;
    *(v29 + 14) = v32 & 1;
    *(v29 + 18) = 2112;
    *(v29 + 20) = v23;
    v41 = v69;
    *v69 = v23;
    v42 = v23;
    _os_log_impl(&_mh_execute_header, v24, v72, "Got voicemail info for uuid %s to available: %{BOOL}d, count: %@", v29, 0x1Cu);
    sub_100009A04(v41, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v70);

    if ((v32 & 1) == 0)
    {
LABEL_5:
      v43 = 0;
      goto LABEL_8;
    }
  }

  else
  {

    v44 = v20;
    v39 = v11;
    v73 = v12[1];
    v73(v44, v11);
    if ((a1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v43 = [v23 integerValue];
LABEL_8:
  v45 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_unsubscribedVoicemailInfoForUUID;
  swift_beginAccess();
  v46 = sub_1002CBC08(a6, *(a7 + v45));
  if (v46 == 2)
  {
    swift_endAccess();
    v48 = v39;
    goto LABEL_15;
  }

  v49 = v47;
  v50 = v46 & 1;
  swift_endAccess();
  v51 = v50 == (a1 & 1) && v49 == v43;
  v48 = v39;
  if (v51)
  {
LABEL_15:
    swift_beginAccess();
    v52 = sub_1002CBC08(a6, *(a7 + v45));
    result = swift_endAccess();
    if (v52 != 2)
    {
      return result;
    }
  }

  v72 = a1;
  v74(v17, a6, v48);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    LODWORD(v75) = v55;
    v58 = v17;
    v76 = v57;
    v79[0] = v57;
    *v56 = 136315650;
    sub_10000F198(&qword_1006A25E0, &type metadata accessor for UUID);
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v60 = a7;
    v62 = v61;
    v73(v58, v48);
    v63 = sub_10002741C(v59, v62, v79);
    a7 = v60;

    *(v56 + 4) = v63;
    *(v56 + 12) = 1024;
    *(v56 + 14) = v72 & 1;
    *(v56 + 18) = 2048;
    *(v56 + 20) = v43;
    _os_log_impl(&_mh_execute_header, v54, v75, "Updating voicemail info for uuid %s to available: %{BOOL}d, count: %ld", v56, 0x1Cu);
    sub_100009B7C(v76);
  }

  else
  {

    v73(v17, v48);
  }

  swift_beginAccess();
  v64 = *(a7 + v45);
  swift_isUniquelyReferenced_nonNull_native();
  v78 = *(a7 + v45);
  sub_100379D9C();
  *(a7 + v45) = v78;
  result = swift_endAccess();
  v65 = *(a7 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  if (v65)
  {
    v66 = *(a7 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue + 8);

    v65(v67);
    return sub_1000051F8(v65);
  }

  return result;
}

void sub_10041DC10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v14 = a3;
  v13 = a5;
  v9(a2, v14, v10, v12, v13);
}

void *sub_10041DCCC(char *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v95 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v88 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = (&v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if ((v17 & 1) == 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
    goto LABEL_23;
  }

  v105 = &_swiftEmptySetSingleton;
  v106 = &_swiftEmptySetSingleton;
  v19 = *(v4 + 16);
  v91 = a1;
  v90 = v4 + 16;
  v89 = v19;
  v19(v10, a1, v3);
  v20 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  v93 = v4;
  v22 = *(v4 + 32);
  v94 = v3;
  v22(v21 + v20, v10, v3);
  v23 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v24 = *&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v23);
  v25 = *(v24 + 64);
  a1 = v1;
  v92 = v21;
  v26 = v25(sub_1004212CC, v21, v23, v24);
  v27 = v26;
  v99 = *(v26 + 16);
  if (v99)
  {
    v97 = v26 + 32;
    v98 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
    swift_beginAccess();
    v28 = 0;
    v16 = _swiftEmptyArrayStorage;
    v96 = _swiftEmptyArrayStorage;
    while (v28 < *(v27 + 16))
    {
      sub_100009AB0(v97 + 40 * v28, v102);
      v29 = *&a1[v98];
      v31 = v103;
      v30 = v104;
      sub_100009B14(v102, v103);
      v32 = *(v30 + 40);

      v33 = v32(v31, v30);
      if (*(v29 + 16))
      {
        v34 = v33;
        v35 = *(v29 + 40);
        v36 = static Hasher._hash(seed:_:)();
        v37 = ~(-1 << *(v29 + 32));
        while (1)
        {
          v38 = v36 & v37;
          if (((*(v29 + 56 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
          {
            break;
          }

          v36 = v38 + 1;
          if (*(*(v29 + 48) + 8 * v38) == v34)
          {

            sub_100009AB0(v102, v101);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = v96[2];
              sub_100470AAC();
              v96 = v57;
            }

            v39 = v96[2];
            if (v39 >= v96[3] >> 1)
            {
              sub_100470AAC();
              v96 = v58;
            }

            v40 = v96;
            v96[2] = v39 + 1;
            sub_10002F0C8(v101, &v40[5 * v39 + 4]);
            v41 = v103;
            v42 = v104;
            sub_100009B14(v102, v103);
            v43 = (*(v42 + 40))(v41, v42);
            goto LABEL_19;
          }
        }
      }

      sub_100009AB0(v102, v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = v16[2];
        sub_100470AAC();
        v16 = v54;
      }

      v50 = v16[2];
      if (v50 >= v16[3] >> 1)
      {
        sub_100470AAC();
        v16 = v55;
      }

      v16[2] = v50 + 1;
      sub_10002F0C8(v101, &v16[5 * v50 + 4]);
      v51 = v103;
      v52 = v104;
      sub_100009B14(v102, v103);
      v43 = (*(v52 + 40))(v51, v52);
LABEL_19:
      sub_100396904(v101, v43, v44, v45, v46, v47, v48, v49, v88, v89);
      ++v28;
      sub_100009B7C(v102);
      if (v28 == v99)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v16 = _swiftEmptyArrayStorage;
  v96 = _swiftEmptyArrayStorage;
LABEL_22:
  if (qword_1006A0B70 != -1)
  {
    goto LABEL_31;
  }

LABEL_23:
  v59 = type metadata accessor for Logger();
  sub_10000AF9C(v59, qword_1006BA6D0);
  v60 = a1;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v102[0] = swift_slowAlloc();
    *v63 = 136315394;
    v64 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
    swift_beginAccess();
    v65 = *&v60[v64];

    v66 = Set.description.getter();
    v68 = v67;

    v69 = sub_10002741C(v66, v68, v102);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2080;
    swift_beginAccess();

    v70 = Set.description.getter();
    v72 = v71;

    v73 = sub_10002741C(v70, v72, v102);

    *(v63 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v61, v62, "Voicemail store changed. We were waiting for %s and found %s", v63, 0x16u);
    swift_arrayDestroy();
  }

  v74 = v95;
  v75 = v94;
  v89(v95, v91, v94);
  swift_bridgeObjectRetain_n();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v78 = 134218498;
    *(v78 + 4) = v16[2];

    *(v78 + 12) = 2080;
    sub_10000F198(&unk_1006A6740, &type metadata accessor for Date);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    (*(v93 + 8))(v74, v75);
    v82 = sub_10002741C(v79, v81, &v100);

    *(v78 + 14) = v82;
    *(v78 + 22) = 2080;
    swift_beginAccess();

    v83 = Set.description.getter();
    v85 = v84;

    v86 = sub_10002741C(v83, v85, &v100);

    *(v78 + 24) = v86;

    _os_log_impl(&_mh_execute_header, v76, v77, "Received %ld new voicemails since date %s: %s", v78, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v93 + 8))(v74, v75);
  }

  return v16;
}

uint64_t sub_10041E700(void *a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = type metadata accessor for Date();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
  swift_beginAccess();
  v11 = *(a2 + v10);
  v13 = a1[3];
  v12 = a1[4];
  sub_100009B14(a1, v13);
  v14 = *(v12 + 40);

  v15 = v14(v13, v12);
  LOBYTE(v10) = sub_100422980(v15, v11);

  if (v10)
  {
    if (sub_100416C2C(a1))
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_100416DB8(a1) ^ 1;
    }
  }

  else
  {
    v17 = a1[3];
    v18 = a1[4];
    sub_100009B14(a1, v17);
    (*(v18 + 32))(v17, v18);
    v19 = Date.compare(_:)();
    (*(v5 + 8))(v9, v22);
    v16 = v19 == 1;
  }

  return v16 & 1;
}

void sub_10041E8CC(char *a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v174 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v174 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v174 - v19;
  v21 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentVoicemailDate;
  swift_beginAccess();
  sub_100270E18(&a1[v21], v6);
  if (sub_100015468(v6, 1, v7) == 1)
  {
    sub_100009A04(v6, &qword_1006A3C70, &unk_10057EA80);
    if (qword_1006A0B70 != -1)
    {
LABEL_87:
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA6D0);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not retrieve date of most recent voicemail for notification provider %@", v26, 0xCu);
      sub_100009A04(v27, &unk_1006A2630, &qword_10057CB40);
    }

    sub_100416268();
    return;
  }

  v29 = *(v8 + 32);
  v178 = v20;
  v177 = v7;
  v29(v20, v6, v7);
  v30 = *&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24];
  v31 = *&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32];
  sub_100009B14(&a1[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource], v30);
  if (((*(v31 + 24))(v30, v31) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000AF9C(v44, qword_1006BA6D0);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v177;
    v49 = v178;
    if (v47)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Voicemail is not subscribed", v50, 2u);
    }

    (*(v8 + 8))(v49, v48);
    return;
  }

  v192 = _swiftEmptyArrayStorage;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_10000AF9C(v32, qword_1006BA6D0);
  v34 = v177;
  v179 = *(v8 + 16);
  v179(v17, v178, v177);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v181 = a1;
  v176 = v8;
  v182 = v33;
  v180 = v8 + 16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v185[0] = v39;
    *v38 = 136315138;
    sub_10000F198(&unk_1006A6740, &type metadata accessor for Date);
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    v175 = *(v8 + 8);
    v175(v17, v34);
    v43 = sub_10002741C(v40, v42, v185);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Retrieving messages delivered after %s", v38, 0xCu);
    sub_100009B7C(v39);

    a1 = v181;
  }

  else
  {

    v175 = *(v8 + 8);
    v175(v17, v34);
  }

  v51 = sub_10041DCCC(v178);
  v53 = v52;
  v54 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
  if (*(v52 + 16))
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v185[0] = v58;
      *v57 = 136315138;
      sub_10026D814(&qword_1006A7AB0, &unk_1005870F0);
      v59 = Array.description.getter();
      v61 = sub_10002741C(v59, v60, v185);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Voicemail store changed, and we found the following voicemail messages we were waiting for: %s", v57, 0xCu);
      sub_100009B7C(v58);
    }

    sub_1004144F8(v62);
    v63 = *(v53 + 16);
    if (v63)
    {
      *&v189 = _swiftEmptyArrayStorage;
      sub_10039A4A0(0, v63, 0);
      v64 = v189;
      v65 = v53 + 32;
      do
      {
        sub_100009AB0(v65, v185);
        v66 = v186;
        v67 = v187;
        sub_100009B14(v185, v186);
        v68 = (*(v67 + 40))(v66, v67);
        sub_100009B7C(v185);
        *&v189 = v64;
        v70 = v64[2];
        v69 = v64[3];
        if (v70 >= v69 >> 1)
        {
          sub_10039A4A0((v69 > 1), v70 + 1, 1);
          v64 = v189;
        }

        v64[2] = v70 + 1;
        v64[v70 + 4] = v68;
        v65 += 40;
        --v63;
      }

      while (v63);

      v54 = &OBJC_IVAR___CSDUserNotificationController_clientManager;
    }

    else
    {

      v64 = _swiftEmptyArrayStorage;
    }

    v82 = v54[90];
    a1 = v181;
    swift_beginAccess();
    sub_100414624(v64);
    swift_endAccess();
  }

  else
  {

    v71 = a1;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v185[0] = v75;
      *v74 = 136315138;
      v76 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_pendingVoicemailIdentifiers;
      swift_beginAccess();
      v77 = *&v71[v76];

      v78 = Set.description.getter();
      v80 = v79;

      v81 = sub_10002741C(v78, v80, v185);
      a1 = v181;

      *(v74 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v72, v73, "Voicemail store changed, but we did not find any voicemail messages we were waiting for. Waiting for: %s", v74, 0xCu);
      sub_100009B7C(v75);
    }
  }

  v83 = v51[2];
  if (v83)
  {
    v84 = v177;
    v179(v13, v178, v177);

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v185[0] = v88;
      *v87 = 134218242;
      *(v87 + 4) = v51[2];

      *(v87 + 12) = 2080;
      sub_10000F198(&unk_1006A6740, &type metadata accessor for Date);
      v89 = dispatch thunk of CustomStringConvertible.description.getter();
      v91 = v90;
      v175(v13, v84);
      v92 = sub_10002741C(v89, v91, v185);

      *(v87 + 14) = v92;
      _os_log_impl(&_mh_execute_header, v85, v86, "Received %ld new voicemails since date %s", v87, 0x16u);
      sub_100009B7C(v88);
      a1 = v181;
    }

    else
    {

      v175(v13, v84);
    }

    sub_100416268();
    v93 = (v51 + 4);
    while (1)
    {
      sub_100009AB0(v93, v185);
      if (sub_100416DB8(v185))
      {
        break;
      }

      if ((sub_100416C2C(v185) & 1) == 0)
      {
        goto LABEL_40;
      }

      v103 = v186;
      v104 = v187;
      sub_100009B14(v185, v186);
      v105 = (*(v104 + 40))(v103, v104);
      swift_beginAccess();
      sub_100396904(v188, v105, v106, v107, v108, v109, v110, v111, v174, v175);
      swift_endAccess();
LABEL_45:
      sub_100009B7C(v185);
      v93 += 40;
      if (!--v83)
      {
        goto LABEL_46;
      }
    }

    v94 = v186;
    v95 = v187;
    sub_100009B14(v185, v186);
    v96 = (*(v95 + 40))(v94, v95);
    swift_beginAccess();
    sub_100396904(v188, v96, v97, v98, v99, v100, v101, v102, v174, v175);
    swift_endAccess();
LABEL_40:
    sub_100009AB0(v185, &v189);
    v112 = v192;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v114 = v112[2];
      sub_100470AAC();
      v112 = v115;
    }

    v113 = v112[2];
    if (v113 >= v112[3] >> 1)
    {
      sub_100470AAC();
      v112 = v116;
    }

    v112[2] = v113 + 1;
    sub_10002F0C8(&v189, &v112[5 * v113 + 4]);
    v192 = v112;
    goto LABEL_45;
  }

LABEL_46:

  v117 = v192;
  v182 = v192[2];
  v180 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_postedVoicemailIdentifiers;
  swift_beginAccess();
  v118 = 0;
  v179 = (v117 + 4);
  v119 = _swiftEmptyArrayStorage;
LABEL_47:
  while (v118 != v182)
  {
    if (v118 >= v117[2])
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    v120 = v118 + 1;
    sub_100009AB0(v179 + 40 * v118, &v189);
    v121 = *&a1[v180];
    v122 = v190;
    v123 = v191;
    sub_100009B14(&v189, v190);
    v124 = *(v123 + 40);

    v185[0] = v124(v122, v123);
    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v127 = v126;
    if (*(v121 + 16))
    {
      v128 = v125;
      v129 = *(v121 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v130 = Hasher._finalize()();
      v131 = ~(-1 << *(v121 + 32));
      while (1)
      {
        v132 = v130 & v131;
        if (((*(v121 + 56 + (((v130 & v131) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v130 & v131)) & 1) == 0)
        {
          break;
        }

        v133 = (*(v121 + 48) + 16 * v132);
        if (*v133 != v128 || v133[1] != v127)
        {
          v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v130 = v132 + 1;
          if ((v135 & 1) == 0)
          {
            continue;
          }
        }

        sub_100009B7C(&v189);
        v118 = v120;
        a1 = v181;
        goto LABEL_47;
      }
    }

    sub_10002F0C8(&v189, v185);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v183[0] = v119;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v137 = v119[2];
      sub_10039A460();
      v119 = v183[0];
    }

    a1 = v181;
    v138 = v119[2];
    if (v138 >= v119[3] >> 1)
    {
      sub_10039A460();
    }

    v139 = v186;
    v140 = v187;
    v141 = sub_10001BDB8(v185, v186);
    v142 = *(*(v139 - 8) + 64);
    __chkstk_darwin(v141, v141);
    v144 = &v174 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v145 + 16))(v144);
    sub_1002F705C(v138, v144, v183, v139, v140);
    sub_100009B7C(v185);
    v119 = v183[0];
    v118 = v120;
  }

  swift_beginAccess();
  v146 = 0;
  v147 = _swiftEmptyArrayStorage;
LABEL_64:
  while (v146 != v182)
  {
    if (v146 >= v117[2])
    {
      goto LABEL_86;
    }

    v148 = v146 + 1;
    sub_100009AB0(v179 + 40 * v146, &v189);
    v149 = *&a1[v180];
    v150 = v190;
    v151 = v191;
    sub_100009B14(&v189, v190);
    v152 = *(v151 + 40);

    v185[0] = v152(v150, v151);
    v153 = dispatch thunk of CustomStringConvertible.description.getter();
    v155 = v154;
    if (*(v149 + 16))
    {
      v156 = v153;
      v157 = *(v149 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v158 = Hasher._finalize()();
      v159 = ~(-1 << *(v149 + 32));
      while (1)
      {
        v160 = v158 & v159;
        if (((*(v149 + 56 + (((v158 & v159) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v158 & v159)) & 1) == 0)
        {
          break;
        }

        v161 = (*(v149 + 48) + 16 * v160);
        if (*v161 != v156 || v161[1] != v155)
        {
          v163 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v158 = v160 + 1;
          if ((v163 & 1) == 0)
          {
            continue;
          }
        }

        sub_10002F0C8(&v189, v185);
        v164 = swift_isUniquelyReferenced_nonNull_native();
        v184 = v147;
        if ((v164 & 1) == 0)
        {
          v165 = v147[2];
          sub_10039A460();
          v147 = v184;
        }

        a1 = v181;
        v166 = v147[2];
        if (v166 >= v147[3] >> 1)
        {
          sub_10039A460();
        }

        v167 = v186;
        v168 = v187;
        v169 = sub_10001BDB8(v185, v186);
        v170 = *(*(v167 - 8) + 64);
        __chkstk_darwin(v169, v169);
        v172 = &v174 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v173 + 16))(v172);
        sub_1002F705C(v166, v172, &v184, v167, v168);
        sub_100009B7C(v185);
        v147 = v184;
        v146 = v148;
        goto LABEL_64;
      }
    }

    sub_100009B7C(&v189);
    v146 = v148;
    a1 = v181;
  }

  if (v119[2])
  {
    sub_100416F44(v119);
  }

  if (v147[2])
  {
    sub_10041914C(v147);

    v175(v178, v177);
  }

  else
  {
    v175(v178, v177);
  }
}

void sub_10041FCD0()
{
  sub_100005EF4();
  v1 = v0;
  v2 = type metadata accessor for Notification();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v1;
  sub_1000060F0();
  sub_10041FDB8();

  (*(v5 + 8))(v11, v2);
  sub_100005EDC();
}

void sub_10041FDB8()
{
  sub_100005EF4();
  v52 = v2;
  v53 = v3;
  v51 = v4;
  v5 = v0;
  v7 = v6;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v55 = v16 - v15;
  v56 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v56);
  v54 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17, v21);
  sub_100007FDC();
  sub_10000C4C4();
  v22 = type metadata accessor for Notification();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23, v28);
  sub_100007FDC();
  v31 = v30 - v29;
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v32 = type metadata accessor for Logger();
  sub_10000AF9C(v32, qword_1006BA6D0);
  (*(v25 + 16))(v31, v7, v22);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v49 = v11;
    v35 = sub_100005274();
    v50 = v8;
    v48 = swift_slowAlloc();
    v57[0] = v48;
    *v35 = 136315138;
    sub_10000F198(&unk_1006A3C80, &type metadata accessor for Notification);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v1;
    v38 = v5;
    v40 = v39;
    (*(v25 + 8))(v31, v22);
    sub_10002741C(v36, v40, v57);
    sub_10000667C();
    v5 = v38;
    v1 = v37;

    *(v35 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v33, v34, v51, v35, 0xCu);
    sub_100009B7C(v48);
    v8 = v50;
    sub_100005F40();
    v11 = v49;
    sub_100005F40();
  }

  else
  {

    (*(v25 + 8))(v31, v22);
  }

  v41 = *&v5[OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_queue];
  v42 = swift_allocObject();
  *(v42 + 16) = v5;
  v57[4] = v52;
  v57[5] = v42;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 1107296256;
  sub_10000A600();
  v57[2] = v43;
  v57[3] = v53;
  v44 = _Block_copy(v57);
  v45 = v5;
  static DispatchQoS.unspecified.getter();
  sub_100015324();
  sub_10000F198(v46, v47);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v11 + 8))(v55, v8);
  (*(v54 + 8))(v1, v56);

  sub_100005EDC();
}

uint64_t sub_100420208(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = sub_100007BF0(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 24);
  v10 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource + 32);
  sub_100009B14((a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_voicemailDataSource), v9);
  if (((*(v10 + 24))(v9, v10) & 1) == 0)
  {
    if (qword_1006A0B70 != -1)
    {
      sub_10000860C();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA6D0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Removing posted voicemail notifications because vmd isn't subscribed.", v14, 2u);
      sub_100005F40();
    }

    sub_10041687C();
  }

  v15 = type metadata accessor for Date();
  sub_10000AF74(v8, 1, 1, v15);
  v16 = OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_mostRecentNonVisualVoicemailDate;
  swift_beginAccess();
  sub_1003B3734(v8, a1 + v16);
  result = swift_endAccess();
  v18 = a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue;
  v19 = *(a1 + OBJC_IVAR____TtC13callservicesd29VoicemailNotificationProvider_updateBadgeValue);
  if (v19)
  {
    v20 = *(v18 + 8);

    v19(v21);
    v22 = sub_100006B30();
    return sub_1000051F8(v22);
  }

  return result;
}

uint64_t sub_10042043C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1004204DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unsigned __int8 *sub_100420554(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100420ADC();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100420ADC()
{
  v0 = sub_100420B48();
  v4 = sub_100420B7C(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100420B7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100049958(v9, 0);
  v12 = sub_100420CDC(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100420CDC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_100420EEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_100420EEC(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100420EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_100017E1C(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_100017E1C(v3);
    return v4 | 8;
  }
}

void sub_100420F48(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setRemoteParticipantHandles:isa];
}

uint64_t sub_100420FB4(void *a1)
{
  v1 = [a1 subscriptionsInUse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &unk_1006AB3B0, CTXPCServiceSubscriptionContext_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100421024()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1000060F0();

  return sub_10041D5B4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100421108(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_10026D814(a3, a4);
  sub_100008070(v5);
  v7 = *(v6 + 32);
  v8 = sub_100006B30();
  v9(v8);
  return a2;
}

uint64_t sub_1004211E8()
{
  v1 = *(v0 + 40);

  sub_100009B7C((v0 + 48));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100421254()
{
  sub_100009B7C((v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10042129C()
{
  v1 = v0[8];
  v2 = v0 + 3;
  v3 = v0[2];
  sub_1004173A4(v2, v1);
}

uint64_t sub_1004212CC(void *a1)
{
  v3 = type metadata accessor for Date();
  sub_100007BF0(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_10041E700(a1, v5, v6);
}

id sub_100421378()
{
  sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates:isa];

  return v1;
}

const char *sub_1004213FC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___CSDCommunicationHistoryCallFilter_usTollFreePrefixes] = &off_100620D88;
  *&v2[OBJC_IVAR___CSDCommunicationHistoryCallFilter_callHistoryManager] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CommunicationHistoryCallFilter();
  swift_unknownObjectRetain();
  objc_msgSendSuper2(&v5, "initWithFeatureFlags:", a2);
  sub_10000D6C0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return "initWithFeatureFlags:";
}

uint64_t sub_1004214DC(void *a1)
{
  v3 = sub_100421A10(a1);
  if (!v3)
  {
    v17 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v18 = sub_100009F24();
    *(v18 + 16) = xmmword_10057D6A0;
    *(v18 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
    *(v18 + 64) = sub_1004225B0();
    *(v18 + 32) = v1;
    sub_100006844();
    *(v18 + 96) = sub_100006AF0(v19, v20, v21);
    sub_100006844();
    *(v18 + 104) = sub_100290B1C(v22, v23, v24);
    *(v18 + 72) = a1;
    v25 = v1;
    v26 = a1;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v4 = v3;
  v5 = [objc_msgSend(v1 "featureFlags")];
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0)
  {
    v28 = [v4 value];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10001B8C8(v4, &selRef_normalizedValue);
    LOBYTE(v29) = sub_100422344(v29, v31, v32, v33);

    if (v29)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v34 = sub_100009F24();
    *(v34 + 16) = xmmword_10057D6A0;
    *(v34 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
    *(v34 + 64) = sub_1004225B0();
    *(v34 + 32) = v1;
    sub_100009F18();
    *(v34 + 96) = sub_100006AF0(v35, v36, v37);
    sub_100009F18();
    *(v34 + 104) = sub_100290B1C(v38, v39, v40);
    *(v34 + 72) = a1;
    v41 = v1;
    v42 = a1;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    v16 = 1;
    goto LABEL_8;
  }

  if ([a1 commTrustScore] >= 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = sub_100009F24();
  *(v7 + 16) = xmmword_10057D6A0;
  *(v7 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
  *(v7 + 64) = sub_1004225B0();
  *(v7 + 32) = v1;
  sub_100009F18();
  *(v7 + 96) = sub_100006AF0(v8, v9, v10);
  sub_100009F18();
  *(v7 + 104) = sub_100290B1C(v11, v12, v13);
  *(v7 + 72) = a1;
  v14 = v1;
  v15 = a1;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v16 = 0;
LABEL_8:

  v43 = [objc_msgSend(v1 "featureFlags")];
  swift_unknownObjectRelease();
  if (v43)
  {
    v44 = [a1 silencingUserInfo];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    v48 = [objc_allocWithZone(NSNumber) initWithBool:v16];
    [v44 __swift_setObject:v48 forKeyedSubscript:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v45, v47}];

    swift_unknownObjectRelease();
  }

  return v16 ^ 1;
}

uint64_t sub_100421A10(void *a1)
{
  v2 = [a1 remoteMember];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 handle];

  v5 = [v4 tuHandle];
  if (!v5)
  {
    return 0;
  }

  v6 = sub_10001B8C8(v5, &selRef_isoCountryCode);
  if (v7)
  {
    if (v6 == 29557 && v7 == 0xE200000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ([v5 type] == 2)
    {
      v11 = *(v1 + OBJC_IVAR___CSDCommunicationHistoryCallFilter_usTollFreePrefixes);
      v12 = (v11 + 40);
      v13 = -*(v11 + 16);
      v14 = -1;
      while (v13 + v14 != -1)
      {
        if (++v14 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        v15 = v12 + 2;
        v16 = *(v12 - 1);
        v17 = *v12;

        v18 = [v5 value];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v5;
        v22 = v21;

        v53 = v19;
        v54 = v22;
        v51 = v16;
        v52 = v17;
        sub_1002A7E94();
        sub_1002A7EE8();
        LOBYTE(v18) = BidirectionalCollection<>.starts<A>(with:)();

        v5 = v20;

        v12 = v15;
        if (v18)
        {
          [objc_opt_self() handleTypeForTUHandle:{v20, v16, v17, v19, v54}];
          v23 = [v20 value];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          sub_100421F08(2uLL, v24, v26);
          static String._fromSubstring(_:)();

          v27 = [v20 value];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = objc_allocWithZone(CHHandle);
          v31 = sub_100008828();
          v5 = v20;
          v10 = sub_100422604(v31, v32, v33, v34, v29);
          if (v10)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }
  }

LABEL_19:
  v35 = [v5 type];
  if (v35 == 1)
  {
    v39 = [v5 value];
    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    v40 = [objc_opt_self() normalizedGenericHandleForValue:v39];
LABEL_32:
    v10 = v40;

    if (v10)
    {
LABEL_34:

      return v10;
    }

LABEL_33:
    [objc_opt_self() handleTypeForTUHandle:v5];
    v41 = [v5 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = [v5 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = objc_allocWithZone(CHHandle);
    v46 = sub_100008828();
    v10 = sub_100422604(v46, v47, v48, v49, v44);
    goto LABEL_34;
  }

  if (v35 == 2)
  {
    v36 = [v5 value];
    if (!v36)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    sub_10001B8C8(v5, &selRef_isoCountryCode);
    if (v37)
    {
      v38 = String._bridgeToObjectiveC()();
    }

    else
    {
      v38 = 0;
    }

    v10 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v36 isoCountryCode:v38];

    if (v10)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v35 == 3)
  {
    v39 = [v5 value];
    if (!v39)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String._bridgeToObjectiveC()();
      sub_10000D6C0();
    }

    v40 = [objc_opt_self() normalizedEmailAddressHandleForValue:v39];
    goto LABEL_32;
  }

LABEL_40:
  type metadata accessor for TUHandleType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_100421F08(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

id sub_100421FDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100581AB0;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 predicateForCallsWithStatusOriginated:1];
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v7 predicateForCallsWithAnyServiceProviders:isa];

  *(v6 + 40) = v12;
  *(v6 + 48) = [v7 predicateForCallsWithRemoteParticipantCount:1];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10057CA80;
  v14 = String._bridgeToObjectiveC()();
  v15 = [v7 predicateForCallsWithRemoteParticipantHandleValue:v14];

  *(v13 + 32) = v15;
  if (a4)
  {
    v16 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v16 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
      v18 = [v7 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v17];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if (sub_10000B6F4(v13) < 2)
  {
    if (!sub_10000B6F4(v13))
    {

      goto LABEL_17;
    }

    sub_10039C390(0, (v13 & 0xC000000000000001) == 0, v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v19 = *(v13 + 32);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    sub_100421378();
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_17:
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

BOOL sub_100422344(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_100421FDC(a1, a2, a3, a4);
  v6 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = sub_100009F24();
  *(v7 + 16) = xmmword_10057D6A0;
  *(v7 + 56) = type metadata accessor for CommunicationHistoryCallFilter();
  *(v7 + 64) = sub_1004225B0();
  *(v7 + 32) = v4;
  sub_100006844();
  *(v7 + 96) = sub_100006AF0(v8, v9, v10);
  sub_100006844();
  *(v7 + 104) = sub_100290B1C(v11, v12, v13);
  *(v7 + 72) = v5;
  v14 = v4;
  v15 = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v16 = [*&v14[OBJC_IVAR___CSDCommunicationHistoryCallFilter_callHistoryManager] callsWithPredicate:v15 limit:1 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = sub_10000B6F4(v17);

  return v18 == 0;
}

id sub_10042250C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CommunicationHistoryCallFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1004225B0()
{
  result = qword_1006AB470;
  if (!qword_1006AB470)
  {
    type metadata accessor for CommunicationHistoryCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB470);
  }

  return result;
}

id sub_100422604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();

  if (a5)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithType:a1 value:v8 normalizedValue:v9];

  return v10;
}

BOOL sub_1004226B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  sub_100007E30();
  String.hash(into:)();
  Hasher._finalize()();
  v7 = *(a3 + 32);
  sub_1000052DC();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    sub_10003DC34();
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_100422794(Swift::UInt32 a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(a1);
    Hasher._finalize()();
    sub_10003DE48();
    do
    {
      sub_100022D84(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 4 * v7) != a1);
  }

  return v2;
}

void sub_10042282C()
{
  sub_100005EF4();
  sub_10000FC34();
  v2 = type metadata accessor for Participant();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007FDC();
  sub_10000D304();
  if (*(v0 + 16))
  {
    v7 = *(v0 + 40);
    sub_10000F880();
    sub_10000F1E0(v8, v9);
    sub_10000790C();
    dispatch thunk of Hashable._rawHashValue(seed:)();
    sub_10000C898();
    do
    {
      sub_100017E34(v10);
      if (!v11)
      {
        break;
      }

      v12 = sub_10000C2D0();
      v13(v12);
      sub_10000F880();
      sub_10000F1E0(&unk_1006A8F00, v14);
      sub_10000BC34();
      v15 = sub_1000076FC();
      v16(v15);
      v10 = v0 + 1;
    }

    while ((v1 & 1) == 0);
  }

  sub_100005EDC();
}

uint64_t sub_100422980(uint64_t a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v5 = a2[5];
    static Hasher._hash(seed:_:)();
    sub_10003DE48();
    do
    {
      sub_100022D84(v6);
      if (!v8)
      {
        break;
      }

      v6 = v7 + 1;
    }

    while (*(a2[6] + 8 * v7) != a1);
  }

  return v2;
}

void *sub_100422A08(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  v7 = a1 + 32;
  if (!v6)
  {
    return v11;
  }

  while (1)
  {
    sub_100006A94(v7, v10);
    sub_100006AF0(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v7 += 32;
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_100422B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100035D4C();
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100006A94(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_10039A2E0(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100422C0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100035D4C();
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_100006724(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_10039A2E0(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100422DB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate);
  *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate) = a1;
  return swift_unknownObjectRelease();
}

void sub_100422E68(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue) = a1;
}

id sub_100422E7C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for CSDCollaborationStateManager());
  v3 = a1;
  sub_1004234AC(v3, sub_100422F68, 0, sub_1004233C4, 0);
  sub_10000D6C0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v4 = objc_opt_self();
  v5 = v2;
  result = [v4 defaultWorkspace];
  if (result)
  {
    v7 = result;
    [result addObserver:v5];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100422F68(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = __chkstk_darwin(v2, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v41 - v10;
  v12 = objc_opt_self();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v46 = 0;
  v16 = [v12 appLinksWithURL:v14 limit:1 error:&v46];

  v17 = v46;
  if (v16)
  {
    sub_100006AF0(0, &unk_1006AB570, LSAppLink_ptr);
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v17;

    if (sub_10000B6F4(v18))
    {
      sub_10039C390(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v18 + 32);
      }

      v21 = v20;

      v22 = [v21 targetApplicationRecord];

      if (v22)
      {
        return sub_100021AEC(v22);
      }
    }

    else
    {
    }
  }

  else
  {
    v24 = v46;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA568);
    v27 = *(v3 + 16);
    v27(v11, a1, v2);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = v29;
      v31 = v30;
      v44 = swift_slowAlloc();
      v45 = v25;
      v46 = v44;
      *v31 = 136315394;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v32 = String.init<A>(reflecting:)();
      v42 = v28;
      v33 = v3;
      v35 = sub_10002741C(v32, v34, &v46);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v27(v8, v11, v2);
      v36 = String.init<A>(reflecting:)();
      v38 = v37;
      (*(v33 + 8))(v11, v2);
      v39 = sub_10002741C(v36, v38, &v46);

      *(v31 + 14) = v39;
      v40 = v42;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to get appLink with error: %s, url: %s", v31, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v3 + 8))(v11, v2);
    }
  }

  return 0;
}

uint64_t sub_1004233C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v4 = *(i - 1);
    v3 = *i;
    v5 = objc_allocWithZone(LSApplicationRecord);
    swift_bridgeObjectRetain_n();
    v6 = sub_100428E24(v4, v3, 1);
    if (v6)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  return v4;
}

char *sub_1004234AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate] = 0;
  v10 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_1000060A8();
  *&v5[v11] = Dictionary.init(dictionaryLiteral:)();
  v12 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  sub_1000060A8();
  *&v5[v12] = Dictionary.init(dictionaryLiteral:)();
  v13 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
  sub_1000060A8();
  *&v5[v13] = Dictionary.init(dictionaryLiteral:)();
  v14 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
  type metadata accessor for UUID();
  sub_1000060A8();
  *&v5[v14] = Dictionary.init(dictionaryLiteral:)();
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled] = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_1000060A8();
  *&v5[v15] = Dictionary.init(dictionaryLiteral:)();
  v16 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL;
  sub_1000060A8();
  *&v5[v16] = Dictionary.init(dictionaryLiteral:)();
  v17 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_10026D814(&unk_1006AB558, &qword_100587198);
  sub_10000A450();
  sub_10000F1E0(v18, v19);
  *&v5[v17] = Dictionary.init(dictionaryLiteral:)();
  v20 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags;
  *&v5[v20] = [objc_allocWithZone(TUFeatureFlags) init];
  v21 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_appLinkBundleIDBlock];
  *v21 = a2;
  *(v21 + 1) = a3;
  v22 = &v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_installedBundleIDBlock];
  *v22 = a4;
  *(v22 + 1) = a5;
  *&v5[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue] = a1;
  v35.receiver = v5;
  v35.super_class = type metadata accessor for CSDCollaborationStateManager();

  v23 = a1;
  v24 = objc_msgSendSuper2(&v35, "init");
  if ([*&v24[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags] appProtectionEnabled])
  {
    v33 = type metadata accessor for ProtectedAppsObserver();
    v34 = &off_10062ECA8;
    v32[0] = [objc_allocWithZone(v33) init];
    v25 = &v24[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver];
    sub_100008D34();
    sub_10042A068(v32, v25);
    swift_endAccess();
    sub_100008D34();
    v26 = *(v25 + 24);
    if (v26)
    {
      v27 = *(v25 + 32);
      sub_10001BDB8(v25, *(v25 + 24));
      v28 = *(v27 + 16);
      v29 = v24;
      v28(v24, &off_100630010, v26, v27);
    }

    swift_endAccess();
  }

  return v24;
}

void sub_1004237E4()
{
  sub_100005EF4();
  v3 = v2;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v4);
  v6 = *(v5 + 64);
  sub_100006688();
  __chkstk_darwin(v7, v8);
  sub_10000B8BC();
  v9 = type metadata accessor for DispatchPredicate();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000D304();
  v16 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v1 = v16;
  (*(v12 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v9);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v1, v9);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v18 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
  sub_100005298();
  v19 = *(v0 + v18);

  sub_100006694();
  sub_1002CBCB0(v19, v20);

  type metadata accessor for UUID();
  v21 = sub_10000790C();
  LODWORD(v19) = sub_100015468(v21, 1, v22);
  sub_1000099A4(v0, &unk_1006A3DD0, &unk_10057C9D0);
  if (v19 == 1)
  {
    if (qword_1006A0AF8 == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      sub_10000AF9C(v23, qword_1006BA568);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = sub_100005274();
        v46 = sub_100005E84();
        v47[0] = v46;
        *v26 = 136315138;

        v27 = String.init<A>(reflecting:)();
        v29 = sub_10002741C(v27, v28, v47);

        *(v26 + 4) = v29;
        sub_100006EA8(&_mh_execute_header, v30, v25, "CSDCollaborationStateManager started tracking %s");
        sub_100009B7C(v46);
        sub_100005F40();
        sub_1000079DC();
      }

      sub_100006694();
      sub_100423ED0();
      sub_100006694();
      sub_100424ED0();
      v32 = v31;

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = sub_100007C08();
        v47[0] = sub_100007630();
        *v35 = 136315394;

        v36 = String.init<A>(reflecting:)();
        v38 = sub_10002741C(v36, v37, v47);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        type metadata accessor for TUCollaborationDocumentState(0);
        v39 = String.init<A>(reflecting:)();
        v41 = sub_10002741C(v39, v40, v47);

        *(v35 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v33, v34, "CSDCollaborationStateManager finished adding %s with state: %s", v35, 0x16u);
        sub_100006C3C();
        sub_100005F40();
        sub_100005F40();
      }

      if (v3)
      {
        (v3)(v32, 0);
      }

      sub_1004264D0();
      goto LABEL_17;
    }

LABEL_19:
    sub_10000852C();
    swift_once();
    goto LABEL_4;
  }

  if (qword_1006A0AF8 != -1)
  {
    sub_10000852C();
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000075F0(v42, qword_1006BA568);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Collaboration identifier is already tracked, returning from CSDCollaborationStateManager", v45, 2u);
    sub_100005F40();
  }

  if (v3)
  {
    sub_100006694();
    sub_100424ED0();
    v3();
  }

LABEL_17:
  sub_100005EDC();
}

void sub_100423ED0()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v66 = v6;
  v67 = v7;
  v9 = v8;
  v11 = v10;
  v12 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v12);
  v14 = *(v13 + 64);
  sub_100006688();
  __chkstk_darwin(v15, v16);
  v18 = &v65 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v27 - v26) = v29;
  (*(v22 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v19);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v28, v19);
  if (v29)
  {
    v31 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
    sub_10000BA08();
    v32 = *(v1 + v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10003FBC0(*(v1 + v31));
    sub_100007E30();
    sub_10037A16C();
    *(v1 + v31) = v68[0];
    swift_endAccess();
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 16))(v18, v3, v33);
    sub_10000AF74(v18, 0, 1, v33);
    sub_10000BA08();

    sub_100007E30();
    sub_10038218C();
    swift_endAccess();
    v34 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs;
    sub_10000BA08();
    if (v5)
    {

      v35 = *(v1 + v34);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10003FBC0(*(v1 + v34));
      sub_100007E30();
      sub_100379FB4(v36, v37, v38, v39, v40, v41, v42, v43, v65, v66);
      *(v1 + v34) = v68[0];
    }

    else
    {
      sub_1003843B4(v11, v9);
    }

    swift_endAccess();
    v44 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL;
    sub_10000BA08();

    v45 = *(v1 + v44);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10003FBC0(*(v1 + v44));
    sub_10003DC34();
    sub_100379EC8();
    *(v1 + v44) = v68[0];
    swift_endAccess();
    sub_100008C68();
    sub_100426DA4();
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      sub_10000D6C0();

      v50 = static OS_os_log.default.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = sub_100007C08();
        v67 = v48;
        v53 = v52;
        v68[0] = sub_100007630();
        *v53 = 136315394;
        v69 = v11;
        v70 = v9;

        v54 = String.init<A>(reflecting:)();
        v56 = sub_10002741C(v54, v55, v68);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        v69 = v67;
        v70 = v49;

        v57 = String.init<A>(reflecting:)();
        v59 = sub_10002741C(v57, v58, v68);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v50, v51, "CSDCollaborationStateManager started tracking %s with bundleID %s", v53, 0x16u);
        sub_100006C3C();
        sub_100005F40();
        sub_100005F40();
      }

      v60 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
      sub_10000BA08();

      v61 = *(v1 + v60);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10003FBC0(*(v1 + v60));
      sub_10003DC34();
      sub_100379EC8();
      *(v1 + v60) = v68[0];
      swift_endAccess();
      v62 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
      sub_10000BA08();

      v63 = *(v1 + v62);
      swift_isUniquelyReferenced_nonNull_native();
      v68[0] = *(v1 + v62);
      sub_100379EC8();
      *(v1 + v62) = v68[0];

      swift_endAccess();
    }

    else
    {
      sub_100006AF0(0, &qword_1006A8B60, OS_os_log_ptr);
      v64 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_10000BA08();

      sub_100007E30();
      sub_10001E84C();
      swift_endAccess();
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1004245A0(void *a1)
{
  v1 = [a1 highlightIdentifiers];
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002E8CD8(v2);
  v4 = v3;

  if (v4)
  {
    sub_100424764();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_10000852C();
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000075F0(v5, qword_1006BA568);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "CSDCollaborationStateManager cannot stop tracking collaborations for conversation without any collaboration identifiers", v7, 2u);
      sub_100005F40();
    }
  }
}

void sub_100424764()
{
  sub_100005EF4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v8);
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  sub_10000C4C4();
  v13 = type metadata accessor for DispatchPredicate();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  sub_10000D304();
  v20 = *(v3 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v2 = v20;
  (*(v16 + 104))(v2, enum case for DispatchPredicate.onQueue(_:), v13);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v2, v13);
  if (v20)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_1000075F0(v22, qword_1006BA568);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (sub_10000C188())
  {
    v25 = sub_100005274();
    v26 = sub_100005E84();
    v53[0] = v26;
    *v25 = 136315138;
    v53[3] = v7;
    v53[4] = v5;

    v27 = String.init<A>(reflecting:)();
    v29 = sub_10002741C(v27, v28, v53);

    *(v25 + 4) = v29;
    sub_100006EA8(&_mh_execute_header, v30, v24, "CSDCollaborationStateManager stopped tracking %s");
    sub_100009B7C(v26);
    sub_100005F40();
    sub_1000079DC();
  }

  sub_10000BA08();
  v31 = sub_100007764();
  sub_100384574(v31);
  swift_endAccess();
  v32 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  sub_100005298();
  v33 = *(v3 + v32);

  v34 = sub_100007764();
  v36 = sub_1002CB47C(v34, v35, v33);
  v38 = v37;

  if (v38)
  {
    sub_10000EB9C();
    sub_100384328(v36, v38);
    swift_endAccess();
  }

  sub_10000EB9C();
  v39 = sub_100007764();
  sub_1003843B4(v39, v40);
  swift_endAccess();

  sub_100008D34();
  v41 = sub_100007764();
  sub_100384328(v41, v42);
  swift_endAccess();

  sub_10000EB9C();
  v43 = sub_100007764();
  sub_10038447C(v43, v44, v45, v46, v47, v48, v49, v50, v53[0], v53[1]);
  sub_1000099A4(v1, &unk_1006A3DD0, &unk_10057C9D0);
  swift_endAccess();
  sub_10000EB9C();
  sub_100007764();
  sub_100428F00();
  swift_endAccess();

  sub_10000EB9C();
  v51 = sub_100007764();
  sub_100384328(v51, v52);
  swift_endAccess();

  sub_100005EDC();
}

void sub_100424B34()
{
  sub_100005EF4();
  sub_100017004();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  sub_10000C4C4();
  v11 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v3 = v11;
  (*(v7 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v3, v4);
  if (v11)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  sub_10000AF9C(v13, qword_1006BA568);
  sub_10000D6C0();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_100005274();
    v17 = sub_100005E84();
    v23[0] = v17;
    v23[1] = v2;
    *v16 = 136315138;
    v23[2] = v1;

    v18 = String.init<A>(reflecting:)();
    v20 = sub_10002741C(v18, v19, v23);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "CSDCollaborationStateManager opened collaboration: %s", v16, 0xCu);
    sub_100009B7C(v17);
    sub_1000079DC();
    sub_100005F40();
  }

  sub_100008C68();
  sub_100424ED0();
  v21 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_10000BA08();
  v22 = *(v0 + v21);
  swift_isUniquelyReferenced_nonNull_native();
  v23[0] = *(v0 + v21);
  sub_100007E30();
  sub_10037A16C();
  *(v0 + v21) = v23[0];
  swift_endAccess();
  sub_100008C68();
  sub_100424ED0();
  sub_10003DC34();
  sub_1004264D0();
  sub_100005EDC();
}

void sub_100424DB0()
{
  sub_100017004();
  sub_100424ED0();
  v2 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  sub_100008D34();
  v3 = *(v1 + v2);
  swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v1 + v2);
  sub_100007E30();
  sub_10037A16C();
  *(v0 + v2) = v4;
  swift_endAccess();
  sub_100008C68();
  sub_100424ED0();
  sub_10003DC34();
  sub_1004264D0();
}

uint64_t sub_100424E68(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = a1;
  v9 = sub_10000D6C0();
  a4(v9, v7);
}

void sub_100424ED0()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v14 - v13) = v16;
  (*(v9 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v15, v6);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    sub_10000852C();
    swift_once();
    goto LABEL_20;
  }

  if ([*(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_featureFlags) appProtectionEnabled])
  {
    v18 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver;
    sub_100005298();
    sub_100429FF8(v1 + v18, &v60);
    if (v61)
    {
      sub_10002F0C8(&v60, v62);
      v19 = *sub_100009B14(v62, v62[3]);
      sub_100026E38();
      v20 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
      sub_100005298();
      v21 = *(v1 + v20);

      v22 = sub_100007764();
      v24 = sub_1002CB47C(v22, v23, v21);
      v26 = v25;

      if (v26)
      {
        v29 = v24;
      }

      else
      {
        v29 = 0;
      }

      if (v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = 0xE000000000000000;
      }

      *&v60 = v29;
      *(&v60 + 1) = v30;
      __chkstk_darwin(v27, v28);
      *(&v59 - 2) = &v60;
      v31 = sub_100013094();

      sub_100009B7C(v62);
      goto LABEL_13;
    }

    sub_1000099A4(&v60, &qword_1006AB568, &unk_1005871A0);
  }

  v31 = 0;
LABEL_13:
  sub_100007764();
  if (sub_100426384())
  {
    v32 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
    sub_100005298();
    v33 = *(v1 + v32);

    v34 = sub_100007764();
    v36 = sub_1004226B4(v34, v35, v33);

    if (v36)
    {
      goto LABEL_17;
    }

    v37 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
    sub_100005298();
    v38 = *(v1 + v37);

    v39 = sub_100007764();
    sub_1002CB47C(v39, v40, v38);
    v42 = v41;

    if (!v42 || (, v31))
    {
LABEL_17:
      v15 = 2;
    }

    else
    {
      v54 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
      sub_100005298();
      v55 = *(v1 + v54);

      v56 = sub_100007764();
      v58 = sub_1002CBC64(v56, v57, v55);

      v15 = v58 != 2 && (v58 & 1) != 0;
    }
  }

  else
  {
    v15 = -1;
  }

  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_28;
  }

LABEL_20:
  v43 = type metadata accessor for Logger();
  sub_1000075F0(v43, qword_1006BA568);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();

  if (sub_10000C188())
  {
    v46 = sub_100007C08();
    v47 = sub_100007630();
    v64 = v3;
    v65[0] = v47;
    *v46 = 136315394;
    v63 = v5;

    v48 = String.init<A>(reflecting:)();
    v50 = sub_10002741C(v48, v49, v65);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v63 = v15;
    type metadata accessor for TUCollaborationDocumentState(0);
    v51 = String.init<A>(reflecting:)();
    v53 = sub_10002741C(v51, v52, v65);

    *(v46 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v44, v45, "CSDCollaborationStateManager state for %s is %s", v46, 0x16u);
    swift_arrayDestroy();
    sub_1000079DC();
    sub_100005F40();
  }

  sub_100005EDC();
}

void sub_1004253BC(void *a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v12, v15);
  v66 = &v63[-v17];
  __chkstk_darwin(v16, v18);
  v20 = &v63[-v19];
  v21 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  swift_beginAccess();
  v22 = *(a3 + v21);

  v23 = sub_1002DB870(a2, v22);

  if (v23 && (sub_100022B10(), v25 = v24, , (v25 & 1) != 0))
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000AF9C(v26, qword_1006BA568);
    v27 = *(v9 + 16);
    v27(v20, a2, v8);
    v28 = a1;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v64 = v30;
      v32 = v31;
      v65 = swift_slowAlloc();
      v67 = v28;
      v68 = v65;
      *v32 = 136315394;
      sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
      v33 = v9;
      v34 = v8;
      v35 = a4;
      v36 = v28;
      v37 = String.init<A>(reflecting:)();
      v39 = sub_10002741C(v37, v38, &v68);

      *(v32 + 4) = v39;
      a4 = v35;
      *(v32 + 12) = 2080;
      v27(v66, v20, v34);
      v40 = String.init<A>(reflecting:)();
      v42 = v41;
      (*(v33 + 8))(v20, v34);
      v43 = sub_10002741C(v40, v42, &v68);

      *(v32 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v29, v64, "CSDCollaborationStateManager: %s already disclosed for conversation UUID %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v20, v8);
    }

    v62 = 0;
  }

  else
  {
    v44 = v9;
    v45 = v8;
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000AF9C(v46, qword_1006BA568);
    v47 = *(v44 + 16);
    v47(v14, a2, v45);
    v48 = a1;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v64 = v50;
      v52 = v51;
      v65 = swift_slowAlloc();
      v67 = v48;
      v68 = v65;
      *v52 = 136315394;
      sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
      v53 = a4;
      v54 = v48;
      v55 = String.init<A>(reflecting:)();
      v57 = sub_10002741C(v55, v56, &v68);

      *(v52 + 4) = v57;
      a4 = v53;
      *(v52 + 12) = 2080;
      v47(v66, v14, v45);
      v58 = String.init<A>(reflecting:)();
      v60 = v59;
      (*(v44 + 8))(v14, v45);
      v61 = sub_10002741C(v58, v60, &v68);

      *(v52 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v49, v64, "CSDCollaborationStateManager: %s needs disclosure for conversation UUID %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v44 + 8))(v14, v45);
    }

    v62 = 1;
  }

  a4[2](a4, v62, 0);
  _Block_release(a4);
}

void sub_100425AC8()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v7, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v41 - v17;
  if (qword_1006A0AF8 != -1)
  {
    sub_10000852C();
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA568);
  v46 = *(v9 + 16);
  v46(v18, v3, v6);
  v20 = v5;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_100007C08();
    v43 = v22;
    v24 = v23;
    v44 = sub_100007630();
    v49[0] = v44;
    *v24 = 136315394;
    v48 = v20;
    sub_100006AF0(0, &qword_1006A7A90, TUCollaborationInitiator_ptr);
    v42 = v21;
    v25 = v20;
    v26 = String.init<A>(reflecting:)();
    v28 = sub_10002741C(v26, v27, v49);
    v45 = v20;
    v29 = v3;
    v30 = v28;

    *(v24 + 4) = v30;
    v3 = v29;
    *(v24 + 12) = 2080;
    v46(v15, v18, v6);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    (*(v9 + 8))(v18, v6);
    v34 = sub_10002741C(v31, v33, v49);
    v20 = v45;

    *(v24 + 14) = v34;
    v35 = v42;
    _os_log_impl(&_mh_execute_header, v42, v43, "CSDCollaborationStateManager: adding %s as disclosed for conversation UUID %s", v24, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    (*(v9 + 8))(v18, v6);
  }

  v36 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_100005298();
  v37 = *(v1 + v36);

  v38 = sub_1002DB870(v3, v37);

  v39 = &_swiftEmptySetSingleton;
  if (v38)
  {
    v39 = v38;
  }

  v49[3] = v39;
  sub_1003969E0(&v48, v20);

  sub_100008D34();
  v40 = *(v1 + v36);
  swift_isUniquelyReferenced_nonNull_native();
  v47 = *(v1 + v36);
  sub_10037A258();
  *(v1 + v36) = v47;
  swift_endAccess();
  sub_100005EDC();
}

void sub_100425F40()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_conversationUUIDToDisclosedCollaborationInitiators;
  sub_10000BA08();
  v15 = *(v0 + v14);
  sub_100021E24();
  if (v17)
  {
    v18 = v16;
    v40 = v13;
    v19 = *(v1 + v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v1 + v14);
    v21 = v42[3];
    sub_10026D814(&qword_1006AB550, &unk_1005826F0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21);
    v41 = *(v7 + 8);
    v41(v42[6] + *(v7 + 72) * v18, v4);
    v22 = *(v42[7] + 8 * v18);
    sub_10026D814(&unk_1006AB558, &qword_100587198);
    sub_10000A450();
    sub_10000F1E0(v23, v24);
    _NativeDictionary._delete(at:)();
    *(v1 + v14) = v42;
    swift_endAccess();
    if (qword_1006A0AF8 != -1)
    {
      sub_10000852C();
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000075F0(v25, qword_1006BA568);
    (*(v7 + 16))(v40, v3, v4);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_100007C08();
      v43[0] = sub_100007630();
      *v28 = 136315394;
      sub_10000A450();
      sub_10000F1E0(v29, v30);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v34 = sub_100007764();
      (v41)(v34);
      v35 = sub_10002741C(v31, v33, v43);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2080;
      v36 = String.init<A>(reflecting:)();
      v38 = sub_10002741C(v36, v37, v43);

      *(v28 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v26, v27, "CSDCollaborationStateManager: disclosed initiators removed for conversation UUID %s: %s", v28, 0x16u);
      sub_100006C3C();
      sub_100005F40();
      sub_1000079DC();
    }

    else
    {

      v39 = sub_100007764();
      (v41)(v39);
    }
  }

  else
  {
    swift_endAccess();
  }

  sub_100005EDC();
}

uint64_t sub_100426384()
{
  sub_10000FC34();
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  sub_10000C4C4();
  v9 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *v1 = v9;
  (*(v5 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v11 = *(v5 + 8);
  v12 = sub_100006694();
  result = v13(v12);
  if (v9)
  {
    v15 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
    sub_100005298();
    if (*(*(v0 + v15) + 16))
    {

      sub_100005208();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004264D0()
{
  sub_100005EF4();
  v113 = v1;
  v110 = v3;
  v111 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v105 = v14 - v13;
  sub_10000D414();
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v15);
  v104 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  v103 = v22 - v21;
  v23 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v23);
  v25 = *(v24 + 64);
  sub_100006688();
  __chkstk_darwin(v26, v27);
  v108 = &v97 - v28;
  sub_10000D414();
  v109 = type metadata accessor for UUID();
  v29 = sub_100007FEC(v109);
  v106 = v30;
  v32 = *(v31 + 64);
  v34 = __chkstk_darwin(v29, v33);
  v102 = &v97 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34, v35);
  v107 = &v97 - v36;
  sub_10000D414();
  v37 = type metadata accessor for DispatchPredicate();
  v38 = sub_100007FEC(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38, v43);
  sub_100007FDC();
  v46 = v45 - v44;
  v112 = v0;
  v47 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v45 - v44) = v47;
  (*(v40 + 104))(v45 - v44, enum case for DispatchPredicate.onQueue(_:), v37);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  (*(v40 + 8))(v46, v37);
  if (v47)
  {
    if (qword_1006A0AF8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_10000852C();
  swift_once();
LABEL_3:
  v99 = v32;
  v49 = type metadata accessor for Logger();
  sub_1000075F0(v49, qword_1006BA568);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  v52 = os_log_type_enabled(v50, v51);
  v101 = v9;
  v100 = v15;
  if (v52)
  {
    v53 = sub_100007C08();
    v98 = v6;
    v54 = v53;
    v114 = sub_100007630();
    *v54 = 136315394;
    v55 = v5;
    v121 = v5;
    type metadata accessor for TUCollaborationDocumentState(0);
    v56 = String.init<A>(reflecting:)();
    v58 = sub_10002741C(v56, v57, &v114);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = v111;
    v121 = v111;
    v60 = String.init<A>(reflecting:)();
    v62 = sub_10002741C(v60, v61, &v114);

    *(v54 + 14) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "CSDCollaborationStateManager: Checking whether to update delegate with currentDocumentState: %s oldState: %s", v54, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    v6 = v98;
    sub_100005F40();
  }

  else
  {

    v55 = v5;
    v59 = v111;
  }

  v63 = v112;
  if (v59 != v55)
  {
    v64 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToConversationUUID;
    sub_100005298();
    v65 = *(v63 + v64);

    v66 = v108;
    sub_1002CBCB0(v65, v108);

    v67 = v109;
    if (sub_100015468(v66, 1, v109) == 1)
    {
      sub_1000099A4(v66, &unk_1006A3DD0, &unk_10057C9D0);

      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = sub_100005274();
        v71 = sub_100005E84();
        v120 = v71;
        *v70 = 136315138;
        v114 = v110;
        v115 = v113;

        v72 = String.init<A>(reflecting:)();
        v74 = sub_10002741C(v72, v73, &v120);

        *(v70 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v68, v69, "CSDCollaborationStateManager: Failed to update document state for %s because no conversation UUID is registered for it", v70, 0xCu);
        sub_100009B7C(v71);
        sub_100005F40();
        sub_100005F40();
      }
    }

    else
    {
      v75 = v106;
      v76 = v107;
      v77 = *(v106 + 32);
      v77(v107, v66, v67);
      v78 = *(v63 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate);
      if (v78)
      {
        v111 = [v78 queue];
        sub_100006890();
        v79 = v67;
        v80 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v81 = v102;
        (*(v75 + 16))(v102, v76, v79);
        v82 = (*(v75 + 80) + 48) & ~*(v75 + 80);
        v83 = swift_allocObject();
        v84 = v55;
        v85 = v75;
        v86 = v83;
        v83[2] = v80;
        v83[3] = v84;
        v87 = v113;
        v83[4] = v110;
        v83[5] = v87;
        v88 = v81;
        v89 = v79;
        v77(v83 + v82, v88, v79);
        v118 = sub_100429F94;
        v119 = v86;
        v114 = _NSConcreteStackBlock;
        v115 = 1107296256;
        sub_10000A600();
        v116 = v90;
        v117 = &unk_100630110;
        v91 = _Block_copy(&v114);

        v92 = v103;
        static DispatchQoS.unspecified.getter();
        v120 = _swiftEmptyArrayStorage;
        sub_10001533C();
        sub_10000F1E0(v93, v94);
        sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
        sub_1000057D0();
        v95 = v105;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v96 = v111;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v91);

        (*(v101 + 8))(v95, v6);
        (*(v104 + 8))(v92, v100);
        (*(v85 + 8))(v107, v89);
      }

      else
      {
        (*(v75 + 8))(v76, v67);
      }
    }
  }

  sub_100005EDC();
}

void sub_100426CD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_delegate);
    swift_unknownObjectRetain();

    if (v5)
    {
      v6 = String._bridgeToObjectiveC()();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v5 collaborationStateChanged:a2 forCollaborationIdentifier:v6 onConversationUUID:isa];

      swift_unknownObjectRelease();
    }
  }
}

void sub_100426DA4()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  sub_100007BF0(v6);
  v8 = *(v7 + 64);
  sub_100006688();
  __chkstk_darwin(v9, v10);
  sub_10000B8BC();
  v11 = type metadata accessor for URL();
  v12 = sub_100007FEC(v11);
  v80 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v79 = v18 - v17;
  sub_10000D414();
  v19 = type metadata accessor for DispatchPredicate();
  v20 = sub_100007FEC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20, v25);
  sub_100007FDC();
  v28 = v27 - v26;
  v29 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  *(v27 - v26) = v29;
  (*(v22 + 104))(v27 - v26, enum case for DispatchPredicate.onQueue(_:), v19);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v28, v19);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v31 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToCollaborationURL;
  sub_100005298();
  v32 = *(v0 + v31);

  v33 = v3;
  sub_1002CB47C(v5, v3, v32);
  v35 = v34;

  if (!v35)
  {
    goto LABEL_34;
  }

  sub_1000060A8();
  URL.init(string:)();
  v36 = v11;
  if (sub_100015468(v0, 1, v11) != 1)
  {

    (*(v80 + 32))(v79, v0, v11);
    v47 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_appLinkBundleIDBlock);
    v48 = *(v0 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_appLinkBundleIDBlock + 8);

    v49 = v47(v79);
    v51 = v50;

    if (v51)
    {
      if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
      {

        goto LABEL_17;
      }

      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v54)
      {
LABEL_17:

        v55 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToPotentialCKBundleIDs;
        sub_100005298();
        v56 = *(v1 + v55);

        v57 = sub_100005E74(v5);

        if (v57)
        {
          if (*(v57 + 16))
          {
            if (qword_1006A0AF8 != -1)
            {
              sub_10000852C();
              swift_once();
            }

            v58 = type metadata accessor for Logger();
            sub_10000AF9C(v58, qword_1006BA568);

            v59 = Logger.logObject.getter();
            v60 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v59, v60))
            {
              v77 = sub_100005274();
              v78 = sub_100005E84();
              v81[0] = v78;
              *v77 = 136315138;

              sub_10026D814(&unk_1006A3C60, &unk_10057D910);
              v61 = String.init<A>(reflecting:)();
              v63 = v33;
              v64 = v60;
              v65 = sub_10002741C(v61, v62, v81);

              *(v77 + 4) = v65;
              v66 = v64;
              v33 = v63;
              _os_log_impl(&_mh_execute_header, v59, v66, "Collaboration identifier is a sharebear collaboration- checking potential bundleIDs %s", v77, 0xCu);
              sub_100009B7C(v78);
              sub_1000079DC();
              sub_100005F40();
            }

            else
            {
            }

            sub_10042752C(v57);
            v72 = v71;

            if (v72)
            {
              goto LABEL_33;
            }

            v68 = Logger.logObject.getter();
            v73 = static os_log_type_t.info.getter();

            if (!sub_10000C188())
            {
LABEL_29:

              (*(v80 + 8))(v79, v36);
              goto LABEL_34;
            }

            v74 = sub_100005274();
            v75 = sub_100005E84();
            v81[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_10002741C(v5, v33, v81);
            sub_100006EA8(&_mh_execute_header, v76, v73, "No CloudKit applications are installed that can open %s");
            sub_100009B7C(v75);
            sub_100005F40();
LABEL_28:
            sub_100005F40();
            goto LABEL_29;
          }
        }

        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_1000075F0(v67, qword_1006BA568);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v68, v69))
        {
          goto LABEL_29;
        }

        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "No CloudKit bundleIDs cached for a sharebear collaboration, returning nil for installed bundleID", v70, 2u);
        goto LABEL_28;
      }
    }

LABEL_33:
    (*(v80 + 8))(v79, v36);
    goto LABEL_34;
  }

  sub_1000099A4(v0, &unk_1006A52C0, &unk_10057D930);
  if (qword_1006A0AF8 != -1)
  {
LABEL_38:
    sub_10000852C();
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000AF9C(v37, qword_1006BA568);
  sub_10000D6C0();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = sub_100007C08();
    v81[0] = sub_100007630();
    *v40 = 136315394;
    v41 = String.init<A>(reflecting:)();
    v43 = sub_10002741C(v41, v42, v81);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;

    v44 = String.init<A>(reflecting:)();
    v46 = sub_10002741C(v44, v45, v81);

    *(v40 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "CSDCollaborationStateManager could not create a url from %s for collaboration identifier %s", v40, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {
  }

LABEL_34:
  sub_100005EDC();
}

uint64_t sub_10042752C(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_installedBundleIDBlock);
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_installedBundleIDBlock + 8);

  v5 = v4(a1);

  return v5;
}

id sub_1004275D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDCollaborationStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10042774C(uint64_t a1)
{
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000AF9C(v2, qword_1006BA568);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = Array.description.getter();
    v9 = sub_10002741C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "applicationsDidInstall: %s", v5, 0xCu);
    sub_100009B7C(v6);
  }

  if (sub_100422A08(a1, &unk_1006AB540, LSApplicationProxy_ptr))
  {

    sub_100427984();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to convert notifications' appProxies to LSApplicationProxy", v11, 2u);
    }
  }
}

uint64_t sub_100427984()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
  sub_100005298();
  v3 = *(v1 + v2);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(v1 + v2) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v32 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
  v33 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
  v31 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
  v10 = (v7 + 63) >> 6;
  v35 = *(v1 + v2);

  v12 = 0;
  v34 = v5;
  v30 = v10;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = (*(v35 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
        v16 = *v14;
        v15 = v14[1];

        sub_10002F6E8();
        sub_100426DA4();
        if (v18)
        {
          v19 = v18;
          v36 = v17;
          sub_10002F6E8();
          sub_100424ED0();
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          sub_1000075F0(v20, qword_1006BA568);

          v21 = Logger.logObject.getter();
          v22 = static os_log_type_t.info.getter();

          if (sub_10000C188())
          {
            v23 = sub_100007C08();
            v38[0] = sub_100007630();
            *v23 = 136315394;
            *(v23 + 4) = sub_10002741C(v36, v19, v38);
            *(v23 + 12) = 2080;
            v24 = sub_10002F6E8();
            *(v23 + 14) = sub_10002741C(v24, v25, v26);
            _os_log_impl(&_mh_execute_header, v21, v22, "Found a newly installed bundleID %s for collaboration identifier: %s", v23, 0x16u);
            swift_arrayDestroy();
            sub_100005F40();
            sub_100005F40();
          }

          v5 = v34;
          sub_100008D34();
          v27 = *(v1 + v33);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_10037A16C();
          *(v1 + v33) = v37;
          swift_endAccess();
          sub_100008D34();

          v28 = *(v1 + v32);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_100379EC8();
          *(v1 + v32) = v37;
          swift_endAccess();
          sub_100008D34();

          v29 = *(v1 + v31);
          swift_isUniquelyReferenced_nonNull_native();
          sub_1000100D0();
          sub_10002F6E8();
          sub_100379EC8();
          *(v1 + v31) = v37;

          swift_endAccess();
          sub_100008D34();
          sub_10002F6E8();
          sub_100428F00();
          swift_endAccess();

          sub_10002F6E8();
          sub_100424ED0();
          sub_1004264D0();
          v10 = v30;
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

void sub_100427D54()
{
  sub_100005EF4();
  v31 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v32 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v32);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  sub_10000C4C4();
  v20 = *&v0[OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue];
  sub_100007C2C();
  v21 = swift_allocObject();
  *(v21 + 16) = v6;
  *(v21 + 24) = v0;
  v33[4] = v4;
  v33[5] = v21;
  sub_100009FE4();
  v33[1] = 1107296256;
  sub_10000A600();
  v33[2] = v22;
  v33[3] = v31;
  v23 = _Block_copy(v33);
  v24 = v20;

  v25 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10001533C();
  sub_10000F1E0(v26, v27);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100021FE0();
  _Block_release(v23);

  v28 = *(v10 + 8);
  v29 = sub_100007764();
  v30(v29);
  (*(v16 + 8))(v1, v32);

  sub_100005EDC();
}

void sub_100427F60(uint64_t a1)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    sub_10000AF9C(v2, qword_1006BA568);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10002741C(v7, v8, &v29);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "applicationsDidUninstall: %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    v10 = sub_100422A08(a1, &unk_1006AB540, LSApplicationProxy_ptr);
    if (!v10)
    {
      oslog = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v25, "Failed to convert notifications' appProxies to LSApplicationProxy", v26, 2u);
      }

      return;
    }

    a1 = v10;
    v11 = sub_10000B6F4(v10);
    if (!v11)
    {
      break;
    }

    v12 = v11;
    v29 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v13 = 0;
    v14 = v29;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v16 = *(a1 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = sub_1002C89F0(v16);
      if (!v19)
      {
        goto LABEL_31;
      }

      v20 = v18;
      v21 = v19;

      v29 = v14;
      v23 = v14[2];
      v22 = v14[3];
      if (v23 >= v22 >> 1)
      {
        sub_10039A2E0(v22 > 1, v23 + 1, 1);
        v14 = v29;
      }

      v14[2] = v23 + 1;
      v24 = &v14[2 * v23];
      v24[4] = v20;
      v24[5] = v21;
      ++v13;
      if (v15 == v12)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_24:
  v27 = sub_1002F4260(v14);

  sub_1004282D8(v27);
}

uint64_t sub_1004282D8(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = v1;
    v4 = result;
    v5 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_bundleIDToCollaborationIdentifier;
    v78 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierToBundleID;
    v80 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierOpened;
    v76 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_collaborationIdentifierNoAppInstalled;
    result = sub_100005298();
    v6 = (v4 + 40);
    *&v7 = 136315394;
    v71 = v7;
    *&v7 = 136315138;
    v64 = v7;
    v93 = v5;
    do
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = *(v3 + v93);
        if (*(v9 + 16))
        {
          v10 = *(v6 - 1);
          v11 = *v6;

          v12 = sub_100005208();
          if (v13)
          {
            v87 = v10;
            v14 = (*(v9 + 56) + 16 * v12);
            v15 = *v14;
            v16 = v14[1];

            if (qword_1006A0AF8 != -1)
            {
              sub_10000852C();
              swift_once();
            }

            v17 = type metadata accessor for Logger();
            sub_10000AF9C(v17, qword_1006BA568);

            v18 = Logger.logObject.getter();
            v19 = static os_log_type_t.info.getter();

            v91 = v15;
            if (os_log_type_enabled(v18, v19))
            {
              v20 = sub_100007C08();
              v97[0] = sub_100007630();
              *v20 = v71;
              *(v20 + 4) = sub_10002741C(v87, v8, v97);
              *(v20 + 12) = 2080;
              *(v20 + 14) = sub_10002741C(v91, v16, v97);
              _os_log_impl(&_mh_execute_header, v18, v19, "applicationsDidUninstall: %s for collaboration identifier: %s. Checking if another application can open it", v20, 0x16u);
              swift_arrayDestroy();
              sub_1000079DC();
              sub_100005F40();
            }

            sub_100424ED0();
            v85 = v21;
            sub_100426DA4();
            if (v23)
            {
              v24 = v23;
              v83 = v22;

              v25 = Logger.logObject.getter();
              v26 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v25, v26))
              {
                v27 = sub_100007C08();
                v69 = sub_100007630();
                v97[0] = v69;
                *v27 = v71;
                *(v27 + 4) = sub_10002741C(v83, v24, v97);
                *(v27 + 12) = 2080;
                v28 = sub_1000089D8();
                *(v27 + 14) = sub_10002741C(v28, v29, v30);
                _os_log_impl(&_mh_execute_header, v25, v26, "Found a fallback bundleID %s for collaboration identifier: %s", v27, 0x16u);
                swift_arrayDestroy();
                sub_100005F40();
                sub_1000079DC();
              }

              sub_10000FF3C();
              v36 = *(v3 + v80);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_10037A16C();
              sub_1000077B0(v37, v38, v39, v40, v41, v42, v43, v44, v64, *(&v64 + 1), v67, v69, v71, *(&v71 + 1), v74, v76, v78, v80, v83, v85, v87, v91, v93, v95);
              sub_10000FF3C();

              v45 = *(v3 + v79);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              v46 = sub_100379EC8();
              sub_1000077B0(v46, v47, v48, v49, v50, v51, v52, v53, v65, v66, v68, v70, v72, v73, v75, v77, v79, v81, v84, v86, v88, v92, v94, v96);
              sub_10000FF3C();

              v54 = *(v3 + v93);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_1000089D8();
              sub_100379EC8();
              *(v3 + v93) = v95;

              sub_100384328(v89, v8);
              sub_10004A118();

              sub_10000FF3C();
              sub_1000089D8();
              sub_100428F00();
              sub_10004A118();
            }

            else
            {

              v31 = Logger.logObject.getter();
              v32 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v31, v32))
              {
                v33 = sub_100005274();
                v34 = sub_100005E84();
                v97[0] = v34;
                *v33 = v64;
                v35 = v91;
                *(v33 + 4) = sub_10002741C(v91, v16, v97);
                _os_log_impl(&_mh_execute_header, v31, v32, "No new bundleID found for collaboration identifier: %s so setting state to not installed", v33, 0xCu);
                sub_100009B7C(v34);
                sub_100005F40();
                sub_100005F40();
              }

              else
              {

                v35 = v91;
              }

              sub_10000FF3C();
              v55 = *(v3 + v80);
              swift_isUniquelyReferenced_nonNull_native();
              sub_100035C24();
              sub_10037A16C();
              sub_1000077B0(v56, v57, v58, v59, v60, v61, v62, v63, v64, *(&v64 + 1), v67, v69, v71, *(&v71 + 1), v74, v76, v78, v80, v82, v85, v87, v91, v93, v95);
              sub_10000FF3C();
              sub_100384328(v35, v16);
              sub_10004A118();

              sub_10000FF3C();
              sub_100384328(v90, v8);
              sub_10004A118();

              sub_10000FF3C();

              sub_10001E84C();
              swift_endAccess();
            }

            sub_1000089D8();
            sub_100424ED0();
            sub_1004264D0();
          }

          else
          {
          }
        }
      }

      v6 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_100428900(void *a1)
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = a1;
  sub_100007E30();
  sub_100427D54();
}

void sub_10042898C()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v29 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v29);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  sub_10000C4C4();
  v18 = *(v2 + OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_queue);
  sub_100006890();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007C2C();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v19;
  v30[4] = sub_10042A0D8;
  v30[5] = v20;
  sub_100009FE4();
  v30[1] = 1107296256;
  sub_10000A600();
  v30[2] = v21;
  v30[3] = &unk_100630188;
  v22 = _Block_copy(v30);
  v23 = v18;

  static DispatchQoS.unspecified.getter();
  sub_10001533C();
  sub_10000F1E0(v24, v25);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100021FE0();
  _Block_release(v22);

  v26 = *(v8 + 8);
  v27 = sub_100007764();
  v28(v27);
  (*(v14 + 8))(v1, v29);

  sub_100005EDC();
}

uint64_t sub_100428BD8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v3 = (v2 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = OBJC_IVAR____TtC13callservicesd28CSDCollaborationStateManager_protectedAppsObserver;
        swift_beginAccess();
        sub_100429FF8(v7 + v8, &v18);

        if (*(&v19 + 1))
        {
          sub_10002F0C8(&v18, v21);
          v9 = *sub_100009B14(v21, v21[3]);
          sub_100026E38();
          *&v18 = v4;
          *(&v18 + 1) = v5;
          __chkstk_darwin(v10, v11);
          v12 = sub_100013094();

          if (v12)
          {
            v13 = swift_unknownObjectWeakLoadStrong();
            if (v13)
            {
              v14 = v13;
              sub_10026D814(&unk_1006A7A80, &unk_1005833C0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10057D690;
              *(inited + 32) = v4;
              *(inited + 40) = v5;
              sub_1004282D8(inited);

              swift_setDeallocating();
              sub_1002F5D30();
            }

            else
            {
            }
          }

          else
          {

            v16 = swift_unknownObjectWeakLoadStrong();
            if (v16)
            {
              v17 = v16;
              sub_100427984();
            }
          }

          result = sub_100009B7C(v21);
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      result = sub_1000099A4(&v18, &qword_1006AB568, &unk_1005871A0);
LABEL_15:
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_100428E24(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

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

uint64_t sub_100428F00()
{
  sub_100017004();
  v4 = *v1;
  v5 = *(*v1 + 40);
  Hasher.init(_seed:)();
  sub_100007E30();
  String.hash(into:)();
  Hasher._finalize()();
  v6 = *(v4 + 32);
  sub_1000052DC();
  v9 = ~v8;
  while (1)
  {
    v10 = v7 & v9;
    sub_10003EAB8();
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    v12 = (*(v4 + 48) + 16 * v10);
    if (*v12 == v3 && v12[1] == v2)
    {
      break;
    }

    sub_10003DC34();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      break;
    }

    v7 = v10 + 1;
  }

  v14 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v0;
  v21 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003989F8();
    v16 = v21;
  }

  v17 = (*(v16 + 48) + 16 * v10);
  v18 = *v17;
  v19 = v17[1];
  sub_1004297CC(v10);
  *v0 = v21;
  return v18;
}

uint64_t sub_100429008(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    NSObject._rawHashValue(seed:)(*(v4 + 40));
    v9 = *(v4 + 32);
    sub_1000052DC();
    v12 = ~v11;
    while (1)
    {
      v13 = v10 & v12;
      if (((*(v4 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v12)) & 1) == 0)
      {
        break;
      }

      v14 = *(*(v4 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        v16 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v2;
        v20 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100398C44();
          v18 = v20;
        }

        v8 = *(*(v18 + 48) + 8 * v13);
        sub_100429984(v13);
        *v2 = v20;
        return v8;
      }

      v10 = v13 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  v6 = a1;
  v7 = __CocoaSet.contains(_:)();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_100429670();

  return v8;
}

void sub_10042919C()
{
  sub_100005EF4();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for Participant();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_100027EDC();
  sub_10000F880();
  sub_10000F1E0(v9, v10);
  sub_10000790C();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D520();
  while (1)
  {
    sub_1000053B8(v11);
    if ((v12 & 1) == 0)
    {
      v18 = 1;
      v2 = v25;
      goto LABEL_9;
    }

    v13 = sub_100015B8C();
    v14(v13);
    sub_10000F880();
    sub_10000F1E0(&unk_1006A8F00, v15);
    sub_10004A040();
    v16 = sub_100027728();
    v17(v16);
    if (v2)
    {
      break;
    }

    v11 = v0 + 1;
  }

  v19 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1003990AC();
    v21 = v26;
  }

  v22 = sub_10042A0F0(v21);
  v23(v22);
  sub_100429B18();
  v18 = 0;
  *v24 = v26;
LABEL_9:
  sub_10000AF74(v2, v18, 1, v4);
  sub_100005EDC();
}

void sub_100429380()
{
  sub_100005EF4();
  v2 = v1;
  v25 = v3;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_100007FDC();
  sub_100027EDC();
  sub_10000A450();
  sub_10000F1E0(v9, v10);
  sub_10000790C();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  sub_10000D520();
  while (1)
  {
    sub_1000053B8(v11);
    if ((v12 & 1) == 0)
    {
      v18 = 1;
      v2 = v25;
      goto LABEL_9;
    }

    v13 = sub_100015B8C();
    v14(v13);
    sub_10000A450();
    sub_10000F1E0(&qword_1006A2620, v15);
    sub_10004A040();
    v16 = sub_100027728();
    v17(v16);
    if (v2)
    {
      break;
    }

    v11 = v0 + 1;
  }

  v19 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v24;
  v26 = *v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100399084();
    v21 = v26;
  }

  v22 = sub_10042A0F0(v21);
  v23(v22);
  sub_100429B18();
  v18 = 0;
  *v24 = v26;
LABEL_9:
  sub_10000AF74(v2, v18, 1, v4);
  sub_100005EDC();
}

uint64_t sub_10042957C(uint64_t a1, void (*a2)(void))
{
  v4 = v2;
  v6 = *v4;
  v7 = *(*v4 + 40);
  v8 = static Hasher._hash(seed:_:)();
  v9 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v10 = v8 & v9;
    if (((1 << (v8 & v9)) & *(v6 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v6 + 48) + 8 * v10) == a1)
    {
      break;
    }

    v8 = v10 + 1;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v4;
  v16 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v14 = v16;
  }

  v11 = *(*(v14 + 48) + 8 * v10);
  sub_100429DE4(v10);
  *v4 = v16;
  return v11;
}

uint64_t sub_100429670()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  sub_100396BC0(v3, v2);
  v5 = v4;
  v15 = v4;
  v6 = *(v4 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      break;
    }

    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    v10 = *(*(v5 + 48) + 8 * v9);
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      v12 = *(*(v5 + 48) + 8 * v9);
      sub_100429984(v9);
      if (static NSObject.== infix(_:_:)())
      {
        *v14 = v15;
        return v12;
      }

      __break(1u);
      break;
    }

    v7 = v9 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004297CC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
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

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100429984(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void sub_100429B18()
{
  sub_100005EF4();
  v48 = v1;
  v49 = v2;
  v47 = v3;
  v5 = v4;
  v7 = v6(0);
  sub_100007FEC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_100006688();
  __chkstk_darwin(v12, v13);
  v15 = &v43 - v14;
  v16 = *v0;
  v17 = *v0 + 56;
  v18 = -1 << *(*v0 + 32);
  v19 = (v5 + 1) & ~v18;
  if (((1 << v19) & *(v17 + 8 * (v19 >> 6))) != 0)
  {
    v20 = ~v18;
    v21 = *v0;

    sub_1000089D8();
    v22 = _HashTable.previousHole(before:)();
    if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) != 0)
    {
      v45 = (v22 + 1) & v20;
      v44 = *(v9 + 16);
      v50 = *(v9 + 72);
      v46 = v9 + 16;
      v23 = (v9 + 8);
      v24 = v16;
      v25 = v20;
      while (1)
      {
        v26 = v17;
        v27 = v50 * v19;
        v28 = v25;
        v44(v15, *(v24 + 48) + v50 * v19, v7);
        v29 = v24;
        v30 = *(v24 + 40);
        sub_10000F1E0(v47, v48);
        sub_10000790C();
        v31 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v23)(v15, v7);
        v25 = v28;
        v32 = v31 & v28;
        if (v5 >= v45)
        {
          if (v32 < v45 || v5 < v32)
          {
LABEL_20:
            v24 = v29;
            goto LABEL_24;
          }
        }

        else if (v32 < v45 && v5 < v32)
        {
          goto LABEL_20;
        }

        v24 = v29;
        v34 = *(v29 + 48);
        v35 = v50 * v5;
        v36 = v34 + v50 * v5;
        v37 = v34 + v27 + v50;
        if (v50 * v5 < v27 || v36 >= v37)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v25 = v28;
          v5 = v19;
          goto LABEL_24;
        }

        v5 = v19;
        if (v35 != v27)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v19 = (v19 + 1) & v25;
        v17 = v26;
        if (((*(v26 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v24 = v16;
LABEL_28:
    *(v17 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  }

  else
  {
    *(v17 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
    v24 = v16;
  }

  v40 = *(v24 + 16);
  v41 = __OFSUB__(v40, 1);
  v42 = v40 - 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v42;
    ++*(v24 + 36);
    sub_100005EDC();
  }
}

unint64_t sub_100429DE4(unint64_t result)
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
LABEL_15:
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
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
        sub_10003EAB8();
      }

      while ((v19 & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100429F50()
{
  v1 = *(v0 + 16);

  sub_100007C2C();

  return _swift_deallocObject(v2, v3, v4);
}

void sub_100429F94()
{
  v1 = type metadata accessor for UUID();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];

  sub_100426CD8(v4, v5);
}

uint64_t sub_100429FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB568, &unk_1005871A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB568, &unk_1005871A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042A0F0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(a1 + 48) + v1;
  return *(v3 - 112);
}

id sub_10042A10C()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() tu_defaults];
  v3 = [v2 silenceUnknownCallersEnabled];

  v4 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D6A0;
  *(v5 + 56) = ObjectType;
  *(v5 + 64) = sub_10042AA98();
  *(v5 + 32) = v0;
  *(v5 + 96) = &type metadata for Bool;
  *(v5 + 104) = &protocol witness table for Bool;
  *(v5 + 72) = v3;
  v6 = v0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v3;
}

uint64_t sub_10042A224(void *a1)
{
  ObjectType = swift_getObjectType();
  if ([a1 verificationStatus] == 1)
  {
    v4 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10057D6A0;
    *(v5 + 56) = ObjectType;
    *(v5 + 64) = sub_10042AA98();
    *(v5 + 32) = v1;
    *(v5 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v5 + 104) = sub_1003B0878();
    *(v5 + 72) = a1;
    v6 = v1;
    v7 = a1;
    static os_log_type_t.default.getter();
  }

  else
  {
    v8 = sub_10042A4E4(a1);
    v4 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10057D6A0;
    *(v9 + 56) = ObjectType;
    *(v9 + 64) = sub_10042AA98();
    *(v9 + 32) = v1;
    *(v9 + 96) = sub_100006AF0(0, &qword_1006AB5C0, CXCallUpdate_ptr);
    *(v9 + 104) = sub_1003B0878();
    *(v9 + 72) = a1;
    v10 = v1;
    v11 = a1;
    static os_log_type_t.default.getter();
    if (v8)
    {
      os_log(_:dso:log:type:_:)();

      [v11 setFilteredOutReason:2];
      v12 = 1;
      goto LABEL_6;
    }
  }

  os_log(_:dso:log:type:_:)();

  v12 = 0;
LABEL_6:
  v13 = [a1 silencingUserInfo];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = [objc_allocWithZone(NSNumber) initWithBool:v12];
  [v13 __swift_setObject:v17 forKeyedSubscript:{_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)(), v14, v16}];

  swift_unknownObjectRelease();
  if (v12)
  {
    v18 = sub_10042A10C();
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_10042A4E4(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 remoteMember];
  v10 = v9;
  if (!v9)
  {
    return v10 & 1;
  }

  v11 = [v9 handle];

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = [a1 account];
  v10 = v12;
  if (!v12)
  {

    return v10 & 1;
  }

  v13 = [v12 handle];

  if (!v13)
  {

LABEL_35:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {

    LOBYTE(v10) = 1;
    return v10 & 1;
  }

  v43 = v13;
  v44 = v11;
  v14 = [*(v1 + OBJC_IVAR___CSDOwnNumberCallFilter_idsCTAdapter) currentSIMsWithError:0];
  sub_10026D814(&qword_1006AB5C8, qword_1005871D8);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_10000B6F4(v15);
  v17 = 0;
  v46 = v15 & 0xC000000000000001;
  v47 = result;
  v48 = v15;
  v45 = v15 & 0xFFFFFFFFFFFFFF8;
  v18 = (v4 + 8);
  while (1)
  {
    if (v47 == v17)
    {

      v32 = 0;
      v33 = 0;
      goto LABEL_28;
    }

    if (v46)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
    }

    else
    {
      if (v17 >= *(v45 + 16))
      {
        goto LABEL_40;
      }

      v19 = *(v48 + 8 * v17 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return result;
    }

    v20 = [v19 SIMIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [a1 account];
    if (!v24)
    {

      goto LABEL_23;
    }

    v25 = v24;
    v26 = [v24 UUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = UUID.uuidString.getter();
    v29 = v28;
    (*v18)(v8, v3);
    if (v21 == v27 && v23 == v29)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_27;
    }

LABEL_23:
    result = swift_unknownObjectRelease();
    ++v17;
  }

LABEL_27:

  v34 = [v19 phoneNumber];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v35;

LABEL_28:
  v37 = v43;
  v36 = v44;
  v38 = [v44 value];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (!v33)
  {

    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  if (v32 == v39 && v33 == v41)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    LOBYTE(v10) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_unknownObjectRelease();

  return v10 & 1;
}

id sub_10042A9B0(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CSDOwnNumberCallFilter_idsCTAdapter;
  *&v1[v4] = [objc_opt_self() sharedInstance];
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithQueue:", a1);

  return v5;
}

unint64_t sub_10042AA98()
{
  result = qword_1006AB5B8;
  if (!qword_1006AB5B8)
  {
    type metadata accessor for OwnNumberCallFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB5B8);
  }

  return result;
}

id sub_10042AAEC()
{
  result = [objc_allocWithZone(type metadata accessor for SceneObservationManager()) init];
  qword_1006BA820 = result;
  return result;
}

id sub_10042AB1C()
{
  if (qword_1006A0C00 != -1)
  {
    swift_once();
  }

  v1 = qword_1006BA820;

  return v1;
}

id sub_10042ABA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___CSDSceneObservationManager_state];
  *v2 = 0;
  *(v2 + 1) = _swiftEmptyArrayStorage;
  *(v2 + 2) = _swiftEmptyDictionarySingleton;
  *(v2 + 3) = _swiftEmptyDictionarySingleton;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = qword_1006A0C08;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006AB5D0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "CSDSceneObservationManager.init()", v9, 2u);
  }

  return v5;
}

void sub_10042ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = 0;
  v8 = *v4;
  v9 = *(*v4 + 16);
  v10 = *v4 + 32;
  while (1)
  {
    if (i == v9)
    {
      if (a4)
      {
        v41 = *(v8 + 16);

        for (i = 0; ; ++i)
        {
          if (i == v41)
          {
            sub_10026D814(&qword_1006A4760, &unk_10057EA60);
            v39 = swift_allocObject();
            *(v39 + 16) = xmmword_10057D6A0;
            *(v39 + 32) = a3;
            *(v39 + 40) = a4;
            *(v39 + 48) = a1;
            *(v39 + 56) = a2;

            v33 = v39;
            goto LABEL_33;
          }

          if (i >= *(v8 + 16))
          {
            goto LABEL_37;
          }

          v21 = (v10 + 16 * i);
          v22 = *v21;
          v23 = v21[1];
          v24 = *(v23 + 16);
          if (*v21)
          {
            v25 = v21[1];

            sub_10042C9D4(a3, a4, v23 + 32, v24, (v22 + 16));
            v27 = v26;

            if ((v27 & 1) == 0)
            {
LABEL_29:

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_30;
            }
          }

          else
          {
            v28 = (v23 + 40);
            v29 = v24 + 1;
            while (--v29)
            {
              if (*(v28 - 1) != a3 || *v28 != a4)
              {
                v28 += 2;
                if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_29;
            }
          }
        }
      }

      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_10057D690;
      *(v32 + 32) = a1;
      *(v32 + 40) = a2;

      v33 = v32;
LABEL_33:
      v34 = sub_10042C028(v33);
      v36 = v35;
      v31 = v42;
      sub_100461AD4();
      v37 = *(*v42 + 16);
      sub_100461BD8(v37);
      v8 = *v42;
      *(v8 + 16) = v37 + 1;
      v38 = v8 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v36;
      goto LABEL_34;
    }

    if (i >= *(v8 + 16))
    {
      break;
    }

    v11 = (v10 + 16 * i);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v13 + 16);
    if (*v11)
    {
      v15 = v11[1];

      sub_10042C9D4(a1, a2, v13 + 32, v14, (v12 + 16));
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v18 = (v13 + 40);
      v19 = v14 + 1;
      while (--v19)
      {
        if (*(v18 - 1) != a1 || *v18 != a2)
        {
          v18 += 2;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        return;
      }
    }

    ++i;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  sub_100470D48(v8);
  v8 = v40;
LABEL_30:
  v31 = v42;
  if (i < *(v8 + 16))
  {
    sub_10042BF90(a1, a2);
LABEL_34:
    *v31 = v8;
    return;
  }

  __break(1u);
}

uint64_t sub_10042B008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!*(v3 + 16) || (v4 = sub_100005208(), (v5 & 1) == 0))
  {
    v7 = 0;
    goto LABEL_6;
  }

  v6 = *(v3 + 56) + 40 * v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v12 = *(v6 + 33);
  v13 = *(v6 + 34);

  if (!v8)
  {
LABEL_6:
    result = sub_10042CD90(v7, 0);
    v11 = 0;
    goto LABEL_7;
  }

  result = sub_10042CD90(v7, v8);
LABEL_7:
  *a2 = v11;
  return result;
}

uint64_t sub_10042B15C()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v1);
  sub_10042B1C8(&v1[2], &v3);
  os_unfair_lock_unlock(v1);
  return v3;
}

uint64_t sub_10042B1C8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = *(result + 8);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v3 + 56) + 40 * (v9 | (v2 << 6));
    result = *(v10 + 16);
    v11 = *(v10 + 34);
    if (result == 0xD00000000000001DLL && 0x8000000100576E40 == *(v10 + 24))
    {
      if (*(v10 + 34))
      {
LABEL_16:
        v13 = 1;
LABEL_18:
        *a2 = v13;
        return result;
      }
    }

    else
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result & v11)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      v13 = 0;
      goto LABEL_18;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10042B4B8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((*(a1 + 32) ^ *(a2 + 32)) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0))
  {
    v6 = *(a1 + 34) ^ *(a2 + 34) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_10042B55C()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  Hasher._combine(_:)(v0[4] & 1);
  Hasher._combine(_:)(*(v0 + 33) & 1);
  Hasher._combine(_:)(*(v0 + 34) & 1);
}

Swift::Int sub_10042B5B8()
{
  Hasher.init(_seed:)();
  sub_10042B55C();
  return Hasher._finalize()();
}

Swift::Int sub_10042B5F8()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[15] = *(v0 + 31);
  return sub_10042B5B8();
}

void sub_10042B634()
{
  v1 = *v0;
  *v2 = v0[1];
  *&v2[15] = *(v0 + 31);
  sub_10042B55C();
}

Swift::Int sub_10042B670()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[15] = *(v0 + 31);
  Hasher.init(_seed:)();
  sub_10042B55C();
  return Hasher._finalize()();
}

uint64_t sub_10042B6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  *v8 = v5[1];
  *&v8[15] = *(v5 + 31);
  return sub_10042B2F4(a1, a2, a3, a4, a5);
}

uint64_t sub_10042B6FC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return sub_10042B4B8(&v5, &v7) & 1;
}

uint64_t sub_10042B780()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006AB5D0);
  sub_10000AF9C(v0, qword_1006AB5D0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10042B800(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *, uint64_t, uint64_t))
{
  v7 = (v3 + OBJC_IVAR___CSDSceneObservationManager_state);
  os_unfair_lock_lock(v7);
  a3(&v9, v7 + 2, a1, a2);
  os_unfair_lock_unlock(v7);
  return v9;
}

uint64_t sub_10042B874@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = 0;
  v8 = *(result + 8);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_9:
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = *(v8 + 56) + 40 * (v14 | (v7 << 6));
    if (*(v15 + 33) == 1)
    {
      result = *(v15 + 16);
      v16 = result == a2 && *(v15 + 24) == a3;
      if (v16 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        v17 = 1;
LABEL_17:
        *a4 = v17;
        return result;
      }
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
      v17 = 0;
      goto LABEL_17;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}