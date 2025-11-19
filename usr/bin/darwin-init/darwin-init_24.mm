uint64_t sub_1001AA578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 84) = v16;
  *(v8 + 83) = a8;
  *(v8 + 82) = a7;
  *(v8 + 160) = a6;
  *(v8 + 168) = v15;
  *(v8 + 81) = a5;
  *(v8 + 144) = a3;
  *(v8 + 152) = a4;
  *(v8 + 128) = a1;
  *(v8 + 136) = a2;
  v9 = type metadata accessor for ContinuousClock.Instant();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1001AA788, 0, 0);
}

uint64_t sub_1001AA788()
{
  v53 = v0;
  if (*(v0 + 82) == 1)
  {
    if (qword_1004A9FA8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if ((static Time.isSynchronized & 1) == 0)
    {
      if (qword_1004A9E10 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_1000270B4(v1, static Network.logger);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&_mh_execute_header, v2, v3, "Time is not synced before making network request, continuing", v4, 2u);
      }
    }
  }

  UUID.init()();
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 232);
  v12 = *(v0 + 128);
  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, static Network.logger);
  (*(v8 + 16))(v5, v6, v7);
  (*(v10 + 16))(v9, v12, v11);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 264);
  v18 = *(v0 + 272);
  v19 = *(v0 + 248);
  v20 = *(v0 + 256);
  v21 = *(v0 + 232);
  v22 = *(v0 + 240);
  if (v16)
  {
    v51 = v15;
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v23 = 136315394;
    sub_1001B1D90(&qword_1004AA848, &type metadata accessor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v21;
    log = v14;
    v26 = v25;
    v27 = *(v17 + 8);
    v27(v18, v20);
    v28 = sub_1000026C0(v24, v26, &v52);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = URLRequest.logDescription.getter();
    v31 = v30;
    (*(v22 + 8))(v19, v49);
    v32 = sub_1000026C0(v29, v31, &v52);

    *(v23 + 14) = v32;
    _os_log_impl(&_mh_execute_header, log, v51, "Performing HTTP request %s %s", v23, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v22 + 8))(v19, v21);
    v27 = *(v17 + 8);
    v27(v18, v20);
  }

  *(v0 + 288) = v27;
  if (*(v0 + 83) == 1)
  {
    if (qword_1004A9E20 != -1)
    {
      swift_once();
    }

    v33 = qword_1004AAE20;
    v34 = qword_1004AAE20;
  }

  else
  {
    v33 = 0;
  }

  *(v0 + 296) = v33;
  v35 = *(v0 + 81);
  v36 = type metadata accessor for Network.DataDelegate();
  v37 = objc_allocWithZone(v36);
  v38 = v33;
  v39 = 0.0;
  if ((v35 & 1) == 0)
  {
    v40 = Duration.components.getter();
    Duration.components.getter();
    v39 = v41 / 1.0e18 + v40;
  }

  v42 = *(v0 + 81);
  v43 = &v37[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_timeout];
  *v43 = v39;
  *(v43 + 8) = v42 & 1;
  *&v37[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_cred] = v33;
  *(v0 + 88) = v37;
  *(v0 + 96) = v36;
  v44 = objc_msgSendSuper2((v0 + 88), "init");
  *(v0 + 304) = v44;
  *(v0 + 312) = 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
    v44 = *(v0 + 304);
  }

  swift_beginAccess();
  v45 = static Network.urlSession;
  *(v0 + 320) = static Network.urlSession;
  v45;
  v46 = swift_task_alloc();
  *(v0 + 328) = v46;
  *v46 = v0;
  v46[1] = sub_1001AAD30;
  v47 = *(v0 + 128);

  return NSURLSession.data(for:delegate:)(v47, v44);
}

uint64_t sub_1001AAD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 336) = a1;
  *(v5 + 344) = a2;
  *(v5 + 352) = a3;
  *(v5 + 360) = v3;

  if (v3)
  {
    v6 = sub_1001AB588;
  }

  else
  {

    v6 = sub_1001AAE50;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001AAE50()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 352);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v6 = [v3 statusCode];
    v7 = v6;
    if (v5 == 416)
    {
      v8 = *(v0 + 344);
      v9 = *(v0 + 352);
      v10 = *(v0 + 336);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v12 = v7;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0x80;
      swift_willThrow();

      v13 = v10;
      v14 = v8;
      goto LABEL_9;
    }

    if ((v6 - 300) < 0xFFFFFFFFFFFFFF9CLL)
    {
      goto LABEL_7;
    }

    if (*(v0 + 84))
    {
LABEL_18:
      v32 = *(v0 + 352);
      v33 = *(v0 + 296);
      v34 = *(v0 + 280);
      v35 = *(v0 + 288);
      v36 = *(v0 + 256);

      v35(v34, v36);

      v37 = *(v0 + 8);
      v38 = *(v0 + 336);
      v39 = *(v0 + 344);

      return v37(v38, v39, v3);
    }

    if ([v3 statusCode] != 206)
    {
LABEL_7:
      v15 = *(v0 + 344);
      v18 = *(v0 + 352);
      v16 = *(v0 + 336);
      v19 = [v3 statusCode];
      sub_1001AEF18();
      v11 = swift_allocError();
      *v20 = v19;
      *(v20 + 8) = 0;
      *(v20 + 16) = 32;
      swift_willThrow();

      goto LABEL_8;
    }

    v40 = String._bridgeToObjectiveC()();
    v41 = [v3 valueForHTTPHeaderField:v40];

    if (!v41)
    {
      v15 = *(v0 + 344);
      v2 = *(v0 + 352);
      v16 = *(v0 + 336);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v55 = xmmword_1003760F0;
LABEL_51:
      v56 = -96;
      goto LABEL_52;
    }

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    sub_1001A9478(v42, v44);
    v46 = v45;
    v48 = v47;
    v50 = v49;

    if (v50)
    {
      v15 = *(v0 + 344);
      v2 = *(v0 + 352);
      v16 = *(v0 + 336);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v55 = 0xD000000000000031;
      *(v55 + 8) = 0x800000010043E300;
      v56 = 65;
LABEL_52:
      *(v55 + 16) = v56;
      swift_willThrow();

      goto LABEL_5;
    }

    if (!v48)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v63 = *(v0 + 168);
    if (v46 == v48 - 1)
    {
      if (!v63)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      if (v48 % v63)
      {
        v63 = v48 % v63;
      }
    }

    v15 = *(v0 + 344);
    v64 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v64 != 2)
      {
        goto LABEL_49;
      }

      v66 = *(*(v0 + 336) + 16);
      v67 = *(*(v0 + 336) + 24);
      v68 = __OFSUB__(v67, v66);
      v65 = v67 - v66;
      if (!v68)
      {
LABEL_45:
        if ((v65 & 0x8000000000000000) == 0)
        {
LABEL_46:
          if (v65)
          {
            if (v63 == v65)
            {
              goto LABEL_18;
            }

            goto LABEL_50;
          }

LABEL_49:
          if (!v63)
          {
            goto LABEL_18;
          }

LABEL_50:
          v2 = *(v0 + 352);
          v16 = *(v0 + 336);
          sub_1001AEF18();
          v11 = swift_allocError();
          *v55 = 0;
          *(v55 + 8) = 0;
          goto LABEL_51;
        }

        goto LABEL_54;
      }

      __break(1u);
    }

    else if (!v64)
    {
      v65 = BYTE6(v15);
      goto LABEL_46;
    }

    v69 = *(v0 + 336);
    v70 = *(v0 + 340);
    v68 = __OFSUB__(v70, v69);
    LODWORD(v65) = v70 - v69;
    if (v68)
    {
LABEL_56:
      __break(1u);
      return dispatch thunk of Clock.sleep(until:tolerance:)(v51, v52, v53, v54);
    }

    v65 = v65;
    goto LABEL_45;
  }

  v16 = *(v0 + 336);
  v15 = *(v0 + 344);
  sub_1001AEF18();
  v11 = swift_allocError();
  *v17 = xmmword_1003760E0;
  *(v17 + 16) = -96;
  swift_willThrow();
LABEL_5:

LABEL_8:
  v13 = v16;
  v14 = v15;
LABEL_9:
  sub_100031928(v13, v14);
  *(v0 + 368) = v11;
  if (*(v0 + 312) < *(v0 + 136) && (sub_1001AA1A0(v11, *(v0 + 280)) & 1) != 0)
  {
    v21 = *(v0 + 160);
    v22 = *v21;
    v23 = *(v21 + 8);
    if (*(v21 + 32))
    {
      if (*(v21 + 32) == 1)
      {
        *(v0 + 120) = *(v0 + 312) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v24 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v24 = v22(*(v0 + 312));
      }

      v22 = v24;
      v23 = v25;
    }

    v58 = *(v0 + 184);
    v57 = *(v0 + 192);
    v59 = *(v0 + 176);
    static Clock<>.continuous.getter();
    *(v0 + 104) = v22;
    *(v0 + 112) = v23;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v60 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v61 = *(v58 + 8);
    *(v0 + 376) = v61;
    *(v0 + 384) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61(v57, v59);
    v62 = swift_task_alloc();
    *(v0 + 392) = v62;
    *v62 = v0;
    v62[1] = sub_1001AB8CC;
    v53 = *(v0 + 208);
    v51 = *(v0 + 200);
    v52 = v0 + 64;
    v54 = v60;

    return dispatch thunk of Clock.sleep(until:tolerance:)(v51, v52, v53, v54);
  }

  swift_willThrow();
  v26 = *(v0 + 296);
  v27 = *(v0 + 280);
  v28 = *(v0 + 288);
  v29 = *(v0 + 256);

  v28(v27, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1001AB588()
{
  v1 = *(v0 + 360);

  sub_1001AEF18();
  v2 = swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();
  *(v0 + 368) = v2;
  if (*(v0 + 312) < *(v0 + 136) && (sub_1001AA1A0(v2, *(v0 + 280)) & 1) != 0)
  {
    v4 = *(v0 + 160);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*(v4 + 32))
    {
      if (*(v4 + 32) == 1)
      {
        *(v0 + 120) = *(v0 + 312) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v7 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v7 = v5(*(v0 + 312));
      }

      v5 = v7;
      v6 = v8;
    }

    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v17 = *(v0 + 176);
    static Clock<>.continuous.getter();
    *(v0 + 104) = v5;
    *(v0 + 112) = v6;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v18 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v19 = *(v16 + 8);
    *(v0 + 376) = v19;
    *(v0 + 384) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    v20 = swift_task_alloc();
    *(v0 + 392) = v20;
    *v20 = v0;
    v20[1] = sub_1001AB8CC;
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v22, v0 + 64, v21, v18);
  }

  else
  {
    swift_willThrow();
    v9 = *(v0 + 296);
    v10 = *(v0 + 280);
    v11 = *(v0 + 288);
    v12 = *(v0 + 256);

    v11(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1001AB8CC()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    (*(v2 + 376))(*(v2 + 200), *(v2 + 176));
    v3 = sub_1001ABB44;
  }

  else
  {
    v5 = *(v2 + 216);
    v4 = *(v2 + 224);
    v6 = *(v2 + 208);
    (*(v2 + 376))(*(v2 + 200), *(v2 + 176));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1001ABA24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001ABA24()
{
  v1 = v0[39];

  v0[39] = v1 + 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  v2 = v0[38];
  swift_beginAccess();
  v3 = static Network.urlSession;
  v0[40] = static Network.urlSession;
  v3;
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_1001AAD30;
  v5 = v0[16];

  return NSURLSession.data(for:delegate:)(v5, v2);
}

uint64_t sub_1001ABB44()
{
  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);

  v3(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001ABC54(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  v4 = type metadata accessor for URLRequest();
  *(v3 + 72) = v4;
  *(v3 + 80) = *(v4 - 8);
  *(v3 + 88) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v3 + 96) = v5;
  *(v3 + 104) = *(v5 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_1001ABD8C, 0, 0);
}

uint64_t sub_1001ABD8C()
{
  v31 = v0;
  if (*(v0 + 49))
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 96);
    v3 = *(v0 + 104);
    v4 = *(v0 + 56);
    v5 = sub_1001862DC(&_swiftEmptyArrayStorage);
    v6 = *(v3 + 16);
    *(v0 + 136) = v6;
    *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    URLRequest.httpMethod.setter();
    URLRequest.addHeaders(additionalHTTPHeaders:)(v5);

    *(v0 + 16) = xmmword_1003F2EE0;
    *(v0 + 32) = xmmword_1003F2EF0;
    *(v0 + 48) = 1;
    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_1001AC150;
    v8 = *(v0 + 88);
    v9 = *(v0 + 64);
    v34 = 1;
    v33 = v9;

    return sub_1001AA578(v8, 3, 0x8AC7230489E80000, 0, 0, v0 + 16, 1, 1);
  }

  else
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 128);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 56);
    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, static Network.logger);
    (*(v13 + 16))(v11, v14, v12);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 128);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    if (v18)
    {
      v22 = *(v0 + 64);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 134218242;
      *(v23 + 4) = v22;
      *(v23 + 12) = 2080;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v21 + 8))(v19, v20);
      v28 = sub_1000026C0(v25, v27, &v30);

      *(v23 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v16, v17, "Range request chunk size of %llu specified. Assuming range requests are supported for %s", v23, 0x16u);
      sub_100003C3C(v24);
    }

    else
    {

      (*(v21 + 8))(v19, v20);
    }

    v29 = *(v0 + 8);

    return v29(1);
  }
}

uint64_t sub_1001AC150(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(v7 + 160) = a3;
  *(v7 + 168) = v3;

  if (v3)
  {
    v8 = sub_1001AC868;
  }

  else
  {
    sub_100031928(a1, a2);
    v8 = sub_1001AC280;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001AC280()
{
  v45 = v0;
  v1 = *(v0 + 160);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v2 = v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForHTTPHeaderField:v3];

  if (!v4)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, static Network.logger);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 160);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Server does not specify Accept-Ranges", v20, 2u);
    }

    goto LABEL_16;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5 == 0x7365747962 && v7 == 0xE500000000000000;
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000270B4(v35, static Network.logger);

    v16 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    v37 = os_log_type_enabled(v16, v36);
    v38 = *(v0 + 160);
    if (!v37)
    {

      goto LABEL_17;
    }

    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v39 = 136315138;
    v41 = sub_1000026C0(v5, v7, &v44);

    *(v39 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v16, v36, "Server specified Accept-Ranges=%s when bytes was expected", v39, 0xCu);
    sub_100003C3C(v40);

LABEL_16:
LABEL_17:
    v21 = 0;
    goto LABEL_29;
  }

  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000270B4(v9, static Network.logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v44 = v13;
    *v12 = 136315138;
    v14 = sub_1000026C0(v5, v7, &v44);

    *(v12 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v11, "Server specified Accept-Ranges=%s", v12, 0xCu);
    sub_100003C3C(v13);
  }

  else
  {
  }

  v22 = *(v0 + 160);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 valueForHTTPHeaderField:v23];

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 160);
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      v34 = sub_1000026C0(v25, v27, &v44);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Server specified Content-Length=%s", v32, 0xCu);
      sub_100003C3C(v33);
    }

    else
    {
    }
  }

  else
  {
  }

  v21 = 1;
LABEL_29:

  v42 = *(v0 + 8);

  return v42(v21);
}

uint64_t sub_1001AC868()
{
  v23 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000270B4(v5, static Network.logger);
  v1(v2, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315394;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_1000026C0(v13, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to perfom HEAD request to %s: %@", v12, 0x16u);
    sub_100013F2C(v20, &qword_1004AA050);

    sub_100003C3C(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18(0);
}

void sub_1001ACB5C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = FileDescriptor._close()();
  if ((v7 & 0x100000000) != 0)
  {
    v23 = v7;
    v8 = v7;
    sub_100187D3C();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v9 = v8;
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, static Network.logger);
    (*(v4 + 16))(v6, a2, v3);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315394;
      sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v4 + 8))(v6, v3);
      v18 = sub_1000026C0(v15, v17, &v22);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to close file descriptor for writing to %s: %@", v13, 0x16u);
      sub_100013F2C(v14, &qword_1004AA050);

      sub_100003C3C(v21);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_1001ACE98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FilePath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  FilePath.remove()();
  if (v7)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000270B4(v8, static Network.logger);
    (*(v4 + 16))(v6, a2, v3);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v4 + 8))(v6, v3);
      v16 = sub_1000026C0(v13, v15, v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to remove temp file %s", v11, 0xCu);
      sub_100003C3C(v12);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1001AD124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000270B4(v8, static Network.logger);
  (*(v5 + 16))(v7, a2, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *&v24 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    v15 = sub_1000026C0(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000026C0(v16, v17, &v24);

    *(v11 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Download attempt %s failed: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v26 = a1;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v19 = v25 >> 5;
  if (!v19)
  {
    sub_1001B1DD8(v24, *(&v24 + 1), v25);
    v21 = 1;
    return v21 & 1;
  }

  if (v19 == 5)
  {
    if (v24 == 0 && v25 == 160 || v24 == 1 && v25 == 160 || v24 == 2 && v25 == 160)
    {
      v21 = 1;
      return v21 & 1;
    }

    goto LABEL_18;
  }

  if (v19 != 1)
  {
LABEL_18:
    sub_1001B1DD8(v24, *(&v24 + 1), v25);
LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  v20 = vdupq_n_s64(v24);
  v21 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100484C80, v20), vceqq_s64(unk_100484C90, v20)))) | (v24 == 504) | (v24 == 509);
  sub_1001B1DD8(v24, *(&v24 + 1), v25);
  return v21 & 1;
}

