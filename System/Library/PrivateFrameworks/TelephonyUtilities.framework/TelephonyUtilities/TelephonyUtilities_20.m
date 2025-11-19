BOOL sub_100366D2C(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(NSDate) init];
  v13 = [a1 properties];
  v14 = [v13 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v11, v2);
  v16 = [v12 compare:isa];

  return v16 == 1;
}

double sub_100366E70()
{
  if (_TUIsInternalInstall())
  {
    v1 = objc_opt_self();
    v2 = [v1 tu_defaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 objectForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100009A04(v10, &unk_1006A2D10, &unk_10057D940);
      v5 = [v1 tu_defaults];
      v6 = String._bridgeToObjectiveC()();
      [v5 doubleForKey:v6];
      v8 = v7;

      if (v8 > 0.0)
      {
        return v8;
      }
    }

    else
    {
      memset(v10, 0, sizeof(v10));
      sub_100009A04(v10, &unk_1006A2D10, &unk_10057D940);
    }
  }

  return [*(v0 + OBJC_IVAR___CSDConversationLinkManager_serverBag) linkPseudonymExpiry];
}

unint64_t sub_100367024()
{
  result = [*(v0 + OBJC_IVAR___CSDConversationLinkManager_serverBag) inactiveLinkCacheLimit];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

id sub_100367058()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationLinkManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100367160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR___CSDConversationLinkManager_dataSource];
  sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
  sub_100008DB8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v42 = 0;
  v7 = sub_100025C24();
  v9 = [v7 v8];

  if (v9)
  {
    v10 = qword_1006A0B20;
    v11 = v42;
    if (v10 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000075F0(v12, qword_1006BA5E0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      sub_100007BFC();
      v15 = swift_slowAlloc();
      v16 = sub_100005E84();
      v42 = v16;
      *v15 = 136315138;
      sub_100008DB8();
      v17 = Array.description.getter();
      v19 = sub_10002741C(v17, v18, &v42);

      *(v15 + 4) = v19;
      sub_100006BC4();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
      sub_100009B7C(v16);
      sub_100009ED0();

      sub_100009ED0();
    }

    v25 = *&v3[OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager];
    sub_1003D9ECC(a2);
    v26 = *&v3[OBJC_IVAR___CSDConversationLinkManager_delegate];
    if (v26)
    {
      v27 = *&v3[OBJC_IVAR___CSDConversationLinkManager_delegate];
      swift_unknownObjectRetain();
      sub_100008DB8();
      v28 = Array._bridgeToObjectiveC()().super.isa;
      [v26 linkManager:v3 updatedLinkDescriptorsFromSync:v28];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = v42;
    sub_100010264();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006A0B20 != -1)
    {
      sub_10000854C();
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000075F0(v30, qword_1006BA5E0);

    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    v33 = sub_10003EB80();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = sub_100007C08();
      sub_100015DC0();
      v36 = swift_slowAlloc();
      v37 = sub_100005E84();
      v42 = v37;
      *v35 = 136315394;
      sub_100008DB8();
      v38 = Array.description.getter();
      v40 = sub_10002741C(v38, v39, &v42);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2112;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v41;
      *v36 = v41;
      _os_log_impl(&_mh_execute_header, v31, v32, "ConversationLinkSync: Failed to persist links %s {error: %@)}", v35, 0x16u);
      sub_100009A04(v36, &unk_1006A2630, &qword_10057CB40);
      sub_100018250();

      sub_100009B7C(v37);
      sub_100009ED0();

      sub_100009ED0();
    }

    else
    {
    }
  }
}

void sub_100367900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (NSNotFound.getter() == a1)
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000AF9C(v11, qword_1006BA5E0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10002741C(a3, a4, &v23);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Removal of invalid conversation link with pseudonym %s failed with error %@", v13, 0x16u);
      sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);

      sub_100009B7C(v15);
    }

    else
    {
    }
  }

  else
  {
    v18 = *(a5 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v18)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10057CA80;
      *(v19 + 32) = a6;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v20 = a6;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v18 linkManager:a5 removedLinkDescriptorsFromIDSSignal:isa];

      swift_unknownObjectRelease();
    }
  }
}

void sub_100367DF4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &aBlock[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = a1;
    [v18 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006AF0(0, &qword_1006A6738, TUMutableConversationLinkDescriptor_ptr);
    if (swift_dynamicCast())
    {
      v19 = aBlock[6];
      v20 = [a5 properties];
      v21 = [v20 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v13 + 8))(v17, v12);
      [v19 setExpirationDate:isa];

      sub_1003540EC();
      v23 = *&a6[OBJC_IVAR___CSDConversationLinkManager_dataSource];
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10057CA80;
      *(v24 + 32) = v19;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      v25 = v19;
      v26 = Array._bridgeToObjectiveC()().super.isa;

      v27 = swift_allocObject();
      v27[2] = a5;
      v27[3] = a6;
      v27[4] = v18;
      aBlock[4] = sub_10036869C;
      aBlock[5] = v27;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003541FC;
      aBlock[3] = &unk_100628F30;
      v28 = _Block_copy(aBlock);
      v29 = v18;
      v30 = a5;
      v31 = a6;

      [v23 addOrUpdateConversationLinkDescriptors:v26 completion:v28];
      _Block_release(v28);

      return;
    }
  }

  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000AF9C(v32, qword_1006BA5E0);

  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v35 = 136315394;
    *(v35 + 4) = sub_10002741C(a3, a4, aBlock);
    *(v35 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      v39 = v38;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    *(v35 + 14) = v38;
    *v36 = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Updating expiration of conversation link with pseudonym %s failed, unable to find link with error %@)", v35, 0x16u);
    sub_100009A04(v36, &unk_1006A2630, &qword_10057CB40);

    sub_100009B7C(v37);
  }
}

void sub_100368290(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v6 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_delegate);
    if (v6)
    {
      sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_10057CA80;
      *(v8 + 32) = a5;
      sub_100006AF0(0, &qword_1006A2E90, TUConversationLinkDescriptor_ptr);
      swift_unknownObjectRetain();
      v9 = a5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v6 linkManager:a4 updatedLinkDescriptorsFromIDSSignal:isa];

      swift_unknownObjectRelease();
    }

    v11 = *(a4 + OBJC_IVAR___CSDConversationLinkManager_linkSyncManager);
    sub_1003EFB64();
  }

  else
  {
    if (qword_1006A0B20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000AF9C(v14, qword_1006BA5E0);
    v15 = a3;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      *(v17 + 4) = v15;
      *v18 = v15;
      *(v17 + 12) = 2112;
      v19 = v15;
      if (a2)
      {
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v17 + 14) = v20;
      v18[1] = v21;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Saving expiration date for pseudonym %@ failed with error %@)", v17, 0x16u);
      sub_10026D814(&unk_1006A2630, &qword_10057CB40);
      swift_arrayDestroy();
    }
  }
}

