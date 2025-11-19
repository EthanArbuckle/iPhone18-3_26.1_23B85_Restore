size_t sub_100017B1C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000A45C(&qword_100093168, &qword_100073048);
  v10 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_100017D0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100089CD0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100017D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A45C(&qword_100092FA8, &unk_100075380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017DF4()
{
  v1 = *(sub_10000A45C(&qword_100092FA8, &unk_100075380) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = (*(*v2 + 144))();
  v7[2] = v3;
  v5 = sub_100014D3C(sub_100019070, v7, v4);
  return (*(*v2 + 152))(v5);
}

unint64_t sub_100017EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A45C(&qword_100093B00, &qword_100074FA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006C44(v4, v13, &qword_100093160, &qword_100073040);
      result = sub_10000C7B0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000C848(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

void sub_10001801C(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v78 = a3;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v73 - v13;
  if (a1)
  {
    if (a1 == 1)
    {
      v15 = String._bridgeToObjectiveC()();
      sub_100006C44(a4, &v80, &qword_100092CB8, &qword_100072C40);
      if (v81)
      {
        sub_10000C848(&v80, &v82);
      }

      else
      {
        v38 = [objc_allocWithZone(NSNull) init];
        v83 = sub_100004890(0, &qword_100093158, NSNull_ptr);
        *&v82 = v38;
        if (v81)
        {
          sub_100006CAC(&v80, &qword_100092CB8, &qword_100072C40);
        }
      }

      v39 = objc_opt_self();
      sub_1000078C8(&v82, v83);
      v40 = _bridgeAnythingToObjectiveC<A>(_:)();
      sub_1000036EC(&v82);
      *&v82 = 0;
      LOBYTE(v39) = [v39 writePrefKey:v15 value:v40 error:&v82];

      swift_unknownObjectRelease();
      if (v39)
      {
        v41 = v82;
        notify_post("com.apple.bluetooth.prefsChanged");
      }

      else
      {
        v42 = v82;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v43 = sub_100039280();
        (*(v8 + 16))(v12, v43, v7);

        swift_errorRetain();
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v8;
          v47 = swift_slowAlloc();
          *&v82 = swift_slowAlloc();
          *v47 = 136315394;
          *(v47 + 4) = sub_1000034B8(a2, v78, &v82);
          *(v47 + 12) = 2080;
          swift_getErrorValue();
          v48 = Error.localizedDescription.getter();
          v50 = sub_1000034B8(v48, v49, &v82);

          *(v47 + 14) = v50;
          _os_log_impl(&_mh_execute_header, v44, v45, "Unable to get value for key: %s due to: %s", v47, 0x16u);
          swift_arrayDestroy();

          (*(v46 + 8))(v12, v7);
        }

        else
        {

          (*(v8 + 8))(v12, v7);
        }
      }
    }

    else
    {
      v29 = objc_opt_self();
      v30 = [v29 standardUserDefaults];
      sub_100006C44(a4, &v82, &qword_100092CB8, &qword_100072C40);
      v31 = v83;
      if (v83)
      {
        v32 = sub_1000078C8(&v82, v83);
        v33 = *(v31 - 8);
        v34 = *(v33 + 64);
        __chkstk_darwin(v32);
        v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v36);
        v37 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v33 + 8))(v36, v31);
        sub_1000036EC(&v82);
      }

      else
      {
        v37 = 0;
      }

      v71 = String._bridgeToObjectiveC()();
      [v30 setValue:v37 forKey:v71];

      swift_unknownObjectRelease();
      v72 = [v29 standardUserDefaults];
      [v72 synchronize];
    }
  }

  else
  {
    *&v77 = v8;
    v16 = NSUbiquitousKeyValueStore.bluetoothCloudDefaults.unsafeMutableAddressor();
    swift_beginAccess();
    v76 = v16;
    v17 = *v16;
    sub_100006C44(a4, &v82, &qword_100092CB8, &qword_100072C40);
    v18 = v83;
    if (v83)
    {
      v19 = sub_1000078C8(&v82, v83);
      v20 = *(v18 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = v7;
      v24 = a2;
      v25 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v25);
      v26 = v17;
      v27 = _bridgeAnythingToObjectiveC<A>(_:)();
      v28 = v25;
      a2 = v24;
      v7 = v23;
      (*(v20 + 8))(v28, v18);
      sub_1000036EC(&v82);
    }

    else
    {
      v51 = v17;
      v27 = 0;
    }

    v52 = String._bridgeToObjectiveC()();
    [v17 setObject:v27 forKey:v52];

    swift_unknownObjectRelease();
    v53 = sub_100039280();
    v54 = v77;
    (*(v77 + 16))(v14, v53, v7);
    sub_100006C44(a4, &v82, &qword_100092CB8, &qword_100072C40);

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v79 = v75;
      *v57 = 136315650;
      *(v57 + 4) = sub_1000034B8(a2, v78, &v79);
      *(v57 + 12) = 2080;
      sub_100006C44(&v82, &v80, &qword_100092CB8, &qword_100072C40);
      sub_10000A45C(&qword_100092CB8, &qword_100072C40);
      v58 = String.init<A>(describing:)();
      v74 = v7;
      v59 = v58;
      v61 = v60;
      sub_100006CAC(&v82, &qword_100092CB8, &qword_100072C40);
      v62 = sub_1000034B8(v59, v61, &v79);

      *(v57 + 14) = v62;
      *(v57 + 22) = 1024;
      v63 = v76;
      swift_beginAccess();
      *(v57 + 24) = [*v63 synchronize];
      _os_log_impl(&_mh_execute_header, v55, v56, "Cloud defaults update %s: %s, synchronized: %{BOOL}d", v57, 0x1Cu);
      swift_arrayDestroy();

      (*(v54 + 8))(v14, v74);
    }

    else
    {

      sub_100006CAC(&v82, &qword_100092CB8, &qword_100072C40);
      (*(v54 + 8))(v14, v7);
    }

    v64 = [objc_opt_self() defaultCenter];
    v65 = String._bridgeToObjectiveC()();
    sub_10000A45C(&unk_100093A50, &unk_100073030);
    inited = swift_initStackObject();
    v77 = xmmword_100072BE0;
    *(inited + 16) = xmmword_100072BE0;
    *&v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v82 + 1) = v67;
    AnyHashable.init<A>(_:)();
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v68 = swift_allocObject();
    *(v68 + 16) = v77;
    v69 = v78;
    *(v68 + 32) = a2;
    *(v68 + 40) = v69;
    *(inited + 96) = sub_10000A45C(&qword_100094180, &qword_100074290);
    *(inited + 72) = v68;

    sub_100017EE0(inited);
    swift_setDeallocating();
    sub_100006CAC(inited + 32, &qword_100093160, &qword_100073040);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v64 postNotificationName:v65 object:0 userInfo:isa];
  }
}

unint64_t sub_100018B1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100089D88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100018B6C()
{
  result = qword_100092FB0;
  if (!qword_100092FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092FB0);
  }

  return result;
}

unint64_t sub_100018C08()
{
  result = qword_100092FF8;
  if (!qword_100092FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100092FF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyValueSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyValueSource(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeyValueStoreManager.Defaults(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KeyValueStoreManager.Defaults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100018F84()
{
  v1 = *(v0 + 16);
  v2 = (*(**(v0 + 24) + 144))();
  v3 = *v1;
  *v1 = v2;
}

uint64_t sub_100018FE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_10001901C()
{
  result = qword_100093150;
  if (!qword_100093150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100093150);
  }

  return result;
}

BOOL sub_100019070()
{
  v1 = *(v0 + 16);
  sub_10000A45C(&qword_100092FA8, &unk_100075380);
  sub_10000FA34(&qword_100093170, &qword_100092FA8, &unk_100075380);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_100019114(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000149B8(a1);
  }

  return result;
}

uint64_t sub_10001918C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void *sub_10001920C()
{
  v0 = type metadata accessor for URL();
  sub_100038620(v0, qword_1000989B0);
  v1 = sub_1000027FC(v0, qword_1000989B0);
  type metadata accessor for UserFileManager();
  return sub_100041768(v1);
}

uint64_t sub_100019268()
{
  _StringGuts.grow(_:)(78);
  v1._countAndFlagsBits = 0xD000000000000025;
  v1._object = 0x8000000100079E10;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._object = 0x8000000100079E40;
  v2._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x4449656E6F7A202CLL;
  v3._object = 0xEB00000000203A73;
  String.append(_:)(v3);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v5._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v5);

  return 0;
}

uint64_t sub_100019354()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x734449656E6F7ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000193B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100033B4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000193F8(uint64_t a1)
{
  v2 = sub_100019688();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100019434(uint64_t a1)
{
  v2 = sub_100019688();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100019470(void *a1)
{
  v3 = v1;
  v5 = sub_10000A45C(&unk_100093180, &qword_1000730A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000078C8(a1, a1[3]);
  sub_100019688();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 2;
    sub_10000A45C(&qword_100094180, &qword_100074290);
    sub_1000385B4(&unk_100093190);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100019688()
{
  result = qword_1000957D8;
  if (!qword_1000957D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000957D8);
  }

  return result;
}

uint64_t sub_1000196DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1000196EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000957D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for URL();
  v3 = sub_1000027FC(v2, qword_1000989B0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

double sub_1000197B0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100033C74(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

Swift::Int sub_100019838()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000198B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000198F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
}

uint64_t sub_100019964(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  *(v1 + 48) = *(a1 + 32);
}

uint64_t sub_1000199D4()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_100019A0C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(v1 + 80) = a1;
}

id sub_100019AA4()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___container);
  }

  else
  {
    (*(*v0 + 264))(&v9);
    v12 = v9;
    sub_100034994(&v12);
    v11 = v10;
    sub_100006CAC(&v11, &qword_100094180, &qword_100074290);
    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() containerWithIdentifier:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019C00(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(CKOperationGroup) init];
    v6 = String._bridgeToObjectiveC()();
    [v5 setName:v6];

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_100019CAC()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___susbscriptionSetupGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019D5C()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___fetchDatabaseGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019E0C()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___cloudUserActionExplicitGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_100019EBC()
{
  v1 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup;
  v2 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator____lazy_storage___deferredUpdatesGroup);
  }

  else
  {
    v4 = [objc_allocWithZone(CKOperationGroup) init];
    v5 = String._bridgeToObjectiveC()();
    [v4 setName:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_100019F6C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 56);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.notOnQueue(_:), v1);
  v6;
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v7)
  {
    OS_dispatch_queue.sync<A>(execute:)();
    return v9[15];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A0B0(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 56);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100033F64;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100018FE4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001437C;
  aBlock[3] = &unk_10008A150;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v9, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A2E8(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_100033F90(a1);
  v9 = *a1;
  sub_100034994(&v9);
  v8 = *(a1 + 16);
  sub_100034994(&v8);
  v7 = *(a1 + 32);
  sub_100006CAC(&v7, &qword_100094180, &qword_100074290);
  return v5;
}

uint64_t sub_10001A374()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931C8, &qword_1000730A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = *(v0 + 56);
  OS_dispatch_queue.sync<A>(execute:)();
  LOBYTE(v14) = v42;
  v15 = sub_1000391F4();
  v16 = *(v7 + 16);
  if (v14)
  {
    v16(v11, v15, v6);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v45 = v20;
      *v19 = 136315138;
      (*(*v1 + 264))(&v42);
      v21 = sub_100019268();
      v23 = v22;
      *v39 = v42;
      sub_100034994(v39);
      v47 = v43;
      sub_100034994(&v47);
      *&v46 = v44;
      sub_100006CAC(&v46, &qword_100094180, &qword_100074290);
      v24 = sub_1000034B8(v21, v23, &v45);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Already activated CloudStorageCoordinator with %s", v19, 0xCu);
      sub_1000036EC(v20);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v16(v13, v15, v6);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39[0] = v38;
      *v28 = 136315138;
      (*(*v1 + 264))(&v42);
      v29 = sub_100019268();
      v31 = v30;
      v47 = v42;
      sub_100034994(&v47);
      v46 = v43;
      sub_100034994(&v46);
      v45 = v44;
      sub_100006CAC(&v45, &qword_100094180, &qword_100074290);
      v32 = sub_1000034B8(v29, v31, v39);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Activating CloudStorageCoordinator with %s", v28, 0xCu);
      sub_1000036EC(v38);
    }

    (*(v7 + 8))(v13, v6);
    sub_10001AD44();
    v33 = *sub_10000CBC4();
    v40 = type metadata accessor for CloudStorageCoordinator();
    v41 = &off_10008A368;
    v39[0] = v1;

    v34 = v33;
    sub_10000DE14();

    sub_1000036EC(v39);
    v35 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
    (*(*(v35 - 8) + 56))(v5, 0, 1, v35);
    v36 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
    swift_beginAccess();
    sub_10003849C(v5, v1 + v36, &qword_1000931C8, &qword_1000730A8);
    return swift_endAccess();
  }
}

uint64_t sub_10001A8E8()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931C8, &qword_1000730A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v37 = sub_10000A45C(&qword_1000931C0, &unk_100072C70);
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - v8;
  v10 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - v17;
  v19 = [objc_opt_self() defaultCenter];
  [v19 removeObserver:v1];

  v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  swift_beginAccess();
  sub_100006C44(v1 + v20, v13, &qword_1000931D0, qword_1000730B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = &qword_1000931D0;
    v22 = qword_1000730B0;
    v23 = v13;
  }

  else
  {
    sub_100035FF0(v13, v18, &qword_100092E80, qword_100072CF0);
    v24 = *sub_100062224();

    sub_100064360(v18);

    v23 = v18;
    v21 = &qword_100092E80;
    v22 = qword_100072CF0;
  }

  sub_100006CAC(v23, v21, v22);
  v25 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription;
  swift_beginAccess();
  sub_100006C44(v1 + v25, v5, &qword_1000931C8, &qword_1000730A8);
  if ((*(v6 + 48))(v5, 1, v37) == 1)
  {
    v26 = &qword_1000931C8;
    v27 = &qword_1000730A8;
    v28 = v5;
  }

  else
  {
    sub_100035FF0(v5, v9, &qword_1000931C0, &unk_100072C70);
    v29 = *sub_10000CBC4();
    sub_10000E0B4(v9);

    v28 = v9;
    v26 = &qword_1000931C0;
    v27 = &unk_100072C70;
  }

  sub_100006CAC(v28, v26, v27);
  v30 = *sub_100041228();
  v31 = *(*v1 + 264);

  v31(v38, v32);
  v33 = v38[0];
  v34 = v38[1];
  v42 = v39;
  sub_100034994(&v42);
  v41 = v40;
  sub_100006CAC(&v41, &qword_100094180, &qword_100074290);
  (*(*v30 + 240))(v33, v34);
}

void sub_10001AD44()
{
  v1 = v0;
  v2 = sub_10000A45C(&qword_1000931D0, qword_1000730B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v4;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v30 = [objc_opt_self() defaultCenter];
  v12 = sub_10003915C();
  v13 = v6[2];
  v13(v11, v12, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Add listener for account change", v16, 2u);
  }

  v17 = v6[1];
  v17(v11, v5);
  [v30 addObserver:v1 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  v13(v29, v12, v5);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Add listener for CKIdentityUpdate", v20, 2u);
  }

  v17(v29, v5);
  v21 = v30;
  [v30 addObserver:v1 selector:"accountDidChange:" name:CKIdentityUpdateNotification object:0];
  v22 = *sub_100062224();
  v31[3] = type metadata accessor for CloudStorageCoordinator();
  v31[4] = &off_10008A358;
  v31[0] = v1;

  v23 = v28;
  sub_1000640D8();

  sub_1000036EC(v31);
  v24 = sub_10000A45C(&qword_100092E80, qword_100072CF0);
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  v25 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription;
  swift_beginAccess();
  sub_10003849C(v23, v1 + v25, &qword_1000931D0, qword_1000730B0);
  swift_endAccess();
  v26 = type metadata accessor for Transaction();
  __chkstk_darwin(v26);
  *(&v27 - 4) = v1;
  *(&v27 - 3) = sub_100038AE0;
  *(&v27 - 2) = v1;

  static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountStatus", 37, 2, sub_100038A68);
}

void sub_10001B1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A45C(&qword_100093740, &qword_100073620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100073090;
  v10 = sub_100019AA4();
  v11 = [v10 privateCloudDatabase];

  *(inited + 32) = v11;
  v12 = *(*a2 + 264);
  v72 = inited;
  v65 = a1;
  v71 = inited + 32;
  v70 = v4;
  v69 = v5;
  v68 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = v11;
  }

  v66 = v13;
  v14 = swift_allocObject();
  v67 = v14;
  *(v14 + 16) = _swiftEmptyArrayStorage;
  v15 = (v14 + 16);
  v64[1] = a2;
  v12(v76);
  v16 = v77;
  v80[0] = v77;
  v79 = v76[0];

  sub_100034994(&v79);
  v78 = v76[1];
  sub_100034994(&v78);
  sub_100006CAC(v80, &qword_100094180, &qword_100074290);
  v17 = *(v16 + 16);
  if (v17)
  {
    v73 = CKCurrentUserDefaultName;
    v18 = (v16 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v75._countAndFlagsBits = 0;
      v75._object = 0xE000000000000000;

      _StringGuts.grow(_:)(38);

      v75._countAndFlagsBits = 0xD000000000000024;
      v75._object = 0x8000000100079F20;
      v21._countAndFlagsBits = v19;
      v21._object = v20;
      String.append(_:)(v21);
      sub_100015AAC(v75._countAndFlagsBits, v75._object, 2, &type metadata for Bool, &v74);

      if (LOBYTE(v74._countAndFlagsBits) == 2 || (v74._countAndFlagsBits & 1) != 0)
      {
      }

      else
      {
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25._countAndFlagsBits = v19;
        v25._object = v20;
        v26._countAndFlagsBits = v22;
        v26._object = v24;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v25, v26).super.isa;
        sub_100004890(0, &unk_100093790, CKRecordZoneSubscription_ptr);
        v75._countAndFlagsBits = 0;
        v75._object = 0xE000000000000000;
        v28 = isa;
        _StringGuts.grow(_:)(38);

        v75._countAndFlagsBits = 0xD000000000000024;
        v75._object = 0x8000000100079F20;
        v29._countAndFlagsBits = v19;
        v29._object = v20;
        String.append(_:)(v29);

        v30 = CKRecordZoneSubscription.init(zoneID:subscriptionID:)(v28, v75).super.super.isa;
        swift_beginAccess();
        v31 = v30;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }

      v18 += 2;
      --v17;
    }

    while (v17);
  }

  sub_100006CAC(v80, &qword_100094180, &qword_100074290);
  swift_beginAccess();
  v33 = *v15;
  if (*v15 >> 62)
  {
    if (v33 < 0)
    {
      v63 = *v15;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v70;
  v36 = v69;
  v37 = v68;
  if (v34 <= 0)
  {
    v57 = v72;
    swift_setDeallocating();
    v58 = *(v57 + 16);
    swift_arrayDestroy();
    v59 = sub_10003915C();
    (*(v36 + 16))(v37, v59, v35);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Already subscribed cloud notifications", v62, 2u);
    }

    (*(v36 + 8))(v37, v35);
  }

  else
  {
    sub_100004890(0, &unk_100093780, CKModifySubscriptionsOperation_ptr);
    v38 = v67;
    v39 = *(v67 + 16);
    sub_10000A45C(&unk_100092D10, &unk_100072C00);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_100072BE0;
    sub_100004890(0, &qword_1000931D8, CKDatabaseSubscription_ptr);
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;

    _StringGuts.grow(_:)(16);

    strcpy(&v74, "bluetoothuser-");
    HIBYTE(v74._object) = -18;
    v41 = v66;
    [v66 scope];
    v42 = CKDatabaseScopeString();
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46._countAndFlagsBits = v43;
    v46._object = v45;
    String.append(_:)(v46);

    v47 = CKDatabaseSubscription.init(subscriptionID:)(v74).super.super.isa;
    v48 = [objc_allocWithZone(CKNotificationInfo) init];
    [v48 setShouldSendContentAvailable:1];
    [(objc_class *)v47 setNotificationInfo:v48];

    v49 = CKSubscription.subscriptionID.getter();
    v51 = v50;

    *(v40 + 32) = v49;
    *(v40 + 40) = v51;
    v81.value._rawValue = v39;
    v81.is_nil = v40;
    v52 = CKModifySubscriptionsOperation.init(subscriptionsToSave:subscriptionIDsToDelete:)(v81, v82).super.super.super.super.isa;
    v53 = sub_100019CAC();
    [(objc_class *)v52 setGroup:v53];

    v54 = swift_allocObject();
    *(v54 + 16) = v65;
    *(v54 + 24) = v38;

    CKModifySubscriptionsOperation.modifySubscriptionsResultBlock.setter();
    [v41 addOperation:v52];

    v55 = v72;
    swift_setDeallocating();
    v56 = *(v55 + 16);
    swift_arrayDestroy();
  }
}

