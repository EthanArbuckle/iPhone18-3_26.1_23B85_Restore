unint64_t sub_10037DB98()
{
  result = qword_1006A7170;
  if (!qword_1006A7170)
  {
    sub_100006AF0(255, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7170);
  }

  return result;
}

id sub_10037DC0C(void *a1)
{
  v3 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
  sub_10037EE3C();
  *&v1[v3] = Dictionary.init(dictionaryLiteral:)();
  *&v1[OBJC_IVAR___CSDApplicationInstallationObserver_uninstalledApplicationCache] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___CSDApplicationInstallationObserver_queue] = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for ApplicationInstallationObserver();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v10, "init");
  v6 = objc_opt_self();
  v7 = v5;
  result = [v6 defaultWorkspace];
  if (result)
  {
    v9 = result;
    [result addObserver:v7];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037DD3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  v16 = *(v3 + OBJC_IVAR___CSDApplicationInstallationObserver_queue);
  *(v14 - v13) = v16;
  (*(v9 + 104))(v14 - v13, enum case for DispatchPredicate.onQueue(_:), v6);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v15, v6);
  if (v16)
  {
    v19 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
    swift_beginAccess();
    v20 = *(v3 + v19);

    v21 = sub_100006694();
    v23 = sub_100023E48(v21, v22, v20);

    if (!v23)
    {
      v24 = OBJC_IVAR___CSDApplicationInstallationObserver_uninstalledApplicationCache;
      swift_beginAccess();
      v25 = *(v3 + v24);

      v26 = sub_100006694();
      v28 = sub_1004226B4(v26, v27, v25);

      if (!v28)
      {
        v29 = objc_allocWithZone(LSApplicationRecord);

        v30 = sub_100006694();
        v32 = sub_100428E24(v30, v31, 1);
        v23 = v32;
        if (v32)
        {
          swift_beginAccess();
          v33 = v23;
          v34 = *(v3 + v19);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(v3 + v19);
          sub_100379CFC(v33, a1, a2, isUniquelyReferenced_nonNull_native, v36, v37, v38, v39, v40, v41);
          *(v3 + v19) = v42;
          swift_endAccess();
        }

        else
        {
          swift_beginAccess();

          sub_10001E84C();
          swift_endAccess();

          return 0;
        }
      }
    }

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10037E02C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = *(v2 + OBJC_IVAR___CSDApplicationInstallationObserver_queue);
  *(v13 - v12) = v14;
  (*(v8 + 104))(v13 - v12, enum case for DispatchPredicate.onQueue(_:), v5);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = *(v8 + 8);
  v17 = sub_100006694();
  result = v18(v17);
  if (v14)
  {
    v20 = sub_10037DD3C(a1, a2);
    v21 = v20;
    if (v20)
    {
    }

    return v21 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10037E1F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationInstallationObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10037E2AC(uint64_t *a1, uint64_t a2)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA568);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v46 = v8;
      *v7 = 136315138;
      v9 = Array.description.getter();
      v11 = sub_10002741C(v9, v10, &v46);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "applicationsDidUninstall: %s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    v12 = sub_1004229F4(a1);
    if (!v12)
    {
      osloga = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v27, "Failed to convert notifications' appProxies to LSApplicationProxy", v28, 2u);
      }

      return;
    }

    v13 = v12;
    v14 = sub_10000B6F4(v12);
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v46 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v14 & ~(v14 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v16 = 0;
    a1 = v46;
    v42 = v13;
    oslog = (v13 & 0xC000000000000001);
    v41 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (oslog)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v41 + 16))
        {
          goto LABEL_34;
        }

        v18 = *(v13 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = sub_1002C89F0(v18);
      if (!v21)
      {
        goto LABEL_37;
      }

      v22 = v20;
      v23 = v21;

      v46 = a1;
      v25 = a1[2];
      v24 = a1[3];
      if (v25 >= v24 >> 1)
      {
        sub_10039A2E0(v24 > 1, v25 + 1, 1);
        a1 = v46;
      }

      a1[2] = v25 + 1;
      v26 = &a1[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v16;
      v13 = v42;
      if (v17 == v15)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_24:
  v29 = a1[2];
  if (v29)
  {
    v30 = OBJC_IVAR___CSDApplicationInstallationObserver_applicationRecordCache;
    v31 = a1 + 5;
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      swift_beginAccess();
      v34 = *(a2 + v30);

      v35 = sub_100005208();
      LOBYTE(v34) = v36;

      if (v34)
      {
        v37 = *(a2 + v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(a2 + v30);
        *(a2 + v30) = 0x8000000000000000;
        v39 = v45[3];
        sub_10026D814(&qword_1006A6F70, &qword_100582748);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
        v40 = *(v45[6] + 16 * v35 + 8);

        sub_10037EE3C();
        _NativeDictionary._delete(at:)();
        *(a2 + v30) = v45;
      }

      swift_endAccess();
      v31 += 2;
      --v29;
    }

    while (v29);
  }
}

uint64_t sub_10037E750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  v33 = type metadata accessor for DispatchQoS();
  v17 = sub_100007FEC(v33);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v26 = *&v4[OBJC_IVAR___CSDApplicationInstallationObserver_queue];
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = a4;
  v28 = _Block_copy(aBlock);
  v29 = v26;

  v30 = v4;
  static DispatchQoS.unspecified.getter();
  sub_10000AC00();
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v28);

  (*(v10 + 8))(v16, v7);
  (*(v19 + 8))(v25, v33);
}

void sub_10037E9A4(uint64_t *a1)
{
  if (qword_1006A0AF8 != -1)
  {
    goto LABEL_33;
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
      v35 = v6;
      *v5 = 136315138;
      v7 = Array.description.getter();
      v9 = sub_10002741C(v7, v8, &v35);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "applicationsDidInstall: %s", v5, 0xCu);
      sub_100009B7C(v6);
    }

    v10 = sub_1004229F4(a1);
    if (!v10)
    {
      osloga = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(osloga, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, osloga, v26, "Failed to convert notifications' appProxies to LSApplicationProxy", v27, 2u);
      }

      return;
    }

    v11 = v10;
    v12 = sub_10000B6F4(v10);
    if (!v12)
    {
      break;
    }

    v13 = v12;
    v35 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v12 & ~(v12 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v14 = 0;
    a1 = v35;
    oslog = (v11 & 0xC000000000000001);
    v32 = v11 & 0xFFFFFFFFFFFFFF8;
    v15 = v11;
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (oslog)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v32 + 16))
        {
          goto LABEL_32;
        }

        v17 = *(v11 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = sub_1002C89F0(v17);
      if (!v20)
      {
        goto LABEL_35;
      }

      v21 = v19;
      v22 = v20;

      v35 = a1;
      v24 = a1[2];
      v23 = a1[3];
      if (v24 >= v23 >> 1)
      {
        sub_10039A2E0(v23 > 1, v24 + 1, 1);
        a1 = v35;
      }

      a1[2] = v24 + 1;
      v25 = &a1[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v14;
      v11 = v15;
      if (v16 == v13)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  a1 = _swiftEmptyArrayStorage;
LABEL_24:
  v28 = a1[2];
  if (v28)
  {
    v29 = a1 + 5;
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      swift_beginAccess();

      sub_100428F00();
      swift_endAccess();

      v29 += 2;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_10037EDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  v10 = sub_100006694();
  sub_10037E750(v10, v11, a5, a6);
}

unint64_t sub_10037EE3C()
{
  result = qword_1006A7220;
  if (!qword_1006A7220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A7220);
  }

  return result;
}

uint64_t sub_10037EE88()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10037EED0()
{
  sub_100005EF4();
  v89 = v1;
  v90 = v0;
  v2 = type metadata accessor for LanguageManager();
  v3 = sub_100007FEC(v2);
  v92 = v4;
  v93 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v91 = v9 - v8;
  v10 = type metadata accessor for DisclosureRequest();
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v13);
  sub_100007BAC();
  v88 = v14 - v15;
  sub_100006838();
  __chkstk_darwin(v16, v17);
  v87 = &v83 - v18;
  sub_100006838();
  __chkstk_darwin(v19, v20);
  v95 = &v83 - v21;
  sub_100006838();
  __chkstk_darwin(v22, v23);
  v94 = &v83 - v24;
  v25 = type metadata accessor for Locale();
  v26 = sub_100007FEC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26, v31);
  sub_100007FDC();
  v34 = v33 - v32;
  static Locale.current.getter();
  v35 = Locale.identifier.getter();
  v37 = v36;
  v38 = *(v28 + 8);
  v84 = v25;
  v38(v34, v25);
  v85 = v38;
  v86 = v28 + 8;
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v39;

  v40._countAndFlagsBits = 47;
  v40._object = 0xE100000000000000;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0xD000000000000014;
  v41._object = 0x80000001005613C0;
  String.append(_:)(v41);

  v42._countAndFlagsBits = v35;
  v42._object = v37;
  String.append(_:)(v42);

  v43 = v96;
  v83 = v97;
  static Locale.current.getter();
  v44 = Locale.identifier.getter();
  v46 = v45;
  v38(v34, v25);
  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v97 = v47;

  v48._countAndFlagsBits = 47;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 0xD000000000000013;
  v49._object = 0x80000001005613E0;
  String.append(_:)(v49);

  v50._countAndFlagsBits = v44;
  v50._object = v46;
  String.append(_:)(v50);

  v51 = v96;
  v52 = v97;
  v53 = v94;
  v54 = &v94[v11[7]];
  static Locale.current.getter();
  v55 = &v53[v11[11]];
  v55[3] = &type metadata for CallDisclosureFileLocation;
  v55[4] = &off_100631AF0;
  v56 = v83;
  *v55 = v43;
  v55[1] = v56;
  *v53 = 0;
  v57 = &v53[v11[8]];
  *v57 = 0xD000000000000023;
  v57[1] = 0x8000000100564B30;
  v58 = &v53[v11[9]];
  *v58 = 0xD000000000000024;
  v58[1] = 0x8000000100564AD0;
  v59 = &v53[v11[10]];
  *v59 = 0x6E6172546C6C6143;
  v59[1] = 0xEF6E6F6974616C73;
  v53[v11[12]] = 1;
  v60 = v95;
  v61 = &v95[v11[7]];
  static Locale.current.getter();
  v62 = &v60[v11[11]];
  v62[3] = &type metadata for CallDisclosureFileLocation;
  v62[4] = &off_100631AF0;
  *v62 = v51;
  v62[1] = v52;
  *v60 = 1;
  v63 = &v60[v11[8]];
  *v63 = 0xD000000000000022;
  v63[1] = 0x8000000100564B60;
  v64 = &v60[v11[9]];
  *v64 = 0xD000000000000023;
  v64[1] = 0x8000000100564AA0;
  v65 = &v60[v11[10]];
  *v65 = 0x6E6172546C6C6143;
  v65[1] = 0xEF6E6F6974616C73;
  v60[v11[12]] = 1;
  sub_1003812B0(v53, v87);
  sub_1003812B0(v60, v88);
  v89 = v89;
  v90 = v90;
  sub_1002E624C();
  v66 = type metadata accessor for TranslationDisclosureDataSource();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  sub_10037F514();
  v70 = v91;
  v71 = v92;
  v72 = v93;
  (*(v92 + 16))(v91, v69 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_languageManager, v93);

  static Locale.current.getter();
  v73 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v87 = v74;
  v88 = v73;
  v76 = v75;
  v78 = v84;
  v77 = v85;
  v85(v34, v84);
  (*(v71 + 8))(v70, v72);
  v79 = *(v69 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_speechAssetManager);

  static Locale.current.getter();
  v80 = Locale.identifier.getter();
  v82 = v81;
  v77(v34, v78);
  v96 = v80;
  v97 = v82;
  v98 = v88;
  v99 = v76;
  v100 = v87;
  sub_100299234();

  sub_1002B66D4(v95);
  sub_1002B66D4(v94);
  sub_100005EDC();
}

void sub_10037F514()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v32 = v5;
  v33 = v4;
  v31 = v6;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DisclosureRequest();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  sub_100007FDC();
  v16 = v15 - v14;
  [objc_allocWithZone(TUFeatureFlags) init];
  LanguageManager.init(featureFlags:)();
  v17 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator;
  type metadata accessor for Locale();
  v18 = type metadata accessor for DisclosureGenerator();
  sub_1000085CC();
  sub_100381314(v19, v20);
  *(v1 + v17) = sub_100015B14();
  v21 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator;
  *(v1 + v21) = sub_100015B14();
  v1[2] = v10;
  v1[3] = v8;
  v1[4] = v31;
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_speechAssetManager) = v3;
  sub_1003812B0(v33, v16);
  v22 = v10;
  swift_unknownObjectRetain();
  v23 = v3;
  sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  swift_allocObject();
  v24 = *(v18 + 48);
  v25 = *(v18 + 52);
  swift_allocObject();
  sub_10046C380();
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStartTranslationDisclosureGenerator) = v26;
  sub_1003812B0(v32, v16);
  v27 = v22;
  sub_1002E624C();
  swift_allocObject();
  v28 = *(v18 + 48);
  v29 = *(v18 + 52);
  swift_allocObject();
  sub_10046C380();
  *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStopTranslationDisclosureGenerator) = v30;
  [*&v23[OBJC_IVAR___CSDSpeechAssetManager_delegates] addObject:v1];

  swift_unknownObjectRelease();
  sub_1002B66D4(v32);
  sub_1002B66D4(v33);
  sub_100005EDC();
}

void sub_10037F794()
{
  sub_100005EF4();
  v67 = v1;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for DisclosureRequest();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  sub_100007BAC();
  v64 = v17 - v18;
  sub_100006838();
  __chkstk_darwin(v19, v20);
  v65 = &v64 - v21;
  sub_100006838();
  __chkstk_darwin(v22, v23);
  v66 = v0;
  v24 = *(v0 + 16);
  sub_1003812B0(v3, &v64 - v25);
  v26 = v24;
  sub_1002E624C();
  type metadata accessor for DisclosureUtilities();
  swift_allocObject();
  v27 = type metadata accessor for DisclosureGenerator();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = v14;
  sub_10046C380();
  v31 = *(v14 + 20);
  static Locale.current.getter();
  sub_1000085CC();
  sub_100381314(v32, v33);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v13, v4);
  if ((v34 & 1) == 0)
  {
    v35 = (v3 + *(v14 + 28));
    v36 = *v35;
    v37 = v35[1];
    v38 = *v35 == 0xD000000000000024 && 0x8000000100564AD0 == v37;
    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v39 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator;
      sub_100007D88();

      v40 = *(v3 + v39);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000EA90();
      *(v3 + v39) = v68;
      swift_endAccess();
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v41 = type metadata accessor for Logger();
      sub_10000AF9C(v41, qword_1006BA670);
      v42 = v65;
      sub_1003812B0(v3, v65);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = sub_100005274();
        v46 = sub_100005E84();
        v69[0] = v46;
        *v45 = 136315138;
        v47 = (v42 + *(v30 + 28));
        v48 = *v47;
        v49 = v47[1];

        sub_1002B66D4(v42);
        v50 = sub_10002741C(v48, v49, v69);

        *(v45 + 4) = v50;
        v51 = "add %s to remoteLocaleToStartDisclosureGenerator";
        v52 = v44;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v43, v52, v51, v45, 0xCu);
        sub_100009B7C(v46);
        sub_100005F40();
        sub_100005F40();

        goto LABEL_14;
      }

      v53 = v42;
      goto LABEL_13;
    }

    v54 = v36 == 0xD000000000000023 && 0x8000000100564AA0 == v37;
    if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v55 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator;
      sub_100007D88();

      v56 = *(v3 + v55);
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000EA90();
      *(v3 + v55) = v68;
      swift_endAccess();
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v57 = type metadata accessor for Logger();
      sub_10000AF9C(v57, qword_1006BA670);
      v58 = v64;
      sub_1003812B0(v3, v64);
      v43 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v59))
      {
        v45 = sub_100005274();
        v46 = sub_100005E84();
        v69[0] = v46;
        *v45 = 136315138;
        v60 = (v58 + *(v30 + 28));
        v61 = *v60;
        v62 = v60[1];

        sub_1002B66D4(v58);
        v63 = sub_10002741C(v61, v62, v69);

        *(v45 + 4) = v63;
        v51 = "add %s to remoteLocaleToStopDisclosureGenerator";
        v52 = v59;
        goto LABEL_11;
      }

      v53 = v58;
LABEL_13:
      sub_1002B66D4(v53);
    }
  }

LABEL_14:
  sub_100005EDC();
}

void sub_10037FC84()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Locale();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  sub_100007FDC();
  v13 = v12 - v11;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA670);
  (*(v7 + 16))(v13, v3, v4);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v27 = v0;
    v17 = sub_100005274();
    v18 = sub_100005E84();
    v28 = v18;
    *v17 = 136315138;
    sub_1000085CC();
    sub_100381314(v19, v20);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v7 + 8))(v13, v4);
    v24 = sub_10002741C(v21, v23, &v28);

    *(v17 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "locale %s changed- regenerate local disclosures", v17, 0xCu);
    sub_100009B7C(v18);
    sub_100005F40();
    v1 = v27;
    sub_100005F40();
  }

  else
  {

    (*(v7 + 8))(v13, v4);
  }

  v25 = *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStartTranslationDisclosureGenerator);
  Locale.identifier.getter();

  sub_10046D004();

  v26 = *(v1 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStopTranslationDisclosureGenerator);
  Locale.identifier.getter();

  sub_10046D004();

  sub_100005EDC();
}

uint64_t sub_100380014()
{
  v2 = v0;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA670);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v15 = sub_100035B68();
    *v1 = 136315394;

    v6 = String.init<A>(reflecting:)();
    v8 = sub_10002741C(v6, v7, &v15);

    *(v1 + 4) = v8;
    *(v1 + 12) = 2080;
    type metadata accessor for TUTranscriptionAvailability(0);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_10002741C(v9, v10, &v15);

    *(v1 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "asset (%s, %s) changed- regenerate local disclosures", v1, 0x16u);
    swift_arrayDestroy();
    sub_100005F40();
    sub_100005F40();
  }

  v12 = *(v2 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStartTranslationDisclosureGenerator);

  sub_10046D004();

  v13 = *(v2 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStopTranslationDisclosureGenerator);

  sub_10046D004();
}

uint64_t sub_100380280()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_languageManager;
  v3 = type metadata accessor for LanguageManager();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStartDisclosureGenerator);

  v5 = *(v0 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_remoteLocaleToStopDisclosureGenerator);

  v6 = *(v0 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStartTranslationDisclosureGenerator);

  v7 = *(v0 + OBJC_IVAR____TtC13callservicesd31TranslationDisclosureDataSource_localStopTranslationDisclosureGenerator);

  return v0;
}