void sub_1003685F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 64);
    do
    {
      v4 = *(v3 - 4);
      v5 = *(v3 - 3);
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v3 += 5;
      v9 = v4;
      v10 = v5;
      v11 = v7;

      sub_10035CD24(v9, v10, v11, v6, v8);

      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_1003686C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003A631C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10036872C(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_10036872C(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_1003688E8(v7, v8, a1, v4);
      v6[2] = 0;
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
    return sub_100368820(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100368820(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1003688E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10047002C(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_10047002C(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_100368F1C((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_100368DF0(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_100368DF0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1003A5940(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_100368F1C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_100368F1C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_100060528(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_100060528(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_1003690C0(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v26 = a1[4];
  v27 = a1[3];
  v4 = sub_10000B6F4(*a1);
  v31 = 0;
  v5 = 0;
  v28 = _swiftEmptyArrayStorage;
  v29 = &_swiftEmptyArrayStorage[4];
  while (v4 != v5)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v6 = *(v1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_32;
    }

    v34 = v6;
    if (v2(&v34))
    {
      v34 = v7;
      v27(&v33, &v34);

      v10 = v31;
      v9 = v33;
      if (!v31)
      {
        v11 = v28[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v32 = v33;
        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        v14 = swift_allocObject();
        v15 = (j__malloc_size(v14) - 32) / 8;
        v14[2] = v13;
        v14[3] = (2 * v15) | 1;
        v16 = (v14 + 4);
        v17 = v28[3];
        v18 = v17 >> 1;
        if (v28[2])
        {
          if (v14 != v28 || v16 >= &v28[v18 + 4])
          {
            v30 = v15;
            v25 = v28[3];
            memmove(v14 + 4, v28 + 4, 8 * v18);
            v16 = (v14 + 4);
            v17 = v25;
            v15 = v30;
          }

          v28[2] = 0;
        }

        v29 = (v16 + 8 * v18);
        v10 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - (v17 >> 1);

        v28 = v14;
        v9 = v32;
      }

      v20 = __OFSUB__(v10, 1);
      v21 = v10 - 1;
      if (v20)
      {
        goto LABEL_34;
      }

      *v29++ = v9;
      v31 = v21;
      v5 = v8;
    }

    else
    {

      ++v5;
    }
  }

  v22 = v28[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v20 = __OFSUB__(v23, v31);
  v24 = v23 - v31;
  if (!v20)
  {
    v28[2] = v24;
    return;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_100369300(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_10000B6F4(a1);
  v5 = 0;
  v6 = 0;
  v28 = _swiftEmptyArrayStorage;
  v29 = &_swiftEmptyArrayStorage[4];
  while (v4 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_32;
    }

    v32 = v7;
    if (a2(&v32))
    {
      if (!v5)
      {
        v10 = *(v28 + 3);
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_36;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        v30 = v12;
        sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
        v13 = swift_allocObject();
        v14 = j__malloc_size(v13);
        v15 = v13;
        v16 = (v14 - 32) / 8;
        *(v13 + 2) = v30;
        *(v13 + 3) = (2 * v16) | 1;
        v17 = v13 + 32;
        v18 = *(v28 + 3);
        v19 = v18 >> 1;
        v27 = v15;
        if (*(v28 + 2))
        {
          if (v15 != v28 || v17 >= &v28[8 * v19 + 32])
          {
            v21 = v17;
            v26 = (v14 - 32) / 8;
            v31 = *(v28 + 3);
            memmove(v17, v28 + 32, 8 * v19);
            v17 = v21;
            v18 = v31;
            v16 = v26;
          }

          *(v28 + 2) = 0;
        }

        v29 = &v17[8 * v19];
        v5 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

        v28 = v27;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_34;
      }

      *v29 = v8;
      v29 += 8;
      v6 = v9;
    }

    else
    {

      ++v6;
    }
  }

  v23 = *(v28 + 3);
  if (v23 < 2)
  {
    return;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    *(v28 + 2) = v25;
    return;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_10036951C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v5 = *(a4 + 32);
  (*(a4 + 24))(&v7, &v8);
  a2(&v9, &v7);

  return v9;
}

uint64_t sub_100369594(void *a1)
{
  v1 = [a1 invitedMemberHandles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  sub_100008DB8();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10036962C(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a2 setInvitedHandles:isa];
}

void sub_1003696E4(uint64_t a1, void *a2)
{
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  sub_10000CE3C(&qword_1006A3C50, &qword_1006A2640, TUHandle_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  [a2 setInvitedHandles:isa];
}

id sub_100369794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [a10 userNotificationWithIdentifier:a1 title:a2 message:v12 defaultButton:v13 alternateButton:v14 otherButton:a9];

  return v15;
}

void sub_10036987C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setRepresentedApplicationBundle:v4];
}

uint64_t sub_1003698E0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A224();
  }

  return sub_100006B30();
}

void sub_100369938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setName:v4];
}

void sub_100369990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setLinkName:v4];
}

uint64_t sub_1003699E8(void *a1)
{
  v1 = [a1 conversationMessageBytes];
  if (v1)
  {
    v2 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000A224();
  }

  return sub_100006B30();
}

void sub_100369A44(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_100049B14(a1, a2);
  [a3 setPrivateKey:isa];
}

char *sub_100369AB8(void *a1, void *a2, void *a3)
{
  v5 = qword_1006A0AC8;
  v6 = a1;
  v7 = a3;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = sub_10036AEA8(v6, v7, qword_1006A7FD0);

  v9 = objc_allocWithZone(type metadata accessor for ConversationLinkManager());
  v10 = a2;

  v11 = sub_10036B374(v6, v10, v7, v8, v9);
  v12 = *&v11[OBJC_IVAR___CSDConversationLinkManager_service];
  v13 = v11;
  v14 = v12;
  [v14 setDelegate:v13];

  return v13;
}

void sub_100369BCC(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_10000B6F4(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v10 = v6;
    v8 = a2(&v10);

    if (v8)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

void sub_100369CA4(int64_t a1, int64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v6 = a2;
  if (a2 >= a1)
  {
    if (a1 == a2)
    {
      return;
    }

    v20 = 1;
    v18 = a2;
    v6 = a1;
  }

  else
  {
    v20 = -1;
    v18 = a1;
  }

  v19 = sub_10000B6F4(a3);
  v7 = sub_10000B6F4(a3);
  v8 = 0;
  v9 = a3 & 0xC000000000000001;
  v10 = a3 & 0xFFFFFFFFFFFFFF8;
  v11 = a3 + 32;
  while (2)
  {
    v12 = __OFADD__(v8, v20);
    v13 = v8 + v20;
    if (v12)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v6 == v19)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v21 = v13;
    while (1)
    {
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v14 == v7)
      {
        break;
      }

      if (v9)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_22;
        }

        if (v14 >= *(v10 + 16))
        {
          goto LABEL_23;
        }

        v15 = *(v11 + 8 * v14);
      }

      v16 = v15;
      v22 = v15;
      v17 = a4(&v22);

      ++v6;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    v14 = v7;
LABEL_19:
    v6 = v14;
    v8 = v21;
    if (v14 != v18)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_100369E08(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  sub_100005EB4(v3);
  v6 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  return sub_100365860(a1, v8, v9, v6, v7);
}

unint64_t sub_100369E94()
{
  result = qword_1006A6768;
  if (!qword_1006A6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6768);
  }

  return result;
}

uint64_t sub_100369EE8()
{
  v1 = type metadata accessor for Date();
  sub_100007BF0(v1);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80));

  return sub_100363B78(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_100369F50(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100007694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100369FB0()
{
  sub_10000FC34();
  v1 = type metadata accessor for Date();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = sub_100006884();

  sub_100363D2C(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_10036A034()
{
  v1 = type metadata accessor for Date();
  sub_100007FEC(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v6 = (v4 + 24) & ~v4;
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v6, v1);
  if (*(v0 + v7))
  {
    v8 = *(v0 + v7 + 8);
  }

  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

void sub_10036A128()
{
  sub_10004A0D0();
  v1 = type metadata accessor for Date();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_10001C9E4();
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  v11 = (v0 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + v9);
  sub_10036446C();
}

void sub_10036A1DC()
{
  sub_100010060();
  v1 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_10001C9E4();
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v11 = *(v0 + v10);
  v12 = sub_100006884();

  sub_10036198C(v12, v13, v14, v15, v16, v17);
}

uint64_t sub_10036A280(char a1, uint64_t a2)
{
  v5 = sub_10026D814(&qword_1006A6778, &unk_100581B38);
  sub_100005EB4(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Date();
  sub_100007BF0(v10);
  v12 = v2 + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_100361EBC(a1, a2, v2 + v7, v12);
}

uint64_t sub_10036A364(uint64_t a1)
{
  v2 = type metadata accessor for ConversationLinkKeyAgreement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036A3C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationLinkKeyAgreement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10036A424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationLinkKeyAgreement();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10036A498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10035E9CC();
}

uint64_t sub_10036A530(void (*a1)(void))
{
  a1(*(v1 + 24));

  sub_100008BA8();

  return _swift_deallocObject(v2, v3, v4);
}

void sub_10036A590()
{
  sub_10000FC34();
  v1 = type metadata accessor for Date();
  sub_100007BF0(v1);
  v3 = *(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = sub_100006884();

  sub_1003596B8(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_10036A614(uint64_t a1)
{
  v3 = *(v1 + 24);

  if (*(v1 + 32))
  {
    v4 = *(v1 + 40);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10036A688(uint64_t a1)
{
  if (*(v1 + 16))
  {
    v3 = *(v1 + 24);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10036A704(id *a1)
{
  v2 = type metadata accessor for Date();
  sub_100007BF0(v2);
  v4 = *(v3 + 80);

  return sub_10035829C(a1);
}

uint64_t sub_10036A778@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v7;
  v10 = *(a4 + 32);
  result = sub_10036951C(v6, a2, a3, v9);
  *a5 = result;
  return result;
}

void sub_10036A7CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1003585B4();
}

uint64_t sub_10036A7F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_100008BA8();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_10036A838()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1003585B4();
}

void sub_10036A900()
{
  sub_10000FC34();
  v1 = type metadata accessor for UUID();
  sub_100005EB4(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  sub_10001C9E4();
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v0 + v8);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v0 + v9);
  v16 = *(v0 + v10);
  v17 = *(v0 + v11);
  v26 = *(v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v18 = sub_100006884();
  sub_100352614(v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_10036A9CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10036AA80;

  return sub_100362288(v2, v3, v4);
}

uint64_t sub_10036AA80()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100008060();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_10036AB74()
{
  v1 = *(v0 + 56);

  sub_100022D00();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10036AC0C()
{
  sub_100005EF4();
  v1 = type metadata accessor for UUID();
  sub_100007FEC(v1);
  v4 = ((*(v2 + 80) + 48) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for ConversationLinkKeyAgreement();
  sub_100005EB4(v7);
  v9 = (v6 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 24);

  v13 = sub_100007728();
  v14(v13);
  sub_100049B14(*(v0 + v5), *(v0 + v5 + 8));
  v15 = *(v0 + v6);

  v16 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  sub_100008070(v16);
  (*(v17 + 8))(v0 + v9);
  sub_100005EDC();

  return _swift_deallocObject(v18, v19, v20);
}

void *sub_10036AEA8(uint64_t a1, void *a2, void *a3)
{
  v38 = a3;
  v39 = a2;
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v43[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v43[4] = &off_100622FB8;
  v43[0] = a1;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v36 = "MeInRecoveryManager";
  static DispatchQoS.unspecified.getter();
  v41[0] = _swiftEmptyArrayStorage;
  sub_100369F50(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v37);
  static OS_dispatch_queue.main.getter();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for ConversationLinkSyncMessageQueue();
  swift_allocObject();
  v16 = sub_1002B7C14(v15, sub_1003EF728, 0);
  sub_100009AB0(v43, v41);
  v17 = qword_1006A0C10;
  v18 = v15;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_1006BA858;
  v20 = v42;
  v21 = sub_10001BDB8(v41, v42);
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v21, v21);
  v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v40[4] = &off_100622FB8;
  v40[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v40[0] = v26;
  type metadata accessor for ConversationLinkSyncManager();
  v27 = swift_allocObject();
  v28 = sub_10001BDB8(v40, &type metadata for ConversationLinkDataSourceTUWrapper);
  v29 = value witness table for Builtin.UnknownObject[8];
  __chkstk_darwin(v28, v28);
  v31 = (&v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v31;

  v34 = sub_10036B7F4(v33, v18, v38, v16, v39, v19, v27);
  sub_100009B7C(v43);
  sub_100009B7C(v40);
  sub_100009B7C(v41);
  return v34;
}

char *sub_10036B374(void *a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  v35 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35, v12);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v18 = type metadata accessor for DispatchQoS();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  *&a5[OBJC_IVAR___CSDConversationLinkManager_renewPseudonymTask] = 0;
  v21 = &a5[OBJC_IVAR___CSDConversationLinkManager_generateKeyAgreement];
  *v21 = variable initialization expression of LetMeInRequestorKeyAgreement.localKey;
  v21[1] = 0;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_delegate] = 0;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_dataSource] = a1;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_service] = a2;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_serverBag] = a3;
  v34 = a4;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_linkSyncManager] = a4;
  v22 = sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  v32[1] = "onym8@NSError16";
  v32[2] = v22;
  v37 = a1;
  v36 = a2;
  v33 = a3;

  static DispatchQoS.unspecified.getter();
  v38[0] = _swiftEmptyArrayStorage;
  sub_100369F50(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  type metadata accessor for LetMeInRecoveryManager();
  v24 = swift_allocObject();
  *(v24 + 16) = _swiftEmptyDictionarySingleton;
  *(v24 + 24) = _swiftEmptyDictionarySingleton;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 80) = 0;
  v25 = v33;
  *(v24 + 32) = v23;
  *(v24 + 40) = v25;
  *&a5[OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager] = v24;
  v26 = type metadata accessor for ConversationLinkManager();
  v39.receiver = a5;
  v39.super_class = v26;
  v27 = v25;
  swift_unknownObjectRetain();
  v28 = objc_msgSendSuper2(&v39, "init");
  v29 = *&v28[OBJC_IVAR___CSDConversationLinkManager_lmiRecoveryManager];
  v38[3] = v26;
  v38[4] = &off_100628EB8;
  v38[0] = v28;
  swift_beginAccess();
  v30 = v28;

  sub_10036B784(v38, v29 + 48);
  swift_endAccess();

  *(v34 + 24) = &off_100628ED0;
  swift_unknownObjectWeakAssign();
  sub_1003F00CC();

  return v30;
}

uint64_t sub_10036B784(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A67C0, &qword_100581B88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_10036B7F4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v26[3] = &type metadata for ConversationLinkDataSourceTUWrapper;
  v26[4] = &off_100622FB8;
  v26[0] = a1;
  a7[3] = 0;
  swift_unknownObjectWeakInit();
  a7[16] = 0;
  sub_100009AB0(v26, (a7 + 4));
  a7[15] = a2;
  a7[13] = a4;
  a7[10] = a5;
  v13 = objc_allocWithZone(type metadata accessor for ConversationLinkSyncIDSInteractor());
  v14 = a2;

  v15 = a5;
  v16 = a3;
  a7[9] = sub_10036BAB4(v16, v14, v13);
  a7[14] = a6;

  v17 = [v15 linkSyncRecoverFailureLimit];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v16;
  v18 = v14;
  v14 = &selRef_tu_predicateForConversationLinkDescriptorsWithActivated_;
  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v17 timeLimit:{objc_msgSend(v15, "linkSyncRecoverTimeLimit")}];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  a7[11] = result;
  v20 = [v15 linkSyncRecoverFailureLimit];
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = [objc_allocWithZone(IDSRateLimiter) initWithLimit:v20 timeLimit:{objc_msgSend(v15, "linkSyncRecoverTimeLimit")}];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  a7[12] = result;
  *(a7[9] + OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_delegate + 8) = &off_10062E688;
  swift_unknownObjectWeakAssign();
  v14 = v18;
  if (qword_1006A0B20 != -1)
  {
LABEL_11:
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5E0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "ConversationLinkSync: ConversationLinkSyncManager init", v24, 2u);
  }

  sub_1003F2C10();
  sub_1003F6320();

  sub_100009B7C(v26);
  return a7;
}

char *sub_10036BAB4(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service] = a1;
  *&a3[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_knownDestinations] = &_swiftEmptySetSingleton;
  v10.receiver = a3;
  v10.super_class = type metadata accessor for ConversationLinkSyncIDSInteractor();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v10, "init");
  v7 = *&v6[OBJC_IVAR____TtC13callservicesd33ConversationLinkSyncIDSInteractor_service];
  v8 = v6;
  [v7 addServiceDelegate:v8 queue:{a2, v10.receiver, v10.super_class}];

  return v8;
}

unint64_t sub_10036BBA4()
{
  result = qword_1006A67C8;
  if (!qword_1006A67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67C8);
  }

  return result;
}

unint64_t sub_10036BBFC()
{
  result = qword_1006A67D0;
  if (!qword_1006A67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67D0);
  }

  return result;
}

unint64_t sub_10036BC54()
{
  result = qword_1006A67D8;
  if (!qword_1006A67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67D8);
  }

  return result;
}

unint64_t sub_10036BCAC()
{
  result = qword_1006A67E0;
  if (!qword_1006A67E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67E0);
  }

  return result;
}

unint64_t sub_10036BD04()
{
  result = qword_1006A67E8;
  if (!qword_1006A67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67E8);
  }

  return result;
}

unint64_t sub_10036BD58()
{
  result = qword_1006A67F0;
  if (!qword_1006A67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A67F0);
  }

  return result;
}

uint64_t sub_10036BEB4()
{

  return swift_dynamicCast();
}

id sub_10036BEEC()
{
  if (qword_1006A0AB0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006A6800;

  return v1;
}

id sub_10036BF48()
{
  type metadata accessor for TinCanIDSService();
  result = sub_1003A03A0();
  qword_1006A6800 = result;
  return result;
}

id sub_10036BFB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = String._bridgeToObjectiveC()();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for TinCanIDSService();
  v8 = objc_msgSendSuper2(&v10, "initWithName:service:queryController:", v7, a3, a4);

  return v8;
}

id sub_10036C0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TinCanIDSService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10036C108(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10036C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100370924();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

unint64_t sub_10036C190@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10036C108(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10036C1C4(uint64_t a1)
{
  v2 = sub_100370924();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10036C200(uint64_t a1)
{
  v2 = sub_100370924();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10036C25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100370924();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

uint64_t sub_10036C2B0(uint64_t a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 3:
      result = 0xD000000000000015;
      break;
    case 2:
    case 5:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

id sub_10036C38C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v10 = objc_opt_self();
  v11 = a1;
  result = [v10 sharedInstance];
  if (result)
  {
    v13 = result;
    v14 = objc_allocWithZone(TUVouchingEnablementImpl);
    v15 = v13;
    v16 = [v14 init];
    *v9 = 10;
    (*(v5 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v4);
    v17 = sub_100370308(v11, v15, v16, v9, objc_allocWithZone(ObjectType));

    v18 = *((swift_isaMask & *v1) + 0x30);
    v19 = *((swift_isaMask & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10036C594(uint64_t a1, unint64_t a2, void *a3, char *a4, void (**a5)(void, void, void))
{
  v53 = a2;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v52 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v52, v10);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v57 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DispatchTime();
  v56 = *(v58 - 8);
  v17 = *(v56 + 64);
  v19 = __chkstk_darwin(v58, v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v22);
  v55 = &v43 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a5;
  v25 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a5);
  if ([v25 isEnabled])
  {
    v26 = swift_allocObject();
    v50 = v13;
    v27 = v26;
    v28 = swift_allocObject();
    v29 = v53;
    v28[2] = a1;
    v28[3] = v29;
    v28[4] = sub_1003701E0;
    v28[5] = v24;
    v47 = v24;
    v28[6] = a4;
    v28[7] = a3;
    *(v27 + 16) = sub_100370220;
    *(v27 + 24) = v28;
    v44 = a3;
    v49 = a5;
    v31 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
    v30 = *&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
    v46 = sub_100009B14(&a4[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v31);
    v32 = swift_allocObject();
    v48 = v12;
    v33 = v32;
    *(v32 + 16) = a4;
    *(v32 + 24) = v27;
    v45 = *(v30 + 16);
    v34 = a4;
    sub_100290AC4(a1, v29);

    v35 = v44;

    v45(a1, v29, 3, sub_100370288, v33, v31, v30);

    v53 = *&v34[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
    static DispatchTime.now()();
    v36 = v55;
    + infix(_:_:)();
    v56 = *(v56 + 8);
    (v56)(v21, v58);
    aBlock[4] = sub_100370290;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062A230;
    v37 = _Block_copy(aBlock);

    v38 = v57;
    static DispatchQoS.unspecified.getter();
    v59 = _swiftEmptyArrayStorage;
    sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
    v40 = v51;
    v39 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v37);
    (*(v54 + 8))(v40, v39);
    (*(v50 + 8))(v38, v48);
    (v56)(v36, v58);

    _Block_release(v49);
  }

  else
  {
    sub_1003700EC();
    swift_allocError();
    *v41 = 3;
    v42 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v42);

    _Block_release(a5);
  }
}

uint64_t sub_10036CB84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000AF9C(v13, qword_1006BA580);
    swift_errorRetain();
    sub_100290AC4(a4, a5);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v50 = v17;
      *v16 = 134218242;
      *(v16 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      *(v16 + 12) = 2080;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v18 = String.init<A>(describing:)();
      v20 = sub_10002741C(v18, v19, &v50);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to sign data (%ld) due to error %s.", v16, 0x16u);
      sub_100009B7C(v17);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    swift_errorRetain();
    a6(0, a3);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000AF9C(v22, qword_1006BA580);
    sub_100290AC4(a4, a5);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to sign data (%ld) because encrypted data was missing from response (without an error).", v25, 0xCu);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    sub_1003700EC();
    v46 = swift_allocError();
    *v47 = 2;
    a6(0, v46);
  }

  else
  {
    v29 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 24);
    v28 = *(a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler + 32);
    sub_100009B14((a8 + OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler), v29);
    v30 = *(v28 + 8);
    sub_100290AC4(a1, a2);
    v31 = v30(v29, v28);
    v33 = v32;
    sub_10036D194();
    v35 = v34;
    v37 = v36;
    sub_100049B14(v31, v33);
    objc_allocWithZone(TUVoucher);
    sub_100290AC4(a4, a5);
    sub_1002EAE60(a1, a2);
    v38 = sub_10037000C(a9, v35, v37, a4, a5, a1, a2);
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000AF9C(v39, qword_1006BA580);
    sub_100290AC4(a4, a5);
    v40 = v38;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 134218242;
      *(v43 + 4) = Data.hashValue.getter();
      sub_100049B14(a4, a5);
      *(v43 + 12) = 2112;
      *(v43 + 14) = v40;
      *v44 = v40;
      v45 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "Successfully signed data (%ld) into %@.", v43, 0x16u);
      sub_100009A5C(v44, &unk_1006A2630, &qword_10057CB40);
    }

    else
    {
      sub_100049B14(a4, a5);
    }

    v48 = v40;
    a6(v40, 0);

    return sub_100290B6C(a1, a2);
  }
}

void sub_10036D194()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = TUCopyIDSFromIDForHandle();
  v2 = IDSCopyIDForTokenWithID();

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036D21C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v25, v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a4 + OBJC_IVAR___CSDVoucherManagerImpl_completionQueue);
  v21 = swift_allocObject();
  v21[2] = a5;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  aBlock[4] = sub_100370298;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062A280;
  v22 = _Block_copy(aBlock);

  sub_1002EAE60(a1, a2);
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v26 + 8))(v14, v10);
  (*(v15 + 8))(v19, v25);
}

uint64_t sub_10036D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 24);

    v8(a2, a3, a4);
    sub_1000051F8(v8);
  }

  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v10);
}

uint64_t sub_10036D5B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1003700EC();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, 0xF000000000000000, v4);
    sub_1000051F8(v2);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v6);
}

