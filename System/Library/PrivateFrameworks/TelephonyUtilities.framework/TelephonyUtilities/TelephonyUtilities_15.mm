void sub_1002E9DDC(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1004229E0(a2);
    if (v4)
    {
      sub_1002E9A28(v4);
      v6 = v5;

      v7 = OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations;
      v8 = *(v2 + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations);

      sub_1002F5440(v9, v6);
      v11 = v10;

      if (v11)
      {

        if (qword_1006A0B20 != -1)
        {
          sub_100008228();
        }

        v12 = type metadata accessor for Logger();
        sub_10000AF9C(v12, qword_1006BA5E0);
        v13 = a1;
        oslog = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v14))
        {
          sub_100005274();
          v15 = sub_100007974();
          *v8 = 138412290;
          *(v8 + 4) = v13;
          *v15 = a1;
          v16 = v13;
          _os_log_impl(&_mh_execute_header, oslog, v14, "ConversationLinkSync: Ignoring devicesChanged signal from IDSService because destinations are the same {service:%@}", v8, 0xCu);
          sub_10028CA5C(v15);
          sub_100005F40();
          sub_100005F40();
        }
      }

      else
      {
        v17 = *(v2 + v7);
        *(v2 + v7) = v6;

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1003F72B4(v2, v6);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1002EA084(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_1003F28CC(*(a2 + 16) != 0);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1002EADAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationLinkSyncIDSInteractor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002EAE60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100290AC4(a1, a2);
  }

  return a1;
}

unint64_t sub_1002EAE74()
{
  result = qword_1006A4460;
  if (!qword_1006A4460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4460);
  }

  return result;
}

unint64_t sub_1002EAEC8()
{
  result = qword_1006A4470;
  if (!qword_1006A4470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4470);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConversationLinkSyncIDSInteractor.IDSInteractorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1002EAFBC()
{
  result = qword_1006A4478;
  if (!qword_1006A4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4478);
  }

  return result;
}

void sub_1002EB010()
{
  sub_100005EF4();
  v1 = v0;
  v23 = v2;
  v24 = v3;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_participants] = _swiftEmptyDictionarySingleton;
  swift_unknownObjectWeakInit();
  v16 = &v1[OBJC_IVAR___CSDSimulatedAVCSession_sessionIdentifier];
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v9 + 8))(v15, v6);
  *v16 = v17;
  v16[1] = v19;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideo] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioReady] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isUplinkMuted] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioEnabled] = 1;
  v20 = OBJC_IVAR___CSDSimulatedAVCSession_isVideoEnabled;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideoEnabled] = 1;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isVideoPaused] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isAudioPaused] = 0;
  v21 = OBJC_IVAR___CSDSimulatedAVCSession_isOneToOneModeEnabled;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isOneToOneModeEnabled] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isRelaying] = 0;
  v1[OBJC_IVAR___CSDSimulatedAVCSession_isScreening] = 0;
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_presentationState] = 0;
  v22 = &v1[OBJC_IVAR___CSDSimulatedAVCSession_presentationRect];
  *v22 = 0u;
  v22[1] = 0u;
  swift_unknownObjectWeakAssign();
  *&v1[OBJC_IVAR___CSDSimulatedAVCSession_queue] = v5;
  v1[v20] = v23;
  v1[v21] = v24;
  v25.receiver = v1;
  v25.super_class = type metadata accessor for SimulatedAVCSession();
  objc_msgSendSuper2(&v25, "init");
  swift_unknownObjectRelease();
  sub_100005EDC();
}

uint64_t sub_1002EB310()
{
  v1 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_sessionIdentifier);
  v2 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_sessionIdentifier + 8);

  return v1;
}

double sub_1002EB814()
{
  result = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect);
  v2 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect + 8);
  v3 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect + 16);
  v4 = *(v0 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect + 24);
  return result;
}

void sub_1002EB850(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___CSDSimulatedAVCSession_presentationRect);
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
}

uint64_t sub_1002EB8B4(uint64_t a1)
{
  v3 = OBJC_IVAR___CSDSimulatedAVCSession_participants;
  swift_beginAccess();
  if (*(*(v1 + v3) + 16))
  {
    sub_1002DA664(a1);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1002EB958()
{
  sub_100005EF4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = sub_100007FEC(v11);
  v44 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v17 = sub_100007CD8();
  v18 = sub_100007FEC(v17);
  v42 = v19;
  v43 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18, v22);
  sub_100007FDC();
  v23 = sub_100015D18();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10057CA70;
  *(v24 + 56) = sub_1002ECA10();
  sub_10000E9BC();
  *(v24 + 64) = sub_10000EDF8(v25, v26);
  *(v24 + 32) = v10;
  *(v24 + 96) = &type metadata for Bool;
  *(v24 + 104) = &protocol witness table for Bool;
  *(v24 + 72) = v8;
  *(v24 + 136) = &type metadata for Bool;
  *(v24 + 144) = &protocol witness table for Bool;
  *(v24 + 112) = v6;
  *(v24 + 176) = &type metadata for Bool;
  *(v24 + 184) = &protocol witness table for Bool;
  *(v24 + 152) = v4;
  v27 = v10;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  [v27 identifier];
  v28 = OBJC_IVAR___CSDSimulatedAVCSession_participants;
  swift_beginAccess();
  v29 = v27;
  v30 = *&v2[v28];
  swift_isUniquelyReferenced_nonNull_native();
  v46 = *&v2[v28];
  sub_1003790C0();
  *&v2[v28] = v46;
  swift_endAccess();
  v31 = *&v2[OBJC_IVAR___CSDSimulatedAVCSession_queue];
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  *(v32 + 24) = v29;
  v45[4] = sub_1002ECA5C;
  v45[5] = v32;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1107296256;
  sub_10000E698();
  v45[2] = v33;
  v45[3] = &unk_100625790;
  v34 = _Block_copy(v45);
  v35 = v29;
  v36 = v2;
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_100008360();
  sub_10000EDF8(v37, v38);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  v39 = *(v44 + 8);
  v40 = sub_100007764();
  v41(v40);
  (*(v42 + 8))(v1, v43);

  sub_100005EDC();
}

void *sub_1002EBCE8(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addedRemoteParticipantWithIdentifier:objc_msgSend(a2 updatedAudioEnabled:"identifier") updatedVideoEnabled:1 streamToken:1 screenToken:0 captionsToken:{0, 0}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EBE00()
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
  v36 = sub_100007CD8();
  v12 = sub_100007FEC(v36);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12, v17);
  sub_100007FDC();
  v18 = sub_100015D18();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D690;
  *(v19 + 56) = sub_1002ECA10();
  sub_10000E9BC();
  *(v19 + 64) = sub_10000EDF8(v20, v21);
  *(v19 + 32) = v4;
  v22 = v4;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v23 = [v22 identifier];
  swift_beginAccess();
  v24 = sub_100383CA0(v23);
  swift_endAccess();

  v25 = *&v2[OBJC_IVAR___CSDSimulatedAVCSession_queue];
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  *(v26 + 24) = v22;
  v37[4] = sub_1002ECA54;
  v37[5] = v26;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 1107296256;
  sub_10000E698();
  v37[2] = v27;
  v37[3] = &unk_100625740;
  v28 = _Block_copy(v37);
  v29 = v22;
  v30 = v2;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v31, v32);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);
  v33 = *(v8 + 8);
  v34 = sub_100007764();
  v35(v34);
  (*(v14 + 8))(v1, v36);

  sub_100005EDC();
}

void *sub_1002EC128(uint64_t a1, void *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result removedRemoteParticipantWithIdentifier:objc_msgSend(a2 didSucceed:{"identifier"), 1}];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EC258()
{
  sub_100005EF4();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v9 = sub_100007CD8();
  v10 = sub_100007FEC(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v16 = sub_100015D18();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v17 = *&v0[OBJC_IVAR___CSDSimulatedAVCSession_queue];
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  sub_10000A0F0(v18);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v27[2] = v19;
  v27[3] = &unk_1006256F0;
  v20 = _Block_copy(v27);
  v21 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v22, v23);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  v24 = *(v5 + 8);
  v25 = sub_100007764();
  v26(v25);
  (*(v12 + 8))(v1, v9);

  sub_100005EDC();
}

void *sub_1002EC490(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result session:a1 didStart:1 error:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002EC598()
{
  sub_100005EF4();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v32 = sub_100007CD8();
  v11 = sub_100007FEC(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v17 = sub_100015D18();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057D690;
  v19 = sub_1002910C8(v3);
  v21 = v20;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100009D88();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v22 = *&v0[OBJC_IVAR___CSDSimulatedAVCSession_queue];
  v23 = swift_allocObject();
  *(v23 + 16) = v0;
  sub_10000A0F0(v23);
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v33[2] = v24;
  v33[3] = &unk_1006256A0;
  v25 = _Block_copy(v33);
  v26 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100008360();
  sub_10000EDF8(v27, v28);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_10000F310();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  v29 = *(v7 + 8);
  v30 = sub_100007764();
  v31(v30);
  (*(v13 + 8))(v1, v32);

  sub_100005EDC();
}

void *sub_1002EC834(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result session:a1 didStopWithError:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1002EC938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatedAVCSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002ECA10()
{
  result = qword_1006A4530;
  if (!qword_1006A4530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A4530);
  }

  return result;
}

uint64_t sub_1002ECA78()
{
  sub_100010060();
  swift_unknownObjectWeakInit();
  v7 = v0;
  v2 = (v1 + OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers);
  v3 = v0;
  os_unfair_lock_lock(v2);
  sub_1002EE374(v6, &v5);
  sub_100381DC0();
  os_unfair_lock_unlock(v2);
  return sub_1002EE3AC(v6);
}

void *sub_1002ECB80@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v3 = v1 + OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers;
  os_unfair_lock_lock(v3);
  v6 = *(v3 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v3);

  a1[3] = sub_10026D814(&qword_1006A4580, &qword_10057F3A8);
  a1[4] = sub_1002EE2D4();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v5;
  result[3] = sub_1002ECCCC;
  result[4] = 0;
  result[5] = sub_1002EE338;
  result[6] = 0;
  result[7] = sub_1002EE344;
  result[8] = 0;
  return result;
}

uint64_t sub_1002ECC88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

id sub_1002ECCCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v5 = result;
  if (result)
  {
    v6 = *(a1 + 8);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

id sub_1002ECD5C()
{
  sub_1002ECB80(v13);
  v0 = [objc_allocWithZone(NSMapTable) init];
  v1 = v14;
  v2 = sub_100009B14(v13, v14);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2, v2);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1002A1D5C(v10);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    sub_10001BDB8(v10, AssociatedTypeWitness);
    dispatch thunk of IteratorProtocol.next()();
    if (!v8)
    {
      break;
    }

    v6 = v9;
    [v0 setObject:v9 forKey:v8];
    swift_unknownObjectRelease();
  }

  sub_100009B7C(v10);
  sub_100009B7C(v13);
  return v0;
}

uint64_t sub_1002ECF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  if (a1)
  {
    sub_100010060();
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v6[13] = v7;
  v6[14] = v9;

  return _swift_task_switch(sub_1002ECFB8, v7, v9);
}

uint64_t sub_1002ECFB8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  sub_1002ECB80((v0 + 16));
  v3 = *(v0 + 40);
  v4 = sub_100009B14((v0 + 16), v3);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  (*(v5 + 16))(v7, v4, v3);
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1002EDCD4;
  *(v9 + 24) = v8;
  v10 = Sequence.filter(_:)();
  *(v0 + 120) = v10;

  sub_100009B7C((v0 + 16));
  v11 = v10[2];
  if (v11 < 2)
  {
    if (v11)
    {
      v13 = v10[4];
      *(v0 + 152) = v13;
      v14 = v10[5];
      *(v0 + 160) = v14;
      swift_unknownObjectRetain();
      v15 = v14;
      v25 = *(v0 + 80);

      v16 = sub_1002EDD40();
      v17 = swift_task_alloc();
      *(v0 + 168) = v17;
      *(v17 + 16) = v25;
      *(v17 + 32) = v13;
      v18 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
      v19 = v15;
      v20 = swift_task_alloc();
      *(v0 + 176) = v20;
      *v20 = v0;
      v20[1] = sub_1002ED588;
      v21 = *(v0 + 56);
      v22 = *(v0 + 64);

      return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v20, v15, v16, v21, v22, &unk_10057F328, v17, &type metadata for () + 8);
    }

    else
    {

      sub_100009EF4();

      return v23();
    }
  }

  else
  {
    v12 = swift_allocObject();
    *(v0 + 128) = v12;
    *(v12 + 16) = *(v0 + 80);

    return _swift_task_switch(sub_1002ED2D0, 0, 0);
  }
}

uint64_t sub_1002ED2D0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_task_alloc();
  v0[17] = v3;
  v3[2] = v2;
  v3[3] = sub_1002EDE54;
  v3[4] = v1;
  v4 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1002ED3C4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1002ED3C4()
{
  sub_100006810();
  sub_100005F18();
  v2 = v1[18];
  v3 = v1[17];
  v4 = v1[15];
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  return _swift_task_switch(sub_1002ED4E8, 0, 0);
}

uint64_t sub_1002ED500()
{
  sub_100006810();
  v1 = *(v0 + 128);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_100009EF4();

    return v4();
  }

  return result;
}

uint64_t sub_1002ED588()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  v4 = *(v2 + 176);
  v5 = *v1;
  sub_100008060();
  *v6 = v5;

  if (!v0)
  {
    v8 = *(v3 + 168);

    v9 = *(v3 + 104);
    v10 = *(v3 + 112);

    return _swift_task_switch(sub_1002ED694, v9, v10);
  }

  return result;
}

uint64_t sub_1002ED694()
{
  sub_100006810();
  v1 = *(v0 + 152);

  swift_unknownObjectRelease();
  sub_100009EF4();

  return v2();
}

uint64_t sub_1002ED6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v6 = *(*(sub_10026D814(&qword_1006A5310, &qword_10057D580) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002ED7A0, 0, 0);
}

uint64_t sub_1002ED7A0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v29 = **(v0 + 104);
    v28 = type metadata accessor for TaskPriority();
    v3 = (v1 + 40);
    do
    {
      v31 = v2;
      v5 = *(v0 + 136);
      v4 = *(v0 + 144);
      v7 = *(v0 + 120);
      v6 = *(v0 + 128);
      v8 = *(v3 - 1);
      v9 = *v3;
      v30 = v3;
      sub_10000AF74(v4, 1, 1, v28);
      v10 = swift_allocObject();
      v10[2] = 0;
      v11 = v10 + 2;
      v10[3] = 0;
      v10[4] = v7;
      v10[5] = v6;
      v10[6] = v8;
      sub_1002EE1BC(v4, v5);
      LODWORD(v7) = sub_100015468(v5, 1, v28);
      swift_unknownObjectRetain_n();
      v12 = v9;

      v13 = *(v0 + 136);
      if (v7 == 1)
      {
        sub_1000099A4(*(v0 + 136), &qword_1006A5310, &qword_10057D580);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v28 - 8) + 8))(v13, v28);
      }

      if (*v11)
      {
        v14 = v10[3];
        v15 = *v11;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = dispatch thunk of Actor.unownedExecutor.getter();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = sub_1002EDD40();
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_10057F358;
      *(v20 + 24) = v10;
      v21 = v12;

      if (v18 | v16)
      {
        v22 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v22 = 0;
      }

      v23 = *(v0 + 144);
      *(v0 + 80) = 1;
      *(v0 + 88) = v22;
      *(v0 + 96) = v29;
      *(v0 + 48) = 6;
      *(v0 + 56) = v0 + 80;
      *(v0 + 64) = v21;
      *(v0 + 72) = v19;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1000099A4(v23, &qword_1006A5310, &qword_10057D580);
      v3 = v30 + 2;
      --v2;
    }

    while (v31 != 1);
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);

  sub_100009EF4();

  return v26();
}

uint64_t sub_1002EDAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return _swift_task_switch(sub_1002EDAD8, 0, 0);
}

uint64_t sub_1002EDAD8()
{
  sub_100006810();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  sub_100009EF4();

  return v2();
}

uint64_t sub_1002EDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_1002EDB5C, 0, 0);
}

uint64_t sub_1002EDB5C()
{
  sub_100006810();
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 32));
  sub_100009EF4();

  return v2();
}

id sub_1002EDBC0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___CSDConversationManagerDataSourceObserverStorage_observers];
  v3 = Dictionary.init(dictionaryLiteral:)();
  *v2 = 0;
  *(v2 + 1) = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1002EDCD4(void *a1)
{
  if (*(v1 + 16))
  {
    return [a1 respondsToSelector:?];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1002EDD04(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]) & 1;
}

unint64_t sub_1002EDD40()
{
  result = qword_1006A4578;
  if (!qword_1006A4578)
  {
    sub_1002A8914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4578);
  }

  return result;
}

uint64_t sub_1002EDD98()
{
  sub_100010060();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_100035FE4;

  return sub_1002EDB38(v1, v2, v3, v4);
}

uint64_t sub_1002EDE54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1002EDE7C()
{
  sub_100010060();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE4;

  return sub_1002ED6F4(v2, v0, v3, v4, v5);
}

uint64_t sub_1002EDF38(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002EE020;

  return v5();
}

uint64_t sub_1002EE020()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100009EF4();

  return v5();
}

uint64_t sub_1002EE104()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_100008A48(v6);
  *v7 = v8;
  v7[1] = sub_100035FE0;

  return sub_1002EDAB4(v1, v2, v3, v4, v5);
}

uint64_t sub_1002EE1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EE22C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_100035FE0;

  return sub_1002EDF38(v1);
}

unint64_t sub_1002EE2D4()
{
  result = qword_1006A4588;
  if (!qword_1006A4588)
  {
    sub_10026DCB4(&qword_1006A4580, &qword_10057F3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4588);
  }

  return result;
}

uint64_t sub_1002EE344@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100349788(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1002EE62C(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = v4;
  v8 = a2;
  v9 = result;
  v10 = *v4;
  v12 = v4[6];
  v11 = v4[7];
  v13 = v5[8];
  v14 = *(v5 + 36);
  if (v13 == 1)
  {
    if (a3 == 1)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a3 == 1)
  {
LABEL_5:
    v39[0] = v12;
    v39[1] = v11;
    v39[2] = v13;
    v40 = v14;
    v41 = result;
    v42 = a2;
    v43 = a3;
    v44 = a4;
    sub_1002F145C(result, a2, a3);
    sub_1002F145C(v12, v11, v13);
    sub_1000099A4(v39, &unk_1006A4690, &unk_10057F498);
    if (a3 == 1)
    {
      v36 = _swiftEmptyDictionarySingleton;
LABEL_19:
      v38 = v8;
      v20 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10057D6A0;
      v22 = sub_100048C4C(v9, v8, a3);
      v24 = v23;
      *(v21 + 56) = &type metadata for String;
      v25 = sub_100009D88();
      *(v21 + 64) = v25;
      *(v21 + 32) = v22;
      *(v21 + 40) = v24;
      v39[0] = v5;

      v26 = String.init<A>(reflecting:)();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v25;
      *(v21 + 72) = v26;
      *(v21 + 80) = v27;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v28 = v5[2];
      v29 = v5[3];
      ObjectType = swift_getObjectType();
      (*(v29 + 56))(v36, ObjectType, v29);

      v37 = sub_100010B20();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v31 = v5[6];
      v32 = v5[7];
      v33 = v5[8];
      v5[6] = v9;
      v5[7] = v38;
      v5[8] = a3;
      v34 = *(v5 + 36);
      *(v5 + 36) = a4;
      return sub_1002F1470(v31, v32, v33);
    }

    v15 = v8;
    v16 = HIDWORD(v9);
LABEL_18:

    v19 = v9 & 1 | (v16 << 32);
    v8 = v15;
    v36 = sub_100048CB4(v19, v15, a3, a4 & 0x101);
    sub_1002F1470(v9, v15, a3);
    goto LABEL_19;
  }

  v15 = a2;
  v16 = HIDWORD(result);
  if (HIDWORD(result) != HIDWORD(v12) || ((v12 ^ result) & 1) != 0)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    if (!a3)
    {
      goto LABEL_18;
    }

    if (v11 != a2 || v13 != a3)
    {
      v18 = v5[8];
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_18;
      }

      result = v9;
      a2 = v15;
    }

    v35 = a3;
  }

  else
  {
    if (a3)
    {
      goto LABEL_18;
    }

    v35 = 0;
  }

  return sub_1002F1470(result, a2, v35);
}

