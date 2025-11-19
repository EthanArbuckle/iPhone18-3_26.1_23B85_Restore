void *sub_1002A333C(uint64_t a1, void *a2)
{
  v2 = sub_100008154(a2, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (v2)
  {
    v3 = v2;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;

    v7 = sub_1002A2784(v6);
    sub_1002A2C40(v7);
    v9 = v8;

    v10 = sub_10000B6F4(v4);
    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {

        return _swiftEmptyArrayStorage;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(v4 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
      }

      v14 = [v12 originator];
      v15 = [v14 identifier];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v9 + 16))
      {
        v16 = sub_100005208();
        v18 = v17;

        if (v18)
        {
          v19 = *(*(v9 + 56) + 8 * v16);
          if ([v13 isActivated])
          {
            v20 = [v13 originator];
            v21 = [v20 revision];

            if (v19 < v21)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v22 = _swiftEmptyArrayStorage[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              continue;
            }
          }
        }
      }

      else
      {
      }
    }
  }

  v24 = 0;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  return _swiftEmptyArrayStorage;
}

void *sub_1002A3600(uint64_t a1, void *a2)
{
  v21 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = (a1 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      v9 = String._bridgeToObjectiveC()();

      v10 = [v5 tu_predicateForConversationLinkDescriptorsWithPseudonym:v9];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 += 2;
      --v3;
    }

    while (v3);
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057DEC0;
  *(v11 + 32) = [objc_opt_self() tu_predicateForConversationLinkDescriptorsWithActivated:1];
  *(v11 + 40) = sub_100421378();
  v12 = sub_10000C350();
  v20 = 0;
  v13 = [a2 conversationLinkDescriptorsWithPredicate:v12 limit:0 offset:0 error:&v20];
  v14 = v20;
  if (v13)
  {
    v15 = v13;
    sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v14;
  }

  else
  {
    v18 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v16 = _swiftEmptyArrayStorage;
  }

  return v16;
}

void *sub_1002A3870(uint64_t a1, void *a2)
{
  v36 = 0;
  v5 = sub_100008154(a2, "conversationLinkDescriptorsWithPredicate:limit:offset:error:");
  if (!v5)
  {
    v29 = 0;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = 0;

  v9 = 0;
  v10 = sub_1002A2510(v7);
  v11 = &v31;
  v13 = __chkstk_darwin(v10, v12);
  v30[2] = a1;
  v14 = sub_1002A3DF0(v13, sub_1002A4178, v30);

  v15 = sub_1002A29C8(v14);

  v16 = *(v15 + 16);
  if (!v16)
  {

    return _swiftEmptyArrayStorage;
  }

  v36 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_1002A4180(v15);
  sub_10000A614();
  v32 = v17;
  v33 = v15;
  v31 = v15 + 72;
  v18 = 1;
  do
  {
    if (v11 < 0 || v11 >= v18 << *(v15 + 32))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    sub_10000E948();
    if (v21)
    {
      goto LABEL_25;
    }

    if (*(v15 + 36) != v3)
    {
      goto LABEL_26;
    }

    v34 = v19;
    v35 = v20;
    v18 = objc_allocWithZone(sub_1000101F4());

    sub_10000F508();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v22 = v36[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    v15 = v33;
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v23 = v18 << *(v15 + 32);
    if (v11 >= v23)
    {
      goto LABEL_27;
    }

    if ((*(v2 + 8 * v9) & v14) == 0)
    {
      goto LABEL_28;
    }

    if (*(v15 + 36) != v3)
    {
      goto LABEL_29;
    }

    sub_1000170C8();
    if (v21)
    {
      sub_1000150A0();
      v26 = (v31 + 8 * v9);
      while (v25 < v24)
      {
        v27 = *v26++;
        v9 = v27;
        v14 += 64;
        ++v25;
        if (v27)
        {
          sub_100009FA4(v34);
          v23 = __clz(__rbit64(v9)) + v14;
          goto LABEL_18;
        }
      }

      sub_100009FA4(v34);
    }

    else
    {
      sub_1000180F8();
    }

LABEL_18:
    v11 = v23;
    v3 = v32;
  }

  while (v35 + 1 != v16);

  return v36;
}

void sub_1002A3BC0(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = sub_10000B6F4(*a1);
  p_attr = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      v10 = 0;
      goto LABEL_25;
    }

    if (p_attr)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v7 = *(v2 + 8 * i + 32);
    }

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if ([v7 isActivated])
    {
      break;
    }
  }

  v16 = [v8 originator];

  v11 = sub_10000B6F4(v2);
  while (v11 != v9)
  {
    if (p_attr)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      if (v9 >= *(v5 + 16))
      {
        goto LABEL_30;
      }

      v12 = *(v2 + 8 * v9 + 32);
    }

    v13 = v12;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_28;
    }

    if ([v12 isActivated])
    {
      v2 = p_attr;
      v11 = v5;
      v5 = v3;
      v3 = [v13 originator];

      p_attr = &stru_10067AFF8.attr;
      v14 = [v16 revision];
      if (v14 >= [v3 revision])
      {
        v13 = v3;
        sub_10000E584();
        goto LABEL_22;
      }

      v16 = v3;
      ++v9;
      sub_10000E584();
    }

    else
    {
LABEL_22:

      ++v9;
    }
  }

  v10 = [v16 revision];

LABEL_25:
  *a2 = v10;
  *(a2 + 8) = v3 == i;
}

void *sub_1002A3DF0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1002A40E8(v12, v8, v6, a2);

      return a3;
    }
  }

  __chkstk_darwin(a1, a2);
  v9 = &v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v8, v9);
  sub_1002A3F74(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1002A3F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v22 = 0;
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
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = a4(v15, v16, v17);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384A1C(a1, a2, v22, a3);
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

void *sub_1002A40E8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

    sub_1002A3F74(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1002A4180(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

id sub_1002A4204(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for Locale();
  v8 = sub_100007FEC(v7);
  v40 = v9;
  v41 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = type metadata accessor for UUID();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v42 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
  sub_1000112B0(OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier);
  v43 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
  sub_1000112B0(OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier);
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason] = 8;
  UUID.init()();
  v26 = *(v19 + 32);
  v26(&v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid], v25, v16);
  type metadata accessor for CallTranslationStateMachine();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine] = sub_1003AE1FC(0);
  v27 = [a2 uniqueProxyIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID];
  *v31 = v28;
  v31[1] = v30;
  v32 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v26(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID], v25, v16);
  swift_unknownObjectWeakAssign();
  v33 = [a1 localLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = *(v40 + 32);
  v34(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale], v15, v41);
  v35 = [a1 remoteLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v34(&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale], v15, v41);
  v36 = [a1 translationLinks];
  *&v5[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks] = v36;
  sub_10000FD00();
  sub_1002A5F20(a3, &v5[v42]);
  swift_endAccess();
  sub_10000FD00();
  sub_1002A5F20(a4, &v5[v43]);
  swift_endAccess();
  v46.receiver = v5;
  v46.super_class = type metadata accessor for CallTranslationSession();
  v37 = objc_msgSendSuper2(&v46, "init");

  sub_100009A04(a4, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(a3, &unk_1006A3DD0, &unk_10057C9D0);
  return v37;
}

uint64_t sub_1002A4614()
{
  v2 = v0;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v69 = &v66 - v6;
  v7 = type metadata accessor for Locale();
  v8 = sub_100007FEC(v7);
  v68 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100007BAC();
  v15 = v13 - v14;
  __chkstk_darwin(v16, v17);
  sub_10000E95C();
  v18 = type metadata accessor for UUID();
  v19 = sub_100007FEC(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19, v24);
  sub_100007FDC();
  v27 = v26 - v25;
  swift_getObjectType();
  v72[0] = _typeName(_:qualified:)();
  v72[1] = v28;
  v29._countAndFlagsBits = 40;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v73 = v72[0];
  v74 = v72[1];
  strcpy(v72, "state: ");
  v72[1] = 0xE700000000000000;
  LOBYTE(v70._countAndFlagsBits) = *(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16);
  v30._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  (sub_10000A62C)();

  v72[0] = 0x203A64697575;
  v72[1] = 0xE600000000000000;
  v32 = *(v21 + 16);
  v32(v27, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid, v18);
  v33._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v33);

  v34._countAndFlagsBits = 32;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  (sub_10000A62C)();

  sub_100015EF8();

  strcpy(v72, "requestUUID: ");
  HIWORD(v72[1]) = -4864;
  v67 = v0;
  v32(v27, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID, v18);
  v35._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v35);

  v36._countAndFlagsBits = 32;
  v36._object = 0xE100000000000000;
  String.append(_:)(v36);
  (sub_10000A62C)();

  strcpy(v72, "localLocale: ");
  HIWORD(v72[1]) = -4864;
  v37 = v68;
  v38 = *(v68 + 16);
  v38(v1, v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v7);
  v38(v15, v1, v7);
  v39 = String.init<A>(reflecting:)();
  v41 = v40;
  v42 = *(v37 + 8);
  v42(v1, v7);
  v43._countAndFlagsBits = v39;
  v43._object = v41;
  String.append(_:)(v43);

  sub_10000A62C(v44);

  sub_100015EF8();

  strcpy(v72, "remoteLocale: ");
  HIBYTE(v72[1]) = -18;
  v45 = v67;
  v38(v1, v67 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v7);
  v38(v15, v1, v7);
  v46 = String.init<A>(reflecting:)();
  v48 = v47;
  v42(v1, v7);
  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  sub_10000A62C(v50);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v72[0] = 0xD000000000000012;
  v72[1] = 0x8000000100564000;
  LODWORD(v70._countAndFlagsBits) = *(v45 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks);
  type metadata accessor for TUTranslationLinks(0);
  v51._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v51);

  sub_10000A62C(v52);

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v70._countAndFlagsBits = 0xD000000000000017;
  v70._object = 0x8000000100564020;
  v53 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
  sub_100005298();
  v54 = v69;
  sub_1002A5F90(v45 + v53, v69);
  v55 = sub_1002910A0();
  v57 = v56;
  sub_100009A04(v54, &unk_1006A3DD0, &unk_10057C9D0);
  v58._countAndFlagsBits = v55;
  v58._object = v57;
  String.append(_:)(v58);

  String.append(_:)(v70);

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v71._countAndFlagsBits = 0xD000000000000019;
  v71._object = 0x8000000100564040;
  v59 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
  sub_100005298();
  sub_1002A5F90(v45 + v59, v54);
  v60 = sub_1002910A0();
  v62 = v61;
  sub_100009A04(v54, &unk_1006A3DD0, &unk_10057C9D0);
  v63._countAndFlagsBits = v60;
  v63._object = v62;
  String.append(_:)(v63);

  String.append(_:)(v71);

  v64._countAndFlagsBits = 41;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);
  return v73;
}

id sub_1002A4CAC()
{
  v2 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  sub_100007BAC();
  v7 = v5 - v6;
  __chkstk_darwin(v8, v9);
  v51 = &v48 - v10;
  v11 = type metadata accessor for Locale();
  v12 = sub_100007FEC(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007BAC();
  v20 = v18 - v19;
  __chkstk_darwin(v21, v22);
  v24 = &v48 - v23;
  v25 = type metadata accessor for UUID();
  v26 = sub_100007FEC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26, v31);
  sub_100007BAC();
  v34 = v32 - v33;
  __chkstk_darwin(v35, v36);
  result = sub_10000E95C();
  if (*(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16) != 5)
  {
    v50 = v7;
    v38 = *(v28 + 16);
    v38(v1, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uuid, v25);
    v38(v34, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_requestUUID, v25);
    v49 = sub_1002A4FB4();
    v39 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID + 8);
    v48 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_callUUID);
    v40 = *(v14 + 16);
    v40(v24, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v11);
    v40(v20, v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v11);
    v41 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_translationLinks);
    v42 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_uplinkTranslatorIdentifier;
    sub_100005298();
    v43 = v51;
    sub_1002A5F90(v0 + v42, v51);
    v44 = OBJC_IVAR____TtC13callservicesd22CallTranslationSession_downlinkTranslatorIdentifier;
    sub_100005298();
    v45 = v0 + v44;
    v46 = v50;
    sub_1002A5F90(v45, v50);
    v47 = objc_allocWithZone(TUCallTranslationSession);

    return sub_1002A5CB8(v1, v34, v49, v48, v39, v24, v20, v41, v43, v46);
  }

  return result;
}

uint64_t sub_1002A4FB4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 5;
  }

  v2 = Strong;
  if ([Strong status] == 5)
  {

    return 5;
  }

  v3 = [v2 status];

  if (v3 == 6)
  {
    return 5;
  }

  v5 = *(*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine) + 16);

  return sub_1003AE1E8(v5);
}

id sub_1002A509C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallTranslationSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CallTranslationSession()
{
  result = qword_1006A2EE0;
  if (!qword_1006A2EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A5278()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Locale();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100296D6C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1002A5410(void (*a1)(uint64_t))
{
  v4 = *(v1 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine);

  a1(v5);

  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_1002A4CAC();
      [v7 setTranslationSession:v8];
    }
  }
}

_UNKNOWN **sub_1002A54AC(char a1)
{
  v2 = v1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA688);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    sub_100007BFC();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Forcefully asked to stop translation session with reason %s", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100009ED0();

    sub_100009ED0();
  }

  if (*(v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 8)
  {
    *(v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) = a1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong askProviderToAllowAudioInjection:0];
  }

  v14 = *(v2 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine);

  sub_1003AE81C(5);

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = sub_1002A4CAC();
    [v16 setTranslationSession:v17];
  }

  return &off_1006202B8;
}

_UNKNOWN **sub_1002A5698(char a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_1006A0B58 != -1)
  {
    sub_100008170();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA688);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = "com.apple.callservicesd.shareplay-session-server-terminated";
  if (os_log_type_enabled(v7, v8))
  {
    sub_100007BFC();
    v30 = v4;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315138;
    v12 = a1;
    v13 = String.init<A>(reflecting:)();
    v15 = sub_10002741C(v13, v14, &v31);
    v9 = "com.apple.callservicesd.shareplay-session-server-terminated";

    *(v10 + 4) = v15;
    v3 = v2;
    _os_log_impl(&_mh_execute_header, v7, v8, "Asked to stop translation session with reason %s", v10, 0xCu);
    sub_100009B7C(v11);
    sub_100009ED0();

    v4 = v30;
    sub_100009ED0();
  }

  else
  {
    v12 = a1;
  }

  if (*(v4 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 8)
  {
    *(v4 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) = v12;
  }

  v16 = *(v4 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine);

  if (sub_1002A59AC())
  {
    v17 = sub_1003AE440();
  }

  else
  {
    v17 = sub_1003AE294();
  }

  v18 = v17;

  if (!v3)
  {

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      sub_100007BFC();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = *(v9 + 460);

      sub_10026D814(&qword_1006A2EF0, &unk_10057DFC0);
      v23 = String.init<A>(reflecting:)();
      v25 = sub_10002741C(v23, v24, &v31);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Stop translation action %s", v21, 0xCu);
      sub_100009B7C(v22);
      sub_100009ED0();

      sub_100009ED0();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = sub_1002A4CAC();
      [v27 setTranslationSession:v28];
    }
  }

  return v18;
}

id sub_1002A59AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = Strong;
  if (*(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stoppedReason) == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = Strong;
    if ([v4 status] == 1)
    {
      v3 = [v4 isEndpointOnCurrentDevice];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_1002A5A50()
{
  v2 = *(v0 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine);

  v3 = sub_1002A59AC();
  v4 = sub_1003AE5F4(v3 & 1);

  if (!v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_1002A4CAC();
      [v6 setTranslationSession:v7];
    }
  }

  return v4;
}

void sub_1002A5B08()
{
  v2 = v0;
  v3 = *&v0[OBJC_IVAR____TtC13callservicesd22CallTranslationSession_stateMachine];

  v4 = sub_1002A59AC();
  sub_1003AE7A8(v4 & 1);

  if (!v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_1002A4CAC();
      [v6 setTranslationSession:v7];
    }

    if (qword_1006A0B58 != -1)
    {
      sub_100008170();
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA688);
    v9 = v2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      sub_100007BFC();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = sub_1002A4CAC();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Translation session completed, %@", v12, 0xCu);
      sub_100009A04(v13, &unk_1006A2630, &qword_10057CB40);
      sub_100009ED0();

      sub_100009ED0();
    }
  }
}

id sub_1002A5CB8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v26.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = a2;
  v13.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = String._bridgeToObjectiveC()();

  v30 = a6;
  v15.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v16.super.isa = Locale._bridgeToObjectiveC()().super.isa;
  v17 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(a9, 1, v17) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a9, v17);
  }

  if (sub_100015468(a10, 1, v17) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(a10, v17);
  }

  LODWORD(v25) = a8;
  v20 = [v29 initWithUUID:v26.super.isa requestUUID:v13.super.isa state:a3 callUUID:v14 localLocale:v15.super.isa remoteLocale:v16.super.isa translationLinks:v25 uplinkTranslatorIdentifier:isa downlinkTranslatorIdentifier:v19];

  v21 = type metadata accessor for Locale();
  v22 = *(*(v21 - 8) + 8);
  v22(a7, v21);
  v22(v30, v21);
  v23 = *(*(v17 - 8) + 8);
  v23(v31, v17);
  v23(a1, v17);
  return v20;
}

uint64_t sub_1002A5F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A5F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A6034()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v6, v1);
  if (v7)
  {
    return *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A61F8()
{
  v1 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  v2 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8);
  sub_1000115CC(v1);
  return v1;
}

