uint64_t sub_100203F90(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAA0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v22 = a4;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_10021145C(v13, v14, &v23);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error persisting manifest with Inheritance Controller: %s", v11, 0xCu);
      sub_10000839C(v12);

      a4 = v22;
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully setup up beneficiary with IdMS", v19, 2u);
    }
  }

  [a2 setAccessKey:{a3, v22}];
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  return a4(v20, a1);
}

uint64_t sub_100204238(uint64_t a1, char a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (v29 - v14);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unable to determine Manatee state - aborting benficiary creation...", v19, 2u);
    }

    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    sub_10020E61C(a1, 1);
    a3(v15);
    return sub_100008D3C(v15, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v22, v23, "Saving BeneficiaryInfoRecord in manatee? %{BOOL}d", v24, 8u);
    }

    v25 = swift_unknownObjectRetain();
    sub_1001E3A24(v25, a1 & 1, v11);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController, v29);

      v28 = *sub_1000080F8(v29, v29[3]);
      sub_1002183D4(v11, a3, a4);
      sub_100209FF4(v11, type metadata accessor for BeneficiaryInfoRecord);
      return sub_10000839C(v29);
    }

    else
    {
      return sub_100209FF4(v11, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}

void sub_10020459C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v51 = a5;
  v52 = a4;
  v7 = type metadata accessor for InheritanceInvitationRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v14 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v50 - v19);
  sub_100012D04(a1, &v50 - v19, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    v53[0] = *v20;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v50 = a3;
      v22 = v55;
      v53[0] = v55;
      v54 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v23 = v55;
      v54 = v55;
      v24 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v24)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100008D04(v25, qword_1003FAAA0);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        v28 = os_log_type_enabled(v26, v27);
        v29 = v50;
        if (v28)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "No existing invitation found. Creating new Invitation...", v30, 2u);
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v32 = Strong;
          sub_100204C74(v29, v52, v51);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100008D04(v42, qword_1003FAAA0);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v53[0] = v46;
      *v45 = 136315138;
      v55 = v21;
      swift_errorRetain();
      v47 = String.init<A>(describing:)();
      v49 = sub_10021145C(v47, v48, v53);

      *(v45 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error fetching invitation - %s", v45, 0xCu);
      sub_10000839C(v46);
    }

    *v18 = v21;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v52(v18);

    sub_100008D3C(v18, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_100209F8C(v20, v13, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAA0);
    sub_100209F24(v13, v11, type metadata accessor for InheritanceInvitationRecord);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315138;
      v38 = sub_1001EEBA0();
      v40 = v39;
      sub_100209FF4(v11, type metadata accessor for InheritanceInvitationRecord);
      v41 = sub_10021145C(v38, v40, v53);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "Found existing invitation - %s", v36, 0xCu);
      sub_10000839C(v37);
    }

    else
    {

      sub_100209FF4(v11, type metadata accessor for InheritanceInvitationRecord);
    }

    sub_100209F24(v13, v18, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    v52(v18);
    sub_100008D3C(v18, &qword_1003E1290, &unk_1003444C0);
    sub_100209FF4(v13, type metadata accessor for InheritanceInvitationRecord);
  }
}

void sub_100204C74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 handle];
  if (v8)
  {
    v9 = v8;
    oslog = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = type metadata accessor for ContactsHelper();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = v9;
    sub_100005814(&unk_1003D9820, &unk_10033EFD0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
    Dependency.wrappedValue.getter();
    v16 = [v28 contactForHandle:v15];

    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v15 contact:v16];
    }

    else
    {

      v17 = 0;
    }

    v21 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24));
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = a3;
    v23[4] = a1;
    v23[5] = oslog;
    v23[6] = v11;
    v23[7] = v17;
    v23[8] = v22;
    v24 = *v21;
    v25 = v17;

    swift_unknownObjectRetain();
    sub_10021E8F0(sub_100209C50, v23);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    osloga = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(osloga, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, osloga, v19, "Unable to find the handle for the beneficiary.", v20, 2u);
    }
  }
}

uint64_t sub_100204F80(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v67 = a8;
  v68 = a6;
  v70 = a7;
  v69 = type metadata accessor for UUID();
  v13 = *(v69 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v69);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for InheritanceInvitationRecord();
  v18 = *(*(v17 - 1) + 64);
  v19 = __chkstk_darwin(v17);
  v71 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v23 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v64 - v25);
  if (a2)
  {
    *v26 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v26);
    return sub_100008D3C(v26, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    v65 = a1;
    v66 = a3;
    v64 = a4;
    v28 = [a5 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v67;
    if (v67)
    {
      v30 = [v67 firstName];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v13;
      v36 = v34;
      v37 = [v29 lastName];
      if (v37)
      {
        v38 = v37;
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v39;
      }

      else
      {
        v67 = 0;
        v29 = 0;
      }
    }

    else
    {
      v35 = v13;
      v67 = 0;
      v32 = 0;
      v36 = 0;
    }

    v40 = &v22[v17[6]];
    v41 = &v22[v17[7]];
    v42 = v35;
    v43 = *(v35 + 16);
    v44 = v69;
    v43(v22, v16, v69);
    v45 = &v22[v17[5]];
    v46 = v70;
    *v45 = v68;
    *(v45 + 1) = v46;
    *v40 = v32;
    v40[1] = v36;
    *v41 = v67;
    *(v41 + 1) = v29;
    *&v22[v17[8]] = 1;
    v47 = v17[9];

    UUID.init()();
    (*(v42 + 8))(v16, v44);
    *&v22[v17[10]] = xmmword_10033F8D0;
    v48 = v17[11];
    v49 = v65;
    v22[v48] = v65 & 1;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100008D04(v50, qword_1003FAAA0);
    v51 = v71;
    sub_100209F24(v22, v71, type metadata accessor for InheritanceInvitationRecord);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v72[0] = v55;
      *v54 = 136315394;
      v56 = sub_1001EEBA0();
      v58 = v57;
      sub_100209FF4(v51, type metadata accessor for InheritanceInvitationRecord);
      v59 = sub_10021145C(v56, v58, v72);

      *(v54 + 4) = v59;
      *(v54 + 12) = 1024;
      *(v54 + 14) = v49 & 1;
      _os_log_impl(&_mh_execute_header, v52, v53, "New invitation created - %s in manatee? %{BOOL}d", v54, 0x12u);
      sub_10000839C(v55);
    }

    else
    {

      sub_100209FF4(v51, type metadata accessor for InheritanceInvitationRecord);
    }

    v60 = v66;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      sub_100040738(Strong + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController, v72);

      v63 = *sub_1000080F8(v72, v72[3]);
      sub_100215214(v22, v60, v64);
      sub_100209FF4(v22, type metadata accessor for InheritanceInvitationRecord);
      return sub_10000839C(v72);
    }

    else
    {
      return sub_100209FF4(v22, type metadata accessor for InheritanceInvitationRecord);
    }
  }
}

uint64_t sub_100205508(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5)
{
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v35 - v16;
  if (a2)
  {
    v36 = a4;
    v18 = *(a3 + 16);
    v19 = _swiftEmptyArrayStorage;
    if (v18)
    {
      v37 = a5;
      v39 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v20 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v21 = *(v11 + 72);
      do
      {
        sub_100209F24(v20, v17, type metadata accessor for BenefactorInfoRecord);
        sub_100209F24(v17, v15, type metadata accessor for BenefactorInfoRecord);
        v22 = objc_allocWithZone(AABenefactorInfo);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v24 = &v15[*(v10 + 20)];
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = String._bridgeToObjectiveC()();
        [v22 initWithBeneficiaryID:isa handle:v27 status:*&v15[*(v10 + 24)]];

        sub_100209FF4(v17, type metadata accessor for BenefactorInfoRecord);
        sub_100209FF4(v15, type metadata accessor for BenefactorInfoRecord);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = v39[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v20 += v21;
        --v18;
      }

      while (v18);
      v19 = v39;
    }

    v36(v19, 0);
  }

  else
  {
    v30 = *(a3 + 16);
    v31 = _swiftEmptyArrayStorage;
    if (v30)
    {
      v37 = a5;
      v39 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v32 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v33 = *(v11 + 72);
      do
      {
        sub_100205820(v32, a1, &v38);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v34 = v39[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v32 += v33;
        --v30;
      }

      while (v30);
      v31 = v39;
    }

    a4(v31, 0);
  }
}

void sub_100205820(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for UUID();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  v7 = __chkstk_darwin(v5);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for BenefactorInfoRecord();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_100209F24(a1, v15, type metadata accessor for BenefactorInfoRecord);
  v16 = objc_allocWithZone(AABenefactorInfo);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v18 = &v15[*(v12 + 28)];
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v16 initWithBeneficiaryID:isa handle:v21 status:*&v15[*(v12 + 32)]];

  sub_100209FF4(v15, type metadata accessor for BenefactorInfoRecord);
  v23 = [v22 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(a2 + 16) && (v24 = sub_10031AF8C(v10), (v25 & 1) != 0))
  {
    v26 = (*(a2 + 56) + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    sub_100015D6C(*v26, v28);
    v29 = v58;
    v30 = *(v58 + 8);
    v30(v10, v5);
    sub_100015D6C(v27, v28);
    sub_1001E92AC(v27, v28, &v50);
    if (v52)
    {
      v54 = v50;
      v55 = v51;
      v56 = v52;
      v57 = v53;
      sub_100016034(0, &qword_1003E26D0, AKInheritanceAccessKey_ptr);
      v31 = v48;
      (*(v29 + 16))(v48, v47, v5);
      v32 = sub_1001E9490(v31, &v54);
      [v22 setAccessKey:v32];
      sub_100012324(v27, v28);
      sub_100008D3C(&v50, &unk_1003E1660, &qword_100344608);

      goto LABEL_11;
    }

    sub_100012324(v27, v28);
  }

  else
  {
    v30 = *(v58 + 8);
    v30(v10, v5);
  }

  v47 = v30;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAAA0);
  v34 = v22;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v54 = v38;
    *v37 = 136315138;
    v39 = [v34 beneficiaryID];
    v40 = v22;
    v41 = v48;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    v45 = v41;
    v22 = v40;
    v47(v45, v5);
    v46 = sub_10021145C(v42, v44, &v54);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "No InheritanceAccessKeyRecord for beneficiaryID - %s.", v37, 0xCu);
    sub_10000839C(v38);
  }

LABEL_11:
  *v49 = v22;
}