uint64_t sub_1002EEACC(void *__src, char a2)
{
  v3 = v2;
  v4 = __src;
  v112 = *v2;
  memcpy(__dst, __src, 0xA8uLL);
  v113 = sub_100043014(__dst);
  memcpy(v121, v4, sizeof(v121));
  v5 = &_s10Foundation3URLVMa_ptr_0;
  __srca = v4;
  if (sub_100043014(v121) != 1)
  {
    v6 = v121[17];
    if (v121[17])
    {
      v7 = v121[16];

      sub_100017840();
      v9 = v8;
      v10 = v8[2];
      if (v10 >= v8[3] >> 1)
      {
        sub_100017840();
        v9 = v107;
      }

      v9[2] = v10 + 1;
      v11 = &v9[2 * v10];
      v11[4] = v7;
      v11[5] = v6;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v12 = sub_100010B20();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10057D690;
    v120[0] = v9;

    sub_10026D814(&unk_1006A3C60, &unk_10057D910);
    v14 = String.init<A>(reflecting:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100009D88();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v17 = v3[2];
    v18 = v3[3];
    ObjectType = swift_getObjectType();
    (*(v18 + 64))(v9, ObjectType, v18);

    LOBYTE(v119[0]) = BYTE1(__dst[7]);
    if (__dst[15])
    {
      v4 = __srca;
      v5 = &_s10Foundation3URLVMa_ptr_0;
    }

    else
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
      if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
      {
        sub_1002F14C8(__srca, v120);

        v26 = 0;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002F14C8(__srca, v120);

        v26 = 0;
        if ((v25 & 1) == 0 && LOBYTE(v119[0]))
        {
          v27 = sub_100010B20();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          v26 = 1;
        }
      }

      v28 = sub_1002E2BD4(0xD00000000000002CLL, 0x8000000100566C80, 0x707845616964654DLL);
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = [objc_allocWithZone(NSNumber) initWithBool:v26];
      (*(v18 + 72))(v29, v31, v32, ObjectType, v18);
      v5 = &_s10Foundation3URLVMa_ptr_0;
      v4 = __srca;
      sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  if ([v3[5] sharePlayInCallsEnabled])
  {
    memcpy(v120, v4, sizeof(v120));
    if (sub_100043014(v120) == 1)
    {
      goto LABEL_20;
    }

    v118[0] = HIBYTE(__dst[6]);
    LOBYTE(v119[0]) = BYTE6(__dst[6]);
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
    {

      goto LABEL_43;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47)
    {
      goto LABEL_43;
    }

    if (v119[0])
    {
      v111 = v118[0];
      if (qword_1006A0B30 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000AF9C(v48, qword_1006BA610);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 67109120;
        *(v51 + 4) = 1;
        _os_log_impl(&_mh_execute_header, v49, v50, "Setting IsSharePlayCapableCallSession (%{BOOL}d)", v51, 8u);
      }

      v53 = v3[2];
      v52 = v3[3];
      v54 = swift_getObjectType();
      v55 = [objc_allocWithZone(v5[59]) initWithBool:1];
      v56 = *(v52 + 72);
      v56(0xD00000000000001DLL, 0x8000000100567E60, v55, v54, v52);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v57, v58, "Setting IsExpanseCallSession (%{BOOL}d)", v59, 8u);
      }

      v60 = [objc_allocWithZone(NSNumber) initWithBool:v111];
      v56(0xD000000000000014, 0x8000000100567E40, v60, v54, v52);

      goto LABEL_42;
    }

    if (!v118[0])
    {
LABEL_20:
      if (qword_1006A0B30 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000AF9C(v33, qword_1006BA610);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 67109120;
        _os_log_impl(&_mh_execute_header, v34, v35, "Setting IsExpanseCallSession (%{BOOL}d)", v36, 8u);
      }

      v38 = v3[2];
      v37 = v3[3];
      v39 = swift_getObjectType();
      v40 = [objc_allocWithZone(v5[59]) initWithBool:0];
      v41 = *(v37 + 72);
      v41(0xD000000000000014, 0x8000000100567E40, v40, v39, v37);

      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v64 = swift_slowAlloc();
        *v64 = 67109120;
        _os_log_impl(&_mh_execute_header, v61, v62, "Setting IsSharePlayCapableCallSession (%{BOOL}d)", v64, 8u);
      }

      v65 = [objc_allocWithZone(NSNumber) initWithBool:0];
      v41(0xD00000000000001DLL, 0x8000000100567E60, v65, v39, v37);

LABEL_42:
      v5 = &_s10Foundation3URLVMa_ptr_0;
      goto LABEL_43;
    }

    if (qword_1006A0B30 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000AF9C(v80, qword_1006BA610);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "Detected inconsistent state where wantsSharePlayCapableCall=false but wantsSharePlayCapableCall=true, setting neither", v83, 2u);
    }
  }

LABEL_43:
  v66 = v3[2];
  v67 = v3[3];
  v68 = swift_getObjectType();
  if (qword_1006A0810 != -1)
  {
    swift_once();
  }

  v70 = qword_1006BA260;
  v69 = *algn_1006BA268;
  v71 = [objc_allocWithZone(v5[59]) initWithBool:1];
  v72 = v70;
  v73 = *(v67 + 72);
  v73(v72, v69, v71, v68, v67);
  v108 = v68;
  v74 = v67;

  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v75 = qword_1006BA270;
  v76 = *algn_1006BA278;
  v77 = [objc_allocWithZone(v5[59]) initWithBool:1];
  v73(v75, v76, v77, v108, v67);

  memcpy(v119, __srca, sizeof(v119));
  if (sub_100043014(v119) != 1)
  {
    v78 = *(v67 + 80);
    v79 = BYTE3(v119[6]);
    memcpy(v118, __dst, sizeof(v118));
    sub_100042F60(v118, v117);
    v78(v79 & 1, v108, v67);
    sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  }

  sub_1002EFE00(__srca);
  v84 = a2 & 1;
  v110 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_10057DDF0;
  LOBYTE(v117[0]) = v113 == 0;
  v86 = String.init<A>(reflecting:)();
  v88 = v87;
  *(v85 + 56) = &type metadata for String;
  v89 = sub_100009D88();
  *(v85 + 32) = v86;
  *(v85 + 40) = v88;
  *(v85 + 96) = &type metadata for UInt;
  *(v85 + 104) = &protocol witness table for UInt;
  *(v85 + 64) = v89;
  *(v85 + 72) = v84;
  v117[0] = v3;

  v90 = String.init<A>(reflecting:)();
  *(v85 + 136) = &type metadata for String;
  *(v85 + 144) = v89;
  *(v85 + 112) = v90;
  *(v85 + 120) = v91;
  memcpy(v118, v3 + 10, sizeof(v118));
  if (sub_100043014(v118) == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = v3[11];
    v93 = v92;
  }

  v94 = sub_100291088(v92);
  v96 = v95;

  *(v85 + 176) = &type metadata for String;
  *(v85 + 184) = v89;
  *(v85 + 152) = v94;
  *(v85 + 160) = v96;
  memcpy(v117, v3 + 10, 0xA8uLL);
  if (sub_100043014(v117) == 1)
  {
    v97 = 0;
  }

  else
  {
    v97 = v3[12];
    v98 = v97;
  }

  v99 = sub_100048C34(v97);
  v101 = v100;

  *(v85 + 216) = &type metadata for String;
  *(v85 + 224) = v89;
  *(v85 + 192) = v99;
  *(v85 + 200) = v101;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  (*(v74 + 88))(v113 == 0, v84, v108, v74);
  memcpy(v116, v3 + 10, sizeof(v116));
  memcpy(v3 + 10, __srca, 0xA8uLL);
  sub_1002F14C8(__srca, v115);
  sub_1000099A4(v116, &unk_1006A41A0, &qword_10057EFE0);
  v102 = sub_100010B20();
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_10057D6A0;
  LOBYTE(v115[0]) = v113 == 0;
  v104 = String.init<A>(reflecting:)();
  *(v103 + 56) = &type metadata for String;
  *(v103 + 64) = v89;
  *(v103 + 32) = v104;
  *(v103 + 40) = v105;
  *(v103 + 96) = &type metadata for UInt;
  *(v103 + 104) = &protocol witness table for UInt;
  *(v103 + 72) = v84;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

id sub_1002EFE00(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  result = [*(v1 + 40) sessionBasedMutingEnabled];
  if (result)
  {
    memcpy(v20, __src, sizeof(v20));
    result = sub_100043014(v20);
    if (result != 1)
    {
      v5 = v20[153];
      if (v20[154])
      {
        memcpy(v19, __dst, sizeof(v19));
        sub_100042F60(v19, v18);
      }

      else
      {
        v6 = *(v1 + 16);
        v7 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        v9 = *(v7 + 32);
        memcpy(v19, __dst, sizeof(v19));
        sub_100042F60(v19, v18);
        if ((v9(ObjectType, v7) ^ v5))
        {
          v22 = sub_100010B20();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v10 = swift_allocObject();
          *(v10 + 16) = xmmword_10057D690;
          v11 = v5 & 1;
          v18[0] = v5 & 1;
          v12 = String.init<A>(reflecting:)();
          v14 = v13;
          *(v10 + 56) = &type metadata for String;
          *(v10 + 64) = sub_100009D88();
          *(v10 + 32) = v12;
          *(v10 + 40) = v14;
          static os_log_type_t.default.getter();
          v15 = v22;
          os_log(_:dso:log:type:_:)();

          (*(v7 + 48))(v11, ObjectType, v7);
          return sub_1000099A4(__src, &unk_1006A41A0, &qword_10057EFE0);
        }
      }

      v16 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10057D690;
      *(v17 + 56) = &type metadata for Bool;
      *(v17 + 64) = &protocol witness table for Bool;
      *(v17 + 32) = v5;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)();
      sub_1000099A4(__src, &unk_1006A41A0, &qword_10057EFE0);
    }
  }

  return result;
}

uint64_t sub_1002F00B0(unsigned __int16 *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  sub_10001514C(__srca);
  sub_10001514C(v35);
  if (sub_100043014(v35) != 1)
  {
    v4 = v35[50];
    memcpy(v32, __srca, sizeof(v32));
    sub_100042F60(v32, v31);
    if (v4 != sub_1002F0484())
    {
      sub_1002F04D8(v4);
    }

    sub_1000099A4(__srca, &unk_1006A41A0, &qword_10057EFE0);
  }

  v5 = *(__src + 3);
  v6 = *(__src + 4);
  v7 = *(__src + 5);
  v8 = __src[24];
  v9 = sub_10000F624();
  sub_1002F145C(v9, v10, v11);
  v12 = sub_10000F624();
  sub_1002EE62C(v12, v13, v14, v15);
  if (__src[76])
  {
    goto LABEL_12;
  }

  v16 = *(__src + 37);
  v17 = sub_100010B20();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057D6A0;
  v19 = *v2;
  *v32 = *v2;
  sub_10026D814(&qword_1006A46A0, &qword_10057F4A8);
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v18 + 56) = &type metadata for String;
  v23 = sub_100009D88();
  *(v18 + 64) = v23;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  *(v18 + 96) = &type metadata for Int32;
  *(v18 + 104) = &protocol witness table for Int32;
  *(v18 + 72) = v16;
  static os_log_type_t.default.getter();
  sub_100008378();
  os_log(_:dso:log:type:_:)();

  if ((v16 - 1) < 2)
  {
    *&v32[24] = &type metadata for Bool;
    v32[0] = 0;
    goto LABEL_10;
  }

  if ((v16 - 3) < 2)
  {
    *&v32[24] = &type metadata for Bool;
    v32[0] = 1;
LABEL_10:
    sub_10003EBF0(v32, v31);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100040430();
LABEL_11:
    v24 = objc_opt_self();
    sub_10003E7C0(_swiftEmptyDictionarySingleton);
    sub_1002E4C68(v25, v24);
    v26 = sub_100010B20();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10057D6A0;
    *v32 = v19;
    v28 = String.init<A>(describing:)();
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v23;
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    *(v27 + 96) = sub_10026D814(&unk_1006A2A00, &unk_10057D710);
    *(v27 + 104) = sub_1002E4C04();
    *(v27 + 72) = _swiftEmptyDictionarySingleton;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_12:
    sub_1002F09EC(*(__src + 1), *(__src + 2));
    sub_1002F04D8(*(__src + 50));
    memcpy(v31, __dst, sizeof(v31));
    ScreenSharingActivityManager.carPlayDidDisconnect()();
    memcpy(v32, v31, sizeof(v32));
    return sub_1002EEACC(v32, 0);
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  type metadata accessor for TUTelephonyCallSubType(0);
  *v32 = v16;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

BOOL sub_1002F0484()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v2 + 40))(ObjectType, v2) == 10;
}

void sub_1002F04D8(char a1)
{
  v2 = v1;
  v4 = *v1;
  if ((a1 & 1) != sub_1002F0484())
  {
    if (a1)
    {
      v5 = 10;
    }

    else
    {
      v5 = 0;
    }

    if (*(v1 + 32) == 1)
    {
      v6 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_10057CA70;
      *(v7 + 56) = &type metadata for Int;
      *(v7 + 64) = &protocol witness table for Int;
      *(v7 + 32) = v5;
      v34[0] = v2;

      v8 = String.init<A>(reflecting:)();
      v10 = v9;
      *(v7 + 96) = &type metadata for String;
      v11 = sub_100009D88();
      *(v7 + 104) = v11;
      *(v7 + 72) = v8;
      *(v7 + 80) = v10;
      memcpy(__dst, v2 + 10, 0xA8uLL);
      if (sub_100043014(__dst) == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = v2[11];
        v22 = v12;
      }

      v23 = sub_100291088(v12);
      v25 = v24;

      *(v7 + 136) = &type metadata for String;
      *(v7 + 144) = v11;
      *(v7 + 112) = v23;
      *(v7 + 120) = v25;
      memcpy(v34, v2 + 10, sizeof(v34));
      if (sub_100043014(v34) == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v2[12];
        v27 = v26;
      }

      v28 = sub_100048C34(v26);
      v30 = v29;

      *(v7 + 176) = &type metadata for String;
      *(v7 + 184) = v11;
      *(v7 + 152) = v28;
      *(v7 + 160) = v30;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)();

      v31 = v2[2];
      v32 = v2[3];
      ObjectType = swift_getObjectType();
      (*(v32 + 104))(v5, ObjectType, v32);
      v21 = sub_100010B20();
      static os_log_type_t.default.getter();
    }

    else
    {
      v13 = sub_100010B20();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10057D6A0;
      *(v14 + 56) = &type metadata for Int;
      *(v14 + 64) = &protocol witness table for Int;
      *(v14 + 32) = v5;
      __dst[0] = v2;

      v15 = String.init<A>(reflecting:)();
      v17 = v16;
      *(v14 + 96) = &type metadata for String;
      *(v14 + 104) = sub_100009D88();
      *(v14 + 72) = v15;
      *(v14 + 80) = v17;
      static os_log_type_t.default.getter();
      sub_100008378();
      os_log(_:dso:log:type:_:)();

      v18 = v2[2];
      v19 = v2[3];
      v20 = swift_getObjectType();
      (*(v19 + 112))(v5, v20, v19);
      v21 = sub_100010B20();
      static os_log_type_t.default.getter();
    }

    sub_100008378();
    os_log(_:dso:log:type:_:)();
  }
}

void sub_1002F09EC(void *a1, NSString *a2)
{
  if (*(v2 + 32) == 1)
  {
    v3 = v2;
    v6 = *v2;
    if (a2)
    {
      v40 = a2;
    }

    else
    {
      v40 = AVAudioSessionModeDefault;
    }

    v7 = v2[2];
    v8 = v3[3];
    v9 = v3[2];
    ObjectType = swift_getObjectType();
    v11 = *(v8 + 8);
    v12 = a2;
    v13 = v11(ObjectType, v8);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v20 = (*(v8 + 16))(ObjectType, v8);
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
LABEL_20:
        v39 = sub_100010B20();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10057E830;
        type metadata accessor for Category(0);
        v38 = a1;
        v28 = String.init<A>(reflecting:)();
        v30 = v29;
        *(v27 + 56) = &type metadata for String;
        v31 = sub_100009D88();
        *(v27 + 64) = v31;
        *(v27 + 32) = v28;
        *(v27 + 40) = v30;
        type metadata accessor for Mode(0);
        v32 = v40;
        v33 = String.init<A>(reflecting:)();
        *(v27 + 96) = &type metadata for String;
        *(v27 + 104) = v31;
        *(v27 + 72) = v33;
        *(v27 + 80) = v34;

        v35 = String.init<A>(reflecting:)();
        *(v27 + 136) = &type metadata for String;
        *(v27 + 144) = v31;
        *(v27 + 112) = v35;
        *(v27 + 120) = v36;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_100350834(v38, v32, ObjectType, v8);
        v37 = sub_100010B20();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        return;
      }
    }
  }
}

uint64_t sub_1002F0ED0(char a1)
{
  v2 = v1;
  sub_1002BA0C4(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_1002EEACC(__dst, a1);
  if (qword_1006A0B30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA610);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting kMXSessionProperty_PrefersNoInterruptionsDuringRemoteDeviceControl=false", v7, 2u);
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  if (qword_1006A0818 != -1)
  {
    swift_once();
  }

  v11 = qword_1006BA270;
  v12 = *algn_1006BA278;
  v13 = [objc_allocWithZone(NSNumber) initWithBool:0];
  (*(v8 + 72))(v11, v12, v13, ObjectType, v8);

  if ((*(v2 + 32) & 1) == 0)
  {
    sub_1002F04D8(0);
  }

  v14 = sub_10000A744();
  sub_1002EE62C(v14, v15, v16, v17);
  return (*(v8 + 120))(0, ObjectType, v8);
}

uint64_t sub_1002F12D8()
{
  v1 = sub_100010B20();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = sub_10000A744();
  sub_1002EE62C(v2, v3, v4, v5);
  sub_1002BA0C4(__src);
  sub_10001514C(v8);
  memcpy((v0 + 80), __src, 0xA8uLL);
  return sub_1000099A4(v8, &unk_1006A41A0, &qword_10057EFE0);
}

uint64_t sub_1002F1380()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 72);
  sub_1002F1470(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  sub_10001514C(v5);
  sub_1000099A4(v5, &unk_1006A41A0, &qword_10057EFE0);
  return v0;
}