uint64_t sub_1002A62E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  v4 = *(v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
  v5 = *(v2 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

char *sub_1002A6300(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v4 = sub_1002A6F58(v3, a1, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1002A63B4()
{
  TUCTServerConnection();
  v0 = String._bridgeToObjectiveC()();
  v1 = _CTServerConnectionCarrierSettingsCopyValue();

  return v1;
}

uint64_t sub_1002A6420(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchWallTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v20 - v16;
  static DispatchWallTime.now()();
  *v7 = a1;
  (*(v3 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v2);
  + infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  v18 = *(v9 + 8);
  v18(v14, v8);
  OS_dispatch_queue.asyncAfter(wallDeadline:execute:)();
  return (v18)(v17, v8);
}

uint64_t sub_1002A6634()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue];
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueueAsBarrier(_:), v8);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v13, v8);
  if (v16)
  {
    v18 = sub_1002A6A40();
    v19 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10057D690;
    *(v20 + 56) = &type metadata for Int;
    *(v20 + 64) = &protocol witness table for Int;
    *(v20 + 32) = v18;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible] = 1;
    v21 = OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem;
    v22 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem];
    if (v22)
    {
      v24 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchCancelHandler];
      v23 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchCancelHandler + 8];
      v25 = *&v1[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem];

      v24(v22);
    }

    static DispatchQoS.default.getter();
    static DispatchWorkItemFlags.barrier.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    aBlock[4] = sub_1002A717C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_1006230B0;
    _Block_copy(aBlock);
    v27 = type metadata accessor for DispatchWorkItem();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = v1;
    v31 = DispatchWorkItem.init(qos:flags:block:)();

    v32 = *&v1[v21];
    *&v1[v21] = v31;

    v33 = *&v30[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchAfterHandler];
    v34 = *&v30[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchAfterHandler + 8];

    v33(v18, v15, v31);

    v35 = *&v30[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange];
    if (v35)
    {
      v36 = *&v30[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange + 8];

      v35(v37);

      return sub_1000051F8(v35);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002A6A40()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueueAsBarrier(_:), v1);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  v16 = 0;
  v10 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutDeterminationHandler);
  v9 = *(v0 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutDeterminationHandler + 8);

  v11 = v10(&v16);

  if (v11)
  {
    v12 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10057D6A0;
    *(v13 + 56) = &type metadata for Int32;
    *(v13 + 64) = &protocol witness table for Int32;
    *(v13 + 32) = v11;
    *(v13 + 96) = &type metadata for Int32;
    *(v13 + 104) = &protocol witness table for Int32;
    *(v13 + 72) = HIDWORD(v11);
    os_log(_:dso:log:type:_:)();
  }

  else if (v16)
  {
    v15[1] = v16;
    if (swift_dynamicCast())
    {
      return v15[0];
    }
  }

  return 0;
}

uint64_t sub_1002A6C9C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue);
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueueAsBarrier(_:), v2);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v7, v2);
  if (v8)
  {
    v11 = sub_100004778();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible) = 0;
    v12 = *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem);
    *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem) = 0;

    v13 = a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange;
    v14 = *(a1 + OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange);
    if (v14)
    {
      v15 = *(v13 + 8);

      v14(v16);
      return sub_1000051F8(v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1002A6F58(uint64_t a1, void *a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible] = 0;
  v7 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange];
  *v7 = 0;
  v7[1] = 0;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem] = 0;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue] = a2;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver] = a1;
  v8 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutDeterminationHandler];
  *v8 = sub_1002A63B4;
  v8[1] = 0;
  v9 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchAfterHandler];
  *v9 = sub_1002A6420;
  v9[1] = 0;
  v10 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchCancelHandler];
  *v10 = sub_1002A6610;
  v10[1] = 0;
  v21.receiver = a3;
  v21.super_class = ObjectType;
  v11 = a2;
  v12 = objc_msgSendSuper2(&v21, "init");
  v13 = OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver;
  v14 = *&v12[OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver];
  v15 = v12;
  [v14 setTriggers:1];
  v16 = *&v12[v13];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[4] = sub_100028174;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100028100;
  v20[3] = &unk_100623010;
  v18 = _Block_copy(v20);
  swift_unknownObjectRetain();

  [v16 setCallChanged:v18];
  _Block_release(v18);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1002A7184()
{
  v1 = *(v0 + 16);

  sub_1002A730C(*(v0 + 24));
  return v0;
}

uint64_t sub_1002A71B4()
{
  v0 = sub_1002A7184();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1002A7208(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A722C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A7280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1002A72DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1002A730C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id sub_1002A731C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___CSDFaceTimeUnknownReporter_idsService;
  v7 = objc_allocWithZone(IDSService);
  *&v2[v6] = sub_1003C1FE0(0xD000000000000026, 0x80000001005646A0);
  *&v2[OBJC_IVAR___CSDFaceTimeUnknownReporter_queue] = a1;
  *&v2[OBJC_IVAR___CSDFaceTimeUnknownReporter_chManager] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

void sub_1002A7418()
{
  v1 = *(v0 + OBJC_IVAR___CSDFaceTimeUnknownReporter_idsService);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    v5 = [v4 callerID];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      CSDCall.spamModel(with:)(v6, v8, v21);

      v9 = sub_10034B658();
      sub_1002A7DD8(v21);
      v10 = static os_log_type_t.error.getter();
      v11 = sub_10003D4D0();
      if (os_log_type_enabled(v11, v10))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v20 = v13;
        *v12 = 136315138;
        v14 = sub_100291118(v9);
        v16 = sub_10002741C(v14, v15, &v20);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v11, v10, "FTUR: report unknown, model.dictionary: %s", v12, 0xCu);
        sub_100009B7C(v13);
      }

      if (v9)
      {
        v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v17.super.isa = 0;
      }

      [v3 reportSpamMessage:v17.super.isa];

      static os_log_type_t.error.getter();
      v18 = sub_10003D4D0();
      os_log(_:dso:log:_:_:)();

      return;
    }

    static os_log_type_t.error.getter();
    v19 = sub_10003D4D0();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.error.getter();
    v19 = sub_10003D4D0();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1002A7750()
{
  v0 = 3553323;
  v1 = [objc_opt_self() tu_defaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_1002A7838()
{
  if (qword_1006A0A68 != -1)
  {
    swift_once();
  }

  if (byte_1006A4C90 == 1)
  {
    sub_1002A7750();
    sub_1002A7E94();
    sub_1002A7EE8();
    v0 = BidirectionalCollection<>.starts<A>(with:)();
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

id sub_1002A791C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057CA80;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 predicateForCallsWithStatusOriginated:1];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 predicateForCallsWithRemoteParticipantHandleValue:v9];

  *(v8 + 32) = v10;
  v16 = v8;
  if (a4)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [v7 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v12];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v16;
    }
  }

  if (sub_10000B6F4(v8) < 2)
  {
    if (!sub_10000B6F4(v8))
    {

      goto LABEL_17;
    }

    sub_10039C390(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v8 + 32);
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

BOOL sub_1002A7BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1002A791C(a1, a2, a3, a4);
  v6 = sub_10003D4D0();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057D690;
  *(v7 + 56) = sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  *(v7 + 64) = sub_1002A7E2C();
  *(v7 + 32) = v5;
  v8 = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = [*(v4 + OBJC_IVAR___CSDFaceTimeUnknownReporter_chManager) callsWithPredicate:v8 limit:1 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = sub_10000B6F4(v10);

  return v11 == 0;
}

unint64_t sub_1002A7E2C()
{
  result = qword_1006AB480;
  if (!qword_1006AB480)
  {
    sub_100006AF0(255, &unk_1006A30C0, NSPredicate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB480);
  }

  return result;
}

unint64_t sub_1002A7E94()
{
  result = qword_1006A30E8;
  if (!qword_1006A30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30E8);
  }

  return result;
}

unint64_t sub_1002A7EE8()
{
  result = qword_1006A30F0;
  if (!qword_1006A30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30F0);
  }

  return result;
}

uint64_t sub_1002A7FE4()
{
  v1 = *(v0 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  v2 = *(v0 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8);
  sub_1000115CC(v1);
  return v1;
}

uint64_t sub_1002A80CC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4);
}

BOOL sub_1002A8120()
{
  v1 = [*(v0 + OBJC_IVAR___CSDCarPlayManager_carSessionStatus) currentSession];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

char *sub_1002A8170()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v44 = sub_100007FEC(v0);
  v45 = v1;
  v3 = *(v2 + 64);
  __chkstk_darwin(v44, v4);
  sub_100007FDC();
  v43 = v6 - v5;
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = sub_100007FEC(v39);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = type metadata accessor for OS_dispatch_queue.Attributes();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  sub_100007FDC();
  v19 = type metadata accessor for DispatchQoS();
  v20 = sub_100007FEC(v19);
  v41 = v21;
  v42 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20, v24);
  sub_100007FDC();
  v27 = v26 - v25;
  v38 = OBJC_IVAR___CSDCarPlayManager_carSessionQueue;
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  *&v40[v38] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = &v40[OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = [objc_allocWithZone(CARSessionStatus) init];
  *&v40[OBJC_IVAR___CSDCarPlayManager_carSessionStatus] = v29;
  v47.receiver = v40;
  v47.super_class = type metadata accessor for CarPlayManager();
  v30 = objc_msgSendSuper2(&v47, "init");
  v31 = *&v30[OBJC_IVAR___CSDCarPlayManager_carSessionQueue];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002A8958;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100623230;
  v33 = _Block_copy(aBlock);
  v34 = v30;
  v35 = v31;

  static DispatchQoS.unspecified.getter();
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v45 + 8))(v43, v44);
  (*(v41 + 8))(v27, v42);

  v36 = *&v34[OBJC_IVAR___CSDCarPlayManager_carSessionStatus];
  [v36 setSessionObserver:v34];

  return v34;
}

void sub_1002A867C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___CSDCarPlayManager_carSessionStatus);

    [v2 waitForSessionInitialization];
  }
}

id sub_1002A8718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A8834(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  if (v3)
  {
    v5 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8);

    v3(a2 & 1);

    sub_1000051F8(v3);
  }
}

unint64_t sub_1002A8914()
{
  result = qword_1006A31A0;
  if (!qword_1006A31A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A31A0);
  }

  return result;
}

void sub_1002A8978(void *a1, void *a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v19 - v7;
  v9 = [a2 provider];
  v10 = [v9 isTelephonyProvider];

  if (v10 && ([a2 isUsingBaseband] & 1) != 0)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = [a2 provider];
    v13 = [v12 isFaceTimeProvider];

    if (v13)
    {
      LOBYTE(v11) = 2;
    }

    else
    {
      v14 = [a2 callSubType];
      v11 = 0x504030100uLL >> (8 * v14);
      if (v14 > 4)
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  [a1 setSource:v11];
  if ([a2 receptionistState])
  {
    v15 = 3;
  }

  else
  {
    v15 = 1;
  }

  [a1 setUsage:v15];
  v16 = [a2 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v17 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(v8, 1, v17) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v17 - 8) + 8))(v8, v17);
  }

  [a1 setReportingSamplingUUID:isa];
}

NSString sub_1002A8BAC()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1B8 = result;
  return result;
}

NSString sub_1002A8BE4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1C0 = result;
  return result;
}

NSString sub_1002A8C1C()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1C8 = result;
  return result;
}

uint64_t sub_1002A8C54()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = qword_1006A0788;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  sub_100009FC0(v4, v5, v6, v7, qword_1006BA1B8);

  v8 = [v1 defaultCenter];
  v9 = qword_1006A0790;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  sub_100009FC0(v10, v11, v12, v13, qword_1006BA1C0);

  v14 = [v1 defaultCenter];
  v15 = qword_1006A0798;

  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v0 selector:"disclosureAudioHasBeenGenerated:" name:qword_1006BA1C8 object:0];

  return v0;
}

uint64_t sub_1002A8E88(uint64_t a1)
{
  sub_1002A949C();
  swift_beginAccess();
  sub_1002A95B4(a1 + 16, v5);
  if (!v6)
  {
    return sub_1002A9624(v5);
  }

  sub_100009AB0(v5, v4);
  sub_1002A9624(v5);
  v2 = *sub_100009B14(v4, v4[3]);
  sub_1002B3B78();
  return sub_100009B7C(v4);
}

uint64_t sub_1002A8F30(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

void sub_1002A8FB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v34);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA670);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v32 = v24;
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, v33, v28, 2u);
    v24 = v32;
  }

  v29 = *(v7 + 56);
  if (v29)
  {
    aBlock[4] = a3;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = a4;
    v30 = _Block_copy(aBlock);
    v31 = v29;

    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v11 + 8))(v16, v8);
    (*(v19 + 8))(v24, v34);
  }
}

uint64_t sub_1002A92D8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  sub_1002A95B4(a1 + 16, v7);
  if (!v8)
  {
    return sub_1002A9624(v7);
  }

  sub_100009AB0(v7, v6);
  sub_1002A9624(v7);
  v4 = *sub_100009B14(v6, v6[3]);
  a2();
  return sub_100009B7C(v6);
}

uint64_t sub_1002A939C(void *a1, const char *a2)
{
  [a1 askProviderToAllowAudioInjection:1];
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA670);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1002A949C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong askProviderToAllowAudioInjection:0];
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1002A94F4()
{
  sub_1002A9624(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);

  return v0;
}