Class sub_10001B9C8()
{
  sub_100004890(0, &qword_1000931D8, CKDatabaseSubscription_ptr);
  _StringGuts.grow(_:)(16);

  strcpy(&v9, "bluetoothuser-");
  HIBYTE(v9._object) = -18;
  [v0 scope];
  v1 = CKDatabaseScopeString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  isa = CKDatabaseSubscription.init(subscriptionID:)(v9).super.super.isa;
  v7 = [objc_allocWithZone(CKNotificationInfo) init];
  [v7 setShouldSendContentAvailable:1];
  [(objc_class *)isa setNotificationInfo:v7];

  return isa;
}

uint64_t sub_10001BAF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  Transaction.capture()();
  if (a2)
  {
    v15 = sub_10003915C();
    (*(v8 + 16))(v12, v15, v7);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Subscription error: %@", v18, 0xCu);
      sub_100006CAC(v19, &qword_100093F70, &qword_1000730D0);
    }

    return (*(v8 + 8))(v12, v7);
  }

  v22 = sub_10003915C();
  (*(v8 + 16))(v14, v22, v7);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42[0] = v26;
    *v25 = 136315138;
    swift_beginAccess();
    v41 = v7;
    v27 = *(a4 + 16);
    sub_100004890(0, &qword_1000937A0, CKSubscription_ptr);

    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_1000034B8(v28, v30, v42);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Successfully subscribed to %s", v25, 0xCu);
    sub_1000036EC(v26);

    (*(v8 + 8))(v14, v41);
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  result = swift_beginAccess();
  v32 = *(a4 + 16);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v32 < 0)
  {
    v39 = *(a4 + 16);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v33 = result;
  if (result)
  {
LABEL_10:
    if (v33 < 1)
    {
      __break(1u);
    }

    else
    {

      v34 = 0;
      do
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v35 = *(v32 + 8 * v34 + 32);
        }

        v36 = v35;
        ++v34;
        v37 = CKSubscription.subscriptionID.getter();
        v42[3] = &type metadata for Bool;
        LOBYTE(v42[0]) = 1;
        sub_1000173C8(2, v37, v38, v42);

        sub_100006CAC(v42, &qword_100092CB8, &qword_100072C40);
      }

      while (v33 != v34);
    }
  }

  return result;
}

uint64_t sub_10001BF80()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10003915C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "CKAccountChanged notification received", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for Transaction();
  __chkstk_darwin(v11);
  *&v13[-32] = v1;
  *&v13[-24] = sub_100037A50;
  *&v13[-16] = v1;

  static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountStatus", 37, 2, sub_100037A58);
}

uint64_t sub_10001C260(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v103 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  v102 = &v96 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v96 - v15;
  v17 = __chkstk_darwin(v14);
  v105 = &v96 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v96 - v20;
  v22 = __chkstk_darwin(v19);
  v101 = &v96 - v23;
  v24 = __chkstk_darwin(v22);
  v100 = &v96 - v25;
  __chkstk_darwin(v24);
  v27 = &v96 - v26;
  v28 = sub_10003915C();
  v29 = v5[2];
  v107 = v28;
  v106 = v5 + 2;
  v108 = v29;
  (v29)(v27);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v32 = os_log_type_enabled(v30, v31);
  v99 = v16;
  v98 = v21;
  v104 = v9;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v97 = v4;
    v34 = v33;
    *&aBlock = swift_slowAlloc();
    *v34 = 136315394;
    v35 = *&a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus];
    v36 = CKStringFromAccountStatus();
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v5;
    v38 = a2;
    v40 = v39;

    v41 = sub_1000034B8(v37, v40, &aBlock);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    v42 = CKStringFromAccountStatus();
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_1000034B8(v43, v45, &aBlock);
    a2 = v38;
    v5 = v96;

    *(v34 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v30, v31, "iCloud Account Changed from %s -> %s", v34, 0x16u);
    swift_arrayDestroy();

    v4 = v97;
  }

  v47 = v5[1];
  v47(v27, v4);
  v48 = *&a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus];
  *&a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_currentAccountStatus] = a1;
  a2[OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_accountAvailable] = a1 == 1;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v49 = v102;
      v108(v102, v107, v4);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "iCloud Account state cannot be determined!";
        goto LABEL_31;
      }

LABEL_32:

      return (v47)(v49, v4);
    }

    if (a1 != 1)
    {
LABEL_29:
      v49 = v104;
      v108(v104, v107, v4);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        v53 = "Unknown CKAccountStatus!";
        goto LABEL_31;
      }

      goto LABEL_32;
    }

    v54 = v100;
    v108(v100, v107, v4);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "iCloud Account Available", v57, 2u);
    }

    result = (v47)(v54, v4);
    if (v48 != 1)
    {
      sub_10001D9E4(0);
      v59 = type metadata accessor for Transaction();
      __chkstk_darwin(v59);
      *(&v96 - 4) = a2;
      *(&v96 - 3) = sub_100037ACC;
      *(&v96 - 2) = a2;

      static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.accountInfo", 35, 2, sub_100037AD8);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v60 = v101;
        v108(v101, v107, v4);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "iCloud Account not available due to restrictions!", v63, 2u);
        }

        v47(v60, v4);
        if (v48 == 2)
        {
          v64 = v98;
          v108(v98, v107, v4);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            v68 = "Account was already in .restricted state";
LABEL_25:
            _os_log_impl(&_mh_execute_header, v65, v66, v68, v67, 2u);
          }

LABEL_26:

          return (v47)(v64, v4);
        }

        break;
      case 3:
        break;
      case 4:
        v49 = v103;
        v108(v103, v107, v4);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          v53 = "iCloud Account temporarily unavailable!";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v50, v51, v53, v52, 2u);

          goto LABEL_32;
        }

        goto LABEL_32;
      default:
        goto LABEL_29;
    }

    v69 = v105;
    v108(v105, v107, v4);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "iCloud Account not available!", v72, 2u);
    }

    v73 = (v47)(v69, v4);
    if (v48 == 3)
    {
      v64 = v99;
      v108(v99, v107, v4);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        v68 = "Account was already in .noAccount state";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v74 = *(*a2 + 264);
    v108 = a2;
    v74(v113, v73);
    v75 = v114;
    v117 = v114;
    v116 = v113[0];

    sub_100034994(&v116);
    v115 = v113[1];
    sub_100034994(&v115);
    sub_100006CAC(&v117, &qword_100094180, &qword_100074290);
    v76 = *(v75 + 16);
    if (v76)
    {
      v77 = (v75 + 40);
      do
      {
        v78 = *(v77 - 1);
        v79 = *v77;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;

        _StringGuts.grow(_:)(38);

        *&aBlock = 0xD000000000000024;
        *(&aBlock + 1) = 0x8000000100079F20;
        v80._countAndFlagsBits = v78;
        v80._object = v79;
        String.append(_:)(v80);

        v81 = aBlock;
        *(&v110 + 1) = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        sub_1000173C8(2, v81, *(&aBlock + 1), &aBlock);

        sub_100006CAC(&aBlock, &qword_100092CB8, &qword_100072C40);
        v77 += 2;
        --v76;
      }

      while (v76);
    }

    sub_100006CAC(&v117, &qword_100094180, &qword_100074290);
    v82 = v108;
    v83 = sub_100019AA4();
    v84 = [v83 privateCloudDatabase];

    v85 = sub_10001B9C8();
    v86 = CKSubscription.subscriptionID.getter();
    v88 = v87;

    v110 = 0u;
    aBlock = 0u;
    sub_1000173C8(2, v86, v88, &aBlock);

    sub_100006CAC(&aBlock, &qword_100092CB8, &qword_100072C40);
    *(v82 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
    v89 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    v90 = *(v82 + v89);
    *(v82 + v89) = &_swiftEmptyDictionarySingleton;

    v91 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    swift_beginAccess();
    v92 = *(v82 + v91);
    *(v82 + v91) = &_swiftEmptyDictionarySingleton;

    v93 = *(v82 + 9);
    v94 = swift_allocObject();
    *(v94 + 16) = sub_100037AC4;
    *(v94 + 24) = v82;
    v111 = sub_100038A58;
    v112 = v94;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v110 = sub_10001437C;
    *(&v110 + 1) = &unk_10008AA00;
    v95 = _Block_copy(&aBlock);

    dispatch_sync(v93, v95);
    _Block_release(v95);
    LOBYTE(v93) = swift_isEscapingClosureAtFileLocation();

    if (v93)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001CFEC(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = (v16 - v6);
  v8 = (*(*a1 + 288))(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v3 + 80);
    v16[1] = v8;
    v11 = v8 + ((v10 + 32) & ~v10);
    v12 = *(v3 + 72);
    do
    {
      sub_100006C44(v11, v7, &qword_100093F40, &qword_1000730E0);
      v13 = v7[3];
      v14 = v7[4];
      sub_1000078C8(v7, v13);
      (*(v14 + 32))(a1, v13, v14);
      sub_100006CAC(v7, &qword_100093F40, &qword_1000730E0);
      v11 += v12;
      --v9;
    }

    while (v9);
  }
}

void sub_10001D1B4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10001D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100019AA4();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_100037A88;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001D96C;
  v11[3] = &unk_10008A960;
  v10 = _Block_copy(v11);

  [v8 accountStatusWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_10001D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v54 = a4;
  v59 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchQoS();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v49[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v49[-v23];
  Transaction.capture()();
  if (a2)
  {
    v53 = a5;
    swift_errorRetain();
    v25 = sub_10003915C();
    (*(v18 + 16))(v24, v25, v17);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52 = a6;
      v30 = v29;
      *v28 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "error fetching account status: %@", v28, 0xCu);
      sub_100006CAC(v30, &qword_100093F70, &qword_1000730D0);
      a6 = v52;
    }

    else
    {
    }

    (*(v18 + 8))(v24, v17);
    a5 = v53;
  }

  else
  {
    v32 = sub_10003915C();
    (*(v18 + 16))(v22, v32, v17);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v51 = v35;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v35 = 136315138;
      v36 = a6;
      v37 = CKStringFromAccountStatus();
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = a5;
      v39 = v38;
      v50 = v34;
      v41 = v40;

      a6 = v36;
      v42 = sub_1000034B8(v39, v41, aBlock);

      v43 = v51;
      *(v51 + 1) = v42;
      a5 = v53;
      _os_log_impl(&_mh_execute_header, v33, v50, "Fetched CK account status: %s", v43, 0xCu);
      sub_1000036EC(v52);
    }

    (*(v18 + 8))(v22, v17);
  }

  v44 = *(v54 + 56);
  v45 = swift_allocObject();
  v45[2] = a5;
  v45[3] = a6;
  v45[4] = v59;
  aBlock[4] = sub_100037A94;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A9B0;
  v46 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  v47 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);
  (*(v57 + 8))(v12, v47);
  (*(v55 + 8))(v16, v56);
}

void sub_10001D96C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_10001D9E4(int a1)
{
  v2 = v1;
  v86 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v94 = *(v3 - 8);
  v4 = v94[8];
  __chkstk_darwin(v3);
  v6 = (v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v91 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v79 - v12;
  v14 = sub_10003915C();
  v15 = *(v8 + 16);
  v84 = v14;
  v85 = v8 + 16;
  v83 = v15;
  (v15)(v13);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v89 = v8;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v92 = v19;
    v93 = swift_slowAlloc();
    *&v99[0] = v93;
    *v19 = 136315138;
    v20 = *(*v2 + 264);
    LODWORD(v90) = v17;
    v20(v96);
    v108 = v96[0];

    sub_100034994(&v108);
    v107 = v96[1];
    sub_100034994(&v107);

    v21 = v3;
    v22 = Array.description.getter();
    v24 = v23;

    v25 = v22;
    v3 = v21;
    v26 = sub_1000034B8(v25, v24, v99);

    v27 = v92;
    *(v92 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v90, "setupZones: %s", v27, 0xCu);
    sub_1000036EC(v93);

    v28 = v89;
  }

  else
  {

    v28 = v8;
  }

  v29 = *(v28 + 8);
  v29(v13, v7);
  v30 = v2[8];
  *v6 = v30;
  v31 = v94;
  (v94[13])(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v88 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (v31[1])(v6, v3);
  if (v30)
  {
    v82 = v29;
    v90 = v7;
    v87 = dispatch_group_create();
    v32 = (*v2 + 264);
    v33 = *v32;
    v93 = v2;
    v79[1] = v32;
    v80 = v33;
    v33(v97);
    v34 = v98;
    v106 = v98;
    v105 = v97[0];

    sub_100034994(&v105);
    v104 = v97[1];
    sub_100034994(&v104);
    sub_100006CAC(&v106, &qword_100094180, &qword_100074290);
    v35 = 0;
    v81 = 0;
    *&v99[0] = _swiftEmptyArrayStorage;
    v36 = *(v34 + 16);
    v37 = (v34 + 40);
    v92 = _swiftEmptyArrayStorage;
    v94 = (v34 + 40);
LABEL_6:
    v38 = &v37[2 * v35];
    while (v36 != v35)
    {
      if (v35 >= *(v34 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      ++v35;
      v39 = v38 + 2;
      v41 = *(v38 - 1);
      v40 = *v38;
      v42 = objc_allocWithZone(CKRecordZone);

      v43 = String._bridgeToObjectiveC()();

      v44 = [v42 initWithZoneName:v43];

      v38 = v39;
      if (v44)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v45 = *((*&v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v92 = *&v99[0];
        v37 = v94;
        goto LABEL_6;
      }
    }

    v46 = sub_100006CAC(&v106, &qword_100094180, &qword_100074290);
    v47 = &off_100091000;
    if (v86)
    {
      v80(v99, v46);
      v48 = v100;
      v103 = v100;
      v102 = v99[0];

      sub_100034994(&v102);
      v101 = v99[1];
      sub_100034994(&v101);
      sub_100006CAC(&v103, &qword_100094180, &qword_100074290);
      v49 = _swiftEmptyArrayStorage;
      v95 = _swiftEmptyArrayStorage;
      v50 = *(v48 + 16);
      if (v50)
      {
        v51 = 0;
        v94 = CKCurrentUserDefaultName;
        v52 = (v48 + 40);
        while (v51 < *(v48 + 16))
        {
          v53 = v48;
          v55 = *(v52 - 1);
          v54 = *v52;
          sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
          v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v58 = v57;

          v59._countAndFlagsBits = v55;
          v59._object = v54;
          v60._countAndFlagsBits = v56;
          v60._object = v58;
          CKRecordZoneID.init(zoneName:ownerName:)(v59, v60);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          ++v51;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v52 += 2;
          v48 = v53;
          if (v50 == v51)
          {
            LOBYTE(v49) = v95;
            v47 = &off_100091000;
            goto LABEL_21;
          }
        }

        goto LABEL_30;
      }

LABEL_21:
      sub_100006CAC(&v103, &qword_100094180, &qword_100074290);
      sub_100004890(0, &qword_100093770, CKModifyRecordZonesOperation_ptr);
      v109.value._rawValue = 0;
      v109.is_nil = v49;
      v61 = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v109, v111).super.super.super.super.isa;
      [(objc_class *)v61 setCallbackQueue:v88];
      v62 = sub_100019BDC();
      [(objc_class *)v61 setGroup:v62];

      v63 = v87;
      dispatch_group_enter(v87);
      v64 = swift_allocObject();
      *(v64 + 16) = v92;
      *(v64 + 24) = v63;

      v65 = v63;
      CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
      if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
      {
        [(objc_class *)v61 setQualityOfService:25];
      }

      v66 = sub_100019AA4();
      v67 = [v66 privateCloudDatabase];

      [v67 v47[356]];
    }

    sub_100004890(0, &qword_100093770, CKModifyRecordZonesOperation_ptr);
    v68 = v92;

    v110.is_nil = 0;
    v69 = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v110, v112).super.super.super.super.isa;
    [(objc_class *)v69 setCallbackQueue:v88];
    v70 = sub_100019BB8();
    [(objc_class *)v69 setGroup:v70];

    v71 = v87;
    dispatch_group_enter(v87);
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    *(v72 + 24) = v71;
    v73 = v71;
    CKModifyRecordZonesOperation.modifyRecordZonesResultBlock.setter();
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v69 setQualityOfService:25];
    }

    v74 = sub_100019AA4();
    v75 = [v74 privateCloudDatabase];

    [v75 v47[356]];
    v83(v91, v84, v90);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v76, v77, "Waiting for all zone create tasks to complete.", v78, 2u);
    }

    v82(v91, v90);
    OS_dispatch_group.wait()();
    type metadata accessor for Transaction();
    static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.setupCloudNotifications", 47, 2, sub_1000379A0);
  }

  else
  {
LABEL_31:
    __break(1u);
  }
}

void sub_10001E40C(uint64_t a1, char a2, uint64_t a3, NSObject *a4, const char *a5, const char *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  if (a2)
  {
    v19 = sub_10003915C();
    (*(v12 + 16))(v16, v19, v11);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, a6, v22, 0xCu);
      sub_100006CAC(v23, &qword_100093F70, &qword_1000730D0);
    }

    (*(v12 + 8))(v16, v11);
  }

  else
  {
    v25 = sub_10003915C();
    (*(v12 + 16))(v18, v25, v11);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v28 = 136315138;
      sub_100004890(0, &qword_100093778, CKRecordZone_ptr);
      v29 = Array.description.getter();
      v31 = a5;
      v32 = a4;
      v33 = sub_1000034B8(v29, v30, &v35);

      *(v28 + 4) = v33;
      a4 = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, v31, v28, 0xCu);
      sub_1000036EC(v34);
    }

    (*(v12 + 8))(v18, v11);
  }

  dispatch_group_leave(a4);
}

void sub_10001E748(void *a1, char a2, uint64_t a3)
{
  v122 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v120 = v5;
  v121 = v6;
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v108 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v108 - v19;
  v21 = __chkstk_darwin(v18);
  v112 = &v108 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v108 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v108 - v27;
  __chkstk_darwin(v26);
  v30 = &v108 - v29;
  v31 = sub_10003915C();
  v32 = *(v13 + 16);
  if (a2)
  {
    v32(v30, v31, v12);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    sub_100008738(a1, 1);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      swift_errorRetain();
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&_mh_execute_header, v33, v34, "accountInfo error: %@", v35, 0xCu);
      sub_100006CAC(v36, &qword_100093F70, &qword_1000730D0);
    }

    (*(v13 + 8))(v30, v12);
    return;
  }

  v109 = v20;
  v115 = v31;
  v116 = v32;
  v117 = v13 + 16;
  (v32)(v28);
  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  sub_100008738(a1, 0);
  v41 = os_log_type_enabled(v39, v40);
  v113 = v12;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v119 = v13;
    v44 = v43;
    *v42 = 138412290;
    *(v42 + 4) = v38;
    *v43 = a1;
    v45 = v38;
    _os_log_impl(&_mh_execute_header, v39, v40, "accountInfo: %@", v42, 0xCu);
    sub_100006CAC(v44, &qword_100093F70, &qword_1000730D0);
    v13 = v119;

    v12 = v113;
  }

  v47 = *(v13 + 8);
  v46 = v13 + 8;
  v118 = v47;
  v47(v28, v12);
  if ([v38 accountStatus] == 1)
  {
    v48 = v12;
    v49 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v50 = *(v122 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable);
    v116(v25, v115, v48);
    v51 = v38;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    v54 = os_log_type_enabled(v52, v53);
    v119 = v46;
    if (v54)
    {
      v55 = swift_slowAlloc();
      *v55 = 67109120;
      *(v55 + 4) = [v51 supportsDeviceToDeviceEncryption];
      sub_100008738(a1, 0);
      _os_log_impl(&_mh_execute_header, v52, v53, "Setting manateeAvailable to %{BOOL}d", v55, 8u);
    }

    else
    {
      sub_100008738(a1, 0);
    }

    v118(v25, v113);
    v59 = [v51 supportsDeviceToDeviceEncryption];
    v60 = v122;
    *(v122 + v49) = v59;
    v61 = *(v60 + 72);
    v62 = swift_allocObject();
    *(v62 + 16) = sub_100037D00;
    *(v62 + 24) = v60;
    v126 = sub_100038A58;
    v127 = v62;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v125 = sub_10001437C;
    *(&v125 + 1) = &unk_10008AAA0;
    v63 = _Block_copy(&aBlock);

    dispatch_sync(v61, v63);
    _Block_release(v63);
    LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

    if (v61)
    {
LABEL_38:
      __break(1u);
      return;
    }

    if ((v50 & 1) != 0 || ![v51 supportsDeviceToDeviceEncryption])
    {
      notify_post("com.apple.bluetoothuser.cloudChanged");

      return;
    }

    v64 = v122;
    v111 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
    v65 = v114;
    URL.appendingPathComponent(_:isDirectory:)();
    URL.appendingPathComponent(_:)();
    v66 = v120;
    v67 = v121 + 8;
    v68 = *(v121 + 8);
    v68(v65, v120);
    v108 = sub_100034A48();
    v121 = v67;
    v114 = v68;
    v69 = (v68)(v11, v66);
    (*(*v64 + 264))(&aBlock, v69);
    v70 = v126;
    v130[0] = v126;
    v129 = aBlock;

    sub_100034994(&v129);
    v128 = v125;
    sub_100034994(&v128);
    sub_100006CAC(v130, &qword_100094180, &qword_100074290);
    v71 = *(v70 + 2);
    if (v71)
    {
      v72 = 0;
      v73 = (v70 + 40);
      v110 = CKCurrentUserDefaultName;
      while (v72 < *(v70 + 2))
      {
        v75 = *(v73 - 1);
        v74 = *v73;
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79._countAndFlagsBits = v75;
        v79._object = v74;
        v80._countAndFlagsBits = v76;
        v80._object = v78;
        isa = CKRecordZoneID.init(zoneName:ownerName:)(v79, v80).super.isa;
        URL.appendingPathComponent(_:isDirectory:)();
        v82._countAndFlagsBits = 0x65746176697250;
        v82._object = 0xE700000000000000;
        URL.appendPathComponent(_:)(v82);
        v83 = [(objc_class *)isa ownerName];
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = v85;

        v87._countAndFlagsBits = v84;
        v87._object = v86;
        URL.appendPathComponent(_:)(v87);

        v88 = [(objc_class *)isa zoneName];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        v123._countAndFlagsBits = v89;
        v123._object = v91;
        v92._countAndFlagsBits = 0x6E656B6F742ELL;
        v92._object = 0xE600000000000000;
        String.append(_:)(v92);
        URL.appendPathComponent(_:)(v123);

        v93 = sub_100034A48();
        (v114)(v11, v120);
        v94 = v93 == 0;
        if (v93)
        {
          ++v72;

          v73 += 2;
          if (v71 != v72)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_38;
    }

    v94 = 0;
LABEL_26:
    sub_100006CAC(v130, &qword_100094180, &qword_100074290);
    v95 = v112;
    v96 = v113;
    v116(v112, v115, v113);
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v97, v98, "Manatee PCS keys are now available", v99, 2u);
    }

    v118(v95, v96);
    v100 = v108;
    if (v108)
    {
      v101 = v94;
    }

    else
    {
      v101 = 1;
    }

    if ((v101 & 1) != 0 || (v102 = sub_1000694AC(), swift_beginAccess(), *v102 == 1))
    {
      v116(v109, v115, v96);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Fetching from cloud container", v105, 2u);
      }

      v118(v109, v96);
      v106 = v122;
      v107 = *(*v122 + 848);

      v107(2, 0, sub_100037D08, v106);
    }

    else
    {
      notify_post("com.apple.bluetoothuser.cloudChanged");
    }
  }

  else
  {
    v116(v17, v115, v12);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Account not available", v58, 2u);
    }

    v118(v17, v12);
  }
}

