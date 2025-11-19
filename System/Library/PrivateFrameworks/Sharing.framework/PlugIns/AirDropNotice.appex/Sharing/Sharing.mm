uint64_t sub_100001828()
{
  v0 = sub_100008AF8();
  sub_100007454(v0, qword_100010818);
  sub_100006D64(v0, qword_100010818);
  return sub_100008AE8();
}

Swift::Int sub_1000018C4()
{
  v1 = *v0;
  sub_100008CA8();
  sub_100008CB8(v1);
  return sub_100008CC8();
}

Swift::Int sub_100001938()
{
  v1 = *v0;
  sub_100008CA8();
  sub_100008CB8(v1);
  return sub_100008CC8();
}

uint64_t sub_10000197C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

id sub_1000019F0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100007408(&qword_100010E78, &unk_100009A08);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v11 - v5;
  *&v0[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection] = 0;
  *&v0[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server] = 0;
  v7 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController__airDropSessionsByID;
  v13 = sub_100008688(&_swiftEmptyArrayStorage);
  sub_100007408(&qword_100010890, qword_100009420);
  sub_100008B18();
  (*(v3 + 32))(&v0[v7], v6, v2);
  v8 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_unassociatedDismissalHandler;
  *&v0[v8] = sub_10000878C(&_swiftEmptyArrayStorage);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, "init");
  sub_100001B6C();

  return v9;
}

void sub_100001B6C()
{
  v1 = v0;
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = sub_100008AF8();
  sub_100006D64(v2, qword_100010818);
  v3 = sub_100008AD8();
  v4 = sub_100008BF8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Activating connection", v5, 2u);
  }

  v6 = sub_100008B88();
  v45 = [objc_opt_self() interfaceWithIdentifier:v6];

  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropNoticeServer];
  [v45 setServer:v8];

  v9 = [v7 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropNoticeClient];
  [v45 setClient:v9];

  [v45 setClientMessagingExpectation:1];
  v10 = sub_100008B88();
  v11 = sub_100008B88();
  v12 = [objc_opt_self() endpointForMachName:v10 service:v11 instance:0];

  if (v12)
  {
    v13 = v12;
    v14 = sub_100008AD8();
    v15 = sub_100008BD8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "WolfAirDropNoticeSessionsController: endpoint created!", v16, 2u);
    }

    v17 = [objc_opt_self() connectionWithEndpoint:v13];
    if (v17)
    {
      v18 = v17;
      aBlock[6] = &OBJC_PROTOCOL___BSServiceConnectionClient;
      v19 = swift_dynamicCastObjCProtocolConditional();
      if (v19)
      {
        v20 = v19;
        v21 = v18;
        v22 = sub_100008AD8();
        v23 = sub_100008BD8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "WolfAirDropNoticeSessionsController: connection created", v24, 2u);
        }

        v25 = swift_allocObject();
        *(v25 + 16) = v45;
        *(v25 + 24) = v1;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1000088E8;
        *(v26 + 24) = v25;
        aBlock[4] = sub_100008900;
        aBlock[5] = v26;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100002D88;
        aBlock[3] = &unk_10000C708;
        v27 = _Block_copy(aBlock);
        v28 = v21;
        v46 = v45;
        v29 = v1;

        [v20 configureConnection:v27];

        _Block_release(v27);
        LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

        if (v27)
        {
          __break(1u);
        }

        else
        {
          v30 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection;
          if (*&v29[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection])
          {
            v31 = sub_100008AD8();
            v32 = sub_100008BE8();
            if (os_log_type_enabled(v31, v32))
            {
              v33 = swift_slowAlloc();
              *v33 = 0;
              _os_log_impl(&_mh_execute_header, v31, v32, "WolfAirDropNoticeSessionsController: Previous connection present while trying to activate. Ending previous then activating new connection", v33, 2u);
            }

            sub_100002AA4();
            v34 = *&v29[v30];
          }

          else
          {
            v34 = 0;
          }

          *&v29[v30] = v20;
          v41 = v28;

          v42 = sub_100008AD8();
          v43 = sub_100008BF8();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&_mh_execute_header, v42, v43, "WolfAirDropNoticeSessionsController: Activating Session", v44, 2u);
          }

          [v20 activate];
        }

        return;
      }
    }

    else
    {
    }

    v38 = sub_100008AD8();
    v39 = sub_100008BE8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Could not create a connection with the AirDropNotice endpoint", v40, 2u);
    }
  }

  else
  {
    v35 = sub_100008AD8();
    v36 = sub_100008BE8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Could not find endpoint for AirDropNotice. It may not be loaded.", v37, 2u);
    }
  }
}