uint64_t sub_1002A952C()
{
  sub_1002A94F4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1002A95B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3310, &unk_10057E2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A9624(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3310, &unk_10057E2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002A96FC(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  swift_beginAccess();
  sub_10003A270(a1 + v13, v6, &qword_1006A5360, &qword_10057CB80);
  if (sub_100015468(v6, 1, v7) == 1)
  {
    static Locale.current.getter();
    if (sub_100015468(v6, 1, v7) != 1)
    {
      sub_100009A04(v6, &qword_1006A5360, &qword_10057CB80);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  v14 = a1 + OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation;
  v15 = *(a1 + OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation);
  if (v15)
  {
    v17 = *(v14 + 8);
    v16 = *(v14 + 16);
    v18 = (a1 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    v19 = *sub_100009B14(v18, v18[3]);
    v20 = v15;

    sub_100380660();
    if ((v21 & 1) == 0)
    {
      (*(v8 + 8))(v12, v7);

      return;
    }

    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA688);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v33 = v17;
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Start translation because we are notified that audio file has finished generation", v25, 2u);
      v17 = v33;
    }

    v26 = OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem;
    if (*(a1 + OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem))
    {
      v27 = *(a1 + OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem);

      dispatch thunk of DispatchWorkItem.cancel()();

      v28 = *(a1 + v26);
    }

    *(a1 + v26) = 0;

    v29 = *v14;
    v30 = *(v14 + 8);
    v31 = *(v14 + 16);
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = 0;
    sub_1002B6738(v29);
    sub_1002AAA80(v20, v17, v16);
  }

  (*(v8 + 8))(v12, v7);
}

uint64_t sub_1002A9A84(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v50 - v7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = &v50 - v17;
  if (*(a2 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_1002AC028;
    v21[4] = 0;

    sub_1002B16A0();
  }

  else
  {
    v19 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(a2 + v19, v8, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v8, 1, v9) == 1)
    {
      static Locale.current.getter();
      if (sub_100015468(v8, 1, v9) != 1)
      {
        sub_100009A04(v8, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      (*(v10 + 32))(v18, v8, v9);
    }

    v23 = (a2 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    v24 = *sub_100009B14(v23, v23[3]);
    sub_100380660();
    if (v25)
    {
      v26 = *(a2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v26)
      {
        v27 = v26;
        sub_1002A53B8();
      }

      v49 = *sub_100009B14((a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(a1);
      sub_1002B0B74(1);
      return (*(v10 + 8))(v18, v9);
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000AF9C(v28, qword_1006BA688);
      (*(v10 + 16))(v15, v18, v9);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v52 = v50;
        *v31 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v10;
        v35 = v34;
        v51 = *(v33 + 8);
        v51(v15, v9);
        v36 = sub_10002741C(v32, v35, &v52);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Disclosure files for %s do not exist! Not allowing translation", v31, 0xCu);
        sub_100009B7C(v50);
      }

      else
      {

        v51 = *(v10 + 8);
        v51(v15, v9);
      }

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;
      v40 = objc_allocWithZone(NSError);
      v41 = sub_100323698(v37, v39, 3, 0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v52 = v45;
        *v44 = 136315138;
        swift_getErrorValue();
        v46 = Error.localizedDescription.getter();
        v48 = sub_10002741C(v46, v47, &v52);

        *(v44 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v42, v43, "Cannot start call translation for active call, error: %s", v44, 0xCu);
        sub_100009B7C(v45);
      }

      return (v51)(v18, v9);
    }
  }
}

void sub_1002AA308(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v48[-v9];
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v11, v14);
  v17 = &v48[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15, v18);
  v20 = &v48[-v19];
  _Block_copy(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002B7324;
  *(v22 + 24) = v21;
  if (*(a2 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = sub_1002B6780;
    v26[4] = v22;
    _Block_copy(a3);
    _Block_copy(a3);

    sub_1002B16A0();
  }

  else
  {
    v52 = a1;
    v23 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(a2 + v23, v10, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v10, 1, v11) == 1)
    {
      _Block_copy(a3);
      _Block_copy(a3);

      static Locale.current.getter();
      v24 = v12;
      if (sub_100015468(v10, 1, v11) != 1)
      {
        sub_100009A04(v10, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      v24 = v12;
      (*(v12 + 32))(v20, v10, v11);
      _Block_copy(a3);
      _Block_copy(a3);
    }

    v27 = (a2 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    v28 = *sub_100009B14(v27, v27[3]);
    sub_100380660();
    if (v29)
    {
      v30 = *(a2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v30)
      {
        v31 = v30;
        sub_1002A53B8();
      }

      v47 = *sub_100009B14((a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(v52);
      sub_1002B0B74(1);
      (*(v24 + 8))(v20, v11);
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000AF9C(v32, qword_1006BA688);
      (*(v24 + 16))(v17, v20, v11);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v50 = v35;
        v52 = swift_slowAlloc();
        v53 = v52;
        *v35 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale);
        v49 = v34;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        v51 = *(v24 + 8);
        v51(v17, v11);
        v39 = sub_10002741C(v36, v38, &v53);

        v40 = v50;
        *(v50 + 1) = v39;
        _os_log_impl(&_mh_execute_header, v33, v49, "Disclosure files for %s do not exist! Not allowing translation", v40, 0xCu);
        sub_100009B7C(v52);

        v41 = v51;
      }

      else
      {

        v41 = *(v24 + 8);
        v41(v17, v11);
      }

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;
      v45 = objc_allocWithZone(NSError);
      v46 = sub_100323698(v42, v44, 3, 0);
      _Block_copy(a3);
      sub_1002B0904(v46, a3);

      v41(v20, v11);
    }
  }

  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_1002AAA80(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v50 - v11;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v50 - v21;
  if (*(v4 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = a2;
    v26[4] = a3;

    sub_1002B16A0();
  }

  else
  {
    v23 = a1;
    v24 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(v4 + v24, v12, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v12, 1, v13) == 1)
    {
      static Locale.current.getter();
      if (sub_100015468(v12, 1, v13) != 1)
      {
        sub_100009A04(v12, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      (*(v14 + 32))(v22, v12, v13);
    }

    v28 = (v4 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    v29 = *sub_100009B14(v28, v28[3]);
    sub_100380660();
    if (v30)
    {
      v31 = *(v4 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v31)
      {
        v32 = v31;
        sub_1002A53B8();
      }

      v49 = *sub_100009B14((v4 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(v4 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(v23);
      sub_1002B0B74(1);
      (a2)(0);
      return (*(v14 + 8))(v22, v13);
    }

    else
    {
      v53 = a3;
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000AF9C(v33, qword_1006BA688);
      (*(v14 + 16))(v19, v22, v13);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v50 = v36;
        v51 = swift_slowAlloc();
        v54 = v51;
        *v36 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = a2;
        v39 = v38;
        v40 = *(v14 + 8);
        v40(v19, v13);
        v41 = sub_10002741C(v37, v39, &v54);
        a2 = v52;

        v42 = v50;
        *(v50 + 1) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "Disclosure files for %s do not exist! Not allowing translation", v42, 0xCu);
        sub_100009B7C(v51);

        v43 = v40;
      }

      else
      {

        v43 = *(v14 + 8);
        v43(v19, v13);
      }

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
      v47 = objc_allocWithZone(NSError);
      v48 = sub_100323698(v44, v46, 3, 0);
      a2();

      return (v43)(v22, v13);
    }
  }
}

void sub_1002AB14C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = [objc_allocWithZone(TUFeatureFlags) init];
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v7 = type metadata accessor for Logger();
  sub_1000075F0(v7, qword_1006BA688);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v9))
  {
    v10 = sub_100006DC4();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Initializing CallTranslationController", v10, 2u);
    sub_100005F40();
  }

  v11 = type metadata accessor for TranslationDisclosureController();
  swift_allocObject();
  v12 = sub_1002A8C54();
  swift_getObjectType();
  v13 = type metadata accessor for TranslationDisclosureDataSource();
  v14 = v3;
  v15 = v5;
  sub_10037EED0();
  v37[3] = v11;
  v37[4] = &off_1006232A8;
  v37[0] = v12;
  v35 = v13;
  v36 = &off_10062AA38;
  v34[0] = v16;
  v17 = objc_allocWithZone(ObjectType);
  sub_10001BDB8(v37, v11);
  sub_10000F2D8();
  v19 = *(v18 + 64);
  __chkstk_darwin(v20, v21);
  sub_10000E598();
  (*(v22 + 16))(ObjectType);
  sub_10001BDB8(v34, v35);
  sub_10000F2D8();
  v24 = *(v23 + 64);
  __chkstk_darwin(v25, v26);
  sub_100007FDC();
  v29 = (v28 - v27);
  (*(v30 + 16))(v28 - v27);
  sub_1002B6894(v15, *ObjectType, *v29, v33, v14, v17);
  sub_100009B7C(v34);
  sub_100009B7C(v37);
  v31 = *((swift_isaMask & *v1) + 0x30);
  v32 = *((swift_isaMask & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}

uint64_t sub_1002AB48C(void **a1)
{
  v2 = type metadata accessor for Locale();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000AF9C(v8, qword_1006BA688);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = &selRef_isInstalled;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v25 = v2;
    v14 = v13;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v14 = 136315138;
    v15 = [v9 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Locale.identifier.getter();
    v18 = v17;
    HIDWORD(v23) = v11;
    v19 = v26;
    (*(v26 + 8))(v6, v25);
    v20 = sub_10002741C(v16, v18, &v27);

    *(v14 + 4) = v20;
    v12 = &selRef_isInstalled;
    _os_log_impl(&_mh_execute_header, v10, BYTE4(v23), "Start generating disclosure for %s", v14, 0xCu);
    sub_100009B7C(v24);

    v2 = v25;
  }

  else
  {

    v19 = v26;
  }

  v21 = [v9 v12[343]];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002AB748();
  return (*(v19 + 8))(v6, v2);
}

void sub_1002AB748()
{
  sub_100005EF4();
  v93 = v0;
  v2 = v1;
  v3 = type metadata accessor for DisclosureRequest();
  v4 = sub_100008070(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  sub_100007BAC();
  v96 = (v8 - v9);
  __chkstk_darwin(v10, v11);
  v95 = &v90 - v12;
  v13 = type metadata accessor for LanguageManager();
  v14 = sub_100007FEC(v13);
  v92 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  v91 = v20 - v19;
  v21 = type metadata accessor for Locale();
  v22 = sub_100007FEC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22, v27);
  sub_100007FDC();
  v30 = (v29 - v28);
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v31 = type metadata accessor for Logger();
  sub_1000075F0(v31, qword_1006BA688);
  v32 = *(v24 + 16);
  v98 = v24 + 16;
  v94 = v32;
  v32(v30, v2, v21);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = os_log_type_enabled(v33, v34);
  v97 = v21;
  if (v35)
  {
    v36 = sub_100005274();
    v90 = v13;
    v37 = v36;
    v38 = sub_100005E84();
    v103[0] = v38;
    *v37 = 136315138;
    sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v21;
    v42 = v41;
    (*(v24 + 8))(v30, v40);
    v43 = sub_10002741C(v39, v42, v103);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v33, v34, "downloadAndGenerateRemoteLocaleDisclosure for %s", v37, 0xCu);
    sub_100009B7C(v38);
    sub_100006868();
    v13 = v90;
    sub_100005F40();
  }

  else
  {

    (*(v24 + 8))(v30, v21);
  }

  [objc_allocWithZone(TUFeatureFlags) init];
  v44 = v91;
  LanguageManager.init(featureFlags:)();
  v45 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v47 = v46;
  v49 = v48;
  (v92->info)(v44, v13);
  v50 = v93;
  v51 = *(v93 + OBJC_IVAR___CSDCallTranslationController_speechAssetManager);
  v103[0] = Locale.identifier.getter();
  v103[1] = v52;
  v103[2] = v45;
  v103[3] = v47;
  v103[4] = v49;
  sub_100051D0C();

  v53 = Locale.identifier.getter();
  v55 = v54;
  v92 = @"CallServices";
  v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v56;

  v57._countAndFlagsBits = 47;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0xD000000000000014;
  v58._object = 0x80000001005613C0;
  String.append(_:)(v58);

  v59._countAndFlagsBits = v53;
  v59._object = v55;
  String.append(_:)(v59);

  v60 = v101;
  v61 = v102;
  v62 = v94;
  v63 = v95;
  v94(&v95[v3[5]], v2, v97);
  v64 = &v63[v3[9]];
  v64[3] = &type metadata for CallDisclosureFileLocation;
  v64[4] = &off_100631AF0;
  *v64 = v60;
  v64[1] = v61;
  *v63 = 0;
  v65 = &v63[v3[6]];
  *v65 = 0xD000000000000023;
  v65[1] = 0x8000000100564B30;
  v66 = &v63[v3[7]];
  *v66 = 0xD000000000000024;
  v66[1] = 0x8000000100564AD0;
  v67 = &v63[v3[8]];
  sub_10000B9F4();
  *v68 = v69;
  v68[1] = 0xEF6E6F6974616C73;
  v63[v3[10]] = 1;
  v70 = (v50 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
  swift_beginAccess();
  v71 = *sub_100009B14(v70, v70[3]);
  sub_10037F794();

  v72 = Locale.identifier.getter();
  v74 = v73;
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v75;

  v76._countAndFlagsBits = 47;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);

  v77._countAndFlagsBits = 0xD000000000000013;
  v77._object = 0x80000001005613E0;
  String.append(_:)(v77);

  v78._countAndFlagsBits = v72;
  v78._object = v74;
  String.append(_:)(v78);

  v79 = v99;
  v80 = v100;
  v81 = v96;
  v62(&v96[v3[5]], v2, v97);
  v82 = &v81[v3[9]];
  v82[3] = &type metadata for CallDisclosureFileLocation;
  v82[4] = &off_100631AF0;
  *v82 = v79;
  v82[1] = v80;
  *v81 = 1;
  v83 = &v81[v3[6]];
  *v83 = 0xD000000000000022;
  v83[1] = 0x8000000100564B60;
  v84 = &v81[v3[7]];
  *v84 = 0xD000000000000023;
  v84[1] = 0x8000000100564AA0;
  v85 = &v81[v3[8]];
  sub_10000B9F4();
  *v86 = v87;
  v86[1] = 0xEF6E6F6974616C73;
  v81[v3[10]] = v88;
  v89 = *sub_100009B14(v70, v70[3]);
  sub_10037F794();

  sub_1002B66D4(v81);
  sub_1002B66D4(v63);
  sub_100005EDC();
}

id sub_1002ABE24()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for CallTranslationController()
{
  result = qword_1006A33C0;
  if (!qword_1006A33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AC028(uint64_t a1)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA688);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10002741C(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Cannot start call translation for active call, error: %s", v3, 0xCu);
      sub_100009B7C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1002AC628(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6)
{
  v44[3] = a4;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v44 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a6;
  v19 = *(a5 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v19)
  {
    v20 = a6;
    v21 = [v19 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for UUID();
    sub_10000AF74(v17, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for UUID();
    sub_10000AF74(v17, 1, 1, v23);
    v24 = a6;
  }

  v25 = *(a5 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v25)
  {
    v26 = [v25 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = type metadata accessor for UUID();
  sub_10000AF74(v14, v27, 1, v28);
  type metadata accessor for AudioSessionProvider();
  v29 = sub_10003F454(a1);
  if (v29)
  {
    v30 = v29;
    sub_1002B2144();
    if (*(v31 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v33 = swift_allocObject();
      *(v33 + 16) = sub_1002B6884;
      *(v33 + 24) = v18;
      aBlock[4] = sub_1002B688C;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002B306C;
      aBlock[3] = &unk_1006236E8;
      v34 = _Block_copy(aBlock);

      [v30 setAudioSessionPropertiesWithProperties:isa completion:v34];
      _Block_release(v34);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000AF9C(v39, qword_1006BA688);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "setAudioSessionProperties empty", v42, 2u);
      }

      sub_1002B30EC(0, a6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000AF9C(v35, qword_1006BA688);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Couldn't get audio session for call", v38, 2u);
    }

    sub_1002B30EC(0, a6);
  }

  sub_100009A04(v14, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_1002ACB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21)
{
  sub_100005EF4();
  v67 = v21;
  v65 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8, v31);
  sub_100007BAC();
  v34 = v32 - v33;
  __chkstk_darwin(v35, v36);
  v38 = &v64 - v37;
  v39 = *(v26 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v39)
  {
    v40 = [v39 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = type metadata accessor for UUID();
    v42 = 0;
  }

  else
  {
    v41 = type metadata accessor for UUID();
    v42 = 1;
  }

  v66 = a21;
  v43 = 1;
  sub_10000AF74(v38, v42, 1, v41);
  v44 = *(v26 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v44)
  {
    v45 = [v44 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  v46 = type metadata accessor for UUID();
  sub_10000AF74(v34, v43, 1, v46);
  type metadata accessor for AudioSessionProvider();
  v47 = sub_10003F454(v28);
  if (v47)
  {
    v48 = v47;
    sub_1002B2144();
    if (*(v49 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v68[4] = v24;
      v68[5] = 0;
      sub_100009FE4();
      v68[1] = 1107296256;
      v68[2] = sub_1002B306C;
      v68[3] = v65;
      v51 = _Block_copy(v68);

      [v48 setAudioSessionPropertiesWithProperties:isa completion:v51];
      _Block_release(v51);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4();
      }

      v57 = type metadata accessor for Logger();
      sub_1000075F0(v57, qword_1006BA688);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.fault.getter();
      if (sub_10000BB44(v59))
      {
        v60 = sub_100006DC4();
        sub_10000D6E8(v60);
        sub_100015CC0(&_mh_execute_header, v61, v59, "setAudioSessionProperties empty");
        sub_100006868();
      }

      sub_1002AE364(0, v67, v66);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v52 = type metadata accessor for Logger();
    sub_1000075F0(v52, qword_1006BA688);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (sub_10000BB44(v54))
    {
      v55 = sub_100006DC4();
      sub_10000D6E8(v55);
      sub_100015CC0(&_mh_execute_header, v56, v54, "Couldn't get audio session for call");
      sub_100006868();
    }

    sub_1002AE364(0, v67, v66);
  }

  v62 = sub_100006B30();
  sub_100009A04(v62, v63, &unk_10057C9D0);
  sub_100009A04(v38, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EDC();
}

uint64_t sub_1002ACEB4(void *a1, int a2, int a3, int a4, uint64_t a5, void *a6, void *a7, void (*a8)(void), uint64_t a9)
{
  v54 = a3;
  v55 = a4;
  v53 = a2;
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v20);
  v22 = &v51 - v21;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v52 = a8;
  v23[4] = a8;
  v23[5] = a9;
  v24 = *(a5 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v24)
  {
    v25 = a6;
    v26 = a7;

    v27 = [v24 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = type metadata accessor for UUID();
    sub_10000AF74(v22, 0, 1, v28);
  }

  else
  {
    v29 = type metadata accessor for UUID();
    sub_10000AF74(v22, 1, 1, v29);
    v30 = a6;
    v31 = a7;
  }

  v32 = *(a5 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v32)
  {
    v33 = [v32 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = type metadata accessor for UUID();
  sub_10000AF74(v19, v34, 1, v35);
  type metadata accessor for AudioSessionProvider();
  v36 = sub_10003F454(a1);
  if (v36)
  {
    v37 = v36;
    sub_1002B2144();
    if (*(v38 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v40 = swift_allocObject();
      *(v40 + 16) = sub_1002B71F0;
      *(v40 + 24) = v23;
      aBlock[4] = sub_1002B7320;
      aBlock[5] = v40;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002B306C;
      aBlock[3] = &unk_100623760;
      v41 = _Block_copy(aBlock);

      [v37 setAudioSessionPropertiesWithProperties:isa completion:v41];
      _Block_release(v41);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000AF9C(v46, qword_1006BA688);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "setAudioSessionProperties empty", v49, 2u);
      }

      sub_1002B1F0C(0, a6, a7, v52);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000AF9C(v42, qword_1006BA688);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Couldn't get audio session for call", v45, 2u);
    }

    sub_1002B1F0C(0, a6, a7, v52);
  }

  sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_1002AD448(void *a1, void *a2, int a3, char *a4, void (**a5)(void, void))
{
  v10 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v76 = &v73 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&a4[OBJC_IVAR___CSDCallTranslationController_queue];
  *v23 = v24;
  (*(v19 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v18);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v23, v18);
  if (v24)
  {
    v77 = a3;
    v78 = a5;
    if (qword_1006A0B58 == -1)
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
  v26 = type metadata accessor for Logger();
  sub_10000AF9C(v26, qword_1006BA688);
  v27 = a1;
  v28 = a2;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v31 = os_log_type_enabled(v29, v30);
  v75 = v15;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v80 = v74;
    *v32 = 136315650;
    v79 = v77;
    v34 = String.init<A>(reflecting:)();
    v36 = sub_10002741C(v34, v35, &v80);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v27;
    *(v32 + 22) = 2112;
    *(v32 + 24) = v28;
    *v33 = v27;
    v33[1] = v28;
    v37 = v27;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "Requested to STOP translation reason: %s using request %@ for call %@", v32, 0x20u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    sub_100009B7C(v74);
  }

  v39 = *&a4[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (v39)
  {
    v40 = a4;
    v41 = v39;
    sub_1002AC628(v28, 0, 0, 0, v40, v40);
    if (*&v40[OBJC_IVAR___CSDCallTranslationController_translationMode] >= 2u)
    {
      v71 = v28;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v80 = v59;
        *v58 = 136315138;
        v60 = v77;
        v79 = v77;
        v61 = String.init<A>(reflecting:)();
        v63 = sub_10002741C(v61, v62, &v80);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v56, v57, "force stop trasnlation for video call, reason: %s", v58, 0xCu);
        sub_100009B7C(v59);

        v72 = v78;
      }

      else
      {

        v72 = v78;
        v60 = v77;
      }

      sub_1002B10D4(v60);
    }

    else
    {
      v42 = sub_1002A5A50();
      sub_10026D814(&unk_1006A3460, &unk_10057E260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v42;
      sub_1002B32F8(inited);
      v71 = v28;
      swift_setDeallocating();
      v72 = v78;
      v78[2](v78, 0);
    }

    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v64 = type metadata accessor for Locale();
    v65 = v76;
    sub_10000AF74(v76, 1, 1, v64);
    v66 = v75;
    sub_10000AF74(v75, 1, 1, v64);
    v67 = [v71 callUUID];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    sub_10046EE78(v65, v66, v68, v70);

    sub_100009A04(v66, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v65, &qword_1006A5360, &qword_10057CB80);
  }

  else
  {
    v44 = v28;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&_mh_execute_header, v45, v46, "No translation session found for call %@ to stop translation", v47, 0xCu);
      sub_100009A04(v48, &unk_1006A2630, &qword_10057CB40);
    }

    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
    v53 = objc_allocWithZone(NSError);
    v54 = sub_100323698(v50, v52, 12, 0);
    v55 = _convertErrorToNSError(_:)();
    v72 = v78;
    (v78)[2](v78, v55);
  }

  _Block_release(v72);
}

void sub_1002ADC8C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14, v15);
  v78 = &v76 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  v27 = *&v1[OBJC_IVAR___CSDCallTranslationController_queue];
  *(v25 - v24) = v27;
  (*(v20 + 104))(v25 - v24, enum case for DispatchPredicate.onQueue(_:), v17);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v26, v17);
  if (v27)
  {
    v79 = v3;
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4();
LABEL_3:
  v29 = type metadata accessor for Logger();
  sub_10000AF9C(v29, qword_1006BA688);
  v30 = v7;
  v31 = v5;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();

  v34 = os_log_type_enabled(v32, v33);
  v77 = v13;
  if (v34)
  {
    v35 = sub_100005E84();
    v36 = swift_slowAlloc();
    v76 = sub_100005E84();
    v81 = v76;
    *v35 = 136315650;
    v80 = v79;
    v37 = String.init<A>(reflecting:)();
    LOBYTE(v26) = v1;
    v39 = sub_10002741C(v37, v38, &v81);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2112;
    *(v35 + 14) = v30;
    *(v35 + 22) = 2112;
    *(v35 + 24) = v31;
    *v36 = v30;
    v36[1] = v31;
    v40 = v30;
    v41 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "Requested to STOP translation reason: %s using request %@ for call %@", v35, 0x20u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100009B7C(v76);
    sub_100005F40();
    sub_100005F40();
  }

  v42 = *&v1[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (v42)
  {
    v43 = v1;
    v44 = v42;
    sub_1002AC628(v31, 0, 0, 0, v43, v43);
    if (*&v43[OBJC_IVAR___CSDCallTranslationController_translationMode] >= 2u)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      if (sub_10000689C(v61))
      {
        v62 = sub_100005274();
        v63 = v31;
        v64 = sub_100005E84();
        v81 = v64;
        *v62 = 136315138;
        v65 = v79;
        v80 = v79;
        v66 = String.init<A>(reflecting:)();
        v68 = sub_10002741C(v66, v67, &v81);

        *(v62 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v60, v26, "force stop trasnlation for video call, reason: %s", v62, 0xCu);
        sub_100009B7C(v64);
        v31 = v63;
        sub_100005F40();
        sub_100005F40();
      }

      else
      {

        v65 = v79;
      }

      sub_1002B10D4(v65);
    }

    else
    {
      v45 = sub_1002A5A50();
      sub_10026D814(&unk_1006A3460, &unk_10057E260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v45;
      sub_1002B32F8(inited);
      swift_setDeallocating();
    }

    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v69 = type metadata accessor for Locale();
    v70 = v78;
    sub_10000AF74(v78, 1, 1, v69);
    v71 = v77;
    sub_10000AF74(v77, 1, 1, v69);
    v72 = [v31 callUUID];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    sub_10046EE78(v70, v71, v73, v75);

    sub_100009A04(v71, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v70, &qword_1006A5360, &qword_10057CB80);
  }

  else
  {
    v47 = v31;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      sub_100005274();
      v50 = sub_100007974();
      *v31 = 138412290;
      *(v31 + 1) = v47;
      *v50 = v47;
      v51 = v47;
      sub_100008A6C();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_100009A04(v50, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100005F40();
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = objc_allocWithZone(NSError);
    v58 = sub_100006B30();
  }

  sub_100005EDC();
}

void sub_1002AE364(char a1, const char *a2, const char *a3)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = sub_100006DC4();
      *v6 = 0;
      v7 = v5;
      v8 = oslog;
      v9 = a2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v7, v9, v6, 2u);
      sub_100005F40();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v6 = sub_100006DC4();
      *v6 = 0;
      v7 = v12;
      v8 = oslog;
      v9 = a3;
      goto LABEL_10;
    }
  }
}

void sub_1002AE4A8(void *a1, void *a2, char *a3, void (**a4)(void, void))
{
  v55 = a2;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&a3[OBJC_IVAR___CSDCallTranslationController_queue];
  *v18 = v19;
  (*(v14 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v13);
  _Block_copy(a4);
  _Block_copy(a4);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v18, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if ([*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] audioCallTranslationEnabled])
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = a1;
      v24 = [v22 remoteLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002AB748();
      (*(v8 + 8))(v12, v7);
      _Block_copy(a4);
      sub_1002AEA80(v22, v55, a3, a4);
    }

    else
    {
      objc_opt_self();
      v41 = swift_dynamicCastObjCClass();
      if (v41)
      {
        v42 = v41;
        _Block_copy(a4);
        v43 = a1;
        sub_1002AD448(v42, v55, 0, a3, a4);
      }

      else
      {
        if (qword_1006A0B58 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000AF9C(v44, qword_1006BA688);
        v45 = a1;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56 = v45;
          v57 = v49;
          *v48 = 136315138;
          sub_100006AF0(0, &unk_1006A3450, TUCallTranslationRequest_ptr);
          v50 = v45;
          v51 = String.init<A>(reflecting:)();
          v53 = sub_10002741C(v51, v52, &v57);

          *(v48 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v46, v47, "Unhandled call translation request %s", v48, 0xCu);
          sub_100009B7C(v49);
        }

        a4[2](a4, 0);
      }
    }

    goto LABEL_9;
  }

  if (qword_1006A0B58 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v25 = type metadata accessor for Logger();
  sub_10000AF9C(v25, qword_1006BA688);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v56 = v26;
    v57 = v30;
    *v29 = 136315138;
    sub_100006AF0(0, &unk_1006A3450, TUCallTranslationRequest_ptr);
    v31 = v26;
    v32 = String.init<A>(reflecting:)();
    v34 = sub_10002741C(v32, v33, &v57);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v27, v28, "Call translation feature flag is not enabled, dropping %s", v29, 0xCu);
    sub_100009B7C(v30);
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  v38 = objc_allocWithZone(NSError);
  v39 = sub_100323698(v35, v37, 2, 0);
  v40 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v40);

LABEL_9:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1002AEA80(void *a1, void *a2, _BYTE *a3, void (**a4)(void, void))
{
  v264 = type metadata accessor for DispatchTimeInterval();
  v262 = *(v264 - 8);
  v8 = *(v262 + 64);
  __chkstk_darwin(v264, v9);
  v260 = (&v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v263 = type metadata accessor for DispatchTime();
  v261 = *(v263 - 8);
  v11 = *(v261 + 64);
  v13 = __chkstk_darwin(v263, v12);
  v258 = &v250 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v259 = &v250 - v16;
  v256 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(*(v256 - 8) + 64);
  __chkstk_darwin(v256, v18);
  v257 = &v250 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v268 = &v250 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23, v25);
  v267 = &v250 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v275 = &v250 - v30;
  __chkstk_darwin(v29, v31);
  v276 = &v250 - v32;
  v278 = type metadata accessor for Locale();
  v271 = *(v278 - 8);
  v33 = *(v271 + 64);
  v35 = __chkstk_darwin(v278, v34);
  v255 = &v250 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35, v37);
  v266 = &v250 - v39;
  v41 = __chkstk_darwin(v38, v40);
  v273 = &v250 - v42;
  __chkstk_darwin(v41, v43);
  v272 = (&v250 - v44);
  v45 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v46 = *(*(v45 - 8) + 64);
  v48 = __chkstk_darwin(v45 - 8, v47);
  v265 = &v250 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v48, v50);
  v270 = &v250 - v52;
  v54 = __chkstk_darwin(v51, v53);
  v269 = &v250 - v55;
  __chkstk_darwin(v54, v56);
  v58 = &v250 - v57;
  v59 = type metadata accessor for DispatchPredicate();
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59, v62);
  v64 = (&v250 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v277 = swift_allocObject();
  *(v277 + 16) = a4;
  v65 = *&a3[OBJC_IVAR___CSDCallTranslationController_queue];
  *v64 = v65;
  (*(v60 + 104))(v64, enum case for DispatchPredicate.onQueue(_:), v59);
  _Block_copy(a4);
  _Block_copy(a4);
  v274 = v65;
  v66 = _dispatchPreconditionTest(_:)();
  (*(v60 + 8))(v64, v59);
  if (v66)
  {
    if (qword_1006A0B58 == -1)
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
  v67 = type metadata accessor for Logger();
  v68 = sub_10000AF9C(v67, qword_1006BA688);
  v69 = a1;
  v70 = a2;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = v68;
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v74 = 138412546;
    *(v74 + 4) = v69;
    *(v74 + 12) = 2112;
    *(v74 + 14) = v70;
    *v75 = v69;
    v75[1] = v70;
    v76 = v69;
    v77 = v70;
    _os_log_impl(&_mh_execute_header, v71, v72, "Requested to START translation using request %@ for call %@", v74, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    v68 = v73;
  }

  v78 = [v69 translationLinks];
  v79 = OBJC_IVAR___CSDCallTranslationController_translationLinks;
  *&a3[OBJC_IVAR___CSDCallTranslationController_translationLinks] = v78;
  v80 = [v69 remoteAudioMode];
  *&a3[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode] = v80;
  v81 = [v69 remoteLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v58, 0, 1, v278);
  v82 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  swift_beginAccess();
  sub_1002B723C(v58, &a3[v82], &qword_1006A5360, &qword_10057CB80);
  swift_endAccess();
  if (([v69 translationMode] == 2 || !objc_msgSend(v69, "translationMode")) && (objc_msgSend(*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags], "transcriptTranslationEnabled") & 1) == 0)
  {
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      v149 = "TranscriptTranslation feature flag is not enabled! Not allowing translation";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v146, v147, v149, v148, 2u);
    }

LABEL_46:

    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;
    objc_allocWithZone(NSError);
    v89 = v150;
    v90 = v152;
    v91 = 2;
LABEL_47:
    v153 = sub_100323698(v89, v90, v91, 0);
    v154 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v154);

LABEL_48:

LABEL_80:
    _Block_release(a4);
    _Block_release(a4);
    return;
  }

  v253 = v82;
  if ([v69 translationMode] != 1)
  {
    goto LABEL_14;
  }

  if (![*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] voiceTranslationEnabled])
  {
    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      v149 = "VoiceTranslation feature flag is not enabled! Not allowing translation";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v70 isVideo])
  {
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Video call doesn't support audio only translation! Not allowing translation", v85, 2u);
    }

    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    objc_allocWithZone(NSError);
    v89 = v86;
    v90 = v88;
    v91 = 9;
    goto LABEL_47;
  }

LABEL_14:
  if (![v69 translationMode])
  {
    if (([*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] voiceTranslationEnabled] & 1) == 0)
    {
      [v69 setTranslationMode:2];
      v251 = v68;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "VoiceTranslation feature flag is not enabled! Falling back to text only translation", v94, 2u);
      }

      v68 = v251;
    }

    if ([v70 isVideo])
    {
      [v69 setTranslationMode:2];
      v95 = v68;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&_mh_execute_header, v96, v97, "Video call doesn't support audio and text translation! Falling back to text only translation", v98, 2u);
      }

      v68 = v95;
    }
  }

  v254 = a4;
  v99 = [v69 translationMode];
  v100 = OBJC_IVAR___CSDCallTranslationController_translationMode;
  *&a3[OBJC_IVAR___CSDCallTranslationController_translationMode] = v99;
  v101 = a3[v79];
  v252 = v100;
  if ((v101 & 2) != 0)
  {
    v102 = [v69 localLocale];
    v103 = v272;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v104 = [v69 remoteLocale];
    v105 = v273;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v106 = objc_allocWithZone(STSpeechTranslatorConfiguration);
    v107 = sub_1002B6354(v103, v105);
    v108 = v107;
    if (*&a3[v100] == 2)
    {
      [v107 setOmitTranslatedAudio:1];
    }

    v109 = objc_allocWithZone(STSpeechTranslatorClient);
    v110 = [v109 initWithConfiguration:v108 delegate:a3 delegateQueue:v274];
    v111 = OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator;
    v112 = *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator] = v110;

    if (!*&a3[v111])
    {
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&_mh_execute_header, v192, v193, "Failed to create uplinkSpeechTranslator", v194, 2u);
      }

      v195 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v197 = v196;
      v198 = objc_allocWithZone(NSError);
      v153 = sub_100323698(v195, v197, 10, 0);
      v154 = _convertErrorToNSError(_:)();
      a4 = v254;
      (v254)[2](v254, v154);

      goto LABEL_48;
    }

    v250 = v108;
    v113 = a3;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = v68;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *v117 = 138412290;
      v119 = *&a3[v111];
      if (!v119)
      {
        v248 = v254;
        _Block_release(v254);
        _Block_release(v248);
        __break(1u);
        goto LABEL_88;
      }

      v120 = v118;
      *(v117 + 4) = v119;
      *v118 = v119;
      v121 = v119;
      _os_log_impl(&_mh_execute_header, v114, v115, "Created uplinkSpeechTranslator: %@", v117, 0xCu);
      sub_100009A04(v120, &unk_1006A2630, &qword_10057CB40);

      v68 = v116;
      v100 = v252;
    }
  }

  v122 = v276;
  if ((a3[v79] & 1) == 0)
  {
    goto LABEL_39;
  }

  v123 = [v69 remoteLocale];
  v124 = v272;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = [v69 localLocale];
  v126 = v273;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v127 = objc_allocWithZone(STSpeechTranslatorConfiguration);
  v128 = sub_1002B6354(v124, v126);
  v129 = v128;
  if (*&a3[v100] == 2)
  {
    [v128 setOmitTranslatedAudio:1];
  }

  v130 = objc_allocWithZone(STSpeechTranslatorClient);
  v131 = [v130 initWithConfiguration:v129 delegate:a3 delegateQueue:v274];
  v132 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v133 = *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator] = v131;

  if (!*&a3[v132])
  {
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v206, v207))
    {
      v208 = swift_slowAlloc();
      *v208 = 0;
      _os_log_impl(&_mh_execute_header, v206, v207, "Failed to create downlinkSpeechTranslator", v208, 2u);
    }

    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v211 = v210;
    v212 = objc_allocWithZone(NSError);
    v153 = sub_100323698(v209, v211, 11, 0);
    v154 = _convertErrorToNSError(_:)();
    a4 = v254;
    (v254)[2](v254, v154);

    goto LABEL_48;
  }

  v134 = a3;
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v135, v136))
  {
LABEL_38:

LABEL_39:
    v251 = v68;
    v143 = *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    if (v143)
    {
      v144 = [v143 translatorIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v145 = 0;
    }

    else
    {
      v145 = 1;
    }

    v155 = type metadata accessor for UUID();
    v156 = 1;
    sub_10000AF74(v122, v145, 1, v155);
    v157 = *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
    if (v157)
    {
      v158 = [v157 translatorIdentifier];
      v159 = v275;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v156 = 0;
      a4 = v254;
    }

    else
    {
      a4 = v254;
      v159 = v275;
    }

    sub_10000AF74(v159, v156, 1, v155);
    v160 = v267;
    sub_10003A270(v122, v267, &unk_1006A3DD0, &unk_10057C9D0);
    v161 = v159;
    v162 = v268;
    sub_10003A270(v161, v268, &unk_1006A3DD0, &unk_10057C9D0);
    v163 = objc_allocWithZone(type metadata accessor for CallTranslationSession());
    v164 = v69;
    v165 = v70;
    v166 = sub_1002A4204(v164, v165, v160, v162);
    v167 = OBJC_IVAR___CSDCallTranslationController_translationSession;
    v168 = *&a3[OBJC_IVAR___CSDCallTranslationController_translationSession];
    *&a3[OBJC_IVAR___CSDCallTranslationController_translationSession] = v166;

    v169 = *&a3[v167];
    if (v169)
    {
      v170 = v169;
      v171 = sub_1002A4CAC();
    }

    else
    {
      v171 = 0;
    }

    v172 = v278;
    v173 = v269;
    [v165 setTranslationSession:v171];

    [v165 setTranslationDisclosureLocation:*&a3[OBJC_IVAR___CSDCallTranslationController_disclosureLocation]];
    v174 = *&a3[v167];
    if (v174)
    {
      v175 = *(v271 + 16);
      v175(v173, v174 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v172);
      sub_10000AF74(v173, 0, 1, v172);
      v176 = v270;
      v175(v270, v174 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v172);
      v177 = 0;
    }

    else
    {
      v177 = 1;
      sub_10000AF74(v173, 1, 1, v172);
      v176 = v270;
    }

    v178 = v173;
    sub_10000AF74(v176, v177, 1, v172);
    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v179 = [v165 callUUID];
    v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v182 = v181;

    sub_10046EE78(v178, v176, v180, v182);

    sub_100009A04(v176, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v178, &qword_1006A5360, &qword_10057CB80);
    if ([v165 status] == 1)
    {
      v183 = v276;
      if (*&a3[v252] < 2u)
      {
        v184 = v265;
        sub_10003A270(&a3[v253], v265, &qword_1006A5360, &qword_10057CB80);
        if (sub_100015468(v184, 1, v172) == 1)
        {
          v185 = v266;
          static Locale.current.getter();
          if (sub_100015468(v184, 1, v172) != 1)
          {
            sub_100009A04(v184, &qword_1006A5360, &qword_10057CB80);
          }
        }

        else
        {
          v185 = v266;
          (*(v271 + 32))(v266, v184, v172);
        }

        v213 = &a3[OBJC_IVAR___CSDCallTranslationController_disclosureDataSource];
        swift_beginAccess();
        v214 = *sub_100009B14(v213, v213[3]);
        sub_100380660();
        if ((v215 & 1) == 0)
        {
          v216 = v271;
          v217 = v255;
          (*(v271 + 16))(v255, v185, v172);
          v218 = Logger.logObject.getter();
          v219 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v218, v219))
          {
            v220 = swift_slowAlloc();
            v272 = swift_slowAlloc();
            aBlock[0] = v272;
            *v220 = 136315138;
            sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale);
            v221 = dispatch thunk of CustomStringConvertible.description.getter();
            v222 = v217;
            v223 = v221;
            v225 = v224;
            v226 = *(v216 + 8);
            v273 = ((v216 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v226(v222, v172);
            v227 = sub_10002741C(v223, v225, aBlock);

            *(v220 + 4) = v227;
            _os_log_impl(&_mh_execute_header, v218, v219, "Disclosure files for %s do not exist! Waiting for download", v220, 0xCu);
            sub_100009B7C(v272);
          }

          else
          {

            v226 = *(v216 + 8);
            v273 = ((v216 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v226(v217, v172);
          }

          a4 = v254;
          v228 = v264;
          v229 = &a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
          v230 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
          v231 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation + 8];
          v232 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation + 16];
          *v229 = v165;
          v229[1] = sub_1002B6730;
          v229[2] = v277;
          v233 = v165;

          sub_1002B6738(v230);
          v234 = swift_allocObject();
          *(v234 + 16) = a3;
          aBlock[4] = sub_1002B6778;
          aBlock[5] = v234;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004CEC;
          aBlock[3] = &unk_100623490;
          _Block_copy(aBlock);
          v279 = _swiftEmptyArrayStorage;
          sub_10000ECD8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
          v235 = a3;
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_1000057D0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v236 = type metadata accessor for DispatchWorkItem();
          v237 = *(v236 + 48);
          v238 = *(v236 + 52);
          swift_allocObject();
          v239 = DispatchWorkItem.init(flags:block:)();

          v240 = *&v235[OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem];
          *&v235[OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem] = v239;

          v241 = v258;
          static DispatchTime.now()();
          v242 = v260;
          *v260 = 3;
          v243 = v262;
          (*(v262 + 104))(v242, enum case for DispatchTimeInterval.seconds(_:), v228);
          v244 = v259;
          + infix(_:_:)();
          (*(v243 + 8))(v242, v228);
          v245 = *(v261 + 8);
          v246 = v241;
          v247 = v263;
          v245(v246, v263);
          OS_dispatch_queue.asyncAfter(deadline:execute:)();

          v245(v244, v247);
          v226(v266, v278);
          sub_100009A04(v275, &unk_1006A3DD0, &unk_10057C9D0);
          sub_100009A04(v276, &unk_1006A3DD0, &unk_10057C9D0);
          goto LABEL_79;
        }

        (*(v271 + 8))(v185, v172);
      }

      _Block_copy(a4);

      sub_1002AA308(v165, a3, a4);

      sub_100009A04(v275, &unk_1006A3DD0, &unk_10057C9D0);
      v205 = v183;
    }

    else
    {
      v186 = v165;
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.info.getter();
      v189 = os_log_type_enabled(v187, v188);
      v190 = v276;
      if (v189)
      {
        v191 = swift_slowAlloc();
        *v191 = 67109120;
        *(v191 + 4) = [v186 status];

        _os_log_impl(&_mh_execute_header, v187, v188, "call status is %d, only starting translation when call is connected", v191, 8u);
      }

      else
      {

        v187 = v186;
      }

      v199 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v201 = v200;
      v202 = objc_allocWithZone(NSError);
      v203 = sub_100323698(v199, v201, 5, 0);
      v204 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v204);

      sub_100009A04(v275, &unk_1006A3DD0, &unk_10057C9D0);
      v205 = v190;
    }

    sub_100009A04(v205, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_79:

    goto LABEL_80;
  }

  v137 = v68;
  v138 = swift_slowAlloc();
  v139 = swift_slowAlloc();
  *v138 = 138412290;
  v140 = *&a3[v132];
  if (v140)
  {
    v141 = v139;
    *(v138 + 4) = v140;
    *v139 = v140;
    v142 = v140;
    _os_log_impl(&_mh_execute_header, v135, v136, "Created downlinkSpeechTranslator: %@", v138, 0xCu);
    sub_100009A04(v141, &unk_1006A2630, &qword_10057CB40);

    v122 = v276;
    v68 = v137;
    goto LABEL_38;
  }

