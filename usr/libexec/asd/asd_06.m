unint64_t sub_1000A4F40()
{
  result = qword_1006CBC38;
  if (!qword_1006CBC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC38);
  }

  return result;
}

unint64_t sub_1000A4F98()
{
  result = qword_1006CBC40;
  if (!qword_1006CBC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC40);
  }

  return result;
}

unint64_t sub_1000A4FF0()
{
  result = qword_1006CBC48;
  if (!qword_1006CBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC48);
  }

  return result;
}

unint64_t sub_1000A5044()
{
  result = qword_1006CBC58;
  if (!qword_1006CBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC58);
  }

  return result;
}

unint64_t sub_1000A5098()
{
  result = qword_1006CBC60;
  if (!qword_1006CBC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC60);
  }

  return result;
}

unint64_t sub_1000A50EC()
{
  result = qword_1006CBC70;
  if (!qword_1006CBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC70);
  }

  return result;
}

unint64_t sub_1000A5140()
{
  result = qword_1006CBC78;
  if (!qword_1006CBC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC78);
  }

  return result;
}

unint64_t sub_1000A5194()
{
  result = qword_1006CBC88;
  if (!qword_1006CBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC88);
  }

  return result;
}

uint64_t sub_1000A51E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CBBB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A5258()
{
  result = qword_1006CBC98;
  if (!qword_1006CBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBC98);
  }

  return result;
}

uint64_t sub_1000A52AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    sub_1000A5B1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A52EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006CA2B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A5354()
{
  result = qword_1006CBCA0;
  if (!qword_1006CBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCA0);
  }

  return result;
}

unint64_t sub_1000A53A8()
{
  result = qword_1006CBCA8;
  if (!qword_1006CBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCA8);
  }

  return result;
}

unint64_t sub_1000A53FC()
{
  result = qword_1006CBCB8;
  if (!qword_1006CBCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCB8);
  }

  return result;
}

unint64_t sub_1000A5450()
{
  result = qword_1006CBCC8;
  if (!qword_1006CBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCC8);
  }

  return result;
}

_BYTE *sub_1000A54AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000A5578);
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

uint64_t getEnumTagSinglePayload for PushPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PushPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x1000A5704);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000A5740()
{
  result = qword_1006CBCD0;
  if (!qword_1006CBCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCD0);
  }

  return result;
}

unint64_t sub_1000A5798()
{
  result = qword_1006CBCD8;
  if (!qword_1006CBCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCD8);
  }

  return result;
}

unint64_t sub_1000A57F0()
{
  result = qword_1006CBCE0;
  if (!qword_1006CBCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCE0);
  }

  return result;
}

unint64_t sub_1000A5848()
{
  result = qword_1006CBCE8;
  if (!qword_1006CBCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCE8);
  }

  return result;
}

unint64_t sub_1000A58A0()
{
  result = qword_1006CBCF0;
  if (!qword_1006CBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCF0);
  }

  return result;
}

unint64_t sub_1000A58F8()
{
  result = qword_1006CBCF8;
  if (!qword_1006CBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBCF8);
  }

  return result;
}

uint64_t sub_1000A5984()
{

  return swift_dynamicCast();
}

double sub_1000A59A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_10005527C(&a14, v19, &a19);
}

uint64_t sub_1000A59E8(unint64_t *a1)
{

  return sub_10004DD84(a1);
}

uint64_t sub_1000A5A20(unint64_t *a1)
{

  return sub_10004DD84(a1);
}

uint64_t sub_1000A5A44()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_1000A5AE0()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_1000A5AF8()
{

  return swift_dynamicCast();
}

uint64_t sub_1000A5B28()
{

  return swift_dynamicCast();
}

uint64_t sub_1000A5B48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1685025392 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  v6 = a1 == 0x786F62646E6173 && a2 == 0xE700000000000000;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (qword_1006C97F8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100046E6C(v7, qword_1006CBD00);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v10 = 136315138;
      v11 = sub_100052F7C();

      *(v10 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected push environment name: %s setting to prod", v10, 0xCu);
      sub_100044850(v12);
    }

    else
    {
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000A5D38()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CBD00);
  sub_100046E6C(v0, qword_1006CBD00);
  return Logger.init(subsystem:category:)();
}

id sub_1000A5DC0()
{
  result = [objc_allocWithZone(type metadata accessor for PushCoordinator()) init];
  static PushCoordinator.shared = result;
  return result;
}

uint64_t *PushCoordinator.shared.unsafeMutableAddressor()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    swift_once();
  }

  return &static PushCoordinator.shared;
}

id static PushCoordinator.shared.getter()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    swift_once();
  }

  v1 = static PushCoordinator.shared;

  return v1;
}

uint64_t static PushCoordinator.configurePush()()
{
  if (qword_1006C9800 != -1)
  {
    sub_1000A8584();
    return swift_once();
  }

  return result;
}

id sub_1000A5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1000443DC(&qword_1006C9E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_10004EAF4();
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_pushServiceManager] = a1;
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_pdsManager] = a2;
  *&v4[OBJC_IVAR____TtC3asd15PushCoordinator_cloudChannelManager] = a3;
  v31.receiver = v4;
  v31.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v31, "init");
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_1000A85B4();
  sub_1000485F8(v13, v14, v15, v12);
  sub_1000A85A8();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;

  v17 = v11;
  v18 = sub_1000A85C4();
  sub_10006F27C(v18, v19, v20, v21, v16);

  v22 = sub_1000A85B4();
  sub_1000485F8(v22, v23, v24, v12);
  sub_1000A85A8();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a3;

  v26 = sub_1000A85C4();
  sub_10006F27C(v26, v27, v28, v29, v25);

  return v17;
}

uint64_t sub_1000A60CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A8560;

  return sub_1000C21CC(v1);
}

uint64_t sub_1000A615C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100067ED0;

  return sub_10009DE20();
}

id sub_1000A61EC()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1000443DC(&qword_1006C9E20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_10004EAF4();
  v57 = v3 - v2;
  v4 = [objc_opt_self() standardUserDefaults];
  sub_10004F290(v4, v5, v6, v7, v8, v9, v10, v11, v51, v52, v53, v54, v55, v56, v57, ObjectType, v59, v60, v61[0], v61[1], v61[2], v62, v63, v64, v65, v66);
  v13 = v12;
  v15 = v14;

  v16 = sub_1000A5B48(v13, v15);
  type metadata accessor for ODIAccountManager();
  static ODIAccountManager.shared.getter();
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = sub_1000A7B4C(&v67, static ASDConfigurationManager.shared);
  v18 = [objc_allocWithZone(Vr3QrKl7Yn9l4CTz) init];
  v55 = [objc_opt_self() defaultCenter];
  if (qword_1006C97E8 != -1)
  {
    swift_once();
  }

  v19 = static RavioliManagerObjC.shared;
  v20 = static ASDConfigurationManager.shared;
  v21 = type metadata accessor for ASAnalyticsManager();
  v22 = swift_allocObject();
  v23 = v19;
  v56 = v18;

  v24 = sub_1000A7C68(v23, v56, v17, v20, v22);
  v60 = sub_1000A811C(0xD000000000000012, 0x80000001005A5140, v24, v16);
  v25 = static ASDConfigurationManager.shared;
  v26 = swift_allocObject();
  v68 = v21;
  v69 = &off_1006935C8;
  *&v67 = v26;
  type metadata accessor for PushManagerPDS();
  v54 = swift_allocObject();
  v27 = sub_10007E228(&v67, v21);
  v53 = v17;
  v51 = &v51;
  v28 = *(v21 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = *(v28 + 16);
  v31(&v51 - v30);
  HIDWORD(v52) = v16;
  v32 = *(&v51 - v30);
  v33 = v25;
  v34 = v55;
  v55 = sub_1000A770C(0xD000000000000012, 0x80000001005A5140, v16, v33, v34, v32, v54);
  sub_100044850(&v67);
  v35 = v60[3];
  v36 = swift_allocObject();
  v68 = v21;
  v69 = &off_1006935C8;
  *&v67 = v36;
  type metadata accessor for PushCloudChannelsManager();
  v37 = swift_allocObject();
  v38 = sub_10007E228(&v67, v21);
  v54 = &v51;
  __chkstk_darwin(v38);
  v31(&v51 - v30);
  v39 = *(&v51 - v30);
  v62 = v21;
  v63 = &off_1006935C8;
  v61[0] = v39;
  v40 = v53;

  v41 = v34;
  v42 = v35;
  swift_defaultActor_initialize();
  *(v37 + 200) = 0;
  *(v37 + 112) = v42;
  *(v37 + 120) = 0xD000000000000012;
  *(v37 + 128) = 0x80000001005A5140;
  *(v37 + 136) = BYTE4(v52);
  *(v37 + 144) = v40;
  sub_1000446C4(v61, v37 + 152);
  *(v37 + 192) = v41;
  v43 = type metadata accessor for TaskPriority();
  v44 = v57;
  sub_1000485F8(v57, 1, 1, v43);
  sub_1000A85A8();
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v37;

  v46 = v41;
  v47 = v42;

  sub_10006F27C(0, 0, v44, &unk_1005CE000, v45);

  sub_100044850(v61);
  sub_100044850(&v67);
  v48 = objc_allocWithZone(ObjectType);
  v49 = sub_1000A5EF8(v60, v55, v37);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v49;
}

uint64_t sub_1000A67E8()
{
  sub_1000657D4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd15PushCoordinator_pdsManager);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000A8564;

  return sub_1000C26A0(v2);
}

uint64_t sub_1000A6884()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000A67C8(v3, v4, v5, v6);
}

uint64_t sub_1000A6978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_10004EAF4();
  type metadata accessor for TaskPriority();
  v6 = sub_1000A85B4();
  sub_1000485F8(v6, v7, v8, v9);
  sub_1000A85A8();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v11 = v2;
  v12 = sub_1000A85C4();
  sub_10006F27C(v12, v13, v14, a2, v10);
}

uint64_t sub_1000A6A4C()
{
  sub_1000657D4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd15PushCoordinator_pdsManager);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000A6AE4;

  return sub_1000C37D4(v2);
}

uint64_t sub_1000A6AE4()
{
  sub_1000657D4();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_1000655F4();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1000A6BCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000A85A8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A6C08()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000A6A2C(v3, v4, v5, v6);
}

_BYTE *storeEnumTagSinglePayload for PushEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000A6E28);
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

unint64_t sub_1000A6E64()
{
  result = qword_1006CBD58;
  if (!qword_1006CBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBD58);
  }

  return result;
}

id sub_1000A6EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

id sub_1000A6F64()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithClientID:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

void sub_1000A7030(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 _setOpportunisticTopics:isa];
}

id sub_1000A709C(uint64_t a1, void *a2)
{
  v7[3] = type metadata accessor for PushDispatchManager();
  v7[4] = &off_100693B38;
  v7[0] = a1;
  Logger.init(subsystem:category:)();
  sub_1000446C4(v7, a2 + OBJC_IVAR____TtCC3asd18PushServiceManager12PushDelegate_pushDispatchManager);
  v6.receiver = a2;
  v6.super_class = type metadata accessor for PushServiceManager.PushDelegate();
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_100044850(v7);
  return v4;
}

id sub_1000A7168(uint64_t a1)
{
  v2 = type metadata accessor for PushDispatchManager();
  v12[3] = v2;
  v12[4] = &off_100693B38;
  v12[0] = a1;
  v3 = objc_allocWithZone(type metadata accessor for PushServiceManager.PushDelegate());
  v4 = sub_10007E228(v12, v2);
  v5 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_1000A709C(*v7, v3);
  sub_100044850(v12);
  return v9;
}

void *sub_1000A7274(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v40 = a4;
  v38 = a1;
  v39 = a2;
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v43[3] = type metadata accessor for PushDispatchManager();
  v43[4] = &off_100693B38;
  v43[0] = a3;
  sub_10007DD5C();
  static DispatchQoS.unspecified.getter();
  v41[0] = _swiftEmptyArrayStorage;
  sub_10007DDA0();
  sub_1000443DC(&qword_1006CB010);
  sub_10007DDF8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  v15 = v38;
  a5[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a5[6] = 0xD000000000000019;
  a5[7] = 0x80000001005A5180;
  v16 = v39;
  a5[4] = v15;
  a5[5] = v16;
  sub_1000446C4(v43, v41);
  v17 = v42;
  v18 = sub_10007E228(v41, v42);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;

  v24 = sub_1000A7168(v23);
  sub_100044850(v41);
  v25 = &APSEnvironmentDevelopment;
  a5[8] = v24;
  if ((v40 & 1) == 0)
  {
    v25 = &APSEnvironmentProduction;
  }

  v26 = *v25;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;
  v30 = a5[6];
  v31 = a5[7];
  v32 = a5[2];
  objc_allocWithZone(APSConnection);

  v33 = v32;
  result = sub_1000A6EB8(v27, v29, v30, v31, v32);
  if (result)
  {
    a5[3] = result;
    [result setDelegate:a5[8]];
    v35 = a5[3];
    sub_1000443DC(&qword_1006CA620);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1005CB870;
    *(v36 + 32) = v15;
    *(v36 + 40) = v16;
    sub_1000A7030(v36, v35);
    sub_100044850(v43);
    return a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A764C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for ASDConfigurationManager();
  v9 = &off_1006943C0;
  *&v7 = a2;
  Logger.init(subsystem:category:)();
  sub_100046D90(a1, a3 + 16);
  sub_100046D90(&v7, a3 + 56);
  return a3;
}

uint64_t sub_1000A770C(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1000443DC(&qword_1006C9E20);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[3] = type metadata accessor for ASAnalyticsManager();
  v29[4] = &off_1006935C8;
  v29[0] = a6;
  swift_defaultActor_initialize();
  *(a7 + 200) = 0;
  *(a7 + 208) = 0;
  *(a7 + 120) = a1;
  *(a7 + 128) = a2;
  *(a7 + 136) = a3 & 1;
  *(a7 + 184) = a4;
  sub_1000446C4(v29, a7 + 144);
  *(a7 + 192) = a5;
  objc_allocWithZone(PDSRegistrar);
  v18 = a4;
  v19 = a5;
  *(a7 + 112) = sub_1000A6F64();
  if (qword_1006C9838 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100046E6C(v20, qword_1006CC630);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[5] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v21, v22, "PDS Registrar configured for clientID: %s", v23, 0xCu);
    sub_100044850(v24);
  }

  v25 = type metadata accessor for TaskPriority();
  sub_1000485F8(v17, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = a7;

  sub_10006F27C(0, 0, v17, &unk_1005CE028, v26);

  sub_100044850(v29);
  return a7;
}

uint64_t sub_1000A7B4C(__int128 *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v17[3] = ObjectType;
  v17[4] = &off_1006943C0;
  v17[0] = a2;
  v5 = type metadata accessor for DeviceContextProvider();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = sub_10007E228(v17, ObjectType);
  v10 = *(*(ObjectType - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_1000A764C(a1, *v12, v8);
  sub_100044850(v17);
  return v14;
}

uint64_t sub_1000A7C68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v45 = a2;
  v46 = a3;
  v8 = *a5;
  v9 = sub_1000443DC(&qword_1006C9E20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RavioliManagerObjC();
  v56[3] = v13;
  v56[4] = &off_1006937A8;
  v56[0] = a1;
  v14 = type metadata accessor for ASDConfigurationManager();
  v54 = v14;
  v55 = &off_1006943D8;
  v53[0] = a4;
  v51 = v8;
  v52 = &off_1006935C8;
  v50[0] = a5;
  v15 = type metadata accessor for PushDispatchManager();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = sub_10007E228(v56, v13);
  v20 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v54;
  v25 = sub_10007E228(v53, v54);
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = (&v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = v51;
  v31 = sub_10007E228(v50, v51);
  v32 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v31);
  v34 = (&v45 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v22;
  v37 = *v28;
  v38 = *v34;
  v49[3] = v13;
  v49[4] = &off_1006937A8;
  v49[0] = v36;
  v48[3] = v14;
  v48[4] = &off_1006943D8;
  v48[0] = v37;
  v47[3] = v8;
  v47[4] = &off_1006935C8;
  v47[0] = v38;
  swift_defaultActor_initialize();
  Logger.init(subsystem:category:)();
  *(v18 + OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations) = _swiftEmptyArrayStorage;
  sub_1000446C4(v49, v18 + 112);
  v39 = v45;
  *(v18 + 152) = v45;
  sub_1000446C4(v48, v18 + 160);
  *(v18 + OBJC_IVAR____TtC3asd19PushDispatchManager_contextProvider) = v46;
  sub_1000446C4(v47, v18 + OBJC_IVAR____TtC3asd19PushDispatchManager_analyticsManager);
  v40 = OBJC_IVAR____TtC3asd19PushDispatchManager_scheduledOperations;
  swift_beginAccess();
  *(v18 + v40) = _swiftEmptyArrayStorage;
  v41 = type metadata accessor for TaskPriority();
  sub_1000485F8(v12, 1, 1, v41);
  v42 = swift_allocObject();
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v18;
  v43 = v39;

  sub_10006F27C(0, 0, v12, &unk_1005CE030, v42);

  sub_100044850(v47);
  sub_100044850(v48);
  sub_100044850(v49);
  sub_100044850(v50);
  sub_100044850(v53);
  sub_100044850(v56);
  return v18;
}

void *sub_1000A811C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for PushDispatchManager();
  v18[3] = v8;
  v18[4] = &off_100693B38;
  v18[0] = a3;
  type metadata accessor for PushServiceManager();
  v9 = swift_allocObject();
  v10 = sub_10007E228(v18, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_1000A7274(a1, a2, *v13, a4 & 1, v9);
  sub_100044850(v18);
  return v15;
}

uint64_t sub_1000A8254()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_10009D9D8(v3, v4, v5, v6);
}

uint64_t sub_1000A82E0()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000A60CC();
}

uint64_t sub_1000A836C()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000A615C();
}

uint64_t sub_1000A83F8()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  v3 = sub_1000A8568(v1);

  return sub_1000C1DD4(v3, v4, v5, v6);
}

uint64_t sub_1000A8484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1000A85A8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000A84C0()
{
  sub_1000657EC();
  sub_1000A8598();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000A8568(v1);

  return sub_1000986B0();
}

void sub_1000A8598()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_1000A85D4()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + OBJC_IVAR____TtC3asd15ContactsManager_accessQueue);
  sub_10006BF14();
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  sub_10006BF14();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000A936C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1000A9390;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBBE8;
  aBlock[3] = &unk_1006942B8;
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