uint64_t sub_1002F13E0()
{
  sub_1002F1380();

  return _swift_deallocClassInstance(v0, 248, 7);
}

uint64_t sub_1002F145C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1002F1470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1002F1484()
{
  result = qword_1006A2B90;
  if (!qword_1006A2B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A2B90);
  }

  return result;
}

uint64_t sub_1002F14C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A41A0, &qword_10057EFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1002F1538(uint64_t a1)
{
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v6 = sub_1000083A0();
  (*(*(v6 - 8) + 16))(v1, a1, v6);
  sub_10000AF74(v1, 0, 1, v6);
  v7 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult());
  return sub_1002F176C(0, 0, v1);
}

id sub_1002F1618(void *a1)
{
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v6 = sub_1000083A0();
  sub_10000AF74(v1, 1, 1, v6);
  v7 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult());
  v8 = a1;
  return sub_1002F176C(1, a1, v1);
}

id sub_1002F16C4()
{
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for UUID();
  sub_10000AF74(v4, 1, 1, v5);
  v6 = objc_allocWithZone(type metadata accessor for ActivitySessionCreationRequestResult());
  return sub_1002F176C(2, 0, v4);
}

id sub_1002F176C(char a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_status] = a1;
  *&v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_activitySession] = a2;
  sub_1002A5F90(a3, &v3[OBJC_IVAR___CSDActivitySessionCreationRequestResult_joinedConversationUUID]);
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ActivitySessionCreationRequestResult();
  v5 = objc_msgSendSuper2(&v7, "init");
  sub_10001D334(a3);
  return v5;
}

callservicesd::InjectionMode_optional __swiftcall InjectionMode.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

