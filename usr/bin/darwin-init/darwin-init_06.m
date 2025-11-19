unint64_t sub_10009CF04(OSStatus a1)
{
  v1 = SecCopyErrorMessageString(a1, 0);
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v11 = 10016;
    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    v7 = 39;
  }

  else
  {
    _StringGuts.grow(_:)(49);

    v11 = 0xD00000000000002ELL;
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v7 = 41;
  }

  v9 = 0xE100000000000000;
  String.append(_:)(*&v7);
  return v11;
}

unint64_t sub_10009D004()
{
  result = qword_1004A8938;
  if (!qword_1004A8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8938);
  }

  return result;
}

unint64_t sub_10009D05C()
{
  result = qword_1004A8940;
  if (!qword_1004A8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8940);
  }

  return result;
}

uint64_t sub_10009D0E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v73 = *(v10 - 8);
  v74 = v10;
  __chkstk_darwin(v10);
  v72 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v70 = *(v12 - 8);
  v71 = v12;
  __chkstk_darwin(v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v18 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v76) = *a5;
  sub_10009CAE4(a3, a4, a2, &v76, 0);
  sub_10008559C();
  v76 = a1;
  type metadata accessor for AuthToken();
  sub_10009F510(&qword_1004A8468, type metadata accessor for AuthToken);
  v21 = v75;
  v22 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v24 = v23;

  if (v21)
  {
  }

  v67 = v15;
  v68 = v17;
  v75 = v20;
  v69 = v14;
  sub_1000039E8(&qword_1004A7A90);
  inited = swift_initStackObject();
  v66 = xmmword_100376A40;
  *(inited + 16) = xmmword_100376A40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Data;
  *(inited + 40) = v27;
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  sub_1000318C0(v22, v24);
  sub_100061F34(inited);
  swift_setDeallocating();
  sub_100013F2C(inited + 32, &qword_1004A7A98);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v29 = Dictionary._bridgeToObjectiveC()().super.isa;
  v30 = SecItemUpdate(isa, v29);

  if (!v30)
  {

    sub_100031928(v22, v24);
  }

  v59 = v22;
  v60 = v24;
  v76 = 0;
  v77 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v31._countAndFlagsBits = 0xD00000000000002CLL;
  v31._object = 0x800000010042FCF0;
  String.append(_:)(v31);
  v32 = Dictionary.debugDescription.getter();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._object = 0x800000010042FD20;
  v36._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v36);
  v37 = Dictionary.debugDescription.getter();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x747320746F67202CLL;
  v41._object = 0xED00002073757461;
  String.append(_:)(v41);
  v78 = v30;
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v43._countAndFlagsBits = sub_10009CF04(v30);
  String.append(_:)(v43);

  v65 = v76;
  v64 = v77;
  v63 = 0x800000010042FD40;
  v62 = 0x800000010042F980;
  v58 = type metadata accessor for KnoxServiceClient.ClientError();
  v44 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v61 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  v76 = &_swiftEmptyArrayStorage;
  sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v70 + 104))(v69, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v71);
  v45 = v72;
  v46 = v73;
  v47 = v74;
  (*(v73 + 104))(v72, enum case for DispatchQoS.QoSClass.default(_:), v74);
  static OS_dispatch_queue.global(qos:)();
  (*(v46 + 8))(v45, v47);
  v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v49 = v63;
  *(v44 + 16) = 0xD00000000000004ELL;
  *(v44 + 24) = v49;
  v50 = v62;
  *(v44 + 32) = 0xD000000000000059;
  *(v44 + 40) = v50;
  *(v44 + 56) = 14;
  *(v44 + 48) = 414;
  v51 = v64;
  *(v44 + 64) = v65;
  *(v44 + 72) = v51;
  *(v44 + 80) = 0;
  *(v44 + 88) = v48;
  static os_log_type_t.error.getter();
  sub_1000039E8(&unk_1004A7370);
  v52 = swift_allocObject();
  *(v52 + 16) = v66;
  result = sub_10005A570();
  if (v53)
  {
    v54 = result;
    v55 = v53;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 64) = sub_10001A9EC();
    *(v52 + 32) = v54;
    *(v52 + 40) = v55;
    sub_10001AA40(0, &qword_1004A7380);
    v56 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v57 = v44;
    swift_willThrow();
    return sub_100031928(v59, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10009D92C(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v111 = *(v2 - 8);
  v112 = v2;
  __chkstk_darwin(v2);
  v110 = v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v116 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v7 = v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v10 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KeychainItem();
  v12 = v11[5];
  v13 = (a1 + v11[6]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(a1 + v11[8]);
  ObjectType = swift_getObjectType();
  v18 = *(ObjectType + 112);
  v114 = ObjectType + 112;
  v115 = ObjectType;
  v117 = v18;
  v18(&v120);
  v19 = sub_10009CAE4(v14, v15, a1 + v12, &v120, 0);
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  v121 = &type metadata for Bool;
  LOBYTE(v120) = 0;
  sub_1000279A4(&v120, v119);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = v19;
  sub_100026D4C(v119, v20, v22, isUniquelyReferenced_nonNull_native);

  v24 = v122;
  v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  sub_10008559C();
  *v119 = v16;
  type metadata accessor for AuthToken();
  sub_10009F510(&qword_1004A8468, type metadata accessor for AuthToken);
  v27 = v118;
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v118 = v27;
  if (v27)
  {
  }

  else
  {
    v30 = v28;
    v31 = v29;
    v107[1] = v5;
    v107[2] = v7;
    v107[3] = v10;

    v121 = &type metadata for Data;
    *&v120 = v30;
    *(&v120 + 1) = v31;
    sub_1000279A4(&v120, v119);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v24;
    sub_100026D4C(v119, v113, v26, v32);

    v33 = v122;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    v37 = *a1;
    v38 = a1[1];
    v121 = &type metadata for String;
    *&v120 = v37;
    *(&v120 + 1) = v38;
    sub_1000279A4(&v120, v119);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v33;
    sub_100026D4C(v119, v34, v36, v39);

    v40 = v122;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v117(v119);
    v44 = 0xE400000000000000;
    v45 = 1128548687;
    if (v119[0] != 1)
    {
      v45 = 0x6574616774736557;
      v44 = 0xE800000000000000;
    }

    if (v119[0])
    {
      v46 = v45;
    }

    else
    {
      v46 = 5718340;
    }

    if (v119[0])
    {
      v47 = v44;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    v48 = v47;
    String.append(_:)(*&v46);

    v49._object = 0x800000010042FD90;
    v49._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v49);
    v121 = &type metadata for String;
    sub_1000279A4(&v120, v119);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v40;
    sub_100026D4C(v119, v41, v43, v50);

    v51 = v122;
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(108);
    v55._object = 0x800000010042FDB0;
    v55._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v55);
    v117(v119);
    v56 = 0xE400000000000000;
    v57 = 1128548687;
    if (v119[0] != 1)
    {
      v57 = 0x6574616774736557;
      v56 = 0xE800000000000000;
    }

    if (v119[0])
    {
      v58 = v57;
    }

    else
    {
      v58 = 5718340;
    }

    if (v119[0])
    {
      v59 = v56;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    v60 = v116;
    v61 = v59;
    String.append(_:)(*&v58);

    v62._countAndFlagsBits = 0xD00000000000004FLL;
    v62._object = 0x800000010042FDD0;
    String.append(_:)(v62);
    v63 = [objc_opt_self() processInfo];
    v64 = [v63 processName];

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68._countAndFlagsBits = v65;
    v68._object = v67;
    String.append(_:)(v68);

    v121 = &type metadata for String;
    sub_1000279A4(&v120, v119);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v51;
    sub_100026D4C(v119, v52, v54, v69);

    v70 = v122;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
    type metadata accessor for CFString(0);
    v121 = v74;
    *&v120 = kSecAttrAccessibleAfterFirstUnlock;
    sub_1000279A4(&v120, v119);
    v75 = kSecAttrAccessibleAfterFirstUnlock;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v122 = v70;
    sub_100026D4C(v119, v71, v73, v76);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v78 = SecItemAdd(isa, 0);

    if (v78)
    {
      *&v120 = 0;
      *(&v120 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v79._countAndFlagsBits = 0xD000000000000020;
      v79._object = 0x800000010042FE20;
      String.append(_:)(v79);
      v80 = Dictionary.debugDescription.getter();
      v82 = v81;

      v83._countAndFlagsBits = v80;
      v83._object = v82;
      String.append(_:)(v83);

      v84._countAndFlagsBits = 0x747320746F67202CLL;
      v84._object = 0xED00002073757461;
      String.append(_:)(v84);
      *v119 = v78;
      v85._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v85);

      v86._countAndFlagsBits = sub_10009CF04(v78);
      String.append(_:)(v86);

      v117 = *(&v120 + 1);
      v118 = v120;
      v114 = 0x800000010042F980;
      v115 = 0x800000010042FE50;
      v107[0] = type metadata accessor for KnoxServiceClient.ClientError();
      v87 = swift_allocObject();
      sub_10001AA40(0, &qword_1004A7840);
      v113 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      *&v120 = &_swiftEmptyArrayStorage;
      sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v60 + 104))(v109, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v108);
      v89 = v110;
      v88 = v111;
      v90 = v112;
      (*(v111 + 104))(v110, enum case for DispatchQoS.QoSClass.default(_:), v112);
      static OS_dispatch_queue.global(qos:)();
      (*(v88 + 8))(v89, v90);
      v91 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v92 = v115;
      *(v87 + 16) = 0xD000000000000017;
      *(v87 + 24) = v92;
      v93 = v114;
      *(v87 + 32) = 0xD000000000000059;
      *(v87 + 40) = v93;
      *(v87 + 56) = 14;
      *(v87 + 48) = 368;
      v94 = v117;
      *(v87 + 64) = v118;
      *(v87 + 72) = v94;
      *(v87 + 80) = 0;
      *(v87 + 88) = v91;
      static os_log_type_t.error.getter();
      sub_1000039E8(&unk_1004A7370);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_100376A40;
      v96 = sub_10005A570();
      if (v97)
      {
        v98 = v96;
        v99 = v97;
        *(v95 + 56) = &type metadata for String;
        *(v95 + 64) = sub_10001A9EC();
        *(v95 + 32) = v98;
        *(v95 + 40) = v99;
        sub_10001AA40(0, &qword_1004A7380);
        v100 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
        swift_allocError();
        *v101 = v87;
        swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      sub_1000039E8(&unk_1004A7370);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_100376A40;
      v103 = Dictionary.description.getter();
      v105 = v104;

      *(v102 + 56) = &type metadata for String;
      *(v102 + 64) = sub_10001A9EC();
      *(v102 + 32) = v103;
      *(v102 + 40) = v105;
      sub_10001AA40(0, &qword_1004A7380);
      v106 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

uint64_t sub_10009E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v113 = type metadata accessor for DispatchQoS.QoSClass();
  v121 = *(v113 - 8);
  __chkstk_darwin(v113);
  v120 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v115 = *(v11 - 8);
  v116 = v11;
  __chkstk_darwin(v11);
  v119 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v114);
  v118 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v117 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a5;
  LOBYTE(v124) = *a5;
  v17 = sub_10009CAE4(a3, a4, a2, &v124, 1);
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  type metadata accessor for CFString(0);
  v125 = v21;
  *&v124 = kSecUseAuthenticationUISkip;
  sub_1000279A4(&v124, v123);
  v22 = kSecUseAuthenticationUISkip;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  result = v17;
  sub_100026D4C(v123, v18, v20, isUniquelyReferenced_nonNull_native);

  v24 = result;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v125 = &type metadata for Bool;
  LOBYTE(v124) = 1;
  sub_1000279A4(&v124, v123);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  result = v24;
  sub_100026D4C(v123, v25, v27, v28);

  v29 = result;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  v125 = &type metadata for Bool;
  LOBYTE(v124) = 1;
  sub_1000279A4(&v124, v123);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  result = v29;
  sub_100026D4C(v123, v30, v32, v33);

  result = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v35 = SecItemCopyMatching(isa, &result);

  if (v35)
  {
    if (v35 == -25300)
    {
      sub_1000039E8(&unk_1004A7370);
      v36 = swift_allocObject();
      v37 = v36;
      *(v36 + 16) = xmmword_100376BB0;
      if (v16)
      {
        if (v16 == 1)
        {
          v38 = 0xE400000000000000;
          v39 = 1128548687;
        }

        else
        {
          v38 = 0xE800000000000000;
          v39 = 0x6574616774736557;
        }
      }

      else
      {
        v38 = 0xE300000000000000;
        v39 = 5718340;
      }

      *(v36 + 56) = &type metadata for String;
      v80 = sub_10001A9EC();
      v37[8] = v80;
      v37[4] = v39;
      v37[5] = v38;
      v81 = Dictionary.description.getter();
      v83 = v82;

      v37[12] = &type metadata for String;
      v37[13] = v80;
      v37[9] = v81;
      v37[10] = v83;
      sub_10001AA40(0, &qword_1004A7380);
      v84 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v58 = 0;
      goto LABEL_22;
    }

    v59 = sub_10009CF04(v35);
    v61 = v60;
    *&v124 = 0;
    *(&v124 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v124 = 0xD00000000000001ELL;
    *(&v124 + 1) = 0x800000010042FA40;
    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 0x3A7972657571202CLL;
    v63._object = 0xE900000000000020;
    String.append(_:)(v63);
    v64 = Dictionary.description.getter();
    v66 = v65;

    v67._countAndFlagsBits = v64;
    v67._object = v66;
    String.append(_:)(v67);

    v68 = v124;
    *&v111 = *(&v124 + 1);
    v112 = v124;
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_100376A40;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_10001A9EC();
    *(v69 + 32) = v68;
    sub_10001AA40(0, &qword_1004A7380);

    v70 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v113;
    v109 = 0x800000010042FA60;
    v108 = 0x800000010042F980;
    v110 = type metadata accessor for KnoxServiceClient.ClientError();
    v72 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v107 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    *&v124 = &_swiftEmptyArrayStorage;
    sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    v58 = v118;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v115 + 104))(v119, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v116);
    v74 = v120;
    v73 = v121;
    (*(v121 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v71);
    static OS_dispatch_queue.global(qos:)();
    (*(v73 + 8))(v74, v71);
    v75 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v76 = v109;
    *(v72 + 16) = 0xD00000000000005DLL;
    *(v72 + 24) = v76;
    v77 = v108;
    *(v72 + 32) = 0xD000000000000059;
    *(v72 + 40) = v77;
    *(v72 + 56) = 14;
    *(v72 + 48) = 235;
    v78 = v111;
    *(v72 + 64) = v112;
    *(v72 + 72) = v78;
    *(v72 + 80) = 0;
    *(v72 + 88) = v75;
    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v79 = v72;
LABEL_21:
    swift_willThrow();
LABEL_22:
    swift_unknownObjectRelease();
    return v58;
  }

  v112 = sub_1000039E8(&unk_1004A7370);
  v40 = swift_allocObject();
  v111 = xmmword_100376A40;
  *(v40 + 16) = xmmword_100376A40;
  v41 = Dictionary.description.getter();
  v43 = v42;
  *(v40 + 56) = &type metadata for String;
  v110 = sub_10001A9EC();
  *(v40 + 64) = v110;
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  v109 = sub_10001AA40(0, &qword_1004A7380);
  v44 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (result)
  {
    *&v124 = result;
    swift_unknownObjectRetain();
    sub_1000039E8(&qword_1004B07E0);
    if (swift_dynamicCast())
    {
      v45 = *&v123[0];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v45 + 16))
      {
        v48 = sub_100013364(v46, v47);
        v50 = v49;

        if (v50)
        {
          sub_100003CA0(*(v45 + 56) + 32 * v48, &v124);

          if (swift_dynamicCast())
          {
            v51 = v123[0];
            v52 = swift_allocObject();
            *(v52 + 16) = v111;
            v53 = Dictionary.debugDescription.getter();
            v55 = v54;

            v56 = v110;
            *(v52 + 56) = &type metadata for String;
            *(v52 + 64) = v56;
            *(v52 + 32) = v53;
            *(v52 + 40) = v55;
            v57 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            v58 = type metadata accessor for AuthToken();
            sub_10009F510(&qword_1004A7A60, type metadata accessor for AuthToken);
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            sub_100031928(v51, *(&v51 + 1));

            if (!v5)
            {
              v58 = v124;
            }

            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }
    }
  }

LABEL_19:
  v107 = 0x800000010042FA60;
  v108 = 0x800000010042F980;
  *&v124 = 0;
  *(&v124 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(95);
  v85._object = 0x800000010042FB10;
  v85._countAndFlagsBits = 0xD00000000000005DLL;
  String.append(_:)(v85);
  v86 = Dictionary.description.getter();
  v88 = v87;

  v89._countAndFlagsBits = v86;
  v89._object = v88;
  String.append(_:)(v89);

  v105 = *(&v124 + 1);
  v106 = v124;
  v104[0] = type metadata accessor for KnoxServiceClient.ClientError();
  v90 = swift_allocObject();
  sub_10001AA40(0, &qword_1004A7840);
  v91 = v113;
  v104[1] = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  *&v124 = &_swiftEmptyArrayStorage;
  sub_10009F510(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  v58 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v115 + 104))(v119, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v116);
  v93 = v120;
  v92 = v121;
  (*(v121 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v91);
  static OS_dispatch_queue.global(qos:)();
  (*(v92 + 8))(v93, v91);
  v94 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v95 = v107;
  *(v90 + 16) = 0xD00000000000005DLL;
  *(v90 + 24) = v95;
  v96 = v108;
  *(v90 + 32) = 0xD000000000000059;
  *(v90 + 40) = v96;
  *(v90 + 56) = 14;
  *(v90 + 48) = 243;
  v97 = v105;
  *(v90 + 64) = v106;
  *(v90 + 72) = v97;
  *(v90 + 80) = 0;
  *(v90 + 88) = v94;
  static os_log_type_t.error.getter();
  v98 = swift_allocObject();
  *(v98 + 16) = v111;
  v99 = sub_10005A570();
  if (v100)
  {
    v101 = v110;
    *(v98 + 56) = &type metadata for String;
    *(v98 + 64) = v101;
    *(v98 + 32) = v99;
    *(v98 + 40) = v100;
    v102 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_10009F510(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v103 = v90;
    goto LABEL_21;
  }

  __break(1u);
  return v99;
}

uint64_t sub_10009F4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeychainItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009F510(unint64_t *a1, void (*a2)(uint64_t))
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

char *DecryptionInfoTask.__allocating_init(client:forDigest:inSpace:finalHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents] = 0;
  v16 = &v15[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_digest];
  *v16 = a2;
  v16[1] = a3;
  v17 = &v15[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_space];
  *v17 = a4;
  v17[1] = a5;
  v18 = &v15[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler];
  *v18 = a6;
  *(v18 + 1) = a7;

  v19 = sub_10003D38C(a1);
  _StringGuts.grow(_:)(26);

  v20._countAndFlagsBits = a4;
  v20._object = a5;
  String.append(_:)(v20);

  v21._countAndFlagsBits = 47;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = a2;
  v22._object = a3;
  String.append(_:)(v22);

  v23 = &v19[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v23 = 0xD000000000000015;
  *(v23 + 1) = 0x800000010042CBB0;

  return v19;
}

uint64_t sub_10009F754()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DecryptionInfoTask();
  v2 = objc_msgSendSuper2(&v17, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  _StringGuts.grow(_:)(27);

  v16 = v3;
  v4._countAndFlagsBits = 0x3D6563617073202CLL;
  v4._object = 0xE900000000000027;
  String.append(_:)(v4);
  v5 = &v1[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_space];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x7365676964202C27;
  v9._object = 0xEB00000000273D74;
  String.append(_:)(v9);
  v10 = &v1[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_digest];
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];

  v13._countAndFlagsBits = v12;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 39;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v16;
}

uint64_t sub_10009F948@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1000A1CA4;
  a2[1] = v6;
}

uint64_t sub_10009F9D4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler);
  swift_beginAccess();
  *v6 = sub_100027938;
  v6[1] = v5;
}

