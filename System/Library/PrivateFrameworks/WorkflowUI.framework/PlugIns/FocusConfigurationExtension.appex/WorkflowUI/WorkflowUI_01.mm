uint64_t sub_100016170(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v3 = sub_10001DDD4();

  return v3;
}

void *sub_1000161F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100016238()
{
  result = qword_100032B90;
  if (!qword_100032B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032B90);
  }

  return result;
}

uint64_t sub_10001628C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10001DD14();

  return v4;
}

uint64_t sub_1000162EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10001610C() & 1;
}

unint64_t sub_100016330()
{
  result = qword_100032640;
  if (!qword_100032640)
  {
    type metadata accessor for FocusConfigurationActionViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032640);
  }

  return result;
}

uint64_t sub_10001638C()
{
  sub_100016984();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001643C;

  return sub_100012108(v3, v4, v5, v6);
}

uint64_t sub_10001643C()
{
  sub_10001696C();
  sub_100016A50();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100016960();
  *v4 = v3;

  sub_1000169A0();

  return v5();
}

uint64_t sub_100016520(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000165B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005A2C(a2, a3);
  sub_100016AE0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10001660C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10000F8B0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10001663C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_10000F398();
}

id sub_100016664@<X0>(char *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_10000F7D8(v1[4], a1);
}

uint64_t sub_100016670()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_100016A9C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for FocusConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FocusConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100016818);
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

unint64_t sub_100016864()
{
  result = qword_100032CA0;
  if (!qword_100032CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032CA0);
  }

  return result;
}

uint64_t sub_1000168FC()
{
  *(v1 + 56) = v0;
  *(v1 + 24) = sub_10000E528;

  return swift_continuation_init();
}

uint64_t sub_1000169A0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100016A38()
{
}

void sub_100016B40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_100016B60()
{

  return swift_slowAlloc();
}

uint64_t sub_100016B78()
{

  return swift_slowAlloc();
}

uint64_t sub_100016B90()
{

  return sub_10001DE24();
}

uint64_t sub_100016BA8()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_100016BC0()
{
  sub_10001A3E4();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_100019FB4;
  v12 = v1;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v10 = sub_100016F60;
  *(&v10 + 1) = &unk_10002DB80;
  v2 = _Block_copy(&aBlock);
  v3 = v0;

  v4 = [v3 _remoteViewControllerProxyWithErrorHandler:v2];
  _Block_release(v2);
  if (v4)
  {
    sub_10001DF04();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  aBlock = v7;
  v10 = v8;
  if (*(&v8 + 1))
  {
    sub_100005A2C(&qword_100032ED0, &qword_100020ED0);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100019FD4(&aBlock, &qword_100032E68, &unk_100020EC0);
    return 0;
  }
}

void sub_100016D34(uint64_t a1, void *a2)
{
  v4 = sub_10001D694();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_10001D664();
  swift_errorRetain();
  v9 = sub_10001D684();
  v10 = sub_10001DE94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Connection interrupted to focus configuration host process: %@", v11, 0xCu);
    sub_100019FD4(v12, &qword_100032C60, &qword_100020BE0);
  }

  (*(v5 + 8))(v8, v4);
  v15 = [a2 extensionContext];
  if (v15)
  {
    if (a1)
    {
      v16 = v15;
      v17 = sub_10001D544();
      [v16 cancelRequestWithError:v17];

      return;
    }

LABEL_12:
    __break(1u);
  }
}