uint64_t sub_100205D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Fetching AccessKey info from Shared BeneficiaryInfoRecords", v9, 2u);
  }

  v10 = sub_1000080F8(&v3[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v3[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v3;
  v12 = *v10;

  v13 = v3;
  sub_100216064(sub_100209F14, v11);
}

uint64_t sub_100205E68(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v85 = a5;
  v89 = type metadata accessor for UUID();
  v76 = *(v89 - 8);
  v9 = *(v76 + 64);
  __chkstk_darwin(v89);
  v90 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v84 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v84);
  v83 = (&v74 - v13);
  v14 = type metadata accessor for BeneficiaryInfoRecord();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  v16 = __chkstk_darwin(v14);
  v88 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __chkstk_darwin(v16);
  v78 = &v74 - v19;
  __chkstk_darwin(v18);
  v21 = &v74 - v20;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  v74 = a4;
  v75 = a3;
  v29 = _swiftEmptyArrayStorage;
  v30 = sub_100309624(_swiftEmptyArrayStorage);
  v31 = *(a1 + 16);
  if (v31)
  {
    v32 = *(v86 + 72);
    v77 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    a1 += v77;
    v79 = (v11 + 8);
    v80 = (v11 + 16);
    a3 = v78;
    v81 = v32;
    v82 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore;
    while (1)
    {
      sub_100209F24(a1, v21, type metadata accessor for BeneficiaryInfoRecord);
      v34 = &v21[*(v87 + 6)];
      v36 = *v34;
      v35 = *(v34 + 1);
      v37 = v84;
      v38 = v83;
      (*v80)(v83, v85 + v82, v84);

      Dependency.wrappedValue.getter();
      (*v79)(v38, v37);
      v39 = [*(*sub_1000080F8(v91 v91[3]) + 16)];
      if (!v39)
      {
        break;
      }

      v40 = v39;
      v41 = [v39 aa_altDSID];

      if (!v41)
      {
        break;
      }

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      if (v36 == v42 && v35 == v44)
      {

        sub_10000839C(v91);
        a3 = v78;
      }

      else
      {
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_10000839C(v91);
        a3 = v78;
        if ((v46 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_100209FF4(v21, type metadata accessor for BeneficiaryInfoRecord);
      v33 = v81;
LABEL_10:
      a1 += v33;
      if (!--v31)
      {
        goto LABEL_26;
      }
    }

    sub_10000839C(v91);
LABEL_20:
    sub_100209F8C(v21, v88, type metadata accessor for BeneficiaryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002E0438(0, v29[2] + 1, 1);
      v29 = v92;
    }

    v49 = v29[2];
    v48 = v29[3];
    if (v49 >= v48 >> 1)
    {
      sub_1002E0438(v48 > 1, v49 + 1, 1);
      v29 = v92;
    }

    v29[2] = v49 + 1;
    v33 = v81;
    sub_100209F8C(v88, v29 + v77 + v49 * v81, type metadata accessor for BeneficiaryInfoRecord);
    goto LABEL_10;
  }

  a3 = v78;
LABEL_26:
  v85 = v29[2];
  if (!v85)
  {
LABEL_41:

    v75(v30, 0);
  }

  v50 = 0;
  v87 = &a3[*(v87 + 7)];
  v84 = v29 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
  v88 = (v76 + 16);
  v83 = (v76 + 8);
  while (v50 < v29[2])
  {
    sub_100209F24(v84 + *(v86 + 72) * v50, a3, type metadata accessor for BeneficiaryInfoRecord);
    v54 = *v88;
    v55 = v90;
    (*v88)(v90, a3, v89);
    v57 = *v87;
    v56 = *(v87 + 1);
    sub_100015D6C(*v87, v56);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v91[0] = v30;
    v59 = sub_10031AF8C(v55);
    v61 = v30[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_43;
    }

    a1 = v60;
    if (v30[3] < v64)
    {
      sub_1002CE280(v64, v58);
      v59 = sub_10031AF8C(v90);
      if ((a1 & 1) != (v65 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_36:
      v30 = v91[0];
      if (a1)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (v58)
    {
      goto LABEL_36;
    }

    v73 = v59;
    sub_1002D1054();
    v59 = v73;
    v30 = v91[0];
    if (a1)
    {
LABEL_28:
      v51 = (v30[7] + 16 * v59);
      v52 = *v51;
      v53 = v51[1];
      *v51 = v57;
      v51[1] = v56;
      sub_100012324(v52, v53);
      (*v83)(v90, v89);
      sub_100209FF4(a3, type metadata accessor for BeneficiaryInfoRecord);
      goto LABEL_29;
    }

LABEL_37:
    v30[(v59 >> 6) + 8] |= 1 << v59;
    v66 = v76;
    v67 = v59;
    a1 = v89;
    v68 = v90;
    v54((v30[6] + *(v76 + 72) * v59), v90, v89);
    v69 = (v30[7] + 16 * v67);
    *v69 = v57;
    v69[1] = v56;
    v70 = v68;
    a3 = v78;
    (*(v66 + 8))(v70, a1);
    sub_100209FF4(a3, type metadata accessor for BeneficiaryInfoRecord);
    v71 = v30[2];
    v63 = __OFADD__(v71, 1);
    v72 = v71 + 1;
    if (v63)
    {
      goto LABEL_44;
    }

    v30[2] = v72;
LABEL_29:
    if (v85 == ++v50)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_3:
  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAAA0);
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    v27 = _convertErrorToNSError(_:)();
    *(v25 + 4) = v27;
    *v26 = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Error fetching beneficiaries from storage: %@", v25, 0xCu);
    sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
  }

  return (a3)(a1, 1);
}

void sub_1002066F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v8 = String._bridgeToObjectiveC()();

    *(inited + 48) = v8;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  if (a4)
  {
    a4(a1);
  }
}

uint64_t sub_1002068A0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v137 = a8;
  v129 = a7;
  v135 = a6;
  v134 = a5;
  v133 = a4;
  v138 = a9;
  v139 = a3;
  v11 = type metadata accessor for InheritanceInvitationResponseMessage();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v136 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v124 - v16;
  v18 = __chkstk_darwin(v15);
  v130 = &v124 - v19;
  __chkstk_darwin(v18);
  v132 = &v124 - v20;
  v140 = type metadata accessor for UUID();
  v21 = *(v140 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v140);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v131 = &v124 - v26;
  v27 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v30 = (&v124 - v29);
  sub_100012D04(a1, &v124 - v29, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v30;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAAA0);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = _convertErrorToNSError(_:)();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error responding to the invitation: %@", v35, 0xCu);
      sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    (v137)(v31);
  }

  else
  {
    v127 = v11;
    v125 = type metadata accessor for BenefactorInfoRecord();
    v39 = swift_allocBox();
    v126 = v40;
    sub_100209F8C(v30, v40, type metadata accessor for BenefactorInfoRecord);
    v41 = sub_1000080F8(a2, a2[3]);
    v42 = *v41;
    v43 = [*(*v41 + 16) aa_primaryAppleAccount];
    v44 = a2;
    v128 = v39;
    if (!v43)
    {
      goto LABEL_16;
    }

    v45 = *(v42 + 16);
    v46 = v43;
    v47 = [v43 aa_altDSID];
    v48 = [v45 aa_authKitAccountForAltDSID:v47];

    if (!v48)
    {
      goto LABEL_16;
    }

    v49 = [*(v42 + 24) canBeBeneficiaryForAccount:v48];

    if (v49)
    {
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      v136 = sub_100008D04(v50, qword_1003FAAA0);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "Notifying owner of invitation response...", v53, 2u);
      }

      v54 = sub_1000080F8(a2 + 10, a2[13]);
      v55 = (v126 + *(v125 + 20));
      v57 = *v55;
      v56 = v55[1];
      v135 = v57;
      v134 = v56;
      v139 = v21;
      v58 = *(v21 + 16);
      v59 = v131;
      v60 = v140;
      v58(v131);
      sub_10016FFDC(v44, v142);
      v61 = swift_allocObject();
      v62 = v137;
      v63 = v138;
      *(v61 + 16) = v39;
      *(v61 + 24) = v62;
      *(v61 + 32) = v63;
      v64 = v129 & 1;
      *(v61 + 40) = v129 & 1;
      v65 = v142[5];
      *(v61 + 112) = v142[4];
      *(v61 + 128) = v65;
      *(v61 + 144) = v142[6];
      *(v61 + 160) = v143;
      v66 = v142[1];
      *(v61 + 48) = v142[0];
      *(v61 + 64) = v66;
      v67 = v142[3];
      *(v61 + 80) = v142[2];
      *(v61 + 96) = v67;
      v137 = *v54;
      v68 = v127;
      v69 = v132;
      (v58)(&v132[*(v127 + 20)], v59, v60);
      *v69 = 0;
      v69[*(v68 + 24)] = v64;
      v70 = v69;
      v71 = v134;
      v72 = v130;
      sub_100209F24(v70, v130, type metadata accessor for InheritanceInvitationResponseMessage);

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v141 = v76;
        *v75 = 136315138;
        v77 = sub_1001DB654();
        v79 = v78;
        sub_100209FF4(v72, type metadata accessor for InheritanceInvitationResponseMessage);
        v80 = sub_10021145C(v77, v79, &v141);

        *(v75 + 4) = v80;
        _os_log_impl(&_mh_execute_header, v73, v74, "Created invitation response message - %s.\nResponding to invitation...", v75, 0xCu);
        sub_10000839C(v76);
      }

      else
      {

        sub_100209FF4(v72, type metadata accessor for InheritanceInvitationResponseMessage);
      }

      v115 = sub_1000080F8((v137 + 16), *(v137 + 40));
      v116 = v140;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v122 = v115;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_10013446C(_swiftEmptyArrayStorage);
          v117 = v123;
        }

        else
        {
          v117 = &_swiftEmptySetSingleton;
        }

        v115 = v122;
        v116 = v140;
      }

      else
      {
        v117 = &_swiftEmptySetSingleton;
      }

      v118 = *v115;

      v119 = v132;
      sub_1002B4B0C(v132, v135, v71, 0, 0, v117, v118, sub_1002096A4, v61);

      sub_100209FF4(v119, type metadata accessor for InheritanceInvitationResponseMessage);
      (*(v139 + 8))(v131, v116);
    }

    else
    {
LABEL_16:
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v81 = type metadata accessor for Logger();
      v82 = sub_100008D04(v81, qword_1003FAAA0);
      v83 = v140;
      v137 = *(v21 + 16);
      (v137)(v25, v139, v140);
      v138 = v82;
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v132 = v44;
        v87 = v86;
        v88 = swift_slowAlloc();
        *&v142[0] = v88;
        *v87 = 136315138;
        sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
        v89 = dispatch thunk of CustomStringConvertible.description.getter();
        v91 = v90;
        (*(v21 + 8))(v25, v140);
        v92 = sub_10021145C(v89, v91, v142);
        v83 = v140;

        *(v87 + 4) = v92;
        _os_log_impl(&_mh_execute_header, v84, v85, "User is not eligible to be a beneficiary, replying rejected for beneficiaryID: %s", v87, 0xCu);
        sub_10000839C(v88);

        v44 = v132;
      }

      else
      {

        (*(v21 + 8))(v25, v83);
      }

      v93 = sub_1000080F8((v44 + 80), *(v44 + 104));
      v94 = (v126 + *(v125 + 20));
      v95 = v94[1];
      v140 = *v94;
      v96 = swift_allocObject();
      v97 = v133;
      v98 = v134;
      v96[2] = v133;
      v96[3] = v98;
      v96[4] = v135;
      v99 = *v93;
      v100 = v127;
      (v137)(&v17[*(v127 + 20)], v139, v83);
      *v17 = 0;
      v17[*(v100 + 24)] = 0;
      v101 = v136;
      sub_100209F24(v17, v136, type metadata accessor for InheritanceInvitationResponseMessage);

      v102 = v97;
      sub_100083AA0(v98);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v139 = v95;
        v107 = v106;
        *&v142[0] = v106;
        *v105 = 136315138;
        v108 = sub_1001DB654();
        v110 = v109;
        sub_100209FF4(v101, type metadata accessor for InheritanceInvitationResponseMessage);
        v111 = sub_10021145C(v108, v110, v142);

        *(v105 + 4) = v111;
        _os_log_impl(&_mh_execute_header, v103, v104, "Created invitation response message - %s.\nResponding to invitation...", v105, 0xCu);
        sub_10000839C(v107);
        v95 = v139;
      }

      else
      {

        sub_100209FF4(v101, type metadata accessor for InheritanceInvitationResponseMessage);
      }

      v112 = sub_1000080F8((v99 + 16), *(v99 + 40));
      if (_swiftEmptyArrayStorage >> 62)
      {
        v120 = v112;
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          sub_10013446C(_swiftEmptyArrayStorage);
          v113 = v121;
        }

        else
        {
          v113 = &_swiftEmptySetSingleton;
        }

        v112 = v120;
      }

      else
      {
        v113 = &_swiftEmptySetSingleton;
      }

      v114 = *v112;

      sub_1002B4B0C(v17, v140, v95, 0, 0, v113, v114, sub_100208834, v96);

      sub_100209FF4(v17, type metadata accessor for InheritanceInvitationResponseMessage);
    }
  }
}

void sub_100207624(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (AAUnderTest.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if ((AAUnderTest.getter() & 1) == 0)
  {
LABEL_3:
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    strcpy((inited + 32), "inviteAction");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    String.init<A>(describing:)();
    v7 = String._bridgeToObjectiveC()();

    *(inited + 48) = v7;
    strcpy((inited + 56), "numOfRelation");
    *(inited + 70) = -4864;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

LABEL_4:

  if (a3)
  {
    a3(a1);
  }
}

uint64_t sub_1002077C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, char a5, uint64_t a6)
{
  v46 = a3;
  v47 = a4;
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    v15 = (v14 + *(v10 + 20));
    v16 = *v15;
    v17 = v15[1];
    v48 = 0xD000000000000028;
    v49 = 0x80000001003311C0;
    swift_errorRetain();
    v18._countAndFlagsBits = v16;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);

    v20 = v48;
    v21 = v49;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    v48 = v20;
    v49 = v21;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v27 = v48;
    v26 = v49;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAA0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      v33 = sub_10021145C(v27, v26, &v48);

      *(v31 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s", v31, 0xCu);
      sub_10000839C(v32);
    }

    else
    {
    }

    swift_errorRetain();
    v46(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAAA0);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Notified owner of invitation response.", v37, 2u);
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Updating status of Benefactor...", v40, 2u);
    }

    if (a5)
    {
      v41 = 2;
    }

    else
    {
      v41 = 4;
    }

    swift_beginAccess();
    *(v14 + *(v10 + 24)) = v41;
    v42 = sub_1000080F8((a6 + 40), *(a6 + 64));
    swift_beginAccess();
    sub_100209F24(v14, v13, type metadata accessor for BenefactorInfoRecord);
    v43 = swift_allocObject();
    v43[2] = v46;
    v43[3] = v47;
    v43[4] = a2;
    v44 = *v42;

    sub_10021BA80(v13, sub_1002096B8, v43);

    return sub_100209FF4(v13, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_100207C98(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v24 - v6);
  sub_100012D04(a1, &v24 - v6, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *v7;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v8;
      v25 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Error updating Benefactor status - %s", v12, 0xCu);
      sub_10000839C(v13);
    }

    swift_errorRetain();
    a2(v8);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = type metadata accessor for BenefactorInfoRecord();
      v23 = swift_projectBox();
      swift_beginAccess();
      *(v21 + 4) = *(v23 + *(v22 + 24));

      _os_log_impl(&_mh_execute_header, v19, v20, "Updated Benefactor status to %ld", v21, 0xCu);
    }

    else
    {
    }

    a2(0);
    return sub_100008D3C(v7, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_100208014(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v7 = type metadata accessor for BenefactorInfoRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Changing CK record status to declined...", v14, 2u);
  }

  v15 = objc_autoreleasePoolPush();
  v16 = sub_1002E1D08(*(a1 + *(v7 + 32)), *(a1 + *(v7 + 32) + 8));
  if (!v16)
  {
    v16 = sub_10017D26C(a1);
  }

  v34 = v16;
  v17 = v16;
  sub_1001E2B8C(&v34);
  objc_autoreleasePoolPop(v15);
  v18 = CKRecord.recordType.getter();
  v20 = v19;

  v21 = v18 == 0xD00000000000001FLL && 0x80000001003303D0 == v20;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_100209F24(a1, v10, type metadata accessor for BenefactorInfoRecord);
    v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
    v23 = swift_allocObject();
    *(v23 + 16) = v32;
    *(v23 + 24) = a3;
    v24 = *v22;

    sub_1002799AC(v10, sub_10021EEC4, 0, 0, sub_10020E210, v23);

    sub_100209FF4(v10, type metadata accessor for BenefactorInfoRecord);
    return;
  }

  if (v18 == 0xD00000000000001BLL && 0x8000000100330380 == v20)
  {

    goto LABEL_17;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
LABEL_17:
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Invalid Record! Failed to change CKRecord trusted contact status to declined.";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v26, v27, v29, v28, 2u);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Cannot recognize record type! Failed to change CKRecord trusted contact status to declined.";
    goto LABEL_21;
  }

LABEL_22:

  type metadata accessor for InheritanceError(0);
  v33 = 2;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v30 = v34;
  v32(v34, 1);
}

uint64_t sub_10020847C(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_100005814(a4, a5);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v25 - v11);
  sub_100012D04(a1, &v25 - v11, a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAA0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update CKRecord record status to removed: %@", v17, 0xCu);
      sub_100008D3C(v18, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a2(v13, 1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully to updated CKRecord record status!", v24, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    a2(0, 0);
    return sub_100008D3C(v12, a4, a5);
  }
}

uint64_t sub_100208774()
{
  v0 = sub_100005814(&qword_1003E31F8, &qword_100346900);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1003E3200;
    v3 = &unk_100346908;
  }

  else
  {
    v2 = &unk_1003E4DE0;
    v3 = &qword_1003432F0;
  }

  return sub_100005814(v2, v3);
}

uint64_t sub_1002087EC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100208840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[3] = type metadata accessor for InheritanceStorageController();
  v21[4] = &off_1003B0008;
  v21[0] = a1;
  v6 = type metadata accessor for DaemonFamilyRequester();
  v20[3] = v6;
  v20[4] = &off_1003B3A18;
  v20[0] = a2;
  sub_100040738(v21, a3 + OBJC_IVAR____TtC13appleaccountd24InheritanceFamilyManager_inheritanceStorage);
  sub_100040738(v20, v18);
  v7 = v19;
  v8 = sub_10003E968(v18, v19);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v16 = v6;
  v17 = &off_1003B3A18;
  *&v15 = v13;
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10000839C(v20);
  sub_10000839C(v21);
  sub_10003E950(&v15, a3 + 16);
  sub_10000839C(v18);
  return a3;
}

uint64_t sub_100208A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InheritanceStorageController();
  v25[3] = v4;
  v25[4] = &off_1003B0008;
  v25[0] = a1;
  v23 = type metadata accessor for DaemonFamilyRequester();
  v24 = &off_1003B3A18;
  v22[0] = a2;
  v5 = type metadata accessor for InheritanceFamilyManager();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_10003E968(v25, v4);
  v10 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = v23;
  v15 = sub_10003E968(v22, v23);
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_100208840(*v12, *v18, v8);
  sub_10000839C(v22);
  sub_10000839C(v25);
  return v20;
}