uint64_t sub_10009FA70()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10009FB74(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

void sub_10009FC38(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_10009FC98()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

char *DecryptionInfoTask.init(client:forDigest:inSpace:finalHandler:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents) = 0;
  v13 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_digest);
  *v13 = a2;
  v13[1] = a3;
  v14 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_space);
  *v14 = a4;
  v14[1] = a5;
  v15 = (v7 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler);
  *v15 = a6;
  v15[1] = a7;

  v16 = sub_10003D38C(a1);
  _StringGuts.grow(_:)(26);

  v17._countAndFlagsBits = a4;
  v17._object = a5;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 47;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  v20 = &v16[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v20 = 0xD000000000000015;
  *(v20 + 1) = 0x800000010042CBB0;

  return v16;
}

char *sub_10009FE68()
{
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v1 = v0;
  v2 = sub_100072164(v1);
  v3 = v1;
  sub_10007BA4C(v2, v3);

  return v3;
}

uint64_t sub_10009FED8(char *a1, uint64_t a2, char *a3)
{
  if (a2)
  {

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100376F00;
    v7 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v9 = *v7;
    v8 = *(v7 + 1);
    *(v6 + 56) = &type metadata for String;
    v10 = sub_10001A9EC();
    *(v6 + 64) = v10;
    *(v6 + 32) = v9;
    *(v6 + 40) = v8;
    v11 = *(*a2 + 168);

    result = v11(v12);
    if (!v14)
    {
      __break(1u);
      return result;
    }

    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v10;
    *(v6 + 72) = result;
    *(v6 + 80) = v14;
    v15 = [a1 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v6 + 136) = &type metadata for String;
    *(v6 + 144) = v10;
    *(v6 + 112) = v16;
    *(v6 + 120) = v18;
    sub_10001AA40(0, &qword_1004A7380);
    v19 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v20 = swift_allocError();
    *v21 = a2;
    swift_getErrorValue();

    v22 = Error.localizedDescription.getter();
    sub_100036D50(v20, v22, v23);
  }

  else
  {
    sub_1000039E8(&unk_1004A7370);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100376BB0;
    v25 = &a1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
    swift_beginAccess();
    v27 = *v25;
    v26 = *(v25 + 1);
    *(v24 + 56) = &type metadata for String;
    v28 = sub_10001A9EC();
    *(v24 + 64) = v28;
    *(v24 + 32) = v27;
    *(v24 + 40) = v26;

    v29 = [a1 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v28;
    *(v24 + 72) = v30;
    *(v24 + 80) = v32;
    sub_10001AA40(0, &qword_1004A7380);
    v33 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v34 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
    swift_beginAccess();
    v35 = *&a3[v34];
    if (v35)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100376260;
      v37 = *&v35[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest];
      v38 = *&v35[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_digest + 8];
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = v28;
      *(v36 + 32) = v37;
      *(v36 + 40) = v38;
      v39 = (*&v35[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_encryption] + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents10Encryption_algorithm);
      v40 = *v39;
      v41 = v39[1];
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v28;
      *(v36 + 72) = v40;
      *(v36 + 80) = v41;
      v42 = *&v35[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_location];
      v43 = *(v42 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_expiration);
      *(v36 + 136) = &type metadata for Int;
      *(v36 + 144) = &protocol witness table for Int;
      *(v36 + 112) = v43;
      v44 = (v42 + OBJC_IVAR____TtCC16KnoxClientPublic25ImageDecryptionComponents8Location_uri);
      v45 = *v44;
      v46 = v44[1];
      *(v36 + 176) = &type metadata for String;
      *(v36 + 184) = v28;
      *(v36 + 152) = v45;
      *(v36 + 160) = v46;
      v47 = v35;

      v48 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    else
    {
      static os_log_type_t.error.getter();
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100376A40;
      v50 = [a3 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = v28;
      *(v49 + 32) = v51;
      *(v49 + 40) = v53;
      v48 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
    }
  }

  v54 = &a3[OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_finalHandler];
  swift_beginAccess();
  v55 = *v54;
  v56 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
  swift_beginAccess();
  v57 = *&a3[v56];
  if (a2)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v58 = swift_allocError();
    *v59 = a2;
  }

  else
  {
    v58 = 0;
  }

  v60 = v57;

  v55(v57, v58);

  sub_100003B20(*&a3[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client] + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v66);
  v61 = v67;
  v62 = v68;
  sub_10000E2A8(v66, v67);
  if (a2)
  {
    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v63 = swift_allocError();
    *v64 = a2;
  }

  else
  {
    v63 = 0;
  }

  v65 = *(v62 + 16);

  v65(a3, v63, v61, v62);

  return sub_100003C3C(v66);
}

uint64_t sub_1000A05E8@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v2 = v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v58);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = *(v13 + 16);
  v53 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v19(&v52 - v17, &v53[OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL], v12);
  v20 = URL.absoluteString.getter();
  v22 = v21;
  v54 = *(v13 + 8);
  v55 = v13 + 8;
  v54(v18, v12);
  v67 = 0;
  v68 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v69 = 0x2F7365636170732FLL;
  v70 = 0xE800000000000000;
  v23 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_space);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x2F73656C69662FLL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = (v2 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_digest);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 0xD000000000000016;
  v32._object = 0x800000010042C960;
  String.append(_:)(v32);
  v33 = v69;
  v34 = v70;
  v69 = v20;
  v70 = v22;

  v35._countAndFlagsBits = v33;
  v35._object = v34;
  String.append(_:)(v35);

  v37 = v69;
  v36 = v70;
  URL.init(string:)();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10004B034(v11);
    v57 = 0x800000010042FF50;
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v69 = 0xD00000000000001ALL;
    v70 = 0x800000010042FFC0;
    v38._countAndFlagsBits = v37;
    v38._object = v36;
    String.append(_:)(v38);

    v54 = v70;
    v55 = v69;
    v56 = type metadata accessor for KnoxServiceClient.ClientError();
    v39 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v53 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v69 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v60 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v62);
    v41 = v64;
    v40 = v65;
    v42 = v66;
    (*(v65 + 104))(v64, enum case for DispatchQoS.QoSClass.default(_:), v66);
    static OS_dispatch_queue.global(qos:)();
    (*(v40 + 8))(v41, v42);
    v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v39 + 16), "urlRequest()");
    *(v39 + 29) = 0;
    *(v39 + 30) = -5120;
    v44 = v57;
    *(v39 + 32) = 0xD00000000000006CLL;
    *(v39 + 40) = v44;
    *(v39 + 56) = 14;
    *(v39 + 48) = 88;
    v45 = v54;
    *(v39 + 64) = v55;
    *(v39 + 72) = v45;
    *(v39 + 80) = 0;
    *(v39 + 88) = v43;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v46 = v39;
    return swift_willThrow();
  }

  else
  {

    (*(v13 + 32))(v16, v11, v12);
    LOBYTE(v69) = 2;
    v48 = v57;
    sub_10005ADB0(v16, 0, 1, v56);
    if (v48)
    {
      v69 = v48;
      swift_errorRetain();
      sub_1000039E8(&qword_1004AB0A0);
      type metadata accessor for KnoxServiceClient.ClientError();
      if (swift_dynamicCast())
      {
        v49 = v71;
      }

      else
      {
        v50 = _convertErrorToNSError(_:)();
        swift_allocObject();
        v49 = sub_100059DCC(0x65757165526C7275, 0xEC00000029287473, 0xD00000000000006CLL, 0x800000010042FF50, 98, v50);
      }

      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v51 = v49;
      swift_willThrow();

      return (v54)(v16, v12);
    }

    else
    {
      return (v54)(v16, v12);
    }
  }
}

void sub_1000A0EB8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v63 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v62);
  v65 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics);
  v16 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_10;
    }

    v19 = *(a1 + 16);
    v18 = *(a1 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v17 = HIDWORD(a1) - a1;
LABEL_10:
  v59 = v8;
  v60 = v10;
  v61 = v7;
  v20 = *(v15 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  *(v21 + 24) = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100027124;
  *(v22 + 24) = v21;
  v71 = sub_10001F874;
  v72 = v22;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_100481828;
  v23 = _Block_copy(&aBlock);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = sub_100042404(&aBlock, a1, a2);
  v26 = aBlock;
  if (v25)
  {
    v56 = 0x800000010042A530;
    v55 = 0x800000010042FF50;
    v58 = v24;
    v57 = v25;
    v66 = type metadata accessor for KnoxServiceClient.ClientError();
    v27 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v54[2] = "hivePointer.swift";
    v54[1] = v14;
    static DispatchQoS.userInitiated.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    v28 = v63;
    v29 = v5;
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v64 + 104))(v60, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v59);
    v30 = v61;
    (*(v28 + 104))(v61, enum case for DispatchQoS.QoSClass.default(_:), v29);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v30, v29);
    v31 = v26;
    v32 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v33 = v56;
    *(v27 + 16) = 0xD00000000000001ALL;
    *(v27 + 24) = v33;
    v34 = v55;
    *(v27 + 32) = 0xD00000000000006CLL;
    *(v27 + 40) = v34;
    *(v27 + 56) = 7;
    *(v27 + 48) = 113;
    v35 = v57;
    *(v27 + 64) = v58;
    *(v27 + 72) = v35;
    *(v27 + 80) = 0;
    *(v27 + 88) = v32;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v36 = v27;
    swift_willThrow();
LABEL_13:

    return;
  }

  v37 = *(v66 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_alternateCDNHost;
  swift_beginAccess();
  v38 = *(v37 + 8);
  if (v38 && v26)
  {
    v39 = v66;
    v40 = *v37;
    objc_allocWithZone(type metadata accessor for ImageDecryptionComponents());

    v31 = v26;
    v41 = v58;
    v42 = ImageDecryptionComponents.init(copyingFrom:using:)(v31, v40, v38);
    if (v41)
    {
      goto LABEL_13;
    }

    v43 = v42;
    v44 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
    swift_beginAccess();
    v45 = *(v39 + v44);
    *(v39 + v44) = v43;
  }

  else
  {
    v46 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
    v47 = v66;
    swift_beginAccess();
    v45 = *(v47 + v46);
    *(v47 + v46) = v26;
    v31 = v26;
  }

  v48 = v66;
  v49 = *(v66 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v50 + 24) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_10001F9F8;
  *(v51 + 24) = v50;
  v71 = sub_10001FA40;
  v72 = v51;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v69 = sub_10003885C;
  v70 = &unk_1004818A0;
  v52 = _Block_copy(&aBlock);
  v53 = v48;

  dispatch_sync(v49, v52);
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    goto LABEL_22;
  }
}

void sub_1000A16F0()
{

  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents);
}

id DecryptionInfoTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DecryptionInfoTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DecryptionInfoTask()
{
  result = qword_1004A8978;
  if (!qword_1004A8978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A1858()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000A18A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A18B8()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1000A1950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16KnoxClientPublic18DecryptionInfoTask_imageDecryptionComponents;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1000A1D08()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A20BC(&qword_1004A7710, type metadata accessor for ServerInfo);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

void *ServerInfo.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A8990);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = sub_10000E2A8(a1, a1[3]);
  sub_1000A2044();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for ServerInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ServerInfo.IdMS();
    sub_1000A20BC(&qword_1004A89A0, type metadata accessor for ServerInfo.IdMS);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *&v3[OBJC_IVAR____TtC16KnoxClientPublic10ServerInfo_idms] = v13;
    v11 = type metadata accessor for ServerInfo();
    v12.receiver = v3;
    v12.super_class = v11;
    v9 = objc_msgSendSuper2(&v12, "init");
    sub_100003C3C(a1);
  }

  return v9;
}

unint64_t sub_1000A2044()
{
  result = qword_1004A8998;
  if (!qword_1004A8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8998);
  }

  return result;
}

uint64_t sub_1000A20BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ServerInfo.IdMS.appID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_appID);

  return v1;
}

uint64_t ServerInfo.IdMS.appIDKey.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_appIDKey);

  return v1;
}

uint64_t ServerInfo.IdMS.env.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_env);

  return v1;
}

uint64_t ServerInfo.IdMS.host.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_host);

  return v1;
}

uint64_t ServerInfo.IdMS.realm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_realm);

  return v1;
}

uint64_t ServerInfo.IdMS.serviceName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_serviceName);

  return v1;
}

uint64_t sub_1000A2268()
{
  v1 = *v0;
  v2 = 0x4449707061;
  v3 = 1953722216;
  v4 = 0x6D6C616572;
  if (v1 != 4)
  {
    v4 = 0x4E65636976726573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x79654B4449707061;
  if (v1 != 1)
  {
    v5 = 7761509;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A2314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2F0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A233C(uint64_t a1)
{
  v2 = sub_1000A28A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2378(uint64_t a1)
{
  v2 = sub_1000A28A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

id ServerInfo.IdMS.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A89D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000A28A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for ServerInfo.IdMS();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_appID];
    *v11 = v9;
    v11[1] = v12;
    v30 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_appIDKey];
    *v14 = v13;
    v14[1] = v15;
    v30 = 2;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_env];
    *v17 = v16;
    v17[1] = v18;
    v30 = 3;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_host];
    *v20 = v19;
    v20[1] = v21;
    v30 = 4;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_realm];
    *v23 = v22;
    v23[1] = v24;
    v30 = 5;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic10ServerInfo4IdMS_serviceName];
    *v26 = v25;
    v26[1] = v27;
    v28 = type metadata accessor for ServerInfo.IdMS();
    v29.receiver = v1;
    v29.super_class = v28;
    v3 = objc_msgSendSuper2(&v29, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

unint64_t sub_1000A28A4()
{
  result = qword_1004A89E0;
  if (!qword_1004A89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A89E0);
  }

  return result;
}

id sub_1000A28F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ServerInfo.IdMS());
  result = ServerInfo.IdMS.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1000A294C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000A29A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000A29F0@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AEF0, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1000A2A68@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AF28, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000A2AC0(uint64_t a1)
{
  v2 = sub_1000A2044();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A2AFC(uint64_t a1)
{
  v2 = sub_1000A2044();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1000A2BB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000A2BF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000A2D00()
{
  result = qword_1004A8A38;
  if (!qword_1004A8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A38);
  }

  return result;
}

unint64_t sub_1000A2D58()
{
  result = qword_1004A8A40;
  if (!qword_1004A8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A40);
  }

  return result;
}

unint64_t sub_1000A2DB0()
{
  result = qword_1004A8A48;
  if (!qword_1004A8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A48);
  }

  return result;
}

unint64_t sub_1000A2E08()
{
  result = qword_1004A8A50;
  if (!qword_1004A8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A50);
  }

  return result;
}

unint64_t sub_1000A2E60()
{
  result = qword_1004A8A58;
  if (!qword_1004A8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A58);
  }

  return result;
}

unint64_t sub_1000A2EB8()
{
  result = qword_1004A8A60;
  if (!qword_1004A8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A60);
  }

  return result;
}

uint64_t sub_1000A2F0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449707061 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B4449707061 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7761509 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6C616572 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t KnoxPointerType.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_createdAt;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KnoxPointerType.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_description);

  return v1;
}

uint64_t KnoxPointerType.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);

  return v1;
}

uint64_t KnoxPointerType.space.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_space);

  return v1;
}

uint64_t sub_1000A329C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A73C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A331C()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A6908(&qword_1004A8A68, type metadata accessor for KnoxPointerType);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for KnoxPointerType()
{
  result = qword_1004A8B58;
  if (!qword_1004A8B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A3434()
{
  v2 = v0;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for Array();
  sub_1000A6908(&qword_1004A8A68, type metadata accessor for KnoxPointerType);
  swift_getWitnessTable();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    type metadata accessor for KnoxPointerType();
    v2 = _arrayForceCast<A, B>(_:)();
  }

  return v2;
}

uint64_t KnoxPointerType.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  KnoxPointerType.init(from:)(a1);
  return v2;
}