uint64_t sub_10001F430(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = (&v15 - v6);
  v8 = (*(*a1 + 288))(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v15 = v8;
    v16 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_100006C44(v10, v7, &qword_100093F40, &qword_1000730E0);
      v12 = v7[3];
      v13 = v7[4];
      sub_1000078C8(v7, v12);
      (*(v13 + 24))(a1, *(a1 + v16), v12, v13);
      sub_100006CAC(v7, &qword_100093F40, &qword_1000730E0);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_10001F608(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:isDirectory:)();
  if (a1 != 3 && a1 != 2 && a1 != 1)
  {
    v12 = sub_10003915C();
    (*(v3 + 16))(v6, v12, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unknown CKDatabase.Scope!", v15, 2u);
    }

    (*(v3 + 8))(v6, v2);
  }

  URL.appendingPathComponent(_:)();
  return (*(v8 + 8))(v11, v7);
}

void sub_10001FB74(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  if (a2)
  {
    v12 = sub_10003915C();
    (*(v5 + 16))(v11, v12, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      swift_errorRetain();
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error from fetchChanges: %@", v15, 0xCu);
      sub_100006CAC(v16, &qword_100093F70, &qword_1000730D0);
    }

    (*(v5 + 8))(v11, v4);
    sub_100026830(a1, 1);
  }

  else
  {
    v18 = sub_10003915C();
    (*(v5 + 16))(v9, v18, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "fetchChanges succeeded", v21, 2u);
    }

    (*(v5 + 8))(v9, v4);
  }
}

void sub_10001FE30(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  if (a1 == 1)
  {
    v24 = sub_10003915C();
    (*(v8 + 16))(v15, v24, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "NOT USING PUBLIC DB", v27, 2u);
    }

    (*(v8 + 8))(v15, v7);
    goto LABEL_16;
  }

  if (a1 == 3)
  {
    v20 = sub_10003915C();
    (*(v8 + 16))(v17, v20, v7);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "NOT USING SHARED DB", v23, 2u);
    }

    (*(v8 + 8))(v17, v7);
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    v28 = sub_10003915C();
    (*(v8 + 16))(v12, v28, v7);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown CKDatabase.Scope!", v31, 2u);
    }

    (*(v8 + 8))(v12, v7);
LABEL_16:
    sub_100034DB0();
    swift_allocError();
    *v32 = 1;
    a3();

    return;
  }

  v18 = sub_100019AA4();
  v34 = [v18 privateCloudDatabase];

  sub_100034E04(v34, a3, a4);
  v19 = v34;
}

void sub_1000201E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v66 = a3;
  v6 = type metadata accessor for Logger();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  v8 = __chkstk_darwin(v6);
  v72 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v59 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = swift_allocObject();
  *(v71 + 16) = _swiftEmptyArrayStorage;
  v70 = swift_allocObject();
  *(v70 + 16) = _swiftEmptyArrayStorage;
  sub_10001F608([a2 scope]);
  v17 = sub_100034A48();
  (*(v13 + 8))(v16, v12);
  v18 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v17];
  v67 = a1;
  v19 = sub_100019D5C();
  [v18 setGroup:v19];

  [v18 setFetchAllChanges:1];
  v20 = sub_10003915C();
  v21 = *(v73 + 16);
  v64 = v73 + 16;
  v65 = v20;
  v22 = v6;
  v63 = v21;
  (v21)(v11);
  v23 = a2;
  v69 = v17;
  v24 = v17;
  v62 = v11;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v22;
    v28 = v24;
    v29 = v27;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v29 = 136315394;
    [v23 scope];
    v32 = CKDatabaseScopeString();
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v23;
    v34 = v33;
    v36 = v35;

    v37 = sub_1000034B8(v34, v36, &aBlock);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v28;
    *v30 = v69;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v25, v26, "Old %s database change token: %@", v29, 0x16u);
    sub_100006CAC(v30, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v31);

    v24 = v28;
    v39 = v60;
    v40 = v61;

    v22 = v40;
    (*(v73 + 8))(v62, v40);
  }

  else
  {

    (*(v73 + 8))(v62, v22);
    v39 = v23;
  }

  v41 = v71;
  v78 = sub_100038278;
  v79 = v71;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_100038ADC;
  v77 = &unk_10008AD70;
  v42 = _Block_copy(&aBlock);

  [v18 setRecordZoneWithIDChangedBlock:v42];
  _Block_release(v42);
  v43 = v70;
  v78 = sub_100038280;
  v79 = v70;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_100038ADC;
  v77 = &unk_10008AD98;
  v44 = _Block_copy(&aBlock);

  [v18 setRecordZoneWithIDWasDeletedBlock:v44];
  _Block_release(v44);
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  v78 = sub_100038328;
  v79 = v45;
  aBlock = _NSConcreteStackBlock;
  v75 = 1107296256;
  v76 = sub_100038ADC;
  v77 = &unk_10008ADE8;
  v46 = _Block_copy(&aBlock);
  v47 = v39;

  [v18 setChangeTokenUpdatedBlock:v46];
  _Block_release(v46);
  v48 = swift_allocObject();
  v49 = v66;
  v48[2] = v67;
  v48[3] = v49;
  v50 = v69;
  v48[4] = v68;
  v48[5] = v47;
  v48[6] = v43;
  v48[7] = v41;
  v48[8] = v50;
  v51 = v47;
  v52 = v24;

  CKFetchDatabaseChangesOperation.fetchDatabaseChangesResultBlock.setter();
  v63(v72, v65, v22);
  v53 = v18;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    *(v56 + 4) = v53;
    *v57 = v53;
    v58 = v53;
    _os_log_impl(&_mh_execute_header, v54, v55, "Adding Cloud operation %@", v56, 0xCu);
    sub_100006CAC(v57, &qword_100093F70, &qword_1000730D0);
  }

  (*(v73 + 8))(v72, v22);
  [v51 addOperation:v53];
}

uint64_t sub_100020998(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v10 = sub_10003915C();
  (*(v5 + 16))(v8, v10, v4);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Record Zone ID Changed: %@", v14, 0xCu);
    sub_100006CAC(v15, &qword_100093F70, &qword_1000730D0);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100020BCC(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10003915C();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a2;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    [v10 scope];
    v16 = CKDatabaseScopeString();
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v4;
    v19 = v18;

    v20 = sub_1000034B8(v17, v19, &v26);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Change token updated, database, %s, token, %@", v14, 0x16u);
    sub_100006CAC(v15, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v25);

    return (*(v5 + 8))(v8, v24);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100020E38(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100020EA0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t), uint64_t (*a5)(void *, uint64_t), uint64_t *a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v176 = a8;
  v177 = a3;
  v181 = a6;
  v160 = a4;
  v168 = type metadata accessor for URL();
  v159 = *(v168 - 8);
  v13 = *(v159 + 64);
  v14 = __chkstk_darwin(v168);
  v157 = &v149[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v18 = &v149[-v17];
  v156 = v19;
  __chkstk_darwin(v16);
  v169 = &v149[-v20];
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v180 = &v149[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __chkstk_darwin(v24);
  v173 = &v149[-v27];
  v28 = __chkstk_darwin(v26);
  v172 = &v149[-v29];
  v30 = __chkstk_darwin(v28);
  v174 = &v149[-v31];
  v32 = __chkstk_darwin(v30);
  v34 = &v149[-v33];
  __chkstk_darwin(v32);
  v36 = &v149[-v35];
  v37 = sub_10003915C();
  v38 = *(v22 + 16);
  v167 = v21;
  if ((a2 & 0x100) != 0)
  {
    v38(v36, v37, v21);
    swift_errorRetain();
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    sub_100038374(a1, a2, 1);
    v75 = os_log_type_enabled(v73, v74);
    v76 = v160;
    if (v75)
    {
      v77 = v22;
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v80;
      *v79 = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "Error during fetch database changes operation: %@", v78, 0xCu);
      sub_100006CAC(v79, &qword_100093F70, &qword_1000730D0);

      v22 = v77;
    }

    (*(v22 + 8))(v36, v167);
    sub_100026830(a1, 0);
    return v76(a1, 1);
  }

  v182 = v22;
  v154 = a5;
  v171 = a7;
  v178 = a7 + 16;
  v163 = v22 + 16;
  v164 = v37;
  v162 = v38;
  (v38)(v34);
  sub_100038368(a1, a2, 0);
  v39 = v181;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  sub_100038374(a1, a2, 0);
  v42 = os_log_type_enabled(v40, v41);
  v175 = v18;
  v179 = v39;
  v155 = a1;
  v150 = a2;
  if (v42)
  {
    v43 = swift_slowAlloc();
    LODWORD(v170) = v41;
    v44 = v43;
    v45 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v184 = v181;
    *v44 = 67109634;
    *(v44 + 4) = a2 & 1;
    *(v44 + 8) = 2080;
    [v39 scope];
    v46 = CKDatabaseScopeString();
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_1000034B8(v47, v49, &v184);

    *(v44 + 10) = v50;
    *(v44 + 18) = 2112;
    *(v44 + 20) = a1;
    *v45 = a1;
    v51 = a1;
    _os_log_impl(&_mh_execute_header, v40, v170, "Fetch database changes complete, moreComing %{BOOL}d, database, %s, token, %@", v44, 0x1Cu);
    sub_100006CAC(v45, &qword_100093F70, &qword_1000730D0);
    v18 = v175;

    sub_1000036EC(v181);
  }

  v52 = v182;
  v161 = *(v182 + 8);
  v161(v34, v21);
  v53 = v176;
  v54 = v21;
  v55 = v178;
  swift_beginAccess();
  v56 = v180;
  v57 = v171;
  if (*v55 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v59 = v179;
    v60 = &off_100091000;
    if (i)
    {
      v61 = v174;
      v162(v174, v164, v54);

      v54 = v57;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v54 = v61;
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v184 = v65;
        *v64 = 136315138;
        swift_beginAccess();
        v66 = *v55;
        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);

        v67 = Array.description.getter();
        v69 = v68;

        v70 = v67;
        v55 = v178;
        v71 = sub_1000034B8(v70, v69, &v184);
        v18 = v175;

        *(v64 + 4) = v71;
        _os_log_impl(&_mh_execute_header, v62, v63, "Cloud zone deleted: %s", v64, 0xCu);
        sub_1000036EC(v65);
        v60 = &off_100091000;

        v72 = v54;
      }

      else
      {

        v72 = v61;
      }

      v161(v72, v167);
      v56 = v177;
      v82 = v177[9];
      v83 = swift_allocObject();
      *(v83 + 16) = v56;
      *(v83 + 24) = v55;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_100038380;
      *(v53 + 24) = v83;
      v153 = v83;
      v188 = sub_100038A58;
      v189 = v53;
      v184 = _NSConcreteStackBlock;
      v185 = 1107296256;
      v186 = sub_10001437C;
      v187 = &unk_10008AE88;
      v52 = _Block_copy(&v184);

      dispatch_sync(v82, v52);
      _Block_release(v52);
      LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

      if (v82)
      {
        __break(1u);
        goto LABEL_91;
      }

      v84 = v172;
      v162(v172, v164, v167);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Re-Setup Zones", v87, 2u);
      }

      v52 = v182;
      v161(v84, v167);
      sub_10001D9E4(0);
      v152 = sub_100038380;
      v53 = v176;
      v56 = v180;
      v55 = v178;
    }

    else
    {
      v152 = 0;
      v153 = 0;
    }

    swift_beginAccess();
    v88 = *v55;
    if (!(*v55 >> 62))
    {
      if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

LABEL_20:
      swift_beginAccess();
      v89 = *(v53 + 16);
      if (!(v89 >> 62))
      {
        if (!*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

LABEL_22:
        if (!a9)
        {
          v162(v173, v164, v167);
          v90 = Logger.logObject.getter();
          v91 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&_mh_execute_header, v90, v91, "New Account Setup Zones", v92, 2u);
            v52 = v182;
          }

          v161(v173, v167);
          sub_10001D9E4(0);
          v53 = v176;
        }

        goto LABEL_26;
      }

LABEL_91:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v88 < 0)
    {
      v143 = *v55;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_20;
    }