uint64_t sub_100380340()
{
  sub_100380280();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TranslationDisclosureDataSource()
{
  result = qword_1006A7280;
  if (!qword_1006A7280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003803EC()
{
  result = type metadata accessor for LanguageManager();
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

uint64_t sub_1003804CC(void *a1)
{
  v2 = (*(v1 + *a1) + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v3 = *v2;
  v4 = v2[1];

  sub_10046BA00();
}

uint64_t sub_100380554@<X0>(char a1@<W1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  sub_1002DA5A4();
  if ((v9 & 1) == 0)
  {

LABEL_6:
    v13 = 1;
    goto LABEL_9;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  v12 = *(v10 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
  v11 = *(v10 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

  if (a1)
  {
    sub_10046BB1C();
  }

  else
  {
    sub_10046BA00();
  }

  v13 = 0;
LABEL_9:
  v14 = type metadata accessor for URL();
  return sub_10000AF74(a3, v13, 1, v14);
}

void sub_100380660()
{
  sub_100005EF4();
  v43 = v0;
  v2 = v1;
  v3 = type metadata accessor for Locale();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007BAC();
  v12 = (v10 - v11);
  v15 = __chkstk_darwin(v13, v14);
  v17 = &v39 - v16;
  __chkstk_darwin(v15, v18);
  v20 = &v39 - v19;
  if (qword_1006A0B50 != -1)
  {
    sub_100008194();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA670);
  v22 = *(v6 + 16);
  v22(v20, v2, v3);
  v22(v17, v2, v3);
  v22(v12, v2, v3);
  swift_retain_n();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = v2;
    v26 = v25;
    v41 = sub_100005E84();
    v44 = v41;
    *v26 = 136315906;
    sub_1000085CC();
    sub_100381314(v27, v28);
    v40 = v24;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v23;
    v31 = v30;
    v32 = *(v6 + 8);
    v32(v20, v3);
    v33 = sub_10002741C(v29, v31, &v44);

    *(v26 + 4) = v33;
    *(v26 + 12) = 1024;
    sub_100380A84();
    LOBYTE(v33) = v34;

    v32(v17, v3);
    *(v26 + 14) = v33 & 1;

    *(v26 + 18) = 1024;
    sub_100380A84();
    LOBYTE(v33) = v35;

    v32(v12, v3);
    *(v26 + 20) = v33 & 1;

    *(v26 + 24) = 1024;
    *(v26 + 26) = v43 & 1;
    v36 = v39;
    _os_log_impl(&_mh_execute_header, v39, v40, "locale: %s, remote start: %{BOOL}d, remote stop: %{BOOL}d, hasEndTone: %{BOOL}d", v26, 0x1Eu);
    sub_100009B7C(v41);
    sub_100005F40();
    sub_100005F40();
  }

  else
  {

    v37 = *(v6 + 8);
    v37(v12, v3);

    v37(v17, v3);

    v37(v20, v3);
  }

  sub_100380A84();
  if (v38)
  {
    sub_100380A84();
  }

  sub_100005EDC();
}

void sub_100380A84()
{
  sub_100005EF4();
  v2 = v1;
  v93 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for URL();
  v11 = sub_100007FEC(v10);
  v96 = v12;
  v97 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11, v15);
  sub_100007FDC();
  v95 = v17 - v16;
  v98 = type metadata accessor for Locale();
  v18 = sub_100007FEC(v98);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007BAC();
  v26 = v24 - v25;
  v29 = __chkstk_darwin(v27, v28);
  v31 = &v91 - v30;
  __chkstk_darwin(v29, v32);
  v34 = &v91 - v33;
  v35 = *v5;
  swift_beginAccess();
  v94 = v0;
  v36 = *(v0 + v35);

  v37 = sub_1002CB36C(v9, v36);

  if (v37)
  {
    if (v7)
    {
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v38 = type metadata accessor for Logger();
      sub_10000AF9C(v38, qword_1006BA670);
      sub_10000E7B0();
      v39 = v98;
      v40(v34, v9, v98);

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        swift_slowAlloc();
        v92 = sub_100035B68();
        v99 = v92;
        *v26 = 136315650;
        sub_1000085CC();
        sub_100381314(v43, v44);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v20 + 8))(v34, v39);
        sub_10001725C();
        sub_10000C768();
        *(v26 + 4) = v45;
        *(v26 + 12) = 2080;
        v46 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
        v47 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

        v48 = v95;
        sub_10046BB1C();

        sub_1000103C8();
        sub_100381314(v49, v50);
        v51 = v97;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10000FE24();
        v52(v48, v51);
        sub_10001725C();
        sub_10000C768();
        *(v26 + 14) = v46;
        *(v26 + 22) = 1024;
        *(v26 + 24) = 1;
        sub_100016310(&_mh_execute_header, v53, v42);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      else
      {

        (*(v20 + 8))(v34, v39);
        v9 = v96;
        v51 = v97;
        v48 = v95;
      }

      v85 = *(v94 + 24);
      v86 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v87 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);
      swift_unknownObjectRetain();

      sub_10046BB1C();

      sub_100272258();

      swift_unknownObjectRelease();
      (*(v9 + 8))(v48, v51);
    }

    else
    {
      if (qword_1006A0B50 != -1)
      {
        sub_100008194();
      }

      v69 = type metadata accessor for Logger();
      sub_10000AF9C(v69, qword_1006BA670);
      sub_10000E7B0();
      v70 = v98;
      v71(v31, v9, v98);

      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v72, v73))
      {
        swift_slowAlloc();
        v92 = sub_100035B68();
        v99 = v92;
        *v26 = 136315650;
        sub_1000085CC();
        sub_100381314(v74, v75);
        v76 = dispatch thunk of CustomStringConvertible.description.getter();
        (*(v20 + 8))(v31, v70);
        sub_10001725C();
        sub_10000C768();
        *(v26 + 4) = v76;
        *(v26 + 12) = 2080;
        v77 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
        v78 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);

        v79 = v95;
        sub_10046BA00();

        sub_1000103C8();
        sub_100381314(v80, v81);
        v82 = v97;
        dispatch thunk of CustomStringConvertible.description.getter();
        sub_10000FE24();
        v83(v79, v82);
        sub_10001725C();
        sub_10000C768();
        *(v26 + 14) = v77;
        *(v26 + 22) = 1024;
        *(v26 + 24) = 0;
        sub_100016310(&_mh_execute_header, v84, v73);
        swift_arrayDestroy();
        sub_100005F40();
        sub_100005F40();
      }

      else
      {

        (*(v20 + 8))(v31, v70);
        v9 = v96;
        v82 = v97;
        v79 = v95;
      }

      v88 = *(v94 + 24);
      v89 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation);
      v90 = *(v37 + OBJC_IVAR____TtC13callservicesd19DisclosureGenerator_disclosureFileLocation + 8);
      swift_unknownObjectRetain();

      sub_10046BA00();

      sub_100272258();

      swift_unknownObjectRelease();
      (*(v9 + 8))(v79, v82);
    }
  }

  else
  {
    v54 = v2;
    if (qword_1006A0B50 != -1)
    {
      sub_100008194();
    }

    v55 = type metadata accessor for Logger();
    sub_10000AF9C(v55, qword_1006BA670);
    sub_10000E7B0();
    v56 = v9;
    v57 = v98;
    v58(v26, v56, v98);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = sub_100005274();
      v62 = sub_100005E84();
      v99 = v62;
      *v61 = 136315138;
      sub_1000085CC();
      sub_100381314(v63, v64);
      v65 = dispatch thunk of CustomStringConvertible.description.getter();
      v67 = v66;
      (*(v20 + 8))(v26, v57);
      v68 = sub_10002741C(v65, v67, &v99);

      *(v61 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, v54, v61, 0xCu);
      sub_100009B7C(v62);
      sub_100005F40();
      sub_100005F40();
    }

    else
    {

      (*(v20 + 8))(v26, v57);
    }
  }

  sub_100005EDC();
}

uint64_t sub_1003812B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisclosureRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100381314(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100381424(void *a1)
{
  v3 = [v1 destinationURIs];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F62FC();
  v5 = v4;

  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];

    v8 = [a1 service];
    v9 = sub_10038155C(v6, v7, v8);

    return v9;
  }

  else
  {

    return 0;
  }
}

id sub_10038155C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 deviceForFromID:v4];

  return v5;
}

id sub_100381680()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

_BYTE *sub_100381740(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for MediaRemoteStateValidator()
{
  result = qword_1006A74E8;
  if (!qword_1006A74E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100381890()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100381904()
{
  sub_100005358();
  if (*(v3 + 24))
  {
    sub_10003EBF0(v3, v36);
    v4 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_100378104();
    sub_10004A000(v5, v6, v7, v8, v9, v10, v11, v12, v32, v34);
  }

  else
  {
    sub_100009A04(v3, &unk_1006A2D10, &unk_10057D940);
    v13 = sub_1000077A4();
    sub_1002DB874(v13);
    if (v14)
    {
      sub_10000FAAC();
      sub_10000A268();
      v15 = sub_10026D814(&qword_1006A6E98, &qword_100582678);
      v23 = sub_10000A6F0(v15, v16, v17, v18, v19, v20, v21, v22, v32, v34);
      sub_10001E410(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35);
      sub_10003EBF0((v31 + 32 * v2), v36);
      type metadata accessor for TTSAssetProperty(0);
      sub_100033024(&unk_1006A7550, type metadata accessor for TTSAssetProperty);
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    sub_100009A04(v36, &unk_1006A2D10, &unk_10057D940);
  }
}

void sub_100381A3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10026D814(&qword_1006A76C0, &unk_100582DC0);
  sub_100007BF0(v6);
  v8 = *(v7 + 64);
  sub_100006688();
  __chkstk_darwin(v9, v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  sub_100007FDC();
  v22 = v21 - v20;
  if (sub_100015468(a1, 1, v13) == 1)
  {
    sub_100009A04(a1, &qword_1006A76C0, &unk_100582DC0);
    v23 = *v3;
    v24 = sub_1002DA664(a2);
    if (v25)
    {
      v26 = v24;
      v27 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v3;
      v29 = *(v34 + 24);
      sub_10026D814(&qword_1006A7048, &qword_100582818);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29);
      v30 = v34;
      sub_1003853D4(*(v34 + 56) + *(v16 + 72) * v26, v12, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
      _NativeDictionary._delete(at:)();
      v31 = 0;
      *v3 = v30;
    }

    else
    {
      v31 = 1;
    }

    sub_10000AF74(v12, v31, 1, v13);
    sub_100009A04(v12, &qword_1006A76C0, &unk_100582DC0);
  }

  else
  {
    sub_1003853D4(a1, v22, type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter);
    v32 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v34 = *v3;
    sub_100378214();
    *v3 = v34;
  }
}

uint64_t sub_100381C84()
{
  sub_100008994();
  v3 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  sub_100006948();
  v8 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  sub_100008070(v8);
  v10 = *(v9 + 64);
  sub_100006688();
  __chkstk_darwin(v11, v12);
  v13 = sub_100007DAC();
  if (sub_100015468(v13, v14, v15) == 1)
  {
    sub_100009F18();
    sub_100009A04(v16, v17, v18);
    sub_10000F2EC();
    sub_1003836F0(v19);

    sub_100009F18();
    return sub_100009A04(v20, v21, v22);
  }

  else
  {
    sub_1003281EC(v1, v2);
    v24 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000C780();
    sub_10037841C();

    *v0 = v25;
  }

  return result;
}

void sub_100381DC0()
{
  sub_100005358();
  if (*(v3 + 8))
  {
    sub_100328314(v3, v36);
    v4 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_10037919C();
    sub_10004A000(v5, v6, v7, v8, v9, v10, v11, v12, v32, v34);
  }

  else
  {
    sub_100009A04(v3, &unk_1006A7640, &qword_100582D78);
    v13 = sub_1000077A4();
    sub_1002DA664(v13);
    if (v14)
    {
      sub_10000FAAC();
      sub_10000A268();
      v15 = sub_10026D814(&unk_1006A6FE0, &unk_100582D80);
      v23 = sub_10000A6F0(v15, v16, v17, v18, v19, v20, v21, v22, v32, v34);
      sub_10001E410(v23, v24, v25, v26, v27, v28, v29, v30, v33, v35);
      sub_100328314(v31 + 16 * v2, v36);
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v36[0] = 0;
      v36[1] = 0;
    }

    sub_100009A04(v36, &unk_1006A7640, &qword_100582D78);
  }
}

uint64_t sub_100381EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10026D814(&unk_1006A7600, &unk_100584E50);
  sub_100007BF0(v6);
  v8 = *(v7 + 64);
  sub_100006688();
  __chkstk_darwin(v9, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
  v14 = sub_100008070(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  sub_100007FDC();
  v20 = v19 - v18;
  if (sub_100015468(a1, 1, v21) == 1)
  {
    sub_100006844();
    sub_100009A04(v22, v23, v24);
    sub_100383F24(v12);
    v25 = type metadata accessor for UUID();
    sub_100008070(v25);
    (*(v26 + 8))(a2);
    sub_100006844();
    return sub_100009A04(v27, v28, v29);
  }

  else
  {
    sub_1003853D4(a1, v20, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    v31 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v35 = *v3;
    sub_10037962C();
    *v3 = v35;
    v32 = type metadata accessor for UUID();
    sub_100008070(v32);
    return (*(v33 + 8))(a2);
  }
}

void sub_100382074()
{
  sub_100005358();
  if (*(v2 + 8))
  {
    sub_100009A04(v2, &qword_1006A5E58, &qword_100580BD0);
    v3 = sub_1000077A4();
    v4 = sub_1002DB874(v3);
    v6 = v5;
    if (v5)
    {
      v7 = v4;
      v8 = *v0;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100017278();
      v10 = *(v9 + 24);
      sub_10026D814(&qword_1006A6FB0, &unk_100582D50);
      sub_10000EAB8();
      v11 = sub_1000076CC();
      sub_10001E410(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30);
      sub_1003282B8(v19 + 8 * v7, &v31);
      sub_100335350();
      sub_100007968();
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v31 = 0;
    }

    v32 = (v6 & 1) == 0;
    sub_100009A04(&v31, &qword_1006A5E58, &qword_100580BD0);
  }

  else
  {
    sub_1003282B8(v2, &v31);
    v20 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_100379774();
    sub_10004A000(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_10038218C()
{
  sub_100008994();
  v3 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  sub_100007BF0(v3);
  v5 = *(v4 + 64);
  sub_100006688();
  __chkstk_darwin(v6, v7);
  sub_100006948();
  v8 = type metadata accessor for UUID();
  v9 = sub_100007FEC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9, v14);
  sub_100007FDC();
  v15 = sub_100007DAC();
  if (sub_100015468(v15, v16, v8) == 1)
  {
    sub_100009F18();
    sub_100009A04(v17, v18, v19);
    v20 = sub_10000F2EC();
    sub_10038447C(v20, v21, v22, v23, v24, v25, v26, v27, v41, v42);

    sub_100009F18();
    return sub_100009A04(v28, v29, v30);
  }

  else
  {
    (*(v11 + 32))(v2, v1, v8);
    v32 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v33 = sub_10000C780();
    sub_100379FDC(v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v44, v45, v46, v47);

    *v0 = v43;
  }

  return result;
}

void sub_1003822F8()
{
  sub_100005358();
  if (*(v2 + 8))
  {
    sub_100009A04(v2, &qword_1006A7588, &qword_100582CB8);
    v3 = sub_1000077A4();
    v4 = sub_1002DA664(v3);
    v6 = v5;
    if (v5)
    {
      v7 = v4;
      v8 = *v0;
      swift_isUniquelyReferenced_nonNull_native();
      sub_100017278();
      v10 = *(v9 + 24);
      sub_10026D814(&qword_1006A7580, &unk_1005826E0);
      sub_10000EAB8();
      v11 = sub_1000076CC();
      sub_10001E410(v11, v12, v13, v14, v15, v16, v17, v18, v29, v30);
      sub_10032825C(v19 + 8 * v7, &v31);
      sub_100007968();
      _NativeDictionary._delete(at:)();
      *v0 = v1;
    }

    else
    {
      v31 = 0;
    }

    v32 = (v6 & 1) == 0;
    sub_100009A04(&v31, &qword_1006A7588, &qword_100582CB8);
  }

  else
  {
    sub_10032825C(v2, &v31);
    v20 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1000103E0();
    sub_10037A3B0();
    sub_10004A000(v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  }
}

void *sub_100382410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 + 32;
  v4 = _swiftEmptyArrayStorage;
  do
  {
    sub_100009AB0(v3, v18);
    v5 = v4[2];
    if (!v5 || (v4[6 * v5 + 3] & 1) == 0)
    {
      v6 = v19;
      v7 = v20;
      sub_100009B14(v18, v19);
      sub_100382724(v6, v7, &v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = v4[2];
        sub_100470094();
        v4 = v13;
      }

      v8 = v4[2];
      if (v8 >= v4[3] >> 1)
      {
        sub_100470094();
        v4 = v14;
      }

      v4[2] = v8 + 1;
      v9 = &v4[6 * v8];
      v10 = v16;
      v11 = v17[0];
      *(v9 + 57) = *(v17 + 9);
      v9[2] = v10;
      v9[3] = v11;
    }

    sub_100009B7C(v18);
    v3 += 40;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t sub_100382550(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_10039A2E0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1002A1964(v4, v18);
      sub_100009AB0(v18, &v15);
      sub_100009B14(&v15, v17);
      swift_getDynamicType();
      sub_100009B7C(&v15);
      sub_10026D814(&unk_1006A76B0, &qword_100582DB8);
      v15 = String.init<A>(describing:)();
      v16 = v5;
      v6._countAndFlagsBits = 8250;
      v6._object = 0xE200000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v7);

      v8 = v15;
      v9 = v16;
      sub_1002A19C0(v18);
      v19 = v2;
      v11 = v2[2];
      v10 = v2[3];
      if (v11 >= v10 >> 1)
      {
        sub_10039A2E0(v10 > 1, v11 + 1, 1);
        v2 = v19;
      }

      v2[2] = v11 + 1;
      v12 = &v2[2 * v11];
      v12[4] = v8;
      v12[5] = v9;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  v18[0] = v2;
  sub_10026D814(&unk_1006A3C60, &unk_10057D910);
  sub_100296FEC();
  v13 = BidirectionalCollection<>.joined(separator:)();

  return v13;
}

uint64_t sub_100382724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 24) = a1;
  *(a3 + 32) = a2;
  v7 = sub_1002A1D5C(a3);
  (*(*(a1 - 8) + 16))(v7, v3, a1);
  v8 = *(a2 + 16);
  v9 = sub_10000F2EC();
  result = v10(v9);
  *(a3 + 40) = result & 1;
  return result;
}

BOOL sub_1003827E8(void *a1)
{
  v1 = sub_1002F532C(a1);
  v3 = sub_100384754(v1, v2);

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t sub_100382854(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v2) = sub_1003833DC(v3);

  if (v2)
  {
    return 1;
  }

  v5 = sub_1002C89F0(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = sub_1003833DC(v5);

  return v7 & 1;
}

BOOL sub_100382928(void *a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v4, v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v46 - v14;
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = sub_100007FEC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17, v22);
  sub_100007FDC();
  v25 = v24 - v23;
  sub_1002C89F0(a1);
  if (!v26)
  {
    return 0;
  }

  [a1 processIdentifier];
  v27 = MRNowPlayingClientCreate();
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  MRMediaRemoteGetLocalOrigin();
  v29 = MRNowPlayingPlayerPathCreate();
  if (!v29)
  {
LABEL_7:
    j__CFRelease(v28);
    return 0;
  }

  v30 = v29;
  v31 = swift_allocObject();
  v47 = v6;
  v32 = v31;
  *(v31 + 16) = 0;
  v46[1] = v31 + 16;
  v33 = dispatch_semaphore_create(0);
  v46[2] = v1;
  v49 = v30;
  v34 = v33;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v25, enum case for DispatchQoS.QoSClass.userInitiated(_:), v16);
  v35 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v25, v16);
  v36 = swift_allocObject();
  *(v36 + 16) = v32;
  *(v36 + 24) = v34;
  aBlock[4] = sub_100385324;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100382D30;
  aBlock[3] = &unk_10062ADD8;
  v37 = _Block_copy(aBlock);
  v48 = v32;

  v38 = v34;
  v39 = v49;
  v40 = v38;

  MRMediaRemoteGetPlaybackStateForPlayer();
  _Block_release(v37);

  static DispatchTime.now()();
  + infix(_:_:)();
  v41 = *(v47 + 8);
  v41(v12, v3);
  OS_dispatch_semaphore.wait(timeout:)();
  v41(v15, v3);
  v42 = static DispatchTimeoutResult.== infix(_:_:)();

  if ((v42 & 1) == 0)
  {

    j__CFRelease(v39);
    goto LABEL_7;
  }

  swift_beginAccess();
  v43 = *(v48 + 16);

  v44 = v43 == 1;
  j__CFRelease(v39);
  j__CFRelease(v28);
  return v44;
}

Swift::Int sub_100382CDC(int a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_100382D30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100382D94()
{
  v1 = v0;
  v2 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v87 = &v79 - v5;
  v86 = type metadata accessor for DispatchTime();
  v6 = *(v86 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v86, v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  v88 = *(v11 - 8);
  v89 = v11;
  v12 = *(v88 + 64);
  v14 = __chkstk_darwin(v11, v13);
  v81 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14, v16);
  v80 = &v79 - v18;
  v20 = __chkstk_darwin(v17, v19);
  v85 = &v79 - v21;
  __chkstk_darwin(v20, v22);
  v24 = &v79 - v23;
  swift_beginAccess();
  v25 = *(v1 + 16);
  v26 = v25 + 64;
  v27 = 1 << *(v25 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v25 + 64);
  v84 = v1 + qword_1006A9F68;
  v30 = (v27 + 63) >> 6;
  v83 = (v6 + 8);
  v31 = v25;

  v33 = 0;
  v82 = _swiftEmptyArrayStorage;
  while (1)
  {
    v34 = v33;
    if (!v29)
    {
      break;
    }

LABEL_8:
    v35 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v36 = *(v88 + 72);
    v37 = v85;
    sub_1003852B0(*(v31 + 56) + v36 * (v35 | (v33 << 6)), v85);
    v38 = sub_1003281EC(v37, v24);
    v39 = *(v84 + 8);
    (*v84)(v38);
    LOBYTE(v39) = static DispatchTime.< infix(_:_:)();
    (*v83)(v10, v86);
    if (v39)
    {
      sub_1003281EC(v24, v80);
      v40 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v40;
      v79 = v10;
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v40;
      }

      else
      {
        v43 = v40[2];
        sub_10039A380();
        v42 = v91;
      }

      v44 = v42[2];
      v45 = (v44 + 1);
      if (v44 >= v42[3] >> 1)
      {
        v82 = (v44 + 1);
        sub_10039A380();
        v45 = v82;
        v42 = v91;
      }

      v42[2] = v45;
      v46 = *(v88 + 80);
      v82 = v42;
      result = sub_1003281EC(v80, v42 + ((v46 + 32) & ~v46) + v44 * v36);
      v10 = v79;
    }

    else
    {
      result = sub_100009A04(v24, &qword_1006A3BF0, &qword_10057DE60);
    }
  }

  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v33 >= v30)
    {

      v47 = v82;
      v48 = v82[2];
      if (v48)
      {
        v91 = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v48, 0);
        v49 = v91;
        v50 = v89;
        v51 = v47 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
        v52 = *(v88 + 72);
        v53 = v81;
        do
        {
          sub_1003852B0(v51, v53);
          v54 = (v53 + *(v50 + 44));
          v55 = *v54;
          v56 = v54[1];

          sub_100009A04(v53, &qword_1006A3BF0, &qword_10057DE60);
          v91 = v49;
          v58 = v49[2];
          v57 = v49[3];
          if (v58 >= v57 >> 1)
          {
            sub_10039A2E0(v57 > 1, v58 + 1, 1);
            v53 = v81;
            v49 = v91;
          }

          v49[2] = v58 + 1;
          v59 = &v49[2 * v58];
          v59[4] = v55;
          v59[5] = v56;
          v51 += v52;
          --v48;
          v50 = v89;
        }

        while (v48);
      }

      else
      {

        v49 = _swiftEmptyArrayStorage;
        v50 = v89;
      }

      v60 = 0;
      v61 = v49[2];
      v62 = v49 + 5;
      v63 = v87;
      while (v61 != v60)
      {
        if (v60 >= v49[2])
        {
          goto LABEL_32;
        }

        v65 = *(v62 - 1);
        v64 = *v62;
        swift_beginAccess();
        v66 = *(v1 + 16);

        v67 = sub_100005208();
        if (v68)
        {
          v69 = v67;
          v70 = *(v1 + 16);
          v71 = swift_isUniquelyReferenced_nonNull_native();
          v90 = *(v1 + 16);
          v72 = v90;
          *(v1 + 16) = 0x8000000000000000;
          v73 = *(v72 + 24);
          sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
          v74 = v71;
          v50 = v89;
          v75 = v73;
          v63 = v87;
          _NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v75);
          v76 = v90;
          v77 = *(*(v90 + 48) + 16 * v69 + 8);

          sub_1003281EC(*(v76 + 56) + *(v88 + 72) * v69, v63);
          _NativeDictionary._delete(at:)();
          v78 = 0;
          *(v1 + 16) = v76;
        }

        else
        {
          v78 = 1;
        }

        sub_10000AF74(v63, v78, 1, v50);
        sub_100009A04(v63, &unk_1006A7520, &unk_100582C90);
        swift_endAccess();

        v62 += 2;
        ++v60;
      }
    }

    v29 = *(v26 + 8 * v33);
    ++v34;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1003833DC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchTime();
  v28[0] = *(v4 - 8);
  v5 = *(v28[0] + 64);
  __chkstk_darwin(v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A7520, &unk_100582C90);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = v28 - v16;
  v18 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = v28 - v21;
  swift_beginAccess();
  v23 = *(v2 + 16);

  v28[1] = a1;
  sub_1002CBAA8(v23, v17);

  if (sub_100015468(v17, 1, v18) == 1)
  {
    sub_100009A04(v17, &unk_1006A7520, &unk_100582C90);
LABEL_5:
    sub_10000AF74(v14, 1, 1, v18);
    swift_beginAccess();

    sub_100381C84();
    swift_endAccess();
    v26 = 0;
    goto LABEL_6;
  }

  v24 = sub_1003281EC(v17, v22);
  v25 = *(v2 + qword_1006A9F68 + 8);
  (*(v2 + qword_1006A9F68))(v24);
  sub_100033024(&unk_1006A7530, &type metadata accessor for DispatchTime);
  LOBYTE(v25) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v28[0] + 8))(v8, v4);
  sub_100009A04(v22, &qword_1006A3BF0, &qword_10057DE60);
  if ((v25 & 1) == 0)
  {
    goto LABEL_5;
  }

  v26 = 1;
LABEL_6:
  sub_100382D94();
  return v26;
}