uint64_t KnoxPointerType.init(from:)(void *a1)
{
  v73 = type metadata accessor for DecodingError();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A73C0);
  __chkstk_darwin(v4 - 8);
  v71 = v69 - v5;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v79 = *(v6 - 8);
  v80 = v6;
  __chkstk_darwin(v6);
  v78 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v77 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v74);
  v82 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v81 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000039E8(&qword_1004A8A70);
  v83 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v69 - v18;
  v85 = a1;
  v86 = v1;
  *(v1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType____lazy_storage___jsonEncoder) = 0;
  sub_10000E2A8(a1, a1[3]);
  sub_1000A4860();
  v20 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v69[0] = v16;
    v69[1] = v13;
    v84 = v14;
    sub_1000039E8(&qword_1004A8A88);
    v89 = 0;
    sub_1000A6608(&qword_1004A8A90);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v17;
    *(v86 + 16) = v87;
    LOBYTE(v87) = 1;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = v25;
    if (qword_1004A6AB0 != -1)
    {
      swift_once();
    }

    v27 = qword_1004E2AF0;
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 dateFromString:v28];

    if (!v29)
    {
      v84 = 0x8000000100430230;
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v33._object = 0x80000001004302A0;
      v33._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v33);
      v34._countAndFlagsBits = v24;
      v34._object = v26;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 0xD000000000000022;
      v35._object = 0x80000001004302C0;
      String.append(_:)(v35);
      v72 = v88;
      v73 = v87;
      v81 = type metadata accessor for KnoxServiceClient.ClientError();
      v36 = swift_allocObject();
      v70 = sub_10000E014();
      v71 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v87 = &_swiftEmptyArrayStorage;
      sub_1000A6908(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v75 + 104))(v77, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v76);
      v37 = v78;
      v38 = v79;
      v39 = v80;
      (*(v79 + 104))(v78, enum case for DispatchQoS.QoSClass.default(_:), v80);
      static OS_dispatch_queue.global(qos:)();
      (*(v38 + 8))(v37, v39);
      v40 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v36 + 16) = 0x6F72662874696E69;
      *(v36 + 24) = 0xEB00000000293A6DLL;
      v41 = v84;
      *(v36 + 32) = 0xD000000000000060;
      *(v36 + 40) = v41;
      *(v36 + 56) = 7;
      *(v36 + 48) = 100;
      v42 = v72;
      *(v36 + 64) = v73;
      *(v36 + 72) = v42;
      *(v36 + 80) = 0;
      *(v36 + 88) = v40;
      sub_1000A6908(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v43 = v36;
      swift_willThrow();
      (*(v83 + 8))(v19, v22);
      v21 = v86;
LABEL_4:

      goto LABEL_5;
    }

    v30 = v69[0];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v86;
    (*(v81 + 16))(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_createdAt, v30, v84);
    LOBYTE(v87) = 2;
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v44 = (v31 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_description);
    *v44 = v32;
    v44[1] = v45;
    LOBYTE(v87) = 3;
    v80 = 0;
    *(v31 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_enforceUnique) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1000039E8(&qword_1004A8A98);
    v89 = 4;
    sub_1000A5510();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v31 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_fieldEnums) = v87;
    sub_1000039E8(&qword_1004A8AA8);
    v89 = 5;
    sub_1000A55BC(&qword_1004A8AB0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v31 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_fields) = v87;
    LOBYTE(v87) = 6;
    v47 = KeyedDecodingContainer.decode(_:forKey:)();
    v48 = (v31 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
    *v48 = v47;
    v48[1] = v49;
    sub_1000039E8(&qword_1004A8AB8);
    v89 = 7;
    sub_1000A5628(&qword_1004A8AC0, sub_1000A56AC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_permissions) = v87;
    sub_1000039E8(&qword_1004A6B48);
    v89 = 8;
    sub_1000A6724(&qword_1004A88F8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v82 = 0;
    *(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_requiredFields) = v87;
    LOBYTE(v87) = 9;
    v50 = v19;
    v51 = v82;
    v52 = KeyedDecodingContainer.decode(_:forKey:)();
    v82 = v51;
    if (v51)
    {
      v54 = v84;
      v81 = *(v81 + 8);
      (v81)(v69[0], v84);
      (*(v83 + 8))(v19, v22);
      LODWORD(v83) = 0;
    }

    else
    {
      v55 = (v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_space);
      *v55 = v52;
      v55[1] = v53;
      LOBYTE(v87) = 11;
      v56 = v82;
      v57 = KeyedDecodingContainer.decode(_:forKey:)();
      v82 = v56;
      if (!v56)
      {
        *(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_uploadsEnabled) = v57 & 1;
        sub_1000039E8(&qword_1004A7330);
        v89 = 10;
        sub_10000E404();
        v58 = v82;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v82 = v58;
        if (v58)
        {
          v59 = *(v81 + 8);
          v59(v69[0], v84);
          (*(v83 + 8))(v19, v22);
          v87 = v82;
          swift_errorRetain();
          sub_1000039E8(&qword_1004AB0A0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            LODWORD(v83) = 1;
            v54 = v84;
            v46 = v80;
            v81 = v59;
LABEL_13:
            v21 = v86;

            (v81)(v21 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_createdAt, v54);
            if (!v46)
            {
            }

            if ((v83 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }

          (*(v81 + 56))(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_updatedAt, 1, 1, v84);
          (*(v70 + 8))(v72, v73);

          v82 = 0;
        }

        else if (v88)
        {
          v60 = qword_1004E2AF0;
          v61 = String._bridgeToObjectiveC()();

          v62 = [v60 dateFromString:v61];

          if (v62)
          {
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v63 = 0;
          }

          else
          {
            v63 = 1;
          }

          v66 = v81;
          v67 = v84;
          (*(v81 + 8))(v69[0], v84);
          (*(v83 + 8))(v50, v22);
          v68 = v71;
          (*(v66 + 56))(v71, v63, 1, v67);
          sub_1000A5754(v68, v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_updatedAt);
        }

        else
        {
          v64 = v81;
          v65 = v84;
          (*(v81 + 8))(v69[0], v84);
          (*(v83 + 8))(v19, v22);
          (*(v64 + 56))(v86 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_updatedAt, 1, 1, v65);
        }

        sub_100003C3C(v85);
        return v86;
      }

      v54 = v84;
      v81 = *(v81 + 8);
      (v81)(v69[0], v84);
      (*(v83 + 8))(v19, v22);
      LODWORD(v83) = 1;
    }

    v46 = v80;
    goto LABEL_13;
  }

  v21 = v86;
LABEL_5:

  type metadata accessor for KnoxPointerType();
  swift_deallocPartialClassInstance();
  sub_100003C3C(v85);
  return v21;
}

unint64_t sub_1000A4860()
{
  result = qword_1004A8A80;
  if (!qword_1004A8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8A80);
  }

  return result;
}

char *sub_1000A48B4()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v44 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  v14 = __chkstk_darwin(v13 - 8);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v45;
  v18 = (*(*v0 + 216))(v14);
  if (!v17)
  {
    v36 = v7;
    v37 = v12;
    v38 = v9;
    v39 = v4;
    v40 = v3;
    v41 = v6;
    v20 = v44;
    v21 = v19;
    v22 = v18;
    static String.Encoding.utf8.getter();
    v42 = v22;
    v45 = v21;
    v23 = String.init(data:encoding:)();
    if (v24)
    {
      v16 = v23;
    }

    else
    {
      v34 = 0x8000000100430230;
      v35 = 0x80000001004302F0;
      v33[1] = type metadata accessor for KnoxServiceClient.ClientError();
      v26 = swift_allocObject();
      sub_10000E014();
      v33[0] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v46 = &_swiftEmptyArrayStorage;
      sub_1000A6908(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v43 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
      v27 = v20;
      v28 = *(v20 + 104);
      v29 = v40;
      v28(v40, enum case for DispatchQoS.QoSClass.default(_:), v1);
      static OS_dispatch_queue.global(qos:)();
      (*(v27 + 8))(v29, v1);
      v30 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v26 + 16), "jsonString()");
      *(v26 + 29) = 0;
      *(v26 + 30) = -5120;
      v31 = v34;
      *(v26 + 32) = 0xD000000000000060;
      *(v26 + 40) = v31;
      *(v26 + 56) = 7;
      *(v26 + 48) = 136;
      *(v26 + 64) = 0xD000000000000025;
      *(v26 + 72) = v35;
      *(v26 + 80) = 0;
      *(v26 + 88) = v30;
      sub_1000A6908(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      v16 = swift_allocError();
      *v32 = v26;
      swift_willThrow();
    }

    sub_100031928(v42, v45);
  }

  return v16;
}