LABEL_26:
    v93 = *(*v177 + 264);
    v173 = (*v177 + 264);
    v174 = v93;
    v93(v190);
    v94 = v191;
    v198[0] = v191;
    v57 = v190;
    v197 = v190[0];

    sub_100034994(&v197);
    v196 = v190[1];
    sub_100034994(&v196);
    sub_100006CAC(v198, &qword_100094180, &qword_100074290);
    v171 = *(v94 + 16);
    v172 = v94;
    if (v171)
    {
      v170 = v172 + 32;
      swift_beginAccess();
      v55 = 0;
      v158 = v52 + 8;
      v165 = (v159 + 8);
      v166 = CKCurrentUserDefaultName;
      *&v95 = 136315138;
      v151 = v95;
      while (v55 < *(v172 + 2))
      {
        v96 = &v170[16 * v55];
        v18 = v96[1];
        v182 = *v96;
        v57 = *(v53 + 16);
        v181 = (v57 & 0xFFFFFFFFFFFFFF8);
        if (v57 >> 62)
        {
          v53 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v53 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v178 = ++v55;

        v97 = 0;
        while (v53 != v97)
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v98 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v97 >= v181[2])
            {
              goto LABEL_75;
            }

            v98 = *(v57 + 8 * v97 + 32);
          }

          v54 = v98;
          if (__OFADD__(v97, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v99 = [v98 zoneName];
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v101;

          v102 = v100 == v182 && v52 == v18;
          if (v102)
          {

            v18 = v175;
            v53 = v176;
            v59 = v179;
            v56 = v180;
            v55 = v178;
            goto LABEL_29;
          }

          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v97;
          v56 = v180;
          if (v55)
          {

            v18 = v175;
            v53 = v176;
            v55 = v178;
            v59 = v179;
            goto LABEL_29;
          }
        }

        sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        v106._countAndFlagsBits = v182;
        v106._object = v18;
        v107._countAndFlagsBits = v103;
        v107._object = v105;
        v108.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v106, v107).super.isa;
        v59 = v179;
        v109 = [v179 scope];
        v52 = v169;
        v57 = v177;
        sub_10001F8BC(v109, v108.super.isa);
        v110 = sub_100034A48();
        if (v110)
        {
          v111 = v110;

          v18 = v175;
          v53 = v176;
          v55 = v178;
        }

        else
        {
          v54 = v167;
          v162(v56, v164, v167);

          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v112, v113))
          {
            v52 = swift_slowAlloc();
            v114 = swift_slowAlloc();
            v184 = v114;
            *v52 = v151;
            v115 = sub_1000034B8(v182, v18, &v184);

            *(v52 + 4) = v115;
            v56 = v180;
            _os_log_impl(&_mh_execute_header, v112, v113, "Adding fetch operation for new zone: %s", v52, 0xCu);
            sub_1000036EC(v114);
          }

          else
          {
          }

          v161(v56, v54);
          v55 = v178;
          v116 = v176;
          swift_beginAccess();
          v117 = v108.super.isa;
          v53 = v116;
          v111 = v117;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = v175;
          if (*((*(v53 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v118 = *((*(v116 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v53 = v176;
          }

          v57 = v53 + 16;
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }

        (*v165)(v169, v168);
LABEL_29:
        v60 = &off_100091000;
        if (v55 == v171)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_78;
    }

LABEL_56:
    sub_100006CAC(v198, &qword_100094180, &qword_100074290);
    swift_beginAccess();
    v52 = *(v53 + 16);
    v183 = _swiftEmptyArrayStorage;
    v55 = v52 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v55)
    {
      break;
    }

    v18 = 0;
    v53 = 0;
    v181 = (v52 & 0xFFFFFFFFFFFFFF8);
    v182 = v52 & 0xC000000000000001;
    v180 = v52;
    v178 = v55;
    while (1)
    {
      if (v182)
      {
        v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= v181[2])
        {
          goto LABEL_77;
        }

        v119 = *(v52 + 8 * v18 + 32);
      }

      v120 = v119;
      v121 = v18 + 1;
      v57 = v177;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v174(v192);
      v57 = v193;
      v195 = v192[0];

      sub_100034994(&v195);
      v194 = v192[1];
      sub_100034994(&v194);

      v122 = [v120 zoneName];
      v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v124;

      v56 = v149;
      v184 = v123;
      v185 = v54;
      __chkstk_darwin(v125);
      *&v149[-16] = &v184;
      LOBYTE(v122) = sub_1000225A4(sub_100038AF4, &v149[-32], v57);

      if (v122)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v126 = v183[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57 = &v183;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v59 = v179;
      v52 = v180;
      v55 = v178;
      ++v18;
      v102 = v121 == v178;
      v60 = &off_100091000;
      if (v102)
      {
        v127 = v183;
        v18 = v175;
        v53 = v176;
        goto LABEL_71;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  v127 = _swiftEmptyArrayStorage;
LABEL_71:

  swift_beginAccess();
  v128 = *(v53 + 16);
  *(v53 + 16) = v127;

  sub_10001F608([v59 v60[336]]);
  swift_beginAccess();
  v129 = *(v53 + 16);
  if (v129 >> 62)
  {
    if (v129 < 0)
    {
      v144 = *(v53 + 16);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_88;
    }

LABEL_73:
    swift_beginAccess();
    v130 = *(v53 + 16);
    v131 = v159;
    v132 = v157;
    v133 = v18;
    v134 = v168;
    (*(v159 + 16))(v157, v133, v168);
    v135 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v136 = (v156 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
    v137 = swift_allocObject();
    v138 = v177;
    v139 = v155;
    *(v137 + 16) = v177;
    *(v137 + 24) = v139;
    (*(v131 + 32))(v137 + v135, v132, v134);
    v140 = (v137 + v136);
    v141 = v154;
    *v140 = v160;
    v140[1] = v141;
    v142 = *(*v138 + 864);
    sub_100038368(v139, v150, 0);

    v142(v179, v130, sub_1000383E0, v137);

    (*(v131 + 8))(v175, v134);
    return sub_100008364(v152);
  }

  else
  {
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

LABEL_88:
    sub_1000351D8(v155, v18);
    v145 = v177;
    v146 = v177[9];
    v147 = swift_allocObject();
    *(v147 + 16) = sub_100038494;
    *(v147 + 24) = v145;
    v188 = sub_100038A58;
    v189 = v147;
    v184 = _NSConcreteStackBlock;
    v185 = 1107296256;
    v186 = sub_10001437C;
    v187 = &unk_10008AF00;
    v148 = _Block_copy(&v184);

    dispatch_sync(v146, v148);
    _Block_release(v148);
    LOBYTE(v146) = swift_isEscapingClosureAtFileLocation();

    if (v146)
    {
      __break(1u);
    }

    else
    {
      v160(0, 0);
      (*(v159 + 8))(v18, v168);
      sub_100008364(v152);
    }
  }

  return result;
}

uint64_t sub_1000223A4(uint64_t a1, uint64_t *a2)
{
  v22 = a2;
  v3 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v8 = (v19 - v7);
  v9 = (*(*a1 + 288))(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v19[1] = v9;
    v12 = v9 + v11;
    swift_beginAccess();
    v13 = *(v4 + 72);
    v20 = a1;
    v21 = v13;
    do
    {
      sub_100006C44(v12, v8, &qword_100093F40, &qword_1000730E0);
      v15 = v8[3];
      v14 = v8[4];
      sub_1000078C8(v8, v15);
      v16 = *v22;
      v17 = *(v14 + 16);

      v17(v20, v16, v15, v14);

      sub_100006CAC(v8, &qword_100093F40, &qword_1000730E0);
      v12 += v21;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1000225A4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100022650(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = _swiftEmptyArrayStorage;
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_100006C44(a3 + v16 + v17 * v14, v13, &qword_100093F40, &qword_1000730E0);
      v18 = a1(v13);
      if (v3)
      {
        sub_100006CAC(v13, &qword_100093F40, &qword_1000730E0);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_100035FF0(v13, v25, &qword_100093F40, &qword_1000730E0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100032294(0, v15[2] + 1, 1);
          v15 = v27;
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          sub_100032294(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        v15[2] = v21 + 1;
        result = sub_100035FF0(v25, v15 + v16 + v21 * v17, &qword_100093F40, &qword_1000730E0);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_100006CAC(v13, &qword_100093F40, &qword_1000730E0);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    return v15;
  }

  return result;
}

uint64_t sub_1000228D4(uint64_t a1, int a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, void), void *a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v31[-v18];
  if (a2)
  {
    v33 = a6;
    v20 = sub_10003915C();
    (*(v13 + 16))(v19, v20, v12);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Database Error from fetchZoneChanges: %@", v23, 0xCu);
      sub_100006CAC(v24, &qword_100093F70, &qword_1000730D0);
    }

    (*(v13 + 8))(v19, v12);
  }

  else
  {
    v33 = a3;
    v26 = sub_10003915C();
    (*(v13 + 16))(v17, v26, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v32 = a2;
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Database fetchZoneChanges succeeded", v29, 2u);
      LOBYTE(a2) = v32;
    }

    (*(v13 + 8))(v17, v12);
    sub_1000351D8(v33, a4);
  }

  return a5(a1, a2 & 1);
}

uint64_t sub_100022BDC(uint64_t a1)
{
  v2 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v7 = (&v15 - v6);
  v8 = (*(*a1 + 288))(v5);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    v15 = v8;
    v16 = v11;
    do
    {
      sub_100006C44(v10, v7, &qword_100093F40, &qword_1000730E0);
      v12 = v7[3];
      v13 = v7[4];
      sub_1000078C8(v7, v12);
      (*(v13 + 8))(a1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v12, v13);
      sub_100006CAC(v7, &qword_100093F40, &qword_1000730E0);
      v10 += v16;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_100022DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004890(0, &qword_100092CC0, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = v4;
  v22 = v27;
  v21 = v28;
  v20[4] = v27;
  v20[5] = v21;
  v20[6] = v29;
  aBlock[4] = sub_100035C9C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A1A0;
  v23 = _Block_copy(aBlock);

  v24 = v22;

  static DispatchQoS.unspecified.getter();
  v33 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v13, v31);
}

void sub_100023194(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v105 = a4;
  v120 = a3;
  v121 = a2;
  v119 = type metadata accessor for URL();
  v7 = *(v119 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v119);
  v112 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v104 - v17;
  v19 = __chkstk_darwin(v16);
  v108 = &v104 - v20;
  __chkstk_darwin(v19);
  v22 = &v104 - v21;
  v23 = sub_10003915C();
  v24 = *(v11 + 16);
  v123 = v23;
  v124 = v11 + 16;
  v128 = v10;
  v122 = v24;
  (v24)(v22);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  v27 = os_log_type_enabled(v25, v26);
  v113 = a1;
  v107 = v15;
  v106 = a5;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v129[0] = v29;
    *v28 = 136315138;
    sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
    v30 = Array.description.getter();
    v32 = v11;
    v33 = v7;
    v34 = v18;
    v35 = sub_1000034B8(v30, v31, v129);
    a1 = v113;

    *(v28 + 4) = v35;
    v18 = v34;
    v7 = v33;
    v11 = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "zoneIDs changed: %s", v28, 0xCu);
    sub_1000036EC(v29);

    v36 = v32;
  }

  else
  {

    v36 = v11;
  }

  v37 = *(v36 + 8);
  v37(v22, v128);
  v39 = v112;
  if (a1 >> 62)
  {
LABEL_30:
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (!v40)
    {
      return;
    }
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      return;
    }
  }

  if (v40 < 1)
  {
    __break(1u);
  }

  else
  {
    v41 = 0;
    v118 = a1 & 0xC000000000000001;
    v11 += 8;
    v116 = (v7 + 8);
    v7 = &_swiftEmptyDictionarySingleton;
    *&v38 = 136315394;
    v110 = v38;
    v111 = v11;
    v117 = v40;
    v109 = v18;
    do
    {
      v127 = v41;
      v55 = a1;
      if (v118)
      {
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v56 = *(a1 + 8 * v41 + 32);
      }

      v57 = v56;
      v58 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
      sub_10001F8BC([v120 scope], v57);
      v59 = v58;
      a1 = sub_100034A48();
      v60 = sub_100034A48();
      [v59 setPreviousServerChangeToken:v60];

      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 < 0)
        {
          v61 = v7;
        }

        else
        {
          v61 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v62 = v57;
        v63 = v59;
        v64 = __CocoaDictionary.count.getter();
        if (__OFADD__(v64, 1))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = sub_100032560(v61, v64 + 1);
      }

      else
      {
        v65 = v57;
        v66 = v59;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v129[0] = v7;
      v126 = v59;
      sub_100032F74(v59, v57, isUniquelyReferenced_nonNull_native);

      v7 = v129[0];
      v122(v18, v123, v128);
      v125 = a1;
      v68 = a1;
      v69 = v57;
      v70 = v18;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v129[0] = v115;
        *v42 = v110;
        v44 = [v69 zoneName];
        v114 = v71;
        v45 = v44;
        v46 = v7;
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v37;
        v50 = v49;

        v51 = v47;
        v7 = v46;
        v39 = v112;
        v52 = sub_1000034B8(v51, v50, v129);
        v37 = v48;

        *(v42 + 4) = v52;
        a1 = v113;
        *(v42 + 12) = 2112;
        *(v42 + 14) = v68;
        *v43 = v125;
        v53 = v68;
        v54 = v114;
        _os_log_impl(&_mh_execute_header, v114, v72, "Old change token for %s : %@", v42, 0x16u);
        sub_100006CAC(v43, &qword_100093F70, &qword_1000730D0);
        v11 = v111;

        sub_1000036EC(v115);

        v18 = v109;
        v37(v109, v128);
        (*v116)(v39, v119);
      }

      else
      {

        v37(v70, v128);
        (*v116)(v39, v119);
        v18 = v70;
        a1 = v55;
      }

      v41 = v127 + 1;
    }

    while (v117 != v127 + 1);
    v73 = v108;
    v122(v108, v123, v128);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    v76 = os_log_type_enabled(v74, v75);
    v104 = v37;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v129[0] = v78;
      *v77 = 136315138;
      sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
      sub_100004890(0, &qword_1000937C8, CKFetchRecordZoneChangesConfiguration_ptr);
      sub_100036B9C(&qword_1000937D0, &qword_100093758, CKRecordZoneID_ptr);

      v79 = v128;
      v80 = Dictionary.description.getter();
      v82 = v81;

      v83 = sub_1000034B8(v80, v82, v129);

      *(v77 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v74, v75, "optionsByRecordZoneID: %s", v77, 0xCu);
      sub_1000036EC(v78);

      v104(v108, v79);
    }

    else
    {

      v37(v73, v128);
    }

    v84 = v107;
    v85 = v106;
    v86 = swift_allocObject();
    *(v86 + 16) = _swiftEmptyArrayStorage;
    v87 = swift_allocObject();
    *(v87 + 16) = _swiftEmptyArrayStorage;
    sub_100004890(0, &qword_1000937C0, CKFetchRecordZoneChangesOperation_ptr);
    v88 = v113;

    v130.value._rawValue = v88;
    v127 = v7;
    v130.is_nil = v7;
    isa = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v130, v131).super.super.super.super.isa;
    [(objc_class *)isa setFetchAllChanges:1];

    CKFetchRecordZoneChangesOperation.recordWasChangedBlock.setter();

    CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
    v90 = swift_allocObject();
    v91 = v120;
    v92 = v121;
    v90[2] = v120;
    v90[3] = v92;
    v90[4] = v87;
    v90[5] = v86;

    v93 = v91;

    CKFetchRecordZoneChangesOperation.recordZoneFetchResultBlock.setter();
    v94 = swift_allocObject();
    v94[2] = v93;
    v94[3] = v88;
    v95 = v105;
    v94[4] = v92;
    v94[5] = v95;
    v94[6] = v85;

    v96 = v93;

    CKFetchRecordZoneChangesOperation.fetchRecordZoneChangesResultBlock.setter();
    v122(v84, v123, v128);
    v97 = isa;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = v84;
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      *v101 = 138412290;
      *(v101 + 4) = v97;
      *v102 = v97;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v98, v99, "Adding Cloud operation %@", v101, 0xCu);
      sub_100006CAC(v102, &qword_100093F70, &qword_1000730D0);

      v84 = v100;
    }

    v104(v84, v128);
    [v96 addOperation:v97];
  }
}

uint64_t sub_100023D40(void *a1, void *a2, int a3, os_log_t a4)
{
  LODWORD(v75) = a3;
  v78 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v9);
  v14 = &v69 - v13;
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_10003915C();
  v18 = v7[2];
  v76 = v17;
  v77 = v18;
  v18(v16);
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v74 = v6;
    v23 = v22;
    v24 = swift_slowAlloc();
    v73 = a4;
    v25 = v14;
    v26 = v11;
    v27 = v7;
    v28 = v24;
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v19;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v20, v21, "RecordID changed: %@", v23, 0xCu);
    sub_100006CAC(v28, &qword_100093F70, &qword_1000730D0);
    v7 = v27;
    v11 = v26;
    v14 = v25;
    a4 = v73;

    v6 = v74;
  }

  v32 = v7[1];
  v30 = v7 + 1;
  v31 = v32;
  v32(v16, v6);
  if (v75)
  {
    v77(v14, v76, v6);
    v33 = v19;
    v34 = v78;
    sub_10003785C(v78, 1);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    sub_100008738(v34, 1);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = v14;
      v39 = v6;
      v40 = swift_slowAlloc();
      *v37 = 138412546;
      *(v37 + 4) = v33;
      *v40 = v33;
      *(v37 + 12) = 2112;
      v41 = v33;
      sub_10003785C(v34, 1);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v42;
      v40[1] = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "%@ failed to be fetched: %@", v37, 0x16u);
      sub_10000A45C(&qword_100093F70, &qword_1000730D0);
      swift_arrayDestroy();
      v6 = v39;
      v14 = v38;
    }

    return v31(v14, v6);
  }

  else
  {
    v75 = v30;
    swift_beginAccess();
    v44 = v78;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((a4[2].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[2].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v77(v11, v76, v6);
      v45 = IsAppleInternalBuild() ? static os_log_type_t.default.getter() : static os_log_type_t.debug.getter();
      v46 = v45;
      v47 = Logger.logObject.getter();
      if (!os_log_type_enabled(v47, v46))
      {
        break;
      }

      v72 = v46;
      v73 = v47;
      v74 = v6;
      v76 = v11;
      v77 = v31;
      v48 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v80[0] = v70;
      *v48 = 136315394;
      v49 = [v19 recordName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = sub_1000034B8(v50, v52, v80);

      *(v48 + 4) = v53;
      v71 = v48;
      *(v48 + 12) = 2080;
      v6 = [v44 encryptedValues];
      v54 = [v6 allKeys];
      swift_unknownObjectRelease();
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v55 = 0;
      v78 = _swiftEmptyArrayStorage;
      v79 = _swiftEmptyArrayStorage;
      v56 = v19[2];
      v57 = v19 + 5;
      v11 = &off_100091000;
      v69 = v19 + 5;
LABEL_13:
      v58 = &v57[2 * v55];
      while (1)
      {
        if (v56 == v55)
        {

          sub_10000A45C(&unk_100093260, &qword_1000730C8);
          v63 = Array.description.getter();
          v65 = v64;

          v66 = sub_1000034B8(v63, v65, v80);

          v67 = v71;
          *(v71 + 14) = v66;
          v68 = v73;
          _os_log_impl(&_mh_execute_header, v73, v72, "CKRecord fetched: %s - %s", v67, 0x16u);
          swift_arrayDestroy();

          return (v77)(v76, v74);
        }

        if (v55 >= v19[2])
        {
          break;
        }

        ++v55;
        v59 = v58 + 2;
        v60 = *(v58 - 1);
        v6 = *v58;

        v61 = [v44 encryptedValues];
        v62 = String._bridgeToObjectiveC()();
        v31 = [v61 objectForKeyedSubscript:v62];

        swift_unknownObjectRelease();
        v58 = v59;
        if (v31)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v6 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v78 = v79;
          v57 = v69;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    return v31(v11, v6);
  }
}

uint64_t sub_100024498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003915C();
  (*(v9 + 16))(v12, v13, v8);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a3;
    v18 = a2;
    v19 = v17;
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v14;
    *v20 = v14;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Record deleted: %@", v19, 0xCu);
    sub_100006CAC(v20, &qword_100093F70, &qword_1000730D0);

    a2 = v18;
    a3 = v29;
  }

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  v22 = *(a4 + 16);
  v23 = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_100031DA0(0, v22[2] + 1, 1, v22);
    *(a4 + 16) = v22;
  }

  v26 = v22[2];
  v25 = v22[3];
  if (v26 >= v25 >> 1)
  {
    v22 = sub_100031DA0((v25 > 1), v26 + 1, 1, v22);
  }

  v22[2] = v26 + 1;
  v27 = &v22[3 * v26];
  v27[4] = v23;
  v27[5] = a2;
  v27[6] = a3;
  *(a4 + 16) = v22;
  return swift_endAccess();
}

void sub_100024720(void *a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), int a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v124 = a8;
  v133 = a7;
  LODWORD(v128) = a5;
  v123 = a4;
  v122 = a3;
  v131 = a2;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v130 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v129 = &v116 - v22;
  __chkstk_darwin(v21);
  v24 = &v116 - v23;
  v25 = sub_10003915C();
  v132 = v17;
  v26 = *(v17 + 16);
  v125 = v25;
  v126 = v26;
  (v26)(v24);
  v27 = a6;
  v28 = a1;
  v29 = v27;
  v30 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  LODWORD(v120) = v32;
  v33 = os_log_type_enabled(v31, v32);
  v119 = v11;
  v118 = v12;
  v117 = v15;
  v127 = v29;
  v121 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v34 = 136315394;
    [v29 scope];
    v35 = CKDatabaseScopeString();
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_1000034B8(v36, v38, &aBlock);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    v40 = [v30 zoneName];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = sub_1000034B8(v41, v43, &aBlock);

    *(v34 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v31, v120, "record zone fetch complete, database, %s, zone, %s", v34, 0x16u);
    swift_arrayDestroy();
  }

  v45 = *(v132 + 8);
  v45(v24, v16);
  v46 = v16;
  v47 = v131;
  v48 = v130;
  v49 = v128;
  if ((v128 & 0x100) != 0)
  {
    v126(v129, v125, v46);
    v76 = v127;
    v77 = v122;
    v78 = v123;
    sub_100038170(v47, v122, v123, v49, 1);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    sub_1000381C4(v47, v77, v78, v49, 1);
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&aBlock = v83;
      *v81 = 136315394;
      [v76 scope];
      v84 = v45;
      v85 = CKDatabaseScopeString();
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v46;
      v88 = v87;

      v89 = sub_1000034B8(v86, v88, &aBlock);

      *(v81 + 4) = v89;
      *(v81 + 12) = 2112;
      swift_errorRetain();
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 14) = v90;
      *v82 = v90;
      _os_log_impl(&_mh_execute_header, v79, v80, "Error fetching zone changes for %s database: %@", v81, 0x16u);
      sub_100006CAC(v82, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v83);

      v84(v129, v128);
    }

    else
    {

      v45(v129, v46);
    }

    sub_100026830(v47, 0);
  }

  else
  {
    v123 = v45;
    v122 = (v124 + 16);
    v129 = (a9 + 16);
    v126(v130, v125, v46);
    swift_retain_n();
    swift_retain_n();
    v50 = v127;
    v51 = v121;
    v52 = v47;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v121 = v52;

    LODWORD(v125) = v54;
    v127 = v53;
    v55 = os_log_type_enabled(v53, v54);
    v120 = v50;
    v126 = v51;
    if (v55)
    {
      v56 = a9;
      v128 = v46;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *&aBlock = v116;
      *v57 = 136316162;
      [v50 scope];
      v59 = CKDatabaseScopeString();
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = sub_1000034B8(v60, v62, &aBlock);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      v64 = [v51 zoneName];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = sub_1000034B8(v65, v67, &aBlock);
      v69 = v131;

      *(v57 + 14) = v68;
      *(v57 + 22) = 2112;
      v70 = v121;
      *(v57 + 24) = v121;
      *v58 = v69;
      *(v57 + 32) = 2048;
      v71 = v122;
      swift_beginAccess();
      if (*v71 >> 62)
      {
LABEL_29:
        v72 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v72 = *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = v70;

      *(v57 + 34) = v72;

      *(v57 + 42) = 2048;
      swift_beginAccess();
      v74 = *(v56[2] + 16);

      *(v57 + 44) = v74;

      v75 = v127;
      _os_log_impl(&_mh_execute_header, v127, v125, "record zone fetch database, %s, zone, %s, token: %@, records changed: %ld, deleted: %ld", v57, 0x34u);
      sub_100006CAC(v58, &qword_100093F70, &qword_1000730D0);

      swift_arrayDestroy();

      v123(v130, v128);
    }

    else
    {

      v123(v48, v46);
      v69 = v131;
      v71 = v122;
    }

    v91 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    v92 = v133;
    swift_beginAccess();
    v57 = *(v92 + v91);
    v56 = (v57 + 64);
    v93 = 1 << *(v57 + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v58 = v94 & *(v57 + 64);
    v70 = ((v93 + 63) >> 6);
    swift_bridgeObjectRetain_n();
    v95 = 0;
    if (v58)
    {
      while (1)
      {
        v96 = v95;
LABEL_19:
        v97 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v98 = v97 | (v96 << 6);
        v99 = *(*(v57 + 56) + 16 * v98 + 8);
        v100 = *(*(v57 + 48) + 8 * v98);

        sub_1000372C0(v100, v71);

        if (!v58)
        {
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
LABEL_15:
      v96 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v96 >= v70)
      {
        break;
      }

      v58 = v56[v96];
      ++v95;
      if (v58)
      {
        v95 = v96;
        goto LABEL_19;
      }
    }

    v58 = v133;
    v101 = v133[9];
    v57 = swift_allocObject();
    v102 = v129;
    *(v57 + 16) = v58;
    *(v57 + 24) = v102;
    *(v57 + 32) = v71;
    v103 = swift_allocObject();
    *(v103 + 16) = sub_100038148;
    *(v103 + 24) = v57;
    v137 = sub_100038A58;
    v138 = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v136 = sub_10001437C;
    *(&v136 + 1) = &unk_10008ACD0;
    v56 = _Block_copy(&aBlock);
    v70 = v138;

    dispatch_sync(v101, v56);
    _Block_release(v56);
    LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

    if (v101)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v104 = *v71;
    *v71 = _swiftEmptyArrayStorage;

    swift_beginAccess();
    v105 = *v102;
    *v102 = _swiftEmptyArrayStorage;

    (*(*v133 + 264))(&aBlock, v106);
    v107 = v137;
    v140 = aBlock;

    sub_100034994(&v140);
    v139 = v136;
    sub_100034994(&v139);

    v108 = v126;
    v109 = [v126 zoneName];
    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v112 = v111;

    v134[0] = v110;
    v134[1] = v112;
    __chkstk_darwin(v113);
    *(&v116 - 2) = v134;
    LOBYTE(v109) = sub_1000225A4(sub_100038154, (&v116 - 4), v107);

    if (v109)
    {
      v114 = [v120 scope];
      v115 = v117;
      sub_10001F8BC(v114, v108);
      sub_1000351D8(v69, v115);
      (*(v118 + 8))(v115, v119);
    }
  }
}

uint64_t sub_100025508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v24 = a2;
  v25 = a3;
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = (v21 - v8);
  v10 = (*(*a1 + 288))(v7);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v21[1] = v10;
    v13 = v10 + v12;
    swift_beginAccess();
    swift_beginAccess();
    v14 = *(v5 + 72);
    v22 = a1;
    v23 = v14;
    do
    {
      sub_100006C44(v13, v9, &qword_100093F40, &qword_1000730E0);
      v16 = v9[3];
      v15 = v9[4];
      sub_1000078C8(v9, v16);
      v17 = *v24;
      v18 = *v25;
      v19 = *(v15 + 8);

      v19(v22, v17, v18, v16, v15);

      sub_100006CAC(v9, &qword_100093F40, &qword_1000730E0);
      v13 += v23;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_100025734(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  v81 = a7;
  v82 = a6;
  v73 = a5;
  v80 = a2;
  v76 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v83 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = sub_10003915C();
  v19 = v9[2];
  v78 = v18;
  v79 = v19;
  (v19)(v17);
  v20 = a3;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v77 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v74 = v9;
    v25 = v24;
    v84 = swift_slowAlloc();
    *v25 = 136315394;
    [v20 scope];
    v26 = CKDatabaseScopeString();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v8;
    v28 = v27;
    v72 = v15;
    v30 = v29;

    v31 = sub_1000034B8(v28, v30, &v84);

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
    v32 = Array.description.getter();
    v34 = sub_1000034B8(v32, v33, &v84);
    v15 = v72;

    *(v25 + 14) = v34;
    v8 = v75;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetch record zone changes complete, database, %s, zoneIds, %s", v25, 0x16u);
    swift_arrayDestroy();

    v9 = v74;
  }

  v35 = v9[1];
  v35(v17, v8);
  v36 = v83;
  if (v80)
  {
    v79(v15, v78, v8);
    v37 = v77;
    v38 = v76;
    sub_100036B90(v76, 1);
    v39 = v15;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    sub_100036B6C(v38, 1);
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v74 = v9;
      v44 = v43;
      v45 = swift_slowAlloc();
      v84 = v45;
      *v42 = 136315394;
      [v37 scope];
      v46 = CKDatabaseScopeString();
      v75 = v8;
      v47 = v46;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = sub_1000034B8(v48, v50, &v84);
      v38 = v76;

      *(v42 + 4) = v51;
      *(v42 + 12) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v52;
      *v44 = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "Error fetching zone changes for %s database: %@", v42, 0x16u);
      sub_100006CAC(v44, &qword_100093F70, &qword_1000730D0);

      sub_1000036EC(v45);

      v53 = v75;
      v54 = v39;
    }

    else
    {

      v54 = v39;
      v53 = v8;
    }

    v35(v54, v53);
    sub_100026830(v38, 0);
    v68 = v38;
    v69 = 1;
  }

  else
  {
    v79(v83, v78, v8);
    v55 = v77;
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v84 = v59;
      *v58 = 136315138;
      [v55 scope];
      v60 = v8;
      v61 = CKDatabaseScopeString();
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;

      v65 = sub_1000034B8(v62, v64, &v84);

      *(v58 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v56, v57, "Successfully fetched zone changes for database: %s", v58, 0xCu);
      sub_1000036EC(v59);

      v66 = v83;
      v67 = v60;
    }

    else
    {

      v66 = v36;
      v67 = v8;
    }

    v35(v66, v67);
    v68 = 0;
    v69 = 0;
  }

  return v82(v68, v69);
}