void sub_1000A8738(id *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC3asd15ContactsManager__contact);
  v4 = *a1;
  *a1 = v2;
  v3 = v2;
}

uint64_t sub_1000A8784(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchQoS();
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = sub_10004EAE0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_10004EAF4();
  v21 = v20 - v19;
  v22 = *(v1 + OBJC_IVAR____TtC3asd15ContactsManager_accessQueue);
  static DispatchWorkItemFlags.barrier.getter();
  sub_10006BF14();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_1000A9318;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694240;
  v24 = _Block_copy(aBlock);
  v25 = a1;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v7 + 8))(v12, v4);
  (*(v16 + 8))(v21, v13);
}

void sub_1000A8994(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC3asd15ContactsManager__contact);
  *(a1 + OBJC_IVAR____TtC3asd15ContactsManager__contact) = a2;
  v2 = a2;
}

uint64_t sub_1000A89DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = sub_10004EAE0(v4);
  v28 = v6;
  v29 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v27 = v10 - v9;
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10004EAF4();
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10004EAF4();
  sub_1000443DC(&qword_1006CBEB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1005CE040;
  *(v15 + 32) = CNContactGivenNameKey;
  *(v15 + 40) = CNContactFamilyNameKey;
  *(v15 + 48) = CNContactPhoneNumbersKey;
  *(v15 + 56) = CNContactEmailAddressesKey;
  *(v15 + 64) = CNContactPostalAddressesKey;
  *(v2 + 24) = v15;
  v26 = OBJC_IVAR____TtC3asd15ContactsManager_accessQueue;
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  v16 = CNContactGivenNameKey;
  v17 = CNContactFamilyNameKey;
  v18 = CNContactPhoneNumbersKey;
  v19 = CNContactEmailAddressesKey;
  v20 = CNContactPostalAddressesKey;
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v28 + 104))(v27, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v29);
  *(v2 + v26) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + OBJC_IVAR____TtC3asd15ContactsManager__contact) = 0;
  *(v2 + 16) = a1;
  v21 = OBJC_IVAR____TtC3asd15ContactsManager_logger;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v3 + v21, a2, v22);
  v24 = a1;
  sub_1000A8F7C();

  (*(v23 + 8))(a2, v22);
  return v3;
}

void sub_1000A8CC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Registering observer for MeCard change", v8, 2u);
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = CNContactStoreMeContactDidChangeNotification;
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v15[4] = sub_1000A93D8;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000C1C04;
  v15[3] = &unk_100694308;
  v13 = _Block_copy(v15);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

uint64_t sub_1000A8EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = sub_1000A8F7C();
  if (result)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "MeContactDidChange notification received. Triggering handler.", v7, 2u);
    }

    return a3();
  }

  return result;
}

uint64_t sub_1000A8F7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  sub_1000443DC(&qword_1006CBEA0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v14 = 0;
  v5 = [v3 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v14];

  if (v5)
  {
    v6 = v14;
    v7 = v5;
    v8 = sub_1000A85D4();
    if (!v8 || (v9 = v8, sub_1000591B0(0, &qword_1006CBEA8, CNContact_ptr), v10 = v7, v11 = static NSObject.== infix(_:_:)(), v10, v9, (v11 & 1) == 0))
    {
      sub_1000A8784(v5);

      return 1;
    }
  }

  else
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return 0;
}

uint64_t sub_1000A90E8()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC3asd15ContactsManager_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_1000A9178()
{
  sub_1000A90E8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContactsManager()
{
  result = qword_1006CBDA0;
  if (!qword_1006CBDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A9224()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000A92DC()
{
  v1 = *(v0 + 16);

  sub_10006BF14();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A9320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A9338()
{
  v1 = *(v0 + 24);

  sub_10006BF14();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000A9398()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000A93F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!v3 & v2)
  {
    switch(a1)
    {
      case 428:
        v5 = &enum case for HTTPStatusCode.httpPreconditionRequired(_:);
        break;
      case 429:
        v5 = &enum case for HTTPStatusCode.httpTooManyRequests(_:);
        break;
      case 430:
      case 431:
      case 432:
        goto LABEL_11;
      case 433:
        v5 = &enum case for HTTPStatusCode.httpAuthKitReprovision(_:);
        break;
      case 434:
        v5 = &enum case for HTTPStatusCode.httpAuthKitResync(_:);
        break;
      default:
        switch(a1)
        {
          case 304:
            v5 = &enum case for HTTPStatusCode.httpNotModified(_:);
            break;
          case 301:
            v5 = &enum case for HTTPStatusCode.httpMovedPermanently(_:);
            break;
          case 200:
            v5 = &enum case for HTTPStatusCode.httpSuccess(_:);
            break;
          default:
LABEL_11:
            *a2 = a1;
            v5 = &enum case for HTTPStatusCode.httpUnknownStatus(_:);
            break;
        }

        break;
    }
  }

  else
  {
    switch(a1)
    {
      case 500:
        v5 = &enum case for HTTPStatusCode.httpInternalServerError(_:);
        break;
      case 501:
        v5 = &enum case for HTTPStatusCode.httpNotImplemented(_:);
        break;
      case 502:
        v5 = &enum case for HTTPStatusCode.httpBadGateway(_:);
        break;
      case 503:
        v5 = &enum case for HTTPStatusCode.httpServiceUnavailable(_:);
        break;
      case 504:
        v5 = &enum case for HTTPStatusCode.httpGatewayTimeout(_:);
        break;
      default:
        JUMPOUT(0);
    }
  }

  v6 = *v5;
  v7 = type metadata accessor for HTTPStatusCode();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t sub_1000A960C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  v6 = 0;
  v7 = a1 + 40;
  v16 = _swiftEmptyArrayStorage;
LABEL_2:
  for (i = (v7 + 16 * v6); ; i += 2)
  {
    if (v4 == v6)
    {

      return v16;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v9 = *i;
    v17 = *a2;
    v18 = a2[1];
    sub_10005915C();

    if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      v11 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000BDEA4(0, v16[2] + 1, 1);
        v11 = v16;
      }

      v13 = v11[2];
      v12 = v11[3];
      v14 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        result = sub_1000BDEA4((v12 > 1), v13 + 1, 1);
        v14 = (v13 + 1);
        v11 = v16;
      }

      ++v6;
      v11[2] = v14;
      v16 = v11;
      v15 = &v11[2 * v13];
      v15[4] = v10;
      v15[5] = v9;
      v7 = a1 + 40;
      goto LABEL_2;
    }

    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A9794()
{
  sub_1000657D4();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for ODIBindingsDict();
  v1[20] = v3;
  v4 = *(v3 - 8);
  v1[21] = v4;
  v5 = *(v4 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v6 = type metadata accessor for AssessmentConfig.Sources();
  v1[27] = v6;
  v7 = *(v6 - 8);
  v1[28] = v7;
  v8 = *(v7 + 64) + 15;
  v1[29] = swift_task_alloc();
  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000A98D4()
{
  v1 = *(v0 + 144);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    *(v0 + 620) = v2;
    v3 = 1 << v2;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    else
    {
      v4 = -1;
    }

    v5 = v4 & *(v1 + 64);
    *(v0 + 592) = enum case for AssessmentConfig.Sources.accountsiCloud(_:);
    *(v0 + 596) = enum case for AssessmentConfig.Sources.accountsiTunes(_:);
    *(v0 + 600) = enum case for AssessmentConfig.Sources.CoreTelephony(_:);
    *(v0 + 604) = enum case for AssessmentConfig.Sources.MeCard(_:);
    v6 = ACAccountTypeIdentifierAppleAccount;
    *(v0 + 240) = ACAccountTypeIdentifieriTunesStore;
    *(v0 + 248) = v6;

    v7 = 0;
    v8 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      *(v0 + 256) = v8;
      if (!v5)
      {
        break;
      }

      v9 = *(v0 + 144);
LABEL_12:
      *(v0 + 264) = v5;
      *(v0 + 272) = v7;
      v11 = *(v0 + 152);
      v12 = __clz(__rbit64(v5)) | (v7 << 6);
      v13 = (*(v9 + 48) + 16 * v12);
      *(v0 + 280) = *v13;
      *(v0 + 288) = v13[1];
      v14 = *(*(v9 + 56) + 8 * v12);
      *(v0 + 296) = v14;
      swift_bridgeObjectRetain_n();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = sub_100053F78();
        sub_100053F60();
        *v17 = 136315138;

        v18 = sub_100052F7C();

        *(v17 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v15, v16, "handleFetchBindings guessing for key %s", v17, 0xCu);
        sub_100098088();
        sub_1000488AC();
        sub_1000AF7D8();
      }

      *(v0 + 120) = 0;
      *(v0 + 128) = 0xE000000000000000;
      v19 = *(v14 + 16);
      *(v0 + 304) = v19;
      if (v19)
      {
        v20 = 0;
        v159 = 0;
        v155 = 0;
        v21 = 0;
        v22 = 0xE000000000000000;
        v23 = _swiftEmptyArrayStorage;
        v24 = 0xE000000000000000;
        v160 = 0xE000000000000000;
        v161 = 0xE000000000000000;
        v25 = 0xE000000000000000;
        v157 = 0xE000000000000000;
        v158 = 0xE000000000000000;
        v156 = 0xE000000000000000;
        while (1)
        {
          *(v0 + 320) = v20;
          *(v0 + 328) = v23;
          sub_1000AF6D4();
          if (v27)
          {
            goto LABEL_93;
          }

          sub_1000AF664(v26);
          if (v28)
          {
            sub_1000AFAC8();
            sub_1000AF814();
            v29 = 0;
            v30 = v155;
            while (1)
            {
              *(v0 + 424) = v157;
              *(v0 + 432) = v156;
              *(v0 + 408) = v161;
              *(v0 + 416) = v158;
              *(v0 + 392) = v25;
              *(v0 + 400) = v21;
              *(v0 + 376) = v30;
              *(v0 + 384) = v160;
              *(v0 + 360) = v159;
              *(v0 + 368) = v24;
              sub_1000AF6AC(v29);
              if (v27)
              {
                goto LABEL_92;
              }

              v33 = *(v0 + 592);
              v35 = *(v0 + 224);
              v34 = *(v0 + 232);
              v36 = *(v0 + 216);
              (*(v35 + 16))(v34, v32 + ((*(v0 + 608) + 32) & ~*(v0 + 608)) + *(v35 + 72) * v31, v36);
              if ((*(v35 + 88))(v34, v36) == v33)
              {
                sub_1000AFD94();
                sub_1000AFD7C();
                v115 = *(v0 + 80);
                v116 = *(v0 + 88);
                v117 = sub_1000AF6FC((v0 + 56));
                sub_1000AF944(v117, v118);
                v119 = async function pointer to dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)[1];
                v120 = swift_task_alloc();
                v121 = sub_1000AFC50(v120);
                *v121 = v122;
                sub_1000AF504();
                goto LABEL_74;
              }

              sub_1000AFCB4();
              if (v37)
              {
                break;
              }

              sub_1000AFCA8();
              if (v37)
              {
                v134 = type metadata accessor for ODIDeviceInfo();
                sub_1000AFC84(v134);
                v135 = async function pointer to static ODIDeviceInfo.shared.getter[1];
                v136 = swift_task_alloc();
                v137 = sub_1000AFC44(v136);
                *v137 = v138;
                sub_1000AF490(v137);
                sub_1000AFA24();

                return static ODIDeviceInfo.shared.getter();
              }

              sub_1000AFC9C();
              if (v37)
              {
                v38 = sub_1000AFD1C();
                if (v39)
                {
                  v40 = v38;
                  v36 = v39;
                  v41 = *(v0 + 152);
                  *(v0 + 120) = v38;
                  *(v0 + 128) = v39;

                  v42 = Logger.logObject.getter();
                  v43 = static os_log_type_t.debug.getter();
                  if (sub_100077680(v43))
                  {
                    v44 = sub_100053F78();
                    v162 = sub_100053F60();
                    *v44 = 136315138;

                    v45 = sub_100052F7C();

                    *(v44 + 4) = v45;
                    _os_log_impl(&_mh_execute_header, v42, v43, "fetchBindings found value from Me Card = %s", v44, 0xCu);
                    sub_100044850(v162);
                    sub_1000488AC();
                    sub_1000488AC();
                  }

                  v159 = v40;
                  v160 = v36;
                  v24 = v36;
                  v30 = v40;
                  v25 = v36;
                  v21 = v40;
                  v161 = v36;
                  v157 = v36;
                  v158 = v36;
                  v156 = v36;
                }
              }

              else
              {
                v46 = *(v0 + 152);
                v47 = Logger.logObject.getter();
                v48 = static os_log_type_t.debug.getter();
                if (sub_1000773E0(v48))
                {
                  v50 = sub_1000541D8();
                  *v50 = 0;
                  _os_log_impl(&_mh_execute_header, v47, v36, "fetchBindings no value found", v50, 2u);
                  sub_1000AF748();
                }

                v51 = *(v0 + 224);
                v36 = *(v0 + 232);
                v52 = *(v0 + 216);

                (*(v51 + 8))(v36, v52);
              }

              v53 = HIBYTE(v25) & 0xF;
              if ((v25 & 0x2000000000000000) == 0)
              {
                v53 = v21 & 0xFFFFFFFFFFFFLL;
              }

              if (v53)
              {
                sub_1000AFDAC();
                v55 = Logger.logObject.getter();
                v56 = static os_log_type_t.debug.getter();
                if (sub_1000773E0(v56))
                {
                  v57 = sub_1000541D8();
                  *v57 = 0;
                  _os_log_impl(&_mh_execute_header, v55, v36, "fetchBindings value found, skipping to next key", v57, 2u);
                  sub_1000AF748();
                }

                goto LABEL_42;
              }

              sub_1000AF980();
              if (v37)
              {
                v54 = *(v0 + 336);

LABEL_42:
                v22 = v25;
                goto LABEL_43;
              }
            }

            sub_1000AFD64();
            sub_1000AFD4C();
            v125 = *(v0 + 40);
            v126 = *(v0 + 48);
            v127 = sub_1000AF6FC((v0 + 16));
            sub_1000AF934(v127, v128);
            v129 = async function pointer to dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)[1];
            v130 = swift_task_alloc();
            v131 = sub_1000AFC38(v130);
            *v131 = v132;
            sub_1000AF4E8();
LABEL_74:
            *(v123 + 8) = v124;
            sub_1000AF64C();
            sub_1000AFA24();

            return dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)();
          }

          v30 = v155;
LABEL_43:
          v155 = v30;
          v58 = *(v0 + 328);
          v59 = *(v0 + 312);

          v61 = *(sub_1000A960C(v60, (v0 + 120)) + 16);

          if (v61)
          {
            v62 = *(v0 + 152);
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.debug.getter();
            if (sub_100077680(v64))
            {
              sub_100053F78();
              v163 = sub_1000AF7BC();
              *v22 = 136315138;

              v65 = sub_100052F7C();

              *(v22 + 4) = v65;
              _os_log_impl(&_mh_execute_header, v63, v64, "fetchBindings similar value already present, skipping %s", v22, 0xCu);
              sub_100044850(v163);
              sub_1000488AC();
              sub_1000AF748();

              v23 = *(v0 + 328);
              v22 = v24;
            }

            else
            {

              v23 = *(v0 + 328);
            }
          }

          else
          {
            v66 = *(v0 + 328);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = *(v0 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v71 = v23[2];
              v72 = *(v0 + 328);
              sub_100062EB0();
              v23 = v73;
            }

            v69 = v23[2];
            v68 = v23[3];
            if (v69 >= v68 >> 1)
            {
              sub_1000AF8B8(v68);
              sub_100062EB0();
              v23 = v74;
            }

            v23[2] = (v69 + 1);
            v70 = &v23[2 * v69];
            v24 = v160;
            v70[4] = v155;
            v70[5] = v160;
            v22 = v160;
            v159 = v155;
          }

          sub_1000AF6C0();
          if (v37)
          {
            v96 = *(v0 + 296);

            goto LABEL_56;
          }
        }
      }

      v23 = _swiftEmptyArrayStorage;
LABEL_56:
      v75 = *(v0 + 280);
      v76 = *(v0 + 288);
      v77 = *(v0 + 256);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 136) = v77;
      v79 = sub_1000BFB60(v75, v76);
      v81 = *(v77 + 16);
      v82 = (v80 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_94;
      }

      v84 = v79;
      v85 = v80;
      sub_1000443DC(&qword_1006CBEB8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v78, v83))
      {
        v86 = sub_1000AFD34();
        if ((v85 & 1) != (v87 & 1))
        {
          sub_1000AFA24();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v84 = v86;
      }

      v8 = *(v0 + 136);
      v88 = *(v0 + 288);
      if (v85)
      {
        v89 = v8[7];
        v90 = *(v89 + 8 * v84);
        *(v89 + 8 * v84) = v23;
      }

      else
      {
        v91 = *(v0 + 280);
        v8[(v84 >> 6) + 8] |= 1 << v84;
        v92 = (v8[6] + 16 * v84);
        *v92 = v91;
        v92[1] = v88;
        *(v8[7] + 8 * v84) = v23;
        v93 = v8[2];
        v94 = __OFADD__(v93, 1);
        v95 = v93 + 1;
        if (v94)
        {
          goto LABEL_95;
        }

        v8[2] = v95;
      }

      v7 = *(v0 + 272);
      v5 = (*(v0 + 264) - 1) & *(v0 + 264);
    }

    while (1)
    {
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v10 >= (((1 << *(v0 + 620)) + 63) >> 6))
      {
        v103 = *(v0 + 144);
        v104 = *(v0 + 152);

        v105 = sub_1000AE054(v8);
        v106 = *(v105 + 16);
        if (v106)
        {
          v107 = *(v0 + 168);
          sub_1000BDF44();
          v108 = 32;
          do
          {
            v109 = *(v0 + 200);
            v110 = *(v105 + v108);

            sub_1000A3784(v111);
            ODIBindingsDict.init(contents:)();

            v112 = _swiftEmptyArrayStorage[2];
            if (v112 >= _swiftEmptyArrayStorage[3] >> 1)
            {
              sub_1000BDF44();
            }

            v113 = *(v0 + 200);
            v114 = *(v0 + 160);
            _swiftEmptyArrayStorage[2] = (v112 + 1);
            (*(v107 + 32))(_swiftEmptyArrayStorage + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v112, v113, v114);
            v108 += 8;
            --v106;
          }

          while (v106);
        }

        sub_1000AF870();
        if (!v140)
        {

          sub_1000AF7F4();

          sub_10006EBEC();
          sub_1000AFA24();

          __asm { BRAA            X2, X16 }
        }

        v141 = sub_1000AFAAC();
        sub_1000AF4B4(v141);
        *(v0 + 560) = _swiftEmptyArrayStorage;
        v142 = sub_1000AF560();
        v143(v142);
        sub_1000AFA80();
        v144 = async function pointer to BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)[1];
        v145 = swift_task_alloc();
        v146 = sub_1000AFB7C(v145);
        *v146 = v147;
        sub_1000AF470(v146);
        v148 = *(v0 + 208);
        goto LABEL_82;
      }

      v9 = *(v0 + 144);
      v5 = *(v9 + 8 * v10 + 64);
      ++v7;
      if (v5)
      {
        v7 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return static ODIDeviceInfo.shared.getter();
  }

  else
  {
    v97 = *(v0 + 176);
    v98 = *(v0 + 152);
    ODIBindingsDict.init(dictionaryLiteral:)();
    v99 = type metadata accessor for BindingsGuesser();
    sub_100044728((v98 + *(v99 + 24)), *(v98 + *(v99 + 24) + 24));
    v100 = async function pointer to BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)[1];
    v101 = swift_task_alloc();
    *(v0 + 584) = v101;
    *v101 = v0;
    v101[1] = sub_1000AC4B8;
    v102 = *(v0 + 176);