uint64_t sub_1000A4DB0()
{
  sub_1000A57C4();
  type metadata accessor for KnoxPointerType();
  sub_1000A6908(&qword_1004A8AD8, type metadata accessor for KnoxPointerType);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t sub_1000A4E64(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x2D64657461657263;
  }

  else
  {
    v3 = 0x65756C6176;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEA00000000007461;
  }

  if (*a2)
  {
    v5 = 0x2D64657461657263;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007461;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000A4F0C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A4F90()
{
  String.hash(into:)();
}

Swift::Int sub_1000A5000()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A5080@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AF60, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000A50E0(uint64_t *a1@<X8>)
{
  v2 = 0x65756C6176;
  if (*v1)
  {
    v2 = 0x2D64657461657263;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000007461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000A5120()
{
  if (*v0)
  {
    return 0x2D64657461657263;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1000A515C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047AF60, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000A51C0(uint64_t a1)
{
  v2 = sub_1000A596C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A51FC(uint64_t a1)
{
  v2 = sub_1000A596C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointerType.ValueWithCreatedTime.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A8AE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000A596C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  v19 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_100003C3C(a1);
}

uint64_t static KnoxPointerType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) && *(a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8) == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static KnoxPointerType.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) && *(a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8) == *(a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id sub_1000A54C0()
{
  v0 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  result = [v0 setFormatOptions:3955];
  qword_1004E2AF0 = v0;
  return result;
}

unint64_t sub_1000A5510()
{
  result = qword_1004A8AA0;
  if (!qword_1004A8AA0)
  {
    sub_100003A94(&qword_1004A8A98);
    sub_1000A6724(&qword_1004A88F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8AA0);
  }

  return result;
}

uint64_t sub_1000A55BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A8AA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A5628(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A8AB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A56AC()
{
  result = qword_1004A8AC8;
  if (!qword_1004A8AC8)
  {
    sub_100003A94(&qword_1004A8AD0);
    sub_1000A55BC(&qword_1004A8AB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8AC8);
  }

  return result;
}

uint64_t sub_1000A5754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000039E8(&qword_1004A73C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A57C4()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType____lazy_storage___jsonEncoder;
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType____lazy_storage___jsonEncoder))
  {
    v8 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType____lazy_storage___jsonEncoder);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v8 = JSONEncoder.init()();
    static JSONEncoder.OutputFormatting.prettyPrinted.getter();
    dispatch thunk of JSONEncoder.outputFormatting.setter();
    *v5 = sub_1000A70E0;
    v5[1] = v1;
    (*(v3 + 104))(v5, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v2);

    dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
    *(v1 + v7) = v8;
  }

  return v8;
}

unint64_t sub_1000A596C()
{
  result = qword_1004A8AE8;
  if (!qword_1004A8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8AE8);
  }

  return result;
}

uint64_t sub_1000A59C0(uint64_t a1, void *a2)
{
  if (qword_1004A6AB0 != -1)
  {
    swift_once();
  }

  v3 = qword_1004E2AF0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v5 = [v3 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E2A8(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v7, v8);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100003C3C(v7);
}

uint64_t sub_1000A5AF4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6563617073;
    v7 = 0x2D64657461647075;
    if (a1 != 10)
    {
      v7 = 0x2D7364616F6C7075;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1701667182;
    v9 = 0x697373696D726570;
    if (a1 != 7)
    {
      v9 = 0x6465726975716572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x2D64656B636F6C62;
    v2 = 0x2D6563726F666E65;
    v3 = 0x6E652D646C656966;
    if (a1 != 4)
    {
      v3 = 0x73646C656966;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x2D64657461657263;
    if (a1 != 1)
    {
      v4 = 0x7470697263736564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000A5CB4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000A5AF4(*a1);
  v5 = v4;
  if (v3 == sub_1000A5AF4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000A5D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000A5AF4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000A5DA0()
{
  sub_1000A5AF4(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000A5DF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000A5AF4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000A5E54@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A7094(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A5E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A5AF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000A5ECC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A7094(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A5F00(uint64_t a1)
{
  v2 = sub_1000A4860();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5F3C(uint64_t a1)
{
  v2 = sub_1000A4860();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointerType.deinit()
{

  v1 = OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_createdAt;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1000668F4(v0 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_updatedAt);

  return v0;
}

uint64_t KnoxPointerType.__deallocating_deinit()
{
  KnoxPointerType.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A60D4(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A8AF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000A4860();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  sub_1000039E8(&qword_1004A8A88);
  sub_1000A6608(&qword_1004A8AF8);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    type metadata accessor for Date();
    sub_1000A6908(&qword_1004A7D40, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_fieldEnums);
    HIBYTE(v10) = 4;
    sub_1000039E8(&qword_1004A8A98);
    sub_1000A6678();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_fields);
    HIBYTE(v10) = 5;
    sub_1000039E8(&qword_1004A8AA8);
    sub_1000A55BC(&qword_1004A8B10);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_permissions);
    HIBYTE(v10) = 7;
    sub_1000039E8(&qword_1004A8AB8);
    sub_1000A5628(&qword_1004A8B18, sub_1000A6790);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_requiredFields);
    HIBYTE(v10) = 8;
    sub_1000039E8(&qword_1004A6B48);
    sub_1000A6724(&qword_1004A8B08);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000A6608(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A8A88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A6678()
{
  result = qword_1004A8B00;
  if (!qword_1004A8B00)
  {
    sub_100003A94(&qword_1004A8A98);
    sub_1000A6724(&qword_1004A8B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8B00);
  }

  return result;
}

uint64_t sub_1000A6724(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100003A94(&qword_1004A6B48);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A6790()
{
  result = qword_1004A8B20;
  if (!qword_1004A8B20)
  {
    sub_100003A94(&qword_1004A8AD0);
    sub_1000A55BC(&qword_1004A8B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8B20);
  }

  return result;
}

uint64_t sub_1000A6838@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000A6908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A6950(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) && v2[1] == *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000A6998(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) && v2[1] == *(*a2 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1000A69DC()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000A6C28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000A6C28()
{
  if (!qword_1004A74C0)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1004A74C0);
    }
  }
}

__n128 sub_1000A6C80(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A6C8C(uint64_t a1, int a2)
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

uint64_t sub_1000A6CD4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for KnoxPointerType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KnoxPointerType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A6E88()
{
  result = qword_1004A8C90;
  if (!qword_1004A8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8C90);
  }

  return result;
}

unint64_t sub_1000A6EE0()
{
  result = qword_1004A8C98;
  if (!qword_1004A8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8C98);
  }

  return result;
}

unint64_t sub_1000A6F38()
{
  result = qword_1004A8CA0;
  if (!qword_1004A8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8CA0);
  }

  return result;
}

unint64_t sub_1000A6F90()
{
  result = qword_1004A8CA8;
  if (!qword_1004A8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8CA8);
  }

  return result;
}

unint64_t sub_1000A6FE8()
{
  result = qword_1004A8CB0;
  if (!qword_1004A8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8CB0);
  }

  return result;
}

unint64_t sub_1000A7040()
{
  result = qword_1004A8CB8;
  if (!qword_1004A8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8CB8);
  }

  return result;
}

unint64_t sub_1000A7094(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10047AFB0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000A70FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007D900(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000A93A4(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1000A7244()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for PointerTypesTask();
  v2 = objc_msgSendSuper2(&v12, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = v3;
  v4._countAndFlagsBits = 0x273D656D616E202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  v5 = &v1[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8._countAndFlagsBits = v7;
  v8._object = v6;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 39;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return v11;
}

uint64_t sub_1000A7328(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *((swift_isaMask & **a2) + 0x4C8);

  return v6(sub_100027938, v5);
}

uint64_t sub_1000A73E8()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_finalHandler);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1000A7508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_pointerTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000A75C0()
{
  v1 = (v0 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_space);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1000A7638(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

char *PointerTypesTask.init(client:space:finalHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_pointerTypes) = &_swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask__unsortedTypes) = &_swiftEmptyArrayStorage;
  v7 = (v5 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_space);
  *v7 = a2;
  v7[1] = a3;
  v8 = (v5 + OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_finalHandler);
  *v8 = a4;
  v8[1] = a5;

  v9 = sub_10003D38C(a1);
  _StringGuts.grow(_:)(27);

  v10 = &v9[OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask_space];
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14 = &v9[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v14 = 0xD000000000000019;
  *(v14 + 1) = 0x80000001004303D0;

  return v9;
}

uint64_t type metadata accessor for PointerTypesTask()
{
  result = qword_1004A8CF0;
  if (!qword_1004A8CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A78A8@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin(v2);
  v96 = v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v91 = *(v4 - 8);
  v92 = v4;
  __chkstk_darwin(v4);
  v95 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v90);
  v94 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v93 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v9 - 8);
  v102 = v80 - v10;
  v101 = type metadata accessor for URLComponents();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v99 = v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for URLRequest();
  v86 = *(v87 - 8);
  v12 = __chkstk_darwin(v87);
  v85 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v80 - v14;
  v16 = sub_1000039E8(&qword_1004A6D30);
  v17 = __chkstk_darwin(v16 - 8);
  v89 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v80 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v84 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = v80 - v26;
  __chkstk_darwin(v25);
  v29 = v80 - v28;
  v30 = OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_nextPageURL;
  swift_beginAccess();
  v104 = v1;
  sub_10001FB20(v1 + v30, v20);
  v31 = *(v22 + 48);
  v107 = v21;
  if (v31(v20, 1, v21) != 1)
  {
    v53 = v20;
    v54 = v107;
    (*(v22 + 32))(v29, v53, v107);
    LOBYTE(v105) = 1;
    v55 = v100;
    sub_10005ADB0(v29, 0, 1, v15);
    if (v55)
    {
      return (*(v22 + 8))(v29, v54);
    }

    (*(v22 + 8))(v29, v54);
    return (*(v86 + 32))(v88, v15, v87);
  }

  v83 = v31;
  sub_100013F2C(v20, &qword_1004A6D30);
  v32 = *(v104 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v33 = *(v22 + 16);
  v81 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v34 = v107;
  v82 = v33;
  v33(v27, (v32 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL), v107);
  v35 = v102;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v36 = *(v22 + 8);
  v36(v27, v34);
  v37 = v101;
  if ((*(v103 + 48))(v35, 1, v101) == 1)
  {
    sub_100013F2C(v102, &qword_1004A7160);
    v104 = 0x80000001004303F0;
    v105 = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v105 = 0xD000000000000028;
    v106 = 0x800000010042A390;
    v38 = v81 + v32;
    v39 = v107;
    v82(v27, v38, v107);
    v40 = URL.description.getter();
    v42 = v41;
    v36(v27, v39);
    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    v102 = v106;
    v103 = v105;
    v107 = type metadata accessor for KnoxServiceClient.ClientError();
    v44 = swift_allocObject();
    sub_10000E014();
    v101 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v105 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v91 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v92);
    v46 = v96;
    v45 = v97;
    v47 = v98;
    (*(v97 + 104))(v96, enum case for DispatchQoS.QoSClass.default(_:), v98);
    static OS_dispatch_queue.global(qos:)();
    (*(v45 + 8))(v46, v47);
    v48 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v44 + 16), "urlRequest()");
    *(v44 + 29) = 0;
    *(v44 + 30) = -5120;
    *(v44 + 32) = 0xD00000000000006ALL;
    v49 = v104;
    *(v44 + 56) = 14;
    *(v44 + 40) = v49;
    *(v44 + 48) = 63;
    v50 = v102;
    *(v44 + 64) = v103;
    *(v44 + 72) = v50;
    *(v44 + 80) = 0;
    *(v44 + 88) = v48;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v51 = v44;
    return swift_willThrow();
  }

  v80[1] = v32;
  v81 = v36;
  v82 = (v22 + 8);
  (*(v103 + 32))(v99, v102, v37);
  v105 = 0;
  v106 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v105 = 0x2F7365636170732FLL;
  v106 = 0xE800000000000000;
  v57._countAndFlagsBits = (*((swift_isaMask & *v104) + 0x4F0))(v56);
  String.append(_:)(v57);

  v58._countAndFlagsBits = 0x73657079742FLL;
  v58._object = 0xE600000000000000;
  String.append(_:)(v58);
  v59 = v105;
  v60 = v106;
  v61 = URLComponents.path.modify();
  v62._countAndFlagsBits = v59;
  v62._object = v60;
  String.append(_:)(v62);

  v61(&v105, 0);
  v63 = v89;
  URLComponents.url.getter();
  v64 = v107;
  if (v83(v63, 1, v107) == 1)
  {
    sub_100013F2C(v63, &qword_1004A6D30);
    v107 = 0x80000001004303F0;
    v105 = 0;
    v106 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v105 = 0xD000000000000026;
    v106 = 0x800000010042A3C0;
    v65._countAndFlagsBits = URLComponents.description.getter();
    String.append(_:)(v65);

    v66._countAndFlagsBits = 39;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    v102 = v105;
    v100 = v106;
    v104 = type metadata accessor for KnoxServiceClient.ClientError();
    v67 = swift_allocObject();
    sub_10000E014();
    v89 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v105 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v91 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v92);
    v69 = v96;
    v68 = v97;
    v70 = v98;
    (*(v97 + 104))(v96, enum case for DispatchQoS.QoSClass.default(_:), v98);
    static OS_dispatch_queue.global(qos:)();
    (*(v68 + 8))(v69, v70);
    v71 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v67 + 16), "urlRequest()");
    *(v67 + 29) = 0;
    *(v67 + 30) = -5120;
    *(v67 + 32) = 0xD00000000000006ALL;
    v72 = v107;
    *(v67 + 56) = 14;
    *(v67 + 40) = v72;
    *(v67 + 48) = 69;
    v73 = v100;
    *(v67 + 64) = v102;
    *(v67 + 72) = v73;
    *(v67 + 80) = 0;
    *(v67 + 88) = v71;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v74 = v67;
    swift_willThrow();
    return (*(v103 + 8))(v99, v101);
  }

  v75 = v103;
  v76 = v101;
  v77 = v84;
  (*(v22 + 32))(v84, v63, v64);
  LOBYTE(v105) = 1;
  v78 = v85;
  v79 = v100;
  sub_10005ADB0(v77, 0, 1, v85);
  if (!v79)
  {
    v81(v77, v64);
    (*(v75 + 8))(v99, v76);
    v15 = v78;
    return (*(v86 + 32))(v88, v15, v87);
  }

  v81(v77, v64);
  return (*(v75 + 8))(v99, v76);
}

uint64_t sub_1000A87A8(uint64_t a1, unint64_t a2)
{
  v6 = type metadata accessor for DecodingError.Context();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DecodingError();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v73 = *(v12 - 8);
  v74 = v12;
  __chkstk_darwin(v12);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v69 = *(v14 - 8);
  v70 = v14;
  __chkstk_darwin(v14);
  v71 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v66);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v17 - 8);
  v67 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KnoxPointerType();
  v19 = sub_1000A3434();
  if (!v3)
  {
    v36 = v19;
    swift_beginAccess();
    sub_100026100(v36);
    result = swift_endAccess();
    v37 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
    v38 = a2 >> 62;
    v11 = v2;
    if ((a2 >> 62) > 1)
    {
      v39 = 0;
      if (v38 != 2)
      {
        goto LABEL_17;
      }

      v41 = *(a1 + 16);
      v40 = *(a1 + 24);
      v39 = v40 - v41;
      if (!__OFSUB__(v40, v41))
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v39 = BYTE6(a2);
      goto LABEL_17;
    }

    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_31;
    }

    v39 = HIDWORD(a1) - a1;
LABEL_17:
    v42 = OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue;
    result = OS_dispatch_queue.sync<A>(execute:)();
    v43 = __OFADD__(aBlock, v39);
    v44 = aBlock + v39;
    if (v43)
    {
      __break(1u);
    }

    else
    {
      v45 = *(v37 + v42);
      v46 = swift_allocObject();
      *(v46 + 16) = v44;
      *(v46 + 24) = v37;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_100027124;
      *(v47 + 24) = v46;
      v79 = sub_10001F874;
      v80 = v47;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_10003885C;
      v78 = &unk_100481CF8;
      v48 = _Block_copy(&aBlock);

      dispatch_sync(v45, v48);
      _Block_release(v48);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v50 = *&v11[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
        v51 = swift_allocObject();
        *(v51 + 16) = v11;
        *(v51 + 24) = 1;
        v8 = swift_allocObject();
        *(v8 + 16) = sub_10001F9F8;
        *(v8 + 24) = v51;
        v79 = sub_10001FA40;
        v80 = v8;
        aBlock = _NSConcreteStackBlock;
        v76 = 1107296256;
        v77 = sub_10003885C;
        v78 = &unk_100481D70;
        v52 = _Block_copy(&aBlock);
        v53 = v11;

        dispatch_sync(v50, v52);
        _Block_release(v52);
        LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

        if ((v50 & 1) == 0)
        {
          return result;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  aBlock = v3;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (!swift_dynamicCast())
  {
    goto LABEL_26;
  }

  LODWORD(result) = (*(v9 + 88))(v11, v8);
  if (result != enum case for DecodingError.typeMismatch(_:) && result != enum case for DecodingError.valueNotFound(_:))
  {
LABEL_21:
    if (result == enum case for DecodingError.keyNotFound(_:))
    {

      (*(v9 + 96))(v11, v8);
      v54 = sub_1000039E8(&qword_1004A7170);
      v55 = v63;
      v56 = v64;
      v57 = v65;
      (*(v64 + 32))(v63, &v11[*(v54 + 48)], v65);
      v58 = DecodingError.Context.debugDescription.getter();
      v61 = v59;
      v62 = v58;
      (*(v56 + 8))(v55, v57);
      sub_100003C3C(v11);
      goto LABEL_7;
    }

    if (result == enum case for DecodingError.dataCorrupted(_:))
    {

      (*(v9 + 96))(v11, v8);
      v22 = v63;
      v23 = v64;
      v24 = v65;
      (*(v64 + 32))(v63, v11, v65);
      goto LABEL_6;
    }

    (*(v9 + 8))(v11, v8);
LABEL_26:

    return swift_willThrow();
  }

  (*(v9 + 96))(v11, v8);
  v21 = sub_1000039E8(&qword_1004A7168);
  v22 = v63;
  v23 = v64;
  v24 = v65;
  (*(v64 + 32))(v63, &v11[*(v21 + 48)], v65);
LABEL_6:
  v25 = DecodingError.Context.debugDescription.getter();
  v61 = v26;
  v62 = v25;
  (*(v23 + 8))(v22, v24);
LABEL_7:

  v63 = 0x80000001004303F0;
  v64 = 0x800000010042A530;
  v65 = type metadata accessor for KnoxServiceClient.ClientError();
  v27 = swift_allocObject();
  sub_10000E014();
  v60 = "hivePointer.swift";
  static DispatchQoS.userInitiated.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10000E720(&qword_1004A6B70, &unk_1004A7850);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v69 + 104))(v71, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v70);
  v29 = v72;
  v28 = v73;
  v30 = v74;
  (*(v73 + 104))(v72, enum case for DispatchQoS.QoSClass.default(_:), v74);
  static OS_dispatch_queue.global(qos:)();
  (*(v28 + 8))(v29, v30);
  v31 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v32 = v64;
  *(v27 + 16) = 0xD00000000000001ALL;
  *(v27 + 24) = v32;
  v33 = v63;
  *(v27 + 32) = 0xD00000000000006ALL;
  *(v27 + 40) = v33;
  *(v27 + 56) = 7;
  *(v27 + 48) = 112;
  v34 = v61;
  *(v27 + 64) = v62;
  *(v27 + 72) = v34;
  *(v27 + 80) = 0;
  *(v27 + 88) = v31;
  sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v35 = v27;
  return swift_willThrow();
}

void *sub_1000A9234()
{
  v0 = sub_1000AA5CC();

  return v0;
}

uint64_t sub_1000A9290()
{
}

id PointerTypesTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PointerTypesTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_1000A93A4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for KnoxPointerType();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000A9584(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000A94A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000A94A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = (v9 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
      result = *v12;
      v13 = v12[1];
      v14 = (*v11 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
      v15 = result == *v14 && v13 == v14[1];
      if (v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 8;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v16 = *v11;
      v9 = v11[1];
      *v11 = v9;
      v11[1] = v16;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A9584(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_104:
    v5 = *v95;
    if (!*v95)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_100078454(v9);
      v9 = result;
    }

    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*v6)
      {
        v89 = *&v9[16 * v88];
        v90 = *&v9[16 * v88 + 24];
        sub_1000A9B80((*v6 + 8 * v89), (*v6 + 8 * *&v9[16 * v88 + 16]), (*v6 + 8 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100078454(v9);
        }

        if (v88 - 2 >= *(v9 + 2))
        {
          goto LABEL_130;
        }

        v91 = &v9[16 * v88];
        *v91 = v89;
        *(v91 + 1) = v90;
        result = sub_1000783C8(v88 - 1);
        v88 = *(v9 + 2);
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*(*v6 + 8 * v8) + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
      result = *v12;
      v13 = v12[1];
      v14 = (*(*v6 + 8 * v10) + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name;
        v5 = v11 + 8 * v10 + 16;
        do
        {
          v18 = (*v5 + v17);
          result = *v18;
          v19 = v18[1];
          v20 = (*(v5 - 8) + v17);
          if (result == *v20 && v19 == v20[1])
          {
            if (v16)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v16 ^ result))
            {
              goto LABEL_22;
            }

            v17 = OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name;
          }

          ++v8;
          v5 += 8;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_22:
      if (v16)
      {
LABEL_23:
        if (v8 < v10)
        {
          goto LABEL_133;
        }

        if (v10 < v8)
        {
          v22 = 8 * v8 - 8;
          v23 = 8 * v10;
          v24 = v8;
          v25 = v10;
          do
          {
            if (v25 != --v24)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_139;
              }

              v26 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v22);
              *(v27 + v22) = v26;
            }

            ++v25;
            v22 -= 8;
            v23 += 8;
          }

          while (v25 < v24);
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_132;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_134;
        }

        if (v10 + a4 >= v28)
        {
          v29 = v6[1];
        }

        else
        {
          v29 = v10 + a4;
        }

        if (v29 < v10)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v8 != v29)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v8 < v10)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100011948(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_100011948((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v8;
    v46 = *v95;
    if (!*v95)
    {
      goto LABEL_141;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_73:
          if (v51)
          {
            goto LABEL_120;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_123;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_127;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_87:
        if (v69)
        {
          goto LABEL_122;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_94:
        v5 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v6)
        {
          goto LABEL_138;
        }

        v85 = *&v9[16 * v5 + 32];
        v86 = *&v9[16 * v47 + 40];
        sub_1000A9B80((*v6 + 8 * v85), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v86), v46);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100078454(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v87 = &v9[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1000783C8(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_118;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_119;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_121;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_124;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_128;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v92 = v10;
  v93 = v6;
  v30 = *v6;
  v31 = *v6 + 8 * v8 - 8;
  v32 = v10 - v8;
LABEL_42:
  v33 = *(v30 + 8 * v8);
  v34 = v32;
  v5 = v31;
  while (1)
  {
    v35 = (v33 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
    v36 = *v35;
    v37 = v35[1];
    v38 = (*v5 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
    v39 = v36 == *v38 && v37 == v38[1];
    if (v39 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_41:
      ++v8;
      v31 += 8;
      --v32;
      if (v8 != v29)
      {
        goto LABEL_42;
      }

      v8 = v29;
      v10 = v92;
      v6 = v93;
      goto LABEL_53;
    }

    if (!v30)
    {
      break;
    }

    v40 = *v5;
    v33 = *(v5 + 8);
    *v5 = v33;
    *(v5 + 8) = v40;
    v5 -= 8;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_41;
    }
  }

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
  return result;
}

uint64_t sub_1000A9B80(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name + 8);
        v25 = (*v21 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
        v26 = *(v23 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name) == *v25 && v24 == v25[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC16KnoxClientPublic15KnoxPointerType_name);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

void *sub_1000A9E14(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000A9EB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000E720(&qword_1004A8D28, &qword_1004A8D20);
          for (i = 0; i != v6; ++i)
          {
            sub_1000039E8(&qword_1004A8D20);
            v9 = sub_1000AA3A4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for KnoxPointer(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AA05C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000E720(&qword_1004A8D08, &qword_1004A8D00);
          for (i = 0; i != v6; ++i)
          {
            sub_1000039E8(&qword_1004A8D00);
            v9 = sub_1000AA424(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for KnoxPointerType();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AA200(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000E720(&qword_1004A8D18, &qword_1004A8D10);
          for (i = 0; i != v6; ++i)
          {
            sub_1000039E8(&qword_1004A8D10);
            v9 = sub_1000AA4AC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for KnoxUpdate();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000AA3A4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000AAD70;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1000AA424(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1000AA4A4;
  }

  __break(1u);
  return result;
}

void (*sub_1000AA4AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000AA52C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AA534()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AA57C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AA594()
{

  return _swift_deallocObject(v0, 25, 7);
}

void *sub_1000AA5CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  MultiPageCapable<>.paginationLoop()(ObjectType, &protocol witness table for PointerTypesTask);
  v4 = v3;
  v5 = OBJC_IVAR____TtC16KnoxClientPublic16PointerTypesTask__unsortedTypes;
  swift_beginAccess();
  v6 = *(v1 + v5);
  swift_bridgeObjectRetain_n();
  v12[0] = sub_1000A9E14(v6, sub_100014348, sub_1000AA05C);
  sub_1000A70FC(v12);

  v7 = (*((swift_isaMask & *v1) + 0x4E0))(v12[0]);
  v8 = (*((swift_isaMask & *v1) + 0x4C0))(v7);
  (*((swift_isaMask & *v1) + 0x4D8))();
  v8();

  (*((swift_isaMask & *v1) + 0x1A0))(1);
  sub_100003B20(*(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client) + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_delegate, v12);
  v9 = v13;
  v10 = v14;
  sub_10000E2A8(v12, v13);
  (*(v10 + 16))(v1, v4, v9, v10);

  sub_100003C3C(v12);
  return v1;
}

uint64_t sub_1000AA85C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = (*((swift_isaMask & **a1) + 0x4C0))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_100027974;
  a2[1] = result;
  return result;
}

uint64_t sub_1000AA8FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x4D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1000AA960(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x4E0);

  return v2(v3);
}

uint64_t sub_1000AA9CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x4F0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000AAA30(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((swift_isaMask & **a2) + 0x4F8);

  return v4(v2, v3);
}

uint64_t sub_1000AAD88()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = String.count.getter();

  if (v1)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    String.append(_:)(v20);

    v2._countAndFlagsBits = 39;
    v2._object = 0xE100000000000000;
    String.append(_:)(v2);
    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 28494;
    v4 = 0xE200000000000000;
  }

  v5 = sub_1000AB058();
  if (v5)
  {
    v6 = 7562585;
  }

  else
  {
    v6 = 28494;
  }

  if (v5)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  _StringGuts.grow(_:)(43);
  v8._countAndFlagsBits = 60;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  type metadata accessor for KnoxRawDownloadToFileAsync();
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0x6C65636E6163203ELL;
  v9._object = 0xEC0000003D64656CLL;
  String.append(_:)(v9);
  v10._countAndFlagsBits = v3;
  v10._object = v4;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6465736F6C63202CLL;
  v11._object = 0xE90000000000003DLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v6;
  v12._object = v7;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7365534C5255202CLL;
  v13._object = 0xED00003D6E6F6973;
  String.append(_:)(v13);
  v14 = [*(v0 + 104) description];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  return 0;
}

uint64_t sub_1000AAFE0(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (String.count.getter() < 1)
  {
    a2 = 0x800000010042F730;
    a1 = 0xD000000000000013;
  }

  else
  {
  }

  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
}

uint64_t sub_1000AB058()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000ACF10;
  *(v4 + 24) = v3;
  aBlock[4] = sub_10001FA40;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003885C;
  aBlock[3] = &unk_100482030;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_1000AB1BC()
{
  v1 = v0;
  type metadata accessor for KnoxRawDownloadToFileAsync.CallbackWrapper();
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000039E8(&unk_1004A73A0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v1 = 1;
    __chkstk_darwin(v2);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  return v1;
}

uint64_t sub_1000AB394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 64);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_11:
    v9 = -1;
LABEL_12:
    *a3 = v9;
    return result;
  }

  v9 = 0;
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_14;
    }

    v10 = *(v7 + 32 + v9);
    if (v10 != 1)
    {
      break;
    }

    *a2 = 0;
LABEL_4:
    if (v8 == ++v9)
    {
      goto LABEL_11;
    }
  }

  if (v10 != 2)
  {
    goto LABEL_4;
  }

  *a2 = 0;
  swift_beginAccess();
  a2 = *(a1 + 64);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 64) = a2;
  if (result)
  {
    goto LABEL_9;
  }

LABEL_14:
  result = sub_1000ACEA8(a2);
  a2 = result;
LABEL_9:
  if (v9 < *(a2 + 16))
  {
    *(a2 + v9 + 32) = 1;
    *(a1 + 64) = a2;
    result = swift_endAccess();
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1000AB4AC(char *a1, unint64_t a2, int64_t a3)
{
  v5 = v3;
  v71 = a2;
  v72 = a3;
  v70 = a1;
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  v68 = v6;
  v69 = v7;
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v3[2];
  OS_dispatch_queue.sync<A>(execute:)();
  v73 = v4;
  v17 = String.count.getter();

  if (v17)
  {
    sub_1000039E8(&unk_1004A7370);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100376BB0;
    v78 = 0;
    v79 = 0xE000000000000000;
    v75[0] = v3;
    type metadata accessor for KnoxRawDownloadToFileAsync();
    _print_unlocked<A, B>(_:_:)();
    v19._countAndFlagsBits = 46;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._object = 0x800000010042F630;
    v20._countAndFlagsBits = 0xD000000000000015;
    String.append(_:)(v20);
    v21 = v78;
    v22 = v79;
    *(v18 + 56) = &type metadata for String;
    v23 = sub_10001A9EC();
    *(v18 + 64) = v23;
    *(v18 + 32) = v21;
    *(v18 + 40) = v22;
    OS_dispatch_queue.sync<A>(execute:)();
    v24 = v78;
    v25 = v79;
    *(v18 + 96) = &type metadata for String;
    *(v18 + 104) = v23;
    *(v18 + 72) = v24;
    *(v18 + 80) = v25;
    sub_10001AA40(0, &qword_1004A7380);
    v26 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v63 = v13;
  v64 = v10;
  v65 = v12;
  v66 = v16;
  v27 = type metadata accessor for KnoxRawDownloadToFileAsync.CallbackWrapper();
  v28 = v73;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1000039E8(&unk_1004A73A0);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v78)
  {
    goto LABEL_17;
  }

  v73 = v27;
  v29 = v72;
  v30 = v72 / 0x1000000;
  v31 = swift_beginAccess();
  if (v30 != *(v5[8] + 2) - 1)
  {
    v35 = v9;
    v37 = v70;
    v36 = v71;
    if (!v70)
    {
      goto LABEL_15;
    }

    v34 = 0x1000000;
    goto LABEL_11;
  }

  v32 = v5[10];
  v33 = __OFSUB__(v32, v29);
  v34 = v32 - v29;
  if (v33)
  {
    __break(1u);
    goto LABEL_28;
  }

  v35 = v9;
  v37 = v70;
  v36 = v71;
  if (v70)
  {
LABEL_11:
    if (v36 - v37 == v34)
    {
      goto LABEL_12;
    }

LABEL_15:
    v71 = 0x80000001004305F0;
    v72 = 0x800000010042F630;
    v73 = 0x8000000100430680;
    v74 = type metadata accessor for KnoxServiceClient.ClientError();
    v40 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v70 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v75[0] = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v67 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
    v47 = v68;
    v48 = v69;
    (*(v69 + 104))(v35, enum case for DispatchQoS.QoSClass.default(_:), v68);
    static OS_dispatch_queue.global(qos:)();
    (*(v48 + 8))(v35, v47);
    v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v49 = v72;
    *(v40 + 16) = 0xD000000000000015;
    *(v40 + 24) = v49;
    v50 = v71;
    *(v40 + 32) = 0xD00000000000006BLL;
    *(v40 + 40) = v50;
    *(v40 + 56) = 14;
    *(v40 + 48) = 295;
    v46 = 0xD000000000000030;
    goto LABEL_16;
  }

  if (v34)
  {
    goto LABEL_15;
  }

LABEL_12:
  v77 = 1;
  v76 = 0;
  __chkstk_darwin(v31);
  *(&v63 - 8) = v5;
  *(&v63 - 7) = &v77;
  *(&v63 - 6) = v29;
  *(&v63 - 5) = v38;
  *(&v63 - 4) = v39;
  *(&v63 - 3) = v30;
  *(&v63 - 2) = &v76;
  OS_dispatch_queue.sync<A>(execute:)();
  if (v28)
  {
    return;
  }

  if (v77 == 1)
  {
    v71 = 0x80000001004305F0;
    v72 = 0x800000010042F630;
    v73 = 0x80000001004306C0;
    v74 = type metadata accessor for KnoxServiceClient.ClientError();
    v40 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v70 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v75[0] = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v67 + 104))(v65, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
    v41 = v68;
    v42 = v69;
    (*(v69 + 104))(v35, enum case for DispatchQoS.QoSClass.default(_:), v68);
    static OS_dispatch_queue.global(qos:)();
    (*(v42 + 8))(v35, v41);
    v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v44 = v72;
    *(v40 + 16) = 0xD000000000000015;
    *(v40 + 24) = v44;
    v45 = v71;
    *(v40 + 32) = 0xD00000000000006BLL;
    *(v40 + 40) = v45;
    *(v40 + 56) = 10;
    *(v40 + 48) = 322;
    v46 = 0xD00000000000002CLL;
LABEL_16:
    *(v40 + 64) = v46;
    *(v40 + 72) = v73;
    *(v40 + 80) = 0;
    *(v40 + 88) = v43;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v51 = v40;
LABEL_17:
    swift_willThrow();
    return;
  }

  if (v5[9] == *(v5[8] + 2))
  {
    v52 = v5[6];
    v75[0] = v5[5];
    v75[1] = v52;

    v53._countAndFlagsBits = 0x72676F72706E692ELL;
    v53._object = 0xEB00000000737365;
    String.append(_:)(v53);
    v54 = [objc_allocWithZone(NSFileManager) init];
    v55 = String._bridgeToObjectiveC()();

    v56 = String._bridgeToObjectiveC()();
    v75[0] = 0;
    LODWORD(v52) = [v54 moveItemAtPath:v55 toPath:v56 error:v75];

    if (!v52)
    {
      v62 = v75[0];
      _convertNSErrorToError(_:)();

      goto LABEL_17;
    }

    v57 = v75[0];
  }

  v58 = v76;
  if ((v76 - 0x8000000000) < 0xFFFFFF0000000000)
  {
LABEL_28:
    __break(1u);
  }

  v59 = v5[10];
  OS_dispatch_queue.sync<A>(execute:)();
  v60 = *(v75[0] + 2);
  if (v60)
  {

    v60(v61, ((v58 << 24) / v59) * 100.0);

    sub_100031B5C(v60);
  }

  else
  {
  }
}

void sub_1000ABFCC(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, void *a5, unint64_t a6, void *a7)
{
  v13 = *(a1 + 56);
  if (v13)
  {
    *a2 = 0;
    if (a3 < 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v9 = a1;
    v12 = a6;
    v11 = a7;
    v25[0] = 0;
    v7 = v13;
    v17 = [v7 seekToOffset:a3 error:v25];
    v18 = v25[0];
    if (v17)
    {
      v25[0] = a4;
      v25[1] = a5;
      sub_1000ACDDC();
      v19 = v18;
      NSFileHandle.write<A>(contentsOf:)();
      if (!v8)
      {
        swift_beginAccess();
        v10 = *(v9 + 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + 64) = v10;
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        v10 = sub_1000ACEA8(v10);
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_7:
          if (*(v10 + 2) > v12)
          {
            v10[v12 + 32] = 0;
            *(v9 + 64) = v10;
            swift_endAccess();

            v21 = *(v9 + 72);
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              *(v9 + 72) = v23;
              *v11 = v23;
              return;
            }

LABEL_17:
            __break(1u);
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v24 = v25[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1000AC168()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v29 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v41 = 1;
  v40 = 0;
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = &v40;
  v8[4] = &v41;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000ACD58;
  *(v9 + 24) = v8;
  v38 = sub_10001FA40;
  v39 = v9;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10003885C;
  v37 = &unk_100481FB8;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    OS_dispatch_queue.sync<A>(execute:)();
    v12 = String.count.getter();

    if (!v12 && (v41 & 1) == 0)
    {
      v26 = 0x80000001004305F0;
      aBlock = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      aBlock = 0xD00000000000001ELL;
      v35 = 0x8000000100430660;
      v33 = v40;
      swift_errorRetain();
      sub_1000039E8(&unk_1004A73A0);
      v13._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v13);

      v23 = v35;
      v24 = aBlock;
      v25 = type metadata accessor for KnoxServiceClient.ClientError();
      v14 = swift_allocObject();
      v22[1] = sub_10001AA40(0, &qword_1004A7840);
      v22[2] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      aBlock = &_swiftEmptyArrayStorage;
      sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10003DEE8();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v27 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v28);
      v15 = v30;
      v16 = v31;
      v17 = v32;
      (*(v31 + 104))(v30, enum case for DispatchQoS.QoSClass.default(_:), v32);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*(v16 + 8))(v15, v17);
      v18 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v14 + 16) = 0x292865736F6C63;
      *(v14 + 24) = 0xE700000000000000;
      v19 = v26;
      *(v14 + 32) = 0xD00000000000006BLL;
      *(v14 + 40) = v19;
      *(v14 + 56) = 10;
      *(v14 + 48) = 356;
      v20 = v23;
      *(v14 + 64) = v24;
      *(v14 + 72) = v20;
      *(v14 + 80) = 0;
      *(v14 + 88) = v18;
      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v21 = v14;
      swift_willThrow();
    }
  }

  return result;
}

void sub_1000AC764(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v11 = 0;
  if ([v4 closeAndReturnError:&v11])
  {
    v7 = *(a1 + 56);
    v8 = v11;
LABEL_5:
    *(a1 + 56) = 0;

    return;
  }

  v9 = v11;
  v10 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *a2 = v10;

  *a3 = 0;
}

id *sub_1000AC838()
{

  return v0;
}

uint64_t sub_1000AC888()
{
  sub_1000AC838();

  return swift_deallocClassInstance();
}

BOOL sub_1000AC904()
{
  OS_dispatch_queue.sync<A>(execute:)();
  v0 = String.count.getter();

  return v0 != 0;
}

uint64_t sub_1000AC980(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OS_dispatch_queue.sync<A>(execute:)();
  v6 = String.count.getter();

  if (!v6)
  {
    v8 = *(v5 + 16);
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v5;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000ACCEC;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10001F874;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10003885C;
    aBlock[3] = &unk_100481F40;
    v11 = _Block_copy(aBlock);

    dispatch_sync(v8, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000ACB60()
{
  result = sub_1000AB1BC();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1000ACBB8()
{
  sub_100031B5C(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1000ACC38()
{
  result = qword_1004A8FF8;
  if (!qword_1004A8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A8FF8);
  }

  return result;
}

uint64_t sub_1000ACC8C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t sub_1000ACCAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ACD08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ACD20()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000ACDDC()
{
  result = qword_1004A9000;
  if (!qword_1004A9000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9000);
  }

  return result;
}

uint64_t sub_1000ACE44(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1000ACED8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000ACF28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v18 - 8);
  __chkstk_darwin(v18);
  v17 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  sub_10001AA40(0, &qword_1004A7840);
  v16[1] = "FileAsync-synchronizationQueue";
  v2[2] = 0;
  v2[3] = 0;
  static DispatchQoS.userInitiated.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000039E8(&unk_1004A7850);
  sub_10003DEE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v17, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v11 = v19;
  (*(v4 + 104))(v6, enum case for DispatchQoS.QoSClass.default(_:), v19);
  static OS_dispatch_queue.global(qos:)();
  (*(v4 + 8))(v6, v11);
  v2[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v2[5] = 0;
  v12 = v2[2];
  v13 = v20;
  v14 = v21;
  v3[2] = v20;
  v3[3] = v14;
  sub_1000ADF68(v13);
  sub_100031B5C(v12);
  return v3;
}

uint64_t sub_1000AD270(void *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v102 = a7;
  v105 = a5;
  v106 = a6;
  v107 = a4;
  v97 = a2;
  v98 = a3;
  v99 = a1;
  v104 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v104 - 8);
  __chkstk_darwin(v104);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v108 = *(v103 - 8);
  __chkstk_darwin(v103);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v12);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v15 - 8);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10001AA40(0, &qword_1004A7840);
  v100 = "ss data on closed filehandle";
  static DispatchQoS.userInitiated.getter();
  v111 = &_swiftEmptyArrayStorage;
  v19 = sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
  v20 = sub_1000039E8(&unk_1004A7850);
  v21 = sub_10003DEE8();
  v83 = v20;
  v81 = v21;
  v90 = v12;
  v89 = v19;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = *(v108 + 104);
  v82 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v85 = v22;
  v108 += 104;
  v22(v11);
  v23 = *(v7 + 104);
  v84 = enum case for DispatchQoS.QoSClass.default(_:);
  v24 = v104;
  v87 = v7 + 104;
  v86 = v23;
  v23(v9);
  static OS_dispatch_queue.global(qos:)();
  v25 = *(v7 + 8);
  v95 = v9;
  v96 = v7 + 8;
  v88 = v25;
  v25(v9, v24);
  v92 = v17;
  v93 = v14;
  v26 = v101;
  v94 = v11;
  v91 = v18;
  v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v26 + 64) = &_swiftEmptyArrayStorage;
  *(v26 + 16) = v27;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0xE000000000000000;
  *(v26 + 56) = 0;
  *(v26 + 72) = 0;
  *(v26 + 88) = 0x1000000;
  v28 = v102;
  *(v26 + 104) = v102;
  type metadata accessor for KnoxRawDownloadToFileAsync.CallbackWrapper();
  swift_allocObject();
  v29 = v28;
  v31 = v105;
  v30 = v106;
  sub_1000ADF68(v105);
  v32 = sub_1000ACF28(v31, v30);
  sub_100031B5C(v31);
  v33 = *&v107[OBJC_IVAR____TtC16KnoxClientPublic25ImageDecryptionComponents_size];
  *(v26 + 80) = v33;
  if (v33 < 0 || (v33 & 0x8000000000FFFFFFLL) == 0)
  {
    v34 = v33 / 0x1000000;
  }

  else
  {
    v34 = v33 / 0x1000000 + 1;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v102 = v32;
  v35 = &_swiftEmptyArrayStorage;
  v100 = v29;
  if (v34)
  {
    v35 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v35[2] = v34;
    memset(v35 + 4, 2, v34);
  }

  swift_beginAccess();
  *(v26 + 64) = v35;

  v37 = v97;
  v36 = v98;
  v109 = v97;
  v110 = v98;

  v38._countAndFlagsBits = 0x72676F72706E692ELL;
  v38._object = 0xEB00000000737365;
  String.append(_:)(v38);
  v39 = v109;
  v40 = v110;
  *(v26 + 40) = v37;
  *(v26 + 48) = v36;
  v41 = [objc_allocWithZone(NSFileManager) init];
  v42 = String._bridgeToObjectiveC()();
  v43 = [v41 fileExistsAtPath:v42];

  if (v43)
  {
    sub_1000039E8(&unk_1004A7370);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100376A40;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_10001A9EC();
    *(v44 + 32) = v39;
    *(v44 + 40) = v40;
    sub_10001AA40(0, &qword_1004A7380);

    v45 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v46 = [objc_allocWithZone(NSFileManager) init];
    v47 = String._bridgeToObjectiveC()();
    v109 = 0;
    v48 = [v46 removeItemAtPath:v47 error:&v109];

    if (!v48)
    {
      v68 = v109;

      _convertNSErrorToError(_:)();

LABEL_17:
      swift_willThrow();

      sub_100031B5C(v105);

      type metadata accessor for KnoxRawDownloadToFileAsync();
      swift_deallocPartialClassInstance();
      return v26;
    }

    byte_1004E2B68 = 1;
    v49 = v109;
  }

  v50 = [objc_allocWithZone(NSFileManager) init];

  v51 = String._bridgeToObjectiveC()();

  v52 = [v50 fileExistsAtPath:v51];

  if (v52)
  {

    v97 = 0x8000000100430720;
    v98 = 0x80000001004305F0;
    v109 = 0;
    v110 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    v109 = 0xD000000000000022;
    v110 = 0x80000001004307B0;
    v53 = *(v26 + 40);
    v54 = *(v26 + 48);

    v55._countAndFlagsBits = v53;
    v55._object = v54;
    String.append(_:)(v55);

    v79 = v109;
    v78 = v110;
    v80 = type metadata accessor for KnoxServiceClient.ClientError();
    v56 = swift_allocObject();
    v77[1] = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v85(v94, v82, v103);
    v57 = v95;
    v58 = v104;
    v86(v95, v84, v104);
    static OS_dispatch_queue.global(qos:)();
    v88(v57, v58);
    v59 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v60 = v97;
    *(v56 + 16) = 0xD000000000000056;
    *(v56 + 24) = v60;
    v61 = v98;
    *(v56 + 32) = 0xD00000000000006BLL;
    *(v56 + 40) = v61;
    *(v56 + 56) = 10;
    *(v56 + 48) = 178;
    v62 = v78;
    *(v56 + 64) = v79;
    *(v56 + 72) = v62;
    *(v56 + 80) = 0;
    *(v56 + 88) = v59;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
LABEL_16:
    swift_allocError();
    *v75 = v56;
    goto LABEL_17;
  }

  v63 = [objc_allocWithZone(NSFileManager) init];
  v64 = String._bridgeToObjectiveC()();
  [v63 createFileAtPath:v64 contents:0 attributes:0];

  v65 = String._bridgeToObjectiveC()();

  v66 = [objc_opt_self() fileHandleForWritingAtPath:v65];

  if (!v66)
  {
    v80 = 0x8000000100430720;
    v79 = 0x80000001004305F0;
    v97 = 0x8000000100430780;
    v98 = type metadata accessor for KnoxServiceClient.ClientError();
    v56 = swift_allocObject();
    v78 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v109 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v85(v94, v82, v103);
    v69 = v95;
    v70 = v104;
    v86(v95, v84, v104);
    static OS_dispatch_queue.global(qos:)();
    v88(v69, v70);
    v71 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v72 = v80;
    *(v56 + 16) = 0xD000000000000056;
    *(v56 + 24) = v72;
    v73 = v79;
    *(v56 + 32) = 0xD00000000000006BLL;
    *(v56 + 40) = v73;
    *(v56 + 56) = 10;
    *(v56 + 48) = 185;
    v74 = v97;
    *(v56 + 64) = 0xD000000000000022;
    *(v56 + 72) = v74;
    *(v56 + 80) = 0;
    *(v56 + 88) = v71;
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    goto LABEL_16;
  }

  sub_100031B5C(v105);
  v67 = *(v26 + 56);
  *(v26 + 56) = v66;

  *(v26 + 96) = v102;
  return v26;
}

uint64_t sub_1000ADF68(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *PingTask.__allocating_init(client:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10003D38C(a1);

  v5 = &v4[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v5 = 0x6B736154676E6950;
  *(v5 + 1) = 0xE800000000000000;

  return v4;
}

char *PingTask.init(client:)(void *a1)
{
  v2 = sub_10003D38C(a1);

  v3 = &v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  *v3 = 0x6B736154676E6950;
  *(v3 + 1) = 0xE800000000000000;

  return v2;
}

uint64_t sub_1000AE108@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v78 = type metadata accessor for DispatchQoS.QoSClass();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v64 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v72);
  v71 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v7 - 8);
  v80 = &v64 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v65 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v64 - v13;
  v15 = sub_1000039E8(&qword_1004A7160);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v1 + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_client);
  v24 = v20;
  v25 = *(v10 + 16);
  v79 = v23;
  v68 = OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL;
  v69 = v25;
  v25(v14, v23 + OBJC_IVAR____TtC16KnoxClientPublic17KnoxServiceClient_knoxHostURL, v9);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v70 = v10;
  v26 = *(v10 + 8);
  v81 = v9;
  v26(v14, v9);
  if ((*(v19 + 48))(v17, 1, v24) == 1)
  {
    sub_100013F2C(v17, &qword_1004A7160);
    v80 = 0x8000000100430830;
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v82 = 0xD000000000000028;
    v83 = 0x800000010042A390;
    v27 = v81;
    v69(v14, v79 + v68, v81);
    v28 = URL.description.getter();
    v30 = v29;
    v26(v14, v27);
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v81 = v82;
    v79 = v83;
    v69 = type metadata accessor for KnoxServiceClient.ClientError();
    v32 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v70 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v82 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v73 + 104))(v74, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v75);
    v34 = v76;
    v33 = v77;
    v35 = v78;
    (*(v76 + 104))(v77, enum case for DispatchQoS.QoSClass.default(_:), v78);
    static OS_dispatch_queue.global(qos:)();
    (*(v34 + 8))(v33, v35);
    v36 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v32 + 16), "urlRequest()");
    *(v32 + 29) = 0;
    *(v32 + 30) = -5120;
    *(v32 + 32) = 0xD000000000000062;
    v37 = v80;
    *(v32 + 56) = 14;
    *(v32 + 40) = v37;
    *(v32 + 48) = 27;
    v38 = v79;
    *(v32 + 64) = v81;
    *(v32 + 72) = v38;
    *(v32 + 80) = 0;
    *(v32 + 88) = v36;
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v41)
    {
      v42 = result;
      v43 = v41;
      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = sub_10001A9EC();
      *(v39 + 32) = v42;
      *(v39 + 40) = v43;
      sub_10001AA40(0, &qword_1004A7380);
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v45 = v32;
      return swift_willThrow();
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v68 = v26;
  v69 = v24;
  (*(v19 + 32))(v22, v17, v24);
  URLComponents.path.setter();
  v46 = v80;
  URLComponents.url.getter();
  v47 = v70;
  v48 = v81;
  if ((*(v70 + 6))(v46, 1, v81) == 1)
  {
    v68 = v19;
    sub_100013F2C(v80, &qword_1004A6D30);
    v81 = 0x8000000100430830;
    v82 = 0;
    v83 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v82 = 0xD000000000000029;
    v83 = 0x80000001004308A0;
    v49._countAndFlagsBits = URLComponents.description.getter();
    String.append(_:)(v49);

    v79 = v83;
    v80 = v82;
    v67 = type metadata accessor for KnoxServiceClient.ClientError();
    v50 = swift_allocObject();
    sub_10001AA40(0, &qword_1004A7840);
    v66 = v22;
    v70 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v82 = &_swiftEmptyArrayStorage;
    sub_10002706C(&unk_1004A6B60, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10003DEE8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v73 + 104))(v74, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v75);
    v51 = v76;
    v52 = v77;
    v53 = v78;
    (*(v76 + 104))(v77, enum case for DispatchQoS.QoSClass.default(_:), v78);
    static OS_dispatch_queue.global(qos:)();
    (*(v51 + 8))(v52, v53);
    v54 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    strcpy((v50 + 16), "urlRequest()");
    *(v50 + 29) = 0;
    *(v50 + 30) = -5120;
    *(v50 + 32) = 0xD000000000000062;
    v55 = v81;
    *(v50 + 56) = 14;
    *(v50 + 40) = v55;
    *(v50 + 48) = 35;
    v56 = v79;
    *(v50 + 64) = v80;
    *(v50 + 72) = v56;
    *(v50 + 80) = 0;
    *(v50 + 88) = v54;
    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_100376A40;
    result = sub_10005A570();
    if (v58)
    {
      v59 = result;
      v60 = v58;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_10001A9EC();
      *(v57 + 32) = v59;
      *(v57 + 40) = v60;
      sub_10001AA40(0, &qword_1004A7380);
      v61 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v62 = v50;
      swift_willThrow();
      return (*(v68 + 8))(v66, v69);
    }

    goto LABEL_10;
  }

  v63 = v65;
  (*(v47 + 4))(v65, v80, v48);
  LOBYTE(v82) = 1;
  sub_10005ADB0(v63, 0, 1, v66);
  (v68)(v63, v48);
  return (*(v19 + 8))(v22, v69);
}

uint64_t sub_1000AED98(uint64_t result, unint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_taskMetrics];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(result + 16);
  v6 = *(result + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v5 = HIDWORD(result) - result;
  }

LABEL_11:
  v8 = *(v3 + OBJC_IVAR____TtCC16KnoxClientPublic8KnoxTask11TaskMetrics_syncronizationQueue);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100027124;
  *(v10 + 24) = v9;
  v23 = sub_10001F874;
  v24 = v10;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10003885C;
  v22 = &unk_1004820A8;
  v11 = _Block_copy(&v19);

  dispatch_sync(v8, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v2[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10001F9F8;
  *(v15 + 24) = v14;
  v23 = sub_10001FA40;
  v24 = v15;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10003885C;
  v22 = &unk_100482120;
  v16 = _Block_copy(&v19);
  v17 = v2;

  dispatch_sync(v13, v16);
  _Block_release(v16);
  v18 = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

char *sub_1000AF084()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for RetryRunner();
  swift_allocObject();
  v5 = v0;
  v6 = sub_100072164(v5);
  v7 = dispatch_semaphore_create(0);
  sub_10007C9F4(v6, v7);
  static DispatchTime.distantFuture.getter();
  OS_dispatch_semaphore.wait(timeout:)();
  (*(v2 + 8))(v4, v1);
  sub_1000039E8(&unk_1004A7370);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100376BB0;
  v9 = &v5[OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_name];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_10001A9EC();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;
  v17 = v5;

  OS_dispatch_queue.sync<A>(execute:)();
  v12 = v18;
  *(v8 + 96) = &type metadata for UInt;
  *(v8 + 104) = &protocol witness table for UInt;
  *(v8 + 72) = v12;
  sub_10001AA40(0, &qword_1004A7380);
  v13 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v14 = v5;

  return v14;
}

uint64_t sub_1000AF2E8(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  if (a2)
  {

    static os_log_type_t.error.getter();
    sub_1000039E8(&unk_1004A7370);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100376A40;
    result = (*(*a2 + 168))();
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = result;
    v8 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10001A9EC();
    *(v4 + 32) = v7;
    *(v4 + 40) = v8;
    sub_10001AA40(0, &qword_1004A7380);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    type metadata accessor for KnoxServiceClient.ClientError();
    sub_10002706C(&unk_1004A7860, type metadata accessor for KnoxServiceClient.ClientError);
    v10 = swift_allocError();
    *v11 = a2;
    v12 = *((swift_isaMask & *isEscapingClosureAtFileLocation) + 0x410);

    v12(v10);

    v13 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
    v14 = swift_allocObject();
    *(v14 + 16) = isEscapingClosureAtFileLocation;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000AF8B0;
    *(v15 + 24) = v14;
    v28 = sub_10001FA40;
    v29 = v15;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_10003885C;
    v27 = &unk_100482210;
    v16 = _Block_copy(&v24);
    v17 = isEscapingClosureAtFileLocation;

    dispatch_sync(v13, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return OS_dispatch_semaphore.signal()();
    }

    __break(1u);
  }

  v18 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC16KnoxClientPublic8KnoxTask_syncronizationQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = isEscapingClosureAtFileLocation;
  *(v19 + 24) = 1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000AF8B0;
  *(v20 + 24) = v19;
  v28 = sub_10001FA40;
  v29 = v20;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10003885C;
  v27 = &unk_100482198;
  v21 = _Block_copy(&v24);
  v22 = isEscapingClosureAtFileLocation;

  dispatch_sync(v18, v21);
  _Block_release(v21);
  v23 = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    return OS_dispatch_semaphore.signal()();
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

id PingTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PingTask();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000AF76C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AF7B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AF7CC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t type metadata accessor for PingTask()
{
  result = qword_1004A9030;
  if (!qword_1004A9030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AF8C0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AFCE0(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_1000039E8(&qword_1004A9048);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  sub_10000E2A8(a1, a1[3]);
  sub_1000B02C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  type metadata accessor for Date();
  sub_1000B0B5C(&qword_1004A7D40, 255, &type metadata accessor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
    swift_beginAccess();
    sub_100013E54(v3 + v12, v7, &qword_1004A6D30);
    LOBYTE(v22) = 2;
    type metadata accessor for URL();
    sub_1000B0B5C(&qword_1004A9058, 255, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100013F2C(v7, &qword_1004A6D30);
    v22 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file);
    v27 = 3;
    type metadata accessor for KnoxPointer.File(0);
    sub_1000B0B5C(&qword_1004A9060, 255, type metadata accessor for KnoxPointer.File);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions);
    v14 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions + 8);
    v15 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions + 24);
    v19 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions + 16);
    v20 = v15;
    v21 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions + 32);
    v22 = v13;
    v23 = v14;
    v24 = v19;
    v25 = v15;
    v26 = v21;
    v27 = 5;
    sub_1000B0BC4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v25;
    v21 = v26;

    v22 = *(v3 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention);
    v27 = 6;
    type metadata accessor for KnoxPointer.Retention();
    sub_1000B0B5C(&qword_1004A9078, v16, type metadata accessor for KnoxPointer.Retention);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v22) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v22) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v22) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1000B02C8()
{
  result = qword_1004A9050;
  if (!qword_1004A9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9050);
  }

  return result;
}

uint64_t sub_1000B031C()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000B0B5C(&qword_1004A9098, 255, type metadata accessor for KnoxPointer);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1000B03EC()
{
  v2 = v0;
  v3 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for Array();
  v15[5] = sub_1000B0B5C(&qword_1004A9098, 255, type metadata accessor for KnoxPointer);
  swift_getWitnessTable();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v1)
  {
    return v2;
  }

  v6 = v15[0];

  if (!Array.endIndex.getter())
  {
LABEL_6:

    type metadata accessor for KnoxPointer(0);
    v2 = _arrayForceCast<A, B>(_:)();

    return v2;
  }

  v7 = 0;
  while (1)
  {
    v8 = sub_1000BC8FC(v15, v7, v6, v2);
    v10 = *v9;
    result = (v8)(v15, 0);
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    sub_1000B0C5C(v5);
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
    v14 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
    swift_beginAccess();
    sub_100013EBC(v5, v10 + v14);
    swift_endAccess();

    ++v7;
    if (v12 == Array.endIndex.getter())
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B06A0(uint64_t a1, uint64_t a2)
{
  result = Array.count.getter();
  if (result)
  {
    if (result == 1)
    {
      v11 = a1;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Collection.first.getter();
      return v10;
    }

    else
    {
      v6 = *(sub_1000B0860(a1, a2) + 16);

      if (v6 == 1)
      {
        return sub_1000B0918();
      }

      else
      {
        v11 = a1;
        type metadata accessor for Array();
        swift_getWitnessTable();
        result = Collection.first.getter();
        if (v10)
        {
          ObjectType = swift_getObjectType();

          v11 = a1;
          v8 = *(ObjectType + 208);

          v8(&v11, a2);
          if (v2)
          {
          }

          else
          {
            Collection.first.getter();

            return v9;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B0860(uint64_t a1, uint64_t a2)
{
  v8[5] = a1;
  v8[2] = a2;
  v2 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1000AF8C0(sub_1000BF318, v8, v2, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v4);
  v6 = sub_100013D10(v5);

  return v6;
}

uint64_t sub_1000B0918()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.sorted(by:)();
  swift_getWitnessTable();
  result = BidirectionalCollection.last.getter();
  if (v1)
  {

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000B09F0()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000B0A3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000B0AF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  swift_beginAccess();
  return sub_100013E54(v1 + v3, a1, &qword_1004A6D30);
}

uint64_t sub_1000B0B5C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000B0BC4()
{
  result = qword_1004A9070;
  if (!qword_1004A9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004A9070);
  }

  return result;
}

uint64_t sub_1000B0C5C@<X0>(unint64_t a1@<X8>)
{
  v60 = a1;
  v68 = type metadata accessor for DispatchQoS.QoSClass();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v66 = v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v67 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v65 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v10 - 8);
  v62 = v58 - v11;
  v12 = type metadata accessor for CharacterSet();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = URL.host.getter();
  if (v17)
  {
    v18 = v17;
    v58[0] = v16;
    v58[1] = v5;
    v59 = v9;
    v69 = (*((swift_isaMask & *v1) + 0x120))();
    v70 = v19;
    static CharacterSet.urlFragmentAllowed.getter();
    sub_10000B080();
    v20 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
    v22 = v21;
    (*(v13 + 8))(v15, v12);

    if (v22)
    {
      if (String.count.getter() < 1)
      {

        v25 = 0;
        v24 = 0xE000000000000000;
      }

      else
      {
        v69 = 0x3D656D616E23;
        v70 = 0xE600000000000000;
        v23._countAndFlagsBits = v20;
        v23._object = v22;
        String.append(_:)(v23);

        v25 = v69;
        v24 = v70;
      }

      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v69 = 0x2F2F3A786F6E6BLL;
      v70 = 0xE700000000000000;
      v37._countAndFlagsBits = v58[0];
      v37._object = v18;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 0x616F6C6E776F642FLL;
      v38._object = 0xEA00000000002F64;
      String.append(_:)(v38);
      String.append(_:)(*(v1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space));
      v39._countAndFlagsBits = 47;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      v40 = (*(v1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
      v41 = *v40;
      v42 = v40[1];

      v43._countAndFlagsBits = v41;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = v25;
      v44._object = v24;
      String.append(_:)(v44);

      v46 = v69;
      v45 = v70;
      v47 = v62;
      URL.init(string:)();
      v48 = type metadata accessor for URL();
      v49 = *(v48 - 8);
      v50 = (*(v49 + 48))(v47, 1, v48);
      v51 = v71;
      if (v50 != 1)
      {

        return (*(v49 + 32))(v60, v47, v48);
      }

      sub_100013F2C(v47, &qword_1004A6D30);
      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v69 = 0xD00000000000001ALL;
      v70 = 0x80000001004309C0;
      v52._countAndFlagsBits = v46;
      v52._object = v45;
      String.append(_:)(v52);

      v62 = v69;
      v60 = v70;
      v61 = type metadata accessor for KnoxServiceClient.ClientError();
      v27 = swift_allocObject();
      sub_10000E014();
      v58[0] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v69 = &_swiftEmptyArrayStorage;
      sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v63 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
      v53 = v66;
      v54 = v68;
      (*(v51 + 104))(v66, enum case for DispatchQoS.QoSClass.default(_:), v68);
      static OS_dispatch_queue.global(qos:)();
      (*(v51 + 8))(v53, v54);
      *(v27 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v31 = 14;
      v32 = 331;
    }

    else
    {

      v69 = 0;
      v70 = 0xE000000000000000;
      _StringGuts.grow(_:)(50);

      v69 = 0xD00000000000002FLL;
      v70 = 0x8000000100430990;
      String.append(_:)(*(v1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name));
      v33._countAndFlagsBits = 39;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v62 = v69;
      v60 = v70;
      v61 = type metadata accessor for KnoxServiceClient.ClientError();
      v27 = swift_allocObject();
      sub_10000E014();
      v58[0] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v69 = &_swiftEmptyArrayStorage;
      sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v63 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
      v34 = v71;
      v35 = v66;
      v36 = v68;
      (*(v71 + 104))(v66, enum case for DispatchQoS.QoSClass.default(_:), v68);
      static OS_dispatch_queue.global(qos:)();
      (*(v34 + 8))(v35, v36);
      *(v27 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v31 = 4;
      v32 = 319;
    }
  }

  else
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v69 = 0xD00000000000001FLL;
    v70 = 0x8000000100430970;
    type metadata accessor for URL();
    sub_1000B0B5C(&qword_1004AAE30, 255, &type metadata accessor for URL);
    v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v26);

    v62 = v69;
    v60 = v70;
    v61 = type metadata accessor for KnoxServiceClient.ClientError();
    v27 = swift_allocObject();
    sub_10000E014();
    v59 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v69 = &_swiftEmptyArrayStorage;
    sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v63 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v64);
    v28 = v71;
    v29 = v66;
    v30 = v68;
    (*(v71 + 104))(v66, enum case for DispatchQoS.QoSClass.default(_:), v68);
    static OS_dispatch_queue.global(qos:)();
    (*(v28 + 8))(v29, v30);
    *(v27 + 88) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v31 = 14;
    v32 = 314;
  }

  *(v27 + 16) = 0xD000000000000014;
  *(v27 + 24) = 0x80000001004308F0;
  *(v27 + 32) = 0xD00000000000005CLL;
  *(v27 + 40) = 0x8000000100430910;
  *(v27 + 56) = v31;
  *(v27 + 48) = v32;
  v55 = v60;
  *(v27 + 64) = v62;
  *(v27 + 72) = v55;
  *(v27 + 80) = 0;
  sub_1000B0B5C(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
  swift_allocError();
  *v56 = v27;
  return swift_willThrow();
}

uint64_t sub_1000B187C()
{
  sub_1000B1EE4();
  type metadata accessor for KnoxPointer(0);
  sub_1000B0B5C(&qword_1004A90A0, 255, type metadata accessor for KnoxPointer);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t sub_1000B1934()
{
  v2 = v0;
  v39 = type metadata accessor for DispatchQoS.QoSClass();
  v46 = *(v39 - 8);
  __chkstk_darwin(v39);
  v43 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000B1EE4();
  v44 = v2;
  type metadata accessor for KnoxPointer(0);
  sub_1000B0B5C(&qword_1004A90A0, 255, type metadata accessor for KnoxPointer);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  if (!v1)
  {
    v37 = v11;
    v38 = v8;
    static String.Encoding.utf8.getter();
    v17 = String.init(data:encoding:)();
    if (v18)
    {
      v13 = v17;
      sub_100031928(v14, v16);
    }

    else
    {
      v36 = 0x8000000100430910;
      v44 = 0;
      v45 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v44 = 0xD000000000000012;
      v45 = 0x800000010042E570;
      swift_getObjectType();
      v20._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v20);

      v21._countAndFlagsBits = 0xD000000000000014;
      v21._object = 0x800000010042E590;
      String.append(_:)(v21);
      v33 = v45;
      v34 = v44;
      v35 = type metadata accessor for KnoxServiceClient.ClientError();
      v22 = swift_allocObject();
      v31[0] = sub_10000E014();
      v31[1] = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      v44 = &_swiftEmptyArrayStorage;
      sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      v32 = v16;
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v23 = *(v40 + 104);
      v40 = v14;
      v23(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
      v24 = v46;
      v25 = v43;
      v26 = v39;
      (*(v46 + 104))(v43, enum case for DispatchQoS.QoSClass.default(_:), v39);
      v13 = v31[0];
      static OS_dispatch_queue.global(qos:)();
      (*(v24 + 8))(v25, v26);
      v27 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      strcpy((v22 + 16), "jsonString()");
      *(v22 + 29) = 0;
      *(v22 + 30) = -5120;
      v28 = v36;
      *(v22 + 32) = 0xD00000000000005CLL;
      *(v22 + 40) = v28;
      *(v22 + 56) = 7;
      *(v22 + 48) = 357;
      v29 = v33;
      *(v22 + 64) = v34;
      *(v22 + 72) = v29;
      *(v22 + 80) = 0;
      *(v22 + 88) = v27;
      sub_1000B0B5C(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v30 = v22;
      swift_willThrow();
      sub_100031928(v40, v32);
    }
  }

  return v13;
}

uint64_t sub_1000B1EE4()
{
  v1 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder;
  if (*(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder);
  }

  else
  {
    v2 = sub_1000BEDF0();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000B1FA4()
{
  type metadata accessor for Array();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return MutableCollection<>.sort(by:)();
}

uint64_t _s16KnoxClientPublic0A7PointerC4nameSSvg_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name);

  return v1;
}

double KnoxPointer.Permissions.init()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id KnoxPointer.Retention.__allocating_init(policy:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_policy];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_expiration] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t sub_1000B210C(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v15 - v9;
  v11 = *a2;
  v12 = *(v5 + 16);
  v12(&v15 - v9, *(*a1 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt, v4);
  v12(v8, *(v11 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file) + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt, v4);
  LOBYTE(v11) = static Date.> infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  return v11 & 1;
}

uint64_t sub_1000B2294(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1000039E8(&qword_1004A73C0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v28 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = *a1;
  v18 = *a2;
  v29 = v17;
  sub_100013E54(v17 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt, v10, &qword_1004A73C0);
  v19 = v12[6];
  if (v19(v10, 1, v11) == 1)
  {
    v8 = v10;
  }

  else
  {
    v27 = v2;
    v26 = v12[4];
    v26(v16, v10, v11);
    sub_100013E54(v18 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt, v8, &qword_1004A73C0);
    if (v19(v8, 1, v11) != 1)
    {
      v21 = v28;
      v26(v28, v8, v11);
      v22 = static Date.< infix(_:_:)();
      v23 = v12[1];
      v23(v21, v11);
      v23(v16, v11);
      v20 = v22;
      return v20 & 1;
    }

    (v12[1])(v16, v11);
  }

  sub_100013F2C(v8, &qword_1004A73C0);
  v20 = static Date.< infix(_:_:)();
  return v20 & 1;
}

uint64_t KnoxPointer.space.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space);

  return v1;
}

uint64_t KnoxPointer.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type);

  return v1;
}

uint64_t KnoxPointer.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid);

  return v1;
}

uint64_t sub_1000B273C()
{
  v1 = v0;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v17.receiver = v0;
  v17.super_class = type metadata accessor for KnoxPointer(0);
  v2 = objc_msgSendSuper2(&v17, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x7974206874697720;
  v7._object = 0xEB000000003D6570;
  String.append(_:)(v7);
  String.append(_:)(*&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type]);
  v8._countAndFlagsBits = 0x3D656D616E202CLL;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  String.append(_:)(*&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name]);
  v9._countAndFlagsBits = 0x3D6563617073202CLL;
  v9._object = 0xE800000000000000;
  String.append(_:)(v9);
  String.append(_:)(*&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space]);
  v10._countAndFlagsBits = 0x3D656C6966202CLL;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11 = (*&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);
  v12 = *v11;
  v13 = v11[1];

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0x3D6469757520;
  v15._object = 0xE600000000000000;
  String.append(_:)(v15);
  String.append(_:)(*&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid]);
  return v18;
}

uint64_t sub_1000B2908(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_100013E54(a1, &v10 - v5, &qword_1004A6D30);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  swift_beginAccess();
  sub_100013EBC(v6, v7 + v8);
  return swift_endAccess();
}

id KnoxPointer.__allocating_init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v71 = a3;
  v77 = a8;
  v73 = a5;
  v74 = a6;
  v83 = a4;
  v84 = a2;
  v85 = a1;
  v80 = a13;
  v69 = a11;
  v79 = a12;
  v75 = a9;
  v76 = a10;
  v16 = type metadata accessor for URL();
  v72 = *(v16 - 8);
  v17 = v72;
  __chkstk_darwin(v16);
  v82 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000039E8(&qword_1004A6D30);
  v20 = __chkstk_darwin(v19 - 8);
  v65 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v62 - v23;
  __chkstk_darwin(v22);
  v26 = &v62 - v25;
  v27 = objc_allocWithZone(v14);
  v68 = *(a7 + 4);
  *&v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v28 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v29 = v17 + 56;
  v30 = *(v17 + 56);
  v31 = a7[1];
  v67 = *a7;
  v66 = v31;
  v30(&v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v16);
  *&v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v32 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt;
  v33 = type metadata accessor for Date();
  v81 = *(v33 - 8);
  v34 = *(v81 + 16);
  v78 = v33;
  v34(&v27[v32], v85);
  v35 = v69;
  sub_100013E54(v84, &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v64 = v29;
  v63 = v30;
  v30(v26, 1, 1, v16);
  v36 = v24;
  swift_beginAccess();
  sub_100013EBC(v26, &v27[v28]);
  swift_endAccess();
  v37 = v71;
  *&v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v71;
  v38 = &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v39 = v74;
  *v38 = v73;
  *(v38 + 1) = v39;
  v40 = &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v41 = v66;
  *v40 = v67;
  *(v40 + 1) = v41;
  *(v40 + 4) = v68;
  v42 = v77;
  *&v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v77;
  v43 = &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v44 = v76;
  *v43 = v75;
  *(v43 + 1) = v44;
  v45 = *(swift_getObjectType() + 184);
  v76 = v37;
  v46 = v42;
  v47 = v45();
  v48 = v83;
  v49 = &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v49 = v47;
  v49[1] = v50;
  v51 = v35;
  sub_100013E54(v35, &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v52 = &v27[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v53 = v80;
  *v52 = v79;
  *(v52 + 1) = v53;
  v86.receiver = v27;
  v86.super_class = v70;
  v54 = objc_msgSendSuper2(&v86, "init");
  sub_100013E54(v48, v36, &qword_1004A6D30);
  v55 = v72;
  v56 = v36;
  if ((*(v72 + 48))(v36, 1, v16) == 1)
  {

    sub_100013F2C(v51, &qword_1004A73C0);
    sub_100013F2C(v48, &qword_1004A6D30);
    sub_100013F2C(v84, &qword_1004A73C0);
    (*(v81 + 8))(v85, v78);
    sub_100013F2C(v36, &qword_1004A6D30);
  }

  else
  {
    v57 = v76;
    (*(v55 + 32))(v82, v56, v16);
    v58 = v87;
    sub_1000B0C5C(v65);
    v87 = v58;

    if (v58)
    {

      sub_100013F2C(v51, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v84, &qword_1004A73C0);
      (*(v81 + 8))(v85, v78);
      (*(v55 + 8))(v82, v16);
    }

    else
    {
      sub_100013F2C(v51, &qword_1004A73C0);
      sub_100013F2C(v83, &qword_1004A6D30);
      sub_100013F2C(v84, &qword_1004A73C0);
      (*(v81 + 8))(v85, v78);
      (*(v55 + 8))(v82, v16);
      v59 = v65;
      v63(v65, 0, 1, v16);
      v60 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      swift_beginAccess();
      sub_100013EBC(v59, v54 + v60);
      swift_endAccess();
    }
  }

  return v54;
}

id KnoxPointer.init(createdAt:deletedAt:file:knoxServer:name:permissions:retention:space:updatedAt:uuid:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v73 = a8;
  v74 = a4;
  v68 = a5;
  v69 = a6;
  v67 = a3;
  v82 = a2;
  v75 = a11;
  v76 = a12;
  v77 = a13;
  v72 = a10;
  v70 = a9;
  v17 = type metadata accessor for URL();
  v71 = *(v17 - 8);
  v18 = v71;
  __chkstk_darwin(v17);
  v80 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000039E8(&qword_1004A6D30);
  v21 = __chkstk_darwin(v20 - 8);
  v63 = v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v61 - v24;
  __chkstk_darwin(v23);
  v27 = v61 - v26;
  v66 = *(a7 + 4);
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v28 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v29 = *(v18 + 56);
  v30 = a7[1];
  v65 = *a7;
  v64 = v30;
  v29(&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL], 1, 1, v17);
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  v31 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt;
  v32 = type metadata accessor for Date();
  v78 = *(v32 - 8);
  v79 = v32;
  v33 = *(v78 + 16);
  v81 = a1;
  v33(&v14[v31], a1);
  sub_100013E54(v82, &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], &qword_1004A73C0);
  v62 = v29;
  v61[1] = v18 + 56;
  v29(v27, 1, 1, v17);
  v34 = v25;
  swift_beginAccess();
  sub_100013EBC(v27, &v14[v28]);
  swift_endAccess();
  v36 = v67;
  v35 = v68;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v67;
  v37 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  v38 = v69;
  *v37 = v35;
  *(v37 + 1) = v38;
  v39 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions];
  v40 = v64;
  *v39 = v65;
  *(v39 + 1) = v40;
  *(v39 + 4) = v66;
  v41 = v73;
  *&v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v73;
  v42 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  v43 = v72;
  *v42 = v70;
  *(v42 + 1) = v43;
  v44 = *(swift_getObjectType() + 184);
  v45 = v36;
  v46 = v41;
  v47 = v44();
  v48 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v48 = v47;
  v48[1] = v49;
  v50 = v74;
  v51 = v75;
  sub_100013E54(v75, &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], &qword_1004A73C0);
  v52 = &v14[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  v53 = v77;
  *v52 = v76;
  *(v52 + 1) = v53;
  v54 = type metadata accessor for KnoxPointer(0);
  v83.receiver = v14;
  v83.super_class = v54;
  v55 = objc_msgSendSuper2(&v83, "init");
  sub_100013E54(v50, v34, &qword_1004A6D30);
  v56 = v71;
  if ((*(v71 + 48))(v34, 1, v17) == 1)
  {

    sub_100013F2C(v51, &qword_1004A73C0);
    sub_100013F2C(v50, &qword_1004A6D30);
    sub_100013F2C(v82, &qword_1004A73C0);
    (*(v78 + 8))(v81, v79);
    sub_100013F2C(v34, &qword_1004A6D30);
  }

  else
  {
    (*(v56 + 32))(v80, v34, v17);
    v57 = v84;
    sub_1000B0C5C(v63);
    v84 = v57;

    if (v57)
    {

      sub_100013F2C(v51, &qword_1004A73C0);
      sub_100013F2C(v50, &qword_1004A6D30);
      sub_100013F2C(v82, &qword_1004A73C0);
      (*(v78 + 8))(v81, v79);
      (*(v56 + 8))(v80, v17);
    }

    else
    {
      sub_100013F2C(v51, &qword_1004A73C0);
      sub_100013F2C(v50, &qword_1004A6D30);
      sub_100013F2C(v82, &qword_1004A73C0);
      (*(v78 + 8))(v81, v79);
      (*(v56 + 8))(v80, v17);
      v58 = v63;
      v62(v63, 0, 1, v17);
      v59 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
      swift_beginAccess();
      sub_100013EBC(v58, v55 + v59);
      swift_endAccess();
    }
  }

  return v55;
}

char *KnoxPointer.init(from:)(void *a1)
{
  v105 = type metadata accessor for DecodingError();
  v93 = *(v105 - 8);
  v3 = __chkstk_darwin(v105);
  v103 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v104 = &v87 - v5;
  v6 = sub_1000039E8(&qword_1004A73C0);
  v7 = __chkstk_darwin(v6 - 8);
  v91 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = &v87 - v9;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v101 = *(v10 - 8);
  v102 = v10;
  __chkstk_darwin(v10);
  v100 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v95);
  v96 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v14 - 8);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v106 = *(v16 - 8);
  v107 = v16;
  __chkstk_darwin(v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v19 - 8);
  v21 = &v87 - v20;
  v22 = sub_1000039E8(&qword_1004A90C0);
  v108 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v87 - v23;
  v110 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_decryptionComponents] = 0;
  v25 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_downloadURL;
  v26 = type metadata accessor for URL();
  v27 = *(*(v26 - 8) + 56);
  v114 = v25;
  v27(&v1[v25], 1, 1, v26);
  v109 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder;
  v112 = a1;
  v113 = v1;
  *&v1[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer____lazy_storage___jsonEncoder] = 0;
  sub_10000E2A8(a1, a1[3]);
  sub_1000B02C8();
  v28 = v111;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    sub_100003C3C(v112);
    v30 = v113;
LABEL_4:

    sub_100013F2C(&v30[v114], &qword_1004A6D30);

    type metadata accessor for KnoxPointer(0);
    swift_deallocPartialClassInstance();
    return v30;
  }

  v29 = v21;
  v111 = v18;
  type metadata accessor for KnoxPointer.File(0);
  v119 = 3;
  sub_1000B0B5C(&qword_1004A90C8, 255, type metadata accessor for KnoxPointer.File);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v32 = v113;
  *&v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_file] = v116.i64[0];
  v116.i8[0] = 4;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = &v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_name];
  *v34 = v33;
  v34[1] = v35;
  type metadata accessor for KnoxPointer.Retention();
  v119 = 6;
  sub_1000B0B5C(&qword_1004A90D0, v36, type metadata accessor for KnoxPointer.Retention);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_retention] = v116.i64[0];
  v116.i8[0] = 7;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = &v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_space];
  *v38 = v37;
  v38[1] = v39;
  v116.i8[0] = 8;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = &v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_type];
  *v41 = v40;
  v41[1] = v42;
  v116.i8[0] = 10;
  v90 = 0;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = &v32[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_uuid];
  *v44 = v43;
  v44[1] = v45;
  v119 = 5;
  sub_1000BCADC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v46.i64[0] = 1;
  v47 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v116, v46)).i64[0], 0);
  v48 = vandq_s8(v116, v47);
  v49 = vandq_s8(v117, v47);
  if (v116.i64[0] == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = v118;
  }

  v51 = OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions;
  *OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_permissions = v48;
  *(v51 + 16) = v49;
  *(v51 + 32) = v50;
  v116.i8[0] = 2;
  sub_1000B0B5C(&qword_1004A90E0, 255, &type metadata accessor for URL);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v52 = v114;
  swift_beginAccess();
  sub_100013EBC(v29, v52);
  swift_endAccess();
  v116.i8[0] = 0;
  v53 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = v55;
  v57 = v53;
  v88 = v24;
  v89 = v22;
  if (qword_1004A6AB8 != -1)
  {
    swift_once();
  }

  v58 = qword_1004A9040;
  v59 = String._bridgeToObjectiveC()();
  v60 = [v58 dateFromString:v59];

  if (!v60)
  {
    v111 = 0x8000000100430910;
    v116.i64[0] = 0;
    v116.i64[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v62._object = 0x80000001004302A0;
    v62._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v62);
    v63._countAndFlagsBits = v57;
    v63._object = v56;
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0xD000000000000022;
    v64._object = 0x80000001004302C0;
    String.append(_:)(v64);
    v104 = v116.i64[1];
    v105 = v116.i64[0];
    v103 = type metadata accessor for KnoxServiceClient.ClientError();
    v65 = swift_allocObject();
    sub_10000E014();
    v93 = "hivePointer.swift";
    static DispatchQoS.userInitiated.getter();
    v116.i64[0] = &_swiftEmptyArrayStorage;
    sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000039E8(&unk_1004A7850);
    sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v97 + 104))(v99, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v98);
    v67 = v101;
    v66 = v102;
    v68 = v100;
    (*(v101 + 104))(v100, enum case for DispatchQoS.QoSClass.default(_:), v102);
    static OS_dispatch_queue.global(qos:)();
    (*(v67 + 8))(v68, v66);
    v69 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v65 + 16) = 0x6F72662874696E69;
    *(v65 + 24) = 0xEB00000000293A6DLL;
    v70 = v111;
    *(v65 + 32) = 0xD00000000000005CLL;
    *(v65 + 40) = v70;
    *(v65 + 56) = 7;
    *(v65 + 48) = 267;
    v71 = v104;
    *(v65 + 64) = v105;
    *(v65 + 72) = v71;
    *(v65 + 80) = 0;
    *(v65 + 88) = v69;
    sub_1000B0B5C(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
    swift_allocError();
    *v72 = v65;
    swift_willThrow();
    (*(v108 + 8))(v88, v89);
    v30 = v113;
    v54 = v90;
    sub_100003C3C(v112);

    if (!v54)
    {
    }

    goto LABEL_4;
  }

  v61 = v111;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v106 + 16))(&v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_createdAt], v61, v107);
  sub_1000039E8(&qword_1004A7330);
  v119 = 1;
  sub_1000BD234(&qword_1004A6BC0, &qword_1004A7330);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v116.i64[1])
  {
    v73 = qword_1004A9040;
    v74 = String._bridgeToObjectiveC()();

    v75 = [v73 dateFromString:v74];

    if (v75)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    v77 = *(v106 + 56);
    v78 = v92;
    v77(v92, v76, 1, v107);
    sub_1000A5754(v78, &v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt]);
  }

  else
  {
    v77 = *(v106 + 56);
    v77(&v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_deletedAt], 1, 1, v107);
  }

  v119 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v116.i64[1])
  {
    v79 = qword_1004A9040;
    v80 = String._bridgeToObjectiveC()();

    v81 = [v79 dateFromString:v80];

    if (v81)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = 0;
    }

    else
    {
      v82 = 1;
    }

    v84 = v107;
    (*(v106 + 8))(v111, v107);
    (*(v108 + 8))(v88, v89);
    v85 = v91;
    v77(v91, v82, 1, v84);
    sub_1000A5754(v85, &v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt]);
  }

  else
  {
    v83 = v107;
    (*(v106 + 8))(v111, v107);
    (*(v108 + 8))(v88, v89);
    v77(&v113[OBJC_IVAR____TtC16KnoxClientPublic11KnoxPointer_updatedAt], 1, 1, v83);
  }

  v86 = type metadata accessor for KnoxPointer(0);
  v115.receiver = v113;
  v115.super_class = v86;
  v30 = objc_msgSendSuper2(&v115, "init");
  sub_100003C3C(v112);
  return v30;
}