LABEL_88:
  v249 = v254;
  _Block_release(v254);
  _Block_release(v249);
  __break(1u);
}

char *sub_1002B073C(char *result)
{
  v1 = &result[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  v2 = *&result[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  if (v2)
  {
    v4 = *(v1 + 1);
    v3 = *(v1 + 2);
    v5 = qword_1006A0B58;
    v6 = v2;

    if (v5 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA688);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Disclosure audio file generation timed out.", v10, 2u);
    }

    [v6 setTranslationSession:0];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    v14 = objc_allocWithZone(NSError);

    v15 = sub_100323698(v11, v13, 3, 0);
    v4();

    v16 = *v1;
    v17 = *(v1 + 1);
    v18 = *(v1 + 2);
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *v1 = 0;

    return sub_1002B6738(v16);
  }

  return result;
}

void sub_1002B0904(uint64_t a1, void (**aBlock)(void, void))
{
  if (a1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v10 code];
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_allocWithZone(NSError);
    v8 = sub_100323698(v3, v5, v6, 0);
    v9 = _convertErrorToNSError(_:)();
    (aBlock)[2](aBlock, v9);

    _Block_release(aBlock);
  }

  else
  {

    _Block_release(aBlock);
  }
}

void sub_1002B0A5C(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v9 code];
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_allocWithZone(NSError);
    v8 = sub_100323698(v3, v5, v6, 0);
    a2();
  }
}