void sub_100208BDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v14 = sub_1001FA348();
  if (v14)
  {
    v15 = v14;
    v35 = a6;
    v16 = a5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAAA0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Creating AccessKey...", v20, 2u);
    }

    v21 = *(a7 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v16;
    v23[3] = v35;
    v23[4] = v15;
    v23[5] = a2;
    v23[6] = a1;
    v23[7] = a3;
    v23[8] = a4;
    v23[9] = v22;
    aBlock[4] = sub_10020E4D0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003AF888;
    v24 = _Block_copy(aBlock);

    v25 = v15;
    swift_unknownObjectRetain();
    v26 = a1;

    [v21 createInheritanceAccessKeyForContact:a2 completion:v24];
    _Block_release(v24);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAAA0);
    v28 = aBlock[0];
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = v28;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error creating inheritanceContext: %@", v31, 0xCu);
      sub_100008D3C(v32, &unk_1003D9140, &qword_10033E640);
    }

    v25 = v28;
    a5(0, v28);
  }
}

void sub_100208FC0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a1)
  {
    v18 = a1;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    type metadata accessor for InheritanceError(0);
    if (swift_dynamicCast())
    {
      v18 = v17;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v4 = static _BridgedStoredNSError.== infix(_:_:)();

      if (v4)
      {
        if (qword_1003D7F40 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100008D04(v5, qword_1003FAAA0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "CleanupBeneficiary completed.", v8, 2u);
        }

        [objc_opt_self() postInheritanceContactChangedNotification];
        sub_1001FD8EC(0, a2);

        return;
      }
    }
  }

  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAA0);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_100005814(&unk_1003E1090, &qword_100344600);
    v14 = String.init<A>(describing:)();
    v16 = sub_10021145C(v14, v15, &v18);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "CleanupBeneficiary completed with error : %s", v12, 0xCu);
    sub_10000839C(v13);
  }

  [objc_opt_self() postInheritanceContactChangedNotification];
  sub_1001FD8EC(a1, a2);
}

uint64_t sub_100209344(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v28 = a4;
  v29 = a1;
  v31 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v30 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005814(&qword_1003E30D8, &qword_1003468D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  v18 = qword_1003D7F40;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAA0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v27 = a3;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting cleaning up beneficiary...", v22, 2u);
    a3 = v27;
  }

  (*(v14 + 16))(v17, v28 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__cleanupController, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v23 = v32;
  v24 = [v29 beneficiaryID];
  v25 = v30;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001F44D0(v25, v31, a3, v23, a5, a6);

  (*(v10 + 8))(v25, v9);
}

uint64_t sub_10020964C()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_10000839C(v0 + 6);
  sub_10000839C(v0 + 11);
  sub_10000839C(v0 + 16);

  return _swift_deallocObject(v0, 168);
}

uint64_t sub_1002096B8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_100207C98(a1, *(v1 + 16));
}

uint64_t sub_1002096D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002096EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100209770()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1002097B8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  (*(v2 + 8))(v0 + v3, v1);

  v5 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  if (*v5)
  {
    v6 = v5[1];
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1002098D8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100209940()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100209978()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1002099B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(0);
  }

  return result;
}

uint64_t sub_1002099EC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100209AB0(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100200D58(a1, v4, v5, v6);
}

uint64_t sub_100209B50()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100209BA4()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100209BF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_100209C88()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = *(v4 + v1[7] + 8);

  v8 = *(v4 + v1[8] + 8);

  v9 = *(v4 + v1[9] + 8);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));
  v10 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100209DE0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1002001D8(a1, v1 + v4, v6);
}

uint64_t sub_100209F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100209F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100209FF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10020A08C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v14 = sub_100005814(&unk_1003E3220, &qword_100346928);
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = *(v86 + 64);
  __chkstk_darwin(v14);
  v85 = &v84 - v16;
  v92 = type metadata accessor for DependencyRegistry.Entry();
  v99 = *(v92 - 8);
  v17 = *(v99 + 64);
  __chkstk_darwin(v92);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = type metadata accessor for InheritanceStorageController();
  v115 = &off_1003B0008;
  v113[0] = a2;
  v112[3] = type metadata accessor for DaemonIDSMessenger();
  v112[4] = &off_1003B2BB0;
  v112[0] = a4;
  v110 = type metadata accessor for InheritanceSetupMessenger();
  v111 = &off_1003AE2A0;
  v109[0] = a5;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceCleanupController();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for BeneficiaryDeclinedStatusHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceInvitationResponseHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceInvitationHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceAccessKeyMessageHandler();
  Dependency.init(dependencyId:config:)();
  type metadata accessor for BeneficiaryRemovedMessageHandler();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E03B0, &qword_100343D98);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0390, &qword_100346800);
  Dependency.init(dependencyId:config:)();
  v20 = &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_ownerHandle];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller] = a1;
  sub_100040738(v113, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController]);
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityController] = a6;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_messagingService] = a3;
  sub_100040738(v112, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_idsMessenger]);
  sub_100040738(v109, &a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_setupMessenger]);
  v90 = type metadata accessor for InheritanceCloudSharingController();
  v21 = *(v90 + 48);
  v22 = *(v90 + 52);
  v23 = swift_allocObject();
  v24 = a1;

  swift_unknownObjectRetain();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  v89 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_cloudSharingController;
  v93 = a7;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_cloudSharingController] = v23;
  type metadata accessor for InheritanceSecurityManager();
  v25 = swift_allocObject();
  *(v25 + 16) = a6;
  v91 = a6;
  v88 = OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager;
  *&a7[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager] = v25;
  v98 = type metadata accessor for DependencyRegistry();
  sub_100005814(&qword_1003E0F80, &unk_100344570);
  v19[3] = swift_getObjectType();
  *v19 = v24;
  v97 = enum case for DependencyRegistry.Entry.exact(_:);
  v26 = v99;
  v27 = *(v99 + 104);
  v95 = v99 + 104;
  v28 = v92;
  v27(v19);
  v84 = v24;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v94 = *(v26 + 8);
  v29 = v28;
  v94(v19, v28);
  v30 = v26 + 8;
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  v31 = v114;
  v32 = sub_1000080F8(v113, v114);
  v19[3] = v31;
  v33 = sub_10000DBEC(v19);
  (*(*(v31 - 8) + 16))(v33, v32, v31);
  v34 = v97;
  v96 = v27;
  (v27)(v19, v97, v29);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v35 = v29;
  v36 = v29;
  v37 = v94;
  v94(v19, v35);
  type metadata accessor for InheritanceSecurityController();
  v38 = v91;
  v19[3] = swift_getObjectType();
  *v19 = v38;
  (v27)(v19, v34, v36);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v37(v19, v36);
  v99 = v30;
  sub_100005814(&unk_1003E0220, &unk_100344580);
  v39 = v110;
  v40 = sub_1000080F8(v109, v110);
  v19[3] = v39;
  v41 = sub_10000DBEC(v19);
  (*(*(v39 - 8) + 16))(v41, v40, v39);
  v42 = v97;
  v43 = v92;
  v44 = v96;
  (v96)(v19, v97, v92);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v94(v19, v43);
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  v45 = v93;
  v46 = *&v93[v88];
  v19[3] = swift_getObjectType();
  *v19 = v46;
  v44(v19, v42, v43);
  swift_unknownObjectRetain();
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v47 = v43;
  v48 = v43;
  v49 = v94;
  v94(v19, v48);
  sub_100005814(&qword_1003E0F90, &unk_100343CF0);
  v50 = *&v45[v89];
  v19[3] = v90;
  *v19 = v50;
  (v96)(v19, v42, v47);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v49(v19, v47);
  sub_100005814(&qword_1003E1188, &unk_100346930);
  v51 = type metadata accessor for BeneficiaryAccessKeyRepairHandlerFactory();
  v52 = swift_allocObject();
  v19[3] = v51;
  v19[4] = sub_10020E6A0(&qword_1003E3230, type metadata accessor for BeneficiaryAccessKeyRepairHandlerFactory);
  *v19 = v52;
  v53 = v96;
  (v96)(v19, enum case for DependencyRegistry.Entry.factory(_:), v47);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v49(v19, v47);
  sub_100005814(&unk_1003E1198, &qword_100344650);
  v54 = type metadata accessor for BeneficiaryInfoVerifier();
  v55 = swift_allocObject();
  v19[3] = v54;
  *v19 = v55;
  v53(v19, v97, v47);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v49(v19, v47);
  sub_100040738(v113, &v104);
  type metadata accessor for DaemonFamilyRequester();
  v56 = swift_allocObject();
  v57 = *(&v105 + 1);
  v58 = sub_10003E968(&v104, *(&v105 + 1));
  v59 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v58);
  v61 = (&v84 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v62 + 16))(v61);
  v63 = sub_100208A08(*v61, v56);
  sub_10000839C(&v104);
  v64 = v93;
  v65 = &v93[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_familyManager];
  v65[3] = type metadata accessor for InheritanceFamilyManager();
  v65[4] = &off_1003B3860;
  *v65 = v63;
  v66 = [objc_allocWithZone(AATrustedContactFlowPresenter) init];
  v67 = v64;
  *&v64[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_flowPresenter] = v66;
  v68 = type metadata accessor for DaemonAccountStore();
  v69 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v71 = result;

    *(v69 + 16) = v71;
    *(v69 + 24) = [objc_opt_self() sharedInstance];
    v102 = v68;
    v103 = &off_1003AB0B8;
    *&v101 = v69;
    sub_100040738(v113, v106 + 8);
    sub_100040738(v109, v107);
    sub_10003E950(&v101, &v104);
    v72 = &v67[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_invitationResponder];
    v73 = v107[0];
    v74 = v107[1];
    *(v72 + 4) = v106[2];
    *(v72 + 5) = v73;
    *(v72 + 6) = v74;
    *(v72 + 14) = v108;
    v75 = v105;
    *v72 = v104;
    *(v72 + 1) = v75;
    v76 = v106[1];
    *(v72 + 2) = v106[0];
    *(v72 + 3) = v76;
    v77 = type metadata accessor for InheritanceRequestManager();
    v100.receiver = v67;
    v100.super_class = v77;
    v78 = objc_msgSendSuper2(&v100, "init");
    v79 = *&v78[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_messagingService];
    v81 = v85;
    v80 = v86;
    v82 = v87;
    (*(v86 + 16))(v85, &v78[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__messageProcessor], v87);
    v83 = v78;
    swift_unknownObjectRetain();
    Dependency.wrappedValue.getter();
    (*(v80 + 8))(v81, v82);
    [v79 setInheritanceDelegate:v104];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10000839C(v112);
    sub_10000839C(v109);
    sub_10000839C(v113);
    return v83;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10020ACEC()
{
  sub_100208774();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033E5C0;
  *(inited + 32) = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  *(inited + 40) = sub_100016034(0, &qword_1003D9250, NSString_ptr);
  sub_100256FF4(inited);
  v1 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10020C62C(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  v5 = sub_1001FA348();
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v8 = swift_allocObject();
    v8[2] = sub_10005B8DC;
    v8[3] = v4;
    aBlock[4] = sub_10020E628;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E7C0;
    aBlock[3] = &unk_1003AF9A0;
    v9 = _Block_copy(aBlock);

    [v7 fetchManifestOptionsWithInheritanceContext:v6 completion:v9];
    _Block_release(v9);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = _convertErrorToNSError(_:)();
    (a2)[2](a2, 0, v10);
  }
}

void sub_10020C81C(void *a1, void *a2, void *a3, uint64_t a4, char *a5, void (**a6)(const void *, void, void *))
{
  v55 = a3;
  v56 = a5;
  v57 = a1;
  v58 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = swift_allocObject();
  *(v59 + 16) = a6;
  v54 = a6;
  _Block_copy(a6);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_100008D04(v13, qword_1003FAAA0);
  swift_unknownObjectRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v17 = 136315394;
    v60 = type metadata accessor for InheritanceRequestManager();
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v18 = String.init<A>(describing:)();
    v20 = sub_10021145C(v18, v19, &v61);
    *&v53 = v14;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [a2 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v9 + 8))(v12, v8);
    v26 = sub_10021145C(v23, v25, &v61);

    *(v17 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s - Setup Beneficiary with UUID - %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  v27 = objc_allocWithZone(type metadata accessor for InheritanceInviteAnalyticsEvent());
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  v53 = xmmword_10033EB30;
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = 0x766F6D6552736177;
  *(inited + 40) = 0xEF6E6F6974634165;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
  v29 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = sub_10005A77C;
  v30[4] = v59;

  v31 = v29;
  v32 = [a2 handle];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = v56;
    v38 = sub_1000080F8(&v56[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v56[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    v39 = swift_allocObject();
    v39[2] = sub_10020E394;
    v39[3] = v30;
    v40 = v57;
    v39[4] = v37;
    v39[5] = v40;
    v41 = v55;
    v39[6] = a2;
    v39[7] = v41;
    v55 = v31;
    v39[8] = v58;
    v42 = *v38;
    v43 = swift_allocObject();
    v43[2] = v34;
    v43[3] = v36;
    v43[4] = sub_10020E3F8;
    v43[5] = v39;
    swift_unknownObjectRetain();

    v44 = v37;
    v45 = v40;

    sub_100216650(sub_10020E44C, v43);
  }

  else
  {
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Contact handle is nil.", v48, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v60 = 2108;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = v61;
    v50 = _convertErrorToNSError(_:)();
    if ((AAUnderTest.getter() & 1) == 0)
    {
      v51 = swift_initStackObject();
      *(v51 + 16) = v53;
      strcpy((v51 + 32), "numOfRelation");
      *(v51 + 46) = -4864;
      *(v51 + 48) = Int._bridgeToObjectiveC()();
      sub_1003093D0(v51);
      swift_setDeallocating();
      sub_100008D3C(v51 + 32, &unk_1003E8C10, &unk_100344990);
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
    }

    v52 = _convertErrorToNSError(_:)();
    v54[2](v54, 0, v52);
  }
}

void sub_10020CF50(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_1001FA348();
  if (v7)
  {
    v8 = v7;
    [v7 setManifest:a1];
    v9 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v10 = swift_allocObject();
    v10[2] = sub_10005B8F8;
    v10[3] = v6;
    aBlock[4] = sub_10020E330;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AF770;
    v11 = _Block_copy(aBlock);

    [v9 updateBeneficiaryWithInheritanceContext:v8 completion:v11];
    _Block_release(v11);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v12);
  }
}

void sub_10020D150(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  v7 = sub_1001FA348();
  if (v7)
  {
    v8 = v7;
    v9 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_securityManager);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = sub_10005B8F8;
    v11[3] = v6;
    v11[4] = v8;
    v11[5] = v10;
    aBlock[4] = sub_10020E300;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100015858;
    aBlock[3] = &unk_1003AF6A8;
    v12 = _Block_copy(aBlock);

    v13 = v8;

    [v9 createInheritanceAccessKeyForContact:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v14 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v14);
  }
}