uint64_t KnoxPointer.Permissions.init(admin:read:readMetadata:update:readUnauthenticated:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

Swift::Int sub_1000B4C18()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B4CFC()
{
  String.hash(into:)();
}

Swift::Int sub_1000B4DCC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B4EAC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF078(*a1);
  *a2 = result;
  return result;
}

void sub_1000B4EDC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6E696D6461;
  v5 = 0xED00006174616461;
  v6 = 0x74656D2D64616572;
  v7 = 0xE600000000000000;
  v8 = 0x657461647075;
  if (v2 != 3)
  {
    v8 = 0xD000000000000014;
    v7 = 0x80000001004292E0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684104562;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000B4F7C()
{
  v1 = *v0;
  v2 = 0x6E696D6461;
  v3 = 0x74656D2D64616572;
  v4 = 0x657461647075;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684104562;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000B5018@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BF078(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B504C(uint64_t a1)
{
  v2 = sub_1000BCB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5088(uint64_t a1)
{
  v2 = sub_1000BCB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointer.Permissions.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004A90E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v16 = v1[2];
  v17 = v8;
  v14 = v1[4];
  v15 = v10;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCB30();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v9;
  v18 = 0;
  sub_1000039E8(&qword_1004A90F8);
  sub_1000BCBD8(&qword_1004A9100, sub_1000BCB84);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {
    v11 = v16;

    v19 = v17;
    v18 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v11;
    v18 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v15;
    v18 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v14;
    v18 = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t KnoxPointer.Permissions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A9110);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCB30();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  sub_1000039E8(&qword_1004A90F8);
  v18 = 0;
  sub_1000BCBD8(&qword_1004A9118, sub_1000BCC50);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v19;
  v18 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = 0;
  v16 = v19;
  v18 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v14 = v19;
  v18 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v13 = v19;
  v18 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v19;
  v11 = v16;
  *a2 = v17;
  a2[1] = v11;
  v12 = v13;
  a2[2] = v14;
  a2[3] = v12;
  a2[4] = v10;

  sub_100003C3C(a1);
}

KnoxClientPublic::KnoxPointer::OnePermission::Method_optional __swiftcall KnoxPointer.OnePermission.Method.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047B328, v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t KnoxPointer.OnePermission.Method.rawValue.getter()
{
  v1 = 0x6C6F702D6E727061;
  if (*v0 != 1)
  {
    v1 = 1886351214;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F632D656C707061;
  }
}

uint64_t sub_1000B5880(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6C6F702D6E727061;
  v4 = 0xEB00000000796369;
  if (v2 != 1)
  {
    v3 = 1886351214;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F632D656C707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xED00007463656E6ELL;
  }

  v7 = 0x6C6F702D6E727061;
  v8 = 0xEB00000000796369;
  if (*a2 != 1)
  {
    v7 = 1886351214;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F632D656C707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xED00007463656E6ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000B598C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B5A3C()
{
  String.hash(into:)();
}

Swift::Int sub_1000B5AD8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000B5B90(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007463656E6ELL;
  v4 = 0xEB00000000796369;
  v5 = 0x6C6F702D6E727061;
  if (v2 != 1)
  {
    v5 = 1886351214;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F632D656C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t KnoxPointer.OnePermission.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1000B5CF4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x646F6874656DLL;
  }
}

uint64_t sub_1000B5D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646F6874656DLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B5DFC(uint64_t a1)
{
  v2 = sub_1000BCE28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B5E38(uint64_t a1)
{
  v2 = sub_1000BCE28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KnoxPointer.OnePermission.encode(to:)(void *a1)
{
  v4 = sub_1000039E8(&qword_1004A9128);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCE28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  sub_1000BCE7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t KnoxPointer.OnePermission.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004A9140);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCE28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    sub_1000BCED0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return sub_100003C3C(a1);
}

uint64_t KnoxPointer.Retention.policy.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_policy);

  return v1;
}

id KnoxPointer.Retention.init(policy:expiration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_policy];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_expiration] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for KnoxPointer.Retention();
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_1000B6304()
{
  if (*v0)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 0x7963696C6F70;
  }
}

uint64_t sub_1000B6340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7963696C6F70 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B6420(uint64_t a1)
{
  v2 = sub_1000BCF24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B645C(uint64_t a1)
{
  v2 = sub_1000BCF24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B64C4(void *a1)
{
  v3 = sub_1000039E8(&qword_1004A9150);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCF24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

id KnoxPointer.Retention.init(from:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004A9160);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCF24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100003C3C(a1);
    type metadata accessor for KnoxPointer.Retention();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = &v1[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_policy];
    *v11 = v9;
    v11[1] = v12;
    v15 = 1;
    *&v1[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer9Retention_expiration] = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = type metadata accessor for KnoxPointer.Retention();
    v14.receiver = v1;
    v14.super_class = v13;
    v3 = objc_msgSendSuper2(&v14, "init");
    (*(v6 + 8))(v8, v5);
    sub_100003C3C(a1);
  }

  return v3;
}

KnoxClientPublic::KnoxPointer::File::FileFormat_optional __swiftcall KnoxPointer.File.FileFormat.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047B390, v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t KnoxPointer.File.FileFormat.rawValue.getter()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72612D656C707061;
  }
}

Swift::Int sub_1000B69D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B6A78()
{
  String.hash(into:)();
}

Swift::Int sub_1000B6B08()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000B6BB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006576696863;
  v4 = 0x8000000100429330;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72612D656C707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000B6CC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x8000000100429330;
  v5 = 0xE000000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000100429330;
  }

  else
  {
    v3 = 0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x72612D656C707061;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xED00006576696863;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0;
    v4 = 0xE000000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72612D656C707061;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xED00006576696863;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

KnoxClientPublic::KnoxPointer::File::KeyManagementSystem_optional __swiftcall KnoxPointer.File.KeyManagementSystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10047B3F8, v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t KnoxPointer.File.KeyManagementSystem.rawValue.getter()
{
  v1 = 1397574475;
  v2 = 1397574487;
  if (*v0 != 2)
  {
    v2 = 0;
  }

  if (*v0)
  {
    v1 = 1397440851;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1000B6E54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B6EEC()
{
  String.hash(into:)();
}

Swift::Int sub_1000B6F70()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000B7010(uint64_t *a1@<X8>)
{
  v2 = 1397574475;
  v3 = 1397574487;
  v4 = 0xE400000000000000;
  if (*v1 != 2)
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if (*v1)
  {
    v2 = 1397440851;
  }

  if (*v1 <= 1u)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v2 = v3;
    v5 = v4;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_1000B712C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t KnoxPointer.File.digest.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest);

  return v1;
}

uint64_t KnoxPointer.File.digestAlgorithm.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digestAlgorithm);

  return v1;
}

uint64_t KnoxPointer.File.kmsIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kmsIdentifier);

  return v1;
}