LABEL_82:
    sub_1000AFA24();

    return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v149);
  }
}

uint64_t sub_1000AA428()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v4 = *(v3 + 448);
  v5 = *(v3 + 440);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 456) = v8;

  v10 = sub_100065864();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000AAD8C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v4 = *(v3 + 472);
  v5 = *(v3 + 464);
  v6 = *v0;
  sub_1000655F4();
  *v7 = v6;
  *(v9 + 480) = v8;

  v10 = sub_100065864();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000AB6F0()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_10007CAE0();
  *v4 = v3;
  v6 = *(v5 + 496);
  v7 = *(v5 + 488);
  v8 = *v0;
  sub_1000655F4();
  *v9 = v8;
  *(v10 + 504) = v2;

  sub_1000AEE44();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AB808, v12, v11);
}

uint64_t sub_1000AB808()
{
  sub_1000657D4();
  v1 = *(v0 + 504);
  *(v0 + 512) = dispatch thunk of ODIDeviceInfo.getCTPhoneNumber(useDefaultVoiceNumber:)();

  v2 = sub_100065864();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000AC12C()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 576);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000AC210()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);
  sub_1000AE490(*(v0 + 208), v4);
  v9 = *(v7 + 8);
  v10 = sub_1000AFC90();
  v45 = v11;
  v11(v10);
  v3(v5, v4, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + 560);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100062E68(0, *(v13 + 16) + 1, 1, *(v0 + 560));
    v13 = v42;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_100062E68(v14 > 1, v15 + 1, 1, v13);
    v13 = v43;
  }

  v16 = *(v0 + 536);
  v44 = *(v0 + 528);
  v17 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 552) + 1;
  v21 = (*(v0 + 616) + 32) & ~*(v0 + 616);
  v45(*(v0 + 192), v18);
  *(v13 + 16) = v15 + 1;
  (*(v19 + 32))(v13 + v21 + v16 * v15, v17, v18);
  if (v20 == v44)
  {
    v22 = *(v0 + 520);

    v23 = *(v0 + 232);
    v25 = *(v0 + 200);
    v24 = *(v0 + 208);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);

    sub_10006EBEC();

    return v29(v13);
  }

  else
  {
    v31 = *(v0 + 552) + 1;
    *(v0 + 560) = v13;
    *(v0 + 552) = v31;
    v32 = *(v0 + 544);
    v33 = *(v0 + 208);
    v34 = *(v0 + 160);
    v35 = (*(v0 + 152) + *(v0 + 612));
    v36 = *(v0 + 520) + ((*(v0 + 616) + 32) & ~*(v0 + 616)) + *(v0 + 536) * v31;
    *(v0 + 568) = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v32(v33, v36, v34);
    sub_100044728(v35, v35[3]);
    v37 = async function pointer to BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)[1];
    v38 = swift_task_alloc();
    v39 = sub_1000AFB7C(v38);
    *v39 = v40;
    sub_1000AF470();
    v41 = sub_1000AF6E8();

    return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v41);
  }
}

uint64_t sub_1000AC4B8()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 584);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000AC59C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1000443DC(&qword_1006CA6B0);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005CB870;
  (*(v2 + 32))(v6 + v5, v1, v3);
  v7 = v0[29];
  v8 = v0[25];
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];

  sub_10006EBEC();

  return v13(v6);
}

id sub_1000AC69C(uint64_t *a1, uint64_t a2, void *a3)
{
  v52 = a3;
  v5 = type metadata accessor for BindingsKeys();
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v57 = a2;
  v53 = a2;
  v10 = v6[13];
  v10(v9, enum case for BindingsKeys.firstName(_:), v5);
  v11 = BindingsKeys.rawValue.getter();
  v13 = v12;
  v14 = v6[1];
  v14(v9, v5);
  v54 = v11;
  v55 = v13;
  sub_10005915C();
  v15 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v15)
  {
    goto LABEL_10;
  }

  v56 = a1;
  v57 = v53;
  v10(v9, enum case for BindingsKeys.documentFirstName(_:), v5);
  v16 = BindingsKeys.rawValue.getter();
  v18 = v17;
  v14(v9, v5);
  v54 = v16;
  v55 = v18;
  v19 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v19)
  {
LABEL_10:
    v41 = &selRef_aa_firstName;
LABEL_12:
    v42 = v52;
    return sub_100058D4C(v42, v41);
  }

  v56 = a1;
  v57 = v53;
  v10(v9, enum case for BindingsKeys.lastName(_:), v5);
  v20 = BindingsKeys.rawValue.getter();
  v22 = v21;
  v14(v9, v5);
  v54 = v20;
  v55 = v22;
  v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v23)
  {
    goto LABEL_11;
  }

  v56 = a1;
  v57 = v53;
  v10(v9, enum case for BindingsKeys.documentLastName(_:), v5);
  v24 = BindingsKeys.rawValue.getter();
  v26 = v25;
  v14(v9, v5);
  v54 = v24;
  v55 = v26;
  v27 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v27)
  {
LABEL_11:
    v41 = &selRef_aa_lastName;
    goto LABEL_12;
  }

  v56 = a1;
  v57 = v53;
  v10(v9, enum case for BindingsKeys.email(_:), v5);
  v28 = BindingsKeys.rawValue.getter();
  v30 = v29;
  v14(v9, v5);
  v54 = v28;
  v55 = v30;
  v31 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v31)
  {
    goto LABEL_15;
  }

  v56 = a1;
  v57 = v53;
  v10(v9, enum case for BindingsKeys.documentEmail(_:), v5);
  v32 = BindingsKeys.rawValue.getter();
  v34 = v33;
  v14(v9, v5);
  v54 = v32;
  v55 = v34;
  v35 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v35)
  {
LABEL_15:
    v43 = v52;
    result = [v52 accountType];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v44 = sub_1000AF1B0(result);
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v46)
    {
      if (v44 == v47 && v46 == v48)
      {

LABEL_26:
        v41 = &selRef_appleID;
        goto LABEL_27;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v50)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v41 = &selRef_aa_primaryEmail;
LABEL_27:
    v42 = v43;
    return sub_100058D4C(v42, v41);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v36, v37, "Unhandled bindingsKey %{public}s for Accounts", v38, 0xCu);
    sub_100044850(v39);
  }

  return 0;
}

uint64_t sub_1000ACC28(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BindingsKeys();
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPContactsManager();
  swift_allocObject();
  v12 = sub_1000BC07C();
  v162[3] = v11;
  v162[4] = &off_100694BB8;
  v162[0] = v12;
  v13 = *sub_100044728(v162, v11);
  v14 = sub_1000BBC94();
  if (!v14)
  {
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "No MeContact available", v112, 2u);
    }

    goto LABEL_31;
  }

  v155 = v3;
  v156 = v14;
  v160 = a1;
  v161 = a2;
  v157 = v7[13];
  v157(v10, enum case for BindingsKeys.firstName(_:), v6);
  v15 = BindingsKeys.rawValue.getter();
  v17 = v16;
  v18 = v7[1];
  v18(v10, v6);
  v158 = v15;
  v159 = v17;
  sub_10005915C();
  v19 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v19)
  {
    goto LABEL_27;
  }

  v160 = a1;
  v161 = a2;
  v157(v10, enum case for BindingsKeys.documentFirstName(_:), v6);
  v20 = BindingsKeys.rawValue.getter();
  v22 = v21;
  v18(v10, v6);
  v158 = v20;
  v159 = v22;
  v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v23)
  {
LABEL_27:
    v108 = v156;
    v109 = [v156 givenName];
LABEL_33:
    v114 = v109;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_34;
  }

  v160 = a1;
  v161 = a2;
  v157(v10, enum case for BindingsKeys.lastName(_:), v6);
  v24 = BindingsKeys.rawValue.getter();
  v26 = v25;
  v18(v10, v6);
  v158 = v24;
  v159 = v26;
  v27 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v27)
  {
    goto LABEL_32;
  }

  v160 = a1;
  v161 = a2;
  v157(v10, enum case for BindingsKeys.documentLastName(_:), v6);
  v28 = BindingsKeys.rawValue.getter();
  v30 = v29;
  v18(v10, v6);
  v158 = v28;
  v159 = v30;
  v31 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v31)
  {
LABEL_32:
    v108 = v156;
    v109 = [v156 familyName];
    goto LABEL_33;
  }

  v160 = a1;
  v161 = a2;
  v157(v10, enum case for BindingsKeys.email(_:), v6);
  v32 = BindingsKeys.rawValue.getter();
  v34 = v33;
  v18(v10, v6);
  v158 = v32;
  v159 = v34;
  v35 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v35)
  {
    v160 = a1;
    v161 = a2;
    v157(v10, enum case for BindingsKeys.documentEmail(_:), v6);
    v36 = BindingsKeys.rawValue.getter();
    v38 = v37;
    v18(v10, v6);
    v158 = v36;
    v159 = v38;
    v39 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v39)
    {
      v160 = a1;
      v161 = a2;
      v157(v10, enum case for BindingsKeys.phoneNumber(_:), v6);
      v40 = BindingsKeys.rawValue.getter();
      v42 = v41;
      v18(v10, v6);
      v158 = v40;
      v159 = v42;
      v43 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (!v43)
      {
        goto LABEL_40;
      }

      v160 = a1;
      v161 = a2;
      v157(v10, enum case for BindingsKeys.documentPhoneNumber(_:), v6);
      v44 = BindingsKeys.rawValue.getter();
      v46 = v45;
      v18(v10, v6);
      v158 = v44;
      v159 = v46;
      v47 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v47)
      {
        v160 = a1;
        v161 = a2;
        v157(v10, enum case for BindingsKeys.street(_:), v6);
        v48 = BindingsKeys.rawValue.getter();
        v50 = v49;
        v18(v10, v6);
        v158 = v48;
        v159 = v50;
        v51 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (!v51)
        {
          goto LABEL_44;
        }

        v160 = a1;
        v161 = a2;
        v157(v10, enum case for BindingsKeys.documentStreet(_:), v6);
        v52 = BindingsKeys.rawValue.getter();
        v54 = v53;
        v18(v10, v6);
        v158 = v52;
        v159 = v54;
        v55 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (!v55)
        {
          goto LABEL_44;
        }

        v160 = a1;
        v161 = a2;
        v157(v10, enum case for BindingsKeys.street1(_:), v6);
        v56 = BindingsKeys.rawValue.getter();
        v58 = v57;
        v18(v10, v6);
        v158 = v56;
        v159 = v58;
        v59 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (!v59)
        {
          goto LABEL_44;
        }

        v160 = a1;
        v161 = a2;
        v157(v10, enum case for BindingsKeys.documentStreet1(_:), v6);
        v60 = BindingsKeys.rawValue.getter();
        v62 = v61;
        v18(v10, v6);
        v158 = v60;
        v159 = v62;
        v63 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v63)
        {
          v160 = a1;
          v161 = a2;
          v157(v10, enum case for BindingsKeys.city(_:), v6);
          v64 = BindingsKeys.rawValue.getter();
          v66 = v65;
          v18(v10, v6);
          v158 = v64;
          v159 = v66;
          v67 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (!v67)
          {
            goto LABEL_50;
          }

          v160 = a1;
          v161 = a2;
          v157(v10, enum case for BindingsKeys.documentCity(_:), v6);
          v68 = BindingsKeys.rawValue.getter();
          v70 = v69;
          v18(v10, v6);
          v158 = v68;
          v159 = v70;
          v71 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (v71)
          {
            v160 = a1;
            v161 = a2;
            v157(v10, enum case for BindingsKeys.state(_:), v6);
            v72 = BindingsKeys.rawValue.getter();
            v74 = v73;
            v18(v10, v6);
            v158 = v72;
            v159 = v74;
            v75 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (!v75)
            {
              goto LABEL_54;
            }

            v160 = a1;
            v161 = a2;
            v157(v10, enum case for BindingsKeys.documentState(_:), v6);
            v76 = BindingsKeys.rawValue.getter();
            v78 = v77;
            v18(v10, v6);
            v158 = v76;
            v159 = v78;
            v79 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (v79)
            {
              v160 = a1;
              v161 = a2;
              v157(v10, enum case for BindingsKeys.postalCode(_:), v6);
              v80 = BindingsKeys.rawValue.getter();
              v82 = v81;
              v18(v10, v6);
              v158 = v80;
              v159 = v82;
              v83 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v83)
              {
                v160 = a1;
                v161 = a2;
                v157(v10, enum case for BindingsKeys.documentPostalCode(_:), v6);
                v84 = BindingsKeys.rawValue.getter();
                v86 = v85;
                v18(v10, v6);
                v158 = v84;
                v159 = v86;
                v87 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                if (v87)
                {
                  v160 = a1;
                  v161 = a2;
                  v157(v10, enum case for BindingsKeys.country(_:), v6);
                  v88 = BindingsKeys.rawValue.getter();
                  v90 = v89;
                  v18(v10, v6);
                  v158 = v88;
                  v159 = v90;
                  v91 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                  if (!v91)
                  {
                    goto LABEL_64;
                  }

                  v160 = a1;
                  v161 = a2;
                  v157(v10, enum case for BindingsKeys.documentCountry(_:), v6);
                  v92 = BindingsKeys.rawValue.getter();
                  v94 = v93;
                  v18(v10, v6);
                  v158 = v92;
                  v159 = v94;
                  v95 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                  if (v95)
                  {
                    v160 = a1;
                    v161 = a2;
                    v157(v10, enum case for BindingsKeys.isoCountryCode(_:), v6);
                    v96 = BindingsKeys.rawValue.getter();
                    v98 = v97;
                    v18(v10, v6);
                    v158 = v96;
                    v159 = v98;
                    v99 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                    if (v99)
                    {
                      v160 = a1;
                      v161 = a2;
                      v157(v10, enum case for BindingsKeys.documentIsoCountryCode(_:), v6);
                      v100 = BindingsKeys.rawValue.getter();
                      v102 = v101;
                      v18(v10, v6);
                      v158 = v100;
                      v159 = v102;
                      v103 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                      if (v103)
                      {

                        v104 = Logger.logObject.getter();
                        v105 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v104, v105))
                        {
                          v106 = swift_slowAlloc();
                          v107 = swift_slowAlloc();
                          v160 = v107;
                          *v106 = 136446210;
                          *(v106 + 4) = sub_100052F7C();
                          _os_log_impl(&_mh_execute_header, v104, v105, "Unhandled bindingsKey %{public}s for Me Card", v106, 0xCu);
                          sub_100044850(v107);
                        }

                        goto LABEL_31;
                      }
                    }

                    v150 = [v156 postalAddresses];
                    sub_1000443DC(&qword_1006CBED0);
                    v151 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (sub_1000591F0(v151))
                    {
                      sub_100059210(0, (v151 & 0xC000000000000001) == 0, v151);
                      if ((v151 & 0xC000000000000001) != 0)
                      {
                        v152 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v152 = *(v151 + 32);
                      }

                      v153 = v152;

                      v148 = [v153 value];

                      v149 = [v148 ISOCountryCode];
LABEL_72:
                      v154 = v149;

                      v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      goto LABEL_34;
                    }
                  }

                  else
                  {
LABEL_64:
                    v144 = [v156 postalAddresses];
                    sub_1000443DC(&qword_1006CBED0);
                    v145 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (sub_1000591F0(v145))
                    {
                      sub_100059210(0, (v145 & 0xC000000000000001) == 0, v145);
                      if ((v145 & 0xC000000000000001) != 0)
                      {
                        v146 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v146 = *(v145 + 32);
                      }

                      v147 = v146;

                      v148 = [v147 value];

                      v149 = [v148 country];
                      goto LABEL_72;
                    }
                  }

                  goto LABEL_63;
                }
              }

              v116 = v156;
              v140 = [v156 postalAddresses];
              sub_1000443DC(&qword_1006CBED0);
              v141 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (sub_1000591F0(v141))
              {
                sub_100059210(0, (v141 & 0xC000000000000001) == 0, v141);
                if ((v141 & 0xC000000000000001) != 0)
                {
                  v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v142 = *(v141 + 32);
                }

                v143 = v142;

                v126 = [v143 value];

                v127 = [v126 postalCode];
LABEL_48:
                v121 = v127;

LABEL_49:
                v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                goto LABEL_34;
              }
            }

            else
            {
LABEL_54:
              v116 = v156;
              v136 = [v156 postalAddresses];
              sub_1000443DC(&qword_1006CBED0);
              v137 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (sub_1000591F0(v137))
              {
                sub_100059210(0, (v137 & 0xC000000000000001) == 0, v137);
                if ((v137 & 0xC000000000000001) != 0)
                {
                  v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v138 = *(v137 + 32);
                }

                v139 = v138;

                v126 = [v139 value];

                v127 = [v126 state];
                goto LABEL_48;
              }
            }
          }

          else
          {
LABEL_50:
            v116 = v156;
            v132 = [v156 postalAddresses];
            sub_1000443DC(&qword_1006CBED0);
            v133 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (sub_1000591F0(v133))
            {
              sub_100059210(0, (v133 & 0xC000000000000001) == 0, v133);
              if ((v133 & 0xC000000000000001) != 0)
              {
                v134 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v134 = *(v133 + 32);
              }

              v135 = v134;

              v126 = [v135 value];

              v127 = [v126 city];
              goto LABEL_48;
            }
          }
        }

        else
        {
LABEL_44:
          v116 = v156;
          v128 = [v156 postalAddresses];
          sub_1000443DC(&qword_1006CBED0);
          v129 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (sub_1000591F0(v129))
          {
            sub_100059210(0, (v129 & 0xC000000000000001) == 0, v129);
            if ((v129 & 0xC000000000000001) != 0)
            {
              v130 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v130 = *(v129 + 32);
            }

            v131 = v130;

            v126 = [v131 value];

            v127 = [v126 street];
            goto LABEL_48;
          }
        }
      }

      else
      {
LABEL_40:
        v116 = v156;
        v122 = [v156 phoneNumbers];
        sub_1000443DC(&qword_1006CBED0);
        v123 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (sub_1000591F0(v123))
        {
          sub_100059210(0, (v123 & 0xC000000000000001) == 0, v123);
          if ((v123 & 0xC000000000000001) != 0)
          {
            v124 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v124 = *(v123 + 32);
          }

          v125 = v124;

          v126 = [v125 value];

          v127 = [v126 stringValue];
          goto LABEL_48;
        }
      }