void sub_100025D68(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
    __break(1u);
    goto LABEL_13;
  }

  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_13:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
  sub_1000335D8(v10, 0.0, 120.0);
  v12 = v11;
  v13 = sub_10003915C();
  (*(v5 + 16))(v8, v13, v4);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a1;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v14, v15, "checkinRetryFetch %f with random delay: %f", v16, 0x16u);
  }

  (*(v5 + 8))(v8, v4);
  v17 = objc_allocWithZone(NSBackgroundActivityScheduler);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithIdentifier:v18];

  v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity;
  v21 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity);
  *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity) = v19;
  v22 = v19;

  if (v22)
  {
    [v22 setQualityOfService:25];
  }

  v23 = *(v2 + v20);
  if (v23 && ([v23 setInterval:v12 + a1], (v24 = *(v2 + v20)) != 0) && (objc_msgSend(v24, "_setAdditionalXPCActivityProperties:", v9), (v25 = *(v2 + v20)) != 0))
  {
    aBlock[4] = sub_100037898;
    aBlock[5] = v2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000262D0;
    aBlock[3] = &unk_10008A820;
    v26 = _Block_copy(aBlock);
    v27 = v25;

    [v27 scheduleWithBlock:v26];
    swift_unknownObjectRelease();
    _Block_release(v26);
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000260D8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = sub_10003915C();
    (*(v7 + 16))(v10, v11, v6);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    sub_100036B6C(a1, 1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "checkinRetryFetch failed with %@", v14, 0xCu);
      sub_100006CAC(v15, &qword_100093F70, &qword_1000730D0);
    }

    (*(v7 + 8))(v10, v6);
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  return a3(v17);
}

uint64_t sub_1000262D0(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100037950, v5);
}

uint64_t sub_100026364(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 56);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10003788C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A7F8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v6, v3);
  (*(v7 + 8))(v10, v16);
}

uint64_t sub_100026674(double a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003915C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v8, v9, "scheduleRetryFetch for %f", v10, 0xCu);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity))
    {
      sub_100025D68(a1);
    }
  }

  return result;
}

void sub_100026830(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v219) = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v212 = &v195[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS();
  v211 = *(v9 - 8);
  v10 = *(v211 + 64);
  __chkstk_darwin(v9);
  v210 = &v195[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v224 = type metadata accessor for URL();
  v222 = *(v224 - 8);
  v12 = *(v222 + 64);
  v13 = __chkstk_darwin(v224);
  v15 = &v195[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v214 = &v195[-v16];
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = __chkstk_darwin(v17);
  v218 = &v195[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v217 = &v195[-v23];
  v24 = __chkstk_darwin(v22);
  v205 = &v195[-v25];
  v26 = __chkstk_darwin(v24);
  v216 = &v195[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v195[-v29];
  v31 = __chkstk_darwin(v28);
  v209 = &v195[-v32];
  v33 = __chkstk_darwin(v31);
  v206 = &v195[-v34];
  v35 = __chkstk_darwin(v33);
  v207 = &v195[-v36];
  v37 = __chkstk_darwin(v35);
  v213 = &v195[-v38];
  v39 = __chkstk_darwin(v37);
  v208 = &v195[-v40];
  __chkstk_darwin(v39);
  v42 = &v195[-v41];
  aBlock._countAndFlagsBits = a1;
  swift_errorRetain();
  sub_10000A45C(&qword_100093748, &qword_100073628);
  type metadata accessor for CKError(0);
  v225 = v43;
  if (!swift_dynamicCast())
  {
    return;
  }

  v198 = v30;
  v199 = v9;
  v200 = v6;
  v201 = v5;
  v44 = *&v232[0];
  v45 = sub_10003915C();
  v47 = v18 + 2;
  v46 = v18[2];
  v220 = v45;
  v221 = v46;
  v46(v42);
  v48 = v44;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v204 = v18 + 2;
    v52 = v18;
    v53 = v48;
    v54 = v51;
    v55 = v3;
    v56 = v17;
    v57 = swift_slowAlloc();
    *v54 = 138412290;
    v58 = v53;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 4) = v59;
    *v57 = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "Error with cloud operation %@", v54, 0xCu);
    sub_100006CAC(v57, &qword_100093F70, &qword_1000730D0);
    v17 = v56;
    v3 = v55;

    v48 = v53;
    v18 = v52;
    v47 = v204;
  }

  v62 = v18[1];
  v60 = v18 + 1;
  v61 = v62;
  v62(v42, v17);
  *&v232[0] = v48;
  v215 = sub_10000229C(&qword_100093750, type metadata accessor for CKError);
  v63 = _BridgedStoredNSError.userInfo.getter();
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v63 + 16))
  {

LABEL_11:
    v83 = v222;
    goto LABEL_26;
  }

  v203 = v48;
  v66 = sub_1000327AC(v64, v65);
  v68 = v67;

  if ((v68 & 1) == 0)
  {

    v48 = v203;
    goto LABEL_11;
  }

  sub_100003690(*(v63 + 56) + 32 * v66, &aBlock);

  sub_10000A45C(&qword_100093760, &qword_100073630);
  if (swift_dynamicCast())
  {
    v69 = v237;
    v70 = v208;
    v221(v208, v220, v17);

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    v73 = os_log_type_enabled(v71, v72);
    v202 = v60;
    v197 = v17;
    v223 = v3;
    v204 = v47;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v196 = v72;
      v75 = v74;
      v76 = swift_slowAlloc();
      aBlock._countAndFlagsBits = v76;
      *v75 = 136315138;
      v77 = Dictionary.description.getter();
      v79 = v70;
      v80 = sub_1000034B8(v77, v78, &aBlock._countAndFlagsBits);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v71, v196, "Handling partial internal errors - %s", v75, 0xCu);
      sub_1000036EC(v76);

      v81 = v79;
      v82 = v197;
    }

    else
    {

      v81 = v70;
      v82 = v17;
    }

    v61(v81, v82);
    v84 = 1 << *(v69 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v86 = v85 & *(v69 + 64);
    v87 = (v84 + 63) >> 6;

    v88 = 0;
    v89 = v219;
    while (v86)
    {
      v90 = v88;
LABEL_22:
      v91 = __clz(__rbit64(v86));
      v86 &= v86 - 1;
      v92 = v91 | (v90 << 6);
      sub_10000CB30(*(v69 + 48) + 40 * v92, &aBlock);
      v231 = *(*(v69 + 56) + 8 * v92);
      sub_100026830(v231, v89 & 1);
      sub_100006CAC(&aBlock, &qword_100093768, &qword_100073638);
    }

    while (1)
    {
      v90 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v90 >= v87)
      {

        v60 = v202;
        v17 = v197;
        v3 = v223;
        v48 = v203;
        v47 = v204;
        goto LABEL_25;
      }

      v86 = *(v69 + 64 + 8 * v90);
      ++v88;
      if (v86)
      {
        v88 = v90;
        goto LABEL_22;
      }
    }

    __break(1u);
    return;
  }

  v48 = v203;
LABEL_25:
  v83 = v222;
LABEL_26:
  v235._countAndFlagsBits = v48;
  _BridgedStoredNSError.code.getter();
  if (v234 <= 13)
  {
    if ((v234 - 3) < 2)
    {
      if ((v219 & 1) == 0)
      {
        goto LABEL_55;
      }

      v93 = 150.0;
LABEL_40:
      sub_100026364(v93);
LABEL_55:
      aBlock._countAndFlagsBits = v48;
      _BridgedStoredNSError.code.getter();
      switch(v235._countAndFlagsBits)
      {
        case 'n':
          v221(v216, v220, v17);
          v179 = Logger.logObject.getter();
          v180 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v179, v180))
          {
            v181 = swift_slowAlloc();
            *v181 = 0;
            _os_log_impl(&_mh_execute_header, v179, v180, "Attempting to use Manatee from a non-HSA2 account!", v181, 2u);
          }

          v61(v216, v17);
          if (*(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) == 1)
          {
            *(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable) = 0;
            v182 = v205;
            v221(v205, v220, v17);
            v183 = Logger.logObject.getter();
            v184 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              *v185 = 0;
              _os_log_impl(&_mh_execute_header, v183, v184, "Manatee was available, but is not available now.", v185, 2u);
            }

            else
            {
            }

            v61(v182, v17);
          }

          else
          {
          }

          break;
        case 'p':
          v221(v217, v220, v17);
          v171 = Logger.logObject.getter();
          v172 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v171, v172))
          {
            v173 = swift_slowAlloc();
            *v173 = 0;
            _os_log_impl(&_mh_execute_header, v171, v172, "Private Missing Manatee Identity, Reset...", v173, 2u);
          }

          v61(v217, v17);
          v174 = v3[7];
          v230 = sub_10003787C;
          v231 = v3;
          aBlock._countAndFlagsBits = _NSConcreteStackBlock;
          aBlock._object = 1107296256;
          v228 = sub_100002410;
          v229 = &unk_10008A730;
          v175 = _Block_copy(&aBlock);

          v176 = v210;
          static DispatchQoS.unspecified.getter();
          v235._countAndFlagsBits = _swiftEmptyArrayStorage;
          sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000A45C(&unk_1000931F0, &unk_100072C10);
          sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
          v177 = v212;
          v178 = v201;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v175);

          (*(v200 + 8))(v177, v178);
          (*(v211 + 8))(v176, v199);

          break;
        case 'o':
          v202 = v60;
          v162 = v198;
          v221(v198, v220, v17);

          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v213 = v61;
            v166 = v165;
            v167 = swift_slowAlloc();
            v226 = v167;
            *v166 = 136315138;
            (*(*v3 + 264))(&aBlock);
            v168 = v228;
            v169 = v229;
            v235 = aBlock;
            sub_100034994(&v235);
            v234 = v230;
            sub_100006CAC(&v234, &qword_100094180, &qword_100074290);
            v170 = sub_1000034B8(v168, v169, &v226);

            *(v166 + 4) = v170;
            _os_log_impl(&_mh_execute_header, v163, v164, "PCS Keys for %s are not yet synced.", v166, 0xCu);
            sub_1000036EC(v167);

            (v213)(v162, v17);
          }

          else
          {

            v61(v162, v17);
          }

          break;
        default:
          v186 = v48;
          v187 = v61;
          v221(v218, v220, v17);
          v188 = v186;
          v189 = Logger.logObject.getter();
          v190 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v189, v190))
          {
            v191 = swift_slowAlloc();
            v192 = swift_slowAlloc();
            *v191 = 138412290;
            v193 = v188;
            v194 = _swift_stdlib_bridgeErrorToNSError();
            *(v191 + 4) = v194;
            *v192 = v194;
            _os_log_impl(&_mh_execute_header, v189, v190, "Uncaught private error: %@", v191, 0xCu);
            sub_100006CAC(v192, &qword_100093F70, &qword_1000730D0);
          }

          else
          {
            v193 = v189;
            v189 = v188;
          }

          v187(v218, v17);
          break;
      }

      return;
    }

    if ((v234 - 6) < 2)
    {
      v93 = COERCE_DOUBLE(related decl 'e' for CKErrorCode.retryAfterSeconds.getter());
      if (v94)
      {
        v93 = 600.0;
      }

      goto LABEL_40;
    }

LABEL_48:
    v121 = v60;
    v122 = v209;
    v221(v209, v220, v17);
    v123 = v48;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v204 = v47;
      v127 = v61;
      v128 = v126;
      v129 = swift_slowAlloc();
      *v128 = 138412290;
      v130 = v123;
      v131 = _swift_stdlib_bridgeErrorToNSError();
      *(v128 + 4) = v131;
      *v129 = v131;
      _os_log_impl(&_mh_execute_header, v124, v125, "Uncaught error: %@", v128, 0xCu);
      sub_100006CAC(v129, &qword_100093F70, &qword_1000730D0);
      v122 = v209;

      v61 = v127;
    }

    v60 = v121;
    v61(v122, v17);
    goto LABEL_55;
  }

  if (v234 != 14)
  {
    if (v234 == 21)
    {
      v204 = v47;
      v203 = v48;
      v213 = v61;
      v197 = v17;
      v202 = v60;
      v222 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
      URL.appendingPathComponent(_:isDirectory:)();
      v132 = v214;
      URL.appendingPathComponent(_:)();
      v135 = *(v83 + 8);
      v134 = v83 + 8;
      v133 = v135;
      v136 = v224;
      v135(v15, v224);
      v137 = sub_1000351D8(0, v132);
      (*(*v3 + 264))(v232, v137);
      v138 = v233;
      v238 = v233;
      v237 = v232[0];

      sub_100034994(&v237);
      v236 = v232[1];
      sub_100034994(&v236);
      sub_100006CAC(&v238, &qword_100094180, &qword_100074290);
      v139 = *(v138 + 16);
      v223 = v3;
      if (v139)
      {
        v219 = sub_100004890(0, &qword_100093758, CKRecordZoneID_ptr);
        v140 = (v138 + 40);
        do
        {
          v141 = v133;
          v142 = v134;
          v143 = *(v140 - 1);
          v144 = *v140;
          v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v147 = v146;

          v148._countAndFlagsBits = v143;
          v148._object = v144;
          v149._countAndFlagsBits = v145;
          v149._object = v147;
          isa = CKRecordZoneID.init(zoneName:ownerName:)(v148, v149).super.isa;
          URL.appendingPathComponent(_:isDirectory:)();
          v151._countAndFlagsBits = 0x65746176697250;
          v151._object = 0xE700000000000000;
          URL.appendPathComponent(_:)(v151);
          v152 = [(objc_class *)isa ownerName];
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;

          v156._countAndFlagsBits = v153;
          v156._object = v155;
          URL.appendPathComponent(_:)(v156);

          v157 = [(objc_class *)isa zoneName];
          v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v160 = v159;

          aBlock._countAndFlagsBits = v158;
          aBlock._object = v160;
          v161._countAndFlagsBits = 0x6E656B6F742ELL;
          v161._object = 0xE600000000000000;
          String.append(_:)(v161);
          URL.appendPathComponent(_:)(aBlock);

          v134 = v142;
          v133 = v141;
          v136 = v224;

          sub_1000351D8(0, v15);
          v141(v15, v136);
          v140 += 2;
          --v139;
        }

        while (v139);
      }

      sub_100006CAC(&v238, &qword_100094180, &qword_100074290);
      v3 = v223;
      sub_100026364(30.0);
      v133(v214, v136);
      v60 = v202;
      v17 = v197;
      v61 = v213;
      v48 = v203;
      goto LABEL_55;
    }

    if (v234 == 26)
    {
      v202 = v60;
      v221(v213, v220, v17);
      v95 = v48;
      v96 = Logger.logObject.getter();
      v97 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *v98 = 138412290;
        v100 = v95;
        v101 = _swift_stdlib_bridgeErrorToNSError();
        *(v98 + 4) = v101;
        *v99 = v101;
        _os_log_impl(&_mh_execute_header, v96, v97, "Zone not found: %@", v98, 0xCu);
        sub_100006CAC(v99, &qword_100093F70, &qword_1000730D0);
      }

      v60 = v202;
      v61(v213, v17);
      goto LABEL_55;
    }

    goto LABEL_48;
  }

  v213 = v61;
  v102 = v207;
  v221(v207, v220, v17);
  v61 = v48;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *v105 = 138412290;
    v107 = v61;
    v108 = _swift_stdlib_bridgeErrorToNSError();
    *(v105 + 4) = v108;
    *v106 = v108;
    _os_log_impl(&_mh_execute_header, v103, v104, "Server Record Changed, We need to Fetch the data again: %@", v105, 0xCu);
    sub_100006CAC(v106, &qword_100093F70, &qword_1000730D0);
  }

  (v213)(v102, v17);
  v109 = related decl 'e' for CKErrorCode.serverRecord.getter();
  if (!v109)
  {
    sub_100026364(30.0);

    return;
  }

  v110 = v109;
  v111 = v206;
  v221(v206, v220, v17);
  v112 = v110;
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v115 = 138412290;
    *(v115 + 4) = v112;
    *v116 = v110;
    v117 = v112;
    _os_log_impl(&_mh_execute_header, v113, v114, "Resolving with server record - %@", v115, 0xCu);
    sub_100006CAC(v116, &qword_100093F70, &qword_1000730D0);
    v111 = v206;
  }

  (v213)(v111, v17);
  v118 = v3[9];
  v119 = swift_allocObject();
  *(v119 + 16) = v3;
  *(v119 + 24) = v112;
  v60 = swift_allocObject();
  v60[2] = sub_100037884;
  v60[3] = v119;
  v230 = sub_100038A58;
  v231 = v60;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v228 = sub_10001437C;
  v229 = &unk_10008A7A8;
  v47 = _Block_copy(&aBlock);
  v48 = v231;
  v120 = v112;

  dispatch_sync(v118, v47);

  _Block_release(v47);
  LOBYTE(v120) = swift_isEscapingClosureAtFileLocation();

  if (v120)
  {
    __break(1u);
    goto LABEL_48;
  }
}