uint64_t sub_1000B72E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
}

uint64_t KnoxPointer.File.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_type);

  return v1;
}

uint64_t KnoxPointer.File.status.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_status);

  return v1;
}

uint64_t KnoxPointer.File.relatedFile.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_relatedFile);

  return v1;
}

uint64_t KnoxPointer.File.signedFile.getter@<X0>(void *a1@<X8>)
{
  v2 = (v1 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile);
  v3 = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile);
  v4 = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 8);
  v5 = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 16);
  v6 = *(v1 + OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 24);
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
}

id KnoxPointer.File.Encryption.__allocating_init(digest:digestAlgorithm:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digest];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v11[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_digestAlgorithm];
  *v13 = a3;
  *(v13 + 1) = a4;
  *&v11[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File10Encryption_size] = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, "init");
}

void __swiftcall KnoxPointer.File.SignedFile.init(signatureFormat:signature:signingKey:trustedIdentities:)(KnoxClientPublic::KnoxPointer::File::SignedFile *__return_ptr retstr, Swift::String signatureFormat, Swift::String signature, Swift::String signingKey, Swift::OpaquePointer trustedIdentities)
{
  retstr->signatureFormat = signatureFormat;
  retstr->signature = signature;
  retstr->signingKey = signingKey;
  retstr->trustedIdentities.value = trustedIdentities;
}