LABEL_62:

LABEL_63:

      goto LABEL_31;
    }
  }

  v116 = v156;
  v117 = [v156 emailAddresses];
  sub_1000443DC(&qword_1006CBED0);
  v118 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_1000591F0(v118))
  {
    goto LABEL_62;
  }

  sub_100059210(0, (v118 & 0xC000000000000001) == 0, v118);
  if ((v118 & 0xC000000000000001) != 0)
  {
    v119 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v119 = *(v118 + 32);
  }

  v120 = v119;

  v121 = [v120 value];

  if (v121)
  {
    goto LABEL_49;
  }

LABEL_31:
  v113 = 0;
LABEL_34:
  sub_100044850(v162);
  return v113;
}

uint64_t sub_1000AE054(uint64_t a1)
{
  v1 = sub_1000AEEE8(a1);
  sub_100062D4C(0, 1, 1, _swiftEmptyArrayStorage);
  v3 = v2;
  v5 = v2[2];
  v4 = v2[3];
  v6 = (v5 + 1);
  if (v5 >= v4 >> 1)
  {
LABEL_43:
    v47 = sub_1000AF8B8(v4);
    sub_100062D4C(v47, v48, v49, v3);
    v3 = v50;
  }

  v7 = 0;
  v3[2] = v6;
  v3[v5 + 4] = &_swiftEmptyDictionarySingleton;
  v5 = (v1 + 8);
  v8 = 1 << *(v1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v1[8];
  v6 = ((v8 + 63) >> 6);
  v52 = v1 + 8;
  v53 = v1;
  v51 = v6;
  if (!v10)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v11 = __clz(__rbit64(v10)) | (v7 << 6);
    v12 = *(v1[7] + 8 * v11);
    v58 = *(v12 + 16);
    if (v58)
    {
      v54 = v10;
      v55 = v7;
      v13 = (v1[6] + 16 * v11);
      v14 = v13[1];
      v62 = v3[2];
      v63 = *v13;
      v57 = v12 + 32;
      v60 = v3 + 4;

      v15 = 0;
      v16 = _swiftEmptyArrayStorage;
      v56 = v12;
      while (1)
      {
        v4 = *(v12 + 16);
        if (v15 >= v4)
        {
          break;
        }

        if (v62)
        {
          v59 = v15;
          v17 = (v57 + 16 * v15);
          v18 = v17[1];
          v61 = *v17;

          v5 = 0;
          while (1)
          {
            v4 = v3[2];
            if (v5 >= v4)
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v19 = v3;
            v6 = v60[v5];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v64 = v6;
            v21 = sub_1000BFB60(v63, v14);
            v4 = v6[2];
            v23 = (v22 & 1) == 0;
            v3 = (v4 + v23);
            if (__OFADD__(v4, v23))
            {
              goto LABEL_39;
            }

            v24 = v21;
            v1 = v22;
            sub_1000443DC(&qword_1006CBEC8);
            v6 = &v64;
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v3))
            {
              v6 = v64;
              v25 = sub_1000BFB60(v63, v14);
              if ((v1 & 1) != (v26 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v24 = v25;
            }

            v3 = v64;
            if (v1)
            {
              v27 = (v64[7] + 16 * v24);
              v28 = v27[1];
              *v27 = v61;
              v27[1] = v18;
            }

            else
            {
              v64[(v24 >> 6) + 8] |= 1 << v24;
              v29 = (v3[6] + 16 * v24);
              *v29 = v63;
              v29[1] = v14;
              v30 = v3[7] + 16 * v24;
              *v30 = v61;
              v30[1] = v18;
              v31 = v3[2];
              v32 = __OFADD__(v31, 1);
              v4 = v31 + 1;
              if (v32)
              {
                goto LABEL_40;
              }

              v3[2] = v4;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1000AF634();
              sub_100062D4C(v34, v35, v36, v37);
              v16 = v38;
            }

            v1 = v16[2];
            v33 = v16[3];
            v6 = (v1 + 1);
            if (v1 >= v33 >> 1)
            {
              v39 = sub_1000AF8B8(v33);
              sub_100062D4C(v39, v40, v41, v16);
              v16 = v42;
            }

            ++v5;
            v16[2] = v6;
            v16[v1 + 4] = v3;
            v3 = v19;
            if (v62 == v5)
            {

              v12 = v56;
              v15 = v59;
              break;
            }
          }
        }

        if (++v15 == v58)
        {

          v5 = v52;
          v1 = v53;
          v10 = v54;
          v7 = v55;
          v6 = v51;
          goto LABEL_32;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_32:
    v10 &= v10 - 1;

    v3 = v16;
  }

  while (v10);
  while (1)
  {
LABEL_5:
    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_42;
    }

    if (v4 >= v6)
    {
      break;
    }

    v10 = *(v5 + 8 * v4);
    ++v7;
    if (v10)
    {
      v7 = v4;
      goto LABEL_9;
    }
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (sub_1000773E0(v44))
  {
    v45 = sub_100053F78();
    *v45 = 134349056;
    *(v45 + 4) = v3[2];

    _os_log_impl(&_mh_execute_header, v43, v1, "Created %{public}ld permutations", v45, 0xCu);
    sub_1000488AC();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1000AE490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = a1;
  v86 = a2;
  v3 = type metadata accessor for BindingsKeys();
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100047544();
  v90 = v9;
  sub_1000474F8();
  __chkstk_darwin(v10);
  v89 = &v79 - v11;
  sub_1000474F8();
  __chkstk_darwin(v12);
  v88 = &v79 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14);
  v95 = &v79 - v15;
  sub_1000474F8();
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  v19 = type metadata accessor for ODIBindingsDict();
  v20 = sub_10004EAE0(v19);
  v84 = v21;
  v85 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_100047544();
  v83 = v24;
  sub_1000474F8();
  __chkstk_darwin(v25);
  v91 = &v79 - v26;
  v94 = sub_1000443DC(&qword_1006CA620);
  inited = swift_initStackObject();
  v82 = xmmword_1005CE0C0;
  *(inited + 16) = xmmword_1005CE0C0;
  v28 = *(v6 + 104);
  v93 = v18;
  (v28)(v18, enum case for BindingsKeys.street1(_:), v3);
  v29 = v28;
  v30 = v18;
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v31 = *(v6 + 8);
  v32 = sub_1000AFC90();
  v31(v32);
  v33 = v6 + 8;
  *(inited + 32) = v30;
  *(inited + 40) = v2;
  v34 = v95;
  v35 = sub_1000AFAA0();
  v29(v35);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  (v31)(v34, v3);
  *(inited + 48) = v34;
  *(inited + 56) = v2;
  v36 = v88;
  v37 = sub_1000AFAA0();
  v29(v37);
  v38 = v36;
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  (v31)(v36, v3);
  v39 = v33;
  *(inited + 64) = v38;
  *(inited + 72) = v2;
  v40 = v89;
  (v29)(v89, enum case for BindingsKeys.state(_:), v3);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v41 = sub_1000AFC90();
  v31(v41);
  v87 = v39;
  *(inited + 80) = v40;
  *(inited + 88) = v2;
  v42 = v90;
  (v29)(v90, enum case for BindingsKeys.postalCode(_:), v3);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v43 = sub_1000AFC90();
  v31(v43);
  *(inited + 96) = v42;
  *(inited + 104) = v2;
  v44 = swift_initStackObject();
  v81 = xmmword_1005CC370;
  *(v44 + 16) = xmmword_1005CC370;
  v45 = v93;
  (v29)(v93, enum case for BindingsKeys.addressLat(_:), v3);
  v46 = BindingsKeys.rawValue.getter();
  v48 = v47;
  (v31)(v45, v3);
  *(v44 + 32) = v46;
  *(v44 + 40) = v48;
  v49 = v95;
  v50 = sub_1000AFAA0();
  v29(v50);
  BindingsKeys.rawValue.getter();
  v51 = sub_1000AF698();
  v31(v51);
  *(v44 + 48) = v49;
  *(v44 + 56) = v48;
  sub_1000AEB58(inited, v44, v91);
  swift_setDeallocating();
  sub_1000CEE7C();
  swift_setDeallocating();
  sub_1000CEE7C();
  v52 = swift_initStackObject();
  *(v52 + 16) = v82;
  v53 = v93;
  (v29)(v93, enum case for BindingsKeys.documentStreet1(_:), v3);
  BindingsKeys.rawValue.getter();
  v54 = sub_1000AFC5C();
  v31(v54);
  *(v52 + 32) = v53;
  *(v52 + 40) = v48;
  v55 = v95;
  (v29)(v95, enum case for BindingsKeys.documentStreet2(_:), v3);
  BindingsKeys.rawValue.getter();
  v56 = sub_1000AFC5C();
  v31(v56);
  *(v52 + 48) = v55;
  *(v52 + 56) = v48;
  v57 = v88;
  v58 = sub_1000AFAA0();
  v29(v58);
  BindingsKeys.rawValue.getter();
  v59 = sub_1000AF698();
  v31(v59);
  *(v52 + 64) = v57;
  *(v52 + 72) = v48;
  v60 = v89;
  v61 = sub_1000AFAA0();
  v29(v61);
  BindingsKeys.rawValue.getter();
  v62 = sub_1000AF698();
  v31(v62);
  *(v52 + 80) = v60;
  *(v52 + 88) = v48;
  v63 = v90;
  v64 = sub_1000AFAA0();
  v29(v64);
  v80 = v29;
  BindingsKeys.rawValue.getter();
  v65 = sub_1000AF698();
  v31(v65);
  *(v52 + 96) = v63;
  *(v52 + 104) = v48;
  v66 = swift_initStackObject();
  *(v66 + 16) = v81;
  v67 = v93;
  (v29)(v93, enum case for BindingsKeys.documentAddressLat(_:), v3);
  BindingsKeys.rawValue.getter();
  v68 = sub_1000AFC70();
  v31(v68);
  *(v66 + 32) = v67;
  *(v66 + 40) = v63;
  v69 = v95;
  (v80)(v95, enum case for BindingsKeys.documentAddressLon(_:), v3);
  BindingsKeys.rawValue.getter();
  v70 = sub_1000AFC70();
  v31(v70);
  *(v66 + 48) = v69;
  *(v66 + 56) = v63;
  v71 = v83;
  v72 = v92;
  sub_1000AEB58(v52, v66, v83);
  swift_setDeallocating();
  sub_1000CEE7C();
  swift_setDeallocating();
  sub_1000CEE7C();
  v73 = v84;
  v74 = v72;
  v75 = v85;
  (*(v84 + 16))(v86, v74, v85);
  v76 = v91;
  ODIBindingsDict.merge(with:)();
  ODIBindingsDict.merge(with:)();
  v77 = *(v73 + 8);
  v77(v71, v75);
  return (v77)(v76, v75);
}

uint64_t sub_1000AEB58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = ODIBindingsDict.keys.getter();
  v5 = v4;
  v6 = v4 + 64;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return ODIBindingsDict.init(dictionaryLiteral:)();
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v13 = v12;
LABEL_10:
    v14 = (*(v5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v15 = v14[1];
    v9 &= v9 - 1;
    v43[0] = *v14;
    v43[1] = v15;
    __chkstk_darwin(v11);
    v40[2] = v43;

    v16 = sub_100098534(sub_100058E30, v40, a1);
  }

  while (!v16);

  v17 = *(v41 + 16);
  v18 = (v41 + 40);
  v19 = &_swiftEmptyDictionarySingleton;
  if (!v17)
  {
LABEL_21:
    sub_1000A3784(v19);

    return ODIBindingsDict.init(contents:)();
  }

  while (1)
  {
    v21 = *(v18 - 1);
    v20 = *v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v19;
    v23 = sub_1000BFB60(v21, v20);
    v25 = v19[2];
    v26 = (v24 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    v29 = v24;
    sub_1000443DC(&qword_1006CBEC8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27))
    {
      v30 = sub_1000BFB60(v21, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v28 = v30;
    }

    v19 = v43[0];
    if (v29)
    {
      v32 = (*(v43[0] + 56) + 16 * v28);
      v33 = v32[1];
      *v32 = 0;
      v32[1] = 0xE000000000000000;
    }

    else
    {
      *(v43[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v34 = (v19[6] + 16 * v28);
      *v34 = v21;
      v34[1] = v20;
      v35 = (v19[7] + 16 * v28);
      *v35 = 0;
      v35[1] = 0xE000000000000000;
      v36 = v19[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v19[2] = v38;
    }

    v18 += 2;
    if (!--v17)
    {
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000AEE44()
{
  result = qword_1006CBEC0;
  if (!qword_1006CBEC0)
  {
    type metadata accessor for ODIDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBEC0);
  }

  return result;
}

uint64_t type metadata accessor for BindingsGuesser()
{
  result = qword_1006CBF30;
  if (!qword_1006CBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_1000AEEE8(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1000AF138(v8, v4, v2);

      return v2;
    }
  }

  __chkstk_darwin(a1);
  v5 = (&v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10009F228(0, v4, v5);
  v6 = sub_1000AF04C(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_1000AF04C(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000D2558(result, a2, v4, a3);
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
      return sub_1000D2558(result, a2, v4, a3);
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
  return result;
}

unint64_t *sub_1000AF138(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1000AF04C(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000AF1B0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000AF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100046EA4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000AF308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000485F8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000AF3B4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = sub_10007EDD0(319, &qword_1006CBF40);
    if (v2 <= 0x3F)
    {
      result = sub_10007EDD0(319, &unk_1006CBF48);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000AF4B4(uint64_t result)
{
  *(v2 + 612) = *(result + 24);
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  *(v2 + 616) = *(v3 + 64);
  *(v2 + 536) = *(v3 + 56);
  *(v2 + 544) = v4;
  return result;
}

uint64_t sub_1000AF520(uint64_t result)
{
  v5 = *(v2 + 280);
  v1[(v3 >> 6) + 8] |= 1 << v3;
  v6 = (v1[6] + 16 * v3);
  *v6 = v5;
  v6[1] = result;
  *(v1[7] + 8 * v3) = v4;
  v7 = v1[2];
  return result;
}

uint64_t sub_1000AF560()
{
  v1[69] = 0;
  result = v1[26];
  v3 = v1[20];
  v1[71] = v0 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_1000AF580@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 592);
  v4 = *(v2 + 216);
  v5 = v1 + ((*(v2 + 608) + 32) & ~*(v2 + 608)) + *(*(v2 + 224) + 72) * a1;
  v6 = *(*(v2 + 224) + 16);
  return *(v2 + 232);
}

uint64_t sub_1000AF5B8@<X0>(uint64_t a1@<X8>)
{
  v3[33] = v2;
  v3[34] = a1;
  v5 = v3[19];
  v6 = __clz(__rbit64(v2)) | (a1 << 6);
  v7 = (*(v1 + 48) + 16 * v6);
  v3[35] = *v7;
  v3[36] = v7[1];
  v3[37] = *(*(v1 + 56) + 8 * v6);

  return swift_bridgeObjectRetain_n();
}

unint64_t sub_1000AF608()
{
  v5 = *(v1 + 200);
  v6 = *(v1 + 160);
  *(v0 + 16) = v2;
  result = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3;
  v8 = *(v4 + 32);
  return result;
}

uint64_t sub_1000AF664@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8 * a1 + 32);
  *(v2 + 336) = result;
  *(v2 + 344) = *(result + 16);
  return result;
}

void sub_1000AF67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v18 + 16) = v16;
  v19 = v18 + 16 * v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = a15;
}

uint64_t sub_1000AF6FC(void *a1)
{
  sub_100044728(a1, v1);

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000AF748()
{
}

void sub_1000AF794()
{
  v2 = *(v0 + 168);

  sub_1000BDF44();
}

uint64_t sub_1000AF7BC()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AF7D8()
{
}

uint64_t sub_1000AF7F4()
{
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
}

uint64_t sub_1000AF814()
{

  return swift_beginAccess();
}

void sub_1000AF848()
{
  v3 = v1[33];
  v2 = v1[34];
  v1[32] = v0;
}

void sub_1000AF894()
{

  sub_1000BDF44();
}

unint64_t sub_1000AF8CC()
{
  *(v1 + 136) = v3;

  return sub_1000BFB60(v2, v0);
}

BOOL sub_1000AF8F0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000AF920()
{
  v1[15] = 0;
  v1[16] = 0xE000000000000000;
  v1[38] = *(v0 + 16);
}

void sub_1000AF964(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1000AF990()
{

  return sub_100052F7C();
}

uint64_t sub_1000AF9AC(uint64_t result, uint64_t a2)
{
  v3 = v2[19];
  v2[15] = result;
  v2[16] = a2;
  return result;
}

void sub_1000AF9C0()
{
  v6 = v0[54];
  v7 = v0[53];
  v8 = v0[52];
  v9 = v0[51];
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[47];
  v10 = v0[48];
  v4 = v0[45];
  v5 = v0[46];
}

void sub_1000AF9E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1000AFA04()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

void sub_1000AFA40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000AFA60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000AFAAC()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  return type metadata accessor for BindingsGuesser();
}

uint64_t sub_1000AFAC8()
{
  *(v0 + 608) = *(*(v0 + 224) + 80);
}

uint64_t sub_1000AFB94()
{
  v4 = *(v0 + 56);
  v5 = *(v4 + 8 * v1);
  *(v4 + 8 * v1) = v2;
}

uint64_t sub_1000AFBB0()
{
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[32];

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000AFBCC(float a1)
{
  *v1 = a1;
}

uint64_t sub_1000AFBE4()
{

  return sub_100052F7C();
}

uint64_t sub_1000AFC00()
{

  return sub_100052F7C();
}

uint64_t sub_1000AFC1C()
{
  v4 = *(v1 + 200);
  v5 = *(v0 + v2);
}

void sub_1000AFCFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000AFD1C()
{
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[19];

  return sub_1000ACC28(v2, v3);
}

unint64_t sub_1000AFD34()
{
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[17];

  return sub_1000BFB60(v2, v3);
}

uint64_t sub_1000AFD4C()
{

  return static ODIAccountManager.shared.getter();
}

uint64_t sub_1000AFD64()
{
  v2 = *(v0 + 240);

  return type metadata accessor for ODIAccountManager();
}

uint64_t sub_1000AFD7C()
{

  return static ODIAccountManager.shared.getter();
}

uint64_t sub_1000AFD94()
{
  v2 = *(v0 + 248);

  return type metadata accessor for ODIAccountManager();
}

uint64_t sub_1000AFDAC()
{
  v2 = *(v0 + 336);
  v3 = *(v0 + 152);
}

uint64_t sub_1000AFDC4(uint64_t *a1)
{
  v4 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000B0220();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100044850(a1);
  }

  else
  {
    sub_100044728(v6, v6[3]);
    sub_1000B0220();
    v1 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100044850(v6);
    sub_100044850(a1);
  }

  return v1;
}

uint64_t sub_1000AFE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000AFDC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000AFEE4@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of ASBiometricKitHelper.currentDevice();
  *a1 = result;
  return result;
}

uint64_t sub_1000AFF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006557C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFF48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100065550(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFF78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006559C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100065574(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000AFFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100065568(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000B0030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100065584(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000B0098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005E034();
  *a1 = result;
  return result;
}

unint64_t sub_1000B00C4()
{
  result = qword_1006CBF80;
  if (!qword_1006CBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF80);
  }

  return result;
}

unint64_t sub_1000B011C()
{
  result = qword_1006CBF88;
  if (!qword_1006CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF88);
  }

  return result;
}

unint64_t sub_1000B0174()
{
  result = qword_1006CBF90;
  if (!qword_1006CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF90);
  }

  return result;
}

unint64_t sub_1000B01CC()
{
  result = qword_1006CBF98;
  if (!qword_1006CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF98);
  }

  return result;
}

uint64_t sub_1000B0234@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006C9C48);
  v5 = sub_100077674(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    URL.init(string:)();

    v15 = type metadata accessor for URL();
    v16 = sub_1000BBAE0();
    if (sub_100046EA4(v16, v17, v15) == 1)
    {
      sub_100053BE8(v10, &qword_1006C9C48);
      if (qword_1006C9788 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100097D98(v18, qword_1006CA118);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (sub_100077680(v20))
      {
        sub_100053F78();
        v30 = sub_1000BBA6C();
        *v14 = 136315138;
        *(v14 + 4) = sub_100052F7C();
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid URL in defaults for key: %s", v14, 0xCu);
        sub_100044850(v30);
        sub_100077500();
        sub_10007756C();
      }

      if (qword_1006C9748 != -1)
      {
        sub_1000BBA0C();
      }

      sub_100046E6C(v15, qword_1006DF790);
      sub_100053F48(v15);
      return (*(v21 + 16))(a2);
    }

    else
    {
      sub_100053F48(v15);
      v27 = *(v26 + 32);
      v28 = sub_100047504();
      return v29(v28);
    }
  }

  else
  {
    if (qword_1006C9748 != -1)
    {
      sub_1000BBA0C();
    }

    v23 = type metadata accessor for URL();
    sub_100046E6C(v23, qword_1006DF790);
    sub_100053F48(v23);
    v25 = *(v24 + 16);

    return v25(a2);
  }
}

BOOL sub_1000B0540(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t *ASDConfigurationManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  return &static ASDConfigurationManager.shared;
}

uint64_t sub_1000B05E4@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for JSONDecoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v5 = [objc_opt_self() standardUserDefaults];
  sub_10004F04C(v5, v14);

  v6 = v14[0];
  v7 = v14[1];
  sub_1000BA6C4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000448B0(v6, v7);

  v9 = v16;
  v10 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  *a1 = v15;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
  a1[5] = v13;
  return result;
}

uint64_t sub_1000B078C()
{
  sub_1000BBAEC();
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = sub_100077674(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  sub_1000BBB50(v8);
  v9 = type metadata accessor for TaskPriority();
  v10 = sub_1000BBAE0();
  v12 = sub_100046EA4(v10, v11, v9);

  if (v12 == 1)
  {
    sub_100053BE8(v1, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100053F48(v9);
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100053BE8(v3, &qword_1006C9E20);
    return sub_1000BBA50();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  v16 = sub_1000BBA50();

  sub_100053BE8(v3, &qword_1006C9E20);

  return v16;
}

uint64_t sub_1000B09A8()
{
  sub_1000BBAEC();
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = sub_100077674(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  sub_1000BBB50(v8);
  v9 = type metadata accessor for TaskPriority();
  v10 = sub_1000BBAE0();
  v12 = sub_100046EA4(v10, v11, v9);

  if (v12 == 1)
  {
    sub_100053BE8(v1, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100053F48(v9);
    (*(v13 + 8))(v1, v9);
  }

  v15 = *(v0 + 16);
  v14 = *(v0 + 24);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_100053BE8(v3, &qword_1006C9E20);
    sub_1000443DC(qword_1006CC1A8);
    return sub_1000BBA50();
  }

  swift_getObjectType();
  dispatch thunk of Actor.unownedExecutor.getter();
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_6:
  String.utf8CString.getter();

  sub_1000443DC(qword_1006CC1A8);
  v16 = sub_1000BBA50();

  sub_100053BE8(v3, &qword_1006C9E20);

  return v16;
}

NSString sub_1000B0BC4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006DF840 = result;
  return result;
}

uint64_t sub_1000B0BFC()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CBFA0);
  sub_100046E6C(v0, qword_1006CBFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B0C84(uint64_t a1, uint64_t a2)
{
  if (a1 == 6583137 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B0D0C(void *a1)
{
  v2 = v1;
  v4 = sub_1000443DC(&qword_1006CC2C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000BB1C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(__dst, v2, sizeof(__dst));
  sub_1000BB268(v2, v11);
  sub_1000BB2A0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v11, __dst, sizeof(v11));
  sub_100053BE8(v11, &qword_1006CAC08);
  return (*(v5 + 8))(v8, v4);
}

void *sub_1000B0E94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CC2A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &__dst[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000BB1C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000BB214();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  memcpy(__dst, __src, sizeof(__dst));
  sub_100044850(a1);
  return memcpy(a2, __dst, 0x60uLL);
}

uint64_t sub_1000B103C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62617369447369 && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B10D8(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CC290);
  v3 = sub_10004EAE0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = sub_10007B3BC();
  sub_10004EBE8(v13, v14);
  sub_1000BB064();
  sub_1000BBB10();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_1000B11DC(uint64_t *a1)
{
  v4 = sub_1000443DC(&qword_1006CC260);
  v5 = sub_10004EAE0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v12 = v11 - v10;
  v13 = a1[4];
  sub_10004EBE8(a1, a1[3]);
  sub_1000BB064();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v1 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v12, v4);
  }

  sub_100044850(a1);
  return v1 & 1;
}

uint64_t sub_1000B1314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7246657461647075 && a2 == 0xEF79636E65757165;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001005A5500 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001005A3770 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000025 && 0x80000001005A5520 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000B14D4(char a1)
{
  result = 0x5255656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x7246657461647075;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000B15AC()
{
  sub_10004EC00();
  v2 = v1;
  v3 = sub_1000443DC(&qword_1006CC298);
  v4 = sub_10004EAE0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = v2[4];
  sub_10004EBE8(v2, v2[3]);
  sub_1000BB0B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BB9C4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v6 + 8))(v11, v3);
  sub_10004EC18();
}

void sub_1000B1760()
{
  sub_10004EC00();
  v2 = v1;
  v3 = sub_1000443DC(&qword_1006CC270);
  v4 = sub_10004EAE0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v7 = v2[4];
  sub_10004EBE8(v2, v2[3]);
  sub_1000BB0B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    sub_1000BB9D4();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v8 = sub_1000BBAC0();
    v9(v8);
  }

  sub_100044850(v2);
  sub_10004EC18();
}

uint64_t sub_1000B196C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x43786F62646E6173 && a2 == 0xEE006C656E6E6168;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001005A5550 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1936680295 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F6973756C637865 && a2 == 0xED000065646F4D6ELL)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000B1B2C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x43786F62646E6173;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1936680295;
      break;
    case 4:
      result = 0x6F6973756C637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B1BF4(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CC2A0);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = sub_10007B3BC();
  sub_10004EBE8(v16, v17);
  sub_1000BB10C();
  sub_1000BBB10();
  v18 = *v3;
  v19 = v3[1];
  sub_1000BB9C4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v20 = v3[2];
    v21 = v3[3];
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[4];
    v23 = v3[5];
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v3[6];
    sub_1000443DC(&qword_1006CA018);
    sub_1000BB160(&qword_1006CA030);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *(v3 + 56);
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

void sub_1000B1DCC()
{
  sub_10004EC00();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000443DC(&qword_1006CC280);
  v6 = sub_10004EAE0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v9 = v2[4];
  sub_10004EBE8(v2, v2[3]);
  sub_1000BB10C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100044850(v2);
  }

  else
  {
    sub_1000BBAD0();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v11;
    sub_1000BBAD0();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v23 = v13;
    v21 = v12;
    LOBYTE(v28[0]) = 2;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v14;
    sub_1000443DC(&qword_1006CA018);
    sub_1000BB160(&qword_1006CA020);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v28[0];
    sub_1000BBAD0();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v16 = sub_1000BB97C();
    v17(v16);
    *&v25 = v10;
    *(&v25 + 1) = v24;
    *&v26 = v21;
    *(&v26 + 1) = v23;
    *v27 = v20;
    *&v27[8] = v22;
    *&v27[16] = v28[0];
    v27[24] = v15;
    sub_10007C91C(&v25, v28);
    sub_100044850(v2);
    v28[0] = v10;
    v28[1] = v24;
    v28[2] = v21;
    v28[3] = v23;
    v28[4] = v20;
    v28[5] = v22;
    v28[6] = v19;
    v29 = v15;
    sub_10007C978(v28);
    v18 = v26;
    *v4 = v25;
    v4[1] = v18;
    v4[2] = *v27;
    *(v4 + 41) = *&v27[9];
  }

  sub_10004EC18();
}

uint64_t sub_1000B214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B0C84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000B2178(uint64_t a1)
{
  v2 = sub_1000BB1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B21B4(uint64_t a1)
{
  v2 = sub_1000BB1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000B21F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B0E94(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1000B2294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B103C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000B22C0(uint64_t a1)
{
  v2 = sub_1000BB064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B22FC(uint64_t a1)
{
  v2 = sub_1000BB064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B11DC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1000B238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B1314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B23B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B14CC();
  *a1 = result;
  return result;
}

uint64_t sub_1000B23DC(uint64_t a1)
{
  v2 = sub_1000BB0B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2418(uint64_t a1)
{
  v2 = sub_1000BB0B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000B2454(uint64_t a1@<X8>)
{
  sub_1000B1760();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
    *(a1 + 25) = BYTE1(v6);
    *(a1 + 26) = BYTE2(v6);
    *(a1 + 27) = HIBYTE(v6);
  }
}

void sub_1000B24A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = (*(v0 + 25) << 8) | (*(v0 + 26) << 16) | (*(v0 + 27) << 24) | *(v0 + 24);
  sub_1000B15AC();
}

uint64_t sub_1000B24F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B196C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B251C(uint64_t a1)
{
  v2 = sub_1000BB10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2558(uint64_t a1)
{
  v2 = sub_1000BB10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B2594@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B1DCC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    a1[2] = *v6;
    result = *&v6[9];
    *(a1 + 41) = *&v6[9];
  }

  return result;
}

uint64_t sub_1000B25F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001005A5410 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001005A5430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000020 && 0x80000001005A5450 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001005A5480 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001005A54A0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4D32566568636163 && a2 == 0xED00006567417861;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001005A54C0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001005A54E0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x4165636976726573 && a2 == 0xEC00000073616572)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1000B28C8(char a1)
{
  result = 0x4D32566568636163;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x4165636976726573;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1000B2A24(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CC0D0);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = sub_10007B3BC();
  sub_10004EBE8(v16, v17);
  sub_1000B98F0();
  sub_1000BBB10();
  v18 = *v3;
  v19 = *(v3 + 8);
  sub_1000A59D0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v20 = v3[2];
    v21 = *(v3 + 24);
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 7);
    v33 = *(v3 + 32);
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = v3[5];
    sub_1000443DC(&qword_1006CA2B8);
    sub_1000BBB04();
    sub_1000B9B78(v23);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = *(v3 + 3);
    sub_1000B9BF4();
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v24 = v3[8];
    v25 = *(v3 + 72);
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 73);
    sub_1000B9C48();
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = v3[10];
    sub_1000443DC(&qword_1006CC0A0);
    sub_1000BBB04();
    sub_1000B9B78(v26);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v32 = v3[11];
    sub_1000443DC(&qword_1006CC0B8);
    sub_1000BA718(&unk_1006CC0F8);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v13, v5);
}

void sub_1000B2D58()
{
  sub_10004EC00();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000443DC(&qword_1006CC080);
  v6 = sub_10004EAE0(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v9 = v2[3];
  v10 = v2[4];
  v11 = sub_100081220();
  sub_10004EBE8(v11, v12);
  sub_1000B98F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100044850(v2);
  }

  else
  {
    sub_1000BB98C();
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = v14 & 1;
    sub_1000BB98C();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v53 = v16 & 1;
    LOBYTE(v36) = 2;
    sub_1000BB98C();
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = v15;
    v52 = BYTE4(v17) & 1;
    v33 = v17;
    sub_1000443DC(&qword_1006CA2B8);
    sub_1000BBB94(3);
    sub_1000BBB04();
    sub_1000B99EC(v18);
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v36;
    sub_1000BBB94(4);
    sub_1000B9944();
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v36;
    v31 = v37;
    LOBYTE(v36) = 5;
    sub_1000BB98C();
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v20 & 1;
    sub_1000BBB94(6);
    sub_1000B9998();
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v13;
    sub_1000443DC(&qword_1006CC0A0);
    sub_1000BBB94(7);
    sub_1000BBB04();
    sub_1000B99EC(v21);
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v36;
    sub_1000443DC(&qword_1006CC0B8);
    sub_1000BA718(&unk_1006CC0C0);
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = sub_1000BB9B4();
    v24(v23);
    v25 = v50;
    v35[0] = v29;
    LOBYTE(v35[1]) = v54;
    v35[2] = v34;
    v28 = v53;
    LOBYTE(v35[3]) = v53;
    HIDWORD(v35[3]) = v33;
    v27 = v52;
    LOBYTE(v35[4]) = v52;
    v35[5] = v19;
    v35[6] = v32;
    v35[7] = v37;
    v35[8] = v30;
    v26 = v51;
    LOBYTE(v35[9]) = v51;
    BYTE1(v35[9]) = 5;
    v35[10] = v36;
    v35[11] = v50;
    sub_1000B9B10(v35, &v36);
    sub_100044850(v2);
    v36 = v29;
    LOBYTE(v37) = v54;
    v38 = v34;
    v39 = v28;
    v40 = v33;
    v41 = v27;
    v42 = v19;
    v43 = v32;
    v44 = v31;
    v45 = v30;
    v46 = v26;
    v47 = 5;
    v48 = v22;
    v49 = v25;
    sub_1000B9B48(&v36);
    memcpy(v4, v35, 0x60uLL);
  }

  sub_10004EC18();
}

uint64_t sub_1000B32D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B25F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B32FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B28C0();
  *a1 = result;
  return result;
}

uint64_t sub_1000B3324(uint64_t a1)
{
  v2 = sub_1000B98F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3360(uint64_t a1)
{
  v2 = sub_1000B98F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000B339C(void *a1@<X8>)
{
  sub_1000B2D58();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_1000B3400()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._object = 0x80000001005A53B0;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  object = NSUserDefaults.internalString(forKey:)(v1).value._object;

  if (!object || (v14._countAndFlagsBits = sub_100047504(), v3 = sub_1000B35B4(v14), v3 == 2))
  {
    v4 = os_variant_allows_internal_security_policies() == 0;
    goto LABEL_4;
  }

  v7 = v3;
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944();
  }

  v8 = type metadata accessor for Logger();
  sub_100097D98(v8, qword_1006CBFA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v9, v10))
  {

    v4 = (v7 & 1) == 0;
LABEL_4:
    if (v4)
    {
      return 49;
    }

    else
    {
      return 51;
    }
  }

  v11 = sub_100053F78();
  v12 = sub_100053F60();
  *v11 = 136315138;
  if (v7)
  {
    v5 = 51;
  }

  else
  {
    v5 = 49;
  }

  v13 = sub_100052F7C();

  *(v11 + 4) = v13;
  _os_log_impl(&_mh_execute_header, v9, v10, "Forcing assessment bucket %s due to user settings", v11, 0xCu);
  sub_100044850(v12);
  sub_10007756C();
  sub_1000488AC();

  return v5;
}

uint64_t sub_1000B35B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100691508, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Class ASDConfigurationManager.configDictionaryForCoreODI.getter()
{
  sub_1000B36A0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_1000B36A0()
{
  sub_1000443DC(&qword_1006CC170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  strcpy(v30, "daemonVersion");
  HIWORD(v30[1]) = -4864;
  AnyHashable.init<A>(_:)();
  v1 = [objc_opt_self() daemonVersion];
  *(inited + 96) = sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  *(inited + 72) = v1;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v26 = v2;
  v3 = sub_1000B3DD0();
  *&v28 = 0x49444F65726F63;
  *(&v28 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(v30, v3, &v28);
  sub_100076E50(v30);
  if (v29)
  {
    sub_1000534C8(&v28, &v31);
    v4 = objc_opt_self();
    sub_100044728(&v31, v32);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    v30[0] = 0;
    v6 = [v4 dataWithJSONObject:v5 options:0 error:v30];
    swift_unknownObjectRelease();
    v7 = v30[0];
    if (v6)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *&v28 = 0x49444F65726F63;
      *(&v28 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      v29 = &type metadata for Data;
      *&v28 = v8;
      *(&v28 + 1) = v10;
      sub_1000534C8(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10006B410(v27, v30, isUniquelyReferenced_nonNull_native);
      v26 = v2;
      sub_100076E50(v30);
    }

    else
    {
      v15 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100046E6C(v16, qword_1006CBFA0);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v30[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        Error.localizedDescription.getter();
        v21 = sub_100052F7C();

        *(v19 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v17, v18, "Error encoding coreODIConfig data: %s", v19, 0xCu);
        sub_100044850(v20);
      }

      *&v28 = 0x49444F65726F63;
      *(&v28 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      v22 = sub_100044B48(32123, 0xE200000000000000);
      v29 = &type metadata for Data;
      *&v28 = v22;
      *(&v28 + 1) = v23;
      sub_1000534C8(&v28, v27);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      sub_10006B410(v27, v30, v24);
      sub_100076E50(v30);
    }

    sub_100044850(&v31);
  }

  else
  {
    sub_100053BE8(&v28, &qword_1006CA130);
    *&v31 = 0x49444F65726F63;
    *(&v31 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v12 = sub_100044B48(32123, 0xE200000000000000);
    v32 = &type metadata for Data;
    *&v31 = v12;
    *(&v31 + 1) = v13;
    sub_1000534C8(&v31, &v28);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *&v27[0] = v2;
    sub_10006B410(&v28, v30, v14);
    v26 = v2;
    sub_100076E50(v30);
  }

  sub_1000B3E68(&v26, v3);

  return v26;
}

uint64_t ASDConfigurationManager.cacheV2MaxAge.getter()
{
  result = sub_1000B05E4(v1);
  if (v2 != 1)
  {
    return sub_100053BE8(v1, &qword_1006CAC08);
  }

  return result;
}

uint64_t ASDConfigurationManager.payloadWorkflowTTLs.getter()
{
  sub_1000B05E4(v5);
  if (v6 == 1 || (v8 = v7, sub_1000BA340(&v8, &v4, &qword_1006CAC18), sub_100053BE8(v5, &qword_1006CAC08), !v8))
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v0 = sub_100065A4C();
    sub_10004904C(v0);
    v2 = v1;
  }

  return v2;
}

uint64_t sub_1000B3DD0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10004F04C(v0, &v5);

  v1 = v5;
  v2 = v6;
  v3 = sub_1000B4E28(v5, v6);
  sub_1000448B0(v1, v2);
  return v3;
}

void sub_1000B3E68(uint64_t a1, uint64_t a2)
{
  *&v28 = 0x7365727574616566;
  *(&v28 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(&v31, a2, &v28);
  sub_100076E50(&v31);
  if (v29)
  {
    sub_1000534C8(&v28, v33);
    v3 = objc_opt_self();
    sub_100044728(v33, v34);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    v31 = 0;
    v5 = [v3 dataWithJSONObject:v4 options:0 error:&v31];
    swift_unknownObjectRelease();
    v6 = v31;
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = type metadata accessor for JSONDecoder();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CC178);
      sub_1000BA718(&unk_1006CC180);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      v24 = v31;
      v25 = [objc_opt_self() standardUserDefaults];
      v29 = sub_1000591B0(0, &qword_1006CC190, NSUserDefaults_ptr);
      v30 = &off_100695438;
      *&v28 = v25;
      v31 = v24;
      sub_1000446C4(&v28, v32);
      v32[8] = &type metadata for FeatureToggleResolver.Dice;
      v32[9] = &off_100695580;
      sub_100044850(&v28);
      v26 = sub_1000D9F4C();
      v27[1] = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      v27[3] = sub_1000443DC(&qword_1006CC198);
      v27[0] = v26;
      sub_10006F6FC(v27, &v28);
      sub_1000448B0(v7, v9);
      sub_1000BA7D4(&v31);
    }

    else
    {
      v18 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100046E6C(v19, qword_1006CBFA0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100052F7C();
        _os_log_impl(&_mh_execute_header, v20, v21, "Could not parse values of object '%s'.", v22, 0xCu);
        sub_100044850(v23);
      }
    }

    sub_100044850(v33);
  }

  else
  {
    sub_100053BE8(&v28, &qword_1006CA130);
    if (qword_1006C9810 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100046E6C(v13, qword_1006CBFA0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100052F7C();
      _os_log_impl(&_mh_execute_header, v14, v15, "Config data does not contain '%s' key.", v16, 0xCu);
      sub_100044850(v17);
    }
  }
}

Swift::Void __swiftcall ASDConfigurationManager.pushInitialCoreODIConfig()()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = sub_10004EAE0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v2);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_1000443DC(&qword_1006C9E20);
  v13 = sub_100077674(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10004EAF4();
  v18 = v17 - v16;
  v19 = dispatch_semaphore_create(0);
  Current = CFAbsoluteTimeGetCurrent();
  v21 = type metadata accessor for TaskPriority();
  sub_1000485F8(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0.0;
  v22[3] = 0.0;
  *(v22 + 4) = v0;
  *(v22 + 5) = v19;
  v22[6] = Current;
  v23 = v0;
  v24 = v19;
  sub_10006F27C(0, 0, v18, &unk_1005CE3A8, v22);

  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v4 + 8);
  v25(v9, v1);
  OS_dispatch_semaphore.wait(timeout:)();
  v25(v11, v1);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944();
    }

    v26 = type metadata accessor for Logger();
    sub_100097D98(v26, qword_1006CBFA0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (sub_100077680(v28))
    {
      v29 = sub_1000541D8();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to set the config into CoreODI in expected time. Continuing despite risk of errors", v29, 2u);
      sub_1000488AC();
    }
  }
}

uint64_t sub_1000B461C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a1;
  *(v6 + 224) = a5;
  *(v6 + 232) = a6;
  v7 = swift_task_alloc();
  *(v6 + 248) = v7;
  *v7 = v6;
  v7[1] = sub_1000B46B4;

  return ASDConfigurationManager.updateCoreODI()();
}

uint64_t sub_1000B46B4()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 248);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B4798()
{
  sub_100068324();
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  OS_dispatch_semaphore.signal()();
  v3 = CFAbsoluteTimeGetCurrent() - v1;
  if (v3 <= 0.75)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944();
    }

    v9 = type metadata accessor for Logger();
    sub_100097D98(v9, qword_1006CBFA0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (sub_100077680(v6))
    {
      v7 = sub_100053F78();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      v8 = "Updated CoreODI config in: %f";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944();
    }

    v4 = type metadata accessor for Logger();
    sub_100097D98(v4, qword_1006CBFA0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (sub_100077680(v6))
    {
      v7 = sub_100053F78();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      v8 = "Longer than expected update time for CoreODI config: %f";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 0xCu);
      sub_1000488AC();
    }
  }

  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  sub_1000B05E4((v0 + 112));
  v10 = 0;
  v11 = *(v0 + 152);
  if (v11 != 1)
  {
    v12 = *(v0 + 152);

    sub_100053BE8(v0 + 112, &qword_1006CAC08);
    v10 = v11;
  }

  AssessmentConfigurationManager.airlineNameFormats.setter(v10);
  sub_1000B05E4((v0 + 16));
  if (*(v0 + 56) == 1)
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v13 = *(v0 + 44);
    v14 = *(v0 + 48);
    sub_100053BE8(v0 + 16, &qword_1006CAC08);
  }

  AssessmentConfigurationManager.ravioliFetchIfMissingProbability.setter(v13 | ((v14 & 1) << 32));
  sub_10006574C();

  return v15();
}

uint64_t sub_1000B49C8()
{
  sub_1000657EC();
  v1 = v0[2];
  type metadata accessor for ConfigManager();
  v0[3] = static ConfigManager.shared.getter();
  v0[4] = sub_1000B36A0();
  sub_1000BA640(&unk_1006CBFB8);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B4AA4, v3, v2);
}

uint64_t sub_1000B4AA4()
{
  sub_1000657D4();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  dispatch thunk of ConfigManager.setConfiguration(configDict:)();

  sub_10006574C();

  return v3();
}

id sub_1000B4B58()
{
  result = [objc_allocWithZone(type metadata accessor for ASDConfigurationManager()) init];
  static ASDConfigurationManager.shared = result;
  return result;
}

uint64_t sub_1000B4B88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B4BD0()
{
  sub_10006ECA0();
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_10006EB38(v6);
  *v7 = v8;
  v9 = sub_1000BB9A0(v7);

  return sub_1000B461C(v5, v9, v10, v2, v3, v4);
}

id static ASDConfigurationManager.shared.getter()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  swift_beginAccess();
  v0 = static ASDConfigurationManager.shared;

  return v0;
}

void static ASDConfigurationManager.shared.setter(uint64_t a1)
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  swift_beginAccess();
  v2 = static ASDConfigurationManager.shared;
  static ASDConfigurationManager.shared = a1;
}