uint64_t sub_1003836F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100005208();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    v10 = *(*v2 + 24);
    sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(*(v18 + 48) + 16 * v7 + 8);

    v12 = *(v18 + 56);
    v13 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_1003281EC(v12 + *(*(v13 - 8) + 72) * v7, a1);
    _NativeDictionary._delete(at:)();
    *v2 = v18;
    v14 = a1;
    v15 = 0;
    v16 = v13;
  }

  else
  {
    v16 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    v14 = a1;
    v15 = 1;
  }

  return sub_10000AF74(v14, v15, 1, v16);
}

void sub_100383E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D698();
  v13 = v12;
  v15 = v14;
  sub_1000113F0();
  sub_100021E24();
  if (v16)
  {
    sub_10000FAAC();
    sub_100018288();
    sub_10000EAB8();
    sub_100006BE4();
    v17 = *(a10 + 48);
    v18 = type metadata accessor for UUID();
    sub_100008070(v18);
    (*(v19 + 8))(v17 + *(v19 + 72) * v11, v18);
    v20 = *(*(a10 + 56) + 8 * v11);
    sub_10026D814(v15, v13);
    sub_1000085E4();
    sub_100033024(v21, v22);
    sub_10000609C();
    sub_100009F18();
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100006048();
}

uint64_t sub_100383F24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_100021E24();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v10 = *(*v2 + 24);
    sub_10026D814(&qword_1006A6FB8, &unk_100582780);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10);
    v11 = *(v19 + 48);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(v19 + 56);
    v14 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_1003853D4(v13 + *(*(v14 - 8) + 72) * v7, a1, type metadata accessor for SimulatedConversationManager.SimulatedGroupSession);
    sub_100033024(&qword_1006A3BE0, &type metadata accessor for UUID);
    _NativeDictionary._delete(at:)();
    *v2 = v19;
    v15 = a1;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    v15 = a1;
    v16 = 1;
  }

  return sub_10000AF74(v15, v16, 1, v17);
}

void sub_100384234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100010094();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1000113F0();
  v17 = sub_100005208();
  if (v18)
  {
    v19 = v17;
    v20 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100017278();
    v23 = *(v22 + 24);
    sub_10026D814(v16, v14);
    sub_10000EAB8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);
    v24 = *(*(a10 + 48) + 16 * v19 + 8);

    v25 = *(*(a10 + 56) + 8 * v19);
    v12(0);
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100008348();
}

uint64_t sub_10038447C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000D328();
  sub_10000C23C();
  v12 = sub_100005208();
  if (v13)
  {
    v14 = v12;
    v15 = *v11;
    swift_isUniquelyReferenced_nonNull_native();
    sub_100021F7C();
    sub_10026D814(&qword_1006A6F28, &qword_100582700);
    sub_10000EAB8();
    sub_1000076CC();
    v16 = *(*(a10 + 48) + 16 * v14 + 8);

    v17 = *(a10 + 56);
    v18 = type metadata accessor for UUID();
    sub_100008070(v18);
    (*(v19 + 32))(v10, v17 + *(v19 + 72) * v14, v18);
    sub_100007968();
    _NativeDictionary._delete(at:)();
    sub_10000F394();
  }

  else
  {
    type metadata accessor for UUID();
    sub_100008D20();
  }

  sub_10000D634();

  return sub_10000AF74(v20, v21, v22, v23);
}

uint64_t sub_100384754(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v3 = sub_1003849A4(v9, v5, v3);

      return v3;
    }
  }

  __chkstk_darwin(a1, a2);
  v6 = &v10 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_100396044(0, v5, v6);
  sub_1003848B8(v6, v5, v3);
  if (!v2)
  {
    return v7;
  }

  swift_willThrow();
  return v3;
}

void sub_1003848B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 4)
    {
      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_100384BF8(a1, a2, v4, a3);
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

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1003849A4(void *result, uint64_t a2, uint64_t a3)
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

    sub_1003848B8(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_100384A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a4;
    sub_10002F678(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006AC080, &qword_100582CF8);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      v37 = v7;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        v19 = *(v7 + 56);
        v20 = (*(v7 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(v19 + 8 * v18);
        v24 = *(v10 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        Hasher._finalize()();
        v25 = *(v10 + 32);
        sub_10000EAC4();
        if (((v28 << v27) & ~*(v13 + 8 * v26)) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v30)
              {
                goto LABEL_31;
              }
            }

            if (v29 == v31)
            {
              v29 = 0;
            }

            if (*(v13 + 8 * v29) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v32) |= v33;
        v35 = (*(v10 + 48) + 16 * v34);
        *v35 = v21;
        v35[1] = v22;
        *(*(v10 + 56) + 8 * v34) = v23;
        sub_100006E60();
        if (v36)
        {
          goto LABEL_32;
        }

        v7 = v37;
        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_100384BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10002F678(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006A7540, &unk_100582CA8);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        v19 = *(*(a4 + 48) + 4 * v18);
        v20 = *(*(a4 + 56) + 8 * v18);
        v21 = *(v10 + 40);
        static Hasher._hash(seed:bytes:count:)();
        v22 = *(v10 + 32);
        sub_10000EAC4();
        if (((v25 << v24) & ~*(v13 + 8 * v23)) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v27)
              {
                goto LABEL_31;
              }
            }

            if (v26 == v28)
            {
              v26 = 0;
            }

            if (*(v13 + 8 * v26) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v29) |= v30;
        *(*(v10 + 48) + 4 * v31) = v19;
        *(*(v10 + 56) + 8 * v31) = v20;
        ++*(v10 + 16);
        if (__OFSUB__(v4--, 1))
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

void sub_100384D9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100027EB4();
  v8 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v9 = sub_100007FEC(v8);
  v54 = v10;
  v55 = v9;
  v12 = *(v11 + 64);
  v14 = __chkstk_darwin(v9, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v17);
  v53 = &v52 - v18;
  if (a3)
  {
    if (a4[2] == a3)
    {
    }

    else
    {
      sub_10026D814(&unk_1006A75E0, &unk_100582D30);
      v19 = sub_100035CFC();
      v20 = v19;
      if (v4 < 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *v5;
      }

      v22 = 0;
      v23 = v19 + 64;
      v52 = a4;
      v24 = v53;
      while (v21)
      {
        v25 = __clz(__rbit64(v21));
        v56 = (v21 - 1) & v21;
LABEL_16:
        v29 = v25 | (v22 << 6);
        v30 = a4[6];
        v57 = *(v54 + 72);
        sub_10037A8AC(v30 + v57 * v29, v24);
        v58 = *(a4[7] + 16 * v29);
        sub_10001600C();
        sub_1003853D4(v24, v16, v31);
        v32 = *(v20 + 40);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1000085E4();
        sub_100033024(&qword_1006A3BE0, v33);

        dispatch thunk of Hashable.hash(into:)();
        v34 = *&v16[*(v55 + 20)];
        NSObject.hash(into:)();
        Hasher._finalize()();
        v35 = *(v20 + 32);
        sub_10000EAC4();
        if (((v38 << v37) & ~*(v23 + 8 * v36)) == 0)
        {
          sub_10000E7C0();
          a4 = v52;
          while (1)
          {
            sub_100007A0C();
            if (v45)
            {
              if (v43)
              {
                goto LABEL_30;
              }
            }

            if (v42 == v44)
            {
              v42 = 0;
            }

            if (*(v23 + 8 * v42) != -1)
            {
              sub_10000D4CC();
              v41 = v47 + (v46 << 6);
              goto LABEL_26;
            }
          }
        }

        sub_100008BD4();
        v41 = v39 | v40;
        a4 = v52;
LABEL_26:
        *(v23 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        v48 = *(v20 + 48);
        sub_10001600C();
        sub_1003853D4(v16, v49, v50);
        *(*(v20 + 56) + 16 * v41) = v58;
        ++*(v20 + 16);
        if (__OFSUB__(a3--, 1))
        {
          goto LABEL_31;
        }

        v21 = v56;
        if (!a3)
        {
          return;
        }
      }

      v26 = v22;
      while (1)
      {
        v22 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v22 >= v4)
        {
          return;
        }

        ++v26;
        if (v5[v22])
        {
          sub_100007C8C();
          v56 = v28 & v27;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

void sub_1003850B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    sub_10002F678(a1, a2, a3, a4);
    if (v8)
    {
    }

    else
    {
      sub_100027EB4();
      sub_10026D814(&unk_1006A7590, &qword_100582CF0);
      v9 = sub_100035CFC();
      v10 = v9;
      if (v5 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *v6;
      }

      v12 = 0;
      v13 = v9 + 64;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v18 = v14 | (v12 << 6);
        sub_100006724(*(a4 + 48) + 40 * v18, v34);
        sub_100006A94(*(a4 + 56) + 32 * v18, v33);
        v30 = v34[0];
        v31 = v34[1];
        v32 = v35;
        sub_10003EBF0(v33, v29);
        v19 = AnyHashable._rawHashValue(seed:)(*(v10 + 40)) & ~(-1 << *(v10 + 32));
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          sub_10000E7C0();
          while (1)
          {
            sub_100007A0C();
            if (v8)
            {
              if (v21)
              {
                goto LABEL_31;
              }
            }

            if (v20 == v22)
            {
              v20 = 0;
            }

            if (*(v13 + 8 * v20) != -1)
            {
              sub_10000D4CC();
              goto LABEL_27;
            }
          }
        }

        sub_100008BD4();
LABEL_27:
        sub_100007DC0();
        *(v13 + v23) |= v24;
        v26 = *(v10 + 48) + 40 * v25;
        v27 = v31;
        *v26 = v30;
        *(v26 + 16) = v27;
        *(v26 + 32) = v32;
        sub_10003EBF0(v29, (*(v10 + 56) + 32 * v25));
        sub_100006E60();
        if (v28)
        {
          goto LABEL_32;
        }

        if (!v4)
        {
          return;
        }
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= v5)
        {
          return;
        }

        ++v15;
        if (v6[v12])
        {
          sub_100007C8C();
          v11 = v17 & v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }
  }
}

uint64_t sub_1003852B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10038532C()
{
  result = qword_1006A75F0;
  if (!qword_1006A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A75F0);
  }

  return result;
}

unint64_t sub_100385380()
{
  result = qword_1006A76A8;
  if (!qword_1006A76A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76A8);
  }

  return result;
}

uint64_t sub_1003853D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_100008070(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

__n128 sub_100385434(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100385448(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100385488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10038550C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010056F8C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1003855DC(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 1684632949;
  }
}

uint64_t sub_100385610(void *a1)
{
  v3 = v1;
  v5 = sub_10026D814(&qword_1006A77A0, &qword_100583000);
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  v13 = &v17[-v12];
  v14 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003862A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for UUID();
  sub_1003862F8(&qword_1006A77A8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for RecordResponseMessage() + 20));
    v17[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_1003857A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = type metadata accessor for UUID();
  v4 = sub_100007FEC(v29);
  v28 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v30 = sub_10026D814(&qword_1006A7788, &qword_100582FF8);
  v12 = sub_100007FEC(v30);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v16 = type metadata accessor for RecordResponseMessage();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v22 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003862A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009B7C(a1);
  }

  sub_1003862F8(&qword_1006A7798);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(v21, v11, v29);
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = sub_10000A8F8();
  v25(v24);
  *(v21 + *(v16 + 20)) = v23 & 1;
  sub_10033AA94(v21, a2);
  sub_100009B7C(a1);
  return sub_10033AAF8(v21);
}

uint64_t sub_100385A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10038550C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100385AB8@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of ConversationCallCoordinationManager.providerType();
  *a1 = result;
  return result;
}

uint64_t sub_100385AE0(uint64_t a1)
{
  v2 = sub_1003862A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100385B1C(uint64_t a1)
{
  v2 = sub_1003862A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100385B88()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1006BA440 = result;
  *algn_1006BA448 = v1;
  return result;
}

uint64_t sub_100385BB8()
{
  v0 = type metadata accessor for SceneAssociationBehavior();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  sub_100007FDC();
  v3 = type metadata accessor for GroupActivityMetadata.ActivityType();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  sub_100007FDC();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.podcastTogether.getter();
  GroupActivityMetadata.type.setter();
  sub_10031E958(0xD000000000000011, 0x800000010056F8A0);
  GroupActivityMetadata.title.setter();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static SceneAssociationBehavior.none.getter();
  return GroupActivityMetadata.sceneAssociationBehavior.setter();
}

uint64_t sub_100385CD8(void *a1)
{
  v2 = sub_10026D814(&qword_1006A76D8, &qword_100582ED8);
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100009B14(a1, a1[3]);
  sub_1003860A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_100385E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100385CAC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100385E54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F4A8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100385E80(uint64_t a1)
{
  v2 = sub_1003860A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100385EBC(uint64_t a1)
{
  v2 = sub_1003860A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100385EF8()
{
  if (qword_1006A0AC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1006BA440;

  return v0;
}

uint64_t sub_100385F60()
{
  sub_100385BB8();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100385FFC()
{
  result = qword_1006A76C8;
  if (!qword_1006A76C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76C8);
  }

  return result;
}

unint64_t sub_100386054()
{
  result = qword_1006A76D0;
  if (!qword_1006A76D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76D0);
  }

  return result;
}

unint64_t sub_1003860A8()
{
  result = qword_1006A76E0;
  if (!qword_1006A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A76E0);
  }

  return result;
}

uint64_t type metadata accessor for RecordResponseMessage()
{
  result = qword_1006A7740;
  if (!qword_1006A7740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100386170()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1003861F8()
{
  result = qword_1006A7778;
  if (!qword_1006A7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7778);
  }

  return result;
}

unint64_t sub_100386250()
{
  result = qword_1006A7780;
  if (!qword_1006A7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7780);
  }

  return result;
}

unint64_t sub_1003862A4()
{
  result = qword_1006A7790;
  if (!qword_1006A7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7790);
  }

  return result;
}

uint64_t sub_1003862F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RecordResponseMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10038641C()
{
  result = qword_1006A77B0;
  if (!qword_1006A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77B0);
  }

  return result;
}

unint64_t sub_100386474()
{
  result = qword_1006A77B8;
  if (!qword_1006A77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77B8);
  }

  return result;
}

unint64_t sub_1003864CC()
{
  result = qword_1006A77C0;
  if (!qword_1006A77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A77C0);
  }

  return result;
}

uint64_t AsyncSerialQueue.init(priority:bufferingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v40 = a3;
  v4 = sub_10026D814(&qword_1006A3FB8, &qword_100583110);
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  v12 = &v39 - v11;
  v41 = sub_10026D814(&qword_1006A77C8, &qword_100583118);
  v13 = sub_100007FEC(v41);
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v13, v18);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v39 - v21;
  v23 = sub_10026D814(&qword_1006A77D0, &qword_100583120);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23 - 8, v25);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v29);
  v31 = &v39 - v30;
  v32 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  sub_10000AF74(v31, 1, 1, v32);
  v42 = v7;
  v43 = a2;
  (*(v7 + 16))(v12, a2, v4);
  v45 = v31;
  sub_10026D814(&unk_1006A2820, &qword_10057ED60);
  AsyncStream.init(_:bufferingPolicy:_:)();
  sub_100335188(v31, v28, &qword_1006A77D0, &qword_100583120);
  result = sub_100015468(v28, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v32 - 8) + 32))(v40, v28, v32);
    v34 = v39;
    v35 = v41;
    (*(v15 + 16))(v39, v22, v41);
    v36 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    (*(v15 + 32))(v37 + v36, v34, v35);
    v38 = v44;
    sub_1003873C8(0, 0, v44, &unk_100583130, v37);

    (*(v42 + 8))(v43, v4);
    sub_1000099A4(v38, &qword_1006A5310, &qword_10057D580);
    (*(v15 + 8))(v22, v35);
    return sub_1000099A4(v31, &qword_1006A77D0, &qword_100583120);
  }

  return result;
}