void sub_10036D740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_10036D7B0(void *a1, char *a2, void (**a3)(void, void, void))
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v139 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for DispatchTime();
  v138 = *(v140 - 8);
  v17 = *(v138 + 64);
  v19 = __chkstk_darwin(v140, v18);
  v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v21);
  v137 = &v126 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  v24 = *&a2[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement];
  _Block_copy(a3);
  if ([v24 isEnabled])
  {
    v132 = v12;
    v133 = v7;
    v134 = v6;
    v135 = a3;
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v130 = v13;
    v131 = v11;
    v141 = v23;
    v25 = type metadata accessor for Logger();
    sub_10000AF9C(v25, qword_1006BA580);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
    if (os_log_type_enabled(v27, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v26;
      *v31 = v26;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "Requested to verify %@.", v30, 0xCu);
      sub_100009A5C(v31, &unk_1006A2630, &qword_10057CB40);
    }

    v33 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
    swift_beginAccess();
    v34 = sub_10036E814(v26, *&a2[v33]);
    if (v35 != -1)
    {
      v36 = v34;
      v37 = v35;
      swift_endAccess();
      if (v37)
      {
        sub_10026D814(&unk_1006ACA40, &qword_100581F70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10057D690;
        v39 = swift_allocObject();
        v40 = v141;
        *(v39 + 16) = sub_10036AC04;
        *(v39 + 24) = v40;
        *(inited + 32) = sub_100370988;
        *(inited + 40) = v39;
        aBlock[0] = v36;
        v41 = v26;

        sub_100370188(v36, v37);
        sub_1004142C0(inited);
        v42 = aBlock[0];
        swift_beginAccess();
        v43 = *&a2[v33];
        v44 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
        v45 = objc_allocWithZone(v44);
        v46 = &v45[*((swift_isaMask & *v45) + 0x68)];
        *v46 = v42;
        v46[8] = 1;
        v143.receiver = v45;
        v143.super_class = v44;

        v47 = objc_msgSendSuper2(&v143, "init");
        v48 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
        v49 = objc_allocWithZone(v48);
        *&v49[*((swift_isaMask & *v49) + 0x68)] = v41;
        v142.receiver = v49;
        v142.super_class = v48;
        v50 = objc_msgSendSuper2(&v142, "init");
        [v43 setObject:v47 forKey:v50];
        swift_endAccess();

        sub_1003701AC(v36, v37);
LABEL_9:

        v51 = v135;
        goto LABEL_12;
      }

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 67109120;
        *(v68 + 4) = v36 & 1;
        _os_log_impl(&_mh_execute_header, v66, v67, "Retrieved previously verified voucher: %{BOOL}d.", v68, 8u);
      }

      v69 = v135;
      v135[2](v135, v36 & 1, 0);
LABEL_31:

      v51 = v69;
      goto LABEL_12;
    }

    swift_endAccess();
    v54 = [v26 handle];
    v55 = TUCopyIDSFromIDForHandle();

    if (v55)
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59 = [v26 tokenPrefixedURI];
      if (!v59)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = String._bridgeToObjectiveC()();
      }

      v60 = IDSCopyAddressDestinationForDestination();

      if (v60)
      {
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        if (v56 == v61 && v58 == v63)
        {

          v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
LABEL_33:
          sub_100006AF0(0, &qword_1006A2BA0, IDSURI_ptr);
          v79 = [v26 tokenPrefixedURI];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = sub_10036EAE0();
          if (v80)
          {
            v129 = v80;
            sub_10026D814(&unk_1006ACA40, &qword_100581F70);
            v81 = swift_allocObject();
            *(v81 + 16) = xmmword_10057D690;
            v82 = swift_allocObject();
            v83 = v141;
            *(v82 + 16) = sub_10036AC04;
            *(v82 + 24) = v83;
            *(v81 + 32) = sub_100370140;
            *(v81 + 40) = v82;
            swift_beginAccess();
            v84 = *&a2[v33];
            v85 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
            v86 = objc_allocWithZone(v85);
            v87 = &v86[*((swift_isaMask & *v86) + 0x68)];
            *v87 = v81;
            v87[8] = 1;
            v147.receiver = v86;
            v147.super_class = v85;
            v88 = v26;

            v89 = objc_msgSendSuper2(&v147, "init");
            v90 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
            v91 = objc_allocWithZone(v90);
            *&v91[*((swift_isaMask & *v91) + 0x68)] = v88;
            v146.receiver = v91;
            v146.super_class = v90;
            v92 = objc_msgSendSuper2(&v146, "init");
            [v84 setObject:v89 forKey:v92];
            swift_endAccess();

            v93 = swift_allocObject();
            v94 = swift_allocObject();
            *(v93 + 16) = sub_100370170;
            *(v94 + 16) = v88;
            *(v94 + 24) = a2;
            *(v93 + 24) = v94;
            v95 = v88;
            v96 = a2;
            if ([v24 shouldForceVerificationFailures])
            {
              sub_1003700EC();
              v97 = swift_allocError();
              *v98 = 5;

              sub_100370170(0, v97);
              sub_1000051F8(sub_100370170);

              v99 = *(v93 + 16);
              v100 = *(v93 + 24);
              *(v93 + 16) = 0;
              *(v93 + 24) = 0;
              sub_1000051F8(v99);
            }

            else
            {
              v107 = *&v96[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 32];
              v127 = *&v96[OBJC_IVAR___CSDVoucherManagerImpl_idsService + 24];
              v128 = sub_100009B14(&v96[OBJC_IVAR___CSDVoucherManagerImpl_idsService], v127);
              v108 = [v95 encryptedData];
              v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v126 = v110;

              v111 = [v95 unsafeData];
              v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v114 = v113;

              v115 = swift_allocObject();
              *(v115 + 16) = v96;
              *(v115 + 24) = v93;
              v116 = *(v107 + 8);
              v117 = v96;

              v125 = v107;
              v118 = v126;
              v116(v109, v126, v112, v114, v129, 3, sub_100370178, v115, v127, v125);

              sub_100049B14(v112, v114);
              sub_100049B14(v109, v118);
              v128 = *&v117[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue];
              v119 = v136;
              static DispatchTime.now()();
              v120 = v137;
              + infix(_:_:)();
              v138 = *(v138 + 8);
              (v138)(v119, v140);
              aBlock[4] = sub_100370180;
              aBlock[5] = v93;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100004CEC;
              aBlock[3] = &unk_10062A0F0;
              v121 = _Block_copy(aBlock);

              v122 = v139;
              static DispatchQoS.unspecified.getter();
              v144 = _swiftEmptyArrayStorage;
              sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
              sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
              sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
              v123 = v131;
              v124 = v134;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

              _Block_release(v121);
              (*(v133 + 8))(v123, v124);
              (*(v130 + 8))(v122, v132);
              (v138)(v120, v140);
            }

            goto LABEL_9;
          }

          v101 = v26;
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            *v104 = *(v29 + 464);
            *(v104 + 4) = v101;
            *v105 = v101;
            v106 = v101;
            _os_log_impl(&_mh_execute_header, v102, v103, "Failed to verify %@ because we couldn't create a URI.", v104, 0xCu);
            sub_100009A5C(v105, &unk_1006A2630, &qword_10057CB40);
          }

          sub_1003700EC();
          swift_allocError();
          v77 = 1;
          goto LABEL_30;
        }

        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
        if (v65)
        {
          goto LABEL_33;
        }
      }

      else
      {

        v29 = "com.apple.callservicesd.shareplay-session-server-terminated";
      }
    }

    v70 = v26;
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = *(v29 + 464);
      *(v73 + 4) = v70;
      *v74 = v70;
      v75 = v70;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failed to verify %@ because the token prefixed URI did not come from the handle.", v73, 0xCu);
      sub_100009A5C(v74, &unk_1006A2630, &qword_10057CB40);
    }

    sub_1003700EC();
    swift_allocError();
    v77 = 4;
LABEL_30:
    *v76 = v77;
    v78 = _convertErrorToNSError(_:)();
    v69 = v135;
    (v135)[2](v135, 0, v78);

    goto LABEL_31;
  }

  sub_1003700EC();
  swift_allocError();
  *v52 = 3;
  v53 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v53);

  v51 = a3;

LABEL_12:
  _Block_release(v51);
}

uint64_t sub_10036E814(void *a1, void *a2)
{
  v4 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
  v5 = objc_allocWithZone(v4);
  *&v5[*((swift_isaMask & *v5) + 0x68)] = a1;
  v12.receiver = v5;
  v12.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v12, "init");
  v8 = [a2 objectForKey:{v7, v12.receiver, v12.super_class}];

  if (!v8)
  {
    return 0;
  }

  v9 = v8 + *((swift_isaMask & *v8) + 0x68);
  v10 = *v9;
  sub_1003701A0(*v9, v9[8]);

  return v10;
}

void sub_10036E920(uint64_t a1, char a2, uint64_t a3)
{
  if (a2 == -1)
  {
    v15 = *v3;
    v16 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
    v17 = objc_allocWithZone(v16);
    *&v17[*((swift_isaMask & *v17) + 0x68)] = a3;
    v20.receiver = v17;
    v20.super_class = v16;
    v14 = objc_msgSendSuper2(&v20, "init");
    [v15 removeObjectForKey:v14];
  }

  else
  {
    v7 = *v3;
    v8 = sub_10026D814(&qword_1006A6A20, &qword_100581F78);
    v9 = objc_allocWithZone(v8);
    v10 = v9 + *((swift_isaMask & *v9) + 0x68);
    *v10 = a1;
    v10[8] = a2 & 1;
    sub_1003701A0(a1, a2 & 1);
    v19.receiver = v9;
    v19.super_class = v8;
    v11 = objc_msgSendSuper2(&v19, "init");
    v12 = sub_10026D814(&qword_1006A6A28, &unk_100581F80);
    v13 = objc_allocWithZone(v12);
    *&v13[*((swift_isaMask & *v13) + 0x68)] = a3;
    v18.receiver = v13;
    v18.super_class = v12;
    v14 = objc_msgSendSuper2(&v18, "init");
    [v7 setObject:v11 forKey:v14];
    sub_1003701AC(a1, a2);
  }
}

id sub_10036EAE0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithPrefixedURI:v1];

  return v2;
}

uint64_t sub_10036EB54(unsigned __int8 a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a1)
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000AF9C(v8, qword_1006BA580);
    v9 = a3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = a3;
      v14 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v14 = v9;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "Successfully verified %@.", v12, 0xCu);
      sub_100009A5C(v14, &unk_1006A2630, &qword_10057CB40);
      a3 = v13;

LABEL_10:
    }
  }

  else
  {
    if (qword_1006A0B00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA580);
    v17 = a3;
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a3;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v42 = a2;
      v43[0] = v21;
      *v19 = 138412546;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2080;
      v22 = v17;
      swift_errorRetain();
      sub_10026D814(&unk_1006ABE80, &unk_100581F90);
      v23 = String.init<A>(describing:)();
      v25 = sub_10002741C(v23, v24, v43);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v18, "Failed to verify %@ with error %s", v19, 0x16u);
      sub_100009A5C(v20, &unk_1006A2630, &qword_10057CB40);
      a3 = v40;

      sub_100009B7C(v21);

      goto LABEL_10;
    }
  }

  v26 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  swift_beginAccess();
  v27 = sub_10036E814(a3, *(a4 + v26));
  if (v28 == -1 || (v29 = v28, (v28 & 1) == 0))
  {
    swift_endAccess();
  }

  else
  {
    v30 = v27;
    swift_endAccess();
    v31 = *(v30 + 16);
    if (v31)
    {
      v41 = a3;
      v39 = v7;
      v32 = v7 & 1;
      v33 = (v30 + 40);
      do
      {
        v35 = *(v33 - 1);
        v34 = *v33;
        LOBYTE(v42) = v32;
        v43[0] = a2;

        v35(&v42, v43);

        v33 += 2;
        --v31;
      }

      while (v31);
      sub_1003701AC(v30, v29);
      v7 = v39;
      a3 = v41;
    }

    else
    {
      sub_1003701AC(v30, v29);
    }
  }

  swift_beginAccess();
  v36 = a3;
  if (a2)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  sub_10036E920((a2 == 0) & v7, v37, v36);
  return swift_endAccess();
}

uint64_t sub_10036EF48(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v23, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + OBJC_IVAR___CSDVoucherManagerImpl_completionQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  aBlock[4] = sub_1003701D0;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_10062A168;
  v20 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v24 + 8))(v12, v8);
  (*(v13 + 8))(v17, v23);
}

uint64_t sub_10036F228(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v6(a2 & 1, a3);
    sub_1000051F8(v6);
  }

  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v8);
}

uint64_t sub_10036F2D0(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    sub_1003700EC();
    v4 = swift_allocError();
    *v5 = 0;

    v2(0, v4);
    sub_1000051F8(v2);
  }

  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return sub_1000051F8(v6);
}

uint64_t sub_10036F504(void *a1)
{
  v1 = a1;
  v2 = sub_10036F538();

  return v2;
}

uint64_t sub_10036F538()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x60);
  v3 = v0 + *((swift_isaMask & *v0) + 0x68);
  return dispatch thunk of Hashable.hashValue.getter();
}

uint64_t sub_10036F5A8(uint64_t a1)
{
  v2 = (swift_isaMask & *v1);
  sub_1002A21FC(a1, v12);
  if (!v13)
  {
    sub_100009A5C(v12, &unk_1006A2D10, &unk_10057D940);
    goto LABEL_5;
  }

  v4 = v2[10];
  v3 = v2[11];
  v5 = v2[12];
  type metadata accessor for CountLimitCache.WrappedKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v6 = *((swift_isaMask & *v1) + 0x68);
  v7 = *((*v11 & swift_isaMask) + 0x68);
  v8 = *(v5 + 8);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v9 & 1;
}

uint64_t sub_10036F6DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_10036F5A8(v8);

  sub_100009A5C(v8, &unk_1006A2D10, &unk_10057D940);
  return v6 & 1;
}

id sub_10036F8A0(uint64_t (*a1)(void, void, void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0x50), *((swift_isaMask & *v1) + 0x58), *((swift_isaMask & *v1) + 0x60));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10036F9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  v17[4] = a7;
  v17[5] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1003541FC;
  v17[3] = &unk_10062A2D0;
  v15 = _Block_copy(v17);

  [v8 verifySignedData:isa matchesExpectedData:v14 withTokenURI:a5 forAlgorithm:a6 completion:v15];
  _Block_release(v15);
}

uint64_t sub_10036FADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10036FBB0;
  v12[3] = &unk_10062A2A8;
  v10 = _Block_copy(v12);

  [v5 signData:isa withAlgorithm:a3 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10036FBB0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_100290B6C(v4, v9);
}

uint64_t sub_10036FC5C()
{
  result = sub_1003702A4(v0);
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for VoucherManagerImpl()
{
  result = qword_1006A6888;
  if (!qword_1006A6888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10036FD00()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_10036FDB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036FE60(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036FF18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10036FF58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10036FFB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_10037000C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v14 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v17 = [v8 initWithHandle:a1 tokenPrefixedURI:v14 data:isa encryptedData:v16];

  sub_100049B14(a6, a7);
  sub_100049B14(a4, a5);

  return v17;
}

unint64_t sub_1003700EC()
{
  result = qword_1006A6A18;
  if (!qword_1006A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A18);
  }

  return result;
}

uint64_t sub_100370140(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_100370188(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003701A0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003701A0(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003701AC(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1003701C4(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1003701C4(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1003701E8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_100370250()
{
  v1 = *(v0 + 24);

  v2 = sub_1000081EC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1003702A4(void *a1)
{
  v1 = [a1 pushToken];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_100370308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v35 = a4;
  v33 = a3;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8, v10);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v39[3] = sub_100006AF0(0, &qword_1006A6A30, IDSService_ptr);
  v39[4] = &off_100629E00;
  v39[0] = a1;
  v38[3] = sub_100006AF0(0, &qword_1006A6A38, IDSPushHandler_ptr);
  v38[4] = &off_100629E18;
  v38[0] = a2;
  v18 = OBJC_IVAR___CSDVoucherManagerImpl_verificationCache;
  v19 = [objc_allocWithZone(NSCache) init];
  [v19 setCountLimit:32];
  *&a5[v18] = v19;
  if (qword_1006A0B00 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000AF9C(v20, qword_1006BA580);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Initializing VoucherManager.", v23, 2u);
  }

  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_10000EE88(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v32);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_completionQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100009AB0(v39, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsService]);
  sub_100009AB0(v38, &a5[OBJC_IVAR___CSDVoucherManagerImpl_idsPushHandler]);
  *&a5[OBJC_IVAR___CSDVoucherManagerImpl_vouchingEnablement] = v33;
  v24 = OBJC_IVAR___CSDVoucherManagerImpl_timeout;
  v25 = type metadata accessor for DispatchTimeInterval();
  v26 = *(v25 - 8);
  v27 = v35;
  (*(v26 + 16))(&a5[v24], v35, v25);
  v36.receiver = a5;
  v36.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v36, "init");
  (*(v26 + 8))(v27, v25);
  sub_100009B7C(v38);
  sub_100009B7C(v39);
  return v28;
}

unint64_t sub_1003707C8()
{
  result = qword_1006A6A40;
  if (!qword_1006A6A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A40);
  }

  return result;
}

unint64_t sub_100370820()
{
  result = qword_1006A6A48;
  if (!qword_1006A6A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A48);
  }

  return result;
}

unint64_t sub_100370878()
{
  result = qword_1006A6A50;
  if (!qword_1006A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A50);
  }

  return result;
}

unint64_t sub_1003708D0()
{
  result = qword_1006A6A58;
  if (!qword_1006A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A58);
  }

  return result;
}

unint64_t sub_100370924()
{
  result = qword_1006A6A60;
  if (!qword_1006A6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6A60);
  }

  return result;
}

uint64_t (*sub_1003709A0(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result(*(v1 + 66));
  }

  return result;
}

uint64_t sub_1003709D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return _swift_deallocClassInstance(v0, 67, 7);
}

id sub_100370A5C()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  sub_100007FDC();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  sub_100007FDC();
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  sub_100007FDC();
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = objc_allocWithZone(ObjectType);
  v15 = sub_100370CBC(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

id sub_100370CBC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_activeDescriptor];
  *v4 = 0u;
  v4[1] = 0u;
  *(v4 + 26) = 0u;
  v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_isAvailable] = 0;
  *&v1[OBJC_IVAR____TtC13callservicesd28MockCallAnnouncementProvider_queue] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id FTServerBag.isMomentsDisabled.getter()
{
  if (sub_10029D240(0xD000000000000010, 0x800000010056E710, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    sub_10004975C(v6);
    return 0;
  }

  sub_1000496D4();
  if ((sub_100008560() & 1) == 0)
  {
    return 0;
  }

  v1 = [v3 BOOLValue];

  return v1;
}

double FTServerBag.momentsRequestTimeout.getter()
{
  if (sub_10029D240(0xD000000000000017, 0x800000010056E730, v0))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_10004975C(v7);
    return 300.0;
  }

  sub_1000496D4();
  if ((sub_100008560() & 1) == 0)
  {
    return 300.0;
  }

  [v4 doubleValue];
  v2 = v1;

  return v2;
}