callservicesd::InjectionMode_optional sub_1002F1858@<W0>(Swift::Int *a1@<X0>, callservicesd::InjectionMode_optional *a2@<X8>)
{
  result.value = InjectionMode.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1002F1884@<X0>(uint64_t *a1@<X8>)
{
  result = InjectionMode.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

id sub_1002F18C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySessionCreationRequestResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ActivitySessionCreationRequestResult()
{
  result = qword_1006A46E0;
  if (!qword_1006A46E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002F1998()
{
  sub_100296D6C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for ActivitySessionCreationRequestResult.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002F1B2C()
{
  result = qword_1006A46F0;
  if (!qword_1006A46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A46F0);
  }

  return result;
}

uint64_t sub_1002F1B8C(uint64_t a1)
{
  result = 0x7469736F706D6F63;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x61737265766E6F63;
      break;
    case 2:
      result = 1819042147;
      break;
    case 3:
      result = 0x79627261656ELL;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1002F1C48(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002F1C58@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002F1C48(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1002F1CC4()
{
  result = qword_1006A46F8;
  if (!qword_1006A46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A46F8);
  }

  return result;
}

uint64_t sub_1002F1ECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v14 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10001E84C();
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v14;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1002F2348()
{
  sub_100005EF4();
  v6 = v5;
  v7 = type metadata accessor for UUID();
  v8 = sub_100007FEC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_100007BAC();
  sub_10001863C();
  __chkstk_darwin(v12, v13);
  sub_10000BB80();
  sub_10000A758();
  sub_1000053E8(v14, v15);
  sub_10000790C();
  Set.init(minimumCapacity:)();
  v16 = *(v6 + 16);
  if (v16)
  {
    sub_10001ABC0();
    do
    {
      v3(v0, v2, v7);
      sub_10039653C();
      (*v6)(v1, v7);
      v2 += v4;
      --v16;
    }

    while (v16);
  }

  else
  {
    sub_10000C3F0();
  }

  sub_100027E90();
  sub_100005EDC();
}

void sub_1002F2494()
{
  sub_100005EF4();
  v6 = v5;
  v7 = type metadata accessor for Participant();
  v8 = sub_100007FEC(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  sub_100007BAC();
  sub_10001863C();
  __chkstk_darwin(v12, v13);
  sub_10000BB80();
  sub_1000053E8(&unk_1006A4860, &type metadata accessor for Participant);
  sub_10000790C();
  Set.init(minimumCapacity:)();
  v14 = *(v6 + 16);
  if (v14)
  {
    sub_10001ABC0();
    do
    {
      v3(v0, v2, v7);
      sub_1003966D8();
      (*v6)(v1, v7);
      v2 += v4;
      --v14;
    }

    while (v14);
  }

  else
  {
    sub_10000C3F0();
  }

  sub_100027E90();
  sub_100005EDC();
}

void sub_1002F25F0()
{
  sub_100005EF4();
  v2 = v1;
  v102 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v102);
  v97 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v100 = v9 - v8;
  v10 = sub_10026D814(&qword_1006A47F0, &qword_10057F840);
  v11 = sub_100008070(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  sub_100007BAC();
  v81 = v15 - v16;
  sub_100006838();
  __chkstk_darwin(v17, v18);
  v20 = v78 - v19;
  v21 = sub_10026D814(&qword_1006A47F8, &qword_10057F848);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8, v23);
  sub_100007BAC();
  v92 = v24 - v25;
  sub_100006838();
  __chkstk_darwin(v26, v27);
  sub_10001863C();
  __chkstk_darwin(v28, v29);
  v90 = v78 - v30;
  v31 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  sub_100007BAC();
  v89 = v34 - v35;
  sub_100006838();
  __chkstk_darwin(v36, v37);
  v91 = v78 - v38;
  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_10000CE3C(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  v39 = v20;
  v40 = 0;
  v109[1] = Set.init(minimumCapacity:)();
  v41 = *v2;
  v43 = v2[2];
  v42 = v2[3];
  v103 = v2[1];
  v104 = v43;
  v80 = v42;
  v44 = v2[5];
  v83 = v2[4];
  v86 = v44;
  v46 = v41 + 64;
  v45 = *(v41 + 64);
  v88 = v2[6];
  v85 = v2[7];
  v96 = v41;
  v47 = *(v41 + 32);
  sub_10002F628();
  v50 = v49 & v48;
  v51 = v2[9];
  v87 = v2[8];
  v79 = v51;
  v78[1] = v52;
  v82 = v2[10];
  v53 = (63 - v52) >> 6;
  v93 = v97 + 16;
  v99 = (v97 + 32);
  v84 = (v97 + 8);
  v94 = v39;
  v95 = v10;
  v98 = v0;
  v101 = v46;
  v105 = v53;
  while (v50)
  {
    v54 = v40;
LABEL_8:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = v55 | (v54 << 6);
    v58 = v96;
    v57 = v97;
    v59 = v100;
    v60 = v102;
    (*(v97 + 16))(v100, *(v96 + 48) + *(v97 + 72) * v56, v102);
    v61 = *(v58 + 56) + 8 * v56;
    LODWORD(v56) = *v61;
    v62 = *(v61 + 4);
    v63 = *(v61 + 5);
    LOBYTE(v58) = *(v61 + 6);
    v106 = *(v61 + 7);
    v107 = v63;
    v10 = v95;
    v64 = v98 + *(v95 + 48);
    v65 = *(v57 + 32);
    v0 = v98;
    v65(v98, v59, v60);
    v66 = 0;
    *v64 = v56;
    *(v64 + 4) = v62;
    v67 = v106;
    *(v64 + 5) = v107;
    *(v64 + 6) = v58;
    *(v64 + 7) = v67;
    v39 = v94;
    v46 = v101;
LABEL_9:
    sub_10000AF74(v0, v66, 1, v10);
    if (sub_100015468(v0, 1, v10) == 1)
    {
      sub_100009A04(v0, &qword_1006A47F8, &qword_10057F848);
      v68 = 1;
      v69 = v90;
      goto LABEL_15;
    }

    sub_10000F32C();
    sub_1002982D0();
    if (v103(v39))
    {
      v69 = v90;
      sub_1002982D0();
      v68 = 0;
LABEL_15:
      v70 = 1;
      sub_10000AF74(v69, v68, 1, v10);
      v71 = v92;
      sub_1002982D0();
      if (sub_100015468(v71, 1, v10) != 1)
      {
        v72 = v81;
        sub_1002982D0();
        v80(v72);
        sub_100009A04(v72, &qword_1006A47F0, &qword_10057F840);
        v70 = 0;
      }

      v73 = v70;
      v74 = v102;
      sub_10000AF74(v91, v73, 1, v102);
      v75 = v89;
      sub_1002982D0();
      if (sub_100015468(v75, 1, v74) == 1)
      {
        goto LABEL_23;
      }

      v76 = v100;
      (*v99)(v100, v75, v74);
      v86(&v108, v76);
      (*v84)(v76, v74);
      v77 = v108;
      v109[0] = v108;
      if (v85(v109))
      {
        v109[0] = v77;
        v79(&v108, v109);

        sub_100396394(v109, v108);
      }

      else
      {
      }

      v0 = v98;
      v46 = v101;
      v53 = v105;
    }

    else
    {
      sub_100009A04(v39, &qword_1006A47F0, &qword_10057F840);
      v53 = v105;
    }
  }

  while (1)
  {
    v54 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v54 >= v53)
    {
      v50 = 0;
      v66 = 1;
      goto LABEL_9;
    }

    v50 = *(v46 + 8 * v54);
    ++v40;
    if (v50)
    {
      v40 = v54;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  sub_100022DDC();

  sub_100005EDC();
}

void sub_1002F2CF4(uint64_t a1, char *a2, char a3, void *a4)
{
  v4 = a4;
  v6 = *(a1 + 16);
  v75 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
  v7 = (a1 + 40);
  if (!v6)
  {
LABEL_34:

    return;
  }

  while (1)
  {
    v73 = v7;
    v74 = v6;
    v8 = *(v7 - 1);
    v9 = *v7;
    swift_beginAccess();
    v10 = *&a2[v75];
    v11 = *(v10 + 16);

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = sub_100005208();
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);
      swift_endAccess();
      if ((a3 & 1) == 0)
      {
        v72 = v14;

        v15 = *v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v4;
        v76 = *v4;
        v18 = v8;
        v19 = sub_100005208();
        v21 = v17[2];
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_39;
        }

        v24 = v19;
        v25 = v20;
        sub_10026D814(&unk_1006A4770, &qword_10057F7F8);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
        {
          v26 = sub_100005208();
          if ((v25 & 1) != (v27 & 1))
          {
            goto LABEL_40;
          }

          v24 = v26;
        }

        v28 = v76;
        if ((v25 & 1) == 0)
        {
          v76[(v24 >> 6) + 8] |= 1 << v24;
          v68 = (v76[6] + 16 * v24);
          *v68 = v18;
          v68[1] = v9;
          *(v76[7] + 8 * v24) = v72;
          v69 = v76[2];
          v50 = __OFADD__(v69, 1);
          v67 = v69 + 1;
          if (v50)
          {
            __break(1u);
            goto LABEL_34;
          }

LABEL_28:
          v28[2] = v67;

          goto LABEL_29;
        }

        v29 = v76[7];
        v30 = *(v29 + 8 * v24);
        *(v29 + 8 * v24) = v72;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_11:
      swift_endAccess();
    }

    v31 = sub_1000061C4(v8, v9);
    swift_beginAccess();
    v32 = v31;

    v33 = *&a2[v75];
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = a2;
    v78 = *&a2[v75];
    v36 = v8;
    v37 = sub_100005208();
    v39 = v78[2];
    v40 = (v38 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    v43 = v38;
    sub_10026D814(&unk_1006A4770, &qword_10057F7F8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v34, v41))
    {
      v44 = sub_100005208();
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_40;
      }

      v42 = v44;
    }

    a2 = v35;
    v4 = a4;
    if (v43)
    {
      v46 = v78[7];
      v47 = *(v46 + 8 * v42);
      *(v46 + 8 * v42) = v32;
    }

    else
    {
      v78[(v42 >> 6) + 8] |= 1 << v42;
      v48 = (v78[6] + 16 * v42);
      *v48 = v36;
      v48[1] = v9;
      *(v78[7] + 8 * v42) = v32;
      v49 = v78[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_37;
      }

      v78[2] = v51;
    }

    *&a2[v75] = v78;
    swift_endAccess();
    v52 = *a4;
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v54 = *a4;
    v77 = *a4;
    v55 = sub_100005208();
    v57 = v56;
    v58 = *(v54 + 16);
    v59 = (v56 & 1) == 0;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_36;
    }

    v60 = v55;
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v53, v58 + v59))
    {
      v61 = sub_100005208();
      if ((v57 & 1) != (v62 & 1))
      {
        goto LABEL_40;
      }

      v60 = v61;
    }

    v28 = v77;
    if ((v57 & 1) == 0)
    {
      v77[(v60 >> 6) + 8] |= 1 << v60;
      v65 = (v77[6] + 16 * v60);
      *v65 = v36;
      v65[1] = v9;
      *(v77[7] + 8 * v60) = v32;
      v66 = v77[2];
      v50 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v50)
      {
        goto LABEL_38;
      }

      goto LABEL_28;
    }

    v63 = v77[7];
    v64 = *(v63 + 8 * v60);
    *(v63 + 8 * v60) = v32;
LABEL_26:

LABEL_29:
    *v4 = v28;

    v7 = v73 + 2;
    v6 = v74 - 1;
    if (v74 == 1)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002F3134(uint64_t a1, void *a2)
{
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
  v27 = v3;
  v28 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = *(*(a1 + 48) + 4 * v10);
      v30 = *(*(a1 + 56) + 8 * v10);
      v12 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a2;
      v14 = sub_100007558(v11);
      v16 = v31[2];
      v17 = (v15 & 1) == 0;
      v18 = v16 + v17;
      if (__OFADD__(v16, v17))
      {
        break;
      }

      v19 = v14;
      v20 = v15;
      sub_10026D814(&qword_1006A4768, &qword_10057F7F0);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18))
      {
        v21 = sub_100007558(v11);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v19 = v21;
      }

      if (v20)
      {
        *(v31[7] + 8 * v19) = v30;
      }

      else
      {
        v31[(v19 >> 6) + 8] |= 1 << v19;
        *(v31[6] + 4 * v19) = v11;
        *(v31[7] + 8 * v19) = v30;
        v23 = v31[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v31[2] = v25;
      }

      v6 &= v6 - 1;
      v3 = v27;
      a2 = v28;
      *v28 = v31;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t ProcessState.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1002F3348@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ProcessState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_1002F337C(void *a1)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v1 initWithBundleIdentifiers:isa queue:a1];

  return v4;
}

char *sub_1002F340C()
{
  sub_100010060();
  v3 = objc_allocWithZone(v1);
  return sub_1002F344C(v2, v0);
}

char *sub_1002F344C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = sub_100007FEC(v5);
  v43 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6, v10);
  sub_100007FDC();
  v11 = type metadata accessor for DispatchQoS();
  v12 = sub_100007FEC(v11);
  v41 = v13;
  v42 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  *&v2[OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier] = _swiftEmptyDictionarySingleton;
  v20 = &v2[OBJC_IVAR___CSDProcessObserver_processStateChanged];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v2[OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = objc_allocWithZone(BKSApplicationStateMonitor);
  result = sub_1002F5B2C(_swiftEmptyArrayStorage, 0);
  if (result)
  {
    *&v2[OBJC_IVAR___CSDProcessObserver_applicationMonitor] = result;
    *&v2[OBJC_IVAR___CSDProcessObserver_queue] = a2;
    v50.receiver = v2;
    v50.super_class = ObjectType;
    v39 = a2;
    v24 = objc_msgSendSuper2(&v50, "init");
    v25 = *&v24[OBJC_IVAR___CSDProcessObserver_applicationMonitor];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = sub_100005430;
    v49 = v26;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100005438;
    v47 = &unk_100625A80;
    v27 = _Block_copy(&aBlock);
    v28 = v24;
    v29 = v25;

    [v29 setHandler:v27];
    _Block_release(v27);

    v30 = *&v28[OBJC_IVAR___CSDProcessObserver_queue];
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    *(v31 + 24) = a1;
    v48 = sub_1002F6EBC;
    v49 = v31;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_100004CEC;
    v47 = &unk_100625AD0;
    v32 = _Block_copy(&aBlock);
    v33 = v30;
    static DispatchQoS.unspecified.getter();
    sub_1000159F0();
    sub_1000053E8(v34, v35);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_1000076A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    v36 = *(v43 + 8);
    v37 = sub_100007764();
    v38(v37);
    (*(v41 + 8))(v19, v42);

    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F3838(uint64_t a1, uint64_t a2)
{
  sub_1002F3874(a2, 0);
}

void *sub_1002F3874(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&v2[OBJC_IVAR___CSDProcessObserver_queue];
  *v10 = v11;
  (*(v6 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v5);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    result = &_swiftEmptyDictionarySingleton;
    v28 = &_swiftEmptyDictionarySingleton;
    if (*(a1 + 16))
    {
      v14 = OBJC_IVAR___CSDProcessObserver_processInfoByBundleIdentifier;
      swift_beginAccess();
      v15 = *&v2[v14];

      v17 = sub_1002F1ECC(v16);

      v19 = sub_1002F3B08(v18, v17);
      sub_1002F5440(v17, v19);
      v21 = v20;

      if (v21)
      {
      }

      else
      {
        v22 = *&v2[OBJC_IVAR___CSDProcessObserver_applicationMonitor];
        sub_1002F62FC();
        sub_1002F3C28(v23);

        v24.super.isa = Array._bridgeToObjectiveC()().super.isa;

        v25 = *(v19 + 16);

        if (v25)
        {
          v26 = BKSApplicationStateAll;
        }

        else
        {
          v26 = 0;
        }

        [v22 updateInterestedBundleIDs:v24.super.isa states:v26];
      }

      sub_1002F2CF4(a1, v2, a2 & 1, &v28);
      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F3B08(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return a2;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_10001E84C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F3BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 32;
    do
    {
      v11 = sub_10000C1EC(a1, *(a1 + v10), a3, a4, a5, a6, a7, a8, v21);
      sub_1003963DC(v11, v12, v13, v14, v15, v16, v17, v18, v22, v23);
      v10 += 8;
      --v9;
    }

    while (v9);

    return v23;
  }

  else
  {
    v19 = a2;
  }

  return v19;
}

void *sub_1002F3C28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = sub_100006900();
    sub_10039A320(v4, v5, v6);
    v3 = v14;
    v7 = (v1 + 40);
    do
    {
      v11 = *(v7 - 1);
      v12 = *v7;

      swift_dynamicCast();
      v14 = v3;
      v9 = v3[2];
      v8 = v3[3];
      if (v9 >= v8 >> 1)
      {
        sub_10039A320((v8 > 1), v9 + 1, 1);
        v3 = v14;
      }

      v3[2] = v9 + 1;
      sub_10003EBF0(&v13, &v3[4 * v9 + 4]);
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1002F3D14()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  sub_100008B20();
  sub_10039A3C0();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v3 = sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
      sub_100015F5C(v3);
      if (v4)
      {
        sub_10003DB64();
        sub_10039A3C0();
      }

      sub_100008D74();
      sub_1000083C0();
      v6 = *(v5 + 64);
      __chkstk_darwin(v7, v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_10039BE6C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v18);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002F3E70()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  sub_100008B20();
  sub_10039A400();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v3 = sub_100006AF0(0, &qword_1006A4850, CNFavoritesEntry_ptr);
      sub_100015F5C(v3);
      if (v4)
      {
        sub_10003DB64();
        sub_10039A400();
      }

      sub_100008D74();
      sub_1000083C0();
      v6 = *(v5 + 64);
      __chkstk_darwin(v7, v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_1002F705C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v18);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002F3FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10002767C();
  a24 = v27;
  a25 = v28;
  sub_100006B84();
  if (v29)
  {
    sub_10000E9D4();
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v26)
  {
LABEL_12:
    sub_100006660();
    return;
  }

  a13 = _swiftEmptyArrayStorage;
  sub_10039A320(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = a13;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v25 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      sub_10026D814(&qword_1006A5BE0, &qword_100580880);
      swift_dynamicCast();
      a13 = v31;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        sub_10039A320((v33 > 1), v34 + 1, 1);
        v31 = a13;
      }

      ++v30;
      v31[2] = v34 + 1;
      sub_10003EBF0(&a10, &v31[4 * v34 + 4]);
    }

    while (v26 != v30);
    goto LABEL_12;
  }

  __break(1u);
}

void sub_1002F4104()
{
  sub_100005EF4();
  sub_100006B84();
  if (v2)
  {
    sub_10000E9D4();
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    sub_100035CC0();
  }

  if (!v0)
  {
LABEL_13:
    sub_100027E90();
    sub_100005EDC();
    return;
  }

  sub_100008B20();
  sub_10039A460();
  if ((v0 & 0x8000000000000000) == 0)
  {
    sub_10000BA24();
    do
    {
      if (v1)
      {
        sub_100007764();
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        sub_10000FBE4();
      }

      v3 = sub_100006AF0(0, &qword_1006A4848, VMVoicemail_ptr);
      sub_100015F5C(v3);
      if (v4)
      {
        sub_10003DB64();
        sub_10039A460();
      }

      sub_100008D74();
      sub_1000083C0();
      v6 = *(v5 + 64);
      __chkstk_darwin(v7, v8);
      sub_100007FDC();
      v10 = sub_10000FD94(v9);
      v11(v10);
      v12 = sub_100011308();
      sub_1002F705C(v12, v13, v14, v15, v16);
      sub_100009B7C(&v18);
      sub_100035DDC();
    }

    while (!v17);
    goto LABEL_13;
  }

  __break(1u);
}

void *sub_1002F4260(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = sub_100006900();
    sub_10039A4C0(v4, v5, v6);
    v3 = v15;
    v7 = (v1 + 40);
    do
    {
      v12 = *(v7 - 1);
      v13 = *v7;

      sub_10026D814(&qword_1006ABFF0, &qword_100588080);
      swift_dynamicCast();
      v8 = v14;
      v10 = v15[2];
      v9 = v15[3];
      if (v10 >= v9 >> 1)
      {
        sub_10039A4C0((v9 > 1), v10 + 1, 1);
        v8 = v14;
      }

      v15[2] = v10 + 1;
      *&v15[2 * v10 + 4] = v8;
      v7 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

unint64_t sub_1002F4368()
{
  result = qword_1006A4700;
  if (!qword_1006A4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A4700);
  }

  return result;
}

uint64_t sub_1002F43CC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v17 = *(v3 + OBJC_IVAR___CSDProcessObserver_queue);
  *(v15 - v14) = v17;
  (*(v10 + 104))(v15 - v14, enum case for DispatchPredicate.onQueue(_:), v7);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v16, v7);
  if (v17)
  {
    v20 = &_swiftEmptyDictionarySingleton;
    v24 = &_swiftEmptyDictionarySingleton;
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    sub_1002F3874(inited, a3 & 1);
    swift_setDeallocating();
    sub_1002F5C78();
    v22 = sub_100005E74(a1);

    if (v22)
    {
      sub_1002F3134(v22, &v24);

      v20 = v24;
    }

    if (!v20[2])
    {
      sub_10026D814(&qword_1006A4758, &qword_10057F7E8);
      v23 = swift_initStackObject();
      sub_100021EF0(v23, xmmword_10057D690);
      Dictionary.init(dictionaryLiteral:)();
      sub_10000C3F0();
      return v22;
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F46B8()
{
  v1 = *(v0 + OBJC_IVAR___CSDProcessObserver_processStateChanged);
  v2 = *(v0 + OBJC_IVAR___CSDProcessObserver_processStateChanged + 8);
  v3 = sub_100006B30();
  sub_1000115CC(v3);
  return sub_100006B30();
}

uint64_t sub_1002F484C()
{
  v1 = *(v0 + OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID);
  v2 = *(v0 + OBJC_IVAR___CSDProcessObserver_processStateChangedWithBundleID + 8);
  v3 = sub_100006B30();
  sub_1000115CC(v3);
  return sub_100006B30();
}

uint64_t sub_1002F4884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v7(v8, v10, a3, a4);
}

void sub_1002F49B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  (*(a5 + 16))(a5, v8, a3, a4);
}

void *sub_1002F4A30()
{
  sub_100010060();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR___CSDProcessObserver_queue);
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v12, v3);
  if (v13)
  {
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10057D690;
    *(inited + 32) = v2;
    *(inited + 40) = v0;

    sub_1002F3874(inited, 0);
    swift_setDeallocating();
    sub_1002F5C78();
    v17 = sub_100005E74(v2);

    if (v17)
    {
      return sub_100274078(v17);
    }

    else
    {
      return &off_1006205D8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002F4D7C(uint64_t a1, uint64_t a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_1002F4E04(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);

  Dictionary._bridgeToObjectiveC()();
  sub_10000C3F0();

  return v9;
}

void sub_1002F4EA0()
{
  sub_100005EF4();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v34 = v9;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v38 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v38);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v37 = *&v0[OBJC_IVAR___CSDProcessObserver_queue];
  v26 = swift_allocObject();
  v26[2] = v6;
  v26[3] = v4;
  v26[4] = v0;
  v26[5] = v34;
  v26[6] = v8;
  v39[4] = v35;
  v39[5] = v26;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_100004CEC;
  v39[3] = v36;
  v27 = _Block_copy(v39);

  v28 = v0;

  static DispatchQoS.unspecified.getter();
  sub_1000159F0();
  sub_1000053E8(v29, v30);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_1000076A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);
  v31 = *(v13 + 8);
  v32 = sub_100007764();
  v33(v32);
  (*(v19 + 8))(v25, v38);

  sub_100005EDC();
}

uint64_t sub_1002F5108()
{
  sub_100010060();
  sub_1002F43CC(v1, v2, v3);
  v0();
}

uint64_t sub_1002F532C(void *a1)
{
  v2 = sub_1002C89F0(a1);
  if (v3)
  {
    sub_1002F43CC(v2, v3, 0);
    sub_10000C3F0();
    return v1;
  }

  else
  {
    sub_10026D814(&qword_1006A4758, &qword_10057F7E8);
    inited = swift_initStackObject();
    sub_100021EF0(inited, xmmword_10057D690);
    return Dictionary.init(dictionaryLiteral:)();
  }
}

void sub_1002F5440(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    sub_10002F730();
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & v5;
    v9 = (v6 + 63) >> 6;
    if ((v7 & v5) != 0)
    {
      while (2)
      {
        sub_10000FA08();
LABEL_13:
        v15 = (*(v10 + 48) + 16 * (v11 | (v3 << 6)));
        v17 = *v15;
        v16 = v15[1];
        v18 = *(a2 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v20 = ~(-1 << *(a2 + 32));
        do
        {
          v21 = v19 & v20;
          if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {

            return;
          }

          v22 = (*(a2 + 48) + 16 * v21);
          if (*v22 == v17 && v22[1] == v16)
          {
            break;
          }

          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v19 = v21 + 1;
        }

        while ((v24 & 1) == 0);

        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      ++v12;
      if (*(a1 + 8 * v3))
      {
        sub_100007C8C();
        v8 = v14 & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1002F55DC()
{
  sub_100005EF4();
  sub_100007710();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007BAC();
  v11 = (v9 - v10);
  __chkstk_darwin(v12, v13);
  v52 = &v41 - v14;
  sub_100006838();
  __chkstk_darwin(v15, v16);
  v18 = &v41 - v17;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    sub_100005EDC();
  }

  else
  {
    v19 = 0;
    v20 = *(v1 + 56);
    v42 = v1 + 56;
    v21 = 1 << *(v1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v48 = v5 + 32;
    v50 = v0 + 56;
    v51 = v5 + 16;
    v25 = (v5 + 8);
    v43 = v24;
    v44 = &v41 - v17;
    v45 = v5;
    v46 = v1;
    if (v23)
    {
      while (2)
      {
        v26 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
LABEL_13:
        v30 = *(v1 + 48);
        v49 = *(v5 + 72);
        v31 = *(v5 + 16);
        v31(v18, v30 + v49 * (v26 | (v19 << 6)), v2);
        (*(v5 + 32))(v52, v18, v2);
        v32 = *(v0 + 40);
        sub_10000A758();
        sub_1000053E8(&qword_1006A3BE0, v33);
        sub_10000790C();
        v34 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v35 = v0;
        v36 = ~(-1 << *(v0 + 32));
        do
        {
          v37 = v34 & v36;
          if (((*(v50 + (((v34 & v36) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v36)) & 1) == 0)
          {
            (*v25)(v52, v2);
            goto LABEL_20;
          }

          v31(v11, *(v35 + 48) + v37 * v49, v2);
          sub_10000A758();
          sub_1000053E8(&qword_1006A2620, v38);
          v39 = dispatch thunk of static Equatable.== infix(_:_:)();
          v40 = *v25;
          (*v25)(v11, v2);
          v34 = v37 + 1;
        }

        while ((v39 & 1) == 0);
        v40(v52, v2);
        v0 = v35;
        v5 = v45;
        v1 = v46;
        v24 = v43;
        v18 = v44;
        v23 = v47;
        if (v47)
        {
          continue;
        }

        break;
      }
    }

    v27 = v19;
    while (1)
    {
      v19 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        goto LABEL_20;
      }

      ++v27;
      if (*(v42 + 8 * v19))
      {
        sub_100007C8C();
        v47 = v29 & v28;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F591C()
{
  sub_100010060();
  v5 = v4 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if (!v5)
    {
      if (v1 == v0)
      {
LABEL_27:
        v8 = 1;
      }

      else
      {
        if (*(v1 + 16) == *(v0 + 16))
        {
          v10 = 1 << *(v1 + 32);
          if (v10 < 64)
          {
            v11 = ~(-1 << v10);
          }

          else
          {
            v11 = -1;
          }

          v12 = v11 & *(v1 + 56);
          v7 = sub_100006AF0(0, v2, v3);
          v13 = 0;
          v14 = (v10 + 63) >> 6;
          v26 = v14;
          if (v12)
          {
            while (2)
            {
              v15 = __clz(__rbit64(v12));
              v27 = (v12 - 1) & v12;
LABEL_22:
              v19 = *(v0 + 40);
              v20 = *(*(v1 + 48) + 8 * (v15 | (v13 << 6)));
              v21 = NSObject._rawHashValue(seed:)(v19);
              v22 = ~(-1 << *(v0 + 32));
              do
              {
                v23 = v21 & v22;
                if (((*(v0 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
                {

                  goto LABEL_29;
                }

                v24 = *(*(v0 + 48) + 8 * v23);
                v25 = static NSObject.== infix(_:_:)();

                v21 = v23 + 1;
              }

              while ((v25 & 1) == 0);

              v14 = v26;
              v12 = v27;
              if (v27)
              {
                continue;
              }

              break;
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

            if (v13 >= v14)
            {
              goto LABEL_27;
            }

            ++v16;
            if (*(v1 + 56 + 8 * v13))
            {
              sub_100007C8C();
              v27 = v18 & v17;
              goto LABEL_22;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v7);
        }

LABEL_29:
        v8 = 0;
      }

      return v8 & 1;
    }

    sub_10000E9D4();
LABEL_8:
    sub_1002F5BA4();
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = sub_10000E9D4();

  return __CocoaSet.isEqual(to:)(v7);
}

id sub_1002F5B2C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  v5 = [v2 initWithBundleIDs:v4.super.isa states:a2];

  return v5;
}

void sub_1002F5BA4()
{
  sub_100007710();
  v2 = *(v1 + 16);
  if (v2 == __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = *(v0 + 56);
    v5 = *(v0 + 32);
    sub_100007990();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_10000FA08();
LABEL_10:
      v15 = *(*(v0 + 48) + 8 * (v11 | (v3 << 6)));
      v16 = __CocoaSet.contains(_:)();

      if ((v16 & 1) == 0)
      {
        return;
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return;
      }

      ++v12;
      if (*(v0 + 56 + 8 * v3))
      {
        sub_100007C8C();
        v8 = v14 & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002F5C78()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1000081EC();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1002F5CC8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_1000081EC();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_1002F5D44(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  sub_10026D814(a1, a2);
  swift_arrayDestroy();
  v4 = sub_1000081EC();

  return _swift_deallocClassInstance(v4, v5, v6);
}

void *sub_1002F5D8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v3 = sub_100008B38();
  v4 = j__malloc_size(v3);
  sub_100049FD4((v4 - 32) / 16);
  return v3;
}

void *sub_1002F5E68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(&qword_1006A4780, &qword_10057F800);
  v3 = sub_100008B38();
  v4 = j__malloc_size(v3);
  sub_100049FD4((v4 - 32) / 4);
  return v3;
}

void *sub_1002F5F50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v4 = sub_100008B38();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1002F5FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(a3, a4);
  v7 = a5(0);
  sub_100005EB4(v7);
  v9 = *(v8 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v9)
  {
    if ((result - v11) != 0x8000000000000000 || v9 != -1)
    {
      sub_100049FD4((result - v11) / v9);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1002F611C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10026D814(a3, a4);
  v9 = sub_10026D814(a5, a6);
  sub_100005EB4(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      sub_100049FD4((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10002767C();
  a25 = v26;
  a26 = v28;
  v29 = *(v27 + 16);
  if (v29)
  {
    v30 = v27;
    v31 = sub_1002F611C(*(v27 + 16), 0, &qword_1006A4840, &qword_10057F868, &qword_1006A2C18, &unk_10057D990);
    v32 = *(sub_10026D814(&qword_1006A2C18, &unk_10057D990) - 8);
    sub_1002F644C(&a10, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v29, v30);
    sub_10000D610();
    sub_10000F32C();
    sub_100022DDC();
    if (&qword_1006A2C18 != v29)
    {
      __break(1u);
    }
  }

  sub_100006660();
}

void sub_1002F62FC()
{
  sub_10002767C();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_1002F5D8C(*(v1 + 16), 0);
    sub_1002F66FC();
    sub_10000D610();
    sub_10000F32C();
    sub_100022DDC();
    if (v0 != v2)
    {
      __break(1u);
    }
  }

  sub_100006660();
}

void sub_1002F6384(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_10026D814(&qword_1006A4760, &unk_10057EA60);
      v7 = sub_100008B38();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1002F644C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_10026D814(&qword_1006A2C18, &unk_10057D990);
  v38 = *(v40 - 8);
  v8 = *(v38 + 64);
  v10 = __chkstk_darwin(v40, v9);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v10, v13);
  v39 = &v34 - v15;
  v16 = a4 + 64;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a4 + 64);
  v41 = a2;
  if (!a2)
  {
    v21 = 0;
    a3 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v21;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = v17;
    v36 = a1;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v17) >> 6;
    v37 = a3;
    while (v20 < a3)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_24;
      }

      if (!v19)
      {
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= v22)
          {
            v19 = 0;
            a3 = v20;
            v17 = v35;
            a1 = v36;
            goto LABEL_20;
          }

          v19 = *(v16 + 8 * v24);
          ++v21;
          if (v19)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v24 = v21;
LABEL_15:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v25 | (v24 << 6);
      v27 = a4;
      v28 = *(a4 + 48);
      v29 = *(a4 + 56);
      v30 = *(v28 + 8 * v26);
      v31 = v29 + *(*(type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0) - 8) + 72) * v26;
      v32 = *(v40 + 48);
      sub_1002F7004();
      *v12 = v30;
      sub_1002982D0();
      v33 = v41;
      result = sub_1002982D0();
      a3 = v37;
      if (v23 == v37)
      {
        v21 = v24;
        v17 = v35;
        a1 = v36;
        a4 = v27;
        goto LABEL_20;
      }

      v41 = v33 + *(v38 + 72);
      v20 = v23;
      v21 = v24;
      a4 = v27;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F66FC()
{
  sub_100005EF4();
  sub_1002F710C();
  v6 = *(v2 + 56);
  v5 = v2 + 56;
  v7 = *(v5 - 24);
  sub_100015164();
  if (!v9)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v11);
    sub_100005EDC();
    return;
  }

  v10 = v8;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v12 < v10)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v3)
      {
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v4)
          {
            goto LABEL_17;
          }

          v3 = *(v5 + 8 * v14);
          ++v11;
          if (v3)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v14 = v11;
LABEL_12:
      v15 = (*(v0 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v3)))));
      v16 = v15[1];
      v3 &= v3 - 1;
      *v1 = *v15;
      v1[1] = v16;
      if (v13 == v10)
      {

        v11 = v14;
        goto LABEL_17;
      }

      v1 += 2;

      v12 = v13;
      v11 = v14;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1002F6800(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
    result = Set.Iterator.init(_cocoa:)();
    v4 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
    v11 = v27;
  }

  else
  {
    v10 = 0;
    v12 = -1 << *(a4 + 32);
    v8 = a4 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a4 + 56);
  }

  v21 = v7;
  if (!a2)
  {
    v15 = 0;
LABEL_28:
    *v21 = v4;
    v21[1] = v8;
    v21[2] = v9;
    v21[3] = v10;
    v21[4] = v11;
    return v15;
  }

  if (!a3)
  {
    v15 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v20 = v9;
    v16 = (v9 + 64) >> 6;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v4 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_26;
        }

        sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
        swift_dynamicCast();
        result = v22;
        if (!v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v18 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v18 >= v16)
            {
              v11 = 0;
              goto LABEL_26;
            }

            v11 = *(v8 + 8 * v18);
            ++v10;
            if (v11)
            {
              v10 = v18;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        sub_10000FA08();
        result = *(*(v4 + 48) + ((v10 << 9) | (8 * v19)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v15;
      if (v17 == a3)
      {
        v15 = a3;
LABEL_26:
        v9 = v20;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6A0C()
{
  sub_100005EF4();
  sub_1002F710C();
  v5 = *(v1 + 64);
  v4 = v1 + 64;
  v6 = *(v4 - 32);
  sub_100015164();
  if (!v8)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v10);
    sub_100005EDC();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v13);
          ++v10;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v10;
LABEL_12:
      sub_10000D73C();
      v16 = *(v15 + v14);
      *v0 = v16;
      if (v12 == v9)
      {
        v18 = v16;
        v10 = v13;
        goto LABEL_17;
      }

      ++v0;
      v17 = v16;
      v11 = v12;
      v10 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void *sub_1002F6AF4(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 8) | (4 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002F6BDC()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for PendingMembershipInfo();
  v9 = sub_100005EB4(v8);
  v37 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007BAC();
  v16 = v14 - v15;
  __chkstk_darwin(v17, v18);
  v20 = &v35 - v19;
  v38 = v1;
  v22 = *(v1 + 64);
  v21 = v1 + 64;
  v23 = *(v21 - 32);
  sub_10002F628();
  v27 = v26 & v25;
  if (!v5)
  {
    sub_10000D31C();
LABEL_18:
    *v7 = v38;
    v7[1] = v21;
    v7[2] = ~v24;
    v7[3] = v29;
    v7[4] = v27;
    sub_100005EDC();
    return;
  }

  if (!v3)
  {
    v29 = 0;
    goto LABEL_18;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v35 = v24;
    v36 = v7;
    v28 = 0;
    v29 = 0;
    v30 = (63 - v24) >> 6;
    while (1)
    {
      if (v28 >= v3)
      {
        goto LABEL_21;
      }

      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_22;
      }

      if (!v27)
      {
        while (1)
        {
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            v27 = 0;
            goto LABEL_16;
          }

          v27 = *(v21 + 8 * v32);
          ++v29;
          if (v27)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v32 = v29;
LABEL_12:
      v27 &= v27 - 1;
      v33 = *(v38 + 56);
      v34 = *(v37 + 72);
      sub_1002F7004();
      sub_1002F6F18(v16, v20);
      sub_1002F6F18(v20, v5);
      if (v31 == v3)
      {
        break;
      }

      v5 += v34;
      v28 = v31;
      v29 = v32;
    }

    v29 = v32;
LABEL_16:
    v24 = v35;
    v7 = v36;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1002F6DCC()
{
  sub_100005EF4();
  sub_1002F710C();
  v5 = *(v1 + 64);
  v4 = v1 + 64;
  v6 = *(v4 - 32);
  sub_100015164();
  if (!v8)
  {
    sub_10000D31C();
LABEL_17:
    sub_100035A38(v10);
    sub_100005EDC();
    return;
  }

  v9 = v7;
  if (!v7)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    sub_10000E6AC();
    while (v11 < v9)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v3)
          {
            goto LABEL_17;
          }

          v2 = *(v4 + 8 * v13);
          ++v10;
          if (v2)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v13 = v10;
LABEL_12:
      sub_10000D73C();
      *v0 = *(v15 + v14);
      if (v12 == v9)
      {

        v10 = v13;
        goto LABEL_17;
      }

      ++v0;

      v11 = v12;
      v10 = v13;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002F6F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingMembershipInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F6F84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002F6FD4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return sub_1002F5108();
}

uint64_t sub_1002F7004()
{
  sub_100007710();
  v2 = v1(0);
  sub_100008070(v2);
  v4 = *(v3 + 16);
  v5 = sub_100006B30();
  v6(v5);
  return v0;
}

uint64_t sub_1002F705C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1002A1D5C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10002F0C8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1002F7124(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return sub_1000080A0();
}

uint64_t sub_1002F713C()
{
  v1 = *(v0 + 48);
  v9 = *(v0 + 32);
  v2 = [v1 queue];
  *(v0 + 56) = v2;
  v3 = sub_1000102DC(&qword_1006A4578, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for ActivitySessionCreationRequestResult();
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  *v6 = v0;
  v6[1] = sub_1002F72B8;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 16, v2, v3, 0, 0, &unk_10057F8E8, v4, v7);
}

uint64_t sub_1002F72B8()
{
  sub_10000C698();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *(v5 + 56);
  v8 = *v1;
  sub_100008060();
  *v9 = v8;

  if (v0)
  {
    v10 = sub_1002F73D8;
  }

  else
  {
    v11 = *(v3 + 64);

    v10 = sub_100287CB4;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1002F73D8()
{
  sub_100006810();
  v1 = v0[8];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002F7438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v8 = swift_task_alloc();
  v5[4] = v8;
  *v8 = v5;
  v8[1] = sub_1002F74E8;

  return sub_1002F7640(a3, a4);
}

uint64_t sub_1002F74E8()
{
  sub_10000C698();
  v3 = v2;
  sub_100005F18();
  v5 = v4;
  sub_10000E51C();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  sub_100008060();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (v0)
  {
    v11 = sub_1002F761C;
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = sub_1002F75F8;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1002F7640(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_10026D814(&qword_1006A3C70, &unk_10057EA80) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v11 = type metadata accessor for DispatchPredicate();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1002F7824, 0, 0);
}

uint64_t sub_1002F7824()
{
  v130 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  *v1 = [*(v0 + 32) queue];
  (*(v2 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1006A0830 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100015184();
LABEL_3:
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Logger();
  v11 = sub_10000AF9C(v10, qword_1006A4870);
  v120 = *(v7 + 16);
  v122 = v7 + 16;
  v120(v5, v9, v6);
  v12 = v8;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 120);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  if (v15)
  {
    v19 = *(v0 + 16);
    v20 = sub_100005E84();
    v126 = v11;
    v21 = sub_10000777C();
    v22 = swift_slowAlloc();
    v129 = v22;
    *v20 = 136315650;
    *(v20 + 4) = sub_10000F638("vitySessionContainerProvider", v22, v120, v122, v124, v126);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v19;
    *v21 = v19;
    *(v20 + 22) = 2080;
    sub_10000A114();
    sub_1002F9E08(v23, v24);
    v25 = v19;
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = sub_100035A50();
    v30(v29);
    v31 = sub_10002741C(v26, v28, &v129);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: %@ containerID: %s", v20, 0x20u);
    sub_1000099A4(v21, &unk_1006A2630, &qword_10057CB40);
    v11 = v125;
    sub_100005F40();
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    v32 = sub_100035A50();
    v33(v32);
  }

  v34 = *(v0 + 88);
  v35 = *(v0 + 24);
  v36 = [*(v0 + 32) _conversationsByUUID];
  sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
  sub_10000A114();
  sub_1002F9E08(v37, v38);
  v39 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = sub_100025C58(v35, v39);

  if (!v40)
  {
    type metadata accessor for ActivitySessionCreationRequestResult();
    v51 = sub_1002F16C4();
    goto LABEL_13;
  }

  if ([*(v0 + 16) isPlaceholderActivity])
  {
    v41 = *(v0 + 16);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = *(v0 + 16);
      v45 = swift_slowAlloc();
      v46 = sub_10000777C();
      v47 = sub_100005E84();
      v129 = v47;
      *v45 = 136315394;
      *(v45 + 4) = sub_10000F638("vitySessionContainerProvider", v119, v120, v122, v124, v125);
      *(v45 + 12) = 2112;
      *(v45 + 14) = v44;
      *v46 = v44;
      v48 = v44;
      _os_log_impl(&_mh_execute_header, v42, v43, "%s: Given activity is a placeholder: %@", v45, 0x16u);
      sub_1000099A4(v46, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v47);
      sub_100005F40();
      sub_100005F40();
    }

    v49 = [v40 createStagedActivitySessionForActivity:*(v0 + 16)];
    if (v49)
    {
      v50 = v49;
      type metadata accessor for ActivitySessionCreationRequestResult();
      v51 = sub_1002F1618(v50);

LABEL_13:
      sub_100011320();

      v52 = *(v0 + 8);

      return v52(v51);
    }

    sub_1002FA028();
    sub_100008248();
    v60 = xmmword_10057F880;
    goto LABEL_24;
  }

  v54 = [objc_opt_self() sharedInstance];
  if (!v54)
  {
    sub_10000AF74(*(v0 + 48), 1, 1, *(v0 + 56));
LABEL_23:
    sub_1000099A4(*(v0 + 48), &qword_1006A3C70, &unk_10057EA80);
    sub_1002FA028();
    sub_100008248();
    v60 = xmmword_10057F870;
LABEL_24:
    *v59 = v60;
    swift_willThrow();

    goto LABEL_25;
  }

  v55 = v54;
  v56 = [v54 currentServerTimeDate];

  if (v56)
  {
    v57 = *(v0 + 40);
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = 0;
  }

  else
  {
    v58 = 1;
  }

  v62 = *(v0 + 48);
  v61 = *(v0 + 56);
  v63 = *(v0 + 40);
  sub_10000AF74(v63, v58, 1, v61);
  sub_1002FA07C(v63, v62);
  if (sub_100015468(v62, 1, v61) == 1)
  {
    goto LABEL_23;
  }

  v65 = *(v0 + 16);
  (*(*(v0 + 64) + 32))(*(v0 + 80), *(v0 + 48), *(v0 + 56));
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v65 setTimestamp:isa];

  v67 = "com.apple.callservicesd.shareplay-session-server-terminated";
  v127 = v11;
  if ([v65 isStaticActivity] && (v68 = sub_1002F9E50(*(v0 + 16)), v69))
  {
    v70 = v68;
    v71 = v69;
    v72 = *(v0 + 16);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = *(v0 + 16);
      v76 = swift_slowAlloc();
      v77 = sub_10000777C();
      v78 = sub_100005E84();
      v129 = v78;
      *v76 = 136315394;
      *(v76 + 4) = sub_10000F638("vitySessionContainerProvider", v119, v120, v122, v124, v127);
      *(v76 + 12) = 2112;
      *(v76 + 14) = v75;
      *v77 = v75;
      v79 = v75;
      _os_log_impl(&_mh_execute_header, v73, v74, "%s: Given activity is static: %@", v76, 0x16u);
      sub_1000099A4(v77, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100009B7C(v78);
      sub_100005F40();
      sub_100005F40();
    }

    v81 = *(v0 + 96);
    v80 = *(v0 + 104);
    v82 = *(v0 + 88);
    v83 = objc_opt_self();
    v84 = String._bridgeToObjectiveC()();
    v85 = [v40 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v86 = UUID._bridgeToObjectiveC()().super.isa;
    v124(v80, v82);
    v87 = [v83 tu_UUIDv5ForString:v84 namespaceUUID:v86];

    if (!v87)
    {
      v115 = *(v0 + 80);
      v116 = *(v0 + 56);
      v117 = *(v0 + 64);
      sub_1002FA028();
      sub_100008248();
      *v118 = v70;
      v118[1] = v71;
      swift_willThrow();

      (*(v117 + 8))(v115, v116);
      goto LABEL_25;
    }

    v88 = *(v0 + 112);

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = "com.apple.callservicesd.shareplay-session-server-terminated";
  }

  else
  {
    v89 = *(v0 + 112);
    UUID.init()();
  }

  v90 = *(v0 + 104);
  v91 = *(v0 + 80);
  v93 = *(v0 + 64);
  v92 = *(v0 + 72);
  v94 = *(v0 + 56);
  v95 = *(v0 + 16);
  v120(v90, *(v0 + 112), *(v0 + 88));
  (*(v93 + 16))(v92, v91, v94);
  objc_allocWithZone(TUConversationActivitySession);
  v96 = sub_1002F9CFC(v95, v90, 1, v92, 1);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = sub_10000777C();
    v101 = sub_100005E84();
    v129 = v101;
    *v99 = *(v67 + 461);
    *(v99 + 4) = sub_10000F638("vitySessionContainerProvider", v119, v120, v122, v124, v127);
    *(v99 + 12) = 2112;
    *(v99 + 14) = v96;
    *v100 = v96;
    v102 = v96;
    _os_log_impl(&_mh_execute_header, v97, v98, "%s: Creating CPActivitySession for %@", v99, 0x16u);
    sub_1000099A4(v100, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100009B7C(v101);
    sub_100005F40();
    sub_100005F40();
  }

  v103 = *(v0 + 24);
  v104 = *(v0 + 32);
  v105 = UUID._bridgeToObjectiveC()().super.isa;
  v106 = [v104 createCPActivitySessionForActivitySession:v96 onConversationWithUUID:v105];

  v107 = *(v0 + 112);
  v108 = *(v0 + 88);
  v128 = *(v0 + 96);
  v109 = *(v0 + 80);
  v111 = *(v0 + 56);
  v110 = *(v0 + 64);
  if (v106)
  {
    v121 = *(v0 + 88);
    type metadata accessor for ActivitySessionCreationRequestResult();
    v123 = v111;
    v112 = v109;
    v113 = dispatch thunk of ActivitySession.tuConversationActivitySession.getter();
    v51 = sub_1002F1618(v113);

    v124(v107, v121);
    (*(v110 + 8))(v112, v123);
    goto LABEL_13;
  }

  sub_1002FA028();
  sub_100008248();
  *v114 = 0;
  v114[1] = 0;
  swift_willThrow();

  v124(v107, v108);
  (*(v110 + 8))(v109, v111);
LABEL_25:
  sub_100011320();

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1002F8484(void *a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = type metadata accessor for UUID();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v4[6] = v11;
  v4[7] = _Block_copy(a3);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a1;
  a4;
  v13 = swift_task_alloc();
  v4[8] = v13;
  *v13 = v4;
  v13[1] = sub_1002F85C8;

  return sub_1002F7124(v12, v11);
}

uint64_t sub_1002F85C8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  sub_100008060();
  *v7 = v6;
  v8 = v5[8];
  v9 = *v2;
  *v7 = *v2;

  v10 = v5[7];
  v11 = v5[3];
  v12 = v5[2];
  (*(v5[5] + 8))(v5[6], v5[4]);

  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v10)[2](v10, 0, v13);

    _Block_release(v10);
  }

  else
  {
    (v10)[2](v10, a1, 0);
    _Block_release(v10);
  }

  v14 = v6[6];

  v15 = v9[1];

  return v15();
}

uint64_t sub_1002F87E4()
{
  sub_10000C698();
  v1 = v0[3];
  v2 = [v1 queue];
  v0[4] = v2;
  v3 = sub_1000102DC(&qword_1006A4578, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  v5 = _ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lFTu[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = sub_10026D814(&qword_1006A4888, &qword_10057F8B8);
  *v6 = v0;
  v6[1] = sub_1002F8934;

  return __ss26withTaskExecutorPreference_9isolation9operationxSch_pSg_ScA_pSgYixyYaq_YKXEtYaq_YKs5ErrorR_r0_lF(v0 + 2, v2, v3, 0, 0, &unk_10057F8B0, v4, v7);
}

uint64_t sub_1002F8934()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  sub_10000E51C();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_100008060();
  *v8 = v7;

  if (!v0)
  {
    v10 = *(v3 + 40);

    return _swift_task_switch(sub_1002F8A3C, 0, 0);
  }

  return result;
}

uint64_t sub_1002F8A54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1002F8A74, 0, 0);
}

uint64_t sub_1002F8A74()
{
  sub_1000066BC();
  v12 = v0;
  v1 = *(v0 + 24);
  sub_1002F8BD4();
  v3 = v2;
  if (qword_1006A0830 != -1)
  {
    sub_100015184();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006A4870);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = sub_100005E84();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10002741C(0xD000000000000021, 0x8000000100568260, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s containers", v7, 0xCu);
    sub_100009B7C(v8);
    sub_100005F40();
    sub_100005F40();
  }

  **(v0 + 16) = v3;
  v9 = *(v0 + 8);

  return v9();
}

void sub_1002F8BD4()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = [v0 queue];
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    v8 = [v0 _conversationsByUUID];
    type metadata accessor for UUID();
    sub_100006AF0(0, &unk_1006A3AA0, off_100616600);
    sub_1002F9E08(&qword_1006A3BE0, &type metadata accessor for UUID);
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
    v28 = _swiftEmptyArrayStorage;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = v10;
LABEL_10:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = *(*(v9 + 56) + ((v15 << 9) | (8 * v16)));
      if (([v17 isFromStorage] & 1) != 0 || objc_msgSend(v17, "state") != 3)
      {

        v10 = v15;
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v18 = v28[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 = v15;
      }
    }

    while (1)
    {
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v15 >= v14)
      {
        break;
      }

      v13 = *(v9 + 64 + 8 * v15);
      ++v10;
      if (v13)
      {
        goto LABEL_10;
      }
    }

    v19 = v28;
    v20 = sub_10000B6F4(v28);
    if (v20)
    {
      v21 = v20;
      v28 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v21 < 0)
      {
        goto LABEL_26;
      }

      sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
      v22 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v19 + 8 * v22 + 32);
        }

        v24 = v23;
        ++v22;
        sub_1002F94BC(v23);

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v28[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v21 != v22);

      v26 = v28;
    }

    else
    {

      v26 = _swiftEmptyArrayStorage;
    }

    sub_1002F20C0(v26);
  }

  else
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1002F8FF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1002F9098;

  return sub_1002F87D0();
}

uint64_t sub_1002F9098()
{
  sub_1000066BC();
  sub_100005F18();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100008060();
  *v6 = v5;

  sub_100006AF0(0, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  sub_1002F93D0(&qword_1006A4800, &unk_1006A6310, TUConversationActivitySessionContainer_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  (v3)[2](v3, isa);

  _Block_release(v3);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_1002F9248()
{
  sub_10000C698();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100008A48(v3);
  *v4 = v5;
  v4[1] = sub_1002F92EC;

  return sub_1002F8FF0(v1, v2);
}

uint64_t sub_1002F92EC()
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

uint64_t sub_1002F93D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006AF0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002F9414()
{
  sub_10000C698();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100008A48(v4);
  *v5 = v6;
  v5[1] = sub_1002F92EC;

  return sub_1002F8A54(v2, v3);
}

uint64_t sub_1002F94BC(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(TUConversationActivitySessionContainer) init];
  [v8 setCapabilities:11];
  v9 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = *(v3 + 8);
  v11(v7, v2);
  [v8 setUUID:isa];

  v12 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = UUID._bridgeToObjectiveC()().super.isa;
  v11(v7, v2);
  [v8 setGroupUUID:v13];

  [v8 setState:{objc_msgSend(a1, "state")}];
  v14 = [a1 activitySessions];
  type metadata accessor for ActivitySession();
  sub_1002F9E08(&qword_1006A4890, &type metadata accessor for ActivitySession);
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = sub_10001E550(v15);
  if (v16)
  {
    v17 = v16;
    v60 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578(v15);
    v57 = result;
    v58 = v19;
    v59 = v20 & 1;
    if ((v17 & 0x8000000000000000) == 0)
    {
      v51 = a1;
      v52 = v8;
      v21 = 0;
      if (v15 < 0)
      {
        v22 = v15;
      }

      else
      {
        v22 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v54 = v15 + 56;
      v55 = v22;
      v53 = v15 + 64;
      while (!__OFADD__(v21++, 1))
      {
        v25 = v57;
        v24 = v58;
        v26 = v59;
        sub_1002E94F0();
        v28 = v27;
        dispatch thunk of ActivitySession.tuConversationActivitySession.getter();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v29 = v60[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((v15 & 0xC000000000000001) != 0)
        {
          if (!v26)
          {
            goto LABEL_37;
          }

          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&qword_1006A4898, &qword_10057F8C0);
          v34 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v34(v56, 0);
        }

        else
        {
          if (v26)
          {
            goto LABEL_38;
          }

          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

          v30 = 1 << *(v15 + 32);
          if (v25 >= v30)
          {
            goto LABEL_33;
          }

          v31 = v25 >> 6;
          v32 = *(v54 + 8 * (v25 >> 6));
          if (((v32 >> v25) & 1) == 0)
          {
            goto LABEL_34;
          }

          if (*(v15 + 36) != v24)
          {
            goto LABEL_35;
          }

          v33 = v32 & (-2 << (v25 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v25 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v35 = v31 << 6;
            v36 = v31 + 1;
            v37 = (v53 + 8 * v31);
            while (v36 < (v30 + 63) >> 6)
            {
              v39 = *v37++;
              v38 = v39;
              v35 += 64;
              ++v36;
              if (v39)
              {
                result = sub_100010000(v25, v24, 0);
                v30 = __clz(__rbit64(v38)) + v35;
                goto LABEL_25;
              }
            }

            result = sub_100010000(v25, v24, 0);
          }

LABEL_25:
          v57 = v30;
          v58 = v24;
          v59 = 0;
        }

        if (v21 == v17)
        {

          sub_100010000(v57, v58, v59);
          v40 = v60;
          a1 = v51;
          v8 = v52;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

    v40 = _swiftEmptyArrayStorage;
LABEL_29:
    sub_1002F2198(v40);
    sub_100006AF0(0, &unk_1006A4820, TUConversationActivitySession_ptr);
    sub_1002F93D0(&unk_1006A2600, &unk_1006A4820, TUConversationActivitySession_ptr);
    v41 = Set._bridgeToObjectiveC()().super.isa;

    [v8 setActivitySessions:v41];

    v42 = [a1 localMember];
    [v8 setLocalMember:v42];

    v43 = [a1 initiator];
    [v8 setInitiator:v43];

    [v8 setLocalParticipantIdentifier:{objc_msgSend(a1, "localParticipantIdentifier")}];
    v44 = [a1 virtualParticipants];
    sub_100006AF0(0, &qword_1006A7BF0, TUConversationVirtualParticipant_ptr);
    sub_1002F93D0(&qword_1006A48A0, &qword_1006A7BF0, TUConversationVirtualParticipant_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = Set._bridgeToObjectiveC()().super.isa;

    [v8 setVirtualParticipants:v45];

    v46 = objc_allocWithZone(TUConversationVirtualParticipantConfig);
    v47 = sub_1002FFE6C(1, 1, 1, 1, 1, 0, 0, 0, 0);
    [v8 setVirtualParticipantConfig:v47];

    v48 = [objc_allocWithZone(TUConversationUnreliableMessengerConfig) initWithEstablishChannelMaxAttempts:1 establishChannelRetryIntervalMillis:1 egressMessagePayloadMaxSizeBytes:1 channelStreamMaxQueueSize:1 channelStreamMaxTries:1 channelStreamRetryIntervalMillis:1 seqNumBufferSize:1];
    [v8 setUnreliableMessengerConfig:v48];

    if (sub_10000B6F4(_swiftEmptyArrayStorage))
    {
      sub_10039B1BC(_swiftEmptyArrayStorage);
    }

    sub_100006AF0(0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    sub_1002F93D0(&unk_1006A25F0, &qword_1006A7BE0, TUConversationParticipant_ptr);
    v49 = Set._bridgeToObjectiveC()().super.isa;

    [v8 setActiveRemoteParticipants:v49];

    return v8;
  }

  return result;
}

uint64_t sub_1002F9C7C()
{
  v0 = type metadata accessor for Logger();
  sub_1002861B8(v0, qword_1006A4870);
  sub_10000AF9C(v0, qword_1006A4870);
  return Logger.init(subsystem:category:)();
}

id sub_1002F9CFC(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = Date._bridgeToObjectiveC()().super.isa;
  v14 = [v6 initWithActivity:a1 uuid:isa locallyInitiated:a3 & 1 timestamp:v13 isFirstJoin:a5 & 1];

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a4, v15);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v14;
}

uint64_t sub_1002F9E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002F9E50(void *a1)
{
  v1 = [a1 staticIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002F9EB4()
{
  sub_1000066BC();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_100008A48(v5);
  *v6 = v7;
  v6[1] = sub_1002FA1E0;

  return sub_1002F8484(v1, v2, v4, v3);
}

uint64_t sub_1002F9F6C()
{
  sub_1000066BC();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_100008A48(v8);
  *v9 = v10;
  v9[1] = sub_1002FA1E0;

  return sub_1002F7438(v4, v5, v6, v7, v2);
}

unint64_t sub_1002FA028()
{
  result = qword_1006A48A8;
  if (!qword_1006A48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A48A8);
  }

  return result;
}

uint64_t sub_1002FA07C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FA0EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002FA104(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002FA160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1002FA1B0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1002FA204(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(TUContactsDataProviderFetchRequest) initWithHandle:a1];
  v4 = [a2 executeFetchRequest:v3];

  v5 = [v4 localizedName];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1002FA2AC()
{
  v0 = [objc_opt_self() soundWithAlertType:1];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002FBDBC(v1, v2, v0);
  qword_1006A48B0 = v0;
}

uint64_t sub_1002FA310(uint64_t a1, uint64_t a2)
{
  sub_10031E958(0xD000000000000023, 0x80000001005683A0);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = String.init(format:_:)();

  return v5;
}

uint64_t sub_1002FA3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10031E958(0xD000000000000025, 0x8000000100568370);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D6A0;
  *(v8 + 56) = &type metadata for String;
  v9 = sub_100009D88();
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v9;
  *(v8 + 64) = v9;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v10 = String.init(format:_:)();

  return v10;
}

uint64_t sub_1002FA4D0()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A4908, &unk_10057FA10);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_notificationType))
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

uint64_t sub_1002FA5D0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000051F8(v6);
}

void sub_1002FA630(uint64_t a1)
{
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA6D0);
  sub_100009AB0(a1, v19);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = v17;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v20;
    v10 = v21;
    sub_100009B14(v19, v20);
    v11 = *(v10 + 16);
    v12 = v4;
    v13 = v11(v9, v10);
    v15 = v14;
    sub_100009B7C(v19);
    v16 = sub_10002741C(v13, v15, &v18);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "%@ does not handle response with identifier %s", v7, 0x16u);
    sub_100009A5C(v8, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v17);
  }

  else
  {

    sub_100009B7C(v19);
  }
}

uint64_t type metadata accessor for FaceTimeNotificationProvider()
{
  result = qword_1006A48F8;
  if (!qword_1006A48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FA9C0()
{
  sub_1002FAAA0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1002FAAA0()
{
  if (!qword_1006ABFC0)
  {
    type metadata accessor for BadgeCountCategory();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006ABFC0);
    }
  }
}

void sub_1002FAB1C(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v63 - v11;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000AF9C(v13, qword_1006BA6D0);
  v15 = *(v4 + 16);
  v15(v12, a1, v3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v64 = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v63 = a1;
    v21 = v20;
    v68[0] = v20;
    *v19 = 136315138;
    v15(v9, v12, v3);
    v22 = String.init<A>(reflecting:)();
    v24 = v23;
    (*(v4 + 8))(v12, v3);
    v25 = sub_10002741C(v22, v24, v68);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Handling notification %s", v19, 0xCu);
    sub_100009B7C(v21);
  }

  else
  {

    (*(v4 + 8))(v12, v3);
  }

  v26 = Notification.userInfo.getter();
  if (!v26)
  {
    v69 = 0u;
    v70 = 0u;
    goto LABEL_19;
  }

  v27 = v26;
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v28;
  AnyHashable.init<A>(_:)();
  sub_100006600(v68, v27);

  sub_100006780(v68);
  if (!*(&v70 + 1))
  {
LABEL_19:
    sub_100009A5C(&v69, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_20;
  }

  type metadata accessor for IDSPendingChat(0);
  if (swift_dynamicCast())
  {
    v29 = v68[0];
    v30 = *(v68[0] + OBJC_IVAR___CSDIDSPendingChat_handle);
    v31 = objc_allocWithZone(FTNUServiceNames);
    v32 = v30;
    v33 = [v31 init];
    if (v29[OBJC_IVAR___CSDIDSPendingChat_isVideo])
    {
      v34 = &selRef_faceTimeVideoServiceName;
    }

    else
    {
      v34 = &selRef_faceTimeAudioServiceName;
    }

    v35 = *v34;
    v64 = v33;
    v36 = [v33 v35];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v41 = *(v65 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_localizeHandleName);
    v40 = *(v65 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_localizeHandleName + 8);
    v42 = *(v65 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_contactsDataProvider);

    v43 = v41(v32, v42);
    v45 = v44;

    v46 = [objc_allocWithZone(UNMutableNotificationContent) init];
    sub_1002FA310(v43, v45);
    v47 = String._bridgeToObjectiveC()();

    [v46 setTitle:v47];

    sub_1002FA3E0(v43, v45, v37, v39);

    v48 = String._bridgeToObjectiveC()();

    [v46 setBody:v48];

    v49 = String._bridgeToObjectiveC()();
    [v46 setCategoryIdentifier:v49];

    if (qword_1006A0838 != -1)
    {
      swift_once();
    }

    [v46 setSound:qword_1006A48B0];
    v50 = [v32 value];
    if (!v50)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = String._bridgeToObjectiveC()();
    }

    [v46 setThreadIdentifier:v50];

    v51 = v65;
    v52 = sub_1002FA4D0();
    sub_1004554A0(v52, v53, v46);
    sub_1002FBE20();
    v54 = UUID.uuidString.getter();
    v56 = v55;
    v57 = v46;
    v58 = sub_10044F628(v54, v56, v57, 0);
    [v58 setDestinations:15];
    v59 = *(v51 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add);
    if (v59)
    {
      v60 = *(v51 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_add + 8);

      v59(v58);

      sub_1000051F8(v59);
      v57 = v58;
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_20:
  v57 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v57, v61, "Did not find expected pending chat information", v62, 2u);
  }

LABEL_22:
}

uint64_t sub_1002FB228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v38[1] = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = sub_100007FEC(v6);
  v43 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v15 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v15);
  v41 = v17;
  v42 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = type metadata accessor for Notification();
  v25 = sub_100007FEC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25, v30);
  v31 = v38 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = *&v4[OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_queue];
  (*(v27 + 16))(v31, a1, v24);
  v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v33 = (v29 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v27 + 32))(v34 + v32, v31, v24);
  *(v34 + v33) = v4;
  aBlock[4] = v39;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = v40;
  v35 = _Block_copy(aBlock);
  v36 = v4;
  static DispatchQoS.unspecified.getter();
  v44 = _swiftEmptyArrayStorage;
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);
  (*(v43 + 8))(v14, v6);
  (*(v41 + 8))(v23, v42);
}

void sub_1002FB530(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v55 = &v50 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v50 - v20;
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000AF9C(v22, qword_1006BA6D0);
  v24 = *(v13 + 16);
  v54 = a1;
  v24(v21, a1, v12);
  v53 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v52 = v8;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v50 = v7;
    v29 = v28;
    v30 = swift_slowAlloc();
    v59[0] = v30;
    *v29 = 136315138;
    v24(v18, v21, v12);
    v31 = String.init<A>(reflecting:)();
    v33 = v32;
    (*(v13 + 8))(v21, v12);
    v34 = sub_10002741C(v31, v33, v59);

    *(v29 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "Handling notification %s", v29, 0xCu);
    sub_100009B7C(v30);

    v7 = v50;
  }

  else
  {

    (*(v13 + 8))(v21, v12);
  }

  v35 = Notification.userInfo.getter();
  v36 = v56;
  if (!v35)
  {
    v60 = 0u;
    v61 = 0u;
    goto LABEL_12;
  }

  v37 = v35;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v38;
  AnyHashable.init<A>(_:)();
  sub_100006600(v59, v37);

  sub_100006780(v59);
  if (!*(&v61 + 1))
  {
LABEL_12:
    sub_100009A5C(&v60, &unk_1006A2D10, &unk_10057D940);
    v39 = v55;
    sub_10000AF74(v55, 1, 1, v7);
    goto LABEL_13;
  }

  v39 = v55;
  v40 = swift_dynamicCast();
  sub_10000AF74(v39, v40 ^ 1u, 1, v7);
  if (sub_100015468(v39, 1, v7) != 1)
  {
    v41 = v52;
    (*(v52 + 32))(v36, v39, v7);
    v42 = v51 + OBJC_IVAR____TtC13callservicesd28FaceTimeNotificationProvider_removeNotification;
    swift_beginAccess();
    v43 = *v42;
    if (*v42)
    {
      v44 = v7;
      v45 = *(v42 + 8);
      swift_endAccess();

      v46 = UUID.uuidString.getter();
      v43(v46);

      sub_1000051F8(v43);
      (*(v41 + 8))(v36, v44);
    }

    else
    {
      (*(v41 + 8))(v36, v7);
      swift_endAccess();
    }

    return;
  }

LABEL_13:
  sub_100009A5C(v39, &unk_1006A3DD0, &unk_10057C9D0);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "Did not find expected pending chat uuid information", v49, 2u);
  }
}

uint64_t sub_1002FBAF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for Notification();
  v11 = sub_100007FEC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11, v16);
  sub_100007FDC();
  v19 = v18 - v17;
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = a1;
  sub_1002FB228(v19, a4, a5, a6);

  return (*(v13 + 8))(v19, v10);
}

uint64_t sub_1002FBBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006AB160, &qword_100584570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FBC74()
{
  v1 = type metadata accessor for Notification();
  sub_1000080D0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1002FBD1C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for Notification() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

void sub_1002FBDBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAlertTopic:v4];
}