uint64_t AsyncSerialQueue.performAndWaitFor<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1000080A0();
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1000080A0();
}

uint64_t sub_100386904()
{
  sub_100006810();
  v1 = swift_task_alloc();
  sub_100035B84(v1);
  v2 = sub_100015DF0(&unk_100583148);
  v3 = sub_100016024(v2);
  *v3 = v4;
  v3[1] = sub_1003869B8;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  sub_1000113FC();

  return v8();
}

uint64_t sub_1003869B8()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  sub_100008060();
  *v5 = v4;

  sub_100009EF4();

  return v6();
}

uint64_t sub_100386AD0()
{
  sub_100006810();
  v1 = swift_task_alloc();
  sub_100035B84(v1);
  v2 = sub_100015DF0(&unk_100583158);
  v3 = sub_100016024(v2);
  *v3 = v4;
  v3[1] = sub_100386B84;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  sub_1000113FC();

  return v8();
}

uint64_t sub_100386B84()
{
  sub_100006810();
  sub_100005F18();
  v3 = v2;
  v4 = *(v2 + 64);
  v5 = *v1;
  sub_100008060();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_100007BBC();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 56);

    sub_100009EF4();

    return v11();
  }
}

uint64_t sub_100386CA8()
{
  sub_100006810();
  v1 = *(v0 + 56);

  sub_100009EF4();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_100386D04(uint64_t a1, uint64_t a2)
{
  sub_1000099A4(a2, &qword_1006A77D0, &qword_100583120);
  v4 = sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_10000AF74(a2, 0, 1, v4);
}

uint64_t sub_100386DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_10026D814(&qword_1006A7868, &qword_1005831D8);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_100386E88, 0, 0);
}

uint64_t sub_100386E88()
{
  sub_100006810();
  v1 = v0[7];
  v2 = v0[4];
  sub_10026D814(&qword_1006A77C8, &qword_100583118);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v5 = sub_100016024(v4);
  *v5 = v6;
  sub_100017284(v5);
  v7 = v0[7];
  v8 = v0[5];
  sub_1000113FC();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_100386F28()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100387010()
{
  sub_100006810();
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_100387158;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    sub_100009EF4();

    return v5();
  }
}

uint64_t sub_100387158()
{
  v1 = *v0;
  v2 = *v0;
  sub_100008060();
  *v3 = v2;
  v4 = v1[11];
  v5 = v1[10];
  v6 = v1[9];
  v7 = *v0;
  *v3 = *v0;

  sub_1000051F8(v6);
  v8 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v9 = swift_task_alloc();
  v2[8] = v9;
  *v9 = v7;
  sub_100017284();
  v10 = v1[7];
  v11 = v1[5];
  sub_1000113FC();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1003872D4(uint64_t a1)
{
  v3 = *(sub_10026D814(&qword_1006A77C8, &qword_100583118) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = sub_10000A58C(v7);
  *v8 = v9;
  v8[1] = sub_100035FE0;

  return sub_100386DBC(a1, v5, v6, v1 + v4);
}

uint64_t sub_1003873C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v27 - v12;
  sub_100335188(a3, v27 - v12, &qword_1006A5310, &qword_10057D580);
  v14 = type metadata accessor for TaskPriority();
  v15 = sub_100015468(v13, 1, v14);

  if (v15 == 1)
  {
    sub_1000099A4(v13, &qword_1006A5310, &qword_10057D580);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
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
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t AsyncSerialQueue.perform(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5, v10);
  v12 = v15 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[0] = &unk_10057D490;
  v15[1] = v13;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  AsyncStream.Continuation.yield(_:)();
  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_10038778C()
{
  sub_100006810();
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_100035FE4;

  return v5();
}

uint64_t sub_1003878D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[4] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1003879F8;

  return v11(v7);
}

uint64_t sub_1003879F8()
{
  sub_100006810();
  sub_100005F18();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100008060();
  *v4 = v3;

  sub_100007BBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100387AE0()
{
  sub_100006810();
  sub_100387B48(v0[4], v0[2], v0[3]);

  sub_100009EF4();

  return v1();
}

uint64_t sub_100387B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_100387BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100387C54, v6, v8);
}

uint64_t sub_100387C54()
{
  sub_10000C698();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_100387CF8;
  v4 = swift_continuation_init();
  v2(v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100387CF8()
{
  sub_100006810();
  v5 = *v0;
  v1 = *v0;
  sub_100008060();
  *v2 = v1;
  sub_100009EF4();

  return v3();
}

uint64_t sub_100387DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25[0] = a8;
  v25[1] = a2;
  v13 = sub_10026D814(&qword_1006A28B0, &qword_100583160);
  v14 = sub_100007FEC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14, v19);
  v21 = v25 - v20;
  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a1;
  v22[4] = a3;
  v22[5] = a4;
  v23 = swift_allocObject();
  *(v23 + 16) = v25[0];
  *(v23 + 24) = v22;
  v25[2] = a9;
  v25[3] = v23;

  sub_10026D814(&qword_1006A28B8, &qword_10057D498);
  AsyncStream.Continuation.yield(_:)();
  return (*(v16 + 8))(v21, v13);
}

uint64_t sub_100387F78(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v6 = *(*(a4 - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[5] = v7;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_1003880A0;

  return v11(v7);
}

uint64_t sub_1003880A0()
{
  sub_100006810();
  sub_100005F18();
  v3 = *(v2 + 48);
  v4 = *v1;
  sub_100008060();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100007BBC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1003881A0()
{
  sub_10000C698();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_1003882D8(v2, v3, v1);
  v4 = v0[5];

  sub_100009EF4();

  return v5();
}

uint64_t sub_100388238()
{
  sub_10000C698();
  v1 = v0[3];
  v2 = v0[4];
  v0[2] = v0[7];
  v3 = sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
  sub_100388350((v0 + 2), v1, v2, v3);
  v4 = v0[5];

  sub_100009EF4();

  return v5();
}

uint64_t sub_1003882D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_100388350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocError();
  (*(*(a4 - 8) + 32))(v8, a1, a4);

  return _swift_continuation_throwingResumeWithError(a2, v7);
}

uint64_t sub_1003883E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return _swift_task_switch(sub_100388478, v6, v8);
}

uint64_t sub_100388478()
{
  sub_10000C698();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_10038851C;
  v4 = swift_continuation_init();
  v2(v4);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10038851C()
{
  sub_10000C698();
  sub_100005F18();
  v2 = *v0;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 48);
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t type metadata accessor for AsyncSerialQueue()
{
  result = qword_1006A7830;
  if (!qword_1006A7830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100388690()
{
  sub_10028BCA0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1003886FC()
{
  sub_10000C698();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_10000A58C(v4);
  *v5 = v6;
  v5[1] = sub_1002EE020;

  return v8(v1);
}

uint64_t sub_1003887E8()
{
  sub_10000C698();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000FE3C(v6);

  return sub_100387F78(v7, v8, v9, v10);
}

uint64_t sub_10038887C()
{
  sub_10000C698();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000FE3C(v6);

  return sub_1003878D0(v7, v8, v9, v10);
}

uint64_t sub_100388910()
{
  sub_10000C698();
  sub_100008A3C();
  v0 = swift_task_alloc();
  v1 = sub_10000A58C(v0);
  *v1 = v2;
  v3 = sub_100008040(v1);

  return v4(v3);
}

uint64_t sub_100388A20()
{
  v1 = *(v0 + OBJC_IVAR___CSDMomentsNotification_requesterID);
  v2 = *(v0 + OBJC_IVAR___CSDMomentsNotification_requesterID + 8);

  return v1;
}

id sub_100388A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___CSDMomentsNotification_streamToken] = a1;
  v8 = &v3[OBJC_IVAR___CSDMomentsNotification_requesterID];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

BOOL sub_100388B88(_DWORD *a1, int a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

void sub_100388BB4()
{
  sub_100005EF4();
  v2 = v1;
  v40 = v3;
  v4 = type metadata accessor for CommunicationTrustScoreOptions();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v5, v10);
  v12 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v41 = v7;
  v14 = *(v7 + 16);
  v39 = v0;
  v36 = v14;
  v37 = v15;
  v14(v35 - v15, v0, v4);
  v35[1] = sub_10039C2D4(&qword_1006A7BB0);
  dispatch thunk of SetAlgebra.intersection(_:)();
  sub_10039C2D4(&unk_1006A7BB8);
  v38 = v2;
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = sub_10026D814(&qword_1006A7BC0, &qword_100583488);
  v18 = sub_100008070(v17);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = v35 - v23;
  v25 = *(v22 + 48);
  *(v35 - v23) = (v16 & 1) == 0;
  if (v16)
  {
    v26 = (*(v41 + 32))(&v24[v25], v12, v4);
  }

  else
  {
    (*(v41 + 8))(v12, v4);
    v28 = &v24[v25];
    v29 = v38;
    v30 = v36;
    v31 = (v36)(v28, v38, v4);
    __chkstk_darwin(v31, v32);
    v30(v35 - v37, v29, v4);
    v26 = dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  __chkstk_darwin(v26, v27);
  v33 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10039C310();
  v34 = *v33;
  (*(v41 + 32))(v40, &v33[*(v17 + 48)], v4);
  sub_100005EDC();
}

BOOL sub_100388E9C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_100388EDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = _swiftEmptyArrayStorage;
  v23 = result;
  v24 = a3;
  v22 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_100009AB0(v8, v28);
    v10 = v5(v28);
    if (v3)
    {
      sub_100395FFC(v28);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_10002F0C8(v28, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = v9[2];
        sub_10039A3C0();
        v9 = v29;
      }

      v13 = v9[2];
      if (v13 >= v9[3] >> 1)
      {
        sub_10039A3C0();
      }

      v14 = v26;
      v15 = v27;
      v16 = sub_10001BDB8(v25, v26);
      v17 = *(*(v14 - 8) + 64);
      __chkstk_darwin(v16, v16);
      v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_10039BE6C(v13, v19, &v29, v14, v15);
      result = sub_100395FFC(v25);
      v9 = v29;
      v5 = v23;
      v4 = v24;
      v7 = v22;
    }

    else
    {
      result = sub_100395FFC(v28);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

id sub_1003890FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = String._bridgeToObjectiveC()();

  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = Array._bridgeToObjectiveC()().super.isa;

  v9 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v6 actions:isa intentIdentifiers:v8 options:a5];

  return v9;
}

void sub_1003891D8(unint64_t a1)
{
  v1 = a1;
  v22 = _swiftEmptyArrayStorage;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    sub_10039C15C(&unk_1006A7AE8);
    Set.Iterator.init(_cocoa:)();
    v1 = v21[1];
    v2 = v21[2];
    v3 = v21[3];
    v4 = v21[4];
    v5 = v21[5];
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
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

    v5 = (v8 & *(a1 + 56));

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  while (1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr), swift_dynamicCast(), v13 = v21[0], v4 = v9, v12 = v5, !v21[0]))
      {
LABEL_29:
        sub_100022DDC();
        return;
      }

      goto LABEL_17;
    }

    v10 = v9;
    v11 = v5;
    v4 = v9;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v12 = (v11 - 1) & v11;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_29;
    }

LABEL_17:
    v14 = [v13 value];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = [objc_opt_self() normalizedHandleWithDestinationID:v14];

    if (v15)
    {
      v16 = v15;
      sub_10005104C(v16);
      if (!v17 || (, [v16 type] == 1))
      {

        goto LABEL_24;
      }

      v18 = v16;
      sub_1000245B4(v21, v18, &qword_1006A2640, TUHandle_ptr);

      v19 = v12;
      v20 = [objc_allocWithZone(TUConversationMember) initWithHandle:v18];

      v9 = v4;
      v5 = v19;
      if (v20)
      {
        v5 = v19;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_7;
      }
    }

    else
    {
      v16 = v13;
LABEL_24:

      v9 = v4;
      v5 = v12;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v11 = v2[v4];
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id sub_100389560(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  String._bridgeToObjectiveC()();
  sub_10039C4B0();
  v5 = [v4 initWithType:a1 value:a2];

  return v5;
}

id sub_1003895E8(uint64_t a1)
{
  v2 = [v1 callsWithPredicate:a1 limit:0 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F3D14();
  sub_100005F0C();

  return v2;
}

id sub_100389670(uint64_t a1, uint64_t a2)
{
  v3 = [v2 callsWithPredicate:a1 limit:a2 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002F3D14();
  sub_100005F0C();

  return v3;
}

uint64_t sub_100389764()
{
  v1 = [v0 uniqueId];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1003897BC(void *a1)
{
  v2 = [a1 providerForRecentCall:v1];

  return v2;
}

void sub_1003897F4()
{
  sub_100005EF4();
  v1 = sub_10039BD00(v0);
  if (!v1)
  {
    goto LABEL_42;
  }

  v2 = v1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = &_swiftEmptySetSingleton;
    v51 = &_swiftEmptySetSingleton;
    v2 = __CocoaSet.makeIterator()();
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {
        break;
      }

      v49 = v4;
      sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
      sub_10039C3B0();
      v5 = [v50 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039C44C();
      if (v6 && ([v50 type] == 3 || objc_msgSend(v50, "type") == 2))
      {
        if (v3[3] <= v3[2])
        {
          sub_100397DE8();
        }

        v3 = v51;
        v7 = NSObject._rawHashValue(seed:)(v51[5]);
        v8 = *(v51 + 32);
        sub_10000C484(v7, (v51 + 7));
        if (v9)
        {
          sub_100035E64();
          do
          {
            if (v12 + 1 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              goto LABEL_44;
            }

            sub_10003EA94(v11);
          }

          while (v9);
          sub_10003DC00();
        }

        else
        {
          sub_100018658();
        }

        sub_100008DC4(v10);
        *(v51[6] + 8 * v15) = v50;
        sub_10003FB9C();
      }

      else
      {
      }
    }

    goto LABEL_42;
  }

  v16 = *(v1 + 32);
  sub_10003D420();
  v48 = v19 >> 6;
  if (v20 > 0xD)
  {
    goto LABEL_45;
  }

  while (2)
  {
    v45[1] = v45;
    __chkstk_darwin(v17, v18);
    v21 = sub_10039C3FC();
    v46 = v22;
    sub_100396044(v21, v48, v22);
    v47 = 0;
    v23 = 0;
    v24 = *(v2 + 56);
    v25 = *(v2 + 32);
    sub_100007990();
    v28 = v27 & v26;
    v30 = (v29 + 63) >> 6;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_30:
      v35 = *(*(v2 + 48) + 8 * (v31 | (v23 << 6)));
      v36 = [v35 value];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        if ([v35 type] == 3)
        {

LABEL_38:
          sub_100006F34();
          sub_10003EB98(v42);
          if (__OFADD__(v47++, 1))
          {
            __break(1u);
LABEL_41:
            sub_1003EB64C(v46, v48, v47, v2);
            goto LABEL_42;
          }
        }

        else
        {
          v41 = [v35 type];

          if (v41 == 2)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
      }
    }

    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v23 >= v30)
      {
        goto LABEL_41;
      }

      ++v32;
      if (*(v2 + 56 + 8 * v23))
      {
        sub_100007C8C();
        v28 = v34 & v33;
        goto LABEL_30;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();

  sub_10039B9C8(v44, v48, v2, sub_100389C34, 0);
  swift_bridgeObjectRelease_n();
  sub_100005F40();
LABEL_42:
  sub_100005EDC();
}

BOOL sub_100389C34(id *a1)
{
  v1 = *a1;
  v2 = [*a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  if ([v1 type] == 3)
  {
    return 1;
  }

  return [v1 type] == 2;
}

void sub_100389CF0()
{
  sub_100005EF4();
  v1 = 0;
  v2 = sub_10039BD00(v0);
  if (!v2)
  {
    goto LABEL_41;
  }

  v3 = v2;
  if ((v2 & 0xC000000000000001) == 0)
  {
    v22 = *(v2 + 32);
    sub_10003D420();
    v12 = (v25 >> 6);
    if (v26 <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_44;
  }

  v1 = &_swiftEmptySetSingleton;
  v62 = &_swiftEmptySetSingleton;
  __CocoaSet.makeIterator()();
  v3 = &type metadata for Swift.AnyObject;
  while (1)
  {
    while (1)
    {
      v4 = __CocoaSet.Iterator.next()();
      if (!v4)
      {

        goto LABEL_41;
      }

      v60 = v4;
      sub_1000112D0();
      sub_100006AF0(v5, v6, v7);
      sub_10039C3B0();
      v8 = [v61 value];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10039C44C();
      if (v9)
      {
        v10 = [v61 value];
        if (!v10)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = String._bridgeToObjectiveC()();
        }

        v11 = [v10 destinationIdIsTemporary];

        if ((v11 & 1) == 0)
        {
          break;
        }
      }
    }

    if (v1[3] <= v1[2])
    {
      sub_100397DE8();
    }

    v1 = v62;
    v12 = v61;
    v13 = NSObject._rawHashValue(seed:)(v62[5]);
    v14 = *(v62 + 32);
    sub_10000C484(v13, (v62 + 7));
    if (v15)
    {
      break;
    }

    sub_100018658();
LABEL_19:
    sub_100008DC4(v16);
    *(v62[6] + 8 * v21) = v61;
    ++v1[2];
  }

  sub_100035E64();
  while (v18 + 1 != v20 || (v19 & 1) == 0)
  {
    sub_10003EA94(v17);
    if (!v15)
    {
      sub_10003DC00();
      goto LABEL_19;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_44:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_22:
    v54[1] = v54;
    __chkstk_darwin(v23, v24);
    v27 = sub_10039C3FC();
    v55 = v12;
    v56 = v28;
    sub_100396044(v27, v12, v28);
    v57 = 0;
    v29 = 0;
    v12 = v3 + 7;
    v30 = v3[7];
    v31 = *(v3 + 32);
    sub_100007990();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    v59 = v3;
    while (v34)
    {
      v37 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_30:
      v41 = v37 | (v29 << 6);
      v42 = v3[6];
      v58 = v41;
      v43 = *(v42 + 8 * v41);
      v44 = [v43 value];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v45 & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        v49 = [v43 value];
        if (!v49)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v49 = String._bridgeToObjectiveC()();
        }

        v50 = [v49 destinationIdIsTemporary];

        v3 = v59;
        if ((v50 & 1) == 0)
        {
          sub_100006F34();
          sub_10003EB98(v51);
          if (__OFADD__(v57++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {

        v3 = v59;
      }
    }

    v38 = v29;
    while (1)
    {
      v29 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v29 >= v36)
      {
        sub_1003EB64C(v56, v55, v57, v3);
        goto LABEL_41;
      }

      ++v38;
      if (v12[v29])
      {
        sub_100007C8C();
        v34 = v40 & v39;
        goto LABEL_30;
      }
    }
  }

  v53 = swift_slowAlloc();

  sub_10039B9C8(v53, v12, v3, sub_10038A174, 0);
  if (!v1)
  {
    sub_100005F0C();
    swift_bridgeObjectRelease_n();
    sub_100008AE8();
LABEL_41:
    sub_100005EDC();
    return;
  }

  swift_bridgeObjectRelease_n();
  sub_100008AE8();
  __break(1u);
}

uint64_t sub_10038A174(id *a1)
{
  v1 = *a1;
  v2 = [*a1 value];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = [v1 value];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v7 destinationIdIsTemporary];

  return v8 ^ 1;
}

id sub_10038A2EC()
{
  v1 = [v0 interaction];

  return v1;
}

id sub_10038A34C()
{
  if (sub_1003959AC())
  {
    return [v0 callerIdIsBlocked];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10038A3A4()
{
  v1 = [v0 notificationThreadIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10038A60C@<X0>(SEL *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  if (v9)
  {
    v10 = v9;
    a2();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = a3(0);

  return sub_10000AF74(a4, v11, 1, v12);
}

uint64_t sub_10038A6FC()
{
  v1 = *v0;
  v2 = sub_10038A734();
  return v2 | ((HIDWORD(v2) & 1) << 32);
}

unint64_t sub_10038A734()
{
  v1 = [v0 filteredOutReason];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 intValue];

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

unint64_t sub_10038A7F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100620AD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

BOOL sub_10038A844()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, 0);

  return AppBooleanValue == 0;
}

uint64_t sub_10038A8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType);
  v4 = type metadata accessor for BadgeCountCategory();
  sub_100008070(v4);
  v6 = &enum case for BadgeCountCategory.missedTelephonyCalls(_:);
  if (!v3)
  {
    v6 = &enum case for BadgeCountCategory.missedFaceTimeCalls(_:);
  }

  (*(v5 + 104))(a1, *v6, v4);

  return sub_10000AF74(a1, 0, 1, v4);
}

void sub_10038A9A0()
{
  sub_100005EF4();
  v0 = type metadata accessor for URL();
  v1 = sub_100007FEC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1, v6);
  sub_100007FDC();
  v9 = v8 - v7;
  URL._bridgeToObjectiveC()(v7);
  v11 = v10;
  v31 = 0;
  v12 = TUOpenURLWithError();

  if ((v12 & 1) == 0)
  {
    v13 = qword_1006A0B70;
    v14 = v31;
    if (v13 != -1)
    {
      sub_10000860C();
    }

    v15 = type metadata accessor for Logger();
    sub_10000AF9C(v15, qword_1006BA6D0);
    v16 = *(v3 + 16);
    v17 = sub_100008B14();
    v18(v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v30 = v14;
      v21 = swift_slowAlloc();
      v29 = v31;
      v22 = sub_10000777C();
      v23 = sub_100005E84();
      v31 = v23;
      *v21 = 136315394;
      sub_10000EFA8(&qword_1006A3BD0);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      (*(v3 + 8))(v9, v0);
      v27 = sub_10002741C(v24, v26, &v31);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v30;
      *v22 = v29;
      v28 = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to open URL %s#. Error %@", v21, 0x16u);
      sub_100009A04(v22, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100395FFC(v23);
      sub_100008AE8();
      sub_100005F40();
    }

    else
    {

      (*(v3 + 8))(v9, v0);
    }
  }

  sub_100005EDC();
}

void sub_10038AC70()
{
  sub_10003D4BC();
  v0 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v27[-v3];
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  sub_10039C200();
  if (sub_100015468(v4, 1, v5) == 1)
  {
    sub_100009A04(v4, &unk_1006A3DD0, &unk_10057C9D0);
  }

  else
  {
    v15 = *(v8 + 32);
    sub_10001AC50();
    v16();
    v17 = [objc_opt_self() sharedInstance];
    v18 = [v17 conversationManager];

    v19 = [v18 activatedConversationLinks];
    sub_1000112D0();
    sub_100006AF0(v20, v21, v22);
    sub_1000112D0();
    sub_10039C15C(v23);
    v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    __chkstk_darwin(v25, v26);
    *&v27[-16] = v14;
    sub_10038B338(sub_10039C250, &v27[-32], v24);

    (*(v8 + 8))(v14, v5);
  }

  sub_100035CE8();
}

uint64_t sub_10038AEE4(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v36 - v12;
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v36 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v36 - v25;
  v27 = [*a1 groupUUID];
  if (v27)
  {
    v28 = v27;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_10000AF74(v26, v29, 1, v4);
  (*(v5 + 16))(v23, a2, v4);
  sub_10000AF74(v23, 0, 1, v4);
  v30 = *(v9 + 48);
  sub_10039C200();
  sub_10039C200();
  if (sub_100015468(v13, 1, v4) != 1)
  {
    sub_10039C200();
    if (sub_100015468(&v13[v30], 1, v4) != 1)
    {
      v32 = &v13[v30];
      v33 = v37;
      (*(v5 + 32))(v37, v32, v4);
      sub_10000EFA8(&qword_1006A2620);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v5 + 8);
      v34(v33, v4);
      sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v26, &unk_1006A3DD0, &unk_10057C9D0);
      v34(v19, v4);
      sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
      return v31 & 1;
    }

    sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v26, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v5 + 8))(v19, v4);
    goto LABEL_9;
  }

  sub_100009A04(v23, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v26, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v13[v30], 1, v4) != 1)
  {
LABEL_9:
    sub_100009A04(v13, &unk_1006A2A30, &unk_10057D150);
    v31 = 0;
    return v31 & 1;
  }

  sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
  v31 = 1;
  return v31 & 1;
}

void sub_10038B338(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
    sub_10039C15C(&unk_1006A67B0);
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          sub_100006AF0(0, &unk_1006A2C00, TUConversationLink_ptr);
          swift_dynamicCast();
          v17 = v26;
          v15 = v8;
          v16 = v9;
          if (v26)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

LABEL_23:
    sub_100022DDC();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10038B5B8()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v49[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v49[-1] - v10;
  __chkstk_darwin(v9, v12);
  v14 = &v49[-1] - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = (&v49[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  *v20 = v21;
  (*(v16 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v15);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v15);
  if (v21)
  {
    if (qword_1006A0B70 == -1)
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
  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA6D0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v48 = v7;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v49[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_10002741C(0xD00000000000001ALL, 0x800000010056FE10, v49);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s", v27, 0xCu);
    sub_100395FFC(v28);
  }

  v29 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24];
  v30 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32];
  sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource], v29);
  v31 = sub_1003918EC();
  v32 = (*(v30 + 24))(v31, 1, v29, v30);

  sub_1002E9780(v32, v49);

  v33 = v50;
  if (v50)
  {
    v34 = v51;
    sub_100009B14(v49, v50);
    (*(v34 + 8))(v33, v34);
    sub_100395FFC(v49);
    v35 = type metadata accessor for Date();
    if (sub_100015468(v11, 1, v35) != 1)
    {
      (*(*(v35 - 8) + 32))(v14, v11, v35);
      goto LABEL_11;
    }
  }

  else
  {
    sub_100009A04(v49, &unk_1006A79B0, &qword_100583340);
    v35 = type metadata accessor for Date();
    sub_10000AF74(v11, 1, 1, v35);
  }

  Date.init()();
  type metadata accessor for Date();
  if (sub_100015468(v11, 1, v35) != 1)
  {
    sub_100009A04(v11, &qword_1006A3C70, &unk_10057EA80);
  }

LABEL_11:
  type metadata accessor for Date();
  sub_10000AF74(v14, 0, 1, v35);
  swift_beginAccess();
  sub_10039C1A8();
  swift_endAccess();
  v36 = v1;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v39 = 136315394;
    v42 = v48;
    sub_10039C200();
    v43 = sub_100291548(v42);
    v45 = v44;
    sub_100009A04(v42, &qword_1006A3C70, &unk_10057EA80);
    v46 = sub_10002741C(v43, v45, v49);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v36;
    v47 = v36;
    _os_log_impl(&_mh_execute_header, v37, v38, "Most recent call date is now %s for notification provider %@", v39, 0x16u);
    sub_100009A04(v40, &unk_1006A2630, &qword_10057CB40);

    sub_100395FFC(v41);
  }
}

void sub_10038BBC4()
{
  sub_100005EF4();
  sub_100007710();
  v1 = type metadata accessor for URL();
  v2 = sub_100007FEC(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v48 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    sub_100009AB0(v0, v52);
    sub_10026D814(&unk_1006AB410, &unk_100583350);
    sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
    if (swift_dynamicCast())
    {
      v51 = v4;
      v18 = v53;
      v19 = *&v17[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
      if (v19)
      {
        v20 = *&v17[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink + 8];
        v50 = v53;
        v22 = v0[3];
        v21 = v0[4];
        sub_100009B14(v0, v22);
        v49 = v1;
        v23 = *(v21 + 112);

        v24 = v21;
        v18 = v50;
        v23(v22, v24);
        v1 = v49;
        v25 = v19(v15);
        sub_1000051F8(v19);
        sub_100009A04(v15, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        v25 = 0;
      }

      v26 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
      v27 = *&v17[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager];
      sub_10038C07C(v27, v25);
      v29 = v28;

      if (v29)
      {
        v30 = *&v17[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL];
        v31 = *&v17[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL + 8];

        v32 = [v29 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v30(v10);

        (*(v51 + 8))(v10, v1);
        if (qword_1006A0B70 != -1)
        {
          sub_10000860C();
        }

        v33 = type metadata accessor for Logger();
        sub_1000075F0(v33, qword_1006BA6D0);
        v34 = v29;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = sub_100005274();
          v38 = sub_10000777C();
          *v37 = 138412290;
          *(v37 + 4) = v34;
          *v38 = v29;
          v39 = v34;
          _os_log_impl(&_mh_execute_header, v35, v36, "Performed join conversation request: %@", v37, 0xCu);
          sub_100009A04(v38, &unk_1006A2630, &qword_10057CB40);
          sub_100005F40();
          sub_100005F40();

LABEL_17:
          goto LABEL_18;
        }

LABEL_16:
        goto LABEL_17;
      }

      v40 = *&v17[v26];
      sub_10038C408();
      v42 = v41;

      if (!v42)
      {

        goto LABEL_16;
      }

      v43 = *&v17[v26];
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      v52[4] = sub_10039C1F8;
      v52[5] = v44;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 1107296256;
      v52[2] = sub_1004582CC;
      v52[3] = &unk_10062B280;
      v45 = _Block_copy(v52);
      v46 = v43;
      v47 = v42;

      [v46 launchAppForDialRequest:v47 completion:v45];

      _Block_release(v45);
    }

    else
    {
    }
  }

LABEL_18:
  sub_100005EDC();
}

void sub_10038C07C(void *a1, void *a2)
{
  v3 = v2;
  v5 = [a1 providerForRecentCall:v3];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (![v5 isFaceTimeProvider] || (v7 = sub_10039BD00(v3)) == 0)
  {

    return;
  }

  v8 = v7;
  if (sub_10001E550(v7) <= 1)
  {
LABEL_33:

    return;
  }

  sub_1003891D8(v8);
  v10 = v9;

  v11 = sub_1002F1D1C(v10);
  if (!a2)
  {
    goto LABEL_30;
  }

  v12 = a2;
  v35 = [v12 originatorHandle];
  if (!v35)
  {

LABEL_30:
    v33 = objc_allocWithZone(TUJoinConversationRequest);
    v15 = sub_100395C30(v11, &_swiftEmptySetSingleton, 23);
LABEL_31:
    if (v15)
    {
      [v15 setWantsStagingArea:1];
      [v15 setVideoEnabled:1];
    }

    goto LABEL_33;
  }

  if ([v12 isLocallyCreated])
  {

LABEL_9:
    v13 = objc_allocWithZone(TUJoinConversationRequest);
    sub_100395AD8();
    v15 = v14;

    goto LABEL_31;
  }

  v16 = &_swiftEmptySetSingleton;
  v34 = v11;
  if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
    sub_10039C15C(&qword_1006A3C50);
    Set.Iterator.init(_cocoa:)();
    v16 = v37;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v20 = v41;
  }

  else
  {
    v21 = *(&_swiftEmptySetSingleton + 32);
    sub_1000052DC();
    v17 = &_swiftEmptySetSingleton + 56;
    v22 = *(&_swiftEmptySetSingleton + 7);
    v18 = ~v23;
    sub_1000082B4();
    v20 = v24 & v25;

    v19 = 0;
  }

  v26 = (v18 + 64) >> 6;
  while (1)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_29;
      }

      sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
      swift_dynamicCast();
      v31 = v36;
      goto LABEL_26;
    }

    v27 = v19;
    if (!v20)
    {
      break;
    }

LABEL_23:
    sub_100007C8C();
    v20 = v29 & v28;
    v31 = *(*(v16 + 48) + ((v19 << 9) | (8 * v30)));
LABEL_26:
    if (!v31)
    {
LABEL_29:
      sub_10000C674();

      v11 = v34;
      goto LABEL_30;
    }

    v32 = [v31 isEquivalentToHandle:v35];

    if (v32)
    {

      sub_10000C674();
      goto LABEL_9;
    }
  }

  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= v26)
    {
      goto LABEL_29;
    }

    ++v27;
    if (*&v17[8 * v19])
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

void sub_10038C408()
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
  if (qword_1006A0B70 != -1)
  {
    sub_10000860C();
  }

  v14 = type metadata accessor for Logger();
  sub_1000075F0(v14, qword_1006BA6D0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100005274();
    v18 = sub_100005E84();
    v37 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10002741C(0xD000000000000012, 0x800000010056FD90, &v37);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_100395FFC(v18);
    sub_100005F40();
    sub_100005F40();
  }

  v19 = [v3 providerForRecentCall:v1];
  if (v19)
  {
    v20 = v19;
    sub_1003897F4();
    if (v21 && (v22 = sub_1002E8D2C(v21), , v22))
    {
      v23 = [objc_allocWithZone(TUDialRequest) initWithProvider:v20];
      if ([v22 type] == 2)
      {
        v36 = v7;
        LOBYTE(v37) = 0;
        v24 = [v22 value];
        if (!v24)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = String._bridgeToObjectiveC()();
        }

        sub_10039BD94(v1, &selRef_isoCountryCode);
        if (v25)
        {
          v35 = String._bridgeToObjectiveC()();
        }

        else
        {
          v35 = 0;
        }

        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v28;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v30 = TUNumberToDial();

        if (v30)
        {
          [v23 setDialAssisted:v37];
          sub_10039BD94(v1, &selRef_isoCountryCode);
          if (v31)
          {
            v32 = String._bridgeToObjectiveC()();
          }

          else
          {
            v32 = 0;
          }

          v33 = [objc_opt_self() normalizedPhoneNumberHandleForValue:v30 isoCountryCode:v32];

          [v23 setHandle:v33];
        }

        v7 = v36;
      }

      else
      {
        v26 = sub_1003951DC();
        [v23 setHandle:v26];
      }

      v34 = [v1 outgoingLocalParticipantUUID];
      if (v34)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v34 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v7 + 8))(v13, v4);
      }

      [v23 setLocalSenderIdentityAccountUUID:v34];

      [v23 setPerformDialAssist:0];
      [v23 setPerformLocalDialAssist:0];
      [v23 setTtyType:sub_100395A70()];
      [v23 setVideo:{objc_msgSend(v1, "mediaType") == 2}];
      [v23 setOriginatingUIType:23];
    }

    else
    {
    }
  }

  sub_100005EDC();
}