uint64_t sub_100371074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xEA0000000000734DLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65766974616C6572 && a2 == 0xED00007472617453;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65766974616C6572 && a2 == 0xEB00000000646E45;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000010056E7F0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x800000010056E810 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x800000010056E830 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D69547075746573 && a2 == 0xEB00000000734D65;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000010056E850 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79616C6572 && a2 == 0xE500000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x676E696D6F636E69 && a2 == 0xE800000000000000;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x657463656E6E6F63 && a2 == 0xE900000000000064;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x800000010056E880 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000017 && 0x800000010056E8A0 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000011 && 0x800000010056E8C0 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000011 && 0x800000010056E8E0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000011 && 0x800000010056E900 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6D754E6E774F7369 && a2 == 0xEB00000000726562;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7265766E6F437369 && a2 == 0xEE006E6F69746173;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6F4D79627261656ELL && a2 == 0xEA00000000006564;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 4475203 && a2 == 0xE300000000000000;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x6B6E694C6D6F7266 && a2 == 0xE800000000000000;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000013 && 0x800000010056E950 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000011 && 0x800000010056E970 == a2;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x64656E7275746572 && a2 == 0xEC0000006C6C6143;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x65736162656D6974 && a2 == 0xE800000000000000;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x4873417472617473 && a2 == 0xEE0066666F646E61;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6F54657544646E65 && a2 == 0xEF66666F646E6148;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000011 && 0x800000010056E9C0 == a2;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x7553697269537369 && a2 == 0xEF64657473656767;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x436E776F6E4B7369 && a2 == 0xEE00746361746E6FLL;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0xD000000000000013 && 0x800000010056EA00 == a2;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000012 && 0x800000010056EA20 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x666E6F436B6E756ALL && a2 == 0xEE0065636E656469;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD000000000000016 && 0x800000010056EA50 == a2;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x436E776F6E4B7369 && a2 == 0xED000072656C6C61;
                                                                          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0x726F635372657375 && a2 == 0xE900000000000065;
                                                                            if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0x436465646E617262 && a2 == 0xEB000000006C6C61;
                                                                              if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000014 && 0x800000010056EA90 == a2;
                                                                                if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000014 && 0x800000010056EAB0 == a2;
                                                                                  if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000012 && 0x800000010056EAD0 == a2;
                                                                                    if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000013 && 0x800000010056EAF0 == a2;
                                                                                      if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v48 = a1 == 0xD000000000000011 && 0x800000010056EB10 == a2;
                                                                                        if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v49 = a1 == 0x756F526F69647561 && a2 == 0xEA00000000006574;
                                                                                          if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v50 = a1 == 0x737572546D6D6F63 && a2 == 0xEE0065726F635374;
                                                                                            if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              v51 = a1 == 0xD000000000000011 && 0x800000010056EB40 == a2;
                                                                                              if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else if (a1 == 0x556C616963657073 && a2 == 0xEE006E776F6E6B6ELL)
                                                                                              {

                                                                                                return 47;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                                                if (v53)
                                                                                                {
                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  return 48;
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

uint64_t sub_100371EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100371074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100371EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100371EA0();
  *a1 = result;
  return result;
}

uint64_t sub_100371F18(uint64_t a1)
{
  v2 = sub_1000544C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100371F54(uint64_t a1)
{
  v2 = sub_1000544C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100371F98()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1003720E8(uint64_t a1)
{
  result = sub_100054AF0(&unk_1006A3990, type metadata accessor for RTCCSDCallInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100372140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10026D814(a3, a4);
  sub_100008070(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1003721B4()
{
  result = qword_1006A6D78;
  if (!qword_1006A6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D78);
  }

  return result;
}

unint64_t sub_10037220C()
{
  result = qword_1006A6D80;
  if (!qword_1006A6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D80);
  }

  return result;
}

unint64_t sub_100372264()
{
  result = qword_1006A6D88;
  if (!qword_1006A6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6D88);
  }

  return result;
}

uint64_t sub_1003722B8()
{
  sub_10005104C(v0);
  if (!v1)
  {
    v2 = [v0 value];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100006B30();
}

uint64_t sub_1003723CC()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_100372414()
{
  v1 = OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags;
  result = [*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags) expanseEnabled];
  if (result)
  {
    return [*(v0 + v1) supportsScreenSharing];
  }

  return result;
}

uint64_t sub_100372500(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes);
  *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes) = a1;
  return swift_unknownObjectRelease();
}

void *sub_10037254C()
{
  v1 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale);
  v2 = v1;
  return v1;
}

void sub_1003725D8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale);
  *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale) = a1;
  v3 = a1;

  sub_100372630();
}

void sub_100372630()
{
  if (*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      ScreenSharingActivityManager.broadcastAttributes(_:)();
    }

    else
    {
      v4 = qword_1006A0B18;
      swift_unknownObjectRetain();
      if (v4 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000AF9C(v5, qword_1006BA5C8);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Could not cast to TUCallScreenShareAttributes", v8, 2u);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1006A0B18 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA5C8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "No latest remote attributes", v3, 2u);
    }
  }
}

void ScreenSharingActivityManager.broadcastAttributes(_:)()
{
  sub_100005EF4();
  sub_10000691C();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007FDC();
  sub_100007654();
  v26 = type metadata accessor for DispatchQoS();
  v6 = sub_100007FEC(v26);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v25 = *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
  sub_100006890();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v0;
  v27[4] = sub_100374D2C;
  v27[5] = v16;
  sub_100009FE4();
  v27[1] = 1107296256;
  sub_10000A600();
  v27[2] = v17;
  v27[3] = &unk_10062A4F0;
  v18 = _Block_copy(v27);

  v19 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100015244();
  sub_10000EF60(v20, 255, v21);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10037AB64(v22, &unk_1006A2960);
  sub_100006E34();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v23 = sub_10000FE14();
  v24(v23);
  (*(v8 + 8))(v14, v26);

  sub_100005EDC();
}

void sub_100372B38(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled);
  *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled) = a1;
  sub_100372B50(v2);
}

void sub_100372B50(char a1)
{
  v2 = OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled;
  if (v1[OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled] != (a1 & 1))
  {
    v3 = v1;
    if (qword_1006A0B18 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000AF9C(v4, qword_1006BA5C8);
    v5 = v1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v13 = v3[v2];
      v9 = String.init<A>(reflecting:)();
      v11 = sub_10002741C(v9, v10, &v14);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v6, "presenterOverlayEnabled changed to %s", v7, 0xCu);
      sub_100009B7C(v8);
    }

    else
    {
    }
  }
}

void sub_100372CF8()
{
  sub_100005EF4();
  v31 = v1;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = sub_100007FEC(v2);
  v29 = v4;
  v30 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3, v7);
  sub_100007FDC();
  v10 = v9 - v8;
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = sub_100008070(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  sub_100007FDC();
  v16 = type metadata accessor for DispatchQoS();
  v17 = sub_100007BF0(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  sub_100007FDC();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_subscriptions] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_messenger] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_observer] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_session] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver] = 0;
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_systemRootLayerScale] = 0;
  v0[OBJC_IVAR___CSDScreenSharingActivityManager_presenterOverlayEnabled] = 0;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_10000EF60(&qword_1006A0CB0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100008434();
  sub_10037AB64(v21, &qword_1006A31B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags] = v31;
  v22 = v31;
  static OS_dispatch_queue.main.getter();
  sub_10000691C();
  v23 = objc_allocWithZone(type metadata accessor for CPCarPlayObserver());
  *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_carPlayObserver] = CPCarPlayObserver.init(queue:)();
  v33.receiver = v0;
  v33.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v33, "init");
  v25 = *&v24[OBJC_IVAR___CSDScreenSharingActivityManager_carPlayObserver];
  sub_10000EF60(&qword_1006A6F80, v26, type metadata accessor for ScreenSharingActivityManager);
  v27 = v24;
  v28 = v25;
  sub_100006B30();
  dispatch thunk of CPCarPlayObserver.delegate.setter();

  ScreenSharingActivityManager.startObservingSessions()();
  sub_100005EDC();
}

Swift::Void __swiftcall ScreenSharingActivityManager.startObservingSessions()()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007FDC();
  sub_100007654();
  v6 = type metadata accessor for DispatchQoS();
  v7 = sub_100007FEC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7, v12);
  sub_100007FDC();
  v15 = v14 - v13;
  if (sub_100372414())
  {
    v24 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
    sub_100006890();
    v25 = v6;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26[4] = sub_100374D34;
    v26[5] = v16;
    sub_100009FE4();
    v26[1] = 1107296256;
    sub_10000A600();
    v26[2] = v17;
    v26[3] = &unk_10062A518;
    v18 = _Block_copy(v26);

    static DispatchQoS.unspecified.getter();
    sub_100015244();
    sub_10000EF60(v19, 255, v20);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_100008434();
    sub_10037AB64(v21, &unk_1006A2960);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    sub_100008AB0();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    v22 = sub_10000FE14();
    v23(v22);
    (*(v9 + 8))(v15, v25);
  }

  sub_100005EDC();
}

void sub_100373328()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10037337C();
  }
}

void sub_10037337C()
{
  v1 = v0;
  v2 = sub_10026D814(&qword_1006A7090, &qword_100582850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v22 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v13 = v14;
  (*(v9 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  v16 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v13, v8);
  if (v16)
  {
    v17 = OBJC_IVAR___CSDScreenSharingActivityManager_observer;
    if (!*(v1 + OBJC_IVAR___CSDScreenSharingActivityManager_observer) && (sub_100372414() & 1) != 0)
    {
      sub_10037AAD0();
      v18 = v15;
      GroupSessionObserver.init(for:queue:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10037AB64(&qword_1006A7098, &qword_1006A7090);
      v19 = Publisher<>.sink(receiveValue:)();

      (*(v3 + 8))(v7, v2);
      v20 = *(v1 + v17);
      *(v1 + v17) = v19;

      v21 = sub_100004778();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

void ScreenSharingActivityManager.startActivitySession(onConversationWithUUID:for:with:)()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v131 = v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = sub_100007FEC(v7);
  v120 = v9;
  v121 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8, v12);
  sub_100007FDC();
  v118 = v14 - v13;
  v119 = type metadata accessor for DispatchQoS();
  v15 = sub_100007FEC(v119);
  v117 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15, v19);
  sub_100007FDC();
  v116 = v21 - v20;
  v22 = sub_10026D814(&qword_1006A6DA0, &qword_100584E60);
  sub_100007BF0(v22);
  v24 = *(v23 + 64);
  sub_100006688();
  __chkstk_darwin(v25, v26);
  v125 = &v112 - v27;
  v130 = type metadata accessor for UUID();
  v28 = sub_100007FEC(v130);
  v30 = v29;
  v32 = *(v31 + 64);
  __chkstk_darwin(v28, v33);
  v129 = v34;
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10026D814(&qword_1006A6DA8, &qword_100582570);
  sub_100007FEC(v36);
  v122 = v37;
  v39 = *(v38 + 64);
  sub_100006688();
  __chkstk_darwin(v40, v41);
  v43 = &v112 - v42;
  v44 = sub_10026D814(&qword_1006A6DB0, &qword_100582578);
  v45 = sub_100007FEC(v44);
  v123 = v46;
  v124 = v45;
  v48 = *(v47 + 64);
  sub_100006688();
  __chkstk_darwin(v49, v50);
  v52 = &v112 - v51;
  v53 = sub_10026D814(&qword_1006A6DB8, &qword_100582580);
  v54 = sub_100007FEC(v53);
  v127 = v55;
  v128 = v54;
  v57 = *(v56 + 64);
  sub_100006688();
  __chkstk_darwin(v58, v59);
  v126 = &v112 - v60;
  if (sub_100372414())
  {
    v114 = v3;
    v115 = v5;
    ScreenSharingActivityManager.startObservingSessions()();
    v61 = OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags;
    if (([*&v0[OBJC_IVAR___CSDScreenSharingActivityManager_featureFlags] sharePlayInCallsEnabled] & 1) != 0 || objc_msgSend(*&v0[v61], "nearbyFaceTimeEnabled"))
    {
      type metadata accessor for ConversationManagerClient();
      v62 = static ConversationManagerClient.shared.getter();
      v63 = ConversationManagerClient.onActivitySessionsChanged.getter();

      v133[0] = v63;
      v64 = *(v30 + 16);
      v120 = v30 + 16;
      v121 = v64;
      v118 = v36;
      v113 = v35;
      v65 = v130;
      v64(v35, v131, v130);
      v66 = *(v30 + 80);
      v67 = swift_allocObject();
      v119 = *(v30 + 32);
      v119(v67 + ((v66 + 16) & ~v66), v35, v65);
      sub_10026D814(&qword_1006A6DC8, &unk_100582588);
      v112 = v1;
      sub_10037AB64(&qword_1006A6DD0, &qword_1006A6DC8);
      Publisher.map<A>(_:)();

      sub_10037AB64(&unk_1006A6DD8, &qword_1006A6DA8);
      v68 = v118;
      Publisher<>.removeDuplicates()();
      (*(v122 + 8))(v43, v68);
      v133[0] = *&v1[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
      v69 = v133[0];
      v70 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v71 = v125;
      sub_10000AF74(v125, 1, 1, v70);
      sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
      sub_10037AB64(&qword_1006A6DE8, &qword_1006A6DB0);
      sub_100378020();
      v72 = v69;
      v73 = v124;
      Publisher.receive<A>(on:options:)();
      sub_10037B1A4(v71, &qword_1006A6DA0);

      (*(v123 + 8))(v52, v73);
      sub_100006890();
      v74 = swift_allocObject();
      v75 = v112;
      swift_unknownObjectWeakInit();
      v76 = v113;
      v77 = v130;
      v121(v113, v131, v130);
      v78 = (v66 + 48) & ~v66;
      v79 = swift_allocObject();
      v79[2] = v74;
      v79[3] = v75;
      v80 = v75;
      v81 = v114;
      v82 = v115;
      v79[4] = v114;
      v79[5] = v82;
      v119(v79 + v78, v76, v77);
      sub_10037AB64(&qword_1006A6DF8, &qword_1006A6DB8);
      v83 = v80;
      v84 = v81;
      v85 = v82;
      v86 = Publisher<>.sink(receiveValue:)();

      v87 = *(v127 + 8);
      v88 = sub_10000FC44();
      v89(v88);
      v90 = *&v83[OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver];
      *&v83[OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver] = v86;
    }

    else
    {
      v96 = *&v0[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
      sub_100006890();
      v97 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v98 = swift_allocObject();
      v98[2] = v97;
      v98[3] = v0;
      v99 = v114;
      v100 = v115;
      v98[4] = v114;
      v98[5] = v100;
      v133[4] = sub_100377F98;
      v133[5] = v98;
      v133[0] = _NSConcreteStackBlock;
      v133[1] = 1107296256;
      sub_10000A600();
      v133[2] = v101;
      v133[3] = &unk_10062A568;
      v102 = _Block_copy(v133);
      v103 = v99;
      v104 = v100;

      v105 = v1;
      v106 = v116;
      static DispatchQoS.unspecified.getter();
      v132 = _swiftEmptyArrayStorage;
      sub_100015244();
      sub_10000EF60(v107, 255, v108);
      sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
      sub_100008434();
      sub_10037AB64(v109, &unk_1006A2960);
      v110 = v118;
      v111 = v121;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v102);
      (*(v120 + 8))(v110, v111);
      (*(v117 + 8))(v106, v119);
    }

    sub_100005EDC();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC();
    }

    v91 = type metadata accessor for Logger();
    sub_10000AF9C(v91, qword_1006BA568);
    v131 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v131, v92, "Attempted to start screen sharing with unsupported configuration.", v93, 2u);
    }

    sub_100005EDC();
  }
}

uint64_t sub_1003740A0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes);
  *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes) = a3;
  v8 = a3;
  swift_unknownObjectRelease();
  if (a3)
  {
    v9 = [objc_allocWithZone(type metadata accessor for CodableRemoteScreenShareAttributes()) initWithAttributes:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100004778();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057D6A0;
  sub_100006AF0(0, &qword_1006A2640, TUHandle_ptr);
  v12 = a4;
  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  *(v11 + 56) = &type metadata for String;
  v16 = sub_100009D88();
  *(v11 + 64) = v16;
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v17 = sub_100291490(v9);
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  sub_1003722B8();
  sub_10037AAD0();
  GroupActivity.activate(onConversationWithUUID:)();

  v19 = *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver);
  *(a2 + OBJC_IVAR___CSDScreenSharingActivityManager_eligibleObserver) = 0;
}

void sub_10037426C(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v6[2] = a2;
  sub_10045E400(sub_10037AB24, v6, v4);
  *a3 = v5 & 1;
}

unint64_t sub_1003742CC(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = [v8 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v7, v2);
  if ((v10 & 1) != 0 && [v8 state] == 3)
  {
    return ([v8 capabilities] >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_100374418(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v19 - v14;
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (v16)
    {
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 16))(v15, a6, v18);
      sub_10000AF74(v15, 0, 1, v18);
      sub_1003740A0(v15, a3, a4, a5);
      sub_10037B1A4(v15, &unk_1006A3DD0);
    }
  }
}

void *sub_100374564(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v14 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v13 = type metadata accessor for UUID();
    sub_10000AF74(v11, 1, 1, v13);
    sub_1003740A0(v11, a2, a3, a4);
    return sub_10037B1A4(v11, &unk_1006A3DD0);
  }

  return result;
}