void sub_10020D370(void *a1, char *a2, void (**a3)(const void *, void *))
{
  v72 = a2;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v69 = &v64 - v8;
  v67 = type metadata accessor for UUID();
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v67);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v65 = a3;
  _Block_copy(a3);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v71 = v12;
  v13 = type metadata accessor for Logger();
  v14 = sub_100008D04(v13, qword_1003FAAA0);
  v15 = a1;
  v68 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74[0] = v70;
    *v18 = 136315394;
    v73 = type metadata accessor for InheritanceRequestManager();
    sub_100005814(&unk_1003E30E0, qword_1003468E0);
    v19 = String.init<A>(describing:)();
    v21 = sub_10021145C(v19, v20, v74);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = [v15 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10020E6A0(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = v6;
    v24 = v5;
    v25 = v15;
    v26 = v11;
    v27 = v67;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = v26;
    v32 = v27;
    v11 = v26;
    v15 = v25;
    v5 = v24;
    v6 = v23;
    (*(v66 + 8))(v31, v32);
    v33 = sub_10021145C(v28, v30, v74);

    *(v18 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - Removing Beneficiary with beneficiaryID: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  v34 = objc_allocWithZone(type metadata accessor for InheritanceInviteAnalyticsEvent());
  sub_100005814(&qword_1003E30D0, &unk_100340690);
  inited = swift_initStackObject();
  v64 = xmmword_10033EB30;
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = 0x766F6D6552736177;
  *(inited + 40) = 0xEF6E6F6974634165;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  sub_1003093D0(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &unk_1003E8C10, &unk_100344990);
  v36 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_10005B8F8;
  v37[4] = v71;
  v38 = v69;
  (*(v6 + 16))(v69, &v72[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager__accountStore], v5);

  v70 = v36;
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v38, v5);
  v39 = [*(*sub_1000080F8(v74 v74[3]) + 16)];
  if (v39 && (v40 = v39, v41 = [v39 aa_altDSID], v40, v41))
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    sub_10000839C(v74);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Fetching beneficiary to delete...", v47, 2u);
    }

    v48 = v72;
    v49 = sub_1000080F8(&v72[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController], *&v72[OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_storageController + 24]);
    v50 = [v15 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v51 = swift_allocObject();
    v51[2] = v48;
    v51[3] = v15;
    v51[4] = v42;
    v51[5] = v44;
    v51[6] = sub_10020E290;
    v51[7] = v37;
    v52 = *v49;
    v53 = v15;
    v54 = v48;

    sub_100214780(v11, sub_10020E2EC, v51);

    (*(v66 + 8))(v11, v67);
  }

  else
  {
    sub_10000839C(v74);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "Error removing the beneficiary. No altDSID for owner found.", v57, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v73 = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v58 = v74[0];
    v59 = _convertErrorToNSError(_:)();
    v60 = AAUnderTest.getter();
    v61 = v70;
    if ((v60 & 1) == 0)
    {
      v62 = swift_initStackObject();
      *(v62 + 16) = v64;
      strcpy((v62 + 32), "numOfRelation");
      *(v62 + 46) = -4864;
      *(v62 + 48) = Int._bridgeToObjectiveC()();
      sub_1003093D0(v62);
      swift_setDeallocating();
      sub_100008D3C(v62 + 32, &unk_1003E8C10, &unk_100344990);
      dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
    }

    v63 = _convertErrorToNSError(_:)();
    v65[2](v65, v63);
  }
}

void sub_10020DC74(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  _Block_copy(a3);
  v12 = sub_1001FA348();
  if (v12)
  {
    v13 = v12;
    v14 = [a1 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = objc_allocWithZone(AKInheritanceAccessKey);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v17 = [v15 initWithBeneficiairyIdentifier:isa];

    (*(v7 + 8))(v10, v6);
    [v13 setAccessKey:v17];

    v18 = *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRequestManager_controller);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_10005B8F8;
    *(v19 + 24) = v11;
    aBlock[4] = sub_10020DF78;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    aBlock[3] = &unk_1003AF4C8;
    v20 = _Block_copy(aBlock);

    [v18 removeBeneficiaryWithInheritanceContext:v13 completion:v20];
    _Block_release(v20);
  }

  else
  {
    type metadata accessor for InheritanceError(0);
    aBlock[6] = 5;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10020E6A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = aBlock[0];
    v13 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v13);
  }
}

uint64_t sub_10020DFAC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E000()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = *(v6 + v1[7] + 8);

  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));

  return _swift_deallocObject(v0, v4 + 8);
}

void sub_10020E154(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + v7);
  v11 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001FE578(a1, a2 & 1, v8, v9, v2 + v6, v10, v11);
}

uint64_t sub_10020E23C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E29C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10020E354()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10020E3A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10020E40C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E470()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10020E504()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E558()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10020E5A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10020E61C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10020E648(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40);
}

uint64_t sub_10020E6A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10020E7C4(uint64_t a1, uint64_t a2)
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

void sub_10020E828(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t InheritanceSecurityController.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v3 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  return v3;
}

uint64_t InheritanceSecurityManager.__allocating_init(controller:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t InheritanceSecurityManager.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t InheritanceSecurityManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void InheritanceSecurityManager.preflightInheritanceRecovery(for:accessKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v4 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10020E828;
  v11[3] = &unk_1003AFAB8;
  v10 = _Block_copy(v11);

  [v8 preflightInheritanceRecoveryForBeneficiaryID:isa accessKey:a2 completion:v10];
  _Block_release(v10);
}

void sub_10020EE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v10 = *(v5 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13[4] = a2;
  v13[5] = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10020E828;
  v13[3] = a4;
  v12 = _Block_copy(v13);

  [v10 *a5];
  _Block_release(v12);
}

uint64_t sub_10020EF44(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = aBlock - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = *(a1 + 16);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a6;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = a7;
  v22 = _Block_copy(aBlock);

  [v20 *a8];
  _Block_release(v22);

  (*(v14 + 8))(v17, v13);
}

void sub_10020F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *(v5 + 16);
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100015858;
  v10[3] = a4;
  v9 = _Block_copy(v10);

  [v8 *a5];
  _Block_release(v9);
}

uint64_t InheritanceSecurityController.init()()
{
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v0 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  return v0;
}

uint64_t sub_10020F3A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void InheritanceSecurityController.createAccessKey(for:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(CDPContext) init];
  v14 = [a1 beneficiaryID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  [v13 setBeneficiaryIdentifier:isa];

  v16 = *(v4 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  aBlock[4] = sub_100213E64;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003AFB58;
  v18 = _Block_copy(aBlock);

  [v16 createInheritanceKeyWithContext:v13 completion:v18];
  _Block_release(v18);
}

uint64_t sub_10020F5B8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

void InheritanceSecurityController.recreateInheritanceKey(with:completion:)(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v51 = a1;
  v52 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v46 - v16;
  v18 = *(v14 + 16);
  v50 = v3;
  v18(&v46 - v16, v3 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v19 = [*(*sub_1000080F8(aBlock v54) + 16)];
  sub_10000839C(aBlock);
  if (v19)
  {
    sub_100212434(v19);
    if (v20)
    {
      v49 = v20;
      UUID.init()();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA40);
      (*(v6 + 16))(v10, v12, v5);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = a3;
        aBlock[0] = v46;
        *v24 = 136315138;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = *(v6 + 8);
        v48 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = v10;
        v30 = v5;
        v31 = v28;
        v28(v29, v30);
        v32 = sub_10021145C(v25, v27, aBlock);

        *(v24 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v22, v23, "Setting beneficiaryIdentifier to new otPeerID: %s", v24, 0xCu);
        sub_10000839C(v46);
        a3 = v47;
      }

      else
      {

        v38 = *(v6 + 8);
        v48 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39 = v10;
        v30 = v5;
        v31 = v38;
        v38(v39, v30);
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v41 = v49;
      [v49 setBeneficiaryIdentifier:isa];

      v42 = *(v50 + 16);
      v43 = UUID._bridgeToObjectiveC()().super.isa;
      v44 = swift_allocObject();
      *(v44 + 16) = v52;
      *(v44 + 24) = a3;
      v55 = sub_100212814;
      v56 = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015858;
      v54 = &unk_1003AFBA8;
      v45 = _Block_copy(aBlock);

      [v42 recreateInheritanceKeyWithContext:v41 newOTPeerID:v43 inheritanceKey:v51 completion:v45];
      _Block_release(v45);

      v31(v12, v30);
    }

    else
    {
      v52(0, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA40);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v36, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v57 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = aBlock[0];
    v52(0, aBlock[0]);
  }
}

void InheritanceSecurityController.removeAccessKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [objc_allocWithZone(CDPContext) init];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v7 setBeneficiaryIdentifier:isa];

  v9 = *(v4 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v12[4] = sub_1000D8510;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10020FEA8;
  v12[3] = &unk_1003AFBF8;
  v11 = _Block_copy(v12);

  [v9 deleteInheritanceAccessKeyWithContext:v7 completion:v11];
  _Block_release(v11);
}

void sub_10020FEA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void InheritanceSecurityController.preflightInheritanceRecovery(for:accessKey:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v55 = a2;
  v56 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = v12;
  v54 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  (*(v16 + 16))(&v48 - v18, v5 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v15);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v19, v15);
  v20 = [*(*sub_1000080F8(aBlock v58) + 16)];
  sub_10000839C(aBlock);
  if (v20)
  {
    v52 = v5;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v50 = *(v9 + 16);
    v50(v14, a1, v8);
    v22 = Logger.logObject.getter();
    v23 = v9;
    v24 = static os_log_type_t.info.getter();
    v25 = os_log_type_enabled(v22, v24);
    v51 = a1;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v48 = v20;
      v27 = v26;
      v28 = swift_slowAlloc();
      v49 = a4;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = v23;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      (*(v30 + 8))(v14, v8);
      v34 = sub_10021145C(v31, v33, aBlock);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v22, v24, "Preflighting Inheritance Recovery for beneficiaryID: %s", v27, 0xCu);
      sub_10000839C(v29);
      a4 = v49;

      v20 = v48;

      v35 = v30;
    }

    else
    {

      (*(v23 + 8))(v14, v8);
      v35 = v23;
    }

    sub_100212434(v20);
    if (v41)
    {
      v42 = v41;
      v43 = *(v52 + 16);
      v44 = v54;
      v50(v54, v51, v8);
      v45 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v56;
      *(v46 + 24) = a4;
      (*(v35 + 32))(v46 + v45, v44, v8);
      v59 = sub_100212840;
      v60 = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      v58 = &unk_1003AFC48;
      v47 = _Block_copy(aBlock);

      [v43 validateAccessKey:v55 withContext:v42 completion:v47];
      _Block_release(v47);
    }

    else
    {
      v56();
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100008D04(v36, qword_1003FAA40);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v39, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v61 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v40 = aBlock[0];
    (v56)(aBlock[0]);
  }
}

uint64_t sub_100210698(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    a2(a1);
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAA0);
    (*(v8 + 16))(v11, a4, v7);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v8 + 8))(v11, v7);
      v20 = sub_10021145C(v17, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Inheritance Preflight successful for beneficiaryID: %s", v16, 0xCu);
      sub_10000839C(v21);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return (a2)(0);
  }
}

void InheritanceSecurityController.checkInheritanceKey(for:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &aBlock[-1] - v10;
  (*(v8 + 16))(&aBlock[-1] - v10, v4 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v12 = [*(*sub_1000080F8(aBlock v30) + 16)];
  sub_10000839C(aBlock);
  if (!v12)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA40);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Not logged in to AppleAccount, unable to fetch. checkInheritanceKey aborted.", v23, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v33 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = aBlock[0];
    v13 = aBlock[0];
    goto LABEL_10;
  }

  sub_100212434(v12);
  if (!v13)
  {
LABEL_10:
    a2(v13);

    return;
  }

  v14 = v13;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v14 setBeneficiaryIdentifier:isa];

  v16 = *(v4 + 16);
  if ([v16 respondsToSelector:Selector.init(_:)()])
  {
    v17 = UUID._bridgeToObjectiveC()().super.isa;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v31 = sub_100212844;
    v32 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    v30 = &unk_1003AFC98;
    v19 = _Block_copy(aBlock);

    [v16 checkInheritanceKey:v14 inheritanceKeyUUID:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "checkInheritanceKey spi not found on InheritanceTrustController", v27, 2u);
    }

    a2(0);
  }
}

uint64_t sub_100210F44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAA0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Inheritance Check Inheritance Key results: %@", v7, 0xCu);
    sub_100083380(v8);
  }

  return a2(a1);
}