uint64_t sub_1001AD4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 81) = a5;
  *(v5 + 144) = a3;
  *(v5 + 152) = a4;
  *(v5 + 128) = a1;
  *(v5 + 136) = a2;
  v6 = type metadata accessor for ContinuousClock.Instant();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  *(v5 + 192) = v7;
  *(v5 + 200) = *(v7 - 8);
  *(v5 + 208) = swift_task_alloc();
  sub_1000039E8(&qword_1004A9CF8);
  *(v5 + 216) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v5 + 224) = v8;
  *(v5 + 232) = *(v8 - 8);
  *(v5 + 240) = swift_task_alloc();
  v9 = type metadata accessor for FilePath();
  *(v5 + 248) = v9;
  *(v5 + 256) = *(v9 - 8);
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v5 + 280) = v10;
  *(v5 + 288) = *(v10 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_1001AD7B4, 0, 0);
}

uint64_t sub_1001AD7B4()
{
  v67 = v0;
  if (qword_1004A9FA8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if ((static Time.isSynchronized & 1) == 0)
  {
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000270B4(v1, static Network.logger);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Time is not synced before making network request, continuing", v4, 2u);
    }
  }

  if (qword_1004A9E10 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 328);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = type metadata accessor for Logger();
  sub_1000270B4(v13, static Network.logger);
  v14 = *(v7 + 16);
  *(v0 + 336) = v14;
  *(v0 + 344) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v64 = v14;
  v14(v5, v12, v6);
  (*(v9 + 16))(v8, v11, v10);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 280);
  v20 = *(v0 + 288);
  v63 = *(v0 + 272);
  v22 = *(v0 + 248);
  v21 = *(v0 + 256);
  if (v17)
  {
    v62 = v16;
    v23 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v23 = 136315394;
    sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
    v60 = v22;
    log = v15;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v27 = *(v20 + 8);
    v27(v18, v19);
    v28 = sub_1000026C0(v24, v26, &v66);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    sub_1001B1D90(&qword_1004AA058, &type metadata accessor for FilePath);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v32 = *(v21 + 8);
    v32(v63, v60);
    v33 = sub_1000026C0(v29, v31, &v66);

    *(v23 + 14) = v33;
    _os_log_impl(&_mh_execute_header, log, v62, "Downloading from %s to %s", v23, 0x16u);
    swift_arrayDestroy();

    v34 = v27;
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v63, v22);
    v34 = *(v20 + 8);
    v34(v18, v19);
  }

  *(v0 + 352) = v32;
  *(v0 + 360) = v34;
  v35 = *(v0 + 81);
  v64(*(v0 + 320), *(v0 + 128), *(v0 + 280));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v36._countAndFlagsBits = 0x797469746E656469;
  v37._countAndFlagsBits = 0x452D747065636341;
  v37._object = 0xEF676E69646F636ELL;
  v36._object = 0xE800000000000000;
  URLRequest.addValue(_:forHTTPHeaderField:)(v36, v37);
  if (v35 == 1)
  {
    v64(*(v0 + 312), *(v0 + 128), *(v0 + 280));
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v65 = v34;
      v66 = swift_slowAlloc();
      v44 = v66;
      *v43 = 136315138;
      sub_1001B1D90(&qword_1004AAE30, &type metadata accessor for URL);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v65(v41, v42);
      v48 = sub_1000026C0(v45, v47, &v66);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v38, v39, "Using background network service type to download %s", v43, 0xCu);
      sub_100003C3C(v44);
    }

    else
    {

      v34(v41, v42);
    }

    URLRequest.networkServiceType.setter();
  }

  if (qword_1004A9E20 != -1)
  {
    swift_once();
  }

  v49 = qword_1004AAE20;
  *(v0 + 368) = qword_1004AAE20;
  v50 = type metadata accessor for Network.DataDelegate();
  v51 = objc_allocWithZone(v50);
  v52 = &v51[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_timeout];
  *v52 = 0;
  v52[8] = 1;
  *&v51[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_cred] = v49;
  *(v0 + 88) = v51;
  *(v0 + 96) = v50;
  v53 = v49;
  v54 = objc_msgSendSuper2((v0 + 88), "init");
  *(v0 + 376) = v54;
  *(v0 + 384) = 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
    v54 = *(v0 + 376);
  }

  swift_beginAccess();
  v55 = static Network.urlSession;
  *(v0 + 392) = static Network.urlSession;
  v55;
  v56 = swift_task_alloc();
  *(v0 + 400) = v56;
  *v56 = v0;
  v56[1] = sub_1001ADF48;
  v57 = *(v0 + 296);
  v58 = *(v0 + 240);

  return NSURLSession.download(for:delegate:)(v57, v58, v54);
}

uint64_t sub_1001ADF48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 392);
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v5 = sub_1001AE7A8;
  }

  else
  {
    v5 = sub_1001AE078;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001AE078()
{
  (*(*(v0 + 288) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 280));
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 408);
  if (!v1)
  {
    v5 = *(v0 + 360);
    v6 = *(v0 + 304);
    v7 = *(v0 + 280);
    sub_1001AEF18();
    v10 = swift_allocError();
    *v12 = xmmword_1003760E0;
    *(v12 + 16) = -96;
    swift_willThrow();
LABEL_8:

    v5(v6, v7);
    goto LABEL_9;
  }

  v3 = v1;
  v4 = v2;
  if ([v3 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    v2 = *(v0 + 408);
    v5 = *(v0 + 360);
    v6 = *(v0 + 304);
    v7 = *(v0 + 280);
    v8 = [v3 statusCode];
    sub_1001AEF18();
    v10 = swift_allocError();
    *v9 = v8;
    *(v9 + 8) = 0;
    v11 = 32;
LABEL_7:
    *(v9 + 16) = v11;
    swift_willThrow();

    goto LABEL_8;
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v0 + 216);
  (*(v0 + 336))(*(v0 + 320), *(v0 + 304), *(v0 + 280));
  FilePath.init(_:)();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v2 = *(v0 + 408);
    v5 = *(v0 + 360);
    v6 = *(v0 + 304);
    v7 = *(v0 + 280);
    sub_100013F2C(*(v0 + 216), &qword_1004A9CF8);
    sub_1001AEF18();
    v10 = swift_allocError();
    *v9 = xmmword_1003760F0;
    v11 = -96;
    goto LABEL_7;
  }

  v27 = *(v0 + 416);
  v28 = *(v0 + 136);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 216), *(v0 + 248));
  FilePath.copy(to:)(v28);
  v29 = *(v0 + 408);
  if (!v27)
  {
    v52 = *(v0 + 376);
    v53 = *(v0 + 368);
    v43 = *(v0 + 352);
    v44 = *(v0 + 304);
    v45 = *(v0 + 280);
    v46 = *(v0 + 264);
    v47 = *(v0 + 248);
    v50 = *(v0 + 240);
    v51 = *(v0 + 360);
    v48 = *(v0 + 232);
    v49 = *(v0 + 224);
    sub_1001ACE98(v46, *(v0 + 136));

    v43(v46, v47);
    v51(v44, v45);

    (*(v48 + 8))(v50, v49);

    v25 = *(v0 + 8);
    goto LABEL_15;
  }

  v30 = *(v0 + 352);
  v56 = *(v0 + 360);
  v54 = *(v0 + 280);
  v55 = *(v0 + 304);
  v31 = *(v0 + 264);
  v32 = *(v0 + 248);
  v33 = *(v0 + 136);
  sub_1001AEF18();
  v10 = swift_allocError();
  *v34 = v27;
  *(v34 + 8) = 0;
  *(v34 + 16) = 64;
  swift_willThrow();
  sub_1001ACE98(v31, v33);

  v30(v31, v32);
  v56(v55, v54);
LABEL_9:
  *(v0 + 424) = v10;
  if (*(v0 + 384) < *(v0 + 144) && (sub_1001AD124(v10, *(v0 + 128)) & 1) != 0)
  {
    v16 = *(v0 + 152);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (*(v16 + 32))
    {
      if (*(v16 + 32) == 1)
      {
        *(v0 + 120) = *(v0 + 384) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v19 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v19 = v17(*(v0 + 384));
      }

      v17 = v19;
      v18 = v20;
    }

    v36 = *(v0 + 168);
    v35 = *(v0 + 176);
    v37 = *(v0 + 160);
    static Clock<>.continuous.getter();
    *(v0 + 104) = v17;
    *(v0 + 112) = v18;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v38 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v39 = *(v36 + 8);
    *(v0 + 432) = v39;
    *(v0 + 440) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v35, v37);
    v40 = swift_task_alloc();
    *(v0 + 448) = v40;
    *v40 = v0;
    v40[1] = sub_1001AEB2C;
    v42 = *(v0 + 184);
    v41 = *(v0 + 192);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v42, v0 + 64, v41, v38);
  }

  swift_willThrow();
  v21 = *(v0 + 368);
  v23 = *(v0 + 232);
  v22 = *(v0 + 240);
  v24 = *(v0 + 224);

  (*(v23 + 8))(v22, v24);

  v25 = *(v0 + 8);
LABEL_15:

  return v25();
}

uint64_t sub_1001AE7A8()
{
  v1 = *(v0 + 416);
  sub_1001AEF18();
  v2 = swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();
  *(v0 + 424) = v2;
  if (*(v0 + 384) < *(v0 + 144) && (sub_1001AD124(v2, *(v0 + 128)) & 1) != 0)
  {
    v4 = *(v0 + 152);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*(v4 + 32))
    {
      if (*(v4 + 32) == 1)
      {
        *(v0 + 120) = *(v0 + 384) - 1;
        sub_1001B1CDC();
        static Duration.* infix<A>(_:_:)();
        v7 = static Duration.+ infix(_:_:)();
      }

      else
      {
        v7 = v5(*(v0 + 384));
      }

      v5 = v7;
      v6 = v8;
    }

    v16 = *(v0 + 168);
    v15 = *(v0 + 176);
    v17 = *(v0 + 160);
    static Clock<>.continuous.getter();
    *(v0 + 104) = v5;
    *(v0 + 112) = v6;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v18 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v19 = *(v16 + 8);
    *(v0 + 432) = v19;
    *(v0 + 440) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v15, v17);
    v20 = swift_task_alloc();
    *(v0 + 448) = v20;
    *v20 = v0;
    v20[1] = sub_1001AEB2C;
    v22 = *(v0 + 184);
    v21 = *(v0 + 192);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v22, v0 + 64, v21, v18);
  }

  else
  {
    swift_willThrow();
    v9 = *(v0 + 368);
    v11 = *(v0 + 232);
    v10 = *(v0 + 240);
    v12 = *(v0 + 224);

    (*(v11 + 8))(v10, v12);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1001AEB2C()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    (*(v2 + 432))(*(v2 + 184), *(v2 + 160));
    v3 = sub_1001AEDA8;
  }

  else
  {
    v5 = *(v2 + 200);
    v4 = *(v2 + 208);
    v6 = *(v2 + 192);
    (*(v2 + 432))(*(v2 + 184), *(v2 + 160));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1001AEC84;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001AEC84()
{
  v1 = v0[48];

  v0[48] = v1 + 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  v2 = v0[47];
  swift_beginAccess();
  v3 = static Network.urlSession;
  v0[49] = static Network.urlSession;
  v3;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_1001ADF48;
  v5 = v0[37];
  v6 = v0[30];

  return NSURLSession.download(for:delegate:)(v5, v6, v2);
}

uint64_t sub_1001AEDA8()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));

  v1 = *(v0 + 368);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 224);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_1001AEF18()
{
  result = qword_1004AAE40;
  if (!qword_1004AAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAE40);
  }

  return result;
}

uint64_t sub_1001AEF90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100189CAC;

  return sub_1001A5758(a1, a2, v6, v7, v8, v9, v10, v11);
}

id sub_1001AF0B8(id result)
{
  if ((*(v1 + OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_timeout + 8) & 1) == 0)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_timeout);
    if (qword_1004A9E10 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000270B4(v4, static Network.logger);
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v5;
      *v9 = v5;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v3;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "ulrSession.didCreateTask: %@, setting timeout to %f", v8, 0x16u);
      sub_100013F2C(v9, &qword_1004AA050);
    }

    return [v5 set_timeoutIntervalForResource:v3];
  }

  return result;
}

uint64_t sub_1001AF258(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 protectionSpace];
  v6 = [v5 authenticationMethod];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      v13 = *(a3 + 16);
      v14 = a3;
      v15 = 1;
      v16 = 0;
      goto LABEL_9;
    }
  }

  v16 = *(a2 + OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_cred);
  v13 = *(a3 + 16);
  v14 = a3;
  v15 = 0;
LABEL_9:

  return v13(v14, v15, v16);
}

uint64_t sub_1001AF378(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE6(a3);
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      result = FileDescriptor._write(toAbsoluteOffset:_:retryOnInterrupt:)();
      LODWORD(v7) = result;
      if ((v8 & 1) == 0)
      {
        if (result == v3)
        {
          return result;
        }

        goto LABEL_26;
      }

LABEL_20:
      sub_100187D3C();
      swift_willThrowTypedImpl();
      result = swift_allocError();
      *v17 = v7;
      return result;
    }

    goto LABEL_14;
  }

  if (v5 == 2)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v10, __DataStorage._offset.getter()))
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v9, v10))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __DataStorage._length.getter();
    result = FileDescriptor._write(toAbsoluteOffset:_:retryOnInterrupt:)();
    v7 = result;
    if (v11)
    {
      goto LABEL_20;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v14 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_25;
    }

    __break(1u);
LABEL_14:
    if (a2 >> 32 >= a2)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(a2, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        result = FileDescriptor._write(toAbsoluteOffset:_:retryOnInterrupt:)();
        v7 = result;
        if (v15)
        {
          goto LABEL_20;
        }

        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v14 = HIDWORD(a2) - a2;
LABEL_25:
          if (v7 == v14)
          {
            return result;
          }

          goto LABEL_26;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __break(1u);
    goto LABEL_37;
  }

  result = FileDescriptor._write(toAbsoluteOffset:_:retryOnInterrupt:)();
  LODWORD(v7) = result;
  if (v16)
  {
    goto LABEL_20;
  }

  if (!result)
  {
    return result;
  }

LABEL_26:
  _StringGuts.grow(_:)(43);
  v18 = dispatch thunk of CustomStringConvertible.description.getter();
  v20 = v19;

  v21._object = 0x800000010043E340;
  v21._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v21);
  if (v5 > 1)
  {
    if (v5 != 2 || !__OFSUB__(*(a2 + 24), *(a2 + 16)))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v5)
  {
    goto LABEL_34;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_41:
    __break(1u);
  }

LABEL_34:
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  sub_1001AEF18();
  swift_allocError();
  *v23 = v18;
  *(v23 + 8) = v20;
  *(v23 + 16) = 65;
  return swift_willThrow();
}

uint64_t sub_1001AF780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 168) = a3;
  *(v5 + 176) = a4;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;
  v6 = type metadata accessor for ContinuousClock.Instant();
  *(v5 + 184) = v6;
  *(v5 + 192) = *(v6 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 - 8);
  *(v5 + 232) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v5 + 240) = v8;
  *(v5 + 248) = *(v8 - 8);
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v5 + 272) = v9;
  *(v5 + 280) = *(v9 - 8);
  *(v5 + 288) = swift_task_alloc();
  v10 = type metadata accessor for URLRequest();
  *(v5 + 296) = v10;
  *(v5 + 304) = *(v10 - 8);
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1001AF9DC, 0, 0);
}