uint64_t (*static ASDConfigurationManager.shared.modify())()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1000B4E28(uint64_t a1, unint64_t a2)
{
  if (sub_1000B0540(a1, a2))
  {
    if (qword_1006C9810 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100046E6C(v2, qword_1006CBFA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No stored config found.", v5, 2u);
    }

    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v9 = [v7 JSONObjectWithData:isa options:0 error:v24];

    v10 = v24[0];
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005346C(v25, v24);
      sub_1000443DC(&qword_1006CC1A0);
      if (swift_dynamicCast())
      {
        sub_100044850(v25);
        return v23;
      }

      else
      {
        if (qword_1006C9810 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100046E6C(v19, qword_1006CBFA0);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected config data received", v22, 2u);
        }

        v11 = Dictionary.init(dictionaryLiteral:)();
        sub_100044850(v25);
      }
    }

    else
    {
      v12 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100046E6C(v13, qword_1006CBFA0);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Config data could not be parsed. Is it a valid JSON? %@", v16, 0xCu);
        sub_100053BE8(v17, &qword_1006CBB00);
      }

      v11 = Dictionary.init(dictionaryLiteral:)();
    }

    return v11;
  }
}

id sub_1000B52B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000443DC(&qword_1006C9E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC3asd23ASDConfigurationManager_notificationCenter;
  v8 = objc_opt_self();
  *&v1[v7] = [v8 defaultCenter];
  v9 = swift_allocObject();
  *(v9 + 16) = ObjectType;
  sub_1000443DC(&qword_1006CC108);
  swift_allocObject();
  v10 = sub_1000B729C(0, 0xC000000000000000, sub_1000B5584, 0, &unk_1005CE5F8, v9, 86400.0);
  *&v1[OBJC_IVAR____TtC3asd23ASDConfigurationManager_fetcher] = v10;

  v11 = [v8 defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v12 = qword_1006DF840;
  aBlock[4] = sub_1000B60B0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1C04;
  aBlock[3] = &unk_100694568;
  v13 = _Block_copy(aBlock);
  v14 = [v11 addObserverForName:v12 object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  *&v1[OBJC_IVAR____TtC3asd23ASDConfigurationManager_updateObservationToken] = v14;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "init");
  v16 = type metadata accessor for TaskPriority();
  sub_1000485F8(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v10;
  v17[5] = ObjectType;
  sub_1000B078C();

  return v15;
}

id sub_1000B5584()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  return v1;
}

uint64_t sub_1000B55F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Locale();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for URLComponents();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = *(*(sub_1000443DC(&qword_1006C9C48) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for URLQueryItem();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = *(*(sub_1000443DC(&qword_1006CC158) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000B5840, 0, 0);
}

uint64_t sub_1000B5840()
{
  sub_100068324();
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[10];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1000B0234(v4, v1);

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_100046EA4(v2, 1, v3) || (v6 = v0[18], (v5 = URLComponents.queryItems.getter()) == 0))
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v0[23] = v5;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1000B5968;
  v8 = v0[6];

  return sub_1000B5ECC();
}

uint64_t sub_1000B5968()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = *(v5 + 192);
  v7 = *v0;
  sub_1000655F4();
  *v8 = v7;
  *(v10 + 200) = v9;

  v11 = sub_100065864();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000B5A54()
{
  if (v0[25])
  {
    v1 = v0[3];
    v2 = v0[23];
    v3 = v0[17];
    v4 = v0[25];
    URLQueryItem.init(name:value:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000BBB2C();
      v6 = v55;
    }

    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1000631BC(v7 > 1, v8 + 1, 1, v6);
      v6 = v56;
    }

    v9 = v0[17];
    v10 = v0[14];
    v11 = sub_1000BBA2C(v0[15]);
    v12(v11);
  }

  else
  {
    v6 = v0[23];
  }

  v13 = v0[16];
  sub_1000B3400();
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BBB2C();
    v6 = v54;
  }

  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1000631BC(v14 > 1, v15 + 1, 1, v6);
  }

  v16 = v0[18];
  v17 = v0[16];
  v18 = v0[14];
  v19 = v0[10];
  v20 = sub_1000BBA2C(v0[15]);
  v21(v20);
  if (sub_100046EA4(v16, 1, v19))
  {
  }

  else
  {
    v22 = v0[18];
    URLComponents.queryItems.setter();
  }

  v23 = v0[18];
  v24 = v0[10];
  v25 = sub_1000BBAE0();
  v27 = sub_100046EA4(v25, v26, v24);
  v28 = v0[19];
  v29 = v0[13];
  if (v27)
  {
    sub_1000485F8(v0[13], 1, 1, v0[19]);
  }

  else
  {
    v31 = v0[11];
    v30 = v0[12];
    (*(v31 + 16))(v30, v23, v24);
    URLComponents.url.getter();
    (*(v31 + 8))(v30, v24);
    if (sub_100046EA4(v29, 1, v28) != 1)
    {
      (*(v0[20] + 32))(v0[21], v0[13], v0[19]);
      goto LABEL_21;
    }
  }

  v32 = v0[19];
  v33 = v0[13];
  (*(v0[20] + 16))(v0[21], v0[22], v32);
  if (sub_100046EA4(v33, 1, v32) != 1)
  {
    sub_100053BE8(v0[13], &qword_1006C9C48);
  }