void sub_100016F60(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100016FCC()
{
  v0 = WFFocusConfigurationServiceXPCInterface();

  return v0;
}

id sub_100017020()
{
  v0 = WFFocusConfigurationHostXPCInterface();

  return v0;
}

void sub_100017074()
{
  v1 = v0;
  v2 = sub_100005A2C(&qword_100032ED8, &qword_100020F20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v56.receiver = v0;
  v56.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  objc_msgSendSuper2(&v56, "loadView");
  v4 = sub_10001A408();
  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 systemGroupedBackgroundColor];
  [v5 setBackgroundColor:v7];

  sub_10001D7A4();
  sub_100006B8C(&qword_100032EE0, &qword_100032ED8, &qword_100020F20);
  sub_10001DC04();
  v8 = objc_allocWithZone(sub_100005A2C(&unk_100032EE8, &qword_100020F28));
  v9 = sub_10001D984();
  [v1 addChildViewController:v9];
  v10 = sub_10001A3F0();
  if (!v10)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v10;
  v12 = sub_10001A408();
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame:{v15, v17, v19, v21}];
  v22 = sub_10001A3F0();

  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = sub_10001A3F0();
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = [v6 systemGroupedBackgroundColor];
  [v23 setBackgroundColor:v24];

  v25 = sub_10001A408();
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  v27 = sub_10001A3F0();

  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v26 addSubview:v27];

  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100020D30;
  v29 = sub_10001A3F0();

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 topAnchor];

  v31 = sub_10001A408();
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = sub_10001A420();
  *(v28 + 32) = v34;
  v35 = sub_10001A3F0();

  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = [v35 bottomAnchor];

  v37 = sub_10001A408();
  if (!v37)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = sub_10001A420();
  *(v28 + 40) = v40;
  v41 = sub_10001A3F0();

  if (!v41)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = [v41 leadingAnchor];

  v43 = sub_10001A408();
  if (!v43)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = sub_10001A420();
  *(v28 + 48) = v46;
  v47 = sub_10001A3F0();

  if (!v47)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = [v47 trailingAnchor];

  v49 = sub_10001A408();
  if (v49)
  {
    v50 = v49;
    v51 = objc_opt_self();
    v52 = [v50 trailingAnchor];

    v53 = [v48 constraintEqualToAnchor:v52];
    *(v28 + 56) = v53;
    sub_100006710(0, &qword_100032EF8, NSLayoutConstraint_ptr);
    isa = sub_10001DDC4().super.isa;

    [v51 activateConstraints:isa];

    v55 = *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController];
    *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = v9;

    return;
  }

LABEL_31:
  __break(1u);
}

id sub_1000176EC(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
  return [objc_opt_self() invalidateAllConnections];
}

uint64_t sub_10001779C()
{
  sub_10001696C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(sub_100005A2C(&unk_100032C28, &qword_100020D70) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v1[5] = sub_10001DE34();
  v1[6] = sub_10001DE24();
  v5 = sub_10001DE14();

  return _swift_task_switch(sub_10001786C, v5, v4);
}

uint64_t sub_10001786C()
{
  sub_100016AA8();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = *&v4[OBJC_IVAR___WFFocusConfigurationServiceViewController_request];
  *&v4[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = v5;
  v7 = v5;

  [v4 loadViewIfNeeded];
  v8 = sub_10001DE54();
  sub_10000619C(v3, 1, 1, v8);
  v9 = v7;
  v10 = v4;
  v11 = sub_10001DE24();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v9;
  v12[5] = v10;
  sub_10001867C(0, 0, v3, &unk_100020D80, v12);

  sub_1000169A0();

  return v13();
}

uint64_t sub_100017998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v7 = sub_10001D694();
  v5[51] = v7;
  v8 = *(v7 - 8);
  v5[52] = v8;
  v9 = *(v8 + 64) + 15;
  v5[53] = swift_task_alloc();
  v5[54] = sub_10001DE34();
  v5[55] = sub_10001DE24();
  objc_allocWithZone(type metadata accessor for FocusConfigurationActionViewModel());
  v10 = a4;
  v11 = swift_task_alloc();
  v5[56] = v11;
  *v11 = v5;
  v11[1] = sub_100017AC8;

  return sub_10000D1C4();
}

uint64_t sub_100017AC8()
{
  sub_100016984();
  v2 = v0;
  sub_100016A50();
  v4 = v3[56];
  v5 = v3[55];
  v6 = v3[54];
  v7 = *v1;
  sub_10001A3A8();
  *v8 = v7;
  *(v10 + 456) = v9;
  *(v10 + 464) = v2;

  v12 = sub_10001DE14();
  if (v2)
  {
    v13 = sub_100018054;
  }

  else
  {
    v13 = sub_100017C18;
  }

  return _swift_task_switch(v13, v12, v11);
}

uint64_t sub_100017C18()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);

  sub_100006710(0, &unk_100032DB0, WFShowFocusConfigurationEvent_ptr);
  v4 = sub_1000148F4(v3);
  [v4 track];

  v5 = *(v2 + OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController);
  if (v5)
  {
    v6 = *(v0 + 456);
    v7 = *(v0 + 400);
    KeyPath = swift_getKeyPath();
    v8 = *&v6[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];
    v9 = *&v6[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_options];
    *(v0 + 360) = *&v6[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter];
    v10 = v5;
    v11 = v6;

    v12 = v8;

    sub_100005A2C(&qword_100032798, &qword_100020770);
    sub_10001DBA4();
    v13 = *(v0 + 336);
    v14 = *(v0 + 344);
    sub_10001A3E4();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    v16 = swift_getKeyPath();
    v17 = WFUserInterfaceFromViewController();
    *(v0 + 136) = sub_100019E28;
    *(v0 + 144) = v15;
    *(v0 + 152) = 0;
    *(v0 + 160) = v12;
    *(v0 + 168) = v9;
    *(v0 + 176) = v13;
    *(v0 + 184) = v14;
    *(v0 + 192) = KeyPath;
    *(v0 + 200) = 0;
    *(v0 + 208) = v16;
    *(v0 + 216) = v17;
    sub_100005A2C(&qword_100032E20, &qword_100020EA0);
    sub_100019E5C();
    *(v0 + 368) = sub_10001DC04();
    sub_10001D994();
  }

  v18 = *(v0 + 456);
  v19 = *(v0 + 400);
  *(v0 + 376) = *(v18 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange);
  sub_10001A3E4();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100005A2C(&qword_100032AE8, &unk_100020EB0);
  sub_100006B8C(&unk_100032E50, &qword_100032AE8, &unk_100020EB0);
  sub_10001D734();

  swift_beginAccess();
  sub_10001D6A4();
  swift_endAccess();

  *(v0 + 384) = *(v18 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped);
  sub_10001A3E4();
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100019FA4;
  *(v21 + 24) = v20;

  sub_100005A2C(&qword_100032AF8, &qword_100020AF8);
  sub_100006B8C(&qword_100032E60, &qword_100032AF8, &qword_100020AF8);
  sub_10001D734();

  swift_beginAccess();
  sub_10001D6A4();
  swift_endAccess();

  v22 = *(v19 + OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel);
  *(v19 + OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel) = v18;

  v23 = *(v0 + 424);

  sub_1000169A0();

  return v24();
}