uint64_t sub_1001AF9DC()
{
  v68 = v0;
  v1 = *(v0 + 57);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 152), *(v0 + 272));
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v4._countAndFlagsBits = 0x797469746E656469;
  v5._countAndFlagsBits = 0x452D747065636341;
  v5._object = 0xEF676E69646F636ELL;
  v4._object = 0xE800000000000000;
  URLRequest.addValue(_:forHTTPHeaderField:)(v4, v5);
  v66 = 0x3D7365747962;
  v67 = 0xE600000000000000;
  *(v0 + 120) = v2;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 45;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(v0 + 128) = v3;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = v66;
  v10 = v67;
  *(v0 + 328) = v67;

  v11._countAndFlagsBits = 0x65676E6152;
  v12.value._countAndFlagsBits = v9;
  v12.value._object = v10;
  v11._object = 0xE500000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(v12, v11);

  if (v1 == 2 || (*(v0 + 57) & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_1004A9E10 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_1000270B4(v13, static Network.logger);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "Using background network service type to fetch range: (%llu-%llu)", v18, 0x16u);
    }

    URLRequest.networkServiceType.setter();
LABEL_7:
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);
    v21 = v19 - v20;
    if (v19 < v20)
    {
      break;
    }

    if ((v19 - v20) >= 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  if ((v20 - v19) < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v21 = v19 - v20;
LABEL_11:
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  *(v0 + 336) = v23;
  if (v22)
  {
    __break(1u);
  }

  else if ((v23 & 0x8000000000000000) == 0)
  {
    UUID.init()();
    if (qword_1004A9E10 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_14:
  v25 = *(v0 + 312);
  v24 = *(v0 + 320);
  v27 = *(v0 + 296);
  v26 = *(v0 + 304);
  v29 = *(v0 + 256);
  v28 = *(v0 + 264);
  v30 = *(v0 + 240);
  v31 = *(v0 + 248);
  v32 = type metadata accessor for Logger();
  *(v0 + 344) = sub_1000270B4(v32, static Network.logger);
  (*(v31 + 16))(v29, v28, v30);
  (*(v26 + 16))(v25, v24, v27);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 304);
  v37 = *(v0 + 312);
  v38 = *(v0 + 296);
  v40 = *(v0 + 248);
  v39 = *(v0 + 256);
  v41 = *(v0 + 240);
  if (v35)
  {
    v65 = v34;
    v42 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v42 = 136315394;
    sub_1001B1D90(&qword_1004AA848, &type metadata accessor for UUID);
    v63 = v38;
    log = v33;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    v46 = *(v40 + 8);
    v46(v39, v41);
    v47 = sub_1000026C0(v43, v45, &v66);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v48 = URLRequest.logDescription.getter();
    v50 = v49;
    v51 = *(v36 + 8);
    v51(v37, v63);
    v52 = sub_1000026C0(v48, v50, &v66);

    *(v42 + 14) = v52;
    _os_log_impl(&_mh_execute_header, log, v65, "Performing HTTP request %s %s", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v51 = *(v36 + 8);
    v51(v37, v38);
    v46 = *(v40 + 8);
    v46(v39, v41);
  }

  *(v0 + 352) = v51;
  *(v0 + 360) = v46;
  if (qword_1004A9E20 != -1)
  {
    swift_once();
  }

  v53 = qword_1004AAE20;
  *(v0 + 368) = qword_1004AAE20;
  v54 = type metadata accessor for Network.DataDelegate();
  v55 = objc_allocWithZone(v54);
  v56 = &v55[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_timeout];
  *v56 = 0;
  v56[8] = 1;
  *&v55[OBJC_IVAR____TtCO10DarwinInit7NetworkP33_A2989DEB342D1D73BAB9ED00FC1BB87412DataDelegate_cred] = v53;
  *(v0 + 88) = v55;
  *(v0 + 96) = v54;
  v57 = v53;
  v58 = objc_msgSendSuper2((v0 + 88), "init");
  *(v0 + 376) = v58;
  *(v0 + 384) = 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
    v58 = *(v0 + 376);
  }

  swift_beginAccess();
  v59 = static Network.urlSession;
  *(v0 + 392) = static Network.urlSession;
  v59;
  v60 = swift_task_alloc();
  *(v0 + 400) = v60;
  *v60 = v0;
  v60[1] = sub_1001B0088;
  v61 = *(v0 + 320);

  return NSURLSession.data(for:delegate:)(v61, v58);
}

uint64_t sub_1001B0088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 408) = a1;
  *(v5 + 416) = a2;
  *(v5 + 424) = a3;
  *(v5 + 432) = v3;

  if (v3)
  {
    v6 = sub_1001B0B6C;
  }

  else
  {

    v6 = sub_1001B01A8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001B01A8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 424);
  if (v1)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 statusCode];
    v6 = [v3 statusCode];
    v7 = v6;
    if (v5 == 416)
    {
      v8 = *(v0 + 416);
      v2 = *(v0 + 424);
      v9 = *(v0 + 408);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v10 = v7;
      *(v10 + 8) = 0;
      v12 = 0x80;
LABEL_7:
      *(v10 + 16) = v12;
      swift_willThrow();

      goto LABEL_8;
    }

    v14 = v6 - 300;
    v15 = [v3 statusCode];
    v16 = v15;
    if (v14 < 0xFFFFFFFFFFFFFF9CLL)
    {
      v8 = *(v0 + 416);
      v2 = *(v0 + 424);
      v9 = *(v0 + 408);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v10 = v16;
      *(v10 + 8) = 0;
      v12 = 32;
      goto LABEL_7;
    }

    if (v15 != 206)
    {
      v72 = *(v0 + 416);
      v73 = *(v0 + 424);
      v74 = *(v0 + 408);
      v75 = [v3 statusCode];
      sub_1001AEF18();
      v11 = swift_allocError();
      *v76 = v75;
      *(v76 + 8) = 0;
      *(v76 + 16) = 32;
      swift_willThrow();

      v17 = v74;
      v18 = v72;
      goto LABEL_9;
    }

    v61 = String._bridgeToObjectiveC()();
    v62 = [v3 valueForHTTPHeaderField:v61];

    if (!v62)
    {
      v8 = *(v0 + 416);
      v2 = *(v0 + 424);
      v9 = *(v0 + 408);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v10 = xmmword_1003760F0;
      v12 = -96;
      goto LABEL_7;
    }

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    sub_1001A9478(v63, v65);
    v67 = v66;
    v69 = v68;
    v71 = v70;

    if (v71)
    {
      v8 = *(v0 + 416);
      v2 = *(v0 + 424);
      v9 = *(v0 + 408);
      sub_1001AEF18();
      v11 = swift_allocError();
      *v10 = 0xD000000000000031;
      *(v10 + 8) = 0x800000010043E300;
      v12 = 65;
      goto LABEL_7;
    }

    if (!v69)
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v77 = *(v0 + 336);
    if (v67 == v69 - 1)
    {
      if (!v77)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v69 % v77)
      {
        v77 = v69 % v77;
      }
    }

    v78 = *(v0 + 416);
    v79 = v78 >> 62;
    if ((v78 >> 62) > 1)
    {
      if (v79 != 2)
      {
        goto LABEL_52;
      }

      v81 = *(*(v0 + 408) + 16);
      v82 = *(*(v0 + 408) + 24);
      v83 = __OFSUB__(v82, v81);
      v80 = v82 - v81;
      if (!v83)
      {
LABEL_48:
        if ((v80 & 0x8000000000000000) == 0)
        {
LABEL_49:
          if (v80)
          {
            if (v77 == v80)
            {
LABEL_51:
              v86 = *(v0 + 424);
              v87 = *(v0 + 368);
              v97 = *(v0 + 352);
              v94 = *(v0 + 360);
              v95 = *(v0 + 320);
              v88 = *(v0 + 296);
              v89 = *(v0 + 264);
              v90 = *(v0 + 240);

              v94(v89, v90);
              v97(v95, v88);
              v50 = *(v0 + 408);
              v51 = *(v0 + 416);
              goto LABEL_20;
            }

LABEL_53:
            v91 = *(v0 + 424);
            v92 = *(v0 + 408);
            sub_1001AEF18();
            v11 = swift_allocError();
            *v93 = 0;
            *(v93 + 8) = 0;
            *(v93 + 16) = -96;
            swift_willThrow();

            v17 = v92;
            v18 = v78;
            goto LABEL_9;
          }

LABEL_52:
          if (!v77)
          {
            goto LABEL_51;
          }

          goto LABEL_53;
        }

        goto LABEL_55;
      }

      __break(1u);
    }

    else if (!v79)
    {
      v80 = BYTE6(v78);
      goto LABEL_49;
    }

    v84 = *(v0 + 408);
    v85 = *(v0 + 412);
    v83 = __OFSUB__(v85, v84);
    LODWORD(v80) = v85 - v84;
    if (v83)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v80 = v80;
    goto LABEL_48;
  }

  v9 = *(v0 + 408);
  v8 = *(v0 + 416);
  sub_1001AEF18();
  v11 = swift_allocError();
  *v13 = xmmword_1003760E0;
  *(v13 + 16) = -96;
  swift_willThrow();
LABEL_8:

  v17 = v9;
  v18 = v8;
LABEL_9:
  sub_100031928(v17, v18);
  *(v0 + 440) = v11;
  if (*(v0 + 384) < *(v0 + 176) && (sub_1001AA1A0(v11, *(v0 + 264)) & 1) != 0)
  {
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);
    *(v0 + 144) = *(v0 + 384) - 1;
    sub_1001B1CDC();
    static Duration.* infix<A>(_:_:)();
    v22 = static Duration.+ infix(_:_:)();
    v24 = v23;
    static Clock<>.continuous.getter();
    *(v0 + 104) = v22;
    *(v0 + 112) = v24;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v25 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v26 = *(v20 + 8);
    *(v0 + 448) = v26;
    *(v0 + 456) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v19, v21);
    v27 = swift_task_alloc();
    *(v0 + 464) = v27;
    *v27 = v0;
    v27[1] = sub_1001B115C;
    v28 = *(v0 + 216);
    v29 = *(v0 + 208);
    v30 = v0 + 64;
    v31 = v25;

    return dispatch thunk of Clock.sleep(until:tolerance:)(v29, v30, v28, v31);
  }

  swift_willThrow();
  v32 = *(v0 + 368);
  v33 = *(v0 + 360);
  v34 = *(v0 + 264);
  v35 = *(v0 + 240);

  v33(v34, v35);
  *(v0 + 136) = v11;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 40);
    v37 = *(v0 + 56);
    if ((v37 & 0xE0) == 0x80)
    {
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v41 = *(v0 + 160);
        v40 = *(v0 + 168);
        v42 = swift_slowAlloc();
        *v42 = 134218496;
        *(v42 + 4) = v36;
        *(v42 + 12) = 2048;
        *(v42 + 14) = v41;
        *(v42 + 22) = 2048;
        *(v42 + 24) = v40;
        _os_log_impl(&_mh_execute_header, v38, v39, "Recieved %ld requested range not satisfiable for range (%llu-%llu)", v42, 0x20u);
      }

      v43 = objc_allocWithZone(NSHTTPURLResponse);
      URL._bridgeToObjectiveC()(v44);
      v46 = v45;
      v3 = [v43 initWithURL:v45 statusCode:v36 HTTPVersion:0 headerFields:0];

      if (v3)
      {
        v47 = *(v0 + 352);
        v48 = *(v0 + 320);
        v49 = *(v0 + 296);

        v47(v48, v49);

        v50 = 0;
        v51 = 0xF000000000000000;
LABEL_20:
        v96 = v51;

        v52 = *(v0 + 8);
        v53 = *(v0 + 160);

        return v52(v50, v96, v3, v53);
      }

LABEL_58:
      __break(1u);
      return dispatch thunk of Clock.sleep(until:tolerance:)(v29, v30, v28, v31);
    }

    v55 = *(v0 + 352);
    v56 = *(v0 + 320);
    v57 = *(v0 + 296);
    v58 = *(v0 + 48);

    sub_1001AEF18();
    swift_allocError();
    *v59 = v36;
    *(v59 + 8) = v58;
    *(v59 + 16) = v37;
    swift_willThrow();
    v55(v56, v57);
  }

  else
  {
    (*(v0 + 352))(*(v0 + 320), *(v0 + 296));
  }

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1001B0B6C()
{
  v1 = *(v0 + 432);

  sub_1001AEF18();
  v2 = swift_allocError();
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  swift_willThrow();
  *(v0 + 440) = v2;
  if (*(v0 + 384) < *(v0 + 176) && (sub_1001AA1A0(v2, *(v0 + 264)) & 1) != 0)
  {
    v5 = *(v0 + 192);
    v4 = *(v0 + 200);
    v6 = *(v0 + 184);
    *(v0 + 144) = *(v0 + 384) - 1;
    sub_1001B1CDC();
    static Duration.* infix<A>(_:_:)();
    v7 = static Duration.+ infix(_:_:)();
    v9 = v8;
    static Clock<>.continuous.getter();
    *(v0 + 104) = v7;
    *(v0 + 112) = v9;
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    *(v0 + 80) = 1;
    v10 = sub_1001B1D90(&qword_1004AAFD0, &type metadata accessor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_1001B1D90(&qword_1004AAFD8, &type metadata accessor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v11 = *(v5 + 8);
    *(v0 + 448) = v11;
    *(v0 + 456) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v4, v6);
    v12 = swift_task_alloc();
    *(v0 + 464) = v12;
    *v12 = v0;
    v12[1] = sub_1001B115C;
    v13 = *(v0 + 216);
    v14 = *(v0 + 208);
    v15 = v0 + 64;
    v16 = v10;

    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v15, v13, v16);
  }

  swift_willThrow();
  v17 = *(v0 + 368);
  v18 = *(v0 + 360);
  v19 = *(v0 + 264);
  v20 = *(v0 + 240);

  v18(v19, v20);
  *(v0 + 136) = v2;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (!swift_dynamicCast())
  {
    (*(v0 + 352))(*(v0 + 320), *(v0 + 296));

LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v0 + 40);
  v22 = *(v0 + 56);
  if ((v22 & 0xE0) != 0x80)
  {
    v44 = *(v0 + 352);
    v39 = *(v0 + 320);
    v40 = *(v0 + 296);
    v41 = *(v0 + 48);

    swift_allocError();
    *v42 = v21;
    *(v42 + 8) = v41;
    *(v42 + 16) = v22;
    swift_willThrow();
    v44(v39, v40);
    goto LABEL_16;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    *(v27 + 4) = v21;
    *(v27 + 12) = 2048;
    *(v27 + 14) = v26;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v23, v24, "Recieved %ld requested range not satisfiable for range (%llu-%llu)", v27, 0x20u);
  }

  v28 = objc_allocWithZone(NSHTTPURLResponse);
  URL._bridgeToObjectiveC()(v29);
  v31 = v30;
  v32 = [v28 initWithURL:v30 statusCode:v21 HTTPVersion:0 headerFields:0];

  if (!v32)
  {
    __break(1u);
    return dispatch thunk of Clock.sleep(until:tolerance:)(v14, v15, v13, v16);
  }

  v33 = *(v0 + 352);
  v34 = *(v0 + 320);
  v35 = *(v0 + 296);

  v33(v34, v35);

  v36 = *(v0 + 8);
  v37 = *(v0 + 160);

  return v36(0, 0xF000000000000000, v32, v37);
}

uint64_t sub_1001B115C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    (*(v2 + 448))(*(v2 + 208), *(v2 + 184));
    v3 = sub_1001B13D4;
  }

  else
  {
    v5 = *(v2 + 224);
    v4 = *(v2 + 232);
    v6 = *(v2 + 216);
    (*(v2 + 448))(*(v2 + 208), *(v2 + 184));
    (*(v5 + 8))(v4, v6);
    v3 = sub_1001B12B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001B12B4()
{
  v1 = v0[48];

  v0[48] = v1 + 1;
  if (qword_1004A9E18 != -1)
  {
    swift_once();
  }

  v2 = v0[47];
  swift_beginAccess();
  v3 = static Network.urlSession;
  v0[49] = static Network.urlSession;
  v3;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_1001B0088;
  v5 = v0[40];

  return NSURLSession.data(for:delegate:)(v5, v2);
}

void sub_1001B13D4()
{
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  v1 = *(v0 + 472);
  v2 = *(v0 + 368);
  v3 = *(v0 + 360);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);

  v3(v4, v5);
  *(v0 + 136) = v1;
  swift_errorRetain();
  sub_1000039E8(&qword_1004AB0A0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 56);
    if ((v7 & 0xE0) == 0x80)
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v11 = *(v0 + 160);
        v10 = *(v0 + 168);
        v12 = swift_slowAlloc();
        *v12 = 134218496;
        *(v12 + 4) = v6;
        *(v12 + 12) = 2048;
        *(v12 + 14) = v11;
        *(v12 + 22) = 2048;
        *(v12 + 24) = v10;
        _os_log_impl(&_mh_execute_header, v8, v9, "Recieved %ld requested range not satisfiable for range (%llu-%llu)", v12, 0x20u);
      }

      v13 = objc_allocWithZone(NSHTTPURLResponse);
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      v17 = [v13 initWithURL:v15 statusCode:v6 HTTPVersion:0 headerFields:0];

      if (v17)
      {
        v18 = *(v0 + 352);
        v19 = *(v0 + 320);
        v20 = *(v0 + 296);

        v18(v19, v20);

        v21 = *(v0 + 8);
        v22 = *(v0 + 160);

        v21(0, 0xF000000000000000, v17, v22);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    v23 = *(v0 + 352);
    v24 = *(v0 + 320);
    v25 = *(v0 + 296);
    v26 = *(v0 + 48);

    sub_1001AEF18();
    swift_allocError();
    *v27 = v6;
    *(v27 + 8) = v26;
    *(v27 + 16) = v7;
    swift_willThrow();
    v23(v24, v25);
  }

  else
  {
    (*(v0 + 352))(*(v0 + 320), *(v0 + 296));
  }

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_1001B17AC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = kCFPreferencesAnyUser;
  v4 = kCFPreferencesAnyHost;
  v5 = a1;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  sub_1001C3CA0(isa, 0x746D6B6E696C7075, 0xE900000000000075, v2, v3, v4);

  return v5;
}