Swift::Void __swiftcall ScreenSharingActivityManager.stopActivitySession()()
{
  sub_100005EF4();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = sub_100007FEC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  sub_100007FDC();
  sub_100007654();
  v24 = type metadata accessor for DispatchQoS();
  v6 = sub_100007FEC(v24);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6, v11);
  sub_100007FDC();
  v14 = v13 - v12;
  v23 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  sub_100006890();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25[4] = sub_1003780FC;
  v25[5] = v15;
  sub_100009FE4();
  v25[1] = 1107296256;
  sub_10000A600();
  v25[2] = v16;
  v25[3] = &unk_10062A5E0;
  v17 = _Block_copy(v25);

  static DispatchQoS.unspecified.getter();
  sub_100015244();
  sub_10000EF60(v18, 255, v19);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100008434();
  sub_10037AB64(v20, &unk_1006A2960);
  sub_100006E34();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  v21 = sub_10000FE14();
  v22(v21);
  (*(v8 + 8))(v14, v24);

  sub_100005EDC();
}

void sub_1003749C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100374A18();
  }
}

uint64_t sub_100374A18()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = sub_100007FEC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4, v9);
  sub_100007FDC();
  sub_100007654();
  v10 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v1 = v10;
  (*(v6 + 104))(v1, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v1, v3);
  if (v10)
  {
    if (*(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
    {
      v13 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session);

      if (GroupSession.isLocallyInitiated.getter())
      {
        sub_100375384();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100374B9C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Participants();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([a2 style] && (sub_100372414() & 1) != 0)
    {
      v11 = *&v10[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes];
      *&v10[OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes] = a2;
      swift_unknownObjectRelease();
      v12 = [objc_allocWithZone(type metadata accessor for CodableRemoteScreenShareAttributes()) initWithAttributes:a2];
      (*(v4 + 104))(v8, enum case for Participants.all(_:), v3);
      sub_100374D3C(v12, v8);

      (*(v4 + 8))(v8, v3);
    }

    else
    {
    }
  }
}

uint64_t sub_100374D3C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  v9 = __chkstk_darwin(v6, v8);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v62 = &v53 - v12;
  v13 = type metadata accessor for Participants();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = __chkstk_darwin(v18, v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v25);
  v27 = &v53 - v26;
  if (*(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {
    v58 = v6;

    if (GroupSession.isLocallyInitiated.getter())
    {
      v57 = a2;
      GroupSession.state.getter();
      (*(v19 + 104))(v24, enum case for GroupSession.State.joined<A>(_:), v18);
      sub_10037AAD0();
      v28 = static GroupSession.State.== infix(_:_:)();
      v29 = *(v19 + 8);
      v29(v24, v18);
      v29(v27, v18);
      if (v28)
      {
        if (*(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger))
        {
          v56 = *(v3 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger);

          v54 = sub_100004778();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_10057E830;
          v64 = a1;
          v55 = type metadata accessor for CodableRemoteScreenShareAttributes();
          v31 = a1;
          v32 = String.init<A>(reflecting:)();
          v34 = v33;
          *(v30 + 56) = &type metadata for String;
          v35 = sub_100009D88();
          *(v30 + 64) = v35;
          *(v30 + 32) = v32;
          *(v30 + 40) = v34;
          (*(v59 + 16))(v17, v57, v60);
          v36 = String.init<A>(reflecting:)();
          *(v30 + 96) = &type metadata for String;
          *(v30 + 104) = v35;
          *(v30 + 72) = v36;
          *(v30 + 80) = v37;
          v38 = v62;
          GroupSession.id.getter();
          v39 = v63;
          v40 = v58;
          (*(v63 + 16))(v61, v38, v58);
          v41 = String.init<A>(reflecting:)();
          v43 = v42;
          (*(v39 + 8))(v38, v40);
          *(v30 + 136) = &type metadata for String;
          *(v30 + 144) = v35;
          *(v30 + 112) = v41;
          *(v30 + 120) = v43;
          static os_log_type_t.default.getter();
          v44 = v54;
          os_log(_:dso:log:type:_:)();

          v64 = v31;
          *(swift_allocObject() + 16) = v31;
          sub_10000EF60(&qword_1006A70C0, 255, type metadata accessor for CodableRemoteScreenShareAttributes);
          sub_10000EF60(&qword_1006A70C8, 255, type metadata accessor for CodableRemoteScreenShareAttributes);
          v45 = v31;
          GroupSessionMessenger.send<A>(_:to:completion:)();
        }
      }
    }
  }

  v47 = sub_100004778();
  static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10057D690;
  v64 = a1;
  type metadata accessor for CodableRemoteScreenShareAttributes();
  v49 = a1;
  v50 = String.init<A>(reflecting:)();
  v52 = v51;
  *(v48 + 56) = &type metadata for String;
  *(v48 + 64) = sub_100009D88();
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  os_log(_:dso:log:type:_:)();
}

void sub_100375384()
{
  sub_100005EF4();
  v2 = v0;
  v46 = v3;
  sub_100022068();
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v5, v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = sub_100007FEC(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18, v23);
  sub_100007FDC();
  v26 = v25 - v24;
  v27 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *(v25 - v24) = v27;
  (*(v20 + 104))(v25 - v24, enum case for DispatchPredicate.onQueue(_:), v17);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v26, v17);
  if (v27)
  {
    if (GroupSession.isLocallyInitiated.getter() & 1) != 0 && (sub_100372414())
    {
      v29 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v30 = sub_100009F00();
      v45 = xmmword_10057D690;
      *(v30 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      (*(v7 + 16))(v13, v16, v4);
      v31 = String.init<A>(reflecting:)();
      v33 = v32;
      (*(v7 + 8))(v16, v4);
      *(v30 + 56) = &type metadata for String;
      v34 = sub_100009D88();
      *(v30 + 64) = v34;
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      GroupSession.end()();
      v35 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes);
      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes) = 0;
      swift_unknownObjectRelease();
      v36 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session);
      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session) = 0;

      v37 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger);
      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger) = 0;

      if (v46)
      {
        v38 = sub_100004778();
        v39 = sub_100009F00();
        *(v39 + 16) = v45;
        v47 = v1;

        sub_10026D814(&qword_1006A7050, &unk_100582820);
        v40 = String.init<A>(reflecting:)();
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v34;
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v43 = Strong;
          sub_10037AA7C();
          swift_allocError();
          v44 = _convertErrorToNSError(_:)();

          [v43 screenSharingActivityManager:v2 invalidatedSessionWithReason:v44 wasLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];

          swift_unknownObjectRelease();
        }
      }
    }

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100375770()
{
  v1 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v30 - v5;
  v7 = sub_10026D814(&qword_1006A7070, &qword_100582838);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v30 - v10;
  v12 = sub_10026D814(&qword_1006A7078, &unk_100582840);
  v13 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12 - 8, v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v15, v18);
  v21 = &v30 - v20;
  __chkstk_darwin(v19, v22);
  v24 = &v30 - v23;
  if (*(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_session))
  {

    GroupSession.state.getter();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_10000AF74(v24, v25, 1, v1);
  (*(v2 + 104))(v21, enum case for GroupSession.State.joined<A>(_:), v1);
  sub_10000AF74(v21, 0, 1, v1);
  v26 = *(v7 + 48);
  sub_10037B1F8(v24, v11, &qword_1006A7078);
  sub_10037B1F8(v21, &v11[v26], &qword_1006A7078);
  if (sub_100015468(v11, 1, v1) != 1)
  {
    sub_10037B1F8(v11, v17, &qword_1006A7078);
    if (sub_100015468(&v11[v26], 1, v1) != 1)
    {
      (*(v2 + 32))(v6, &v11[v26], v1);
      sub_10037AB64(&qword_1006A7080, &qword_1006A7068);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v2 + 8);
      v28(v6, v1);
      sub_10037B1A4(v21, &qword_1006A7078);
      sub_10037B1A4(v24, &qword_1006A7078);
      v28(v17, v1);
      sub_10037B1A4(v11, &qword_1006A7078);
      return v27 & 1;
    }

    sub_10037B1A4(v21, &qword_1006A7078);
    sub_10037B1A4(v24, &qword_1006A7078);
    (*(v2 + 8))(v17, v1);
    goto LABEL_9;
  }

  sub_10037B1A4(v21, &qword_1006A7078);
  sub_10037B1A4(v24, &qword_1006A7078);
  if (sub_100015468(&v11[v26], 1, v1) != 1)
  {
LABEL_9:
    sub_10037B1A4(v11, &qword_1006A7070);
    v27 = 0;
    return v27 & 1;
  }

  sub_10037B1A4(v11, &qword_1006A7078);
  v27 = 1;
  return v27 & 1;
}

void sub_100375BB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100375C0C(v1);
  }
}

void sub_100375C0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10026D814(&unk_1006A70A0, &qword_100582858);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v60 - v8;
  v10 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v62 = &v60 - v13;
  v14 = sub_10026D814(&qword_1006A70B0, &qword_100582868);
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  __chkstk_darwin(v14, v16);
  v18 = &v60 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19, v22);
  v24 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v24 = v25;
  (*(v20 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v19);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v24, v19);
  if (v25)
  {
    v63 = v9;
    v64 = v5;
    v65 = v4;
    v27 = sub_100004778();
    v61 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v28 = swift_allocObject();
    v60 = xmmword_10057D6A0;
    *(v28 + 16) = xmmword_10057D6A0;
    *&v70 = a1;

    sub_10026D814(&qword_1006A7050, &unk_100582820);
    v29 = String.init<A>(reflecting:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_100009D88();
    *(v28 + 64) = v32;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    GroupSession.activity.getter();
    v68 = v70;
    v69 = v71;
    v33 = String.init<A>(reflecting:)();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v32;
    *(v28 + 72) = v33;
    *(v28 + 80) = v34;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if ((GroupSession.isLocallyInitiated.getter() & 1) != 0 && !*(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
    {
      v54 = sub_100004778();
      v55 = swift_allocObject();
      *(v55 + 16) = v60;
      *&v70 = a1;

      v56 = String.init<A>(reflecting:)();
      *(v55 + 56) = &type metadata for String;
      *(v55 + 64) = v32;
      *(v55 + 32) = v56;
      *(v55 + 40) = v57;
      GroupSession.activity.getter();
      v68 = v70;
      v69 = v71;
      v58 = String.init<A>(reflecting:)();
      *(v55 + 96) = &type metadata for String;
      *(v55 + 104) = v32;
      *(v55 + 72) = v58;
      *(v55 + 80) = v59;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      GroupSession.end()();
    }

    else
    {
      GroupSession.$state.getter();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      *(v36 + 24) = a1;
      sub_10037AB64(&qword_1006A70B8, &qword_1006A70B0);

      v37 = v67;
      Publisher<>.sink(receiveValue:)();

      (*(v66 + 8))(v18, v37);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      GroupSession.activity.getter();
      v38 = v71;

      if (v38)
      {
        v39 = [objc_allocWithZone(TUCallScreenShareAttributes) initWithAttributes:v38];
        v40 = type metadata accessor for GroupSessionMessenger.MessageContext();
        v41 = v62;
        sub_10000AF74(v62, 1, 1, v40);
        sub_10037ABA8(v39, v41, a1, v2);

        sub_10037B1A4(v41, &qword_1006A6018);
      }

      v43 = v63;
      v42 = v64;
      v44 = type metadata accessor for GroupSessionMessenger();
      v45 = *(v44 + 48);
      v46 = *(v44 + 52);
      swift_allocObject();

      v47 = GroupSessionMessenger.init<A>(session:)();
      GroupSession.join()();
      type metadata accessor for CodableRemoteScreenShareAttributes();
      sub_10000EF60(&qword_1006A70C0, 255, type metadata accessor for CodableRemoteScreenShareAttributes);
      sub_10000EF60(&qword_1006A70C8, 255, type metadata accessor for CodableRemoteScreenShareAttributes);
      GroupSessionMessenger.receive<A>(_:)();
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = a1;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_10037AB54;
      *(v50 + 24) = v49;
      sub_10037AB64(&qword_1006A70D0, &unk_1006A70A0);

      v51 = v65;
      Publisher<>.sink(receiveValue:)();

      (*(v42 + 8))(v43, v51);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v52 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session);
      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_session) = a1;

      v53 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger);
      *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_messenger) = v47;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100376424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100376494(a1, a3);
  }
}

uint64_t sub_100376494(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v4 = type metadata accessor for UUID();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v80 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v73 - v10;
  v12 = sub_10026D814(&qword_1006A7068, &qword_100582830);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v76 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v20 = (&v73 - v19);
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21, v24);
  v26 = (&v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v27 = *(v2 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v26 = v27;
  (*(v22 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v21);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v26, v21);
  if (v27)
  {
    v30 = *(v13 + 16);
    v30(v20, a1, v12);
    v31 = (*(v13 + 88))(v20, v12);
    if (v31 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v13 + 96))(v20, v12);
      v32 = *v20;
      v33 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_10057D6A0;
      GroupSession.id.getter();
      v36 = v78;
      v35 = v79;
      (*(v78 + 16))(v80, v11, v79);
      v37 = String.init<A>(reflecting:)();
      v39 = v38;
      (*(v36 + 8))(v11, v35);
      *(v34 + 56) = &type metadata for String;
      v40 = sub_100009D88();
      *(v34 + 64) = v40;
      *(v34 + 32) = v37;
      *(v34 + 40) = v39;
      v82 = v32;
      swift_errorRetain();
      sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
      v41 = String.init<A>(reflecting:)();
      *(v34 + 96) = &type metadata for String;
      *(v34 + 104) = v40;
      *(v34 + 72) = v41;
      *(v34 + 80) = v42;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v43 = v77;
      sub_100376E78();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v45 = Strong;
        v46 = _convertErrorToNSError(_:)();
        [v45 screenSharingActivityManager:v43 invalidatedSessionWithReason:v46 wasLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v47 = v31;
      if (v31 == enum case for GroupSession.State.waiting<A>(_:))
      {
        v48 = sub_100004778();
        sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_10057D690;
        GroupSession.id.getter();
        v51 = v78;
        v50 = v79;
        (*(v78 + 16))(v80, v11, v79);
        v52 = String.init<A>(reflecting:)();
        v54 = v53;
        (*(v51 + 8))(v11, v50);
        *(v49 + 56) = &type metadata for String;
        *(v49 + 64) = sub_100009D88();
        *(v49 + 32) = v52;
        *(v49 + 40) = v54;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
      }

      else
      {
        v55 = enum case for GroupSession.State.joined<A>(_:);
        v75 = sub_100004778();
        if (v47 == v55)
        {
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_10057D690;
          GroupSession.id.getter();
          v58 = v78;
          v57 = v79;
          (*(v78 + 16))(v80, v11, v79);
          v59 = String.init<A>(reflecting:)();
          v61 = v60;
          (*(v58 + 8))(v11, v57);
          *(v56 + 56) = &type metadata for String;
          *(v56 + 64) = sub_100009D88();
          *(v56 + 32) = v59;
          *(v56 + 40) = v61;
          static os_log_type_t.default.getter();
          v62 = v75;
          os_log(_:dso:log:type:_:)();

          result = GroupSession.isLocallyInitiated.getter();
          if (result)
          {
            if (*(v77 + OBJC_IVAR___CSDScreenSharingActivityManager_localScreenShareAttributes))
            {
              objc_opt_self();
              result = swift_dynamicCastObjCClass();
              if (result)
              {
                swift_unknownObjectRetain();
                ScreenSharingActivityManager.broadcastAttributes(_:)();
                return swift_unknownObjectRelease();
              }
            }
          }
        }

        else
        {
          v74 = static os_log_type_t.fault.getter();
          sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_10057D6A0;
          GroupSession.id.getter();
          v64 = v78;
          v65 = v79;
          v66 = *(v78 + 16);
          v73 = a1;
          v66(v80, v11, v79);
          v80 = String.init<A>(reflecting:)();
          v68 = v67;
          (*(v64 + 8))(v11, v65);
          *(v63 + 56) = &type metadata for String;
          v69 = sub_100009D88();
          *(v63 + 64) = v69;
          *(v63 + 32) = v80;
          *(v63 + 40) = v68;
          v30(v76, v73, v12);
          v70 = String.init<A>(reflecting:)();
          *(v63 + 96) = &type metadata for String;
          *(v63 + 104) = v69;
          *(v63 + 72) = v70;
          *(v63 + 80) = v71;
          v72 = v75;
          os_log(_:dso:log:type:_:)();

          sub_100376E78();
          return (*(v13 + 8))(v20, v12);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100376CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = [objc_allocWithZone(TUCallScreenShareAttributes) initWithAttributes:a1];
    v15 = type metadata accessor for GroupSessionMessenger.MessageContext();
    (*(*(v15 - 8) + 16))(v11, a2, v15);
    sub_10000AF74(v11, 0, 1, v15);
    sub_10037ABA8(v14, v11, a4, v13);

    return sub_10037B1A4(v11, &qword_1006A6018);
  }

  return result;
}

uint64_t sub_100376E1C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_10026D814(&qword_1006A70E0, &qword_100582878);
  return a2(v4, &a1[*(v5 + 48)]);
}

void sub_100376E78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v0 + OBJC_IVAR___CSDScreenSharingActivityManager_queue);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    if (GroupSession.isLocallyInitiated.getter())
    {
      v19 = sub_100004778();
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10057D690;
      GroupSession.id.getter();
      (*(v2 + 16))(v7, v10, v1);
      v21 = String.init<A>(reflecting:)();
      v23 = v22;
      (*(v2 + 8))(v10, v1);
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100009D88();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      sub_100375384();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100377134(uint64_t result, void *a2)
{
  if (result)
  {
    swift_getObjectType();
    swift_errorRetain();
    v3 = sub_100004778();
    static os_log_type_t.error.getter();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10057D6A0;
    v5 = a2;
    v6 = String.init<A>(reflecting:)();
    v8 = v7;
    *(v4 + 56) = &type metadata for String;
    v9 = sub_100009D88();
    *(v4 + 64) = v9;
    *(v4 + 32) = v6;
    *(v4 + 40) = v8;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    v10 = String.init<A>(reflecting:)();
    *(v4 + 96) = &type metadata for String;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    os_log(_:dso:log:type:_:)();
  }

  return result;
}

id sub_1003773A0()
{
  sub_100022068();
  v0 = type metadata accessor for PropertyListDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10037A910();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  if (v7)
  {
    v3 = objc_allocWithZone(TUScreenShareAttributes);
    v4 = v7;
    v5 = [v3 initWithAttributes:v4];
  }

  else
  {

    return 0;
  }

  return v5;
}

Swift::Void __swiftcall ScreenSharingActivityManager.carPlayStartedConnectionAttempt()()
{
  sub_100005EF4();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3, v8);
  sub_100007FDC();
  sub_100007654();
  if (sub_100375770())
  {
    v32 = v0;
    Dictionary.init(dictionaryLiteral:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031E958(0xD00000000000001FLL, 0x800000010056EBC0);
    v9 = String.init(format:_:)();
    v11 = v10;

    v37 = &type metadata for String;
    *&v36 = v9;
    *(&v36 + 1) = v11;
    sub_10003EBF0(&v36, &v35);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100040430();

    v12 = String._bridgeToObjectiveC()();
    v13 = MGGetStringAnswer();

    v33 = v2;
    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
    }

    else
    {
      v16 = 0xE600000000000000;
      v14 = 0x656E6F685069;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10031E958(0xD000000000000024, 0x800000010056EBE0);
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v22 = sub_100009F00();
    *(v22 + 16) = xmmword_10057D690;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100009D88();
    *(v22 + 32) = v14;
    *(v22 + 40) = v16;
    v23 = String.init(format:_:)();
    v25 = v24;

    v37 = &type metadata for String;
    *&v36 = v23;
    *(&v36 + 1) = v25;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = sub_10031E958(0xD000000000000020, 0x800000010056EC10);
    v37 = &type metadata for String;
    *&v36 = v26;
    *(&v36 + 1) = v27;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = sub_10031E958(0x574F4E5F544F4ELL, 0xE700000000000000);
    v37 = &type metadata for String;
    *&v36 = v28;
    *(&v36 + 1) = v29;
    sub_10004A0DC();
    sub_100035E44();
    sub_100040430();

    sub_100006AF0(0, &qword_1006A6750, IMUserNotificationCenter_ptr);
    v30 = static IMUserNotificationCenter.shared.getter();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v5 + 8))(v1, v33);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006890();
    *(swift_allocObject() + 16) = v32;
    v31 = v32;
    IMUserNotificationCenter.postNotification(withIdentifier:bundleIdentifier:displayInformation:showsIcon:completionHandler:)();

    sub_100005EDC();
  }

  else
  {
    if (qword_1006A0AF8 != -1)
    {
      sub_1000083DC();
    }

    v17 = type metadata accessor for Logger();
    sub_10000AF9C(v17, qword_1006BA568);
    v34 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v34, v18, "Screen sharing manager ignoring CarPlay connection attempt since we don't have a joined session", v19, 2u);
    }

    sub_100005EDC();
  }
}