uint64_t InheritanceSecurityController.deinit()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__urlBagProvider;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InheritanceSecurityController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__urlBagProvider;
  v4 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_10021138C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100211400(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10021145C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10021145C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100211528(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000DB1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000839C(v11);
  return v7;
}

unint64_t sub_100211528(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100211634(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100211634(uint64_t a1, unint64_t a2)
{
  v4 = sub_100211680(a1, a2);
  sub_1002117B0(&off_1003A3720);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100211680(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10007BAB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10007BAB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1002117B0(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10021189C(result, v12, 1, v3);
  v3 = result;
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10021189C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100211990(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unsigned __int8 *sub_1002119A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100211F2C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100211F2C()
{
  v0 = String.subscript.getter();
  v4 = sub_100211FAC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100211FAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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
  v11 = sub_10007BAB8(v9, 0);
  v12 = sub_100212104(v15, (v11 + 4), v10, a1, a2, a3, a4);

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

unint64_t sub_100212104(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10018F0F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10018F0F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
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
  return result;
}

unint64_t sub_100212324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005814(&qword_1003E3460, qword_1003469E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100213DB0(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1003084DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100070AF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100212434(void *a1)
{
  v2 = [a1 aa_altDSID];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() contextForAccountWithAltDSID:v4];

  if (v5)
  {
    v6 = [a1 aa_personID];
    if (!v6)
    {
LABEL_78:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    v12 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {

      return;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      v38 = 0;
      v16 = sub_1002119A0(v8, v10, 10);
      v34 = v36;
LABEL_68:

      if ((v34 & 1) == 0)
      {
        v35 = [objc_allocWithZone(NSNumber) initWithInteger:v16];
        [v5 setDsid:v35];
      }

      return;
    }

    if ((v10 & 0x2000000000000000) != 0)
    {
      v37[0] = v8;
      v37[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v11)
        {
          if (--v11)
          {
            v16 = 0;
            v26 = v37 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v11)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_66;
        }

        goto LABEL_77;
      }

      if (v8 != 45)
      {
        if (v11)
        {
          v16 = 0;
          v31 = v37;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }

      if (v11)
      {
        if (--v11)
        {
          v16 = 0;
          v20 = v37 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v11)
            {
              goto LABEL_67;
            }
          }
        }

        goto LABEL_66;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *v14;
      if (v15 == 43)
      {
        if (v12 >= 1)
        {
          v11 = v12 - 1;
          if (v12 != 1)
          {
            v16 = 0;
            if (v14)
            {
              v23 = v14 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_66;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_66;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_66;
                }

                ++v23;
                if (!--v11)
                {
                  goto LABEL_67;
                }
              }
            }

            goto LABEL_58;
          }

          goto LABEL_66;
        }

        goto LABEL_76;
      }

      if (v15 != 45)
      {
        if (v12)
        {
          v16 = 0;
          if (v14)
          {
            while (1)
            {
              v29 = *v14 - 48;
              if (v29 > 9)
              {
                goto LABEL_66;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_66;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_66;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_58;
        }

LABEL_66:
        v16 = 0;
        LOBYTE(v11) = 1;
        goto LABEL_67;
      }

      if (v12 >= 1)
      {
        v11 = v12 - 1;
        if (v12 != 1)
        {
          v16 = 0;
          if (v14)
          {
            v17 = v14 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_66;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_66;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_66;
              }

              ++v17;
              if (!--v11)
              {
                goto LABEL_67;
              }
            }
          }

LABEL_58:
          LOBYTE(v11) = 0;
LABEL_67:
          v38 = v11;
          v34 = v11;
          goto LABEL_68;
        }

        goto LABEL_66;
      }

      __break(1u);
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }
}

uint64_t sub_100212814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t type metadata accessor for InheritanceSecurityController()
{
  result = qword_1003E3338;
  if (!qword_1003E3338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002128C4()
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002129CC(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v54 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v49 - v16;
  v55 = swift_allocObject();
  *(v55 + 16) = a3;
  v18 = *(v14 + 16);
  v53 = a2;
  v18(v17, a2 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v13);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v17, v13);
  v19 = [*(*sub_1000080F8(aBlock v57) + 16)];
  sub_10000839C(aBlock);
  if (v19)
  {
    sub_100212434(v19);
    if (v20)
    {
      v52 = v20;
      UUID.init()();
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100008D04(v21, qword_1003FAA40);
      (*(v6 + 16))(v10, v12, v5);
      v22 = Logger.logObject.getter();
      v23 = v5;
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v24))
      {
        v25 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v25 = 136315138;
        sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v23;
        v29 = v28;
        v30 = *(v6 + 8);
        v51 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = v10;
        v32 = v27;
        v30(v31, v27);
        v33 = sub_10021145C(v26, v29, aBlock);

        *(v25 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v22, v24, "Setting beneficiaryIdentifier to new otPeerID: %s", v25, 0xCu);
        sub_10000839C(v50);

        v34 = v30;
      }

      else
      {

        v34 = *(v6 + 8);
        v51 = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v41 = v10;
        v32 = v23;
        v34(v41, v23);
      }

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v43 = v52;
      [v52 setBeneficiaryIdentifier:isa];

      v44 = *(v53 + 16);
      v45 = UUID._bridgeToObjectiveC()().super.isa;
      v46 = swift_allocObject();
      v47 = v55;
      *(v46 + 16) = sub_1000080F0;
      *(v46 + 24) = v47;
      v58 = sub_100213E64;
      v59 = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100015858;
      v57 = &unk_1003AFE28;
      v48 = _Block_copy(aBlock);

      [v44 recreateInheritanceKeyWithContext:v43 newOTPeerID:v45 inheritanceKey:v54 completion:v48];
      _Block_release(v48);

      v34(v12, v32);
    }

    else
    {
      a3[2](a3, 0, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAA40);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v38, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v60 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = aBlock[0];
    v40 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v40);
  }
}

void sub_100213084(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v59 = a1;
  v60 = type metadata accessor for UUID();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v60);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v17 = swift_allocObject();
  v57 = a3;
  v58 = v17;
  *(v17 + 16) = a4;
  (*(v13 + 16))(v16, a3 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v12);
  _Block_copy(a4);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v16, v12);
  v18 = [*(*sub_1000080F8(aBlock v62) + 16)];
  sub_10000839C(aBlock);
  if (v18)
  {
    v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = a2;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAA0);
    v20 = v60;
    v53 = *(v7 + 16);
    v53(v11, v59, v60);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    v23 = os_log_type_enabled(v21, v22);
    v55 = v7;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v52 = a4;
      v25 = v24;
      v26 = swift_slowAlloc();
      v51 = v18;
      v27 = v26;
      aBlock[0] = v26;
      *v25 = 136315138;
      sub_1001F4E78(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v7 + 8))(v11, v60);
      v31 = sub_10021145C(v28, v30, aBlock);
      v20 = v60;

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "Preflighting Inheritance Recovery for beneficiaryID: %s", v25, 0xCu);
      sub_10000839C(v27);
      v18 = v51;

      a4 = v52;
    }

    else
    {

      (*(v7 + 8))(v11, v20);
    }

    sub_100212434(v18);
    if (v38)
    {
      v39 = v38;
      v40 = *(v57 + 16);
      v41 = v54;
      v53(v54, v59, v20);
      v42 = v55;
      v43 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v44 = swift_allocObject();
      v45 = v20;
      v46 = v44;
      v47 = v18;
      v48 = v58;
      *(v44 + 16) = sub_10005B8F8;
      *(v44 + 24) = v48;
      (*(v42 + 32))(v44 + v43, v41, v45);
      v63 = sub_100213EEC;
      v64 = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      v62 = &unk_1003AFD88;
      v49 = _Block_copy(aBlock);

      [v40 validateAccessKey:v56 withContext:v39 completion:v49];
      _Block_release(v49);
    }

    else
    {
      a4[2](a4, 0);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAA40);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Not logged in to AppleAccount, unable to fetch. Preflight Inheritance Recovery aborted.", v35, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v65 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v36 = aBlock[0];
    v37 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v37);
  }
}

void sub_100213728(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &aBlock[-1] - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  (*(v6 + 16))(v9, a2 + OBJC_IVAR____TtC13appleaccountd29InheritanceSecurityController__accountStore, v5);
  _Block_copy(a3);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v9, v5);
  v11 = [*(*sub_1000080F8(aBlock v30) + 16)];
  sub_10000839C(aBlock);
  if (!v11)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount, unable to fetch. checkInheritanceKey aborted.", v22, 2u);
    }

    type metadata accessor for InheritanceError(0);
    v33 = 10;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001F4E78(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = aBlock[0];
    v11 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v11);

    goto LABEL_11;
  }

  sub_100212434(v11);
  if (!v12)
  {
    a3[2](a3, 0);

LABEL_11:

    return;
  }

  v13 = v12;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v13 setBeneficiaryIdentifier:isa];

  v15 = *(a2 + 16);
  if ([v15 respondsToSelector:Selector.init(_:)()])
  {
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100008DD4;
    *(v17 + 24) = v10;
    v31 = sub_100213EF0;
    v32 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10020E828;
    v30 = &unk_1003AFD10;
    v18 = _Block_copy(aBlock);

    [v15 checkInheritanceKey:v13 inheritanceKeyUUID:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "checkInheritanceKey spi not found on InheritanceTrustController", v27, 2u);
    }

    a3[2](a3, 0);
  }
}

uint64_t sub_100213C40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100213D04(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100210698(a1, v4, v5, v6);
}

uint64_t sub_100213D78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100213DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100213F74@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v23 = v13;
    v24 = a5;
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    while (1)
    {
      sub_10023FBA0(v17, v15, a4);
      v19 = a1(v15);
      if (v5)
      {
        return sub_10023FC08(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_10023FC08(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a5 = v24;
        goto LABEL_10;
      }
    }

    a5 = v24;
    sub_10023FC6C(v15, v24, a4);
    v20 = 0;
LABEL_10:
    v13 = v23;
  }

  else
  {
    v20 = 1;
  }

  return (*(v11 + 56))(a5, v20, 1, v13);
}

uint64_t sub_10021418C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession();
    sub_10023F3A0(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession);
    result = Set.Iterator.init(_cocoa:)();
    v5 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a3 + 32);
    v7 = a3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a3 + 56);

    v9 = 0;
  }

  v21 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (v18)
    {
      while (1)
      {
        v27 = v18;
        v19 = a1(&v27);
        if (v4)
        {
          break;
        }

        if (v19)
        {
          goto LABEL_23;
        }

        v9 = v16;
        v10 = v17;
        v5 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for CustodianRecoverySession();
          swift_dynamicCast();
          v18 = v27;
          v16 = v9;
          v17 = v10;
          if (v27)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

LABEL_23:
      sub_10005A1DC();
    }

    else
    {
LABEL_20:
      sub_10005A1DC();
      return 0;
    }

    return v18;
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100214428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v30 = type metadata accessor for URL();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAA0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetching stored InheritanceInvitationRecords...", v19, 2u);
  }

  v20 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v9 + 8);
  v22 = v13;
  v23 = v30;
  v21(v22, v30);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v28;
  *(v24 + 24) = v25;
  (*(v5 + 16))(v8, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_100032934(v15, sub_10023ED30, v24);

  v21(v15, v23);
  return sub_10000839C(v31);
}

uint64_t sub_1002147BC(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v83 = a5;
  v84 = a4;
  v81 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v8 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v82 = (&v76 - v9);
  v10 = type metadata accessor for UUID();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v76 - v16;
  __chkstk_darwin(v15);
  v19 = &v76 - v18;
  v20 = type metadata accessor for InheritanceInvitationRecord();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAAA0);
    v32 = v79;
    v33 = v80;
    (*(v79 + 16))(v14, a3, v80);
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v36 = 136315394;
      sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      (*(v32 + 8))(v14, v33);
      v40 = sub_10021145C(v37, v39, &v86);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v85 = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = String.init<A>(describing:)();
      v43 = sub_10021145C(v41, v42, &v86);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Error fetching InheritanceInvitationRecord with\nbeneficiaryID: %s. Error: %s", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v32 + 8))(v14, v33);
    }

    v57 = v82;
    *v82 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v84(v57);
    v58 = &qword_1003E1290;
    v59 = &unk_1003444C0;
    v60 = v57;
  }

  else
  {
    __chkstk_darwin(v30);
    v77 = a3;
    *(&v76 - 2) = a3;
    v45 = v44;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for InheritanceInvitationRecord, type metadata accessor for InheritanceInvitationRecord, v44);
    v78 = v45;
    sub_100012D04(v45, v29, &qword_1003E4F40, &unk_1003446D0);
    if ((*(v21 + 48))(v29, 1, v20) == 1)
    {
      sub_100008D3C(v29, &qword_1003E4F40, &unk_1003446D0);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_100008D04(v46, qword_1003FAAA0);
      v47 = v79;
      v48 = v80;
      (*(v79 + 16))(v19, v77, v80);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v86 = v52;
        *v51 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (*(v47 + 8))(v19, v48);
        v56 = sub_10021145C(v53, v55, &v86);

        *(v51 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v49, v50, "No InheritanceInvitationRecord found with beneficiaryID: %s", v51, 0xCu);
        sub_10000839C(v52);
      }

      else
      {

        (*(v47 + 8))(v19, v48);
      }

      type metadata accessor for InheritanceError(0);
      v85 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v73 = v82;
      *v82 = v86;
      swift_storeEnumTagMultiPayload();
      v84(v73);
      sub_100008D3C(v73, &qword_1003E1290, &unk_1003444C0);
    }

    else
    {
      v61 = v24;
      sub_10023FC6C(v29, v24, type metadata accessor for InheritanceInvitationRecord);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100008D04(v62, qword_1003FAAA0);
      v64 = v79;
      v63 = v80;
      (*(v79 + 16))(v17, v77, v80);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v86 = v68;
        *v67 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        (*(v64 + 8))(v17, v63);
        v72 = sub_10021145C(v69, v71, &v86);

        *(v67 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v65, v66, "Found InheritanceInvitationRecord with beneficiaryID: %s", v67, 0xCu);
        sub_10000839C(v68);
      }

      else
      {

        (*(v64 + 8))(v17, v63);
      }

      v74 = v82;
      sub_10023FBA0(v61, v82, type metadata accessor for InheritanceInvitationRecord);
      swift_storeEnumTagMultiPayload();
      v84(v74);
      sub_100008D3C(v74, &qword_1003E1290, &unk_1003444C0);
      sub_10023FC08(v61, type metadata accessor for InheritanceInvitationRecord);
    }

    v58 = &qword_1003E4F40;
    v59 = &unk_1003446D0;
    v60 = v78;
  }

  return sub_100008D3C(v60, v58, v59);
}

uint64_t sub_100215214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceInvitationRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for InheritanceInvitationRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for InheritanceInvitationRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Saving InheritanceInvitationRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for InheritanceInvitationRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100232310(a1, sub_10023EAB0, v23);
}

uint64_t sub_1002154DC(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for InheritanceInvitationRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v28 - v13);
  sub_100012D04(a1, &v28 - v13, &qword_1003E1290, &unk_1003444C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v15;
      v31 = v29;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v31);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error saving InheritanceInvitationRecord : %s", v19, 0xCu);
      sub_10000839C(v29);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &qword_1003E1290, &unk_1003444C0);
  }

  else
  {
    sub_10023FC6C(v14, v7, type metadata accessor for InheritanceInvitationRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved InheritanceInvitationRecord.", v27, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v7, v12, type metadata accessor for InheritanceInvitationRecord);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &qword_1003E1290, &unk_1003444C0);
    return sub_10023FC08(v7, type metadata accessor for InheritanceInvitationRecord);
  }
}

uint64_t sub_100215918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceInvitationRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for InheritanceInvitationRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    type metadata accessor for UUID();
    v28 = a2;
    v17 = a3;
    v18 = a1;
    v19 = v3;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    sub_10023FC08(v11, type metadata accessor for InheritanceInvitationRecord);
    v23 = sub_10021145C(v20, v22, &v29);
    v4 = v19;
    a1 = v18;
    a3 = v17;
    a2 = v28;

    *(v15 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleting InheritanceInvitationRecord with beneficiaryID - %s...", v15, 0xCu);
    sub_10000839C(v16);
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for InheritanceInvitationRecord);
  }

  v24 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  v26 = *v24;
  sub_100083AA0(a2);
  sub_100238798(a1, sub_10023E8F4, v25);
}

uint64_t sub_100215BFC(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v32[1] = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (v32 - v15);
  sub_100012D04(a1, v32 - v15, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[2] = v17;
      v33 = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = a2;
      v26 = sub_10021145C(v23, v24, &v33);

      *(v21 + 4) = v26;
      a2 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error deleting InheritanceInvitationRecord : %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    if (a2)
    {
      *v14 = v17;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      a2(v14);

      return sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
    }

    else
    {
    }
  }

  else
  {
    (*(v6 + 32))(v9, v16, v5);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully deleted InheritanceInvitationRecord.", v31, 2u);
    }

    if (a2)
    {
      (*(v6 + 16))(v14, v9, v5);
      swift_storeEnumTagMultiPayload();
      a2(v14);
      sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_100216064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v30 = type metadata accessor for URL();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAA0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetching stored BeneficiaryInfoRecords...", v19, 2u);
  }

  v20 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v9 + 8);
  v22 = v13;
  v23 = v30;
  v21(v22, v30);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v28;
  *(v24 + 24) = v25;
  (*(v5 + 16))(v8, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_10003290C(v15, sub_10023E884, v24);

  v21(v15, v23);
  return sub_10000839C(v31);
}