uint64_t sub_1001B1A38(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B1A60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001B1AA8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1001B1B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1001B1B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 17))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001B1B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1001B1BF8(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 16) = *(result + 16) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    *(result + 16) = -96;
  }

  return result;
}

unint64_t sub_1001B1C34()
{
  result = qword_1004AAFC0;
  if (!qword_1004AAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAFC0);
  }

  return result;
}

unint64_t sub_1001B1C88()
{
  result = qword_1004AAFC8;
  if (!qword_1004AAFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAFC8);
  }

  return result;
}

unint64_t sub_1001B1CDC()
{
  result = qword_1004AAFE0;
  if (!qword_1004AAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AAFE0);
  }

  return result;
}

unint64_t sub_1001B1D3C()
{
  result = qword_1004AB058;
  if (!qword_1004AB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB058);
  }

  return result;
}

uint64_t sub_1001B1D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B1DD8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 == 3)
  {
  }

  if (v3 != 2)
  {
    if (a3 >> 5)
    {
      return result;
    }
  }

  return sub_1001B1E00(result, a2, a3 & 1);
}

uint64_t sub_1001B1E00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001B1E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  return result;
}

uint64_t sub_1001B1E2C(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100189CAC;

  return sub_1001A69FC(a1, v5, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_1001B1FE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  sub_1001B1E14(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32));

  return _swift_deallocObject(v0, v5 + 34, v3 | 7);
}

uint64_t sub_1001B20D0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100001FE0;

  return sub_1001A6D20(a1, v5, v6, v7, v8, v1 + v4, v9);
}

void sub_1001B222C(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_100031914(a1, a2);
  }
}

id sub_1001B226C(id result, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_100031994(result, a2);

    return a3;
  }

  return result;
}

Swift::String_optional __swiftcall UInt32.name()()
{
  v1 = sub_1001B22FC(v0, &IORegistryEntryGetName);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall UInt32.className()()
{
  v1 = sub_1001B22FC(v0, &_IOObjectGetClass);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1001B22FC(uint64_t a1, unsigned int (*a2)(uint64_t, uint64_t))
{
  v4 = swift_slowAlloc();
  if (a2(a1, v4))
  {
    v5 = 0;
  }

  else
  {
    v5 = String.init(cString:)();
  }

  return v5;
}

Swift::UInt32_optional __swiftcall UInt32.parent()()
{
  parent = 0;
  ParentEntry = IORegistryEntryGetParentEntry(v0, "IOService", &parent);
  if (ParentEntry)
  {
    v2 = 0;
  }

  else
  {
    v2 = parent;
  }

  return (v2 | ((ParentEntry != 0) << 32));
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InterfaceFinder.validate(_:)(Swift::Int32 a1)
{
  if (a1)
  {
    sub_1001B2450();
    swift_allocError();
    *v2 = a1;
    swift_willThrow();
  }
}

unint64_t sub_1001B2450()
{
  result = qword_1004AB0C0;
  if (!qword_1004AB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB0C0);
  }

  return result;
}

char *InterfaceFinder.getEthernetInterfaceForParent(childClassName:parentClassName:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v6 = v5;
  v7 = v4;
  v11 = String.utf8CString.getter();
  v12 = IOServiceMatching((v11 + 32));

  if (!v12)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  v13 = String.utf8CString.getter();
  v14 = IOServiceMatching((v13 + 32));

  if (!v14)
  {
    goto LABEL_35;
  }

  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  [(__CFDictionary *)v12 setValue:v15 forKey:v16];
  v48 = v15;

  existing = 0;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000270B4(v17, qword_1004B00F8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v49 = a2;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000026C0(a1, a2, &v52);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_1000026C0(a3, a4, &v52);
    _os_log_impl(&_mh_execute_header, v18, v19, "Looking for node with class %s and parent class %s", v20, 0x16u);
    swift_arrayDestroy();
    v6 = v5;
  }

  v21 = v12;
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v21, &existing);
  (*(*v7 + 80))(MatchingServices);
  if (v6)
  {

    return a4;
  }

  v47 = v21;
  v23 = IOIteratorNext(existing);
  if (v23)
  {
    v24 = v23;
    a4 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v28 = swift_slowAlloc();
      if (IOObjectGetClass(v24, v28))
      {
      }

      else
      {
        v32 = String.init(cString:)();
        v34 = v33;

        if (v32 == a1 && v34 == v49)
        {

LABEL_25:
          v39 = (*(*v7 + 96))(v24);
          if (v40)
          {
            v41 = v39;
            v42 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a4 = sub_100011A4C(0, *(a4 + 2) + 1, 1, a4);
            }

            v44 = *(a4 + 2);
            v43 = *(a4 + 3);
            if (v44 >= v43 >> 1)
            {
              a4 = sub_100011A4C((v43 > 1), v44 + 1, 1, a4);
            }

            *(a4 + 2) = v44 + 1;
            v45 = &a4[16 * v44];
            *(v45 + 4) = v41;
            *(v45 + 5) = v42;
          }

          goto LABEL_13;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_25;
        }
      }

      v29 = swift_slowAlloc();
      if (IOObjectGetClass(v24, v29))
      {
        v30 = 0xE700000000000000;
        v31 = 0x6E776F6E6B6E55;
      }

      else
      {
        v31 = String.init(cString:)();
        v30 = v35;
      }

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v52 = v26;
        *v25 = 136315138;
        v27 = sub_1000026C0(v31, v30, &v52);

        *(v25 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v36, v37, "Skipping matched node with class: %s", v25, 0xCu);
        sub_100003C3C(v26);
      }

      else
      {
      }

LABEL_13:
      v24 = IOIteratorNext(existing);
      if (!v24)
      {
        goto LABEL_32;
      }
    }
  }

  a4 = &_swiftEmptyArrayStorage;
LABEL_32:
  IOObjectRelease(existing);

  return a4;
}