void sub_1002B0B74(char a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LanguageManager();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR___CSDCallTranslationController_translationSession;
  if (*(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      if (([v35 isRTT] & 1) != 0 || objc_msgSend(v35, "isTTY"))
      {
        [objc_allocWithZone(TUFeatureFlags) init];
        LanguageManager.init(featureFlags:)();
        v17 = 0xD000000000000023;
        if (a1)
        {
          v17 = 0xD000000000000024;
        }

        v34 = v17;
        if (a1)
        {
          v18 = "_STOP_DISCLOSURE_V2";
        }

        else
        {
          v18 = "AndStartTranslation";
        }

        v19 = TUBundle();
        if (v19)
        {
          v20 = v19;
          v21 = *(v1 + v15);
          if (v21)
          {
            (*(v4 + 16))(v8, v21 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v3);
            v22 = Locale.identifier.getter();
            v24 = v23;
            (*(v4 + 8))(v8, v3);
          }

          else
          {
            v22 = 0;
            v24 = 0;
          }

          v25._countAndFlagsBits = 0x6E6172546C6C6143;
          v25._object = 0xEF6E6F6974616C73;
          v26._object = (v18 | 0x8000000000000000);
          v26._countAndFlagsBits = v34;
          v27.value._countAndFlagsBits = v22;
          v27.value._object = v24;
          v28 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v26, v25, v20, v27);

          (*(v10 + 8))(v14, v9);
          type metadata accessor for CallTranslationRTTHelper();
          swift_initStaticObject();
          v29 = [v35 callUUID];

          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;

          sub_10046EC98(v28.value._countAndFlagsBits, v28.value._object, v30, v32);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        v33 = v35;
      }
    }
  }
}

void sub_1002B0EF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = *(Strong + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v7)
      {
        v8 = qword_1006A0B58;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000AF9C(v10, qword_1006BA688);
        swift_errorRetain();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          swift_errorRetain();
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 4) = v15;
          *v14 = v15;
          _os_log_impl(&_mh_execute_header, v11, v12, "Starting translation failed: Failed to start speech translation %@", v13, 0xCu);
          sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
        }

        sub_1002B10D4(7);
        v6 = v9;
      }
    }

    else
    {
      sub_1002B1410();
      a3(0);
    }
  }
}

void sub_1002B10D4(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v2)
  {
    v8 = v2;
    v4 = sub_1002A54AC(a1);
    sub_1002B32F8(v4);
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA688);
    v8 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v8, v6, "No translation session found to force stop translation", v7, 2u);
    }
  }
}

void sub_1002B1410()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v8 - v7) = v10;
  v11 = sub_1000150CC();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100010218();
  v15(v14);
  if (v10)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA688);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (sub_10000689C(v18))
  {
    v19 = sub_100006DC4();
    sub_10000D6E8(v19);
    sub_100015CC0(&_mh_execute_header, v20, v9, "Translation start disclosure finished");
    sub_100006868();
  }

  v21 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v21)
  {
    v22 = v21;
    sub_1002A53E4();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v24))
    {
      *sub_100006DC4() = 0;
      sub_100008A90(&_mh_execute_header, v25, v26, "Start disclosure finished, but we aren't tracking a translation session");
      sub_100005F40();
    }
  }
}

void sub_1002B16A0()
{
  sub_100005EF4();
  v3 = v2;
  v64 = v4;
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v62 = v9;
  v63 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_10000E598();
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v60 = v15;
  v61 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v14, v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = sub_100007FEC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23, v28);
  sub_100007FDC();
  v31 = v30 - v29;
  v32 = *&v0[OBJC_IVAR___CSDCallTranslationController_queue];
  *(v30 - v29) = v32;
  (*(v25 + 104))(v30 - v29, enum case for DispatchPredicate.onQueue(_:), v22);
  v32;
  v33 = _dispatchPreconditionTest(_:)();
  (*(v25 + 8))(v31, v22);
  if (v33)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = 1;
    v35 = dispatch_group_create();
    v36 = *&v0[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
    if (v36)
    {
      v37 = v36;
      dispatch_group_enter(v35);
      v38 = swift_allocObject();
      v38[2] = v35;
      v38[3] = v34;
      v38[4] = v0;
      v38[5] = v6;
      v38[6] = v64;
      v38[7] = v3;
      v68 = sub_1002B681C;
      v69 = v38;
      sub_100009FE4();
      sub_10000E5B0(COERCE_DOUBLE(1107296256));
      v66 = v39;
      v67 = &unk_100623670;
      v40 = _Block_copy(v65);
      v41 = v35;

      v42 = v0;
      v43 = v6;

      [v37 startTranslationWithCompletionHandler:v40];
      _Block_release(v40);
    }

    v44 = *&v0[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    v45 = v64;
    if (v44)
    {
      v59 = v44;
      dispatch_group_enter(v35);
      v46 = swift_allocObject();
      v46[2] = v35;
      v46[3] = v34;
      v46[4] = v0;
      v46[5] = v6;
      v46[6] = v64;
      v46[7] = v3;
      v68 = sub_1002B67A4;
      v69 = v46;
      sub_100009FE4();
      sub_10000E5B0(COERCE_DOUBLE(1107296256));
      v66 = v47;
      v67 = &unk_100623620;
      v48 = _Block_copy(v65);
      v49 = v35;

      v50 = v0;
      v51 = v6;

      [v59 startTranslationWithCompletionHandler:v48];
      v52 = v48;
      v45 = v64;
      _Block_release(v52);
    }

    v53 = swift_allocObject();
    v53[2] = v34;
    v53[3] = v0;
    v53[4] = v6;
    v53[5] = v45;
    v53[6] = v3;
    v68 = sub_1002B6794;
    v69 = v53;
    sub_100009FE4();
    v65[1] = 1107296256;
    v66 = sub_100004CEC;
    v67 = &unk_1006235D0;
    v54 = _Block_copy(v65);

    v55 = v0;
    v56 = v6;

    static DispatchQoS.unspecified.getter();
    sub_1000150B4();
    sub_10000ECD8(v57, v58);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_100008A7C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v54);

    (*(v62 + 8))(v1, v63);
    (*(v60 + 8))(v21, v61);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B1B9C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, const char *a8, void *a9, uint64_t a10, const char *a11)
{
  if (a1)
  {
    v17 = a9;
    swift_errorRetain();
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v18 = type metadata accessor for Logger();
    sub_1000075F0(v18, qword_1006BA688);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100005274();
      v22 = a6;
      v23 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, a8, v21, 0xCu);
      sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
      a6 = v22;
      sub_100005F40();
      v17 = a9;
      sub_100005F40();
    }

    swift_beginAccess();
    *(a3 + 16) = 0;
    v25 = *(a4 + *v17);
    if (v25)
    {
      [v25 stopTranslation];
    }

    v26 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:a5];
    sub_1002ADC8C();
    swift_errorRetain();
    a6(a1);

    dispatch_group_leave(a2);
    sub_1000068B8();
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v27 = type metadata accessor for Logger();
    sub_1000075F0(v27, qword_1006BA688);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();
    if (sub_10000BB44(v29))
    {
      v30 = sub_100006DC4();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, a11, v30, 2u);
      sub_100005F40();
    }

    sub_1000068B8();

    dispatch_group_leave(v31);
  }
}

uint64_t sub_1002B1E4C(uint64_t a1, char *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  result = swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v11 = *&a2[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode];
    v12 = *&a2[OBJC_IVAR___CSDCallTranslationController_translationMode];
    v13 = a3;
    v14 = a2;

    return sub_1002ACEB4(v13, 1, v11, v12, v14, v13, v14, a4, a5);
  }

  return result;
}