void sub_100377AB8(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  isa = v5[8].isa;
  __chkstk_darwin(v4, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA568);
    v30 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v30, v17, "Not ending ScreenSharing because user didn't choose to end", v18, 2u);
    }

    v19 = v30;
  }

  else
  {
    v29 = v13;
    v30 = v5;
    if (qword_1006A0AF8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000AF9C(v20, qword_1006BA568);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ending ScreenSharing since user tapped the end button", v23, 2u);
    }

    v24 = *&a2[OBJC_IVAR___CSDScreenSharingActivityManager_queue];
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    aBlock[4] = sub_10037AA74;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = &unk_10062A728;
    v26 = _Block_copy(aBlock);
    v27 = a2;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000EF60(&qword_1006A2CC0, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_10037AB64(&qword_1006A2CD0, &unk_1006A2960);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);
    (v30[1].isa)(v9, v4);
    (*(v29 + 8))(v15, v10);
  }
}

void sub_100377F5C()
{
  swift_getObjectType();

  CPCarPlayObserverDelegate.carPlayStoppedConnectionAttempt()();
}

void sub_100377FA4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  sub_100007BF0(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  sub_10037426C(a1, v7, a2);
}

unint64_t sub_100378020()
{
  result = qword_1006A6DF0;
  if (!qword_1006A6DF0)
  {
    sub_100006AF0(255, &qword_1006A31A0, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6DF0);
  }

  return result;
}

void sub_100378088(unsigned __int8 *a1)
{
  v3 = type metadata accessor for UUID();
  sub_100007BF0(v3);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  sub_100374418(a1, v5, v6, v7, v8, v9);
}

void sub_100378104()
{
  sub_10003D4BC();
  v5 = sub_100018270(v3, v4);
  v6 = sub_1002DB874(v5);
  sub_100008598(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for TTSAssetProperty(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6E98, &qword_100582678);
  v9 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v9, v10))
  {
    v11 = sub_10000B8DC();
    sub_1002DB874(v11);
    sub_100035B58();
    if (!v13)
    {
      goto LABEL_14;
    }

    v2 = v12;
  }

  if (v1)
  {
    sub_100009B7C((*(*v0 + 56) + 32 * v2));
    sub_100006B30();
    sub_100035CE8();

    sub_10003EBF0(v14, v15);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_10032783C(v17, v18, v19, v20);
  }
}

void sub_100378214()
{
  sub_10003D4BC();
  v4 = sub_100018270(v2, v3);
  v5 = sub_1002DA664(v4);
  sub_100008598(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&qword_1006A7048, &qword_100582818);
  v12 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = sub_100010088();
    sub_1002DA664(v14);
    sub_10000C758();
    if (!v16)
    {
      goto LABEL_12;
    }

    v10 = v15;
  }

  if (v11)
  {
    v17 = *(*v1 + 56);
    v18 = type metadata accessor for CSDConversationSpatialPersonaResolver.SpatialPersonaCounter(0);
    sub_100007BF0(v18);
    sub_10037AA1C(v0, v17 + *(v19 + 72) * v10);
    sub_100035CE8();
  }

  else
  {
    sub_100035CE8();

    sub_100327880(v20, v21, v22, v23);
  }
}

void sub_10037831C(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_100052710(a2);
  sub_100008598(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10026D814(&qword_1006A7040, &qword_100582810);
  v14 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    v16 = *v3;
    sub_100052710(a2);
    sub_10000C758();
    if (!v18)
    {
      goto LABEL_11;
    }

    v12 = v17;
  }

  v19 = *v3;
  if (v13)
  {
    *(*(v19 + 56) + v12) = a1 & 1;
  }

  else
  {
    v20 = *a2;
    v22 = *(a2 + 16);
    v23 = v20;
    sub_100327908(v12, a2, a1 & 1, v19);
    sub_100052980(&v23, v21);
    sub_100052980(&v22, v21);
  }
}

uint64_t sub_10037841C()
{
  sub_10003D4BC();
  sub_10000FE04(v1, v2);
  v3 = sub_100005208();
  sub_100008598(v3, v4);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v5;
  sub_10026D814(&qword_1006A6E88, &qword_100582CA0);
  v8 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    sub_10000D374();
    sub_100005208();
    sub_100008BC4();
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    v11 = *(*v0 + 56);
    v12 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
    sub_100007BF0(v12);
    v14 = *(v13 + 72);
    sub_100035CE8();

    return sub_10037A7E0(v15, v16);
  }

  else
  {
    sub_10037B364();
    sub_100327948();
    sub_100035CE8();
  }
}

void sub_100378540()
{
  sub_100005EF4();
  sub_10000E798();
  v2 = type metadata accessor for Locale();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000F714();
  sub_1002DA5A4();
  sub_100008598(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F68, &qword_100582740);
  v10 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100010088();
    sub_1002DA5A4();
    sub_10000D4BC();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v1)
  {
    sub_1000079F8();
    sub_100005EDC();
  }

  else
  {
    v15 = sub_100015DCC();
    v16(v15);
    v17 = sub_1000162FC();
    sub_1003279BC(v17, v18, v19, v20);
    sub_100005EDC();
  }
}

void sub_100378670()
{
  sub_10003D4BC();
  sub_100006BD4();
  v4 = v3;
  sub_100005340();
  v5 = sub_1002DA6A0();
  sub_100008598(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&qword_1006A76A0, &qword_100582DB0);
  v12 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = *v2;
    sub_1002DA6A0();
    sub_100008BC4();
    if (!v16)
    {
      goto LABEL_14;
    }

    v10 = v15;
  }

  if (v11)
  {
    v17 = (*(*v2 + 56) + 24 * v10);
    v19 = *v17;
    v18 = v17[1];
    *v17 = v1;
    v17[1] = v4;
    v17[2] = v0;

    sub_100035CE8();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_10037B364();
    sub_100035CE8();

    sub_1003279D4(v21, v22, v23, v24, v25);
  }
}

void sub_10037876C()
{
  sub_100005EF4();
  sub_10000E798();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000F714();
  sub_100021E24();
  sub_100008598(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A7020, &qword_1005827F0);
  v10 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v1)
  {
    sub_1000079F8();
    sub_100005EDC();

    swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_100015DCC();
    v16(v15);
    v17 = sub_1000162FC();
    sub_100327A10(v17, v18, v19, v20);
    sub_100005EDC();
  }
}

void sub_100378914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100005EF4();
  v16 = v15;
  v17 = type metadata accessor for UUID();
  v18 = sub_100007FEC(v17);
  v44 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18, v22);
  sub_10000F714();
  sub_100021E24();
  sub_100008598(v23, v24);
  if (v25)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A7680, &unk_1005827D0);
  v26 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v26, v27))
  {
    sub_10003EB8C();
    sub_100021E24();
    sub_10000D4BC();
    if (!v28)
    {
      goto LABEL_11;
    }
  }

  if (v14)
  {
    v29 = *(v44 + 40);
    v30 = *(*v12 + 56);
    v31 = *(v44 + 72);
    sub_100005EDC();

    v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
  }

  else
  {
    (*(v44 + 16))(v13, v16, v17);
    v40 = sub_1000162FC();
    sub_100327A88(v40, v41, v42, v43);
    sub_100005EDC();
  }
}

void sub_100378A8C()
{
  sub_10000D698();
  sub_100022E10();
  v3 = v2;
  sub_100005340();
  sub_10000C598(v4, v5, v6);
  v7 = sub_100005208();
  sub_100008598(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10026D814(&unk_1006A7030, &unk_100582800);
  if (sub_100007D68())
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v15)
    {
      goto LABEL_14;
    }

    v12 = v14;
  }

  if (v13)
  {
    v16 = *(*v1 + 56) + 16 * v12;
    v17 = *v16;
    v26 = *(v16 + 8);
    *v16 = v0;
    *(v16 + 8) = v3;

    sub_100006048();
  }

  else
  {
    v20 = sub_100018FA4();
    sub_100327B38(v20, v21, v22, v23, v3, v24);
    sub_100006048();
  }
}

void sub_100378B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000FA90(a1, a2);
  v5 = sub_100027D50(v4);
  sub_100008598(v5, v6);
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&unk_1006A7000, &qword_1005827C8);
  if (!sub_100006928())
  {
    goto LABEL_5;
  }

  v12 = *v3;
  v13 = sub_100027D50(v19);
  if ((v11 & 1) != (v14 & 1))
  {
LABEL_11:
    type metadata accessor for Name(0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v13;
LABEL_5:
  v15 = *v3;
  if (v11)
  {
    *(*(v15 + 56) + 8 * v10) = v2;
    sub_10000D634();
  }

  else
  {
    sub_100327B74(v10, v19, v2, v15);
    sub_10000D634();

    v18 = v16;
  }
}

void sub_100378C74(uint64_t a1, uint64_t a2)
{
  sub_100018270(a1, a2);
  v5 = sub_1000067D4();
  sub_100008598(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&qword_1006AB3F0, &unk_10057EA70);
  v12 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_100010088();
    sub_1000067D4();
    sub_10000C758();
    if (!v15)
    {
      goto LABEL_12;
    }

    v10 = v14;
  }

  v16 = *v3;
  if (v11)
  {
    sub_100009B7C((*(v16 + 56) + 32 * v10));
    v17 = sub_100006B30();

    sub_10003EBF0(v17, v18);
  }

  else
  {
    sub_100006724(v4, v19);
    sub_100327BB4(v10, v19, v2, v16);
  }
}

void sub_100378D80()
{
  sub_100005EF4();
  sub_10000F380(v3, v4);
  sub_100022068();
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&unk_1006A7660, &qword_1005827C0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = *v1;
  if (v2)
  {
    sub_10000C148();
    v16 = v15[1];
    *v15 = v0;
    v15[1] = v20;
    sub_100005EDC();
  }

  else
  {
    v18 = sub_10003DBEC();
    v19(v18);
    sub_10000534C();
    sub_100327BF8();
    sub_100005EDC();
  }
}

void sub_100378EF0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1002DA6EC();
  sub_100008598(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  sub_10026D814(&qword_1006A6FA0, &unk_100582D40);
  if (sub_100006928())
  {
    v12 = *v2;
    sub_1002DA6EC();
    sub_100035B58();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  v15 = *v2;
  if (v11)
  {
    v16 = *(v15 + 56);
    v17 = *(v16 + 8 * v10);
    *(v16 + 8 * v10) = a1;
  }

  else
  {

    sub_100327C84(v10, a1, v15);
  }
}

void sub_100378FD4()
{
  sub_10003D4BC();
  sub_100006BD4();
  v4 = v3;
  v5 = *v1;
  sub_10002F66C(v3, v6);
  v7 = sub_100005208();
  sub_100008598(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  sub_10026D814(&unk_1006A6F30, &qword_100582708);
  v14 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15))
  {
    sub_10003EB8C();
    sub_100005208();
    sub_10000C758();
    if (!v17)
    {
      goto LABEL_12;
    }

    v12 = v16;
  }

  if (v13)
  {
    *(*(*v2 + 56) + 8 * v12) = v4;
    sub_100035CE8();
  }

  else
  {
    v18 = sub_10000FC44();
    sub_100012FA0(v18, v19, v0, v4, v20);
    sub_100035CE8();
  }
}

void sub_1003790C0()
{
  sub_10003D4BC();
  v6 = sub_100018270(v4, v5);
  v7 = sub_1002DA664(v6);
  sub_100008598(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&unk_1006A7650, &unk_1005827B0);
  v10 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    v12 = sub_10000B8DC();
    sub_1002DA664(v12);
    sub_100035B58();
    if (!v14)
    {
      goto LABEL_14;
    }

    v3 = v13;
  }

  if (v2)
  {
    v15 = *(*v1 + 56);
    v16 = *(v15 + 8 * v3);
    *(v15 + 8 * v3) = v0;
    sub_100035CE8();
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327B74(v19, v20, v21, v22);
  }
}

void sub_10037919C()
{
  sub_10003D4BC();
  v4 = sub_100018270(v2, v3);
  v5 = sub_1002DA664(v4);
  sub_100008598(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&unk_1006A6FE0, &unk_100582D80);
  v8 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    v10 = sub_10000B8DC();
    sub_1002DA664(v10);
    sub_100035B58();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v12 = *(*v0 + 56);
    sub_100035CE8();

    sub_10037A9C0(v13, v14);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327CC0(v16, v17, v18, v19);
  }
}

uint64_t sub_100379278()
{
  sub_100005EF4();
  sub_100022E10();
  sub_100005340();
  sub_10000C598(v1, v2, v3);
  v4 = sub_100005208();
  sub_100008598(v4, v5);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v6;
  sub_10026D814(&unk_1006A7630, &unk_1005827A0);
  v9 = sub_100007D68();
  if (v9)
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v8)
  {
    sub_100017ECC(v9, v10, v11, v12, v13, *v0);
    sub_100005EDC();
  }

  else
  {
    v17 = sub_10003FB84();
    sub_100327B38(v17, v18, v19, v20, v21, v22);
    sub_100005EDC();
  }
}