void sub_10038C93C(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA6D0);
    v4 = a2;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412546;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2112;
      v8 = v4;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v9;
      v7[1] = v9;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Performing dial request: %@ ended in error: %@", v6, 0x16u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();
LABEL_10:
    }
  }

  else
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000AF9C(v10, qword_1006BA6D0);
    v11 = a2;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = v11;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Performed dial request: %@", v13, 0xCu);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
      goto LABEL_10;
    }
  }
}

void sub_10038CBB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2 != 4)
    {
      if (qword_1006A0B70 != -1)
      {
        sub_10000860C();
      }

      v5 = type metadata accessor for Logger();
      sub_1000075F0(v5, qword_1006BA6D0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = sub_100005274();
        v9 = sub_100005E84();
        v13 = v9;
        *v8 = 136315138;
        v10 = String.init<A>(reflecting:)();
        v12 = sub_10002741C(v10, v11, &v13);

        *(v8 + 4) = v12;
        _os_log_impl(&_mh_execute_header, v6, v7, "InCallService changed to non-running state (%s); updating posted notifications", v8, 0xCu);
        sub_100395FFC(v9);
        sub_100005F40();
        sub_100008AE8();
      }

      sub_10038CD10();
    }
  }
}

void sub_10038CD10()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = (&v202 - v5);
  v207 = type metadata accessor for Date();
  v204 = *(v207 - 8);
  v7 = *(v204 + 64);
  __chkstk_darwin(v207, v8);
  v206 = &v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = (&v202 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue);
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if ((v16 & 1) == 0)
  {
    goto LABEL_105;
  }

  if (qword_1006A0B70 != -1)
  {
LABEL_106:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v213 = sub_10000AF9C(v18, qword_1006BA6D0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v217[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10002741C(0xD00000000000001BLL, 0x800000010056FBE0, v217);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
    sub_100395FFC(v22);
  }

  v23 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_inCallServiceProcessObserver);
  *(swift_allocObject() + 16) = v1;
  v24 = v1;
  sub_1002F4C78();

  swift_beginAccess();
  sub_10039C200();
  v25 = v207;
  if (sub_100015468(v6, 1, v207) != 1)
  {
    (*(v204 + 32))(v206, v6, v25);
    v211 = _swiftEmptyArrayStorage;
    v223 = _swiftEmptyArrayStorage;
    v32 = *(v24 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
    v1 = *(v24 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
    v202 = (v24 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource);
    sub_100009B14((v24 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v32);
    v33 = sub_100391B64();
    v6 = (*(v1 + 16))(v33, v32, v1);

    v34 = v6[2];
    v214 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers;
    swift_beginAccess();
    v35 = 0;
    v212 = v24;
    while (v35 != v34)
    {
      if (v35 >= v6[2])
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v36 = v35 + 1;
      sub_100009AB0(&v6[5 * v35 + 4], &v220);
      v1 = *(v24 + v214);
      v37 = v221;
      v38 = v222;
      sub_100009B14(&v220, v221);
      v39 = *(v38 + 16);

      v40 = v39(v37, v38);
      v42 = v41;
      if (*(v1 + 16))
      {
        v43 = v40;
        v44 = *(v1 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v45 = Hasher._finalize()();
        v46 = ~(-1 << *(v1 + 32));
        while (1)
        {
          v47 = v45 & v46;
          if (((*(v1 + 56 + (((v45 & v46) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v45 & v46)) & 1) == 0)
          {
            break;
          }

          v48 = (*(v1 + 48) + 16 * v47);
          if (*v48 != v43 || v48[1] != v42)
          {
            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v45 = v47 + 1;
            if ((v50 & 1) == 0)
            {
              continue;
            }
          }

          v1 = v221;
          v51 = v222;
          sub_100009B14(&v220, v221);
          v52 = (*(v51 + 24))(v1, v51);
          if (!v52)
          {
            goto LABEL_27;
          }

          sub_10002F0C8(&v220, v217);
          v53 = v211;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v215[0] = v53;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v55 = v53[2];
            sub_10039A3C0();
            v53 = v215[0];
          }

          v1 = v53[2];
          if (v1 >= v53[3] >> 1)
          {
            sub_10039A3C0();
          }

          v56 = v218;
          v57 = v219;
          v58 = sub_10001BDB8(v217, v218);
          v59 = *(*(v56 - 8) + 64);
          __chkstk_darwin(v58, v58);
          v61 = &v202 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v62 + 16))(v61);
          sub_10039BE6C(v1, v61, v215, v56, v57);
          sub_100395FFC(v217);
          v211 = v215[0];
          goto LABEL_28;
        }
      }

LABEL_27:
      sub_100395FFC(&v220);
LABEL_28:
      v35 = v36;
      v24 = v212;
    }

    if (v211[2])
    {
      v63 = v211;

      sub_1004142E8(v64);
      v65 = v63[2];
      v66 = _swiftEmptyArrayStorage;
      if (v65)
      {
        *&v220 = _swiftEmptyArrayStorage;
        sub_10039A2E0(0, v65, 0);
        v66 = v220;
        v67 = (v63 + 4);
        do
        {
          sub_100009AB0(v67, v217);
          v68 = v218;
          v69 = v219;
          sub_100009B14(v217, v218);
          v70 = (*(v69 + 16))(v68, v69);
          v72 = v71;
          sub_100395FFC(v217);
          *&v220 = v66;
          v74 = v66[2];
          v73 = v66[3];
          if (v74 >= v73 >> 1)
          {
            sub_10039A2E0(v73 > 1, v74 + 1, 1);
            v66 = v220;
          }

          v66[2] = v74 + 1;
          v75 = &v66[2 * v74];
          v75[4] = v70;
          v75[5] = v72;
          v67 += 40;
          --v65;
        }

        while (v65);
      }

      swift_beginAccess();
      sub_1004145A8(v66);
      swift_endAccess();
    }

    v76 = v202[3];
    v77 = v202[4];
    sub_100009B14(v202, v76);
    v78 = v206;
    v79 = sub_100391C04();
    v80 = (*(v77 + 16))(v79, v76, v77);

    __chkstk_darwin(v81, v82);
    *(&v202 - 2) = v78;
    *(&v202 - 1) = v24;
    v83 = sub_100388EDC(sub_10039C13C, (&v202 - 4), v80);
    v84 = v24;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    v87 = os_log_type_enabled(v85, v86);
    v203 = v83;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v217[0] = v90;
      *v88 = 138412546;
      *(v88 + 4) = v84;
      *v89 = v84;
      *(v88 + 12) = 2080;
      v91 = v84;
      sub_10026D814(&unk_1006AB410, &unk_100583350);
      v92 = Array.description.getter();
      v94 = sub_10002741C(v92, v93, v217);

      *(v88 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v85, v86, "Notification provider %@ found missed calls %s", v88, 0x16u);
      sub_100009A04(v89, &unk_1006A2630, &qword_10057CB40);
      v83 = v203;

      sub_100395FFC(v90);
    }

    v209 = v84;
    sub_10038B5B8();
    v96 = *(v83 + 16);
    if (v96)
    {
      v97 = v83 + 32;
      *&v95 = 136315138;
      v210 = v95;
      do
      {
        sub_100009AB0(v97, v217);
        sub_100009AB0(v217, &v220);
        sub_10026D814(&unk_1006AB410, &unk_100583350);
        sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
        if ((swift_dynamicCast() & 1) == 0 || (v98 = v215[0], v99 = sub_10038A734(), v98, (v99 & 0x1FFFFFFFFLL) != 4))
        {
          v100 = v218;
          v101 = v219;
          sub_100009B14(v217, v218);
          v102 = (*(v101 + 24))(v100, v101);
          if (v102)
          {

            sub_100009AB0(v217, &v220);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v103, v104))
            {
              v105 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              v215[0] = v106;
              *v105 = v210;
              v107 = v221;
              v108 = v222;
              sub_100009B14(&v220, v221);
              v109 = (*(v108 + 16))(v107, v108);
              v111 = v110;
              sub_100395FFC(&v220);
              v112 = sub_10002741C(v109, v111, v215);

              *(v105 + 4) = v112;
              _os_log_impl(&_mh_execute_header, v103, v104, "Adding call with identifier %s to the callsToPost array", v105, 0xCu);
              sub_100395FFC(v106);
            }

            else
            {

              sub_100395FFC(&v220);
            }

            sub_100009AB0(v217, &v220);
            v123 = v223;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v127 = v123[2];
              sub_100470430();
              v123 = v128;
            }

            v124 = v123[2];
            if (v124 >= v123[3] >> 1)
            {
              sub_100470430();
              v123 = v129;
            }

            v123[2] = v124 + 1;
            sub_10002F0C8(&v220, &v123[5 * v124 + 4]);
            v223 = v123;
          }

          else
          {
            sub_100009AB0(v217, &v220);
            v113 = Logger.logObject.getter();
            v114 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v215[0] = v116;
              *v115 = v210;
              v117 = v221;
              v118 = v222;
              sub_100009B14(&v220, v221);
              v119 = (*(v118 + 16))(v117, v118);
              v121 = v120;
              sub_100395FFC(&v220);
              v122 = sub_10002741C(v119, v121, v215);

              *(v115 + 4) = v122;
              _os_log_impl(&_mh_execute_header, v113, v114, "Adding call with identifier %s to the pendingCallIdentifiers set", v115, 0xCu);
              sub_100395FFC(v116);
            }

            else
            {

              sub_100395FFC(&v220);
            }

            v125 = v218;
            v126 = v219;
            sub_100009B14(v217, v218);
            (*(v126 + 16))(v125, v126);
            swift_beginAccess();
            sub_10001E84C();
            swift_endAccess();
          }
        }

        sub_100395FFC(v217);
        v97 += 40;
        --v96;
      }

      while (v96);
    }

    v130 = v223;
    v131 = v209;

    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();

    v134 = os_log_type_enabled(v132, v133);
    *&v210 = v131;
    v205 = v130;
    if (v134)
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v217[0] = v136;
      *v135 = 134218242;
      *(v135 + 4) = v205[2];

      *(v135 + 12) = 2080;
      v137 = v214;
      swift_beginAccess();
      v138 = *(v24 + v137);

      v139 = Set.description.getter();
      v141 = v140;

      v142 = sub_10002741C(v139, v141, v217);
      v131 = v210;

      *(v135 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v132, v133, "We have %ld calls to post (pendingCallIdentifiers: %s)", v135, 0x16u);
      sub_100395FFC(v136);

      v130 = v205;
    }

    else
    {
    }

    v144 = v130[2];
    if (v144)
    {
      v145 = &v131[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
      v146 = (v205 + 4);
      *&v143 = 138412546;
      v208 = v143;
      v209 = &v131[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add];
      do
      {
        sub_100009AB0(v146, v217);
        v147 = sub_10038EB8C(v217);
        sub_100009AB0(v217, &v220);
        v148 = v147;
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.default.getter();

        sub_100395FFC(v217);
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v216[0] = v153;
          *v151 = v208;
          *(v151 + 4) = v148;
          *v152 = v148;
          *(v151 + 12) = 2080;
          sub_100009AB0(&v220, v215);
          v154 = v148;
          sub_10026D814(&unk_1006AB410, &unk_100583350);
          v155 = String.init<A>(reflecting:)();
          v157 = v156;
          sub_100395FFC(&v220);
          v158 = sub_10002741C(v155, v157, v216);

          *(v151 + 14) = v158;
          _os_log_impl(&_mh_execute_header, v149, v150, "Adding notification request %@ for missed call %s", v151, 0x16u);
          sub_100009A04(v152, &unk_1006A2630, &qword_10057CB40);

          sub_100395FFC(v153);
          v145 = v209;

          v131 = v210;
        }

        else
        {

          sub_100395FFC(&v220);
        }

        v159 = *v145;
        if (*v145)
        {
          v160 = *(v145 + 1);

          v159(v148);
          sub_1000051F8(v159);
        }

        v146 += 40;
        --v144;
      }

      while (v144);
    }

    v161 = [objc_opt_self() sharedInstance];
    if (!v161)
    {
      __break(1u);
      return;
    }

    v162 = v161;

    v163 = [v162 deviceType];

    v164 = v212;
    if (v163 != 2)
    {

LABEL_73:
      v165 = v207;
LABEL_94:
      [objc_opt_self() _resetCache];
      (*(v204 + 8))(v206, v165);
      return;
    }

    v165 = v207;
    if (v131[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType] == 1)
    {
    }

    else
    {
      v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v166 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v6 = *&v131[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider];
    if ([v6 isEligibleForReceptionistOnboardingNotification])
    {
      v211 = v6;
      v167 = v202[3];
      v168 = v202[4];
      sub_100009B14(v202, v167);
      v169 = sub_100391D88();
      v1 = (*(v168 + 24))(v169, 1, v167, v168);

      v213 = *(v1 + 16);
      swift_beginAccess();
      v170 = 0;
      v171 = _swiftEmptyArrayStorage;
LABEL_77:
      while (v170 != v213)
      {
        if (v170 >= *(v1 + 16))
        {
          goto LABEL_104;
        }

        v6 = (v170 + 1);
        sub_100009AB0(v1 + 32 + 40 * v170, &v220);
        v172 = *(v164 + v214);
        v173 = v221;
        v174 = v222;
        sub_100009B14(&v220, v221);
        v175 = *(v174 + 16);

        v176 = v175(v173, v174);
        v178 = v177;
        if (*(v172 + 16))
        {
          v179 = v176;
          v180 = *(v172 + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          v181 = Hasher._finalize()();
          v182 = ~(-1 << *(v172 + 32));
          while (1)
          {
            v183 = v181 & v182;
            if (((*(v172 + 56 + (((v181 & v182) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v181 & v182)) & 1) == 0)
            {
              break;
            }

            v184 = (*(v172 + 48) + 16 * v183);
            if (*v184 != v179 || v184[1] != v178)
            {
              v186 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v181 = v183 + 1;
              if ((v186 & 1) == 0)
              {
                continue;
              }
            }

            sub_100395FFC(&v220);
            v170 = v6;
            v164 = v212;
            goto LABEL_77;
          }
        }

        sub_10002F0C8(&v220, v217);
        v187 = swift_isUniquelyReferenced_nonNull_native();
        v216[0] = v171;
        if ((v187 & 1) == 0)
        {
          v188 = v171[2];
          sub_10039A3C0();
          v171 = v216[0];
        }

        v164 = v212;
        v189 = v171[2];
        if (v189 >= v171[3] >> 1)
        {
          sub_10039A3C0();
        }

        v190 = v218;
        v191 = v219;
        v192 = sub_10001BDB8(v217, v218);
        v193 = *(*(v190 - 8) + 64);
        __chkstk_darwin(v192, v192);
        v195 = &v202 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v196 + 16))(v195);
        sub_10039BE6C(v189, v195, v216, v190, v191);
        sub_100395FFC(v217);
        v171 = v216[0];
        v170 = v6;
      }

      sub_1002E9780(v171, v217);

      if (v218)
      {
        sub_10026D814(&unk_1006AB410, &unk_100583350);
        sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
        if (swift_dynamicCast())
        {
          v197 = v220;
          if ([v220 communicationTrustScore] == 4)
          {
            v198 = v210;
            v199 = sub_100391760();
            v200 = *(v198 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add);
            if (v200)
            {
              v201 = *(v198 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add + 8);

              v200(v199);
              sub_1000051F8(v200);
            }

            [v211 setEligibleForReceptionistOnboardingNotification:0];
          }

          else
          {
          }
        }
      }

      else
      {
        sub_100009A04(v217, &unk_1006A79B0, &qword_100583340);
      }

      goto LABEL_73;
    }

LABEL_93:

    goto LABEL_94;
  }

  sub_100009A04(v6, &qword_1006A3C70, &unk_10057EA80);
  v26 = v24;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&_mh_execute_header, v27, v28, "Could not retrieve date of most recent call for notification provider %@", v29, 0xCu);
    sub_100009A04(v30, &unk_1006A2630, &qword_10057CB40);
  }

  sub_10038B5B8();
}