uint64_t sub_1002163BC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, const char *a5, const char *a6)
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAA0);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v14 = String.init<A>(describing:)();
      v16 = sub_10021145C(v14, v15, &v25);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, a5, v12, 0xCu);
      sub_10000839C(v13);
    }

    v17 = a1;
    v18 = 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(a1 + 16);
      sub_1000399DC(a1, 0);
      _os_log_impl(&_mh_execute_header, v21, v22, a6, v23, 0xCu);
    }

    else
    {
      sub_1000399DC(a1, 0);
    }

    v17 = a1;
    v18 = 0;
  }

  return a3(v17, v18);
}

uint64_t sub_100216650(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v31 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v31);
  v7 = &v28 - v6;
  v32 = type metadata accessor for URL();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAA0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetching stored BeneficiaryInfoRecords...", v18, 2u);
  }

  v19 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v20 = *(v8 + 8);
  v21 = v32;
  v20(v12, v32);
  v22 = swift_allocObject();
  v23 = v30;
  v22[2] = v29;
  v22[3] = v23;
  v22[4] = v3;
  v24 = *v19 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v25 = v31;
  (*(v4 + 16))(v7, v24, v31);

  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v25);
  v26 = *sub_1000080F8(v33, v33[3]);
  sub_10003290C(v14, sub_10023E874, v22);

  v20(v14, v21);
  return sub_10000839C(v33);
}

uint64_t sub_1002169B8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v57 = a1;
  v58 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(v58 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v58);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v54 - v14;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v54 - v19;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    v22 = v57;
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_1000399DC(v22, 1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61 = v22;
      v62[0] = v26;
      *v25 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v27 = String.init<A>(describing:)();
      v29 = sub_10021145C(v27, v28, v62);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error fetching BeneficiaryInfoRecords : %s", v25, 0xCu);
      sub_10000839C(v26);
    }

    return a3(v22, 1);
  }

  else
  {
    (*(v17 + 16))(v20, a5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController__accountStore, v16);
    Dependency.wrappedValue.getter();
    (*(v17 + 8))(v20, v16);
    v31 = [*(*sub_1000080F8(v62 v62[3]) + 16)];
    if (v31 && (v32 = v31, v33 = [v31 aa_altDSID], v32, v33))
    {
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = v58;
    sub_10000839C(v62);
    v38 = *(v57 + 16);
    v56 = v38;
    if (v38)
    {
      v54[1] = a4;
      v55 = a3;
      v39 = *(v9 + 72);
      v59 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v40 = v57 + v59;
      v41 = _swiftEmptyArrayStorage;
      v42 = v38;
      v60 = v13;
      do
      {
        sub_10023FBA0(v40, v15, type metadata accessor for BeneficiaryInfoRecord);
        if (v36 && ((v43 = &v15[*(v37 + 24)], *v43 == v34) ? (v44 = v36 == *(v43 + 1)) : (v44 = 0), v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          sub_10023FC6C(v15, v13, type metadata accessor for BeneficiaryInfoRecord);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62[0] = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1002E0438(0, v41[2] + 1, 1);
            v37 = v58;
            v41 = v62[0];
          }

          v47 = v41[2];
          v46 = v41[3];
          if (v47 >= v46 >> 1)
          {
            sub_1002E0438(v46 > 1, v47 + 1, 1);
            v37 = v58;
            v41 = v62[0];
          }

          v41[2] = v47 + 1;
          v48 = v41 + v59 + v47 * v39;
          v13 = v60;
          sub_10023FC6C(v60, v48, type metadata accessor for BeneficiaryInfoRecord);
        }

        else
        {
          sub_10023FC08(v15, type metadata accessor for BeneficiaryInfoRecord);
        }

        v40 += v39;
        --v42;
      }

      while (v42);
      a3 = v55;
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100008D04(v49, qword_1003FAAA0);
    v50 = v57;
    sub_1000BCBF4(v57, 0);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218240;
      *(v53 + 4) = v56;
      sub_1000399DC(v50, 0);
      *(v53 + 12) = 2048;
      *(v53 + 14) = v41[2];

      _os_log_impl(&_mh_execute_header, v51, v52, "Successfully fetched %ld\nBeneficiaryInfoRecords of which %ld are beneficiaries", v53, 0x16u);
    }

    else
    {

      sub_1000399DC(v50, 0);
    }

    a3(v41, 0);
  }
}

uint64_t sub_100217054(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t *a5, uint64_t a6, void (*a7)(void, void))
{
  v38 = a4;
  v44 = a3;
  v43 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v40 = v15;
  v41 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v36 - v16;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAA0);
  v19 = *(v12 + 16);
  v42 = a1;
  v39 = v19;
  v19(v17, a1, v11);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = a7;
    v23 = v22;
    v36[0] = swift_slowAlloc();
    v45 = v36[0];
    *v23 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v36[1] = a5;
    v25 = a6;
    v27 = v26;
    (*(v12 + 8))(v17, v11);
    v28 = sub_10021145C(v24, v27, &v45);
    a6 = v25;

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, v38, v23, 0xCu);
    sub_10000839C(v36[0]);

    a7 = v37;
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v29 = v41;
  v39(v41, v42, v11);
  v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v31 = (v40 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  (*(v12 + 32))(v32 + v30, v29, v11);
  v33 = (v32 + v31);
  v34 = v44;
  *v33 = v43;
  v33[1] = v34;

  a7(a6, v32);
}

uint64_t sub_1002173B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v78 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v8 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v10 = (&v72 - v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = type metadata accessor for BeneficiaryInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81 = a1;
      v82 = v34;
      *v33 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, &v82);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error fetching BeneficiaryInfoRecord : %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v80(v10);
    v38 = &unk_1003E10A0;
    v39 = &unk_100344480;
    v40 = v10;
  }

  else
  {
    v74 = v10;
    __chkstk_darwin(v29);
    v73 = a3;
    *(&v72 - 2) = a3;
    v42 = v41;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for BeneficiaryInfoRecord, type metadata accessor for BeneficiaryInfoRecord, v41);
    v75 = v42;
    sub_100012D04(v42, v28, &unk_1003E4F30, &unk_1003444E0);
    if ((*(v20 + 48))(v28, 1, v19) == 1)
    {
      sub_100008D3C(v28, &unk_1003E4F30, &unk_1003444E0);
      v43 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAAA0);
      v45 = v77;
      (*(v77 + 16))(v18, v73, v43);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v74;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = v45;
        v52 = swift_slowAlloc();
        v82 = v52;
        *v50 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (*(v51 + 8))(v18, v43);
        v56 = sub_10021145C(v53, v55, &v82);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "No BeneficiaryInfoRecord found with beneficiaryID: %s", v50, 0xCu);
        sub_10000839C(v52);
      }

      else
      {

        (*(v45 + 8))(v18, v43);
      }

      type metadata accessor for InheritanceError(0);
      v81 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v49 = v82;
      swift_storeEnumTagMultiPayload();
      v80(v49);
      sub_100008D3C(v49, &unk_1003E10A0, &unk_100344480);
    }

    else
    {
      sub_10023FC6C(v28, v23, type metadata accessor for BeneficiaryInfoRecord);
      v57 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100008D04(v58, qword_1003FAAA0);
      v59 = v77;
      (*(v77 + 16))(v16, v73, v57);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v74;
      if (v62)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v82 = v65;
        *v64 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v59;
        v69 = v68;
        (*(v67 + 8))(v16, v57);
        v70 = sub_10021145C(v66, v69, &v82);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v60, v61, "Found BeneficiaryInfoRecord with beneficiaryID: %s", v64, 0xCu);
        sub_10000839C(v65);
      }

      else
      {

        (*(v59 + 8))(v16, v57);
      }

      sub_10023FBA0(v23, v63, type metadata accessor for BeneficiaryInfoRecord);
      swift_storeEnumTagMultiPayload();
      v80(v63);
      sub_100008D3C(v63, &unk_1003E10A0, &unk_100344480);
      sub_10023FC08(v23, type metadata accessor for BeneficiaryInfoRecord);
    }

    v38 = &unk_1003E4F30;
    v39 = &unk_1003444E0;
    v40 = v75;
  }

  return sub_100008D3C(v40, v38, v39);
}

void sub_100217D14(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v12 = type metadata accessor for BeneficiaryInfoRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v49 - v19;
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v50 = a1;
      v51 = v25;
      *v24 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v26 = String.init<A>(describing:)();
      v28 = sub_10021145C(v26, v27, &v51);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Error fetching BeneficiaryInfoRecord : %s", v24, 0xCu);
      sub_10000839C(v25);
    }

    type metadata accessor for InheritanceError(0);
    v50 = 2107;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v51;
    a5(v51);
  }

  else
  {
    v49[1] = a6;
    v30 = a5;
    v31 = *(a1 + 16);
    if (v31)
    {
      v32 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v33 = *(v13 + 72);
      while (1)
      {
        sub_10023FBA0(v32, v16, type metadata accessor for BeneficiaryInfoRecord);
        v34 = &v16[*(v12 + 20)];
        v35 = *(v34 + 1);
        if (v35)
        {
          v36 = *v34 == a3 && v35 == a4;
          if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }
        }

        sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
        v32 += v33;
        if (!--v31)
        {
          goto LABEL_21;
        }
      }

      sub_10023FC6C(v16, v20, type metadata accessor for BeneficiaryInfoRecord);
      (*(v13 + 56))(v20, 0, 1, v12);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100008D04(v37, qword_1003FAAA0);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v51 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_10021145C(a3, a4, &v51);
        _os_log_impl(&_mh_execute_header, v38, v39, "Found BeneficiaryInfoRecord with handle: %s", v40, 0xCu);
        sub_10000839C(v41);
      }

      type metadata accessor for InheritanceError(0);
      v42 = 6;
    }

    else
    {
LABEL_21:
      (*(v13 + 56))(v20, 1, 1, v12);
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_100008D04(v43, qword_1003FAAA0);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v51 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_10021145C(a3, a4, &v51);
        _os_log_impl(&_mh_execute_header, v44, v45, "No BeneficiaryInfoRecord found with handle: %s", v46, 0xCu);
        sub_10000839C(v47);
      }

      type metadata accessor for InheritanceError(0);
      v42 = 3;
    }

    v50 = v42;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v51;
    v30(v51);

    sub_100008D3C(v20, &unk_1003E4F30, &unk_1003444E0);
  }
}

uint64_t sub_1002183D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for BeneficiaryInfoRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for BeneficiaryInfoRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Saving BeneficiaryInfoRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for BeneficiaryInfoRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100231638(a1, sub_10023E5F4, v23);
}

uint64_t sub_10021869C(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BeneficiaryInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v28 - v13);
  sub_100012D04(a1, &v28 - v13, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v15;
      v31 = v29;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v31);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error saving BeneficiaryInfoRecord : %s", v19, 0xCu);
      sub_10000839C(v29);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v14, v7, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved BeneficiaryInfoRecord.", v27, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v7, v12, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &unk_1003E10A0, &unk_100344480);
    return sub_10023FC08(v7, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_100218AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BeneficiaryInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for BeneficiaryInfoRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for BeneficiaryInfoRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleting BeneficiaryInfoRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for BeneficiaryInfoRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100238260(a1, sub_10023E38C, v23);
}