void sub_100018054()
{
  if (WFLogCategoryFocusConfiguration)
  {
    v1 = *(v0 + 440);
    v2 = *(v0 + 424);
    v3 = *(v0 + 392);

    sub_10001D664();
    v4 = v3;
    v5 = sub_10001D684();
    v6 = sub_10001DE94();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 392);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v7;
      *v9 = v7;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unable to prepare WFAction for focus configuration request %@", v8, 0xCu);
      sub_100019FD4(v9, &qword_100032C60, &qword_100020BE0);
    }

    v12 = *(v0 + 416);
    v11 = *(v0 + 424);
    v14 = *(v0 + 400);
    v13 = *(v0 + 408);

    (*(v12 + 8))(v11, v13);
    v15 = *(v14 + OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController);
    if (v15)
    {
      v41 = v15;
      sub_10001DD44();
      sub_10001DD44();
      if (qword_100032078 != -1)
      {
        swift_once();
      }

      v40 = *(v0 + 464);
      v16 = static NSBundle._current;
      v17 = sub_10001DD04();
      v18 = sub_10001DD04();

      v19 = sub_10001DD04();

      v20 = [v16 localizedStringForKey:v17 value:v18 table:v19];

      v21 = sub_10001DD14();
      v23 = v22;

      *(v0 + 320) = v21;
      *(v0 + 328) = v23;
      sub_100005A7C();
      v24 = sub_10001DA74();
      v26 = v25;
      LOBYTE(v17) = v27;
      sub_10001DB44();
      v28 = sub_10001DA54();
      v30 = v29;
      v32 = v31;
      v34 = v33;

      sub_100006320(v24, v26, v17 & 1);

      KeyPath = swift_getKeyPath();
      v36 = swift_getKeyPath();
      sub_10001DC84();
      sub_10001D7B4();
      *&v42[39] = *(v0 + 256);
      *&v42[23] = *(v0 + 240);
      *&v42[7] = *(v0 + 224);
      *(v0 + 81) = *v42;
      *(v0 + 16) = v28;
      *(v0 + 24) = v30;
      *(v0 + 32) = v32 & 1;
      *(v0 + 40) = v34;
      *(v0 + 48) = KeyPath;
      *(v0 + 56) = 3;
      *(v0 + 64) = 0;
      *(v0 + 72) = v36;
      *(v0 + 80) = 1;
      *(v0 + 97) = *&v42[16];
      *(v0 + 113) = *&v42[32];
      *(v0 + 128) = *&v42[47];
      sub_100005A2C(&qword_100032D58, &qword_100020E00);
      sub_100019BD0();
      *(v0 + 352) = sub_10001DC04();
      sub_10001D994();
    }

    else
    {
      v37 = *(v0 + 464);
    }

    v38 = *(v0 + 424);

    sub_1000169A0();

    v39();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100018470(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRetain();
  return sub_10001D844();
}