uint64_t sub_100028310(uint64_t a1, void *a2)
{
  v4 = sub_10000A45C(&qword_100093F40, &qword_1000730E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v9 = (v23 - v8);
  v10 = (*(*a1 + 288))(v7);
  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = a2;
    v27 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_manateeAvailable;
    v12 = *(v5 + 80);
    v23[1] = v10;
    v13 = v10 + ((v12 + 32) & ~v12);
    v25 = *(v5 + 72);
    v24 = xmmword_100073090;
    do
    {
      sub_100006C44(v13, v9, &qword_100093F40, &qword_1000730E0);
      v15 = v9[3];
      v14 = v9[4];
      sub_1000078C8(v9, v15);
      sub_10000A45C(&qword_100093740, &qword_100073620);
      v16 = swift_allocObject();
      *(v16 + 16) = v24;
      v17 = v26;
      *(v16 + 32) = v26;
      v18 = *(v14 + 8);
      v19 = v17;
      v18(a1, _swiftEmptyArrayStorage, v16, v15, v14);

      v20 = v9[3];
      v21 = v9[4];
      sub_1000078C8(v9, v20);
      (*(v21 + 24))(a1, *(a1 + v27), v20, v21);
      sub_100006CAC(v9, &qword_100093F40, &qword_1000730E0);
      v13 += v25;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_100028620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v16 = *(v25 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v25);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 56);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  aBlock[4] = sub_100037F8C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008ABB8;
  v21 = _Block_copy(aBlock);

  v22 = a5;
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v26 + 8))(v15, v12);
  (*(v16 + 8))(v19, v25);
}

void sub_100028928(void *a1, int a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v239 = a4;
  v238 = a3;
  v237 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v241 = &v233 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v250 = (&v233 - v13);
  v14 = __chkstk_darwin(v12);
  v236 = &v233 - v15;
  v16 = __chkstk_darwin(v14);
  v234 = &v233 - v17;
  v18 = __chkstk_darwin(v16);
  v240 = &v233 - v19;
  __chkstk_darwin(v18);
  v21 = &v233 - v20;
  v22 = sub_10003915C();
  v23 = v8;
  v24 = *(v8 + 16);
  v246 = v22;
  v247 = v8 + 16;
  v245 = v24;
  (v24)(v21);
  v25 = a1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Attempting to store the record: %@", v28, 0xCu);
    sub_100006CAC(v29, &qword_100093F70, &qword_1000730D0);
  }

  v253 = v25;

  v31 = *(v23 + 8);
  v242 = v7;
  v244 = v23 + 8;
  v243 = v31;
  v31(v21, v7);
  v32 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  swift_beginAccess();
  v248 = v5;
  v235 = v32;
  v33 = *(v32 + v5);
  v36 = *(v33 + 64);
  v35 = v33 + 64;
  v34 = v36;
  v37 = 1 << *(*(v32 + v5) + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v34;
  v40 = (v37 + 63) >> 6;
  *&v251 = *(v32 + v5);
  swift_bridgeObjectRetain_n();
  v41 = 0;
  if (!v39)
  {
LABEL_7:
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        v59 = v248;
        v60 = v253;
        v61 = v250;
        goto LABEL_24;
      }

      v39 = *(v35 + 8 * v42);
      ++v41;
      if (v39)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_101;
  }

  while (1)
  {
    v42 = v41;
LABEL_10:
    v43 = __clz(__rbit64(v39)) | (v42 << 6);
    v44 = *(*(v251 + 48) + 8 * v43);
    v45 = *(v251 + 56) + 16 * v43;
    v46 = *(v45 + 8);
    v249 = *v45;
    v47 = v44;

    v252 = v47;
    v48 = [v47 recordName];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v253 recordID];
    v53 = [v52 recordName];

    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    if (v49 == v54 && v51 == v56)
    {

      goto LABEL_20;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v58)
    {
      break;
    }

    v39 &= v39 - 1;

    v41 = v42;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

LABEL_20:

  v62 = v252;
  sub_100034DB0();
  v63 = swift_allocError();
  *v64 = 1;
  v258[0] = v63;

  v249(v258);

  v59 = v248;
  swift_beginAccess();
  v65 = sub_1000324A4(v62, sub_1000328C4, &qword_100093738, &qword_100073618);
  swift_endAccess();
  sub_100008364(v65);
  v66 = v242;
  v245(v240, v246, v242);
  v67 = v62;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();

  v70 = os_log_type_enabled(v68, v69);
  v60 = v253;
  v61 = v250;
  if (v70)
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138412290;
    *(v71 + 4) = v67;
    *v72 = v67;
    v73 = v67;
    _os_log_impl(&_mh_execute_header, v68, v69, "Updating cancelled pending record deletion for: %@", v71, 0xCu);
    sub_100006CAC(v72, &qword_100093F70, &qword_1000730D0);
  }

  else
  {

    v68 = v67;
  }

  v243(v240, v66);
LABEL_24:
  v74 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  swift_beginAccess();
  v240 = v74;
  v75 = *(v59 + v74);
  v78 = *(v75 + 64);
  v77 = v75 + 64;
  v76 = v78;
  v79 = 1 << *(*(v59 + v74) + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & v76;
  v82 = (v79 + 63) >> 6;
  v249 = *(v59 + v74);
  swift_bridgeObjectRetain_n();
  v83 = 0;
  if (!v81)
  {
LABEL_28:
    while (1)
    {
      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v84 >= v82)
      {

        v100 = v242;
        v245(v61, v246, v242);
        if (IsAppleInternalBuild())
        {
          v101 = static os_log_type_t.default.getter();
        }

        else
        {
          v101 = static os_log_type_t.debug.getter();
        }

        v102 = v101;
        v103 = v248;
        v104 = Logger.logObject.getter();
        if (os_log_type_enabled(v104, v102))
        {
          LODWORD(v236) = v102;
          *&v251 = v104;
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          v255 = v235;
          *v105 = 138412546;
          v107 = [v60 recordID];
          *(v105 + 4) = v107;
          v234 = v106;
          *v106 = v107;
          v249 = v105;
          *(v105 + 12) = 2080;
          v108 = [objc_msgSend(v60 "encryptedValues")];
          swift_unknownObjectRelease();
          v109 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v110 = 0;
          v252 = _swiftEmptyArrayStorage;
          v254 = _swiftEmptyArrayStorage;
          v111 = *(v109 + 16);
          v112 = v109 + 40;
          v233 = v109 + 40;
LABEL_43:
          v113 = (v112 + 16 * v110);
          while (v111 != v110)
          {
            if (v110 >= *(v109 + 16))
            {
              goto LABEL_103;
            }

            ++v110;
            v114 = v113 + 2;
            v116 = *(v113 - 1);
            v115 = *v113;

            v117 = [v253 encryptedValues];
            v118 = String._bridgeToObjectiveC()();
            v119 = [v117 objectForKeyedSubscript:v118];

            swift_unknownObjectRelease();
            v113 = v114;
            if (v119)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v252 = v254;
              v112 = v233;
              goto LABEL_43;
            }
          }

          sub_10000A45C(&unk_100093260, &qword_1000730C8);
          v120 = Array.description.getter();
          v122 = v121;

          v123 = sub_1000034B8(v120, v122, &v255);

          v124 = v249;
          *(v249 + 14) = v123;
          v125 = v251;
          _os_log_impl(&_mh_execute_header, v251, v236, "Staging pending CKRecord %@ - %s", v124, 0x16u);
          sub_100006CAC(v234, &qword_100093F70, &qword_1000730D0);

          sub_1000036EC(v235);

          v100 = v242;
          v243(v250, v242);
          v103 = v248;
          v60 = v253;
        }

        else
        {

          v243(v61, v100);
        }

        v126 = swift_allocObject();
        v127 = v239;
        *(v126 + 16) = v238;
        *(v126 + 24) = v127;
        swift_beginAccess();

        v128 = sub_10003367C(sub_100038AF0, v126, v60);
        swift_endAccess();
        sub_100008364(v128);
        goto LABEL_78;
      }

      v81 = *(v77 + 8 * v84);
      ++v83;
      if (v81)
      {
        goto LABEL_31;
      }
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  while (1)
  {
    v84 = v83;
LABEL_31:
    v85 = __clz(__rbit64(v81)) | (v84 << 6);
    v86 = *(*(v249 + 6) + 8 * v85);
    v251 = *(*(v249 + 7) + 16 * v85);
    v87 = v86;

    v252 = v87;
    v88 = [v87 recordID];
    v89 = [v88 recordName];

    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93 = [v253 recordID];
    v94 = [v93 recordName];

    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    if (v90 == v95 && v92 == v97)
    {

      goto LABEL_55;
    }

    v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v99)
    {
      break;
    }

    v81 &= v81 - 1;

    v83 = v84;
    v60 = v253;
    v61 = v250;
    if (!v81)
    {
      goto LABEL_28;
    }
  }

LABEL_55:

  v129 = v253;
  v250 = swift_allocObject();
  *&v250[2].isa = v251;
  v130 = [objc_msgSend(v252 "encryptedValues")];
  swift_unknownObjectRelease();
  v131 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v251 = v131;
  v132 = *(v131 + 16);
  v133 = &off_100091000;
  if (v132)
  {
    v134 = (v251 + 40);
    do
    {
      v141 = *(v134 - 1);
      v140 = *v134;

      v142 = [v129 encryptedValues];
      v143 = String._bridgeToObjectiveC()();
      v144 = [v142 v133[346]];
      swift_unknownObjectRelease();

      if (v144)
      {
        swift_unknownObjectRelease();
        v135 = [v252 encryptedValues];
        v136 = [v129 encryptedValues];
        v137 = String._bridgeToObjectiveC()();
        v138 = [v136 v133[346]];

        swift_unknownObjectRelease();
        v139 = String._bridgeToObjectiveC()();

        [v135 setObject:v138 forKeyedSubscript:v139];
        v129 = v253;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }

      v134 += 2;
      --v132;
      v133 = &off_100091000;
    }

    while (v132);
  }

  v145 = swift_allocObject();
  v146 = v252;
  v145[2] = v252;
  v145[3] = sub_100035CE0;
  v147 = v238;
  v145[4] = v250;
  v145[5] = v147;
  *&v251 = v145;
  v145[6] = v239;
  v148 = v234;
  v100 = v242;
  v245(v234, v246, v242);
  v149 = v146;
  swift_retain_n();
  v150 = v149;

  v151 = Logger.logObject.getter();
  v152 = static os_log_type_t.default.getter();

  v153 = os_log_type_enabled(v151, v152);
  v252 = v150;
  if (v153)
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v254 = v155;
    *v154 = 136315138;
    v156 = swift_allocObject();
    v157 = v250;
    *(v156 + 16) = sub_100035CE0;
    *(v156 + 24) = v157;
    v255 = v150;
    v256 = sub_100038AF0;
    v257 = v156;
    v158 = v150;

    sub_10000A45C(&unk_100093270, &qword_1000730D8);
    v159 = String.init<A>(describing:)();
    v161 = sub_1000034B8(v159, v160, &v254);

    *(v154 + 4) = v161;
    _os_log_impl(&_mh_execute_header, v151, v152, "Updating existing pending record: %s", v154, 0xCu);
    sub_1000036EC(v155);
  }

  v243(v148, v100);
  v162 = v236;
  v103 = v248;
  v245(v236, v246, v100);
  if (IsAppleInternalBuild())
  {
    v163 = static os_log_type_t.default.getter();
  }

  else
  {
    v163 = static os_log_type_t.debug.getter();
  }

  v164 = v163;
  v165 = Logger.logObject.getter();
  if (os_log_type_enabled(v165, v164))
  {
    v249 = v165;
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    v255 = v238;
    *v166 = 138412546;
    v168 = [v129 recordID];
    *(v166 + 4) = v168;
    v235 = v167;
    *v167 = v168;
    v239 = v166;
    *(v166 + 12) = 2080;
    v169 = [objc_msgSend(v129 "encryptedValues")];
    swift_unknownObjectRelease();
    v170 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v171 = 0;
    v254 = _swiftEmptyArrayStorage;
    v172 = *(v170 + 16);
    v173 = v170 + 40;
    v234 = (v170 + 40);
LABEL_68:
    v174 = (v173 + 16 * v171);
    while (v172 != v171)
    {
      if (v171 >= *(v170 + 16))
      {
        goto LABEL_104;
      }

      ++v171;
      v175 = v174 + 2;
      v177 = *(v174 - 1);
      v176 = *v174;

      v178 = [v253 encryptedValues];
      v179 = String._bridgeToObjectiveC()();
      v180 = [v178 objectForKeyedSubscript:v179];

      swift_unknownObjectRelease();
      v174 = v175;
      if (v180)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v254 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v254 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v173 = v234;
        goto LABEL_68;
      }
    }

    sub_10000A45C(&unk_100093260, &qword_1000730C8);
    v181 = Array.description.getter();
    v183 = v182;

    v184 = sub_1000034B8(v181, v183, &v255);

    v185 = v239;
    *(v239 + 14) = v184;
    v186 = v249;
    _os_log_impl(&_mh_execute_header, v249, v164, "Updating existing pending CKRecord %@ - %s", v185, 0x16u);
    sub_100006CAC(v235, &qword_100093F70, &qword_1000730D0);

    sub_1000036EC(v238);

    v100 = v242;
    v243(v236, v242);
    v103 = v248;
  }

  else
  {

    v243(v162, v100);
  }

  v187 = swift_allocObject();
  v188 = v251;
  *(v187 + 16) = sub_100035D20;
  *(v187 + 24) = v188;
  swift_beginAccess();

  v189 = v252;
  v190 = sub_10003367C(sub_100035D80, v187, v252);
  swift_endAccess();
  sub_100008364(v190);

LABEL_78:
  v191 = v241;
  v245(v241, v246, v100);
  if (IsAppleInternalBuild())
  {
    v192 = static os_log_type_t.default.getter();
  }

  else
  {
    v192 = static os_log_type_t.debug.getter();
  }

  v193 = v192;

  v194 = Logger.logObject.getter();
  if (!os_log_type_enabled(v194, v193))
  {

    v243(v191, v100);
LABEL_99:
    sub_10002B51C(v237 & 1);
    return;
  }

  LODWORD(v249) = v193;
  v250 = v194;
  v195 = swift_slowAlloc();
  v246 = swift_slowAlloc();
  v254 = v246;
  *v195 = 134218242;
  v196 = v240;
  *(v195 + 4) = *(*&v240[v103] + 16);

  v247 = v195;
  *(v195 + 12) = 2080;
  v197 = *&v196[v103];
  v198 = v197 + 64;
  v199 = 1 << *(v197 + 32);
  if (v199 < 64)
  {
    v200 = ~(-1 << v199);
  }

  else
  {
    v200 = -1;
  }

  v201 = v200 & *(v197 + 64);
  v202 = (v199 + 63) >> 6;
  v252 = v197;
  swift_bridgeObjectRetain_n();
  v203 = 0;
  v204 = _swiftEmptyArrayStorage;
  *&v251 = v198;
  if (!v201)
  {
    goto LABEL_87;
  }

  do
  {
    v253 = v204;
LABEL_91:
    v206 = __clz(__rbit64(v201)) | (v203 << 6);
    v207 = *(v252[7] + 16 * v206 + 8);
    v208 = *(v252[6] + 8 * v206);
    swift_retain_n();
    v209 = v208;
    v210 = [v209 recordID];
    v211 = [v210 recordName];

    v212 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v214 = v213;

    v255 = v212;
    v256 = v214;

    v215._countAndFlagsBits = 58;
    v215._object = 0xE100000000000000;
    String.append(_:)(v215);

    v217 = v255;
    v216 = v256;
    v218 = CKRecord.recordType.getter();
    v220 = v219;

    v255 = v217;
    v256 = v216;

    v221._countAndFlagsBits = v218;
    v221._object = v220;
    String.append(_:)(v221);

    v222 = v255;
    v223 = v256;
    v204 = v253;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v204 = sub_1000176D4(0, *(v204 + 2) + 1, 1, v204);
    }

    v225 = *(v204 + 2);
    v224 = *(v204 + 3);
    if (v225 >= v224 >> 1)
    {
      v204 = sub_1000176D4((v224 > 1), v225 + 1, 1, v204);
    }

    v201 &= v201 - 1;
    *(v204 + 2) = v225 + 1;
    v226 = &v204[16 * v225];
    *(v226 + 4) = v222;
    *(v226 + 5) = v223;
    v198 = v251;
  }

  while (v201);
LABEL_87:
  while (1)
  {
    v205 = v203 + 1;
    if (__OFADD__(v203, 1))
    {
      break;
    }

    if (v205 >= v202)
    {

      v227 = Array.description.getter();
      v229 = v228;

      v230 = sub_1000034B8(v227, v229, &v254);

      v231 = v247;
      *(v247 + 14) = v230;
      v232 = v250;
      _os_log_impl(&_mh_execute_header, v250, v249, "Pending records[%ld]: %s", v231, 0x16u);
      sub_1000036EC(v246);

      v243(v241, v242);
      goto LABEL_99;
    }

    v201 = *(v198 + 8 * v205);
    ++v203;
    if (v201)
    {
      v253 = v204;
      v203 = v205;
      goto LABEL_91;
    }
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
}

uint64_t sub_10002A228(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v24);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v5 + 56);
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = a1;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = a2;
  aBlock[4] = sub_100035DB8;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A2B8;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v24);
}

void sub_10002A51C(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, int a5)
{
  v168 = a5;
  v170 = a4;
  v169 = a3;
  v180 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v174 = v6;
  v175 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v171 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v172 = &v165 - v12;
  v13 = __chkstk_darwin(v11);
  v166 = (&v165 - v14);
  __chkstk_darwin(v13);
  v167 = &v165 - v15;
  v16 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  swift_beginAccess();
  v176 = a1;
  v173 = v16;
  v17 = *(a1 + v16);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a1 + v16) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v178 = *(a1 + v16);
  swift_bridgeObjectRetain_n();
  v25 = 0;
  if (!v23)
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_21;
      }

      v23 = *(v19 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_77;
  }

  while (1)
  {
    v26 = v25;
LABEL_8:
    v27 = __clz(__rbit64(v23)) | (v26 << 6);
    v28 = *(v178[6].isa + v27);
    v29 = (v178[7].isa + 16 * v27);
    v30 = v29[1];
    v177 = *v29;
    v31 = v28;
    *&v179 = v30;

    v32 = [v31 recordID];
    v33 = [v32 recordName];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = [v180 recordName];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    if (v34 == v38 && v36 == v40)
    {

      goto LABEL_18;
    }

    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      break;
    }

    v23 &= v23 - 1;

    v25 = v26;
    if (!v23)
    {
      goto LABEL_5;
    }
  }

LABEL_18:

  v43 = sub_10003915C();
  v44 = v174;
  v45 = v167;
  (*(v175 + 16))(v167, v43, v174);
  v46 = v31;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Removing pending update for record: %@", v49, 0xCu);
    sub_100006CAC(v50, &qword_100093F70, &qword_1000730D0);
  }

  (*(v175 + 8))(v45, v44);
  sub_100034DB0();
  v52 = swift_allocError();
  *v53 = 1;
  v182 = v52;
  v183 = 1;
  (v177)(&v182);

  swift_beginAccess();
  v54 = sub_1000324A4(v46, sub_100032874, &qword_100093730, &qword_100073610);
  swift_endAccess();
  sub_100008364(v54);

LABEL_21:
  v55 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  v56 = v176;
  swift_beginAccess();
  v173 = v55;
  v57 = *(v56 + v55);
  v58 = v57 + 64;
  v59 = 1 << v57[32];
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & *(v57 + 8);
  v62 = (v59 + 63) >> 6;
  v177 = v57;
  swift_bridgeObjectRetain_n();
  v63 = 0;
  if (!v61)
  {
LABEL_25:
    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v62)
      {

        v78 = swift_allocObject();
        v79 = v170;
        *(v78 + 16) = v169;
        *(v78 + 24) = v79;
        v80 = v176;
        swift_beginAccess();

        v81 = sub_100033808(sub_100038AD8, v78, v180);
        swift_endAccess();
        sub_100008364(v81);
        goto LABEL_41;
      }

      v61 = *&v58[8 * v64];
      ++v63;
      if (v61)
      {
        goto LABEL_28;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  while (1)
  {
    v64 = v63;
LABEL_28:
    v65 = __clz(__rbit64(v61)) | (v64 << 6);
    v66 = *(*(v177 + 6) + 8 * v65);
    v179 = *(*(v177 + 7) + 16 * v65);
    v67 = v66;

    v178 = v67;
    v68 = [v67 recordName];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v72 = [v180 recordName];
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    if (v69 == v73 && v71 == v75)
    {

      goto LABEL_38;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      break;
    }

    v61 &= v61 - 1;

    v63 = v64;
    if (!v61)
    {
      goto LABEL_25;
    }
  }

LABEL_38:

  v82 = v178;
  v83 = swift_allocObject();
  *(v83 + 16) = v179;
  v84 = swift_allocObject();
  v84[2] = v82;
  v84[3] = sub_100037E94;
  v85 = v169;
  v84[4] = v83;
  v84[5] = v85;
  v84[6] = v170;
  v86 = v82;

  v87 = sub_10003915C();
  v88 = v166;
  (*(v175 + 16))(v166, v87, v174);
  v89 = v86;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138412290;
    *(v92 + 4) = v89;
    *v93 = v89;
    v94 = v89;
    _os_log_impl(&_mh_execute_header, v90, v91, "Updating existing pending record: %@", v92, 0xCu);
    sub_100006CAC(v93, &qword_100093F70, &qword_1000730D0);
  }

  (*(v175 + 8))(v88, v174);
  v95 = swift_allocObject();
  *(v95 + 16) = sub_100037F14;
  *(v95 + 24) = v84;
  v80 = v176;
  swift_beginAccess();

  v96 = sub_100033808(sub_100037F60, v95, v89);
  swift_endAccess();
  sub_100008364(v96);