void sub_1002B1F0C(char a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    (a4)(0);
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA688);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = [v8 provider];
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not able to configure audio session for %@", v11, 0xCu);
      sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    }

    v14 = *(a3 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
    if (v14)
    {
      [v14 stopTranslation];
    }

    v15 = *(a3 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
    if (v15)
    {
      [v15 stopTranslation];
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = objc_allocWithZone(NSError);
    v20 = sub_100323698(v16, v18, 13, 0);
    a4();
  }
}

void sub_1002B2144()
{
  sub_100005EF4();
  v95 = v1;
  v96 = v2;
  v4 = v3;
  v98 = v5;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  sub_100007BAC();
  v100 = v11 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v89 - v15;
  v17 = type metadata accessor for UUID();
  v18 = sub_100007FEC(v17);
  v102 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18, v22);
  sub_100007BAC();
  v99 = v23 - v24;
  __chkstk_darwin(v25, v26);
  v28 = &v89 - v27;
  v29 = sub_10026D814(&unk_1006A3470, &qword_10057E278);
  inited = swift_initStackObject();
  v97 = xmmword_10057D6A0;
  *(inited + 16) = xmmword_10057D6A0;
  v101 = kAudioTranslationKey_Enabled;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v31;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v7 & 1];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v32;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInt:v4];
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v33 = Dictionary.init(dictionaryLiteral:)();
  if (v7)
  {
    v93 = v29;
    v94 = v17;
    v34 = OBJC_IVAR___CSDCallTranslationController_translationLinks;
    if ((*(v0 + OBJC_IVAR___CSDCallTranslationController_translationLinks) & 2) != 0)
    {
      v92 = v0;
      sub_10003A270(v95, v16, &unk_1006A3DD0, &unk_10057C9D0);
      v35 = v94;
      if (sub_100015468(v16, 1, v94) == 1)
      {
        sub_100009A04(v16, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        v39 = *(v102 + 32);
        v90 = v28;
        v39(v28, v16, v35);
        v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v40;
        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        v41 = swift_initStackObject();
        sub_10000FBD8(v41, xmmword_10057CA70);
        v41[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41[2].n128_u64[1] = v42;
        v43 = [objc_allocWithZone(NSNumber) initWithBool:1];
        v44 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        v41[4].n128_u64[1] = v44;
        v41[3].n128_u64[0] = v43;
        v41[5].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41[5].n128_u64[1] = v45;
        UUID.uuidString.getter();
        v46 = String._bridgeToObjectiveC()();

        v41[7].n128_u64[1] = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
        v41[6].n128_u64[0] = v46;
        v41[8].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41[8].n128_u64[1] = v47;
        v48 = objc_allocWithZone(NSNumber);
        v49 = v98;
        v50 = [v48 initWithInt:v98];
        v41[10].n128_u64[1] = v44;
        v41[9].n128_u64[0] = v50;
        v41[11].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41[11].n128_u64[1] = v51;
        sub_10026D814(&qword_1006A3490, &qword_1005880C0);
        v52 = swift_initStackObject();
        sub_10000FBD8(v52, v97);
        v52[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52[2].n128_u64[1] = v53;
        v52[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithBool:1];
        v52[3].n128_u64[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52[4].n128_u64[0] = v54;
        v52[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:v49];
        v55 = Dictionary.init(dictionaryLiteral:)();
        v41[13].n128_u64[1] = sub_10026D814(&qword_1006A3498, &qword_10057E280);
        v41[12].n128_u64[0] = v55;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v103[0] = v33;
        sub_1002B706C(isa, v95, v91, isUniquelyReferenced_nonNull_native, v103);

        (*(v102 + 8))(v90, v94);
        v33 = v103[0];
      }

      v0 = v92;
    }

    v58 = v100;
    if (*(v0 + v34))
    {
      sub_10003A270(v96, v100, &unk_1006A3DD0, &unk_10057C9D0);
      v59 = v94;
      if (sub_100015468(v58, 1, v94) == 1)
      {
        sub_100009A04(v58, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        (*(v102 + 32))();
        v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v60;
        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        v61 = swift_initStackObject();
        sub_10000FBD8(v61, xmmword_10057CA70);
        v61[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61[2].n128_u64[1] = v62;
        v63 = [objc_allocWithZone(NSNumber) initWithBool:1];
        v64 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        v61[4].n128_u64[1] = v64;
        v61[3].n128_u64[0] = v63;
        v61[5].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61[5].n128_u64[1] = v65;
        UUID.uuidString.getter();
        v66 = String._bridgeToObjectiveC()();

        v61[7].n128_u64[1] = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
        v61[6].n128_u64[0] = v66;
        v61[8].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61[8].n128_u64[1] = v67;
        v68 = objc_allocWithZone(NSNumber);
        v69 = v98;
        v70 = [v68 initWithInt:v98];
        v61[10].n128_u64[1] = v64;
        v61[9].n128_u64[0] = v70;
        v61[11].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61[11].n128_u64[1] = v71;
        sub_10026D814(&qword_1006A3490, &qword_1005880C0);
        v72 = swift_initStackObject();
        sub_10000FBD8(v72, v97);
        v72[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72[2].n128_u64[1] = v73;
        v72[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithBool:1];
        v72[3].n128_u64[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72[4].n128_u64[0] = v74;
        v72[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:v69];
        v75 = Dictionary.init(dictionaryLiteral:)();
        v61[13].n128_u64[1] = sub_10026D814(&qword_1006A3498, &qword_10057E280);
        v61[12].n128_u64[0] = v75;
        Dictionary.init(dictionaryLiteral:)();
        v76 = Dictionary._bridgeToObjectiveC()().super.isa;

        v77 = swift_isUniquelyReferenced_nonNull_native();
        v103[0] = v33;
        sub_1002B706C(v76, v100, v96, v77, v103);

        (*(v102 + 8))(v99, v59);
      }
    }

    v78 = swift_initStackObject();
    *(v78 + 16) = xmmword_10057D690;
    *(v78 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v78 + 40) = v79;
    sub_10000FD20();
    v80 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v78 + 48) = v80;
    sub_10000FD20();
    Dictionary.init(dictionaryLiteral:)();
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v81 = type metadata accessor for Logger();
    sub_1000075F0(v81, qword_1006BA688);

    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = sub_100005274();
      v85 = sub_100005E84();
      v103[0] = v85;
      *v84 = 136315138;
      v86 = Dictionary.description.getter();
      v88 = sub_10002741C(v86, v87, v103);

      *(v84 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v82, v83, "Created translation configuration %s", v84, 0xCu);
      sub_100009B7C(v85);
      sub_100005F40();
      sub_100005F40();
    }
  }

  else
  {
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10057D690;
    *(v36 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v36 + 40) = v37;
    sub_10000FD20();
    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v36 + 48) = v38;
    sub_10000FD20();
    Dictionary.init(dictionaryLiteral:)();
  }

  sub_100005EDC();
}

void sub_1002B2B88(uint64_t a1, const char *a2, const char *a3)
{
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = 0;
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;

  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v28 = *(*(v3 + 56) + 4 * v12);
    v16 = p_inst_meths[363];

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000075F0(v17, qword_1006BA688);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = sub_100005E84();
      v29 = v21;
      *v20 = 136315394;
      v22 = sub_10002741C(v15, v14, &v29);

      *(v20 + 4) = v22;
      *(v20 + 12) = 1024;
      v23 = v28;
      *(v20 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "setAudioSessionProperties: %s, %d", v20, 0x12u);
      sub_100009B7C(v21);
      p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
      sub_100005F40();
      v3 = v27;
      sub_100005F40();
    }

    else
    {

      v23 = v28;
    }

    v7 &= v7 - 1;
    if (v23)
    {
      sub_1002AE364(0, a2, a3);
      sub_1000068B8();

      return;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1002AE364(1, a2, a3);
      sub_1000068B8();
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1002B2DDC(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = 0;
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;

  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(v2 + 56) + 4 * v11);
    v15 = p_inst_meths[363];

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA688);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      v21 = sub_10002741C(v14, v13, &v26);

      *(v19 + 4) = v21;
      *(v19 + 12) = 1024;
      v22 = v25;
      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "setAudioSessionProperties: %s, %d", v19, 0x12u);
      sub_100009B7C(v20);
      p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);

      v2 = v24;
    }

    else
    {

      v22 = v25;
    }

    v6 &= v6 - 1;
    if (v22)
    {
      a2(0);

      return;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      a2(1);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1002B306C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1002B30EC(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA688);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stop translation audio session successfully", v6, 2u);
    }

    v7 = *(a2 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
    if (v7)
    {
      [v7 stopTranslation];
    }

    v8 = *(a2 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
    if (v8)
    {

      [v8 stopTranslation];
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to stop translation audio session", v11, 2u);
    }
  }
}

void sub_1002B32F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 32);
  do
  {
    if (!v2)
    {
      break;
    }

    v4 = *v3++;
    sub_1002B3330(v4);
    --v2;
  }

  while (!v1);
}

void sub_1002B3330(char a1)
{
  v2 = v1;
  switch(a1)
  {
    case 1:
      if (*(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v12 = Strong;
        if (qword_1006A0B58 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000AF9C(v13, qword_1006BA688);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Playing stop disclosure", v16, 2u);
        }

        v17 = *sub_100009B14((v2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(v2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
        sub_1002A9390(v12);
        sub_1002B0B74(0);
      }

      else
      {
        sub_1002B6680();
        swift_allocError();
        *v18 = 4;
        swift_willThrow();
      }

      break;
    case 3:
      return;
    default:
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000AF9C(v3, qword_1006BA688);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Setting translation session to nil", v6, 2u);
      }

      v7 = OBJC_IVAR___CSDCallTranslationController_translationSession;
      if (*(v2 + OBJC_IVAR___CSDCallTranslationController_translationSession))
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          [v8 setTranslationSession:0];
        }
      }

      v10 = *(v2 + v7);
      *(v2 + v7) = 0;

      break;
  }
}

void sub_1002B35CC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = *(v1 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v10 - v9) = v12;
  (*(v5 + 104))(v10 - v9, enum case for DispatchPredicate.onQueue(_:), v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v11, v2);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    sub_1000081B4();
LABEL_7:
    v21 = type metadata accessor for Logger();
    sub_1000075F0(v21, qword_1006BA688);
    v15 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (sub_10000A648(v22))
    {
      *sub_100006DC4() = 0;
      sub_100008A90(&_mh_execute_header, v23, v24, "startDisclosureDidFinish: Invalid frontmost call, return");
      sub_100005F40();
    }

    goto LABEL_19;
  }

  v14 = sub_10000D7E0();
  if (!v14)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v15 = v14;
  v16 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v16)
  {
    if (sub_1002A41F0() == 1)
    {
      sub_100006890();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v15;
      v19 = v16;

      v20 = v15;
      sub_1002B16A0();

      return;
    }

    v29 = qword_1006A0B58;
    v30 = v16;
    if (v29 != -1)
    {
      sub_1000081B4();
    }

    v31 = type metadata accessor for Logger();
    sub_10000AF9C(v31, qword_1006BA688);
    v32 = v30;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_100005274();
      v36 = sub_100005E84();
      v40 = v36;
      *v35 = 136315138;
      sub_1002A41F0();
      v37 = String.init<A>(reflecting:)();
      v39 = sub_10002741C(v37, v38, &v40);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "Current state is %s, not in playingStartDisclosure state, return", v35, 0xCu);
      sub_100009B7C(v36);
      sub_100005F40();
      sub_100005F40();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4();
    }

    v25 = type metadata accessor for Logger();
    sub_1000075F0(v25, qword_1006BA688);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (sub_10000689C(v27))
    {
      v28 = sub_100006DC4();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v1, "No translation session so not handle audio route changed", v28, 2u);
      sub_100005F40();
    }
  }

LABEL_19:
}

void sub_1002B39A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000AF9C(v7, qword_1006BA688);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "startDisclosureDidFinish: Failed to start speech translation %@", v10, 0xCu);
        sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
      }

      v13 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:a3];
      sub_1002ADC8C();

      v6 = v13;
    }

    else
    {
      sub_1002B1410();
    }
  }
}

void sub_1002B3B78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = *(v0 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v8 - v7) = v10;
  v11 = sub_1000150CC();
  v12(v11);
  v13 = v10;
  _dispatchPreconditionTest(_:)();
  v14 = sub_100010218();
  v15(v14);
  if (v10)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_10000AF9C(v16, qword_1006BA688);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (sub_10000689C(v18))
  {
    v19 = sub_100006DC4();
    sub_10000D6E8(v19);
    sub_100015CC0(&_mh_execute_header, v20, v9, "Translation stop disclosure finished");
    sub_100006868();
  }

  v21 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v21)
  {
    v22 = v21;
    sub_1002A5B08();
  }
}

void sub_1002B3E08()
{
  sub_1002B3EF4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002B3EF4()
{
  if (!qword_1006A33D0)
  {
    type metadata accessor for Locale();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006A33D0);
    }
  }
}

void sub_1002B3F4C(uint64_t a1, int a2)
{
  v196 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v197 = &v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v190 = &v189 - v12;
  v14 = __chkstk_darwin(v11, v13);
  v192 = &v189 - v15;
  v17 = __chkstk_darwin(v14, v16);
  v200 = &v189 - v18;
  __chkstk_darwin(v17, v19);
  v202 = &v189 - v20;
  v211 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v21 = *(*(v211 - 8) + 64);
  v23 = __chkstk_darwin(v211, v22);
  v199 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23, v25);
  v206 = &v189 - v27;
  v29 = __chkstk_darwin(v26, v28);
  v207 = &v189 - v30;
  __chkstk_darwin(v29, v31);
  v33 = &v189 - v32;
  v34 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v35 = *(*(v34 - 8) + 64);
  v37 = __chkstk_darwin(v34 - 8, v36);
  v191 = &v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v37, v39);
  v195 = &v189 - v41;
  v43 = __chkstk_darwin(v40, v42);
  v45 = &v189 - v44;
  v47 = __chkstk_darwin(v43, v46);
  v193 = &v189 - v48;
  v50 = __chkstk_darwin(v47, v49);
  v203 = &v189 - v51;
  v53 = __chkstk_darwin(v50, v52);
  v201 = &v189 - v54;
  v56 = __chkstk_darwin(v53, v55);
  v194 = &v189 - v57;
  v59 = __chkstk_darwin(v56, v58);
  v204 = &v189 - v60;
  v62 = __chkstk_darwin(v59, v61);
  v64 = &v189 - v63;
  v66 = __chkstk_darwin(v62, v65);
  v68 = &v189 - v67;
  v70 = __chkstk_darwin(v66, v69);
  v72 = &v189 - v71;
  __chkstk_darwin(v70, v73);
  v75 = &v189 - v74;
  v212 = v5;
  v76 = *(v5 + 16);
  v208 = a1;
  v209 = v5 + 16;
  v213 = v76;
  v76(&v189 - v74, a1, v4);
  v77 = 1;
  sub_10000AF74(v75, 0, 1, v4);
  v210 = v2;
  v205 = OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator;
  v78 = *&v2[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
  v198 = v45;
  if (v78)
  {
    v79 = [v78 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = 0;
  }

  sub_10000AF74(v72, v77, 1, v4);
  v80 = *(v211 + 48);
  sub_10003A270(v75, v33, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v72, &v33[v80], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v33, 1, v4) == 1)
  {
    sub_100009A04(v72, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v75, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v33[v80], 1, v4) == 1)
    {
      v81 = v210;
      v82 = v208;
LABEL_16:
      v90 = v200;
      sub_100009A04(v33, &unk_1006A3DD0, &unk_10057C9D0);
      v91 = v201;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10003A270(v33, v68, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v33[v80], 1, v4) != 1)
    {
      v87 = v212;
      v88 = v202;
      (*(v212 + 32))(v202, &v33[v80], v4);
      sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID);
      LODWORD(v189) = dispatch thunk of static Equatable.== infix(_:_:)();
      v89 = *(v87 + 8);
      v89(v88, v4);
      sub_100009A04(v72, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v75, &unk_1006A3DD0, &unk_10057C9D0);
      v89(v68, v4);
      sub_100009A04(v33, &unk_1006A3DD0, &unk_10057C9D0);
      v81 = v210;
      v82 = v208;
      v90 = v200;
      v91 = v201;
      if (v189)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    sub_100009A04(v72, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v75, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v212 + 8))(v68, v4);
  }

  sub_100009A04(v33, &unk_1006A2A30, &unk_10057D150);
  v81 = v210;
  v82 = v208;
LABEL_9:
  v213(v64, v82, v4);
  v83 = 1;
  sub_10000AF74(v64, 0, 1, v4);
  v189 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v84 = *&v81[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  if (v84)
  {
    v85 = [v84 translatorIdentifier];
    v86 = v204;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v83 = 0;
  }

  else
  {
    v86 = v204;
  }

  sub_10000AF74(v86, v83, 1, v4);
  v92 = *(v211 + 48);
  v93 = v207;
  sub_10003A270(v64, v207, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v86, &v93[v92], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v93, 1, v4) == 1)
  {
    sub_100009A04(v86, &unk_1006A3DD0, &unk_10057C9D0);
    v33 = v207;
    sub_100009A04(v64, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v33[v92], 1, v4) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v107 = v194;
  sub_10003A270(v93, v194, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v93[v92], 1, v4) == 1)
  {
    sub_100009A04(v204, &unk_1006A3DD0, &unk_10057C9D0);
    v33 = v207;
    sub_100009A04(v64, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v212 + 8))(v107, v4);
LABEL_23:
    sub_100009A04(v33, &unk_1006A2A30, &unk_10057D150);
LABEL_24:
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    sub_10000AF9C(v108, qword_1006BA688);
    v109 = v197;
    v213(v197, v82, v4);
    v110 = v81;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v111, v112))
    {

      (*(v212 + 8))(v109, v4);
      return;
    }

    v113 = swift_slowAlloc();
    v214[0] = swift_slowAlloc();
    *v113 = 136315650;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID);
    v114 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = v109;
    v117 = v116;
    v118 = *(v212 + 8);
    v118(v115, v4);
    v119 = sub_10002741C(v114, v117, v214);

    *(v113 + 4) = v119;
    *(v113 + 12) = 2080;
    v120 = *&v81[v205];
    if (v120)
    {
      v121 = [v120 translatorIdentifier];
      v122 = v202;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = UUID.uuidString.getter();
      v125 = v124;
      v118(v122, v4);
    }

    else
    {
      v125 = 0xE300000000000000;
      v123 = 7104878;
    }

    v171 = sub_10002741C(v123, v125, v214);

    *(v113 + 14) = v171;
    *(v113 + 22) = 2080;
    v172 = *&v210[v189];
    if (v172)
    {
      v173 = [v172 translatorIdentifier];
      v174 = v202;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v175 = UUID.uuidString.getter();
      v177 = v176;
      v118(v174, v4);
    }

    else
    {
      v177 = 0xE300000000000000;
      v175 = 7104878;
    }

    v178 = sub_10002741C(v175, v177, v214);

    *(v113 + 24) = v178;
    _os_log_impl(&_mh_execute_header, v111, v112, "Couldn't match %s with %s or %s", v113, 0x20u);
    swift_arrayDestroy();

    goto LABEL_75;
  }

  v140 = v212;
  v141 = v202;
  (*(v212 + 32))(v202, &v93[v92], v4);
  sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID);
  v142 = v107;
  v143 = v93;
  v144 = dispatch thunk of static Equatable.== infix(_:_:)();
  v145 = *(v140 + 8);
  v145(v141, v4);
  sub_100009A04(v204, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v64, &unk_1006A3DD0, &unk_10057C9D0);
  v145(v142, v4);
  v82 = v208;
  v81 = v210;
  sub_100009A04(v143, &unk_1006A3DD0, &unk_10057C9D0);
  v90 = v200;
  v91 = v201;
  if ((v144 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  v95 = sub_10000AF9C(v94, qword_1006BA688);
  v213(v90, v82, v4);
  v204 = v95;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.info.getter();
  v98 = os_log_type_enabled(v96, v97);
  v99 = v212;
  if (v98)
  {
    v100 = swift_slowAlloc();
    v101 = v90;
    v102 = swift_slowAlloc();
    v214[0] = v102;
    *v100 = 136315138;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID);
    v103 = dispatch thunk of CustomStringConvertible.description.getter();
    v105 = v104;
    v207 = *(v99 + 8);
    (v207)(v101, v4);
    v106 = sub_10002741C(v103, v105, v214);
    v82 = v208;
    v81 = v210;

    *(v100 + 4) = v106;
    _os_log_impl(&_mh_execute_header, v96, v97, "invalided SpeechTranslator %s", v100, 0xCu);
    sub_100009B7C(v102);
  }

  else
  {

    v207 = *(v99 + 8);
    (v207)(v90, v4);
  }

  v126 = v203;
  v213(v91, v82, v4);
  v127 = 1;
  sub_10000AF74(v91, 0, 1, v4);
  v128 = *&v81[v205];
  if (v128)
  {
    v129 = [v128 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v127 = 0;
  }

  sub_10000AF74(v126, v127, 1, v4);
  v130 = *(v211 + 48);
  v131 = v206;
  sub_10003A270(v91, v206, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v126, v131 + v130, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v131, 1, v4) == 1)
  {
    sub_100009A04(v126, &unk_1006A3DD0, &unk_10057C9D0);
    v132 = v206;
    sub_100009A04(v91, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v132 + v130, 1, v4) == 1)
    {
      sub_100009A04(v132, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_44:
      v149 = v205;
      v150 = *&v81[v205];
      if (v150)
      {
        [v150 invalidate];
        v151 = *&v81[v149];
      }

      else
      {
        v151 = 0;
      }

      v160 = v192;
      *&v81[v149] = 0;

      v213(v160, v82, v4);
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v214[0] = v164;
        *v163 = 136315138;
        sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID);
        v165 = dispatch thunk of CustomStringConvertible.description.getter();
        v167 = v166;
        (v207)(v160, v4);
        v168 = sub_10002741C(v165, v167, v214);
        v81 = v210;

        *(v163 + 4) = v168;
        v169 = "invalidated uplinkSpeechTranslator %s";
LABEL_68:
        _os_log_impl(&_mh_execute_header, v161, v162, v169, v163, 0xCu);
        sub_100009B7C(v164);

        goto LABEL_71;
      }

      v170 = v160;
      goto LABEL_70;
    }

    goto LABEL_37;
  }

  v133 = v193;
  sub_10003A270(v131, v193, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v131 + v130, 1, v4) == 1)
  {
    sub_100009A04(v203, &unk_1006A3DD0, &unk_10057C9D0);
    v132 = v206;
    sub_100009A04(v91, &unk_1006A3DD0, &unk_10057C9D0);
    (v207)(v133, v4);
LABEL_37:
    sub_100009A04(v132, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_38;
  }

  v146 = v131 + v130;
  v147 = v202;
  (*(v212 + 32))(v202, v146, v4);
  sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID);
  LODWORD(v208) = dispatch thunk of static Equatable.== infix(_:_:)();
  v148 = v207;
  (v207)(v147, v4);
  sub_100009A04(v203, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v91, &unk_1006A3DD0, &unk_10057C9D0);
  v148(v133, v4);
  sub_100009A04(v131, &unk_1006A3DD0, &unk_10057C9D0);
  if (v208)
  {
    goto LABEL_44;
  }