Swift::String_optional __swiftcall InterfaceFinder.getBSDName(forEntry:)(Swift::UInt32 forEntry)
{
  v2 = (*(*v1 + 104))(*&forEntry, 0x656D614E20445342, 0xE800000000000000, 1);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall InterfaceFinder.stringProperty(_:_:recursive:)(Swift::UInt32 _, Swift::String a2, Swift::Bool recursive)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = IORegistryEntrySearchCFProperty(_, "IOService", v5, kCFAllocatorDefault, recursive);

  if (v6)
  {
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t FirewallInstaller.lastError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  swift_errorRetain();
  return v1;
}

uint64_t FirewallInstaller.lastError.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

void *FirewallInstaller.__allocating_init(computer:interfaceFinder:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000027;
  v4[3] = 0x800000010043E380;
  v4[9] = a2;
  v4[10] = 0;
  sub_100003C88(a1, (v4 + 4));
  return v4;
}

void *FirewallInstaller.init(computer:interfaceFinder:)(__int128 *a1, uint64_t a2)
{
  v2[2] = 0xD000000000000027;
  v2[3] = 0x800000010043E380;
  v2[9] = a2;
  v2[10] = 0;
  sub_100003C88(a1, (v2 + 4));
  return v2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.findManagementNetworkInterfaceName()()
{
  v3 = *(v1 + 72);
  v4 = (*(*v3 + 88))(0xD000000000000013, 0x800000010043E3B0, 0xD000000000000015, 0x800000010043E3D0);
  if (!v2)
  {
    v3 = v4[2];
    if (v3 == 1)
    {
      v0 = v4[4];
      v3 = v4[5];
    }

    else
    {

      sub_1001B3B44();
      v0 = swift_allocError();
      *v5 = v3;
      swift_willThrow();
    }
  }

  v6 = v0;
  v7 = v3;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.performInterfaceSubstitutions(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v26 = a1;
  sub_10000B080();
  if (StringProtocol.contains<A>(_:)())
  {
    sub_1001B3B44();
    swift_allocError();
    *v5 = 0;
    v27 = *(*v1 + 144);
    v6 = v27();
    if (v2)
    {
      v24 = object;

      swift_errorRetain();
      if (qword_1004A9F20 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000270B4(v8, qword_1004B00F8);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 134218242;
        *(v11 + 4) = 1;
        *(v11 + 12) = 2112;
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 14) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Unable to find management network interface retry=%ld: %@", v11, 0x16u);
        sub_10019AC78(v12);
      }

      else
      {
      }

      v14 = [objc_opt_self() sleepForTimeInterval:0.5];
      v25 = (v27)(v14);
      object = v24;
    }

    else
    {
      v25 = v6;
    }

    v27 = v7;
    if (qword_1004A9F20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000270B4(v15, qword_1004B00F8);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26._countAndFlagsBits = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000026C0(v25, v27, &v26._countAndFlagsBits);
      _os_log_impl(&_mh_execute_header, v16, v17, "Found management network interface: %s", v18, 0xCu);
      sub_100003C3C(v19);
    }

    v26._countAndFlagsBits = countAndFlagsBits;
    v26._object = object;
    countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    object = v20;
  }

  else
  {
  }

  v21 = countAndFlagsBits;
  v22 = object;
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.installRules(_:)(Swift::OpaquePointer a1)
{
  sub_1000039E8(&qword_1004A6B48);
  sub_10004AF7C();
  v2 = BidirectionalCollection<>.joined(separator:)();
  (*(*v1 + 168))(v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FirewallInstaller.installRules(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for URL();
  v55 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FilePath();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = countAndFlagsBits;
  v15 = v1;
  v16 = v59;
  v17 = (*(*v1 + 152))(v14, object);
  v19 = v16;
  if (!v16)
  {
    v52 = 0;
    v53 = v8;
    v20 = v7;
    *&v54 = v18;
    v49 = v4;
    v50 = v6;
    v51 = v17;
    v21 = v1[7];
    v22 = v1[8];
    v59 = v1;
    sub_10000E2A8(v1 + 4, v21);
    (*(v22 + 312))(v56, v21, v22);
    v24 = v57;
    v23 = v58;
    sub_10000E2A8(v56, v57);
    if (qword_1004A9EA8 != -1)
    {
      swift_once();
    }

    v25 = sub_1000270B4(v20, kDInitFirewallRulesPath);
    v26 = v53;
    v27 = v25;
    (*(v53 + 16))(v11);
    FilePath.removingLastComponent()();
    v28 = v52;
    FileSystem.mkdirs(_:)(v13, v24, v23);
    if (!v28)
    {
      (*(v26 + 8))(v13, v20);
      sub_100003C3C(v56);
      v29 = v59;
      v30 = v59[7];
      v31 = v59[8];
      sub_10000E2A8(v59 + 4, v30);
      (*(v31 + 312))(v56, v30, v31);
      v32 = v57;
      v33 = v58;
      sub_10000E2A8(v56, v57);
      FileSystem.write(text:to:)(v51, v54, v27, v32, v33);
      v53 = v27;

      sub_100003C3C(v56);
      v35 = v50;
      URL.init(fileURLWithPath:)();
      v36 = v29[7];
      v37 = v29[8];
      sub_10000E2A8(v29 + 4, v36);
      sub_1000039E8(&qword_1004AAA18);
      v38 = swift_allocObject();
      v54 = xmmword_100376BB0;
      *(v38 + 16) = xmmword_100376BB0;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = &protocol witness table for String;
      *(v38 + 32) = 17965;
      *(v38 + 40) = 0xE200000000000000;
      *(v38 + 96) = &type metadata for String;
      *(v38 + 104) = &protocol witness table for String;
      *(v38 + 72) = 7105633;
      *(v38 + 80) = 0xE300000000000000;
      (*(v37 + 272))(v35, v38, v36, v37);

      v39 = v29[7];
      v40 = v29[8];
      v52 = sub_10000E2A8(v29 + 4, v39);
      v41 = swift_allocObject();
      *(v41 + 16) = v54;
      *(v41 + 56) = &type metadata for String;
      *(v41 + 64) = &protocol witness table for String;
      *(v41 + 32) = 26157;
      *(v41 + 40) = 0xE200000000000000;
      v42 = FilePath.string.getter();
      *(v41 + 96) = &type metadata for String;
      *(v41 + 104) = &protocol witness table for String;
      *(v41 + 72) = v42;
      *(v41 + 80) = v43;
      (*(v40 + 272))(v35, v41, v39, v40);

      v44 = v29[7];
      v45 = v29[8];
      sub_10000E2A8(v29 + 4, v44);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100376A40;
      *(v46 + 56) = &type metadata for String;
      *(v46 + 64) = &protocol witness table for String;
      *(v46 + 32) = 25901;
      *(v46 + 40) = 0xE200000000000000;
      v47 = v50;
      (*(v45 + 272))(v50, v46, v44, v45);

      (*(v55 + 8))(v47, v49);
      return;
    }

    (*(v26 + 8))(v13, v20);

    sub_100003C3C(v56);
    v15 = v59;
    v19 = v28;
  }

  v34 = *(*v15 + 120);
  swift_errorRetain();
  v34(v19);
  swift_willThrow();
}

Swift::Void __swiftcall FirewallInstaller.sendFirewallRulesInstalledEvent()()
{
  v0 = String.utf8CString.getter();
  notify_post((v0 + 32));
}

uint64_t FirewallInstaller.deinit()
{

  sub_100003C3C(v0 + 32);

  return v0;
}

uint64_t FirewallInstaller.__deallocating_deinit()
{

  sub_100003C3C(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1001B3B44()
{
  result = qword_1004AB0C8;
  if (!qword_1004AB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB0C8);
  }

  return result;
}

uint64_t sub_1001B3B98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_1001B3BE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);
  swift_errorRetain();
  return v3(v2);
}

uint64_t dispatch thunk of FirewallInstaller.installRules(_:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t sub_1001B3F28()
{
  sub_1001B40F8();

  return RawRepresentable<>.init(argument:)();
}

uint64_t sub_1001B3F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40F8();

  return ExpressibleByArgument<>.defaultValueDescription.getter(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_1001B3FF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40A4();
  v5 = sub_1001B40F8();

  return static ExpressibleByArgument<>.allValueStrings.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1001B4050(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001B40A4();

  return static ExpressibleByArgument<>.defaultCompletionKind.getter(a1, a2, v4);
}

unint64_t sub_1001B40A4()
{
  result = qword_1004AB280;
  if (!qword_1004AB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB280);
  }

  return result;
}

unint64_t sub_1001B40F8()
{
  result = qword_1004AB288;
  if (!qword_1004AB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB288);
  }

  return result;
}

uint64_t DInitPreferencesConfig.value.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t DInitPreferencesConfig.applicationId.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t DInitPreferencesConfig.applicationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Config.User.Authentication.Memento.ldapServer.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Config.User.Authentication.Memento.ldapServer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Config.Identification.localHostname.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Config.Identification.localHostname.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t DInitPreferencesConfig.init(key:value:applicationId:userName:hostName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v10 = *a3;
  *a9 = result;
  a9[1] = a2;
  a9[2] = v10;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

DarwinInit::DInitPreferencesConfig::CodingKeys_optional __swiftcall DInitPreferencesConfig.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100484E68, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t Config.PrefsVersionOneKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 7955819;
  v2 = 0x746163696C707061;
  v3 = 0x656D616E72657375;
  if (a1 != 3)
  {
    v3 = 0x656D616E74736F68;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x65756C6176;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001B4430(_BYTE *a1, _BYTE *a2)
{
  v2 = 7955819;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = *a2;
  v6 = 0x746163696C707061;
  v7 = 0xEE0064695F6E6F69;
  v8 = 0x656D616E72657375;
  if (v3 != 3)
  {
    v8 = 0x656D616E74736F68;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v7 = 0xE800000000000000;
  }

  v9 = 0x65756C6176;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v9 = 7955819;
  }

  if (*a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v3 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  v12 = 0xE300000000000000;
  v13 = 0x746163696C707061;
  v14 = 0xEE0064695F6E6F69;
  v15 = 0x656D616E72657375;
  if (v5 != 3)
  {
    v15 = 0x656D616E74736F68;
  }

  if (v5 != 2)
  {
    v13 = v15;
    v14 = 0xE800000000000000;
  }

  if (*a2)
  {
    v2 = 0x65756C6176;
    v12 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v16 = v2;
  }

  else
  {
    v16 = v13;
  }

  if (*a2 <= 1u)
  {
    v17 = v12;
  }

  else
  {
    v17 = v14;
  }

  if (v10 == v16 && v11 == v17)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

Swift::Int sub_1001B45BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B46A0()
{
  String.hash(into:)();
}

Swift::Int sub_1001B4770()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

DarwinInit::DInitPreferencesConfig::CodingKeys_optional sub_1001B4850@<W0>(Swift::String *a1@<X0>, DarwinInit::DInitPreferencesConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitPreferencesConfig.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void sub_1001B4880(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7955819;
  v5 = 0xEE0064695F6E6F69;
  v6 = 0x746163696C707061;
  v7 = 0x656D616E72657375;
  if (v2 != 3)
  {
    v7 = 0x656D616E74736F68;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x65756C6176;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1001B4920()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x746163696C707061;
  v4 = 0x656D616E72657375;
  if (v1 != 3)
  {
    v4 = 0x656D616E74736F68;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

DarwinInit::DInitPreferencesConfig::CodingKeys_optional sub_1001B49BC@<W0>(uint64_t a1@<X0>, DarwinInit::DInitPreferencesConfig::CodingKeys_optional *a2@<X8>)
{
  result.value = DInitPreferencesConfig.CodingKeys.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1001B49E4(uint64_t a1)
{
  v2 = sub_1001B53C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B4A20(uint64_t a1)
{
  v2 = sub_1001B53C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitPreferencesConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AB290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001B53C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C3C(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v10;
  LOBYTE(v30) = 1;
  sub_1001B5418();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v35[0];
  LOBYTE(v35[0]) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v11;
  LOBYTE(v35[0]) = 3;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v12;
  v36 = 4;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v28;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  *&v31 = v28;
  *(&v31 + 1) = v26;
  v18 = v27;
  *&v32 = v27;
  *(&v32 + 1) = v24;
  v19 = v25;
  *&v33 = v25;
  *(&v33 + 1) = v16;
  v34 = v15;
  *(a2 + 64) = v15;
  v20 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  sub_1001B546C(&v30, v35);
  sub_100003C3C(a1);
  v35[0] = v9;
  v35[1] = v29;
  v35[2] = v17;
  v35[3] = v26;
  v35[4] = v18;
  v35[5] = v24;
  v35[6] = v19;
  v35[7] = v16;
  v35[8] = v15;
  return sub_1001B54A4(v35);
}

uint64_t DInitPreferencesConfig.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB2A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[6] = v1[3];
  v13 = v7;
  v8 = v1[4];
  v12[4] = v1[5];
  v12[5] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v1[8];
  v12[3] = v9;
  sub_10000E2A8(a1, a1[3]);
  sub_1001B53C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v10 = v14;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v15 = v13;
    v19 = 1;
    sub_1001B54D4();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v18 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void DInitPreferencesConfig.hash(into:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[6];
  v5 = v1[8];
  String.hash(into:)();
  JSON.hash(into:)(a1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitPreferencesConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitPreferencesConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B51F4()
{
  Hasher.init(_seed:)();
  DInitPreferencesConfig.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit22DInitPreferencesConfigV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v14 = a2[7];
  v15 = a1[7];
  v16 = a2[8];
  v17 = a1[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v7;
  v19 = v2;

  v12 = _s10DarwinInit4JSONO2eeoiySbAC_ACtFZ_0(&v19, &v18);

  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9 || (v3 != v8 || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v5 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v17)
  {
    if (v16 && (v15 == v14 && v17 == v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1001B53C4()
{
  result = qword_1004AB298;
  if (!qword_1004AB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB298);
  }

  return result;
}

unint64_t sub_1001B5418()
{
  result = qword_1004AB2A0;
  if (!qword_1004AB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2A0);
  }

  return result;
}

unint64_t sub_1001B54D4()
{
  result = qword_1004AB2B0;
  if (!qword_1004AB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2B0);
  }

  return result;
}

unint64_t sub_1001B552C()
{
  result = qword_1004AB2B8;
  if (!qword_1004AB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2B8);
  }

  return result;
}

unint64_t sub_1001B5584()
{
  result = qword_1004AB2C0;
  if (!qword_1004AB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2C0);
  }

  return result;
}

unint64_t sub_1001B55DC()
{
  result = qword_1004AB2C8;
  if (!qword_1004AB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2C8);
  }

  return result;
}

unint64_t sub_1001B5634()
{
  result = qword_1004AB2D0;
  if (!qword_1004AB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2D0);
  }

  return result;
}

uint64_t sub_1001B5688(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

__n128 sub_1001B56A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001B56CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001B5714(uint64_t result, int a2, int a3)
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

uint64_t static PerformanceData.writeStats(to:)(char *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1001B57DC(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1001B57DC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v135 = a2;
  v125 = a1;
  v2 = type metadata accessor for URL.DirectoryHint();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v131 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v4 - 8);
  v134 = &v118 - v5;
  v6 = sub_1000039E8(&qword_1004A9CF8);
  __chkstk_darwin(v6 - 8);
  v8 = &v118 - v7;
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v118 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v118 - v16;
  __chkstk_darwin(v15);
  v19 = &v118 - v18;
  v123 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  FilePath.init(stringLiteral:)();
  *&v137.f_bsize = 0;
  v137.f_blocks = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v20 = v9;
  *&v137.f_bsize = 0xD000000000000029;
  v137.f_blocks = 0x800000010043E4D0;
  v128 = sub_100190550();
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);
  v22 = v10;

  v23 = *&v137.f_bsize;
  f_blocks = v137.f_blocks;
  FilePath.init(stringLiteral:)();
  (*(v22 + 56))(v8, 0, 1, v20);
  LOBYTE(v23) = static Subprocess.run(shell:command:savingStandardOutTo:)(0, 0, v23, f_blocks, v8);
  sub_100013F2C(v8, &qword_1004A9CF8);
  if ((v23 & 1) == 0)
  {
    (*(v22 + 8))(v19, v20);

LABEL_7:
    *v135 = 0;
    return result;
  }

  v127 = f_blocks;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_1000270B4(v25, qword_1004B00F8);
  v27 = v19;
  v121 = *(v22 + 16);
  v122 = v22 + 16;
  v121(v17, v19, v20);
  v126 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v129 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v137.f_bsize = v32;
    *v31 = 136315138;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v119 = v27;
    v34 = v20;
    v36 = v35;
    v120 = *(v129 + 8);
    v120(v17, v34);
    v37 = sub_1000026C0(v33, v36, &v137);
    v20 = v34;
    v27 = v119;

    *(v31 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loading raw data of file at %s", v31, 0xCu);
    sub_100003C3C(v32);
  }

  else
  {

    v120 = *(v22 + 8);
    v120(v17, v20);
  }

  v39 = v136;
  v40 = v130;
  v121(v130, v27, v20);
  v41 = v131;
  (*(v132 + 104))(v131, enum case for URL.DirectoryHint.inferFromPath(_:), v133);
  v42 = v134;
  sub_1001746A8(v40, v41, v134);
  v43 = type metadata accessor for URL();
  v44 = *(v43 - 8);
  result = (*(v44 + 48))(v42, 1, v43);
  if (result == 1)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v45 = Data.init(contentsOf:options:)();
  if (v39)
  {
    (*(v44 + 8))(v42, v43);

    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v134 = v20;
      v50 = v49;
      v51 = swift_slowAlloc();
      *&v137.f_bsize = v51;
      *v50 = 136315138;
      swift_getErrorValue();
      v52 = Error.localizedDescription.getter();
      v54 = v27;
      v55 = sub_1000026C0(v52, v53, &v137);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v47, v48, "Read of footprint stdout failed, %s", v50, 0xCu);
      sub_100003C3C(v51);

LABEL_13:

      v56 = v54;
      v57 = v134;
LABEL_19:
      result = (v120)(v56, v57);
      *v135 = 0;
      return result;
    }

    v56 = v27;
    goto LABEL_18;
  }

  v58 = v46;
  v133 = v45;
  (*(v44 + 8))(v42, v43);
  v54 = v27;
  FilePath.remove()();
  v132 = v58;
  if (v59)
  {
    v136 = 0;
    swift_errorRetain();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v134 = v20;
      v63 = v62;
      v64 = swift_slowAlloc();
      *&v137.f_bsize = v64;
      *v63 = 136315138;
      swift_getErrorValue();
      v65 = Error.localizedDescription.getter();
      v67 = sub_1000026C0(v65, v66, &v137);

      *(v63 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v60, v61, "Unable to delete the footprint.json, %s", v63, 0xCu);
      sub_100003C3C(v64);

      v20 = v134;
    }

    else
    {
    }
  }

  else
  {
    v136 = 0;
  }

  v68 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v138 = 0;
  v70 = [v68 JSONObjectWithData:isa options:1 error:&v138];

  v71 = v138;
  if (!v70)
  {
    v75 = v71;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v47 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v47, v76))
    {
      v77 = swift_slowAlloc();
      v134 = v20;
      v78 = v77;
      v79 = swift_slowAlloc();
      *&v137.f_bsize = v79;
      *v78 = 136315138;
      swift_getErrorValue();
      v80 = Error.localizedDescription.getter();
      v82 = sub_1000026C0(v80, v81, &v137);

      *(v78 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v47, v76, "Parse of footprint failed, %s", v78, 0xCu);
      sub_100003C3C(v79);

      sub_100031928(v133, v132);
      goto LABEL_13;
    }

    sub_100031928(v133, v132);

    v56 = v54;
LABEL_18:
    v57 = v20;
    goto LABEL_19;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001B6A5C();
  swift_dynamicCast();
  v72 = v138;
  *&v138 = 0x6F66206C61746F74;
  *(&v138 + 1) = 0xEF746E697270746FLL;
  v73 = v72;
  v74 = [v73 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v131 = v73;

  if (v74)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v138 = 0u;
    v139 = 0u;
  }

  *&v137.f_bsize = v138;
  *&v137.f_bfree = v139;
  if (!*(&v139 + 1))
  {

    sub_100013F2C(&v137, &qword_1004A8398);
LABEL_38:
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v132;
    if (v94)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Parse of footprint failed to find total footprint", v96, 2u);
    }

    sub_100031928(v133, v95);

    v97 = v54;
    v98 = v20;
    goto LABEL_41;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_38;
  }

  v134 = v20;
  v83 = proc_listallpids(0, 0);
  if (v83 < 1)
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 67109120;
      *(v101 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v99, v100, "Unable to list all pids, %d", v101, 8u);
    }

    sub_100031928(v133, v132);

    v97 = v54;
    v98 = v134;
LABEL_41:
    result = (v120)(v97, v98);
    goto LABEL_7;
  }

  v84 = v83;
  v85 = 4 * v83;
  v86 = swift_slowAlloc();
  if (v84 >> 29)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  v87 = v86;
  if (proc_listallpids(v86, v85) < 1)
  {

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = errno.getter();
      v91 = "Unable to list all pids, %d";
      goto LABEL_48;
    }

LABEL_49:

    *v135 = 0;

    sub_100031928(v133, v132);

    v102 = v54;
    return (v120)(v102, v134);
  }

  bzero(&v137, 0x878uLL);
  if (statfs("/", &v137))
  {

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = errno.getter();
      v91 = "Unable to statfs /, %d";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v88, v89, v91, v90, 8u);

      goto LABEL_49;
    }

    goto LABEL_49;
  }

  v119 = v54;
  if (v137.f_blocks < v137.f_bfree)
  {
    goto LABEL_64;
  }

  v130 = v87;
  v103 = v125;
  if (!is_mul_ok(v137.f_bsize, v137.f_blocks - v137.f_bfree))
  {
    goto LABEL_65;
  }

  FilePath.description.getter();
  String.utf8CString.getter();

  v104 = pdwriter_open();

  if (!v104)
  {

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 67109120;
      *(v117 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v115, v116, "Unable to open pdwriter, %d", v117, 8u);
    }

    *v135 = 0;

    sub_100031928(v133, v132);

    v102 = v119;
    return (v120)(v102, v134);
  }

  if (!pdunit_bytes)
  {
    goto LABEL_67;
  }

  pdwriter_new_value();
  v138 = xmmword_1003F6300;
  result = pdwriter_new_value();
  if (!pdunit_seconds)
  {
LABEL_68:
    __break(1u);
    return result;
  }

  pdwriter_new_value();
  pdwriter_new_value();
  pdwriter_close();
  v105 = v124;
  v106 = v134;
  v121(v124, v103, v134);
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v138 = v127;
    *v109 = 136315138;
    v110 = dispatch thunk of CustomStringConvertible.description.getter();
    v112 = v111;
    v113 = v120;
    v120(v105, v134);
    v114 = sub_1000026C0(v110, v112, &v138);

    *(v109 + 4) = v114;
    _os_log_impl(&_mh_execute_header, v107, v108, "PD Stats written to %s", v109, 0xCu);
    sub_100003C3C(v127);
    v106 = v134;
  }

  else
  {

    v113 = v120;
    v120(v105, v106);
  }

  *v135 = 1;

  sub_100031928(v133, v132);

  return v113(v119, v106);
}

unint64_t sub_1001B6A5C()
{
  result = qword_1004AB2D8;
  if (!qword_1004AB2D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004AB2D8);
  }

  return result;
}

uint64_t DInitAppleAuthenticationConfig.ldapServer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Config.Root.root.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DInitInstallConfig.root.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t DInitInstallConfig.root.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Config.Cryptex.Cache.invalidationId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Config.Identification.usageLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Config.Identification.usageLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_1001B6CA0()
{
  v1 = 0x56726F4674696177;
  v2 = 1953460082;
  if (*v0 != 3)
  {
    v2 = 0x67696C6674736F70;
  }

  if (*v0)
  {
    v1 = 0x6867696C66657270;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001B6D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B752C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B6DA8(uint64_t a1)
{
  v2 = sub_1001B7CA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B6DE4(uint64_t a1)
{
  v2 = sub_1001B7CA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void __swiftcall DInitInstallConfig.init()(DarwinInit::DInitInstallConfig *__return_ptr retstr)
{
  retstr->postflight = 0u;
  retstr->postflightShell = 0u;
  retstr->preflightShell = 0u;
  retstr->root = 0u;
  retstr->waitForVolume = 0u;
  retstr->preflight = 0u;
}

void __swiftcall DInitInstallConfig.init(waitForVolume:preflight:preflightShell:root:postflight:postflightShell:)(DarwinInit::DInitInstallConfig *__return_ptr retstr, Swift::String_optional waitForVolume, Swift::String_optional preflight, Swift::String_optional preflightShell, Swift::String_optional root, Swift::String_optional postflight, Swift::String_optional postflightShell)
{
  retstr->waitForVolume = waitForVolume;
  retstr->preflight = preflight;
  retstr->preflightShell = preflightShell;
  retstr->root = root;
  retstr->postflight = postflight;
  retstr->postflightShell = postflightShell;
}

double DInitInstallConfig.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001B7748(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t DInitInstallConfig.encode(to:)(void *a1)
{
  v3 = sub_1000039E8(&qword_1004AB2E0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000E2A8(a1, a1[3]);
  sub_1001B7CA0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1001B70C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s10DarwinInit18DInitInstallConfigV2eeoiySbAC_ACtFZ_0(v9, v10) & 1;
}

void DInitInstallConfig.hash(into:)()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[3])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  Hasher._combine(_:)(0);
  if (v0[5])
  {
LABEL_4:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[7])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  Hasher._combine(_:)(0);
  if (v0[7])
  {
LABEL_5:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    if (v0[11])
    {
      goto LABEL_7;
    }

LABEL_15:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_13:
  Hasher._combine(_:)(0);
  if (!v0[9])
  {
    goto LABEL_14;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v0[11])
  {
    goto LABEL_15;
  }

LABEL_7:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int DInitInstallConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitInstallConfig.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001B72D8()
{
  Hasher.init(_seed:)();
  DInitInstallConfig.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s10DarwinInit18DInitInstallConfigV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    if (a1[8] != a2[8] || v27 != v28)
    {
      v29 = a1;
      v30 = a2;
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v30;
      v32 = v31;
      a1 = v29;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v28)
  {
    return 0;
  }

  v33 = a1[11];
  v34 = a2[11];
  if (v33)
  {
    if (v34 && (a1[10] == a2[10] && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v34)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001B752C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726F4674696177 && a2 == 0xED0000656D756C6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE006C6C65685374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953460082 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEA00000000007468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x67696C6674736F70 && a2 == 0xEF6C6C6568537468)
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

uint64_t sub_1001B7748@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000039E8(&qword_1004AB310);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = a1[3];
  v44 = a1;
  sub_10000E2A8(a1, v9);
  sub_1001B7CA0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v45 = v2;
    v43 = 0;
    sub_100003C3C(v44);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v43;
    v62 = 0;
    v63 = 0;
    return sub_1001B7F58(&v52);
  }

  else
  {
    LOBYTE(v52) = 0;
    *&v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(&v42 + 1) = v11;
    LOBYTE(v52) = 1;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v12;
    LOBYTE(v52) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v14;
    LOBYTE(v52) = 3;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v16;
    v37 = a2;
    LOBYTE(v52) = 4;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v18;
    v64 = 5;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = 0;
    v20 = v19;
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    v46 = v42;
    v24 = *(&v42 + 1);
    *&v47 = v41;
    v25 = v40;
    *(&v47 + 1) = v40;
    *&v48 = v13;
    v36 = v13;
    v26 = v39;
    *(&v48 + 1) = v39;
    *&v49 = v15;
    v35 = v15;
    v27 = v38;
    *(&v49 + 1) = v38;
    *&v50 = v17;
    v28 = v17;
    v29 = v43;
    *(&v50 + 1) = v43;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    sub_1001B7F88(&v46, &v52);
    sub_100003C3C(v44);
    v52 = v23;
    v53 = v24;
    v54 = v41;
    v55 = v25;
    v56 = v36;
    v57 = v26;
    v58 = v35;
    v59 = v27;
    v60 = v28;
    v61 = v29;
    v62 = v20;
    v63 = v22;
    result = sub_1001B7F58(&v52);
    v30 = v49;
    v31 = v37;
    v37[2] = v48;
    v31[3] = v30;
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
  }

  return result;
}

unint64_t sub_1001B7CA0()
{
  result = qword_1004AB2E8;
  if (!qword_1004AB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2E8);
  }

  return result;
}

unint64_t sub_1001B7CF8()
{
  result = qword_1004AB2F0;
  if (!qword_1004AB2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2F0);
  }

  return result;
}

__n128 sub_1001B7D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1001B7D68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1001B7DC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1001B7E54()
{
  result = qword_1004AB2F8;
  if (!qword_1004AB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB2F8);
  }

  return result;
}

unint64_t sub_1001B7EAC()
{
  result = qword_1004AB300;
  if (!qword_1004AB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB300);
  }

  return result;
}

unint64_t sub_1001B7F04()
{
  result = qword_1004AB308;
  if (!qword_1004AB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB308);
  }

  return result;
}

uint64_t DInitPackageConfig.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DInitPackageConfig.url.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DInitCryptexConfig.variant.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig() + 20));

  return v1;
}