void sub_10038E648()
{
  v1 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callInteractionManager;
  *(v0 + v1) = [objc_allocWithZone(CHCallInteractionManager) init];
  v2 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager;
  *(v0 + v2) = [objc_allocWithZone(TUCallProviderManager) init];
  *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers) = &_swiftEmptySetSingleton;
  v3 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_configurationProvider;
  *(v0 + v3) = [objc_allocWithZone(TUConfigurationProvider) init];
  v4 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_mostRecentCallDate;
  v5 = type metadata accessor for Date();
  sub_10000AF74(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore);
  v7 = [objc_opt_self() storeWithOptions:3];
  v6[3] = sub_100006AF0(0, &qword_1006A7BA0, CNContactStore_ptr);
  v6[4] = &off_100622F18;
  *v6 = v7;
  v8 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier);
  *v8 = 0xD00000000000002CLL;
  v8[1] = 0x800000010056FE90;
  v9 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_add);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_replace);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_removeNotification);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue);
  *v15 = 0;
  v15[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10038E844(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager) providerForRecentCall:a1];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(CNContactStoreConfiguration) init];
  [v5 setAssumedIdentity:{objc_msgSend(v4, "assumedIdentity")}];
  swift_unknownObjectRelease();
  if ([*(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags) junkFilteringEnabled])
  {
    [v5 setIncludeAcceptedIntroductions:1];
  }

  v6 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v5];
  v7 = [objc_allocWithZone(CHContactProvider) initWithDataSource:v6];
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  *(v8 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057CA80;
  *(v9 + 32) = a1;
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v10 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_10026D814(&unk_1006A7AF0, &unk_1005819F0);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v19 = 0;
  v13 = [v7 contactsByHandleForCalls:isa keyDescriptors:v12 error:&v19];

  v14 = v19;
  if (!v13)
  {
    v17 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
  sub_10026D814(&unk_1006A79E0, &unk_10057DD90);
  sub_10039C15C(&unk_1006A7AE8);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v14;

  return v15;
}

id sub_10038EB8C(void *a1)
{
  v329 = type metadata accessor for URL();
  v326 = *(v329 - 8);
  v2 = *(v326 + 64);
  __chkstk_darwin(v329, v3);
  v5 = &v313 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = type metadata accessor for URLQueryItem();
  v318 = *(v319 - 8);
  v6 = *(v318 + 64);
  __chkstk_darwin(v319, v7);
  v317 = &v313 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12);
  v327 = &v313 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v313 - v17;
  v19 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v316 = &v313 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v314 = &v313 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v315 = &v313 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v325 = &v313 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v324 = &v313 - v35;
  __chkstk_darwin(v34, v36);
  v331 = &v313 - v37;
  v38 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8, v40);
  v42 = &v313 - v41;
  v43 = a1[3];
  v44 = a1[4];
  sub_100009B14(a1, v43);
  v45 = (*(v44 + 88))(v43, v44);
  v333 = a1;
  v322 = v5;
  v321 = v9;
  v320 = v10;
  v323 = v18;
  if (!v45)
  {
    v332 = 0;
    v54 = 0;
    v57 = 0;
    v50 = 0;
    v46 = 0;
    goto LABEL_16;
  }

  v46 = sub_1002E8D2C(v45);

  if (!v46)
  {
    goto LABEL_14;
  }

  sub_100009AB0(a1, v343);
  v47 = v46;
  sub_10026D814(&unk_1006AB410, &unk_100583350);
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v48 = v337;
  v49 = sub_10038E844(v337);

  if (!v49)
  {
    goto LABEL_13;
  }

  v50 = sub_1002CBB6C(v47, v49);

  if (!v50)
  {

    v332 = 0;
    v54 = 0;
    v57 = 0;
    goto LABEL_16;
  }

  v51 = sub_1002E8E2C(v50);

  if (!v51)
  {
LABEL_13:

LABEL_14:
    v332 = 0;
    v54 = 0;
LABEL_15:
    v57 = 0;
    v50 = 0;
    goto LABEL_16;
  }

  v52 = [v51 identifier];
  v332 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = [objc_opt_self() stringFromContact:v51 style:0];
  if (!v55)
  {

    goto LABEL_15;
  }

  v56 = v55;
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v58;

  v59 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v59 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v59)
  {
    goto LABEL_19;
  }

LABEL_16:
  v60 = a1[3];
  v61 = a1[4];
  sub_100009B14(a1, v60);
  if ((*(v61 + 32))(v60, v61))
  {

    v57 = sub_10031E958(0x44454B434F4C42, 0xE700000000000000);
    v50 = v62;
    goto LABEL_19;
  }

  if (v50)
  {
LABEL_19:
    v63 = HIBYTE(v50) & 0xF;
    if ((v50 & 0x2000000000000000) == 0)
    {
      v63 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      goto LABEL_25;
    }
  }

  v64 = a1[3];
  v65 = a1[4];
  sub_100009B14(a1, v64);
  v66 = (*(v65 + 48))(v64, v65);
  if (v67)
  {
    v68 = v66;
    v69 = v67;

    v57 = v68;
    v50 = v69;
  }

  else if (!v50)
  {
LABEL_28:
    if (v46)
    {
      v71 = v46;
      v72 = [v71 value];
      if (!v72)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v72 = String._bridgeToObjectiveC()();
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
      if ([v71 type] == 2)
      {
        v330 = v46;

        v75 = a1[3];
        v76 = a1[4];
        sub_100009B14(a1, v75);
        (*(v76 + 56))(v75, v76);
        if (!v77)
        {
          v79 = TUHomeCountryCode();
          if (v79)
          {
            v80 = v79;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }
        }

        v81 = String._bridgeToObjectiveC()();

        v82 = CFPhoneNumberCreate();

        if (v82)
        {

          String = CFPhoneNumberCreateString();
          a1 = v333;
          v46 = v330;
          if (String)
          {
            v84 = String;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v85;
          }

          else
          {

            v50 = 0;
          }
        }

        else
        {

          a1 = v333;
          v46 = v330;
        }
      }

      else
      {

        v78 = String.count.getter();

        if (v78 >= 1)
        {
          v50 = v74;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_25:
  v70 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v70 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {
    goto LABEL_28;
  }

LABEL_45:
  v86 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_100391250(a1);
  v87 = String._bridgeToObjectiveC()();

  [v86 setBody:v87];

  v88 = a1[3];
  v89 = a1[4];
  sub_100009B14(a1, v88);
  (*(v89 + 32))(v88, v89);
  v90 = String._bridgeToObjectiveC()();

  [v86 setCategoryIdentifier:v90];

  v91 = a1[3];
  v92 = a1[4];
  sub_100009B14(a1, v91);
  (*(v92 + 8))(v91, v92);
  v93 = type metadata accessor for Date();
  isa = 0;
  if (sub_100015468(v42, 1, v93) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(*(v93 - 8) + 8))(v42, v93);
  }

  [v86 setDate:isa];

  v95 = a1[3];
  v96 = a1[4];
  sub_100009B14(a1, v95);
  (*(v96 + 40))(v95, v96);
  v97 = String._bridgeToObjectiveC()();

  [v86 setThreadIdentifier:v97];

  if (!v50)
  {
    sub_10031E958(0x4E574F4E4B4E55, 0xE700000000000000);
  }

  v98 = v331;
  v99 = String._bridgeToObjectiveC()();

  [v86 setTitle:v99];

  v100 = sub_100391698();
  sub_1004554A0(v100, v101, v86);
  v102 = a1[3];
  v103 = a1[4];
  sub_100009B14(a1, v102);
  if ((*(v103 + 64))(v102, v103))
  {
    v104 = a1[3];
    v105 = a1[4];
    sub_100009B14(a1, v104);
    v106 = (*(v105 + 72))(v104, v105);
    if (v107)
    {
      v108 = v107;
    }

    else
    {
      v106 = 0x554A5F454259414DLL;
      v108 = 0xEA00000000004B4ELL;
    }

    sub_10031E958(v106, v108);

    v109 = String._bridgeToObjectiveC()();

    [v86 setSubtitle:v109];
  }

  *&v337 = 0xD000000000000016;
  *(&v337 + 1) = 0x800000010056FC90;
  AnyHashable.init<A>(_:)();
  v110 = a1[3];
  v111 = a1[4];
  sub_100009B14(a1, v110);
  v112 = (*(v111 + 16))(v110, v111);
  v339 = &type metadata for String;
  *&v337 = v112;
  *(&v337 + 1) = v113;
  v114 = [v86 userInfo];
  v115 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v339)
  {
    sub_10003EBF0(&v337, &v341);
    swift_isUniquelyReferenced_nonNull_native();
    *&v336[0] = v115;
    sub_100378C74(&v341, v343);
    sub_100006780(v343);
  }

  else
  {
    sub_100009A04(&v337, &unk_1006A2D10, &unk_10057D940);
    v116 = sub_1000067D4();
    if (v117)
    {
      v118 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v336[0] = v115;
      v120 = *(v115 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v120);
      v121 = *&v336[0];
      sub_100006780(*(*&v336[0] + 48) + 40 * v118);
      sub_10003EBF0((*(v121 + 56) + 32 * v118), &v341);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v341 = 0u;
      v342 = 0u;
    }

    sub_100006780(v343);
    sub_100009A04(&v341, &unk_1006A2D10, &unk_10057D940);
  }

  v122 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v86 setUserInfo:v122];

  *&v337 = 0xD000000000000013;
  *(&v337 + 1) = 0x800000010056FCB0;
  AnyHashable.init<A>(_:)();
  if (v54)
  {
    v123 = &type metadata for String;
    v124 = v332;
  }

  else
  {
    v124 = 0;
    v123 = 0;
    v338 = 0;
  }

  *&v337 = v124;
  *(&v337 + 1) = v54;
  v339 = v123;
  v125 = [v86 userInfo];
  v126 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v339)
  {
    sub_10003EBF0(&v337, &v341);
    swift_isUniquelyReferenced_nonNull_native();
    *&v336[0] = v126;
    sub_100378C74(&v341, v343);
    sub_100006780(v343);
  }

  else
  {
    sub_100009A04(&v337, &unk_1006A2D10, &unk_10057D940);
    v127 = sub_1000067D4();
    if (v128)
    {
      v129 = v127;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      *&v336[0] = v126;
      v131 = *(v126 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v130, v131);
      v132 = *&v336[0];
      sub_100006780(*(*&v336[0] + 48) + 40 * v129);
      sub_10003EBF0((*(v132 + 56) + 32 * v129), &v341);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v341 = 0u;
      v342 = 0u;
    }

    sub_100006780(v343);
    sub_100009A04(&v341, &unk_1006A2D10, &unk_10057D940);
  }

  v133 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v86 setUserInfo:v133];

  v134 = a1[3];
  v135 = a1[4];
  sub_100009B14(a1, v134);
  v136 = (*(v135 + 80))(v134, v135);
  v332 = v86;
  v330 = v46;
  if (!v136)
  {
    goto LABEL_72;
  }

  v137 = v136;
  if (sub_100388E9C(v136))
  {

LABEL_72:
    sub_10026D814(&qword_1006A4760, &unk_10057EA60);
    v138 = swift_allocObject();
    *(v138 + 1) = xmmword_10057D690;
    v138[4] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138[5] = v139;
    goto LABEL_107;
  }

  *&v337 = 0x49746361746E6F63;
  *(&v337 + 1) = 0xEB000000006F666ELL;
  AnyHashable.init<A>(_:)();
  v140 = sub_1002E8D2C(v137);
  v141 = v140;
  if (v140)
  {
    v142 = [v140 value];

    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;

    v145 = &type metadata for String;
  }

  else
  {
    v144 = 0;
    v145 = 0;
    v338 = 0;
  }

  *&v337 = v141;
  *(&v337 + 1) = v144;
  v339 = v145;
  v146 = [v86 userInfo];
  v147 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v339)
  {
    sub_10003EBF0(&v337, &v341);
    swift_isUniquelyReferenced_nonNull_native();
    *&v336[0] = v147;
    sub_100378C74(&v341, v343);
    sub_100006780(v343);
  }

  else
  {
    sub_100009A04(&v337, &unk_1006A2D10, &unk_10057D940);
    v148 = sub_1000067D4();
    if (v149)
    {
      v150 = v148;
      v151 = swift_isUniquelyReferenced_nonNull_native();
      *&v336[0] = v147;
      v152 = *(v147 + 24);
      sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v151, v152);
      v153 = *&v336[0];
      sub_100006780(*(*&v336[0] + 48) + 40 * v150);
      sub_10003EBF0((*(v153 + 56) + 32 * v150), &v341);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v341 = 0u;
      v342 = 0u;
    }

    sub_100006780(v343);
    sub_100009A04(&v341, &unk_1006A2D10, &unk_10057D940);
  }

  v154 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v86 setUserInfo:v154];

  if ((v137 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    sub_10039C15C(&unk_1006A7AE8);
    Set.Iterator.init(_cocoa:)();
    v137 = v343[0];
    v155 = v343[1];
    v156 = v343[2];
    v157 = v343[3];
    v158 = v343[4];
  }

  else
  {
    v157 = 0;
    v159 = -1 << *(v137 + 32);
    v155 = (v137 + 56);
    v156 = ~v159;
    v160 = -v159;
    if (v160 < 64)
    {
      v161 = ~(-1 << v160);
    }

    else
    {
      v161 = -1;
    }

    v158 = v161 & *(v137 + 56);
  }

  v313 = v156;
  v86 = ((v156 + 64) >> 6);
  v138 = _swiftEmptyArrayStorage;
  v328 = v137;
  if ((v137 & 0x8000000000000000) == 0)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v162 = __CocoaSet.Iterator.next()();
    if (!v162)
    {
      break;
    }

    *&v341 = v162;
    sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr);
    swift_dynamicCast();
    v163 = v337;
    v164 = v157;
    v165 = v158;
    if (!v337)
    {
      break;
    }

    while (1)
    {
      v168 = sub_1004226A8(v163);
      if (v169)
      {
        v170 = v168;
        v171 = v169;
      }

      else
      {
        v172 = [v163 value];
        v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v173;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v176 = v138[2];
        sub_100017840();
        v138 = v177;
      }

      v174 = v138[2];
      if (v174 >= v138[3] >> 1)
      {
        sub_100017840();
        v138 = v178;
      }

      v138[2] = v174 + 1;
      v175 = &v138[2 * v174];
      v175[4] = v170;
      v175[5] = v171;
      v157 = v164;
      v158 = v165;
      v137 = v328;
      if (v328 < 0)
      {
        break;
      }

LABEL_92:
      v166 = v157;
      v167 = v158;
      v164 = v157;
      if (!v158)
      {
        while (1)
        {
          v164 = v166 + 1;
          if (__OFADD__(v166, 1))
          {
            break;
          }

          if (v164 >= v86)
          {
            goto LABEL_106;
          }

          v167 = v155[v164];
          ++v166;
          if (v167)
          {
            goto LABEL_96;
          }
        }

        __break(1u);
        goto LABEL_176;
      }

LABEL_96:
      v165 = (v167 - 1) & v167;
      v163 = *(*(v137 + 48) + ((v164 << 9) | (8 * __clz(__rbit64(v167)))));
      if (!v163)
      {
        goto LABEL_106;
      }
    }
  }