LABEL_38:
  v134 = v198;
  v213(v198, v82, v4);
  v135 = 1;
  sub_10000AF74(v134, 0, 1, v4);
  v136 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v137 = *&v81[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  if (v137)
  {
    v138 = [v137 translatorIdentifier];
    v139 = v195;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v135 = 0;
  }

  else
  {
    v139 = v195;
  }

  v152 = v199;
  sub_10000AF74(v139, v135, 1, v4);
  v153 = *(v211 + 48);
  sub_10003A270(v134, v152, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v139, v152 + v153, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v152, 1, v4) != 1)
  {
    v154 = v191;
    sub_10003A270(v152, v191, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v152 + v153, 1, v4) != 1)
    {
      v155 = v152 + v153;
      v156 = v202;
      (*(v212 + 32))(v202, v155, v4);
      sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID);
      LODWORD(v211) = dispatch thunk of static Equatable.== infix(_:_:)();
      v157 = v207;
      (v207)(v156, v4);
      sub_100009A04(v139, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v198, &unk_1006A3DD0, &unk_10057C9D0);
      v157(v154, v4);
      sub_100009A04(v199, &unk_1006A3DD0, &unk_10057C9D0);
      if ((v211 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_100009A04(v139, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v134, &unk_1006A3DD0, &unk_10057C9D0);
    (v207)(v154, v4);
LABEL_52:
    sub_100009A04(v152, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_71;
  }

  sub_100009A04(v139, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v134, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v152 + v153, 1, v4) != 1)
  {
    goto LABEL_52;
  }

  sub_100009A04(v152, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_54:
  v158 = *&v81[v136];
  if (v158)
  {
    [v158 invalidate];
    v159 = *&v81[v136];
  }

  else
  {
    v159 = 0;
  }

  v179 = v190;
  *&v81[v136] = 0;

  v213(v179, v82, v4);
  v161 = Logger.logObject.getter();
  v162 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v161, v162))
  {
    v180 = v179;
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v214[0] = v164;
    *v163 = 136315138;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID);
    v181 = dispatch thunk of CustomStringConvertible.description.getter();
    v183 = v182;
    (v207)(v180, v4);
    v184 = sub_10002741C(v181, v183, v214);
    v81 = v210;

    *(v163 + 4) = v184;
    v169 = "invalidated downlinkSpeechTranslator %s";
    goto LABEL_68;
  }

  v170 = v179;
LABEL_70:
  (v207)(v170, v4);
LABEL_71:
  v185 = *&v81[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (!v185)
  {
    v111 = Logger.logObject.getter();
    v187 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v111, v187))
    {
      goto LABEL_76;
    }

    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&_mh_execute_header, v111, v187, "invalid tranlsationSession", v188, 2u);
LABEL_75:

    goto LABEL_76;
  }

  v111 = v185;
  v186 = sub_1002A5698(v196);
  sub_1002B32F8(v186);

LABEL_76:
}

void sub_1002B57C4()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_10000E598();
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v13 = type metadata accessor for Logger();
  sub_1000075F0(v13, qword_1006BA688);
  v14 = v5;
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v27 = v9;
    v28 = v6;
    v29 = v0;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = sub_100005E84();
    v30 = v19;
    *v17 = 138412546;
    *(v17 + 4) = v14;
    *v18 = v14;
    *(v17 + 12) = 2080;
    if (v3)
    {
      swift_getErrorValue();
      v20 = v14;
      v21 = Error.localizedDescription.getter();
      v23 = v22;
    }

    else
    {
      v24 = v14;
      v21 = 0;
      v23 = 0xE000000000000000;
    }

    v25 = sub_10002741C(v21, v23, &v30);

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "client: %@ didStopTranslationWithError: %s", v17, 0x16u);
    sub_100009A04(v18, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v19);
    sub_100005F40();
    sub_100005F40();

    v6 = v28;
    v9 = v27;
  }

  else
  {
  }

  v26 = [v14 translatorIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002B3F4C(v1, 5);
  (*(v9 + 8))(v1, v6);
  sub_100005EDC();
}

void sub_1002B5AB0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_10000E598();
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4();
  }

  v10 = type metadata accessor for Logger();
  sub_10000AF9C(v10, qword_1006BA688);
  v11 = v2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_100005274();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "client: %@ serverDidDisconnect", v14, 0xCu);
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  v17 = [v11 translatorIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002B3F4C(v0, 6);
  (*(v6 + 8))(v0, v3);
  sub_100005EDC();
}

void sub_1002B5CE4()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_10000E598();
  v13 = type metadata accessor for DispatchQoS();
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  v29 = *&v0[OBJC_IVAR___CSDCallTranslationController_queue];
  sub_100006890();
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  v30[4] = v5;
  v30[5] = v23;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v30[2] = v24;
  v30[3] = v3;
  v25 = _Block_copy(v30);
  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000150B4();
  sub_10000ECD8(v27, v28);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100008A7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001E3D8();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v9 + 8))(v1, v6);
  (*(v16 + 8))(v22, v13);

  sub_100005EDC();
}

void sub_1002B5EE4(uint64_t a1)
{
  v2 = type metadata accessor for TranslationDisclosureDataSource();
  v3 = *(a1 + OBJC_IVAR___CSDCallTranslationController_queue);
  v4 = *(a1 + OBJC_IVAR___CSDCallTranslationController_speechAssetManager);
  v5 = v3;
  sub_10037EED0();
  v18 = v2;
  v19 = &off_10062AA38;
  *&v17 = v6;
  v7 = OBJC_IVAR___CSDCallTranslationController_disclosureDataSource;
  swift_beginAccess();
  sub_100009B7C((a1 + v7));
  sub_10002F0C8(&v17, a1 + v7);
  swift_endAccess();
  sub_100009AB0(a1 + v7, &v17);
  v8 = v18;
  v9 = sub_10001BDB8(&v17, v18);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v9, v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = sub_1002B6538(*v12);
  sub_100009B7C(&v17);
  v15 = *(a1 + OBJC_IVAR___CSDCallTranslationController_disclosureLocation);
  *(a1 + OBJC_IVAR___CSDCallTranslationController_disclosureLocation) = v14;
}

uint64_t getEnumTagSinglePayload for StopTranslationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StopTranslationReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002B623C()
{
  result = qword_1006A3438;
  if (!qword_1006A3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3438);
  }

  return result;
}

id sub_1002B6298(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100032304;
  v10[3] = &unk_1006238A0;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithTaskHint:a1 useDedicatedMachPort:a2 & 1 observations:v7];
  _Block_release(v7);

  return v8;
}

id sub_1002B6354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v7 = Locale._bridgeToObjectiveC()().super.isa;
  v8 = [v3 initWithSourceLocale:isa targetLocale:v7];

  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 8);
  v10(a2, v9);
  v10(a1, v9);
  return v8;
}

uint64_t sub_1002B641C(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002B6488(void *a1, void *a2, uint64_t a3)
{
  v11[3] = type metadata accessor for CallTranslationController();
  v11[4] = &off_1006233D0;
  v11[0] = a1;
  sub_100009AB0(v11, v10);
  swift_beginAccess();
  v6 = a1;
  sub_1002B723C(v10, a3 + 16, &unk_1006A3310, &unk_10057E2A0);
  swift_endAccess();
  v7 = *(a3 + 56);
  *(a3 + 56) = a2;
  v8 = a2;

  return sub_100009B7C(v11);
}

id sub_1002B6538(uint64_t a1)
{
  v2 = type metadata accessor for TranslationDisclosureDataSource();
  v15[3] = v2;
  v15[4] = &off_10062AA38;
  v15[0] = a1;
  v3 = type metadata accessor for CallTranslationDisclosureFileLocation();
  v4 = objc_allocWithZone(v3);
  v5 = sub_10001BDB8(v15, v2);
  v6 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v5, v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v14[3] = v2;
  v14[4] = &off_10062AA38;
  v14[0] = v10;
  sub_100009AB0(v14, v4 + OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_100009B7C(v14);
  sub_100009B7C(v15);
  return v11;
}

unint64_t sub_1002B6680()
{
  result = qword_1006A3440;
  if (!qword_1006A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3440);
  }

  return result;
}

uint64_t sub_1002B66D4(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1002B6738(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002B67C4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_1002B6894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v70 = type metadata accessor for TranslationDisclosureController();
  v71 = &off_1006232A8;
  v69[0] = a2;
  v68[3] = type metadata accessor for TranslationDisclosureDataSource();
  v68[4] = &off_10062AA38;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationSession] = 0;
  v68[0] = a3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationLinks] = 3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationMode] = 0;
  v13 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  v14 = type metadata accessor for Locale();
  sub_10000AF74(&a6[v13], 1, 1, v14);
  *&a6[OBJC_IVAR___CSDCallTranslationController_audioFileGenerationTimeout] = 3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem] = 0;
  v15 = &a6[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_queue] = a1;
  *&a6[OBJC_IVAR___CSDCallTranslationController_featureFlags] = a4;
  sub_100009AB0(v69, &a6[OBJC_IVAR___CSDCallTranslationController_disclosureController]);
  sub_100009AB0(v68, &a6[OBJC_IVAR___CSDCallTranslationController_disclosureDataSource]);
  *&a6[OBJC_IVAR___CSDCallTranslationController_speechAssetManager] = a5;
  sub_100009AB0(v68, v65);
  v16 = v66;
  v17 = sub_10001BDB8(v65, v66);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17, v17);
  v20 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v23 = a1;
  v24 = a5;
  v25 = sub_1002B6538(v22);
  sub_100009B7C(v65);
  *&a6[OBJC_IVAR___CSDCallTranslationController_disclosureLocation] = v25;
  v64.receiver = a6;
  v64.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v64, "init");
  v27 = sub_100009B14(v69, v70);
  v66 = ObjectType;
  v67 = &off_1006233D0;
  v65[0] = v26;
  v28 = *v27;
  v29 = *sub_100009B14(v65, ObjectType);
  v30 = v26;
  sub_1002B6488(v29, v23, v28);
  sub_100009B7C(v65);
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000AF9C(v31, qword_1006BA688);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "init CallTranslationController", v34, 2u);
  }

  v35 = [objc_opt_self() processInfo];
  v36 = [v35 environment];

  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = sub_1002CB47C(5264449, 0xE300000000000000, v37);
  v40 = v39;

  if (v40)
  {
    if (v38 == 49 && v40 == 0xE100000000000000)
    {
    }

    else
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_21;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Skip setting up languageStatusObserver in ATP environment";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v44, v45, v54, v53, 2u);

    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for GMAvailability();
  v43 = dispatch thunk of static GMAvailability.isAvailable.getter();
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  v46 = os_log_type_enabled(v44, v45);
  if ((v43 & 1) == 0)
  {
    if (!v46)
    {
      goto LABEL_21;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Skip observing installed languages because GM is not available";
    goto LABEL_20;
  }

  if (v46)
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "Start observing installed languages", v47, 2u);
  }

  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  v51 = objc_allocWithZone(_LTLanguageStatus);

  v52 = sub_1002B6298(9, 0, sub_1000326F4, v50);
  swift_beginAccess();
  v44 = *(v48 + 16);
  *(v48 + 16) = v52;

LABEL_21:

  v55 = objc_opt_self();
  v56 = [v55 defaultCenter];
  [v56 addObserver:v30 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v57 = [v55 defaultCenter];
  [v57 addObserver:v30 selector:"handleCallStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v58 = [v55 defaultCenter];
  [v58 addObserver:v30 selector:"handleFaceTimeAudioUpgradeToVideoWithNotification:" name:TUCallUpgradedToVideoNotification object:0];

  v59 = [v55 defaultCenter];
  [v59 addObserver:v30 selector:"handleTranslationStatusChangedWithNotification:" name:TUCallTranslationAvailabilityChangedNotification object:0];

  v60 = [v55 defaultCenter];
  [v60 addObserver:v30 selector:"handleAudioRouteChangedWithNotification:" name:AVAudioSessionRouteChangeNotification object:0];

  v61 = [v55 defaultCenter];
  [v61 addObserver:v30 selector:"handleAudioRouteChangedWithNotification:" name:@"CSDRouteManagerRoutesChangedNotification" object:0];

  sub_100009B7C(v68);
  sub_100009B7C(v69);
  return v30;
}

uint64_t sub_1002B706C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_100005208();
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_10026D814(&unk_1006A34A0, &unk_10057E288);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *a5;
  v19 = sub_100005208();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *a5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v16);
    *(v22 + 8 * v16) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1002B71A8(v16, a2, a3, a1, v21);
  }
}

unint64_t sub_1002B71A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1002B71FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002B723C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100007674(a1, a2, a3, a4);
  sub_100008070(v5);
  v7 = *(v6 + 40);
  v8 = sub_100006B30();
  v9(v8);
  return v4;
}

uint64_t sub_1002B7290()
{
  v1 = *(v0 + 16);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

char *sub_1002B7328()
{
  v0 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 routeController];

  v3 = objc_allocWithZone(type metadata accessor for PowerAssertionManager());
  v4 = sub_1002B7770(v0, v2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1002B7408(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription);
  v3 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription + 8);
  v4 = objc_allocWithZone(IMPowerAssertion);

  v5 = sub_1002B770C(v2, v3);
  v6 = OBJC_IVAR___CSDPowerAssertionManager_powerAssertion;
  v7 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion);
  *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion) = v5;

  v8 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057D690;
  v10 = *(a1 + v6);
  v11 = v10;
  v12 = sub_100031B38(v10);
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100009D88();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_1002B7540(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isFaceTimeProvider];

  if (((v3 & 1) != 0 || (v5 = [a1 provider], v6 = objc_msgSend(v5, "isTelephonyProvider"), v5, v6) && (objc_msgSend(a1, "isUsingBaseband") & 1) == 0) && sub_1003174D8(objc_msgSend(a1, "status"), &off_100620470))
  {
    return [a1 isEndpointOnCurrentDevice] ^ 1;
  }

  else
  {
    return 0;
  }
}

id sub_1002B761C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerAssertionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002B770C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