LABEL_21:
  v34 = v0[21];
  v35 = v0[22];
  v36 = v0[20];
  v58 = v0[19];
  v59 = v0[18];
  v60 = v0[17];
  v61 = v0[16];
  v62 = v0[13];
  v63 = v0[12];
  v38 = v0[8];
  v37 = v0[9];
  v57 = v0[7];
  v39 = v0[5];
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v40 = [objc_opt_self() daemonVersion];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44._countAndFlagsBits = 0x6973726556647361;
  v45._countAndFlagsBits = v41;
  v45._object = v43;
  v44._object = 0xEA00000000006E6FLL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v45, v44);

  v46 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = Locale.identifier.getter();
  v49 = v48;
  (*(v38 + 8))(v37, v57);
  v50._countAndFlagsBits = 0x656C61636F6CLL;
  v51._countAndFlagsBits = v47;
  v51._object = v49;
  v50._object = 0xE600000000000000;
  URLRequest.addValue(_:forHTTPHeaderField:)(v51, v50);

  (*(v36 + 8))(v35, v58);
  sub_100053BE8(v59, &qword_1006CC158);

  sub_10006574C();

  return v52();
}

uint64_t sub_1000B5ECC()
{
  v1 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = sub_1000443DC(&qword_1006CAD48);
  *v2 = v0;
  v2[1] = sub_1000B5FB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x56746375646F7270, 0xEE006E6F69737265, sub_1000B6C88, 0, v3);
}