uint64_t sub_1000022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_100007F78(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_1000074F0(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_1000083EC();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_100007DC8(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

void sub_1000023D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v6 = sub_100008AF8();
  sub_100006D64(v6, qword_100010818);
  v7 = sub_100008AD8();
  v8 = sub_100008BD8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "WolfAirDropNoticeSessionsController: configuring session...", v9, 2u);
  }

  v10 = sub_100008B88();
  [a1 setName:v10];

  v11 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v11];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = sub_100008978;
  v23 = v12;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C758;
  v13 = _Block_copy(&v18);

  [a1 setActivationHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v22 = sub_1000089B8;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C7A8;
  v15 = _Block_copy(&v18);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
  v22 = sub_100002CA0;
  v23 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100002930;
  v21 = &unk_10000C7D0;
  v16 = _Block_copy(&v18);
  [a1 setInterruptionHandler:v16];
  _Block_release(v16);
  sub_1000089C0(0, &qword_100010EE0, OS_dispatch_queue_ptr);
  v17 = sub_100008C08();
  [a1 setTargetQueue:v17];
}

uint64_t sub_100002764(void *a1)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v2 = sub_100008AF8();
  sub_100006D64(v2, qword_100010818);
  v3 = sub_100008AD8();
  v4 = sub_100008BD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "WolfAirDropNoticeSessionsController connection activated!", v5, 2u);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    if ([a1 remoteTarget])
    {
      sub_100008C18();
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v14[0] = v12;
    v14[1] = v13;
    if (*(&v13 + 1))
    {
      sub_100007408(&unk_100010EF0, &unk_100009A20);
      v8 = swift_dynamicCast();
      v9 = v11;
      if (!v8)
      {
        v9 = 0;
      }
    }

    else
    {
      sub_100008A08(v14);
      v9 = 0;
    }

    v10 = *&v7[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server];
    *&v7[OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server] = v9;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100002930(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100002998()
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v0 = sub_100008AF8();
  sub_100006D64(v0, qword_100010818);
  v1 = sub_100008AD8();
  v2 = sub_100008BF8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "WolfAirDropNoticeSessionsController connection invalidated with endpoint!", v3, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100002AA4();
}

void sub_100002AA4()
{
  v1 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection;
  v2 = *(v0 + OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_connection);
  if (v2)
  {
    v3 = v0;
    v4 = qword_100010810;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_100008AF8();
    sub_100006D64(v6, qword_100010818);
    v7 = sub_100008AD8();
    v8 = sub_100008BF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "WolfAirDropNoticeSessionsController: Invalidating connection", v9, 2u);
    }

    [v5 invalidate];
    v10 = *(v3 + OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server);
    *(v3 + OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_server) = 0;
    swift_unknownObjectRelease();
    v11 = *(v3 + v1);
    *(v3 + v1) = 0;
  }

  else
  {
    if (qword_100010810 != -1)
    {
      swift_once();
    }

    v12 = sub_100008AF8();
    sub_100006D64(v12, qword_100010818);
    oslog = sub_100008AD8();
    v13 = sub_100008BD8();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "XPC Connection not available, skipping end.", v14, 2u);
    }

    v11 = oslog;
  }
}

void sub_100002CA0()
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v0 = sub_100008AF8();
  sub_100006D64(v0, qword_100010818);
  oslog = sub_100008AD8();
  v1 = sub_100008BF8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Client received interruption", v2, 2u);
  }
}