void sub_10001849C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000184F8(v1);
  }
}

void *sub_1000184F8(uint64_t a1)
{
  result = sub_100016BC0();
  if (result)
  {
    [result configurationUIStateDidUpdate:a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100018554(void *a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_100016BC0();

    if (v12)
    {
      v13 = [a1 identifier];
      if (!v13)
      {
        sub_10001DD14();
        v13 = sub_10001DD04();
      }

      [v12 didPressButtonWithIdentifier:v13 cellFrame:{a2, a3, a4, a5}];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001867C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100016520(a3, v26 - v11);
  v13 = sub_10001DE54();
  v14 = sub_100016590(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100019FD4(v12, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10001DE14();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10001DD34() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000189D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10001DE34();
  v3[5] = sub_10001DE24();
  v5 = sub_10001DE14();

  return _swift_task_switch(sub_100018A74, v5, v4);
}

uint64_t sub_100018A74()
{
  sub_100016984();
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_100018B34;
  v8 = v0[4];
  v9 = v0[2];

  return sub_10001779C();
}

uint64_t sub_100018B34()
{
  sub_100016AA8();
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_10001A3A8();
  *v5 = v4;
  v6 = v3[7];
  v7 = v3[4];
  v8 = v3[2];
  v9 = *v1;
  *v5 = *v1;

  v10 = v3[6];
  if (v2)
  {
    v11 = sub_10001D544();

    (*(v10 + 16))(v10, v11);
  }

  else
  {
    (*(v10 + 16))(v3[6], 0);
  }

  _Block_release(v4[6]);
  v12 = v9[1];

  return v12();
}

uint64_t sub_100018CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_10001DE54();
  sub_10000619C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100020EF0;
  v10[5] = v9;
  sub_100019758(0, 0, v7, &unk_100020F00, v10);
}

id sub_100018DD4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = 0;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel] = 0;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_observers] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = 0;
  if (a2)
  {
    v5 = sub_10001DD04();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id sub_100018EEC(void *a1)
{
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_request] = 0;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_configurationViewModel] = 0;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_observers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___WFFocusConfigurationServiceViewController_hostingViewController] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_100018FC0(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for FocusConfigurationServiceViewController();
  return objc_msgSendSuper2(&v4, *a1);
}

uint64_t sub_10001908C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000190D4()
{
  sub_100016AA8();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10001A3B8(v5);
  *v6 = v7;
  v6[1] = sub_100019174;
  v8 = sub_10001A3C8();

  return sub_100017998(v8, v9, v10, v11, v12);
}

uint64_t sub_100019174()
{
  sub_10001696C();
  sub_100016A50();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001A3A8();
  *v4 = v3;

  sub_1000169A0();

  return v5();
}

uint64_t sub_100019254(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001934C;

  return v7(a1);
}

uint64_t sub_10001934C()
{
  sub_10001696C();
  sub_100016A50();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001A3A8();
  *v4 = v3;

  sub_1000169A0();

  return v5();
}

uint64_t sub_100019430()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100019468()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

uint64_t sub_1000194F8()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

uint64_t sub_100019588(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10001A380;

  return v7();
}

uint64_t sub_100019670(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100019174;

  return v8();
}

uint64_t sub_100019758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100016520(a3, v25 - v11);
  v13 = sub_10001DE54();
  if (sub_100016590(v12, 1, v13) == 1)
  {
    sub_100019FD4(v12, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_10001DE14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10001DD34() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100019FD4(a3, &unk_100032C28, &qword_100020D70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100019A24(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A384;

  return v7(a1);
}

uint64_t sub_100019B1C()
{
  sub_10001A43C();
  result = sub_10001D8D4();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_100019B4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10001D8E4();
}

uint64_t sub_100019B80()
{
  sub_10001A43C();
  result = sub_10001D894();
  *v0 = result;
  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_100032D60;
  if (!qword_100032D60)
  {
    sub_100005B4C(&qword_100032D58, &qword_100020E00);
    sub_100019C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D60);
  }

  return result;
}

unint64_t sub_100019C5C()
{
  result = qword_100032D68;
  if (!qword_100032D68)
  {
    sub_100005B4C(&qword_100032D70, &qword_100020E08);
    sub_100019D14();
    sub_100006B8C(&qword_100032D98, &unk_100032DA0, &unk_100020E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D68);
  }

  return result;
}

unint64_t sub_100019D14()
{
  result = qword_100032D78;
  if (!qword_100032D78)
  {
    sub_100005B4C(&qword_100032D80, &qword_100020E10);
    sub_100006B8C(&qword_100032D88, &qword_100032D90, &qword_100020E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032D78);
  }

  return result;
}

uint64_t sub_100019DCC()
{
  sub_10001A43C();
  result = sub_10001D824();
  *v0 = result;
  return result;
}

uint64_t sub_100019DF4()
{
  sub_10001A3E4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100019E30()
{
  sub_10001A43C();
  result = sub_10001D834();
  *v0 = result;
  return result;
}

unint64_t sub_100019E5C()
{
  result = qword_100032E28;
  if (!qword_100032E28)
  {
    sub_100005B4C(&qword_100032E20, &qword_100020EA0);
    sub_100019F14();
    sub_100006B8C(&qword_100032E38, &unk_100032E40, &qword_100020EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032E28);
  }

  return result;
}

unint64_t sub_100019F14()
{
  result = qword_100032E30;
  if (!qword_100032E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032E30);
  }

  return result;
}

uint64_t sub_100019F68()
{
  swift_unknownObjectWeakDestroy();
  sub_10001A3E4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100019FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100019FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005A2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001A034()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001A07C()
{
  sub_100016984();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001A380;

  return sub_1000189D8(v2, v3, v4);
}

uint64_t sub_10001A130()
{
  sub_100016AA8();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10001A380;

  return sub_100019588(v2, v3, v5);
}

uint64_t sub_10001A1EC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001A22C()
{
  sub_100016AA8();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10001A3B8(v5);
  *v6 = v7;
  v6[1] = sub_10001A380;
  v8 = sub_10001A3C8();

  return v9(v8);
}

uint64_t sub_10001A2D8()
{
  sub_100016984();
  sub_10001A448();
  v0 = swift_task_alloc();
  v1 = sub_10001A3B8(v0);
  *v1 = v2;
  v3 = sub_10001A388(v1);

  return v4(v3);
}

uint64_t sub_10001A388(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id sub_10001A3F0()
{
  v3 = *(v1 + 808);

  return [v0 v3];
}

id sub_10001A408()
{
  v3 = *(v1 + 808);

  return [v0 v3];
}

id sub_10001A420()
{
  v4 = *(v2 + 872);

  return [v0 v4];
}

uint64_t FocusConfigurationMastheadView.iconConfiguration.getter()
{
  v1 = v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration;
  v2 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration);
  v3 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_10000C8B4();
  sub_10001A4AC(v6, v7, v4, v5);
  return sub_10000C8B4();
}

id sub_10001A4AC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return a3;
  }

  else
  {
  }
}

uint64_t FocusConfigurationMastheadView.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_title);
  v2 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_title + 8);

  return sub_10000C8B4();
}