uint64_t sub_1000B5FB4()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 32);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B60B0()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TaskPriority();
  sub_1000485F8(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_10006F27C(0, 0, v3, &unk_1005CE640, v5);
}

uint64_t sub_1000B6194()
{
  sub_1000657D4();
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4();
  }

  swift_beginAccess();
  v1 = static ASDConfigurationManager.shared;
  *(v0 + 152) = static ASDConfigurationManager.shared;
  v1;
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6270;

  return ASDConfigurationManager.updateCoreODI()();
}

uint64_t sub_1000B6270()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 160);
  v3 = *(v1 + 152);
  v4 = *v0;
  sub_1000655F4();
  *v5 = v4;

  v6 = sub_100065864();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000B636C()
{
  sub_1000657EC();
  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  v1 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 16));

  if (*(v0 + 56) == 1)
  {
    AssessmentConfigurationManager.airlineNameFormats.setter(0);
    v2 = 0;
    v3 = 1;
  }

  else
  {

    AssessmentConfigurationManager.airlineNameFormats.setter(v4);
    v2 = *(v0 + 44);
    v3 = *(v0 + 48);
    sub_100053BE8(v0 + 16, &qword_1006CAC08);
  }

  AssessmentConfigurationManager.ravioliFetchIfMissingProbability.setter(v2 | ((v3 & 1) << 32));
  sub_10006574C();

  return v5();
}

uint64_t sub_1000B6448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *v6 = v4;
  v6[1] = sub_1000B64EC;

  return static Task<>.sleep(nanoseconds:)(15000000000);
}

uint64_t sub_1000B64EC()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v3 + 64) = v11;
    *v11 = v7;
    v11[1] = sub_1000B6648;
    v12 = *(v3 + 48);

    return sub_1000B7470();
  }
}

uint64_t sub_1000B6648()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 64);
  *v3 = *v1;
  *(v2 + 80) = v6;
  *(v2 + 72) = v0;

  if (v0)
  {
    v7 = sub_1000B68A8;
  }

  else
  {
    v7 = sub_1000B6754;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000B6754()
{
  sub_10006ECA0();
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944();
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CBFA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_100077680(v3))
  {
    v4 = *(v0 + 80);
    v5 = sub_100053F78();
    v6 = sub_100053F60();
    *v5 = 136315138;
    v7 = sub_100052F7C();

    *(v5 + 4) = v7;
    sub_100077394();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100044850(v6);
    sub_10007756C();
    sub_1000488AC();
  }

  sub_10006574C();

  return v13();
}

uint64_t sub_1000B68A8()
{
  sub_10006ECA0();
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944();
  }

  v1 = v0[9];
  v2 = type metadata accessor for Logger();
  sub_100097D98(v2, qword_1006CBFA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[9];
  if (v5)
  {
    v7 = sub_100053F78();
    v14 = sub_100053F60();
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    Error.localizedDescription.getter();
    v11 = sub_100052F7C();

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to update config: %s", v7, 0xCu);
    sub_100044850(v14);
    sub_1000488AC();
    sub_100077500();
  }

  else
  {
  }

  sub_10006574C();

  return v12();
}

uint64_t sub_1000B6A64()
{
  sub_1000657D4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd23ASDConfigurationManager_fetcher);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6AFC;

  return sub_1000B80CC();
}

uint64_t sub_1000B6AFC()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  sub_10006574C();

  return v5();
}

uint64_t sub_1000B6BF0()
{
  sub_1000657D4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3asd23ASDConfigurationManager_fetcher);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6AFC;

  return sub_1000B7470();
}

uint64_t sub_1000B6C88(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000443DC(&qword_1006CC160);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v15 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v14, v10);
  (*(v8 + 16))(&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  aBlock[4] = sub_1000BA5E0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694630;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_1000BA640(&qword_1006CA890);
  sub_1000443DC(&qword_1006CA898);
  sub_1000BA684(&qword_1006CA8A0);
  v20 = v24;
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v20, v19);
  (*(v26 + 8))(v6, v27);
}

uint64_t sub_1000B70E8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  sub_1000443DC(&qword_1006CC160);
  return CheckedContinuation.resume(returning:)();
}

id ASDConfigurationManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC3asd23ASDConfigurationManager_notificationCenter] removeObserver:*&v0[OBJC_IVAR____TtC3asd23ASDConfigurationManager_updateObservationToken]];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000B729C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  swift_defaultActor_initialize();
  *(v7 + 152) = [objc_opt_self() defaultCenter];
  *(v7 + 160) = 0;
  *(v7 + 168) = xmmword_1005CE390;
  v13 = [objc_opt_self() standardUserDefaults];
  *(v7 + 184) = v13;
  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  strcpy((inited + 32), "asdConfigData");
  *(inited + 46) = -4864;
  *(inited + 72) = &type metadata for Data;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_100046D38(a1, a2);
  sub_100046D38(a1, a2);
  v15 = v13;
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 registerDefaults:isa];

  sub_1000448B0(a1, a2);
  sub_1000448B0(a1, a2);
  *(v7 + 120) = a5;
  *(v7 + 128) = a6;
  *(v7 + 112) = a7;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  return v7;
}

uint64_t sub_1000B7470()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7548, v0, 0);
}

uint64_t sub_1000B7548()
{
  sub_100068324();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_1000500FC(*(v6 + 184));
  Date.init(timeIntervalSinceReferenceDate:)();
  v7 = *(v6 + 112);
  static Date.+ infix(_:_:)();
  Date.init()();
  sub_100065A4C();
  LOBYTE(v2) = static Date.< infix(_:_:)();
  *(v0 + 96) = v2 & 1;
  v8 = *(v4 + 8);
  *(v0 + 64) = v8;
  *(v0 + 72) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = sub_100081220();
  (v8)(v9);
  if (v2)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944();
    }

    v10 = type metadata accessor for Logger();
    sub_100097D98(v10, qword_1006CBFA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (sub_100077680(v12))
    {
      *sub_1000541D8() = 0;
      sub_100077394();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      sub_1000488AC();
    }

    v18 = swift_task_alloc();
    *(v0 + 80) = v18;
    *v18 = v0;
    v18[1] = sub_1000B7738;
    v19 = *(v0 + 16);

    return sub_1000B80CC();
  }

  else
  {
    v21 = sub_1000BB9E4();
    v22(v21);

    v23 = sub_1000BBB74();

    return v24(v23);
  }
}

uint64_t sub_1000B7738()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v4 = v3;
  v5 = *(v2 + 80);
  *v4 = *v1;
  *(v3 + 88) = v0;

  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1000B78D4;
  }

  else
  {
    v7 = sub_1000B785C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000B785C()
{
  sub_1000657EC();
  v0 = sub_1000BB9E4();
  v1(v0);

  v2 = sub_1000BBB74();

  return v3(v2);
}

uint64_t sub_1000B78D4()
{
  sub_1000657EC();
  v1 = sub_1000BB9E4();
  v2(v1);

  v3 = *(v0 + 8);
  v4 = *(v0 + 88);

  return v3(0);
}

uint64_t sub_1000B7958()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);

    sub_1000443DC(&unk_1006CB550);
    Task.cancel()();

    v2 = *(v0 + 176);
  }

  *(v0 + 176) = 0;

  *(v0 + 168) = -1;
  return result;
}

uint64_t sub_1000B79D4()
{
  v1 = sub_1000443DC(&qword_1006C9E20);
  v2 = *(*(v1 - 8) + 64);
  result = __chkstk_darwin(v1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 176))
  {
    v6 = *(v0 + 176);

    sub_1000443DC(&unk_1006CB550);
    Task.cancel()();
  }

  v7 = *(v0 + 168);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    if (v9 >= 10)
    {
      v9 = 10;
    }

    *(v0 + 168) = v9;
    v10 = type metadata accessor for TaskPriority();
    sub_1000485F8(v5, 1, 1, v10);
    v11 = sub_1000BA684(&unk_1006CC140);
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = v11;
    v12[4] = v0;
    swift_retain_n();
    v13 = sub_1000B078C();
    v14 = *(v0 + 176);
    *(v0 + 176) = v13;
  }

  return result;
}

uint64_t sub_1000B7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7C18, a4, 0);
}

uint64_t sub_1000B7C18()
{
  v2 = *(v0[2] + 168);
  sub_100068324();
  v3 = v0[5];
  sub_1000B809C(v4);
  static Duration.< infix(_:_:)();
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1000B7D68;
  v6 = v0[5];
  v7 = sub_100065A4C();

  return sub_1000B9EB0(v7, v8, 0, 0, 1);
}