char *sub_1002B7770(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_powerAssertion] = 0;
  v5 = &a3[OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription];
  *v5 = 0xD000000000000037;
  *(v5 + 1) = 0x8000000100564C60;
  v6 = &a3[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a3[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver] = a1;
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_routeController] = a2;
  v26.receiver = a3;
  v26.super_class = type metadata accessor for PowerAssertionManager();
  v8 = a1;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v26, "init");
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = &v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  v13 = *&v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  v14 = *&v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler + 8];
  *v12 = sub_1002B79E0;
  v12[1] = v11;
  v15 = v10;
  sub_1000051F8(v13);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = &v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  v19 = *&v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  v18 = *&v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler + 8];
  *v17 = sub_1000319DC;
  v17[1] = v16;
  sub_1000051F8(v19);
  v20 = OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver;
  result = *&v15[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:33];
    v22 = *&v15[v20];
    if (v22)
    {
      swift_unknownObjectRetain();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25[4] = sub_1000319D4;
      v25[5] = v23;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 1107296256;
      v25[2] = sub_100028100;
      v25[3] = &unk_1006239B8;
      v24 = _Block_copy(v25);

      [v22 setCallChanged:v24];
      _Block_release(v24);

      swift_unknownObjectRelease();
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002B79E8()
{
  result = qword_1006A3520;
  if (!qword_1006A3520)
  {
    sub_100006AF0(255, &qword_1006A34B0, off_1006165E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MuteReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002B7B2C(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B7B64@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B7B2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B7B90@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1002B7B44(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1002B7BC0()
{
  result = qword_1006A3528;
  if (!qword_1006A3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3528);
  }

  return result;
}

void *sub_1002B7C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = &_swiftEmptyDictionarySingleton;
  return v3;
}

void sub_1002B7C2C(unint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v132 = a4;
  LODWORD(v135) = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v133 = v10;
  v134 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = type metadata accessor for DispatchQoS();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  v27 = type metadata accessor for DispatchTimeInterval();
  v28 = sub_100007FEC(v27);
  v131 = v29;
  v31 = *(v30 + 64);
  __chkstk_darwin(v28, v32);
  sub_100007FDC();
  v130 = (v34 - v33);
  v129 = type metadata accessor for DispatchTime();
  v35 = sub_100007FEC(v129);
  v128 = v36;
  v38 = *(v37 + 64);
  v40 = __chkstk_darwin(v35, v39);
  v127 = &v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40, v42);
  v44 = &v114 - v43;
  v45 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v46 = sub_100007FEC(v45);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46, v49);
  sub_100007FDC();
  v54 = v53 - v52;
  if (!*(a1 + 16))
  {
    return;
  }

  v116 = v54;
  v117 = v51;
  v118 = v50;
  v120 = v27;
  v122 = v26;
  v124 = v16;
  v125 = a5;
  v126 = v17;
  v55 = v136;
  swift_beginAccess();
  v56 = sub_1002CB4C4(*(v55 + 40));
  v137 = v57;
  v138 = v56;
  v59 = v58;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  v61 = sub_10000AF9C(v60, qword_1006BA5E0);

  v62 = v138;
  sub_1002B9048(v138);
  v119 = v61;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  sub_1002B9008(v62);
  v65 = os_log_type_enabled(v63, v64);
  v123 = v20;
  v121 = a3;
  if (v65)
  {
    v66 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v66 = 136315906;
    v67 = String.init<A>(reflecting:)();
    sub_10001022C(v67, v68);
    v115 = v44;
    sub_10000F52C();
    *(v66 + 4) = v59;
    *(v66 + 12) = 2080;
    v69 = Set.description.getter();
    sub_10001022C(v69, v70);
    sub_10000F52C();
    *(v66 + 14) = v59;
    *(v66 + 22) = 2080;
    v71 = v135;
    LOBYTE(v139) = v135;
    v72 = String.init<A>(reflecting:)();
    sub_10001022C(v72, v73);
    sub_10000F52C();
    *(v66 + 24) = v59;
    *(v66 + 32) = 2080;
    v74 = sub_10029112C(v138);
    sub_10001022C(v74, v75);
    sub_10000F52C();
    *(v66 + 34) = v59;
    v44 = v115;
    _os_log_impl(&_mh_execute_header, v63, v64, "ConversationLinkSync: enqueue action {messageType: %s, destinations: %s, mode: %s, hasExisting: %s}", v66, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v71 = v135;
  }

  if (!v71)
  {
    goto LABEL_15;
  }

  if (v71 != 1)
  {
    if (v138)
    {
      sub_1002B9008(v138);
      return;
    }

LABEL_15:
    sub_1002F62FC();
    v85 = v86;
    if (v138)
    {
LABEL_26:

      v90 = v138;
      swift_getObjectType();
      sub_1002B9048(v90);
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      v135 = v59;

      swift_unknownObjectRelease_n();
      goto LABEL_27;
    }

    v135 = v59;
    goto LABEL_18;
  }

  if (v138)
  {
    v139 = a1;

    v76 = v137;
    sub_1002B9048(v138);

    v78 = sub_10001E78C(v77);
    v79 = &v139;
    sub_1003C2420(v78);

    v80 = *(v59 + 16);
    if (v80 < v76)
    {
      __break(1u);
    }

    else
    {
      aBlock = sub_100327838(v137, v80, v59);
      v141 = v81;
      v142 = v82;
      v143 = v83;
      sub_1002B8730(v139);
      v79 = aBlock;
      v78 = v141;
      v64 = v142;
      a1 = v143;
      if ((v143 & 1) == 0)
      {
LABEL_12:
        sub_1002F6384(v79, v78, v64, a1);
        v85 = v84;
LABEL_25:
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v88 = swift_dynamicCastClass();
      if (!v88)
      {
        swift_unknownObjectRelease();
        v88 = _swiftEmptyArrayStorage;
      }

      v89 = v88[2];

      if (!__OFSUB__(a1 >> 1, v64))
      {
        if (v89 == (a1 >> 1) - v64)
        {
          v85 = swift_dynamicCastClass();
          if (!v85)
          {
            swift_unknownObjectRelease();
            v85 = _swiftEmptyArrayStorage;
          }

          goto LABEL_25;
        }

        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v135 = v59;
  sub_1002F62FC();
  v85 = v87;
LABEL_18:

LABEL_27:
  sub_1002B9088();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002B9D48(&qword_1006A3628, &type metadata accessor for OS_dispatch_source.TimerFlags);
  sub_10026D814(&qword_1006A3630, &unk_10057E528);
  sub_100018040(&unk_1006A3638, &qword_1006A3630, &unk_10057E528);
  v91 = v116;
  v92 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v93 = v136;
  v94 = *(v136 + 16);
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v117 + 8))(v91, v92);
  v96 = *(v93 + 24);
  v95 = *(v93 + 32);
  v97 = v85[2];

  v98 = v96(v97, v121);
  swift_getObjectType();
  v99 = v127;
  static DispatchTime.now()();
  + infix(_:_:)();
  v100 = *(v128 + 8);
  v101 = v129;
  v100(v99, v129);
  v102 = v130;
  sub_1002B88A8(v130);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v131 + 8))(v102, v120);
  v100(v44, v101);
  v103 = swift_allocObject();
  swift_weakInit();
  v104 = swift_allocObject();
  v105 = v132;
  v104[2] = v103;
  v104[3] = v105;
  v104[4] = v125;
  v144 = sub_1002B90CC;
  v145 = v104;
  aBlock = _NSConcreteStackBlock;
  v141 = 1107296256;
  v142 = sub_100004CEC;
  v143 = &unk_100623C90;
  v106 = _Block_copy(&aBlock);

  v107 = v122;
  static DispatchQoS.unspecified.getter();
  v108 = v124;
  sub_1002B8B28();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v106);
  (*(v133 + 8))(v108, v134);
  (*(v123 + 8))(v107, v126);

  OS_dispatch_source.resume()();
  swift_unknownObjectRetain();
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 134217984;
    *(v111 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v109, v110, "ConversationLinkSync: Scheduled action {interval: %f}", v111, 0xCu);
  }

  v112 = v136;
  swift_beginAccess();
  swift_unknownObjectRetain();

  v113 = *(v112 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v139 = *(v112 + 40);
  sub_100378670();
  *(v112 + 40) = v139;
  swift_endAccess();
  sub_1002B9008(v138);

  swift_unknownObjectRelease_n();
}

void sub_1002B8730(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002B90D8(v2);
  v4 = v1[2];
  v3 = v1[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = v1[1] + 16 * v4 + 16 * v5;
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = *v1;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if (v6 != &v8[2 * v9 + 4])
  {

LABEL_7:
    v10 = v5;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v5, v12);
  v10 = v5 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_9:
  v14 = v10 - v5;
  if (__OFSUB__(v10, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1002F66FC();
  if (v15 < v2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

  v17 = (v5 + v15);
  if (__OFADD__(v5, v16))
  {
    goto LABEL_22;
  }

  sub_1002B91E0(v17);
LABEL_14:
  if (v16 == v14)
  {
    v23[0] = v18;
    v23[1] = v19;
    v23[2] = v20;
    v23[3] = v21;
    v23[4] = v22;
    sub_1002B9298(v23);
  }

  else
  {

    sub_100022DDC();
  }
}

uint64_t sub_1002B88A8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002B8920(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_beginAccess();
  v5 = *(v4 + 40);

  if (!*(v5 + 16))
  {
  }

  v6 = sub_1002DA6A0();
  if ((v7 & 1) == 0)
  {
  }

  v8 = (*(v5 + 56) + 24 * v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  swift_unknownObjectRetain();

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v12 = v10 + 16 * v11;
  v13 = *(v12 + 32);
  v14 = *(v12 + 40);

  a2(v13, v14);

  if (v11 + 1 == *(v10 + 16))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1002B8C00();
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      swift_beginAccess();
      swift_unknownObjectRetain();

      v17 = *(v16 + 40);
      swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v16 + 40);
      sub_100378670();
      *(v16 + 40) = v18;
      swift_endAccess();

      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B8B28()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1002B9D48(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1002B8C00()
{
  result = swift_beginAccess();
  v2 = *(v0 + 40);
  if (*(v2 + 16))
  {
    result = sub_1002DA6A0();
    if (v3)
    {
      v4 = (*(v2 + 56) + 24 * result);
      v5 = *v4;
      v6 = v4[1];
      swift_getObjectType();
      swift_unknownObjectRetain();

      OS_dispatch_source.cancel()();
      v7 = swift_beginAccess();
      v8 = sub_10038383C(v7);
      swift_endAccess();
      sub_1002B9008(v8);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002B8CE8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA6A0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = (*(v1 + 56) + 24 * v2);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  swift_unknownObjectRetain();

  return v5;
}

uint64_t sub_1002B8D7C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1002B8DAC()
{
  sub_1002B8D7C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

__n128 sub_1002B8E04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002B8E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002B8E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1002B8EA4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1002B8F5C()
{
  result = qword_1006A3610;
  if (!qword_1006A3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3610);
  }

  return result;
}

unint64_t sub_1002B8FB4()
{
  result = qword_1006A3618;
  if (!qword_1006A3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3618);
  }

  return result;
}

uint64_t sub_1002B9008(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002B9048(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1002B9088()
{
  result = qword_1006A3620;
  if (!qword_1006A3620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3620);
  }

  return result;
}

uint64_t sub_1002B90D8(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if ((v7 + 16 * v3 + 16 * v4) != &v8[2 * v9 + 4])
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 >= 0)
    {
      v14 = 2 * v10;
      if (v14 > result)
      {
        result = v14;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_1002B94CC(result);
}

void *sub_1002B91E0(void *result)
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

uint64_t sub_1002B9298(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    goto LABEL_29;
  }

  v5 = v1;
  v6 = *(result + 16);
  v31 = *result;
  v32 = v6;
  v33 = *(result + 32);
  result = sub_1002B9B38();
  v7 = result;
  v9 = v8;
  v29 = v1;
  if (v8)
  {
    while (2)
    {
      if (__OFADD__(v4, 1))
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        v30 = sub_1002B9628(v4, v4 + 1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
        v10 = sub_1002B97E8();
        sub_1002B9804(&v30, v4, 0, v10);

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v13 = (v11 >> 1) - v12;
        if (!__OFSUB__(v11 >> 1, v12))
        {
          v14 = *(v5 + 8) + 16 * v12;
          if ((v11 & 1) == 0)
          {
            goto LABEL_11;
          }

          v15 = *v5;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v16 = swift_dynamicCastClass();
          if (!v16)
          {
            swift_unknownObjectRelease();
            v16 = _swiftEmptyArrayStorage;
          }

          v17 = v16[2];
          if ((v14 + 16 * v13) != &v16[2 * v17 + 4])
          {

            goto LABEL_11;
          }

          v18 = v16[3];

          v19 = (v18 >> 1) - v17;
          v20 = __OFADD__(v13, v19);
          v13 += v19;
          if (!v20)
          {
LABEL_11:
            v21 = v31;
            v22 = *(&v32 + 1);
            v23 = (v32 + 64) >> 6;
            v24 = v33;
            while (v4 < v13)
            {
              v25 = (v14 + 16 * v4);
              *v25 = v7;
              v25[1] = v9;
              ++v4;
              if (!v24)
              {
                while (1)
                {
                  v26 = v22 + 1;
                  if (__OFADD__(v22, 1))
                  {
                    break;
                  }

                  if (v26 >= v23)
                  {
                    v24 = 0;
                    v7 = 0;
                    v9 = 0;
                    goto LABEL_21;
                  }

                  v24 = *(*(&v21 + 1) + 8 * v26);
                  ++v22;
                  if (v24)
                  {
                    v22 = v26;
                    goto LABEL_19;
                  }
                }

                __break(1u);
                goto LABEL_26;
              }

              v26 = v22;
LABEL_19:
              v27 = __clz(__rbit64(v24));
              v24 &= v24 - 1;
              v28 = (*(v21 + 48) + ((v26 << 10) | (16 * v27)));
              v7 = *v28;
              v9 = v28[1];
            }

LABEL_21:
            *(&v32 + 1) = v22;
            v33 = v24;
            v5 = v29;
            result = sub_1002B91E0(v4);
            if (v9)
            {
              continue;
            }

            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      break;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_22:

  return sub_100022DDC();
}

uint64_t sub_1002B94CC(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1002F5D8C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        v16 = v1[1];
        swift_arrayInitWithCopy();
        v5 = sub_1002B9A44(v15, v14);
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v23 = *v1;
        result = swift_unknownObjectRelease();
        v1[1] = v18;
        v1[2] = v20;
        v1[3] = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
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
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
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
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1002B9628(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
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
    if (v13 == &v17[2 * v18 + 4])
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
  if (v13 == &v17[2 * v19 + 4])
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

  return sub_1002F5D8C(v6, v25);
}

uint64_t sub_1002B9804(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = &v14[-v13];
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v4;
  v38 = v15;
  v18 = (v9 + 32);
  v19 = v9 + 32 + 16 * a2;
  v40 = (v19 + 16 * a3);
  result = sub_1002B9BF0(v7);
  if (result)
  {
    v20 = result;
    v37 = v4[2];
    v35 = a4;
    v36 = v13;
    v21 = (v4[1] + 16 * v37);
    v22 = result + 32;
    swift_arrayDestroy();
    sub_100060528(v21, a2, v18);
    swift_arrayDestroy();
    v35(v19, a3);
    sub_100060528(&v21[16 * a2 + 16 * v38], v36, v40);
    v23 = v22 + 16 * *(v20 + 16);
    v24 = v37;
    swift_arrayDestroy();
    *(v20 + 16) = 0;

LABEL_15:
    v31 = *v16;

    swift_unknownObjectRelease();
    result = sub_1002B9A44(v9, v24);
    *v16 = result;
    v16[1] = v32;
    v16[2] = v33;
    v16[3] = v34;
    return result;
  }

  v24 = v4[2];
  v25 = v24 + a2;
  if (__OFADD__(v24, a2))
  {
    goto LABEL_21;
  }

  v26 = a2;
  if (v25 < v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v25, v24))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27 = a4;
  v28 = v16[1];
  swift_arrayInitWithCopy();
  result = v27(&v18[16 * v26], a3);
  v29 = &v38[v25];
  if (__OFADD__(v25, v38))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = v16[3] >> 1;
  if (v30 < v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v30, v29))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002B9A44(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B9A8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_100060528((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B9B38()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[3];
LABEL_7:
    v4 = (v1 - 1) & v1;
    v5 = (*(*v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v1)))));
    v6 = *v5;
    v7 = v5[1];

LABEL_8:
    v0[3] = v2;
    v0[4] = v4;
    return v6;
  }

  else
  {
    while (1)
    {
      v3 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v3 >= ((v0[2] + 64) >> 6))
      {
        v4 = 0;
        v6 = 0;
        goto LABEL_8;
      }

      v1 = *(v0[1] + 8 * v3);
      ++v2;
      if (v1)
      {
        v2 = v3;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002B9BF0(void *a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
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
  if ((v10 + 16 * v8) != &v11[2 * v12 + 4])
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = v11[3];

  v16 = (v14 >> 1) - v12;
  v17 = __OFADD__(v8, v16);
  v13 = v8 + v16;
  if (!v17)
  {
LABEL_10:
    if (v13 < a1)
    {
      return 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = _swiftEmptyArrayStorage;
    }

    v18 = (v10 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v8 + v18;
    if (!__OFADD__(v8, v18))
    {
      v5 = a1[2];
      if (isUniquelyReferenced_nonNull >= v5)
      {
        return a1;
      }

LABEL_19:
      sub_1002B9A8C(isUniquelyReferenced_nonNull, v5, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B9D48(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1002B9D90(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002B9E6C()
{
  result = qword_1006A3648;
  if (!qword_1006A3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3648);
  }

  return result;
}

uint64_t sub_1002B9F2C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for AVAudioSessionInterruptionProvider();
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  sub_1002BA0C4(__src);
  memcpy((v2 + 80), __src, 0xA8uLL);
  *(v2 + 16) = v0;
  *(v2 + 24) = &off_100628E00;
  *(v2 + 32) = 1;
  *(v2 + 40) = v1;
  return v2;
}

uint64_t sub_1002B9FF0(uint64_t a1)
{
  v1 = [objc_allocWithZone(AVAudioSession) initProxySession:a1 autoReconnect:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for AVAudioSessionInterruptionProvider();
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0;
  sub_1002BA0C4(__src);
  memcpy((v4 + 80), __src, 0xA8uLL);
  *(v4 + 16) = v2;
  *(v4 + 24) = &off_100628E00;
  *(v4 + 32) = 0;
  *(v4 + 40) = v3;
  return v4;
}

uint64_t sub_1002BA0D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002BA114(uint64_t result, int a2, int a3)
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