uint64_t FocusConfigurationMastheadView.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle);
  v2 = *(v0 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle + 8);

  return sub_10000C8B4();
}

id FocusConfigurationMastheadView.init(bundleIdentifier:title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration;
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v8 = (v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_title);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle);
  *v9 = a5;
  v9[1] = a6;
  v15 = type metadata accessor for FocusConfigurationMastheadView();
  v10 = sub_10001B08C();
  v13 = objc_msgSendSuper2(v11, v12, v10, v6, v15);
  sub_10001A984();

  return v13;
}

objc_super *FocusConfigurationMastheadView.init(symbolName:color:title:subtitle:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration;
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = 1;
  v10 = (v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_title);
  *v10 = a4;
  v10[1] = a5;
  v11 = (v7 + OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle);
  *v11 = a6;
  v11[1] = a7;
  v17 = type metadata accessor for FocusConfigurationMastheadView();
  v12 = a3;
  v13 = sub_10001B08C();
  v15 = [(objc_super *)v14 initWithFrame:v13, v7, v17];
  sub_10001A984();

  return v15;
}

void sub_10001A984()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  [v1 setBackgroundColor:v3];

  v4 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration];
  v5 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 8];
  v6 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 16];
  v7 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_title];
  v8 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_title + 8];
  v9 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle];
  v10 = *&v1[OBJC_IVAR___WFFocusConfigurationMastheadView_subtitle + 8];
  if (v1[OBJC_IVAR___WFFocusConfigurationMastheadView_iconConfiguration + 24])
  {
    v11 = objc_allocWithZone(sub_10001D654());
    v12 = sub_10001B0C0();
    sub_10001A4AC(v12, v13, v14, 1);

    v15 = sub_10001D644();
  }

  else
  {
    v16 = objc_allocWithZone(sub_10001D614());
    v17 = sub_10001B0C0();
    sub_10001A4AC(v17, v18, v19, 0);

    v15 = sub_10001D604();
  }

  v36 = v15;
  v20 = [v2 clearColor];
  [v36 setBackgroundColor:v20];

  [v1 addSubview:v36];
  v21 = objc_opt_self();
  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100020D30;
  v23 = [v1 leadingAnchor];
  v24 = [v36 leadingAnchor];
  v25 = sub_10001B0A4();

  *(v22 + 32) = v25;
  v26 = [v1 trailingAnchor];
  v27 = [v36 trailingAnchor];
  v28 = sub_10001B0A4();

  *(v22 + 40) = v28;
  v29 = [v1 topAnchor];
  v30 = [v36 topAnchor];
  v31 = sub_10001B0A4();

  *(v22 + 48) = v31;
  v32 = [v1 bottomAnchor];
  v33 = [v36 bottomAnchor];

  v34 = [v32 constraintEqualToAnchor:v33 constant:36.0];
  *(v22 + 56) = v34;
  sub_10001B048();
  isa = sub_10001DDC4().super.isa;

  [v21 activateConstraints:isa];
}

id FocusConfigurationMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id FocusConfigurationMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id FocusConfigurationMastheadView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusConfigurationMastheadView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10001AF34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_10001AF48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_10001AF88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_10001AFEC(uint64_t a1, uint64_t a2, void *a3, char a4)
{

  if (a4)
  {
  }
}

unint64_t sub_10001B048()
{
  result = qword_100032EF8;
  if (!qword_100032EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100032EF8);
  }

  return result;
}

id sub_10001B0A4()
{
  v4 = *(v2 + 872);

  return [v0 v4];
}

void sub_10001BD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BD90(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 key];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

BOOL sub_10001BDD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 allowsMultipleValues] && (objc_msgSend(v3, "displaysMultipleValueEditor") & 1) != 0)
  {
    v4 = 1;
  }

  else if ([*(a1 + 32) showsParameterDescription])
  {
    v5 = [v3 localizedDescription];
    v4 = [v5 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_10001BE60(uint64_t a1, unint64_t a2)
{
  if (a2 > *(*(*(a1 + 48) + 8) + 24))
  {
    v4 = [NSIndexSet indexSetWithIndexesInRange:?];
    v5 = [*(a1 + 32) objectsAtIndexes:v4];
    v6 = [WFDataConfigurationParametersSection alloc];
    ++*(*(*(a1 + 56) + 8) + 24);
    v7 = [(WFDataConfigurationParametersSection *)v6 initWithParameters:v5 sectionIndex:?];
    [*(a1 + 40) addObject:v7];
  }

  v8 = [WFDataConfigurationParametersSection alloc];
  v9 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v12 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:1];
  ++*(*(*(a1 + 56) + 8) + 24);
  v11 = [(WFDataConfigurationParametersSection *)v8 initWithParameters:v10 sectionIndex:?];

  [*(a1 + 40) addObject:v11];
  *(*(*(a1 + 48) + 8) + 24) = a2 + 1;
}

void sub_10001BFD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v9 count:1];
  [v3 appendSectionsWithIdentifiers:{v5, v9}];

  v6 = *(a1 + 32);
  v7 = [v4 parameters];
  v8 = [v7 valueForKey:@"key"];
  [v6 appendItemsWithIdentifiers:v8];
}