unint64_t sub_1002FBE20()
{
  result = qword_1006A7AE0;
  if (!qword_1006A7AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7AE0);
  }

  return result;
}

uint64_t sub_1002FBE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(a2 + 24);
  sub_1000115CC(a3);
  v9(sub_1002FC014, v8, ObjectType, a2);
}

uint64_t sub_1002FBF24(char a1, uint64_t (*a2)(void))
{
  v4 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10057D690;
  v6 = sub_100009D88();
  v7 = 544501614;
  if (a1)
  {
    v7 = 0;
  }

  v8 = 0xE400000000000000;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = v6;
  if (a1)
  {
    v8 = 0xE000000000000000;
  }

  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (a2)
  {
    return a2(a1 & 1);
  }

  return result;
}

id sub_1002FC028()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithDestinationID:v1];

  return v2;
}

void sub_1002FC0A8(void *a1, SEL *a2)
{
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = sub_10000777C();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found Available advertisement %@ Manager", v8, 0xCu);
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  NearbyAdvertisement.handle.getter();
  if (v11)
  {
    v12 = NearbyAdvertisement.contactID.getter();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      v16 = sub_1002FC028();
      v17 = NearbyAdvertisement.identifier.getter();
      v19 = v18;
      objc_allocWithZone(TUConversationActivityAdvertisement);
      v20 = v16;
      v21 = sub_1002FDEF0(v17, v19, v14, v15, v20);
      sub_10000F658();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong *a2];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return;
    }
  }

  oslog = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v23, "Cannot find handle or contactID from NearbyAdvertisement", v24, 2u);
    sub_100005F40();
  }
}