LABEL_106:
  sub_100022DDC();
  v86 = v332;
  v98 = v331;
LABEL_107:
  sub_100420F48(v138, v86);
  v138 = v333;
  sub_100009AB0(v333, &v337);
  sub_10026D814(&unk_1006AB410, &unk_100583350);
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  if (swift_dynamicCast())
  {
    v179 = v341;
    [v86 setShouldAuthenticateDefaultAction:sub_10038A844()];
    [v86 setShouldBackgroundDefaultAction:1];
    v180 = sub_10038A734();
    v181 = (v180 & 0x1FFFFFFFFLL) == 2;
    if ((v180 & 0x1FFFFFFFFLL) == 2)
    {
      v182 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v183 = swift_allocObject();
      *(v183 + 16) = xmmword_10057D690;
      *&v337 = v179;
      v184 = v179;
      v185 = String.init<A>(reflecting:)();
      v187 = v186;
      *(v183 + 56) = &type metadata for String;
      *(v183 + 64) = sub_100009D88();
      *(v183 + 32) = v185;
      *(v183 + 40) = v187;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    sub_10000AF74(v98, 1, 1, v329);
    v188 = *&v334[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink];
    LODWORD(v331) = v181;
    if (v188)
    {
      v189 = *&v334[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_findConversationLink + 8];

      v190 = [v179 participantGroupUUID];
      if (v190)
      {
        v191 = v190;
        v192 = v323;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v193 = 0;
      }

      else
      {
        v193 = 1;
        v192 = v323;
      }

      v195 = type metadata accessor for UUID();
      sub_10000AF74(v192, v193, 1, v195);
      v194 = v188(v192);
      sub_1000051F8(v188);
      sub_100009A04(v192, &unk_1006A3DD0, &unk_10057C9D0);
    }

    else
    {
      v194 = 0;
    }

    v196 = *&v334[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager];
    sub_10038C07C(v196, v194);
    if (v197)
    {
      v198 = v197;
      v199 = [v197 URL];
      v200 = v324;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v201 = v329;
      sub_10000AF74(v200, 0, 1, v329);
      sub_10039C1A8();
      v202 = v325;
      sub_10039C200();
      if (sub_100015468(v202, 1, v201) == 1)
      {
        v204 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v203);
        v204 = v210;
        (*(v326 + 8))(v202, v201);
      }

      [v86 setDefaultActionURL:{v204, v313}];
    }

    else
    {
      sub_10038C408();
      if (v205)
      {
        v206 = v205;
        v207 = [v205 URL];

        if (v207)
        {
          v208 = v314;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v209 = 0;
        }

        else
        {
          v209 = 1;
          v208 = v314;
        }

        sub_10000AF74(v208, v209, 1, v329);
        sub_10039C310();
      }

      else
      {
        sub_10000AF74(v315, 1, 1, v329);
      }

      sub_10039C1A8();
      URLComponents.init()();
      v211 = v333[3];
      v212 = v333[4];
      sub_100009B14(v333, v211);
      v213 = (*(v212 + 128))(v196, v211, v212);
      if (v213)
      {
        v214 = v213;
        [v213 isFaceTimeProvider];
      }

      v215 = v317;
      URLComponents.scheme.setter();
      v216 = [v179 uniqueId];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URLQueryItem.init(name:value:)();

      sub_100470158(0, 1, 1, _swiftEmptyArrayStorage);
      v218 = v217;
      v220 = *(v217 + 16);
      v219 = *(v217 + 24);
      if (v220 >= v219 >> 1)
      {
        sub_100470158(v219 > 1, v220 + 1, 1, v217);
        v218 = v312;
      }

      *(v218 + 16) = v220 + 1;
      (*(v318 + 32))(v218 + ((*(v318 + 80) + 32) & ~*(v318 + 80)) + *(v318 + 72) * v220, v215, v319);
      URLComponents.queryItems.setter();
      v221 = v316;
      URLComponents.url.getter();
      v201 = v329;
      if (sub_100015468(v221, 1, v329) == 1)
      {
        v223 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v222);
        v223 = v224;
        (*(v326 + 8))(v221, v201);
      }

      [v86 setDefaultActionURL:{v223, v313}];

      (*(v320 + 8))(v327, v321);
    }

    *&v341 = 0xD000000000000010;
    *(&v341 + 1) = 0x800000010056FCF0;
    AnyHashable.init<A>(_:)();
    if (sub_100015468(v98, 1, v201))
    {
      v225 = 0;
      v226 = 0;
      v227 = 0;
      *&v342 = 0;
    }

    else
    {
      v228 = v326;
      v229 = v322;
      (*(v326 + 16))(v322, v98, v201);
      v226 = URL.absoluteString.getter();
      v227 = v230;
      (*(v228 + 8))(v229, v201);
      v225 = &type metadata for String;
    }

    *(&v342 + 1) = v225;
    *&v341 = v226;
    *(&v341 + 1) = v227;
    v231 = [v86 userInfo];
    v232 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(&v342 + 1))
    {
      sub_10003EBF0(&v341, v336);
      swift_isUniquelyReferenced_nonNull_native();
      v335 = v232;
      sub_100378C74(v336, &v337);
      sub_100006780(&v337);
    }

    else
    {
      sub_100009A04(&v341, &unk_1006A2D10, &unk_10057D940);
      v233 = sub_1000067D4();
      if (v234)
      {
        v235 = v233;
        v236 = swift_isUniquelyReferenced_nonNull_native();
        v335 = v232;
        v237 = *(v232 + 24);
        sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v236, v237);
        v238 = v335;
        sub_100006780(*(v335 + 48) + 40 * v235);
        sub_10003EBF0((*(v238 + 56) + 32 * v235), v336);
        _NativeDictionary._delete(at:)();
      }

      else
      {
        memset(v336, 0, sizeof(v336));
      }

      sub_100006780(&v337);
      sub_100009A04(v336, &unk_1006A2D10, &unk_10057D940);
    }

    v239 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v86 setUserInfo:v239];

    sub_100009A04(v98, &unk_1006A52C0, &unk_10057D930);
    v138 = v333;
  }

  else
  {
    LODWORD(v331) = 0;
  }

  v240 = v138[3];
  v241 = v138[4];
  sub_100009B14(v138, v240);
  v242 = (*(v241 + 24))(v240, v241);
  if (v242)
  {
    v155 = v242;
    if (qword_1006A0B70 != -1)
    {
LABEL_176:
      swift_once();
    }

    v243 = type metadata accessor for Logger();
    sub_10000AF9C(v243, qword_1006BA6D0);
    sub_100009AB0(v138, &v337);
    v244 = Logger.logObject.getter();
    v245 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v244, v245))
    {
      v246 = swift_slowAlloc();
      v247 = swift_slowAlloc();
      *&v341 = v247;
      *v246 = 136315138;
      v249 = v339;
      v248 = v340;
      sub_100009B14(&v337, v339);
      v250 = (*(v248 + 16))(v249, v248);
      v252 = v251;
      sub_100395FFC(&v337);
      v253 = sub_10002741C(v250, v252, &v341);

      *(v246 + 4) = v253;
      _os_log_impl(&_mh_execute_header, v244, v245, "Retrieved interaction; retrieving intent for call with identifier %s", v246, 0xCu);
      sub_100395FFC(v247);
      v138 = v333;
    }

    else
    {

      sub_100395FFC(&v337);
    }

    v265 = [v155 intent];
    objc_opt_self();
    v266 = swift_dynamicCastObjCClass();
    if (v266)
    {
      v267 = v266;
      sub_100009AB0(v138, &v337);
      v268 = Logger.logObject.getter();
      v269 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v268, v269))
      {
        v270 = swift_slowAlloc();
        v271 = swift_slowAlloc();
        v334 = v265;
        v272 = v271;
        *&v341 = v271;
        *v270 = 136315138;
        v274 = v339;
        v273 = v340;
        sub_100009B14(&v337, v339);
        v275 = (*(v273 + 16))(v274, v273);
        v277 = v276;
        sub_100395FFC(&v337);
        v278 = sub_10002741C(v275, v277, &v341);
        v86 = v332;

        *(v270 + 4) = v278;
        _os_log_impl(&_mh_execute_header, v268, v269, "Retrieved start call intent; updating notification content for call with identifier %s", v270, 0xCu);
        sub_100395FFC(v272);
        v265 = v334;

        v138 = v333;
      }

      else
      {

        sub_100395FFC(&v337);
      }

      *&v337 = 0;
      v285 = v86;
      v286 = [v285 contentByUpdatingWithProvider:v267 error:&v337];
      if (v286)
      {
        v287 = v286;
        v288 = v337;

        v285 = v287;
      }

      else
      {
        v289 = v337;
        v290 = _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100009AB0(v138, &v337);
        v291 = Logger.logObject.getter();
        v292 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v291, v292))
        {
          v293 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          v334 = v290;
          v295 = v265;
          v296 = v294;
          *&v341 = v294;
          *v293 = 136315138;
          v297 = v339;
          v298 = v340;
          sub_100009B14(&v337, v339);
          v299 = *(v298 + 16);
          v300 = v298;
          v138 = v333;
          v301 = v299(v297, v300);
          v303 = v302;
          sub_100395FFC(&v337);
          v304 = sub_10002741C(v301, v303, &v341);

          *(v293 + 4) = v304;
          _os_log_impl(&_mh_execute_header, v291, v292, "Could not update notification content; using original notification content for call with identifier %s", v293, 0xCu);
          sub_100395FFC(v296);
        }

        else
        {

          sub_100395FFC(&v337);
        }
      }

      goto LABEL_170;
    }

    v255 = v155;
    v279 = Logger.logObject.getter();
    v280 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v279, v280))
    {
      v281 = swift_slowAlloc();
      v282 = swift_slowAlloc();
      *v281 = 138412290;
      v283 = [v255 intent];
      *(v281 + 4) = v283;
      *v282 = v283;
      _os_log_impl(&_mh_execute_header, v279, v280, "Cound not retrieve start call intent from %@", v281, 0xCu);
      sub_100009A04(v282, &unk_1006A2630, &qword_10057CB40);

      v86 = v332;

      v284 = v279;
    }

    else
    {
      v284 = v255;
      v255 = v279;
    }

    goto LABEL_168;
  }

  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v254 = type metadata accessor for Logger();
  sub_10000AF9C(v254, qword_1006BA6D0);
  sub_100009AB0(v138, &v337);
  v255 = Logger.logObject.getter();
  v256 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *&v341 = v258;
    *v257 = 136315138;
    v259 = v339;
    v260 = v340;
    sub_100009B14(&v337, v339);
    v261 = (*(v260 + 16))(v259, v260);
    v263 = v262;
    sub_100395FFC(&v337);
    v264 = sub_10002741C(v261, v263, &v341);
    v86 = v332;

    *(v257 + 4) = v264;
    _os_log_impl(&_mh_execute_header, v255, v256, "Cound not retrieve interaction; using original notification content for call with identifier %s", v257, 0xCu);
    sub_100395FFC(v258);

LABEL_168:

    goto LABEL_169;
  }

  sub_100395FFC(&v337);
LABEL_169:
  v285 = v86;
LABEL_170:
  v305 = v285;
  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v306 = v138[3];
  v307 = v138[4];
  sub_100009B14(v138, v306);
  v308 = (*(v307 + 16))(v306, v307);
  v310 = sub_10044F628(v308, v309, v305, 0);
  [v310 setDestinations:6];
  if (v331)
  {
    [v310 setDestinations:{objc_msgSend(v310, "destinations") | 1}];
  }

  return v310;
}

id sub_100391250(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009B14(a1, v3);
  if (((*(v4 + 136))(v3, v4) & 0x1FFFFFFFFLL) == 2)
  {
    v5 = 0x4445434E454C4953;
    v6 = 0xED00004C4C41435FLL;
LABEL_3:

    return sub_10031E958(v5, v6);
  }

  v8 = a1[3];
  v9 = a1[4];
  sub_100009B14(a1, v8);
  v10 = (*(v9 + 144))(v8, v9);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_10031E958(0x4B434F4C425F4025, 0xED000059425F4445);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10057D690;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100009D88();
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v15 = String.init(format:_:)();

    return v15;
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_100009B14(a1, v16);
  v18 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callProviderManager);
  v19 = (*(v17 + 128))(v18, v16, v17);
  v20 = [v18 faceTimeProvider];
  v21 = v20;
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_13;
    }

LABEL_18:

LABEL_19:
    v5 = 0x435F44455353494DLL;
    v6 = 0xEB000000004C4C41;
    goto LABEL_3;
  }

  if (!v20)
  {
    v21 = v19;
    goto LABEL_18;
  }

  sub_100006AF0(0, &unk_1006A7B10, TUCallProvider_ptr);
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v23 = a1[3];
  v24 = a1[4];
  sub_100009B14(a1, v23);
  v25 = (*(v24 + 120))(v23, v24);
  switch(v25)
  {
    case 0:
      v6 = 0x800000010056FDB0;
      v5 = 0xD000000000000013;
      goto LABEL_3;
    case 2:
      v26 = "MISSED_FACETIME_VIDEO_CALL";
      goto LABEL_21;
    case 1:
      v26 = "MISSED_FACETIME_AUDIO_CALL";
LABEL_21:
      v5 = 0xD00000000000001ALL;
      v6 = ((v26 - 32) | 0x8000000000000000);
      goto LABEL_3;
  }

  v27 = sub_10031E958(0xD000000000000013, 0x800000010056FDB0);
  if (qword_1006A0B70 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000AF9C(v28, qword_1006BA6D0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v31 = 136315138;
    type metadata accessor for CHRecentCallMediaType(0);
    v33 = String.init<A>(reflecting:)();
    v35 = sub_10002741C(v33, v34, &v36);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Encountered undefined FaceTime media type %s", v31, 0xCu);
    sub_100395FFC(v32);
  }

  return v27;
}

uint64_t sub_100391698()
{
  swift_getObjectType();
  sub_10026D814(&qword_1006A7A18, &qword_100583368);
  v1 = String.init<A>(describing:)();
  if (*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType))
  {
    v2 = 0x656E6F6850;
  }

  else
  {
    v2 = 0x656D695465636146;
  }

  if (*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_notificationType))
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

id sub_100391760()
{
  v1 = [objc_allocWithZone(UNMutableNotificationContent) init];
  sub_10031E958(0xD00000000000002CLL, 0x800000010056FC00);
  v2 = String._bridgeToObjectiveC()();

  [v1 setBody:v2];

  sub_10031E958(0xD00000000000002ALL, 0x800000010056FC30);
  v3 = String._bridgeToObjectiveC()();

  [v1 setTitle:v3];

  v4 = sub_100391698();
  sub_1004554A0(v4, v5, v1);
  v6 = String._bridgeToObjectiveC()();
  [v1 setCategoryIdentifier:v6];

  sub_100006AF0(0, &qword_1006A7AE0, UNNotificationRequest_ptr);
  v7 = v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier;
  v8 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_receptionistOnboardingNotificationIdentifier);
  v9 = *(v7 + 8);

  v10 = v1;
  v11 = sub_10044F628(v8, v9, v10, 0);
  [v11 setDestinations:6];

  return v11;
}