uint64_t sub_1000B7D68()
{
  sub_1000657EC();
  v2 = *v1;
  v3 = *v1;
  sub_1000655F4();
  *v4 = v3;
  v5 = v2[6];
  v6 = *v1;
  *v4 = *v1;
  v3[7] = v0;

  v7 = v2[5];
  v8 = v2[4];
  v9 = v2[3];
  if (v0)
  {
    v10 = v3[2];
    (*(v8 + 8))(v7, v9);

    return _swift_task_switch(sub_1000B8040, v10, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v11 = swift_task_alloc();
    v3[8] = v11;
    *v11 = v6;
    v11[1] = sub_1000B7F34;
    v12 = v3[2];

    return sub_1000B80CC();
  }
}

uint64_t sub_1000B7F34()
{
  sub_1000657EC();
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = *(v1 + 40);

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1000B8040()
{
  sub_1000657D4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_10006574C();

  return v3();
}

uint64_t sub_1000B80CC()
{
  v1[15] = v0;
  v2 = type metadata accessor for Date();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for HTTPStatusCode();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v8 = sub_1000443DC(&qword_1006CC110);
  v1[22] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v10 = *(*(sub_1000443DC(&qword_1006CC118) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v11 = type metadata accessor for URLRequest();
  v1[29] = v11;
  v12 = *(v11 - 8);
  v1[30] = v12;
  v13 = *(v12 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8318, v0, 0);
}

void sub_1000B8318()
{
  v1 = v0[15];
  if (*(v1 + 160) == 1)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944();
    }

    v2 = type metadata accessor for Logger();
    sub_100097D98(v2, qword_1006CBFA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (sub_100077680(v4))
    {
      *sub_1000541D8() = 0;
      sub_100077394();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_1000488AC();
    }

    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    sub_1000BA684(v10);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v12 = v0[31];
    v11 = v0[32];
    v14 = v0[27];
    v13 = v0[28];
    v16 = v0[25];
    v15 = v0[26];
    v18 = v0[23];
    v17 = v0[24];
    v19 = v0[21];
    v20 = v0[18];

    sub_10006574C();
    sub_10006592C();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + 160) = 1;
  v23 = *(v1 + 128);
  v29 = *(v1 + 120) + **(v1 + 120);
  v24 = *(*(v1 + 120) + 4);
  v25 = swift_task_alloc();
  v0[33] = v25;
  *v25 = v0;
  v25[1] = sub_1000B85E8;
  v26 = v0[32];
  sub_10006592C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000B85E8()
{
  sub_1000657D4();
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 120);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  return _swift_task_switch(sub_1000B8718, v2, 0);
}

uint64_t sub_1000B8718()
{
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944();
  }

  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  v5 = type metadata accessor for Logger();
  v6 = sub_100046E6C(v5, qword_1006CBFA0);
  v0[34] = v6;
  v7 = *(v4 + 16);
  v8 = sub_100047504();
  v9(v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  if (v12)
  {
    sub_100053F78();
    v30 = sub_1000BBA6C();
    *v6 = 136315138;
    sub_1000BA640(&unk_1006CC138);
    dispatch thunk of CustomStringConvertible.description.getter();
    v16 = *(v14 + 8);
    v17 = sub_10007B3BC();
    v16(v17);
    v18 = sub_100052F7C();

    *(v6 + 4) = v18;
    sub_100097C54(&_mh_execute_header, v19, v20, "Requesting config with request: %s");
    sub_100044850(v30);
    sub_1000488AC();
    sub_10007756C();
  }

  else
  {

    v16 = *(v14 + 8);
    v22 = sub_10007B3BC();
    v21 = (v16)(v22);
  }

  v0[35] = v16;
  v23 = v0[15];
  v24 = *(v23 + 144);
  v0[36] = (*(v23 + 136))(v21);
  v25 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_1000B8978;
  v27 = v0[32];
  sub_10006592C();

  return NSURLSession.data(for:delegate:)();
}

uint64_t sub_1000B8978()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v3 = v2;
  v5 = *(v4 + 296);
  *v3 = *v1;
  *(v2 + 304) = v6;
  *(v2 + 312) = v7;
  *(v2 + 320) = v8;
  *(v2 + 328) = v0;

  if (v0)
  {
    v9 = *(v2 + 120);
    v10 = sub_1000B9418;
  }

  else
  {
    v11 = *(v2 + 120);

    v10 = sub_1000B8AE8;
    v9 = v11;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_1000B8AE8()
{
  v1 = v0[40];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    sub_1000A93F4([v2 statusCode], v0[28]);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[27];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[19];
  v8 = v0[20];
  sub_1000485F8(v0[28], v3, 1, v7);
  (*(v8 + 104))(v4, enum case for HTTPStatusCode.httpSuccess(_:), v7);
  sub_1000485F8(v4, 0, 1, v7);
  v9 = *(v6 + 48);
  v10 = sub_100047504();
  sub_1000BA340(v10, v11, &qword_1006CC118);
  sub_1000BA340(v4, v5 + v9, &qword_1006CC118);
  v12 = sub_1000BBAE0();
  if (sub_100046EA4(v12, v13, v7) == 1)
  {
    v14 = v0[19];
    sub_100053BE8(v0[27], &qword_1006CC118);
    if (sub_100046EA4(v5 + v9, 1, v14) == 1)
    {
      sub_100053BE8(v0[23], &qword_1006CC118);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = v0[19];
    sub_1000BA340(v0[23], v0[26], &qword_1006CC118);
    v16 = sub_100046EA4(v5 + v9, 1, v15);
    v17 = v0[26];
    v18 = v0[27];
    if (v16 != 1)
    {
      v7 = v0[23];
      v39 = v0[20];
      v38 = v0[21];
      v40 = v0[19];
      (*(v39 + 32))(v38, v5 + v9, v40);
      sub_1000BA640(&unk_1006CC130);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = *(v39 + 8);
      v42(v38, v40);
      sub_100053BE8(v18, &qword_1006CC118);
      v42(v17, v40);
      sub_100053BE8(v7, &qword_1006CC118);
      if (v41)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v19 = v0[19];
    v20 = v0[20];
    sub_100053BE8(v0[27], &qword_1006CC118);
    v21 = *(v20 + 8);
    v7 = v20 + 8;
    v22 = sub_100047504();
    v23(v22);
  }

  sub_100053BE8(v0[23], &qword_1006CC110);
LABEL_10:
  v24 = v0[28];
  if (sub_100046EA4(v24, 1, v0[19]) != 1)
  {
    v25 = v0[34];
    sub_1000BA340(v24, v0[25], &qword_1006CC118);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[25];
    if (v28)
    {
      v30 = v0[24];
      v31 = v0[19];
      sub_100053F78();
      v32 = sub_1000BBA6C();
      *v7 = 136315138;
      v33 = sub_10007B3BC();
      sub_1000BA340(v33, v34, v35);
      v36 = sub_100046EA4(v30, 1, v31);
      v37 = v0[24];
      if (v36 == 1)
      {
        sub_100053BE8(v0[24], &qword_1006CC118);
      }

      else
      {
        v89 = v0[19];
        v90 = v0[20];
        v91 = v0[24];
        HTTPStatusCode.description.getter();
        (*(v90 + 8))(v37, v89);
      }

      sub_100053BE8(v0[25], &qword_1006CC118);
      v92 = sub_100052F7C();

      *(v7 + 4) = v92;
      sub_100097C54(&_mh_execute_header, v93, v94, "Config update response not success: %s");
      sub_100044850(v32);
      sub_100077500();
      sub_10007756C();
    }

    else
    {

      sub_100053BE8(v29, &qword_1006CC118);
    }

    v96 = v0[39];
    v95 = v0[40];
    v97 = v0[38];
    v111 = v0[32];
    v113 = v0[35];
    v98 = v0[30];
    v109 = v0[29];
    v86 = v0[28];
    v99 = v0[15];
    sub_1000B79D4();
    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    sub_1000BA684(v100);
    sub_1000BBBA0();
    sub_1000BA340(v86, v101, &qword_1006CC118);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000448B0(v97, v96);
LABEL_26:
    v113(v111, v109);
    sub_100053BE8(v86, &qword_1006CC118);
    sub_1000BBA94();

    sub_10006574C();
    goto LABEL_27;
  }

LABEL_15:
  v43 = v0[38];
  v44 = v0[39];
  v45 = objc_opt_self();
  sub_100047504();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[13] = 0;
  v47 = [v45 JSONObjectWithData:isa options:0 error:v0 + 13];

  v48 = v0[13];
  if (!v47)
  {
    v72 = v0[34];
    v73 = v48;
    v74 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_100053F78();
      v115 = sub_100053F60();
      *v77 = 136315138;
      swift_getErrorValue();
      v79 = v0[9];
      v78 = v0[10];
      v80 = v0[11];
      Error.localizedDescription.getter();
      v81 = sub_100052F7C();

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Config decode error: %s", v77, 0xCu);
      sub_100044850(v115);
      sub_1000488AC();
      sub_100077500();
    }

    v83 = v0[39];
    v82 = v0[40];
    v84 = v0[38];
    v111 = v0[32];
    v113 = v0[35];
    v85 = v0[30];
    v109 = v0[29];
    v86 = v0[28];
    *(v0[15] + 168) = 10;
    sub_1000B79D4();
    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    sub_1000BA684(v87);
    sub_1000BBBA0();
    *v88 = v74;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000448B0(v84, v83);
    goto LABEL_26;
  }

  v50 = v0[38];
  v49 = v0[39];
  v51 = v0[34];
  v53 = v0[17];
  v52 = v0[18];
  v55 = v0[15];
  v54 = v0[16];
  v56 = v48;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100044850(v0 + 2);
  v57 = *(v55 + 184);
  sub_10005092C(v50, v49);
  v58 = [objc_opt_self() standardUserDefaults];
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v53 + 8))(v52, v54);
  sub_1000509C0();

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = sub_1000541D8();
    *v61 = 0;
    _os_log_impl(&_mh_execute_header, v59, v60, "Config update completed", v61, 2u);
    sub_1000488AC();
  }

  v63 = v0[39];
  v62 = v0[40];
  v64 = v0[38];
  v65 = v0[32];
  v103 = v0[35];
  v104 = v0[31];
  v67 = v0[29];
  v66 = v0[30];
  v68 = v0[28];
  v105 = v0[27];
  v106 = v0[26];
  v107 = v0[25];
  v108 = v0[24];
  v110 = v0[23];
  v112 = v0[21];
  v114 = v0[18];
  v69 = v0[15];

  sub_1000B7958();
  sub_1000B9650();

  sub_1000448B0(v64, v63);
  v70 = sub_100081220();
  v103(v70);
  sub_100053BE8(v68, &qword_1006CC118);
  *(v69 + 160) = 0;

  sub_10006574C();
LABEL_27:

  return v71();
}

uint64_t sub_1000B9418()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 328);
    sub_100053F78();
    v23 = sub_1000BBA6C();
    *v1 = 136315138;
    swift_getErrorValue();
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 64);
    Error.localizedDescription.getter();
    v9 = sub_100052F7C();

    *(v1 + 4) = v9;
    sub_100097C54(&_mh_execute_header, v10, v11, "Config update request failed: %s");
    sub_100044850(v23);
    sub_100077500();
    sub_10007756C();
  }

  v12 = *(v0 + 328);
  v13 = *(v0 + 280);
  v14 = *(v0 + 256);
  v15 = *(v0 + 232);
  v16 = *(v0 + 240);
  v17 = *(v0 + 120);
  sub_1000B79D4();
  sub_1000443DC(&qword_1006CC120);
  sub_1000BB964();
  sub_1000BA684(v18);
  swift_allocError();
  *v19 = v12;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v20 = sub_100081220();
  v13(v20);
  sub_1000BBA94();

  sub_10006574C();

  return v21();
}

id sub_1000B9650()
{
  v1 = *(v0 + 152);
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;

  return [v1 postNotificationName:v2 object:0];
}

uint64_t sub_1000B96C8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 144);

  v3 = *(v0 + 176);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B9710()
{
  v0 = sub_1000B96C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B9800(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B9820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B9874(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B98F0()
{
  result = qword_1006CC088;
  if (!qword_1006CC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC088);
  }

  return result;
}

unint64_t sub_1000B9944()
{
  result = qword_1006CC090;
  if (!qword_1006CC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC090);
  }

  return result;
}

unint64_t sub_1000B9998()
{
  result = qword_1006CC098;
  if (!qword_1006CC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC098);
  }

  return result;
}

unint64_t sub_1000B99EC(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000B9A68()
{
  result = qword_1006CC0B0;
  if (!qword_1006CC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0B0);
  }

  return result;
}

unint64_t sub_1000B9ABC()
{
  result = qword_1006CC0C8;
  if (!qword_1006CC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0C8);
  }

  return result;
}

unint64_t sub_1000B9B78(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000B9BF4()
{
  result = qword_1006CC0D8;
  if (!qword_1006CC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0D8);
  }

  return result;
}

unint64_t sub_1000B9C48()
{
  result = qword_1006CC0E0;
  if (!qword_1006CC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0E0);
  }

  return result;
}

unint64_t sub_1000B9C9C()
{
  result = qword_1006CC0F0;
  if (!qword_1006CC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0F0);
  }

  return result;
}

unint64_t sub_1000B9CF0()
{
  result = qword_1006CC100;
  if (!qword_1006CC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC100);
  }

  return result;
}

uint64_t sub_1000B9D54()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_100065570;

  return sub_1000B55F4(v2, v3);
}

uint64_t sub_1000B9DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B9E08()
{
  sub_100068324();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = sub_10006EB38(v5);
  *v6 = v7;
  v8 = sub_1000BB9A0(v6);

  return sub_1000B6448(v8, v9, v2, v4);
}

uint64_t sub_1000B9EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000B9FB0, 0, 0);
}

uint64_t sub_1000B9FB0()
{
  sub_10006ECA0();
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000BA640(&unk_1006CC148);
  sub_100065A4C();
  dispatch thunk of Clock.now.getter();
  sub_1000BA640(&unk_1006CC150);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1000BA138;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_1000BA138()
{
  sub_100068324();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[13];
  v8 = v5[12];
  v9 = v5[11];
  v10 = v5[8];
  v11 = *v1;
  sub_1000655F4();
  *v12 = v11;
  v3[15] = v0;

  v8(v9, v10);
  if (v0)
  {

    return _swift_task_switch(sub_1000BA2DC, 0, 0);
  }

  else
  {
    v14 = v3[10];
    v13 = v3[11];

    sub_10006574C();

    return v15();
  }
}

uint64_t sub_1000BA2DC()
{
  sub_1000657D4();
  v2 = v0[10];
  v1 = v0[11];

  sub_10006574C();
  v4 = v0[15];

  return v3();
}

uint64_t sub_1000BA340(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1000443DC(a3);
  sub_100053F48(v4);
  v6 = *(v5 + 16);
  v7 = sub_100047504();
  v8(v7);
  return a2;
}

uint64_t sub_1000BA3A4(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000BA3F0()
{
  sub_1000657EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v7 = sub_1000BB9A0(v5);

  return sub_1000B7B54(v7, v8, v2, v3);
}

uint64_t sub_1000BA48C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA4C4()
{
  sub_1000657EC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  sub_1000BB9A0(v4);

  return sub_1000B6178();
}

uint64_t sub_1000BA558()
{
  v1 = sub_1000443DC(&qword_1006CC160);
  sub_100053F48(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000BA5E0()
{
  v0 = sub_1000443DC(&qword_1006CC160);
  sub_100077674(v0);
  v2 = *(v1 + 80);

  return sub_1000B70E8();
}

unint64_t sub_1000BA640(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA684(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    sub_1000471A4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA6C4()
{
  result = qword_1006CC168;
  if (!qword_1006CC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC168);
  }

  return result;
}

unint64_t sub_1000BA718(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA780()
{
  result = qword_1006CC188;
  if (!qword_1006CC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC188);
  }

  return result;
}

uint64_t sub_1000BA828(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA84C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 96))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA8AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000BA92C()
{
  v0 = sub_1000BA9D4();
  if (v1 <= 0x3F)
  {
    sub_1000BAA30();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

unint64_t sub_1000BA9D4()
{
  result = qword_1006CC230;
  if (!qword_1006CC230)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CC230);
  }

  return result;
}

void sub_1000BAA30()
{
  if (!qword_1006CC238)
  {
    sub_1000BAA78();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CC238);
    }
  }
}

void sub_1000BAA78()
{
  if (!qword_1006CC240)
  {
    type metadata accessor for HTTPStatusCode();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CC240);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASDConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASDConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x1000BAC24);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000BAC5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000BAC78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1000BACB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000BAD18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000BAD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_1000BAD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASDConfig.ASPushNotificationsConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASDConfig.ASPushNotificationsConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000BAF24);
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

unint64_t sub_1000BAF60()
{
  result = qword_1006CC248;
  if (!qword_1006CC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC248);
  }

  return result;
}

unint64_t sub_1000BAFB8()
{
  result = qword_1006CC250;
  if (!qword_1006CC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC250);
  }

  return result;
}

unint64_t sub_1000BB010()
{
  result = qword_1006CC258;
  if (!qword_1006CC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC258);
  }

  return result;
}

unint64_t sub_1000BB064()
{
  result = qword_1006CC268;
  if (!qword_1006CC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC268);
  }

  return result;
}

unint64_t sub_1000BB0B8()
{
  result = qword_1006CC278;
  if (!qword_1006CC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC278);
  }

  return result;
}

unint64_t sub_1000BB10C()
{
  result = qword_1006CC288;
  if (!qword_1006CC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC288);
  }

  return result;
}

unint64_t sub_1000BB160(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    sub_1000471A4(&qword_1006CA018);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BB1C0()
{
  result = qword_1006CC2B0;
  if (!qword_1006CC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2B0);
  }

  return result;
}

unint64_t sub_1000BB214()
{
  result = qword_1006CC2B8;
  if (!qword_1006CC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2B8);
  }

  return result;
}

unint64_t sub_1000BB2A0()
{
  result = qword_1006CC2C8;
  if (!qword_1006CC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2C8);
  }

  return result;
}

_BYTE *sub_1000BB324(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x1000BB3F0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000BB428(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x1000BB4C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000BB500()
{
  result = qword_1006CC2D0;
  if (!qword_1006CC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2D0);
  }

  return result;
}

unint64_t sub_1000BB558()
{
  result = qword_1006CC2D8;
  if (!qword_1006CC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2D8);
  }

  return result;
}

unint64_t sub_1000BB5B0()
{
  result = qword_1006CC2E0;
  if (!qword_1006CC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2E0);
  }

  return result;
}

unint64_t sub_1000BB608()
{
  result = qword_1006CC2E8;
  if (!qword_1006CC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2E8);
  }

  return result;
}

unint64_t sub_1000BB660()
{
  result = qword_1006CC2F0;
  if (!qword_1006CC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2F0);
  }

  return result;
}

unint64_t sub_1000BB6B8()
{
  result = qword_1006CC2F8;
  if (!qword_1006CC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2F8);
  }

  return result;
}

unint64_t sub_1000BB710()
{
  result = qword_1006CC300;
  if (!qword_1006CC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC300);
  }

  return result;
}

unint64_t sub_1000BB768()
{
  result = qword_1006CC308;
  if (!qword_1006CC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC308);
  }

  return result;
}

unint64_t sub_1000BB7C0()
{
  result = qword_1006CC310;
  if (!qword_1006CC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC310);
  }

  return result;
}

unint64_t sub_1000BB818()
{
  result = qword_1006CC318;
  if (!qword_1006CC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC318);
  }

  return result;
}

unint64_t sub_1000BB870()
{
  result = qword_1006CC320;
  if (!qword_1006CC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC320);
  }

  return result;
}