uint64_t sub_100218DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a3;
  v42 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v40 = v11;
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BeneficiaryInfoRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAA0);
  sub_10023FBA0(a1, v16, type metadata accessor for BeneficiaryInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v39 = a1;
    v21 = v20;
    v37 = swift_slowAlloc();
    v38 = a2;
    v43 = v37;
    *v21 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v8;
    v24 = v12;
    v25 = v5;
    v27 = v26;
    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
    v28 = sub_10021145C(v22, v27, &v43);
    v5 = v25;
    v12 = v24;
    v8 = v23;

    *(v21 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Adding OTPeerID to BeneficiaryInfoRecord with beneficiaryID - %s...", v21, 0xCu);
    sub_10000839C(v37);
    a2 = v38;

    a1 = v39;
  }

  else
  {

    sub_10023FC08(v16, type metadata accessor for BeneficiaryInfoRecord);
  }

  (*(v9 + 16))(v12, a2, v8);
  v29 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v30 = swift_allocObject();
  (*(v9 + 32))(v30 + v29, v12, v8);
  v31 = sub_1000080F8((v5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v5 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 16) = v41;
  *(v32 + 24) = v33;
  v34 = *v31;

  sub_100278BBC(a1, sub_10023E304, v30, 0, sub_10023E384, v32);
}

id sub_100219190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v106 = a2;
  v98 = a3;
  v4 = type metadata accessor for Date.ISO8601FormatStyle();
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  __chkstk_darwin(v4);
  v89 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v88 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v100 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003DA110, &qword_10033F230);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v102 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v86 - v19;
  v21 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v99 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v86 - v25;
  v27 = type metadata accessor for BeneficiaryInfoRecord();
  v28 = *(*(v27 - 1) + 64);
  __chkstk_darwin(v27);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v30, type metadata accessor for BeneficiaryInfoRecord);
  v31 = *(v12 + 16);
  v31(v26, v106, v11);
  v101 = v12;
  v32 = v12;
  v33 = v11;
  v34 = *(v32 + 56);
  v106 = v26;
  v104 = v32 + 56;
  v34(v26, 0, 1, v33);
  Date.init()();
  v103 = v8;
  v35 = *(v8 + 56);
  v105 = v20;
  v36 = v7;
  v35(v20, 0, 1, v7);
  result = [objc_opt_self() currentInfo];
  if (result)
  {
    v38 = result;
    v39 = [result buildVersion];

    v97 = v36;
    if (v39)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v95 = v41;
      v96 = v40;
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    v42 = v98;
    v43 = v99;
    v99 = v27[11];
    v87 = v34;
    v34(&v98[v99], 1, 1, v33);
    v31(v42, v30, v33);
    v44 = v27[6];
    v46 = *&v30[v44];
    v45 = *&v30[v44 + 8];
    v47 = &v42[v44];
    *v47 = v46;
    *(v47 + 1) = v45;
    v94 = v45;
    v31(&v42[v27[8]], &v30[v27[8]], v33);
    v48 = v27[9];
    v50 = *&v30[v48];
    v49 = *&v30[v48 + 8];
    v51 = &v42[v48];
    *v51 = v50;
    v51[1] = v49;
    v52 = v27[5];
    v53 = *&v30[v52];
    v54 = *&v30[v52 + 8];
    v55 = &v42[v52];
    *v55 = v53;
    *(v55 + 1) = v54;
    v56 = v27[7];
    v58 = *&v30[v56];
    v57 = *&v30[v56 + 8];
    v59 = &v42[v56];
    v92 = v57;
    v93 = v58;
    *v59 = v58;
    v59[1] = v57;
    v42[v27[10]] = v30[v27[10]];
    sub_100012D04(v106, v43, &qword_1003D8B60, &unk_10033F210);
    v60 = v101;
    if ((*(v101 + 48))(v43, 1, v33) == 1)
    {

      sub_100015D6C(v50, v49);

      sub_100015D6C(v93, v92);
      sub_100008D3C(v43, &qword_1003D8B60, &unk_10033F210);
      sub_10009585C(&v30[v27[11]], &v42[v99]);
    }

    else
    {
      v61 = *(v60 + 32);
      v61(v100, v43, v33);

      sub_100015D6C(v50, v49);

      sub_100015D6C(v93, v92);
      v62 = v99;
      sub_100008D3C(&v42[v99], &qword_1003D8B60, &unk_10033F210);
      v61(&v42[v62], v100, v33);
      v87(&v42[v62], 0, 1, v33);
    }

    v63 = v42;
    v64 = &v42[v27[12]];
    v65 = v105;
    v66 = v102;
    sub_100012D04(v105, v102, &qword_1003DA110, &qword_10033F230);
    v67 = v103;
    v68 = v97;
    if ((*(v103 + 48))(v66, 1, v97) == 1)
    {
      sub_100008D3C(v65, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v106, &qword_1003D8B60, &unk_10033F210);
      sub_100008D3C(v66, &qword_1003DA110, &qword_10033F230);
      v69 = &v30[v27[12]];
      v70 = *v69;
      v71 = v69[1];
    }

    else
    {
      v72 = v88;
      (*(v67 + 32))(v88, v66, v68);
      v73 = v89;
      sub_100195ACC(v89);
      v70 = Date.ISO8601Format(_:)();
      v71 = v74;
      (*(v90 + 8))(v73, v91);
      (*(v67 + 8))(v72, v68);
      sub_100008D3C(v105, &qword_1003DA110, &qword_10033F230);
      sub_100008D3C(v106, &qword_1003D8B60, &unk_10033F210);
    }

    *v64 = v70;
    v64[1] = v71;
    v75 = v27[14];
    v76 = &v63[v75];
    v77 = v95;
    v78 = v96;
    if (!v95)
    {
      v79 = &v30[v75];
      v78 = *v79;
      v80 = *(v79 + 1);
    }

    *v76 = v78;
    v76[1] = v77;
    v81 = v27[13];
    v82 = *&v30[v81];
    v83 = v30[v81 + 8];
    result = sub_10023FC08(v30, type metadata accessor for BeneficiaryInfoRecord);
    if (v83)
    {
      v84 = 1;
LABEL_16:
      v85 = &v63[v81];
      *v85 = v84;
      v85[8] = 0;
      return result;
    }

    v84 = v82 + 1;
    if (v82 != -1)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100219978(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v39 - v11;
  v13 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v17 = (v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v19 = (v39 - v18);
  sub_100012D04(a1, v39 - v18, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAAA0);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = a2;
      v26 = swift_slowAlloc();
      *v24 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v24 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "CKRecord record was not updated with otPeerID %@", v24, 0xCu);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);
      a2 = v25;
    }

    *v17 = v20;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v17);

    return sub_100008D3C(v17, &unk_1003E10A0, &unk_100344480);
  }

  else
  {
    sub_10023FC6C(v19, v12, type metadata accessor for BeneficiaryInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v39[2] = v13;
    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    sub_10023FBA0(v12, v10, type metadata accessor for BeneficiaryInfoRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      v34 = sub_1001E6794();
      v39[1] = a3;
      v35 = a2;
      v37 = v36;
      sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
      v38 = sub_10021145C(v34, v37, &v40);
      a2 = v35;

      *(v32 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v30, v31, "CKRecord record updated with otPeerID. %s!", v32, 0xCu);
      sub_10000839C(v33);
    }

    else
    {

      sub_10023FC08(v10, type metadata accessor for BeneficiaryInfoRecord);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v12, v17, type metadata accessor for BeneficiaryInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v17);
    sub_100008D3C(v17, &unk_1003E10A0, &unk_100344480);
    return sub_10023FC08(v12, type metadata accessor for BeneficiaryInfoRecord);
  }
}

uint64_t sub_100219E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a2;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v63 = v53 - v9;
  v10 = type metadata accessor for BenefactorInfoRecord();
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v61 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = v53 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = v53 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v53 - v21;
  __chkstk_darwin(v20);
  v24 = v53 - v23;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100008D04(v25, qword_1003FAAA0);
  sub_10023FBA0(a1, v24, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(a1, v22, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(a1, v19, type metadata accessor for BenefactorInfoRecord);
  v62 = a1;
  sub_10023FBA0(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v58 = a3;
    v29 = v28;
    v56 = swift_slowAlloc();
    v65 = v56;
    *v29 = 136315906;
    v53[1] = type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v57 = v4;
    v55 = v26;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v27;
    v32 = v31;
    sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
    v33 = sub_10021145C(v30, v32, &v65);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = v59;
    v35 = &v22[*(v59 + 20)];
    v36 = *v35;
    v37 = v35[1];

    sub_10023FC08(v22, type metadata accessor for BenefactorInfoRecord);
    v38 = sub_10021145C(v36, v37, &v65);

    *(v29 + 14) = v38;
    *(v29 + 22) = 2080;
    v39 = &v19[*(v34 + 28)];
    v4 = v57;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v41;
    sub_10023FC08(v19, type metadata accessor for BenefactorInfoRecord);
    v43 = sub_10021145C(v40, v42, &v65);

    *(v29 + 24) = v43;
    *(v29 + 32) = 2048;
    v44 = *&v16[*(v34 + 24)];
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);
    *(v29 + 34) = v44;
    v45 = v55;
    _os_log_impl(&_mh_execute_header, v55, v54, "Fetching stored BenefactorInfoRecord with beneficiaryID: %s\nhandle: %s\nrecordID: %s\nstatus: %ld", v29, 0x2Au);
    swift_arrayDestroy();

    a3 = v58;
  }

  else
  {
    sub_10023FC08(v16, type metadata accessor for BenefactorInfoRecord);

    sub_10023FC08(v19, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v22, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v24, type metadata accessor for BenefactorInfoRecord);
  }

  v46 = type metadata accessor for TaskPriority();
  v47 = v63;
  (*(*(v46 - 8) + 56))(v63, 1, 1, v46);
  v48 = v61;
  sub_10023FBA0(v62, v61, type metadata accessor for BenefactorInfoRecord);
  v49 = (*(v60 + 80) + 40) & ~*(v60 + 80);
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v4;
  sub_10023FC6C(v48, v50 + v49, type metadata accessor for BenefactorInfoRecord);
  v51 = (v50 + ((v12 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v51 = v64;
  v51[1] = a3;

  sub_1000BCD5C(0, 0, v47, &unk_100346A80, v50);
}

uint64_t sub_10021A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v7[7] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[8] = swift_task_alloc();
  v10 = type metadata accessor for BenefactorInfoRecord();
  v7[9] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021A530, 0, 0);
}

uint64_t sub_10021A530()
{
  v1 = *sub_1000080F8((v0[3] + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v0[3] + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_10021A5F8;
  v3 = v0[14];
  v4 = v0[4];

  return sub_10022E8B0(v3, v4);
}

uint64_t sub_10021A5F8()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_10021AB4C;
  }

  else
  {
    v3 = sub_10021A70C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10021A70C()
{
  v44 = v0;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[4];
  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAA0);
  sub_10023FBA0(v5, v2, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v1, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v3, type metadata accessor for BenefactorInfoRecord);
  sub_10023FBA0(v5, v4, type metadata accessor for BenefactorInfoRecord);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  if (v9)
  {
    v40 = v0[9];
    v42 = v0[10];
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v13 = 136315906;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v41 = v8;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
    v17 = sub_10021145C(v14, v16, &v43);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = (v11 + v40[5]);
    v19 = *v18;
    v20 = v18[1];

    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    v21 = sub_10021145C(v19, v20, &v43);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = v12 + v40[7];
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_10023FC08(v12, type metadata accessor for BenefactorInfoRecord);
    v26 = sub_10021145C(v23, v25, &v43);

    *(v13 + 24) = v26;
    *(v13 + 32) = 2048;
    v27 = *(v42 + v40[6]);
    sub_10023FC08(v42, type metadata accessor for BenefactorInfoRecord);
    *(v13 + 34) = v27;
    _os_log_impl(&_mh_execute_header, v7, v41, "Successfully fetched BenefactorInfoRecord with beneficiaryID: %s\nhandle: %s\nrecordID: %s\nstatus: %ld", v13, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(v0[10], type metadata accessor for BenefactorInfoRecord);

    sub_10023FC08(v12, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    sub_10023FC08(v10, type metadata accessor for BenefactorInfoRecord);
  }

  v28 = v0[14];
  v29 = v0[8];
  v31 = v0[5];
  v30 = v0[6];
  sub_10023FBA0(v28, v29, type metadata accessor for BenefactorInfoRecord);
  swift_storeEnumTagMultiPayload();
  v31(v29);
  sub_100008D3C(v29, &unk_1003E1DD0, &qword_1003444D0);
  sub_10023FC08(v28, type metadata accessor for BenefactorInfoRecord);
  v33 = v0[13];
  v32 = v0[14];
  v35 = v0[11];
  v34 = v0[12];
  v36 = v0[10];
  v37 = v0[8];

  v38 = v0[1];

  return v38();
}

uint64_t sub_10021AB4C()
{
  v24 = v0;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v8 = String.init<A>(describing:)();
    v10 = sub_10021145C(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error fetching BenefactorInfoRecord : %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  v11 = v0[7];
  v12 = v0[8];
  v14 = v0[5];
  v13 = v0[6];
  *v12 = v0[16];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v14(v12);

  sub_100008D3C(v12, &unk_1003E1DD0, &qword_1003444D0);
  v16 = v0[13];
  v15 = v0[14];
  v18 = v0[11];
  v17 = v0[12];
  v19 = v0[10];
  v20 = v0[8];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10021AD90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v30 = type metadata accessor for URL();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAA0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetching stored BenefactorInfoRecords...", v19, 2u);
  }

  v20 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v9 + 8);
  v22 = v13;
  v23 = v30;
  v21(v22, v30);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v28;
  *(v24 + 24) = v25;
  (*(v5 + 16))(v8, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_1000328E4(v15, sub_10023DD00, v24);

  v21(v15, v23);
  return sub_10000839C(v31);
}

uint64_t sub_10021B124(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v78 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v8 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v10 = (&v72 - v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = type metadata accessor for BenefactorInfoRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81 = a1;
      v82 = v34;
      *v33 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, &v82);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error fetching BenefactorInfoRecord : %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v80(v10);
    v38 = &unk_1003E1DD0;
    v39 = &qword_1003444D0;
    v40 = v10;
  }

  else
  {
    v74 = v10;
    __chkstk_darwin(v29);
    v73 = a3;
    *(&v72 - 2) = a3;
    v42 = v41;
    sub_100213F74(sub_10023DCD0, a1, type metadata accessor for BenefactorInfoRecord, type metadata accessor for BenefactorInfoRecord, v41);
    v75 = v42;
    sub_100012D04(v42, v28, &unk_1003E1DE0, &qword_1003444D8);
    if ((*(v20 + 48))(v28, 1, v19) == 1)
    {
      sub_100008D3C(v28, &unk_1003E1DE0, &qword_1003444D8);
      v43 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAAA0);
      v45 = v77;
      (*(v77 + 16))(v18, v73, v43);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v74;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = v45;
        v52 = swift_slowAlloc();
        v82 = v52;
        *v50 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (*(v51 + 8))(v18, v43);
        v56 = sub_10021145C(v53, v55, &v82);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "No BenefactorInfoRecord found with beneficiaryID: %s", v50, 0xCu);
        sub_10000839C(v52);
      }

      else
      {

        (*(v45 + 8))(v18, v43);
      }

      type metadata accessor for InheritanceError(0);
      v81 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v49 = v82;
      swift_storeEnumTagMultiPayload();
      v80(v49);
      sub_100008D3C(v49, &unk_1003E1DD0, &qword_1003444D0);
    }

    else
    {
      sub_10023FC6C(v28, v23, type metadata accessor for BenefactorInfoRecord);
      v57 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100008D04(v58, qword_1003FAAA0);
      v59 = v77;
      (*(v77 + 16))(v16, v73, v57);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v74;
      if (v62)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v82 = v65;
        *v64 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v59;
        v69 = v68;
        (*(v67 + 8))(v16, v57);
        v70 = sub_10021145C(v66, v69, &v82);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v60, v61, "Found BenefactorInfoRecord with beneficiaryID: %s", v64, 0xCu);
        sub_10000839C(v65);
      }

      else
      {

        (*(v59 + 8))(v16, v57);
      }

      sub_10023FBA0(v23, v63, type metadata accessor for BenefactorInfoRecord);
      swift_storeEnumTagMultiPayload();
      v80(v63);
      sub_100008D3C(v63, &unk_1003E1DD0, &qword_1003444D0);
      sub_10023FC08(v23, type metadata accessor for BenefactorInfoRecord);
    }

    v38 = &unk_1003E1DE0;
    v39 = &qword_1003444D8;
    v40 = v75;
  }

  return sub_100008D3C(v40, v38, v39);
}

uint64_t sub_10021BA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BenefactorInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for BenefactorInfoRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Saving BenefactorInfoRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_10023297C(a1, sub_10023DB34, v23);
}

uint64_t sub_10021BD48(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for BenefactorInfoRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v28 - v13);
  sub_100012D04(a1, &v28 - v13, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v15;
      v31 = v29;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v31);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error saving BenefactorInfoRecord : %s", v19, 0xCu);
      sub_10000839C(v29);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &unk_1003E1DD0, &qword_1003444D0);
  }

  else
  {
    sub_10023FC6C(v14, v7, type metadata accessor for BenefactorInfoRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved BenefactorInfoRecord.", v27, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    sub_10023FBA0(v7, v12, type metadata accessor for BenefactorInfoRecord);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &unk_1003E1DD0, &qword_1003444D0);
    return sub_10023FC08(v7, type metadata accessor for BenefactorInfoRecord);
  }
}

uint64_t sub_10021C184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for BenefactorInfoRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for BenefactorInfoRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleting BenefactorInfoRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for BenefactorInfoRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100237D28(a1, sub_10023D974, v23);
}

uint64_t sub_10021C44C(uint64_t a1, void (*a2)(void *), uint64_t a3, const char *a4, const char *a5)
{
  v34 = a5;
  v35 = a3;
  v36 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v33 - v17);
  sub_100012D04(a1, &v33 - v17, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAA0);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v19;
      v38 = v24;
      *v23 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v25 = String.init<A>(describing:)();
      v27 = sub_10021145C(v25, v26, &v38);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, a4, v23, 0xCu);
      sub_10000839C(v24);
    }

    *v16 = v19;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v36(v16);

    return sub_100008D3C(v16, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    (*(v8 + 32))(v11, v18, v7);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAAA0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, v34, v32, 2u);
    }

    [objc_opt_self() postInheritanceContactChangedNotification];
    (*(v8 + 16))(v16, v11, v7);
    swift_storeEnumTagMultiPayload();
    v36(v16);
    sub_100008D3C(v16, &unk_1003D9220, &unk_10033E8C0);
    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_10021C8A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v30 = type metadata accessor for URL();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAAA0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetching stored InheritanceHealthRecords...", v19, 2u);
  }

  v20 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v9 + 8);
  v22 = v13;
  v23 = v30;
  v21(v22, v30);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = v28;
  *(v24 + 24) = v25;
  (*(v5 + 16))(v8, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v4);

  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v8, v4);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_10003295C(v15, sub_10023D944, v24);

  v21(v15, v23);
  return sub_10000839C(v31);
}