uint64_t type metadata accessor for DInitCryptexConfig()
{
  result = qword_1004AB3F0;
  if (!qword_1004AB3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DInitCryptexConfig.variant.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.size.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig();
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.sha256.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig() + 28));

  return v1;
}

uint64_t DInitCryptexConfig.sha256.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.auth.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.dawToken.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t DInitCryptexConfig.dawToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 36));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DInitCryptexConfig.oidcToken.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t DInitCryptexConfig.oidcToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 40));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DInitCryptexConfig.wgUsername.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig() + 44));

  return v1;
}

uint64_t DInitCryptexConfig.wgUsername.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.wgToken.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 48));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t DInitCryptexConfig.wgToken.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DInitCryptexConfig() + 48));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t DInitCryptexConfig.alternateCDNHost.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig() + 52));

  return v1;
}

uint64_t DInitCryptexConfig.alternateCDNHost.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.backgroundTrafficClass.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.networkRetryCount.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig();
  v6 = v2 + *(result + 60);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.appleConnect.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.cacheable.setter(char a1)
{
  result = type metadata accessor for DInitCryptexConfig();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t DInitCryptexConfig.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DInitCryptexConfig() + 72));

  return v1;
}

uint64_t DInitCryptexConfig.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DInitCryptexConfig() + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DInitCryptexConfig.aeaDecryptionParams.getter()
{
  v1 = (v0 + *(type metadata accessor for DInitCryptexConfig() + 76));
  v2 = *v1;
  sub_1001B8BB0(*v1, v1[1]);
  return v2;
}

uint64_t sub_1001B8BB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t DInitCryptexConfig.aeaDecryptionParams.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + *(type metadata accessor for DInitCryptexConfig() + 76));
  result = sub_1001B8C54(*v9, v9[1]);
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_1001B8C54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t DInitCryptexConfig.maxActiveTasks.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig();
  v6 = v2 + *(result + 80);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.chunkSize.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for DInitCryptexConfig();
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t DInitCryptexConfig.originalKnoxUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DInitCryptexConfig() + 88);

  return sub_10001FB20(v3, a1);
}

uint64_t DInitCryptexConfig.originalKnoxUrl.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DInitCryptexConfig() + 88);

  return sub_100013EBC(a1, v3);
}

uint64_t DInitCryptexConfig.init(url:variant:size:sha256:auth:dawToken:oidcToken:wgUsername:wgToken:alternateCDNHost:backgroundTrafficClass:networkRetryCount:appleConnect:cacheable:identifier:aeaDecryptionParams:maxActiveTasks:chunkSize:originalKnoxUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31)
{
  v34 = *a10;
  v33 = a10[1];
  v36 = *a11;
  v35 = a11[1];
  v37 = *a14;
  v38 = a14[1];
  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 32))(a9, a1, v39);
  v40 = type metadata accessor for DInitCryptexConfig();
  v41 = (a9 + v40[5]);
  *v41 = a2;
  v41[1] = a3;
  v42 = a9 + v40[6];
  *v42 = a4;
  *(v42 + 8) = a5 & 1;
  v43 = (a9 + v40[7]);
  *v43 = a6;
  v43[1] = a7;
  *(a9 + v40[8]) = a8;
  v44 = (a9 + v40[9]);
  *v44 = v34;
  v44[1] = v33;
  v45 = (a9 + v40[10]);
  *v45 = v36;
  v45[1] = v35;
  v46 = (a9 + v40[11]);
  *v46 = a12;
  v46[1] = a13;
  v47 = (a9 + v40[12]);
  *v47 = v37;
  v47[1] = v38;
  v48 = (a9 + v40[13]);
  *v48 = a15;
  v48[1] = a16;
  *(a9 + v40[14]) = a17;
  v49 = a9 + v40[15];
  *v49 = a18;
  *(v49 + 8) = a19 & 1;
  *(a9 + v40[16]) = a20;
  *(a9 + v40[17]) = a21;
  v50 = (a9 + v40[18]);
  *v50 = a22;
  v50[1] = a23;
  v51 = a9 + v40[19];
  *(v51 + 16) = a25;
  *(v51 + 24) = a26;
  *v51 = a24;
  v52 = a9 + v40[20];
  *v52 = a27;
  *(v52 + 8) = a28 & 1;
  v53 = a9 + v40[21];
  *v53 = a29;
  *(v53 + 8) = a30 & 1;
  v54 = a9 + v40[22];

  return sub_10007AA3C(a31, v54);
}