id sub_1003918EC()
{
  v1 = v0;
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10057DEC0;
  v3 = objc_opt_self();
  v4 = *(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedProviders);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [v3 predicateForCallsWithAnyServiceProviders:isa];

  *(v2 + 32) = v6;
  v7 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportedMediaTypes);
  v8 = *(v7 + 16);
  if (v8)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = (v7 + 32);
    do
    {
      v10 = *v9++;
      [objc_allocWithZone(NSNumber) initWithInteger:v10];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v11 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v8;
    }

    while (v8);
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v3 predicateForCallsWithAnyMediaTypes:v12];

  *(v2 + 40) = v13;
  v14 = v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportsDisplayingFaceTimeAudioCalls;
  v16 = *(v1 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_supportsDisplayingFaceTimeAudioCalls);
  v15 = *(v14 + 8);

  LOBYTE(v16) = v16(v17);

  if ((v16 & 1) == 0)
  {
    v18 = [v3 predicateForFilteringOutFaceTimeAudioCalls];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391B64()
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10057DEC0;
  *(v0 + 32) = sub_1003918EC();
  *(v0 + 40) = [objc_opt_self() predicateForCallsWithStatusRead:0];
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391C04()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057DEC0;
  *(v6 + 32) = sub_100391B64();
  v7 = objc_opt_self();
  static Date.+ infix(_:_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v5, v0);
  v9 = [v7 predicateForCallsBetweenStartDate:isa endDate:0];

  *(v6 + 40) = v9;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

id sub_100391D88()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100583200;
  *(v6 + 32) = sub_1003918EC();
  v7 = objc_opt_self();
  *(v6 + 40) = [v7 predicateForCallsWithStatusRead:1];
  *(v6 + 48) = [v7 predicateForCallsWithStatusOriginated:0];
  static Date.+ infix(_:_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v5, v0);
  v9 = [v7 predicateForCallsBetweenStartDate:isa endDate:0];

  *(v6 + 56) = v9;
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

void sub_100391F48()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
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
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "Updating call history badge count for notification provider %@", v13, 0xCu);
    sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
  }

  v16 = &v10[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  v17 = *&v10[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_updateBadgeValue];
  if (v17)
  {
    v18 = *(v16 + 1);

    v17(v19);
    sub_1000051F8(v17);
  }
}

void sub_10039219C(uint64_t a1, void *a2)
{
  v3 = *(sub_10039B864(a1, a2) + 16);

  if (v3)
  {
    if (qword_1006A0B70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA6D0);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v6, "Skipping update of call history notification; InCallService process state is foreground running. %@", v7, 0xCu);
      sub_100009A04(v8, &unk_1006A2630, &qword_10057CB40);
    }
  }
}

uint64_t sub_100392310(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10026D814(&qword_1006A3C70, &unk_10057EA80);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v23 - v8;
  v10 = a1[3];
  v11 = a1[4];
  sub_100009B14(a1, v10);
  (*(v11 + 8))(v10, v11);
  v12 = type metadata accessor for Date();
  if (sub_100015468(v9, 1, v12) == 1)
  {
    sub_100009A04(v9, &qword_1006A3C70, &unk_10057EA80);
LABEL_5:
    v21 = 0;
    return v21 & 1;
  }

  v13 = Date.compare(_:)();
  (*(*(v12 - 8) + 8))(v9, v12);
  if (v13 != 1)
  {
    goto LABEL_5;
  }

  v14 = OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_pendingCallIdentifiers;
  swift_beginAccess();
  v15 = *(a3 + v14);
  v16 = a1[3];
  v17 = a1[4];
  sub_100009B14(a1, v16);
  v18 = *(v17 + 16);

  v19 = v18(v16, v17);
  LOBYTE(v18) = sub_1004226B4(v19, v20, v15);

  v21 = v18 ^ 1;
  return v21 & 1;
}

void *sub_100392500()
{
  if (sub_10000B6D0(_swiftEmptyArrayStorage))
  {
    sub_10039B204(_swiftEmptyArrayStorage, &qword_1006A7A10, &qword_100583360);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  v28 = v1;
  sub_10038A844();
  sub_100006AF0(0, &unk_1006A3C10, UNNotificationAction_ptr);
  sub_10031E958(0xD000000000000016, 0x800000010056FB60);
  sub_100006AF0(0, &unk_1006AB3C0, UNNotificationActionIcon_ptr);
  sub_100392948();
  sub_1003929A4();
  v3 = v2;
  sub_10000C510("ACTION_TITLE_SEND_MESSAGE");
  sub_100392948();
  sub_1003929A4();
  v5 = v4;
  sub_10000C510("ACTION_TITLE_BLOCK_CALLER");
  sub_100392948();
  sub_1003929A4();
  v7 = v6;
  v8 = [*(v0 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_featureFlags) silencedCallNotificationBlockAndReportEnabled];
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v9 = swift_allocObject();
  if (v8)
  {
    *(v9 + 16) = xmmword_100581AB0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
    *(v9 + 48) = v7;
    v10 = v7;
  }

  else
  {
    *(v9 + 16) = xmmword_10057DEC0;
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
  }

  sub_100006AF0(0, &unk_1006A7A00, UNNotificationCategory_ptr);
  sub_10026D814(&qword_1006A4760, &unk_10057EA60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D690;
  *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 40) = v12;
  v26 = v3;
  v25 = v5;
  v13 = sub_1003890FC(0x436465776F6C6C61, 0xEB000000006C6C61, v9, v11, 2);
  sub_100005364();
  sub_1000357AC(v14, v15, v16);

  v17 = v13;
  sub_100005364();
  sub_1000357AC(v18, v19, v20);

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10057D690;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = sub_1003890FC(0x4364656B636F6C62, 0xEB000000006C6C61, _swiftEmptyArrayStorage, v21, 2);
  sub_1000357AC(&v27, v23, &unk_1006A7A00);

  return v28;
}

id sub_100392948()
{
  String._bridgeToObjectiveC()();
  sub_10039C4B0();
  v1 = [swift_getObjCClassFromMetadata() iconWithSystemImageName:v0];

  return v1;
}

void sub_1003929A4()
{
  sub_10003D4BC();
  sub_10039C438();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  [swift_getObjCClassFromMetadata() actionWithIdentifier:v2 title:v3 options:v1 icon:v0];

  sub_100035CE8();
}

uint64_t sub_100392A40()
{
  v1 = v0;
  v2 = [objc_opt_self() sharedSystemShellSwitcher];
  v3 = [v2 isClarityBoardEnabled];

  if (v3)
  {
    sub_100009AB0(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_contactStore], v19);
    sub_100006AF0(0, &unk_1006A79C0, CLFPhoneFaceTimeSettings_ptr);
    v4 = [swift_getObjCClassFromMetadata() sharedInstance];
    v5 = [v4 outgoingCommunicationLimit];

    v6 = [objc_opt_self() sharedInstance];
    v7 = sub_10039BF00(v19, v6, v5, v1);

    sub_100395FFC(v19);
  }

  else
  {
    v8 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24];
    v9 = *&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32];
    sub_100009B14(&v1[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource], v8);
    v10 = sub_100391B64();
    v7 = (*(v9 + 8))(v10, v8, v9);

    if (qword_1006A0B70 != -1)
    {
      sub_10000860C();
    }

    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006BA6D0);
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = sub_10000777C();
      *v15 = 138412802;
      *(v15 + 4) = v12;
      *v16 = v12;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v7;
      *(v15 + 22) = 1024;
      *(v15 + 24) = 0;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v13, v14, "%@ count: %ld isAmbiguous: %{BOOL}d", v15, 0x1Cu);
      sub_100009A04(v16, &unk_1006A2630, &qword_10057CB40);
      sub_100005F40();
      sub_100005F40();
    }
  }

  return v7;
}

void sub_100392CEC(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1006A0AF8 == -1)
    {
LABEL_5:
      v11 = type metadata accessor for Logger();
      sub_1000075F0(v11, qword_1006BA568);
      oslog = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v12, "Unable to block handles because handles are nil", v13, 2u);
        sub_100005F40();
      }

      return;
    }

LABEL_61:
    sub_10000852C();
    swift_once();
    goto LABEL_5;
  }

  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_10000528C();
    sub_100006AF0(v2, v3, v4);
    sub_10000528C();
    sub_10039C15C(v5);
    Set.Iterator.init(_cocoa:)();
    v1 = v112[1];
    v7 = v112[2];
    v8 = v112[3];
    v9 = v112[4];
    v10 = v112[5];
  }

  else
  {
    v14 = *(a1 + 32);
    sub_1000052DC();
    v7 = v1 + 56;
    v15 = *(v1 + 56);
    v8 = ~v16;
    sub_1000082B4();
    v10 = v17 & v18;

    v9 = 0;
  }

  v107 = v8;
  v19 = (v8 + 64) >> 6;
  v20 = &selRef_setWindowed_;
  v108 = 136315138;
  *&v6 = 136315394;
  v105 = v6;
  v109 = v1;
  while (2)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006A3C20, CHHandle_ptr), swift_dynamicCast(), v27 = v112[0], v22 = v9, v25 = v10, !v112[0]))
      {
LABEL_59:
        sub_100022DDC();
        return;
      }
    }

    else
    {
      v21 = v9;
      v22 = v9;
      if (!v10)
      {
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v22 >= v19)
          {
            goto LABEL_59;
          }

          ++v21;
          if (*(v7 + 8 * v22))
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

LABEL_17:
      sub_100007C8C();
      v25 = (v24 & v23);
      v27 = *(*(v1 + 48) + ((v22 << 9) | (8 * v26)));
      if (!v27)
      {
        goto LABEL_59;
      }
    }

    switch([v27 v20[470]])
    {
      case 0uLL:
      case 1uLL:

        v9 = v22;
        v10 = v25;
        continue;
      case 2uLL:
        v28 = sub_1004226A8(v27);
        osloga = v25;
        if (v29)
        {
          v30 = v28;
          v31 = v29;
          v32 = TUHomeCountryCode();
          if (v32)
          {
            v33 = v32;
            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;
          }

          else
          {
            v34 = 0;
            v36 = 0;
          }

          v89 = objc_allocWithZone(TUPhoneNumber);

          v103 = v30;
          v90 = sub_100395B90(v30, v31, v34, v36);
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v91 = type metadata accessor for Logger();
          sub_1000075F0(v91, qword_1006BA568);
          v92 = v90;

          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();

          v104 = v92;
          if (os_log_type_enabled(v93, v94))
          {
            v101 = v90;
            v95 = swift_slowAlloc();
            log = v93;
            v96 = sub_10000777C();
            v97 = sub_100005E84();
            v112[0] = v97;
            *v95 = v105;
            *(v95 + 4) = sub_10002741C(v103, v31, v112);
            *(v95 + 12) = 2112;
            *(v95 + 14) = v92;
            *v96 = v101;
            v98 = v92;
            _os_log_impl(&_mh_execute_header, log, v94, "Block phoneNumber: %s from notification, formatted phonenumber: %@", v95, 0x16u);
            sub_100009A04(v96, &unk_1006A2630, &qword_10057CB40);
            sub_100005F40();
            sub_100395FFC(v97);
            v20 = &selRef_setWindowed_;
            sub_100005F40();
            sub_100005F40();
          }

          else
          {
          }

          v1 = v109;
          v99 = [objc_opt_self() sharedPrivacyManager];
          if (!v99)
          {
            goto LABEL_63;
          }

          v100 = v99;

          [v100 setBlockIncomingCommunication:1 forPhoneNumber:v92];
        }

        else
        {
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v56 = type metadata accessor for Logger();
          sub_1000075F0(v56, qword_1006BA568);
          v57 = v27;
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v58, v59))
          {
            sub_100005274();
            v60 = sub_10000681C();
            v68 = sub_100051654(v60, v61, v62, v63, v64, v65, v66, v67, v101, log, v103, v104, v105, *(&v105 + 1), v106, v107, v108);
            sub_100006AF0(v68, &unk_1006A3C20, CHHandle_ptr);
            v69 = v57;
            v70 = String.init<A>(reflecting:)();
            v72 = sub_10002741C(v70, v71, v112);

            *(v1 + 4) = v72;
            sub_10039C480(&_mh_execute_header, v58, v59, "Unable to block the phoneNumber handle %s because handle.normalizedValue = nil");
            sub_100395FFC(v20);
            v20 = &selRef_setWindowed_;
            sub_100005F40();
            sub_10003DDFC();
          }

          else
          {
          }
        }

LABEL_55:
        v9 = v22;
        v10 = osloga;
        continue;
      case 3uLL:
        v37 = sub_1004226A8(v27);
        osloga = v25;
        if (!v38)
        {
          if (qword_1006A0AF8 != -1)
          {
            sub_10000852C();
            swift_once();
          }

          v73 = type metadata accessor for Logger();
          sub_1000075F0(v73, qword_1006BA568);
          v74 = v27;
          v49 = Logger.logObject.getter();
          v75 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v49, v75))
          {
            sub_100005274();
            v76 = sub_10000681C();
            v84 = sub_100051654(v76, v77, v78, v79, v80, v81, v82, v83, v101, log, v103, v104, v105, *(&v105 + 1), v106, v107, v108);
            sub_100006AF0(v84, &unk_1006A3C20, CHHandle_ptr);
            v85 = v74;
            v86 = String.init<A>(reflecting:)();
            v88 = sub_10002741C(v86, v87, v112);

            *(v1 + 4) = v88;
            sub_10039C480(&_mh_execute_header, v49, v75, "Unable to block the emailAddress handle %s because handle.normalizedValue = nil");
            sub_100395FFC(v20);
            sub_100005F40();
            sub_10003DDFC();
          }

          else
          {

LABEL_57:
          }

LABEL_58:
          v9 = v22;
          v10 = osloga;
          v20 = &selRef_setWindowed_;
          continue;
        }

        v39 = v37;
        v40 = v38;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000075F0(v41, qword_1006BA568);

        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v42, v43))
        {
          sub_100005274();
          v44 = sub_10000681C();
          v112[0] = v44;
          *v1 = v108;
          *(v1 + 4) = sub_10002741C(v39, v40, v112);
          sub_10039C480(&_mh_execute_header, v42, v43, "Block emailAddress %s from notification");
          sub_100395FFC(v44);
          sub_100005F40();
          sub_10003DDFC();
        }

        v45 = [objc_opt_self() sharedPrivacyManager];
        if (v45)
        {
          v46 = v45;
          sub_10039BDF0(1, v39, v40, v45);

          goto LABEL_58;
        }

        __break(1u);
LABEL_63:
        __break(1u);
        return;
      default:
        osloga = v25;
        if (qword_1006A0AF8 != -1)
        {
          sub_10000852C();
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_1000075F0(v47, qword_1006BA568);
        v48 = v27;
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v49, v50))
        {
          sub_100005274();
          v51 = sub_10000681C();
          v112[0] = v51;
          *v1 = v108;
          [v48 type];
          type metadata accessor for CHHandleType(0);
          v52 = String.init<A>(reflecting:)();
          v54 = sub_10002741C(v52, v53, v112);

          *(v1 + 4) = v54;
          v55 = v50;
          v20 = &selRef_setWindowed_;
          sub_10039C480(&_mh_execute_header, v49, v55, "unknown handle type: %s");
          sub_100395FFC(v51);
          sub_100008AE8();
          sub_10003DDFC();

          goto LABEL_55;
        }

        goto LABEL_57;
    }
  }
}

void sub_100393664()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  v12 = v11 - v10;
  v28 = type metadata accessor for DispatchQoS();
  v13 = sub_100007FEC(v28);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  sub_100007FDC();
  v21 = v20 - v19;
  v27 = *&v0[OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_queue];
  sub_100009AB0(v2, v30);
  v22 = swift_allocObject();
  sub_10002F0C8(v30, v22 + 16);
  *(v22 + 56) = v0;
  v29[4] = sub_100394C78;
  v29[5] = v22;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  sub_10000A600();
  v29[2] = v23;
  v29[3] = &unk_10062B208;
  v24 = _Block_copy(v29);
  v25 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100022D34();
  sub_10000EFA8(v26);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100006958(&qword_1006A2CD0);
  sub_100008B50();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v6 + 8))(v12, v3);
  (*(v15 + 8))(v21, v28);

  sub_100005EDC();
}

void sub_1003938C8(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A52C0, &unk_10057D930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v70 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9, v12);
  v74 = (&v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    v18 = swift_slowAlloc();
    v73 = a1;
    v19 = v9;
    v20 = v8;
    v21 = v18;
    v78[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_10002741C(0xD000000000000020, 0x800000010056FB30, v78);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_100395FFC(v21);
    v8 = v20;
    v9 = v19;
    a1 = v73;
  }

  v22 = a1[3];
  v23 = a1[4];
  sub_100009B14(a1, v22);
  v82._countAndFlagsBits = (*(v23 + 8))(v22, v23);
  v24 = sub_10038A7F8(v82);
  if (v24 == 3)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    sub_10000AF9C(v14, qword_1006BA568);
    v74 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v74, v25, "Unknown notification response received", v26, 2u);
    }

    v27 = v74;
  }

  else
  {
    v28 = v24;
    v70 = v8;
    v71 = v9;
    v72 = a2;
    v73 = v10;
    v29 = *(a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 24);
    v30 = *(a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource + 32);
    sub_100009B14((a2 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_callHistoryDataSource), v29);
    v31 = objc_opt_self();
    v33 = a1[3];
    v32 = a1[4];
    sub_100009B14(a1, v33);
    (*(v32 + 16))(v33, v32);
    v34 = String._bridgeToObjectiveC()();

    v35 = [v31 predicateForCallsWithUniqueID:v34];

    v36 = (*(v30 + 24))(v35, 1, v29, v30);
    sub_1002E9780(v36, &v76);

    if (v77)
    {
      sub_10002F0C8(&v76, v78);
      v37 = v73;
      if (v28)
      {
        if (v28 == 1)
        {
          v38 = v79;
          v39 = v80;
          sub_100009B14(v78, v79);
          v40 = (*(v39 + 96))(v38, v39);
          if (v40)
          {
            v41 = sub_1002E8D2C(v40);

            if (v41)
            {
              sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
              v42 = swift_allocObject();
              *(v42 + 16) = xmmword_10057D690;
              v43 = [v41 value];
              v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v46 = v45;

              *(v42 + 56) = &type metadata for String;
              *(v42 + 64) = sub_100009D88();
              *(v42 + 32) = v44;
              *(v42 + 40) = v46;
              String.init(format:_:)();
              v47 = v70;
              URL.init(string:)();

              v48 = v71;
              if (sub_100015468(v47, 1, v71) == 1)
              {

                sub_100009A04(v47, &unk_1006A52C0, &unk_10057D930);
              }

              else
              {
                v67 = v74;
                (v37[4])(v74, v47, v48);
                v68 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL);
                v69 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_openURL + 8);

                v68(v67);

                (v37[1])(v67, v48);
              }
            }
          }
        }

        else
        {
          v62 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles);
          if (v62)
          {
            v63 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_blockHandles + 8);
            v64 = v79;
            v65 = v80;
            sub_100009B14(v78, v79);
            v66 = *(v65 + 80);

            v66(v64, v65);
            v62();
            sub_1000051F8(v62);
          }
        }
      }

      else
      {
        v60 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall);
        if (v60)
        {
          v61 = *(v72 + OBJC_IVAR____TtC13callservicesd31CallHistoryNotificationProvider_dialRecentCall + 8);

          v60(v78);
          sub_1000051F8(v60);
        }
      }
    }

    else
    {
      sub_100009A04(&v76, &unk_1006A79B0, &qword_100583340);
      if (qword_1006A0AF8 != -1)
      {
        swift_once();
      }

      sub_10000AF9C(v14, qword_1006BA568);
      sub_100009AB0(a1, v78);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v75 = v52;
        *v51 = 136315138;
        v53 = v79;
        v54 = v80;
        sub_100009B14(v78, v79);
        *&v76 = (*(v54 + 16))(v53, v54);
        *(&v76 + 1) = v55;
        v56 = String.init<A>(reflecting:)();
        v58 = v57;
        sub_100395FFC(v78);
        v59 = sub_10002741C(v56, v58, &v75);

        *(v51 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "Could not find recent call with identifier: %s", v51, 0xCu);
        sub_100395FFC(v52);

        return;
      }
    }

    sub_100395FFC(v78);
  }
}