LABEL_41:
  v97 = sub_10003915C();
  v98 = v174;
  v99 = v175;
  v100 = v175 + 16;
  v101 = *(v175 + 16);
  v102 = v172;
  v101(v172, v97, v174);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v103, v104))
  {
    LODWORD(v167) = v104;
    v170 = v103;
    v177 = v101;
    v178 = v97;
    *&v179 = v100;
    v105 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v181[0] = v166;
    *v105 = 134218242;
    v106 = v173;
    *(v105 + 4) = *(*(v80 + v173) + 16);

    v169 = v105;
    *(v105 + 12) = 2080;
    v107 = *(v80 + v106);
    v108 = v107 + 64;
    v109 = 1 << *(v107 + 32);
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    else
    {
      v110 = -1;
    }

    v111 = v110 & *(v107 + 64);
    v112 = (v109 + 63) >> 6;
    v180 = v107;
    swift_bridgeObjectRetain_n();
    v113 = 0;
    v114 = _swiftEmptyArrayStorage;
    if (v111)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v115 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_78;
      }

      if (v115 >= v112)
      {

        v128 = Array.description.getter();
        v130 = v129;

        v131 = sub_1000034B8(v128, v130, v181);

        v132 = v169;
        *(v169 + 14) = v131;
        v133 = v170;
        _os_log_impl(&_mh_execute_header, v170, v167, "Pending deletion for records[%ld] : %s", v132, 0x16u);
        sub_1000036EC(v166);

        v98 = v174;
        v126 = *(v175 + 8);
        v126(v172, v174);
        v80 = v176;
        v101 = v177;
        v127 = v171;
        v97 = v178;
        goto LABEL_58;
      }

      v111 = *(v108 + 8 * v115);
      ++v113;
      if (v111)
      {
        v113 = v115;
        do
        {
LABEL_50:
          v116 = __clz(__rbit64(v111)) | (v113 << 6);
          v117 = *(*(v180 + 7) + 16 * v116 + 8);
          v118 = *(*(v180 + 6) + 8 * v116);

          v119 = [v118 recordName];
          v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v121;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1000176D4(0, *(v114 + 2) + 1, 1, v114);
          }

          v124 = *(v114 + 2);
          v123 = *(v114 + 3);
          if (v124 >= v123 >> 1)
          {
            v114 = sub_1000176D4((v123 > 1), v124 + 1, 1, v114);
          }

          v111 &= v111 - 1;
          *(v114 + 2) = v124 + 1;
          v125 = &v114[16 * v124];
          *(v125 + 4) = v120;
          *(v125 + 5) = v122;
        }

        while (v111);
      }
    }
  }

  v126 = *(v99 + 8);
  v126(v102, v98);
  v127 = v171;
LABEL_58:
  v101(v127, v97, v98);

  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v134, v135))
  {
    LODWORD(v172) = v135;
    v178 = v134;
    *&v179 = v126;
    v136 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v181[0] = v170;
    *v136 = 134218242;
    v137 = v173;
    *(v136 + 4) = *(*(v80 + v173) + 16);

    v177 = v136;
    *(v136 + 12) = 2080;
    v138 = *(v80 + v137);
    v141 = *(v138 + 64);
    v140 = v138 + 64;
    v139 = v141;
    v142 = 1 << *(*(v80 + v137) + 32);
    if (v142 < 64)
    {
      v143 = ~(-1 << v142);
    }

    else
    {
      v143 = -1;
    }

    v144 = v143 & v139;
    v145 = (v142 + 63) >> 6;
    v180 = *(v80 + v137);
    swift_bridgeObjectRetain_n();
    v146 = 0;
    v147 = _swiftEmptyArrayStorage;
    if (v144)
    {
      goto LABEL_67;
    }

    while (1)
    {
      v148 = v146 + 1;
      if (__OFADD__(v146, 1))
      {
        goto LABEL_79;
      }

      if (v148 >= v145)
      {

        v159 = Array.description.getter();
        v161 = v160;

        v162 = sub_1000034B8(v159, v161, v181);

        v164 = v177;
        v163 = v178;
        *(v177 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v163, v172, "Pending deletion for records[%ld] : %s", v164, 0x16u);
        sub_1000036EC(v170);

        (v179)(v171, v174);
        goto LABEL_75;
      }

      v144 = *(v140 + 8 * v148);
      ++v146;
      if (v144)
      {
        v146 = v148;
        do
        {
LABEL_67:
          v149 = __clz(__rbit64(v144)) | (v146 << 6);
          v150 = *(*(v180 + 7) + 16 * v149 + 8);
          v151 = *(*(v180 + 6) + 8 * v149);

          v152 = [v151 recordName];
          v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v155 = v154;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = sub_1000176D4(0, *(v147 + 2) + 1, 1, v147);
          }

          v157 = *(v147 + 2);
          v156 = *(v147 + 3);
          if (v157 >= v156 >> 1)
          {
            v147 = sub_1000176D4((v156 > 1), v157 + 1, 1, v147);
          }

          v144 &= v144 - 1;
          *(v147 + 2) = v157 + 1;
          v158 = &v147[16 * v157];
          *(v158 + 4) = v153;
          *(v158 + 5) = v155;
        }

        while (v144);
      }
    }
  }

  v126(v127, v98);
LABEL_75:
  sub_10002B51C(v168 & 1);
}

uint64_t sub_10002B51C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v68 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v67 = &v62 - v10;
  __chkstk_darwin(v9);
  v12 = &v62 - v11;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + 56);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v20)
  {
    v22 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer;
    v23 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);
    if (v23)
    {
      v24 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity;
      v25 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_retryFetchActivity);
      v26 = *(v2 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);

      v65 = v23;
      if (v25)
      {
        v27 = sub_10003915C();
        (*(v5 + 16))(v12, v27, v4);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v28, v29, "Defer fetch until scheduled changes are pushed to cloud", v30, 2u);
          v23 = v65;
        }

        (*(v5 + 8))(v12, v4);
        [*(v2 + v24) invalidate];
        v31 = *(v2 + v24);
        *(v2 + v24) = 0;

        (*(*v23 + 160))();
        v32 = *(v2 + v22);
        *(v2 + v22) = 0;

        sub_10002BC14(a1 & 1, 1);
      }

      v33 = sub_10003915C();
      v34 = *(v5 + 16);
      v35 = v67;
      v34(v67, v33, v4);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      v38 = os_log_type_enabled(v36, v37);
      v66 = v5;
      if (v38)
      {
        v39 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        *v39 = 136315138;
        v40 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
        swift_beginAccess();
        v41 = *(v2 + v40);
        v64 = v33;
        sub_100004890(0, &qword_100093708, CKRecord_ptr);

        sub_10000A45C(&qword_100093710, &qword_1000735F8);
        sub_100036B9C(&qword_100093718, &qword_100093708, CKRecord_ptr);
        v42 = Dictionary.Keys.description.getter();
        v44 = v43;

        v45 = sub_1000034B8(v42, v44, &v69);
        v33 = v64;

        *(v39 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v36, v37, "Already Scheduled changes: %s", v39, 0xCu);
        sub_1000036EC(v63);

        v46 = *(v66 + 8);
        v46(v67, v4);
      }

      else
      {

        v46 = *(v5 + 8);
        v46(v35, v4);
      }

      v47 = v68;
      v34(v68, v33, v4);

      v48 = Logger.logObject.getter();
      v49 = v4;
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v67 = v49;
        v53 = v52;
        v70 = v52;
        *v51 = 136315138;
        v54 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
        swift_beginAccess();
        v55 = *(v2 + v54);
        sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);

        sub_10000A45C(&qword_1000936F8, &qword_1000735F0);
        sub_100036B9C(&qword_100093700, &qword_1000936F0, CKRecordID_ptr);
        v56 = Dictionary.Keys.description.getter();
        v58 = v57;

        v59 = sub_1000034B8(v56, v58, &v70);

        *(v51 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v48, v50, "Already Scheduled deletion: %s", v51, 0xCu);
        sub_1000036EC(v53);

        v60 = v67;
        v61 = v68;
      }

      else
      {

        v61 = v47;
        v60 = v49;
      }

      return (v46)(v61, v60);
    }

    else
    {
      return sub_10002BC14(a1 & 1, 0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002BC14(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(v3 + 56);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    sub_1000335D8(result, 0.0, 10.0);
    v32 = v19;
    v20 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone;
    v21 = v19;
    if ((*(v3 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_initialUploadDone) & 1) == 0)
    {
      v22 = v19;
      v23 = sub_1000694AC();
      v24 = swift_beginAccess();
      v21 = 3.0;
      if (*v23 == 1 && (a1 & 1) == 0)
      {
        sub_1000335D8(v24, 0.0, 120.0);
        v21 = v22 + v25;
      }

      v32 = v21;
      *(v3 + v20) = 1;
    }

    v26 = sub_10003915C();
    (*(v7 + 16))(v10, v26, v6);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 67109376;
      *(v29 + 4) = a1 & 1;
      *(v29 + 8) = 2048;
      *(v29 + 10) = v21;
      _os_log_impl(&_mh_execute_header, v27, v28, "checkInPendingCloudUpdates, userInitiated: %{BOOL}d with delay: %f", v29, 0x12u);
    }

    (*(v7 + 8))(v10, v6);
    v30 = type metadata accessor for Transaction();
    __chkstk_darwin(v30);
    *&v31[-32] = v3;
    *&v31[-24] = &v32;
    v31[-16] = a1 & 1;
    v31[-15] = a2 & 1;
    return static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.checkInPendingCloudUpdates", 50, 2, sub_1000368C8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002BF78(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(v4) = a4;
  v102 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v96 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v95 = &v84 - v12;
  __chkstk_darwin(v11);
  v14 = &v84 - v13;
  Transaction.capture()();
  v15 = sub_10003915C();
  v16 = v7[2];
  v100 = v15;
  v103 = v6;
  v101 = v7 + 2;
  v99 = v16;
  (v16)(v14);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "checkInPendingCloudUpdates timer fired", v19, 2u);
  }

  v21 = v7[1];
  v20 = v7 + 1;
  v97 = v21;
  v21(v14, v103);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v94 = v20;
    v23 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer;
    v24 = Strong;
    v25 = *(Strong + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);
    if (v25)
    {
      v26 = *(*v25 + 160);
      v27 = *(Strong + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);

      v26(v28);

      v29 = *(v24 + v23);
    }

    v30 = v24;
    *(v24 + v23) = 0;

    v31 = *(v24 + 56);
    v32 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
    swift_beginAccess();
    v33 = *(v24 + v32);
    v34 = *(v33 + 16);
    v98 = v24;
    v108 = v31;
    v92 = a3;
    v91 = v33;
    if (v34)
    {
      v93 = sub_10003220C(v34, 0);
      v35 = sub_100033994(&v114, v93 + 4, v34, v33);
      LODWORD(v36) = v114;
      swift_bridgeObjectRetain_n();
      v37 = v31;
      sub_100036A30();
      if (v35 != v34)
      {
        goto LABEL_61;
      }

      v30 = v98;
      v31 = v108;
      LOBYTE(a3) = v92;
    }

    else
    {

      v38 = v31;
      v93 = _swiftEmptyArrayStorage;
    }

    v39 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    v40 = *(v30 + v39);
    v34 = v40[2];
    v90 = v40;
    if (v34)
    {
      v31 = v40;
      v33 = sub_10003220C(v34, 0);
      v41 = sub_100033994(&v114, (v33 + 32), v34, v31);
      LODWORD(v36) = v114;
      swift_bridgeObjectRetain_n();
      sub_100036A30();
      if (v41 != v34)
      {
        goto LABEL_62;
      }

      v31 = v108;
      LOBYTE(a3) = v92;
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    v42 = v95;
    v99(v95, v100, v103);
    if (IsAppleInternalBuild())
    {
      v43 = static os_log_type_t.default.getter();
    }

    else
    {
      v43 = static os_log_type_t.debug.getter();
    }

    LODWORD(v36) = v43;
    v44 = v42;
    v34 = Logger.logObject.getter();
    if (os_log_type_enabled(v34, v36))
    {
      v45 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v114 = v84;
      v85 = v45;
      *v45 = 136315138;
      if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
      {
        goto LABEL_63;
      }

      for (i = *(v33 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v86 = v36;
        v87 = v34;
        v88 = v4;
        v47 = _swiftEmptyArrayStorage;
        if (!i)
        {
          break;
        }

        v34 = 0;
        v89 = 0;
        v107 = v33 & 0xC000000000000001;
        v106 = v33 + 32;
        v4 = &off_100091000;
        v105 = v33;
        v104 = i;
        while (1)
        {
          if (v107)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v34 >= *(v33 + 16))
            {
              goto LABEL_60;
            }

            v48 = *(v106 + 8 * v34);
          }

          v33 = v48;
          if (__OFADD__(v34++, 1))
          {
            break;
          }

          v110 = v34;
          v111 = v47;
          v50 = [objc_msgSend(v48 "encryptedValues")];
          swift_unknownObjectRelease();
          v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v51 = 0;
          v112 = _swiftEmptyArrayStorage;
          v113 = _swiftEmptyArrayStorage;
          v52 = *(v36 + 16);
          v53 = v36 + 40;
          v109 = v36 + 40;
LABEL_28:
          v54 = (v53 + 16 * v51);
          while (v52 != v51)
          {
            if (v51 >= *(v36 + 16))
            {
              __break(1u);
              goto LABEL_59;
            }

            ++v51;
            v34 = (v54 + 2);
            v56 = *(v54 - 1);
            v55 = *v54;

            v57 = [v33 encryptedValues];
            v31 = String._bridgeToObjectiveC()();
            v58 = [v57 objectForKeyedSubscript:v31];

            swift_unknownObjectRelease();
            v54 = v34;
            if (v58)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v112 = v113;
              v53 = v109;
              goto LABEL_28;
            }
          }

          v47 = v111;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_100031EE8(0, v47[2] + 1, 1, v47);
          }

          v31 = v108;
          v33 = v105;
          v36 = v47[2];
          v59 = v47[3];
          if (v36 >= v59 >> 1)
          {
            v47 = sub_100031EE8((v59 > 1), v36 + 1, 1, v47);
          }

          v47[2] = v36 + 1;
          v47[v36 + 4] = v112;
          v34 = v110;
          if (v110 == v104)
          {
            goto LABEL_44;
          }
        }

LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        ;
      }

      v89 = 0;
LABEL_44:
      sub_10000A45C(&qword_1000936D8, &qword_1000735E0);
      v61 = Array.description.getter();
      v63 = v62;

      v64 = sub_1000034B8(v61, v63, &v114);

      v65 = v85;
      *(v85 + 1) = v64;
      v66 = v87;
      _os_log_impl(&_mh_execute_header, v87, v86, "Staged CKRecords - %s", v65, 0xCu);
      sub_1000036EC(v84);

      v60 = v103;
      v97(v95, v103);
      LOBYTE(v4) = v88;
      LOBYTE(a3) = v92;
    }

    else
    {

      v60 = v103;
      v97(v44, v103);
      v89 = 0;
    }

    v99(v96, v100, v60);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134217984;
      if (v33 < 0 || (v33 & 0x4000000000000000) != 0)
      {
        v70 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v70 = *(v33 + 16);
      }

      *(v69 + 4) = v70;

      _os_log_impl(&_mh_execute_header, v67, v68, "checkInPendingCloudUpdates count: %ld", v69, 0xCu);
    }

    else
    {
    }

    v97(v96, v103);
    sub_100004890(0, &qword_1000936D0, CKModifyRecordsOperation_ptr);

    v71 = v93;

    v115.value._rawValue = v33;
    v115.is_nil = v71;
    v72 = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v115, v116).super.super.super.super.isa;
    v73 = v98;
    if (a3)
    {
      v74 = sub_100019E0C();
    }

    else
    {
      v74 = sub_100019EBC();
    }

    v75 = v74;
    [(objc_class *)v72 setGroup:v74, v84];

    [(objc_class *)v72 setCallbackQueue:*(v73 + 64)];
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v72 setQualityOfService:25];
    }

    v76 = swift_allocObject();
    *(v76 + 16) = v90;
    *(v76 + 24) = v102;

    CKModifyRecordsOperation.perRecordSaveBlock.setter();
    *(swift_allocObject() + 16) = v91;
    CKModifyRecordsOperation.perRecordDeleteBlock.setter();
    v77 = swift_allocObject();
    v78 = v98;
    *(v77 + 16) = v31;
    *(v77 + 24) = v78;
    v79 = v93;
    *(v77 + 32) = v33;
    *(v77 + 40) = v79;
    *(v77 + 48) = a3 & 1;
    *(v77 + 49) = v4 & 1;
    v80 = v31;

    CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
    v81 = type metadata accessor for Transaction();
    __chkstk_darwin(v81);
    *(&v84 - 2) = v72;
    static Transaction.named<A>(_:with:)("com.apple.bluetoothuser.checkInPendingCloudUpdates.completionBlock", 66, 2, sub_100036A68);
    v82 = sub_100019AA4();
    v83 = [v82 privateCloudDatabase];

    [v83 addOperation:v72];
  }
}

void sub_10002CBE0(void *a1, void *a2, int a3, uint64_t a4, _DWORD *a5)
{
  v81 = a5;
  LODWORD(v85) = a3;
  v88 = a2;
  v90 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v84 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v9);
  v82 = &v79 - v12;
  __chkstk_darwin(v11);
  v83 = (&v79 - v13);
  v14 = 1 << *(a4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a4 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      v20 = __clz(__rbit64(v16)) | (v19 << 6);
      v21 = *(*(a4 + 48) + 8 * v20);
      v22 = *(a4 + 56) + 16 * v20;
      v23 = *(v22 + 8);
      v89 = *v22;
      v24 = v21;
      v92 = v23;

      v91 = v24;
      v25 = [v24 recordID];
      v26 = [v25 recordName];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = [v90 recordName];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v27 == v31 && v29 == v33)
      {

        goto LABEL_20;
      }

      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v35)
      {
        break;
      }

      v16 &= v16 - 1;

      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    v36 = sub_10003915C();
    v37 = *(v87 + 16);
    if (v85)
    {
      v37(v84, v36, v86);
      v38 = v90;
      v39 = v88;
      sub_10003785C(v88, 1);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      sub_100008738(v39, 1);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412546;
        *(v42 + 4) = v38;
        *v43 = v38;
        *(v42 + 12) = 2112;
        v44 = v38;
        sub_10003785C(v39, 1);
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 14) = v45;
        v43[1] = v45;
        _os_log_impl(&_mh_execute_header, v40, v41, "CheckInPendingCloudUpdates CKRecord save failed %@ with error: %@", v42, 0x16u);
        sub_10000A45C(&qword_100093F70, &qword_1000730D0);
        swift_arrayDestroy();
      }

      (*(v87 + 8))(v84, v86);
      v94 = v39;
      v95 = 1;
      v89(&v94);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_100026830(v39, 0);
      }
    }

    else
    {
      v37(v83, v36, v86);
      v46 = v90;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v46;
        *v50 = v46;
        v51 = v46;
        _os_log_impl(&_mh_execute_header, v47, v48, "CheckInPendingCloudUpdates CKRecord successfully saved (%@.", v49, 0xCu);
        sub_100006CAC(v50, &qword_100093F70, &qword_1000730D0);
      }

      v52 = v86;
      v53 = *(v87 + 8);
      v87 += 8;
      v53(v83, v86);
      v54 = v82;
      v37(v82, v36, v52);
      if (IsAppleInternalBuild())
      {
        v55 = static os_log_type_t.default.getter();
      }

      else
      {
        v55 = static os_log_type_t.debug.getter();
      }

      v56 = v55;
      v57 = v88;
      v58 = Logger.logObject.getter();
      if (os_log_type_enabled(v58, v56))
      {
        LODWORD(v83) = v56;
        v84 = v58;
        v85 = v53;
        v59 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v94 = v80;
        v81 = v59;
        *v59 = 136315138;
        v60 = [objc_msgSend(v57 "encryptedValues")];
        swift_unknownObjectRelease();
        v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
        v90 = _swiftEmptyArrayStorage;
        v93 = _swiftEmptyArrayStorage;
        v63 = *(v61 + 16);
        v64 = v61 + 40;
        v79 = v61 + 40;
LABEL_33:
        v65 = (v64 + 16 * v62);
        while (v63 != v62)
        {
          if (v62 >= *(v61 + 16))
          {
            goto LABEL_45;
          }

          ++v62;
          v66 = v65 + 2;
          v68 = *(v65 - 1);
          v67 = *v65;

          v69 = [v88 encryptedValues];
          v70 = String._bridgeToObjectiveC()();
          v71 = [v69 objectForKeyedSubscript:v70];

          swift_unknownObjectRelease();
          v65 = v66;
          if (v71)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v72 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v90 = v93;
            v64 = v79;
            goto LABEL_33;
          }
        }

        sub_10000A45C(&unk_100093260, &qword_1000730C8);
        v73 = Array.description.getter();
        v75 = v74;

        v76 = sub_1000034B8(v73, v75, &v94);

        v77 = v81;
        *(v81 + 1) = v76;
        v78 = v84;
        _os_log_impl(&_mh_execute_header, v84, v83, "CheckInPendingCloudUpdates saved CKRecords values - %s", v77, 0xCu);
        sub_1000036EC(v80);

        v85(v82, v86);
        v57 = v88;
      }

      else
      {

        v53(v54, v86);
      }

      v94 = v57;
      v95 = 0;
      v89(&v94);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(a4 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
  }
}