id KnoxPointer.File.Uploader.__allocating_init(value:method:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_value];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtCCC16KnoxClientPublic11KnoxPointer4File8Uploader_method];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id KnoxPointer.File.__allocating_init(digest:createdAt:deletedAt:digestAlgorithm:format:kms:kmsIdentifier:permissions:pointers:type:status:size:isEncrypted:encryptedFile:signedFile:updatedAt:relatedFile:uploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, _BYTE *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, __int128 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v25 = v24;
  v30 = objc_allocWithZone(v25);
  v31 = *a7;
  LOBYTE(a7) = *a8;
  v48 = *(a11 + 4);
  v54 = a20[1];
  v55 = *a20;
  v53 = a20[2];
  v52 = *(a20 + 6);
  v32 = OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v45 = a11[1];
  v46 = *a11;
  (*(v34 + 16))(&v30[v32], a3, v33);
  sub_100013E54(a4, &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_deletedAt], &qword_1004A73C0);
  v35 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest];
  *v35 = a1;
  v35[1] = a2;
  v36 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digestAlgorithm];
  *v36 = a5;
  v36[1] = a6;
  *&v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_encryptedFile] = a19;
  v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_format] = v31;
  v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_isEncrypted] = a18;
  v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kms] = a7;
  v37 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kmsIdentifier];
  *v37 = a9;
  v37[1] = a10;
  v38 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions];
  *v38 = v46;
  *(v38 + 1) = v45;
  *(v38 + 4) = v48;
  *&v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_pointers] = a12;
  v39 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_relatedFile];
  *v39 = a22;
  v39[1] = a23;
  v40 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile];
  *v40 = v55;
  *(v40 + 1) = v54;
  *(v40 + 2) = v53;
  *(v40 + 6) = v52;
  *&v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_size] = a17;
  v41 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_status];
  *v41 = a15;
  v41[1] = a16;
  v42 = &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_type];
  *v42 = a13;
  v42[1] = a14;
  sub_100013E54(a21, &v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_updatedAt], &qword_1004A73C0);
  *&v30[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_uploader] = a24;
  v58.receiver = v30;
  v58.super_class = v57;
  v43 = objc_msgSendSuper2(&v58, "init");
  sub_100013F2C(a21, &qword_1004A73C0);
  sub_100013F2C(a4, &qword_1004A73C0);
  (*(v34 + 8))(a3, v33);
  return v43;
}