void sub_1003793F0()
{
  sub_10003D4BC();
  sub_10000FE04(v2, v3);
  v4 = sub_100005208();
  sub_100008598(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10026D814(&unk_1006A6FD0, &qword_100580318);
  v11 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v11, v12))
  {
    sub_10003EB8C();
    sub_100005208();
    sub_100008BC4();
    if (!v14)
    {
      goto LABEL_12;
    }

    v9 = v13;
  }

  if (v10)
  {
    v15 = *(*v1 + 56);
    v16 = type metadata accessor for PendingMembershipInfo();
    sub_100007BF0(v16);
    sub_10037AA1C(v0, v15 + *(v17 + 72) * v9);
    sub_100035CE8();
  }

  else
  {
    sub_10037B364();
    sub_100327D1C();
    sub_100035CE8();
  }
}

void sub_100379510()
{
  sub_100005EF4();
  sub_100022E10();
  v3 = v2;
  v5 = v4;
  sub_100005340();
  v7 = sub_1002DA664(v6);
  sub_100008598(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_10026D814(&unk_1006A6FC0, &qword_100580940);
  if (!sub_100007D68())
  {
    goto LABEL_5;
  }

  v14 = sub_100008988();
  v15 = sub_1002DA664(v14);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v1 + 56) + 24 * v12;
    v18 = *v17;
    *v17 = v0;
    *(v17 + 8) = v5;
    *(v17 + 16) = v3 & 1;
    *(v17 + 17) = HIBYTE(v3) & 1;
    sub_100005EDC();
  }

  else
  {
    sub_100005EDC();

    sub_100327D98(v21, v22, v23, v24, v25, v26);
  }
}

void sub_10037962C()
{
  sub_100005EF4();
  sub_10000E798();
  v4 = type metadata accessor for UUID();
  v5 = sub_100007FEC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  sub_10000F714();
  sub_100021E24();
  sub_100008598(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6FB8, &unk_100582780);
  v12 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v15)
    {
      goto LABEL_11;
    }

    v2 = v14;
  }

  if (v3)
  {
    v16 = *(*v1 + 56);
    v17 = type metadata accessor for SimulatedConversationManager.SimulatedGroupSession(0);
    sub_100007BF0(v17);
    sub_10037AA1C(v0, v16 + *(v18 + 72) * v2);
  }

  else
  {
    v19 = sub_100015DCC();
    v20(v19);
    v21 = sub_1000162FC();
    sub_100327DF0(v21, v22, v23, v24);
  }

  sub_100005EDC();
}

void sub_100379774()
{
  sub_10003D4BC();
  v4 = sub_100018270(v2, v3);
  v5 = sub_1002DB874(v4);
  sub_100008598(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6FB0, &unk_100582D50);
  v8 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    v10 = sub_10000B8DC();
    sub_1002DB874(v10);
    sub_100035B58();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v12 = *(*v0 + 56);
    sub_100035CE8();

    sub_10037A964(v13, v14);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100327E9C(v16, v17, v18, v19);
  }
}

void sub_100379850()
{
  sub_10003D4BC();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *v0;
  v9 = sub_100007558(v4);
  sub_100008598(v9, v10);
  if (v11)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A6FA8, &unk_100582770);
  v12 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    v14 = *v3;
    sub_100007558(v5);
    sub_100035B58();
    if (!v16)
    {
      goto LABEL_14;
    }

    v2 = v15;
  }

  if (v1)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v2);
    *(v17 + 8 * v2) = v7;
    sub_100035CE8();
  }

  else
  {
    sub_100035CE8();

    sub_100327EE0(v20, v21, v22, v23);
  }
}

void sub_100379948()
{
  sub_100005EF4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100022068();
  v9 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  v10 = sub_100008070(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  sub_10000F714();
  v14 = sub_1002DA824();
  sub_100008598(v14, v15);
  if (v17)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v16;
  sub_10026D814(&qword_1006A6F60, &qword_100582D20);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v4 & 1, v0))
  {
    sub_10003EB8C();
    sub_1002DA824();
    sub_10000D4BC();
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v20 = *v0;
  if (v18)
  {
    sub_10000C148();
    v22 = v21[1];
    *v21 = v1;
    v21[1] = v8;
    sub_100005EDC();
  }

  else
  {
    sub_10037A8AC(v6, v2);
    sub_100327F18();
    sub_100005EDC();
  }
}

void sub_100379A84()
{
  sub_100005EF4();
  sub_10000E798();
  v2 = type metadata accessor for UUID();
  v3 = sub_100007FEC(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  sub_10000F714();
  sub_100021E24();
  sub_100008598(v7, v8);
  if (v9)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_100027EA8();
  sub_10026D814(&qword_1006A6F88, &qword_100582750);
  v10 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11))
  {
    sub_100010088();
    sub_100021E24();
    sub_10000D4BC();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = *v0;
  if (v1)
  {
    sub_1000079F8();
    sub_100005EDC();
  }

  else
  {
    v15 = sub_100015DCC();
    v16(v15);
    v17 = sub_1000162FC();
    sub_1000261AC(v17);
    sub_100005EDC();
  }
}

void sub_100379BB4()
{
  sub_100005EF4();
  sub_10000F380(v3, v4);
  sub_100022068();
  v5 = type metadata accessor for UUID();
  v6 = sub_100007FEC(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&qword_1006A6F90, &qword_100582758);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  v14 = *v1;
  if (v2)
  {
    sub_10000C148();
    v16 = *v15;
    v17 = v15[1];
    *v15 = v0;
    v15[1] = v23;
    sub_100005EDC();

    sub_10034B1B8(v18, v19);
  }

  else
  {
    v21 = sub_10003DBEC();
    v22(v21);
    sub_10000534C();
    sub_100327BF8();
    sub_100005EDC();
  }
}

void sub_100379D9C()
{
  sub_100005EF4();
  sub_10000F380(v2, v3);
  v5 = v4;
  v6 = type metadata accessor for UUID();
  v7 = sub_100007FEC(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_10:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(&qword_1006A6E80, &unk_100582660);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v15 = *v0;
  if (v1)
  {
    sub_10000C148();
    *v16 = v5 & 1;
    *(v16 + 8) = v19;
  }

  else
  {
    v17 = sub_10003DBEC();
    v18(v17);
    sub_10000534C();
    sub_100327FE4();
  }

  sub_100005EDC();
}

uint64_t sub_100379EC8()
{
  sub_100005EF4();
  sub_100022E10();
  sub_100005340();
  sub_10000C598(v1, v2, v3);
  v4 = sub_100005208();
  sub_100008598(v4, v5);
  if (v7)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v8 = v6;
  sub_10026D814(&unk_1006A6F00, &unk_100582CC0);
  v9 = sub_100007D68();
  if (v9)
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v14)
    {
      goto LABEL_13;
    }
  }

  if (v8)
  {
    sub_100017ECC(v9, v10, v11, v12, v13, *v0);
    sub_100005EDC();
  }

  else
  {
    v17 = sub_10003FB84();
    sub_100327B38(v17, v18, v19, v20, v21, v22);
    sub_100005EDC();
  }
}

uint64_t sub_10037A018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000D698();
  v54 = v18;
  v55 = v19;
  v21 = v20;
  v23 = v22;
  v24 = v15;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_10000FE04(v31, v29);
  v32 = sub_100005208();
  sub_100008598(v32, v33);
  if (v34)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_100027EA8();
  sub_10026D814(v23, v21);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v26 & 1, v15))
  {
    v35 = *v15;
    sub_100005208();
    sub_10000D4BC();
    if (!v37)
    {
      goto LABEL_14;
    }

    v16 = v36;
  }

  v38 = *v24;
  if (v17)
  {
    v39 = *(v38 + 56);
    v40 = v54(0);
    sub_100008070(v40);
    v42 = *(v41 + 40);
    v43 = v39 + *(v41 + 72) * v16;
    sub_100006048();

    return v47(v44, v45, v46, v47, v48, v49, v50, v51, v54, v55, a11, a12, a13, a14);
  }

  else
  {
    v55(v16, v30, v28, v14, v38);
    sub_100006048();
  }
}

void sub_10037A16C()
{
  sub_10003D4BC();
  sub_100006BD4();
  v3 = v2;
  v4 = *v0;
  sub_10002F66C(v2, v5);
  v6 = sub_100005208();
  sub_100008598(v6, v7);
  if (v10)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v11 = v8;
  v12 = v9;
  sub_10026D814(&unk_1006A6F10, &unk_100582CE0);
  v13 = sub_1000113D4();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14))
  {
    sub_100010088();
    sub_100005208();
    sub_100008BC4();
    if (!v16)
    {
      goto LABEL_12;
    }

    v11 = v15;
  }

  if (v12)
  {
    *(*(*v1 + 56) + v11) = v3 & 1;
    sub_100035CE8();
  }

  else
  {
    v17 = sub_10001AC20();
    sub_100328108(v17, v18, v19, v20, v21);
    sub_100035CE8();
  }
}

void sub_10037A280()
{
  sub_100005EF4();
  v26 = sub_100021F50(v4, v5, v6, v7, v8, v9);
  v10 = sub_100007FEC(v26);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10, v15);
  sub_100007FDC();
  sub_10000607C();
  sub_100008598(v16, v17);
  if (v18)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10003A5C0();
  sub_10026D814(v1, v0);
  if (sub_100007D68())
  {
    sub_10000D374();
    sub_100021E24();
    sub_100022D24();
    if (!v19)
    {
      goto LABEL_11;
    }
  }

  v20 = *v2;
  if (v3)
  {
    sub_1000276EC();
    sub_100005EDC();
  }

  else
  {
    v22 = *(v12 + 16);
    v23 = sub_10000FC44();
    v24(v23);
    v25 = sub_10000534C();
    v27(v25);
    sub_100005EDC();
  }
}

void sub_10037A3B0()
{
  sub_10003D4BC();
  v4 = sub_100018270(v2, v3);
  v5 = sub_1002DA664(v4);
  sub_100008598(v5, v6);
  if (v7)
  {
    __break(1u);
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  sub_10002F768();
  sub_10026D814(&qword_1006A7580, &unk_1005826E0);
  v8 = sub_100015FFC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    v10 = sub_10000B8DC();
    sub_1002DA664(v10);
    sub_100035B58();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v12 = *(*v0 + 56);
    sub_100035CE8();

    sub_10037A850(v13, v14);
  }

  else
  {
    sub_10001AC20();
    sub_100035CE8();

    sub_100328138(v16, v17, v18, v19);
  }
}

void sub_10037A4DC(uint64_t a1, uint64_t a2)
{
  sub_10000FA90(a1, a2);
  sub_10003719C();
  sub_100008598(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_100006AF0(0, &qword_1006A34B0, off_1006165E0);
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v9 = v6;
  v10 = v7;
  sub_10026D814(&qword_1006A6ED8, &qword_1005826B0);
  if (sub_100006928())
  {
    v11 = *v3;
    sub_10003719C();
    sub_100035B58();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  v14 = *v3;
  if (v10)
  {
    v15 = *(v14 + 56);
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = v2;
    sub_10000D634();
  }

  else
  {
    sub_100327B74(v9, v22, v2, v14);
    sub_10000D634();

    v21 = v19;
  }
}

_OWORD *sub_10037A5D8(uint64_t a1, uint64_t a2)
{
  sub_10000FA90(a1, a2);
  v4 = sub_1002DA9A4();
  sub_100008598(v4, v5);
  if (v8)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for CFString(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  sub_10026D814(&qword_1006A6EB8, &qword_100582698);
  if (sub_100006928())
  {
    v11 = *v3;
    sub_1002DA9A4();
    sub_100035B58();
    if (!v13)
    {
      goto LABEL_14;
    }

    v9 = v12;
  }

  v14 = *v3;
  if (v10)
  {
    sub_100009B7C((*(v14 + 56) + 32 * v9));
    sub_100006B30();
    sub_10000D634();

    return sub_10003EBF0(v15, v16);
  }

  else
  {
    sub_10032783C(v9, v21, v2, v14);
    sub_10000D634();

    return v19;
  }
}

uint64_t sub_10037A71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t))
{
  sub_10000D698();
  v12 = sub_100015AD8();
  sub_100008598(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000C464();
  v15 = sub_100007D68();
  if (v15)
  {
    sub_100008988();
    sub_100005208();
    sub_100008BC4();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v11)
  {
    sub_100007794(v15, v16, v17, v18, *v10);
    sub_100006048();
  }

  else
  {
    v22 = sub_100018FA4();
    a10(v22);
    sub_100006048();
  }
}

uint64_t sub_10037A7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A3BF0, &qword_10057DE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayAvailabilityManager.CallAndHandle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10037A910()
{
  result = qword_1006A6F78;
  if (!qword_1006A6F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A6F78);
  }

  return result;
}

uint64_t sub_10037AA1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000691C();
  v5 = v4(v3);
  sub_100008070(v5);
  v7 = *(v6 + 40);
  v8 = sub_100006B30();
  v9(v8);
  return a2;
}

unint64_t sub_10037AA7C()
{
  result = qword_1006A7058;
  if (!qword_1006A7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7058);
  }

  return result;
}

unint64_t sub_10037AAD0()
{
  result = qword_1006A7088;
  if (!qword_1006A7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A7088);
  }

  return result;
}

uint64_t sub_10037AB64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_10002F66C(0, a2);
    sub_10026DCB4(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10037ABA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v77 = a3;
  v78 = a4;
  v6 = type metadata accessor for UUID();
  v74 = *(v6 - 8);
  v7 = *(v74 + 64);
  v9 = __chkstk_darwin(v6, v8);
  v76 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v75 = &v66 - v12;
  v13 = type metadata accessor for Participant();
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10026D814(&qword_1006A6018, &qword_100582860);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v66 - v21;
  v23 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23, v26);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10037B1F8(a2, v22, &qword_1006A6018);
  v29 = sub_100015468(v22, 1, v23);
  v73 = a1;
  if (v29 == 1)
  {
    sub_10037B1A4(v22, &qword_1006A6018);
    v30 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10057D6A0;
    v79 = a1;
    v32 = a1;
    sub_10026D814(&qword_1006A70D8, &qword_100582870);
    v33 = String.init<A>(reflecting:)();
    v35 = v34;
    *(v31 + 56) = &type metadata for String;
    v36 = sub_100009D88();
    v38 = v74;
    v37 = v75;
    v39 = v36;
    *(v31 + 64) = v36;
    *(v31 + 32) = v33;
    *(v31 + 40) = v35;
    GroupSession.id.getter();
    (*(v38 + 16))(v76, v37, v6);
    v40 = String.init<A>(reflecting:)();
    v41 = v6;
    v42 = v40;
    v44 = v43;
    (*(v38 + 8))(v37, v41);
    *(v31 + 96) = &type metadata for String;
    *(v31 + 104) = v39;
    *(v31 + 72) = v42;
    *(v31 + 80) = v44;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v68 = v23;
    v69 = v24;
    v45 = *(v24 + 32);
    v66 = v28;
    v45(v28, v22, v23);
    v67 = sub_100004778();
    sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10057E830;
    v79 = a1;
    v47 = a1;
    sub_10026D814(&qword_1006A70D8, &qword_100582870);
    v48 = String.init<A>(reflecting:)();
    v50 = v49;
    *(v46 + 56) = &type metadata for String;
    v70 = sub_100009D88();
    *(v46 + 64) = v70;
    *(v46 + 32) = v48;
    *(v46 + 40) = v50;
    GroupSessionMessenger.MessageContext.source.getter();
    v51 = v75;
    Participant.id.getter();
    (*(v71 + 8))(v17, v72);
    v52 = v74;
    v53 = *(v74 + 16);
    v54 = v76;
    v53(v76, v51, v6);
    v55 = String.init<A>(reflecting:)();
    v57 = v56;
    v58 = *(v52 + 8);
    v58(v51, v6);
    v59 = v70;
    *(v46 + 96) = &type metadata for String;
    *(v46 + 104) = v59;
    *(v46 + 72) = v55;
    *(v46 + 80) = v57;
    GroupSession.id.getter();
    v53(v54, v51, v6);
    v60 = String.init<A>(reflecting:)();
    v62 = v61;
    v58(v51, v6);
    v63 = v70;
    *(v46 + 136) = &type metadata for String;
    *(v46 + 144) = v63;
    *(v46 + 112) = v60;
    *(v46 + 120) = v62;
    static os_log_type_t.default.getter();
    v64 = v67;
    os_log(_:dso:log:type:_:)();

    (*(v69 + 8))(v66, v68);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result screenSharingActivityManager:v78 receivedUpdatedRemoteAttributes:v73 isLocallySharing:GroupSession.isLocallyInitiated.getter() & 1];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10037B1A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002F66C(a1, a2);
  v5 = sub_10026D814(v3, v4);
  sub_100008070(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_10037B1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C598(a1, a2, a3);
  v6 = sub_10026D814(v4, v5);
  sub_100008070(v6);
  v8 = *(v7 + 16);
  v9 = sub_100006B30();
  v10(v9);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ScreenSharingActivityManagerErrors(_BYTE *result, int a2, int a3)
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

unint64_t sub_10037B308()
{
  result = qword_1006A70E8;
  if (!qword_1006A70E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A70E8);
  }

  return result;
}