void sub_10002D4A0(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v49 = a3;
  v46 = a2;
  v6 = type metadata accessor for Logger();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  v8 = __chkstk_darwin(v6);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v45 - v10;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v13)) | (v16 << 6);
      v18 = *(*(a4 + 48) + 8 * v17);
      v19 = *(a4 + 56) + 16 * v17;
      v21 = *v19;
      v20 = *(v19 + 8);
      sub_100004890(0, &unk_100094230, NSObject_ptr);
      v22 = v18;
      swift_retain_n();
      v23 = v22;
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v13 &= v13 - 1;

      v15 = v16;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    if (v49)
    {
      v25 = sub_10003915C();
      v27 = v50;
      v26 = v51;
      v28 = v48;
      (*(v50 + 16))(v48, v25, v51);
      v29 = v46;
      swift_errorRetain();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      sub_100036B6C(v29, 1);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v30, v31, "CheckInPendingCloudUpdates CKRecord deletion failed with error: %@", v32, 0xCu);
        sub_100006CAC(v33, &qword_100093F70, &qword_1000730D0);

        v28 = v48;
      }

      (*(v27 + 8))(v28, v26);
      v52 = v29;
    }

    else
    {
      v35 = sub_10003915C();
      v37 = v50;
      v36 = v51;
      v38 = v47;
      (*(v50 + 16))(v47, v35, v51);
      v39 = a1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v43 = v39;
        v44 = v39;
        _os_log_impl(&_mh_execute_header, v40, v41, "CheckInPendingCloudUpdates CKRecord deleted: %@", v42, 0xCu);
        sub_100006CAC(v43, &qword_100093F70, &qword_1000730D0);

        v38 = v47;
      }

      (*(v37 + 8))(v38, v36);
      v52 = 0;
    }

    v21(&v52);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(a4 + 64 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t sub_10002D92C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v26 = a8;
  v30 = a3;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v13);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for DispatchQoS();
  v27 = *(v17 - 8);
  v28 = v17;
  v18 = *(v27 + 64);
  __chkstk_darwin(v17);
  v20 = &v25[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  a2 &= 1u;
  *(v22 + 32) = a2;
  *(v22 + 40) = a5;
  *(v22 + 48) = a6;
  *(v22 + 56) = a7;
  *(v22 + 57) = v26;
  aBlock[4] = sub_100036B78;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002410;
  aBlock[3] = &unk_10008A708;
  v23 = _Block_copy(aBlock);

  sub_100036B90(a1, a2);

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10000229C(&qword_100092D20, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A45C(&unk_1000931F0, &unk_100072C10);
  sub_10000FA34(&qword_100092D30, &unk_1000931F0, &unk_100072C10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);
  (*(v29 + 8))(v16, v13);
  (*(v27 + 8))(v20, v28);
}

uint64_t sub_10002DC74(uint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, int a6, int a7)
{
  v191 = a5;
  v182 = a2;
  v12 = type metadata accessor for Logger();
  v183 = *(v12 - 8);
  v13 = v183[8];
  v14 = __chkstk_darwin(v12);
  v186 = &v177[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v187 = &v177[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v177[-v19];
  v21 = __chkstk_darwin(v18);
  v23 = &v177[-v22];
  v24 = __chkstk_darwin(v21);
  v26 = &v177[-v25];
  __chkstk_darwin(v24);
  v28 = &v177[-v27];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v195 = result;
  if (!result)
  {
    return result;
  }

  v192 = a4;
  v30 = a4 >> 62;
  v190 = v12;
  v179 = a1;
  v178 = a6;
  if (a3)
  {
    v31 = &v200;
    if (v30)
    {
      goto LABEL_74;
    }

    for (i = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v33 = v195;
      v34 = v187;
      if (i)
      {
        break;
      }

LABEL_40:
      v78 = sub_10003915C();
      v79 = v183;
      v80 = v183[2];
      v181 = v78;
      v185 = (v183 + 2);
      v180 = v80;
      (v80)(v34);

      v35 = Logger.logObject.getter();
      LOBYTE(v40) = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v35, v40))
      {

        v85 = v79[1];
        v85(v34, v12);
        goto LABEL_47;
      }

      v42 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v197 = v34;
      *v42 = 136315138;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        goto LABEL_45;
      }

      v82 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
      v83 = Strong;
      swift_beginAccess();
      v84 = *(v83 + v82);

LABEL_46:
      sub_100004890(0, &qword_100093708, CKRecord_ptr);
      sub_10000A45C(&qword_100093710, &qword_1000735F8);
      sub_100036B9C(&qword_100093718, &qword_100093708, CKRecord_ptr);
      v86 = Dictionary.description.getter();
      v88 = v87;

      v89 = sub_1000034B8(v86, v88, &v197);

      *(v42 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v35, v40, "Pending changes in queue: %s", v42, 0xCu);
      sub_1000036EC(v34);

      v85 = v183[1];
      v12 = v190;
      v85(v187, v190);
      v33 = v195;
LABEL_47:
      v90 = v186;
      v184 = v85;
      if (v191 >> 62)
      {
        v91 = _CocoaArrayWrapper.endIndex.getter();
        if (!v91)
        {
LABEL_110:
          (v180)(v90, v181, v12);

          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            v166 = swift_slowAlloc();
            v196 = v166;
            *v165 = 136315138;
            swift_beginAccess();
            v167 = swift_weakLoadStrong();
            if (v167)
            {
              v168 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
              v169 = v167;
              swift_beginAccess();
              v170 = *(v169 + v168);
            }

            else
            {
              sub_10003774C(_swiftEmptyArrayStorage, &qword_100093738, &qword_100073618, sub_1000328C4);
            }

            sub_100004890(0, &qword_1000936F0, CKRecordID_ptr);
            sub_10000A45C(&qword_1000936F8, &qword_1000735F0);
            sub_100036B9C(&qword_100093700, &qword_1000936F0, CKRecordID_ptr);
            v171 = Dictionary.description.getter();
            v173 = v172;

            v174 = sub_1000034B8(v171, v173, &v196);

            *(v165 + 4) = v174;
            _os_log_impl(&_mh_execute_header, v163, v164, "Pending deletion in queue: %s", v165, 0xCu);
            sub_1000036EC(v166);

            v184(v186, v190);
            v33 = v195;
          }

          else
          {

            v184(v90, v12);
          }

          v175 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
          swift_beginAccess();
          if (*(*(v33 + v175) + 16) || (v176 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords, swift_beginAccess(), *(*(v33 + v176) + 16)))
          {
            sub_10002B51C(v178 & 1);
          }
        }
      }

      else
      {
        v91 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v91)
        {
          goto LABEL_110;
        }
      }

      v92 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
      v93 = v191;
      v193 = v191 & 0xC000000000000001;
      swift_beginAccess();
      v94 = 0;
      v188 = v93 & 0xFFFFFFFFFFFFFF8;
      v187 = (v93 + 32);
      v192 = v91;
      v189 = v92;
      while (1)
      {
        if (v193)
        {
          v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v31 = *(v188 + 16);
          if (v94 >= v31)
          {
            goto LABEL_73;
          }

          v97 = *&v187[8 * v94];
        }

        v31 = &v201;
        v194 = v97;
        v39 = __OFADD__(v94++, 1);
        if (v39)
        {
          goto LABEL_71;
        }

        v98 = *(v33 + v92);
        v99 = 1 << *(v98 + 32);
        v100 = v99 < 64 ? ~(-1 << v99) : -1;
        v101 = v100 & *(v98 + 64);
        v12 = (v99 + 63) >> 6;
        v102 = *(v33 + v92);
        swift_bridgeObjectRetain_n();
        v31 = 0;
        if (!v101)
        {
          break;
        }

        while (1)
        {
          v103 = v31;
LABEL_65:
          v104 = __clz(__rbit64(v101)) | (v103 << 6);
          v105 = *(*(v98 + 48) + 8 * v104);
          v106 = *(v98 + 56) + 16 * v104;
          v107 = *v106;
          v108 = *(v106 + 8);
          sub_100004890(0, &unk_100094230, NSObject_ptr);
          v109 = v105;
          swift_retain_n();
          v110 = v109;
          v111 = static NSObject.== infix(_:_:)();

          if (v111)
          {
            break;
          }

          v101 &= v101 - 1;

          v31 = v103;
          if (!v101)
          {
            goto LABEL_62;
          }
        }

        v196 = v182;
        v107(&v196);

LABEL_51:
        v33 = v195;
        v92 = v189;
        swift_beginAccess();
        v95 = v194;
        v96 = sub_1000324A4(v194, sub_1000328C4, &qword_100093738, &qword_100073618);
        swift_endAccess();
        sub_100008364(v96);

        v12 = v190;
        v90 = v186;
        if (v94 == v192)
        {
          goto LABEL_110;
        }
      }

LABEL_62:
      while (1)
      {
        v103 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v103 >= v12)
        {

          goto LABEL_51;
        }

        v101 = *(v98 + 64 + 8 * v103);
        v31 = (v31 + 1);
        if (v101)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      *(v31 - 32);
    }

    v35 = v192;
    v185 = v192 & 0xC000000000000001;
    v189 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
    swift_beginAccess();
    v36 = 0;
    v181 = v35 & 0xFFFFFFFFFFFFFF8;
    v180 = (v35 + 32);
    v184 = i;
    while (1)
    {
      if (v185)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v181 + 16);
        if (v36 >= v31)
        {
          goto LABEL_72;
        }

        v38 = v180[v36].isa;
      }

      v31 = &v201;
      v194 = v38;
      v39 = __OFADD__(v36, 1);
      v40 = (v36 + 1);
      if (v39)
      {
        goto LABEL_70;
      }

      v188 = v40;
      v41 = *(v33 + v189);
      v42 = v41 + 64;
      v43 = 1 << *(v41 + 32);
      v44 = v43 < 64 ? ~(-1 << v43) : -1;
      v45 = v44 & *(v41 + 64);
      v46 = (v43 + 63) >> 6;
      v193 = v41;
      swift_bridgeObjectRetain_n();
      v47 = 0;
      if (!v45)
      {
        break;
      }

      while (1)
      {
        v48 = v47;
LABEL_22:
        v49 = __clz(__rbit64(v45)) | (v48 << 6);
        v50 = *(*(v193 + 48) + 8 * v49);
        v51 = *(v193 + 56) + 16 * v49;
        v35 = *v51;
        v52 = *(v51 + 8);
        sub_100004890(0, &unk_100094230, NSObject_ptr);
        v40 = v50;

        v53 = [v40 recordID];
        v54 = [v194 recordID];
        v34 = static NSObject.== infix(_:_:)();

        if (v34)
        {
          break;
        }

        v45 &= v45 - 1;

        v47 = v48;
        if (!v45)
        {
          goto LABEL_19;
        }
      }

      v197 = v182;
      v198 = 1;
      (v35)(&v197);

LABEL_8:
      v33 = v195;
      swift_beginAccess();
      v35 = v194;
      v37 = sub_1000324A4(v194, sub_100032874, &qword_100093730, &qword_100073610);
      swift_endAccess();
      sub_100008364(v37);

      v36 = v188;
      v12 = v190;
      v34 = v187;
      if (v188 == v184)
      {
        goto LABEL_40;
      }
    }

LABEL_19:
    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        break;
      }

      if (v48 >= v46)
      {

        goto LABEL_8;
      }

      v45 = *(v42 + 8 * v48);
      ++v47;
      if (v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_45:
    sub_10003774C(_swiftEmptyArrayStorage, &qword_100093730, &qword_100073610, sub_100032874);
    goto LABEL_46;
  }

  v55 = sub_10003915C();
  v56 = v183[2];
  v189 = v55;
  v193 = (v183 + 2);
  v188 = v56;
  v56(v28);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "CKRecords modify operation finished successfully", v59, 2u);
  }

  v60 = v183[1];
  ++v183;
  v194 = v60;
  result = (v60)(v28, v190);
  v185 = v20;
  LODWORD(v184) = a7;
  v181 = v23;
  if (v30)
  {
    v112 = v192;
    result = _CocoaArrayWrapper.endIndex.getter();
    v61 = v112;
    v62 = result;
    if (!result)
    {
      goto LABEL_76;
    }
  }

  else
  {
    v61 = v192;
    v62 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
      goto LABEL_76;
    }
  }

  if (v62 < 1)
  {
    __break(1u);
    goto LABEL_122;
  }

  v63 = 0;
  v64 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
  v65 = v61 & 0xC000000000000001;
  do
  {
    if (v65)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v67 = *(v61 + 8 * v63 + 32);
    }

    v68 = v67;
    v69 = v195;
    swift_beginAccess();
    v70 = *(v69 + v64);
    v71 = sub_100032874(v68);
    if (v72)
    {
      v73 = v71;
      v74 = v195;
      v75 = *(v195 + v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v74 + v64);
      v197 = v77;
      *(v74 + v64) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1000333D0(&qword_100093730, &qword_100073610);
        v77 = v197;
      }

      v66 = *(*(v77 + 56) + 16 * v73 + 8);

      sub_100032DE8(v73, v77);
      *(v74 + v64) = v77;
    }

    ++v63;
    swift_endAccess();

    v61 = v192;
  }

  while (v62 != v63);
LABEL_76:
  v113 = v190;
  (v188)(v26, v189, v190);

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v199 = v117;
    *v116 = 136315138;
    swift_beginAccess();
    v118 = swift_weakLoadStrong();
    if (v118)
    {
      v119 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords;
      v120 = v118;
      swift_beginAccess();
      v121 = *(v120 + v119);
    }

    else
    {
      v121 = 0;
    }

    v197 = v121;
    sub_10000A45C(&qword_100093728, &qword_100073608);
    v124 = String.init<A>(describing:)();
    v126 = sub_1000034B8(v124, v125, &v199);

    *(v116 + 4) = v126;
    _os_log_impl(&_mh_execute_header, v114, v115, "Pending changes in queue: %s", v116, 0xCu);
    sub_1000036EC(v117);

    v122 = v26;
    v123 = v190;
  }

  else
  {

    v122 = v26;
    v123 = v113;
  }

  result = (v194)(v122, v123);
  if (v191 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v127 = result;
    if (!result)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v127 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v127)
    {
      goto LABEL_95;
    }
  }

  if (v127 < 1)
  {
LABEL_122:
    __break(1u);
    return result;
  }

  v128 = 0;
  v129 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  v130 = v191 & 0xC000000000000001;
  do
  {
    if (v130)
    {
      v132 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v132 = *(v191 + 8 * v128 + 32);
    }

    v133 = v132;
    v134 = v195;
    swift_beginAccess();
    v135 = *(v134 + v129);
    v136 = sub_1000328C4(v133);
    if (v137)
    {
      v138 = v136;
      v139 = v195;
      v140 = *(v195 + v129);
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v142 = *(v139 + v129);
      v197 = v142;
      *(v139 + v129) = 0x8000000000000000;
      if (!v141)
      {
        sub_1000333D0(&qword_100093738, &qword_100073618);
        v142 = v197;
      }

      v131 = *(*(v142 + 56) + 16 * v138 + 8);

      sub_100032DE8(v138, v142);
      *(v139 + v129) = v142;
    }

    ++v128;
    swift_endAccess();
  }

  while (v127 != v128);
LABEL_95:
  v143 = v181;
  v144 = v190;
  (v188)(v181, v189, v190);

  v145 = Logger.logObject.getter();
  v146 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v199 = v148;
    *v147 = 136315138;
    swift_beginAccess();
    v149 = swift_weakLoadStrong();
    v150 = v185;
    if (v149)
    {
      v151 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
      v152 = v149;
      swift_beginAccess();
      v153 = *(v152 + v151);
    }

    else
    {
      v153 = 0;
    }

    v197 = v153;
    sub_10000A45C(&qword_100093720, &qword_100073600);
    v155 = String.init<A>(describing:)();
    v157 = sub_1000034B8(v155, v156, &v199);

    *(v147 + 4) = v157;
    _os_log_impl(&_mh_execute_header, v145, v146, "Pending deletion in queue: %s", v147, 0xCu);
    sub_1000036EC(v148);

    v144 = v190;
    (v194)(v143, v190);
    v154 = v195;
  }

  else
  {

    (v194)(v143, v144);
    v154 = v195;
    v150 = v185;
  }

  v158 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords;
  swift_beginAccess();
  if (*(*(v154 + v158) + 16) || (v159 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords, swift_beginAccess(), *(*(v154 + v159) + 16)))
  {
    sub_10002B51C(v178 & 1);
  }

  if ((v184 & 1) == 0)
  {
  }

  sub_100026364(45.0);
  (v188)(v150, v189, v144);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&_mh_execute_header, v160, v161, "Cloud update done, continue the fetch...", v162, 2u);
  }

  else
  {
  }

  return (v194)(v150, v144);
}

uint64_t sub_10002F284()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 80);

  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_systemNotificationSubscription, &qword_1000931D0, qword_1000730B0);
  sub_100006CAC(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_applePushNotificationSubscription, &qword_1000931C8, &qword_1000730A8);

  v5 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingUpdateCloudRecords);

  v6 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_pendingDeletionCloudRecords);

  v7 = *(v0 + OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_updateTimer);

  v8 = OBJC_IVAR____TtC14bluetoothuserd23CloudStorageCoordinator_tokenDirectory;
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_10002F418()
{
  sub_10002F284();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002F470(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v66 = &v63 - v9;
  v10 = __chkstk_darwin(v8);
  v65 = &v63 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v63 - v13;
  v15 = __chkstk_darwin(v12);
  v64 = &v63 - v16;
  __chkstk_darwin(v15);
  v18 = &v63 - v17;
  v19 = [a1 userInfo];
  if (!v19)
  {
    __break(1u);
    return;
  }

  v20 = v19;
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v67 = [objc_opt_self() notificationFromRemoteNotificationDictionary:isa];

  if (!v67)
  {
    v27 = sub_10003915C();
    v28 = v3;
    (*(v3 + 16))(v7, v27, v2);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = 0;
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unknown notification: %@", v31, 0xCu);
      sub_100006CAC(v32, &qword_100093F70, &qword_1000730D0);
    }

    (*(v28 + 8))(v7, v2);
    return;
  }

  v22 = [v67 notificationType];
  v23 = v3;
  v24 = v2;
  if (v22 <= 2)
  {
    if (v22 == 1)
    {
      v44 = sub_10003915C();
      (*(v3 + 16))(v18, v44, v2);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Query notifications are not handled", v47, 2u);
      }

      else
      {
      }

      (*(v23 + 8))(v18, v2);
      return;
    }

    v25 = v66;
    if (v22 == 2)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        sub_10002FC58(v26);
LABEL_15:
        v34 = v67;

        return;
      }

      v52 = sub_10003915C();
      v53 = v64;
      (*(v3 + 16))(v64, v52, v2);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Unable to cast to CKRecordZoneNotification", v56, 2u);
      }

      else
      {
      }

      (*(v23 + 8))(v53, v2);
      return;
    }

LABEL_18:
    v35 = v22;
    v36 = sub_10003915C();
    (*(v3 + 16))(v25, v36, v2);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v68 = v35;
      v69 = v40;
      *v39 = 136315138;
      type metadata accessor for NotificationType(0);
      v41 = String.init<A>(describing:)();
      v43 = sub_1000034B8(v41, v42, &v69);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Unknown notificationType: %s", v39, 0xCu);
      sub_1000036EC(v40);
    }

    else
    {
    }

    (*(v23 + 8))(v25, v24);
    return;
  }

  v25 = v66;
  if (v22 == 3)
  {
    v48 = sub_10003915C();
    (*(v3 + 16))(v14, v48, v2);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Read notifications are not handled", v51, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v14, v2);
    return;
  }

  if (v22 != 4)
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    sub_10003032C(v33);
    goto LABEL_15;
  }

  v57 = sub_10003915C();
  v58 = *(v3 + 16);
  v59 = v65;
  v58(v65, v57, v2);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Unable to cast to CKRecordZoneNotification", v62, 2u);
  }

  else
  {
  }

  (*(v23 + 8))(v59, v2);
}