id KnoxPointer.File.init(digest:createdAt:deletedAt:digestAlgorithm:format:kms:kmsIdentifier:permissions:pointers:type:status:size:isEncrypted:encryptedFile:signedFile:updatedAt:relatedFile:uploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, char *a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, __int128 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v27 = *a7;
  v28 = *a8;
  v48 = *(a11 + 4);
  v53 = a20[1];
  v54 = *a20;
  v52 = a20[2];
  v51 = *(a20 + 6);
  v29 = OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt;
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v44 = a11[1];
  v45 = *a11;
  v32 = a3;
  (*(v31 + 16))(&v24[v29], a3, v30);
  v33 = a4;
  sub_100013E54(a4, &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_deletedAt], &qword_1004A73C0);
  v34 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest];
  *v34 = a1;
  v34[1] = a2;
  v35 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digestAlgorithm];
  *v35 = a5;
  v35[1] = a6;
  *&v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_encryptedFile] = a19;
  v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_format] = v27;
  v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_isEncrypted] = a18;
  v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kms] = v28;
  v36 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kmsIdentifier];
  *v36 = a9;
  v36[1] = a10;
  v37 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions];
  *v37 = v45;
  *(v37 + 1) = v44;
  *(v37 + 4) = v48;
  *&v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_pointers] = a12;
  v38 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_relatedFile];
  *v38 = a22;
  v38[1] = a23;
  v39 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile];
  *v39 = v54;
  *(v39 + 1) = v53;
  *(v39 + 2) = v52;
  *(v39 + 6) = v51;
  *&v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_size] = a17;
  v40 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_status];
  *v40 = a15;
  v40[1] = a16;
  v41 = &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_type];
  *v41 = a13;
  v41[1] = a14;
  sub_100013E54(a21, &v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_updatedAt], &qword_1004A73C0);
  *&v24[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_uploader] = a24;
  v55.receiver = v24;
  v55.super_class = type metadata accessor for KnoxPointer.File(0);
  v42 = objc_msgSendSuper2(&v55, "init");
  sub_100013F2C(a21, &qword_1004A73C0);
  sub_100013F2C(v33, &qword_1004A73C0);
  (*(v31 + 8))(v32, v30);
  return v42;
}

char *KnoxPointer.File.init(from:)(void *a1)
{
  v115 = type metadata accessor for DecodingError();
  v107 = *(v115 - 1);
  v2 = __chkstk_darwin(v115);
  v106 = v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v114 = v101 - v4;
  v5 = sub_1000039E8(&qword_1004A73C0);
  v6 = __chkstk_darwin(v5 - 8);
  v104 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v105 = v101 - v8;
  v113 = type metadata accessor for DispatchQoS.QoSClass();
  v117 = *(v113 - 8);
  __chkstk_darwin(v113);
  v116 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v110 = *(v10 - 8);
  v111 = v10;
  __chkstk_darwin(v10);
  v112 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v108);
  v109 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v15 = v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v118 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000039E8(&qword_1004A9190);
  v119 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v101 - v20;
  sub_10000E2A8(a1, a1[3]);
  sub_1000BCF78();
  v22 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v101[1] = v15;
    v103 = v18;
    v102 = v16;
    v120 = a1;
    LOBYTE(v123) = 0;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v26;
    v101[0] = v19;
    if (qword_1004A6AB8 != -1)
    {
      swift_once();
    }

    v28 = qword_1004A9040;
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 dateFromString:v29];

    v32 = v116;
    v31 = v117;
    if (!v30)
    {
      v118 = 0x8000000100430910;
      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v38._object = 0x80000001004302A0;
      v38._countAndFlagsBits = 0xD00000000000001ALL;
      String.append(_:)(v38);
      v39._countAndFlagsBits = v25;
      v39._object = v27;
      String.append(_:)(v39);

      v40._countAndFlagsBits = 0xD000000000000022;
      v40._object = 0x80000001004302C0;
      String.append(_:)(v40);
      v107 = *(&v123 + 1);
      v114 = v123;
      v115 = type metadata accessor for KnoxServiceClient.ClientError();
      v41 = swift_allocObject();
      sub_10000E014();
      v106 = "hivePointer.swift";
      static DispatchQoS.userInitiated.getter();
      *&v123 = &_swiftEmptyArrayStorage;
      v105 = sub_1000B0B5C(&unk_1004A6B60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1000039E8(&unk_1004A7850);
      sub_10001F9A4(&qword_1004A6B70, &unk_1004A7850);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v110 + 104))(v112, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v111);
      v42 = v113;
      (*(v31 + 13))(v32, enum case for DispatchQoS.QoSClass.default(_:), v113);
      static OS_dispatch_queue.global(qos:)();
      (*(v31 + 1))(v32, v42);
      v43 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      *(v41 + 16) = 0x6F72662874696E69;
      *(v41 + 24) = 0xEB00000000293A6DLL;
      v44 = v118;
      *(v41 + 32) = 0xD00000000000005CLL;
      *(v41 + 40) = v44;
      *(v41 + 56) = 7;
      *(v41 + 48) = 622;
      v45 = v107;
      *(v41 + 64) = v114;
      *(v41 + 72) = v45;
      *(v41 + 80) = 0;
      *(v41 + 88) = v43;
      sub_1000B0B5C(&unk_1004A7860, 255, type metadata accessor for KnoxServiceClient.ClientError);
      swift_allocError();
      *v46 = v41;
      swift_willThrow();
      (*(v119 + 8))(v21, v101[0]);
      v23 = v120;
      goto LABEL_4;
    }

    v33 = v103;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt;
    v35 = v118;
    v36 = v121;
    v37 = v102;
    (*(v118 + 16))(&v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_createdAt], v33, v102);
    sub_1000039E8(&qword_1004A7330);
    v127 = 1;
    sub_1000BD234(&qword_1004A6BC0, &qword_1004A7330);
    v117 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v113 = v34;
    if (*(&v123 + 1))
    {
      v47 = qword_1004A9040;
      v48 = String._bridgeToObjectiveC()();

      v49 = [v47 dateFromString:v48];

      if (v49)
      {
        v50 = v105;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v51 = v50;
        v52 = 0;
      }

      else
      {
        v52 = 1;
        v51 = v105;
      }

      v53 = *(v35 + 56);
      v53(v51, v52, 1, v37);
      sub_1000A5754(v51, &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_deletedAt]);
    }

    else
    {
      v53 = *(v35 + 56);
      v53(&v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_deletedAt], 1, 1, v37);
    }

    v127 = 16;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (*(&v123 + 1))
    {
      v54 = qword_1004A9040;
      v55 = String._bridgeToObjectiveC()();

      v56 = [v54 dateFromString:v55];

      if (v56)
      {
        v57 = v104;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v58 = 0;
      }

      else
      {
        v58 = 1;
        v57 = v104;
      }

      v53(v57, v58, 1, v37);
      sub_1000A5754(v57, &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_updatedAt]);
    }

    else
    {
      v53(&v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_updatedAt], 1, 1, v37);
    }

    LOBYTE(v123) = 2;
    v59 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digest];
    *v60 = v59;
    v60[1] = v61;
    LOBYTE(v123) = 3;
    v62 = KeyedDecodingContainer.decode(_:forKey:)();
    v63 = &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_digestAlgorithm];
    *v63 = v62;
    v63[1] = v64;
    v127 = 5;
    sub_1000BCFCC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_format] = v123;
    v127 = 7;
    sub_1000BD020();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kms] = v123;
    LOBYTE(v123) = 7;
    v66 = KeyedDecodingContainer.decode(_:forKey:)();
    v67 = &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_kmsIdentifier];
    *v67 = v66;
    v67[1] = v68;
    LOBYTE(v123) = 15;
    v69 = KeyedDecodingContainer.decode(_:forKey:)();
    v70 = &v36[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_type];
    *v70 = v69;
    v70[1] = v71;
    LOBYTE(v123) = 14;
    v72 = KeyedDecodingContainer.decode(_:forKey:)();
    v116 = 0;
    v74 = &v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_status];
    *v74 = v72;
    v74[1] = v73;
    LOBYTE(v123) = 13;
    v75 = v116;
    v76 = KeyedDecodingContainer.decode(_:forKey:)();
    v116 = v75;
    if (v75 || (*&v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_size] = v76, LOBYTE(v123) = 6, v77 = v116, v78 = KeyedDecodingContainer.decode(_:forKey:)(), (v116 = v77) != 0) || (v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_isEncrypted] = v78 & 1, type metadata accessor for KnoxPointer.File.Encryption(), v127 = 4, sub_1000B0B5C(&qword_1004A91B0, v79, type metadata accessor for KnoxPointer.File.Encryption), v80 = v116, KeyedDecodingContainer.decode<A>(_:forKey:)(), (v116 = v80) != 0))
    {
      v115 = *(v118 + 8);
      v115(v103, v102);
      (*(v119 + 8))(v117, v101[0]);
      v81 = 0;
      LODWORD(v114) = 0;
      v82 = 0;
      LODWORD(v117) = 0;
      LODWORD(v119) = 0;
      goto LABEL_25;
    }

    *&v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_encryptedFile] = v123;
    v127 = 9;
    sub_1000BCADC();
    v83 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v116 = v83;
    if (v83)
    {
      v115 = *(v118 + 8);
      v115(v103, v102);
      (*(v119 + 8))(v117, v101[0]);
      v81 = 0;
      LODWORD(v114) = 0;
      LODWORD(v117) = 0;
      LODWORD(v119) = 0;
    }

    else
    {
      v84 = v125;
      v85 = &v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions];
      v86 = v124;
      *v85 = v123;
      *(v85 + 1) = v86;
      *(v85 + 4) = v84;
      sub_1000039E8(&qword_1004A8D20);
      v127 = 10;
      sub_1000BD390(&qword_1004A91B8, &qword_1004A9098);
      v87 = v116;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v116 = v87;
      if (v87)
      {
        v115 = *(v118 + 8);
        v115(v103, v102);
        (*(v119 + 8))(v117, v101[0]);
        LODWORD(v114) = 0;
        LODWORD(v117) = 0;
        LODWORD(v119) = 0;
        v81 = 1;
      }

      else
      {
        *&v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_pointers] = v123;
        LOBYTE(v123) = 11;
        v88 = v116;
        v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v116 = v88;
        if (!v88)
        {
          v91 = &v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_relatedFile];
          *v91 = v89;
          v91[1] = v90;
          v127 = 12;
          sub_1000BD098();
          v92 = v116;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v116 = v92;
          if (v92)
          {
            v115 = *(v118 + 8);
            v115(v103, v102);
            (*(v119 + 8))(v117, v101[0]);
            LODWORD(v119) = 0;
            v81 = 1;
            LODWORD(v114) = 1;
            v82 = 1;
            LODWORD(v117) = 1;
          }

          else
          {
            v93 = v124;
            v94 = v125;
            v95 = v126;
            v96 = &v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile];
            *v96 = v123;
            *(v96 + 1) = v93;
            *(v96 + 2) = v94;
            *(v96 + 6) = v95;
            type metadata accessor for KnoxPointer.File.Uploader();
            v127 = 17;
            sub_1000B0B5C(&qword_1004A91C8, v97, type metadata accessor for KnoxPointer.File.Uploader);
            v98 = v116;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            v116 = v98;
            if (!v98)
            {
              (*(v118 + 8))(v103, v102);
              (*(v119 + 8))(v117, v101[0]);
              v99 = v121;
              *&v121[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_uploader] = v123;
              v100 = type metadata accessor for KnoxPointer.File(0);
              v122.receiver = v99;
              v122.super_class = v100;
              v21 = objc_msgSendSuper2(&v122, "init");
              sub_100003C3C(v120);
              return v21;
            }

            v115 = *(v118 + 8);
            v115(v103, v102);
            (*(v119 + 8))(v117, v101[0]);
            v81 = 1;
            LODWORD(v114) = 1;
            v82 = 1;
            LODWORD(v117) = 1;
            LODWORD(v119) = 1;
          }

LABEL_25:
          sub_100003C3C(v120);
          v21 = v121;
          v115(&v121[v113], v102);
          sub_100013F2C(&v21[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_deletedAt], &qword_1004A73C0);
          sub_100013F2C(&v21[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_updatedAt], &qword_1004A73C0);
          v65 = v121;

          if (v81)
          {
            v21 = *&v65[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_permissions + 8];

            if (v114)
            {
LABEL_33:
            }
          }

          else if (v114)
          {
            goto LABEL_33;
          }

          if (v82)
          {

            if (v117)
            {
              goto LABEL_36;
            }
          }

          else if (v117)
          {
LABEL_36:

            if ((v119 & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_37;
          }

          if (!v119)
          {
            goto LABEL_5;
          }

LABEL_37:
          v21 = *&v65[OBJC_IVAR____TtCC16KnoxClientPublic11KnoxPointer4File_signedFile + 8];

          goto LABEL_5;
        }

        v115 = *(v118 + 8);
        v115(v103, v102);
        (*(v119 + 8))(v117, v101[0]);
        LODWORD(v117) = 0;
        LODWORD(v119) = 0;
        v81 = 1;
        LODWORD(v114) = 1;
      }
    }

    v82 = 1;
    goto LABEL_25;
  }

  v23 = a1;
LABEL_4:
  sub_100003C3C(v23);
LABEL_5:
  type metadata accessor for KnoxPointer.File(0);
  swift_deallocPartialClassInstance();
  return v21;
}