uint64_t sub_10021CBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v58 = a2;
  v57 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v60 = *(v57 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v57);
  v59 = &v50 - v7;
  v8 = type metadata accessor for URL();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = *(v62 + 64);
  v10 = __chkstk_darwin(v8);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v50 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v51 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v17;
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAA0);
  v53 = *(v14 + 16);
  v53(v19, a1, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v52 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = v3;
    v25 = a1;
    v26 = v24;
    v27 = swift_slowAlloc();
    v64[0] = v27;
    *v26 = 136315138;
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v13;
    v31 = v30;
    (*(v14 + 8))(v19, v29);
    v32 = sub_10021145C(v28, v31, v64);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetching stored InheritanceHealthRecord with beneficiaryID: %s...", v26, 0xCu);
    sub_10000839C(v27);

    a1 = v25;
    v4 = v50;
  }

  else
  {

    (*(v14 + 8))(v19, v13);
  }

  v50 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  type metadata accessor for LocalCache();
  v33 = v55;
  sub_100307F40();
  v34 = v56;
  URL.appendingPathComponent(_:isDirectory:)();
  v35 = *(v62 + 8);
  v36 = v33;
  v37 = v63;
  v35(v36, v63);
  v39 = v51;
  v38 = v52;
  v53(v51, a1, v52);
  v40 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v41 = (v54 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v14 + 32))(v42 + v40, v39, v38);
  v43 = (v42 + v41);
  v44 = v59;
  v45 = v60;
  v46 = v61;
  *v43 = v58;
  v43[1] = v46;
  v47 = v57;
  (*(v45 + 16))(v44, *v50 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v57);

  Dependency.wrappedValue.getter();
  (*(v45 + 8))(v44, v47);
  v48 = *sub_1000080F8(v64, v64[3]);
  sub_10003295C(v34, sub_10023D92C, v42);

  v35(v34, v37);
  return sub_10000839C(v64);
}

uint64_t sub_10021D194(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v79 = a5;
  v80 = a4;
  v78 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v8 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v10 = (&v72 - v9);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v76 = v11;
  v77 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = type metadata accessor for InheritanceHealthRecord();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100005814(&qword_1003E0E20, &qword_100344490);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAA0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81 = a1;
      v82 = v34;
      *v33 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v35 = String.init<A>(describing:)();
      v37 = sub_10021145C(v35, v36, &v82);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error fetching InheritanceHealthRecord : %s", v33, 0xCu);
      sub_10000839C(v34);
    }

    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v80(v10);
    v38 = &unk_1003E10C0;
    v39 = &qword_100346A70;
    v40 = v10;
  }

  else
  {
    v74 = v10;
    __chkstk_darwin(v29);
    v73 = a3;
    *(&v72 - 2) = a3;
    v42 = v41;
    sub_100213F74(sub_100240E5C, a1, type metadata accessor for InheritanceHealthRecord, type metadata accessor for InheritanceHealthRecord, v41);
    v75 = v42;
    sub_100012D04(v42, v28, &qword_1003E0E20, &qword_100344490);
    if ((*(v20 + 48))(v28, 1, v19) == 1)
    {
      sub_100008D3C(v28, &qword_1003E0E20, &qword_100344490);
      v43 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_100008D04(v44, qword_1003FAAA0);
      v45 = v77;
      (*(v77 + 16))(v18, v73, v43);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v74;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = v45;
        v52 = swift_slowAlloc();
        v82 = v52;
        *v50 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v53 = dispatch thunk of CustomStringConvertible.description.getter();
        v55 = v54;
        (*(v51 + 8))(v18, v43);
        v56 = sub_10021145C(v53, v55, &v82);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v46, v47, "No InheritanceHealthRecord found with beneficiaryID: %s", v50, 0xCu);
        sub_10000839C(v52);
      }

      else
      {

        (*(v45 + 8))(v18, v43);
      }

      type metadata accessor for InheritanceError(0);
      v81 = 3;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10023F3A0(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v49 = v82;
      swift_storeEnumTagMultiPayload();
      v80(v49);
      sub_100008D3C(v49, &unk_1003E10C0, &qword_100346A70);
    }

    else
    {
      sub_10023FC6C(v28, v23, type metadata accessor for InheritanceHealthRecord);
      v57 = v76;
      if (qword_1003D7F40 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100008D04(v58, qword_1003FAAA0);
      v59 = v77;
      (*(v77 + 16))(v16, v73, v57);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      v62 = os_log_type_enabled(v60, v61);
      v63 = v74;
      if (v62)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v82 = v65;
        *v64 = 136315138;
        sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
        v66 = dispatch thunk of CustomStringConvertible.description.getter();
        v67 = v59;
        v69 = v68;
        (*(v67 + 8))(v16, v57);
        v70 = sub_10021145C(v66, v69, &v82);

        *(v64 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v60, v61, "Found InheritanceHealthRecord with beneficiaryID: %s", v64, 0xCu);
        sub_10000839C(v65);
      }

      else
      {

        (*(v59 + 8))(v16, v57);
      }

      sub_10023FBA0(v23, v63, type metadata accessor for InheritanceHealthRecord);
      swift_storeEnumTagMultiPayload();
      v80(v63);
      sub_100008D3C(v63, &unk_1003E10C0, &qword_100346A70);
      sub_10023FC08(v23, type metadata accessor for InheritanceHealthRecord);
    }

    v38 = &qword_1003E0E20;
    v39 = &qword_100344490;
    v40 = v75;
  }

  return sub_100008D3C(v40, v38, v39);
}

uint64_t sub_10021DAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for InheritanceHealthRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for InheritanceHealthRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Saving BenefactorInfoRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for InheritanceHealthRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100231CA4(a1, sub_10023D76C, v23);
}

uint64_t sub_10021DDB8(uint64_t a1, void (*a2)(void *))
{
  v4 = type metadata accessor for InheritanceHealthRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005814(&unk_1003E10C0, &qword_100346A70);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = (&v28 - v13);
  sub_100012D04(a1, &v28 - v13, &unk_1003E10C0, &qword_100346A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAAA0);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v15;
      v31 = v29;
      *v19 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v20 = String.init<A>(describing:)();
      v22 = sub_10021145C(v20, v21, &v31);

      *(v19 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error saving InheritanceHealthRecord : %s", v19, 0xCu);
      sub_10000839C(v29);
    }

    *v12 = v15;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v12);

    return sub_100008D3C(v12, &unk_1003E10C0, &qword_100346A70);
  }

  else
  {
    sub_10023FC6C(v14, v7, type metadata accessor for InheritanceHealthRecord);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAA0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully saved InheritanceHealthRecord.", v27, 2u);
    }

    sub_10023FBA0(v7, v12, type metadata accessor for InheritanceHealthRecord);
    swift_storeEnumTagMultiPayload();
    a2(v12);
    sub_100008D3C(v12, &unk_1003E10C0, &qword_100346A70);
    return sub_10023FC08(v7, type metadata accessor for InheritanceHealthRecord);
  }
}

uint64_t sub_10021E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for InheritanceHealthRecord();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100008D04(v12, qword_1003FAAA0);
  sub_10023FBA0(a1, v11, type metadata accessor for InheritanceHealthRecord);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136315138;
    type metadata accessor for UUID();
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    sub_10023FC08(v11, type metadata accessor for InheritanceHealthRecord);
    v21 = sub_10021145C(v18, v20, &v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Deleting InheritanceHealthRecord with beneficiaryID - %s...", v16, 0xCu);
    sub_10000839C(v17);

    a2 = v26;
  }

  else
  {

    sub_10023FC08(v11, type metadata accessor for InheritanceHealthRecord);
  }

  v22 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v4 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  v24 = *v22;

  sub_100238CD0(a1, sub_10023D58C, v23);
}

uint64_t sub_10021E49C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v32[1] = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (v32 - v15);
  sub_100012D04(a1, v32 - v15, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAA0);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[2] = v17;
      v33 = v22;
      *v21 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v23 = String.init<A>(describing:)();
      v25 = a2;
      v26 = sub_10021145C(v23, v24, &v33);

      *(v21 + 4) = v26;
      a2 = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error deleting InheritanceHealthRecord : %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a2(v14);

    return sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
  }

  else
  {
    (*(v6 + 32))(v9, v16, v5);
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAAA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully deleted InheritanceHealthRecord.", v31, 2u);
    }

    (*(v6 + 16))(v14, v9, v5);
    swift_storeEnumTagMultiPayload();
    a2(v14);
    sub_100008D3C(v14, &unk_1003D9220, &unk_10033E8C0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10021E8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - v9;
  if (qword_1003D7F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAA0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Checking manatee status...", v14, 2u);
  }

  v15 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController), *(v3 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController + 24));
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  (*(v7 + 16))(v10, *v15 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v6);

  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (qword_1003D7EC0 != -1)
  {
    swift_once();
  }

  v17 = sub_1002E2BC4(qword_1003FA9D0, qword_1003FA9D8);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10023D568;
  *(v18 + 24) = v16;
  aBlock[4] = sub_100016014;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100015858;
  aBlock[3] = &unk_1003B0120;
  v19 = _Block_copy(aBlock);

  [v17 accountInfoWithCompletionHandler:v19];
  _Block_release(v19);

  return sub_10000839C(v23);
}

uint64_t sub_10021EC50(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = String.init<A>(describing:)();
      v12 = sub_10021145C(v10, v11, &v20);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error fetching manatee status : %s", v8, 0xCu);
      sub_10000839C(v9);
    }

    v13 = a1;
    v14 = 1;
  }

  else
  {
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAA0);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully fetched Manatee status - %{BOOL}d.", v18, 8u);
    }

    v13 = a1 & 1;
    v14 = 0;
  }

  return a3(v13, v14);
}

uint64_t sub_10021EEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BenefactorInfoRecord();
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v8, type metadata accessor for BenefactorInfoRecord);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 16);
  v10(a2, v8, v9);
  v10(a2 + v5[9], &v8[v5[9]], v9);
  v11 = v5[10];
  v12 = *&v8[v11];
  v13 = *&v8[v11 + 8];
  v14 = (a2 + v11);
  *v14 = v12;
  v14[1] = v13;
  v15 = v5[7];
  v16 = *&v8[v15];
  v17 = *&v8[v15 + 8];
  v18 = (a2 + v15);
  *v18 = v16;
  v18[1] = v17;
  *(a2 + v5[8]) = 4;
  LOBYTE(v10) = v8[v5[11]];
  sub_100015D6C(v12, v13);

  result = sub_10023FC08(v8, type metadata accessor for BenefactorInfoRecord);
  *(a2 + v5[11]) = v10;
  return result;
}

uint64_t sub_10021F028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for InheritanceInvitationRecord();
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10023FBA0(a1, v7, type metadata accessor for InheritanceInvitationRecord);
  v8 = (a2 + v4[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v4[7]);
  v10 = type metadata accessor for UUID();
  *v9 = 0;
  v9[1] = 0;
  v11 = *(*(v10 - 8) + 16);
  v11(a2, v7, v10);
  v11(a2 + v4[9], &v7[v4[9]], v10);
  v12 = v4[10];
  v13 = *&v7[v12];
  v14 = *&v7[v12 + 8];
  v15 = (a2 + v12);
  *v15 = v13;
  v15[1] = v14;
  v16 = v4[5];
  v17 = *&v7[v16];
  v18 = *&v7[v16 + 8];
  v19 = (a2 + v16);
  *v19 = v17;
  v19[1] = v18;
  v20 = &v7[v4[6]];
  v21 = *(v20 + 1);
  if (v21)
  {
    *v8 = *v20;
    v8[1] = v21;
  }

  v22 = &v7[v4[7]];
  v23 = *(v22 + 1);
  if (v23)
  {
    *v9 = *v22;
    v9[1] = v23;
  }

  *(a2 + v4[8]) = 4;
  v24 = v7[v4[11]];
  sub_100015D6C(v13, v14);

  result = sub_10023FC08(v7, type metadata accessor for InheritanceInvitationRecord);
  *(a2 + v4[11]) = v24;
  return result;
}

uint64_t sub_10021F1F4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceStorageController()
{
  result = qword_1003E3498;
  if (!qword_1003E3498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021F300()
{
  sub_1001CFA84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021F398(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for CustodianshipInfoRecord();
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10021F48C, 0, 0);
}

uint64_t sub_10021F48C()
{
  v42 = v0;
  if (qword_1003D7EB0 != -1)
  {
    swift_once();
  }

  if (*(*(v0 + 24) + *(*(v0 + 64) + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1003FA9C0;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  v5 = *v1;
  v4 = v1[1];

  v6 = sub_1002E2BC4(v5, v4);

  v7 = [v6 privateCloudDatabase];
  *(v0 + 80) = v7;

  v8 = v3 + *(v2 + 20);
  v9 = UUID.uuidString.getter();
  v11 = sub_1002E2EE0(v9, v10);
  *(v0 + 88) = v11;

  sub_10023E004();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  v15 = v11;
  v16._countAndFlagsBits = v12;
  v16._object = v14;
  v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, v15).super.isa;
  *(v0 + 96) = v17;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 72);
  v19 = *(v0 + 24);
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAA58);
  sub_10023FBA0(v19, v18, type metadata accessor for CustodianshipInfoRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 72);
  if (v23)
  {
    isa = v17.super.isa;
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    v28 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v28 = 136315394;
    *(v28 + 4) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v41);
    *(v28 + 12) = 2080;
    (*(v26 + 16))(v25, v24, v27);
    sub_10023FC08(v24, type metadata accessor for CustodianshipInfoRecord);
    sub_10023F3A0(&qword_1003D9150, &type metadata accessor for UUID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v26 + 8))(v25, v27);
    v17.super.isa = isa;
    v32 = sub_10021145C(v29, v31, &v41);

    *(v28 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s recordID:%s one-off record fetch", v28, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10023FC08(*(v0 + 72), type metadata accessor for CustodianshipInfoRecord);
  }

  v33 = swift_task_alloc();
  *(v0 + 104) = v33;
  v34 = *(v0 + 24);
  *(v33 + 16) = v7;
  *(v33 + 24) = v17;
  *(v33 + 32) = v34;
  v35 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v36 = swift_task_alloc();
  *(v0 + 112) = v36;
  *v36 = v0;
  v36[1] = sub_10021F95C;
  v37 = *(v0 + 64);
  v38 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v38, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_10023F718, v33, v37);
}