id sub_10037B374()
{
  result = [objc_allocWithZone(type metadata accessor for CSDAnalyticsManager()) init];
  static CSDAnalyticsManager.sharedInstance = result;
  return result;
}

uint64_t *CSDAnalyticsManager.sharedInstance.unsafeMutableAddressor()
{
  if (qword_1006A0AB8 != -1)
  {
    sub_10000A248();
  }

  return &static CSDAnalyticsManager.sharedInstance;
}

id static CSDAnalyticsManager.sharedInstance.getter()
{
  if (qword_1006A0AB8 != -1)
  {
    sub_10000A248();
  }

  v1 = static CSDAnalyticsManager.sharedInstance;

  return v1;
}

uint64_t CSDAnalyticsManager.setAnalyticsManagerProvider(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider);
  *(v1 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_10037B4B4()
{
  v1 = v0;
  v25 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v25, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  *&v0[OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider] = 0;
  v24 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_queue;
  sub_100006AF0(0, &qword_1006A31A0, OS_dispatch_queue_ptr);
  static DispatchQoS.background.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002C8A5C();
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_10026DC50();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v25);
  *&v0[v24] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_tuFeatureFlags;
  *&v1[v13] = [objc_allocWithZone(TUFeatureFlags) init];
  v14 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_callDirectoryManager;
  *&v1[v14] = [objc_allocWithZone(CXCallDirectoryExtensionManager) init];
  v15 = OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_liveLookupManager;
  type metadata accessor for LiveCallerIDLookupManager();
  *&v1[v15] = static LiveCallerIDLookupManager.shared.getter();
  v16 = type metadata accessor for CSDAnalyticsManager();
  v32.receiver = v1;
  v32.super_class = v16;
  v17 = objc_msgSendSuper2(&v32, "init");
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v30 = sub_10037DB6C;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1003EF338;
  v29 = &unk_10062A920;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  xpc_activity_register("com.apple.telephonyutilities.callservicesd.analytics.daily", XPC_ACTIVITY_CHECK_IN, v19);
  _Block_release(v19);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v30 = sub_10037DB74;
  v31 = v21;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1003EF338;
  v29 = &unk_10062A970;
  v22 = _Block_copy(&aBlock);

  xpc_activity_register("com.apple.telephonyutilities.callservicesd.analytics.weekly", XPC_ACTIVITY_CHECK_IN, v22);
  _Block_release(v22);

  return v20;
}

void sub_10037B8C4(_xpc_activity_s *a1, void *a2)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    (*((swift_isaMask & *a2) + 0x98))(a1);
    return;
  }

  if (!state)
  {
    if (qword_1006A0B10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = xpc_activity_copy_criteria(a1);
    v10 = sub_1002914F8(v9);
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_10002741C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "XPC activity checked in. Criteria: %s", v7, 0xCu);
    sub_100009B7C(v8);

LABEL_12:

LABEL_13:

    return;
  }

  if (qword_1006A0B10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA5B0);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v15, "unhandled xpc activity state %ld", v16, 0xCu);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

void sub_10037BBA0(_xpc_activity_s *a1, void *a2)
{
  state = xpc_activity_get_state(a1);
  if (state == 2)
  {
    (*((swift_isaMask & *a2) + 0xA0))(a1);
    return;
  }

  if (!state)
  {
    if (qword_1006A0B10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(oslog, v6))
    {
      goto LABEL_13;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = xpc_activity_copy_criteria(a1);
    v10 = sub_1002914F8(v9);
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_10002741C(v10, v12, &v18);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, oslog, v6, "XPC activity checked in. Criteria: %s", v7, 0xCu);
    sub_100009B7C(v8);

LABEL_12:

LABEL_13:

    return;
  }

  if (qword_1006A0B10 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000AF9C(v14, qword_1006BA5B0);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = xpc_activity_get_state(a1);
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v15, "unhandled xpc activity state %ld", v16, 0xCu);
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_10037BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return _swift_task_switch(sub_10037BEE8, 0, 0);
}

uint64_t sub_10037BEE8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_tuFeatureFlags);
  v2 = TUCallScreeningActivatable();
  v3 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  if (v2)
  {
    v4 = TUCallScreeningEnabled();
    v5.super.super.isa = NSNumber.init(BOOLeanLiteral:)(v4).super.super.isa;
  }

  else
  {
    v5.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  }

  isa = v5.super.super.isa;
  v7 = v0[4];
  v0[6] = v3;
  v8 = [objc_allocWithZone(NSUserDefaults) init];
  v9 = [v8 silenceUnknownCallersEnabled];

  v10 = NSNumber.init(BOOLeanLiteral:)(v9).super.super.isa;
  v11 = [objc_allocWithZone(CSDCoreTelephonyClient) initWithQueue:*(v7 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_queue) shouldRegisterForECBMNotification:0];
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v7;
  sub_10026D814(&unk_1006A7160, &unk_1005829C8);
  OS_dispatch_queue.sync<A>(execute:)();

  v13 = v0[2];
  v14 = v0[3];
  CSDAnalyticsManager.sendFacetimeSettingsDailyEvent(lvmToggleStatus:silenceUnknownCallerStatus:greetingExistsStatus:)(isa, v10, v13, v14);

  v15 = swift_task_alloc();
  v0[7] = v15;
  *v15 = v0;
  v15[1] = sub_10037C0EC;
  v16 = v0[4];

  return CSDAnalyticsManager.areCallDirectoryAppsEnabled()();
}

uint64_t sub_10037C0EC()
{
  sub_100006810();
  v1 = *(*v0 + 56);
  v4 = *v0;
  *(*v0 + 64) = v2;

  return _swift_task_switch(sub_10037C1E8, 0, 0);
}

uint64_t sub_10037C1E8()
{
  sub_1000066BC();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 64)).super.super.isa;
  CSDAnalyticsManager.areLiveLookupAppsEnabled()();
  v6 = NSNumber.init(BOOLeanLiteral:)(v5 & 1).super.super.isa;
  CSDAnalyticsManager.sendSpamFiltersDailyEvent(callDirectoryAppEnabled:liveLookupAppEnabled:)(isa, v6);

  xpc_activity_set_state(v2, 5);
  v7 = *(v0 + 8);

  return v7();
}

void sub_10037C2B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_10037C354(_xpc_activity_s *a1, const char *a2)
{
  v4 = v2;
  v6 = sub_10026D814(&qword_1006A5310, &qword_10057D580);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v19 - v9;
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v11 = type metadata accessor for Logger();
  sub_10000AF9C(v11, qword_1006BA5B0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
  }

  xpc_activity_set_state(a1, 4);
  v15 = type metadata accessor for TaskPriority();
  sub_10000AF74(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v4;
  v16[5] = a1;
  v17 = v4;
  swift_unknownObjectRetain();
  sub_1002762F0();
}

uint64_t sub_10037C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10037C520, 0, 0);
}

uint64_t sub_10037C520()
{
  sub_100006810();
  v1 = *(v0 + 24);
  CSDAnalyticsManager.sendDefaultCallingWeeklyEvent()();
  xpc_activity_set_state(v1, 5);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CSDAnalyticsManager.sendFacetimeSettingsDailyEvent(lvmToggleStatus:silenceUnknownCallerStatus:greetingExistsStatus:)(_DWORD *a1, void *a2, void *a3, void *a4)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  *(swift_initStackObject() + 16) = xmmword_10057CA70;
  sub_10000A8EC();
  *(v8 + 32) = 0xD000000000000011;
  *(v8 + 40) = v9;
  sub_10000A8EC();
  v10[6] = a1;
  v10[7] = 0xD00000000000001DLL;
  v10[8] = v11;
  v10[9] = a2;
  sub_10000A8EC();
  *(v12 + 80) = 0xD00000000000001BLL;
  *(v12 + 88) = v13;
  sub_10000A8EC();
  v14[12] = a3;
  v14[13] = 0xD00000000000001BLL;
  v14[14] = v15;
  v14[15] = a4;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA5B0);
  sub_10000667C();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    sub_100005274();
    v24 = sub_10000681C();
    v32 = v24;
    *a1 = 136315138;
    sub_1000113E4();
    v25 = Dictionary.description.getter();
    v27 = sub_10002741C(v25, v26, &v32);

    *(a1 + 1) = v27;
    sub_100005FCC(&_mh_execute_header, v28, v29, "Logging facetimesettings daily event to core analytics: %s");
    sub_100009B7C(v24);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v30 = sub_1004557AC(v20);

  sub_1000517AC(0xD000000000000020, 0x800000010056F5F0, v30);
}

uint64_t CSDAnalyticsManager.sendSpamFiltersDailyEvent(callDirectoryAppEnabled:liveLookupAppEnabled:)(void *a1, void *a2)
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  *(swift_initStackObject() + 16) = xmmword_10057D6A0;
  sub_10000A8EC();
  *(v5 + 32) = 0xD00000000000001ALL;
  *(v5 + 40) = v6;
  sub_10000A8EC();
  v7[6] = a1;
  v7[7] = 0xD00000000000001ALL;
  v7[8] = v8;
  v7[9] = a2;
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v9 = a1;
  v10 = a2;
  v11 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA5B0);
  sub_10000667C();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    sub_100005274();
    v15 = sub_10000681C();
    v23 = v15;
    *v2 = 136315138;
    sub_1000113E4();
    v16 = Dictionary.description.getter();
    v18 = sub_10002741C(v16, v17, &v23);

    *(v2 + 4) = v18;
    sub_100005FCC(&_mh_execute_header, v19, v20, "Logging spamfilters daily event to core analytics: %s");
    sub_100009B7C(v15);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v21 = sub_1004557AC(v11);

  sub_1000517AC(0xD000000000000029, 0x800000010056F540, v21);
}

void sub_10037C9DC(void *a1@<X0>, uint64_t a2@<X1>, NSNumber *a3@<X8>)
{
  v5 = [a1 subscriptions];
  if (v5)
  {
    v6 = v5;
    sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  v8.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  v9.super.super.isa = NSNumber.init(integerLiteral:)(-1).super.super.isa;
  if (!v7)
  {
    goto LABEL_30;
  }

  if (!*(a2 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider))
  {

LABEL_30:
    a3->super.super.isa = v8.super.super.isa;
    a3[1].super.super.isa = v9.super.super.isa;
    return;
  }

  v27 = a3;
  v29 = *(a2 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_analyticsManagerProvider);
  isa = v8.super.super.isa;
  v28 = v9.super.super.isa;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr);
    sub_10037DB98();
    Set.Iterator.init(_cocoa:)();
    v7 = v31;
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v13 = v35;
  }

  else
  {
    v14 = -1 << *(v7 + 32);
    v10 = v7 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);
    swift_unknownObjectRetain();
    v12 = 0;
  }

  while (v7 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006AF0(0, &unk_1006ABCB0, CTXPCContextInfo_ptr), swift_dynamicCast(), (v19 = v36) == 0))
    {
LABEL_29:
      sub_100022DDC();
      swift_unknownObjectRelease();
      a3 = v27;
      v8.super.super.isa = isa;
      v9.super.super.isa = v28;
      goto LABEL_30;
    }

LABEL_22:
    sub_1004450D4(v19);
    if (!v20)
    {
      goto LABEL_23;
    }

    if ([v19 slotID] == 1)
    {
      v21 = String._bridgeToObjectiveC()();

      v22 = [v29 hasCustomGreetingFor:v21];

      v23 = NSNumber.init(BOOLeanLiteral:)(v22).super.super.isa;
      isa = v23;
    }

    else
    {
      if ([v19 slotID] == 2)
      {
        v24 = String._bridgeToObjectiveC()();

        v25 = [v29 hasCustomGreetingFor:v24];

        v26 = NSNumber.init(BOOLeanLiteral:)(v25).super.super.isa;
        v28 = v26;
      }

      else
      {
      }

LABEL_23:
    }
  }

  v17 = v12;
  v18 = v13;
  if (v13)
  {
LABEL_18:
    v13 = (v18 - 1) & v18;
    v19 = *(*(v7 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v19)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v12 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v12 >= ((v11 + 64) >> 6))
    {
      goto LABEL_29;
    }

    v18 = *(v10 + 8 * v12);
    ++v17;
    if (v18)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_10037CDB4()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_callDirectoryManager);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10037CEDC;
  v2 = swift_continuation_init();
  v0[17] = sub_10026D814(&unk_1006A7148, &qword_1005829C0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10037D268;
  v0[13] = &unk_10062A8D0;
  v0[14] = v2;
  [v1 extensionsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10037CEDC()
{
  sub_100006810();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10037D100;
  }

  else
  {
    v3 = sub_10037CFE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10037CFE8()
{
  v1 = *(v0 + 144);
  v2 = sub_10000B6F4(v1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    v7 = [v5 state];

    v3 = v4 + 1;
  }

  while (v7 != 4);

  v8 = *(v0 + 8);

  v8(v2 != v4);
}

uint64_t sub_10037D100()
{
  sub_1000066BC();
  v1 = *(v0 + 160);
  swift_willThrow();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA5B0);
  sub_10000667C();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = sub_100005274();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve Call Directory Extensions with error: %@", v8, 0xCu);
    sub_10028CA5C(v9);
    sub_100005F64();
    sub_100006868();
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_10037D268(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100009B14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_10046A8DC(v4, v5);
  }

  else
  {
    sub_100006AF0(0, &qword_1006A7158, CXCallDirectoryExtension_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_10046A8E0(v4, v7);
  }
}

void CSDAnalyticsManager.areLiveLookupAppsEnabled()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13callservicesd19CSDAnalyticsManager_liveLookupManager);
  v2 = dispatch thunk of LiveCallerIDLookupManager.installedExtensions()();
  v3 = sub_10000B6F4(v2);
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
LABEL_10:

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = [v6 isEnabled];

    v4 = v5 + 1;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t CSDAnalyticsManager.defaultCallingCategory()()
{
  v0 = defaultAppRelayTelephonySetting();
  if (!v0)
  {
    v2 = defaultCallingAppLSBundleIdentifier();
    if (v2)
    {
      v3 = v2;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v4._countAndFlagsBits = 0x6C7070612E6D6F63;
      v4._object = 0xE900000000000065;
      LOBYTE(v3) = String.hasPrefix(_:)(v4);

      return (v3 & 1) == 0;
    }

    if (qword_1006A0B10 != -1)
    {
      sub_1000085AC();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA5B0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v1 = 2;
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to retrieve LS default calling bundle identifier", v12, 2u);

      return v1;
    }

    return 2;
  }

  if (v0 == 1)
  {
    return 3;
  }

  if (v0 != 2)
  {
    if (qword_1006A0B10 != -1)
    {
      sub_1000085AC();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA5B0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unrecognized default value passed into defaultAppRelayTelephonySetting, reporting error", v8, 2u);

      return 2;
    }

    return 2;
  }

  return 0;
}

uint64_t CSDAnalyticsManager.sendDefaultCallingWeeklyEvent()()
{
  sub_10026D814(&qword_1006A3490, &qword_1005880C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  sub_10000A8EC();
  *(v2 + 32) = 0xD000000000000018;
  *(v2 + 40) = v3;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:qword_1005829D8[CSDAnalyticsManager.defaultCallingCategory()()]];
  sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
  sub_1000113E4();
  v4 = Dictionary.init(dictionaryLiteral:)();
  if (qword_1006A0B10 != -1)
  {
    sub_1000085AC();
  }

  v5 = type metadata accessor for Logger();
  sub_10000AF9C(v5, qword_1006BA5B0);
  sub_10000667C();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    sub_100005274();
    v8 = sub_10000681C();
    v16 = v8;
    *v0 = 136315138;
    sub_1000113E4();
    v9 = Dictionary.description.getter();
    v11 = sub_10002741C(v9, v10, &v16);

    *(v0 + 4) = v11;
    sub_100005FCC(&_mh_execute_header, v12, v13, "Logging default calling weekly event to core analytics: %s");
    sub_100009B7C(v8);
    sub_100005F64();
    sub_100006868();
  }

  type metadata accessor for AnalyticsReporter();
  v14 = sub_1004557AC(v4);

  sub_1000517AC(0xD000000000000031, 0x800000010056F4C0, v14);
}

id CSDAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CSDAnalyticsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10037D8C8()
{
  sub_1000066BC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000A8CC(v6);

  return sub_10037BEC8(v7, v8, v9, v10, v11);
}

uint64_t sub_10037D96C()
{
  sub_100006810();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10037DA5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10037DAA4()
{
  sub_1000066BC();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = sub_10000A8CC(v6);

  return sub_10037C500(v7, v8, v9, v10, v11);
}