uint64_t NearbySessionManager.NearbySessionObserver.delegate.getter()
{
  sub_10000F658();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t NearbySessionManager.NearbySessionObserver.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbySessionManager.NearbySessionObserver.delegate.modify(void *a1))(uint64_t a1)
{
  v3 = sub_1002FDF84(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 24);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1002FC468;
}

void sub_1002FC468(uint64_t a1)
{
  sub_10001817C(a1);
  *(v3 + 24) = v4;
  swift_unknownObjectWeakAssign();
  if (v2)
  {
    v5 = v1[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

uint64_t NearbySessionManager.NearbySessionObserver.didDiscoverNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = sub_10000777C();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    sub_100005FCC(&_mh_execute_header, v11, v12, "Found Available advertisement %@ NearbySessionObserver");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  sub_10000F658();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v5, ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NearbySessionManager.NearbySessionObserver.didLoseNearbyAdvertisement(advertisement:)(void *a1)
{
  v2 = v1;
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v4 = type metadata accessor for Logger();
  sub_10000AF9C(v4, qword_1006BA568);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005274();
    v9 = sub_10000777C();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    sub_100005FCC(&_mh_execute_header, v11, v12, "Lost advertisement %@ NearbySessionObserver");
    sub_100009A04(v9, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40();
    sub_100005F40();
  }

  sub_10000F658();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(v5, ObjectType, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002FC84C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t NearbySessionManager.NearbySessionObserver.__deallocating_deinit()
{
  sub_100060500(v0 + 16);
  sub_100007C2C();

  return _swift_deallocClassInstance(v1, v2, v3);
}

uint64_t NearbySessionManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbySessionManager.delegate.modify(void *a1))(uint64_t a1)
{
  v3 = sub_1002FDF84(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR___CSDNearbySessionManager_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1002FCAB4;
}

void sub_1002FCAB4(uint64_t a1)
{
  sub_10001817C(a1);
  swift_unknownObjectWeakAssign();
  if (v2)
  {
    v3 = v1[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v1);
}

char *NearbySessionManager.init(advertisementID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v44 = (v9 - v8);
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = sub_100007FEC(v40);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  v18 = v17 - v16;
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  v20 = sub_100008070(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  sub_100007FDC();
  v24 = type metadata accessor for DispatchQoS();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  sub_100007FDC();
  v39 = OBJC_IVAR___CSDNearbySessionManager_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  sub_100017FF8(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v18, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  *&v1[v39] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  swift_unknownObjectWeakInit();
  type metadata accessor for NearbyInvitationsController();
  *&v1[OBJC_IVAR___CSDNearbySessionManager_controller] = static NearbyInvitationsController.shared.getter();
  v27 = *(v41 + 16);
  v27(&v1[OBJC_IVAR___CSDNearbySessionManager_id], a1, v42);
  type metadata accessor for NearbySessionManager.NearbySessionObserver();
  sub_100007C2C();
  v28 = swift_allocObject();
  *(v28 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CSDNearbySessionManager_observer] = v28;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for NearbySessionManager();
  v29 = objc_msgSendSuper2(&v45, "init");
  v30 = OBJC_IVAR___CSDNearbySessionManager_observer;
  v31 = *&v29[OBJC_IVAR___CSDNearbySessionManager_observer];
  swift_beginAccess();
  *(v31 + 24) = &protocol witness table for NearbySessionManager;
  swift_unknownObjectWeakAssign();
  v32 = OBJC_IVAR___CSDNearbySessionManager_controller;
  v33 = *&v29[OBJC_IVAR___CSDNearbySessionManager_controller];
  v34 = *&v29[v30];
  v35 = v29;

  NearbyInvitationsController.addObserver(_:)();

  v36 = *&v29[v32];
  v27(v44, &v35[OBJC_IVAR___CSDNearbySessionManager_id], v42);

  NearbyInvitationsController.scanNearbyInvitations(scannerID:response:)();

  v37 = *(v41 + 8);
  v37(a1, v42);
  v37(v44, v42);
  return v35;
}

uint64_t sub_1002FD050(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v5, v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v15 = *(v7 + 16);
  v15(&v38 - v16, a1, v4);
  v17 = objc_allocWithZone(type metadata accessor for NearbyAdvertisementRequest());
  v18 = NearbyAdvertisementRequest.init(identifier:invitation:route:activityType:)();
  if (qword_1006A0AF8 != -1)
  {
    sub_1000083DC();
  }

  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA568);
  v15(v13, a1, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100005274();
    v23 = swift_slowAlloc();
    v39 = v18;
    aBlock[0] = v23;
    v24 = v23;
    *v22 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v7 + 8))(v13, v4);
    v28 = sub_10002741C(v25, v27, aBlock);

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting to advertise invitations w id %s", v22, 0xCu);
    sub_100009B7C(v24);
    v18 = v39;
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    (*(v7 + 8))(v13, v4);
  }

  v29 = *&v2[OBJC_IVAR___CSDNearbySessionManager_queue];
  sub_100007C2C();
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  *(v30 + 24) = v18;
  sub_100007C2C();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1002FE0E8;
  *(v31 + 24) = v30;
  aBlock[4] = sub_1000200A4;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002007C;
  aBlock[3] = &unk_100625F30;
  v32 = _Block_copy(aBlock);
  v33 = v2;
  v34 = v18;

  dispatch_sync(v29, v32);
  _Block_release(v32);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    v36 = *&v33[OBJC_IVAR___CSDNearbySessionManager_controller];
    *(swift_allocObject() + 16) = v33;
    v37 = v33;
    NearbyInvitationsController.assertAdvertisementPublic(_:rotations:response:)();
  }

  return result;
}

void sub_1002FD4E8(uint64_t a1, uint64_t (*a2)(void), const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA568);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v6 = a2();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = sub_100005274();
      v8 = sub_10000777C();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 0xCu);
      sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {
    }
  }
}

void sub_1002FD680(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = a1;
  v5 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v10, v13);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v52 - v17;
  if (qword_1006A0AF8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000AF9C(v19, qword_1006BA568);
  v21 = a3;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v56 = v20;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v53 = v18;
    v27 = v11;
    v28 = a2;
    v29 = v26;
    v57 = v26;
    *v25 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = sub_10002741C(v30, v31, &v57);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Making advertisement public %s", v25, 0xCu);
    sub_100009B7C(v29);
    a2 = v28;
    v11 = v27;
    v18 = v53;
  }

  sub_1002A5F90(v54, v9);
  v33 = sub_100015468(v9, 1, v10);
  v34 = v55;
  if (v33 == 1)
  {
    sub_100009A04(v9, &unk_1006A3DD0, &unk_10057C9D0);
    if (!a2)
    {
      return;
    }

    goto LABEL_12;
  }

  (*(v11 + 32))(v18, v9, v10);
  (*(v11 + 16))(v34, v18, v10);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57 = v38;
    *v37 = 136315138;
    sub_100017FF8(&qword_1006A25E0, &type metadata accessor for UUID);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v18;
    v40 = v11;
    v41 = a2;
    v43 = v42;
    v44 = *(v40 + 8);
    v44(v34, v10);
    v45 = sub_10002741C(v39, v43, &v57);
    a2 = v41;

    *(v37 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "Advertisement public assertion id = %s", v37, 0xCu);
    sub_100009B7C(v38);

    v44(v53, v10);
  }

  else
  {

    v46 = *(v11 + 8);
    v46(v34, v10);
    v46(v18, v10);
  }

  if (a2)
  {
LABEL_12:
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v51;
      *v50 = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Error making advertisement public: %@", v49, 0xCu);
      sub_100009A04(v50, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
    }
  }
}

id NearbySessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbySessionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002FDEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [v5 initWithSessionID:v7 contactID:v8 handle:a5];

  return v9;
}

void *sub_1002FDF84(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t type metadata accessor for NearbySessionManager()
{
  result = qword_1006A4960;
  if (!qword_1006A4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FE030()
{
  result = type metadata accessor for UUID();
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

id sub_1002FE184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_pendingIncomingMessagesQueue] = _swiftEmptyDictionarySingleton;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_queue] = a1;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_serverBag] = a2;
  *&v3[OBJC_IVAR___CSDPendingConversationMessageHandler_featureFlags] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PendingConversationMessageHandler();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1002FE24C(void *a1, void (*a2)(void, void), void *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v153 = a5;
  v154 = a6;
  v160 = a4;
  v157 = a2;
  v158 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = sub_100007FEC(v8);
  v149 = v10;
  v150 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9, v13);
  sub_100007FDC();
  sub_10000A770(v15 - v14);
  v148 = type metadata accessor for DispatchQoS();
  v16 = sub_100007FEC(v148);
  v146 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16, v20);
  sub_100007FDC();
  sub_10000A770(v22 - v21);
  v144 = type metadata accessor for DispatchTimeInterval();
  v23 = sub_100007FEC(v144);
  v143 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23, v27);
  sub_100007FDC();
  sub_10000A770(v29 - v28);
  v156 = type metadata accessor for DispatchTime();
  v30 = sub_100007FEC(v156);
  v159 = v31;
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v30, v34);
  v151 = &v131 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v155 = &v131 - v38;
  v39 = type metadata accessor for UUID();
  v40 = sub_100007FEC(v39);
  v161 = v41;
  v43 = *(v42 + 64);
  v45 = __chkstk_darwin(v40, v44);
  v152 = &v131 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45, v46);
  v49 = &v131 - v48;
  __chkstk_darwin(v47, v50);
  v52 = &v131 - v51;
  v53 = type metadata accessor for DispatchPredicate();
  v54 = sub_100007FEC(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  __chkstk_darwin(v54, v59);
  sub_100007FDC();
  v62 = (v61 - v60);
  v162 = v6;
  v63 = *&v6[OBJC_IVAR___CSDPendingConversationMessageHandler_queue];
  *(v61 - v60) = v63;
  (*(v56 + 104))(v61 - v60, enum case for DispatchPredicate.onQueue(_:), v53);
  v64 = v63;
  LOBYTE(v63) = _dispatchPreconditionTest(_:)();
  (*(v56 + 8))(v62, v53);
  if ((v63 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v65 = [a1 conversationGroupUUID];
  if (!v65)
  {
    v80 = sub_100004778();
    static os_log_type_t.fault.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v66 = v65;
  v62 = a1;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v68 = v161 + 32;
  v67 = *(v161 + 32);
  v67(v52, v49, v39);
  v53 = *&v162[OBJC_IVAR___CSDPendingConversationMessageHandler_serverBag];
  v69 = [v53 messageRetryMaxAttempts];
  v70 = v160;
  if ((v160 & 0x8000000000000000) == 0 && v69 <= v160)
  {
    v71 = sub_100004778();
    static os_log_type_t.default.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_10057D6A0;
    *(v72 + 56) = &type metadata for String;
    v73 = sub_100009D88();
    v74 = v158;
    *(v72 + 32) = v157;
    *(v72 + 40) = v74;
    *(v72 + 96) = &type metadata for Int;
    *(v72 + 104) = &protocol witness table for Int;
    *(v72 + 64) = v73;
    *(v72 + 72) = v70;

    os_log(_:dso:log:type:_:)();

    v75 = objc_opt_self();
    v76 = [v75 sharedInstance];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v76 messageRetryFailedForConversationGroupUUID:isa];

    if ([a1 type] == 4)
    {
      v78 = [v75 sharedInstance];
      v79 = UUID._bridgeToObjectiveC()().super.isa;
      [v78 avcBlobRequestMessageRetryFailedForConversationGroupUUID:v79];
    }

    (*(v161 + 8))(v52, v39);
    return;
  }

  v81 = [*&v162[OBJC_IVAR___CSDPendingConversationMessageHandler_featureFlags] nearbyFaceTimeEnabled];
  a1 = v158;
  v141 = v39;
  v140 = v62;
  v139 = v64;
  v138 = v68;
  v137 = v67;
  if (!v81)
  {
    goto LABEL_16;
  }

  if (qword_1006A0840 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    if ((sub_100422794([v62 type], qword_1006BA2E8) & 1) == 0)
    {
LABEL_16:
      v136 = 0;
      v135 = 0;
      v95 = v157;
      goto LABEL_21;
    }

    v82 = swift_allocObject();
    v83 = v154;
    *(v82 + 2) = v153;
    *(v82 + 3) = v83;
    v136 = v82;
    v84 = OBJC_IVAR___CSDPendingConversationMessageHandler_pendingIncomingMessagesQueue;
    v85 = v162;
    swift_beginAccess();

    v86 = *&v85[v84];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = *&v85[v84];
    v87 = v163;
    *&v85[v84] = 0x8000000000000000;
    sub_100021E24();
    v132 = v88;
    v89 = v87[2];
    v135 = v90;
    v91 = (v90 & 1) == 0;
    v92 = v89 + v91;
    if (__OFADD__(v89, v91))
    {
      break;
    }

    sub_10026D814(&qword_1006A4AC0, &qword_10057FB38);
    v93 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v92);
    v94 = v163;
    v95 = v157;
    if (v93)
    {
      sub_100021E24();
      v98 = v135;
      if ((v135 & 1) != (v97 & 1))
      {
        goto LABEL_27;
      }

      v99 = v96;
    }

    else
    {
      v99 = v132;
      v98 = v135;
    }

    *&v162[v84] = v94;
    if ((v98 & 1) == 0)
    {
      sub_1002FEEE0(&v163);
      v100 = v152;
      (*(v161 + 16))(v152, v52, v39);
      sub_1003283CC(v99, v100, v163, v94);
    }

    v101 = v94[7];
    v102 = *(v101 + 8 * v99);
    swift_isUniquelyReferenced_nonNull_native();
    v163 = *(v101 + 8 * v99);
    sub_100379278();
    *(v101 + 8 * v99) = v163;
    swift_endAccess();
    v135 = 1;
    v136 = sub_1002FEEE0;
LABEL_21:
    v103 = sub_100004778();
    v62 = static os_log_type_t.default.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_10057D6A0;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_100009D88();
    *(v104 + 32) = v95;
    *(v104 + 40) = a1;

    v39 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
    v105 = [v53 messageRetryIntervalMillis];
    *(v104 + 96) = &type metadata for UInt;
    *(v104 + 104) = &protocol witness table for UInt;
    *(v104 + 72) = v105;
    os_log(_:dso:log:type:_:)();

    v106 = v151;
    static DispatchTime.now()();
    v107 = [v53 messageRetryIntervalMillis];
    if ((v107 & 0x8000000000000000) == 0)
    {
      v108 = v142;
      *v142 = v107;
      v109 = v143;
      v110 = v144;
      (*(v143 + 104))(v108, enum case for DispatchTimeInterval.milliseconds(_:), v144);
      + infix(_:_:)();
      (*(v109 + 8))(v108, v110);
      v111 = v95;
      v112 = *(v159 + 8);
      v159 += 8;
      v157 = v112;
      v112(v106, v156);
      v113 = v52;
      v134 = v52;
      v114 = v161;
      v115 = v152;
      v116 = v141;
      (*(v161 + 16))(v152, v113, v141);
      v117 = (*(v114 + 80) + 56) & ~*(v114 + 80);
      v118 = (v43 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
      v119 = swift_allocObject();
      *(v119 + 16) = v111;
      *(v119 + 24) = a1;
      *(v119 + 32) = v160;
      *(v119 + 40) = v135;
      v120 = v162;
      *(v119 + 48) = v162;
      v137(v119 + v117, v115, v116);
      v121 = v140;
      *(v119 + v118) = v140;
      v122 = (v119 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8));
      v123 = v154;
      *v122 = v153;
      v122[1] = v123;
      aBlock[4] = sub_1002FF994;
      aBlock[5] = v119;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004CEC;
      aBlock[3] = &unk_100625FA8;
      v124 = _Block_copy(aBlock);

      v125 = v120;
      v126 = v121;
      v127 = v145;
      static DispatchQoS.unspecified.getter();
      v163 = _swiftEmptyArrayStorage;
      sub_1002FFA40(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_1000057D0();
      v128 = v147;
      v129 = v150;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v130 = v155;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v124);
      (*(v149 + 8))(v128, v129);
      (*(v146 + 8))(v127, v148);
      v157(v130, v156);
      (*(v114 + 8))(v134, v116);

      sub_1000051F8(v136);
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  __break(1u);
LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1002FEEE0@<X0>(uint64_t *a1@<X8>)
{
  sub_10026D814(&qword_1006A4AC8, &unk_10057FB40);
  result = Dictionary.init(dictionaryLiteral:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002FEF38(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t (*a8)(void))
{
  v46 = a7;
  v47 = a8;
  v45 = a5;
  v48 = a4;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004778();
  static os_log_type_t.default.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10057D6A0;
  *(v19 + 56) = &type metadata for String;
  v20 = sub_100009D88();
  v44 = a1;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 96) = &type metadata for Int;
  *(v19 + 104) = &protocol witness table for Int;
  *(v19 + 64) = v20;
  *(v19 + 72) = a3;

  os_log(_:dso:log:type:_:)();

  if (v48)
  {
    (*(v13 + 16))(v17, a6, v12);
    v21 = v45;
    v22 = sub_1002FE0F8();
    v23 = sub_10040BE24(v49);
    if (!*v24)
    {
      (v23)(v49, 0);
      (*(v13 + 8))(v17, v12);
      return (v22)(v50, 0);
    }

    v25 = sub_100383D48(v44, a2);
    (v23)(v49, 0);
    (*(v13 + 8))(v17, v12);
    result = (v22)(v50, 0);
    if (!v25)
    {
      return result;
    }

    sub_1000051F8(v25);
    v27 = OBJC_IVAR___CSDPendingConversationMessageHandler_pendingIncomingMessagesQueue;
    swift_beginAccess();
    v28 = *(v21 + v27);

    v29 = sub_1002DB870(a6, v28);

    if (v29)
    {
      v30 = *(v29 + 16);

      if (!v30)
      {
        swift_beginAccess();
        sub_100383DE8(a6, v31, v32, v33, v34, v35, v36, v37, v43, v44);
        swift_endAccess();
      }
    }
  }

  v38 = objc_opt_self();
  v39 = [v38 sharedInstance];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v39 messageRetryStartedForConversationGroupUUID:isa];

  if ([v46 type] == 4)
  {
    v41 = [v38 sharedInstance];
    v42 = UUID._bridgeToObjectiveC()().super.isa;
    [v41 avcBlobRequestMessageRetryStartedForConversationGroupUUID:v42];
  }

  return v47();
}

uint64_t sub_1002FF404(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = *(v1 + OBJC_IVAR___CSDPendingConversationMessageHandler_queue);
  *(v11 - v10) = v13;
  (*(v6 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v3);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v12, v3);
  if ((v13 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  sub_100383DE8(a1, v16, v17, v18, v19, v20, v21, v22, v46, v47);
  v24 = v23;
  result = swift_endAccess();
  if (v24)
  {
    v25 = 0;
    v48 = v24;
    v28 = *(v24 + 64);
    v27 = v24 + 64;
    v26 = v28;
    v29 = 1 << *(v27 - 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v26;
    v32 = (v29 + 63) >> 6;
    if ((v30 & v26) != 0)
    {
      do
      {
        v33 = v25;
LABEL_11:
        v34 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v35 = (v33 << 10) | (16 * v34);
        v36 = (*(v48 + 48) + v35);
        v38 = *v36;
        v37 = v36[1];
        v39 = *(v48 + 56) + v35;
        v40 = *(v39 + 8);
        v49 = *v39;

        v41 = sub_100004778();
        static os_log_type_t.default.getter();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_10057D6A0;
        *(v42 + 56) = &type metadata for String;
        *(v42 + 64) = sub_100009D88();
        *(v42 + 32) = v38;
        *(v42 + 40) = v37;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        *(v42 + 96) = sub_1002FF950();
        *(v42 + 104) = sub_1002FFA40(&unk_1006A4AB0, sub_1002FF950);
        *(v42 + 72) = isa;
        os_log(_:dso:log:type:_:)();

        v44 = [objc_opt_self() sharedInstance];
        v45 = UUID._bridgeToObjectiveC()().super.isa;
        [v44 messageRetryStartedForConversationGroupUUID:v45];

        v49();
      }

      while (v31);
    }

    while (1)
    {
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v33 >= v32)
      {
      }

      v31 = *(v27 + 8 * v33);
      ++v25;
      if (v31)
      {
        v25 = v33;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

id sub_1002FF88C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PendingConversationMessageHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002FF950()
{
  result = qword_1006A5C50;
  if (!qword_1006A5C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A5C50);
  }

  return result;
}

uint64_t sub_1002FF994()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4 + 8);
  return sub_1002FEF38(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v3), *(v0 + v4));
}

uint64_t sub_1002FFA40(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002FFA88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(TUConversationActivitySessionContainer) init];
  [v9 setState:3];
  [v9 setCapabilities:a2];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  sub_10000A780(isa, "setUUID:");

  UUID.init()();
  v11 = UUID._bridgeToObjectiveC()().super.isa;
  v12 = (*(v4 + 8))(v8, v3);
  sub_10000A780(v12, "setGroupUUID:");

  [v9 setState:3];
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B3DC(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v13, v14, v15);
  sub_1000083D0();
  sub_10000CE3C(v16, v17, v18);
  sub_10000A12C();
  v19 = sub_100010160();
  sub_10000F5E4(v19, "setActivitySessions:");

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B3B8(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v20, v21, v22);
  sub_1000083D0();
  sub_10000CE3C(v23, v24, v25);
  sub_10000A12C();
  v26 = sub_100010160();
  sub_10000F5E4(v26, "setRemoteMembers:");

  [v9 setLocalParticipantIdentifier:123];
  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B1E0(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v27, v28, v29);
  sub_1000083D0();
  sub_10000CE3C(v30, v31, v32);
  sub_10000A12C();
  v33 = sub_100010160();
  sub_10000F5E4(v33, "setVirtualParticipants:");

  v34 = objc_allocWithZone(TUConversationVirtualParticipantConfig);
  v35 = sub_1002FFE6C(1, 1, 1, 1, 1, 0, 0, 0, 0);
  sub_10000A780(v35, "setVirtualParticipantConfig:");

  v36 = [objc_allocWithZone(TUConversationUnreliableMessengerConfig) initWithEstablishChannelMaxAttempts:1 establishChannelRetryIntervalMillis:1 egressMessagePayloadMaxSizeBytes:1 channelStreamMaxQueueSize:1 channelStreamMaxTries:1 channelStreamRetryIntervalMillis:1 seqNumBufferSize:1];
  sub_10000A780(v36, "setUnreliableMessengerConfig:");

  if (sub_10000B6F4(_swiftEmptyArrayStorage))
  {
    sub_10039B1BC(_swiftEmptyArrayStorage);
  }

  sub_1000083D0();
  sub_100006AF0(v37, v38, v39);
  sub_1000083D0();
  sub_10000CE3C(v40, v41, v42);
  sub_10000A12C();
  v43 = sub_100010160();
  sub_10000F5E4(v43, "setActiveRemoteParticipants:");

  return v9;
}

id sub_1002FFE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a7)
  {
    v15 = 0;
    if (a9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v15 = String._bridgeToObjectiveC()();

  if (!a9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = String._bridgeToObjectiveC()();

LABEL_6:
  v17 = [v9 initWithConnectionRetryIntervalMillis:a1 connectionMaxAttempts:a2 rpcStreamRetryIntervalMillis:a3 rpcStreamMaxAttempts:a4 serverCertValidationEnabled:a5 & 1 serverCertHostnameOverride:v15 serverCertLeafMarkerOIDOverride:v16];

  return v17;
}

uint64_t sub_1002FFF54()
{
  sub_10026D814(&qword_1006A4CF0, &qword_10057FBB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057CA70;
  *(inited + 32) = 0xD00000000000001BLL;
  *(inited + 40) = 0x8000000100569630;
  *(inited + 48) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x8000000100569650;
  *(inited + 72) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 80) = 0xD000000000000024;
  *(inited + 88) = 0x8000000100569670;
  *(inited + 96) = Dictionary.init(dictionaryLiteral:)();
  *(inited + 104) = 0xD00000000000002ALL;
  *(inited + 112) = 0x80000001005696A0;
  *(inited + 120) = Dictionary.init(dictionaryLiteral:)();
  sub_10026D814(&qword_1006A2BE0, &unk_10057E8B0);
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006A4AD0 = result;
  return result;
}

id sub_1003000C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
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
      v10 = sub_1000496D4();
      if (swift_dynamicCast())
      {
        v11 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10057D6A0;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100009D88();
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        *(v12 + 96) = v10;
        *(v12 + 104) = sub_100304210();
        *(v12 + 72) = v22;

        v13 = v22;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        a3 = [v13 BOOLValue];

        return (a3 & 1);
      }
    }

    else
    {
      sub_10004975C(v25);
    }

    v14 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10057D6A0;
    *&v25[0] = a1;
    *(&v25[0] + 1) = a2;

    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100009D88();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    LOBYTE(v25[0]) = a3 & 1;
    v20 = String.init<A>(reflecting:)();
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return (a3 & 1);
  }

  __break(1u);
  return result;
}

id sub_100300380(uint64_t a1, uint64_t a2, id a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
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
      v10 = sub_1000496D4();
      if (swift_dynamicCast())
      {
        v11 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_10057D6A0;
        *(v12 + 56) = &type metadata for String;
        *(v12 + 64) = sub_100009D88();
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        *(v12 + 96) = v10;
        *(v12 + 104) = sub_100304210();
        *(v12 + 72) = v22;

        v13 = v22;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        a3 = [v13 unsignedIntegerValue];

        return a3;
      }
    }

    else
    {
      sub_10004975C(v25);
    }

    v14 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10057D6A0;
    *&v25[0] = a1;
    *(&v25[0] + 1) = a2;

    v16 = String.init<A>(reflecting:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    v19 = sub_100009D88();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    *&v25[0] = a3;
    v20 = String.init<A>(reflecting:)();
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return a3;
  }

  __break(1u);
  return result;
}

id sub_10030063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v23, v24);
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    sub_10026D814(&qword_1006A4CE8, &qword_10057FBB0);
    if (swift_dynamicCast())
    {
      a3 = v23;
      v10 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10057D6A0;
      *(v11 + 56) = &type metadata for String;
      v12 = sub_100009D88();
      *(v11 + 64) = v12;
      *(v11 + 32) = a1;
      *(v11 + 40) = a2;
      *&v24[0] = a3;

      v13 = String.init<A>(reflecting:)();
      *(v11 + 96) = &type metadata for String;
      *(v11 + 104) = v12;
      *(v11 + 72) = v13;
      *(v11 + 80) = v14;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      v15 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_10057D6A0;
      *&v24[0] = a1;
      *(&v24[0] + 1) = a2;

      v17 = String.init<A>(reflecting:)();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      v20 = sub_100009D88();
      *(v16 + 64) = v20;
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      *&v24[0] = a3;

      v21 = String.init<A>(reflecting:)();
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v20;
      *(v16 + 72) = v21;
      *(v16 + 80) = v22;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300908(uint64_t a1, uint64_t a2, float a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v20, v21);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    if (swift_dynamicCast())
    {
      v10 = v20;
      v11 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_100009D88();
      *(v12 + 64) = v13;
      *(v12 + 32) = a1;
      *(v12 + 40) = a2;
      LODWORD(v21[0]) = v10;

      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
    }

    else
    {
      v11 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *&v21[0] = a1;
      *(&v21[0] + 1) = a2;

      v16 = String.init<A>(reflecting:)();
      v18 = v17;
      *(v12 + 56) = &type metadata for String;
      v19 = sub_100009D88();
      *(v12 + 64) = v19;
      *(v12 + 32) = v16;
      *(v12 + 40) = v18;
      *v21 = a3;
      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v19;
    }

    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v19, v20);
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    if (swift_dynamicCast())
    {
      a3 = v19;
      v10 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10057D6A0;
      *(v11 + 56) = &type metadata for String;
      v12 = sub_100009D88();
      *(v11 + 64) = v12;
      *(v11 + 32) = a1;
      *(v11 + 40) = a2;
      *&v20[0] = a3;

      v13 = String.init<A>(reflecting:)();
      *(v11 + 96) = &type metadata for String;
      *(v11 + 104) = v12;
    }

    else
    {
      v10 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10057D6A0;
      *&v20[0] = a1;
      *(&v20[0] + 1) = a2;

      v15 = String.init<A>(reflecting:)();
      v17 = v16;
      *(v11 + 56) = &type metadata for String;
      v18 = sub_100009D88();
      *(v11 + 64) = v18;
      *(v11 + 32) = v15;
      *(v11 + 40) = v17;
      *&v20[0] = a3;
      v13 = String.init<A>(reflecting:)();
      *(v11 + 96) = &type metadata for String;
      *(v11 + 104) = v18;
    }

    *(v11 + 72) = v13;
    *(v11 + 80) = v14;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100300E18(uint64_t a1, uint64_t a2, double a3)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003EBF0(&v20, v21);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    sub_10026D814(&unk_1006A2D10, &unk_10057D940);
    if (swift_dynamicCast())
    {
      v10 = v20;
      v11 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_100009D88();
      *(v12 + 64) = v13;
      *(v12 + 32) = a1;
      *(v12 + 40) = a2;
      *&v21[0] = v10;

      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
    }

    else
    {
      v11 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10057D6A0;
      *&v21[0] = a1;
      *(&v21[0] + 1) = a2;

      v16 = String.init<A>(reflecting:)();
      v18 = v17;
      *(v12 + 56) = &type metadata for String;
      v19 = sub_100009D88();
      *(v12 + 64) = v19;
      *(v12 + 32) = v16;
      *(v12 + 40) = v18;
      *v21 = a3;
      v14 = String.init<A>(reflecting:)();
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v19;
    }

    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003010A0()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569CE0, 0x1E);
  qword_1006A4AD8 = result;
  return result;
}