uint64_t sub_100002D88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

id sub_100002DDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v3 = sub_100008AF8();
  sub_100006D64(v3, qword_100010818);
  v4 = sub_100008AD8();
  v5 = sub_100008BF8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "WolfAirDropNoticeSessionsController deinit", v6, 2u);
  }

  sub_100002AA4();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_100002FE8()
{
  sub_100006308(319, &qword_100010888, &qword_100010890, qword_100009420);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000030A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000030F0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_100008B08();
  *a1 = result;
  return result;
}

uint64_t sub_100003130(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, char *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = v14;
  v164 = a7;
  v167 = a4;
  v168 = a6;
  v162 = a3;
  v170 = a1;
  v159 = sub_100007408(&qword_100010E60, &qword_1000099A8);
  v158 = *(v159 - 8);
  v19 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v157 = &v145 - v20;
  v156 = sub_100007408(&qword_100010E58, &qword_1000099A0);
  v155 = *(v156 - 8);
  v21 = (*(v155 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v154 = &v145 - v22;
  v166 = sub_100007408(&qword_100010E50, &qword_100009998);
  v153 = *(v166 - 8);
  v23 = (*(v153 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v152 = &v145 - v24;
  *&v165 = sub_100007408(&qword_100010E40, &qword_100009988);
  v163 = *(v165 - 8);
  v25 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v151 = &v145 - v26;
  v150 = sub_100007408(&qword_100010E30, &qword_100009978);
  v149 = *(v150 - 8);
  v27 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v148 = &v145 - v28;
  v147 = sub_100008AC8();
  v29 = *(v147 - 1);
  v30 = *(v29 + 64);
  __chkstk_darwin();
  v32 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v33 = sub_100008AF8();
  v34 = sub_100006D64(v33, qword_100010818);

  v169 = v34;
  v35 = sub_100008AD8();
  v36 = sub_100008BF8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = a5;
    v39 = v15;
    v40 = swift_slowAlloc();
    v171 = v40;
    *v37 = 136315138;
    *(v37 + 4) = sub_100006DB8(v170, a2, &v171);
    _os_log_impl(&_mh_execute_header, v35, v36, "WolfAirDropNoticeSessionsController: Start session with identifier: %s", v37, 0xCu);
    sub_100007360(v40);
    v15 = v39;
    a5 = v38;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v41 = *(v171 + 16);
  v160 = a8;
  if (v41)
  {
    sub_1000074F0(v170, a2);
    v43 = v42;

    if (v43)
    {

      v44 = sub_100008AD8();
      v45 = sub_100008BE8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = a5;
        v48 = v15;
        v49 = swift_slowAlloc();
        v171 = v49;
        *v46 = 136315138;
        v50 = v170;
        *(v46 + 4) = sub_100006DB8(v170, a2, &v171);
        _os_log_impl(&_mh_execute_header, v44, v45, "Tried to start a session with an existing transfer: %s. Ending existing session, and starting new one", v46, 0xCu);
        sub_100007360(v49);
        v15 = v48;
        a5 = v47;
      }

      else
      {

        v50 = v170;
      }

      sub_100004564(v50, a2);
    }
  }

  else
  {
  }

  v167 = [v167 unsignedIntegerValue];

  LODWORD(v162) = [v162 BOOLValue];

  v161 = [v168 BOOLValue];
  v146 = [a5 integerValue];
  v51 = type metadata accessor for WolfAirDropNoticeSession(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v54 + 16) = 0;
  *(v54 + 24) = 0;
  *(v54 + 48) = 0;
  *(v54 + 56) = 0;
  v168 = v15;
  sub_100008AB8();
  v55 = sub_100008AA8();
  v57 = v56;
  (*(v29 + 8))(v32, v147);
  *(v54 + 72) = v55;
  *(v54 + 80) = v57;
  v58 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferAccepted;
  LOBYTE(v171) = 0;
  v59 = v148;
  sub_100008B18();
  (*(v149 + 32))(v54 + v58, v59, v150);
  v60 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__localizedTransferDescription;
  v171 = 0;
  v172 = 0;
  v148 = sub_100007408(&qword_100010A58, &qword_1000094F8);
  v61 = v151;
  sub_100008B18();
  v147 = *(v163 + 32);
  (v147)(v54 + v60, v61, v165);
  v62 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v150 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v171 = 1;
  type metadata accessor for SFAirDropTransferState(0);
  v149 = a2;
  v163 = v63;
  v64 = v152;
  sub_100008B18();
  v65 = v153;
  (*(v153 + 32))(v54 + v62, v64, v166);
  v66 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__previewImage;
  v171 = 0;
  sub_100007408(&qword_100010A80, &qword_100009500);
  v67 = v154;
  sub_100008B18();
  v68 = *(v155 + 32);
  v69 = v156;
  v68(v54 + v66, v67, v156);
  v70 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__iconImage;
  v171 = 0;
  sub_100008B18();
  v71 = v54 + v70;
  v72 = v160;
  v68(v71, v67, v69);
  v73 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__contactIdentifier;
  v171 = 0;
  v172 = 0;
  sub_100008B18();
  (v147)(v54 + v73, v61, v165);
  v74 = v168;
  v75 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__state;
  LOBYTE(v171) = 0;
  v76 = v157;
  sub_100008B18();
  (*(v158 + 32))(v54 + v75, v76, v159);
  v77 = v170;
  v78 = v149;
  *(v54 + 32) = v170;
  *(v54 + 40) = v78;
  *(v54 + 64) = v162;
  v79 = *(v54 + 56);
  *(v54 + 48) = v164;
  *(v54 + 56) = v72;
  v80 = v78;

  v81 = v150;
  swift_beginAccess();
  (*(v65 + 8))(v54 + v81, v166);
  v82 = v167;
  v173 = v167;
  sub_100008B18();
  swift_endAccess();
  *(v54 + 65) = v161;
  swift_beginAccess();
  v173 = 0;
  sub_100008B18();
  swift_endAccess();
  swift_beginAccess();
  v83 = v146;
  v173 = v146;
  sub_100008B18();
  swift_endAccess();
  *(v54 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession_delegate + 8) = &off_10000C670;
  swift_unknownObjectUnownedInit();
  v84 = [objc_opt_self() progressWithTotalUnitCount:v83];
  swift_beginAccess();
  v173 = v84;
  sub_1000089C0(0, &qword_100010A68, NSProgress_ptr);
  sub_100008B18();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v85 = v171;
  [v171 setCompletedUnitCount:0];

  if (v82 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v171) = 1;

    sub_100008B48();
  }

  v86 = SFAirDropTransferStateToString();
  if (v86)
  {
    v87 = v86;
    v88 = sub_100008B98();
    v90 = v89;
  }

  else
  {
    v90 = 0xE90000000000003ELL;
    v88 = 0x6E776F6E6B6E553CLL;
  }

  v91 = v80;
  v166 = a10;

  v92 = sub_100008AD8();
  v93 = sub_100008BF8();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *&v165 = v88;
    v95 = v94;
    v171 = swift_slowAlloc();
    *v95 = 136316418;
    v96 = sub_100006DB8(v77, v91, &v171);

    *(v95 + 4) = v96;
    *(v95 + 12) = 2080;
    if (v72)
    {
      v97 = v164;
    }

    else
    {
      v97 = 7104878;
    }

    if (v72)
    {
      v98 = v72;
    }

    else
    {
      v98 = 0xE300000000000000;
    }

    v99 = sub_100006DB8(v97, v98, &v171);

    *(v95 + 14) = v99;
    *(v95 + 22) = 1024;
    *(v95 + 24) = v162;
    *(v95 + 28) = 1024;
    *(v95 + 30) = v161;
    *(v95 + 34) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100008B38();

    v77 = v170;

    v100 = v173;
    [v173 fractionCompleted];
    v102 = v101;

    *(v95 + 36) = v102;
    *(v95 + 44) = 2080;
    v103 = sub_100006DB8(v165, v90, &v171);

    *(v95 + 46) = v103;
    _os_log_impl(&_mh_execute_header, v92, v93, "Transfer session created for transfer %s with senderName: %s, isFromMe: %{BOOL}d, isDestinationDownloads: %{BOOL}d, completed: %f, transferState: %s", v95, 0x36u);
    swift_arrayDestroy();
    v74 = v168;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v104 = sub_100008B28();
  v106 = v105;
  v107 = *v105;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v106;
  *v106 = 0x8000000000000000;
  sub_100008100(v54, v77, v91, isUniquelyReferenced_nonNull_native);

  *v106 = v173;
  v104(&v171, 0);

  v109 = OBJC_IVAR____TtC13AirDropNotice35WolfAirDropNoticeSessionsController_unassociatedDismissalHandler;
  swift_beginAccess();
  v110 = *&v74[v109];
  if (*(v110 + 16) && (v111 = sub_1000074F0(v77, v91), (v112 & 1) != 0))
  {
    v113 = v111;
    v114 = *(v110 + 56);
    v115 = swift_allocObject();
    v165 = *(v114 + 16 * v113);
    *(v115 + 16) = v165;
    swift_endAccess();
    v116 = *(v54 + 16);
    v117 = *(v54 + 24);
    *(v54 + 16) = sub_100008660;
    *(v54 + 24) = v115;

    sub_1000074B8(v116);
    swift_beginAccess();

    sub_1000022D0(0, 0, v77, v91);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v118 = v166;
  if (v166)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v171 = a9;
    v172 = v118;

    sub_100008B48();
    v119 = v118;
  }

  else
  {
    v119 = 0xEE006E6F69747069;
  }

  v120 = a12;

  v121 = sub_100008AD8();
  v122 = sub_100008BF8();

  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    v170 = a12;
    v124 = v118;
    v125 = v123;
    v171 = swift_slowAlloc();
    *v125 = 136315394;
    v173 = v167;
    v126 = sub_100008BA8();
    v128 = sub_100006DB8(v126, v127, &v171);

    *(v125 + 4) = v128;
    *(v125 + 12) = 2080;
    if (v124)
    {
      v129 = a9;
    }

    else
    {
      v129 = 0x7263736564206F6ELL;
    }

    v120 = v170;

    v130 = sub_100006DB8(v129, v119, &v171);

    *(v125 + 14) = v130;
    _os_log_impl(&_mh_execute_header, v121, v122, "Transfer started: state:%s description: %s", v125, 0x16u);
    swift_arrayDestroy();
  }

  if (v120 >> 60 != 15)
  {
    v131 = objc_allocWithZone(UIImage);
    sub_1000085D4(a11, v120);
    sub_1000085D4(a11, v120);
    isa = sub_100008A88().super.isa;
    v133 = [v131 initWithData:isa];

    sub_10000856C(a11, v120);
    v134 = sub_100008AD8();
    v135 = sub_100008BF8();
    v136 = os_log_type_enabled(v134, v135);
    if (v133)
    {
      if (v136)
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        _os_log_impl(&_mh_execute_header, v134, v135, "Preview image found and decoded", v137, 2u);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v171 = v133;

      v138 = v133;
      sub_100008B48();
      sub_10000856C(a11, v120);
    }

    else
    {
      if (v136)
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&_mh_execute_header, v134, v135, "Could not decode preview image data", v139, 2u);
      }

      sub_10000856C(a11, v120);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v171 = a13;
  v172 = a14;

  sub_100008B48();
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v141 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v142 = sub_100008B88();
  v143 = [objc_opt_self() imageNamed:v142 inBundle:v141 withConfiguration:0];

  swift_getKeyPath();
  swift_getKeyPath();
  v171 = v143;
  return sub_100008B48();
}

void sub_100004564(uint64_t a1, unint64_t a2)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v4 = sub_100008AF8();
  sub_100006D64(v4, qword_100010818);

  v5 = sub_100008AD8();
  v6 = sub_100008BF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100006DB8(a1, a2, v21);
    _os_log_impl(&_mh_execute_header, v5, v6, "WolfAirDropNoticeSessionsController: Ending session with transfer identifier: %s.", v7, 0xCu);
    sub_100007360(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v9 = v21[0];
  if (*(v21[0] + 16) && (v10 = sub_1000074F0(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);

    sub_100002AA4();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = *(v12 + 24);

      v13(v15);
      sub_1000074B8(v13);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v16 = sub_100008B28();
    sub_100007620(a1, a2);

    v16(v21, 0);
  }

  else
  {

    v17 = sub_100008AD8();
    v18 = sub_100008BE8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100006DB8(a1, a2, v21);
      _os_log_impl(&_mh_execute_header, v17, v18, "AirDrop transfer session not active for ID: %s, unable to end transfer", v19, 0xCu);
      sub_100007360(v20);
    }
  }
}

void sub_100004A78(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v13 = sub_100008AF8();
  sub_100006D64(v13, qword_100010818);

  v14 = sub_100008AD8();
  v15 = sub_100008BF8();

  if (os_log_type_enabled(v14, v15))
  {
    v42 = a5;
    v16 = swift_slowAlloc();
    v17 = a8;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v16 = 136315138;
    *(v16 + 4) = sub_100006DB8(a1, a2, &v46);
    _os_log_impl(&_mh_execute_header, v14, v15, "WolfAirDropNoticeSessionsController: Updating transfer with identifier %s", v16, 0xCu);
    sub_100007360(v18);
    a8 = v17;

    a5 = v42;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v19 = v46;
  if (*(v46 + 16) && (v20 = sub_1000074F0(a1, a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = [a3 unsignedIntegerValue];
    sub_10000543C(v23, [a4 BOOLValue], objc_msgSend(a5, "integerValue"), objc_msgSend(a6, "integerValue"), a7, a8);

    v24 = sub_100008AD8();
    v25 = sub_100008BF8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v26 = 136315394;
      type metadata accessor for SFAirDropTransferState(0);
      v27 = sub_100008BA8();
      v29 = sub_100006DB8(v27, v28, &v46);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2080;
      if (a8)
      {
        v30 = a7;
      }

      else
      {
        v30 = 0x7263736564206F6ELL;
      }

      if (a8)
      {
        v31 = a8;
      }

      else
      {
        v31 = 0xEE006E6F69747069;
      }

      v32 = sub_100006DB8(v30, v31, &v46);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Transfer updated: state:%s description: %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    if (v23 == 3)
    {
      v33 = sub_100008AD8();
      v34 = sub_100008BD8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "Transfer was cancelled by sender. Ending our session locally.", v35, 2u);
      }

      v36 = *(v22 + 32);
      v37 = *(v22 + 40);

      sub_100004564(v36, v37);
    }
  }

  else
  {

    v38 = sub_100008AD8();
    v39 = sub_100008BE8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_100006DB8(a1, a2, &v46);
      _os_log_impl(&_mh_execute_header, v38, v39, "AirDrop transfer session not active for ID: %s, returning", v40, 0xCu);
      sub_100007360(v41);
    }
  }
}

uint64_t sub_10000511C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_1000051B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_100005238()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_1000052AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_10000535C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

uint64_t sub_1000053C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  return v1;
}