unint64_t sub_1001B91C4(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x746E6169726176;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x363532616873;
      break;
    case 4:
      result = 1752462689;
      break;
    case 5:
      result = 0x656B6F745F776164;
      break;
    case 6:
      result = 0x6B6F745F6364696FLL;
      break;
    case 7:
      result = 0x6E726573755F6777;
      break;
    case 8:
      result = 0x6E656B6F745F6777;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6F635F656C707061;
      break;
    case 13:
      result = 0x6C62616568636163;
      break;
    case 14:
      result = 0x696669746E656469;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x69735F6B6E756863;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B9444(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = DInitCryptexConfig.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == DInitCryptexConfig.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001B94CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitCryptexConfig.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B9530()
{
  DInitCryptexConfig.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001B9584()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  DInitCryptexConfig.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B95E4@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1001B9614@<X0>(uint64_t *a1@<X8>)
{
  result = DInitCryptexConfig.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001B9648@<X0>(_BYTE *a1@<X8>)
{
  result = _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1001B967C(uint64_t a1)
{
  v2 = sub_1001BBA18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B96B8(uint64_t a1)
{
  v2 = sub_1001BBA18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DInitCryptexConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v3 - 8);
  v5 = v79 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v86 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000039E8(&qword_1004AB318);
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  __chkstk_darwin(v9);
  v12 = v79 - v11;
  v13 = type metadata accessor for DInitCryptexConfig();
  v14 = __chkstk_darwin(v13);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v16[v14[9]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v93 = v17;
  v18 = &v16[v14[10]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v92 = v18;
  v19 = &v16[v14[12]];
  *v19 = 0;
  *(v19 + 1) = 0;
  v91 = v19;
  v20 = *(v7 + 56);
  v90 = v14[22];
  v95 = v16;
  v20(&v16[v90], 1, 1, v6);
  sub_10000E2A8(a1, a1[3]);
  sub_1001BBA18();
  v89 = v12;
  v21 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v94 = v21;
    sub_100003C3C(a1);
    swift_bridgeObjectRelease_n();
    v25 = 0;
    v26 = 0;
    v27 = v95;
LABEL_4:

    sub_1001B8C54(v25, v26);
    return sub_100013F2C(&v27[v90], &qword_1004A6D30);
  }

  v83 = v5;
  v84 = v13;
  LOBYTE(v96) = 0;
  v22 = sub_1001BC574(&qword_1004A90E0, &type metadata accessor for URL);
  v24 = v86;
  v23 = v87;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v95;
  (*(v7 + 32))(v95, v24, v6);
  LOBYTE(v96) = 1;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v81 = v6;
  v82 = a1;
  v31 = v88;
  v79[1] = v22;
  v32 = v84;
  v33 = &v29[v84[5]];
  *v33 = v30;
  v33[1] = v34;
  v79[2] = v34;
  LOBYTE(v96) = 2;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = &v29[v32[6]];
  *v36 = v35;
  v36[8] = v37 & 1;
  v100 = 3;
  sub_1001BBA6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v38 = &v29[v32[7]];
  v39 = v97;
  *v38 = v96;
  v38[1] = v39;
  v100 = 4;
  sub_1001BBAC0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v79[0] = v39;
  v29[v32[8]] = v96;
  v100 = 5;
  sub_1001BBB14();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  v40 = v96;
  v41 = v97;
  v42 = v93;

  *v42 = v40;
  *(v42 + 1) = v41;
  v100 = 6;
  v43 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v43)
  {
    v94 = v43;
    (*(v31 + 8))(v89, v23);
    v25 = 0;
    v26 = 0;
    v86 = 0;
    v80 = 0;
LABEL_5:
    sub_100003C3C(v82);
    v27 = v95;
    (*(v7 + 8))(v95, v81);

    goto LABEL_4;
  }

  v44 = v96;
  v45 = v97;
  v46 = v92;

  *v46 = v44;
  *(v46 + 1) = v45;
  LOBYTE(v96) = 7;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v48 = &v95[v32[11]];
  *v48 = v47;
  v48[1] = v49;
  v80 = v49;
  v100 = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  v51 = v96;
  v50 = v97;
  v52 = v91;

  *v52 = v51;
  *(v52 + 1) = v50;
  LOBYTE(v96) = 9;
  v53 = v94;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v55;
  v94 = v53;
  if (v53)
  {
    (*(v88 + 8))(v89, v87);
    v25 = 0;
    v26 = 0;
    v86 = 0;
    goto LABEL_5;
  }

  v56 = &v95[v84[13]];
  v57 = v86;
  *v56 = v54;
  v56[1] = v57;
  LOBYTE(v96) = 10;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[14]] = v58;
  LOBYTE(v96) = 11;
  v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v60 = &v95[v84[15]];
  *v60 = v59;
  v60[8] = v61 & 1;
  LOBYTE(v96) = 12;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[16]] = v62;
  LOBYTE(v96) = 13;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v95[v84[17]] = v63;
  LOBYTE(v96) = 14;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v65 = &v95[v84[18]];
  *v65 = v64;
  v65[1] = v66;
  v100 = 15;
  sub_1001BBB68();
  v67 = v94;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = v67;
  if (v67)
  {
    (*(v88 + 8))(v89, v87);
    v25 = 0;
    v26 = 0;
    goto LABEL_5;
  }

  v25 = v96;
  v68 = &v95[v84[19]];
  v26 = v97;
  v69 = v98;
  v70 = v99;
  *v68 = v96;
  v68[1] = v26;
  v68[2] = v69;
  v68[3] = v70;
  LOBYTE(v96) = 16;
  v71 = v94;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = v71;
  if (v71)
  {
    (*(v88 + 8))(v89, v87);
    goto LABEL_5;
  }

  v74 = &v95[v84[20]];
  *v74 = v72;
  v74[8] = v73 & 1;
  LOBYTE(v96) = 17;
  v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v94 = 0;
  v76 = &v95[v84[21]];
  *v76 = v75;
  v76[8] = v77 & 1;
  LOBYTE(v96) = 18;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v94 = 0;
  (*(v88 + 8))(v89, v87);
  v78 = v95;
  sub_100013EBC(v83, &v95[v90]);
  sub_1001BBBBC(v78, v85);
  sub_100003C3C(v82);
  return sub_1001BBC20(v78);
}

uint64_t DInitCryptexConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000039E8(&qword_1004AB348);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  sub_10000E2A8(a1, a1[3]);
  sub_1001BBA18();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v21) = 0;
  type metadata accessor for URL();
  sub_1001BC574(&qword_1004A9058, &type metadata accessor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DInitCryptexConfig();
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + v9[7]);
    v23 = 3;
    sub_1001BBC7C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = *(v3 + v9[8]);
    v23 = 4;
    sub_1001BBCD0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = (v3 + v9[9]);
    v11 = v10[1];
    *&v21 = *v10;
    *(&v21 + 1) = v11;
    v23 = 5;
    v12 = sub_1001BBD24();

    v20[1] = v12;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    v13 = (v3 + v9[10]);
    v14 = v13[1];
    *&v21 = *v13;
    *(&v21 + 1) = v14;
    v23 = 6;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v21) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + v9[12]);
    v17 = v16[1];
    *&v21 = *v16;
    *(&v21 + 1) = v17;
    v23 = 8;

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v21) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v9[19]);
    v19 = v18[1];
    v21 = *v18;
    v22 = v19;
    v23 = 15;
    sub_1001BBD78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v21) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v21) = 18;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void DInitCryptexConfig.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v6 - 8);
  v27 = v26 - v7;
  v26[2] = sub_1001BC574(&qword_1004AB370, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v8 = type metadata accessor for DInitCryptexConfig();
  if (*(v0 + v8[5] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = v0 + v8[6];
  if (*(v9 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *v9;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v10);
  }

  if (*(v0 + v8[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = *(v0 + v8[8]);
  if (v11 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(v0 + v8[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[10] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[11] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[12] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v0 + v8[13] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = *(v0 + v8[14]);
  if (v12 == 2)
  {
    v13 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v13 = v12 & 1;
  }

  Hasher._combine(_:)(v13);
  v14 = v0 + v8[15];
  if (*(v14 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v15 = *v14;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v15);
  }

  v16 = *(v0 + v8[16]);
  if (v16 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v16 & 1;
  }

  Hasher._combine(_:)(v17);
  v18 = *(v0 + v8[17]);
  if (v18 == 2)
  {
    v19 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v19 = v18 & 1;
  }

  Hasher._combine(_:)(v19);
  if (*(v0 + v8[18] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = v0 + v8[19];
  if (*(v20 + 8))
  {
    v26[1] = *(v20 + 24);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v21 = v0 + v8[20];
  if (*(v21 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *v21;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22);
  }

  v23 = v0 + v8[21];
  if (*(v23 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = *v23;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v24);
  }

  v25 = v27;
  sub_10001FB20(v1 + v8[22], v27);
  if ((*(v3 + 48))(v25, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v25, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int DInitCryptexConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001BAEA8()
{
  Hasher.init(_seed:)();
  DInitCryptexConfig.hash(into:)();
  return Hasher._finalize()();
}

BOOL _s10DarwinInit18DInitCryptexConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v132[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000039E8(&qword_1004A6D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v132[-v9];
  v11 = sub_1000039E8(&qword_1004AB4A0);
  __chkstk_darwin(v11);
  v13 = &v132[-v12];
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for DInitCryptexConfig();
  v15 = v14[5];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20)
    {
      v21 = v14;
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v14[6];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = *(a2 + v23 + 8);
  if (v25)
  {
    if (!v27)
    {
      return v27;
    }
  }

  else
  {
    if (*v24 != *v26)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v28 = v14[7];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v33 = v14;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v33;
      if ((v34 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v35 = v14[8];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (v36 == 4)
  {
    if (v37 != 4)
    {
      return 0;
    }
  }

  else
  {
    if (v37 == 4)
    {
      return 0;
    }

    v38 = 0x7573746174;
    if (v36 > 1)
    {
      if (v36 == 2)
      {
        v39 = 0xE700000000000000;
        v40 = 0x79726F74636166;
      }

      else
      {
        v39 = 0xE400000000000000;
        v40 = 1701736302;
      }
    }

    else if (v36)
    {
      v39 = 0xE600000000000000;
      v40 = 0x6F6C76616964;
    }

    else
    {
      v39 = 0xE500000000000000;
      v40 = 0x7573746174;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v41 = 0xE700000000000000;
        v38 = 0x79726F74636166;
      }

      else
      {
        v41 = 0xE400000000000000;
        v38 = 1701736302;
      }
    }

    else if (v37)
    {
      v41 = 0xE600000000000000;
      v38 = 0x6F6C76616964;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    v141 = v14;
    if (v40 == v38 && v39 == v41)
    {

      v14 = v141;
    }

    else
    {
      LODWORD(v140) = _stringCompareWithSmolCheck(_:_:expecting:)();

      v14 = v141;
      if ((v140 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v42 = v14[9];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_76;
    }

    if (*v43 != *v45 || v44 != v46)
    {
      v47 = v14;
      v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v47;
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v46)
    {
      goto LABEL_76;
    }

    v49 = v14;

    v14 = v49;
  }

  v50 = v14[10];
  v51 = (a1 + v50);
  v52 = *(a1 + v50 + 8);
  v53 = (a2 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54)
    {
      goto LABEL_76;
    }

    if (*v51 != *v53 || v52 != v54)
    {
      v55 = v14;
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v55;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v54)
    {
      goto LABEL_76;
    }

    v57 = v14;

    v14 = v57;
  }

  v58 = v14[11];
  v59 = (a1 + v58);
  v60 = *(a1 + v58 + 8);
  v61 = (a2 + v58);
  v62 = v61[1];
  if (v60)
  {
    if (!v62)
    {
      return 0;
    }

    if (*v59 != *v61 || v60 != v62)
    {
      v63 = v14;
      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v63;
      if ((v64 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v62)
  {
    return 0;
  }

  v65 = v14[12];
  v66 = (a1 + v65);
  v67 = *(a1 + v65 + 8);
  v68 = (a2 + v65);
  v69 = v68[1];
  if (!v67)
  {
    if (!v69)
    {
      v73 = v14;

      v14 = v73;
      goto LABEL_81;
    }

LABEL_76:

    return 0;
  }

  if (!v69)
  {
    goto LABEL_76;
  }

  if (*v66 != *v68 || v67 != v69)
  {
    v70 = v14;
    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v14 = v70;
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_81:
  v74 = v14[13];
  v75 = (a1 + v74);
  v76 = *(a1 + v74 + 8);
  v77 = (a2 + v74);
  v78 = v77[1];
  if (v76)
  {
    if (!v78)
    {
      return 0;
    }

    if (*v75 != *v77 || v76 != v78)
    {
      v79 = v14;
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v14 = v79;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v78)
  {
    return 0;
  }

  v81 = v14[14];
  v82 = *(a1 + v81);
  v83 = *(a2 + v81);
  if (v82 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v83 == 2 || ((v83 ^ v82) & 1) != 0)
    {
      return v27;
    }
  }

  v84 = v14[15];
  v85 = (a1 + v84);
  v86 = *(a1 + v84 + 8);
  v87 = (a2 + v84);
  v27 = *(a2 + v84 + 8);
  if (v86)
  {
    if (!v27)
    {
      return v27;
    }
  }

  else
  {
    if (*v85 != *v87)
    {
      LOBYTE(v27) = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v88 = v14;
  v89 = v14[16];
  v90 = *(a1 + v89);
  v91 = *(a2 + v89);
  if (v90 == 2)
  {
    v20 = v91 == 2;
    v92 = v14;
    if (!v20)
    {
      return 0;
    }
  }

  else
  {
    v27 = 0;
    if (v91 == 2)
    {
      return v27;
    }

    v93 = v91 ^ v90;
    v92 = v14;
    if (v93)
    {
      return v27;
    }
  }

  v94 = v92[17];
  v95 = *(a1 + v94);
  v96 = *(a2 + v94);
  if (v95 == 2)
  {
    v20 = v96 == 2;
    v97 = v14;
    if (!v20)
    {
      return 0;
    }

LABEL_111:
    v99 = v97[18];
    v100 = (a1 + v99);
    v101 = *(a1 + v99 + 8);
    v102 = (a2 + v99);
    v103 = v102[1];
    if (v101)
    {
      if (!v103 || (*v100 != *v102 || v101 != v103) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v103)
    {
      return 0;
    }

    v104 = v88[19];
    v105 = *(a1 + v104);
    v140 = *(a1 + v104 + 8);
    v141 = v105;
    v106 = *(a1 + v104 + 16);
    v138 = *(a1 + v104 + 24);
    v139 = v106;
    v107 = (a2 + v104);
    v108 = *v107;
    v109 = v107[1];
    v111 = v107[2];
    v110 = v107[3];
    v135 = v111;
    v136 = v110;
    v137 = v108;
    if (v140)
    {
      if (v109)
      {
        if (v141 == v137 && v140 == v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v134 = v109;
          if (v139 == v135 && v138 == v136)
          {
            sub_1001B8BB0(v137, v109);
            sub_1001B8BB0(v141, v140);

            sub_1001B8C54(v141, v140);
          }

          else
          {
            v133 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1001B8BB0(v137, v109);
            sub_1001B8BB0(v141, v140);

            sub_1001B8C54(v141, v140);
            if ((v133 & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_130;
        }

        sub_1001B8BB0(v137, v109);
        v125 = v140;
        v126 = v141;
        sub_1001B8BB0(v141, v140);

        v115 = v126;
        v116 = v125;
LABEL_128:
        sub_1001B8C54(v115, v116);
        return 0;
      }
    }

    else if (!v109)
    {
LABEL_130:
      v117 = v88[20];
      v118 = (a1 + v117);
      v119 = *(a1 + v117 + 8);
      v120 = (a2 + v117);
      v27 = *(a2 + v117 + 8);
      if (v119)
      {
        if (!v27)
        {
          return v27;
        }
      }

      else
      {
        if (*v118 != *v120)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          return 0;
        }
      }

      v121 = v88[21];
      v122 = (a1 + v121);
      v123 = *(a1 + v121 + 8);
      v124 = (a2 + v121);
      v27 = *(a2 + v121 + 8);
      if (v123)
      {
        if (!v27)
        {
          return v27;
        }
      }

      else
      {
        if (*v122 != *v124)
        {
          LOBYTE(v27) = 1;
        }

        if (v27)
        {
          return 0;
        }
      }

      v127 = v88[22];
      v128 = *(v11 + 48);
      sub_10001FB20(a1 + v127, v13);
      sub_10001FB20(a2 + v127, &v13[v128]);
      v129 = *(v5 + 48);
      if (v129(v13, 1, v4) == 1)
      {
        if (v129(&v13[v128], 1, v4) == 1)
        {
          sub_100013F2C(v13, &qword_1004A6D30);
          return 1;
        }

        goto LABEL_148;
      }

      sub_10001FB20(v13, v10);
      if (v129(&v13[v128], 1, v4) == 1)
      {
        (*(v5 + 8))(v10, v4);
LABEL_148:
        sub_100013F2C(v13, &qword_1004AB4A0);
        return 0;
      }

      (*(v5 + 32))(v7, &v13[v128], v4);
      sub_1001BC574(qword_1004AB4A8, &type metadata accessor for URL);
      v130 = dispatch thunk of static Equatable.== infix(_:_:)();
      v131 = *(v5 + 8);
      v131(v7, v4);
      v131(v10, v4);
      sub_100013F2C(v13, &qword_1004A6D30);
      return (v130 & 1) != 0;
    }

    v112 = v137;
    sub_1001B8BB0(v137, v109);
    v113 = v140;
    v114 = v141;
    sub_1001B8BB0(v141, v140);
    sub_1001B8C54(v114, v113);
    v115 = v112;
    v116 = v109;
    goto LABEL_128;
  }

  v27 = 0;
  if (v96 != 2)
  {
    v98 = v96 ^ v95;
    v97 = v14;
    if ((v98 & 1) == 0)
    {
      goto LABEL_111;
    }
  }

  return v27;
}

uint64_t _s10DarwinInit18DInitCryptexConfigV10CodingKeysO8rawValueAESgSS_tcfC_0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1001BBA18()
{
  result = qword_1004AB320;
  if (!qword_1004AB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB320);
  }

  return result;
}

unint64_t sub_1001BBA6C()
{
  result = qword_1004AB328;
  if (!qword_1004AB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB328);
  }

  return result;
}

unint64_t sub_1001BBAC0()
{
  result = qword_1004AB330;
  if (!qword_1004AB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB330);
  }

  return result;
}

unint64_t sub_1001BBB14()
{
  result = qword_1004AB338;
  if (!qword_1004AB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB338);
  }

  return result;
}

unint64_t sub_1001BBB68()
{
  result = qword_1004AB340;
  if (!qword_1004AB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB340);
  }

  return result;
}

uint64_t sub_1001BBBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DInitCryptexConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BBC20(uint64_t a1)
{
  v2 = type metadata accessor for DInitCryptexConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001BBC7C()
{
  result = qword_1004AB350;
  if (!qword_1004AB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB350);
  }

  return result;
}

unint64_t sub_1001BBCD0()
{
  result = qword_1004AB358;
  if (!qword_1004AB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB358);
  }

  return result;
}

unint64_t sub_1001BBD24()
{
  result = qword_1004AB360;
  if (!qword_1004AB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB360);
  }

  return result;
}

unint64_t sub_1001BBD78()
{
  result = qword_1004AB368;
  if (!qword_1004AB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB368);
  }

  return result;
}

unint64_t sub_1001BBDD0()
{
  result = qword_1004AB378;
  if (!qword_1004AB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB378);
  }

  return result;
}

unint64_t sub_1001BBE28()
{
  result = qword_1004AB380;
  if (!qword_1004AB380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB380);
  }

  return result;
}

unint64_t sub_1001BBE80()
{
  result = qword_1004AB388;
  if (!qword_1004AB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AB388);
  }

  return result;
}

uint64_t sub_1001BBF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1000039E8(&qword_1004A6D30);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 88);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1001BC084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_1000039E8(&qword_1004A6D30);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 88);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1001BC1B8()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_1001BC3D8(319, &qword_1004AA318);
    if (v1 <= 0x3F)
    {
      sub_1001BC3D8(319, &qword_1004AA320);
      if (v2 <= 0x3F)
      {
        sub_1001BC3D8(319, &qword_1004AB400);
        if (v3 <= 0x3F)
        {
          sub_1001BC3D8(319, &qword_1004AB408);
          if (v4 <= 0x3F)
          {
            sub_1001BC3D8(319, &qword_1004AB410);
            if (v5 <= 0x3F)
            {
              sub_1001BC3D8(319, &qword_1004AB418);
              if (v6 <= 0x3F)
              {
                sub_1001BC3D8(319, &qword_1004AB420);
                if (v7 <= 0x3F)
                {
                  sub_1001BC3D8(319, &unk_1004AB428);
                  if (v8 <= 0x3F)
                  {
                    sub_1001BC3D8(319, &unk_1004AA328);
                    if (v9 <= 0x3F)
                    {
                      sub_10001F778();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1001BC3D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DInitCryptexConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DInitCryptexConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001BC574(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FilePath.exists()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v26 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000270B4(v10, qword_1004B00F8);
  v25 = *(v5 + 16);
  v25(v9, v0, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v0;
    v14 = v13;
    v22 = swift_slowAlloc();
    v29 = v22;
    *v14 = 136315138;
    sub_100190550();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v1;
    v17 = v16;
    (*(v5 + 8))(v9, v4);
    v18 = sub_1000026C0(v15, v17, &v29);
    v2 = v24;

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking if item exists at %s", v14, 0xCu);
    sub_100003C3C(v22);

    v3 = v23;
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v19 = v26;
  v25(v26, v3, v4);
  sub_1002EC1CC(v19, &v28);
  if (v2)
  {
    v29 = v2;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    if ((swift_dynamicCast() & 1) != 0 && v27 == 2)
    {
    }
  }

  return v2 == 0;
}

BOOL sub_1001BC960(const char *a1, unsigned __int16 (*a2)(void))
{
  v31 = a1;
  v5 = v3;
  v6 = type metadata accessor for FilePath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000270B4(v12, qword_1004B00F8);
  v13 = *(v7 + 16);
  v34 = v2;
  v32 = v13;
  v13(v11, v2, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v3;
    v17 = v16;
    v28 = swift_slowAlloc();
    v37 = v28;
    *v17 = 136315138;
    sub_100190550();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = a2;
    v20 = v19;
    (*(v7 + 8))(v11, v6);
    v21 = sub_1000026C0(v18, v20, &v37);
    a2 = v30;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, v31, v17, 0xCu);
    sub_100003C3C(v28);

    v5 = v29;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v22 = v33;
  v32(v33, v34, v6);
  sub_1002EC1CC(v22, &v36);
  if (v5)
  {
    v37 = v5;
    swift_errorRetain();
    sub_1000039E8(&qword_1004AB0A0);
    if (swift_dynamicCast())
    {
      v23 = v35;
      if (v35 == 2)
      {

        return 0;
      }
    }
  }

  else
  {
    st_mode = v36.st_mode;
    v25 = S_IFMT.getter() & st_mode;
    return v25 == a2();
  }

  return v23;
}

Swift::Bool __swiftcall FilePath.exists(withTimeout:)(Swift::Int withTimeout)
{
  v2 = v1;
  v4 = type metadata accessor for FilePath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v62 - v10;
  v12 = __chkstk_darwin(v9);
  v70 = &v62 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  if (qword_1004A9F20 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000270B4(v19, qword_1004B00F8);
  v21 = *(v5 + 16);
  v68 = v5 + 16;
  v73 = v21;
  v21(v18, v2, v4);
  v71 = v20;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = os_log_type_enabled(v22, v23);
  v67 = v2;
  v65 = v5;
  v63 = v8;
  v62 = v11;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *&v75.st_dev = swift_slowAlloc();
    v26 = *&v75.st_dev;
    *v25 = 136315394;
    sub_100190550();
    v27 = v23;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v72 = *(v65 + 8);
    v72(v18, v4);
    v31 = sub_1000026C0(v28, v30, &v75.st_dev);
    v2 = v67;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2048;
    *(v25 + 14) = withTimeout;
    _os_log_impl(&_mh_execute_header, v22, v27, "Checking if item exists at %s with timeout %ld seconds", v25, 0x16u);
    sub_100003C3C(v26);
  }

  else
  {

    v72 = *(v5 + 8);
    result = (v72)(v18, v4);
  }

  if (withTimeout < 0)
  {
    __break(1u);
  }

  else
  {
    v64 = withTimeout;
    if (withTimeout)
    {
      v69 = v65 + 8;
      *&v33 = 136315138;
      v66 = v33;
      v73(v16, v2, v4);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v74[0] = v37;
        *v36 = v66;
        sub_100190550();
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        v72(v16, v4);
        v41 = sub_1000026C0(v38, v40, v74);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "Checking if item exists at %s", v36, 0xCu);
        sub_100003C3C(v37);

        v2 = v67;
      }

      else
      {

        v72(v16, v4);
      }

      v42 = v70;
      v73(v70, v2, v4);
      sub_1002EC1CC(v42, &v75);
      v52 = v62;
      v73(v62, v2, v4);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v74[0] = v57;
        *v56 = v66;
        sub_100190550();
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        v72(v52, v4);
        v61 = sub_1000026C0(v58, v60, v74);

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Item at %s exists", v56, 0xCu);
        sub_100003C3C(v57);
      }

      else
      {

        v72(v52, v4);
      }

      return 1;
    }

    else
    {
      v43 = v63;
      v73(v63, v2, v4);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v74[0] = v47;
        *v46 = 136315394;
        sub_100190550();
        v48 = dispatch thunk of CustomStringConvertible.description.getter();
        v50 = v49;
        v72(v43, v4);
        v51 = sub_1000026C0(v48, v50, v74);

        *(v46 + 4) = v51;
        *(v46 + 12) = 2048;
        *(v46 + 14) = v64;
        _os_log_impl(&_mh_execute_header, v44, v45, "Item at %s did not show up after %ld seconds", v46, 0x16u);
        sub_100003C3C(v47);
      }

      else
      {

        v72(v43, v4);
      }

      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SCPreferencesRef.computerName(_:)(Swift::String a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = SCPreferencesSetComputerName(v1, v2, 0x8000100u);

  if (!v3)
  {
    v4 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000270B4(v5, static SCPreferencesRef.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v10 = "computerName(_:)";
      *(v10 + 8) = 16;
      *(v10 + 16) = 2;
      *(v10 + 20) = v4;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to set ComputerName: %@", v8, 0xCu);
      sub_10019AC78(v9);
    }

    sub_100189C58();
    swift_allocError();
    *v12 = "computerName(_:)";
    *(v12 + 8) = 16;
    *(v12 + 16) = 2;
    *(v12 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t SCPreferencesRef.withLock<A>(lockRetryLimit:_:body:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 48) = v15;
  *(v9 + 56) = v8;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 176) = a3;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 64) = swift_getObjectType();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v9 + 72) = v10;
  *(v9 + 80) = *(v10 - 8);
  *(v9 + 88) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v9 + 96) = v11;
  *(v9 + 104) = *(v11 - 8);
  *(v9 + 112) = swift_task_alloc();
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  *(v9 + 120) = v12;
  *(v9 + 128) = *(v12 - 8);
  *(v9 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_1001BD92C, 0, 0);
}

uint64_t sub_1001BD92C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = *(v0 + 176);
  v8 = *(v0 + 24);
  v17 = *(v0 + 32);
  v18 = *(v0 + 64);
  sub_10000E014();
  (*(v2 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v3);
  *(v0 + 144) = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v1, v3);
  v9 = swift_allocObject();
  *(v0 + 152) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7 & 1;
  *(v9 + 48) = v17;
  *(v9 + 56) = v6;
  *(v9 + 64) = v18;
  v10 = v4;

  default argument 1 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)(v5);
  default argument 2 of OS_dispatch_queue.async<A>(group:qos:flags:execute:)();
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1001BDAE8;
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);

  return OS_dispatch_queue.async<A>(group:qos:flags:execute:)(v15, 0, v12, v13, sub_1001BE9D0, v9, v14);
}

uint64_t sub_1001BDAE8()
{
  v2 = *(*v1 + 144);
  v11 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v10 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 168) = v0;

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v11, v10);
  if (v0)
  {

    return _swift_task_switch(sub_1001BDD58, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8();
  }
}

uint64_t sub_1001BDD58()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001BDE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, NSString), uint64_t a4, uint64_t a5, const char *a6)
{
  v11 = String._bridgeToObjectiveC()();
  v12 = a3(v6, v11);

  if (!v12)
  {
    v13 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000270B4(v14, static SCPreferencesRef.logger);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v19 = a4;
      *(v19 + 8) = a5;
      *(v19 + 16) = 2;
      *(v19 + 20) = v13;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, a6, v17, 0xCu);
      sub_10019AC78(v18);
    }

    sub_100189C58();
    swift_allocError();
    *v21 = a4;
    *(v21 + 8) = a5;
    *(v21 + 16) = 2;
    *(v21 + 20) = v13;
    swift_willThrow();
  }
}

uint64_t sub_1001BE01C()
{
  v0 = type metadata accessor for Logger();
  sub_1000279B4(v0, static SCPreferencesRef.logger);
  sub_1000270B4(v0, static SCPreferencesRef.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t SCPreferencesRef.logger.unsafeMutableAddressor()
{
  if (qword_1004A9E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000270B4(v0, static SCPreferencesRef.logger);
}

uint64_t static SCPreferencesRef.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000270B4(v2, static SCPreferencesRef.logger);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1001BE1F4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, const char *a4)
{
  result = a1(v4);
  if (!result)
  {
    v9 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000270B4(v10, static SCPreferencesRef.logger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      *(v15 + 16) = 2;
      *(v15 + 20) = v9;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xCu);
      sub_10019AC78(v14);
    }

    sub_100189C58();
    swift_allocError();
    *v17 = a2;
    *(v17 + 8) = a3;
    *(v17 + 16) = 2;
    *(v17 + 20) = v9;
    return swift_willThrow();
  }

  return result;
}

void sub_1001BE3A8(const __SCPreferences *a1, uint64_t a2, char a3, void (*a4)(const __SCPreferences *))
{
  if (!SCPreferencesLock(a1, 1u))
  {
    v8 = 0;
    v24 = a4;
    v22 = a2;
    while (2)
    {
      v23 = v8;
      while (1)
      {
        v9 = SCError();
        if (qword_1004A9E28 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_1000270B4(v10, static SCPreferencesRef.logger);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          sub_100189C58();
          swift_allocError();
          *v15 = "lock()";
          *(v15 + 8) = 6;
          *(v15 + 16) = 2;
          *(v15 + 20) = v9;
          v16 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 4) = v16;
          *v14 = v16;
          _os_log_impl(&_mh_execute_header, v11, v12, "Unable to lock SCPreferences: %@", v13, 0xCu);
          sub_10019AC78(v14);
        }

        sub_100189C58();
        swift_allocError();
        *v17 = "lock()";
        *(v17 + 8) = 6;
        *(v17 + 16) = 2;
        *(v17 + 20) = v9;
        swift_willThrow();
        swift_errorRetain();
        sub_1000039E8(&qword_1004AB0A0);
        if ((swift_dynamicCast() & 1) == 0 || v28 != 3005)
        {
          goto LABEL_22;
        }

        if ((a3 & 1) == 0)
        {
          break;
        }

        if (SCPreferencesLock(a1, 1u))
        {
          v24(a1);
          goto LABEL_3;
        }
      }

      if (v22 > 0)
      {
        swift_allocError();
        *v21 = v25;
        *(v21 + 8) = v26;
        *(v21 + 16) = v27;
        *(v21 + 20) = 3005;
        swift_willThrow();
LABEL_22:

        return;
      }

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      a4 = v24;
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Synchronizing and trying to lock again.", v20, 2u);
      }

      SCPreferencesSynchronize(a1);
      v8 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        return;
      }

      if (!SCPreferencesLock(a1, 1u))
      {
        continue;
      }

      break;
    }
  }

  a4(a1);
LABEL_3:
  sub_1001BE1F4(&SCPreferencesUnlock, "unlock()", 8, "Unable to unlock SCPreferences: %@");
}

SCPreferencesRef sub_1001BE7C0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = SCPreferencesCreate(0, v0, 0);

  if (!v1)
  {
    v2 = SCError();
    if (qword_1004A9E28 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000270B4(v3, static SCPreferencesRef.logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      sub_100189C58();
      swift_allocError();
      *v8 = "create(_:)";
      *(v8 + 8) = 10;
      *(v8 + 16) = 2;
      *(v8 + 20) = v2;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Unable to create SCPreferences: %@", v6, 0xCu);
      sub_10019AC78(v7);
    }

    sub_100189C58();
    swift_allocError();
    *v10 = "create(_:)";
    *(v10 + 8) = 10;
    *(v10 + 16) = 2;
    *(v10 + 20) = v2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1001BE990()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1001BEAC8(uint64_t a1)
{
  v2 = type metadata accessor for PathCoded();
  __chkstk_darwin(v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1, v2);
  return PathCoded.projectedValue.setter(v4, v2);
}

uint64_t PathCoded.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*PathCoded.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v3;
  v8 = *(a2 - 8);
  v9 = v8;
  v6[2] = v8;
  v6[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  (*(v9 + 16))();
  return sub_1001BED7C;
}

void sub_1001BED7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t PathCoded.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for PathCoded();
  result = (*(*(a2 - 8) + 32))(&a3[*(v6 + 44)], a1, a2);
  *a3 = _swiftEmptyArrayStorage;
  return result;
}

uint64_t PathCoded.init(wrappedValue:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for PathCoded();
  result = (*(*(a3 - 8) + 32))(&a4[*(v8 + 44)], a1, a3);
  *a4 = a2;
  return result;
}

uint64_t PathCoded.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = *(a2 - 8);
  __chkstk_darwin(a1);
  v22 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v7;
  v8 = type metadata accessor for PathCoded();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v3)
  {
    return sub_100003C3C(a1);
  }

  v16 = v8;
  v17 = v9;
  sub_10000E2A8(a1, a1[3]);
  *v11 = dispatch thunk of Decoder.codingPath.getter();
  sub_10000E2A8(v21, v21[3]);
  v13 = v22;
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  v14 = v16;
  (*(v18 + 32))(v11 + *(v16 + 44), v13, a2);
  sub_100003C3C(v21);
  v15 = v17;
  (*(v17 + 16))(v19, v11, v14);
  sub_100003C3C(a1);
  return (*(v15 + 8))(v11, v14);
}

uint64_t PathCoded.encode(to:)(void *a1)
{
  sub_10000E2A8(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100003BEC(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100003C3C(v2);
}

DarwinInit::JSONPointer PathCoded.jsonPointer.getter()
{

  return JSONPointer.init(codingKeys:)(v0);
}

uint64_t PathCoded.makeOptional()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  v10 = *(v5 - 8);
  (*(v10 + 16))(v14 - v8, &v2[*(a1 + 44)], v5);
  (*(v10 + 56))(v9, 0, 1, v5);
  v11 = *v2;
  v14[1] = *(a1 + 24);
  swift_getWitnessTable();
  v14[0] = *(a1 + 32);
  swift_getWitnessTable();
  v12 = type metadata accessor for PathCoded();
  (*(v7 + 32))(&a2[*(v12 + 44)], v9, v6);
  *a2 = v11;
}

Swift::Int PathCoded<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001BF67C()
{
  Hasher.init(_seed:)();
  PathCoded<>.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PathCoded.debugDescription.getter()
{
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v0._countAndFlagsBits = 0x2074615B20;
  v0._object = 0xE500000000000000;
  String.append(_:)(v0);

  JSONPointer.init(codingKeys:)(v1);
  v2 = JSONPointer.rawValue.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 0;
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)()
{
  type metadata accessor for PathCoded();
  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

{
  type metadata accessor for Optional();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for PathCoded();
  return KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v22 = a5;
  v20 = *(a3 - 8);
  v21 = a4;
  __chkstk_darwin(a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  v12 = *(a2 + 16);
  *(inited + 56) = v12;
  *(inited + 64) = *(a2 + 24);
  v13 = sub_100064BF8((inited + 32));
  (*(*(v12 - 8) + 16))(v13, a1, v12);
  v24 = v10;
  sub_10034A3A8(inited);
  v14 = v24;
  v15 = v23;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v15)
  {
  }

  v17 = type metadata accessor for PathCoded();
  v18 = v22;
  result = (*(v20 + 32))(v22 + *(v17 + 44), v9, a3);
  *v18 = v14;
  return result;
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v23 = a3;
  v20 = a4;
  v22 = a5;
  v7 = type metadata accessor for Optional();
  v21 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = KeyedDecodingContainer.codingPath.getter();
  sub_1000039E8(&qword_1004AAA00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100376A40;
  v12 = *(a2 + 16);
  *(inited + 56) = v12;
  *(inited + 64) = *(a2 + 24);
  v13 = sub_100064BF8((inited + 32));
  (*(*(v12 - 8) + 16))(v13, a1, v12);
  v27 = v10;
  sub_10034A3A8(inited);
  v14 = v27;
  v16 = v23;
  v15 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v15)
  {
  }

  v26 = v16;
  swift_getWitnessTable();
  v25 = v20;
  swift_getWitnessTable();
  v18 = type metadata accessor for PathCoded();
  v19 = v22;
  result = (*(v21 + 32))(v22 + *(v18 + 44), v9, v7);
  *v19 = v14;
  return result;
}

__n128 sub_1001BFDA8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void sub_1001BFDC4()
{
  sub_1001C0220();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001BFE4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1001BFFD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_1001C0220()
{
  if (!qword_1004AB530)
  {
    sub_100003A94(&qword_1004AAA08);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1004AB530);
    }
  }
}

uint64_t sub_1001C0284()
{
  v0 = sub_1000039E8(&qword_1004AAD78);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for CommandConfiguration();
  sub_1000279B4(v3, static Prepare.configuration);
  sub_1000270B4(v3, static Prepare.configuration);
  v4 = type metadata accessor for NameSpecification();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  return CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:defaultSubcommand:helpNames:)();
}

uint64_t Prepare.configuration.unsafeMutableAddressor()
{
  if (qword_1004A9E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for CommandConfiguration();

  return sub_1000270B4(v0, static Prepare.configuration);
}

uint64_t static Prepare.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004A9E30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CommandConfiguration();
  v3 = sub_1000270B4(v2, static Prepare.configuration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Prepare.source.getter()
{
  sub_1000039E8(&qword_1004AB538);

  return Argument.wrappedValue.getter();
}

uint64_t sub_1001C0534(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource();
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1001C1E40(a1, &v9 - v6, type metadata accessor for DInitConfigSource);
  sub_1001C1E40(v7, v5, type metadata accessor for DInitConfigSource);
  sub_1000039E8(&qword_1004AB538);
  Argument.wrappedValue.setter();
  return sub_1001C1D7C(v7, type metadata accessor for DInitConfigSource);
}

uint64_t Prepare.source.setter(uint64_t a1)
{
  v2 = type metadata accessor for DInitConfigSource();
  __chkstk_darwin(v2 - 8);
  sub_1001C1E40(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DInitConfigSource);
  sub_1000039E8(&qword_1004AB538);
  Argument.wrappedValue.setter();
  return sub_1001C1D7C(a1, type metadata accessor for DInitConfigSource);
}

void (*Prepare.source.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000039E8(&qword_1004AB538);
  *(v3 + 32) = Argument.wrappedValue.modify();
  return sub_100197124;
}

uint64_t sub_1001C079C()
{
  if (qword_1004A9DF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static RealComputer.shared;
  v0[11] = static RealComputer.shared;
  v0[5] = type metadata accessor for RealComputer();
  v0[6] = &protocol witness table for RealComputer;
  v0[2] = v1;
  swift_retain_n();
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1001C08B8;

  return Prepare.run(on:)((v0 + 2));
}

uint64_t sub_1001C08B8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1001C0A38;
  }

  else
  {
    sub_100003C3C(v2 + 16);
    v3 = sub_1001C09D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001C09D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C0A38()
{

  sub_100003C3C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Prepare.run(on:)(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *(type metadata accessor for Config(0) - 8);
  v2[17] = swift_task_alloc();
  sub_1000039E8(&qword_1004AB540);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C0B98, 0, 0);
}

uint64_t sub_1001C0B98()
{
  v1 = *(v0 + 144);
  sub_100003B20(*(v0 + 112), v0 + 24);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 16) = JSONDecoder.init()();
  *(v0 + 64) = xmmword_1003F69C0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 1;
  *(v0 + 104) = 0;
  sub_1000039E8(&qword_1004AB538);
  Argument.wrappedValue.getter();
  v2 = type metadata accessor for DInitConfigSource();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_1001C0CEC;
  v4 = *(v0 + 144);

  return ConfigLoader.load(from:)(v4);
}

uint64_t sub_1001C0CEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  sub_1001C1C20(v4);
  if (v1)
  {
    v5 = sub_1001C1208;
  }

  else
  {
    v5 = sub_1001C0E20;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001C0E20()
{
  result = v0[20];
  v2 = *(result + 16);
  v0[22] = v2;
  if (v2)
  {
    v3 = v0[16];
    v0[23] = 0;
    if (*(result + 16))
    {
      sub_1001C1E40(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v0[17], type metadata accessor for Config);
      v4 = swift_task_alloc();
      v0[24] = v4;
      *v4 = v0;
      v4[1] = sub_1001C0F60;

      return Config.prepare(on:)();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_1001C1C88((v0 + 2));

    v5 = v0[1];

    return v5();
  }

  return result;
}

uint64_t sub_1001C0F60()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  sub_1001C1D7C(*(v2 + 136), type metadata accessor for Config);
  if (v0)
  {

    v3 = sub_1001C1288;
  }

  else
  {
    v3 = sub_1001C10B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_1001C10B8()
{
  v1 = v0[23] + 1;
  if (v1 == v0[22])
  {

    sub_1001C1C88((v0 + 2));

    v2 = v0[1];

    v2();
  }

  else
  {
    v0[23] = v1;
    v3 = v0[20];
    if (v1 >= *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1001C1E40(v3 + ((*(v0[16] + 80) + 32) & ~*(v0[16] + 80)) + *(v0[16] + 72) * v1, v0[17], type metadata accessor for Config);
      v4 = swift_task_alloc();
      v0[24] = v4;
      *v4 = v0;
      v4[1] = sub_1001C0F60;

      Config.prepare(on:)();
    }
  }
}

uint64_t sub_1001C1208()
{
  sub_1001C1C88(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C1288()
{
  sub_1001C1C88(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C131C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}