id sub_1003010DC()
{
  result = sub_100300380(0xD00000000000001ALL, 0x8000000100569CC0, 0x1E);
  qword_1006A4AE0 = result;
  return result;
}

id sub_100301118()
{
  result = sub_100300380(0xD000000000000018, 0x8000000100569CA0, 2);
  qword_1006A4AE8 = result;
  return result;
}

id sub_100301154()
{
  result = sub_100300380(0xD000000000000029, 0x8000000100569C70, 5);
  qword_1006A4AF0 = result;
  return result;
}

id sub_100301190()
{
  result = sub_100300380(0xD000000000000024, 0x8000000100569C40, 0x41);
  qword_1006A4AF8 = result;
  return result;
}

id sub_1003011CC()
{
  result = sub_100300380(0xD00000000000002ELL, 0x8000000100569C10, 0x14);
  qword_1006A4B00 = result;
  return result;
}

id sub_100301208()
{
  result = sub_100300380(0xD000000000000020, 0x8000000100569BE0, 0xA);
  qword_1006A4B08 = result;
  return result;
}

id sub_100301244()
{
  result = sub_100300380(0xD000000000000024, 0x8000000100569BB0, 5);
  qword_1006A4B10 = result;
  return result;
}

id sub_100301280()
{
  result = sub_100300380(0xD00000000000001ALL, 0x8000000100569B70, 0x64);
  qword_1006A4B18 = result;
  return result;
}

id sub_1003012BC()
{
  result = sub_100300380(0xD000000000000016, 0x8000000100569B50, 0x64);
  qword_1006A4B20 = result;
  return result;
}

id sub_1003012F8()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569B30, 0x64);
  qword_1006A4B28 = result;
  return result;
}

id sub_100301334()
{
  result = sub_1003000C0(0xD000000000000013, 0x8000000100569B10, 1u);
  byte_1006A4B30 = result & 1;
  return result;
}

id sub_100301374()
{
  result = sub_1003000C0(0xD000000000000010, 0x8000000100569AF0, 1u);
  byte_1006A4B31 = result & 1;
  return result;
}

id sub_1003013B4()
{
  result = sub_1003000C0(0xD00000000000001DLL, 0x8000000100569B90, 0);
  byte_1006A4B32 = result & 1;
  return result;
}

id sub_1003013F4()
{
  result = sub_1003000C0(0xD00000000000001ELL, 0x8000000100569AA0, 1u);
  byte_1006A4B33 = result & 1;
  return result;
}

id sub_100301434()
{
  result = sub_1003000C0(0xD00000000000002DLL, 0x8000000100569AC0, 0);
  byte_1006A4B34 = result & 1;
  return result;
}

id sub_100301474()
{
  result = sub_1003000C0(0xD00000000000001FLL, 0x8000000100569A80, 1u);
  byte_1006A4B35 = result & 1;
  return result;
}

id sub_1003014B4()
{
  result = sub_1003000C0(0xD00000000000002ALL, 0x8000000100569A50, 1u);
  byte_1006A4B36 = result & 1;
  return result;
}

id sub_1003014F4()
{
  result = sub_1003000C0(0xD00000000000002CLL, 0x8000000100569A20, 1u);
  byte_1006A4B37 = result & 1;
  return result;
}

id sub_100301534()
{
  result = sub_1003000C0(0xD000000000000025, 0x80000001005699F0, 1u);
  byte_1006A4B38 = result & 1;
  return result;
}

id sub_100301574()
{
  result = sub_1003000C0(0xD00000000000001FLL, 0x80000001005699D0, 1u);
  byte_1006A4B39 = result & 1;
  return result;
}

id sub_1003015B4()
{
  result = sub_1003000C0(0xD000000000000025, 0x80000001005699A0, 1u);
  byte_1006A4B3A = result & 1;
  return result;
}

id sub_1003015F4()
{
  result = sub_1003000C0(0xD00000000000001ALL, 0x8000000100569980, 1u);
  byte_1006A4B3B = result & 1;
  return result;
}

id sub_100301634()
{
  result = sub_100300380(0xD000000000000023, 0x8000000100569950, 5);
  qword_1006A4B40 = result;
  return result;
}

id sub_100301670()
{
  result = sub_1003000C0(0xD00000000000001BLL, 0x80000001005697B0, 1u);
  byte_1006A4B48 = result & 1;
  return result;
}

id sub_1003016B0()
{
  result = sub_100300380(0xD000000000000016, 0x8000000100569930, 5);
  qword_1006A4B50 = result;
  return result;
}

id sub_1003016EC()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569910, 0x1F4FA00);
  qword_1006A4B58 = result;
  return result;
}

id sub_10030172C()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569880, 0x1F4FA00);
  qword_1006A4B60 = result;
  return result;
}

id sub_10030176C()
{
  result = sub_100300380(0xD00000000000001CLL, 0x80000001005698F0, 0x1F4);
  qword_1006A4B68 = result;
  return result;
}

id sub_1003017A8()
{
  result = sub_100300380(0xD00000000000001BLL, 0x80000001005698D0, 0x1F4FA00);
  qword_1006A4B70 = result;
  return result;
}

id sub_1003017E8()
{
  result = sub_100300380(0xD000000000000027, 0x80000001005698A0, 0x1F4FA00);
  qword_1006A4B78 = result;
  return result;
}

id sub_100301828()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569860, 3);
  qword_1006A4B80 = result;
  return result;
}

id sub_100301864()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569840, 0x100);
  qword_1006A4B88 = result;
  return result;
}

id sub_1003018A0()
{
  result = sub_100300380(0xD00000000000001FLL, 0x8000000100569820, 2);
  qword_1006A4B90 = result;
  return result;
}

id sub_1003018DC()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569800, 0x15180);
  qword_1006A4B98 = result;
  return result;
}

id sub_10030191C()
{
  result = sub_100300380(0xD000000000000026, 0x80000001005697D0, 0x12C);
  qword_1006A4BA0 = result;
  return result;
}

id sub_100301958()
{
  result = sub_100300380(0xD000000000000022, 0x8000000100569780, 0x12C);
  qword_1006A4BA8 = result;
  return result;
}

id sub_100301994()
{
  result = sub_100300380(0xD000000000000026, 0x8000000100569750, 5);
  qword_1006A4BB0 = result;
  return result;
}

id sub_1003019D0()
{
  if (qword_1006A0848 != -1)
  {
    swift_once();
  }

  result = sub_10030063C(0xD000000000000020, 0x8000000100569600, qword_1006A4AD0);
  off_1006A4BB8 = result;
  return result;
}

id sub_100301A40()
{
  result = sub_100300380(0xD000000000000025, 0x80000001005695A0, 0x1388);
  qword_1006A4BC0 = result;
  return result;
}

id sub_100301A7C()
{
  result = sub_100300380(0xD000000000000022, 0x80000001005695D0, 0xA);
  qword_1006A4BC8 = result;
  return result;
}

id sub_100301AB8()
{
  result = sub_1003000C0(0xD000000000000022, 0x8000000100569570, 1u);
  byte_1006A4BD0 = result & 1;
  return result;
}

id sub_100301AF8()
{
  result = sub_100300380(0xD000000000000027, 0x8000000100569540, 4);
  qword_1006A4BD8 = result;
  return result;
}

id sub_100301B34()
{
  result = sub_1003000C0(0xD000000000000025, 0x8000000100569510, 1u);
  byte_1006A4BE0 = result & 1;
  return result;
}

id sub_100301B74()
{
  result = sub_1003000C0(0xD000000000000014, 0x80000001005694F0, 1u);
  byte_1006A4BE1 = result & 1;
  return result;
}

id sub_100301BB4()
{
  result = sub_1003000C0(0xD000000000000018, 0x80000001005694D0, 1u);
  byte_1006A4BE2 = result & 1;
  return result;
}

id sub_100301BF4()
{
  result = sub_100300380(0xD00000000000001BLL, 0x8000000100568E90, 0xB4);
  qword_1006A4BE8 = result;
  return result;
}

id sub_100301C30()
{
  result = sub_100300380(0xD000000000000014, 0x8000000100568EB0, 0x1F4);
  qword_1006A4BF0 = result;
  return result;
}

id sub_100301C6C()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100568ED0, 5);
  qword_1006A4BF8 = result;
  return result;
}

uint64_t sub_100301CA8(uint64_t a1, uint64_t a2)
{
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10057D690;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100009D88();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  v5 = String.init(format:_:)();
  LOBYTE(a1) = sub_1003000C0(v5, v6, 1u);

  return a1 & 1;
}

id sub_100301D60()
{
  result = sub_100300380(0xD00000000000001BLL, 0x8000000100568FE0, 3);
  qword_1006A4C00 = result;
  return result;
}

id sub_100301D9C()
{
  result = sub_100300380(0xD000000000000019, 0x8000000100569000, 2);
  qword_1006A4C08 = result;
  return result;
}

id sub_100301DD8()
{
  result = sub_100300380(0xD00000000000001CLL, 0x8000000100569020, 2);
  qword_1006A4C10 = result;
  return result;
}

id sub_100301E14()
{
  result = sub_100300380(0xD000000000000013, 0x8000000100569040, 5);
  qword_1006A4C18 = result;
  return result;
}

id sub_100301E50()
{
  result = sub_100300908(0xD000000000000028, 0x8000000100569060, 300.0);
  dword_1006A4C20 = v1;
  return result;
}

id sub_100301E90()
{
  sub_100007CF4();
  result = sub_100300380(0xD000000000000024, v0, 0x19);
  qword_1006A4C28 = result;
  return result;
}

id sub_100301EC8()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001ELL, v0, 2);
  qword_1006A4C30 = result;
  return result;
}

id sub_100301F00()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000019, v0, 120);
  qword_1006A4C38 = result;
  return result;
}

id sub_100301F38()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001ELL, v0, 15);
  qword_1006A4C40 = result;
  return result;
}

id sub_100301F70()
{
  sub_100007CF4();
  result = sub_100300B90(0xD00000000000001BLL, v0, 2000);
  qword_1006A4C48 = result;
  return result;
}

id sub_100301FA8()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000018, v0, 20);
  qword_1006A4C50 = result;
  return result;
}

id sub_100301FE0()
{
  sub_100007CF4();
  result = sub_100300B90(0xD000000000000021, v0, 20);
  qword_1006A4C58 = result;
  return result;
}

id sub_100302018()
{
  result = sub_100300B90(0x736F642D70696F76, 0xEE00746E756F632DLL, 20);
  qword_1006A4C60 = result;
  return result;
}

id sub_10030205C()
{
  result = sub_100300380(0xD000000000000015, 0x8000000100569490, 0x1E);
  qword_1006A4C68 = result;
  return result;
}

id sub_100302098()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569470, 0x12C);
  qword_1006A4C70 = result;
  return result;
}

id sub_1003020D4()
{
  result = sub_100300380(0xD00000000000001ELL, 0x8000000100569450, 1);
  qword_1006A4C78 = result;
  return result;
}

id sub_100302110()
{
  result = sub_100300380(0xD000000000000013, 0x8000000100569120, 2);
  qword_1006A4C80 = result;
  return result;
}

id sub_10030214C()
{
  result = sub_100300E18(0xD000000000000018, 0x80000001005691B0, 1.0);
  qword_1006A4C88 = v1;
  return result;
}

id sub_100302188()
{
  sub_100007CF4();
  result = sub_1003000C0(0xD000000000000020, v0, 1u);
  byte_1006A4C90 = result & 1;
  return result;
}

id sub_1003021C4()
{
  result = sub_1003000C0(0xD000000000000025, 0x8000000100569420, 1u);
  byte_1006A4C91 = result & 1;
  return result;
}

id sub_100302204()
{
  result = sub_100300380(0xD000000000000043, 0x80000001005693D0, 0x3C);
  qword_1006A4C98 = result;
  return result;
}

id sub_100302240()
{
  result = sub_100300380(0xD000000000000032, 0x8000000100569390, 5);
  qword_1006A4CA0 = result;
  return result;
}

uint64_t sub_100302FB4()
{
  if (qword_1006A0980 != -1)
  {
    sub_1000083FC();
  }
}

uint64_t sub_100303000(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0980 != -1)
  {
    sub_1000083FC();
  }

  v4 = sub_100005E74(a1);

  if (v4)
  {
    v5 = sub_1002CB47C(5459817, 0xE300000000000000, v4);
    if (v6)
    {
    }

    else
    {
      v12 = sub_10000A798();
      v14 = sub_1002CB47C(v12, v13, v4);
      v16 = v15;

      if (v16)
      {
        v17 = sub_100004778();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        return v14;
      }
    }
  }

  else
  {
    v7 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10057D6A0;
    *(v8 + 56) = &type metadata for String;
    v9 = sub_100009D88();
    *(v8 + 64) = v9;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    sub_10026D814(&qword_1006A4CE8, &qword_10057FBB0);
    v10 = String.init<A>(reflecting:)();
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v9;
    *(v8 + 72) = v10;
    *(v8 + 80) = v11;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  return v5;
}