void sub_10000543C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = SFAirDropTransferStateToString();
  if (v11)
  {
    v12 = v11;
    v13 = sub_100008B98();
    v15 = v14;
  }

  else
  {
    v15 = 0xE90000000000003ELL;
    v13 = 0x6E776F6E6B6E553CLL;
  }

  if (qword_100010810 != -1)
  {
    swift_once();
  }

  v16 = sub_100008AF8();
  sub_100006D64(v16, qword_100010818);

  v17 = sub_100008AD8();
  v18 = sub_100008BF8();

  v32 = a6;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = a3;
    v21 = a2;
    v22 = a4;
    v23 = swift_slowAlloc();
    v33 = v23;
    *v19 = 136315138;
    v24 = sub_100006DB8(v13, v15, &v33);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "Updating: Transfer description: %s", v19, 0xCu);
    sub_100007360(v23);
    a4 = v22;
    a2 = v21;
    a3 = v20;
    a1 = v30;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v33 != a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = a1;

    sub_100008B48();
    if (a1 == 2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100008B38();

      if ((v33 & 1) == 0)
      {
        sub_100008B78();
        sub_100008B68();
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v33 != (a2 & 1))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v33) = a2 & 1;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v25 = v33;
  if (v33 != a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = a3;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  if (v33 == a4)
  {
    if (v25 == a3)
    {
      v26 = v32;
      if (!v32)
      {
        return;
      }

      goto LABEL_23;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = a4;

    sub_100008B48();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v27 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  [v27 setCompletedUnitCount:v33];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  v28 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  [v28 setTotalUnitCount:v33];

  v26 = v32;
  if (!v32)
  {
    return;
  }

LABEL_23:
  if ((a1 - 1) > 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_100008B38();

  if (!v34)
  {
    goto LABEL_30;
  }

  if (v33 == a5 && v34 == v26)
  {

    return;
  }

  v29 = sub_100008C88();

  if (v29)
  {
  }

  else
  {
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = a5;
    v34 = v26;

    sub_100008B48();
  }
}

uint64_t sub_100005B58()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t *sub_100005BCC()
{
  v1 = v0[3];
  sub_1000074B8(v0[2]);
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferAccepted;
  v6 = sub_100007408(&qword_100010E30, &qword_100009978);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__numTotalItems;
  v8 = sub_100007408(&qword_100010E38, &qword_100009980);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__numCompletedItems, v8);
  v10 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__localizedTransferDescription;
  v11 = sub_100007408(&qword_100010E40, &qword_100009988);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__progress;
  v14 = sub_100007408(&qword_100010E48, &qword_100009990);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__transferState;
  v16 = sub_100007408(&qword_100010E50, &qword_100009998);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__previewImage;
  v18 = sub_100007408(&qword_100010E58, &qword_1000099A0);
  v19 = *(*(v18 - 8) + 8);
  v19(v0 + v17, v18);
  v19(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__iconImage, v18);
  v12(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__contactIdentifier, v11);
  v20 = OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession__state;
  v21 = sub_100007408(&qword_100010E60, &qword_1000099A8);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  sub_1000074C8(v0 + OBJC_IVAR____TtC13AirDropNotice24WolfAirDropNoticeSession_delegate);
  return v0;
}

uint64_t sub_100005EA8()
{
  sub_100005BCC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100005F28(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100005F60()
{
  sub_10000635C(319, &qword_100010A40, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v15 = *(v0 - 8) + 64;
    sub_10000635C(319, &qword_100010A48, &type metadata for Int, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v16 = *(v2 - 8) + 64;
      sub_100006308(319, &qword_100010A50, &qword_100010A58, &qword_1000094F8);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_100006220();
        if (v8 <= 0x3F)
        {
          v17 = *(v7 - 8) + 64;
          sub_100006288();
          if (v10 <= 0x3F)
          {
            v18 = *(v9 - 8) + 64;
            sub_100006308(319, &qword_100010A78, &qword_100010A80, &qword_100009500);
            if (v12 <= 0x3F)
            {
              v19 = *(v11 - 8) + 64;
              sub_10000635C(319, &unk_100010A88, &type metadata for NoticeState, &type metadata accessor for Published);
              if (v14 <= 0x3F)
              {
                v20 = *(v13 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100006220()
{
  if (!qword_100010A60)
  {
    sub_1000089C0(255, &qword_100010A68, NSProgress_ptr);
    v0 = sub_100008B58();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A60);
    }
  }
}

void sub_100006288()
{
  if (!qword_100010A70)
  {
    type metadata accessor for SFAirDropTransferState(255);
    v0 = sub_100008B58();
    if (!v1)
    {
      atomic_store(v0, &qword_100010A70);
    }
  }
}

void sub_100006308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000030A8(a3, a4);
    v5 = sub_100008B58();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000635C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NoticeState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NoticeState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100006524@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WolfAirDropNoticeSession(0);
  result = sub_100008B08();
  *a1 = result;
  return result;
}

uint64_t sub_100006564@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v5;
  return result;
}

uint64_t sub_1000065E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_100008B48();
}

uint64_t sub_10000665C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v5;
  return result;
}

uint64_t sub_1000066DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_10000678C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v5;
  return result;
}

uint64_t sub_10000681C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_10000688C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v5;
  return result;
}

uint64_t sub_10000690C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_100008B48();
}

uint64_t sub_1000069C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  *a2 = v5;
  return result;
}

uint64_t sub_100006A50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

uint64_t sub_100006B38(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_100008B48();
}

double sub_100006BC0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100008B38();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100006C50(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100008B48();
}

void *sub_100006CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_100006D04()
{
  result = qword_100010E20;
  if (!qword_100010E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010E20);
  }

  return result;
}

uint64_t sub_100006D64(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006DB8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006E84(v11, 0, 0, 1, a1, a2);
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
    sub_1000073AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007360(v11);
  return v7;
}

unint64_t sub_100006E84(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006F90(a5, a6);
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
    result = sub_100008C48();
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

char *sub_100006F90(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006FDC(a1, a2);
  sub_10000710C(&off_10000C598);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006FDC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000071F8(v5, 0);
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

  result = sub_100008C48();
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
        v10 = sub_100008BC8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000071F8(v10, 0);
        result = sub_100008C38();
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

uint64_t sub_10000710C(uint64_t result)
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

  result = sub_10000726C(result, v12, 1, v3);
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

void *sub_1000071F8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100007408(&qword_100010E28, &qword_100009898);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000726C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100007408(&qword_100010E28, &qword_100009898);
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

uint64_t sub_100007360(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000073AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007408(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100007454(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000074B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000074F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100008CA8();
  sub_100008BB8();
  v6 = sub_100008CC8();

  return sub_100007568(a1, a2, v6);
}

unint64_t sub_100007568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100008C88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100007620(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000074F0(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10000827C();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100007C18(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1000076B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007408(&qword_100010E68, &qword_1000099F8);
  v38 = a2;
  result = sub_100008C68();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_100008CA8();
      sub_100008BB8();
      result = sub_100008CC8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100007960(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007408(&qword_100010E70, &qword_100009A00);
  v36 = a2;
  result = sub_100008C68();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_100008CA8();
      sub_100008BB8();
      result = sub_100008CC8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100007C18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100008C28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100008CA8();

      sub_100008BB8();
      v13 = sub_100008CC8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100007DC8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100008C28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100008CA8();

      sub_100008BB8();
      v13 = sub_100008CC8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100007F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000074F0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100007960(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000074F0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_100008C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000083EC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_100008100(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000074F0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000076B8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000074F0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_100008C98();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000827C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_10000827C()
{
  v1 = v0;
  sub_100007408(&qword_100010E68, &qword_1000099F8);
  v2 = *v0;
  v3 = sub_100008C58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000083EC()
{
  v1 = v0;
  sub_100007408(&qword_100010E70, &qword_100009A00);
  v2 = *v0;
  v3 = sub_100008C58();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10000856C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008580(a1, a2);
  }

  return a1;
}

uint64_t sub_100008580(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000085D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100008628()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008660()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_100008688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007408(&qword_100010E68, &qword_1000099F8);
    v3 = sub_100008C78();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000074F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10000878C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007408(&qword_100010E70, &qword_100009A00);
    v3 = sub_100008C78();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_1000074F0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_1000088A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100008928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008940()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008980()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008A08(uint64_t a1)
{
  v2 = sub_100007408(&qword_100010EE8, &qword_100009A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}