NSString *__cdecl sub_10001C0B0(id a1, WFFocusConfigurationButton *a2, unint64_t a3)
{
  v3 = [(WFFocusConfigurationButton *)a2 identifier];
  v4 = [@"_footerButton_" stringByAppendingString:v3];

  return v4;
}

void sub_10001CA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10001CAB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([v9 hasPrefix:@"_footerButton_"])
  {
    v11 = [v9 substringFromIndex:{objc_msgSend(@"_footerButton_", "length")}];
    v12 = [WeakRetained footerButtons];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001CDB4;
    v27[3] = &unk_10002DE60;
    v13 = v11;
    v28 = v13;
    v14 = [v12 if_firstObjectPassingTest:v27];

    v15 = [v7 dequeueReusableCellWithIdentifier:@"ButtonCell" forIndexPath:v8];
    v16 = +[UIListContentConfiguration cellConfiguration];
    v17 = [v14 localizedTitle];
    [v16 setText:v17];

    if ([v14 isDestructive])
    {
      +[UIColor systemRedColor];
    }

    else
    {
      +[UIColor tintColor];
    }
    v24 = ;
    v25 = [v16 textProperties];
    [v25 setColor:v24];

    [v15 setContentConfiguration:v16];
  }

  else
  {
    v18 = v9;
    v15 = [v7 dequeueReusableCellWithIdentifier:@"ParameterEditorHostingCell" forIndexPath:v8];
    [v15 setContainingViewController:WeakRetained];
    [v15 setDelegate:WeakRetained];
    v19 = [WeakRetained action];
    v13 = [v19 parameterForKey:v18];

    v20 = [WeakRetained action];
    v21 = [v20 parameterStateForKey:v18 fallingBackToDefaultValue:1];

    v22 = [[WFParameterEditorModel alloc] initWithParameter:v13 state:v21 widgetFamily:{objc_msgSend(WeakRetained, "widgetFamily")}];
    [v15 updateModel:v22];

    [v15 layoutIfNeeded];
    v23 = [WeakRetained action];
    [WeakRetained configureCell:v15 forAction:v23 parameter:v13];
  }

  return v15;
}

id sub_10001CDB4(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void sub_10001CFD0(uint64_t a1)
{
  [*(a1 + 32) preferredContentSize];
  v3 = v2;
  v5 = v4;
  v6 = [*(a1 + 32) tableView];
  [v6 contentSize];
  v8 = v7;
  v10 = v9;

  if (v3 != v8 || v5 != v10)
  {
    v12 = [*(a1 + 32) tableView];
    [v12 contentSize];
    [*(a1 + 32) setPreferredContentSize:?];
  }
}

void sub_10001D14C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v9 = v6;
  if (v6)
  {
    v8 = [*(a1 + 32) action];
    (*(v7 + 16))(v7, v8, v9, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, 0, a4);
  }
}

void sub_10001D364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  [v6 addEventObserver:v3];
  v4 = [v6 resourceManager];
  [v4 addTarget:*(a1 + 32) selector:"reloadActionParameterModels"];

  if (*(a1 + 40) == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [v6 setEditingContext:v5];
}

BOOL sub_10001D468(id a1, WFParameter *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (-[WFParameter key](v2, "key"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:WFHandleIntentActionShowWhenRunKey], v3, (v4))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(WFParameter *)v2 key];
    if ([v6 isEqualToString:WFLinkActionShowWhenRunKey])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [(WFParameter *)v2 key];
      v5 = [v7 isEqualToString:WFLinkActionOpenWhenRunKey] ^ 1;
    }
  }

  return v5;
}